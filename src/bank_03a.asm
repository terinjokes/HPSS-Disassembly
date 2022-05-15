; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $03a", ROMX[$4000], BANK[$3a]

    ld a, [hl-]                                   ; $4000: $3a
    nop                                           ; $4001: $00
    and l                                         ; $4002: $a5
    inc h                                         ; $4003: $24
    nop                                           ; $4004: $00
    or e                                          ; $4005: $b3
    inc h                                         ; $4006: $24
    nop                                           ; $4007: $00
    ret nz                                        ; $4008: $c0

    inc h                                         ; $4009: $24
    nop                                           ; $400a: $00
    db $db                                        ; $400b: $db
    inc h                                         ; $400c: $24
    nop                                           ; $400d: $00
    pop hl                                        ; $400e: $e1
    inc h                                         ; $400f: $24
    nop                                           ; $4010: $00
    push hl                                       ; $4011: $e5
    inc h                                         ; $4012: $24
    nop                                           ; $4013: $00
    db $eb                                        ; $4014: $eb
    inc h                                         ; $4015: $24
    nop                                           ; $4016: $00
    rst $28                                       ; $4017: $ef
    inc h                                         ; $4018: $24
    nop                                           ; $4019: $00
    ei                                            ; $401a: $fb
    inc h                                         ; $401b: $24
    nop                                           ; $401c: $00
    ld b, $25                                     ; $401d: $06 $25
    nop                                           ; $401f: $00
    rrca                                          ; $4020: $0f
    dec h                                         ; $4021: $25
    nop                                           ; $4022: $00
    jr jr_03a_404a                                ; $4023: $18 $25

    nop                                           ; $4025: $00
    ld [hl+], a                                   ; $4026: $22
    dec h                                         ; $4027: $25
    nop                                           ; $4028: $00
    dec l                                         ; $4029: $2d
    dec h                                         ; $402a: $25
    nop                                           ; $402b: $00
    jr c, jr_03a_4053                             ; $402c: $38 $25

    nop                                           ; $402e: $00
    ld b, e                                       ; $402f: $43
    dec h                                         ; $4030: $25
    nop                                           ; $4031: $00
    ld c, a                                       ; $4032: $4f
    dec h                                         ; $4033: $25
    nop                                           ; $4034: $00
    ld e, e                                       ; $4035: $5b
    dec h                                         ; $4036: $25
    nop                                           ; $4037: $00
    ld l, b                                       ; $4038: $68
    dec h                                         ; $4039: $25
    nop                                           ; $403a: $00
    ld [hl], c                                    ; $403b: $71
    dec h                                         ; $403c: $25
    nop                                           ; $403d: $00
    ld a, d                                       ; $403e: $7a
    dec h                                         ; $403f: $25
    nop                                           ; $4040: $00
    add e                                         ; $4041: $83
    dec h                                         ; $4042: $25
    nop                                           ; $4043: $00
    sub b                                         ; $4044: $90
    dec h                                         ; $4045: $25
    nop                                           ; $4046: $00
    sbc h                                         ; $4047: $9c
    dec h                                         ; $4048: $25
    nop                                           ; $4049: $00

jr_03a_404a:
    and a                                         ; $404a: $a7
    dec h                                         ; $404b: $25
    nop                                           ; $404c: $00
    or h                                          ; $404d: $b4
    dec h                                         ; $404e: $25
    nop                                           ; $404f: $00
    cp a                                          ; $4050: $bf
    dec h                                         ; $4051: $25
    nop                                           ; $4052: $00

jr_03a_4053:
    ret c                                         ; $4053: $d8

    dec h                                         ; $4054: $25
    nop                                           ; $4055: $00
    nop                                           ; $4056: $00
    ld h, $00                                     ; $4057: $26 $00
    dec bc                                        ; $4059: $0b
    ld h, $00                                     ; $405a: $26 $00
    inc h                                         ; $405c: $24
    ld h, $00                                     ; $405d: $26 $00
    add hl, sp                                    ; $405f: $39
    ld h, $00                                     ; $4060: $26 $00
    and d                                         ; $4062: $a2
    ld h, $00                                     ; $4063: $26 $00
    db $eb                                        ; $4065: $eb
    ld h, $00                                     ; $4066: $26 $00
    rst $38                                       ; $4068: $ff
    ld h, $00                                     ; $4069: $26 $00
    dec d                                         ; $406b: $15
    daa                                           ; $406c: $27
    nop                                           ; $406d: $00
    ld l, $27                                     ; $406e: $2e $27
    nop                                           ; $4070: $00
    ld c, e                                       ; $4071: $4b
    daa                                           ; $4072: $27
    nop                                           ; $4073: $00
    ld h, d                                       ; $4074: $62
    daa                                           ; $4075: $27
    nop                                           ; $4076: $00
    add e                                         ; $4077: $83
    daa                                           ; $4078: $27
    nop                                           ; $4079: $00
    sbc a                                         ; $407a: $9f
    daa                                           ; $407b: $27
    nop                                           ; $407c: $00
    cp l                                          ; $407d: $bd
    daa                                           ; $407e: $27
    nop                                           ; $407f: $00
    jp c, Jump_000_0027                           ; $4080: $da $27 $00

    inc b                                         ; $4083: $04
    jr z, jr_03a_4086                             ; $4084: $28 $00

jr_03a_4086:
    ld c, $28                                     ; $4086: $0e $28
    nop                                           ; $4088: $00
    dec hl                                        ; $4089: $2b
    jr z, jr_03a_408c                             ; $408a: $28 $00

jr_03a_408c:
    ld b, l                                       ; $408c: $45
    jr z, jr_03a_408f                             ; $408d: $28 $00

jr_03a_408f:
    ld d, l                                       ; $408f: $55
    jr z, jr_03a_4092                             ; $4090: $28 $00

jr_03a_4092:
    adc b                                         ; $4092: $88
    jr z, jr_03a_4095                             ; $4093: $28 $00

jr_03a_4095:
    and b                                         ; $4095: $a0
    jr z, jr_03a_4098                             ; $4096: $28 $00

jr_03a_4098:
    or b                                          ; $4098: $b0
    jr z, jr_03a_409b                             ; $4099: $28 $00

jr_03a_409b:
    cp d                                          ; $409b: $ba
    jr z, jr_03a_409e                             ; $409c: $28 $00

jr_03a_409e:
    ret                                           ; $409e: $c9


    jr z, jr_03a_40a1                             ; $409f: $28 $00

jr_03a_40a1:
    rst $18                                       ; $40a1: $df
    jr z, jr_03a_40a4                             ; $40a2: $28 $00

jr_03a_40a4:
    inc b                                         ; $40a4: $04
    add hl, hl                                    ; $40a5: $29
    nop                                           ; $40a6: $00
    ld c, b                                       ; $40a7: $48
    add hl, hl                                    ; $40a8: $29
    nop                                           ; $40a9: $00
    ld [hl], d                                    ; $40aa: $72
    add hl, hl                                    ; $40ab: $29
    nop                                           ; $40ac: $00
    adc a                                         ; $40ad: $8f
    add hl, hl                                    ; $40ae: $29
    nop                                           ; $40af: $00
    or a                                          ; $40b0: $b7
    add hl, hl                                    ; $40b1: $29
    nop                                           ; $40b2: $00
    jp nc, Jump_000_0029                          ; $40b3: $d2 $29 $00

    cp $29                                        ; $40b6: $fe $29
    nop                                           ; $40b8: $00
    dec e                                         ; $40b9: $1d
    ld a, [hl+]                                   ; $40ba: $2a
    nop                                           ; $40bb: $00
    dec [hl]                                      ; $40bc: $35
    ld a, [hl+]                                   ; $40bd: $2a
    nop                                           ; $40be: $00
    ld e, d                                       ; $40bf: $5a
    ld a, [hl+]                                   ; $40c0: $2a
    nop                                           ; $40c1: $00
    ld l, l                                       ; $40c2: $6d
    ld a, [hl+]                                   ; $40c3: $2a
    nop                                           ; $40c4: $00
    or c                                          ; $40c5: $b1
    ld a, [hl+]                                   ; $40c6: $2a
    nop                                           ; $40c7: $00
    ret                                           ; $40c8: $c9


    ld a, [hl+]                                   ; $40c9: $2a
    nop                                           ; $40ca: $00
    inc l                                         ; $40cb: $2c
    dec hl                                        ; $40cc: $2b
    nop                                           ; $40cd: $00
    ccf                                           ; $40ce: $3f
    dec hl                                        ; $40cf: $2b
    nop                                           ; $40d0: $00
    ld h, a                                       ; $40d1: $67
    dec hl                                        ; $40d2: $2b
    nop                                           ; $40d3: $00
    ld [hl], e                                    ; $40d4: $73
    dec hl                                        ; $40d5: $2b
    nop                                           ; $40d6: $00
    ld a, l                                       ; $40d7: $7d
    dec hl                                        ; $40d8: $2b
    nop                                           ; $40d9: $00
    sub c                                         ; $40da: $91
    dec hl                                        ; $40db: $2b
    nop                                           ; $40dc: $00
    cp c                                          ; $40dd: $b9
    dec hl                                        ; $40de: $2b
    nop                                           ; $40df: $00
    pop de                                        ; $40e0: $d1
    dec hl                                        ; $40e1: $2b
    nop                                           ; $40e2: $00
    ret c                                         ; $40e3: $d8

    dec hl                                        ; $40e4: $2b
    nop                                           ; $40e5: $00
    call c, $002b                                 ; $40e6: $dc $2b $00
    ld [c], a                                     ; $40e9: $e2
    dec hl                                        ; $40ea: $2b
    nop                                           ; $40eb: $00
    dec c                                         ; $40ec: $0d
    inc l                                         ; $40ed: $2c
    nop                                           ; $40ee: $00
    inc [hl]                                      ; $40ef: $34
    inc l                                         ; $40f0: $2c
    nop                                           ; $40f1: $00
    ld e, d                                       ; $40f2: $5a
    inc l                                         ; $40f3: $2c
    nop                                           ; $40f4: $00
    xor c                                         ; $40f5: $a9
    inc l                                         ; $40f6: $2c
    nop                                           ; $40f7: $00
    call nc, $002c                                ; $40f8: $d4 $2c $00
    ld a, [bc]                                    ; $40fb: $0a
    dec l                                         ; $40fc: $2d
    nop                                           ; $40fd: $00
    cpl                                           ; $40fe: $2f
    dec l                                         ; $40ff: $2d
    nop                                           ; $4100: $00
    ld c, e                                       ; $4101: $4b
    dec l                                         ; $4102: $2d
    nop                                           ; $4103: $00
    adc [hl]                                      ; $4104: $8e
    dec l                                         ; $4105: $2d
    nop                                           ; $4106: $00
    sbc b                                         ; $4107: $98
    dec l                                         ; $4108: $2d
    nop                                           ; $4109: $00
    cp a                                          ; $410a: $bf
    dec l                                         ; $410b: $2d
    nop                                           ; $410c: $00
    jp nc, $002d                                  ; $410d: $d2 $2d $00

    db $f4                                        ; $4110: $f4
    dec l                                         ; $4111: $2d
    nop                                           ; $4112: $00
    inc b                                         ; $4113: $04
    ld l, $00                                     ; $4114: $2e $00
    dec a                                         ; $4116: $3d
    ld l, $00                                     ; $4117: $2e $00
    add c                                         ; $4119: $81
    ld l, $00                                     ; $411a: $2e $00
    or b                                          ; $411c: $b0
    ld l, $00                                     ; $411d: $2e $00
    ld [$002e], a                                 ; $411f: $ea $2e $00
    ld b, c                                       ; $4122: $41
    cpl                                           ; $4123: $2f
    nop                                           ; $4124: $00
    ld c, [hl]                                    ; $4125: $4e
    cpl                                           ; $4126: $2f
    nop                                           ; $4127: $00
    and b                                         ; $4128: $a0
    cpl                                           ; $4129: $2f
    nop                                           ; $412a: $00
    or [hl]                                       ; $412b: $b6
    cpl                                           ; $412c: $2f
    nop                                           ; $412d: $00
    ret c                                         ; $412e: $d8

    cpl                                           ; $412f: $2f
    nop                                           ; $4130: $00
    push af                                       ; $4131: $f5
    cpl                                           ; $4132: $2f
    nop                                           ; $4133: $00
    rst $38                                       ; $4134: $ff
    cpl                                           ; $4135: $2f
    nop                                           ; $4136: $00
    inc l                                         ; $4137: $2c
    jr nc, jr_03a_413a                            ; $4138: $30 $00

jr_03a_413a:
    ld l, c                                       ; $413a: $69
    jr nc, jr_03a_413d                            ; $413b: $30 $00

jr_03a_413d:
    ld l, l                                       ; $413d: $6d
    jr nc, jr_03a_4140                            ; $413e: $30 $00

jr_03a_4140:
    sub h                                         ; $4140: $94
    jr nc, jr_03a_4143                            ; $4141: $30 $00

jr_03a_4143:
    ret nz                                        ; $4143: $c0

    jr nc, jr_03a_4146                            ; $4144: $30 $00

jr_03a_4146:
    jp z, RST_30                                  ; $4146: $ca $30 $00

    db $e4                                        ; $4149: $e4
    jr nc, jr_03a_414c                            ; $414a: $30 $00

jr_03a_414c:
    rst $30                                       ; $414c: $f7
    jr nc, jr_03a_414f                            ; $414d: $30 $00

jr_03a_414f:
    jr nz, jr_03a_4182                            ; $414f: $20 $31

    nop                                           ; $4151: $00
    dec [hl]                                      ; $4152: $35
    ld sp, $9600                                  ; $4153: $31 $00 $96
    ld sp, $b600                                  ; $4156: $31 $00 $b6
    ld sp, $c000                                  ; $4159: $31 $00 $c0
    ld sp, $dd00                                  ; $415c: $31 $00 $dd
    ld sp, $e800                                  ; $415f: $31 $00 $e8
    ld sp, $2600                                  ; $4162: $31 $00 $26
    ld [hl-], a                                   ; $4165: $32
    nop                                           ; $4166: $00
    ld c, d                                       ; $4167: $4a
    ld [hl-], a                                   ; $4168: $32
    nop                                           ; $4169: $00
    ld d, a                                       ; $416a: $57
    ld [hl-], a                                   ; $416b: $32
    nop                                           ; $416c: $00
    ld a, b                                       ; $416d: $78
    ld [hl-], a                                   ; $416e: $32
    nop                                           ; $416f: $00
    adc [hl]                                      ; $4170: $8e
    ld [hl-], a                                   ; $4171: $32
    nop                                           ; $4172: $00
    xor b                                         ; $4173: $a8
    ld [hl-], a                                   ; $4174: $32
    nop                                           ; $4175: $00
    cp l                                          ; $4176: $bd
    ld [hl-], a                                   ; $4177: $32
    nop                                           ; $4178: $00
    ldh [$32], a                                  ; $4179: $e0 $32
    nop                                           ; $417b: $00
    db $ec                                        ; $417c: $ec
    ld [hl-], a                                   ; $417d: $32
    nop                                           ; $417e: $00
    ld bc, $0033                                  ; $417f: $01 $33 $00

jr_03a_4182:
    add hl, bc                                    ; $4182: $09
    inc sp                                        ; $4183: $33
    nop                                           ; $4184: $00
    dec d                                         ; $4185: $15
    inc sp                                        ; $4186: $33
    nop                                           ; $4187: $00
    inc hl                                        ; $4188: $23
    inc sp                                        ; $4189: $33
    nop                                           ; $418a: $00
    dec l                                         ; $418b: $2d
    inc sp                                        ; $418c: $33
    nop                                           ; $418d: $00
    ld a, [hl-]                                   ; $418e: $3a
    inc sp                                        ; $418f: $33
    nop                                           ; $4190: $00
    ld c, b                                       ; $4191: $48
    inc sp                                        ; $4192: $33
    nop                                           ; $4193: $00
    ld d, a                                       ; $4194: $57
    inc sp                                        ; $4195: $33
    nop                                           ; $4196: $00
    ld e, [hl]                                    ; $4197: $5e
    inc sp                                        ; $4198: $33
    nop                                           ; $4199: $00
    ld h, l                                       ; $419a: $65
    inc sp                                        ; $419b: $33
    nop                                           ; $419c: $00
    adc b                                         ; $419d: $88
    inc sp                                        ; $419e: $33
    nop                                           ; $419f: $00
    swap e                                        ; $41a0: $cb $33
    nop                                           ; $41a2: $00
    pop af                                        ; $41a3: $f1
    inc sp                                        ; $41a4: $33
    nop                                           ; $41a5: $00
    ld bc, $0034                                  ; $41a6: $01 $34 $00
    ld d, $34                                     ; $41a9: $16 $34
    nop                                           ; $41ab: $00
    daa                                           ; $41ac: $27
    inc [hl]                                      ; $41ad: $34
    nop                                           ; $41ae: $00
    ld b, l                                       ; $41af: $45
    inc [hl]                                      ; $41b0: $34
    nop                                           ; $41b1: $00
    ld l, d                                       ; $41b2: $6a
    inc [hl]                                      ; $41b3: $34
    nop                                           ; $41b4: $00
    add b                                         ; $41b5: $80
    inc [hl]                                      ; $41b6: $34
    nop                                           ; $41b7: $00
    or e                                          ; $41b8: $b3
    inc [hl]                                      ; $41b9: $34
    nop                                           ; $41ba: $00
    cp e                                          ; $41bb: $bb
    inc [hl]                                      ; $41bc: $34
    nop                                           ; $41bd: $00
    jp nc, Jump_000_0034                          ; $41be: $d2 $34 $00

    ld c, $35                                     ; $41c1: $0e $35
    nop                                           ; $41c3: $00
    ld h, $35                                     ; $41c4: $26 $35
    nop                                           ; $41c6: $00
    ld b, d                                       ; $41c7: $42
    dec [hl]                                      ; $41c8: $35
    nop                                           ; $41c9: $00
    ld e, e                                       ; $41ca: $5b
    dec [hl]                                      ; $41cb: $35
    nop                                           ; $41cc: $00
    ld [hl], e                                    ; $41cd: $73
    dec [hl]                                      ; $41ce: $35
    nop                                           ; $41cf: $00
    add a                                         ; $41d0: $87
    dec [hl]                                      ; $41d1: $35
    nop                                           ; $41d2: $00
    xor c                                         ; $41d3: $a9
    dec [hl]                                      ; $41d4: $35
    nop                                           ; $41d5: $00
    or d                                          ; $41d6: $b2
    dec [hl]                                      ; $41d7: $35
    nop                                           ; $41d8: $00
    pop de                                        ; $41d9: $d1
    dec [hl]                                      ; $41da: $35
    nop                                           ; $41db: $00
    pop af                                        ; $41dc: $f1
    dec [hl]                                      ; $41dd: $35
    nop                                           ; $41de: $00
    cp $35                                        ; $41df: $fe $35
    nop                                           ; $41e1: $00
    ld de, $0036                                  ; $41e2: $11 $36 $00
    inc hl                                        ; $41e5: $23
    ld [hl], $00                                  ; $41e6: $36 $00
    ld b, [hl]                                    ; $41e8: $46
    ld [hl], $00                                  ; $41e9: $36 $00
    ld [hl], c                                    ; $41eb: $71
    ld [hl], $00                                  ; $41ec: $36 $00
    sbc a                                         ; $41ee: $9f
    ld [hl], $00                                  ; $41ef: $36 $00
    ret                                           ; $41f1: $c9


    ld [hl], $00                                  ; $41f2: $36 $00
    db $ec                                        ; $41f4: $ec
    ld [hl], $00                                  ; $41f5: $36 $00
    dec b                                         ; $41f7: $05
    scf                                           ; $41f8: $37
    nop                                           ; $41f9: $00
    rra                                           ; $41fa: $1f
    scf                                           ; $41fb: $37
    nop                                           ; $41fc: $00
    ld [hl], $37                                  ; $41fd: $36 $37
    nop                                           ; $41ff: $00
    ld c, e                                       ; $4200: $4b
    scf                                           ; $4201: $37
    nop                                           ; $4202: $00
    ld h, h                                       ; $4203: $64
    scf                                           ; $4204: $37
    nop                                           ; $4205: $00
    ld a, e                                       ; $4206: $7b
    scf                                           ; $4207: $37
    nop                                           ; $4208: $00
    adc c                                         ; $4209: $89
    scf                                           ; $420a: $37
    nop                                           ; $420b: $00
    and a                                         ; $420c: $a7
    scf                                           ; $420d: $37
    nop                                           ; $420e: $00
    cp d                                          ; $420f: $ba
    scf                                           ; $4210: $37
    nop                                           ; $4211: $00
    db $d3                                        ; $4212: $d3
    scf                                           ; $4213: $37
    nop                                           ; $4214: $00
    rst $20                                       ; $4215: $e7
    scf                                           ; $4216: $37
    nop                                           ; $4217: $00
    ld hl, sp+$37                                 ; $4218: $f8 $37
    nop                                           ; $421a: $00
    ld c, $38                                     ; $421b: $0e $38
    nop                                           ; $421d: $00
    rra                                           ; $421e: $1f
    jr c, jr_03a_4221                             ; $421f: $38 $00

jr_03a_4221:
    inc [hl]                                      ; $4221: $34
    jr c, jr_03a_4224                             ; $4222: $38 $00

jr_03a_4224:
    ld l, c                                       ; $4224: $69
    jr c, jr_03a_4227                             ; $4225: $38 $00

jr_03a_4227:
    ld a, c                                       ; $4227: $79
    jr c, jr_03a_422a                             ; $4228: $38 $00

jr_03a_422a:
    sbc b                                         ; $422a: $98
    jr c, jr_03a_422d                             ; $422b: $38 $00

jr_03a_422d:
    and [hl]                                      ; $422d: $a6
    jr c, jr_03a_4230                             ; $422e: $38 $00

jr_03a_4230:
    or e                                          ; $4230: $b3
    jr c, jr_03a_4233                             ; $4231: $38 $00

jr_03a_4233:
    cp a                                          ; $4233: $bf
    jr c, jr_03a_4236                             ; $4234: $38 $00

jr_03a_4236:
    ret c                                         ; $4236: $d8

    jr c, jr_03a_4239                             ; $4237: $38 $00

jr_03a_4239:
    ld [$0038], a                                 ; $4239: $ea $38 $00
    ld b, $39                                     ; $423c: $06 $39
    nop                                           ; $423e: $00
    ld d, $39                                     ; $423f: $16 $39
    nop                                           ; $4241: $00
    ld a, $39                                     ; $4242: $3e $39
    nop                                           ; $4244: $00
    ld d, b                                       ; $4245: $50
    add hl, sp                                    ; $4246: $39
    nop                                           ; $4247: $00
    ld h, a                                       ; $4248: $67
    add hl, sp                                    ; $4249: $39
    nop                                           ; $424a: $00
    xor c                                         ; $424b: $a9
    add hl, sp                                    ; $424c: $39
    nop                                           ; $424d: $00
    pop bc                                        ; $424e: $c1
    add hl, sp                                    ; $424f: $39
    nop                                           ; $4250: $00
    jp c, Jump_000_0039                           ; $4251: $da $39 $00

    add sp, $39                                   ; $4254: $e8 $39
    nop                                           ; $4256: $00
    pop af                                        ; $4257: $f1
    add hl, sp                                    ; $4258: $39
    nop                                           ; $4259: $00
    dec bc                                        ; $425a: $0b
    ld a, [hl-]                                   ; $425b: $3a
    nop                                           ; $425c: $00
    dec sp                                        ; $425d: $3b
    ld a, [hl-]                                   ; $425e: $3a
    nop                                           ; $425f: $00
    ld b, l                                       ; $4260: $45
    ld a, [hl-]                                   ; $4261: $3a
    nop                                           ; $4262: $00
    halt                                          ; $4263: $76
    ld a, [hl-]                                   ; $4264: $3a
    nop                                           ; $4265: $00
    add h                                         ; $4266: $84
    ld a, [hl-]                                   ; $4267: $3a
    nop                                           ; $4268: $00
    cp a                                          ; $4269: $bf
    ld a, [hl-]                                   ; $426a: $3a
    nop                                           ; $426b: $00
    ldh [$3a], a                                  ; $426c: $e0 $3a
    nop                                           ; $426e: $00
    jp hl                                         ; $426f: $e9


    ld a, [hl-]                                   ; $4270: $3a
    nop                                           ; $4271: $00
    rlca                                          ; $4272: $07
    dec sp                                        ; $4273: $3b
    nop                                           ; $4274: $00
    ld sp, $003b                                  ; $4275: $31 $3b $00
    inc [hl]                                      ; $4278: $34
    dec sp                                        ; $4279: $3b
    nop                                           ; $427a: $00
    ld d, c                                       ; $427b: $51
    dec sp                                        ; $427c: $3b
    nop                                           ; $427d: $00
    ld e, e                                       ; $427e: $5b
    dec sp                                        ; $427f: $3b
    nop                                           ; $4280: $00
    ld [hl], d                                    ; $4281: $72
    dec sp                                        ; $4282: $3b
    nop                                           ; $4283: $00
    ld a, e                                       ; $4284: $7b
    dec sp                                        ; $4285: $3b
    nop                                           ; $4286: $00
    add h                                         ; $4287: $84
    dec sp                                        ; $4288: $3b
    nop                                           ; $4289: $00
    jr z, jr_03a_42c8                             ; $428a: $28 $3c

    nop                                           ; $428c: $00
    ld b, [hl]                                    ; $428d: $46
    inc a                                         ; $428e: $3c
    nop                                           ; $428f: $00
    adc l                                         ; $4290: $8d
    inc a                                         ; $4291: $3c
    nop                                           ; $4292: $00
    and e                                         ; $4293: $a3
    inc a                                         ; $4294: $3c
    nop                                           ; $4295: $00
    ret z                                         ; $4296: $c8

    inc a                                         ; $4297: $3c
    nop                                           ; $4298: $00
    db $f4                                        ; $4299: $f4
    inc a                                         ; $429a: $3c
    nop                                           ; $429b: $00
    ld c, $3d                                     ; $429c: $0e $3d
    nop                                           ; $429e: $00
    ld [hl], l                                    ; $429f: $75
    dec a                                         ; $42a0: $3d
    nop                                           ; $42a1: $00
    ret nz                                        ; $42a2: $c0

    dec a                                         ; $42a3: $3d
    nop                                           ; $42a4: $00
    ld a, [c]                                     ; $42a5: $f2
    dec a                                         ; $42a6: $3d
    nop                                           ; $42a7: $00
    dec de                                        ; $42a8: $1b
    ld a, $00                                     ; $42a9: $3e $00
    ld c, h                                       ; $42ab: $4c
    ld a, $00                                     ; $42ac: $3e $00
    ld l, c                                       ; $42ae: $69
    ld a, $00                                     ; $42af: $3e $00
    cp l                                          ; $42b1: $bd
    ld a, $00                                     ; $42b2: $3e $00
    pop de                                        ; $42b4: $d1
    ld a, $00                                     ; $42b5: $3e $00
    add sp, $3e                                   ; $42b7: $e8 $3e
    nop                                           ; $42b9: $00
    rlca                                          ; $42ba: $07
    ccf                                           ; $42bb: $3f
    nop                                           ; $42bc: $00
    dec l                                         ; $42bd: $2d
    ccf                                           ; $42be: $3f
    nop                                           ; $42bf: $00
    ld d, b                                       ; $42c0: $50
    ccf                                           ; $42c1: $3f
    nop                                           ; $42c2: $00
    ld [hl], b                                    ; $42c3: $70
    ccf                                           ; $42c4: $3f
    nop                                           ; $42c5: $00
    add l                                         ; $42c6: $85
    ccf                                           ; $42c7: $3f

jr_03a_42c8:
    nop                                           ; $42c8: $00
    adc h                                         ; $42c9: $8c
    ccf                                           ; $42ca: $3f
    nop                                           ; $42cb: $00
    xor c                                         ; $42cc: $a9
    ccf                                           ; $42cd: $3f
    nop                                           ; $42ce: $00
    xor [hl]                                      ; $42cf: $ae
    ccf                                           ; $42d0: $3f
    nop                                           ; $42d1: $00

Call_03a_42d2:
    or e                                          ; $42d2: $b3
    ccf                                           ; $42d3: $3f
    ld bc, $0001                                  ; $42d4: $01 $01 $00
    ld bc, $001e                                  ; $42d7: $01 $1e $00
    ld bc, $0041                                  ; $42da: $01 $41 $00
    ld bc, $0051                                  ; $42dd: $01 $51 $00
    ld bc, $007b                                  ; $42e0: $01 $7b $00
    ld bc, $0083                                  ; $42e3: $01 $83 $00
    ld bc, $00a3                                  ; $42e6: $01 $a3 $00
    ld bc, $00b7                                  ; $42e9: $01 $b7 $00
    ld bc, $00e4                                  ; $42ec: $01 $e4 $00
    ld bc, $0123                                  ; $42ef: $01 $23 $01
    ld bc, $0135                                  ; $42f2: $01 $35 $01
    ld bc, $0141                                  ; $42f5: $01 $41 $01
    ld bc, $0155                                  ; $42f8: $01 $55 $01
    ld bc, $0170                                  ; $42fb: $01 $70 $01
    ld bc, $0184                                  ; $42fe: $01 $84 $01
    ld bc, $019c                                  ; $4301: $01 $9c $01
    ld bc, $01cd                                  ; $4304: $01 $cd $01
    ld bc, $01db                                  ; $4307: $01 $db $01
    ld bc, $0245                                  ; $430a: $01 $45 $02
    ld bc, $0252                                  ; $430d: $01 $52 $02
    ld bc, $0269                                  ; $4310: $01 $69 $02
    ld bc, $0274                                  ; $4313: $01 $74 $02
    ld bc, $0294                                  ; $4316: $01 $94 $02
    ld bc, $02a6                                  ; $4319: $01 $a6 $02
    ld bc, $02cd                                  ; $431c: $01 $cd $02
    ld bc, $02de                                  ; $431f: $01 $de $02
    ld bc, $02f3                                  ; $4322: $01 $f3 $02
    ld bc, $0358                                  ; $4325: $01 $58 $03
    ld bc, $036c                                  ; $4328: $01 $6c $03
    ld bc, $0383                                  ; $432b: $01 $83 $03
    ld bc, $03ab                                  ; $432e: $01 $ab $03
    ld bc, $03bf                                  ; $4331: $01 $bf $03
    ld bc, $03e8                                  ; $4334: $01 $e8 $03
    ld bc, $03f9                                  ; $4337: $01 $f9 $03
    ld bc, $041a                                  ; $433a: $01 $1a $04
    ld bc, $0431                                  ; $433d: $01 $31 $04
    ld bc, $044d                                  ; $4340: $01 $4d $04
    ld bc, $0466                                  ; $4343: $01 $66 $04
    ld bc, $0484                                  ; $4346: $01 $84 $04
    ld bc, $051f                                  ; $4349: $01 $1f $05
    ld bc, $0536                                  ; $434c: $01 $36 $05
    ld bc, $057d                                  ; $434f: $01 $7d $05
    ld bc, $058f                                  ; $4352: $01 $8f $05
    ld bc, $05a8                                  ; $4355: $01 $a8 $05
    ld bc, $05b6                                  ; $4358: $01 $b6 $05
    ld bc, $0602                                  ; $435b: $01 $02 $06
    ld bc, $066c                                  ; $435e: $01 $6c $06
    ld bc, $0686                                  ; $4361: $01 $86 $06
    ld bc, $0696                                  ; $4364: $01 $96 $06
    ld bc, $06b3                                  ; $4367: $01 $b3 $06
    ld bc, $06c1                                  ; $436a: $01 $c1 $06
    ld bc, $06d5                                  ; $436d: $01 $d5 $06
    ld bc, $06ed                                  ; $4370: $01 $ed $06
    ld bc, $06ff                                  ; $4373: $01 $ff $06
    ld bc, $070b                                  ; $4376: $01 $0b $07
    ld bc, $0719                                  ; $4379: $01 $19 $07
    ld bc, $0724                                  ; $437c: $01 $24 $07
    ld bc, $0730                                  ; $437f: $01 $30 $07
    ld bc, $0743                                  ; $4382: $01 $43 $07
    ld bc, $0768                                  ; $4385: $01 $68 $07
    ld bc, $078f                                  ; $4388: $01 $8f $07
    ld bc, $07b7                                  ; $438b: $01 $b7 $07
    ld bc, $07c5                                  ; $438e: $01 $c5 $07
    ld bc, $07e7                                  ; $4391: $01 $e7 $07
    ld bc, $0816                                  ; $4394: $01 $16 $08
    ld bc, $0841                                  ; $4397: $01 $41 $08
    ld bc, $0855                                  ; $439a: $01 $55 $08
    ld bc, $0866                                  ; $439d: $01 $66 $08
    ld bc, $0878                                  ; $43a0: $01 $78 $08
    ld bc, $088a                                  ; $43a3: $01 $8a $08
    ld bc, $089b                                  ; $43a6: $01 $9b $08
    ld bc, $08b5                                  ; $43a9: $01 $b5 $08
    ld bc, $08c3                                  ; $43ac: $01 $c3 $08
    ld bc, $08d0                                  ; $43af: $01 $d0 $08
    ld bc, $08e0                                  ; $43b2: $01 $e0 $08
    ld bc, $08fe                                  ; $43b5: $01 $fe $08
    ld bc, $093f                                  ; $43b8: $01 $3f $09
    ld bc, $095d                                  ; $43bb: $01 $5d $09
    ld bc, $0960                                  ; $43be: $01 $60 $09
    ld bc, $097d                                  ; $43c1: $01 $7d $09
    ld bc, $098e                                  ; $43c4: $01 $8e $09
    ld bc, $09ab                                  ; $43c7: $01 $ab $09
    ld bc, $09ba                                  ; $43ca: $01 $ba $09
    ld bc, $09ce                                  ; $43cd: $01 $ce $09
    ld bc, $09f1                                  ; $43d0: $01 $f1 $09
    ld bc, $0a57                                  ; $43d3: $01 $57 $0a
    ld bc, $0a6f                                  ; $43d6: $01 $6f $0a
    ld bc, $0a7b                                  ; $43d9: $01 $7b $0a
    ld bc, $0a8d                                  ; $43dc: $01 $8d $0a
    ld bc, $0aa2                                  ; $43df: $01 $a2 $0a
    ld bc, $0ad9                                  ; $43e2: $01 $d9 $0a
    ld bc, $0afd                                  ; $43e5: $01 $fd $0a
    ld bc, $0b1c                                  ; $43e8: $01 $1c $0b
    ld bc, $0b4b                                  ; $43eb: $01 $4b $0b
    ld bc, $0b89                                  ; $43ee: $01 $89 $0b
    ld bc, $0bcd                                  ; $43f1: $01 $cd $0b
    ld bc, $0bfc                                  ; $43f4: $01 $fc $0b
    ld bc, $0c2a                                  ; $43f7: $01 $2a $0c
    ld bc, $0c5a                                  ; $43fa: $01 $5a $0c
    ld bc, $0c98                                  ; $43fd: $01 $98 $0c
    ld bc, $0cc4                                  ; $4400: $01 $c4 $0c
    ld bc, $0cf9                                  ; $4403: $01 $f9 $0c
    ld bc, $0d36                                  ; $4406: $01 $36 $0d
    ld bc, $0d74                                  ; $4409: $01 $74 $0d
    ld bc, $0d9f                                  ; $440c: $01 $9f $0d
    ld bc, $0dc8                                  ; $440f: $01 $c8 $0d
    ld bc, $0def                                  ; $4412: $01 $ef $0d
    ld bc, $0e31                                  ; $4415: $01 $31 $0e
    ld bc, $0e64                                  ; $4418: $01 $64 $0e
    ld bc, $0e9d                                  ; $441b: $01 $9d $0e
    ld bc, $0ed7                                  ; $441e: $01 $d7 $0e
    ld bc, $0f0d                                  ; $4421: $01 $0d $0f
    ld bc, $0f43                                  ; $4424: $01 $43 $0f
    ld bc, $0f82                                  ; $4427: $01 $82 $0f
    ld bc, $0faa                                  ; $442a: $01 $aa $0f
    ld bc, $0fea                                  ; $442d: $01 $ea $0f
    ld bc, $1016                                  ; $4430: $01 $16 $10
    ld bc, $1043                                  ; $4433: $01 $43 $10
    ld bc, $107a                                  ; $4436: $01 $7a $10
    ld bc, $10af                                  ; $4439: $01 $af $10
    ld bc, $10f2                                  ; $443c: $01 $f2 $10
    ld bc, $113b                                  ; $443f: $01 $3b $11
    ld bc, $117d                                  ; $4442: $01 $7d $11
    ld bc, $11a2                                  ; $4445: $01 $a2 $11
    ld bc, $11d3                                  ; $4448: $01 $d3 $11
    ld bc, $1203                                  ; $444b: $01 $03 $12
    ld bc, $123e                                  ; $444e: $01 $3e $12
    ld bc, $1284                                  ; $4451: $01 $84 $12
    ld bc, $12dc                                  ; $4454: $01 $dc $12
    ld bc, $1311                                  ; $4457: $01 $11 $13
    ld bc, $1345                                  ; $445a: $01 $45 $13
    ld bc, $1380                                  ; $445d: $01 $80 $13
    ld bc, $13b5                                  ; $4460: $01 $b5 $13
    ld bc, $13d9                                  ; $4463: $01 $d9 $13
    ld bc, $1406                                  ; $4466: $01 $06 $14
    ld bc, $143b                                  ; $4469: $01 $3b $14
    ld bc, $144d                                  ; $446c: $01 $4d $14
    ld bc, $1467                                  ; $446f: $01 $67 $14
    ld bc, $1476                                  ; $4472: $01 $76 $14
    ld bc, $1494                                  ; $4475: $01 $94 $14
    ld bc, $14ba                                  ; $4478: $01 $ba $14
    ld bc, $14c1                                  ; $447b: $01 $c1 $14
    ld bc, $14d4                                  ; $447e: $01 $d4 $14
    ld bc, $14d9                                  ; $4481: $01 $d9 $14
    ld bc, $1502                                  ; $4484: $01 $02 $15
    ld bc, $151d                                  ; $4487: $01 $1d $15
    ld bc, $1535                                  ; $448a: $01 $35 $15
    ld bc, $155d                                  ; $448d: $01 $5d $15
    ld bc, $156e                                  ; $4490: $01 $6e $15
    ld bc, $157a                                  ; $4493: $01 $7a $15
    ld bc, $15c8                                  ; $4496: $01 $c8 $15
    ld bc, $15ec                                  ; $4499: $01 $ec $15
    ld bc, $1619                                  ; $449c: $01 $19 $16
    ld bc, $1628                                  ; $449f: $01 $28 $16
    ld bc, $1646                                  ; $44a2: $01 $46 $16
    ld bc, $165b                                  ; $44a5: $01 $5b $16
    ld bc, $166d                                  ; $44a8: $01 $6d $16
    ld bc, $1678                                  ; $44ab: $01 $78 $16
    ld bc, $168c                                  ; $44ae: $01 $8c $16
    ld bc, $16a1                                  ; $44b1: $01 $a1 $16
    ld bc, $16be                                  ; $44b4: $01 $be $16
    ld bc, $16c8                                  ; $44b7: $01 $c8 $16
    ld bc, $16d7                                  ; $44ba: $01 $d7 $16
    ld bc, $16eb                                  ; $44bd: $01 $eb $16
    ld bc, $171d                                  ; $44c0: $01 $1d $17
    ld bc, $1737                                  ; $44c3: $01 $37 $17
    ld bc, $174e                                  ; $44c6: $01 $4e $17
    ld bc, $175e                                  ; $44c9: $01 $5e $17
    ld bc, $177e                                  ; $44cc: $01 $7e $17
    ld bc, $179e                                  ; $44cf: $01 $9e $17
    ld bc, $17a6                                  ; $44d2: $01 $a6 $17
    ld bc, $17c3                                  ; $44d5: $01 $c3 $17
    ld bc, $17d1                                  ; $44d8: $01 $d1 $17
    ld bc, $1810                                  ; $44db: $01 $10 $18
    ld bc, $1833                                  ; $44de: $01 $33 $18
    ld bc, $183d                                  ; $44e1: $01 $3d $18
    ld bc, $1850                                  ; $44e4: $01 $50 $18
    ld bc, $185a                                  ; $44e7: $01 $5a $18
    ld bc, $1898                                  ; $44ea: $01 $98 $18
    ld bc, $18a9                                  ; $44ed: $01 $a9 $18
    ld bc, $18c0                                  ; $44f0: $01 $c0 $18
    ld bc, $18d4                                  ; $44f3: $01 $d4 $18
    ld bc, $18e3                                  ; $44f6: $01 $e3 $18
    ld bc, $192c                                  ; $44f9: $01 $2c $19
    ld bc, $193f                                  ; $44fc: $01 $3f $19
    ld bc, $1951                                  ; $44ff: $01 $51 $19
    ld bc, $195a                                  ; $4502: $01 $5a $19
    ld bc, $1960                                  ; $4505: $01 $60 $19
    ld bc, $1978                                  ; $4508: $01 $78 $19
    ld bc, $1984                                  ; $450b: $01 $84 $19
    ld bc, $198d                                  ; $450e: $01 $8d $19
    ld bc, $1999                                  ; $4511: $01 $99 $19
    ld bc, $19b5                                  ; $4514: $01 $b5 $19
    ld bc, $19b9                                  ; $4517: $01 $b9 $19
    ld bc, $19d9                                  ; $451a: $01 $d9 $19
    ld bc, $19f8                                  ; $451d: $01 $f8 $19
    ld bc, $1a04                                  ; $4520: $01 $04 $1a
    ld bc, $1a26                                  ; $4523: $01 $26 $1a
    ld bc, $1a38                                  ; $4526: $01 $38 $1a
    ld bc, $1a6f                                  ; $4529: $01 $6f $1a
    ld bc, $1a8a                                  ; $452c: $01 $8a $1a
    ld bc, $1abc                                  ; $452f: $01 $bc $1a
    ld bc, $1af2                                  ; $4532: $01 $f2 $1a
    ld bc, $1b1f                                  ; $4535: $01 $1f $1b
    ld bc, $1b5f                                  ; $4538: $01 $5f $1b
    ld bc, $1b8f                                  ; $453b: $01 $8f $1b
    ld bc, $1bbb                                  ; $453e: $01 $bb $1b
    ld bc, $1c16                                  ; $4541: $01 $16 $1c
    ld bc, $1c3b                                  ; $4544: $01 $3b $1c
    ld bc, $1c8d                                  ; $4547: $01 $8d $1c
    ld bc, $1ca2                                  ; $454a: $01 $a2 $1c
    ld bc, $1cd4                                  ; $454d: $01 $d4 $1c
    ld bc, $1da6                                  ; $4550: $01 $a6 $1d
    ld bc, $1dcd                                  ; $4553: $01 $cd $1d
    ld bc, $1de8                                  ; $4556: $01 $e8 $1d
    ld bc, $1e0f                                  ; $4559: $01 $0f $1e
    ld bc, $1e33                                  ; $455c: $01 $33 $1e
    ld bc, $1e51                                  ; $455f: $01 $51 $1e
    ld bc, $1e5f                                  ; $4562: $01 $5f $1e
    ld bc, $1e9a                                  ; $4565: $01 $9a $1e
    ld bc, $1ea0                                  ; $4568: $01 $a0 $1e
    ld bc, $1eb5                                  ; $456b: $01 $b5 $1e
    ld bc, $1ef4                                  ; $456e: $01 $f4 $1e
    ld bc, $1f1d                                  ; $4571: $01 $1d $1f
    ld bc, $1f47                                  ; $4574: $01 $47 $1f
    ld bc, $1f59                                  ; $4577: $01 $59 $1f
    ld bc, $1f75                                  ; $457a: $01 $75 $1f
    ld bc, $1f9b                                  ; $457d: $01 $9b $1f
    ld bc, $1fbc                                  ; $4580: $01 $bc $1f
    ld bc, $1fe5                                  ; $4583: $01 $e5 $1f
    ld bc, $2001                                  ; $4586: $01 $01 $20
    ld bc, $2017                                  ; $4589: $01 $17 $20
    ld bc, $202d                                  ; $458c: $01 $2d $20
    ld bc, $2051                                  ; $458f: $01 $51 $20
    ld bc, $2060                                  ; $4592: $01 $60 $20
    ld bc, $2088                                  ; $4595: $01 $88 $20
    ld bc, $20ae                                  ; $4598: $01 $ae $20
    ld bc, $20bd                                  ; $459b: $01 $bd $20
    ld bc, $20eb                                  ; $459e: $01 $eb $20
    ld bc, $2104                                  ; $45a1: $01 $04 $21
    ld bc, $210e                                  ; $45a4: $01 $0e $21
    ld bc, $2153                                  ; $45a7: $01 $53 $21
    ld bc, $2159                                  ; $45aa: $01 $59 $21
    ld bc, $21b6                                  ; $45ad: $01 $b6 $21
    ld bc, $21c4                                  ; $45b0: $01 $c4 $21
    ld bc, $21d1                                  ; $45b3: $01 $d1 $21
    ld bc, $21f0                                  ; $45b6: $01 $f0 $21
    ld bc, $220f                                  ; $45b9: $01 $0f $22
    ld bc, $2240                                  ; $45bc: $01 $40 $22
    ld bc, $2288                                  ; $45bf: $01 $88 $22
    ld bc, $22a6                                  ; $45c2: $01 $a6 $22
    ld bc, $22c3                                  ; $45c5: $01 $c3 $22
    ld bc, $230d                                  ; $45c8: $01 $0d $23
    ld bc, $2378                                  ; $45cb: $01 $78 $23
    ld bc, $23a9                                  ; $45ce: $01 $a9 $23
    ld bc, $23d5                                  ; $45d1: $01 $d5 $23
    ld bc, $23e9                                  ; $45d4: $01 $e9 $23
    ld bc, $2405                                  ; $45d7: $01 $05 $24
    ld bc, $241d                                  ; $45da: $01 $1d $24
    ld bc, $2449                                  ; $45dd: $01 $49 $24
    ld bc, $2462                                  ; $45e0: $01 $62 $24
    ld bc, $2481                                  ; $45e3: $01 $81 $24
    ld bc, $24ae                                  ; $45e6: $01 $ae $24
    ld bc, $24d7                                  ; $45e9: $01 $d7 $24
    ld bc, $24f4                                  ; $45ec: $01 $f4 $24
    ld bc, $253e                                  ; $45ef: $01 $3e $25
    ld bc, $2564                                  ; $45f2: $01 $64 $25
    ld bc, $25c9                                  ; $45f5: $01 $c9 $25
    ld bc, $25f4                                  ; $45f8: $01 $f4 $25
    ld bc, $262a                                  ; $45fb: $01 $2a $26
    ld bc, $2657                                  ; $45fe: $01 $57 $26
    ld bc, $2690                                  ; $4601: $01 $90 $26
    ld bc, $26ac                                  ; $4604: $01 $ac $26
    ld bc, $26c8                                  ; $4607: $01 $c8 $26
    ld bc, $26e8                                  ; $460a: $01 $e8 $26
    ld bc, $2715                                  ; $460d: $01 $15 $27
    ld bc, $2728                                  ; $4610: $01 $28 $27
    ld bc, $2743                                  ; $4613: $01 $43 $27
    ld bc, $2756                                  ; $4616: $01 $56 $27
    ld bc, $2789                                  ; $4619: $01 $89 $27
    ld bc, $27c9                                  ; $461c: $01 $c9 $27
    ld bc, $27e2                                  ; $461f: $01 $e2 $27
    ld bc, $27ff                                  ; $4622: $01 $ff $27
    ld bc, $2831                                  ; $4625: $01 $31 $28
    ld bc, $2850                                  ; $4628: $01 $50 $28
    ld bc, $28a6                                  ; $462b: $01 $a6 $28
    ld bc, $28be                                  ; $462e: $01 $be $28
    ld bc, $28f0                                  ; $4631: $01 $f0 $28
    ld bc, $2915                                  ; $4634: $01 $15 $29
    ld bc, $293b                                  ; $4637: $01 $3b $29
    ld bc, $2964                                  ; $463a: $01 $64 $29
    ld bc, $297b                                  ; $463d: $01 $7b $29
    ld bc, $29af                                  ; $4640: $01 $af $29
    ld bc, $29cb                                  ; $4643: $01 $cb $29
    ld bc, $29f5                                  ; $4646: $01 $f5 $29
    ld bc, $2a04                                  ; $4649: $01 $04 $2a
    ld bc, $2a34                                  ; $464c: $01 $34 $2a
    ld bc, $2a59                                  ; $464f: $01 $59 $2a
    ld bc, $2a69                                  ; $4652: $01 $69 $2a
    ld bc, $2a90                                  ; $4655: $01 $90 $2a
    ld bc, $2abf                                  ; $4658: $01 $bf $2a
    ld bc, $2adf                                  ; $465b: $01 $df $2a
    ld bc, $2b0a                                  ; $465e: $01 $0a $2b
    ld bc, $2b35                                  ; $4661: $01 $35 $2b
    ld bc, $2b5f                                  ; $4664: $01 $5f $2b
    ld bc, $2b7e                                  ; $4667: $01 $7e $2b
    ld bc, $2bbe                                  ; $466a: $01 $be $2b
    ld bc, $2c06                                  ; $466d: $01 $06 $2c
    ld bc, $2c46                                  ; $4670: $01 $46 $2c
    ld bc, $2c63                                  ; $4673: $01 $63 $2c
    ld bc, $2c8b                                  ; $4676: $01 $8b $2c
    ld bc, $2ca8                                  ; $4679: $01 $a8 $2c
    ld bc, $2ccd                                  ; $467c: $01 $cd $2c
    ld bc, $2cfc                                  ; $467f: $01 $fc $2c
    ld bc, $2d21                                  ; $4682: $01 $21 $2d
    ld bc, $2d55                                  ; $4685: $01 $55 $2d
    ld bc, $2d6e                                  ; $4688: $01 $6e $2d
    ld bc, $2d93                                  ; $468b: $01 $93 $2d
    ld bc, $2dcc                                  ; $468e: $01 $cc $2d
    ld bc, $2df4                                  ; $4691: $01 $f4 $2d
    ld bc, $2dfb                                  ; $4694: $01 $fb $2d
    ld bc, $2e1c                                  ; $4697: $01 $1c $2e
    ld bc, $2e28                                  ; $469a: $01 $28 $2e
    ld bc, $2e4c                                  ; $469d: $01 $4c $2e
    ld bc, $2e5f                                  ; $46a0: $01 $5f $2e
    ld bc, $2e6c                                  ; $46a3: $01 $6c $2e
    ld bc, $2e7b                                  ; $46a6: $01 $7b $2e
    ld bc, $2e91                                  ; $46a9: $01 $91 $2e
    ld bc, $2eb5                                  ; $46ac: $01 $b5 $2e
    ld bc, $2f05                                  ; $46af: $01 $05 $2f
    ld bc, $2f0c                                  ; $46b2: $01 $0c $2f
    ld bc, $2f6a                                  ; $46b5: $01 $6a $2f
    ld bc, $2f7b                                  ; $46b8: $01 $7b $2f
    ld bc, $2fd9                                  ; $46bb: $01 $d9 $2f
    ld bc, $2ffb                                  ; $46be: $01 $fb $2f
    ld bc, $3010                                  ; $46c1: $01 $10 $30
    ld bc, $3034                                  ; $46c4: $01 $34 $30
    ld bc, $307f                                  ; $46c7: $01 $7f $30
    ld bc, $30b6                                  ; $46ca: $01 $b6 $30
    ld bc, $30c7                                  ; $46cd: $01 $c7 $30
    ld bc, $30d7                                  ; $46d0: $01 $d7 $30
    ld bc, $30ee                                  ; $46d3: $01 $ee $30
    ld bc, $311b                                  ; $46d6: $01 $1b $31
    ld bc, $3133                                  ; $46d9: $01 $33 $31
    ld bc, $3144                                  ; $46dc: $01 $44 $31
    ld bc, $3152                                  ; $46df: $01 $52 $31
    ld bc, $318c                                  ; $46e2: $01 $8c $31
    ld bc, $31c7                                  ; $46e5: $01 $c7 $31
    ld bc, $31de                                  ; $46e8: $01 $de $31
    ld bc, $3214                                  ; $46eb: $01 $14 $32
    ld bc, $3253                                  ; $46ee: $01 $53 $32
    ld bc, $326d                                  ; $46f1: $01 $6d $32
    ld bc, $328a                                  ; $46f4: $01 $8a $32
    ld bc, $329a                                  ; $46f7: $01 $9a $32
    ld bc, $32b5                                  ; $46fa: $01 $b5 $32
    ld bc, $32d1                                  ; $46fd: $01 $d1 $32
    ld bc, $32e4                                  ; $4700: $01 $e4 $32
    ld bc, $3301                                  ; $4703: $01 $01 $33
    ld bc, $3322                                  ; $4706: $01 $22 $33
    ld bc, $3379                                  ; $4709: $01 $79 $33
    ld bc, $338c                                  ; $470c: $01 $8c $33
    ld bc, $33e6                                  ; $470f: $01 $e6 $33
    ld bc, $3422                                  ; $4712: $01 $22 $34
    ld bc, $343f                                  ; $4715: $01 $3f $34
    ld bc, $346d                                  ; $4718: $01 $6d $34
    ld bc, $349f                                  ; $471b: $01 $9f $34
    ld bc, $34ee                                  ; $471e: $01 $ee $34
    ld bc, $3521                                  ; $4721: $01 $21 $35
    ld bc, $3530                                  ; $4724: $01 $30 $35
    ld bc, $3544                                  ; $4727: $01 $44 $35
    ld bc, $3559                                  ; $472a: $01 $59 $35
    ld bc, $356c                                  ; $472d: $01 $6c $35
    ld bc, $3577                                  ; $4730: $01 $77 $35
    ld bc, $358a                                  ; $4733: $01 $8a $35
    ld bc, $35a0                                  ; $4736: $01 $a0 $35
    ld bc, $35b2                                  ; $4739: $01 $b2 $35
    ld bc, $35d7                                  ; $473c: $01 $d7 $35
    ld bc, $35f0                                  ; $473f: $01 $f0 $35
    ld bc, $3603                                  ; $4742: $01 $03 $36
    ld bc, $3625                                  ; $4745: $01 $25 $36
    ld bc, $369d                                  ; $4748: $01 $9d $36
    ld bc, $36b0                                  ; $474b: $01 $b0 $36
    ld bc, $36d0                                  ; $474e: $01 $d0 $36
    ld bc, $3702                                  ; $4751: $01 $02 $37
    ld bc, $371a                                  ; $4754: $01 $1a $37
    ld bc, $374b                                  ; $4757: $01 $4b $37
    ld bc, $3785                                  ; $475a: $01 $85 $37
    ld bc, $37a3                                  ; $475d: $01 $a3 $37
    ld bc, $37fe                                  ; $4760: $01 $fe $37
    ld bc, $3806                                  ; $4763: $01 $06 $38
    ld bc, $381e                                  ; $4766: $01 $1e $38
    ld bc, $3829                                  ; $4769: $01 $29 $38
    ld bc, $3844                                  ; $476c: $01 $44 $38
    ld bc, $3871                                  ; $476f: $01 $71 $38
    ld bc, $38ab                                  ; $4772: $01 $ab $38
    ld bc, $38da                                  ; $4775: $01 $da $38
    ld bc, $38ff                                  ; $4778: $01 $ff $38
    ld bc, $392e                                  ; $477b: $01 $2e $39
    ld bc, $393f                                  ; $477e: $01 $3f $39
    ld bc, $394d                                  ; $4781: $01 $4d $39
    ld bc, $3961                                  ; $4784: $01 $61 $39
    ld bc, $3974                                  ; $4787: $01 $74 $39
    ld bc, $39a2                                  ; $478a: $01 $a2 $39
    ld bc, $39f5                                  ; $478d: $01 $f5 $39
    ld bc, $3a29                                  ; $4790: $01 $29 $3a
    ld bc, $3a59                                  ; $4793: $01 $59 $3a
    ld bc, $3a83                                  ; $4796: $01 $83 $3a
    ld bc, $3aac                                  ; $4799: $01 $ac $3a
    ld bc, $3ac9                                  ; $479c: $01 $c9 $3a
    ld bc, $3ae4                                  ; $479f: $01 $e4 $3a
    ld bc, $3b0a                                  ; $47a2: $01 $0a $3b
    ld bc, $3b1f                                  ; $47a5: $01 $1f $3b
    ld bc, $3b25                                  ; $47a8: $01 $25 $3b
    ld bc, $3b3c                                  ; $47ab: $01 $3c $3b
    ld bc, $3b51                                  ; $47ae: $01 $51 $3b
    ld bc, $3b70                                  ; $47b1: $01 $70 $3b
    ld bc, $3b89                                  ; $47b4: $01 $89 $3b
    ld bc, $3b99                                  ; $47b7: $01 $99 $3b
    ld bc, $3bae                                  ; $47ba: $01 $ae $3b
    ld bc, $3bd0                                  ; $47bd: $01 $d0 $3b
    ld bc, $3bfe                                  ; $47c0: $01 $fe $3b
    ld bc, $3c0e                                  ; $47c3: $01 $0e $3c
    ld bc, $3c38                                  ; $47c6: $01 $38 $3c
    ld bc, $3c48                                  ; $47c9: $01 $48 $3c
    ld bc, $3c5b                                  ; $47cc: $01 $5b $3c
    ld bc, $3c71                                  ; $47cf: $01 $71 $3c
    ld bc, $3c7f                                  ; $47d2: $01 $7f $3c
    ld bc, $3c97                                  ; $47d5: $01 $97 $3c
    ld bc, $3cb5                                  ; $47d8: $01 $b5 $3c
    ld bc, $3cd4                                  ; $47db: $01 $d4 $3c
    ld bc, $3ce9                                  ; $47de: $01 $e9 $3c
    ld bc, $3d14                                  ; $47e1: $01 $14 $3d
    ld bc, $3d32                                  ; $47e4: $01 $32 $3d
    ld bc, $3d59                                  ; $47e7: $01 $59 $3d
    ld bc, $3d88                                  ; $47ea: $01 $88 $3d
    ld bc, $3d99                                  ; $47ed: $01 $99 $3d
    ld bc, $3dbe                                  ; $47f0: $01 $be $3d
    ld bc, $3dda                                  ; $47f3: $01 $da $3d
    ld bc, $3ded                                  ; $47f6: $01 $ed $3d
    ld bc, $3e1a                                  ; $47f9: $01 $1a $3e
    ld bc, $3e2d                                  ; $47fc: $01 $2d $3e
    ld bc, $3e53                                  ; $47ff: $01 $53 $3e
    ld bc, $3e5a                                  ; $4802: $01 $5a $3e
    ld bc, $3e61                                  ; $4805: $01 $61 $3e
    ld bc, $3e68                                  ; $4808: $01 $68 $3e
    ld bc, $3e77                                  ; $480b: $01 $77 $3e
    ld bc, $3e7e                                  ; $480e: $01 $7e $3e
    ld bc, $3eb9                                  ; $4811: $01 $b9 $3e
    ld bc, $3ee2                                  ; $4814: $01 $e2 $3e
    ld bc, $3ef0                                  ; $4817: $01 $f0 $3e
    ld bc, $3ef9                                  ; $481a: $01 $f9 $3e
    ld bc, $3f1c                                  ; $481d: $01 $1c $3f
    ld bc, $3f3a                                  ; $4820: $01 $3a $3f
    ld bc, $3f4a                                  ; $4823: $01 $4a $3f
    ld bc, $3f58                                  ; $4826: $01 $58 $3f
    ld bc, $3f77                                  ; $4829: $01 $77 $3f
    ld bc, $3f88                                  ; $482c: $01 $88 $3f
    ld bc, $3fa5                                  ; $482f: $01 $a5 $3f
    ld bc, $3fc6                                  ; $4832: $01 $c6 $3f
    ld bc, $3fd3                                  ; $4835: $01 $d3 $3f
    ld [bc], a                                    ; $4838: $02
    ld bc, $0200                                  ; $4839: $01 $00 $02
    add hl, bc                                    ; $483c: $09
    nop                                           ; $483d: $00
    ld [bc], a                                    ; $483e: $02
    add hl, hl                                    ; $483f: $29
    nop                                           ; $4840: $00
    ld [bc], a                                    ; $4841: $02
    dec [hl]                                      ; $4842: $35
    nop                                           ; $4843: $00
    ld [bc], a                                    ; $4844: $02
    ld d, a                                       ; $4845: $57
    nop                                           ; $4846: $00
    ld [bc], a                                    ; $4847: $02
    ld l, h                                       ; $4848: $6c
    nop                                           ; $4849: $00
    ld [bc], a                                    ; $484a: $02
    ld a, b                                       ; $484b: $78
    nop                                           ; $484c: $00
    ld [bc], a                                    ; $484d: $02
    call c, Call_000_0200                         ; $484e: $dc $00 $02
    and $00                                       ; $4851: $e6 $00
    ld [bc], a                                    ; $4853: $02
    db $ec                                        ; $4854: $ec
    nop                                           ; $4855: $00
    ld [bc], a                                    ; $4856: $02
    or $00                                        ; $4857: $f6 $00
    ld [bc], a                                    ; $4859: $02
    inc a                                         ; $485a: $3c
    ld bc, $f702                                  ; $485b: $01 $02 $f7
    ld bc, $1c02                                  ; $485e: $01 $02 $1c
    ld [bc], a                                    ; $4861: $02
    ld [bc], a                                    ; $4862: $02
    ld sp, $0202                                  ; $4863: $31 $02 $02
    ccf                                           ; $4866: $3f
    ld [bc], a                                    ; $4867: $02
    ld [bc], a                                    ; $4868: $02
    ld c, b                                       ; $4869: $48
    ld [bc], a                                    ; $486a: $02
    ld [bc], a                                    ; $486b: $02
    ld d, l                                       ; $486c: $55
    ld [bc], a                                    ; $486d: $02
    ld [bc], a                                    ; $486e: $02
    ld h, a                                       ; $486f: $67
    ld [bc], a                                    ; $4870: $02
    ld [bc], a                                    ; $4871: $02
    ld a, c                                       ; $4872: $79
    ld [bc], a                                    ; $4873: $02
    ld [bc], a                                    ; $4874: $02
    sub [hl]                                      ; $4875: $96
    ld [bc], a                                    ; $4876: $02
    ld [bc], a                                    ; $4877: $02
    cp [hl]                                       ; $4878: $be
    ld [bc], a                                    ; $4879: $02
    ld [bc], a                                    ; $487a: $02
    db $fc                                        ; $487b: $fc
    ld [bc], a                                    ; $487c: $02
    ld [bc], a                                    ; $487d: $02
    scf                                           ; $487e: $37
    inc bc                                        ; $487f: $03
    ld [bc], a                                    ; $4880: $02
    ld e, a                                       ; $4881: $5f
    inc bc                                        ; $4882: $03
    ld [bc], a                                    ; $4883: $02
    jp Jump_000_0203                              ; $4884: $c3 $03 $02


    rlc e                                         ; $4887: $cb $03
    ld [bc], a                                    ; $4889: $02
    dec c                                         ; $488a: $0d
    inc b                                         ; $488b: $04
    ld [bc], a                                    ; $488c: $02
    ld [hl+], a                                   ; $488d: $22
    inc b                                         ; $488e: $04
    ld [bc], a                                    ; $488f: $02
    ld b, l                                       ; $4890: $45
    inc b                                         ; $4891: $04
    ld [bc], a                                    ; $4892: $02
    ld [hl], d                                    ; $4893: $72
    inc b                                         ; $4894: $04
    ld [bc], a                                    ; $4895: $02
    add a                                         ; $4896: $87
    inc b                                         ; $4897: $04
    ld [bc], a                                    ; $4898: $02
    sbc b                                         ; $4899: $98
    inc b                                         ; $489a: $04
    ld [bc], a                                    ; $489b: $02
    or b                                          ; $489c: $b0
    inc b                                         ; $489d: $04
    ld [bc], a                                    ; $489e: $02
    ret nz                                        ; $489f: $c0

    inc b                                         ; $48a0: $04
    ld [bc], a                                    ; $48a1: $02
    call $0204                                    ; $48a2: $cd $04 $02
    call c, $0204                                 ; $48a5: $dc $04 $02
    db $e4                                        ; $48a8: $e4
    inc b                                         ; $48a9: $04
    ld [bc], a                                    ; $48aa: $02
    ld [$0205], sp                                ; $48ab: $08 $05 $02
    jr nz, jr_03a_48b5                            ; $48ae: $20 $05

    ld [bc], a                                    ; $48b0: $02
    jr c, jr_03a_48b8                             ; $48b1: $38 $05

    ld [bc], a                                    ; $48b3: $02
    ld c, c                                       ; $48b4: $49

jr_03a_48b5:
    dec b                                         ; $48b5: $05
    ld [bc], a                                    ; $48b6: $02
    ld e, [hl]                                    ; $48b7: $5e

jr_03a_48b8:
    dec b                                         ; $48b8: $05
    ld [bc], a                                    ; $48b9: $02
    ld [hl], b                                    ; $48ba: $70
    dec b                                         ; $48bb: $05
    ld [bc], a                                    ; $48bc: $02
    add e                                         ; $48bd: $83
    dec b                                         ; $48be: $05
    ld [bc], a                                    ; $48bf: $02
    and c                                         ; $48c0: $a1
    dec b                                         ; $48c1: $05
    ld [bc], a                                    ; $48c2: $02
    jp $0205                                      ; $48c3: $c3 $05 $02


    inc e                                         ; $48c6: $1c
    ld b, $02                                     ; $48c7: $06 $02
    ld a, a                                       ; $48c9: $7f
    ld b, $02                                     ; $48ca: $06 $02
    adc a                                         ; $48cc: $8f
    ld b, $02                                     ; $48cd: $06 $02
    call z, Call_000_0206                         ; $48cf: $cc $06 $02
    db $db                                        ; $48d2: $db
    ld b, $02                                     ; $48d3: $06 $02
    ld sp, $0207                                  ; $48d5: $31 $07 $02
    ld d, h                                       ; $48d8: $54
    rlca                                          ; $48d9: $07
    ld [bc], a                                    ; $48da: $02
    ld [hl], l                                    ; $48db: $75
    rlca                                          ; $48dc: $07
    ld [bc], a                                    ; $48dd: $02
    sbc a                                         ; $48de: $9f
    rlca                                          ; $48df: $07
    ld [bc], a                                    ; $48e0: $02
    cp [hl]                                       ; $48e1: $be
    rlca                                          ; $48e2: $07
    ld [bc], a                                    ; $48e3: $02
    call nc, Call_000_0207                        ; $48e4: $d4 $07 $02
    jr nz, jr_03a_48f1                            ; $48e7: $20 $08

    ld [bc], a                                    ; $48e9: $02
    ld h, $08                                     ; $48ea: $26 $08
    ld [bc], a                                    ; $48ec: $02
    inc [hl]                                      ; $48ed: $34
    ld [$5002], sp                                ; $48ee: $08 $02 $50

jr_03a_48f1:
    ld [$6602], sp                                ; $48f1: $08 $02 $66
    ld [$8202], sp                                ; $48f4: $08 $02 $82
    ld [$b002], sp                                ; $48f7: $08 $02 $b0
    ld [$c602], sp                                ; $48fa: $08 $02 $c6
    ld [$d002], sp                                ; $48fd: $08 $02 $d0
    ld [$e002], sp                                ; $4900: $08 $02 $e0
    ld [$f102], sp                                ; $4903: $08 $02 $f1
    ld [$0502], sp                                ; $4906: $08 $02 $05
    add hl, bc                                    ; $4909: $09
    ld [bc], a                                    ; $490a: $02
    ld de, $0209                                  ; $490b: $11 $09 $02
    dec h                                         ; $490e: $25
    add hl, bc                                    ; $490f: $09
    ld [bc], a                                    ; $4910: $02
    ld e, e                                       ; $4911: $5b
    add hl, bc                                    ; $4912: $09
    ld [bc], a                                    ; $4913: $02
    or c                                          ; $4914: $b1
    add hl, bc                                    ; $4915: $09
    ld [bc], a                                    ; $4916: $02
    pop bc                                        ; $4917: $c1
    add hl, bc                                    ; $4918: $09
    ld [bc], a                                    ; $4919: $02
    ld hl, $020a                                  ; $491a: $21 $0a $02
    ld c, l                                       ; $491d: $4d
    ld a, [bc]                                    ; $491e: $0a
    ld [bc], a                                    ; $491f: $02
    ld [hl], a                                    ; $4920: $77
    ld a, [bc]                                    ; $4921: $0a
    ld [bc], a                                    ; $4922: $02
    add a                                         ; $4923: $87
    ld a, [bc]                                    ; $4924: $0a
    ld [bc], a                                    ; $4925: $02
    jp hl                                         ; $4926: $e9


    ld a, [bc]                                    ; $4927: $0a
    ld [bc], a                                    ; $4928: $02
    ld a, [c]                                     ; $4929: $f2
    ld a, [bc]                                    ; $492a: $0a
    ld [bc], a                                    ; $492b: $02
    inc hl                                        ; $492c: $23
    dec bc                                        ; $492d: $0b
    ld [bc], a                                    ; $492e: $02
    ld [hl], $0b                                  ; $492f: $36 $0b
    ld [bc], a                                    ; $4931: $02
    ld l, h                                       ; $4932: $6c
    dec bc                                        ; $4933: $0b
    ld [bc], a                                    ; $4934: $02
    ldh [$0b], a                                  ; $4935: $e0 $0b
    ld [bc], a                                    ; $4937: $02
    nop                                           ; $4938: $00
    inc c                                         ; $4939: $0c
    ld [bc], a                                    ; $493a: $02
    cpl                                           ; $493b: $2f
    inc c                                         ; $493c: $0c
    ld [bc], a                                    ; $493d: $02
    ld e, b                                       ; $493e: $58
    inc c                                         ; $493f: $0c
    ld [bc], a                                    ; $4940: $02
    ld l, [hl]                                    ; $4941: $6e
    inc c                                         ; $4942: $0c
    ld [bc], a                                    ; $4943: $02
    ld [hl], a                                    ; $4944: $77
    inc c                                         ; $4945: $0c
    ld [bc], a                                    ; $4946: $02
    add d                                         ; $4947: $82
    inc c                                         ; $4948: $0c
    ld [bc], a                                    ; $4949: $02
    and l                                         ; $494a: $a5
    inc c                                         ; $494b: $0c
    ld [bc], a                                    ; $494c: $02
    cp c                                          ; $494d: $b9
    inc c                                         ; $494e: $0c
    ld [bc], a                                    ; $494f: $02
    call nc, Call_000_020c                        ; $4950: $d4 $0c $02
    db $e4                                        ; $4953: $e4
    inc c                                         ; $4954: $0c
    ld [bc], a                                    ; $4955: $02
    ld b, a                                       ; $4956: $47
    dec c                                         ; $4957: $0d
    ld [bc], a                                    ; $4958: $02
    ld c, [hl]                                    ; $4959: $4e
    dec c                                         ; $495a: $0d
    ld [bc], a                                    ; $495b: $02
    ld a, b                                       ; $495c: $78
    dec c                                         ; $495d: $0d
    ld [bc], a                                    ; $495e: $02
    adc b                                         ; $495f: $88
    dec c                                         ; $4960: $0d
    ld [bc], a                                    ; $4961: $02
    xor b                                         ; $4962: $a8
    dec c                                         ; $4963: $0d
    ld [bc], a                                    ; $4964: $02
    reti                                          ; $4965: $d9


    dec c                                         ; $4966: $0d
    ld [bc], a                                    ; $4967: $02
    db $dd                                        ; $4968: $dd
    dec c                                         ; $4969: $0d
    ld [bc], a                                    ; $496a: $02
    db $ed                                        ; $496b: $ed
    dec c                                         ; $496c: $0d
    ld [bc], a                                    ; $496d: $02
    ld a, [hl+]                                   ; $496e: $2a
    ld c, $02                                     ; $496f: $0e $02
    inc a                                         ; $4971: $3c
    ld c, $02                                     ; $4972: $0e $02
    ld e, e                                       ; $4974: $5b
    ld c, $02                                     ; $4975: $0e $02
    add e                                         ; $4977: $83
    ld c, $02                                     ; $4978: $0e $02
    jp nc, $020e                                  ; $497a: $d2 $0e $02

    push af                                       ; $497d: $f5
    ld c, $02                                     ; $497e: $0e $02
    ld a, [bc]                                    ; $4980: $0a
    rrca                                          ; $4981: $0f
    ld [bc], a                                    ; $4982: $02
    dec e                                         ; $4983: $1d
    rrca                                          ; $4984: $0f
    ld [bc], a                                    ; $4985: $02
    cpl                                           ; $4986: $2f
    rrca                                          ; $4987: $0f
    ld [bc], a                                    ; $4988: $02
    ld b, [hl]                                    ; $4989: $46
    rrca                                          ; $498a: $0f
    ld [bc], a                                    ; $498b: $02
    ld l, [hl]                                    ; $498c: $6e
    rrca                                          ; $498d: $0f
    ld [bc], a                                    ; $498e: $02
    ld a, d                                       ; $498f: $7a
    rrca                                          ; $4990: $0f
    ld [bc], a                                    ; $4991: $02
    ld a, l                                       ; $4992: $7d
    rrca                                          ; $4993: $0f
    ld [bc], a                                    ; $4994: $02
    and e                                         ; $4995: $a3
    rrca                                          ; $4996: $0f
    ld [bc], a                                    ; $4997: $02
    add $0f                                       ; $4998: $c6 $0f
    ld [bc], a                                    ; $499a: $02
    ld [c], a                                     ; $499b: $e2
    rrca                                          ; $499c: $0f
    ld [bc], a                                    ; $499d: $02
    or $0f                                        ; $499e: $f6 $0f
    ld [bc], a                                    ; $49a0: $02
    inc de                                        ; $49a1: $13
    db $10                                        ; $49a2: $10
    ld [bc], a                                    ; $49a3: $02
    inc sp                                        ; $49a4: $33
    db $10                                        ; $49a5: $10
    ld [bc], a                                    ; $49a6: $02
    ld e, d                                       ; $49a7: $5a
    db $10                                        ; $49a8: $10
    ld [bc], a                                    ; $49a9: $02
    ld [hl], b                                    ; $49aa: $70
    db $10                                        ; $49ab: $10
    ld [bc], a                                    ; $49ac: $02
    sub b                                         ; $49ad: $90
    db $10                                        ; $49ae: $10
    ld [bc], a                                    ; $49af: $02
    sbc a                                         ; $49b0: $9f
    db $10                                        ; $49b1: $10
    ld [bc], a                                    ; $49b2: $02
    or h                                          ; $49b3: $b4
    db $10                                        ; $49b4: $10
    ld [bc], a                                    ; $49b5: $02
    rl b                                          ; $49b6: $cb $10
    ld [bc], a                                    ; $49b8: $02
    db $ed                                        ; $49b9: $ed
    db $10                                        ; $49ba: $10
    ld [bc], a                                    ; $49bb: $02
    ld c, $11                                     ; $49bc: $0e $11
    ld [bc], a                                    ; $49be: $02
    inc e                                         ; $49bf: $1c
    ld de, $4102                                  ; $49c0: $11 $02 $41
    ld de, $9702                                  ; $49c3: $11 $02 $97
    ld de, $a702                                  ; $49c6: $11 $02 $a7
    ld de, $c502                                  ; $49c9: $11 $02 $c5
    ld de, $ed02                                  ; $49cc: $11 $02 $ed
    ld de, $ff02                                  ; $49cf: $11 $02 $ff
    ld de, $3502                                  ; $49d2: $11 $02 $35
    ld [de], a                                    ; $49d5: $12
    ld [bc], a                                    ; $49d6: $02
    ld h, h                                       ; $49d7: $64
    ld [de], a                                    ; $49d8: $12
    ld [bc], a                                    ; $49d9: $02
    sub [hl]                                      ; $49da: $96
    ld [de], a                                    ; $49db: $12
    ld [bc], a                                    ; $49dc: $02
    jp c, $0212                                   ; $49dd: $da $12 $02

    ld [$0213], sp                                ; $49e0: $08 $13 $02
    jr nz, jr_03a_49f8                            ; $49e3: $20 $13

    ld [bc], a                                    ; $49e5: $02
    ld a, [hl-]                                   ; $49e6: $3a
    inc de                                        ; $49e7: $13
    ld [bc], a                                    ; $49e8: $02
    ld b, [hl]                                    ; $49e9: $46
    inc de                                        ; $49ea: $13
    ld [bc], a                                    ; $49eb: $02
    adc e                                         ; $49ec: $8b
    inc de                                        ; $49ed: $13
    ld [bc], a                                    ; $49ee: $02
    xor [hl]                                      ; $49ef: $ae
    inc de                                        ; $49f0: $13
    ld [bc], a                                    ; $49f1: $02
    call c, $0213                                 ; $49f2: $dc $13 $02
    db $ed                                        ; $49f5: $ed
    inc de                                        ; $49f6: $13
    ld [bc], a                                    ; $49f7: $02

jr_03a_49f8:
    inc bc                                        ; $49f8: $03
    inc d                                         ; $49f9: $14
    ld [bc], a                                    ; $49fa: $02
    dec bc                                        ; $49fb: $0b
    inc d                                         ; $49fc: $14
    ld [bc], a                                    ; $49fd: $02
    inc hl                                        ; $49fe: $23
    inc d                                         ; $49ff: $14
    ld [bc], a                                    ; $4a00: $02
    ld b, a                                       ; $4a01: $47
    inc d                                         ; $4a02: $14
    ld [bc], a                                    ; $4a03: $02
    ld e, b                                       ; $4a04: $58
    inc d                                         ; $4a05: $14
    ld [bc], a                                    ; $4a06: $02
    and d                                         ; $4a07: $a2
    inc d                                         ; $4a08: $14
    ld [bc], a                                    ; $4a09: $02
    ret z                                         ; $4a0a: $c8

    inc d                                         ; $4a0b: $14
    ld [bc], a                                    ; $4a0c: $02
    db $f4                                        ; $4a0d: $f4
    inc d                                         ; $4a0e: $14
    ld [bc], a                                    ; $4a0f: $02
    dec e                                         ; $4a10: $1d
    dec d                                         ; $4a11: $15
    ld [bc], a                                    ; $4a12: $02
    ld l, e                                       ; $4a13: $6b
    dec d                                         ; $4a14: $15
    ld [bc], a                                    ; $4a15: $02
    and l                                         ; $4a16: $a5
    dec d                                         ; $4a17: $15
    ld [bc], a                                    ; $4a18: $02
    pop de                                        ; $4a19: $d1
    dec d                                         ; $4a1a: $15
    ld [bc], a                                    ; $4a1b: $02
    add hl, bc                                    ; $4a1c: $09
    ld d, $02                                     ; $4a1d: $16 $02
    dec l                                         ; $4a1f: $2d
    ld d, $02                                     ; $4a20: $16 $02
    ld c, b                                       ; $4a22: $48
    ld d, $02                                     ; $4a23: $16 $02
    xor h                                         ; $4a25: $ac
    ld d, $02                                     ; $4a26: $16 $02
    call c, Call_000_0216                         ; $4a28: $dc $16 $02
    xor $16                                       ; $4a2b: $ee $16
    ld [bc], a                                    ; $4a2d: $02
    daa                                           ; $4a2e: $27
    rla                                           ; $4a2f: $17
    ld [bc], a                                    ; $4a30: $02
    ld c, d                                       ; $4a31: $4a
    rla                                           ; $4a32: $17
    ld [bc], a                                    ; $4a33: $02
    ld a, b                                       ; $4a34: $78
    rla                                           ; $4a35: $17
    ld [bc], a                                    ; $4a36: $02
    sub d                                         ; $4a37: $92
    rla                                           ; $4a38: $17
    ld [bc], a                                    ; $4a39: $02
    and h                                         ; $4a3a: $a4
    rla                                           ; $4a3b: $17
    ld [bc], a                                    ; $4a3c: $02
    jp nz, $0217                                  ; $4a3d: $c2 $17 $02

    and $17                                       ; $4a40: $e6 $17
    ld [bc], a                                    ; $4a42: $02
    ld hl, sp+$17                                 ; $4a43: $f8 $17
    ld [bc], a                                    ; $4a45: $02
    ld b, l                                       ; $4a46: $45
    jr @+$04                                      ; $4a47: $18 $02

    ld e, h                                       ; $4a49: $5c
    jr @+$04                                      ; $4a4a: $18 $02

    and e                                         ; $4a4c: $a3
    jr @+$04                                      ; $4a4d: $18 $02

    cp d                                          ; $4a4f: $ba
    jr @+$04                                      ; $4a50: $18 $02

    rst $10                                       ; $4a52: $d7
    jr @+$04                                      ; $4a53: $18 $02

    db $fd                                        ; $4a55: $fd
    jr @+$04                                      ; $4a56: $18 $02

    ld de, $0219                                  ; $4a58: $11 $19 $02
    dec h                                         ; $4a5b: $25
    add hl, de                                    ; $4a5c: $19
    ld [bc], a                                    ; $4a5d: $02
    ld e, d                                       ; $4a5e: $5a
    add hl, de                                    ; $4a5f: $19
    ld [bc], a                                    ; $4a60: $02
    ld [hl], e                                    ; $4a61: $73
    add hl, de                                    ; $4a62: $19
    ld [bc], a                                    ; $4a63: $02
    sub c                                         ; $4a64: $91
    add hl, de                                    ; $4a65: $19
    ld [bc], a                                    ; $4a66: $02
    cp [hl]                                       ; $4a67: $be
    add hl, de                                    ; $4a68: $19
    ld [bc], a                                    ; $4a69: $02
    db $e3                                        ; $4a6a: $e3
    add hl, de                                    ; $4a6b: $19
    ld [bc], a                                    ; $4a6c: $02
    ld hl, sp+$19                                 ; $4a6d: $f8 $19
    ld [bc], a                                    ; $4a6f: $02
    inc c                                         ; $4a70: $0c
    ld a, [de]                                    ; $4a71: $1a
    ld [bc], a                                    ; $4a72: $02
    ld hl, $021a                                  ; $4a73: $21 $1a $02
    dec l                                         ; $4a76: $2d
    ld a, [de]                                    ; $4a77: $1a
    ld [bc], a                                    ; $4a78: $02
    jr c, jr_03a_4a95                             ; $4a79: $38 $1a

    ld [bc], a                                    ; $4a7b: $02
    ld c, e                                       ; $4a7c: $4b
    ld a, [de]                                    ; $4a7d: $1a
    ld [bc], a                                    ; $4a7e: $02
    ld e, h                                       ; $4a7f: $5c
    ld a, [de]                                    ; $4a80: $1a
    ld [bc], a                                    ; $4a81: $02
    ld l, d                                       ; $4a82: $6a
    ld a, [de]                                    ; $4a83: $1a
    ld [bc], a                                    ; $4a84: $02
    add l                                         ; $4a85: $85
    ld a, [de]                                    ; $4a86: $1a
    ld [bc], a                                    ; $4a87: $02
    adc d                                         ; $4a88: $8a
    ld a, [de]                                    ; $4a89: $1a
    ld [bc], a                                    ; $4a8a: $02
    sbc e                                         ; $4a8b: $9b
    ld a, [de]                                    ; $4a8c: $1a
    ld [bc], a                                    ; $4a8d: $02
    or h                                          ; $4a8e: $b4
    ld a, [de]                                    ; $4a8f: $1a
    ld [bc], a                                    ; $4a90: $02
    rst $20                                       ; $4a91: $e7
    ld a, [de]                                    ; $4a92: $1a
    ld [bc], a                                    ; $4a93: $02
    cpl                                           ; $4a94: $2f

jr_03a_4a95:
    dec de                                        ; $4a95: $1b
    ld [bc], a                                    ; $4a96: $02
    ld e, l                                       ; $4a97: $5d
    dec de                                        ; $4a98: $1b
    ld [bc], a                                    ; $4a99: $02
    ld [hl], d                                    ; $4a9a: $72
    dec de                                        ; $4a9b: $1b
    ld [bc], a                                    ; $4a9c: $02
    ld a, l                                       ; $4a9d: $7d
    dec de                                        ; $4a9e: $1b
    ld [bc], a                                    ; $4a9f: $02
    and e                                         ; $4aa0: $a3
    dec de                                        ; $4aa1: $1b
    ld [bc], a                                    ; $4aa2: $02
    rst $18                                       ; $4aa3: $df
    dec de                                        ; $4aa4: $1b
    ld [bc], a                                    ; $4aa5: $02
    ld a, [bc]                                    ; $4aa6: $0a
    inc e                                         ; $4aa7: $1c
    ld [bc], a                                    ; $4aa8: $02
    dec [hl]                                      ; $4aa9: $35
    inc e                                         ; $4aaa: $1c
    ld [bc], a                                    ; $4aab: $02
    ld h, h                                       ; $4aac: $64
    inc e                                         ; $4aad: $1c
    ld [bc], a                                    ; $4aae: $02
    ld l, [hl]                                    ; $4aaf: $6e
    inc e                                         ; $4ab0: $1c
    ld [bc], a                                    ; $4ab1: $02
    add h                                         ; $4ab2: $84
    inc e                                         ; $4ab3: $1c
    ld [bc], a                                    ; $4ab4: $02
    and l                                         ; $4ab5: $a5
    inc e                                         ; $4ab6: $1c
    ld [bc], a                                    ; $4ab7: $02
    ld a, [c]                                     ; $4ab8: $f2
    inc e                                         ; $4ab9: $1c
    ld [bc], a                                    ; $4aba: $02
    inc bc                                        ; $4abb: $03
    dec e                                         ; $4abc: $1d
    ld [bc], a                                    ; $4abd: $02
    inc d                                         ; $4abe: $14
    dec e                                         ; $4abf: $1d
    ld [bc], a                                    ; $4ac0: $02
    ld b, l                                       ; $4ac1: $45
    dec e                                         ; $4ac2: $1d
    ld [bc], a                                    ; $4ac3: $02
    ld e, a                                       ; $4ac4: $5f
    dec e                                         ; $4ac5: $1d
    ld [bc], a                                    ; $4ac6: $02
    ld [hl], e                                    ; $4ac7: $73
    dec e                                         ; $4ac8: $1d
    ld [bc], a                                    ; $4ac9: $02
    sub d                                         ; $4aca: $92
    dec e                                         ; $4acb: $1d
    ld [bc], a                                    ; $4acc: $02
    cp c                                          ; $4acd: $b9
    dec e                                         ; $4ace: $1d
    ld [bc], a                                    ; $4acf: $02
    db $ed                                        ; $4ad0: $ed
    dec e                                         ; $4ad1: $1d
    ld [bc], a                                    ; $4ad2: $02
    add hl, hl                                    ; $4ad3: $29
    ld e, $02                                     ; $4ad4: $1e $02
    ld h, b                                       ; $4ad6: $60
    ld e, $02                                     ; $4ad7: $1e $02
    sub c                                         ; $4ad9: $91
    ld e, $02                                     ; $4ada: $1e $02
    xor c                                         ; $4adc: $a9
    ld e, $02                                     ; $4add: $1e $02
    db $db                                        ; $4adf: $db
    ld e, $02                                     ; $4ae0: $1e $02
    cp $1e                                        ; $4ae2: $fe $1e
    ld [bc], a                                    ; $4ae4: $02
    dec hl                                        ; $4ae5: $2b
    rra                                           ; $4ae6: $1f
    ld [bc], a                                    ; $4ae7: $02
    dec sp                                        ; $4ae8: $3b
    rra                                           ; $4ae9: $1f
    ld [bc], a                                    ; $4aea: $02
    ld e, e                                       ; $4aeb: $5b
    rra                                           ; $4aec: $1f
    ld [bc], a                                    ; $4aed: $02
    ld l, a                                       ; $4aee: $6f
    rra                                           ; $4aef: $1f
    ld [bc], a                                    ; $4af0: $02
    add e                                         ; $4af1: $83
    rra                                           ; $4af2: $1f
    ld [bc], a                                    ; $4af3: $02
    xor e                                         ; $4af4: $ab
    rra                                           ; $4af5: $1f
    ld [bc], a                                    ; $4af6: $02
    ldh [$1f], a                                  ; $4af7: $e0 $1f
    ld [bc], a                                    ; $4af9: $02
    add hl, bc                                    ; $4afa: $09
    jr nz, @+$04                                  ; $4afb: $20 $02

Call_03a_4afd:
    inc e                                         ; $4afd: $1c
    jr nz, @+$04                                  ; $4afe: $20 $02

    ld a, [hl-]                                   ; $4b00: $3a
    jr nz, @+$04                                  ; $4b01: $20 $02

    ld b, l                                       ; $4b03: $45
    jr nz, @+$04                                  ; $4b04: $20 $02

    ld e, a                                       ; $4b06: $5f
    jr nz, @+$04                                  ; $4b07: $20 $02

    ld [hl], l                                    ; $4b09: $75
    jr nz, @+$04                                  ; $4b0a: $20 $02

    sbc l                                         ; $4b0c: $9d
    jr nz, @+$04                                  ; $4b0d: $20 $02

    cp l                                          ; $4b0f: $bd
    jr nz, jr_03a_4b14                            ; $4b10: $20 $02

    sla b                                         ; $4b12: $cb $20

jr_03a_4b14:
    ld [bc], a                                    ; $4b14: $02
    or $20                                        ; $4b15: $f6 $20
    ld [bc], a                                    ; $4b17: $02
    inc bc                                        ; $4b18: $03
    ld hl, $2102                                  ; $4b19: $21 $02 $21
    ld hl, $4002                                  ; $4b1c: $21 $02 $40
    ld hl, $6502                                  ; $4b1f: $21 $02 $65
    ld hl, $8c02                                  ; $4b22: $21 $02 $8c
    ld hl, $a602                                  ; $4b25: $21 $02 $a6
    ld hl, $ba02                                  ; $4b28: $21 $02 $ba
    ld hl, $dd02                                  ; $4b2b: $21 $02 $dd
    ld hl, $f802                                  ; $4b2e: $21 $02 $f8
    ld hl, $1b02                                  ; $4b31: $21 $02 $1b
    ld [hl+], a                                   ; $4b34: $22
    ld [bc], a                                    ; $4b35: $02
    add hl, sp                                    ; $4b36: $39
    ld [hl+], a                                   ; $4b37: $22
    ld [bc], a                                    ; $4b38: $02
    ld h, h                                       ; $4b39: $64
    ld [hl+], a                                   ; $4b3a: $22
    ld [bc], a                                    ; $4b3b: $02
    add l                                         ; $4b3c: $85
    ld [hl+], a                                   ; $4b3d: $22
    ld [bc], a                                    ; $4b3e: $02
    and l                                         ; $4b3f: $a5
    ld [hl+], a                                   ; $4b40: $22
    ld [bc], a                                    ; $4b41: $02
    ret nz                                        ; $4b42: $c0

    ld [hl+], a                                   ; $4b43: $22
    ld [bc], a                                    ; $4b44: $02
    ret c                                         ; $4b45: $d8

    ld [hl+], a                                   ; $4b46: $22
    ld [bc], a                                    ; $4b47: $02
    ld sp, hl                                     ; $4b48: $f9
    ld [hl+], a                                   ; $4b49: $22
    ld [bc], a                                    ; $4b4a: $02
    cpl                                           ; $4b4b: $2f
    inc hl                                        ; $4b4c: $23
    ld [bc], a                                    ; $4b4d: $02
    ld e, d                                       ; $4b4e: $5a
    inc hl                                        ; $4b4f: $23
    ld [bc], a                                    ; $4b50: $02
    adc h                                         ; $4b51: $8c
    inc hl                                        ; $4b52: $23
    ld [bc], a                                    ; $4b53: $02
    call z, Call_000_0223                         ; $4b54: $cc $23 $02
    call nc, Call_000_0223                        ; $4b57: $d4 $23 $02
    jp hl                                         ; $4b5a: $e9


    inc hl                                        ; $4b5b: $23
    ld [bc], a                                    ; $4b5c: $02
    db $10                                        ; $4b5d: $10
    inc h                                         ; $4b5e: $24
    ld [bc], a                                    ; $4b5f: $02
    daa                                           ; $4b60: $27
    inc h                                         ; $4b61: $24
    ld [bc], a                                    ; $4b62: $02
    ld [hl], l                                    ; $4b63: $75
    inc h                                         ; $4b64: $24
    ld [bc], a                                    ; $4b65: $02
    adc a                                         ; $4b66: $8f
    inc h                                         ; $4b67: $24
    ld [bc], a                                    ; $4b68: $02
    or d                                          ; $4b69: $b2
    inc h                                         ; $4b6a: $24
    ld [bc], a                                    ; $4b6b: $02
    ret                                           ; $4b6c: $c9


    inc h                                         ; $4b6d: $24
    ld [bc], a                                    ; $4b6e: $02
    push hl                                       ; $4b6f: $e5
    inc h                                         ; $4b70: $24
    ld [bc], a                                    ; $4b71: $02
    rst $30                                       ; $4b72: $f7
    inc h                                         ; $4b73: $24
    ld [bc], a                                    ; $4b74: $02
    rla                                           ; $4b75: $17
    dec h                                         ; $4b76: $25
    ld [bc], a                                    ; $4b77: $02
    ld e, $25                                     ; $4b78: $1e $25
    ld [bc], a                                    ; $4b7a: $02
    cpl                                           ; $4b7b: $2f
    dec h                                         ; $4b7c: $25
    ld [bc], a                                    ; $4b7d: $02
    ld l, e                                       ; $4b7e: $6b
    dec h                                         ; $4b7f: $25
    ld [bc], a                                    ; $4b80: $02
    ld a, b                                       ; $4b81: $78
    dec h                                         ; $4b82: $25
    ld [bc], a                                    ; $4b83: $02
    adc b                                         ; $4b84: $88
    dec h                                         ; $4b85: $25
    ld [bc], a                                    ; $4b86: $02
    and [hl]                                      ; $4b87: $a6
    dec h                                         ; $4b88: $25
    ld [bc], a                                    ; $4b89: $02
    call nc, $0225                                ; $4b8a: $d4 $25 $02
    db $e3                                        ; $4b8d: $e3
    dec h                                         ; $4b8e: $25
    ld [bc], a                                    ; $4b8f: $02
    db $eb                                        ; $4b90: $eb
    dec h                                         ; $4b91: $25
    ld [bc], a                                    ; $4b92: $02
    ld bc, $0226                                  ; $4b93: $01 $26 $02
    dec e                                         ; $4b96: $1d
    ld h, $02                                     ; $4b97: $26 $02
    ld c, b                                       ; $4b99: $48
    ld h, $02                                     ; $4b9a: $26 $02
    ld c, a                                       ; $4b9c: $4f
    ld h, $02                                     ; $4b9d: $26 $02
    ld h, d                                       ; $4b9f: $62
    ld h, $02                                     ; $4ba0: $26 $02
    adc b                                         ; $4ba2: $88
    ld h, $02                                     ; $4ba3: $26 $02
    sbc a                                         ; $4ba5: $9f
    ld h, $02                                     ; $4ba6: $26 $02
    rla                                           ; $4ba8: $17
    daa                                           ; $4ba9: $27
    ld [bc], a                                    ; $4baa: $02
    inc h                                         ; $4bab: $24
    daa                                           ; $4bac: $27
    ld [bc], a                                    ; $4bad: $02
    inc l                                         ; $4bae: $2c
    daa                                           ; $4baf: $27
    ld [bc], a                                    ; $4bb0: $02
    ld b, d                                       ; $4bb1: $42
    daa                                           ; $4bb2: $27
    ld [bc], a                                    ; $4bb3: $02
    add b                                         ; $4bb4: $80
    daa                                           ; $4bb5: $27
    ld [bc], a                                    ; $4bb6: $02
    and l                                         ; $4bb7: $a5
    daa                                           ; $4bb8: $27
    ld [bc], a                                    ; $4bb9: $02
    cp c                                          ; $4bba: $b9
    daa                                           ; $4bbb: $27
    ld [bc], a                                    ; $4bbc: $02
    push de                                       ; $4bbd: $d5
    daa                                           ; $4bbe: $27
    ld [bc], a                                    ; $4bbf: $02
    db $ed                                        ; $4bc0: $ed
    daa                                           ; $4bc1: $27
    ld [bc], a                                    ; $4bc2: $02
    dec c                                         ; $4bc3: $0d
    jr z, @+$04                                   ; $4bc4: $28 $02

    ld [hl+], a                                   ; $4bc6: $22
    jr z, jr_03a_4bcb                             ; $4bc7: $28 $02

    ld [hl], $28                                  ; $4bc9: $36 $28

jr_03a_4bcb:
    ld [bc], a                                    ; $4bcb: $02
    ld c, l                                       ; $4bcc: $4d
    jr z, @+$04                                   ; $4bcd: $28 $02

    ld h, h                                       ; $4bcf: $64
    jr z, @+$04                                   ; $4bd0: $28 $02

    ld [hl], c                                    ; $4bd2: $71
    jr z, @+$04                                   ; $4bd3: $28 $02

    add l                                         ; $4bd5: $85
    jr z, @+$04                                   ; $4bd6: $28 $02

    xor h                                         ; $4bd8: $ac
    jr z, @+$04                                   ; $4bd9: $28 $02

    or a                                          ; $4bdb: $b7
    jr z, @+$04                                   ; $4bdc: $28 $02

    ret c                                         ; $4bde: $d8

    jr z, @+$04                                   ; $4bdf: $28 $02

    db $f4                                        ; $4be1: $f4
    jr z, jr_03a_4be6                             ; $4be2: $28 $02

    dec e                                         ; $4be4: $1d
    add hl, hl                                    ; $4be5: $29

jr_03a_4be6:
    ld [bc], a                                    ; $4be6: $02
    inc a                                         ; $4be7: $3c
    add hl, hl                                    ; $4be8: $29
    ld [bc], a                                    ; $4be9: $02
    ld [hl], l                                    ; $4bea: $75
    add hl, hl                                    ; $4beb: $29
    ld [bc], a                                    ; $4bec: $02
    sub c                                         ; $4bed: $91
    add hl, hl                                    ; $4bee: $29
    ld [bc], a                                    ; $4bef: $02
    xor c                                         ; $4bf0: $a9
    add hl, hl                                    ; $4bf1: $29
    ld [bc], a                                    ; $4bf2: $02
    ret c                                         ; $4bf3: $d8

    add hl, hl                                    ; $4bf4: $29
    ld [bc], a                                    ; $4bf5: $02
    ld sp, hl                                     ; $4bf6: $f9
    add hl, hl                                    ; $4bf7: $29
    ld [bc], a                                    ; $4bf8: $02
    dec d                                         ; $4bf9: $15
    ld a, [hl+]                                   ; $4bfa: $2a
    ld [bc], a                                    ; $4bfb: $02
    ld c, l                                       ; $4bfc: $4d
    ld a, [hl+]                                   ; $4bfd: $2a
    ld [bc], a                                    ; $4bfe: $02
    ld h, l                                       ; $4bff: $65
    ld a, [hl+]                                   ; $4c00: $2a
    ld [bc], a                                    ; $4c01: $02
    and d                                         ; $4c02: $a2
    ld a, [hl+]                                   ; $4c03: $2a
    ld [bc], a                                    ; $4c04: $02
    jp c, $022a                                   ; $4c05: $da $2a $02

    rst $20                                       ; $4c08: $e7
    ld a, [hl+]                                   ; $4c09: $2a
    ld [bc], a                                    ; $4c0a: $02
    rla                                           ; $4c0b: $17
    dec hl                                        ; $4c0c: $2b
    ld [bc], a                                    ; $4c0d: $02
    ld b, a                                       ; $4c0e: $47
    dec hl                                        ; $4c0f: $2b
    ld [bc], a                                    ; $4c10: $02
    ld e, a                                       ; $4c11: $5f
    dec hl                                        ; $4c12: $2b
    ld [bc], a                                    ; $4c13: $02
    ld l, c                                       ; $4c14: $69
    dec hl                                        ; $4c15: $2b
    ld [bc], a                                    ; $4c16: $02
    add l                                         ; $4c17: $85
    dec hl                                        ; $4c18: $2b
    ld [bc], a                                    ; $4c19: $02
    sub [hl]                                      ; $4c1a: $96
    dec hl                                        ; $4c1b: $2b
    ld [bc], a                                    ; $4c1c: $02
    cp c                                          ; $4c1d: $b9
    dec hl                                        ; $4c1e: $2b
    ld [bc], a                                    ; $4c1f: $02
    and $2b                                       ; $4c20: $e6 $2b
    ld [bc], a                                    ; $4c22: $02
    ld bc, $022c                                  ; $4c23: $01 $2c $02
    db $10                                        ; $4c26: $10
    inc l                                         ; $4c27: $2c
    ld [bc], a                                    ; $4c28: $02
    cpl                                           ; $4c29: $2f
    inc l                                         ; $4c2a: $2c
    ld [bc], a                                    ; $4c2b: $02
    ccf                                           ; $4c2c: $3f
    inc l                                         ; $4c2d: $2c
    ld [bc], a                                    ; $4c2e: $02

Call_03a_4c2f:
    ld a, b                                       ; $4c2f: $78
    inc l                                         ; $4c30: $2c
    ld [bc], a                                    ; $4c31: $02
    and c                                         ; $4c32: $a1
    inc l                                         ; $4c33: $2c
    ld [bc], a                                    ; $4c34: $02
    call nc, $022c                                ; $4c35: $d4 $2c $02
    db $e4                                        ; $4c38: $e4
    inc l                                         ; $4c39: $2c
    ld [bc], a                                    ; $4c3a: $02
    db $fc                                        ; $4c3b: $fc
    inc l                                         ; $4c3c: $2c
    ld [bc], a                                    ; $4c3d: $02
    jr nz, jr_03a_4c6d                            ; $4c3e: $20 $2d

    ld [bc], a                                    ; $4c40: $02
    ld e, c                                       ; $4c41: $59
    dec l                                         ; $4c42: $2d
    ld [bc], a                                    ; $4c43: $02
    ld a, e                                       ; $4c44: $7b
    dec l                                         ; $4c45: $2d
    ld [bc], a                                    ; $4c46: $02
    and a                                         ; $4c47: $a7
    dec l                                         ; $4c48: $2d
    ld [bc], a                                    ; $4c49: $02
    or c                                          ; $4c4a: $b1
    dec l                                         ; $4c4b: $2d
    ld [bc], a                                    ; $4c4c: $02
    jp hl                                         ; $4c4d: $e9


    dec l                                         ; $4c4e: $2d
    ld [bc], a                                    ; $4c4f: $02
    add hl, de                                    ; $4c50: $19
    ld l, $02                                     ; $4c51: $2e $02
    inc [hl]                                      ; $4c53: $34
    ld l, $02                                     ; $4c54: $2e $02
    ld e, e                                       ; $4c56: $5b
    ld l, $02                                     ; $4c57: $2e $02
    ld a, c                                       ; $4c59: $79
    ld l, $02                                     ; $4c5a: $2e $02
    xor e                                         ; $4c5c: $ab
    ld l, $02                                     ; $4c5d: $2e $02
    ret nc                                        ; $4c5f: $d0

    ld l, $02                                     ; $4c60: $2e $02
    db $e3                                        ; $4c62: $e3

Call_03a_4c63:
    ld l, $02                                     ; $4c63: $2e $02
    inc e                                         ; $4c65: $1c
    cpl                                           ; $4c66: $2f
    ld [bc], a                                    ; $4c67: $02
    inc [hl]                                      ; $4c68: $34
    cpl                                           ; $4c69: $2f
    ld [bc], a                                    ; $4c6a: $02
    ld c, d                                       ; $4c6b: $4a
    cpl                                           ; $4c6c: $2f

jr_03a_4c6d:
    ld [bc], a                                    ; $4c6d: $02
    ld c, l                                       ; $4c6e: $4d
    cpl                                           ; $4c6f: $2f
    ld [bc], a                                    ; $4c70: $02
    ld a, [hl]                                    ; $4c71: $7e
    cpl                                           ; $4c72: $2f
    ld [bc], a                                    ; $4c73: $02
    sub h                                         ; $4c74: $94
    cpl                                           ; $4c75: $2f
    ld [bc], a                                    ; $4c76: $02
    and [hl]                                      ; $4c77: $a6
    cpl                                           ; $4c78: $2f
    ld [bc], a                                    ; $4c79: $02
    or l                                          ; $4c7a: $b5
    cpl                                           ; $4c7b: $2f
    ld [bc], a                                    ; $4c7c: $02
    ret c                                         ; $4c7d: $d8

    cpl                                           ; $4c7e: $2f
    ld [bc], a                                    ; $4c7f: $02
    db $ec                                        ; $4c80: $ec
    cpl                                           ; $4c81: $2f
    ld [bc], a                                    ; $4c82: $02
    add hl, bc                                    ; $4c83: $09
    jr nc, jr_03a_4c88                            ; $4c84: $30 $02

    jr jr_03a_4cb8                                ; $4c86: $18 $30

jr_03a_4c88:
    ld [bc], a                                    ; $4c88: $02
    ld a, [hl+]                                   ; $4c89: $2a
    jr nc, @+$04                                  ; $4c8a: $30 $02

    ld b, e                                       ; $4c8c: $43
    jr nc, @+$04                                  ; $4c8d: $30 $02

    sub e                                         ; $4c8f: $93
    jr nc, @+$04                                  ; $4c90: $30 $02

    xor d                                         ; $4c92: $aa
    jr nc, @+$04                                  ; $4c93: $30 $02

    rst $38                                       ; $4c95: $ff
    jr nc, @+$04                                  ; $4c96: $30 $02

    daa                                           ; $4c98: $27
    ld sp, $4c02                                  ; $4c99: $31 $02 $4c
    ld sp, $5602                                  ; $4c9c: $31 $02 $56
    ld sp, $7502                                  ; $4c9f: $31 $02 $75
    ld sp, $7d02                                  ; $4ca2: $31 $02 $7d
    ld sp, $a202                                  ; $4ca5: $31 $02 $a2
    ld sp, $b502                                  ; $4ca8: $31 $02 $b5
    ld sp, $cd02                                  ; $4cab: $31 $02 $cd
    ld sp, $1902                                  ; $4cae: $31 $02 $19
    ld [hl-], a                                   ; $4cb1: $32
    ld [bc], a                                    ; $4cb2: $02
    ld sp, $0232                                  ; $4cb3: $31 $32 $02
    ld c, b                                       ; $4cb6: $48
    ld [hl-], a                                   ; $4cb7: $32

jr_03a_4cb8:
    ld [bc], a                                    ; $4cb8: $02
    ld e, l                                       ; $4cb9: $5d
    ld [hl-], a                                   ; $4cba: $32
    ld [bc], a                                    ; $4cbb: $02
    ld a, e                                       ; $4cbc: $7b
    ld [hl-], a                                   ; $4cbd: $32
    ld [bc], a                                    ; $4cbe: $02
    adc b                                         ; $4cbf: $88
    ld [hl-], a                                   ; $4cc0: $32
    ld [bc], a                                    ; $4cc1: $02
    sub c                                         ; $4cc2: $91
    ld [hl-], a                                   ; $4cc3: $32
    ld [bc], a                                    ; $4cc4: $02
    pop hl                                        ; $4cc5: $e1
    ld [hl-], a                                   ; $4cc6: $32
    ld [bc], a                                    ; $4cc7: $02
    di                                            ; $4cc8: $f3
    ld [hl-], a                                   ; $4cc9: $32
    ld [bc], a                                    ; $4cca: $02
    nop                                           ; $4ccb: $00
    inc sp                                        ; $4ccc: $33
    ld [bc], a                                    ; $4ccd: $02
    add hl, bc                                    ; $4cce: $09
    inc sp                                        ; $4ccf: $33
    ld [bc], a                                    ; $4cd0: $02
    daa                                           ; $4cd1: $27
    inc sp                                        ; $4cd2: $33
    ld [bc], a                                    ; $4cd3: $02
    halt                                          ; $4cd4: $76
    inc sp                                        ; $4cd5: $33
    ld [bc], a                                    ; $4cd6: $02
    sub d                                         ; $4cd7: $92
    inc sp                                        ; $4cd8: $33
    ld [bc], a                                    ; $4cd9: $02
    and h                                         ; $4cda: $a4
    inc sp                                        ; $4cdb: $33
    ld [bc], a                                    ; $4cdc: $02
    xor [hl]                                      ; $4cdd: $ae
    inc sp                                        ; $4cde: $33
    ld [bc], a                                    ; $4cdf: $02
    push hl                                       ; $4ce0: $e5
    inc sp                                        ; $4ce1: $33
    ld [bc], a                                    ; $4ce2: $02
    ld sp, hl                                     ; $4ce3: $f9
    inc sp                                        ; $4ce4: $33
    ld [bc], a                                    ; $4ce5: $02
    db $10                                        ; $4ce6: $10
    inc [hl]                                      ; $4ce7: $34
    ld [bc], a                                    ; $4ce8: $02
    jr nz, jr_03a_4d1f                            ; $4ce9: $20 $34

    ld [bc], a                                    ; $4ceb: $02
    inc a                                         ; $4cec: $3c
    inc [hl]                                      ; $4ced: $34
    ld [bc], a                                    ; $4cee: $02
    ld c, [hl]                                    ; $4cef: $4e
    inc [hl]                                      ; $4cf0: $34
    ld [bc], a                                    ; $4cf1: $02
    ld [hl], h                                    ; $4cf2: $74
    inc [hl]                                      ; $4cf3: $34
    ld [bc], a                                    ; $4cf4: $02
    sub [hl]                                      ; $4cf5: $96
    inc [hl]                                      ; $4cf6: $34
    ld [bc], a                                    ; $4cf7: $02
    xor d                                         ; $4cf8: $aa
    inc [hl]                                      ; $4cf9: $34
    ld [bc], a                                    ; $4cfa: $02
    push af                                       ; $4cfb: $f5
    inc [hl]                                      ; $4cfc: $34
    ld [bc], a                                    ; $4cfd: $02
    ld d, $35                                     ; $4cfe: $16 $35
    ld [bc], a                                    ; $4d00: $02
    ld b, e                                       ; $4d01: $43
    dec [hl]                                      ; $4d02: $35
    ld [bc], a                                    ; $4d03: $02
    ld h, h                                       ; $4d04: $64
    dec [hl]                                      ; $4d05: $35
    ld [bc], a                                    ; $4d06: $02
    add b                                         ; $4d07: $80
    dec [hl]                                      ; $4d08: $35
    ld [bc], a                                    ; $4d09: $02
    cp b                                          ; $4d0a: $b8
    dec [hl]                                      ; $4d0b: $35
    ld [bc], a                                    ; $4d0c: $02
    pop bc                                        ; $4d0d: $c1
    dec [hl]                                      ; $4d0e: $35
    ld [bc], a                                    ; $4d0f: $02
    ld c, [hl]                                    ; $4d10: $4e
    ld [hl], $02                                  ; $4d11: $36 $02
    ld d, a                                       ; $4d13: $57
    ld [hl], $02                                  ; $4d14: $36 $02
    ld l, e                                       ; $4d16: $6b
    ld [hl], $02                                  ; $4d17: $36 $02
    add b                                         ; $4d19: $80
    ld [hl], $02                                  ; $4d1a: $36 $02
    sub e                                         ; $4d1c: $93
    ld [hl], $02                                  ; $4d1d: $36 $02

jr_03a_4d1f:
    adc $36                                       ; $4d1f: $ce $36
    ld [bc], a                                    ; $4d21: $02
    ld [$0237], sp                                ; $4d22: $08 $37 $02
    ld hl, $0237                                  ; $4d25: $21 $37 $02
    ld d, [hl]                                    ; $4d28: $56
    scf                                           ; $4d29: $37
    ld [bc], a                                    ; $4d2a: $02
    add [hl]                                      ; $4d2b: $86
    scf                                           ; $4d2c: $37
    ld [bc], a                                    ; $4d2d: $02
    sbc d                                         ; $4d2e: $9a
    scf                                           ; $4d2f: $37
    ld [bc], a                                    ; $4d30: $02
    or [hl]                                       ; $4d31: $b6
    scf                                           ; $4d32: $37
    ld [bc], a                                    ; $4d33: $02
    db $ec                                        ; $4d34: $ec
    scf                                           ; $4d35: $37
    ld [bc], a                                    ; $4d36: $02
    jr jr_03a_4d71                                ; $4d37: $18 $38

    ld [bc], a                                    ; $4d39: $02
    scf                                           ; $4d3a: $37
    jr c, @+$04                                   ; $4d3b: $38 $02

    ld e, h                                       ; $4d3d: $5c
    jr c, @+$04                                   ; $4d3e: $38 $02

    ld h, d                                       ; $4d40: $62
    jr c, @+$04                                   ; $4d41: $38 $02

    push bc                                       ; $4d43: $c5
    jr c, jr_03a_4d48                             ; $4d44: $38 $02

    srl b                                         ; $4d46: $cb $38

jr_03a_4d48:
    ld [bc], a                                    ; $4d48: $02
    or $38                                        ; $4d49: $f6 $38
    ld [bc], a                                    ; $4d4b: $02
    jr nz, jr_03a_4d87                            ; $4d4c: $20 $39

    ld [bc], a                                    ; $4d4e: $02
    jr c, jr_03a_4d8a                             ; $4d4f: $38 $39

    ld [bc], a                                    ; $4d51: $02
    ld b, a                                       ; $4d52: $47
    add hl, sp                                    ; $4d53: $39
    ld [bc], a                                    ; $4d54: $02
    ld d, e                                       ; $4d55: $53
    add hl, sp                                    ; $4d56: $39
    ld [bc], a                                    ; $4d57: $02
    ld [hl], d                                    ; $4d58: $72
    add hl, sp                                    ; $4d59: $39
    ld [bc], a                                    ; $4d5a: $02
    push bc                                       ; $4d5b: $c5
    add hl, sp                                    ; $4d5c: $39
    ld [bc], a                                    ; $4d5d: $02
    reti                                          ; $4d5e: $d9


    add hl, sp                                    ; $4d5f: $39
    ld [bc], a                                    ; $4d60: $02
    db $eb                                        ; $4d61: $eb
    add hl, sp                                    ; $4d62: $39
    ld [bc], a                                    ; $4d63: $02
    di                                            ; $4d64: $f3
    add hl, sp                                    ; $4d65: $39
    ld [bc], a                                    ; $4d66: $02
    jr nz, jr_03a_4da3                            ; $4d67: $20 $3a

    ld [bc], a                                    ; $4d69: $02
    ld d, b                                       ; $4d6a: $50
    ld a, [hl-]                                   ; $4d6b: $3a
    ld [bc], a                                    ; $4d6c: $02
    ld l, d                                       ; $4d6d: $6a
    ld a, [hl-]                                   ; $4d6e: $3a
    ld [bc], a                                    ; $4d6f: $02
    rst $00                                       ; $4d70: $c7

jr_03a_4d71:
    ld a, [hl-]                                   ; $4d71: $3a
    ld [bc], a                                    ; $4d72: $02
    pop hl                                        ; $4d73: $e1
    ld a, [hl-]                                   ; $4d74: $3a
    ld [bc], a                                    ; $4d75: $02
    ld hl, sp+$3a                                 ; $4d76: $f8 $3a
    ld [bc], a                                    ; $4d78: $02
    ld e, $3b                                     ; $4d79: $1e $3b
    ld [bc], a                                    ; $4d7b: $02
    ld l, l                                       ; $4d7c: $6d
    dec sp                                        ; $4d7d: $3b
    ld [bc], a                                    ; $4d7e: $02
    sbc [hl]                                      ; $4d7f: $9e
    dec sp                                        ; $4d80: $3b
    ld [bc], a                                    ; $4d81: $02
    call z, Call_000_023b                         ; $4d82: $cc $3b $02
    di                                            ; $4d85: $f3
    dec sp                                        ; $4d86: $3b

jr_03a_4d87:
    ld [bc], a                                    ; $4d87: $02
    rlca                                          ; $4d88: $07
    inc a                                         ; $4d89: $3c

jr_03a_4d8a:
    ld [bc], a                                    ; $4d8a: $02
    ld hl, $023c                                  ; $4d8b: $21 $3c $02
    daa                                           ; $4d8e: $27
    inc a                                         ; $4d8f: $3c
    ld [bc], a                                    ; $4d90: $02
    ld d, d                                       ; $4d91: $52
    inc a                                         ; $4d92: $3c
    ld [bc], a                                    ; $4d93: $02
    ld l, l                                       ; $4d94: $6d
    inc a                                         ; $4d95: $3c
    ld [bc], a                                    ; $4d96: $02
    sbc b                                         ; $4d97: $98
    inc a                                         ; $4d98: $3c
    ld [bc], a                                    ; $4d99: $02
    or b                                          ; $4d9a: $b0
    inc a                                         ; $4d9b: $3c
    ld [bc], a                                    ; $4d9c: $02
    sbc $3c                                       ; $4d9d: $de $3c
    ld [bc], a                                    ; $4d9f: $02
    ldh a, [$3c]                                  ; $4da0: $f0 $3c
    ld [bc], a                                    ; $4da2: $02

jr_03a_4da3:
    ld a, [bc]                                    ; $4da3: $0a
    dec a                                         ; $4da4: $3d
    ld [bc], a                                    ; $4da5: $02
    ld d, $3d                                     ; $4da6: $16 $3d
    ld [bc], a                                    ; $4da8: $02
    jp c, Jump_000_023d                           ; $4da9: $da $3d $02

    rst $20                                       ; $4dac: $e7
    dec a                                         ; $4dad: $3d
    ld [bc], a                                    ; $4dae: $02
    ld e, d                                       ; $4daf: $5a
    ld a, $02                                     ; $4db0: $3e $02
    ld a, [hl]                                    ; $4db2: $7e
    ld a, $02                                     ; $4db3: $3e $02
    and e                                         ; $4db5: $a3
    ld a, $02                                     ; $4db6: $3e $02
    ret z                                         ; $4db8: $c8

    ld a, $02                                     ; $4db9: $3e $02
    db $10                                        ; $4dbb: $10
    ccf                                           ; $4dbc: $3f
    ld [bc], a                                    ; $4dbd: $02
    inc hl                                        ; $4dbe: $23
    ccf                                           ; $4dbf: $3f
    ld [bc], a                                    ; $4dc0: $02
    ld l, $3f                                     ; $4dc1: $2e $3f
    ld [bc], a                                    ; $4dc3: $02
    inc [hl]                                      ; $4dc4: $34
    ccf                                           ; $4dc5: $3f
    ld [bc], a                                    ; $4dc6: $02
    ld d, [hl]                                    ; $4dc7: $56
    ccf                                           ; $4dc8: $3f
    ld [bc], a                                    ; $4dc9: $02
    ld l, c                                       ; $4dca: $69
    ccf                                           ; $4dcb: $3f
    ld [bc], a                                    ; $4dcc: $02
    adc c                                         ; $4dcd: $89
    ccf                                           ; $4dce: $3f
    ld [bc], a                                    ; $4dcf: $02
    xor d                                         ; $4dd0: $aa
    ccf                                           ; $4dd1: $3f
    ld [bc], a                                    ; $4dd2: $02
    cp [hl]                                       ; $4dd3: $be
    ccf                                           ; $4dd4: $3f
    inc bc                                        ; $4dd5: $03
    ld bc, $0300                                  ; $4dd6: $01 $00 $03
    jr c, jr_03a_4ddb                             ; $4dd9: $38 $00

jr_03a_4ddb:
    inc bc                                        ; $4ddb: $03
    ld d, e                                       ; $4ddc: $53
    nop                                           ; $4ddd: $00
    inc bc                                        ; $4dde: $03
    add c                                         ; $4ddf: $81
    nop                                           ; $4de0: $00
    inc bc                                        ; $4de1: $03
    and b                                         ; $4de2: $a0
    nop                                           ; $4de3: $00
    inc bc                                        ; $4de4: $03
    adc $00                                       ; $4de5: $ce $00
    inc bc                                        ; $4de7: $03
    ld hl, sp+$00                                 ; $4de8: $f8 $00
    inc bc                                        ; $4dea: $03
    inc e                                         ; $4deb: $1c
    ld bc, $2a03                                  ; $4dec: $01 $03 $2a
    ld bc, $3903                                  ; $4def: $01 $03 $39
    ld bc, $5003                                  ; $4df2: $01 $03 $50
    ld bc, $7503                                  ; $4df5: $01 $03 $75
    ld bc, $9a03                                  ; $4df8: $01 $03 $9a
    ld bc, $a303                                  ; $4dfb: $01 $03 $a3
    ld bc, $d103                                  ; $4dfe: $01 $03 $d1
    ld bc, $f203                                  ; $4e01: $01 $03 $f2
    ld bc, $1e03                                  ; $4e04: $01 $03 $1e
    ld [bc], a                                    ; $4e07: $02
    inc bc                                        ; $4e08: $03
    ld d, e                                       ; $4e09: $53
    ld [bc], a                                    ; $4e0a: $02
    inc bc                                        ; $4e0b: $03
    ld l, a                                       ; $4e0c: $6f
    ld [bc], a                                    ; $4e0d: $02
    inc bc                                        ; $4e0e: $03
    sbc d                                         ; $4e0f: $9a
    ld [bc], a                                    ; $4e10: $02
    inc bc                                        ; $4e11: $03
    db $ed                                        ; $4e12: $ed
    ld [bc], a                                    ; $4e13: $02
    inc bc                                        ; $4e14: $03
    dec h                                         ; $4e15: $25
    inc bc                                        ; $4e16: $03
    inc bc                                        ; $4e17: $03
    ld b, h                                       ; $4e18: $44
    inc bc                                        ; $4e19: $03
    inc bc                                        ; $4e1a: $03
    ld [hl], a                                    ; $4e1b: $77
    inc bc                                        ; $4e1c: $03
    inc bc                                        ; $4e1d: $03
    adc e                                         ; $4e1e: $8b
    inc bc                                        ; $4e1f: $03
    inc bc                                        ; $4e20: $03
    sbc a                                         ; $4e21: $9f
    inc bc                                        ; $4e22: $03
    inc bc                                        ; $4e23: $03
    jp Jump_000_0303                              ; $4e24: $c3 $03 $03


    db $e3                                        ; $4e27: $e3
    inc bc                                        ; $4e28: $03
    inc bc                                        ; $4e29: $03
    ld [bc], a                                    ; $4e2a: $02
    inc b                                         ; $4e2b: $04
    inc bc                                        ; $4e2c: $03
    ld [hl+], a                                   ; $4e2d: $22
    inc b                                         ; $4e2e: $04
    inc bc                                        ; $4e2f: $03
    ld c, a                                       ; $4e30: $4f
    inc b                                         ; $4e31: $04
    inc bc                                        ; $4e32: $03
    ld l, [hl]                                    ; $4e33: $6e
    inc b                                         ; $4e34: $04
    inc bc                                        ; $4e35: $03
    or h                                          ; $4e36: $b4
    inc b                                         ; $4e37: $04
    inc bc                                        ; $4e38: $03
    ret                                           ; $4e39: $c9


    inc b                                         ; $4e3a: $04
    inc bc                                        ; $4e3b: $03
    push de                                       ; $4e3c: $d5
    inc b                                         ; $4e3d: $04
    inc bc                                        ; $4e3e: $03
    rst $30                                       ; $4e3f: $f7
    inc b                                         ; $4e40: $04
    inc bc                                        ; $4e41: $03
    ld b, l                                       ; $4e42: $45
    dec b                                         ; $4e43: $05
    inc bc                                        ; $4e44: $03
    ld a, h                                       ; $4e45: $7c
    dec b                                         ; $4e46: $05
    inc bc                                        ; $4e47: $03
    sbc d                                         ; $4e48: $9a
    dec b                                         ; $4e49: $05
    inc bc                                        ; $4e4a: $03
    and d                                         ; $4e4b: $a2
    dec b                                         ; $4e4c: $05
    inc bc                                        ; $4e4d: $03
    xor e                                         ; $4e4e: $ab
    dec b                                         ; $4e4f: $05
    inc bc                                        ; $4e50: $03
    call z, $0305                                 ; $4e51: $cc $05 $03
    db $f4                                        ; $4e54: $f4
    dec b                                         ; $4e55: $05
    inc bc                                        ; $4e56: $03
    cp $05                                        ; $4e57: $fe $05
    inc bc                                        ; $4e59: $03
    dec d                                         ; $4e5a: $15
    ld b, $03                                     ; $4e5b: $06 $03
    inc l                                         ; $4e5d: $2c
    ld b, $03                                     ; $4e5e: $06 $03
    ld d, d                                       ; $4e60: $52
    ld b, $03                                     ; $4e61: $06 $03
    ld h, [hl]                                    ; $4e63: $66
    ld b, $03                                     ; $4e64: $06 $03
    and e                                         ; $4e66: $a3
    ld b, $03                                     ; $4e67: $06 $03
    rst $00                                       ; $4e69: $c7
    ld b, $03                                     ; $4e6a: $06 $03
    call c, Call_000_0306                         ; $4e6c: $dc $06 $03
    rst $30                                       ; $4e6f: $f7
    ld b, $03                                     ; $4e70: $06 $03
    ld b, $07                                     ; $4e72: $06 $07
    inc bc                                        ; $4e74: $03
    ld hl, $0307                                  ; $4e75: $21 $07 $03
    inc a                                         ; $4e78: $3c

Call_03a_4e79:
    rlca                                          ; $4e79: $07
    inc bc                                        ; $4e7a: $03
    ld c, h                                       ; $4e7b: $4c
    rlca                                          ; $4e7c: $07
    inc bc                                        ; $4e7d: $03
    ld [hl], c                                    ; $4e7e: $71
    rlca                                          ; $4e7f: $07
    inc bc                                        ; $4e80: $03
    add l                                         ; $4e81: $85
    rlca                                          ; $4e82: $07
    inc bc                                        ; $4e83: $03
    sub [hl]                                      ; $4e84: $96
    rlca                                          ; $4e85: $07
    inc bc                                        ; $4e86: $03
    xor h                                         ; $4e87: $ac
    rlca                                          ; $4e88: $07
    inc bc                                        ; $4e89: $03
    push bc                                       ; $4e8a: $c5
    rlca                                          ; $4e8b: $07
    inc bc                                        ; $4e8c: $03
    rst $10                                       ; $4e8d: $d7
    rlca                                          ; $4e8e: $07
    inc bc                                        ; $4e8f: $03
    rst $30                                       ; $4e90: $f7
    rlca                                          ; $4e91: $07
    inc bc                                        ; $4e92: $03
    dec d                                         ; $4e93: $15
    ld [$2503], sp                                ; $4e94: $08 $03 $25
    ld [$4203], sp                                ; $4e97: $08 $03 $42
    ld [$5e03], sp                                ; $4e9a: $08 $03 $5e
    ld [$7e03], sp                                ; $4e9d: $08 $03 $7e
    ld [$9403], sp                                ; $4ea0: $08 $03 $94
    ld [$b403], sp                                ; $4ea3: $08 $03 $b4
    ld [$cf03], sp                                ; $4ea6: $08 $03 $cf
    ld [$f103], sp                                ; $4ea9: $08 $03 $f1
    ld [$0903], sp                                ; $4eac: $08 $03 $09
    add hl, bc                                    ; $4eaf: $09
    inc bc                                        ; $4eb0: $03
    inc hl                                        ; $4eb1: $23
    add hl, bc                                    ; $4eb2: $09
    inc bc                                        ; $4eb3: $03
    ld d, h                                       ; $4eb4: $54
    add hl, bc                                    ; $4eb5: $09
    inc bc                                        ; $4eb6: $03
    ld l, e                                       ; $4eb7: $6b
    add hl, bc                                    ; $4eb8: $09
    inc bc                                        ; $4eb9: $03
    sub h                                         ; $4eba: $94
    add hl, bc                                    ; $4ebb: $09
    inc bc                                        ; $4ebc: $03
    xor c                                         ; $4ebd: $a9
    add hl, bc                                    ; $4ebe: $09
    inc bc                                        ; $4ebf: $03
    or a                                          ; $4ec0: $b7
    add hl, bc                                    ; $4ec1: $09
    inc bc                                        ; $4ec2: $03
    call c, $0309                                 ; $4ec3: $dc $09 $03
    rst $30                                       ; $4ec6: $f7
    add hl, bc                                    ; $4ec7: $09
    inc bc                                        ; $4ec8: $03
    add hl, bc                                    ; $4ec9: $09
    ld a, [bc]                                    ; $4eca: $0a
    inc bc                                        ; $4ecb: $03
    ld a, $0a                                     ; $4ecc: $3e $0a
    inc bc                                        ; $4ece: $03
    ld h, e                                       ; $4ecf: $63
    ld a, [bc]                                    ; $4ed0: $0a
    inc bc                                        ; $4ed1: $03
    adc b                                         ; $4ed2: $88
    ld a, [bc]                                    ; $4ed3: $0a
    inc bc                                        ; $4ed4: $03
    xor d                                         ; $4ed5: $aa
    ld a, [bc]                                    ; $4ed6: $0a
    inc bc                                        ; $4ed7: $03
    pop bc                                        ; $4ed8: $c1
    ld a, [bc]                                    ; $4ed9: $0a
    inc bc                                        ; $4eda: $03
    ld [c], a                                     ; $4edb: $e2
    ld a, [bc]                                    ; $4edc: $0a
    inc bc                                        ; $4edd: $03
    xor $0a                                       ; $4ede: $ee $0a
    inc bc                                        ; $4ee0: $03
    dec b                                         ; $4ee1: $05
    dec bc                                        ; $4ee2: $0b
    inc bc                                        ; $4ee3: $03
    dec bc                                        ; $4ee4: $0b
    dec bc                                        ; $4ee5: $0b
    inc bc                                        ; $4ee6: $03
    rla                                           ; $4ee7: $17
    dec bc                                        ; $4ee8: $0b
    inc bc                                        ; $4ee9: $03
    inc h                                         ; $4eea: $24
    dec bc                                        ; $4eeb: $0b
    inc bc                                        ; $4eec: $03
    ld [hl], e                                    ; $4eed: $73
    dec bc                                        ; $4eee: $0b
    inc bc                                        ; $4eef: $03
    adc l                                         ; $4ef0: $8d
    dec bc                                        ; $4ef1: $0b
    inc bc                                        ; $4ef2: $03
    and [hl]                                      ; $4ef3: $a6
    dec bc                                        ; $4ef4: $0b
    inc bc                                        ; $4ef5: $03
    ret z                                         ; $4ef6: $c8

    dec bc                                        ; $4ef7: $0b
    inc bc                                        ; $4ef8: $03
    ld a, [$030b]                                 ; $4ef9: $fa $0b $03
    inc de                                        ; $4efc: $13
    inc c                                         ; $4efd: $0c
    inc bc                                        ; $4efe: $03
    dec l                                         ; $4eff: $2d
    inc c                                         ; $4f00: $0c
    inc bc                                        ; $4f01: $03
    ld [hl], $0c                                  ; $4f02: $36 $0c
    inc bc                                        ; $4f04: $03
    ld d, [hl]                                    ; $4f05: $56
    inc c                                         ; $4f06: $0c
    inc bc                                        ; $4f07: $03
    ld a, [hl]                                    ; $4f08: $7e
    inc c                                         ; $4f09: $0c
    inc bc                                        ; $4f0a: $03
    sub c                                         ; $4f0b: $91
    inc c                                         ; $4f0c: $0c
    inc bc                                        ; $4f0d: $03
    or e                                          ; $4f0e: $b3
    inc c                                         ; $4f0f: $0c
    inc bc                                        ; $4f10: $03
    push bc                                       ; $4f11: $c5
    inc c                                         ; $4f12: $0c
    inc bc                                        ; $4f13: $03
    add sp, $0c                                   ; $4f14: $e8 $0c
    inc bc                                        ; $4f16: $03
    rst $30                                       ; $4f17: $f7
    inc c                                         ; $4f18: $0c
    inc bc                                        ; $4f19: $03
    ld e, $0d                                     ; $4f1a: $1e $0d
    inc bc                                        ; $4f1c: $03
    jr c, jr_03a_4f2c                             ; $4f1d: $38 $0d

    inc bc                                        ; $4f1f: $03
    ld l, e                                       ; $4f20: $6b
    dec c                                         ; $4f21: $0d
    inc bc                                        ; $4f22: $03
    sbc c                                         ; $4f23: $99
    dec c                                         ; $4f24: $0d
    inc bc                                        ; $4f25: $03
    and c                                         ; $4f26: $a1
    dec c                                         ; $4f27: $0d
    inc bc                                        ; $4f28: $03
    xor e                                         ; $4f29: $ab
    dec c                                         ; $4f2a: $0d
    inc bc                                        ; $4f2b: $03

jr_03a_4f2c:
    ret z                                         ; $4f2c: $c8

    dec c                                         ; $4f2d: $0d
    inc bc                                        ; $4f2e: $03
    push de                                       ; $4f2f: $d5
    dec c                                         ; $4f30: $0d
    inc bc                                        ; $4f31: $03
    pop hl                                        ; $4f32: $e1
    dec c                                         ; $4f33: $0d
    inc bc                                        ; $4f34: $03
    ld bc, $030e                                  ; $4f35: $01 $0e $03
    jr c, jr_03a_4f48                             ; $4f38: $38 $0e

    inc bc                                        ; $4f3a: $03
    ld c, d                                       ; $4f3b: $4a
    ld c, $03                                     ; $4f3c: $0e $03
    ld a, c                                       ; $4f3e: $79
    ld c, $03                                     ; $4f3f: $0e $03
    sub d                                         ; $4f41: $92
    ld c, $03                                     ; $4f42: $0e $03
    cp e                                          ; $4f44: $bb
    ld c, $03                                     ; $4f45: $0e $03
    ret                                           ; $4f47: $c9


jr_03a_4f48:
    ld c, $03                                     ; $4f48: $0e $03
    ld h, d                                       ; $4f4a: $62
    rrca                                          ; $4f4b: $0f
    inc bc                                        ; $4f4c: $03
    ld [hl], c                                    ; $4f4d: $71
    rrca                                          ; $4f4e: $0f
    inc bc                                        ; $4f4f: $03
    and d                                         ; $4f50: $a2
    rrca                                          ; $4f51: $0f
    inc bc                                        ; $4f52: $03
    pop af                                        ; $4f53: $f1
    rrca                                          ; $4f54: $0f
    inc bc                                        ; $4f55: $03
    ld d, $10                                     ; $4f56: $16 $10
    inc bc                                        ; $4f58: $03
    cpl                                           ; $4f59: $2f
    db $10                                        ; $4f5a: $10
    inc bc                                        ; $4f5b: $03
    ld c, d                                       ; $4f5c: $4a
    db $10                                        ; $4f5d: $10
    inc bc                                        ; $4f5e: $03
    ld [hl], e                                    ; $4f5f: $73
    db $10                                        ; $4f60: $10
    inc bc                                        ; $4f61: $03
    and d                                         ; $4f62: $a2
    db $10                                        ; $4f63: $10
    inc bc                                        ; $4f64: $03
    sub $10                                       ; $4f65: $d6 $10
    inc bc                                        ; $4f67: $03
    or $10                                        ; $4f68: $f6 $10
    inc bc                                        ; $4f6a: $03
    ld e, $11                                     ; $4f6b: $1e $11
    inc bc                                        ; $4f6d: $03
    dec [hl]                                      ; $4f6e: $35
    ld de, $4c03                                  ; $4f6f: $11 $03 $4c
    ld de, $9903                                  ; $4f72: $11 $03 $99
    ld de, $d503                                  ; $4f75: $11 $03 $d5
    ld de, $e803                                  ; $4f78: $11 $03 $e8
    ld de, $0203                                  ; $4f7b: $11 $03 $02
    ld [de], a                                    ; $4f7e: $12
    inc bc                                        ; $4f7f: $03
    ld a, [de]                                    ; $4f80: $1a
    ld [de], a                                    ; $4f81: $12
    inc bc                                        ; $4f82: $03
    jr nz, jr_03a_4f97                            ; $4f83: $20 $12

    inc bc                                        ; $4f85: $03
    dec sp                                        ; $4f86: $3b
    ld [de], a                                    ; $4f87: $12
    inc bc                                        ; $4f88: $03
    ld h, h                                       ; $4f89: $64
    ld [de], a                                    ; $4f8a: $12
    inc bc                                        ; $4f8b: $03
    ld b, l                                       ; $4f8c: $45
    inc de                                        ; $4f8d: $13
    inc bc                                        ; $4f8e: $03
    ld c, l                                       ; $4f8f: $4d
    inc de                                        ; $4f90: $13
    inc bc                                        ; $4f91: $03
    ld e, e                                       ; $4f92: $5b
    inc de                                        ; $4f93: $13
    inc bc                                        ; $4f94: $03
    ld [hl], c                                    ; $4f95: $71
    inc de                                        ; $4f96: $13

jr_03a_4f97:
    inc bc                                        ; $4f97: $03
    sbc [hl]                                      ; $4f98: $9e
    inc de                                        ; $4f99: $13
    inc bc                                        ; $4f9a: $03
    cp l                                          ; $4f9b: $bd
    inc de                                        ; $4f9c: $13
    inc bc                                        ; $4f9d: $03
    db $ed                                        ; $4f9e: $ed
    inc de                                        ; $4f9f: $13
    inc bc                                        ; $4fa0: $03
    rrca                                          ; $4fa1: $0f
    inc d                                         ; $4fa2: $14
    inc bc                                        ; $4fa3: $03
    ld l, $14                                     ; $4fa4: $2e $14
    inc bc                                        ; $4fa6: $03
    ld a, [hl-]                                   ; $4fa7: $3a
    inc d                                         ; $4fa8: $14
    inc bc                                        ; $4fa9: $03
    ld b, b                                       ; $4faa: $40
    inc d                                         ; $4fab: $14
    inc bc                                        ; $4fac: $03
    ld d, [hl]                                    ; $4fad: $56
    inc d                                         ; $4fae: $14
    inc bc                                        ; $4faf: $03
    xor c                                         ; $4fb0: $a9
    inc d                                         ; $4fb1: $14
    inc bc                                        ; $4fb2: $03
    jp $0314                                      ; $4fb3: $c3 $14 $03


    ld [hl], $15                                  ; $4fb6: $36 $15
    inc bc                                        ; $4fb8: $03
    sub l                                         ; $4fb9: $95
    dec d                                         ; $4fba: $15
    inc bc                                        ; $4fbb: $03
    ld sp, hl                                     ; $4fbc: $f9
    dec d                                         ; $4fbd: $15
    inc bc                                        ; $4fbe: $03
    ld d, a                                       ; $4fbf: $57
    ld d, $03                                     ; $4fc0: $16 $03
    or e                                          ; $4fc2: $b3
    ld d, $03                                     ; $4fc3: $16 $03
    rst $28                                       ; $4fc5: $ef
    ld d, $03                                     ; $4fc6: $16 $03
    dec [hl]                                      ; $4fc8: $35
    rla                                           ; $4fc9: $17
    inc bc                                        ; $4fca: $03
    ld h, a                                       ; $4fcb: $67
    rla                                           ; $4fcc: $17
    inc bc                                        ; $4fcd: $03
    jp $0317                                      ; $4fce: $c3 $17 $03


    pop de                                        ; $4fd1: $d1
    rla                                           ; $4fd2: $17
    inc bc                                        ; $4fd3: $03
    ret c                                         ; $4fd4: $d8

    rla                                           ; $4fd5: $17
    inc bc                                        ; $4fd6: $03
    add sp, $17                                   ; $4fd7: $e8 $17
    inc bc                                        ; $4fd9: $03
    dec b                                         ; $4fda: $05
    jr jr_03a_4fe0                                ; $4fdb: $18 $03

    jr jr_03a_4ff7                                ; $4fdd: $18 $18

    inc bc                                        ; $4fdf: $03

jr_03a_4fe0:
    inc l                                         ; $4fe0: $2c
    jr jr_03a_4fe6                                ; $4fe1: $18 $03

    ld a, [hl-]                                   ; $4fe3: $3a
    jr jr_03a_4fe9                                ; $4fe4: $18 $03

jr_03a_4fe6:
    ld d, e                                       ; $4fe6: $53
    jr jr_03a_4fec                                ; $4fe7: $18 $03

jr_03a_4fe9:
    ld h, e                                       ; $4fe9: $63
    jr jr_03a_4fef                                ; $4fea: $18 $03

jr_03a_4fec:
    ld [hl], h                                    ; $4fec: $74
    jr jr_03a_4ff2                                ; $4fed: $18 $03

jr_03a_4fef:
    and c                                         ; $4fef: $a1
    jr jr_03a_4ff5                                ; $4ff0: $18 $03

jr_03a_4ff2:
    cp c                                          ; $4ff2: $b9
    jr jr_03a_4ff8                                ; $4ff3: $18 $03

jr_03a_4ff5:
    adc $18                                       ; $4ff5: $ce $18

jr_03a_4ff7:
    inc bc                                        ; $4ff7: $03

jr_03a_4ff8:
    rst $10                                       ; $4ff8: $d7
    jr jr_03a_4ffe                                ; $4ff9: $18 $03

    di                                            ; $4ffb: $f3
    jr jr_03a_5001                                ; $4ffc: $18 $03

jr_03a_4ffe:
    ld e, $19                                     ; $4ffe: $1e $19
    inc bc                                        ; $5000: $03

jr_03a_5001:
    scf                                           ; $5001: $37
    add hl, de                                    ; $5002: $19
    inc bc                                        ; $5003: $03
    ld e, l                                       ; $5004: $5d
    add hl, de                                    ; $5005: $19
    inc bc                                        ; $5006: $03
    add b                                         ; $5007: $80
    add hl, de                                    ; $5008: $19
    inc bc                                        ; $5009: $03
    push de                                       ; $500a: $d5
    add hl, de                                    ; $500b: $19
    inc bc                                        ; $500c: $03
    db $f4                                        ; $500d: $f4
    add hl, de                                    ; $500e: $19
    inc bc                                        ; $500f: $03
    ld a, [de]                                    ; $5010: $1a
    ld a, [de]                                    ; $5011: $1a
    inc bc                                        ; $5012: $03
    dec sp                                        ; $5013: $3b
    ld a, [de]                                    ; $5014: $1a
    inc bc                                        ; $5015: $03
    ld h, b                                       ; $5016: $60
    ld a, [de]                                    ; $5017: $1a
    inc bc                                        ; $5018: $03
    ld [hl], h                                    ; $5019: $74
    ld a, [de]                                    ; $501a: $1a
    inc bc                                        ; $501b: $03
    ld a, l                                       ; $501c: $7d
    ld a, [de]                                    ; $501d: $1a
    inc bc                                        ; $501e: $03
    sub a                                         ; $501f: $97
    ld a, [de]                                    ; $5020: $1a
    inc bc                                        ; $5021: $03
    and e                                         ; $5022: $a3
    ld a, [de]                                    ; $5023: $1a
    inc bc                                        ; $5024: $03
    or d                                          ; $5025: $b2
    ld a, [de]                                    ; $5026: $1a
    inc bc                                        ; $5027: $03
    jp Jump_000_031a                              ; $5028: $c3 $1a $03


    pop de                                        ; $502b: $d1
    ld a, [de]                                    ; $502c: $1a
    inc bc                                        ; $502d: $03
    rst $20                                       ; $502e: $e7
    ld a, [de]                                    ; $502f: $1a
    inc bc                                        ; $5030: $03
    or $1a                                        ; $5031: $f6 $1a
    inc bc                                        ; $5033: $03
    db $fd                                        ; $5034: $fd
    ld a, [de]                                    ; $5035: $1a
    inc bc                                        ; $5036: $03
    ld c, $1b                                     ; $5037: $0e $1b
    inc bc                                        ; $5039: $03
    add hl, de                                    ; $503a: $19
    dec de                                        ; $503b: $1b
    inc bc                                        ; $503c: $03
    rra                                           ; $503d: $1f
    dec de                                        ; $503e: $1b
    inc bc                                        ; $503f: $03
    jr nc, jr_03a_505d                            ; $5040: $30 $1b

    inc bc                                        ; $5042: $03
    jr c, jr_03a_5060                             ; $5043: $38 $1b

    inc bc                                        ; $5045: $03
    ld b, e                                       ; $5046: $43
    dec de                                        ; $5047: $1b
    inc bc                                        ; $5048: $03
    ld c, l                                       ; $5049: $4d
    dec de                                        ; $504a: $1b
    inc bc                                        ; $504b: $03
    ld d, d                                       ; $504c: $52
    dec de                                        ; $504d: $1b
    inc bc                                        ; $504e: $03
    ld e, d                                       ; $504f: $5a
    dec de                                        ; $5050: $1b
    inc bc                                        ; $5051: $03
    ld h, d                                       ; $5052: $62
    dec de                                        ; $5053: $1b
    inc bc                                        ; $5054: $03
    ld l, b                                       ; $5055: $68
    dec de                                        ; $5056: $1b
    inc bc                                        ; $5057: $03
    ld l, [hl]                                    ; $5058: $6e
    dec de                                        ; $5059: $1b
    inc bc                                        ; $505a: $03
    ld [hl], e                                    ; $505b: $73
    dec de                                        ; $505c: $1b

jr_03a_505d:
    inc bc                                        ; $505d: $03
    ld a, b                                       ; $505e: $78
    dec de                                        ; $505f: $1b

jr_03a_5060:
    inc bc                                        ; $5060: $03
    ld a, [hl]                                    ; $5061: $7e
    dec de                                        ; $5062: $1b
    inc bc                                        ; $5063: $03
    add l                                         ; $5064: $85
    dec de                                        ; $5065: $1b
    inc bc                                        ; $5066: $03
    adc l                                         ; $5067: $8d
    dec de                                        ; $5068: $1b
    inc bc                                        ; $5069: $03
    sub l                                         ; $506a: $95
    dec de                                        ; $506b: $1b
    inc bc                                        ; $506c: $03
    sbc l                                         ; $506d: $9d
    dec de                                        ; $506e: $1b
    inc bc                                        ; $506f: $03
    xor c                                         ; $5070: $a9
    dec de                                        ; $5071: $1b
    inc bc                                        ; $5072: $03
    cp b                                          ; $5073: $b8
    dec de                                        ; $5074: $1b
    inc bc                                        ; $5075: $03
    jp $031b                                      ; $5076: $c3 $1b $03


    db $d3                                        ; $5079: $d3
    dec de                                        ; $507a: $1b
    inc bc                                        ; $507b: $03
    db $dd                                        ; $507c: $dd
    dec de                                        ; $507d: $1b
    inc bc                                        ; $507e: $03
    and $1b                                       ; $507f: $e6 $1b
    inc bc                                        ; $5081: $03
    db $f4                                        ; $5082: $f4
    dec de                                        ; $5083: $1b
    inc bc                                        ; $5084: $03
    nop                                           ; $5085: $00
    inc e                                         ; $5086: $1c
    inc bc                                        ; $5087: $03
    dec c                                         ; $5088: $0d
    inc e                                         ; $5089: $1c
    inc bc                                        ; $508a: $03
    ld e, $1c                                     ; $508b: $1e $1c
    inc bc                                        ; $508d: $03
    add hl, hl                                    ; $508e: $29
    inc e                                         ; $508f: $1c
    inc bc                                        ; $5090: $03
    ld [hl], $1c                                  ; $5091: $36 $1c
    inc bc                                        ; $5093: $03
    ld b, c                                       ; $5094: $41
    inc e                                         ; $5095: $1c
    inc bc                                        ; $5096: $03
    ld c, h                                       ; $5097: $4c
    inc e                                         ; $5098: $1c
    inc bc                                        ; $5099: $03
    ld e, b                                       ; $509a: $58
    inc e                                         ; $509b: $1c
    inc bc                                        ; $509c: $03
    ld l, c                                       ; $509d: $69
    inc e                                         ; $509e: $1c
    inc bc                                        ; $509f: $03
    ld [hl], e                                    ; $50a0: $73
    inc e                                         ; $50a1: $1c
    inc bc                                        ; $50a2: $03
    add h                                         ; $50a3: $84
    inc e                                         ; $50a4: $1c
    inc bc                                        ; $50a5: $03
    sub h                                         ; $50a6: $94
    inc e                                         ; $50a7: $1c
    inc bc                                        ; $50a8: $03
    sbc a                                         ; $50a9: $9f
    inc e                                         ; $50aa: $1c
    inc bc                                        ; $50ab: $03
    xor e                                         ; $50ac: $ab
    inc e                                         ; $50ad: $1c
    inc bc                                        ; $50ae: $03
    cp b                                          ; $50af: $b8
    inc e                                         ; $50b0: $1c
    inc bc                                        ; $50b1: $03
    jp Jump_000_031c                              ; $50b2: $c3 $1c $03


    push de                                       ; $50b5: $d5
    inc e                                         ; $50b6: $1c
    inc bc                                        ; $50b7: $03
    ld [c], a                                     ; $50b8: $e2
    inc e                                         ; $50b9: $1c
    inc bc                                        ; $50ba: $03
    xor $1c                                       ; $50bb: $ee $1c
    inc bc                                        ; $50bd: $03
    ld sp, hl                                     ; $50be: $f9
    inc e                                         ; $50bf: $1c
    inc bc                                        ; $50c0: $03
    dec b                                         ; $50c1: $05
    dec e                                         ; $50c2: $1d
    inc bc                                        ; $50c3: $03
    db $10                                        ; $50c4: $10
    dec e                                         ; $50c5: $1d
    inc bc                                        ; $50c6: $03
    ld a, [de]                                    ; $50c7: $1a
    dec e                                         ; $50c8: $1d
    inc bc                                        ; $50c9: $03
    inc h                                         ; $50ca: $24
    dec e                                         ; $50cb: $1d
    inc bc                                        ; $50cc: $03
    cpl                                           ; $50cd: $2f
    dec e                                         ; $50ce: $1d
    inc bc                                        ; $50cf: $03
    dec sp                                        ; $50d0: $3b
    dec e                                         ; $50d1: $1d
    inc bc                                        ; $50d2: $03
    ld b, h                                       ; $50d3: $44
    dec e                                         ; $50d4: $1d
    inc bc                                        ; $50d5: $03
    ld c, [hl]                                    ; $50d6: $4e
    dec e                                         ; $50d7: $1d
    inc bc                                        ; $50d8: $03
    ld e, l                                       ; $50d9: $5d
    dec e                                         ; $50da: $1d
    inc bc                                        ; $50db: $03
    ld h, l                                       ; $50dc: $65
    dec e                                         ; $50dd: $1d
    inc bc                                        ; $50de: $03
    ld [hl], b                                    ; $50df: $70
    dec e                                         ; $50e0: $1d
    inc bc                                        ; $50e1: $03
    add d                                         ; $50e2: $82
    dec e                                         ; $50e3: $1d
    inc bc                                        ; $50e4: $03
    adc l                                         ; $50e5: $8d
    dec e                                         ; $50e6: $1d
    inc bc                                        ; $50e7: $03
    sub a                                         ; $50e8: $97
    dec e                                         ; $50e9: $1d
    inc bc                                        ; $50ea: $03
    sbc [hl]                                      ; $50eb: $9e
    dec e                                         ; $50ec: $1d
    inc bc                                        ; $50ed: $03
    and l                                         ; $50ee: $a5

Call_03a_50ef:
    dec e                                         ; $50ef: $1d
    inc bc                                        ; $50f0: $03
    or l                                          ; $50f1: $b5
    dec e                                         ; $50f2: $1d
    inc bc                                        ; $50f3: $03
    ret z                                         ; $50f4: $c8

    dec e                                         ; $50f5: $1d
    inc bc                                        ; $50f6: $03
    db $d3                                        ; $50f7: $d3
    dec e                                         ; $50f8: $1d
    inc bc                                        ; $50f9: $03
    sbc $1d                                       ; $50fa: $de $1d
    inc bc                                        ; $50fc: $03
    db $eb                                        ; $50fd: $eb
    dec e                                         ; $50fe: $1d
    inc bc                                        ; $50ff: $03
    ld a, [$031d]                                 ; $5100: $fa $1d $03
    ld b, $1e                                     ; $5103: $06 $1e
    inc bc                                        ; $5105: $03
    ld de, $031e                                  ; $5106: $11 $1e $03
    dec de                                        ; $5109: $1b
    ld e, $03                                     ; $510a: $1e $03
    dec h                                         ; $510c: $25
    ld e, $03                                     ; $510d: $1e $03
    cpl                                           ; $510f: $2f
    ld e, $03                                     ; $5110: $1e $03
    dec sp                                        ; $5112: $3b
    ld e, $03                                     ; $5113: $1e $03
    ld b, a                                       ; $5115: $47
    ld e, $03                                     ; $5116: $1e $03
    ld d, e                                       ; $5118: $53
    ld e, $03                                     ; $5119: $1e $03
    ld e, [hl]                                    ; $511b: $5e
    ld e, $03                                     ; $511c: $1e $03
    ld h, [hl]                                    ; $511e: $66
    ld e, $03                                     ; $511f: $1e $03
    ld l, h                                       ; $5121: $6c
    ld e, $03                                     ; $5122: $1e $03
    ld a, c                                       ; $5124: $79
    ld e, $03                                     ; $5125: $1e $03
    add e                                         ; $5127: $83
    ld e, $03                                     ; $5128: $1e $03
    adc h                                         ; $512a: $8c
    ld e, $03                                     ; $512b: $1e $03
    sub l                                         ; $512d: $95
    ld e, $03                                     ; $512e: $1e $03
    sbc a                                         ; $5130: $9f
    ld e, $03                                     ; $5131: $1e $03
    xor d                                         ; $5133: $aa
    ld e, $03                                     ; $5134: $1e $03
    or [hl]                                       ; $5136: $b6
    ld e, $03                                     ; $5137: $1e $03
    cp e                                          ; $5139: $bb
    ld e, $03                                     ; $513a: $1e $03
    call nz, Call_000_031e                        ; $513c: $c4 $1e $03
    jp z, Jump_000_031e                           ; $513f: $ca $1e $03

    ret nc                                        ; $5142: $d0

    ld e, $03                                     ; $5143: $1e $03
    db $dd                                        ; $5145: $dd
    ld e, $03                                     ; $5146: $1e $03
    add sp, $1e                                   ; $5148: $e8 $1e
    inc bc                                        ; $514a: $03
    push af                                       ; $514b: $f5
    ld e, $03                                     ; $514c: $1e $03
    rst $38                                       ; $514e: $ff
    ld e, $03                                     ; $514f: $1e $03
    dec bc                                        ; $5151: $0b
    rra                                           ; $5152: $1f
    inc bc                                        ; $5153: $03
    ld d, $1f                                     ; $5154: $16 $1f
    inc bc                                        ; $5156: $03
    inc hl                                        ; $5157: $23
    rra                                           ; $5158: $1f
    inc bc                                        ; $5159: $03
    inc l                                         ; $515a: $2c
    rra                                           ; $515b: $1f
    inc bc                                        ; $515c: $03
    inc a                                         ; $515d: $3c
    rra                                           ; $515e: $1f
    inc bc                                        ; $515f: $03
    ld b, d                                       ; $5160: $42
    rra                                           ; $5161: $1f
    inc bc                                        ; $5162: $03
    ld c, b                                       ; $5163: $48
    rra                                           ; $5164: $1f
    inc bc                                        ; $5165: $03
    ld d, [hl]                                    ; $5166: $56
    rra                                           ; $5167: $1f
    inc bc                                        ; $5168: $03
    ld h, c                                       ; $5169: $61
    rra                                           ; $516a: $1f
    inc bc                                        ; $516b: $03
    ld h, [hl]                                    ; $516c: $66
    rra                                           ; $516d: $1f
    inc bc                                        ; $516e: $03
    ld [hl], e                                    ; $516f: $73
    rra                                           ; $5170: $1f
    inc bc                                        ; $5171: $03
    ld a, [hl]                                    ; $5172: $7e
    rra                                           ; $5173: $1f
    inc bc                                        ; $5174: $03
    adc d                                         ; $5175: $8a
    rra                                           ; $5176: $1f
    inc bc                                        ; $5177: $03
    sub a                                         ; $5178: $97
    rra                                           ; $5179: $1f
    inc bc                                        ; $517a: $03
    and d                                         ; $517b: $a2
    rra                                           ; $517c: $1f
    inc bc                                        ; $517d: $03
    xor h                                         ; $517e: $ac
    rra                                           ; $517f: $1f
    inc bc                                        ; $5180: $03
    or e                                          ; $5181: $b3
    rra                                           ; $5182: $1f
    inc bc                                        ; $5183: $03
    cp c                                          ; $5184: $b9
    rra                                           ; $5185: $1f
    inc bc                                        ; $5186: $03
    pop bc                                        ; $5187: $c1
    rra                                           ; $5188: $1f
    inc bc                                        ; $5189: $03
    call z, $031f                                 ; $518a: $cc $1f $03
    rst $10                                       ; $518d: $d7
    rra                                           ; $518e: $1f
    inc bc                                        ; $518f: $03
    rst $18                                       ; $5190: $df
    rra                                           ; $5191: $1f
    inc bc                                        ; $5192: $03
    xor $1f                                       ; $5193: $ee $1f
    inc bc                                        ; $5195: $03
    ld a, [$031f]                                 ; $5196: $fa $1f $03
    inc bc                                        ; $5199: $03
    jr nz, jr_03a_519f                            ; $519a: $20 $03

    ld c, $20                                     ; $519c: $0e $20
    inc bc                                        ; $519e: $03

jr_03a_519f:
    ld a, [de]                                    ; $519f: $1a
    jr nz, jr_03a_51a5                            ; $51a0: $20 $03

    ld h, $20                                     ; $51a2: $26 $20
    inc bc                                        ; $51a4: $03

jr_03a_51a5:
    ld sp, $0320                                  ; $51a5: $31 $20 $03
    add hl, sp                                    ; $51a8: $39
    jr nz, jr_03a_51ae                            ; $51a9: $20 $03

    ld c, d                                       ; $51ab: $4a
    jr nz, jr_03a_51b1                            ; $51ac: $20 $03

jr_03a_51ae:
    ld c, a                                       ; $51ae: $4f
    jr nz, jr_03a_51b4                            ; $51af: $20 $03

jr_03a_51b1:
    ld d, a                                       ; $51b1: $57
    jr nz, jr_03a_51b7                            ; $51b2: $20 $03

jr_03a_51b4:
    ld e, l                                       ; $51b4: $5d
    jr nz, jr_03a_51ba                            ; $51b5: $20 $03

jr_03a_51b7:
    ld l, b                                       ; $51b7: $68
    jr nz, jr_03a_51bd                            ; $51b8: $20 $03

jr_03a_51ba:
    ld [hl], d                                    ; $51ba: $72
    jr nz, jr_03a_51c0                            ; $51bb: $20 $03

jr_03a_51bd:
    add b                                         ; $51bd: $80
    jr nz, jr_03a_51c3                            ; $51be: $20 $03

jr_03a_51c0:
    adc l                                         ; $51c0: $8d
    jr nz, jr_03a_51c6                            ; $51c1: $20 $03

jr_03a_51c3:
    and c                                         ; $51c3: $a1
    jr nz, jr_03a_51c9                            ; $51c4: $20 $03

jr_03a_51c6:
    xor [hl]                                      ; $51c6: $ae
    jr nz, jr_03a_51cc                            ; $51c7: $20 $03

jr_03a_51c9:
    or e                                          ; $51c9: $b3
    jr nz, jr_03a_51cf                            ; $51ca: $20 $03

jr_03a_51cc:
    cp l                                          ; $51cc: $bd
    jr nz, jr_03a_51d2                            ; $51cd: $20 $03

jr_03a_51cf:
    ret                                           ; $51cf: $c9


    jr nz, jr_03a_51d5                            ; $51d0: $20 $03

jr_03a_51d2:
    pop hl                                        ; $51d2: $e1
    jr nz, jr_03a_51d8                            ; $51d3: $20 $03

jr_03a_51d5:
    db $fd                                        ; $51d5: $fd
    jr nz, @+$05                                  ; $51d6: $20 $03

jr_03a_51d8:
    inc de                                        ; $51d8: $13
    ld hl, $3103                                  ; $51d9: $21 $03 $31
    ld hl, $5303                                  ; $51dc: $21 $03 $53
    ld hl, $7203                                  ; $51df: $21 $03 $72
    ld hl, $8b03                                  ; $51e2: $21 $03 $8b
    ld hl, $a503                                  ; $51e5: $21 $03 $a5
    ld hl, $bf03                                  ; $51e8: $21 $03 $bf
    ld hl, $c203                                  ; $51eb: $21 $03 $c2
    ld hl, $c503                                  ; $51ee: $21 $03 $c5
    ld hl, $cb03                                  ; $51f1: $21 $03 $cb
    ld hl, $ce03                                  ; $51f4: $21 $03 $ce
    ld hl, $d403                                  ; $51f7: $21 $03 $d4
    ld hl, $d903                                  ; $51fa: $21 $03 $d9
    ld hl, $dd03                                  ; $51fd: $21 $03 $dd
    ld hl, $e703                                  ; $5200: $21 $03 $e7
    ld hl, $f903                                  ; $5203: $21 $03 $f9
    ld hl, $1503                                  ; $5206: $21 $03 $15
    ld [hl+], a                                   ; $5209: $22
    inc bc                                        ; $520a: $03
    rra                                           ; $520b: $1f
    ld [hl+], a                                   ; $520c: $22
    inc bc                                        ; $520d: $03
    ld [hl], $22                                  ; $520e: $36 $22
    inc bc                                        ; $5210: $03
    ld b, l                                       ; $5211: $45
    ld [hl+], a                                   ; $5212: $22
    inc bc                                        ; $5213: $03
    ld d, l                                       ; $5214: $55
    ld [hl+], a                                   ; $5215: $22
    inc bc                                        ; $5216: $03

Jump_03a_5217:
    ld l, d                                       ; $5217: $6a
    ld [hl+], a                                   ; $5218: $22
    inc bc                                        ; $5219: $03
    ld [hl], h                                    ; $521a: $74
    ld [hl+], a                                   ; $521b: $22
    inc bc                                        ; $521c: $03
    add l                                         ; $521d: $85
    ld [hl+], a                                   ; $521e: $22
    inc bc                                        ; $521f: $03
    sub d                                         ; $5220: $92
    ld [hl+], a                                   ; $5221: $22
    inc bc                                        ; $5222: $03
    xor h                                         ; $5223: $ac
    ld [hl+], a                                   ; $5224: $22
    inc bc                                        ; $5225: $03
    cp l                                          ; $5226: $bd
    ld [hl+], a                                   ; $5227: $22
    inc bc                                        ; $5228: $03
    push de                                       ; $5229: $d5
    ld [hl+], a                                   ; $522a: $22
    inc bc                                        ; $522b: $03
    db $eb                                        ; $522c: $eb
    ld [hl+], a                                   ; $522d: $22
    inc bc                                        ; $522e: $03
    add hl, bc                                    ; $522f: $09
    inc hl                                        ; $5230: $23
    inc bc                                        ; $5231: $03
    ld a, [de]                                    ; $5232: $1a
    inc hl                                        ; $5233: $23
    inc bc                                        ; $5234: $03
    ld l, $23                                     ; $5235: $2e $23
    inc bc                                        ; $5237: $03
    dec sp                                        ; $5238: $3b
    inc hl                                        ; $5239: $23
    inc bc                                        ; $523a: $03
    ld c, d                                       ; $523b: $4a
    inc hl                                        ; $523c: $23
    inc bc                                        ; $523d: $03
    ld d, a                                       ; $523e: $57
    inc hl                                        ; $523f: $23
    inc bc                                        ; $5240: $03
    ld [hl], c                                    ; $5241: $71
    inc hl                                        ; $5242: $23
    inc bc                                        ; $5243: $03
    adc e                                         ; $5244: $8b
    inc hl                                        ; $5245: $23
    inc bc                                        ; $5246: $03
    sub l                                         ; $5247: $95
    inc hl                                        ; $5248: $23
    inc bc                                        ; $5249: $03
    xor h                                         ; $524a: $ac
    inc hl                                        ; $524b: $23
    inc bc                                        ; $524c: $03
    jp $0323                                      ; $524d: $c3 $23 $03


    rst $08                                       ; $5250: $cf
    inc hl                                        ; $5251: $23
    inc bc                                        ; $5252: $03
    db $e4                                        ; $5253: $e4
    inc hl                                        ; $5254: $23
    inc bc                                        ; $5255: $03
    rst $28                                       ; $5256: $ef
    inc hl                                        ; $5257: $23
    inc bc                                        ; $5258: $03
    ld d, $24                                     ; $5259: $16 $24
    inc bc                                        ; $525b: $03
    rra                                           ; $525c: $1f
    inc h                                         ; $525d: $24
    inc bc                                        ; $525e: $03
    ld b, e                                       ; $525f: $43
    inc h                                         ; $5260: $24
    inc bc                                        ; $5261: $03
    ld h, h                                       ; $5262: $64
    inc h                                         ; $5263: $24
    inc bc                                        ; $5264: $03
    ld a, a                                       ; $5265: $7f
    inc h                                         ; $5266: $24
    inc bc                                        ; $5267: $03
    sbc d                                         ; $5268: $9a
    inc h                                         ; $5269: $24
    inc bc                                        ; $526a: $03
    xor a                                         ; $526b: $af
    inc h                                         ; $526c: $24
    inc bc                                        ; $526d: $03
    cp h                                          ; $526e: $bc
    inc h                                         ; $526f: $24
    inc bc                                        ; $5270: $03
    pop de                                        ; $5271: $d1
    inc h                                         ; $5272: $24
    inc bc                                        ; $5273: $03
    jp c, Jump_000_0324                           ; $5274: $da $24 $03

    cp $24                                        ; $5277: $fe $24
    inc bc                                        ; $5279: $03
    dec bc                                        ; $527a: $0b
    dec h                                         ; $527b: $25
    inc bc                                        ; $527c: $03
    ld [hl+], a                                   ; $527d: $22
    dec h                                         ; $527e: $25
    inc bc                                        ; $527f: $03
    inc sp                                        ; $5280: $33
    dec h                                         ; $5281: $25
    inc bc                                        ; $5282: $03
    ld b, a                                       ; $5283: $47
    dec h                                         ; $5284: $25
    inc bc                                        ; $5285: $03
    ld h, [hl]                                    ; $5286: $66
    dec h                                         ; $5287: $25
    inc bc                                        ; $5288: $03
    ld a, d                                       ; $5289: $7a
    dec h                                         ; $528a: $25
    inc bc                                        ; $528b: $03
    adc d                                         ; $528c: $8a
    dec h                                         ; $528d: $25
    inc bc                                        ; $528e: $03
    sbc h                                         ; $528f: $9c
    dec h                                         ; $5290: $25
    inc bc                                        ; $5291: $03
    xor h                                         ; $5292: $ac
    dec h                                         ; $5293: $25
    inc bc                                        ; $5294: $03
    push bc                                       ; $5295: $c5
    dec h                                         ; $5296: $25
    inc bc                                        ; $5297: $03
    ret nc                                        ; $5298: $d0

    dec h                                         ; $5299: $25
    inc bc                                        ; $529a: $03
    xor $25                                       ; $529b: $ee $25
    inc bc                                        ; $529d: $03
    ld hl, sp+$25                                 ; $529e: $f8 $25
    inc bc                                        ; $52a0: $03
    ld [bc], a                                    ; $52a1: $02
    ld h, $03                                     ; $52a2: $26 $03
    ld d, $26                                     ; $52a4: $16 $26
    inc bc                                        ; $52a6: $03
    inc sp                                        ; $52a7: $33
    ld h, $03                                     ; $52a8: $26 $03
    ccf                                           ; $52aa: $3f
    ld h, $03                                     ; $52ab: $26 $03
    ld d, h                                       ; $52ad: $54
    ld h, $03                                     ; $52ae: $26 $03
    ld e, [hl]                                    ; $52b0: $5e
    ld h, $03                                     ; $52b1: $26 $03
    ld l, a                                       ; $52b3: $6f
    ld h, $03                                     ; $52b4: $26 $03
    add c                                         ; $52b6: $81
    ld h, $03                                     ; $52b7: $26 $03
    sbc [hl]                                      ; $52b9: $9e
    ld h, $03                                     ; $52ba: $26 $03
    xor b                                         ; $52bc: $a8
    ld h, $03                                     ; $52bd: $26 $03
    or d                                          ; $52bf: $b2
    ld h, $03                                     ; $52c0: $26 $03
    add $26                                       ; $52c2: $c6 $26
    inc bc                                        ; $52c4: $03
    jp c, Jump_000_0326                           ; $52c5: $da $26 $03

    and $26                                       ; $52c8: $e6 $26
    inc bc                                        ; $52ca: $03
    ld a, [$0326]                                 ; $52cb: $fa $26 $03
    inc b                                         ; $52ce: $04
    daa                                           ; $52cf: $27
    inc bc                                        ; $52d0: $03
    inc hl                                        ; $52d1: $23
    daa                                           ; $52d2: $27
    inc bc                                        ; $52d3: $03
    ld d, a                                       ; $52d4: $57
    daa                                           ; $52d5: $27
    inc bc                                        ; $52d6: $03
    adc l                                         ; $52d7: $8d
    daa                                           ; $52d8: $27
    inc bc                                        ; $52d9: $03
    cp c                                          ; $52da: $b9
    daa                                           ; $52db: $27
    inc bc                                        ; $52dc: $03
    ld hl, sp+$27                                 ; $52dd: $f8 $27
    inc bc                                        ; $52df: $03
    rla                                           ; $52e0: $17
    jr z, jr_03a_52e6                             ; $52e1: $28 $03

    ccf                                           ; $52e3: $3f
    jr z, jr_03a_52e9                             ; $52e4: $28 $03

jr_03a_52e6:
    add [hl]                                      ; $52e6: $86
    jr z, jr_03a_52ec                             ; $52e7: $28 $03

jr_03a_52e9:
    push de                                       ; $52e9: $d5
    jr z, jr_03a_52ef                             ; $52ea: $28 $03

jr_03a_52ec:
    ld [bc], a                                    ; $52ec: $02
    add hl, hl                                    ; $52ed: $29
    inc bc                                        ; $52ee: $03

jr_03a_52ef:
    daa                                           ; $52ef: $27
    add hl, hl                                    ; $52f0: $29
    inc bc                                        ; $52f1: $03
    halt                                          ; $52f2: $76
    add hl, hl                                    ; $52f3: $29
    inc bc                                        ; $52f4: $03
    sbc e                                         ; $52f5: $9b
    add hl, hl                                    ; $52f6: $29
    inc bc                                        ; $52f7: $03
    rst $18                                       ; $52f8: $df
    add hl, hl                                    ; $52f9: $29
    inc bc                                        ; $52fa: $03
    inc de                                        ; $52fb: $13
    ld a, [hl+]                                   ; $52fc: $2a
    inc bc                                        ; $52fd: $03
    ld c, l                                       ; $52fe: $4d
    ld a, [hl+]                                   ; $52ff: $2a
    inc bc                                        ; $5300: $03
    sbc a                                         ; $5301: $9f
    ld a, [hl+]                                   ; $5302: $2a
    inc bc                                        ; $5303: $03
    xor c                                         ; $5304: $a9
    ld a, [hl+]                                   ; $5305: $2a
    inc bc                                        ; $5306: $03
    xor a                                         ; $5307: $af
    ld a, [hl+]                                   ; $5308: $2a
    inc bc                                        ; $5309: $03
    cp h                                          ; $530a: $bc
    ld a, [hl+]                                   ; $530b: $2a
    inc bc                                        ; $530c: $03
    ret z                                         ; $530d: $c8

    ld a, [hl+]                                   ; $530e: $2a
    inc bc                                        ; $530f: $03
    call nc, Call_000_032a                        ; $5310: $d4 $2a $03
    ldh [$2a], a                                  ; $5313: $e0 $2a
    inc bc                                        ; $5315: $03
    db $eb                                        ; $5316: $eb
    ld a, [hl+]                                   ; $5317: $2a
    inc bc                                        ; $5318: $03
    ld sp, hl                                     ; $5319: $f9
    ld a, [hl+]                                   ; $531a: $2a
    inc bc                                        ; $531b: $03
    ld b, $2b                                     ; $531c: $06 $2b
    inc bc                                        ; $531e: $03
    inc de                                        ; $531f: $13
    dec hl                                        ; $5320: $2b
    inc bc                                        ; $5321: $03
    dec e                                         ; $5322: $1d
    dec hl                                        ; $5323: $2b
    inc bc                                        ; $5324: $03
    daa                                           ; $5325: $27
    dec hl                                        ; $5326: $2b
    inc bc                                        ; $5327: $03
    ld [hl-], a                                   ; $5328: $32
    dec hl                                        ; $5329: $2b
    inc bc                                        ; $532a: $03
    dec a                                         ; $532b: $3d
    dec hl                                        ; $532c: $2b
    inc bc                                        ; $532d: $03
    ld c, c                                       ; $532e: $49
    dec hl                                        ; $532f: $2b
    inc bc                                        ; $5330: $03
    ld d, l                                       ; $5331: $55
    dec hl                                        ; $5332: $2b
    inc bc                                        ; $5333: $03
    ld e, a                                       ; $5334: $5f
    dec hl                                        ; $5335: $2b
    inc bc                                        ; $5336: $03
    ld h, [hl]                                    ; $5337: $66
    dec hl                                        ; $5338: $2b
    inc bc                                        ; $5339: $03
    ld [hl], d                                    ; $533a: $72
    dec hl                                        ; $533b: $2b
    inc bc                                        ; $533c: $03
    ld a, a                                       ; $533d: $7f
    dec hl                                        ; $533e: $2b
    inc bc                                        ; $533f: $03
    adc b                                         ; $5340: $88
    dec hl                                        ; $5341: $2b
    inc bc                                        ; $5342: $03
    sub d                                         ; $5343: $92
    dec hl                                        ; $5344: $2b
    inc bc                                        ; $5345: $03
    and c                                         ; $5346: $a1
    dec hl                                        ; $5347: $2b
    inc bc                                        ; $5348: $03
    xor h                                         ; $5349: $ac
    dec hl                                        ; $534a: $2b
    inc bc                                        ; $534b: $03
    cp b                                          ; $534c: $b8
    dec hl                                        ; $534d: $2b
    inc bc                                        ; $534e: $03
    jp Jump_000_032b                              ; $534f: $c3 $2b $03


    call Call_000_032b                            ; $5352: $cd $2b $03
    reti                                          ; $5355: $d9


    dec hl                                        ; $5356: $2b
    inc bc                                        ; $5357: $03
    and $2b                                       ; $5358: $e6 $2b
    inc bc                                        ; $535a: $03
    di                                            ; $535b: $f3
    dec hl                                        ; $535c: $2b
    inc bc                                        ; $535d: $03
    db $fc                                        ; $535e: $fc
    dec hl                                        ; $535f: $2b
    inc bc                                        ; $5360: $03
    ld [$032c], sp                                ; $5361: $08 $2c $03
    ld [de], a                                    ; $5364: $12
    inc l                                         ; $5365: $2c
    inc bc                                        ; $5366: $03
    ld e, $2c                                     ; $5367: $1e $2c
    inc bc                                        ; $5369: $03
    jr z, jr_03a_5398                             ; $536a: $28 $2c

    inc bc                                        ; $536c: $03
    ld [hl], $2c                                  ; $536d: $36 $2c
    inc bc                                        ; $536f: $03
    ld b, b                                       ; $5370: $40
    inc l                                         ; $5371: $2c
    inc bc                                        ; $5372: $03
    ld c, e                                       ; $5373: $4b
    inc l                                         ; $5374: $2c
    inc bc                                        ; $5375: $03
    ld d, a                                       ; $5376: $57
    inc l                                         ; $5377: $2c
    inc bc                                        ; $5378: $03
    ld h, e                                       ; $5379: $63
    inc l                                         ; $537a: $2c
    inc bc                                        ; $537b: $03
    ld l, l                                       ; $537c: $6d
    inc l                                         ; $537d: $2c
    inc bc                                        ; $537e: $03
    ld a, b                                       ; $537f: $78
    inc l                                         ; $5380: $2c
    inc bc                                        ; $5381: $03
    add l                                         ; $5382: $85
    inc l                                         ; $5383: $2c
    inc bc                                        ; $5384: $03
    sub b                                         ; $5385: $90
    inc l                                         ; $5386: $2c
    inc bc                                        ; $5387: $03
    sbc [hl]                                      ; $5388: $9e
    inc l                                         ; $5389: $2c
    inc bc                                        ; $538a: $03
    and e                                         ; $538b: $a3
    inc l                                         ; $538c: $2c
    inc bc                                        ; $538d: $03
    xor [hl]                                      ; $538e: $ae
    inc l                                         ; $538f: $2c
    inc bc                                        ; $5390: $03
    cp c                                          ; $5391: $b9
    inc l                                         ; $5392: $2c
    inc bc                                        ; $5393: $03
    cp [hl]                                       ; $5394: $be
    inc l                                         ; $5395: $2c
    inc bc                                        ; $5396: $03
    ret z                                         ; $5397: $c8

jr_03a_5398:
    inc l                                         ; $5398: $2c
    inc bc                                        ; $5399: $03
    pop de                                        ; $539a: $d1
    inc l                                         ; $539b: $2c
    inc bc                                        ; $539c: $03
    call c, $032c                                 ; $539d: $dc $2c $03
    ld [$032c], a                                 ; $53a0: $ea $2c $03
    or $2c                                        ; $53a3: $f6 $2c
    inc bc                                        ; $53a5: $03
    inc bc                                        ; $53a6: $03
    dec l                                         ; $53a7: $2d
    inc bc                                        ; $53a8: $03
    db $10                                        ; $53a9: $10
    dec l                                         ; $53aa: $2d
    inc bc                                        ; $53ab: $03
    jr @+$2f                                      ; $53ac: $18 $2d

    inc bc                                        ; $53ae: $03
    dec h                                         ; $53af: $25
    dec l                                         ; $53b0: $2d
    inc bc                                        ; $53b1: $03
    inc sp                                        ; $53b2: $33
    dec l                                         ; $53b3: $2d
    inc bc                                        ; $53b4: $03
    add hl, sp                                    ; $53b5: $39
    dec l                                         ; $53b6: $2d
    inc bc                                        ; $53b7: $03
    ld c, b                                       ; $53b8: $48
    dec l                                         ; $53b9: $2d
    inc bc                                        ; $53ba: $03
    ld d, h                                       ; $53bb: $54
    dec l                                         ; $53bc: $2d
    inc bc                                        ; $53bd: $03
    ld e, l                                       ; $53be: $5d
    dec l                                         ; $53bf: $2d
    inc bc                                        ; $53c0: $03
    ld l, c                                       ; $53c1: $69
    dec l                                         ; $53c2: $2d
    inc bc                                        ; $53c3: $03
    ld [hl], h                                    ; $53c4: $74
    dec l                                         ; $53c5: $2d
    inc bc                                        ; $53c6: $03
    add c                                         ; $53c7: $81
    dec l                                         ; $53c8: $2d
    inc bc                                        ; $53c9: $03
    adc l                                         ; $53ca: $8d
    dec l                                         ; $53cb: $2d
    inc bc                                        ; $53cc: $03
    sbc c                                         ; $53cd: $99
    dec l                                         ; $53ce: $2d
    inc bc                                        ; $53cf: $03
    and c                                         ; $53d0: $a1
    dec l                                         ; $53d1: $2d
    inc bc                                        ; $53d2: $03
    xor [hl]                                      ; $53d3: $ae
    dec l                                         ; $53d4: $2d
    inc bc                                        ; $53d5: $03
    cp d                                          ; $53d6: $ba
    dec l                                         ; $53d7: $2d
    inc bc                                        ; $53d8: $03
    jp $032d                                      ; $53d9: $c3 $2d $03


    adc $2d                                       ; $53dc: $ce $2d
    inc bc                                        ; $53de: $03
    jp c, $032d                                   ; $53df: $da $2d $03

    and $2d                                       ; $53e2: $e6 $2d
    inc bc                                        ; $53e4: $03
    di                                            ; $53e5: $f3
    dec l                                         ; $53e6: $2d
    inc bc                                        ; $53e7: $03
    db $fc                                        ; $53e8: $fc
    dec l                                         ; $53e9: $2d
    inc bc                                        ; $53ea: $03
    add hl, bc                                    ; $53eb: $09
    ld l, $03                                     ; $53ec: $2e $03
    ld [de], a                                    ; $53ee: $12
    ld l, $03                                     ; $53ef: $2e $03
    inc e                                         ; $53f1: $1c
    ld l, $03                                     ; $53f2: $2e $03
    daa                                           ; $53f4: $27
    ld l, $03                                     ; $53f5: $2e $03
    inc sp                                        ; $53f7: $33
    ld l, $03                                     ; $53f8: $2e $03
    ccf                                           ; $53fa: $3f
    ld l, $03                                     ; $53fb: $2e $03
    ld c, b                                       ; $53fd: $48
    ld l, $03                                     ; $53fe: $2e $03
    ld d, e                                       ; $5400: $53
    ld l, $03                                     ; $5401: $2e $03
    ld e, a                                       ; $5403: $5f
    ld l, $03                                     ; $5404: $2e $03
    ld l, b                                       ; $5406: $68
    ld l, $03                                     ; $5407: $2e $03
    ld [hl], d                                    ; $5409: $72
    ld l, $03                                     ; $540a: $2e $03
    ld a, [hl]                                    ; $540c: $7e
    ld l, $03                                     ; $540d: $2e $03
    adc d                                         ; $540f: $8a
    ld l, $03                                     ; $5410: $2e $03
    sbc c                                         ; $5412: $99
    ld l, $03                                     ; $5413: $2e $03
    and l                                         ; $5415: $a5
    ld l, $03                                     ; $5416: $2e $03
    xor [hl]                                      ; $5418: $ae
    ld l, $03                                     ; $5419: $2e $03
    or a                                          ; $541b: $b7
    ld l, $03                                     ; $541c: $2e $03
    call nz, Call_000_032e                        ; $541e: $c4 $2e $03
    pop de                                        ; $5421: $d1
    ld l, $03                                     ; $5422: $2e $03
    rst $18                                       ; $5424: $df
    ld l, $03                                     ; $5425: $2e $03
    db $e3                                        ; $5427: $e3
    ld l, $03                                     ; $5428: $2e $03
    ldh a, [$2e]                                  ; $542a: $f0 $2e
    inc bc                                        ; $542c: $03
    ld hl, sp+$2e                                 ; $542d: $f8 $2e
    inc bc                                        ; $542f: $03
    dec b                                         ; $5430: $05
    cpl                                           ; $5431: $2f
    inc bc                                        ; $5432: $03
    dec c                                         ; $5433: $0d
    cpl                                           ; $5434: $2f
    inc bc                                        ; $5435: $03
    ld c, $2f                                     ; $5436: $0e $2f
    inc bc                                        ; $5438: $03
    add hl, de                                    ; $5439: $19
    cpl                                           ; $543a: $2f
    inc bc                                        ; $543b: $03
    ld b, e                                       ; $543c: $43
    cpl                                           ; $543d: $2f
    inc bc                                        ; $543e: $03
    ld h, b                                       ; $543f: $60
    cpl                                           ; $5440: $2f
    inc bc                                        ; $5441: $03
    sbc e                                         ; $5442: $9b
    cpl                                           ; $5443: $2f
    inc bc                                        ; $5444: $03
    call $032f                                    ; $5445: $cd $2f $03
    add sp, $2f                                   ; $5448: $e8 $2f
    inc bc                                        ; $544a: $03
    ld de, $0330                                  ; $544b: $11 $30 $03
    jr nc, jr_03a_5480                            ; $544e: $30 $30

    inc bc                                        ; $5450: $03
    ld b, a                                       ; $5451: $47
    jr nc, jr_03a_5457                            ; $5452: $30 $03

    ld h, b                                       ; $5454: $60
    jr nc, jr_03a_545a                            ; $5455: $30 $03

jr_03a_5457:
    sub b                                         ; $5457: $90
    jr nc, jr_03a_545d                            ; $5458: $30 $03

jr_03a_545a:
    or l                                          ; $545a: $b5
    jr nc, jr_03a_5460                            ; $545b: $30 $03

jr_03a_545d:
    reti                                          ; $545d: $d9


    jr nc, jr_03a_5463                            ; $545e: $30 $03

jr_03a_5460:
    or $30                                        ; $5460: $f6 $30
    inc bc                                        ; $5462: $03

jr_03a_5463:
    ld a, [de]                                    ; $5463: $1a
    ld sp, $3a03                                  ; $5464: $31 $03 $3a
    ld sp, $6703                                  ; $5467: $31 $03 $67
    ld sp, $8f03                                  ; $546a: $31 $03 $8f
    ld sp, $bb03                                  ; $546d: $31 $03 $bb
    ld sp, $da03                                  ; $5470: $31 $03 $da
    ld sp, $0903                                  ; $5473: $31 $03 $09
    ld [hl-], a                                   ; $5476: $32
    inc bc                                        ; $5477: $03
    inc sp                                        ; $5478: $33
    ld [hl-], a                                   ; $5479: $32
    inc bc                                        ; $547a: $03
    ld e, b                                       ; $547b: $58
    ld [hl-], a                                   ; $547c: $32
    inc bc                                        ; $547d: $03
    ld a, h                                       ; $547e: $7c
    ld [hl-], a                                   ; $547f: $32

jr_03a_5480:
    inc bc                                        ; $5480: $03
    jp nz, $0332                                  ; $5481: $c2 $32 $03

    rst $28                                       ; $5484: $ef
    ld [hl-], a                                   ; $5485: $32
    inc bc                                        ; $5486: $03
    inc h                                         ; $5487: $24
    inc sp                                        ; $5488: $33
    inc bc                                        ; $5489: $03
    dec [hl]                                      ; $548a: $35
    inc sp                                        ; $548b: $33
    inc bc                                        ; $548c: $03
    ld [hl], d                                    ; $548d: $72
    inc sp                                        ; $548e: $33
    inc bc                                        ; $548f: $03
    xor c                                         ; $5490: $a9
    inc sp                                        ; $5491: $33
    inc bc                                        ; $5492: $03
    call c, $0333                                 ; $5493: $dc $33 $03
    inc de                                        ; $5496: $13
    inc [hl]                                      ; $5497: $34
    inc bc                                        ; $5498: $03
    ld b, a                                       ; $5499: $47
    inc [hl]                                      ; $549a: $34
    inc bc                                        ; $549b: $03
    ld e, d                                       ; $549c: $5a
    inc [hl]                                      ; $549d: $34
    inc bc                                        ; $549e: $03
    adc e                                         ; $549f: $8b
    inc [hl]                                      ; $54a0: $34
    inc bc                                        ; $54a1: $03
    xor [hl]                                      ; $54a2: $ae
    inc [hl]                                      ; $54a3: $34
    inc bc                                        ; $54a4: $03
    push de                                       ; $54a5: $d5
    inc [hl]                                      ; $54a6: $34
    inc bc                                        ; $54a7: $03
    ei                                            ; $54a8: $fb
    inc [hl]                                      ; $54a9: $34
    inc bc                                        ; $54aa: $03
    inc de                                        ; $54ab: $13
    dec [hl]                                      ; $54ac: $35
    inc bc                                        ; $54ad: $03
    jr c, jr_03a_54e5                             ; $54ae: $38 $35

    inc bc                                        ; $54b0: $03
    ld l, a                                       ; $54b1: $6f
    dec [hl]                                      ; $54b2: $35
    inc bc                                        ; $54b3: $03
    sub a                                         ; $54b4: $97
    dec [hl]                                      ; $54b5: $35
    inc bc                                        ; $54b6: $03
    call Call_000_0335                            ; $54b7: $cd $35 $03
    ldh [$35], a                                  ; $54ba: $e0 $35
    inc bc                                        ; $54bc: $03
    or $35                                        ; $54bd: $f6 $35
    inc bc                                        ; $54bf: $03
    dec e                                         ; $54c0: $1d
    ld [hl], $03                                  ; $54c1: $36 $03
    ld c, [hl]                                    ; $54c3: $4e
    ld [hl], $03                                  ; $54c4: $36 $03
    ld a, a                                       ; $54c6: $7f
    ld [hl], $03                                  ; $54c7: $36 $03
    sub h                                         ; $54c9: $94
    ld [hl], $03                                  ; $54ca: $36 $03
    jp Jump_000_0336                              ; $54cc: $c3 $36 $03


    and $36                                       ; $54cf: $e6 $36
    inc bc                                        ; $54d1: $03
    inc b                                         ; $54d2: $04
    scf                                           ; $54d3: $37
    inc bc                                        ; $54d4: $03
    ld hl, $0337                                  ; $54d5: $21 $37 $03
    ld d, e                                       ; $54d8: $53
    scf                                           ; $54d9: $37
    inc bc                                        ; $54da: $03
    ld l, d                                       ; $54db: $6a
    scf                                           ; $54dc: $37
    inc bc                                        ; $54dd: $03
    and b                                         ; $54de: $a0
    scf                                           ; $54df: $37
    inc bc                                        ; $54e0: $03
    cp a                                          ; $54e1: $bf
    scf                                           ; $54e2: $37
    inc bc                                        ; $54e3: $03
    pop de                                        ; $54e4: $d1

jr_03a_54e5:
    scf                                           ; $54e5: $37
    inc bc                                        ; $54e6: $03
    ld b, $38                                     ; $54e7: $06 $38
    inc bc                                        ; $54e9: $03
    inc [hl]                                      ; $54ea: $34
    jr c, jr_03a_54f0                             ; $54eb: $38 $03

    ld e, e                                       ; $54ed: $5b
    jr c, jr_03a_54f3                             ; $54ee: $38 $03

jr_03a_54f0:
    add h                                         ; $54f0: $84
    jr c, jr_03a_54f6                             ; $54f1: $38 $03

jr_03a_54f3:
    and h                                         ; $54f3: $a4
    jr c, jr_03a_54f9                             ; $54f4: $38 $03

jr_03a_54f6:
    call Call_000_0338                            ; $54f6: $cd $38 $03

jr_03a_54f9:
    rst $28                                       ; $54f9: $ef
    jr c, jr_03a_54ff                             ; $54fa: $38 $03

    inc e                                         ; $54fc: $1c
    add hl, sp                                    ; $54fd: $39
    inc bc                                        ; $54fe: $03

jr_03a_54ff:
    ld c, h                                       ; $54ff: $4c
    add hl, sp                                    ; $5500: $39
    inc bc                                        ; $5501: $03
    ld h, [hl]                                    ; $5502: $66
    add hl, sp                                    ; $5503: $39
    inc bc                                        ; $5504: $03
    sub [hl]                                      ; $5505: $96
    add hl, sp                                    ; $5506: $39
    inc bc                                        ; $5507: $03
    cp h                                          ; $5508: $bc
    add hl, sp                                    ; $5509: $39
    inc bc                                        ; $550a: $03
    db $ec                                        ; $550b: $ec
    add hl, sp                                    ; $550c: $39
    inc bc                                        ; $550d: $03
    ld d, $3a                                     ; $550e: $16 $3a
    inc bc                                        ; $5510: $03
    ld a, [hl+]                                   ; $5511: $2a
    ld a, [hl-]                                   ; $5512: $3a
    inc bc                                        ; $5513: $03
    ld b, e                                       ; $5514: $43
    ld a, [hl-]                                   ; $5515: $3a
    inc bc                                        ; $5516: $03
    halt                                          ; $5517: $76
    ld a, [hl-]                                   ; $5518: $3a
    inc bc                                        ; $5519: $03
    and b                                         ; $551a: $a0
    ld a, [hl-]                                   ; $551b: $3a
    inc bc                                        ; $551c: $03
    jp nc, $033a                                  ; $551d: $d2 $3a $03

    ld bc, $033b                                  ; $5520: $01 $3b $03
    jr nc, jr_03a_5560                            ; $5523: $30 $3b

    inc bc                                        ; $5525: $03
    ld h, a                                       ; $5526: $67
    dec sp                                        ; $5527: $3b
    inc bc                                        ; $5528: $03
    sbc b                                         ; $5529: $98
    dec sp                                        ; $552a: $3b
    inc bc                                        ; $552b: $03
    jp Jump_000_033b                              ; $552c: $c3 $3b $03


    sub $3b                                       ; $552f: $d6 $3b
    inc bc                                        ; $5531: $03
    inc c                                         ; $5532: $0c
    inc a                                         ; $5533: $3c
    inc bc                                        ; $5534: $03
    ld a, $3c                                     ; $5535: $3e $3c
    inc bc                                        ; $5537: $03
    ld d, h                                       ; $5538: $54
    inc a                                         ; $5539: $3c
    inc bc                                        ; $553a: $03
    add [hl]                                      ; $553b: $86
    inc a                                         ; $553c: $3c
    inc bc                                        ; $553d: $03
    or l                                          ; $553e: $b5
    inc a                                         ; $553f: $3c
    inc bc                                        ; $5540: $03
    rst $10                                       ; $5541: $d7
    inc a                                         ; $5542: $3c
    inc bc                                        ; $5543: $03
    ld sp, hl                                     ; $5544: $f9
    inc a                                         ; $5545: $3c
    inc bc                                        ; $5546: $03
    ld hl, $033d                                  ; $5547: $21 $3d $03
    ld c, c                                       ; $554a: $49
    dec a                                         ; $554b: $3d
    inc bc                                        ; $554c: $03
    add d                                         ; $554d: $82
    dec a                                         ; $554e: $3d
    inc bc                                        ; $554f: $03
    xor h                                         ; $5550: $ac
    dec a                                         ; $5551: $3d
    inc bc                                        ; $5552: $03
    push bc                                       ; $5553: $c5
    dec a                                         ; $5554: $3d
    inc bc                                        ; $5555: $03
    ld sp, hl                                     ; $5556: $f9
    dec a                                         ; $5557: $3d
    inc bc                                        ; $5558: $03
    rra                                           ; $5559: $1f
    ld a, $03                                     ; $555a: $3e $03
    inc sp                                        ; $555c: $33
    ld a, $03                                     ; $555d: $3e $03
    ld l, h                                       ; $555f: $6c

jr_03a_5560:
    ld a, $03                                     ; $5560: $3e $03
    sub b                                         ; $5562: $90
    ld a, $03                                     ; $5563: $3e $03
    cp b                                          ; $5565: $b8
    ld a, $03                                     ; $5566: $3e $03
    db $dd                                        ; $5568: $dd
    ld a, $03                                     ; $5569: $3e $03
    ld a, [c]                                     ; $556b: $f2
    ld a, $03                                     ; $556c: $3e $03
    ld bc, $033f                                  ; $556e: $01 $3f $03
    ld c, $3f                                     ; $5571: $0e $3f
    inc bc                                        ; $5573: $03
    dec d                                         ; $5574: $15
    ccf                                           ; $5575: $3f
    inc bc                                        ; $5576: $03
    ld e, $3f                                     ; $5577: $1e $3f
    inc bc                                        ; $5579: $03
    ld h, $3f                                     ; $557a: $26 $3f
    inc bc                                        ; $557c: $03
    dec l                                         ; $557d: $2d
    ccf                                           ; $557e: $3f
    inc bc                                        ; $557f: $03
    ld [hl], $3f                                  ; $5580: $36 $3f
    inc bc                                        ; $5582: $03
    dec a                                         ; $5583: $3d
    ccf                                           ; $5584: $3f
    inc bc                                        ; $5585: $03
    ld b, h                                       ; $5586: $44
    ccf                                           ; $5587: $3f
    inc bc                                        ; $5588: $03
    ld c, e                                       ; $5589: $4b
    ccf                                           ; $558a: $3f
    inc bc                                        ; $558b: $03
    ld d, c                                       ; $558c: $51
    ccf                                           ; $558d: $3f
    inc bc                                        ; $558e: $03
    ld e, c                                       ; $558f: $59
    ccf                                           ; $5590: $3f
    inc bc                                        ; $5591: $03
    ld h, h                                       ; $5592: $64
    ccf                                           ; $5593: $3f
    inc bc                                        ; $5594: $03
    ld l, b                                       ; $5595: $68
    ccf                                           ; $5596: $3f

Call_03a_5597:
    inc bc                                        ; $5597: $03
    ld l, [hl]                                    ; $5598: $6e
    ccf                                           ; $5599: $3f
    inc bc                                        ; $559a: $03
    ld [hl], a                                    ; $559b: $77
    ccf                                           ; $559c: $3f
    inc bc                                        ; $559d: $03
    add c                                         ; $559e: $81
    ccf                                           ; $559f: $3f
    inc bc                                        ; $55a0: $03
    add [hl]                                      ; $55a1: $86
    ccf                                           ; $55a2: $3f
    inc bc                                        ; $55a3: $03
    adc d                                         ; $55a4: $8a
    ccf                                           ; $55a5: $3f
    inc bc                                        ; $55a6: $03
    sbc l                                         ; $55a7: $9d
    ccf                                           ; $55a8: $3f
    inc bc                                        ; $55a9: $03
    cp l                                          ; $55aa: $bd
    ccf                                           ; $55ab: $3f
    inc bc                                        ; $55ac: $03
    add sp, $3f                                   ; $55ad: $e8 $3f
    inc b                                         ; $55af: $04
    ld bc, $0400                                  ; $55b0: $01 $00 $04
    inc d                                         ; $55b3: $14
    nop                                           ; $55b4: $00
    inc b                                         ; $55b5: $04
    inc l                                         ; $55b6: $2c
    nop                                           ; $55b7: $00
    inc b                                         ; $55b8: $04
    ld c, l                                       ; $55b9: $4d
    nop                                           ; $55ba: $00
    inc b                                         ; $55bb: $04
    ld [hl], c                                    ; $55bc: $71
    nop                                           ; $55bd: $00
    inc b                                         ; $55be: $04
    add e                                         ; $55bf: $83
    nop                                           ; $55c0: $00
    inc b                                         ; $55c1: $04
    sbc a                                         ; $55c2: $9f
    nop                                           ; $55c3: $00
    inc b                                         ; $55c4: $04
    or l                                          ; $55c5: $b5
    nop                                           ; $55c6: $00
    inc b                                         ; $55c7: $04
    db $e3                                        ; $55c8: $e3
    nop                                           ; $55c9: $00
    inc b                                         ; $55ca: $04
    db $fc                                        ; $55cb: $fc
    nop                                           ; $55cc: $00
    inc b                                         ; $55cd: $04
    ld a, [de]                                    ; $55ce: $1a
    ld bc, $4004                                  ; $55cf: $01 $04 $40
    ld bc, $6304                                  ; $55d2: $01 $04 $63
    ld bc, $7b04                                  ; $55d5: $01 $04 $7b
    ld bc, $9104                                  ; $55d8: $01 $04 $91
    ld bc, $a304                                  ; $55db: $01 $04 $a3
    ld bc, $c304                                  ; $55de: $01 $04 $c3
    ld bc, $c404                                  ; $55e1: $01 $04 $c4
    ld bc, $c504                                  ; $55e4: $01 $04 $c5
    ld bc, $dc04                                  ; $55e7: $01 $04 $dc
    ld bc, $e904                                  ; $55ea: $01 $04 $e9
    ld bc, $f204                                  ; $55ed: $01 $04 $f2
    ld bc, $fc04                                  ; $55f0: $01 $04 $fc
    ld bc, $0604                                  ; $55f3: $01 $04 $06
    ld [bc], a                                    ; $55f6: $02
    inc b                                         ; $55f7: $04
    db $10                                        ; $55f8: $10
    ld [bc], a                                    ; $55f9: $02
    inc b                                         ; $55fa: $04
    jr nc, jr_03a_55ff                            ; $55fb: $30 $02

    inc b                                         ; $55fd: $04
    ld b, l                                       ; $55fe: $45

jr_03a_55ff:
    ld [bc], a                                    ; $55ff: $02
    inc b                                         ; $5600: $04
    ld h, c                                       ; $5601: $61
    ld [bc], a                                    ; $5602: $02
    inc b                                         ; $5603: $04
    ld [hl], b                                    ; $5604: $70
    ld [bc], a                                    ; $5605: $02
    inc b                                         ; $5606: $04
    add e                                         ; $5607: $83
    ld [bc], a                                    ; $5608: $02
    inc b                                         ; $5609: $04
    sbc h                                         ; $560a: $9c
    ld [bc], a                                    ; $560b: $02
    inc b                                         ; $560c: $04
    cp a                                          ; $560d: $bf
    ld [bc], a                                    ; $560e: $02
    inc b                                         ; $560f: $04
    and $02                                       ; $5610: $e6 $02
    inc b                                         ; $5612: $04
    ld d, $03                                     ; $5613: $16 $03
    inc b                                         ; $5615: $04
    ld b, b                                       ; $5616: $40
    inc bc                                        ; $5617: $03
    inc b                                         ; $5618: $04
    add h                                         ; $5619: $84
    inc bc                                        ; $561a: $03
    inc b                                         ; $561b: $04
    sbc [hl]                                      ; $561c: $9e
    inc bc                                        ; $561d: $03
    inc b                                         ; $561e: $04
    cp e                                          ; $561f: $bb
    inc bc                                        ; $5620: $03
    inc b                                         ; $5621: $04
    jp z, $0403                                   ; $5622: $ca $03 $04

    push hl                                       ; $5625: $e5
    inc bc                                        ; $5626: $03
    inc b                                         ; $5627: $04
    dec c                                         ; $5628: $0d
    inc b                                         ; $5629: $04
    inc b                                         ; $562a: $04
    jr nc, jr_03a_5631                            ; $562b: $30 $04

    inc b                                         ; $562d: $04
    ld d, d                                       ; $562e: $52
    inc b                                         ; $562f: $04
    inc b                                         ; $5630: $04

jr_03a_5631:
    ld l, c                                       ; $5631: $69
    inc b                                         ; $5632: $04
    inc b                                         ; $5633: $04
    ld a, l                                       ; $5634: $7d
    inc b                                         ; $5635: $04
    inc b                                         ; $5636: $04
    and e                                         ; $5637: $a3
    inc b                                         ; $5638: $04
    inc b                                         ; $5639: $04
    pop de                                        ; $563a: $d1
    inc b                                         ; $563b: $04
    inc b                                         ; $563c: $04
    ld sp, hl                                     ; $563d: $f9
    inc b                                         ; $563e: $04
    inc b                                         ; $563f: $04
    ld d, $05                                     ; $5640: $16 $05
    inc b                                         ; $5642: $04
    dec hl                                        ; $5643: $2b
    dec b                                         ; $5644: $05
    inc b                                         ; $5645: $04
    ld d, e                                       ; $5646: $53
    dec b                                         ; $5647: $05
    inc b                                         ; $5648: $04
    ld a, h                                       ; $5649: $7c
    dec b                                         ; $564a: $05
    inc b                                         ; $564b: $04
    sub [hl]                                      ; $564c: $96
    dec b                                         ; $564d: $05
    inc b                                         ; $564e: $04
    or [hl]                                       ; $564f: $b6
    dec b                                         ; $5650: $05
    inc b                                         ; $5651: $04
    ret nz                                        ; $5652: $c0

    dec b                                         ; $5653: $05
    inc b                                         ; $5654: $04
    di                                            ; $5655: $f3
    dec b                                         ; $5656: $05
    inc b                                         ; $5657: $04
    db $fd                                        ; $5658: $fd
    dec b                                         ; $5659: $05
    inc b                                         ; $565a: $04
    rlca                                          ; $565b: $07
    ld b, $04                                     ; $565c: $06 $04
    ld [de], a                                    ; $565e: $12
    ld b, $04                                     ; $565f: $06 $04

Jump_03a_5661:
    ld e, $06                                     ; $5661: $1e $06
    inc b                                         ; $5663: $04
    ld [hl], $06                                  ; $5664: $36 $06
    inc b                                         ; $5666: $04
    ld c, b                                       ; $5667: $48
    ld b, $04                                     ; $5668: $06 $04
    sub c                                         ; $566a: $91
    ld b, $04                                     ; $566b: $06 $04
    push de                                       ; $566d: $d5
    ld b, $04                                     ; $566e: $06 $04
    and $06                                       ; $5670: $e6 $06
    inc b                                         ; $5672: $04
    db $f4                                        ; $5673: $f4
    ld b, $04                                     ; $5674: $06 $04
    db $10                                        ; $5676: $10
    rlca                                          ; $5677: $07
    inc b                                         ; $5678: $04
    inc a                                         ; $5679: $3c
    rlca                                          ; $567a: $07
    inc b                                         ; $567b: $04
    sub l                                         ; $567c: $95
    rlca                                          ; $567d: $07
    inc b                                         ; $567e: $04
    rst $08                                       ; $567f: $cf
    rlca                                          ; $5680: $07
    inc b                                         ; $5681: $04
    inc [hl]                                      ; $5682: $34
    ld [$6c04], sp                                ; $5683: $08 $04 $6c
    ld [$9404], sp                                ; $5686: $08 $04 $94
    ld [$c904], sp                                ; $5689: $08 $04 $c9
    ld [$d304], sp                                ; $568c: $08 $04 $d3
    ld [$f404], sp                                ; $568f: $08 $04 $f4
    ld [$4404], sp                                ; $5692: $08 $04 $44
    add hl, bc                                    ; $5695: $09
    inc b                                         ; $5696: $04
    ld l, l                                       ; $5697: $6d
    add hl, bc                                    ; $5698: $09
    inc b                                         ; $5699: $04
    xor a                                         ; $569a: $af
    add hl, bc                                    ; $569b: $09
    inc b                                         ; $569c: $04
    rrc c                                         ; $569d: $cb $09
    inc b                                         ; $569f: $04
    inc de                                        ; $56a0: $13
    ld a, [bc]                                    ; $56a1: $0a
    inc b                                         ; $56a2: $04
    ld [hl], l                                    ; $56a3: $75
    ld a, [bc]                                    ; $56a4: $0a
    inc b                                         ; $56a5: $04
    adc b                                         ; $56a6: $88
    ld a, [bc]                                    ; $56a7: $0a
    inc b                                         ; $56a8: $04
    ldh [$0a], a                                  ; $56a9: $e0 $0a
    inc b                                         ; $56ab: $04
    ccf                                           ; $56ac: $3f
    dec bc                                        ; $56ad: $0b
    inc b                                         ; $56ae: $04
    ld c, h                                       ; $56af: $4c
    dec bc                                        ; $56b0: $0b
    inc b                                         ; $56b1: $04
    and h                                         ; $56b2: $a4
    dec bc                                        ; $56b3: $0b
    inc b                                         ; $56b4: $04
    jp nz, Jump_000_040b                          ; $56b5: $c2 $0b $04

    pop de                                        ; $56b8: $d1
    dec bc                                        ; $56b9: $0b
    inc b                                         ; $56ba: $04
    ld b, $0c                                     ; $56bb: $06 $0c
    inc b                                         ; $56bd: $04
    ld h, $0c                                     ; $56be: $26 $0c
    inc b                                         ; $56c0: $04
    ld d, c                                       ; $56c1: $51
    inc c                                         ; $56c2: $0c
    inc b                                         ; $56c3: $04
    ld d, a                                       ; $56c4: $57
    inc c                                         ; $56c5: $0c
    inc b                                         ; $56c6: $04
    xor e                                         ; $56c7: $ab
    inc c                                         ; $56c8: $0c
    inc b                                         ; $56c9: $04
    or c                                          ; $56ca: $b1
    inc c                                         ; $56cb: $0c
    inc b                                         ; $56cc: $04
    db $eb                                        ; $56cd: $eb
    inc c                                         ; $56ce: $0c
    inc b                                         ; $56cf: $04
    push af                                       ; $56d0: $f5
    inc c                                         ; $56d1: $0c
    inc b                                         ; $56d2: $04
    ld l, h                                       ; $56d3: $6c
    dec c                                         ; $56d4: $0d
    inc b                                         ; $56d5: $04
    and [hl]                                      ; $56d6: $a6
    dec c                                         ; $56d7: $0d
    inc b                                         ; $56d8: $04
    dec c                                         ; $56d9: $0d
    ld c, $04                                     ; $56da: $0e $04
    ld [hl+], a                                   ; $56dc: $22
    ld c, $04                                     ; $56dd: $0e $04
    dec l                                         ; $56df: $2d
    ld c, $04                                     ; $56e0: $0e $04
    jr c, jr_03a_56f2                             ; $56e2: $38 $0e

    inc b                                         ; $56e4: $04
    ld d, c                                       ; $56e5: $51
    ld c, $04                                     ; $56e6: $0e $04
    add c                                         ; $56e8: $81
    ld c, $04                                     ; $56e9: $0e $04
    sub d                                         ; $56eb: $92
    ld c, $04                                     ; $56ec: $0e $04
    or e                                          ; $56ee: $b3
    ld c, $04                                     ; $56ef: $0e $04
    rst $20                                       ; $56f1: $e7

jr_03a_56f2:
    ld c, $04                                     ; $56f2: $0e $04
    jr jr_03a_5705                                ; $56f4: $18 $0f

    inc b                                         ; $56f6: $04
    ld e, d                                       ; $56f7: $5a
    rrca                                          ; $56f8: $0f
    inc b                                         ; $56f9: $04
    sub d                                         ; $56fa: $92
    rrca                                          ; $56fb: $0f
    inc b                                         ; $56fc: $04
    add sp, $0f                                   ; $56fd: $e8 $0f
    inc b                                         ; $56ff: $04
    ld a, [bc]                                    ; $5700: $0a
    db $10                                        ; $5701: $10
    inc b                                         ; $5702: $04

Jump_03a_5703:
    dec de                                        ; $5703: $1b
    db $10                                        ; $5704: $10

jr_03a_5705:
    inc b                                         ; $5705: $04
    adc c                                         ; $5706: $89
    db $10                                        ; $5707: $10
    inc b                                         ; $5708: $04
    xor l                                         ; $5709: $ad
    db $10                                        ; $570a: $10
    inc b                                         ; $570b: $04
    db $fc                                        ; $570c: $fc
    db $10                                        ; $570d: $10
    inc b                                         ; $570e: $04
    dec e                                         ; $570f: $1d
    ld de, $7504                                  ; $5710: $11 $04 $75
    ld de, $9104                                  ; $5713: $11 $04 $91
    ld de, $a804                                  ; $5716: $11 $04 $a8
    ld de, $b704                                  ; $5719: $11 $04 $b7
    ld de, $ed04                                  ; $571c: $11 $04 $ed
    ld de, $fb04                                  ; $571f: $11 $04 $fb
    ld de, $1704                                  ; $5722: $11 $04 $17
    ld [de], a                                    ; $5725: $12
    inc b                                         ; $5726: $04
    add hl, hl                                    ; $5727: $29
    ld [de], a                                    ; $5728: $12
    inc b                                         ; $5729: $04
    ccf                                           ; $572a: $3f
    ld [de], a                                    ; $572b: $12
    inc b                                         ; $572c: $04
    ld d, e                                       ; $572d: $53
    ld [de], a                                    ; $572e: $12
    inc b                                         ; $572f: $04
    ld h, a                                       ; $5730: $67
    ld [de], a                                    ; $5731: $12
    inc b                                         ; $5732: $04
    ld [hl], c                                    ; $5733: $71
    ld [de], a                                    ; $5734: $12
    inc b                                         ; $5735: $04
    sbc d                                         ; $5736: $9a
    ld [de], a                                    ; $5737: $12
    inc b                                         ; $5738: $04
    xor h                                         ; $5739: $ac
    ld [de], a                                    ; $573a: $12
    inc b                                         ; $573b: $04
    ld [$0412], a                                 ; $573c: $ea $12 $04
    dec bc                                        ; $573f: $0b
    inc de                                        ; $5740: $13
    inc b                                         ; $5741: $04
    add hl, hl                                    ; $5742: $29
    inc de                                        ; $5743: $13
    inc b                                         ; $5744: $04
    ld d, l                                       ; $5745: $55
    inc de                                        ; $5746: $13
    inc b                                         ; $5747: $04
    ld a, l                                       ; $5748: $7d
    inc de                                        ; $5749: $13
    inc b                                         ; $574a: $04
    sbc e                                         ; $574b: $9b
    inc de                                        ; $574c: $13
    inc b                                         ; $574d: $04
    xor a                                         ; $574e: $af
    inc de                                        ; $574f: $13
    inc b                                         ; $5750: $04
    pop de                                        ; $5751: $d1
    inc de                                        ; $5752: $13
    inc b                                         ; $5753: $04
    jp c, $0413                                   ; $5754: $da $13 $04

    rst $28                                       ; $5757: $ef
    inc de                                        ; $5758: $13
    inc b                                         ; $5759: $04
    ld bc, $0414                                  ; $575a: $01 $14 $04
    dec c                                         ; $575d: $0d
    inc d                                         ; $575e: $14
    inc b                                         ; $575f: $04
    dec a                                         ; $5760: $3d
    inc d                                         ; $5761: $14
    inc b                                         ; $5762: $04
    adc [hl]                                      ; $5763: $8e
    inc d                                         ; $5764: $14
    inc b                                         ; $5765: $04
    xor d                                         ; $5766: $aa
    inc d                                         ; $5767: $14
    inc b                                         ; $5768: $04
    or l                                          ; $5769: $b5
    inc d                                         ; $576a: $14
    inc b                                         ; $576b: $04
    jp z, Jump_000_0414                           ; $576c: $ca $14 $04

    sub $14                                       ; $576f: $d6 $14
    inc b                                         ; $5771: $04
    ld a, [$0414]                                 ; $5772: $fa $14 $04
    ld a, [de]                                    ; $5775: $1a
    dec d                                         ; $5776: $15
    inc b                                         ; $5777: $04
    ld a, h                                       ; $5778: $7c
    dec d                                         ; $5779: $15
    inc b                                         ; $577a: $04
    or [hl]                                       ; $577b: $b6
    dec d                                         ; $577c: $15
    inc b                                         ; $577d: $04
    ld de, $0416                                  ; $577e: $11 $16 $04
    ld a, [de]                                    ; $5781: $1a
    ld d, $04                                     ; $5782: $16 $04
    ld a, [hl+]                                   ; $5784: $2a
    ld d, $04                                     ; $5785: $16 $04
    ld b, e                                       ; $5787: $43
    ld d, $04                                     ; $5788: $16 $04
    ld a, [hl]                                    ; $578a: $7e
    ld d, $04                                     ; $578b: $16 $04
    sbc l                                         ; $578d: $9d
    ld d, $04                                     ; $578e: $16 $04
    rst $10                                       ; $5790: $d7
    ld d, $04                                     ; $5791: $16 $04
    ld [$0416], a                                 ; $5793: $ea $16 $04
    ld de, $0417                                  ; $5796: $11 $17 $04
    dec de                                        ; $5799: $1b
    rla                                           ; $579a: $17
    inc b                                         ; $579b: $04
    dec l                                         ; $579c: $2d
    rla                                           ; $579d: $17
    inc b                                         ; $579e: $04
    ld a, c                                       ; $579f: $79
    rla                                           ; $57a0: $17
    inc b                                         ; $57a1: $04
    adc c                                         ; $57a2: $89
    rla                                           ; $57a3: $17
    inc b                                         ; $57a4: $04
    jp z, Jump_000_0417                           ; $57a5: $ca $17 $04

    rst $20                                       ; $57a8: $e7
    rla                                           ; $57a9: $17
    inc b                                         ; $57aa: $04
    ld l, $18                                     ; $57ab: $2e $18
    inc b                                         ; $57ad: $04
    ld d, d                                       ; $57ae: $52
    jr jr_03a_57b5                                ; $57af: $18 $04

    ld e, d                                       ; $57b1: $5a
    jr jr_03a_57b8                                ; $57b2: $18 $04

    ld [hl], l                                    ; $57b4: $75

jr_03a_57b5:
    jr jr_03a_57bb                                ; $57b5: $18 $04

    sub d                                         ; $57b7: $92

jr_03a_57b8:
    jr jr_03a_57be                                ; $57b8: $18 $04

    and l                                         ; $57ba: $a5

jr_03a_57bb:
    jr jr_03a_57c1                                ; $57bb: $18 $04

    cp l                                          ; $57bd: $bd

jr_03a_57be:
    jr @+$06                                      ; $57be: $18 $04

    reti                                          ; $57c0: $d9


jr_03a_57c1:
    jr jr_03a_57c7                                ; $57c1: $18 $04

    ldh a, [rNR23]                                ; $57c3: $f0 $18
    inc b                                         ; $57c5: $04
    ld [bc], a                                    ; $57c6: $02

jr_03a_57c7:
    add hl, de                                    ; $57c7: $19
    inc b                                         ; $57c8: $04
    db $10                                        ; $57c9: $10
    add hl, de                                    ; $57ca: $19
    inc b                                         ; $57cb: $04
    ld hl, $0419                                  ; $57cc: $21 $19 $04
    dec [hl]                                      ; $57cf: $35
    add hl, de                                    ; $57d0: $19
    inc b                                         ; $57d1: $04
    ld [hl], $19                                  ; $57d2: $36 $19
    inc b                                         ; $57d4: $04
    ld c, b                                       ; $57d5: $48
    add hl, de                                    ; $57d6: $19
    inc b                                         ; $57d7: $04
    ld h, e                                       ; $57d8: $63
    add hl, de                                    ; $57d9: $19
    inc b                                         ; $57da: $04
    ld a, [hl]                                    ; $57db: $7e
    add hl, de                                    ; $57dc: $19
    inc b                                         ; $57dd: $04
    ld a, a                                       ; $57de: $7f
    add hl, de                                    ; $57df: $19
    inc b                                         ; $57e0: $04
    add b                                         ; $57e1: $80
    add hl, de                                    ; $57e2: $19
    inc b                                         ; $57e3: $04
    and c                                         ; $57e4: $a1
    add hl, de                                    ; $57e5: $19
    inc b                                         ; $57e6: $04
    cp d                                          ; $57e7: $ba
    add hl, de                                    ; $57e8: $19
    inc b                                         ; $57e9: $04
    cp e                                          ; $57ea: $bb
    add hl, de                                    ; $57eb: $19
    inc b                                         ; $57ec: $04
    push de                                       ; $57ed: $d5
    add hl, de                                    ; $57ee: $19
    inc b                                         ; $57ef: $04
    sub $19                                       ; $57f0: $d6 $19
    inc b                                         ; $57f2: $04
    rst $10                                       ; $57f3: $d7
    add hl, de                                    ; $57f4: $19
    inc b                                         ; $57f5: $04
    ldh a, [rNR24]                                ; $57f6: $f0 $19
    inc b                                         ; $57f8: $04
    ld bc, $041a                                  ; $57f9: $01 $1a $04
    ld [de], a                                    ; $57fc: $12
    ld a, [de]                                    ; $57fd: $1a
    inc b                                         ; $57fe: $04
    inc de                                        ; $57ff: $13
    ld a, [de]                                    ; $5800: $1a
    inc b                                         ; $5801: $04
    inc d                                         ; $5802: $14
    ld a, [de]                                    ; $5803: $1a
    inc b                                         ; $5804: $04
    dec d                                         ; $5805: $15
    ld a, [de]                                    ; $5806: $1a
    inc b                                         ; $5807: $04
    ld l, $1a                                     ; $5808: $2e $1a
    inc b                                         ; $580a: $04
    cpl                                           ; $580b: $2f
    ld a, [de]                                    ; $580c: $1a
    inc b                                         ; $580d: $04
    jr nc, jr_03a_582a                            ; $580e: $30 $1a

    inc b                                         ; $5810: $04
    ld sp, $041a                                  ; $5811: $31 $1a $04
    ld [hl-], a                                   ; $5814: $32
    ld a, [de]                                    ; $5815: $1a
    inc b                                         ; $5816: $04
    inc sp                                        ; $5817: $33
    ld a, [de]                                    ; $5818: $1a
    inc b                                         ; $5819: $04
    inc [hl]                                      ; $581a: $34
    ld a, [de]                                    ; $581b: $1a
    inc b                                         ; $581c: $04
    dec [hl]                                      ; $581d: $35
    ld a, [de]                                    ; $581e: $1a
    inc b                                         ; $581f: $04
    ld [hl], $1a                                  ; $5820: $36 $1a
    inc b                                         ; $5822: $04
    ld b, e                                       ; $5823: $43
    ld a, [de]                                    ; $5824: $1a
    inc b                                         ; $5825: $04
    ld h, h                                       ; $5826: $64
    ld a, [de]                                    ; $5827: $1a
    inc b                                         ; $5828: $04
    ld [hl], e                                    ; $5829: $73

jr_03a_582a:
    ld a, [de]                                    ; $582a: $1a
    inc b                                         ; $582b: $04
    ld [hl], h                                    ; $582c: $74
    ld a, [de]                                    ; $582d: $1a
    inc b                                         ; $582e: $04
    ld [hl], l                                    ; $582f: $75
    ld a, [de]                                    ; $5830: $1a
    inc b                                         ; $5831: $04
    halt                                          ; $5832: $76
    ld a, [de]                                    ; $5833: $1a
    inc b                                         ; $5834: $04
    ld [hl], a                                    ; $5835: $77
    ld a, [de]                                    ; $5836: $1a
    inc b                                         ; $5837: $04
    ld a, b                                       ; $5838: $78
    ld a, [de]                                    ; $5839: $1a
    inc b                                         ; $583a: $04
    ld a, c                                       ; $583b: $79
    ld a, [de]                                    ; $583c: $1a
    inc b                                         ; $583d: $04
    ld a, d                                       ; $583e: $7a
    ld a, [de]                                    ; $583f: $1a
    inc b                                         ; $5840: $04
    ld a, e                                       ; $5841: $7b
    ld a, [de]                                    ; $5842: $1a
    inc b                                         ; $5843: $04
    ld a, h                                       ; $5844: $7c
    ld a, [de]                                    ; $5845: $1a
    inc b                                         ; $5846: $04
    ld a, l                                       ; $5847: $7d
    ld a, [de]                                    ; $5848: $1a
    inc b                                         ; $5849: $04
    sub b                                         ; $584a: $90
    ld a, [de]                                    ; $584b: $1a
    inc b                                         ; $584c: $04
    and b                                         ; $584d: $a0
    ld a, [de]                                    ; $584e: $1a
    inc b                                         ; $584f: $04
    or b                                          ; $5850: $b0
    ld a, [de]                                    ; $5851: $1a
    inc b                                         ; $5852: $04
    cp h                                          ; $5853: $bc
    ld a, [de]                                    ; $5854: $1a
    inc b                                         ; $5855: $04
    rst $08                                       ; $5856: $cf
    ld a, [de]                                    ; $5857: $1a
    inc b                                         ; $5858: $04
    ld [$041a], a                                 ; $5859: $ea $1a $04
    db $eb                                        ; $585c: $eb
    ld a, [de]                                    ; $585d: $1a
    inc b                                         ; $585e: $04
    db $fc                                        ; $585f: $fc
    ld a, [de]                                    ; $5860: $1a
    inc b                                         ; $5861: $04
    db $fd                                        ; $5862: $fd
    ld a, [de]                                    ; $5863: $1a
    inc b                                         ; $5864: $04
    rrca                                          ; $5865: $0f
    dec de                                        ; $5866: $1b
    inc b                                         ; $5867: $04
    db $10                                        ; $5868: $10
    dec de                                        ; $5869: $1b
    inc b                                         ; $586a: $04
    ld [hl+], a                                   ; $586b: $22
    dec de                                        ; $586c: $1b
    inc b                                         ; $586d: $04
    inc hl                                        ; $586e: $23
    dec de                                        ; $586f: $1b
    inc b                                         ; $5870: $04
    ld [hl], $1b                                  ; $5871: $36 $1b
    inc b                                         ; $5873: $04
    ld b, d                                       ; $5874: $42
    dec de                                        ; $5875: $1b
    inc b                                         ; $5876: $04
    ld e, h                                       ; $5877: $5c
    dec de                                        ; $5878: $1b
    inc b                                         ; $5879: $04
    ld l, e                                       ; $587a: $6b
    dec de                                        ; $587b: $1b
    inc b                                         ; $587c: $04
    ld a, l                                       ; $587d: $7d
    dec de                                        ; $587e: $1b
    inc b                                         ; $587f: $04
    ld a, [hl]                                    ; $5880: $7e
    dec de                                        ; $5881: $1b
    inc b                                         ; $5882: $04
    ld a, a                                       ; $5883: $7f
    dec de                                        ; $5884: $1b
    inc b                                         ; $5885: $04
    add b                                         ; $5886: $80
    dec de                                        ; $5887: $1b
    inc b                                         ; $5888: $04
    add c                                         ; $5889: $81
    dec de                                        ; $588a: $1b
    inc b                                         ; $588b: $04
    sub d                                         ; $588c: $92
    dec de                                        ; $588d: $1b
    inc b                                         ; $588e: $04
    and h                                         ; $588f: $a4
    dec de                                        ; $5890: $1b
    inc b                                         ; $5891: $04
    cp c                                          ; $5892: $b9
    dec de                                        ; $5893: $1b
    inc b                                         ; $5894: $04
    call nc, Call_000_041b                        ; $5895: $d4 $1b $04
    db $ec                                        ; $5898: $ec
    dec de                                        ; $5899: $1b
    inc b                                         ; $589a: $04
    inc b                                         ; $589b: $04
    inc e                                         ; $589c: $1c
    inc b                                         ; $589d: $04
    rla                                           ; $589e: $17
    inc e                                         ; $589f: $1c
    inc b                                         ; $58a0: $04
    dec h                                         ; $58a1: $25
    inc e                                         ; $58a2: $1c
    inc b                                         ; $58a3: $04
    ld [hl], $1c                                  ; $58a4: $36 $1c
    inc b                                         ; $58a6: $04
    ld c, c                                       ; $58a7: $49
    inc e                                         ; $58a8: $1c
    inc b                                         ; $58a9: $04
    ld h, d                                       ; $58aa: $62
    inc e                                         ; $58ab: $1c
    inc b                                         ; $58ac: $04
    ld [hl], d                                    ; $58ad: $72
    inc e                                         ; $58ae: $1c
    inc b                                         ; $58af: $04
    sub h                                         ; $58b0: $94
    inc e                                         ; $58b1: $1c
    inc b                                         ; $58b2: $04
    sub l                                         ; $58b3: $95
    inc e                                         ; $58b4: $1c
    inc b                                         ; $58b5: $04
    or d                                          ; $58b6: $b2
    inc e                                         ; $58b7: $1c
    inc b                                         ; $58b8: $04
    rst $00                                       ; $58b9: $c7
    inc e                                         ; $58ba: $1c
    inc b                                         ; $58bb: $04
    reti                                          ; $58bc: $d9


    inc e                                         ; $58bd: $1c
    inc b                                         ; $58be: $04
    db $ed                                        ; $58bf: $ed
    inc e                                         ; $58c0: $1c
    inc b                                         ; $58c1: $04
    db $fc                                        ; $58c2: $fc
    inc e                                         ; $58c3: $1c
    inc b                                         ; $58c4: $04
    dec bc                                        ; $58c5: $0b
    dec e                                         ; $58c6: $1d
    inc b                                         ; $58c7: $04
    add hl, de                                    ; $58c8: $19
    dec e                                         ; $58c9: $1d
    inc b                                         ; $58ca: $04
    dec l                                         ; $58cb: $2d
    dec e                                         ; $58cc: $1d
    inc b                                         ; $58cd: $04
    ld a, $1d                                     ; $58ce: $3e $1d
    inc b                                         ; $58d0: $04
    ld c, c                                       ; $58d1: $49
    dec e                                         ; $58d2: $1d
    inc b                                         ; $58d3: $04
    ld d, h                                       ; $58d4: $54
    dec e                                         ; $58d5: $1d
    inc b                                         ; $58d6: $04
    ld e, e                                       ; $58d7: $5b
    dec e                                         ; $58d8: $1d
    inc b                                         ; $58d9: $04
    ld l, b                                       ; $58da: $68
    dec e                                         ; $58db: $1d
    inc b                                         ; $58dc: $04
    ld [hl], h                                    ; $58dd: $74
    dec e                                         ; $58de: $1d
    inc b                                         ; $58df: $04
    ld a, e                                       ; $58e0: $7b
    dec e                                         ; $58e1: $1d
    inc b                                         ; $58e2: $04
    add a                                         ; $58e3: $87
    dec e                                         ; $58e4: $1d
    inc b                                         ; $58e5: $04
    sub e                                         ; $58e6: $93
    dec e                                         ; $58e7: $1d
    inc b                                         ; $58e8: $04
    sbc a                                         ; $58e9: $9f
    dec e                                         ; $58ea: $1d
    inc b                                         ; $58eb: $04
    xor a                                         ; $58ec: $af
    dec e                                         ; $58ed: $1d
    inc b                                         ; $58ee: $04
    cp d                                          ; $58ef: $ba
    dec e                                         ; $58f0: $1d
    inc b                                         ; $58f1: $04
    ret                                           ; $58f2: $c9


    dec e                                         ; $58f3: $1d
    inc b                                         ; $58f4: $04
    ret c                                         ; $58f5: $d8

    dec e                                         ; $58f6: $1d
    inc b                                         ; $58f7: $04
    rst $20                                       ; $58f8: $e7
    dec e                                         ; $58f9: $1d
    inc b                                         ; $58fa: $04
    db $f4                                        ; $58fb: $f4
    dec e                                         ; $58fc: $1d
    inc b                                         ; $58fd: $04
    inc bc                                        ; $58fe: $03
    ld e, $04                                     ; $58ff: $1e $04
    rrca                                          ; $5901: $0f
    ld e, $04                                     ; $5902: $1e $04
    inc e                                         ; $5904: $1c
    ld e, $04                                     ; $5905: $1e $04
    jr z, @+$20                                   ; $5907: $28 $1e

    inc b                                         ; $5909: $04
    ld [hl-], a                                   ; $590a: $32
    ld e, $04                                     ; $590b: $1e $04
    dec a                                         ; $590d: $3d
    ld e, $04                                     ; $590e: $1e $04
    ld c, e                                       ; $5910: $4b
    ld e, $04                                     ; $5911: $1e $04
    ld e, c                                       ; $5913: $59
    ld e, $04                                     ; $5914: $1e $04
    ld h, e                                       ; $5916: $63
    ld e, $04                                     ; $5917: $1e $04
    ld [hl], b                                    ; $5919: $70
    ld e, $04                                     ; $591a: $1e $04
    ld a, l                                       ; $591c: $7d
    ld e, $04                                     ; $591d: $1e $04
    adc d                                         ; $591f: $8a
    ld e, $04                                     ; $5920: $1e $04
    sub a                                         ; $5922: $97
    ld e, $04                                     ; $5923: $1e $04
    and h                                         ; $5925: $a4
    ld e, $04                                     ; $5926: $1e $04
    or c                                          ; $5928: $b1
    ld e, $04                                     ; $5929: $1e $04
    cp l                                          ; $592b: $bd
    ld e, $04                                     ; $592c: $1e $04
    ret                                           ; $592e: $c9


    ld e, $04                                     ; $592f: $1e $04
    push de                                       ; $5931: $d5
    ld e, $04                                     ; $5932: $1e $04
    pop hl                                        ; $5934: $e1
    ld e, $04                                     ; $5935: $1e $04
    db $ed                                        ; $5937: $ed
    ld e, $04                                     ; $5938: $1e $04
    ld sp, hl                                     ; $593a: $f9
    ld e, $04                                     ; $593b: $1e $04
    ld [$041f], sp                                ; $593d: $08 $1f $04
    db $10                                        ; $5940: $10

Call_03a_5941:
    rra                                           ; $5941: $1f
    inc b                                         ; $5942: $04
    jr jr_03a_5964                                ; $5943: $18 $1f

    inc b                                         ; $5945: $04
    inc h                                         ; $5946: $24
    rra                                           ; $5947: $1f
    inc b                                         ; $5948: $04
    inc l                                         ; $5949: $2c
    rra                                           ; $594a: $1f
    inc b                                         ; $594b: $04
    dec [hl]                                      ; $594c: $35
    rra                                           ; $594d: $1f
    inc b                                         ; $594e: $04
    ld b, e                                       ; $594f: $43
    rra                                           ; $5950: $1f
    inc b                                         ; $5951: $04
    ld d, e                                       ; $5952: $53
    rra                                           ; $5953: $1f
    inc b                                         ; $5954: $04
    ld e, l                                       ; $5955: $5d
    rra                                           ; $5956: $1f
    inc b                                         ; $5957: $04
    ld h, a                                       ; $5958: $67
    rra                                           ; $5959: $1f
    inc b                                         ; $595a: $04
    ld [hl], c                                    ; $595b: $71
    rra                                           ; $595c: $1f
    inc b                                         ; $595d: $04
    ld a, e                                       ; $595e: $7b
    rra                                           ; $595f: $1f
    inc b                                         ; $5960: $04
    add l                                         ; $5961: $85
    rra                                           ; $5962: $1f
    inc b                                         ; $5963: $04

jr_03a_5964:
    adc a                                         ; $5964: $8f
    rra                                           ; $5965: $1f
    inc b                                         ; $5966: $04
    sbc c                                         ; $5967: $99
    rra                                           ; $5968: $1f
    inc b                                         ; $5969: $04
    and [hl]                                      ; $596a: $a6
    rra                                           ; $596b: $1f
    inc b                                         ; $596c: $04
    cp b                                          ; $596d: $b8
    rra                                           ; $596e: $1f
    inc b                                         ; $596f: $04
    ret nz                                        ; $5970: $c0

    rra                                           ; $5971: $1f
    inc b                                         ; $5972: $04
    ret                                           ; $5973: $c9


    rra                                           ; $5974: $1f
    inc b                                         ; $5975: $04
    jp nc, Jump_000_041f                          ; $5976: $d2 $1f $04

    pop hl                                        ; $5979: $e1
    rra                                           ; $597a: $1f
    inc b                                         ; $597b: $04
    pop af                                        ; $597c: $f1
    rra                                           ; $597d: $1f
    inc b                                         ; $597e: $04
    cp $1f                                        ; $597f: $fe $1f
    inc b                                         ; $5981: $04
    ld [$0420], sp                                ; $5982: $08 $20 $04
    dec d                                         ; $5985: $15
    jr nz, jr_03a_598c                            ; $5986: $20 $04

    jr nz, jr_03a_59aa                            ; $5988: $20 $20

    inc b                                         ; $598a: $04
    inc l                                         ; $598b: $2c

jr_03a_598c:
    jr nz, jr_03a_5992                            ; $598c: $20 $04

    ld [hl-], a                                   ; $598e: $32
    jr nz, jr_03a_5995                            ; $598f: $20 $04

    ld b, d                                       ; $5991: $42

jr_03a_5992:
    jr nz, jr_03a_5998                            ; $5992: $20 $04

    ld c, l                                       ; $5994: $4d

jr_03a_5995:
    jr nz, jr_03a_599b                            ; $5995: $20 $04

    ld e, l                                       ; $5997: $5d

jr_03a_5998:
    jr nz, jr_03a_599e                            ; $5998: $20 $04

    ld l, b                                       ; $599a: $68

jr_03a_599b:
    jr nz, jr_03a_59a1                            ; $599b: $20 $04

    ld [hl], e                                    ; $599d: $73

jr_03a_599e:
    jr nz, jr_03a_59a4                            ; $599e: $20 $04

    add d                                         ; $59a0: $82

jr_03a_59a1:
    jr nz, jr_03a_59a7                            ; $59a1: $20 $04

    sbc b                                         ; $59a3: $98

jr_03a_59a4:
    jr nz, jr_03a_59aa                            ; $59a4: $20 $04

    xor c                                         ; $59a6: $a9

jr_03a_59a7:
    jr nz, jr_03a_59ad                            ; $59a7: $20 $04

    or h                                          ; $59a9: $b4

jr_03a_59aa:
    jr nz, jr_03a_59b0                            ; $59aa: $20 $04

    cp a                                          ; $59ac: $bf

jr_03a_59ad:
    jr nz, jr_03a_59b3                            ; $59ad: $20 $04

    rst $08                                       ; $59af: $cf

jr_03a_59b0:
    jr nz, jr_03a_59b6                            ; $59b0: $20 $04

    pop hl                                        ; $59b2: $e1

jr_03a_59b3:
    jr nz, jr_03a_59b9                            ; $59b3: $20 $04

    db $eb                                        ; $59b5: $eb

jr_03a_59b6:
    jr nz, @+$06                                  ; $59b6: $20 $04

    rst $30                                       ; $59b8: $f7

jr_03a_59b9:
    jr nz, jr_03a_59bf                            ; $59b9: $20 $04

    cp $20                                        ; $59bb: $fe $20
    inc b                                         ; $59bd: $04
    dec bc                                        ; $59be: $0b

jr_03a_59bf:
    ld hl, $1904                                  ; $59bf: $21 $04 $19
    ld hl, $2704                                  ; $59c2: $21 $04 $27
    ld hl, $3504                                  ; $59c5: $21 $04 $35
    ld hl, $4304                                  ; $59c8: $21 $04 $43
    ld hl, $5404                                  ; $59cb: $21 $04 $54
    ld hl, $6704                                  ; $59ce: $21 $04 $67
    ld hl, $7504                                  ; $59d1: $21 $04 $75
    ld hl, $8104                                  ; $59d4: $21 $04 $81
    ld hl, $8e04                                  ; $59d7: $21 $04 $8e
    ld hl, $9704                                  ; $59da: $21 $04 $97
    ld hl, $a604                                  ; $59dd: $21 $04 $a6
    ld hl, $b304                                  ; $59e0: $21 $04 $b3
    ld hl, $be04                                  ; $59e3: $21 $04 $be
    ld hl, $cc04                                  ; $59e6: $21 $04 $cc
    ld hl, $d804                                  ; $59e9: $21 $04 $d8
    ld hl, $e004                                  ; $59ec: $21 $04 $e0
    ld hl, $ed04                                  ; $59ef: $21 $04 $ed
    ld hl, $ff04                                  ; $59f2: $21 $04 $ff
    ld hl, $0d04                                  ; $59f5: $21 $04 $0d
    ld [hl+], a                                   ; $59f8: $22
    inc b                                         ; $59f9: $04
    jr nz, jr_03a_5a1e                            ; $59fa: $20 $22

    inc b                                         ; $59fc: $04
    scf                                           ; $59fd: $37
    ld [hl+], a                                   ; $59fe: $22
    inc b                                         ; $59ff: $04
    ld b, [hl]                                    ; $5a00: $46
    ld [hl+], a                                   ; $5a01: $22
    inc b                                         ; $5a02: $04
    ld e, h                                       ; $5a03: $5c
    ld [hl+], a                                   ; $5a04: $22
    inc b                                         ; $5a05: $04
    ld [hl], a                                    ; $5a06: $77
    ld [hl+], a                                   ; $5a07: $22
    inc b                                         ; $5a08: $04
    sub c                                         ; $5a09: $91
    ld [hl+], a                                   ; $5a0a: $22
    inc b                                         ; $5a0b: $04
    or e                                          ; $5a0c: $b3
    ld [hl+], a                                   ; $5a0d: $22
    inc b                                         ; $5a0e: $04
    call Call_000_0422                            ; $5a0f: $cd $22 $04
    and $22                                       ; $5a12: $e6 $22
    inc b                                         ; $5a14: $04
    cp $22                                        ; $5a15: $fe $22
    inc b                                         ; $5a17: $04
    ld c, $23                                     ; $5a18: $0e $23
    inc b                                         ; $5a1a: $04
    inc e                                         ; $5a1b: $1c
    inc hl                                        ; $5a1c: $23
    inc b                                         ; $5a1d: $04

jr_03a_5a1e:
    ld a, [hl+]                                   ; $5a1e: $2a
    inc hl                                        ; $5a1f: $23
    inc b                                         ; $5a20: $04
    jr c, jr_03a_5a46                             ; $5a21: $38 $23

    inc b                                         ; $5a23: $04
    ld c, h                                       ; $5a24: $4c
    inc hl                                        ; $5a25: $23
    inc b                                         ; $5a26: $04
    ld h, d                                       ; $5a27: $62
    inc hl                                        ; $5a28: $23
    inc b                                         ; $5a29: $04
    ld [hl], h                                    ; $5a2a: $74
    inc hl                                        ; $5a2b: $23
    inc b                                         ; $5a2c: $04
    adc c                                         ; $5a2d: $89
    inc hl                                        ; $5a2e: $23
    inc b                                         ; $5a2f: $04
    sbc h                                         ; $5a30: $9c
    inc hl                                        ; $5a31: $23
    inc b                                         ; $5a32: $04
    xor l                                         ; $5a33: $ad
    inc hl                                        ; $5a34: $23
    inc b                                         ; $5a35: $04
    cp [hl]                                       ; $5a36: $be
    inc hl                                        ; $5a37: $23
    inc b                                         ; $5a38: $04
    db $d3                                        ; $5a39: $d3
    inc hl                                        ; $5a3a: $23
    inc b                                         ; $5a3b: $04
    add sp, $23                                   ; $5a3c: $e8 $23
    inc b                                         ; $5a3e: $04
    db $fc                                        ; $5a3f: $fc
    inc hl                                        ; $5a40: $23
    inc b                                         ; $5a41: $04
    rla                                           ; $5a42: $17
    inc h                                         ; $5a43: $24
    inc b                                         ; $5a44: $04
    ld [hl-], a                                   ; $5a45: $32

jr_03a_5a46:
    inc h                                         ; $5a46: $24
    inc b                                         ; $5a47: $04
    ld c, l                                       ; $5a48: $4d
    inc h                                         ; $5a49: $24
    inc b                                         ; $5a4a: $04
    ld l, b                                       ; $5a4b: $68
    inc h                                         ; $5a4c: $24
    inc b                                         ; $5a4d: $04
    add e                                         ; $5a4e: $83
    inc h                                         ; $5a4f: $24
    inc b                                         ; $5a50: $04
    sbc [hl]                                      ; $5a51: $9e
    inc h                                         ; $5a52: $24
    inc b                                         ; $5a53: $04
    xor h                                         ; $5a54: $ac
    inc h                                         ; $5a55: $24
    inc b                                         ; $5a56: $04
    cp d                                          ; $5a57: $ba
    inc h                                         ; $5a58: $24
    inc b                                         ; $5a59: $04
    ret z                                         ; $5a5a: $c8

    inc h                                         ; $5a5b: $24
    inc b                                         ; $5a5c: $04
    sub $24                                       ; $5a5d: $d6 $24
    inc b                                         ; $5a5f: $04
    db $e4                                        ; $5a60: $e4
    inc h                                         ; $5a61: $24
    inc b                                         ; $5a62: $04
    ld a, [c]                                     ; $5a63: $f2
    inc h                                         ; $5a64: $24
    inc b                                         ; $5a65: $04
    ld [$0425], sp                                ; $5a66: $08 $25 $04
    jr jr_03a_5a90                                ; $5a69: $18 $25

    inc b                                         ; $5a6b: $04
    jr z, jr_03a_5a93                             ; $5a6c: $28 $25

    inc b                                         ; $5a6e: $04
    dec sp                                        ; $5a6f: $3b
    dec h                                         ; $5a70: $25
    inc b                                         ; $5a71: $04
    ld c, d                                       ; $5a72: $4a
    dec h                                         ; $5a73: $25
    inc b                                         ; $5a74: $04
    ld e, d                                       ; $5a75: $5a
    dec h                                         ; $5a76: $25
    inc b                                         ; $5a77: $04
    ld l, d                                       ; $5a78: $6a
    dec h                                         ; $5a79: $25
    inc b                                         ; $5a7a: $04
    add b                                         ; $5a7b: $80
    dec h                                         ; $5a7c: $25
    inc b                                         ; $5a7d: $04
    sub e                                         ; $5a7e: $93
    dec h                                         ; $5a7f: $25
    inc b                                         ; $5a80: $04
    and [hl]                                      ; $5a81: $a6
    dec h                                         ; $5a82: $25
    inc b                                         ; $5a83: $04
    cp c                                          ; $5a84: $b9
    dec h                                         ; $5a85: $25
    inc b                                         ; $5a86: $04
    call z, $0425                                 ; $5a87: $cc $25 $04
    rst $18                                       ; $5a8a: $df
    dec h                                         ; $5a8b: $25
    inc b                                         ; $5a8c: $04
    ld a, [c]                                     ; $5a8d: $f2
    dec h                                         ; $5a8e: $25
    inc b                                         ; $5a8f: $04

jr_03a_5a90:
    dec b                                         ; $5a90: $05
    ld h, $04                                     ; $5a91: $26 $04

jr_03a_5a93:
    jr jr_03a_5abb                                ; $5a93: $18 $26

    inc b                                         ; $5a95: $04
    ld sp, $0426                                  ; $5a96: $31 $26 $04
    ld b, b                                       ; $5a99: $40
    ld h, $04                                     ; $5a9a: $26 $04
    ld c, a                                       ; $5a9c: $4f
    ld h, $04                                     ; $5a9d: $26 $04
    ld e, [hl]                                    ; $5a9f: $5e
    ld h, $04                                     ; $5aa0: $26 $04
    ld a, e                                       ; $5aa2: $7b
    ld h, $04                                     ; $5aa3: $26 $04
    sub d                                         ; $5aa5: $92
    ld h, $04                                     ; $5aa6: $26 $04
    xor e                                         ; $5aa8: $ab
    ld h, $04                                     ; $5aa9: $26 $04
    cp l                                          ; $5aab: $bd
    ld h, $04                                     ; $5aac: $26 $04
    rst $10                                       ; $5aae: $d7
    ld h, $04                                     ; $5aaf: $26 $04
    rst $28                                       ; $5ab1: $ef
    ld h, $04                                     ; $5ab2: $26 $04
    ld [$0427], sp                                ; $5ab4: $08 $27 $04
    dec d                                         ; $5ab7: $15
    daa                                           ; $5ab8: $27
    inc b                                         ; $5ab9: $04
    inc l                                         ; $5aba: $2c

jr_03a_5abb:
    daa                                           ; $5abb: $27
    inc b                                         ; $5abc: $04
    ld b, b                                       ; $5abd: $40
    daa                                           ; $5abe: $27
    inc b                                         ; $5abf: $04
    ld e, d                                       ; $5ac0: $5a
    daa                                           ; $5ac1: $27
    inc b                                         ; $5ac2: $04
    ld [hl], e                                    ; $5ac3: $73
    daa                                           ; $5ac4: $27
    inc b                                         ; $5ac5: $04
    add h                                         ; $5ac6: $84
    daa                                           ; $5ac7: $27
    inc b                                         ; $5ac8: $04
    sbc d                                         ; $5ac9: $9a
    daa                                           ; $5aca: $27
    inc b                                         ; $5acb: $04
    cp c                                          ; $5acc: $b9
    daa                                           ; $5acd: $27
    inc b                                         ; $5ace: $04
    pop de                                        ; $5acf: $d1
    daa                                           ; $5ad0: $27
    inc b                                         ; $5ad1: $04
    db $e3                                        ; $5ad2: $e3
    daa                                           ; $5ad3: $27
    inc b                                         ; $5ad4: $04
    or $27                                        ; $5ad5: $f6 $27
    inc b                                         ; $5ad7: $04
    ld b, $28                                     ; $5ad8: $06 $28
    inc b                                         ; $5ada: $04
    jr jr_03a_5b05                                ; $5adb: $18 $28

    inc b                                         ; $5add: $04
    inc l                                         ; $5ade: $2c
    jr z, jr_03a_5ae5                             ; $5adf: $28 $04

    dec sp                                        ; $5ae1: $3b
    jr z, jr_03a_5ae8                             ; $5ae2: $28 $04

    ld d, d                                       ; $5ae4: $52

jr_03a_5ae5:
    jr z, jr_03a_5aeb                             ; $5ae5: $28 $04

    ld h, h                                       ; $5ae7: $64

jr_03a_5ae8:
    jr z, jr_03a_5aee                             ; $5ae8: $28 $04

    ld a, c                                       ; $5aea: $79

jr_03a_5aeb:
    jr z, jr_03a_5af1                             ; $5aeb: $28 $04

    adc c                                         ; $5aed: $89

jr_03a_5aee:
    jr z, jr_03a_5af4                             ; $5aee: $28 $04

    sbc c                                         ; $5af0: $99

jr_03a_5af1:
    jr z, jr_03a_5af7                             ; $5af1: $28 $04

    xor c                                         ; $5af3: $a9

jr_03a_5af4:
    jr z, jr_03a_5afa                             ; $5af4: $28 $04

    cp [hl]                                       ; $5af6: $be

jr_03a_5af7:
    jr z, jr_03a_5afd                             ; $5af7: $28 $04

    db $dd                                        ; $5af9: $dd

jr_03a_5afa:
    jr z, jr_03a_5b00                             ; $5afa: $28 $04

    db $ed                                        ; $5afc: $ed

jr_03a_5afd:
    jr z, jr_03a_5b03                             ; $5afd: $28 $04

    inc b                                         ; $5aff: $04

jr_03a_5b00:
    add hl, hl                                    ; $5b00: $29
    inc b                                         ; $5b01: $04
    rra                                           ; $5b02: $1f

jr_03a_5b03:
    add hl, hl                                    ; $5b03: $29
    inc b                                         ; $5b04: $04

jr_03a_5b05:
    cpl                                           ; $5b05: $2f
    add hl, hl                                    ; $5b06: $29
    inc b                                         ; $5b07: $04
    ld b, l                                       ; $5b08: $45
    add hl, hl                                    ; $5b09: $29
    inc b                                         ; $5b0a: $04
    ld e, c                                       ; $5b0b: $59
    add hl, hl                                    ; $5b0c: $29
    inc b                                         ; $5b0d: $04
    ld l, e                                       ; $5b0e: $6b
    add hl, hl                                    ; $5b0f: $29
    inc b                                         ; $5b10: $04
    ld a, h                                       ; $5b11: $7c
    add hl, hl                                    ; $5b12: $29
    inc b                                         ; $5b13: $04
    sub h                                         ; $5b14: $94
    add hl, hl                                    ; $5b15: $29
    inc b                                         ; $5b16: $04
    and h                                         ; $5b17: $a4
    add hl, hl                                    ; $5b18: $29
    inc b                                         ; $5b19: $04
    cp e                                          ; $5b1a: $bb
    add hl, hl                                    ; $5b1b: $29
    inc b                                         ; $5b1c: $04
    sra c                                         ; $5b1d: $cb $29
    inc b                                         ; $5b1f: $04
    add h                                         ; $5b20: $84
    ld a, [hl+]                                   ; $5b21: $2a
    inc b                                         ; $5b22: $04
    xor e                                         ; $5b23: $ab
    ld a, [hl+]                                   ; $5b24: $2a
    inc b                                         ; $5b25: $04
    or e                                          ; $5b26: $b3
    ld a, [hl+]                                   ; $5b27: $2a
    inc b                                         ; $5b28: $04
    cp h                                          ; $5b29: $bc
    ld a, [hl+]                                   ; $5b2a: $2a
    inc b                                         ; $5b2b: $04
    call Call_000_042a                            ; $5b2c: $cd $2a $04
    reti                                          ; $5b2f: $d9


    ld a, [hl+]                                   ; $5b30: $2a
    inc b                                         ; $5b31: $04
    xor $2a                                       ; $5b32: $ee $2a
    inc b                                         ; $5b34: $04
    ld a, [$042a]                                 ; $5b35: $fa $2a $04
    ld a, [bc]                                    ; $5b38: $0a
    dec hl                                        ; $5b39: $2b
    inc b                                         ; $5b3a: $04
    ld c, $2b                                     ; $5b3b: $0e $2b
    inc b                                         ; $5b3d: $04
    dec d                                         ; $5b3e: $15
    dec hl                                        ; $5b3f: $2b
    inc b                                         ; $5b40: $04
    inc e                                         ; $5b41: $1c
    dec hl                                        ; $5b42: $2b
    inc b                                         ; $5b43: $04
    inc hl                                        ; $5b44: $23
    dec hl                                        ; $5b45: $2b
    inc b                                         ; $5b46: $04
    ld a, [hl+]                                   ; $5b47: $2a
    dec hl                                        ; $5b48: $2b
    inc b                                         ; $5b49: $04
    ld [hl-], a                                   ; $5b4a: $32
    dec hl                                        ; $5b4b: $2b
    inc b                                         ; $5b4c: $04
    ld c, c                                       ; $5b4d: $49
    dec hl                                        ; $5b4e: $2b
    inc b                                         ; $5b4f: $04

Jump_03a_5b50:
    ld d, h                                       ; $5b50: $54
    dec hl                                        ; $5b51: $2b
    inc b                                         ; $5b52: $04
    ld e, [hl]                                    ; $5b53: $5e
    dec hl                                        ; $5b54: $2b
    inc b                                         ; $5b55: $04
    ld l, b                                       ; $5b56: $68
    dec hl                                        ; $5b57: $2b
    inc b                                         ; $5b58: $04
    ld [hl], d                                    ; $5b59: $72
    dec hl                                        ; $5b5a: $2b
    inc b                                         ; $5b5b: $04
    ld a, [hl]                                    ; $5b5c: $7e
    dec hl                                        ; $5b5d: $2b
    inc b                                         ; $5b5e: $04
    adc d                                         ; $5b5f: $8a
    dec hl                                        ; $5b60: $2b
    inc b                                         ; $5b61: $04
    adc a                                         ; $5b62: $8f
    dec hl                                        ; $5b63: $2b
    inc b                                         ; $5b64: $04
    sbc b                                         ; $5b65: $98
    dec hl                                        ; $5b66: $2b
    inc b                                         ; $5b67: $04
    sbc [hl]                                      ; $5b68: $9e
    dec hl                                        ; $5b69: $2b
    inc b                                         ; $5b6a: $04
    and h                                         ; $5b6b: $a4
    dec hl                                        ; $5b6c: $2b
    inc b                                         ; $5b6d: $04
    or c                                          ; $5b6e: $b1
    dec hl                                        ; $5b6f: $2b
    inc b                                         ; $5b70: $04
    cp h                                          ; $5b71: $bc
    dec hl                                        ; $5b72: $2b
    inc b                                         ; $5b73: $04
    ret                                           ; $5b74: $c9


    dec hl                                        ; $5b75: $2b
    inc b                                         ; $5b76: $04
    db $d3                                        ; $5b77: $d3
    dec hl                                        ; $5b78: $2b
    inc b                                         ; $5b79: $04
    rst $18                                       ; $5b7a: $df
    dec hl                                        ; $5b7b: $2b
    inc b                                         ; $5b7c: $04
    ld [$042b], a                                 ; $5b7d: $ea $2b $04
    rst $30                                       ; $5b80: $f7
    dec hl                                        ; $5b81: $2b
    inc b                                         ; $5b82: $04
    nop                                           ; $5b83: $00
    inc l                                         ; $5b84: $2c
    inc b                                         ; $5b85: $04
    rrca                                          ; $5b86: $0f
    inc l                                         ; $5b87: $2c
    inc b                                         ; $5b88: $04
    dec d                                         ; $5b89: $15
    inc l                                         ; $5b8a: $2c
    inc b                                         ; $5b8b: $04
    dec de                                        ; $5b8c: $1b
    inc l                                         ; $5b8d: $2c
    inc b                                         ; $5b8e: $04
    ld [hl+], a                                   ; $5b8f: $22
    inc l                                         ; $5b90: $2c
    inc b                                         ; $5b91: $04
    ld [hl-], a                                   ; $5b92: $32
    inc l                                         ; $5b93: $2c
    inc b                                         ; $5b94: $04
    ld b, h                                       ; $5b95: $44
    inc l                                         ; $5b96: $2c
    inc b                                         ; $5b97: $04
    ld c, a                                       ; $5b98: $4f
    inc l                                         ; $5b99: $2c
    inc b                                         ; $5b9a: $04
    ld e, d                                       ; $5b9b: $5a
    inc l                                         ; $5b9c: $2c
    inc b                                         ; $5b9d: $04
    ld h, a                                       ; $5b9e: $67
    inc l                                         ; $5b9f: $2c
    inc b                                         ; $5ba0: $04
    halt                                          ; $5ba1: $76
    inc l                                         ; $5ba2: $2c
    inc b                                         ; $5ba3: $04
    ld a, h                                       ; $5ba4: $7c
    inc l                                         ; $5ba5: $2c
    inc b                                         ; $5ba6: $04
    adc c                                         ; $5ba7: $89
    inc l                                         ; $5ba8: $2c
    inc b                                         ; $5ba9: $04
    sub c                                         ; $5baa: $91
    inc l                                         ; $5bab: $2c
    inc b                                         ; $5bac: $04
    sub a                                         ; $5bad: $97
    inc l                                         ; $5bae: $2c
    inc b                                         ; $5baf: $04
    sbc e                                         ; $5bb0: $9b
    inc l                                         ; $5bb1: $2c
    inc b                                         ; $5bb2: $04
    xor c                                         ; $5bb3: $a9
    inc l                                         ; $5bb4: $2c
    inc b                                         ; $5bb5: $04
    call nc, $042c                                ; $5bb6: $d4 $2c $04
    db $e4                                        ; $5bb9: $e4
    inc l                                         ; $5bba: $2c
    inc b                                         ; $5bbb: $04
    push af                                       ; $5bbc: $f5
    inc l                                         ; $5bbd: $2c
    inc b                                         ; $5bbe: $04
    jr @+$2f                                      ; $5bbf: $18 $2d

    inc b                                         ; $5bc1: $04
    scf                                           ; $5bc2: $37
    dec l                                         ; $5bc3: $2d
    inc b                                         ; $5bc4: $04
    ld c, a                                       ; $5bc5: $4f
    dec l                                         ; $5bc6: $2d
    inc b                                         ; $5bc7: $04
    ld l, b                                       ; $5bc8: $68
    dec l                                         ; $5bc9: $2d
    inc b                                         ; $5bca: $04
    ld a, a                                       ; $5bcb: $7f
    dec l                                         ; $5bcc: $2d
    inc b                                         ; $5bcd: $04
    sub [hl]                                      ; $5bce: $96
    dec l                                         ; $5bcf: $2d
    inc b                                         ; $5bd0: $04
    xor e                                         ; $5bd1: $ab
    dec l                                         ; $5bd2: $2d
    inc b                                         ; $5bd3: $04
    adc $2d                                       ; $5bd4: $ce $2d
    inc b                                         ; $5bd6: $04
    xor $2d                                       ; $5bd7: $ee $2d
    inc b                                         ; $5bd9: $04
    ld b, $2e                                     ; $5bda: $06 $2e
    inc b                                         ; $5bdc: $04
    dec de                                        ; $5bdd: $1b
    ld l, $04                                     ; $5bde: $2e $04
    cpl                                           ; $5be0: $2f
    ld l, $04                                     ; $5be1: $2e $04
    ccf                                           ; $5be3: $3f
    ld l, $04                                     ; $5be4: $2e $04
    ld h, b                                       ; $5be6: $60
    ld l, $04                                     ; $5be7: $2e $04
    ld [hl], c                                    ; $5be9: $71
    ld l, $04                                     ; $5bea: $2e $04
    adc c                                         ; $5bec: $89
    ld l, $04                                     ; $5bed: $2e $04
    sub e                                         ; $5bef: $93
    ld l, $04                                     ; $5bf0: $2e $04
    sbc l                                         ; $5bf2: $9d
    ld l, $04                                     ; $5bf3: $2e $04
    xor e                                         ; $5bf5: $ab
    ld l, $04                                     ; $5bf6: $2e $04
    cp c                                          ; $5bf8: $b9
    ld l, $04                                     ; $5bf9: $2e $04
    call nz, $042e                                ; $5bfb: $c4 $2e $04
    adc $2e                                       ; $5bfe: $ce $2e
    inc b                                         ; $5c00: $04
    ld [$042e], a                                 ; $5c01: $ea $2e $04
    rlca                                          ; $5c04: $07
    cpl                                           ; $5c05: $2f
    inc b                                         ; $5c06: $04
    ld a, [hl+]                                   ; $5c07: $2a
    cpl                                           ; $5c08: $2f
    inc b                                         ; $5c09: $04
    ld d, d                                       ; $5c0a: $52
    cpl                                           ; $5c0b: $2f
    inc b                                         ; $5c0c: $04
    ld a, l                                       ; $5c0d: $7d
    cpl                                           ; $5c0e: $2f
    inc b                                         ; $5c0f: $04
    adc e                                         ; $5c10: $8b
    cpl                                           ; $5c11: $2f
    inc b                                         ; $5c12: $04
    sbc d                                         ; $5c13: $9a
    cpl                                           ; $5c14: $2f
    inc b                                         ; $5c15: $04
    xor d                                         ; $5c16: $aa
    cpl                                           ; $5c17: $2f
    inc b                                         ; $5c18: $04
    or a                                          ; $5c19: $b7
    cpl                                           ; $5c1a: $2f
    inc b                                         ; $5c1b: $04
    ret                                           ; $5c1c: $c9


    cpl                                           ; $5c1d: $2f
    inc b                                         ; $5c1e: $04
    jp nc, $042f                                  ; $5c1f: $d2 $2f $04

    ldh [$2f], a                                  ; $5c22: $e0 $2f
    inc b                                         ; $5c24: $04
    ld a, [c]                                     ; $5c25: $f2
    cpl                                           ; $5c26: $2f
    inc b                                         ; $5c27: $04
    inc de                                        ; $5c28: $13
    jr nc, jr_03a_5c2f                            ; $5c29: $30 $04

    ld b, [hl]                                    ; $5c2b: $46
    jr nc, jr_03a_5c32                            ; $5c2c: $30 $04

    ld l, [hl]                                    ; $5c2e: $6e

jr_03a_5c2f:
    jr nc, jr_03a_5c35                            ; $5c2f: $30 $04

    sub d                                         ; $5c31: $92

jr_03a_5c32:
    jr nc, jr_03a_5c38                            ; $5c32: $30 $04

    cp h                                          ; $5c34: $bc

jr_03a_5c35:
    jr nc, @+$06                                  ; $5c35: $30 $04

    di                                            ; $5c37: $f3

jr_03a_5c38:
    jr nc, jr_03a_5c3e                            ; $5c38: $30 $04

    jr nz, jr_03a_5c6d                            ; $5c3a: $20 $31

    inc b                                         ; $5c3c: $04
    ld c, d                                       ; $5c3d: $4a

jr_03a_5c3e:
    ld sp, $7e04                                  ; $5c3e: $31 $04 $7e
    ld sp, $c704                                  ; $5c41: $31 $04 $c7
    ld sp, $1004                                  ; $5c44: $31 $04 $10
    ld [hl-], a                                   ; $5c47: $32
    inc b                                         ; $5c48: $04
    ld b, b                                       ; $5c49: $40
    ld [hl-], a                                   ; $5c4a: $32
    inc b                                         ; $5c4b: $04
    ld l, a                                       ; $5c4c: $6f
    ld [hl-], a                                   ; $5c4d: $32
    inc b                                         ; $5c4e: $04
    ld b, e                                       ; $5c4f: $43
    inc sp                                        ; $5c50: $33
    inc b                                         ; $5c51: $04
    ld c, e                                       ; $5c52: $4b
    inc sp                                        ; $5c53: $33
    inc b                                         ; $5c54: $04
    ld d, h                                       ; $5c55: $54
    inc sp                                        ; $5c56: $33
    inc b                                         ; $5c57: $04
    ld e, c                                       ; $5c58: $59
    inc sp                                        ; $5c59: $33
    inc b                                         ; $5c5a: $04
    ld h, c                                       ; $5c5b: $61
    inc sp                                        ; $5c5c: $33
    inc b                                         ; $5c5d: $04
    ld l, [hl]                                    ; $5c5e: $6e
    inc sp                                        ; $5c5f: $33
    inc b                                         ; $5c60: $04
    ld a, c                                       ; $5c61: $79
    inc sp                                        ; $5c62: $33
    inc b                                         ; $5c63: $04
    add e                                         ; $5c64: $83
    inc sp                                        ; $5c65: $33
    inc b                                         ; $5c66: $04
    adc [hl]                                      ; $5c67: $8e
    inc sp                                        ; $5c68: $33
    inc b                                         ; $5c69: $04
    sbc b                                         ; $5c6a: $98
    inc sp                                        ; $5c6b: $33
    inc b                                         ; $5c6c: $04

jr_03a_5c6d:
    and b                                         ; $5c6d: $a0
    inc sp                                        ; $5c6e: $33
    inc b                                         ; $5c6f: $04
    xor e                                         ; $5c70: $ab
    inc sp                                        ; $5c71: $33
    inc b                                         ; $5c72: $04
    or c                                          ; $5c73: $b1
    inc sp                                        ; $5c74: $33
    inc b                                         ; $5c75: $04
    or a                                          ; $5c76: $b7
    inc sp                                        ; $5c77: $33
    inc b                                         ; $5c78: $04
    cp h                                          ; $5c79: $bc
    inc sp                                        ; $5c7a: $33
    inc b                                         ; $5c7b: $04
    ret z                                         ; $5c7c: $c8

    inc sp                                        ; $5c7d: $33
    inc b                                         ; $5c7e: $04
    jp nc, Jump_000_0433                          ; $5c7f: $d2 $33 $04

    rst $10                                       ; $5c82: $d7
    inc sp                                        ; $5c83: $33
    inc b                                         ; $5c84: $04
    ld [c], a                                     ; $5c85: $e2
    inc sp                                        ; $5c86: $33
    inc b                                         ; $5c87: $04
    db $ec                                        ; $5c88: $ec
    inc sp                                        ; $5c89: $33
    inc b                                         ; $5c8a: $04
    ld hl, sp+$33                                 ; $5c8b: $f8 $33
    inc b                                         ; $5c8d: $04
    cp $33                                        ; $5c8e: $fe $33
    inc b                                         ; $5c90: $04
    inc b                                         ; $5c91: $04
    inc [hl]                                      ; $5c92: $34
    inc b                                         ; $5c93: $04
    ld [$0434], sp                                ; $5c94: $08 $34 $04
    ld [de], a                                    ; $5c97: $12
    inc [hl]                                      ; $5c98: $34
    inc b                                         ; $5c99: $04
    ld d, $34                                     ; $5c9a: $16 $34
    inc b                                         ; $5c9c: $04
    dec de                                        ; $5c9d: $1b
    inc [hl]                                      ; $5c9e: $34
    inc b                                         ; $5c9f: $04
    ld [hl+], a                                   ; $5ca0: $22
    inc [hl]                                      ; $5ca1: $34
    inc b                                         ; $5ca2: $04
    inc l                                         ; $5ca3: $2c
    inc [hl]                                      ; $5ca4: $34
    inc b                                         ; $5ca5: $04
    inc sp                                        ; $5ca6: $33
    inc [hl]                                      ; $5ca7: $34
    inc b                                         ; $5ca8: $04
    ld a, [hl-]                                   ; $5ca9: $3a
    inc [hl]                                      ; $5caa: $34
    inc b                                         ; $5cab: $04
    ld b, e                                       ; $5cac: $43
    inc [hl]                                      ; $5cad: $34
    inc b                                         ; $5cae: $04
    ld c, h                                       ; $5caf: $4c
    inc [hl]                                      ; $5cb0: $34
    inc b                                         ; $5cb1: $04
    ld e, b                                       ; $5cb2: $58
    inc [hl]                                      ; $5cb3: $34
    inc b                                         ; $5cb4: $04
    ld h, c                                       ; $5cb5: $61
    inc [hl]                                      ; $5cb6: $34
    inc b                                         ; $5cb7: $04
    ld l, d                                       ; $5cb8: $6a
    inc [hl]                                      ; $5cb9: $34
    inc b                                         ; $5cba: $04
    halt                                          ; $5cbb: $76
    inc [hl]                                      ; $5cbc: $34
    inc b                                         ; $5cbd: $04
    add c                                         ; $5cbe: $81
    inc [hl]                                      ; $5cbf: $34
    inc b                                         ; $5cc0: $04
    adc h                                         ; $5cc1: $8c
    inc [hl]                                      ; $5cc2: $34
    inc b                                         ; $5cc3: $04
    sub e                                         ; $5cc4: $93
    inc [hl]                                      ; $5cc5: $34
    inc b                                         ; $5cc6: $04
    sbc l                                         ; $5cc7: $9d
    inc [hl]                                      ; $5cc8: $34
    inc b                                         ; $5cc9: $04
    and [hl]                                      ; $5cca: $a6
    inc [hl]                                      ; $5ccb: $34
    inc b                                         ; $5ccc: $04
    xor a                                         ; $5ccd: $af
    inc [hl]                                      ; $5cce: $34
    inc b                                         ; $5ccf: $04
    or a                                          ; $5cd0: $b7
    inc [hl]                                      ; $5cd1: $34
    inc b                                         ; $5cd2: $04
    cp [hl]                                       ; $5cd3: $be
    inc [hl]                                      ; $5cd4: $34
    inc b                                         ; $5cd5: $04
    add $34                                       ; $5cd6: $c6 $34
    inc b                                         ; $5cd8: $04
    jp nc, $0434                                  ; $5cd9: $d2 $34 $04

    reti                                          ; $5cdc: $d9


    inc [hl]                                      ; $5cdd: $34
    inc b                                         ; $5cde: $04
    pop hl                                        ; $5cdf: $e1
    inc [hl]                                      ; $5ce0: $34
    inc b                                         ; $5ce1: $04
    rst $28                                       ; $5ce2: $ef
    inc [hl]                                      ; $5ce3: $34
    inc b                                         ; $5ce4: $04
    ld sp, hl                                     ; $5ce5: $f9
    inc [hl]                                      ; $5ce6: $34
    inc b                                         ; $5ce7: $04
    rlca                                          ; $5ce8: $07
    dec [hl]                                      ; $5ce9: $35
    inc b                                         ; $5cea: $04
    ld hl, $0435                                  ; $5ceb: $21 $35 $04
    ld b, h                                       ; $5cee: $44
    dec [hl]                                      ; $5cef: $35
    inc b                                         ; $5cf0: $04
    adc b                                         ; $5cf1: $88
    dec [hl]                                      ; $5cf2: $35
    inc b                                         ; $5cf3: $04
    cp a                                          ; $5cf4: $bf
    dec [hl]                                      ; $5cf5: $35
    inc b                                         ; $5cf6: $04
    jp hl                                         ; $5cf7: $e9


    dec [hl]                                      ; $5cf8: $35
    inc b                                         ; $5cf9: $04
    rrca                                          ; $5cfa: $0f
    ld [hl], $04                                  ; $5cfb: $36 $04
    ld a, $36                                     ; $5cfd: $3e $36
    inc b                                         ; $5cff: $04
    ld d, e                                       ; $5d00: $53
    ld [hl], $04                                  ; $5d01: $36 $04
    adc b                                         ; $5d03: $88
    ld [hl], $04                                  ; $5d04: $36 $04
    or [hl]                                       ; $5d06: $b6
    ld [hl], $04                                  ; $5d07: $36 $04
    rst $10                                       ; $5d09: $d7
    ld [hl], $04                                  ; $5d0a: $36 $04
    db $f4                                        ; $5d0c: $f4
    ld [hl], $04                                  ; $5d0d: $36 $04
    ld e, $37                                     ; $5d0f: $1e $37
    inc b                                         ; $5d11: $04
    ld c, e                                       ; $5d12: $4b
    scf                                           ; $5d13: $37
    inc b                                         ; $5d14: $04
    ld a, a                                       ; $5d15: $7f
    scf                                           ; $5d16: $37
    inc b                                         ; $5d17: $04
    xor l                                         ; $5d18: $ad
    scf                                           ; $5d19: $37
    inc b                                         ; $5d1a: $04
    and $37                                       ; $5d1b: $e6 $37
    inc b                                         ; $5d1d: $04
    dec d                                         ; $5d1e: $15
    jr c, jr_03a_5d25                             ; $5d1f: $38 $04

    ld b, d                                       ; $5d21: $42
    jr c, jr_03a_5d28                             ; $5d22: $38 $04

    ld l, c                                       ; $5d24: $69

jr_03a_5d25:
    jr c, jr_03a_5d2b                             ; $5d25: $38 $04

    sub c                                         ; $5d27: $91

jr_03a_5d28:
    jr c, jr_03a_5d2e                             ; $5d28: $38 $04

    pop bc                                        ; $5d2a: $c1

jr_03a_5d2b:
    jr c, jr_03a_5d31                             ; $5d2b: $38 $04

    db $ec                                        ; $5d2d: $ec

jr_03a_5d2e:
    jr c, jr_03a_5d34                             ; $5d2e: $38 $04

    daa                                           ; $5d30: $27

jr_03a_5d31:
    add hl, sp                                    ; $5d31: $39
    inc b                                         ; $5d32: $04
    ld b, l                                       ; $5d33: $45

jr_03a_5d34:
    add hl, sp                                    ; $5d34: $39
    inc b                                         ; $5d35: $04
    ld l, a                                       ; $5d36: $6f
    add hl, sp                                    ; $5d37: $39
    inc b                                         ; $5d38: $04
    sub [hl]                                      ; $5d39: $96
    add hl, sp                                    ; $5d3a: $39
    inc b                                         ; $5d3b: $04
    or [hl]                                       ; $5d3c: $b6
    add hl, sp                                    ; $5d3d: $39
    inc b                                         ; $5d3e: $04
    sub $39                                       ; $5d3f: $d6 $39
    inc b                                         ; $5d41: $04
    inc bc                                        ; $5d42: $03
    ld a, [hl-]                                   ; $5d43: $3a
    inc b                                         ; $5d44: $04
    inc hl                                        ; $5d45: $23
    ld a, [hl-]                                   ; $5d46: $3a
    inc b                                         ; $5d47: $04
    ld h, l                                       ; $5d48: $65
    ld a, [hl-]                                   ; $5d49: $3a
    inc b                                         ; $5d4a: $04
    and l                                         ; $5d4b: $a5
    ld a, [hl-]                                   ; $5d4c: $3a
    inc b                                         ; $5d4d: $04
    sbc $3a                                       ; $5d4e: $de $3a
    inc b                                         ; $5d50: $04
    or $3a                                        ; $5d51: $f6 $3a
    inc b                                         ; $5d53: $04
    ld sp, $043b                                  ; $5d54: $31 $3b $04
    ld d, a                                       ; $5d57: $57
    dec sp                                        ; $5d58: $3b
    inc b                                         ; $5d59: $04
    ld [hl], c                                    ; $5d5a: $71
    dec sp                                        ; $5d5b: $3b
    inc b                                         ; $5d5c: $04
    xor a                                         ; $5d5d: $af
    dec sp                                        ; $5d5e: $3b
    inc b                                         ; $5d5f: $04
    sub $3b                                       ; $5d60: $d6 $3b
    inc b                                         ; $5d62: $04
    inc bc                                        ; $5d63: $03
    inc a                                         ; $5d64: $3c
    inc b                                         ; $5d65: $04
    ld a, [hl-]                                   ; $5d66: $3a
    inc a                                         ; $5d67: $3c
    inc b                                         ; $5d68: $04
    ld [hl], c                                    ; $5d69: $71
    inc a                                         ; $5d6a: $3c
    inc b                                         ; $5d6b: $04
    sbc c                                         ; $5d6c: $99
    inc a                                         ; $5d6d: $3c
    inc b                                         ; $5d6e: $04
    call nz, Call_000_043c                        ; $5d6f: $c4 $3c $04
    db $ed                                        ; $5d72: $ed
    inc a                                         ; $5d73: $3c
    inc b                                         ; $5d74: $04
    ld [hl+], a                                   ; $5d75: $22
    dec a                                         ; $5d76: $3d
    inc b                                         ; $5d77: $04
    ld d, b                                       ; $5d78: $50
    dec a                                         ; $5d79: $3d
    inc b                                         ; $5d7a: $04
    adc d                                         ; $5d7b: $8a
    dec a                                         ; $5d7c: $3d
    inc b                                         ; $5d7d: $04
    cp b                                          ; $5d7e: $b8
    dec a                                         ; $5d7f: $3d
    inc b                                         ; $5d80: $04
    ld [de], a                                    ; $5d81: $12
    ld a, $04                                     ; $5d82: $3e $04
    call $043e                                    ; $5d84: $cd $3e $04
    ld sp, $053f                                  ; $5d87: $31 $3f $05
    ld bc, $0500                                  ; $5d8a: $01 $00 $05
    adc h                                         ; $5d8d: $8c
    nop                                           ; $5d8e: $00
    dec b                                         ; $5d8f: $05
    jp c, Jump_000_0500                           ; $5d90: $da $00 $05

    xor d                                         ; $5d93: $aa
    ld bc, $3305                                  ; $5d94: $01 $05 $33
    ld [bc], a                                    ; $5d97: $02
    dec b                                         ; $5d98: $05
    ld h, [hl]                                    ; $5d99: $66
    inc bc                                        ; $5d9a: $03
    dec b                                         ; $5d9b: $05
    ldh a, [$03]                                  ; $5d9c: $f0 $03
    dec b                                         ; $5d9e: $05
    dec e                                         ; $5d9f: $1d
    inc b                                         ; $5da0: $04
    dec b                                         ; $5da1: $05
    ld l, a                                       ; $5da2: $6f
    inc b                                         ; $5da3: $04
    dec b                                         ; $5da4: $05
    sbc a                                         ; $5da5: $9f
    inc b                                         ; $5da6: $04
    dec b                                         ; $5da7: $05
    push de                                       ; $5da8: $d5
    inc b                                         ; $5da9: $04
    dec b                                         ; $5daa: $05
    push af                                       ; $5dab: $f5
    inc b                                         ; $5dac: $04
    dec b                                         ; $5dad: $05
    daa                                           ; $5dae: $27
    dec b                                         ; $5daf: $05
    dec b                                         ; $5db0: $05
    ld b, d                                       ; $5db1: $42
    dec b                                         ; $5db2: $05
    dec b                                         ; $5db3: $05
    ld l, b                                       ; $5db4: $68
    dec b                                         ; $5db5: $05
    dec b                                         ; $5db6: $05
    adc e                                         ; $5db7: $8b
    dec b                                         ; $5db8: $05
    dec b                                         ; $5db9: $05
    xor d                                         ; $5dba: $aa
    dec b                                         ; $5dbb: $05
    dec b                                         ; $5dbc: $05
    call z, Call_000_0505                         ; $5dbd: $cc $05 $05
    ld hl, sp+$05                                 ; $5dc0: $f8 $05
    dec b                                         ; $5dc2: $05
    ld [de], a                                    ; $5dc3: $12
    ld b, $05                                     ; $5dc4: $06 $05
    dec hl                                        ; $5dc6: $2b
    ld b, $05                                     ; $5dc7: $06 $05
    ld c, c                                       ; $5dc9: $49
    ld b, $05                                     ; $5dca: $06 $05
    ld h, [hl]                                    ; $5dcc: $66
    ld b, $05                                     ; $5dcd: $06 $05
    and e                                         ; $5dcf: $a3
    ld b, $05                                     ; $5dd0: $06 $05
    cp a                                          ; $5dd2: $bf
    ld b, $05                                     ; $5dd3: $06 $05

Call_03a_5dd5:
Jump_03a_5dd5:
    ldh a, [rTMA]                                 ; $5dd5: $f0 $06
    dec b                                         ; $5dd7: $05
    inc e                                         ; $5dd8: $1c
    rlca                                          ; $5dd9: $07
    dec b                                         ; $5dda: $05
    ld c, l                                       ; $5ddb: $4d
    rlca                                          ; $5ddc: $07
    dec b                                         ; $5ddd: $05
    ld [hl], l                                    ; $5dde: $75
    rlca                                          ; $5ddf: $07
    dec b                                         ; $5de0: $05
    adc d                                         ; $5de1: $8a
    rlca                                          ; $5de2: $07
    dec b                                         ; $5de3: $05
    or e                                          ; $5de4: $b3
    rlca                                          ; $5de5: $07
    dec b                                         ; $5de6: $05
    pop de                                        ; $5de7: $d1
    rlca                                          ; $5de8: $07
    dec b                                         ; $5de9: $05
    db $fc                                        ; $5dea: $fc
    rlca                                          ; $5deb: $07
    dec b                                         ; $5dec: $05
    daa                                           ; $5ded: $27
    ld [$3b05], sp                                ; $5dee: $08 $05 $3b
    ld [$5f05], sp                                ; $5df1: $08 $05 $5f
    ld [$8a05], sp                                ; $5df4: $08 $05 $8a
    ld [$b305], sp                                ; $5df7: $08 $05 $b3
    ld [$e205], sp                                ; $5dfa: $08 $05 $e2
    ld [$0c05], sp                                ; $5dfd: $08 $05 $0c
    add hl, bc                                    ; $5e00: $09
    dec b                                         ; $5e01: $05
    ld a, [hl-]                                   ; $5e02: $3a
    add hl, bc                                    ; $5e03: $09
    dec b                                         ; $5e04: $05
    ld e, a                                       ; $5e05: $5f
    add hl, bc                                    ; $5e06: $09
    dec b                                         ; $5e07: $05
    add b                                         ; $5e08: $80
    add hl, bc                                    ; $5e09: $09
    dec b                                         ; $5e0a: $05
    adc a                                         ; $5e0b: $8f
    add hl, bc                                    ; $5e0c: $09
    dec b                                         ; $5e0d: $05
    cp e                                          ; $5e0e: $bb
    add hl, bc                                    ; $5e0f: $09
    dec b                                         ; $5e10: $05
    db $dd                                        ; $5e11: $dd
    add hl, bc                                    ; $5e12: $09
    dec b                                         ; $5e13: $05
    ld a, [$0509]                                 ; $5e14: $fa $09 $05
    inc h                                         ; $5e17: $24
    ld a, [bc]                                    ; $5e18: $0a
    dec b                                         ; $5e19: $05
    ld d, e                                       ; $5e1a: $53
    ld a, [bc]                                    ; $5e1b: $0a
    dec b                                         ; $5e1c: $05
    ld l, c                                       ; $5e1d: $69
    ld a, [bc]                                    ; $5e1e: $0a
    dec b                                         ; $5e1f: $05
    sub c                                         ; $5e20: $91
    ld a, [bc]                                    ; $5e21: $0a
    dec b                                         ; $5e22: $05
    xor h                                         ; $5e23: $ac
    ld a, [bc]                                    ; $5e24: $0a
    dec b                                         ; $5e25: $05
    ld a, [c]                                     ; $5e26: $f2
    ld a, [bc]                                    ; $5e27: $0a
    dec b                                         ; $5e28: $05
    ld [de], a                                    ; $5e29: $12
    dec bc                                        ; $5e2a: $0b
    dec b                                         ; $5e2b: $05
    ld b, e                                       ; $5e2c: $43
    dec bc                                        ; $5e2d: $0b
    dec b                                         ; $5e2e: $05
    ld a, [hl]                                    ; $5e2f: $7e
    dec bc                                        ; $5e30: $0b
    dec b                                         ; $5e31: $05
    or d                                          ; $5e32: $b2
    dec bc                                        ; $5e33: $0b
    dec b                                         ; $5e34: $05
    and $0b                                       ; $5e35: $e6 $0b
    dec b                                         ; $5e37: $05
    ld a, [bc]                                    ; $5e38: $0a
    inc c                                         ; $5e39: $0c
    dec b                                         ; $5e3a: $05
    ld a, $0c                                     ; $5e3b: $3e $0c
    dec b                                         ; $5e3d: $05
    ld h, d                                       ; $5e3e: $62
    inc c                                         ; $5e3f: $0c
    dec b                                         ; $5e40: $05
    adc a                                         ; $5e41: $8f
    inc c                                         ; $5e42: $0c
    dec b                                         ; $5e43: $05
    or c                                          ; $5e44: $b1
    inc c                                         ; $5e45: $0c
    dec b                                         ; $5e46: $05
    sbc $0c                                       ; $5e47: $de $0c
    dec b                                         ; $5e49: $05
    ld b, $0d                                     ; $5e4a: $06 $0d
    dec b                                         ; $5e4c: $05
    ld b, c                                       ; $5e4d: $41
    dec c                                         ; $5e4e: $0d
    dec b                                         ; $5e4f: $05
    ld a, b                                       ; $5e50: $78
    dec c                                         ; $5e51: $0d
    dec b                                         ; $5e52: $05
    xor d                                         ; $5e53: $aa
    dec c                                         ; $5e54: $0d
    dec b                                         ; $5e55: $05
    sub $0d                                       ; $5e56: $d6 $0d
    dec b                                         ; $5e58: $05
    jp hl                                         ; $5e59: $e9


    dec c                                         ; $5e5a: $0d
    dec b                                         ; $5e5b: $05
    ld [$050d], a                                 ; $5e5c: $ea $0d $05
    rst $30                                       ; $5e5f: $f7
    dec c                                         ; $5e60: $0d
    dec b                                         ; $5e61: $05
    ld bc, $050e                                  ; $5e62: $01 $0e $05
    ld [bc], a                                    ; $5e65: $02
    ld c, $05                                     ; $5e66: $0e $05
    ld c, $0e                                     ; $5e68: $0e $0e
    dec b                                         ; $5e6a: $05
    jr @+$10                                      ; $5e6b: $18 $0e

    dec b                                         ; $5e6d: $05
    add hl, de                                    ; $5e6e: $19
    ld c, $05                                     ; $5e6f: $0e $05
    ld [hl+], a                                   ; $5e71: $22
    ld c, $05                                     ; $5e72: $0e $05
    inc l                                         ; $5e74: $2c

Call_03a_5e75:
    ld c, $05                                     ; $5e75: $0e $05
    dec l                                         ; $5e77: $2d
    ld c, $05                                     ; $5e78: $0e $05
    ld [hl], $0e                                  ; $5e7a: $36 $0e
    dec b                                         ; $5e7c: $05
    ccf                                           ; $5e7d: $3f
    ld c, $05                                     ; $5e7e: $0e $05
    ld c, b                                       ; $5e80: $48
    ld c, $05                                     ; $5e81: $0e $05
    ld d, e                                       ; $5e83: $53
    ld c, $05                                     ; $5e84: $0e $05
    ld e, l                                       ; $5e86: $5d
    ld c, $05                                     ; $5e87: $0e $05
    ld e, [hl]                                    ; $5e89: $5e
    ld c, $05                                     ; $5e8a: $0e $05
    ld l, d                                       ; $5e8c: $6a
    ld c, $05                                     ; $5e8d: $0e $05
    ld [hl], e                                    ; $5e8f: $73
    ld c, $05                                     ; $5e90: $0e $05
    ld a, e                                       ; $5e92: $7b
    ld c, $05                                     ; $5e93: $0e $05
    add l                                         ; $5e95: $85
    ld c, $05                                     ; $5e96: $0e $05
    add [hl]                                      ; $5e98: $86
    ld c, $05                                     ; $5e99: $0e $05
    sub a                                         ; $5e9b: $97
    ld c, $05                                     ; $5e9c: $0e $05
    and b                                         ; $5e9e: $a0
    ld c, $05                                     ; $5e9f: $0e $05
    and c                                         ; $5ea1: $a1
    ld c, $05                                     ; $5ea2: $0e $05
    xor l                                         ; $5ea4: $ad
    ld c, $05                                     ; $5ea5: $0e $05
    or l                                          ; $5ea7: $b5
    ld c, $05                                     ; $5ea8: $0e $05
    or [hl]                                       ; $5eaa: $b6
    ld c, $05                                     ; $5eab: $0e $05
    rst $00                                       ; $5ead: $c7
    ld c, $05                                     ; $5eae: $0e $05
    rst $08                                       ; $5eb0: $cf
    ld c, $05                                     ; $5eb1: $0e $05
    rst $10                                       ; $5eb3: $d7
    ld c, $05                                     ; $5eb4: $0e $05
    sbc $0e                                       ; $5eb6: $de $0e
    dec b                                         ; $5eb8: $05
    rst $18                                       ; $5eb9: $df
    ld c, $05                                     ; $5eba: $0e $05
    add sp, $0e                                   ; $5ebc: $e8 $0e
    dec b                                         ; $5ebe: $05
    ld a, [c]                                     ; $5ebf: $f2
    ld c, $05                                     ; $5ec0: $0e $05
    db $fc                                        ; $5ec2: $fc
    ld c, $05                                     ; $5ec3: $0e $05
    ld b, $0f                                     ; $5ec5: $06 $0f
    dec b                                         ; $5ec7: $05
    ld c, $0f                                     ; $5ec8: $0e $0f
    dec b                                         ; $5eca: $05
    rrca                                          ; $5ecb: $0f
    rrca                                          ; $5ecc: $0f
    dec b                                         ; $5ecd: $05
    db $10                                        ; $5ece: $10
    rrca                                          ; $5ecf: $0f
    dec b                                         ; $5ed0: $05
    ld h, $0f                                     ; $5ed1: $26 $0f
    dec b                                         ; $5ed3: $05
    daa                                           ; $5ed4: $27
    rrca                                          ; $5ed5: $0f
    dec b                                         ; $5ed6: $05
    ld [hl], $0f                                  ; $5ed7: $36 $0f
    dec b                                         ; $5ed9: $05
    ccf                                           ; $5eda: $3f
    rrca                                          ; $5edb: $0f
    dec b                                         ; $5edc: $05
    ld b, a                                       ; $5edd: $47
    rrca                                          ; $5ede: $0f
    dec b                                         ; $5edf: $05
    ld c, b                                       ; $5ee0: $48
    rrca                                          ; $5ee1: $0f
    dec b                                         ; $5ee2: $05
    ld e, b                                       ; $5ee3: $58
    rrca                                          ; $5ee4: $0f
    dec b                                         ; $5ee5: $05
    ld h, d                                       ; $5ee6: $62
    rrca                                          ; $5ee7: $0f
    dec b                                         ; $5ee8: $05
    ld h, e                                       ; $5ee9: $63
    rrca                                          ; $5eea: $0f
    dec b                                         ; $5eeb: $05
    ld l, a                                       ; $5eec: $6f
    rrca                                          ; $5eed: $0f
    dec b                                         ; $5eee: $05
    ld a, b                                       ; $5eef: $78
    rrca                                          ; $5ef0: $0f
    dec b                                         ; $5ef1: $05
    ld a, c                                       ; $5ef2: $79
    rrca                                          ; $5ef3: $0f
    dec b                                         ; $5ef4: $05
    adc e                                         ; $5ef5: $8b
    rrca                                          ; $5ef6: $0f
    dec b                                         ; $5ef7: $05
    sub a                                         ; $5ef8: $97
    rrca                                          ; $5ef9: $0f
    dec b                                         ; $5efa: $05
    and b                                         ; $5efb: $a0
    rrca                                          ; $5efc: $0f
    dec b                                         ; $5efd: $05
    and a                                         ; $5efe: $a7
    rrca                                          ; $5eff: $0f
    dec b                                         ; $5f00: $05
    xor [hl]                                      ; $5f01: $ae
    rrca                                          ; $5f02: $0f
    dec b                                         ; $5f03: $05
    cp b                                          ; $5f04: $b8
    rrca                                          ; $5f05: $0f
    dec b                                         ; $5f06: $05
    pop bc                                        ; $5f07: $c1
    rrca                                          ; $5f08: $0f
    dec b                                         ; $5f09: $05
    jp nz, Jump_000_050f                          ; $5f0a: $c2 $0f $05

    jp Jump_000_050f                              ; $5f0d: $c3 $0f $05


    call nz, Call_000_050f                        ; $5f10: $c4 $0f $05
    sub $0f                                       ; $5f13: $d6 $0f
    dec b                                         ; $5f15: $05
    rst $10                                       ; $5f16: $d7
    rrca                                          ; $5f17: $0f
    dec b                                         ; $5f18: $05
    push hl                                       ; $5f19: $e5
    rrca                                          ; $5f1a: $0f
    dec b                                         ; $5f1b: $05
    db $ed                                        ; $5f1c: $ed
    rrca                                          ; $5f1d: $0f
    dec b                                         ; $5f1e: $05
    rst $30                                       ; $5f1f: $f7
    rrca                                          ; $5f20: $0f
    dec b                                         ; $5f21: $05
    nop                                           ; $5f22: $00
    db $10                                        ; $5f23: $10
    dec b                                         ; $5f24: $05
    ld a, [bc]                                    ; $5f25: $0a
    db $10                                        ; $5f26: $10
    dec b                                         ; $5f27: $05
    dec d                                         ; $5f28: $15
    db $10                                        ; $5f29: $10
    dec b                                         ; $5f2a: $05
    dec e                                         ; $5f2b: $1d
    db $10                                        ; $5f2c: $10
    dec b                                         ; $5f2d: $05
    dec h                                         ; $5f2e: $25
    db $10                                        ; $5f2f: $10
    dec b                                         ; $5f30: $05
    ld h, $10                                     ; $5f31: $26 $10
    dec b                                         ; $5f33: $05
    dec [hl]                                      ; $5f34: $35
    db $10                                        ; $5f35: $10
    dec b                                         ; $5f36: $05
    inc a                                         ; $5f37: $3c
    db $10                                        ; $5f38: $10
    dec b                                         ; $5f39: $05
    dec a                                         ; $5f3a: $3d
    db $10                                        ; $5f3b: $10
    dec b                                         ; $5f3c: $05
    ld b, a                                       ; $5f3d: $47
    db $10                                        ; $5f3e: $10
    dec b                                         ; $5f3f: $05
    ld c, [hl]                                    ; $5f40: $4e
    db $10                                        ; $5f41: $10
    dec b                                         ; $5f42: $05
    ld c, a                                       ; $5f43: $4f
    db $10                                        ; $5f44: $10
    dec b                                         ; $5f45: $05
    ld e, d                                       ; $5f46: $5a
    db $10                                        ; $5f47: $10
    dec b                                         ; $5f48: $05
    ld h, e                                       ; $5f49: $63
    db $10                                        ; $5f4a: $10
    dec b                                         ; $5f4b: $05
    ld l, e                                       ; $5f4c: $6b
    db $10                                        ; $5f4d: $10
    dec b                                         ; $5f4e: $05
    ld [hl], h                                    ; $5f4f: $74
    db $10                                        ; $5f50: $10
    dec b                                         ; $5f51: $05
    ld a, [hl]                                    ; $5f52: $7e
    db $10                                        ; $5f53: $10
    dec b                                         ; $5f54: $05
    ld a, a                                       ; $5f55: $7f
    db $10                                        ; $5f56: $10
    dec b                                         ; $5f57: $05
    adc e                                         ; $5f58: $8b
    db $10                                        ; $5f59: $10
    dec b                                         ; $5f5a: $05
    sub e                                         ; $5f5b: $93
    db $10                                        ; $5f5c: $10
    dec b                                         ; $5f5d: $05
    sbc l                                         ; $5f5e: $9d
    db $10                                        ; $5f5f: $10
    dec b                                         ; $5f60: $05
    and e                                         ; $5f61: $a3
    db $10                                        ; $5f62: $10
    dec b                                         ; $5f63: $05
    xor l                                         ; $5f64: $ad
    db $10                                        ; $5f65: $10
    dec b                                         ; $5f66: $05
    or [hl]                                       ; $5f67: $b6
    db $10                                        ; $5f68: $10
    dec b                                         ; $5f69: $05
    cp [hl]                                       ; $5f6a: $be
    db $10                                        ; $5f6b: $10
    dec b                                         ; $5f6c: $05
    ret z                                         ; $5f6d: $c8

    db $10                                        ; $5f6e: $10
    dec b                                         ; $5f6f: $05
    push de                                       ; $5f70: $d5
    db $10                                        ; $5f71: $10
    dec b                                         ; $5f72: $05
    sbc $10                                       ; $5f73: $de $10
    dec b                                         ; $5f75: $05
    rst $20                                       ; $5f76: $e7
    db $10                                        ; $5f77: $10
    dec b                                         ; $5f78: $05
    add sp, $10                                   ; $5f79: $e8 $10
    dec b                                         ; $5f7b: $05
    di                                            ; $5f7c: $f3
    db $10                                        ; $5f7d: $10
    dec b                                         ; $5f7e: $05
    ld a, [$0510]                                 ; $5f7f: $fa $10 $05
    inc bc                                        ; $5f82: $03
    ld de, $0c05                                  ; $5f83: $11 $05 $0c
    ld de, $1505                                  ; $5f86: $11 $05 $15
    ld de, $1605                                  ; $5f89: $11 $05 $16
    ld de, $2b05                                  ; $5f8c: $11 $05 $2b
    ld de, $3605                                  ; $5f8f: $11 $05 $36
    ld de, $4005                                  ; $5f92: $11 $05 $40

Call_03a_5f95:
    ld de, $4905                                  ; $5f95: $11 $05 $49
    ld de, $5205                                  ; $5f98: $11 $05 $52
    ld de, $5a05                                  ; $5f9b: $11 $05 $5a
    ld de, $6105                                  ; $5f9e: $11 $05 $61
    ld de, $6b05                                  ; $5fa1: $11 $05 $6b
    ld de, $7305                                  ; $5fa4: $11 $05 $73
    ld de, $7a05                                  ; $5fa7: $11 $05 $7a
    ld de, $8205                                  ; $5faa: $11 $05 $82
    ld de, $8a05                                  ; $5fad: $11 $05 $8a
    ld de, $9305                                  ; $5fb0: $11 $05 $93
    ld de, $9405                                  ; $5fb3: $11 $05 $94
    ld de, $9505                                  ; $5fb6: $11 $05 $95
    ld de, $9605                                  ; $5fb9: $11 $05 $96
    ld de, $9705                                  ; $5fbc: $11 $05 $97
    ld de, $9805                                  ; $5fbf: $11 $05 $98
    ld de, $9905                                  ; $5fc2: $11 $05 $99
    ld de, $9a05                                  ; $5fc5: $11 $05 $9a
    ld de, $9b05                                  ; $5fc8: $11 $05 $9b
    ld de, $9c05                                  ; $5fcb: $11 $05 $9c
    ld de, $9d05                                  ; $5fce: $11 $05 $9d
    ld de, $9e05                                  ; $5fd1: $11 $05 $9e
    ld de, $9f05                                  ; $5fd4: $11 $05 $9f
    ld de, $a005                                  ; $5fd7: $11 $05 $a0
    ld de, $a105                                  ; $5fda: $11 $05 $a1
    ld de, $a205                                  ; $5fdd: $11 $05 $a2
    ld de, $a305                                  ; $5fe0: $11 $05 $a3
    ld de, $a405                                  ; $5fe3: $11 $05 $a4
    ld de, $a505                                  ; $5fe6: $11 $05 $a5
    ld de, $a605                                  ; $5fe9: $11 $05 $a6
    ld de, $a705                                  ; $5fec: $11 $05 $a7
    ld de, $a805                                  ; $5fef: $11 $05 $a8
    ld de, $a905                                  ; $5ff2: $11 $05 $a9
    ld de, $aa05                                  ; $5ff5: $11 $05 $aa
    ld de, $ab05                                  ; $5ff8: $11 $05 $ab
    ld de, $ac05                                  ; $5ffb: $11 $05 $ac
    ld de, $ad05                                  ; $5ffe: $11 $05 $ad
    ld de, $ae05                                  ; $6001: $11 $05 $ae
    ld de, $af05                                  ; $6004: $11 $05 $af
    ld de, $b005                                  ; $6007: $11 $05 $b0
    ld de, $b105                                  ; $600a: $11 $05 $b1
    ld de, $b205                                  ; $600d: $11 $05 $b2
    ld de, $b305                                  ; $6010: $11 $05 $b3
    ld de, $b405                                  ; $6013: $11 $05 $b4
    ld de, $b505                                  ; $6016: $11 $05 $b5
    ld de, $cb05                                  ; $6019: $11 $05 $cb
    ld de, $d205                                  ; $601c: $11 $05 $d2
    ld de, $0305                                  ; $601f: $11 $05 $03
    ld [de], a                                    ; $6022: $12
    dec b                                         ; $6023: $05
    inc e                                         ; $6024: $1c
    ld [de], a                                    ; $6025: $12
    dec b                                         ; $6026: $05
    ld h, a                                       ; $6027: $67
    ld [de], a                                    ; $6028: $12
    dec b                                         ; $6029: $05
    halt                                          ; $602a: $76
    ld [de], a                                    ; $602b: $12
    dec b                                         ; $602c: $05
    cp d                                          ; $602d: $ba
    ld [de], a                                    ; $602e: $12
    dec b                                         ; $602f: $05
    rst $18                                       ; $6030: $df
    ld [de], a                                    ; $6031: $12
    dec b                                         ; $6032: $05
    add hl, hl                                    ; $6033: $29
    inc de                                        ; $6034: $13
    dec b                                         ; $6035: $05
    dec a                                         ; $6036: $3d
    inc de                                        ; $6037: $13
    dec b                                         ; $6038: $05
    ld l, a                                       ; $6039: $6f
    inc de                                        ; $603a: $13
    dec b                                         ; $603b: $05
    cp d                                          ; $603c: $ba
    inc de                                        ; $603d: $13
    dec b                                         ; $603e: $05
    jp z, $0513                                   ; $603f: $ca $13 $05

    ld [bc], a                                    ; $6042: $02
    inc d                                         ; $6043: $14
    dec b                                         ; $6044: $05
    dec h                                         ; $6045: $25
    inc d                                         ; $6046: $14
    dec b                                         ; $6047: $05
    ld c, b                                       ; $6048: $48
    inc d                                         ; $6049: $14
    dec b                                         ; $604a: $05
    adc [hl]                                      ; $604b: $8e
    inc d                                         ; $604c: $14
    dec b                                         ; $604d: $05
    sbc e                                         ; $604e: $9b
    inc d                                         ; $604f: $14
    dec b                                         ; $6050: $05
    or c                                          ; $6051: $b1
    inc d                                         ; $6052: $14
    dec b                                         ; $6053: $05
    add $14                                       ; $6054: $c6 $14
    dec b                                         ; $6056: $05
    reti                                          ; $6057: $d9


    inc d                                         ; $6058: $14
    dec b                                         ; $6059: $05
    rst $28                                       ; $605a: $ef
    inc d                                         ; $605b: $14
    dec b                                         ; $605c: $05
    ld d, $15                                     ; $605d: $16 $15
    dec b                                         ; $605f: $05
    ld h, [hl]                                    ; $6060: $66
    dec d                                         ; $6061: $15
    dec b                                         ; $6062: $05
    ld [hl], d                                    ; $6063: $72
    dec d                                         ; $6064: $15
    dec b                                         ; $6065: $05
    xor c                                         ; $6066: $a9
    dec d                                         ; $6067: $15
    dec b                                         ; $6068: $05
    cp b                                          ; $6069: $b8
    dec d                                         ; $606a: $15
    dec b                                         ; $606b: $05
    ret nc                                        ; $606c: $d0

    dec d                                         ; $606d: $15
    dec b                                         ; $606e: $05
    rrca                                          ; $606f: $0f
    ld d, $05                                     ; $6070: $16 $05
    ld sp, $0516                                  ; $6072: $31 $16 $05
    ld b, h                                       ; $6075: $44
    ld d, $05                                     ; $6076: $16 $05
    ld e, d                                       ; $6078: $5a
    ld d, $05                                     ; $6079: $16 $05
    add c                                         ; $607b: $81
    ld d, $05                                     ; $607c: $16 $05
    and d                                         ; $607e: $a2
    ld d, $05                                     ; $607f: $16 $05
    or c                                          ; $6081: $b1
    ld d, $05                                     ; $6082: $16 $05
    cp [hl]                                       ; $6084: $be
    ld d, $05                                     ; $6085: $16 $05
    ret nc                                        ; $6087: $d0

    ld d, $05                                     ; $6088: $16 $05
    db $e3                                        ; $608a: $e3
    ld d, $05                                     ; $608b: $16 $05
    db $eb                                        ; $608d: $eb
    ld d, $05                                     ; $608e: $16 $05
    ld hl, sp+$16                                 ; $6090: $f8 $16
    dec b                                         ; $6092: $05
    ld a, [bc]                                    ; $6093: $0a
    rla                                           ; $6094: $17
    dec b                                         ; $6095: $05
    dec e                                         ; $6096: $1d
    rla                                           ; $6097: $17
    dec b                                         ; $6098: $05

Jump_03a_6099:
    ld l, $17                                     ; $6099: $2e $17
    dec b                                         ; $609b: $05
    ld a, [hl-]                                   ; $609c: $3a
    rla                                           ; $609d: $17
    dec b                                         ; $609e: $05
    ld c, h                                       ; $609f: $4c
    rla                                           ; $60a0: $17
    dec b                                         ; $60a1: $05
    ld l, c                                       ; $60a2: $69
    rla                                           ; $60a3: $17
    dec b                                         ; $60a4: $05
    ld [hl], l                                    ; $60a5: $75
    rla                                           ; $60a6: $17
    dec b                                         ; $60a7: $05
    adc l                                         ; $60a8: $8d
    rla                                           ; $60a9: $17
    dec b                                         ; $60aa: $05
    and b                                         ; $60ab: $a0
    rla                                           ; $60ac: $17
    dec b                                         ; $60ad: $05
    cp c                                          ; $60ae: $b9
    rla                                           ; $60af: $17
    dec b                                         ; $60b0: $05
    jp nc, Jump_000_0517                          ; $60b1: $d2 $17 $05

    db $e3                                        ; $60b4: $e3
    rla                                           ; $60b5: $17
    dec b                                         ; $60b6: $05
    or $17                                        ; $60b7: $f6 $17
    dec b                                         ; $60b9: $05
    inc bc                                        ; $60ba: $03
    jr @+$07                                      ; $60bb: $18 $05

    dec d                                         ; $60bd: $15
    jr @+$07                                      ; $60be: $18 $05

    daa                                           ; $60c0: $27
    jr @+$07                                      ; $60c1: $18 $05

    dec sp                                        ; $60c3: $3b
    jr @+$07                                      ; $60c4: $18 $05

    ld d, e                                       ; $60c6: $53
    jr @+$07                                      ; $60c7: $18 $05

    ld l, d                                       ; $60c9: $6a
    jr @+$07                                      ; $60ca: $18 $05

    adc [hl]                                      ; $60cc: $8e
    jr @+$07                                      ; $60cd: $18 $05

    and d                                         ; $60cf: $a2
    jr jr_03a_60d7                                ; $60d0: $18 $05

    db $d3                                        ; $60d2: $d3
    jr jr_03a_60da                                ; $60d3: $18 $05

    xor $18                                       ; $60d5: $ee $18

jr_03a_60d7:
    dec b                                         ; $60d7: $05
    nop                                           ; $60d8: $00
    add hl, de                                    ; $60d9: $19

jr_03a_60da:
    dec b                                         ; $60da: $05
    ld e, $19                                     ; $60db: $1e $19
    dec b                                         ; $60dd: $05
    dec a                                         ; $60de: $3d
    add hl, de                                    ; $60df: $19
    dec b                                         ; $60e0: $05
    ld e, b                                       ; $60e1: $58
    add hl, de                                    ; $60e2: $19
    dec b                                         ; $60e3: $05
    ld l, e                                       ; $60e4: $6b
    add hl, de                                    ; $60e5: $19
    dec b                                         ; $60e6: $05
    add e                                         ; $60e7: $83
    add hl, de                                    ; $60e8: $19
    dec b                                         ; $60e9: $05
    sbc h                                         ; $60ea: $9c
    add hl, de                                    ; $60eb: $19
    dec b                                         ; $60ec: $05
    xor [hl]                                      ; $60ed: $ae
    add hl, de                                    ; $60ee: $19
    dec b                                         ; $60ef: $05
    ret nz                                        ; $60f0: $c0

    add hl, de                                    ; $60f1: $19
    dec b                                         ; $60f2: $05
    ret c                                         ; $60f3: $d8

    add hl, de                                    ; $60f4: $19
    dec b                                         ; $60f5: $05
    ldh a, [rNR24]                                ; $60f6: $f0 $19
    dec b                                         ; $60f8: $05
    rrca                                          ; $60f9: $0f
    ld a, [de]                                    ; $60fa: $1a
    dec b                                         ; $60fb: $05
    rra                                           ; $60fc: $1f
    ld a, [de]                                    ; $60fd: $1a
    dec b                                         ; $60fe: $05
    dec [hl]                                      ; $60ff: $35
    ld a, [de]                                    ; $6100: $1a
    dec b                                         ; $6101: $05
    ld c, d                                       ; $6102: $4a
    ld a, [de]                                    ; $6103: $1a
    dec b                                         ; $6104: $05
    ld l, [hl]                                    ; $6105: $6e
    ld a, [de]                                    ; $6106: $1a
    dec b                                         ; $6107: $05
    add l                                         ; $6108: $85
    ld a, [de]                                    ; $6109: $1a
    dec b                                         ; $610a: $05
    and d                                         ; $610b: $a2
    ld a, [de]                                    ; $610c: $1a
    dec b                                         ; $610d: $05
    cp a                                          ; $610e: $bf
    ld a, [de]                                    ; $610f: $1a
    dec b                                         ; $6110: $05
    call nc, $051a                                ; $6111: $d4 $1a $05
    dec [hl]                                      ; $6114: $35
    dec de                                        ; $6115: $1b
    dec b                                         ; $6116: $05
    sbc d                                         ; $6117: $9a
    dec de                                        ; $6118: $1b
    dec b                                         ; $6119: $05
    or l                                          ; $611a: $b5
    dec de                                        ; $611b: $1b
    dec b                                         ; $611c: $05
    db $dd                                        ; $611d: $dd
    dec de                                        ; $611e: $1b
    dec b                                         ; $611f: $05
    dec b                                         ; $6120: $05
    inc e                                         ; $6121: $1c
    dec b                                         ; $6122: $05
    ld [hl], $1c                                  ; $6123: $36 $1c
    dec b                                         ; $6125: $05
    ld h, [hl]                                    ; $6126: $66
    inc e                                         ; $6127: $1c
    dec b                                         ; $6128: $05
    adc h                                         ; $6129: $8c
    inc e                                         ; $612a: $1c
    dec b                                         ; $612b: $05
    cp b                                          ; $612c: $b8
    inc e                                         ; $612d: $1c
    dec b                                         ; $612e: $05
    pop hl                                        ; $612f: $e1
    inc e                                         ; $6130: $1c
    dec b                                         ; $6131: $05
    inc c                                         ; $6132: $0c
    dec e                                         ; $6133: $1d
    dec b                                         ; $6134: $05
    add hl, sp                                    ; $6135: $39
    dec e                                         ; $6136: $1d
    dec b                                         ; $6137: $05
    ld d, a                                       ; $6138: $57
    dec e                                         ; $6139: $1d
    dec b                                         ; $613a: $05
    ld l, a                                       ; $613b: $6f
    dec e                                         ; $613c: $1d
    dec b                                         ; $613d: $05
    add a                                         ; $613e: $87
    dec e                                         ; $613f: $1d
    dec b                                         ; $6140: $05
    xor e                                         ; $6141: $ab
    dec e                                         ; $6142: $1d
    dec b                                         ; $6143: $05
    db $eb                                        ; $6144: $eb
    dec e                                         ; $6145: $1d
    dec b                                         ; $6146: $05
    ccf                                           ; $6147: $3f
    ld e, $05                                     ; $6148: $1e $05
    ld a, [hl]                                    ; $614a: $7e
    ld e, $05                                     ; $614b: $1e $05
    cp h                                          ; $614d: $bc
    ld e, $05                                     ; $614e: $1e $05
    cp $1e                                        ; $6150: $fe $1e
    dec b                                         ; $6152: $05
    inc a                                         ; $6153: $3c
    rra                                           ; $6154: $1f
    dec b                                         ; $6155: $05
    sbc d                                         ; $6156: $9a
    rra                                           ; $6157: $1f
    dec b                                         ; $6158: $05
    xor $1f                                       ; $6159: $ee $1f
    dec b                                         ; $615b: $05
    ld e, [hl]                                    ; $615c: $5e
    jr nz, @+$07                                  ; $615d: $20 $05

    pop de                                        ; $615f: $d1
    jr nz, @+$07                                  ; $6160: $20 $05

    ld c, b                                       ; $6162: $48
    ld hl, $b505                                  ; $6163: $21 $05 $b5
    ld hl, $1805                                  ; $6166: $21 $05 $18
    ld [hl+], a                                   ; $6169: $22
    dec b                                         ; $616a: $05
    sbc l                                         ; $616b: $9d
    ld [hl+], a                                   ; $616c: $22
    dec b                                         ; $616d: $05
    cp $22                                        ; $616e: $fe $22
    dec b                                         ; $6170: $05
    ld [hl], d                                    ; $6171: $72
    inc hl                                        ; $6172: $23
    dec b                                         ; $6173: $05
    or [hl]                                       ; $6174: $b6
    inc hl                                        ; $6175: $23
    dec b                                         ; $6176: $05
    inc hl                                        ; $6177: $23
    inc h                                         ; $6178: $24
    dec b                                         ; $6179: $05
    add b                                         ; $617a: $80
    inc h                                         ; $617b: $24
    dec b                                         ; $617c: $05
    db $ed                                        ; $617d: $ed
    inc h                                         ; $617e: $24
    dec b                                         ; $617f: $05
    ld e, b                                       ; $6180: $58
    dec h                                         ; $6181: $25
    dec b                                         ; $6182: $05
    sla l                                         ; $6183: $cb $25
    dec b                                         ; $6185: $05
    dec [hl]                                      ; $6186: $35
    ld h, $05                                     ; $6187: $26 $05
    and e                                         ; $6189: $a3
    ld h, $05                                     ; $618a: $26 $05
    dec hl                                        ; $618c: $2b
    daa                                           ; $618d: $27
    dec b                                         ; $618e: $05
    ld [hl], c                                    ; $618f: $71
    daa                                           ; $6190: $27
    dec b                                         ; $6191: $05
    add d                                         ; $6192: $82
    daa                                           ; $6193: $27
    dec b                                         ; $6194: $05
    add a                                         ; $6195: $87
    daa                                           ; $6196: $27
    dec b                                         ; $6197: $05
    adc h                                         ; $6198: $8c
    daa                                           ; $6199: $27
    dec b                                         ; $619a: $05
    sub c                                         ; $619b: $91
    daa                                           ; $619c: $27
    dec b                                         ; $619d: $05
    sbc [hl]                                      ; $619e: $9e
    daa                                           ; $619f: $27
    dec b                                         ; $61a0: $05
    xor d                                         ; $61a1: $aa
    daa                                           ; $61a2: $27
    dec b                                         ; $61a3: $05
    rst $10                                       ; $61a4: $d7
    daa                                           ; $61a5: $27
    dec b                                         ; $61a6: $05
    ld c, $28                                     ; $61a7: $0e $28
    dec b                                         ; $61a9: $05
    ld e, l                                       ; $61aa: $5d
    jr z, @+$07                                   ; $61ab: $28 $05

    sbc e                                         ; $61ad: $9b
    jr z, jr_03a_61b5                             ; $61ae: $28 $05

    db $e3                                        ; $61b0: $e3
    jr z, jr_03a_61b8                             ; $61b1: $28 $05

    inc de                                        ; $61b3: $13
    add hl, hl                                    ; $61b4: $29

jr_03a_61b5:
    dec b                                         ; $61b5: $05
    ld l, [hl]                                    ; $61b6: $6e
    add hl, hl                                    ; $61b7: $29

jr_03a_61b8:
    dec b                                         ; $61b8: $05
    xor a                                         ; $61b9: $af
    add hl, hl                                    ; $61ba: $29
    dec b                                         ; $61bb: $05
    add sp, $29                                   ; $61bc: $e8 $29
    dec b                                         ; $61be: $05
    dec bc                                        ; $61bf: $0b
    ld a, [hl+]                                   ; $61c0: $2a
    dec b                                         ; $61c1: $05
    inc [hl]                                      ; $61c2: $34
    ld a, [hl+]                                   ; $61c3: $2a
    dec b                                         ; $61c4: $05
    ld e, l                                       ; $61c5: $5d
    ld a, [hl+]                                   ; $61c6: $2a
    dec b                                         ; $61c7: $05
    adc b                                         ; $61c8: $88
    ld a, [hl+]                                   ; $61c9: $2a
    dec b                                         ; $61ca: $05
    xor [hl]                                      ; $61cb: $ae
    ld a, [hl+]                                   ; $61cc: $2a
    dec b                                         ; $61cd: $05
    call z, Call_000_052a                         ; $61ce: $cc $2a $05
    rst $20                                       ; $61d1: $e7
    ld a, [hl+]                                   ; $61d2: $2a
    dec b                                         ; $61d3: $05
    rla                                           ; $61d4: $17
    dec hl                                        ; $61d5: $2b
    dec b                                         ; $61d6: $05
    ld h, $2b                                     ; $61d7: $26 $2b
    dec b                                         ; $61d9: $05
    add hl, sp                                    ; $61da: $39
    dec hl                                        ; $61db: $2b
    dec b                                         ; $61dc: $05
    ld c, [hl]                                    ; $61dd: $4e
    dec hl                                        ; $61de: $2b
    dec b                                         ; $61df: $05
    ld [hl], e                                    ; $61e0: $73
    dec hl                                        ; $61e1: $2b
    dec b                                         ; $61e2: $05
    sbc [hl]                                      ; $61e3: $9e
    dec hl                                        ; $61e4: $2b
    dec b                                         ; $61e5: $05
    jp $052b                                      ; $61e6: $c3 $2b $05


    jp c, $052b                                   ; $61e9: $da $2b $05

    dec d                                         ; $61ec: $15
    inc l                                         ; $61ed: $2c
    dec b                                         ; $61ee: $05
    inc [hl]                                      ; $61ef: $34
    inc l                                         ; $61f0: $2c
    dec b                                         ; $61f1: $05
    ld [hl], h                                    ; $61f2: $74
    inc l                                         ; $61f3: $2c
    dec b                                         ; $61f4: $05
    sbc a                                         ; $61f5: $9f
    inc l                                         ; $61f6: $2c
    dec b                                         ; $61f7: $05
    pop bc                                        ; $61f8: $c1
    inc l                                         ; $61f9: $2c
    dec b                                         ; $61fa: $05
    ret c                                         ; $61fb: $d8

    inc l                                         ; $61fc: $2c
    dec b                                         ; $61fd: $05
    di                                            ; $61fe: $f3
    inc l                                         ; $61ff: $2c
    dec b                                         ; $6200: $05
    ld b, $2d                                     ; $6201: $06 $2d
    dec b                                         ; $6203: $05
    ld [hl+], a                                   ; $6204: $22
    dec l                                         ; $6205: $2d
    dec b                                         ; $6206: $05
    ld a, [hl]                                    ; $6207: $7e
    dec l                                         ; $6208: $2d
    dec b                                         ; $6209: $05
    xor l                                         ; $620a: $ad
    dec l                                         ; $620b: $2d
    dec b                                         ; $620c: $05
    sub $2d                                       ; $620d: $d6 $2d
    dec b                                         ; $620f: $05
    ld [c], a                                     ; $6210: $e2
    dec l                                         ; $6211: $2d
    dec b                                         ; $6212: $05
    db $eb                                        ; $6213: $eb
    dec l                                         ; $6214: $2d
    dec b                                         ; $6215: $05
    pop af                                        ; $6216: $f1
    dec l                                         ; $6217: $2d
    dec b                                         ; $6218: $05
    rst $30                                       ; $6219: $f7
    dec l                                         ; $621a: $2d
    dec b                                         ; $621b: $05
    inc b                                         ; $621c: $04
    ld l, $05                                     ; $621d: $2e $05
    ld a, [bc]                                    ; $621f: $0a
    ld l, $05                                     ; $6220: $2e $05
    inc de                                        ; $6222: $13
    ld l, $05                                     ; $6223: $2e $05
    dec h                                         ; $6225: $25
    ld l, $05                                     ; $6226: $2e $05
    cpl                                           ; $6228: $2f
    ld l, $05                                     ; $6229: $2e $05
    ld b, h                                       ; $622b: $44
    ld l, $05                                     ; $622c: $2e $05
    ld c, l                                       ; $622e: $4d
    ld l, $05                                     ; $622f: $2e $05
    ld e, b                                       ; $6231: $58
    ld l, $05                                     ; $6232: $2e $05
    ld h, l                                       ; $6234: $65
    ld l, $05                                     ; $6235: $2e $05
    ld [hl], h                                    ; $6237: $74
    ld l, $05                                     ; $6238: $2e $05
    adc a                                         ; $623a: $8f
    ld l, $05                                     ; $623b: $2e $05
    xor l                                         ; $623d: $ad
    ld l, $05                                     ; $623e: $2e $05
    push bc                                       ; $6240: $c5
    ld l, $05                                     ; $6241: $2e $05
    jp c, Jump_000_052e                           ; $6243: $da $2e $05

    ld [$052e], a                                 ; $6246: $ea $2e $05
    ld [bc], a                                    ; $6249: $02
    cpl                                           ; $624a: $2f
    dec b                                         ; $624b: $05
    ld [hl+], a                                   ; $624c: $22
    cpl                                           ; $624d: $2f
    dec b                                         ; $624e: $05
    ld b, e                                       ; $624f: $43
    cpl                                           ; $6250: $2f
    dec b                                         ; $6251: $05
    ld [hl], l                                    ; $6252: $75
    cpl                                           ; $6253: $2f
    dec b                                         ; $6254: $05
    add [hl]                                      ; $6255: $86
    cpl                                           ; $6256: $2f
    dec b                                         ; $6257: $05
    ret nz                                        ; $6258: $c0

    cpl                                           ; $6259: $2f
    dec b                                         ; $625a: $05
    rst $08                                       ; $625b: $cf
    cpl                                           ; $625c: $2f
    dec b                                         ; $625d: $05
    db $db                                        ; $625e: $db
    cpl                                           ; $625f: $2f
    dec b                                         ; $6260: $05
    db $ed                                        ; $6261: $ed
    cpl                                           ; $6262: $2f
    dec b                                         ; $6263: $05
    ei                                            ; $6264: $fb
    cpl                                           ; $6265: $2f
    dec b                                         ; $6266: $05
    ld [$0530], sp                                ; $6267: $08 $30 $05
    ld a, [hl-]                                   ; $626a: $3a
    jr nc, @+$07                                  ; $626b: $30 $05

    ld l, h                                       ; $626d: $6c
    jr nc, @+$07                                  ; $626e: $30 $05

    ret nc                                        ; $6270: $d0

    jr nc, @+$07                                  ; $6271: $30 $05

    db $e4                                        ; $6273: $e4
    jr nc, @+$07                                  ; $6274: $30 $05

    ld a, [c]                                     ; $6276: $f2
    jr nc, @+$07                                  ; $6277: $30 $05

    rla                                           ; $6279: $17
    ld sp, $2005                                  ; $627a: $31 $05 $20
    ld sp, $2c05                                  ; $627d: $31 $05 $2c
    ld sp, $3505                                  ; $6280: $31 $05 $35
    ld sp, $4605                                  ; $6283: $31 $05 $46
    ld sp, $5705                                  ; $6286: $31 $05 $57
    ld sp, $6305                                  ; $6289: $31 $05 $63
    ld sp, $6905                                  ; $628c: $31 $05 $69
    ld sp, $7105                                  ; $628f: $31 $05 $71
    ld sp, $7a05                                  ; $6292: $31 $05 $7a
    ld sp, $8005                                  ; $6295: $31 $05 $80
    ld sp, $8105                                  ; $6298: $31 $05 $81
    ld sp, $8205                                  ; $629b: $31 $05 $82
    ld sp, $8305                                  ; $629e: $31 $05 $83
    ld sp, $8405                                  ; $62a1: $31 $05 $84
    ld sp, $8505                                  ; $62a4: $31 $05 $85
    ld sp, $8605                                  ; $62a7: $31 $05 $86
    ld sp, $8705                                  ; $62aa: $31 $05 $87
    ld sp, $8805                                  ; $62ad: $31 $05 $88
    ld sp, $8905                                  ; $62b0: $31 $05 $89
    ld sp, $8a05                                  ; $62b3: $31 $05 $8a
    ld sp, $8b05                                  ; $62b6: $31 $05 $8b
    ld sp, $8c05                                  ; $62b9: $31 $05 $8c
    ld sp, $8d05                                  ; $62bc: $31 $05 $8d
    ld sp, $8e05                                  ; $62bf: $31 $05 $8e
    ld sp, $8f05                                  ; $62c2: $31 $05 $8f
    ld sp, $9005                                  ; $62c5: $31 $05 $90
    ld sp, $9105                                  ; $62c8: $31 $05 $91
    ld sp, $9205                                  ; $62cb: $31 $05 $92
    ld sp, $9305                                  ; $62ce: $31 $05 $93
    ld sp, $9405                                  ; $62d1: $31 $05 $94
    ld sp, $9505                                  ; $62d4: $31 $05 $95
    ld sp, $9605                                  ; $62d7: $31 $05 $96
    ld sp, $9705                                  ; $62da: $31 $05 $97
    ld sp, $9805                                  ; $62dd: $31 $05 $98
    ld sp, $9905                                  ; $62e0: $31 $05 $99
    ld sp, $9a05                                  ; $62e3: $31 $05 $9a
    ld sp, $9b05                                  ; $62e6: $31 $05 $9b
    ld sp, $9c05                                  ; $62e9: $31 $05 $9c
    ld sp, $9d05                                  ; $62ec: $31 $05 $9d
    ld sp, $9e05                                  ; $62ef: $31 $05 $9e
    ld sp, $9f05                                  ; $62f2: $31 $05 $9f
    ld sp, $a005                                  ; $62f5: $31 $05 $a0
    ld sp, $a105                                  ; $62f8: $31 $05 $a1
    ld sp, $a205                                  ; $62fb: $31 $05 $a2
    ld sp, $a305                                  ; $62fe: $31 $05 $a3
    ld sp, $a405                                  ; $6301: $31 $05 $a4
    ld sp, $a505                                  ; $6304: $31 $05 $a5
    ld sp, $a605                                  ; $6307: $31 $05 $a6
    ld sp, $a705                                  ; $630a: $31 $05 $a7
    ld sp, $a805                                  ; $630d: $31 $05 $a8
    ld sp, $a905                                  ; $6310: $31 $05 $a9
    ld sp, $aa05                                  ; $6313: $31 $05 $aa
    ld sp, $b105                                  ; $6316: $31 $05 $b1
    ld sp, $bd05                                  ; $6319: $31 $05 $bd
    ld sp, $cc05                                  ; $631c: $31 $05 $cc
    ld sp, $d705                                  ; $631f: $31 $05 $d7
    ld sp, $e205                                  ; $6322: $31 $05 $e2
    ld sp, $ef05                                  ; $6325: $31 $05 $ef
    ld sp, $fc05                                  ; $6328: $31 $05 $fc
    ld sp, $fd05                                  ; $632b: $31 $05 $fd
    ld sp, $fe05                                  ; $632e: $31 $05 $fe
    ld sp, $ff05                                  ; $6331: $31 $05 $ff
    ld sp, $0005                                  ; $6334: $31 $05 $00
    ld [hl-], a                                   ; $6337: $32
    dec b                                         ; $6338: $05
    ld bc, $0532                                  ; $6339: $01 $32 $05
    ld [bc], a                                    ; $633c: $02
    ld [hl-], a                                   ; $633d: $32
    dec b                                         ; $633e: $05
    inc bc                                        ; $633f: $03
    ld [hl-], a                                   ; $6340: $32
    dec b                                         ; $6341: $05
    inc b                                         ; $6342: $04
    ld [hl-], a                                   ; $6343: $32
    dec b                                         ; $6344: $05
    dec b                                         ; $6345: $05
    ld [hl-], a                                   ; $6346: $32
    dec b                                         ; $6347: $05
    ld b, $32                                     ; $6348: $06 $32
    dec b                                         ; $634a: $05
    rlca                                          ; $634b: $07
    ld [hl-], a                                   ; $634c: $32
    dec b                                         ; $634d: $05
    inc d                                         ; $634e: $14
    ld [hl-], a                                   ; $634f: $32
    dec b                                         ; $6350: $05
    dec d                                         ; $6351: $15
    ld [hl-], a                                   ; $6352: $32
    dec b                                         ; $6353: $05
    ld d, $32                                     ; $6354: $16 $32
    dec b                                         ; $6356: $05
    rla                                           ; $6357: $17
    ld [hl-], a                                   ; $6358: $32
    dec b                                         ; $6359: $05
    jr jr_03a_638e                                ; $635a: $18 $32

    dec b                                         ; $635c: $05
    add hl, de                                    ; $635d: $19
    ld [hl-], a                                   ; $635e: $32
    dec b                                         ; $635f: $05
    ld a, [de]                                    ; $6360: $1a
    ld [hl-], a                                   ; $6361: $32
    dec b                                         ; $6362: $05
    dec de                                        ; $6363: $1b
    ld [hl-], a                                   ; $6364: $32
    dec b                                         ; $6365: $05
    inc e                                         ; $6366: $1c
    ld [hl-], a                                   ; $6367: $32
    dec b                                         ; $6368: $05
    dec e                                         ; $6369: $1d
    ld [hl-], a                                   ; $636a: $32
    dec b                                         ; $636b: $05
    ld e, $32                                     ; $636c: $1e $32
    dec b                                         ; $636e: $05
    rra                                           ; $636f: $1f
    ld [hl-], a                                   ; $6370: $32
    dec b                                         ; $6371: $05
    jr nz, jr_03a_63a6                            ; $6372: $20 $32

    dec b                                         ; $6374: $05
    ld hl, $0532                                  ; $6375: $21 $32 $05
    ld [hl+], a                                   ; $6378: $22
    ld [hl-], a                                   ; $6379: $32
    dec b                                         ; $637a: $05
    inc hl                                        ; $637b: $23
    ld [hl-], a                                   ; $637c: $32
    dec b                                         ; $637d: $05
    inc h                                         ; $637e: $24
    ld [hl-], a                                   ; $637f: $32
    dec b                                         ; $6380: $05
    dec h                                         ; $6381: $25
    ld [hl-], a                                   ; $6382: $32
    dec b                                         ; $6383: $05
    ld h, $32                                     ; $6384: $26 $32
    dec b                                         ; $6386: $05
    daa                                           ; $6387: $27
    ld [hl-], a                                   ; $6388: $32
    dec b                                         ; $6389: $05
    jr z, jr_03a_63be                             ; $638a: $28 $32

    dec b                                         ; $638c: $05
    add hl, hl                                    ; $638d: $29

jr_03a_638e:
    ld [hl-], a                                   ; $638e: $32
    dec b                                         ; $638f: $05
    scf                                           ; $6390: $37
    ld [hl-], a                                   ; $6391: $32
    dec b                                         ; $6392: $05
    jr c, jr_03a_63c7                             ; $6393: $38 $32

    dec b                                         ; $6395: $05
    dec a                                         ; $6396: $3d
    ld [hl-], a                                   ; $6397: $32
    dec b                                         ; $6398: $05
    ld c, d                                       ; $6399: $4a
    ld [hl-], a                                   ; $639a: $32
    dec b                                         ; $639b: $05
    ld d, l                                       ; $639c: $55
    ld [hl-], a                                   ; $639d: $32
    dec b                                         ; $639e: $05
    ld h, c                                       ; $639f: $61
    ld [hl-], a                                   ; $63a0: $32
    dec b                                         ; $63a1: $05
    ld h, d                                       ; $63a2: $62
    ld [hl-], a                                   ; $63a3: $32
    dec b                                         ; $63a4: $05
    ld h, e                                       ; $63a5: $63

jr_03a_63a6:
    ld [hl-], a                                   ; $63a6: $32
    dec b                                         ; $63a7: $05
    ld h, h                                       ; $63a8: $64
    ld [hl-], a                                   ; $63a9: $32
    dec b                                         ; $63aa: $05
    ld h, l                                       ; $63ab: $65
    ld [hl-], a                                   ; $63ac: $32
    dec b                                         ; $63ad: $05
    ld h, [hl]                                    ; $63ae: $66
    ld [hl-], a                                   ; $63af: $32
    dec b                                         ; $63b0: $05
    ld h, a                                       ; $63b1: $67
    ld [hl-], a                                   ; $63b2: $32
    dec b                                         ; $63b3: $05
    ld l, b                                       ; $63b4: $68
    ld [hl-], a                                   ; $63b5: $32
    dec b                                         ; $63b6: $05
    ld l, c                                       ; $63b7: $69
    ld [hl-], a                                   ; $63b8: $32
    dec b                                         ; $63b9: $05
    ld l, d                                       ; $63ba: $6a
    ld [hl-], a                                   ; $63bb: $32
    dec b                                         ; $63bc: $05
    ld l, e                                       ; $63bd: $6b

jr_03a_63be:
    ld [hl-], a                                   ; $63be: $32
    dec b                                         ; $63bf: $05
    ld l, h                                       ; $63c0: $6c
    ld [hl-], a                                   ; $63c1: $32
    dec b                                         ; $63c2: $05
    ld l, l                                       ; $63c3: $6d
    ld [hl-], a                                   ; $63c4: $32
    dec b                                         ; $63c5: $05
    ld l, [hl]                                    ; $63c6: $6e

jr_03a_63c7:
    ld [hl-], a                                   ; $63c7: $32
    dec b                                         ; $63c8: $05
    ld l, a                                       ; $63c9: $6f
    ld [hl-], a                                   ; $63ca: $32
    dec b                                         ; $63cb: $05
    ld [hl], b                                    ; $63cc: $70
    ld [hl-], a                                   ; $63cd: $32
    dec b                                         ; $63ce: $05
    ld [hl], c                                    ; $63cf: $71
    ld [hl-], a                                   ; $63d0: $32
    dec b                                         ; $63d1: $05
    ld [hl], d                                    ; $63d2: $72
    ld [hl-], a                                   ; $63d3: $32
    dec b                                         ; $63d4: $05
    ld [hl], e                                    ; $63d5: $73
    ld [hl-], a                                   ; $63d6: $32
    dec b                                         ; $63d7: $05
    ld a, b                                       ; $63d8: $78
    ld [hl-], a                                   ; $63d9: $32
    dec b                                         ; $63da: $05
    ld a, c                                       ; $63db: $79
    ld [hl-], a                                   ; $63dc: $32
    dec b                                         ; $63dd: $05
    ld a, d                                       ; $63de: $7a
    ld [hl-], a                                   ; $63df: $32
    dec b                                         ; $63e0: $05
    ld a, e                                       ; $63e1: $7b
    ld [hl-], a                                   ; $63e2: $32
    dec b                                         ; $63e3: $05
    ld a, h                                       ; $63e4: $7c
    ld [hl-], a                                   ; $63e5: $32
    ld e, a                                       ; $63e6: $5f
    ld e, l                                       ; $63e7: $5d
    ld e, [hl]                                    ; $63e8: $5e
    add [hl]                                      ; $63e9: $86
    add a                                         ; $63ea: $87
    adc b                                         ; $63eb: $88
    adc c                                         ; $63ec: $89
    and e                                         ; $63ed: $a3
    and a                                         ; $63ee: $a7
    xor b                                         ; $63ef: $a8
    xor c                                         ; $63f0: $a9
    xor e                                         ; $63f1: $ab
    xor l                                         ; $63f2: $ad
    xor a                                         ; $63f3: $af
    or b                                          ; $63f4: $b0
    or c                                          ; $63f5: $b1
    or d                                          ; $63f6: $b2
    or e                                          ; $63f7: $b3
    or h                                          ; $63f8: $b4
    or l                                          ; $63f9: $b5
    or [hl]                                       ; $63fa: $b6
    or a                                          ; $63fb: $b7
    cp b                                          ; $63fc: $b8
    cp c                                          ; $63fd: $b9
    cp d                                          ; $63fe: $ba
    cp e                                          ; $63ff: $bb
    cp h                                          ; $6400: $bc
    cp l                                          ; $6401: $bd
    cp [hl]                                       ; $6402: $be
    ret nz                                        ; $6403: $c0

    jp nz, $c6c4                                  ; $6404: $c2 $c4 $c6

    rst $00                                       ; $6407: $c7
    ret                                           ; $6408: $c9


    jp z, $cccb                                   ; $6409: $ca $cb $cc

    rst $08                                       ; $640c: $cf
    pop de                                        ; $640d: $d1
    jp nc, $d5d4                                  ; $640e: $d2 $d4 $d5

    sub $d7                                       ; $6411: $d6 $d7
    ret c                                         ; $6413: $d8

    reti                                          ; $6414: $d9


    jp c, $dfdd                                   ; $6415: $da $dd $df

    ldh [$eb], a                                  ; $6418: $e0 $eb
    rst $30                                       ; $641a: $f7
    ld hl, sp-$02                                 ; $641b: $f8 $fe
    nop                                           ; $641d: $00
    add c                                         ; $641e: $81
    adc d                                         ; $641f: $8a
    adc e                                         ; $6420: $8b
    and c                                         ; $6421: $a1
    cp a                                          ; $6422: $bf
    pop bc                                        ; $6423: $c1
    jp $cecd                                      ; $6424: $c3 $cd $ce


    ld [$01fa], a                                 ; $6427: $ea $fa $01
    ld [bc], a                                    ; $642a: $02
    inc bc                                        ; $642b: $03
    inc b                                         ; $642c: $04
    dec b                                         ; $642d: $05
    ld b, $07                                     ; $642e: $06 $07
    ld [$0a09], sp                                ; $6430: $08 $09 $0a
    dec bc                                        ; $6433: $0b
    inc c                                         ; $6434: $0c
    dec c                                         ; $6435: $0d
    ld c, $0f                                     ; $6436: $0e $0f
    db $10                                        ; $6438: $10
    ld de, $1312                                  ; $6439: $11 $12 $13
    inc d                                         ; $643c: $14
    dec d                                         ; $643d: $15
    ld d, $17                                     ; $643e: $16 $17
    jr jr_03a_645b                                ; $6440: $18 $19

    ld a, [de]                                    ; $6442: $1a
    add d                                         ; $6443: $82
    add l                                         ; $6444: $85
    push bc                                       ; $6445: $c5
    ret z                                         ; $6446: $c8

    ret nc                                        ; $6447: $d0

    db $d3                                        ; $6448: $d3
    dec de                                        ; $6449: $1b
    and $fb                                       ; $644a: $e6 $fb
    inc e                                         ; $644c: $1c

jr_03a_644d:
    dec e                                         ; $644d: $1d
    ld e, $1f                                     ; $644e: $1e $1f
    jr nz, jr_03a_6473                            ; $6450: $20 $21

    ld [hl+], a                                   ; $6452: $22
    inc hl                                        ; $6453: $23
    inc h                                         ; $6454: $24
    dec h                                         ; $6455: $25
    ld h, $27                                     ; $6456: $26 $27
    jr z, jr_03a_6483                             ; $6458: $28 $29

    ld a, [hl+]                                   ; $645a: $2a

jr_03a_645b:
    dec hl                                        ; $645b: $2b
    inc l                                         ; $645c: $2c
    dec l                                         ; $645d: $2d
    xor h                                         ; $645e: $ac
    pop af                                        ; $645f: $f1
    ld sp, hl                                     ; $6460: $f9
    ld l, $2f                                     ; $6461: $2e $2f
    jr nc, jr_03a_644d                            ; $6463: $30 $e8

    or $31                                        ; $6465: $f6 $31
    ld [c], a                                     ; $6467: $e2
    ld [hl-], a                                   ; $6468: $32
    inc sp                                        ; $6469: $33
    inc [hl]                                      ; $646a: $34
    dec [hl]                                      ; $646b: $35
    ld [hl], $37                                  ; $646c: $36 $37
    jr c, @+$3b                                   ; $646e: $38 $39

    ld a, [hl-]                                   ; $6470: $3a
    rst $20                                       ; $6471: $e7
    dec sp                                        ; $6472: $3b

jr_03a_6473:
    inc a                                         ; $6473: $3c
    dec a                                         ; $6474: $3d
    ld a, $f0                                     ; $6475: $3e $f0
    ccf                                           ; $6477: $3f
    db $ed                                        ; $6478: $ed
    ld b, b                                       ; $6479: $40
    ld b, c                                       ; $647a: $41
    ld b, d                                       ; $647b: $42
    ld b, e                                       ; $647c: $43
    ld b, h                                       ; $647d: $44
    xor [hl]                                      ; $647e: $ae
    rst $38                                       ; $647f: $ff
    ld b, l                                       ; $6480: $45
    db $e3                                        ; $6481: $e3
    ld b, [hl]                                    ; $6482: $46

jr_03a_6483:
    push af                                       ; $6483: $f5
    db $e4                                        ; $6484: $e4
    ld b, a                                       ; $6485: $47
    db $f4                                        ; $6486: $f4
    db $ec                                        ; $6487: $ec
    ld c, b                                       ; $6488: $48
    jp hl                                         ; $6489: $e9


    ld c, c                                       ; $648a: $49
    ld c, d                                       ; $648b: $4a
    ld c, e                                       ; $648c: $4b
    ld c, h                                       ; $648d: $4c
    xor $f2                                       ; $648e: $ee $f2
    di                                            ; $6490: $f3
    ld c, l                                       ; $6491: $4d
    ld c, [hl]                                    ; $6492: $4e
    ld c, a                                       ; $6493: $4f
    rst $28                                       ; $6494: $ef
    ld d, b                                       ; $6495: $50
    ld d, c                                       ; $6496: $51
    ld d, d                                       ; $6497: $52
    pop hl                                        ; $6498: $e1
    ld d, e                                       ; $6499: $53
    push hl                                       ; $649a: $e5
    ld d, h                                       ; $649b: $54
    ld d, l                                       ; $649c: $55
    ld d, [hl]                                    ; $649d: $56
    ld d, a                                       ; $649e: $57
    and b                                         ; $649f: $a0
    ld e, b                                       ; $64a0: $58
    ld e, c                                       ; $64a1: $59
    ld e, d                                       ; $64a2: $5a
    ld e, e                                       ; $64a3: $5b
    ld e, h                                       ; $64a4: $5c
    ld b, a                                       ; $64a5: $47
    sbc a                                         ; $64a6: $9f
    ld a, h                                       ; $64a7: $7c
    call nc, Call_000_27b1                        ; $64a8: $d4 $b1 $27
    rra                                           ; $64ab: $1f
    ld [hl], l                                    ; $64ac: $75
    db $ec                                        ; $64ad: $ec
    pop de                                        ; $64ae: $d1
    ld b, a                                       ; $64af: $47
    rra                                           ; $64b0: $1f
    inc bc                                        ; $64b1: $03
    nop                                           ; $64b2: $00
    add c                                         ; $64b3: $81
    pop hl                                        ; $64b4: $e1
    ld h, e                                       ; $64b5: $63
    db $d3                                        ; $64b6: $d3
    ldh [$8e], a                                  ; $64b7: $e0 $8e
    sbc h                                         ; $64b9: $9c
    sbc l                                         ; $64ba: $9d
    add [hl]                                      ; $64bb: $86
    ld a, a                                       ; $64bc: $7f
    ld [hl], b                                    ; $64bd: $70
    ld d, $00                                     ; $64be: $16 $00
    rla                                           ; $64c0: $17
    ld a, l                                       ; $64c1: $7d
    and h                                         ; $64c2: $a4
    add $5d                                       ; $64c3: $c6 $5d
    ld b, [hl]                                    ; $64c5: $46
    ld e, b                                       ; $64c6: $58
    ld [hl], c                                    ; $64c7: $71
    sub a                                         ; $64c8: $97
    add a                                         ; $64c9: $87
    cp $23                                        ; $64ca: $fe $23
    ld c, a                                       ; $64cc: $4f
    db $dd                                        ; $64cd: $dd
    pop de                                        ; $64ce: $d1
    daa                                           ; $64cf: $27
    rra                                           ; $64d0: $1f
    ld [hl], l                                    ; $64d1: $75
    db $ec                                        ; $64d2: $ec
    ld c, c                                       ; $64d3: $49
    ld b, a                                       ; $64d4: $47
    dec e                                         ; $64d5: $1d
    ld a, e                                       ; $64d6: $7b
    db $f4                                        ; $64d7: $f4
    pop de                                        ; $64d8: $d1
    rst $00                                       ; $64d9: $c7
    nop                                           ; $64da: $00
    or $34                                        ; $64db: $f6 $34
    pop bc                                        ; $64dd: $c1
    sub $3f                                       ; $64de: $d6 $3f
    ld bc, $25bd                                  ; $64e0: $01 $bd $25
    db $eb                                        ; $64e3: $eb
    inc b                                         ; $64e4: $04
    rla                                           ; $64e5: $17
    ld [hl], a                                    ; $64e6: $77
    ld a, [$2631]                                 ; $64e7: $fa $31 $26
    nop                                           ; $64ea: $00
    or $ae                                        ; $64eb: $f6 $ae
    add hl, bc                                    ; $64ed: $09
    nop                                           ; $64ee: $00
    ld bc, $9e97                                  ; $64ef: $01 $97 $9e
    cp d                                          ; $64f2: $ba
    or e                                          ; $64f3: $b3
    adc [hl]                                      ; $64f4: $8e
    add hl, sp                                    ; $64f5: $39
    ld [$63ac], a                                 ; $64f6: $ea $ac $63
    rlca                                          ; $64f9: $07
    nop                                           ; $64fa: $00
    ld bc, $4e7d                                  ; $64fb: $01 $7d $4e
    db $dd                                        ; $64fe: $dd
    ld e, c                                       ; $64ff: $59
    rst $00                                       ; $6500: $c7
    inc e                                         ; $6501: $1c
    ld [hl], l                                    ; $6502: $75
    sub $b1                                       ; $6503: $d6 $b1
    inc bc                                        ; $6505: $03
    rst $20                                       ; $6506: $e7
    sub [hl]                                      ; $6507: $96
    ld d, $12                                     ; $6508: $16 $12
    ld a, l                                       ; $650a: $7d
    xor $72                                       ; $650b: $ee $72
    ld c, h                                       ; $650d: $4c
    nop                                           ; $650e: $00
    rst $20                                       ; $650f: $e7
    sub [hl]                                      ; $6510: $96
    ld d, $12                                     ; $6511: $16 $12
    ld a, l                                       ; $6513: $7d
    xor $1c                                       ; $6514: $ee $1c
    sub a                                         ; $6516: $97
    nop                                           ; $6517: $00
    rst $20                                       ; $6518: $e7
    sub [hl]                                      ; $6519: $96
    ld d, $12                                     ; $651a: $16 $12
    ld a, l                                       ; $651c: $7d
    xor $32                                       ; $651d: $ee $32
    ld l, c                                       ; $651f: $69
    rrca                                          ; $6520: $0f
    nop                                           ; $6521: $00
    ld d, a                                       ; $6522: $57
    ld d, b                                       ; $6523: $50
    ld [$4a56], a                                 ; $6524: $ea $56 $4a
    ld c, e                                       ; $6527: $4b
    and a                                         ; $6528: $a7
    cp e                                          ; $6529: $bb
    inc e                                         ; $652a: $1c
    inc de                                        ; $652b: $13
    nop                                           ; $652c: $00
    ld d, a                                       ; $652d: $57
    ld d, b                                       ; $652e: $50
    ld [$4a56], a                                 ; $652f: $ea $56 $4a
    ld c, e                                       ; $6532: $4b
    and a                                         ; $6533: $a7
    dec sp                                        ; $6534: $3b
    rst $00                                       ; $6535: $c7
    dec h                                         ; $6536: $25
    nop                                           ; $6537: $00
    ld d, a                                       ; $6538: $57
    ld d, b                                       ; $6539: $50
    ld [$4a56], a                                 ; $653a: $ea $56 $4a
    ld c, e                                       ; $653d: $4b
    and a                                         ; $653e: $a7
    cp e                                          ; $653f: $bb
    ld c, h                                       ; $6540: $4c
    jp c, Jump_03a_5703                           ; $6541: $da $03 $57

    ld d, b                                       ; $6544: $50
    ld a, h                                       ; $6545: $7c
    xor e                                         ; $6546: $ab
    ld e, e                                       ; $6547: $5b
    add hl, hl                                    ; $6548: $29
    dec l                                         ; $6549: $2d
    sbc l                                         ; $654a: $9d
    xor $72                                       ; $654b: $ee $72
    ld c, h                                       ; $654d: $4c
    nop                                           ; $654e: $00
    ld d, a                                       ; $654f: $57
    ld d, b                                       ; $6550: $50
    ld a, h                                       ; $6551: $7c
    xor e                                         ; $6552: $ab
    ld e, e                                       ; $6553: $5b
    add hl, hl                                    ; $6554: $29
    dec l                                         ; $6555: $2d
    sbc l                                         ; $6556: $9d
    xor $1c                                       ; $6557: $ee $1c
    sub a                                         ; $6559: $97
    nop                                           ; $655a: $00
    ld d, a                                       ; $655b: $57
    ld d, b                                       ; $655c: $50
    ld a, h                                       ; $655d: $7c
    xor e                                         ; $655e: $ab
    ld e, e                                       ; $655f: $5b
    add hl, hl                                    ; $6560: $29
    dec l                                         ; $6561: $2d
    sbc l                                         ; $6562: $9d
    xor $32                                       ; $6563: $ee $32
    ld l, c                                       ; $6565: $69
    rrca                                          ; $6566: $0f
    nop                                           ; $6567: $00
    rst $20                                       ; $6568: $e7
    and e                                         ; $6569: $a3
    ld hl, $96fa                                  ; $656a: $21 $fa $96
    cp e                                          ; $656d: $bb
    inc e                                         ; $656e: $1c
    inc de                                        ; $656f: $13
    nop                                           ; $6570: $00
    rst $20                                       ; $6571: $e7
    and e                                         ; $6572: $a3
    ld hl, $96fa                                  ; $6573: $21 $fa $96
    dec sp                                        ; $6576: $3b
    rst $00                                       ; $6577: $c7
    dec h                                         ; $6578: $25
    nop                                           ; $6579: $00
    rst $20                                       ; $657a: $e7
    and e                                         ; $657b: $a3
    ld hl, $96fa                                  ; $657c: $21 $fa $96
    cp e                                          ; $657f: $bb
    ld c, h                                       ; $6580: $4c
    jp c, Jump_03a_5703                           ; $6581: $da $03 $57

    ld [hl], $84                                  ; $6584: $36 $84
    ld e, [hl]                                    ; $6586: $5e
    ld a, h                                       ; $6587: $7c
    ld [hl], e                                    ; $6588: $73
    push af                                       ; $6589: $f5
    ld l, $62                                     ; $658a: $2e $62
    and l                                         ; $658c: $a5
    and l                                         ; $658d: $a5
    ld a, $00                                     ; $658e: $3e $00
    rla                                           ; $6590: $17
    and l                                         ; $6591: $a5
    ret                                           ; $6592: $c9


    ld a, [hl-]                                   ; $6593: $3a
    ld h, e                                       ; $6594: $63
    jp z, Jump_03a_6cae                           ; $6595: $ca $ae $6c

    sbc l                                         ; $6598: $9d
    ld c, [hl]                                    ; $6599: $4e
    or c                                          ; $659a: $b1
    ld [bc], a                                    ; $659b: $02
    rla                                           ; $659c: $17
    and l                                         ; $659d: $a5
    ret                                           ; $659e: $c9


    ld a, [hl-]                                   ; $659f: $3a
    ld h, e                                       ; $65a0: $63
    jp z, $a4fa                                   ; $65a1: $ca $fa $a4

    call nz, Call_000_00a6                        ; $65a4: $c4 $a6 $00
    ld bc, $d28c                                  ; $65a7: $01 $8c $d2
    xor d                                         ; $65aa: $aa
    sbc e                                         ; $65ab: $9b
    ld [hl], c                                    ; $65ac: $71
    cp d                                          ; $65ad: $ba
    swap d                                        ; $65ae: $cb $32
    ld a, [hl]                                    ; $65b0: $7e
    ld [hl], c                                    ; $65b1: $71
    ld a, [bc]                                    ; $65b2: $0a
    nop                                           ; $65b3: $00
    ld a, l                                       ; $65b4: $7d
    sbc h                                         ; $65b5: $9c
    ld [hl], c                                    ; $65b6: $71
    cp d                                          ; $65b7: $ba
    ld e, [hl]                                    ; $65b8: $5e
    ld a, [hl]                                    ; $65b9: $7e
    ld a, l                                       ; $65ba: $7d
    rst $18                                       ; $65bb: $df
    add hl, hl                                    ; $65bc: $29
    cp a                                          ; $65bd: $bf
    ld b, $dd                                     ; $65be: $06 $dd
    ld a, d                                       ; $65c0: $7a
    dec e                                         ; $65c1: $1d
    add b                                         ; $65c2: $80
    jp $f05c                                      ; $65c3: $c3 $5c $f0


    ld [hl], l                                    ; $65c6: $75
    rra                                           ; $65c7: $1f
    ld a, [bc]                                    ; $65c8: $0a
    pop de                                        ; $65c9: $d1
    scf                                           ; $65ca: $37
    sbc a                                         ; $65cb: $9f
    jp $d086                                      ; $65cc: $c3 $86 $d0


    ld bc, $20b8                                  ; $65cf: $01 $b8 $20
    ld c, l                                       ; $65d2: $4d
    or b                                          ; $65d3: $b0
    push af                                       ; $65d4: $f5
    rst $08                                       ; $65d5: $cf
    ld e, $00                                     ; $65d6: $1e $00
    db $dd                                        ; $65d8: $dd
    ld a, [$62e6]                                 ; $65d9: $fa $e6 $62
    inc hl                                        ; $65dc: $23
    ld d, d                                       ; $65dd: $52
    and a                                         ; $65de: $a7
    xor [hl]                                      ; $65df: $ae
    cp d                                          ; $65e0: $ba
    sbc c                                         ; $65e1: $99
    ld b, [hl]                                    ; $65e2: $46
    adc h                                         ; $65e3: $8c
    call nc, Call_000_3805                        ; $65e4: $d4 $05 $38
    adc h                                         ; $65e7: $8c
    xor c                                         ; $65e8: $a9
    di                                            ; $65e9: $f3
    sbc h                                         ; $65ea: $9c
    dec a                                         ; $65eb: $3d
    ld c, l                                       ; $65ec: $4d
    or b                                          ; $65ed: $b0
    push af                                       ; $65ee: $f5
    rst $08                                       ; $65ef: $cf
    add l                                         ; $65f0: $85
    cpl                                           ; $65f1: $2f
    cp a                                          ; $65f2: $bf
    ld a, [c]                                     ; $65f3: $f2
    ret c                                         ; $65f4: $d8

    rst $38                                       ; $65f5: $ff
    ld h, l                                       ; $65f6: $65
    call nc, Call_000_05c8                        ; $65f7: $d4 $c8 $05
    ld l, c                                       ; $65fa: $69
    add d                                         ; $65fb: $82
    xor l                                         ; $65fc: $ad
    ld a, a                                       ; $65fd: $7f
    or $00                                        ; $65fe: $f6 $00
    ld a, l                                       ; $6600: $7d
    ld [hl], e                                    ; $6601: $73
    and c                                         ; $6602: $a1
    and e                                         ; $6603: $a3
    and a                                         ; $6604: $a7
    adc [hl]                                      ; $6605: $8e
    ld l, d                                       ; $6606: $6a
    ld a, $7c                                     ; $6607: $3e $7c
    cp c                                          ; $6609: $b9
    ld bc, $3767                                  ; $660a: $01 $67 $37
    ld h, d                                       ; $660d: $62
    add l                                         ; $660e: $85
    ret c                                         ; $660f: $d8

    ld a, h                                       ; $6610: $7c
    xor $cb                                       ; $6611: $ee $cb
    ld a, d                                       ; $6613: $7a
    ld a, a                                       ; $6614: $7f
    add hl, hl                                    ; $6615: $29
    db $ec                                        ; $6616: $ec
    ld h, a                                       ; $6617: $67
    adc e                                         ; $6618: $8b
    dec sp                                        ; $6619: $3b
    and a                                         ; $661a: $a7
    dec a                                         ; $661b: $3d
    sub h                                         ; $661c: $94
    ld [$fd9f], sp                                ; $661d: $08 $9f $fd
    adc e                                         ; $6620: $8b
    ld e, b                                       ; $6621: $58
    ld l, a                                       ; $6622: $6f
    nop                                           ; $6623: $00
    db $dd                                        ; $6624: $dd
    ld a, [$343a]                                 ; $6625: $fa $3a $34
    cp a                                          ; $6628: $bf
    ldh [rPCM34], a                               ; $6629: $e0 $77
    ld l, h                                       ; $662b: $6c
    ld a, [hl]                                    ; $662c: $7e
    sub l                                         ; $662d: $95
    and [hl]                                      ; $662e: $a6
    ld sp, $70e7                                  ; $662f: $31 $e7 $70
    jp c, $cb62                                   ; $6632: $da $62 $cb

    cp l                                          ; $6635: $bd
    jp c, Jump_000_00f4                           ; $6636: $da $f4 $00

    halt                                          ; $6639: $76
    sbc d                                         ; $663a: $9a
    and e                                         ; $663b: $a3
    ld l, $4c                                     ; $663c: $2e $4c
    or c                                          ; $663e: $b1
    jr c, jr_03a_664f                             ; $663f: $38 $0e

    ld [hl], e                                    ; $6641: $73
    pop bc                                        ; $6642: $c1
    or a                                          ; $6643: $b7
    ld c, $1b                                     ; $6644: $0e $1b
    ld b, d                                       ; $6646: $42
    ld c, $73                                     ; $6647: $0e $73
    ld h, $eb                                     ; $6649: $26 $eb
    ld e, h                                       ; $664b: $5c
    ld d, l                                       ; $664c: $55
    adc l                                         ; $664d: $8d
    cp h                                          ; $664e: $bc

jr_03a_664f:
    ld h, a                                       ; $664f: $67
    and a                                         ; $6650: $a7
    dec hl                                        ; $6651: $2b
    cp a                                          ; $6652: $bf
    rr d                                          ; $6653: $cb $1a
    pop de                                        ; $6655: $d1
    rst $38                                       ; $6656: $ff
    ld a, [$4174]                                 ; $6657: $fa $74 $41
    call $3cfc                                    ; $665a: $cd $fc $3c
    ld [hl], a                                    ; $665d: $77
    ld [hl], c                                    ; $665e: $71
    add hl, hl                                    ; $665f: $29
    xor l                                         ; $6660: $ad
    ld a, [c]                                     ; $6661: $f2
    add sp, $29                                   ; $6662: $e8 $29
    ldh a, [$99]                                  ; $6664: $f0 $99
    xor h                                         ; $6666: $ac
    ld [hl], e                                    ; $6667: $73
    cp [hl]                                       ; $6668: $be
    add hl, de                                    ; $6669: $19
    adc [hl]                                      ; $666a: $8e
    ld h, l                                       ; $666b: $65
    add l                                         ; $666c: $85
    ld d, c                                       ; $666d: $51
    jr z, jr_03a_66e9                             ; $666e: $28 $79

    rst $08                                       ; $6670: $cf
    ld c, $a3                                     ; $6671: $0e $a3
    cp h                                          ; $6673: $bc
    ld d, h                                       ; $6674: $54
    ld e, l                                       ; $6675: $5d
    ld hl, sp-$0e                                 ; $6676: $f8 $f2
    db $eb                                        ; $6678: $eb
    jr c, jr_03a_66b0                             ; $6679: $38 $35

    cpl                                           ; $667b: $2f
    sub c                                         ; $667c: $91
    ld [hl], e                                    ; $667d: $73
    ld hl, sp-$55                                 ; $667e: $f8 $ab
    cp h                                          ; $6680: $bc
    or h                                          ; $6681: $b4
    ld hl, sp-$09                                 ; $6682: $f8 $f7
    ld [bc], a                                    ; $6684: $02
    inc e                                         ; $6685: $1c
    dec a                                         ; $6686: $3d
    ld [hl], l                                    ; $6687: $75
    inc [hl]                                      ; $6688: $34
    pop bc                                        ; $6689: $c1
    sub a                                         ; $668a: $97
    add hl, sp                                    ; $668b: $39
    ld e, h                                       ; $668c: $5c
    and l                                         ; $668d: $a5
    ld l, c                                       ; $668e: $69
    db $fc                                        ; $668f: $fc
    cp $39                                        ; $6690: $fe $39
    ld l, l                                       ; $6692: $6d
    or e                                          ; $6693: $b3
    cp b                                          ; $6694: $b8
    ld b, [hl]                                    ; $6695: $46
    and c                                         ; $6696: $a1
    jp nz, Jump_000_18f7                          ; $6697: $c2 $f7 $18

    xor c                                         ; $669a: $a9

Call_03a_669b:
    di                                            ; $669b: $f3

Call_03a_669c:
    inc e                                         ; $669c: $1c
    ld sp, $cbca                                  ; $669d: $31 $ca $cb
    dec c                                         ; $66a0: $0d
    nop                                           ; $66a1: $00
    or $59                                        ; $66a2: $f6 $59
    ld e, $3e                                     ; $66a4: $1e $3e
    ei                                            ; $66a6: $fb
    rla                                           ; $66a7: $17
    or c                                          ; $66a8: $b1
    sbc $b3                                       ; $66a9: $de $b3
    db $d3                                        ; $66ab: $d3
    ret z                                         ; $66ac: $c8

    ld d, c                                       ; $66ad: $51
    rst $00                                       ; $66ae: $c7
    or d                                          ; $66af: $b2

jr_03a_66b0:
    ld b, b                                       ; $66b0: $40
    cp c                                          ; $66b1: $b9
    ld [hl], a                                    ; $66b2: $77
    ld [hl], c                                    ; $66b3: $71
    add hl, hl                                    ; $66b4: $29
    xor l                                         ; $66b5: $ad
    ld a, [c]                                     ; $66b6: $f2
    add sp, $29                                   ; $66b7: $e8 $29
    rst $30                                       ; $66b9: $f7
    ld l, $e3                                     ; $66ba: $2e $e3
    ld c, h                                       ; $66bc: $4c
    and d                                         ; $66bd: $a2
    ld [de], a                                    ; $66be: $12
    ld [hl], d                                    ; $66bf: $72
    ld c, l                                       ; $66c0: $4d
    cp d                                          ; $66c1: $ba
    and $f0                                       ; $66c2: $e6 $f0
    rst $10                                       ; $66c4: $d7
    ld [hl], c                                    ; $66c5: $71
    call nz, $e55f                                ; $66c6: $c4 $5f $e5
    and l                                         ; $66c9: $a5
    push bc                                       ; $66ca: $c5
    cp a                                          ; $66cb: $bf
    ld [hl], a                                    ; $66cc: $77
    add hl, hl                                    ; $66cd: $29
    rrca                                          ; $66ce: $0f
    ld b, b                                       ; $66cf: $40
    ld b, [hl]                                    ; $66d0: $46
    adc $24                                       ; $66d1: $ce $24
    sub $0d                                       ; $66d3: $d6 $0d
    jp z, Jump_03a_5dd5                           ; $66d5: $ca $d5 $5d

    cp d                                          ; $66d8: $ba
    ld hl, sp-$1e                                 ; $66d9: $f8 $e2
    add hl, sp                                    ; $66db: $39
    ld [c], a                                     ; $66dc: $e2
    ld e, b                                       ; $66dd: $58
    sub $79                                       ; $66de: $d6 $79
    inc [hl]                                      ; $66e0: $34
    add hl, sp                                    ; $66e1: $39
    rst $08                                       ; $66e2: $cf
    sbc l                                         ; $66e3: $9d
    daa                                           ; $66e4: $27
    dec c                                         ; $66e5: $0d
    and c                                         ; $66e6: $a1
    adc h                                         ; $66e7: $8c
    ld d, c                                       ; $66e8: $51

jr_03a_66e9:
    ld l, a                                       ; $66e9: $6f
    nop                                           ; $66ea: $00
    or $6f                                        ; $66eb: $f6 $6f
    db $dd                                        ; $66ed: $dd
    rla                                           ; $66ee: $17
    jr z, jr_03a_66f8                             ; $66ef: $28 $07

    ret                                           ; $66f1: $c9


    ld [hl], a                                    ; $66f2: $77
    sbc $e7                                       ; $66f3: $de $e7
    adc b                                         ; $66f5: $88
    dec hl                                        ; $66f6: $2b
    cp a                                          ; $66f7: $bf

jr_03a_66f8:
    ret nc                                        ; $66f8: $d0

    ld d, c                                       ; $66f9: $51
    ld [c], a                                     ; $66fa: $e2
    rst $18                                       ; $66fb: $df
    rst $30                                       ; $66fc: $f7
    dec c                                         ; $66fd: $0d
    nop                                           ; $66fe: $00
    add a                                         ; $66ff: $87
    ld [de], a                                    ; $6700: $12
    and e                                         ; $6701: $a3
    inc a                                         ; $6702: $3c
    ld a, h                                       ; $6703: $7c
    sbc [hl]                                      ; $6704: $9e
    ld l, d                                       ; $6705: $6a
    ld [de], a                                    ; $6706: $12
    db $d3                                        ; $6707: $d3
    inc [hl]                                      ; $6708: $34
    sbc a                                         ; $6709: $9f
    ldh a, [$85]                                  ; $670a: $f0 $85
    sub h                                         ; $670c: $94
    ld e, h                                       ; $670d: $5c
    inc h                                         ; $670e: $24
    adc $b8                                       ; $670f: $ce $b8
    and $df                                       ; $6711: $e6 $df
    daa                                           ; $6713: $27
    nop                                           ; $6714: $00
    ld h, $71                                     ; $6715: $26 $71
    dec h                                         ; $6717: $25
    ld h, a                                       ; $6718: $67
    ld [hl], c                                    ; $6719: $71
    ld e, h                                       ; $671a: $5c
    pop hl                                        ; $671b: $e1
    xor b                                         ; $671c: $a8
    ld hl, $f7e5                                  ; $671d: $21 $e5 $f7
    ld h, l                                       ; $6720: $65
    ld hl, $fbcd                                  ; $6721: $21 $cd $fb
    sbc h                                         ; $6724: $9c
    rst $20                                       ; $6725: $e7
    jp z, $a4cf                                   ; $6726: $ca $cf $a4

    ld l, a                                       ; $6729: $6f
    and [hl]                                      ; $672a: $a6
    dec a                                         ; $672b: $3d
    inc e                                         ; $672c: $1c
    nop                                           ; $672d: $00
    ld h, c                                       ; $672e: $61
    adc d                                         ; $672f: $8a
    push bc                                       ; $6730: $c5
    ld [hl], c                                    ; $6731: $71
    ld l, a                                       ; $6732: $6f
    ld [hl], c                                    ; $6733: $71
    inc l                                         ; $6734: $2c
    dec h                                         ; $6735: $25
    ld [hl], l                                    ; $6736: $75
    ld d, $c7                                     ; $6737: $16 $c7
    sbc c                                         ; $6739: $99
    add h                                         ; $673a: $84
    adc b                                         ; $673b: $88
    ldh a, [$85]                                  ; $673c: $f0 $85
    sub h                                         ; $673e: $94
    inc e                                         ; $673f: $1c
    and $94                                       ; $6740: $e6 $94
    dec hl                                        ; $6742: $2b
    cp c                                          ; $6743: $b9
    ldh [$e3], a                                  ; $6744: $e0 $e3
    and b                                         ; $6746: $a0
    rst $00                                       ; $6747: $c7
    rst $30                                       ; $6748: $f7
    add hl, bc                                    ; $6749: $09
    nop                                           ; $674a: $00
    sbc [hl]                                      ; $674b: $9e
    dec e                                         ; $674c: $1d
    ld c, d                                       ; $674d: $4a
    rla                                           ; $674e: $17
    ld l, $7c                                     ; $674f: $2e $7c
    add sp, $65                                   ; $6751: $e8 $65
    call nz, $af99                                ; $6753: $c4 $99 $af
    dec sp                                        ; $6756: $3b
    dec l                                         ; $6757: $2d
    ld d, a                                       ; $6758: $57

Jump_03a_6759:
    dec sp                                        ; $6759: $3b
    inc de                                        ; $675a: $13
    call z, Call_03a_5dd5                         ; $675b: $cc $d5 $5d
    ld a, d                                       ; $675e: $7a
    rra                                           ; $675f: $1f
    ld a, [bc]                                    ; $6760: $0a
    nop                                           ; $6761: $00
    ld a, l                                       ; $6762: $7d
    ld [hl], e                                    ; $6763: $73
    and c                                         ; $6764: $a1
    and e                                         ; $6765: $a3
    and a                                         ; $6766: $a7
    xor $8d                                       ; $6767: $ee $8d
    and c                                         ; $6769: $a1
    and a                                         ; $676a: $a7
    db $ec                                        ; $676b: $ec
    ld d, a                                       ; $676c: $57
    ld a, [hl]                                    ; $676d: $7e
    and [hl]                                      ; $676e: $a6
    xor e                                         ; $676f: $ab
    ld a, [hl]                                    ; $6770: $7e
    ld a, c                                       ; $6771: $79
    ld hl, sp+$7e                                 ; $6772: $f8 $7e
    sbc b                                         ; $6774: $98
    ld d, e                                       ; $6775: $53
    jp z, $8e2c                                   ; $6776: $ca $2c $8e

    adc e                                         ; $6779: $8b
    ld b, h                                       ; $677a: $44
    add sp, $75                                   ; $677b: $e8 $75
    push hl                                       ; $677d: $e5
    ld d, a                                       ; $677e: $57
    jp z, $7857                                   ; $677f: $ca $57 $78

    inc bc                                        ; $6782: $03
    db $dd                                        ; $6783: $dd
    inc bc                                        ; $6784: $03
    push hl                                       ; $6785: $e5
    ld e, [hl]                                    ; $6786: $5e
    ld b, b                                       ; $6787: $40
    add $48                                       ; $6788: $c6 $48
    jp hl                                         ; $678a: $e9


    cp c                                          ; $678b: $b9
    adc e                                         ; $678c: $8b
    jr c, jr_03a_67f9                             ; $678d: $38 $6a

    ld c, b                                       ; $678f: $48
    ld a, c                                       ; $6790: $79
    call c, Call_03a_5597                         ; $6791: $dc $97 $55
    scf                                           ; $6794: $37
    db $fc                                        ; $6795: $fc
    ld [hl-], a                                   ; $6796: $32
    rst $08                                       ; $6797: $cf
    or d                                          ; $6798: $b2
    ldh a, [$b5]                                  ; $6799: $f0 $b5
    sub l                                         ; $679b: $95
    sub d                                         ; $679c: $92
    scf                                           ; $679d: $37
    nop                                           ; $679e: $00
    add c                                         ; $679f: $81
    ld l, l                                       ; $67a0: $6d
    dec e                                         ; $67a1: $1d
    and a                                         ; $67a2: $a7
    and $f7                                       ; $67a3: $e6 $f7
    ld h, l                                       ; $67a5: $65
    add c                                         ; $67a6: $81
    ld [hl], d                                    ; $67a7: $72
    rst $08                                       ; $67a8: $cf
    cp $21                                        ; $67a9: $fe $21
    ld l, c                                       ; $67ab: $69
    ld e, $3e                                     ; $67ac: $1e $3e
    ld l, d                                       ; $67ae: $6a
    db $ec                                        ; $67af: $ec
    sbc d                                         ; $67b0: $9a
    and c                                         ; $67b1: $a1
    sbc b                                         ; $67b2: $98
    sbc a                                         ; $67b3: $9f
    rst $20                                       ; $67b4: $e7
    jp z, Jump_03a_74cf                           ; $67b5: $ca $cf $74

    push de                                       ; $67b8: $d5
    cpl                                           ; $67b9: $2f
    xor a                                         ; $67ba: $af
    scf                                           ; $67bb: $37
    nop                                           ; $67bc: $00
    halt                                          ; $67bd: $76
    ld h, l                                       ; $67be: $65
    add c                                         ; $67bf: $81
    ld [hl], d                                    ; $67c0: $72
    rst $08                                       ; $67c1: $cf
    cp $21                                        ; $67c2: $fe $21
    ld l, c                                       ; $67c4: $69
    ld a, [hl]                                    ; $67c5: $7e
    add l                                         ; $67c6: $85
    and e                                         ; $67c7: $a3
    add [hl]                                      ; $67c8: $86
    sub h                                         ; $67c9: $94
    rst $18                                       ; $67ca: $df
    sub a                                         ; $67cb: $97
    ld h, l                                       ; $67cc: $65
    sub h                                         ; $67cd: $94
    ld e, h                                       ; $67ce: $5c
    ld a, c                                       ; $67cf: $79
    sbc a                                         ; $67d0: $9f
    di                                            ; $67d1: $f3
    inc l                                         ; $67d2: $2c
    and e                                         ; $67d3: $a3
    ld l, a                                       ; $67d4: $6f
    push de                                       ; $67d5: $d5
    call $bcb4                                    ; $67d6: $cd $b4 $bc
    ld bc, $6576                                  ; $67d9: $01 $76 $65
    add c                                         ; $67dc: $81
    ld [hl], d                                    ; $67dd: $72
    rst $08                                       ; $67de: $cf
    cp $21                                        ; $67df: $fe $21
    ld l, c                                       ; $67e1: $69
    ld a, [hl]                                    ; $67e2: $7e
    sub $b1                                       ; $67e3: $d6 $b1
    inc l                                         ; $67e5: $2c
    ld d, b                                       ; $67e6: $50
    xor $9d                                       ; $67e7: $ee $9d
    daa                                           ; $67e9: $27
    dec l                                         ; $67ea: $2d
    inc c                                         ; $67eb: $0c
    ld h, [hl]                                    ; $67ec: $66
    jp nz, $e158                                  ; $67ed: $c2 $58 $e1

    xor b                                         ; $67f0: $a8
    or c                                          ; $67f1: $b1
    dec bc                                        ; $67f2: $0b
    ld b, a                                       ; $67f3: $47
    dec c                                         ; $67f4: $0d
    add hl, hl                                    ; $67f5: $29
    adc a                                         ; $67f6: $8f
    ld a, $e7                                     ; $67f7: $3e $e7

jr_03a_67f9:
    xor c                                         ; $67f9: $a9
    sbc [hl]                                      ; $67fa: $9e
    dec bc                                        ; $67fb: $0b
    cp [hl]                                       ; $67fc: $be
    pop hl                                        ; $67fd: $e1
    inc e                                         ; $67fe: $1c
    ld c, [hl]                                    ; $67ff: $4e
    ld a, $e6                                     ; $6800: $3e $e6
    dec c                                         ; $6802: $0d
    nop                                           ; $6803: $00
    db $dd                                        ; $6804: $dd
    db $ec                                        ; $6805: $ec
    or e                                          ; $6806: $b3
    db $fc                                        ; $6807: $fc
    db $ec                                        ; $6808: $ec
    ld e, a                                       ; $6809: $5f
    call nz, $03da                                ; $680a: $c4 $da $03
    nop                                           ; $680d: $00
    ld h, a                                       ; $680e: $67
    dec sp                                        ; $680f: $3b
    ld h, d                                       ; $6810: $62
    ld [$cdbc], a                                 ; $6811: $ea $bc $cd
    dec hl                                        ; $6814: $2b
    ld a, h                                       ; $6815: $7c
    add c                                         ; $6816: $81

Jump_03a_6817:
    ld [hl], d                                    ; $6817: $72
    cpl                                           ; $6818: $2f
    jr nz, jr_03a_687e                            ; $6819: $20 $63

    and h                                         ; $681b: $a4
    call c, $c3eb                                 ; $681c: $dc $eb $c3
    sub l                                         ; $681f: $95
    ld a, [c]                                     ; $6820: $f2
    ld [hl], l                                    ; $6821: $75
    xor $3c                                       ; $6822: $ee $3c
    ld l, c                                       ; $6824: $69
    ld h, c                                       ; $6825: $61
    jr nc, jr_03a_683b                            ; $6826: $30 $13

    add $0d                                       ; $6828: $c6 $0d
    nop                                           ; $682a: $00
    ld a, l                                       ; $682b: $7d
    ld d, e                                       ; $682c: $53
    rlca                                          ; $682d: $07
    add hl, sp                                    ; $682e: $39
    adc l                                         ; $682f: $8d
    cpl                                           ; $6830: $2f
    ld [hl], $bf                                  ; $6831: $36 $bf
    ld a, [bc]                                    ; $6833: $0a
    ld h, l                                       ; $6834: $65
    push hl                                       ; $6835: $e5
    ld h, a                                       ; $6836: $67
    cp d                                          ; $6837: $ba
    ld [$9f97], a                                 ; $6838: $ea $97 $9f

jr_03a_683b:
    rst $20                                       ; $683b: $e7
    db $ec                                        ; $683c: $ec
    ld e, a                                       ; $683d: $5f
    call nz, $df0a                                ; $683e: $c4 $0a $df
    rlca                                          ; $6841: $07
    ld d, e                                       ; $6842: $53
    cp $06                                        ; $6843: $fe $06
    db $dd                                        ; $6845: $dd
    cpl                                           ; $6846: $2f
    ld l, e                                       ; $6847: $6b
    ld b, h                                       ; $6848: $44
    ld c, [hl]                                    ; $6849: $4e
    db $dd                                        ; $684a: $dd
    ld c, d                                       ; $684b: $4a
    ld sp, hl                                     ; $684c: $f9
    ld a, [bc]                                    ; $684d: $0a
    pop hl                                        ; $684e: $e1
    ld d, e                                       ; $684f: $53
    ld e, $9c                                     ; $6850: $1e $9c
    jp nc, Jump_000_0013                          ; $6852: $d2 $13 $00

    cp l                                          ; $6855: $bd
    inc l                                         ; $6856: $2c
    adc $66                                       ; $6857: $ce $66
    call nc, Call_03a_75d8                        ; $6859: $d4 $d8 $75
    rst $28                                       ; $685c: $ef
    ld [$afc5], a                                 ; $685d: $ea $c5 $af
    dec sp                                        ; $6860: $3b
    xor l                                         ; $6861: $ad
    ld a, [hl+]                                   ; $6862: $2a
    adc [hl]                                      ; $6863: $8e
    ld a, [de]                                    ; $6864: $1a
    cp e                                          ; $6865: $bb
    add $b2                                       ; $6866: $c6 $b2
    ld d, a                                       ; $6868: $57
    add a                                         ; $6869: $87
    ld sp, $b9e7                                  ; $686a: $31 $e7 $b9
    sub d                                         ; $686d: $92
    ld b, a                                       ; $686e: $47
    ld e, d                                       ; $686f: $5a
    inc e                                         ; $6870: $1c
    adc a                                         ; $6871: $8f
    ld [hl], h                                    ; $6872: $74
    ld a, [de]                                    ; $6873: $1a
    jp hl                                         ; $6874: $e9


    adc a                                         ; $6875: $8f
    call nc, Call_000_10ef                        ; $6876: $d4 $ef $10
    ld a, $cf                                     ; $6879: $3e $cf
    ld [hl-], a                                   ; $687b: $32
    adc e                                         ; $687c: $8b
    db $e3                                        ; $687d: $e3

jr_03a_687e:
    add d                                         ; $687e: $82
    rst $18                                       ; $687f: $df
    add hl, hl                                    ; $6880: $29
    ld e, a                                       ; $6881: $5f
    and a                                         ; $6882: $a7
    xor $31                                       ; $6883: $ee $31
    ld d, d                                       ; $6885: $52
    ld l, a                                       ; $6886: $6f
    nop                                           ; $6887: $00
    sub a                                         ; $6888: $97
    and l                                         ; $6889: $a5
    rst $08                                       ; $688a: $cf
    ld d, c                                       ; $688b: $51
    ld h, e                                       ; $688c: $63
    rst $10                                       ; $688d: $d7
    adc b                                         ; $688e: $88
    ld c, e                                       ; $688f: $4b
    pop af                                        ; $6890: $f1
    call nz, Call_000_017b                        ; $6891: $c4 $7b $01
    add hl, hl                                    ; $6894: $29
    xor e                                         ; $6895: $ab
    cp $4a                                        ; $6896: $fe $4a
    ld a, [bc]                                    ; $6898: $0a
    ld a, h                                       ; $6899: $7c
    ld l, d                                       ; $689a: $6a
    inc bc                                        ; $689b: $03
    dec a                                         ; $689c: $3d
    sub $bc                                       ; $689d: $d6 $bc
    ld bc, $737d                                  ; $689f: $01 $7d $73
    jp z, $f87d                                   ; $68a2: $ca $7d $f8

    ld [de], a                                    ; $68a5: $12
    adc c                                         ; $68a6: $89
    ldh a, [$85]                                  ; $68a7: $f0 $85
    add hl, hl                                    ; $68a9: $29
    xor e                                         ; $68aa: $ab
    cp $4a                                        ; $68ab: $fe $4a
    jp z, Jump_000_000d                           ; $68ad: $ca $0d $00

    ld d, a                                       ; $68b0: $57
    db $10                                        ; $68b1: $10
    and c                                         ; $68b2: $a1
    add a                                         ; $68b3: $87
    rst $08                                       ; $68b4: $cf
    cp $45                                        ; $68b5: $fe $45
    xor h                                         ; $68b7: $ac
    scf                                           ; $68b8: $37
    nop                                           ; $68b9: $00
    db $dd                                        ; $68ba: $dd
    db $ec                                        ; $68bb: $ec
    rra                                           ; $68bc: $1f
    sub d                                         ; $68bd: $92
    and $7b                                       ; $68be: $e6 $7b
    xor h                                         ; $68c0: $ac
    sbc e                                         ; $68c1: $9b
    sbc l                                         ; $68c2: $9d
    add [hl]                                      ; $68c3: $86
    ld d, l                                       ; $68c4: $55
    push hl                                       ; $68c5: $e5
    ld l, e                                       ; $68c6: $6b
    or $00                                        ; $68c7: $f6 $00
    rla                                           ; $68c9: $17
    push hl                                       ; $68ca: $e5
    or h                                          ; $68cb: $b4
    ld de, $c263                                  ; $68cc: $11 $63 $c2
    ld d, a                                       ; $68cf: $57
    ld a, [hl]                                    ; $68d0: $7e
    dec d                                         ; $68d1: $15
    ld h, d                                       ; $68d2: $62
    ld a, h                                       ; $68d3: $7c
    ld l, h                                       ; $68d4: $6c
    and l                                         ; $68d5: $a5
    db $fc                                        ; $68d6: $fc
    xor b                                         ; $68d7: $a8
    or c                                          ; $68d8: $b1
    ld l, e                                       ; $68d9: $6b
    add [hl]                                      ; $68da: $86
    ld [hl+], a                                   ; $68db: $22
    rst $28                                       ; $68dc: $ef
    rst $38                                       ; $68dd: $ff
    ld b, $17                                     ; $68de: $06 $17
    push hl                                       ; $68e0: $e5
    or h                                          ; $68e1: $b4
    ld de, $c263                                  ; $68e2: $11 $63 $c2
    and a                                         ; $68e5: $a7
    or [hl]                                       ; $68e6: $b6
    dec h                                         ; $68e7: $25
    and a                                         ; $68e8: $a7
    call c, $861b                                 ; $68e9: $dc $1b $86
    pop af                                        ; $68ec: $f1
    ld [hl], c                                    ; $68ed: $71
    pop hl                                        ; $68ee: $e1
    ld b, e                                       ; $68ef: $43
    xor c                                         ; $68f0: $a9
    di                                            ; $68f1: $f3
    ld e, h                                       ; $68f2: $5c
    jr z, jr_03a_694a                             ; $68f3: $28 $55

    dec [hl]                                      ; $68f5: $35
    ld a, [hl]                                    ; $68f6: $7e
    sbc l                                         ; $68f7: $9d
    ld a, [hl-]                                   ; $68f8: $3a
    ld [c], a                                     ; $68f9: $e2
    xor b                                         ; $68fa: $a8
    pop af                                        ; $68fb: $f1
    ld d, a                                       ; $68fc: $57
    ld hl, $c7c6                                  ; $68fd: $21 $c6 $c7
    ld d, [hl]                                    ; $6900: $56
    jp z, Jump_000_00df                           ; $6901: $ca $df $00

    and a                                         ; $6904: $a7
    inc e                                         ; $6905: $1c
    rrca                                          ; $6906: $0f
    rst $18                                       ; $6907: $df
    add hl, hl                                    ; $6908: $29
    daa                                           ; $6909: $27
    ret nz                                        ; $690a: $c0

    ld [hl], a                                    ; $690b: $77
    jp z, $f789                                   ; $690c: $ca $89 $f7

    ld a, l                                       ; $690f: $7d
    db $db                                        ; $6910: $db
    ld l, c                                       ; $6911: $69
    ld a, h                                       ; $6912: $7c
    xor c                                         ; $6913: $a9
    ld a, [hl-]                                   ; $6914: $3a
    sub e                                         ; $6915: $93
    jr c, @-$57                                   ; $6916: $38 $a7

    sub c                                         ; $6918: $91
    sbc [hl]                                      ; $6919: $9e
    ld a, [hl-]                                   ; $691a: $3a
    ld [c], a                                     ; $691b: $e2
    adc h                                         ; $691c: $8c
    ld a, e                                       ; $691d: $7b
    adc h                                         ; $691e: $8c
    cp c                                          ; $691f: $b9
    ld c, b                                       ; $6920: $48
    xor c                                         ; $6921: $a9
    dec de                                        ; $6922: $1b
    ld [hl], d                                    ; $6923: $72
    sbc [hl]                                      ; $6924: $9e
    inc sp                                        ; $6925: $33
    adc c                                         ; $6926: $89
    pop af                                        ; $6927: $f1
    ld h, l                                       ; $6928: $65
    ld c, $53                                     ; $6929: $0e $53
    ld h, a                                       ; $692b: $67
    call c, Call_03a_4c63                         ; $692c: $dc $63 $4c
    ld e, l                                       ; $692f: $5d
    db $dd                                        ; $6930: $dd
    ld a, [bc]                                    ; $6931: $0a
    ld [hl], l                                    ; $6932: $75
    sbc [hl]                                      ; $6933: $9e
    inc de                                        ; $6934: $13
    rst $10                                       ; $6935: $d7
    or c                                          ; $6936: $b1
    and c                                         ; $6937: $a1
    sbc $f7                                       ; $6938: $de $f7
    ld a, l                                       ; $693a: $7d
    jp z, $f049                                   ; $693b: $ca $49 $f0

    sbc l                                         ; $693e: $9d
    ld [hl], d                                    ; $693f: $72
    ld [hl-], a                                   ; $6940: $32
    ld a, h                                       ; $6941: $7c
    and a                                         ; $6942: $a7
    sbc h                                         ; $6943: $9c
    ld [hl], d                                    ; $6944: $72
    rst $18                                       ; $6945: $df
    scf                                           ; $6946: $37
    nop                                           ; $6947: $00
    db $dd                                        ; $6948: $dd
    db $ec                                        ; $6949: $ec

jr_03a_694a:
    cp c                                          ; $694a: $b9
    sub b                                         ; $694b: $90
    ld [c], a                                     ; $694c: $e2
    sbc e                                         ; $694d: $9b
    rst $08                                       ; $694e: $cf
    sub l                                         ; $694f: $95
    sbc a                                         ; $6950: $9f
    ld [hl], c                                    ; $6951: $71
    call nz, $3df8                                ; $6952: $c4 $f8 $3d
    ld d, $90                                     ; $6955: $16 $90

Jump_03a_6957:
    or d                                          ; $6957: $b2
    ld [$a4af], a                                 ; $6958: $ea $af $a4
    ret nz                                        ; $695b: $c0

    add a                                         ; $695c: $87
    cp c                                          ; $695d: $b9
    adc d                                         ; $695e: $8a
    ld h, e                                       ; $695f: $63
    xor c                                         ; $6960: $a9
    inc a                                         ; $6961: $3c
    ld l, $f8                                     ; $6962: $2e $f8
    ld a, [de]                                    ; $6964: $1a
    ld a, a                                       ; $6965: $7f
    ld d, $c7                                     ; $6966: $16 $c7
    dec b                                         ; $6968: $05
    rst $18                                       ; $6969: $df
    ld a, [$948b]                                 ; $696a: $fa $8b $94
    cp d                                          ; $696d: $ba
    pop hl                                        ; $696e: $e1
    ei                                            ; $696f: $fb
    cp h                                          ; $6970: $bc
    ld bc, $e517                                  ; $6971: $01 $17 $e5
    or h                                          ; $6974: $b4
    ld de, $c263                                  ; $6975: $11 $63 $c2
    ld b, a                                       ; $6978: $47
    ld e, l                                       ; $6979: $5d
    ld sp, hl                                     ; $697a: $f9
    dec b                                         ; $697b: $05
    ld d, e                                       ; $697c: $53
    ld a, [hl]                                    ; $697d: $7e
    sbc [hl]                                      ; $697e: $9e
    ld h, l                                       ; $697f: $65
    or c                                          ; $6980: $b1
    ld [$473c], a                                 ; $6981: $ea $3c $47
    dec [hl]                                      ; $6984: $35

Jump_03a_6985:
    ld e, a                                       ; $6985: $5f
    cp a                                          ; $6986: $bf
    adc $73                                       ; $6987: $ce $73
    ld c, d                                       ; $6989: $4a
    add hl, bc                                    ; $698a: $09
    dec de                                        ; $698b: $1b
    ld sp, $06f2                                  ; $698c: $31 $f2 $06
    cp l                                          ; $698f: $bd
    add d                                         ; $6990: $82
    add hl, hl                                    ; $6991: $29
    cp a                                          ; $6992: $bf
    cp d                                          ; $6993: $ba
    ld l, c                                       ; $6994: $69
    sbc l                                         ; $6995: $9d
    jp $e85c                                      ; $6996: $c3 $5c $e8


    add sp, $73                                   ; $6999: $e8 $73
    pop bc                                        ; $699b: $c1
    rst $28                                       ; $699c: $ef
    sub h                                         ; $699d: $94
    rla                                           ; $699e: $17
    ld hl, sp-$58                                 ; $699f: $f8 $a8
    ld sp, $a3ad                                  ; $69a1: $31 $ad $a3
    add [hl]                                      ; $69a4: $86
    sub h                                         ; $69a5: $94
    ld b, a                                       ; $69a6: $47
    sbc a                                         ; $69a7: $9f
    ld [hl], e                                    ; $69a8: $73
    ld hl, sp+$2b                                 ; $69a9: $f8 $2b
    inc [hl]                                      ; $69ab: $34
    ld b, c                                       ; $69ac: $41
    rst $10                                       ; $69ad: $d7
    rst $38                                       ; $69ae: $ff
    rst $10                                       ; $69af: $d7
    ld [$2530], a                                 ; $69b0: $ea $30 $25
    ld a, $46                                     ; $69b3: $3e $46
    sbc $00                                       ; $69b5: $de $00
    db $dd                                        ; $69b7: $dd
    cpl                                           ; $69b8: $2f
    ld [hl], c                                    ; $69b9: $71
    ld d, l                                       ; $69ba: $55
    rla                                           ; $69bb: $17
    ld a, h                                       ; $69bc: $7c
    jp $2985                                      ; $69bd: $c3 $85 $29


    ld a, e                                       ; $69c0: $7b
    adc e                                         ; $69c1: $8b
    or e                                          ; $69c2: $b3
    sbc c                                         ; $69c3: $99
    ld h, [hl]                                    ; $69c4: $66
    ret                                           ; $69c5: $c9


    sbc [hl]                                      ; $69c6: $9e
    db $eb                                        ; $69c7: $eb
    sbc e                                         ; $69c8: $9b
    and e                                         ; $69c9: $a3
    add $ae                                       ; $69ca: $c6 $ae
    db $fd                                        ; $69cc: $fd
    db $f4                                        ; $69cd: $f4
    ld c, e                                       ; $69ce: $4b
    dec h                                         ; $69cf: $25
    ld l, a                                       ; $69d0: $6f
    nop                                           ; $69d1: $00
    ld bc, $ad44                                  ; $69d2: $01 $44 $ad
    ld a, [hl-]                                   ; $69d5: $3a
    adc e                                         ; $69d6: $8b
    db $e3                                        ; $69d7: $e3
    adc $93                                       ; $69d8: $ce $93
    ld d, $06                                     ; $69da: $16 $06
    inc sp                                        ; $69dc: $33
    ld h, c                                       ; $69dd: $61
    xor h                                         ; $69de: $ac
    ld [hl], b                                    ; $69df: $70
    call nc, $9df8                                ; $69e0: $d4 $f8 $9d
    rst $18                                       ; $69e3: $df
    ld b, a                                       ; $69e4: $47
    and d                                         ; $69e5: $a2
    ld l, a                                       ; $69e6: $6f
    ld b, h                                       ; $69e7: $44
    sbc a                                         ; $69e8: $9f
    rst $30                                       ; $69e9: $f7
    ld [bc], a                                    ; $69ea: $02
    add hl, hl                                    ; $69eb: $29
    ld e, l                                       ; $69ec: $5d
    xor e                                         ; $69ed: $ab
    reti                                          ; $69ee: $d9


    cpl                                           ; $69ef: $2f
    ld h, l                                       ; $69f0: $65
    ld d, $c7                                     ; $69f1: $16 $c7
    ld d, l                                       ; $69f3: $55
    sbc $fa                                       ; $69f4: $de $fa
    ei                                            ; $69f6: $fb
    ld [hl], l                                    ; $69f7: $75
    sbc h                                         ; $69f8: $9c
    sbc d                                         ; $69f9: $9a
    sub a                                         ; $69fa: $97
    sub d                                         ; $69fb: $92
    scf                                           ; $69fc: $37
    nop                                           ; $69fd: $00
    ld d, a                                       ; $69fe: $57
    rst $38                                       ; $69ff: $ff
    xor b                                         ; $6a00: $a8
    or c                                          ; $6a01: $b1
    ld c, e                                       ; $6a02: $4b
    rst $30                                       ; $6a03: $f7
    ld d, $67                                     ; $6a04: $16 $67
    ld [hl], e                                    ; $6a06: $73
    xor a                                         ; $6a07: $af
    ld l, a                                       ; $6a08: $6f
    adc $b3                                       ; $6a09: $ce $b3
    ld b, e                                       ; $6a0b: $43
    or c                                          ; $6a0c: $b1
    ld a, c                                       ; $6a0d: $79
    ld e, l                                       ; $6a0e: $5d
    ldh a, [$3b]                                  ; $6a0f: $f0 $3b
    sub h                                         ; $6a11: $94
    ret z                                         ; $6a12: $c8

    add hl, bc                                    ; $6a13: $09
    ei                                            ; $6a14: $fb
    ccf                                           ; $6a15: $3f
    db $f4                                        ; $6a16: $f4
    ld a, $17                                     ; $6a17: $3e $17
    rra                                           ; $6a19: $1f
    ld h, e                                       ; $6a1a: $63
    sbc $00                                       ; $6a1b: $de $00
    db $dd                                        ; $6a1d: $dd
    ld l, $e3                                     ; $6a1e: $2e $e3
    add d                                         ; $6a20: $82
    inc e                                         ; $6a21: $1c
    dec [hl]                                      ; $6a22: $35
    cp [hl]                                       ; $6a23: $be
    rst $08                                       ; $6a24: $cf
    ld [hl], l                                    ; $6a25: $75
    sbc h                                         ; $6a26: $9c
    sbc d                                         ; $6a27: $9a
    ld b, a                                       ; $6a28: $47

jr_03a_6a29:
    sbc a                                         ; $6a29: $9f
    dec bc                                        ; $6a2a: $0b
    ld d, e                                       ; $6a2b: $53
    ld d, $d3                                     ; $6a2c: $16 $d3
    cp a                                          ; $6a2e: $bf
    ld l, $7c                                     ; $6a2f: $2e $7c
    adc c                                         ; $6a31: $89
    call nc, $001e                                ; $6a32: $d4 $1e $00
    ld bc, $1c94                                  ; $6a35: $01 $94 $1c
    and $aa                                       ; $6a38: $e6 $aa
    ld e, l                                       ; $6a3a: $5d
    db $db                                        ; $6a3b: $db
    cpl                                           ; $6a3c: $2f
    and [hl]                                      ; $6a3d: $a6
    ld a, a                                       ; $6a3e: $7f
    ld e, l                                       ; $6a3f: $5d
    ld hl, sp+$12                                 ; $6a40: $f8 $12
    xor c                                         ; $6a42: $a9
    rst $30                                       ; $6a43: $f7
    db $ec                                        ; $6a44: $ec
    inc [hl]                                      ; $6a45: $34
    ld a, [hl]                                    ; $6a46: $7e
    rst $20                                       ; $6a47: $e7
    rst $30                                       ; $6a48: $f7
    ld d, $67                                     ; $6a49: $16 $67
    inc bc                                        ; $6a4b: $03
    ld e, a                                       ; $6a4c: $5f
    ccf                                           ; $6a4d: $3f
    add a                                         ; $6a4e: $87
    ld sp, $8bf7                                  ; $6a4f: $31 $f7 $8b
    ld l, [hl]                                    ; $6a52: $6e
    and [hl]                                      ; $6a53: $a6
    xor e                                         ; $6a54: $ab
    ld a, [hl]                                    ; $6a55: $7e
    ld sp, hl                                     ; $6a56: $f9
    ei                                            ; $6a57: $fb
    cp [hl]                                       ; $6a58: $be
    ld bc, $a597                                  ; $6a59: $01 $97 $a5
    rst $08                                       ; $6a5c: $cf
    ld d, c                                       ; $6a5d: $51
    ld h, e                                       ; $6a5e: $63
    sbc $f7                                       ; $6a5f: $de $f7
    db $dd                                        ; $6a61: $dd
    dec a                                         ; $6a62: $3d
    and [hl]                                      ; $6a63: $a6
    rst $08                                       ; $6a64: $cf
    ld d, c                                       ; $6a65: $51
    ld h, e                                       ; $6a66: $63
    adc [hl]                                      ; $6a67: $8e
    cp d                                          ; $6a68: $ba
    jp c, $7b26                                   ; $6a69: $da $26 $7b

    ld [bc], a                                    ; $6a6c: $02
    rla                                           ; $6a6d: $17
    push hl                                       ; $6a6e: $e5
    xor b                                         ; $6a6f: $a8
    rst $30                                       ; $6a70: $f7
    ld a, [$aea6]                                 ; $6a71: $fa $a6 $ae
    inc d                                         ; $6a74: $14
    ld d, [hl]                                    ; $6a75: $56
    ld e, [hl]                                    ; $6a76: $5e

jr_03a_6a77:
    ld e, b                                       ; $6a77: $58
    and a                                         ; $6a78: $a7
    ld c, [hl]                                    ; $6a79: $4e
    ld e, l                                       ; $6a7a: $5d
    ld [hl], l                                    ; $6a7b: $75
    inc sp                                        ; $6a7c: $33
    adc l                                         ; $6a7d: $8d
    jr jr_03a_6a29                                ; $6a7e: $18 $a9

    db $d3                                        ; $6a80: $d3
    ld h, [hl]                                    ; $6a81: $66
    ld h, b                                       ; $6a82: $60
    inc d                                         ; $6a83: $14
    ld [$173c], a                                 ; $6a84: $ea $3c $17
    sub [hl]                                      ; $6a87: $96
    adc a                                         ; $6a88: $8f
    ld a, a                                       ; $6a89: $7f
    rst $18                                       ; $6a8a: $df
    scf                                           ; $6a8b: $37
    ld [hl], l                                    ; $6a8c: $75
    inc l                                         ; $6a8d: $2c
    di                                            ; $6a8e: $f3
    dec c                                         ; $6a8f: $0d
    add hl, hl                                    ; $6a90: $29
    add hl, sp                                    ; $6a91: $39
    rst $08                                       ; $6a92: $cf
    sub l                                         ; $6a93: $95
    call nc, $0fd5                                ; $6a94: $d4 $d5 $0f
    and l                                         ; $6a97: $a5
    sbc $f7                                       ; $6a98: $de $f7
    dec e                                         ; $6a9a: $1d
    cp [hl]                                       ; $6a9b: $be
    db $fc                                        ; $6a9c: $fc
    ld c, h                                       ; $6a9d: $4c
    sub $a1                                       ; $6a9e: $d6 $a1
    cp h                                          ; $6aa0: $bc
    inc l                                         ; $6aa1: $2c
    ld a, [hl-]                                   ; $6aa2: $3a
    sbc l                                         ; $6aa3: $9d
    ld c, c                                       ; $6aa4: $49
    ld a, l                                       ; $6aa5: $7d
    ld e, l                                       ; $6aa6: $5d
    ld hl, sp-$0e                                 ; $6aa7: $f8 $f2
    ld h, e                                       ; $6aa9: $63
    sbc c                                         ; $6aaa: $99
    ret                                           ; $6aab: $c9


    ld b, d                                       ; $6aac: $42
    xor b                                         ; $6aad: $a8
    push hl                                       ; $6aae: $e5
    dec c                                         ; $6aaf: $0d
    nop                                           ; $6ab0: $00
    db $dd                                        ; $6ab1: $dd
    inc bc                                        ; $6ab2: $03
    ld e, [hl]                                    ; $6ab3: $5e
    cp a                                          ; $6ab4: $bf
    ld c, [hl]                                    ; $6ab5: $4e
    db $dd                                        ; $6ab6: $dd
    xor a                                         ; $6ab7: $af
    db $fc                                        ; $6ab8: $fc
    or h                                          ; $6ab9: $b4
    ld b, c                                       ; $6aba: $41
    xor [hl]                                      ; $6abb: $ae
    ld de, $6723                                  ; $6abc: $11 $23 $67
    cp d                                          ; $6abf: $ba
    ld [$8797], a                                 ; $6ac0: $ea $97 $87
    ld c, a                                       ; $6ac3: $4f
    ld a, c                                       ; $6ac4: $79
    ld [hl], b                                    ; $6ac5: $70
    ld c, d                                       ; $6ac6: $4a
    ld c, a                                       ; $6ac7: $4f
    nop                                           ; $6ac8: $00
    add c                                         ; $6ac9: $81
    ld [hl], $f0                                  ; $6aca: $36 $f0
    ld b, l                                       ; $6acc: $45
    ld [hl+], a                                   ; $6acd: $22
    db $eb                                        ; $6ace: $eb
    call nc, $d285                                ; $6acf: $d4 $85 $d2
    db $f4                                        ; $6ad2: $f4
    rst $28                                       ; $6ad3: $ef
    reti                                          ; $6ad4: $d9


    cp a                                          ; $6ad5: $bf
    adc b                                         ; $6ad6: $88
    dec d                                         ; $6ad7: $15
    cp [hl]                                       ; $6ad8: $be
    or a                                          ; $6ad9: $b7
    jr c, jr_03a_6a77                             ; $6ada: $38 $9b

    ld d, c                                       ; $6adc: $51
    ld h, e                                       ; $6add: $63
    rst $10                                       ; $6ade: $d7
    ld e, b                                       ; $6adf: $58
    and $1b                                       ; $6ae0: $e6 $1b
    ld d, d                                       ; $6ae2: $52
    ld [hl], d                                    ; $6ae3: $72
    sub $95                                       ; $6ae4: $d6 $95
    ld e, a                                       ; $6ae6: $5f
    ld l, c                                       ; $6ae7: $69
    ld a, [de]                                    ; $6ae8: $1a
    ld a, a                                       ; $6ae9: $7f
    ld h, $71                                     ; $6aea: $26 $71
    dec h                                         ; $6aec: $25
    ld h, a                                       ; $6aed: $67
    ld [hl], c                                    ; $6aee: $71
    inc e                                         ; $6aef: $1c
    jp nc, Jump_03a_5b50                          ; $6af0: $d2 $50 $5b

    ld a, h                                       ; $6af3: $7c
    cp l                                          ; $6af4: $bd
    rst $10                                       ; $6af5: $d7
    dec sp                                        ; $6af6: $3b
    db $eb                                        ; $6af7: $eb
    ld d, b                                       ; $6af8: $50
    ld a, [hl]                                    ; $6af9: $7e
    ld sp, $ae7d                                  ; $6afa: $31 $7d $ae
    db $e4                                        ; $6afd: $e4
    inc l                                         ; $6afe: $2c
    adc [hl]                                      ; $6aff: $8e
    dec bc                                        ; $6b00: $0b
    inc de                                        ; $6b01: $13
    and c                                         ; $6b02: $a1
    cp a                                          ; $6b03: $bf
    ld [hl], a                                    ; $6b04: $77
    ld b, l                                       ; $6b05: $45
    ld e, d                                       ; $6b06: $5a
    rst $30                                       ; $6b07: $f7
    inc de                                        ; $6b08: $13
    sbc d                                         ; $6b09: $9a
    add h                                         ; $6b0a: $84
    jr z, @+$2d                                   ; $6b0b: $28 $2b

    ld a, c                                       ; $6b0d: $79
    and h                                         ; $6b0e: $a4
    push bc                                       ; $6b0f: $c5
    pop af                                        ; $6b10: $f1
    ret z                                         ; $6b11: $c8

    ld a, b                                       ; $6b12: $78
    ret nz                                        ; $6b13: $c0

    sub c                                         ; $6b14: $91
    ld a, [$ea1d]                                 ; $6b15: $fa $1d $ea
    xor h                                         ; $6b18: $ac
    jp $55d4                                      ; $6b19: $c3 $d4 $55


    ld e, b                                       ; $6b1c: $58
    and a                                         ; $6b1d: $a7
    adc $b3                                       ; $6b1e: $ce $b3
    inc a                                         ; $6b20: $3c
    ld b, [hl]                                    ; $6b21: $46
    adc $73                                       ; $6b22: $ce $73
    rst $20                                       ; $6b24: $e7
    ld c, c                                       ; $6b25: $49
    ld b, e                                       ; $6b26: $43
    jr z, @+$65                                   ; $6b27: $28 $63

    call nc, $001b                                ; $6b29: $d4 $1b $00
    db $dd                                        ; $6b2c: $dd
    cpl                                           ; $6b2d: $2f
    ld [hl], c                                    ; $6b2e: $71
    ld d, l                                       ; $6b2f: $55
    ld b, a                                       ; $6b30: $47
    ld e, l                                       ; $6b31: $5d
    ret                                           ; $6b32: $c9


    inc hl                                        ; $6b33: $23
    dec l                                         ; $6b34: $2d
    adc [hl]                                      ; $6b35: $8e
    ld b, a                                       ; $6b36: $47
    add $03                                       ; $6b37: $c6 $03
    adc [hl]                                      ; $6b39: $8e
    call nc, Call_03a_50ef                        ; $6b3a: $d4 $ef $50
    ld a, e                                       ; $6b3d: $7b
    ld [bc], a                                    ; $6b3e: $02
    ld a, l                                       ; $6b3f: $7d
    ld [hl], e                                    ; $6b40: $73
    sub c                                         ; $6b41: $91
    dec hl                                        ; $6b42: $2b
    cp c                                          ; $6b43: $b9
    ret nc                                        ; $6b44: $d0

    pop de                                        ; $6b45: $d1
    rst $20                                       ; $6b46: $e7
    inc a                                         ; $6b47: $3c
    ld c, l                                       ; $6b48: $4d
    sub e                                         ; $6b49: $93
    ld a, e                                       ; $6b4a: $7b
    halt                                          ; $6b4b: $76
    cp d                                          ; $6b4c: $ba
    cpl                                           ; $6b4d: $2f
    ld d, b                                       ; $6b4e: $50
    adc $73                                       ; $6b4f: $ce $73
    or $09                                        ; $6b51: $f6 $09
    pop bc                                        ; $6b53: $c1
    ld a, h                                       ; $6b54: $7c
    adc c                                         ; $6b55: $89
    ld a, d                                       ; $6b56: $7a
    xor a                                         ; $6b57: $af
    ld l, a                                       ; $6b58: $6f
    ld [$ac2a], a                                 ; $6b59: $ea $2a $ac
    ld d, e                                       ; $6b5c: $53
    ld d, a                                       ; $6b5d: $57
    db $ed                                        ; $6b5e: $ed
    jr z, jr_03a_6b70                             ; $6b5f: $28 $0f

    sbc a                                         ; $6b61: $9f
    db $fd                                        ; $6b62: $fd
    adc e                                         ; $6b63: $8b
    ld e, b                                       ; $6b64: $58
    ld l, a                                       ; $6b65: $6f
    nop                                           ; $6b66: $00
    rst $20                                       ; $6b67: $e7
    ret                                           ; $6b68: $c9


    sbc e                                         ; $6b69: $9b
    or $ba                                        ; $6b6a: $f6 $ba
    jr nc, jr_03a_6bd3                            ; $6b6c: $30 $65

    dec d                                         ; $6b6e: $15
    ld h, d                                       ; $6b6f: $62

jr_03a_6b70:
    sub e                                         ; $6b70: $93
    dec de                                        ; $6b71: $1b
    nop                                           ; $6b72: $00
    ld d, a                                       ; $6b73: $57
    jr c, @-$68                                   ; $6b74: $38 $96

    jp z, $942f                                   ; $6b76: $ca $2f $94

    call nz, $3798                                ; $6b79: $c4 $98 $37
    nop                                           ; $6b7c: $00
    rla                                           ; $6b7d: $17
    db $fd                                        ; $6b7e: $fd
    ld b, d                                       ; $6b7f: $42
    ld b, a                                       ; $6b80: $47
    adc c                                         ; $6b81: $89
    ccf                                           ; $6b82: $3f
    ld l, d                                       ; $6b83: $6a
    db $ec                                        ; $6b84: $ec
    ld e, d                                       ; $6b85: $5a
    sbc b                                         ; $6b86: $98
    or d                                          ; $6b87: $b2
    or a                                          ; $6b88: $b7
    jr c, @+$1d                                   ; $6b89: $38 $1b

    ld hl, sp-$6c                                 ; $6b8b: $f8 $94
    rlca                                          ; $6b8d: $07
    and a                                         ; $6b8e: $a7
    call c, $7600                                 ; $6b8f: $dc $00 $76
    ld a, [de]                                    ; $6b92: $1a
    cp a                                          ; $6b93: $bf
    ld c, [hl]                                    ; $6b94: $4e
    db $dd                                        ; $6b95: $dd
    cpl                                           ; $6b96: $2f
    ld [hl], h                                    ; $6b97: $74
    jr jr_03a_6c0d                                ; $6b98: $18 $73

    sbc [hl]                                      ; $6b9a: $9e
    ei                                            ; $6b9b: $fb
    ld d, d                                       ; $6b9c: $52
    and a                                         ; $6b9d: $a7
    db $f4                                        ; $6b9e: $f4
    ld a, a                                       ; $6b9f: $7f
    add c                                         ; $6ba0: $81
    ld c, a                                       ; $6ba1: $4f
    ld a, c                                       ; $6ba2: $79
    ld [hl], b                                    ; $6ba3: $70
    jp z, $bebd                                   ; $6ba4: $ca $bd $be

    add hl, sp                                    ; $6ba7: $39
    inc hl                                        ; $6ba8: $23
    call z, Call_000_1c59                         ; $6ba9: $cc $59 $1c
    ld h, a                                       ; $6bac: $67
    ld [hl], c                                    ; $6bad: $71
    adc l                                         ; $6bae: $8d
    ld a, [c]                                     ; $6baf: $f2
    xor e                                         ; $6bb0: $ab
    ld d, b                                       ; $6bb1: $50
    jr nc, jr_03a_6c29                            ; $6bb2: $30 $75

    ld h, $6b                                     ; $6bb4: $26 $6b
    jp z, Jump_000_000d                           ; $6bb6: $ca $0d $00

    rst $20                                       ; $6bb9: $e7
    ret                                           ; $6bba: $c9


    sbc e                                         ; $6bbb: $9b
    or $ba                                        ; $6bbc: $f6 $ba
    jr nc, jr_03a_6c25                            ; $6bbe: $30 $65

    sub c                                         ; $6bc0: $91
    ld c, b                                       ; $6bc1: $48
    sbc c                                         ; $6bc2: $99
    cp d                                          ; $6bc3: $ba
    add hl, de                                    ; $6bc4: $19
    ld b, a                                       ; $6bc5: $47
    adc h                                         ; $6bc6: $8c
    ccf                                           ; $6bc7: $3f
    ld [c], a                                     ; $6bc8: $e2
    adc $93                                       ; $6bc9: $ce $93
    add [hl]                                      ; $6bcb: $86
    ld d, b                                       ; $6bcc: $50
    add $a8                                       ; $6bcd: $c6 $a8
    scf                                           ; $6bcf: $37
    nop                                           ; $6bd0: $00
    ld a, l                                       ; $6bd1: $7d
    sbc h                                         ; $6bd2: $9c

jr_03a_6bd3:
    ld [hl], l                                    ; $6bd3: $75
    sbc l                                         ; $6bd4: $9d
    ld b, [hl]                                    ; $6bd5: $46
    cp h                                          ; $6bd6: $bc
    ld bc, $59f6                                  ; $6bd7: $01 $f6 $59
    cp $06                                        ; $6bda: $fe $06
    rst $20                                       ; $6bdc: $e7
    ret                                           ; $6bdd: $c9


    sbc e                                         ; $6bde: $9b
    or $7a                                        ; $6bdf: $f6 $7a
    inc bc                                        ; $6be1: $03
    rla                                           ; $6be2: $17
    cp l                                          ; $6be3: $bd
    ld l, $36                                     ; $6be4: $2e $36
    and d                                         ; $6be6: $a2
    ld a, a                                       ; $6be7: $7f
    ld e, l                                       ; $6be8: $5d
    dec h                                         ; $6be9: $25
    ld c, e                                       ; $6bea: $4b
    add l                                         ; $6beb: $85
    jp nc, $fb85                                  ; $6bec: $d2 $85 $fb

    sbc c                                         ; $6bef: $99
    xor h                                         ; $6bf0: $ac
    ld b, e                                       ; $6bf1: $43
    ld a, c                                       ; $6bf2: $79
    ld e, c                                       ; $6bf3: $59
    ret                                           ; $6bf4: $c9


    ld e, c                                       ; $6bf5: $59
    inc e                                         ; $6bf6: $1c
    rla                                           ; $6bf7: $17
    cp c                                          ; $6bf8: $b9
    ld a, [bc]                                    ; $6bf9: $0a
    pop de                                        ; $6bfa: $d1
    inc de                                        ; $6bfb: $13
    rst $28                                       ; $6bfc: $ef
    ei                                            ; $6bfd: $fb
    cp $85                                        ; $6bfe: $fe $85
    ld b, d                                       ; $6c00: $42
    db $d3                                        ; $6c01: $d3
    ld [hl], d                                    ; $6c02: $72
    ld b, d                                       ; $6c03: $42
    rst $28                                       ; $6c04: $ef
    ld c, h                                       ; $6c05: $4c
    di                                            ; $6c06: $f3
    add hl, bc                                    ; $6c07: $09
    sbc a                                         ; $6c08: $9f
    add hl, hl                                    ; $6c09: $29
    cpl                                           ; $6c0a: $2f
    ld a, c                                       ; $6c0b: $79
    inc bc                                        ; $6c0c: $03

jr_03a_6c0d:
    db $dd                                        ; $6c0d: $dd
    db $ec                                        ; $6c0e: $ec
    add h                                         ; $6c0f: $84
    cp d                                          ; $6c10: $ba
    xor d                                         ; $6c11: $aa
    and l                                         ; $6c12: $a5
    rst $00                                       ; $6c13: $c7
    ld l, $71                                     ; $6c14: $2e $71
    adc l                                         ; $6c16: $8d
    sub d                                         ; $6c17: $92
    di                                            ; $6c18: $f3
    inc [hl]                                      ; $6c19: $34
    ld c, l                                       ; $6c1a: $4d
    ldh [$eb], a                                  ; $6c1b: $e0 $eb
    ld b, [hl]                                    ; $6c1d: $46
    and c                                         ; $6c1e: $a1
    ld l, $1e                                     ; $6c1f: $2e $1e
    ret nc                                        ; $6c21: $d0

    ld h, e                                       ; $6c22: $63
    rla                                           ; $6c23: $17
    dec hl                                        ; $6c24: $2b

jr_03a_6c25:
    rra                                           ; $6c25: $1f
    cp [hl]                                       ; $6c26: $be
    ld l, [hl]                                    ; $6c27: $6e
    inc d                                         ; $6c28: $14

jr_03a_6c29:
    ld [$5fec], a                                 ; $6c29: $ea $ec $5f
    call nz, $80ba                                ; $6c2c: $c4 $ba $80
    adc h                                         ; $6c2f: $8c
    sub c                                         ; $6c30: $91
    jp nc, $0003                                  ; $6c31: $d2 $03 $00

    cp l                                          ; $6c34: $bd
    ld e, l                                       ; $6c35: $5d
    di                                            ; $6c36: $f3
    rst $28                                       ; $6c37: $ef

jr_03a_6c38:
    ld [hl], e                                    ; $6c38: $73
    ld h, $71                                     ; $6c39: $26 $71
    dec h                                         ; $6c3b: $25
    ld [hl], l                                    ; $6c3c: $75
    and $4b                                       ; $6c3d: $e6 $4b
    ld h, c                                       ; $6c3f: $61
    cp a                                          ; $6c40: $bf
    ld b, h                                       ; $6c41: $44
    ld [$47ca], a                                 ; $6c42: $ea $ca $47
    jp z, $ea17                                   ; $6c45: $ca $17 $ea

    ld a, l                                       ; $6c48: $7d
    rst $18                                       ; $6c49: $df
    pop bc                                        ; $6c4a: $c1
    or a                                          ; $6c4b: $b7
    adc [hl]                                      ; $6c4c: $8e
    sbc b                                         ; $6c4d: $98
    ld d, d                                       ; $6c4e: $52
    ld d, e                                       ; $6c4f: $53
    daa                                           ; $6c50: $27
    rra                                           ; $6c51: $1f
    ld e, a                                       ; $6c52: $5f
    rla                                           ; $6c53: $17
    and [hl]                                      ; $6c54: $a6
    db $ec                                        ; $6c55: $ec
    add e                                         ; $6c56: $83
    ld [hl], $37                                  ; $6c57: $36 $37
    nop                                           ; $6c59: $00
    ld a, l                                       ; $6c5a: $7d
    ld [hl], e                                    ; $6c5b: $73
    ld b, c                                       ; $6c5c: $41
    ld h, a                                       ; $6c5d: $67
    ld a, l                                       ; $6c5e: $7d
    sbc l                                         ; $6c5f: $9d
    rst $20                                       ; $6c60: $e7
    ld h, d                                       ; $6c61: $62
    ld a, [$95d7]                                 ; $6c62: $fa $d7 $95
    rst $10                                       ; $6c65: $d7
    add hl, de                                    ; $6c66: $19
    ld l, c                                       ; $6c67: $69
    rra                                           ; $6c68: $1f
    sbc l                                         ; $6c69: $9d
    cp h                                          ; $6c6a: $bc
    adc $e2                                       ; $6c6b: $ce $e2
    cp b                                          ; $6c6d: $b8
    ret z                                         ; $6c6e: $c8

    ld de, $238d                                  ; $6c6f: $11 $8d $23
    ld b, [hl]                                    ; $6c72: $46
    and c                                         ; $6c73: $a1
    sbc $eb                                       ; $6c74: $de $eb
    sbc e                                         ; $6c76: $9b
    dec bc                                        ; $6c77: $0b
    db $d3                                        ; $6c78: $d3
    ld c, e                                       ; $6c79: $4b
    sub a                                         ; $6c7a: $97
    adc $53                                       ; $6c7b: $ce $53
    inc h                                         ; $6c7d: $24
    db $e3                                        ; $6c7e: $e3
    bit 7, [hl]                                   ; $6c7f: $cb $7e
    ld b, [hl]                                    ; $6c81: $46
    jp c, $2747                                   ; $6c82: $da $47 $27

    xor a                                         ; $6c85: $af
    xor e                                         ; $6c86: $ab
    cp e                                          ; $6c87: $bb
    ld [hl], h                                    ; $6c88: $74
    push de                                       ; $6c89: $d5
    adc [hl]                                      ; $6c8a: $8e
    ld [de], a                                    ; $6c8b: $12
    xor c                                         ; $6c8c: $a9
    ldh a, [$fd]                                  ; $6c8d: $f0 $fd
    jr nc, jr_03a_6c38                            ; $6c8f: $30 $a7

    sub h                                         ; $6c91: $94
    ld e, c                                       ; $6c92: $59
    inc e                                         ; $6c93: $1c
    rst $30                                       ; $6c94: $f7
    pop bc                                        ; $6c95: $c1
    sub h                                         ; $6c96: $94
    ld e, a                                       ; $6c97: $5f
    add l                                         ; $6c98: $85
    ret c                                         ; $6c99: $d8

    rst $38                                       ; $6c9a: $ff
    ld [hl], l                                    ; $6c9b: $75
    cp a                                          ; $6c9c: $bf
    adc h                                         ; $6c9d: $8c
    ld a, [c]                                     ; $6c9e: $f2
    cp d                                          ; $6c9f: $ba
    cp d                                          ; $6ca0: $ba
    ld c, e                                       ; $6ca1: $4b
    rst $20                                       ; $6ca2: $e7
    xor e                                         ; $6ca3: $ab
    halt                                          ; $6ca4: $76
    ld e, d                                       ; $6ca5: $5a
    and c                                         ; $6ca6: $a1
    sbc $00                                       ; $6ca7: $de $00
    halt                                          ; $6ca9: $76
    ld h, l                                       ; $6caa: $65
    cp l                                          ; $6cab: $bd
    cp a                                          ; $6cac: $bf

jr_03a_6cad:
    inc d                                         ; $6cad: $14

Jump_03a_6cae:
    or $b3                                        ; $6cae: $f6 $b3
    push bc                                       ; $6cb0: $c5
    sbc l                                         ; $6cb1: $9d
    db $d3                                        ; $6cb2: $d3
    ld e, $4a                                     ; $6cb3: $1e $4a
    inc e                                         ; $6cb5: $1c
    dec [hl]                                      ; $6cb6: $35
    halt                                          ; $6cb7: $76
    xor l                                         ; $6cb8: $ad
    inc d                                         ; $6cb9: $14
    ld h, d                                       ; $6cba: $62
    adc $73                                       ; $6cbb: $ce $73
    ret nc                                        ; $6cbd: $d0

    inc hl                                        ; $6cbe: $23
    db $f4                                        ; $6cbf: $f4
    ld a, d                                       ; $6cc0: $7a
    rst $18                                       ; $6cc1: $df
    scf                                           ; $6cc2: $37
    ld [hl], l                                    ; $6cc3: $75
    push de                                       ; $6cc4: $d5
    ld e, l                                       ; $6cc5: $5d
    and [hl]                                      ; $6cc6: $a6
    sub l                                         ; $6cc7: $95
    ld b, c                                       ; $6cc8: $41
    xor a                                         ; $6cc9: $af
    pop af                                        ; $6cca: $f1
    ld b, l                                       ; $6ccb: $45
    add hl, sp                                    ; $6ccc: $39
    rst $08                                       ; $6ccd: $cf
    ld a, [$bdb5]                                 ; $6cce: $fa $b5 $bd
    rst $08                                       ; $6cd1: $cf
    dec de                                        ; $6cd2: $1b
    nop                                           ; $6cd3: $00
    cp l                                          ; $6cd4: $bd
    add d                                         ; $6cd5: $82
    add hl, hl                                    ; $6cd6: $29
    cp a                                          ; $6cd7: $bf
    ld c, b                                       ; $6cd8: $48
    db $f4                                        ; $6cd9: $f4
    jp nc, $b3a5                                  ; $6cda: $d2 $a5 $b3

    jr c, jr_03a_6cad                             ; $6cdd: $38 $ce

    ld d, e                                       ; $6cdf: $53
    inc h                                         ; $6ce0: $24
    db $e3                                        ; $6ce1: $e3
    bit 7, [hl]                                   ; $6ce2: $cb $7e
    ld [hl], l                                    ; $6ce4: $75
    and d                                         ; $6ce5: $a2
    ld b, [hl]                                    ; $6ce6: $46
    ld [hl], c                                    ; $6ce7: $71
    xor c                                         ; $6ce8: $a9
    xor e                                         ; $6ce9: $ab
    cp e                                          ; $6cea: $bb
    ld [hl], h                                    ; $6ceb: $74
    cp [hl]                                       ; $6cec: $be
    ld l, d                                       ; $6ced: $6a
    and a                                         ; $6cee: $a7
    dec d                                         ; $6cef: $15
    ld [$abac], a                                 ; $6cf0: $ea $ac $ab
    cp e                                          ; $6cf3: $bb
    ld [hl], h                                    ; $6cf4: $74
    pop af                                        ; $6cf5: $f1
    push bc                                       ; $6cf6: $c5
    ld [hl], e                                    ; $6cf7: $73
    ld c, d                                       ; $6cf8: $4a
    ret z                                         ; $6cf9: $c8

    dec [hl]                                      ; $6cfa: $35
    jp hl                                         ; $6cfb: $e9


    jp nc, $c499                                  ; $6cfc: $d2 $99 $c4

    sub l                                         ; $6cff: $95
    call nc, Call_03a_5dd5                        ; $6d00: $d4 $d5 $5d
    cp d                                          ; $6d03: $ba
    ld l, d                                       ; $6d04: $6a
    ld b, a                                       ; $6d05: $47
    adc c                                         ; $6d06: $89
    call nc, $001b                                ; $6d07: $d4 $1b $00
    add c                                         ; $6d0a: $81
    ld l, l                                       ; $6d0b: $6d
    sub c                                         ; $6d0c: $91
    adc e                                         ; $6d0d: $8b
    sub d                                         ; $6d0e: $92
    ld h, c                                       ; $6d0f: $61
    ld h, e                                       ; $6d10: $63
    rst $38                                       ; $6d11: $ff
    rst $10                                       ; $6d12: $d7
    push hl                                       ; $6d13: $e5
    ld [hl+], a                                   ; $6d14: $22
    rst $30                                       ; $6d15: $f7
    pop af                                        ; $6d16: $f1
    call $e1cf                                    ; $6d17: $cd $cf $e1
    ld c, a                                       ; $6d1a: $4f
    ld a, $fe                                     ; $6d1b: $3e $fe
    and b                                         ; $6d1d: $a0
    ld b, $3d                                     ; $6d1e: $06 $3d
    ld b, [hl]                                    ; $6d20: $46
    jp nz, Jump_03a_6957                          ; $6d21: $c2 $57 $69

    jp c, $efe2                                   ; $6d24: $da $e2 $ef

    res 1, h                                      ; $6d27: $cb $8c
    sub e                                         ; $6d29: $93
    ld b, a                                       ; $6d2a: $47
    ld c, a                                       ; $6d2b: $4f
    ret                                           ; $6d2c: $c9


    dec de                                        ; $6d2d: $1b
    nop                                           ; $6d2e: $00
    rla                                           ; $6d2f: $17
    push hl                                       ; $6d30: $e5
    ld l, d                                       ; $6d31: $6a
    or $4b                                        ; $6d32: $f6 $4b
    sbc c                                         ; $6d34: $99
    rst $20                                       ; $6d35: $e7
    ld c, d                                       ; $6d36: $4a
    ld [$d122], a                                 ; $6d37: $ea $22 $d1
    ld d, e                                       ; $6d3a: $53
    ld d, d                                       ; $6d3b: $52
    ld b, a                                       ; $6d3c: $47
    sbc l                                         ; $6d3d: $9d
    push bc                                       ; $6d3e: $c5
    ld [hl], c                                    ; $6d3f: $71
    ld sp, $ea7d                                  ; $6d40: $31 $7d $ea
    inc [hl]                                      ; $6d43: $34
    ld [hl], c                                    ; $6d44: $71
    pop bc                                        ; $6d45: $c1
    ld b, h                                       ; $6d46: $44
    ld a, c                                       ; $6d47: $79
    sbc a                                         ; $6d48: $9f
    ld a, d                                       ; $6d49: $7a
    inc bc                                        ; $6d4a: $03
    db $dd                                        ; $6d4b: $dd
    db $ed                                        ; $6d4c: $ed
    ld e, a                                       ; $6d4d: $5f
    ld b, a                                       ; $6d4e: $47
    inc [hl]                                      ; $6d4f: $34
    adc c                                         ; $6d50: $89
    ld d, c                                       ; $6d51: $51
    sbc $e7                                       ; $6d52: $de $e7
    xor h                                         ; $6d54: $ac
    cp a                                          ; $6d55: $bf
    cpl                                           ; $6d56: $2f
    ret nc                                        ; $6d57: $d0

    ld bc, $ecb8                                  ; $6d58: $01 $b8 $ec
    db $f4                                        ; $6d5b: $f4
    ld h, e                                       ; $6d5c: $63
    call z, Call_03a_71a5                         ; $6d5d: $cc $a5 $71
    dec h                                         ; $6d60: $25
    ld h, [hl]                                    ; $6d61: $66
    rst $08                                       ; $6d62: $cf
    reti                                          ; $6d63: $d9


    cp a                                          ; $6d64: $bf
    ld [hl], l                                    ; $6d65: $75
    or l                                          ; $6d66: $b5
    inc sp                                        ; $6d67: $33
    pop bc                                        ; $6d68: $c1

jr_03a_6d69:
    call nc, $2985                                ; $6d69: $d4 $85 $29
    ld a, e                                       ; $6d6c: $7b
    adc e                                         ; $6d6d: $8b
    or e                                          ; $6d6e: $b3
    cp c                                          ; $6d6f: $b9
    rst $10                                       ; $6d70: $d7
    and a                                         ; $6d71: $a7
    ret                                           ; $6d72: $c9


    jp Jump_03a_7c17                              ; $6d73: $c3 $17 $7c


    adc l                                         ; $6d76: $8d
    ccf                                           ; $6d77: $3f
    dec h                                         ; $6d78: $25
    db $e4                                        ; $6d79: $e4
    inc h                                         ; $6d7a: $24
    ld h, a                                       ; $6d7b: $67
    ld [hl], c                                    ; $6d7c: $71
    ld e, h                                       ; $6d7d: $5c
    ldh a, [$ad]                                  ; $6d7e: $f0 $ad
    ld [hl], e                                    ; $6d80: $73
    sbc b                                         ; $6d81: $98
    di                                            ; $6d82: $f3
    call nz, Call_000_3928                        ; $6d83: $c4 $28 $39
    rst $08                                       ; $6d86: $cf
    ld d, c                                       ; $6d87: $51
    cp c                                          ; $6d88: $b9
    adc $8b                                       ; $6d89: $ce $8b
    or h                                          ; $6d8b: $b4
    ld [hl], d                                    ; $6d8c: $72
    inc bc                                        ; $6d8d: $03
    ld bc, $94ef                                  ; $6d8e: $01 $ef $94
    dec bc                                        ; $6d91: $0b
    inc [hl]                                      ; $6d92: $34
    ld b, d                                       ; $6d93: $42
    ld [c], a                                     ; $6d94: $e2
    db $ec                                        ; $6d95: $ec
    add hl, hl                                    ; $6d96: $29
    inc b                                         ; $6d97: $04
    ld h, a                                       ; $6d98: $67
    scf                                           ; $6d99: $37
    ld h, d                                       ; $6d9a: $62
    add l                                         ; $6d9b: $85
    ret c                                         ; $6d9c: $d8

    ld a, h                                       ; $6d9d: $7c
    xor $cb                                       ; $6d9e: $ee $cb
    db $ec                                        ; $6da0: $ec
    ld [$a530], a                                 ; $6da1: $ea $30 $a5
    push hl                                       ; $6da4: $e5
    inc a                                         ; $6da5: $3c
    ld d, a                                       ; $6da6: $57
    ld e, [hl]                                    ; $6da7: $5e
    ld [hl], a                                    ; $6da8: $77
    ld de, $d04d                                  ; $6da9: $11 $4d $d0
    push af                                       ; $6dac: $f5
    ld a, a                                       ; $6dad: $7f
    cp l                                          ; $6dae: $bd
    rst $10                                       ; $6daf: $d7
    db $fd                                        ; $6db0: $fd
    ld [de], a                                    ; $6db1: $12
    ld d, a                                       ; $6db2: $57
    ld [hl], l                                    ; $6db3: $75
    ld a, a                                       ; $6db4: $7f
    ld [hl], b                                    ; $6db5: $70
    jp nz, $a617                                  ; $6db6: $c2 $17 $a6

    xor h                                         ; $6db9: $ac
    ld a, [$292b]                                 ; $6dba: $fa $2b $29
    dec a                                         ; $6dbd: $3d
    ld bc, $7bdd                                  ; $6dbe: $01 $dd $7b
    dec e                                         ; $6dc1: $1d
    sbc h                                         ; $6dc2: $9c
    dec a                                         ; $6dc3: $3d
    rst $10                                       ; $6dc4: $d7
    db $fd                                        ; $6dc5: $fd
    ld [de], a                                    ; $6dc6: $12
    ld d, a                                       ; $6dc7: $57
    ld [hl], l                                    ; $6dc8: $75
    ld d, $d7                                     ; $6dc9: $16 $d7
    jr z, jr_03a_6d69                             ; $6dcb: $28 $9c

    and a                                         ; $6dcd: $a7
    ld l, c                                       ; $6dce: $69
    jp nc, Jump_000_0013                          ; $6dcf: $d2 $13 $00

    db $dd                                        ; $6dd2: $dd
    db $ed                                        ; $6dd3: $ed
    ld [hl], b                                    ; $6dd4: $70
    ld d, $57                                     ; $6dd5: $16 $57
    ld [hl], l                                    ; $6dd7: $75
    ld a, a                                       ; $6dd8: $7f
    ld [hl], b                                    ; $6dd9: $70
    adc [hl]                                      ; $6dda: $8e
    ld a, [de]                                    ; $6ddb: $1a
    cp e                                          ; $6ddc: $bb
    ld [hl], h                                    ; $6ddd: $74
    call nz, Call_000_27d9                        ; $6dde: $c4 $d9 $27
    inc b                                         ; $6de1: $04
    di                                            ; $6de2: $f3
    dec h                                         ; $6de3: $25
    ld l, d                                       ; $6de4: $6a
    rst $08                                       ; $6de5: $cf
    ld [hl], l                                    ; $6de6: $75
    rrca                                          ; $6de7: $0f
    sub b                                         ; $6de8: $90
    ld d, [hl]                                    ; $6de9: $56
    ld d, e                                       ; $6dea: $53
    or d                                          ; $6deb: $b2
    rst $20                                       ; $6dec: $e7
    cp d                                          ; $6ded: $ba
    dec hl                                        ; $6dee: $2b
    ld hl, $3e87                                  ; $6def: $21 $87 $3e
    ld a, e                                       ; $6df2: $7b
    ld [bc], a                                    ; $6df3: $02
    cp l                                          ; $6df4: $bd
    ld c, $c0                                     ; $6df5: $0e $c0
    ld h, c                                       ; $6df7: $61
    adc [hl]                                      ; $6df8: $8e
    ld a, [de]                                    ; $6df9: $1a
    db $d3                                        ; $6dfa: $d3
    ld a, [hl-]                                   ; $6dfb: $3a
    ld [c], a                                     ; $6dfc: $e2
    db $ec                                        ; $6dfd: $ec
    inc de                                        ; $6dfe: $13
    add d                                         ; $6dff: $82
    ld sp, hl                                     ; $6e00: $f9
    ld [de], a                                    ; $6e01: $12
    push af                                       ; $6e02: $f5
    ld b, $01                                     ; $6e03: $06 $01
    adc [hl]                                      ; $6e05: $8e
    cp d                                          ; $6e06: $ba
    sub d                                         ; $6e07: $92
    db $d3                                        ; $6e08: $d3
    ld b, [hl]                                    ; $6e09: $46
    adc h                                         ; $6e0a: $8c
    add hl, bc                                    ; $6e0b: $09
    ld e, a                                       ; $6e0c: $5f
    ld c, b                                       ; $6e0d: $48
    ret                                           ; $6e0e: $c9


    ld h, c                                       ; $6e0f: $61
    ld l, $4c                                     ; $6e10: $2e $4c
    rst $08                                       ; $6e12: $cf
    ld a, [hl-]                                   ; $6e13: $3a
    ld [hl], l                                    ; $6e14: $75
    dec d                                         ; $6e15: $15
    and d                                         ; $6e16: $a2
    and a                                         ; $6e17: $a7
    ld b, h                                       ; $6e18: $44
    ld c, $df                                     ; $6e19: $0e $df
    ccf                                           ; $6e1b: $3f
    ld a, h                                       ; $6e1c: $7c
    rst $28                                       ; $6e1d: $ef
    ret nc                                        ; $6e1e: $d0

    ld [c], a                                     ; $6e1f: $e2
    cp b                                          ; $6e20: $b8
    ret nc                                        ; $6e21: $d0

    pop de                                        ; $6e22: $d1
    ld d, e                                       ; $6e23: $53
    ld d, a                                       ; $6e24: $57
    scf                                           ; $6e25: $37
    ld a, c                                       ; $6e26: $79
    sbc c                                         ; $6e27: $99
    or [hl]                                       ; $6e28: $b6
    ld e, c                                       ; $6e29: $59
    ld e, h                                       ; $6e2a: $5c
    and e                                         ; $6e2b: $a3
    ld d, b                                       ; $6e2c: $50
    rst $28                                       ; $6e2d: $ef
    ld e, l                                       ; $6e2e: $5d
    ld [c], a                                     ; $6e2f: $e2
    cp b                                          ; $6e30: $b8
    ld c, b                                       ; $6e31: $48
    add h                                         ; $6e32: $84
    ld e, [hl]                                    ; $6e33: $5e
    rst $20                                       ; $6e34: $e7
    ld [hl], b                                    ; $6e35: $70
    dec e                                         ; $6e36: $1d
    ld b, a                                       ; $6e37: $47
    sbc h                                         ; $6e38: $9c
    or a                                          ; $6e39: $b7
    ld sp, hl                                     ; $6e3a: $f9
    dec de                                        ; $6e3b: $1b
    nop                                           ; $6e3c: $00
    add c                                         ; $6e3d: $81
    or [hl]                                       ; $6e3e: $b6
    dec h                                         ; $6e3f: $25
    rla                                           ; $6e40: $17
    ld a, h                                       ; $6e41: $7c
    db $eb                                        ; $6e42: $eb
    inc e                                         ; $6e43: $1c
    cp $2a                                        ; $6e44: $fe $2a
    cpl                                           ; $6e46: $2f
    dec l                                         ; $6e47: $2d
    cp $c2                                        ; $6e48: $fe $c2
    sub a                                         ; $6e4a: $97
    sbc a                                         ; $6e4b: $9f
    ld a, c                                       ; $6e4c: $79
    rst $38                                       ; $6e4d: $ff
    xor e                                         ; $6e4e: $ab
    rra                                           ; $6e4f: $1f
    jp z, $977b                                   ; $6e50: $ca $7b $97

    ld de, $b0bd                                  ; $6e53: $11 $bd $b0
    ld c, [hl]                                    ; $6e56: $4e

jr_03a_6e57:
    sbc l                                         ; $6e57: $9d
    push bc                                       ; $6e58: $c5
    ld [hl], c                                    ; $6e59: $71
    and c                                         ; $6e5a: $a1
    ld h, h                                       ; $6e5b: $64
    rst $20                                       ; $6e5c: $e7
    ld h, l                                       ; $6e5d: $65
    ld c, $5f                                     ; $6e5e: $0e $5f
    ld h, a                                       ; $6e60: $67
    call c, Call_03a_7c63                         ; $6e61: $dc $63 $7c
    db $dd                                        ; $6e64: $dd
    ld h, e                                       ; $6e65: $63
    and h                                         ; $6e66: $a4
    adc $73                                       ; $6e67: $ce $73
    cp $65                                        ; $6e69: $fe $65
    ld h, $71                                     ; $6e6b: $26 $71
    push hl                                       ; $6e6d: $e5
    rla                                           ; $6e6e: $17
    sbc l                                         ; $6e6f: $9d
    push af                                       ; $6e70: $f5
    rst $28                                       ; $6e71: $ef
    dec b                                         ; $6e72: $05
    adc b                                         ; $6e73: $88
    ld h, e                                       ; $6e74: $63
    rst $20                                       ; $6e75: $e7
    ld h, a                                       ; $6e76: $67
    ld [de], a                                    ; $6e77: $12
    ld b, a                                       ; $6e78: $47
    adc l                                         ; $6e79: $8d
    cp a                                          ; $6e7a: $bf
    ld d, b                                       ; $6e7b: $50
    ld e, d                                       ; $6e7c: $5a
    ld c, l                                       ; $6e7d: $4d
    ret                                           ; $6e7e: $c9


    dec de                                        ; $6e7f: $1b
    nop                                           ; $6e80: $00
    halt                                          ; $6e81: $76
    ld a, [de]                                    ; $6e82: $1a
    cp e                                          ; $6e83: $bb
    ld h, [hl]                                    ; $6e84: $66
    jp z, $ce4b                                   ; $6e85: $ca $4b $ce

    ld [c], a                                     ; $6e88: $e2
    jr c, jr_03a_6e57                             ; $6e89: $38 $cc

    ld d, c                                       ; $6e8b: $51
    ld h, e                                       ; $6e8c: $63
    rst $10                                       ; $6e8d: $d7
    add d                                         ; $6e8e: $82
    inc [hl]                                      ; $6e8f: $34
    pop bc                                        ; $6e90: $c1
    ld e, a                                       ; $6e91: $5f
    ld hl, sp-$0e                                 ; $6e92: $f8 $f2
    adc e                                         ; $6e94: $8b
    db $ed                                        ; $6e95: $ed
    sbc $65                                       ; $6e96: $de $65
    ld e, a                                       ; $6e98: $5f
    ld d, [hl]                                    ; $6e99: $56
    ld h, c                                       ; $6e9a: $61
    rst $38                                       ; $6e9b: $ff
    ld b, l                                       ; $6e9c: $45
    ld [hl+], a                                   ; $6e9d: $22
    db $f4                                        ; $6e9e: $f4
    cp d                                          ; $6e9f: $ba
    cp d                                          ; $6ea0: $ba
    ld c, e                                       ; $6ea1: $4b
    and a                                         ; $6ea2: $a7
    adc [hl]                                      ; $6ea3: $8e
    ld [de], a                                    ; $6ea4: $12
    add hl, sp                                    ; $6ea5: $39
    sub e                                         ; $6ea6: $93
    jr c, jr_03a_6f13                             ; $6ea7: $38 $6a

    db $fc                                        ; $6ea9: $fc
    ld d, l                                       ; $6eaa: $55
    ld e, [hl]                                    ; $6eab: $5e
    ld e, d                                       ; $6eac: $5a
    db $fc                                        ; $6ead: $fc
    dec de                                        ; $6eae: $1b
    nop                                           ; $6eaf: $00
    db $dd                                        ; $6eb0: $dd
    inc bc                                        ; $6eb1: $03
    dec de                                        ; $6eb2: $1b
    db $e4                                        ; $6eb3: $e4
    jr c, jr_03a_6f23                             ; $6eb4: $38 $6d

    cp b                                          ; $6eb6: $b8
    ld l, d                                       ; $6eb7: $6a
    add a                                         ; $6eb8: $87
    and [hl]                                      ; $6eb9: $a6
    dec h                                         ; $6eba: $25
    cp [hl]                                       ; $6ebb: $be
    db $f4                                        ; $6ebc: $f4
    sbc h                                         ; $6ebd: $9c
    sbc l                                         ; $6ebe: $9d
    add $ae                                       ; $6ebf: $c6 $ae
    sbc c                                         ; $6ec1: $99
    ld a, [c]                                     ; $6ec2: $f2
    sub d                                         ; $6ec3: $92
    or e                                          ; $6ec4: $b3
    jr c, jr_03a_6ed5                             ; $6ec5: $38 $0e

    ld l, c                                       ; $6ec7: $69
    xor b                                         ; $6ec8: $a8
    dec l                                         ; $6ec9: $2d
    cp [hl]                                       ; $6eca: $be
    adc $e1                                       ; $6ecb: $ce $e1
    xor a                                         ; $6ecd: $af
    ld a, [c]                                     ; $6ece: $f2
    jp nc, $afe2                                  ; $6ecf: $d2 $e2 $af

    halt                                          ; $6ed2: $76
    sub $51                                       ; $6ed3: $d6 $51

jr_03a_6ed5:
    ld b, e                                       ; $6ed5: $43
    sbc d                                         ; $6ed6: $9a
    or $e5                                        ; $6ed7: $f6 $e5
    cp [hl]                                       ; $6ed9: $be
    rst $28                                       ; $6eda: $ef
    push af                                       ; $6edb: $f5
    xor c                                         ; $6edc: $a9
    db $eb                                        ; $6edd: $eb
    ld a, [$efbe]                                 ; $6ede: $fa $be $ef
    ld c, b                                       ; $6ee1: $48
    add h                                         ; $6ee2: $84
    ld [hl], d                                    ; $6ee3: $72
    ld c, $7f                                     ; $6ee4: $0e $7f
    call Call_000_07f3                            ; $6ee6: $cd $f3 $07
    nop                                           ; $6ee9: $00
    or $ac                                        ; $6eea: $f6 $ac
    ld d, e                                       ; $6eec: $53
    ld b, a                                       ; $6eed: $47
    inc [hl]                                      ; $6eee: $34
    adc c                                         ; $6eef: $89
    ld d, c                                       ; $6ef0: $51
    sbc $e7                                       ; $6ef1: $de $e7
    inc e                                         ; $6ef3: $1c
    cp $2a                                        ; $6ef4: $fe $2a
    cpl                                           ; $6ef6: $2f
    dec l                                         ; $6ef7: $2d
    cp $c2                                        ; $6ef8: $fe $c2
    sub a                                         ; $6efa: $97
    ld e, a                                       ; $6efb: $5f
    ld l, h                                       ; $6efc: $6c
    ldh a, [$d9]                                  ; $6efd: $f0 $d9
    cp a                                          ; $6eff: $bf
    adc b                                         ; $6f00: $88
    ld [hl], l                                    ; $6f01: $75
    ld bc, $2319                                  ; $6f02: $01 $19 $23
    push hl                                       ; $6f05: $e5
    sbc $45                                       ; $6f06: $de $45
    add l                                         ; $6f08: $85
    sub l                                         ; $6f09: $95
    ld e, a                                       ; $6f0a: $5f
    ld c, c                                       ; $6f0b: $49
    ld e, l                                       ; $6f0c: $5d
    sub b                                         ; $6f0d: $90
    ld h, $d8                                     ; $6f0e: $26 $d8
    ld a, [$eea7]                                 ; $6f10: $fa $a7 $ee

jr_03a_6f13:
    call c, Call_03a_42d2                         ; $6f13: $dc $d2 $42
    and d                                         ; $6f16: $a2
    rst $08                                       ; $6f17: $cf
    ld e, c                                       ; $6f18: $59
    ld [hl], a                                    ; $6f19: $77
    dec b                                         ; $6f1a: $05
    and l                                         ; $6f1b: $a5
    ld l, [hl]                                    ; $6f1c: $6e
    and l                                         ; $6f1d: $a5
    or h                                          ; $6f1e: $b4
    ld [hl], h                                    ; $6f1f: $74
    cp d                                          ; $6f20: $ba
    swap c                                        ; $6f21: $cb $31

jr_03a_6f23:
    pop hl                                        ; $6f23: $e1
    or e                                          ; $6f24: $b3
    jr c, jr_03a_6f55                             ; $6f25: $38 $2e

    ld [hl], d                                    ; $6f27: $72
    and c                                         ; $6f28: $a1
    ld h, h                                       ; $6f29: $64
    inc h                                         ; $6f2a: $24
    ld b, h                                       ; $6f2b: $44
    jp hl                                         ; $6f2c: $e9


    jp nz, $5711                                  ; $6f2d: $c2 $11 $57

    ld d, d                                       ; $6f30: $52
    ld b, a                                       ; $6f31: $47
    xor h                                         ; $6f32: $ac
    ld d, $62                                     ; $6f33: $16 $62
    db $fc                                        ; $6f35: $fc
    cp d                                          ; $6f36: $ba
    ld de, $ea63                                  ; $6f37: $11 $63 $ea
    ld [$a82e], a                                 ; $6f3a: $ea $2e $a8
    sbc c                                         ; $6f3d: $99
    call nc, $001b                                ; $6f3e: $d4 $1b $00
    ld bc, $1c94                                  ; $6f41: $01 $94 $1c
    and $42                                       ; $6f44: $e6 $42
    ld b, a                                       ; $6f46: $47
    sbc a                                         ; $6f47: $9f
    dec bc                                        ; $6f48: $0b
    rra                                           ; $6f49: $1f
    ld a, d                                       ; $6f4a: $7a
    add hl, hl                                    ; $6f4b: $29
    ld a, a                                       ; $6f4c: $7f
    inc bc                                        ; $6f4d: $03
    or $0f                                        ; $6f4e: $f6 $0f
    ld c, c                                       ; $6f50: $49
    di                                            ; $6f51: $f3
    ld d, e                                       ; $6f52: $53
    ld l, $f8                                     ; $6f53: $2e $f8

jr_03a_6f55:
    inc hl                                        ; $6f55: $23

Call_03a_6f56:
    sbc d                                         ; $6f56: $9a
    rla                                           ; $6f57: $17
    add sp, $7d                                   ; $6f58: $e8 $7d
    adc $73                                       ; $6f5a: $ce $73
    and $05                                       ; $6f5c: $e6 $05
    ld a, d                                       ; $6f5e: $7a
    reti                                          ; $6f5f: $d9


    ld sp, $9cc7                                  ; $6f60: $31 $c7 $9c
    ld [hl-], a                                   ; $6f63: $32
    ld l, l                                       ; $6f64: $6d
    ld b, $46                                     ; $6f65: $06 $46
    and c                                         ; $6f67: $a1
    xor $17                                       ; $6f68: $ee $17
    db $dd                                        ; $6f6a: $dd
    adc h                                         ; $6f6b: $8c
    inc hl                                        ; $6f6c: $23
    add $9f                                       ; $6f6d: $c6 $9f
    rst $20                                       ; $6f6f: $e7
    adc $93                                       ; $6f70: $ce $93
    add [hl]                                      ; $6f72: $86
    ld d, b                                       ; $6f73: $50
    add $a8                                       ; $6f74: $c6 $a8
    rst $30                                       ; $6f76: $f7
    adc $93                                       ; $6f77: $ce $93
    scf                                           ; $6f79: $37
    db $ed                                        ; $6f7a: $ed
    ld [hl], l                                    ; $6f7b: $75
    ld h, c                                       ; $6f7c: $61
    jp z, $c42a                                   ; $6f7d: $ca $2a $c4

    ld h, $f7                                     ; $6f80: $26 $f7
    db $ec                                        ; $6f82: $ec
    inc [hl]                                      ; $6f83: $34
    and [hl]                                      ; $6f84: $a6
    ld [hl], l                                    ; $6f85: $75
    ld c, d                                       ; $6f86: $4a
    ret z                                         ; $6f87: $c8

    ld c, c                                       ; $6f88: $49
    adc $73                                       ; $6f89: $ce $73
    ld d, $c7                                     ; $6f8b: $16 $c7
    dec d                                         ; $6f8d: $15
    ld c, [hl]                                    ; $6f8e: $4e
    rst $18                                       ; $6f8f: $df

jr_03a_6f90:
    cp h                                          ; $6f90: $bc
    ld [hl], h                                    ; $6f91: $74
    jp hl                                         ; $6f92: $e9


    ld b, d                                       ; $6f93: $42
    ret                                           ; $6f94: $c9


    ld a, [bc]                                    ; $6f95: $0a
    ld c, l                                       ; $6f96: $4d
    jr nc, jr_03a_6f90                            ; $6f97: $30 $f7

    adc e                                         ; $6f99: $8b
    ld l, [hl]                                    ; $6f9a: $6e
    sub l                                         ; $6f9b: $95
    sub a                                         ; $6f9c: $97
    ld d, $ff                                     ; $6f9d: $16 $ff
    ld b, $17                                     ; $6f9f: $06 $17
    rlca                                          ; $6fa1: $07
    add a                                         ; $6fa2: $87
    add hl, bc                                    ; $6fa3: $09
    sbc a                                         ; $6fa4: $9f
    db $fd                                        ; $6fa5: $fd
    adc e                                         ; $6fa6: $8b
    ld e, b                                       ; $6fa7: $58
    rla                                           ; $6fa8: $17
    sub b                                         ; $6fa9: $90
    ld sp, $e052                                  ; $6faa: $31 $52 $e0
    add e                                         ; $6fad: $83
    db $e4                                        ; $6fae: $e4
    ld c, l                                       ; $6faf: $4d
    ld a, e                                       ; $6fb0: $7b
    db $dd                                        ; $6fb1: $dd
    cpl                                           ; $6fb2: $2f

jr_03a_6fb3:
    or [hl]                                       ; $6fb3: $b6
    dec de                                        ; $6fb4: $1b
    nop                                           ; $6fb5: $00
    ld bc, $d8e2                                  ; $6fb6: $01 $e2 $d8
    ld sp, hl                                     ; $6fb9: $f9
    ld d, c                                       ; $6fba: $51
    db $e3                                        ; $6fbb: $e3
    sbc a                                         ; $6fbc: $9f
    ld a, [hl-]                                   ; $6fbd: $3a
    ld [$f73c], a                                 ; $6fbe: $ea $3c $f7
    add [hl]                                      ; $6fc1: $86
    sbc l                                         ; $6fc2: $9d
    sbc h                                         ; $6fc3: $9c
    ld c, c                                       ; $6fc4: $49
    sbc h                                         ; $6fc5: $9c
    jp $01e1                                      ; $6fc6: $c3 $e1 $01


    and [hl]                                      ; $6fc9: $a6
    jr nc, jr_03a_6fb3                            ; $6fca: $30 $e7

    cp c                                          ; $6fcc: $b9
    or b                                          ; $6fcd: $b0
    cp b                                          ; $6fce: $b8
    ld a, [$b9e7]                                 ; $6fcf: $fa $e7 $b9

jr_03a_6fd2:
    ld [$d8aa], a                                 ; $6fd2: $ea $aa $d8
    ld h, b                                       ; $6fd5: $60
    db $dd                                        ; $6fd6: $dd
    nop                                           ; $6fd7: $00
    or $59                                        ; $6fd8: $f6 $59
    ld e, $be                                     ; $6fda: $1e $be
    ld a, [hl]                                    ; $6fdc: $7e
    ld e, c                                       ; $6fdd: $59
    ld hl, $169a                                  ; $6fde: $21 $9a $16
    di                                            ; $6fe1: $f3
    ld e, [hl]                                    ; $6fe2: $5e
    ld [hl], a                                    ; $6fe3: $77
    dec sp                                        ; $6fe4: $3b
    and c                                         ; $6fe5: $a1
    xor $8b                                       ; $6fe6: $ee $8b
    xor e                                         ; $6fe8: $ab
    ld sp, $b9e7                                  ; $6fe9: $31 $e7 $b9
    ld d, b                                       ; $6fec: $50
    ld e, d                                       ; $6fed: $5a
    ld c, l                                       ; $6fee: $4d
    sbc c                                         ; $6fef: $99
    ld [hl], c                                    ; $6ff0: $71
    and d                                         ; $6ff1: $a2
    reti                                          ; $6ff2: $d9


    inc de                                        ; $6ff3: $13
    nop                                           ; $6ff4: $00
    ld bc, $1892                                  ; $6ff5: $01 $92 $18
    ld [hl], e                                    ; $6ff8: $73
    dec h                                         ; $6ff9: $25
    and a                                         ; $6ffa: $a7
    sub h                                         ; $6ffb: $94
    xor d                                         ; $6ffc: $aa
    scf                                           ; $6ffd: $37
    nop                                           ; $6ffe: $00
    add c                                         ; $6fff: $81
    rst $18                                       ; $7000: $df
    and c                                         ; $7001: $a1
    adc $e2                                       ; $7002: $ce $e2
    jr c, jr_03a_6fd2                             ; $7004: $38 $cc

    add l                                         ; $7006: $85
    adc [hl]                                      ; $7007: $8e
    ld a, $57                                     ; $7008: $3e $57
    ld hl, $4a7a                                  ; $700a: $21 $7a $4a
    db $e4                                        ; $700d: $e4
    ldh a, [$fd]                                  ; $700e: $f0 $fd
    rst $18                                       ; $7010: $df
    dec bc                                        ; $7011: $0b
    and b                                         ; $7012: $a0
    db $e4                                        ; $7013: $e4
    xor d                                         ; $7014: $aa
    sbc d                                         ; $7015: $9a
    ldh [rNR22], a                                ; $7016: $e0 $17
    adc $e1                                       ; $7018: $ce $e1
    ld a, [hl+]                                   ; $701a: $2a
    ld c, l                                       ; $701b: $4d
    db $e3                                        ; $701c: $e3
    rst $30                                       ; $701d: $f7
    rst $08                                       ; $701e: $cf
    db $fd                                        ; $701f: $fd
    ld h, d                                       ; $7020: $62
    ld a, [$c95c]                                 ; $7021: $fa $5c $c9
    ld e, c                                       ; $7024: $59
    inc e                                         ; $7025: $1c
    ld h, a                                       ; $7026: $67
    ld [hl], c                                    ; $7027: $71
    adc l                                         ; $7028: $8d
    ld a, [c]                                     ; $7029: $f2
    ld a, d                                       ; $702a: $7a
    inc bc                                        ; $702b: $03
    cp l                                          ; $702c: $bd
    add d                                         ; $702d: $82
    ldh a, [$39]                                  ; $702e: $f0 $39
    ld e, h                                       ; $7030: $5c
    cp a                                          ; $7031: $bf
    xor h                                         ; $7032: $ac
    db $10                                        ; $7033: $10
    rst $30                                       ; $7034: $f7
    push bc                                       ; $7035: $c5
    push de                                       ; $7036: $d5
    sbc b                                         ; $7037: $98
    rst $30                                       ; $7038: $f7
    ld [bc], a                                    ; $7039: $02
    dec de                                        ; $703a: $1b
    db $eb                                        ; $703b: $eb
    ld d, b                                       ; $703c: $50
    jr c, @-$31                                   ; $703d: $38 $cd

    and [hl]                                      ; $703f: $a6
    db $eb                                        ; $7040: $eb
    inc [hl]                                      ; $7041: $34
    ld h, d                                       ; $7042: $62
    add l                                         ; $7043: $85
    ret c                                         ; $7044: $d8

    ld a, h                                       ; $7045: $7c
    ld [$e77e], a                                 ; $7046: $ea $7e $e7
    sub [hl]                                      ; $7049: $96
    ld [hl], h                                    ; $704a: $74
    jp nc, Jump_000_3834                          ; $704b: $d2 $34 $38

    db $eb                                        ; $704e: $eb
    adc $2e                                       ; $704f: $ce $2e
    add hl, de                                    ; $7051: $19
    and e                                         ; $7052: $a3
    sbc $eb                                       ; $7053: $de $eb
    ld l, [hl]                                    ; $7055: $6e
    daa                                           ; $7056: $27
    call nc, $ce79                                ; $7057: $d4 $79 $ce
    ld a, $21                                     ; $705a: $3e $21
    sbc b                                         ; $705c: $98
    cpl                                           ; $705d: $2f
    ld d, c                                       ; $705e: $51
    pop hl                                        ; $705f: $e1
    dec bc                                        ; $7060: $0b
    and l                                         ; $7061: $a5
    push de                                       ; $7062: $d5
    sub h                                         ; $7063: $94
    add hl, de                                    ; $7064: $19
    daa                                           ; $7065: $27
    sbc d                                         ; $7066: $9a
    dec a                                         ; $7067: $3d
    ld bc, $3681                                  ; $7068: $01 $81 $36
    scf                                           ; $706b: $37
    nop                                           ; $706c: $00
    cp l                                          ; $706d: $bd
    inc l                                         ; $706e: $2c
    adc $66                                       ; $706f: $ce $66
    call nc, $85d8                                ; $7071: $d4 $d8 $85
    adc e                                         ; $7074: $8b
    ld c, [hl]                                    ; $7075: $4e
    ld d, a                                       ; $7076: $57
    ld e, d                                       ; $7077: $5a
    ld b, a                                       ; $7078: $47
    ld d, d                                       ; $7079: $52
    pop hl                                        ; $707a: $e1
    dec hl                                        ; $707b: $2b
    xor c                                         ; $707c: $a9
    adc e                                         ; $707d: $8b
    ld b, h                                       ; $707e: $44
    sbc e                                         ; $707f: $9b
    sbc a                                         ; $7080: $9f
    ld d, b                                       ; $7081: $50
    add hl, hl                                    ; $7082: $29
    sub l                                         ; $7083: $95
    rst $30                                       ; $7084: $f7
    xor c                                         ; $7085: $a9
    rst $30                                       ; $7086: $f7
    ld [bc], a                                    ; $7087: $02
    inc de                                        ; $7088: $13
    ld [hl], a                                    ; $7089: $77
    call z, $c7f1                                 ; $708a: $cc $f1 $c7
    ld c, l                                       ; $708d: $4d
    sbc e                                         ; $708e: $9b
    add c                                         ; $708f: $81
    ld d, c                                       ; $7090: $51

jr_03a_7091:
    xor b                                         ; $7091: $a8
    scf                                           ; $7092: $37
    nop                                           ; $7093: $00
    rst $20                                       ; $7094: $e7
    ret                                           ; $7095: $c9


    sbc e                                         ; $7096: $9b
    or $ba                                        ; $7097: $f6 $ba
    jr nc, jr_03a_7100                            ; $7099: $30 $65

    ld h, $eb                                     ; $709b: $26 $eb
    ld d, b                                       ; $709d: $50
    ld e, [hl]                                    ; $709e: $5e
    ld b, [hl]                                    ; $709f: $46
    call c, Call_000_25b9                         ; $70a0: $dc $b9 $25
    sbc l                                         ; $70a3: $9d
    inc [hl]                                      ; $70a4: $34
    dec c                                         ; $70a5: $0d
    adc $ba                                       ; $70a6: $ce $ba
    or e                                          ; $70a8: $b3
    ld c, e                                       ; $70a9: $4b
    add $a8                                       ; $70aa: $c6 $a8
    rst $30                                       ; $70ac: $f7
    cp d                                          ; $70ad: $ba
    ld e, l                                       ; $70ae: $5d
    ld [c], a                                     ; $70af: $e2
    jr c, jr_03a_7091                             ; $70b0: $38 $df

    or h                                          ; $70b2: $b4
    ld e, d                                       ; $70b3: $5a
    ld e, h                                       ; $70b4: $5c
    and h                                         ; $70b5: $a4
    adc $24                                       ; $70b6: $ce $24
    xor [hl]                                      ; $70b8: $ae
    db $fc                                        ; $70b9: $fc
    ld a, [bc]                                    ; $70ba: $0a
    ld c, l                                       ; $70bb: $4d
    ld [hl], h                                    ; $70bc: $74
    ld a, [c]                                     ; $70bd: $f2
    dec a                                         ; $70be: $3d
    nop                                           ; $70bf: $00
    ld a, l                                       ; $70c0: $7d
    ld [hl], e                                    ; $70c1: $73
    sub c                                         ; $70c2: $91
    ld [$e2e5], sp                                ; $70c3: $08 $e5 $e2
    ld h, e                                       ; $70c6: $63
    call z, $001b                                 ; $70c7: $cc $1b $00
    sub a                                         ; $70ca: $97
    cp b                                          ; $70cb: $b8
    xor d                                         ; $70cc: $aa
    dec bc                                        ; $70cd: $0b
    adc c                                         ; $70ce: $89
    ld a, a                                       ; $70cf: $7f
    cpl                                           ; $70d0: $2f
    add b                                         ; $70d1: $80
    sub d                                         ; $70d2: $92
    ld d, e                                       ; $70d3: $53
    ld b, d                                       ; $70d4: $42
    ld c, [hl]                                    ; $70d5: $4e
    ld [hl], d                                    ; $70d6: $72
    ld d, $c7                                     ; $70d7: $16 $c7
    ld d, l                                       ; $70d9: $55
    or d                                          ; $70da: $b2
    ld d, h                                       ; $70db: $54
    ld e, b                                       ; $70dc: $58
    and a                                         ; $70dd: $a7
    xor $57                                       ; $70de: $ee $57
    and c                                         ; $70e0: $a1
    ld b, h                                       ; $70e1: $44
    sbc $00                                       ; $70e2: $de $00
    sub a                                         ; $70e4: $97
    ld de, $9ca1                                  ; $70e5: $11 $a1 $9c
    push bc                                       ; $70e8: $c5
    ld [hl], c                                    ; $70e9: $71
    jp nz, $d10a                                  ; $70ea: $c2 $0a $d1

    ld d, e                                       ; $70ed: $53
    ld b, [hl]                                    ; $70ee: $46
    adc l                                         ; $70ef: $8d
    xor c                                         ; $70f0: $a9
    dec hl                                        ; $70f1: $2b
    xor l                                         ; $70f2: $ad
    inc hl                                        ; $70f3: $23
    xor c                                         ; $70f4: $a9
    scf                                           ; $70f5: $37
    nop                                           ; $70f6: $00
    rla                                           ; $70f7: $17
    rlca                                          ; $70f8: $07
    pop hl                                        ; $70f9: $e1
    or e                                          ; $70fa: $b3
    jr c, jr_03a_7147                             ; $70fb: $38 $4a

    di                                            ; $70fd: $f3
    ld a, c                                       ; $70fe: $79
    xor a                                         ; $70ff: $af

jr_03a_7100:
    rrca                                          ; $7100: $0f
    rla                                           ; $7101: $17
    ld e, c                                       ; $7102: $59
    rst $20                                       ; $7103: $e7
    inc l                                         ; $7104: $2c
    adc [hl]                                      ; $7105: $8e
    ld d, e                                       ; $7106: $53
    db $db                                        ; $7107: $db
    sub d                                         ; $7108: $92
    dec bc                                        ; $7109: $0b
    db $d3                                        ; $710a: $d3
    or e                                          ; $710b: $b3
    ld c, [hl]                                    ; $710c: $4e
    sbc l                                         ; $710d: $9d
    ld a, a                                       ; $710e: $7f
    adc c                                         ; $710f: $89
    call c, $c731                                 ; $7110: $dc $31 $c7
    ld e, $37                                     ; $7113: $1e $37
    ld l, l                                       ; $7115: $6d
    ld b, $46                                     ; $7116: $06 $46
    and c                                         ; $7118: $a1
    ld l, $4c                                     ; $7119: $2e $4c
    add hl, de                                    ; $711b: $19

jr_03a_711c:
    ld c, e                                       ; $711c: $4b
    ld c, c                                       ; $711d: $49
    cp l                                          ; $711e: $bd
    ld bc, $2fdd                                  ; $711f: $01 $dd $2f
    db $e3                                        ; $7122: $e3
    add d                                         ; $7123: $82
    xor a                                         ; $7124: $af
    di                                            ; $7125: $f3
    inc [hl]                                      ; $7126: $34
    call $9f37                                    ; $7127: $cd $37 $9f
    dec bc                                        ; $712a: $0b
    ld d, e                                       ; $712b: $53
    ld b, [hl]                                    ; $712c: $46
    ld c, l                                       ; $712d: $4d
    ld e, l                                       ; $712e: $5d
    ld l, c                                       ; $712f: $69
    dec e                                         ; $7130: $1d
    ld c, c                                       ; $7131: $49
    db $ed                                        ; $7132: $ed
    add hl, bc                                    ; $7133: $09
    nop                                           ; $7134: $00
    ld h, a                                       ; $7135: $67
    scf                                           ; $7136: $37
    ld h, d                                       ; $7137: $62
    add l                                         ; $7138: $85
    ret c                                         ; $7139: $d8

    ld a, h                                       ; $713a: $7c
    xor $57                                       ; $713b: $ee $57
    ld a, [hl]                                    ; $713d: $7e
    rla                                           ; $713e: $17
    or l                                          ; $713f: $b5
    adc [hl]                                      ; $7140: $8e
    ld d, b                                       ; $7141: $50
    ld l, h                                       ; $7142: $6c
    ld a, [hl]                                    ; $7143: $7e
    rst $20                                       ; $7144: $e7
    sub [hl]                                      ; $7145: $96
    ld [hl], h                                    ; $7146: $74

jr_03a_7147:
    jp nc, Jump_000_3834                          ; $7147: $d2 $34 $38

    db $eb                                        ; $714a: $eb
    adc $2e                                       ; $714b: $ce $2e
    add hl, de                                    ; $714d: $19
    and e                                         ; $714e: $a3
    sbc $eb                                       ; $714f: $de $eb
    dec d                                         ; $7151: $15
    ld c, h                                       ; $7152: $4c
    ld sp, hl                                     ; $7153: $f9
    push de                                       ; $7154: $d5
    ld c, l                                       ; $7155: $4d
    db $eb                                        ; $7156: $eb
    inc e                                         ; $7157: $1c
    and $c2                                       ; $7158: $e6 $c2
    db $f4                                        ; $715a: $f4
    xor h                                         ; $715b: $ac
    ld d, e                                       ; $715c: $53
    rst $30                                       ; $715d: $f7
    sub c                                         ; $715e: $91
    add sp, $29                                   ; $715f: $e8 $29
    ei                                            ; $7161: $fb
    sub l                                         ; $7162: $95
    call nc, $d299                                ; $7163: $d4 $99 $d2
    adc b                                         ; $7166: $88
    sub c                                         ; $7167: $91
    ld a, d                                       ; $7168: $7a
    rst $18                                       ; $7169: $df
    ld [hl], a                                    ; $716a: $77
    inc h                                         ; $716b: $24
    or d                                          ; $716c: $b2
    ld c, [hl]                                    ; $716d: $4e
    sbc l                                         ; $716e: $9d
    push bc                                       ; $716f: $c5
    ld [hl], c                                    ; $7170: $71
    and l                                         ; $7171: $a5
    ld [hl], l                                    ; $7172: $75
    db $e4                                        ; $7173: $e4
    dec b                                         ; $7174: $05
    ld d, e                                       ; $7175: $53
    rst $20                                       ; $7176: $e7
    add hl, sp                                    ; $7177: $39
    add a                                         ; $7178: $87
    cp a                                          ; $7179: $bf
    or b                                          ; $717a: $b0
    inc a                                         ; $717b: $3c
    db $f4                                        ; $717c: $f4
    di                                            ; $717d: $f3
    ld e, h                                       ; $717e: $5c
    sbc b                                         ; $717f: $98
    and l                                         ; $7180: $a5
    sub l                                         ; $7181: $95
    ld a, [c]                                     ; $7182: $f2
    ld a, d                                       ; $7183: $7a
    cpl                                           ; $7184: $2f
    add b                                         ; $7185: $80
    sub d                                         ; $7186: $92
    jp Jump_03a_779c                              ; $7187: $c3 $9c $77


    sbc [hl]                                      ; $718a: $9e
    inc hl                                        ; $718b: $23
    xor [hl]                                      ; $718c: $ae
    sub d                                         ; $718d: $92
    and l                                         ; $718e: $a5
    ld b, d                                       ; $718f: $42
    ld e, c                                       ; $7190: $59
    jr z, jr_03a_711c                             ; $7191: $28 $89

    ld sp, $006f                                  ; $7193: $31 $6f $00
    or $59                                        ; $7196: $f6 $59
    ld e, $3e                                     ; $7198: $1e $3e
    ld c, l                                       ; $719a: $4d
    db $eb                                        ; $719b: $eb
    adc $91                                       ; $719c: $ce $91
    scf                                           ; $719e: $37
    cp c                                          ; $719f: $b9
    ld a, $5f                                     ; $71a0: $3e $5f
    xor d                                         ; $71a2: $aa
    db $d3                                        ; $71a3: $d3
    ld a, d                                       ; $71a4: $7a

Call_03a_71a5:
    xor a                                         ; $71a5: $af
    cp e                                          ; $71a6: $bb
    sbc l                                         ; $71a7: $9d

jr_03a_71a8:
    ld d, b                                       ; $71a8: $50
    rst $30                                       ; $71a9: $f7
    push bc                                       ; $71aa: $c5
    push de                                       ; $71ab: $d5
    sbc b                                         ; $71ac: $98
    di                                            ; $71ad: $f3
    sbc h                                         ; $71ae: $9c
    ld a, l                                       ; $71af: $7d
    ld b, d                                       ; $71b0: $42
    jr nc, @+$61                                  ; $71b1: $30 $5f

    and d                                         ; $71b3: $a2
    or $04                                        ; $71b4: $f6 $04
    ld bc, $1892                                  ; $71b6: $01 $92 $18
    ld [hl], e                                    ; $71b9: $73
    dec h                                         ; $71ba: $25
    and a                                         ; $71bb: $a7
    sub h                                         ; $71bc: $94
    xor d                                         ; $71bd: $aa
    scf                                           ; $71be: $37
    nop                                           ; $71bf: $00
    ld d, a                                       ; $71c0: $57
    rst $20                                       ; $71c1: $e7
    ld [c], a                                     ; $71c2: $e2
    rst $10                                       ; $71c3: $d7
    sbc l                                         ; $71c4: $9d
    ld d, [hl]                                    ; $71c5: $56
    dec d                                         ; $71c6: $15
    rst $28                                       ; $71c7: $ef
    ld e, l                                       ; $71c8: $5d
    add $55                                       ; $71c9: $c6 $55
    jp c, Jump_000_231e                           ; $71cb: $da $1e $23

    ld [hl], l                                    ; $71ce: $75
    ld h, $71                                     ; $71cf: $26 $71
    inc l                                         ; $71d1: $2c
    db $eb                                        ; $71d2: $eb
    adc b                                         ; $71d3: $88
    adc e                                         ; $71d4: $8b
    add hl, sp                                    ; $71d5: $39
    rst $08                                       ; $71d6: $cf
    reti                                          ; $71d7: $d9


    ccf                                           ; $71d8: $3f
    inc h                                         ; $71d9: $24
    call Call_000_00df                            ; $71da: $cd $df $00
    ld a, l                                       ; $71dd: $7d
    jr c, jr_03a_71a8                             ; $71de: $38 $c8

    ld l, c                                       ; $71e0: $69
    db $fc                                        ; $71e1: $fc
    reti                                          ; $71e2: $d9


    ccf                                           ; $71e3: $3f
    inc h                                         ; $71e4: $24
    call Call_000_00df                            ; $71e5: $cd $df $00
    db $dd                                        ; $71e8: $dd
    ld a, e                                       ; $71e9: $7b
    dec b                                         ; $71ea: $05
    and a                                         ; $71eb: $a7
    ld [hl], $3d                                  ; $71ec: $36 $3d
    rst $10                                       ; $71ee: $d7
    scf                                           ; $71ef: $37

jr_03a_71f0:
    ld b, a                                       ; $71f0: $47
    sbc l                                         ; $71f1: $9d
    ret                                           ; $71f2: $c9


    ld a, [hl-]                                   ; $71f3: $3a
    add a                                         ; $71f4: $87
    xor c                                         ; $71f5: $a9
    add hl, de                                    ; $71f6: $19
    dec h                                         ; $71f7: $25
    dec d                                         ; $71f8: $15
    ld a, $eb                                     ; $71f9: $3e $eb
    ld c, a                                       ; $71fb: $4f
    cp a                                          ; $71fc: $bf
    ld b, e                                       ; $71fd: $43
    cp l                                          ; $71fe: $bd
    ld h, a                                       ; $71ff: $67
    and a                                         ; $7200: $a7
    inc sp                                        ; $7201: $33

jr_03a_7202:
    xor a                                         ; $7202: $af
    ld l, l                                       ; $7203: $6d
    pop af                                        ; $7204: $f1
    ld [hl], c                                    ; $7205: $71
    push af                                       ; $7206: $f5
    sub a                                         ; $7207: $97
    sbc h                                         ; $7208: $9c
    ret                                           ; $7209: $c9


    ld a, [hl-]                                   ; $720a: $3a
    rst $20                                       ; $720b: $e7
    ld [hl], b                                    ; $720c: $70
    ld a, l                                       ; $720d: $7d
    inc e                                         ; $720e: $1c
    inc b                                         ; $720f: $04
    dec d                                         ; $7210: $15
    sbc $bb                                       ; $7211: $de $bb
    ld a, b                                       ; $7213: $78
    ld hl, $f653                                  ; $7214: $21 $53 $f6
    rlca                                          ; $7217: $07
    ldh [$bd], a                                  ; $7218: $e0 $bd
    or e                                          ; $721a: $b3
    dec e                                         ; $721b: $1d
    ld sp, $0be1                                  ; $721c: $31 $e1 $0b
    cp [hl]                                       ; $721f: $be
    add $5f                                       ; $7220: $c6 $5f
    ld [hl], c                                    ; $7222: $71
    add h                                         ; $7223: $84
    ld a, [c]                                     ; $7224: $f2
    ld b, $67                                     ; $7225: $06 $67
    scf                                           ; $7227: $37
    ld h, d                                       ; $7228: $62
    add l                                         ; $7229: $85
    ret c                                         ; $722a: $d8

    ld a, h                                       ; $722b: $7c
    xor $cb                                       ; $722c: $ee $cb
    ld b, d                                       ; $722e: $42
    ld b, a                                       ; $722f: $47
    adc l                                         ; $7230: $8d
    add hl, sp                                    ; $7231: $39
    rst $08                                       ; $7232: $cf
    jp hl                                         ; $7233: $e9


    rla                                           ; $7234: $17
    rst $20                                       ; $7235: $e7
    pop hl                                        ; $7236: $e1
    ld a, e                                       ; $7237: $7b
    add a                                         ; $7238: $87
    ld d, $c7                                     ; $7239: $16 $c7
    ld d, l                                       ; $723b: $55
    sbc b                                         ; $723c: $98
    or e                                          ; $723d: $b3
    jr c, jr_03a_724e                             ; $723e: $38 $0e

    ld [hl], e                                    ; $7240: $73
    call nc, $a5d8                                ; $7241: $d4 $d8 $a5
    dec bc                                        ; $7244: $0b
    ld d, d                                       ; $7245: $52
    sbc d                                         ; $7246: $9a
    rst $08                                       ; $7247: $cf
    dec de                                        ; $7248: $1b
    nop                                           ; $7249: $00
    db $dd                                        ; $724a: $dd
    cpl                                           ; $724b: $2f
    ld [hl], c                                    ; $724c: $71
    ld d, l                                       ; $724d: $55

jr_03a_724e:
    rla                                           ; $724e: $17
    dec de                                        ; $724f: $1b
    sub c                                         ; $7250: $91
    cp d                                          ; $7251: $ba
    or a                                          ; $7252: $b7
    jr c, jr_03a_71f0                             ; $7253: $38 $9b

    sbc [hl]                                      ; $7255: $9e
    nop                                           ; $7256: $00
    cp l                                          ; $7257: $bd
    sbc l                                         ; $7258: $9d
    db $e4                                        ; $7259: $e4
    ld a, [hl]                                    ; $725a: $7e
    dec h                                         ; $725b: $25
    ld [hl], l                                    ; $725c: $75
    ld d, $c7                                     ; $725d: $16 $c7
    add hl, hl                                    ; $725f: $29
    rla                                           ; $7260: $17
    ld a, h                                       ; $7261: $7c
    ld e, h                                       ; $7262: $5c
    sub b                                         ; $7263: $90
    ld h, $98                                     ; $7264: $26 $98
    di                                            ; $7266: $f3
    ld a, a                                       ; $7267: $7f

jr_03a_7268:
    ld [hl], b                                    ; $7268: $70
    adc [hl]                                      ; $7269: $8e
    jr c, jr_03a_7202                             ; $726a: $38 $96

    push af                                       ; $726c: $f5
    cp $52                                        ; $726d: $fe $52
    ret c                                         ; $726f: $d8

    rst $08                                       ; $7270: $cf
    ld d, $77                                     ; $7271: $16 $77
    ld c, [hl]                                    ; $7273: $4e
    ld a, e                                       ; $7274: $7b
    jr z, jr_03a_7268                             ; $7275: $28 $f1

    ld b, $7d                                     ; $7277: $06 $7d
    ld [hl], e                                    ; $7279: $73
    sbc $79                                       ; $727a: $de $79
    ld [$ab88], a                                 ; $727c: $ea $88 $ab
    inc [hl]                                      ; $727f: $34
    ld l, l                                       ; $7280: $6d
    pop af                                        ; $7281: $f1
    and l                                         ; $7282: $a5
    and $8c                                       ; $7283: $e6 $8c
    ld a, e                                       ; $7285: $7b
    db $f4                                        ; $7286: $f4
    add hl, sp                                    ; $7287: $39
    adc e                                         ; $7288: $8b
    ld l, e                                       ; $7289: $6b
    sub h                                         ; $728a: $94
    rst $10                                       ; $728b: $d7
    dec de                                        ; $728c: $1b
    nop                                           ; $728d: $00
    ld d, a                                       ; $728e: $57
    jr nc, jr_03a_72f8                            ; $728f: $30 $67

    ld [hl], c                                    ; $7291: $71
    inc e                                         ; $7292: $1c
    dec [hl]                                      ; $7293: $35
    halt                                          ; $7294: $76

jr_03a_7295:
    jp hl                                         ; $7295: $e9


    add d                                         ; $7296: $82
    sub h                                         ; $7297: $94
    and $f3                                       ; $7298: $e6 $f3
    ld e, [hl]                                    ; $729a: $5e
    rst $30                                       ; $729b: $f7
    ld c, e                                       ; $729c: $4b
    ld e, h                                       ; $729d: $5c
    and e                                         ; $729e: $a3
    ld d, b                                       ; $729f: $50
    ld h, a                                       ; $72a0: $67
    ld [hl], c                                    ; $72a1: $71
    ld e, h                                       ; $72a2: $5c
    db $e4                                        ; $72a3: $e4
    adc h                                         ; $72a4: $8c
    inc de                                        ; $72a5: $13
    or $04                                        ; $72a6: $f6 $04
    add c                                         ; $72a8: $81
    ld [hl], $f0                                  ; $72a9: $36 $f0
    add l                                         ; $72ab: $85
    add hl, hl                                    ; $72ac: $29
    xor e                                         ; $72ad: $ab
    cp $4a                                        ; $72ae: $fe $4a
    jp z, $eebd                                   ; $72b0: $ca $bd $ee

    cp l                                          ; $72b3: $bd
    ld e, l                                       ; $72b4: $5d
    rla                                           ; $72b5: $17
    add $9c                                       ; $72b6: $c6 $9c
    ret                                           ; $72b8: $c9


    adc [hl]                                      ; $72b9: $8e
    ld a, h                                       ; $72ba: $7c
    ld c, a                                       ; $72bb: $4f
    nop                                           ; $72bc: $00
    halt                                          ; $72bd: $76
    ld a, [hl-]                                   ; $72be: $3a
    ld c, b                                       ; $72bf: $48
    ld a, $36                                     ; $72c0: $3e $36
    cp l                                          ; $72c2: $bd
    ld h, a                                       ; $72c3: $67
    and a                                         ; $72c4: $a7
    xor e                                         ; $72c5: $ab
    db $db                                        ; $72c6: $db
    or d                                          ; $72c7: $b2
    ld d, e                                       ; $72c8: $53
    ld a, [de]                                    ; $72c9: $1a
    db $f4                                        ; $72ca: $f4
    and [hl]                                      ; $72cb: $a6
    reti                                          ; $72cc: $d9


    ld [c], a                                     ; $72cd: $e2
    adc h                                         ; $72ce: $8c
    sub e                                         ; $72cf: $93
    sub a                                         ; $72d0: $97
    db $fd                                        ; $72d1: $fd
    ld h, d                                       ; $72d2: $62
    ld a, [$cb1c]                                 ; $72d3: $fa $1c $cb
    inc l                                         ; $72d6: $2c
    adc [hl]                                      ; $72d7: $8e
    xor e                                         ; $72d8: $ab
    cp c                                          ; $72d9: $b9
    sub d                                         ; $72da: $92
    dec bc                                        ; $72db: $0b
    sbc e                                         ; $72dc: $9b
    rst $38                                       ; $72dd: $ff
    dec de                                        ; $72de: $1b
    nop                                           ; $72df: $00
    add c                                         ; $72e0: $81
    ld [hl], $f0                                  ; $72e1: $36 $f0
    ld [hl], l                                    ; $72e3: $75
    dec bc                                        ; $72e4: $0b
    ld d, e                                       ; $72e5: $53
    ld d, [hl]                                    ; $72e6: $56
    db $fd                                        ; $72e7: $fd
    sub l                                         ; $72e8: $95
    sub h                                         ; $72e9: $94
    ld e, $00                                     ; $72ea: $1e $00
    cp l                                          ; $72ec: $bd
    call nc, $3e06                                ; $72ed: $d4 $06 $3e
    dec h                                         ; $72f0: $25
    db $e4                                        ; $72f1: $e4
    inc h                                         ; $72f2: $24
    ld h, a                                       ; $72f3: $67
    ld [hl], c                                    ; $72f4: $71
    ld e, h                                       ; $72f5: $5c
    db $e4                                        ; $72f6: $e4
    sub h                                         ; $72f7: $94

jr_03a_72f8:
    jr jr_03a_7295                                ; $72f8: $18 $9b

    ld [hl], h                                    ; $72fa: $74
    jp hl                                         ; $72fb: $e9


    ld l, d                                       ; $72fc: $6a
    or $4b                                        ; $72fd: $f6 $4b
    cp c                                          ; $72ff: $b9
    ld bc, $edc7                                  ; $7300: $01 $c7 $ed
    or d                                          ; $7303: $b2

jr_03a_7304:
    inc bc                                        ; $7304: $03
    or b                                          ; $7305: $b0
    sbc c                                         ; $7306: $99
    ld d, a                                       ; $7307: $57
    nop                                           ; $7308: $00
    rst $00                                       ; $7309: $c7
    xor h                                         ; $730a: $ac
    rst $30                                       ; $730b: $f7
    add a                                         ; $730c: $87
    ccf                                           ; $730d: $3f
    rst $08                                       ; $730e: $cf
    dec [hl]                                      ; $730f: $35
    xor h                                         ; $7310: $ac
    inc [hl]                                      ; $7311: $34
    ld a, [bc]                                    ; $7312: $0a
    ld h, $00                                     ; $7313: $26 $00
    rst $00                                       ; $7315: $c7
    inc l                                         ; $7316: $2c
    jr nc, jr_03a_7304                            ; $7317: $30 $eb

    adc [hl]                                      ; $7319: $8e
    ld d, b                                       ; $731a: $50
    ld [hl], d                                    ; $731b: $72
    and c                                         ; $731c: $a1
    jp $1ed8                                      ; $731d: $c3 $d8 $1e


    ld [hl], d                                    ; $7320: $72
    ld a, $01                                     ; $7321: $3e $01
    rst $00                                       ; $7323: $c7
    inc l                                         ; $7324: $2c
    ldh [$65], a                                  ; $7325: $e0 $65
    sbc [hl]                                      ; $7327: $9e
    add e                                         ; $7328: $83
    call c, $a463                                 ; $7329: $dc $63 $a4
    ld [bc], a                                    ; $732c: $02
    rst $00                                       ; $732d: $c7
    inc l                                         ; $732e: $2c
    ldh [$0d], a                                  ; $732f: $e0 $0d
    adc h                                         ; $7331: $8c
    ld a, c                                       ; $7332: $79
    xor [hl]                                      ; $7333: $ae
    and c                                         ; $7334: $a1
    ld [hl], $08                                  ; $7335: $36 $08
    db $db                                        ; $7337: $db
    dec hl                                        ; $7338: $2b
    nop                                           ; $7339: $00
    rst $00                                       ; $733a: $c7
    db $ec                                        ; $733b: $ec
    db $ec                                        ; $733c: $ec
    inc l                                         ; $733d: $2c
    ld a, [$d183]                                 ; $733e: $fa $83 $d1
    ld [c], a                                     ; $7341: $e2
    jp nz, Jump_000_2d34                          ; $7342: $c2 $34 $2d

    sub c                                         ; $7345: $91
    ld a, [bc]                                    ; $7346: $0a
    nop                                           ; $7347: $00
    rst $00                                       ; $7348: $c7
    db $ec                                        ; $7349: $ec
    and d                                         ; $734a: $a2
    sub $91                                       ; $734b: $d6 $91
    call nc, Call_000_2e79                        ; $734d: $d4 $79 $2e
    sub h                                         ; $7350: $94
    ld d, [hl]                                    ; $7351: $56
    ld d, e                                       ; $7352: $53
    ld h, [hl]                                    ; $7353: $66
    sbc h                                         ; $7354: $9c
    ld l, b                                       ; $7355: $68
    ld [bc], a                                    ; $7356: $02
    rst $00                                       ; $7357: $c7
    xor h                                         ; $7358: $ac
    rst $30                                       ; $7359: $f7
    rla                                           ; $735a: $17
    ld c, a                                       ; $735b: $4f
    ld c, c                                       ; $735c: $49
    nop                                           ; $735d: $00
    rst $00                                       ; $735e: $c7
    db $ec                                        ; $735f: $ec
    adc d                                         ; $7360: $8a
    sub a                                         ; $7361: $97
    ld d, $1f                                     ; $7362: $16 $1f
    nop                                           ; $7364: $00
    db $dd                                        ; $7365: $dd
    db $ed                                        ; $7366: $ed
    add h                                         ; $7367: $84
    ld a, [hl-]                                   ; $7368: $3a
    sub e                                         ; $7369: $93
    add l                                         ; $736a: $85
    add $b4                                       ; $736b: $c6 $b4
    call nz, $f1a6                                ; $736d: $c4 $a6 $f1
    ld a, e                                       ; $7370: $7b
    xor $32                                       ; $7371: $ee $32
    ld [hl+], a                                   ; $7373: $22
    sub h                                         ; $7374: $94
    ld [hl], e                                    ; $7375: $73
    jr c, jr_03a_739b                             ; $7376: $38 $23

    ld e, c                                       ; $7378: $59
    rst $20                                       ; $7379: $e7
    inc l                                         ; $737a: $2c
    adc [hl]                                      ; $737b: $8e
    dec bc                                        ; $737c: $0b
    db $d3                                        ; $737d: $d3
    adc e                                         ; $737e: $8b
    call $61af                                    ; $737f: $cd $af $61
    and h                                         ; $7382: $a4
    ld d, b                                       ; $7383: $50
    ld e, a                                       ; $7384: $5f
    ld [hl+], a                                   ; $7385: $22
    ld l, a                                       ; $7386: $6f
    nop                                           ; $7387: $00
    db $dd                                        ; $7388: $dd
    cpl                                           ; $7389: $2f
    db $e3                                        ; $738a: $e3
    add h                                         ; $738b: $84
    push de                                       ; $738c: $d5
    adc l                                         ; $738d: $8d
    ld b, d                                       ; $738e: $42
    db $dd                                        ; $738f: $dd
    rst $08                                       ; $7390: $cf
    pop hl                                        ; $7391: $e1
    ld a, d                                       ; $7392: $7a
    ld c, e                                       ; $7393: $4b
    sub $39                                       ; $7394: $d6 $39
    rst $08                                       ; $7396: $cf
    sbc l                                         ; $7397: $9d
    dec l                                         ; $7398: $2d
    xor [hl]                                      ; $7399: $ae
    rst $18                                       ; $739a: $df

jr_03a_739b:
    db $eb                                        ; $739b: $eb
    xor h                                         ; $739c: $ac
    db $eb                                        ; $739d: $eb
    di                                            ; $739e: $f3
    ld d, b                                       ; $739f: $50
    ld [$fdce], a                                 ; $73a0: $ea $ce $fd
    ld a, [hl-]                                   ; $73a3: $3a
    dec [hl]                                      ; $73a4: $35
    or l                                          ; $73a5: $b5
    rst $20                                       ; $73a6: $e7
    adc $76                                       ; $73a7: $ce $76
    call nz, $2f84                                ; $73a9: $c4 $84 $2f
    ld a, [hl]                                    ; $73ac: $7e
    ld e, c                                       ; $73ad: $59
    add l                                         ; $73ae: $85
    db $fd                                        ; $73af: $fd
    rst $28                                       ; $73b0: $ef
    dec b                                         ; $73b1: $05
    and h                                         ; $73b2: $a4
    db $ec                                        ; $73b3: $ec
    add e                                         ; $73b4: $83
    add hl, hl                                    ; $73b5: $29
    cp a                                          ; $73b6: $bf
    ld c, b                                       ; $73b7: $48
    add h                                         ; $73b8: $84
    ld [hl], d                                    ; $73b9: $72
    ld c, $7f                                     ; $73ba: $0e $7f
    ld h, $0b                                     ; $73bc: $26 $0b
    adc l                                         ; $73be: $8d
    ld l, c                                       ; $73bf: $69
    or [hl]                                       ; $73c0: $b6
    cp b                                          ; $73c1: $b8
    jp c, $1759                                   ; $73c2: $da $59 $17

    jp nc, Jump_03a_78e2                          ; $73c5: $d2 $e2 $78

    ldh a, [$df]                                  ; $73c8: $f0 $df
    nop                                           ; $73ca: $00
    halt                                          ; $73cb: $76
    ld a, [de]                                    ; $73cc: $1a
    add hl, sp                                    ; $73cd: $39
    call z, $a729                                 ; $73ce: $cc $29 $a7
    adc [hl]                                      ; $73d1: $8e
    add l                                         ; $73d2: $85
    inc hl                                        ; $73d3: $23
    sbc d                                         ; $73d4: $9a
    call nz, $2f28                                ; $73d5: $c4 $28 $2f
    rst $30                                       ; $73d8: $f7
    ld a, l                                       ; $73d9: $7d
    ld [hl], a                                    ; $73da: $77
    or e                                          ; $73db: $b3
    db $d3                                        ; $73dc: $d3
    ld a, c                                       ; $73dd: $79
    xor [hl]                                      ; $73de: $ae
    ld [hl], a                                    ; $73df: $77
    inc de                                        ; $73e0: $13
    jp $5b1e                                      ; $73e1: $c3 $1e $5b


    rst $30                                       ; $73e4: $f7
    ld c, e                                       ; $73e5: $4b
    ld e, h                                       ; $73e6: $5c
    and e                                         ; $73e7: $a3
    ld d, b                                       ; $73e8: $50
    ld h, a                                       ; $73e9: $67
    cp [hl]                                       ; $73ea: $be
    xor $b4                                       ; $73eb: $ee $b4
    sub a                                         ; $73ed: $97
    sub d                                         ; $73ee: $92
    dec a                                         ; $73ef: $3d
    ld bc, $2fdd                                  ; $73f0: $01 $dd $2f
    ld [hl], c                                    ; $73f3: $71
    ld d, l                                       ; $73f4: $55
    ld h, a                                       ; $73f5: $67
    ld [hl], c                                    ; $73f6: $71
    adc l                                         ; $73f7: $8d
    ld b, d                                       ; $73f8: $42
    db $dd                                        ; $73f9: $dd
    rst $08                                       ; $73fa: $cf
    ld a, h                                       ; $73fb: $7c
    db $dd                                        ; $73fc: $dd
    ld l, c                                       ; $73fd: $69
    reti                                          ; $73fe: $d9


    inc de                                        ; $73ff: $13
    nop                                           ; $7400: $00
    sub a                                         ; $7401: $97
    db $e3                                        ; $7402: $e3
    cpl                                           ; $7403: $2f
    ld l, h                                       ; $7404: $6c
    db $f4                                        ; $7405: $f4
    ld a, [c]                                     ; $7406: $f2
    db $eb                                        ; $7407: $eb
    or b                                          ; $7408: $b0
    ld a, a                                       ; $7409: $7f
    cp [hl]                                       ; $740a: $be
    call c, $7eeb                                 ; $740b: $dc $eb $7e

jr_03a_740e:
    add hl, de                                    ; $740e: $19
    rst $10                                       ; $740f: $d7
    jr nc, @+$54                                  ; $7410: $30 $52

    xor b                                         ; $7412: $a8
    rst $18                                       ; $7413: $df
    inc de                                        ; $7414: $13
    nop                                           ; $7415: $00
    ld a, l                                       ; $7416: $7d
    db $db                                        ; $7417: $db
    or h                                          ; $7418: $b4
    ld e, c                                       ; $7419: $59
    ld e, h                                       ; $741a: $5c
    and e                                         ; $741b: $a3
    db $fc                                        ; $741c: $fc

jr_03a_741d:
    or h                                          ; $741d: $b4
    ld [$ce4a], a                                 ; $741e: $ea $4a $ce
    ld [c], a                                     ; $7421: $e2
    jr c, jr_03a_740e                             ; $7422: $38 $ea

    xor b                                         ; $7424: $a8
    ld a, c                                       ; $7425: $79
    inc bc                                        ; $7426: $03
    ld a, l                                       ; $7427: $7d
    ld [$3e1a], a                                 ; $7428: $ea $1a $3e
    rst $08                                       ; $742b: $cf
    ld c, $75                                     ; $742c: $0e $75
    ld c, d                                       ; $742e: $4a
    sbc c                                         ; $742f: $99
    jp Jump_03a_5661                              ; $7430: $c3 $61 $56


    ld a, $e6                                     ; $7433: $3e $e6
    cp l                                          ; $7435: $bd
    ret nz                                        ; $7436: $c0

    ld b, [hl]                                    ; $7437: $46
    adc h                                         ; $7438: $8c
    cp c                                          ; $7439: $b9
    ldh [rPCM34], a                               ; $743a: $e0 $77
    jr z, @-$6d                                   ; $743c: $28 $91

    xor e                                         ; $743e: $ab
    or e                                          ; $743f: $b3
    ld d, b                                       ; $7440: $50
    db $e3                                        ; $7441: $e3
    ei                                            ; $7442: $fb
    cp h                                          ; $7443: $bc
    ld bc, $9c7d                                  ; $7444: $01 $7d $9c
    ld [hl], l                                    ; $7447: $75
    sbc l                                         ; $7448: $9d
    ld b, [hl]                                    ; $7449: $46
    add h                                         ; $744a: $84
    rst $08                                       ; $744b: $cf
    cp $45                                        ; $744c: $fe $45
    xor h                                         ; $744e: $ac
    rst $30                                       ; $744f: $f7
    ld a, d                                       ; $7450: $7a
    dec e                                         ; $7451: $1d
    add b                                         ; $7452: $80
    xor e                                         ; $7453: $ab
    cp $12                                        ; $7454: $fe $12
    ld a, a                                       ; $7456: $7f
    ld e, a                                       ; $7457: $5f
    and b                                         ; $7458: $a0

jr_03a_7459:
    cp h                                          ; $7459: $bc
    rst $28                                       ; $745a: $ef
    cp e                                          ; $745b: $bb
    db $db                                        ; $745c: $db
    cp c                                          ; $745d: $b9
    inc l                                         ; $745e: $2c
    xor l                                         ; $745f: $ad
    rst $38                                       ; $7460: $ff
    adc h                                         ; $7461: $8c
    xor e                                         ; $7462: $ab
    jp Jump_000_3fc2                              ; $7463: $c3 $c2 $3f


    jr c, jr_03a_741d                             ; $7466: $38 $b5

    rlca                                          ; $7468: $07
    nop                                           ; $7469: $00
    db $dd                                        ; $746a: $dd
    ld l, $71                                     ; $746b: $2e $71
    ld d, l                                       ; $746d: $55
    rst $10                                       ; $746e: $d7
    ld c, c                                       ; $746f: $49
    ld l, h                                       ; $7470: $6c
    pop af                                        ; $7471: $f1
    ld b, a                                       ; $7472: $47
    db $ed                                        ; $7473: $ed
    or c                                          ; $7474: $b1
    xor $bd                                       ; $7475: $ee $bd
    ld l, l                                       ; $7477: $6d
    db $eb                                        ; $7478: $eb
    sbc h                                         ; $7479: $9c
    ld [hl], d                                    ; $747a: $72
    and l                                         ; $747b: $a5
    ld a, h                                       ; $747c: $7c
    db $fd                                        ; $747d: $fd
    dec a                                         ; $747e: $3d
    ld bc, $3a76                                  ; $747f: $01 $76 $3a
    ld a, e                                       ; $7482: $7b
    ld a, d                                       ; $7483: $7a
    sbc b                                         ; $7484: $98
    dec c                                         ; $7485: $0d
    cp d                                          ; $7486: $ba
    ld [hl], a                                    ; $7487: $77
    ld e, c                                       ; $7488: $59
    ld a, [$95d4]                                 ; $7489: $fa $d4 $95
    call nc, Call_000_3b61                        ; $748c: $d4 $61 $3b
    jr c, @+$77                                   ; $748f: $38 $75

    ld d, $d7                                     ; $7491: $16 $d7
    jr z, jr_03a_7459                             ; $7493: $28 $c4

    dec d                                         ; $7495: $15
    sbc d                                         ; $7496: $9a
    and b                                         ; $7497: $a0
    db $eb                                        ; $7498: $eb
    rst $38                                       ; $7499: $ff
    ld a, d                                       ; $749a: $7a
    rst $28                                       ; $749b: $ef
    and d                                         ; $749c: $a2
    jp nz, $e3ca                                  ; $749d: $c2 $ca $e3

    ld e, b                                       ; $74a0: $58
    ld h, [hl]                                    ; $74a1: $66
    ld d, d                                       ; $74a2: $52
    add h                                         ; $74a3: $84
    add hl, sp                                    ; $74a4: $39
    db $eb                                        ; $74a5: $eb
    ld h, d                                       ; $74a6: $62
    ld a, [$c95c]                                 ; $74a7: $fa $5c $c9
    ld e, c                                       ; $74aa: $59
    inc e                                         ; $74ab: $1c
    ld d, a                                       ; $74ac: $57
    xor b                                         ; $74ad: $a8
    dec bc                                        ; $74ae: $0b
    sbc e                                         ; $74af: $9b
    ld a, a                                       ; $74b0: $7f
    cp l                                          ; $74b1: $bd
    ld bc, $cedd                                  ; $74b2: $01 $dd $ce
    sub e                                         ; $74b5: $93

jr_03a_74b6:
    scf                                           ; $74b6: $37
    db $ed                                        ; $74b7: $ed
    or l                                          ; $74b8: $b5
    rlca                                          ; $74b9: $07
    nop                                           ; $74ba: $00
    ld h, a                                       ; $74bb: $67
    dec sp                                        ; $74bc: $3b
    ld h, d                                       ; $74bd: $62
    jp nz, $fc17                                  ; $74be: $c2 $17 $fc

    sub l                                         ; $74c1: $95
    ld b, d                                       ; $74c2: $42
    add sp, $7d                                   ; $74c3: $e8 $7d
    xor [hl]                                      ; $74c5: $ae
    db $fc                                        ; $74c6: $fc
    add d                                         ; $74c7: $82
    add hl, hl                                    ; $74c8: $29
    ccf                                           ; $74c9: $3f
    rst $08                                       ; $74ca: $cf
    push de                                       ; $74cb: $d5
    cpl                                           ; $74cc: $2f
    ld h, $f8                                     ; $74cd: $26 $f8

Jump_03a_74cf:
    and d                                         ; $74cf: $a2
    cp h                                          ; $74d0: $bc
    ld bc, $aff6                                  ; $74d1: $01 $f6 $af
    ld h, e                                       ; $74d4: $63
    dec e                                         ; $74d5: $1d
    or d                                          ; $74d6: $b2
    rst $38                                       ; $74d7: $ff
    ei                                            ; $74d8: $fb
    sbc h                                         ; $74d9: $9c
    ld c, c                                       ; $74da: $49
    ld e, h                                       ; $74db: $5c
    db $ed                                        ; $74dc: $ed
    xor h                                         ; $74dd: $ac
    db $eb                                        ; $74de: $eb
    inc [hl]                                      ; $74df: $34
    ld [c], a                                     ; $74e0: $e2
    jp nz, $f846                                  ; $74e1: $c2 $46 $f8

    db $ec                                        ; $74e4: $ec
    ld e, a                                       ; $74e5: $5f
    call nz, $af7a                                ; $74e6: $c4 $7a $af
    ld [hl], a                                    ; $74e9: $77
    sub $a1                                       ; $74ea: $d6 $a1
    jr c, jr_03a_7564                             ; $74ec: $38 $76

    ld a, [hl]                                    ; $74ee: $7e
    push hl                                       ; $74ef: $e5
    ld d, a                                       ; $74f0: $57
    sbc d                                         ; $74f1: $9a
    add $9f                                       ; $74f2: $c6 $9f
    push bc                                       ; $74f4: $c5
    ld [hl], c                                    ; $74f5: $71
    sub c                                         ; $74f6: $91
    di                                            ; $74f7: $f3
    ld l, l                                       ; $74f8: $6d
    sub $55                                       ; $74f9: $d6 $55
    jr jr_03a_74b6                                ; $74fb: $18 $b9

    sbc a                                         ; $74fd: $9f
    ret                                           ; $74fe: $c9


    ld a, [hl-]                                   ; $74ff: $3a
    sub h                                         ; $7500: $94
    sub a                                         ; $7501: $97
    or c                                          ; $7502: $b1
    ld c, h                                       ; $7503: $4c
    xor b                                         ; $7504: $a8
    ld sp, $59e7                                  ; $7505: $31 $e7 $59
    ld b, [hl]                                    ; $7508: $46
    adc e                                         ; $7509: $8b
    ld l, e                                       ; $750a: $6b
    ld h, c                                       ; $750b: $61
    sbc $00                                       ; $750c: $de $00
    or $59                                        ; $750e: $f6 $59
    ld e, $be                                     ; $7510: $1e $be
    xor $d4                                       ; $7512: $ee $d4
    ld d, c                                       ; $7514: $51
    inc hl                                        ; $7515: $23
    rst $00                                       ; $7516: $c7
    ld [hl-], a                                   ; $7517: $32
    dec sp                                        ; $7518: $3b
    ld e, b                                       ; $7519: $58
    and c                                         ; $751a: $a1
    ld d, b                                       ; $751b: $50
    ld [hl], e                                    ; $751c: $73
    sbc [hl]                                      ; $751d: $9e
    or e                                          ; $751e: $b3
    ld c, a                                       ; $751f: $4f
    ld [$4be6], sp                                ; $7520: $08 $e6 $4b
    call nc, Call_000_009e                        ; $7523: $d4 $9e $00
    add c                                         ; $7526: $81
    ld [hl], $f7                                  ; $7527: $36 $f7
    cp d                                          ; $7529: $ba
    ld e, a                                       ; $752a: $5f
    ld [c], a                                     ; $752b: $e2
    xor d                                         ; $752c: $aa
    ld l, $36                                     ; $752d: $2e $36
    ld [hl+], a                                   ; $752f: $22
    ld [hl], l                                    ; $7530: $75
    call nz, Call_03a_5f95                        ; $7531: $c4 $95 $5f
    or l                                          ; $7534: $b5
    db $10                                        ; $7535: $10
    inc hl                                        ; $7536: $23
    ld a, e                                       ; $7537: $7b
    xor [hl]                                      ; $7538: $ae
    cp e                                          ; $7539: $bb
    sbc l                                         ; $753a: $9d
    ld d, b                                       ; $753b: $50
    rst $28                                       ; $753c: $ef
    ei                                            ; $753d: $fb
    xor [hl]                                      ; $753e: $ae
    ld e, d                                       ; $753f: $5a
    ld a, d                                       ; $7540: $7a
    ld [bc], a                                    ; $7541: $02
    rst $20                                       ; $7542: $e7
    ld sp, $e205                                  ; $7543: $31 $05 $e2
    xor h                                         ; $7546: $ac
    dec sp                                        ; $7547: $3b
    ld d, a                                       ; $7548: $57
    add sp, -$1f                                  ; $7549: $e8 $e1
    db $eb                                        ; $754b: $eb
    ld e, $fc                                     ; $754c: $1e $fc
    ld c, [hl]                                    ; $754e: $4e
    push de                                       ; $754f: $d5
    and [hl]                                      ; $7550: $a6
    xor e                                         ; $7551: $ab
    inc [hl]                                      ; $7552: $34
    adc l                                         ; $7553: $8d
    cp c                                          ; $7554: $b9
    ld e, a                                       ; $7555: $5f
    nop                                           ; $7556: $00
    push bc                                       ; $7557: $c5
    ld e, b                                       ; $7558: $58
    ld a, e                                       ; $7559: $7b
    ld [bc], a                                    ; $755a: $02
    add c                                         ; $755b: $81
    ld [hl], $f0                                  ; $755c: $36 $f0
    ld d, c                                       ; $755e: $51
    ld h, e                                       ; $755f: $63
    rst $10                                       ; $7560: $d7
    inc a                                         ; $7561: $3c
    bit 4, e                                      ; $7562: $cb $63

jr_03a_7564:
    db $e4                                        ; $7564: $e4
    ld c, h                                       ; $7565: $4c
    ld [c], a                                     ; $7566: $e2
    ld c, d                                       ; $7567: $4a
    ld [$4a32], a                                 ; $7568: $ea $32 $4a
    ld [$6142], a                                 ; $756b: $ea $42 $61
    dec [hl]                                      ; $756e: $35
    ld c, l                                       ; $756f: $4d
    ld c, h                                       ; $7570: $4c
    cp l                                          ; $7571: $bd
    ld bc, $4176                                  ; $7572: $01 $76 $41
    ld hl, sp+$2e                                 ; $7575: $f8 $2e
    ld c, l                                       ; $7577: $4d
    ld e, h                                       ; $7578: $5c
    ld [hl], a                                    ; $7579: $77
    db $fd                                        ; $757a: $fd
    ld c, $75                                     ; $757b: $0e $75
    ld d, $d7                                     ; $757d: $16 $d7
    xor d                                         ; $757f: $aa
    ld [c], a                                     ; $7580: $e2
    xor b                                         ; $7581: $a8
    xor e                                         ; $7582: $ab
    xor d                                         ; $7583: $aa
    sub c                                         ; $7584: $91
    dec a                                         ; $7585: $3d
    ld bc, $31e7                                  ; $7586: $01 $e7 $31
    dec b                                         ; $7589: $05
    ld [hl+], a                                   ; $758a: $22
    ld a, h                                       ; $758b: $7c
    db $dd                                        ; $758c: $dd
    xor b                                         ; $758d: $a8
    di                                            ; $758e: $f3
    ld e, h                                       ; $758f: $5c
    db $fd                                        ; $7590: $fd
    push hl                                       ; $7591: $e5
    ld b, a                                       ; $7592: $47
    rst $28                                       ; $7593: $ef
    call z, Call_03a_669b                         ; $7594: $cc $9b $66
    adc e                                         ; $7597: $8b
    or e                                          ; $7598: $b3
    jr c, @-$04                                   ; $7599: $38 $fa

    rla                                           ; $759b: $17
    push hl                                       ; $759c: $e5
    ld [$8f26], a                                 ; $759d: $ea $26 $8f
    ld a, $f7                                     ; $75a0: $3e $f7
    ei                                            ; $75a2: $fb
    ld [bc], a                                    ; $75a3: $02
    cp c                                          ; $75a4: $b9
    ld b, [hl]                                    ; $75a5: $46
    db $ec                                        ; $75a6: $ec
    ld bc, $dd00                                  ; $75a7: $01 $00 $dd
    cpl                                           ; $75aa: $2f
    ld [hl], c                                    ; $75ab: $71
    xor l                                         ; $75ac: $ad
    ld a, [hl+]                                   ; $75ad: $2a
    adc [hl]                                      ; $75ae: $8e
    jp c, Jump_000_0013                           ; $75af: $da $13 $00

    add c                                         ; $75b2: $81
    sub h                                         ; $75b3: $94
    xor [hl]                                      ; $75b4: $ae
    push de                                       ; $75b5: $d5
    db $ec                                        ; $75b6: $ec
    sub a                                         ; $75b7: $97
    ld [hl-], a                                   ; $75b8: $32
    adc e                                         ; $75b9: $8b
    db $e3                                        ; $75ba: $e3
    call nc, Call_03a_5e75                        ; $75bb: $d4 $75 $5e
    rst $28                                       ; $75be: $ef
    ei                                            ; $75bf: $fb
    ld h, [hl]                                    ; $75c0: $66
    ld e, c                                       ; $75c1: $59
    inc d                                         ; $75c2: $14
    ld [c], a                                     ; $75c3: $e2
    xor b                                         ; $75c4: $a8
    or c                                          ; $75c5: $b1
    ld l, e                                       ; $75c6: $6b
    cp a                                          ; $75c7: $bf
    ret nc                                        ; $75c8: $d0

    ld h, c                                       ; $75c9: $61
    call z, Call_03a_4e79                         ; $75ca: $cc $79 $4e
    cp a                                          ; $75cd: $bf
    inc [hl]                                      ; $75ce: $34
    cp c                                          ; $75cf: $b9
    ld bc, $737d                                  ; $75d0: $01 $7d $73
    sub c                                         ; $75d3: $91
    xor e                                         ; $75d4: $ab
    cp h                                          ; $75d5: $bc
    push af                                       ; $75d6: $f5
    ld [hl], l                                    ; $75d7: $75

Call_03a_75d8:
    or l                                          ; $75d8: $b5
    or e                                          ; $75d9: $b3
    xor [hl]                                      ; $75da: $ae
    or b                                          ; $75db: $b0
    ld e, a                                       ; $75dc: $5f
    ld [$df7d], a                                 ; $75dd: $ea $7d $df
    inc l                                         ; $75e0: $2c
    adc e                                         ; $75e1: $8b
    ld b, d                                       ; $75e2: $42
    inc e                                         ; $75e3: $1c
    dec [hl]                                      ; $75e4: $35
    halt                                          ; $75e5: $76
    db $ed                                        ; $75e6: $ed
    rla                                           ; $75e7: $17
    ld a, [hl-]                                   ; $75e8: $3a
    adc h                                         ; $75e9: $8c

jr_03a_75ea:
    add hl, sp                                    ; $75ea: $39
    rst $08                                       ; $75eb: $cf
    jp hl                                         ; $75ec: $e9


    sub a                                         ; $75ed: $97
    ld h, $37                                     ; $75ee: $26 $37

Jump_03a_75f0:
    nop                                           ; $75f0: $00
    db $dd                                        ; $75f1: $dd
    ld [bc], a                                    ; $75f2: $02
    ld e, [hl]                                    ; $75f3: $5e
    cp a                                          ; $75f4: $bf
    rra                                           ; $75f5: $1f
    dec h                                         ; $75f6: $25
    ld [hl], l                                    ; $75f7: $75
    ld e, a                                       ; $75f8: $5f
    ld d, $85                                     ; $75f9: $16 $85
    ret c                                         ; $75fb: $d8

    inc bc                                        ; $75fc: $03
    nop                                           ; $75fd: $00
    ld bc, $342f                                  ; $75fe: $01 $2f $34
    call nz, $1c75                                ; $7601: $c4 $75 $1c
    ld sp, $2675                                  ; $7604: $31 $75 $26
    ret c                                         ; $7607: $d8

    ld c, h                                       ; $7608: $4c
    ld [$f1a8], a                                 ; $7609: $ea $a8 $f1
    ld d, a                                       ; $760c: $57
    ld h, c                                       ; $760d: $61
    rst $38                                       ; $760e: $ff
    dec de                                        ; $760f: $1b
    nop                                           ; $7610: $00
    ld bc, $1892                                  ; $7611: $01 $92 $18
    ld [hl], e                                    ; $7614: $73
    sbc b                                         ; $7615: $98
    cp d                                          ; $7616: $ba
    jr nc, jr_03a_75ea                            ; $7617: $30 $d1

    dec bc                                        ; $7619: $0b
    db $eb                                        ; $761a: $eb
    call nc, $5711                                ; $761b: $d4 $11 $57
    cp a                                          ; $761e: $bf
    sbc b                                         ; $761f: $98
    ldh [$df], a                                  ; $7620: $e0 $df
    nop                                           ; $7622: $00
    or $5c                                        ; $7623: $f6 $5c
    add l                                         ; $7625: $85
    ret c                                         ; $7626: $d8

    ld a, h                                       ; $7627: $7c
    xor $e7                                       ; $7628: $ee $e7
    xor c                                         ; $762a: $a9
    ld hl, $937d                                  ; $762b: $21 $7d $93
    sbc d                                         ; $762e: $9a
    di                                            ; $762f: $f3
    ld e, h                                       ; $7630: $5c
    db $dd                                        ; $7631: $dd
    add [hl]                                      ; $7632: $86
    adc l                                         ; $7633: $8d
    ld sp, $b3e1                                  ; $7634: $31 $e1 $b3
    jr c, jr_03a_7687                             ; $7637: $38 $4e

    cp c                                          ; $7639: $b9
    ld a, [$04c5]                                 ; $763a: $fa $c5 $04
    ld a, a                                       ; $763d: $7f
    ccf                                           ; $763e: $3f
    ei                                            ; $763f: $fb
    add h                                         ; $7640: $84
    ld h, b                                       ; $7641: $60
    cp [hl]                                       ; $7642: $be
    ld b, h                                       ; $7643: $44
    cp l                                          ; $7644: $bd
    ld bc, $1cbd                                  ; $7645: $01 $bd $1c
    ld e, d                                       ; $7648: $5a
    inc e                                         ; $7649: $1c
    add a                                         ; $764a: $87
    add hl, sp                                    ; $764b: $39
    ld h, d                                       ; $764c: $62
    ld l, h                                       ; $764d: $6c
    ld b, h                                       ; $764e: $44
    rst $38                                       ; $764f: $ff
    jr c, @+$7e                                   ; $7650: $38 $7c

    rst $38                                       ; $7652: $ff
    di                                            ; $7653: $f3
    ld e, h                                       ; $7654: $5c
    db $fd                                        ; $7655: $fd
    ld d, b                                       ; $7656: $50
    ld a, e                                       ; $7657: $7b
    ld hl, sp+$4a                                 ; $7658: $f8 $4a
    ld [$076a], a                                 ; $765a: $ea $6a $07
    ld b, c                                       ; $765d: $41
    add l                                         ; $765e: $85
    ld a, [hl-]                                   ; $765f: $3a
    db $fd                                        ; $7660: $fd
    ld c, $71                                     ; $7661: $0e $71
    pop bc                                        ; $7663: $c1
    scf                                           ; $7664: $37
    sub h                                         ; $7665: $94
    ld b, l                                       ; $7666: $45
    ld hl, $e752                                  ; $7667: $21 $52 $e7
    cp c                                          ; $766a: $b9
    ld d, b                                       ; $766b: $50
    ld e, d                                       ; $766c: $5a
    ld c, l                                       ; $766d: $4d
    ld sp, hl                                     ; $766e: $f9
    dec de                                        ; $766f: $1b
    nop                                           ; $7670: $00
    halt                                          ; $7671: $76
    ld a, [de]                                    ; $7672: $1a
    db $d3                                        ; $7673: $d3
    ld a, [hl-]                                   ; $7674: $3a
    ld c, a                                       ; $7675: $4f
    push hl                                       ; $7676: $e5
    and e                                         ; $7677: $a3
    rst $08                                       ; $7678: $cf
    sub l                                         ; $7679: $95
    ld b, d                                       ; $767a: $42
    add sp, $65                                   ; $767b: $e8 $65
    ccf                                           ; $767d: $3f
    di                                            ; $767e: $f3
    ld a, [$ceb3]                                 ; $767f: $fa $b3 $ce
    ld a, h                                       ; $7682: $7c
    db $dd                                        ; $7683: $dd
    ld l, c                                       ; $7684: $69
    cpl                                           ; $7685: $2f
    dec [hl]                                      ; $7686: $35

jr_03a_7687:
    ld b, a                                       ; $7687: $47
    adc l                                         ; $7688: $8d
    ccf                                           ; $7689: $3f
    ret                                           ; $768a: $c9


    ldh a, [$e7]                                  ; $768b: $f0 $e7
    cp c                                          ; $768d: $b9
    ld a, $0e                                     ; $768e: $3e $0e
    add d                                         ; $7690: $82
    ld a, [bc]                                    ; $7691: $0a
    rst $28                                       ; $7692: $ef
    ld [hl], l                                    ; $7693: $75
    dec bc                                        ; $7694: $0b
    ld l, b                                       ; $7695: $68
    and $e7                                       ; $7696: $e6 $e7
    ld [hl], b                                    ; $7698: $70
    ld [hl], l                                    ; $7699: $75
    ld h, d                                       ; $769a: $62
    or h                                          ; $769b: $b4
    push bc                                       ; $769c: $c5
    ld e, $00                                     ; $769d: $1e $00
    rla                                           ; $769f: $17
    ei                                            ; $76a0: $fb
    sub [hl]                                      ; $76a1: $96
    adc e                                         ; $76a2: $8b
    ld b, h                                       ; $76a3: $44
    jp z, $8e2c                                   ; $76a4: $ca $2c $8e

    dec hl                                        ; $76a7: $2b
    add l                                         ; $76a8: $85
    sub l                                         ; $76a9: $95
    sub a                                         ; $76aa: $97
    ld c, c                                       ; $76ab: $49
    add [hl]                                      ; $76ac: $86
    cp a                                          ; $76ad: $bf
    ld a, $0e                                     ; $76ae: $3e $0e
    add d                                         ; $76b0: $82
    ld a, [bc]                                    ; $76b1: $0a
    rst $28                                       ; $76b2: $ef
    ei                                            ; $76b3: $fb
    xor $16                                       ; $76b4: $ee $16
    ld d, d                                       ; $76b6: $52
    ld [hl], d                                    ; $76b7: $72
    dec h                                         ; $76b8: $25
    ld [hl], l                                    ; $76b9: $75
    db $fd                                        ; $76ba: $fd
    ccf                                           ; $76bb: $3f
    db $fc                                        ; $76bc: $fc
    sbc b                                         ; $76bd: $98
    ld a, [hl-]                                   ; $76be: $3a
    ld c, l                                       ; $76bf: $4d
    ld e, h                                       ; $76c0: $5c
    sbc l                                         ; $76c1: $9d
    ld l, b                                       ; $76c2: $68
    and e                                         ; $76c3: $a3
    xor l                                         ; $76c4: $ad
    ld c, [hl]                                    ; $76c5: $4e
    db $ed                                        ; $76c6: $ed
    ld bc, $7600                                  ; $76c7: $01 $00 $76
    ld a, [de]                                    ; $76ca: $1a
    ld d, d                                       ; $76cb: $52
    ld [hl], d                                    ; $76cc: $72
    ld d, $c7                                     ; $76cd: $16 $c7
    ld d, c                                       ; $76cf: $51
    db $e3                                        ; $76d0: $e3
    ld c, a                                       ; $76d1: $4f
    ld [hl-], a                                   ; $76d2: $32
    db $fc                                        ; $76d3: $fc
    push af                                       ; $76d4: $f5
    ld [hl], c                                    ; $76d5: $71
    db $10                                        ; $76d6: $10
    ld d, h                                       ; $76d7: $54
    jr c, @-$32                                   ; $76d8: $38 $cc

    push de                                       ; $76da: $d5
    ld e, h                                       ; $76db: $5c
    ldh a, [$a1]                                  ; $76dc: $f0 $a1
    rra                                           ; $76de: $1f
    res 4, d                                      ; $76df: $cb $a2
    cp h                                          ; $76e1: $bc
    ld d, d                                       ; $76e2: $52
    ld [hl], d                                    ; $76e3: $72
    or l                                          ; $76e4: $b5
    or e                                          ; $76e5: $b3
    ld c, $92                                     ; $76e6: $0e $92
    ld b, a                                       ; $76e8: $47
    rst $08                                       ; $76e9: $cf
    dec de                                        ; $76ea: $1b
    nop                                           ; $76eb: $00
    or $df                                        ; $76ec: $f6 $df
    ld de, $9f9b                                  ; $76ee: $11 $9b $9f
    push bc                                       ; $76f1: $c5
    ld [hl], c                                    ; $76f2: $71
    ld h, c                                       ; $76f3: $61
    ld [hl+], a                                   ; $76f4: $22
    ld h, l                                       ; $76f5: $65
    ld [hl], l                                    ; $76f6: $75
    sub a                                         ; $76f7: $97
    xor [hl]                                      ; $76f8: $ae
    di                                            ; $76f9: $f3
    ld l, b                                       ; $76fa: $68
    ld d, d                                       ; $76fb: $52
    ld b, a                                       ; $76fc: $47
    inc e                                         ; $76fd: $1c
    dec [hl]                                      ; $76fe: $35
    ld [hl], d                                    ; $76ff: $72
    adc a                                         ; $7700: $8f
    cp [hl]                                       ; $7701: $be
    ld a, [hl+]                                   ; $7702: $2a

jr_03a_7703:
    sbc $00                                       ; $7703: $de $00
    db $dd                                        ; $7705: $dd
    cpl                                           ; $7706: $2f
    and d                                         ; $7707: $a2
    adc $37                                       ; $7708: $ce $37
    jr z, jr_03a_7703                             ; $770a: $28 $f7

    cp [hl]                                       ; $770c: $be
    reti                                          ; $770d: $d9


    ld [$e24c], a                                 ; $770e: $ea $4c $e2
    jp z, $7eaf                                   ; $7711: $ca $af $7e

    call z, Call_03a_4afd                         ; $7714: $cc $fd $4a
    ld [$38fa], a                                 ; $7717: $ea $fa $38
    ld [$d42a], sp                                ; $771a: $08 $2a $d4
    sbc [hl]                                      ; $771d: $9e
    nop                                           ; $771e: $00
    sub a                                         ; $771f: $97
    cp b                                          ; $7720: $b8
    ld b, [hl]                                    ; $7721: $46
    ret                                           ; $7722: $c9


    add hl, hl                                    ; $7723: $29
    ld h, l                                       ; $7724: $65
    push hl                                       ; $7725: $e5
    rla                                           ; $7726: $17
    ld c, d                                       ; $7727: $4a
    xor e                                         ; $7728: $ab
    add hl, hl                                    ; $7729: $29
    ccf                                           ; $772a: $3f
    ld [c], a                                     ; $772b: $e2
    ld a, [hl+]                                   ; $772c: $2a
    sub h                                         ; $772d: $94
    reti                                          ; $772e: $d9


    daa                                           ; $772f: $27
    inc b                                         ; $7730: $04
    di                                            ; $7731: $f3
    dec h                                         ; $7732: $25
    ld [$000d], a                                 ; $7733: $ea $0d $00
    ld a, l                                       ; $7736: $7d
    cp b                                          ; $7737: $b8
    ldh [$cf], a                                  ; $7738: $e0 $cf
    and h                                         ; $773a: $a4
    add $f7                                       ; $773b: $c6 $f7
    cp c                                          ; $773d: $b9
    jp c, Jump_03a_6099                           ; $773e: $da $99 $60

    xor [hl]                                      ; $7741: $ae
    ret                                           ; $7742: $c9


    ld a, [hl]                                    ; $7743: $7e
    or $09                                        ; $7744: $f6 $09
    pop bc                                        ; $7746: $c1
    ld a, h                                       ; $7747: $7c
    adc c                                         ; $7748: $89
    ld a, d                                       ; $7749: $7a
    inc bc                                        ; $774a: $03
    halt                                          ; $774b: $76
    ld a, [de]                                    ; $774c: $1a
    ld d, d                                       ; $774d: $52
    ld [hl], d                                    ; $774e: $72
    sbc b                                         ; $774f: $98
    xor e                                         ; $7750: $ab
    ld e, a                                       ; $7751: $5f
    ld hl, sp+$52                                 ; $7752: $f8 $52
    ld [hl], e                                    ; $7754: $73
    ld h, $71                                     ; $7755: $26 $71
    inc l                                         ; $7757: $2c
    adc e                                         ; $7758: $8b
    ld a, [c]                                     ; $7759: $f2
    ld d, $c7                                     ; $775a: $16 $c7
    ret z                                         ; $775c: $c8

    sbc h                                         ; $775d: $9c
    ld h, a                                       ; $775e: $67
    ld e, c                                       ; $775f: $59
    inc d                                         ; $7760: $14
    ld [c], a                                     ; $7761: $e2
    dec c                                         ; $7762: $0d
    nop                                           ; $7763: $00
    rla                                           ; $7764: $17
    rst $30                                       ; $7765: $f7
    ei                                            ; $7766: $fb
    jp nc, $fab5                                  ; $7767: $d2 $b5 $fa

    db $eb                                        ; $776a: $eb
    xor [hl]                                      ; $776b: $ae
    push de                                       ; $776c: $d5
    sbc h                                         ; $776d: $9c
    ld h, a                                       ; $776e: $67
    cp a                                          ; $776f: $bf
    sub a                                         ; $7770: $97
    ld e, a                                       ; $7771: $5f
    add l                                         ; $7772: $85
    ld a, [de]                                    ; $7773: $1a
    sbc e                                         ; $7774: $9b
    call nc, Call_03a_669c                        ; $7775: $d4 $9c $66
    ret                                           ; $7778: $c9


    dec de                                        ; $7779: $1b
    nop                                           ; $777a: $00
    db $dd                                        ; $777b: $dd
    xor a                                         ; $777c: $af
    ld a, b                                       ; $777d: $78
    call c, Call_03a_4c2f                         ; $777e: $dc $2f $4c
    and h                                         ; $7781: $a4
    call z, Call_000_2fe1                         ; $7782: $cc $e1 $2f
    ld h, h                                       ; $7785: $64
    ld l, c                                       ; $7786: $69
    dec a                                         ; $7787: $3d
    ld bc, $1a76                                  ; $7788: $01 $76 $1a
    ld d, d                                       ; $778b: $52
    ld [hl], d                                    ; $778c: $72
    call nz, $2f28                                ; $778d: $c4 $28 $2f
    inc hl                                        ; $7790: $23
    adc $de                                       ; $7791: $ce $de
    ld d, l                                       ; $7793: $55
    ld d, a                                       ; $7794: $57
    rla                                           ; $7795: $17
    add [hl]                                      ; $7796: $86
    xor [hl]                                      ; $7797: $ae
    cp d                                          ; $7798: $ba
    ld a, [$9d9e]                                 ; $7799: $fa $9e $9d

Jump_03a_779c:
    db $fc                                        ; $779c: $fc
    jp z, $bccf                                   ; $779d: $ca $cf $bc

    cp $3c                                        ; $77a0: $fe $3c
    rla                                           ; $77a2: $17
    ld a, [hl]                                    ; $77a3: $7e
    ret c                                         ; $77a4: $d8

    ld [hl], l                                    ; $77a5: $75
    inc bc                                        ; $77a6: $03
    rla                                           ; $77a7: $17
    push hl                                       ; $77a8: $e5
    or h                                          ; $77a9: $b4
    ld de, $c263                                  ; $77aa: $11 $63 $c2
    rla                                           ; $77ad: $17
    ld d, d                                       ; $77ae: $52
    ld [hl], d                                    ; $77af: $72
    call nc, $d698                                ; $77b0: $d4 $98 $d6
    push af                                       ; $77b3: $f5
    ld [hl], e                                    ; $77b4: $73
    ret nc                                        ; $77b5: $d0

    and e                                         ; $77b6: $a3
    rst $08                                       ; $77b7: $cf
    dec de                                        ; $77b8: $1b
    nop                                           ; $77b9: $00
    ld a, l                                       ; $77ba: $7d
    ld [hl], e                                    ; $77bb: $73
    and c                                         ; $77bc: $a1
    and e                                         ; $77bd: $a3
    rst $08                                       ; $77be: $cf
    dec b                                         ; $77bf: $05
    cp a                                          ; $77c0: $bf
    ld d, e                                       ; $77c1: $53
    ld e, [hl]                                    ; $77c2: $5e
    ldh [$b3], a                                  ; $77c3: $e0 $b3
    cp b                                          ; $77c5: $b8
    ld b, [hl]                                    ; $77c6: $46
    ret                                           ; $77c7: $c9


    ld [hl], l                                    ; $77c8: $75
    ld a, $36                                     ; $77c9: $3e $36
    ld e, c                                       ; $77cb: $59
    db $dd                                        ; $77cc: $dd
    ld h, $55                                     ; $77cd: $26 $55
    ld c, l                                       ; $77cf: $4d
    adc d                                         ; $77d0: $8a
    cp a                                          ; $77d1: $bf
    ld bc, $fadd                                  ; $77d2: $01 $dd $fa
    ld a, [hl-]                                   ; $77d5: $3a
    inc [hl]                                      ; $77d6: $34
    cp a                                          ; $77d7: $bf
    ldh [rPCM34], a                               ; $77d8: $e0 $77
    ld l, h                                       ; $77da: $6c
    ld a, [hl]                                    ; $77db: $7e
    sub l                                         ; $77dc: $95
    or $fd                                        ; $77dd: $f6 $fd
    sbc $e7                                       ; $77df: $de $e7
    adc b                                         ; $77e1: $88
    adc e                                         ; $77e2: $8b
    ld b, d                                       ; $77e3: $42
    db $ec                                        ; $77e4: $ec
    ld bc, $1700                                  ; $77e5: $01 $00 $17
    db $fd                                        ; $77e8: $fd
    ld a, [hl+]                                   ; $77e9: $2a
    call nz, $d8f8                                ; $77ea: $c4 $f8 $d8
    ld c, d                                       ; $77ed: $4a
    ld sp, hl                                     ; $77ee: $f9
    ld d, c                                       ; $77ef: $51
    ld h, e                                       ; $77f0: $63
    rst $10                                       ; $77f1: $d7
    ld a, $be                                     ; $77f2: $3e $be
    sbc d                                         ; $77f4: $9a
    rst $30                                       ; $77f5: $f7
    ld a, a                                       ; $77f6: $7f
    inc bc                                        ; $77f7: $03
    db $dd                                        ; $77f8: $dd
    rst $08                                       ; $77f9: $cf
    or c                                          ; $77fa: $b1
    ld b, l                                       ; $77fb: $45
    rst $08                                       ; $77fc: $cf
    ld d, c                                       ; $77fd: $51
    ld h, e                                       ; $77fe: $63
    rst $10                                       ; $77ff: $d7
    ld e, b                                       ; $7800: $58
    ld d, [hl]                                    ; $7801: $56
    ld a, c                                       ; $7802: $79
    ret z                                         ; $7803: $c8

    ld d, $8f                                     ; $7804: $16 $8f
    inc d                                         ; $7806: $14
    ld l, d                                       ; $7807: $6a
    ld a, h                                       ; $7808: $7c
    daa                                           ; $7809: $27
    adc a                                         ; $780a: $8f
    sub c                                         ; $780b: $91
    dec a                                         ; $780c: $3d
    ld bc, $cfdd                                  ; $780d: $01 $dd $cf
    or c                                          ; $7810: $b1
    ld b, l                                       ; $7811: $45
    rst $08                                       ; $7812: $cf
    ld d, c                                       ; $7813: $51
    ld h, e                                       ; $7814: $63
    rst $10                                       ; $7815: $d7
    jp z, $a4af                                   ; $7816: $ca $af $a4

    ret                                           ; $7819: $c9


    ld a, [hl-]                                   ; $781a: $3a
    ld h, e                                       ; $781b: $63
    jp z, $04f7                                   ; $781c: $ca $f7 $04

    halt                                          ; $781f: $76
    ld a, [hl-]                                   ; $7820: $3a
    add a                                         ; $7821: $87
    dec bc                                        ; $7822: $0b
    ld h, $a6                                     ; $7823: $26 $a6
    call z, $a624                                 ; $7825: $cc $24 $a6
    and c                                         ; $7828: $a1
    inc d                                         ; $7829: $14
    jp nz, Jump_000_2817                          ; $782a: $c2 $17 $28

    rst $30                                       ; $782d: $f7
    ld [bc], a                                    ; $782e: $02
    ld [hl-], a                                   ; $782f: $32
    ld b, [hl]                                    ; $7830: $46
    jp z, Jump_000_000d                           ; $7831: $ca $0d $00

    db $dd                                        ; $7834: $dd
    db $ec                                        ; $7835: $ec
    inc [hl]                                      ; $7836: $34
    and [hl]                                      ; $7837: $a6
    ld [hl], l                                    ; $7838: $75
    sbc [hl]                                      ; $7839: $9e
    jp z, $9f47                                   ; $783a: $ca $47 $9f

    inc hl                                        ; $783d: $23
    ld b, [hl]                                    ; $783e: $46
    ld a, c                                       ; $783f: $79
    add hl, de                                    ; $7840: $19
    ld [hl], c                                    ; $7841: $71
    inc l                                         ; $7842: $2c
    db $eb                                        ; $7843: $eb
    ld e, l                                       ; $7844: $5d
    ld e, h                                       ; $7845: $5c
    ld h, a                                       ; $7846: $67
    sbc [hl]                                      ; $7847: $9e
    db $eb                                        ; $7848: $eb
    sbc l                                         ; $7849: $9d
    add l                                         ; $784a: $85
    add $b4                                       ; $784b: $c6 $b4
    call nz, $f1a6                                ; $784d: $c4 $a6 $f1
    ld [hl], l                                    ; $7850: $75
    sbc [hl]                                      ; $7851: $9e
    db $eb                                        ; $7852: $eb
    dec l                                         ; $7853: $2d
    ld e, c                                       ; $7854: $59
    and a                                         ; $7855: $a7
    adc $73                                       ; $7856: $ce $73
    ld h, a                                       ; $7858: $67
    adc e                                         ; $7859: $8b
    db $eb                                        ; $785a: $eb
    rst $30                                       ; $785b: $f7
    ld a, [hl-]                                   ; $785c: $3a
    db $eb                                        ; $785d: $eb
    ld a, [$943c]                                 ; $785e: $fa $3c $94
    cp d                                          ; $7861: $ba
    ld [hl], e                                    ; $7862: $73
    cp a                                          ; $7863: $bf
    ld c, [hl]                                    ; $7864: $4e
    ld c, l                                       ; $7865: $4d
    db $ed                                        ; $7866: $ed
    ld bc, $dd00                                  ; $7867: $01 $00 $dd
    ld a, d                                       ; $786a: $7a
    rlca                                          ; $786b: $07
    ld e, l                                       ; $786c: $5d
    ld [$099f], sp                                ; $786d: $08 $9f $09
    cp d                                          ; $7870: $ba
    db $10                                        ; $7871: $10
    cp [hl]                                       ; $7872: $be
    or b                                          ; $7873: $b0
    pop bc                                        ; $7874: $c1
    rla                                           ; $7875: $17
    or [hl]                                       ; $7876: $b6
    ld e, $00                                     ; $7877: $1e $00
    sub a                                         ; $7879: $97
    cp b                                          ; $787a: $b8
    ld b, [hl]                                    ; $787b: $46
    ret                                           ; $787c: $c9


    push de                                       ; $787d: $d5
    adc h                                         ; $787e: $8c
    sub h                                         ; $787f: $94
    sbc d                                         ; $7880: $9a
    inc hl                                        ; $7881: $23
    xor [hl]                                      ; $7882: $ae
    ld a, [hl]                                    ; $7883: $7e
    xor b                                         ; $7884: $a8
    db $fd                                        ; $7885: $fd
    ld [hl+], a                                   ; $7886: $22
    ld b, l                                       ; $7887: $45
    xor b                                         ; $7888: $a8
    ld d, c                                       ; $7889: $51
    ld a, b                                       ; $788a: $78
    xor a                                         ; $788b: $af
    rrca                                          ; $788c: $0f
    ld b, a                                       ; $788d: $47
    inc [hl]                                      ; $788e: $34
    adc a                                         ; $788f: $8f
    pop af                                        ; $7890: $f1
    ld b, a                                       ; $7891: $47
    ld e, b                                       ; $7892: $58
    and $2b                                       ; $7893: $e6 $2b
    cpl                                           ; $7895: $2f
    scf                                           ; $7896: $37
    nop                                           ; $7897: $00
    db $dd                                        ; $7898: $dd
    cpl                                           ; $7899: $2f
    ld [hl], c                                    ; $789a: $71
    ld d, l                                       ; $789b: $55
    ld b, a                                       ; $789c: $47
    adc l                                         ; $789d: $8d
    ld e, l                                       ; $789e: $5d
    cp d                                          ; $789f: $ba
    cp d                                          ; $78a0: $ba
    ret                                           ; $78a1: $c9


    and e                                         ; $78a2: $a3
    rst $08                                       ; $78a3: $cf
    sbc [hl]                                      ; $78a4: $9e
    nop                                           ; $78a5: $00
    halt                                          ; $78a6: $76
    ld h, l                                       ; $78a7: $65
    jp nz, $d34a                                  ; $78a8: $c2 $4a $d3

    sub h                                         ; $78ab: $94
    dec b                                         ; $78ac: $05
    dec e                                         ; $78ad: $1d
    dec bc                                        ; $78ae: $0b
    daa                                           ; $78af: $27
    cpl                                           ; $78b0: $2f
    ld a, c                                       ; $78b1: $79
    inc bc                                        ; $78b2: $03
    or $6f                                        ; $78b3: $f6 $6f
    cp b                                          ; $78b5: $b8
    jp c, Jump_03a_6099                           ; $78b6: $da $99 $60

    xor [hl]                                      ; $78b9: $ae
    jp nc, $3188                                  ; $78ba: $d2 $88 $31

    ld l, a                                       ; $78bd: $6f
    nop                                           ; $78be: $00
    ld bc, $c5e9                                  ; $78bf: $01 $e9 $c5
    and $71                                       ; $78c2: $e6 $71
    and l                                         ; $78c4: $a5
    push de                                       ; $78c5: $d5
    ld h, c                                       ; $78c6: $61
    ld a, e                                       ; $78c7: $7b
    sbc c                                         ; $78c8: $99
    jp Jump_03a_6985                              ; $78c9: $c3 $85 $69


    ld [hl], d                                    ; $78cc: $72
    call nc, $baf8                                ; $78cd: $d4 $f8 $ba
    ld a, [bc]                                    ; $78d0: $0a
    ld sp, $b63e                                  ; $78d1: $31 $3e $b6
    ld d, d                                       ; $78d4: $52
    ld e, [hl]                                    ; $78d5: $5e
    ld l, a                                       ; $78d6: $6f
    nop                                           ; $78d7: $00
    ld a, l                                       ; $78d8: $7d
    jr c, @+$6c                                   ; $78d9: $38 $6a

    ld c, b                                       ; $78db: $48
    ld sp, hl                                     ; $78dc: $f9
    adc $cf                                       ; $78dd: $ce $cf
    pop hl                                        ; $78df: $e1
    ld a, [hl+]                                   ; $78e0: $2a
    rrca                                          ; $78e1: $0f

Jump_03a_78e2:
    reti                                          ; $78e2: $d9


    ld [c], a                                     ; $78e3: $e2
    ld b, d                                       ; $78e4: $42
    ld l, c                                       ; $78e5: $69
    sub l                                         ; $78e6: $95
    rst $30                                       ; $78e7: $f7
    ld a, c                                       ; $78e8: $79
    inc bc                                        ; $78e9: $03
    halt                                          ; $78ea: $76
    ld a, [de]                                    ; $78eb: $1a
    db $d3                                        ; $78ec: $d3
    cp d                                          ; $78ed: $ba
    ld hl, sp-$48                                 ; $78ee: $f8 $b8
    ld d, [hl]                                    ; $78f0: $56
    sbc h                                         ; $78f1: $9c
    or [hl]                                       ; $78f2: $b6
    call nz, $39f7                                ; $78f3: $c4 $f7 $39
    adc e                                         ; $78f6: $8b
    db $e3                                        ; $78f7: $e3
    jr nc, jr_03a_7911                            ; $78f8: $30 $17

    ld a, [hl-]                                   ; $78fa: $3a
    ld a, [$351c]                                 ; $78fb: $fa $1c $35
    cp [hl]                                       ; $78fe: $be
    call nc, $c59c                                ; $78ff: $d4 $9c $c5
    dec [hl]                                      ; $7902: $35
    add $bc                                       ; $7903: $c6 $bc
    ld bc, $387d                                  ; $7905: $01 $7d $38
    and d                                         ; $7908: $a2
    ld a, c                                       ; $7909: $79
    adc h                                         ; $790a: $8c
    adc a                                         ; $790b: $8f
    dec hl                                        ; $790c: $2b
    xor c                                         ; $790d: $a9
    db $eb                                        ; $790e: $eb
    ld d, b                                       ; $790f: $50
    and e                                         ; $7910: $a3

jr_03a_7911:
    or d                                          ; $7911: $b2
    inc d                                         ; $7912: $14
    adc d                                         ; $7913: $8a
    sbc $00                                       ; $7914: $de $00
    halt                                          ; $7916: $76
    ld a, [de]                                    ; $7917: $1a
    db $d3                                        ; $7918: $d3
    cp d                                          ; $7919: $ba
    ld b, d                                       ; $791a: $42
    dec hl                                        ; $791b: $2b
    pop de                                        ; $791c: $d1
    rst $20                                       ; $791d: $e7
    inc [hl]                                      ; $791e: $34
    dec sp                                        ; $791f: $3b
    jp nz, $0fd5                                  ; $7920: $c2 $d5 $0f

    or l                                          ; $7923: $b5
    ld e, a                                       ; $7924: $5f
    ld hl, sp-$0e                                 ; $7925: $f8 $f2
    ld l, e                                       ; $7927: $6b
    or d                                          ; $7928: $b2
    rst $30                                       ; $7929: $f7
    inc l                                         ; $792a: $2c
    adc a                                         ; $792b: $8f
    pop af                                        ; $792c: $f1
    db $fd                                        ; $792d: $fd
    rst $08                                       ; $792e: $cf
    cp b                                          ; $792f: $b8
    ld b, a                                       ; $7930: $47
    sbc a                                         ; $7931: $9f
    ld h, e                                       ; $7932: $63
    dec e                                         ; $7933: $1d
    ld [hl], $1a                                  ; $7934: $36 $1a
    adc [hl]                                      ; $7936: $8e
    ld h, l                                       ; $7937: $65
    ld h, $0b                                     ; $7938: $26 $0b
    and c                                         ; $793a: $a1
    sub [hl]                                      ; $793b: $96
    scf                                           ; $793c: $37
    nop                                           ; $793d: $00
    db $dd                                        ; $793e: $dd
    db $ec                                        ; $793f: $ec
    inc [hl]                                      ; $7940: $34
    and [hl]                                      ; $7941: $a6
    xor $b5                                       ; $7942: $ee $b5
    ld de, $ea63                                  ; $7944: $11 $63 $ea
    inc [hl]                                      ; $7947: $34
    ld [hl], c                                    ; $7948: $71
    add $b6                                       ; $7949: $c6 $b6
    ld c, [hl]                                    ; $794b: $4e
    sbc a                                         ; $794c: $9f
    jp c, $0003                                   ; $794d: $da $03 $00

    db $dd                                        ; $7950: $dd
    db $ec                                        ; $7951: $ec
    add d                                         ; $7952: $82
    ldh a, [$61]                                  ; $7953: $f0 $61
    xor [hl]                                      ; $7955: $ae
    ldh a, [$75]                                  ; $7956: $f0 $75
    ld h, c                                       ; $7958: $61
    jp z, $a688                                   ; $7959: $ca $88 $a6

    push de                                       ; $795c: $d5
    ccf                                           ; $795d: $3f
    rst $08                                       ; $795e: $cf
    push de                                       ; $795f: $d5
    ld l, l                                       ; $7960: $6d
    pop bc                                        ; $7961: $c1
    xor h                                         ; $7962: $ac
    dec sp                                        ; $7963: $3b
    sub d                                         ; $7964: $92
    dec a                                         ; $7965: $3d
    nop                                           ; $7966: $00
    ld a, l                                       ; $7967: $7d
    ld [hl], e                                    ; $7968: $73
    sub c                                         ; $7969: $91
    dec bc                                        ; $796a: $0b
    dec de                                        ; $796b: $1b
    push bc                                       ; $796c: $c5
    cp a                                          ; $796d: $bf
    adc [hl]                                      ; $796e: $8e
    ld h, l                                       ; $796f: $65
    and $45                                       ; $7970: $e6 $45
    ld e, d                                       ; $7972: $5a
    call z, $ae79                                 ; $7973: $cc $79 $ae
    cp h                                          ; $7976: $bc
    ld c, $ca                                     ; $7977: $0e $ca
    sub d                                         ; $7979: $92
    jp c, Jump_03a_75f0                           ; $797a: $da $f0 $75

    add $3d                                       ; $797d: $c6 $3d
    ld a, [$f85c]                                 ; $797f: $fa $5c $f8
    jp z, Jump_000_017b                           ; $7982: $ca $7b $01

    add hl, hl                                    ; $7985: $29
    inc sp                                        ; $7986: $33
    adc l                                         ; $7987: $8d
    ld [de], a                                    ; $7988: $12
    inc de                                        ; $7989: $13
    cp [hl]                                       ; $798a: $be
    ld [hl], e                                    ; $798b: $73
    add l                                         ; $798c: $85
    ld a, [hl]                                    ; $798d: $7e
    sub $59                                       ; $798e: $d6 $59
    ld [hl], e                                    ; $7990: $73
    pop af                                        ; $7991: $f1
    db $eb                                        ; $7992: $eb
    ld c, [hl]                                    ; $7993: $4e
    xor e                                         ; $7994: $ab
    adc d                                         ; $7995: $8a
    xor e                                         ; $7996: $ab
    db $10                                        ; $7997: $10
    dec a                                         ; $7998: $3d
    db $eb                                        ; $7999: $eb
    call nc, Call_03a_5941                        ; $799a: $d4 $41 $59
    ld d, d                                       ; $799d: $52
    dec de                                        ; $799e: $1b
    cp [hl]                                       ; $799f: $be
    adc [hl]                                      ; $79a0: $8e
    jr c, @-$68                                   ; $79a1: $38 $96

    sbc c                                         ; $79a3: $99
    inc l                                         ; $79a4: $2c

jr_03a_79a5:
    add h                                         ; $79a5: $84
    ld e, d                                       ; $79a6: $5a
    sbc $00                                       ; $79a7: $de $00
    halt                                          ; $79a9: $76
    ld h, l                                       ; $79aa: $65
    ld e, a                                       ; $79ab: $5f
    ld [hl], a                                    ; $79ac: $77
    ld a, [de]                                    ; $79ad: $1a
    ld sp, $d472                                  ; $79ae: $31 $72 $d4
    ret c                                         ; $79b1: $d8

    or l                                          ; $79b2: $b5
    jp c, Jump_03a_6759                           ; $79b3: $da $59 $67

    ld e, [hl]                                    ; $79b6: $5e
    and b                                         ; $79b7: $a0
    rst $30                                       ; $79b8: $f7
    cp c                                          ; $79b9: $b9
    jr nc, jr_03a_7a21                            ; $79ba: $30 $65

    ld l, a                                       ; $79bc: $6f
    ld [hl], c                                    ; $79bd: $71
    ld [hl], $37                                  ; $79be: $36 $37
    nop                                           ; $79c0: $00
    cp l                                          ; $79c1: $bd
    inc de                                        ; $79c2: $13
    ld d, a                                       ; $79c3: $57
    ld a, [hl]                                    ; $79c4: $7e
    push af                                       ; $79c5: $f5
    ld b, e                                       ; $79c6: $43
    db $ed                                        ; $79c7: $ed
    ld d, a                                       ; $79c8: $57
    ld a, [bc]                                    ; $79c9: $0a
    and c                                         ; $79ca: $a1
    rla                                           ; $79cb: $17
    sbc e                                         ; $79cc: $9b
    xor a                                         ; $79cd: $af
    ld d, e                                       ; $79ce: $53
    rst $30                                       ; $79cf: $f7
    jr @-$55                                      ; $79d0: $18 $a9

    ldh a, [$75]                                  ; $79d2: $f0 $75
    rst $10                                       ; $79d4: $d7
    rst $28                                       ; $79d5: $ef
    ld d, b                                       ; $79d6: $50
    ld a, e                                       ; $79d7: $7b
    sbc $00                                       ; $79d8: $de $00
    db $dd                                        ; $79da: $dd
    db $ed                                        ; $79db: $ed
    ld e, a                                       ; $79dc: $5f
    ld d, a                                       ; $79dd: $57
    ld l, c                                       ; $79de: $69
    ld a, [de]                                    ; $79df: $1a
    ld [hl], e                                    ; $79e0: $73
    cp a                                          ; $79e1: $bf
    cp d                                          ; $79e2: $ba
    ld c, l                                       ; $79e3: $4d
    ccf                                           ; $79e4: $3f
    call z, Call_000_009e                         ; $79e5: $cc $9e $00
    ld a, l                                       ; $79e8: $7d
    inc de                                        ; $79e9: $13
    cp [hl]                                       ; $79ea: $be
    sub d                                         ; $79eb: $92
    db $d3                                        ; $79ec: $d3
    ld b, [hl]                                    ; $79ed: $46
    adc h                                         ; $79ee: $8c
    ld a, c                                       ; $79ef: $79
    inc bc                                        ; $79f0: $03
    rla                                           ; $79f1: $17
    rlca                                          ; $79f2: $07
    rst $28                                       ; $79f3: $ef
    sbc l                                         ; $79f4: $9d
    daa                                           ; $79f5: $27
    ld l, a                                       ; $79f6: $6f
    jp c, $bdeb                                   ; $79f7: $da $eb $bd

    adc e                                         ; $79fa: $8b
    ei                                            ; $79fb: $fb
    ld a, l                                       ; $79fc: $7d
    jp hl                                         ; $79fd: $e9


    ld a, [de]                                    ; $79fe: $1a
    and $94                                       ; $79ff: $e6 $94
    and e                                         ; $7a01: $a3
    sbc d                                         ; $7a02: $9a
    rrca                                          ; $7a03: $0f
    ld e, a                                       ; $7a04: $5f
    ld a, [hl]                                    ; $7a05: $7e
    pop af                                        ; $7a06: $f1
    ld sp, $0de6                                  ; $7a07: $31 $e6 $0d
    nop                                           ; $7a0a: $00
    db $dd                                        ; $7a0b: $dd
    cpl                                           ; $7a0c: $2f
    db $e3                                        ; $7a0d: $e3
    add d                                         ; $7a0e: $82
    xor a                                         ; $7a0f: $af
    inc hl                                        ; $7a10: $23
    ld b, [hl]                                    ; $7a11: $46
    jp z, $ecfb                                   ; $7a12: $ca $fb $ec

    cp c                                          ; $7a15: $b9
    ld l, [hl]                                    ; $7a16: $6e
    or $8f                                        ; $7a17: $f6 $8f
    ld l, e                                       ; $7a19: $6b
    jr jr_03a_79a5                                ; $7a1a: $18 $89

    pop af                                        ; $7a1c: $f1
    ld a, l                                       ; $7a1d: $7d
    ld c, [hl]                                    ; $7a1e: $4e
    or d                                          ; $7a1f: $b2
    di                                            ; $7a20: $f3

jr_03a_7a21:
    ld [hl-], a                                   ; $7a21: $32
    ld [c], a                                     ; $7a22: $e2
    adc $93                                       ; $7a23: $ce $93
    add [hl]                                      ; $7a25: $86
    ld d, b                                       ; $7a26: $50
    add $a8                                       ; $7a27: $c6 $a8
    dec a                                         ; $7a29: $3d
    halt                                          ; $7a2a: $76
    ld d, c                                       ; $7a2b: $51
    ld l, $c8                                     ; $7a2c: $2e $c8
    dec d                                         ; $7a2e: $15
    jp c, Jump_000_1cf8                           ; $7a2f: $da $f8 $1c

    ld [hl], c                                    ; $7a32: $71
    halt                                          ; $7a33: $76
    ld h, l                                       ; $7a34: $65
    ld bc, $d592                                  ; $7a35: $01 $92 $d5
    adc h                                         ; $7a38: $8c
    ld a, a                                       ; $7a39: $7f
    inc bc                                        ; $7a3a: $03
    db $dd                                        ; $7a3b: $dd
    cpl                                           ; $7a3c: $2f
    ld [hl], c                                    ; $7a3d: $71
    xor l                                         ; $7a3e: $ad
    ld a, [hl+]                                   ; $7a3f: $2a
    xor [hl]                                      ; $7a40: $ae
    jp c, Jump_000_27b1                           ; $7a41: $da $b1 $27

    nop                                           ; $7a44: $00
    ld a, l                                       ; $7a45: $7d
    rst $18                                       ; $7a46: $df
    scf                                           ; $7a47: $37
    xor [hl]                                      ; $7a48: $ae
    db $e4                                        ; $7a49: $e4
    db $f4                                        ; $7a4a: $f4
    dec sp                                        ; $7a4b: $3b
    cp h                                          ; $7a4c: $bc
    ld [hl], a                                    ; $7a4d: $77
    ld c, $3b                                     ; $7a4e: $0e $3b
    ld e, h                                       ; $7a50: $5c
    ldh a, [$3b]                                  ; $7a51: $f0 $3b
    sub h                                         ; $7a53: $94
    ld l, c                                       ; $7a54: $69
    di                                            ; $7a55: $f3
    add hl, sp                                    ; $7a56: $39
    add a                                         ; $7a57: $87
    dec bc                                        ; $7a58: $0b
    db $d3                                        ; $7a59: $d3
    ld d, e                                       ; $7a5a: $53
    ld d, d                                       ; $7a5b: $52
    ld [hl], e                                    ; $7a5c: $73
    push af                                       ; $7a5d: $f5
    ld b, e                                       ; $7a5e: $43
    cp c                                          ; $7a5f: $b9
    ld c, b                                       ; $7a60: $48
    ld h, h                                       ; $7a61: $64
    ld b, a                                       ; $7a62: $47
    ld d, d                                       ; $7a63: $52
    ld [hl], e                                    ; $7a64: $73
    pop hl                                        ; $7a65: $e1
    sra a                                         ; $7a66: $cb $2f
    ld c, h                                       ; $7a68: $4c
    ld c, a                                       ; $7a69: $4f
    add hl, de                                    ; $7a6a: $19
    ld sp, $cbca                                  ; $7a6b: $31 $ca $cb
    xor h                                         ; $7a6e: $ac
    db $d3                                        ; $7a6f: $d3
    cpl                                           ; $7a70: $2f
    ld c, l                                       ; $7a71: $4d
    or $6a                                        ; $7a72: $f6 $6a
    ld [hl], e                                    ; $7a74: $73
    inc bc                                        ; $7a75: $03
    db $dd                                        ; $7a76: $dd
    cpl                                           ; $7a77: $2f
    ld [hl], c                                    ; $7a78: $71
    ld d, l                                       ; $7a79: $55
    ld b, a                                       ; $7a7a: $47
    sbc l                                         ; $7a7b: $9d
    ld e, l                                       ; $7a7c: $5d
    ld e, c                                       ; $7a7d: $59
    add b                                         ; $7a7e: $80
    ld h, h                                       ; $7a7f: $64
    dec [hl]                                      ; $7a80: $35
    db $e3                                        ; $7a81: $e3
    rst $30                                       ; $7a82: $f7
    inc b                                         ; $7a83: $04
    halt                                          ; $7a84: $76
    ld h, l                                       ; $7a85: $65
    ld hl, $d9a5                                  ; $7a86: $21 $a5 $d9
    ld a, [$7266]                                 ; $7a89: $fa $66 $72
    sbc [hl]                                      ; $7a8c: $9e
    dec hl                                        ; $7a8d: $2b
    xor c                                         ; $7a8e: $a9
    xor e                                         ; $7a8f: $ab
    rra                                           ; $7a90: $1f
    ld c, d                                       ; $7a91: $4a
    sbc l                                         ; $7a92: $9d
    ld [hl], l                                    ; $7a93: $75
    dec e                                         ; $7a94: $1d
    ld [hl], c                                    ; $7a95: $71
    db $fd                                        ; $7a96: $fd
    ld e, [hl]                                    ; $7a97: $5e
    rst $28                                       ; $7a98: $ef
    ld e, l                                       ; $7a99: $5d
    sub $88                                       ; $7a9a: $d6 $88
    inc e                                         ; $7a9c: $1c
    ld h, [hl]                                    ; $7a9d: $66
    ld l, h                                       ; $7a9e: $6c
    and [hl]                                      ; $7a9f: $a6
    cp l                                          ; $7aa0: $bd
    adc $73                                       ; $7aa1: $ce $73
    ld sp, $8e7d                                  ; $7aa3: $31 $7d $8e
    ld h, l                                       ; $7aa6: $65
    or l                                          ; $7aa7: $b5
    ld b, e                                       ; $7aa8: $43
    sbc a                                         ; $7aa9: $9f
    or e                                          ; $7aaa: $b3
    ld l, $7e                                     ; $7aab: $2e $7e
    db $dd                                        ; $7aad: $dd
    ld l, c                                       ; $7aae: $69
    ld d, l                                       ; $7aaf: $55
    ld [hl], c                                    ; $7ab0: $71
    or l                                          ; $7ab1: $b5
    inc sp                                        ; $7ab2: $33
    pop bc                                        ; $7ab3: $c1

jr_03a_7ab4:
    sbc h                                         ; $7ab4: $9c
    ld h, [hl]                                    ; $7ab5: $66
    ld b, a                                       ; $7ab6: $47
    jr c, jr_03a_7ab4                             ; $7ab7: $38 $fb

    add h                                         ; $7ab9: $84
    ld h, b                                       ; $7aba: $60
    cp [hl]                                       ; $7abb: $be
    ld b, h                                       ; $7abc: $44
    cp l                                          ; $7abd: $bd
    ld bc, $59f6                                  ; $7abe: $01 $f6 $59
    ld e, $3e                                     ; $7ac1: $1e $3e
    ld c, l                                       ; $7ac3: $4d
    db $eb                                        ; $7ac4: $eb
    ld l, $4d                                     ; $7ac5: $2e $4d
    call c, Call_03a_7c95                         ; $7ac7: $dc $95 $7c
    dec l                                         ; $7aca: $2d
    or h                                          ; $7acb: $b4
    sbc $eb                                       ; $7acc: $de $eb
    ld l, [hl]                                    ; $7ace: $6e
    daa                                           ; $7acf: $27
    call nc, $bfd9                                ; $7ad0: $d4 $d9 $bf
    adc b                                         ; $7ad3: $88
    ld [hl], l                                    ; $7ad4: $75
    ld bc, $2319                                  ; $7ad5: $01 $19 $23
    ld h, l                                       ; $7ad8: $65
    sbc [hl]                                      ; $7ad9: $9e
    xor e                                         ; $7ada: $ab
    ld d, b                                       ; $7adb: $50
    db $fc                                        ; $7adc: $fc
    ei                                            ; $7add: $fb
    sbc [hl]                                      ; $7ade: $9e
    nop                                           ; $7adf: $00
    add c                                         ; $7ae0: $81
    ld [hl], $f0                                  ; $7ae1: $36 $f0
    ld l, c                                       ; $7ae3: $69
    ld e, d                                       ; $7ae4: $5a
    ld h, a                                       ; $7ae5: $67
    call $001b                                    ; $7ae6: $cd $1b $00
    rla                                           ; $7ae9: $17
    rlca                                          ; $7aea: $07
    rst $28                                       ; $7aeb: $ef
    ei                                            ; $7aec: $fb
    ld c, $20                                     ; $7aed: $0e $20
    ld l, d                                       ; $7aef: $6a
    push de                                       ; $7af0: $d5
    ld e, c                                       ; $7af1: $59
    inc e                                         ; $7af2: $1c
    and a                                         ; $7af3: $a7
    inc d                                         ; $7af4: $14
    sbc e                                         ; $7af5: $9b
    ld e, a                                       ; $7af6: $5f
    ld b, [hl]                                    ; $7af7: $46
    ld sp, hl                                     ; $7af8: $f9
    ld [hl], l                                    ; $7af9: $75
    inc h                                         ; $7afa: $24
    db $eb                                        ; $7afb: $eb
    sbc a                                         ; $7afc: $9f
    rst $20                                       ; $7afd: $e7
    ld [$0ba6], a                                 ; $7afe: $ea $a6 $0b
    ld d, d                                       ; $7b01: $52
    ld [$d4c7], a                                 ; $7b02: $ea $c7 $d4
    dec de                                        ; $7b05: $1b
    nop                                           ; $7b06: $00
    db $dd                                        ; $7b07: $dd
    db $ed                                        ; $7b08: $ed
    ld e, a                                       ; $7b09: $5f
    ld d, a                                       ; $7b0a: $57
    ld l, c                                       ; $7b0b: $69
    ld a, [de]                                    ; $7b0c: $1a
    ld [hl], e                                    ; $7b0d: $73
    ld c, $a7                                     ; $7b0e: $0e $a7
    rra                                           ; $7b10: $1f
    ld h, [hl]                                    ; $7b11: $66
    rst $08                                       ; $7b12: $cf
    ld e, l                                       ; $7b13: $5d
    adc [hl]                                      ; $7b14: $8e
    inc sp                                        ; $7b15: $33
    pop bc                                        ; $7b16: $c1
    ld h, [hl]                                    ; $7b17: $66
    ld [hl], d                                    ; $7b18: $72
    ld d, $c7                                     ; $7b19: $16 $c7
    add hl, hl                                    ; $7b1b: $29
    ld d, a                                       ; $7b1c: $57
    jp z, $bfd7                                   ; $7b1d: $ca $d7 $bf

    cp [hl]                                       ; $7b20: $be
    xor h                                         ; $7b21: $ac
    or h                                          ; $7b22: $b4
    ld d, d                                       ; $7b23: $52
    cp b                                          ; $7b24: $b8
    ldh [$2f], a                                  ; $7b25: $e0 $2f
    and h                                         ; $7b27: $a4
    ld hl, sp-$1a                                 ; $7b28: $f8 $e6
    ld [hl], e                                    ; $7b2a: $73
    inc l                                         ; $7b2b: $2c
    ld d, e                                       ; $7b2c: $53
    ld h, a                                       ; $7b2d: $67
    call $001b                                    ; $7b2e: $cd $1b $00
    ld a, l                                       ; $7b31: $7d
    di                                            ; $7b32: $f3
    ld b, $7d                                     ; $7b33: $06 $7d
    ld [hl], e                                    ; $7b35: $73
    pop bc                                        ; $7b36: $c1
    or a                                          ; $7b37: $b7
    ld c, $df                                     ; $7b38: $0e $df
    scf                                           ; $7b3a: $37
    xor [hl]                                      ; $7b3b: $ae
    ld h, $a6                                     ; $7b3c: $26 $a6
    ld c, $53                                     ; $7b3e: $0e $53
    inc sp                                        ; $7b40: $33
    ld c, d                                       ; $7b41: $4a
    ld [$abac], a                                 ; $7b42: $ea $ac $ab
    db $db                                        ; $7b45: $db
    db $e4                                        ; $7b46: $e4
    db $e3                                        ; $7b47: $e3
    jp Jump_03a_6817                              ; $7b48: $c3 $17 $68


    cp [hl]                                       ; $7b4b: $be
    db $d3                                        ; $7b4c: $d3
    and c                                         ; $7b4d: $a1
    add sp, $0d                                   ; $7b4e: $e8 $0d
    nop                                           ; $7b50: $00
    rst $10                                       ; $7b51: $d7
    db $f4                                        ; $7b52: $f4
    rst $28                                       ; $7b53: $ef
    rst $18                                       ; $7b54: $df
    cp a                                          ; $7b55: $bf
    ld a, a                                       ; $7b56: $7f
    rst $38                                       ; $7b57: $ff
    ei                                            ; $7b58: $fb

jr_03a_7b59:
    cp [hl]                                       ; $7b59: $be
    ld bc, $6981                                  ; $7b5a: $01 $81 $69
    sbc l                                         ; $7b5d: $9d
    dec a                                         ; $7b5e: $3d
    and l                                         ; $7b5f: $a5
    ld l, [hl]                                    ; $7b60: $6e
    adc c                                         ; $7b61: $89
    call c, $f279                                 ; $7b62: $dc $79 $f2
    ld [$e051], sp                                ; $7b65: $08 $51 $e0
    db $eb                                        ; $7b68: $eb
    ld a, [hl]                                    ; $7b69: $7e
    adc c                                         ; $7b6a: $89
    ld l, e                                       ; $7b6b: $6b
    ld d, l                                       ; $7b6c: $55
    ld [hl], c                                    ; $7b6d: $71
    inc d                                         ; $7b6e: $14
    ld l, d                                       ; $7b6f: $6a
    ld c, a                                       ; $7b70: $4f
    nop                                           ; $7b71: $00
    sub a                                         ; $7b72: $97
    ld h, $ee                                     ; $7b73: $26 $ee
    ld c, d                                       ; $7b75: $4a
    cp [hl]                                       ; $7b76: $be
    ld d, $5a                                     ; $7b77: $16 $5a
    ld l, a                                       ; $7b79: $6f
    nop                                           ; $7b7a: $00
    or $2f                                        ; $7b7b: $f6 $2f
    ld h, d                                       ; $7b7d: $62
    ld e, l                                       ; $7b7e: $5d
    ld b, b                                       ; $7b7f: $40
    add $48                                       ; $7b80: $c6 $48
    cp c                                          ; $7b82: $b9
    ld bc, $cfdd                                  ; $7b83: $01 $dd $cf
    pop hl                                        ; $7b86: $e1
    ld a, [hl+]                                   ; $7b87: $2a
    inc d                                         ; $7b88: $14
    rst $38                                       ; $7b89: $ff
    cp [hl]                                       ; $7b8a: $be
    rst $20                                       ; $7b8b: $e7
    ld l, $ca                                     ; $7b8c: $2e $ca
    dec b                                         ; $7b8e: $05
    cp c                                          ; $7b8f: $b9
    ld b, d                                       ; $7b90: $42
    dec de                                        ; $7b91: $1b
    sbc a                                         ; $7b92: $9f
    adc e                                         ; $7b93: $8b
    jp hl                                         ; $7b94: $e9


    ld [hl], e                                    ; $7b95: $73
    sbc d                                         ; $7b96: $9a
    dec e                                         ; $7b97: $1d
    pop hl                                        ; $7b98: $e1
    ld h, d                                       ; $7b99: $62
    cp e                                          ; $7b9a: $bb
    rst $10                                       ; $7b9b: $d7
    db $fd                                        ; $7b9c: $fd
    ld [$7e9f], a                                 ; $7b9d: $ea $9f $7e
    add a                                         ; $7ba0: $87
    cp d                                          ; $7ba1: $ba
    ld a, [c]                                     ; $7ba2: $f2
    ret c                                         ; $7ba3: $d8

    rst $38                                       ; $7ba4: $ff
    ld h, l                                       ; $7ba5: $65
    ld b, c                                       ; $7ba6: $41
    sbc d                                         ; $7ba7: $9a
    ld h, b                                       ; $7ba8: $60
    db $eb                                        ; $7ba9: $eb
    sbc a                                         ; $7baa: $9f
    jp c, $dd73                                   ; $7bab: $da $73 $dd

    cpl                                           ; $7bae: $2f
    db $e3                                        ; $7baf: $e3
    jr nz, jr_03a_7b59                            ; $7bb0: $20 $a7

    pop af                                        ; $7bb2: $f1
    push bc                                       ; $7bb3: $c5
    and $f7                                       ; $7bb4: $e6 $f7
    and c                                         ; $7bb6: $a1
    db $10                                        ; $7bb7: $10
    dec a                                         ; $7bb8: $3d
    ld h, l                                       ; $7bb9: $65
    ld c, $b3                                     ; $7bba: $0e $b3
    rst $20                                       ; $7bbc: $e7
    ld a, [$7934]                                 ; $7bbd: $fa $34 $79
    ld hl, sp+$5e                                 ; $7bc0: $f8 $5e
    ld l, l                                       ; $7bc2: $6d
    and [hl]                                      ; $7bc3: $a6
    ld e, h                                       ; $7bc4: $5c
    ld a, c                                       ; $7bc5: $79
    db $ec                                        ; $7bc6: $ec
    rst $38                                       ; $7bc7: $ff
    cp e                                          ; $7bc8: $bb
    add d                                         ; $7bc9: $82
    ld [c], a                                     ; $7bca: $e2
    ld e, e                                       ; $7bcb: $5b
    db $dd                                        ; $7bcc: $dd
    ld c, d                                       ; $7bcd: $4a
    ld l, c                                       ; $7bce: $69
    jp hl                                         ; $7bcf: $e9


    db $f4                                        ; $7bd0: $f4
    sbc $fa                                       ; $7bd1: $de $fa
    cp [hl]                                       ; $7bd3: $be
    ld l, a                                       ; $7bd4: $6f
    inc e                                         ; $7bd5: $1c
    ld [hl], c                                    ; $7bd6: $71
    ld [hl], l                                    ; $7bd7: $75
    ld e, e                                       ; $7bd8: $5b
    push af                                       ; $7bd9: $f5
    rst $10                                       ; $7bda: $d7
    xor l                                         ; $7bdb: $ad
    or h                                          ; $7bdc: $b4
    ld e, a                                       ; $7bdd: $5f
    ld c, b                                       ; $7bde: $48
    adc c                                         ; $7bdf: $89
    ld b, h                                       ; $7be0: $44
    ld a, [de]                                    ; $7be1: $1a
    xor $cb                                       ; $7be2: $ee $cb
    jr nz, jr_03a_7c47                            ; $7be4: $20 $61

    db $dd                                        ; $7be6: $dd
    ld [hl], d                                    ; $7be7: $72
    sbc [hl]                                      ; $7be8: $9e
    dec hl                                        ; $7be9: $2b
    xor c                                         ; $7bea: $a9
    xor e                                         ; $7beb: $ab
    rra                                           ; $7bec: $1f
    ld c, d                                       ; $7bed: $4a
    add l                                         ; $7bee: $85
    cpl                                           ; $7bef: $2f
    and h                                         ; $7bf0: $a4
    db $e4                                        ; $7bf1: $e4
    ld l, d                                       ; $7bf2: $6a
    ld l, $c8                                     ; $7bf3: $2e $c8

Call_03a_7bf5:
    ld a, l                                       ; $7bf5: $7d
    jr z, jr_03a_7c3c                             ; $7bf6: $28 $44

    rst $18                                       ; $7bf8: $df
    ld a, h                                       ; $7bf9: $7c
    ld l, $a6                                     ; $7bfa: $2e $a6
    ld c, a                                       ; $7bfc: $4f
    ld e, l                                       ; $7bfd: $5d
    ld c, c                                       ; $7bfe: $49
    ld e, l                                       ; $7bff: $5d
    ld l, c                                       ; $7c00: $69
    dec e                                         ; $7c01: $1d
    ld c, c                                       ; $7c02: $49
    sbc l                                         ; $7c03: $9d
    ld h, a                                       ; $7c04: $67
    sbc c                                         ; $7c05: $99
    ld [hl], c                                    ; $7c06: $71
    and d                                         ; $7c07: $a2
    add hl, sp                                    ; $7c08: $39
    rst $08                                       ; $7c09: $cf
    push de                                       ; $7c0a: $d5
    xor h                                         ; $7c0b: $ac
    ld d, e                                       ; $7c0c: $53
    jp c, $3bdf                                   ; $7c0d: $da $df $3b

    db $db                                        ; $7c10: $db

jr_03a_7c11:
    ld de, $3e13                                  ; $7c11: $11 $13 $3e
    ld l, l                                       ; $7c14: $6d
    ret nc                                        ; $7c15: $d0

    rst $10                                       ; $7c16: $d7

Jump_03a_7c17:
    xor c                                         ; $7c17: $a9
    db $eb                                        ; $7c18: $eb
    jr c, jr_03a_7c50                             ; $7c19: $38 $35

    adc a                                         ; $7c1b: $8f
    ld a, $c7                                     ; $7c1c: $3e $c7
    ld [hl-], a                                   ; $7c1e: $32
    db $fd                                        ; $7c1f: $fd
    jr nc, jr_03a_7c11                            ; $7c20: $30 $ef

    push af                                       ; $7c22: $f5
    ld a, [c]                                     ; $7c23: $f2
    call Call_03a_6f56                            ; $7c24: $cd $56 $6f
    nop                                           ; $7c27: $00
    halt                                          ; $7c28: $76
    ld a, [de]                                    ; $7c29: $1a
    ld d, d                                       ; $7c2a: $52
    ld [hl], d                                    ; $7c2b: $72
    sbc b                                         ; $7c2c: $98
    and e                                         ; $7c2d: $a3
    add $97                                       ; $7c2e: $c6 $97
    ld de, $6ea7                                  ; $7c30: $11 $a7 $6e
    and [hl]                                      ; $7c33: $a6
    cp h                                          ; $7c34: $bc
    ld a, [c]                                     ; $7c35: $f2
    sbc [hl]                                      ; $7c36: $9e
    sbc l                                         ; $7c37: $9d
    adc $b3                                       ; $7c38: $ce $b3
    ld a, [hl]                                    ; $7c3a: $7e
    ld l, l                                       ; $7c3b: $6d

jr_03a_7c3c:
    rst $28                                       ; $7c3c: $ef
    ld [hl], e                                    ; $7c3d: $73
    ld hl, $63fd                                  ; $7c3e: $21 $fd $63
    ld l, h                                       ; $7c41: $6c
    and l                                         ; $7c42: $a5
    db $fc                                        ; $7c43: $fc
    dec c                                         ; $7c44: $0d
    nop                                           ; $7c45: $00
    db $dd                                        ; $7c46: $dd

jr_03a_7c47:
    db $ec                                        ; $7c47: $ec
    rst $18                                       ; $7c48: $df
    ld a, [hl-]                                   ; $7c49: $3a
    jr z, jr_03a_7c97                             ; $7c4a: $28 $4b

    ld l, d                                       ; $7c4c: $6a
    jp Jump_000_1ed7                              ; $7c4d: $c3 $d7 $1e


jr_03a_7c50:
    db $eb                                        ; $7c50: $eb
    halt                                          ; $7c51: $76
    jp hl                                         ; $7c52: $e9


    db $e3                                        ; $7c53: $e3
    db $eb                                        ; $7c54: $eb
    inc a                                         ; $7c55: $3c
    ld h, a                                       ; $7c56: $67
    add d                                         ; $7c57: $82
    ld l, c                                       ; $7c58: $69
    or d                                          ; $7c59: $b2
    ld a, h                                       ; $7c5a: $7c
    inc h                                         ; $7c5b: $24
    ld a, h                                       ; $7c5c: $7c
    xor h                                         ; $7c5d: $ac
    jp $f7c7                                      ; $7c5e: $c3 $c7 $f7


    ccf                                           ; $7c61: $3f
    rst $08                                       ; $7c62: $cf

Call_03a_7c63:
    sbc c                                         ; $7c63: $99
    cpl                                           ; $7c64: $2f
    rst $18                                       ; $7c65: $df
    ld sp, hl                                     ; $7c66: $f9
    cp $0f                                        ; $7c67: $fe $0f
    rst $18                                       ; $7c69: $df
    ld a, c                                       ; $7c6a: $79
    ld a, [c]                                     ; $7c6b: $f2
    db $10                                        ; $7c6c: $10
    ld e, a                                       ; $7c6d: $5f
    rst $20                                       ; $7c6e: $e7
    cp c                                          ; $7c6f: $b9
    set 2, d                                      ; $7c70: $cb $d2
    and a                                         ; $7c72: $a7
    xor [hl]                                      ; $7c73: $ae
    and h                                         ; $7c74: $a4
    ld l, $f0                                     ; $7c75: $2e $f0
    dec sp                                        ; $7c77: $3b
    add hl, hl                                    ; $7c78: $29
    call nc, $ee79                                ; $7c79: $d4 $79 $ee
    ld l, h                                       ; $7c7c: $6c
    ld c, d                                       ; $7c7d: $4a
    ld l, h                                       ; $7c7e: $6c
    call c, $19d9                                 ; $7c7f: $dc $d9 $19
    db $e3                                        ; $7c82: $e3
    xor h                                         ; $7c83: $ac
    xor e                                         ; $7c84: $ab
    sbc l                                         ; $7c85: $9d
    add hl, bc                                    ; $7c86: $09
    cp [hl]                                       ; $7c87: $be
    xor [hl]                                      ; $7c88: $ae
    xor $d2                                       ; $7c89: $ee $d2
    ld e, $00                                     ; $7c8b: $1e $00
    db $dd                                        ; $7c8d: $dd
    ld l, $0e                                     ; $7c8e: $2e $0e
    or $58                                        ; $7c90: $f6 $58
    or a                                          ; $7c92: $b7
    rr d                                          ; $7c93: $cb $1a

Call_03a_7c95:
    sub c                                         ; $7c95: $91
    cp e                                          ; $7c96: $bb

jr_03a_7c97:
    db $f4                                        ; $7c97: $f4
    pop af                                        ; $7c98: $f1
    ld [hl], l                                    ; $7c99: $75
    sbc [hl]                                      ; $7c9a: $9e
    db $eb                                        ; $7c9b: $eb
    dec e                                         ; $7c9c: $1d
    ld c, h                                       ; $7c9d: $4c
    sub e                                         ; $7c9e: $93
    push hl                                       ; $7c9f: $e5
    inc hl                                        ; $7ca0: $23
    ld a, e                                       ; $7ca1: $7b
    nop                                           ; $7ca2: $00
    db $dd                                        ; $7ca3: $dd
    cpl                                           ; $7ca4: $2f
    ld [hl], c                                    ; $7ca5: $71
    ld d, l                                       ; $7ca6: $55
    and a                                         ; $7ca7: $a7
    adc c                                         ; $7ca8: $89
    dec hl                                        ; $7ca9: $2b
    xor a                                         ; $7caa: $af
    sub e                                         ; $7cab: $93
    rst $00                                       ; $7cac: $c7
    rst $10                                       ; $7cad: $d7
    ld a, c                                       ; $7cae: $79
    adc $04                                       ; $7caf: $ce $04
    db $d3                                        ; $7cb1: $d3
    ld h, h                                       ; $7cb2: $64
    ld sp, hl                                     ; $7cb3: $f9
    ret z                                         ; $7cb4: $c8

    sbc [hl]                                      ; $7cb5: $9e
    db $eb                                        ; $7cb6: $eb
    sbc e                                         ; $7cb7: $9b
    db $d3                                        ; $7cb8: $d3
    call nz, $e3c9                                ; $7cb9: $c4 $c9 $e3
    db $eb                                        ; $7cbc: $eb
    inc a                                         ; $7cbd: $3c
    ld d, a                                       ; $7cbe: $57
    and c                                         ; $7cbf: $a1
    ld hl, sp-$09                                 ; $7cc0: $f8 $f7
    ldh a, [$75]                                  ; $7cc2: $f0 $75
    rst $00                                       ; $7cc4: $c7
    db $ec                                        ; $7cc5: $ec
    add hl, bc                                    ; $7cc6: $09
    nop                                           ; $7cc7: $00
    ld a, l                                       ; $7cc8: $7d
    inc de                                        ; $7cc9: $13
    cp [hl]                                       ; $7cca: $be
    sub b                                         ; $7ccb: $90
    sub d                                         ; $7ccc: $92
    and e                                         ; $7ccd: $a3
    add $2e                                       ; $7cce: $c6 $2e
    ld e, h                                       ; $7cd0: $5c
    db $ed                                        ; $7cd1: $ed
    xor h                                         ; $7cd2: $ac
    sub e                                         ; $7cd3: $93
    ld h, [hl]                                    ; $7cd4: $66
    ld e, [hl]                                    ; $7cd5: $5e
    rst $28                                       ; $7cd6: $ef
    push af                                       ; $7cd7: $f5
    ld a, [c]                                     ; $7cd8: $f2
    xor h                                         ; $7cd9: $ac
    cp e                                          ; $7cda: $bb
    ld [hl], h                                    ; $7cdb: $74
    and l                                         ; $7cdc: $a5
    or b                                          ; $7cdd: $b0
    ld a, [c]                                     ; $7cde: $f2
    jr c, jr_03a_7d04                             ; $7cdf: $38 $23

    ld e, c                                       ; $7ce1: $59
    and a                                         ; $7ce2: $a7
    adc $73                                       ; $7ce3: $ce $73
    dec e                                         ; $7ce5: $1d
    ld [hl], c                                    ; $7ce6: $71
    db $fd                                        ; $7ce7: $fd
    ld e, [hl]                                    ; $7ce8: $5e
    ld h, a                                       ; $7ce9: $67
    ld e, l                                       ; $7cea: $5d
    db $fd                                        ; $7ceb: $fd
    ld d, b                                       ; $7cec: $50
    ld [$bfaa], a                                 ; $7ced: $ea $aa $bf
    ld c, [hl]                                    ; $7cf0: $4e
    ld c, l                                       ; $7cf1: $4d
    cp l                                          ; $7cf2: $bd
    ld bc, $11e7                                  ; $7cf3: $01 $e7 $11
    db $db                                        ; $7cf6: $db
    rla                                           ; $7cf7: $17
    ld hl, sp+$32                                 ; $7cf8: $f8 $32
    jp z, Jump_000_3aaf                           ; $7cfa: $ca $af $3a

    and l                                         ; $7cfd: $a5
    cp $79                                        ; $7cfe: $fe $79
    xor $0f                                       ; $7d00: $ee $0f
    ld a, [hl]                                    ; $7d02: $7e
    rst $18                                       ; $7d03: $df

jr_03a_7d04:
    ld h, h                                       ; $7d04: $64
    cp a                                          ; $7d05: $bf
    cp d                                          ; $7d06: $ba
    call $a164                                    ; $7d07: $cd $64 $a1
    ld sp, $16cd                                  ; $7d0a: $31 $cd $16
    ld bc, $2fdd                                  ; $7d0d: $01 $dd $2f
    ei                                            ; $7d10: $fb
    cp d                                          ; $7d11: $ba
    db $d3                                        ; $7d12: $d3
    xor d                                         ; $7d13: $aa
    ld [c], a                                     ; $7d14: $e2
    add d                                         ; $7d15: $82
    ld l, a                                       ; $7d16: $6f
    xor b                                         ; $7d17: $a8
    inc sp                                        ; $7d18: $33
    ld e, c                                       ; $7d19: $59
    ld l, b                                       ; $7d1a: $68
    ld c, h                                       ; $7d1b: $4c
    or e                                          ; $7d1c: $b3
    push bc                                       ; $7d1d: $c5
    sbc [hl]                                      ; $7d1e: $9e
    or e                                          ; $7d1f: $b3
    ld a, a                                       ; $7d20: $7f
    db $eb                                        ; $7d21: $eb
    inc e                                         ; $7d22: $1c
    adc $14                                       ; $7d23: $ce $14
    rst $10                                       ; $7d25: $d7
    sbc c                                         ; $7d26: $99
    rst $20                                       ; $7d27: $e7
    ld c, h                                       ; $7d28: $4c
    ld d, $1a                                     ; $7d29: $16 $1a
    db $d3                                        ; $7d2b: $d3
    ld [de], a                                    ; $7d2c: $12
    sbc e                                         ; $7d2d: $9b
    add $d7                                       ; $7d2e: $c6 $d7
    ld de, $9f67                                  ; $7d30: $11 $67 $9f
    db $10                                        ; $7d33: $10
    call z, $a897                                 ; $7d34: $cc $97 $a8
    rst $30                                       ; $7d37: $f7
    ld a, l                                       ; $7d38: $7d

Call_03a_7d39:
    ld e, e                                       ; $7d39: $5b
    rla                                           ; $7d3a: $17
    db $e4                                        ; $7d3b: $e4
    jp nc, $e7c6                                  ; $7d3c: $d2 $c6 $e7

    inc l                                         ; $7d3f: $2c
    adc [hl]                                      ; $7d40: $8e
    ld d, e                                       ; $7d41: $53
    ld l, $74                                     ; $7d42: $2e $74
    db $f4                                        ; $7d44: $f4
    call nz, Call_03a_7d39                        ; $7d45: $c4 $39 $7d
    ld e, c                                       ; $7d48: $59
    ld hl, sp-$0e                                 ; $7d49: $f8 $f2
    dec bc                                        ; $7d4b: $0b
    cp [hl]                                       ; $7d4c: $be
    and c                                         ; $7d4d: $a1
    xor h                                         ; $7d4e: $ac
    ld a, [hl]                                    ; $7d4f: $7e
    xor b                                         ; $7d50: $a8
    db $fd                                        ; $7d51: $fd
    cp l                                          ; $7d52: $bd
    sbc $ee                                       ; $7d53: $de $ee
    pop de                                        ; $7d55: $d1
    rst $20                                       ; $7d56: $e7
    ld c, h                                       ; $7d57: $4c
    sub $a1                                       ; $7d58: $d6 $a1
    ld d, b                                       ; $7d5a: $50
    ld [hl], a                                    ; $7d5b: $77
    jp hl                                         ; $7d5c: $e9


    db $e3                                        ; $7d5d: $e3
    db $eb                                        ; $7d5e: $eb
    inc a                                         ; $7d5f: $3c

jr_03a_7d60:
    ld h, a                                       ; $7d60: $67
    add d                                         ; $7d61: $82
    ld l, c                                       ; $7d62: $69
    or d                                          ; $7d63: $b2
    ld a, h                                       ; $7d64: $7c
    inc h                                         ; $7d65: $24
    ld a, h                                       ; $7d66: $7c
    dec e                                         ; $7d67: $1d
    and a                                         ; $7d68: $a7
    and $47                                       ; $7d69: $e6 $47
    inc e                                         ; $7d6b: $1c
    res 1, b                                      ; $7d6c: $cb $88
    sub l                                         ; $7d6e: $95
    inc l                                         ; $7d6f: $2c
    ld sp, $e5a5                                  ; $7d70: $31 $a5 $e5
    dec c                                         ; $7d73: $0d
    nop                                           ; $7d74: $00
    ld a, l                                       ; $7d75: $7d
    ld [$befa], a                                 ; $7d76: $ea $fa $be
    ld l, a                                       ; $7d79: $6f
    inc hl                                        ; $7d7a: $23
    call z, Call_000_1c59                         ; $7d7b: $cc $59 $1c
    ld d, a                                       ; $7d7e: $57
    ld [hl], e                                    ; $7d7f: $73
    sub l                                         ; $7d80: $95
    or h                                          ; $7d81: $b4
    xor $67                                       ; $7d82: $ee $67
    or d                                          ; $7d84: $b2
    ld c, $e5                                     ; $7d85: $0e $e5
    ld h, l                                       ; $7d87: $65
    ld c, $5f                                     ; $7d88: $0e $5f
    ld h, a                                       ; $7d8a: $67
    call c, Call_03a_7c63                         ; $7d8b: $dc $63 $7c
    cp l                                          ; $7d8e: $bd
    rst $10                                       ; $7d8f: $d7
    res 4, c                                      ; $7d90: $cb $a1
    push bc                                       ; $7d92: $c5
    ld [hl], c                                    ; $7d93: $71
    sbc b                                         ; $7d94: $98
    dec hl                                        ; $7d95: $2b
    add l                                         ; $7d96: $85
    sub l                                         ; $7d97: $95
    ld d, a                                       ; $7d98: $57
    ld [c], a                                     ; $7d99: $e2

jr_03a_7d9a:
    adc h                                         ; $7d9a: $8c
    ld h, h                                       ; $7d9b: $64
    sbc l                                         ; $7d9c: $9d
    ld a, [hl-]                                   ; $7d9d: $3a
    rst $08                                       ; $7d9e: $cf
    ld [hl], l                                    ; $7d9f: $75
    call nz, Call_03a_7bf5                        ; $7da0: $c4 $f5 $7b
    sbc l                                         ; $7da3: $9d
    ld [hl], l                                    ; $7da4: $75
    push af                                       ; $7da5: $f5
    ld b, e                                       ; $7da6: $43
    xor c                                         ; $7da7: $a9
    xor e                                         ; $7da8: $ab
    cp $3a                                        ; $7da9: $fe $3a
    dec [hl]                                      ; $7dab: $35
    dec d                                         ; $7dac: $15
    cp [hl]                                       ; $7dad: $be
    sub d                                         ; $7dae: $92
    or e                                          ; $7daf: $b3
    jr c, jr_03a_7d60                             ; $7db0: $38 $ae

    push de                                       ; $7db2: $d5
    ld h, c                                       ; $7db3: $61
    ld c, d                                       ; $7db4: $4a
    db $fc                                        ; $7db5: $fc
    ld d, c                                       ; $7db6: $51
    rst $00                                       ; $7db7: $c7
    ld [hl-], a                                   ; $7db8: $32
    inc de                                        ; $7db9: $13
    ld c, h                                       ; $7dba: $4c
    sub e                                         ; $7dbb: $93
    push hl                                       ; $7dbc: $e5
    inc hl                                        ; $7dbd: $23
    ld l, a                                       ; $7dbe: $6f
    nop                                           ; $7dbf: $00
    ld h, a                                       ; $7dc0: $67
    dec sp                                        ; $7dc1: $3b
    ld h, d                                       ; $7dc2: $62
    jp nz, Jump_000_3a17                          ; $7dc3: $c2 $17 $3a

    ld [$cdb4], a                                 ; $7dc6: $ea $b4 $cd
    inc h                                         ; $7dc9: $24
    ld l, d                                       ; $7dca: $6a
    add e                                         ; $7dcb: $83
    inc e                                         ; $7dcc: $1c
    ld [hl], l                                    ; $7dcd: $75
    cp a                                          ; $7dce: $bf
    ld e, [hl]                                    ; $7dcf: $5e
    sub b                                         ; $7dd0: $90
    or h                                          ; $7dd1: $b4
    jr nc, jr_03a_7e50                            ; $7dd2: $30 $7c

    ld hl, sp-$46                                 ; $7dd4: $f8 $ba
    ld b, a                                       ; $7dd6: $47
    xor [hl]                                      ; $7dd7: $ae
    db $e4                                        ; $7dd8: $e4
    ld b, d                                       ; $7dd9: $42
    ld b, a                                       ; $7dda: $47
    sbc a                                         ; $7ddb: $9f
    inc sp                                        ; $7ddc: $33
    ld e, a                                       ; $7ddd: $5f
    ld [hl], a                                    ; $7dde: $77
    jp c, $cf4b                                   ; $7ddf: $da $4b $cf

    reti                                          ; $7de2: $d9


    jp hl                                         ; $7de3: $e9


    ld e, b                                       ; $7de4: $58
    halt                                          ; $7de5: $76
    nop                                           ; $7de6: $00
    ld [hl], $93                                  ; $7de7: $36 $93
    or e                                          ; $7de9: $b3
    jr c, jr_03a_7d9a                             ; $7dea: $38 $ae

    and $aa                                       ; $7dec: $e6 $aa
    cp a                                          ; $7dee: $bf
    call nz, $01bf                                ; $7def: $c4 $bf $01
    db $dd                                        ; $7df2: $dd
    xor a                                         ; $7df3: $af
    sbc [hl]                                      ; $7df4: $9e
    push bc                                       ; $7df5: $c5
    ld d, l                                       ; $7df6: $55
    sbc l                                         ; $7df7: $9d
    ld h, $8e                                     ; $7df8: $26 $8e
    ld a, [$f3ba]                                 ; $7dfa: $fa $ba $f3
    db $e4                                        ; $7dfd: $e4
    ld hl, $cebe                                  ; $7dfe: $21 $be $ce
    ld [hl], e                                    ; $7e01: $73
    sub a                                         ; $7e02: $97
    and l                                         ; $7e03: $a5
    ld c, a                                       ; $7e04: $4f
    ld e, l                                       ; $7e05: $5d
    ld c, c                                       ; $7e06: $49
    ld e, l                                       ; $7e07: $5d
    ldh [rPCM34], a                               ; $7e08: $e0 $77
    ld d, d                                       ; $7e0a: $52
    xor b                                         ; $7e0b: $a8
    dec a                                         ; $7e0c: $3d
    rst $10                                       ; $7e0d: $d7
    db $fd                                        ; $7e0e: $fd
    inc e                                         ; $7e0f: $1c
    adc $e2                                       ; $7e10: $ce $e2
    xor d                                         ; $7e12: $aa
    ld c, [hl]                                    ; $7e13: $4e
    cp a                                          ; $7e14: $bf
    sub e                                         ; $7e15: $93
    ld b, d                                       ; $7e16: $42
    sbc l                                         ; $7e17: $9d
    ld h, $f6                                     ; $7e18: $26 $f6
    inc b                                         ; $7e1a: $04
    sub a                                         ; $7e1b: $97

jr_03a_7e1c:
    and l                                         ; $7e1c: $a5
    ld c, a                                       ; $7e1d: $4f
    ld e, l                                       ; $7e1e: $5d
    ld c, c                                       ; $7e1f: $49
    sbc l                                         ; $7e20: $9d
    ld a, [hl]                                    ; $7e21: $7e
    daa                                           ; $7e22: $27
    add l                                         ; $7e23: $85
    ld a, d                                       ; $7e24: $7a
    rst $28                                       ; $7e25: $ef
    ld [$4e61], a                                 ; $7e26: $ea $61 $4e
    ld l, l                                       ; $7e29: $6d
    ld c, e                                       ; $7e2a: $4b
    adc $73                                       ; $7e2b: $ce $73
    dec h                                         ; $7e2d: $25
    ld [hl], l                                    ; $7e2e: $75
    dec e                                         ; $7e2f: $1d
    ld b, a                                       ; $7e30: $47
    ld c, h                                       ; $7e31: $4c
    cp l                                          ; $7e32: $bd
    ld [hl], a                                    ; $7e33: $77
    add hl, sp                                    ; $7e34: $39
    cp $2a                                        ; $7e35: $fe $2a
    db $ec                                        ; $7e37: $ec
    cp a                                          ; $7e38: $bf
    ld d, b                                       ; $7e39: $50
    or d                                          ; $7e3a: $b2
    ld d, e                                       ; $7e3b: $53
    ld [hl], l                                    ; $7e3c: $75
    ld c, $7f                                     ; $7e3d: $0e $7f

jr_03a_7e3f:
    ld d, $c7                                     ; $7e3f: $16 $c7
    jp hl                                         ; $7e41: $e9


    ld [hl], a                                    ; $7e42: $77
    jp c, $a7ef                                   ; $7e43: $da $ef $a7

    adc $34                                       ; $7e46: $ce $34
    ld a, [$37f7]                                 ; $7e48: $fa $f7 $37
    nop                                           ; $7e4b: $00
    ld a, l                                       ; $7e4c: $7d
    ld [$befa], a                                 ; $7e4d: $ea $fa $be

jr_03a_7e50:
    rst $28                                       ; $7e50: $ef
    xor $bd                                       ; $7e51: $ee $bd
    ld l, l                                       ; $7e53: $6d
    db $eb                                        ; $7e54: $eb
    sbc h                                         ; $7e55: $9c
    ld [hl], d                                    ; $7e56: $72
    cp [hl]                                       ; $7e57: $be
    ld l, c                                       ; $7e58: $69
    ld l, h                                       ; $7e59: $6c
    ld [$8e39], sp                                ; $7e5a: $08 $39 $8e
    ld h, l                                       ; $7e5d: $65
    ld a, [$949d]                                 ; $7e5e: $fa $9d $94
    db $fd                                        ; $7e61: $fd
    call nc, $4699                                ; $7e62: $d4 $99 $46
    rst $38                                       ; $7e65: $ff
    cp [hl]                                       ; $7e66: $be
    daa                                           ; $7e67: $27
    nop                                           ; $7e68: $00
    ld a, l                                       ; $7e69: $7d
    ld [hl], e                                    ; $7e6a: $73
    dec [hl]                                      ; $7e6b: $35
    ld d, a                                       ; $7e6c: $57
    ld [hl], d                                    ; $7e6d: $72
    and c                                         ; $7e6e: $a1
    db $10                                        ; $7e6f: $10
    ld [hl], d                                    ; $7e70: $72
    jr jr_03a_7e1c                                ; $7e71: $18 $a9

    rst $30                                       ; $7e73: $f7
    ld [bc], a                                    ; $7e74: $02
    jr z, jr_03a_7eb0                             ; $7e75: $28 $39

    rst $08                                       ; $7e77: $cf
    ld c, $c5                                     ; $7e78: $0e $c5
    and $75                                       ; $7e7a: $e6 $75
    ld h, $eb                                     ; $7e7c: $26 $eb
    ld d, b                                       ; $7e7e: $50
    ld e, [hl]                                    ; $7e7f: $5e
    jp z, $bdeb                                   ; $7e80: $ca $eb $bd

    adc e                                         ; $7e83: $8b
    ld a, [hl]                                    ; $7e84: $7e
    push af                                       ; $7e85: $f5
    ld e, e                                       ; $7e86: $5b
    ld d, e                                       ; $7e87: $53
    ld l, h                                       ; $7e88: $6c
    ld a, [hl]                                    ; $7e89: $7e
    call nc, $85d8                                ; $7e8a: $d4 $d8 $85
    db $eb                                        ; $7e8d: $eb
    cp h                                          ; $7e8e: $bc
    add $c7                                       ; $7e8f: $c6 $c7
    ret z                                         ; $7e91: $c8

    ld c, c                                       ; $7e92: $49
    inc sp                                        ; $7e93: $33
    xor a                                         ; $7e94: $af
    rst $30                                       ; $7e95: $f7
    ld a, [$5d34]                                 ; $7e96: $fa $34 $5d
    sub b                                         ; $7e99: $90
    ld d, d                                       ; $7e9a: $52
    ccf                                           ; $7e9b: $3f
    and [hl]                                      ; $7e9c: $a6
    xor [hl]                                      ; $7e9d: $ae
    ld b, d                                       ; $7e9e: $42
    db $f4                                        ; $7e9f: $f4
    call nz, Call_03a_5941                        ; $7ea0: $c4 $41 $59
    ld d, d                                       ; $7ea3: $52
    dec de                                        ; $7ea4: $1b
    cp [hl]                                       ; $7ea5: $be
    adc [hl]                                      ; $7ea6: $8e
    jr c, jr_03a_7e3f                             ; $7ea7: $38 $96

    sbc c                                         ; $7ea9: $99
    inc l                                         ; $7eaa: $2c
    add h                                         ; $7eab: $84
    ld e, d                                       ; $7eac: $5a
    jp nz, Jump_03a_5217                          ; $7ead: $c2 $17 $52

jr_03a_7eb0:
    ld [hl], d                                    ; $7eb0: $72
    ld h, $3b                                     ; $7eb1: $26 $3b
    ld a, [c]                                     ; $7eb3: $f2
    cp b                                          ; $7eb4: $b8
    jp c, Jump_03a_6099                           ; $7eb5: $da $99 $60

    xor [hl]                                      ; $7eb8: $ae
    xor $d2                                       ; $7eb9: $ee $d2
    dec de                                        ; $7ebb: $1b
    nop                                           ; $7ebc: $00
    ld a, l                                       ; $7ebd: $7d
    ld [$be1a], a                                 ; $7ebe: $ea $1a $be
    ldh a, [rWX]                                  ; $7ec1: $f0 $4b
    sub $2d                                       ; $7ec3: $d6 $2d
    cp [hl]                                       ; $7ec5: $be
    sbc $3b                                       ; $7ec6: $de $3b
    db $ec                                        ; $7ec8: $ec
    adc b                                         ; $7ec9: $88
    or e                                          ; $7eca: $b3
    adc [hl]                                      ; $7ecb: $8e
    ld e, c                                       ; $7ecc: $59
    ret nz                                        ; $7ecd: $c0

    and l                                         ; $7ece: $a5
    add a                                         ; $7ecf: $87
    inc bc                                        ; $7ed0: $03
    rlca                                          ; $7ed1: $07
    ld a, l                                       ; $7ed2: $7d
    dec c                                         ; $7ed3: $0d
    rra                                           ; $7ed4: $1f
    cp [hl]                                       ; $7ed5: $be
    inc a                                         ; $7ed6: $3c
    or $fb                                        ; $7ed7: $f6 $fb
    ld a, l                                       ; $7ed9: $7d
    db $fd                                        ; $7eda: $fd
    ld [bc], a                                    ; $7edb: $02
    db $fd                                        ; $7edc: $fd
    cp l                                          ; $7edd: $bd
    jp $388e                                      ; $7ede: $c3 $8e $38


    db $eb                                        ; $7ee1: $eb
    sbc b                                         ; $7ee2: $98
    dec b                                         ; $7ee3: $05
    ld e, h                                       ; $7ee4: $5c
    ld a, d                                       ; $7ee5: $7a
    jr c, jr_03a_7ee8                             ; $7ee6: $38 $00

jr_03a_7ee8:
    halt                                          ; $7ee8: $76
    ld a, [$1fab]                                 ; $7ee9: $fa $ab $1f
    ei                                            ; $7eec: $fb
    ccf                                           ; $7eed: $3f
    cp $30                                        ; $7eee: $fe $30
    ld b, a                                       ; $7ef0: $47
    adc l                                         ; $7ef1: $8d
    rst $18                                       ; $7ef2: $df
    ld sp, hl                                     ; $7ef3: $f9
    ld a, c                                       ; $7ef4: $79
    sub [hl]                                      ; $7ef5: $96
    push bc                                       ; $7ef6: $c5
    db $f4                                        ; $7ef7: $f4
    cp c                                          ; $7ef8: $b9
    ld a, [$93bd]                                 ; $7ef9: $fa $bd $93
    cp a                                          ; $7efc: $bf
    ld [hl], a                                    ; $7efd: $77
    ret c                                         ; $7efe: $d8

    ld de, $1d67                                  ; $7eff: $11 $67 $1d
    or e                                          ; $7f02: $b3
    add b                                         ; $7f03: $80
    ld c, e                                       ; $7f04: $4b
    rrca                                          ; $7f05: $0f
    rlca                                          ; $7f06: $07
    sub a                                         ; $7f07: $97
    cp b                                          ; $7f08: $b8
    xor d                                         ; $7f09: $aa
    sub e                                         ; $7f0a: $93
    sub a                                         ; $7f0b: $97
    cp h                                          ; $7f0c: $bc
    rst $28                                       ; $7f0d: $ef
    sbc e                                         ; $7f0e: $9b
    ld a, [$efd3]                                 ; $7f0f: $fa $d3 $ef
    ret c                                         ; $7f12: $d8

    db $fc                                        ; $7f13: $fc
    cp [hl]                                       ; $7f14: $be
    inc l                                         ; $7f15: $2c
    inc h                                         ; $7f16: $24
    db $f4                                        ; $7f17: $f4
    dec [hl]                                      ; $7f18: $35
    ld sp, $3ce6                                  ; $7f19: $31 $e6 $3c
    ld d, a                                       ; $7f1c: $57
    ld d, d                                       ; $7f1d: $52
    and a                                         ; $7f1e: $a7
    reti                                          ; $7f1f: $d9


    ld de, $bdea                                  ; $7f20: $11 $ea $bd
    jp $388e                                      ; $7f23: $c3 $8e $38


    db $eb                                        ; $7f26: $eb
    sbc b                                         ; $7f27: $98
    dec b                                         ; $7f28: $05
    ld e, h                                       ; $7f29: $5c
    ld a, d                                       ; $7f2a: $7a
    jr c, jr_03a_7f2d                             ; $7f2b: $38 $00

jr_03a_7f2d:
    db $dd                                        ; $7f2d: $dd
    ld a, d                                       ; $7f2e: $7a
    push af                                       ; $7f2f: $f5
    db $eb                                        ; $7f30: $eb
    ld sp, $cd3b                                  ; $7f31: $31 $3b $cd
    ld e, c                                       ; $7f34: $59
    ld e, h                                       ; $7f35: $5c
    push de                                       ; $7f36: $d5
    ld d, c                                       ; $7f37: $51
    ld e, $be                                     ; $7f38: $1e $be
    xor $21                                       ; $7f3a: $ee $21
    adc e                                         ; $7f3c: $8b
    db $d3                                        ; $7f3d: $d3
    sbc a                                         ; $7f3e: $9f
    rst $20                                       ; $7f3f: $e7
    or d                                          ; $7f40: $b2
    xor $94                                       ; $7f41: $ee $94
    ld b, $65                                     ; $7f43: $06 $65
    rst $08                                       ; $7f45: $cf
    dec e                                         ; $7f46: $1d
    halt                                          ; $7f47: $76
    call nz, $c759                                ; $7f48: $c4 $59 $c7
    inc l                                         ; $7f4b: $2c
    ldh [$d2], a                                  ; $7f4c: $e0 $d2
    jp $0101                                      ; $7f4e: $c3 $01 $01


    xor $fb                                       ; $7f51: $ee $fb
    pop bc                                        ; $7f53: $c1
    ld b, a                                       ; $7f54: $47
    adc l                                         ; $7f55: $8d
    ccf                                           ; $7f56: $3f
    db $fd                                        ; $7f57: $fd
    adc [hl]                                      ; $7f58: $8e
    call $67ef                                    ; $7f59: $cd $ef $67
    or d                                          ; $7f5c: $b2
    ld l, [hl]                                    ; $7f5d: $6e
    cp $17                                        ; $7f5e: $fe $17
    cp [hl]                                       ; $7f60: $be
    db $fc                                        ; $7f61: $fc
    ld b, d                                       ; $7f62: $42
    adc d                                         ; $7f63: $8a
    and h                                         ; $7f64: $a4
    sbc $3b                                       ; $7f65: $de $3b
    db $ec                                        ; $7f67: $ec
    adc b                                         ; $7f68: $88
    or e                                          ; $7f69: $b3
    adc [hl]                                      ; $7f6a: $8e
    ld e, c                                       ; $7f6b: $59
    ret nz                                        ; $7f6c: $c0

    and l                                         ; $7f6d: $a5
    add a                                         ; $7f6e: $87
    inc bc                                        ; $7f6f: $03
    ld a, l                                       ; $7f70: $7d
    cp b                                          ; $7f71: $b8
    ldh [$e3], a                                  ; $7f72: $e0 $e3
    ld a, h                                       ; $7f74: $7c
    inc sp                                        ; $7f75: $33
    pop bc                                        ; $7f76: $c1
    sbc h                                         ; $7f77: $9c
    push bc                                       ; $7f78: $c5
    ld [hl], c                                    ; $7f79: $71
    inc d                                         ; $7f7a: $14
    ld [$5fec], a                                 ; $7f7b: $ea $ec $5f
    call nz, $80ba                                ; $7f7e: $c4 $ba $80
    adc h                                         ; $7f81: $8c
    sub c                                         ; $7f82: $91
    ld [hl], d                                    ; $7f83: $72
    inc bc                                        ; $7f84: $03
    halt                                          ; $7f85: $76
    ld h, l                                       ; $7f86: $65
    ld [hl], l                                    ; $7f87: $75
    db $d3                                        ; $7f88: $d3
    ld a, [hl-]                                   ; $7f89: $3a
    ld l, a                                       ; $7f8a: $6f
    nop                                           ; $7f8b: $00
    sub a                                         ; $7f8c: $97
    cp b                                          ; $7f8d: $b8
    xor d                                         ; $7f8e: $aa
    di                                            ; $7f8f: $f3
    inc [hl]                                      ; $7f90: $34
    inc c                                         ; $7f91: $0c
    ld c, l                                       ; $7f92: $4d
    or e                                          ; $7f93: $b3
    push bc                                       ; $7f94: $c5
    ld a, e                                       ; $7f95: $7b
    halt                                          ; $7f96: $76
    ld a, [de]                                    ; $7f97: $1a
    add hl, sp                                    ; $7f98: $39
    ld [$cb7a], a                                 ; $7f99: $ea $7a $cb
    ld [hl], a                                    ; $7f9c: $77
    ld a, [hl-]                                   ; $7f9d: $3a
    sbc h                                         ; $7f9e: $9c
    ld [hl], l                                    ; $7f9f: $75
    call nc, $51c8                                ; $7fa0: $d4 $c8 $51
    ld [hl], a                                    ; $7fa3: $77
    ld e, [hl]                                    ; $7fa4: $5e
    ld e, d                                       ; $7fa5: $5a
    dec bc                                        ; $7fa6: $0b
    ld l, a                                       ; $7fa7: $6f
    nop                                           ; $7fa8: $00
    sub a                                         ; $7fa9: $97
    adc d                                         ; $7faa: $8a
    adc b                                         ; $7fab: $88
    call c, $0100                                 ; $7fac: $dc $00 $01
    xor [hl]                                      ; $7faf: $ae
    cp d                                          ; $7fb0: $ba
    ld a, [$5706]                                 ; $7fb1: $fa $06 $57
    jr nc, @+$69                                  ; $7fb4: $30 $67

    ld [hl], c                                    ; $7fb6: $71
    ld e, h                                       ; $7fb7: $5c
    ldh a, [$75]                                  ; $7fb8: $f0 $75
    ld h, $31                                     ; $7fba: $26 $31
    ld c, l                                       ; $7fbc: $4d
    di                                            ; $7fbd: $f3
    cp c                                          ; $7fbe: $b9
    rst $18                                       ; $7fbf: $df
    sub l                                         ; $7fc0: $95
    ld a, h                                       ; $7fc1: $7c
    dec l                                         ; $7fc2: $2d
    or h                                          ; $7fc3: $b4
    sbc $db                                       ; $7fc4: $de $db
    ld h, l                                       ; $7fc6: $65
    call nz, $d719                                ; $7fc7: $c4 $19 $d7
    db $fc                                        ; $7fca: $fc
    ei                                            ; $7fcb: $fb
    add h                                         ; $7fcc: $84
    cpl                                           ; $7fcd: $2f
    jr nz, @+$65                                  ; $7fce: $20 $63

    and h                                         ; $7fd0: $a4
    ret nz                                        ; $7fd1: $c0

    add a                                         ; $7fd2: $87
    add hl, sp                                    ; $7fd3: $39
    adc e                                         ; $7fd4: $8b
    and e                                         ; $7fd5: $a3
    ld c, b                                       ; $7fd6: $48
    sub a                                         ; $7fd7: $97
    xor [hl]                                      ; $7fd8: $ae
    ld h, [hl]                                    ; $7fd9: $66
    ld a, a                                       ; $7fda: $7f
    ld d, e                                       ; $7fdb: $53
    ld e, [hl]                                    ; $7fdc: $5e
    ld [hl+], a                                   ; $7fdd: $22
    ld h, a                                       ; $7fde: $67
    ld [de], a                                    ; $7fdf: $12
    ld d, a                                       ; $7fe0: $57
    ld a, [hl]                                    ; $7fe1: $7e
    and [hl]                                      ; $7fe2: $a6
    cp h                                          ; $7fe3: $bc
    ld [hl], d                                    ; $7fe4: $72
    dec c                                         ; $7fe5: $0d
    dec a                                         ; $7fe6: $3d
    dec sp                                        ; $7fe7: $3b
    call Call_000_0dff                            ; $7fe8: $cd $ff $0d
    nop                                           ; $7feb: $00
    rst $38                                       ; $7fec: $ff
    rst $38                                       ; $7fed: $ff
    rst $38                                       ; $7fee: $ff
    rst $38                                       ; $7fef: $ff
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
