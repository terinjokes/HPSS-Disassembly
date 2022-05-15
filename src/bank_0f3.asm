; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0f3", ROMX[$4000], BANK[$f3]

    db $f3

    dec c                                         ; $4001: $0d
    inc b                                         ; $4002: $04
    ldh a, [rIF]                                  ; $4003: $f0 $0f
    ld [c], a                                     ; $4005: $e2
    ld bc, $f5e4                                  ; $4006: $01 $e4 $f5
    db $e4                                        ; $4009: $e4
    ld a, [$f4f4]                                 ; $400a: $fa $f4 $f4
    db $f4                                        ; $400d: $f4
    db $fc                                        ; $400e: $fc
    ld [bc], a                                    ; $400f: $02
    rlca                                          ; $4010: $07
    sub d                                         ; $4011: $92
    jr @+$21                                      ; $4012: $18 $1f

    jr nc, jr_0f3_4055                            ; $4014: $30 $3f

    ld h, b                                       ; $4016: $60
    ld a, a                                       ; $4017: $7f
    ld h, b                                       ; $4018: $60
    ld a, a                                       ; $4019: $7f
    or a                                          ; $401a: $b7
    rst $38                                       ; $401b: $ff
    sbc [hl]                                      ; $401c: $9e
    db $fd                                        ; $401d: $fd
    rst $38                                       ; $401e: $ff
    db $fc                                        ; $401f: $fc
    ld l, a                                       ; $4020: $6f
    ld a, b                                       ; $4021: $78
    ccf                                           ; $4022: $3f
    inc a                                         ; $4023: $3c
    ld [bc], a                                    ; $4024: $02
    ld a, a                                       ; $4025: $7f
    adc d                                         ; $4026: $8a
    ld c, c                                       ; $4027: $49
    ld a, a                                       ; $4028: $7f
    halt                                          ; $4029: $76
    ld a, a                                       ; $402a: $7f
    ld e, e                                       ; $402b: $5b
    ld a, a                                       ; $402c: $7f
    sbc a                                         ; $402d: $9f
    rst $38                                       ; $402e: $ff
    sbc e                                         ; $402f: $9b
    cp $02                                        ; $4030: $fe $02
    db $18, $87                                   ; $4032: $18 $87
    inc c                                         ; $4034: $0c
    inc e                                         ; $4035: $1c
    ld a, [bc]                                    ; $4036: $0a
    ld e, $09                                     ; $4037: $1e $09
    rra                                           ; $4039: $1f
    dec e                                         ; $403a: $1d
    ld [bc], a                                    ; $403b: $02
    rra                                           ; $403c: $1f
    add l                                         ; $403d: $85
    rla                                           ; $403e: $17
    ld c, $12                                     ; $403f: $0e $12
    inc e                                         ; $4041: $1c
    inc b                                         ; $4042: $04
    inc bc                                        ; $4043: $03
    inc e                                         ; $4044: $1c
    add [hl]                                      ; $4045: $86
    inc c                                         ; $4046: $0c
    inc d                                         ; $4047: $14
    inc e                                         ; $4048: $1c
    inc d                                         ; $4049: $14
    inc e                                         ; $404a: $1c
    ld b, $03                                     ; $404b: $06 $03
    ld e, $9a                                     ; $404d: $1e $9a
    ld d, $1e                                     ; $404f: $16 $1e
    dec d                                         ; $4051: $15
    rra                                           ; $4052: $1f
    xor c                                         ; $4053: $a9
    rst $38                                       ; $4054: $ff

jr_0f3_4055:
    reti                                          ; $4055: $d9


    rst $38                                       ; $4056: $ff
    xor c                                         ; $4057: $a9
    rst $38                                       ; $4058: $ff
    ld sp, hl                                     ; $4059: $f9
    rst $18                                       ; $405a: $df
    ld sp, hl                                     ; $405b: $f9
    cp a                                          ; $405c: $bf
    ld [hl], c                                    ; $405d: $71

jr_0f3_405e:
    ld e, a                                       ; $405e: $5f
    ld [hl], c                                    ; $405f: $71
    ld e, a                                       ; $4060: $5f
    jr nc, jr_0f3_40a2                            ; $4061: $30 $3f

    jr nz, jr_0f3_40a4                            ; $4063: $20 $3f

    ld e, b                                       ; $4065: $58
    ld a, a                                       ; $4066: $7f
    ld h, b                                       ; $4067: $60
    ld a, a                                       ; $4068: $7f
    ld [bc], a                                    ; $4069: $02
    ccf                                           ; $406a: $3f
    ld [bc], a                                    ; $406b: $02
    rra                                           ; $406c: $1f
    ld [bc], a                                    ; $406d: $02
    ld e, $04                                     ; $406e: $1e $04
    nop                                           ; $4070: $00
    sub h                                         ; $4071: $94
    jp c, $57fe                                   ; $4072: $da $fe $57

    db $fd                                        ; $4075: $fd
    rst $10                                       ; $4076: $d7
    db $fd                                        ; $4077: $fd
    ld [$ecfe], a                                 ; $4078: $ea $fe $ec
    db $fc                                        ; $407b: $fc
    add sp, -$08                                  ; $407c: $e8 $f8
    db $f4                                        ; $407e: $f4
    db $fc                                        ; $407f: $fc
    db $f4                                        ; $4080: $f4
    db $fc                                        ; $4081: $fc
    db $f4                                        ; $4082: $f4
    db $fc                                        ; $4083: $fc
    db $f4                                        ; $4084: $f4
    db $fc                                        ; $4085: $fc
    ld [bc], a                                    ; $4086: $02
    ld hl, sp+$02                                 ; $4087: $f8 $02
    ldh a, [rSC]                                  ; $4089: $f0 $02
    ld hl, sp+$02                                 ; $408b: $f8 $02
    ld [hl], b                                    ; $408d: $70
    inc b                                         ; $408e: $04
    nop                                           ; $408f: $00
    rst $38                                       ; $4090: $ff
    dec c                                         ; $4091: $0d
    inc b                                         ; $4092: $04
    ldh a, [rIF]                                  ; $4093: $f0 $0f
    ld [c], a                                     ; $4095: $e2
    ld bc, $f5e2                                  ; $4096: $01 $e2 $f5
    ld [c], a                                     ; $4099: $e2
    ei                                            ; $409a: $fb
    ld a, [c]                                     ; $409b: $f2
    db $f4                                        ; $409c: $f4
    ld a, [c]                                     ; $409d: $f2
    db $fc                                        ; $409e: $fc
    ld [bc], a                                    ; $409f: $02
    inc bc                                        ; $40a0: $03
    sub b                                         ; $40a1: $90

jr_0f3_40a2:
    inc c                                         ; $40a2: $0c
    rrca                                          ; $40a3: $0f

jr_0f3_40a4:
    jr jr_0f3_40c5                                ; $40a4: $18 $1f

    jr nc, jr_0f3_40e7                            ; $40a6: $30 $3f

    jr nc, jr_0f3_40e9                            ; $40a8: $30 $3f

    ld e, c                                       ; $40aa: $59
    ld a, a                                       ; $40ab: $7f
    ld l, a                                       ; $40ac: $6f
    ld a, a                                       ; $40ad: $7f
    ccf                                           ; $40ae: $3f
    ld a, $1b                                     ; $40af: $3e $1b
    ld e, $02                                     ; $40b1: $1e $02
    rlca                                          ; $40b3: $07
    ld [bc], a                                    ; $40b4: $02
    rrca                                          ; $40b5: $0f
    adc d                                         ; $40b6: $8a
    rla                                           ; $40b7: $17
    rra                                           ; $40b8: $1f
    ld [de], a                                    ; $40b9: $12
    rra                                           ; $40ba: $1f
    dec a                                         ; $40bb: $3d
    ccf                                           ; $40bc: $3f
    ld h, [hl]                                    ; $40bd: $66
    ld a, a                                       ; $40be: $7f
    rst $20                                       ; $40bf: $e7
    rst $38                                       ; $40c0: $ff
    ld [bc], a                                    ; $40c1: $02
    jr c, jr_0f3_405e                             ; $40c2: $38 $9a

    inc c                                         ; $40c4: $0c

jr_0f3_40c5:
    inc a                                         ; $40c5: $3c
    ld a, [bc]                                    ; $40c6: $0a
    ld a, $1a                                     ; $40c7: $3e $1a
    ld a, $26                                     ; $40c9: $3e $26
    ld a, $2e                                     ; $40cb: $3e $2e
    ld a, [hl-]                                   ; $40cd: $3a
    ccf                                           ; $40ce: $3f
    ld bc, $023e                                  ; $40cf: $01 $3e $02
    ld a, $0e                                     ; $40d2: $3e $0e
    ld a, $06                                     ; $40d4: $3e $06
    ld a, [hl-]                                   ; $40d6: $3a
    ld a, $3a                                     ; $40d7: $3e $3a
    ld e, $36                                     ; $40d9: $1e $36
    ld a, $0e                                     ; $40db: $3e $0e
    ld a, $02                                     ; $40dd: $3e $02
    ccf                                           ; $40df: $3f
    sbc h                                         ; $40e0: $9c
    dec sp                                        ; $40e1: $3b
    ccf                                           ; $40e2: $3f
    xor [hl]                                      ; $40e3: $ae
    rst $38                                       ; $40e4: $ff
    sbc $f3                                       ; $40e5: $de $f3

jr_0f3_40e7:
    ld e, [hl]                                    ; $40e7: $5e
    ld [hl], a                                    ; $40e8: $77

jr_0f3_40e9:
    ld a, $3f                                     ; $40e9: $3e $3f
    ld e, $1f                                     ; $40eb: $1e $1f
    inc b                                         ; $40ed: $04
    rlca                                          ; $40ee: $07
    ld [$080f], sp                                ; $40ef: $08 $0f $08
    rrca                                          ; $40f2: $0f
    ld de, $111f                                  ; $40f3: $11 $1f $11
    rra                                           ; $40f6: $1f
    ld sp, $2d3f                                  ; $40f7: $31 $3f $2d
    ccf                                           ; $40fa: $3f
    inc de                                        ; $40fb: $13
    rra                                           ; $40fc: $1f
    ld [bc], a                                    ; $40fd: $02
    rrca                                          ; $40fe: $0f
    ld [bc], a                                    ; $40ff: $02
    rlca                                          ; $4100: $07
    ld [bc], a                                    ; $4101: $02
    nop                                           ; $4102: $00
    adc d                                         ; $4103: $8a
    halt                                          ; $4104: $76
    sbc $55                                       ; $4105: $de $55
    rst $38                                       ; $4107: $ff
    ld d, l                                       ; $4108: $55
    rst $38                                       ; $4109: $ff
    ld [hl], a                                    ; $410a: $77
    rst $38                                       ; $410b: $ff
    rst $30                                       ; $410c: $f7
    db $fd                                        ; $410d: $fd
    ld [bc], a                                    ; $410e: $02
    rst $38                                       ; $410f: $ff
    add d                                         ; $4110: $82
    or $fe                                        ; $4111: $f6 $fe
    ld [bc], a                                    ; $4113: $02
    db $fc                                        ; $4114: $fc
    add [hl]                                      ; $4115: $86
    db $f4                                        ; $4116: $f4
    db $fc                                        ; $4117: $fc
    db $f4                                        ; $4118: $f4
    db $fc                                        ; $4119: $fc
    db $f4                                        ; $411a: $f4
    db $fc                                        ; $411b: $fc
    inc b                                         ; $411c: $04
    ld hl, sp+$02                                 ; $411d: $f8 $02
    ldh a, [rSC]                                  ; $411f: $f0 $02
    ld a, b                                       ; $4121: $78
    ld [bc], a                                    ; $4122: $02
    ld [hl], b                                    ; $4123: $70
    rst $38                                       ; $4124: $ff
    rla                                           ; $4125: $17
    add hl, bc                                    ; $4126: $09
    ld a, [c]                                     ; $4127: $f2
    add hl, de                                    ; $4128: $19
    call nc, $d801                                ; $4129: $d4 $01 $d8
    ld sp, hl                                     ; $412c: $f9
    ret c                                         ; $412d: $d8

    nop                                           ; $412e: $00
    rst $18                                       ; $412f: $df
    add hl, bc                                    ; $4130: $09
    pop hl                                        ; $4131: $e1
    dec bc                                        ; $4132: $0b
    add sp, -$09                                  ; $4133: $e8 $f7
    add sp, -$01                                  ; $4135: $e8 $ff
    add sp, $01                                   ; $4137: $e8 $01
    ld hl, sp-$07                                 ; $4139: $f8 $f9
    ld hl, sp+$01                                 ; $413b: $f8 $01
    ld [bc], a                                    ; $413d: $02
    rrca                                          ; $413e: $0f
    sbc [hl]                                      ; $413f: $9e
    rra                                           ; $4140: $1f
    db $10                                        ; $4141: $10
    ccf                                           ; $4142: $3f
    inc h                                         ; $4143: $24
    dec l                                         ; $4144: $2d
    inc sp                                        ; $4145: $33
    ld a, [hl-]                                   ; $4146: $3a
    dec [hl]                                      ; $4147: $35
    ld a, a                                       ; $4148: $7f
    ld b, d                                       ; $4149: $42
    ei                                            ; $414a: $fb
    add [hl]                                      ; $414b: $86
    ld [hl], a                                    ; $414c: $77
    ld l, b                                       ; $414d: $68
    ccf                                           ; $414e: $3f
    jr nz, jr_0f3_416a                            ; $414f: $20 $19

    ld d, $0e                                     ; $4151: $16 $0e
    dec c                                         ; $4153: $0d
    rra                                           ; $4154: $1f
    ld e, $1b                                     ; $4155: $1e $1b
    rra                                           ; $4157: $1f
    inc [hl]                                      ; $4158: $34
    ccf                                           ; $4159: $3f
    scf                                           ; $415a: $37
    dec a                                         ; $415b: $3d
    ld [hl], l                                    ; $415c: $75
    ld a, a                                       ; $415d: $7f
    ld [bc], a                                    ; $415e: $02
    ld b, b                                       ; $415f: $40
    sub d                                         ; $4160: $92
    ld h, b                                       ; $4161: $60
    jr nz, jr_0f3_41d4                            ; $4162: $20 $70

    db $10                                        ; $4164: $10
    jr nc, jr_0f3_41b7                            ; $4165: $30 $50

    ld e, b                                       ; $4167: $58
    ld l, b                                       ; $4168: $68
    ld a, h                                       ; $4169: $7c

jr_0f3_416a:
    inc b                                         ; $416a: $04
    ld a, h                                       ; $416b: $7c
    inc b                                         ; $416c: $04
    ld l, b                                       ; $416d: $68
    jr jr_0f3_41e0                                ; $416e: $18 $70

    jr nc, jr_0f3_41ea                            ; $4170: $30 $78

    ld [$7c02], sp                                ; $4172: $08 $02 $7c
    adc d                                         ; $4175: $8a
    ld h, d                                       ; $4176: $62
    ld a, [hl]                                    ; $4177: $7e
    ld b, d                                       ; $4178: $42
    ld a, [hl]                                    ; $4179: $7e
    ld c, c                                       ; $417a: $49
    ld a, a                                       ; $417b: $7f
    dec de                                        ; $417c: $1b
    ld a, a                                       ; $417d: $7f
    dec e                                         ; $417e: $1d
    ld a, a                                       ; $417f: $7f
    ld [bc], a                                    ; $4180: $02
    inc c                                         ; $4181: $0c
    sbc h                                         ; $4182: $9c
    rra                                           ; $4183: $1f
    inc de                                        ; $4184: $13
    scf                                           ; $4185: $37
    ld a, $75                                     ; $4186: $3e $75
    ld e, a                                       ; $4188: $5f
    ld e, [hl]                                    ; $4189: $5e
    ld [hl], e                                    ; $418a: $73
    ccf                                           ; $418b: $3f
    ld hl, $1a16                                  ; $418c: $21 $16 $1a
    ld a, h                                       ; $418f: $7c
    ld l, h                                       ; $4190: $6c
    or h                                          ; $4191: $b4
    db $ec                                        ; $4192: $ec

jr_0f3_4193:
    ld l, h                                       ; $4193: $6c
    db $fc                                        ; $4194: $fc
    ld [hl], h                                    ; $4195: $74
    db $fc                                        ; $4196: $fc
    ld [hl], h                                    ; $4197: $74
    db $fc                                        ; $4198: $fc
    jr z, jr_0f3_4193                             ; $4199: $28 $f8

    sub b                                         ; $419b: $90
    ldh a, [$60]                                  ; $419c: $f0 $60
    ldh [rSC], a                                  ; $419e: $e0 $02
    ret nz                                        ; $41a0: $c0

    inc b                                         ; $41a1: $04
    ld [bc], a                                    ; $41a2: $02
    add d                                         ; $41a3: $82
    inc bc                                        ; $41a4: $03
    ld bc, $0202                                  ; $41a5: $01 $02 $02
    jr jr_0f3_41aa                                ; $41a8: $18 $00

jr_0f3_41aa:
    adc c                                         ; $41aa: $89
    dec d                                         ; $41ab: $15
    rra                                           ; $41ac: $1f
    dec d                                         ; $41ad: $15
    rra                                           ; $41ae: $1f
    dec a                                         ; $41af: $3d
    ccf                                           ; $41b0: $3f
    ld h, l                                       ; $41b1: $65
    ld a, a                                       ; $41b2: $7f
    ld e, l                                       ; $41b3: $5d
    ld [bc], a                                    ; $41b4: $02
    ld a, a                                       ; $41b5: $7f
    cp b                                          ; $41b6: $b8

jr_0f3_41b7:
    ld h, a                                       ; $41b7: $67
    ld l, d                                       ; $41b8: $6a
    ld d, a                                       ; $41b9: $57
    sbc $ab                                       ; $41ba: $de $ab
    cp [hl]                                       ; $41bc: $be
    db $db                                        ; $41bd: $db
    ld a, [hl]                                    ; $41be: $7e
    ld a, a                                       ; $41bf: $7f
    ld b, [hl]                                    ; $41c0: $46
    ld a, a                                       ; $41c1: $7f
    dec a                                         ; $41c2: $3d
    ccf                                           ; $41c3: $3f
    dec b                                         ; $41c4: $05
    rlca                                          ; $41c5: $07
    add hl, bc                                    ; $41c6: $09
    rrca                                          ; $41c7: $0f
    dec bc                                        ; $41c8: $0b
    rrca                                          ; $41c9: $0f
    inc de                                        ; $41ca: $13
    rra                                           ; $41cb: $1f
    ld b, [hl]                                    ; $41cc: $46
    rst $38                                       ; $41cd: $ff
    ld b, h                                       ; $41ce: $44
    rst $38                                       ; $41cf: $ff
    call Call_0f3_457f                            ; $41d0: $cd $7f $45
    rst $38                                       ; $41d3: $ff

jr_0f3_41d4:
    ld c, a                                       ; $41d4: $4f
    rst $38                                       ; $41d5: $ff
    ld b, [hl]                                    ; $41d6: $46
    rst $38                                       ; $41d7: $ff
    xor d                                         ; $41d8: $aa
    rst $38                                       ; $41d9: $ff
    and l                                         ; $41da: $a5
    rst $38                                       ; $41db: $ff
    db $eb                                        ; $41dc: $eb
    rst $38                                       ; $41dd: $ff
    db $ed                                        ; $41de: $ed
    rst $38                                       ; $41df: $ff

jr_0f3_41e0:
    db $e3                                        ; $41e0: $e3
    rst $38                                       ; $41e1: $ff
    jp hl                                         ; $41e2: $e9


    rst $38                                       ; $41e3: $ff
    pop hl                                        ; $41e4: $e1
    rst $38                                       ; $41e5: $ff
    pop hl                                        ; $41e6: $e1
    rst $38                                       ; $41e7: $ff
    db $eb                                        ; $41e8: $eb
    rst $38                                       ; $41e9: $ff

jr_0f3_41ea:
    rst $00                                       ; $41ea: $c7
    rst $38                                       ; $41eb: $ff
    ld bc, $0103                                  ; $41ec: $01 $03 $01
    inc bc                                        ; $41ef: $03
    inc bc                                        ; $41f0: $03
    add a                                         ; $41f1: $87
    ld bc, $0003                                  ; $41f2: $01 $03 $00
    inc bc                                        ; $41f5: $03
    ld [bc], a                                    ; $41f6: $02
    inc bc                                        ; $41f7: $03
    ld [bc], a                                    ; $41f8: $02
    inc bc                                        ; $41f9: $03
    inc bc                                        ; $41fa: $03
    stop                                          ; $41fb: $10 $00
    adc [hl]                                      ; $41fd: $8e
    ld e, a                                       ; $41fe: $5f
    ld a, a                                       ; $41ff: $7f
    sbc a                                         ; $4200: $9f
    rst $38                                       ; $4201: $ff
    ld e, a                                       ; $4202: $5f
    ld a, a                                       ; $4203: $7f
    ld e, a                                       ; $4204: $5f
    ld a, a                                       ; $4205: $7f
    rst $18                                       ; $4206: $df
    rst $38                                       ; $4207: $ff
    cp a                                          ; $4208: $bf
    rst $38                                       ; $4209: $ff
    ld e, [hl]                                    ; $420a: $5e
    ld a, a                                       ; $420b: $7f
    ld [bc], a                                    ; $420c: $02
    rst $38                                       ; $420d: $ff
    ld [bc], a                                    ; $420e: $02
    or $0e                                        ; $420f: $f6 $0e
    nop                                           ; $4211: $00
    sub b                                         ; $4212: $90
    call nz, $cefc                                ; $4213: $c4 $fc $ce
    cp $82                                        ; $4216: $fe $82
    cp $96                                        ; $4218: $fe $96
    cp $aa                                        ; $421a: $fe $aa
    cp $9d                                        ; $421c: $fe $9d
    rst $38                                       ; $421e: $ff
    and e                                         ; $421f: $a3
    rst $38                                       ; $4220: $ff
    db $dd                                        ; $4221: $dd
    rst $38                                       ; $4222: $ff
    ld [bc], a                                    ; $4223: $02
    ld a, [hl]                                    ; $4224: $7e
    ld [bc], a                                    ; $4225: $02
    ld e, $0c                                     ; $4226: $1e $0c
    nop                                           ; $4228: $00
    rst $38                                       ; $4229: $ff
    rla                                           ; $422a: $17
    add hl, bc                                    ; $422b: $09
    ld a, [c]                                     ; $422c: $f2
    add hl, de                                    ; $422d: $19
    call nc, $d801                                ; $422e: $d4 $01 $d8
    ld sp, hl                                     ; $4231: $f9
    ret c                                         ; $4232: $d8

    nop                                           ; $4233: $00
    ldh [$0a], a                                  ; $4234: $e0 $0a
    db $e4                                        ; $4236: $e4
    dec bc                                        ; $4237: $0b
    add sp, -$09                                  ; $4238: $e8 $f7
    add sp, -$01                                  ; $423a: $e8 $ff
    add sp, $02                                   ; $423c: $e8 $02
    ld hl, sp-$07                                 ; $423e: $f8 $f9
    ld hl, sp+$01                                 ; $4240: $f8 $01
    ld [bc], a                                    ; $4242: $02
    rrca                                          ; $4243: $0f
    sbc [hl]                                      ; $4244: $9e
    rra                                           ; $4245: $1f
    db $10                                        ; $4246: $10
    ccf                                           ; $4247: $3f
    inc h                                         ; $4248: $24
    dec l                                         ; $4249: $2d
    inc sp                                        ; $424a: $33
    ld a, [hl-]                                   ; $424b: $3a
    dec [hl]                                      ; $424c: $35
    ld a, a                                       ; $424d: $7f
    ld b, d                                       ; $424e: $42
    ei                                            ; $424f: $fb
    add [hl]                                      ; $4250: $86
    ld [hl], a                                    ; $4251: $77
    ld l, b                                       ; $4252: $68
    ccf                                           ; $4253: $3f
    jr nz, jr_0f3_426f                            ; $4254: $20 $19

    ld d, $0e                                     ; $4256: $16 $0e
    dec c                                         ; $4258: $0d
    rra                                           ; $4259: $1f
    ld e, $2b                                     ; $425a: $1e $2b
    ccf                                           ; $425c: $3f
    inc [hl]                                      ; $425d: $34
    ccf                                           ; $425e: $3f
    scf                                           ; $425f: $37
    dec a                                         ; $4260: $3d
    ld d, l                                       ; $4261: $55
    ld a, a                                       ; $4262: $7f
    ld [bc], a                                    ; $4263: $02
    ld b, b                                       ; $4264: $40
    sub d                                         ; $4265: $92
    ld h, b                                       ; $4266: $60
    jr nz, jr_0f3_42d9                            ; $4267: $20 $70

    db $10                                        ; $4269: $10
    jr nc, jr_0f3_42bc                            ; $426a: $30 $50

    ld e, b                                       ; $426c: $58
    ld l, b                                       ; $426d: $68
    ld a, h                                       ; $426e: $7c

jr_0f3_426f:
    inc b                                         ; $426f: $04
    ld a, h                                       ; $4270: $7c
    inc b                                         ; $4271: $04
    ld l, b                                       ; $4272: $68
    jr jr_0f3_42e5                                ; $4273: $18 $70

    jr nc, jr_0f3_42ef                            ; $4275: $30 $78

    ld [$7c02], sp                                ; $4277: $08 $02 $7c
    adc d                                         ; $427a: $8a
    ld h, d                                       ; $427b: $62
    ld a, [hl]                                    ; $427c: $7e
    ld b, c                                       ; $427d: $41
    ld a, a                                       ; $427e: $7f
    ld c, c                                       ; $427f: $49
    ld a, a                                       ; $4280: $7f
    dec de                                        ; $4281: $1b
    ld a, a                                       ; $4282: $7f
    dec c                                         ; $4283: $0d
    ld a, a                                       ; $4284: $7f
    ld [bc], a                                    ; $4285: $02
    jr @-$6f                                      ; $4286: $18 $8f

    ld a, $26                                     ; $4288: $3e $26
    ld l, a                                       ; $428a: $6f
    ld a, l                                       ; $428b: $7d
    db $eb                                        ; $428c: $eb
    cp a                                          ; $428d: $bf
    cp l                                          ; $428e: $bd
    and $7f                                       ; $428f: $e6 $7f
    ld b, e                                       ; $4291: $43
    inc l                                         ; $4292: $2c
    inc [hl]                                      ; $4293: $34
    ld hl, sp-$28                                 ; $4294: $f8 $d8
    ld l, b                                       ; $4296: $68
    ld [bc], a                                    ; $4297: $02
    ret c                                         ; $4298: $d8

    add c                                         ; $4299: $81
    ld hl, sp+$02                                 ; $429a: $f8 $02
    db $fc                                        ; $429c: $fc
    add [hl]                                      ; $429d: $86
    ld l, b                                       ; $429e: $68
    ld hl, sp+$08                                 ; $429f: $f8 $08
    ld hl, sp-$50                                 ; $42a1: $f8 $b0
    ldh a, [rSC]                                  ; $42a3: $f0 $02

Jump_0f3_42a5:
    ret nz                                        ; $42a5: $c0

    ld [bc], a                                    ; $42a6: $02
    nop                                           ; $42a7: $00
    ld [bc], a                                    ; $42a8: $02
    ld bc, $001e                                  ; $42a9: $01 $1e $00
    call Call_000_1f15                            ; $42ac: $cd $15 $1f
    dec e                                         ; $42af: $1d
    rra                                           ; $42b0: $1f
    dec h                                         ; $42b1: $25
    ccf                                           ; $42b2: $3f
    ld e, l                                       ; $42b3: $5d
    ld a, a                                       ; $42b4: $7f
    ld a, l                                       ; $42b5: $7d
    ld h, a                                       ; $42b6: $67
    ld l, e                                       ; $42b7: $6b
    ld d, a                                       ; $42b8: $57
    sbc $ab                                       ; $42b9: $de $ab
    cp [hl]                                       ; $42bb: $be

jr_0f3_42bc:
    db $db                                        ; $42bc: $db
    ld a, d                                       ; $42bd: $7a
    ld a, a                                       ; $42be: $7f
    ld b, [hl]                                    ; $42bf: $46
    ld a, a                                       ; $42c0: $7f
    ld a, [hl-]                                   ; $42c1: $3a
    dec sp                                        ; $42c2: $3b
    dec b                                         ; $42c3: $05
    rlca                                          ; $42c4: $07
    dec b                                         ; $42c5: $05
    rlca                                          ; $42c6: $07
    add hl, bc                                    ; $42c7: $09
    rrca                                          ; $42c8: $0f
    dec bc                                        ; $42c9: $0b
    rrca                                          ; $42ca: $0f
    inc de                                        ; $42cb: $13
    rra                                           ; $42cc: $1f
    ld b, [hl]                                    ; $42cd: $46
    rst $38                                       ; $42ce: $ff
    ld b, h                                       ; $42cf: $44
    rst $38                                       ; $42d0: $ff
    call Call_0f3_457f                            ; $42d1: $cd $7f $45
    rst $38                                       ; $42d4: $ff
    ld c, a                                       ; $42d5: $4f
    rst $38                                       ; $42d6: $ff
    ld h, $ff                                     ; $42d7: $26 $ff

jr_0f3_42d9:
    xor d                                         ; $42d9: $aa
    rst $38                                       ; $42da: $ff
    and l                                         ; $42db: $a5
    rst $38                                       ; $42dc: $ff
    db $eb                                        ; $42dd: $eb
    rst $38                                       ; $42de: $ff
    db $ed                                        ; $42df: $ed
    rst $38                                       ; $42e0: $ff
    db $e3                                        ; $42e1: $e3
    rst $38                                       ; $42e2: $ff
    jp hl                                         ; $42e3: $e9


    rst $38                                       ; $42e4: $ff

jr_0f3_42e5:
    pop hl                                        ; $42e5: $e1
    rst $38                                       ; $42e6: $ff
    pop hl                                        ; $42e7: $e1
    rst $38                                       ; $42e8: $ff
    db $eb                                        ; $42e9: $eb
    rst $38                                       ; $42ea: $ff
    rst $20                                       ; $42eb: $e7
    rst $38                                       ; $42ec: $ff
    inc bc                                        ; $42ed: $03
    rlca                                          ; $42ee: $07

jr_0f3_42ef:
    ld [bc], a                                    ; $42ef: $02
    rlca                                          ; $42f0: $07
    ld b, $07                                     ; $42f1: $06 $07
    ld bc, $0107                                  ; $42f3: $01 $07 $01
    rlca                                          ; $42f6: $07
    inc b                                         ; $42f7: $04
    rlca                                          ; $42f8: $07
    inc b                                         ; $42f9: $04
    inc bc                                        ; $42fa: $03
    rlca                                          ; $42fb: $07
    stop                                          ; $42fc: $10 $00
    adc [hl]                                      ; $42fe: $8e
    ld e, a                                       ; $42ff: $5f
    ld a, a                                       ; $4300: $7f
    sbc a                                         ; $4301: $9f
    rst $38                                       ; $4302: $ff
    ld e, a                                       ; $4303: $5f
    ld a, a                                       ; $4304: $7f
    ld e, a                                       ; $4305: $5f
    ld a, a                                       ; $4306: $7f
    rst $18                                       ; $4307: $df
    rst $38                                       ; $4308: $ff
    cp a                                          ; $4309: $bf
    rst $38                                       ; $430a: $ff
    ld e, [hl]                                    ; $430b: $5e
    ld a, a                                       ; $430c: $7f
    ld [bc], a                                    ; $430d: $02
    rst $38                                       ; $430e: $ff
    ld [bc], a                                    ; $430f: $02
    or $0e                                        ; $4310: $f6 $0e
    nop                                           ; $4312: $00
    sub b                                         ; $4313: $90
    ld b, h                                       ; $4314: $44
    db $fc                                        ; $4315: $fc
    call z, $82fc                                 ; $4316: $cc $fc $82
    cp $96                                        ; $4319: $fe $96
    cp $aa                                        ; $431b: $fe $aa
    cp $9d                                        ; $431d: $fe $9d
    rst $38                                       ; $431f: $ff
    and e                                         ; $4320: $a3
    rst $38                                       ; $4321: $ff
    db $dd                                        ; $4322: $dd
    rst $38                                       ; $4323: $ff
    ld [bc], a                                    ; $4324: $02

jr_0f3_4325:
    ld a, [hl]                                    ; $4325: $7e
    ld [bc], a                                    ; $4326: $02
    ld e, $0c                                     ; $4327: $1e $0c
    nop                                           ; $4329: $00
    rst $38                                       ; $432a: $ff
    rla                                           ; $432b: $17
    add hl, bc                                    ; $432c: $09
    ld a, [c]                                     ; $432d: $f2
    add hl, de                                    ; $432e: $19
    call nc, $d801                                ; $432f: $d4 $01 $d8
    ld sp, hl                                     ; $4332: $f9
    ret c                                         ; $4333: $d8

    nop                                           ; $4334: $00
    pop hl                                        ; $4335: $e1
    ld a, [bc]                                    ; $4336: $0a
    push hl                                       ; $4337: $e5
    dec bc                                        ; $4338: $0b
    add sp, -$09                                  ; $4339: $e8 $f7
    add sp, -$01                                  ; $433b: $e8 $ff
    add sp, $02                                   ; $433d: $e8 $02
    ld hl, sp-$07                                 ; $433f: $f8 $f9
    ld hl, sp+$01                                 ; $4341: $f8 $01
    ld [bc], a                                    ; $4343: $02
    rrca                                          ; $4344: $0f
    sbc [hl]                                      ; $4345: $9e
    rra                                           ; $4346: $1f
    db $10                                        ; $4347: $10
    ccf                                           ; $4348: $3f
    inc h                                         ; $4349: $24
    dec l                                         ; $434a: $2d
    inc sp                                        ; $434b: $33
    ld a, [hl-]                                   ; $434c: $3a
    dec [hl]                                      ; $434d: $35
    ld a, a                                       ; $434e: $7f
    ld b, d                                       ; $434f: $42
    ei                                            ; $4350: $fb
    add [hl]                                      ; $4351: $86
    ld [hl], a                                    ; $4352: $77
    ld l, b                                       ; $4353: $68
    ccf                                           ; $4354: $3f
    jr nz, jr_0f3_4370                            ; $4355: $20 $19

    ld d, $0e                                     ; $4357: $16 $0e
    dec c                                         ; $4359: $0d
    rra                                           ; $435a: $1f
    ld e, $2b                                     ; $435b: $1e $2b
    ccf                                           ; $435d: $3f
    inc [hl]                                      ; $435e: $34
    ccf                                           ; $435f: $3f
    scf                                           ; $4360: $37
    dec a                                         ; $4361: $3d
    ld [hl], l                                    ; $4362: $75
    ld a, a                                       ; $4363: $7f
    ld [bc], a                                    ; $4364: $02
    ld b, b                                       ; $4365: $40
    sub d                                         ; $4366: $92
    ld h, b                                       ; $4367: $60
    jr nz, jr_0f3_43da                            ; $4368: $20 $70

    db $10                                        ; $436a: $10
    jr nc, jr_0f3_43bd                            ; $436b: $30 $50

    ld e, b                                       ; $436d: $58
    ld l, b                                       ; $436e: $68
    ld a, h                                       ; $436f: $7c

jr_0f3_4370:
    inc b                                         ; $4370: $04
    ld a, h                                       ; $4371: $7c
    inc b                                         ; $4372: $04
    ld l, b                                       ; $4373: $68
    jr jr_0f3_43e6                                ; $4374: $18 $70

    jr nc, jr_0f3_43f0                            ; $4376: $30 $78

    ld [$7c02], sp                                ; $4378: $08 $02 $7c
    adc d                                         ; $437b: $8a
    ld h, d                                       ; $437c: $62
    ld a, [hl]                                    ; $437d: $7e
    ld b, c                                       ; $437e: $41
    ld a, a                                       ; $437f: $7f
    ld c, c                                       ; $4380: $49
    ld a, a                                       ; $4381: $7f
    dec de                                        ; $4382: $1b
    ld a, a                                       ; $4383: $7f
    dec c                                         ; $4384: $0d
    ld a, a                                       ; $4385: $7f
    ld [bc], a                                    ; $4386: $02
    jr jr_0f3_4325                                ; $4387: $18 $9c

    inc [hl]                                      ; $4389: $34
    inc l                                         ; $438a: $2c
    ld l, [hl]                                    ; $438b: $6e
    halt                                          ; $438c: $76
    db $eb                                        ; $438d: $eb
    sbc l                                         ; $438e: $9d
    or h                                          ; $438f: $b4
    rst $28                                       ; $4390: $ef
    ld a, a                                       ; $4391: $7f
    ld b, d                                       ; $4392: $42
    dec l                                         ; $4393: $2d
    dec [hl]                                      ; $4394: $35
    ld hl, sp-$28                                 ; $4395: $f8 $d8
    ld l, b                                       ; $4397: $68
    ret c                                         ; $4398: $d8

jr_0f3_4399:
    ld e, b                                       ; $4399: $58
    ld hl, sp+$74                                 ; $439a: $f8 $74
    db $fc                                        ; $439c: $fc
    ld [hl], h                                    ; $439d: $74
    db $fc                                        ; $439e: $fc
    jr z, jr_0f3_4399                             ; $439f: $28 $f8

    sub b                                         ; $43a1: $90
    ldh a, [$60]                                  ; $43a2: $f0 $60
    ldh [rSC], a                                  ; $43a4: $e0 $02
    add b                                         ; $43a6: $80
    inc b                                         ; $43a7: $04
    ld bc, $001c                                  ; $43a8: $01 $1c $00
    add a                                         ; $43ab: $87
    dec d                                         ; $43ac: $15
    rra                                           ; $43ad: $1f
    dec a                                         ; $43ae: $3d
    ccf                                           ; $43af: $3f
    ld c, l                                       ; $43b0: $4d
    ld a, a                                       ; $43b1: $7f
    ld a, l                                       ; $43b2: $7d
    ld [bc], a                                    ; $43b3: $02
    ld h, a                                       ; $43b4: $67
    cp d                                          ; $43b5: $ba
    ld e, e                                       ; $43b6: $5b
    ei                                            ; $43b7: $fb
    xor a                                         ; $43b8: $af
    or [hl]                                       ; $43b9: $b6
    db $db                                        ; $43ba: $db
    halt                                          ; $43bb: $76
    ld a, a                                       ; $43bc: $7f

jr_0f3_43bd:
    ld e, d                                       ; $43bd: $5a
    ld a, a                                       ; $43be: $7f
    ld h, $3f                                     ; $43bf: $26 $3f
    ld a, [de]                                    ; $43c1: $1a
    dec de                                        ; $43c2: $1b
    dec b                                         ; $43c3: $05
    rlca                                          ; $43c4: $07
    dec b                                         ; $43c5: $05
    rlca                                          ; $43c6: $07
    add hl, bc                                    ; $43c7: $09
    rrca                                          ; $43c8: $0f
    dec bc                                        ; $43c9: $0b
    rrca                                          ; $43ca: $0f
    inc de                                        ; $43cb: $13
    rra                                           ; $43cc: $1f
    ld b, [hl]                                    ; $43cd: $46
    rst $38                                       ; $43ce: $ff
    ld b, h                                       ; $43cf: $44
    rst $38                                       ; $43d0: $ff
    call Call_0f3_457f                            ; $43d1: $cd $7f $45
    rst $38                                       ; $43d4: $ff
    ld c, a                                       ; $43d5: $4f
    rst $38                                       ; $43d6: $ff
    daa                                           ; $43d7: $27
    rst $38                                       ; $43d8: $ff
    xor d                                         ; $43d9: $aa

jr_0f3_43da:
    rst $38                                       ; $43da: $ff
    and l                                         ; $43db: $a5
    rst $38                                       ; $43dc: $ff
    db $eb                                        ; $43dd: $eb
    rst $38                                       ; $43de: $ff
    db $ed                                        ; $43df: $ed
    rst $38                                       ; $43e0: $ff
    db $e3                                        ; $43e1: $e3
    rst $38                                       ; $43e2: $ff
    jp hl                                         ; $43e3: $e9


    rst $38                                       ; $43e4: $ff
    pop hl                                        ; $43e5: $e1

jr_0f3_43e6:
    rst $38                                       ; $43e6: $ff
    pop hl                                        ; $43e7: $e1
    rst $38                                       ; $43e8: $ff
    db $eb                                        ; $43e9: $eb
    rst $38                                       ; $43ea: $ff
    rst $20                                       ; $43eb: $e7
    rst $38                                       ; $43ec: $ff
    ld [bc], a                                    ; $43ed: $02
    ld b, $03                                     ; $43ee: $06 $03

jr_0f3_43f0:
    inc bc                                        ; $43f0: $03
    rlca                                          ; $43f1: $07
    adc d                                         ; $43f2: $8a
    ld bc, $0107                                  ; $43f3: $01 $07 $01
    rlca                                          ; $43f6: $07
    ld bc, $0407                                  ; $43f7: $01 $07 $04
    rlca                                          ; $43fa: $07
    ld b, $07                                     ; $43fb: $06 $07
    ld [bc], a                                    ; $43fd: $02
    inc bc                                        ; $43fe: $03
    ld c, $00                                     ; $43ff: $0e $00
    adc [hl]                                      ; $4401: $8e
    ld e, a                                       ; $4402: $5f
    ld a, a                                       ; $4403: $7f
    sbc a                                         ; $4404: $9f
    rst $38                                       ; $4405: $ff
    ld e, a                                       ; $4406: $5f
    ld a, a                                       ; $4407: $7f
    ld e, a                                       ; $4408: $5f
    ld a, a                                       ; $4409: $7f
    rst $18                                       ; $440a: $df
    rst $38                                       ; $440b: $ff
    cp a                                          ; $440c: $bf
    rst $38                                       ; $440d: $ff
    ld e, [hl]                                    ; $440e: $5e
    ld a, a                                       ; $440f: $7f
    ld [bc], a                                    ; $4410: $02
    rst $38                                       ; $4411: $ff
    ld [bc], a                                    ; $4412: $02
    or $0e                                        ; $4413: $f6 $0e
    nop                                           ; $4415: $00
    sub b                                         ; $4416: $90
    ld b, h                                       ; $4417: $44
    db $fc                                        ; $4418: $fc

jr_0f3_4419:
    call z, $82fc                                 ; $4419: $cc $fc $82
    cp $96                                        ; $441c: $fe $96
    cp $aa                                        ; $441e: $fe $aa
    cp $9d                                        ; $4420: $fe $9d
    rst $38                                       ; $4422: $ff
    and e                                         ; $4423: $a3
    rst $38                                       ; $4424: $ff
    db $dd                                        ; $4425: $dd
    rst $38                                       ; $4426: $ff
    ld [bc], a                                    ; $4427: $02
    ld a, [hl]                                    ; $4428: $7e
    ld [bc], a                                    ; $4429: $02
    ld e, $0c                                     ; $442a: $1e $0c
    nop                                           ; $442c: $00
    rst $38                                       ; $442d: $ff
    rla                                           ; $442e: $17
    add hl, bc                                    ; $442f: $09
    ld a, [c]                                     ; $4430: $f2
    add hl, de                                    ; $4431: $19
    call nc, $d801                                ; $4432: $d4 $01 $d8
    ld sp, hl                                     ; $4435: $f9
    ret c                                         ; $4436: $d8

    nop                                           ; $4437: $00
    pop hl                                        ; $4438: $e1
    add hl, bc                                    ; $4439: $09
    push hl                                       ; $443a: $e5
    ld a, [bc]                                    ; $443b: $0a
    add sp, -$09                                  ; $443c: $e8 $f7
    add sp, -$01                                  ; $443e: $e8 $ff
    add sp, $01                                   ; $4440: $e8 $01
    ld hl, sp-$07                                 ; $4442: $f8 $f9
    ld hl, sp+$01                                 ; $4444: $f8 $01
    ld [bc], a                                    ; $4446: $02
    rrca                                          ; $4447: $0f
    sbc [hl]                                      ; $4448: $9e
    rra                                           ; $4449: $1f
    db $10                                        ; $444a: $10
    ccf                                           ; $444b: $3f
    inc h                                         ; $444c: $24
    dec l                                         ; $444d: $2d
    inc sp                                        ; $444e: $33
    ld a, [hl-]                                   ; $444f: $3a
    dec [hl]                                      ; $4450: $35
    ld a, a                                       ; $4451: $7f
    ld b, d                                       ; $4452: $42
    ei                                            ; $4453: $fb
    add [hl]                                      ; $4454: $86
    ld [hl], a                                    ; $4455: $77
    ld l, b                                       ; $4456: $68
    ccf                                           ; $4457: $3f
    jr nz, jr_0f3_4473                            ; $4458: $20 $19

    ld d, $0e                                     ; $445a: $16 $0e
    dec c                                         ; $445c: $0d
    rra                                           ; $445d: $1f
    ld e, $1b                                     ; $445e: $1e $1b
    rra                                           ; $4460: $1f
    inc [hl]                                      ; $4461: $34
    ccf                                           ; $4462: $3f
    scf                                           ; $4463: $37
    dec a                                         ; $4464: $3d
    ld [hl], l                                    ; $4465: $75
    ld a, a                                       ; $4466: $7f
    ld [bc], a                                    ; $4467: $02
    ld b, b                                       ; $4468: $40
    sub d                                         ; $4469: $92
    ld h, b                                       ; $446a: $60
    jr nz, jr_0f3_44dd                            ; $446b: $20 $70

    db $10                                        ; $446d: $10
    jr nc, jr_0f3_44c0                            ; $446e: $30 $50

    ld e, b                                       ; $4470: $58
    ld l, b                                       ; $4471: $68
    ld a, h                                       ; $4472: $7c

jr_0f3_4473:
    inc b                                         ; $4473: $04
    ld a, h                                       ; $4474: $7c
    inc b                                         ; $4475: $04
    ld l, b                                       ; $4476: $68
    jr jr_0f3_44e9                                ; $4477: $18 $70

    jr nc, jr_0f3_44f3                            ; $4479: $30 $78

    ld [$7802], sp                                ; $447b: $08 $02 $78
    adc d                                         ; $447e: $8a
    ld h, [hl]                                    ; $447f: $66
    ld a, [hl]                                    ; $4480: $7e
    ld b, d                                       ; $4481: $42
    ld a, [hl]                                    ; $4482: $7e
    ld b, c                                       ; $4483: $41
    ld a, a                                       ; $4484: $7f
    add hl, de                                    ; $4485: $19
    ld a, a                                       ; $4486: $7f
    dec de                                        ; $4487: $1b
    ld a, a                                       ; $4488: $7f
    ld [bc], a                                    ; $4489: $02
    jr jr_0f3_4419                                ; $448a: $18 $8d

    inc [hl]                                      ; $448c: $34
    inc l                                         ; $448d: $2c
    ld l, [hl]                                    ; $448e: $6e
    halt                                          ; $448f: $76
    db $eb                                        ; $4490: $eb
    sbc l                                         ; $4491: $9d
    or h                                          ; $4492: $b4
    rst $28                                       ; $4493: $ef
    ld a, a                                       ; $4494: $7f
    ld b, d                                       ; $4495: $42
    dec l                                         ; $4496: $2d
    dec [hl]                                      ; $4497: $35
    ld hl, sp+$02                                 ; $4498: $f8 $02
    ret c                                         ; $449a: $d8

    adc l                                         ; $449b: $8d
    add sp, $5c                                   ; $449c: $e8 $5c
    db $fc                                        ; $449e: $fc
    ld [hl], h                                    ; $449f: $74
    db $fc                                        ; $44a0: $fc
    inc [hl]                                      ; $44a1: $34
    db $fc                                        ; $44a2: $fc
    or h                                          ; $44a3: $b4
    db $fc                                        ; $44a4: $fc
    ret z                                         ; $44a5: $c8

    ld hl, sp+$70                                 ; $44a6: $f8 $70
    ldh a, [rSC]                                  ; $44a8: $f0 $02
    add b                                         ; $44aa: $80
    inc b                                         ; $44ab: $04
    ld bc, $001c                                  ; $44ac: $01 $1c $00
    add a                                         ; $44af: $87
    dec d                                         ; $44b0: $15
    rra                                           ; $44b1: $1f
    dec a                                         ; $44b2: $3d
    ccf                                           ; $44b3: $3f
    ld e, l                                       ; $44b4: $5d
    ld a, a                                       ; $44b5: $7f
    ld a, l                                       ; $44b6: $7d
    ld [bc], a                                    ; $44b7: $02
    ld h, a                                       ; $44b8: $67
    adc l                                         ; $44b9: $8d
    ld e, e                                       ; $44ba: $5b
    ei                                            ; $44bb: $fb
    xor a                                         ; $44bc: $af
    or a                                          ; $44bd: $b7
    db $db                                        ; $44be: $db
    halt                                          ; $44bf: $76

jr_0f3_44c0:
    ld a, a                                       ; $44c0: $7f
    ld e, d                                       ; $44c1: $5a
    ld a, a                                       ; $44c2: $7f
    ld h, $3f                                     ; $44c3: $26 $3f
    ld a, [de]                                    ; $44c5: $1a
    dec de                                        ; $44c6: $1b
    ld [bc], a                                    ; $44c7: $02
    rlca                                          ; $44c8: $07
    xor b                                         ; $44c9: $a8
    dec b                                         ; $44ca: $05
    rlca                                          ; $44cb: $07
    add hl, bc                                    ; $44cc: $09
    rrca                                          ; $44cd: $0f
    dec de                                        ; $44ce: $1b
    rra                                           ; $44cf: $1f
    inc de                                        ; $44d0: $13
    rra                                           ; $44d1: $1f
    ld b, [hl]                                    ; $44d2: $46
    rst $38                                       ; $44d3: $ff
    ld b, [hl]                                    ; $44d4: $46
    rst $38                                       ; $44d5: $ff
    call nz, Call_0f3_457f                        ; $44d6: $c4 $7f $45
    rst $38                                       ; $44d9: $ff
    ld c, l                                       ; $44da: $4d
    rst $38                                       ; $44db: $ff
    ld h, l                                       ; $44dc: $65

jr_0f3_44dd:
    rst $38                                       ; $44dd: $ff
    cpl                                           ; $44de: $2f
    rst $38                                       ; $44df: $ff
    and [hl]                                      ; $44e0: $a6
    rst $38                                       ; $44e1: $ff
    db $eb                                        ; $44e2: $eb
    rst $38                                       ; $44e3: $ff
    db $ed                                        ; $44e4: $ed
    rst $38                                       ; $44e5: $ff
    rst $20                                       ; $44e6: $e7
    rst $38                                       ; $44e7: $ff
    push hl                                       ; $44e8: $e5

jr_0f3_44e9:
    rst $38                                       ; $44e9: $ff
    pop hl                                        ; $44ea: $e1
    rst $38                                       ; $44eb: $ff
    pop hl                                        ; $44ec: $e1
    rst $38                                       ; $44ed: $ff
    rst $20                                       ; $44ee: $e7
    rst $38                                       ; $44ef: $ff
    db $d3                                        ; $44f0: $d3
    rst $38                                       ; $44f1: $ff
    ld [bc], a                                    ; $44f2: $02

jr_0f3_44f3:
    ld [bc], a                                    ; $44f3: $02
    add c                                         ; $44f4: $81
    ld bc, $0305                                  ; $44f5: $01 $05 $03
    adc d                                         ; $44f8: $8a
    ld bc, $0003                                  ; $44f9: $01 $03 $00
    inc bc                                        ; $44fc: $03
    nop                                           ; $44fd: $00
    inc bc                                        ; $44fe: $03
    ld [bc], a                                    ; $44ff: $02
    inc bc                                        ; $4500: $03
    ld [bc], a                                    ; $4501: $02
    inc bc                                        ; $4502: $03
    ld [bc], a                                    ; $4503: $02
    ld bc, $000c                                  ; $4504: $01 $0c $00
    adc [hl]                                      ; $4507: $8e
    sbc a                                         ; $4508: $9f
    rst $38                                       ; $4509: $ff
    ld e, a                                       ; $450a: $5f
    ld a, a                                       ; $450b: $7f
    ld e, a                                       ; $450c: $5f
    ld a, a                                       ; $450d: $7f
    ld e, a                                       ; $450e: $5f
    ld a, a                                       ; $450f: $7f
    rst $18                                       ; $4510: $df
    rst $38                                       ; $4511: $ff
    sbc [hl]                                      ; $4512: $9e
    rst $38                                       ; $4513: $ff
    ld a, [hl]                                    ; $4514: $7e
    ld a, a                                       ; $4515: $7f
    ld [bc], a                                    ; $4516: $02
    rst $38                                       ; $4517: $ff
    ld [bc], a                                    ; $4518: $02
    or $0e                                        ; $4519: $f6 $0e
    nop                                           ; $451b: $00
    sub b                                         ; $451c: $90
    call nz, $8efc                                ; $451d: $c4 $fc $8e
    cp $82                                        ; $4520: $fe $82
    cp $aa                                        ; $4522: $fe $aa
    cp $96                                        ; $4524: $fe $96
    cp $bd                                        ; $4526: $fe $bd
    rst $38                                       ; $4528: $ff
    add e                                         ; $4529: $83
    rst $38                                       ; $452a: $ff
    db $dd                                        ; $452b: $dd
    rst $38                                       ; $452c: $ff
    ld [bc], a                                    ; $452d: $02

jr_0f3_452e:
    ld a, $02                                     ; $452e: $3e $02
    ld e, $0c                                     ; $4530: $1e $0c
    nop                                           ; $4532: $00
    rst $38                                       ; $4533: $ff
    rla                                           ; $4534: $17
    add hl, bc                                    ; $4535: $09
    ld a, [c]                                     ; $4536: $f2
    add hl, de                                    ; $4537: $19
    call nc, $d901                                ; $4538: $d4 $01 $d9
    ld sp, hl                                     ; $453b: $f9
    reti                                          ; $453c: $d9


    ld bc, $09e0                                  ; $453d: $01 $e0 $09
    db $e4                                        ; $4540: $e4
    ld a, [bc]                                    ; $4541: $0a
    jp hl                                         ; $4542: $e9


    rst $30                                       ; $4543: $f7
    jp hl                                         ; $4544: $e9


    rst $38                                       ; $4545: $ff
    jp hl                                         ; $4546: $e9


    ld [bc], a                                    ; $4547: $02
    ld sp, hl                                     ; $4548: $f9
    ld sp, hl                                     ; $4549: $f9
    ld sp, hl                                     ; $454a: $f9
    ld bc, $0f02                                  ; $454b: $01 $02 $0f
    sbc [hl]                                      ; $454e: $9e
    rra                                           ; $454f: $1f
    db $10                                        ; $4550: $10
    ccf                                           ; $4551: $3f
    inc h                                         ; $4552: $24
    dec l                                         ; $4553: $2d
    inc sp                                        ; $4554: $33
    ld a, [hl-]                                   ; $4555: $3a
    dec [hl]                                      ; $4556: $35
    ld a, a                                       ; $4557: $7f
    ld b, d                                       ; $4558: $42
    ei                                            ; $4559: $fb
    add [hl]                                      ; $455a: $86
    ld [hl], a                                    ; $455b: $77
    ld l, b                                       ; $455c: $68
    ccf                                           ; $455d: $3f
    jr nz, @+$1b                                  ; $455e: $20 $19

    ld d, $0e                                     ; $4560: $16 $0e
    dec c                                         ; $4562: $0d
    dec e                                         ; $4563: $1d
    ld e, $2b                                     ; $4564: $1e $2b
    ccf                                           ; $4566: $3f
    inc [hl]                                      ; $4567: $34
    ccf                                           ; $4568: $3f
    scf                                           ; $4569: $37
    dec a                                         ; $456a: $3d
    ld [hl], l                                    ; $456b: $75
    ld a, a                                       ; $456c: $7f
    ld [bc], a                                    ; $456d: $02
    add b                                         ; $456e: $80
    sub d                                         ; $456f: $92
    ret nz                                        ; $4570: $c0

    ld b, b                                       ; $4571: $40
    ldh [rNR41], a                                ; $4572: $e0 $20
    ld h, b                                       ; $4574: $60
    and b                                         ; $4575: $a0
    or b                                          ; $4576: $b0
    ret nc                                        ; $4577: $d0

    ld hl, sp+$08                                 ; $4578: $f8 $08
    ld hl, sp+$08                                 ; $457a: $f8 $08
    ret nc                                        ; $457c: $d0

    jr nc, @-$1e                                  ; $457d: $30 $e0

Call_0f3_457f:
    ld h, b                                       ; $457f: $60
    ldh a, [rNR10]                                ; $4580: $f0 $10
    ld [bc], a                                    ; $4582: $02
    ld hl, sp-$76                                 ; $4583: $f8 $8a
    call nz, $82fc                                ; $4585: $c4 $fc $82
    cp $92                                        ; $4588: $fe $92
    cp $36                                        ; $458a: $fe $36
    cp $1b                                        ; $458c: $fe $1b
    rst $38                                       ; $458e: $ff
    ld [bc], a                                    ; $458f: $02
    jr jr_0f3_452e                                ; $4590: $18 $9c

    inc [hl]                                      ; $4592: $34
    inc l                                         ; $4593: $2c
    ld l, [hl]                                    ; $4594: $6e
    halt                                          ; $4595: $76
    db $eb                                        ; $4596: $eb
    sbc l                                         ; $4597: $9d
    or h                                          ; $4598: $b4
    rst $28                                       ; $4599: $ef
    ld a, a                                       ; $459a: $7f
    ld b, d                                       ; $459b: $42
    dec l                                         ; $459c: $2d
    dec [hl]                                      ; $459d: $35
    ld hl, sp-$28                                 ; $459e: $f8 $d8
    ld e, b                                       ; $45a0: $58
    add sp, $5c                                   ; $45a1: $e8 $5c
    db $fc                                        ; $45a3: $fc
    ld [hl], h                                    ; $45a4: $74
    db $fc                                        ; $45a5: $fc
    ld [hl], h                                    ; $45a6: $74
    db $fc                                        ; $45a7: $fc
    jr z, @-$06                                   ; $45a8: $28 $f8

    sub b                                         ; $45aa: $90
    ldh a, [$60]                                  ; $45ab: $f0 $60
    ldh [rSC], a                                  ; $45ad: $e0 $02
    ret nz                                        ; $45af: $c0

    inc b                                         ; $45b0: $04
    ld bc, $001c                                  ; $45b1: $01 $1c $00
    add a                                         ; $45b4: $87
    dec d                                         ; $45b5: $15
    rra                                           ; $45b6: $1f
    dec a                                         ; $45b7: $3d
    ccf                                           ; $45b8: $3f
    ld e, l                                       ; $45b9: $5d
    ld a, a                                       ; $45ba: $7f
    ld a, l                                       ; $45bb: $7d
    ld [bc], a                                    ; $45bc: $02
    ld h, a                                       ; $45bd: $67
    adc e                                         ; $45be: $8b
    ld e, e                                       ; $45bf: $5b
    ei                                            ; $45c0: $fb
    xor a                                         ; $45c1: $af
    or [hl]                                       ; $45c2: $b6
    db $db                                        ; $45c3: $db
    halt                                          ; $45c4: $76
    ld a, a                                       ; $45c5: $7f
    ld e, d                                       ; $45c6: $5a
    ld a, a                                       ; $45c7: $7f
    ld h, $3f                                     ; $45c8: $26 $3f
    ld [bc], a                                    ; $45ca: $02
    rra                                           ; $45cb: $1f
    xor e                                         ; $45cc: $ab
    dec b                                         ; $45cd: $05
    rlca                                          ; $45ce: $07
    add hl, bc                                    ; $45cf: $09
    rrca                                          ; $45d0: $0f
    dec de                                        ; $45d1: $1b
    rra                                           ; $45d2: $1f
    inc de                                        ; $45d3: $13
    rra                                           ; $45d4: $1f
    daa                                           ; $45d5: $27
    ccf                                           ; $45d6: $3f
    ld b, [hl]                                    ; $45d7: $46
    rst $38                                       ; $45d8: $ff
    ld b, h                                       ; $45d9: $44
    rst $38                                       ; $45da: $ff
    push bc                                       ; $45db: $c5
    ld a, a                                       ; $45dc: $7f
    ld c, l                                       ; $45dd: $4d
    rst $38                                       ; $45de: $ff
    ld b, l                                       ; $45df: $45
    rst $38                                       ; $45e0: $ff
    cpl                                           ; $45e1: $2f
    rst $38                                       ; $45e2: $ff
    and [hl]                                      ; $45e3: $a6
    rst $38                                       ; $45e4: $ff
    xor e                                         ; $45e5: $ab
    rst $38                                       ; $45e6: $ff
    db $ed                                        ; $45e7: $ed
    rst $38                                       ; $45e8: $ff
    rst $20                                       ; $45e9: $e7
    rst $38                                       ; $45ea: $ff
    push hl                                       ; $45eb: $e5
    rst $38                                       ; $45ec: $ff
    pop hl                                        ; $45ed: $e1
    rst $38                                       ; $45ee: $ff
    pop hl                                        ; $45ef: $e1
    rst $38                                       ; $45f0: $ff
    rst $20                                       ; $45f1: $e7
    rst $38                                       ; $45f2: $ff
    db $d3                                        ; $45f3: $d3
    rst $38                                       ; $45f4: $ff
    pop af                                        ; $45f5: $f1
    rst $38                                       ; $45f6: $ff
    ld [bc], a                                    ; $45f7: $02
    dec b                                         ; $45f8: $05
    ld b, $88                                     ; $45f9: $06 $88
    ld [bc], a                                    ; $45fb: $02
    ld b, $00                                     ; $45fc: $06 $00
    ld b, $00                                     ; $45fe: $06 $00
    ld b, $04                                     ; $4600: $06 $04
    ld b, $02                                     ; $4602: $06 $02
    rlca                                          ; $4604: $07
    stop                                          ; $4605: $10 $00
    adc h                                         ; $4607: $8c
    ld e, a                                       ; $4608: $5f
    ld a, a                                       ; $4609: $7f
    ld e, a                                       ; $460a: $5f
    ld a, a                                       ; $460b: $7f
    ld e, a                                       ; $460c: $5f
    ld a, a                                       ; $460d: $7f
    rst $18                                       ; $460e: $df
    rst $38                                       ; $460f: $ff
    sbc [hl]                                      ; $4610: $9e
    rst $38                                       ; $4611: $ff
    ld a, [hl]                                    ; $4612: $7e
    ld a, a                                       ; $4613: $7f
    ld [bc], a                                    ; $4614: $02
    rst $38                                       ; $4615: $ff
    ld [bc], a                                    ; $4616: $02
    or $10                                        ; $4617: $f6 $10
    nop                                           ; $4619: $00
    adc [hl]                                      ; $461a: $8e
    adc [hl]                                      ; $461b: $8e
    cp $82                                        ; $461c: $fe $82
    cp $aa                                        ; $461e: $fe $aa
    cp $96                                        ; $4620: $fe $96
    cp $bd                                        ; $4622: $fe $bd
    rst $38                                       ; $4624: $ff
    add e                                         ; $4625: $83
    rst $38                                       ; $4626: $ff
    db $dd                                        ; $4627: $dd
    rst $38                                       ; $4628: $ff
    ld [bc], a                                    ; $4629: $02

jr_0f3_462a:
    ld a, $02                                     ; $462a: $3e $02
    ld e, $0e                                     ; $462c: $1e $0e
    nop                                           ; $462e: $00
    rst $38                                       ; $462f: $ff
    rla                                           ; $4630: $17
    add hl, bc                                    ; $4631: $09
    ld a, [c]                                     ; $4632: $f2
    add hl, de                                    ; $4633: $19
    call nc, $d901                                ; $4634: $d4 $01 $d9
    ld sp, hl                                     ; $4637: $f9
    reti                                          ; $4638: $d9


    ld bc, $09df                                  ; $4639: $01 $df $09
    db $e3                                        ; $463c: $e3
    ld a, [bc]                                    ; $463d: $0a
    jp hl                                         ; $463e: $e9


    rst $30                                       ; $463f: $f7
    jp hl                                         ; $4640: $e9


    rst $38                                       ; $4641: $ff
    jp hl                                         ; $4642: $e9


    ld bc, $f9f9                                  ; $4643: $01 $f9 $f9
    ld sp, hl                                     ; $4646: $f9
    ld bc, $0f02                                  ; $4647: $01 $02 $0f
    sbc [hl]                                      ; $464a: $9e
    rra                                           ; $464b: $1f
    db $10                                        ; $464c: $10
    ccf                                           ; $464d: $3f
    inc h                                         ; $464e: $24
    dec l                                         ; $464f: $2d
    inc sp                                        ; $4650: $33
    ld a, [hl-]                                   ; $4651: $3a
    dec [hl]                                      ; $4652: $35
    ld a, a                                       ; $4653: $7f
    ld b, d                                       ; $4654: $42
    ei                                            ; $4655: $fb
    add [hl]                                      ; $4656: $86
    ld [hl], a                                    ; $4657: $77
    ld l, b                                       ; $4658: $68
    ccf                                           ; $4659: $3f
    jr nz, @+$1b                                  ; $465a: $20 $19

    ld d, $0e                                     ; $465c: $16 $0e
    dec c                                         ; $465e: $0d
    rra                                           ; $465f: $1f
    ld e, $2b                                     ; $4660: $1e $2b
    ccf                                           ; $4662: $3f
    inc [hl]                                      ; $4663: $34
    ccf                                           ; $4664: $3f
    scf                                           ; $4665: $37
    dec a                                         ; $4666: $3d
    ld [hl], l                                    ; $4667: $75
    ld a, a                                       ; $4668: $7f
    ld [bc], a                                    ; $4669: $02
    add b                                         ; $466a: $80
    sub d                                         ; $466b: $92
    ret nz                                        ; $466c: $c0

    ld b, b                                       ; $466d: $40
    ldh [rNR41], a                                ; $466e: $e0 $20
    ld h, b                                       ; $4670: $60
    and b                                         ; $4671: $a0
    or b                                          ; $4672: $b0
    ret nc                                        ; $4673: $d0

    ld hl, sp+$08                                 ; $4674: $f8 $08
    ld hl, sp+$08                                 ; $4676: $f8 $08
    ret nc                                        ; $4678: $d0

    jr nc, @-$1e                                  ; $4679: $30 $e0

    ld h, b                                       ; $467b: $60
    ldh a, [rNR10]                                ; $467c: $f0 $10
    ld [bc], a                                    ; $467e: $02
    ld hl, sp-$76                                 ; $467f: $f8 $8a
    call nz, $82fc                                ; $4681: $c4 $fc $82
    cp $92                                        ; $4684: $fe $92
    cp $37                                        ; $4686: $fe $37
    rst $38                                       ; $4688: $ff
    dec de                                        ; $4689: $1b
    rst $38                                       ; $468a: $ff
    ld [bc], a                                    ; $468b: $02
    jr jr_0f3_462a                                ; $468c: $18 $9c

    ld a, $26                                     ; $468e: $3e $26
    ld l, a                                       ; $4690: $6f
    ld a, l                                       ; $4691: $7d
    db $eb                                        ; $4692: $eb
    cp a                                          ; $4693: $bf
    cp l                                          ; $4694: $bd
    and $7f                                       ; $4695: $e6 $7f
    ld b, e                                       ; $4697: $43
    inc l                                         ; $4698: $2c
    inc [hl]                                      ; $4699: $34
    ld hl, sp-$28                                 ; $469a: $f8 $d8
    ld e, b                                       ; $469c: $58
    add sp, $5c                                   ; $469d: $e8 $5c
    db $fc                                        ; $469f: $fc
    ld [hl], h                                    ; $46a0: $74
    db $fc                                        ; $46a1: $fc
    ld [hl], h                                    ; $46a2: $74
    db $fc                                        ; $46a3: $fc
    jr z, @-$06                                   ; $46a4: $28 $f8

    sub b                                         ; $46a6: $90
    ldh a, [$60]                                  ; $46a7: $f0 $60
    ldh [rSC], a                                  ; $46a9: $e0 $02
    add b                                         ; $46ab: $80
    ld [bc], a                                    ; $46ac: $02
    ld bc, $001e                                  ; $46ad: $01 $1e $00
    add a                                         ; $46b0: $87
    dec d                                         ; $46b1: $15
    rra                                           ; $46b2: $1f
    dec a                                         ; $46b3: $3d
    ccf                                           ; $46b4: $3f
    ld e, l                                       ; $46b5: $5d
    ld a, a                                       ; $46b6: $7f
    ld a, l                                       ; $46b7: $7d
    ld [bc], a                                    ; $46b8: $02
    ld h, a                                       ; $46b9: $67
    adc e                                         ; $46ba: $8b
    ld e, e                                       ; $46bb: $5b
    ei                                            ; $46bc: $fb
    xor a                                         ; $46bd: $af
    or [hl]                                       ; $46be: $b6
    db $db                                        ; $46bf: $db
    halt                                          ; $46c0: $76
    ld a, a                                       ; $46c1: $7f
    ld e, d                                       ; $46c2: $5a
    ld a, a                                       ; $46c3: $7f
    ld h, $3f                                     ; $46c4: $26 $3f
    ld [bc], a                                    ; $46c6: $02
    rra                                           ; $46c7: $1f
    xor e                                         ; $46c8: $ab
    dec b                                         ; $46c9: $05
    rlca                                          ; $46ca: $07
    add hl, bc                                    ; $46cb: $09
    rrca                                          ; $46cc: $0f
    dec de                                        ; $46cd: $1b
    rra                                           ; $46ce: $1f
    inc de                                        ; $46cf: $13
    rra                                           ; $46d0: $1f
    daa                                           ; $46d1: $27
    ccf                                           ; $46d2: $3f
    ld b, [hl]                                    ; $46d3: $46
    rst $38                                       ; $46d4: $ff
    ld b, h                                       ; $46d5: $44
    rst $38                                       ; $46d6: $ff
    push bc                                       ; $46d7: $c5
    ld a, a                                       ; $46d8: $7f
    ld c, l                                       ; $46d9: $4d
    rst $38                                       ; $46da: $ff
    ld b, l                                       ; $46db: $45
    rst $38                                       ; $46dc: $ff
    cpl                                           ; $46dd: $2f
    rst $38                                       ; $46de: $ff
    and [hl]                                      ; $46df: $a6
    rst $38                                       ; $46e0: $ff
    xor e                                         ; $46e1: $ab
    rst $38                                       ; $46e2: $ff
    db $ed                                        ; $46e3: $ed
    rst $38                                       ; $46e4: $ff
    rst $20                                       ; $46e5: $e7
    rst $38                                       ; $46e6: $ff
    push hl                                       ; $46e7: $e5
    rst $38                                       ; $46e8: $ff
    pop hl                                        ; $46e9: $e1
    rst $38                                       ; $46ea: $ff
    pop hl                                        ; $46eb: $e1
    rst $38                                       ; $46ec: $ff
    rst $20                                       ; $46ed: $e7
    rst $38                                       ; $46ee: $ff
    db $d3                                        ; $46ef: $d3
    rst $38                                       ; $46f0: $ff
    pop af                                        ; $46f1: $f1
    rst $38                                       ; $46f2: $ff
    ld bc, $0305                                  ; $46f3: $01 $05 $03
    add l                                         ; $46f6: $85
    nop                                           ; $46f7: $00
    inc bc                                        ; $46f8: $03
    nop                                           ; $46f9: $00
    inc bc                                        ; $46fa: $03
    nop                                           ; $46fb: $00
    inc bc                                        ; $46fc: $03
    inc bc                                        ; $46fd: $03
    ld [bc], a                                    ; $46fe: $02
    ld [bc], a                                    ; $46ff: $02
    stop                                          ; $4700: $10 $00
    adc h                                         ; $4702: $8c
    ld e, a                                       ; $4703: $5f
    ld a, a                                       ; $4704: $7f
    ld e, a                                       ; $4705: $5f
    ld a, a                                       ; $4706: $7f
    ld e, a                                       ; $4707: $5f
    ld a, a                                       ; $4708: $7f
    rst $18                                       ; $4709: $df
    rst $38                                       ; $470a: $ff

jr_0f3_470b:
    sbc [hl]                                      ; $470b: $9e
    rst $38                                       ; $470c: $ff
    ld a, [hl]                                    ; $470d: $7e
    ld a, a                                       ; $470e: $7f
    ld [bc], a                                    ; $470f: $02
    rst $38                                       ; $4710: $ff
    ld [bc], a                                    ; $4711: $02
    or $10                                        ; $4712: $f6 $10
    nop                                           ; $4714: $00
    adc [hl]                                      ; $4715: $8e
    adc [hl]                                      ; $4716: $8e
    cp $82                                        ; $4717: $fe $82
    cp $aa                                        ; $4719: $fe $aa
    cp $96                                        ; $471b: $fe $96
    cp $bd                                        ; $471d: $fe $bd
    rst $38                                       ; $471f: $ff
    add e                                         ; $4720: $83
    rst $38                                       ; $4721: $ff
    db $dd                                        ; $4722: $dd
    rst $38                                       ; $4723: $ff
    ld [bc], a                                    ; $4724: $02
    ld a, $02                                     ; $4725: $3e $02
    ld e, $0e                                     ; $4727: $1e $0e
    nop                                           ; $4729: $00
    rst $38                                       ; $472a: $ff
    dec d                                         ; $472b: $15
    ld [$19f2], sp                                ; $472c: $08 $f2 $19
    call nc, $d901                                ; $472f: $d4 $01 $d9
    ld hl, sp-$27                                 ; $4732: $f8 $d9
    nop                                           ; $4734: $00
    db $dd                                        ; $4735: $dd
    dec b                                         ; $4736: $05
    jp hl                                         ; $4737: $e9


    rst $30                                       ; $4738: $f7
    jp hl                                         ; $4739: $e9


    rst $38                                       ; $473a: $ff
    db $ed                                        ; $473b: $ed
    ld [bc], a                                    ; $473c: $02
    ld sp, hl                                     ; $473d: $f9
    ld sp, hl                                     ; $473e: $f9
    ld sp, hl                                     ; $473f: $f9
    ld bc, $0f02                                  ; $4740: $01 $02 $0f
    sbc [hl]                                      ; $4743: $9e
    rra                                           ; $4744: $1f
    db $10                                        ; $4745: $10
    ccf                                           ; $4746: $3f
    inc h                                         ; $4747: $24
    dec l                                         ; $4748: $2d
    inc sp                                        ; $4749: $33
    ld a, [hl-]                                   ; $474a: $3a
    dec [hl]                                      ; $474b: $35
    ld a, a                                       ; $474c: $7f
    ld b, d                                       ; $474d: $42
    ei                                            ; $474e: $fb
    add [hl]                                      ; $474f: $86
    ld [hl], a                                    ; $4750: $77
    ld l, b                                       ; $4751: $68
    ccf                                           ; $4752: $3f
    jr nz, @+$1e                                  ; $4753: $20 $1c

    inc de                                        ; $4755: $13
    rrca                                          ; $4756: $0f
    ld c, $15                                     ; $4757: $0e $15
    rra                                           ; $4759: $1f
    ld a, [de]                                    ; $475a: $1a
    rra                                           ; $475b: $1f
    dec de                                        ; $475c: $1b
    ld e, $3a                                     ; $475d: $1e $3a
    ccf                                           ; $475f: $3f
    ld a, [hl+]                                   ; $4760: $2a
    ccf                                           ; $4761: $3f
    ld [bc], a                                    ; $4762: $02
    add b                                         ; $4763: $80
    sbc [hl]                                      ; $4764: $9e
    ret nz                                        ; $4765: $c0

    ld b, b                                       ; $4766: $40
    ldh [rNR41], a                                ; $4767: $e0 $20
    ld h, b                                       ; $4769: $60
    and b                                         ; $476a: $a0
    or d                                          ; $476b: $b2
    jp nc, Jump_000_0dff                          ; $476c: $d2 $ff $0d

    ld a, [$d30b]                                 ; $476f: $fa $0b $d3
    inc sp                                        ; $4772: $33
    rst $20                                       ; $4773: $e7
    ld h, l                                       ; $4774: $65
    rst $38                                       ; $4775: $ff
    ld e, $f3                                     ; $4776: $1e $f3
    rst $38                                       ; $4778: $ff
    ret                                           ; $4779: $c9


    rst $38                                       ; $477a: $ff
    ld c, e                                       ; $477b: $4b
    rst $38                                       ; $477c: $ff
    adc [hl]                                      ; $477d: $8e
    rst $38                                       ; $477e: $ff
    adc [hl]                                      ; $477f: $8e
    rst $38                                       ; $4780: $ff
    add a                                         ; $4781: $87
    rst $38                                       ; $4782: $ff
    ld [bc], a                                    ; $4783: $02
    jr jr_0f3_470b                                ; $4784: $18 $85

    ld e, $16                                     ; $4786: $1e $16
    rla                                           ; $4788: $17
    dec e                                         ; $4789: $1d
    ld [de], a                                    ; $478a: $12
    ld [bc], a                                    ; $478b: $02
    ld c, $83                                     ; $478c: $0e $83
    ld [de], a                                    ; $478e: $12
    ld e, $02                                     ; $478f: $1e $02
    ld [bc], a                                    ; $4791: $02
    ld e, $83                                     ; $4792: $1e $83
    ld d, $0e                                     ; $4794: $16 $0e
    ld a, [bc]                                    ; $4796: $0a
    inc bc                                        ; $4797: $03
    ld e, $91                                     ; $4798: $1e $91
    dec e                                         ; $479a: $1d
    rra                                           ; $479b: $1f
    dec c                                         ; $479c: $0d
    rra                                           ; $479d: $1f
    ld [c], a                                     ; $479e: $e2
    cp $de                                        ; $479f: $fe $de
    cp $84                                        ; $47a1: $fe $84
    db $fc                                        ; $47a3: $fc
    call z, $3dfc                                 ; $47a4: $cc $fc $3d
    ccf                                           ; $47a7: $3f
    ld e, l                                       ; $47a8: $5d
    ld a, a                                       ; $47a9: $7f
    ld a, l                                       ; $47aa: $7d
    ld [bc], a                                    ; $47ab: $02
    ld h, a                                       ; $47ac: $67
    cp c                                          ; $47ad: $b9
    ld e, e                                       ; $47ae: $5b
    ei                                            ; $47af: $fb
    xor a                                         ; $47b0: $af
    or [hl]                                       ; $47b1: $b6
    db $db                                        ; $47b2: $db
    halt                                          ; $47b3: $76
    ld a, a                                       ; $47b4: $7f
    ld e, d                                       ; $47b5: $5a
    ld a, a                                       ; $47b6: $7f
    ld h, $3f                                     ; $47b7: $26 $3f
    ld a, [de]                                    ; $47b9: $1a
    dec de                                        ; $47ba: $1b
    dec b                                         ; $47bb: $05
    rlca                                          ; $47bc: $07
    dec b                                         ; $47bd: $05
    rlca                                          ; $47be: $07
    add hl, bc                                    ; $47bf: $09
    rrca                                          ; $47c0: $0f
    dec bc                                        ; $47c1: $0b
    rrca                                          ; $47c2: $0f
    inc de                                        ; $47c3: $13
    rra                                           ; $47c4: $1f
    rla                                           ; $47c5: $17
    rra                                           ; $47c6: $1f
    ld c, b                                       ; $47c7: $48
    db $fc                                        ; $47c8: $fc
    call nz, $487c                                ; $47c9: $c4 $7c $48
    db $fc                                        ; $47cc: $fc
    ld b, h                                       ; $47cd: $44
    db $fc                                        ; $47ce: $fc
    ld a, [hl+]                                   ; $47cf: $2a
    cp $a6                                        ; $47d0: $fe $a6
    cp $ab                                        ; $47d2: $fe $ab
    rst $38                                       ; $47d4: $ff
    db $ed                                        ; $47d5: $ed
    rst $38                                       ; $47d6: $ff
    db $eb                                        ; $47d7: $eb
    rst $38                                       ; $47d8: $ff
    db $e3                                        ; $47d9: $e3
    rst $38                                       ; $47da: $ff
    jp hl                                         ; $47db: $e9


    rst $38                                       ; $47dc: $ff
    pop hl                                        ; $47dd: $e1
    rst $38                                       ; $47de: $ff
    pop hl                                        ; $47df: $e1
    rst $38                                       ; $47e0: $ff
    db $eb                                        ; $47e1: $eb
    rst $38                                       ; $47e2: $ff
    rst $20                                       ; $47e3: $e7
    rst $38                                       ; $47e4: $ff
    pop de                                        ; $47e5: $d1
    rst $38                                       ; $47e6: $ff
    ld [bc], a                                    ; $47e7: $02
    rlca                                          ; $47e8: $07
    ld d, $00                                     ; $47e9: $16 $00
    sub h                                         ; $47eb: $94
    sbc b                                         ; $47ec: $98
    ld hl, sp+$04                                 ; $47ed: $f8 $04
    db $fc                                        ; $47ef: $fc
    inc l                                         ; $47f0: $2c
    db $fc                                        ; $47f1: $fc
    ld d, h                                       ; $47f2: $54
    db $fc                                        ; $47f3: $fc
    sbc a                                         ; $47f4: $9f
    rst $38                                       ; $47f5: $ff
    ld e, a                                       ; $47f6: $5f
    ld a, a                                       ; $47f7: $7f
    ld e, a                                       ; $47f8: $5f
    ld a, a                                       ; $47f9: $7f
    rst $18                                       ; $47fa: $df
    rst $38                                       ; $47fb: $ff
    cp a                                          ; $47fc: $bf
    rst $38                                       ; $47fd: $ff
    ld e, [hl]                                    ; $47fe: $5e
    ld a, a                                       ; $47ff: $7f
    ld [bc], a                                    ; $4800: $02
    rst $38                                       ; $4801: $ff
    ld [bc], a                                    ; $4802: $02
    or $10                                        ; $4803: $f6 $10
    nop                                           ; $4805: $00
    ld [$8680], sp                                ; $4806: $08 $80 $86
    sbc l                                         ; $4809: $9d
    rst $38                                       ; $480a: $ff
    and e                                         ; $480b: $a3
    rst $38                                       ; $480c: $ff
    db $dd                                        ; $480d: $dd
    rst $38                                       ; $480e: $ff
    ld [bc], a                                    ; $480f: $02
    ld a, [hl]                                    ; $4810: $7e
    ld [bc], a                                    ; $4811: $02
    ld e, $0e                                     ; $4812: $1e $0e
    nop                                           ; $4814: $00
    rst $38                                       ; $4815: $ff
    dec d                                         ; $4816: $15
    ld [$19f2], sp                                ; $4817: $08 $f2 $19
    call nc, $d901                                ; $481a: $d4 $01 $d9
    ld hl, sp-$29                                 ; $481d: $f8 $d7
    nop                                           ; $481f: $00
    db $db                                        ; $4820: $db
    dec b                                         ; $4821: $05
    jp hl                                         ; $4822: $e9


    or $e7                                        ; $4823: $f6 $e7
    cp $f0                                        ; $4825: $fe $f0
    ld bc, $f9f7                                  ; $4827: $01 $f7 $f9
    rst $30                                       ; $482a: $f7
    nop                                           ; $482b: $00
    ld [bc], a                                    ; $482c: $02
    rrca                                          ; $482d: $0f
    sbc [hl]                                      ; $482e: $9e
    rra                                           ; $482f: $1f
    db $10                                        ; $4830: $10
    ccf                                           ; $4831: $3f
    inc h                                         ; $4832: $24
    dec l                                         ; $4833: $2d
    inc sp                                        ; $4834: $33
    ld a, [hl-]                                   ; $4835: $3a
    dec [hl]                                      ; $4836: $35
    ld a, a                                       ; $4837: $7f
    ld b, d                                       ; $4838: $42
    ei                                            ; $4839: $fb
    add [hl]                                      ; $483a: $86
    ld [hl], a                                    ; $483b: $77
    ld l, b                                       ; $483c: $68
    ccf                                           ; $483d: $3f
    jr nz, jr_0f3_485c                            ; $483e: $20 $1c

    inc de                                        ; $4840: $13
    rrca                                          ; $4841: $0f
    ld c, $0d                                     ; $4842: $0e $0d
    rrca                                          ; $4844: $0f
    ld a, [de]                                    ; $4845: $1a
    rra                                           ; $4846: $1f
    dec de                                        ; $4847: $1b
    ld e, $2a                                     ; $4848: $1e $2a
    ccf                                           ; $484a: $3f
    ld a, [hl+]                                   ; $484b: $2a
    ccf                                           ; $484c: $3f
    ld [bc], a                                    ; $484d: $02
    ld b, $9e                                     ; $484e: $06 $9e
    rra                                           ; $4850: $1f
    add hl, de                                    ; $4851: $19
    cp l                                          ; $4852: $bd
    xor a                                         ; $4853: $af
    push af                                       ; $4854: $f5
    ld a, a                                       ; $4855: $7f
    xor $59                                       ; $4856: $ee $59
    ld a, a                                       ; $4858: $7f
    or b                                          ; $4859: $b0
    cp l                                          ; $485a: $bd
    ei                                            ; $485b: $fb

jr_0f3_485c:
    rst $30                                       ; $485c: $f7
    ld l, $de                                     ; $485d: $2e $de
    ccf                                           ; $485f: $3f
    push de                                       ; $4860: $d5
    scf                                           ; $4861: $37
    push hl                                       ; $4862: $e5
    ld h, a                                       ; $4863: $67
    cp $1f                                        ; $4864: $fe $1f
    di                                            ; $4866: $f3
    rst $38                                       ; $4867: $ff
    pop bc                                        ; $4868: $c1
    rst $38                                       ; $4869: $ff
    ld c, c                                       ; $486a: $49
    rst $38                                       ; $486b: $ff
    adc a                                         ; $486c: $8f
    rst $38                                       ; $486d: $ff
    ld [bc], a                                    ; $486e: $02
    db $10                                        ; $486f: $10
    ld [bc], a                                    ; $4870: $02
    jr @-$6a                                      ; $4871: $18 $94

    inc d                                         ; $4873: $14
    inc e                                         ; $4874: $1c
    inc d                                         ; $4875: $14
    inc e                                         ; $4876: $1c
    inc d                                         ; $4877: $14
    inc e                                         ; $4878: $1c
    ld d, $1e                                     ; $4879: $16 $1e
    ld d, $1e                                     ; $487b: $16 $1e
    ld a, [bc]                                    ; $487d: $0a
    ld e, $12                                     ; $487e: $1e $12
    ld e, $01                                     ; $4880: $1e $01
    rra                                           ; $4882: $1f
    ld bc, $121f                                  ; $4883: $01 $1f $12
    ld e, $02                                     ; $4886: $1e $02
    cp h                                          ; $4888: $bc
    ld b, $80                                     ; $4889: $06 $80
    ret nz                                        ; $488b: $c0

    ld e, $1f                                     ; $488c: $1e $1f
    ld h, $3f                                     ; $488e: $26 $3f
    ld a, $3f                                     ; $4890: $3e $3f
    ld a, a                                       ; $4892: $7f
    ld h, a                                       ; $4893: $67
    ld l, e                                       ; $4894: $6b
    ld d, a                                       ; $4895: $57
    db $dd                                        ; $4896: $dd
    xor e                                         ; $4897: $ab
    cp a                                          ; $4898: $bf
    db $db                                        ; $4899: $db
    ld [hl], l                                    ; $489a: $75
    ld a, a                                       ; $489b: $7f
    ld e, e                                       ; $489c: $5b
    ld a, a                                       ; $489d: $7f
    dec h                                         ; $489e: $25
    dec a                                         ; $489f: $3d
    ld a, [de]                                    ; $48a0: $1a
    dec de                                        ; $48a1: $1b
    ld [bc], a                                    ; $48a2: $02
    inc bc                                        ; $48a3: $03
    inc b                                         ; $48a4: $04
    rlca                                          ; $48a5: $07
    dec b                                         ; $48a6: $05
    rlca                                          ; $48a7: $07
    add hl, bc                                    ; $48a8: $09
    rrca                                          ; $48a9: $0f
    dec bc                                        ; $48aa: $0b
    rrca                                          ; $48ab: $0f
    ld [hl+], a                                   ; $48ac: $22
    ld a, $20                                     ; $48ad: $3e $20
    ld a, $a2                                     ; $48af: $3e $a2
    cp $e4                                        ; $48b1: $fe $e4
    cp [hl]                                       ; $48b3: $be
    and e                                         ; $48b4: $a3
    rst $38                                       ; $48b5: $ff
    and l                                         ; $48b6: $a5
    rst $38                                       ; $48b7: $ff
    sub e                                         ; $48b8: $93
    rst $38                                       ; $48b9: $ff
    ld d, l                                       ; $48ba: $55
    rst $38                                       ; $48bb: $ff
    ld d, a                                       ; $48bc: $57
    rst $38                                       ; $48bd: $ff
    ld [hl], l                                    ; $48be: $75
    rst $38                                       ; $48bf: $ff
    ld [hl], d                                    ; $48c0: $72
    rst $38                                       ; $48c1: $ff
    ld [hl], h                                    ; $48c2: $74
    rst $38                                       ; $48c3: $ff
    ldh a, [rIE]                                  ; $48c4: $f0 $ff
    ldh a, [rIE]                                  ; $48c6: $f0 $ff
    ldh a, [rIE]                                  ; $48c8: $f0 $ff
    push af                                       ; $48ca: $f5
    rst $38                                       ; $48cb: $ff
    ld c, $04                                     ; $48cc: $0e $04
    sub d                                         ; $48ce: $92
    sbc h                                         ; $48cf: $9c
    db $fc                                        ; $48d0: $fc
    ld b, h                                       ; $48d1: $44
    db $fc                                        ; $48d2: $fc
    call z, $82fc                                 ; $48d3: $cc $fc $82
    cp $96                                        ; $48d6: $fe $96
    cp $aa                                        ; $48d8: $fe $aa
    cp $9d                                        ; $48da: $fe $9d
    rst $38                                       ; $48dc: $ff
    and e                                         ; $48dd: $a3
    rst $38                                       ; $48de: $ff
    db $dd                                        ; $48df: $dd
    rst $38                                       ; $48e0: $ff
    inc b                                         ; $48e1: $04
    rlca                                          ; $48e2: $07
    adc h                                         ; $48e3: $8c
    sbc a                                         ; $48e4: $9f
    rst $38                                       ; $48e5: $ff
    ld e, a                                       ; $48e6: $5f
    ld a, a                                       ; $48e7: $7f
    ld e, a                                       ; $48e8: $5f
    ld a, a                                       ; $48e9: $7f
    rst $18                                       ; $48ea: $df
    rst $38                                       ; $48eb: $ff
    cp a                                          ; $48ec: $bf
    rst $38                                       ; $48ed: $ff
    ld e, [hl]                                    ; $48ee: $5e
    ld a, a                                       ; $48ef: $7f
    ld [bc], a                                    ; $48f0: $02
    rst $38                                       ; $48f1: $ff
    ld [bc], a                                    ; $48f2: $02
    or $1e                                        ; $48f3: $f6 $1e
    nop                                           ; $48f5: $00
    ld [bc], a                                    ; $48f6: $02
    ccf                                           ; $48f7: $3f
    ld [bc], a                                    ; $48f8: $02
    rrca                                          ; $48f9: $0f
    ld a, [bc]                                    ; $48fa: $0a
    nop                                           ; $48fb: $00
    rst $38                                       ; $48fc: $ff
    dec d                                         ; $48fd: $15
    ld [$19f2], sp                                ; $48fe: $08 $f2 $19
    call nc, $d801                                ; $4901: $d4 $01 $d8
    ld sp, hl                                     ; $4904: $f9
    sub $01                                       ; $4905: $d6 $01
    sbc $06                                       ; $4907: $de $06
    add sp, -$0c                                  ; $4909: $e8 $f4
    and $fc                                       ; $490b: $e6 $fc
    and $ff                                       ; $490d: $e6 $ff
    or $f9                                        ; $490f: $f6 $f9
    or $01                                        ; $4911: $f6 $01
    ld [bc], a                                    ; $4913: $02
    rrca                                          ; $4914: $0f
    sbc [hl]                                      ; $4915: $9e
    rra                                           ; $4916: $1f
    ld de, $263f                                  ; $4917: $11 $3f $26
    cpl                                           ; $491a: $2f
    inc sp                                        ; $491b: $33
    dec sp                                        ; $491c: $3b
    dec [hl]                                      ; $491d: $35
    ld a, e                                       ; $491e: $7b
    ld b, a                                       ; $491f: $47
    rst $38                                       ; $4920: $ff
    add h                                         ; $4921: $84
    ld [hl], a                                    ; $4922: $77
    ld l, b                                       ; $4923: $68
    ccf                                           ; $4924: $3f
    jr nz, @+$1b                                  ; $4925: $20 $19

    ld d, $0e                                     ; $4927: $16 $0e
    dec c                                         ; $4929: $0d
    rrca                                          ; $492a: $0f
    ld c, $1b                                     ; $492b: $0e $1b
    rra                                           ; $492d: $1f
    inc [hl]                                      ; $492e: $34
    ccf                                           ; $492f: $3f
    scf                                           ; $4930: $37
    dec a                                         ; $4931: $3d
    dec [hl]                                      ; $4932: $35
    ccf                                           ; $4933: $3f
    ld [bc], a                                    ; $4934: $02
    jr nc, @-$60                                  ; $4935: $30 $9e

    ld hl, sp-$38                                 ; $4937: $f8 $c8
    add sp, $78                                   ; $4939: $e8 $78
    xor b                                         ; $493b: $a8
    ld hl, sp+$74                                 ; $493c: $f8 $74
    call z, $86fe                                 ; $493e: $cc $fe $86
    db $ed                                        ; $4941: $ed
    rst $18                                       ; $4942: $df
    cp l                                          ; $4943: $bd
    ld [hl], a                                    ; $4944: $77
    cp $ff                                        ; $4945: $fe $ff
    or $3f                                        ; $4947: $f6 $3f
    ld l, e                                       ; $4949: $6b
    rst $28                                       ; $494a: $ef
    db $fc                                        ; $494b: $fc
    rra                                           ; $494c: $1f
    rst $30                                       ; $494d: $f7
    rst $38                                       ; $494e: $ff
    ld [$8bff], a                                 ; $494f: $ea $ff $8b
    rst $38                                       ; $4952: $ff
    sbc a                                         ; $4953: $9f
    rst $38                                       ; $4954: $ff
    inc b                                         ; $4955: $04
    db $10                                        ; $4956: $10
    adc h                                         ; $4957: $8c
    inc c                                         ; $4958: $0c
    inc e                                         ; $4959: $1c
    inc d                                         ; $495a: $14
    inc e                                         ; $495b: $1c
    ld [bc], a                                    ; $495c: $02
    ld e, $02                                     ; $495d: $1e $02
    ld e, $01                                     ; $495f: $1e $01
    rra                                           ; $4961: $1f
    ld [de], a                                    ; $4962: $12
    ld e, $02                                     ; $4963: $1e $02
    db $fc                                        ; $4965: $fc
    ld c, $00                                     ; $4966: $0e $00
    add [hl]                                      ; $4968: $86
    ld [bc], a                                    ; $4969: $02
    inc bc                                        ; $496a: $03
    ld [bc], a                                    ; $496b: $02
    inc bc                                        ; $496c: $03
    ld [bc], a                                    ; $496d: $02
    inc bc                                        ; $496e: $03
    ld [bc], a                                    ; $496f: $02
    rlca                                          ; $4970: $07
    adc [hl]                                      ; $4971: $8e
    dec de                                        ; $4972: $1b
    rra                                           ; $4973: $1f
    ld sp, $7d3f                                  ; $4974: $31 $3f $7d
    ld c, a                                       ; $4977: $4f
    call $fdb7                                    ; $4978: $cd $b7 $fd
    sub a                                         ; $497b: $97
    xor l                                         ; $497c: $ad
    rst $38                                       ; $497d: $ff
    ld d, e                                       ; $497e: $53
    ld e, a                                       ; $497f: $5f
    ld [bc], a                                    ; $4980: $02
    ld c, $02                                     ; $4981: $0e $02
    nop                                           ; $4983: $00
    inc b                                         ; $4984: $04
    ld bc, $02a2                                  ; $4985: $01 $a2 $02
    inc bc                                        ; $4988: $03
    nop                                           ; $4989: $00
    rlca                                          ; $498a: $07
    nop                                           ; $498b: $00
    rlca                                          ; $498c: $07
    xor b                                         ; $498d: $a8
    rst $38                                       ; $498e: $ff
    xor b                                         ; $498f: $a8
    rst $38                                       ; $4990: $ff
    cp b                                          ; $4991: $b8
    rst $28                                       ; $4992: $ef
    xor c                                         ; $4993: $a9
    rst $38                                       ; $4994: $ff
    ld l, b                                       ; $4995: $68
    rst $38                                       ; $4996: $ff
    db $e4                                        ; $4997: $e4
    rst $38                                       ; $4998: $ff
    push de                                       ; $4999: $d5
    rst $38                                       ; $499a: $ff
    push de                                       ; $499b: $d5
    rst $38                                       ; $499c: $ff
    call c, Call_0f3_5cff                         ; $499d: $dc $ff $5c
    ld a, a                                       ; $49a0: $7f
    ld e, l                                       ; $49a1: $5d
    ld a, a                                       ; $49a2: $7f
    cp h                                          ; $49a3: $bc
    rst $38                                       ; $49a4: $ff
    cp h                                          ; $49a5: $bc
    rst $38                                       ; $49a6: $ff
    inc a                                         ; $49a7: $3c
    rst $38                                       ; $49a8: $ff
    ld b, $06                                     ; $49a9: $06 $06
    add c                                         ; $49ab: $81
    ld [bc], a                                    ; $49ac: $02
    inc bc                                        ; $49ad: $03
    ld b, $81                                     ; $49ae: $06 $81
    ld [bc], a                                    ; $49b0: $02
    inc bc                                        ; $49b1: $03
    ld b, $81                                     ; $49b2: $06 $81
    ld [bc], a                                    ; $49b4: $02
    inc bc                                        ; $49b5: $03
    ld b, $81                                     ; $49b6: $06 $81
    ld [bc], a                                    ; $49b8: $02
    inc bc                                        ; $49b9: $03
    ld b, $9c                                     ; $49ba: $06 $9c
    inc bc                                        ; $49bc: $03
    rlca                                          ; $49bd: $07
    ld bc, $0107                                  ; $49be: $01 $07 $01
    rlca                                          ; $49c1: $07
    ld bc, $0107                                  ; $49c2: $01 $07 $01
    rlca                                          ; $49c5: $07
    rrca                                          ; $49c6: $0f
    rra                                           ; $49c7: $1f
    rrca                                          ; $49c8: $0f
    rra                                           ; $49c9: $1f
    ld e, a                                       ; $49ca: $5f
    ld a, a                                       ; $49cb: $7f
    sbc a                                         ; $49cc: $9f
    rst $38                                       ; $49cd: $ff
    ld e, a                                       ; $49ce: $5f
    ld a, a                                       ; $49cf: $7f
    ld e, a                                       ; $49d0: $5f
    ld a, a                                       ; $49d1: $7f
    rst $18                                       ; $49d2: $df
    rst $38                                       ; $49d3: $ff
    cp a                                          ; $49d4: $bf
    rst $38                                       ; $49d5: $ff
    ld e, [hl]                                    ; $49d6: $5e
    ld a, a                                       ; $49d7: $7f
    ld [bc], a                                    ; $49d8: $02
    rst $38                                       ; $49d9: $ff
    ld [bc], a                                    ; $49da: $02
    or $0a                                        ; $49db: $f6 $0a
    nop                                           ; $49dd: $00
    sub h                                         ; $49de: $94
    adc h                                         ; $49df: $8c
    db $fc                                        ; $49e0: $fc
    sbc h                                         ; $49e1: $9c
    db $fc                                        ; $49e2: $fc
    ld c, h                                       ; $49e3: $4c
    db $fc                                        ; $49e4: $fc
    call nz, $8afc                                ; $49e5: $c4 $fc $8a
    cp $96                                        ; $49e8: $fe $96
    cp $aa                                        ; $49ea: $fe $aa
    cp $9d                                        ; $49ec: $fe $9d
    rst $38                                       ; $49ee: $ff
    and e                                         ; $49ef: $a3
    rst $38                                       ; $49f0: $ff
    db $dd                                        ; $49f1: $dd
    rst $38                                       ; $49f2: $ff
    ld [bc], a                                    ; $49f3: $02
    ld a, [hl]                                    ; $49f4: $7e
    ld [bc], a                                    ; $49f5: $02
    ld e, $08                                     ; $49f6: $1e $08
    nop                                           ; $49f8: $00
    rst $38                                       ; $49f9: $ff
    rla                                           ; $49fa: $17
    add hl, bc                                    ; $49fb: $09
    ld a, [c]                                     ; $49fc: $f2
    add hl, de                                    ; $49fd: $19
    call nc, $d801                                ; $49fe: $d4 $01 $d8
    ld a, [$02d8]                                 ; $4a01: $fa $d8 $02
    rst $10                                       ; $4a04: $d7
    ld a, [bc]                                    ; $4a05: $0a
    reti                                          ; $4a06: $d9


    dec bc                                        ; $4a07: $0b
    add sp, -$0a                                  ; $4a08: $e8 $f6
    add sp, -$02                                  ; $4a0a: $e8 $fe
    rst $20                                       ; $4a0c: $e7
    inc bc                                        ; $4a0d: $03
    rst $30                                       ; $4a0e: $f7
    ld sp, hl                                     ; $4a0f: $f9
    rst $30                                       ; $4a10: $f7
    ld bc, $0f02                                  ; $4a11: $01 $02 $0f
    sbc [hl]                                      ; $4a14: $9e
    rra                                           ; $4a15: $1f
    db $10                                        ; $4a16: $10
    ccf                                           ; $4a17: $3f
    inc h                                         ; $4a18: $24
    dec l                                         ; $4a19: $2d
    inc sp                                        ; $4a1a: $33
    ld a, [hl-]                                   ; $4a1b: $3a
    dec [hl]                                      ; $4a1c: $35
    ld a, e                                       ; $4a1d: $7b
    ld b, [hl]                                    ; $4a1e: $46
    rst $38                                       ; $4a1f: $ff
    add h                                         ; $4a20: $84
    ld d, a                                       ; $4a21: $57
    ld l, b                                       ; $4a22: $68
    ccf                                           ; $4a23: $3f
    jr nz, @+$1b                                  ; $4a24: $20 $19

    ld d, $0e                                     ; $4a26: $16 $0e
    dec c                                         ; $4a28: $0d
    rra                                           ; $4a29: $1f
    ld e, $2b                                     ; $4a2a: $1e $2b
    ccf                                           ; $4a2c: $3f
    ld [hl-], a                                   ; $4a2d: $32
    ccf                                           ; $4a2e: $3f
    ld d, l                                       ; $4a2f: $55
    ld a, [hl]                                    ; $4a30: $7e
    ld d, h                                       ; $4a31: $54
    ld a, a                                       ; $4a32: $7f
    ld [bc], a                                    ; $4a33: $02
    add b                                         ; $4a34: $80
    sbc [hl]                                      ; $4a35: $9e
    ret nz                                        ; $4a36: $c0

    ld b, b                                       ; $4a37: $40
    ldh [rNR41], a                                ; $4a38: $e0 $20
    ldh [rNR41], a                                ; $4a3a: $e0 $20
    or b                                          ; $4a3c: $b0
    ret nc                                        ; $4a3d: $d0

    ld hl, sp+$08                                 ; $4a3e: $f8 $08
    ld hl, sp+$08                                 ; $4a40: $f8 $08
    ret nc                                        ; $4a42: $d0

    jr nc, jr_0f3_4aa5                            ; $4a43: $30 $60

    ldh [$fd], a                                  ; $4a45: $e0 $fd
    dec e                                         ; $4a47: $1d
    rst $30                                       ; $4a48: $f7
    rst $38                                       ; $4a49: $ff
    ret nz                                        ; $4a4a: $c0

    rst $38                                       ; $4a4b: $ff
    add d                                         ; $4a4c: $82
    rst $38                                       ; $4a4d: $ff
    adc d                                         ; $4a4e: $8a
    rst $38                                       ; $4a4f: $ff
    sbc a                                         ; $4a50: $9f
    rst $38                                       ; $4a51: $ff
    adc e                                         ; $4a52: $8b
    ei                                            ; $4a53: $fb
    ld [bc], a                                    ; $4a54: $02
    inc d                                         ; $4a55: $14
    adc d                                         ; $4a56: $8a
    ccf                                           ; $4a57: $3f
    dec hl                                        ; $4a58: $2b
    scf                                           ; $4a59: $37
    ld a, $7d                                     ; $4a5a: $3e $7d
    ld e, a                                       ; $4a5c: $5f
    ld l, d                                       ; $4a5d: $6a
    ld d, [hl]                                    ; $4a5e: $56
    ld a, $22                                     ; $4a5f: $3e $22
    ld [bc], a                                    ; $4a61: $02
    inc a                                         ; $4a62: $3c
    sub d                                         ; $4a63: $92
    ld a, h                                       ; $4a64: $7c
    ld l, h                                       ; $4a65: $6c
    or h                                          ; $4a66: $b4
    db $ec                                        ; $4a67: $ec
    cp h                                          ; $4a68: $bc
    db $fc                                        ; $4a69: $fc
    ld [hl], h                                    ; $4a6a: $74
    db $fc                                        ; $4a6b: $fc
    ld l, b                                       ; $4a6c: $68
    ld hl, sp-$68                                 ; $4a6d: $f8 $98
    ld hl, sp+$70                                 ; $4a6f: $f8 $70
    ldh a, [$30]                                  ; $4a71: $f0 $30
    ldh a, [rNR41]                                ; $4a73: $f0 $20
    ldh [rSC], a                                  ; $4a75: $e0 $02
    ld bc, $001a                                  ; $4a77: $01 $1a $00
    ld [bc], a                                    ; $4a7a: $02
    add b                                         ; $4a7b: $80
    ld [bc], a                                    ; $4a7c: $02
    nop                                           ; $4a7d: $00
    add h                                         ; $4a7e: $84
    add hl, bc                                    ; $4a7f: $09
    rrca                                          ; $4a80: $0f
    add hl, bc                                    ; $4a81: $09
    rrca                                          ; $4a82: $0f
    ld [bc], a                                    ; $4a83: $02
    rra                                           ; $4a84: $1f
    adc [hl]                                      ; $4a85: $8e
    scf                                           ; $4a86: $37
    ccf                                           ; $4a87: $3f
    ld h, d                                       ; $4a88: $62
    ld a, a                                       ; $4a89: $7f
    ld e, l                                       ; $4a8a: $5d
    ld l, a                                       ; $4a8b: $6f
    db $ed                                        ; $4a8c: $ed
    sub a                                         ; $4a8d: $97
    db $fd                                        ; $4a8e: $fd
    sub a                                         ; $4a8f: $97
    cp l                                          ; $4a90: $bd
    rst $18                                       ; $4a91: $df
    ld h, e                                       ; $4a92: $63
    ld a, a                                       ; $4a93: $7f
    ld [bc], a                                    ; $4a94: $02
    dec e                                         ; $4a95: $1d
    xor d                                         ; $4a96: $aa
    ld [bc], a                                    ; $4a97: $02
    inc bc                                        ; $4a98: $03
    ld [bc], a                                    ; $4a99: $02
    inc bc                                        ; $4a9a: $03
    inc b                                         ; $4a9b: $04
    rlca                                          ; $4a9c: $07
    dec b                                         ; $4a9d: $05
    rlca                                          ; $4a9e: $07
    dec b                                         ; $4a9f: $05
    rlca                                          ; $4aa0: $07
    ld d, b                                       ; $4aa1: $50
    rst $38                                       ; $4aa2: $ff
    ld d, c                                       ; $4aa3: $51
    rst $38                                       ; $4aa4: $ff

jr_0f3_4aa5:
    ld e, b                                       ; $4aa5: $58
    rst $28                                       ; $4aa6: $ef
    add hl, hl                                    ; $4aa7: $29
    rst $38                                       ; $4aa8: $ff
    xor b                                         ; $4aa9: $a8
    rst $38                                       ; $4aaa: $ff
    xor c                                         ; $4aab: $a9
    rst $38                                       ; $4aac: $ff
    xor d                                         ; $4aad: $aa
    rst $38                                       ; $4aae: $ff
    xor c                                         ; $4aaf: $a9
    rst $38                                       ; $4ab0: $ff
    ld a, b                                       ; $4ab1: $78
    rst $38                                       ; $4ab2: $ff
    ld a, c                                       ; $4ab3: $79
    rst $38                                       ; $4ab4: $ff
    ld a, b                                       ; $4ab5: $78
    rst $38                                       ; $4ab6: $ff
    ld a, c                                       ; $4ab7: $79
    rst $38                                       ; $4ab8: $ff
    ld hl, sp-$01                                 ; $4ab9: $f8 $ff
    ld hl, sp-$01                                 ; $4abb: $f8 $ff
    ld sp, hl                                     ; $4abd: $f9
    rst $38                                       ; $4abe: $ff
    push af                                       ; $4abf: $f5
    rst $38                                       ; $4ac0: $ff
    ld [bc], a                                    ; $4ac1: $02
    ld bc, $101e                                  ; $4ac2: $01 $1e $10
    ld [bc], a                                    ; $4ac5: $02
    nop                                           ; $4ac6: $00
    adc l                                         ; $4ac7: $8d
    ld l, a                                       ; $4ac8: $6f
    ld a, a                                       ; $4ac9: $7f
    sbc a                                         ; $4aca: $9f
    rst $38                                       ; $4acb: $ff
    sbc a                                         ; $4acc: $9f
    rst $38                                       ; $4acd: $ff
    ld e, a                                       ; $4ace: $5f
    ld a, a                                       ; $4acf: $7f
    rst $18                                       ; $4ad0: $df
    rst $38                                       ; $4ad1: $ff
    cp a                                          ; $4ad2: $bf
    rst $38                                       ; $4ad3: $ff
    sbc [hl]                                      ; $4ad4: $9e
    inc bc                                        ; $4ad5: $03
    rst $38                                       ; $4ad6: $ff
    ld [bc], a                                    ; $4ad7: $02
    or $0c                                        ; $4ad8: $f6 $0c
    nop                                           ; $4ada: $00
    ld [bc], a                                    ; $4adb: $02
    inc b                                         ; $4adc: $04
    sub b                                         ; $4add: $90
    and $fe                                       ; $4ade: $e6 $fe
    jp nz, $c6fe                                  ; $4ae0: $c2 $fe $c6

    cp $ca                                        ; $4ae3: $fe $ca
    cp $d6                                        ; $4ae5: $fe $d6
    cp $5d                                        ; $4ae7: $fe $5d
    rst $38                                       ; $4ae9: $ff
    ld b, e                                       ; $4aea: $43
    rst $38                                       ; $4aeb: $ff
    db $fd                                        ; $4aec: $fd
    rst $38                                       ; $4aed: $ff
    ld [bc], a                                    ; $4aee: $02
    ld a, $02                                     ; $4aef: $3e $02
    ld e, $0a                                     ; $4af1: $1e $0a
    nop                                           ; $4af3: $00
    rst $38                                       ; $4af4: $ff
    dec d                                         ; $4af5: $15
    ld [$19f2], sp                                ; $4af6: $08 $f2 $19
    call nc, $d801                                ; $4af9: $d4 $01 $d8
    ld a, [$02d8]                                 ; $4afc: $fa $d8 $02
    pop hl                                        ; $4aff: $e1
    ld a, [bc]                                    ; $4b00: $0a
    db $dd                                        ; $4b01: $dd
    ld de, $f7e8                                  ; $4b02: $11 $e8 $f7
    add sp, -$01                                  ; $4b05: $e8 $ff
    rst $30                                       ; $4b07: $f7
    ld bc, $f9f8                                  ; $4b08: $01 $f8 $f9
    ld [bc], a                                    ; $4b0b: $02
    rlca                                          ; $4b0c: $07
    sbc [hl]                                      ; $4b0d: $9e
    rrca                                          ; $4b0e: $0f
    ld [$121f], sp                                ; $4b0f: $08 $1f $12
    ld e, $19                                     ; $4b12: $1e $19
    dec [hl]                                      ; $4b14: $35
    ld a, [hl+]                                   ; $4b15: $2a
    ld a, l                                       ; $4b16: $7d
    ld b, e                                       ; $4b17: $43
    ccf                                           ; $4b18: $3f
    ld [hl+], a                                   ; $4b19: $22
    dec de                                        ; $4b1a: $1b
    inc d                                         ; $4b1b: $14
    rra                                           ; $4b1c: $1f
    db $10                                        ; $4b1d: $10
    dec c                                         ; $4b1e: $0d
    ld a, [bc]                                    ; $4b1f: $0a
    ld b, $07                                     ; $4b20: $06 $07
    rra                                           ; $4b22: $1f
    ld e, $2b                                     ; $4b23: $1e $2b
    ccf                                           ; $4b25: $3f
    ld d, d                                       ; $4b26: $52
    ld a, a                                       ; $4b27: $7f
    ld [hl], e                                    ; $4b28: $73
    ld a, [hl]                                    ; $4b29: $7e
    or d                                          ; $4b2a: $b2
    rst $38                                       ; $4b2b: $ff
    ld [bc], a                                    ; $4b2c: $02
    ret nz                                        ; $4b2d: $c0

    sbc [hl]                                      ; $4b2e: $9e
    ldh [rNR41], a                                ; $4b2f: $e0 $20
    ldh a, [rNR10]                                ; $4b31: $f0 $10
    ldh a, [$90]                                  ; $4b33: $f0 $90
    ld e, b                                       ; $4b35: $58
    add sp, -$04                                  ; $4b36: $e8 $fc
    inc b                                         ; $4b38: $04
    db $fc                                        ; $4b39: $fc
    inc b                                         ; $4b3a: $04
    add sp, $58                                   ; $4b3b: $e8 $58
    ldh a, [$b0]                                  ; $4b3d: $f0 $b0
    db $ec                                        ; $4b3f: $ec
    inc e                                         ; $4b40: $1c
    ld [hl], e                                    ; $4b41: $73
    rst $38                                       ; $4b42: $ff
    ld b, h                                       ; $4b43: $44
    rst $38                                       ; $4b44: $ff
    add b                                         ; $4b45: $80
    rst $38                                       ; $4b46: $ff
    add d                                         ; $4b47: $82
    rst $38                                       ; $4b48: $ff
    adc a                                         ; $4b49: $8f
    rst $38                                       ; $4b4a: $ff
    adc a                                         ; $4b4b: $8f
    rst $38                                       ; $4b4c: $ff
    ld [bc], a                                    ; $4b4d: $02
    inc bc                                        ; $4b4e: $03
    adc h                                         ; $4b4f: $8c
    inc c                                         ; $4b50: $0c
    rrca                                          ; $4b51: $0f
    push af                                       ; $4b52: $f5
    rst $38                                       ; $4b53: $ff
    ld l, e                                       ; $4b54: $6b
    cp $4b                                        ; $4b55: $fe $4b
    rst $38                                       ; $4b57: $ff
    add e                                         ; $4b58: $83
    rst $38                                       ; $4b59: $ff
    ret                                           ; $4b5a: $c9


    rst $38                                       ; $4b5b: $ff
    ld [bc], a                                    ; $4b5c: $02
    ccf                                           ; $4b5d: $3f
    stop                                          ; $4b5e: $10 $00
    ld [bc], a                                    ; $4b60: $02
    inc c                                         ; $4b61: $0c
    adc [hl]                                      ; $4b62: $8e
    ld e, $12                                     ; $4b63: $1e $12
    ld h, $3e                                     ; $4b65: $26 $3e
    scf                                           ; $4b67: $37
    dec l                                         ; $4b68: $2d
    ld a, d                                       ; $4b69: $7a
    ld c, d                                       ; $4b6a: $4a
    ld [hl], h                                    ; $4b6b: $74
    ld l, h                                       ; $4b6c: $6c
    ld l, $52                                     ; $4b6d: $2e $52
    inc a                                         ; $4b6f: $3c
    ld a, h                                       ; $4b70: $7c
    ld [bc], a                                    ; $4b71: $02
    ld h, b                                       ; $4b72: $60
    add d                                         ; $4b73: $82
    jr nz, jr_0f3_4bd6                            ; $4b74: $20 $60

    ld [bc], a                                    ; $4b76: $02
    ld b, b                                       ; $4b77: $40
    ld a, [bc]                                    ; $4b78: $0a
    nop                                           ; $4b79: $00
    add a                                         ; $4b7a: $87
    ld h, $3f                                     ; $4b7b: $26 $3f
    ld a, [hl]                                    ; $4b7d: $7e
    ld a, a                                       ; $4b7e: $7f
    ld e, d                                       ; $4b7f: $5a
    ld a, a                                       ; $4b80: $7f
    cp [hl]                                       ; $4b81: $be
    ld [bc], a                                    ; $4b82: $02
    rst $20                                       ; $4b83: $e7
    or a                                          ; $4b84: $b7
    db $db                                        ; $4b85: $db
    ei                                            ; $4b86: $fb
    xor a                                         ; $4b87: $af
    or a                                          ; $4b88: $b7
    db $db                                        ; $4b89: $db
    ld [hl], l                                    ; $4b8a: $75
    ld a, a                                       ; $4b8b: $7f
    ld e, d                                       ; $4b8c: $5a
    ld a, a                                       ; $4b8d: $7f
    ld h, $3f                                     ; $4b8e: $26 $3f
    ld a, [de]                                    ; $4b90: $1a
    dec de                                        ; $4b91: $1b
    inc b                                         ; $4b92: $04
    rlca                                          ; $4b93: $07
    dec b                                         ; $4b94: $05
    rlca                                          ; $4b95: $07
    dec b                                         ; $4b96: $05
    rlca                                          ; $4b97: $07
    add hl, bc                                    ; $4b98: $09
    rrca                                          ; $4b99: $0f
    dec bc                                        ; $4b9a: $0b
    rrca                                          ; $4b9b: $0f
    ld d, e                                       ; $4b9c: $53
    rst $38                                       ; $4b9d: $ff
    ld d, c                                       ; $4b9e: $51
    rst $38                                       ; $4b9f: $ff
    ld [hl], e                                    ; $4ba0: $73
    rst $18                                       ; $4ba1: $df
    ld d, c                                       ; $4ba2: $51
    rst $38                                       ; $4ba3: $ff
    ld d, e                                       ; $4ba4: $53
    rst $38                                       ; $4ba5: $ff
    ld d, c                                       ; $4ba6: $51
    rst $38                                       ; $4ba7: $ff
    ld d, e                                       ; $4ba8: $53
    rst $38                                       ; $4ba9: $ff
    ld d, c                                       ; $4baa: $51
    rst $38                                       ; $4bab: $ff
    ld [hl], c                                    ; $4bac: $71
    rst $38                                       ; $4bad: $ff
    pop af                                        ; $4bae: $f1
    rst $38                                       ; $4baf: $ff
    di                                            ; $4bb0: $f3
    rst $38                                       ; $4bb1: $ff
    pop af                                        ; $4bb2: $f1
    rst $38                                       ; $4bb3: $ff
    pop af                                        ; $4bb4: $f1
    rst $38                                       ; $4bb5: $ff
    pop af                                        ; $4bb6: $f1
    rst $38                                       ; $4bb7: $ff
    ld sp, hl                                     ; $4bb8: $f9
    rst $38                                       ; $4bb9: $ff
    db $fd                                        ; $4bba: $fd
    rst $38                                       ; $4bbb: $ff
    ld [bc], a                                    ; $4bbc: $02
    ld [bc], a                                    ; $4bbd: $02
    sub b                                         ; $4bbe: $90
    ld [c], a                                     ; $4bbf: $e2
    cp $e6                                        ; $4bc0: $fe $e6
    cp $e2                                        ; $4bc2: $fe $e2
    cp $e6                                        ; $4bc4: $fe $e6
    cp $6b                                        ; $4bc6: $fe $6b
    rst $38                                       ; $4bc8: $ff
    ld h, a                                       ; $4bc9: $67
    rst $38                                       ; $4bca: $ff
    ld h, c                                       ; $4bcb: $61
    rst $38                                       ; $4bcc: $ff
    db $fd                                        ; $4bcd: $fd
    rst $38                                       ; $4bce: $ff
    ld [bc], a                                    ; $4bcf: $02
    ld a, $02                                     ; $4bd0: $3e $02
    ld e, $0a                                     ; $4bd2: $1e $0a
    nop                                           ; $4bd4: $00
    adc l                                         ; $4bd5: $8d

jr_0f3_4bd6:
    cpl                                           ; $4bd6: $2f
    ccf                                           ; $4bd7: $3f
    ld c, a                                       ; $4bd8: $4f
    ld a, a                                       ; $4bd9: $7f
    adc a                                         ; $4bda: $8f
    rst $38                                       ; $4bdb: $ff
    ld e, a                                       ; $4bdc: $5f
    ld a, a                                       ; $4bdd: $7f
    ld e, a                                       ; $4bde: $5f
    ld a, a                                       ; $4bdf: $7f
    sbc a                                         ; $4be0: $9f
    rst $38                                       ; $4be1: $ff
    cp [hl]                                       ; $4be2: $be
    inc bc                                        ; $4be3: $03
    rst $38                                       ; $4be4: $ff
    ld [bc], a                                    ; $4be5: $02
    or $0e                                        ; $4be6: $f6 $0e
    nop                                           ; $4be8: $00
    rst $38                                       ; $4be9: $ff
    rla                                           ; $4bea: $17
    add hl, bc                                    ; $4beb: $09
    ld a, [c]                                     ; $4bec: $f2
    add hl, de                                    ; $4bed: $19
    call nc, $d801                                ; $4bee: $d4 $01 $d8
    ld a, [$02d8]                                 ; $4bf1: $fa $d8 $02
    db $e3                                        ; $4bf4: $e3
    ld a, [bc]                                    ; $4bf5: $0a
    ldh [rNR12], a                                ; $4bf6: $e0 $12
    add sp, -$09                                  ; $4bf8: $e8 $f7
    add sp, -$01                                  ; $4bfa: $e8 $ff
    add sp, $02                                   ; $4bfc: $e8 $02
    ld hl, sp-$07                                 ; $4bfe: $f8 $f9
    ld hl, sp+$01                                 ; $4c00: $f8 $01
    ld [bc], a                                    ; $4c02: $02
    rlca                                          ; $4c03: $07
    sbc [hl]                                      ; $4c04: $9e
    rrca                                          ; $4c05: $0f
    ld [$121f], sp                                ; $4c06: $08 $1f $12
    ld e, $19                                     ; $4c09: $1e $19
    dec [hl]                                      ; $4c0b: $35
    ld a, [hl+]                                   ; $4c0c: $2a
    ld a, l                                       ; $4c0d: $7d
    ld b, e                                       ; $4c0e: $43
    ccf                                           ; $4c0f: $3f
    ld [hl+], a                                   ; $4c10: $22
    dec de                                        ; $4c11: $1b
    inc d                                         ; $4c12: $14
    rra                                           ; $4c13: $1f
    db $10                                        ; $4c14: $10
    dec c                                         ; $4c15: $0d
    ld a, [bc]                                    ; $4c16: $0a
    ld b, $07                                     ; $4c17: $06 $07
    rra                                           ; $4c19: $1f
    ld e, $2b                                     ; $4c1a: $1e $2b
    ccf                                           ; $4c1c: $3f
    ld d, d                                       ; $4c1d: $52
    ld a, a                                       ; $4c1e: $7f
    ld [hl], e                                    ; $4c1f: $73
    ld a, [hl]                                    ; $4c20: $7e
    or d                                          ; $4c21: $b2
    rst $38                                       ; $4c22: $ff
    ld [bc], a                                    ; $4c23: $02
    ret nz                                        ; $4c24: $c0

    sbc [hl]                                      ; $4c25: $9e
    ldh [rNR41], a                                ; $4c26: $e0 $20
    ldh a, [rNR10]                                ; $4c28: $f0 $10
    ldh a, [$90]                                  ; $4c2a: $f0 $90
    ld c, b                                       ; $4c2c: $48
    ld hl, sp-$04                                 ; $4c2d: $f8 $fc
    inc b                                         ; $4c2f: $04
    db $fc                                        ; $4c30: $fc
    inc b                                         ; $4c31: $04
    ld l, b                                       ; $4c32: $68
    ret c                                         ; $4c33: $d8

    ldh a, [$b0]                                  ; $4c34: $f0 $b0
    db $fc                                        ; $4c36: $fc
    inc e                                         ; $4c37: $1c
    ld [hl], d                                    ; $4c38: $72
    cp $47                                        ; $4c39: $fe $47
    rst $38                                       ; $4c3b: $ff
    add b                                         ; $4c3c: $80
    rst $38                                       ; $4c3d: $ff
    add b                                         ; $4c3e: $80
    rst $38                                       ; $4c3f: $ff
    adc [hl]                                      ; $4c40: $8e
    rst $38                                       ; $4c41: $ff
    adc a                                         ; $4c42: $8f
    rst $38                                       ; $4c43: $ff
    ld [bc], a                                    ; $4c44: $02
    inc bc                                        ; $4c45: $03
    adc h                                         ; $4c46: $8c
    cp $ff                                        ; $4c47: $fe $ff
    dec [hl]                                      ; $4c49: $35
    rst $38                                       ; $4c4a: $ff
    dec h                                         ; $4c4b: $25
    rst $38                                       ; $4c4c: $ff
    dec b                                         ; $4c4d: $05
    rst $38                                       ; $4c4e: $ff
    push hl                                       ; $4c4f: $e5
    rst $38                                       ; $4c50: $ff
    jr jr_0f3_4c72                                ; $4c51: $18 $1f

    ld [bc], a                                    ; $4c53: $02
    rlca                                          ; $4c54: $07
    stop                                          ; $4c55: $10 $00
    ld [bc], a                                    ; $4c57: $02
    ld b, $8c                                     ; $4c58: $06 $8c
    rrca                                          ; $4c5a: $0f
    add hl, bc                                    ; $4c5b: $09
    ld a, [de]                                    ; $4c5c: $1a
    ld d, $f7                                     ; $4c5d: $16 $f7
    db $ed                                        ; $4c5f: $ed
    ld a, [hl]                                    ; $4c60: $7e
    adc $ee                                       ; $4c61: $ce $ee
    ld [hl-], a                                   ; $4c63: $32
    ld a, h                                       ; $4c64: $7c
    db $fc                                        ; $4c65: $fc
    ld [bc], a                                    ; $4c66: $02
    ret nz                                        ; $4c67: $c0

    add h                                         ; $4c68: $84
    ld b, b                                       ; $4c69: $40
    ret nz                                        ; $4c6a: $c0

    ld b, b                                       ; $4c6b: $40
    ret nz                                        ; $4c6c: $c0

    ld [bc], a                                    ; $4c6d: $02
    add b                                         ; $4c6e: $80
    ld a, [bc]                                    ; $4c6f: $0a
    nop                                           ; $4c70: $00
    ret nz                                        ; $4c71: $c0

jr_0f3_4c72:
    ld h, $3f                                     ; $4c72: $26 $3f
    ld a, [hl]                                    ; $4c74: $7e
    ld a, a                                       ; $4c75: $7f
    ld e, d                                       ; $4c76: $5a
    ld a, a                                       ; $4c77: $7f
    cp [hl]                                       ; $4c78: $be
    rst $20                                       ; $4c79: $e7
    and $db                                       ; $4c7a: $e6 $db
    ei                                            ; $4c7c: $fb
    xor a                                         ; $4c7d: $af
    or a                                          ; $4c7e: $b7
    db $db                                        ; $4c7f: $db
    ld [hl], l                                    ; $4c80: $75
    ld a, a                                       ; $4c81: $7f
    ld e, d                                       ; $4c82: $5a
    ld a, a                                       ; $4c83: $7f
    ld h, $3f                                     ; $4c84: $26 $3f
    ld a, [de]                                    ; $4c86: $1a
    dec de                                        ; $4c87: $1b
    inc b                                         ; $4c88: $04
    rlca                                          ; $4c89: $07
    dec b                                         ; $4c8a: $05
    rlca                                          ; $4c8b: $07
    add hl, bc                                    ; $4c8c: $09
    rrca                                          ; $4c8d: $0f
    add hl, bc                                    ; $4c8e: $09
    rrca                                          ; $4c8f: $0f
    dec bc                                        ; $4c90: $0b
    rrca                                          ; $4c91: $0f
    ld d, c                                       ; $4c92: $51
    rst $38                                       ; $4c93: $ff
    ld d, e                                       ; $4c94: $53
    rst $38                                       ; $4c95: $ff
    ld [hl], e                                    ; $4c96: $73
    rst $18                                       ; $4c97: $df
    ld d, l                                       ; $4c98: $55
    rst $38                                       ; $4c99: $ff
    ld d, e                                       ; $4c9a: $53
    rst $38                                       ; $4c9b: $ff
    ld d, l                                       ; $4c9c: $55
    rst $38                                       ; $4c9d: $ff
    ld d, e                                       ; $4c9e: $53
    rst $38                                       ; $4c9f: $ff
    ld d, c                                       ; $4ca0: $51
    rst $38                                       ; $4ca1: $ff
    pop af                                        ; $4ca2: $f1
    rst $38                                       ; $4ca3: $ff
    pop af                                        ; $4ca4: $f1
    rst $38                                       ; $4ca5: $ff
    di                                            ; $4ca6: $f3
    rst $38                                       ; $4ca7: $ff
    pop af                                        ; $4ca8: $f1
    rst $38                                       ; $4ca9: $ff
    ld sp, hl                                     ; $4caa: $f9
    rst $38                                       ; $4cab: $ff
    ld sp, hl                                     ; $4cac: $f9
    rst $38                                       ; $4cad: $ff
    db $fd                                        ; $4cae: $fd
    rst $38                                       ; $4caf: $ff
    ld hl, sp-$01                                 ; $4cb0: $f8 $ff
    ld [bc], a                                    ; $4cb2: $02
    ld bc, $001c                                  ; $4cb3: $01 $1c $00
    ld [bc], a                                    ; $4cb6: $02
    inc b                                         ; $4cb7: $04
    adc l                                         ; $4cb8: $8d
    ld l, a                                       ; $4cb9: $6f
    ld a, a                                       ; $4cba: $7f
    ld c, a                                       ; $4cbb: $4f
    ld a, a                                       ; $4cbc: $7f
    adc a                                         ; $4cbd: $8f
    rst $38                                       ; $4cbe: $ff
    ld e, a                                       ; $4cbf: $5f
    ld a, a                                       ; $4cc0: $7f
    rst $18                                       ; $4cc1: $df
    rst $38                                       ; $4cc2: $ff
    cp a                                          ; $4cc3: $bf
    rst $38                                       ; $4cc4: $ff
    sbc [hl]                                      ; $4cc5: $9e
    inc bc                                        ; $4cc6: $03
    rst $38                                       ; $4cc7: $ff
    ld [bc], a                                    ; $4cc8: $02
    or $0e                                        ; $4cc9: $f6 $0e
    nop                                           ; $4ccb: $00
    sub b                                         ; $4ccc: $90
    and $fe                                       ; $4ccd: $e6 $fe
    ld [c], a                                     ; $4ccf: $e2
    cp $e6                                        ; $4cd0: $fe $e6
    cp $f2                                        ; $4cd2: $fe $f2
    cp $75                                        ; $4cd4: $fe $75
    rst $38                                       ; $4cd6: $ff
    ld h, e                                       ; $4cd7: $63
    rst $38                                       ; $4cd8: $ff
    ld h, c                                       ; $4cd9: $61
    rst $38                                       ; $4cda: $ff
    db $fd                                        ; $4cdb: $fd
    rst $38                                       ; $4cdc: $ff
    ld [bc], a                                    ; $4cdd: $02
    ld a, $02                                     ; $4cde: $3e $02
    ld e, $0c                                     ; $4ce0: $1e $0c
    nop                                           ; $4ce2: $00
    rst $38                                       ; $4ce3: $ff
    rla                                           ; $4ce4: $17
    add hl, bc                                    ; $4ce5: $09
    ld a, [c]                                     ; $4ce6: $f2
    add hl, de                                    ; $4ce7: $19
    call nc, $d801                                ; $4ce8: $d4 $01 $d8
    ld a, [$02d8]                                 ; $4ceb: $fa $d8 $02
    rst $20                                       ; $4cee: $e7
    ld a, [bc]                                    ; $4cef: $0a
    and $0d                                       ; $4cf0: $e6 $0d
    add sp, -$09                                  ; $4cf2: $e8 $f7
    add sp, -$01                                  ; $4cf4: $e8 $ff
    add sp, $02                                   ; $4cf6: $e8 $02
    ld hl, sp-$07                                 ; $4cf8: $f8 $f9
    ld hl, sp+$01                                 ; $4cfa: $f8 $01
    ld [bc], a                                    ; $4cfc: $02
    rrca                                          ; $4cfd: $0f
    sbc [hl]                                      ; $4cfe: $9e
    rra                                           ; $4cff: $1f
    db $10                                        ; $4d00: $10
    ccf                                           ; $4d01: $3f
    inc h                                         ; $4d02: $24
    dec a                                         ; $4d03: $3d
    inc sp                                        ; $4d04: $33
    ld l, d                                       ; $4d05: $6a
    ld d, l                                       ; $4d06: $55
    ei                                            ; $4d07: $fb
    add [hl]                                      ; $4d08: $86
    ld a, l                                       ; $4d09: $7d
    ld b, [hl]                                    ; $4d0a: $46
    scf                                           ; $4d0b: $37
    jr z, jr_0f3_4d4d                             ; $4d0c: $28 $3f

    jr nz, jr_0f3_4d29                            ; $4d0e: $20 $19

    ld d, $0e                                     ; $4d10: $16 $0e
    dec c                                         ; $4d12: $0d
    ccf                                           ; $4d13: $3f
    inc a                                         ; $4d14: $3c
    ld d, a                                       ; $4d15: $57
    ld a, a                                       ; $4d16: $7f
    ld l, c                                       ; $4d17: $69
    ld a, a                                       ; $4d18: $7f
    xor [hl]                                      ; $4d19: $ae
    ei                                            ; $4d1a: $fb

jr_0f3_4d1b:
    xor d                                         ; $4d1b: $aa
    rst $38                                       ; $4d1c: $ff
    ld [bc], a                                    ; $4d1d: $02
    add b                                         ; $4d1e: $80
    sbc [hl]                                      ; $4d1f: $9e
    ret nz                                        ; $4d20: $c0

    ld b, b                                       ; $4d21: $40
    ldh [rNR41], a                                ; $4d22: $e0 $20
    ld h, b                                       ; $4d24: $60
    and b                                         ; $4d25: $a0
    sub b                                         ; $4d26: $90
    ldh a, [$f8]                                  ; $4d27: $f0 $f8

jr_0f3_4d29:
    ld [$08f8], sp                                ; $4d29: $08 $f8 $08
    ret nc                                        ; $4d2c: $d0

    jr nc, jr_0f3_4d8f                            ; $4d2d: $30 $60

    ldh [$d0], a                                  ; $4d2f: $e0 $d0
    jr nc, jr_0f3_4d1b                            ; $4d31: $30 $e8

    ld hl, sp-$3c                                 ; $4d33: $f8 $c4
    db $fc                                        ; $4d35: $fc
    inc b                                         ; $4d36: $04
    db $fc                                        ; $4d37: $fc
    ld d, $fe                                     ; $4d38: $16 $fe
    add hl, sp                                    ; $4d3a: $39
    rst $38                                       ; $4d3b: $ff
    db $10                                        ; $4d3c: $10
    rst $38                                       ; $4d3d: $ff
    ld [bc], a                                    ; $4d3e: $02
    adc a                                         ; $4d3f: $8f
    adc h                                         ; $4d40: $8c
    rst $30                                       ; $4d41: $f7
    db $fc                                        ; $4d42: $fc
    ld l, [hl]                                    ; $4d43: $6e
    ei                                            ; $4d44: $fb
    inc l                                         ; $4d45: $2c
    rst $38                                       ; $4d46: $ff
    cpl                                           ; $4d47: $2f
    db $fd                                        ; $4d48: $fd
    daa                                           ; $4d49: $27
    rst $38                                       ; $4d4a: $ff
    ld [hl], c                                    ; $4d4b: $71
    rst $38                                       ; $4d4c: $ff

jr_0f3_4d4d:
    ld [bc], a                                    ; $4d4d: $02
    cp $10                                        ; $4d4e: $fe $10
    nop                                           ; $4d50: $00
    ld [bc], a                                    ; $4d51: $02
    ld b, $81                                     ; $4d52: $06 $81
    dec b                                         ; $4d54: $05
    ld [bc], a                                    ; $4d55: $02
    inc bc                                        ; $4d56: $03
    add e                                         ; $4d57: $83
    dec b                                         ; $4d58: $05
    rlca                                          ; $4d59: $07
    inc bc                                        ; $4d5a: $03
    ld [bc], a                                    ; $4d5b: $02
    inc b                                         ; $4d5c: $04
    ld d, $00                                     ; $4d5d: $16 $00
    jp z, Jump_000_3f35                           ; $4d5f: $ca $35 $3f

    ld a, l                                       ; $4d62: $7d
    ld a, a                                       ; $4d63: $7f
    ld e, a                                       ; $4d64: $5f
    ld a, a                                       ; $4d65: $7f
    ld a, l                                       ; $4d66: $7d
    ld [hl], e                                    ; $4d67: $73
    cp e                                          ; $4d68: $bb
    push hl                                       ; $4d69: $e5
    rst $10                                       ; $4d6a: $d7
    db $eb                                        ; $4d6b: $eb
    ld d, [hl]                                    ; $4d6c: $56
    ld l, l                                       ; $4d6d: $6d
    ld a, d                                       ; $4d6e: $7a
    ld a, a                                       ; $4d6f: $7f
    ld a, [hl+]                                   ; $4d70: $2a
    ccf                                           ; $4d71: $3f
    ld d, $1f                                     ; $4d72: $16 $1f
    ld c, $0f                                     ; $4d74: $0e $0f
    dec b                                         ; $4d76: $05
    rlca                                          ; $4d77: $07
    dec b                                         ; $4d78: $05
    rlca                                          ; $4d79: $07
    add hl, bc                                    ; $4d7a: $09
    rrca                                          ; $4d7b: $0f
    dec bc                                        ; $4d7c: $0b
    rrca                                          ; $4d7d: $0f
    inc de                                        ; $4d7e: $13
    rra                                           ; $4d7f: $1f
    ld b, e                                       ; $4d80: $43
    rst $38                                       ; $4d81: $ff
    ld b, a                                       ; $4d82: $47
    rst $38                                       ; $4d83: $ff
    rst $00                                       ; $4d84: $c7
    ld a, a                                       ; $4d85: $7f
    ld c, d                                       ; $4d86: $4a
    cp $46                                        ; $4d87: $fe $46
    cp $2a                                        ; $4d89: $fe $2a
    cp $a6                                        ; $4d8b: $fe $a6
    cp $a2                                        ; $4d8d: $fe $a2

jr_0f3_4d8f:
    cp $f1                                        ; $4d8f: $fe $f1
    rst $38                                       ; $4d91: $ff
    pop af                                        ; $4d92: $f1
    rst $38                                       ; $4d93: $ff
    di                                            ; $4d94: $f3
    rst $38                                       ; $4d95: $ff
    di                                            ; $4d96: $f3
    rst $38                                       ; $4d97: $ff
    pop af                                        ; $4d98: $f1
    rst $38                                       ; $4d99: $ff
    pop af                                        ; $4d9a: $f1
    rst $38                                       ; $4d9b: $ff
    di                                            ; $4d9c: $f3
    rst $38                                       ; $4d9d: $ff
    ei                                            ; $4d9e: $fb
    rst $38                                       ; $4d9f: $ff
    ld bc, $0507                                  ; $4da0: $01 $07 $05
    rlca                                          ; $4da3: $07
    ld b, $07                                     ; $4da4: $06 $07
    ld b, $07                                     ; $4da6: $06 $07
    ld [bc], a                                    ; $4da8: $02
    inc bc                                        ; $4da9: $03
    ld [bc], a                                    ; $4daa: $02
    ld bc, $0014                                  ; $4dab: $01 $14 $00
    adc [hl]                                      ; $4dae: $8e
    ld c, a                                       ; $4daf: $4f
    ld a, a                                       ; $4db0: $7f
    sbc a                                         ; $4db1: $9f
    rst $38                                       ; $4db2: $ff
    ld e, a                                       ; $4db3: $5f
    ld a, a                                       ; $4db4: $7f
    ld e, a                                       ; $4db5: $5f

jr_0f3_4db6:
    ld a, a                                       ; $4db6: $7f
    rst $18                                       ; $4db7: $df
    rst $38                                       ; $4db8: $ff
    cp a                                          ; $4db9: $bf
    rst $38                                       ; $4dba: $ff
    ld e, [hl]                                    ; $4dbb: $5e
    ld a, a                                       ; $4dbc: $7f
    ld [bc], a                                    ; $4dbd: $02
    rst $38                                       ; $4dbe: $ff
    ld [bc], a                                    ; $4dbf: $02
    or $0e                                        ; $4dc0: $f6 $0e
    nop                                           ; $4dc2: $00
    adc [hl]                                      ; $4dc3: $8e
    add $fe                                       ; $4dc4: $c6 $fe
    and $fe                                       ; $4dc6: $e6 $fe
    ld [c], a                                     ; $4dc8: $e2
    cp $e6                                        ; $4dc9: $fe $e6
    cp $ed                                        ; $4dcb: $fe $ed
    rst $38                                       ; $4dcd: $ff
    ld d, a                                       ; $4dce: $57
    rst $38                                       ; $4dcf: $ff
    ld h, c                                       ; $4dd0: $61
    rst $38                                       ; $4dd1: $ff
    ld [bc], a                                    ; $4dd2: $02
    cp $02                                        ; $4dd3: $fe $02
    ld a, $02                                     ; $4dd5: $3e $02
    ld e, $0c                                     ; $4dd7: $1e $0c
    nop                                           ; $4dd9: $00
    rst $38                                       ; $4dda: $ff
    rla                                           ; $4ddb: $17
    add hl, bc                                    ; $4ddc: $09
    ld a, [c]                                     ; $4ddd: $f2
    add hl, de                                    ; $4dde: $19
    call nc, $d401                                ; $4ddf: $d4 $01 $d4
    ei                                            ; $4de2: $fb
    call nc, $e800                                ; $4de3: $d4 $00 $e8
    ld a, [c]                                     ; $4de6: $f2
    db $e4                                        ; $4de7: $e4
    ld a, [$02e4]                                 ; $4de8: $fa $e4 $02
    add sp, $07                                   ; $4deb: $e8 $07
    db $f4                                        ; $4ded: $f4
    rst $30                                       ; $4dee: $f7
    db $f4                                        ; $4def: $f4
    rst $38                                       ; $4df0: $ff
    db $f4                                        ; $4df1: $f4
    ld bc, $0f02                                  ; $4df2: $01 $02 $0f

Jump_0f3_4df5:
    sbc [hl]                                      ; $4df5: $9e
    rra                                           ; $4df6: $1f
    db $10                                        ; $4df7: $10
    ccf                                           ; $4df8: $3f
    ld [hl+], a                                   ; $4df9: $22
    dec hl                                        ; $4dfa: $2b
    inc a                                         ; $4dfb: $3c
    ld a, l                                       ; $4dfc: $7d
    ld b, d                                       ; $4dfd: $42
    rst $38                                       ; $4dfe: $ff
    add c                                         ; $4dff: $81
    ld a, h                                       ; $4e00: $7c
    ld b, e                                       ; $4e01: $43
    ld l, l                                       ; $4e02: $6d
    ld [hl], d                                    ; $4e03: $72
    rla                                           ; $4e04: $17
    jr jr_0f3_4e43                                ; $4e05: $18 $3c

    inc hl                                        ; $4e07: $23
    ld e, $1d                                     ; $4e08: $1e $1d
    rra                                           ; $4e0a: $1f
    add hl, de                                    ; $4e0b: $19
    dec hl                                        ; $4e0c: $2b
    ccf                                           ; $4e0d: $3f
    ld d, l                                       ; $4e0e: $55
    ld a, a                                       ; $4e0f: $7f
    ld l, d                                       ; $4e10: $6a
    ld [hl], a                                    ; $4e11: $77
    and d                                         ; $4e12: $a2
    rst $38                                       ; $4e13: $ff
    ld [bc], a                                    ; $4e14: $02
    db $10                                        ; $4e15: $10
    sub d                                         ; $4e16: $92
    jr @+$0a                                      ; $4e17: $18 $08

    inc e                                         ; $4e19: $1c
    inc b                                         ; $4e1a: $04
    inc d                                         ; $4e1b: $14
    inc e                                         ; $4e1c: $1c
    ld c, $1a                                     ; $4e1d: $0e $1a
    rra                                           ; $4e1f: $1f
    ld bc, $011f                                  ; $4e20: $01 $1f $01
    ld a, [de]                                    ; $4e23: $1a
    ld b, $1c                                     ; $4e24: $06 $1c
    inc b                                         ; $4e26: $04
    ld a, [de]                                    ; $4e27: $1a
    ld b, $02                                     ; $4e28: $06 $02
    inc e                                         ; $4e2a: $1c
    ld [bc], a                                    ; $4e2b: $02
    jr jr_0f3_4db6                                ; $4e2c: $18 $88

    inc b                                         ; $4e2e: $04
    inc e                                         ; $4e2f: $1c
    ld [bc], a                                    ; $4e30: $02
    ld e, $02                                     ; $4e31: $1e $02
    ld e, $0a                                     ; $4e33: $1e $0a
    ld e, $02                                     ; $4e35: $1e $02
    ld a, a                                       ; $4e37: $7f
    adc h                                         ; $4e38: $8c
    cp $a7                                        ; $4e39: $fe $a7
    ld d, [hl]                                    ; $4e3b: $56
    ld a, e                                       ; $4e3c: $7b
    cp $b3                                        ; $4e3d: $fe $b3
    halt                                          ; $4e3f: $76
    ld a, e                                       ; $4e40: $7b
    ld l, [hl]                                    ; $4e41: $6e
    ld e, a                                       ; $4e42: $5f

jr_0f3_4e43:
    add hl, sp                                    ; $4e43: $39
    ccf                                           ; $4e44: $3f
    ld [bc], a                                    ; $4e45: $02
    rlca                                          ; $4e46: $07
    add e                                         ; $4e47: $83
    ld [bc], a                                    ; $4e48: $02
    inc bc                                        ; $4e49: $03
    ld [bc], a                                    ; $4e4a: $02
    dec bc                                        ; $4e4b: $0b
    inc bc                                        ; $4e4c: $03
    sbc e                                         ; $4e4d: $9b
    dec b                                         ; $4e4e: $05
    rlca                                          ; $4e4f: $07
    ld h, d                                       ; $4e50: $62
    ld a, a                                       ; $4e51: $7f
    and d                                         ; $4e52: $a2
    rst $38                                       ; $4e53: $ff
    xor d                                         ; $4e54: $aa
    rst $30                                       ; $4e55: $f7
    and d                                         ; $4e56: $a2
    rst $38                                       ; $4e57: $ff
    and d                                         ; $4e58: $a2
    rst $38                                       ; $4e59: $ff
    and d                                         ; $4e5a: $a2
    rst $38                                       ; $4e5b: $ff
    xor d                                         ; $4e5c: $aa
    rst $38                                       ; $4e5d: $ff
    cp [hl]                                       ; $4e5e: $be
    rst $38                                       ; $4e5f: $ff
    cp [hl]                                       ; $4e60: $be
    rst $38                                       ; $4e61: $ff
    cp $ff                                        ; $4e62: $fe $ff
    cp [hl]                                       ; $4e64: $be
    rst $38                                       ; $4e65: $ff
    ld a, [hl]                                    ; $4e66: $7e
    rst $38                                       ; $4e67: $ff
    ld a, a                                       ; $4e68: $7f
    rlca                                          ; $4e69: $07
    rst $38                                       ; $4e6a: $ff
    and b                                         ; $4e6b: $a0
    ld c, b                                       ; $4e6c: $48
    ld hl, sp+$68                                 ; $4e6d: $f8 $68
    ld hl, sp+$64                                 ; $4e6f: $f8 $64
    db $fc                                        ; $4e71: $fc
    inc l                                         ; $4e72: $2c
    db $fc                                        ; $4e73: $fc
    ccf                                           ; $4e74: $3f
    rst $38                                       ; $4e75: $ff
    ld [hl], l                                    ; $4e76: $75
    rst $38                                       ; $4e77: $ff
    xor e                                         ; $4e78: $ab
    cp $6b                                        ; $4e79: $fe $6b
    cp $3b                                        ; $4e7b: $fe $3b
    cp $7a                                        ; $4e7d: $fe $7a
    rst $38                                       ; $4e7f: $ff
    cp e                                          ; $4e80: $bb
    rst $38                                       ; $4e81: $ff
    ld d, h                                       ; $4e82: $54
    rst $30                                       ; $4e83: $f7
    inc sp                                        ; $4e84: $33
    di                                            ; $4e85: $f3
    ld d, b                                       ; $4e86: $50
    ldh a, [$50]                                  ; $4e87: $f0 $50
    ldh a, [$08]                                  ; $4e89: $f0 $08
    ld hl, sp+$02                                 ; $4e8b: $f8 $02
    db $10                                        ; $4e8d: $10
    adc h                                         ; $4e8e: $8c
    ld a, [de]                                    ; $4e8f: $1a
    ld a, [bc]                                    ; $4e90: $0a
    rra                                           ; $4e91: $1f
    dec e                                         ; $4e92: $1d
    ld c, $16                                     ; $4e93: $0e $16
    inc de                                        ; $4e95: $13
    dec c                                         ; $4e96: $0d
    ld d, $0e                                     ; $4e97: $16 $0e
    ld e, $1a                                     ; $4e99: $1e $1a
    ld [bc], a                                    ; $4e9b: $02
    inc d                                         ; $4e9c: $14
    inc c                                         ; $4e9d: $0c
    nop                                           ; $4e9e: $00
    inc b                                         ; $4e9f: $04
    add b                                         ; $4ea0: $80
    add l                                         ; $4ea1: $85
    ld e, $1f                                     ; $4ea2: $1e $1f
    dec e                                         ; $4ea4: $1d
    rra                                           ; $4ea5: $1f
    ld e, $03                                     ; $4ea6: $1e $03
    rra                                           ; $4ea8: $1f
    add d                                         ; $4ea9: $82
    ld e, [hl]                                    ; $4eaa: $5e
    ld a, a                                       ; $4eab: $7f
    ld [bc], a                                    ; $4eac: $02
    ccf                                           ; $4ead: $3f
    ld [bc], a                                    ; $4eae: $02
    ld a, a                                       ; $4eaf: $7f
    ld [bc], a                                    ; $4eb0: $02
    rst $38                                       ; $4eb1: $ff
    ld [bc], a                                    ; $4eb2: $02
    ld a, a                                       ; $4eb3: $7f
    ld [bc], a                                    ; $4eb4: $02
    ld c, $0c                                     ; $4eb5: $0e $0c
    nop                                           ; $4eb7: $00
    sub d                                         ; $4eb8: $92

jr_0f3_4eb9:
    pop hl                                        ; $4eb9: $e1
    rst $38                                       ; $4eba: $ff
    push de                                       ; $4ebb: $d5
    rst $38                                       ; $4ebc: $ff
    ld a, [c]                                     ; $4ebd: $f2
    rst $38                                       ; $4ebe: $ff
    ld h, b                                       ; $4ebf: $60
    rst $38                                       ; $4ec0: $ff
    pop af                                        ; $4ec1: $f1
    rst $38                                       ; $4ec2: $ff
    ld [hl-], a                                   ; $4ec3: $32
    rst $38                                       ; $4ec4: $ff
    ld [hl], c                                    ; $4ec5: $71
    rst $38                                       ; $4ec6: $ff
    sub [hl]                                      ; $4ec7: $96
    sbc a                                         ; $4ec8: $9f
    db $10                                        ; $4ec9: $10
    rra                                           ; $4eca: $1f
    inc b                                         ; $4ecb: $04
    rrca                                          ; $4ecc: $0f
    ld [bc], a                                    ; $4ecd: $02
    rlca                                          ; $4ece: $07
    stop                                          ; $4ecf: $10 $00
    ld [bc], a                                    ; $4ed1: $02
    ld [bc], a                                    ; $4ed2: $02
    inc b                                         ; $4ed3: $04
    inc bc                                        ; $4ed4: $03
    add c                                         ; $4ed5: $81
    ld bc, $0303                                  ; $4ed6: $01 $03 $03
    ld [bc], a                                    ; $4ed9: $02
    nop                                           ; $4eda: $00
    ld [bc], a                                    ; $4edb: $02
    ld [bc], a                                    ; $4edc: $02
    ld a, [bc]                                    ; $4edd: $0a
    nop                                           ; $4ede: $00
    rst $38                                       ; $4edf: $ff
    dec d                                         ; $4ee0: $15
    ld [$19f2], sp                                ; $4ee1: $08 $f2 $19
    call nc, $d701                                ; $4ee4: $d4 $01 $d7
    ei                                            ; $4ee7: $fb
    rst $10                                       ; $4ee8: $d7
    nop                                           ; $4ee9: $00
    rst $20                                       ; $4eea: $e7
    push af                                       ; $4eeb: $f5
    rst $20                                       ; $4eec: $e7
    db $fd                                        ; $4eed: $fd
    rst $20                                       ; $4eee: $e7
    dec b                                         ; $4eef: $05
    db $ec                                        ; $4ef0: $ec
    ld b, $f7                                     ; $4ef1: $06 $f7
    ld hl, sp-$09                                 ; $4ef3: $f8 $f7
    nop                                           ; $4ef5: $00
    ld [bc], a                                    ; $4ef6: $02
    rrca                                          ; $4ef7: $0f
    sbc [hl]                                      ; $4ef8: $9e
    rra                                           ; $4ef9: $1f
    db $10                                        ; $4efa: $10
    ccf                                           ; $4efb: $3f
    ld hl, $3629                                  ; $4efc: $21 $29 $36
    ld a, [hl]                                    ; $4eff: $7e
    ld b, c                                       ; $4f00: $41
    rst $38                                       ; $4f01: $ff
    add b                                         ; $4f02: $80
    ld e, a                                       ; $4f03: $5f
    ld h, b                                       ; $4f04: $60
    ld a, d                                       ; $4f05: $7a
    ld e, l                                       ; $4f06: $5d
    daa                                           ; $4f07: $27
    inc a                                         ; $4f08: $3c
    ld a, $21                                     ; $4f09: $3e $21
    rra                                           ; $4f0b: $1f
    ld e, $1f                                     ; $4f0c: $1e $1f
    add hl, de                                    ; $4f0e: $19
    cpl                                           ; $4f0f: $2f
    ccf                                           ; $4f10: $3f
    ld e, c                                       ; $4f11: $59
    ld [hl], a                                    ; $4f12: $77
    and d                                         ; $4f13: $a2
    rst $38                                       ; $4f14: $ff
    and d                                         ; $4f15: $a2
    rst $38                                       ; $4f16: $ff
    ld [bc], a                                    ; $4f17: $02
    db $10                                        ; $4f18: $10
    sub h                                         ; $4f19: $94
    jr @+$0a                                      ; $4f1a: $18 $08

    inc e                                         ; $4f1c: $1c
    inc b                                         ; $4f1d: $04
    inc d                                         ; $4f1e: $14
    inc c                                         ; $4f1f: $0c
    ld a, [de]                                    ; $4f20: $1a
    ld c, $1f                                     ; $4f21: $0e $1f
    ld de, $110f                                  ; $4f23: $11 $0f $11
    ld a, [de]                                    ; $4f26: $1a
    ld b, $0c                                     ; $4f27: $06 $0c
    inc d                                         ; $4f29: $14
    inc c                                         ; $4f2a: $0c
    inc d                                         ; $4f2b: $14
    inc c                                         ; $4f2c: $0c
    inc e                                         ; $4f2d: $1c
    ld [bc], a                                    ; $4f2e: $02
    jr jr_0f3_4eb9                                ; $4f2f: $18 $88

    inc b                                         ; $4f31: $04
    inc e                                         ; $4f32: $1c
    ld [bc], a                                    ; $4f33: $02
    ld e, $0a                                     ; $4f34: $1e $0a
    ld e, $1a                                     ; $4f36: $1e $1a
    ld e, $02                                     ; $4f38: $1e $02
    inc bc                                        ; $4f3a: $03
    sub d                                         ; $4f3b: $92
    dec b                                         ; $4f3c: $05
    rlca                                          ; $4f3d: $07
    dec b                                         ; $4f3e: $05
    rlca                                          ; $4f3f: $07
    dec b                                         ; $4f40: $05
    rlca                                          ; $4f41: $07
    ld e, l                                       ; $4f42: $5d
    ld e, a                                       ; $4f43: $5f
    db $fd                                        ; $4f44: $fd
    and a                                         ; $4f45: $a7
    ld d, a                                       ; $4f46: $57
    ld a, a                                       ; $4f47: $7f
    ei                                            ; $4f48: $fb
    or a                                          ; $4f49: $b7
    ld [hl], a                                    ; $4f4a: $77
    ld e, a                                       ; $4f4b: $5f
    cpl                                           ; $4f4c: $2f
    ccf                                           ; $4f4d: $3f
    ld [bc], a                                    ; $4f4e: $02
    rra                                           ; $4f4f: $1f
    ld [bc], a                                    ; $4f50: $02
    rrca                                          ; $4f51: $0f
    ld [bc], a                                    ; $4f52: $02
    rra                                           ; $4f53: $1f
    ld b, $3f                                     ; $4f54: $06 $3f
    and [hl]                                      ; $4f56: $a6
    dec bc                                        ; $4f57: $0b
    rst $38                                       ; $4f58: $ff
    ld c, c                                       ; $4f59: $49
    cp a                                          ; $4f5a: $bf

jr_0f3_4f5b:
    dec bc                                        ; $4f5b: $0b
    rst $38                                       ; $4f5c: $ff
    add hl, bc                                    ; $4f5d: $09
    rst $38                                       ; $4f5e: $ff
    ld c, e                                       ; $4f5f: $4b
    rst $38                                       ; $4f60: $ff
    jp hl                                         ; $4f61: $e9


    rst $38                                       ; $4f62: $ff
    ld a, [$f9ff]                                 ; $4f63: $fa $ff $f9
    rst $38                                       ; $4f66: $ff
    db $fd                                        ; $4f67: $fd
    rst $38                                       ; $4f68: $ff
    db $fc                                        ; $4f69: $fc
    rst $38                                       ; $4f6a: $ff
    db $fc                                        ; $4f6b: $fc
    rst $38                                       ; $4f6c: $ff
    db $fd                                        ; $4f6d: $fd
    rst $38                                       ; $4f6e: $ff
    cp $ff                                        ; $4f6f: $fe $ff
    cp [hl]                                       ; $4f71: $be
    rst $38                                       ; $4f72: $ff
    ld e, [hl]                                    ; $4f73: $5e
    rst $38                                       ; $4f74: $ff
    cp a                                          ; $4f75: $bf
    rst $38                                       ; $4f76: $ff
    ld b, b                                       ; $4f77: $40
    ret nz                                        ; $4f78: $c0

    jr nz, jr_0f3_4f5b                            ; $4f79: $20 $e0

    ld h, b                                       ; $4f7b: $60
    ldh [rSC], a                                  ; $4f7c: $e0 $02
    ld hl, sp-$68                                 ; $4f7e: $f8 $98
    ld e, a                                       ; $4f80: $5f
    rst $30                                       ; $4f81: $f7
    cp a                                          ; $4f82: $bf
    db $ec                                        ; $4f83: $ec
    cp a                                          ; $4f84: $bf
    rst $20                                       ; $4f85: $e7
    or e                                          ; $4f86: $b3
    db $ed                                        ; $4f87: $ed
    and [hl]                                      ; $4f88: $a6
    ld a, [$fcdc]                                 ; $4f89: $fa $dc $fc
    db $e4                                        ; $4f8c: $e4
    db $fc                                        ; $4f8d: $fc
    ld a, b                                       ; $4f8e: $78
    ld hl, sp-$60                                 ; $4f8f: $f8 $a0
    ldh [rNR10], a                                ; $4f91: $e0 $10
    ldh a, [rBCPS]                                ; $4f93: $f0 $68
    ld hl, sp+$1c                                 ; $4f95: $f8 $1c
    db $fc                                        ; $4f97: $fc
    ld [bc], a                                    ; $4f98: $02
    ld bc, $0014                                  ; $4f99: $01 $14 $00
    sub b                                         ; $4f9c: $90

jr_0f3_4f9d:
    ld d, h                                       ; $4f9d: $54
    db $fc                                        ; $4f9e: $fc
    inc d                                         ; $4f9f: $14
    db $fc                                        ; $4fa0: $fc
    jr z, @-$06                                   ; $4fa1: $28 $f8

    ld [$30f8], sp                                ; $4fa3: $08 $f8 $30
    ldh a, [$fa]                                  ; $4fa6: $f0 $fa
    rst $38                                       ; $4fa8: $ff
    ld a, l                                       ; $4fa9: $7d
    ld a, a                                       ; $4faa: $7f
    ld a, h                                       ; $4fab: $7c
    ld a, a                                       ; $4fac: $7f
    ld [bc], a                                    ; $4fad: $02
    ccf                                           ; $4fae: $3f
    inc b                                         ; $4faf: $04
    cp $02                                        ; $4fb0: $fe $02
    ld e, $12                                     ; $4fb2: $1e $12
    nop                                           ; $4fb4: $00
    add e                                         ; $4fb5: $83
    ld hl, sp-$04                                 ; $4fb6: $f8 $fc
    ld hl, sp+$05                                 ; $4fb8: $f8 $05
    db $fc                                        ; $4fba: $fc
    ld [bc], a                                    ; $4fbb: $02
    ld a, h                                       ; $4fbc: $7c
    ld [bc], a                                    ; $4fbd: $02
    rra                                           ; $4fbe: $1f
    ld [bc], a                                    ; $4fbf: $02
    ld e, $12                                     ; $4fc0: $1e $12
    nop                                           ; $4fc2: $00
    rst $38                                       ; $4fc3: $ff
    dec d                                         ; $4fc4: $15
    ld [$19f2], sp                                ; $4fc5: $08 $f2 $19
    call nc, $d901                                ; $4fc8: $d4 $01 $d9
    ld a, [$ffd9]                                 ; $4fcb: $fa $d9 $ff
    jp hl                                         ; $4fce: $e9


    db $f4                                        ; $4fcf: $f4
    jp hl                                         ; $4fd0: $e9


    db $fc                                        ; $4fd1: $fc
    jp hl                                         ; $4fd2: $e9


    inc b                                         ; $4fd3: $04
    rst $28                                       ; $4fd4: $ef
    dec b                                         ; $4fd5: $05
    ld sp, hl                                     ; $4fd6: $f9
    ld sp, hl                                     ; $4fd7: $f9
    ld sp, hl                                     ; $4fd8: $f9
    ld bc, $0f02                                  ; $4fd9: $01 $02 $0f
    sbc [hl]                                      ; $4fdc: $9e
    rra                                           ; $4fdd: $1f
    db $10                                        ; $4fde: $10
    ccf                                           ; $4fdf: $3f
    ld [hl+], a                                   ; $4fe0: $22
    dec hl                                        ; $4fe1: $2b
    inc a                                         ; $4fe2: $3c
    ld a, l                                       ; $4fe3: $7d
    ld b, d                                       ; $4fe4: $42
    rst $38                                       ; $4fe5: $ff
    add c                                         ; $4fe6: $81
    ld a, [hl]                                    ; $4fe7: $7e
    ld b, c                                       ; $4fe8: $41
    ld [hl], l                                    ; $4fe9: $75
    ld a, d                                       ; $4fea: $7a
    cpl                                           ; $4feb: $2f
    jr c, jr_0f3_502a                             ; $4fec: $38 $3c

    inc hl                                        ; $4fee: $23
    ld e, $1d                                     ; $4fef: $1e $1d
    rra                                           ; $4ff1: $1f
    add hl, de                                    ; $4ff2: $19
    cpl                                           ; $4ff3: $2f
    ccf                                           ; $4ff4: $3f
    ld d, c                                       ; $4ff5: $51
    ld a, a                                       ; $4ff6: $7f
    ld e, c                                       ; $4ff7: $59
    ld [hl], a                                    ; $4ff8: $77
    ld d, c                                       ; $4ff9: $51
    ld a, a                                       ; $4ffa: $7f
    ld [bc], a                                    ; $4ffb: $02
    db $10                                        ; $4ffc: $10
    sub d                                         ; $4ffd: $92
    jr @+$0a                                      ; $4ffe: $18 $08

    inc e                                         ; $5000: $1c
    inc b                                         ; $5001: $04
    inc d                                         ; $5002: $14
    inc e                                         ; $5003: $1c
    ld c, $1a                                     ; $5004: $0e $1a
    rra                                           ; $5006: $1f
    ld bc, $011f                                  ; $5007: $01 $1f $01
    ld a, [de]                                    ; $500a: $1a
    ld b, $1c                                     ; $500b: $06 $1c
    inc b                                         ; $500d: $04
    inc e                                         ; $500e: $1c
    inc b                                         ; $500f: $04
    ld [bc], a                                    ; $5010: $02
    inc e                                         ; $5011: $1c
    ld [bc], a                                    ; $5012: $02
    jr jr_0f3_4f9d                                ; $5013: $18 $88

    ld b, $1e                                     ; $5015: $06 $1e
    ld bc, $051f                                  ; $5017: $01 $1f $05
    rra                                           ; $501a: $1f
    dec c                                         ; $501b: $0d
    rra                                           ; $501c: $1f
    ld b, $01                                     ; $501d: $06 $01
    inc b                                         ; $501f: $04
    inc bc                                        ; $5020: $03
    ld [bc], a                                    ; $5021: $02
    ld a, a                                       ; $5022: $7f
    adc d                                         ; $5023: $8a
    cp l                                          ; $5024: $bd
    rst $10                                       ; $5025: $d7
    db $dd                                        ; $5026: $dd
    or a                                          ; $5027: $b7
    ld l, l                                       ; $5028: $6d
    ld e, a                                       ; $5029: $5f

jr_0f3_502a:
    ld e, d                                       ; $502a: $5a
    ld l, a                                       ; $502b: $6f
    ld a, $3f                                     ; $502c: $3e $3f
    ld [bc], a                                    ; $502e: $02
    rra                                           ; $502f: $1f
    add c                                         ; $5030: $81
    dec b                                         ; $5031: $05
    rlca                                          ; $5032: $07
    rlca                                          ; $5033: $07
    sbc e                                         ; $5034: $9b
    ld b, l                                       ; $5035: $45
    rst $38                                       ; $5036: $ff
    ld b, h                                       ; $5037: $44
    rst $38                                       ; $5038: $ff
    ld h, h                                       ; $5039: $64
    rst $18                                       ; $503a: $df
    ld b, h                                       ; $503b: $44
    rst $38                                       ; $503c: $ff
    ld b, h                                       ; $503d: $44
    rst $38                                       ; $503e: $ff
    ld d, l                                       ; $503f: $55
    rst $38                                       ; $5040: $ff
    ld a, h                                       ; $5041: $7c
    rst $38                                       ; $5042: $ff
    ld a, l                                       ; $5043: $7d
    rst $38                                       ; $5044: $ff
    ld a, h                                       ; $5045: $7c
    rst $38                                       ; $5046: $ff
    db $fc                                        ; $5047: $fc
    rst $38                                       ; $5048: $ff
    db $fc                                        ; $5049: $fc
    rst $38                                       ; $504a: $ff
    cp $ff                                        ; $504b: $fe $ff
    cp $ff                                        ; $504d: $fe $ff
    db $fc                                        ; $504f: $fc

jr_0f3_5050:
    dec b                                         ; $5050: $05
    rst $38                                       ; $5051: $ff
    add h                                         ; $5052: $84
    ret nc                                        ; $5053: $d0

    ldh a, [$90]                                  ; $5054: $f0 $90
    ldh a, [rSC]                                  ; $5056: $f0 $02
    ld hl, sp-$66                                 ; $5058: $f8 $9a
    call c, $b2fc                                 ; $505a: $dc $fc $b2
    cp $ef                                        ; $505d: $fe $ef
    rst $38                                       ; $505f: $ff
    jp c, Jump_0f3_4df5                           ; $5060: $da $f5 $4d

    cp $df                                        ; $5063: $fe $df
    ld sp, hl                                     ; $5065: $f9
    ld e, l                                       ; $5066: $5d
    ei                                            ; $5067: $fb
    xor $fe                                       ; $5068: $ee $fe
    ld a, h                                       ; $506a: $7c
    db $fc                                        ; $506b: $fc
    jr nz, @-$1e                                  ; $506c: $20 $e0

    jr nz, jr_0f3_5050                            ; $506e: $20 $e0

    db $10                                        ; $5070: $10
    ldh a, [$30]                                  ; $5071: $f0 $30
    ldh a, [rDIV]                                 ; $5073: $f0 $04
    ld bc, $0010                                  ; $5075: $01 $10 $00
    adc h                                         ; $5078: $8c
    jr nz, @-$1e                                  ; $5079: $20 $e0

    db $10                                        ; $507b: $10
    ldh a, [$a8]                                  ; $507c: $f0 $a8
    ld hl, sp-$68                                 ; $507e: $f8 $98
    ld hl, sp-$3c                                 ; $5080: $f8 $c4
    db $fc                                        ; $5082: $fc
    add sp, -$08                                  ; $5083: $e8 $f8
    ld [bc], a                                    ; $5085: $02
    rst $38                                       ; $5086: $ff
    adc b                                         ; $5087: $88
    db $fd                                        ; $5088: $fd
    rst $38                                       ; $5089: $ff
    db $fd                                        ; $508a: $fd
    rst $38                                       ; $508b: $ff
    cp $ff                                        ; $508c: $fe $ff
    cp [hl]                                       ; $508e: $be
    rst $38                                       ; $508f: $ff
    ld [bc], a                                    ; $5090: $02
    ld a, a                                       ; $5091: $7f
    ld [bc], a                                    ; $5092: $02
    cp $02                                        ; $5093: $fe $02
    or $10                                        ; $5095: $f6 $10
    nop                                           ; $5097: $00
    inc c                                         ; $5098: $0c
    ldh a, [rSC]                                  ; $5099: $f0 $02
    ccf                                           ; $509b: $3f
    inc b                                         ; $509c: $04
    inc a                                         ; $509d: $3c
    ld c, $00                                     ; $509e: $0e $00
    rst $38                                       ; $50a0: $ff
    dec d                                         ; $50a1: $15
    ld [$19f2], sp                                ; $50a2: $08 $f2 $19
    call nc, $d901                                ; $50a5: $d4 $01 $d9
    ld sp, hl                                     ; $50a8: $f9
    reti                                          ; $50a9: $d9


    ld bc, $05e8                                  ; $50aa: $01 $e8 $05
    jp hl                                         ; $50ad: $e9


    db $f4                                        ; $50ae: $f4
    jp hl                                         ; $50af: $e9


    db $fc                                        ; $50b0: $fc
    jp hl                                         ; $50b1: $e9


    rst $38                                       ; $50b2: $ff
    ld sp, hl                                     ; $50b3: $f9
    ld sp, hl                                     ; $50b4: $f9
    ld sp, hl                                     ; $50b5: $f9
    ld bc, $0f02                                  ; $50b6: $01 $02 $0f
    sbc [hl]                                      ; $50b9: $9e
    rra                                           ; $50ba: $1f
    db $10                                        ; $50bb: $10
    ccf                                           ; $50bc: $3f
    ld [hl+], a                                   ; $50bd: $22
    ld h, $39                                     ; $50be: $26 $39
    ld a, l                                       ; $50c0: $7d
    ld b, d                                       ; $50c1: $42
    rst $38                                       ; $50c2: $ff
    add c                                         ; $50c3: $81

jr_0f3_50c4:
    ld a, h                                       ; $50c4: $7c
    ld b, e                                       ; $50c5: $43
    ld l, l                                       ; $50c6: $6d
    ld [hl], d                                    ; $50c7: $72
    rla                                           ; $50c8: $17
    jr jr_0f3_5107                                ; $50c9: $18 $3c

    inc hl                                        ; $50cb: $23
    ld e, $1d                                     ; $50cc: $1e $1d
    dec hl                                        ; $50ce: $2b
    ccf                                           ; $50cf: $3f
    inc [hl]                                      ; $50d0: $34
    ccf                                           ; $50d1: $3f

jr_0f3_50d2:
    ld [hl], $3d                                  ; $50d2: $36 $3d
    inc [hl]                                      ; $50d4: $34
    ccf                                           ; $50d5: $3f
    ld d, h                                       ; $50d6: $54
    ld a, a                                       ; $50d7: $7f
    ld [bc], a                                    ; $50d8: $02
    add b                                         ; $50d9: $80
    sbc [hl]                                      ; $50da: $9e
    ret nz                                        ; $50db: $c0

    ld b, b                                       ; $50dc: $40
    ldh [rNR41], a                                ; $50dd: $e0 $20
    and b                                         ; $50df: $a0
    ldh [rSVBK], a                                ; $50e0: $e0 $70
    ret nc                                        ; $50e2: $d0

    ld hl, sp+$08                                 ; $50e3: $f8 $08
    ld hl, sp+$08                                 ; $50e5: $f8 $08
    ret nc                                        ; $50e7: $d0

    jr nc, @-$1e                                  ; $50e8: $30 $e0

    jr nz, jr_0f3_50c4                            ; $50ea: $20 $d8

    jr c, jr_0f3_50d2                             ; $50ec: $38 $e4

    db $fc                                        ; $50ee: $fc
    add d                                         ; $50ef: $82
    cp $92                                        ; $50f0: $fe $92
    cp $b2                                        ; $50f2: $fe $b2
    cp $96                                        ; $50f4: $fe $96
    cp $99                                        ; $50f6: $fe $99
    rst $38                                       ; $50f8: $ff
    ld [bc], a                                    ; $50f9: $02
    ld [$3e92], sp                                ; $50fa: $08 $92 $3e
    or $6e                                        ; $50fd: $f6 $6e
    jp c, $fa66                                   ; $50ff: $da $66 $fa

    cp e                                          ; $5102: $bb
    push af                                       ; $5103: $f5
    cp l                                          ; $5104: $bd
    ei                                            ; $5105: $fb
    cp [hl]                                       ; $5106: $be

jr_0f3_5107:
    cp $94                                        ; $5107: $fe $94
    db $fc                                        ; $5109: $fc
    ret z                                         ; $510a: $c8

    ld hl, sp+$70                                 ; $510b: $f8 $70
    ldh a, [rSC]                                  ; $510d: $f0 $02
    ret nz                                        ; $510f: $c0

    add e                                         ; $5110: $83
    ld b, b                                       ; $5111: $40
    ret nz                                        ; $5112: $c0

    ld b, b                                       ; $5113: $40
    rlca                                          ; $5114: $07
    ret nz                                        ; $5115: $c0

    add h                                         ; $5116: $84
    ld [bc], a                                    ; $5117: $02
    inc bc                                        ; $5118: $03
    ld [bc], a                                    ; $5119: $02
    inc bc                                        ; $511a: $03
    ld [bc], a                                    ; $511b: $02
    rlca                                          ; $511c: $07
    adc [hl]                                      ; $511d: $8e
    dec de                                        ; $511e: $1b
    rra                                           ; $511f: $1f
    ld sp, $7d3f                                  ; $5120: $31 $3f $7d
    ld c, a                                       ; $5123: $4f
    call $fdb7                                    ; $5124: $cd $b7 $fd
    sub a                                         ; $5127: $97
    xor l                                         ; $5128: $ad
    rst $38                                       ; $5129: $ff
    ld d, e                                       ; $512a: $53
    ld e, a                                       ; $512b: $5f
    ld [bc], a                                    ; $512c: $02
    rrca                                          ; $512d: $0f
    ld b, $01                                     ; $512e: $06 $01
    and h                                         ; $5130: $a4
    ld [bc], a                                    ; $5131: $02
    inc bc                                        ; $5132: $03
    ld [bc], a                                    ; $5133: $02
    inc bc                                        ; $5134: $03
    and h                                         ; $5135: $a4
    rst $38                                       ; $5136: $ff
    or h                                          ; $5137: $b4
    rst $28                                       ; $5138: $ef
    and l                                         ; $5139: $a5
    rst $38                                       ; $513a: $ff
    inc h                                         ; $513b: $24
    rst $38                                       ; $513c: $ff
    and l                                         ; $513d: $a5
    rst $38                                       ; $513e: $ff
    and h                                         ; $513f: $a4
    rst $38                                       ; $5140: $ff
    or l                                          ; $5141: $b5
    rst $38                                       ; $5142: $ff
    cp h                                          ; $5143: $bc
    rst $38                                       ; $5144: $ff
    cp h                                          ; $5145: $bc
    rst $38                                       ; $5146: $ff
    dec a                                         ; $5147: $3d
    rst $38                                       ; $5148: $ff
    ld a, l                                       ; $5149: $7d
    rst $38                                       ; $514a: $ff
    ld a, h                                       ; $514b: $7c
    rst $38                                       ; $514c: $ff
    ld a, h                                       ; $514d: $7c
    rst $38                                       ; $514e: $ff
    ld a, h                                       ; $514f: $7c
    rst $38                                       ; $5150: $ff
    db $fc                                        ; $5151: $fc
    rst $38                                       ; $5152: $ff
    db $fd                                        ; $5153: $fd
    rst $38                                       ; $5154: $ff
    ld c, $04                                     ; $5155: $0e $04
    add c                                         ; $5157: $81
    nop                                           ; $5158: $00
    inc bc                                        ; $5159: $03
    inc b                                         ; $515a: $04
    sbc d                                         ; $515b: $9a
    nop                                           ; $515c: $00
    inc b                                         ; $515d: $04
    nop                                           ; $515e: $00
    inc b                                         ; $515f: $04
    nop                                           ; $5160: $00
    inc b                                         ; $5161: $04
    nop                                           ; $5162: $00
    inc b                                         ; $5163: $04
    nop                                           ; $5164: $00
    inc b                                         ; $5165: $04
    nop                                           ; $5166: $00
    inc b                                         ; $5167: $04
    ld bc, $5f07                                  ; $5168: $01 $07 $5f
    ld a, a                                       ; $516b: $7f
    ld e, a                                       ; $516c: $5f
    ld a, a                                       ; $516d: $7f
    ld e, a                                       ; $516e: $5f
    ld a, a                                       ; $516f: $7f
    ld e, a                                       ; $5170: $5f
    ld a, a                                       ; $5171: $7f
    cp a                                          ; $5172: $bf
    rst $38                                       ; $5173: $ff
    ld e, [hl]                                    ; $5174: $5e
    ld a, a                                       ; $5175: $7f
    ld [bc], a                                    ; $5176: $02
    rst $38                                       ; $5177: $ff
    ld [bc], a                                    ; $5178: $02
    or $10                                        ; $5179: $f6 $10
    nop                                           ; $517b: $00
    adc [hl]                                      ; $517c: $8e
    call z, $c2fc                                 ; $517d: $cc $fc $c2
    cp $ca                                        ; $5180: $fe $ca
    cp $d6                                        ; $5182: $fe $d6
    cp $fd                                        ; $5184: $fe $fd
    rst $38                                       ; $5186: $ff
    jp $fdff                                      ; $5187: $c3 $ff $fd


    rst $38                                       ; $518a: $ff
    ld [bc], a                                    ; $518b: $02
    ld a, [hl]                                    ; $518c: $7e
    ld [bc], a                                    ; $518d: $02
    ld e, $0e                                     ; $518e: $1e $0e
    nop                                           ; $5190: $00
    rst $38                                       ; $5191: $ff
    add hl, bc                                    ; $5192: $09
    ld [bc], a                                    ; $5193: $02
    ld a, [c]                                     ; $5194: $f2
    add hl, de                                    ; $5195: $19
    call nc, $d401                                ; $5196: $d4 $01 $d4
    nop                                           ; $5199: $00
    call nc, $8903                                ; $519a: $d4 $03 $89
    ld [$6400], sp                                ; $519d: $08 $00 $64
    nop                                           ; $51a0: $00
    add b                                         ; $51a1: $80
    nop                                           ; $51a2: $00
    ld [bc], a                                    ; $51a3: $02
    nop                                           ; $51a4: $00
    ld [bc], a                                    ; $51a5: $02
    inc hl                                        ; $51a6: $23
    nop                                           ; $51a7: $00
    add c                                         ; $51a8: $81
    ld bc, $0013                                  ; $51a9: $01 $13 $00
    rst $38                                       ; $51ac: $ff
    add hl, bc                                    ; $51ad: $09
    ld [bc], a                                    ; $51ae: $02
    ld a, [c]                                     ; $51af: $f2
    add hl, de                                    ; $51b0: $19
    call nc, $d501                                ; $51b1: $d4 $01 $d5
    dec b                                         ; $51b4: $05
    push de                                       ; $51b5: $d5
    inc c                                         ; $51b6: $0c
    ld [bc], a                                    ; $51b7: $02
    nop                                           ; $51b8: $00
    add a                                         ; $51b9: $87
    ld bc, $5200                                  ; $51ba: $01 $00 $52
    nop                                           ; $51bd: $00
    adc h                                         ; $51be: $8c
    nop                                           ; $51bf: $00
    inc c                                         ; $51c0: $0c
    rla                                           ; $51c1: $17
    nop                                           ; $51c2: $00
    add e                                         ; $51c3: $83
    ld d, b                                       ; $51c4: $50
    nop                                           ; $51c5: $00
    jr z, jr_0f3_51cf                             ; $51c6: $28 $07

    nop                                           ; $51c8: $00
    add l                                         ; $51c9: $85
    ld bc, $0300                                  ; $51ca: $01 $00 $03
    nop                                           ; $51cd: $00
    ld [bc], a                                    ; $51ce: $02

jr_0f3_51cf:
    ld de, $ff00                                  ; $51cf: $11 $00 $ff
    dec bc                                        ; $51d2: $0b
    inc bc                                        ; $51d3: $03
    ld a, [c]                                     ; $51d4: $f2
    add hl, de                                    ; $51d5: $19
    call nc, $d801                                ; $51d6: $d4 $01 $d8
    add hl, bc                                    ; $51d9: $09
    ret c                                         ; $51da: $d8

    db $10                                        ; $51db: $10
    ret c                                         ; $51dc: $d8

    inc de                                        ; $51dd: $13
    adc c                                         ; $51de: $89
    add b                                         ; $51df: $80
    nop                                           ; $51e0: $00
    ld b, b                                       ; $51e1: $40
    nop                                           ; $51e2: $00
    inc de                                        ; $51e3: $13
    nop                                           ; $51e4: $00
    rla                                           ; $51e5: $17
    nop                                           ; $51e6: $00
    inc c                                         ; $51e7: $0c
    dec e                                         ; $51e8: $1d
    nop                                           ; $51e9: $00
    add a                                         ; $51ea: $87
    ld b, d                                       ; $51eb: $42
    nop                                           ; $51ec: $00
    ld [hl], c                                    ; $51ed: $71
    nop                                           ; $51ee: $00
    ld h, b                                       ; $51ef: $60
    nop                                           ; $51f0: $00
    ld b, b                                       ; $51f1: $40
    inc hl                                        ; $51f2: $23
    nop                                           ; $51f3: $00
    add l                                         ; $51f4: $85
    ld bc, $0300                                  ; $51f5: $01 $00 $03
    nop                                           ; $51f8: $00
    ld bc, $000b                                  ; $51f9: $01 $0b $00
    rst $38                                       ; $51fc: $ff
    dec bc                                        ; $51fd: $0b
    inc bc                                        ; $51fe: $03
    ld a, [c]                                     ; $51ff: $f2
    add hl, de                                    ; $5200: $19
    call nc, $d901                                ; $5201: $d4 $01 $d9
    dec bc                                        ; $5204: $0b
    reti                                          ; $5205: $d9


    inc de                                        ; $5206: $13
    reti                                          ; $5207: $d9


    ld d, $8b                                     ; $5208: $16 $8b
    add b                                         ; $520a: $80
    nop                                           ; $520b: $00
    jr nc, jr_0f3_520e                            ; $520c: $30 $00

jr_0f3_520e:
    ld de, $0400                                  ; $520e: $11 $00 $04
    nop                                           ; $5211: $00
    inc c                                         ; $5212: $0c
    nop                                           ; $5213: $00
    jr @+$1d                                      ; $5214: $18 $1b

    nop                                           ; $5216: $00
    adc c                                         ; $5217: $89
    ret nz                                        ; $5218: $c0

    nop                                           ; $5219: $00
    pop hl                                        ; $521a: $e1
    nop                                           ; $521b: $00

jr_0f3_521c:
    ld h, c                                       ; $521c: $61
    nop                                           ; $521d: $00
    jr nz, jr_0f3_5220                            ; $521e: $20 $00

jr_0f3_5220:
    ld b, b                                       ; $5220: $40
    ld hl, $8500                                  ; $5221: $21 $00 $85
    ld bc, $0100                                  ; $5224: $01 $00 $01
    nop                                           ; $5227: $00
    inc b                                         ; $5228: $04
    dec bc                                        ; $5229: $0b
    nop                                           ; $522a: $00
    rst $38                                       ; $522b: $ff
    dec bc                                        ; $522c: $0b
    inc bc                                        ; $522d: $03
    ld a, [c]                                     ; $522e: $f2
    add hl, de                                    ; $522f: $19
    call nc, $da01                                ; $5230: $d4 $01 $da
    inc c                                         ; $5233: $0c
    jp c, $da14                                   ; $5234: $da $14 $da

    rla                                           ; $5237: $17
    add e                                         ; $5238: $83
    sub b                                         ; $5239: $90
    nop                                           ; $523a: $00
    ld de, $0005                                  ; $523b: $11 $05 $00
    add e                                         ; $523e: $83
    inc b                                         ; $523f: $04
    nop                                           ; $5240: $00
    ld [$0019], sp                                ; $5241: $08 $19 $00
    add a                                         ; $5244: $87
    ldh [rP1], a                                  ; $5245: $e0 $00
    ld [hl], b                                    ; $5247: $70
    nop                                           ; $5248: $00
    jr nc, jr_0f3_524b                            ; $5249: $30 $00

jr_0f3_524b:
    ld hl, $0025                                  ; $524b: $21 $25 $00
    add c                                         ; $524e: $81

jr_0f3_524f:
    ld bc, $000f                                  ; $524f: $01 $0f $00
    rst $38                                       ; $5252: $ff
    add hl, bc                                    ; $5253: $09
    ld [bc], a                                    ; $5254: $02
    ld a, [c]                                     ; $5255: $f2
    add hl, de                                    ; $5256: $19
    call nc, $db01                                ; $5257: $d4 $01 $db
    db $10                                        ; $525a: $10
    db $db                                        ; $525b: $db
    ld de, $8083                                  ; $525c: $11 $83 $80
    nop                                           ; $525f: $00
    ld bc, $0003                                  ; $5260: $01 $03 $00
    add e                                         ; $5263: $83
    ld bc, $2000                                  ; $5264: $01 $00 $20
    add hl, de                                    ; $5267: $19
    nop                                           ; $5268: $00
    add e                                         ; $5269: $83
    ld bc, $0100                                  ; $526a: $01 $00 $01
    dec de                                        ; $526d: $1b
    nop                                           ; $526e: $00
    rst $38                                       ; $526f: $ff
    inc de                                        ; $5270: $13
    rlca                                          ; $5271: $07
    ld a, [$ec22]                                 ; $5272: $fa $22 $ec
    ld a, [bc]                                    ; $5275: $0a
    db $ed                                        ; $5276: $ed
    ld a, [$02f0]                                 ; $5277: $fa $f0 $02
    di                                            ; $527a: $f3
    ld a, [bc]                                    ; $527b: $0a
    ld hl, sp+$12                                 ; $527c: $f8 $12
    db $fd                                        ; $527e: $fd
    ld a, [$02fd]                                 ; $527f: $fa $fd $02
    db $fd                                        ; $5282: $fd
    ld a, [bc]                                    ; $5283: $0a
    ld [bc], a                                    ; $5284: $02
    jr nz, jr_0f3_521c                            ; $5285: $20 $95

    ld [hl], b                                    ; $5287: $70
    ld d, b                                       ; $5288: $50
    ldh [$a0], a                                  ; $5289: $e0 $a0
    db $e3                                        ; $528b: $e3
    and e                                         ; $528c: $a3
    ld [c], a                                     ; $528d: $e2
    and e                                         ; $528e: $a3
    ld [c], a                                     ; $528f: $e2
    and e                                         ; $5290: $a3
    ld [c], a                                     ; $5291: $e2
    and e                                         ; $5292: $a3
    ld [hl], c                                    ; $5293: $71
    ld d, c                                       ; $5294: $51
    ld e, c                                       ; $5295: $59
    ld l, c                                       ; $5296: $69
    ld l, $37                                     ; $5297: $2e $37
    dec de                                        ; $5299: $1b
    rla                                           ; $529a: $17
    rrca                                          ; $529b: $0f
    ld [bc], a                                    ; $529c: $02
    dec bc                                        ; $529d: $0b
    add a                                         ; $529e: $87
    dec c                                         ; $529f: $0d
    ld l, a                                       ; $52a0: $6f
    ld l, l                                       ; $52a1: $6d
    sbc [hl]                                      ; $52a2: $9e
    db $fd                                        ; $52a3: $fd
    ld a, e                                       ; $52a4: $7b
    ld a, l                                       ; $52a5: $7d
    ld [bc], a                                    ; $52a6: $02
    add b                                         ; $52a7: $80
    add e                                         ; $52a8: $83
    ld b, b                                       ; $52a9: $40
    ret nz                                        ; $52aa: $c0

    and b                                         ; $52ab: $a0
    ld [bc], a                                    ; $52ac: $02
    ld h, b                                       ; $52ad: $60
    sbc c                                         ; $52ae: $99
    and b                                         ; $52af: $a0
    ld hl, $e7e1                                  ; $52b0: $21 $e1 $e7
    and $7d                                       ; $52b3: $e6 $7d
    rst $38                                       ; $52b5: $ff
    call c, $ffe3                                 ; $52b6: $dc $e3 $ff
    nop                                           ; $52b9: $00
    pop af                                        ; $52ba: $f1
    ld c, $51                                     ; $52bb: $0e $51
    cp a                                          ; $52bd: $bf
    call z, $9ff7                                 ; $52be: $cc $f7 $9f
    rst $28                                       ; $52c1: $ef
    cp e                                          ; $52c2: $bb
    rst $18                                       ; $52c3: $df
    sbc h                                         ; $52c4: $9c
    rst $38                                       ; $52c5: $ff
    ld hl, sp-$01                                 ; $52c6: $f8 $ff
    ld [bc], a                                    ; $52c8: $02
    jr nz, jr_0f3_524f                            ; $52c9: $20 $84

    ldh a, [$d0]                                  ; $52cb: $f0 $d0
    ldh [rNR41], a                                ; $52cd: $e0 $20
    ld [bc], a                                    ; $52cf: $02
    ret nz                                        ; $52d0: $c0

    ld [bc], a                                    ; $52d1: $02
    ret c                                         ; $52d2: $d8

    sub [hl]                                      ; $52d3: $96
    and h                                         ; $52d4: $a4
    ld a, h                                       ; $52d5: $7c
    ld e, b                                       ; $52d6: $58
    cp b                                          ; $52d7: $b8
    ld l, b                                       ; $52d8: $68
    sbc b                                         ; $52d9: $98
    ld hl, sp+$08                                 ; $52da: $f8 $08
    ld d, h                                       ; $52dc: $54
    cp h                                          ; $52dd: $bc
    jp z, $bef6                                   ; $52de: $ca $f6 $be

    jp nz, $f3dd                                  ; $52e1: $c2 $dd $f3

    cp $e1                                        ; $52e4: $fe $e1
    xor a                                         ; $52e6: $af
    db $f4                                        ; $52e7: $f4
    rst $30                                       ; $52e8: $f7
    ld hl, sp+$02                                 ; $52e9: $f8 $02
    ld [bc], a                                    ; $52eb: $02
    sbc e                                         ; $52ec: $9b
    rlca                                          ; $52ed: $07
    dec b                                         ; $52ee: $05
    ld c, $0a                                     ; $52ef: $0e $0a
    ld c, $0a                                     ; $52f1: $0e $0a
    dec bc                                        ; $52f3: $0b
    dec c                                         ; $52f4: $0d
    rlca                                          ; $52f5: $07
    dec b                                         ; $52f6: $05
    rlca                                          ; $52f7: $07
    dec b                                         ; $52f8: $05
    dec bc                                        ; $52f9: $0b
    dec c                                         ; $52fa: $0d
    push af                                       ; $52fb: $f5
    ei                                            ; $52fc: $fb
    sbc e                                         ; $52fd: $9b
    ld h, a                                       ; $52fe: $67
    or $0e                                        ; $52ff: $f6 $0e
    call c, Call_000_30fc                         ; $5301: $dc $fc $30
    ldh a, [rNR41]                                ; $5304: $f0 $20
    ldh [$a0], a                                  ; $5306: $e0 $a0
    inc bc                                        ; $5308: $03
    ldh [$98], a                                  ; $5309: $e0 $98
    ld [hl], $3b                                  ; $530b: $36 $3b
    ld [hl], e                                    ; $530d: $73
    ld a, a                                       ; $530e: $7f
    ld e, a                                       ; $530f: $5f
    ld a, a                                       ; $5310: $7f
    ld a, l                                       ; $5311: $7d
    ld a, [hl]                                    ; $5312: $7e
    sbc e                                         ; $5313: $9b
    db $fc                                        ; $5314: $fc
    db $eb                                        ; $5315: $eb
    db $fc                                        ; $5316: $fc
    ld e, l                                       ; $5317: $5d
    ld a, a                                       ; $5318: $7f
    sub e                                         ; $5319: $93
    rst $38                                       ; $531a: $ff
    ld l, a                                       ; $531b: $6f
    ld a, a                                       ; $531c: $7f
    ld d, h                                       ; $531d: $54
    ld a, a                                       ; $531e: $7f
    ld b, h                                       ; $531f: $44
    ld a, a                                       ; $5320: $7f
    ld a, $3f                                     ; $5321: $3e $3f
    ld [bc], a                                    ; $5323: $02
    dec de                                        ; $5324: $1b
    ld [bc], a                                    ; $5325: $02
    ld bc, $000a                                  ; $5326: $01 $0a $00
    sub h                                         ; $5329: $94
    rst $30                                       ; $532a: $f7
    rrca                                          ; $532b: $0f
    db $fd                                        ; $532c: $fd
    inc bc                                        ; $532d: $03
    rst $28                                       ; $532e: $ef
    ldh a, [$39]                                  ; $532f: $f0 $39
    cp $1f                                        ; $5331: $fe $1f
    rst $38                                       ; $5333: $ff

jr_0f3_5334:
    di                                            ; $5334: $f3
    rst $38                                       ; $5335: $ff
    sub [hl]                                      ; $5336: $96
    cp $1c                                        ; $5337: $fe $1c
    db $fc                                        ; $5339: $fc
    jr c, jr_0f3_5334                             ; $533a: $38 $f8

    ld h, b                                       ; $533c: $60
    ldh [rSC], a                                  ; $533d: $e0 $02
    ret nz                                        ; $533f: $c0

    stop                                          ; $5340: $10 $00
    adc d                                         ; $5342: $8a
    db $dd                                        ; $5343: $dd
    ld e, [hl]                                    ; $5344: $5e
    rst $20                                       ; $5345: $e7
    daa                                           ; $5346: $27
    pop af                                        ; $5347: $f1
    sub c                                         ; $5348: $91
    ld [hl], c                                    ; $5349: $71
    ld d, c                                       ; $534a: $51
    jr c, jr_0f3_5375                             ; $534b: $38 $28

    ld [bc], a                                    ; $534d: $02
    jr nc, jr_0f3_5358                            ; $534e: $30 $08

    nop                                           ; $5350: $00
    rst $38                                       ; $5351: $ff
    inc de                                        ; $5352: $13
    rlca                                          ; $5353: $07
    ld a, [$ec22]                                 ; $5354: $fa $22 $ec
    ld a, [bc]                                    ; $5357: $0a

jr_0f3_5358:
    db $ed                                        ; $5358: $ed
    ld a, [$02f0]                                 ; $5359: $fa $f0 $02
    di                                            ; $535c: $f3
    ld a, [bc]                                    ; $535d: $0a
    ld hl, sp+$12                                 ; $535e: $f8 $12
    db $fd                                        ; $5360: $fd
    ld a, [$02fd]                                 ; $5361: $fa $fd $02
    db $fd                                        ; $5364: $fd
    ld a, [bc]                                    ; $5365: $0a
    ld [bc], a                                    ; $5366: $02
    ld b, b                                       ; $5367: $40
    sub e                                         ; $5368: $93
    ldh [$a0], a                                  ; $5369: $e0 $a0
    ldh [$a0], a                                  ; $536b: $e0 $a0

jr_0f3_536d:
    pop hl                                        ; $536d: $e1
    and c                                         ; $536e: $a1
    ld [c], a                                     ; $536f: $e2
    and e                                         ; $5370: $a3
    ld [hl], d                                    ; $5371: $72
    ld d, e                                       ; $5372: $53
    ld [hl], c                                    ; $5373: $71
    ld d, c                                       ; $5374: $51

jr_0f3_5375:
    add hl, sp                                    ; $5375: $39
    add hl, hl                                    ; $5376: $29
    dec l                                         ; $5377: $2d
    dec [hl]                                      ; $5378: $35
    ld d, $1b                                     ; $5379: $16 $1b
    dec c                                         ; $537b: $0d
    ld [bc], a                                    ; $537c: $02
    dec bc                                        ; $537d: $0b
    adc c                                         ; $537e: $89
    dec c                                         ; $537f: $0d
    rlca                                          ; $5380: $07
    dec b                                         ; $5381: $05
    ld l, [hl]                                    ; $5382: $6e
    ld l, l                                       ; $5383: $6d
    sbc [hl]                                      ; $5384: $9e
    db $fd                                        ; $5385: $fd
    ld a, e                                       ; $5386: $7b
    ld a, l                                       ; $5387: $7d
    ld [bc], a                                    ; $5388: $02
    ret nz                                        ; $5389: $c0

    sbc [hl]                                      ; $538a: $9e
    jr nz, jr_0f3_536d                            ; $538b: $20 $e0

    and b                                         ; $538d: $a0
    ld h, b                                       ; $538e: $60
    ld h, c                                       ; $538f: $61
    and c                                         ; $5390: $a1
    daa                                           ; $5391: $27
    and $ef                                       ; $5392: $e6 $ef
    db $eb                                        ; $5394: $eb
    ld a, l                                       ; $5395: $7d
    rst $38                                       ; $5396: $ff
    sbc h                                         ; $5397: $9c
    db $e3                                        ; $5398: $e3
    rst $38                                       ; $5399: $ff
    nop                                           ; $539a: $00
    ld [hl], e                                    ; $539b: $73
    adc [hl]                                      ; $539c: $8e
    pop af                                        ; $539d: $f1
    cp a                                          ; $539e: $bf
    adc $f7                                       ; $539f: $ce $f7
    cp a                                          ; $53a1: $bf
    rst $08                                       ; $53a2: $cf
    cp e                                          ; $53a3: $bb
    rst $18                                       ; $53a4: $df
    sbc h                                         ; $53a5: $9c
    rst $38                                       ; $53a6: $ff
    ld hl, sp-$01                                 ; $53a7: $f8 $ff
    ld [bc], a                                    ; $53a9: $02
    ret nz                                        ; $53aa: $c0

    add d                                         ; $53ab: $82
    ldh [rNR41], a                                ; $53ac: $e0 $20
    ld [bc], a                                    ; $53ae: $02
    ret nz                                        ; $53af: $c0

    ld [bc], a                                    ; $53b0: $02
    nop                                           ; $53b1: $00
    ld [bc], a                                    ; $53b2: $02
    call c, $a496                                 ; $53b3: $dc $96 $a4
    ld a, h                                       ; $53b6: $7c
    ld e, b                                       ; $53b7: $58
    cp b                                          ; $53b8: $b8
    add sp, $18                                   ; $53b9: $e8 $18
    ld hl, sp+$08                                 ; $53bb: $f8 $08
    ld d, h                                       ; $53bd: $54
    cp h                                          ; $53be: $bc
    call c, $bae4                                 ; $53bf: $dc $e4 $ba
    add $dd                                       ; $53c2: $c6 $dd
    di                                            ; $53c4: $f3
    cp $e1                                        ; $53c5: $fe $e1
    and a                                         ; $53c7: $a7
    db $fc                                        ; $53c8: $fc
    ld [hl], a                                    ; $53c9: $77
    ld a, b                                       ; $53ca: $78
    ld [bc], a                                    ; $53cb: $02
    ld [bc], a                                    ; $53cc: $02
    sbc h                                         ; $53cd: $9c
    rlca                                          ; $53ce: $07
    dec b                                         ; $53cf: $05
    ld c, $0a                                     ; $53d0: $0e $0a
    ld c, $0a                                     ; $53d2: $0e $0a
    dec c                                         ; $53d4: $0d
    dec bc                                        ; $53d5: $0b
    rlca                                          ; $53d6: $07
    dec b                                         ; $53d7: $05
    rlca                                          ; $53d8: $07
    dec b                                         ; $53d9: $05
    dec de                                        ; $53da: $1b
    dec e                                         ; $53db: $1d
    push af                                       ; $53dc: $f5
    ei                                            ; $53dd: $fb
    sbc a                                         ; $53de: $9f
    ld h, e                                       ; $53df: $63
    or $0e                                        ; $53e0: $f6 $0e
    call c, Call_000_30fc                         ; $53e2: $dc $fc $30
    ldh a, [rNR41]                                ; $53e5: $f0 $20
    ldh [rNR41], a                                ; $53e7: $e0 $20
    ldh [rSC], a                                  ; $53e9: $e0 $02
    ret nz                                        ; $53eb: $c0

    sbc b                                         ; $53ec: $98
    ld [hl], $3b                                  ; $53ed: $36 $3b
    ld [hl], e                                    ; $53ef: $73
    ld a, a                                       ; $53f0: $7f
    ld e, a                                       ; $53f1: $5f
    ld a, a                                       ; $53f2: $7f
    ld a, l                                       ; $53f3: $7d
    ld a, [hl]                                    ; $53f4: $7e
    sbc e                                         ; $53f5: $9b
    db $fc                                        ; $53f6: $fc
    db $eb                                        ; $53f7: $eb
    db $fc                                        ; $53f8: $fc
    ld e, l                                       ; $53f9: $5d
    ld a, a                                       ; $53fa: $7f
    sub e                                         ; $53fb: $93
    rst $38                                       ; $53fc: $ff
    ld l, a                                       ; $53fd: $6f
    ld a, a                                       ; $53fe: $7f
    ld d, h                                       ; $53ff: $54
    ld a, a                                       ; $5400: $7f
    ld b, h                                       ; $5401: $44
    ld a, a                                       ; $5402: $7f
    ld a, $3f                                     ; $5403: $3e $3f
    ld [bc], a                                    ; $5405: $02
    dec de                                        ; $5406: $1b
    ld [bc], a                                    ; $5407: $02
    ld bc, $000a                                  ; $5408: $01 $0a $00
    sub h                                         ; $540b: $94
    rst $08                                       ; $540c: $cf
    ccf                                           ; $540d: $3f
    db $fd                                        ; $540e: $fd
    rlca                                          ; $540f: $07
    rst $38                                       ; $5410: $ff
    db $e3                                        ; $5411: $e3
    ld [hl], $fa                                  ; $5412: $36 $fa
    rra                                           ; $5414: $1f
    ld sp, hl                                     ; $5415: $f9

jr_0f3_5416:
    push af                                       ; $5416: $f5
    cp $97                                        ; $5417: $fe $97
    rst $38                                       ; $5419: $ff
    inc e                                         ; $541a: $1c
    db $fc                                        ; $541b: $fc
    jr c, jr_0f3_5416                             ; $541c: $38 $f8

    ld h, b                                       ; $541e: $60
    ldh [rSC], a                                  ; $541f: $e0 $02
    ret nz                                        ; $5421: $c0

    stop                                          ; $5422: $10 $00
    add d                                         ; $5424: $82
    dec e                                         ; $5425: $1d

jr_0f3_5426:
    ld e, $02                                     ; $5426: $1e $02
    add a                                         ; $5428: $87
    add h                                         ; $5429: $84
    ld sp, hl                                     ; $542a: $f9
    ld a, c                                       ; $542b: $79
    ld sp, hl                                     ; $542c: $f9
    adc c                                         ; $542d: $89
    ld [bc], a                                    ; $542e: $02
    ld [hl], b                                    ; $542f: $70
    ld a, [bc]                                    ; $5430: $0a
    nop                                           ; $5431: $00
    rst $38                                       ; $5432: $ff
    inc de                                        ; $5433: $13
    rlca                                          ; $5434: $07
    ld a, [$ec22]                                 ; $5435: $fa $22 $ec
    ld a, [bc]                                    ; $5438: $0a
    db $ec                                        ; $5439: $ec
    ld a, [$02ef]                                 ; $543a: $fa $ef $02
    ld a, [c]                                     ; $543d: $f2
    ld a, [bc]                                    ; $543e: $0a
    ld sp, hl                                     ; $543f: $f9
    ld [de], a                                    ; $5440: $12
    db $fc                                        ; $5441: $fc
    ld a, [$02fc]                                 ; $5442: $fa $fc $02
    db $fc                                        ; $5445: $fc
    ld a, [bc]                                    ; $5446: $0a
    ld [bc], a                                    ; $5447: $02
    jr nz, @-$60                                  ; $5448: $20 $9e

    ld [hl], b                                    ; $544a: $70
    ld d, b                                       ; $544b: $50
    ld [hl], b                                    ; $544c: $70
    ld d, b                                       ; $544d: $50
    ld [hl], c                                    ; $544e: $71
    ld d, c                                       ; $544f: $51
    ld [hl], c                                    ; $5450: $71
    ld d, c                                       ; $5451: $51
    ld a, [hl-]                                   ; $5452: $3a
    dec hl                                        ; $5453: $2b
    ld a, [hl-]                                   ; $5454: $3a
    dec hl                                        ; $5455: $2b
    dec e                                         ; $5456: $1d
    dec d                                         ; $5457: $15
    dec e                                         ; $5458: $1d
    dec d                                         ; $5459: $15
    dec e                                         ; $545a: $1d
    dec d                                         ; $545b: $15
    ld d, $1b                                     ; $545c: $16 $1b
    rla                                           ; $545e: $17
    dec de                                        ; $545f: $1b
    rrca                                          ; $5460: $0f
    dec bc                                        ; $5461: $0b
    dec c                                         ; $5462: $0d
    dec bc                                        ; $5463: $0b
    ld l, e                                       ; $5464: $6b
    ld l, l                                       ; $5465: $6d
    sbc e                                         ; $5466: $9b
    db $fd                                        ; $5467: $fd
    ld [bc], a                                    ; $5468: $02
    add b                                         ; $5469: $80
    sbc [hl]                                      ; $546a: $9e
    ld b, b                                       ; $546b: $40
    ret nz                                        ; $546c: $c0

    inc hl                                        ; $546d: $23
    db $e3                                        ; $546e: $e3
    ld h, a                                       ; $546f: $67
    and h                                         ; $5470: $a4
    ld l, a                                       ; $5471: $6f
    xor e                                         ; $5472: $ab
    ld a, h                                       ; $5473: $7c
    db $f4                                        ; $5474: $f4
    db $fc                                        ; $5475: $fc
    db $ec                                        ; $5476: $ec
    ld a, e                                       ; $5477: $7b
    rst $38                                       ; $5478: $ff
    cp h                                          ; $5479: $bc
    jp Jump_000_00ff                              ; $547a: $c3 $ff $00


    ld [c], a                                     ; $547d: $e2
    rra                                           ; $547e: $1f
    jr nz, @+$01                                  ; $547f: $20 $ff

    ld d, [hl]                                    ; $5481: $56
    rst $28                                       ; $5482: $ef
    xor a                                         ; $5483: $af
    rst $18                                       ; $5484: $df
    cp e                                          ; $5485: $bb
    rst $18                                       ; $5486: $df
    sbc l                                         ; $5487: $9d
    rst $38                                       ; $5488: $ff
    ld [bc], a                                    ; $5489: $02
    add b                                         ; $548a: $80
    ld b, $00                                     ; $548b: $06 $00
    ld [bc], a                                    ; $548d: $02
    jr jr_0f3_5426                                ; $548e: $18 $96

    and h                                         ; $5490: $a4
    cp h                                          ; $5491: $bc
    ld l, b                                       ; $5492: $68
    ld hl, sp+$58                                 ; $5493: $f8 $58
    cp b                                          ; $5495: $b8
    add sp, $18                                   ; $5496: $e8 $18
    ld hl, sp+$18                                 ; $5498: $f8 $18
    ld c, b                                       ; $549a: $48
    cp b                                          ; $549b: $b8
    cp h                                          ; $549c: $bc
    call nz, $e4bc                                ; $549d: $c4 $bc $e4
    adc $f2                                       ; $54a0: $ce $f2
    rst $18                                       ; $54a2: $df
    pop hl                                        ; $54a3: $e1
    xor e                                         ; $54a4: $ab
    db $fc                                        ; $54a5: $fc
    ld [bc], a                                    ; $54a6: $02
    ld [bc], a                                    ; $54a7: $02
    add l                                         ; $54a8: $85
    rlca                                          ; $54a9: $07
    dec b                                         ; $54aa: $05
    ld c, $0a                                     ; $54ab: $0e $0a
    dec c                                         ; $54ad: $0d
    ld [bc], a                                    ; $54ae: $02
    dec bc                                        ; $54af: $0b
    sub e                                         ; $54b0: $93
    dec c                                         ; $54b1: $0d
    rlca                                          ; $54b2: $07
    dec b                                         ; $54b3: $05
    rrca                                          ; $54b4: $0f
    dec c                                         ; $54b5: $0d
    ei                                            ; $54b6: $fb
    db $fd                                        ; $54b7: $fd
    dec c                                         ; $54b8: $0d
    di                                            ; $54b9: $f3
    ld a, [$ae06]                                 ; $54ba: $fa $06 $ae
    sbc $78                                       ; $54bd: $de $78
    ld hl, sp+$20                                 ; $54bf: $f8 $20
    ldh [rLCDC], a                                ; $54c1: $e0 $40
    ret nz                                        ; $54c3: $c0

    ld [bc], a                                    ; $54c4: $02
    add b                                         ; $54c5: $80
    ld [bc], a                                    ; $54c6: $02
    nop                                           ; $54c7: $00
    sbc d                                         ; $54c8: $9a
    ld a, e                                       ; $54c9: $7b
    ld a, l                                       ; $54ca: $7d
    ld l, $3b                                     ; $54cb: $2e $3b
    ld [hl], e                                    ; $54cd: $73
    ld a, a                                       ; $54ce: $7f
    ld e, a                                       ; $54cf: $5f
    ld a, a                                       ; $54d0: $7f
    ld a, l                                       ; $54d1: $7d
    ld a, [hl]                                    ; $54d2: $7e
    sbc e                                         ; $54d3: $9b
    db $fc                                        ; $54d4: $fc
    db $eb                                        ; $54d5: $eb
    db $fc                                        ; $54d6: $fc
    ld e, l                                       ; $54d7: $5d
    ld a, a                                       ; $54d8: $7f
    sub e                                         ; $54d9: $93
    rst $38                                       ; $54da: $ff
    ld l, a                                       ; $54db: $6f
    ld a, a                                       ; $54dc: $7f
    ld d, h                                       ; $54dd: $54
    ld a, a                                       ; $54de: $7f
    ld b, h                                       ; $54df: $44
    ld a, a                                       ; $54e0: $7f
    ld a, $3f                                     ; $54e1: $3e $3f
    ld [bc], a                                    ; $54e3: $02
    dec de                                        ; $54e4: $1b
    ld [bc], a                                    ; $54e5: $02
    ld bc, $0008                                  ; $54e6: $01 $08 $00
    sub [hl]                                      ; $54e9: $96
    ld hl, sp-$01                                 ; $54ea: $f8 $ff
    rst $18                                       ; $54ec: $df
    ccf                                           ; $54ed: $3f
    ld sp, hl                                     ; $54ee: $f9
    rrca                                          ; $54ef: $0f
    rst $38                                       ; $54f0: $ff
    rst $20                                       ; $54f1: $e7
    ld a, $f2                                     ; $54f2: $3e $f2
    dec e                                         ; $54f4: $1d
    ei                                            ; $54f5: $fb
    rst $38                                       ; $54f6: $ff
    ld sp, hl                                     ; $54f7: $f9
    sub [hl]                                      ; $54f8: $96
    db $fd                                        ; $54f9: $fd
    rra                                           ; $54fa: $1f
    cp $39                                        ; $54fb: $fe $39
    ld sp, hl                                     ; $54fd: $f9
    ld h, b                                       ; $54fe: $60
    ldh [rSC], a                                  ; $54ff: $e0 $02
    ret nz                                        ; $5501: $c0

    ld c, $00                                     ; $5502: $0e $00
    adc b                                         ; $5504: $88
    ld [hl], a                                    ; $5505: $77
    ld a, b                                       ; $5506: $78
    dec a                                         ; $5507: $3d
    ccf                                           ; $5508: $3f
    ld c, $0f                                     ; $5509: $0e $0f
    ld [bc], a                                    ; $550b: $02
    inc bc                                        ; $550c: $03
    ld [bc], a                                    ; $550d: $02
    sbc e                                         ; $550e: $9b
    add h                                         ; $550f: $84
    ld sp, hl                                     ; $5510: $f9

jr_0f3_5511:
    ld l, c                                       ; $5511: $69
    ldh a, [$90]                                  ; $5512: $f0 $90
    ld [bc], a                                    ; $5514: $02
    ld h, b                                       ; $5515: $60
    inc b                                         ; $5516: $04
    nop                                           ; $5517: $00
    rst $38                                       ; $5518: $ff
    inc de                                        ; $5519: $13
    rlca                                          ; $551a: $07
    ld a, [$ec22]                                 ; $551b: $fa $22 $ec
    ld a, [bc]                                    ; $551e: $0a
    db $ec                                        ; $551f: $ec
    ld a, [$02ef]                                 ; $5520: $fa $ef $02
    or $0a                                        ; $5523: $f6 $0a
    ld sp, hl                                     ; $5525: $f9
    ld [de], a                                    ; $5526: $12
    db $fc                                        ; $5527: $fc
    ld a, [$02fc]                                 ; $5528: $fa $fc $02
    db $fc                                        ; $552b: $fc
    ld a, [bc]                                    ; $552c: $0a
    ld [bc], a                                    ; $552d: $02
    db $10                                        ; $552e: $10
    sbc [hl]                                      ; $552f: $9e
    jr c, jr_0f3_555a                             ; $5530: $38 $28

    jr c, jr_0f3_555c                             ; $5532: $38 $28

    dec e                                         ; $5534: $1d
    dec d                                         ; $5535: $15
    rra                                           ; $5536: $1f
    rla                                           ; $5537: $17
    ld e, $17                                     ; $5538: $1e $17
    ld e, $17                                     ; $553a: $1e $17
    rrca                                          ; $553c: $0f
    dec bc                                        ; $553d: $0b
    rrca                                          ; $553e: $0f
    dec bc                                        ; $553f: $0b
    rrca                                          ; $5540: $0f
    dec bc                                        ; $5541: $0b
    ld c, $0b                                     ; $5542: $0e $0b
    rrca                                          ; $5544: $0f
    dec bc                                        ; $5545: $0b
    rrca                                          ; $5546: $0f
    dec bc                                        ; $5547: $0b
    dec c                                         ; $5548: $0d
    dec bc                                        ; $5549: $0b
    ld l, l                                       ; $554a: $6d
    ld l, e                                       ; $554b: $6b
    sbc l                                         ; $554c: $9d
    ei                                            ; $554d: $fb
    ld [bc], a                                    ; $554e: $02
    add b                                         ; $554f: $80
    adc d                                         ; $5550: $8a
    ld b, b                                       ; $5551: $40
    ret nz                                        ; $5552: $c0

    inc h                                         ; $5553: $24
    db $e4                                        ; $5554: $e4
    ld l, [hl]                                    ; $5555: $6e
    xor d                                         ; $5556: $aa
    ld a, h                                       ; $5557: $7c
    or h                                          ; $5558: $b4
    ld a, b                                       ; $5559: $78

jr_0f3_555a:
    add sp, $02                                   ; $555a: $e8 $02

jr_0f3_555c:
    or $92                                        ; $555c: $f6 $92
    ld a, e                                       ; $555e: $7b
    rst $38                                       ; $555f: $ff
    cp h                                          ; $5560: $bc
    jp Jump_000_00ff                              ; $5561: $c3 $ff $00


    ld [c], a                                     ; $5564: $e2
    rra                                           ; $5565: $1f
    and b                                         ; $5566: $a0
    ld a, a                                       ; $5567: $7f
    ld d, [hl]                                    ; $5568: $56
    rst $28                                       ; $5569: $ef
    xor a                                         ; $556a: $af
    rst $18                                       ; $556b: $df
    cp e                                          ; $556c: $bb
    rst $18                                       ; $556d: $df
    sbc l                                         ; $556e: $9d
    rst $38                                       ; $556f: $ff
    ld [bc], a                                    ; $5570: $02
    jr jr_0f3_5511                                ; $5571: $18 $9e

    and h                                         ; $5573: $a4
    cp h                                          ; $5574: $bc
    ld l, b                                       ; $5575: $68
    ld hl, sp+$58                                 ; $5576: $f8 $58
    cp b                                          ; $5578: $b8
    add sp, $18                                   ; $5579: $e8 $18
    ld hl, sp+$18                                 ; $557b: $f8 $18
    ld c, b                                       ; $557d: $48
    cp b                                          ; $557e: $b8
    cp h                                          ; $557f: $bc
    call nz, $e4bc                                ; $5580: $c4 $bc $e4
    adc $f2                                       ; $5583: $ce $f2
    rst $18                                       ; $5585: $df
    pop hl                                        ; $5586: $e1
    xor e                                         ; $5587: $ab
    db $fc                                        ; $5588: $fc
    ld [hl], a                                    ; $5589: $77
    ld a, b                                       ; $558a: $78
    dec a                                         ; $558b: $3d
    ccf                                           ; $558c: $3f
    ld c, $0f                                     ; $558d: $0e $0f
    ld [bc], a                                    ; $558f: $02
    inc bc                                        ; $5590: $03
    ld [bc], a                                    ; $5591: $02
    ld [bc], a                                    ; $5592: $02
    add l                                         ; $5593: $85
    rlca                                          ; $5594: $07
    dec b                                         ; $5595: $05
    ld c, $0a                                     ; $5596: $0e $0a
    dec c                                         ; $5598: $0d
    ld [bc], a                                    ; $5599: $02
    dec bc                                        ; $559a: $0b
    sub e                                         ; $559b: $93
    dec c                                         ; $559c: $0d
    rlca                                          ; $559d: $07
    dec b                                         ; $559e: $05
    rrca                                          ; $559f: $0f
    dec c                                         ; $55a0: $0d
    ei                                            ; $55a1: $fb
    db $fd                                        ; $55a2: $fd
    dec c                                         ; $55a3: $0d
    di                                            ; $55a4: $f3
    ld a, [$ae06]                                 ; $55a5: $fa $06 $ae
    sbc $78                                       ; $55a8: $de $78
    ld hl, sp+$20                                 ; $55aa: $f8 $20
    ldh [rLCDC], a                                ; $55ac: $e0 $40
    ret nz                                        ; $55ae: $c0

    ld [bc], a                                    ; $55af: $02
    add b                                         ; $55b0: $80
    ld [bc], a                                    ; $55b1: $02
    nop                                           ; $55b2: $00
    sbc d                                         ; $55b3: $9a
    ld a, l                                       ; $55b4: $7d
    ld a, e                                       ; $55b5: $7b
    ld l, $3b                                     ; $55b6: $2e $3b
    ld [hl], e                                    ; $55b8: $73
    ld a, a                                       ; $55b9: $7f
    ld e, a                                       ; $55ba: $5f
    ld a, a                                       ; $55bb: $7f
    ld a, l                                       ; $55bc: $7d
    ld a, [hl]                                    ; $55bd: $7e
    sbc e                                         ; $55be: $9b
    db $fc                                        ; $55bf: $fc
    db $eb                                        ; $55c0: $eb
    db $fc                                        ; $55c1: $fc
    ld e, l                                       ; $55c2: $5d
    ld a, a                                       ; $55c3: $7f
    sub e                                         ; $55c4: $93
    rst $38                                       ; $55c5: $ff
    ld l, a                                       ; $55c6: $6f
    ld a, a                                       ; $55c7: $7f
    ld d, h                                       ; $55c8: $54
    ld a, a                                       ; $55c9: $7f
    ld b, h                                       ; $55ca: $44
    ld a, a                                       ; $55cb: $7f
    ld a, $3f                                     ; $55cc: $3e $3f
    ld [bc], a                                    ; $55ce: $02
    dec de                                        ; $55cf: $1b
    ld [bc], a                                    ; $55d0: $02
    ld bc, $0008                                  ; $55d1: $01 $08 $00
    sub [hl]                                      ; $55d4: $96
    ld hl, sp-$01                                 ; $55d5: $f8 $ff
    rst $18                                       ; $55d7: $df
    ccf                                           ; $55d8: $3f
    ld sp, hl                                     ; $55d9: $f9
    rrca                                          ; $55da: $0f
    rst $38                                       ; $55db: $ff
    rst $20                                       ; $55dc: $e7
    ld a, $f2                                     ; $55dd: $3e $f2
    rra                                           ; $55df: $1f
    ld sp, hl                                     ; $55e0: $f9

jr_0f3_55e1:
    ei                                            ; $55e1: $fb
    db $fd                                        ; $55e2: $fd
    sub l                                         ; $55e3: $95
    cp $1f                                        ; $55e4: $fe $1f
    rst $38                                       ; $55e6: $ff
    jr c, jr_0f3_55e1                             ; $55e7: $38 $f8

    ld h, b                                       ; $55e9: $60
    ldh [rSC], a                                  ; $55ea: $e0 $02
    ret nz                                        ; $55ec: $c0

    ld d, $00                                     ; $55ed: $16 $00
    ld [bc], a                                    ; $55ef: $02
    add e                                         ; $55f0: $83
    add h                                         ; $55f1: $84
    ld sp, hl                                     ; $55f2: $f9
    ld a, c                                       ; $55f3: $79
    ld hl, sp-$78                                 ; $55f4: $f8 $88
    ld [bc], a                                    ; $55f6: $02
    ld [hl], b                                    ; $55f7: $70
    inc b                                         ; $55f8: $04
    nop                                           ; $55f9: $00
    rst $38                                       ; $55fa: $ff
    inc de                                        ; $55fb: $13
    rlca                                          ; $55fc: $07
    ld a, [$ec22]                                 ; $55fd: $fa $22 $ec
    ld a, [bc]                                    ; $5600: $0a
    db $ed                                        ; $5601: $ed
    ld a, [$02f0]                                 ; $5602: $fa $f0 $02
    or $0a                                        ; $5605: $f6 $0a
    ld sp, hl                                     ; $5607: $f9
    ld [de], a                                    ; $5608: $12
    db $fd                                        ; $5609: $fd
    ld a, [$02fd]                                 ; $560a: $fa $fd $02
    db $fd                                        ; $560d: $fd
    ld a, [bc]                                    ; $560e: $0a
    ld [bc], a                                    ; $560f: $02
    ld [$1c8b], sp                                ; $5610: $08 $8b $1c
    inc d                                         ; $5613: $14
    inc e                                         ; $5614: $1c
    inc d                                         ; $5615: $14
    dec e                                         ; $5616: $1d
    dec d                                         ; $5617: $15
    dec e                                         ; $5618: $1d
    dec d                                         ; $5619: $15
    ld e, $17                                     ; $561a: $1e $17
    rra                                           ; $561c: $1f
    ld [bc], a                                    ; $561d: $02
    rla                                           ; $561e: $17
    sub c                                         ; $561f: $91
    dec de                                        ; $5620: $1b
    rrca                                          ; $5621: $0f
    dec bc                                        ; $5622: $0b
    rrca                                          ; $5623: $0f
    add hl, bc                                    ; $5624: $09
    dec bc                                        ; $5625: $0b
    dec c                                         ; $5626: $0d
    rlca                                          ; $5627: $07
    dec b                                         ; $5628: $05
    rlca                                          ; $5629: $07
    dec b                                         ; $562a: $05
    ld l, a                                       ; $562b: $6f
    ld l, l                                       ; $562c: $6d
    sbc a                                         ; $562d: $9f
    db $fd                                        ; $562e: $fd
    ld a, l                                       ; $562f: $7d
    ld a, e                                       ; $5630: $7b
    ld [bc], a                                    ; $5631: $02
    ret nz                                        ; $5632: $c0

    sbc [hl]                                      ; $5633: $9e
    inc h                                         ; $5634: $24
    db $e4                                        ; $5635: $e4
    ld l, [hl]                                    ; $5636: $6e
    xor d                                         ; $5637: $aa
    ld l, [hl]                                    ; $5638: $6e
    xor d                                         ; $5639: $aa
    ld l, $ea                                     ; $563a: $2e $ea
    cp $f6                                        ; $563c: $fe $f6
    ld a, l                                       ; $563e: $7d
    rst $38                                       ; $563f: $ff
    sbc h                                         ; $5640: $9c
    db $e3                                        ; $5641: $e3
    rst $38                                       ; $5642: $ff
    nop                                           ; $5643: $00
    ld a, [c]                                     ; $5644: $f2
    rrca                                          ; $5645: $0f
    ld [hl], c                                    ; $5646: $71
    cp a                                          ; $5647: $bf
    adc $f7                                       ; $5648: $ce $f7
    cp a                                          ; $564a: $bf
    rst $08                                       ; $564b: $cf
    cp e                                          ; $564c: $bb
    rst $18                                       ; $564d: $df
    sbc l                                         ; $564e: $9d
    rst $38                                       ; $564f: $ff
    ld hl, sp-$01                                 ; $5650: $f8 $ff
    ld [bc], a                                    ; $5652: $02
    ld [$d49a], sp                                ; $5653: $08 $9a $d4
    call c, Call_0f3_7ca4                         ; $5656: $dc $a4 $7c
    ld e, b                                       ; $5659: $58
    cp b                                          ; $565a: $b8
    add sp, $18                                   ; $565b: $e8 $18
    add sp, $18                                   ; $565d: $e8 $18
    ld d, h                                       ; $565f: $54
    cp h                                          ; $5660: $bc
    call c, $bae4                                 ; $5661: $dc $e4 $ba
    add $dd                                       ; $5664: $c6 $dd
    di                                            ; $5666: $f3
    cp $e1                                        ; $5667: $fe $e1
    and a                                         ; $5669: $a7
    db $fc                                        ; $566a: $fc
    ld [hl], a                                    ; $566b: $77
    ld a, b                                       ; $566c: $78
    dec a                                         ; $566d: $3d
    ld a, $02                                     ; $566e: $3e $02
    add a                                         ; $5670: $87
    add d                                         ; $5671: $82
    add d                                         ; $5672: $82
    add e                                         ; $5673: $83
    ld [bc], a                                    ; $5674: $02
    ld [bc], a                                    ; $5675: $02
    sbc d                                         ; $5676: $9a
    rlca                                          ; $5677: $07
    dec b                                         ; $5678: $05
    ld c, $0a                                     ; $5679: $0e $0a
    dec c                                         ; $567b: $0d
    dec bc                                        ; $567c: $0b
    rrca                                          ; $567d: $0f
    dec c                                         ; $567e: $0d
    rlca                                          ; $567f: $07
    dec b                                         ; $5680: $05
    dec bc                                        ; $5681: $0b
    dec c                                         ; $5682: $0d
    push af                                       ; $5683: $f5
    ei                                            ; $5684: $fb
    sbc e                                         ; $5685: $9b
    ld h, a                                       ; $5686: $67
    or $0e                                        ; $5687: $f6 $0e
    call z, $38fc                                 ; $5689: $cc $fc $38
    ld hl, sp+$20                                 ; $568c: $f8 $20
    ldh [$60], a                                  ; $568e: $e0 $60
    ldh [rSC], a                                  ; $5690: $e0 $02
    ret nz                                        ; $5692: $c0

    ld [bc], a                                    ; $5693: $02
    nop                                           ; $5694: $00
    sbc b                                         ; $5695: $98
    ld l, $3b                                     ; $5696: $2e $3b
    ld [hl], e                                    ; $5698: $73
    ld a, a                                       ; $5699: $7f
    ld e, a                                       ; $569a: $5f
    ld a, a                                       ; $569b: $7f
    ld a, l                                       ; $569c: $7d
    ld a, [hl]                                    ; $569d: $7e
    sbc e                                         ; $569e: $9b
    db $fc                                        ; $569f: $fc
    db $eb                                        ; $56a0: $eb
    db $fc                                        ; $56a1: $fc
    ld e, l                                       ; $56a2: $5d
    ld a, a                                       ; $56a3: $7f
    sub e                                         ; $56a4: $93
    rst $38                                       ; $56a5: $ff
    ld l, a                                       ; $56a6: $6f
    ld a, a                                       ; $56a7: $7f
    ld d, h                                       ; $56a8: $54
    ld a, a                                       ; $56a9: $7f
    ld b, h                                       ; $56aa: $44
    ld a, a                                       ; $56ab: $7f
    ld a, $3f                                     ; $56ac: $3e $3f
    ld [bc], a                                    ; $56ae: $02
    dec de                                        ; $56af: $1b
    ld [bc], a                                    ; $56b0: $02
    ld bc, $000a                                  ; $56b1: $01 $0a $00
    sub h                                         ; $56b4: $94
    sbc a                                         ; $56b5: $9f
    ld a, a                                       ; $56b6: $7f
    push af                                       ; $56b7: $f5
    rrca                                          ; $56b8: $0f
    rst $38                                       ; $56b9: $ff
    db $e3                                        ; $56ba: $e3
    ccf                                           ; $56bb: $3f
    pop af                                        ; $56bc: $f1
    rra                                           ; $56bd: $1f
    ld hl, sp-$0b                                 ; $56be: $f8 $f5
    cp $96                                        ; $56c0: $fe $96
    rst $38                                       ; $56c2: $ff
    dec e                                         ; $56c3: $1d
    db $fd                                        ; $56c4: $fd
    jr c, @-$06                                   ; $56c5: $38 $f8

    ld h, b                                       ; $56c7: $60
    ldh [rSC], a                                  ; $56c8: $e0 $02
    ret nz                                        ; $56ca: $c0

    ld d, $00                                     ; $56cb: $16 $00
    adc b                                         ; $56cd: $88
    pop bc                                        ; $56ce: $c1
    ld b, c                                       ; $56cf: $41
    ldh [$a0], a                                  ; $56d0: $e0 $a0
    ld [hl], b                                    ; $56d2: $70
    ld d, b                                       ; $56d3: $50
    jr c, jr_0f3_56fe                             ; $56d4: $38 $28

    ld [bc], a                                    ; $56d6: $02
    db $10                                        ; $56d7: $10
    inc b                                         ; $56d8: $04
    nop                                           ; $56d9: $00
    rst $38                                       ; $56da: $ff
    inc de                                        ; $56db: $13
    rlca                                          ; $56dc: $07
    ld a, [$ec22]                                 ; $56dd: $fa $22 $ec
    ld a, [bc]                                    ; $56e0: $0a
    db $ed                                        ; $56e1: $ed
    ld a, [$02f0]                                 ; $56e2: $fa $f0 $02
    ld a, [c]                                     ; $56e5: $f2
    ld a, [bc]                                    ; $56e6: $0a
    ld hl, sp+$12                                 ; $56e7: $f8 $12
    db $fd                                        ; $56e9: $fd
    ld a, [$02fd]                                 ; $56ea: $fa $fd $02
    db $fd                                        ; $56ed: $fd
    ld a, [bc]                                    ; $56ee: $0a
    ld [bc], a                                    ; $56ef: $02
    db $10                                        ; $56f0: $10
    sub e                                         ; $56f1: $93
    jr c, @+$2a                                   ; $56f2: $38 $28

    jr c, @+$2a                                   ; $56f4: $38 $28

    ld [hl], e                                    ; $56f6: $73
    ld d, e                                       ; $56f7: $53
    ld [hl], d                                    ; $56f8: $72
    ld d, e                                       ; $56f9: $53
    ld [hl], d                                    ; $56fa: $72
    ld d, e                                       ; $56fb: $53
    ld [hl], d                                    ; $56fc: $72
    ld d, e                                       ; $56fd: $53

jr_0f3_56fe:
    add hl, sp                                    ; $56fe: $39
    add hl, hl                                    ; $56ff: $29
    dec l                                         ; $5700: $2d
    dec [hl]                                      ; $5701: $35
    ld d, $1b                                     ; $5702: $16 $1b
    rrca                                          ; $5704: $0f
    ld [bc], a                                    ; $5705: $02
    dec bc                                        ; $5706: $0b
    adc c                                         ; $5707: $89
    dec c                                         ; $5708: $0d
    rlca                                          ; $5709: $07
    dec b                                         ; $570a: $05
    ld l, a                                       ; $570b: $6f
    ld l, l                                       ; $570c: $6d
    sbc a                                         ; $570d: $9f
    db $fd                                        ; $570e: $fd
    ld a, a                                       ; $570f: $7f
    ld a, c                                       ; $5710: $79
    ld [bc], a                                    ; $5711: $02
    add b                                         ; $5712: $80
    sbc [hl]                                      ; $5713: $9e
    ld b, b                                       ; $5714: $40
    ret nz                                        ; $5715: $c0

    and b                                         ; $5716: $a0
    ld h, b                                       ; $5717: $60
    ld h, c                                       ; $5718: $61
    and c                                         ; $5719: $a1
    ld hl, $e7e1                                  ; $571a: $21 $e1 $e7
    and $7d                                       ; $571d: $e6 $7d
    rst $38                                       ; $571f: $ff
    call c, $ffe3                                 ; $5720: $dc $e3 $ff
    nop                                           ; $5723: $00
    pop af                                        ; $5724: $f1
    ld c, $51                                     ; $5725: $0e $51
    cp a                                          ; $5727: $bf
    ld c, h                                       ; $5728: $4c
    rst $30                                       ; $5729: $f7
    sbc a                                         ; $572a: $9f
    rst $28                                       ; $572b: $ef
    cp e                                          ; $572c: $bb
    rst $18                                       ; $572d: $df
    sbc h                                         ; $572e: $9c
    rst $38                                       ; $572f: $ff
    ld hl, sp-$01                                 ; $5730: $f8 $ff
    ld [bc], a                                    ; $5732: $02
    add b                                         ; $5733: $80
    add h                                         ; $5734: $84
    ret nz                                        ; $5735: $c0

    ld b, b                                       ; $5736: $40
    ret nz                                        ; $5737: $c0

    ld b, b                                       ; $5738: $40
    ld [bc], a                                    ; $5739: $02
    add b                                         ; $573a: $80
    ld [bc], a                                    ; $573b: $02
    nop                                           ; $573c: $00
    ld [bc], a                                    ; $573d: $02
    ret c                                         ; $573e: $d8

    sub h                                         ; $573f: $94
    and h                                         ; $5740: $a4
    ld a, h                                       ; $5741: $7c
    ld e, b                                       ; $5742: $58
    cp b                                          ; $5743: $b8
    ld l, b                                       ; $5744: $68
    sbc b                                         ; $5745: $98
    ld hl, sp+$08                                 ; $5746: $f8 $08
    ld d, h                                       ; $5748: $54
    cp h                                          ; $5749: $bc
    jp z, $bef6                                   ; $574a: $ca $f6 $be

    jp nz, $f3dd                                  ; $574d: $c2 $dd $f3

    cp $e1                                        ; $5750: $fe $e1
    xor a                                         ; $5752: $af
    db $f4                                        ; $5753: $f4
    ld [bc], a                                    ; $5754: $02
    ld [bc], a                                    ; $5755: $02
    sbc e                                         ; $5756: $9b
    rlca                                          ; $5757: $07
    dec b                                         ; $5758: $05
    ld c, $0a                                     ; $5759: $0e $0a
    ld c, $0a                                     ; $575b: $0e $0a
    dec bc                                        ; $575d: $0b
    dec c                                         ; $575e: $0d
    rlca                                          ; $575f: $07
    dec b                                         ; $5760: $05
    rlca                                          ; $5761: $07
    dec b                                         ; $5762: $05
    dec bc                                        ; $5763: $0b
    dec c                                         ; $5764: $0d
    push af                                       ; $5765: $f5
    ei                                            ; $5766: $fb
    sbc e                                         ; $5767: $9b
    ld h, a                                       ; $5768: $67
    or $0e                                        ; $5769: $f6 $0e
    call c, Call_000_30fc                         ; $576b: $dc $fc $30
    ldh a, [rNR41]                                ; $576e: $f0 $20
    ldh [$a0], a                                  ; $5770: $e0 $a0
    inc bc                                        ; $5772: $03
    ldh [$98], a                                  ; $5773: $e0 $98
    ld [hl], $3b                                  ; $5775: $36 $3b
    ld [hl], e                                    ; $5777: $73
    ld a, a                                       ; $5778: $7f
    ld e, a                                       ; $5779: $5f
    ld a, a                                       ; $577a: $7f
    ld a, l                                       ; $577b: $7d
    ld a, [hl]                                    ; $577c: $7e
    sbc e                                         ; $577d: $9b
    db $fc                                        ; $577e: $fc
    db $eb                                        ; $577f: $eb
    db $fc                                        ; $5780: $fc
    ld e, l                                       ; $5781: $5d
    ld a, a                                       ; $5782: $7f
    sub e                                         ; $5783: $93
    rst $38                                       ; $5784: $ff
    ld l, a                                       ; $5785: $6f
    ld a, a                                       ; $5786: $7f
    ld d, h                                       ; $5787: $54
    ld a, a                                       ; $5788: $7f
    ld b, h                                       ; $5789: $44
    ld a, a                                       ; $578a: $7f
    ld a, $3f                                     ; $578b: $3e $3f
    ld [bc], a                                    ; $578d: $02
    dec de                                        ; $578e: $1b
    ld [bc], a                                    ; $578f: $02
    ld bc, $000a                                  ; $5790: $01 $0a $00
    sub h                                         ; $5793: $94
    rst $20                                       ; $5794: $e7
    rra                                           ; $5795: $1f
    rst $38                                       ; $5796: $ff
    inc bc                                        ; $5797: $03
    rst $28                                       ; $5798: $ef
    pop af                                        ; $5799: $f1
    dec sp                                        ; $579a: $3b
    db $fc                                        ; $579b: $fc
    rra                                           ; $579c: $1f
    cp $f3                                        ; $579d: $fe $f3
    rst $38                                       ; $579f: $ff
    sub [hl]                                      ; $57a0: $96
    cp $1c                                        ; $57a1: $fe $1c
    db $fc                                        ; $57a3: $fc
    jr c, @-$06                                   ; $57a4: $38 $f8

    ld h, b                                       ; $57a6: $60
    ldh [rSC], a                                  ; $57a7: $e0 $02
    ret nz                                        ; $57a9: $c0

    ld c, $00                                     ; $57aa: $0e $00
    adc [hl]                                      ; $57ac: $8e
    ld [hl], a                                    ; $57ad: $77
    ld a, b                                       ; $57ae: $78
    sbc l                                         ; $57af: $9d
    sbc [hl]                                      ; $57b0: $9e
    rst $00                                       ; $57b1: $c7
    ld b, a                                       ; $57b2: $47
    pop hl                                        ; $57b3: $e1
    ld hl, $a1e1                                  ; $57b4: $21 $e1 $a1
    ld [hl], b                                    ; $57b7: $70
    ld d, b                                       ; $57b8: $50
    ld [hl], b                                    ; $57b9: $70
    ld d, b                                       ; $57ba: $50
    ld [bc], a                                    ; $57bb: $02
    jr nz, @+$08                                  ; $57bc: $20 $06

    nop                                           ; $57be: $00
    rst $38                                       ; $57bf: $ff
    inc de                                        ; $57c0: $13
    rlca                                          ; $57c1: $07
    ld a, [$ec22]                                 ; $57c2: $fa $22 $ec
    ld a, [bc]                                    ; $57c5: $0a
    ldh a, [$fa]                                  ; $57c6: $f0 $fa
    pop af                                        ; $57c8: $f1
    ld [bc], a                                    ; $57c9: $02
    db $f4                                        ; $57ca: $f4
    ld a, [bc]                                    ; $57cb: $0a
    db $fd                                        ; $57cc: $fd
    ld de, $fa00                                  ; $57cd: $11 $00 $fa
    nop                                           ; $57d0: $00
    ld [bc], a                                    ; $57d1: $02
    nop                                           ; $57d2: $00
    add hl, bc                                    ; $57d3: $09
    ld [bc], a                                    ; $57d4: $02
    ld h, e                                       ; $57d5: $63
    sbc [hl]                                      ; $57d6: $9e
    push hl                                       ; $57d7: $e5
    and [hl]                                      ; $57d8: $a6
    db $eb                                        ; $57d9: $eb
    xor l                                         ; $57da: $ad
    jp hl                                         ; $57db: $e9


    xor a                                         ; $57dc: $af
    rst $20                                       ; $57dd: $e7
    and a                                         ; $57de: $a7
    db $e3                                        ; $57df: $e3
    and e                                         ; $57e0: $a3
    ld a, d                                       ; $57e1: $7a
    ld e, e                                       ; $57e2: $5b
    ld d, a                                       ; $57e3: $57
    ld l, [hl]                                    ; $57e4: $6e
    ccf                                           ; $57e5: $3f
    ld [hl-], a                                   ; $57e6: $32
    rra                                           ; $57e7: $1f
    add hl, de                                    ; $57e8: $19
    ld a, e                                       ; $57e9: $7b
    ld a, l                                       ; $57ea: $7d
    sbc e                                         ; $57eb: $9b
    db $fd                                        ; $57ec: $fd
    ld a, a                                       ; $57ed: $7f
    ld a, c                                       ; $57ee: $79
    dec [hl]                                      ; $57ef: $35
    dec sp                                        ; $57f0: $3b
    ld a, e                                       ; $57f1: $7b
    ld [hl], a                                    ; $57f2: $77
    ld e, l                                       ; $57f3: $5d
    ld a, [hl]                                    ; $57f4: $7e
    inc b                                         ; $57f5: $04
    add b                                         ; $57f6: $80
    ld [bc], a                                    ; $57f7: $02
    ld [$749a], sp                                ; $57f8: $08 $9a $74
    ld a, h                                       ; $57fb: $7c
    cp a                                          ; $57fc: $bf
    jp $01fe                                      ; $57fd: $c3 $fe $01


    ld [$411d], a                                 ; $5800: $ea $1d $41
    cp $a1                                        ; $5803: $fe $a1
    sbc $dd                                       ; $5805: $de $dd
    cp [hl]                                       ; $5807: $be
    ld a, [hl]                                    ; $5808: $7e
    cp a                                          ; $5809: $bf
    ld a, [hl-]                                   ; $580a: $3a
    rst $38                                       ; $580b: $ff
    cp l                                          ; $580c: $bd
    cp $ff                                        ; $580d: $fe $ff
    cp $df                                        ; $580f: $fe $df
    inc a                                         ; $5811: $3c
    xor $1d                                       ; $5812: $ee $1d
    ld [bc], a                                    ; $5814: $02

jr_0f3_5815:
    ld b, b                                       ; $5815: $40
    add d                                         ; $5816: $82
    ldh [$a0], a                                  ; $5817: $e0 $a0
    ld [bc], a                                    ; $5819: $02
    ret nz                                        ; $581a: $c0

    adc e                                         ; $581b: $8b
    ld b, b                                       ; $581c: $40
    ret nz                                        ; $581d: $c0

    cp b                                          ; $581e: $b8
    ld a, b                                       ; $581f: $78
    db $e4                                        ; $5820: $e4

jr_0f3_5821:
    inc a                                         ; $5821: $3c
    ret c                                         ; $5822: $d8

    jr c, jr_0f3_5815                             ; $5823: $38 $f0

    sub b                                         ; $5825: $90
    ld d, b                                       ; $5826: $50
    ld [bc], a                                    ; $5827: $02
    or b                                          ; $5828: $b0
    adc l                                         ; $5829: $8d
    ld [hl], b                                    ; $582a: $70
    ldh [$60], a                                  ; $582b: $e0 $60
    ldh [$60], a                                  ; $582d: $e0 $60
    jr nc, jr_0f3_5821                            ; $582f: $30 $f0

    rst $08                                       ; $5831: $cf
    ccf                                           ; $5832: $3f
    ld a, a                                       ; $5833: $7f
    add b                                         ; $5834: $80
    call Call_000_02ff                            ; $5835: $cd $ff $02
    ld [bc], a                                    ; $5838: $02
    adc d                                         ; $5839: $8a
    rrca                                          ; $583a: $0f
    dec c                                         ; $583b: $0d
    ld d, $1a                                     ; $583c: $16 $1a
    ld a, h                                       ; $583e: $7c
    ld h, h                                       ; $583f: $64
    jr c, jr_0f3_588a                             ; $5840: $38 $48

    ld [hl], b                                    ; $5842: $70
    jr nc, jr_0f3_5847                            ; $5843: $30 $02

    ld h, b                                       ; $5845: $60
    ld [bc], a                                    ; $5846: $02

jr_0f3_5847:
    add b                                         ; $5847: $80
    add d                                         ; $5848: $82
    ld b, b                                       ; $5849: $40
    ret nz                                        ; $584a: $c0

    ld [bc], a                                    ; $584b: $02
    add b                                         ; $584c: $80
    inc c                                         ; $584d: $0c
    nop                                           ; $584e: $00
    sub d                                         ; $584f: $92
    ld a, e                                       ; $5850: $7b
    ld a, h                                       ; $5851: $7c
    sbc d                                         ; $5852: $9a
    db $fd                                        ; $5853: $fd
    ld [$5dfd], a                                 ; $5854: $ea $fd $5d
    ld a, a                                       ; $5857: $7f
    sub e                                         ; $5858: $93
    rst $38                                       ; $5859: $ff
    ld l, a                                       ; $585a: $6f
    ld a, a                                       ; $585b: $7f
    ld d, h                                       ; $585c: $54
    ld a, a                                       ; $585d: $7f
    ld b, h                                       ; $585e: $44
    ld a, a                                       ; $585f: $7f
    ld a, $3f                                     ; $5860: $3e $3f
    ld [bc], a                                    ; $5862: $02
    dec de                                        ; $5863: $1b
    ld [bc], a                                    ; $5864: $02
    ld bc, $000c                                  ; $5865: $01 $0c $00
    sub d                                         ; $5868: $92
    ld [hl], $cf                                  ; $5869: $36 $cf
    rst $38                                       ; $586b: $ff
    rst $20                                       ; $586c: $e7
    dec sp                                        ; $586d: $3b
    rst $30                                       ; $586e: $f7
    dec d                                         ; $586f: $15
    ei                                            ; $5870: $fb
    rst $38                                       ; $5871: $ff
    ld sp, hl                                     ; $5872: $f9
    sub [hl]                                      ; $5873: $96
    db $fd                                        ; $5874: $fd
    rra                                           ; $5875: $1f
    cp $39                                        ; $5876: $fe $39
    ld sp, hl                                     ; $5878: $f9
    ld h, b                                       ; $5879: $60
    ldh [rSC], a                                  ; $587a: $e0 $02
    ret nz                                        ; $587c: $c0

    ld [de], a                                    ; $587d: $12
    nop                                           ; $587e: $00
    adc b                                         ; $587f: $88
    dec a                                         ; $5880: $3d
    ccf                                           ; $5881: $3f
    ld [$660f], sp                                ; $5882: $08 $0f $66
    ld h, a                                       ; $5885: $67
    ld [hl], c                                    ; $5886: $71
    ld de, $7002                                  ; $5887: $11 $02 $70

jr_0f3_588a:
    ld c, $00                                     ; $588a: $0e $00
    rst $38                                       ; $588c: $ff
    inc de                                        ; $588d: $13
    rlca                                          ; $588e: $07
    ld a, [$ec22]                                 ; $588f: $fa $22 $ec
    ld a, [bc]                                    ; $5892: $0a
    rst $28                                       ; $5893: $ef
    ld a, [$02f1]                                 ; $5894: $fa $f1 $02
    di                                            ; $5897: $f3
    ld a, [bc]                                    ; $5898: $0a
    rst $38                                       ; $5899: $ff
    ld a, [$02ff]                                 ; $589a: $fa $ff $02
    rst $38                                       ; $589d: $ff
    ld a, [bc]                                    ; $589e: $0a
    rst $38                                       ; $589f: $ff
    inc c                                         ; $58a0: $0c
    ld [bc], a                                    ; $58a1: $02
    inc c                                         ; $58a2: $0c
    sbc [hl]                                      ; $58a3: $9e
    ld a, [bc]                                    ; $58a4: $0a
    ld c, $0d                                     ; $58a5: $0e $0d
    dec bc                                        ; $58a7: $0b
    ld c, l                                       ; $58a8: $4d
    ld c, e                                       ; $58a9: $4b
    jp hl                                         ; $58aa: $e9


    xor a                                         ; $58ab: $af
    rst $20                                       ; $58ac: $e7
    and a                                         ; $58ad: $a7
    ld [c], a                                     ; $58ae: $e2
    and e                                         ; $58af: $a3
    push hl                                       ; $58b0: $e5
    and [hl]                                      ; $58b1: $a6
    cp a                                          ; $58b2: $bf
    sbc $5d                                       ; $58b3: $de $5d
    ld h, e                                       ; $58b5: $63
    ld a, [hl-]                                   ; $58b6: $3a
    dec a                                         ; $58b7: $3d
    ld a, a                                       ; $58b8: $7f
    ld a, h                                       ; $58b9: $7c
    sbc l                                         ; $58ba: $9d
    cp $7d                                        ; $58bb: $fe $7d
    ld a, [hl]                                    ; $58bd: $7e
    dec sp                                        ; $58be: $3b
    dec a                                         ; $58bf: $3d
    ld [hl], a                                    ; $58c0: $77
    ld a, e                                       ; $58c1: $7b
    ld [bc], a                                    ; $58c2: $02
    inc b                                         ; $58c3: $04
    adc e                                         ; $58c4: $8b
    ld a, e                                       ; $58c5: $7b
    ld a, a                                       ; $58c6: $7f
    sbc [hl]                                      ; $58c7: $9e
    pop hl                                        ; $58c8: $e1

jr_0f3_58c9:
    ld a, a                                       ; $58c9: $7f
    add b                                         ; $58ca: $80
    db $e3                                        ; $58cb: $e3
    inc a                                         ; $58cc: $3c
    add b                                         ; $58cd: $80
    ld a, a                                       ; $58ce: $7f
    xor [hl]                                      ; $58cf: $ae
    ld [bc], a                                    ; $58d0: $02
    rst $18                                       ; $58d1: $df
    sub c                                         ; $58d2: $91
    cp a                                          ; $58d3: $bf
    rst $18                                       ; $58d4: $df
    cp e                                          ; $58d5: $bb
    push af                                       ; $58d6: $f5
    cp l                                          ; $58d7: $bd
    xor e                                         ; $58d8: $ab
    ei                                            ; $58d9: $fb
    cp [hl]                                       ; $58da: $be
    rst $38                                       ; $58db: $ff
    db $fd                                        ; $58dc: $fd
    cp $1d                                        ; $58dd: $fe $1d
    cp $ed                                        ; $58df: $fe $ed
    ld e, $35                                     ; $58e1: $1e $35
    adc $02                                       ; $58e3: $ce $02
    ret nz                                        ; $58e5: $c0

    sub l                                         ; $58e6: $95
    jr nz, jr_0f3_58c9                            ; $58e7: $20 $e0

    ret c                                         ; $58e9: $d8

    jr c, @-$0a                                   ; $58ea: $38 $f4

    inc e                                         ; $58ec: $1c
    ld l, d                                       ; $58ed: $6a
    sbc [hl]                                      ; $58ee: $9e
    inc e                                         ; $58ef: $1c
    db $ec                                        ; $58f0: $ec
    cp b                                          ; $58f1: $b8
    add sp, -$28                                  ; $58f2: $e8 $d8
    add sp, $68                                   ; $58f4: $e8 $68
    sbc b                                         ; $58f6: $98
    ldh a, [rNR10]                                ; $58f7: $f0 $10
    ld h, b                                       ; $58f9: $60
    and b                                         ; $58fa: $a0
    ret nz                                        ; $58fb: $c0

    ld [bc], a                                    ; $58fc: $02
    ld b, b                                       ; $58fd: $40
    sbc e                                         ; $58fe: $9b
    ret nz                                        ; $58ff: $c0

    ld b, b                                       ; $5900: $40
    ret nz                                        ; $5901: $c0

    db $e3                                        ; $5902: $e3
    ld h, e                                       ; $5903: $63
    ld a, a                                       ; $5904: $7f
    cp h                                          ; $5905: $bc
    ld e, l                                       ; $5906: $5d
    ld a, [hl]                                    ; $5907: $7e
    ld a, a                                       ; $5908: $7f
    ld a, h                                       ; $5909: $7c
    sbc d                                         ; $590a: $9a
    db $fd                                        ; $590b: $fd
    ld [$5dfd], a                                 ; $590c: $ea $fd $5d
    ld a, a                                       ; $590f: $7f
    sub e                                         ; $5910: $93
    rst $38                                       ; $5911: $ff
    ld l, a                                       ; $5912: $6f
    ld a, a                                       ; $5913: $7f
    ld d, h                                       ; $5914: $54
    ld a, a                                       ; $5915: $7f
    ld b, h                                       ; $5916: $44
    ld a, a                                       ; $5917: $7f
    ld a, $3f                                     ; $5918: $3e $3f
    ld [bc], a                                    ; $591a: $02
    dec de                                        ; $591b: $1b
    ld [bc], a                                    ; $591c: $02
    ld bc, $000c                                  ; $591d: $01 $0c $00
    sub d                                         ; $5920: $92
    ld e, l                                       ; $5921: $5d
    and $ef                                       ; $5922: $e6 $ef
    or $3b                                        ; $5924: $f6 $3b
    rst $30                                       ; $5926: $f7
    ld a, [de]                                    ; $5927: $1a
    rst $30                                       ; $5928: $f7
    rst $38                                       ; $5929: $ff
    ei                                            ; $592a: $fb
    sub a                                         ; $592b: $97
    db $fd                                        ; $592c: $fd
    dec e                                         ; $592d: $1d
    cp $3b                                        ; $592e: $fe $3b
    ei                                            ; $5930: $fb
    ld h, b                                       ; $5931: $60
    ldh [rSC], a                                  ; $5932: $e0 $02
    ret nz                                        ; $5934: $c0

    stop                                          ; $5935: $10 $00
    add [hl]                                      ; $5937: $86
    rst $18                                       ; $5938: $df
    db $e3                                        ; $5939: $e3
    inc a                                         ; $593a: $3c
    db $fc                                        ; $593b: $fc
    jr nz, @-$1e                                  ; $593c: $20 $e0

    inc bc                                        ; $593e: $03
    ret nz                                        ; $593f: $c0

    add c                                         ; $5940: $81
    ld b, b                                       ; $5941: $40
    ld [bc], a                                    ; $5942: $02
    ret nz                                        ; $5943: $c0

    ld c, $00                                     ; $5944: $0e $00
    ld [bc], a                                    ; $5946: $02
    ld [bc], a                                    ; $5947: $02
    add d                                         ; $5948: $82
    inc bc                                        ; $5949: $03
    ld bc, $0202                                  ; $594a: $01 $02 $02
    jr jr_0f3_594f                                ; $594d: $18 $00

jr_0f3_594f:
    rst $38                                       ; $594f: $ff
    ld de, $fa06                                  ; $5950: $11 $06 $fa
    ld [hl+], a                                   ; $5953: $22
    db $ec                                        ; $5954: $ec
    ld a, [bc]                                    ; $5955: $0a
    rst $28                                       ; $5956: $ef
    ld a, [$02ef]                                 ; $5957: $fa $ef $02
    rst $28                                       ; $595a: $ef
    ld a, [bc]                                    ; $595b: $0a
    rst $38                                       ; $595c: $ff
    ld a, [$02ff]                                 ; $595d: $fa $ff $02
    rst $38                                       ; $5960: $ff
    ld b, $02                                     ; $5961: $06 $02
    ld [$149e], sp                                ; $5963: $08 $9e $14
    inc e                                         ; $5966: $1c
    ld a, [de]                                    ; $5967: $1a
    ld d, $0d                                     ; $5968: $16 $0d
    dec bc                                        ; $596a: $0b
    ld l, c                                       ; $596b: $69
    ld l, a                                       ; $596c: $6f
    rst $20                                       ; $596d: $e7
    and a                                         ; $596e: $a7
    ld [c], a                                     ; $596f: $e2
    and e                                         ; $5970: $a3
    push hl                                       ; $5971: $e5
    and [hl]                                      ; $5972: $a6
    rst $18                                       ; $5973: $df
    cp [hl]                                       ; $5974: $be
    ld a, l                                       ; $5975: $7d
    ld b, e                                       ; $5976: $43
    ld a, [hl-]                                   ; $5977: $3a
    dec a                                         ; $5978: $3d
    ld a, l                                       ; $5979: $7d
    ld a, [hl]                                    ; $597a: $7e
    sbc l                                         ; $597b: $9d
    cp $7d                                        ; $597c: $fe $7d
    ld a, [hl]                                    ; $597e: $7e
    dec sp                                        ; $597f: $3b
    dec a                                         ; $5980: $3d
    ld [hl], a                                    ; $5981: $77
    ld a, e                                       ; $5982: $7b
    ld [bc], a                                    ; $5983: $02
    rrca                                          ; $5984: $0f
    sbc [hl]                                      ; $5985: $9e
    dec de                                        ; $5986: $1b
    inc e                                         ; $5987: $1c
    cpl                                           ; $5988: $2f

jr_0f3_5989:
    jr nc, jr_0f3_5a07                            ; $5989: $30 $7c

    ld b, e                                       ; $598b: $43
    ldh a, [$8f]                                  ; $598c: $f0 $8f
    jp $873f                                      ; $598e: $c3 $3f $87


    ld a, a                                       ; $5991: $7f
    ld l, l                                       ; $5992: $6d
    db $dd                                        ; $5993: $dd
    sbc e                                         ; $5994: $9b
    ld a, [$b5d7]                                 ; $5995: $fa $d7 $b5
    push de                                       ; $5998: $d5
    or a                                          ; $5999: $b7
    cp d                                          ; $599a: $ba
    cp $a5                                        ; $599b: $fe $a5
    db $fd                                        ; $599d: $fd
    cp l                                          ; $599e: $bd
    db $fd                                        ; $599f: $fd
    cp $ff                                        ; $59a0: $fe $ff
    ld de, $02ff                                  ; $59a2: $11 $ff $02
    ret nz                                        ; $59a5: $c0

    or d                                          ; $59a6: $b2
    jr nz, jr_0f3_5989                            ; $59a7: $20 $e0

    ldh a, [rNR10]                                ; $59a9: $f0 $10
    ld hl, sp+$08                                 ; $59ab: $f8 $08
    ld a, $c6                                     ; $59ad: $3e $c6
    ld e, l                                       ; $59af: $5d
    rst $20                                       ; $59b0: $e7
    sbc d                                         ; $59b1: $9a
    and $ce                                       ; $59b2: $e6 $ce
    ld a, [c]                                     ; $59b4: $f2
    sbc $f2                                       ; $59b5: $de $f2
    ld e, d                                       ; $59b7: $5a
    ld h, [hl]                                    ; $59b8: $66
    cp h                                          ; $59b9: $bc
    call nz, $8cf4                                ; $59ba: $c4 $f4 $8c
    ld l, b                                       ; $59bd: $68
    sbc b                                         ; $59be: $98
    ret nc                                        ; $59bf: $d0

    jr nc, @-$5e                                  ; $59c0: $30 $a0

    ld h, b                                       ; $59c2: $60
    ld b, b                                       ; $59c3: $40
    ret nz                                        ; $59c4: $c0

    ld e, l                                       ; $59c5: $5d
    ld a, [hl]                                    ; $59c6: $7e
    ld a, a                                       ; $59c7: $7f
    ld a, h                                       ; $59c8: $7c
    sbc d                                         ; $59c9: $9a
    db $fd                                        ; $59ca: $fd
    ld [$5dfd], a                                 ; $59cb: $ea $fd $5d
    ld a, a                                       ; $59ce: $7f
    sub e                                         ; $59cf: $93
    rst $38                                       ; $59d0: $ff
    ld l, a                                       ; $59d1: $6f
    ld a, a                                       ; $59d2: $7f
    ld d, h                                       ; $59d3: $54
    ld a, a                                       ; $59d4: $7f
    ld b, h                                       ; $59d5: $44
    ld a, a                                       ; $59d6: $7f
    ld a, $3f                                     ; $59d7: $3e $3f
    ld [bc], a                                    ; $59d9: $02
    dec de                                        ; $59da: $1b
    ld [bc], a                                    ; $59db: $02
    ld bc, $0008                                  ; $59dc: $01 $08 $00
    sub [hl]                                      ; $59df: $96
    db $eb                                        ; $59e0: $eb
    ld e, $37                                     ; $59e1: $1e $37
    adc $de                                       ; $59e3: $ce $de
    rst $20                                       ; $59e5: $e7
    rst $28                                       ; $59e6: $ef
    rst $30                                       ; $59e7: $f7
    ld a, [hl-]                                   ; $59e8: $3a
    or $1a                                        ; $59e9: $f6 $1a
    or $fe                                        ; $59eb: $f6 $fe
    ld a, [$fd97]                                 ; $59ed: $fa $97 $fd
    dec e                                         ; $59f0: $1d
    cp $3b                                        ; $59f1: $fe $3b
    ei                                            ; $59f3: $fb
    ld h, b                                       ; $59f4: $60
    ldh [rSC], a                                  ; $59f5: $e0 $02
    ret nz                                        ; $59f7: $c0

    ld [$8300], sp                                ; $59f8: $08 $00 $83
    inc b                                         ; $59fb: $04
    inc c                                         ; $59fc: $0c
    inc b                                         ; $59fd: $04
    ld [bc], a                                    ; $59fe: $02
    inc c                                         ; $59ff: $0c
    add l                                         ; $5a00: $85
    inc b                                         ; $5a01: $04
    ld a, [bc]                                    ; $5a02: $0a
    ld b, $0f                                     ; $5a03: $06 $0f
    add hl, bc                                    ; $5a05: $09
    ld [bc], a                                    ; $5a06: $02

jr_0f3_5a07:
    rlca                                          ; $5a07: $07
    ld [bc], a                                    ; $5a08: $02
    nop                                           ; $5a09: $00
    ld [bc], a                                    ; $5a0a: $02
    ld [$0c82], sp                                ; $5a0b: $08 $82 $0c
    inc b                                         ; $5a0e: $04
    ld [bc], a                                    ; $5a0f: $02
    ld [$000c], sp                                ; $5a10: $08 $0c $00
    rst $38                                       ; $5a13: $ff
    inc de                                        ; $5a14: $13
    rlca                                          ; $5a15: $07
    ld a, [$ec22]                                 ; $5a16: $fa $22 $ec
    ld a, [bc]                                    ; $5a19: $0a
    pop af                                        ; $5a1a: $f1
    ld a, [$02f0]                                 ; $5a1b: $fa $f0 $02
    rst $28                                       ; $5a1e: $ef
    ld a, [bc]                                    ; $5a1f: $0a
    ldh a, [$0d]                                  ; $5a20: $f0 $0d
    rst $38                                       ; $5a22: $ff
    ld a, [$02ff]                                 ; $5a23: $fa $ff $02
    rst $38                                       ; $5a26: $ff
    dec b                                         ; $5a27: $05
    ld [bc], a                                    ; $5a28: $02
    ld b, b                                       ; $5a29: $40
    sbc [hl]                                      ; $5a2a: $9e
    db $e3                                        ; $5a2b: $e3
    and e                                         ; $5a2c: $a3
    and $a5                                       ; $5a2d: $e6 $a5
    rst $20                                       ; $5a2f: $e7
    and a                                         ; $5a30: $a7
    ldh [$a0], a                                  ; $5a31: $e0 $a0
    or b                                          ; $5a33: $b0
    ret nc                                        ; $5a34: $d0

    ld l, e                                       ; $5a35: $6b
    ld e, e                                       ; $5a36: $5b
    dec a                                         ; $5a37: $3d
    ld h, $16                                     ; $5a38: $26 $16
    dec de                                        ; $5a3a: $1b
    ld a, e                                       ; $5a3b: $7b
    ld a, l                                       ; $5a3c: $7d
    sbc e                                         ; $5a3d: $9b
    db $fd                                        ; $5a3e: $fd
    ld a, e                                       ; $5a3f: $7b
    ld a, l                                       ; $5a40: $7d
    ld [hl], $3b                                  ; $5a41: $36 $3b
    ld a, a                                       ; $5a43: $7f
    ld [hl], a                                    ; $5a44: $77
    ld e, l                                       ; $5a45: $5d
    ld a, [hl]                                    ; $5a46: $7e
    ld a, a                                       ; $5a47: $7f
    ld a, h                                       ; $5a48: $7c
    ld [bc], a                                    ; $5a49: $02
    inc bc                                        ; $5a4a: $03
    sbc [hl]                                      ; $5a4b: $9e
    ld [bc], a                                    ; $5a4c: $02
    inc bc                                        ; $5a4d: $03
    add l                                         ; $5a4e: $85
    add [hl]                                      ; $5a4f: $86
    ld l, e                                       ; $5a50: $6b
    db $ec                                        ; $5a51: $ec
    rst $30                                       ; $5a52: $f7
    ld hl, sp+$5e                                 ; $5a53: $f8 $5e
    ld h, c                                       ; $5a55: $61
    cp b                                          ; $5a56: $b8
    rst $00                                       ; $5a57: $c7
    db $ed                                        ; $5a58: $ed
    dec de                                        ; $5a59: $1b
    cp e                                          ; $5a5a: $bb
    ld [hl], a                                    ; $5a5b: $77
    ld b, a                                       ; $5a5c: $47
    rst $38                                       ; $5a5d: $ff
    dec l                                         ; $5a5e: $2d
    rst $18                                       ; $5a5f: $df
    sbc d                                         ; $5a60: $9a
    cp $24                                        ; $5a61: $fe $24
    db $fc                                        ; $5a63: $fc
    ei                                            ; $5a64: $fb
    rst $38                                       ; $5a65: $ff
    inc e                                         ; $5a66: $1c
    rst $38                                       ; $5a67: $ff
    add sp, $1f                                   ; $5a68: $e8 $1f
    ld [bc], a                                    ; $5a6a: $02
    ld a, a                                       ; $5a6b: $7f
    adc h                                         ; $5a6c: $8c
    cp a                                          ; $5a6d: $bf
    ret nz                                        ; $5a6e: $c0

    di                                            ; $5a6f: $f3
    ld e, $c4                                     ; $5a70: $1e $c4
    ccf                                           ; $5a72: $3f
    sbc [hl]                                      ; $5a73: $9e
    ld a, a                                       ; $5a74: $7f
    cp e                                          ; $5a75: $bb
    ld a, e                                       ; $5a76: $7b
    ld h, c                                       ; $5a77: $61
    pop hl                                        ; $5a78: $e1
    ld [bc], a                                    ; $5a79: $02
    rst $00                                       ; $5a7a: $c7
    sub b                                         ; $5a7b: $90
    sbc c                                         ; $5a7c: $99
    sbc a                                         ; $5a7d: $9f
    inc hl                                        ; $5a7e: $23
    ld a, $1d                                     ; $5a7f: $3e $1d
    ld e, $0b                                     ; $5a81: $1e $0b
    dec c                                         ; $5a83: $0d
    ld d, $1a                                     ; $5a84: $16 $1a
    inc e                                         ; $5a86: $1c
    inc d                                         ; $5a87: $14
    jr c, jr_0f3_5ab2                             ; $5a88: $38 $28

    cp b                                          ; $5a8a: $b8
    xor b                                         ; $5a8b: $a8
    ld [bc], a                                    ; $5a8c: $02
    inc b                                         ; $5a8d: $04
    sub b                                         ; $5a8e: $90
    ld b, $02                                     ; $5a8f: $06 $02
    rlca                                          ; $5a91: $07
    ld bc, $0503                                  ; $5a92: $01 $03 $05
    inc bc                                        ; $5a95: $03
    dec b                                         ; $5a96: $05
    inc bc                                        ; $5a97: $03
    dec b                                         ; $5a98: $05
    inc bc                                        ; $5a99: $03
    dec b                                         ; $5a9a: $05
    ld b, $02                                     ; $5a9b: $06 $02
    ld b, $02                                     ; $5a9d: $06 $02
    ld [bc], a                                    ; $5a9f: $02
    inc b                                         ; $5aa0: $04
    ld a, [bc]                                    ; $5aa1: $0a
    nop                                           ; $5aa2: $00
    ld [bc], a                                    ; $5aa3: $02
    add b                                         ; $5aa4: $80

jr_0f3_5aa5:
    inc b                                         ; $5aa5: $04
    nop                                           ; $5aa6: $00
    sub b                                         ; $5aa7: $90
    sbc d                                         ; $5aa8: $9a
    db $fd                                        ; $5aa9: $fd
    ld [$5dfd], a                                 ; $5aaa: $ea $fd $5d
    ld a, a                                       ; $5aad: $7f
    sub e                                         ; $5aae: $93
    rst $38                                       ; $5aaf: $ff
    ld l, a                                       ; $5ab0: $6f
    ld a, a                                       ; $5ab1: $7f

jr_0f3_5ab2:
    ld d, h                                       ; $5ab2: $54
    ld a, a                                       ; $5ab3: $7f
    ld b, h                                       ; $5ab4: $44
    ld a, a                                       ; $5ab5: $7f
    ld a, $3f                                     ; $5ab6: $3e $3f
    ld [bc], a                                    ; $5ab8: $02
    dec de                                        ; $5ab9: $1b
    ld [bc], a                                    ; $5aba: $02
    ld bc, $000a                                  ; $5abb: $01 $0a $00
    sub h                                         ; $5abe: $94
    scf                                           ; $5abf: $37
    rst $08                                       ; $5ac0: $cf
    db $dd                                        ; $5ac1: $dd
    rst $20                                       ; $5ac2: $e7
    rst $28                                       ; $5ac3: $ef
    rst $30                                       ; $5ac4: $f7
    ld a, [hl-]                                   ; $5ac5: $3a
    or $1a                                        ; $5ac6: $f6 $1a
    or $fe                                        ; $5ac8: $f6 $fe
    ld a, [$fd97]                                 ; $5aca: $fa $97 $fd
    dec e                                         ; $5acd: $1d
    cp $3b                                        ; $5ace: $fe $3b
    ei                                            ; $5ad0: $fb
    ld h, b                                       ; $5ad1: $60
    ldh [rSC], a                                  ; $5ad2: $e0 $02
    ret nz                                        ; $5ad4: $c0

    ld [$0200], sp                                ; $5ad5: $08 $00 $02
    inc b                                         ; $5ad8: $04
    ld [bc], a                                    ; $5ad9: $02
    ld b, $82                                     ; $5ada: $06 $82
    dec b                                         ; $5adc: $05
    rlca                                          ; $5add: $07
    ld [bc], a                                    ; $5ade: $02
    ld [bc], a                                    ; $5adf: $02
    ld b, $00                                     ; $5ae0: $06 $00
    ld [bc], a                                    ; $5ae2: $02
    inc b                                         ; $5ae3: $04
    add d                                         ; $5ae4: $82
    ld b, $02                                     ; $5ae5: $06 $02
    ld [bc], a                                    ; $5ae7: $02
    inc b                                         ; $5ae8: $04
    inc c                                         ; $5ae9: $0c
    nop                                           ; $5aea: $00
    rst $38                                       ; $5aeb: $ff
    rla                                           ; $5aec: $17
    add hl, bc                                    ; $5aed: $09
    ld a, [$ec22]                                 ; $5aee: $fa $22 $ec
    ld a, [bc]                                    ; $5af1: $0a
    ldh a, [$fa]                                  ; $5af2: $f0 $fa
    db $f4                                        ; $5af4: $f4
    ld [bc], a                                    ; $5af5: $02
    db $f4                                        ; $5af6: $f4
    ld a, [bc]                                    ; $5af7: $0a
    ld a, [c]                                     ; $5af8: $f2
    ld [de], a                                    ; $5af9: $12
    ld a, [c]                                     ; $5afa: $f2
    ld a, [de]                                    ; $5afb: $1a
    push af                                       ; $5afc: $f5
    dec de                                        ; $5afd: $1b
    nop                                           ; $5afe: $00
    ld a, [$0200]                                 ; $5aff: $fa $00 $02
    nop                                           ; $5b02: $00
    inc b                                         ; $5b03: $04
    ld [bc], a                                    ; $5b04: $02
    jr nz, jr_0f3_5aa5                            ; $5b05: $20 $9e

    ld [hl], b                                    ; $5b07: $70
    ld d, b                                       ; $5b08: $50
    ldh [$a0], a                                  ; $5b09: $e0 $a0
    ldh [$a0], a                                  ; $5b0b: $e0 $a0
    ldh [$a0], a                                  ; $5b0d: $e0 $a0
    ldh [$a0], a                                  ; $5b0f: $e0 $a0
    ldh [$a0], a                                  ; $5b11: $e0 $a0
    or b                                          ; $5b13: $b0
    ret nc                                        ; $5b14: $d0

    ld e, c                                       ; $5b15: $59
    ld l, c                                       ; $5b16: $69
    ccf                                           ; $5b17: $3f
    ld l, $6f                                     ; $5b18: $2e $6f
    ld [hl], h                                    ; $5b1a: $74
    sbc d                                         ; $5b1b: $9a
    rst $30                                       ; $5b1c: $f7
    ld a, e                                       ; $5b1d: $7b
    ld [hl], a                                    ; $5b1e: $77
    dec sp                                        ; $5b1f: $3b
    scf                                           ; $5b20: $37
    ld a, e                                       ; $5b21: $7b
    ld [hl], a                                    ; $5b22: $77
    ld d, l                                       ; $5b23: $55
    ld a, [hl]                                    ; $5b24: $7e
    ld [bc], a                                    ; $5b25: $02
    ldh a, [$84]                                  ; $5b26: $f0 $84
    xor b                                         ; $5b28: $a8
    ret c                                         ; $5b29: $d8

    ld h, h                                       ; $5b2a: $64
    ld a, h                                       ; $5b2b: $7c
    ld [bc], a                                    ; $5b2c: $02
    rra                                           ; $5b2d: $1f
    adc c                                         ; $5b2e: $89
    rst $38                                       ; $5b2f: $ff
    ldh [$f8], a                                  ; $5b30: $e0 $f8
    rlca                                          ; $5b32: $07
    push bc                                       ; $5b33: $c5
    ccf                                           ; $5b34: $3f
    ld a, [hl+]                                   ; $5b35: $2a
    push af                                       ; $5b36: $f5
    rlca                                          ; $5b37: $07
    inc bc                                        ; $5b38: $03
    rst $38                                       ; $5b39: $ff
    adc h                                         ; $5b3a: $8c
    inc e                                         ; $5b3b: $1c
    rst $38                                       ; $5b3c: $ff
    add sp, $1f                                   ; $5b3d: $e8 $1f
    scf                                           ; $5b3f: $37
    rst $08                                       ; $5b40: $cf
    db $dd                                        ; $5b41: $dd
    rst $20                                       ; $5b42: $e7
    rst $28                                       ; $5b43: $ef
    rst $30                                       ; $5b44: $f7
    ld a, [hl-]                                   ; $5b45: $3a
    or $02                                        ; $5b46: $f6 $02
    add hl, bc                                    ; $5b48: $09
    adc h                                         ; $5b49: $8c
    ld c, $0f                                     ; $5b4a: $0e $0f
    rst $30                                       ; $5b4c: $f7
    ld hl, sp+$7c                                 ; $5b4d: $f8 $7c
    add e                                         ; $5b4f: $83
    pop af                                        ; $5b50: $f1
    rrca                                          ; $5b51: $0f
    add a                                         ; $5b52: $87
    ld a, a                                       ; $5b53: $7f
    inc e                                         ; $5b54: $1c
    db $fc                                        ; $5b55: $fc
    ld [bc], a                                    ; $5b56: $02
    ldh a, [rSC]                                  ; $5b57: $f0 $02
    ret nz                                        ; $5b59: $c0

    ld [bc], a                                    ; $5b5a: $02
    nop                                           ; $5b5b: $00
    inc b                                         ; $5b5c: $04
    add b                                         ; $5b5d: $80
    ld [bc], a                                    ; $5b5e: $02
    ret nz                                        ; $5b5f: $c0

    add d                                         ; $5b60: $82
    and b                                         ; $5b61: $a0
    ldh [rSC], a                                  ; $5b62: $e0 $02
    ld b, b                                       ; $5b64: $40
    ld [bc], a                                    ; $5b65: $02
    nop                                           ; $5b66: $00
    ld [bc], a                                    ; $5b67: $02
    rrca                                          ; $5b68: $0f
    add e                                         ; $5b69: $83
    ld [hl], a                                    ; $5b6a: $77
    ld a, b                                       ; $5b6b: $78
    or h                                          ; $5b6c: $b4
    ld [bc], a                                    ; $5b6d: $02
    rst $08                                       ; $5b6e: $cf
    add l                                         ; $5b6f: $85
    ccf                                           ; $5b70: $3f
    ld [hl-], a                                   ; $5b71: $32
    cp $e4                                        ; $5b72: $fe $e4
    db $fc                                        ; $5b74: $fc

jr_0f3_5b75:
    ld [bc], a                                    ; $5b75: $02
    sbc b                                         ; $5b76: $98
    ld [de], a                                    ; $5b77: $12
    nop                                           ; $5b78: $00
    ld [bc], a                                    ; $5b79: $02
    ld hl, sp-$7a                                 ; $5b7a: $f8 $86
    and $1e                                       ; $5b7c: $e6 $1e
    rra                                           ; $5b7e: $1f
    pop hl                                        ; $5b7f: $e1
    rst $38                                       ; $5b80: $ff
    cp $02                                        ; $5b81: $fe $02
    inc bc                                        ; $5b83: $03
    ld d, $00                                     ; $5b84: $16 $00
    ld [bc], a                                    ; $5b86: $02
    ld bc, $001e                                  ; $5b87: $01 $1e $00
    sub d                                         ; $5b8a: $92
    ld a, a                                       ; $5b8b: $7f
    ld a, h                                       ; $5b8c: $7c
    sbc d                                         ; $5b8d: $9a
    db $fd                                        ; $5b8e: $fd
    ld [$5dfd], a                                 ; $5b8f: $ea $fd $5d
    ld a, a                                       ; $5b92: $7f
    sub e                                         ; $5b93: $93
    rst $38                                       ; $5b94: $ff
    ld l, a                                       ; $5b95: $6f
    ld a, a                                       ; $5b96: $7f
    ld d, h                                       ; $5b97: $54
    ld a, a                                       ; $5b98: $7f
    ld b, h                                       ; $5b99: $44
    ld a, a                                       ; $5b9a: $7f
    ld a, $3f                                     ; $5b9b: $3e $3f
    ld [bc], a                                    ; $5b9d: $02
    dec de                                        ; $5b9e: $1b
    ld [bc], a                                    ; $5b9f: $02
    ld bc, $0012                                  ; $5ba0: $01 $12 $00
    adc h                                         ; $5ba3: $8c
    ld a, [de]                                    ; $5ba4: $1a
    or $fe                                        ; $5ba5: $f6 $fe
    ld a, [$fd97]                                 ; $5ba7: $fa $97 $fd
    dec e                                         ; $5baa: $1d
    cp $3b                                        ; $5bab: $fe $3b
    ei                                            ; $5bad: $fb
    ld h, b                                       ; $5bae: $60
    ldh [rSC], a                                  ; $5baf: $e0 $02
    ret nz                                        ; $5bb1: $c0

    ld d, $00                                     ; $5bb2: $16 $00
    ld [bc], a                                    ; $5bb4: $02
    ld [bc], a                                    ; $5bb5: $02
    add d                                         ; $5bb6: $82
    inc bc                                        ; $5bb7: $03
    ld bc, $0202                                  ; $5bb8: $01 $02 $02
    ld c, $00                                     ; $5bbb: $0e $00
    rst $38                                       ; $5bbd: $ff
    dec d                                         ; $5bbe: $15
    ld [$22fa], sp                                ; $5bbf: $08 $fa $22
    db $ec                                        ; $5bc2: $ec
    ld a, [bc]                                    ; $5bc3: $0a
    rst $28                                       ; $5bc4: $ef
    ld a, [$02f3]                                 ; $5bc5: $fa $f3 $02
    db $f4                                        ; $5bc8: $f4
    ld a, [bc]                                    ; $5bc9: $0a
    ld a, [$fc12]                                 ; $5bca: $fa $12 $fc
    add hl, de                                    ; $5bcd: $19
    rst $38                                       ; $5bce: $ff
    ld a, [$02ff]                                 ; $5bcf: $fa $ff $02
    rst $38                                       ; $5bd2: $ff
    dec b                                         ; $5bd3: $05
    ld [bc], a                                    ; $5bd4: $02
    jr nz, jr_0f3_5b75                            ; $5bd5: $20 $9e

    ld [hl], b                                    ; $5bd7: $70
    ld d, b                                       ; $5bd8: $50
    ldh [$a0], a                                  ; $5bd9: $e0 $a0
    ldh [$a0], a                                  ; $5bdb: $e0 $a0
    ldh [$a0], a                                  ; $5bdd: $e0 $a0
    ldh [$a0], a                                  ; $5bdf: $e0 $a0
    ld [hl], b                                    ; $5be1: $70
    ld d, b                                       ; $5be2: $50
    ld e, b                                       ; $5be3: $58
    ld l, b                                       ; $5be4: $68
    inc l                                         ; $5be5: $2c
    inc [hl]                                      ; $5be6: $34
    inc e                                         ; $5be7: $1c
    inc d                                         ; $5be8: $14
    rla                                           ; $5be9: $17
    dec de                                        ; $5bea: $1b
    ld a, [hl]                                    ; $5beb: $7e
    ld a, e                                       ; $5bec: $7b

Jump_0f3_5bed:
    sbc a                                         ; $5bed: $9f
    ld a, [$7b76]                                 ; $5bee: $fa $76 $7b
    scf                                           ; $5bf1: $37
    dec sp                                        ; $5bf2: $3b
    ld a, d                                       ; $5bf3: $7a
    ld [hl], a                                    ; $5bf4: $77
    ld [bc], a                                    ; $5bf5: $02
    ld bc, $028a                                  ; $5bf6: $01 $8a $02
    inc bc                                        ; $5bf9: $03
    dec b                                         ; $5bfa: $05
    ld b, $0a                                     ; $5bfb: $06 $0a
    dec c                                         ; $5bfd: $0d
    add hl, de                                    ; $5bfe: $19
    rra                                           ; $5bff: $1f
    ld a, $2e                                     ; $5c00: $3e $2e
    inc bc                                        ; $5c02: $03
    rst $38                                       ; $5c03: $ff
    sub c                                         ; $5c04: $91
    nop                                           ; $5c05: $00
    and $1f                                       ; $5c06: $e6 $1f
    ldh [rIE], a                                  ; $5c08: $e0 $ff
    sbc b                                         ; $5c0a: $98
    rst $20                                       ; $5c0b: $e7
    ccf                                           ; $5c0c: $3f
    rst $38                                       ; $5c0d: $ff
    ld hl, sp-$01                                 ; $5c0e: $f8 $ff
    rst $08                                       ; $5c10: $cf
    ccf                                           ; $5c11: $3f
    db $fd                                        ; $5c12: $fd
    rlca                                          ; $5c13: $07
    rst $38                                       ; $5c14: $ff
    db $e3                                        ; $5c15: $e3
    ld [bc], a                                    ; $5c16: $02
    ret nz                                        ; $5c17: $c0

    add d                                         ; $5c18: $82
    ldh [$a0], a                                  ; $5c19: $e0 $a0
    ld [bc], a                                    ; $5c1b: $02
    ret nz                                        ; $5c1c: $c0

    inc b                                         ; $5c1d: $04
    nop                                           ; $5c1e: $00
    ld [bc], a                                    ; $5c1f: $02
    add e                                         ; $5c20: $83
    sub b                                         ; $5c21: $90
    ld [hl], h                                    ; $5c22: $74
    rst $30                                       ; $5c23: $f7
    rst $28                                       ; $5c24: $ef
    rra                                           ; $5c25: $1f
    ld a, [hl-]                                   ; $5c26: $3a
    add $1f                                       ; $5c27: $c6 $1f
    pop hl                                        ; $5c29: $e1
    add a                                         ; $5c2a: $87
    ld hl, sp-$0f                                 ; $5c2b: $f8 $f1
    cp $fc                                        ; $5c2d: $fe $fc
    rst $38                                       ; $5c2f: $ff
    and a                                         ; $5c30: $a7
    rst $20                                       ; $5c31: $e7
    ld [bc], a                                    ; $5c32: $02
    ld b, b                                       ; $5c33: $40
    ld [bc], a                                    ; $5c34: $02
    nop                                           ; $5c35: $00
    ld [bc], a                                    ; $5c36: $02
    add b                                         ; $5c37: $80
    inc b                                         ; $5c38: $04
    nop                                           ; $5c39: $00
    ld [bc], a                                    ; $5c3a: $02
    add b                                         ; $5c3b: $80
    adc d                                         ; $5c3c: $8a
    ld a, b                                       ; $5c3d: $78
    ld hl, sp-$19                                 ; $5c3e: $f8 $e7
    rra                                           ; $5c40: $1f
    ld a, a                                       ; $5c41: $7f
    add b                                         ; $5c42: $80
    sbc [hl]                                      ; $5c43: $9e
    rst $38                                       ; $5c44: $ff
    ld h, e                                       ; $5c45: $63
    ld a, a                                       ; $5c46: $7f
    ld [bc], a                                    ; $5c47: $02
    ld a, $0c                                     ; $5c48: $3e $0c
    nop                                           ; $5c4a: $00
    ld [bc], a                                    ; $5c4b: $02
    ld [bc], a                                    ; $5c4c: $02
    adc b                                         ; $5c4d: $88
    rrca                                          ; $5c4e: $0f
    dec c                                         ; $5c4f: $0d
    ld a, $32                                     ; $5c50: $3e $32
    ld a, h                                       ; $5c52: $7c
    ld c, h                                       ; $5c53: $4c
    ld d, b                                       ; $5c54: $50
    jr nc, jr_0f3_5c59                            ; $5c55: $30 $02

    ld h, b                                       ; $5c57: $60
    inc d                                         ; $5c58: $14

jr_0f3_5c59:
    nop                                           ; $5c59: $00
    sub h                                         ; $5c5a: $94
    ld d, a                                       ; $5c5b: $57
    ld a, a                                       ; $5c5c: $7f
    ld a, l                                       ; $5c5d: $7d
    ld a, [hl]                                    ; $5c5e: $7e
    sbc e                                         ; $5c5f: $9b
    db $fc                                        ; $5c60: $fc
    db $eb                                        ; $5c61: $eb
    db $fc                                        ; $5c62: $fc
    ld e, l                                       ; $5c63: $5d
    ld a, a                                       ; $5c64: $7f
    sub e                                         ; $5c65: $93
    rst $38                                       ; $5c66: $ff
    ld l, a                                       ; $5c67: $6f
    ld a, a                                       ; $5c68: $7f
    ld d, h                                       ; $5c69: $54
    ld a, a                                       ; $5c6a: $7f
    ld b, h                                       ; $5c6b: $44
    ld a, a                                       ; $5c6c: $7f
    ld a, $3f                                     ; $5c6d: $3e $3f
    ld [bc], a                                    ; $5c6f: $02
    dec de                                        ; $5c70: $1b
    ld [bc], a                                    ; $5c71: $02
    ld bc, $0010                                  ; $5c72: $01 $10 $00
    adc [hl]                                      ; $5c75: $8e
    ld [hl], $fa                                  ; $5c76: $36 $fa
    rra                                           ; $5c78: $1f
    ld sp, hl                                     ; $5c79: $f9

jr_0f3_5c7a:
    push af                                       ; $5c7a: $f5
    cp $97                                        ; $5c7b: $fe $97
    cp $1d                                        ; $5c7d: $fe $1d
    db $fd                                        ; $5c7f: $fd
    jr c, jr_0f3_5c7a                             ; $5c80: $38 $f8

    ld h, b                                       ; $5c82: $60
    ldh [rSC], a                                  ; $5c83: $e0 $02
    ret nz                                        ; $5c85: $c0

    inc d                                         ; $5c86: $14
    nop                                           ; $5c87: $00
    ld [bc], a                                    ; $5c88: $02
    inc b                                         ; $5c89: $04
    ld [bc], a                                    ; $5c8a: $02
    ld b, $82                                     ; $5c8b: $06 $82
    rlca                                          ; $5c8d: $07
    ld bc, $0602                                  ; $5c8e: $01 $02 $06
    inc c                                         ; $5c91: $0c
    nop                                           ; $5c92: $00
    rst $38                                       ; $5c93: $ff
    inc de                                        ; $5c94: $13
    rlca                                          ; $5c95: $07
    ld a, [$ec22]                                 ; $5c96: $fa $22 $ec
    ld a, [bc]                                    ; $5c99: $0a
    ldh a, [$fa]                                  ; $5c9a: $f0 $fa
    pop af                                        ; $5c9c: $f1
    ld [bc], a                                    ; $5c9d: $02
    db $f4                                        ; $5c9e: $f4
    ld a, [bc]                                    ; $5c9f: $0a
    db $fd                                        ; $5ca0: $fd
    ld de, $fa00                                  ; $5ca1: $11 $00 $fa
    nop                                           ; $5ca4: $00
    ld [bc], a                                    ; $5ca5: $02
    nop                                           ; $5ca6: $00
    add hl, bc                                    ; $5ca7: $09
    ld [bc], a                                    ; $5ca8: $02
    ld h, e                                       ; $5ca9: $63
    sbc [hl]                                      ; $5caa: $9e
    push hl                                       ; $5cab: $e5
    and [hl]                                      ; $5cac: $a6
    db $eb                                        ; $5cad: $eb
    xor l                                         ; $5cae: $ad
    jp hl                                         ; $5caf: $e9


    xor a                                         ; $5cb0: $af
    rst $20                                       ; $5cb1: $e7
    and a                                         ; $5cb2: $a7
    db $e3                                        ; $5cb3: $e3
    and e                                         ; $5cb4: $a3
    ld a, d                                       ; $5cb5: $7a
    ld e, e                                       ; $5cb6: $5b
    ld d, a                                       ; $5cb7: $57
    ld l, [hl]                                    ; $5cb8: $6e
    ccf                                           ; $5cb9: $3f
    ld [hl-], a                                   ; $5cba: $32
    ld e, a                                       ; $5cbb: $5f
    ld e, c                                       ; $5cbc: $59
    cp e                                          ; $5cbd: $bb
    db $fd                                        ; $5cbe: $fd
    ld e, e                                       ; $5cbf: $5b
    ld a, l                                       ; $5cc0: $7d
    ccf                                           ; $5cc1: $3f
    add hl, sp                                    ; $5cc2: $39
    dec [hl]                                      ; $5cc3: $35
    dec sp                                        ; $5cc4: $3b
    ld a, e                                       ; $5cc5: $7b
    ld [hl], a                                    ; $5cc6: $77
    ld e, l                                       ; $5cc7: $5d
    ld a, [hl]                                    ; $5cc8: $7e
    inc b                                         ; $5cc9: $04
    add b                                         ; $5cca: $80
    ld [bc], a                                    ; $5ccb: $02
    ld [$749a], sp                                ; $5ccc: $08 $9a $74
    ld a, h                                       ; $5ccf: $7c
    cp a                                          ; $5cd0: $bf
    jp $01fe                                      ; $5cd1: $c3 $fe $01


    ld [$411d], a                                 ; $5cd4: $ea $1d $41
    cp $a1                                        ; $5cd7: $fe $a1
    sbc $dd                                       ; $5cd9: $de $dd
    cp [hl]                                       ; $5cdb: $be
    ld a, [hl]                                    ; $5cdc: $7e
    cp a                                          ; $5cdd: $bf
    ld a, [hl-]                                   ; $5cde: $3a
    rst $38                                       ; $5cdf: $ff
    cp l                                          ; $5ce0: $bd
    cp $ff                                        ; $5ce1: $fe $ff
    cp $df                                        ; $5ce3: $fe $df
    inc a                                         ; $5ce5: $3c
    xor $1d                                       ; $5ce6: $ee $1d
    ld [bc], a                                    ; $5ce8: $02

jr_0f3_5ce9:
    ld b, b                                       ; $5ce9: $40
    add d                                         ; $5cea: $82
    ldh [$a0], a                                  ; $5ceb: $e0 $a0
    ld [bc], a                                    ; $5ced: $02
    ret nz                                        ; $5cee: $c0

    adc e                                         ; $5cef: $8b
    ld b, b                                       ; $5cf0: $40
    ret nz                                        ; $5cf1: $c0

    cp b                                          ; $5cf2: $b8
    ld a, b                                       ; $5cf3: $78
    db $e4                                        ; $5cf4: $e4

jr_0f3_5cf5:
    inc a                                         ; $5cf5: $3c
    ret c                                         ; $5cf6: $d8

    jr c, jr_0f3_5ce9                             ; $5cf7: $38 $f0

    sub b                                         ; $5cf9: $90
    ld d, b                                       ; $5cfa: $50
    ld [bc], a                                    ; $5cfb: $02
    or b                                          ; $5cfc: $b0
    adc l                                         ; $5cfd: $8d
    ld [hl], b                                    ; $5cfe: $70

Call_0f3_5cff:
    ldh [$60], a                                  ; $5cff: $e0 $60
    ldh [$60], a                                  ; $5d01: $e0 $60
    jr nc, jr_0f3_5cf5                            ; $5d03: $30 $f0

    rst $08                                       ; $5d05: $cf
    ccf                                           ; $5d06: $3f
    ld a, a                                       ; $5d07: $7f
    add b                                         ; $5d08: $80
    call Call_000_02ff                            ; $5d09: $cd $ff $02
    ld [bc], a                                    ; $5d0c: $02
    adc d                                         ; $5d0d: $8a
    rrca                                          ; $5d0e: $0f
    dec c                                         ; $5d0f: $0d
    ld d, $1a                                     ; $5d10: $16 $1a
    ld a, h                                       ; $5d12: $7c
    ld h, h                                       ; $5d13: $64

jr_0f3_5d14:
    jr c, jr_0f3_5d5e                             ; $5d14: $38 $48

    ld [hl], b                                    ; $5d16: $70
    jr nc, jr_0f3_5d1b                            ; $5d17: $30 $02

    ld h, b                                       ; $5d19: $60
    ld [bc], a                                    ; $5d1a: $02

jr_0f3_5d1b:
    add b                                         ; $5d1b: $80
    add d                                         ; $5d1c: $82
    ld b, b                                       ; $5d1d: $40
    ret nz                                        ; $5d1e: $c0

    ld [bc], a                                    ; $5d1f: $02
    add b                                         ; $5d20: $80
    inc c                                         ; $5d21: $0c
    nop                                           ; $5d22: $00
    sub d                                         ; $5d23: $92
    ld a, e                                       ; $5d24: $7b
    ld a, h                                       ; $5d25: $7c
    ld e, d                                       ; $5d26: $5a
    ld a, l                                       ; $5d27: $7d
    ld [$9dfd], a                                 ; $5d28: $ea $fd $9d
    rst $38                                       ; $5d2b: $ff
    or e                                          ; $5d2c: $b3

jr_0f3_5d2d:
    rst $38                                       ; $5d2d: $ff
    ld l, a                                       ; $5d2e: $6f
    ld a, a                                       ; $5d2f: $7f
    ld d, [hl]                                    ; $5d30: $56
    ld a, a                                       ; $5d31: $7f
    ld h, h                                       ; $5d32: $64
    ld a, a                                       ; $5d33: $7f
    ld a, $3f                                     ; $5d34: $3e $3f
    ld [bc], a                                    ; $5d36: $02
    dec bc                                        ; $5d37: $0b
    ld c, $00                                     ; $5d38: $0e $00
    sub d                                         ; $5d3a: $92
    ld [hl], $cf                                  ; $5d3b: $36 $cf
    rst $38                                       ; $5d3d: $ff
    rst $20                                       ; $5d3e: $e7
    dec de                                        ; $5d3f: $1b
    rst $30                                       ; $5d40: $f7
    dec [hl]                                      ; $5d41: $35
    ei                                            ; $5d42: $fb
    rst $38                                       ; $5d43: $ff
    ld sp, hl                                     ; $5d44: $f9
    sub $fd                                       ; $5d45: $d6 $fd
    rra                                           ; $5d47: $1f
    cp $19                                        ; $5d48: $fe $19
    ld sp, hl                                     ; $5d4a: $f9
    jr nz, jr_0f3_5d2d                            ; $5d4b: $20 $e0

    ld [bc], a                                    ; $5d4d: $02
    ret nz                                        ; $5d4e: $c0

    ld [de], a                                    ; $5d4f: $12
    nop                                           ; $5d50: $00
    adc b                                         ; $5d51: $88
    dec a                                         ; $5d52: $3d
    ccf                                           ; $5d53: $3f
    ld [$660f], sp                                ; $5d54: $08 $0f $66
    ld h, a                                       ; $5d57: $67
    ld [hl], c                                    ; $5d58: $71
    ld de, $7002                                  ; $5d59: $11 $02 $70
    ld c, $00                                     ; $5d5c: $0e $00

jr_0f3_5d5e:
    rst $38                                       ; $5d5e: $ff
    inc de                                        ; $5d5f: $13
    rlca                                          ; $5d60: $07
    ld a, [$ec22]                                 ; $5d61: $fa $22 $ec
    ld a, [bc]                                    ; $5d64: $0a
    db $ec                                        ; $5d65: $ec
    ei                                            ; $5d66: $fb
    ld a, [c]                                     ; $5d67: $f2
    inc bc                                        ; $5d68: $03
    db $f4                                        ; $5d69: $f4
    dec bc                                        ; $5d6a: $0b
    db $fc                                        ; $5d6b: $fc
    ld a, [$02fc]                                 ; $5d6c: $fa $fc $02
    db $fc                                        ; $5d6f: $fc
    ld [$0cfc], sp                                ; $5d70: $08 $fc $0c
    ld [bc], a                                    ; $5d73: $02
    jr nz, jr_0f3_5d14                            ; $5d74: $20 $9e

    ld [hl], b                                    ; $5d76: $70
    ld d, b                                       ; $5d77: $50
    ld [hl], b                                    ; $5d78: $70
    ld d, b                                       ; $5d79: $50
    jr c, jr_0f3_5da4                             ; $5d7a: $38 $28

    jr c, jr_0f3_5da6                             ; $5d7c: $38 $28

    inc a                                         ; $5d7e: $3c
    inc l                                         ; $5d7f: $2c
    ld a, [hl-]                                   ; $5d80: $3a
    ld l, $1d                                     ; $5d81: $2e $1d
    rla                                           ; $5d83: $17
    rra                                           ; $5d84: $1f
    rla                                           ; $5d85: $17
    rra                                           ; $5d86: $1f
    ld d, $1f                                     ; $5d87: $16 $1f
    inc d                                         ; $5d89: $14
    ccf                                           ; $5d8a: $3f
    dec [hl]                                      ; $5d8b: $35
    ld a, $37                                     ; $5d8c: $3e $37
    ld a, e                                       ; $5d8e: $7b
    ld [hl], a                                    ; $5d8f: $77
    ld a, e                                       ; $5d90: $7b
    ld [hl], a                                    ; $5d91: $77
    cp e                                          ; $5d92: $bb
    rst $30                                       ; $5d93: $f7
    ld [bc], a                                    ; $5d94: $02
    ld [bc], a                                    ; $5d95: $02
    sbc [hl]                                      ; $5d96: $9e
    ld a, a                                       ; $5d97: $7f
    ld a, l                                       ; $5d98: $7d
    cp [hl]                                       ; $5d99: $be
    add $fd                                       ; $5d9a: $c6 $fd
    inc bc                                        ; $5d9c: $03

jr_0f3_5d9d:
    rst $00                                       ; $5d9d: $c7
    ld a, b                                       ; $5d9e: $78
    inc bc                                        ; $5d9f: $03
    db $fc                                        ; $5da0: $fc
    ld e, l                                       ; $5da1: $5d
    cp [hl]                                       ; $5da2: $be
    cp h                                          ; $5da3: $bc

jr_0f3_5da4:
    ld a, a                                       ; $5da4: $7f
    cp [hl]                                       ; $5da5: $be

jr_0f3_5da6:
    ld [hl], a                                    ; $5da6: $77
    ld e, l                                       ; $5da7: $5d
    cp $7f                                        ; $5da8: $fe $7f
    db $fc                                        ; $5daa: $fc
    ld a, d                                       ; $5dab: $7a
    db $fd                                        ; $5dac: $fd
    ei                                            ; $5dad: $fb
    db $fc                                        ; $5dae: $fc
    ld a, [$eefd]                                 ; $5daf: $fa $fd $ee
    dec e                                         ; $5db2: $1d
    ei                                            ; $5db3: $fb
    ld b, $02                                     ; $5db4: $06 $02
    add b                                         ; $5db6: $80
    add d                                         ; $5db7: $82
    ld b, b                                       ; $5db8: $40
    ret nz                                        ; $5db9: $c0

    ld [bc], a                                    ; $5dba: $02
    add b                                         ; $5dbb: $80
    adc [hl]                                      ; $5dbc: $8e
    ret nz                                        ; $5dbd: $c0

    ld b, b                                       ; $5dbe: $40
    ld h, b                                       ; $5dbf: $60
    ldh [$a0], a                                  ; $5dc0: $e0 $a0
    ld h, b                                       ; $5dc2: $60
    and b                                         ; $5dc3: $a0
    ldh [$a0], a                                  ; $5dc4: $e0 $a0
    ld h, b                                       ; $5dc6: $60
    ret nz                                        ; $5dc7: $c0

    ld b, b                                       ; $5dc8: $40
    ret nz                                        ; $5dc9: $c0

jr_0f3_5dca:
    ld b, b                                       ; $5dca: $40
    inc b                                         ; $5dcb: $04
    add b                                         ; $5dcc: $80
    ld [bc], a                                    ; $5dcd: $02
    add c                                         ; $5dce: $81
    and d                                         ; $5dcf: $a2
    rst $00                                       ; $5dd0: $c7
    add $ff                                       ; $5dd1: $c6 $ff
    ld a, c                                       ; $5dd3: $79
    cp [hl]                                       ; $5dd4: $be
    add $bd                                       ; $5dd5: $c6 $bd
    ei                                            ; $5dd7: $fb
    ld l, a                                       ; $5dd8: $6f
    ld a, e                                       ; $5dd9: $7b
    ld [hl], e                                    ; $5dda: $73
    ld a, a                                       ; $5ddb: $7f
    ld e, a                                       ; $5ddc: $5f
    ld a, a                                       ; $5ddd: $7f
    cp l                                          ; $5dde: $bd
    cp $5b                                        ; $5ddf: $fe $5b
    ld a, h                                       ; $5de1: $7c
    ld a, e                                       ; $5de2: $7b
    ld a, h                                       ; $5de3: $7c
    db $dd                                        ; $5de4: $dd
    rst $38                                       ; $5de5: $ff
    sub d                                         ; $5de6: $92
    rst $38                                       ; $5de7: $ff
    ld l, a                                       ; $5de8: $6f
    ld a, a                                       ; $5de9: $7f
    ld d, h                                       ; $5dea: $54
    ld a, a                                       ; $5deb: $7f
    ld b, h                                       ; $5dec: $44
    ld a, a                                       ; $5ded: $7f
    ld a, $3f                                     ; $5dee: $3e $3f
    ld [de], a                                    ; $5df0: $12
    inc de                                        ; $5df1: $13
    ld [bc], a                                    ; $5df2: $02
    ld bc, $0003                                  ; $5df3: $01 $03 $00
    add d                                         ; $5df6: $82
    add b                                         ; $5df7: $80
    nop                                           ; $5df8: $00
    ld b, $80                                     ; $5df9: $06 $80
    sub e                                         ; $5dfb: $93
    nop                                           ; $5dfc: $00
    add b                                         ; $5dfd: $80
    nop                                           ; $5dfe: $00

jr_0f3_5dff:
    rst $28                                       ; $5dff: $ef
    ldh a, [$3d]                                  ; $5e00: $f0 $3d
    cp $3f                                        ; $5e02: $fe $3f
    rst $38                                       ; $5e04: $ff

jr_0f3_5e05:
    di                                            ; $5e05: $f3
    rst $38                                       ; $5e06: $ff
    or a                                          ; $5e07: $b7
    rst $38                                       ; $5e08: $ff
    inc e                                         ; $5e09: $1c
    db $fc                                        ; $5e0a: $fc
    jr c, jr_0f3_5e05                             ; $5e0b: $38 $f8

    ld h, b                                       ; $5e0d: $60
    ldh [rSC], a                                  ; $5e0e: $e0 $02
    ret nz                                        ; $5e10: $c0

    ld c, $00                                     ; $5e11: $0e $00
    inc bc                                        ; $5e13: $03
    jr nz, jr_0f3_5d9d                            ; $5e14: $20 $87

    nop                                           ; $5e16: $00
    rra                                           ; $5e17: $1f
    cpl                                           ; $5e18: $2f
    jr c, jr_0f3_5e43                             ; $5e19: $38 $28

    jr c, jr_0f3_5e45                             ; $5e1b: $38 $28

    ld [bc], a                                    ; $5e1d: $02
    db $10                                        ; $5e1e: $10
    ld [de], a                                    ; $5e1f: $12
    nop                                           ; $5e20: $00
    ld [bc], a                                    ; $5e21: $02
    ld bc, $0014                                  ; $5e22: $01 $14 $00
    rst $38                                       ; $5e25: $ff
    inc de                                        ; $5e26: $13
    rlca                                          ; $5e27: $07
    ld a, [$ec22]                                 ; $5e28: $fa $22 $ec
    ld a, [bc]                                    ; $5e2b: $0a
    xor $fa                                       ; $5e2c: $ee $fa
    pop af                                        ; $5e2e: $f1
    ld [bc], a                                    ; $5e2f: $02
    push af                                       ; $5e30: $f5
    ld a, [bc]                                    ; $5e31: $0a
    cp $fa                                        ; $5e32: $fe $fa
    cp $02                                        ; $5e34: $fe $02
    cp $07                                        ; $5e36: $fe $07
    cp $0f                                        ; $5e38: $fe $0f
    ld [bc], a                                    ; $5e3a: $02
    jr nz, jr_0f3_5dca                            ; $5e3b: $20 $8d

    ld [hl], b                                    ; $5e3d: $70
    ld d, b                                       ; $5e3e: $50
    ld [hl], b                                    ; $5e3f: $70
    ld d, b                                       ; $5e40: $50
    ld [hl], c                                    ; $5e41: $71
    ld d, c                                       ; $5e42: $51

jr_0f3_5e43:
    ld [hl], d                                    ; $5e43: $72
    ld d, e                                       ; $5e44: $53

jr_0f3_5e45:
    ld [hl], l                                    ; $5e45: $75
    ld d, [hl]                                    ; $5e46: $56
    ld [hl], h                                    ; $5e47: $74
    ld d, a                                       ; $5e48: $57
    dec a                                         ; $5e49: $3d
    ld [bc], a                                    ; $5e4a: $02
    cpl                                           ; $5e4b: $2f
    adc a                                         ; $5e4c: $8f
    scf                                           ; $5e4d: $37
    ld a, [de]                                    ; $5e4e: $1a
    rla                                           ; $5e4f: $17
    rrca                                          ; $5e50: $0f
    ld a, [bc]                                    ; $5e51: $0a
    dec bc                                        ; $5e52: $0b
    dec c                                         ; $5e53: $0d
    ld l, a                                       ; $5e54: $6f
    ld l, l                                       ; $5e55: $6d
    sbc [hl]                                      ; $5e56: $9e

jr_0f3_5e57:
    db $fd                                        ; $5e57: $fd
    ld a, e                                       ; $5e58: $7b
    ld a, l                                       ; $5e59: $7d
    ld [hl], $3b                                  ; $5e5a: $36 $3b
    ld [bc], a                                    ; $5e5c: $02
    inc b                                         ; $5e5d: $04
    sbc [hl]                                      ; $5e5e: $9e
    adc [hl]                                      ; $5e5f: $8e
    adc d                                         ; $5e60: $8a
    adc [hl]                                      ; $5e61: $8e
    adc d                                         ; $5e62: $8a
    adc a                                         ; $5e63: $8f
    adc e                                         ; $5e64: $8b
    ld a, [hl]                                    ; $5e65: $7e
    ld a, a                                       ; $5e66: $7f
    cp l                                          ; $5e67: $bd
    jp Jump_000_00ff                              ; $5e68: $c3 $ff $00


    rst $20                                       ; $5e6b: $e7
    jr jr_0f3_5dff                                ; $5e6c: $18 $91

    ld a, [hl]                                    ; $5e6e: $7e
    ld b, [hl]                                    ; $5e6f: $46
    rst $38                                       ; $5e70: $ff
    db $db                                        ; $5e71: $db
    cp e                                          ; $5e72: $bb
    ld a, l                                       ; $5e73: $7d
    cp l                                          ; $5e74: $bd
    cp e                                          ; $5e75: $bb
    ld a, a                                       ; $5e76: $7f
    ld a, h                                       ; $5e77: $7c
    rst $38                                       ; $5e78: $ff
    ld hl, sp-$01                                 ; $5e79: $f8 $ff
    rst $18                                       ; $5e7b: $df
    ccf                                           ; $5e7c: $3f
    inc b                                         ; $5e7d: $04
    add b                                         ; $5e7e: $80
    add a                                         ; $5e7f: $87
    ld b, b                                       ; $5e80: $40
    ret nz                                        ; $5e81: $c0

    and b                                         ; $5e82: $a0
    ld h, b                                       ; $5e83: $60
    ret nc                                        ; $5e84: $d0

    jr nc, jr_0f3_5e57                            ; $5e85: $30 $d0

    ld [bc], a                                    ; $5e87: $02
    jr nc, @-$55                                  ; $5e88: $30 $a9

    ldh a, [$30]                                  ; $5e8a: $f0 $30
    ret nc                                        ; $5e8c: $d0

    ldh a, [$90]                                  ; $5e8d: $f0 $90
    add sp, -$68                                  ; $5e8f: $e8 $98
    cp b                                          ; $5e91: $b8
    ret z                                         ; $5e92: $c8

    or h                                          ; $5e93: $b4
    call z, $e7db                                 ; $5e94: $cc $db $e7
    ld l, h                                       ; $5e97: $6c
    ld [hl], e                                    ; $5e98: $73
    ccf                                           ; $5e99: $3f
    inc a                                         ; $5e9a: $3c
    ld b, a                                       ; $5e9b: $47
    ld a, a                                       ; $5e9c: $7f
    ld [hl], d                                    ; $5e9d: $72
    ld a, a                                       ; $5e9e: $7f
    ld e, a                                       ; $5e9f: $5f
    ld a, a                                       ; $5ea0: $7f
    ld a, l                                       ; $5ea1: $7d
    ld a, [hl]                                    ; $5ea2: $7e
    sbc e                                         ; $5ea3: $9b
    db $fc                                        ; $5ea4: $fc
    db $eb                                        ; $5ea5: $eb
    db $fc                                        ; $5ea6: $fc
    ld e, l                                       ; $5ea7: $5d
    ld a, a                                       ; $5ea8: $7f
    sub e                                         ; $5ea9: $93
    rst $38                                       ; $5eaa: $ff
    ld l, a                                       ; $5eab: $6f
    ld a, a                                       ; $5eac: $7f
    ld d, h                                       ; $5ead: $54
    ld a, a                                       ; $5eae: $7f
    ld b, h                                       ; $5eaf: $44
    ld a, a                                       ; $5eb0: $7f
    ld a, $3f                                     ; $5eb1: $3e $3f
    ld [bc], a                                    ; $5eb3: $02
    dec de                                        ; $5eb4: $1b
    ld [bc], a                                    ; $5eb5: $02
    ld bc, $000c                                  ; $5eb6: $01 $0c $00
    sub d                                         ; $5eb9: $92
    ld sp, hl                                     ; $5eba: $f9
    rrca                                          ; $5ebb: $0f
    rst $38                                       ; $5ebc: $ff
    rst $20                                       ; $5ebd: $e7
    ld a, $f2                                     ; $5ebe: $3e $f2
    ld e, $fa                                     ; $5ec0: $1e $fa
    db $fd                                        ; $5ec2: $fd
    ei                                            ; $5ec3: $fb
    sub [hl]                                      ; $5ec4: $96
    db $fd                                        ; $5ec5: $fd
    rra                                           ; $5ec6: $1f
    cp $39                                        ; $5ec7: $fe $39
    ld sp, hl                                     ; $5ec9: $f9
    ld h, b                                       ; $5eca: $60
    ldh [rSC], a                                  ; $5ecb: $e0 $02
    ret nz                                        ; $5ecd: $c0

    inc d                                         ; $5ece: $14
    nop                                           ; $5ecf: $00
    add d                                         ; $5ed0: $82
    dec b                                         ; $5ed1: $05
    rlca                                          ; $5ed2: $07
    ld [bc], a                                    ; $5ed3: $02
    ld a, [de]                                    ; $5ed4: $1a
    add d                                         ; $5ed5: $82
    inc e                                         ; $5ed6: $1c
    inc b                                         ; $5ed7: $04
    ld [bc], a                                    ; $5ed8: $02
    jr jr_0f3_5ee5                                ; $5ed9: $18 $0a

    nop                                           ; $5edb: $00
    ld [bc], a                                    ; $5edc: $02
    ld [bc], a                                    ; $5edd: $02
    adc d                                         ; $5ede: $8a
    rlca                                          ; $5edf: $07
    dec b                                         ; $5ee0: $05

jr_0f3_5ee1:
    ld c, $0a                                     ; $5ee1: $0e $0a
    ld d, $1a                                     ; $5ee3: $16 $1a

jr_0f3_5ee5:
    inc e                                         ; $5ee5: $1c
    inc b                                         ; $5ee6: $04
    ld [$0218], sp                                ; $5ee7: $08 $18 $02
    db $10                                        ; $5eea: $10
    ld [de], a                                    ; $5eeb: $12
    nop                                           ; $5eec: $00
    rst $38                                       ; $5eed: $ff
    inc de                                        ; $5eee: $13
    rlca                                          ; $5eef: $07
    ld a, [$ec22]                                 ; $5ef0: $fa $22 $ec
    ld a, [bc]                                    ; $5ef3: $0a
    db $ec                                        ; $5ef4: $ec
    ld a, [$02ef]                                 ; $5ef5: $fa $ef $02
    ld a, [c]                                     ; $5ef8: $f2
    ld a, [bc]                                    ; $5ef9: $0a
    ld a, [$fc11]                                 ; $5efa: $fa $11 $fc
    ld a, [$02fc]                                 ; $5efd: $fa $fc $02
    db $fc                                        ; $5f00: $fc
    add hl, bc                                    ; $5f01: $09
    ld [bc], a                                    ; $5f02: $02
    ld b, b                                       ; $5f03: $40
    sbc [hl]                                      ; $5f04: $9e
    ldh [$a0], a                                  ; $5f05: $e0 $a0
    ldh [$a0], a                                  ; $5f07: $e0 $a0
    ld [hl], c                                    ; $5f09: $71
    ld d, c                                       ; $5f0a: $51
    ld [hl], c                                    ; $5f0b: $71
    ld d, c                                       ; $5f0c: $51
    ld a, [hl-]                                   ; $5f0d: $3a
    dec hl                                        ; $5f0e: $2b
    ld a, [hl-]                                   ; $5f0f: $3a
    dec hl                                        ; $5f10: $2b
    dec e                                         ; $5f11: $1d
    dec d                                         ; $5f12: $15
    dec e                                         ; $5f13: $1d
    dec d                                         ; $5f14: $15
    dec e                                         ; $5f15: $1d
    dec d                                         ; $5f16: $15
    ld d, $1b                                     ; $5f17: $16 $1b
    rla                                           ; $5f19: $17
    dec de                                        ; $5f1a: $1b
    rrca                                          ; $5f1b: $0f
    dec bc                                        ; $5f1c: $0b
    dec c                                         ; $5f1d: $0d
    dec bc                                        ; $5f1e: $0b
    ld l, e                                       ; $5f1f: $6b
    ld l, l                                       ; $5f20: $6d
    sbc e                                         ; $5f21: $9b
    db $fd                                        ; $5f22: $fd
    ld [bc], a                                    ; $5f23: $02
    add b                                         ; $5f24: $80
    sbc [hl]                                      ; $5f25: $9e
    ld b, b                                       ; $5f26: $40
    ret nz                                        ; $5f27: $c0

    inc hl                                        ; $5f28: $23
    db $e3                                        ; $5f29: $e3
    ld h, a                                       ; $5f2a: $67
    and h                                         ; $5f2b: $a4
    ld l, a                                       ; $5f2c: $6f
    xor e                                         ; $5f2d: $ab
    ld a, h                                       ; $5f2e: $7c
    db $f4                                        ; $5f2f: $f4
    db $fc                                        ; $5f30: $fc
    db $ec                                        ; $5f31: $ec
    ld a, e                                       ; $5f32: $7b
    rst $38                                       ; $5f33: $ff
    cp h                                          ; $5f34: $bc
    jp Jump_000_00ff                              ; $5f35: $c3 $ff $00


    ld [c], a                                     ; $5f38: $e2
    rra                                           ; $5f39: $1f
    jr nz, @+$01                                  ; $5f3a: $20 $ff

    ld d, [hl]                                    ; $5f3c: $56
    rst $28                                       ; $5f3d: $ef
    xor a                                         ; $5f3e: $af
    rst $18                                       ; $5f3f: $df
    cp e                                          ; $5f40: $bb
    rst $18                                       ; $5f41: $df
    sbc l                                         ; $5f42: $9d
    rst $38                                       ; $5f43: $ff
    ld [bc], a                                    ; $5f44: $02
    add b                                         ; $5f45: $80
    ld b, $00                                     ; $5f46: $06 $00
    ld [bc], a                                    ; $5f48: $02
    jr jr_0f3_5ee1                                ; $5f49: $18 $96

    and h                                         ; $5f4b: $a4
    cp h                                          ; $5f4c: $bc
    ld l, b                                       ; $5f4d: $68
    ld hl, sp+$58                                 ; $5f4e: $f8 $58
    cp b                                          ; $5f50: $b8
    add sp, $18                                   ; $5f51: $e8 $18
    ld hl, sp+$18                                 ; $5f53: $f8 $18
    ld c, b                                       ; $5f55: $48
    cp b                                          ; $5f56: $b8
    cp h                                          ; $5f57: $bc
    call nz, $e4bc                                ; $5f58: $c4 $bc $e4
    adc $f2                                       ; $5f5b: $ce $f2
    rst $18                                       ; $5f5d: $df
    pop hl                                        ; $5f5e: $e1
    xor e                                         ; $5f5f: $ab
    db $fc                                        ; $5f60: $fc
    ld [bc], a                                    ; $5f61: $02
    ld [bc], a                                    ; $5f62: $02
    add l                                         ; $5f63: $85
    rlca                                          ; $5f64: $07
    dec b                                         ; $5f65: $05
    ld c, $0a                                     ; $5f66: $0e $0a
    dec c                                         ; $5f68: $0d
    ld [bc], a                                    ; $5f69: $02
    dec bc                                        ; $5f6a: $0b
    sub c                                         ; $5f6b: $91
    dec c                                         ; $5f6c: $0d
    rlca                                          ; $5f6d: $07
    dec b                                         ; $5f6e: $05
    ld a, e                                       ; $5f6f: $7b
    ld a, l                                       ; $5f70: $7d
    ld c, $72                                     ; $5f71: $0e $72
    db $fc                                        ; $5f73: $fc
    inc b                                         ; $5f74: $04
    sbc b                                         ; $5f75: $98
    ld hl, sp+$70                                 ; $5f76: $f8 $70
    ldh a, [rNR41]                                ; $5f78: $f0 $20
    ldh [rLCDC], a                                ; $5f7a: $e0 $40
    ret nz                                        ; $5f7c: $c0

    ld [bc], a                                    ; $5f7d: $02
    add b                                         ; $5f7e: $80
    inc b                                         ; $5f7f: $04
    nop                                           ; $5f80: $00
    sbc d                                         ; $5f81: $9a
    ld a, e                                       ; $5f82: $7b
    ld a, l                                       ; $5f83: $7d
    ld l, $3b                                     ; $5f84: $2e $3b
    ld [hl], e                                    ; $5f86: $73
    ld a, a                                       ; $5f87: $7f
    ld e, a                                       ; $5f88: $5f
    ld a, a                                       ; $5f89: $7f
    ld a, l                                       ; $5f8a: $7d
    ld a, [hl]                                    ; $5f8b: $7e
    sbc e                                         ; $5f8c: $9b
    db $fc                                        ; $5f8d: $fc
    db $eb                                        ; $5f8e: $eb
    db $fc                                        ; $5f8f: $fc
    ld e, l                                       ; $5f90: $5d
    ld a, a                                       ; $5f91: $7f
    sub e                                         ; $5f92: $93
    rst $38                                       ; $5f93: $ff
    ld l, a                                       ; $5f94: $6f
    ld a, a                                       ; $5f95: $7f
    ld d, h                                       ; $5f96: $54
    ld a, a                                       ; $5f97: $7f
    ld b, h                                       ; $5f98: $44
    ld a, a                                       ; $5f99: $7f
    ld a, $3f                                     ; $5f9a: $3e $3f
    ld [bc], a                                    ; $5f9c: $02
    dec de                                        ; $5f9d: $1b
    ld [bc], a                                    ; $5f9e: $02
    ld bc, $0008                                  ; $5f9f: $01 $08 $00
    sub [hl]                                      ; $5fa2: $96
    ld hl, sp-$01                                 ; $5fa3: $f8 $ff
    rst $20                                       ; $5fa5: $e7
    rra                                           ; $5fa6: $1f
    rst $38                                       ; $5fa7: $ff
    inc bc                                        ; $5fa8: $03
    rst $28                                       ; $5fa9: $ef
    pop af                                        ; $5faa: $f1
    dec sp                                        ; $5fab: $3b
    db $fc                                        ; $5fac: $fc
    rra                                           ; $5fad: $1f
    cp $f3                                        ; $5fae: $fe $f3
    rst $38                                       ; $5fb0: $ff
    sub [hl]                                      ; $5fb1: $96
    cp $1e                                        ; $5fb2: $fe $1e
    cp $38                                        ; $5fb4: $fe $38
    ld hl, sp+$60                                 ; $5fb6: $f8 $60
    ldh [rSC], a                                  ; $5fb8: $e0 $02
    ret nz                                        ; $5fba: $c0

    ld c, $00                                     ; $5fbb: $0e $00
    adc [hl]                                      ; $5fbd: $8e
    dec sp                                        ; $5fbe: $3b
    inc a                                         ; $5fbf: $3c
    ld e, l                                       ; $5fc0: $5d
    ld e, a                                       ; $5fc1: $5f
    ld h, [hl]                                    ; $5fc2: $66
    daa                                           ; $5fc3: $27
    ld [hl], d                                    ; $5fc4: $72
    inc de                                        ; $5fc5: $13
    ld [hl], e                                    ; $5fc6: $73
    ld d, e                                       ; $5fc7: $53
    add hl, sp                                    ; $5fc8: $39
    add hl, hl                                    ; $5fc9: $29
    jr c, jr_0f3_5ff4                             ; $5fca: $38 $28

    ld [bc], a                                    ; $5fcc: $02
    db $10                                        ; $5fcd: $10
    inc b                                         ; $5fce: $04
    nop                                           ; $5fcf: $00
    rst $38                                       ; $5fd0: $ff
    dec c                                         ; $5fd1: $0d
    inc b                                         ; $5fd2: $04
    ld hl, sp+$19                                 ; $5fd3: $f8 $19
    push af                                       ; $5fd5: $f5
    inc bc                                        ; $5fd6: $03
    push af                                       ; $5fd7: $f5
    ld sp, hl                                     ; $5fd8: $f9
    push af                                       ; $5fd9: $f5
    ld bc, $09f5                                  ; $5fda: $01 $f5 $09
    push af                                       ; $5fdd: $f5
    ld c, $06                                     ; $5fde: $0e $06
    nop                                           ; $5fe0: $00
    ld [bc], a                                    ; $5fe1: $02
    ldh [$90], a                                  ; $5fe2: $e0 $90
    sub b                                         ; $5fe4: $90
    ldh a, [$a8]                                  ; $5fe5: $f0 $a8
    ret c                                         ; $5fe7: $d8

    xor c                                         ; $5fe8: $a9
    reti                                          ; $5fe9: $d9


    sub [hl]                                      ; $5fea: $96
    rst $28                                       ; $5feb: $ef
    rst $10                                       ; $5fec: $d7
    db $ec                                        ; $5fed: $ec
    ld l, d                                       ; $5fee: $6a
    ld a, l                                       ; $5fef: $7d
    dec e                                         ; $5ff0: $1d
    dec de                                        ; $5ff1: $1b
    add hl, bc                                    ; $5ff2: $09
    rrca                                          ; $5ff3: $0f

jr_0f3_5ff4:
    ld [bc], a                                    ; $5ff4: $02
    rlca                                          ; $5ff5: $07
    ld b, $00                                     ; $5ff6: $06 $00
    ld [bc], a                                    ; $5ff8: $02
    ld bc, $0288                                  ; $5ff9: $01 $88 $02
    inc bc                                        ; $5ffc: $03
    dec h                                         ; $5ffd: $25
    ld h, $56                                     ; $5ffe: $26 $56
    ld [hl], l                                    ; $6000: $75
    ld d, l                                       ; $6001: $55
    ld [hl], a                                    ; $6002: $77
    ld [bc], a                                    ; $6003: $02
    ld a, [hl]                                    ; $6004: $7e
    adc h                                         ; $6005: $8c
    xor e                                         ; $6006: $ab
    rst $10                                       ; $6007: $d7
    rst $38                                       ; $6008: $ff
    jr nz, jr_0f3_6040                            ; $6009: $20 $35

    sbc $be                                       ; $600b: $de $be
    rst $38                                       ; $600d: $ff
    ld b, c                                       ; $600e: $41
    pop bc                                        ; $600f: $c1
    ld b, b                                       ; $6010: $40
    ret nz                                        ; $6011: $c0

    ld [bc], a                                    ; $6012: $02
    add b                                         ; $6013: $80
    ld [$0600], sp                                ; $6014: $08 $00 $06
    add b                                         ; $6017: $80
    ld b, $00                                     ; $6018: $06 $00
    ld [bc], a                                    ; $601a: $02
    add b                                         ; $601b: $80
    add l                                         ; $601c: $85
    ret nz                                        ; $601d: $c0

    ld b, b                                       ; $601e: $40
    or b                                          ; $601f: $b0
    ld [hl], b                                    ; $6020: $70
    ld c, a                                       ; $6021: $4f
    ld [bc], a                                    ; $6022: $02
    cp a                                          ; $6023: $bf
    add e                                         ; $6024: $83
    ret nz                                        ; $6025: $c0

    ld h, c                                       ; $6026: $61
    ld a, a                                       ; $6027: $7f
    ld [bc], a                                    ; $6028: $02
    ld e, $14                                     ; $6029: $1e $14
    nop                                           ; $602b: $00
    ld [bc], a                                    ; $602c: $02
    ld [bc], a                                    ; $602d: $02
    add [hl]                                      ; $602e: $86
    rra                                           ; $602f: $1f
    dec e                                         ; $6030: $1d
    ld e, $02                                     ; $6031: $1e $02
    inc c                                         ; $6033: $0c
    inc e                                         ; $6034: $1c
    ld [bc], a                                    ; $6035: $02
    db $10                                        ; $6036: $10
    ld b, $00                                     ; $6037: $06 $00
    rst $38                                       ; $6039: $ff
    dec c                                         ; $603a: $0d
    inc b                                         ; $603b: $04
    ld hl, sp+$19                                 ; $603c: $f8 $19
    push af                                       ; $603e: $f5
    inc bc                                        ; $603f: $03

jr_0f3_6040:
    or $f9                                        ; $6040: $f6 $f9
    or $01                                        ; $6042: $f6 $01
    or $09                                        ; $6044: $f6 $09
    or $0d                                        ; $6046: $f6 $0d
    inc b                                         ; $6048: $04
    nop                                           ; $6049: $00
    ld [bc], a                                    ; $604a: $02
    ldh [$90], a                                  ; $604b: $e0 $90
    sub b                                         ; $604d: $90
    ldh a, [$a8]                                  ; $604e: $f0 $a8
    ret c                                         ; $6050: $d8

    xor c                                         ; $6051: $a9
    reti                                          ; $6052: $d9


    sub a                                         ; $6053: $97
    xor $d7                                       ; $6054: $ee $d7
    db $ec                                        ; $6056: $ec
    ld l, l                                       ; $6057: $6d
    ld a, e                                       ; $6058: $7b
    dec e                                         ; $6059: $1d
    dec de                                        ; $605a: $1b
    add hl, bc                                    ; $605b: $09
    rrca                                          ; $605c: $0f
    ld [bc], a                                    ; $605d: $02
    rlca                                          ; $605e: $07
    ld [$0200], sp                                ; $605f: $08 $00 $02
    ld bc, $0294                                  ; $6062: $01 $94 $02
    inc bc                                        ; $6065: $03
    ld b, l                                       ; $6066: $45
    ld b, [hl]                                    ; $6067: $46
    cp h                                          ; $6068: $bc
    rst $38                                       ; $6069: $ff
    rst $28                                       ; $606a: $ef
    db $d3                                        ; $606b: $d3
    cp $21                                        ; $606c: $fe $21
    dec hl                                        ; $606e: $2b
    call c, $ff9c                                 ; $606f: $dc $9c $ff
    ld [hl+], a                                   ; $6072: $22
    db $e3                                        ; $6073: $e3
    ld b, c                                       ; $6074: $41
    pop bc                                        ; $6075: $c1
    ld b, b                                       ; $6076: $40
    ret nz                                        ; $6077: $c0

    ld [bc], a                                    ; $6078: $02
    add b                                         ; $6079: $80
    ld [$0200], sp                                ; $607a: $08 $00 $02
    add b                                         ; $607d: $80
    add c                                         ; $607e: $81
    ret nz                                        ; $607f: $c0

    ld [bc], a                                    ; $6080: $02
    ld b, b                                       ; $6081: $40
    add c                                         ; $6082: $81
    ret nz                                        ; $6083: $c0

    ld [bc], a                                    ; $6084: $02
    add b                                         ; $6085: $80
    ld [bc], a                                    ; $6086: $02
    nop                                           ; $6087: $00
    ld [bc], a                                    ; $6088: $02
    add b                                         ; $6089: $80
    add e                                         ; $608a: $83
    ret nz                                        ; $608b: $c0

    ld b, b                                       ; $608c: $40
    and b                                         ; $608d: $a0
    ld [bc], a                                    ; $608e: $02
    ld h, b                                       ; $608f: $60
    adc c                                         ; $6090: $89
    and b                                         ; $6091: $a0
    ld d, b                                       ; $6092: $50
    or b                                          ; $6093: $b0
    xor b                                         ; $6094: $a8
    ret c                                         ; $6095: $d8

    ld e, a                                       ; $6096: $5f
    ld h, a                                       ; $6097: $67
    scf                                           ; $6098: $37
    jr c, jr_0f3_609d                             ; $6099: $38 $02

    rrca                                          ; $609b: $0f
    inc d                                         ; $609c: $14

jr_0f3_609d:
    nop                                           ; $609d: $00
    ld [bc], a                                    ; $609e: $02
    ld [bc], a                                    ; $609f: $02

Jump_0f3_60a0:
    add [hl]                                      ; $60a0: $86
    rlca                                          ; $60a1: $07
    dec b                                         ; $60a2: $05
    rrca                                          ; $60a3: $0f
    dec c                                         ; $60a4: $0d
    ld c, $02                                     ; $60a5: $0e $02
    ld [bc], a                                    ; $60a7: $02
    inc c                                         ; $60a8: $0c
    ld b, $00                                     ; $60a9: $06 $00
    rst $38                                       ; $60ab: $ff
    dec c                                         ; $60ac: $0d
    inc b                                         ; $60ad: $04
    ld hl, sp+$19                                 ; $60ae: $f8 $19
    push af                                       ; $60b0: $f5
    inc bc                                        ; $60b1: $03
    rst $30                                       ; $60b2: $f7
    ld hl, sp-$09                                 ; $60b3: $f8 $f7
    nop                                           ; $60b5: $00
    rst $30                                       ; $60b6: $f7
    ld [$0ef7], sp                                ; $60b7: $08 $f7 $0e
    ld [bc], a                                    ; $60ba: $02
    nop                                           ; $60bb: $00
    ld [bc], a                                    ; $60bc: $02
    ld h, b                                       ; $60bd: $60
    sub b                                         ; $60be: $90
    ld d, b                                       ; $60bf: $50
    ld [hl], b                                    ; $60c0: $70
    adc b                                         ; $60c1: $88

jr_0f3_60c2:
    ld hl, sp-$6b                                 ; $60c2: $f8 $95
    db $ed                                        ; $60c4: $ed
    ld d, [hl]                                    ; $60c5: $56
    ld l, a                                       ; $60c6: $6f
    ld l, e                                       ; $60c7: $6b
    halt                                          ; $60c8: $76
    ld [hl], $3d                                  ; $60c9: $36 $3d
    ld e, $1d                                     ; $60cb: $1e $1d
    inc b                                         ; $60cd: $04
    rlca                                          ; $60ce: $07
    ld [bc], a                                    ; $60cf: $02
    inc bc                                        ; $60d0: $03

jr_0f3_60d1:
    inc c                                         ; $60d1: $0c
    nop                                           ; $60d2: $00
    ld [bc], a                                    ; $60d3: $02
    ld b, b                                       ; $60d4: $40
    ld [bc], a                                    ; $60d5: $02
    ld a, a                                       ; $60d6: $7f
    adc [hl]                                      ; $60d7: $8e
    xor $d1                                       ; $60d8: $ee $d1
    ld [hl], a                                    ; $60da: $77
    xor b                                         ; $60db: $a8
    xor h                                         ; $60dc: $ac
    ld e, a                                       ; $60dd: $5f
    sbc a                                         ; $60de: $9f
    rst $38                                       ; $60df: $ff
    jr nz, jr_0f3_60c2                            ; $60e0: $20 $e0

    and b                                         ; $60e2: $a0
    ldh [$a0], a                                  ; $60e3: $e0 $a0
    ldh [rSC], a                                  ; $60e5: $e0 $02
    ret nz                                        ; $60e7: $c0

    ld a, [bc]                                    ; $60e8: $0a
    nop                                           ; $60e9: $00
    ld [bc], a                                    ; $60ea: $02
    ld [hl], b                                    ; $60eb: $70
    add h                                         ; $60ec: $84
    or b                                          ; $60ed: $b0
    ret nc                                        ; $60ee: $d0

    jr nz, jr_0f3_60d1                            ; $60ef: $20 $e0

    ld [bc], a                                    ; $60f1: $02
    ret nz                                        ; $60f2: $c0

Call_0f3_60f3:
    sub b                                         ; $60f3: $90
    ldh [rNR41], a                                ; $60f4: $e0 $20
    ldh a, [rNR10]                                ; $60f6: $f0 $10
    jr c, jr_0f3_60c2                             ; $60f8: $38 $c8

    call nc, $3cec                                ; $60fa: $d4 $ec $3c
    inc h                                         ; $60fd: $24
    ld a, [hl+]                                   ; $60fe: $2a
    ld [hl], $17                                  ; $60ff: $36 $17
    add hl, de                                    ; $6101: $19
    dec c                                         ; $6102: $0d
    ld c, $02                                     ; $6103: $0e $02
    inc bc                                        ; $6105: $03
    jr jr_0f3_6108                                ; $6106: $18 $00

jr_0f3_6108:
    ld [bc], a                                    ; $6108: $02
    ld [bc], a                                    ; $6109: $02
    add h                                         ; $610a: $84
    ccf                                           ; $610b: $3f
    dec a                                         ; $610c: $3d
    ld a, $02                                     ; $610d: $3e $02
    ld [bc], a                                    ; $610f: $02
    inc a                                         ; $6110: $3c
    ld b, $00                                     ; $6111: $06 $00
    rst $38                                       ; $6113: $ff
    dec c                                         ; $6114: $0d
    inc b                                         ; $6115: $04
    ld hl, sp+$19                                 ; $6116: $f8 $19
    push af                                       ; $6118: $f5
    inc bc                                        ; $6119: $03
    or $f8                                        ; $611a: $f6 $f8
    or $00                                        ; $611c: $f6 $00
    or $08                                        ; $611e: $f6 $08
    or $0d                                        ; $6120: $f6 $0d
    inc b                                         ; $6122: $04
    nop                                           ; $6123: $00
    ld [bc], a                                    ; $6124: $02
    ld h, b                                       ; $6125: $60
    sub b                                         ; $6126: $90
    ld d, b                                       ; $6127: $50
    ld [hl], b                                    ; $6128: $70
    adc b                                         ; $6129: $88
    ld hl, sp-$6b                                 ; $612a: $f8 $95
    db $ed                                        ; $612c: $ed
    ld d, [hl]                                    ; $612d: $56
    ld l, a                                       ; $612e: $6f
    ld l, e                                       ; $612f: $6b
    halt                                          ; $6130: $76
    ld [hl], $3d                                  ; $6131: $36 $3d
    ld e, $1d                                     ; $6133: $1e $1d
    inc b                                         ; $6135: $04
    rlca                                          ; $6136: $07
    ld [bc], a                                    ; $6137: $02
    inc bc                                        ; $6138: $03
    ld a, [bc]                                    ; $6139: $0a
    nop                                           ; $613a: $00
    ld [bc], a                                    ; $613b: $02
    ld bc, $0f02                                  ; $613c: $01 $02 $0f
    sub b                                         ; $613f: $90
    ld [hl], a                                    ; $6140: $77
    ld a, b                                       ; $6141: $78
    cp l                                          ; $6142: $bd
    jp nz, $bf60                                  ; $6143: $c2 $60 $bf

    xor a                                         ; $6146: $af
    ld e, a                                       ; $6147: $5f
    sbc b                                         ; $6148: $98
    ld hl, sp+$20                                 ; $6149: $f8 $20
    ldh [$a0], a                                  ; $614b: $e0 $a0
    ldh [$a0], a                                  ; $614d: $e0 $a0
    ldh [rSC], a                                  ; $614f: $e0 $02
    ret nz                                        ; $6151: $c0

    ld [$0200], sp                                ; $6152: $08 $00 $02
    ldh [$91], a                                  ; $6155: $e0 $91
    ld [hl], b                                    ; $6157: $70
    sub b                                         ; $6158: $90
    and b                                         ; $6159: $a0
    ldh [$60], a                                  ; $615a: $e0 $60
    ldh [$f0], a                                  ; $615c: $e0 $f0
    db $10                                        ; $615e: $10
    ld a, b                                       ; $615f: $78
    adc b                                         ; $6160: $88
    call c, Call_000_2ae4                         ; $6161: $dc $e4 $2a
    ld [hl], $16                                  ; $6164: $36 $16
    ld a, [de]                                    ; $6166: $1a
    dec c                                         ; $6167: $0d
    ld [bc], a                                    ; $6168: $02
    dec bc                                        ; $6169: $0b
    add l                                         ; $616a: $85
    dec c                                         ; $616b: $0d
    rlca                                          ; $616c: $07
    inc b                                         ; $616d: $04
    ld [bc], a                                    ; $616e: $02
    inc bc                                        ; $616f: $03
    ld [bc], a                                    ; $6170: $02
    ld bc, $001a                                  ; $6171: $01 $1a $00
    ld [bc], a                                    ; $6174: $02
    ld e, $82                                     ; $6175: $1e $82
    rra                                           ; $6177: $1f
    ld bc, $1e02                                  ; $6178: $01 $02 $1e
    inc b                                         ; $617b: $04
    nop                                           ; $617c: $00
    rst $38                                       ; $617d: $ff
    dec c                                         ; $617e: $0d
    inc b                                         ; $617f: $04
    ld hl, sp+$19                                 ; $6180: $f8 $19
    push af                                       ; $6182: $f5
    inc bc                                        ; $6183: $03
    push af                                       ; $6184: $f5
    ld hl, sp-$0b                                 ; $6185: $f8 $f5
    nop                                           ; $6187: $00
    push af                                       ; $6188: $f5
    ld [$0cf5], sp                                ; $6189: $08 $f5 $0c
    ld b, $00                                     ; $618c: $06 $00
    ld [bc], a                                    ; $618e: $02
    ld [hl], b                                    ; $618f: $70
    sub b                                         ; $6190: $90
    adc b                                         ; $6191: $88
    ld hl, sp+$54                                 ; $6192: $f8 $54
    ld l, h                                       ; $6194: $6c
    ld d, h                                       ; $6195: $54
    ld l, h                                       ; $6196: $6c
    ld c, a                                       ; $6197: $4f
    ld [hl], a                                    ; $6198: $77
    ld l, e                                       ; $6199: $6b
    halt                                          ; $619a: $76
    ld [hl], $3d                                  ; $619b: $36 $3d
    ld c, $0d                                     ; $619d: $0e $0d
    inc b                                         ; $619f: $04
    rlca                                          ; $61a0: $07
    ld [bc], a                                    ; $61a1: $02
    inc bc                                        ; $61a2: $03
    ld [$0200], sp                                ; $61a3: $08 $00 $02
    ld bc, $0381                                  ; $61a6: $01 $81 $03
    ld [bc], a                                    ; $61a9: $02
    ld [bc], a                                    ; $61aa: $02
    add c                                         ; $61ab: $81
    inc bc                                        ; $61ac: $03
    ld [bc], a                                    ; $61ad: $02
    rra                                           ; $61ae: $1f
    adc [hl]                                      ; $61af: $8e
    ld a, a                                       ; $61b0: $7f
    ld h, b                                       ; $61b1: $60
    db $fc                                        ; $61b2: $fc
    sub e                                         ; $61b3: $93
    db $d3                                        ; $61b4: $d3
    cpl                                           ; $61b5: $2f
    ld c, h                                       ; $61b6: $4c
    db $fc                                        ; $61b7: $fc
    sub b                                         ; $61b8: $90
    ldh a, [$a0]                                  ; $61b9: $f0 $a0
    ldh [$a0], a                                  ; $61bb: $e0 $a0
    ldh [rSC], a                                  ; $61bd: $e0 $02
    ret nz                                        ; $61bf: $c0

    ld b, $00                                     ; $61c0: $06 $00
    inc bc                                        ; $61c2: $03
    ret nz                                        ; $61c3: $c0

    ld [bc], a                                    ; $61c4: $02
    ld b, b                                       ; $61c5: $40
    add c                                         ; $61c6: $81
    ret nz                                        ; $61c7: $c0

    ld [bc], a                                    ; $61c8: $02
    add b                                         ; $61c9: $80
    ld [bc], a                                    ; $61ca: $02
    ld hl, sp-$76                                 ; $61cb: $f8 $8a
    or $0e                                        ; $61cd: $f6 $0e
    dec a                                         ; $61cf: $3d
    jp $fdfa                                      ; $61d0: $c3 $fa $fd


    dec b                                         ; $61d3: $05
    ld b, $03                                     ; $61d4: $06 $03
    ld [bc], a                                    ; $61d6: $02
    ld [bc], a                                    ; $61d7: $02
    ld bc, $0018                                  ; $61d8: $01 $18 $00
    inc b                                         ; $61db: $04
    ld [$0481], sp                                ; $61dc: $08 $81 $04
    ld [bc], a                                    ; $61df: $02
    inc c                                         ; $61e0: $0c
    add a                                         ; $61e1: $87
    inc b                                         ; $61e2: $04
    ld c, $0a                                     ; $61e3: $0e $0a
    ld c, $0a                                     ; $61e5: $0e $0a
    rlca                                          ; $61e7: $07
    dec b                                         ; $61e8: $05
    ld [bc], a                                    ; $61e9: $02
    ld [bc], a                                    ; $61ea: $02
    ld [bc], a                                    ; $61eb: $02
    nop                                           ; $61ec: $00
    rst $38                                       ; $61ed: $ff
    dec c                                         ; $61ee: $0d
    inc b                                         ; $61ef: $04
    ld hl, sp+$19                                 ; $61f0: $f8 $19
    push af                                       ; $61f2: $f5
    inc bc                                        ; $61f3: $03
    or $f9                                        ; $61f4: $f6 $f9
    or $01                                        ; $61f6: $f6 $01
    or $09                                        ; $61f8: $f6 $09
    or $0d                                        ; $61fa: $f6 $0d
    inc b                                         ; $61fc: $04
    nop                                           ; $61fd: $00
    ld [bc], a                                    ; $61fe: $02
    ldh [$90], a                                  ; $61ff: $e0 $90
    sub b                                         ; $6201: $90
    ldh a, [$a8]                                  ; $6202: $f0 $a8
    ret c                                         ; $6204: $d8

    xor c                                         ; $6205: $a9
    reti                                          ; $6206: $d9


    sub [hl]                                      ; $6207: $96
    rst $28                                       ; $6208: $ef
    push de                                       ; $6209: $d5
    xor $6e                                       ; $620a: $ee $6e
    ld a, l                                       ; $620c: $7d
    dec e                                         ; $620d: $1d
    dec de                                        ; $620e: $1b
    add hl, bc                                    ; $620f: $09
    rrca                                          ; $6210: $0f
    ld [bc], a                                    ; $6211: $02
    rlca                                          ; $6212: $07
    ld [$0200], sp                                ; $6213: $08 $00 $02
    inc bc                                        ; $6216: $03
    add [hl]                                      ; $6217: $86
    ld b, $05                                     ; $6218: $06 $05
    daa                                           ; $621a: $27
    dec h                                         ; $621b: $25
    ld d, l                                       ; $621c: $55
    ld [hl], a                                    ; $621d: $77
    ld [bc], a                                    ; $621e: $02
    ld a, [hl]                                    ; $621f: $7e
    adc h                                         ; $6220: $8c
    cp a                                          ; $6221: $bf
    jp Jump_000_21fe                              ; $6222: $c3 $fe $21


    and c                                         ; $6225: $a1
    ld e, [hl]                                    ; $6226: $5e
    cp [hl]                                       ; $6227: $be
    rst $38                                       ; $6228: $ff
    ld b, c                                       ; $6229: $41
    pop bc                                        ; $622a: $c1
    ld b, b                                       ; $622b: $40
    ret nz                                        ; $622c: $c0

    ld [bc], a                                    ; $622d: $02
    add b                                         ; $622e: $80
    ld a, [bc]                                    ; $622f: $0a
    nop                                           ; $6230: $00
    ld [bc], a                                    ; $6231: $02
    add b                                         ; $6232: $80
    ld b, $00                                     ; $6233: $06 $00
    ld [bc], a                                    ; $6235: $02
    rrca                                          ; $6236: $0f
    add [hl]                                      ; $6237: $86
    rst $30                                       ; $6238: $f7
    ld hl, sp-$01                                 ; $6239: $f8 $ff
    rlca                                          ; $623b: $07
    ld l, b                                       ; $623c: $68
    sbc b                                         ; $623d: $98
    ld [bc], a                                    ; $623e: $02
    ldh a, [rNR21]                                ; $623f: $f0 $16
    nop                                           ; $6241: $00
    ld [bc], a                                    ; $6242: $02
    ld [$0c86], sp                                ; $6243: $08 $86 $0c
    inc b                                         ; $6246: $04
    ld c, $0a                                     ; $6247: $0e $0a
    rlca                                          ; $6249: $07
    dec b                                         ; $624a: $05
    ld [bc], a                                    ; $624b: $02
    ld [bc], a                                    ; $624c: $02
    inc c                                         ; $624d: $0c
    nop                                           ; $624e: $00
    rst $38                                       ; $624f: $ff
    dec c                                         ; $6250: $0d
    inc b                                         ; $6251: $04
    ld hl, sp+$19                                 ; $6252: $f8 $19
    push af                                       ; $6254: $f5
    inc bc                                        ; $6255: $03
    rst $30                                       ; $6256: $f7
    ld sp, hl                                     ; $6257: $f9
    rst $30                                       ; $6258: $f7
    ld bc, $09f7                                  ; $6259: $01 $f7 $09
    rst $30                                       ; $625c: $f7
    ld de, $0002                                  ; $625d: $11 $02 $00
    ld [bc], a                                    ; $6260: $02
    ldh [$90], a                                  ; $6261: $e0 $90
    sub b                                         ; $6263: $90
    ldh a, [$a8]                                  ; $6264: $f0 $a8
    ret c                                         ; $6266: $d8

    xor b                                         ; $6267: $a8
    ret c                                         ; $6268: $d8

    sub l                                         ; $6269: $95
    db $ed                                        ; $626a: $ed
    sub $ef                                       ; $626b: $d6 $ef
    ld l, a                                       ; $626d: $6f
    ld a, h                                       ; $626e: $7c
    ld a, [de]                                    ; $626f: $1a
    dec e                                         ; $6270: $1d
    add hl, bc                                    ; $6271: $09
    rrca                                          ; $6272: $0f
    ld [bc], a                                    ; $6273: $02
    rlca                                          ; $6274: $07
    ld a, [bc]                                    ; $6275: $0a
    nop                                           ; $6276: $00
    ld [bc], a                                    ; $6277: $02
    inc bc                                        ; $6278: $03
    sub d                                         ; $6279: $92
    dec b                                         ; $627a: $05
    ld b, $33                                     ; $627b: $06 $33
    ld [hl-], a                                   ; $627d: $32
    cpl                                           ; $627e: $2f
    ccf                                           ; $627f: $3f
    ld a, h                                       ; $6280: $7c
    ld [hl], e                                    ; $6281: $73
    cp a                                          ; $6282: $bf
    ret z                                         ; $6283: $c8

    add sp, $17                                   ; $6284: $e8 $17
    ld c, a                                       ; $6286: $4f
    rst $38                                       ; $6287: $ff
    or b                                          ; $6288: $b0
    ldh a, [rLCDC]                                ; $6289: $f0 $40
    ret nz                                        ; $628b: $c0

    ld [bc], a                                    ; $628c: $02
    add b                                         ; $628d: $80
    inc c                                         ; $628e: $0c
    nop                                           ; $628f: $00
    ld [bc], a                                    ; $6290: $02
    add b                                         ; $6291: $80
    add d                                         ; $6292: $82
    ld b, b                                       ; $6293: $40
    ret nz                                        ; $6294: $c0

    ld [bc], a                                    ; $6295: $02
    add b                                         ; $6296: $80
    adc h                                         ; $6297: $8c
    ld h, b                                       ; $6298: $60
    ldh [$d8], a                                  ; $6299: $e0 $d8
    jr c, jr_0f3_62d3                             ; $629b: $38 $36

    adc $dd                                       ; $629d: $ce $dd
    db $e3                                        ; $629f: $e3
    dec sp                                        ; $62a0: $3b
    inc a                                         ; $62a1: $3c
    ld b, $07                                     ; $62a2: $06 $07
    ld [bc], a                                    ; $62a4: $02
    ld bc, $0016                                  ; $62a5: $01 $16 $00
    ld [bc], a                                    ; $62a8: $02

jr_0f3_62a9:
    rlca                                          ; $62a9: $07
    add [hl]                                      ; $62aa: $86
    rst $38                                       ; $62ab: $ff
    ld sp, hl                                     ; $62ac: $f9
    cp $06                                        ; $62ad: $fe $06
    jr c, jr_0f3_62a9                             ; $62af: $38 $f8

    ld [bc], a                                    ; $62b1: $02
    ret nz                                        ; $62b2: $c0

    ld a, [bc]                                    ; $62b3: $0a
    nop                                           ; $62b4: $00
    rst $38                                       ; $62b5: $ff
    rrca                                          ; $62b6: $0f
    dec b                                         ; $62b7: $05
    ld hl, sp+$19                                 ; $62b8: $f8 $19
    push af                                       ; $62ba: $f5
    inc bc                                        ; $62bb: $03
    ld hl, sp-$08                                 ; $62bc: $f8 $f8
    ld hl, sp+$00                                 ; $62be: $f8 $00
    ld hl, sp+$08                                 ; $62c0: $f8 $08
    ld hl, sp+$10                                 ; $62c2: $f8 $10
    ld hl, sp+$12                                 ; $62c4: $f8 $12
    ld [bc], a                                    ; $62c6: $02
    ld h, b                                       ; $62c7: $60
    sub b                                         ; $62c8: $90
    ld d, b                                       ; $62c9: $50
    ld [hl], b                                    ; $62ca: $70
    adc b                                         ; $62cb: $88
    ld hl, sp-$6c                                 ; $62cc: $f8 $94
    db $ec                                        ; $62ce: $ec
    ld d, [hl]                                    ; $62cf: $56
    ld l, [hl]                                    ; $62d0: $6e
    ld l, e                                       ; $62d1: $6b
    ld [hl], a                                    ; $62d2: $77

jr_0f3_62d3:
    ld [hl], $3f                                  ; $62d3: $36 $3f
    dec e                                         ; $62d5: $1d
    ld e, $04                                     ; $62d6: $1e $04
    rlca                                          ; $62d8: $07
    ld [bc], a                                    ; $62d9: $02
    inc bc                                        ; $62da: $03
    stop                                          ; $62db: $10 $00
    ld [bc], a                                    ; $62dd: $02
    inc bc                                        ; $62de: $03
    ld [bc], a                                    ; $62df: $02
    rrca                                          ; $62e0: $0f
    adc d                                         ; $62e1: $8a
    ld [hl], a                                    ; $62e2: $77
    ld a, b                                       ; $62e3: $78
    cp [hl]                                       ; $62e4: $be
    jp $3fd0                                      ; $62e5: $c3 $d0 $3f


    ld c, a                                       ; $62e8: $4f
    rst $38                                       ; $62e9: $ff
    or b                                          ; $62ea: $b0
    ldh a, [rSC]                                  ; $62eb: $f0 $02
    ret nz                                        ; $62ed: $c0

    ld c, $00                                     ; $62ee: $0e $00
    ld [bc], a                                    ; $62f0: $02
    ld a, b                                       ; $62f1: $78
    add d                                         ; $62f2: $82
    ld d, h                                       ; $62f3: $54
    ld l, h                                       ; $62f4: $6c
    ld [bc], a                                    ; $62f5: $02
    db $fc                                        ; $62f6: $fc
    add [hl]                                      ; $62f7: $86
    ei                                            ; $62f8: $fb
    rlca                                          ; $62f9: $07
    xor [hl]                                      ; $62fa: $ae
    ld d, c                                       ; $62fb: $51
    db $fd                                        ; $62fc: $fd
    cp $02                                        ; $62fd: $fe $02
    inc bc                                        ; $62ff: $03
    ld d, $00                                     ; $6300: $16 $00
    ld [bc], a                                    ; $6302: $02
    ld bc, $0786                                  ; $6303: $01 $86 $07
    ld b, $ff                                     ; $6306: $06 $ff
    ld sp, hl                                     ; $6308: $f9
    ld a, [$0206]                                 ; $6309: $fa $06 $02
    db $fc                                        ; $630c: $fc
    inc d                                         ; $630d: $14
    nop                                           ; $630e: $00
    inc bc                                        ; $630f: $03
    inc bc                                        ; $6310: $03
    add c                                         ; $6311: $81
    ld bc, $0202                                  ; $6312: $01 $02 $02
    ld d, $00                                     ; $6315: $16 $00
    rst $38                                       ; $6317: $ff
    dec c                                         ; $6318: $0d
    inc b                                         ; $6319: $04
    ld hl, sp+$19                                 ; $631a: $f8 $19
    push af                                       ; $631c: $f5
    inc bc                                        ; $631d: $03
    ld hl, sp-$08                                 ; $631e: $f8 $f8
    ld hl, sp+$00                                 ; $6320: $f8 $00
    ld hl, sp+$08                                 ; $6322: $f8 $08
    ld hl, sp+$10                                 ; $6324: $f8 $10
    ld [bc], a                                    ; $6326: $02
    jr nz, jr_0f3_632b                            ; $6327: $20 $02

    ldh a, [$8e]                                  ; $6329: $f0 $8e

jr_0f3_632b:
    adc b                                         ; $632b: $88
    ld hl, sp-$54                                 ; $632c: $f8 $ac
    call c, $ec94                                 ; $632e: $dc $94 $ec
    ld c, d                                       ; $6331: $4a
    halt                                          ; $6332: $76
    daa                                           ; $6333: $27
    ccf                                           ; $6334: $3f
    dec e                                         ; $6335: $1d
    ld e, $04                                     ; $6336: $1e $04
    rlca                                          ; $6338: $07
    ld [bc], a                                    ; $6339: $02
    inc bc                                        ; $633a: $03
    ld [de], a                                    ; $633b: $12
    nop                                           ; $633c: $00
    ld [bc], a                                    ; $633d: $02
    ld b, $02                                     ; $633e: $06 $02
    ccf                                           ; $6340: $3f
    adc b                                         ; $6341: $88
    rst $18                                       ; $6342: $df
    ldh [$f6], a                                  ; $6343: $e0 $f6
    dec bc                                        ; $6345: $0b
    ld hl, $beff                                  ; $6346: $21 $ff $be
    cp $02                                        ; $6349: $fe $02
    ret nz                                        ; $634b: $c0

    inc c                                         ; $634c: $0c
    nop                                           ; $634d: $00
    ld [bc], a                                    ; $634e: $02
    db $10                                        ; $634f: $10
    add [hl]                                      ; $6350: $86
    jr c, jr_0f3_637b                             ; $6351: $38 $28

    inc l                                         ; $6353: $2c
    inc [hl]                                      ; $6354: $34
    inc d                                         ; $6355: $14
    inc e                                         ; $6356: $1c
    ld [bc], a                                    ; $6357: $02
    ld hl, sp-$7d                                 ; $6358: $f8 $83
    xor $1e                                       ; $635a: $ee $1e
    dec e                                         ; $635c: $1d
    ld [bc], a                                    ; $635d: $02
    db $e3                                        ; $635e: $e3
    add c                                         ; $635f: $81
    db $fc                                        ; $6360: $fc
    ld [bc], a                                    ; $6361: $02
    rra                                           ; $6362: $1f
    stop                                          ; $6363: $10 $00
    ld [bc], a                                    ; $6365: $02
    inc b                                         ; $6366: $04
    add e                                         ; $6367: $83
    ld c, $0a                                     ; $6368: $0e $0a
    dec b                                         ; $636a: $05
    ld [bc], a                                    ; $636b: $02
    rlca                                          ; $636c: $07
    add a                                         ; $636d: $87
    dec b                                         ; $636e: $05
    ld e, $1a                                     ; $636f: $1e $1a
    db $fc                                        ; $6371: $fc
    db $e4                                        ; $6372: $e4
    add sp, $18                                   ; $6373: $e8 $18
    ld [bc], a                                    ; $6375: $02
    ldh a, [$0e]                                  ; $6376: $f0 $0e
    nop                                           ; $6378: $00
    rst $38                                       ; $6379: $ff
    dec c                                         ; $637a: $0d

jr_0f3_637b:
    inc b                                         ; $637b: $04
    ld hl, sp+$19                                 ; $637c: $f8 $19
    push af                                       ; $637e: $f5
    inc bc                                        ; $637f: $03
    ld hl, sp-$08                                 ; $6380: $f8 $f8
    ld hl, sp+$00                                 ; $6382: $f8 $00
    ld hl, sp+$08                                 ; $6384: $f8 $08
    ld hl, sp+$0e                                 ; $6386: $f8 $0e
    ld [bc], a                                    ; $6388: $02
    ld h, b                                       ; $6389: $60
    sub b                                         ; $638a: $90
    ld d, b                                       ; $638b: $50
    ld [hl], b                                    ; $638c: $70
    adc b                                         ; $638d: $88
    ld hl, sp-$6c                                 ; $638e: $f8 $94
    db $ec                                        ; $6390: $ec
    ld d, [hl]                                    ; $6391: $56
    ld l, [hl]                                    ; $6392: $6e
    ld l, e                                       ; $6393: $6b
    ld [hl], a                                    ; $6394: $77
    ld [hl], $3f                                  ; $6395: $36 $3f
    dec e                                         ; $6397: $1d
    ld e, $04                                     ; $6398: $1e $04
    rlca                                          ; $639a: $07
    ld [bc], a                                    ; $639b: $02
    inc bc                                        ; $639c: $03
    stop                                          ; $639d: $10 $00
    ld [bc], a                                    ; $639f: $02
    ld [bc], a                                    ; $63a0: $02
    add d                                         ; $63a1: $82
    dec b                                         ; $63a2: $05
    rlca                                          ; $63a3: $07
    ld [bc], a                                    ; $63a4: $02
    ld a, a                                       ; $63a5: $7f
    adc b                                         ; $63a6: $88
    cp a                                          ; $63a7: $bf
    ret nz                                        ; $63a8: $c0

    db $ec                                        ; $63a9: $ec
    rla                                           ; $63aa: $17
    ld b, b                                       ; $63ab: $40
    rst $38                                       ; $63ac: $ff
    cp a                                          ; $63ad: $bf
    rst $38                                       ; $63ae: $ff
    ld [bc], a                                    ; $63af: $02
    ret nz                                        ; $63b0: $c0

    ld c, $00                                     ; $63b1: $0e $00
    ld [bc], a                                    ; $63b3: $02
    ld [$1c90], sp                                ; $63b4: $08 $90 $1c

jr_0f3_63b7:
    inc d                                         ; $63b7: $14
    inc l                                         ; $63b8: $2c
    inc [hl]                                      ; $63b9: $34
    add sp, -$08                                  ; $63ba: $e8 $f8
    ret nc                                        ; $63bc: $d0

    jr nc, jr_0f3_63b7                            ; $63bd: $30 $f8

    ld [$e61e], sp                                ; $63bf: $08 $1e $e6
    db $ed                                        ; $63c2: $ed
    di                                            ; $63c3: $f3
    dec de                                        ; $63c4: $1b
    inc e                                         ; $63c5: $1c
    ld [bc], a                                    ; $63c6: $02
    rlca                                          ; $63c7: $07
    ld c, $00                                     ; $63c8: $0e $00
    ld [bc], a                                    ; $63ca: $02
    jr @-$79                                      ; $63cb: $18 $85

    inc a                                         ; $63cd: $3c
    inc h                                         ; $63ce: $24
    ld a, [de]                                    ; $63cf: $1a
    ld e, $05                                     ; $63d0: $1e $05
    ld [bc], a                                    ; $63d2: $02
    rlca                                          ; $63d3: $07
    add a                                         ; $63d4: $87
    dec b                                         ; $63d5: $05
    rrca                                          ; $63d6: $0f
    dec c                                         ; $63d7: $0d
    ld [hl], $3a                                  ; $63d8: $36 $3a
    inc [hl]                                      ; $63da: $34
    inc c                                         ; $63db: $0c
    ld [bc], a                                    ; $63dc: $02
    jr c, jr_0f3_63e9                             ; $63dd: $38 $0a

    nop                                           ; $63df: $00
    rst $38                                       ; $63e0: $ff
    dec c                                         ; $63e1: $0d
    inc b                                         ; $63e2: $04
    ld hl, sp+$19                                 ; $63e3: $f8 $19
    push af                                       ; $63e5: $f5
    inc bc                                        ; $63e6: $03
    ld hl, sp-$08                                 ; $63e7: $f8 $f8

jr_0f3_63e9:
    ld hl, sp+$00                                 ; $63e9: $f8 $00
    ld hl, sp+$08                                 ; $63eb: $f8 $08
    ld hl, sp+$0d                                 ; $63ed: $f8 $0d
    ld [bc], a                                    ; $63ef: $02
    ld [hl], b                                    ; $63f0: $70
    sub b                                         ; $63f1: $90
    adc b                                         ; $63f2: $88
    ld hl, sp+$54                                 ; $63f3: $f8 $54
    ld l, h                                       ; $63f5: $6c
    ld d, h                                       ; $63f6: $54
    ld l, h                                       ; $63f7: $6c
    ld c, [hl]                                    ; $63f8: $4e
    halt                                          ; $63f9: $76
    ld l, e                                       ; $63fa: $6b
    ld [hl], a                                    ; $63fb: $77
    ld [hl], $3f                                  ; $63fc: $36 $3f
    dec c                                         ; $63fe: $0d
    ld c, $04                                     ; $63ff: $0e $04
    rlca                                          ; $6401: $07
    ld [bc], a                                    ; $6402: $02
    inc bc                                        ; $6403: $03
    ld c, $00                                     ; $6404: $0e $00
    ld [bc], a                                    ; $6406: $02
    inc bc                                        ; $6407: $03
    add d                                         ; $6408: $82
    dec b                                         ; $6409: $05
    rlca                                          ; $640a: $07
    ld [bc], a                                    ; $640b: $02
    rra                                           ; $640c: $1f
    adc d                                         ; $640d: $8a
    ld a, a                                       ; $640e: $7f
    ld h, b                                       ; $640f: $60
    cp a                                          ; $6410: $bf
    call nz, $3fc0                                ; $6411: $c4 $c0 $3f
    ld e, a                                       ; $6414: $5f
    rst $38                                       ; $6415: $ff
    and b                                         ; $6416: $a0
    ldh [rSC], a                                  ; $6417: $e0 $02
    ret nz                                        ; $6419: $c0

    stop                                          ; $641a: $10 $00
    ld [bc], a                                    ; $641c: $02
    inc e                                         ; $641d: $1c
    adc [hl]                                      ; $641e: $8e
    xor l                                         ; $641f: $ad
    or l                                          ; $6420: $b5
    ld [hl], a                                    ; $6421: $77
    xor $bf                                       ; $6422: $ee $bf
    ld a, l                                       ; $6424: $7d
    ld a, [c]                                     ; $6425: $f2
    ld [de], a                                    ; $6426: $12
    inc a                                         ; $6427: $3c
    call z, $e7db                                 ; $6428: $cc $db $e7
    scf                                           ; $642b: $37
    jr c, @+$04                                   ; $642c: $38 $02

    rrca                                          ; $642e: $0f
    stop                                          ; $642f: $10 $00
    ld [bc], a                                    ; $6431: $02
    jr @-$72                                      ; $6432: $18 $8c

    inc d                                         ; $6434: $14
    inc c                                         ; $6435: $0c
    ld a, [de]                                    ; $6436: $1a
    ld e, $05                                     ; $6437: $1e $05
    rlca                                          ; $6439: $07
    rrca                                          ; $643a: $0f
    dec c                                         ; $643b: $0d
    ld d, $1a                                     ; $643c: $16 $1a
    inc d                                         ; $643e: $14
    inc c                                         ; $643f: $0c
    ld [bc], a                                    ; $6440: $02
    jr jr_0f3_644d                                ; $6441: $18 $0a

    nop                                           ; $6443: $00
    rst $38                                       ; $6444: $ff
    dec c                                         ; $6445: $0d
    inc b                                         ; $6446: $04
    ld hl, sp+$19                                 ; $6447: $f8 $19
    push af                                       ; $6449: $f5
    inc bc                                        ; $644a: $03
    or $f9                                        ; $644b: $f6 $f9

jr_0f3_644d:
    or $01                                        ; $644d: $f6 $01
    or $09                                        ; $644f: $f6 $09
    or $0c                                        ; $6451: $f6 $0c
    inc b                                         ; $6453: $04
    nop                                           ; $6454: $00
    ld [bc], a                                    ; $6455: $02
    ldh [$90], a                                  ; $6456: $e0 $90
    sub b                                         ; $6458: $90
    ldh a, [$a8]                                  ; $6459: $f0 $a8
    ret c                                         ; $645b: $d8

    xor b                                         ; $645c: $a8
    ret c                                         ; $645d: $d8

    sub a                                         ; $645e: $97
    rst $28                                       ; $645f: $ef
    push de                                       ; $6460: $d5
    xor $6e                                       ; $6461: $ee $6e
    ld a, l                                       ; $6463: $7d
    dec e                                         ; $6464: $1d
    dec de                                        ; $6465: $1b
    add hl, bc                                    ; $6466: $09
    rrca                                          ; $6467: $0f
    ld [bc], a                                    ; $6468: $02
    rlca                                          ; $6469: $07
    ld [$0200], sp                                ; $646a: $08 $00 $02
    ld bc, $0288                                  ; $646d: $01 $88 $02
    inc bc                                        ; $6470: $03
    dec b                                         ; $6471: $05
    ld b, $36                                     ; $6472: $06 $36
    dec [hl]                                      ; $6474: $35
    ld d, l                                       ; $6475: $55
    ld [hl], a                                    ; $6476: $77
    ld [bc], a                                    ; $6477: $02
    cp $8a                                        ; $6478: $fe $8a
    ld a, l                                       ; $647a: $7d
    add e                                         ; $647b: $83
    rst $28                                       ; $647c: $ef
    jr nc, @-$7d                                  ; $647d: $30 $81

    cp $7f                                        ; $647f: $fe $7f
    rst $38                                       ; $6481: $ff
    ld b, b                                       ; $6482: $40
    ret nz                                        ; $6483: $c0

    ld [bc], a                                    ; $6484: $02
    add b                                         ; $6485: $80
    ld a, [bc]                                    ; $6486: $0a
    nop                                           ; $6487: $00
    ld b, $80                                     ; $6488: $06 $80
    inc b                                         ; $648a: $04
    nop                                           ; $648b: $00
    ld [bc], a                                    ; $648c: $02
    add b                                         ; $648d: $80
    adc d                                         ; $648e: $8a
    ld b, c                                       ; $648f: $41
    pop bc                                        ; $6490: $c1
    ldh [rNR41], a                                ; $6491: $e0 $20
    ld [hl], b                                    ; $6493: $70
    sub b                                         ; $6494: $90
    cp a                                          ; $6495: $bf
    rst $08                                       ; $6496: $cf
    ld l, a                                       ; $6497: $6f
    ld [hl], b                                    ; $6498: $70
    ld [bc], a                                    ; $6499: $02
    rra                                           ; $649a: $1f
    ld [de], a                                    ; $649b: $12
    nop                                           ; $649c: $00
    ld [bc], a                                    ; $649d: $02
    inc b                                         ; $649e: $04
    add e                                         ; $649f: $83
    ld b, $02                                     ; $64a0: $06 $02
    rlca                                          ; $64a2: $07
    ld [bc], a                                    ; $64a3: $02
    dec b                                         ; $64a4: $05
    add e                                         ; $64a5: $83
    rlca                                          ; $64a6: $07
    ld [bc], a                                    ; $64a7: $02
    ld b, $02                                     ; $64a8: $06 $02
    inc b                                         ; $64aa: $04
    ld [$ff00], sp                                ; $64ab: $08 $00 $ff
    dec c                                         ; $64ae: $0d
    inc b                                         ; $64af: $04
    ld hl, sp+$19                                 ; $64b0: $f8 $19
    push af                                       ; $64b2: $f5
    inc bc                                        ; $64b3: $03
    push af                                       ; $64b4: $f5
    ld sp, hl                                     ; $64b5: $f9
    push af                                       ; $64b6: $f5
    ld bc, $09f5                                  ; $64b7: $01 $f5 $09
    push af                                       ; $64ba: $f5
    ld c, $06                                     ; $64bb: $0e $06
    nop                                           ; $64bd: $00
    ld [bc], a                                    ; $64be: $02
    ldh [$90], a                                  ; $64bf: $e0 $90

jr_0f3_64c1:
    sub b                                         ; $64c1: $90
    ldh a, [$a8]                                  ; $64c2: $f0 $a8
    ret c                                         ; $64c4: $d8

    xor c                                         ; $64c5: $a9
    reti                                          ; $64c6: $d9


    sub [hl]                                      ; $64c7: $96
    rst $28                                       ; $64c8: $ef
    rst $10                                       ; $64c9: $d7
    db $ec                                        ; $64ca: $ec
    ld l, d                                       ; $64cb: $6a
    ld a, l                                       ; $64cc: $7d
    dec e                                         ; $64cd: $1d
    dec de                                        ; $64ce: $1b
    add hl, bc                                    ; $64cf: $09
    rrca                                          ; $64d0: $0f
    ld [bc], a                                    ; $64d1: $02
    rlca                                          ; $64d2: $07
    ld b, $00                                     ; $64d3: $06 $00
    ld [bc], a                                    ; $64d5: $02
    ld bc, $0288                                  ; $64d6: $01 $88 $02
    inc bc                                        ; $64d9: $03
    dec h                                         ; $64da: $25
    ld h, $56                                     ; $64db: $26 $56
    ld [hl], l                                    ; $64dd: $75
    ld d, l                                       ; $64de: $55
    ld [hl], a                                    ; $64df: $77
    ld [bc], a                                    ; $64e0: $02
    ld a, [hl]                                    ; $64e1: $7e
    adc h                                         ; $64e2: $8c
    xor e                                         ; $64e3: $ab
    rst $10                                       ; $64e4: $d7
    rst $38                                       ; $64e5: $ff
    jr nz, jr_0f3_651d                            ; $64e6: $20 $35

    sbc $be                                       ; $64e8: $de $be
    rst $38                                       ; $64ea: $ff
    ld b, c                                       ; $64eb: $41
    pop bc                                        ; $64ec: $c1
    ld b, b                                       ; $64ed: $40
    ret nz                                        ; $64ee: $c0

    ld [bc], a                                    ; $64ef: $02
    add b                                         ; $64f0: $80
    ld [$0600], sp                                ; $64f1: $08 $00 $06
    add b                                         ; $64f4: $80
    ld b, $00                                     ; $64f5: $06 $00
    ld [bc], a                                    ; $64f7: $02
    add b                                         ; $64f8: $80
    add l                                         ; $64f9: $85
    ret nz                                        ; $64fa: $c0

    ld b, b                                       ; $64fb: $40
    or b                                          ; $64fc: $b0
    ld [hl], b                                    ; $64fd: $70
    ld c, a                                       ; $64fe: $4f
    ld [bc], a                                    ; $64ff: $02
    cp a                                          ; $6500: $bf
    add e                                         ; $6501: $83
    ret nz                                        ; $6502: $c0

    ld h, c                                       ; $6503: $61
    ld a, a                                       ; $6504: $7f
    ld [bc], a                                    ; $6505: $02
    ld e, $14                                     ; $6506: $1e $14
    nop                                           ; $6508: $00
    ld [bc], a                                    ; $6509: $02
    ld [bc], a                                    ; $650a: $02
    add [hl]                                      ; $650b: $86
    rra                                           ; $650c: $1f
    dec e                                         ; $650d: $1d
    ld e, $02                                     ; $650e: $1e $02
    inc c                                         ; $6510: $0c
    inc e                                         ; $6511: $1c
    ld [bc], a                                    ; $6512: $02
    db $10                                        ; $6513: $10
    ld b, $00                                     ; $6514: $06 $00
    rst $38                                       ; $6516: $ff
    dec bc                                        ; $6517: $0b
    inc bc                                        ; $6518: $03
    ld hl, sp+$19                                 ; $6519: $f8 $19
    push af                                       ; $651b: $f5
    inc bc                                        ; $651c: $03

jr_0f3_651d:
    or $f8                                        ; $651d: $f6 $f8
    or $00                                        ; $651f: $f6 $00
    or $07                                        ; $6521: $f6 $07
    inc b                                         ; $6523: $04
    nop                                           ; $6524: $00
    ld [bc], a                                    ; $6525: $02
    jr nz, @-$6e                                  ; $6526: $20 $90

    ld d, c                                       ; $6528: $51
    ld [hl], c                                    ; $6529: $71
    set 7, d                                      ; $652a: $cb $fa
    sbc l                                         ; $652c: $9d
    xor $96                                       ; $652d: $ee $96
    db $ed                                        ; $652f: $ed
    jp c, Jump_0f3_5bed                           ; $6530: $da $ed $5b

    ld l, l                                       ; $6533: $6d
    add hl, hl                                    ; $6534: $29
    ccf                                           ; $6535: $3f
    dec e                                         ; $6536: $1d
    rra                                           ; $6537: $1f
    ld [bc], a                                    ; $6538: $02
    inc bc                                        ; $6539: $03
    ld [$0200], sp                                ; $653a: $08 $00 $02
    jr jr_0f3_64c1                                ; $653d: $18 $82

    add hl, hl                                    ; $653f: $29
    add hl, sp                                    ; $6540: $39
    ld [bc], a                                    ; $6541: $02
    db $fd                                        ; $6542: $fd
    sub b                                         ; $6543: $90
    ld e, e                                       ; $6544: $5b
    and a                                         ; $6545: $a7
    db $fd                                        ; $6546: $fd
    ld b, e                                       ; $6547: $43
    cpl                                           ; $6548: $2f
    ld sp, hl                                     ; $6549: $f9
    cp d                                          ; $654a: $ba
    db $fd                                        ; $654b: $fd
    ld b, a                                       ; $654c: $47
    call nz, $c645                                ; $654d: $c4 $45 $c6
    ld b, l                                       ; $6550: $45
    add $43                                       ; $6551: $c6 $43
    jp nz, $c102                                  ; $6553: $c2 $02 $c1

    ld [$0200], sp                                ; $6556: $08 $00 $02
    ld b, b                                       ; $6559: $40
    add [hl]                                      ; $655a: $86
    jr nz, jr_0f3_65bd                            ; $655b: $20 $60

    ld d, b                                       ; $655d: $50
    jr nc, @+$22                                  ; $655e: $30 $20

    ld h, b                                       ; $6560: $60
    ld [bc], a                                    ; $6561: $02
    ld b, b                                       ; $6562: $40
    ld [bc], a                                    ; $6563: $02
    ld [bc], a                                    ; $6564: $02
    adc h                                         ; $6565: $8c
    ld b, a                                       ; $6566: $47
    ld b, l                                       ; $6567: $45
    ld b, a                                       ; $6568: $47
    ld b, l                                       ; $6569: $45
    ld b, a                                       ; $656a: $47
    ld b, l                                       ; $656b: $45
    daa                                           ; $656c: $27
    ld h, l                                       ; $656d: $65
    ld e, e                                       ; $656e: $5b
    dec a                                         ; $656f: $3d
    ld a, $42                                     ; $6570: $3e $42
    ld [bc], a                                    ; $6572: $02
    ld a, h                                       ; $6573: $7c
    ld b, $00                                     ; $6574: $06 $00
    rst $38                                       ; $6576: $ff
    dec bc                                        ; $6577: $0b
    inc bc                                        ; $6578: $03
    ld hl, sp+$19                                 ; $6579: $f8 $19
    push af                                       ; $657b: $f5
    inc bc                                        ; $657c: $03
    or $f8                                        ; $657d: $f6 $f8
    or $00                                        ; $657f: $f6 $00
    or $07                                        ; $6581: $f6 $07
    inc b                                         ; $6583: $04
    nop                                           ; $6584: $00
    ld [bc], a                                    ; $6585: $02
    ld sp, $5290                                  ; $6586: $31 $90 $52
    ld [hl], e                                    ; $6589: $73
    adc l                                         ; $658a: $8d
    cp $9e                                        ; $658b: $fe $9e
    db $ed                                        ; $658d: $ed
    sbc e                                         ; $658e: $9b
    db $ed                                        ; $658f: $ed
    ld e, d                                       ; $6590: $5a
    ld l, l                                       ; $6591: $6d
    ld l, c                                       ; $6592: $69
    ld a, a                                       ; $6593: $7f
    add hl, sp                                    ; $6594: $39
    ccf                                           ; $6595: $3f
    dec e                                         ; $6596: $1d
    rra                                           ; $6597: $1f
    ld [bc], a                                    ; $6598: $02
    inc bc                                        ; $6599: $03
    ld [$0200], sp                                ; $659a: $08 $00 $02
    ld [$7c02], sp                                ; $659d: $08 $02 $7c
    sub d                                         ; $65a0: $92
    db $f4                                        ; $65a1: $f4
    adc h                                         ; $65a2: $8c
    rst $38                                       ; $65a3: $ff
    ld b, e                                       ; $65a4: $43
    adc l                                         ; $65a5: $8d
    ld [hl], e                                    ; $65a6: $73
    ld [hl], a                                    ; $65a7: $77
    ld sp, hl                                     ; $65a8: $f9
    ld a, e                                       ; $65a9: $7b
    db $fd                                        ; $65aa: $fd
    ld c, d                                       ; $65ab: $4a
    call $c447                                    ; $65ac: $cd $47 $c4
    ld b, l                                       ; $65af: $45
    add $42                                       ; $65b0: $c6 $42
    jp $c102                                      ; $65b2: $c3 $02 $c1


    inc c                                         ; $65b5: $0c
    nop                                           ; $65b6: $00
    ld [bc], a                                    ; $65b7: $02
    ld a, b                                       ; $65b8: $78
    add d                                         ; $65b9: $82
    jr c, jr_0f3_6604                             ; $65ba: $38 $48

    ld [bc], a                                    ; $65bc: $02

jr_0f3_65bd:
    ld [hl], b                                    ; $65bd: $70
    ld [bc], a                                    ; $65be: $02
    inc b                                         ; $65bf: $04
    adc h                                         ; $65c0: $8c
    ld c, $0a                                     ; $65c1: $0e $0a
    ld b, a                                       ; $65c3: $47
    ld b, l                                       ; $65c4: $45
    ld b, a                                       ; $65c5: $47
    ld b, l                                       ; $65c6: $45
    ld a, e                                       ; $65c7: $7b
    dec a                                         ; $65c8: $3d
    ld a, [hl]                                    ; $65c9: $7e
    ld [bc], a                                    ; $65ca: $02
    ld b, h                                       ; $65cb: $44
    ld a, h                                       ; $65cc: $7c
    ld [bc], a                                    ; $65cd: $02
    jr c, jr_0f3_65d6                             ; $65ce: $38 $06

    nop                                           ; $65d0: $00
    rst $38                                       ; $65d1: $ff
    dec c                                         ; $65d2: $0d
    inc b                                         ; $65d3: $04
    ld hl, sp+$19                                 ; $65d4: $f8 $19

jr_0f3_65d6:
    push af                                       ; $65d6: $f5
    inc bc                                        ; $65d7: $03
    rst $30                                       ; $65d8: $f7
    ld sp, hl                                     ; $65d9: $f9
    rst $30                                       ; $65da: $f7
    ld bc, $09f7                                  ; $65db: $01 $f7 $09
    rst $30                                       ; $65de: $f7
    inc c                                         ; $65df: $0c
    ld [bc], a                                    ; $65e0: $02
    nop                                           ; $65e1: $00
    ld [bc], a                                    ; $65e2: $02
    ldh [$90], a                                  ; $65e3: $e0 $90
    sub b                                         ; $65e5: $90
    ldh a, [$a8]                                  ; $65e6: $f0 $a8
    ret c                                         ; $65e8: $d8

    xor c                                         ; $65e9: $a9
    reti                                          ; $65ea: $d9


    sub a                                         ; $65eb: $97
    xor $d7                                       ; $65ec: $ee $d7
    db $ec                                        ; $65ee: $ec
    ld l, [hl]                                    ; $65ef: $6e
    ld a, l                                       ; $65f0: $7d
    dec e                                         ; $65f1: $1d
    dec de                                        ; $65f2: $1b
    add hl, bc                                    ; $65f3: $09
    rrca                                          ; $65f4: $0f
    ld [bc], a                                    ; $65f5: $02
    rlca                                          ; $65f6: $07
    inc c                                         ; $65f7: $0c
    nop                                           ; $65f8: $00
    ld [bc], a                                    ; $65f9: $02
    ld h, c                                       ; $65fa: $61
    ld [bc], a                                    ; $65fb: $02
    ld a, c                                       ; $65fc: $79
    adc [hl]                                      ; $65fd: $8e
    rst $30                                       ; $65fe: $f7
    rst $08                                       ; $65ff: $cf
    db $fd                                        ; $6600: $fd
    inc hl                                        ; $6601: $23
    cp $01                                        ; $6602: $fe $01

jr_0f3_6604:
    cp a                                          ; $6604: $bf
    call c, $e625                                 ; $6605: $dc $25 $e6
    ld b, e                                       ; $6608: $43
    jp nz, $c141                                  ; $6609: $c2 $41 $c1

    ld [bc], a                                    ; $660c: $02
    add b                                         ; $660d: $80
    ld a, [bc]                                    ; $660e: $0a
    nop                                           ; $660f: $00
    inc bc                                        ; $6610: $03
    ldh [$83], a                                  ; $6611: $e0 $83
    jr nz, @+$42                                  ; $6613: $20 $40

    ret nz                                        ; $6615: $c0

    ld [bc], a                                    ; $6616: $02
    add b                                         ; $6617: $80
    ld [bc], a                                    ; $6618: $02
    nop                                           ; $6619: $00
    inc b                                         ; $661a: $04
    add b                                         ; $661b: $80
    adc d                                         ; $661c: $8a
    ld b, b                                       ; $661d: $40
    ret nz                                        ; $661e: $c0

    and e                                         ; $661f: $a3
    ld h, e                                       ; $6620: $63
    ld a, l                                       ; $6621: $7d
    sbc [hl]                                      ; $6622: $9e
    cp $c1                                        ; $6623: $fe $c1
    ld [hl+], a                                   ; $6625: $22
    ld a, $02                                     ; $6626: $3e $02
    inc e                                         ; $6628: $1c
    stop                                          ; $6629: $10 $00
    ld [bc], a                                    ; $662b: $02
    ld [bc], a                                    ; $662c: $02
    adc b                                         ; $662d: $88
    rlca                                          ; $662e: $07
    dec b                                         ; $662f: $05
    rlca                                          ; $6630: $07
    dec b                                         ; $6631: $05
    inc bc                                        ; $6632: $03
    dec b                                         ; $6633: $05
    ld b, $02                                     ; $6634: $06 $02
    ld [bc], a                                    ; $6636: $02
    inc b                                         ; $6637: $04
    ld a, [bc]                                    ; $6638: $0a
    nop                                           ; $6639: $00
    rst $38                                       ; $663a: $ff

    db $07, $01, $fa

    ld [$09f9], sp                                ; $663e: $08 $f9 $09

    db $ff, $fc, $88, $00, $08, $0c, $16, $0b, $0d, $00, $02, $18, $00, $ff, $09, $02
    db $fa

    ld [$09f9], sp                                ; $6652: $08 $f9 $09

    db $fd, $ff, $fd, $01, $8a, $00, $10, $30, $28, $00, $50, $60, $a4, $06, $4a, $02
    db $04, $1d, $00, $81, $03, $16, $00, $ff, $09, $02, $fa

    ld [$09f9], sp                                ; $6670: $08 $f9 $09

    db $fd, $ff, $fd, $03, $03, $08, $87, $14, $00, $48, $40, $a1, $41, $5a, $02, $01
    db $1c, $00, $82, $01, $0b, $16, $00, $ff, $09, $02, $fa

    ld [$09f9], sp                                ; $668e: $08 $f9 $09

    db $fd, $ff, $fd, $05, $8c, $00, $02, $17, $15, $00, $62, $60, $b0, $44, $5c, $18
    db $28, $02, $10, $19, $00, $83, $10, $19, $2b, $02, $10, $14, $00, $ff, $09, $02
    db $fa

    ld [$09f9], sp                                ; $66b2: $08 $f9 $09

    db $fd, $ff, $fd, $07, $02, $00, $8a, $02, $0b, $0e, $56, $68, $a8, $40, $65, $06
    db $4a, $02, $04, $13, $00, $02, $80, $81, $40, $02, $80, $86, $00, $10, $99, $ab
    db $00, $10, $14, $00, $ff, $0b, $03, $fa

    ld [$09f9], sp                                ; $66dd: $08 $f9 $09

    db $fc, $ff, $fc, $05, $fc, $09, $05, $00, $02, $04, $89, $4a, $64, $a4, $40, $51
    db $31, $2a, $01, $11, $11, $00, $85, $08, $18, $14, $00, $08, $02, $20, $84, $00
    db $02, $13, $35, $02, $22, $1c, $00, $82, $01, $03, $14, $00, $ff, $0b, $03, $fa

    ld [$09f9], sp                                ; $6710: $08 $f9 $09

    db $fd, $ff, $fd, $06, $fd, $0a, $05, $00, $87, $42, $62, $a5, $42, $4a, $0c, $14
    db $02, $08, $12, $00, $03, $08, $89, $14, $10, $1a, $02, $05, $02, $32, $30, $50
    db $02, $20, $1b, $00, $81, $03, $16, $00, $ff, $07, $01, $fa

    ld [$09f9], sp                                ; $673f: $08 $f9 $09

    db $fd, $fc, $86, $81, $c3, $42, $a5, $00, $42, $05, $00, $02, $42, $83, $a5, $81
    db $c3, $10, $00, $ff, $0b, $03, $fa

    ld [$09f9], sp                                ; $6759: $08 $f9 $09

    db $f9, $f8, $f9, $00, $09, $fa, $81, $00, $02, $02, $88, $05, $00, $12, $10, $28
    db $00, $10, $00, $02, $40, $83, $a0, $00, $40, $03, $00, $02, $40, $84, $a0, $00
    db $40, $00, $02, $10, $86, $28, $00, $12, $02, $05, $00, $02, $40, $88, $a0, $00
    db $48, $08, $14, $00, $08, $00, $02, $02, $83, $05, $00, $02, $03, $00, $02, $02
    db $84, $05, $00, $02, $00, $02, $08, $87, $14, $00, $48, $40, $a0, $00, $09, $1e
    db $00, $ff, $0f, $05, $fa

    ld [$09f9], sp                                ; $67b1: $08 $f9 $09

    db $f6, $f6, $f6, $fe, $f8, $02, $06, $f7, $06, $00, $02, $01, $8a, $00, $01, $21
    db $22, $20, $39, $08, $14, $00, $08, $03, $00, $85, $20, $a0, $d0, $00, $60, $05
    db $00, $85, $20, $a0, $d0, $00, $60, $02, $00, $02, $10, $81, $00, $02, $10, $87
    db $a8, $00, $11, $01, $02, $00, $01, $14, $00, $03, $04, $83, $0c, $00, $08, $05
    db $00, $85, $04, $05, $0b, $00, $06, $05, $00, $85, $04, $05, $0b, $00, $06, $03
    db $00, $02, $10, $82, $28, $00, $02, $10, $86, $28, $40, $72, $42, $45, $00, $03
    db $02, $18, $00, $85, $01, $47, $41, $a1, $00, $03, $40, $14, $00, $ff, $0f, $05
    db $fa

    ld [$09f9], sp                                ; $6825: $08 $f9 $09

    db $f7, $f4, $f5, $fc, $f7, $04, $05, $f7, $05, $01, $03, $10, $8f, $1c, $0c, $12
    db $04, $0a, $00, $04, $20, $30, $90, $e8, $50, $68, $00, $10, $05, $00, $89, $10
    db $50, $68, $90, $e8, $20, $30, $00, $04, $02, $42, $88, $00, $42, $c3, $a5, $42
    db $a5, $00, $42, $16, $00, $02, $08, $90, $28, $38, $30, $48, $20, $50, $00, $20
    db $04, $0c, $09, $17, $0a, $16, $00, $08, $05, $00, $89, $08, $0a, $16, $09, $17
    db $04, $0c, $00, $20, $04, $00, $89, $20, $50, $60, $92, $82, $e5, $86, $85, $00
    db $03, $02, $14, $00, $89, $04, $0a, $06, $49, $41, $a7, $c1, $a1, $00, $03, $40
    db $10, $00, $ff, $11, $06, $fa

    ld [$09f9], sp                                ; $689e: $08 $f9 $09

    db $f7, $f3, $f4, $fc, $f7, $05, $04, $f6, $04, $fc, $04, $02, $88, $10, $1c, $0c
    db $12, $04, $0a, $00, $04, $03, $00, $85, $30, $b0, $c0, $00, $30, $09, $00, $85
    db $30, $b0, $c0, $00, $30, $02, $00, $02, $42, $81, $00, $02, $42, $83, $a5, $42
    db $a5, $18, $00, $88, $08, $38, $30, $48, $20, $50, $00, $20, $03, $00, $85, $0c
    db $0d, $03, $00, $0c, $09, $00, $85, $0c, $0d, $03, $00, $0c, $09, $00, $02, $20
    db $88, $50, $60, $90, $81, $e2, $01, $02, $00, $03, $01, $18, $00, $85, $02, $25
    db $02, $25, $00, $03, $02, $13, $00, $02, $04, $85, $0a, $06, $09, $01, $07, $12
    db $00, $ff

    rlca                                          ; $6913: $07
    ld bc, $10fe                                  ; $6914: $01 $fe $10
    ei                                            ; $6917: $fb
    rlca                                          ; $6918: $07
    rst $38                                       ; $6919: $ff
    ld a, [$0081]                                 ; $691a: $fa $81 $00
    ld [bc], a                                    ; $691d: $02
    ld [bc], a                                    ; $691e: $02
    add c                                         ; $691f: $81
    dec b                                         ; $6920: $05
    ld [bc], a                                    ; $6921: $02
    ld [bc], a                                    ; $6922: $02
    ld a, [de]                                    ; $6923: $1a
    nop                                           ; $6924: $00
    rst $38                                       ; $6925: $ff
    rlca                                          ; $6926: $07
    ld bc, $10fe                                  ; $6927: $01 $fe $10
    ei                                            ; $692a: $fb
    rlca                                          ; $692b: $07
    rst $38                                       ; $692c: $ff
    db $fc                                        ; $692d: $fc
    adc b                                         ; $692e: $88
    nop                                           ; $692f: $00
    ld [$1e04], sp                                ; $6930: $08 $04 $1e
    rrca                                          ; $6933: $0f
    dec d                                         ; $6934: $15
    ld [$180a], sp                                ; $6935: $08 $0a $18
    nop                                           ; $6938: $00
    rst $38                                       ; $6939: $ff
    rlca                                          ; $693a: $07
    ld bc, $10fe                                  ; $693b: $01 $fe $10
    ei                                            ; $693e: $fb
    rlca                                          ; $693f: $07
    cp $ff                                        ; $6940: $fe $ff
    ld [bc], a                                    ; $6942: $02
    ld [$0c88], sp                                ; $6943: $08 $88 $0c
    ld d, h                                       ; $6946: $54
    ld h, b                                       ; $6947: $60
    xor d                                         ; $6948: $aa
    ld [bc], a                                    ; $6949: $02
    ld h, l                                       ; $694a: $65
    ld d, d                                       ; $694b: $52
    or d                                          ; $694c: $b2
    ld [bc], a                                    ; $694d: $02
    ld h, b                                       ; $694e: $60
    inc d                                         ; $694f: $14
    nop                                           ; $6950: $00
    rst $38                                       ; $6951: $ff
    add hl, bc                                    ; $6952: $09
    ld [bc], a                                    ; $6953: $02
    cp $10                                        ; $6954: $fe $10
    ei                                            ; $6956: $fb
    rlca                                          ; $6957: $07
    cp $ff                                        ; $6958: $fe $ff
    cp $01                                        ; $695a: $fe $01
    ld [bc], a                                    ; $695c: $02
    inc b                                         ; $695d: $04
    adc d                                         ; $695e: $8a
    ld b, [hl]                                    ; $695f: $46
    ld c, d                                       ; $6960: $4a
    ld h, b                                       ; $6961: $60
    and h                                         ; $6962: $a4
    nop                                           ; $6963: $00
    ld d, c                                       ; $6964: $51
    ld b, b                                       ; $6965: $40
    and h                                         ; $6966: $a4
    ld b, h                                       ; $6967: $44
    ld c, d                                       ; $6968: $4a
    ld [bc], a                                    ; $6969: $02
    inc b                                         ; $696a: $04
    rla                                           ; $696b: $17
    nop                                           ; $696c: $00
    ld [bc], a                                    ; $696d: $02
    ld [bc], a                                    ; $696e: $02
    add c                                         ; $696f: $81
    ld bc, $0202                                  ; $6970: $01 $02 $02
    ld d, $00                                     ; $6973: $16 $00
    rst $38                                       ; $6975: $ff
    add hl, bc                                    ; $6976: $09
    ld [bc], a                                    ; $6977: $02
    cp $10                                        ; $6978: $fe $10
    ei                                            ; $697a: $fb
    rlca                                          ; $697b: $07
    cp $ff                                        ; $697c: $fe $ff
    cp $03                                        ; $697e: $fe $03
    inc bc                                        ; $6980: $03
    ld bc, $6289                                  ; $6981: $01 $89 $62
    ld h, b                                       ; $6984: $60
    or c                                          ; $6985: $b1
    nop                                           ; $6986: $00
    ld h, h                                       ; $6987: $64
    ld b, b                                       ; $6988: $40
    or c                                          ; $6989: $b1
    ld b, c                                       ; $698a: $41
    ld b, d                                       ; $698b: $42
    ld [bc], a                                    ; $698c: $02
    ld bc, $0014                                  ; $698d: $01 $14 $00
    ld [bc], a                                    ; $6990: $02
    ld [$0081], sp                                ; $6991: $08 $81 $00
    ld [bc], a                                    ; $6994: $02
    ld [bc], a                                    ; $6995: $02
    add c                                         ; $6996: $81
    dec b                                         ; $6997: $05
    ld [bc], a                                    ; $6998: $02
    ld [bc], a                                    ; $6999: $02
    add d                                         ; $699a: $82
    nop                                           ; $699b: $00
    ld [$0014], sp                                ; $699c: $08 $14 $00
    rst $38                                       ; $699f: $ff
    add hl, bc                                    ; $69a0: $09
    ld [bc], a                                    ; $69a1: $02
    cp $10                                        ; $69a2: $fe $10
    ei                                            ; $69a4: $fb
    rlca                                          ; $69a5: $07
    cp $ff                                        ; $69a6: $fe $ff
    cp $05                                        ; $69a8: $fe $05
    adc d                                         ; $69aa: $8a
    nop                                           ; $69ab: $00
    ld [$540c], sp                                ; $69ac: $08 $0c $54
    ld l, b                                       ; $69af: $68
    xor b                                         ; $69b0: $a8
    jr nz, jr_0f3_6a14                            ; $69b1: $20 $61

    ld d, b                                       ; $69b3: $50
    or h                                          ; $69b4: $b4
    ld [bc], a                                    ; $69b5: $02
    ld h, b                                       ; $69b6: $60
    inc d                                         ; $69b7: $14
    nop                                           ; $69b8: $00
    ld [bc], a                                    ; $69b9: $02
    db $10                                        ; $69ba: $10
    adc d                                         ; $69bb: $8a
    jr jr_0f3_69e6                                ; $69bc: $18 $28

    nop                                           ; $69be: $00
    ld [de], a                                    ; $69bf: $12
    ld [bc], a                                    ; $69c0: $02
    dec b                                         ; $69c1: $05
    ld [bc], a                                    ; $69c2: $02
    ld [de], a                                    ; $69c3: $12
    db $10                                        ; $69c4: $10
    jr z, jr_0f3_69c9                             ; $69c5: $28 $02

    db $10                                        ; $69c7: $10
    ld [de], a                                    ; $69c8: $12

jr_0f3_69c9:
    nop                                           ; $69c9: $00
    rst $38                                       ; $69ca: $ff
    dec bc                                        ; $69cb: $0b
    inc bc                                        ; $69cc: $03
    cp $10                                        ; $69cd: $fe $10
    ei                                            ; $69cf: $fb
    rlca                                          ; $69d0: $07
    cp $ff                                        ; $69d1: $fe $ff
    cp $06                                        ; $69d3: $fe $06
    cp $08                                        ; $69d5: $fe $08
    add c                                         ; $69d7: $81
    nop                                           ; $69d8: $00
    ld [bc], a                                    ; $69d9: $02
    inc b                                         ; $69da: $04
    adc c                                         ; $69db: $89
    ld c, d                                       ; $69dc: $4a
    ld h, h                                       ; $69dd: $64
    and h                                         ; $69de: $a4
    add hl, bc                                    ; $69df: $09
    ld c, c                                       ; $69e0: $49
    ld c, h                                       ; $69e1: $4c
    or h                                          ; $69e2: $b4
    ld b, c                                       ; $69e3: $41
    ld c, c                                       ; $69e4: $49
    inc d                                         ; $69e5: $14

jr_0f3_69e6:
    nop                                           ; $69e6: $00
    ld [bc], a                                    ; $69e7: $02
    ld [$0c86], sp                                ; $69e8: $08 $86 $0c
    inc d                                         ; $69eb: $14
    nop                                           ; $69ec: $00
    ld a, [bc]                                    ; $69ed: $0a
    ld [bc], a                                    ; $69ee: $02
    ld b, l                                       ; $69ef: $45
    ld [bc], a                                    ; $69f0: $02
    ld a, [bc]                                    ; $69f1: $0a
    add h                                         ; $69f2: $84
    inc c                                         ; $69f3: $0c
    inc d                                         ; $69f4: $14
    nop                                           ; $69f5: $00
    ld [$0019], sp                                ; $69f6: $08 $19 $00
    add c                                         ; $69f9: $81
    ld bc, $0018                                  ; $69fa: $01 $18 $00
    rst $38                                       ; $69fd: $ff
    dec bc                                        ; $69fe: $0b
    inc bc                                        ; $69ff: $03
    cp $10                                        ; $6a00: $fe $10
    ei                                            ; $6a02: $fb
    rlca                                          ; $6a03: $07
    cp $ff                                        ; $6a04: $fe $ff
    cp $07                                        ; $6a06: $fe $07
    cp $09                                        ; $6a08: $fe $09
    ld [bc], a                                    ; $6a0a: $02
    nop                                           ; $6a0b: $00
    adc b                                         ; $6a0c: $88
    ld b, b                                       ; $6a0d: $40
    ld d, d                                       ; $6a0e: $52
    ld h, d                                       ; $6a0f: $62
    and l                                         ; $6a10: $a5

jr_0f3_6a11:
    ld [bc], a                                    ; $6a11: $02
    ld b, [hl]                                    ; $6a12: $46
    ld b, h                                       ; $6a13: $44

jr_0f3_6a14:
    xor d                                         ; $6a14: $aa
    ld [bc], a                                    ; $6a15: $02
    ld b, h                                       ; $6a16: $44
    inc d                                         ; $6a17: $14
    nop                                           ; $6a18: $00
    ld [bc], a                                    ; $6a19: $02
    ld [$0c86], sp                                ; $6a1a: $08 $86 $0c
    dec d                                         ; $6a1d: $15
    ld bc, $810a                                  ; $6a1e: $01 $0a $81
    pop bc                                        ; $6a21: $c1
    ld [bc], a                                    ; $6a22: $02
    inc b                                         ; $6a23: $04
    add h                                         ; $6a24: $84
    ld b, $0a                                     ; $6a25: $06 $0a
    nop                                           ; $6a27: $00
    inc b                                         ; $6a28: $04
    rla                                           ; $6a29: $17
    nop                                           ; $6a2a: $00
    add e                                         ; $6a2b: $83
    ld [bc], a                                    ; $6a2c: $02
    nop                                           ; $6a2d: $00
    ld bc, $0018                                  ; $6a2e: $01 $18 $00
    rst $38                                       ; $6a31: $ff
    add hl, bc                                    ; $6a32: $09
    ld [bc], a                                    ; $6a33: $02
    cp $10                                        ; $6a34: $fe $10
    ei                                            ; $6a36: $fb
    rlca                                          ; $6a37: $07
    ld a, [$fafb]                                 ; $6a38: $fa $fb $fa
    nop                                           ; $6a3b: $00
    inc b                                         ; $6a3c: $04

jr_0f3_6a3d:
    nop                                           ; $6a3d: $00
    ld [bc], a                                    ; $6a3e: $02
    db $10                                        ; $6a3f: $10
    add c                                         ; $6a40: $81
    nop                                           ; $6a41: $00
    ld [bc], a                                    ; $6a42: $02
    db $10                                        ; $6a43: $10
    add [hl]                                      ; $6a44: $86
    jr z, @-$44                                   ; $6a45: $28 $ba

    add $10                                       ; $6a47: $c6 $10
    jr z, jr_0f3_6a4b                             ; $6a49: $28 $00

jr_0f3_6a4b:
    inc bc                                        ; $6a4b: $03
    db $10                                        ; $6a4c: $10
    rrca                                          ; $6a4d: $0f
    nop                                           ; $6a4e: $00
    ld [bc], a                                    ; $6a4f: $02
    ld [bc], a                                    ; $6a50: $02
    add e                                         ; $6a51: $83
    dec b                                         ; $6a52: $05
    nop                                           ; $6a53: $00
    ld [bc], a                                    ; $6a54: $02
    ld a, [de]                                    ; $6a55: $1a
    nop                                           ; $6a56: $00
    rst $38                                       ; $6a57: $ff
    add hl, bc                                    ; $6a58: $09
    ld [bc], a                                    ; $6a59: $02
    cp $10                                        ; $6a5a: $fe $10
    ei                                            ; $6a5c: $fb
    rlca                                          ; $6a5d: $07
    ld hl, sp-$06                                 ; $6a5e: $f8 $fa
    ld hl, sp+$02                                 ; $6a60: $f8 $02
    ld b, $00                                     ; $6a62: $06 $00
    ld [bc], a                                    ; $6a64: $02
    ld [$008d], sp                                ; $6a65: $08 $8d $00
    ld [$1c14], sp                                ; $6a68: $08 $14 $1c
    ld a, [hl+]                                   ; $6a6b: $2a
    ld [hl], $9c                                  ; $6a6c: $36 $9c
    db $e3                                        ; $6a6e: $e3
    ld a, [hl+]                                   ; $6a6f: $2a
    ld [hl], $14                                  ; $6a70: $36 $14
    inc e                                         ; $6a72: $1c
    nop                                           ; $6a73: $00
    inc bc                                        ; $6a74: $03
    ld [$0008], sp                                ; $6a75: $08 $08 $00
    ld [bc], a                                    ; $6a78: $02
    ld [$0081], sp                                ; $6a79: $08 $81 $00
    ld [bc], a                                    ; $6a7c: $02
    ld [$1486], sp                                ; $6a7d: $08 $86 $14
    ld e, l                                       ; $6a80: $5d
    ld h, e                                       ; $6a81: $63
    ld [$0014], sp                                ; $6a82: $08 $14 $00
    inc bc                                        ; $6a85: $03
    ld [$8002], sp                                ; $6a86: $08 $02 $80
    add hl, bc                                    ; $6a89: $09
    nop                                           ; $6a8a: $00
    ld [bc], a                                    ; $6a8b: $02
    jr nz, jr_0f3_6a11                            ; $6a8c: $20 $83

    ld d, b                                       ; $6a8e: $50
    nop                                           ; $6a8f: $00
    jr nz, jr_0f3_6a94                            ; $6a90: $20 $02

    nop                                           ; $6a92: $00
    rst $38                                       ; $6a93: $ff

jr_0f3_6a94:
    dec bc                                        ; $6a94: $0b
    inc bc                                        ; $6a95: $03
    cp $10                                        ; $6a96: $fe $10

jr_0f3_6a98:
    ei                                            ; $6a98: $fb
    rlca                                          ; $6a99: $07
    ld sp, hl                                     ; $6a9a: $f9
    ld hl, sp-$09                                 ; $6a9b: $f8 $f7
    nop                                           ; $6a9d: $00
    ld a, [$0203]                                 ; $6a9e: $fa $03 $02
    ld [bc], a                                    ; $6aa1: $02
    sub l                                         ; $6aa2: $95
    nop                                           ; $6aa3: $00
    ld [bc], a                                    ; $6aa4: $02
    dec b                                         ; $6aa5: $05
    rlca                                          ; $6aa6: $07
    dec b                                         ; $6aa7: $05
    rlca                                          ; $6aa8: $07
    ld a, [bc]                                    ; $6aa9: $0a
    dec c                                         ; $6aaa: $0d
    scf                                           ; $6aab: $37
    jr c, jr_0f3_6a3d                             ; $6aac: $38 $8f

    ldh a, [$37]                                  ; $6aae: $f0 $37
    jr c, jr_0f3_6abc                             ; $6ab0: $38 $0a

    dec c                                         ; $6ab2: $0d
    dec b                                         ; $6ab3: $05
    rlca                                          ; $6ab4: $07
    dec b                                         ; $6ab5: $05
    rlca                                          ; $6ab6: $07
    nop                                           ; $6ab7: $00
    inc bc                                        ; $6ab8: $03
    ld [bc], a                                    ; $6ab9: $02
    ld b, $00                                     ; $6aba: $06 $00

jr_0f3_6abc:
    ld [bc], a                                    ; $6abc: $02
    ld [bc], a                                    ; $6abd: $02
    sub d                                         ; $6abe: $92
    nop                                           ; $6abf: $00
    ld [bc], a                                    ; $6ac0: $02
    dec b                                         ; $6ac1: $05
    rlca                                          ; $6ac2: $07
    ld a, [bc]                                    ; $6ac3: $0a
    dec c                                         ; $6ac4: $0d
    daa                                           ; $6ac5: $27
    jr c, jr_0f3_6ad2                             ; $6ac6: $38 $0a

    dec c                                         ; $6ac8: $0d
    add l                                         ; $6ac9: $85
    add a                                         ; $6aca: $87
    ld h, b                                       ; $6acb: $60
    ld [c], a                                     ; $6acc: $e2
    adc d                                         ; $6acd: $8a
    ld a, d                                       ; $6ace: $7a
    ld h, b                                       ; $6acf: $60
    ldh [rSC], a                                  ; $6ad0: $e0 $02

jr_0f3_6ad2:
    add b                                         ; $6ad2: $80
    ld [bc], a                                    ; $6ad3: $02
    ld [$0081], sp                                ; $6ad4: $08 $81 $00
    ld [bc], a                                    ; $6ad7: $02
    ld [$1485], sp                                ; $6ad8: $08 $85 $14
    ld e, l                                       ; $6adb: $5d
    ld h, e                                       ; $6adc: $63
    ld [$0214], sp                                ; $6add: $08 $14 $02
    inc b                                         ; $6ae0: $04
    add d                                         ; $6ae1: $82
    ld bc, $0207                                  ; $6ae2: $01 $07 $02
    inc b                                         ; $6ae5: $04
    dec d                                         ; $6ae6: $15
    nop                                           ; $6ae7: $00
    inc bc                                        ; $6ae8: $03
    ld b, b                                       ; $6ae9: $40
    ld [bc], a                                    ; $6aea: $02
    nop                                           ; $6aeb: $00
    rst $38                                       ; $6aec: $ff
    dec bc                                        ; $6aed: $0b
    inc bc                                        ; $6aee: $03
    cp $10                                        ; $6aef: $fe $10
    ei                                            ; $6af1: $fb
    rlca                                          ; $6af2: $07
    ld hl, sp-$09                                 ; $6af3: $f8 $f7
    ld a, [$fbff]                                 ; $6af5: $fa $ff $fb
    ld bc, $0102                                  ; $6af8: $01 $02 $01
    sbc c                                         ; $6afb: $99
    nop                                           ; $6afc: $00
    ld bc, $0302                                  ; $6afd: $01 $02 $03
    ld [bc], a                                    ; $6b00: $02
    inc bc                                        ; $6b01: $03
    dec b                                         ; $6b02: $05
    ld b, $09                                     ; $6b03: $06 $09
    ld c, $37                                     ; $6b05: $0e $37
    jr c, jr_0f3_6a98                             ; $6b07: $38 $8f

    ldh a, [$33]                                  ; $6b09: $f0 $33
    inc a                                         ; $6b0b: $3c
    dec bc                                        ; $6b0c: $0b
    inc c                                         ; $6b0d: $0c
    dec b                                         ; $6b0e: $05
    ld b, $02                                     ; $6b0f: $06 $02
    inc bc                                        ; $6b11: $03

jr_0f3_6b12:
    ld [bc], a                                    ; $6b12: $02
    inc bc                                        ; $6b13: $03
    nop                                           ; $6b14: $00
    inc bc                                        ; $6b15: $03
    ld bc, $0002                                  ; $6b16: $01 $02 $00
    add c                                         ; $6b19: $81
    add b                                         ; $6b1a: $80
    ld [bc], a                                    ; $6b1b: $02
    add c                                         ; $6b1c: $81
    sbc d                                         ; $6b1d: $9a
    add d                                         ; $6b1e: $82
    ld b, b                                       ; $6b1f: $40
    pop bc                                        ; $6b20: $c1
    and b                                         ; $6b21: $a0
    ld h, b                                       ; $6b22: $60
    sbc b                                         ; $6b23: $98
    ld a, b                                       ; $6b24: $78
    ld [c], a                                     ; $6b25: $e2
    ld e, $d8                                     ; $6b26: $1e $d8
    jr c, jr_0f3_6b4e                             ; $6b28: $38 $24

    db $e4                                        ; $6b2a: $e4
    ld b, b                                       ; $6b2b: $40
    call nz, $8e8a                                ; $6b2c: $c4 $8a $8e
    sub l                                         ; $6b2f: $95
    sbc e                                         ; $6b30: $9b
    ld c, [hl]                                    ; $6b31: $4e
    ld [hl], c                                    ; $6b32: $71
    dec d                                         ; $6b33: $15
    dec de                                        ; $6b34: $1b
    ld a, [bc]                                    ; $6b35: $0a
    ld c, $00                                     ; $6b36: $0e $00
    inc bc                                        ; $6b38: $03
    inc b                                         ; $6b39: $04
    add d                                         ; $6b3a: $82
    nop                                           ; $6b3b: $00
    ld [bc], a                                    ; $6b3c: $02
    ld [de], a                                    ; $6b3d: $12
    nop                                           ; $6b3e: $00
    add d                                         ; $6b3f: $82
    ld bc, $0a03                                  ; $6b40: $01 $03 $0a
    nop                                           ; $6b43: $00
    rst $38                                       ; $6b44: $ff
    add hl, bc                                    ; $6b45: $09
    ld [bc], a                                    ; $6b46: $02
    cp $10                                        ; $6b47: $fe $10
    ei                                            ; $6b49: $fb
    rlca                                          ; $6b4a: $07
    db $fc                                        ; $6b4b: $fc
    ei                                            ; $6b4c: $fb
    db $fc                                        ; $6b4d: $fc

jr_0f3_6b4e:
    cp $02                                        ; $6b4e: $fe $02
    db $10                                        ; $6b50: $10
    add c                                         ; $6b51: $81
    nop                                           ; $6b52: $00
    ld [bc], a                                    ; $6b53: $02
    db $10                                        ; $6b54: $10
    add [hl]                                      ; $6b55: $86
    jr z, jr_0f3_6b12                             ; $6b56: $28 $ba

    add $10                                       ; $6b58: $c6 $10
    jr z, jr_0f3_6b5c                             ; $6b5a: $28 $00

jr_0f3_6b5c:
    inc bc                                        ; $6b5c: $03
    db $10                                        ; $6b5d: $10
    inc hl                                        ; $6b5e: $23
    nop                                           ; $6b5f: $00
    ld [bc], a                                    ; $6b60: $02
    ld [bc], a                                    ; $6b61: $02
    add e                                         ; $6b62: $83
    dec b                                         ; $6b63: $05
    nop                                           ; $6b64: $00
    ld [bc], a                                    ; $6b65: $02
    ld a, [bc]                                    ; $6b66: $0a
    nop                                           ; $6b67: $00
    rst $38                                       ; $6b68: $ff
    rlca                                          ; $6b69: $07
    ld bc, $0efb                                  ; $6b6a: $01 $fb $0e
    ei                                            ; $6b6d: $fb
    inc c                                         ; $6b6e: $0c
    rst $38                                       ; $6b6f: $ff
    ld a, [$0081]                                 ; $6b70: $fa $81 $00
    ld [bc], a                                    ; $6b73: $02
    ld [bc], a                                    ; $6b74: $02
    add c                                         ; $6b75: $81
    dec b                                         ; $6b76: $05
    ld [bc], a                                    ; $6b77: $02
    ld [bc], a                                    ; $6b78: $02
    ld a, [de]                                    ; $6b79: $1a
    nop                                           ; $6b7a: $00
    rst $38                                       ; $6b7b: $ff
    rlca                                          ; $6b7c: $07
    ld bc, $0efb                                  ; $6b7d: $01 $fb $0e
    ei                                            ; $6b80: $fb
    inc c                                         ; $6b81: $0c
    rst $38                                       ; $6b82: $ff
    db $fc                                        ; $6b83: $fc
    adc b                                         ; $6b84: $88
    nop                                           ; $6b85: $00
    ld [$160c], sp                                ; $6b86: $08 $0c $16
    dec bc                                        ; $6b89: $0b
    dec c                                         ; $6b8a: $0d
    nop                                           ; $6b8b: $00
    ld [bc], a                                    ; $6b8c: $02
    jr jr_0f3_6b8f                                ; $6b8d: $18 $00

jr_0f3_6b8f:
    rst $38                                       ; $6b8f: $ff
    add hl, bc                                    ; $6b90: $09
    ld [bc], a                                    ; $6b91: $02
    ei                                            ; $6b92: $fb
    ld c, $fb                                     ; $6b93: $0e $fb
    inc c                                         ; $6b95: $0c
    rst $38                                       ; $6b96: $ff
    rst $38                                       ; $6b97: $ff
    rst $38                                       ; $6b98: $ff
    nop                                           ; $6b99: $00
    add [hl]                                      ; $6b9a: $86
    jr z, jr_0f3_6bf9                             ; $6b9b: $28 $5c

    ld [hl], h                                    ; $6b9d: $74
    adc d                                         ; $6b9e: $8a
    inc h                                         ; $6b9f: $24
    ld d, h                                       ; $6ba0: $54
    rra                                           ; $6ba1: $1f
    nop                                           ; $6ba2: $00
    add c                                         ; $6ba3: $81
    ld bc, $001a                                  ; $6ba4: $01 $1a $00
    rst $38                                       ; $6ba7: $ff
    add hl, bc                                    ; $6ba8: $09
    ld [bc], a                                    ; $6ba9: $02
    ei                                            ; $6baa: $fb
    ld c, $fb                                     ; $6bab: $0e $fb
    inc c                                         ; $6bad: $0c
    rst $38                                       ; $6bae: $ff
    rst $38                                       ; $6baf: $ff
    rst $38                                       ; $6bb0: $ff
    ld [bc], a                                    ; $6bb1: $02
    add [hl]                                      ; $6bb2: $86
    jr nc, @+$56                                  ; $6bb3: $30 $54

    ld [hl], b                                    ; $6bb5: $70
    add c                                         ; $6bb6: $81
    ld hl, $0252                                  ; $6bb7: $21 $52 $02
    ld bc, $001d                                  ; $6bba: $01 $1d $00
    add c                                         ; $6bbd: $81
    dec b                                         ; $6bbe: $05
    ld a, [de]                                    ; $6bbf: $1a
    nop                                           ; $6bc0: $00
    rst $38                                       ; $6bc1: $ff
    add hl, bc                                    ; $6bc2: $09
    ld [bc], a                                    ; $6bc3: $02
    ei                                            ; $6bc4: $fb
    ld c, $fb                                     ; $6bc5: $0e $fb
    inc c                                         ; $6bc7: $0c
    rst $38                                       ; $6bc8: $ff
    rst $38                                       ; $6bc9: $ff
    rst $38                                       ; $6bca: $ff
    inc b                                         ; $6bcb: $04
    add [hl]                                      ; $6bcc: $86
    jr z, jr_0f3_6c28                             ; $6bcd: $28 $59

    ld [hl], b                                    ; $6bcf: $70
    add b                                         ; $6bd0: $80
    jr nz, jr_0f3_6c27                            ; $6bd1: $20 $54

    dec e                                         ; $6bd3: $1d
    nop                                           ; $6bd4: $00
    add e                                         ; $6bd5: $83
    ld [$150c], sp                                ; $6bd6: $08 $0c $15
    ld [bc], a                                    ; $6bd9: $02
    ld [$0018], sp                                ; $6bda: $08 $18 $00
    rst $38                                       ; $6bdd: $ff
    add hl, bc                                    ; $6bde: $09
    ld [bc], a                                    ; $6bdf: $02
    ei                                            ; $6be0: $fb
    ld c, $fb                                     ; $6be1: $0e $fb
    inc c                                         ; $6be3: $0c
    cp $ff                                        ; $6be4: $fe $ff
    cp $06                                        ; $6be6: $fe $06
    adc d                                         ; $6be8: $8a
    nop                                           ; $6be9: $00
    ld [$542c], sp                                ; $6bea: $08 $2c $54
    ld a, b                                       ; $6bed: $78
    adc b                                         ; $6bee: $88
    jr nz, jr_0f3_6c42                            ; $6bef: $20 $51

    jr jr_0f3_6c1b                                ; $6bf1: $18 $28

    ld [bc], a                                    ; $6bf3: $02
    db $10                                        ; $6bf4: $10
    rla                                           ; $6bf5: $17
    nop                                           ; $6bf6: $00
    add a                                         ; $6bf7: $87
    ld b, b                                       ; $6bf8: $40

jr_0f3_6bf9:
    nop                                           ; $6bf9: $00
    ld [$150c], sp                                ; $6bfa: $08 $0c $15
    nop                                           ; $6bfd: $00
    ld [$0016], sp                                ; $6bfe: $08 $16 $00
    rst $38                                       ; $6c01: $ff
    dec bc                                        ; $6c02: $0b
    inc bc                                        ; $6c03: $03
    ei                                            ; $6c04: $fb
    ld c, $fb                                     ; $6c05: $0e $fb
    inc c                                         ; $6c07: $0c
    cp $ff                                        ; $6c08: $fe $ff
    cp $05                                        ; $6c0a: $fe $05
    cp $08                                        ; $6c0c: $fe $08
    adc h                                         ; $6c0e: $8c
    ld [bc], a                                    ; $6c0f: $02
    dec b                                         ; $6c10: $05
    daa                                           ; $6c11: $27
    ld e, b                                       ; $6c12: $58
    ld [hl], d                                    ; $6c13: $72
    add l                                         ; $6c14: $85
    inc h                                         ; $6c15: $24
    ld e, d                                       ; $6c16: $5a
    ld c, $10                                     ; $6c17: $0e $10
    inc b                                         ; $6c19: $04
    ld a, [bc]                                    ; $6c1a: $0a

jr_0f3_6c1b:
    rla                                           ; $6c1b: $17
    nop                                           ; $6c1c: $00
    add l                                         ; $6c1d: $85
    ld [$0200], sp                                ; $6c1e: $08 $00 $02
    inc bc                                        ; $6c21: $03
    dec h                                         ; $6c22: $25
    ld [bc], a                                    ; $6c23: $02
    ld [bc], a                                    ; $6c24: $02
    dec e                                         ; $6c25: $1d
    nop                                           ; $6c26: $00

jr_0f3_6c27:
    add c                                         ; $6c27: $81

jr_0f3_6c28:
    ld bc, $0018                                  ; $6c28: $01 $18 $00
    rst $38                                       ; $6c2b: $ff
    dec bc                                        ; $6c2c: $0b
    inc bc                                        ; $6c2d: $03
    ei                                            ; $6c2e: $fb
    ld c, $fb                                     ; $6c2f: $0e $fb
    inc c                                         ; $6c31: $0c
    cp $ff                                        ; $6c32: $fe $ff
    cp $06                                        ; $6c34: $fe $06
    cp $09                                        ; $6c36: $fe $09
    adc h                                         ; $6c38: $8c
    nop                                           ; $6c39: $00
    ld [$5221], sp                                ; $6c3a: $08 $21 $52
    ld [hl], e                                    ; $6c3d: $73
    add h                                         ; $6c3e: $84
    ld [hl+], a                                   ; $6c3f: $22
    ld d, l                                       ; $6c40: $55
    rlca                                          ; $6c41: $07

jr_0f3_6c42:
    ld [$0502], sp                                ; $6c42: $08 $02 $05
    rla                                           ; $6c45: $17
    nop                                           ; $6c46: $00
    add l                                         ; $6c47: $85
    ld c, d                                       ; $6c48: $4a
    ld b, d                                       ; $6c49: $42
    dec b                                         ; $6c4a: $05
    ld [bc], a                                    ; $6c4b: $02
    ld h, d                                       ; $6c4c: $62
    inc bc                                        ; $6c4d: $03
    nop                                           ; $6c4e: $00
    add c                                         ; $6c4f: $81
    db $10                                        ; $6c50: $10
    dec de                                        ; $6c51: $1b
    nop                                           ; $6c52: $00
    add c                                         ; $6c53: $81
    ld bc, $0018                                  ; $6c54: $01 $18 $00
    rst $38                                       ; $6c57: $ff
    dec bc                                        ; $6c58: $0b
    inc bc                                        ; $6c59: $03
    ld a, [$fe0d]                                 ; $6c5a: $fa $0d $fe
    inc bc                                        ; $6c5d: $03
    cp $fa                                        ; $6c5e: $fe $fa
    cp $02                                        ; $6c60: $fe $02
    cp $06                                        ; $6c62: $fe $06
    adc h                                         ; $6c64: $8c
    nop                                           ; $6c65: $00
    ld [bc], a                                    ; $6c66: $02
    jr nz, jr_0f3_6cc2                            ; $6c67: $20 $59

    ld l, b                                       ; $6c69: $68
    sub h                                         ; $6c6a: $94
    jr z, jr_0f3_6cc6                             ; $6c6b: $28 $59

    ld bc, $0002                                  ; $6c6d: $01 $02 $00
    ld bc, $0014                                  ; $6c70: $01 $14 $00
    adc e                                         ; $6c73: $8b
    ld b, b                                       ; $6c74: $40
    and b                                         ; $6c75: $a0
    ldh [rNR11], a                                ; $6c76: $e0 $11
    ld b, c                                       ; $6c78: $41
    and d                                         ; $6c79: $a2
    add c                                         ; $6c7a: $81
    ld b, c                                       ; $6c7b: $41
    ret nz                                        ; $6c7c: $c0

    nop                                           ; $6c7d: $00
    add b                                         ; $6c7e: $80
    ld a, [de]                                    ; $6c7f: $1a
    nop                                           ; $6c80: $00
    add e                                         ; $6c81: $83
    ld [$0100], sp                                ; $6c82: $08 $00 $01
    jr jr_0f3_6c87                                ; $6c85: $18 $00

jr_0f3_6c87:
    rst $38                                       ; $6c87: $ff
    dec bc                                        ; $6c88: $0b
    inc bc                                        ; $6c89: $03
    ld a, [$fe0d]                                 ; $6c8a: $fa $0d $fe
    ld [bc], a                                    ; $6c8d: $02
    cp $fa                                        ; $6c8e: $fe $fa
    cp $02                                        ; $6c90: $fe $02
    cp $06                                        ; $6c92: $fe $06
    adc b                                         ; $6c94: $88
    nop                                           ; $6c95: $00
    inc b                                         ; $6c96: $04
    jr nz, jr_0f3_6cea                            ; $6c97: $20 $51

    ld [hl], c                                    ; $6c99: $71
    add d                                         ; $6c9a: $82
    ld hl, $1859                                  ; $6c9b: $21 $59 $18
    nop                                           ; $6c9e: $00
    adc d                                         ; $6c9f: $8a
    db $10                                        ; $6ca0: $10
    jr z, jr_0f3_6cdb                             ; $6ca1: $28 $38

    ld b, b                                       ; $6ca3: $40
    ld d, b                                       ; $6ca4: $50
    xor b                                         ; $6ca5: $a8
    ldh [rSB], a                                  ; $6ca6: $e0 $01
    ld b, b                                       ; $6ca8: $40
    and b                                         ; $6ca9: $a0
    dec de                                        ; $6caa: $1b
    nop                                           ; $6cab: $00
    ld [bc], a                                    ; $6cac: $02
    ld [$0581], sp                                ; $6cad: $08 $81 $05
    ld [bc], a                                    ; $6cb0: $02
    ld [$0016], sp                                ; $6cb1: $08 $16 $00
    rst $38                                       ; $6cb4: $ff
    add hl, bc                                    ; $6cb5: $09
    ld [bc], a                                    ; $6cb6: $02
    ei                                            ; $6cb7: $fb
    ld c, $fb                                     ; $6cb8: $0e $fb
    inc c                                         ; $6cba: $0c
    ld sp, hl                                     ; $6cbb: $f9
    ei                                            ; $6cbc: $fb
    ld sp, hl                                     ; $6cbd: $f9
    nop                                           ; $6cbe: $00
    ld b, $00                                     ; $6cbf: $06 $00
    add e                                         ; $6cc1: $83

jr_0f3_6cc2:
    db $10                                        ; $6cc2: $10
    inc d                                         ; $6cc3: $14
    nop                                           ; $6cc4: $00
    ld [bc], a                                    ; $6cc5: $02

jr_0f3_6cc6:
    db $10                                        ; $6cc6: $10
    add a                                         ; $6cc7: $87
    jr z, @-$44                                   ; $6cc8: $28 $ba

    add $10                                       ; $6cca: $c6 $10
    jr z, jr_0f3_6cce                             ; $6ccc: $28 $00

jr_0f3_6cce:
    ld de, $1002                                  ; $6cce: $11 $02 $10
    dec b                                         ; $6cd1: $05
    nop                                           ; $6cd2: $00
    add c                                         ; $6cd3: $81
    ld [$0005], sp                                ; $6cd4: $08 $05 $00
    ld [bc], a                                    ; $6cd7: $02
    ld [bc], a                                    ; $6cd8: $02
    add d                                         ; $6cd9: $82
    ld [de], a                                    ; $6cda: $12

jr_0f3_6cdb:
    nop                                           ; $6cdb: $00
    ld [bc], a                                    ; $6cdc: $02
    ld [bc], a                                    ; $6cdd: $02
    add d                                         ; $6cde: $82
    dec b                                         ; $6cdf: $05
    nop                                           ; $6ce0: $00
    inc bc                                        ; $6ce1: $03
    ld [bc], a                                    ; $6ce2: $02
    dec c                                         ; $6ce3: $0d
    nop                                           ; $6ce4: $00
    ld [bc], a                                    ; $6ce5: $02
    ld [$1483], sp                                ; $6ce6: $08 $83 $14
    nop                                           ; $6ce9: $00

jr_0f3_6cea:
    ld [$0004], sp                                ; $6cea: $08 $04 $00
    rst $38                                       ; $6ced: $ff
    dec bc                                        ; $6cee: $0b
    inc bc                                        ; $6cef: $03
    ei                                            ; $6cf0: $fb
    ld c, $fb                                     ; $6cf1: $0e $fb
    inc c                                         ; $6cf3: $0c
    ei                                            ; $6cf4: $fb
    ld a, [$01f8]                                 ; $6cf5: $fa $f8 $01
    ld [$02fd], sp                                ; $6cf8: $08 $fd $02
    ld [$008d], sp                                ; $6cfb: $08 $8d $00
    add hl, bc                                    ; $6cfe: $09
    inc d                                         ; $6cff: $14
    inc e                                         ; $6d00: $1c
    ld a, [hl+]                                   ; $6d01: $2a
    ld [hl], $9c                                  ; $6d02: $36 $9c
    db $e3                                        ; $6d04: $e3
    ld a, [hl+]                                   ; $6d05: $2a
    ld [hl], $14                                  ; $6d06: $36 $14
    inc e                                         ; $6d08: $1c
    nop                                           ; $6d09: $00
    inc bc                                        ; $6d0a: $03
    ld [$0081], sp                                ; $6d0b: $08 $81 $00
    ld [bc], a                                    ; $6d0e: $02
    ld bc, $0283                                  ; $6d0f: $01 $83 $02
    nop                                           ; $6d12: $00
    ld bc, $0008                                  ; $6d13: $01 $08 $00
    adc h                                         ; $6d16: $8c
    inc b                                         ; $6d17: $04
    inc c                                         ; $6d18: $0c
    ld [$0414], sp                                ; $6d19: $08 $14 $04
    ld a, [bc]                                    ; $6d1c: $0a
    rra                                           ; $6d1d: $1f
    ld d, c                                       ; $6d1e: $51
    ld b, h                                       ; $6d1f: $44
    ld a, [hl+]                                   ; $6d20: $2a
    nop                                           ; $6d21: $00
    ld b, h                                       ; $6d22: $44
    ld [bc], a                                    ; $6d23: $02
    inc b                                         ; $6d24: $04
    ld [bc], a                                    ; $6d25: $02
    ld b, b                                       ; $6d26: $40
    add c                                         ; $6d27: $81
    nop                                           ; $6d28: $00
    ld [bc], a                                    ; $6d29: $02
    db $10                                        ; $6d2a: $10
    add d                                         ; $6d2b: $82
    jr z, jr_0f3_6d2e                             ; $6d2c: $28 $00

jr_0f3_6d2e:
    inc bc                                        ; $6d2e: $03
    db $10                                        ; $6d2f: $10
    adc h                                         ; $6d30: $8c
    jr z, jr_0f3_6d6b                             ; $6d31: $28 $38

    ld d, h                                       ; $6d33: $54
    ld l, h                                       ; $6d34: $6c
    jr z, jr_0f3_6d6f                             ; $6d35: $28 $38

    db $10                                        ; $6d37: $10
    jr nc, jr_0f3_6d3c                            ; $6d38: $30 $02

    dec b                                         ; $6d3a: $05
    nop                                           ; $6d3b: $00

jr_0f3_6d3c:
    ld [bc], a                                    ; $6d3c: $02
    inc e                                         ; $6d3d: $1c
    nop                                           ; $6d3e: $00
    rst $38                                       ; $6d3f: $ff
    dec bc                                        ; $6d40: $0b
    inc bc                                        ; $6d41: $03
    ei                                            ; $6d42: $fb
    ld c, $fb                                     ; $6d43: $0e $fb
    inc c                                         ; $6d45: $0c
    ld sp, hl                                     ; $6d46: $f9
    ld sp, hl                                     ; $6d47: $f9
    rst $30                                       ; $6d48: $f7
    ld bc, $02f9                                  ; $6d49: $01 $f9 $02
    ld [bc], a                                    ; $6d4c: $02
    inc b                                         ; $6d4d: $04
    adc a                                         ; $6d4e: $8f
    nop                                           ; $6d4f: $00
    inc b                                         ; $6d50: $04
    nop                                           ; $6d51: $00
    inc b                                         ; $6d52: $04
    ld a, [bc]                                    ; $6d53: $0a
    ld c, $04                                     ; $6d54: $0e $04
    ld a, [bc]                                    ; $6d56: $0a
    ld l, $31                                     ; $6d57: $2e $31
    sbc a                                         ; $6d59: $9f
    ldh [$2e], a                                  ; $6d5a: $e0 $2e
    ld sp, $0204                                  ; $6d5c: $31 $04 $02
    ld a, [bc]                                    ; $6d5f: $0a
    add h                                         ; $6d60: $84
    ld c, $00                                     ; $6d61: $0e $00
    inc b                                         ; $6d63: $04
    nop                                           ; $6d64: $00
    inc bc                                        ; $6d65: $03
    inc b                                         ; $6d66: $04
    ld b, $00                                     ; $6d67: $06 $00
    ld [bc], a                                    ; $6d69: $02
    inc b                                         ; $6d6a: $04

jr_0f3_6d6b:
    sub b                                         ; $6d6b: $90
    nop                                           ; $6d6c: $00
    inc b                                         ; $6d6d: $04
    ld a, [bc]                                    ; $6d6e: $0a

jr_0f3_6d6f:
    ld c, $15                                     ; $6d6f: $0e $15
    dec de                                        ; $6d71: $1b
    ld l, $31                                     ; $6d72: $2e $31
    dec d                                         ; $6d74: $15
    dec de                                        ; $6d75: $1b
    ld a, [bc]                                    ; $6d76: $0a
    ld c, $80                                     ; $6d77: $0e $80

jr_0f3_6d79:
    add h                                         ; $6d79: $84
    inc h                                         ; $6d7a: $24
    db $e4                                        ; $6d7b: $e4
    ld [bc], a                                    ; $6d7c: $02
    add b                                         ; $6d7d: $80
    add d                                         ; $6d7e: $82
    nop                                           ; $6d7f: $00
    inc b                                         ; $6d80: $04
    ld [bc], a                                    ; $6d81: $02
    db $10                                        ; $6d82: $10
    adc d                                         ; $6d83: $8a
    jr z, jr_0f3_6dbe                             ; $6d84: $28 $38

    ld d, h                                       ; $6d86: $54
    ld l, h                                       ; $6d87: $6c
    cp d                                          ; $6d88: $ba
    add $54                                       ; $6d89: $c6 $54
    ld l, h                                       ; $6d8b: $6c
    nop                                           ; $6d8c: $00
    ld bc, $0002                                  ; $6d8d: $01 $02 $00
    ld [bc], a                                    ; $6d90: $02
    ld bc, $0016                                  ; $6d91: $01 $16 $00
    add h                                         ; $6d94: $84
    ld d, b                                       ; $6d95: $50
    ld [hl], b                                    ; $6d96: $70
    jr nz, jr_0f3_6dc1                            ; $6d97: $20 $28

    rst $38                                       ; $6d99: $ff
    dec c                                         ; $6d9a: $0d
    inc b                                         ; $6d9b: $04
    ei                                            ; $6d9c: $fb
    ld c, $fb                                     ; $6d9d: $0e $fb
    inc c                                         ; $6d9f: $0c
    rst $30                                       ; $6da0: $f7
    ld hl, sp-$07                                 ; $6da1: $f8 $f9
    nop                                           ; $6da3: $00
    ld bc, $0702                                  ; $6da4: $01 $02 $07
    ld hl, sp+$02                                 ; $6da7: $f8 $02
    ld [bc], a                                    ; $6da9: $02
    sbc c                                         ; $6daa: $99
    nop                                           ; $6dab: $00
    ld [bc], a                                    ; $6dac: $02
    dec b                                         ; $6dad: $05
    rlca                                          ; $6dae: $07
    ld [bc], a                                    ; $6daf: $02
    dec b                                         ; $6db0: $05
    ld a, [bc]                                    ; $6db1: $0a
    dec c                                         ; $6db2: $0d
    ld a, [bc]                                    ; $6db3: $0a
    dec c                                         ; $6db4: $0d
    rla                                           ; $6db5: $17
    jr jr_0f3_6de7                                ; $6db6: $18 $2f

    jr nc, jr_0f3_6d79                            ; $6db8: $30 $bf

    ret nz                                        ; $6dba: $c0

    cpl                                           ; $6dbb: $2f
    jr nc, @+$19                                  ; $6dbc: $30 $17

jr_0f3_6dbe:
    jr jr_0f3_6dca                                ; $6dbe: $18 $0a

    dec c                                         ; $6dc0: $0d

jr_0f3_6dc1:
    ld a, [bc]                                    ; $6dc1: $0a
    dec c                                         ; $6dc2: $0d
    ld [bc], a                                    ; $6dc3: $02
    ld [bc], a                                    ; $6dc4: $02
    dec b                                         ; $6dc5: $05
    and l                                         ; $6dc6: $a5
    rlca                                          ; $6dc7: $07
    nop                                           ; $6dc8: $00
    ld [bc], a                                    ; $6dc9: $02

jr_0f3_6dca:
    nop                                           ; $6dca: $00
    ld [bc], a                                    ; $6dcb: $02
    nop                                           ; $6dcc: $00
    ld [bc], a                                    ; $6dcd: $02
    add d                                         ; $6dce: $82
    add l                                         ; $6dcf: $85
    add b                                         ; $6dd0: $80
    add d                                         ; $6dd1: $82
    ld b, b                                       ; $6dd2: $40
    jp nz, Jump_0f3_60a0                          ; $6dd3: $c2 $a0 $60

    add sp, $18                                   ; $6dd6: $e8 $18
    xor b                                         ; $6dd8: $a8
    ld l, b                                       ; $6dd9: $68
    ld d, h                                       ; $6dda: $54
    call c, $9c94                                 ; $6ddb: $dc $94 $9c
    xor d                                         ; $6dde: $aa
    or [hl]                                       ; $6ddf: $b6
    ld e, l                                       ; $6de0: $5d
    ld h, e                                       ; $6de1: $63
    ld a, $c1                                     ; $6de2: $3e $c1
    ld e, l                                       ; $6de4: $5d
    ld h, e                                       ; $6de5: $63
    ld a, [hl+]                                   ; $6de6: $2a

jr_0f3_6de7:
    ld [hl], $14                                  ; $6de7: $36 $14
    inc e                                         ; $6de9: $1c
    nop                                           ; $6dea: $00
    ld [bc], a                                    ; $6deb: $02
    ld b, $00                                     ; $6dec: $06 $00
    add d                                         ; $6dee: $82
    ld bc, $0603                                  ; $6def: $01 $03 $06
    nop                                           ; $6df2: $00
    add d                                         ; $6df3: $82
    ld d, b                                       ; $6df4: $50
    ld [hl], b                                    ; $6df5: $70
    ld [bc], a                                    ; $6df6: $02
    jr nz, jr_0f3_6e05                            ; $6df7: $20 $0c

    nop                                           ; $6df9: $00
    ld [bc], a                                    ; $6dfa: $02
    ld [bc], a                                    ; $6dfb: $02
    ld e, $00                                     ; $6dfc: $1e $00
    rst $38                                       ; $6dfe: $ff
    add hl, bc                                    ; $6dff: $09
    ld [bc], a                                    ; $6e00: $02
    ei                                            ; $6e01: $fb
    ld c, $fb                                     ; $6e02: $0e $fb
    inc c                                         ; $6e04: $0c

jr_0f3_6e05:
    ei                                            ; $6e05: $fb
    ld a, [$fffb]                                 ; $6e06: $fa $fb $ff
    ld [bc], a                                    ; $6e09: $02
    ld [$0083], sp                                ; $6e0a: $08 $83 $00
    ld [$0200], sp                                ; $6e0d: $08 $00 $02
    ld [$1488], sp                                ; $6e10: $08 $88 $14
    sbc h                                         ; $6e13: $9c
    db $e3                                        ; $6e14: $e3
    ld [$0014], sp                                ; $6e15: $08 $14 $00
    ld [$0300], sp                                ; $6e18: $08 $00 $03
    ld [$000f], sp                                ; $6e1b: $08 $0f $00
    ld [bc], a                                    ; $6e1e: $02
    ld [$1483], sp                                ; $6e1f: $08 $83 $14
    nop                                           ; $6e22: $00
    ld [$0002], sp                                ; $6e23: $08 $02 $00
    ld [bc], a                                    ; $6e26: $02
    db $10                                        ; $6e27: $10
    ld b, $00                                     ; $6e28: $06 $00
    ld [bc], a                                    ; $6e2a: $02
    inc b                                         ; $6e2b: $04
    add l                                         ; $6e2c: $85
    nop                                           ; $6e2d: $00
    inc b                                         ; $6e2e: $04
    dec d                                         ; $6e2f: $15
    dec de                                        ; $6e30: $1b
    nop                                           ; $6e31: $00
    inc bc                                        ; $6e32: $03
    inc b                                         ; $6e33: $04
    ld b, $00                                     ; $6e34: $06 $00
    rst $38                                       ; $6e36: $ff
    add hl, bc                                    ; $6e37: $09
    ld [bc], a                                    ; $6e38: $02
    ei                                            ; $6e39: $fb
    ld c, $fb                                     ; $6e3a: $0e $fb
    inc c                                         ; $6e3c: $0c
    ld de, $1104                                  ; $6e3d: $11 $04 $11
    ld b, $81                                     ; $6e40: $06 $81
    ld b, b                                       ; $6e42: $40
    ld [bc], a                                    ; $6e43: $02
    sub d                                         ; $6e44: $92
    add l                                         ; $6e45: $85
    pop hl                                        ; $6e46: $e1
    ld [hl], e                                    ; $6e47: $73
    ld a, a                                       ; $6e48: $7f
    dec l                                         ; $6e49: $2d
    ccf                                           ; $6e4a: $3f
    jr jr_0f3_6e4d                                ; $6e4b: $18 $00

jr_0f3_6e4d:
    add c                                         ; $6e4d: $81
    ld [bc], a                                    ; $6e4e: $02
    ld [bc], a                                    ; $6e4f: $02
    ld bc, $0381                                  ; $6e50: $01 $81 $03
    ld [bc], a                                    ; $6e53: $02
    ld [bc], a                                    ; $6e54: $02
    ld a, [de]                                    ; $6e55: $1a
    nop                                           ; $6e56: $00
    rst $38                                       ; $6e57: $ff
    dec bc                                        ; $6e58: $0b
    inc bc                                        ; $6e59: $03
    ei                                            ; $6e5a: $fb
    ld c, $fb                                     ; $6e5b: $0e $fb
    inc c                                         ; $6e5d: $0c
    rrca                                          ; $6e5e: $0f
    nop                                           ; $6e5f: $00
    rrca                                          ; $6e60: $0f
    ld [$090f], sp                                ; $6e61: $08 $0f $09
    ld [bc], a                                    ; $6e64: $02
    nop                                           ; $6e65: $00
    add c                                         ; $6e66: $81
    ld b, b                                       ; $6e67: $40
    ld [bc], a                                    ; $6e68: $02
    sub b                                         ; $6e69: $90
    add a                                         ; $6e6a: $87
    ld [c], a                                     ; $6e6b: $e2
    ld [hl], d                                    ; $6e6c: $72
    ld a, c                                       ; $6e6d: $79
    add hl, hl                                    ; $6e6e: $29
    ccf                                           ; $6e6f: $3f
    ld b, $07                                     ; $6e70: $06 $07
    dec d                                         ; $6e72: $15
    nop                                           ; $6e73: $00
    ld [bc], a                                    ; $6e74: $02
    ld bc, $2402                                  ; $6e75: $01 $02 $24
    add a                                         ; $6e78: $87
    adc e                                         ; $6e79: $8b
    xor e                                         ; $6e7a: $ab
    rlca                                          ; $6e7b: $07
    ld a, [bc]                                    ; $6e7c: $0a
    cp $d0                                        ; $6e7d: $fe $d0
    ld hl, sp+$17                                 ; $6e7f: $f8 $17
    nop                                           ; $6e81: $00
    inc bc                                        ; $6e82: $03
    ld bc, $001a                                  ; $6e83: $01 $1a $00
    rst $38                                       ; $6e86: $ff
    dec bc                                        ; $6e87: $0b
    inc bc                                        ; $6e88: $03
    ei                                            ; $6e89: $fb
    ld c, $fb                                     ; $6e8a: $0e $fb
    inc c                                         ; $6e8c: $0c
    rrca                                          ; $6e8d: $0f
    nop                                           ; $6e8e: $00
    rrca                                          ; $6e8f: $0f
    ld [$090f], sp                                ; $6e90: $08 $0f $09
    add c                                         ; $6e93: $81
    nop                                           ; $6e94: $00
    ld [bc], a                                    ; $6e95: $02
    ld b, b                                       ; $6e96: $40
    adc c                                         ; $6e97: $89
    and b                                         ; $6e98: $a0
    add b                                         ; $6e99: $80
    db $ec                                        ; $6e9a: $ec
    ld l, h                                       ; $6e9b: $6c
    ld [hl], e                                    ; $6e9c: $73
    dec de                                        ; $6e9d: $1b
    dec a                                         ; $6e9e: $3d
    ld b, $07                                     ; $6e9f: $06 $07
    ld d, $00                                     ; $6ea1: $16 $00
    add c                                         ; $6ea3: $81
    ld bc, $9402                                  ; $6ea4: $01 $02 $94
    add a                                         ; $6ea7: $87
    inc bc                                        ; $6ea8: $03
    ld h, a                                       ; $6ea9: $67
    sbc e                                         ; $6eaa: $9b
    adc d                                         ; $6eab: $8a
    cp $d0                                        ; $6eac: $fe $d0
    ld hl, sp+$15                                 ; $6eae: $f8 $15
    nop                                           ; $6eb0: $00
    add d                                         ; $6eb1: $82
    ld bc, $0300                                  ; $6eb2: $01 $00 $03
    ld bc, $001a                                  ; $6eb5: $01 $1a $00
    rst $38                                       ; $6eb8: $ff
    dec bc                                        ; $6eb9: $0b
    inc bc                                        ; $6eba: $03
    ei                                            ; $6ebb: $fb
    ld c, $fb                                     ; $6ebc: $0e $fb
    inc c                                         ; $6ebe: $0c
    ld c, $fd                                     ; $6ebf: $0e $fd
    ld c, $05                                     ; $6ec1: $0e $05
    ld c, $0c                                     ; $6ec3: $0e $0c
    add c                                         ; $6ec5: $81
    nop                                           ; $6ec6: $00
    ld [bc], a                                    ; $6ec7: $02
    ld b, b                                       ; $6ec8: $40
    adc c                                         ; $6ec9: $89
    sub d                                         ; $6eca: $92
    add d                                         ; $6ecb: $82
    db $f4                                        ; $6ecc: $f4
    ld [hl], d                                    ; $6ecd: $72
    ld l, l                                       ; $6ece: $6d
    inc l                                         ; $6ecf: $2c
    ccf                                           ; $6ed0: $3f
    ld b, $07                                     ; $6ed1: $06 $07
    ld [bc], a                                    ; $6ed3: $02
    ld bc, $0015                                  ; $6ed4: $01 $15 $00
    ld [bc], a                                    ; $6ed7: $02
    db $10                                        ; $6ed8: $10
    adc c                                         ; $6ed9: $89
    nop                                           ; $6eda: $00
    jr @-$5b                                      ; $6edb: $18 $a3

    sub e                                         ; $6edd: $93
    ld l, h                                       ; $6ede: $6c
    ld e, c                                       ; $6edf: $59
    xor $7d                                       ; $6ee0: $ee $7d
    rst $38                                       ; $6ee2: $ff
    inc de                                        ; $6ee3: $13
    nop                                           ; $6ee4: $00
    adc e                                         ; $6ee5: $8b
    ld bc, $2b00                                  ; $6ee6: $01 $00 $2b
    add hl, bc                                    ; $6ee9: $09
    daa                                           ; $6eea: $27
    ld h, $5e                                     ; $6eeb: $26 $5e
    jr jr_0f3_6f6b                                ; $6eed: $18 $7c

    jr nz, @+$72                                  ; $6eef: $20 $70

    inc d                                         ; $6ef1: $14
    nop                                           ; $6ef2: $00
    rst $38                                       ; $6ef3: $ff
    dec bc                                        ; $6ef4: $0b
    inc bc                                        ; $6ef5: $03
    ei                                            ; $6ef6: $fb
    ld c, $fb                                     ; $6ef7: $0e $fb
    inc c                                         ; $6ef9: $0c
    dec c                                         ; $6efa: $0d
    db $fd                                        ; $6efb: $fd
    dec c                                         ; $6efc: $0d
    dec b                                         ; $6efd: $05
    dec c                                         ; $6efe: $0d
    inc c                                         ; $6eff: $0c
    add e                                         ; $6f00: $83
    nop                                           ; $6f01: $00
    ld [$0200], sp                                ; $6f02: $08 $00 $02
    ld c, b                                       ; $6f05: $48
    adc e                                         ; $6f06: $8b
    add [hl]                                      ; $6f07: $86
    xor [hl]                                      ; $6f08: $ae
    ldh a, [$62]                                  ; $6f09: $f0 $62
    ld a, l                                       ; $6f0b: $7d
    jr z, @+$41                                   ; $6f0c: $28 $3f

    ld b, $07                                     ; $6f0e: $06 $07
    nop                                           ; $6f10: $00
    ld bc, $0017                                  ; $6f11: $01 $17 $00
    add d                                         ; $6f14: $82
    stop                                          ; $6f15: $10 $00
    ld [bc], a                                    ; $6f17: $02
    sub e                                         ; $6f18: $93

jr_0f3_6f19:
    add l                                         ; $6f19: $85
    ld c, h                                       ; $6f1a: $4c
    ld e, l                                       ; $6f1b: $5d
    and $dd                                       ; $6f1c: $e6 $dd
    rst $38                                       ; $6f1e: $ff
    inc de                                        ; $6f1f: $13
    nop                                           ; $6f20: $00
    adc e                                         ; $6f21: $8b
    ld bc, $2b00                                  ; $6f22: $01 $00 $2b
    add hl, hl                                    ; $6f25: $29
    ld b, a                                       ; $6f26: $47
    ld h, $5e                                     ; $6f27: $26 $5e
    jr jr_0f3_6fa7                                ; $6f29: $18 $7c

    jr nc, jr_0f3_6f9d                            ; $6f2b: $30 $70

    ld [de], a                                    ; $6f2d: $12
    nop                                           ; $6f2e: $00
    rst $38                                       ; $6f2f: $ff
    dec bc                                        ; $6f30: $0b
    inc bc                                        ; $6f31: $03
    ei                                            ; $6f32: $fb
    ld c, $fb                                     ; $6f33: $0e $fb
    inc c                                         ; $6f35: $0c
    ld c, $fd                                     ; $6f36: $0e $fd
    ld c, $05                                     ; $6f38: $0e $05
    ld c, $0c                                     ; $6f3a: $0e $0c
    add e                                         ; $6f3c: $83
    nop                                           ; $6f3d: $00
    ld d, b                                       ; $6f3e: $50
    ld b, b                                       ; $6f3f: $40
    ld [bc], a                                    ; $6f40: $02
    sub d                                         ; $6f41: $92
    add a                                         ; $6f42: $87
    db $e4                                        ; $6f43: $e4
    ld b, d                                       ; $6f44: $42
    ld a, l                                       ; $6f45: $7d
    add hl, de                                    ; $6f46: $19
    ccf                                           ; $6f47: $3f
    ld b, $07                                     ; $6f48: $06 $07
    ld [bc], a                                    ; $6f4a: $02
    ld bc, $0013                                  ; $6f4b: $01 $13 $00
    ld [bc], a                                    ; $6f4e: $02
    jr nz, @-$73                                  ; $6f4f: $20 $8b

    nop                                           ; $6f51: $00
    ld h, b                                       ; $6f52: $60
    nop                                           ; $6f53: $00
    jr z, jr_0f3_6f19                             ; $6f54: $28 $c3

    and e                                         ; $6f56: $a3
    ld e, h                                       ; $6f57: $5c
    ld sp, $7dee                                  ; $6f58: $31 $ee $7d
    rst $38                                       ; $6f5b: $ff
    inc de                                        ; $6f5c: $13
    nop                                           ; $6f5d: $00
    adc e                                         ; $6f5e: $8b
    ld bc, $2b00                                  ; $6f5f: $01 $00 $2b
    add hl, bc                                    ; $6f62: $09
    daa                                           ; $6f63: $27
    ld h, $5e                                     ; $6f64: $26 $5e
    jr @+$7e                                      ; $6f66: $18 $7c

    jr nz, jr_0f3_6fda                            ; $6f68: $20 $70

    inc d                                         ; $6f6a: $14

jr_0f3_6f6b:
    nop                                           ; $6f6b: $00
    rst $38                                       ; $6f6c: $ff
    dec c                                         ; $6f6d: $0d
    inc b                                         ; $6f6e: $04
    ei                                            ; $6f6f: $fb
    ld c, $fb                                     ; $6f70: $0e $fb
    inc c                                         ; $6f72: $0c
    ld c, $fa                                     ; $6f73: $0e $fa
    ld c, $02                                     ; $6f75: $0e $02
    ld c, $0a                                     ; $6f77: $0e $0a
    ld c, $0f                                     ; $6f79: $0e $0f
    add e                                         ; $6f7b: $83
    nop                                           ; $6f7c: $00
    ld d, b                                       ; $6f7d: $50
    ld b, b                                       ; $6f7e: $40
    ld [bc], a                                    ; $6f7f: $02
    sub d                                         ; $6f80: $92
    add a                                         ; $6f81: $87
    push hl                                       ; $6f82: $e5
    ld h, d                                       ; $6f83: $62
    ld a, l                                       ; $6f84: $7d
    jr z, jr_0f3_6fc6                             ; $6f85: $28 $3f

    ld b, $07                                     ; $6f87: $06 $07
    rla                                           ; $6f89: $17
    nop                                           ; $6f8a: $00
    adc e                                         ; $6f8b: $8b
    ld [hl+], a                                   ; $6f8c: $22
    ld [bc], a                                    ; $6f8d: $02
    jr nz, jr_0f3_6fb3                            ; $6f8e: $20 $23

    ld d, b                                       ; $6f90: $50
    or d                                          ; $6f91: $b2
    ld c, c                                       ; $6f92: $49
    ld b, d                                       ; $6f93: $42
    db $fd                                        ; $6f94: $fd
    rst $28                                       ; $6f95: $ef
    rst $38                                       ; $6f96: $ff
    dec d                                         ; $6f97: $15
    nop                                           ; $6f98: $00
    adc e                                         ; $6f99: $8b
    ld de, $2510                                  ; $6f9a: $11 $10 $25

jr_0f3_6f9d:
    dec [hl]                                      ; $6f9d: $35
    ld b, d                                       ; $6f9e: $42
    ld h, h                                       ; $6f9f: $64
    sbc e                                         ; $6fa0: $9b
    dec d                                         ; $6fa1: $15
    rst $38                                       ; $6fa2: $ff
    cp b                                          ; $6fa3: $b8
    ld hl, sp+$13                                 ; $6fa4: $f8 $13
    nop                                           ; $6fa6: $00

jr_0f3_6fa7:
    adc c                                         ; $6fa7: $89
    ld bc, $0b00                                  ; $6fa8: $01 $00 $0b
    add hl, bc                                    ; $6fab: $09
    rlca                                          ; $6fac: $07
    ld b, $1e                                     ; $6fad: $06 $1e
    jr @+$1e                                      ; $6faf: $18 $1c

    ld d, $00                                     ; $6fb1: $16 $00

jr_0f3_6fb3:
    rst $38                                       ; $6fb3: $ff
    dec bc                                        ; $6fb4: $0b
    inc bc                                        ; $6fb5: $03
    ei                                            ; $6fb6: $fb
    ld c, $fb                                     ; $6fb7: $0e $fb
    inc c                                         ; $6fb9: $0c
    dec c                                         ; $6fba: $0d
    db $fd                                        ; $6fbb: $fd
    dec c                                         ; $6fbc: $0d
    dec b                                         ; $6fbd: $05
    dec c                                         ; $6fbe: $0d
    inc c                                         ; $6fbf: $0c
    add e                                         ; $6fc0: $83
    nop                                           ; $6fc1: $00
    ld [$0200], sp                                ; $6fc2: $08 $00 $02
    ld c, b                                       ; $6fc5: $48

jr_0f3_6fc6:
    adc e                                         ; $6fc6: $8b
    add [hl]                                      ; $6fc7: $86
    xor [hl]                                      ; $6fc8: $ae
    ldh a, [$62]                                  ; $6fc9: $f0 $62
    ld a, l                                       ; $6fcb: $7d
    jr z, jr_0f3_700d                             ; $6fcc: $28 $3f

    ld b, $07                                     ; $6fce: $06 $07
    nop                                           ; $6fd0: $00
    ld bc, $0017                                  ; $6fd1: $01 $17 $00
    add d                                         ; $6fd4: $82
    stop                                          ; $6fd5: $10 $00
    ld [bc], a                                    ; $6fd7: $02
    sub e                                         ; $6fd8: $93
    add l                                         ; $6fd9: $85

jr_0f3_6fda:
    ld c, h                                       ; $6fda: $4c
    ld e, l                                       ; $6fdb: $5d
    and $dd                                       ; $6fdc: $e6 $dd
    rst $38                                       ; $6fde: $ff
    inc de                                        ; $6fdf: $13
    nop                                           ; $6fe0: $00
    adc e                                         ; $6fe1: $8b
    ld bc, $2b00                                  ; $6fe2: $01 $00 $2b
    add hl, hl                                    ; $6fe5: $29
    ld b, a                                       ; $6fe6: $47
    ld h, $5e                                     ; $6fe7: $26 $5e
    jr jr_0f3_7067                                ; $6fe9: $18 $7c

    jr nc, @+$72                                  ; $6feb: $30 $70

    ld [de], a                                    ; $6fed: $12
    nop                                           ; $6fee: $00
    rst $38                                       ; $6fef: $ff
    add hl, bc                                    ; $6ff0: $09
    ld [bc], a                                    ; $6ff1: $02
    ei                                            ; $6ff2: $fb
    ld c, $fb                                     ; $6ff3: $0e $fb
    inc c                                         ; $6ff5: $0c
    ld de, $1104                                  ; $6ff6: $11 $04 $11
    ld b, $81                                     ; $6ff9: $06 $81
    ld b, b                                       ; $6ffb: $40
    ld [bc], a                                    ; $6ffc: $02
    sub d                                         ; $6ffd: $92
    add l                                         ; $6ffe: $85
    pop hl                                        ; $6fff: $e1
    ld [hl], e                                    ; $7000: $73
    ld a, a                                       ; $7001: $7f
    dec l                                         ; $7002: $2d
    ccf                                           ; $7003: $3f
    jr jr_0f3_7006                                ; $7004: $18 $00

jr_0f3_7006:
    add c                                         ; $7006: $81
    ld [bc], a                                    ; $7007: $02
    ld [bc], a                                    ; $7008: $02
    ld bc, $0381                                  ; $7009: $01 $81 $03
    ld [bc], a                                    ; $700c: $02

jr_0f3_700d:
    ld [bc], a                                    ; $700d: $02
    ld a, [de]                                    ; $700e: $1a
    nop                                           ; $700f: $00
    rst $38                                       ; $7010: $ff
    rlca                                          ; $7011: $07
    ld bc, $09f8                                  ; $7012: $01 $f8 $09
    ld hl, sp+$09                                 ; $7015: $f8 $09
    rst $38                                       ; $7017: $ff
    ei                                            ; $7018: $fb
    add h                                         ; $7019: $84
    nop                                           ; $701a: $00
    ld b, $0f                                     ; $701b: $06 $0f
    ld bc, $0602                                  ; $701d: $01 $02 $06
    ld a, [de]                                    ; $7020: $1a
    nop                                           ; $7021: $00
    rst $38                                       ; $7022: $ff
    add hl, bc                                    ; $7023: $09
    ld [bc], a                                    ; $7024: $02
    ld hl, sp+$09                                 ; $7025: $f8 $09
    ld hl, sp+$09                                 ; $7027: $f8 $09
    cp $f3                                        ; $7029: $fe $f3
    cp $fb                                        ; $702b: $fe $fb
    adc d                                         ; $702d: $8a
    cp b                                          ; $702e: $b8
    call nz, Call_000_0006                        ; $702f: $c4 $06 $00
    ld [bc], a                                    ; $7032: $02
    ld bc, $0804                                  ; $7033: $01 $04 $08
    ld e, b                                       ; $7036: $58
    ld h, b                                       ; $7037: $60
    jr jr_0f3_703a                                ; $7038: $18 $00

jr_0f3_703a:
    adc b                                         ; $703a: $88
    ld [hl-], a                                   ; $703b: $32
    ld b, [hl]                                    ; $703c: $46
    add l                                         ; $703d: $85
    sbc e                                         ; $703e: $9b
    ld b, $02                                     ; $703f: $06 $02
    jr jr_0f3_7063                                ; $7041: $18 $20

    ld d, $00                                     ; $7043: $16 $00
    rst $38                                       ; $7045: $ff
    dec bc                                        ; $7046: $0b
    inc bc                                        ; $7047: $03
    ld hl, sp+$09                                 ; $7048: $f8 $09
    ld hl, sp+$09                                 ; $704a: $f8 $09
    cp $ef                                        ; $704c: $fe $ef
    cp $f7                                        ; $704e: $fe $f7
    cp $fb                                        ; $7050: $fe $fb
    adc d                                         ; $7052: $8a
    inc e                                         ; $7053: $1c
    ld [bc], a                                    ; $7054: $02
    or e                                          ; $7055: $b3
    ret nz                                        ; $7056: $c0

    nop                                           ; $7057: $00
    ld bc, $0003                                  ; $7058: $01 $03 $00
    inc l                                         ; $705b: $2c
    jr nc, jr_0f3_7074                            ; $705c: $30 $16

    nop                                           ; $705e: $00
    add [hl]                                      ; $705f: $86
    ld b, $00                                     ; $7060: $06 $00
    dec c                                         ; $7062: $0d

jr_0f3_7063:
    add b                                         ; $7063: $80
    db $10                                        ; $7064: $10
    ld l, b                                       ; $7065: $68
    ld [bc], a                                    ; $7066: $02

jr_0f3_7067:
    nop                                           ; $7067: $00
    add e                                         ; $7068: $83
    ld e, d                                       ; $7069: $5a
    ld h, c                                       ; $706a: $61
    ld c, $17                                     ; $706b: $0e $17
    nop                                           ; $706d: $00
    add [hl]                                      ; $706e: $86
    ld a, [bc]                                    ; $706f: $0a
    ld b, $0d                                     ; $7070: $06 $0d
    inc bc                                        ; $7072: $03
    ld a, [bc]                                    ; $7073: $0a

jr_0f3_7074:
    ld b, $18                                     ; $7074: $06 $18
    nop                                           ; $7076: $00
    rst $38                                       ; $7077: $ff
    dec bc                                        ; $7078: $0b
    inc bc                                        ; $7079: $03
    ld hl, sp+$09                                 ; $707a: $f8 $09
    ld hl, sp+$09                                 ; $707c: $f8 $09
    cp $ed                                        ; $707e: $fe $ed
    cp $f5                                        ; $7080: $fe $f5
    cp $fb                                        ; $7082: $fe $fb
    add h                                         ; $7084: $84
    ld b, $01                                     ; $7085: $06 $01
    cp b                                          ; $7087: $b8
    push bc                                       ; $7088: $c5
    ld [bc], a                                    ; $7089: $02
    nop                                           ; $708a: $00
    add h                                         ; $708b: $84
    ld bc, $5e00                                  ; $708c: $01 $00 $5e
    ld h, c                                       ; $708f: $61
    rla                                           ; $7090: $17
    nop                                           ; $7091: $00
    add l                                         ; $7092: $85
    ld bc, $7291                                  ; $7093: $01 $91 $72
    ld c, $90                                     ; $7096: $0e $90
    ld [bc], a                                    ; $7098: $02
    nop                                           ; $7099: $00
    add e                                         ; $709a: $83
    jr z, jr_0f3_70d0                             ; $709b: $28 $33

    ld b, $15                                     ; $709d: $06 $15
    nop                                           ; $709f: $00

Call_0f3_70a0:
    add d                                         ; $70a0: $82
    jr nz, @+$12                                  ; $70a1: $20 $10

    ld [bc], a                                    ; $70a3: $02
    ld [bc], a                                    ; $70a4: $02
    add d                                         ; $70a5: $82
    dec b                                         ; $70a6: $05
    inc bc                                        ; $70a7: $03
    ld [bc], a                                    ; $70a8: $02
    ld [bc], a                                    ; $70a9: $02
    add d                                         ; $70aa: $82
    nop                                           ; $70ab: $00
    jr nz, jr_0f3_70c4                            ; $70ac: $20 $16

    nop                                           ; $70ae: $00
    rst $38                                       ; $70af: $ff
    add hl, bc                                    ; $70b0: $09
    ld [bc], a                                    ; $70b1: $02

Call_0f3_70b2:
jr_0f3_70b2:
    ld hl, sp+$09                                 ; $70b2: $f8 $09
    ld hl, sp+$09                                 ; $70b4: $f8 $09
    cp $eb                                        ; $70b6: $fe $eb
    cp $f2                                        ; $70b8: $fe $f2
    add h                                         ; $70ba: $84
    ld l, $31                                     ; $70bb: $2e $31
    ld bc, $0200                                  ; $70bd: $01 $00 $02
    ld bc, $a684                                  ; $70c0: $01 $84 $a6
    pop bc                                        ; $70c3: $c1

jr_0f3_70c4:
    jr c, jr_0f3_70ca                             ; $70c4: $38 $04

    ld d, $00                                     ; $70c6: $16 $00
    ld [bc], a                                    ; $70c8: $02
    ld b, b                                       ; $70c9: $40

jr_0f3_70ca:
    add h                                         ; $70ca: $84
    dec de                                        ; $70cb: $1b
    ld [hl], b                                    ; $70cc: $70
    inc c                                         ; $70cd: $0c
    ld [de], a                                    ; $70ce: $12
    ld a, [de]                                    ; $70cf: $1a

jr_0f3_70d0:
    nop                                           ; $70d0: $00
    rst $38                                       ; $70d1: $ff
    rlca                                          ; $70d2: $07
    ld bc, $09f8                                  ; $70d3: $01 $f8 $09
    ld hl, sp+$09                                 ; $70d6: $f8 $09
    db $fd                                        ; $70d8: $fd
    db $fc                                        ; $70d9: $fc
    add [hl]                                      ; $70da: $86

jr_0f3_70db:
    add c                                         ; $70db: $81
    jp $8142                                      ; $70dc: $c3 $42 $81


    nop                                           ; $70df: $00
    jr nz, jr_0f3_70e5                            ; $70e0: $20 $03

    nop                                           ; $70e2: $00
    add c                                         ; $70e3: $81
    ld [bc], a                                    ; $70e4: $02

jr_0f3_70e5:
    ld [bc], a                                    ; $70e5: $02
    nop                                           ; $70e6: $00
    add c                                         ; $70e7: $81
    ld b, d                                       ; $70e8: $42
    ld [bc], a                                    ; $70e9: $02
    add c                                         ; $70ea: $81
    add c                                         ; $70eb: $81
    jp RST_10                                     ; $70ec: $c3 $10 $00


    rst $38                                       ; $70ef: $ff
    dec bc                                        ; $70f0: $0b
    inc bc                                        ; $70f1: $03
    ld hl, sp+$09                                 ; $70f2: $f8 $09
    ld hl, sp+$09                                 ; $70f4: $f8 $09
    ld sp, hl                                     ; $70f6: $f9
    ld hl, sp-$07                                 ; $70f7: $f8 $f9
    nop                                           ; $70f9: $00
    add hl, bc                                    ; $70fa: $09
    ld a, [$0202]                                 ; $70fb: $fa $02 $02
    add [hl]                                      ; $70fe: $86
    nop                                           ; $70ff: $00
    ld [bc], a                                    ; $7100: $02
    ld [hl+], a                                   ; $7101: $22
    jr nc, jr_0f3_7114                            ; $7102: $30 $10

    jr nz, jr_0f3_7109                            ; $7104: $20 $03

    nop                                           ; $7106: $00
    add l                                         ; $7107: $85
    ld [bc], a                                    ; $7108: $02

jr_0f3_7109:
    and d                                         ; $7109: $a2
    push bc                                       ; $710a: $c5
    nop                                           ; $710b: $00
    ld [bc], a                                    ; $710c: $02
    inc b                                         ; $710d: $04
    nop                                           ; $710e: $00
    add d                                         ; $710f: $82
    and b                                         ; $7110: $a0
    ret nz                                        ; $7111: $c0

    inc b                                         ; $7112: $04
    nop                                           ; $7113: $00

jr_0f3_7114:
    add [hl]                                      ; $7114: $86
    db $10                                        ; $7115: $10
    jr nz, jr_0f3_713a                            ; $7116: $20 $22

    jr nc, jr_0f3_711a                            ; $7118: $30 $00

jr_0f3_711a:
    ld [bc], a                                    ; $711a: $02
    ld [bc], a                                    ; $711b: $02
    ld b, b                                       ; $711c: $40
    add [hl]                                      ; $711d: $86
    nop                                           ; $711e: $00
    ld b, b                                       ; $711f: $40
    ld b, h                                       ; $7120: $44
    inc c                                         ; $7121: $0c
    ld [$0404], sp                                ; $7122: $08 $04 $04
    nop                                           ; $7125: $00
    add e                                         ; $7126: $83
    dec b                                         ; $7127: $05
    inc bc                                        ; $7128: $03
    nop                                           ; $7129: $00
    ld [bc], a                                    ; $712a: $02
    jr nz, jr_0f3_70b2                            ; $712b: $20 $85

    ld d, b                                       ; $712d: $50
    nop                                           ; $712e: $00
    jr nz, jr_0f3_7136                            ; $712f: $20 $05

    inc bc                                        ; $7131: $03
    inc bc                                        ; $7132: $03
    nop                                           ; $7133: $00
    add a                                         ; $7134: $87
    add b                                         ; $7135: $80

jr_0f3_7136:
    ld [$4404], sp                                ; $7136: $08 $04 $44
    inc c                                         ; $7139: $0c

jr_0f3_713a:
    nop                                           ; $713a: $00
    ld b, b                                       ; $713b: $40
    ld [bc], a                                    ; $713c: $02
    add hl, bc                                    ; $713d: $09
    ld e, $00                                     ; $713e: $1e $00
    rst $38                                       ; $7140: $ff
    ld de, $f806                                  ; $7141: $11 $06 $f8
    add hl, bc                                    ; $7144: $09
    ld hl, sp+$09                                 ; $7145: $f8 $09
    ld hl, sp-$0b                                 ; $7147: $f8 $f5
    or $fc                                        ; $7149: $f6 $fc
    ld hl, sp+$03                                 ; $714b: $f8 $03
    ld b, $f7                                     ; $714d: $06 $f7
    ld b, $00                                     ; $714f: $06 $00
    ld b, $01                                     ; $7151: $06 $01
    inc bc                                        ; $7153: $03
    jr nc, jr_0f3_70db                            ; $7154: $30 $85

    jr z, jr_0f3_7170                             ; $7156: $28 $18

    inc d                                         ; $7158: $14
    nop                                           ; $7159: $00
    inc c                                         ; $715a: $0c
    ld [bc], a                                    ; $715b: $02
    nop                                           ; $715c: $00
    add c                                         ; $715d: $81
    ret nz                                        ; $715e: $c0

    ld [bc], a                                    ; $715f: $02
    ldh [$83], a                                  ; $7160: $e0 $83
    sub b                                         ; $7162: $90
    nop                                           ; $7163: $00
    jr nc, jr_0f3_716b                            ; $7164: $30 $05

    nop                                           ; $7166: $00
    add l                                         ; $7167: $85
    jr nc, @-$1e                                  ; $7168: $30 $e0

    sub c                                         ; $716a: $91

jr_0f3_716b:
    ret nz                                        ; $716b: $c0

jr_0f3_716c:
    ldh [$03], a                                  ; $716c: $e0 $03
    nop                                           ; $716e: $00
    add e                                         ; $716f: $83

jr_0f3_7170:
    inc c                                         ; $7170: $0c
    jr jr_0f3_7187                                ; $7171: $18 $14

    ld [bc], a                                    ; $7173: $02
    ld b, d                                       ; $7174: $42
    adc b                                         ; $7175: $88
    nop                                           ; $7176: $00
    ld h, [hl]                                    ; $7177: $66
    inc h                                         ; $7178: $24
    ld b, d                                       ; $7179: $42
    inc h                                         ; $717a: $24
    ld b, d                                       ; $717b: $42
    nop                                           ; $717c: $00
    inc h                                         ; $717d: $24
    rlca                                          ; $717e: $07
    nop                                           ; $717f: $00
    add h                                         ; $7180: $84
    ld bc, $2000                                  ; $7181: $01 $00 $20
    nop                                           ; $7184: $00
    ld [bc], a                                    ; $7185: $02
    ld [bc], a                                    ; $7186: $02

jr_0f3_7187:
    add e                                         ; $7187: $83
    dec b                                         ; $7188: $05
    nop                                           ; $7189: $00
    ld [bc], a                                    ; $718a: $02
    inc bc                                        ; $718b: $03
    nop                                           ; $718c: $00
    ld [bc], a                                    ; $718d: $02
    ld [$1481], sp                                ; $718e: $08 $81 $14
    inc bc                                        ; $7191: $03
    inc c                                         ; $7192: $0c
    add l                                         ; $7193: $85
    inc d                                         ; $7194: $14
    jr jr_0f3_71bf                                ; $7195: $18 $28

    nop                                           ; $7197: $00
    jr nc, jr_0f3_719c                            ; $7198: $30 $02

    nop                                           ; $719a: $00
    add c                                         ; $719b: $81

jr_0f3_719c:
    inc bc                                        ; $719c: $03
    ld [bc], a                                    ; $719d: $02
    rlca                                          ; $719e: $07
    add e                                         ; $719f: $83
    add hl, bc                                    ; $71a0: $09
    nop                                           ; $71a1: $00
    inc c                                         ; $71a2: $0c
    dec b                                         ; $71a3: $05
    nop                                           ; $71a4: $00
    add l                                         ; $71a5: $85
    inc c                                         ; $71a6: $0c
    rlca                                          ; $71a7: $07
    add hl, bc                                    ; $71a8: $09
    inc bc                                        ; $71a9: $03
    rlca                                          ; $71aa: $07
    inc bc                                        ; $71ab: $03
    nop                                           ; $71ac: $00
    add e                                         ; $71ad: $83
    jr nc, @+$1a                                  ; $71ae: $30 $18

    jr z, @+$05                                   ; $71b0: $28 $03

    nop                                           ; $71b2: $00
    add a                                         ; $71b3: $87
    ld bc, $a2c1                                  ; $71b4: $01 $c1 $a2
    pop bc                                        ; $71b7: $c1
    jp nz, $0300                                  ; $71b8: $c2 $00 $03

    ld [bc], a                                    ; $71bb: $02
    ld [bc], a                                    ; $71bc: $02
    dec d                                         ; $71bd: $15
    nop                                           ; $71be: $00

jr_0f3_71bf:
    adc c                                         ; $71bf: $89
    add b                                         ; $71c0: $80
    nop                                           ; $71c1: $00
    ld b, b                                       ; $71c2: $40
    ld b, c                                       ; $71c3: $41
    ld [hl+], a                                   ; $71c4: $22
    ld b, c                                       ; $71c5: $41
    ld hl, $6000                                  ; $71c6: $21 $00 $60
    ld [bc], a                                    ; $71c9: $02
    jr nz, jr_0f3_71e4                            ; $71ca: $20 $18

    nop                                           ; $71cc: $00
    inc b                                         ; $71cd: $04
    ld bc, $0018                                  ; $71ce: $01 $18 $00
    rst $38                                       ; $71d1: $ff
    ld de, $f806                                  ; $71d2: $11 $06 $f8
    add hl, bc                                    ; $71d5: $09
    ld hl, sp+$09                                 ; $71d6: $f8 $09
    rst $30                                       ; $71d8: $f7
    db $f4                                        ; $71d9: $f4
    push af                                       ; $71da: $f5
    db $fc                                        ; $71db: $fc
    rst $30                                       ; $71dc: $f7
    inc b                                         ; $71dd: $04
    dec b                                         ; $71de: $05
    or $05                                        ; $71df: $f6 $05
    cp $05                                        ; $71e1: $fe $05
    ld [bc], a                                    ; $71e3: $02

jr_0f3_71e4:
    inc bc                                        ; $71e4: $03
    jr nc, jr_0f3_716c                            ; $71e5: $30 $85

    inc l                                         ; $71e7: $2c
    inc c                                         ; $71e8: $0c
    ld [de], a                                    ; $71e9: $12
    nop                                           ; $71ea: $00
    ld c, $04                                     ; $71eb: $0e $04
    nop                                           ; $71ed: $00
    add [hl]                                      ; $71ee: $86
    ld h, b                                       ; $71ef: $60
    ld [hl], b                                    ; $71f0: $70
    or b                                          ; $71f1: $b0
    ret z                                         ; $71f2: $c8

    ld h, b                                       ; $71f3: $60
    ld [hl], b                                    ; $71f4: $70
    ld b, $00                                     ; $71f5: $06 $00
    add [hl]                                      ; $71f7: $86
    ld h, b                                       ; $71f8: $60
    ld [hl], c                                    ; $71f9: $71
    or b                                          ; $71fa: $b0
    ret z                                         ; $71fb: $c8

    ld h, b                                       ; $71fc: $60
    ld [hl], b                                    ; $71fd: $70
    ld [bc], a                                    ; $71fe: $02
    nop                                           ; $71ff: $00
    ld [bc], a                                    ; $7200: $02
    ld b, d                                       ; $7201: $42
    adc b                                         ; $7202: $88
    and l                                         ; $7203: $a5
    rst $20                                       ; $7204: $e7
    jp Jump_0f3_42a5                              ; $7205: $c3 $a5 $42


jr_0f3_7208:
    and l                                         ; $7208: $a5
    nop                                           ; $7209: $00
    ld h, [hl]                                    ; $720a: $66
    dec b                                         ; $720b: $05
    nop                                           ; $720c: $00
    add d                                         ; $720d: $82
    ld b, b                                       ; $720e: $40
    nop                                           ; $720f: $00
    ld [bc], a                                    ; $7210: $02
    ld bc, $0283                                  ; $7211: $01 $83 $02
    nop                                           ; $7214: $00
    ld bc, $0003                                  ; $7215: $01 $03 $00
    add d                                         ; $7218: $82
    ld [bc], a                                    ; $7219: $02
    nop                                           ; $721a: $00
    ld [bc], a                                    ; $721b: $02
    add b                                         ; $721c: $80
    add e                                         ; $721d: $83
    ld b, b                                       ; $721e: $40
    nop                                           ; $721f: $00
    add b                                         ; $7220: $80
    inc bc                                        ; $7221: $03
    inc c                                         ; $7222: $0c
    add l                                         ; $7223: $85
    inc [hl]                                      ; $7224: $34
    jr nc, @+$4a                                  ; $7225: $30 $48

    nop                                           ; $7227: $00
    ld [hl], b                                    ; $7228: $70
    inc b                                         ; $7229: $04
    nop                                           ; $722a: $00
    add [hl]                                      ; $722b: $86
    ld b, $0e                                     ; $722c: $06 $0e
    dec c                                         ; $722e: $0d
    sub e                                         ; $722f: $93
    ld b, $0e                                     ; $7230: $06 $0e
    ld b, $00                                     ; $7232: $06 $00
    add [hl]                                      ; $7234: $86
    ld b, $0e                                     ; $7235: $06 $0e
    dec c                                         ; $7237: $0d
    inc de                                        ; $7238: $13
    ld b, $0e                                     ; $7239: $06 $0e
    rlca                                          ; $723b: $07
    nop                                           ; $723c: $00
    adc b                                         ; $723d: $88
    jr c, @+$32                                   ; $723e: $38 $30

    ld c, b                                       ; $7240: $48
    ret nz                                        ; $7241: $c0

    or c                                          ; $7242: $b1
    pop bc                                        ; $7243: $c1
    jp nz, Jump_000_0203                          ; $7244: $c2 $03 $02

    ld [bc], a                                    ; $7247: $02
    add c                                         ; $7248: $81
    inc bc                                        ; $7249: $03
    ld [bc], a                                    ; $724a: $02
    ld bc, $000f                                  ; $724b: $01 $0f $00
    add c                                         ; $724e: $81
    jr nz, @+$05                                  ; $724f: $20 $03

    nop                                           ; $7251: $00
    adc b                                         ; $7252: $88
    ld bc, $0100                                  ; $7253: $01 $00 $01
    nop                                           ; $7256: $00
    sbc b                                         ; $7257: $98
    ld [$0c94], sp                                ; $7258: $08 $94 $0c
    ld [bc], a                                    ; $725b: $02
    sub h                                         ; $725c: $94
    add c                                         ; $725d: $81
    sbc h                                         ; $725e: $9c
    ld [bc], a                                    ; $725f: $02
    ld [$0013], sp                                ; $7260: $08 $13 $00
    ld [bc], a                                    ; $7263: $02
    inc c                                         ; $7264: $0c
    add e                                         ; $7265: $83
    ld [bc], a                                    ; $7266: $02
    inc bc                                        ; $7267: $03
    dec c                                         ; $7268: $0d
    ld [bc], a                                    ; $7269: $02
    inc bc                                        ; $726a: $03
    inc d                                         ; $726b: $14
    nop                                           ; $726c: $00
    rst $38                                       ; $726d: $ff
    ld de, $f806                                  ; $726e: $11 $06 $f8
    add hl, bc                                    ; $7271: $09
    ld hl, sp+$09                                 ; $7272: $f8 $09
    rst $30                                       ; $7274: $f7
    di                                            ; $7275: $f3
    db $f4                                        ; $7276: $f4
    db $fc                                        ; $7277: $fc
    rst $30                                       ; $7278: $f7
    dec b                                         ; $7279: $05
    inc b                                         ; $727a: $04
    or $04                                        ; $727b: $f6 $04
    db $fc                                        ; $727d: $fc
    inc b                                         ; $727e: $04
    ld [bc], a                                    ; $727f: $02

Call_0f3_7280:
    add c                                         ; $7280: $81
    db $10                                        ; $7281: $10
    ld [bc], a                                    ; $7282: $02
    jr jr_0f3_7208                                ; $7283: $18 $83

    inc d                                         ; $7285: $14
    nop                                           ; $7286: $00
    inc c                                         ; $7287: $0c
    dec b                                         ; $7288: $05
    nop                                           ; $7289: $00
    add l                                         ; $728a: $85
    ld h, b                                       ; $728b: $60
    or b                                          ; $728c: $b0
    ret nz                                        ; $728d: $c0

    nop                                           ; $728e: $00
    ld h, b                                       ; $728f: $60
    add hl, bc                                    ; $7290: $09
    nop                                           ; $7291: $00
    add l                                         ; $7292: $85
    ld h, b                                       ; $7293: $60
    or b                                          ; $7294: $b0
    ret nz                                        ; $7295: $c0

    nop                                           ; $7296: $00
    ld h, b                                       ; $7297: $60
    ld [bc], a                                    ; $7298: $02
    nop                                           ; $7299: $00
    ld [bc], a                                    ; $729a: $02
    ld b, d                                       ; $729b: $42
    add l                                         ; $729c: $85
    and l                                         ; $729d: $a5
    rst $20                                       ; $729e: $e7
    ld b, d                                       ; $729f: $42
    and l                                         ; $72a0: $a5
    ld b, d                                       ; $72a1: $42
    ld [$0200], sp                                ; $72a2: $08 $00 $02
    ld b, b                                       ; $72a5: $40
    add l                                         ; $72a6: $85
    and b                                         ; $72a7: $a0
    nop                                           ; $72a8: $00
    ld b, b                                       ; $72a9: $40
    nop                                           ; $72aa: $00
    ld bc, $0009                                  ; $72ab: $01 $09 $00
    add d                                         ; $72ae: $82
    add b                                         ; $72af: $80
    ld [$1802], sp                                ; $72b0: $08 $02 $18
    add e                                         ; $72b3: $83
    jr z, jr_0f3_72b6                             ; $72b4: $28 $00

jr_0f3_72b6:
    jr nc, jr_0f3_72bd                            ; $72b6: $30 $05

    nop                                           ; $72b8: $00
    add l                                         ; $72b9: $85
    ld b, $0d                                     ; $72ba: $06 $0d
    inc bc                                        ; $72bc: $03

jr_0f3_72bd:
    nop                                           ; $72bd: $00
    ld b, $09                                     ; $72be: $06 $09
    nop                                           ; $72c0: $00
    add l                                         ; $72c1: $85
    ld b, $0d                                     ; $72c2: $06 $0d
    inc bc                                        ; $72c4: $03
    nop                                           ; $72c5: $00
    ld b, $0b                                     ; $72c6: $06 $0b
    nop                                           ; $72c8: $00
    add [hl]                                      ; $72c9: $86
    ld h, b                                       ; $72ca: $60
    ret nz                                        ; $72cb: $c0

    and b                                         ; $72cc: $a0
    add c                                         ; $72cd: $81
    ret nz                                        ; $72ce: $c0

    ld bc, $0202                                  ; $72cf: $01 $02 $02
    add c                                         ; $72d2: $81
    inc bc                                        ; $72d3: $03
    ld [bc], a                                    ; $72d4: $02
    ld bc, $0018                                  ; $72d5: $01 $18 $00
    add e                                         ; $72d8: $83
    ld [bc], a                                    ; $72d9: $02
    nop                                           ; $72da: $00
    ld [bc], a                                    ; $72db: $02
    ld [bc], a                                    ; $72dc: $02
    dec h                                         ; $72dd: $25
    add c                                         ; $72de: $81
    daa                                           ; $72df: $27
    ld [bc], a                                    ; $72e0: $02
    ld [bc], a                                    ; $72e1: $02
    dec d                                         ; $72e2: $15
    nop                                           ; $72e3: $00
    add l                                         ; $72e4: $85
    ld b, $03                                     ; $72e5: $06 $03
    dec b                                         ; $72e7: $05
    ld bc, $1203                                  ; $72e8: $01 $03 $12
    nop                                           ; $72eb: $00
    rst $38                                       ; $72ec: $ff
    rlca                                          ; $72ed: $07
    ld bc, $0ff2                                  ; $72ee: $01 $f2 $0f
    push af                                       ; $72f1: $f5
    ld b, $ff                                     ; $72f2: $06 $ff
    push af                                       ; $72f4: $f5
    add c                                         ; $72f5: $81
    nop                                           ; $72f6: $00
    ld [bc], a                                    ; $72f7: $02
    ld b, $83                                     ; $72f8: $06 $83
    add hl, bc                                    ; $72fa: $09
    nop                                           ; $72fb: $00
    ld b, $1a                                     ; $72fc: $06 $1a
    nop                                           ; $72fe: $00
    rst $38                                       ; $72ff: $ff
    add hl, bc                                    ; $7300: $09
    ld [bc], a                                    ; $7301: $02
    ld a, [c]                                     ; $7302: $f2
    rrca                                          ; $7303: $0f
    push af                                       ; $7304: $f5
    ld b, $ff                                     ; $7305: $06 $ff
    di                                            ; $7307: $f3
    rst $38                                       ; $7308: $ff
    db $f4                                        ; $7309: $f4
    add [hl]                                      ; $730a: $86
    inc b                                         ; $730b: $04
    ld a, [bc]                                    ; $730c: $0a
    cp [hl]                                       ; $730d: $be
    pop bc                                        ; $730e: $c1
    ld [de], a                                    ; $730f: $12
    ld c, $1c                                     ; $7310: $0e $1c
    nop                                           ; $7312: $00
    ld [bc], a                                    ; $7313: $02
    ld bc, $001c                                  ; $7314: $01 $1c $00
    rst $38                                       ; $7317: $ff
    add hl, bc                                    ; $7318: $09
    ld [bc], a                                    ; $7319: $02
    ld a, [c]                                     ; $731a: $f2
    rrca                                          ; $731b: $0f
    push af                                       ; $731c: $f5
    ld b, $fe                                     ; $731d: $06 $fe
    or $fe                                        ; $731f: $f6 $fe
    ei                                            ; $7321: $fb
    adc d                                         ; $7322: $8a
    inc l                                         ; $7323: $2c
    inc [hl]                                      ; $7324: $34
    ld b, $02                                     ; $7325: $06 $02
    cp a                                          ; $7327: $bf
    ret nz                                        ; $7328: $c0

    ld [bc], a                                    ; $7329: $02
    ld bc, $625e                                  ; $732a: $01 $5e $62
    jr jr_0f3_732f                                ; $732d: $18 $00

jr_0f3_732f:
    add h                                         ; $732f: $84
    ld [$1d18], sp                                ; $7330: $08 $18 $1d
    inc bc                                        ; $7333: $03
    ld [bc], a                                    ; $7334: $02
    ld [$0018], sp                                ; $7335: $08 $18 $00
    rst $38                                       ; $7338: $ff
    dec c                                         ; $7339: $0d
    inc b                                         ; $733a: $04
    ld a, [c]                                     ; $733b: $f2
    rrca                                          ; $733c: $0f
    push af                                       ; $733d: $f5
    ld b, $fd                                     ; $733e: $06 $fd
    jp hl                                         ; $7340: $e9


    db $fd                                        ; $7341: $fd
    pop af                                        ; $7342: $f1
    db $fd                                        ; $7343: $fd
    ld sp, hl                                     ; $7344: $f9
    db $fd                                        ; $7345: $fd
    ei                                            ; $7346: $fb
    add [hl]                                      ; $7347: $86
    ld d, $1a                                     ; $7348: $16 $1a
    inc bc                                        ; $734a: $03
    nop                                           ; $734b: $00
    or h                                          ; $734c: $b4
    jp z, $0002                                   ; $734d: $ca $02 $00

    add l                                         ; $7350: $85
    rlca                                          ; $7351: $07
    ld bc, $605c                                  ; $7352: $01 $5c $60
    ld bc, $0013                                  ; $7355: $01 $13 $00
    adc [hl]                                      ; $7358: $8e
    ld h, b                                       ; $7359: $60
    and b                                         ; $735a: $a0
    xor b                                         ; $735b: $a8

Call_0f3_735c:
    dec e                                         ; $735c: $1d
    ld c, $00                                     ; $735d: $0e $00
    ld c, c                                       ; $735f: $49
    jp c, RST_30                                  ; $7360: $da $30 $00

    ld h, e                                       ; $7363: $63
    jr nz, jr_0f3_73a8                            ; $7364: $20 $42

    adc $15                                       ; $7366: $ce $15
    nop                                           ; $7368: $00
    adc c                                         ; $7369: $89
    add b                                         ; $736a: $80
    jr z, @+$6c                                   ; $736b: $28 $6a

    sbc $21                                       ; $736d: $de $21
    add h                                         ; $736f: $84
    ld c, h                                       ; $7370: $4c
    adc b                                         ; $7371: $88
    sbc b                                         ; $7372: $98
    ld a, [de]                                    ; $7373: $1a
    nop                                           ; $7374: $00
    add d                                         ; $7375: $82
    ld bc, $1803                                  ; $7376: $01 $03 $18
    nop                                           ; $7379: $00
    rst $38                                       ; $737a: $ff
    dec c                                         ; $737b: $0d
    inc b                                         ; $737c: $04
    ld a, [c]                                     ; $737d: $f2
    rrca                                          ; $737e: $0f
    push af                                       ; $737f: $f5
    ld b, $fc                                     ; $7380: $06 $fc
    jp hl                                         ; $7382: $e9


    db $fc                                        ; $7383: $fc
    pop af                                        ; $7384: $f1
    db $fc                                        ; $7385: $fc
    ld sp, hl                                     ; $7386: $f9
    db $fc                                        ; $7387: $fc
    ld a, [$1486]                                 ; $7388: $fa $86 $14
    jr jr_0f3_7390                                ; $738b: $18 $03

    nop                                           ; $738d: $00
    ld e, l                                       ; $738e: $5d
    ld h, e                                       ; $738f: $63

jr_0f3_7390:
    inc bc                                        ; $7390: $03
    nop                                           ; $7391: $00
    adc c                                         ; $7392: $89
    ld bc, $000f                                  ; $7393: $01 $0f $00
    or h                                          ; $7396: $b4
    jp nz, Jump_000_0001                          ; $7397: $c2 $01 $00

    rla                                           ; $739a: $17
    add hl, de                                    ; $739b: $19
    ld c, $00                                     ; $739c: $0e $00
    adc d                                         ; $739e: $8a
    ret nz                                        ; $739f: $c0

    nop                                           ; $73a0: $00
    xor b                                         ; $73a1: $a8
    jr @+$05                                      ; $73a2: $18 $03

    inc b                                         ; $73a4: $04
    ld [$d310], sp                                ; $73a5: $08 $10 $d3

jr_0f3_73a8:
    inc [hl]                                      ; $73a8: $34
    ld [bc], a                                    ; $73a9: $02
    nop                                           ; $73aa: $00
    add h                                         ; $73ab: $84
    ld a, e                                       ; $73ac: $7b
    inc b                                         ; $73ad: $04
    ld b, b                                       ; $73ae: $40
    ret nz                                        ; $73af: $c0

    inc d                                         ; $73b0: $14
    nop                                           ; $73b1: $00
    adc d                                         ; $73b2: $8a
    ld b, b                                       ; $73b3: $40
    ret nz                                        ; $73b4: $c0

    dec [hl]                                      ; $73b5: $35
    ld d, e                                       ; $73b6: $53
    rst $18                                       ; $73b7: $df
    nop                                           ; $73b8: $00
    inc d                                         ; $73b9: $14
    inc c                                         ; $73ba: $0c
    ret nc                                        ; $73bb: $d0

    jr nc, jr_0f3_73d9                            ; $73bc: $30 $1b

    nop                                           ; $73be: $00
    add c                                         ; $73bf: $81
    ld bc, $0016                                  ; $73c0: $01 $16 $00
    rst $38                                       ; $73c3: $ff
    dec bc                                        ; $73c4: $0b
    inc bc                                        ; $73c5: $03
    ld a, [c]                                     ; $73c6: $f2
    rrca                                          ; $73c7: $0f
    push af                                       ; $73c8: $f5
    ld b, $fc                                     ; $73c9: $06 $fc
    db $eb                                        ; $73cb: $eb
    db $fc                                        ; $73cc: $fc
    di                                            ; $73cd: $f3
    db $fc                                        ; $73ce: $fc
    ld a, [$b888]                                 ; $73cf: $fa $88 $b8
    call nz, Call_000_0006                        ; $73d2: $c4 $06 $00
    dec b                                         ; $73d5: $05
    ld b, $58                                     ; $73d6: $06 $58
    ld h, h                                       ; $73d8: $64

jr_0f3_73d9:
    ld [bc], a                                    ; $73d9: $02
    nop                                           ; $73da: $00
    adc b                                         ; $73db: $88
    dec l                                         ; $73dc: $2d
    jr nc, jr_0f3_73e2                            ; $73dd: $30 $03

    ld bc, $0200                                  ; $73df: $01 $00 $02

jr_0f3_73e2:
    inc l                                         ; $73e2: $2c
    jr nc, jr_0f3_73f7                            ; $73e3: $30 $12

    nop                                           ; $73e5: $00
    adc h                                         ; $73e6: $8c
    add sp, $18                                   ; $73e7: $e8 $18
    dec e                                         ; $73e9: $1d
    inc bc                                        ; $73ea: $03
    ldh [rNR11], a                                ; $73eb: $e0 $11
    ld b, e                                       ; $73ed: $43
    call nz, Call_000_040c                        ; $73ee: $c4 $0c $04
    add sp, $18                                   ; $73f1: $e8 $18
    ld d, $00                                     ; $73f3: $16 $00
    add [hl]                                      ; $73f5: $86
    inc b                                         ; $73f6: $04

jr_0f3_73f7:
    inc c                                         ; $73f7: $0c
    ld a, l                                       ; $73f8: $7d
    inc bc                                        ; $73f9: $03
    jr z, jr_0f3_7464                             ; $73fa: $28 $68

    inc d                                         ; $73fc: $14
    nop                                           ; $73fd: $00
    rst $38                                       ; $73fe: $ff
    dec bc                                        ; $73ff: $0b
    inc bc                                        ; $7400: $03
    ld a, [c]                                     ; $7401: $f2
    rrca                                          ; $7402: $0f
    push af                                       ; $7403: $f5
    ld b, $fc                                     ; $7404: $06 $fc
    rst $20                                       ; $7406: $e7
    db $fc                                        ; $7407: $fc
    rst $28                                       ; $7408: $ef
    db $fc                                        ; $7409: $fc
    db $f4                                        ; $740a: $f4
    adc b                                         ; $740b: $88
    ld e, b                                       ; $740c: $58
    ld l, b                                       ; $740d: $68
    ld [$0305], sp                                ; $740e: $08 $05 $03
    nop                                           ; $7411: $00
    or h                                          ; $7412: $b4
    call z, $0002                                 ; $7413: $cc $02 $00
    add h                                         ; $7416: $84
    ld bc, $1700                                  ; $7417: $01 $00 $17
    add hl, de                                    ; $741a: $19
    inc d                                         ; $741b: $14
    nop                                           ; $741c: $00
    add h                                         ; $741d: $84
    ret nz                                        ; $741e: $c0

    nop                                           ; $741f: $00
    rra                                           ; $7420: $1f
    jr nz, jr_0f3_7425                            ; $7421: $20 $02

    nop                                           ; $7423: $00
    adc b                                         ; $7424: $88

jr_0f3_7425:
    ld [de], a                                    ; $7425: $12
    inc e                                         ; $7426: $1c
    add b                                         ; $7427: $80
    ld b, b                                       ; $7428: $40
    ld c, $01                                     ; $7429: $0e $01
    ld l, b                                       ; $742b: $68
    jr jr_0f3_7442                                ; $742c: $18 $14

    nop                                           ; $742e: $00
    add d                                         ; $742f: $82
    inc d                                         ; $7430: $14
    inc c                                         ; $7431: $0c
    ld [bc], a                                    ; $7432: $02
    nop                                           ; $7433: $00
    add h                                         ; $7434: $84
    inc bc                                        ; $7435: $03
    inc b                                         ; $7436: $04
    inc e                                         ; $7437: $1c
    nop                                           ; $7438: $00
    ld [bc], a                                    ; $7439: $02
    db $10                                        ; $743a: $10
    ld [de], a                                    ; $743b: $12
    nop                                           ; $743c: $00
    rst $38                                       ; $743d: $ff
    dec bc                                        ; $743e: $0b
    inc bc                                        ; $743f: $03
    ld a, [c]                                     ; $7440: $f2
    rrca                                          ; $7441: $0f

jr_0f3_7442:
    push af                                       ; $7442: $f5
    ld b, $fc                                     ; $7443: $06 $fc
    push hl                                       ; $7445: $e5
    db $fc                                        ; $7446: $fc
    db $ed                                        ; $7447: $ed
    db $fc                                        ; $7448: $fc
    rst $28                                       ; $7449: $ef
    add d                                         ; $744a: $82
    ld e, b                                       ; $744b: $58
    ld h, b                                       ; $744c: $60
    ld [bc], a                                    ; $744d: $02
    nop                                           ; $744e: $00
    add h                                         ; $744f: $84
    inc b                                         ; $7450: $04
    nop                                           ; $7451: $00
    or [hl]                                       ; $7452: $b6
    ret z                                         ; $7453: $c8

    inc b                                         ; $7454: $04
    nop                                           ; $7455: $00
    add h                                         ; $7456: $84
    ld e, d                                       ; $7457: $5a
    ld h, [hl]                                    ; $7458: $66
    ld bc, $1402                                  ; $7459: $01 $02 $14
    nop                                           ; $745c: $00
    adc b                                         ; $745d: $88
    inc c                                         ; $745e: $0c
    nop                                           ; $745f: $00
    jr nc, @+$0a                                  ; $7460: $30 $08

    inc bc                                        ; $7462: $03
    nop                                           ; $7463: $00

jr_0f3_7464:
    jr nc, jr_0f3_74c6                            ; $7464: $30 $60

    ld [bc], a                                    ; $7466: $02
    nop                                           ; $7467: $00
    add d                                         ; $7468: $82
    ldh [rNR10], a                                ; $7469: $e0 $10
    jr jr_0f3_746d                                ; $746b: $18 $00

jr_0f3_746d:
    add d                                         ; $746d: $82
    ld bc, $1603                                  ; $746e: $01 $03 $16
    nop                                           ; $7471: $00
    rst $38                                       ; $7472: $ff
    add hl, bc                                    ; $7473: $09
    ld [bc], a                                    ; $7474: $02
    ld a, [c]                                     ; $7475: $f2
    rrca                                          ; $7476: $0f
    push af                                       ; $7477: $f5
    ld b, $ff                                     ; $7478: $06 $ff
    db $fd                                        ; $747a: $fd
    rst $38                                       ; $747b: $ff
    cp $02                                        ; $747c: $fe $02
    inc e                                         ; $747e: $1c
    add [hl]                                      ; $747f: $86
    ld [hl], a                                    ; $7480: $77
    ld a, a                                       ; $7481: $7f
    reti                                          ; $7482: $d9


    rst $20                                       ; $7483: $e7
    xor d                                         ; $7484: $aa
    push de                                       ; $7485: $d5
    ld [bc], a                                    ; $7486: $02
    ld a, a                                       ; $7487: $7f
    ld a, [de]                                    ; $7488: $1a
    nop                                           ; $7489: $00
    inc b                                         ; $748a: $04
    ld bc, $0018                                  ; $748b: $01 $18 $00
    rst $38                                       ; $748e: $ff
    add hl, bc                                    ; $748f: $09
    ld [bc], a                                    ; $7490: $02
    ld a, [c]                                     ; $7491: $f2
    rrca                                          ; $7492: $0f
    push af                                       ; $7493: $f5
    ld b, $fb                                     ; $7494: $06 $fb
    ld a, [$01fb]                                 ; $7496: $fa $fb $01
    ld [bc], a                                    ; $7499: $02
    inc bc                                        ; $749a: $03
    ld [bc], a                                    ; $749b: $02
    rrca                                          ; $749c: $0f
    adc h                                         ; $749d: $8c
    ld a, [hl-]                                   ; $749e: $3a
    ccf                                           ; $749f: $3f
    ld [hl], l                                    ; $74a0: $75
    ld a, [hl]                                    ; $74a1: $7e
    ld h, c                                       ; $74a2: $61
    ld a, [hl]                                    ; $74a3: $7e
    rst $10                                       ; $74a4: $d7
    ld hl, sp-$77                                 ; $74a5: $f8 $89
    or $d2                                        ; $74a7: $f6 $d2
    rst $38                                       ; $74a9: $ff
    ld [bc], a                                    ; $74aa: $02
    ld a, a                                       ; $74ab: $7f
    ld c, $00                                     ; $74ac: $0e $00
    ld [bc], a                                    ; $74ae: $02
    ld b, b                                       ; $74af: $40
    ld [bc], a                                    ; $74b0: $02
    ld [hl], b                                    ; $74b1: $70
    adc h                                         ; $74b2: $8c
    ld e, h                                       ; $74b3: $5c
    ld a, h                                       ; $74b4: $7c
    ld c, $7e                                     ; $74b5: $0e $7e
    ld h, $5e                                     ; $74b7: $26 $5e
    ld c, e                                       ; $74b9: $4b
    ccf                                           ; $74ba: $3f
    dec h                                         ; $74bb: $25
    ld e, a                                       ; $74bc: $5f
    dec bc                                        ; $74bd: $0b
    ld a, a                                       ; $74be: $7f
    ld [bc], a                                    ; $74bf: $02
    ld a, [hl]                                    ; $74c0: $7e
    ld c, $00                                     ; $74c1: $0e $00
    rst $38                                       ; $74c3: $ff
    dec bc                                        ; $74c4: $0b
    inc bc                                        ; $74c5: $03

jr_0f3_74c6:
    ld a, [c]                                     ; $74c6: $f2
    rrca                                          ; $74c7: $0f
    push af                                       ; $74c8: $f5
    ld b, $f6                                     ; $74c9: $06 $f6
    or $f6                                        ; $74cb: $f6 $f6
    cp $f6                                        ; $74cd: $fe $f6
    dec b                                         ; $74cf: $05
    ld [bc], a                                    ; $74d0: $02
    nop                                           ; $74d1: $00
    ld [bc], a                                    ; $74d2: $02
    inc bc                                        ; $74d3: $03
    sub [hl]                                      ; $74d4: $96
    ld c, $0f                                     ; $74d5: $0e $0f
    dec e                                         ; $74d7: $1d
    rra                                           ; $74d8: $1f
    jr c, jr_0f3_751a                             ; $74d9: $38 $3f

    ld [hl], b                                    ; $74db: $70
    ld a, a                                       ; $74dc: $7f
    ld h, d                                       ; $74dd: $62
    ld a, l                                       ; $74de: $7d
    pop de                                        ; $74df: $d1
    cp $e0                                        ; $74e0: $fe $e0
    rst $38                                       ; $74e2: $ff
    db $d3                                        ; $74e3: $d3
    db $fc                                        ; $74e4: $fc
    db $e4                                        ; $74e5: $e4
    ei                                            ; $74e6: $fb
    ldh a, [rIE]                                  ; $74e7: $f0 $ff
    ld a, d                                       ; $74e9: $7a
    ld a, a                                       ; $74ea: $7f
    ld [bc], a                                    ; $74eb: $02
    rra                                           ; $74ec: $1f
    inc b                                         ; $74ed: $04
    nop                                           ; $74ee: $00
    ld [bc], a                                    ; $74ef: $02
    cp $02                                        ; $74f0: $fe $02
    rst $38                                       ; $74f2: $ff
    sub l                                         ; $74f3: $95
    xor d                                         ; $74f4: $aa
    rst $38                                       ; $74f5: $ff
    ld bc, $48ff                                  ; $74f6: $01 $ff $48
    or a                                          ; $74f9: $b7
    inc d                                         ; $74fa: $14
    db $eb                                        ; $74fb: $eb
    pop af                                        ; $74fc: $f1
    ld c, $12                                     ; $74fd: $0e $12
    db $ed                                        ; $74ff: $ed
    dec [hl]                                      ; $7500: $35
    jp z, $da25                                   ; $7501: $ca $25 $da

    db $fc                                        ; $7504: $fc
    inc bc                                        ; $7505: $03
    ld l, c                                       ; $7506: $69
    sub a                                         ; $7507: $97
    ld [bc], a                                    ; $7508: $02
    inc bc                                        ; $7509: $03
    rst $38                                       ; $750a: $ff
    ld b, $00                                     ; $750b: $06 $00
    ld [bc], a                                    ; $750d: $02
    ld b, b                                       ; $750e: $40
    ld [bc], a                                    ; $750f: $02
    ld [hl], b                                    ; $7510: $70
    sub h                                         ; $7511: $94
    jr c, jr_0f3_758c                             ; $7512: $38 $78

    inc e                                         ; $7514: $1c
    ld a, h                                       ; $7515: $7c
    ld l, $7e                                     ; $7516: $2e $7e
    ld d, $7e                                     ; $7518: $16 $7e

jr_0f3_751a:
    inc bc                                        ; $751a: $03
    ld a, a                                       ; $751b: $7f
    rlca                                          ; $751c: $07
    ld a, a                                       ; $751d: $7f
    ld c, e                                       ; $751e: $4b
    ccf                                           ; $751f: $3f
    daa                                           ; $7520: $27
    ld e, a                                       ; $7521: $5f
    rrca                                          ; $7522: $0f
    ld a, a                                       ; $7523: $7f
    ld e, [hl]                                    ; $7524: $5e
    ld a, [hl]                                    ; $7525: $7e
    ld [bc], a                                    ; $7526: $02
    ld a, b                                       ; $7527: $78
    inc b                                         ; $7528: $04
    nop                                           ; $7529: $00
    rst $38                                       ; $752a: $ff
    ld de, $f206                                  ; $752b: $11 $06 $f2
    rrca                                          ; $752e: $0f
    push af                                       ; $752f: $f5
    ld b, $f4                                     ; $7530: $06 $f4
    db $f4                                        ; $7532: $f4
    di                                            ; $7533: $f3
    db $fc                                        ; $7534: $fc
    di                                            ; $7535: $f3
    inc b                                         ; $7536: $04
    ld hl, sp+$06                                 ; $7537: $f8 $06
    inc bc                                        ; $7539: $03
    ld hl, sp+$03                                 ; $753a: $f8 $03
    cp $02                                        ; $753c: $fe $02
    inc bc                                        ; $753e: $03
    sbc [hl]                                      ; $753f: $9e
    ld c, $0f                                     ; $7540: $0e $0f
    inc e                                         ; $7542: $1c
    rra                                           ; $7543: $1f
    dec sp                                        ; $7544: $3b
    ld a, $70                                     ; $7545: $3e $70
    ld a, a                                       ; $7547: $7f
    ld l, b                                       ; $7548: $68
    ld a, a                                       ; $7549: $7f
    pop de                                        ; $754a: $d1
    cp $e4                                        ; $754b: $fe $e4
    rst $38                                       ; $754d: $ff
    ret nz                                        ; $754e: $c0

    rst $38                                       ; $754f: $ff
    jp hl                                         ; $7550: $e9


    or $c4                                        ; $7551: $f6 $c4
    ei                                            ; $7553: $fb

jr_0f3_7554:
    db $e3                                        ; $7554: $e3
    db $fc                                        ; $7555: $fc
    call z, Call_0f3_60f3                         ; $7556: $cc $f3 $60
    ld a, a                                       ; $7559: $7f
    ld [hl], h                                    ; $755a: $74
    ld a, a                                       ; $755b: $7f
    ld a, $3f                                     ; $755c: $3e $3f
    inc b                                         ; $755e: $04
    rst $38                                       ; $755f: $ff
    sbc h                                         ; $7560: $9c
    xor d                                         ; $7561: $aa
    rst $38                                       ; $7562: $ff
    ld b, b                                       ; $7563: $40
    rst $38                                       ; $7564: $ff
    inc bc                                        ; $7565: $03
    db $fc                                        ; $7566: $fc
    call nz, $243b                                ; $7567: $c4 $3b $24
    db $db                                        ; $756a: $db
    jr jr_0f3_7554                                ; $756b: $18 $e7

    ld a, [c]                                     ; $756d: $f2
    dec c                                         ; $756e: $0d
    jr @-$17                                      ; $756f: $18 $e7

    add hl, bc                                    ; $7571: $09
    or $19                                        ; $7572: $f6 $19
    and $8b                                       ; $7574: $e6 $8b
    ld [hl], h                                    ; $7576: $74
    ld a, [hl]                                    ; $7577: $7e
    add c                                         ; $7578: $81
    rra                                           ; $7579: $1f
    ldh [rNR34], a                                ; $757a: $e0 $1e
    pop hl                                        ; $757c: $e1
    ld [bc], a                                    ; $757d: $02
    ret nz                                        ; $757e: $c0

jr_0f3_757f:
    ld [bc], a                                    ; $757f: $02
    ldh a, [$9c]                                  ; $7580: $f0 $9c
    cp h                                          ; $7582: $bc
    db $fc                                        ; $7583: $fc
    ld c, [hl]                                    ; $7584: $4e
    cp $17                                        ; $7585: $fe $17
    rst $38                                       ; $7587: $ff
    inc bc                                        ; $7588: $03
    rst $38                                       ; $7589: $ff
    dec h                                         ; $758a: $25
    rst $18                                       ; $758b: $df

jr_0f3_758c:
    ld b, d                                       ; $758c: $42
    cp a                                          ; $758d: $bf
    ld c, b                                       ; $758e: $48
    or a                                          ; $758f: $b7
    add c                                         ; $7590: $81
    ld a, a                                       ; $7591: $7f
    call nz, $293b                                ; $7592: $c4 $3b $29
    rst $10                                       ; $7595: $d7
    jr jr_0f3_757f                                ; $7596: $18 $e7

    ld [bc], a                                    ; $7598: $02
    rst $38                                       ; $7599: $ff
    pop bc                                        ; $759a: $c1
    ccf                                           ; $759b: $3f
    dec hl                                        ; $759c: $2b
    rst $18                                       ; $759d: $df
    inc b                                         ; $759e: $04
    ld [bc], a                                    ; $759f: $02
    ld c, $03                                     ; $75a0: $0e $03
    inc b                                         ; $75a2: $04
    ld [bc], a                                    ; $75a3: $02
    add d                                         ; $75a4: $82
    ld a, h                                       ; $75a5: $7c
    db $fc                                        ; $75a6: $fc
    ld [bc], a                                    ; $75a7: $02
    ldh a, [rTMA]                                 ; $75a8: $f0 $06
    nop                                           ; $75aa: $00
    add d                                         ; $75ab: $82
    ld [$020f], sp                                ; $75ac: $08 $0f $02
    rst $38                                       ; $75af: $ff
    inc e                                         ; $75b0: $1c
    nop                                           ; $75b1: $00
    add c                                         ; $75b2: $81
    ld [bc], a                                    ; $75b3: $02
    inc bc                                        ; $75b4: $03
    ccf                                           ; $75b5: $3f
    inc e                                         ; $75b6: $1c
    nop                                           ; $75b7: $00
    rst $38                                       ; $75b8: $ff
    ld de, $f206                                  ; $75b9: $11 $06 $f2
    rrca                                          ; $75bc: $0f
    push af                                       ; $75bd: $f5
    ld b, $f4                                     ; $75be: $06 $f4
    db $f4                                        ; $75c0: $f4
    di                                            ; $75c1: $f3
    db $fc                                        ; $75c2: $fc
    di                                            ; $75c3: $f3
    inc b                                         ; $75c4: $04
    ld hl, sp+$06                                 ; $75c5: $f8 $06
    inc bc                                        ; $75c7: $03
    ld hl, sp+$03                                 ; $75c8: $f8 $03

jr_0f3_75ca:
    cp $02                                        ; $75ca: $fe $02
    inc bc                                        ; $75cc: $03
    sbc [hl]                                      ; $75cd: $9e
    ld c, $0f                                     ; $75ce: $0e $0f
    dec e                                         ; $75d0: $1d
    rra                                           ; $75d1: $1f
    jr c, jr_0f3_7613                             ; $75d2: $38 $3f

    ld [hl], h                                    ; $75d4: $74
    ld a, a                                       ; $75d5: $7f
    ld h, b                                       ; $75d6: $60
    ld a, a                                       ; $75d7: $7f
    ret nc                                        ; $75d8: $d0

    rst $38                                       ; $75d9: $ff
    add $f9                                       ; $75da: $c6 $f9
    jp hl                                         ; $75dc: $e9


    or $c1                                        ; $75dd: $f6 $c1
    cp $e4                                        ; $75df: $fe $e4
    ei                                            ; $75e1: $fb
    ret nc                                        ; $75e2: $d0

    rst $38                                       ; $75e3: $ff
    db $e4                                        ; $75e4: $e4
    ei                                            ; $75e5: $fb
    ld l, e                                       ; $75e6: $6b
    ld a, h                                       ; $75e7: $7c
    ld [hl], b                                    ; $75e8: $70
    ld a, a                                       ; $75e9: $7f
    dec a                                         ; $75ea: $3d
    ccf                                           ; $75eb: $3f
    inc b                                         ; $75ec: $04
    rst $38                                       ; $75ed: $ff
    sbc h                                         ; $75ee: $9c
    ld d, d                                       ; $75ef: $52
    rst $38                                       ; $75f0: $ff
    jr nz, @+$01                                  ; $75f1: $20 $ff

    inc b                                         ; $75f3: $04
    ei                                            ; $75f4: $fb
    adc b                                         ; $75f5: $88
    ld [hl], a                                    ; $75f6: $77
    ld c, b                                       ; $75f7: $48
    or a                                          ; $75f8: $b7
    jr nc, jr_0f3_75ca                            ; $75f9: $30 $cf

    add hl, bc                                    ; $75fb: $09
    or $49                                        ; $75fc: $f6 $49
    or [hl]                                       ; $75fe: $b6
    ld [de], a                                    ; $75ff: $12
    db $ed                                        ; $7600: $ed
    jp nc, $342d                                  ; $7601: $d2 $2d $34

    rr a                                          ; $7604: $cb $1f
    ldh [$3e], a                                  ; $7606: $e0 $3e
    pop bc                                        ; $7608: $c1
    sbc $21                                       ; $7609: $de $21
    ld [bc], a                                    ; $760b: $02
    ret nz                                        ; $760c: $c0

    ld [bc], a                                    ; $760d: $02
    ldh a, [$9c]                                  ; $760e: $f0 $9c
    sbc h                                         ; $7610: $9c
    db $fc                                        ; $7611: $fc
    ld c, [hl]                                    ; $7612: $4e

jr_0f3_7613:
    cp $17                                        ; $7613: $fe $17
    rst $38                                       ; $7615: $ff
    adc e                                         ; $7616: $8b
    ld a, a                                       ; $7617: $7f
    sub c                                         ; $7618: $91
    ld a, a                                       ; $7619: $7f
    add d                                         ; $761a: $82
    ld a, a                                       ; $761b: $7f
    add hl, de                                    ; $761c: $19
    rst $20                                       ; $761d: $e7
    ret nc                                        ; $761e: $d0

    cpl                                           ; $761f: $2f
    ld hl, $44df                                  ; $7620: $21 $df $44
    cp e                                          ; $7623: $bb
    ld [$92f7], sp                                ; $7624: $08 $f7 $92
    ld l, a                                       ; $7627: $6f
    ld d, c                                       ; $7628: $51
    xor a                                         ; $7629: $af
    dec hl                                        ; $762a: $2b
    rst $18                                       ; $762b: $df
    inc b                                         ; $762c: $04
    ld [bc], a                                    ; $762d: $02
    ld c, $03                                     ; $762e: $0e $03
    inc b                                         ; $7630: $04
    ld [bc], a                                    ; $7631: $02
    add d                                         ; $7632: $82
    ld e, h                                       ; $7633: $5c
    db $fc                                        ; $7634: $fc
    ld [bc], a                                    ; $7635: $02
    ldh a, [rTAC]                                 ; $7636: $f0 $07
    nop                                           ; $7638: $00
    add c                                         ; $7639: $81
    rrca                                          ; $763a: $0f
    ld [bc], a                                    ; $763b: $02
    rst $38                                       ; $763c: $ff
    inc e                                         ; $763d: $1c
    nop                                           ; $763e: $00
    add c                                         ; $763f: $81
    ld [bc], a                                    ; $7640: $02
    inc bc                                        ; $7641: $03
    ccf                                           ; $7642: $3f
    inc e                                         ; $7643: $1c
    nop                                           ; $7644: $00
    rst $38                                       ; $7645: $ff
    ld de, $f206                                  ; $7646: $11 $06 $f2
    rrca                                          ; $7649: $0f
    push af                                       ; $764a: $f5
    ld b, $f4                                     ; $764b: $06 $f4
    db $f4                                        ; $764d: $f4
    di                                            ; $764e: $f3
    db $fc                                        ; $764f: $fc
    di                                            ; $7650: $f3
    inc b                                         ; $7651: $04
    ld hl, sp+$06                                 ; $7652: $f8 $06
    inc bc                                        ; $7654: $03
    ld hl, sp+$03                                 ; $7655: $f8 $03
    cp $02                                        ; $7657: $fe $02
    inc bc                                        ; $7659: $03
    sbc [hl]                                      ; $765a: $9e
    ld c, $0f                                     ; $765b: $0e $0f
    dec e                                         ; $765d: $1d
    rra                                           ; $765e: $1f
    jr c, @+$41                                   ; $765f: $38 $3f

    ld [hl], h                                    ; $7661: $74
    ld a, a                                       ; $7662: $7f
    ld h, b                                       ; $7663: $60
    ld a, a                                       ; $7664: $7f
    call nc, $e0fb                                ; $7665: $d4 $fb $e0
    rst $38                                       ; $7668: $ff

jr_0f3_7669:
    jp $ecfc                                      ; $7669: $c3 $fc $ec


    di                                            ; $766c: $f3
    ret nz                                        ; $766d: $c0

    rst $38                                       ; $766e: $ff
    pop hl                                        ; $766f: $e1
    cp $d3                                        ; $7670: $fe $d3
    db $fc                                        ; $7672: $fc
    ld h, h                                       ; $7673: $64
    ld a, e                                       ; $7674: $7b
    ld [hl], b                                    ; $7675: $70
    ld a, a                                       ; $7676: $7f
    ld a, [hl-]                                   ; $7677: $3a
    ccf                                           ; $7678: $3f
    inc b                                         ; $7679: $04
    rst $38                                       ; $767a: $ff
    sbc h                                         ; $767b: $9c
    xor c                                         ; $767c: $a9
    rst $38                                       ; $767d: $ff
    ld b, d                                       ; $767e: $42
    db $fd                                        ; $767f: $fd
    jr jr_0f3_7669                                ; $7680: $18 $e7

    add l                                         ; $7682: $85
    ld a, d                                       ; $7683: $7a
    call nz, Call_000_353b                        ; $7684: $c4 $3b $35
    jp z, $f609                                   ; $7687: $ca $09 $f6

    adc c                                         ; $768a: $89
    halt                                          ; $768b: $76
    ld d, d                                       ; $768c: $52
    xor l                                         ; $768d: $ad
    ld d, d                                       ; $768e: $52
    xor l                                         ; $768f: $ad
    inc [hl]                                      ; $7690: $34
    rr a                                          ; $7691: $cb $1f
    ldh [$fe], a                                  ; $7693: $e0 $fe
    ld bc, $f10e                                  ; $7695: $01 $0e $f1
    ld [bc], a                                    ; $7698: $02
    ret nz                                        ; $7699: $c0

    ld [bc], a                                    ; $769a: $02
    ldh a, [$9c]                                  ; $769b: $f0 $9c
    ld e, h                                       ; $769d: $5c
    db $fc                                        ; $769e: $fc
    ld l, $fe                                     ; $769f: $2e $fe
    rlca                                          ; $76a1: $07
    rst $38                                       ; $76a2: $ff
    dec hl                                        ; $76a3: $2b
    rst $18                                       ; $76a4: $df
    push bc                                       ; $76a5: $c5
    ccf                                           ; $76a6: $3f
    ld [$01f7], sp                                ; $76a7: $08 $f7 $01
    rst $38                                       ; $76aa: $ff
    db $e4                                        ; $76ab: $e4
    dec de                                        ; $76ac: $1b
    jr @-$17                                      ; $76ad: $18 $e7

    ld b, c                                       ; $76af: $41
    cp a                                          ; $76b0: $bf
    ld h, d                                       ; $76b1: $62
    sbc a                                         ; $76b2: $9f
    sub c                                         ; $76b3: $91
    ld l, a                                       ; $76b4: $6f
    add hl, bc                                    ; $76b5: $09
    rst $30                                       ; $76b6: $f7
    inc hl                                        ; $76b7: $23
    rst $38                                       ; $76b8: $ff
    inc b                                         ; $76b9: $04
    ld [bc], a                                    ; $76ba: $02
    ld c, $03                                     ; $76bb: $0e $03
    inc b                                         ; $76bd: $04
    ld [bc], a                                    ; $76be: $02
    add d                                         ; $76bf: $82
    ld e, h                                       ; $76c0: $5c
    db $fc                                        ; $76c1: $fc
    ld [bc], a                                    ; $76c2: $02
    ldh a, [rTMA]                                 ; $76c3: $f0 $06
    nop                                           ; $76c5: $00
    add d                                         ; $76c6: $82
    add hl, bc                                    ; $76c7: $09
    rrca                                          ; $76c8: $0f
    ld [bc], a                                    ; $76c9: $02
    rst $38                                       ; $76ca: $ff
    inc e                                         ; $76cb: $1c
    nop                                           ; $76cc: $00
    add c                                         ; $76cd: $81
    ld bc, $3f03                                  ; $76ce: $01 $03 $3f
    inc e                                         ; $76d1: $1c
    nop                                           ; $76d2: $00
    rst $38                                       ; $76d3: $ff
    rrca                                          ; $76d4: $0f
    dec b                                         ; $76d5: $05
    ld a, [c]                                     ; $76d6: $f2
    rrca                                          ; $76d7: $0f
    push af                                       ; $76d8: $f5
    ld b, $f2                                     ; $76d9: $06 $f2
    pop af                                        ; $76db: $f1
    db $eb                                        ; $76dc: $eb
    ld sp, hl                                     ; $76dd: $f9
    ei                                            ; $76de: $fb
    ld sp, hl                                     ; $76df: $f9
    rst $28                                       ; $76e0: $ef
    ld bc, $09f3                                  ; $76e1: $01 $f3 $09
    inc b                                         ; $76e4: $04
    ld bc, $0302                                  ; $76e5: $01 $02 $03
    inc b                                         ; $76e8: $04
    dec bc                                        ; $76e9: $0b
    ld [bc], a                                    ; $76ea: $02
    rrca                                          ; $76eb: $0f
    sub b                                         ; $76ec: $90
    ld c, $0f                                     ; $76ed: $0e $0f
    inc c                                         ; $76ef: $0c
    rrca                                          ; $76f0: $0f
    ld a, [de]                                    ; $76f1: $1a
    rra                                           ; $76f2: $1f
    inc e                                         ; $76f3: $1c

jr_0f3_76f4:
    rra                                           ; $76f4: $1f
    jr jr_0f3_7716                                ; $76f5: $18 $1f

    inc e                                         ; $76f7: $1c
    ld e, $18                                     ; $76f8: $1e $18
    inc e                                         ; $76fa: $1c
    jr jr_0f3_7717                                ; $76fb: $18 $1a

    ld [bc], a                                    ; $76fd: $02
    db $10                                        ; $76fe: $10
    ld [bc], a                                    ; $76ff: $02
    nop                                           ; $7700: $00
    ld [$0202], sp                                ; $7701: $08 $02 $02
    add d                                         ; $7704: $82
    inc b                                         ; $7705: $04
    add [hl]                                      ; $7706: $86
    ld [bc], a                                    ; $7707: $02
    sub l                                         ; $7708: $95
    ld [bc], a                                    ; $7709: $02
    cp a                                          ; $770a: $bf
    ld [bc], a                                    ; $770b: $02
    rst $38                                       ; $770c: $ff
    sub h                                         ; $770d: $94
    push de                                       ; $770e: $d5
    rst $38                                       ; $770f: $ff
    xor b                                         ; $7710: $a8
    rst $38                                       ; $7711: $ff

jr_0f3_7712:
    ld bc, $a2fe                                  ; $7712: $01 $fe $a2
    db $dd                                        ; $7715: $dd

jr_0f3_7716:
    ld [hl+], a                                   ; $7716: $22

jr_0f3_7717:
    db $dd                                        ; $7717: $dd
    add hl, de                                    ; $7718: $19
    and $c4                                       ; $7719: $e6 $c4
    ld a, [hl+]                                   ; $771b: $2a
    nop                                           ; $771c: $00
    ld d, l                                       ; $771d: $55
    nop                                           ; $771e: $00
    add $00                                       ; $771f: $c6 $00
    add d                                         ; $7721: $82
    jr jr_0f3_7724                                ; $7722: $18 $00

jr_0f3_7724:
    ld [bc], a                                    ; $7724: $02
    ld bc, $1104                                  ; $7725: $01 $04 $11
    ld [bc], a                                    ; $7728: $02
    ld sp, $fd02                                  ; $7729: $31 $02 $fd
    ld [bc], a                                    ; $772c: $02
    rst $38                                       ; $772d: $ff
    sub h                                         ; $772e: $94
    dec hl                                        ; $772f: $2b
    rst $38                                       ; $7730: $ff
    dec b                                         ; $7731: $05
    rst $38                                       ; $7732: $ff
    nop                                           ; $7733: $00
    rst $38                                       ; $7734: $ff
    ld h, c                                       ; $7735: $61
    sbc a                                         ; $7736: $9f
    ld [hl+], a                                   ; $7737: $22
    db $dd                                        ; $7738: $dd
    inc d                                         ; $7739: $14
    db $eb                                        ; $773a: $eb
    inc h                                         ; $773b: $24
    db $d3                                        ; $773c: $d3
    nop                                           ; $773d: $00
    ld e, e                                       ; $773e: $5b
    nop                                           ; $773f: $00
    ld [$1100], sp                                ; $7740: $08 $00 $11
    ld [bc], a                                    ; $7743: $02
    add b                                         ; $7744: $80
    inc b                                         ; $7745: $04
    sub b                                         ; $7746: $90
    ld [bc], a                                    ; $7747: $02
    ret nc                                        ; $7748: $d0

    ld [bc], a                                    ; $7749: $02
    ldh a, [$90]                                  ; $774a: $f0 $90
    ld [hl], b                                    ; $774c: $70
    ldh a, [$b0]                                  ; $774d: $f0 $b0
    ldh a, [rNR23]                                ; $774f: $f0 $18
    ld hl, sp+$38                                 ; $7751: $f8 $38
    ld hl, sp+$18                                 ; $7753: $f8 $18
    ld hl, sp+$18                                 ; $7755: $f8 $18
    ld a, b                                       ; $7757: $78
    jr c, jr_0f3_7712                             ; $7758: $38 $b8

    jr jr_0f3_76f4                                ; $775a: $18 $98

    ld [bc], a                                    ; $775c: $02
    ld [$0004], sp                                ; $775d: $08 $04 $00
    rst $38                                       ; $7760: $ff
    ld de, $f206                                  ; $7761: $11 $06 $f2
    rrca                                          ; $7764: $0f
    push af                                       ; $7765: $f5
    ld b, $f1                                     ; $7766: $06 $f1
    ldh a, [$e7]                                  ; $7768: $f0 $e7
    ld hl, sp-$09                                 ; $776a: $f8 $f7
    ld hl, sp-$15                                 ; $776c: $f8 $eb
    nop                                           ; $776e: $00
    ld [$fa08], a                                 ; $776f: $ea $08 $fa
    ld [$0402], sp                                ; $7772: $08 $02 $04
    ld [bc], a                                    ; $7775: $02
    nop                                           ; $7776: $00
    ld b, $05                                     ; $7777: $06 $05
    ld [bc], a                                    ; $7779: $02
    rrca                                          ; $777a: $0f
    ld [bc], a                                    ; $777b: $02
    rlca                                          ; $777c: $07
    adc b                                         ; $777d: $88
    ld b, $07                                     ; $777e: $06 $07
    dec c                                         ; $7780: $0d
    rrca                                          ; $7781: $0f
    ld c, $0f                                     ; $7782: $0e $0f
    inc c                                         ; $7784: $0c
    ld c, $02                                     ; $7785: $0e $02
    inc b                                         ; $7787: $04
    ld [bc], a                                    ; $7788: $02

jr_0f3_7789:
    inc c                                         ; $7789: $0c
    inc b                                         ; $778a: $04
    ld [$0002], sp                                ; $778b: $08 $02 $00
    ld [bc], a                                    ; $778e: $02
    ld bc, $0002                                  ; $778f: $01 $02 $00
    ld [bc], a                                    ; $7792: $02
    ld bc, $4102                                  ; $7793: $01 $02 $41
    ld [bc], a                                    ; $7796: $02
    ld bc, $4102                                  ; $7797: $01 $02 $41
    ld [bc], a                                    ; $779a: $02
    ld b, e                                       ; $779b: $43
    ld [bc], a                                    ; $779c: $02
    ld b, c                                       ; $779d: $41
    ld [bc], a                                    ; $779e: $02
    ld h, e                                       ; $779f: $63
    ld [bc], a                                    ; $77a0: $02
    ld c, e                                       ; $77a1: $4b
    ld [bc], a                                    ; $77a2: $02
    db $eb                                        ; $77a3: $eb
    sub h                                         ; $77a4: $94
    cp $ff                                        ; $77a5: $fe $ff
    db $fc                                        ; $77a7: $fc
    rst $38                                       ; $77a8: $ff
    xor b                                         ; $77a9: $a8
    rst $38                                       ; $77aa: $ff
    sub h                                         ; $77ab: $94
    rst $38                                       ; $77ac: $ff
    ld bc, $50fe                                  ; $77ad: $01 $fe $50
    db $eb                                        ; $77b0: $eb
    jr nz, jr_0f3_7789                            ; $77b1: $20 $d6

    nop                                           ; $77b3: $00
    ldh [rP1], a                                  ; $77b4: $e0 $00
    xor b                                         ; $77b6: $a8
    nop                                           ; $77b7: $00
    add b                                         ; $77b8: $80
    ld d, $00                                     ; $77b9: $16 $00
    ld [bc], a                                    ; $77bb: $02
    ld [$0002], sp                                ; $77bc: $08 $02 $00
    ld [bc], a                                    ; $77bf: $02
    ld [$1802], sp                                ; $77c0: $08 $02 $18
    ld [bc], a                                    ; $77c3: $02
    adc b                                         ; $77c4: $88
    ld [bc], a                                    ; $77c5: $02
    adc c                                         ; $77c6: $89
    ld [bc], a                                    ; $77c7: $02
    cp b                                          ; $77c8: $b8
    ld [bc], a                                    ; $77c9: $02
    db $fc                                        ; $77ca: $fc
    sub b                                         ; $77cb: $90
    rst $28                                       ; $77cc: $ef
    rst $38                                       ; $77cd: $ff
    add l                                         ; $77ce: $85
    rst $38                                       ; $77cf: $ff
    ld [de], a                                    ; $77d0: $12
    rst $28                                       ; $77d1: $ef
    db $10                                        ; $77d2: $10
    rst $28                                       ; $77d3: $ef
    jr nz, jr_0f3_77e9                            ; $77d4: $20 $13

    ld [bc], a                                    ; $77d6: $02
    and l                                         ; $77d7: $a5
    nop                                           ; $77d8: $00
    ld bc, $0100                                  ; $77d9: $01 $00 $01
    ld [bc], a                                    ; $77dc: $02
    add b                                         ; $77dd: $80
    ld [bc], a                                    ; $77de: $02
    nop                                           ; $77df: $00
    ld b, $80                                     ; $77e0: $06 $80
    ld [bc], a                                    ; $77e2: $02
    adc b                                         ; $77e3: $88
    inc b                                         ; $77e4: $04
    add b                                         ; $77e5: $80
    inc b                                         ; $77e6: $04
    ret z                                         ; $77e7: $c8

    sub b                                         ; $77e8: $90

jr_0f3_77e9:
    ld c, b                                       ; $77e9: $48
    ret z                                         ; $77ea: $c8

    ld l, h                                       ; $77eb: $6c
    db $ec                                        ; $77ec: $ec
    ld a, b                                       ; $77ed: $78
    ld hl, sp-$48                                 ; $77ee: $f8 $b8
    ld hl, sp+$58                                 ; $77f0: $f8 $58
    ld hl, sp+$0c                                 ; $77f2: $f8 $0c
    db $fc                                        ; $77f4: $fc
    inc e                                         ; $77f5: $1c
    inc a                                         ; $77f6: $3c
    ld [$0458], sp                                ; $77f7: $08 $58 $04
    inc c                                         ; $77fa: $0c
    inc b                                         ; $77fb: $04
    inc b                                         ; $77fc: $04
    inc d                                         ; $77fd: $14
    nop                                           ; $77fe: $00
    rst $38                                       ; $77ff: $ff
    rrca                                          ; $7800: $0f
    dec b                                         ; $7801: $05
    ld a, [c]                                     ; $7802: $f2
    rrca                                          ; $7803: $0f
    push af                                       ; $7804: $f5
    ld b, $e6                                     ; $7805: $06 $e6
    ld hl, sp-$17                                 ; $7807: $f8 $e9
    nop                                           ; $7809: $00

jr_0f3_780a:
    pop af                                        ; $780a: $f1
    inc bc                                        ; $780b: $03
    or $f7                                        ; $780c: $f6 $f7
    or $f8                                        ; $780e: $f6 $f8
    ld [bc], a                                    ; $7810: $02
    ld bc, $0002                                  ; $7811: $01 $02 $00
    ld [bc], a                                    ; $7814: $02
    ld bc, $2102                                  ; $7815: $01 $02 $21
    ld [bc], a                                    ; $7818: $02
    ld bc, $2102                                  ; $7819: $01 $02 $21
    ld [bc], a                                    ; $781c: $02
    inc hl                                        ; $781d: $23
    ld [bc], a                                    ; $781e: $02
    ld hl, $3302                                  ; $781f: $21 $02 $33
    ld [bc], a                                    ; $7822: $02
    dec hl                                        ; $7823: $2b
    adc h                                         ; $7824: $8c
    ld a, d                                       ; $7825: $7a
    ld a, e                                       ; $7826: $7b
    rra                                           ; $7827: $1f
    ccf                                           ; $7828: $3f
    cp $ff                                        ; $7829: $fe $ff
    jp z, $d4ff                                   ; $782b: $ca $ff $d4

    rst $38                                       ; $782e: $ff
    add b                                         ; $782f: $80
    or $02                                        ; $7830: $f6 $02
    ld bc, $0802                                  ; $7832: $01 $02 $08
    ld [bc], a                                    ; $7835: $02
    ld bc, $0902                                  ; $7836: $01 $02 $09
    ld [bc], a                                    ; $7839: $02
    add hl, de                                    ; $783a: $19
    ld [bc], a                                    ; $783b: $02
    adc c                                         ; $783c: $89
    ld [bc], a                                    ; $783d: $02
    adc e                                         ; $783e: $8b
    ld [bc], a                                    ; $783f: $02
    cp c                                          ; $7840: $b9
    ld [bc], a                                    ; $7841: $02
    db $fd                                        ; $7842: $fd
    adc [hl]                                      ; $7843: $8e
    or $ff                                        ; $7844: $f6 $ff
    sub h                                         ; $7846: $94
    rst $38                                       ; $7847: $ff
    ld [bc], a                                    ; $7848: $02
    cp a                                          ; $7849: $bf
    nop                                           ; $784a: $00
    xor a                                         ; $784b: $af
    nop                                           ; $784c: $00
    ld sp, $0300                                  ; $784d: $31 $00 $03
    nop                                           ; $7850: $00
    ld bc, $0404                                  ; $7851: $01 $04 $04
    inc b                                         ; $7854: $04
    ld b, $86                                     ; $7855: $06 $86
    ld [bc], a                                    ; $7857: $02
    ld b, $05                                     ; $7858: $06 $05
    rlca                                          ; $785a: $07
    ld bc, $0205                                  ; $785b: $01 $05 $02
    nop                                           ; $785e: $00
    ld [bc], a                                    ; $785f: $02
    ld bc, $000e                                  ; $7860: $01 $0e $00
    add [hl]                                      ; $7863: $86
    and b                                         ; $7864: $a0
    jp hl                                         ; $7865: $e9


    add b                                         ; $7866: $80
    add sp, $00                                   ; $7867: $e8 $00
    jr nz, jr_0f3_786d                            ; $7869: $20 $02

    add b                                         ; $786b: $80
    add hl, de                                    ; $786c: $19

jr_0f3_786d:
    nop                                           ; $786d: $00
    add c                                         ; $786e: $81
    ld bc, $001e                                  ; $786f: $01 $1e $00
    rst $38                                       ; $7872: $ff
    add hl, bc                                    ; $7873: $09
    ld [bc], a                                    ; $7874: $02
    ld a, [c]                                     ; $7875: $f2
    rrca                                          ; $7876: $0f
    push af                                       ; $7877: $f5
    ld b, $e3                                     ; $7878: $06 $e3
    db $fd                                        ; $787a: $fd
    di                                            ; $787b: $f3
    db $fd                                        ; $787c: $fd
    ld [bc], a                                    ; $787d: $02
    db $10                                        ; $787e: $10
    ld [bc], a                                    ; $787f: $02
    nop                                           ; $7880: $00
    ld b, $10                                     ; $7881: $06 $10
    ld [bc], a                                    ; $7883: $02
    ld [de], a                                    ; $7884: $12
    ld [bc], a                                    ; $7885: $02
    jr nc, jr_0f3_780a                            ; $7886: $30 $82

    ld a, [hl+]                                   ; $7888: $2a
    ld a, [hl-]                                   ; $7889: $3a
    ld [bc], a                                    ; $788a: $02
    ld a, $92                                     ; $788b: $3e $92
    ld a, [hl+]                                   ; $788d: $2a
    ld a, [hl-]                                   ; $788e: $3a
    ld a, [hl+]                                   ; $788f: $2a
    ld a, [hl-]                                   ; $7890: $3a
    ld c, a                                       ; $7891: $4f
    ld a, a                                       ; $7892: $7f
    ld b, [hl]                                    ; $7893: $46
    ld a, [hl]                                    ; $7894: $7e
    ld c, d                                       ; $7895: $4a
    ld a, a                                       ; $7896: $7f
    ld [de], a                                    ; $7897: $12
    cp $80                                        ; $7898: $fe $80
    or $00                                        ; $789a: $f6 $00
    ld d, l                                       ; $789c: $55
    nop                                           ; $789d: $00
    ld b, d                                       ; $789e: $42
    inc e                                         ; $789f: $1c
    nop                                           ; $78a0: $00
    rst $38                                       ; $78a1: $ff
    rlca                                          ; $78a2: $07
    ld bc, $0af7                                  ; $78a3: $01 $f7 $0a
    ld hl, sp+$08                                 ; $78a6: $f8 $08
    nop                                           ; $78a8: $00
    ld bc, $0081                                  ; $78a9: $01 $81 $00
    ld [bc], a                                    ; $78ac: $02
    ld b, $83                                     ; $78ad: $06 $83
    add hl, bc                                    ; $78af: $09
    nop                                           ; $78b0: $00
    ld b, $1a                                     ; $78b1: $06 $1a
    nop                                           ; $78b3: $00

jr_0f3_78b4:
    rst $38                                       ; $78b4: $ff
    rlca                                          ; $78b5: $07
    ld bc, $0af7                                  ; $78b6: $01 $f7 $0a
    ld hl, sp+$08                                 ; $78b9: $f8 $08
    nop                                           ; $78bb: $00
    nop                                           ; $78bc: $00
    add [hl]                                      ; $78bd: $86
    nop                                           ; $78be: $00
    ld a, h                                       ; $78bf: $7c
    ld a, c                                       ; $78c0: $79
    add a                                         ; $78c1: $87
    inc b                                         ; $78c2: $04
    inc a                                         ; $78c3: $3c
    ld a, [de]                                    ; $78c4: $1a
    nop                                           ; $78c5: $00
    rst $38                                       ; $78c6: $ff
    add hl, bc                                    ; $78c7: $09
    ld [bc], a                                    ; $78c8: $02
    rst $30                                       ; $78c9: $f7
    ld a, [bc]                                    ; $78ca: $0a
    ld hl, sp+$08                                 ; $78cb: $f8 $08
    rst $38                                       ; $78cd: $ff
    db $fc                                        ; $78ce: $fc
    rst $38                                       ; $78cf: $ff
    ld bc, $708a                                  ; $78d0: $01 $8a $70
    adc b                                         ; $78d3: $88
    ld [bc], a                                    ; $78d4: $02
    inc b                                         ; $78d5: $04
    dec sp                                        ; $78d6: $3b
    ld b, b                                       ; $78d7: $40
    ld b, $05                                     ; $78d8: $06 $05
    ld [hl], b                                    ; $78da: $70
    adc d                                         ; $78db: $8a
    add hl, de                                    ; $78dc: $19
    nop                                           ; $78dd: $00
    add l                                         ; $78de: $85
    jr jr_0f3_78fa                                ; $78df: $18 $19

    rlca                                          ; $78e1: $07
    ld [$1818], sp                                ; $78e2: $08 $18 $18
    nop                                           ; $78e5: $00
    rst $38                                       ; $78e6: $ff
    dec c                                         ; $78e7: $0d
    inc b                                         ; $78e8: $04
    rst $30                                       ; $78e9: $f7
    ld a, [bc]                                    ; $78ea: $0a
    ld hl, sp+$08                                 ; $78eb: $f8 $08
    cp $f0                                        ; $78ed: $fe $f0
    cp $f8                                        ; $78ef: $fe $f8
    cp $00                                        ; $78f1: $fe $00
    cp $01                                        ; $78f3: $fe $01
    adc [hl]                                      ; $78f5: $8e
    jr jr_0f3_791d                                ; $78f6: $18 $25

    rlca                                          ; $78f8: $07
    inc b                                         ; $78f9: $04

jr_0f3_78fa:
    ld l, b                                       ; $78fa: $68
    sub [hl]                                      ; $78fb: $96
    nop                                           ; $78fc: $00
    ld bc, $021e                                  ; $78fd: $01 $1e $02
    inc sp                                        ; $7900: $33
    ld b, b                                       ; $7901: $40
    ld b, $08                                     ; $7902: $06 $08
    ld [de], a                                    ; $7904: $12
    nop                                           ; $7905: $00
    adc h                                         ; $7906: $8c
    ldh [rNR10], a                                ; $7907: $e0 $10
    ld d, $19                                     ; $7909: $16 $19
    inc a                                         ; $790b: $3c
    nop                                           ; $790c: $00
    db $d3                                        ; $790d: $d3
    inc [hl]                                      ; $790e: $34
    ld h, c                                       ; $790f: $61
    add b                                         ; $7910: $80
    ld d, [hl]                                    ; $7911: $56
    ret z                                         ; $7912: $c8

    jr jr_0f3_7915                                ; $7913: $18 $00

jr_0f3_7915:
    adc b                                         ; $7915: $88
    ld d, b                                       ; $7916: $50
    sbc h                                         ; $7917: $9c
    cp h                                          ; $7918: $bc
    ld b, e                                       ; $7919: $43
    jr z, jr_0f3_78b4                             ; $791a: $28 $98

    nop                                           ; $791c: $00

jr_0f3_791d:
    jr nz, jr_0f3_7939                            ; $791d: $20 $1a

    nop                                           ; $791f: $00
    ld [bc], a                                    ; $7920: $02
    ld bc, $0018                                  ; $7921: $01 $18 $00
    rst $38                                       ; $7924: $ff
    dec c                                         ; $7925: $0d
    inc b                                         ; $7926: $04
    rst $30                                       ; $7927: $f7
    ld a, [bc]                                    ; $7928: $0a
    ld hl, sp+$08                                 ; $7929: $f8 $08
    db $fd                                        ; $792b: $fd
    db $ed                                        ; $792c: $ed
    db $fd                                        ; $792d: $fd
    push af                                       ; $792e: $f5
    db $fd                                        ; $792f: $fd
    db $fd                                        ; $7930: $fd
    db $fd                                        ; $7931: $fd
    cp $86                                        ; $7932: $fe $86
    jr jr_0f3_795b                                ; $7934: $18 $25

    inc bc                                        ; $7936: $03
    nop                                           ; $7937: $00
    ld l, b                                       ; $7938: $68

jr_0f3_7939:
    sub [hl]                                      ; $7939: $96
    inc bc                                        ; $793a: $03
    nop                                           ; $793b: $00
    adc c                                         ; $793c: $89
    ld bc, $041c                                  ; $793d: $01 $1c $04
    inc [hl]                                      ; $7940: $34
    ld b, b                                       ; $7941: $40
    inc bc                                        ; $7942: $03
    nop                                           ; $7943: $00
    rlca                                          ; $7944: $07
    add hl, bc                                    ; $7945: $09
    ld c, $00                                     ; $7946: $0e $00
    adc d                                         ; $7948: $8a
    ret nz                                        ; $7949: $c0

    nop                                           ; $794a: $00
    xor b                                         ; $794b: $a8
    sbc b                                         ; $794c: $98
    dec bc                                        ; $794d: $0b
    inc b                                         ; $794e: $04
    inc a                                         ; $794f: $3c
    nop                                           ; $7950: $00
    pop de                                        ; $7951: $d1
    ld [hl], $02                                  ; $7952: $36 $02
    nop                                           ; $7954: $00
    add h                                         ; $7955: $84
    ld a, e                                       ; $7956: $7b
    add h                                         ; $7957: $84
    nop                                           ; $7958: $00
    add b                                         ; $7959: $80
    dec d                                         ; $795a: $15

jr_0f3_795b:
    nop                                           ; $795b: $00
    adc c                                         ; $795c: $89
    add b                                         ; $795d: $80
    ld hl, $de47                                  ; $795e: $21 $47 $de
    ld bc, $2c10                                  ; $7961: $01 $10 $2c
    adc b                                         ; $7964: $88
    ld e, b                                       ; $7965: $58
    dec de                                        ; $7966: $1b
    nop                                           ; $7967: $00
    add c                                         ; $7968: $81
    ld bc, $0016                                  ; $7969: $01 $16 $00
    rst $38                                       ; $796c: $ff
    dec bc                                        ; $796d: $0b
    inc bc                                        ; $796e: $03
    rst $30                                       ; $796f: $f7
    ld a, [bc]                                    ; $7970: $0a
    ld hl, sp+$08                                 ; $7971: $f8 $08
    db $fd                                        ; $7973: $fd
    db $ed                                        ; $7974: $ed
    db $fd                                        ; $7975: $fd
    push af                                       ; $7976: $f5
    db $fd                                        ; $7977: $fd
    db $fd                                        ; $7978: $fd
    add [hl]                                      ; $7979: $86
    ld l, b                                       ; $797a: $68
    sub [hl]                                      ; $797b: $96
    inc bc                                        ; $797c: $03
    nop                                           ; $797d: $00
    ld a, [de]                                    ; $797e: $1a
    daa                                           ; $797f: $27
    inc b                                         ; $7980: $04
    nop                                           ; $7981: $00
    add a                                         ; $7982: $87
    dec c                                         ; $7983: $0d
    ld [de], a                                    ; $7984: $12
    ld b, $01                                     ; $7985: $06 $01
    ld l, h                                       ; $7987: $6c
    add l                                         ; $7988: $85
    db $10                                        ; $7989: $10
    ld de, $8e00                                  ; $798a: $11 $00 $8e
    jr nz, jr_0f3_799f                            ; $798d: $20 $10

    call nc, Call_000_0e0c                        ; $798f: $d4 $0c $0e
    ld bc, $0870                                  ; $7992: $01 $70 $08
    add e                                         ; $7995: $83
    ld b, h                                       ; $7996: $44
    add [hl]                                      ; $7997: $86
    add c                                         ; $7998: $81
    ldh a, [$08]                                  ; $7999: $f0 $08
    ld d, $00                                     ; $799b: $16 $00
    adc b                                         ; $799d: $88
    add b                                         ; $799e: $80

jr_0f3_799f:
    adc h                                         ; $799f: $8c
    ld a, h                                       ; $79a0: $7c
    add e                                         ; $79a1: $83
    xor b                                         ; $79a2: $a8
    ld e, b                                       ; $79a3: $58
    nop                                           ; $79a4: $00
    jr nz, jr_0f3_79b9                            ; $79a5: $20 $12

    nop                                           ; $79a7: $00
    rst $38                                       ; $79a8: $ff
    dec c                                         ; $79a9: $0d
    inc b                                         ; $79aa: $04
    rst $30                                       ; $79ab: $f7
    ld a, [bc]                                    ; $79ac: $0a
    ld hl, sp+$08                                 ; $79ad: $f8 $08
    db $fd                                        ; $79af: $fd
    ld [$f2fd], a                                 ; $79b0: $ea $fd $f2
    db $fd                                        ; $79b3: $fd
    ld a, [$fbfd]                                 ; $79b4: $fa $fd $fb
    adc b                                         ; $79b7: $88
    ld l, h                                       ; $79b8: $6c

jr_0f3_79b9:
    sub h                                         ; $79b9: $94
    nop                                           ; $79ba: $00
    ld b, $03                                     ; $79bb: $06 $03
    nop                                           ; $79bd: $00
    jr jr_0f3_79e5                                ; $79be: $18 $25

    inc b                                         ; $79c0: $04
    nop                                           ; $79c1: $00
    add l                                         ; $79c2: $85
    dec c                                         ; $79c3: $0d
    ld [de], a                                    ; $79c4: $12
    ld l, b                                       ; $79c5: $68
    add c                                         ; $79c6: $81
    db $10                                        ; $79c7: $10
    ld de, $8600                                  ; $79c8: $11 $00 $86
    db $10                                        ; $79cb: $10

jr_0f3_79cc:
    ld [$062b], sp                                ; $79cc: $08 $2b $06
    add $01                                       ; $79cf: $c6 $01
    ld [bc], a                                    ; $79d1: $02
    nop                                           ; $79d2: $00
    add [hl]                                      ; $79d3: $86
    ret nz                                        ; $79d4: $c0

    ld hl, $8087                                  ; $79d5: $21 $87 $80
    ldh a, [$08]                                  ; $79d8: $f0 $08
    inc d                                         ; $79da: $14
    nop                                           ; $79db: $00
    adc d                                         ; $79dc: $8a
    ret nz                                        ; $79dd: $c0

    jr nz, jr_0f3_79e1                            ; $79de: $20 $01

    inc bc                                        ; $79e0: $03

jr_0f3_79e1:
    rra                                           ; $79e1: $1f
    jr nz, jr_0f3_79cc                            ; $79e2: $20 $e8

    inc d                                         ; $79e4: $14

jr_0f3_79e5:
    ld b, b                                       ; $79e5: $40
    ret nz                                        ; $79e6: $c0

    dec de                                        ; $79e7: $1b
    nop                                           ; $79e8: $00
    add c                                         ; $79e9: $81
    ld bc, $0016                                  ; $79ea: $01 $16 $00
    rst $38                                       ; $79ed: $ff
    dec bc                                        ; $79ee: $0b
    inc bc                                        ; $79ef: $03
    rst $30                                       ; $79f0: $f7
    ld a, [bc]                                    ; $79f1: $0a
    ld hl, sp+$08                                 ; $79f2: $f8 $08
    db $fd                                        ; $79f4: $fd
    jp hl                                         ; $79f5: $e9


    db $fd                                        ; $79f6: $fd
    pop af                                        ; $79f7: $f1
    db $fd                                        ; $79f8: $fd
    push af                                       ; $79f9: $f5
    adc b                                         ; $79fa: $88
    ld l, h                                       ; $79fb: $6c
    sub h                                         ; $79fc: $94
    nop                                           ; $79fd: $00
    ld b, $03                                     ; $79fe: $06 $03
    nop                                           ; $7a00: $00
    jr @+$27                                      ; $7a01: $18 $25

    inc b                                         ; $7a03: $04
    nop                                           ; $7a04: $00
    add l                                         ; $7a05: $85
    dec c                                         ; $7a06: $0d
    ld [de], a                                    ; $7a07: $12
    ld l, h                                       ; $7a08: $6c
    add l                                         ; $7a09: $85
    db $10                                        ; $7a0a: $10
    ld [de], a                                    ; $7a0b: $12
    nop                                           ; $7a0c: $00
    adc c                                         ; $7a0d: $89
    jr nz, jr_0f3_7a37                            ; $7a0e: $20 $27

    db $10                                        ; $7a10: $10
    ret c                                         ; $7a11: $d8

    inc b                                         ; $7a12: $04
    nop                                           ; $7a13: $00
    ld bc, $21ce                                  ; $7a14: $01 $ce $21
    ld [bc], a                                    ; $7a17: $02
    add b                                         ; $7a18: $80
    add d                                         ; $7a19: $82
    ldh a, [$08]                                  ; $7a1a: $f0 $08
    dec d                                         ; $7a1c: $15
    nop                                           ; $7a1d: $00
    add c                                         ; $7a1e: $81
    ld [$0002], sp                                ; $7a1f: $08 $02 $00
    add d                                         ; $7a22: $82
    ld a, [bc]                                    ; $7a23: $0a
    dec b                                         ; $7a24: $05
    ld [bc], a                                    ; $7a25: $02
    ld [$0014], sp                                ; $7a26: $08 $14 $00
    rst $38                                       ; $7a29: $ff
    dec bc                                        ; $7a2a: $0b
    inc bc                                        ; $7a2b: $03
    rst $30                                       ; $7a2c: $f7
    ld a, [bc]                                    ; $7a2d: $0a
    ld hl, sp+$08                                 ; $7a2e: $f8 $08
    ld c, $f7                                     ; $7a30: $0e $f7
    ld c, $fb                                     ; $7a32: $0e $fb
    ld c, $03                                     ; $7a34: $0e $03
    adc b                                         ; $7a36: $88

jr_0f3_7a37:
    ld b, b                                       ; $7a37: $40
    ld h, b                                       ; $7a38: $60
    and b                                         ; $7a39: $a0
    ret nc                                        ; $7a3a: $d0

    and b                                         ; $7a3b: $a0
    ret nc                                        ; $7a3c: $d0

    ld b, b                                       ; $7a3d: $40
    ld h, b                                       ; $7a3e: $60
    jr jr_0f3_7a41                                ; $7a3f: $18 $00

jr_0f3_7a41:
    adc b                                         ; $7a41: $88
    inc b                                         ; $7a42: $04
    ld b, $0a                                     ; $7a43: $06 $0a
    dec c                                         ; $7a45: $0d
    ld a, [bc]                                    ; $7a46: $0a
    dec c                                         ; $7a47: $0d
    inc b                                         ; $7a48: $04
    ld b, $18                                     ; $7a49: $06 $18
    nop                                           ; $7a4b: $00
    adc b                                         ; $7a4c: $88
    inc b                                         ; $7a4d: $04
    ld b, $0a                                     ; $7a4e: $06 $0a
    dec c                                         ; $7a50: $0d
    ld a, [bc]                                    ; $7a51: $0a
    dec c                                         ; $7a52: $0d
    inc b                                         ; $7a53: $04
    ld b, $18                                     ; $7a54: $06 $18
    nop                                           ; $7a56: $00
    rst $38                                       ; $7a57: $ff
    dec bc                                        ; $7a58: $0b
    inc bc                                        ; $7a59: $03
    rst $30                                       ; $7a5a: $f7
    ld a, [bc]                                    ; $7a5b: $0a
    ld hl, sp+$08                                 ; $7a5c: $f8 $08
    ld a, [bc]                                    ; $7a5e: $0a
    rst $30                                       ; $7a5f: $f7
    ld a, [bc]                                    ; $7a60: $0a
    ei                                            ; $7a61: $fb
    ld a, [bc]                                    ; $7a62: $0a
    inc bc                                        ; $7a63: $03
    inc b                                         ; $7a64: $04
    nop                                           ; $7a65: $00
    adc b                                         ; $7a66: $88
    ld b, b                                       ; $7a67: $40
    ld h, b                                       ; $7a68: $60
    and b                                         ; $7a69: $a0
    ret nc                                        ; $7a6a: $d0

    and b                                         ; $7a6b: $a0
    ret nc                                        ; $7a6c: $d0

    ld b, b                                       ; $7a6d: $40
    ld h, b                                       ; $7a6e: $60
    inc d                                         ; $7a6f: $14
    nop                                           ; $7a70: $00
    adc b                                         ; $7a71: $88
    inc b                                         ; $7a72: $04
    ld b, $0a                                     ; $7a73: $06 $0a
    dec c                                         ; $7a75: $0d
    ld a, [bc]                                    ; $7a76: $0a
    dec c                                         ; $7a77: $0d
    inc b                                         ; $7a78: $04
    ld b, $1c                                     ; $7a79: $06 $1c
    nop                                           ; $7a7b: $00
    adc b                                         ; $7a7c: $88
    inc b                                         ; $7a7d: $04
    ld b, $0a                                     ; $7a7e: $06 $0a
    dec c                                         ; $7a80: $0d
    ld a, [bc]                                    ; $7a81: $0a
    dec c                                         ; $7a82: $0d
    inc b                                         ; $7a83: $04
    ld b, $14                                     ; $7a84: $06 $14
    nop                                           ; $7a86: $00
    rst $38                                       ; $7a87: $ff
    dec bc                                        ; $7a88: $0b
    inc bc                                        ; $7a89: $03
    rst $30                                       ; $7a8a: $f7
    ld a, [bc]                                    ; $7a8b: $0a
    ld hl, sp+$08                                 ; $7a8c: $f8 $08
    ld bc, $01f7                                  ; $7a8e: $01 $f7 $01
    ei                                            ; $7a91: $fb
    ld bc, $0803                                  ; $7a92: $01 $03 $08
    nop                                           ; $7a95: $00
    adc b                                         ; $7a96: $88
    ld b, b                                       ; $7a97: $40
    ld h, b                                       ; $7a98: $60
    and b                                         ; $7a99: $a0
    ret nc                                        ; $7a9a: $d0

    and b                                         ; $7a9b: $a0
    ret nc                                        ; $7a9c: $d0

    ld b, b                                       ; $7a9d: $40
    ld h, b                                       ; $7a9e: $60
    stop                                          ; $7a9f: $10 $00
    adc b                                         ; $7aa1: $88
    inc b                                         ; $7aa2: $04
    ld b, $0a                                     ; $7aa3: $06 $0a
    dec c                                         ; $7aa5: $0d
    ld a, [bc]                                    ; $7aa6: $0a
    dec c                                         ; $7aa7: $0d
    inc b                                         ; $7aa8: $04
    ld b, $20                                     ; $7aa9: $06 $20
    nop                                           ; $7aab: $00
    adc b                                         ; $7aac: $88
    inc b                                         ; $7aad: $04
    ld b, $0a                                     ; $7aae: $06 $0a
    dec c                                         ; $7ab0: $0d
    ld a, [bc]                                    ; $7ab1: $0a
    dec c                                         ; $7ab2: $0d
    inc b                                         ; $7ab3: $04
    ld b, $10                                     ; $7ab4: $06 $10
    nop                                           ; $7ab6: $00
    rst $38                                       ; $7ab7: $ff
    ld de, $f706                                  ; $7ab8: $11 $06 $f7
    ld a, [bc]                                    ; $7abb: $0a
    ld hl, sp+$08                                 ; $7abc: $f8 $08
    ld a, [$f9f8]                                 ; $7abe: $fa $f8 $f9
    nop                                           ; $7ac1: $00
    rst $38                                       ; $7ac2: $ff
    ld [bc], a                                    ; $7ac3: $02
    add hl, bc                                    ; $7ac4: $09
    rst $30                                       ; $7ac5: $f7
    add hl, bc                                    ; $7ac6: $09
    ei                                            ; $7ac7: $fb
    add hl, bc                                    ; $7ac8: $09
    inc bc                                        ; $7ac9: $03
    inc b                                         ; $7aca: $04
    ld bc, $0006                                  ; $7acb: $01 $06 $00
    adc b                                         ; $7ace: $88
    ld b, b                                       ; $7acf: $40
    ld h, b                                       ; $7ad0: $60
    and b                                         ; $7ad1: $a0
    ret nc                                        ; $7ad2: $d0

    and b                                         ; $7ad3: $a0
    ret nc                                        ; $7ad4: $d0

    ld b, b                                       ; $7ad5: $40
    ld h, b                                       ; $7ad6: $60
    ld c, $00                                     ; $7ad7: $0e $00
    adc b                                         ; $7ad9: $88
    add b                                         ; $7ada: $80
    ret nz                                        ; $7adb: $c0

    ld b, b                                       ; $7adc: $40
    and b                                         ; $7add: $a0
    ld b, b                                       ; $7ade: $40
    and b                                         ; $7adf: $a0
    add b                                         ; $7ae0: $80
    ret nz                                        ; $7ae1: $c0

    inc b                                         ; $7ae2: $04
    nop                                           ; $7ae3: $00
    ld [bc], a                                    ; $7ae4: $02
    ld bc, $0284                                  ; $7ae5: $01 $84 $02
    inc bc                                        ; $7ae8: $03
    ld [bc], a                                    ; $7ae9: $02
    inc bc                                        ; $7aea: $03
    ld [bc], a                                    ; $7aeb: $02
    ld bc, $000d                                  ; $7aec: $01 $0d $00
    ld [bc], a                                    ; $7aef: $02
    ld [bc], a                                    ; $7af0: $02
    add l                                         ; $7af1: $85
    ld bc, $0102                                  ; $7af2: $01 $02 $01
    nop                                           ; $7af5: $00
    ld [bc], a                                    ; $7af6: $02
    ld d, $00                                     ; $7af7: $16 $00
    add d                                         ; $7af9: $82
    ld [bc], a                                    ; $7afa: $02
    inc bc                                        ; $7afb: $03
    ld a, [bc]                                    ; $7afc: $0a
    nop                                           ; $7afd: $00
    adc b                                         ; $7afe: $88
    ld b, b                                       ; $7aff: $40
    ld h, b                                       ; $7b00: $60
    and b                                         ; $7b01: $a0
    ret nc                                        ; $7b02: $d0

    and b                                         ; $7b03: $a0
    ret nc                                        ; $7b04: $d0

    ld b, b                                       ; $7b05: $40
    ld h, b                                       ; $7b06: $60
    jr jr_0f3_7b09                                ; $7b07: $18 $00

jr_0f3_7b09:
    adc b                                         ; $7b09: $88
    inc b                                         ; $7b0a: $04
    ld b, $0a                                     ; $7b0b: $06 $0a
    dec c                                         ; $7b0d: $0d
    ld a, [bc]                                    ; $7b0e: $0a
    dec c                                         ; $7b0f: $0d
    inc b                                         ; $7b10: $04
    ld b, $1a                                     ; $7b11: $06 $1a
    nop                                           ; $7b13: $00
    add [hl]                                      ; $7b14: $86
    ld a, [bc]                                    ; $7b15: $0a
    dec c                                         ; $7b16: $0d
    ld a, [bc]                                    ; $7b17: $0a
    dec c                                         ; $7b18: $0d
    inc b                                         ; $7b19: $04
    ld b, $0e                                     ; $7b1a: $06 $0e
    nop                                           ; $7b1c: $00
    rst $38                                       ; $7b1d: $ff
    rrca                                          ; $7b1e: $0f
    dec b                                         ; $7b1f: $05
    rst $30                                       ; $7b20: $f7
    ld a, [bc]                                    ; $7b21: $0a
    ld hl, sp+$08                                 ; $7b22: $f8 $08
    di                                            ; $7b24: $f3
    ld sp, hl                                     ; $7b25: $f9
    di                                            ; $7b26: $f3
    ld bc, $f703                                  ; $7b27: $01 $03 $f7
    inc bc                                        ; $7b2a: $03
    ei                                            ; $7b2b: $fb
    inc bc                                        ; $7b2c: $03
    inc bc                                        ; $7b2d: $03
    ld [bc], a                                    ; $7b2e: $02
    ld bc, $0284                                  ; $7b2f: $01 $84 $02
    inc bc                                        ; $7b32: $03
    ld [bc], a                                    ; $7b33: $02
    inc bc                                        ; $7b34: $03
    ld [bc], a                                    ; $7b35: $02
    ld bc, $0004                                  ; $7b36: $01 $04 $00
    adc b                                         ; $7b39: $88
    ld b, b                                       ; $7b3a: $40
    ld h, b                                       ; $7b3b: $60
    and b                                         ; $7b3c: $a0
    ret nc                                        ; $7b3d: $d0

    and b                                         ; $7b3e: $a0
    ret nc                                        ; $7b3f: $d0

    ld b, b                                       ; $7b40: $40
    ld h, b                                       ; $7b41: $60
    dec c                                         ; $7b42: $0d
    nop                                           ; $7b43: $00
    ld [bc], a                                    ; $7b44: $02
    add b                                         ; $7b45: $80
    add l                                         ; $7b46: $85
    ld b, b                                       ; $7b47: $40
    add b                                         ; $7b48: $80
    ld b, b                                       ; $7b49: $40
    nop                                           ; $7b4a: $00
    add b                                         ; $7b4b: $80
    inc b                                         ; $7b4c: $04
    nop                                           ; $7b4d: $00
    adc b                                         ; $7b4e: $88
    inc b                                         ; $7b4f: $04
    ld b, $0a                                     ; $7b50: $06 $0a
    dec c                                         ; $7b52: $0d
    ld a, [bc]                                    ; $7b53: $0a
    dec c                                         ; $7b54: $0d
    inc b                                         ; $7b55: $04
    ld b, $1e                                     ; $7b56: $06 $1e
    nop                                           ; $7b58: $00
    adc b                                         ; $7b59: $88
    ld b, b                                       ; $7b5a: $40
    ld h, b                                       ; $7b5b: $60
    and b                                         ; $7b5c: $a0
    ret nc                                        ; $7b5d: $d0

    and b                                         ; $7b5e: $a0
    ret nc                                        ; $7b5f: $d0

    ld b, b                                       ; $7b60: $40
    ld h, b                                       ; $7b61: $60
    ld d, $00                                     ; $7b62: $16 $00
    adc b                                         ; $7b64: $88
    inc b                                         ; $7b65: $04
    ld b, $0a                                     ; $7b66: $06 $0a
    dec c                                         ; $7b68: $0d
    ld a, [bc]                                    ; $7b69: $0a
    dec c                                         ; $7b6a: $0d
    inc b                                         ; $7b6b: $04
    ld b, $1a                                     ; $7b6c: $06 $1a
    nop                                           ; $7b6e: $00
    adc b                                         ; $7b6f: $88
    inc b                                         ; $7b70: $04
    ld b, $0a                                     ; $7b71: $06 $0a
    dec c                                         ; $7b73: $0d
    ld a, [bc]                                    ; $7b74: $0a
    dec c                                         ; $7b75: $0d
    inc b                                         ; $7b76: $04
    ld b, $06                                     ; $7b77: $06 $06
    nop                                           ; $7b79: $00
    rst $38                                       ; $7b7a: $ff
    rrca                                          ; $7b7b: $0f
    dec b                                         ; $7b7c: $05
    rst $30                                       ; $7b7d: $f7
    ld a, [bc]                                    ; $7b7e: $0a
    ld hl, sp+$08                                 ; $7b7f: $f8 $08
    db $eb                                        ; $7b81: $eb
    ld a, [$00ec]                                 ; $7b82: $fa $ec $00
    ei                                            ; $7b85: $fb
    rst $30                                       ; $7b86: $f7
    ei                                            ; $7b87: $fb
    ei                                            ; $7b88: $fb
    ei                                            ; $7b89: $fb
    inc bc                                        ; $7b8a: $03
    adc b                                         ; $7b8b: $88
    ld [bc], a                                    ; $7b8c: $02
    inc bc                                        ; $7b8d: $03
    dec b                                         ; $7b8e: $05
    ld b, $05                                     ; $7b8f: $06 $05
    ld b, $02                                     ; $7b91: $06 $02
    inc bc                                        ; $7b93: $03
    inc b                                         ; $7b94: $04
    nop                                           ; $7b95: $00
    adc b                                         ; $7b96: $88
    ld b, b                                       ; $7b97: $40
    ld h, b                                       ; $7b98: $60
    and b                                         ; $7b99: $a0
    ret nc                                        ; $7b9a: $d0

    and b                                         ; $7b9b: $a0
    ret nc                                        ; $7b9c: $d0

    ld b, b                                       ; $7b9d: $40
    ld h, b                                       ; $7b9e: $60
    dec c                                         ; $7b9f: $0d
    nop                                           ; $7ba0: $00
    add e                                         ; $7ba1: $83
    jr nz, jr_0f3_7ba4                            ; $7ba2: $20 $00

jr_0f3_7ba4:
    jr nz, jr_0f3_7bac                            ; $7ba4: $20 $06

    nop                                           ; $7ba6: $00
    adc b                                         ; $7ba7: $88
    inc b                                         ; $7ba8: $04
    ld b, $0a                                     ; $7ba9: $06 $0a
    dec c                                         ; $7bab: $0d

jr_0f3_7bac:
    ld a, [bc]                                    ; $7bac: $0a
    dec c                                         ; $7bad: $0d
    inc b                                         ; $7bae: $04
    ld b, $22                                     ; $7baf: $06 $22
    nop                                           ; $7bb1: $00
    adc b                                         ; $7bb2: $88
    ld b, b                                       ; $7bb3: $40
    ld h, b                                       ; $7bb4: $60
    and b                                         ; $7bb5: $a0
    ret nc                                        ; $7bb6: $d0

    and b                                         ; $7bb7: $a0
    ret nc                                        ; $7bb8: $d0

    ld b, b                                       ; $7bb9: $40
    ld h, b                                       ; $7bba: $60
    ld c, $00                                     ; $7bbb: $0e $00
    adc b                                         ; $7bbd: $88
    inc b                                         ; $7bbe: $04
    ld b, $0a                                     ; $7bbf: $06 $0a
    dec c                                         ; $7bc1: $0d
    ld a, [bc]                                    ; $7bc2: $0a
    dec c                                         ; $7bc3: $0d
    inc b                                         ; $7bc4: $04
    ld b, $22                                     ; $7bc5: $06 $22
    nop                                           ; $7bc7: $00
    adc b                                         ; $7bc8: $88
    inc b                                         ; $7bc9: $04
    ld b, $0a                                     ; $7bca: $06 $0a
    dec c                                         ; $7bcc: $0d
    ld a, [bc]                                    ; $7bcd: $0a
    dec c                                         ; $7bce: $0d
    inc b                                         ; $7bcf: $04
    ld b, $04                                     ; $7bd0: $06 $04
    nop                                           ; $7bd2: $00
    rst $38                                       ; $7bd3: $ff
    dec bc                                        ; $7bd4: $0b
    inc bc                                        ; $7bd5: $03
    rst $30                                       ; $7bd6: $f7
    ld a, [bc]                                    ; $7bd7: $0a
    ld hl, sp+$08                                 ; $7bd8: $f8 $08
    ld hl, sp-$08                                 ; $7bda: $f8 $f8
    ld hl, sp+$00                                 ; $7bdc: $f8 $00
    ld hl, sp+$02                                 ; $7bde: $f8 $02
    ld [bc], a                                    ; $7be0: $02
    nop                                           ; $7be1: $00
    inc b                                         ; $7be2: $04
    ld bc, $0008                                  ; $7be3: $01 $08 $00
    adc b                                         ; $7be6: $88
    ld b, b                                       ; $7be7: $40
    ld h, b                                       ; $7be8: $60
    and b                                         ; $7be9: $a0
    ret nc                                        ; $7bea: $d0

    and b                                         ; $7beb: $a0
    ret nc                                        ; $7bec: $d0

    ld b, b                                       ; $7bed: $40
    ld h, b                                       ; $7bee: $60
    ld a, [bc]                                    ; $7bef: $0a
    nop                                           ; $7bf0: $00
    adc b                                         ; $7bf1: $88
    add b                                         ; $7bf2: $80
    ret nz                                        ; $7bf3: $c0

    ld b, b                                       ; $7bf4: $40
    and b                                         ; $7bf5: $a0
    ld b, b                                       ; $7bf6: $40
    and b                                         ; $7bf7: $a0
    add b                                         ; $7bf8: $80
    ret nz                                        ; $7bf9: $c0

    ld b, $00                                     ; $7bfa: $06 $00
    ld [bc], a                                    ; $7bfc: $02
    ld bc, $0284                                  ; $7bfd: $01 $84 $02
    inc bc                                        ; $7c00: $03
    ld [bc], a                                    ; $7c01: $02
    inc bc                                        ; $7c02: $03
    ld [bc], a                                    ; $7c03: $02
    ld bc, $0019                                  ; $7c04: $01 $19 $00
    ld [bc], a                                    ; $7c07: $02
    ld [bc], a                                    ; $7c08: $02
    add l                                         ; $7c09: $85
    ld bc, $0102                                  ; $7c0a: $01 $02 $01
    nop                                           ; $7c0d: $00
    ld [bc], a                                    ; $7c0e: $02
    ld a, [bc]                                    ; $7c0f: $0a
    nop                                           ; $7c10: $00
    rst $38                                       ; $7c11: $ff
    add hl, bc                                    ; $7c12: $09
    ld [bc], a                                    ; $7c13: $02
    rst $30                                       ; $7c14: $f7
    ld a, [bc]                                    ; $7c15: $0a
    ld hl, sp+$08                                 ; $7c16: $f8 $08
    di                                            ; $7c18: $f3
    ld a, [$00f3]                                 ; $7c19: $fa $f3 $00
    adc b                                         ; $7c1c: $88
    ld [bc], a                                    ; $7c1d: $02
    inc bc                                        ; $7c1e: $03
    dec b                                         ; $7c1f: $05
    ld b, $05                                     ; $7c20: $06 $05
    ld b, $02                                     ; $7c22: $06 $02
    inc bc                                        ; $7c24: $03
    inc b                                         ; $7c25: $04
    nop                                           ; $7c26: $00
    adc b                                         ; $7c27: $88
    ld b, b                                       ; $7c28: $40
    ld h, b                                       ; $7c29: $60
    and b                                         ; $7c2a: $a0
    ret nc                                        ; $7c2b: $d0

    and b                                         ; $7c2c: $a0
    ret nc                                        ; $7c2d: $d0

    ld b, b                                       ; $7c2e: $40
    ld h, b                                       ; $7c2f: $60
    rrca                                          ; $7c30: $0f
    nop                                           ; $7c31: $00
    add e                                         ; $7c32: $83
    jr nz, jr_0f3_7c35                            ; $7c33: $20 $00

jr_0f3_7c35:
    jr nz, jr_0f3_7c3d                            ; $7c35: $20 $06

    nop                                           ; $7c37: $00
    adc b                                         ; $7c38: $88
    inc b                                         ; $7c39: $04
    ld b, $0a                                     ; $7c3a: $06 $0a
    dec c                                         ; $7c3c: $0d

jr_0f3_7c3d:
    ld a, [bc]                                    ; $7c3d: $0a
    dec c                                         ; $7c3e: $0d
    inc b                                         ; $7c3f: $04
    ld b, $0c                                     ; $7c40: $06 $0c
    nop                                           ; $7c42: $00
    rst $38                                       ; $7c43: $ff
    rlca                                          ; $7c44: $07
    ld bc, $0af7                                  ; $7c45: $01 $f7 $0a
    ld hl, sp+$08                                 ; $7c48: $f8 $08
    xor $fd                                       ; $7c4a: $ee $fd
    adc [hl]                                      ; $7c4c: $8e
    db $10                                        ; $7c4d: $10
    jr jr_0f3_7c78                                ; $7c4e: $18 $28

    inc [hl]                                      ; $7c50: $34
    jr z, @+$36                                   ; $7c51: $28 $34

    ld d, h                                       ; $7c53: $54
    ld a, [hl]                                    ; $7c54: $7e
    xor d                                         ; $7c55: $aa
    db $dd                                        ; $7c56: $dd
    xor d                                         ; $7c57: $aa
    db $dd                                        ; $7c58: $dd
    ld b, h                                       ; $7c59: $44
    ld h, [hl]                                    ; $7c5a: $66
    ld [de], a                                    ; $7c5b: $12
    nop                                           ; $7c5c: $00
    rst $38                                       ; $7c5d: $ff
    rla                                           ; $7c5e: $17
    add hl, bc                                    ; $7c5f: $09
    rst $30                                       ; $7c60: $f7
    ld a, [bc]                                    ; $7c61: $0a
    ld hl, sp+$08                                 ; $7c62: $f8 $08
    ldh a, [$f2]                                  ; $7c64: $f0 $f2
    ldh a, [$fa]                                  ; $7c66: $f0 $fa
    ldh a, [rSC]                                  ; $7c68: $f0 $02
    push af                                       ; $7c6a: $f5
    ld [$f000], sp                                ; $7c6b: $08 $00 $f0
    nop                                           ; $7c6e: $00
    ld hl, sp+$00                                 ; $7c6f: $f8 $00
    nop                                           ; $7c71: $00
    dec b                                         ; $7c72: $05
    ld b, $10                                     ; $7c73: $06 $10
    db $fc                                        ; $7c75: $fc
    add d                                         ; $7c76: $82
    nop                                           ; $7c77: $00

jr_0f3_7c78:
    ld bc, $0002                                  ; $7c78: $01 $02 $00
    ld [bc], a                                    ; $7c7b: $02
    ld bc, $02a5                                  ; $7c7c: $01 $a5 $02
    inc bc                                        ; $7c7f: $03
    nop                                           ; $7c80: $00
    inc bc                                        ; $7c81: $03
    dec bc                                        ; $7c82: $0b
    rrca                                          ; $7c83: $0f
    inc b                                         ; $7c84: $04
    ld [$1810], sp                                ; $7c85: $08 $10 $18
    jr nz, jr_0f3_7cc2                            ; $7c88: $20 $38

    jr jr_0f3_7cbc                                ; $7c8a: $18 $30

    jr nz, jr_0f3_7cbe                            ; $7c8c: $20 $30

    ld b, b                                       ; $7c8e: $40
    ld [hl], b                                    ; $7c8f: $70
    ld b, b                                       ; $7c90: $40
    ld h, b                                       ; $7c91: $60
    jr nz, @+$42                                  ; $7c92: $20 $40

    and b                                         ; $7c94: $a0
    ret nz                                        ; $7c95: $c0

    add e                                         ; $7c96: $83
    ldh [$9a], a                                  ; $7c97: $e0 $9a
    rra                                           ; $7c99: $1f
    ld h, b                                       ; $7c9a: $60
    cp a                                          ; $7c9b: $bf
    call z, Call_0f3_70b2                         ; $7c9c: $cc $b2 $70
    add b                                         ; $7c9f: $80
    sub b                                         ; $7ca0: $90
    ld h, b                                       ; $7ca1: $60
    db $10                                        ; $7ca2: $10
    ld [bc], a                                    ; $7ca3: $02

Call_0f3_7ca4:
    ld [$10ca], sp                                ; $7ca4: $08 $ca $10
    inc c                                         ; $7ca7: $0c
    ld [bc], a                                    ; $7ca8: $02
    db $10                                        ; $7ca9: $10
    inc c                                         ; $7caa: $0c
    stop                                          ; $7cab: $10 $00
    ld [$0b10], sp                                ; $7cad: $08 $10 $0b
    rlca                                          ; $7cb0: $07
    ld [$190f], sp                                ; $7cb1: $08 $0f $19
    ld e, $3b                                     ; $7cb4: $1e $3b
    inc a                                         ; $7cb6: $3c
    or a                                          ; $7cb7: $b7
    jr c, jr_0f3_7cfa                             ; $7cb8: $38 $40

    ret nz                                        ; $7cba: $c0

    ld d, b                                       ; $7cbb: $50

jr_0f3_7cbc:
    or b                                          ; $7cbc: $b0
    inc e                                         ; $7cbd: $1c

jr_0f3_7cbe:
    push hl                                       ; $7cbe: $e5
    ld bc, $011e                                  ; $7cbf: $01 $1e $01

jr_0f3_7cc2:
    ld c, $07                                     ; $7cc2: $0e $07
    ld b, $03                                     ; $7cc4: $06 $03
    nop                                           ; $7cc6: $00
    inc c                                         ; $7cc7: $0c
    ld [bc], a                                    ; $7cc8: $02
    jr nc, jr_0f3_7cd7                            ; $7cc9: $30 $0c

    ld b, b                                       ; $7ccb: $40
    jr nc, @+$42                                  ; $7ccc: $30 $40

    nop                                           ; $7cce: $00
    jp $6480                                      ; $7ccf: $c3 $80 $64


    db $e3                                        ; $7cd2: $e3
    jr z, @-$1a                                   ; $7cd3: $28 $e4

    ret c                                         ; $7cd5: $d8

    inc [hl]                                      ; $7cd6: $34

jr_0f3_7cd7:
    ret nc                                        ; $7cd7: $d0

    jr z, jr_0f3_7cfa                             ; $7cd8: $28 $20

    nop                                           ; $7cda: $00
    db $10                                        ; $7cdb: $10
    jr nc, jr_0f3_7cde                            ; $7cdc: $30 $00

jr_0f3_7cde:
    jr c, jr_0f3_7ce8                             ; $7cde: $38 $08

    jr c, @+$0a                                   ; $7ce0: $38 $08

    db $10                                        ; $7ce2: $10
    inc b                                         ; $7ce3: $04
    inc e                                         ; $7ce4: $1c
    jr nz, jr_0f3_7cf4                            ; $7ce5: $20 $0d

    dec d                                         ; $7ce7: $15

jr_0f3_7ce8:
    inc l                                         ; $7ce8: $2c
    ld c, $10                                     ; $7ce9: $0e $10
    ld [bc], a                                    ; $7ceb: $02
    ld c, $02                                     ; $7cec: $0e $02
    ld b, $04                                     ; $7cee: $06 $04
    ld [bc], a                                    ; $7cf0: $02
    ld b, $83                                     ; $7cf1: $06 $83
    ld a, [bc]                                    ; $7cf3: $0a

jr_0f3_7cf4:
    ld [bc], a                                    ; $7cf4: $02
    ld c, $02                                     ; $7cf5: $0e $02
    inc c                                         ; $7cf7: $0c
    sbc b                                         ; $7cf8: $98
    nop                                           ; $7cf9: $00

jr_0f3_7cfa:
    inc e                                         ; $7cfa: $1c
    ld [hl], c                                    ; $7cfb: $71
    nop                                           ; $7cfc: $00
    ld sp, $0eae                                  ; $7cfd: $31 $ae $0e
    db $10                                        ; $7d00: $10
    jr @+$16                                      ; $7d01: $18 $14

    inc b                                         ; $7d03: $04
    jr jr_0f3_7d16                                ; $7d04: $18 $10

    inc e                                         ; $7d06: $1c
    ld [$040c], sp                                ; $7d07: $08 $0c $04
    inc c                                         ; $7d0a: $0c
    ld a, [bc]                                    ; $7d0b: $0a
    inc c                                         ; $7d0c: $0c
    ld bc, $0206                                  ; $7d0d: $01 $06 $02
    inc bc                                        ; $7d10: $03
    ld [bc], a                                    ; $7d11: $02
    ld bc, $0008                                  ; $7d12: $01 $08 $00
    add h                                         ; $7d15: $84

jr_0f3_7d16:
    jr @-$17                                      ; $7d16: $18 $e7

    ld b, $0f                                     ; $7d18: $06 $0f
    ld [bc], a                                    ; $7d1a: $02
    rlca                                          ; $7d1b: $07
    and c                                         ; $7d1c: $a1
    ld b, $07                                     ; $7d1d: $06 $07
    ld bc, $0102                                  ; $7d1f: $01 $02 $01
    nop                                           ; $7d22: $00
    ld [bc], a                                    ; $7d23: $02
    ld bc, $0204                                  ; $7d24: $01 $04 $02
    inc b                                         ; $7d27: $04
    ld [bc], a                                    ; $7d28: $02
    inc b                                         ; $7d29: $04
    ld [bc], a                                    ; $7d2a: $02
    inc b                                         ; $7d2b: $04
    add d                                         ; $7d2c: $82
    call nz, $088a                                ; $7d2d: $c4 $8a $08
    db $f4                                        ; $7d30: $f4
    ld [hl], b                                    ; $7d31: $70
    ld b, b                                       ; $7d32: $40
    ld h, h                                       ; $7d33: $64
    jr c, jr_0f3_7d4a                             ; $7d34: $38 $14

    rra                                           ; $7d36: $1f
    db $f4                                        ; $7d37: $f4
    inc c                                         ; $7d38: $0c
    inc l                                         ; $7d39: $2c
    call c, $f808                                 ; $7d3a: $dc $08 $f8
    ld a, b                                       ; $7d3d: $78
    ld [bc], a                                    ; $7d3e: $02
    ld hl, sp-$77                                 ; $7d3f: $f8 $89
    ldh [$e8], a                                  ; $7d41: $e0 $e8
    ldh a, [rDIV]                                 ; $7d43: $f0 $04
    ld [$0403], sp                                ; $7d45: $08 $03 $04
    nop                                           ; $7d48: $00
    inc bc                                        ; $7d49: $03

jr_0f3_7d4a:
    inc b                                         ; $7d4a: $04
    nop                                           ; $7d4b: $00
    ld [bc], a                                    ; $7d4c: $02
    ld bc, $0098                                  ; $7d4d: $01 $98 $00
    inc bc                                        ; $7d50: $03
    ld [bc], a                                    ; $7d51: $02
    dec b                                         ; $7d52: $05
    ld b, $1e                                     ; $7d53: $06 $1e
    sbc b                                         ; $7d55: $98
    db $ec                                        ; $7d56: $ec
    inc bc                                        ; $7d57: $03
    dec b                                         ; $7d58: $05
    ld [bc], a                                    ; $7d59: $02
    ld h, $22                                     ; $7d5a: $26 $22
    ld e, $14                                     ; $7d5c: $1e $14
    ld a, [hl+]                                   ; $7d5e: $2a
    ld d, $0e                                     ; $7d5f: $16 $0e
    inc a                                         ; $7d61: $3c
    inc [hl]                                      ; $7d62: $34
    inc c                                         ; $7d63: $0c
    ld a, [hl-]                                   ; $7d64: $3a
    db $10                                        ; $7d65: $10
    jr nc, jr_0f3_7d6a                            ; $7d66: $30 $02

    jr nz, jr_0f3_7d78                            ; $7d68: $20 $0e

jr_0f3_7d6a:
    nop                                           ; $7d6a: $00
    add d                                         ; $7d6b: $82
    dec sp                                        ; $7d6c: $3b
    ccf                                           ; $7d6d: $3f
    ld e, $00                                     ; $7d6e: $1e $00
    rst $38                                       ; $7d70: $ff
    rla                                           ; $7d71: $17
    add hl, bc                                    ; $7d72: $09
    rst $30                                       ; $7d73: $f7
    ld a, [bc]                                    ; $7d74: $0a
    ld hl, sp+$08                                 ; $7d75: $f8 $08
    ld a, [c]                                     ; $7d77: $f2

jr_0f3_7d78:
    ld a, [c]                                     ; $7d78: $f2
    ldh a, [$fa]                                  ; $7d79: $f0 $fa
    ldh a, [rSC]                                  ; $7d7b: $f0 $02
    db $f4                                        ; $7d7d: $f4
    rlca                                          ; $7d7e: $07
    ld [bc], a                                    ; $7d7f: $02
    di                                            ; $7d80: $f3
    nop                                           ; $7d81: $00
    ei                                            ; $7d82: $fb
    nop                                           ; $7d83: $00
    inc bc                                        ; $7d84: $03
    inc b                                         ; $7d85: $04
    ld [$fc10], sp                                ; $7d86: $08 $10 $fc
    ld [bc], a                                    ; $7d89: $02
    ld bc, $02be                                  ; $7d8a: $01 $be $02
    inc bc                                        ; $7d8d: $03
    nop                                           ; $7d8e: $00
    inc bc                                        ; $7d8f: $03
    add hl, bc                                    ; $7d90: $09
    rrca                                          ; $7d91: $0f
    ld [de], a                                    ; $7d92: $12
    ld e, $00                                     ; $7d93: $1e $00
    inc e                                         ; $7d95: $1c
    ld l, b                                       ; $7d96: $68
    jr nc, jr_0f3_7dd1                            ; $7d97: $30 $38

    db $10                                        ; $7d99: $10
    ld sp, $5a00                                  ; $7d9a: $31 $00 $5a
    ld h, c                                       ; $7d9d: $61
    inc b                                         ; $7d9e: $04
    ld a, d                                       ; $7d9f: $7a
    nop                                           ; $7da0: $00
    ld h, h                                       ; $7da1: $64
    add b                                         ; $7da2: $80
    ldh [$a0], a                                  ; $7da3: $e0 $a0
    ret nz                                        ; $7da5: $c0

    jr nz, jr_0f3_7de8                            ; $7da6: $20 $40

    and b                                         ; $7da8: $a0
    ret nz                                        ; $7da9: $c0

    rrca                                          ; $7daa: $0f
    dec e                                         ; $7dab: $1d
    ld b, c                                       ; $7dac: $41
    ld a, [hl]                                    ; $7dad: $7e
    inc de                                        ; $7dae: $13
    db $ec                                        ; $7daf: $ec
    ld d, c                                       ; $7db0: $51
    sub b                                         ; $7db1: $90
    add c                                         ; $7db2: $81
    nop                                           ; $7db3: $00
    inc bc                                        ; $7db4: $03
    nop                                           ; $7db5: $00
    ld [bc], a                                    ; $7db6: $02
    dec b                                         ; $7db7: $05
    inc b                                         ; $7db8: $04
    ld [bc], a                                    ; $7db9: $02
    inc b                                         ; $7dba: $04
    nop                                           ; $7dbb: $00
    ld [bc], a                                    ; $7dbc: $02
    inc b                                         ; $7dbd: $04
    add d                                         ; $7dbe: $82
    ld b, h                                       ; $7dbf: $44
    ld b, e                                       ; $7dc0: $43
    add a                                         ; $7dc1: $87
    inc l                                         ; $7dc2: $2c
    ld c, a                                       ; $7dc3: $4f
    ld de, $1b2e                                  ; $7dc4: $11 $2e $1b
    inc l                                         ; $7dc7: $2c
    inc sp                                        ; $7dc8: $33
    inc a                                         ; $7dc9: $3c
    ld [bc], a                                    ; $7dca: $02
    ld h, b                                       ; $7dcb: $60
    adc h                                         ; $7dcc: $8c
    ld d, b                                       ; $7dcd: $50
    or b                                          ; $7dce: $b0
    inc d                                         ; $7dcf: $14
    db $ec                                        ; $7dd0: $ec

jr_0f3_7dd1:
    ld b, $0a                                     ; $7dd1: $06 $0a
    ld [bc], a                                    ; $7dd3: $02
    add l                                         ; $7dd4: $85
    inc b                                         ; $7dd5: $04
    add a                                         ; $7dd6: $87
    nop                                           ; $7dd7: $00
    ld bc, $0008                                  ; $7dd8: $01 $08 $00
    adc d                                         ; $7ddb: $8a
    sbc h                                         ; $7ddc: $9c
    add e                                         ; $7ddd: $83
    ld h, e                                       ; $7dde: $63
    call c, Call_0f3_70a0                         ; $7ddf: $dc $a0 $70
    sub b                                         ; $7de2: $90
    ld [hl], b                                    ; $7de3: $70
    ret nc                                        ; $7de4: $d0

    jr nc, jr_0f3_7de9                            ; $7de5: $30 $02

    db $10                                        ; $7de7: $10

jr_0f3_7de8:
    sub [hl]                                      ; $7de8: $96

jr_0f3_7de9:
    nop                                           ; $7de9: $00
    db $10                                        ; $7dea: $10
    ld [$0c18], sp                                ; $7deb: $08 $18 $0c
    ld [de], a                                    ; $7dee: $12
    inc e                                         ; $7def: $1c
    inc b                                         ; $7df0: $04
    inc d                                         ; $7df1: $14
    ld [$0e12], sp                                ; $7df2: $08 $12 $0e
    db $10                                        ; $7df5: $10
    ld b, $02                                     ; $7df6: $06 $02
    inc b                                         ; $7df8: $04
    ld bc, $0103                                  ; $7df9: $01 $03 $01
    rlca                                          ; $7dfc: $07
    nop                                           ; $7dfd: $00
    ld [bc], a                                    ; $7dfe: $02
    ld [bc], a                                    ; $7dff: $02
    inc bc                                        ; $7e00: $03
    sbc [hl]                                      ; $7e01: $9e
    ld bc, $0207                                  ; $7e02: $01 $07 $02
    dec b                                         ; $7e05: $05
    db $e4                                        ; $7e06: $e4
    ld b, $00                                     ; $7e07: $06 $00
    ret nz                                        ; $7e09: $c0

    add b                                         ; $7e0a: $80
    ret nz                                        ; $7e0b: $c0

    nop                                           ; $7e0c: $00
    ldh [$a3], a                                  ; $7e0d: $e0 $a3
    call nz, Call_0f3_735c                        ; $7e0f: $c4 $5c $73
    jr nc, jr_0f3_7e5c                            ; $7e12: $30 $48

    ld b, b                                       ; $7e14: $40
    jr nc, jr_0f3_7e5f                            ; $7e15: $30 $48

    jr nc, jr_0f3_7e2f                            ; $7e17: $30 $16

    ld e, d                                       ; $7e19: $5a
    ld a, [bc]                                    ; $7e1a: $0a
    ld c, $01                                     ; $7e1b: $0e $01
    ld b, $02                                     ; $7e1d: $06 $02
    inc bc                                        ; $7e1f: $03
    ld [bc], a                                    ; $7e20: $02
    ld bc, $0006                                  ; $7e21: $01 $06 $00
    sub l                                         ; $7e24: $95
    ld c, a                                       ; $7e25: $4f
    ld [hl], b                                    ; $7e26: $70
    ld h, e                                       ; $7e27: $63
    ld a, h                                       ; $7e28: $7c
    jr c, jr_0f3_7e6a                             ; $7e29: $38 $3f

    halt                                          ; $7e2b: $76
    rrca                                          ; $7e2c: $0f
    ld c, l                                       ; $7e2d: $4d
    ccf                                           ; $7e2e: $3f

jr_0f3_7e2f:
    adc a                                         ; $7e2f: $8f
    ld c, l                                       ; $7e30: $4d
    ld [bc], a                                    ; $7e31: $02
    add b                                         ; $7e32: $80
    ld bc, $0102                                  ; $7e33: $01 $02 $01
    ld [bc], a                                    ; $7e36: $02
    ld bc, $0302                                  ; $7e37: $01 $02 $03
    ld [bc], a                                    ; $7e3a: $02
    inc b                                         ; $7e3b: $04
    sub l                                         ; $7e3c: $95
    nop                                           ; $7e3d: $00
    inc b                                         ; $7e3e: $04
    nop                                           ; $7e3f: $00
    ld [$6884], sp                                ; $7e40: $08 $84 $68
    add b                                         ; $7e43: $80
    xor h                                         ; $7e44: $ac
    di                                            ; $7e45: $f3
    and b                                         ; $7e46: $a0
    ld h, b                                       ; $7e47: $60
    ld b, b                                       ; $7e48: $40
    ldh a, [$b0]                                  ; $7e49: $f0 $b0
    ret nz                                        ; $7e4b: $c0

    ret nc                                        ; $7e4c: $d0

    ldh [$81], a                                  ; $7e4d: $e0 $81
    sbc [hl]                                      ; $7e4f: $9e
    nop                                           ; $7e50: $00
    ld bc, $0003                                  ; $7e51: $01 $03 $00
    add d                                         ; $7e54: $82
    ld bc, $0200                                  ; $7e55: $01 $00 $02
    ld bc, $0286                                  ; $7e58: $01 $86 $02
    dec b                                         ; $7e5b: $05

jr_0f3_7e5c:
    ld b, $0b                                     ; $7e5c: $06 $0b
    rrca                                          ; $7e5e: $0f

jr_0f3_7e5f:
    nop                                           ; $7e5f: $00
    ld [bc], a                                    ; $7e60: $02
    inc e                                         ; $7e61: $1c
    add [hl]                                      ; $7e62: $86
    inc h                                         ; $7e63: $24
    jr nc, @-$0e                                  ; $7e64: $30 $f0

    and b                                         ; $7e66: $a0
    ld h, b                                       ; $7e67: $60
    inc b                                         ; $7e68: $04
    ld [bc], a                                    ; $7e69: $02

jr_0f3_7e6a:
    inc e                                         ; $7e6a: $1c
    add h                                         ; $7e6b: $84
    nop                                           ; $7e6c: $00

jr_0f3_7e6d:
    ld a, [bc]                                    ; $7e6d: $0a
    ld de, $0218                                  ; $7e6e: $11 $18 $02
    ld [$1882], sp                                ; $7e71: $08 $82 $18
    nop                                           ; $7e74: $00
    inc bc                                        ; $7e75: $03
    db $10                                        ; $7e76: $10
    ld [de], a                                    ; $7e77: $12
    nop                                           ; $7e78: $00
    add h                                         ; $7e79: $84
    ccf                                           ; $7e7a: $3f
    scf                                           ; $7e7b: $37
    ld [$1c04], sp                                ; $7e7c: $08 $04 $1c
    nop                                           ; $7e7f: $00
    rst $38                                       ; $7e80: $ff
    rla                                           ; $7e81: $17
    add hl, bc                                    ; $7e82: $09
    rst $30                                       ; $7e83: $f7
    ld a, [bc]                                    ; $7e84: $0a
    ld hl, sp+$08                                 ; $7e85: $f8 $08
    ld a, [c]                                     ; $7e87: $f2
    ld a, [c]                                     ; $7e88: $f2
    ldh a, [$fa]                                  ; $7e89: $f0 $fa
    ldh a, [rSC]                                  ; $7e8b: $f0 $02
    push af                                       ; $7e8d: $f5
    ld [$f101], sp                                ; $7e8e: $08 $01 $f1
    nop                                           ; $7e91: $00

jr_0f3_7e92:
    ld sp, hl                                     ; $7e92: $f9
    nop                                           ; $7e93: $00
    ld bc, $0505                                  ; $7e94: $01 $05 $05
    db $10                                        ; $7e97: $10
    db $fc                                        ; $7e98: $fc
    and a                                         ; $7e99: $a7
    inc bc                                        ; $7e9a: $03
    ld bc, $0102                                  ; $7e9b: $01 $02 $01
    dec b                                         ; $7e9e: $05
    ld b, $0b                                     ; $7e9f: $06 $0b
    rrca                                          ; $7ea1: $0f
    inc d                                         ; $7ea2: $14
    jr jr_0f3_7ea5                                ; $7ea3: $18 $00

jr_0f3_7ea5:
    jr jr_0f3_7eaf                                ; $7ea5: $18 $08

    db $10                                        ; $7ea7: $10
    jr jr_0f3_7eda                                ; $7ea8: $18 $30

    jr nz, jr_0f3_7edc                            ; $7eaa: $20 $30

    ld d, b                                       ; $7eac: $50
    ld h, b                                       ; $7ead: $60
    ld d, b                                       ; $7eae: $50

jr_0f3_7eaf:
    ld h, b                                       ; $7eaf: $60
    nop                                           ; $7eb0: $00
    ld h, b                                       ; $7eb1: $60
    and b                                         ; $7eb2: $a0
    ret nc                                        ; $7eb3: $d0

jr_0f3_7eb4:
    inc bc                                        ; $7eb4: $03
    ld h, b                                       ; $7eb5: $60
    db $fc                                        ; $7eb6: $fc
    inc bc                                        ; $7eb7: $03
    jr nz, jr_0f3_7e92                            ; $7eb8: $20 $d8

    rla                                           ; $7eba: $17
    ld d, $20                                     ; $7ebb: $16 $20
    ccf                                           ; $7ebd: $3f
    sbc c                                         ; $7ebe: $99
    db $e4                                        ; $7ebf: $e4
    ld b, b                                       ; $7ec0: $40
    ld [bc], a                                    ; $7ec1: $02
    add b                                         ; $7ec2: $80
    sub a                                         ; $7ec3: $97
    nop                                           ; $7ec4: $00
    ld b, b                                       ; $7ec5: $40
    add b                                         ; $7ec6: $80
    ld b, b                                       ; $7ec7: $40
    nop                                           ; $7ec8: $00
    add b                                         ; $7ec9: $80
    ld b, b                                       ; $7eca: $40
    ld [hl], b                                    ; $7ecb: $70
    add b                                         ; $7ecc: $80

jr_0f3_7ecd:
    jr @+$62                                      ; $7ecd: $18 $60

    ld [$0f10], sp                                ; $7ecf: $08 $10 $0f
    rlca                                          ; $7ed2: $07
    inc d                                         ; $7ed3: $14
    rra                                           ; $7ed4: $1f
    dec de                                        ; $7ed5: $1b
    inc e                                         ; $7ed6: $1c
    scf                                           ; $7ed7: $37
    jr c, jr_0f3_7ecd                             ; $7ed8: $38 $f3

jr_0f3_7eda:
    inc e                                         ; $7eda: $1c
    ld [bc], a                                    ; $7edb: $02

jr_0f3_7edc:
    ld b, b                                       ; $7edc: $40
    cp d                                          ; $7edd: $ba
    jr nc, @-$0e                                  ; $7ede: $30 $f0

    add [hl]                                      ; $7ee0: $86
    ld a, h                                       ; $7ee1: $7c
    dec bc                                        ; $7ee2: $0b
    inc b                                         ; $7ee3: $04
    inc bc                                        ; $7ee4: $03
    dec b                                         ; $7ee5: $05
    ld b, $0b                                     ; $7ee6: $06 $0b
    ld a, b                                       ; $7ee8: $78
    dec b                                         ; $7ee9: $05
    ld b, b                                       ; $7eea: $40
    jr nc, jr_0f3_7e6d                            ; $7eeb: $30 $80

    ld b, b                                       ; $7eed: $40
    add b                                         ; $7eee: $80
    nop                                           ; $7eef: $00
    ld b, b                                       ; $7ef0: $40
    nop                                           ; $7ef1: $00
    call z, Call_0f3_7280                         ; $7ef2: $cc $80 $72
    db $ec                                        ; $7ef5: $ec
    or c                                          ; $7ef6: $b1
    ld h, d                                       ; $7ef7: $62
    ret nz                                        ; $7ef8: $c0

    ld sp, $7090                                  ; $7ef9: $31 $90 $70
    jr nz, jr_0f3_7efe                            ; $7efc: $20 $00

jr_0f3_7efe:
    db $10                                        ; $7efe: $10
    jr nc, jr_0f3_7f01                            ; $7eff: $30 $00

jr_0f3_7f01:
    jr nc, jr_0f3_7f0b                            ; $7f01: $30 $08

    jr jr_0f3_7f0d                                ; $7f03: $18 $08

    jr @+$0a                                      ; $7f05: $18 $08

    db $10                                        ; $7f07: $10
    inc b                                         ; $7f08: $04
    inc c                                         ; $7f09: $0c
    inc b                                         ; $7f0a: $04

jr_0f3_7f0b:
    inc c                                         ; $7f0b: $0c
    ld [bc], a                                    ; $7f0c: $02

jr_0f3_7f0d:
    dec c                                         ; $7f0d: $0d
    ld l, $10                                     ; $7f0e: $2e $10

jr_0f3_7f10:
    inc d                                         ; $7f10: $14
    ld [$0c04], sp                                ; $7f11: $08 $04 $0c
    ld [$0804], sp                                ; $7f14: $08 $04 $08
    inc b                                         ; $7f17: $04
    ld [bc], a                                    ; $7f18: $02
    inc c                                         ; $7f19: $0c
    add e                                         ; $7f1a: $83
    inc b                                         ; $7f1b: $04
    inc e                                         ; $7f1c: $1c
    add b                                         ; $7f1d: $80
    ld [bc], a                                    ; $7f1e: $02
    nop                                           ; $7f1f: $00
    add [hl]                                      ; $7f20: $86
    jr nc, jr_0f3_7f43                            ; $7f21: $30 $20

    jr nc, jr_0f3_7f4d                            ; $7f23: $30 $28

    jr nc, @+$0a                                  ; $7f25: $30 $08

    ld [bc], a                                    ; $7f27: $02
    db $10                                        ; $7f28: $10
    inc bc                                        ; $7f29: $03
    jr jr_0f3_7eb4                                ; $7f2a: $18 $88

    inc c                                         ; $7f2c: $0c
    nop                                           ; $7f2d: $00
    ld b, $08                                     ; $7f2e: $06 $08
    nop                                           ; $7f30: $00
    rlca                                          ; $7f31: $07
    ld bc, $0303                                  ; $7f32: $01 $03 $03
    ld bc, $0007                                  ; $7f35: $01 $07 $00
    or d                                          ; $7f38: $b2
    dec b                                         ; $7f39: $05
    ld a, [hl]                                    ; $7f3a: $7e
    ld e, $1f                                     ; $7f3b: $1e $1f
    inc c                                         ; $7f3d: $0c
    rrca                                          ; $7f3e: $0f
    inc c                                         ; $7f3f: $0c
    rrca                                          ; $7f40: $0f
    rlca                                          ; $7f41: $07
    dec b                                         ; $7f42: $05

jr_0f3_7f43:
    inc bc                                        ; $7f43: $03
    ld bc, $0006                                  ; $7f44: $01 $06 $00
    ld [$0806], sp                                ; $7f47: $08 $06 $08
    nop                                           ; $7f4a: $00
    jr nc, @+$0a                                  ; $7f4b: $30 $08

jr_0f3_7f4d:
    ld b, b                                       ; $7f4d: $40
    jr nz, jr_0f3_7f10                            ; $7f4e: $20 $c0

    add b                                         ; $7f50: $80
    ld b, b                                       ; $7f51: $40
    add b                                         ; $7f52: $80
    ret nz                                        ; $7f53: $c0

    jr nz, jr_0f3_7f96                            ; $7f54: $20 $40

    ld a, b                                       ; $7f56: $78
    dec a                                         ; $7f57: $3d
    dec sp                                        ; $7f58: $3b
    add sp, $18                                   ; $7f59: $e8 $18
    ret c                                         ; $7f5b: $d8

    jr c, jr_0f3_7f8e                             ; $7f5c: $38 $30

    ldh a, [$b0]                                  ; $7f5e: $f0 $b0
    ldh a, [$e0]                                  ; $7f60: $f0 $e0
    ret nz                                        ; $7f62: $c0

    and b                                         ; $7f63: $a0
    ret nz                                        ; $7f64: $c0

    db $10                                        ; $7f65: $10
    jr nz, jr_0f3_7f77                            ; $7f66: $20 $0f

    stop                                          ; $7f68: $10 $00
    rrca                                          ; $7f6a: $0f
    inc b                                         ; $7f6b: $04
    nop                                           ; $7f6c: $00
    add e                                         ; $7f6d: $83
    ld [bc], a                                    ; $7f6e: $02
    inc bc                                        ; $7f6f: $03
    ld bc, $0602                                  ; $7f70: $01 $02 $06
    add [hl]                                      ; $7f73: $86
    ld a, [bc]                                    ; $7f74: $0a
    inc l                                         ; $7f75: $2c
    inc e                                         ; $7f76: $1c

jr_0f3_7f77:
    db $10                                        ; $7f77: $10
    ldh a, [rSC]                                  ; $7f78: $f0 $02
    ld [bc], a                                    ; $7f7a: $02
    ld bc, $038b                                  ; $7f7b: $01 $8b $03
    add hl, bc                                    ; $7f7e: $09
    inc bc                                        ; $7f7f: $03
    ld b, $0a                                     ; $7f80: $06 $0a
    ld [bc], a                                    ; $7f82: $02
    inc b                                         ; $7f83: $04
    ld b, $0c                                     ; $7f84: $06 $0c
    inc b                                         ; $7f86: $04
    inc c                                         ; $7f87: $0c
    ld [bc], a                                    ; $7f88: $02
    ld [$0010], sp                                ; $7f89: $08 $10 $00
    ld [bc], a                                    ; $7f8c: $02
    ccf                                           ; $7f8d: $3f

jr_0f3_7f8e:
    ld e, $00                                     ; $7f8e: $1e $00
    rst $38                                       ; $7f90: $ff
    rlca                                          ; $7f91: $07
    ld bc, $0bfe                                  ; $7f92: $01 $fe $0b
    db $fd                                        ; $7f95: $fd

jr_0f3_7f96:
    inc bc                                        ; $7f96: $03
    rst $38                                       ; $7f97: $ff
    ld hl, sp+$02                                 ; $7f98: $f8 $02
    ld [bc], a                                    ; $7f9a: $02
    add d                                         ; $7f9b: $82
    rlca                                          ; $7f9c: $07
    dec b                                         ; $7f9d: $05
    ld [bc], a                                    ; $7f9e: $02
    ld [bc], a                                    ; $7f9f: $02
    ld a, [de]                                    ; $7fa0: $1a
    nop                                           ; $7fa1: $00
    rst $38                                       ; $7fa2: $ff
    rlca                                          ; $7fa3: $07
    ld bc, $0bfe                                  ; $7fa4: $01 $fe $0b
    db $fd                                        ; $7fa7: $fd
    inc bc                                        ; $7fa8: $03
    rst $38                                       ; $7fa9: $ff
    ld a, [$0802]                                 ; $7faa: $fa $02 $08
    add h                                         ; $7fad: $84
    ld e, $16                                     ; $7fae: $1e $16
    dec bc                                        ; $7fb0: $0b
    dec c                                         ; $7fb1: $0d
    ld [bc], a                                    ; $7fb2: $02
    ld [bc], a                                    ; $7fb3: $02
    jr jr_0f3_7fb6                                ; $7fb4: $18 $00

jr_0f3_7fb6:
    rst $38                                       ; $7fb6: $ff
    add hl, bc                                    ; $7fb7: $09
    ld [bc], a                                    ; $7fb8: $02
    cp $0b                                        ; $7fb9: $fe $0b
    db $fd                                        ; $7fbb: $fd
    inc bc                                        ; $7fbc: $03
    cp $fd                                        ; $7fbd: $fe $fd
    cp $fe                                        ; $7fbf: $fe $fe
    ld [bc], a                                    ; $7fc1: $02
    db $10                                        ; $7fc2: $10
    adc b                                         ; $7fc3: $88
    ld a, b                                       ; $7fc4: $78
    ld l, b                                       ; $7fc5: $68
    db $f4                                        ; $7fc6: $f4
    or h                                          ; $7fc7: $b4
    ld c, [hl]                                    ; $7fc8: $4e
    ld c, d                                       ; $7fc9: $4a
    nop                                           ; $7fca: $00
    inc b                                         ; $7fcb: $04
    inc e                                         ; $7fcc: $1c
    nop                                           ; $7fcd: $00
    ld [bc], a                                    ; $7fce: $02
    ld bc, $0018                                  ; $7fcf: $01 $18 $00
    rst $38                                       ; $7fd2: $ff
    add hl, bc                                    ; $7fd3: $09
    ld [bc], a                                    ; $7fd4: $02
    cp $0b                                        ; $7fd5: $fe $0b
    db $fd                                        ; $7fd7: $fd
    inc bc                                        ; $7fd8: $03
    cp $fd                                        ; $7fd9: $fe $fd
    cp $00                                        ; $7fdb: $fe $00
    ld [bc], a                                    ; $7fdd: $02
    ld [$5c88], sp                                ; $7fde: $08 $88 $5c
    ld d, h                                       ; $7fe1: $54
    jp hl                                         ; $7fe2: $e9


    xor c                                         ; $7fe3: $a9
    ld d, e                                       ; $7fe4: $53
    ld d, d                                       ; $7fe5: $52
    add hl, sp                                    ; $7fe6: $39
    add hl, hl                                    ; $7fe7: $29
    ld [bc], a                                    ; $7fe8: $02
    db $10                                        ; $7fe9: $10
    dec de                                        ; $7fea: $1b
    nop                                           ; $7feb: $00
    add c                                         ; $7fec: $81
    dec b                                         ; $7fed: $05
    jr jr_0f3_7ff0                                ; $7fee: $18 $00

jr_0f3_7ff0:
    rst $38                                       ; $7ff0: $ff
    rst $38                                       ; $7ff1: $ff
    rst $38                                       ; $7ff2: $ff
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
