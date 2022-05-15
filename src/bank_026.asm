; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $026", ROMX[$4000], BANK[$26]

    ld h, $00                                     ; $4000: $26 $00
    adc e                                         ; $4002: $8b
    inc h                                         ; $4003: $24
    nop                                           ; $4004: $00
    sbc c                                         ; $4005: $99
    inc h                                         ; $4006: $24
    nop                                           ; $4007: $00
    and d                                         ; $4008: $a2
    inc h                                         ; $4009: $24
    nop                                           ; $400a: $00
    cp l                                          ; $400b: $bd
    inc h                                         ; $400c: $24
    nop                                           ; $400d: $00
    jp nz, $0024                                  ; $400e: $c2 $24 $00

    add $24                                       ; $4011: $c6 $24
    nop                                           ; $4013: $00
    jp z, $0024                                   ; $4014: $ca $24 $00

    adc $24                                       ; $4017: $ce $24
    nop                                           ; $4019: $00
    reti                                          ; $401a: $d9


    inc h                                         ; $401b: $24
    nop                                           ; $401c: $00
    push hl                                       ; $401d: $e5
    inc h                                         ; $401e: $24
    nop                                           ; $401f: $00
    xor $24                                       ; $4020: $ee $24
    nop                                           ; $4022: $00
    rst $30                                       ; $4023: $f7
    inc h                                         ; $4024: $24
    nop                                           ; $4025: $00
    ld bc, $0025                                  ; $4026: $01 $25 $00
    inc c                                         ; $4029: $0c
    dec h                                         ; $402a: $25
    nop                                           ; $402b: $00
    rla                                           ; $402c: $17
    dec h                                         ; $402d: $25
    nop                                           ; $402e: $00
    ld [hl+], a                                   ; $402f: $22
    dec h                                         ; $4030: $25
    nop                                           ; $4031: $00
    ld l, $25                                     ; $4032: $2e $25
    nop                                           ; $4034: $00
    ld a, [hl-]                                   ; $4035: $3a
    dec h                                         ; $4036: $25
    nop                                           ; $4037: $00
    ld b, a                                       ; $4038: $47
    dec h                                         ; $4039: $25
    nop                                           ; $403a: $00
    ld d, b                                       ; $403b: $50
    dec h                                         ; $403c: $25
    nop                                           ; $403d: $00
    ld e, c                                       ; $403e: $59
    dec h                                         ; $403f: $25
    nop                                           ; $4040: $00
    ld h, d                                       ; $4041: $62
    dec h                                         ; $4042: $25
    nop                                           ; $4043: $00
    ld l, a                                       ; $4044: $6f
    dec h                                         ; $4045: $25
    nop                                           ; $4046: $00
    ld a, e                                       ; $4047: $7b
    dec h                                         ; $4048: $25
    nop                                           ; $4049: $00
    add [hl]                                      ; $404a: $86
    dec h                                         ; $404b: $25
    nop                                           ; $404c: $00
    sub d                                         ; $404d: $92
    dec h                                         ; $404e: $25
    nop                                           ; $404f: $00
    sbc [hl]                                      ; $4050: $9e
    dec h                                         ; $4051: $25
    nop                                           ; $4052: $00
    or h                                          ; $4053: $b4
    dec h                                         ; $4054: $25
    nop                                           ; $4055: $00
    push de                                       ; $4056: $d5
    dec h                                         ; $4057: $25
    nop                                           ; $4058: $00
    db $e4                                        ; $4059: $e4
    dec h                                         ; $405a: $25
    nop                                           ; $405b: $00
    ld sp, hl                                     ; $405c: $f9
    dec h                                         ; $405d: $25
    nop                                           ; $405e: $00
    ld [de], a                                    ; $405f: $12
    ld h, $00                                     ; $4060: $26 $00
    add l                                         ; $4062: $85
    ld h, $00                                     ; $4063: $26 $00
    push bc                                       ; $4065: $c5
    ld h, $00                                     ; $4066: $26 $00
    call c, $0026                                 ; $4068: $dc $26 $00
    ldh a, [rNR52]                                ; $406b: $f0 $26
    nop                                           ; $406d: $00
    inc bc                                        ; $406e: $03
    daa                                           ; $406f: $27
    nop                                           ; $4070: $00
    ld d, $27                                     ; $4071: $16 $27
    nop                                           ; $4073: $00
    add hl, hl                                    ; $4074: $29
    daa                                           ; $4075: $27
    nop                                           ; $4076: $00
    ld c, [hl]                                    ; $4077: $4e
    daa                                           ; $4078: $27
    nop                                           ; $4079: $00
    ld [hl], c                                    ; $407a: $71
    daa                                           ; $407b: $27
    nop                                           ; $407c: $00
    sub [hl]                                      ; $407d: $96
    daa                                           ; $407e: $27
    nop                                           ; $407f: $00
    cp d                                          ; $4080: $ba
    daa                                           ; $4081: $27
    nop                                           ; $4082: $00
    call c, Call_000_0027                         ; $4083: $dc $27 $00
    and $27                                       ; $4086: $e6 $27
    nop                                           ; $4088: $00
    inc b                                         ; $4089: $04
    jr z, jr_026_408c                             ; $408a: $28 $00

jr_026_408c:
    dec de                                        ; $408c: $1b
    jr z, jr_026_408f                             ; $408d: $28 $00

jr_026_408f:
    ld a, [hl+]                                   ; $408f: $2a
    jr z, jr_026_4092                             ; $4090: $28 $00

jr_026_4092:
    ld e, e                                       ; $4092: $5b
    jr z, jr_026_4095                             ; $4093: $28 $00

jr_026_4095:
    ld [hl], l                                    ; $4095: $75
    jr z, jr_026_4098                             ; $4096: $28 $00

jr_026_4098:
    add e                                         ; $4098: $83
    jr z, jr_026_409b                             ; $4099: $28 $00

jr_026_409b:
    adc l                                         ; $409b: $8d
    jr z, jr_026_409e                             ; $409c: $28 $00

jr_026_409e:
    sbc h                                         ; $409e: $9c
    jr z, jr_026_40a1                             ; $409f: $28 $00

jr_026_40a1:
    xor a                                         ; $40a1: $af
    jr z, jr_026_40a4                             ; $40a2: $28 $00

jr_026_40a4:
    call RST_28                                   ; $40a4: $cd $28 $00
    ld [de], a                                    ; $40a7: $12
    add hl, hl                                    ; $40a8: $29
    nop                                           ; $40a9: $00
    dec sp                                        ; $40aa: $3b
    add hl, hl                                    ; $40ab: $29
    nop                                           ; $40ac: $00
    ld d, c                                       ; $40ad: $51
    add hl, hl                                    ; $40ae: $29
    nop                                           ; $40af: $00
    ld [hl], d                                    ; $40b0: $72
    add hl, hl                                    ; $40b1: $29
    nop                                           ; $40b2: $00
    sub h                                         ; $40b3: $94
    add hl, hl                                    ; $40b4: $29
    nop                                           ; $40b5: $00
    cp d                                          ; $40b6: $ba
    add hl, hl                                    ; $40b7: $29
    nop                                           ; $40b8: $00
    sbc $29                                       ; $40b9: $de $29
    nop                                           ; $40bb: $00
    or $29                                        ; $40bc: $f6 $29
    nop                                           ; $40be: $00
    inc e                                         ; $40bf: $1c
    ld a, [hl+]                                   ; $40c0: $2a
    nop                                           ; $40c1: $00
    inc l                                         ; $40c2: $2c
    ld a, [hl+]                                   ; $40c3: $2a
    nop                                           ; $40c4: $00
    ld l, b                                       ; $40c5: $68
    ld a, [hl+]                                   ; $40c6: $2a
    nop                                           ; $40c7: $00
    add b                                         ; $40c8: $80
    ld a, [hl+]                                   ; $40c9: $2a
    nop                                           ; $40ca: $00
    push hl                                       ; $40cb: $e5
    ld a, [hl+]                                   ; $40cc: $2a
    nop                                           ; $40cd: $00
    rst $30                                       ; $40ce: $f7
    ld a, [hl+]                                   ; $40cf: $2a
    nop                                           ; $40d0: $00
    dec de                                        ; $40d1: $1b
    dec hl                                        ; $40d2: $2b
    nop                                           ; $40d3: $00
    ld a, [hl+]                                   ; $40d4: $2a
    dec hl                                        ; $40d5: $2b
    nop                                           ; $40d6: $00
    jr c, jr_026_4104                             ; $40d7: $38 $2b

    nop                                           ; $40d9: $00
    ld c, b                                       ; $40da: $48
    dec hl                                        ; $40db: $2b
    nop                                           ; $40dc: $00
    ld [hl], h                                    ; $40dd: $74
    dec hl                                        ; $40de: $2b
    nop                                           ; $40df: $00
    adc b                                         ; $40e0: $88
    dec hl                                        ; $40e1: $2b
    nop                                           ; $40e2: $00
    adc h                                         ; $40e3: $8c
    dec hl                                        ; $40e4: $2b
    nop                                           ; $40e5: $00
    sub c                                         ; $40e6: $91
    dec hl                                        ; $40e7: $2b
    nop                                           ; $40e8: $00
    sbc c                                         ; $40e9: $99
    dec hl                                        ; $40ea: $2b
    nop                                           ; $40eb: $00
    push bc                                       ; $40ec: $c5
    dec hl                                        ; $40ed: $2b
    nop                                           ; $40ee: $00
    db $ec                                        ; $40ef: $ec
    dec hl                                        ; $40f0: $2b
    nop                                           ; $40f1: $00
    inc c                                         ; $40f2: $0c
    inc l                                         ; $40f3: $2c
    nop                                           ; $40f4: $00
    ld d, d                                       ; $40f5: $52
    inc l                                         ; $40f6: $2c
    nop                                           ; $40f7: $00
    ld a, b                                       ; $40f8: $78
    inc l                                         ; $40f9: $2c
    nop                                           ; $40fa: $00
    and b                                         ; $40fb: $a0
    inc l                                         ; $40fc: $2c
    nop                                           ; $40fd: $00
    add $2c                                       ; $40fe: $c6 $2c
    nop                                           ; $4100: $00
    jp hl                                         ; $4101: $e9


    inc l                                         ; $4102: $2c
    nop                                           ; $4103: $00

jr_026_4104:
    ld a, [hl+]                                   ; $4104: $2a
    dec l                                         ; $4105: $2d
    nop                                           ; $4106: $00
    dec [hl]                                      ; $4107: $35
    dec l                                         ; $4108: $2d
    nop                                           ; $4109: $00
    ld d, a                                       ; $410a: $57
    dec l                                         ; $410b: $2d
    nop                                           ; $410c: $00
    ld h, [hl]                                    ; $410d: $66
    dec l                                         ; $410e: $2d
    nop                                           ; $410f: $00
    add e                                         ; $4110: $83
    dec l                                         ; $4111: $2d
    nop                                           ; $4112: $00
    sub e                                         ; $4113: $93
    dec l                                         ; $4114: $2d
    nop                                           ; $4115: $00
    jp nz, $002d                                  ; $4116: $c2 $2d $00

    rst $38                                       ; $4119: $ff
    dec l                                         ; $411a: $2d
    nop                                           ; $411b: $00
    jr nc, jr_026_414c                            ; $411c: $30 $2e

    nop                                           ; $411e: $00
    ld h, b                                       ; $411f: $60
    ld l, $00                                     ; $4120: $2e $00
    cp h                                          ; $4122: $bc
    ld l, $00                                     ; $4123: $2e $00
    call Call_000_002e                            ; $4125: $cd $2e $00
    ld h, $2f                                     ; $4128: $26 $2f
    nop                                           ; $412a: $00
    ld a, [hl-]                                   ; $412b: $3a
    cpl                                           ; $412c: $2f
    nop                                           ; $412d: $00
    ld e, a                                       ; $412e: $5f
    cpl                                           ; $412f: $2f
    nop                                           ; $4130: $00
    ld a, e                                       ; $4131: $7b
    cpl                                           ; $4132: $2f
    nop                                           ; $4133: $00
    add l                                         ; $4134: $85
    cpl                                           ; $4135: $2f
    nop                                           ; $4136: $00
    xor [hl]                                      ; $4137: $ae
    cpl                                           ; $4138: $2f
    nop                                           ; $4139: $00
    db $e4                                        ; $413a: $e4
    cpl                                           ; $413b: $2f
    nop                                           ; $413c: $00
    add sp, $2f                                   ; $413d: $e8 $2f
    nop                                           ; $413f: $00
    dec d                                         ; $4140: $15
    jr nc, jr_026_4143                            ; $4141: $30 $00

jr_026_4143:
    inc a                                         ; $4143: $3c
    jr nc, jr_026_4146                            ; $4144: $30 $00

jr_026_4146:
    ld c, d                                       ; $4146: $4a
    jr nc, jr_026_4149                            ; $4147: $30 $00

jr_026_4149:
    ld h, e                                       ; $4149: $63
    jr nc, jr_026_414c                            ; $414a: $30 $00

jr_026_414c:
    ld a, d                                       ; $414c: $7a
    jr nc, jr_026_414f                            ; $414d: $30 $00

jr_026_414f:
    and l                                         ; $414f: $a5
    jr nc, jr_026_4152                            ; $4150: $30 $00

jr_026_4152:
    cp b                                          ; $4152: $b8
    jr nc, jr_026_4155                            ; $4153: $30 $00

jr_026_4155:
    inc de                                        ; $4155: $13
    ld sp, $3500                                  ; $4156: $31 $00 $35
    ld sp, $3f00                                  ; $4159: $31 $00 $3f
    ld sp, $6200                                  ; $415c: $31 $00 $62
    ld sp, $6c00                                  ; $415f: $31 $00 $6c
    ld sp, $a900                                  ; $4162: $31 $00 $a9
    ld sp, $d200                                  ; $4165: $31 $00 $d2
    ld sp, $e000                                  ; $4168: $31 $00 $e0
    ld sp, $ff00                                  ; $416b: $31 $00 $ff
    ld sp, $1000                                  ; $416e: $31 $00 $10
    ld [hl-], a                                   ; $4171: $32
    nop                                           ; $4172: $00
    ld [hl-], a                                   ; $4173: $32
    ld [hl-], a                                   ; $4174: $32
    nop                                           ; $4175: $00
    ld b, a                                       ; $4176: $47
    ld [hl-], a                                   ; $4177: $32
    nop                                           ; $4178: $00
    ld h, [hl]                                    ; $4179: $66
    ld [hl-], a                                   ; $417a: $32
    nop                                           ; $417b: $00
    ld l, a                                       ; $417c: $6f
    ld [hl-], a                                   ; $417d: $32
    nop                                           ; $417e: $00
    add d                                         ; $417f: $82
    ld [hl-], a                                   ; $4180: $32
    nop                                           ; $4181: $00
    adc b                                         ; $4182: $88
    ld [hl-], a                                   ; $4183: $32
    nop                                           ; $4184: $00
    sub d                                         ; $4185: $92
    ld [hl-], a                                   ; $4186: $32
    nop                                           ; $4187: $00
    sbc e                                         ; $4188: $9b
    ld [hl-], a                                   ; $4189: $32
    nop                                           ; $418a: $00
    and a                                         ; $418b: $a7
    ld [hl-], a                                   ; $418c: $32
    nop                                           ; $418d: $00
    or e                                          ; $418e: $b3
    ld [hl-], a                                   ; $418f: $32
    nop                                           ; $4190: $00
    cp a                                          ; $4191: $bf
    ld [hl-], a                                   ; $4192: $32
    nop                                           ; $4193: $00
    ret nc                                        ; $4194: $d0

    ld [hl-], a                                   ; $4195: $32
    nop                                           ; $4196: $00
    ret c                                         ; $4197: $d8

    ld [hl-], a                                   ; $4198: $32
    nop                                           ; $4199: $00
    db $dd                                        ; $419a: $dd
    ld [hl-], a                                   ; $419b: $32
    nop                                           ; $419c: $00

Call_026_419d:
    nop                                           ; $419d: $00
    inc sp                                        ; $419e: $33
    nop                                           ; $419f: $00
    ld b, b                                       ; $41a0: $40
    inc sp                                        ; $41a1: $33
    nop                                           ; $41a2: $00
    ld h, b                                       ; $41a3: $60
    inc sp                                        ; $41a4: $33
    nop                                           ; $41a5: $00
    ld l, a                                       ; $41a6: $6f
    inc sp                                        ; $41a7: $33
    nop                                           ; $41a8: $00
    add c                                         ; $41a9: $81
    inc sp                                        ; $41aa: $33
    nop                                           ; $41ab: $00
    sub e                                         ; $41ac: $93
    inc sp                                        ; $41ad: $33
    nop                                           ; $41ae: $00
    xor [hl]                                      ; $41af: $ae
    inc sp                                        ; $41b0: $33
    nop                                           ; $41b1: $00
    db $d3                                        ; $41b2: $d3
    inc sp                                        ; $41b3: $33
    nop                                           ; $41b4: $00
    jp hl                                         ; $41b5: $e9


    inc sp                                        ; $41b6: $33
    nop                                           ; $41b7: $00
    rla                                           ; $41b8: $17
    inc [hl]                                      ; $41b9: $34
    nop                                           ; $41ba: $00
    rra                                           ; $41bb: $1f
    inc [hl]                                      ; $41bc: $34
    nop                                           ; $41bd: $00
    inc [hl]                                      ; $41be: $34
    inc [hl]                                      ; $41bf: $34
    nop                                           ; $41c0: $00
    ld l, h                                       ; $41c1: $6c
    inc [hl]                                      ; $41c2: $34
    nop                                           ; $41c3: $00
    add e                                         ; $41c4: $83
    inc [hl]                                      ; $41c5: $34
    nop                                           ; $41c6: $00
    and [hl]                                      ; $41c7: $a6
    inc [hl]                                      ; $41c8: $34
    nop                                           ; $41c9: $00
    cp [hl]                                       ; $41ca: $be
    inc [hl]                                      ; $41cb: $34
    nop                                           ; $41cc: $00
    ret c                                         ; $41cd: $d8

    inc [hl]                                      ; $41ce: $34
    nop                                           ; $41cf: $00
    xor $34                                       ; $41d0: $ee $34
    nop                                           ; $41d2: $00
    ld [bc], a                                    ; $41d3: $02
    dec [hl]                                      ; $41d4: $35
    nop                                           ; $41d5: $00
    add hl, bc                                    ; $41d6: $09
    dec [hl]                                      ; $41d7: $35
    nop                                           ; $41d8: $00
    ld [hl+], a                                   ; $41d9: $22
    dec [hl]                                      ; $41da: $35
    nop                                           ; $41db: $00
    ld b, c                                       ; $41dc: $41
    dec [hl]                                      ; $41dd: $35
    nop                                           ; $41de: $00
    ld c, d                                       ; $41df: $4a
    dec [hl]                                      ; $41e0: $35
    nop                                           ; $41e1: $00
    ld h, e                                       ; $41e2: $63
    dec [hl]                                      ; $41e3: $35
    nop                                           ; $41e4: $00
    ld a, b                                       ; $41e5: $78
    dec [hl]                                      ; $41e6: $35
    nop                                           ; $41e7: $00
    sub d                                         ; $41e8: $92
    dec [hl]                                      ; $41e9: $35
    nop                                           ; $41ea: $00
    ret nz                                        ; $41eb: $c0

    dec [hl]                                      ; $41ec: $35
    nop                                           ; $41ed: $00
    ldh a, [$35]                                  ; $41ee: $f0 $35
    nop                                           ; $41f0: $00
    ld d, $36                                     ; $41f1: $16 $36
    nop                                           ; $41f3: $00
    jr c, jr_026_422c                             ; $41f4: $38 $36

    nop                                           ; $41f6: $00
    ld c, h                                       ; $41f7: $4c
    ld [hl], $00                                  ; $41f8: $36 $00
    ld h, e                                       ; $41fa: $63
    ld [hl], $00                                  ; $41fb: $36 $00
    ld a, c                                       ; $41fd: $79
    ld [hl], $00                                  ; $41fe: $36 $00
    sub b                                         ; $4200: $90
    ld [hl], $00                                  ; $4201: $36 $00
    and l                                         ; $4203: $a5
    ld [hl], $00                                  ; $4204: $36 $00
    cp l                                          ; $4206: $bd
    ld [hl], $00                                  ; $4207: $36 $00
    ret nc                                        ; $4209: $d0

    ld [hl], $00                                  ; $420a: $36 $00
    ldh a, [$36]                                  ; $420c: $f0 $36
    nop                                           ; $420e: $00
    ld b, $37                                     ; $420f: $06 $37
    nop                                           ; $4211: $00
    ld e, $37                                     ; $4212: $1e $37
    nop                                           ; $4214: $00
    inc sp                                        ; $4215: $33
    scf                                           ; $4216: $37
    nop                                           ; $4217: $00
    ld b, b                                       ; $4218: $40
    scf                                           ; $4219: $37
    nop                                           ; $421a: $00
    ld c, a                                       ; $421b: $4f
    scf                                           ; $421c: $37
    nop                                           ; $421d: $00
    ld e, h                                       ; $421e: $5c
    scf                                           ; $421f: $37
    nop                                           ; $4220: $00
    ld [hl], l                                    ; $4221: $75
    scf                                           ; $4222: $37
    nop                                           ; $4223: $00
    xor b                                         ; $4224: $a8
    scf                                           ; $4225: $37
    nop                                           ; $4226: $00
    jp nz, Jump_000_0037                          ; $4227: $c2 $37 $00

    db $dd                                        ; $422a: $dd
    scf                                           ; $422b: $37

jr_026_422c:
    nop                                           ; $422c: $00
    db $ec                                        ; $422d: $ec
    scf                                           ; $422e: $37
    nop                                           ; $422f: $00
    db $fd                                        ; $4230: $fd
    scf                                           ; $4231: $37
    nop                                           ; $4232: $00
    ld c, $38                                     ; $4233: $0e $38
    nop                                           ; $4235: $00
    dec h                                         ; $4236: $25
    jr c, jr_026_4239                             ; $4237: $38 $00

jr_026_4239:
    jr c, jr_026_4273                             ; $4239: $38 $38

    nop                                           ; $423b: $00
    ld c, l                                       ; $423c: $4d
    jr c, jr_026_423f                             ; $423d: $38 $00

jr_026_423f:
    ld e, c                                       ; $423f: $59
    jr c, jr_026_4242                             ; $4240: $38 $00

jr_026_4242:
    ld a, [hl]                                    ; $4242: $7e
    jr c, jr_026_4245                             ; $4243: $38 $00

jr_026_4245:
    adc h                                         ; $4245: $8c
    jr c, jr_026_4248                             ; $4246: $38 $00

jr_026_4248:
    and c                                         ; $4248: $a1
    jr c, jr_026_424b                             ; $4249: $38 $00

jr_026_424b:
    reti                                          ; $424b: $d9


    jr c, jr_026_424e                             ; $424c: $38 $00

jr_026_424e:
    db $eb                                        ; $424e: $eb
    jr c, jr_026_4251                             ; $424f: $38 $00

jr_026_4251:
    add hl, bc                                    ; $4251: $09
    add hl, sp                                    ; $4252: $39
    nop                                           ; $4253: $00
    rla                                           ; $4254: $17
    add hl, sp                                    ; $4255: $39
    nop                                           ; $4256: $00
    dec h                                         ; $4257: $25
    add hl, sp                                    ; $4258: $39
    nop                                           ; $4259: $00
    ld b, e                                       ; $425a: $43
    add hl, sp                                    ; $425b: $39
    nop                                           ; $425c: $00
    ld [hl], l                                    ; $425d: $75
    add hl, sp                                    ; $425e: $39
    nop                                           ; $425f: $00
    ld a, l                                       ; $4260: $7d
    add hl, sp                                    ; $4261: $39
    nop                                           ; $4262: $00
    xor h                                         ; $4263: $ac
    add hl, sp                                    ; $4264: $39
    nop                                           ; $4265: $00
    cp l                                          ; $4266: $bd
    add hl, sp                                    ; $4267: $39
    nop                                           ; $4268: $00
    db $fd                                        ; $4269: $fd
    add hl, sp                                    ; $426a: $39
    nop                                           ; $426b: $00
    rra                                           ; $426c: $1f
    ld a, [hl-]                                   ; $426d: $3a
    nop                                           ; $426e: $00
    daa                                           ; $426f: $27
    ld a, [hl-]                                   ; $4270: $3a
    nop                                           ; $4271: $00
    ld c, d                                       ; $4272: $4a

jr_026_4273:
    ld a, [hl-]                                   ; $4273: $3a
    nop                                           ; $4274: $00
    ld l, c                                       ; $4275: $69
    ld a, [hl-]                                   ; $4276: $3a
    nop                                           ; $4277: $00
    ld l, h                                       ; $4278: $6c
    ld a, [hl-]                                   ; $4279: $3a
    nop                                           ; $427a: $00
    add h                                         ; $427b: $84
    ld a, [hl-]                                   ; $427c: $3a
    nop                                           ; $427d: $00
    adc a                                         ; $427e: $8f
    ld a, [hl-]                                   ; $427f: $3a
    nop                                           ; $4280: $00
    and l                                         ; $4281: $a5
    ld a, [hl-]                                   ; $4282: $3a
    nop                                           ; $4283: $00
    xor [hl]                                      ; $4284: $ae
    ld a, [hl-]                                   ; $4285: $3a
    nop                                           ; $4286: $00
    or a                                          ; $4287: $b7
    ld a, [hl-]                                   ; $4288: $3a
    nop                                           ; $4289: $00
    ld b, e                                       ; $428a: $43
    dec sp                                        ; $428b: $3b
    nop                                           ; $428c: $00
    ld [hl], c                                    ; $428d: $71
    dec sp                                        ; $428e: $3b
    nop                                           ; $428f: $00
    xor h                                         ; $4290: $ac
    dec sp                                        ; $4291: $3b
    nop                                           ; $4292: $00
    ret nz                                        ; $4293: $c0

    dec sp                                        ; $4294: $3b
    nop                                           ; $4295: $00
    db $e4                                        ; $4296: $e4
    dec sp                                        ; $4297: $3b
    nop                                           ; $4298: $00
    dec d                                         ; $4299: $15
    inc a                                         ; $429a: $3c
    nop                                           ; $429b: $00
    ld l, $3c                                     ; $429c: $2e $3c
    nop                                           ; $429e: $00
    sub c                                         ; $429f: $91
    inc a                                         ; $42a0: $3c
    nop                                           ; $42a1: $00
    rst $10                                       ; $42a2: $d7
    inc a                                         ; $42a3: $3c
    nop                                           ; $42a4: $00
    add hl, bc                                    ; $42a5: $09
    dec a                                         ; $42a6: $3d
    nop                                           ; $42a7: $00
    inc [hl]                                      ; $42a8: $34
    dec a                                         ; $42a9: $3d
    nop                                           ; $42aa: $00
    ld l, c                                       ; $42ab: $69
    dec a                                         ; $42ac: $3d
    nop                                           ; $42ad: $00
    add h                                         ; $42ae: $84
    dec a                                         ; $42af: $3d
    nop                                           ; $42b0: $00
    ret nc                                        ; $42b1: $d0

    dec a                                         ; $42b2: $3d
    nop                                           ; $42b3: $00
    db $e3                                        ; $42b4: $e3
    dec a                                         ; $42b5: $3d
    nop                                           ; $42b6: $00
    rst $30                                       ; $42b7: $f7
    dec a                                         ; $42b8: $3d
    nop                                           ; $42b9: $00
    inc de                                        ; $42ba: $13
    ld a, $00                                     ; $42bb: $3e $00
    inc sp                                        ; $42bd: $33
    ld a, $00                                     ; $42be: $3e $00
    ld d, [hl]                                    ; $42c0: $56
    ld a, $00                                     ; $42c1: $3e $00
    ld [hl], e                                    ; $42c3: $73
    ld a, $00                                     ; $42c4: $3e $00
    adc b                                         ; $42c6: $88
    ld a, $00                                     ; $42c7: $3e $00
    adc h                                         ; $42c9: $8c
    ld a, $00                                     ; $42ca: $3e $00
    xor l                                         ; $42cc: $ad
    ld a, $00                                     ; $42cd: $3e $00
    or d                                          ; $42cf: $b2
    ld a, $00                                     ; $42d0: $3e $00
    or a                                          ; $42d2: $b7
    ld a, $00                                     ; $42d3: $3e $00
    db $ec                                        ; $42d5: $ec
    ld a, $00                                     ; $42d6: $3e $00
    rst $38                                       ; $42d8: $ff
    ld a, $00                                     ; $42d9: $3e $00
    add hl, hl                                    ; $42db: $29
    ccf                                           ; $42dc: $3f
    nop                                           ; $42dd: $00
    inc [hl]                                      ; $42de: $34
    ccf                                           ; $42df: $3f
    nop                                           ; $42e0: $00
    ld h, a                                       ; $42e1: $67
    ccf                                           ; $42e2: $3f
    nop                                           ; $42e3: $00
    ld l, [hl]                                    ; $42e4: $6e
    ccf                                           ; $42e5: $3f
    nop                                           ; $42e6: $00
    add d                                         ; $42e7: $82
    ccf                                           ; $42e8: $3f
    nop                                           ; $42e9: $00
    sub d                                         ; $42ea: $92
    ccf                                           ; $42eb: $3f
    nop                                           ; $42ec: $00
    cp d                                          ; $42ed: $ba
    ccf                                           ; $42ee: $3f
    ld bc, $0001                                  ; $42ef: $01 $01 $00
    ld bc, $0015                                  ; $42f2: $01 $15 $00
    ld bc, $0020                                  ; $42f5: $01 $20 $00
    ld bc, $0036                                  ; $42f8: $01 $36 $00
    ld bc, $004e                                  ; $42fb: $01 $4e $00
    ld bc, $0066                                  ; $42fe: $01 $66 $00
    ld bc, $007d                                  ; $4301: $01 $7d $00
    ld bc, $00ad                                  ; $4304: $01 $ad $00
    ld bc, $00bb                                  ; $4307: $01 $bb $00
    ld bc, $0131                                  ; $430a: $01 $31 $01
    ld bc, $013b                                  ; $430d: $01 $3b $01
    ld bc, $014c                                  ; $4310: $01 $4c $01
    ld bc, $015a                                  ; $4313: $01 $5a $01
    ld bc, $0178                                  ; $4316: $01 $78 $01
    ld bc, $0189                                  ; $4319: $01 $89 $01
    ld bc, $01ad                                  ; $431c: $01 $ad $01
    ld bc, $01bc                                  ; $431f: $01 $bc $01
    ld bc, $01d3                                  ; $4322: $01 $d3 $01
    ld bc, $023b                                  ; $4325: $01 $3b $02
    ld bc, $024f                                  ; $4328: $01 $4f $02
    ld bc, $0266                                  ; $432b: $01 $66 $02
    ld bc, $0288                                  ; $432e: $01 $88 $02
    ld bc, $029b                                  ; $4331: $01 $9b $02
    ld bc, $02c3                                  ; $4334: $01 $c3 $02
    ld bc, $02d9                                  ; $4337: $01 $d9 $02
    ld bc, $02fa                                  ; $433a: $01 $fa $02
    ld bc, $0317                                  ; $433d: $01 $17 $03
    ld bc, $0334                                  ; $4340: $01 $34 $03
    ld bc, $0352                                  ; $4343: $01 $52 $03
    ld bc, $036f                                  ; $4346: $01 $6f $03
    ld bc, $0402                                  ; $4349: $01 $02 $04
    ld bc, $0414                                  ; $434c: $01 $14 $04
    ld bc, $046a                                  ; $434f: $01 $6a $04
    ld bc, $0477                                  ; $4352: $01 $77 $04
    ld bc, $048b                                  ; $4355: $01 $8b $04
    ld bc, $0497                                  ; $4358: $01 $97 $04
    ld bc, $04da                                  ; $435b: $01 $da $04
    ld bc, $052d                                  ; $435e: $01 $2d $05
    ld bc, $054a                                  ; $4361: $01 $4a $05
    ld bc, $055b                                  ; $4364: $01 $5b $05
    ld bc, $0570                                  ; $4367: $01 $70 $05
    ld bc, $057f                                  ; $436a: $01 $7f $05
    ld bc, $0594                                  ; $436d: $01 $94 $05
    ld bc, $05a5                                  ; $4370: $01 $a5 $05
    ld bc, $05b7                                  ; $4373: $01 $b7 $05
    ld bc, $05c6                                  ; $4376: $01 $c6 $05
    ld bc, $05d3                                  ; $4379: $01 $d3 $05
    ld bc, $05dc                                  ; $437c: $01 $dc $05
    ld bc, $05e6                                  ; $437f: $01 $e6 $05
    ld bc, $05fa                                  ; $4382: $01 $fa $05
    ld bc, $061b                                  ; $4385: $01 $1b $06
    ld bc, $0642                                  ; $4388: $01 $42 $06
    ld bc, $066a                                  ; $438b: $01 $6a $06
    ld bc, $0676                                  ; $438e: $01 $76 $06
    ld bc, $0696                                  ; $4391: $01 $96 $06
    ld bc, $06be                                  ; $4394: $01 $be $06
    ld bc, $06e1                                  ; $4397: $01 $e1 $06
    ld bc, $06f4                                  ; $439a: $01 $f4 $06
    ld bc, $0703                                  ; $439d: $01 $03 $07
    ld bc, $0711                                  ; $43a0: $01 $11 $07
    ld bc, $0722                                  ; $43a3: $01 $22 $07
    ld bc, $0733                                  ; $43a6: $01 $33 $07
    ld bc, $0748                                  ; $43a9: $01 $48 $07
    ld bc, $0755                                  ; $43ac: $01 $55 $07
    ld bc, $0763                                  ; $43af: $01 $63 $07
    ld bc, $0778                                  ; $43b2: $01 $78 $07
    ld bc, $0797                                  ; $43b5: $01 $97 $07
    ld bc, $07d2                                  ; $43b8: $01 $d2 $07
    ld bc, $07e9                                  ; $43bb: $01 $e9 $07
    ld bc, $07ec                                  ; $43be: $01 $ec $07
    ld bc, $080f                                  ; $43c1: $01 $0f $08
    ld bc, $081f                                  ; $43c4: $01 $1f $08
    ld bc, $0839                                  ; $43c7: $01 $39 $08
    ld bc, $0846                                  ; $43ca: $01 $46 $08
    ld bc, $085a                                  ; $43cd: $01 $5a $08
    ld bc, $0880                                  ; $43d0: $01 $80 $08
    ld bc, $08eb                                  ; $43d3: $01 $eb $08
    ld bc, $0900                                  ; $43d6: $01 $00 $09
    ld bc, $090b                                  ; $43d9: $01 $0b $09
    ld bc, $091b                                  ; $43dc: $01 $1b $09
    ld bc, $092d                                  ; $43df: $01 $2d $09
    ld bc, $095e                                  ; $43e2: $01 $5e $09
    ld bc, $097c                                  ; $43e5: $01 $7c $09
    ld bc, $0994                                  ; $43e8: $01 $94 $09
    ld bc, $09bb                                  ; $43eb: $01 $bb $09
    ld bc, $09f7                                  ; $43ee: $01 $f7 $09
    ld bc, $0a35                                  ; $43f1: $01 $35 $0a
    ld bc, $0a60                                  ; $43f4: $01 $60 $0a
    ld bc, $0a8f                                  ; $43f7: $01 $8f $0a
    ld bc, $0abb                                  ; $43fa: $01 $bb $0a
    ld bc, $0afe                                  ; $43fd: $01 $fe $0a
    ld bc, $0b33                                  ; $4400: $01 $33 $0b
    ld bc, $0b67                                  ; $4403: $01 $67 $0b
    ld bc, $0ba8                                  ; $4406: $01 $a8 $0b
    ld bc, $0be5                                  ; $4409: $01 $e5 $0b
    ld bc, $0c10                                  ; $440c: $01 $10 $0c
    ld bc, $0c3e                                  ; $440f: $01 $3e $0c
    ld bc, $0c62                                  ; $4412: $01 $62 $0c
    ld bc, $0ca0                                  ; $4415: $01 $a0 $0c
    ld bc, $0cd2                                  ; $4418: $01 $d2 $0c
    ld bc, $0d0c                                  ; $441b: $01 $0c $0d
    ld bc, $0d51                                  ; $441e: $01 $51 $0d
    ld bc, $0d7f                                  ; $4421: $01 $7f $0d
    ld bc, $0daf                                  ; $4424: $01 $af $0d
    ld bc, $0de8                                  ; $4427: $01 $e8 $0d
    ld bc, $0e0d                                  ; $442a: $01 $0d $0e
    ld bc, $0e41                                  ; $442d: $01 $41 $0e
    ld bc, $0e70                                  ; $4430: $01 $70 $0e
    ld bc, $0e98                                  ; $4433: $01 $98 $0e
    ld bc, $0ecc                                  ; $4436: $01 $cc $0e
    ld bc, $0eff                                  ; $4439: $01 $ff $0e
    ld bc, $0f47                                  ; $443c: $01 $47 $0f
    ld bc, $0f85                                  ; $443f: $01 $85 $0f
    ld bc, $0fd0                                  ; $4442: $01 $d0 $0f
    ld bc, $0ffa                                  ; $4445: $01 $fa $0f
    ld bc, $102a                                  ; $4448: $01 $2a $10
    ld bc, $1057                                  ; $444b: $01 $57 $10
    ld bc, $108b                                  ; $444e: $01 $8b $10
    ld bc, $10d4                                  ; $4451: $01 $d4 $10
    ld bc, $1125                                  ; $4454: $01 $25 $11
    ld bc, $1158                                  ; $4457: $01 $58 $11
    ld bc, $1186                                  ; $445a: $01 $86 $11
    ld bc, $11c5                                  ; $445d: $01 $c5 $11
    ld bc, $11fc                                  ; $4460: $01 $fc $11
    ld bc, $1220                                  ; $4463: $01 $20 $12
    ld bc, $124a                                  ; $4466: $01 $4a $12
    ld bc, $1277                                  ; $4469: $01 $77 $12
    ld bc, $1285                                  ; $446c: $01 $85 $12
    ld bc, $12a0                                  ; $446f: $01 $a0 $12
    ld bc, $12ad                                  ; $4472: $01 $ad $12
    ld bc, $12cb                                  ; $4475: $01 $cb $12
    ld bc, $12e7                                  ; $4478: $01 $e7 $12
    ld bc, $12f0                                  ; $447b: $01 $f0 $12
    ld bc, $12fd                                  ; $447e: $01 $fd $12
    ld bc, $1302                                  ; $4481: $01 $02 $13
    ld bc, $1330                                  ; $4484: $01 $30 $13
    ld bc, $134c                                  ; $4487: $01 $4c $13
    ld bc, $1366                                  ; $448a: $01 $66 $13
    ld bc, $1387                                  ; $448d: $01 $87 $13
    ld bc, $1397                                  ; $4490: $01 $97 $13
    ld bc, $13a0                                  ; $4493: $01 $a0 $13
    ld bc, $13ea                                  ; $4496: $01 $ea $13
    ld bc, $140b                                  ; $4499: $01 $0b $14
    ld bc, $1435                                  ; $449c: $01 $35 $14
    ld bc, $1441                                  ; $449f: $01 $41 $14
    ld bc, $1455                                  ; $44a2: $01 $55 $14
    ld bc, $1467                                  ; $44a5: $01 $67 $14
    ld bc, $1479                                  ; $44a8: $01 $79 $14
    ld bc, $1482                                  ; $44ab: $01 $82 $14
    ld bc, $1496                                  ; $44ae: $01 $96 $14
    ld bc, $14ab                                  ; $44b1: $01 $ab $14
    ld bc, $14c6                                  ; $44b4: $01 $c6 $14
    ld bc, $14d1                                  ; $44b7: $01 $d1 $14
    ld bc, $14e6                                  ; $44ba: $01 $e6 $14
    ld bc, $14fa                                  ; $44bd: $01 $fa $14
    ld bc, $152b                                  ; $44c0: $01 $2b $15
    ld bc, $1542                                  ; $44c3: $01 $42 $15
    ld bc, $1554                                  ; $44c6: $01 $54 $15
    ld bc, $1569                                  ; $44c9: $01 $69 $15
    ld bc, $1586                                  ; $44cc: $01 $86 $15
    ld bc, $15a3                                  ; $44cf: $01 $a3 $15
    ld bc, $15ab                                  ; $44d2: $01 $ab $15
    ld bc, $15c5                                  ; $44d5: $01 $c5 $15
    ld bc, $15d3                                  ; $44d8: $01 $d3 $15
    ld bc, $1605                                  ; $44db: $01 $05 $16
    ld bc, $1626                                  ; $44de: $01 $26 $16
    ld bc, $162e                                  ; $44e1: $01 $2e $16
    ld bc, $1643                                  ; $44e4: $01 $43 $16
    ld bc, $164f                                  ; $44e7: $01 $4f $16
    ld bc, $168b                                  ; $44ea: $01 $8b $16
    ld bc, $169a                                  ; $44ed: $01 $9a $16
    ld bc, $16b1                                  ; $44f0: $01 $b1 $16
    ld bc, $16c5                                  ; $44f3: $01 $c5 $16
    ld bc, $16d2                                  ; $44f6: $01 $d2 $16
    ld bc, $1724                                  ; $44f9: $01 $24 $17
    ld bc, $1732                                  ; $44fc: $01 $32 $17
    ld bc, $1743                                  ; $44ff: $01 $43 $17
    ld bc, $174a                                  ; $4502: $01 $4a $17
    ld bc, $1753                                  ; $4505: $01 $53 $17
    ld bc, $176b                                  ; $4508: $01 $6b $17
    ld bc, $1772                                  ; $450b: $01 $72 $17
    ld bc, $177a                                  ; $450e: $01 $7a $17
    ld bc, $1785                                  ; $4511: $01 $85 $17
    ld bc, $179e                                  ; $4514: $01 $9e $17
    ld bc, $17a3                                  ; $4517: $01 $a3 $17
    ld bc, $17bf                                  ; $451a: $01 $bf $17
    ld bc, $17de                                  ; $451d: $01 $de $17
    ld bc, $17e8                                  ; $4520: $01 $e8 $17
    ld bc, $1808                                  ; $4523: $01 $08 $18
    ld bc, $1819                                  ; $4526: $01 $19 $18
    ld bc, $184c                                  ; $4529: $01 $4c $18
    ld bc, $1866                                  ; $452c: $01 $66 $18
    ld bc, $1899                                  ; $452f: $01 $99 $18
    ld bc, $18c7                                  ; $4532: $01 $c7 $18
    ld bc, $18fd                                  ; $4535: $01 $fd $18
    ld bc, $1945                                  ; $4538: $01 $45 $19
    ld bc, $196f                                  ; $453b: $01 $6f $19
    ld bc, $1999                                  ; $453e: $01 $99 $19
    ld bc, $19f2                                  ; $4541: $01 $f2 $19
    ld bc, $1a18                                  ; $4544: $01 $18 $1a
    ld bc, $1a6e                                  ; $4547: $01 $6e $1a
    ld bc, $1a82                                  ; $454a: $01 $82 $1a
    ld bc, $1aaa                                  ; $454d: $01 $aa $1a
    ld bc, $1b6b                                  ; $4550: $01 $6b $1b
    ld bc, $1b8f                                  ; $4553: $01 $8f $1b
    ld bc, $1ba1                                  ; $4556: $01 $a1 $1b
    ld bc, $1bca                                  ; $4559: $01 $ca $1b
    ld bc, $1bef                                  ; $455c: $01 $ef $1b
    ld bc, $1bff                                  ; $455f: $01 $ff $1b
    ld bc, $1c0b                                  ; $4562: $01 $0b $1c
    ld bc, $1c3f                                  ; $4565: $01 $3f $1c
    ld bc, $1c45                                  ; $4568: $01 $45 $1c
    ld bc, $1c58                                  ; $456b: $01 $58 $1c
    ld bc, $1c9a                                  ; $456e: $01 $9a $1c
    ld bc, $1cbe                                  ; $4571: $01 $be $1c
    ld bc, $1ce1                                  ; $4574: $01 $e1 $1c
    ld bc, $1cf1                                  ; $4577: $01 $f1 $1c
    ld bc, $1d15                                  ; $457a: $01 $15 $1d
    ld bc, $1d44                                  ; $457d: $01 $44 $1d
    ld bc, $1d5b                                  ; $4580: $01 $5b $1d
    ld bc, $1d82                                  ; $4583: $01 $82 $1d
    ld bc, $1d98                                  ; $4586: $01 $98 $1d
    ld bc, $1dac                                  ; $4589: $01 $ac $1d
    ld bc, $1dc5                                  ; $458c: $01 $c5 $1d
    ld bc, $1de7                                  ; $458f: $01 $e7 $1d
    ld bc, $1df5                                  ; $4592: $01 $f5 $1d
    ld bc, $1e1b                                  ; $4595: $01 $1b $1e
    ld bc, $1e43                                  ; $4598: $01 $43 $1e
    ld bc, $1e4e                                  ; $459b: $01 $4e $1e
    ld bc, $1e78                                  ; $459e: $01 $78 $1e
    ld bc, $1e95                                  ; $45a1: $01 $95 $1e
    ld bc, $1e9e                                  ; $45a4: $01 $9e $1e
    ld bc, $1ee3                                  ; $45a7: $01 $e3 $1e
    ld bc, $1ee8                                  ; $45aa: $01 $e8 $1e
    ld bc, $1f83                                  ; $45ad: $01 $83 $1f
    ld bc, $1f8e                                  ; $45b0: $01 $8e $1f
    ld bc, $1f9a                                  ; $45b3: $01 $9a $1f
    ld bc, $1fbe                                  ; $45b6: $01 $be $1f
    ld bc, $1fdd                                  ; $45b9: $01 $dd $1f
    ld bc, $2008                                  ; $45bc: $01 $08 $20
    ld bc, $203d                                  ; $45bf: $01 $3d $20
    ld bc, $2060                                  ; $45c2: $01 $60 $20
    ld bc, $207e                                  ; $45c5: $01 $7e $20
    ld bc, $20ba                                  ; $45c8: $01 $ba $20
    ld bc, $2127                                  ; $45cb: $01 $27 $21
    ld bc, $2156                                  ; $45ce: $01 $56 $21
    ld bc, $217b                                  ; $45d1: $01 $7b $21
    ld bc, $2191                                  ; $45d4: $01 $91 $21
    ld bc, $21af                                  ; $45d7: $01 $af $21
    ld bc, $21c3                                  ; $45da: $01 $c3 $21
    ld bc, $21ea                                  ; $45dd: $01 $ea $21
    ld bc, $2201                                  ; $45e0: $01 $01 $22
    ld bc, $2223                                  ; $45e3: $01 $23 $22

Call_026_45e6:
    ld bc, $2257                                  ; $45e6: $01 $57 $22
    ld bc, $2289                                  ; $45e9: $01 $89 $22
    ld bc, $22a7                                  ; $45ec: $01 $a7 $22
    ld bc, $22f1                                  ; $45ef: $01 $f1 $22
    ld bc, $231a                                  ; $45f2: $01 $1a $23
    ld bc, $2377                                  ; $45f5: $01 $77 $23
    ld bc, $23a7                                  ; $45f8: $01 $a7 $23
    ld bc, $23d0                                  ; $45fb: $01 $d0 $23
    ld bc, $23f9                                  ; $45fe: $01 $f9 $23
    ld bc, $242e                                  ; $4601: $01 $2e $24
    ld bc, $2448                                  ; $4604: $01 $48 $24
    ld bc, $2460                                  ; $4607: $01 $60 $24
    ld bc, $247e                                  ; $460a: $01 $7e $24
    ld bc, $24ad                                  ; $460d: $01 $ad $24
    ld bc, $24bd                                  ; $4610: $01 $bd $24
    ld bc, $24d6                                  ; $4613: $01 $d6 $24
    ld bc, $24ea                                  ; $4616: $01 $ea $24
    ld bc, $251a                                  ; $4619: $01 $1a $25
    ld bc, $254f                                  ; $461c: $01 $4f $25
    ld bc, $2568                                  ; $461f: $01 $68 $25
    ld bc, $2585                                  ; $4622: $01 $85 $25
    ld bc, $25b0                                  ; $4625: $01 $b0 $25
    ld bc, $25ca                                  ; $4628: $01 $ca $25
    ld bc, $2619                                  ; $462b: $01 $19 $26
    ld bc, $2632                                  ; $462e: $01 $32 $26
    ld bc, $266a                                  ; $4631: $01 $6a $26
    ld bc, $2695                                  ; $4634: $01 $95 $26
    ld bc, $26ba                                  ; $4637: $01 $ba $26
    ld bc, $26e5                                  ; $463a: $01 $e5 $26
    ld bc, $2703                                  ; $463d: $01 $03 $27
    ld bc, $2735                                  ; $4640: $01 $35 $27
    ld bc, $274c                                  ; $4643: $01 $4c $27
    ld bc, $2775                                  ; $4646: $01 $75 $27
    ld bc, $2789                                  ; $4649: $01 $89 $27
    ld bc, $27b3                                  ; $464c: $01 $b3 $27
    ld bc, $27df                                  ; $464f: $01 $df $27
    ld bc, $27f6                                  ; $4652: $01 $f6 $27
    ld bc, $281a                                  ; $4655: $01 $1a $28
    ld bc, $2844                                  ; $4658: $01 $44 $28
    ld bc, $2863                                  ; $465b: $01 $63 $28
    ld bc, $288e                                  ; $465e: $01 $8e $28
    ld bc, $28b8                                  ; $4661: $01 $b8 $28
    ld bc, $28e2                                  ; $4664: $01 $e2 $28
    ld bc, $2901                                  ; $4667: $01 $01 $29
    ld bc, $293a                                  ; $466a: $01 $3a $29
    ld bc, $297a                                  ; $466d: $01 $7a $29
    ld bc, $29b3                                  ; $4670: $01 $b3 $29
    ld bc, $29db                                  ; $4673: $01 $db $29
    ld bc, $29ff                                  ; $4676: $01 $ff $29
    ld bc, $2a19                                  ; $4679: $01 $19 $2a
    ld bc, $2a37                                  ; $467c: $01 $37 $2a
    ld bc, $2a60                                  ; $467f: $01 $60 $2a
    ld bc, $2a7e                                  ; $4682: $01 $7e $2a
    ld bc, $2ab6                                  ; $4685: $01 $b6 $2a
    ld bc, $2ad2                                  ; $4688: $01 $d2 $2a
    ld bc, $2aef                                  ; $468b: $01 $ef $2a
    ld bc, $2b18                                  ; $468e: $01 $18 $2b
    ld bc, $2b3c                                  ; $4691: $01 $3c $2b
    ld bc, $2b45                                  ; $4694: $01 $45 $2b

Jump_026_4697:
    ld bc, $2b6a                                  ; $4697: $01 $6a $2b
    ld bc, $2b7b                                  ; $469a: $01 $7b $2b
    ld bc, $2b9d                                  ; $469d: $01 $9d $2b
    ld bc, $2bad                                  ; $46a0: $01 $ad $2b
    ld bc, $2bb9                                  ; $46a3: $01 $b9 $2b
    ld bc, $2bc7                                  ; $46a6: $01 $c7 $2b
    ld bc, $2bdc                                  ; $46a9: $01 $dc $2b
    ld bc, $2bfd                                  ; $46ac: $01 $fd $2b
    ld bc, $2c49                                  ; $46af: $01 $49 $2c
    ld bc, $2c4e                                  ; $46b2: $01 $4e $2c
    ld bc, $2caa                                  ; $46b5: $01 $aa $2c
    ld bc, $2cb8                                  ; $46b8: $01 $b8 $2c
    ld bc, $2d0d                                  ; $46bb: $01 $0d $2d
    ld bc, $2d2f                                  ; $46be: $01 $2f $2d
    ld bc, $2d42                                  ; $46c1: $01 $42 $2d
    ld bc, $2d67                                  ; $46c4: $01 $67 $2d
    ld bc, $2daa                                  ; $46c7: $01 $aa $2d
    ld bc, $2de0                                  ; $46ca: $01 $e0 $2d
    ld bc, $2df2                                  ; $46cd: $01 $f2 $2d
    ld bc, $2e04                                  ; $46d0: $01 $04 $2e
    ld bc, $2e1c                                  ; $46d3: $01 $1c $2e
    ld bc, $2e44                                  ; $46d6: $01 $44 $2e
    ld bc, $2e62                                  ; $46d9: $01 $62 $2e
    ld bc, $2e73                                  ; $46dc: $01 $73 $2e
    ld bc, $2e7e                                  ; $46df: $01 $7e $2e
    ld bc, $2eb2                                  ; $46e2: $01 $b2 $2e
    ld bc, $2eec                                  ; $46e5: $01 $ec $2e
    ld bc, $2f00                                  ; $46e8: $01 $00 $2f
    ld bc, $2f2d                                  ; $46eb: $01 $2d $2f
    ld bc, $2f62                                  ; $46ee: $01 $62 $2f
    ld bc, $2f7a                                  ; $46f1: $01 $7a $2f
    ld bc, $2f9e                                  ; $46f4: $01 $9e $2f
    ld bc, $2faf                                  ; $46f7: $01 $af $2f
    ld bc, $2fc9                                  ; $46fa: $01 $c9 $2f
    ld bc, $2fdd                                  ; $46fd: $01 $dd $2f
    ld bc, $2ff0                                  ; $4700: $01 $f0 $2f
    ld bc, $3011                                  ; $4703: $01 $11 $30
    ld bc, $3030                                  ; $4706: $01 $30 $30
    ld bc, $3088                                  ; $4709: $01 $88 $30
    ld bc, $309b                                  ; $470c: $01 $9b $30
    ld bc, $30eb                                  ; $470f: $01 $eb $30
    ld bc, $311f                                  ; $4712: $01 $1f $31
    ld bc, $313a                                  ; $4715: $01 $3a $31
    ld bc, $3163                                  ; $4718: $01 $63 $31
    ld bc, $319b                                  ; $471b: $01 $9b $31
    ld bc, $31de                                  ; $471e: $01 $de $31
    ld bc, $3213                                  ; $4721: $01 $13 $32
    ld bc, $3226                                  ; $4724: $01 $26 $32
    ld bc, $3237                                  ; $4727: $01 $37 $32
    ld bc, $3252                                  ; $472a: $01 $52 $32
    ld bc, $3266                                  ; $472d: $01 $66 $32
    ld bc, $3271                                  ; $4730: $01 $71 $32
    ld bc, $3280                                  ; $4733: $01 $80 $32
    ld bc, $3293                                  ; $4736: $01 $93 $32
    ld bc, $32a7                                  ; $4739: $01 $a7 $32
    ld bc, $32cc                                  ; $473c: $01 $cc $32
    ld bc, $32df                                  ; $473f: $01 $df $32
    ld bc, $32f0                                  ; $4742: $01 $f0 $32
    ld bc, $3310                                  ; $4745: $01 $10 $33
    ld bc, $3383                                  ; $4748: $01 $83 $33
    ld bc, $3392                                  ; $474b: $01 $92 $33
    ld bc, $33ac                                  ; $474e: $01 $ac $33
    ld bc, $33de                                  ; $4751: $01 $de $33
    ld bc, $33f5                                  ; $4754: $01 $f5 $33
    ld bc, $3427                                  ; $4757: $01 $27 $34
    ld bc, $3461                                  ; $475a: $01 $61 $34
    ld bc, $3480                                  ; $475d: $01 $80 $34
    ld bc, $34dd                                  ; $4760: $01 $dd $34
    ld bc, $34e4                                  ; $4763: $01 $e4 $34
    ld bc, $3500                                  ; $4766: $01 $00 $35
    ld bc, $350a                                  ; $4769: $01 $0a $35
    ld bc, $351f                                  ; $476c: $01 $1f $35
    ld bc, $354a                                  ; $476f: $01 $4a $35
    ld bc, $357d                                  ; $4772: $01 $7d $35
    ld bc, $35b2                                  ; $4775: $01 $b2 $35
    ld bc, $35d7                                  ; $4778: $01 $d7 $35
    ld bc, $360d                                  ; $477b: $01 $0d $36
    ld bc, $3620                                  ; $477e: $01 $20 $36
    ld bc, $362d                                  ; $4781: $01 $2d $36
    ld bc, $3639                                  ; $4784: $01 $39 $36
    ld bc, $364e                                  ; $4787: $01 $4e $36
    ld bc, $3676                                  ; $478a: $01 $76 $36
    ld bc, $36c4                                  ; $478d: $01 $c4 $36
    ld bc, $36f3                                  ; $4790: $01 $f3 $36
    ld bc, $371c                                  ; $4793: $01 $1c $37
    ld bc, $3749                                  ; $4796: $01 $49 $37
    ld bc, $3775                                  ; $4799: $01 $75 $37
    ld bc, $3799                                  ; $479c: $01 $99 $37
    ld bc, $37b2                                  ; $479f: $01 $b2 $37
    ld bc, $37d8                                  ; $47a2: $01 $d8 $37
    ld bc, $37e8                                  ; $47a5: $01 $e8 $37
    ld bc, $37ee                                  ; $47a8: $01 $ee $37
    ld bc, $3800                                  ; $47ab: $01 $00 $38
    ld bc, $3815                                  ; $47ae: $01 $15 $38
    ld bc, $382f                                  ; $47b1: $01 $2f $38
    ld bc, $3849                                  ; $47b4: $01 $49 $38
    ld bc, $3858                                  ; $47b7: $01 $58 $38

Jump_026_47ba:
    ld bc, $3867                                  ; $47ba: $01 $67 $38
    ld bc, $388c                                  ; $47bd: $01 $8c $38
    ld bc, $38b0                                  ; $47c0: $01 $b0 $38
    ld bc, $38c2                                  ; $47c3: $01 $c2 $38
    ld bc, $38e5                                  ; $47c6: $01 $e5 $38
    ld bc, $38fa                                  ; $47c9: $01 $fa $38
    ld bc, $390d                                  ; $47cc: $01 $0d $39
    ld bc, $391f                                  ; $47cf: $01 $1f $39
    ld bc, $3931                                  ; $47d2: $01 $31 $39
    ld bc, $394a                                  ; $47d5: $01 $4a $39
    ld bc, $396b                                  ; $47d8: $01 $6b $39
    ld bc, $3987                                  ; $47db: $01 $87 $39
    ld bc, $399f                                  ; $47de: $01 $9f $39
    ld bc, $39c5                                  ; $47e1: $01 $c5 $39
    ld bc, $39e9                                  ; $47e4: $01 $e9 $39
    ld bc, $3a15                                  ; $47e7: $01 $15 $3a
    ld bc, $3a3f                                  ; $47ea: $01 $3f $3a
    ld bc, $3a51                                  ; $47ed: $01 $51 $3a
    ld bc, $3a78                                  ; $47f0: $01 $78 $3a
    ld bc, $3a92                                  ; $47f3: $01 $92 $3a
    ld bc, $3aa7                                  ; $47f6: $01 $a7 $3a
    ld bc, $3acb                                  ; $47f9: $01 $cb $3a
    ld bc, $3ade                                  ; $47fc: $01 $de $3a
    ld bc, $3afe                                  ; $47ff: $01 $fe $3a
    ld bc, $3b02                                  ; $4802: $01 $02 $3b
    ld bc, $3b06                                  ; $4805: $01 $06 $3b
    ld bc, $3b0a                                  ; $4808: $01 $0a $3b
    ld bc, $3b18                                  ; $480b: $01 $18 $3b
    ld bc, $3b1f                                  ; $480e: $01 $1f $3b
    ld bc, $3b5a                                  ; $4811: $01 $5a $3b
    ld bc, $3b7c                                  ; $4814: $01 $7c $3b
    ld bc, $3b88                                  ; $4817: $01 $88 $3b
    ld bc, $3b91                                  ; $481a: $01 $91 $3b
    ld bc, $3baf                                  ; $481d: $01 $af $3b
    ld bc, $3bcd                                  ; $4820: $01 $cd $3b
    ld bc, $3bdb                                  ; $4823: $01 $db $3b
    ld bc, $3be9                                  ; $4826: $01 $e9 $3b
    ld bc, $3c05                                  ; $4829: $01 $05 $3c
    ld bc, $3c14                                  ; $482c: $01 $14 $3c
    ld bc, $3c33                                  ; $482f: $01 $33 $3c
    ld bc, $3c4f                                  ; $4832: $01 $4f $3c
    ld bc, $3c5c                                  ; $4835: $01 $5c $3c
    ld bc, $3c7d                                  ; $4838: $01 $7d $3c
    ld bc, $3c85                                  ; $483b: $01 $85 $3c
    ld bc, $3ca9                                  ; $483e: $01 $a9 $3c
    ld bc, $3cb3                                  ; $4841: $01 $b3 $3c
    ld bc, $3ccf                                  ; $4844: $01 $cf $3c
    ld bc, $3ce0                                  ; $4847: $01 $e0 $3c
    ld bc, $3ced                                  ; $484a: $01 $ed $3c
    ld bc, $3d44                                  ; $484d: $01 $44 $3d
    ld bc, $3d4e                                  ; $4850: $01 $4e $3d
    ld bc, $3d53                                  ; $4853: $01 $53 $3d
    ld bc, $3d5d                                  ; $4856: $01 $5d $3d
    ld bc, $3da1                                  ; $4859: $01 $a1 $3d
    ld bc, $3e55                                  ; $485c: $01 $55 $3e
    ld bc, $3e7a                                  ; $485f: $01 $7a $3e
    ld bc, $3e93                                  ; $4862: $01 $93 $3e
    ld bc, $3ea1                                  ; $4865: $01 $a1 $3e
    ld bc, $3eac                                  ; $4868: $01 $ac $3e
    ld bc, $3eb9                                  ; $486b: $01 $b9 $3e
    ld bc, $3ecc                                  ; $486e: $01 $cc $3e
    ld bc, $3edb                                  ; $4871: $01 $db $3e
    ld bc, $3efa                                  ; $4874: $01 $fa $3e
    ld bc, $3f1e                                  ; $4877: $01 $1e $3f
    ld bc, $3f56                                  ; $487a: $01 $56 $3f
    ld bc, $3f8d                                  ; $487d: $01 $8d $3f
    ld [bc], a                                    ; $4880: $02
    ld bc, $0200                                  ; $4881: $01 $00 $02
    ld e, [hl]                                    ; $4884: $5e
    nop                                           ; $4885: $00
    ld [bc], a                                    ; $4886: $02
    ld h, l                                       ; $4887: $65
    nop                                           ; $4888: $00
    ld [bc], a                                    ; $4889: $02
    sbc a                                         ; $488a: $9f
    nop                                           ; $488b: $00
    ld [bc], a                                    ; $488c: $02
    or [hl]                                       ; $488d: $b6
    nop                                           ; $488e: $00
    ld [bc], a                                    ; $488f: $02
    push de                                       ; $4890: $d5
    nop                                           ; $4891: $00
    ld [bc], a                                    ; $4892: $02
    ld [bc], a                                    ; $4893: $02
    ld bc, $1602                                  ; $4894: $01 $02 $16
    ld bc, $2702                                  ; $4897: $01 $02 $27
    ld bc, $4802                                  ; $489a: $01 $02 $48
    ld bc, $5502                                  ; $489d: $01 $02 $55
    ld bc, $6102                                  ; $48a0: $01 $02 $61
    ld bc, $7302                                  ; $48a3: $01 $02 $73
    ld bc, $7f02                                  ; $48a6: $01 $02 $7f
    ld bc, $a302                                  ; $48a9: $01 $02 $a3
    ld bc, $bd02                                  ; $48ac: $01 $02 $bd
    ld bc, $d202                                  ; $48af: $01 $02 $d2
    ld bc, $e702                                  ; $48b2: $01 $02 $e7
    ld bc, $fa02                                  ; $48b5: $01 $02 $fa
    ld bc, $0c02                                  ; $48b8: $01 $02 $0c
    ld [bc], a                                    ; $48bb: $02
    ld [bc], a                                    ; $48bc: $02
    dec e                                         ; $48bd: $1d
    ld [bc], a                                    ; $48be: $02
    ld [bc], a                                    ; $48bf: $02
    dec a                                         ; $48c0: $3d
    ld [bc], a                                    ; $48c1: $02
    ld [bc], a                                    ; $48c2: $02
    ld d, h                                       ; $48c3: $54
    ld [bc], a                                    ; $48c4: $02
    ld [bc], a                                    ; $48c5: $02
    or e                                          ; $48c6: $b3
    ld [bc], a                                    ; $48c7: $02
    ld [bc], a                                    ; $48c8: $02
    ld de, $0203                                  ; $48c9: $11 $03 $02
    dec e                                         ; $48cc: $1d
    inc bc                                        ; $48cd: $03
    ld [bc], a                                    ; $48ce: $02
    ld e, c                                       ; $48cf: $59
    inc bc                                        ; $48d0: $03
    ld [bc], a                                    ; $48d1: $02
    ld l, c                                       ; $48d2: $69
    inc bc                                        ; $48d3: $03
    ld [bc], a                                    ; $48d4: $02
    xor e                                         ; $48d5: $ab
    inc bc                                        ; $48d6: $03
    ld [bc], a                                    ; $48d7: $02
    call nc, Call_000_0203                        ; $48d8: $d4 $03 $02
    push af                                       ; $48db: $f5
    inc bc                                        ; $48dc: $03
    ld [bc], a                                    ; $48dd: $02
    rra                                           ; $48de: $1f
    inc b                                         ; $48df: $04
    ld [bc], a                                    ; $48e0: $02
    ld a, [hl-]                                   ; $48e1: $3a
    inc b                                         ; $48e2: $04
    ld [bc], a                                    ; $48e3: $02
    ld d, h                                       ; $48e4: $54
    inc b                                         ; $48e5: $04
    ld [bc], a                                    ; $48e6: $02
    sbc c                                         ; $48e7: $99
    inc b                                         ; $48e8: $04
    ld [bc], a                                    ; $48e9: $02
    sbc [hl]                                      ; $48ea: $9e
    inc b                                         ; $48eb: $04
    ld [bc], a                                    ; $48ec: $02
    xor a                                         ; $48ed: $af
    inc b                                         ; $48ee: $04
    ld [bc], a                                    ; $48ef: $02
    jp z, $0204                                   ; $48f0: $ca $04 $02

    ld [c], a                                     ; $48f3: $e2
    inc b                                         ; $48f4: $04
    ld [bc], a                                    ; $48f5: $02
    cp $04                                        ; $48f6: $fe $04
    ld [bc], a                                    ; $48f8: $02
    ld a, [hl+]                                   ; $48f9: $2a
    dec b                                         ; $48fa: $05
    ld [bc], a                                    ; $48fb: $02
    dec a                                         ; $48fc: $3d
    dec b                                         ; $48fd: $05
    ld [bc], a                                    ; $48fe: $02
    ld c, b                                       ; $48ff: $48
    dec b                                         ; $4900: $05
    ld [bc], a                                    ; $4901: $02
    ld d, [hl]                                    ; $4902: $56
    dec b                                         ; $4903: $05
    ld [bc], a                                    ; $4904: $02
    ld [hl], d                                    ; $4905: $72
    dec b                                         ; $4906: $05
    ld [bc], a                                    ; $4907: $02
    add [hl]                                      ; $4908: $86
    dec b                                         ; $4909: $05
    ld [bc], a                                    ; $490a: $02
    sub e                                         ; $490b: $93
    dec b                                         ; $490c: $05
    ld [bc], a                                    ; $490d: $02
    and h                                         ; $490e: $a4
    dec b                                         ; $490f: $05
    ld [bc], a                                    ; $4910: $02
    ldh [rTIMA], a                                ; $4911: $e0 $05
    ld [bc], a                                    ; $4913: $02
    ld b, l                                       ; $4914: $45
    ld b, $02                                     ; $4915: $06 $02
    ld d, a                                       ; $4917: $57
    ld b, $02                                     ; $4918: $06 $02
    cp d                                          ; $491a: $ba
    ld b, $02                                     ; $491b: $06 $02
    add sp, $06                                   ; $491d: $e8 $06
    ld [bc], a                                    ; $491f: $02
    add hl, de                                    ; $4920: $19
    rlca                                          ; $4921: $07
    ld [bc], a                                    ; $4922: $02
    cpl                                           ; $4923: $2f
    rlca                                          ; $4924: $07
    ld [bc], a                                    ; $4925: $02
    adc e                                         ; $4926: $8b
    rlca                                          ; $4927: $07
    ld [bc], a                                    ; $4928: $02
    sub h                                         ; $4929: $94
    rlca                                          ; $492a: $07
    ld [bc], a                                    ; $492b: $02
    cp l                                          ; $492c: $bd
    rlca                                          ; $492d: $07
    ld [bc], a                                    ; $492e: $02
    push de                                       ; $492f: $d5
    rlca                                          ; $4930: $07
    ld [bc], a                                    ; $4931: $02
    ld c, $08                                     ; $4932: $0e $08
    ld [bc], a                                    ; $4934: $02
    halt                                          ; $4935: $76
    ld [$9602], sp                                ; $4936: $08 $02 $96
    ld [$c102], sp                                ; $4939: $08 $02 $c1
    ld [$f002], sp                                ; $493c: $08 $02 $f0
    ld [$0802], sp                                ; $493f: $08 $02 $08
    add hl, bc                                    ; $4942: $09
    ld [bc], a                                    ; $4943: $02
    ld de, $0209                                  ; $4944: $11 $09 $02
    dec h                                         ; $4947: $25
    add hl, bc                                    ; $4948: $09
    ld [bc], a                                    ; $4949: $02
    ld c, [hl]                                    ; $494a: $4e
    add hl, bc                                    ; $494b: $09
    ld [bc], a                                    ; $494c: $02
    ld l, d                                       ; $494d: $6a
    add hl, bc                                    ; $494e: $09
    ld [bc], a                                    ; $494f: $02
    add e                                         ; $4950: $83
    add hl, bc                                    ; $4951: $09
    ld [bc], a                                    ; $4952: $02
    sbc l                                         ; $4953: $9d
    add hl, bc                                    ; $4954: $09
    ld [bc], a                                    ; $4955: $02
    inc c                                         ; $4956: $0c
    ld a, [bc]                                    ; $4957: $0a
    ld [bc], a                                    ; $4958: $02
    inc d                                         ; $4959: $14
    ld a, [bc]                                    ; $495a: $0a
    ld [bc], a                                    ; $495b: $02
    ld b, c                                       ; $495c: $41
    ld a, [bc]                                    ; $495d: $0a
    ld [bc], a                                    ; $495e: $02
    ld d, [hl]                                    ; $495f: $56
    ld a, [bc]                                    ; $4960: $0a
    ld [bc], a                                    ; $4961: $02
    ld a, c                                       ; $4962: $79
    ld a, [bc]                                    ; $4963: $0a
    ld [bc], a                                    ; $4964: $02
    xor e                                         ; $4965: $ab
    ld a, [bc]                                    ; $4966: $0a
    ld [bc], a                                    ; $4967: $02
    xor a                                         ; $4968: $af
    ld a, [bc]                                    ; $4969: $0a
    ld [bc], a                                    ; $496a: $02
    cp l                                          ; $496b: $bd
    ld a, [bc]                                    ; $496c: $0a
    ld [bc], a                                    ; $496d: $02
    ld a, [$020a]                                 ; $496e: $fa $0a $02
    ld a, [bc]                                    ; $4971: $0a
    dec bc                                        ; $4972: $0b
    ld [bc], a                                    ; $4973: $02
    inc [hl]                                      ; $4974: $34
    dec bc                                        ; $4975: $0b
    ld [bc], a                                    ; $4976: $02
    ld e, e                                       ; $4977: $5b
    dec bc                                        ; $4978: $0b
    ld [bc], a                                    ; $4979: $02
    and a                                         ; $497a: $a7
    dec bc                                        ; $497b: $0b
    ld [bc], a                                    ; $497c: $02
    ret                                           ; $497d: $c9


    dec bc                                        ; $497e: $0b
    ld [bc], a                                    ; $497f: $02
    db $db                                        ; $4980: $db
    dec bc                                        ; $4981: $0b
    ld [bc], a                                    ; $4982: $02
    db $eb                                        ; $4983: $eb
    dec bc                                        ; $4984: $0b
    ld [bc], a                                    ; $4985: $02
    db $fd                                        ; $4986: $fd
    dec bc                                        ; $4987: $0b
    ld [bc], a                                    ; $4988: $02
    db $10                                        ; $4989: $10
    inc c                                         ; $498a: $0c
    ld [bc], a                                    ; $498b: $02
    inc l                                         ; $498c: $2c
    inc c                                         ; $498d: $0c
    ld [bc], a                                    ; $498e: $02
    ld a, [hl-]                                   ; $498f: $3a
    inc c                                         ; $4990: $0c
    ld [bc], a                                    ; $4991: $02
    dec a                                         ; $4992: $3d
    inc c                                         ; $4993: $0c
    ld [bc], a                                    ; $4994: $02
    ld e, e                                       ; $4995: $5b
    inc c                                         ; $4996: $0c
    ld [bc], a                                    ; $4997: $02
    add e                                         ; $4998: $83
    inc c                                         ; $4999: $0c
    ld [bc], a                                    ; $499a: $02
    and c                                         ; $499b: $a1
    inc c                                         ; $499c: $0c
    ld [bc], a                                    ; $499d: $02
    or b                                          ; $499e: $b0
    inc c                                         ; $499f: $0c
    ld [bc], a                                    ; $49a0: $02
    pop de                                        ; $49a1: $d1
    inc c                                         ; $49a2: $0c
    ld [bc], a                                    ; $49a3: $02
    rst $28                                       ; $49a4: $ef
    inc c                                         ; $49a5: $0c
    ld [bc], a                                    ; $49a6: $02
    ld d, $0d                                     ; $49a7: $16 $0d
    ld [bc], a                                    ; $49a9: $02
    daa                                           ; $49aa: $27
    dec c                                         ; $49ab: $0d
    ld [bc], a                                    ; $49ac: $02
    ld b, l                                       ; $49ad: $45
    dec c                                         ; $49ae: $0d

Jump_026_49af:
    ld [bc], a                                    ; $49af: $02
    ld d, l                                       ; $49b0: $55
    dec c                                         ; $49b1: $0d
    ld [bc], a                                    ; $49b2: $02
    ld [hl], b                                    ; $49b3: $70
    dec c                                         ; $49b4: $0d
    ld [bc], a                                    ; $49b5: $02
    add [hl]                                      ; $49b6: $86
    dec c                                         ; $49b7: $0d
    ld [bc], a                                    ; $49b8: $02
    and e                                         ; $49b9: $a3
    dec c                                         ; $49ba: $0d
    ld [bc], a                                    ; $49bb: $02
    cp [hl]                                       ; $49bc: $be
    dec c                                         ; $49bd: $0d
    ld [bc], a                                    ; $49be: $02
    call z, Call_000_020d                         ; $49bf: $cc $0d $02
    db $fc                                        ; $49c2: $fc
    dec c                                         ; $49c3: $0d
    ld [bc], a                                    ; $49c4: $02
    ld a, $0e                                     ; $49c5: $3e $0e
    ld [bc], a                                    ; $49c7: $02
    ld d, b                                       ; $49c8: $50
    ld c, $02                                     ; $49c9: $0e $02
    ld l, e                                       ; $49cb: $6b
    ld c, $02                                     ; $49cc: $0e $02
    sub b                                         ; $49ce: $90
    ld c, $02                                     ; $49cf: $0e $02
    sbc a                                         ; $49d1: $9f
    ld c, $02                                     ; $49d2: $0e $02
    call nc, $020e                                ; $49d4: $d4 $0e $02
    ld [$020f], sp                                ; $49d7: $08 $0f $02
    ld a, $0f                                     ; $49da: $3e $0f
    ld [bc], a                                    ; $49dc: $02
    add b                                         ; $49dd: $80
    rrca                                          ; $49de: $0f
    ld [bc], a                                    ; $49df: $02
    xor d                                         ; $49e0: $aa
    rrca                                          ; $49e1: $0f
    ld [bc], a                                    ; $49e2: $02
    jp nz, $020f                                  ; $49e3: $c2 $0f $02

    jp c, $020f                                   ; $49e6: $da $0f $02

    push hl                                       ; $49e9: $e5
    rrca                                          ; $49ea: $0f
    ld [bc], a                                    ; $49eb: $02
    ld e, $10                                     ; $49ec: $1e $10
    ld [bc], a                                    ; $49ee: $02
    ld b, e                                       ; $49ef: $43
    db $10                                        ; $49f0: $10
    ld [bc], a                                    ; $49f1: $02
    ld [hl], l                                    ; $49f2: $75
    db $10                                        ; $49f3: $10
    ld [bc], a                                    ; $49f4: $02
    add a                                         ; $49f5: $87
    db $10                                        ; $49f6: $10
    ld [bc], a                                    ; $49f7: $02
    sbc l                                         ; $49f8: $9d
    db $10                                        ; $49f9: $10
    ld [bc], a                                    ; $49fa: $02
    and l                                         ; $49fb: $a5
    db $10                                        ; $49fc: $10
    ld [bc], a                                    ; $49fd: $02
    or l                                          ; $49fe: $b5
    db $10                                        ; $49ff: $10
    ld [bc], a                                    ; $4a00: $02
    rst $10                                       ; $4a01: $d7
    db $10                                        ; $4a02: $10
    ld [bc], a                                    ; $4a03: $02
    jp hl                                         ; $4a04: $e9


    db $10                                        ; $4a05: $10
    ld [bc], a                                    ; $4a06: $02
    scf                                           ; $4a07: $37
    ld de, $5d02                                  ; $4a08: $11 $02 $5d
    ld de, $8e02                                  ; $4a0b: $11 $02 $8e
    ld de, $b002                                  ; $4a0e: $11 $02 $b0
    ld de, $ed02                                  ; $4a11: $11 $02 $ed
    ld de, $1d02                                  ; $4a14: $11 $02 $1d
    ld [de], a                                    ; $4a17: $12
    ld [bc], a                                    ; $4a18: $02
    ld c, b                                       ; $4a19: $48
    ld [de], a                                    ; $4a1a: $12
    ld [bc], a                                    ; $4a1b: $02
    ld a, d                                       ; $4a1c: $7a
    ld [de], a                                    ; $4a1d: $12
    ld [bc], a                                    ; $4a1e: $02
    sbc d                                         ; $4a1f: $9a
    ld [de], a                                    ; $4a20: $12
    ld [bc], a                                    ; $4a21: $02
    or [hl]                                       ; $4a22: $b6
    ld [de], a                                    ; $4a23: $12
    ld [bc], a                                    ; $4a24: $02
    ld a, [bc]                                    ; $4a25: $0a
    inc de                                        ; $4a26: $13
    ld [bc], a                                    ; $4a27: $02
    dec sp                                        ; $4a28: $3b
    inc de                                        ; $4a29: $13
    ld [bc], a                                    ; $4a2a: $02
    ld c, l                                       ; $4a2b: $4d
    inc de                                        ; $4a2c: $13
    ld [bc], a                                    ; $4a2d: $02
    ld [hl], h                                    ; $4a2e: $74
    inc de                                        ; $4a2f: $13
    ld [bc], a                                    ; $4a30: $02
    sub e                                         ; $4a31: $93
    inc de                                        ; $4a32: $13
    ld [bc], a                                    ; $4a33: $02
    add $13                                       ; $4a34: $c6 $13
    ld [bc], a                                    ; $4a36: $02
    db $db                                        ; $4a37: $db
    inc de                                        ; $4a38: $13
    ld [bc], a                                    ; $4a39: $02
    ldh a, [rNR13]                                ; $4a3a: $f0 $13
    ld [bc], a                                    ; $4a3c: $02
    ld a, [bc]                                    ; $4a3d: $0a
    inc d                                         ; $4a3e: $14
    ld [bc], a                                    ; $4a3f: $02
    ld sp, $0214                                  ; $4a40: $31 $14 $02
    ld c, b                                       ; $4a43: $48
    inc d                                         ; $4a44: $14
    ld [bc], a                                    ; $4a45: $02
    adc [hl]                                      ; $4a46: $8e
    inc d                                         ; $4a47: $14
    ld [bc], a                                    ; $4a48: $02
    and a                                         ; $4a49: $a7
    inc d                                         ; $4a4a: $14
    ld [bc], a                                    ; $4a4b: $02
    add sp, $14                                   ; $4a4c: $e8 $14
    ld [bc], a                                    ; $4a4e: $02
    db $fd                                        ; $4a4f: $fd
    inc d                                         ; $4a50: $14
    ld [bc], a                                    ; $4a51: $02
    dec de                                        ; $4a52: $1b
    dec d                                         ; $4a53: $15
    ld [bc], a                                    ; $4a54: $02
    ccf                                           ; $4a55: $3f
    dec d                                         ; $4a56: $15
    ld [bc], a                                    ; $4a57: $02
    ld d, d                                       ; $4a58: $52
    dec d                                         ; $4a59: $15
    ld [bc], a                                    ; $4a5a: $02
    ld h, [hl]                                    ; $4a5b: $66
    dec d                                         ; $4a5c: $15
    ld [bc], a                                    ; $4a5d: $02
    sbc d                                         ; $4a5e: $9a
    dec d                                         ; $4a5f: $15
    ld [bc], a                                    ; $4a60: $02
    cp e                                          ; $4a61: $bb
    dec d                                         ; $4a62: $15
    ld [bc], a                                    ; $4a63: $02
    reti                                          ; $4a64: $d9


    dec d                                         ; $4a65: $15
    ld [bc], a                                    ; $4a66: $02
    cp $15                                        ; $4a67: $fe $15
    ld [bc], a                                    ; $4a69: $02
    inc h                                         ; $4a6a: $24
    ld d, $02                                     ; $4a6b: $16 $02
    add hl, sp                                    ; $4a6d: $39
    ld d, $02                                     ; $4a6e: $16 $02
    ld c, l                                       ; $4a70: $4d
    ld d, $02                                     ; $4a71: $16 $02
    ld h, e                                       ; $4a73: $63
    ld d, $02                                     ; $4a74: $16 $02
    ld l, l                                       ; $4a76: $6d
    ld d, $02                                     ; $4a77: $16 $02
    add c                                         ; $4a79: $81
    ld d, $02                                     ; $4a7a: $16 $02
    adc [hl]                                      ; $4a7c: $8e
    ld d, $02                                     ; $4a7d: $16 $02
    and b                                         ; $4a7f: $a0
    ld d, $02                                     ; $4a80: $16 $02
    or c                                          ; $4a82: $b1
    ld d, $02                                     ; $4a83: $16 $02
    jp z, Jump_000_0216                           ; $4a85: $ca $16 $02

    adc $16                                       ; $4a88: $ce $16
    ld [bc], a                                    ; $4a8a: $02
    pop hl                                        ; $4a8b: $e1
    ld d, $02                                     ; $4a8c: $16 $02
    ld hl, sp+$16                                 ; $4a8e: $f8 $16
    ld [bc], a                                    ; $4a90: $02
    add hl, hl                                    ; $4a91: $29
    rla                                           ; $4a92: $17
    ld [bc], a                                    ; $4a93: $02
    ld l, e                                       ; $4a94: $6b
    rla                                           ; $4a95: $17
    ld [bc], a                                    ; $4a96: $02
    sub l                                         ; $4a97: $95
    rla                                           ; $4a98: $17
    ld [bc], a                                    ; $4a99: $02
    xor h                                         ; $4a9a: $ac
    rla                                           ; $4a9b: $17
    ld [bc], a                                    ; $4a9c: $02
    or a                                          ; $4a9d: $b7
    rla                                           ; $4a9e: $17
    ld [bc], a                                    ; $4a9f: $02
    sbc $17                                       ; $4aa0: $de $17
    ld [bc], a                                    ; $4aa2: $02
    inc b                                         ; $4aa3: $04
    jr @+$04                                      ; $4aa4: $18 $02

    inc sp                                        ; $4aa6: $33
    jr @+$04                                      ; $4aa7: $18 $02

    ld h, e                                       ; $4aa9: $63
    jr @+$04                                      ; $4aaa: $18 $02

    adc l                                         ; $4aac: $8d
    jr @+$04                                      ; $4aad: $18 $02

Jump_026_4aaf:
    sbc b                                         ; $4aaf: $98
    jr @+$04                                      ; $4ab0: $18 $02

    xor [hl]                                      ; $4ab2: $ae
    jr @+$04                                      ; $4ab3: $18 $02

    ret                                           ; $4ab5: $c9


    jr jr_026_4aba                                ; $4ab6: $18 $02

    inc de                                        ; $4ab8: $13
    add hl, de                                    ; $4ab9: $19

jr_026_4aba:
    ld [bc], a                                    ; $4aba: $02
    daa                                           ; $4abb: $27
    add hl, de                                    ; $4abc: $19
    ld [bc], a                                    ; $4abd: $02
    ld [hl], $19                                  ; $4abe: $36 $19
    ld [bc], a                                    ; $4ac0: $02
    ld e, e                                       ; $4ac1: $5b
    add hl, de                                    ; $4ac2: $19
    ld [bc], a                                    ; $4ac3: $02
    ld [hl], l                                    ; $4ac4: $75
    add hl, de                                    ; $4ac5: $19
    ld [bc], a                                    ; $4ac6: $02
    adc b                                         ; $4ac7: $88
    add hl, de                                    ; $4ac8: $19
    ld [bc], a                                    ; $4ac9: $02
    and a                                         ; $4aca: $a7
    add hl, de                                    ; $4acb: $19
    ld [bc], a                                    ; $4acc: $02
    jp c, Jump_000_0219                           ; $4acd: $da $19 $02

    db $10                                        ; $4ad0: $10
    ld a, [de]                                    ; $4ad1: $1a
    ld [bc], a                                    ; $4ad2: $02
    ld c, d                                       ; $4ad3: $4a
    ld a, [de]                                    ; $4ad4: $1a
    ld [bc], a                                    ; $4ad5: $02
    add h                                         ; $4ad6: $84
    ld a, [de]                                    ; $4ad7: $1a
    ld [bc], a                                    ; $4ad8: $02
    or b                                          ; $4ad9: $b0
    ld a, [de]                                    ; $4ada: $1a
    ld [bc], a                                    ; $4adb: $02
    call $021a                                    ; $4adc: $cd $1a $02
    ld a, [$021a]                                 ; $4adf: $fa $1a $02
    dec de                                        ; $4ae2: $1b
    dec de                                        ; $4ae3: $1b
    ld [bc], a                                    ; $4ae4: $02
    ccf                                           ; $4ae5: $3f
    dec de                                        ; $4ae6: $1b
    ld [bc], a                                    ; $4ae7: $02
    ld c, [hl]                                    ; $4ae8: $4e
    dec de                                        ; $4ae9: $1b
    ld [bc], a                                    ; $4aea: $02
    ld [hl], c                                    ; $4aeb: $71
    dec de                                        ; $4aec: $1b

Call_026_4aed:
    ld [bc], a                                    ; $4aed: $02
    adc c                                         ; $4aee: $89
    dec de                                        ; $4aef: $1b
    ld [bc], a                                    ; $4af0: $02
    sbc h                                         ; $4af1: $9c
    dec de                                        ; $4af2: $1b
    ld [bc], a                                    ; $4af3: $02
    cp [hl]                                       ; $4af4: $be
    dec de                                        ; $4af5: $1b
    ld [bc], a                                    ; $4af6: $02
    rst $20                                       ; $4af7: $e7
    dec de                                        ; $4af8: $1b
    ld [bc], a                                    ; $4af9: $02
    ld c, $1c                                     ; $4afa: $0e $1c
    ld [bc], a                                    ; $4afc: $02
    dec de                                        ; $4afd: $1b
    inc e                                         ; $4afe: $1c
    ld [bc], a                                    ; $4aff: $02
    inc a                                         ; $4b00: $3c
    inc e                                         ; $4b01: $1c
    ld [bc], a                                    ; $4b02: $02
    ld b, a                                       ; $4b03: $47
    inc e                                         ; $4b04: $1c
    ld [bc], a                                    ; $4b05: $02
    ld h, l                                       ; $4b06: $65
    inc e                                         ; $4b07: $1c
    ld [bc], a                                    ; $4b08: $02
    ld [hl], a                                    ; $4b09: $77
    inc e                                         ; $4b0a: $1c
    ld [bc], a                                    ; $4b0b: $02
    sbc d                                         ; $4b0c: $9a
    inc e                                         ; $4b0d: $1c
    ld [bc], a                                    ; $4b0e: $02
    cp [hl]                                       ; $4b0f: $be
    inc e                                         ; $4b10: $1c
    ld [bc], a                                    ; $4b11: $02
    rst $08                                       ; $4b12: $cf
    inc e                                         ; $4b13: $1c
    ld [bc], a                                    ; $4b14: $02
    ld a, [$021c]                                 ; $4b15: $fa $1c $02
    ld b, $1d                                     ; $4b18: $06 $1d
    ld [bc], a                                    ; $4b1a: $02
    inc h                                         ; $4b1b: $24
    dec e                                         ; $4b1c: $1d
    ld [bc], a                                    ; $4b1d: $02
    ld b, a                                       ; $4b1e: $47
    dec e                                         ; $4b1f: $1d
    ld [bc], a                                    ; $4b20: $02
    ld l, [hl]                                    ; $4b21: $6e
    dec e                                         ; $4b22: $1d
    ld [bc], a                                    ; $4b23: $02
    sbc e                                         ; $4b24: $9b
    dec e                                         ; $4b25: $1d
    ld [bc], a                                    ; $4b26: $02
    or h                                          ; $4b27: $b4
    dec e                                         ; $4b28: $1d
    ld [bc], a                                    ; $4b29: $02
    pop de                                        ; $4b2a: $d1
    dec e                                         ; $4b2b: $1d
    ld [bc], a                                    ; $4b2c: $02
    xor $1d                                       ; $4b2d: $ee $1d
    ld [bc], a                                    ; $4b2f: $02
    rlca                                          ; $4b30: $07
    ld e, $02                                     ; $4b31: $1e $02
    add hl, hl                                    ; $4b33: $29
    ld e, $02                                     ; $4b34: $1e $02
    ld c, c                                       ; $4b36: $49
    ld e, $02                                     ; $4b37: $1e $02
    ld l, e                                       ; $4b39: $6b
    ld e, $02                                     ; $4b3a: $1e $02
    adc b                                         ; $4b3c: $88
    ld e, $02                                     ; $4b3d: $1e $02
    and l                                         ; $4b3f: $a5
    ld e, $02                                     ; $4b40: $1e $02
    cp a                                          ; $4b42: $bf
    ld e, $02                                     ; $4b43: $1e $02
    db $db                                        ; $4b45: $db
    ld e, $02                                     ; $4b46: $1e $02
    db $fc                                        ; $4b48: $fc
    ld e, $02                                     ; $4b49: $1e $02
    ld sp, $021f                                  ; $4b4b: $31 $1f $02
    ld e, h                                       ; $4b4e: $5c
    rra                                           ; $4b4f: $1f
    ld [bc], a                                    ; $4b50: $02
    add a                                         ; $4b51: $87
    rra                                           ; $4b52: $1f
    ld [bc], a                                    ; $4b53: $02
    cp e                                          ; $4b54: $bb
    rra                                           ; $4b55: $1f
    ld [bc], a                                    ; $4b56: $02
    pop bc                                        ; $4b57: $c1
    rra                                           ; $4b58: $1f
    ld [bc], a                                    ; $4b59: $02
    call nc, Call_000_021f                        ; $4b5a: $d4 $1f $02
    or $1f                                        ; $4b5d: $f6 $1f
    ld [bc], a                                    ; $4b5f: $02
    ld c, $20                                     ; $4b60: $0e $20
    ld [bc], a                                    ; $4b62: $02
    ld d, h                                       ; $4b63: $54
    jr nz, @+$04                                  ; $4b64: $20 $02

    ld [hl], d                                    ; $4b66: $72
    jr nz, @+$04                                  ; $4b67: $20 $02

    sub [hl]                                      ; $4b69: $96
    jr nz, @+$04                                  ; $4b6a: $20 $02

    xor h                                         ; $4b6c: $ac
    jr nz, @+$04                                  ; $4b6d: $20 $02

    ret                                           ; $4b6f: $c9


    jr nz, @+$04                                  ; $4b70: $20 $02

    ret c                                         ; $4b72: $d8

    jr nz, jr_026_4b77                            ; $4b73: $20 $02

    ld hl, sp+$20                                 ; $4b75: $f8 $20

jr_026_4b77:
    ld [bc], a                                    ; $4b77: $02
    rst $38                                       ; $4b78: $ff
    jr nz, @+$04                                  ; $4b79: $20 $02

    ld de, $0221                                  ; $4b7b: $11 $21 $02
    ld c, [hl]                                    ; $4b7e: $4e
    ld hl, $5e02                                  ; $4b7f: $21 $02 $5e
    ld hl, $6e02                                  ; $4b82: $21 $02 $6e
    ld hl, $9502                                  ; $4b85: $21 $02 $95
    ld hl, $bd02                                  ; $4b88: $21 $02 $bd
    ld hl, $ce02                                  ; $4b8b: $21 $02 $ce
    ld hl, $d402                                  ; $4b8e: $21 $02 $d4
    ld hl, $eb02                                  ; $4b91: $21 $02 $eb
    ld hl, $0a02                                  ; $4b94: $21 $02 $0a
    ld [hl+], a                                   ; $4b97: $22
    ld [bc], a                                    ; $4b98: $02
    ld [hl-], a                                   ; $4b99: $32
    ld [hl+], a                                   ; $4b9a: $22
    ld [bc], a                                    ; $4b9b: $02
    ld a, [hl-]                                   ; $4b9c: $3a
    ld [hl+], a                                   ; $4b9d: $22
    ld [bc], a                                    ; $4b9e: $02
    ld d, b                                       ; $4b9f: $50
    ld [hl+], a                                   ; $4ba0: $22
    ld [bc], a                                    ; $4ba1: $02
    ld [hl], d                                    ; $4ba2: $72
    ld [hl+], a                                   ; $4ba3: $22
    ld [bc], a                                    ; $4ba4: $02
    add l                                         ; $4ba5: $85
    ld [hl+], a                                   ; $4ba6: $22
    ld [bc], a                                    ; $4ba7: $02
    add sp, $22                                   ; $4ba8: $e8 $22
    ld [bc], a                                    ; $4baa: $02
    di                                            ; $4bab: $f3
    ld [hl+], a                                   ; $4bac: $22
    ld [bc], a                                    ; $4bad: $02
    ld hl, sp+$22                                 ; $4bae: $f8 $22
    ld [bc], a                                    ; $4bb0: $02
    ld a, [bc]                                    ; $4bb1: $0a
    inc hl                                        ; $4bb2: $23
    ld [bc], a                                    ; $4bb3: $02
    ld b, e                                       ; $4bb4: $43
    inc hl                                        ; $4bb5: $23
    ld [bc], a                                    ; $4bb6: $02
    ld h, [hl]                                    ; $4bb7: $66
    inc hl                                        ; $4bb8: $23
    ld [bc], a                                    ; $4bb9: $02

Call_026_4bba:
    ld a, e                                       ; $4bba: $7b
    inc hl                                        ; $4bbb: $23
    ld [bc], a                                    ; $4bbc: $02
    sbc h                                         ; $4bbd: $9c
    inc hl                                        ; $4bbe: $23
    ld [bc], a                                    ; $4bbf: $02
    or a                                          ; $4bc0: $b7
    inc hl                                        ; $4bc1: $23
    ld [bc], a                                    ; $4bc2: $02
    db $dd                                        ; $4bc3: $dd
    inc hl                                        ; $4bc4: $23
    ld [bc], a                                    ; $4bc5: $02
    pop af                                        ; $4bc6: $f1
    inc hl                                        ; $4bc7: $23
    ld [bc], a                                    ; $4bc8: $02
    dec b                                         ; $4bc9: $05
    inc h                                         ; $4bca: $24
    ld [bc], a                                    ; $4bcb: $02
    ld e, $24                                     ; $4bcc: $1e $24
    ld [bc], a                                    ; $4bce: $02
    jr nc, jr_026_4bf5                            ; $4bcf: $30 $24

    ld [bc], a                                    ; $4bd1: $02
    ld a, [hl-]                                   ; $4bd2: $3a
    inc h                                         ; $4bd3: $24
    ld [bc], a                                    ; $4bd4: $02
    ld c, l                                       ; $4bd5: $4d
    inc h                                         ; $4bd6: $24
    ld [bc], a                                    ; $4bd7: $02
    ld l, a                                       ; $4bd8: $6f
    inc h                                         ; $4bd9: $24
    ld [bc], a                                    ; $4bda: $02
    ld a, b                                       ; $4bdb: $78
    inc h                                         ; $4bdc: $24
    ld [bc], a                                    ; $4bdd: $02
    sub e                                         ; $4bde: $93
    inc h                                         ; $4bdf: $24
    ld [bc], a                                    ; $4be0: $02
    or l                                          ; $4be1: $b5
    inc h                                         ; $4be2: $24
    ld [bc], a                                    ; $4be3: $02
    ldh [rNR50], a                                ; $4be4: $e0 $24
    ld [bc], a                                    ; $4be6: $02
    db $fc                                        ; $4be7: $fc
    inc h                                         ; $4be8: $24
    ld [bc], a                                    ; $4be9: $02
    scf                                           ; $4bea: $37
    dec h                                         ; $4beb: $25
    ld [bc], a                                    ; $4bec: $02
    ld c, e                                       ; $4bed: $4b
    dec h                                         ; $4bee: $25
    ld [bc], a                                    ; $4bef: $02
    ld e, l                                       ; $4bf0: $5d
    dec h                                         ; $4bf1: $25
    ld [bc], a                                    ; $4bf2: $02
    sub e                                         ; $4bf3: $93
    dec h                                         ; $4bf4: $25

jr_026_4bf5:
    ld [bc], a                                    ; $4bf5: $02
    xor a                                         ; $4bf6: $af
    dec h                                         ; $4bf7: $25
    ld [bc], a                                    ; $4bf8: $02
    ret z                                         ; $4bf9: $c8

    dec h                                         ; $4bfa: $25
    ld [bc], a                                    ; $4bfb: $02
    inc bc                                        ; $4bfc: $03
    ld h, $02                                     ; $4bfd: $26 $02
    add hl, de                                    ; $4bff: $19
    ld h, $02                                     ; $4c00: $26 $02
    ld e, e                                       ; $4c02: $5b
    ld h, $02                                     ; $4c03: $26 $02
    sub a                                         ; $4c05: $97
    ld h, $02                                     ; $4c06: $26 $02
    and d                                         ; $4c08: $a2
    ld h, $02                                     ; $4c09: $26 $02
    ret                                           ; $4c0b: $c9


    ld h, $02                                     ; $4c0c: $26 $02
    di                                            ; $4c0e: $f3
    ld h, $02                                     ; $4c0f: $26 $02
    ld c, $27                                     ; $4c11: $0e $27
    ld [bc], a                                    ; $4c13: $02
    ld d, $27                                     ; $4c14: $16 $27
    ld [bc], a                                    ; $4c16: $02
    ld l, $27                                     ; $4c17: $2e $27
    ld [bc], a                                    ; $4c19: $02
    ld a, $27                                     ; $4c1a: $3e $27
    ld [bc], a                                    ; $4c1c: $02
    ld h, h                                       ; $4c1d: $64
    daa                                           ; $4c1e: $27
    ld [bc], a                                    ; $4c1f: $02
    sub c                                         ; $4c20: $91
    daa                                           ; $4c21: $27
    ld [bc], a                                    ; $4c22: $02
    xor e                                         ; $4c23: $ab
    daa                                           ; $4c24: $27
    ld [bc], a                                    ; $4c25: $02
    cp h                                          ; $4c26: $bc
    daa                                           ; $4c27: $27
    ld [bc], a                                    ; $4c28: $02
    ret c                                         ; $4c29: $d8

    daa                                           ; $4c2a: $27
    ld [bc], a                                    ; $4c2b: $02
    jp hl                                         ; $4c2c: $e9


    daa                                           ; $4c2d: $27
    ld [bc], a                                    ; $4c2e: $02
    jr nc, jr_026_4c59                            ; $4c2f: $30 $28

    ld [bc], a                                    ; $4c31: $02
    ld e, l                                       ; $4c32: $5d
    jr z, @+$04                                   ; $4c33: $28 $02

    sbc e                                         ; $4c35: $9b
    jr z, @+$04                                   ; $4c36: $28 $02

    xor d                                         ; $4c38: $aa
    jr z, @+$04                                   ; $4c39: $28 $02

    jp $0228                                      ; $4c3b: $c3 $28 $02


    ld [c], a                                     ; $4c3e: $e2
    jr z, @+$04                                   ; $4c3f: $28 $02

    ld [$0229], sp                                ; $4c41: $08 $29 $02
    daa                                           ; $4c44: $27
    add hl, hl                                    ; $4c45: $29
    ld [bc], a                                    ; $4c46: $02
    ld d, l                                       ; $4c47: $55
    add hl, hl                                    ; $4c48: $29
    ld [bc], a                                    ; $4c49: $02
    ld h, c                                       ; $4c4a: $61
    add hl, hl                                    ; $4c4b: $29
    ld [bc], a                                    ; $4c4c: $02
    adc a                                         ; $4c4d: $8f
    add hl, hl                                    ; $4c4e: $29
    ld [bc], a                                    ; $4c4f: $02
    cp [hl]                                       ; $4c50: $be
    add hl, hl                                    ; $4c51: $29
    ld [bc], a                                    ; $4c52: $02
    sub $29                                       ; $4c53: $d6 $29
    ld [bc], a                                    ; $4c55: $02
    dec b                                         ; $4c56: $05
    ld a, [hl+]                                   ; $4c57: $2a
    ld [bc], a                                    ; $4c58: $02

jr_026_4c59:
    ld [hl-], a                                   ; $4c59: $32
    ld a, [hl+]                                   ; $4c5a: $2a
    ld [bc], a                                    ; $4c5b: $02
    ld e, l                                       ; $4c5c: $5d
    ld a, [hl+]                                   ; $4c5d: $2a
    ld [bc], a                                    ; $4c5e: $02
    add b                                         ; $4c5f: $80
    ld a, [hl+]                                   ; $4c60: $2a
    ld [bc], a                                    ; $4c61: $02
    sub e                                         ; $4c62: $93
    ld a, [hl+]                                   ; $4c63: $2a
    ld [bc], a                                    ; $4c64: $02
    jp nc, $022a                                  ; $4c65: $d2 $2a $02

    ld [$022a], a                                 ; $4c68: $ea $2a $02
    rst $38                                       ; $4c6b: $ff
    ld a, [hl+]                                   ; $4c6c: $2a
    ld [bc], a                                    ; $4c6d: $02
    ld [bc], a                                    ; $4c6e: $02
    dec hl                                        ; $4c6f: $2b
    ld [bc], a                                    ; $4c70: $02
    ld a, [hl+]                                   ; $4c71: $2a
    dec hl                                        ; $4c72: $2b
    ld [bc], a                                    ; $4c73: $02
    dec a                                         ; $4c74: $3d
    dec hl                                        ; $4c75: $2b
    ld [bc], a                                    ; $4c76: $02
    ld c, l                                       ; $4c77: $4d
    dec hl                                        ; $4c78: $2b
    ld [bc], a                                    ; $4c79: $02
    ld e, h                                       ; $4c7a: $5c
    dec hl                                        ; $4c7b: $2b
    ld [bc], a                                    ; $4c7c: $02
    ld a, e                                       ; $4c7d: $7b
    dec hl                                        ; $4c7e: $2b
    ld [bc], a                                    ; $4c7f: $02
    adc h                                         ; $4c80: $8c
    dec hl                                        ; $4c81: $2b
    ld [bc], a                                    ; $4c82: $02
    and [hl]                                      ; $4c83: $a6
    dec hl                                        ; $4c84: $2b
    ld [bc], a                                    ; $4c85: $02
    xor a                                         ; $4c86: $af
    dec hl                                        ; $4c87: $2b
    ld [bc], a                                    ; $4c88: $02
    add $2b                                       ; $4c89: $c6 $2b
    ld [bc], a                                    ; $4c8b: $02
    db $e3                                        ; $4c8c: $e3
    dec hl                                        ; $4c8d: $2b
    ld [bc], a                                    ; $4c8e: $02
    dec [hl]                                      ; $4c8f: $35
    inc l                                         ; $4c90: $2c
    ld [bc], a                                    ; $4c91: $02
    ld c, [hl]                                    ; $4c92: $4e
    inc l                                         ; $4c93: $2c
    ld [bc], a                                    ; $4c94: $02
    and l                                         ; $4c95: $a5
    inc l                                         ; $4c96: $2c
    ld [bc], a                                    ; $4c97: $02
    adc $2c                                       ; $4c98: $ce $2c
    ld [bc], a                                    ; $4c9a: $02
    xor $2c                                       ; $4c9b: $ee $2c
    ld [bc], a                                    ; $4c9d: $02
    ld sp, hl                                     ; $4c9e: $f9
    inc l                                         ; $4c9f: $2c
    ld [bc], a                                    ; $4ca0: $02
    ld hl, $022d                                  ; $4ca1: $21 $2d $02
    add hl, hl                                    ; $4ca4: $29
    dec l                                         ; $4ca5: $2d
    ld [bc], a                                    ; $4ca6: $02
    ld c, e                                       ; $4ca7: $4b
    dec l                                         ; $4ca8: $2d
    ld [bc], a                                    ; $4ca9: $02
    ld d, a                                       ; $4caa: $57
    dec l                                         ; $4cab: $2d
    ld [bc], a                                    ; $4cac: $02
    ld l, [hl]                                    ; $4cad: $6e
    dec l                                         ; $4cae: $2d
    ld [bc], a                                    ; $4caf: $02
    cp d                                          ; $4cb0: $ba
    dec l                                         ; $4cb1: $2d
    ld [bc], a                                    ; $4cb2: $02
    jp nc, $022d                                  ; $4cb3: $d2 $2d $02

    ld [c], a                                     ; $4cb6: $e2
    dec l                                         ; $4cb7: $2d
    ld [bc], a                                    ; $4cb8: $02
    or $2d                                        ; $4cb9: $f6 $2d
    ld [bc], a                                    ; $4cbb: $02
    ld d, $2e                                     ; $4cbc: $16 $2e
    ld [bc], a                                    ; $4cbe: $02
    jr nz, jr_026_4cef                            ; $4cbf: $20 $2e

    ld [bc], a                                    ; $4cc1: $02
    jr z, jr_026_4cf2                             ; $4cc2: $28 $2e

    ld [bc], a                                    ; $4cc4: $02
    ld l, l                                       ; $4cc5: $6d
    ld l, $02                                     ; $4cc6: $2e $02
    add b                                         ; $4cc8: $80
    ld l, $02                                     ; $4cc9: $2e $02
    adc e                                         ; $4ccb: $8b
    ld l, $02                                     ; $4ccc: $2e $02
    sub c                                         ; $4cce: $91
    ld l, $02                                     ; $4ccf: $2e $02
    or d                                          ; $4cd1: $b2
    ld l, $02                                     ; $4cd2: $2e $02
    ei                                            ; $4cd4: $fb
    ld l, $02                                     ; $4cd5: $2e $02
    rla                                           ; $4cd7: $17
    cpl                                           ; $4cd8: $2f
    ld [bc], a                                    ; $4cd9: $02
    dec l                                         ; $4cda: $2d
    cpl                                           ; $4cdb: $2f
    ld [bc], a                                    ; $4cdc: $02
    scf                                           ; $4cdd: $37
    cpl                                           ; $4cde: $2f
    ld [bc], a                                    ; $4cdf: $02
    ld l, c                                       ; $4ce0: $69
    cpl                                           ; $4ce1: $2f
    ld [bc], a                                    ; $4ce2: $02
    add l                                         ; $4ce3: $85
    cpl                                           ; $4ce4: $2f
    ld [bc], a                                    ; $4ce5: $02
    sub [hl]                                      ; $4ce6: $96
    cpl                                           ; $4ce7: $2f
    ld [bc], a                                    ; $4ce8: $02
    and d                                         ; $4ce9: $a2
    cpl                                           ; $4cea: $2f
    ld [bc], a                                    ; $4ceb: $02
    jp Jump_000_022f                              ; $4cec: $c3 $2f $02


jr_026_4cef:
    sub $2f                                       ; $4cef: $d6 $2f
    ld [bc], a                                    ; $4cf1: $02

jr_026_4cf2:
    db $fd                                        ; $4cf2: $fd
    cpl                                           ; $4cf3: $2f
    ld [bc], a                                    ; $4cf4: $02
    ld h, $30                                     ; $4cf5: $26 $30
    ld [bc], a                                    ; $4cf7: $02
    ld a, [hl-]                                   ; $4cf8: $3a
    jr nc, @+$04                                  ; $4cf9: $30 $02

    adc e                                         ; $4cfb: $8b
    jr nc, @+$04                                  ; $4cfc: $30 $02

    xor c                                         ; $4cfe: $a9
    jr nc, jr_026_4d03                            ; $4cff: $30 $02

    swap b                                        ; $4d01: $cb $30

jr_026_4d03:
    ld [bc], a                                    ; $4d03: $02
    xor $30                                       ; $4d04: $ee $30
    ld [bc], a                                    ; $4d06: $02
    inc c                                         ; $4d07: $0c
    ld sp, $4502                                  ; $4d08: $31 $02 $45
    ld sp, $4d02                                  ; $4d0b: $31 $02 $4d
    ld sp, $c802                                  ; $4d0e: $31 $02 $c8
    ld sp, $d102                                  ; $4d11: $31 $02 $d1
    ld sp, $df02                                  ; $4d14: $31 $02 $df
    ld sp, $f302                                  ; $4d17: $31 $02 $f3
    ld sp, $0302                                  ; $4d1a: $31 $02 $03
    ld [hl-], a                                   ; $4d1d: $32
    ld [bc], a                                    ; $4d1e: $02
    ld h, $32                                     ; $4d1f: $26 $32
    ld [bc], a                                    ; $4d21: $02
    ld e, c                                       ; $4d22: $59
    ld [hl-], a                                   ; $4d23: $32
    ld [bc], a                                    ; $4d24: $02
    ld l, l                                       ; $4d25: $6d
    ld [hl-], a                                   ; $4d26: $32
    ld [bc], a                                    ; $4d27: $02
    sbc [hl]                                      ; $4d28: $9e
    ld [hl-], a                                   ; $4d29: $32
    ld [bc], a                                    ; $4d2a: $02
    ret nc                                        ; $4d2b: $d0

    ld [hl-], a                                   ; $4d2c: $32
    ld [bc], a                                    ; $4d2d: $02
    and $32                                       ; $4d2e: $e6 $32
    ld [bc], a                                    ; $4d30: $02
    nop                                           ; $4d31: $00
    inc sp                                        ; $4d32: $33
    ld [bc], a                                    ; $4d33: $02
    inc l                                         ; $4d34: $2c
    inc sp                                        ; $4d35: $33
    ld [bc], a                                    ; $4d36: $02
    ld d, l                                       ; $4d37: $55
    inc sp                                        ; $4d38: $33
    ld [bc], a                                    ; $4d39: $02
    ld [hl], d                                    ; $4d3a: $72
    inc sp                                        ; $4d3b: $33
    ld [bc], a                                    ; $4d3c: $02
    sub e                                         ; $4d3d: $93
    inc sp                                        ; $4d3e: $33
    ld [bc], a                                    ; $4d3f: $02
    sbc b                                         ; $4d40: $98
    inc sp                                        ; $4d41: $33
    ld [bc], a                                    ; $4d42: $02
    ldh a, [$33]                                  ; $4d43: $f0 $33
    ld [bc], a                                    ; $4d45: $02
    or $33                                        ; $4d46: $f6 $33
    ld [bc], a                                    ; $4d48: $02
    daa                                           ; $4d49: $27
    inc [hl]                                      ; $4d4a: $34
    ld [bc], a                                    ; $4d4b: $02
    ld c, b                                       ; $4d4c: $48
    inc [hl]                                      ; $4d4d: $34
    ld [bc], a                                    ; $4d4e: $02
    ld d, a                                       ; $4d4f: $57
    inc [hl]                                      ; $4d50: $34
    ld [bc], a                                    ; $4d51: $02
    ld h, l                                       ; $4d52: $65
    inc [hl]                                      ; $4d53: $34
    ld [bc], a                                    ; $4d54: $02
    ld [hl], c                                    ; $4d55: $71
    inc [hl]                                      ; $4d56: $34
    ld [bc], a                                    ; $4d57: $02
    adc e                                         ; $4d58: $8b
    inc [hl]                                      ; $4d59: $34
    ld [bc], a                                    ; $4d5a: $02
    reti                                          ; $4d5b: $d9


    inc [hl]                                      ; $4d5c: $34
    ld [bc], a                                    ; $4d5d: $02
    rst $20                                       ; $4d5e: $e7
    inc [hl]                                      ; $4d5f: $34
    ld [bc], a                                    ; $4d60: $02
    ei                                            ; $4d61: $fb
    inc [hl]                                      ; $4d62: $34
    ld [bc], a                                    ; $4d63: $02
    ld [bc], a                                    ; $4d64: $02
    dec [hl]                                      ; $4d65: $35
    ld [bc], a                                    ; $4d66: $02
    jr nc, jr_026_4d9e                            ; $4d67: $30 $35

    ld [bc], a                                    ; $4d69: $02
    ld e, l                                       ; $4d6a: $5d
    dec [hl]                                      ; $4d6b: $35
    ld [bc], a                                    ; $4d6c: $02
    ld a, b                                       ; $4d6d: $78
    dec [hl]                                      ; $4d6e: $35
    ld [bc], a                                    ; $4d6f: $02
    pop de                                        ; $4d70: $d1
    dec [hl]                                      ; $4d71: $35
    ld [bc], a                                    ; $4d72: $02
    db $ec                                        ; $4d73: $ec
    dec [hl]                                      ; $4d74: $35
    ld [bc], a                                    ; $4d75: $02
    rst $38                                       ; $4d76: $ff
    dec [hl]                                      ; $4d77: $35
    ld [bc], a                                    ; $4d78: $02
    ld [hl+], a                                   ; $4d79: $22
    ld [hl], $02                                  ; $4d7a: $36 $02
    ld l, h                                       ; $4d7c: $6c
    ld [hl], $02                                  ; $4d7d: $36 $02
    sbc d                                         ; $4d7f: $9a
    ld [hl], $02                                  ; $4d80: $36 $02
    rst $08                                       ; $4d82: $cf
    ld [hl], $02                                  ; $4d83: $36 $02
    di                                            ; $4d85: $f3
    ld [hl], $02                                  ; $4d86: $36 $02
    ld c, $37                                     ; $4d88: $0e $37
    ld [bc], a                                    ; $4d8a: $02
    daa                                           ; $4d8b: $27
    scf                                           ; $4d8c: $37
    ld [bc], a                                    ; $4d8d: $02
    dec l                                         ; $4d8e: $2d
    scf                                           ; $4d8f: $37
    ld [bc], a                                    ; $4d90: $02
    ld e, e                                       ; $4d91: $5b
    scf                                           ; $4d92: $37
    ld [bc], a                                    ; $4d93: $02
    ld a, d                                       ; $4d94: $7a
    scf                                           ; $4d95: $37
    ld [bc], a                                    ; $4d96: $02
    and b                                         ; $4d97: $a0
    scf                                           ; $4d98: $37
    ld [bc], a                                    ; $4d99: $02
    or l                                          ; $4d9a: $b5
    scf                                           ; $4d9b: $37
    ld [bc], a                                    ; $4d9c: $02
    ld [c], a                                     ; $4d9d: $e2

jr_026_4d9e:
    scf                                           ; $4d9e: $37
    ld [bc], a                                    ; $4d9f: $02
    ld a, [c]                                     ; $4da0: $f2
    scf                                           ; $4da1: $37
    ld [bc], a                                    ; $4da2: $02
    ld c, $38                                     ; $4da3: $0e $38
    ld [bc], a                                    ; $4da5: $02
    rla                                           ; $4da6: $17
    jr c, @+$04                                   ; $4da7: $38 $02

    rst $08                                       ; $4da9: $cf
    jr c, @+$04                                   ; $4daa: $38 $02

    db $db                                        ; $4dac: $db
    jr c, jr_026_4db1                             ; $4dad: $38 $02

    ld b, d                                       ; $4daf: $42
    add hl, sp                                    ; $4db0: $39

jr_026_4db1:
    ld [bc], a                                    ; $4db1: $02
    ld h, b                                       ; $4db2: $60
    add hl, sp                                    ; $4db3: $39
    ld [bc], a                                    ; $4db4: $02
    add a                                         ; $4db5: $87
    add hl, sp                                    ; $4db6: $39
    ld [bc], a                                    ; $4db7: $02
    xor e                                         ; $4db8: $ab
    add hl, sp                                    ; $4db9: $39
    ld [bc], a                                    ; $4dba: $02
    db $eb                                        ; $4dbb: $eb
    add hl, sp                                    ; $4dbc: $39
    ld [bc], a                                    ; $4dbd: $02
    db $fc                                        ; $4dbe: $fc
    add hl, sp                                    ; $4dbf: $39
    ld [bc], a                                    ; $4dc0: $02
    add hl, bc                                    ; $4dc1: $09
    ld a, [hl-]                                   ; $4dc2: $3a
    ld [bc], a                                    ; $4dc3: $02
    rrca                                          ; $4dc4: $0f
    ld a, [hl-]                                   ; $4dc5: $3a
    ld [bc], a                                    ; $4dc6: $02
    add hl, hl                                    ; $4dc7: $29
    ld a, [hl-]                                   ; $4dc8: $3a
    ld [bc], a                                    ; $4dc9: $02
    scf                                           ; $4dca: $37
    ld a, [hl-]                                   ; $4dcb: $3a
    ld [bc], a                                    ; $4dcc: $02
    ld d, l                                       ; $4dcd: $55
    ld a, [hl-]                                   ; $4dce: $3a
    ld [bc], a                                    ; $4dcf: $02
    ld a, e                                       ; $4dd0: $7b
    ld a, [hl-]                                   ; $4dd1: $3a
    ld [bc], a                                    ; $4dd2: $02
    adc a                                         ; $4dd3: $8f
    ld a, [hl-]                                   ; $4dd4: $3a
    ld [bc], a                                    ; $4dd5: $02
    sbc e                                         ; $4dd6: $9b
    ld a, [hl-]                                   ; $4dd7: $3a
    ld [bc], a                                    ; $4dd8: $02
    pop de                                        ; $4dd9: $d1
    ld a, [hl-]                                   ; $4dda: $3a
    ld [bc], a                                    ; $4ddb: $02
    ld [$023a], a                                 ; $4ddc: $ea $3a $02
    ld [de], a                                    ; $4ddf: $12
    dec sp                                        ; $4de0: $3b
    ld [bc], a                                    ; $4de1: $02
    dec l                                         ; $4de2: $2d
    dec sp                                        ; $4de3: $3b
    ld [bc], a                                    ; $4de4: $02
    ld h, d                                       ; $4de5: $62
    dec sp                                        ; $4de6: $3b
    ld [bc], a                                    ; $4de7: $02
    sub b                                         ; $4de8: $90
    dec sp                                        ; $4de9: $3b
    ld [bc], a                                    ; $4dea: $02
    xor a                                         ; $4deb: $af
    dec sp                                        ; $4dec: $3b
    ld [bc], a                                    ; $4ded: $02
    cp l                                          ; $4dee: $bd
    dec sp                                        ; $4def: $3b
    ld [bc], a                                    ; $4df0: $02
    ret z                                         ; $4df1: $c8

    dec sp                                        ; $4df2: $3b
    ld [bc], a                                    ; $4df3: $02
    call c, Call_000_023b                         ; $4df4: $dc $3b $02
    rst $38                                       ; $4df7: $ff
    dec sp                                        ; $4df8: $3b
    ld [bc], a                                    ; $4df9: $02
    ld [hl+], a                                   ; $4dfa: $22
    inc a                                         ; $4dfb: $3c
    ld [bc], a                                    ; $4dfc: $02
    jr z, jr_026_4e3b                             ; $4dfd: $28 $3c

    ld [bc], a                                    ; $4dff: $02
    ld c, e                                       ; $4e00: $4b
    inc a                                         ; $4e01: $3c
    ld [bc], a                                    ; $4e02: $02
    ld [hl], c                                    ; $4e03: $71
    inc a                                         ; $4e04: $3c
    ld [bc], a                                    ; $4e05: $02
    sbc b                                         ; $4e06: $98
    inc a                                         ; $4e07: $3c
    ld [bc], a                                    ; $4e08: $02
    push bc                                       ; $4e09: $c5
    inc a                                         ; $4e0a: $3c
    ld [bc], a                                    ; $4e0b: $02
    add sp, $3c                                   ; $4e0c: $e8 $3c
    ld [bc], a                                    ; $4e0e: $02
    db $10                                        ; $4e0f: $10
    dec a                                         ; $4e10: $3d
    ld [bc], a                                    ; $4e11: $02
    ld l, d                                       ; $4e12: $6a
    dec a                                         ; $4e13: $3d
    ld [bc], a                                    ; $4e14: $02
    sub l                                         ; $4e15: $95
    dec a                                         ; $4e16: $3d
    ld [bc], a                                    ; $4e17: $02
    or e                                          ; $4e18: $b3
    dec a                                         ; $4e19: $3d
    ld [bc], a                                    ; $4e1a: $02
    db $dd                                        ; $4e1b: $dd
    dec a                                         ; $4e1c: $3d
    ld [bc], a                                    ; $4e1d: $02
    ld a, [c]                                     ; $4e1e: $f2
    dec a                                         ; $4e1f: $3d
    ld [bc], a                                    ; $4e20: $02
    dec b                                         ; $4e21: $05
    ld a, $02                                     ; $4e22: $3e $02
    daa                                           ; $4e24: $27
    ld a, $02                                     ; $4e25: $3e $02
    ld b, [hl]                                    ; $4e27: $46
    ld a, $02                                     ; $4e28: $3e $02
    ld h, l                                       ; $4e2a: $65
    ld a, $02                                     ; $4e2b: $3e $02
    add l                                         ; $4e2d: $85
    ld a, $02                                     ; $4e2e: $3e $02
    and a                                         ; $4e30: $a7
    ld a, $02                                     ; $4e31: $3e $02
    push bc                                       ; $4e33: $c5
    ld a, $02                                     ; $4e34: $3e $02
    add hl, bc                                    ; $4e36: $09
    ccf                                           ; $4e37: $3f
    ld [bc], a                                    ; $4e38: $02
    jr nz, @+$41                                  ; $4e39: $20 $3f

jr_026_4e3b:
    ld [bc], a                                    ; $4e3b: $02
    ld sp, $023f                                  ; $4e3c: $31 $3f $02
    ld d, a                                       ; $4e3f: $57
    ccf                                           ; $4e40: $3f
    ld [bc], a                                    ; $4e41: $02
    and h                                         ; $4e42: $a4
    ccf                                           ; $4e43: $3f
    ld [bc], a                                    ; $4e44: $02
    db $d3                                        ; $4e45: $d3
    ccf                                           ; $4e46: $3f
    ld [bc], a                                    ; $4e47: $02
    db $eb                                        ; $4e48: $eb
    ccf                                           ; $4e49: $3f
    ld [bc], a                                    ; $4e4a: $02
    push af                                       ; $4e4b: $f5
    ccf                                           ; $4e4c: $3f
    inc bc                                        ; $4e4d: $03

Jump_026_4e4e:
    ld bc, $0300                                  ; $4e4e: $01 $00 $03
    dec e                                         ; $4e51: $1d
    nop                                           ; $4e52: $00
    inc bc                                        ; $4e53: $03
    ccf                                           ; $4e54: $3f
    nop                                           ; $4e55: $00
    inc bc                                        ; $4e56: $03
    ld c, h                                       ; $4e57: $4c
    nop                                           ; $4e58: $00
    inc bc                                        ; $4e59: $03
    ld h, d                                       ; $4e5a: $62
    nop                                           ; $4e5b: $00
    inc bc                                        ; $4e5c: $03
    ld a, c                                       ; $4e5d: $79
    nop                                           ; $4e5e: $00
    inc bc                                        ; $4e5f: $03
    sbc [hl]                                      ; $4e60: $9e
    nop                                           ; $4e61: $00
    inc bc                                        ; $4e62: $03
    or [hl]                                       ; $4e63: $b6
    nop                                           ; $4e64: $00
    inc bc                                        ; $4e65: $03
    db $ec                                        ; $4e66: $ec
    nop                                           ; $4e67: $00
    inc bc                                        ; $4e68: $03
    db $10                                        ; $4e69: $10
    ld bc, $2503                                  ; $4e6a: $01 $03 $25
    ld bc, $3c03                                  ; $4e6d: $01 $03 $3c
    ld bc, $4c03                                  ; $4e70: $01 $03 $4c
    ld bc, $6403                                  ; $4e73: $01 $03 $64
    ld bc, $7d03                                  ; $4e76: $01 $03 $7d
    ld bc, $8c03                                  ; $4e79: $01 $03 $8c
    ld bc, $ae03                                  ; $4e7c: $01 $03 $ae
    ld bc, $c303                                  ; $4e7f: $01 $03 $c3
    ld bc, $d503                                  ; $4e82: $01 $03 $d5
    ld bc, $e603                                  ; $4e85: $01 $03 $e6
    ld bc, $0103                                  ; $4e88: $01 $03 $01
    ld [bc], a                                    ; $4e8b: $02
    inc bc                                        ; $4e8c: $03
    ld de, $0302                                  ; $4e8d: $11 $02 $03
    inc l                                         ; $4e90: $2c
    ld [bc], a                                    ; $4e91: $02
    inc bc                                        ; $4e92: $03
    ld b, e                                       ; $4e93: $43
    ld [bc], a                                    ; $4e94: $02
    inc bc                                        ; $4e95: $03
    ld d, l                                       ; $4e96: $55
    ld [bc], a                                    ; $4e97: $02
    inc bc                                        ; $4e98: $03
    ld [hl], b                                    ; $4e99: $70
    ld [bc], a                                    ; $4e9a: $02
    inc bc                                        ; $4e9b: $03
    adc [hl]                                      ; $4e9c: $8e
    ld [bc], a                                    ; $4e9d: $02
    inc bc                                        ; $4e9e: $03
    xor a                                         ; $4e9f: $af
    ld [bc], a                                    ; $4ea0: $02
    inc bc                                        ; $4ea1: $03
    ret z                                         ; $4ea2: $c8

    ld [bc], a                                    ; $4ea3: $02
    inc bc                                        ; $4ea4: $03
    db $e4                                        ; $4ea5: $e4
    ld [bc], a                                    ; $4ea6: $02
    inc bc                                        ; $4ea7: $03
    rst $38                                       ; $4ea8: $ff
    ld [bc], a                                    ; $4ea9: $02
    inc bc                                        ; $4eaa: $03
    inc h                                         ; $4eab: $24

Jump_026_4eac:
    inc bc                                        ; $4eac: $03
    inc bc                                        ; $4ead: $03
    dec sp                                        ; $4eae: $3b
    inc bc                                        ; $4eaf: $03
    inc bc                                        ; $4eb0: $03
    ld d, e                                       ; $4eb1: $53
    inc bc                                        ; $4eb2: $03
    inc bc                                        ; $4eb3: $03
    add l                                         ; $4eb4: $85
    inc bc                                        ; $4eb5: $03
    inc bc                                        ; $4eb6: $03
    sbc l                                         ; $4eb7: $9d
    inc bc                                        ; $4eb8: $03
    inc bc                                        ; $4eb9: $03
    push bc                                       ; $4eba: $c5
    inc bc                                        ; $4ebb: $03
    inc bc                                        ; $4ebc: $03
    reti                                          ; $4ebd: $d9


    inc bc                                        ; $4ebe: $03
    inc bc                                        ; $4ebf: $03
    jp hl                                         ; $4ec0: $e9


    inc bc                                        ; $4ec1: $03
    inc bc                                        ; $4ec2: $03
    ld [$0304], sp                                ; $4ec3: $08 $04 $03
    inc l                                         ; $4ec6: $2c
    inc b                                         ; $4ec7: $04
    inc bc                                        ; $4ec8: $03
    ld b, d                                       ; $4ec9: $42
    inc b                                         ; $4eca: $04
    inc bc                                        ; $4ecb: $03
    ld [hl], b                                    ; $4ecc: $70
    inc b                                         ; $4ecd: $04
    inc bc                                        ; $4ece: $03
    sub d                                         ; $4ecf: $92
    inc b                                         ; $4ed0: $04
    inc bc                                        ; $4ed1: $03
    cp e                                          ; $4ed2: $bb
    inc b                                         ; $4ed3: $04
    inc bc                                        ; $4ed4: $03
    rst $18                                       ; $4ed5: $df
    inc b                                         ; $4ed6: $04
    inc bc                                        ; $4ed7: $03
    di                                            ; $4ed8: $f3
    inc b                                         ; $4ed9: $04
    inc bc                                        ; $4eda: $03
    inc d                                         ; $4edb: $14
    dec b                                         ; $4edc: $05
    inc bc                                        ; $4edd: $03
    inc hl                                        ; $4ede: $23
    dec b                                         ; $4edf: $05
    inc bc                                        ; $4ee0: $03
    scf                                           ; $4ee1: $37
    dec b                                         ; $4ee2: $05
    inc bc                                        ; $4ee3: $03
    inc a                                         ; $4ee4: $3c
    dec b                                         ; $4ee5: $05
    inc bc                                        ; $4ee6: $03
    ld c, b                                       ; $4ee7: $48
    dec b                                         ; $4ee8: $05
    inc bc                                        ; $4ee9: $03
    ld d, d                                       ; $4eea: $52
    dec b                                         ; $4eeb: $05
    inc bc                                        ; $4eec: $03
    sbc [hl]                                      ; $4eed: $9e
    dec b                                         ; $4eee: $05
    inc bc                                        ; $4eef: $03
    pop bc                                        ; $4ef0: $c1
    dec b                                         ; $4ef1: $05
    inc bc                                        ; $4ef2: $03
    pop hl                                        ; $4ef3: $e1
    dec b                                         ; $4ef4: $05
    inc bc                                        ; $4ef5: $03
    ld a, [$0305]                                 ; $4ef6: $fa $05 $03
    jr z, @+$08                                   ; $4ef9: $28 $06

    inc bc                                        ; $4efb: $03
    ld b, d                                       ; $4efc: $42
    ld b, $03                                     ; $4efd: $06 $03
    ld e, d                                       ; $4eff: $5a
    ld b, $03                                     ; $4f00: $06 $03
    ld h, h                                       ; $4f02: $64
    ld b, $03                                     ; $4f03: $06 $03
    add [hl]                                      ; $4f05: $86
    ld b, $03                                     ; $4f06: $06 $03
    xor h                                         ; $4f08: $ac
    ld b, $03                                     ; $4f09: $06 $03
    call nz, Call_000_0306                        ; $4f0b: $c4 $06 $03
    ld [$0306], a                                 ; $4f0e: $ea $06 $03
    ei                                            ; $4f11: $fb
    ld b, $03                                     ; $4f12: $06 $03
    dec h                                         ; $4f14: $25
    rlca                                          ; $4f15: $07
    inc bc                                        ; $4f16: $03
    ld [hl], $07                                  ; $4f17: $36 $07
    inc bc                                        ; $4f19: $03
    ld e, b                                       ; $4f1a: $58
    rlca                                          ; $4f1b: $07
    inc bc                                        ; $4f1c: $03
    ld l, l                                       ; $4f1d: $6d
    rlca                                          ; $4f1e: $07
    inc bc                                        ; $4f1f: $03
    sbc e                                         ; $4f20: $9b
    rlca                                          ; $4f21: $07
    inc bc                                        ; $4f22: $03
    add $07                                       ; $4f23: $c6 $07
    inc bc                                        ; $4f25: $03
    call $0307                                    ; $4f26: $cd $07 $03
    sub $07                                       ; $4f29: $d6 $07
    inc bc                                        ; $4f2b: $03
    ld sp, hl                                     ; $4f2c: $f9
    rlca                                          ; $4f2d: $07
    inc bc                                        ; $4f2e: $03
    dec b                                         ; $4f2f: $05
    ld [$0e03], sp                                ; $4f30: $08 $03 $0e
    ld [$3203], sp                                ; $4f33: $08 $03 $32
    ld [$6a03], sp                                ; $4f36: $08 $03 $6a
    ld [$7803], sp                                ; $4f39: $08 $03 $78
    ld [$aa03], sp                                ; $4f3c: $08 $03 $aa
    ld [$c103], sp                                ; $4f3f: $08 $03 $c1
    ld [$ea03], sp                                ; $4f42: $08 $03 $ea
    ld [$f603], sp                                ; $4f45: $08 $03 $f6
    ld [$7f03], sp                                ; $4f48: $08 $03 $7f
    add hl, bc                                    ; $4f4b: $09
    inc bc                                        ; $4f4c: $03
    adc [hl]                                      ; $4f4d: $8e
    add hl, bc                                    ; $4f4e: $09
    inc bc                                        ; $4f4f: $03
    cp l                                          ; $4f50: $bd
    add hl, bc                                    ; $4f51: $09
    inc bc                                        ; $4f52: $03
    rrca                                          ; $4f53: $0f
    ld a, [bc]                                    ; $4f54: $0a
    inc bc                                        ; $4f55: $03
    ld [hl-], a                                   ; $4f56: $32
    ld a, [bc]                                    ; $4f57: $0a
    inc bc                                        ; $4f58: $03
    ld c, e                                       ; $4f59: $4b
    ld a, [bc]                                    ; $4f5a: $0a
    inc bc                                        ; $4f5b: $03
    ld l, h                                       ; $4f5c: $6c
    ld a, [bc]                                    ; $4f5d: $0a
    inc bc                                        ; $4f5e: $03
    sub h                                         ; $4f5f: $94
    ld a, [bc]                                    ; $4f60: $0a
    inc bc                                        ; $4f61: $03
    push bc                                       ; $4f62: $c5
    ld a, [bc]                                    ; $4f63: $0a
    inc bc                                        ; $4f64: $03
    push af                                       ; $4f65: $f5
    ld a, [bc]                                    ; $4f66: $0a
    inc bc                                        ; $4f67: $03
    dec c                                         ; $4f68: $0d
    dec bc                                        ; $4f69: $0b
    inc bc                                        ; $4f6a: $03
    ld a, $0b                                     ; $4f6b: $3e $0b
    inc bc                                        ; $4f6d: $03
    ld d, l                                       ; $4f6e: $55
    dec bc                                        ; $4f6f: $0b
    inc bc                                        ; $4f70: $03
    ld [hl], b                                    ; $4f71: $70
    dec bc                                        ; $4f72: $0b
    inc bc                                        ; $4f73: $03
    cp e                                          ; $4f74: $bb

Call_026_4f75:
    dec bc                                        ; $4f75: $0b
    inc bc                                        ; $4f76: $03
    rst $30                                       ; $4f77: $f7
    dec bc                                        ; $4f78: $0b
    inc bc                                        ; $4f79: $03
    inc b                                         ; $4f7a: $04
    inc c                                         ; $4f7b: $0c
    inc bc                                        ; $4f7c: $03
    jr nz, jr_026_4f8b                            ; $4f7d: $20 $0c

    inc bc                                        ; $4f7f: $03
    add hl, sp                                    ; $4f80: $39
    inc c                                         ; $4f81: $0c
    inc bc                                        ; $4f82: $03
    ld a, $0c                                     ; $4f83: $3e $0c
    inc bc                                        ; $4f85: $03
    ld d, [hl]                                    ; $4f86: $56
    inc c                                         ; $4f87: $0c
    inc bc                                        ; $4f88: $03
    ld a, c                                       ; $4f89: $79
    inc c                                         ; $4f8a: $0c

jr_026_4f8b:
    inc bc                                        ; $4f8b: $03
    ld d, c                                       ; $4f8c: $51
    dec c                                         ; $4f8d: $0d
    inc bc                                        ; $4f8e: $03
    ld d, [hl]                                    ; $4f8f: $56
    dec c                                         ; $4f90: $0d
    inc bc                                        ; $4f91: $03
    ld h, h                                       ; $4f92: $64
    dec c                                         ; $4f93: $0d
    inc bc                                        ; $4f94: $03
    halt                                          ; $4f95: $76
    dec c                                         ; $4f96: $0d
    inc bc                                        ; $4f97: $03
    and a                                         ; $4f98: $a7
    dec c                                         ; $4f99: $0d
    inc bc                                        ; $4f9a: $03
    pop bc                                        ; $4f9b: $c1
    dec c                                         ; $4f9c: $0d
    inc bc                                        ; $4f9d: $03
    ld a, [c]                                     ; $4f9e: $f2
    dec c                                         ; $4f9f: $0d
    inc bc                                        ; $4fa0: $03
    ld d, $0e                                     ; $4fa1: $16 $0e
    inc bc                                        ; $4fa3: $03
    ld a, [hl-]                                   ; $4fa4: $3a
    ld c, $03                                     ; $4fa5: $0e $03
    ld c, h                                       ; $4fa7: $4c
    ld c, $03                                     ; $4fa8: $0e $03
    ld d, e                                       ; $4faa: $53
    ld c, $03                                     ; $4fab: $0e $03
    ld l, h                                       ; $4fad: $6c
    ld c, $03                                     ; $4fae: $0e $03
    ret z                                         ; $4fb0: $c8

    ld c, $03                                     ; $4fb1: $0e $03
    pop hl                                        ; $4fb3: $e1
    ld c, $03                                     ; $4fb4: $0e $03
    ld c, c                                       ; $4fb6: $49
    rrca                                          ; $4fb7: $0f
    inc bc                                        ; $4fb8: $03
    sub a                                         ; $4fb9: $97
    rrca                                          ; $4fba: $0f
    inc bc                                        ; $4fbb: $03
    or $0f                                        ; $4fbc: $f6 $0f
    inc bc                                        ; $4fbe: $03
    ld c, c                                       ; $4fbf: $49
    db $10                                        ; $4fc0: $10
    inc bc                                        ; $4fc1: $03
    and b                                         ; $4fc2: $a0
    db $10                                        ; $4fc3: $10
    inc bc                                        ; $4fc4: $03
    ret nc                                        ; $4fc5: $d0

    db $10                                        ; $4fc6: $10
    inc bc                                        ; $4fc7: $03
    dec bc                                        ; $4fc8: $0b
    ld de, $3a03                                  ; $4fc9: $11 $03 $3a
    ld de, $8f03                                  ; $4fcc: $11 $03 $8f
    ld de, $9b03                                  ; $4fcf: $11 $03 $9b
    ld de, $a103                                  ; $4fd2: $11 $03 $a1
    ld de, $ae03                                  ; $4fd5: $11 $03 $ae
    ld de, $c903                                  ; $4fd8: $11 $03 $c9
    ld de, $dc03                                  ; $4fdb: $11 $03 $dc
    ld de, $ee03                                  ; $4fde: $11 $03 $ee
    ld de, $fa03                                  ; $4fe1: $11 $03 $fa
    ld de, $1a03                                  ; $4fe4: $11 $03 $1a
    ld [de], a                                    ; $4fe7: $12
    inc bc                                        ; $4fe8: $03
    add hl, hl                                    ; $4fe9: $29
    ld [de], a                                    ; $4fea: $12
    inc bc                                        ; $4feb: $03
    inc a                                         ; $4fec: $3c
    ld [de], a                                    ; $4fed: $12
    inc bc                                        ; $4fee: $03
    ld [hl], b                                    ; $4fef: $70
    ld [de], a                                    ; $4ff0: $12
    inc bc                                        ; $4ff1: $03
    add e                                         ; $4ff2: $83
    ld [de], a                                    ; $4ff3: $12
    inc bc                                        ; $4ff4: $03
    sbc b                                         ; $4ff5: $98
    ld [de], a                                    ; $4ff6: $12
    inc bc                                        ; $4ff7: $03
    and d                                         ; $4ff8: $a2
    ld [de], a                                    ; $4ff9: $12
    inc bc                                        ; $4ffa: $03
    cp d                                          ; $4ffb: $ba
    ld [de], a                                    ; $4ffc: $12
    inc bc                                        ; $4ffd: $03
    db $ed                                        ; $4ffe: $ed
    ld [de], a                                    ; $4fff: $12
    inc bc                                        ; $5000: $03
    rlca                                          ; $5001: $07
    inc de                                        ; $5002: $13
    inc bc                                        ; $5003: $03
    ld l, $13                                     ; $5004: $2e $13
    inc bc                                        ; $5006: $03
    ld c, d                                       ; $5007: $4a
    inc de                                        ; $5008: $13
    inc bc                                        ; $5009: $03
    sub [hl]                                      ; $500a: $96
    inc de                                        ; $500b: $13
    inc bc                                        ; $500c: $03
    or l                                          ; $500d: $b5
    inc de                                        ; $500e: $13
    inc bc                                        ; $500f: $03
    reti                                          ; $5010: $d9


    inc de                                        ; $5011: $13
    inc bc                                        ; $5012: $03
    ld sp, hl                                     ; $5013: $f9
    inc de                                        ; $5014: $13
    inc bc                                        ; $5015: $03
    rra                                           ; $5016: $1f
    inc d                                         ; $5017: $14
    inc bc                                        ; $5018: $03
    inc [hl]                                      ; $5019: $34
    inc d                                         ; $501a: $14
    inc bc                                        ; $501b: $03
    dec a                                         ; $501c: $3d
    inc d                                         ; $501d: $14
    inc bc                                        ; $501e: $03
    ld e, a                                       ; $501f: $5f
    inc d                                         ; $5020: $14
    inc bc                                        ; $5021: $03
    ld l, b                                       ; $5022: $68
    inc d                                         ; $5023: $14
    inc bc                                        ; $5024: $03
    ld a, e                                       ; $5025: $7b
    inc d                                         ; $5026: $14
    inc bc                                        ; $5027: $03
    adc l                                         ; $5028: $8d
    inc d                                         ; $5029: $14
    inc bc                                        ; $502a: $03
    sbc [hl]                                      ; $502b: $9e
    inc d                                         ; $502c: $14
    inc bc                                        ; $502d: $03
    xor l                                         ; $502e: $ad
    inc d                                         ; $502f: $14
    inc bc                                        ; $5030: $03
    cp h                                          ; $5031: $bc
    inc d                                         ; $5032: $14
    inc bc                                        ; $5033: $03
    push bc                                       ; $5034: $c5
    inc d                                         ; $5035: $14
    inc bc                                        ; $5036: $03
    sub $14                                       ; $5037: $d6 $14
    inc bc                                        ; $5039: $03
    pop hl                                        ; $503a: $e1
    inc d                                         ; $503b: $14
    inc bc                                        ; $503c: $03
    push hl                                       ; $503d: $e5
    inc d                                         ; $503e: $14
    inc bc                                        ; $503f: $03
    push af                                       ; $5040: $f5
    inc d                                         ; $5041: $14
    inc bc                                        ; $5042: $03
    db $fd                                        ; $5043: $fd
    inc d                                         ; $5044: $14
    inc bc                                        ; $5045: $03
    ld [$0315], sp                                ; $5046: $08 $15 $03
    rrca                                          ; $5049: $0f
    dec d                                         ; $504a: $15
    inc bc                                        ; $504b: $03
    inc d                                         ; $504c: $14
    dec d                                         ; $504d: $15
    inc bc                                        ; $504e: $03
    inc e                                         ; $504f: $1c
    dec d                                         ; $5050: $15
    inc bc                                        ; $5051: $03
    inc h                                         ; $5052: $24
    dec d                                         ; $5053: $15
    inc bc                                        ; $5054: $03
    ld a, [hl+]                                   ; $5055: $2a
    dec d                                         ; $5056: $15
    inc bc                                        ; $5057: $03
    cpl                                           ; $5058: $2f
    dec d                                         ; $5059: $15
    inc bc                                        ; $505a: $03
    inc [hl]                                      ; $505b: $34
    dec d                                         ; $505c: $15
    inc bc                                        ; $505d: $03
    ld a, [hl-]                                   ; $505e: $3a
    dec d                                         ; $505f: $15
    inc bc                                        ; $5060: $03
    ld b, b                                       ; $5061: $40
    dec d                                         ; $5062: $15
    inc bc                                        ; $5063: $03
    ld b, [hl]                                    ; $5064: $46
    dec d                                         ; $5065: $15
    inc bc                                        ; $5066: $03
    ld c, l                                       ; $5067: $4d
    dec d                                         ; $5068: $15
    inc bc                                        ; $5069: $03
    ld d, l                                       ; $506a: $55
    dec d                                         ; $506b: $15
    inc bc                                        ; $506c: $03
    ld e, l                                       ; $506d: $5d
    dec d                                         ; $506e: $15
    inc bc                                        ; $506f: $03
    ld l, d                                       ; $5070: $6a
    dec d                                         ; $5071: $15
    inc bc                                        ; $5072: $03
    halt                                          ; $5073: $76
    dec d                                         ; $5074: $15
    inc bc                                        ; $5075: $03
    add c                                         ; $5076: $81
    dec d                                         ; $5077: $15
    inc bc                                        ; $5078: $03
    adc l                                         ; $5079: $8d
    dec d                                         ; $507a: $15
    inc bc                                        ; $507b: $03
    sub a                                         ; $507c: $97
    dec d                                         ; $507d: $15
    inc bc                                        ; $507e: $03
    and d                                         ; $507f: $a2
    dec d                                         ; $5080: $15
    inc bc                                        ; $5081: $03
    xor [hl]                                      ; $5082: $ae
    dec d                                         ; $5083: $15
    inc bc                                        ; $5084: $03
    cp c                                          ; $5085: $b9
    dec d                                         ; $5086: $15
    inc bc                                        ; $5087: $03
    pop bc                                        ; $5088: $c1
    dec d                                         ; $5089: $15
    inc bc                                        ; $508a: $03
    adc $15                                       ; $508b: $ce $15
    inc bc                                        ; $508d: $03
    push de                                       ; $508e: $d5
    dec d                                         ; $508f: $15
    inc bc                                        ; $5090: $03
    ldh [$15], a                                  ; $5091: $e0 $15
    inc bc                                        ; $5093: $03
    jp hl                                         ; $5094: $e9


    dec d                                         ; $5095: $15
    inc bc                                        ; $5096: $03
    ld a, [c]                                     ; $5097: $f2
    dec d                                         ; $5098: $15
    inc bc                                        ; $5099: $03
    cp $15                                        ; $509a: $fe $15
    inc bc                                        ; $509c: $03
    add hl, bc                                    ; $509d: $09
    ld d, $03                                     ; $509e: $16 $03
    ld [de], a                                    ; $50a0: $12
    ld d, $03                                     ; $50a1: $16 $03
    rra                                           ; $50a3: $1f
    ld d, $03                                     ; $50a4: $16 $03
    dec l                                         ; $50a6: $2d
    ld d, $03                                     ; $50a7: $16 $03
    scf                                           ; $50a9: $37
    ld d, $03                                     ; $50aa: $16 $03
    ld b, d                                       ; $50ac: $42
    ld d, $03                                     ; $50ad: $16 $03
    ld c, [hl]                                    ; $50af: $4e
    ld d, $03                                     ; $50b0: $16 $03
    ld d, a                                       ; $50b2: $57
    ld d, $03                                     ; $50b3: $16 $03
    ld h, d                                       ; $50b5: $62
    ld d, $03                                     ; $50b6: $16 $03
    ld l, e                                       ; $50b8: $6b
    ld d, $03                                     ; $50b9: $16 $03
    ld [hl], l                                    ; $50bb: $75
    ld d, $03                                     ; $50bc: $16 $03
    ld a, [hl]                                    ; $50be: $7e
    ld d, $03                                     ; $50bf: $16 $03
    add a                                         ; $50c1: $87
    ld d, $03                                     ; $50c2: $16 $03
    sub e                                         ; $50c4: $93
    ld d, $03                                     ; $50c5: $16 $03
    sbc e                                         ; $50c7: $9b
    ld d, $03                                     ; $50c8: $16 $03
    and l                                         ; $50ca: $a5
    ld d, $03                                     ; $50cb: $16 $03
    xor [hl]                                      ; $50cd: $ae
    ld d, $03                                     ; $50ce: $16 $03
    cp d                                          ; $50d0: $ba
    ld d, $03                                     ; $50d1: $16 $03
    call nz, Call_000_0316                        ; $50d3: $c4 $16 $03
    adc $16                                       ; $50d6: $ce $16
    inc bc                                        ; $50d8: $03
    db $db                                        ; $50d9: $db
    ld d, $03                                     ; $50da: $16 $03
    db $e3                                        ; $50dc: $e3
    ld d, $03                                     ; $50dd: $16 $03
    ld [$0316], a                                 ; $50df: $ea $16 $03
    ld hl, sp+$16                                 ; $50e2: $f8 $16
    inc bc                                        ; $50e4: $03
    dec b                                         ; $50e5: $05
    rla                                           ; $50e6: $17
    inc bc                                        ; $50e7: $03
    inc c                                         ; $50e8: $0c
    rla                                           ; $50e9: $17
    inc bc                                        ; $50ea: $03
    inc de                                        ; $50eb: $13
    rla                                           ; $50ec: $17
    inc bc                                        ; $50ed: $03
    add hl, de                                    ; $50ee: $19
    rla                                           ; $50ef: $17
    inc bc                                        ; $50f0: $03
    dec h                                         ; $50f1: $25
    rla                                           ; $50f2: $17
    inc bc                                        ; $50f3: $03
    dec [hl]                                      ; $50f4: $35
    rla                                           ; $50f5: $17
    inc bc                                        ; $50f6: $03
    ld b, b                                       ; $50f7: $40
    rla                                           ; $50f8: $17
    inc bc                                        ; $50f9: $03
    ld c, e                                       ; $50fa: $4b
    rla                                           ; $50fb: $17
    inc bc                                        ; $50fc: $03
    ld d, a                                       ; $50fd: $57
    rla                                           ; $50fe: $17
    inc bc                                        ; $50ff: $03
    ld h, a                                       ; $5100: $67
    rla                                           ; $5101: $17
    inc bc                                        ; $5102: $03
    ld [hl], c                                    ; $5103: $71
    rla                                           ; $5104: $17
    inc bc                                        ; $5105: $03
    ld a, a                                       ; $5106: $7f
    rla                                           ; $5107: $17
    inc bc                                        ; $5108: $03
    adc d                                         ; $5109: $8a
    rla                                           ; $510a: $17
    inc bc                                        ; $510b: $03
    sub h                                         ; $510c: $94
    rla                                           ; $510d: $17
    inc bc                                        ; $510e: $03
    sbc a                                         ; $510f: $9f
    rla                                           ; $5110: $17
    inc bc                                        ; $5111: $03
    xor [hl]                                      ; $5112: $ae
    rla                                           ; $5113: $17
    inc bc                                        ; $5114: $03
    or l                                          ; $5115: $b5
    rla                                           ; $5116: $17
    inc bc                                        ; $5117: $03
    cp [hl]                                       ; $5118: $be
    rla                                           ; $5119: $17
    inc bc                                        ; $511a: $03
    ret                                           ; $511b: $c9


    rla                                           ; $511c: $17
    inc bc                                        ; $511d: $03
    pop de                                        ; $511e: $d1
    rla                                           ; $511f: $17
    inc bc                                        ; $5120: $03
    ret c                                         ; $5121: $d8

    rla                                           ; $5122: $17
    inc bc                                        ; $5123: $03
    ldh [rNR22], a                                ; $5124: $e0 $17
    inc bc                                        ; $5126: $03
    jp hl                                         ; $5127: $e9


    rla                                           ; $5128: $17
    inc bc                                        ; $5129: $03
    di                                            ; $512a: $f3
    rla                                           ; $512b: $17
    inc bc                                        ; $512c: $03
    db $fc                                        ; $512d: $fc
    rla                                           ; $512e: $17
    inc bc                                        ; $512f: $03
    dec b                                         ; $5130: $05
    jr jr_026_5136                                ; $5131: $18 $03

    db $10                                        ; $5133: $10
    jr jr_026_5139                                ; $5134: $18 $03

jr_026_5136:
    ld a, [de]                                    ; $5136: $1a
    jr jr_026_513c                                ; $5137: $18 $03

jr_026_5139:
    ld hl, $0318                                  ; $5139: $21 $18 $03

jr_026_513c:
    ld a, [hl+]                                   ; $513c: $2a
    jr jr_026_5142                                ; $513d: $18 $03

    jr nc, @+$1a                                  ; $513f: $30 $18

    inc bc                                        ; $5141: $03

jr_026_5142:
    ld [hl], $18                                  ; $5142: $36 $18
    inc bc                                        ; $5144: $03
    ccf                                           ; $5145: $3f
    jr jr_026_514b                                ; $5146: $18 $03

    ld c, c                                       ; $5148: $49
    jr jr_026_514e                                ; $5149: $18 $03

jr_026_514b:
    ld d, l                                       ; $514b: $55
    jr jr_026_5151                                ; $514c: $18 $03

jr_026_514e:
    ld e, a                                       ; $514e: $5f
    jr jr_026_5154                                ; $514f: $18 $03

jr_026_5151:
    ld l, c                                       ; $5151: $69
    jr jr_026_5157                                ; $5152: $18 $03

jr_026_5154:
    ld [hl], c                                    ; $5154: $71
    jr jr_026_515a                                ; $5155: $18 $03

jr_026_5157:
    ld a, c                                       ; $5157: $79
    jr jr_026_515d                                ; $5158: $18 $03

jr_026_515a:
    add d                                         ; $515a: $82
    jr jr_026_5160                                ; $515b: $18 $03

jr_026_515d:
    adc a                                         ; $515d: $8f
    jr jr_026_5163                                ; $515e: $18 $03

jr_026_5160:
    sub [hl]                                      ; $5160: $96
    jr jr_026_5166                                ; $5161: $18 $03

jr_026_5163:
    sbc h                                         ; $5163: $9c
    jr jr_026_5169                                ; $5164: $18 $03

jr_026_5166:
    xor d                                         ; $5166: $aa
    jr jr_026_516c                                ; $5167: $18 $03

jr_026_5169:
    or l                                          ; $5169: $b5
    jr jr_026_516f                                ; $516a: $18 $03

jr_026_516c:
    pop bc                                        ; $516c: $c1
    jr jr_026_5172                                ; $516d: $18 $03

jr_026_516f:
    call z, $0318                                 ; $516f: $cc $18 $03

jr_026_5172:
    sub $18                                       ; $5172: $d6 $18
    inc bc                                        ; $5174: $03
    ldh [rNR23], a                                ; $5175: $e0 $18
    inc bc                                        ; $5177: $03
    db $eb                                        ; $5178: $eb
    jr jr_026_517e                                ; $5179: $18 $03

    rst $30                                       ; $517b: $f7
    jr jr_026_5181                                ; $517c: $18 $03

jr_026_517e:
    ld bc, $0319                                  ; $517e: $01 $19 $03

jr_026_5181:
    rlca                                          ; $5181: $07
    add hl, de                                    ; $5182: $19
    inc bc                                        ; $5183: $03
    dec bc                                        ; $5184: $0b
    add hl, de                                    ; $5185: $19
    inc bc                                        ; $5186: $03
    ld [de], a                                    ; $5187: $12
    add hl, de                                    ; $5188: $19
    inc bc                                        ; $5189: $03
    dec e                                         ; $518a: $1d
    add hl, de                                    ; $518b: $19
    inc bc                                        ; $518c: $03
    daa                                           ; $518d: $27
    add hl, de                                    ; $518e: $19
    inc bc                                        ; $518f: $03
    ld sp, $0319                                  ; $5190: $31 $19 $03
    inc a                                         ; $5193: $3c
    add hl, de                                    ; $5194: $19
    inc bc                                        ; $5195: $03
    ld c, h                                       ; $5196: $4c
    add hl, de                                    ; $5197: $19
    inc bc                                        ; $5198: $03
    ld e, b                                       ; $5199: $58
    add hl, de                                    ; $519a: $19
    inc bc                                        ; $519b: $03
    ld h, h                                       ; $519c: $64
    add hl, de                                    ; $519d: $19
    inc bc                                        ; $519e: $03
    ld [hl], b                                    ; $519f: $70
    add hl, de                                    ; $51a0: $19
    inc bc                                        ; $51a1: $03
    ld a, h                                       ; $51a2: $7c
    add hl, de                                    ; $51a3: $19
    inc bc                                        ; $51a4: $03
    adc c                                         ; $51a5: $89
    add hl, de                                    ; $51a6: $19
    inc bc                                        ; $51a7: $03
    sub c                                         ; $51a8: $91
    add hl, de                                    ; $51a9: $19
    inc bc                                        ; $51aa: $03
    and c                                         ; $51ab: $a1
    add hl, de                                    ; $51ac: $19
    inc bc                                        ; $51ad: $03
    and [hl]                                      ; $51ae: $a6
    add hl, de                                    ; $51af: $19
    inc bc                                        ; $51b0: $03
    xor [hl]                                      ; $51b1: $ae
    add hl, de                                    ; $51b2: $19
    inc bc                                        ; $51b3: $03
    or h                                          ; $51b4: $b4
    add hl, de                                    ; $51b5: $19
    inc bc                                        ; $51b6: $03
    cp a                                          ; $51b7: $bf
    add hl, de                                    ; $51b8: $19
    inc bc                                        ; $51b9: $03
    adc $19                                       ; $51ba: $ce $19
    inc bc                                        ; $51bc: $03
    reti                                          ; $51bd: $d9


    add hl, de                                    ; $51be: $19
    inc bc                                        ; $51bf: $03
    push hl                                       ; $51c0: $e5
    add hl, de                                    ; $51c1: $19
    inc bc                                        ; $51c2: $03
    ld a, [$0319]                                 ; $51c3: $fa $19 $03
    inc b                                         ; $51c6: $04
    ld a, [de]                                    ; $51c7: $1a
    inc bc                                        ; $51c8: $03
    add hl, bc                                    ; $51c9: $09
    ld a, [de]                                    ; $51ca: $1a
    inc bc                                        ; $51cb: $03
    dec d                                         ; $51cc: $15
    ld a, [de]                                    ; $51cd: $1a
    inc bc                                        ; $51ce: $03
    inc hl                                        ; $51cf: $23
    ld a, [de]                                    ; $51d0: $1a
    inc bc                                        ; $51d1: $03
    inc [hl]                                      ; $51d2: $34
    ld a, [de]                                    ; $51d3: $1a
    inc bc                                        ; $51d4: $03
    ld c, h                                       ; $51d5: $4c
    ld a, [de]                                    ; $51d6: $1a
    inc bc                                        ; $51d7: $03
    ld h, c                                       ; $51d8: $61
    ld a, [de]                                    ; $51d9: $1a
    inc bc                                        ; $51da: $03
    ld a, [hl]                                    ; $51db: $7e
    ld a, [de]                                    ; $51dc: $1a
    inc bc                                        ; $51dd: $03
    sbc l                                         ; $51de: $9d
    ld a, [de]                                    ; $51df: $1a
    inc bc                                        ; $51e0: $03
    cp a                                          ; $51e1: $bf
    ld a, [de]                                    ; $51e2: $1a
    inc bc                                        ; $51e3: $03
    rst $10                                       ; $51e4: $d7
    ld a, [de]                                    ; $51e5: $1a
    inc bc                                        ; $51e6: $03
    db $ed                                        ; $51e7: $ed
    ld a, [de]                                    ; $51e8: $1a
    inc bc                                        ; $51e9: $03
    inc bc                                        ; $51ea: $03
    dec de                                        ; $51eb: $1b
    inc bc                                        ; $51ec: $03
    ld b, $1b                                     ; $51ed: $06 $1b
    inc bc                                        ; $51ef: $03
    add hl, bc                                    ; $51f0: $09
    dec de                                        ; $51f1: $1b
    inc bc                                        ; $51f2: $03
    db $10                                        ; $51f3: $10
    dec de                                        ; $51f4: $1b
    inc bc                                        ; $51f5: $03
    inc de                                        ; $51f6: $13
    dec de                                        ; $51f7: $1b
    inc bc                                        ; $51f8: $03
    rla                                           ; $51f9: $17
    dec de                                        ; $51fa: $1b
    inc bc                                        ; $51fb: $03
    dec de                                        ; $51fc: $1b
    dec de                                        ; $51fd: $1b
    inc bc                                        ; $51fe: $03
    jr nz, jr_026_521c                            ; $51ff: $20 $1b

    inc bc                                        ; $5201: $03
    inc l                                         ; $5202: $2c
    dec de                                        ; $5203: $1b
    inc bc                                        ; $5204: $03
    ccf                                           ; $5205: $3f
    dec de                                        ; $5206: $1b
    inc bc                                        ; $5207: $03
    ld e, e                                       ; $5208: $5b
    dec de                                        ; $5209: $1b
    inc bc                                        ; $520a: $03
    ld l, c                                       ; $520b: $69
    dec de                                        ; $520c: $1b
    inc bc                                        ; $520d: $03
    ld a, a                                       ; $520e: $7f
    dec de                                        ; $520f: $1b
    inc bc                                        ; $5210: $03
    adc a                                         ; $5211: $8f
    dec de                                        ; $5212: $1b
    inc bc                                        ; $5213: $03
    and e                                         ; $5214: $a3
    dec de                                        ; $5215: $1b
    inc bc                                        ; $5216: $03
    cp h                                          ; $5217: $bc
    dec de                                        ; $5218: $1b
    inc bc                                        ; $5219: $03
    ret z                                         ; $521a: $c8

    dec de                                        ; $521b: $1b

jr_026_521c:
    inc bc                                        ; $521c: $03
    pop hl                                        ; $521d: $e1
    dec de                                        ; $521e: $1b
    inc bc                                        ; $521f: $03
    pop af                                        ; $5220: $f1
    dec de                                        ; $5221: $1b
    inc bc                                        ; $5222: $03
    rlca                                          ; $5223: $07
    inc e                                         ; $5224: $1c
    inc bc                                        ; $5225: $03
    rla                                           ; $5226: $17
    inc e                                         ; $5227: $1c
    inc bc                                        ; $5228: $03
    dec l                                         ; $5229: $2d
    inc e                                         ; $522a: $1c
    inc bc                                        ; $522b: $03
    ld b, l                                       ; $522c: $45
    inc e                                         ; $522d: $1c
    inc bc                                        ; $522e: $03
    ld h, d                                       ; $522f: $62
    inc e                                         ; $5230: $1c
    inc bc                                        ; $5231: $03
    ld [hl], l                                    ; $5232: $75
    inc e                                         ; $5233: $1c
    inc bc                                        ; $5234: $03
    adc l                                         ; $5235: $8d
    inc e                                         ; $5236: $1c
    inc bc                                        ; $5237: $03
    sub a                                         ; $5238: $97
    inc e                                         ; $5239: $1c
    inc bc                                        ; $523a: $03
    xor h                                         ; $523b: $ac
    inc e                                         ; $523c: $1c
    inc bc                                        ; $523d: $03
    cp c                                          ; $523e: $b9
    inc e                                         ; $523f: $1c
    inc bc                                        ; $5240: $03
    jp nc, Jump_000_031c                          ; $5241: $d2 $1c $03

    ld a, [c]                                     ; $5244: $f2
    inc e                                         ; $5245: $1c
    inc bc                                        ; $5246: $03
    ld [bc], a                                    ; $5247: $02
    dec e                                         ; $5248: $1d
    inc bc                                        ; $5249: $03
    ld a, [de]                                    ; $524a: $1a
    dec e                                         ; $524b: $1d
    inc bc                                        ; $524c: $03
    inc sp                                        ; $524d: $33
    dec e                                         ; $524e: $1d
    inc bc                                        ; $524f: $03
    ld a, $1d                                     ; $5250: $3e $1d
    inc bc                                        ; $5252: $03
    ld d, h                                       ; $5253: $54
    dec e                                         ; $5254: $1d
    inc bc                                        ; $5255: $03
    ld h, h                                       ; $5256: $64
    dec e                                         ; $5257: $1d
    inc bc                                        ; $5258: $03
    add [hl]                                      ; $5259: $86
    dec e                                         ; $525a: $1d
    inc bc                                        ; $525b: $03
    sub c                                         ; $525c: $91
    dec e                                         ; $525d: $1d
    inc bc                                        ; $525e: $03
    or d                                          ; $525f: $b2
    dec e                                         ; $5260: $1d
    inc bc                                        ; $5261: $03
    call $031d                                    ; $5262: $cd $1d $03
    jp hl                                         ; $5265: $e9


    dec e                                         ; $5266: $1d
    inc bc                                        ; $5267: $03
    rlca                                          ; $5268: $07
    ld e, $03                                     ; $5269: $1e $03
    ld e, $1e                                     ; $526b: $1e $1e
    inc bc                                        ; $526d: $03
    ld l, $1e                                     ; $526e: $2e $1e
    inc bc                                        ; $5270: $03
    ld b, h                                       ; $5271: $44
    ld e, $03                                     ; $5272: $1e $03
    ld d, b                                       ; $5274: $50
    ld e, $03                                     ; $5275: $1e $03
    ld [hl], h                                    ; $5277: $74
    ld e, $03                                     ; $5278: $1e $03
    ld a, l                                       ; $527a: $7d
    ld e, $03                                     ; $527b: $1e $03
    sub h                                         ; $527d: $94
    ld e, $03                                     ; $527e: $1e $03
    xor l                                         ; $5280: $ad
    ld e, $03                                     ; $5281: $1e $03
    ret nz                                        ; $5283: $c0

    ld e, $03                                     ; $5284: $1e $03
    sbc $1e                                       ; $5286: $de $1e
    inc bc                                        ; $5288: $03
    push af                                       ; $5289: $f5
    ld e, $03                                     ; $528a: $1e $03
    rlca                                          ; $528c: $07
    rra                                           ; $528d: $1f
    inc bc                                        ; $528e: $03
    jr jr_026_52b0                                ; $528f: $18 $1f

    inc bc                                        ; $5291: $03
    add hl, hl                                    ; $5292: $29
    rra                                           ; $5293: $1f
    inc bc                                        ; $5294: $03
    ld b, e                                       ; $5295: $43
    rra                                           ; $5296: $1f
    inc bc                                        ; $5297: $03
    ld c, a                                       ; $5298: $4f
    rra                                           ; $5299: $1f
    inc bc                                        ; $529a: $03
    ld l, b                                       ; $529b: $68
    rra                                           ; $529c: $1f
    inc bc                                        ; $529d: $03
    ld [hl], h                                    ; $529e: $74
    rra                                           ; $529f: $1f
    inc bc                                        ; $52a0: $03
    add d                                         ; $52a1: $82
    rra                                           ; $52a2: $1f
    inc bc                                        ; $52a3: $03
    sbc d                                         ; $52a4: $9a
    rra                                           ; $52a5: $1f
    inc bc                                        ; $52a6: $03
    cp e                                          ; $52a7: $bb
    rra                                           ; $52a8: $1f
    inc bc                                        ; $52a9: $03
    call z, $031f                                 ; $52aa: $cc $1f $03
    push hl                                       ; $52ad: $e5
    rra                                           ; $52ae: $1f
    inc bc                                        ; $52af: $03

jr_026_52b0:
    pop af                                        ; $52b0: $f1
    rra                                           ; $52b1: $1f
    inc bc                                        ; $52b2: $03
    inc bc                                        ; $52b3: $03
    jr nz, jr_026_52b9                            ; $52b4: $20 $03

    ld de, $0320                                  ; $52b6: $11 $20 $03

jr_026_52b9:
    jr nc, jr_026_52db                            ; $52b9: $30 $20

    inc bc                                        ; $52bb: $03
    inc a                                         ; $52bc: $3c
    jr nz, jr_026_52c2                            ; $52bd: $20 $03

    ld c, d                                       ; $52bf: $4a
    jr nz, jr_026_52c5                            ; $52c0: $20 $03

jr_026_52c2:
    ld h, a                                       ; $52c2: $67
    jr nz, jr_026_52c8                            ; $52c3: $20 $03

jr_026_52c5:
    ld a, e                                       ; $52c5: $7b
    jr nz, jr_026_52cb                            ; $52c6: $20 $03

jr_026_52c8:
    adc h                                         ; $52c8: $8c
    jr nz, jr_026_52ce                            ; $52c9: $20 $03

jr_026_52cb:
    and l                                         ; $52cb: $a5
    jr nz, jr_026_52d1                            ; $52cc: $20 $03

jr_026_52ce:
    or c                                          ; $52ce: $b1
    jr nz, jr_026_52d4                            ; $52cf: $20 $03

jr_026_52d1:
    rst $08                                       ; $52d1: $cf
    jr nz, jr_026_52d7                            ; $52d2: $20 $03

jr_026_52d4:
    cp $20                                        ; $52d4: $fe $20
    inc bc                                        ; $52d6: $03

jr_026_52d7:
    dec l                                         ; $52d7: $2d
    ld hl, $5703                                  ; $52d8: $21 $03 $57

jr_026_52db:
    ld hl, $9d03                                  ; $52db: $21 $03 $9d
    ld hl, $be03                                  ; $52de: $21 $03 $be
    ld hl, $e903                                  ; $52e1: $21 $03 $e9
    ld hl, $2503                                  ; $52e4: $21 $03 $25
    ld [hl+], a                                   ; $52e7: $22
    inc bc                                        ; $52e8: $03
    ld [hl], c                                    ; $52e9: $71
    ld [hl+], a                                   ; $52ea: $22
    inc bc                                        ; $52eb: $03
    and e                                         ; $52ec: $a3
    ld [hl+], a                                   ; $52ed: $22
    inc bc                                        ; $52ee: $03
    rst $08                                       ; $52ef: $cf
    ld [hl+], a                                   ; $52f0: $22
    inc bc                                        ; $52f1: $03
    ld e, $23                                     ; $52f2: $1e $23
    inc bc                                        ; $52f4: $03
    ld b, h                                       ; $52f5: $44
    inc hl                                        ; $52f6: $23
    inc bc                                        ; $52f7: $03
    ld a, e                                       ; $52f8: $7b
    inc hl                                        ; $52f9: $23
    inc bc                                        ; $52fa: $03
    xor a                                         ; $52fb: $af
    inc hl                                        ; $52fc: $23
    inc bc                                        ; $52fd: $03
    and $23                                       ; $52fe: $e6 $23
    inc bc                                        ; $5300: $03
    ld a, [hl+]                                   ; $5301: $2a
    inc h                                         ; $5302: $24
    inc bc                                        ; $5303: $03
    inc [hl]                                      ; $5304: $34
    inc h                                         ; $5305: $24
    inc bc                                        ; $5306: $03
    dec sp                                        ; $5307: $3b
    inc h                                         ; $5308: $24
    inc bc                                        ; $5309: $03
    ld c, b                                       ; $530a: $48
    inc h                                         ; $530b: $24
    inc bc                                        ; $530c: $03
    ld d, l                                       ; $530d: $55
    inc h                                         ; $530e: $24
    inc bc                                        ; $530f: $03
    ld h, c                                       ; $5310: $61
    inc h                                         ; $5311: $24
    inc bc                                        ; $5312: $03
    ld l, h                                       ; $5313: $6c
    inc h                                         ; $5314: $24
    inc bc                                        ; $5315: $03
    ld a, b                                       ; $5316: $78
    inc h                                         ; $5317: $24
    inc bc                                        ; $5318: $03
    add a                                         ; $5319: $87
    inc h                                         ; $531a: $24
    inc bc                                        ; $531b: $03
    sub e                                         ; $531c: $93
    inc h                                         ; $531d: $24
    inc bc                                        ; $531e: $03
    sbc a                                         ; $531f: $9f
    inc h                                         ; $5320: $24
    inc bc                                        ; $5321: $03
    xor d                                         ; $5322: $aa
    inc h                                         ; $5323: $24
    inc bc                                        ; $5324: $03
    or h                                          ; $5325: $b4
    inc h                                         ; $5326: $24
    inc bc                                        ; $5327: $03
    ret nz                                        ; $5328: $c0

    inc h                                         ; $5329: $24
    inc bc                                        ; $532a: $03
    sla h                                         ; $532b: $cb $24
    inc bc                                        ; $532d: $03
    rst $10                                       ; $532e: $d7
    inc h                                         ; $532f: $24
    inc bc                                        ; $5330: $03
    ld [c], a                                     ; $5331: $e2
    inc h                                         ; $5332: $24
    inc bc                                        ; $5333: $03
    db $ec                                        ; $5334: $ec
    inc h                                         ; $5335: $24
    inc bc                                        ; $5336: $03
    di                                            ; $5337: $f3
    inc h                                         ; $5338: $24
    inc bc                                        ; $5339: $03
    nop                                           ; $533a: $00
    dec h                                         ; $533b: $25
    inc bc                                        ; $533c: $03
    ld c, $25                                     ; $533d: $0e $25
    inc bc                                        ; $533f: $03
    rla                                           ; $5340: $17
    dec h                                         ; $5341: $25
    inc bc                                        ; $5342: $03
    ld hl, $0325                                  ; $5343: $21 $25 $03
    jr nc, jr_026_536d                            ; $5346: $30 $25

    inc bc                                        ; $5348: $03
    dec sp                                        ; $5349: $3b
    dec h                                         ; $534a: $25
    inc bc                                        ; $534b: $03
    ld b, [hl]                                    ; $534c: $46
    dec h                                         ; $534d: $25
    inc bc                                        ; $534e: $03
    ld d, c                                       ; $534f: $51
    dec h                                         ; $5350: $25
    inc bc                                        ; $5351: $03
    ld e, d                                       ; $5352: $5a
    dec h                                         ; $5353: $25
    inc bc                                        ; $5354: $03
    ld h, [hl]                                    ; $5355: $66
    dec h                                         ; $5356: $25
    inc bc                                        ; $5357: $03
    ld [hl], e                                    ; $5358: $73
    dec h                                         ; $5359: $25
    inc bc                                        ; $535a: $03
    ld a, a                                       ; $535b: $7f
    dec h                                         ; $535c: $25
    inc bc                                        ; $535d: $03
    add a                                         ; $535e: $87
    dec h                                         ; $535f: $25
    inc bc                                        ; $5360: $03
    sub e                                         ; $5361: $93
    dec h                                         ; $5362: $25
    inc bc                                        ; $5363: $03
    sbc [hl]                                      ; $5364: $9e
    dec h                                         ; $5365: $25
    inc bc                                        ; $5366: $03
    xor d                                         ; $5367: $aa
    dec h                                         ; $5368: $25
    inc bc                                        ; $5369: $03
    or h                                          ; $536a: $b4
    dec h                                         ; $536b: $25
    inc bc                                        ; $536c: $03

jr_026_536d:
    pop bc                                        ; $536d: $c1
    dec h                                         ; $536e: $25
    inc bc                                        ; $536f: $03
    jp z, Jump_000_0325                           ; $5370: $ca $25 $03

    call nc, Call_000_0325                        ; $5373: $d4 $25 $03
    ldh [rNR51], a                                ; $5376: $e0 $25
    inc bc                                        ; $5378: $03
    db $ec                                        ; $5379: $ec
    dec h                                         ; $537a: $25
    inc bc                                        ; $537b: $03
    or $25                                        ; $537c: $f6 $25
    inc bc                                        ; $537e: $03
    ld bc, $0326                                  ; $537f: $01 $26 $03
    dec c                                         ; $5382: $0d
    ld h, $03                                     ; $5383: $26 $03
    add hl, de                                    ; $5385: $19
    ld h, $03                                     ; $5386: $26 $03
    ld h, $26                                     ; $5388: $26 $26
    inc bc                                        ; $538a: $03
    dec hl                                        ; $538b: $2b
    ld h, $03                                     ; $538c: $26 $03
    dec [hl]                                      ; $538e: $35
    ld h, $03                                     ; $538f: $26 $03
    ld b, c                                       ; $5391: $41
    ld h, $03                                     ; $5392: $26 $03
    ld b, [hl]                                    ; $5394: $46
    ld h, $03                                     ; $5395: $26 $03
    ld d, b                                       ; $5397: $50
    ld h, $03                                     ; $5398: $26 $03
    ld e, c                                       ; $539a: $59
    ld h, $03                                     ; $539b: $26 $03
    ld h, h                                       ; $539d: $64
    ld h, $03                                     ; $539e: $26 $03
    ld [hl], c                                    ; $53a0: $71
    ld h, $03                                     ; $53a1: $26 $03
    ld a, l                                       ; $53a3: $7d
    ld h, $03                                     ; $53a4: $26 $03
    adc d                                         ; $53a6: $8a
    ld h, $03                                     ; $53a7: $26 $03
    sub a                                         ; $53a9: $97
    ld h, $03                                     ; $53aa: $26 $03
    sbc a                                         ; $53ac: $9f
    ld h, $03                                     ; $53ad: $26 $03
    xor e                                         ; $53af: $ab
    ld h, $03                                     ; $53b0: $26 $03
    cp c                                          ; $53b2: $b9
    ld h, $03                                     ; $53b3: $26 $03
    cp a                                          ; $53b5: $bf
    ld h, $03                                     ; $53b6: $26 $03
    adc $26                                       ; $53b8: $ce $26
    inc bc                                        ; $53ba: $03
    jp c, Jump_000_0326                           ; $53bb: $da $26 $03

    db $e3                                        ; $53be: $e3
    ld h, $03                                     ; $53bf: $26 $03
    rst $28                                       ; $53c1: $ef
    ld h, $03                                     ; $53c2: $26 $03
    ld a, [$0326]                                 ; $53c4: $fa $26 $03
    ld b, $27                                     ; $53c7: $06 $27
    inc bc                                        ; $53c9: $03
    ld de, $0327                                  ; $53ca: $11 $27 $03
    dec e                                         ; $53cd: $1d
    daa                                           ; $53ce: $27
    inc bc                                        ; $53cf: $03
    dec h                                         ; $53d0: $25
    daa                                           ; $53d1: $27
    inc bc                                        ; $53d2: $03
    ld sp, $0327                                  ; $53d3: $31 $27 $03
    dec a                                         ; $53d6: $3d
    daa                                           ; $53d7: $27
    inc bc                                        ; $53d8: $03
    ld c, d                                       ; $53d9: $4a
    daa                                           ; $53da: $27
    inc bc                                        ; $53db: $03
    ld d, [hl]                                    ; $53dc: $56
    daa                                           ; $53dd: $27
    inc bc                                        ; $53de: $03
    ld h, d                                       ; $53df: $62
    daa                                           ; $53e0: $27
    inc bc                                        ; $53e1: $03
    ld l, [hl]                                    ; $53e2: $6e
    daa                                           ; $53e3: $27
    inc bc                                        ; $53e4: $03
    ld a, d                                       ; $53e5: $7a
    daa                                           ; $53e6: $27
    inc bc                                        ; $53e7: $03
    add e                                         ; $53e8: $83
    daa                                           ; $53e9: $27
    inc bc                                        ; $53ea: $03
    adc a                                         ; $53eb: $8f
    daa                                           ; $53ec: $27
    inc bc                                        ; $53ed: $03
    sbc b                                         ; $53ee: $98
    daa                                           ; $53ef: $27
    inc bc                                        ; $53f0: $03
    and d                                         ; $53f1: $a2
    daa                                           ; $53f2: $27
    inc bc                                        ; $53f3: $03
    xor h                                         ; $53f4: $ac
    daa                                           ; $53f5: $27
    inc bc                                        ; $53f6: $03
    cp b                                          ; $53f7: $b8
    daa                                           ; $53f8: $27
    inc bc                                        ; $53f9: $03

Call_026_53fa:
    call nz, Call_000_0327                        ; $53fa: $c4 $27 $03
    call Call_000_0327                            ; $53fd: $cd $27 $03
    rst $10                                       ; $5400: $d7
    daa                                           ; $5401: $27
    inc bc                                        ; $5402: $03
    db $e3                                        ; $5403: $e3
    daa                                           ; $5404: $27
    inc bc                                        ; $5405: $03
    db $ec                                        ; $5406: $ec
    daa                                           ; $5407: $27
    inc bc                                        ; $5408: $03
    or $27                                        ; $5409: $f6 $27
    inc bc                                        ; $540b: $03
    ld bc, $0328                                  ; $540c: $01 $28 $03
    dec c                                         ; $540f: $0d
    jr z, jr_026_5415                             ; $5410: $28 $03

    dec de                                        ; $5412: $1b
    jr z, jr_026_5418                             ; $5413: $28 $03

jr_026_5415:
    jr z, jr_026_543f                             ; $5415: $28 $28

    inc bc                                        ; $5417: $03

jr_026_5418:
    ld sp, $0328                                  ; $5418: $31 $28 $03
    dec sp                                        ; $541b: $3b
    jr z, jr_026_5421                             ; $541c: $28 $03

    ld c, c                                       ; $541e: $49
    jr z, jr_026_5424                             ; $541f: $28 $03

jr_026_5421:
    ld d, l                                       ; $5421: $55
    jr z, jr_026_5427                             ; $5422: $28 $03

jr_026_5424:
    ld h, e                                       ; $5424: $63
    jr z, jr_026_542a                             ; $5425: $28 $03

jr_026_5427:
    ld l, b                                       ; $5427: $68
    jr z, jr_026_542d                             ; $5428: $28 $03

jr_026_542a:
    ld [hl], l                                    ; $542a: $75
    jr z, jr_026_5430                             ; $542b: $28 $03

jr_026_542d:
    ld a, l                                       ; $542d: $7d
    jr z, jr_026_5433                             ; $542e: $28 $03

jr_026_5430:
    adc c                                         ; $5430: $89
    jr z, jr_026_5436                             ; $5431: $28 $03

jr_026_5433:
    adc a                                         ; $5433: $8f
    jr z, jr_026_5439                             ; $5434: $28 $03

jr_026_5436:
    sub b                                         ; $5436: $90
    jr z, jr_026_543c                             ; $5437: $28 $03

jr_026_5439:
    sbc e                                         ; $5439: $9b
    jr z, jr_026_543f                             ; $543a: $28 $03

jr_026_543c:
    cp c                                          ; $543c: $b9
    jr z, jr_026_5442                             ; $543d: $28 $03

jr_026_543f:
    pop de                                        ; $543f: $d1
    jr z, jr_026_5445                             ; $5440: $28 $03

jr_026_5442:
    inc b                                         ; $5442: $04
    add hl, hl                                    ; $5443: $29
    inc bc                                        ; $5444: $03

jr_026_5445:
    inc [hl]                                      ; $5445: $34
    add hl, hl                                    ; $5446: $29
    inc bc                                        ; $5447: $03
    ld d, l                                       ; $5448: $55
    add hl, hl                                    ; $5449: $29
    inc bc                                        ; $544a: $03
    ld a, d                                       ; $544b: $7a
    add hl, hl                                    ; $544c: $29
    inc bc                                        ; $544d: $03
    sbc d                                         ; $544e: $9a
    add hl, hl                                    ; $544f: $29
    inc bc                                        ; $5450: $03
    xor a                                         ; $5451: $af
    add hl, hl                                    ; $5452: $29
    inc bc                                        ; $5453: $03
    rst $00                                       ; $5454: $c7
    add hl, hl                                    ; $5455: $29
    inc bc                                        ; $5456: $03
    db $eb                                        ; $5457: $eb
    add hl, hl                                    ; $5458: $29
    inc bc                                        ; $5459: $03
    rlca                                          ; $545a: $07
    ld a, [hl+]                                   ; $545b: $2a
    inc bc                                        ; $545c: $03
    jr z, jr_026_5489                             ; $545d: $28 $2a

    inc bc                                        ; $545f: $03
    inc a                                         ; $5460: $3c
    ld a, [hl+]                                   ; $5461: $2a
    inc bc                                        ; $5462: $03
    ld d, l                                       ; $5463: $55
    ld a, [hl+]                                   ; $5464: $2a
    inc bc                                        ; $5465: $03
    ld [hl], h                                    ; $5466: $74
    ld a, [hl+]                                   ; $5467: $2a
    inc bc                                        ; $5468: $03
    sbc [hl]                                      ; $5469: $9e
    ld a, [hl+]                                   ; $546a: $2a
    inc bc                                        ; $546b: $03
    pop bc                                        ; $546c: $c1
    ld a, [hl+]                                   ; $546d: $2a
    inc bc                                        ; $546e: $03
    db $eb                                        ; $546f: $eb
    ld a, [hl+]                                   ; $5470: $2a
    inc bc                                        ; $5471: $03
    add hl, bc                                    ; $5472: $09
    dec hl                                        ; $5473: $2b
    inc bc                                        ; $5474: $03
    ld sp, $032b                                  ; $5475: $31 $2b $03
    ld e, e                                       ; $5478: $5b
    dec hl                                        ; $5479: $2b
    inc bc                                        ; $547a: $03
    add c                                         ; $547b: $81
    dec hl                                        ; $547c: $2b
    inc bc                                        ; $547d: $03
    xor e                                         ; $547e: $ab
    dec hl                                        ; $547f: $2b
    inc bc                                        ; $5480: $03
    db $dd                                        ; $5481: $dd
    dec hl                                        ; $5482: $2b
    inc bc                                        ; $5483: $03
    ld a, [bc]                                    ; $5484: $0a
    inc l                                         ; $5485: $2c
    inc bc                                        ; $5486: $03
    add hl, sp                                    ; $5487: $39
    inc l                                         ; $5488: $2c

jr_026_5489:
    inc bc                                        ; $5489: $03
    ld c, d                                       ; $548a: $4a
    inc l                                         ; $548b: $2c
    inc bc                                        ; $548c: $03
    ld a, e                                       ; $548d: $7b
    inc l                                         ; $548e: $2c
    inc bc                                        ; $548f: $03
    xor e                                         ; $5490: $ab
    inc l                                         ; $5491: $2c
    inc bc                                        ; $5492: $03
    sub $2c                                       ; $5493: $d6 $2c
    inc bc                                        ; $5495: $03
    dec b                                         ; $5496: $05
    dec l                                         ; $5497: $2d
    inc bc                                        ; $5498: $03
    ld [hl], $2d                                  ; $5499: $36 $2d
    inc bc                                        ; $549b: $03
    ld c, c                                       ; $549c: $49
    dec l                                         ; $549d: $2d
    inc bc                                        ; $549e: $03
    ld [hl], l                                    ; $549f: $75
    dec l                                         ; $54a0: $2d
    inc bc                                        ; $54a1: $03
    sub l                                         ; $54a2: $95
    dec l                                         ; $54a3: $2d
    inc bc                                        ; $54a4: $03
    cp [hl]                                       ; $54a5: $be
    dec l                                         ; $54a6: $2d
    inc bc                                        ; $54a7: $03
    ldh [$2d], a                                  ; $54a8: $e0 $2d
    inc bc                                        ; $54aa: $03
    di                                            ; $54ab: $f3
    dec l                                         ; $54ac: $2d
    inc bc                                        ; $54ad: $03
    dec e                                         ; $54ae: $1d
    ld l, $03                                     ; $54af: $2e $03
    ld c, b                                       ; $54b1: $48
    ld l, $03                                     ; $54b2: $2e $03
    ld [hl], c                                    ; $54b4: $71
    ld l, $03                                     ; $54b5: $2e $03
    and h                                         ; $54b7: $a4
    ld l, $03                                     ; $54b8: $2e $03
    cp b                                          ; $54ba: $b8
    ld l, $03                                     ; $54bb: $2e $03
    rst $08                                       ; $54bd: $cf
    ld l, $03                                     ; $54be: $2e $03
    ld a, [c]                                     ; $54c0: $f2
    ld l, $03                                     ; $54c1: $2e $03
    ld e, $2f                                     ; $54c3: $1e $2f
    inc bc                                        ; $54c5: $03
    ld c, l                                       ; $54c6: $4d
    cpl                                           ; $54c7: $2f
    inc bc                                        ; $54c8: $03
    ld h, b                                       ; $54c9: $60
    cpl                                           ; $54ca: $2f
    inc bc                                        ; $54cb: $03
    adc d                                         ; $54cc: $8a
    cpl                                           ; $54cd: $2f
    inc bc                                        ; $54ce: $03
    xor e                                         ; $54cf: $ab
    cpl                                           ; $54d0: $2f
    inc bc                                        ; $54d1: $03
    sra a                                         ; $54d2: $cb $2f
    inc bc                                        ; $54d4: $03
    jp hl                                         ; $54d5: $e9


    cpl                                           ; $54d6: $2f
    inc bc                                        ; $54d7: $03
    rla                                           ; $54d8: $17
    jr nc, jr_026_54de                            ; $54d9: $30 $03

    inc sp                                        ; $54db: $33
    jr nc, jr_026_54e1                            ; $54dc: $30 $03

jr_026_54de:
    ld e, d                                       ; $54de: $5a
    jr nc, jr_026_54e4                            ; $54df: $30 $03

jr_026_54e1:
    ld a, b                                       ; $54e1: $78
    jr nc, jr_026_54e7                            ; $54e2: $30 $03

jr_026_54e4:
    add [hl]                                      ; $54e4: $86
    jr nc, jr_026_54ea                            ; $54e5: $30 $03

jr_026_54e7:
    or d                                          ; $54e7: $b2
    jr nc, jr_026_54ed                            ; $54e8: $30 $03

jr_026_54ea:
    call c, $0330                                 ; $54ea: $dc $30 $03

jr_026_54ed:
    nop                                           ; $54ed: $00
    ld sp, $2503                                  ; $54ee: $31 $03 $25
    ld sp, $3d03                                  ; $54f1: $31 $03 $3d
    ld sp, $6903                                  ; $54f4: $31 $03 $69
    ld sp, $8903                                  ; $54f7: $31 $03 $89

Call_026_54fa:
    ld sp, $b703                                  ; $54fa: $31 $03 $b7
    ld sp, $e403                                  ; $54fd: $31 $03 $e4
    ld sp, $f603                                  ; $5500: $31 $03 $f6
    ld sp, $2303                                  ; $5503: $31 $03 $23
    ld [hl-], a                                   ; $5506: $32
    inc bc                                        ; $5507: $03
    ld b, l                                       ; $5508: $45
    ld [hl-], a                                   ; $5509: $32
    inc bc                                        ; $550a: $03
    ld [hl], d                                    ; $550b: $72
    ld [hl-], a                                   ; $550c: $32
    inc bc                                        ; $550d: $03
    sbc a                                         ; $550e: $9f
    ld [hl-], a                                   ; $550f: $32
    inc bc                                        ; $5510: $03
    or [hl]                                       ; $5511: $b6
    ld [hl-], a                                   ; $5512: $32
    inc bc                                        ; $5513: $03
    rst $08                                       ; $5514: $cf
    ld [hl-], a                                   ; $5515: $32
    inc bc                                        ; $5516: $03
    ld b, $33                                     ; $5517: $06 $33
    inc bc                                        ; $5519: $03
    ld l, $33                                     ; $551a: $2e $33
    inc bc                                        ; $551c: $03
    ld e, a                                       ; $551d: $5f
    inc sp                                        ; $551e: $33
    inc bc                                        ; $551f: $03
    adc d                                         ; $5520: $8a
    inc sp                                        ; $5521: $33
    inc bc                                        ; $5522: $03
    or d                                          ; $5523: $b2
    inc sp                                        ; $5524: $33
    inc bc                                        ; $5525: $03
    sbc $33                                       ; $5526: $de $33
    inc bc                                        ; $5528: $03
    dec b                                         ; $5529: $05
    inc [hl]                                      ; $552a: $34
    inc bc                                        ; $552b: $03
    dec l                                         ; $552c: $2d
    inc [hl]                                      ; $552d: $34
    inc bc                                        ; $552e: $03
    ccf                                           ; $552f: $3f
    inc [hl]                                      ; $5530: $34
    inc bc                                        ; $5531: $03
    ld l, h                                       ; $5532: $6c
    inc [hl]                                      ; $5533: $34
    inc bc                                        ; $5534: $03
    sub e                                         ; $5535: $93
    inc [hl]                                      ; $5536: $34
    inc bc                                        ; $5537: $03
    xor [hl]                                      ; $5538: $ae
    inc [hl]                                      ; $5539: $34
    inc bc                                        ; $553a: $03
    ldh [$34], a                                  ; $553b: $e0 $34
    inc bc                                        ; $553d: $03
    rrca                                          ; $553e: $0f
    dec [hl]                                      ; $553f: $35
    inc bc                                        ; $5540: $03
    cpl                                           ; $5541: $2f
    dec [hl]                                      ; $5542: $35
    inc bc                                        ; $5543: $03
    ld c, h                                       ; $5544: $4c
    dec [hl]                                      ; $5545: $35
    inc bc                                        ; $5546: $03
    ld [hl], d                                    ; $5547: $72
    dec [hl]                                      ; $5548: $35
    inc bc                                        ; $5549: $03
    sub d                                         ; $554a: $92
    dec [hl]                                      ; $554b: $35
    inc bc                                        ; $554c: $03
    jp Jump_000_0335                              ; $554d: $c3 $35 $03


    rst $20                                       ; $5550: $e7
    dec [hl]                                      ; $5551: $35
    inc bc                                        ; $5552: $03
    rst $38                                       ; $5553: $ff
    dec [hl]                                      ; $5554: $35
    inc bc                                        ; $5555: $03
    cpl                                           ; $5556: $2f
    ld [hl], $03                                  ; $5557: $36 $03
    ld e, b                                       ; $5559: $58
    ld [hl], $03                                  ; $555a: $36 $03
    ld l, d                                       ; $555c: $6a
    ld [hl], $03                                  ; $555d: $36 $03
    sbc [hl]                                      ; $555f: $9e
    ld [hl], $03                                  ; $5560: $36 $03
    call z, Call_000_0336                         ; $5562: $cc $36 $03
    db $ec                                        ; $5565: $ec
    ld [hl], $03                                  ; $5566: $36 $03
    dec d                                         ; $5568: $15
    scf                                           ; $5569: $37
    inc bc                                        ; $556a: $03
    dec hl                                        ; $556b: $2b
    scf                                           ; $556c: $37
    inc bc                                        ; $556d: $03
    dec a                                         ; $556e: $3d
    scf                                           ; $556f: $37
    inc bc                                        ; $5570: $03
    ld c, l                                       ; $5571: $4d
    scf                                           ; $5572: $37
    inc bc                                        ; $5573: $03
    ld d, e                                       ; $5574: $53
    scf                                           ; $5575: $37
    inc bc                                        ; $5576: $03
    ld e, b                                       ; $5577: $58
    scf                                           ; $5578: $37
    inc bc                                        ; $5579: $03
    ld e, l                                       ; $557a: $5d
    scf                                           ; $557b: $37
    inc bc                                        ; $557c: $03
    ld h, h                                       ; $557d: $64
    scf                                           ; $557e: $37
    inc bc                                        ; $557f: $03
    ld l, h                                       ; $5580: $6c
    scf                                           ; $5581: $37
    inc bc                                        ; $5582: $03
    ld [hl], e                                    ; $5583: $73
    scf                                           ; $5584: $37
    inc bc                                        ; $5585: $03
    ld a, c                                       ; $5586: $79
    scf                                           ; $5587: $37
    inc bc                                        ; $5588: $03
    ld a, a                                       ; $5589: $7f
    scf                                           ; $558a: $37
    inc bc                                        ; $558b: $03
    add l                                         ; $558c: $85
    scf                                           ; $558d: $37
    inc bc                                        ; $558e: $03
    adc h                                         ; $558f: $8c
    scf                                           ; $5590: $37
    inc bc                                        ; $5591: $03
    sub [hl]                                      ; $5592: $96
    scf                                           ; $5593: $37
    inc bc                                        ; $5594: $03
    sbc e                                         ; $5595: $9b
    scf                                           ; $5596: $37

Call_026_5597:
    inc bc                                        ; $5597: $03
    and c                                         ; $5598: $a1
    scf                                           ; $5599: $37
    inc bc                                        ; $559a: $03
    xor c                                         ; $559b: $a9
    scf                                           ; $559c: $37
    inc bc                                        ; $559d: $03
    or [hl]                                       ; $559e: $b6
    scf                                           ; $559f: $37
    inc bc                                        ; $55a0: $03
    cp e                                          ; $55a1: $bb
    scf                                           ; $55a2: $37
    inc bc                                        ; $55a3: $03
    cp a                                          ; $55a4: $bf
    scf                                           ; $55a5: $37
    inc bc                                        ; $55a6: $03
    ret nc                                        ; $55a7: $d0

    scf                                           ; $55a8: $37
    inc bc                                        ; $55a9: $03
    and $37                                       ; $55aa: $e6 $37
    inc bc                                        ; $55ac: $03
    ld a, [bc]                                    ; $55ad: $0a
    jr c, jr_026_55b3                             ; $55ae: $38 $03

    jr jr_026_55ea                                ; $55b0: $18 $38

    inc bc                                        ; $55b2: $03

jr_026_55b3:
    ld l, $38                                     ; $55b3: $2e $38
    inc bc                                        ; $55b5: $03
    ld c, d                                       ; $55b6: $4a
    jr c, jr_026_55bc                             ; $55b7: $38 $03

    ld d, a                                       ; $55b9: $57
    jr c, jr_026_55bf                             ; $55ba: $38 $03

jr_026_55bc:
    ld a, [hl]                                    ; $55bc: $7e
    jr c, jr_026_55c2                             ; $55bd: $38 $03

jr_026_55bf:
    sub b                                         ; $55bf: $90
    jr c, jr_026_55c5                             ; $55c0: $38 $03

jr_026_55c2:
    xor h                                         ; $55c2: $ac
    jr c, jr_026_55c8                             ; $55c3: $38 $03

jr_026_55c5:
    jp nz, Jump_000_0338                          ; $55c5: $c2 $38 $03

jr_026_55c8:
    db $eb                                        ; $55c8: $eb
    jr c, jr_026_55ce                             ; $55c9: $38 $03

    ld bc, $0339                                  ; $55cb: $01 $39 $03

jr_026_55ce:
    dec de                                        ; $55ce: $1b
    add hl, sp                                    ; $55cf: $39
    inc bc                                        ; $55d0: $03
    ld a, $39                                     ; $55d1: $3e $39
    inc bc                                        ; $55d3: $03
    ld h, e                                       ; $55d4: $63
    add hl, sp                                    ; $55d5: $39
    inc bc                                        ; $55d6: $03
    ld a, d                                       ; $55d7: $7a
    add hl, sp                                    ; $55d8: $39
    inc bc                                        ; $55d9: $03
    adc a                                         ; $55da: $8f
    add hl, sp                                    ; $55db: $39
    inc bc                                        ; $55dc: $03
    sbc a                                         ; $55dd: $9f
    add hl, sp                                    ; $55de: $39
    inc bc                                        ; $55df: $03
    cp l                                          ; $55e0: $bd
    add hl, sp                                    ; $55e1: $39
    inc bc                                        ; $55e2: $03
    cp [hl]                                       ; $55e3: $be
    add hl, sp                                    ; $55e4: $39
    inc bc                                        ; $55e5: $03
    cp a                                          ; $55e6: $bf
    add hl, sp                                    ; $55e7: $39
    inc bc                                        ; $55e8: $03
    reti                                          ; $55e9: $d9


jr_026_55ea:
    add hl, sp                                    ; $55ea: $39
    inc bc                                        ; $55eb: $03

Jump_026_55ec:
    rst $20                                       ; $55ec: $e7
    add hl, sp                                    ; $55ed: $39
    inc bc                                        ; $55ee: $03
    xor $39                                       ; $55ef: $ee $39
    inc bc                                        ; $55f1: $03
    push af                                       ; $55f2: $f5
    add hl, sp                                    ; $55f3: $39
    inc bc                                        ; $55f4: $03
    nop                                           ; $55f5: $00
    ld a, [hl-]                                   ; $55f6: $3a
    inc bc                                        ; $55f7: $03
    ld [$033a], sp                                ; $55f8: $08 $3a $03
    ld l, $3a                                     ; $55fb: $2e $3a
    inc bc                                        ; $55fd: $03
    ld b, d                                       ; $55fe: $42
    ld a, [hl-]                                   ; $55ff: $3a
    inc bc                                        ; $5600: $03
    ld e, e                                       ; $5601: $5b
    ld a, [hl-]                                   ; $5602: $3a
    inc bc                                        ; $5603: $03
    ld l, c                                       ; $5604: $69
    ld a, [hl-]                                   ; $5605: $3a
    inc bc                                        ; $5606: $03
    ld a, l                                       ; $5607: $7d
    ld a, [hl-]                                   ; $5608: $3a
    inc bc                                        ; $5609: $03
    sbc c                                         ; $560a: $99
    ld a, [hl-]                                   ; $560b: $3a
    inc bc                                        ; $560c: $03
    ret z                                         ; $560d: $c8

    ld a, [hl-]                                   ; $560e: $3a
    inc bc                                        ; $560f: $03
    di                                            ; $5610: $f3
    ld a, [hl-]                                   ; $5611: $3a
    inc bc                                        ; $5612: $03
    jr z, jr_026_5650                             ; $5613: $28 $3b

    inc bc                                        ; $5615: $03
    ld c, d                                       ; $5616: $4a
    dec sp                                        ; $5617: $3b
    inc bc                                        ; $5618: $03
    adc l                                         ; $5619: $8d
    dec sp                                        ; $561a: $3b
    inc bc                                        ; $561b: $03
    xor b                                         ; $561c: $a8
    dec sp                                        ; $561d: $3b
    inc bc                                        ; $561e: $03
    srl e                                         ; $561f: $cb $3b
    inc bc                                        ; $5621: $03
    jp c, Jump_000_033b                           ; $5622: $da $3b $03

    db $f4                                        ; $5625: $f4
    dec sp                                        ; $5626: $3b
    inc bc                                        ; $5627: $03
    rra                                           ; $5628: $1f
    inc a                                         ; $5629: $3c
    inc bc                                        ; $562a: $03
    ld b, b                                       ; $562b: $40
    inc a                                         ; $562c: $3c
    inc bc                                        ; $562d: $03
    ld l, h                                       ; $562e: $6c
    inc a                                         ; $562f: $3c
    inc bc                                        ; $5630: $03
    add l                                         ; $5631: $85
    inc a                                         ; $5632: $3c
    inc bc                                        ; $5633: $03
    sbc h                                         ; $5634: $9c
    inc a                                         ; $5635: $3c
    inc bc                                        ; $5636: $03
    jp $033c                                      ; $5637: $c3 $3c $03


    db $ed                                        ; $563a: $ed
    inc a                                         ; $563b: $3c
    inc bc                                        ; $563c: $03
    inc de                                        ; $563d: $13
    dec a                                         ; $563e: $3d
    inc bc                                        ; $563f: $03
    dec l                                         ; $5640: $2d
    dec a                                         ; $5641: $3d
    inc bc                                        ; $5642: $03
    dec a                                         ; $5643: $3d
    dec a                                         ; $5644: $3d
    inc bc                                        ; $5645: $03
    ld e, b                                       ; $5646: $58
    dec a                                         ; $5647: $3d
    inc bc                                        ; $5648: $03
    add l                                         ; $5649: $85
    dec a                                         ; $564a: $3d
    inc bc                                        ; $564b: $03
    sbc b                                         ; $564c: $98
    dec a                                         ; $564d: $3d
    inc bc                                        ; $564e: $03
    or e                                          ; $564f: $b3

jr_026_5650:
    dec a                                         ; $5650: $3d
    inc bc                                        ; $5651: $03
    jp nz, $033d                                  ; $5652: $c2 $3d $03

    rst $28                                       ; $5655: $ef
    dec a                                         ; $5656: $3d
    inc bc                                        ; $5657: $03
    ld hl, sp+$3d                                 ; $5658: $f8 $3d
    inc bc                                        ; $565a: $03
    inc b                                         ; $565b: $04
    ld a, $03                                     ; $565c: $3e $03
    dec bc                                        ; $565e: $0b
    ld a, $03                                     ; $565f: $3e $03
    dec d                                         ; $5661: $15
    ld a, $03                                     ; $5662: $3e $03
    ld a, [hl+]                                   ; $5664: $2a
    ld a, $03                                     ; $5665: $3e $03
    inc a                                         ; $5667: $3c
    ld a, $03                                     ; $5668: $3e $03
    add d                                         ; $566a: $82
    ld a, $03                                     ; $566b: $3e $03
    jp nz, Jump_000_033e                          ; $566d: $c2 $3e $03

    push de                                       ; $5670: $d5
    ld a, $03                                     ; $5671: $3e $03
    ld [c], a                                     ; $5673: $e2
    ld a, $03                                     ; $5674: $3e $03
    rst $38                                       ; $5676: $ff
    ld a, $03                                     ; $5677: $3e $03
    inc l                                         ; $5679: $2c
    ccf                                           ; $567a: $3f
    inc bc                                        ; $567b: $03
    add d                                         ; $567c: $82
    ccf                                           ; $567d: $3f
    inc b                                         ; $567e: $04
    ld bc, $0400                                  ; $567f: $01 $00 $04
    ld d, e                                       ; $5682: $53
    nop                                           ; $5683: $00
    inc b                                         ; $5684: $04
    ld [hl], c                                    ; $5685: $71
    nop                                           ; $5686: $00
    inc b                                         ; $5687: $04
    sub c                                         ; $5688: $91
    nop                                           ; $5689: $00
    inc b                                         ; $568a: $04
    db $d3                                        ; $568b: $d3
    nop                                           ; $568c: $00
    inc b                                         ; $568d: $04
    db $dd                                        ; $568e: $dd
    nop                                           ; $568f: $00
    inc b                                         ; $5690: $04
    ld bc, $0401                                  ; $5691: $01 $01 $04
    ld d, e                                       ; $5694: $53
    ld bc, $8804                                  ; $5695: $01 $04 $88
    ld bc, $c304                                  ; $5698: $01 $04 $c3
    ld bc, $e104                                  ; $569b: $01 $04 $e1
    ld bc, $2804                                  ; $569e: $01 $04 $28
    ld [bc], a                                    ; $56a1: $02
    inc b                                         ; $56a2: $04
    ld a, d                                       ; $56a3: $7a
    ld [bc], a                                    ; $56a4: $02
    inc b                                         ; $56a5: $04
    sub l                                         ; $56a6: $95
    ld [bc], a                                    ; $56a7: $02
    inc b                                         ; $56a8: $04
    push hl                                       ; $56a9: $e5
    ld [bc], a                                    ; $56aa: $02
    inc b                                         ; $56ab: $04
    ld a, $03                                     ; $56ac: $3e $03
    inc b                                         ; $56ae: $04
    ld c, b                                       ; $56af: $48
    inc bc                                        ; $56b0: $03
    inc b                                         ; $56b1: $04
    sbc c                                         ; $56b2: $99
    inc bc                                        ; $56b3: $03
    inc b                                         ; $56b4: $04
    or c                                          ; $56b5: $b1
    inc bc                                        ; $56b6: $03
    inc b                                         ; $56b7: $04
    ret nz                                        ; $56b8: $c0

    inc bc                                        ; $56b9: $03
    inc b                                         ; $56ba: $04
    ld a, [c]                                     ; $56bb: $f2
    inc bc                                        ; $56bc: $03
    inc b                                         ; $56bd: $04
    inc c                                         ; $56be: $0c
    inc b                                         ; $56bf: $04
    inc b                                         ; $56c0: $04
    ld sp, $0404                                  ; $56c1: $31 $04 $04
    dec [hl]                                      ; $56c4: $35
    inc b                                         ; $56c5: $04
    inc b                                         ; $56c6: $04
    adc [hl]                                      ; $56c7: $8e
    inc b                                         ; $56c8: $04
    inc b                                         ; $56c9: $04
    sub e                                         ; $56ca: $93
    inc b                                         ; $56cb: $04
    inc b                                         ; $56cc: $04
    pop de                                        ; $56cd: $d1
    inc b                                         ; $56ce: $04
    inc b                                         ; $56cf: $04
    ret c                                         ; $56d0: $d8

    inc b                                         ; $56d1: $04
    inc b                                         ; $56d2: $04
    ccf                                           ; $56d3: $3f
    dec b                                         ; $56d4: $05
    inc b                                         ; $56d5: $04
    ld a, d                                       ; $56d6: $7a

Call_026_56d7:
    dec b                                         ; $56d7: $05
    inc b                                         ; $56d8: $04
    call nc, Call_000_0405                        ; $56d9: $d4 $05 $04
    and $05                                       ; $56dc: $e6 $05
    inc b                                         ; $56de: $04
    rst $30                                       ; $56df: $f7
    dec b                                         ; $56e0: $05
    inc b                                         ; $56e1: $04
    ld b, $06                                     ; $56e2: $06 $06
    inc b                                         ; $56e4: $04
    jr nz, @+$08                                  ; $56e5: $20 $06

    inc b                                         ; $56e7: $04
    ld c, a                                       ; $56e8: $4f
    ld b, $04                                     ; $56e9: $06 $04
    ld h, d                                       ; $56eb: $62
    ld b, $04                                     ; $56ec: $06 $04
    add e                                         ; $56ee: $83
    ld b, $04                                     ; $56ef: $06 $04
    xor h                                         ; $56f1: $ac
    ld b, $04                                     ; $56f2: $06 $04
    pop hl                                        ; $56f4: $e1
    ld b, $04                                     ; $56f5: $06 $04
    ld [de], a                                    ; $56f7: $12
    rlca                                          ; $56f8: $07
    inc b                                         ; $56f9: $04
    ld b, d                                       ; $56fa: $42
    rlca                                          ; $56fb: $07
    inc b                                         ; $56fc: $04
    sub b                                         ; $56fd: $90
    rlca                                          ; $56fe: $07
    inc b                                         ; $56ff: $04
    xor c                                         ; $5700: $a9
    rlca                                          ; $5701: $07
    inc b                                         ; $5702: $04
    cp e                                          ; $5703: $bb
    rlca                                          ; $5704: $07
    inc b                                         ; $5705: $04
    inc hl                                        ; $5706: $23
    ld [$4204], sp                                ; $5707: $08 $04 $42
    ld [$8c04], sp                                ; $570a: $08 $04 $8c
    ld [$a204], sp                                ; $570d: $08 $04 $a2
    ld [$fd04], sp                                ; $5710: $08 $04 $fd
    ld [$1b04], sp                                ; $5713: $08 $04 $1b
    add hl, bc                                    ; $5716: $09
    inc b                                         ; $5717: $04
    dec l                                         ; $5718: $2d
    add hl, bc                                    ; $5719: $09
    inc b                                         ; $571a: $04
    dec sp                                        ; $571b: $3b
    add hl, bc                                    ; $571c: $09
    inc b                                         ; $571d: $04
    ld a, b                                       ; $571e: $78
    add hl, bc                                    ; $571f: $09
    inc b                                         ; $5720: $04
    add b                                         ; $5721: $80
    add hl, bc                                    ; $5722: $09
    inc b                                         ; $5723: $04
    and e                                         ; $5724: $a3
    add hl, bc                                    ; $5725: $09
    inc b                                         ; $5726: $04
    or a                                          ; $5727: $b7

Jump_026_5728:
    add hl, bc                                    ; $5728: $09
    inc b                                         ; $5729: $04
    add $09                                       ; $572a: $c6 $09
    inc b                                         ; $572c: $04
    ret c                                         ; $572d: $d8

    add hl, bc                                    ; $572e: $09
    inc b                                         ; $572f: $04
    db $ed                                        ; $5730: $ed
    add hl, bc                                    ; $5731: $09
    inc b                                         ; $5732: $04
    rst $30                                       ; $5733: $f7
    add hl, bc                                    ; $5734: $09
    inc b                                         ; $5735: $04
    dec h                                         ; $5736: $25
    ld a, [bc]                                    ; $5737: $0a
    inc b                                         ; $5738: $04
    inc a                                         ; $5739: $3c
    ld a, [bc]                                    ; $573a: $0a
    inc b                                         ; $573b: $04
    ld a, a                                       ; $573c: $7f
    ld a, [bc]                                    ; $573d: $0a
    inc b                                         ; $573e: $04
    sbc h                                         ; $573f: $9c
    ld a, [bc]                                    ; $5740: $0a
    inc b                                         ; $5741: $04
    or [hl]                                       ; $5742: $b6
    ld a, [bc]                                    ; $5743: $0a
    inc b                                         ; $5744: $04
    db $dd                                        ; $5745: $dd
    ld a, [bc]                                    ; $5746: $0a
    inc b                                         ; $5747: $04
    db $fc                                        ; $5748: $fc
    ld a, [bc]                                    ; $5749: $0a
    inc b                                         ; $574a: $04
    ld de, $040b                                  ; $574b: $11 $0b $04
    dec h                                         ; $574e: $25
    dec bc                                        ; $574f: $0b
    inc b                                         ; $5750: $04
    ld b, l                                       ; $5751: $45
    dec bc                                        ; $5752: $0b
    inc b                                         ; $5753: $04
    ld c, [hl]                                    ; $5754: $4e
    dec bc                                        ; $5755: $0b
    inc b                                         ; $5756: $04
    ld e, e                                       ; $5757: $5b
    dec bc                                        ; $5758: $0b
    inc b                                         ; $5759: $04
    ld l, h                                       ; $575a: $6c
    dec bc                                        ; $575b: $0b
    inc b                                         ; $575c: $04
    halt                                          ; $575d: $76
    dec bc                                        ; $575e: $0b
    inc b                                         ; $575f: $04
    sbc [hl]                                      ; $5760: $9e
    dec bc                                        ; $5761: $0b
    inc b                                         ; $5762: $04
    ldh a, [$0b]                                  ; $5763: $f0 $0b
    inc b                                         ; $5765: $04
    dec bc                                        ; $5766: $0b
    inc c                                         ; $5767: $0c
    inc b                                         ; $5768: $04
    inc d                                         ; $5769: $14
    inc c                                         ; $576a: $0c
    inc b                                         ; $576b: $04
    dec h                                         ; $576c: $25
    inc c                                         ; $576d: $0c
    inc b                                         ; $576e: $04
    cpl                                           ; $576f: $2f
    inc c                                         ; $5770: $0c
    inc b                                         ; $5771: $04
    ld e, c                                       ; $5772: $59
    inc c                                         ; $5773: $0c
    inc b                                         ; $5774: $04
    ld a, d                                       ; $5775: $7a
    inc c                                         ; $5776: $0c
    inc b                                         ; $5777: $04
    db $dd                                        ; $5778: $dd
    inc c                                         ; $5779: $0c
    inc b                                         ; $577a: $04
    dec d                                         ; $577b: $15
    dec c                                         ; $577c: $0d
    inc b                                         ; $577d: $04
    ld l, b                                       ; $577e: $68
    dec c                                         ; $577f: $0d

Call_026_5780:
    inc b                                         ; $5780: $04
    ld [hl], b                                    ; $5781: $70
    dec c                                         ; $5782: $0d
    inc b                                         ; $5783: $04
    add c                                         ; $5784: $81
    dec c                                         ; $5785: $0d
    inc b                                         ; $5786: $04
    sbc c                                         ; $5787: $99
    dec c                                         ; $5788: $0d
    inc b                                         ; $5789: $04
    pop de                                        ; $578a: $d1
    dec c                                         ; $578b: $0d
    inc b                                         ; $578c: $04
    or $0d                                        ; $578d: $f6 $0d
    inc b                                         ; $578f: $04
    dec hl                                        ; $5790: $2b
    ld c, $04                                     ; $5791: $0e $04
    dec a                                         ; $5793: $3d
    ld c, $04                                     ; $5794: $0e $04
    ld h, d                                       ; $5796: $62
    ld c, $04                                     ; $5797: $0e $04
    ld l, c                                       ; $5799: $69
    ld c, $04                                     ; $579a: $0e $04
    ld a, b                                       ; $579c: $78
    ld c, $04                                     ; $579d: $0e $04
    ret nz                                        ; $579f: $c0

    ld c, $04                                     ; $57a0: $0e $04
    call Call_000_040e                            ; $57a2: $cd $0e $04
    rlca                                          ; $57a5: $07
    rrca                                          ; $57a6: $0f
    inc b                                         ; $57a7: $04
    ld [hl+], a                                   ; $57a8: $22
    rrca                                          ; $57a9: $0f
    inc b                                         ; $57aa: $04
    ld l, l                                       ; $57ab: $6d
    rrca                                          ; $57ac: $0f
    inc b                                         ; $57ad: $04
    sub l                                         ; $57ae: $95
    rrca                                          ; $57af: $0f
    inc b                                         ; $57b0: $04
    sbc [hl]                                      ; $57b1: $9e
    rrca                                          ; $57b2: $0f
    inc b                                         ; $57b3: $04
    or h                                          ; $57b4: $b4
    rrca                                          ; $57b5: $0f
    inc b                                         ; $57b6: $04
    call Call_000_040f                            ; $57b7: $cd $0f $04
    rst $18                                       ; $57ba: $df
    rrca                                          ; $57bb: $0f
    inc b                                         ; $57bc: $04
    push af                                       ; $57bd: $f5
    rrca                                          ; $57be: $0f
    inc b                                         ; $57bf: $04
    dec bc                                        ; $57c0: $0b
    db $10                                        ; $57c1: $10
    inc b                                         ; $57c2: $04
    jr nz, jr_026_57d5                            ; $57c3: $20 $10

    inc b                                         ; $57c5: $04
    ld l, $10                                     ; $57c6: $2e $10
    inc b                                         ; $57c8: $04
    ld a, [hl-]                                   ; $57c9: $3a
    db $10                                        ; $57ca: $10
    inc b                                         ; $57cb: $04
    ld c, b                                       ; $57cc: $48
    db $10                                        ; $57cd: $10
    inc b                                         ; $57ce: $04
    ld e, c                                       ; $57cf: $59
    db $10                                        ; $57d0: $10
    inc b                                         ; $57d1: $04
    ld e, d                                       ; $57d2: $5a
    db $10                                        ; $57d3: $10
    inc b                                         ; $57d4: $04

jr_026_57d5:
    ld l, h                                       ; $57d5: $6c
    db $10                                        ; $57d6: $10
    inc b                                         ; $57d7: $04
    add h                                         ; $57d8: $84
    db $10                                        ; $57d9: $10
    inc b                                         ; $57da: $04
    sbc h                                         ; $57db: $9c
    db $10                                        ; $57dc: $10
    inc b                                         ; $57dd: $04
    sbc l                                         ; $57de: $9d
    db $10                                        ; $57df: $10
    inc b                                         ; $57e0: $04
    sbc [hl]                                      ; $57e1: $9e
    db $10                                        ; $57e2: $10
    inc b                                         ; $57e3: $04
    cp c                                          ; $57e4: $b9
    db $10                                        ; $57e5: $10
    inc b                                         ; $57e6: $04
    call Call_000_0410                            ; $57e7: $cd $10 $04
    adc $10                                       ; $57ea: $ce $10
    inc b                                         ; $57ec: $04
    ld [$0410], a                                 ; $57ed: $ea $10 $04
    db $eb                                        ; $57f0: $eb
    db $10                                        ; $57f1: $10
    inc b                                         ; $57f2: $04
    db $ec                                        ; $57f3: $ec
    db $10                                        ; $57f4: $10
    inc b                                         ; $57f5: $04
    inc bc                                        ; $57f6: $03
    ld de, $1104                                  ; $57f7: $11 $04 $11
    ld de, $1f04                                  ; $57fa: $11 $04 $1f
    ld de, $2004                                  ; $57fd: $11 $04 $20
    ld de, $2104                                  ; $5800: $11 $04 $21
    ld de, $2204                                  ; $5803: $11 $04 $22
    ld de, $3904                                  ; $5806: $11 $04 $39
    ld de, $3a04                                  ; $5809: $11 $04 $3a
    ld de, $3b04                                  ; $580c: $11 $04 $3b
    ld de, $3c04                                  ; $580f: $11 $04 $3c
    ld de, $3d04                                  ; $5812: $11 $04 $3d
    ld de, $3e04                                  ; $5815: $11 $04 $3e
    ld de, $3f04                                  ; $5818: $11 $04 $3f
    ld de, $4004                                  ; $581b: $11 $04 $40
    ld de, $4104                                  ; $581e: $11 $04 $41
    ld de, $4204                                  ; $5821: $11 $04 $42
    ld de, $5e04                                  ; $5824: $11 $04 $5e
    ld de, $6d04                                  ; $5827: $11 $04 $6d
    ld de, $6e04                                  ; $582a: $11 $04 $6e
    ld de, $6f04                                  ; $582d: $11 $04 $6f
    ld de, $7004                                  ; $5830: $11 $04 $70
    ld de, $7104                                  ; $5833: $11 $04 $71
    ld de, $7204                                  ; $5836: $11 $04 $72
    ld de, $7304                                  ; $5839: $11 $04 $73
    ld de, $7404                                  ; $583c: $11 $04 $74
    ld de, $7504                                  ; $583f: $11 $04 $75
    ld de, $7604                                  ; $5842: $11 $04 $76
    ld de, $7704                                  ; $5845: $11 $04 $77
    ld de, $8704                                  ; $5848: $11 $04 $87
    ld de, $9904                                  ; $584b: $11 $04 $99
    ld de, $a604                                  ; $584e: $11 $04 $a6
    ld de, $b204                                  ; $5851: $11 $04 $b2
    ld de, $c604                                  ; $5854: $11 $04 $c6
    ld de, $e804                                  ; $5857: $11 $04 $e8
    ld de, $e904                                  ; $585a: $11 $04 $e9
    ld de, $f904                                  ; $585d: $11 $04 $f9
    ld de, $fa04                                  ; $5860: $11 $04 $fa
    ld de, $0b04                                  ; $5863: $11 $04 $0b
    ld [de], a                                    ; $5866: $12
    inc b                                         ; $5867: $04
    inc c                                         ; $5868: $0c
    ld [de], a                                    ; $5869: $12
    inc b                                         ; $586a: $04
    add hl, de                                    ; $586b: $19
    ld [de], a                                    ; $586c: $12
    inc b                                         ; $586d: $04
    ld a, [de]                                    ; $586e: $1a
    ld [de], a                                    ; $586f: $12
    inc b                                         ; $5870: $04
    dec l                                         ; $5871: $2d
    ld [de], a                                    ; $5872: $12
    inc b                                         ; $5873: $04
    ld a, $12                                     ; $5874: $3e $12
    inc b                                         ; $5876: $04
    ld d, l                                       ; $5877: $55
    ld [de], a                                    ; $5878: $12
    inc b                                         ; $5879: $04
    ld h, e                                       ; $587a: $63
    ld [de], a                                    ; $587b: $12
    inc b                                         ; $587c: $04
    ld [hl], h                                    ; $587d: $74
    ld [de], a                                    ; $587e: $12
    inc b                                         ; $587f: $04
    ld [hl], l                                    ; $5880: $75
    ld [de], a                                    ; $5881: $12
    inc b                                         ; $5882: $04
    halt                                          ; $5883: $76
    ld [de], a                                    ; $5884: $12
    inc b                                         ; $5885: $04
    ld [hl], a                                    ; $5886: $77
    ld [de], a                                    ; $5887: $12
    inc b                                         ; $5888: $04
    ld a, b                                       ; $5889: $78
    ld [de], a                                    ; $588a: $12
    inc b                                         ; $588b: $04
    adc d                                         ; $588c: $8a
    ld [de], a                                    ; $588d: $12
    inc b                                         ; $588e: $04
    sbc e                                         ; $588f: $9b
    ld [de], a                                    ; $5890: $12
    inc b                                         ; $5891: $04
    xor l                                         ; $5892: $ad
    ld [de], a                                    ; $5893: $12
    inc b                                         ; $5894: $04
    pop bc                                        ; $5895: $c1
    ld [de], a                                    ; $5896: $12
    inc b                                         ; $5897: $04
    rst $10                                       ; $5898: $d7
    ld [de], a                                    ; $5899: $12
    inc b                                         ; $589a: $04
    db $ed                                        ; $589b: $ed
    ld [de], a                                    ; $589c: $12
    inc b                                         ; $589d: $04
    nop                                           ; $589e: $00
    inc de                                        ; $589f: $13
    inc b                                         ; $58a0: $04
    ld c, $13                                     ; $58a1: $0e $13
    inc b                                         ; $58a3: $04
    dec e                                         ; $58a4: $1d
    inc de                                        ; $58a5: $13
    inc b                                         ; $58a6: $04
    dec hl                                        ; $58a7: $2b
    inc de                                        ; $58a8: $13
    inc b                                         ; $58a9: $04
    inc a                                         ; $58aa: $3c
    inc de                                        ; $58ab: $13
    inc b                                         ; $58ac: $04
    ld c, d                                       ; $58ad: $4a
    inc de                                        ; $58ae: $13
    inc b                                         ; $58af: $04
    ld h, l                                       ; $58b0: $65
    inc de                                        ; $58b1: $13
    inc b                                         ; $58b2: $04
    ld h, [hl]                                    ; $58b3: $66
    inc de                                        ; $58b4: $13
    inc b                                         ; $58b5: $04
    ld a, e                                       ; $58b6: $7b
    inc de                                        ; $58b7: $13
    inc b                                         ; $58b8: $04
    adc e                                         ; $58b9: $8b
    inc de                                        ; $58ba: $13
    inc b                                         ; $58bb: $04
    sbc e                                         ; $58bc: $9b
    inc de                                        ; $58bd: $13
    inc b                                         ; $58be: $04
    xor a                                         ; $58bf: $af
    inc de                                        ; $58c0: $13
    inc b                                         ; $58c1: $04
    cp l                                          ; $58c2: $bd
    inc de                                        ; $58c3: $13
    inc b                                         ; $58c4: $04
    rl e                                          ; $58c5: $cb $13
    inc b                                         ; $58c7: $04
    reti                                          ; $58c8: $d9


    inc de                                        ; $58c9: $13
    inc b                                         ; $58ca: $04
    db $eb                                        ; $58cb: $eb
    inc de                                        ; $58cc: $13
    inc b                                         ; $58cd: $04
    ld sp, hl                                     ; $58ce: $f9
    inc de                                        ; $58cf: $13
    inc b                                         ; $58d0: $04
    ld [bc], a                                    ; $58d1: $02
    inc d                                         ; $58d2: $14
    inc b                                         ; $58d3: $04
    dec bc                                        ; $58d4: $0b
    inc d                                         ; $58d5: $14
    inc b                                         ; $58d6: $04
    inc de                                        ; $58d7: $13
    inc d                                         ; $58d8: $14
    inc b                                         ; $58d9: $04
    ld a, [de]                                    ; $58da: $1a
    inc d                                         ; $58db: $14
    inc b                                         ; $58dc: $04
    ld hl, $0414                                  ; $58dd: $21 $14 $04
    add hl, hl                                    ; $58e0: $29
    inc d                                         ; $58e1: $14
    inc b                                         ; $58e2: $04
    ld sp, $0414                                  ; $58e3: $31 $14 $04
    add hl, sp                                    ; $58e6: $39
    inc d                                         ; $58e7: $14
    inc b                                         ; $58e8: $04
    ld b, l                                       ; $58e9: $45
    inc d                                         ; $58ea: $14
    inc b                                         ; $58eb: $04
    ld d, d                                       ; $58ec: $52
    inc d                                         ; $58ed: $14
    inc b                                         ; $58ee: $04
    ld e, [hl]                                    ; $58ef: $5e
    inc d                                         ; $58f0: $14
    inc b                                         ; $58f1: $04
    ld l, e                                       ; $58f2: $6b
    inc d                                         ; $58f3: $14
    inc b                                         ; $58f4: $04
    ld a, b                                       ; $58f5: $78
    inc d                                         ; $58f6: $14
    inc b                                         ; $58f7: $04
    add l                                         ; $58f8: $85
    inc d                                         ; $58f9: $14
    inc b                                         ; $58fa: $04
    sub c                                         ; $58fb: $91
    inc d                                         ; $58fc: $14
    inc b                                         ; $58fd: $04
    and b                                         ; $58fe: $a0
    inc d                                         ; $58ff: $14
    inc b                                         ; $5900: $04
    xor l                                         ; $5901: $ad
    inc d                                         ; $5902: $14
    inc b                                         ; $5903: $04
    or a                                          ; $5904: $b7
    inc d                                         ; $5905: $14
    inc b                                         ; $5906: $04
    call nz, Call_000_0414                        ; $5907: $c4 $14 $04
    call Call_000_0414                            ; $590a: $cd $14 $04
    push de                                       ; $590d: $d5
    inc d                                         ; $590e: $14
    inc b                                         ; $590f: $04
    ldh [rNR14], a                                ; $5910: $e0 $14
    inc b                                         ; $5912: $04
    db $ed                                        ; $5913: $ed
    inc d                                         ; $5914: $14
    inc b                                         ; $5915: $04
    ld hl, sp+$14                                 ; $5916: $f8 $14
    inc b                                         ; $5918: $04
    dec b                                         ; $5919: $05
    dec d                                         ; $591a: $15
    inc b                                         ; $591b: $04
    ld [de], a                                    ; $591c: $12
    dec d                                         ; $591d: $15
    inc b                                         ; $591e: $04
    rra                                           ; $591f: $1f
    dec d                                         ; $5920: $15
    inc b                                         ; $5921: $04
    inc l                                         ; $5922: $2c
    dec d                                         ; $5923: $15
    inc b                                         ; $5924: $04
    add hl, sp                                    ; $5925: $39
    dec d                                         ; $5926: $15
    inc b                                         ; $5927: $04
    ld b, [hl]                                    ; $5928: $46
    dec d                                         ; $5929: $15
    inc b                                         ; $592a: $04
    ld d, c                                       ; $592b: $51
    dec d                                         ; $592c: $15
    inc b                                         ; $592d: $04
    ld e, h                                       ; $592e: $5c
    dec d                                         ; $592f: $15
    inc b                                         ; $5930: $04
    ld h, a                                       ; $5931: $67
    dec d                                         ; $5932: $15
    inc b                                         ; $5933: $04
    ld [hl], d                                    ; $5934: $72
    dec d                                         ; $5935: $15
    inc b                                         ; $5936: $04
    ld a, l                                       ; $5937: $7d
    dec d                                         ; $5938: $15
    inc b                                         ; $5939: $04
    adc b                                         ; $593a: $88
    dec d                                         ; $593b: $15
    inc b                                         ; $593c: $04
    sub l                                         ; $593d: $95
    dec d                                         ; $593e: $15
    inc b                                         ; $593f: $04
    sbc [hl]                                      ; $5940: $9e
    dec d                                         ; $5941: $15
    inc b                                         ; $5942: $04
    and a                                         ; $5943: $a7
    dec d                                         ; $5944: $15
    inc b                                         ; $5945: $04
    or e                                          ; $5946: $b3
    dec d                                         ; $5947: $15
    inc b                                         ; $5948: $04
    cp d                                          ; $5949: $ba
    dec d                                         ; $594a: $15
    inc b                                         ; $594b: $04
    call nz, Call_000_0415                        ; $594c: $c4 $15 $04
    call nc, Call_000_0415                        ; $594f: $d4 $15 $04
    ld [c], a                                     ; $5952: $e2
    dec d                                         ; $5953: $15
    inc b                                         ; $5954: $04
    db $ed                                        ; $5955: $ed
    dec d                                         ; $5956: $15
    inc b                                         ; $5957: $04
    ld hl, sp+$15                                 ; $5958: $f8 $15
    inc b                                         ; $595a: $04
    inc bc                                        ; $595b: $03
    ld d, $04                                     ; $595c: $16 $04
    ld c, $16                                     ; $595e: $0e $16
    inc b                                         ; $5960: $04
    add hl, de                                    ; $5961: $19
    ld d, $04                                     ; $5962: $16 $04
    inc h                                         ; $5964: $24
    ld d, $04                                     ; $5965: $16 $04
    cpl                                           ; $5967: $2f
    ld d, $04                                     ; $5968: $16 $04
    jr c, jr_026_5982                             ; $596a: $38 $16

    inc b                                         ; $596c: $04
    ld b, a                                       ; $596d: $47
    ld d, $04                                     ; $596e: $16 $04
    ld c, [hl]                                    ; $5970: $4e
    ld d, $04                                     ; $5971: $16 $04
    ld d, [hl]                                    ; $5973: $56
    ld d, $04                                     ; $5974: $16 $04
    ld e, [hl]                                    ; $5976: $5e
    ld d, $04                                     ; $5977: $16 $04
    ld l, l                                       ; $5979: $6d
    ld d, $04                                     ; $597a: $16 $04
    ld a, e                                       ; $597c: $7b
    ld d, $04                                     ; $597d: $16 $04
    add a                                         ; $597f: $87
    ld d, $04                                     ; $5980: $16 $04

jr_026_5982:
    sub d                                         ; $5982: $92
    ld d, $04                                     ; $5983: $16 $04
    sbc [hl]                                      ; $5985: $9e
    ld d, $04                                     ; $5986: $16 $04
    xor b                                         ; $5988: $a8
    ld d, $04                                     ; $5989: $16 $04
    or e                                          ; $598b: $b3
    ld d, $04                                     ; $598c: $16 $04
    cp c                                          ; $598e: $b9
    ld d, $04                                     ; $598f: $16 $04
    add $16                                       ; $5991: $c6 $16
    inc b                                         ; $5993: $04
    rst $08                                       ; $5994: $cf
    ld d, $04                                     ; $5995: $16 $04
    call c, Call_000_0416                         ; $5997: $dc $16 $04
    add sp, $16                                   ; $599a: $e8 $16
    inc b                                         ; $599c: $04
    ldh a, [rNR21]                                ; $599d: $f0 $16
    inc b                                         ; $599f: $04
    rst $38                                       ; $59a0: $ff
    ld d, $04                                     ; $59a1: $16 $04
    dec c                                         ; $59a3: $0d
    rla                                           ; $59a4: $17
    inc b                                         ; $59a5: $04

Jump_026_59a6:
    dec e                                         ; $59a6: $1d
    rla                                           ; $59a7: $17
    inc b                                         ; $59a8: $04
    jr z, jr_026_59c2                             ; $59a9: $28 $17

    inc b                                         ; $59ab: $04
    inc sp                                        ; $59ac: $33
    rla                                           ; $59ad: $17
    inc b                                         ; $59ae: $04
    ld b, b                                       ; $59af: $40
    rla                                           ; $59b0: $17
    inc b                                         ; $59b1: $04
    ld c, l                                       ; $59b2: $4d
    rla                                           ; $59b3: $17
    inc b                                         ; $59b4: $04
    ld d, [hl]                                    ; $59b5: $56
    rla                                           ; $59b6: $17
    inc b                                         ; $59b7: $04
    ld h, d                                       ; $59b8: $62
    rla                                           ; $59b9: $17
    inc b                                         ; $59ba: $04
    ld l, b                                       ; $59bb: $68
    rla                                           ; $59bc: $17
    inc b                                         ; $59bd: $04
    ld [hl], e                                    ; $59be: $73
    rla                                           ; $59bf: $17
    inc b                                         ; $59c0: $04
    ld a, a                                       ; $59c1: $7f

jr_026_59c2:
    rla                                           ; $59c2: $17
    inc b                                         ; $59c3: $04
    adc a                                         ; $59c4: $8f
    rla                                           ; $59c5: $17
    inc b                                         ; $59c6: $04
    sbc a                                         ; $59c7: $9f
    rla                                           ; $59c8: $17
    inc b                                         ; $59c9: $04
    xor a                                         ; $59ca: $af
    rla                                           ; $59cb: $17
    inc b                                         ; $59cc: $04
    cp [hl]                                       ; $59cd: $be
    rla                                           ; $59ce: $17
    inc b                                         ; $59cf: $04
    jp z, Jump_000_0417                           ; $59d0: $ca $17 $04

    ret c                                         ; $59d3: $d8

    rla                                           ; $59d4: $17
    inc b                                         ; $59d5: $04
    push hl                                       ; $59d6: $e5
    rla                                           ; $59d7: $17
    inc b                                         ; $59d8: $04
    pop af                                        ; $59d9: $f1
    rla                                           ; $59da: $17
    inc b                                         ; $59db: $04
    ld a, [$0417]                                 ; $59dc: $fa $17 $04
    rlca                                          ; $59df: $07
    jr jr_026_59e6                                ; $59e0: $18 $04

    inc de                                        ; $59e2: $13
    jr jr_026_59e9                                ; $59e3: $18 $04

    dec de                                        ; $59e5: $1b

jr_026_59e6:
    jr jr_026_59ec                                ; $59e6: $18 $04

    dec hl                                        ; $59e8: $2b

jr_026_59e9:
    jr @+$06                                      ; $59e9: $18 $04

    dec [hl]                                      ; $59eb: $35

jr_026_59ec:
    jr jr_026_59f2                                ; $59ec: $18 $04

    ld a, $18                                     ; $59ee: $3e $18
    inc b                                         ; $59f0: $04
    ld c, c                                       ; $59f1: $49

jr_026_59f2:
    jr jr_026_59f8                                ; $59f2: $18 $04

    ld e, b                                       ; $59f4: $58
    jr jr_026_59fb                                ; $59f5: $18 $04

    ld h, [hl]                                    ; $59f7: $66

jr_026_59f8:
    jr jr_026_59fe                                ; $59f8: $18 $04

    halt                                          ; $59fa: $76

jr_026_59fb:
    jr jr_026_5a01                                ; $59fb: $18 $04

    adc h                                         ; $59fd: $8c

jr_026_59fe:
    jr jr_026_5a04                                ; $59fe: $18 $04

    sbc h                                         ; $5a00: $9c

jr_026_5a01:
    jr jr_026_5a07                                ; $5a01: $18 $04

    or d                                          ; $5a03: $b2

jr_026_5a04:
    jr jr_026_5a0a                                ; $5a04: $18 $04

    ret z                                         ; $5a06: $c8

jr_026_5a07:
    jr jr_026_5a0d                                ; $5a07: $18 $04

    ld [c], a                                     ; $5a09: $e2

jr_026_5a0a:
    jr jr_026_5a10                                ; $5a0a: $18 $04

    inc bc                                        ; $5a0c: $03

jr_026_5a0d:
    add hl, de                                    ; $5a0d: $19
    inc b                                         ; $5a0e: $04
    rra                                           ; $5a0f: $1f

jr_026_5a10:
    add hl, de                                    ; $5a10: $19
    inc b                                         ; $5a11: $04
    jr c, jr_026_5a2d                             ; $5a12: $38 $19

    inc b                                         ; $5a14: $04
    ld c, a                                       ; $5a15: $4f
    add hl, de                                    ; $5a16: $19
    inc b                                         ; $5a17: $04
    ld e, a                                       ; $5a18: $5f
    add hl, de                                    ; $5a19: $19
    inc b                                         ; $5a1a: $04
    ld l, h                                       ; $5a1b: $6c
    add hl, de                                    ; $5a1c: $19
    inc b                                         ; $5a1d: $04
    ld a, c                                       ; $5a1e: $79
    add hl, de                                    ; $5a1f: $19
    inc b                                         ; $5a20: $04
    add [hl]                                      ; $5a21: $86
    add hl, de                                    ; $5a22: $19
    inc b                                         ; $5a23: $04
    sbc d                                         ; $5a24: $9a
    add hl, de                                    ; $5a25: $19
    inc b                                         ; $5a26: $04
    or d                                          ; $5a27: $b2
    add hl, de                                    ; $5a28: $19
    inc b                                         ; $5a29: $04
    rst $00                                       ; $5a2a: $c7
    add hl, de                                    ; $5a2b: $19
    inc b                                         ; $5a2c: $04

jr_026_5a2d:
    jp c, Jump_000_0419                           ; $5a2d: $da $19 $04

    rst $28                                       ; $5a30: $ef
    add hl, de                                    ; $5a31: $19
    inc b                                         ; $5a32: $04
    nop                                           ; $5a33: $00
    ld a, [de]                                    ; $5a34: $1a
    inc b                                         ; $5a35: $04
    ld de, $041a                                  ; $5a36: $11 $1a $04
    inc h                                         ; $5a39: $24
    ld a, [de]                                    ; $5a3a: $1a
    inc b                                         ; $5a3b: $04
    add hl, sp                                    ; $5a3c: $39
    ld a, [de]                                    ; $5a3d: $1a
    inc b                                         ; $5a3e: $04
    ld c, a                                       ; $5a3f: $4f
    ld a, [de]                                    ; $5a40: $1a
    inc b                                         ; $5a41: $04
    ld l, l                                       ; $5a42: $6d
    ld a, [de]                                    ; $5a43: $1a
    inc b                                         ; $5a44: $04
    adc e                                         ; $5a45: $8b
    ld a, [de]                                    ; $5a46: $1a
    inc b                                         ; $5a47: $04
    xor c                                         ; $5a48: $a9
    ld a, [de]                                    ; $5a49: $1a
    inc b                                         ; $5a4a: $04
    rst $00                                       ; $5a4b: $c7
    ld a, [de]                                    ; $5a4c: $1a
    inc b                                         ; $5a4d: $04
    push hl                                       ; $5a4e: $e5
    ld a, [de]                                    ; $5a4f: $1a
    inc b                                         ; $5a50: $04
    inc bc                                        ; $5a51: $03
    dec de                                        ; $5a52: $1b
    inc b                                         ; $5a53: $04
    db $10                                        ; $5a54: $10
    dec de                                        ; $5a55: $1b
    inc b                                         ; $5a56: $04
    dec e                                         ; $5a57: $1d
    dec de                                        ; $5a58: $1b
    inc b                                         ; $5a59: $04
    ld a, [hl+]                                   ; $5a5a: $2a
    dec de                                        ; $5a5b: $1b
    inc b                                         ; $5a5c: $04
    scf                                           ; $5a5d: $37
    dec de                                        ; $5a5e: $1b
    inc b                                         ; $5a5f: $04
    ld b, h                                       ; $5a60: $44
    dec de                                        ; $5a61: $1b
    inc b                                         ; $5a62: $04
    ld d, c                                       ; $5a63: $51
    dec de                                        ; $5a64: $1b
    inc b                                         ; $5a65: $04
    ld l, d                                       ; $5a66: $6a
    dec de                                        ; $5a67: $1b
    inc b                                         ; $5a68: $04
    ld a, h                                       ; $5a69: $7c
    dec de                                        ; $5a6a: $1b
    inc b                                         ; $5a6b: $04
    adc [hl]                                      ; $5a6c: $8e
    dec de                                        ; $5a6d: $1b
    inc b                                         ; $5a6e: $04
    and e                                         ; $5a6f: $a3
    dec de                                        ; $5a70: $1b
    inc b                                         ; $5a71: $04
    or e                                          ; $5a72: $b3
    dec de                                        ; $5a73: $1b
    inc b                                         ; $5a74: $04
    push bc                                       ; $5a75: $c5
    dec de                                        ; $5a76: $1b
    inc b                                         ; $5a77: $04
    call nc, Call_000_041b                        ; $5a78: $d4 $1b $04
    push hl                                       ; $5a7b: $e5
    dec de                                        ; $5a7c: $1b
    inc b                                         ; $5a7d: $04
    ld sp, hl                                     ; $5a7e: $f9
    dec de                                        ; $5a7f: $1b
    inc b                                         ; $5a80: $04
    dec c                                         ; $5a81: $0d
    inc e                                         ; $5a82: $1c
    inc b                                         ; $5a83: $04
    ld hl, $041c                                  ; $5a84: $21 $1c $04
    dec [hl]                                      ; $5a87: $35
    inc e                                         ; $5a88: $1c
    inc b                                         ; $5a89: $04

Call_026_5a8a:
    ld c, c                                       ; $5a8a: $49
    inc e                                         ; $5a8b: $1c
    inc b                                         ; $5a8c: $04
    ld e, l                                       ; $5a8d: $5d
    inc e                                         ; $5a8e: $1c
    inc b                                         ; $5a8f: $04
    ld [hl], c                                    ; $5a90: $71
    inc e                                         ; $5a91: $1c
    inc b                                         ; $5a92: $04
    add e                                         ; $5a93: $83
    inc e                                         ; $5a94: $1c
    inc b                                         ; $5a95: $04
    sbc h                                         ; $5a96: $9c
    inc e                                         ; $5a97: $1c
    inc b                                         ; $5a98: $04
    xor e                                         ; $5a99: $ab
    inc e                                         ; $5a9a: $1c
    inc b                                         ; $5a9b: $04
    cp d                                          ; $5a9c: $ba
    inc e                                         ; $5a9d: $1c
    inc b                                         ; $5a9e: $04
    ret                                           ; $5a9f: $c9


    inc e                                         ; $5aa0: $1c
    inc b                                         ; $5aa1: $04
    db $e3                                        ; $5aa2: $e3
    inc e                                         ; $5aa3: $1c
    inc b                                         ; $5aa4: $04
    ei                                            ; $5aa5: $fb
    inc e                                         ; $5aa6: $1c
    inc b                                         ; $5aa7: $04
    ld de, $041d                                  ; $5aa8: $11 $1d $04
    inc h                                         ; $5aab: $24
    dec e                                         ; $5aac: $1d
    inc b                                         ; $5aad: $04
    inc a                                         ; $5aae: $3c
    dec e                                         ; $5aaf: $1d
    inc b                                         ; $5ab0: $04
    ld d, d                                       ; $5ab1: $52
    dec e                                         ; $5ab2: $1d
    inc b                                         ; $5ab3: $04
    ld l, c                                       ; $5ab4: $69
    dec e                                         ; $5ab5: $1d
    inc b                                         ; $5ab6: $04
    halt                                          ; $5ab7: $76
    dec e                                         ; $5ab8: $1d
    inc b                                         ; $5ab9: $04
    adc [hl]                                      ; $5aba: $8e
    dec e                                         ; $5abb: $1d
    inc b                                         ; $5abc: $04
    sbc a                                         ; $5abd: $9f
    dec e                                         ; $5abe: $1d
    inc b                                         ; $5abf: $04
    or [hl]                                       ; $5ac0: $b6
    dec e                                         ; $5ac1: $1d
    inc b                                         ; $5ac2: $04
    pop de                                        ; $5ac3: $d1
    dec e                                         ; $5ac4: $1d
    inc b                                         ; $5ac5: $04
    db $e4                                        ; $5ac6: $e4
    dec e                                         ; $5ac7: $1d
    inc b                                         ; $5ac8: $04
    ei                                            ; $5ac9: $fb
    dec e                                         ; $5aca: $1d
    inc b                                         ; $5acb: $04
    ld d, $1e                                     ; $5acc: $16 $1e
    inc b                                         ; $5ace: $04
    ld l, $1e                                     ; $5acf: $2e $1e
    inc b                                         ; $5ad1: $04
    ccf                                           ; $5ad2: $3f
    ld e, $04                                     ; $5ad3: $1e $04
    ld d, b                                       ; $5ad5: $50
    ld e, $04                                     ; $5ad6: $1e $04
    ld h, b                                       ; $5ad8: $60
    ld e, $04                                     ; $5ad9: $1e $04
    ld [hl], c                                    ; $5adb: $71
    ld e, $04                                     ; $5adc: $1e $04
    add e                                         ; $5ade: $83
    ld e, $04                                     ; $5adf: $1e $04
    sub d                                         ; $5ae1: $92
    ld e, $04                                     ; $5ae2: $1e $04
    and a                                         ; $5ae4: $a7
    ld e, $04                                     ; $5ae5: $1e $04
    or a                                          ; $5ae7: $b7
    ld e, $04                                     ; $5ae8: $1e $04
    rr [hl]                                       ; $5aea: $cb $1e
    inc b                                         ; $5aec: $04
    jp c, Jump_000_041e                           ; $5aed: $da $1e $04

    jp hl                                         ; $5af0: $e9


    ld e, $04                                     ; $5af1: $1e $04
    ld hl, sp+$1e                                 ; $5af3: $f8 $1e
    inc b                                         ; $5af5: $04
    ld a, [bc]                                    ; $5af6: $0a
    rra                                           ; $5af7: $1f
    inc b                                         ; $5af8: $04
    ld [hl+], a                                   ; $5af9: $22
    rra                                           ; $5afa: $1f
    inc b                                         ; $5afb: $04
    ld [hl-], a                                   ; $5afc: $32
    rra                                           ; $5afd: $1f
    inc b                                         ; $5afe: $04
    ld c, b                                       ; $5aff: $48
    rra                                           ; $5b00: $1f
    inc b                                         ; $5b01: $04
    ld h, c                                       ; $5b02: $61
    rra                                           ; $5b03: $1f
    inc b                                         ; $5b04: $04
    ld [hl], d                                    ; $5b05: $72
    rra                                           ; $5b06: $1f
    inc b                                         ; $5b07: $04
    adc d                                         ; $5b08: $8a
    rra                                           ; $5b09: $1f
    inc b                                         ; $5b0a: $04
    and b                                         ; $5b0b: $a0
    rra                                           ; $5b0c: $1f
    inc b                                         ; $5b0d: $04
    or b                                          ; $5b0e: $b0
    rra                                           ; $5b0f: $1f
    inc b                                         ; $5b10: $04
    pop bc                                        ; $5b11: $c1
    rra                                           ; $5b12: $1f
    inc b                                         ; $5b13: $04
    rst $10                                       ; $5b14: $d7
    rra                                           ; $5b15: $1f
    inc b                                         ; $5b16: $04
    jp hl                                         ; $5b17: $e9


    rra                                           ; $5b18: $1f
    inc b                                         ; $5b19: $04
    db $fc                                        ; $5b1a: $fc
    rra                                           ; $5b1b: $1f
    inc b                                         ; $5b1c: $04
    inc c                                         ; $5b1d: $0c
    jr nz, jr_026_5b24                            ; $5b1e: $20 $04

    jp z, $0420                                   ; $5b20: $ca $20 $04

    db $ec                                        ; $5b23: $ec

jr_026_5b24:
    jr nz, jr_026_5b2a                            ; $5b24: $20 $04

    db $f4                                        ; $5b26: $f4
    jr nz, jr_026_5b2d                            ; $5b27: $20 $04

    db $fd                                        ; $5b29: $fd

jr_026_5b2a:
    jr nz, jr_026_5b30                            ; $5b2a: $20 $04

    dec c                                         ; $5b2c: $0d

jr_026_5b2d:
    ld hl, $1804                                  ; $5b2d: $21 $04 $18

jr_026_5b30:
    ld hl, $2904                                  ; $5b30: $21 $04 $29
    ld hl, $3504                                  ; $5b33: $21 $04 $35
    ld hl, $4304                                  ; $5b36: $21 $04 $43
    ld hl, $4804                                  ; $5b39: $21 $04 $48
    ld hl, $4f04                                  ; $5b3c: $21 $04 $4f
    ld hl, $5604                                  ; $5b3f: $21 $04 $56
    ld hl, $5d04                                  ; $5b42: $21 $04 $5d
    ld hl, $6404                                  ; $5b45: $21 $04 $64
    ld hl, $6b04                                  ; $5b48: $21 $04 $6b
    ld hl, $8104                                  ; $5b4b: $21 $04 $81
    ld hl, $8f04                                  ; $5b4e: $21 $04 $8f
    ld hl, $9a04                                  ; $5b51: $21 $04 $9a
    ld hl, $a404                                  ; $5b54: $21 $04 $a4
    ld hl, $af04                                  ; $5b57: $21 $04 $af
    ld hl, $bf04                                  ; $5b5a: $21 $04 $bf
    ld hl, $c904                                  ; $5b5d: $21 $04 $c9
    ld hl, $d004                                  ; $5b60: $21 $04 $d0
    ld hl, $d904                                  ; $5b63: $21 $04 $d9
    ld hl, $df04                                  ; $5b66: $21 $04 $df
    ld hl, $e504                                  ; $5b69: $21 $04 $e5
    ld hl, $ee04                                  ; $5b6c: $21 $04 $ee
    ld hl, $f804                                  ; $5b6f: $21 $04 $f8
    ld hl, $0404                                  ; $5b72: $21 $04 $04
    ld [hl+], a                                   ; $5b75: $22
    inc b                                         ; $5b76: $04
    ld c, $22                                     ; $5b77: $0e $22
    inc b                                         ; $5b79: $04
    rla                                           ; $5b7a: $17
    ld [hl+], a                                   ; $5b7b: $22
    inc b                                         ; $5b7c: $04
    rra                                           ; $5b7d: $1f
    ld [hl+], a                                   ; $5b7e: $22
    inc b                                         ; $5b7f: $04
    daa                                           ; $5b80: $27
    ld [hl+], a                                   ; $5b81: $22
    inc b                                         ; $5b82: $04
    jr nc, jr_026_5ba7                            ; $5b83: $30 $22

    inc b                                         ; $5b85: $04
    dec a                                         ; $5b86: $3d
    ld [hl+], a                                   ; $5b87: $22
    inc b                                         ; $5b88: $04
    ld b, h                                       ; $5b89: $44
    ld [hl+], a                                   ; $5b8a: $22
    inc b                                         ; $5b8b: $04
    ld c, d                                       ; $5b8c: $4a
    ld [hl+], a                                   ; $5b8d: $22
    inc b                                         ; $5b8e: $04
    ld d, b                                       ; $5b8f: $50
    ld [hl+], a                                   ; $5b90: $22
    inc b                                         ; $5b91: $04
    ld e, h                                       ; $5b92: $5c
    ld [hl+], a                                   ; $5b93: $22
    inc b                                         ; $5b94: $04
    ld l, h                                       ; $5b95: $6c
    ld [hl+], a                                   ; $5b96: $22
    inc b                                         ; $5b97: $04
    ld [hl], a                                    ; $5b98: $77
    ld [hl+], a                                   ; $5b99: $22
    inc b                                         ; $5b9a: $04
    add d                                         ; $5b9b: $82
    ld [hl+], a                                   ; $5b9c: $22
    inc b                                         ; $5b9d: $04
    adc [hl]                                      ; $5b9e: $8e
    ld [hl+], a                                   ; $5b9f: $22
    inc b                                         ; $5ba0: $04
    sbc [hl]                                      ; $5ba1: $9e
    ld [hl+], a                                   ; $5ba2: $22
    inc b                                         ; $5ba3: $04
    and h                                         ; $5ba4: $a4
    ld [hl+], a                                   ; $5ba5: $22
    inc b                                         ; $5ba6: $04

jr_026_5ba7:
    or c                                          ; $5ba7: $b1
    ld [hl+], a                                   ; $5ba8: $22
    inc b                                         ; $5ba9: $04
    cp c                                          ; $5baa: $b9
    ld [hl+], a                                   ; $5bab: $22
    inc b                                         ; $5bac: $04
    cp l                                          ; $5bad: $bd
    ld [hl+], a                                   ; $5bae: $22
    inc b                                         ; $5baf: $04
    jp nz, Jump_000_0422                          ; $5bb0: $c2 $22 $04

    call Call_000_0422                            ; $5bb3: $cd $22 $04
    pop af                                        ; $5bb6: $f1
    ld [hl+], a                                   ; $5bb7: $22
    inc b                                         ; $5bb8: $04
    db $fd                                        ; $5bb9: $fd
    ld [hl+], a                                   ; $5bba: $22
    inc b                                         ; $5bbb: $04
    ld [$0423], sp                                ; $5bbc: $08 $23 $04
    ld l, $23                                     ; $5bbf: $2e $23
    inc b                                         ; $5bc1: $04
    ld c, [hl]                                    ; $5bc2: $4e
    inc hl                                        ; $5bc3: $23
    inc b                                         ; $5bc4: $04
    ld l, e                                       ; $5bc5: $6b
    inc hl                                        ; $5bc6: $23
    inc b                                         ; $5bc7: $04
    adc b                                         ; $5bc8: $88
    inc hl                                        ; $5bc9: $23
    inc b                                         ; $5bca: $04
    and h                                         ; $5bcb: $a4
    inc hl                                        ; $5bcc: $23
    inc b                                         ; $5bcd: $04
    cp a                                          ; $5bce: $bf
    inc hl                                        ; $5bcf: $23
    inc b                                         ; $5bd0: $04
    push de                                       ; $5bd1: $d5
    inc hl                                        ; $5bd2: $23
    inc b                                         ; $5bd3: $04
    di                                            ; $5bd4: $f3
    inc hl                                        ; $5bd5: $23
    inc b                                         ; $5bd6: $04
    dec c                                         ; $5bd7: $0d
    inc h                                         ; $5bd8: $24
    inc b                                         ; $5bd9: $04
    dec h                                         ; $5bda: $25
    inc h                                         ; $5bdb: $24
    inc b                                         ; $5bdc: $04
    scf                                           ; $5bdd: $37
    inc h                                         ; $5bde: $24
    inc b                                         ; $5bdf: $04
    ld c, b                                       ; $5be0: $48
    inc h                                         ; $5be1: $24
    inc b                                         ; $5be2: $04
    ld e, b                                       ; $5be3: $58
    inc h                                         ; $5be4: $24
    inc b                                         ; $5be5: $04
    ld [hl], h                                    ; $5be6: $74
    inc h                                         ; $5be7: $24
    inc b                                         ; $5be8: $04
    add e                                         ; $5be9: $83
    inc h                                         ; $5bea: $24
    inc b                                         ; $5beb: $04
    sub l                                         ; $5bec: $95
    inc h                                         ; $5bed: $24
    inc b                                         ; $5bee: $04
    sbc a                                         ; $5bef: $9f
    inc h                                         ; $5bf0: $24
    inc b                                         ; $5bf1: $04
    xor c                                         ; $5bf2: $a9
    inc h                                         ; $5bf3: $24
    inc b                                         ; $5bf4: $04
    or l                                          ; $5bf5: $b5
    inc h                                         ; $5bf6: $24
    inc b                                         ; $5bf7: $04
    pop bc                                        ; $5bf8: $c1
    inc h                                         ; $5bf9: $24
    inc b                                         ; $5bfa: $04
    call z, $0424                                 ; $5bfb: $cc $24 $04
    sub $24                                       ; $5bfe: $d6 $24
    inc b                                         ; $5c00: $04
    rst $28                                       ; $5c01: $ef
    inc h                                         ; $5c02: $24
    inc b                                         ; $5c03: $04
    ld [$0425], sp                                ; $5c04: $08 $25 $04
    jr z, jr_026_5c2e                             ; $5c07: $28 $25

    inc b                                         ; $5c09: $04
    ld d, b                                       ; $5c0a: $50
    dec h                                         ; $5c0b: $25
    inc b                                         ; $5c0c: $04
    ld a, a                                       ; $5c0d: $7f
    dec h                                         ; $5c0e: $25

Jump_026_5c0f:
    inc b                                         ; $5c0f: $04
    sub b                                         ; $5c10: $90
    dec h                                         ; $5c11: $25
    inc b                                         ; $5c12: $04
    and b                                         ; $5c13: $a0
    dec h                                         ; $5c14: $25
    inc b                                         ; $5c15: $04
    xor [hl]                                      ; $5c16: $ae
    dec h                                         ; $5c17: $25
    inc b                                         ; $5c18: $04
    cp c                                          ; $5c19: $b9
    dec h                                         ; $5c1a: $25
    inc b                                         ; $5c1b: $04
    adc $25                                       ; $5c1c: $ce $25
    inc b                                         ; $5c1e: $04
    db $db                                        ; $5c1f: $db
    dec h                                         ; $5c20: $25
    inc b                                         ; $5c21: $04
    db $e4                                        ; $5c22: $e4
    dec h                                         ; $5c23: $25
    inc b                                         ; $5c24: $04
    di                                            ; $5c25: $f3
    dec h                                         ; $5c26: $25
    inc b                                         ; $5c27: $04
    jr @+$28                                      ; $5c28: $18 $26

    inc b                                         ; $5c2a: $04
    ld b, b                                       ; $5c2b: $40
    ld h, $04                                     ; $5c2c: $26 $04

jr_026_5c2e:
    ld h, a                                       ; $5c2e: $67
    ld h, $04                                     ; $5c2f: $26 $04
    adc a                                         ; $5c31: $8f
    ld h, $04                                     ; $5c32: $26 $04
    or [hl]                                       ; $5c34: $b6
    ld h, $04                                     ; $5c35: $26 $04
    rst $20                                       ; $5c37: $e7
    ld h, $04                                     ; $5c38: $26 $04
    dec c                                         ; $5c3a: $0d
    daa                                           ; $5c3b: $27
    inc b                                         ; $5c3c: $04
    dec sp                                        ; $5c3d: $3b
    daa                                           ; $5c3e: $27
    inc b                                         ; $5c3f: $04
    ld l, h                                       ; $5c40: $6c
    daa                                           ; $5c41: $27
    inc b                                         ; $5c42: $04
    cp c                                          ; $5c43: $b9
    daa                                           ; $5c44: $27
    inc b                                         ; $5c45: $04
    push af                                       ; $5c46: $f5
    daa                                           ; $5c47: $27
    inc b                                         ; $5c48: $04
    ld hl, $0428                                  ; $5c49: $21 $28 $04
    ld e, c                                       ; $5c4c: $59
    jr z, jr_026_5c53                             ; $5c4d: $28 $04

    jr c, jr_026_5c7a                             ; $5c4f: $38 $29

    inc b                                         ; $5c51: $04
    ld b, c                                       ; $5c52: $41

jr_026_5c53:
    add hl, hl                                    ; $5c53: $29
    inc b                                         ; $5c54: $04
    ld c, c                                       ; $5c55: $49
    add hl, hl                                    ; $5c56: $29
    inc b                                         ; $5c57: $04
    ld c, [hl]                                    ; $5c58: $4e
    add hl, hl                                    ; $5c59: $29
    inc b                                         ; $5c5a: $04
    ld d, [hl]                                    ; $5c5b: $56
    add hl, hl                                    ; $5c5c: $29
    inc b                                         ; $5c5d: $04
    ld h, c                                       ; $5c5e: $61
    add hl, hl                                    ; $5c5f: $29
    inc b                                         ; $5c60: $04
    ld l, d                                       ; $5c61: $6a
    add hl, hl                                    ; $5c62: $29
    inc b                                         ; $5c63: $04
    ld [hl], e                                    ; $5c64: $73
    add hl, hl                                    ; $5c65: $29
    inc b                                         ; $5c66: $04
    ld a, l                                       ; $5c67: $7d
    add hl, hl                                    ; $5c68: $29
    inc b                                         ; $5c69: $04
    add [hl]                                      ; $5c6a: $86
    add hl, hl                                    ; $5c6b: $29
    inc b                                         ; $5c6c: $04
    adc [hl]                                      ; $5c6d: $8e
    add hl, hl                                    ; $5c6e: $29
    inc b                                         ; $5c6f: $04
    sub a                                         ; $5c70: $97
    add hl, hl                                    ; $5c71: $29
    inc b                                         ; $5c72: $04
    sbc h                                         ; $5c73: $9c
    add hl, hl                                    ; $5c74: $29
    inc b                                         ; $5c75: $04
    and d                                         ; $5c76: $a2
    add hl, hl                                    ; $5c77: $29
    inc b                                         ; $5c78: $04
    xor b                                         ; $5c79: $a8

jr_026_5c7a:
    add hl, hl                                    ; $5c7a: $29
    inc b                                         ; $5c7b: $04
    or c                                          ; $5c7c: $b1
    add hl, hl                                    ; $5c7d: $29
    inc b                                         ; $5c7e: $04
    cp d                                          ; $5c7f: $ba
    add hl, hl                                    ; $5c80: $29
    inc b                                         ; $5c81: $04
    cp a                                          ; $5c82: $bf
    add hl, hl                                    ; $5c83: $29
    inc b                                         ; $5c84: $04
    jp z, Jump_000_0429                           ; $5c85: $ca $29 $04

    push de                                       ; $5c88: $d5
    add hl, hl                                    ; $5c89: $29
    inc b                                         ; $5c8a: $04
    ldh [$29], a                                  ; $5c8b: $e0 $29
    inc b                                         ; $5c8d: $04
    db $e4                                        ; $5c8e: $e4
    add hl, hl                                    ; $5c8f: $29
    inc b                                         ; $5c90: $04
    ld [$0429], a                                 ; $5c91: $ea $29 $04
    ldh a, [$29]                                  ; $5c94: $f0 $29
    inc b                                         ; $5c96: $04
    rst $30                                       ; $5c97: $f7
    add hl, hl                                    ; $5c98: $29
    inc b                                         ; $5c99: $04
    ei                                            ; $5c9a: $fb
    add hl, hl                                    ; $5c9b: $29
    inc b                                         ; $5c9c: $04
    ld [bc], a                                    ; $5c9d: $02
    ld a, [hl+]                                   ; $5c9e: $2a
    inc b                                         ; $5c9f: $04
    ld [$042a], sp                                ; $5ca0: $08 $2a $04
    ld de, $042a                                  ; $5ca3: $11 $2a $04
    add hl, de                                    ; $5ca6: $19
    ld a, [hl+]                                   ; $5ca7: $2a
    inc b                                         ; $5ca8: $04
    rra                                           ; $5ca9: $1f
    ld a, [hl+]                                   ; $5caa: $2a
    inc b                                         ; $5cab: $04
    jr z, jr_026_5cd8                             ; $5cac: $28 $2a

    inc b                                         ; $5cae: $04
    inc sp                                        ; $5caf: $33
    ld a, [hl+]                                   ; $5cb0: $2a
    inc b                                         ; $5cb1: $04
    ld a, $2a                                     ; $5cb2: $3e $2a
    inc b                                         ; $5cb4: $04
    ld b, [hl]                                    ; $5cb5: $46
    ld a, [hl+]                                   ; $5cb6: $2a
    inc b                                         ; $5cb7: $04
    ld d, c                                       ; $5cb8: $51
    ld a, [hl+]                                   ; $5cb9: $2a
    inc b                                         ; $5cba: $04
    ld e, h                                       ; $5cbb: $5c

Jump_026_5cbc:
    ld a, [hl+]                                   ; $5cbc: $2a
    inc b                                         ; $5cbd: $04
    ld l, b                                       ; $5cbe: $68
    ld a, [hl+]                                   ; $5cbf: $2a
    inc b                                         ; $5cc0: $04
    ld [hl], e                                    ; $5cc1: $73
    ld a, [hl+]                                   ; $5cc2: $2a
    inc b                                         ; $5cc3: $04
    ld a, e                                       ; $5cc4: $7b
    ld a, [hl+]                                   ; $5cc5: $2a
    inc b                                         ; $5cc6: $04
    add l                                         ; $5cc7: $85
    ld a, [hl+]                                   ; $5cc8: $2a
    inc b                                         ; $5cc9: $04
    adc h                                         ; $5cca: $8c
    ld a, [hl+]                                   ; $5ccb: $2a
    inc b                                         ; $5ccc: $04
    sub d                                         ; $5ccd: $92
    ld a, [hl+]                                   ; $5cce: $2a
    inc b                                         ; $5ccf: $04
    sbc c                                         ; $5cd0: $99
    ld a, [hl+]                                   ; $5cd1: $2a
    inc b                                         ; $5cd2: $04
    and b                                         ; $5cd3: $a0
    ld a, [hl+]                                   ; $5cd4: $2a
    inc b                                         ; $5cd5: $04
    xor d                                         ; $5cd6: $aa
    ld a, [hl+]                                   ; $5cd7: $2a

jr_026_5cd8:
    inc b                                         ; $5cd8: $04
    or l                                          ; $5cd9: $b5
    ld a, [hl+]                                   ; $5cda: $2a
    inc b                                         ; $5cdb: $04
    cp e                                          ; $5cdc: $bb
    ld a, [hl+]                                   ; $5cdd: $2a
    inc b                                         ; $5cde: $04
    pop bc                                        ; $5cdf: $c1
    ld a, [hl+]                                   ; $5ce0: $2a
    inc b                                         ; $5ce1: $04
    sra d                                         ; $5ce2: $cb $2a
    inc b                                         ; $5ce4: $04
    push de                                       ; $5ce5: $d5
    ld a, [hl+]                                   ; $5ce6: $2a
    inc b                                         ; $5ce7: $04
    ldh [$2a], a                                  ; $5ce8: $e0 $2a
    inc b                                         ; $5cea: $04
    db $f4                                        ; $5ceb: $f4
    ld a, [hl+]                                   ; $5cec: $2a
    inc b                                         ; $5ced: $04
    rrca                                          ; $5cee: $0f
    dec hl                                        ; $5cef: $2b
    inc b                                         ; $5cf0: $04
    ld e, d                                       ; $5cf1: $5a
    dec hl                                        ; $5cf2: $2b
    inc b                                         ; $5cf3: $04
    sub e                                         ; $5cf4: $93
    dec hl                                        ; $5cf5: $2b
    inc b                                         ; $5cf6: $04
    cp a                                          ; $5cf7: $bf
    dec hl                                        ; $5cf8: $2b
    inc b                                         ; $5cf9: $04
    db $e3                                        ; $5cfa: $e3
    dec hl                                        ; $5cfb: $2b
    inc b                                         ; $5cfc: $04
    db $10                                        ; $5cfd: $10
    inc l                                         ; $5cfe: $2c
    inc b                                         ; $5cff: $04
    daa                                           ; $5d00: $27
    inc l                                         ; $5d01: $2c
    inc b                                         ; $5d02: $04
    ld e, h                                       ; $5d03: $5c
    inc l                                         ; $5d04: $2c
    inc b                                         ; $5d05: $04
    add [hl]                                      ; $5d06: $86
    inc l                                         ; $5d07: $2c
    inc b                                         ; $5d08: $04
    and a                                         ; $5d09: $a7
    inc l                                         ; $5d0a: $2c
    inc b                                         ; $5d0b: $04
    ret nz                                        ; $5d0c: $c0

    inc l                                         ; $5d0d: $2c
    inc b                                         ; $5d0e: $04
    rst $28                                       ; $5d0f: $ef
    inc l                                         ; $5d10: $2c
    inc b                                         ; $5d11: $04
    dec e                                         ; $5d12: $1d
    dec l                                         ; $5d13: $2d
    inc b                                         ; $5d14: $04
    ld d, c                                       ; $5d15: $51
    dec l                                         ; $5d16: $2d
    inc b                                         ; $5d17: $04
    ld a, a                                       ; $5d18: $7f
    dec l                                         ; $5d19: $2d
    inc b                                         ; $5d1a: $04
    or c                                          ; $5d1b: $b1
    dec l                                         ; $5d1c: $2d
    inc b                                         ; $5d1d: $04
    db $db                                        ; $5d1e: $db
    dec l                                         ; $5d1f: $2d
    inc b                                         ; $5d20: $04
    inc bc                                        ; $5d21: $03
    ld l, $04                                     ; $5d22: $2e $04
    add hl, hl                                    ; $5d24: $29
    ld l, $04                                     ; $5d25: $2e $04
    ld c, a                                       ; $5d27: $4f
    ld l, $04                                     ; $5d28: $2e $04
    ld a, c                                       ; $5d2a: $79
    ld l, $04                                     ; $5d2b: $2e $04
    sbc h                                         ; $5d2d: $9c
    ld l, $04                                     ; $5d2e: $2e $04
    rst $10                                       ; $5d30: $d7
    ld l, $04                                     ; $5d31: $2e $04
    push af                                       ; $5d33: $f5
    ld l, $04                                     ; $5d34: $2e $04
    add hl, de                                    ; $5d36: $19
    cpl                                           ; $5d37: $2f
    inc b                                         ; $5d38: $04
    dec a                                         ; $5d39: $3d
    cpl                                           ; $5d3a: $2f
    inc b                                         ; $5d3b: $04
    ld e, l                                       ; $5d3c: $5d
    cpl                                           ; $5d3d: $2f
    inc b                                         ; $5d3e: $04
    add b                                         ; $5d3f: $80
    cpl                                           ; $5d40: $2f
    inc b                                         ; $5d41: $04
    xor [hl]                                      ; $5d42: $ae
    cpl                                           ; $5d43: $2f
    inc b                                         ; $5d44: $04
    rst $10                                       ; $5d45: $d7
    cpl                                           ; $5d46: $2f
    inc b                                         ; $5d47: $04
    ld de, $0430                                  ; $5d48: $11 $30 $04
    ld b, a                                       ; $5d4b: $47
    jr nc, jr_026_5d52                            ; $5d4c: $30 $04

    add c                                         ; $5d4e: $81
    jr nc, @+$06                                  ; $5d4f: $30 $04

    sbc c                                         ; $5d51: $99

jr_026_5d52:
    jr nc, jr_026_5d58                            ; $5d52: $30 $04

    jp nc, Jump_000_0430                          ; $5d54: $d2 $30 $04

    rst $30                                       ; $5d57: $f7

jr_026_5d58:
    jr nc, jr_026_5d5e                            ; $5d58: $30 $04

    ld de, $0431                                  ; $5d5a: $11 $31 $04
    ld b, c                                       ; $5d5d: $41

jr_026_5d5e:
    ld sp, $6d04                                  ; $5d5e: $31 $04 $6d
    ld sp, $9404                                  ; $5d61: $31 $04 $94
    ld sp, $c404                                  ; $5d64: $31 $04 $c4
    ld sp, $f404                                  ; $5d67: $31 $04 $f4
    ld sp, $1604                                  ; $5d6a: $31 $04 $16
    ld [hl-], a                                   ; $5d6d: $32
    inc b                                         ; $5d6e: $04
    dec sp                                        ; $5d6f: $3b
    ld [hl-], a                                   ; $5d70: $32
    inc b                                         ; $5d71: $04
    ld h, c                                       ; $5d72: $61
    ld [hl-], a                                   ; $5d73: $32
    inc b                                         ; $5d74: $04
    sub d                                         ; $5d75: $92
    ld [hl-], a                                   ; $5d76: $32
    inc b                                         ; $5d77: $04
    cp h                                          ; $5d78: $bc
    ld [hl-], a                                   ; $5d79: $32
    inc b                                         ; $5d7a: $04
    rst $28                                       ; $5d7b: $ef
    ld [hl-], a                                   ; $5d7c: $32
    inc b                                         ; $5d7d: $04
    dec d                                         ; $5d7e: $15
    inc sp                                        ; $5d7f: $33
    inc b                                         ; $5d80: $04
    ld e, l                                       ; $5d81: $5d
    inc sp                                        ; $5d82: $33
    inc b                                         ; $5d83: $04
    dec h                                         ; $5d84: $25

Jump_026_5d85:
    inc [hl]                                      ; $5d85: $34
    inc b                                         ; $5d86: $04
    ld a, a                                       ; $5d87: $7f
    inc [hl]                                      ; $5d88: $34
    inc b                                         ; $5d89: $04
    db $ec                                        ; $5d8a: $ec
    inc [hl]                                      ; $5d8b: $34
    inc b                                         ; $5d8c: $04
    ld l, [hl]                                    ; $5d8d: $6e
    dec [hl]                                      ; $5d8e: $35
    inc b                                         ; $5d8f: $04
    cp l                                          ; $5d90: $bd
    dec [hl]                                      ; $5d91: $35
    inc b                                         ; $5d92: $04
    ld a, c                                       ; $5d93: $79
    ld [hl], $04                                  ; $5d94: $36 $04
    db $f4                                        ; $5d96: $f4
    ld [hl], $04                                  ; $5d97: $36 $04
    ld d, $38                                     ; $5d99: $16 $38
    inc b                                         ; $5d9b: $04
    and c                                         ; $5d9c: $a1
    jr c, jr_026_5da3                             ; $5d9d: $38 $04

    jp nc, $0438                                  ; $5d9f: $d2 $38 $04

    dec h                                         ; $5da2: $25

jr_026_5da3:
    add hl, sp                                    ; $5da3: $39
    inc b                                         ; $5da4: $04
    ld c, c                                       ; $5da5: $49
    add hl, sp                                    ; $5da6: $39
    inc b                                         ; $5da7: $04
    ld a, [hl]                                    ; $5da8: $7e
    add hl, sp                                    ; $5da9: $39
    inc b                                         ; $5daa: $04
    and e                                         ; $5dab: $a3
    add hl, sp                                    ; $5dac: $39
    inc b                                         ; $5dad: $04
    ret nc                                        ; $5dae: $d0

    add hl, sp                                    ; $5daf: $39
    inc b                                         ; $5db0: $04
    xor $39                                       ; $5db1: $ee $39
    inc b                                         ; $5db3: $04
    inc d                                         ; $5db4: $14
    ld a, [hl-]                                   ; $5db5: $3a
    inc b                                         ; $5db6: $04
    dec [hl]                                      ; $5db7: $35
    ld a, [hl-]                                   ; $5db8: $3a
    inc b                                         ; $5db9: $04
    ld d, a                                       ; $5dba: $57
    ld a, [hl-]                                   ; $5dbb: $3a
    inc b                                         ; $5dbc: $04
    halt                                          ; $5dbd: $76
    ld a, [hl-]                                   ; $5dbe: $3a
    inc b                                         ; $5dbf: $04
    sbc b                                         ; $5dc0: $98
    ld a, [hl-]                                   ; $5dc1: $3a
    inc b                                         ; $5dc2: $04
    or c                                          ; $5dc3: $b1
    ld a, [hl-]                                   ; $5dc4: $3a
    inc b                                         ; $5dc5: $04
    call nz, $043a                                ; $5dc6: $c4 $3a $04
    rst $20                                       ; $5dc9: $e7
    ld a, [hl-]                                   ; $5dca: $3a
    inc b                                         ; $5dcb: $04
    ld [$043b], sp                                ; $5dcc: $08 $3b $04
    dec sp                                        ; $5dcf: $3b
    dec sp                                        ; $5dd0: $3b
    inc b                                         ; $5dd1: $04
    ld d, [hl]                                    ; $5dd2: $56
    dec sp                                        ; $5dd3: $3b
    inc b                                         ; $5dd4: $04
    add d                                         ; $5dd5: $82
    dec sp                                        ; $5dd6: $3b
    inc b                                         ; $5dd7: $04
    and [hl]                                      ; $5dd8: $a6
    dec sp                                        ; $5dd9: $3b
    inc b                                         ; $5dda: $04
    ret nc                                        ; $5ddb: $d0

    dec sp                                        ; $5ddc: $3b
    inc b                                         ; $5ddd: $04
    or $3b                                        ; $5dde: $f6 $3b
    inc b                                         ; $5de0: $04
    rrca                                          ; $5de1: $0f
    inc a                                         ; $5de2: $3c
    inc b                                         ; $5de3: $04
    jr c, jr_026_5e22                             ; $5de4: $38 $3c

    inc b                                         ; $5de6: $04
    ld d, e                                       ; $5de7: $53
    inc a                                         ; $5de8: $3c
    inc b                                         ; $5de9: $04
    ld a, c                                       ; $5dea: $79
    inc a                                         ; $5deb: $3c
    inc b                                         ; $5dec: $04
    sbc [hl]                                      ; $5ded: $9e
    inc a                                         ; $5dee: $3c
    inc b                                         ; $5def: $04
    cp d                                          ; $5df0: $ba
    inc a                                         ; $5df1: $3c
    inc b                                         ; $5df2: $04
    sbc $3c                                       ; $5df3: $de $3c
    inc b                                         ; $5df5: $04
    ld bc, $043d                                  ; $5df6: $01 $3d $04
    ld [hl+], a                                   ; $5df9: $22
    dec a                                         ; $5dfa: $3d
    inc b                                         ; $5dfb: $04
    ld c, e                                       ; $5dfc: $4b
    dec a                                         ; $5dfd: $3d
    inc b                                         ; $5dfe: $04
    ld a, a                                       ; $5dff: $7f
    dec a                                         ; $5e00: $3d
    inc b                                         ; $5e01: $04
    and [hl]                                      ; $5e02: $a6
    dec a                                         ; $5e03: $3d
    inc b                                         ; $5e04: $04
    srl l                                         ; $5e05: $cb $3d
    inc b                                         ; $5e07: $04
    ld [$043d], a                                 ; $5e08: $ea $3d $04
    rst $30                                       ; $5e0b: $f7
    dec a                                         ; $5e0c: $3d
    inc b                                         ; $5e0d: $04
    ld e, $3e                                     ; $5e0e: $1e $3e
    inc b                                         ; $5e10: $04
    ld a, $3e                                     ; $5e11: $3e $3e
    inc b                                         ; $5e13: $04
    ld d, a                                       ; $5e14: $57
    ld a, $04                                     ; $5e15: $3e $04
    ld a, c                                       ; $5e17: $79
    ld a, $04                                     ; $5e18: $3e $04
    and d                                         ; $5e1a: $a2
    ld a, $04                                     ; $5e1b: $3e $04
    cp c                                          ; $5e1d: $b9
    ld a, $04                                     ; $5e1e: $3e $04
    ldh [$3e], a                                  ; $5e20: $e0 $3e

jr_026_5e22:
    inc b                                         ; $5e22: $04
    ld hl, sp+$3e                                 ; $5e23: $f8 $3e
    inc b                                         ; $5e25: $04
    ccf                                           ; $5e26: $3f
    ccf                                           ; $5e27: $3f
    inc b                                         ; $5e28: $04
    ld e, a                                       ; $5e29: $5f
    ccf                                           ; $5e2a: $3f
    inc b                                         ; $5e2b: $04
    adc d                                         ; $5e2c: $8a
    ccf                                           ; $5e2d: $3f
    inc b                                         ; $5e2e: $04
    or l                                          ; $5e2f: $b5
    ccf                                           ; $5e30: $3f
    dec b                                         ; $5e31: $05
    ld bc, $0500                                  ; $5e32: $01 $00 $05
    ld a, [hl+]                                   ; $5e35: $2a
    nop                                           ; $5e36: $00
    dec b                                         ; $5e37: $05
    ld c, b                                       ; $5e38: $48
    nop                                           ; $5e39: $00
    dec b                                         ; $5e3a: $05
    ld a, h                                       ; $5e3b: $7c
    nop                                           ; $5e3c: $00
    dec b                                         ; $5e3d: $05
    sbc c                                         ; $5e3e: $99
    nop                                           ; $5e3f: $00
    dec b                                         ; $5e40: $05
    cp [hl]                                       ; $5e41: $be
    nop                                           ; $5e42: $00
    dec b                                         ; $5e43: $05
    db $db                                        ; $5e44: $db
    nop                                           ; $5e45: $00
    dec b                                         ; $5e46: $05
    ld [$0501], sp                                ; $5e47: $08 $01 $05
    daa                                           ; $5e4a: $27
    ld bc, $6105                                  ; $5e4b: $01 $05 $61
    ld bc, $9405                                  ; $5e4e: $01 $05 $94
    ld bc, $c405                                  ; $5e51: $01 $05 $c4
    ld bc, $f005                                  ; $5e54: $01 $05 $f0
    ld bc, $0305                                  ; $5e57: $01 $05 $03
    ld [bc], a                                    ; $5e5a: $02
    dec b                                         ; $5e5b: $05
    inc b                                         ; $5e5c: $04
    ld [bc], a                                    ; $5e5d: $02
    dec b                                         ; $5e5e: $05
    ld de, $0502                                  ; $5e5f: $11 $02 $05
    dec de                                        ; $5e62: $1b
    ld [bc], a                                    ; $5e63: $02
    dec b                                         ; $5e64: $05
    inc e                                         ; $5e65: $1c
    ld [bc], a                                    ; $5e66: $02
    dec b                                         ; $5e67: $05
    ld h, $02                                     ; $5e68: $26 $02
    dec b                                         ; $5e6a: $05
    jr nc, @+$04                                  ; $5e6b: $30 $02

    dec b                                         ; $5e6d: $05
    ld sp, $0502                                  ; $5e6e: $31 $02 $05
    add hl, sp                                    ; $5e71: $39
    ld [bc], a                                    ; $5e72: $02
    dec b                                         ; $5e73: $05
    ld b, e                                       ; $5e74: $43
    ld [bc], a                                    ; $5e75: $02
    dec b                                         ; $5e76: $05
    ld b, h                                       ; $5e77: $44
    ld [bc], a                                    ; $5e78: $02
    dec b                                         ; $5e79: $05
    ld c, h                                       ; $5e7a: $4c
    ld [bc], a                                    ; $5e7b: $02
    dec b                                         ; $5e7c: $05
    ld d, l                                       ; $5e7d: $55
    ld [bc], a                                    ; $5e7e: $02
    dec b                                         ; $5e7f: $05
    ld e, a                                       ; $5e80: $5f
    ld [bc], a                                    ; $5e81: $02
    dec b                                         ; $5e82: $05
    ld l, d                                       ; $5e83: $6a
    ld [bc], a                                    ; $5e84: $02
    dec b                                         ; $5e85: $05
    ld [hl], h                                    ; $5e86: $74
    ld [bc], a                                    ; $5e87: $02
    dec b                                         ; $5e88: $05
    ld [hl], l                                    ; $5e89: $75
    ld [bc], a                                    ; $5e8a: $02
    dec b                                         ; $5e8b: $05
    add b                                         ; $5e8c: $80
    ld [bc], a                                    ; $5e8d: $02
    dec b                                         ; $5e8e: $05
    adc c                                         ; $5e8f: $89
    ld [bc], a                                    ; $5e90: $02
    dec b                                         ; $5e91: $05
    sub c                                         ; $5e92: $91
    ld [bc], a                                    ; $5e93: $02
    dec b                                         ; $5e94: $05
    sbc d                                         ; $5e95: $9a
    ld [bc], a                                    ; $5e96: $02
    dec b                                         ; $5e97: $05
    sbc e                                         ; $5e98: $9b
    ld [bc], a                                    ; $5e99: $02
    dec b                                         ; $5e9a: $05
    xor c                                         ; $5e9b: $a9
    ld [bc], a                                    ; $5e9c: $02
    dec b                                         ; $5e9d: $05
    or e                                          ; $5e9e: $b3
    ld [bc], a                                    ; $5e9f: $02
    dec b                                         ; $5ea0: $05
    or h                                          ; $5ea1: $b4
    ld [bc], a                                    ; $5ea2: $02
    dec b                                         ; $5ea3: $05
    ret nz                                        ; $5ea4: $c0

    ld [bc], a                                    ; $5ea5: $02
    dec b                                         ; $5ea6: $05
    ret z                                         ; $5ea7: $c8

    ld [bc], a                                    ; $5ea8: $02
    dec b                                         ; $5ea9: $05
    ret                                           ; $5eaa: $c9


    ld [bc], a                                    ; $5eab: $02
    dec b                                         ; $5eac: $05
    reti                                          ; $5ead: $d9


    ld [bc], a                                    ; $5eae: $02
    dec b                                         ; $5eaf: $05
    pop hl                                        ; $5eb0: $e1
    ld [bc], a                                    ; $5eb1: $02
    dec b                                         ; $5eb2: $05
    add sp, $02                                   ; $5eb3: $e8 $02
    dec b                                         ; $5eb5: $05
    rst $28                                       ; $5eb6: $ef
    ld [bc], a                                    ; $5eb7: $02
    dec b                                         ; $5eb8: $05
    ldh a, [rSC]                                  ; $5eb9: $f0 $02
    dec b                                         ; $5ebb: $05
    or $02                                        ; $5ebc: $f6 $02
    dec b                                         ; $5ebe: $05
    nop                                           ; $5ebf: $00
    inc bc                                        ; $5ec0: $03
    dec b                                         ; $5ec1: $05
    ld a, [bc]                                    ; $5ec2: $0a
    inc bc                                        ; $5ec3: $03
    dec b                                         ; $5ec4: $05
    inc d                                         ; $5ec5: $14
    inc bc                                        ; $5ec6: $03
    dec b                                         ; $5ec7: $05
    inc e                                         ; $5ec8: $1c
    inc bc                                        ; $5ec9: $03
    dec b                                         ; $5eca: $05
    dec e                                         ; $5ecb: $1d
    inc bc                                        ; $5ecc: $03
    dec b                                         ; $5ecd: $05
    ld e, $03                                     ; $5ece: $1e $03
    dec b                                         ; $5ed0: $05
    dec [hl]                                      ; $5ed1: $35
    inc bc                                        ; $5ed2: $03
    dec b                                         ; $5ed3: $05
    ld [hl], $03                                  ; $5ed4: $36 $03
    dec b                                         ; $5ed6: $05
    ld b, h                                       ; $5ed7: $44
    inc bc                                        ; $5ed8: $03
    dec b                                         ; $5ed9: $05
    ld c, l                                       ; $5eda: $4d
    inc bc                                        ; $5edb: $03
    dec b                                         ; $5edc: $05
    ld d, l                                       ; $5edd: $55
    inc bc                                        ; $5ede: $03
    dec b                                         ; $5edf: $05
    ld d, [hl]                                    ; $5ee0: $56
    inc bc                                        ; $5ee1: $03
    dec b                                         ; $5ee2: $05
    ld h, e                                       ; $5ee3: $63
    inc bc                                        ; $5ee4: $03
    dec b                                         ; $5ee5: $05
    ld l, l                                       ; $5ee6: $6d
    inc bc                                        ; $5ee7: $03
    dec b                                         ; $5ee8: $05
    ld l, [hl]                                    ; $5ee9: $6e
    inc bc                                        ; $5eea: $03
    dec b                                         ; $5eeb: $05
    ld a, d                                       ; $5eec: $7a
    inc bc                                        ; $5eed: $03
    dec b                                         ; $5eee: $05
    add e                                         ; $5eef: $83
    inc bc                                        ; $5ef0: $03
    dec b                                         ; $5ef1: $05
    add h                                         ; $5ef2: $84
    inc bc                                        ; $5ef3: $03
    dec b                                         ; $5ef4: $05
    adc [hl]                                      ; $5ef5: $8e
    inc bc                                        ; $5ef6: $03
    dec b                                         ; $5ef7: $05
    sbc d                                         ; $5ef8: $9a
    inc bc                                        ; $5ef9: $03
    dec b                                         ; $5efa: $05
    and h                                         ; $5efb: $a4
    inc bc                                        ; $5efc: $03
    dec b                                         ; $5efd: $05
    xor e                                         ; $5efe: $ab
    inc bc                                        ; $5eff: $03
    dec b                                         ; $5f00: $05
    or e                                          ; $5f01: $b3
    inc bc                                        ; $5f02: $03
    dec b                                         ; $5f03: $05
    cp l                                          ; $5f04: $bd
    inc bc                                        ; $5f05: $03
    dec b                                         ; $5f06: $05
    add $03                                       ; $5f07: $c6 $03
    dec b                                         ; $5f09: $05
    rst $00                                       ; $5f0a: $c7
    inc bc                                        ; $5f0b: $03
    dec b                                         ; $5f0c: $05
    ret z                                         ; $5f0d: $c8

    inc bc                                        ; $5f0e: $03
    dec b                                         ; $5f0f: $05
    ret                                           ; $5f10: $c9


    inc bc                                        ; $5f11: $03
    dec b                                         ; $5f12: $05
    db $db                                        ; $5f13: $db
    inc bc                                        ; $5f14: $03
    dec b                                         ; $5f15: $05
    call c, $0503                                 ; $5f16: $dc $03 $05
    rst $20                                       ; $5f19: $e7
    inc bc                                        ; $5f1a: $03
    dec b                                         ; $5f1b: $05
    rst $28                                       ; $5f1c: $ef
    inc bc                                        ; $5f1d: $03
    dec b                                         ; $5f1e: $05
    ld sp, hl                                     ; $5f1f: $f9
    inc bc                                        ; $5f20: $03
    dec b                                         ; $5f21: $05
    ld bc, $0504                                  ; $5f22: $01 $04 $05
    dec bc                                        ; $5f25: $0b
    inc b                                         ; $5f26: $04
    dec b                                         ; $5f27: $05
    ld d, $04                                     ; $5f28: $16 $04
    dec b                                         ; $5f2a: $05
    ld e, $04                                     ; $5f2b: $1e $04
    dec b                                         ; $5f2d: $05
    ld h, $04                                     ; $5f2e: $26 $04
    dec b                                         ; $5f30: $05
    daa                                           ; $5f31: $27
    inc b                                         ; $5f32: $04
    dec b                                         ; $5f33: $05
    ld [hl], $04                                  ; $5f34: $36 $04
    dec b                                         ; $5f36: $05
    dec a                                         ; $5f37: $3d
    inc b                                         ; $5f38: $04
    dec b                                         ; $5f39: $05
    ld a, $04                                     ; $5f3a: $3e $04
    dec b                                         ; $5f3c: $05
    ld c, b                                       ; $5f3d: $48
    inc b                                         ; $5f3e: $04
    dec b                                         ; $5f3f: $05
    ld c, a                                       ; $5f40: $4f
    inc b                                         ; $5f41: $04
    dec b                                         ; $5f42: $05
    ld d, b                                       ; $5f43: $50
    inc b                                         ; $5f44: $04
    dec b                                         ; $5f45: $05
    ld e, b                                       ; $5f46: $58
    inc b                                         ; $5f47: $04
    dec b                                         ; $5f48: $05
    ld h, c                                       ; $5f49: $61
    inc b                                         ; $5f4a: $04
    dec b                                         ; $5f4b: $05
    ld l, c                                       ; $5f4c: $69
    inc b                                         ; $5f4d: $04
    dec b                                         ; $5f4e: $05
    ld [hl], d                                    ; $5f4f: $72
    inc b                                         ; $5f50: $04
    dec b                                         ; $5f51: $05
    ld a, h                                       ; $5f52: $7c
    inc b                                         ; $5f53: $04
    dec b                                         ; $5f54: $05
    ld a, l                                       ; $5f55: $7d
    inc b                                         ; $5f56: $04
    dec b                                         ; $5f57: $05
    add a                                         ; $5f58: $87
    inc b                                         ; $5f59: $04
    dec b                                         ; $5f5a: $05

Call_026_5f5b:
    sub b                                         ; $5f5b: $90
    inc b                                         ; $5f5c: $04
    dec b                                         ; $5f5d: $05
    sbc d                                         ; $5f5e: $9a
    inc b                                         ; $5f5f: $04
    dec b                                         ; $5f60: $05
    and c                                         ; $5f61: $a1
    inc b                                         ; $5f62: $04
    dec b                                         ; $5f63: $05
    xor e                                         ; $5f64: $ab
    inc b                                         ; $5f65: $04
    dec b                                         ; $5f66: $05
    or e                                          ; $5f67: $b3
    inc b                                         ; $5f68: $04
    dec b                                         ; $5f69: $05
    cp h                                          ; $5f6a: $bc
    inc b                                         ; $5f6b: $04
    dec b                                         ; $5f6c: $05
    rst $00                                       ; $5f6d: $c7
    inc b                                         ; $5f6e: $04
    dec b                                         ; $5f6f: $05
    call nc, $0504                                ; $5f70: $d4 $04 $05
    db $dd                                        ; $5f73: $dd
    inc b                                         ; $5f74: $04
    dec b                                         ; $5f75: $05
    and $04                                       ; $5f76: $e6 $04
    dec b                                         ; $5f78: $05
    rst $20                                       ; $5f79: $e7
    inc b                                         ; $5f7a: $04
    dec b                                         ; $5f7b: $05
    pop af                                        ; $5f7c: $f1
    inc b                                         ; $5f7d: $04
    dec b                                         ; $5f7e: $05
    ld hl, sp+$04                                 ; $5f7f: $f8 $04
    dec b                                         ; $5f81: $05
    ld [bc], a                                    ; $5f82: $02
    dec b                                         ; $5f83: $05
    dec b                                         ; $5f84: $05
    dec bc                                        ; $5f85: $0b
    dec b                                         ; $5f86: $05
    dec b                                         ; $5f87: $05
    inc de                                        ; $5f88: $13
    dec b                                         ; $5f89: $05
    dec b                                         ; $5f8a: $05
    inc d                                         ; $5f8b: $14
    dec b                                         ; $5f8c: $05
    dec b                                         ; $5f8d: $05
    ld hl, $0505                                  ; $5f8e: $21 $05 $05
    inc l                                         ; $5f91: $2c
    dec b                                         ; $5f92: $05
    dec b                                         ; $5f93: $05
    ld [hl], $05                                  ; $5f94: $36 $05
    dec b                                         ; $5f96: $05
    ccf                                           ; $5f97: $3f
    dec b                                         ; $5f98: $05
    dec b                                         ; $5f99: $05
    ld c, b                                       ; $5f9a: $48
    dec b                                         ; $5f9b: $05
    dec b                                         ; $5f9c: $05
    ld d, b                                       ; $5f9d: $50
    dec b                                         ; $5f9e: $05
    dec b                                         ; $5f9f: $05
    ld d, [hl]                                    ; $5fa0: $56
    dec b                                         ; $5fa1: $05
    dec b                                         ; $5fa2: $05
    ld h, b                                       ; $5fa3: $60
    dec b                                         ; $5fa4: $05
    dec b                                         ; $5fa5: $05
    ld l, b                                       ; $5fa6: $68
    dec b                                         ; $5fa7: $05
    dec b                                         ; $5fa8: $05
    ld l, a                                       ; $5fa9: $6f
    dec b                                         ; $5faa: $05
    dec b                                         ; $5fab: $05
    ld [hl], a                                    ; $5fac: $77
    dec b                                         ; $5fad: $05
    dec b                                         ; $5fae: $05
    add b                                         ; $5faf: $80
    dec b                                         ; $5fb0: $05
    dec b                                         ; $5fb1: $05
    adc c                                         ; $5fb2: $89
    dec b                                         ; $5fb3: $05
    dec b                                         ; $5fb4: $05
    adc d                                         ; $5fb5: $8a
    dec b                                         ; $5fb6: $05
    dec b                                         ; $5fb7: $05
    adc e                                         ; $5fb8: $8b
    dec b                                         ; $5fb9: $05
    dec b                                         ; $5fba: $05
    adc h                                         ; $5fbb: $8c
    dec b                                         ; $5fbc: $05
    dec b                                         ; $5fbd: $05
    adc l                                         ; $5fbe: $8d
    dec b                                         ; $5fbf: $05
    dec b                                         ; $5fc0: $05
    adc [hl]                                      ; $5fc1: $8e
    dec b                                         ; $5fc2: $05
    dec b                                         ; $5fc3: $05
    adc a                                         ; $5fc4: $8f
    dec b                                         ; $5fc5: $05
    dec b                                         ; $5fc6: $05
    sub b                                         ; $5fc7: $90
    dec b                                         ; $5fc8: $05
    dec b                                         ; $5fc9: $05
    sub c                                         ; $5fca: $91
    dec b                                         ; $5fcb: $05
    dec b                                         ; $5fcc: $05
    sub d                                         ; $5fcd: $92
    dec b                                         ; $5fce: $05
    dec b                                         ; $5fcf: $05
    sub e                                         ; $5fd0: $93
    dec b                                         ; $5fd1: $05
    dec b                                         ; $5fd2: $05
    sub h                                         ; $5fd3: $94
    dec b                                         ; $5fd4: $05
    dec b                                         ; $5fd5: $05
    sub l                                         ; $5fd6: $95
    dec b                                         ; $5fd7: $05
    dec b                                         ; $5fd8: $05
    sub [hl]                                      ; $5fd9: $96
    dec b                                         ; $5fda: $05
    dec b                                         ; $5fdb: $05
    sub a                                         ; $5fdc: $97
    dec b                                         ; $5fdd: $05
    dec b                                         ; $5fde: $05
    sbc b                                         ; $5fdf: $98
    dec b                                         ; $5fe0: $05
    dec b                                         ; $5fe1: $05
    sbc c                                         ; $5fe2: $99
    dec b                                         ; $5fe3: $05
    dec b                                         ; $5fe4: $05
    sbc d                                         ; $5fe5: $9a
    dec b                                         ; $5fe6: $05
    dec b                                         ; $5fe7: $05
    sbc e                                         ; $5fe8: $9b
    dec b                                         ; $5fe9: $05
    dec b                                         ; $5fea: $05
    sbc h                                         ; $5feb: $9c
    dec b                                         ; $5fec: $05
    dec b                                         ; $5fed: $05
    sbc l                                         ; $5fee: $9d
    dec b                                         ; $5fef: $05
    dec b                                         ; $5ff0: $05
    sbc [hl]                                      ; $5ff1: $9e
    dec b                                         ; $5ff2: $05
    dec b                                         ; $5ff3: $05
    sbc a                                         ; $5ff4: $9f
    dec b                                         ; $5ff5: $05
    dec b                                         ; $5ff6: $05
    and b                                         ; $5ff7: $a0
    dec b                                         ; $5ff8: $05
    dec b                                         ; $5ff9: $05
    and c                                         ; $5ffa: $a1
    dec b                                         ; $5ffb: $05
    dec b                                         ; $5ffc: $05
    and d                                         ; $5ffd: $a2
    dec b                                         ; $5ffe: $05
    dec b                                         ; $5fff: $05
    and e                                         ; $6000: $a3
    dec b                                         ; $6001: $05
    dec b                                         ; $6002: $05
    and h                                         ; $6003: $a4
    dec b                                         ; $6004: $05
    dec b                                         ; $6005: $05
    and l                                         ; $6006: $a5
    dec b                                         ; $6007: $05
    dec b                                         ; $6008: $05
    and [hl]                                      ; $6009: $a6
    dec b                                         ; $600a: $05
    dec b                                         ; $600b: $05
    and a                                         ; $600c: $a7
    dec b                                         ; $600d: $05
    dec b                                         ; $600e: $05
    xor b                                         ; $600f: $a8
    dec b                                         ; $6010: $05
    dec b                                         ; $6011: $05
    xor c                                         ; $6012: $a9
    dec b                                         ; $6013: $05
    dec b                                         ; $6014: $05
    xor d                                         ; $6015: $aa
    dec b                                         ; $6016: $05
    dec b                                         ; $6017: $05
    xor e                                         ; $6018: $ab
    dec b                                         ; $6019: $05
    dec b                                         ; $601a: $05
    cp a                                          ; $601b: $bf
    dec b                                         ; $601c: $05
    dec b                                         ; $601d: $05
    push bc                                       ; $601e: $c5
    dec b                                         ; $601f: $05
    dec b                                         ; $6020: $05
    or $05                                        ; $6021: $f6 $05
    dec b                                         ; $6023: $05
    ld c, $06                                     ; $6024: $0e $06
    dec b                                         ; $6026: $05
    ld h, d                                       ; $6027: $62
    ld b, $05                                     ; $6028: $06 $05
    ld [hl], h                                    ; $602a: $74
    ld b, $05                                     ; $602b: $06 $05
    or a                                          ; $602d: $b7
    ld b, $05                                     ; $602e: $06 $05
    jp c, $0506                                   ; $6030: $da $06 $05

    dec [hl]                                      ; $6033: $35
    rlca                                          ; $6034: $07
    dec b                                         ; $6035: $05
    ld b, [hl]                                    ; $6036: $46
    rlca                                          ; $6037: $07
    dec b                                         ; $6038: $05
    ld a, [hl]                                    ; $6039: $7e
    rlca                                          ; $603a: $07
    dec b                                         ; $603b: $05
    pop de                                        ; $603c: $d1
    rlca                                          ; $603d: $07
    dec b                                         ; $603e: $05
    push hl                                       ; $603f: $e5
    rlca                                          ; $6040: $07
    dec b                                         ; $6041: $05
    ld de, $0508                                  ; $6042: $11 $08 $05
    dec l                                         ; $6045: $2d
    ld [$4c05], sp                                ; $6046: $08 $05 $4c
    ld [$9005], sp                                ; $6049: $08 $05 $90
    ld [$9b05], sp                                ; $604c: $08 $05 $9b
    ld [$ae05], sp                                ; $604f: $08 $05 $ae
    ld [$bf05], sp                                ; $6052: $08 $05 $bf
    ld [$d205], sp                                ; $6055: $08 $05 $d2
    ld [$e605], sp                                ; $6058: $08 $05 $e6
    ld [$0905], sp                                ; $605b: $08 $05 $09
    add hl, bc                                    ; $605e: $09
    dec b                                         ; $605f: $05
    ld d, [hl]                                    ; $6060: $56
    add hl, bc                                    ; $6061: $09
    dec b                                         ; $6062: $05
    ld h, c                                       ; $6063: $61
    add hl, bc                                    ; $6064: $09
    dec b                                         ; $6065: $05
    sbc a                                         ; $6066: $9f
    add hl, bc                                    ; $6067: $09
    dec b                                         ; $6068: $05
    xor a                                         ; $6069: $af
    add hl, bc                                    ; $606a: $09
    dec b                                         ; $606b: $05
    rst $00                                       ; $606c: $c7
    add hl, bc                                    ; $606d: $09
    dec b                                         ; $606e: $05
    ld bc, $050a                                  ; $606f: $01 $0a $05
    jr nz, jr_026_607e                            ; $6072: $20 $0a

    dec b                                         ; $6074: $05
    scf                                           ; $6075: $37
    ld a, [bc]                                    ; $6076: $0a
    dec b                                         ; $6077: $05
    ld c, d                                       ; $6078: $4a
    ld a, [bc]                                    ; $6079: $0a
    dec b                                         ; $607a: $05
    ld [hl], e                                    ; $607b: $73
    ld a, [bc]                                    ; $607c: $0a
    dec b                                         ; $607d: $05

jr_026_607e:
    adc c                                         ; $607e: $89
    ld a, [bc]                                    ; $607f: $0a
    dec b                                         ; $6080: $05
    sub l                                         ; $6081: $95
    ld a, [bc]                                    ; $6082: $0a
    dec b                                         ; $6083: $05
    and c                                         ; $6084: $a1
    ld a, [bc]                                    ; $6085: $0a
    dec b                                         ; $6086: $05
    or a                                          ; $6087: $b7
    ld a, [bc]                                    ; $6088: $0a
    dec b                                         ; $6089: $05
    rst $00                                       ; $608a: $c7
    ld a, [bc]                                    ; $608b: $0a
    dec b                                         ; $608c: $05
    ret nc                                        ; $608d: $d0

    ld a, [bc]                                    ; $608e: $0a
    dec b                                         ; $608f: $05
    call c, Call_000_050a                         ; $6090: $dc $0a $05
    pop af                                        ; $6093: $f1
    ld a, [bc]                                    ; $6094: $0a
    dec b                                         ; $6095: $05
    ld bc, $050b                                  ; $6096: $01 $0b $05
    jr jr_026_60a6                                ; $6099: $18 $0b

    dec b                                         ; $609b: $05
    ld h, $0b                                     ; $609c: $26 $0b
    dec b                                         ; $609e: $05
    jr c, jr_026_60ac                             ; $609f: $38 $0b

    dec b                                         ; $60a1: $05
    ld d, h                                       ; $60a2: $54
    dec bc                                        ; $60a3: $0b
    dec b                                         ; $60a4: $05

Jump_026_60a5:
    ld h, b                                       ; $60a5: $60

jr_026_60a6:
    dec bc                                        ; $60a6: $0b
    dec b                                         ; $60a7: $05
    ld [hl], l                                    ; $60a8: $75
    dec bc                                        ; $60a9: $0b
    dec b                                         ; $60aa: $05
    add l                                         ; $60ab: $85

jr_026_60ac:
    dec bc                                        ; $60ac: $0b
    dec b                                         ; $60ad: $05
    sbc [hl]                                      ; $60ae: $9e
    dec bc                                        ; $60af: $0b
    dec b                                         ; $60b0: $05
    or d                                          ; $60b1: $b2
    dec bc                                        ; $60b2: $0b
    dec b                                         ; $60b3: $05
    rst $00                                       ; $60b4: $c7
    dec bc                                        ; $60b5: $0b
    dec b                                         ; $60b6: $05
    jp c, Jump_000_050b                           ; $60b7: $da $0b $05

    rst $20                                       ; $60ba: $e7
    dec bc                                        ; $60bb: $0b
    dec b                                         ; $60bc: $05
    rrca                                          ; $60bd: $0f
    inc c                                         ; $60be: $0c
    dec b                                         ; $60bf: $05
    jr nz, jr_026_60ce                            ; $60c0: $20 $0c

    dec b                                         ; $60c2: $05
    ld sp, $050c                                  ; $60c3: $31 $0c $05
    ld c, d                                       ; $60c6: $4a
    inc c                                         ; $60c7: $0c
    dec b                                         ; $60c8: $05
    ld e, [hl]                                    ; $60c9: $5e
    inc c                                         ; $60ca: $0c
    dec b                                         ; $60cb: $05
    add e                                         ; $60cc: $83
    inc c                                         ; $60cd: $0c

jr_026_60ce:
    dec b                                         ; $60ce: $05
    sub d                                         ; $60cf: $92
    inc c                                         ; $60d0: $0c
    dec b                                         ; $60d1: $05
    pop bc                                        ; $60d2: $c1
    inc c                                         ; $60d3: $0c
    dec b                                         ; $60d4: $05
    call nc, Call_000_050c                        ; $60d5: $d4 $0c $05
    push hl                                       ; $60d8: $e5
    inc c                                         ; $60d9: $0c
    dec b                                         ; $60da: $05
    inc bc                                        ; $60db: $03
    dec c                                         ; $60dc: $0d
    dec b                                         ; $60dd: $05
    ld e, $0d                                     ; $60de: $1e $0d
    dec b                                         ; $60e0: $05
    ld [hl], $0d                                  ; $60e1: $36 $0d
    dec b                                         ; $60e3: $05
    ld b, [hl]                                    ; $60e4: $46
    dec c                                         ; $60e5: $0d
    dec b                                         ; $60e6: $05
    ld e, a                                       ; $60e7: $5f
    dec c                                         ; $60e8: $0d
    dec b                                         ; $60e9: $05
    ld [hl], e                                    ; $60ea: $73
    dec c                                         ; $60eb: $0d
    dec b                                         ; $60ec: $05
    add d                                         ; $60ed: $82
    dec c                                         ; $60ee: $0d
    dec b                                         ; $60ef: $05
    sub c                                         ; $60f0: $91
    dec c                                         ; $60f1: $0d
    dec b                                         ; $60f2: $05
    xor c                                         ; $60f3: $a9
    dec c                                         ; $60f4: $0d
    dec b                                         ; $60f5: $05
    cp h                                          ; $60f6: $bc
    dec c                                         ; $60f7: $0d
    dec b                                         ; $60f8: $05
    jp c, Jump_000_050d                           ; $60f9: $da $0d $05

    jp hl                                         ; $60fc: $e9


    dec c                                         ; $60fd: $0d
    dec b                                         ; $60fe: $05
    ld [bc], a                                    ; $60ff: $02
    ld c, $05                                     ; $6100: $0e $05
    dec d                                         ; $6102: $15
    ld c, $05                                     ; $6103: $0e $05
    jr nc, @+$10                                  ; $6105: $30 $0e

    dec b                                         ; $6107: $05
    ld b, e                                       ; $6108: $43
    ld c, $05                                     ; $6109: $0e $05
    ld e, a                                       ; $610b: $5f
    ld c, $05                                     ; $610c: $0e $05
    halt                                          ; $610e: $76
    ld c, $05                                     ; $610f: $0e $05
    adc e                                         ; $6111: $8b
    ld c, $05                                     ; $6112: $0e $05
    and $0e                                       ; $6114: $e6 $0e
    dec b                                         ; $6116: $05
    ld b, c                                       ; $6117: $41
    rrca                                          ; $6118: $0f
    dec b                                         ; $6119: $05
    ld e, d                                       ; $611a: $5a
    rrca                                          ; $611b: $0f
    dec b                                         ; $611c: $05
    ld a, e                                       ; $611d: $7b
    rrca                                          ; $611e: $0f
    dec b                                         ; $611f: $05
    sbc [hl]                                      ; $6120: $9e
    rrca                                          ; $6121: $0f
    dec b                                         ; $6122: $05
    rrc a                                         ; $6123: $cb $0f
    dec b                                         ; $6125: $05
    ld a, [$050f]                                 ; $6126: $fa $0f $05
    dec de                                        ; $6129: $1b
    db $10                                        ; $612a: $10
    dec b                                         ; $612b: $05
    dec sp                                        ; $612c: $3b
    db $10                                        ; $612d: $10
    dec b                                         ; $612e: $05
    ld h, b                                       ; $612f: $60
    db $10                                        ; $6130: $10
    dec b                                         ; $6131: $05
    add b                                         ; $6132: $80
    db $10                                        ; $6133: $10
    dec b                                         ; $6134: $05
    xor e                                         ; $6135: $ab
    db $10                                        ; $6136: $10
    dec b                                         ; $6137: $05
    ret                                           ; $6138: $c9


    db $10                                        ; $6139: $10
    dec b                                         ; $613a: $05
    rst $18                                       ; $613b: $df
    db $10                                        ; $613c: $10
    dec b                                         ; $613d: $05
    push af                                       ; $613e: $f5
    db $10                                        ; $613f: $10
    dec b                                         ; $6140: $05
    ld hl, $0511                                  ; $6141: $21 $11 $05
    ld h, c                                       ; $6144: $61
    ld de, $b205                                  ; $6145: $11 $05 $b2
    ld de, $ea05                                  ; $6148: $11 $05 $ea
    ld de, $2105                                  ; $614b: $11 $05 $21
    ld [de], a                                    ; $614e: $12
    dec b                                         ; $614f: $05
    ld h, [hl]                                    ; $6150: $66
    ld [de], a                                    ; $6151: $12
    dec b                                         ; $6152: $05
    xor c                                         ; $6153: $a9
    ld [de], a                                    ; $6154: $12
    dec b                                         ; $6155: $05
    inc c                                         ; $6156: $0c
    inc de                                        ; $6157: $13
    dec b                                         ; $6158: $05
    ld h, l                                       ; $6159: $65
    inc de                                        ; $615a: $13
    dec b                                         ; $615b: $05
    ret nc                                        ; $615c: $d0

    inc de                                        ; $615d: $13
    dec b                                         ; $615e: $05
    dec [hl]                                      ; $615f: $35
    inc d                                         ; $6160: $14
    dec b                                         ; $6161: $05
    sub a                                         ; $6162: $97
    inc d                                         ; $6163: $14
    dec b                                         ; $6164: $05
    ld [$0515], sp                                ; $6165: $08 $15 $05
    ld e, [hl]                                    ; $6168: $5e
    dec d                                         ; $6169: $15
    dec b                                         ; $616a: $05
    rl l                                          ; $616b: $cb $15
    dec b                                         ; $616d: $05
    ld h, $16                                     ; $616e: $26 $16
    dec b                                         ; $6170: $05
    sub b                                         ; $6171: $90
    ld d, $05                                     ; $6172: $16 $05
    rst $18                                       ; $6174: $df
    ld d, $05                                     ; $6175: $16 $05
    ccf                                           ; $6177: $3f
    rla                                           ; $6178: $17
    dec b                                         ; $6179: $05
    sbc l                                         ; $617a: $9d
    rla                                           ; $617b: $17
    dec b                                         ; $617c: $05
    cp $17                                        ; $617d: $fe $17
    dec b                                         ; $617f: $05
    ld e, l                                       ; $6180: $5d
    jr jr_026_6188                                ; $6181: $18 $05

    adc $18                                       ; $6183: $ce $18
    dec b                                         ; $6185: $05
    ld a, [hl+]                                   ; $6186: $2a
    add hl, de                                    ; $6187: $19

jr_026_6188:
    dec b                                         ; $6188: $05
    adc l                                         ; $6189: $8d
    add hl, de                                    ; $618a: $19
    dec b                                         ; $618b: $05
    db $fc                                        ; $618c: $fc
    add hl, de                                    ; $618d: $19
    dec b                                         ; $618e: $05
    inc a                                         ; $618f: $3c
    ld a, [de]                                    ; $6190: $1a
    dec b                                         ; $6191: $05
    ld c, h                                       ; $6192: $4c
    ld a, [de]                                    ; $6193: $1a
    dec b                                         ; $6194: $05
    ld d, c                                       ; $6195: $51
    ld a, [de]                                    ; $6196: $1a
    dec b                                         ; $6197: $05
    ld d, [hl]                                    ; $6198: $56
    ld a, [de]                                    ; $6199: $1a
    dec b                                         ; $619a: $05
    ld h, b                                       ; $619b: $60
    ld a, [de]                                    ; $619c: $1a
    dec b                                         ; $619d: $05
    ld l, h                                       ; $619e: $6c
    ld a, [de]                                    ; $619f: $1a
    dec b                                         ; $61a0: $05
    ld a, c                                       ; $61a1: $79
    ld a, [de]                                    ; $61a2: $1a
    dec b                                         ; $61a3: $05
    xor b                                         ; $61a4: $a8
    ld a, [de]                                    ; $61a5: $1a
    dec b                                         ; $61a6: $05
    ret c                                         ; $61a7: $d8

    ld a, [de]                                    ; $61a8: $1a
    dec b                                         ; $61a9: $05
    rra                                           ; $61aa: $1f
    dec de                                        ; $61ab: $1b
    dec b                                         ; $61ac: $05

Jump_026_61ad:
    ld e, l                                       ; $61ad: $5d
    dec de                                        ; $61ae: $1b
    dec b                                         ; $61af: $05
    and h                                         ; $61b0: $a4
    dec de                                        ; $61b1: $1b
    dec b                                         ; $61b2: $05
    pop de                                        ; $61b3: $d1
    dec de                                        ; $61b4: $1b
    dec b                                         ; $61b5: $05
    dec de                                        ; $61b6: $1b
    inc e                                         ; $61b7: $1c
    dec b                                         ; $61b8: $05
    ld e, l                                       ; $61b9: $5d
    inc e                                         ; $61ba: $1c
    dec b                                         ; $61bb: $05
    sub b                                         ; $61bc: $90
    inc e                                         ; $61bd: $1c
    dec b                                         ; $61be: $05
    or d                                          ; $61bf: $b2
    inc e                                         ; $61c0: $1c
    dec b                                         ; $61c1: $05
    push de                                       ; $61c2: $d5
    inc e                                         ; $61c3: $1c
    dec b                                         ; $61c4: $05
    ld hl, sp+$1c                                 ; $61c5: $f8 $1c
    dec b                                         ; $61c7: $05
    ld hl, $051d                                  ; $61c8: $21 $1d $05
    dec a                                         ; $61cb: $3d
    dec e                                         ; $61cc: $1d
    dec b                                         ; $61cd: $05
    ld e, l                                       ; $61ce: $5d
    dec e                                         ; $61cf: $1d
    dec b                                         ; $61d0: $05
    ld a, b                                       ; $61d1: $78
    dec e                                         ; $61d2: $1d
    dec b                                         ; $61d3: $05
    and [hl]                                      ; $61d4: $a6
    dec e                                         ; $61d5: $1d
    dec b                                         ; $61d6: $05
    or a                                          ; $61d7: $b7
    dec e                                         ; $61d8: $1d
    dec b                                         ; $61d9: $05
    jp z, Jump_000_051d                           ; $61da: $ca $1d $05

    pop hl                                        ; $61dd: $e1
    dec e                                         ; $61de: $1d
    dec b                                         ; $61df: $05
    add hl, bc                                    ; $61e0: $09
    ld e, $05                                     ; $61e1: $1e $05
    ld l, $1e                                     ; $61e3: $2e $1e
    dec b                                         ; $61e5: $05
    ld e, d                                       ; $61e6: $5a
    ld e, $05                                     ; $61e7: $1e $05
    ld [hl], b                                    ; $61e9: $70
    ld e, $05                                     ; $61ea: $1e $05
    sbc a                                         ; $61ec: $9f
    ld e, $05                                     ; $61ed: $1e $05
    cp l                                          ; $61ef: $bd
    ld e, $05                                     ; $61f0: $1e $05
    db $f4                                        ; $61f2: $f4
    ld e, $05                                     ; $61f3: $1e $05
    dec de                                        ; $61f5: $1b
    rra                                           ; $61f6: $1f
    dec b                                         ; $61f7: $05
    dec sp                                        ; $61f8: $3b
    rra                                           ; $61f9: $1f
    dec b                                         ; $61fa: $05
    ld d, b                                       ; $61fb: $50
    rra                                           ; $61fc: $1f
    dec b                                         ; $61fd: $05
    ld h, c                                       ; $61fe: $61
    rra                                           ; $61ff: $1f
    dec b                                         ; $6200: $05
    ld [hl], e                                    ; $6201: $73
    rra                                           ; $6202: $1f
    dec b                                         ; $6203: $05
    adc a                                         ; $6204: $8f
    rra                                           ; $6205: $1f
    dec b                                         ; $6206: $05
    jp hl                                         ; $6207: $e9


    rra                                           ; $6208: $1f
    dec b                                         ; $6209: $05
    dec c                                         ; $620a: $0d
    jr nz, @+$07                                  ; $620b: $20 $05

    add hl, sp                                    ; $620d: $39
    jr nz, @+$07                                  ; $620e: $20 $05

    ld b, e                                       ; $6210: $43
    jr nz, @+$07                                  ; $6211: $20 $05

    ld c, h                                       ; $6213: $4c
    jr nz, @+$07                                  ; $6214: $20 $05

    ld d, d                                       ; $6216: $52
    jr nz, @+$07                                  ; $6217: $20 $05

    ld e, b                                       ; $6219: $58
    jr nz, @+$07                                  ; $621a: $20 $05

    ld h, c                                       ; $621c: $61
    jr nz, @+$07                                  ; $621d: $20 $05

    ld h, a                                       ; $621f: $67
    jr nz, @+$07                                  ; $6220: $20 $05

    ld [hl], b                                    ; $6222: $70
    jr nz, @+$07                                  ; $6223: $20 $05

    ld a, l                                       ; $6225: $7d
    jr nz, @+$07                                  ; $6226: $20 $05

    adc h                                         ; $6228: $8c
    jr nz, @+$07                                  ; $6229: $20 $05

    and c                                         ; $622b: $a1
    jr nz, @+$07                                  ; $622c: $20 $05

    xor c                                         ; $622e: $a9
    jr nz, @+$07                                  ; $622f: $20 $05

    or l                                          ; $6231: $b5
    jr nz, @+$07                                  ; $6232: $20 $05

    ret nz                                        ; $6234: $c0

    jr nz, @+$07                                  ; $6235: $20 $05

    db $d3                                        ; $6237: $d3
    jr nz, @+$07                                  ; $6238: $20 $05

    db $ec                                        ; $623a: $ec
    jr nz, @+$07                                  ; $623b: $20 $05

    dec c                                         ; $623d: $0d
    ld hl, $1f05                                  ; $623e: $21 $05 $1f
    ld hl, $3205                                  ; $6241: $21 $05 $32
    ld hl, $4405                                  ; $6244: $21 $05 $44
    ld hl, $5705                                  ; $6247: $21 $05 $57
    ld hl, $7c05                                  ; $624a: $21 $05 $7c
    ld hl, $9905                                  ; $624d: $21 $05 $99
    ld hl, $cc05                                  ; $6250: $21 $05 $cc
    ld hl, $dc05                                  ; $6253: $21 $05 $dc
    ld hl, $0e05                                  ; $6256: $21 $05 $0e
    ld [hl+], a                                   ; $6259: $22
    dec b                                         ; $625a: $05
    jr jr_026_627f                                ; $625b: $18 $22

    dec b                                         ; $625d: $05
    ld hl, $0522                                  ; $625e: $21 $22 $05
    cpl                                           ; $6261: $2f
    ld [hl+], a                                   ; $6262: $22
    dec b                                         ; $6263: $05
    ld a, [hl-]                                   ; $6264: $3a
    ld [hl+], a                                   ; $6265: $22
    dec b                                         ; $6266: $05
    ld b, e                                       ; $6267: $43
    ld [hl+], a                                   ; $6268: $22
    dec b                                         ; $6269: $05
    ld a, c                                       ; $626a: $79
    ld [hl+], a                                   ; $626b: $22
    dec b                                         ; $626c: $05
    xor b                                         ; $626d: $a8
    ld [hl+], a                                   ; $626e: $22
    dec b                                         ; $626f: $05
    ld [de], a                                    ; $6270: $12
    inc hl                                        ; $6271: $23
    dec b                                         ; $6272: $05
    dec h                                         ; $6273: $25
    inc hl                                        ; $6274: $23
    dec b                                         ; $6275: $05
    jr nc, jr_026_629b                            ; $6276: $30 $23

    dec b                                         ; $6278: $05
    ld e, e                                       ; $6279: $5b
    inc hl                                        ; $627a: $23
    dec b                                         ; $627b: $05
    ld h, [hl]                                    ; $627c: $66
    inc hl                                        ; $627d: $23
    dec b                                         ; $627e: $05

jr_026_627f:
    ld [hl], d                                    ; $627f: $72
    inc hl                                        ; $6280: $23
    dec b                                         ; $6281: $05
    ld a, c                                       ; $6282: $79
    inc hl                                        ; $6283: $23
    dec b                                         ; $6284: $05
    adc c                                         ; $6285: $89
    inc hl                                        ; $6286: $23
    dec b                                         ; $6287: $05
    sbc h                                         ; $6288: $9c
    inc hl                                        ; $6289: $23
    dec b                                         ; $628a: $05
    and [hl]                                      ; $628b: $a6
    inc hl                                        ; $628c: $23
    dec b                                         ; $628d: $05
    xor l                                         ; $628e: $ad
    inc hl                                        ; $628f: $23
    dec b                                         ; $6290: $05
    or l                                          ; $6291: $b5

Jump_026_6292:
    inc hl                                        ; $6292: $23
    dec b                                         ; $6293: $05
    cp [hl]                                       ; $6294: $be
    inc hl                                        ; $6295: $23
    dec b                                         ; $6296: $05
    call nz, Call_000_0523                        ; $6297: $c4 $23 $05
    push bc                                       ; $629a: $c5

jr_026_629b:
    inc hl                                        ; $629b: $23
    dec b                                         ; $629c: $05
    add $23                                       ; $629d: $c6 $23
    dec b                                         ; $629f: $05
    rst $00                                       ; $62a0: $c7
    inc hl                                        ; $62a1: $23
    dec b                                         ; $62a2: $05
    ret z                                         ; $62a3: $c8

    inc hl                                        ; $62a4: $23
    dec b                                         ; $62a5: $05
    ret                                           ; $62a6: $c9


    inc hl                                        ; $62a7: $23
    dec b                                         ; $62a8: $05
    jp z, Jump_000_0523                           ; $62a9: $ca $23 $05

    sla e                                         ; $62ac: $cb $23
    dec b                                         ; $62ae: $05
    call z, Call_000_0523                         ; $62af: $cc $23 $05
    call Call_000_0523                            ; $62b2: $cd $23 $05
    adc $23                                       ; $62b5: $ce $23
    dec b                                         ; $62b7: $05
    rst $08                                       ; $62b8: $cf
    inc hl                                        ; $62b9: $23
    dec b                                         ; $62ba: $05
    ret nc                                        ; $62bb: $d0

    inc hl                                        ; $62bc: $23
    dec b                                         ; $62bd: $05
    pop de                                        ; $62be: $d1
    inc hl                                        ; $62bf: $23
    dec b                                         ; $62c0: $05
    jp nc, Jump_000_0523                          ; $62c1: $d2 $23 $05

    db $d3                                        ; $62c4: $d3
    inc hl                                        ; $62c5: $23
    dec b                                         ; $62c6: $05
    call nc, Call_000_0523                        ; $62c7: $d4 $23 $05
    push de                                       ; $62ca: $d5
    inc hl                                        ; $62cb: $23
    dec b                                         ; $62cc: $05
    sub $23                                       ; $62cd: $d6 $23
    dec b                                         ; $62cf: $05
    rst $10                                       ; $62d0: $d7
    inc hl                                        ; $62d1: $23
    dec b                                         ; $62d2: $05
    ret c                                         ; $62d3: $d8

Jump_026_62d4:
    inc hl                                        ; $62d4: $23
    dec b                                         ; $62d5: $05
    reti                                          ; $62d6: $d9


    inc hl                                        ; $62d7: $23
    dec b                                         ; $62d8: $05
    jp c, Jump_000_0523                           ; $62d9: $da $23 $05

    db $db                                        ; $62dc: $db
    inc hl                                        ; $62dd: $23
    dec b                                         ; $62de: $05
    call c, Call_000_0523                         ; $62df: $dc $23 $05
    db $dd                                        ; $62e2: $dd
    inc hl                                        ; $62e3: $23
    dec b                                         ; $62e4: $05
    sbc $23                                       ; $62e5: $de $23
    dec b                                         ; $62e7: $05
    rst $18                                       ; $62e8: $df
    inc hl                                        ; $62e9: $23
    dec b                                         ; $62ea: $05
    ldh [rNR44], a                                ; $62eb: $e0 $23
    dec b                                         ; $62ed: $05
    pop hl                                        ; $62ee: $e1
    inc hl                                        ; $62ef: $23
    dec b                                         ; $62f0: $05
    ld [c], a                                     ; $62f1: $e2
    inc hl                                        ; $62f2: $23
    dec b                                         ; $62f3: $05
    db $e3                                        ; $62f4: $e3
    inc hl                                        ; $62f5: $23
    dec b                                         ; $62f6: $05
    db $e4                                        ; $62f7: $e4
    inc hl                                        ; $62f8: $23
    dec b                                         ; $62f9: $05
    push hl                                       ; $62fa: $e5
    inc hl                                        ; $62fb: $23
    dec b                                         ; $62fc: $05
    and $23                                       ; $62fd: $e6 $23
    dec b                                         ; $62ff: $05
    rst $20                                       ; $6300: $e7
    inc hl                                        ; $6301: $23
    dec b                                         ; $6302: $05
    add sp, $23                                   ; $6303: $e8 $23
    dec b                                         ; $6305: $05
    jp hl                                         ; $6306: $e9


    inc hl                                        ; $6307: $23
    dec b                                         ; $6308: $05
    ld [$0523], a                                 ; $6309: $ea $23 $05
    db $eb                                        ; $630c: $eb
    inc hl                                        ; $630d: $23
    dec b                                         ; $630e: $05
    db $ec                                        ; $630f: $ec
    inc hl                                        ; $6310: $23
    dec b                                         ; $6311: $05
    db $ed                                        ; $6312: $ed
    inc hl                                        ; $6313: $23
    dec b                                         ; $6314: $05
    xor $23                                       ; $6315: $ee $23
    dec b                                         ; $6317: $05
    db $f4                                        ; $6318: $f4
    inc hl                                        ; $6319: $23
    dec b                                         ; $631a: $05
    nop                                           ; $631b: $00
    inc h                                         ; $631c: $24

Call_026_631d:
    dec b                                         ; $631d: $05
    db $10                                        ; $631e: $10
    inc h                                         ; $631f: $24
    dec b                                         ; $6320: $05
    dec de                                        ; $6321: $1b
    inc h                                         ; $6322: $24
    dec b                                         ; $6323: $05
    ld h, $24                                     ; $6324: $26 $24
    dec b                                         ; $6326: $05
    ld [hl-], a                                   ; $6327: $32
    inc h                                         ; $6328: $24
    dec b                                         ; $6329: $05
    ld b, d                                       ; $632a: $42
    inc h                                         ; $632b: $24
    dec b                                         ; $632c: $05
    ld b, e                                       ; $632d: $43
    inc h                                         ; $632e: $24
    dec b                                         ; $632f: $05
    ld b, h                                       ; $6330: $44
    inc h                                         ; $6331: $24
    dec b                                         ; $6332: $05
    ld b, l                                       ; $6333: $45
    inc h                                         ; $6334: $24
    dec b                                         ; $6335: $05
    ld b, [hl]                                    ; $6336: $46
    inc h                                         ; $6337: $24
    dec b                                         ; $6338: $05
    ld b, a                                       ; $6339: $47
    inc h                                         ; $633a: $24
    dec b                                         ; $633b: $05
    ld c, b                                       ; $633c: $48
    inc h                                         ; $633d: $24
    dec b                                         ; $633e: $05
    ld c, c                                       ; $633f: $49
    inc h                                         ; $6340: $24
    dec b                                         ; $6341: $05
    ld c, d                                       ; $6342: $4a
    inc h                                         ; $6343: $24
    dec b                                         ; $6344: $05
    ld c, e                                       ; $6345: $4b
    inc h                                         ; $6346: $24
    dec b                                         ; $6347: $05
    ld c, h                                       ; $6348: $4c
    inc h                                         ; $6349: $24
    dec b                                         ; $634a: $05
    ld c, l                                       ; $634b: $4d
    inc h                                         ; $634c: $24
    dec b                                         ; $634d: $05
    ld d, l                                       ; $634e: $55
    inc h                                         ; $634f: $24
    dec b                                         ; $6350: $05
    ld d, [hl]                                    ; $6351: $56
    inc h                                         ; $6352: $24
    dec b                                         ; $6353: $05
    ld d, a                                       ; $6354: $57
    inc h                                         ; $6355: $24
    dec b                                         ; $6356: $05
    ld e, b                                       ; $6357: $58
    inc h                                         ; $6358: $24
    dec b                                         ; $6359: $05
    ld e, c                                       ; $635a: $59
    inc h                                         ; $635b: $24
    dec b                                         ; $635c: $05
    ld e, d                                       ; $635d: $5a
    inc h                                         ; $635e: $24
    dec b                                         ; $635f: $05
    ld e, e                                       ; $6360: $5b
    inc h                                         ; $6361: $24
    dec b                                         ; $6362: $05
    ld e, h                                       ; $6363: $5c
    inc h                                         ; $6364: $24
    dec b                                         ; $6365: $05
    ld e, l                                       ; $6366: $5d
    inc h                                         ; $6367: $24
    dec b                                         ; $6368: $05
    ld e, [hl]                                    ; $6369: $5e
    inc h                                         ; $636a: $24
    dec b                                         ; $636b: $05
    ld e, a                                       ; $636c: $5f
    inc h                                         ; $636d: $24
    dec b                                         ; $636e: $05
    ld h, b                                       ; $636f: $60
    inc h                                         ; $6370: $24
    dec b                                         ; $6371: $05
    ld h, c                                       ; $6372: $61
    inc h                                         ; $6373: $24
    dec b                                         ; $6374: $05
    ld h, d                                       ; $6375: $62
    inc h                                         ; $6376: $24
    dec b                                         ; $6377: $05
    ld h, e                                       ; $6378: $63
    inc h                                         ; $6379: $24
    dec b                                         ; $637a: $05
    ld h, h                                       ; $637b: $64
    inc h                                         ; $637c: $24
    dec b                                         ; $637d: $05
    ld h, l                                       ; $637e: $65
    inc h                                         ; $637f: $24
    dec b                                         ; $6380: $05
    ld h, [hl]                                    ; $6381: $66
    inc h                                         ; $6382: $24
    dec b                                         ; $6383: $05
    ld h, a                                       ; $6384: $67
    inc h                                         ; $6385: $24
    dec b                                         ; $6386: $05
    ld l, b                                       ; $6387: $68
    inc h                                         ; $6388: $24
    dec b                                         ; $6389: $05
    ld l, c                                       ; $638a: $69
    inc h                                         ; $638b: $24
    dec b                                         ; $638c: $05
    ld l, d                                       ; $638d: $6a
    inc h                                         ; $638e: $24
    dec b                                         ; $638f: $05
    ld a, b                                       ; $6390: $78
    inc h                                         ; $6391: $24
    dec b                                         ; $6392: $05
    ld a, c                                       ; $6393: $79
    inc h                                         ; $6394: $24
    dec b                                         ; $6395: $05
    add l                                         ; $6396: $85
    inc h                                         ; $6397: $24
    dec b                                         ; $6398: $05
    sub b                                         ; $6399: $90
    inc h                                         ; $639a: $24
    dec b                                         ; $639b: $05
    sbc d                                         ; $639c: $9a
    inc h                                         ; $639d: $24
    dec b                                         ; $639e: $05
    and h                                         ; $639f: $a4
    inc h                                         ; $63a0: $24
    dec b                                         ; $63a1: $05
    and l                                         ; $63a2: $a5
    inc h                                         ; $63a3: $24
    dec b                                         ; $63a4: $05
    and [hl]                                      ; $63a5: $a6

Jump_026_63a6:
    inc h                                         ; $63a6: $24
    dec b                                         ; $63a7: $05
    and a                                         ; $63a8: $a7
    inc h                                         ; $63a9: $24
    dec b                                         ; $63aa: $05
    xor b                                         ; $63ab: $a8
    inc h                                         ; $63ac: $24
    dec b                                         ; $63ad: $05
    xor c                                         ; $63ae: $a9
    inc h                                         ; $63af: $24
    dec b                                         ; $63b0: $05
    xor d                                         ; $63b1: $aa
    inc h                                         ; $63b2: $24
    dec b                                         ; $63b3: $05
    xor e                                         ; $63b4: $ab
    inc h                                         ; $63b5: $24
    dec b                                         ; $63b6: $05
    xor h                                         ; $63b7: $ac
    inc h                                         ; $63b8: $24
    dec b                                         ; $63b9: $05
    xor l                                         ; $63ba: $ad
    inc h                                         ; $63bb: $24
    dec b                                         ; $63bc: $05
    xor [hl]                                      ; $63bd: $ae
    inc h                                         ; $63be: $24
    dec b                                         ; $63bf: $05
    xor a                                         ; $63c0: $af
    inc h                                         ; $63c1: $24
    dec b                                         ; $63c2: $05
    or b                                          ; $63c3: $b0
    inc h                                         ; $63c4: $24
    dec b                                         ; $63c5: $05
    or c                                          ; $63c6: $b1
    inc h                                         ; $63c7: $24
    dec b                                         ; $63c8: $05
    or d                                          ; $63c9: $b2
    inc h                                         ; $63ca: $24
    dec b                                         ; $63cb: $05
    or e                                          ; $63cc: $b3
    inc h                                         ; $63cd: $24
    dec b                                         ; $63ce: $05
    or h                                          ; $63cf: $b4
    inc h                                         ; $63d0: $24
    dec b                                         ; $63d1: $05
    or l                                          ; $63d2: $b5
    inc h                                         ; $63d3: $24
    dec b                                         ; $63d4: $05
    or [hl]                                       ; $63d5: $b6
    inc h                                         ; $63d6: $24
    dec b                                         ; $63d7: $05
    cp e                                          ; $63d8: $bb
    inc h                                         ; $63d9: $24
    dec b                                         ; $63da: $05
    cp h                                          ; $63db: $bc
    inc h                                         ; $63dc: $24
    dec b                                         ; $63dd: $05
    cp l                                          ; $63de: $bd
    inc h                                         ; $63df: $24
    dec b                                         ; $63e0: $05
    cp [hl]                                       ; $63e1: $be
    inc h                                         ; $63e2: $24
    dec b                                         ; $63e3: $05
    cp a                                          ; $63e4: $bf
    inc h                                         ; $63e5: $24
    ld d, d                                       ; $63e6: $52
    ld d, b                                       ; $63e7: $50
    ld d, c                                       ; $63e8: $51
    adc h                                         ; $63e9: $8c
    and [hl]                                      ; $63ea: $a6
    xor b                                         ; $63eb: $a8
    xor c                                         ; $63ec: $a9
    xor e                                         ; $63ed: $ab
    xor l                                         ; $63ee: $ad
    xor a                                         ; $63ef: $af
    or b                                          ; $63f0: $b0
    or c                                          ; $63f1: $b1
    or d                                          ; $63f2: $b2
    or e                                          ; $63f3: $b3
    or h                                          ; $63f4: $b4
    or l                                          ; $63f5: $b5
    or [hl]                                       ; $63f6: $b6
    or a                                          ; $63f7: $b7
    cp b                                          ; $63f8: $b8
    cp c                                          ; $63f9: $b9
    cp d                                          ; $63fa: $ba
    cp e                                          ; $63fb: $bb
    ret nz                                        ; $63fc: $c0

    pop bc                                        ; $63fd: $c1
    jp nz, $c5c4                                  ; $63fe: $c2 $c4 $c5

    add $c7                                       ; $6401: $c6 $c7
    jp z, $cccb                                   ; $6403: $ca $cb $cc

    call $cfce                                    ; $6406: $cd $ce $cf
    pop de                                        ; $6409: $d1
    jp nc, $d6d5                                  ; $640a: $d2 $d5 $d6

    ret c                                         ; $640d: $d8

    jp c, $e0df                                   ; $640e: $da $df $e0

    ld [$f8f1], a                                 ; $6411: $ea $f1 $f8
    ld a, [$00fe]                                 ; $6414: $fa $fe $00
    and c                                         ; $6417: $a1
    cp a                                          ; $6418: $bf
    jp $d4d0                                      ; $6419: $c3 $d0 $d4


    rst $10                                       ; $641c: $d7
    reti                                          ; $641d: $d9


    ld bc, $0302                                  ; $641e: $01 $02 $03
    inc b                                         ; $6421: $04
    dec b                                         ; $6422: $05
    ld b, $07                                     ; $6423: $06 $07
    ld [$0a09], sp                                ; $6425: $08 $09 $0a
    dec bc                                        ; $6428: $0b
    inc c                                         ; $6429: $0c
    dec c                                         ; $642a: $0d
    ld c, $0f                                     ; $642b: $0e $0f
    db $10                                        ; $642d: $10
    ld de, $1312                                  ; $642e: $11 $12 $13
    inc d                                         ; $6431: $14
    dec d                                         ; $6432: $15
    ld d, $17                                     ; $6433: $16 $17
    db $d3                                        ; $6435: $d3
    ret z                                         ; $6436: $c8

    jr jr_026_6452                                ; $6437: $18 $19

    ld a, [de]                                    ; $6439: $1a
    dec de                                        ; $643a: $1b
    inc e                                         ; $643b: $1c
    dec e                                         ; $643c: $1d
    ld e, $1f                                     ; $643d: $1e $1f

jr_026_643f:
    jr nz, jr_026_6462                            ; $643f: $20 $21

    ld [hl+], a                                   ; $6441: $22
    inc hl                                        ; $6442: $23
    inc h                                         ; $6443: $24
    dec h                                         ; $6444: $25
    ld h, $ac                                     ; $6445: $26 $ac
    ret                                           ; $6447: $c9


    or $a7                                        ; $6448: $f6 $a7
    db $eb                                        ; $644a: $eb
    daa                                           ; $644b: $27
    ld [c], a                                     ; $644c: $e2
    ldh a, [$28]                                  ; $644d: $f0 $28
    add hl, hl                                    ; $644f: $29
    ld a, [hl+]                                   ; $6450: $2a
    dec hl                                        ; $6451: $2b

jr_026_6452:
    inc l                                         ; $6452: $2c
    dec l                                         ; $6453: $2d
    ld l, $2f                                     ; $6454: $2e $2f
    rst $30                                       ; $6456: $f7
    jr nc, jr_026_643f                            ; $6457: $30 $e6

    rst $20                                       ; $6459: $e7
    db $ed                                        ; $645a: $ed
    db $e3                                        ; $645b: $e3
    ld sp, $32f9                                  ; $645c: $31 $f9 $32
    inc sp                                        ; $645f: $33
    inc [hl]                                      ; $6460: $34
    dec [hl]                                      ; $6461: $35

jr_026_6462:
    ld [hl], $ae                                  ; $6462: $36 $ae
    rst $38                                       ; $6464: $ff
    db $e4                                        ; $6465: $e4
    scf                                           ; $6466: $37
    push af                                       ; $6467: $f5
    jr c, jr_026_64a3                             ; $6468: $38 $39

    db $ec                                        ; $646a: $ec
    add sp, $3a                                   ; $646b: $e8 $3a
    dec sp                                        ; $646d: $3b
    inc a                                         ; $646e: $3c
    dec a                                         ; $646f: $3d
    jp hl                                         ; $6470: $e9


    di                                            ; $6471: $f3
    ld a, $ee                                     ; $6472: $3e $ee
    ccf                                           ; $6474: $3f
    ld a, [c]                                     ; $6475: $f2
    pop hl                                        ; $6476: $e1
    ld b, b                                       ; $6477: $40
    db $f4                                        ; $6478: $f4
    ld b, c                                       ; $6479: $41
    rst $28                                       ; $647a: $ef
    ld b, d                                       ; $647b: $42
    ld b, e                                       ; $647c: $43
    ld b, h                                       ; $647d: $44
    push hl                                       ; $647e: $e5
    ld b, l                                       ; $647f: $45
    ld b, [hl]                                    ; $6480: $46
    ld b, a                                       ; $6481: $47
    ld c, b                                       ; $6482: $48
    ld c, c                                       ; $6483: $49
    ld c, d                                       ; $6484: $4a
    and b                                         ; $6485: $a0
    ld c, e                                       ; $6486: $4b
    ld c, h                                       ; $6487: $4c
    ld c, l                                       ; $6488: $4d
    ld c, [hl]                                    ; $6489: $4e
    ld c, a                                       ; $648a: $4f
    db $fd                                        ; $648b: $fd
    ld e, $da                                     ; $648c: $1e $da
    ld c, a                                       ; $648e: $4f
    rst $38                                       ; $648f: $ff
    add a                                         ; $6490: $87
    or $d3                                        ; $6491: $f6 $d3
    ld a, a                                       ; $6493: $7f
    cp a                                          ; $6494: $bf
    db $fd                                        ; $6495: $fd
    or $87                                        ; $6496: $f6 $87
    ld bc, $52c7                                  ; $6498: $01 $c7 $52
    db $10                                        ; $649b: $10
    cpl                                           ; $649c: $2f
    sub h                                         ; $649d: $94
    sbc l                                         ; $649e: $9d
    ld [hl], c                                    ; $649f: $71
    ld [hl+], a                                   ; $64a0: $22
    ld b, $27                                     ; $64a1: $06 $27

jr_026_64a3:
    xor c                                         ; $64a3: $a9
    ccf                                           ; $64a4: $3f
    ld hl, sp+$7a                                 ; $64a5: $f8 $7a
    inc a                                         ; $64a7: $3c
    rlca                                          ; $64a8: $07
    rst $18                                       ; $64a9: $df
    add hl, de                                    ; $64aa: $19
    dec e                                         ; $64ab: $1d
    and [hl]                                      ; $64ac: $a6
    cp $87                                        ; $64ad: $fe $87
    xor a                                         ; $64af: $af
    rst $18                                       ; $64b0: $df
    ld b, e                                       ; $64b1: $43
    ei                                            ; $64b2: $fb
    jp hl                                         ; $64b3: $e9


    rst $38                                       ; $64b4: $ff
    ldh [$7e], a                                  ; $64b5: $e0 $7e
    ld a, [$b7ef]                                 ; $64b7: $fa $ef $b7
    rst $18                                       ; $64ba: $df
    cp $30                                        ; $64bb: $fe $30
    dec l                                         ; $64bd: $2d
    sbc l                                         ; $64be: $9d
    adc a                                         ; $64bf: $8f
    ld de, $dd03                                  ; $64c0: $11 $03 $dd
    ld d, h                                       ; $64c3: $54
    jr jr_026_64cc                                ; $64c4: $18 $06

    ld d, $ff                                     ; $64c6: $16 $ff
    db $10                                        ; $64c8: $10
    inc bc                                        ; $64c9: $03
    rst $00                                       ; $64ca: $c7
    push bc                                       ; $64cb: $c5

jr_026_64cc:
    ld a, a                                       ; $64cc: $7f
    inc c                                         ; $64cd: $0c
    dec l                                         ; $64ce: $2d
    db $dd                                        ; $64cf: $dd
    rrca                                          ; $64d0: $0f
    rst $18                                       ; $64d1: $df
    sub c                                         ; $64d2: $91
    db $fd                                        ; $64d3: $fd
    push af                                       ; $64d4: $f5
    ld [hl], e                                    ; $64d5: $73
    ld h, h                                       ; $64d6: $64
    rst $38                                       ; $64d7: $ff
    jp Jump_026_7727                              ; $64d8: $c3 $27 $77


    ccf                                           ; $64db: $3f
    ld a, h                                       ; $64dc: $7c
    ld b, a                                       ; $64dd: $47
    or $d7                                        ; $64de: $f6 $d7
    rst $08                                       ; $64e0: $cf
    sub c                                         ; $64e1: $91
    db $fd                                        ; $64e2: $fd
    rrca                                          ; $64e3: $0f
    inc bc                                        ; $64e4: $03
    rst $00                                       ; $64e5: $c7
    push bc                                       ; $64e6: $c5
    db $db                                        ; $64e7: $db
    ld a, c                                       ; $64e8: $79
    ld h, d                                       ; $64e9: $62
    cp c                                          ; $64ea: $b9
    inc sp                                        ; $64eb: $33
    jr z, jr_026_651f                             ; $64ec: $28 $31

    rst $00                                       ; $64ee: $c7
    push bc                                       ; $64ef: $c5
    db $db                                        ; $64f0: $db
    ld a, c                                       ; $64f1: $79
    ld h, d                                       ; $64f2: $62
    cp c                                          ; $64f3: $b9
    ld h, e                                       ; $64f4: $63
    ld c, h                                       ; $64f5: $4c
    ld h, d                                       ; $64f6: $62
    rst $00                                       ; $64f7: $c7
    push bc                                       ; $64f8: $c5
    db $db                                        ; $64f9: $db
    ld a, c                                       ; $64fa: $79
    ld h, d                                       ; $64fb: $62
    cp c                                          ; $64fc: $b9
    ld e, $72                                     ; $64fd: $1e $72
    dec d                                         ; $64ff: $15
    inc bc                                        ; $6500: $03
    ld h, a                                       ; $6501: $67
    cp [hl]                                       ; $6502: $be
    add h                                         ; $6503: $84

Jump_026_6504:
    scf                                           ; $6504: $37
    add $9b                                       ; $6505: $c6 $9b
    ld b, $76                                     ; $6507: $06 $76
    ld b, $25                                     ; $6509: $06 $25
    ld b, $67                                     ; $650b: $06 $67
    cp [hl]                                       ; $650d: $be
    add h                                         ; $650e: $84
    scf                                           ; $650f: $37
    add $9b                                       ; $6510: $c6 $9b
    ld b, $76                                     ; $6512: $06 $76
    adc h                                         ; $6514: $8c
    ld c, c                                       ; $6515: $49
    inc c                                         ; $6516: $0c
    ld h, a                                       ; $6517: $67
    cp [hl]                                       ; $6518: $be
    add h                                         ; $6519: $84
    scf                                           ; $651a: $37
    add $9b                                       ; $651b: $c6 $9b
    ld b, $d6                                     ; $651d: $06 $d6

jr_026_651f:
    ld b, e                                       ; $651f: $43
    xor [hl]                                      ; $6520: $ae
    ld h, d                                       ; $6521: $62
    ld h, a                                       ; $6522: $67
    cp [hl]                                       ; $6523: $be
    or b                                          ; $6524: $b0
    dec de                                        ; $6525: $1b
    sbc $18                                       ; $6526: $de $18
    ld l, a                                       ; $6528: $6f
    ld a, [de]                                    ; $6529: $1a
    ret c                                         ; $652a: $d8

    add hl, de                                    ; $652b: $19
    sub h                                         ; $652c: $94
    jr @+$69                                      ; $652d: $18 $67

    cp [hl]                                       ; $652f: $be
    or b                                          ; $6530: $b0
    dec de                                        ; $6531: $1b
    sbc $18                                       ; $6532: $de $18
    ld l, a                                       ; $6534: $6f
    ld a, [de]                                    ; $6535: $1a
    ret c                                         ; $6536: $d8

    ld sp, $3126                                  ; $6537: $31 $26 $31
    ld h, a                                       ; $653a: $67
    cp [hl]                                       ; $653b: $be
    or b                                          ; $653c: $b0
    dec de                                        ; $653d: $1b
    sbc $18                                       ; $653e: $de $18
    ld l, a                                       ; $6540: $6f
    ld a, [de]                                    ; $6541: $1a
    ld e, b                                       ; $6542: $58
    rrca                                          ; $6543: $0f
    cp c                                          ; $6544: $b9
    adc d                                         ; $6545: $8a
    ld bc, $aa16                                  ; $6546: $01 $16 $aa
    sbc [hl]                                      ; $6549: $9e
    ret c                                         ; $654a: $d8

    call Call_026_419d                            ; $654b: $cd $9d $41
    adc c                                         ; $654e: $89
    ld bc, $aa16                                  ; $654f: $01 $16 $aa
    sbc [hl]                                      ; $6552: $9e
    ret c                                         ; $6553: $d8

    call Call_026_631d                            ; $6554: $cd $1d $63
    ld [de], a                                    ; $6557: $12
    inc bc                                        ; $6558: $03
    ld d, $aa                                     ; $6559: $16 $aa
    sbc [hl]                                      ; $655b: $9e

jr_026_655c:
    ret c                                         ; $655c: $d8

    call $90f5                                    ; $655d: $cd $f5 $90
    xor e                                         ; $6560: $ab
    jr @+$3f                                      ; $6561: $18 $3d

    cpl                                           ; $6563: $2f

jr_026_6564:
    dec b                                         ; $6564: $05
    ld a, [hl+]                                   ; $6565: $2a
    db $ec                                        ; $6566: $ec
    sbc d                                         ; $6567: $9a
    ld [hl], b                                    ; $6568: $70
    daa                                           ; $6569: $27
    cp l                                          ; $656a: $bd
    push af                                       ; $656b: $f5
    ld h, $28                                     ; $656c: $26 $28
    ld b, $27                                     ; $656e: $06 $27
    ld h, l                                       ; $6570: $65
    sub l                                         ; $6571: $95
    ld h, c                                       ; $6572: $61
    ld a, d                                       ; $6573: $7a
    jp z, $de7a                                   ; $6574: $ca $7a $de

    halt                                          ; $6577: $76
    dec sp                                        ; $6578: $3b
    ld [hl], $18                                  ; $6579: $36 $18
    daa                                           ; $657b: $27
    ld h, l                                       ; $657c: $65
    sub l                                         ; $657d: $95
    ld h, c                                       ; $657e: $61
    ld a, d                                       ; $657f: $7a
    jp z, Jump_026_4e4e                           ; $6580: $ca $4e $4e

    pop af                                        ; $6583: $f1
    dec bc                                        ; $6584: $0b
    jr jr_026_6564                                ; $6585: $18 $dd

    rst $18                                       ; $6587: $df
    push hl                                       ; $6588: $e5
    jp c, Jump_000_32b7                           ; $6589: $da $b7 $32

    or b                                          ; $658c: $b0
    ld e, $e9                                     ; $658d: $1e $e9
    ld a, [de]                                    ; $658f: $1a
    dec c                                         ; $6590: $0d
    ld h, b                                       ; $6591: $60
    daa                                           ; $6592: $27
    sbc e                                         ; $6593: $9b
    jp z, $8ec0                                   ; $6594: $ca $c0 $8e

    ld h, d                                       ; $6597: $62
    dec sp                                        ; $6598: $3b

jr_026_6599:
    ld b, l                                       ; $6599: $45
    dec c                                         ; $659a: $0d
    cp h                                          ; $659b: $bc
    add [hl]                                      ; $659c: $86
    jr jr_026_655c                                ; $659d: $18 $bd

    jp nc, $a8ac                                  ; $659f: $d2 $ac $a8

    push af                                       ; $65a2: $f5
    xor c                                         ; $65a3: $a9
    and $8b                                       ; $65a4: $e6 $8b
    xor a                                         ; $65a6: $af
    ld b, d                                       ; $65a7: $42
    rst $08                                       ; $65a8: $cf
    and [hl]                                      ; $65a9: $a6
    call nc, Call_000_3a0c                        ; $65aa: $d4 $0c $3a
    rra                                           ; $65ad: $1f
    inc hl                                        ; $65ae: $23
    xor h                                         ; $65af: $ac
    ld a, c                                       ; $65b0: $79
    rst $28                                       ; $65b1: $ef
    add d                                         ; $65b2: $82
    ld bc, $d2bd                                  ; $65b3: $01 $bd $d2
    adc h                                         ; $65b6: $8c
    dec h                                         ; $65b7: $25
    push de                                       ; $65b8: $d5
    ld a, h                                       ; $65b9: $7c
    ld b, l                                       ; $65ba: $45
    xor l                                         ; $65bb: $ad
    cp a                                          ; $65bc: $bf
    and a                                         ; $65bd: $a7
    inc [hl]                                      ; $65be: $34
    ld b, c                                       ; $65bf: $41
    ld e, c                                       ; $65c0: $59
    ld c, e                                       ; $65c1: $4b
    rst $20                                       ; $65c2: $e7
    ld h, e                                       ; $65c3: $63
    ld e, h                                       ; $65c4: $5c
    rst $30                                       ; $65c5: $f7
    cp h                                          ; $65c6: $bc
    db $e4                                        ; $65c7: $e4
    jr nc, jr_026_6599                            ; $65c8: $30 $cf

    ld d, l                                       ; $65ca: $55
    ld a, [bc]                                    ; $65cb: $0a
    ld a, $2f                                     ; $65cc: $3e $2f
    rla                                           ; $65ce: $17
    ld b, $9d                                     ; $65cf: $06 $9d
    adc a                                         ; $65d1: $8f
    or c                                          ; $65d2: $b1
    dec bc                                        ; $65d3: $0b
    ld b, $bd                                     ; $65d4: $06 $bd
    jp nc, $e54c                                  ; $65d6: $d2 $4c $e5

    ld h, a                                       ; $65d9: $67
    ld c, b                                       ; $65da: $48
    db $db                                        ; $65db: $db
    pop af                                        ; $65dc: $f1
    rst $20                                       ; $65dd: $e7
    cp c                                          ; $65de: $b9
    add a                                         ; $65df: $87
    ld c, d                                       ; $65e0: $4a
    dec sp                                        ; $65e1: $3b
    adc a                                         ; $65e2: $8f
    jr nc, jr_026_6622                            ; $65e3: $30 $3d

    ccf                                           ; $65e5: $3f
    ld d, [hl]                                    ; $65e6: $56
    add hl, de                                    ; $65e7: $19
    cp $3c                                        ; $65e8: $fe $3c
    ld [hl], a                                    ; $65ea: $77
    call z, $20d5                                 ; $65eb: $cc $d5 $20
    ld l, c                                       ; $65ee: $69
    ld b, a                                       ; $65ef: $47
    push bc                                       ; $65f0: $c5
    ld hl, sp+$0d                                 ; $65f1: $f8 $0d
    ld [hl], a                                    ; $65f3: $77
    xor l                                         ; $65f4: $ad
    ld a, [hl+]                                   ; $65f5: $2a
    jp nc, $0c20                                  ; $65f6: $d2 $20 $0c

    sub [hl]                                      ; $65f9: $96
    sbc d                                         ; $65fa: $9a
    push af                                       ; $65fb: $f5
    ld b, a                                       ; $65fc: $47
    ld l, a                                       ; $65fd: $6f
    ld a, l                                       ; $65fe: $7d
    add hl, de                                    ; $65ff: $19
    db $fc                                        ; $6600: $fc
    db $d3                                        ; $6601: $d3
    ld [hl], h                                    ; $6602: $74
    sbc l                                         ; $6603: $9d
    xor b                                         ; $6604: $a8
    push de                                       ; $6605: $d5
    cpl                                           ; $6606: $2f
    sbc $fa                                       ; $6607: $de $fa
    rst $08                                       ; $6609: $cf
    res 0, l                                      ; $660a: $cb $85
    or l                                          ; $660c: $b5
    rst $18                                       ; $660d: $df
    ld c, [hl]                                    ; $660e: $4e
    ld sp, hl                                     ; $660f: $f9
    ld l, $18                                     ; $6610: $2e $18
    dec a                                         ; $6612: $3d
    adc d                                         ; $6613: $8a
    ld a, d                                       ; $6614: $7a
    dec c                                         ; $6615: $0d
    sub $fe                                       ; $6616: $d6 $fe
    ld c, d                                       ; $6618: $4a
    dec c                                         ; $6619: $0d
    db $fc                                        ; $661a: $fc
    cp h                                          ; $661b: $bc
    cp h                                          ; $661c: $bc
    db $fc                                        ; $661d: $fc
    ld l, $8c                                     ; $661e: $2e $8c
    sub d                                         ; $6620: $92
    ld a, [hl]                                    ; $6621: $7e

jr_026_6622:
    pop af                                        ; $6622: $f1
    sub $7f                                       ; $6623: $d6 $7f
    rst $10                                       ; $6625: $d7
    pop de                                        ; $6626: $d1
    ld a, d                                       ; $6627: $7a
    sub h                                         ; $6628: $94
    dec bc                                        ; $6629: $0b
    cp e                                          ; $662a: $bb
    or b                                          ; $662b: $b0
    ld d, e                                       ; $662c: $53
    ld h, e                                       ; $662d: $63
    cp h                                          ; $662e: $bc
    ld d, [hl]                                    ; $662f: $56
    dec h                                         ; $6630: $25
    or $52                                        ; $6631: $f6 $52

jr_026_6633:
    add e                                         ; $6633: $83
    push af                                       ; $6634: $f5
    ld d, h                                       ; $6635: $54
    ld h, d                                       ; $6636: $62
    ld l, e                                       ; $6637: $6b
    add hl, hl                                    ; $6638: $29
    reti                                          ; $6639: $d9


    pop hl                                        ; $663a: $e1
    ld c, [hl]                                    ; $663b: $4e
    ld h, c                                       ; $663c: $61
    call Call_026_5597                            ; $663d: $cd $97 $55
    ld c, d                                       ; $6640: $4a
    add e                                         ; $6641: $83
    rst $38                                       ; $6642: $ff
    or l                                          ; $6643: $b5
    sbc e                                         ; $6644: $9b
    ld a, c                                       ; $6645: $79
    ld sp, hl                                     ; $6646: $f9
    pop bc                                        ; $6647: $c1
    dec c                                         ; $6648: $0d
    ld [$52cd], sp                                ; $6649: $08 $cd $52
    adc e                                         ; $664c: $8b
    ld [hl], c                                    ; $664d: $71
    ld b, c                                       ; $664e: $41
    xor $d2                                       ; $664f: $ee $d2
    sub h                                         ; $6651: $94
    ret c                                         ; $6652: $d8

    ldh [$7f], a                                  ; $6653: $e0 $7f
    sbc [hl]                                      ; $6655: $9e
    ld l, e                                       ; $6656: $6b
    cp [hl]                                       ; $6657: $be
    inc l                                         ; $6658: $2c
    ld a, b                                       ; $6659: $78
    rst $30                                       ; $665a: $f7
    ld c, e                                       ; $665b: $4b
    pop bc                                        ; $665c: $c1
    ld [hl], h                                    ; $665d: $74
    cp h                                          ; $665e: $bc
    ld [de], a                                    ; $665f: $12
    ld b, e                                       ; $6660: $43
    db $eb                                        ; $6661: $eb
    push af                                       ; $6662: $f5
    ld h, l                                       ; $6663: $65
    sub l                                         ; $6664: $95
    jp nc, $439e                                  ; $6665: $d2 $9e $43

    daa                                           ; $6668: $27
    and [hl]                                      ; $6669: $a6
    db $fc                                        ; $666a: $fc
    ld [hl], h                                    ; $666b: $74
    db $ed                                        ; $666c: $ed
    db $eb                                        ; $666d: $eb
    cp e                                          ; $666e: $bb
    or $9a                                        ; $666f: $f6 $9a
    cpl                                           ; $6671: $2f
    adc e                                         ; $6672: $8b
    or a                                          ; $6673: $b7
    cp $ab                                        ; $6674: $fe $ab
    reti                                          ; $6676: $d9


    add hl, hl                                    ; $6677: $29
    cp a                                          ; $6678: $bf
    ld h, $cd                                     ; $6679: $26 $cd
    adc $cb                                       ; $667b: $ce $cb
    ld c, e                                       ; $667d: $4b
    dec bc                                        ; $667e: $0b
    ld a, a                                       ; $667f: $7f
    sub a                                         ; $6680: $97
    ldh [$b2], a                                  ; $6681: $e0 $b2
    ld b, a                                       ; $6683: $47
    jr jr_026_6633                                ; $6684: $18 $ad

    rra                                           ; $6686: $1f
    ld h, e                                       ; $6687: $63
    ld [hl], d                                    ; $6688: $72
    rst $10                                       ; $6689: $d7
    xor d                                         ; $668a: $aa
    ld [hl+], a                                   ; $668b: $22
    dec c                                         ; $668c: $0d
    ld e, d                                       ; $668d: $5a
    adc a                                         ; $668e: $8f
    ld [hl], d                                    ; $668f: $72
    ld h, c                                       ; $6690: $61
    rla                                           ; $6691: $17
    halt                                          ; $6692: $76
    or d                                          ; $6693: $b2
    and b                                         ; $6694: $a0
    sbc l                                         ; $6695: $9d
    ld a, [de]                                    ; $6696: $1a
    db $e3                                        ; $6697: $e3
    or l                                          ; $6698: $b5
    ld a, [hl+]                                   ; $6699: $2a
    or c                                          ; $669a: $b1
    rla                                           ; $669b: $17
    or h                                          ; $669c: $b4
    or l                                          ; $669d: $b5
    ld a, [hl]                                    ; $669e: $7e
    dec l                                         ; $669f: $2d
    add $c1                                       ; $66a0: $c6 $c1
    ei                                            ; $66a2: $fb
    sbc d                                         ; $66a3: $9a
    cpl                                           ; $66a4: $2f
    inc sp                                        ; $66a5: $33
    sbc l                                         ; $66a6: $9d
    pop af                                        ; $66a7: $f1
    rst $10                                       ; $66a8: $d7
    bit 6, h                                      ; $66a9: $cb $74
    cp h                                          ; $66ab: $bc
    ld [de], a                                    ; $66ac: $12
    ld b, e                                       ; $66ad: $43
    db $eb                                        ; $66ae: $eb
    sub [hl]                                      ; $66af: $96
    pop hl                                        ; $66b0: $e1
    rst $08                                       ; $66b1: $cf
    cp [hl]                                       ; $66b2: $be
    call nz, $fe16                                ; $66b3: $c4 $16 $fe
    and d                                         ; $66b6: $a2
    ld a, [$d4cb]                                 ; $66b7: $fa $cb $d4
    ld [hl], a                                    ; $66ba: $77
    cp h                                          ; $66bb: $bc
    ld e, h                                       ; $66bc: $5c
    ld a, [bc]                                    ; $66bd: $0a
    jp nc, $d61d                                  ; $66be: $d2 $1d $d6

    ld d, [hl]                                    ; $66c1: $56
    xor d                                         ; $66c2: $aa
    inc hl                                        ; $66c3: $23
    inc c                                         ; $66c4: $0c
    dec a                                         ; $66c5: $3d
    jp z, $d7cb                                   ; $66c6: $ca $cb $d7

    ld h, b                                       ; $66c9: $60
    sub b                                         ; $66ca: $90
    pop hl                                        ; $66cb: $e1
    ld a, e                                       ; $66cc: $7b
    cp c                                          ; $66cd: $b9
    inc d                                         ; $66ce: $14
    adc h                                         ; $66cf: $8c
    sub a                                         ; $66d0: $97
    db $eb                                        ; $66d1: $eb
    cp $b4                                        ; $66d2: $fe $b4
    and h                                         ; $66d4: $a4
    ld a, c                                       ; $66d5: $79
    ld sp, hl                                     ; $66d6: $f9
    or c                                          ; $66d7: $b1
    ld c, h                                       ; $66d8: $4c
    ld b, c                                       ; $66d9: $41
    ld [$e761], sp                                ; $66da: $08 $61 $e7
    ld e, $4b                                     ; $66dd: $1e $4b
    cp $c2                                        ; $66df: $fe $c2
    dec e                                         ; $66e1: $1d
    cp b                                          ; $66e2: $b8
    jr z, jr_026_66ea                             ; $66e3: $28 $05

    cpl                                           ; $66e5: $2f
    call c, $8db5                                 ; $66e6: $dc $b5 $8d
    rst $08                                       ; $66e9: $cf

jr_026_66ea:
    or l                                          ; $66ea: $b5
    cp $2b                                        ; $66eb: $fe $2b
    rst $38                                       ; $66ed: $ff
    inc c                                         ; $66ee: $0c
    inc bc                                        ; $66ef: $03
    and a                                         ; $66f0: $a7
    jp c, $8be3                                   ; $66f1: $da $e3 $8b

    ld a, [$d794]                                 ; $66f4: $fa $94 $d7
    db $eb                                        ; $66f7: $eb
    jr nc, @+$31                                  ; $66f8: $30 $2f

    ccf                                           ; $66fa: $3f
    cp b                                          ; $66fb: $b8
    or h                                          ; $66fc: $b4
    or h                                          ; $66fd: $b4
    rla                                           ; $66fe: $17
    ret z                                         ; $66ff: $c8

    ccf                                           ; $6700: $3f
    db $e3                                        ; $6701: $e3
    ld h, d                                       ; $6702: $62
    rst $00                                       ; $6703: $c7
    and l                                         ; $6704: $a5
    call z, $c24b                                 ; $6705: $cc $4b $c2
    adc a                                         ; $6708: $8f
    cpl                                           ; $6709: $2f
    add hl, sp                                    ; $670a: $39
    rst $10                                       ; $670b: $d7
    ld a, [$6daf]                                 ; $670c: $fa $af $6d
    ld a, h                                       ; $670f: $7c
    inc l                                         ; $6710: $2c
    ld b, a                                       ; $6711: $47
    jp hl                                         ; $6712: $e9


    ld a, e                                       ; $6713: $7b
    dec d                                         ; $6714: $15
    jp nz, Jump_026_6b27                          ; $6715: $c2 $27 $6b

    or e                                          ; $6718: $b3
    adc [hl]                                      ; $6719: $8e
    ld [hl], $63                                  ; $671a: $36 $63
    xor a                                         ; $671c: $af
    ld [de], a                                    ; $671d: $12
    sbc e                                         ; $671e: $9b
    ld e, l                                       ; $671f: $5d
    sbc d                                         ; $6720: $9a
    sub a                                         ; $6721: $97
    cp a                                          ; $6722: $bf
    ld [hl-], a                                   ; $6723: $32
    scf                                           ; $6724: $37
    ld b, d                                       ; $6725: $42
    xor b                                         ; $6726: $a8
    add [hl]                                      ; $6727: $86
    ld bc, $d2bd                                  ; $6728: $01 $bd $d2
    xor h                                         ; $672b: $ac
    ld d, d                                       ; $672c: $52
    and d                                         ; $672d: $a2
    db $f4                                        ; $672e: $f4
    dec b                                         ; $672f: $05
    cp c                                          ; $6730: $b9
    ld c, e                                       ; $6731: $4b
    sbc [hl]                                      ; $6732: $9e
    di                                            ; $6733: $f3
    ld a, [c]                                     ; $6734: $f2
    or e                                          ; $6735: $b3
    xor d                                         ; $6736: $aa
    adc c                                         ; $6737: $89
    ld a, $95                                     ; $6738: $3e $95
    rst $10                                       ; $673a: $d7
    add hl, de                                    ; $673b: $19
    adc d                                         ; $673c: $8a
    rrca                                          ; $673d: $0f
    or b                                          ; $673e: $b0
    ld h, $cd                                     ; $673f: $26 $cd
    adc d                                         ; $6741: $8a
    ld e, d                                       ; $6742: $5a
    ld a, a                                       ; $6743: $7f
    ld c, l                                       ; $6744: $4d
    ld a, [de]                                    ; $6745: $1a
    sbc c                                         ; $6746: $99
    ld d, l                                       ; $6747: $55
    ld c, l                                       ; $6748: $4d
    db $f4                                        ; $6749: $f4
    push de                                       ; $674a: $d5
    cp a                                          ; $674b: $bf

Jump_026_674c:
    ld b, c                                       ; $674c: $41
    jr jr_026_6776                                ; $674d: $18 $27

    dec bc                                        ; $674f: $0b
    ld e, d                                       ; $6750: $5a
    rst $30                                       ; $6751: $f7
    ld [hl], h                                    ; $6752: $74
    ld a, a                                       ; $6753: $7f
    jp hl                                         ; $6754: $e9


    cp d                                          ; $6755: $ba
    ld e, [hl]                                    ; $6756: $5e
    ld l, c                                       ; $6757: $69
    ld h, h                                       ; $6758: $64
    dec e                                         ; $6759: $1d
    dec d                                         ; $675a: $15
    ld l, a                                       ; $675b: $6f
    halt                                          ; $675c: $76
    ld h, c                                       ; $675d: $61
    cp h                                          ; $675e: $bc
    ld e, [hl]                                    ; $675f: $5e
    cp a                                          ; $6760: $bf
    inc d                                         ; $6761: $14
    ld c, h                                       ; $6762: $4c
    ld a, l                                       ; $6763: $7d
    ld e, [hl]                                    ; $6764: $5e
    ld a, [hl]                                    ; $6765: $7e
    ld c, a                                       ; $6766: $4f
    ld l, h                                       ; $6767: $6c
    ld l, c                                       ; $6768: $69
    rst $08                                       ; $6769: $cf
    sra a                                         ; $676a: $cb $2f
    ld h, [hl]                                    ; $676c: $66
    cp e                                          ; $676d: $bb
    db $dd                                        ; $676e: $dd
    jr nz, jr_026_677d                            ; $676f: $20 $0c

    ld d, $7b                                     ; $6771: $16 $7b
    ld c, l                                       ; $6773: $4d
    sbc d                                         ; $6774: $9a
    sbc d                                         ; $6775: $9a

jr_026_6776:
    db $fc                                        ; $6776: $fc
    ld h, d                                       ; $6777: $62
    ld h, [hl]                                    ; $6778: $66
    db $fd                                        ; $6779: $fd
    ld d, d                                       ; $677a: $52
    jr nc, jr_026_67b8                            ; $677b: $30 $3b

jr_026_677d:
    ld h, l                                       ; $677d: $65
    daa                                           ; $677e: $27
    dec bc                                        ; $677f: $0b
    ld e, d                                       ; $6780: $5a
    xor e                                         ; $6781: $ab
    ld b, $72                                     ; $6782: $06 $72
    add hl, de                                    ; $6784: $19
    ld [hl], a                                    ; $6785: $77
    push hl                                       ; $6786: $e5
    ld l, e                                       ; $6787: $6b
    or b                                          ; $6788: $b0
    or [hl]                                       ; $6789: $b6
    ld d, [hl]                                    ; $678a: $56
    push af                                       ; $678b: $f5
    pop de                                        ; $678c: $d1
    xor e                                         ; $678d: $ab
    call z, $cfcb                                 ; $678e: $cc $cb $cf
    xor d                                         ; $6791: $aa
    ld h, $3a                                     ; $6792: $26 $3a
    jr nz, jr_026_67a2                            ; $6794: $20 $0c

    daa                                           ; $6796: $27
    dec bc                                        ; $6797: $0b
    ld e, d                                       ; $6798: $5a
    xor e                                         ; $6799: $ab
    ld b, $72                                     ; $679a: $06 $72
    reti                                          ; $679c: $d9


    ld l, $8c                                     ; $679d: $2e $8c
    rst $10                                       ; $679f: $d7
    db $eb                                        ; $67a0: $eb
    sub a                                         ; $67a1: $97

jr_026_67a2:
    add d                                         ; $67a2: $82
    reti                                          ; $67a3: $d9


    add hl, hl                                    ; $67a4: $29
    ld l, e                                       ; $67a5: $6b
    jp nc, Jump_026_7d4c                          ; $67a6: $d2 $4c $7d

    ld e, [hl]                                    ; $67a9: $5e
    ld a, [hl]                                    ; $67aa: $7e
    or [hl]                                       ; $67ab: $b6
    jp z, $d89e                                   ; $67ac: $ca $9e $d8

    jp nc, $979e                                  ; $67af: $d2 $9e $97

    ld e, a                                       ; $67b2: $5f
    db $db                                        ; $67b3: $db
    call c, Call_000_2ec8                         ; $67b4: $dc $c8 $2e
    dec b                                         ; $67b7: $05

jr_026_67b8:
    ld [$2703], sp                                ; $67b8: $08 $03 $27
    dec bc                                        ; $67bb: $0b
    ld e, d                                       ; $67bc: $5a
    xor e                                         ; $67bd: $ab
    ld b, $72                                     ; $67be: $06 $72
    reti                                          ; $67c0: $d9


    sub h                                         ; $67c1: $94
    ret c                                         ; $67c2: $d8

    ld c, [hl]                                    ; $67c3: $4e
    ld d, $b4                                     ; $67c4: $16 $b4
    db $e3                                        ; $67c6: $e3
    push hl                                       ; $67c7: $e5
    halt                                          ; $67c8: $76

jr_026_67c9:
    ld c, d                                       ; $67c9: $4a
    ld h, [hl]                                    ; $67ca: $66
    ld a, l                                       ; $67cb: $7d
    ld b, l                                       ; $67cc: $45
    xor l                                         ; $67cd: $ad
    cp a                                          ; $67ce: $bf
    or $3f                                        ; $67cf: $f6 $3f
    adc l                                         ; $67d1: $8d
    rst $10                                       ; $67d2: $d7
    db $eb                                        ; $67d3: $eb
    sub a                                         ; $67d4: $97
    add d                                         ; $67d5: $82
    reti                                          ; $67d6: $d9


    add hl, hl                                    ; $67d7: $29
    ld l, e                                       ; $67d8: $6b
    jp nc, $0c20                                  ; $67d9: $d2 $20 $0c

    xor l                                         ; $67dc: $ad
    rra                                           ; $67dd: $1f
    ld h, e                                       ; $67de: $63
    ld [hl], d                                    ; $67df: $72
    rst $10                                       ; $67e0: $d7
    xor d                                         ; $67e1: $aa
    ld [hl+], a                                   ; $67e2: $22
    ld c, l                                       ; $67e3: $4d
    rla                                           ; $67e4: $17
    inc c                                         ; $67e5: $0c
    rst $00                                       ; $67e6: $c7
    ld h, a                                       ; $67e7: $67
    or d                                          ; $67e8: $b2
    add l                                         ; $67e9: $85
    add hl, hl                                    ; $67ea: $29
    ld [hl], h                                    ; $67eb: $74
    add hl, hl                                    ; $67ec: $29
    ldh [$ee], a                                  ; $67ed: $e0 $ee
    ld h, h                                       ; $67ef: $64
    ld b, c                                       ; $67f0: $41
    db $eb                                        ; $67f1: $eb
    sbc [hl]                                      ; $67f2: $9e
    xor $2f                                       ; $67f3: $ee $2f
    ld l, b                                       ; $67f5: $68
    dec sp                                        ; $67f6: $3b
    cp c                                          ; $67f7: $b9
    add hl, de                                    ; $67f8: $19
    ld l, c                                       ; $67f9: $69
    ld hl, sp-$45                                 ; $67fa: $f8 $bb
    or b                                          ; $67fc: $b0
    db $e3                                        ; $67fd: $e3
    push hl                                       ; $67fe: $e5
    halt                                          ; $67ff: $76
    ld c, d                                       ; $6800: $4a
    ld h, [hl]                                    ; $6801: $66
    dec e                                         ; $6802: $1d
    ld h, c                                       ; $6803: $61
    dec a                                         ; $6804: $3d
    cp a                                          ; $6805: $bf
    add $16                                       ; $6806: $c6 $16
    ld l, a                                       ; $6808: $6f
    db $fd                                        ; $6809: $fd
    rst $20                                       ; $680a: $e7
    cpl                                           ; $680b: $2f
    add e                                         ; $680c: $83
    rst $38                                       ; $680d: $ff
    or l                                          ; $680e: $b5
    xor d                                         ; $680f: $aa
    ld c, b                                       ; $6810: $48
    ld d, e                                       ; $6811: $53
    add e                                         ; $6812: $83
    ld e, c                                       ; $6813: $59
    push de                                       ; $6814: $d5
    ld b, h                                       ; $6815: $44
    rst $20                                       ; $6816: $e7
    adc [hl]                                      ; $6817: $8e
    sub d                                         ; $6818: $92
    ld b, a                                       ; $6819: $47
    jr jr_026_67c9                                ; $681a: $18 $ad

    ld l, d                                       ; $681c: $6a
    db $fd                                        ; $681d: $fd
    dec [hl]                                      ; $681e: $35
    ld l, c                                       ; $681f: $69
    ld d, [hl]                                    ; $6820: $56
    ld l, $ac                                     ; $6821: $2e $ac
    cp $0d                                        ; $6823: $fe $0d
    ld [hl], a                                    ; $6825: $77
    ld [hl], b                                    ; $6826: $70
    and l                                         ; $6827: $a5
    dec hl                                        ; $6828: $2b
    ld b, $ad                                     ; $6829: $06 $ad
    cpl                                           ; $682b: $2f
    cp a                                          ; $682c: $bf
    sbc d                                         ; $682d: $9a
    ld e, a                                       ; $682e: $5f
    ld b, b                                       ; $682f: $40
    dec sp                                        ; $6830: $3b
    adc d                                         ; $6831: $8a
    ret c                                         ; $6832: $d8

    cp h                                          ; $6833: $bc
    cp h                                          ; $6834: $bc
    ld a, h                                       ; $6835: $7c
    dec c                                         ; $6836: $0d
    and [hl]                                      ; $6837: $a6
    ld de, $5e72                                  ; $6838: $11 $72 $5e
    ld a, [hl]                                    ; $683b: $7e
    and c                                         ; $683c: $a1
    cp d                                          ; $683d: $ba
    cp a                                          ; $683e: $bf
    inc l                                         ; $683f: $2c
    db $ed                                        ; $6840: $ed
    ld a, c                                       ; $6841: $79
    ld sp, hl                                     ; $6842: $f9
    dec [hl]                                      ; $6843: $35
    ld l, c                                       ; $6844: $69
    ld a, [$53ae]                                 ; $6845: $fa $ae $53
    ld a, [c]                                     ; $6848: $f2
    ld a, l                                       ; $6849: $7d
    di                                            ; $684a: $f3
    ld b, l                                       ; $684b: $45
    ld a, l                                       ; $684c: $7d
    db $fc                                        ; $684d: $fc
    rst $08                                       ; $684e: $cf
    dec [hl]                                      ; $684f: $35
    sub $9f                                       ; $6850: $d6 $9f
    ld c, l                                       ; $6852: $4d
    db $db                                        ; $6853: $db
    ld l, c                                       ; $6854: $69
    ld a, h                                       ; $6855: $7c
    db $ed                                        ; $6856: $ed

jr_026_6857:
    or a                                          ; $6857: $b7
    ld d, e                                       ; $6858: $53
    ld e, $61                                     ; $6859: $1e $61
    ld b, a                                       ; $685b: $47
    push bc                                       ; $685c: $c5
    jr c, jr_026_6857                             ; $685d: $38 $f8

    rrca                                          ; $685f: $0f
    ld h, c                                       ; $6860: $61
    sbc [hl]                                      ; $6861: $9e
    ld l, e                                       ; $6862: $6b
    rst $38                                       ; $6863: $ff
    ld l, $2d                                     ; $6864: $2e $2d
    add l                                         ; $6866: $85
    cp l                                          ; $6867: $bd
    and b                                         ; $6868: $a0
    xor l                                         ; $6869: $ad
    ld a, e                                       ; $686a: $7b
    ld a, h                                       ; $686b: $7c
    add l                                         ; $686c: $85
    sbc a                                         ; $686d: $9f
    sbc l                                         ; $686e: $9d
    ld sp, $bf26                                  ; $686f: $31 $26 $bf
    ldh a, [rNR11]                                ; $6872: $f0 $11
    ld b, $2d                                     ; $6874: $06 $2d
    xor [hl]                                      ; $6876: $ae
    call $833c                                    ; $6877: $cd $3c $83
    rst $30                                       ; $687a: $f7
    ld a, [c]                                     ; $687b: $f2
    jp nz, Jump_000_275d                          ; $687c: $c2 $5d $27

    cp [hl]                                       ; $687f: $be
    jp nz, Jump_000_0c23                          ; $6880: $c2 $23 $0c

    db $dd                                        ; $6883: $dd
    ld [hl-], a                                   ; $6884: $32
    db $fc                                        ; $6885: $fc
    dec h                                         ; $6886: $25
    ld [hl], c                                    ; $6887: $71
    rst $10                                       ; $6888: $d7
    xor d                                         ; $6889: $aa
    ld [hl+], a                                   ; $688a: $22
    dec c                                         ; $688b: $0d
    jp nz, $1aad                                  ; $688c: $c2 $ad $1a

    ret z                                         ; $688f: $c8

    ld h, l                                       ; $6890: $65
    ld e, l                                       ; $6891: $5d
    or [hl]                                       ; $6892: $b6
    sbc [hl]                                      ; $6893: $9e
    ld a, d                                       ; $6894: $7a
    ld a, l                                       ; $6895: $7d
    halt                                          ; $6896: $76
    jp z, $efc2                                   ; $6897: $ca $c2 $ef

jr_026_689a:
    add d                                         ; $689a: $82
    ld bc, $292d                                  ; $689b: $01 $2d $29
    jp nc, $ada0                                  ; $689e: $d2 $a0 $ad

    ld b, a                                       ; $68a1: $47
    cp c                                          ; $68a2: $b9

jr_026_68a3:
    jr nc, jr_026_68a3                            ; $68a3: $30 $fe

    ld [de], a                                    ; $68a5: $12
    ld c, e                                       ; $68a6: $4b
    ld a, [hl]                                    ; $68a7: $7e
    rla                                           ; $68a8: $17
    ld d, [hl]                                    ; $68a9: $56
    push bc                                       ; $68aa: $c5
    add h                                         ; $68ab: $84
    ld h, a                                       ; $68ac: $67
    ld [$2d03], sp                                ; $68ad: $08 $03 $2d
    add hl, hl                                    ; $68b0: $29
    jp nc, $6770                                  ; $68b1: $d2 $70 $67

    ld e, c                                       ; $68b4: $59
    ld d, d                                       ; $68b5: $52
    ld l, h                                       ; $68b6: $6c
    and [hl]                                      ; $68b7: $a6
    ld d, l                                       ; $68b8: $55
    push af                                       ; $68b9: $f5
    dec e                                         ; $68ba: $1d
    ld e, a                                       ; $68bb: $5f
    ld c, h                                       ; $68bc: $4c
    and l                                         ; $68bd: $a5
    ld [hl], l                                    ; $68be: $75
    or h                                          ; $68bf: $b4
    add hl, bc                                    ; $68c0: $09
    sbc a                                         ; $68c1: $9f
    inc e                                         ; $68c2: $1c
    and [hl]                                      ; $68c3: $a6
    ld a, $2f                                     ; $68c4: $3e $2f
    rla                                           ; $68c6: $17
    add $5f                                       ; $68c7: $c6 $5f
    ld h, d                                       ; $68c9: $62
    ret                                           ; $68ca: $c9


    inc hl                                        ; $68cb: $23
    inc c                                         ; $68cc: $0c
    add a                                         ; $68cd: $87
    dec e                                         ; $68ce: $1d
    ret z                                         ; $68cf: $c8

jr_026_68d0:
    db $dd                                        ; $68d0: $dd
    ld h, c                                       ; $68d1: $61
    rlca                                          ; $68d2: $07
    ld [hl], c                                    ; $68d3: $71
    ld [hl], a                                    ; $68d4: $77
    ret c                                         ; $68d5: $d8

    pop bc                                        ; $68d6: $c1
    ld [$cb21], sp                                ; $68d7: $08 $21 $cb
    ld hl, sp+$1b                                 ; $68da: $f8 $1b
    db $e3                                        ; $68dc: $e3
    jp c, $fe3f                                   ; $68dd: $da $3f $fe

    ld a, d                                       ; $68e0: $7a
    ld e, c                                       ; $68e1: $59
    sub e                                         ; $68e2: $93
    ld h, [hl]                                    ; $68e3: $66
    ld a, [bc]                                    ; $68e4: $0a
    add e                                         ; $68e5: $83
    ld c, h                                       ; $68e6: $4c
    sbc d                                         ; $68e7: $9a
    jp nz, $b32c                                  ; $68e8: $c2 $2c $b3

    cpl                                           ; $68eb: $2f
    ld e, l                                       ; $68ec: $5d
    jr z, jr_026_689a                             ; $68ed: $28 $ab

    jp nc, $5f90                                  ; $68ef: $d2 $90 $5f

    ld a, [bc]                                    ; $68f2: $0a
    and $e5                                       ; $68f3: $e6 $e5
    pop hl                                        ; $68f5: $e1
    rlca                                          ; $68f6: $07
    ld l, a                                       ; $68f7: $6f
    ld a, l                                       ; $68f8: $7d
    pop de                                        ; $68f9: $d1
    jr c, jr_026_692b                             ; $68fa: $38 $2f

    ld l, c                                       ; $68fc: $69
    ld b, b                                       ; $68fd: $40
    adc c                                         ; $68fe: $89
    ld c, l                                       ; $68ff: $4d
    ld c, h                                       ; $6900: $4c
    ei                                            ; $6901: $fb
    ld a, $20                                     ; $6902: $3e $20
    add h                                         ; $6904: $84
    ld c, $3b                                     ; $6905: $0e $3b
    add h                                         ; $6907: $84
    cp e                                          ; $6908: $bb
    jp $e50e                                      ; $6909: $c3 $0e $e5


    xor $b0                                       ; $690c: $ee $b0
    jp $4210                                      ; $690e: $c3 $10 $42


    jr jr_026_68d0                                ; $6911: $18 $bd

    jp nc, $542c                                  ; $6913: $d2 $2c $54

    or $0b                                        ; $6916: $f6 $0b
    ld a, a                                       ; $6918: $7f
    ld sp, $57e1                                  ; $6919: $31 $e1 $57
    and l                                         ; $691c: $a5
    ld hl, $b2ef                                  ; $691d: $21 $ef $b2
    ld [hl], l                                    ; $6920: $75
    adc a                                         ; $6921: $8f
    xor a                                         ; $6922: $af
    ldh a, [$63]                                  ; $6923: $f0 $63
    ld c, c                                       ; $6925: $49
    dec [hl]                                      ; $6926: $35
    ld e, a                                       ; $6927: $5f
    sub l                                         ; $6928: $95
    pop hl                                        ; $6929: $e1
    xor a                                         ; $692a: $af

jr_026_692b:
    xor l                                         ; $692b: $ad
    ld d, l                                       ; $692c: $55
    ld a, l                                       ; $692d: $7d
    add [hl]                                      ; $692e: $86

jr_026_692f:
    db $fc                                        ; $692f: $fc
    add $59                                       ; $6930: $c6 $59
    ld l, d                                       ; $6932: $6a
    sub $9f                                       ; $6933: $d6 $9f
    ld a, l                                       ; $6935: $7d
    jp hl                                         ; $6936: $e9


    ld b, d                                       ; $6937: $42
    ld a, c                                       ; $6938: $79
    add [hl]                                      ; $6939: $86
    jr nc, @+$2f                                  ; $693a: $30 $2d

    add hl, hl                                    ; $693c: $29
    jp nc, $6770                                  ; $693d: $d2 $70 $67

    xor c                                         ; $6940: $a9
    add l                                         ; $6941: $85
    ld c, e                                       ; $6942: $4b
    sbc d                                         ; $6943: $9a
    ld c, $48                                     ; $6944: $0e $48
    db $eb                                        ; $6946: $eb
    rst $08                                       ; $6947: $cf
    rst $38                                       ; $6948: $ff
    or e                                          ; $6949: $b3
    ld sp, hl                                     ; $694a: $f9
    db $eb                                        ; $694b: $eb
    jp c, $5af2                                   ; $694c: $da $f2 $5a

    ld b, a                                       ; $694f: $47
    jr jr_026_692f                                ; $6950: $18 $dd

    sub h                                         ; $6952: $94
    ld l, d                                       ; $6953: $6a
    ld a, $d7                                     ; $6954: $3e $d7
    ld e, b                                       ; $6956: $58
    sbc a                                         ; $6957: $9f
    call c, $f8a0                                 ; $6958: $dc $a0 $f8
    jr z, jr_026_69d6                             ; $695b: $28 $79

    xor $2c                                       ; $695d: $ee $2c
    or l                                          ; $695f: $b5
    ld [hl], b                                    ; $6960: $70
    cp h                                          ; $6961: $bc
    ld e, [hl]                                    ; $6962: $5e
    cp a                                          ; $6963: $bf
    inc d                                         ; $6964: $14
    call z, $994e                                 ; $6965: $cc $4e $99
    jp nc, $d86e                                  ; $6968: $d2 $6e $d8

    ld c, c                                       ; $696b: $49
    ld [hl], c                                    ; $696c: $71
    dec h                                         ; $696d: $25
    ld e, a                                       ; $696e: $5f
    ld a, [c]                                     ; $696f: $f2
    ld de, $3d61                                  ; $6970: $11 $61 $3d
    ld c, e                                       ; $6973: $4b
    inc sp                                        ; $6974: $33
    sub l                                         ; $6975: $95
    ld e, a                                       ; $6976: $5f
    sub e                                         ; $6977: $93
    ld h, [hl]                                    ; $6978: $66
    cp h                                          ; $6979: $bc
    ld [de], a                                    ; $697a: $12
    ld a, e                                       ; $697b: $7b
    cp c                                          ; $697c: $b9
    inc d                                         ; $697d: $14
    ld c, h                                       ; $697e: $4c
    dec h                                         ; $697f: $25
    dec c                                         ; $6980: $0d
    or c                                          ; $6981: $b1
    or l                                          ; $6982: $b5
    sbc e                                         ; $6983: $9b
    dec [hl]                                      ; $6984: $35
    ld l, c                                       ; $6985: $69
    inc b                                         ; $6986: $04
    ld a, $da                                     ; $6987: $3e $da
    ld e, l                                       ; $6989: $5d
    scf                                           ; $698a: $37
    adc e                                         ; $698b: $8b
    rst $28                                       ; $698c: $ef
    ld [bc], a                                    ; $698d: $02
    push de                                       ; $698e: $d5
    ld a, h                                       ; $698f: $7c
    and b                                         ; $6990: $a0
    or $23                                        ; $6991: $f6 $23
    inc c                                         ; $6993: $0c
    sub [hl]                                      ; $6994: $96
    ld a, c                                       ; $6995: $79
    ld c, c                                       ; $6996: $49
    inc de                                        ; $6997: $13
    inc d                                         ; $6998: $14
    rst $18                                       ; $6999: $df
    pop af                                        ; $699a: $f1
    ld [hl], d                                    ; $699b: $72
    dec sp                                        ; $699c: $3b
    dec h                                         ; $699d: $25
    or e                                          ; $699e: $b3
    ld a, $5e                                     ; $699f: $3e $5e
    ld h, c                                       ; $69a1: $61
    push hl                                       ; $69a2: $e5
    ld h, e                                       ; $69a3: $63
    rst $20                                       ; $69a4: $e7
    ld d, d                                       ; $69a5: $52
    or b                                          ; $69a6: $b0
    ld h, $0d                                     ; $69a7: $26 $0d
    jp c, $032c                                   ; $69a9: $da $2c $03

    inc de                                        ; $69ac: $13
    inc b                                         ; $69ad: $04
    rrca                                          ; $69ae: $0f
    cp [hl]                                       ; $69af: $be
    ld h, $cd                                     ; $69b0: $26 $cd
    add d                                         ; $69b2: $82

jr_026_69b3:
    sbc h                                         ; $69b3: $9c
    ld a, l                                       ; $69b4: $7d
    adc c                                         ; $69b5: $89
    xor l                                         ; $69b6: $ad
    call c, $6110                                 ; $69b7: $dc $10 $61
    dec a                                         ; $69ba: $3d
    jp z, $afcb                                   ; $69bb: $ca $cb $af

    ld sp, hl                                     ; $69be: $f9
    ld [hl-], a                                   ; $69bf: $32
    sub l                                         ; $69c0: $95
    ld b, a                                       ; $69c1: $47
    ld e, e                                       ; $69c2: $5b
    xor a                                         ; $69c3: $af
    cpl                                           ; $69c4: $2f
    add e                                         ; $69c5: $83
    sub d                                         ; $69c6: $92
    ld h, $32                                     ; $69c7: $26 $32
    xor d                                         ; $69c9: $aa
    ld sp, hl                                     ; $69ca: $f9
    adc d                                         ; $69cb: $8a

jr_026_69cc:
    ld e, d                                       ; $69cc: $5a
    ld a, a                                       ; $69cd: $7f
    ld c, h                                       ; $69ce: $4c
    ld a, c                                       ; $69cf: $79
    ld d, $9f                                     ; $69d0: $16 $9f
    xor l                                         ; $69d2: $ad
    db $fd                                        ; $69d3: $fd
    push hl                                       ; $69d4: $e5
    ld [de], a                                    ; $69d5: $12

jr_026_69d6:
    ld e, e                                       ; $69d6: $5b
    cp h                                          ; $69d7: $bc
    push af                                       ; $69d8: $f5
    sbc a                                         ; $69d9: $9f
    rla                                           ; $69da: $17
    xor l                                         ; $69db: $ad
    ld hl, $960c                                  ; $69dc: $21 $0c $96
    sbc d                                         ; $69df: $9a
    push af                                       ; $69e0: $f5
    rst $10                                       ; $69e1: $d7
    cp $a7                                        ; $69e2: $fe $a7
    push bc                                       ; $69e4: $c5
    call z, $a5fa                                 ; $69e5: $cc $fa $a5
    ld h, b                                       ; $69e8: $60
    halt                                          ; $69e9: $76
    jp z, $349a                                   ; $69ea: $ca $9a $34

    ld a, e                                       ; $69ed: $7b
    db $eb                                        ; $69ee: $eb
    ld c, e                                       ; $69ef: $4b
    jp $9797                                      ; $69f0: $c3 $97 $97


    rst $28                                       ; $69f3: $ef
    add d                                         ; $69f4: $82
    ld bc, $1b47                                  ; $69f5: $01 $47 $1b
    sbc a                                         ; $69f8: $9f
    ld h, l                                       ; $69f9: $65
    db $ec                                        ; $69fa: $ec
    ld [hl-], a                                   ; $69fb: $32
    xor d                                         ; $69fc: $aa
    ld sp, hl                                     ; $69fd: $f9
    add d                                         ; $69fe: $82
    call c, Call_026_5f5b                         ; $69ff: $dc $5b $5f
    ld a, [de]                                    ; $6a02: $1a
    cp [hl]                                       ; $6a03: $be
    cp h                                          ; $6a04: $bc
    inc a                                         ; $6a05: $3c
    jp c, $e32c                                   ; $6a06: $da $2c $e3

    dec d                                         ; $6a09: $15
    ld h, $37                                     ; $6a0a: $26 $37
    jr z, jr_026_69cc                             ; $6a0c: $28 $be

    ld a, [c]                                     ; $6a0e: $f2
    ld a, [c]                                     ; $6a0f: $f2
    call c, $9bb5                                 ; $6a10: $dc $b5 $9b
    dec [hl]                                      ; $6a13: $35
    ld l, c                                       ; $6a14: $69
    ld h, h                                       ; $6a15: $64
    ld d, [hl]                                    ; $6a16: $56

Call_026_6a17:
    dec [hl]                                      ; $6a17: $35
    pop de                                        ; $6a18: $d1
    ld de, $1842                                  ; $6a19: $11 $42 $18
    dec a                                         ; $6a1c: $3d
    jp z, $8405                                   ; $6a1d: $ca $05 $84

    sub b                                         ; $6a20: $90
    sub a                                         ; $6a21: $97
    dec bc                                        ; $6a22: $0b
    cp e                                          ; $6a23: $bb
    jr nc, jr_026_69b3                            ; $6a24: $30 $8d

    ld [hl], c                                    ; $6a26: $71
    pop hl                                        ; $6a27: $e1
    and l                                         ; $6a28: $a5
    rst $28                                       ; $6a29: $ef
    adc d                                         ; $6a2a: $8a
    ld bc, $df16                                  ; $6a2b: $01 $16 $df
    dec b                                         ; $6a2e: $05
    or h                                          ; $6a2f: $b4
    push af                                       ; $6a30: $f5
    db $fc                                        ; $6a31: $fc
    ld e, d                                       ; $6a32: $5a
    adc h                                         ; $6a33: $8c
    ld l, e                                       ; $6a34: $6b
    rst $38                                       ; $6a35: $ff
    ld e, h                                       ; $6a36: $5c
    db $eb                                        ; $6a37: $eb
    sub a                                         ; $6a38: $97
    ld l, d                                       ; $6a39: $6a
    dec sp                                        ; $6a3a: $3b
    rst $08                                       ; $6a3b: $cf
    add b                                         ; $6a3c: $80
    rst $28                                       ; $6a3d: $ef
    add hl, hl                                    ; $6a3e: $29
    ld c, l                                       ; $6a3f: $4d
    ld d, b                                       ; $6a40: $50
    ld b, $37                                     ; $6a41: $06 $37
    ld e, d                                       ; $6a43: $5a
    ld e, a                                       ; $6a44: $5f
    sub $72                                       ; $6a45: $d6 $72
    xor e                                         ; $6a47: $ab
    ld a, d                                       ; $6a48: $7a
    ld a, h                                       ; $6a49: $7c
    ld b, b                                       ; $6a4a: $40
    ld [$d179], sp                                ; $6a4b: $08 $79 $d1
    ld a, [de]                                    ; $6a4e: $1a
    adc h                                         ; $6a4f: $8c
    cp a                                          ; $6a50: $bf
    inc e                                         ; $6a51: $1c
    ld d, l                                       ; $6a52: $55
    ret c                                         ; $6a53: $d8

    jp nz, $6fa4                                  ; $6a54: $c2 $a4 $6f

    db $10                                        ; $6a57: $10
    ld b, d                                       ; $6a58: $42
    sbc [hl]                                      ; $6a59: $9e
    ei                                            ; $6a5a: $fb
    di                                            ; $6a5b: $f3
    call $aced                                    ; $6a5c: $cd $ed $ac
    ld sp, hl                                     ; $6a5f: $f9
    ld [hl-], a                                   ; $6a60: $32
    ei                                            ; $6a61: $fb
    ld h, l                                       ; $6a62: $65
    ld d, b                                       ; $6a63: $50
    sub l                                         ; $6a64: $95
    call z, Call_000_3088                         ; $6a65: $cc $88 $30
    dec l                                         ; $6a68: $2d
    ld b, l                                       ; $6a69: $45
    ld h, e                                       ; $6a6a: $63
    inc e                                         ; $6a6b: $1c
    rst $38                                       ; $6a6c: $ff
    dec bc                                        ; $6a6d: $0b
    ld [hl], d                                    ; $6a6e: $72
    sbc [hl]                                      ; $6a6f: $9e
    di                                            ; $6a70: $f3
    ld a, [c]                                     ; $6a71: $f2
    and e                                         ; $6a72: $a3
    rst $20                                       ; $6a73: $e7
    ldh [$b3], a                                  ; $6a74: $e0 $b3
    xor d                                         ; $6a76: $aa
    adc c                                         ; $6a77: $89
    ld a, $4a                                     ; $6a78: $3e $4a
    sbc [hl]                                      ; $6a7a: $9e
    dec sp                                        ; $6a7b: $3b
    cp b                                          ; $6a7c: $b8
    jp nc, $0315                                  ; $6a7d: $d2 $15 $03

    ld b, a                                       ; $6a80: $47
    dec [hl]                                      ; $6a81: $35
    rst $08                                       ; $6a82: $cf
    dec e                                         ; $6a83: $1d
    rst $38                                       ; $6a84: $ff
    add e                                         ; $6a85: $83
    sub d                                         ; $6a86: $92
    ld h, $b2                                     ; $6a87: $26 $b2
    dec d                                         ; $6a89: $15
    inc hl                                        ; $6a8a: $23
    jp nc, $ada0                                  ; $6a8b: $d2 $a0 $ad

    ld d, l                                       ; $6a8e: $55
    ld b, l                                       ; $6a8f: $45
    sbc d                                         ; $6a90: $9a
    sub l                                         ; $6a91: $95
    sub a                                         ; $6a92: $97
    xor a                                         ; $6a93: $af
    pop bc                                        ; $6a94: $c1
    sbc d                                         ; $6a95: $9a

jr_026_6a96:
    sub a                                         ; $6a96: $97
    add l                                         ; $6a97: $85
    ld c, c                                       ; $6a98: $49
    rst $18                                       ; $6a99: $df
    ld c, h                                       ; $6a9a: $4c
    xor c                                         ; $6a9b: $a9
    ld [hl], $2f                                  ; $6a9c: $36 $2f
    cp a                                          ; $6a9e: $bf
    ld a, b                                       ; $6a9f: $78
    pop bc                                        ; $6aa0: $c1
    sub a                                         ; $6aa1: $97
    or $f8                                        ; $6aa2: $f6 $f8
    and d                                         ; $6aa4: $a2
    cp [hl]                                       ; $6aa5: $be
    ld b, [hl]                                    ; $6aa6: $46
    ld b, a                                       ; $6aa7: $47
    rst $38                                       ; $6aa8: $ff
    inc c                                         ; $6aa9: $0c
    ld l, l                                       ; $6aaa: $6d
    ld b, a                                       ; $6aab: $47
    sbc e                                         ; $6aac: $9b
    ld h, [hl]                                    ; $6aad: $66
    ld l, a                                       ; $6aae: $6f
    ld a, l                                       ; $6aaf: $7d
    ld l, c                                       ; $6ab0: $69
    cp h                                          ; $6ab1: $bc
    ld e, h                                       ; $6ab2: $5c
    ld a, [bc]                                    ; $6ab3: $0a
    sub [hl]                                      ; $6ab4: $96
    inc [hl]                                      ; $6ab5: $34
    cpl                                           ; $6ab6: $2f
    cp a                                          ; $6ab7: $bf
    ld a, b                                       ; $6ab8: $78
    pop bc                                        ; $6ab9: $c1
    pop de                                        ; $6aba: $d1
    inc l                                         ; $6abb: $2c
    or l                                          ; $6abc: $b5
    jr jr_026_6a96                                ; $6abd: $18 $d7

    cp c                                          ; $6abf: $b9
    ld d, l                                       ; $6ac0: $55
    ld a, l                                       ; $6ac1: $7d
    and [hl]                                      ; $6ac2: $a6
    inc sp                                        ; $6ac3: $33
    cpl                                           ; $6ac4: $2f
    cp a                                          ; $6ac5: $bf
    ld h, $4d                                     ; $6ac6: $26 $4d
    rst $18                                       ; $6ac8: $df
    ld [hl], l                                    ; $6ac9: $75
    ld c, d                                       ; $6aca: $4a
    cp [hl]                                       ; $6acb: $be
    ld l, a                                       ; $6acc: $6f
    cp [hl]                                       ; $6acd: $be
    xor b                                         ; $6ace: $a8
    ld [hl], e                                    ; $6acf: $73
    rst $20                                       ; $6ad0: $e7
    push hl                                       ; $6ad1: $e5
    ld l, c                                       ; $6ad2: $69
    pop hl                                        ; $6ad3: $e1
    cp a                                          ; $6ad4: $bf

jr_026_6ad5:
    xor a                                         ; $6ad5: $af
    ld c, c                                       ; $6ad6: $49
    or e                                          ; $6ad7: $b3
    ld c, e                                       ; $6ad8: $4b
    or e                                          ; $6ad9: $b3
    dec h                                         ; $6ada: $25
    ret                                           ; $6adb: $c9


    sub a                                         ; $6adc: $97
    or $8e                                        ; $6add: $f6 $8e
    sub a                                         ; $6adf: $97
    ld c, e                                       ; $6ae0: $4b
    ld b, c                                       ; $6ae1: $41
    cp d                                          ; $6ae2: $ba
    inc bc                                        ; $6ae3: $03
    jp nz, $8b3d                                  ; $6ae4: $c2 $3d $8b

    ld a, [$cc2e]                                 ; $6ae7: $fa $2e $cc
    res 5, a                                      ; $6aea: $cb $af
    ld c, c                                       ; $6aec: $49
    db $d3                                        ; $6aed: $d3
    ld [hl], a                                    ; $6aee: $77
    sbc l                                         ; $6aef: $9d
    sub d                                         ; $6af0: $92
    rst $28                                       ; $6af1: $ef
    sbc e                                         ; $6af2: $9b
    cpl                                           ; $6af3: $2f
    ld [$315d], a                                 ; $6af4: $ea $5d $31
    db $dd                                        ; $6af7: $dd
    sub h                                         ; $6af8: $94
    ld l, d                                       ; $6af9: $6a
    ld a, $ff                                     ; $6afa: $3e $ff
    jr jr_026_6ad5                                ; $6afc: $18 $d7

    ld a, h                                       ; $6afe: $7c
    ld b, c                                       ; $6aff: $41
    ld e, e                                       ; $6b00: $5b
    ld l, e                                       ; $6b01: $6b
    ld b, $bc                                     ; $6b02: $06 $bc
    adc d                                         ; $6b04: $8a
    jp $06da                                      ; $6b05: $c3 $da $06


    ld l, $3d                                     ; $6b08: $2e $3d
    nop                                           ; $6b0a: $00
    jp c, $fe5a                                   ; $6b0b: $da $5a $fe

    rst $10                                       ; $6b0e: $d7
    ld a, h                                       ; $6b0f: $7c
    ld e, c                                       ; $6b10: $59
    ld a, [de]                                    ; $6b11: $1a
    add a                                         ; $6b12: $87
    res 3, [hl]                                   ; $6b13: $cb $9e
    cp e                                          ; $6b15: $bb
    ld d, [hl]                                    ; $6b16: $56
    dec d                                         ; $6b17: $15
    ld l, c                                       ; $6b18: $69
    db $10                                        ; $6b19: $10
    ld b, $3d                                     ; $6b1a: $06 $3d
    adc d                                         ; $6b1c: $8a
    ld d, d                                       ; $6b1d: $52
    dec e                                         ; $6b1e: $1d
    ld h, [hl]                                    ; $6b1f: $66
    and a                                         ; $6b20: $a7
    inc c                                         ; $6b21: $0c
    inc a                                         ; $6b22: $3c
    dec sp                                        ; $6b23: $3b
    sbc l                                         ; $6b24: $9d
    ld c, e                                       ; $6b25: $4b
    pop bc                                        ; $6b26: $c1

Jump_026_6b27:
    ld l, $21                                     ; $6b27: $2e $21
    inc c                                         ; $6b29: $0c
    db $dd                                        ; $6b2a: $dd
    ld [hl-], a                                   ; $6b2b: $32
    db $fc                                        ; $6b2c: $fc
    pop bc                                        ; $6b2d: $c1
    rst $38                                       ; $6b2e: $ff
    inc c                                         ; $6b2f: $0c
    ld c, h                                       ; $6b30: $4c
    inc bc                                        ; $6b31: $03
    cp l                                          ; $6b32: $bd
    inc [hl]                                      ; $6b33: $34
    ret z                                         ; $6b34: $c8

    inc h                                         ; $6b35: $24
    add h                                         ; $6b36: $84
    ld bc, $ca3d                                  ; $6b37: $01 $3d $ca

jr_026_6b3a:
    adc a                                         ; $6b3a: $8f
    ld h, l                                       ; $6b3b: $65
    ld c, d                                       ; $6b3c: $4a
    dec c                                         ; $6b3d: $0d
    and $45                                       ; $6b3e: $e6 $45
    ld a, l                                       ; $6b40: $7d
    cp h                                          ; $6b41: $bc
    ld [hl], $dc                                  ; $6b42: $36 $dc
    pop bc                                        ; $6b44: $c1
    dec d                                         ; $6b45: $15
    add h                                         ; $6b46: $84
    ld bc, $bf3d                                  ; $6b47: $01 $3d $bf
    ld h, $3f                                     ; $6b4a: $26 $3f
    ld l, l                                       ; $6b4c: $6d
    and a                                         ; $6b4d: $a7
    pop af                                        ; $6b4e: $f1
    ld a, c                                       ; $6b4f: $79
    xor [hl]                                      ; $6b50: $ae
    adc d                                         ; $6b51: $8a
    add hl, bc                                    ; $6b52: $09
    ccf                                           ; $6b53: $3f
    dec sp                                        ; $6b54: $3b
    ld h, l                                       ; $6b55: $65
    pop de                                        ; $6b56: $d1
    ld d, b                                       ; $6b57: $50
    ld d, l                                       ; $6b58: $55
    cp b                                          ; $6b59: $b8
    add e                                         ; $6b5a: $83
    dec hl                                        ; $6b5b: $2b
    ld l, b                                       ; $6b5c: $68
    or e                                          ; $6b5d: $b3
    adc h                                         ; $6b5e: $8c
    dec h                                         ; $6b5f: $25
    push de                                       ; $6b60: $d5
    ld a, h                                       ; $6b61: $7c
    ld e, [hl]                                    ; $6b62: $5e

jr_026_6b63:
    ld l, $d5                                     ; $6b63: $2e $d5
    rst $10                                       ; $6b65: $d7
    and h                                         ; $6b66: $a4
    add hl, de                                    ; $6b67: $19
    xor a                                         ; $6b68: $af
    db $e4                                        ; $6b69: $e4
    di                                            ; $6b6a: $f3
    inc e                                         ; $6b6b: $1c
    xor a                                         ; $6b6c: $af
    ld e, [hl]                                    ; $6b6d: $5e
    sub l                                         ; $6b6e: $95
    add hl, de                                    ; $6b6f: $19
    ret c                                         ; $6b70: $d8

    xor e                                         ; $6b71: $ab
    inc hl                                        ; $6b72: $23
    inc c                                         ; $6b73: $0c
    dec a                                         ; $6b74: $3d
    adc d                                         ; $6b75: $8a
    ld d, d                                       ; $6b76: $52
    dec e                                         ; $6b77: $1d
    ld h, [hl]                                    ; $6b78: $66
    and a                                         ; $6b79: $a7
    xor h                                         ; $6b7a: $ac
    xor l                                         ; $6b7b: $ad
    ld d, h                                       ; $6b7c: $54
    cp a                                          ; $6b7d: $bf
    inc d                                         ; $6b7e: $14
    ld c, h                                       ; $6b7f: $4c
    ld a, l                                       ; $6b80: $7d
    rst $00                                       ; $6b81: $c7
    res 4, l                                      ; $6b82: $cb $a5
    jr nz, jr_026_6b63                            ; $6b84: $20 $dd

    ld bc, $a761                                  ; $6b86: $01 $61 $a7
    sbc [hl]                                      ; $6b89: $9e
    adc b                                         ; $6b8a: $88
    jr nc, jr_026_6b3a                            ; $6b8b: $30 $ad

    rra                                           ; $6b8d: $1f
    ld h, e                                       ; $6b8e: $63
    ld [hl+], a                                   ; $6b8f: $22
    inc c                                         ; $6b90: $0c
    dec a                                         ; $6b91: $3d
    adc d                                         ; $6b92: $8a
    ld d, d                                       ; $6b93: $52
    ld a, l                                       ; $6b94: $7d
    ld c, l                                       ; $6b95: $4d
    ld a, [de]                                    ; $6b96: $1a
    add h                                         ; $6b97: $84
    ld bc, $ca3d                                  ; $6b98: $01 $3d $ca
    rrca                                          ; $6b9b: $0f
    ld c, d                                       ; $6b9c: $4a
    halt                                          ; $6b9d: $76
    ld h, b                                       ; $6b9e: $60
    db $fc                                        ; $6b9f: $fc
    adc l                                         ; $6ba0: $8d
    ld [hl], c                                    ; $6ba1: $71
    ld l, l                                       ; $6ba2: $6d
    db $d3                                        ; $6ba3: $d3
    xor h                                         ; $6ba4: $ac
    xor l                                         ; $6ba5: $ad
    ld d, l                                       ; $6ba6: $55
    ld a, l                                       ; $6ba7: $7d
    ld a, h                                       ; $6ba8: $7c
    ld d, c                                       ; $6ba9: $51
    sbc a                                         ; $6baa: $9f
    sub a                                         ; $6bab: $97
    ld l, a                                       ; $6bac: $6f
    ld b, $1f                                     ; $6bad: $06 $1f
    db $e3                                        ; $6baf: $e3
    sbc d                                         ; $6bb0: $9a
    inc [hl]                                      ; $6bb1: $34
    ld [$f521], sp                                ; $6bb2: $08 $21 $f5
    ret                                           ; $6bb5: $c9


    inc sp                                        ; $6bb6: $33
    ld d, e                                       ; $6bb7: $53
    dec a                                         ; $6bb8: $3d
    ld e, e                                       ; $6bb9: $5b
    ld b, a                                       ; $6bba: $47
    ld l, [hl]                                    ; $6bbb: $6e
    push af                                       ; $6bbc: $f5
    ret nz                                        ; $6bbd: $c0

    ld e, l                                       ; $6bbe: $5d
    jp c, $d2ab                                   ; $6bbf: $da $ab $d2

    ld [$c23c], sp                                ; $6bc2: $08 $3c $c2
    cp l                                          ; $6bc5: $bd
    jp nc, $e4d4                                  ; $6bc6: $d2 $d4 $e4

    ld d, a                                       ; $6bc9: $57
    ld l, [hl]                                    ; $6bca: $6e
    ret c                                         ; $6bcb: $d8

    ld h, l                                       ; $6bcc: $65
    sub [hl]                                      ; $6bcd: $96
    add l                                         ; $6bce: $85
    xor a                                         ; $6bcf: $af
    call nz, $935d                                ; $6bd0: $c4 $5d $93
    and [hl]                                      ; $6bd3: $a6
    ld h, $bf                                     ; $6bd4: $26 $bf
    ld h, $4d                                     ; $6bd6: $26 $4d
    sub a                                         ; $6bd8: $97
    ld e, c                                       ; $6bd9: $59
    ld d, $be                                     ; $6bda: $16 $be
    ld [de], a                                    ; $6bdc: $12
    ld [hl], a                                    ; $6bdd: $77
    ld c, l                                       ; $6bde: $4d
    sbc d                                         ; $6bdf: $9a
    sbc d                                         ; $6be0: $9a
    db $fc                                        ; $6be1: $fc
    ld e, d                                       ; $6be2: $5a
    ld d, l                                       ; $6be3: $55
    and h                                         ; $6be4: $a4
    ld e, c                                       ; $6be5: $59
    rst $30                                       ; $6be6: $f7
    ld [hl], h                                    ; $6be7: $74
    ld a, a                                       ; $6be8: $7f
    jp hl                                         ; $6be9: $e9


    add d                                         ; $6bea: $82
    ld bc, $54dd                                  ; $6beb: $01 $dd $54
    sbc $36                                       ; $6bee: $de $36
    ld [hl], c                                    ; $6bf0: $71
    ld l, c                                       ; $6bf1: $69
    rst $08                                       ; $6bf2: $cf
    rrc a                                         ; $6bf3: $cb $0f
    ld l, $fb                                     ; $6bf5: $2e $fb
    ld l, c                                       ; $6bf7: $69
    adc h                                         ; $6bf8: $8c
    rst $18                                       ; $6bf9: $df

Call_026_6bfa:
    nop                                           ; $6bfa: $00
    ld b, d                                       ; $6bfb: $42
    ld [$fc32], sp                                ; $6bfc: $08 $32 $fc
    or l                                          ; $6bff: $b5
    ld l, a                                       ; $6c00: $6f
    jr nc, jr_026_6c54                            ; $6c01: $30 $51

    add a                                         ; $6c03: $87
    push bc                                       ; $6c04: $c5
    ld l, e                                       ; $6c05: $6b
    db $fd                                        ; $6c06: $fd
    ld a, c                                       ; $6c07: $79
    ld a, c                                       ; $6c08: $79
    ld a, c                                       ; $6c09: $79
    add h                                         ; $6c0a: $84
    ld bc, $24c7                                  ; $6c0b: $01 $c7 $24
    push de                                       ; $6c0e: $d5
    ld a, h                                       ; $6c0f: $7c
    ld h, d                                       ; $6c10: $62
    ld l, b                                       ; $6c11: $68
    or [hl]                                       ; $6c12: $b6
    ld h, h                                       ; $6c13: $64
    cp b                                          ; $6c14: $b8
    or a                                          ; $6c15: $b7
    cp [hl]                                       ; $6c16: $be
    inc [hl]                                      ; $6c17: $34
    xor e                                         ; $6c18: $ab
    db $e4                                        ; $6c19: $e4
    push de                                       ; $6c1a: $d5
    adc l                                         ; $6c1b: $8d
    db $fc                                        ; $6c1c: $fc
    sbc d                                         ; $6c1d: $9a
    inc [hl]                                      ; $6c1e: $34
    ld a, e                                       ; $6c1f: $7b
    xor d                                         ; $6c20: $aa
    jp nc, $bf90                                  ; $6c21: $d2 $90 $bf

    and b                                         ; $6c24: $a0
    push af                                       ; $6c25: $f5
    ld c, d                                       ; $6c26: $4a
    or e                                          ; $6c27: $b3
    ld c, d                                       ; $6c28: $4a
    xor c                                         ; $6c29: $a9
    and $63                                       ; $6c2a: $e6 $63
    ld l, a                                       ; $6c2c: $6f
    cp a                                          ; $6c2d: $bf
    ld a, [$25c0]                                 ; $6c2e: $fa $c0 $25
    add hl, hl                                    ; $6c31: $29
    ld a, b                                       ; $6c32: $78
    ld e, c                                       ; $6c33: $59
    dec h                                         ; $6c34: $25
    xor a                                         ; $6c35: $af
    ld l, [hl]                                    ; $6c36: $6e
    db $e4                                        ; $6c37: $e4
    ld h, c                                       ; $6c38: $61
    ld d, c                                       ; $6c39: $51
    db $fd                                        ; $6c3a: $fd
    ld h, l                                       ; $6c3b: $65
    add [hl]                                      ; $6c3c: $86
    ld [c], a                                     ; $6c3d: $e2
    inc bc                                        ; $6c3e: $03
    xor h                                         ; $6c3f: $ac
    ld c, c                                       ; $6c40: $49
    inc sp                                        ; $6c41: $33
    or $f6                                        ; $6c42: $f6 $f6
    xor e                                         ; $6c44: $ab
    adc a                                         ; $6c45: $8f
    ld a, a                                       ; $6c46: $7f
    xor l                                         ; $6c47: $ad
    cp a                                          ; $6c48: $bf
    xor h                                         ; $6c49: $ac
    sub d                                         ; $6c4a: $92
    ld d, a                                       ; $6c4b: $57
    scf                                           ; $6c4c: $37
    ld a, [c]                                     ; $6c4d: $f2
    jr nc, @+$4c                                  ; $6c4e: $30 $4a

    ld e, $61                                     ; $6c50: $1e $61
    rst $00                                       ; $6c52: $c7
    ld e, h                                       ; $6c53: $5c

jr_026_6c54:
    dec c                                         ; $6c54: $0d
    sub d                                         ; $6c55: $92
    halt                                          ; $6c56: $76
    ld d, h                                       ; $6c57: $54
    adc h                                         ; $6c58: $8c
    rst $18                                       ; $6c59: $df
    db $ec                                        ; $6c5a: $ec
    jp nz, Jump_000_136c                          ; $6c5b: $c2 $6c $13

    db $e3                                        ; $6c5e: $e3
    jp nc, $5b5e                                  ; $6c5f: $d2 $5e $5b

    dec h                                         ; $6c62: $25
    ret nc                                        ; $6c63: $d0

    ld c, e                                       ; $6c64: $4b
    add b                                         ; $6c65: $80
    db $10                                        ; $6c66: $10
    cp d                                          ; $6c67: $ba
    ld e, [hl]                                    ; $6c68: $5e
    add e                                         ; $6c69: $83
    cp l                                          ; $6c6a: $bd
    ld b, d                                       ; $6c6b: $42
    inc sp                                        ; $6c6c: $33
    rst $08                                       ; $6c6d: $cf
    ld b, c                                       ; $6c6e: $41
    rst $20                                       ; $6c6f: $e7
    adc c                                         ; $6c70: $89
    call Call_000_1733                            ; $6c71: $cd $33 $17
    sbc d                                         ; $6c74: $9a
    xor d                                         ; $6c75: $aa
    jr nz, jr_026_6c84                            ; $6c76: $20 $0c

    rst $00                                       ; $6c78: $c7
    cp h                                          ; $6c79: $bc
    db $fd                                        ; $6c7a: $fd
    ld [$5fe3], a                                 ; $6c7b: $ea $e3 $5f
    db $eb                                        ; $6c7e: $eb
    cpl                                           ; $6c7f: $2f
    dec bc                                        ; $6c80: $0b
    sub e                                         ; $6c81: $93
    ret nz                                        ; $6c82: $c0

    ld e, a                                       ; $6c83: $5f

jr_026_6c84:
    ld h, b                                       ; $6c84: $60
    sub h                                         ; $6c85: $94
    inc a                                         ; $6c86: $3c
    ld [hl], a                                    ; $6c87: $77
    ld c, d                                       ; $6c88: $4a
    ld l, h                                       ; $6c89: $6c
    ld c, l                                       ; $6c8a: $4d
    sbc d                                         ; $6c8b: $9a
    ld e, d                                       ; $6c8c: $5a
    adc h                                         ; $6c8d: $8c
    ld h, e                                       ; $6c8e: $63
    ld l, a                                       ; $6c8f: $6f
    cp a                                          ; $6c90: $bf
    ld a, [$25c0]                                 ; $6c91: $fa $c0 $25
    add hl, hl                                    ; $6c94: $29
    ld a, b                                       ; $6c95: $78
    ld e, c                                       ; $6c96: $59
    sbc b                                         ; $6c97: $98
    inc b                                         ; $6c98: $04
    cp $02                                        ; $6c99: $fe $02
    adc e                                         ; $6c9b: $8b
    ld [$082f], a                                 ; $6c9c: $ea $2f $08
    inc bc                                        ; $6c9f: $03
    ld d, $7b                                     ; $6ca0: $16 $7b
    ld c, l                                       ; $6ca2: $4d
    sbc d                                         ; $6ca3: $9a
    add c                                         ; $6ca4: $81
    sbc e                                         ; $6ca5: $9b
    or $9a                                        ; $6ca6: $f6 $9a
    inc [hl]                                      ; $6ca8: $34
    ld [hl-], a                                   ; $6ca9: $32
    rst $08                                       ; $6caa: $cf
    rst $20                                       ; $6cab: $e7
    ld l, $65                                     ; $6cac: $2e $65
    cp d                                          ; $6cae: $ba
    ld h, d                                       ; $6caf: $62
    add d                                         ; $6cb0: $82
    sbc a                                         ; $6cb1: $9f
    xor b                                         ; $6cb2: $a8
    ld c, a                                       ; $6cb3: $4f
    db $dd                                        ; $6cb4: $dd
    or l                                          ; $6cb5: $b5
    xor d                                         ; $6cb6: $aa
    jp $349a                                      ; $6cb7: $c3 $9a $34


    call c, $2f59                                 ; $6cba: $dc $59 $2f
    ld e, h                                       ; $6cbd: $5c
    sbc a                                         ; $6cbe: $9f
    sub a                                         ; $6cbf: $97
    ld e, a                                       ; $6cc0: $5f
    ld a, c                                       ; $6cc1: $79
    adc l                                         ; $6cc2: $8d
    cpl                                           ; $6cc3: $2f
    ld [$4703], sp                                ; $6cc4: $08 $03 $47
    ccf                                           ; $6cc7: $3f
    ld hl, sp-$44                                 ; $6cc8: $f8 $bc
    ld e, h                                       ; $6cca: $5c
    ld a, [bc]                                    ; $6ccb: $0a
    and [hl]                                      ; $6ccc: $a6
    db $ed                                        ; $6ccd: $ed
    inc [hl]                                      ; $6cce: $34
    ld a, $2f                                     ; $6ccf: $3e $2f
    ccf                                           ; $6cd1: $3f
    jr z, @-$25                                   ; $6cd2: $28 $d9

    xor c                                         ; $6cd4: $a9
    rst $38                                       ; $6cd5: $ff
    ld [hl], a                                    ; $6cd6: $77
    ld e, [hl]                                    ; $6cd7: $5e
    ld h, b                                       ; $6cd8: $60
    push hl                                       ; $6cd9: $e5
    push hl                                       ; $6cda: $e5
    ld [hl], a                                    ; $6cdb: $77
    ld h, c                                       ; $6cdc: $61
    ld e, [hl]                                    ; $6cdd: $5e
    cp [hl]                                       ; $6cde: $be
    xor c                                         ; $6cdf: $a9
    ret                                           ; $6ce0: $c9


    ld c, a                                       ; $6ce1: $4f
    ld h, e                                       ; $6ce2: $63
    ld e, h                                       ; $6ce3: $5c
    ld c, c                                       ; $6ce4: $49
    ld a, d                                       ; $6ce5: $7a
    ld [hl], b                                    ; $6ce6: $70
    add h                                         ; $6ce7: $84
    ld bc, $6aad                                  ; $6ce8: $01 $ad $6a
    db $fd                                        ; $6ceb: $fd
    dec [hl]                                      ; $6cec: $35
    ld l, c                                       ; $6ced: $69
    ld h, [hl]                                    ; $6cee: $66
    and a                                         ; $6cef: $a7
    ld hl, $a536                                  ; $6cf0: $21 $36 $a5
    ld h, [hl]                                    ; $6cf3: $66
    push hl                                       ; $6cf4: $e5
    ld [hl-], a                                   ; $6cf5: $32
    or $b4                                        ; $6cf6: $f6 $b4
    db $eb                                        ; $6cf8: $eb
    rra                                           ; $6cf9: $1f
    jp nz, $f79a                                  ; $6cfa: $c2 $9a $f7

    xor [hl]                                      ; $6cfd: $ae
    ld e, e                                       ; $6cfe: $5b
    adc a                                         ; $6cff: $8f
    ld a, [c]                                     ; $6d00: $f2
    ld a, [c]                                     ; $6d01: $f2
    ld d, e                                       ; $6d02: $53
    ld sp, hl                                     ; $6d03: $f9
    add l                                         ; $6d04: $85
    ld c, d                                       ; $6d05: $4a
    call $c634                                    ; $6d06: $cd $34 $c6
    xor c                                         ; $6d09: $a9
    and h                                         ; $6d0a: $a4
    ld hl, $b686                                  ; $6d0b: $21 $86 $b6
    sbc [hl]                                      ; $6d0e: $9e
    and l                                         ; $6d0f: $a5
    pop hl                                        ; $6d10: $e1
    adc $b2                                       ; $6d11: $ce $b2
    or $fb                                        ; $6d13: $f6 $fb

jr_026_6d15:
    cp h                                          ; $6d15: $bc
    cp h                                          ; $6d16: $bc
    db $fc                                        ; $6d17: $fc
    ld l, $ec                                     ; $6d18: $2e $ec
    xor l                                         ; $6d1a: $ad
    ld c, a                                       ; $6d1b: $4f
    ld c, e                                       ; $6d1c: $4b
    ld a, [$825d]                                 ; $6d1d: $fa $5d $82
    bit 7, [hl]                                   ; $6d20: $cb $7e
    ld e, [hl]                                    ; $6d22: $5e
    call nc, Call_026_56d7                        ; $6d23: $d4 $d7 $56
    sub c                                         ; $6d26: $91
    adc a                                         ; $6d27: $8f
    ld [$dd03], sp                                ; $6d28: $08 $03 $dd
    push de                                       ; $6d2b: $d5
    ret nz                                        ; $6d2c: $c0

    xor a                                         ; $6d2d: $af
    and l                                         ; $6d2e: $a5
    sub d                                         ; $6d2f: $92
    ld a, a                                       ; $6d30: $7f
    ld e, d                                       ; $6d31: $5a
    db $eb                                        ; $6d32: $eb
    bit 4, e                                      ; $6d33: $cb $63
    dec a                                         ; $6d35: $3d
    ccf                                           ; $6d36: $3f
    ld d, [hl]                                    ; $6d37: $56
    add hl, de                                    ; $6d38: $19
    cp $3c                                        ; $6d39: $fe $3c
    ld [hl], a                                    ; $6d3b: $77
    db $ec                                        ; $6d3c: $ec
    scf                                           ; $6d3d: $37
    ld sp, $b03b                                  ; $6d3e: $31 $3b $b0
    ld d, e                                       ; $6d41: $53
    ld sp, hl                                     ; $6d42: $f9
    cp b                                          ; $6d43: $b8
    ld h, e                                       ; $6d44: $63
    jp $ca4e                                      ; $6d45: $c3 $4e $ca


    dec [hl]                                      ; $6d48: $35
    ld hl, $cf5a                                  ; $6d49: $21 $5a $cf
    and d                                         ; $6d4c: $a2
    cp [hl]                                       ; $6d4d: $be
    and $55                                       ; $6d4e: $e6 $55
    cp b                                          ; $6d50: $b8
    db $eb                                        ; $6d51: $eb
    call nz, $f857                                ; $6d52: $c4 $57 $f8
    xor [hl]                                      ; $6d55: $ae
    jr jr_026_6d15                                ; $6d56: $18 $bd

    ld e, [hl]                                    ; $6d58: $5e
    and l                                         ; $6d59: $a5
    db $eb                                        ; $6d5a: $eb
    ld a, d                                       ; $6d5b: $7a
    ld d, $f5                                     ; $6d5c: $16 $f5
    or c                                          ; $6d5e: $b1
    ld e, h                                       ; $6d5f: $5c
    sub e                                         ; $6d60: $93
    ld h, [hl]                                    ; $6d61: $66
    pop hl                                        ; $6d62: $e1
    dec hl                                        ; $6d63: $2b
    ld [hl], l                                    ; $6d64: $75
    push bc                                       ; $6d65: $c5
    dec a                                         ; $6d66: $3d
    adc e                                         ; $6d67: $8b
    ld a, [$579a]                                 ; $6d68: $fa $9a $57
    sbc c                                         ; $6d6b: $99
    jp z, Jump_026_49af                           ; $6d6c: $ca $af $49

    or e                                          ; $6d6f: $b3
    ld c, e                                       ; $6d70: $4b
    ld l, e                                       ; $6d71: $6b
    call Call_026_5780                            ; $6d72: $cd $80 $57
    ld [hl], c                                    ; $6d75: $71
    add sp, -$46                                  ; $6d76: $e8 $ba
    db $e3                                        ; $6d78: $e3
    xor [hl]                                      ; $6d79: $ae
    add b                                         ; $6d7a: $80
    ld [hl], a                                    ; $6d7b: $77
    ld e, l                                       ; $6d7c: $5d
    bit 2, a                                      ; $6d7d: $cb $57
    ld c, c                                       ; $6d7f: $49
    xor h                                         ; $6d80: $ac
    dec hl                                        ; $6d81: $2b
    ld b, $96                                     ; $6d82: $06 $96
    ld e, d                                       ; $6d84: $5a
    jr c, jr_026_6dd1                             ; $6d85: $38 $4a

    rst $18                                       ; $6d87: $df
    and l                                         ; $6d88: $a5
    or l                                          ; $6d89: $b5
    ld h, [hl]                                    ; $6d8a: $66
    ret nz                                        ; $6d8b: $c0

    xor e                                         ; $6d8c: $ab
    jr c, jr_026_6dff                             ; $6d8d: $38 $70

    rst $10                                       ; $6d8f: $d7
    cp h                                          ; $6d90: $bc
    inc hl                                        ; $6d91: $23
    inc c                                         ; $6d92: $0c
    dec l                                         ; $6d93: $2d
    add hl, hl                                    ; $6d94: $29
    jp nc, $c770                                  ; $6d95: $d2 $70 $c7

    rst $38                                       ; $6d98: $ff
    ld a, [hl+]                                   ; $6d99: $2a
    and l                                         ; $6d9a: $a5
    sbc d                                         ; $6d9b: $9a
    ld c, a                                       ; $6d9c: $4f
    ld e, [hl]                                    ; $6d9d: $5e
    ld h, e                                       ; $6d9e: $63
    ld l, h                                       ; $6d9f: $6c
    ld b, $1f                                     ; $6da0: $06 $1f
    db $e3                                        ; $6da2: $e3
    inc a                                         ; $6da3: $3c
    rst $10                                       ; $6da4: $d7
    and h                                         ; $6da5: $a4
    ld b, c                                       ; $6da6: $41
    dec sp                                        ; $6da7: $3b
    add hl, hl                                    ; $6da8: $29
    or e                                          ; $6da9: $b3
    ld a, $95                                     ; $6daa: $3e $95
    inc [hl]                                      ; $6dac: $34
    call nz, $ed76                                ; $6dad: $c4 $76 $ed
    dec [hl]                                      ; $6db0: $35
    ld l, c                                       ; $6db1: $69
    ld d, $6f                                     ; $6db2: $16 $6f
    db $fd                                        ; $6db4: $fd
    cp c                                          ; $6db5: $b9
    di                                            ; $6db6: $f3
    sub d                                         ; $6db7: $92
    ld h, $28                                     ; $6db8: $26 $28
    ld l, b                                       ; $6dba: $68
    rst $00                                       ; $6dbb: $c7
    ld h, a                                       ; $6dbc: $67
    or d                                          ; $6dbd: $b2
    ld sp, $106d                                  ; $6dbe: $31 $6d $10

jr_026_6dc1:
    ld b, $3d                                     ; $6dc1: $06 $3d
    jp z, $efcb                                   ; $6dc3: $ca $cb $ef

    jp nz, Jump_026_6292                          ; $6dc6: $c2 $92 $62

    or e                                          ; $6dc9: $b3
    and h                                         ; $6dca: $a4
    rra                                           ; $6dcb: $1f
    xor a                                         ; $6dcc: $af
    call nz, $a766                                ; $6dcd: $c4 $66 $a7
    db $ec                                        ; $6dd0: $ec

jr_026_6dd1:
    xor l                                         ; $6dd1: $ad
    cpl                                           ; $6dd2: $2f
    call $cbf8                                    ; $6dd3: $cd $f8 $cb
    ld d, c                                       ; $6dd6: $51
    add l                                         ; $6dd7: $85
    and c                                         ; $6dd8: $a1
    push af                                       ; $6dd9: $f5
    db $fc                                        ; $6dda: $fc
    ld e, d                                       ; $6ddb: $5a
    adc h                                         ; $6ddc: $8c
    dec hl                                        ; $6ddd: $2b
    ld l, d                                       ; $6dde: $6a
    db $fd                                        ; $6ddf: $fd
    ld a, c                                       ; $6de0: $79
    adc $1f                                       ; $6de1: $ce $1f
    ld a, h                                       ; $6de3: $7c
    ld a, [hl-]                                   ; $6de4: $3a
    ei                                            ; $6de5: $fb
    ld sp, hl                                     ; $6de6: $f9
    or l                                          ; $6de7: $b5
    rst $18                                       ; $6de8: $df
    ld c, [hl]                                    ; $6de9: $4e
    ld sp, hl                                     ; $6dea: $f9
    pop af                                        ; $6deb: $f1
    ccf                                           ; $6dec: $3f
    ei                                            ; $6ded: $fb
    ld [de], a                                    ; $6dee: $12
    ld e, e                                       ; $6def: $5b
    sub e                                         ; $6df0: $93
    ld b, [hl]                                    ; $6df1: $46
    nop                                           ; $6df2: $00
    xor l                                         ; $6df3: $ad
    add a                                         ; $6df4: $87
    inc [hl]                                      ; $6df5: $34
    di                                            ; $6df6: $f3
    ld [hl], d                                    ; $6df7: $72
    ld h, c                                       ; $6df8: $61
    ld c, c                                       ; $6df9: $49
    ccf                                           ; $6dfa: $3f
    ei                                            ; $6dfb: $fb
    ld a, [bc]                                    ; $6dfc: $0a
    jr c, jr_026_6dc1                             ; $6dfd: $38 $c2

jr_026_6dff:
    and a                                         ; $6dff: $a7
    or [hl]                                       ; $6e00: $b6
    xor l                                         ; $6e01: $ad
    scf                                           ; $6e02: $37
    dec c                                         ; $6e03: $0d
    call nz, $9466                                ; $6e04: $c4 $66 $94
    ld a, $2f                                     ; $6e07: $3e $2f
    ccf                                           ; $6e09: $3f
    cp c                                          ; $6e0a: $b9
    ld b, c                                       ; $6e0b: $41
    pop af                                        ; $6e0c: $f1
    dec h                                         ; $6e0d: $25
    db $fd                                        ; $6e0e: $fd
    db $ec                                        ; $6e0f: $ec
    sub h                                         ; $6e10: $94
    dec [hl]                                      ; $6e11: $35
    ld l, c                                       ; $6e12: $69
    ret nc                                        ; $6e13: $d0

    ld c, [hl]                                    ; $6e14: $4e
    sub $a6                                       ; $6e15: $d6 $a6
    db $fd                                        ; $6e17: $fd
    ld l, e                                       ; $6e18: $6b
    jp nc, Jump_026_62d4                          ; $6e19: $d2 $d4 $62

    ld e, h                                       ; $6e1c: $5c
    ld d, c                                       ; $6e1d: $51
    db $eb                                        ; $6e1e: $eb
    xor a                                         ; $6e1f: $af
    db $fd                                        ; $6e20: $fd
    xor $2f                                       ; $6e21: $ee $2f
    adc e                                         ; $6e23: $8b
    and [hl]                                      ; $6e24: $a6
    xor d                                         ; $6e25: $aa
    adc a                                         ; $6e26: $8f
    cp a                                          ; $6e27: $bf
    ld e, [hl]                                    ; $6e28: $5e
    and $e5                                       ; $6e29: $e6 $e5
    jp nz, $2578                                  ; $6e2b: $c2 $78 $25

    add [hl]                                      ; $6e2e: $86
    jr nc, @+$2f                                  ; $6e2f: $30 $2d

    ld a, [hl]                                    ; $6e31: $7e
    ld h, e                                       ; $6e32: $63
    inc e                                         ; $6e33: $1c
    and l                                         ; $6e34: $a5
    adc a                                         ; $6e35: $8f
    ld c, a                                       ; $6e36: $4f
    xor c                                         ; $6e37: $a9
    ld e, a                                       ; $6e38: $5f
    ld a, [bc]                                    ; $6e39: $0a
    cp d                                          ; $6e3a: $ba
    ld l, [hl]                                    ; $6e3b: $6e
    cp l                                          ; $6e3c: $bd
    jp nc, Jump_000_342c                          ; $6e3d: $d2 $2c $34

    ldh [$a3], a                                  ; $6e40: $e0 $a3
    ld a, a                                       ; $6e42: $7f
    ld [hl], $9d                                  ; $6e43: $36 $9d
    push af                                       ; $6e45: $f5
    and l                                         ; $6e46: $a5
    add hl, de                                    ; $6e47: $19
    ld [hl], h                                    ; $6e48: $74
    cp [hl]                                       ; $6e49: $be
    cp d                                          ; $6e4a: $ba
    ld a, [de]                                    ; $6e4b: $1a
    rst $00                                       ; $6e4c: $c7
    dec hl                                        ; $6e4d: $2b
    ld sp, $b684                                  ; $6e4e: $31 $84 $b6
    sub $30                                       ; $6e51: $d6 $30

jr_026_6e53:
    ld b, h                                       ; $6e53: $44
    ld [$5659], sp                                ; $6e54: $08 $59 $56
    call nc, Call_026_53fa                        ; $6e57: $d4 $fa $53
    jp c, $af65                                   ; $6e5a: $da $65 $af

    ld [$0c21], sp                                ; $6e5d: $08 $21 $0c
    dec a                                         ; $6e60: $3d
    cp a                                          ; $6e61: $bf
    ld h, [hl]                                    ; $6e62: $66
    db $fd                                        ; $6e63: $fd
    reti                                          ; $6e64: $d9


    ld l, c                                       ; $6e65: $69
    adc b                                         ; $6e66: $88
    db $ed                                        ; $6e67: $ed
    inc a                                         ; $6e68: $3c
    inc bc                                        ; $6e69: $03
    ld a, $2f                                     ; $6e6a: $3e $2f
    ccf                                           ; $6e6c: $3f
    ld e, [hl]                                    ; $6e6d: $5e
    adc c                                         ; $6e6e: $89
    call $594e                                    ; $6e6f: $cd $4e $59
    sub e                                         ; $6e72: $93
    add [hl]                                      ; $6e73: $86
    cp e                                          ; $6e74: $bb
    ld d, [hl]                                    ; $6e75: $56
    dec d                                         ; $6e76: $15
    ld l, c                                       ; $6e77: $69
    sub $3d                                       ; $6e78: $d6 $3d
    db $dd                                        ; $6e7a: $dd

jr_026_6e7b:
    ld e, a                                       ; $6e7b: $5f
    ret nc                                        ; $6e7c: $d0

    inc l                                         ; $6e7d: $2c
    cp [hl]                                       ; $6e7e: $be
    dec bc                                        ; $6e7f: $0b
    ei                                            ; $6e80: $fb
    di                                            ; $6e81: $f3
    call Call_026_74ed                            ; $6e82: $cd $ed $74
    sbc [hl]                                      ; $6e85: $9e
    adc l                                         ; $6e86: $8d
    cp a                                          ; $6e87: $bf
    ld e, [hl]                                    ; $6e88: $5e
    and $e5                                       ; $6e89: $e6 $e5
    rlca                                          ; $6e8b: $07
    sbc l                                         ; $6e8c: $9d
    adc a                                         ; $6e8d: $8f
    ld de, $5c76                                  ; $6e8e: $11 $76 $5c
    cp h                                          ; $6e91: $bc
    sbc l                                         ; $6e92: $9d
    daa                                           ; $6e93: $27
    sub [hl]                                      ; $6e94: $96
    ld d, e                                       ; $6e95: $53
    ld h, d                                       ; $6e96: $62
    dec sp                                        ; $6e97: $3b
    di                                            ; $6e98: $f3
    dec h                                         ; $6e99: $25
    cp h                                          ; $6e9a: $bc
    ld sp, $34de                                  ; $6e9b: $31 $de $34
    or b                                          ; $6e9e: $b0
    inc sp                                        ; $6e9f: $33
    jr z, @-$45                                   ; $6ea0: $28 $b9

    db $e3                                        ; $6ea2: $e3
    res 5, l                                      ; $6ea3: $cb $ad
    jp z, Jump_000_1bf8                           ; $6ea5: $ca $f8 $1b

    db $e3                                        ; $6ea8: $e3
    ld a, [hl-]                                   ; $6ea9: $3a
    sub d                                         ; $6eaa: $92
    cp $95                                        ; $6eab: $fe $95
    xor a                                         ; $6ead: $af
    ld c, c                                       ; $6eae: $49
    or e                                          ; $6eaf: $b3
    ld c, e                                       ; $6eb0: $4b
    dec bc                                        ; $6eb1: $0b
    dec [hl]                                      ; $6eb2: $35
    cp b                                          ; $6eb3: $b8
    push de                                       ; $6eb4: $d5
    sbc [hl]                                      ; $6eb5: $9e
    xor d                                         ; $6eb6: $aa
    inc [hl]                                      ; $6eb7: $34
    db $e4                                        ; $6eb8: $e4
    cpl                                           ; $6eb9: $2f
    add b                                         ; $6eba: $80
    jr nc, jr_026_6e53                            ; $6ebb: $30 $96

    ld d, l                                       ; $6ebd: $55
    ld c, d                                       ; $6ebe: $4a
    dec [hl]                                      ; $6ebf: $35
    ld e, a                                       ; $6ec0: $5f
    ld b, a                                       ; $6ec1: $47
    sbc e                                         ; $6ec2: $9b
    reti                                          ; $6ec3: $d9


    add hl, hl                                    ; $6ec4: $29
    cp e                                          ; $6ec5: $bb
    adc $9d                                       ; $6ec6: $ce $9d
    sub a                                         ; $6ec8: $97
    inc [hl]                                      ; $6ec9: $34
    ld b, c                                       ; $6eca: $41
    ld b, c                                       ; $6ecb: $41
    jr jr_026_6e7b                                ; $6ecc: $18 $ad

    ld a, [de]                                    ; $6ece: $1a
    ret z                                         ; $6ecf: $c8

    ld h, l                                       ; $6ed0: $65
    dec hl                                        ; $6ed1: $2b
    ld a, [bc]                                    ; $6ed2: $0a
    ld d, e                                       ; $6ed3: $53
    ld de, $e0a5                                  ; $6ed4: $11 $a5 $e0
    reti                                          ; $6ed7: $d9


    db $ec                                        ; $6ed8: $ec
    sub h                                         ; $6ed9: $94
    push af                                       ; $6eda: $f5
    rst $10                                       ; $6edb: $d7
    rst $18                                       ; $6edc: $df
    ld h, c                                       ; $6edd: $61
    ld l, e                                       ; $6ede: $6b
    cp c                                          ; $6edf: $b9
    ld d, l                                       ; $6ee0: $55
    dec a                                         ; $6ee1: $3d
    ld a, $cc                                     ; $6ee2: $3e $cc
    ld [hl], e                                    ; $6ee4: $73
    db $ed                                        ; $6ee5: $ed
    ld e, a                                       ; $6ee6: $5f
    ld d, l                                       ; $6ee7: $55
    ld d, h                                       ; $6ee8: $54
    add d                                         ; $6ee9: $82
    ld h, a                                       ; $6eea: $67
    di                                            ; $6eeb: $f3
    ld e, h                                       ; $6eec: $5c
    sub e                                         ; $6eed: $93
    ld b, [hl]                                    ; $6eee: $46
    and [hl]                                      ; $6eef: $a6
    ld d, l                                       ; $6ef0: $55
    sub l                                         ; $6ef1: $95
    add [hl]                                      ; $6ef2: $86
    ld a, h                                       ; $6ef3: $7c
    ld [$5e3b], a                                 ; $6ef4: $ea $3b $5e
    ld l, $05                                     ; $6ef7: $2e $05
    jp hl                                         ; $6ef9: $e9


    ld c, $68                                     ; $6efa: $0e $68
    dec a                                         ; $6efc: $3d
    adc d                                         ; $6efd: $8a
    ld d, d                                       ; $6efe: $52
    ld a, l                                       ; $6eff: $7d
    ld c, l                                       ; $6f00: $4d
    sbc d                                         ; $6f01: $9a
    reti                                          ; $6f02: $d9


    add hl, hl                                    ; $6f03: $29
    inc bc                                        ; $6f04: $03
    rst $08                                       ; $6f05: $cf
    ld c, [hl]                                    ; $6f06: $4e
    rst $20                                       ; $6f07: $e7
    ld d, d                                       ; $6f08: $52
    or b                                          ; $6f09: $b0
    halt                                          ; $6f0a: $76
    add e                                         ; $6f0b: $83
    ld h, [hl]                                    ; $6f0c: $66
    xor c                                         ; $6f0d: $a9
    add l                                         ; $6f0e: $85
    inc bc                                        ; $6f0f: $03
    inc hl                                        ; $6f10: $23
    cp a                                          ; $6f11: $bf
    ld h, $4d                                     ; $6f12: $26 $4d
    dec l                                         ; $6f14: $2d
    add $75                                       ; $6f15: $c6 $75
    adc h                                         ; $6f17: $8c
    xor a                                         ; $6f18: $af
    ld c, c                                       ; $6f19: $49
    inc hl                                        ; $6f1a: $23
    db $e3                                        ; $6f1b: $e3
    sub l                                         ; $6f1c: $95
    ret c                                         ; $6f1d: $d8

    inc a                                         ; $6f1e: $3c
    rla                                           ; $6f1f: $17
    ld h, h                                       ; $6f20: $64
    or d                                          ; $6f21: $b2
    add hl, de                                    ; $6f22: $19
    ld a, b                                       ; $6f23: $78
    add h                                         ; $6f24: $84
    ld bc, $96a7                                  ; $6f25: $01 $a7 $96
    ld d, c                                       ; $6f28: $51
    ld [hl], d                                    ; $6f29: $72
    rst $10                                       ; $6f2a: $d7
    xor d                                         ; $6f2b: $aa
    ld [hl+], a                                   ; $6f2c: $22
    call $a7ba                                    ; $6f2d: $cd $ba $a7
    ei                                            ; $6f30: $fb
    dec bc                                        ; $6f31: $0b
    ld [hl], a                                    ; $6f32: $77
    ld e, [hl]                                    ; $6f33: $5e
    sub h                                         ; $6f34: $94
    ld [$d26b], a                                 ; $6f35: $ea $6b $d2
    jr nz, jr_026_6f46                            ; $6f38: $20 $0c

    dec a                                         ; $6f3a: $3d
    and h                                         ; $6f3b: $a4
    sbc c                                         ; $6f3c: $99
    sub a                                         ; $6f3d: $97
    dec bc                                        ; $6f3e: $0b
    ld c, e                                       ; $6f3f: $4b
    ld a, [$67c3]                                 ; $6f40: $fa $c3 $67
    pop af                                        ; $6f43: $f1
    ld a, [de]                                    ; $6f44: $1a
    inc l                                         ; $6f45: $2c

jr_026_6f46:
    ld d, h                                       ; $6f46: $54
    or $4b                                        ; $6f47: $f6 $4b
    ld a, e                                       ; $6f49: $7b
    dec h                                         ; $6f4a: $25
    ld h, e                                       ; $6f4b: $63
    ld l, h                                       ; $6f4c: $6c
    add $5f                                       ; $6f4d: $c6 $5f
    cpl                                           ; $6f4f: $2f
    db $d3                                        ; $6f50: $d3
    ld [hl], l                                    ; $6f51: $75
    ld c, d                                       ; $6f52: $4a
    ld a, $5d                                     ; $6f53: $3e $5d
    ld c, $b3                                     ; $6f55: $0e $b3
    ld e, a                                       ; $6f57: $5f
    cp l                                          ; $6f58: $bd
    cp h                                          ; $6f59: $bc
    xor h                                         ; $6f5a: $ac
    ld c, d                                       ; $6f5b: $4a
    ld a, c                                       ; $6f5c: $79
    add h                                         ; $6f5d: $84
    ld bc, $1fad                                  ; $6f5e: $01 $ad $1f
    ld h, e                                       ; $6f61: $63
    ld [hl], d                                    ; $6f62: $72
    rst $10                                       ; $6f63: $d7
    and h                                         ; $6f64: $a4
    and c                                         ; $6f65: $a1
    ld h, b                                       ; $6f66: $60
    and c                                         ; $6f67: $a1
    ld [de], a                                    ; $6f68: $12
    jp c, $f251                                   ; $6f69: $da $51 $f2

    ld l, e                                       ; $6f6c: $6b
    jp nc, Jump_026_674c                          ; $6f6d: $d2 $4c $67

    ld e, a                                       ; $6f70: $5f
    ld bc, $f35f                                  ; $6f71: $01 $5f $f3
    ld a, [hl+]                                   ; $6f74: $2a
    inc bc                                        ; $6f75: $03
    scf                                           ; $6f76: $37
    db $ec                                        ; $6f77: $ec
    ret                                           ; $6f78: $c9


    cp e                                          ; $6f79: $bb
    ld h, d                                       ; $6f7a: $62
    sub [hl]                                      ; $6f7b: $96
    pop af                                        ; $6f7c: $f1
    scf                                           ; $6f7d: $37
    add $b5                                       ; $6f7e: $c6 $b5
    ld a, a                                       ; $6f80: $7f
    sub b                                         ; $6f81: $90
    ld c, c                                       ; $6f82: $49
    ld [$bd03], sp                                ; $6f83: $08 $03 $bd
    jp nc, Jump_026_4eac                          ; $6f86: $d2 $ac $4e

    ret                                           ; $6f89: $c9


    rst $08                                       ; $6f8a: $cf
    or d                                          ; $6f8b: $b2
    ld c, d                                       ; $6f8c: $4a
    xor c                                         ; $6f8d: $a9
    and $83                                       ; $6f8e: $e6 $83
    adc a                                         ; $6f90: $8f
    ld [hl], c                                    ; $6f91: $71
    sbc [hl]                                      ; $6f92: $9e
    ld l, e                                       ; $6f93: $6b
    jp nc, $9770                                  ; $6f94: $d2 $70 $97

    or $aa                                        ; $6f97: $f6 $aa
    inc [hl]                                      ; $6f99: $34
    ld [bc], a                                    ; $6f9a: $02
    adc a                                         ; $6f9b: $8f
    halt                                          ; $6f9c: $76
    or h                                          ; $6f9d: $b4
    pop af                                        ; $6f9e: $f1
    push bc                                       ; $6f9f: $c5
    call z, Call_026_54fa                         ; $6fa0: $cc $fa $54
    jp nc, $9b10                                  ; $6fa3: $d2 $10 $9b

    add $b8                                       ; $6fa6: $c6 $b8
    ld h, $cd                                     ; $6fa8: $26 $cd
    ld [c], a                                     ; $6faa: $e2
    xor l                                         ; $6fab: $ad
    ccf                                           ; $6fac: $3f
    jp nz, Jump_000_1547                          ; $6fad: $c2 $47 $15

    xor $74                                       ; $6fb0: $ee $74
    ld c, l                                       ; $6fb2: $4d
    ld a, [de]                                    ; $6fb3: $1a
    ld a, [bc]                                    ; $6fb4: $0a
    ld b, $55                                     ; $6fb5: $06 $55
    ret                                           ; $6fb7: $c9


    xor b                                         ; $6fb8: $a8
    add d                                         ; $6fb9: $82
    sub $2b                                       ; $6fba: $d6 $2b
    call Call_026_7e54                            ; $6fbc: $cd $54 $7e
    ld a, [de]                                    ; $6fbf: $1a
    ld a, c                                       ; $6fc0: $79
    ld l, l                                       ; $6fc1: $6d
    ld h, b                                       ; $6fc2: $60
    db $fc                                        ; $6fc3: $fc
    rst $00                                       ; $6fc4: $c7
    ld a, [hl+]                                   ; $6fc5: $2a
    jp $a5df                                      ; $6fc6: $c3 $df $a5


    dec e                                         ; $6fc9: $1d
    rla                                           ; $6fca: $17
    db $d3                                        ; $6fcb: $d3
    ret z                                         ; $6fcc: $c8

    add l                                         ; $6fcd: $85
    ld [hl-], a                                   ; $6fce: $32
    dec h                                         ; $6fcf: $25
    or [hl]                                       ; $6fd0: $b6
    and e                                         ; $6fd1: $a3
    ld h, e                                       ; $6fd2: $63
    cp d                                          ; $6fd3: $ba
    inc bc                                        ; $6fd4: $03
    jp c, $335a                                   ; $6fd5: $da $5a $33

    ldh [rHDMA5], a                               ; $6fd8: $e0 $55
    inc e                                         ; $6fda: $1c
    cp b                                          ; $6fdb: $b8
    or e                                          ; $6fdc: $b3
    xor a                                         ; $6fdd: $af
    add b                                         ; $6fde: $80
    xor a                                         ; $6fdf: $af
    ld a, c                                       ; $6fe0: $79
    sub l                                         ; $6fe1: $95
    xor [hl]                                      ; $6fe2: $ae
    jr @-$41                                      ; $6fe3: $18 $bd

    ld e, $10                                     ; $6fe5: $1e $10
    ld b, $3d                                     ; $6fe7: $06 $3d
    ld a, a                                       ; $6fe9: $7f
    ld b, l                                       ; $6fea: $45
    xor l                                         ; $6feb: $ad
    cp a                                          ; $6fec: $bf
    ld h, $8d                                     ; $6fed: $26 $8d
    xor h                                         ; $6fef: $ac
    sbc l                                         ; $6ff0: $9d
    ld e, c                                       ; $6ff1: $59
    add a                                         ; $6ff2: $87
    ret                                           ; $6ff3: $c9


    dec c                                         ; $6ff4: $0d
    adc d                                         ; $6ff5: $8a
    xor a                                         ; $6ff6: $af
    cp h                                          ; $6ff7: $bc
    inc a                                         ; $6ff8: $3c
    ld [hl], a                                    ; $6ff9: $77
    ld a, [de]                                    ; $6ffa: $1a
    push hl                                       ; $6ffb: $e5
    sub l                                         ; $6ffc: $95
    dec [hl]                                      ; $6ffd: $35
    add e                                         ; $6ffe: $83
    inc d                                         ; $6fff: $14
    ld a, a                                       ; $7000: $7f
    add [hl]                                      ; $7001: $86
    or [hl]                                       ; $7002: $b6
    ld e, $45                                     ; $7003: $1e $45
    ld a, l                                       ; $7005: $7d
    db $fc                                        ; $7006: $fc
    adc l                                         ; $7007: $8d
    ld [hl], c                                    ; $7008: $71
    db $ed                                        ; $7009: $ed
    ld e, a                                       ; $700a: $5f
    ld a, a                                       ; $700b: $7f
    rlca                                          ; $700c: $07
    ld e, $b0                                     ; $700d: $1e $b0
    sub [hl]                                      ; $700f: $96
    ld e, e                                       ; $7010: $5b
    push de                                       ; $7011: $d5
    db $e3                                        ; $7012: $e3
    inc bc                                        ; $7013: $03
    jp nz, $8a3d                                  ; $7014: $c2 $3d $8a

    ld d, d                                       ; $7017: $52
    ld a, l                                       ; $7018: $7d
    ld c, l                                       ; $7019: $4d
    sbc d                                         ; $701a: $9a
    reti                                          ; $701b: $d9


    add hl, hl                                    ; $701c: $29
    add e                                         ; $701d: $83
    sub d                                         ; $701e: $92
    sbc l                                         ; $701f: $9d
    adc $a5                                       ; $7020: $ce $a5
    ld h, b                                       ; $7022: $60
    ld [$2e3b], a                                 ; $7023: $ea $3b $2e
    and [hl]                                      ; $7026: $a6
    sub c                                         ; $7027: $91
    dec bc                                        ; $7028: $0b
    ld h, l                                       ; $7029: $65
    ld c, d                                       ; $702a: $4a
    ld l, h                                       ; $702b: $6c
    ld b, a                                       ; $702c: $47
    rst $00                                       ; $702d: $c7
    ld [hl], h                                    ; $702e: $74
    rlca                                          ; $702f: $07
    or h                                          ; $7030: $b4
    or l                                          ; $7031: $b5
    ld l, d                                       ; $7032: $6a
    and a                                         ; $7033: $a7
    db $d3                                        ; $7034: $d3
    ld c, h                                       ; $7035: $4c
    ld e, [hl]                                    ; $7036: $5e
    reti                                          ; $7037: $d9


    and l                                         ; $7038: $a5
    and b                                         ; $7039: $a0
    dec bc                                        ; $703a: $0b
    ld b, $96                                     ; $703b: $06 $96
    or c                                          ; $703d: $b1
    and h                                         ; $703e: $a4
    sbc d                                         ; $703f: $9a
    xor a                                         ; $7040: $af
    xor b                                         ; $7041: $a8
    push af                                       ; $7042: $f5
    rst $20                                       ; $7043: $e7
    ld b, l                                       ; $7044: $45
    ld a, l                                       ; $7045: $7d
    and c                                         ; $7046: $a1
    xor c                                         ; $7047: $a9
    ld a, [bc]                                    ; $7048: $0a
    jp nz, $afdd                                  ; $7049: $c2 $dd $af

    scf                                           ; $704c: $37
    ld l, b                                       ; $704d: $68
    dec sp                                        ; $704e: $3b
    jp c, $2cf8                                   ; $704f: $da $f8 $2c

    or l                                          ; $7052: $b5
    ld [hl], b                                    ; $7053: $70
    ld h, b                                       ; $7054: $60
    db $e4                                        ; $7055: $e4
    rst $00                                       ; $7056: $c7
    ld a, a                                       ; $7057: $7f
    dec l                                         ; $7058: $2d
    add $c1                                       ; $7059: $c6 $c1
    rst $38                                       ; $705b: $ff
    sbc d                                         ; $705c: $9a
    inc [hl]                                      ; $705d: $34
    db $d3                                        ; $705e: $d3
    ld b, b                                       ; $705f: $40
    cpl                                           ; $7060: $2f
    ld hl, $960c                                  ; $7061: $21 $0c $96
    pop de                                        ; $7064: $d1
    ccf                                           ; $7065: $3f
    sbc e                                         ; $7066: $9b
    rst $20                                       ; $7067: $e7
    ldh [$63], a                                  ; $7068: $e0 $63
    sbc h                                         ; $706a: $9c
    sub a                                         ; $706b: $97
    add a                                         ; $706c: $87
    ld e, a                                       ; $706d: $5f
    dec sp                                        ; $706e: $3b
    or e                                          ; $706f: $b3
    ld c, $6b                                     ; $7070: $0e $6b
    ld l, e                                       ; $7072: $6b
    ld d, l                                       ; $7073: $55
    sbc a                                         ; $7074: $9f
    rst $20                                       ; $7075: $e7
    sbc d                                         ; $7076: $9a
    inc [hl]                                      ; $7077: $34
    ld [$a703], sp                                ; $7078: $08 $03 $a7
    sub [hl]                                      ; $707b: $96
    or c                                          ; $707c: $b1
    ld d, a                                       ; $707d: $57
    ld b, c                                       ; $707e: $41
    sbc e                                         ; $707f: $9b
    ld h, l                                       ; $7080: $65
    ld a, [de]                                    ; $7081: $1a
    ld c, [hl]                                    ; $7082: $4e
    ld l, l                                       ; $7083: $6d
    pop de                                        ; $7084: $d1
    set 0, [hl]                                   ; $7085: $cb $c6
    rst $38                                       ; $7087: $ff
    ld a, [hl+]                                   ; $7088: $2a
    and l                                         ; $7089: $a5
    dec h                                         ; $708a: $25
    push bc                                       ; $708b: $c5
    ld h, [hl]                                    ; $708c: $66
    pop bc                                        ; $708d: $c1
    or l                                          ; $708e: $b5
    cp $9a                                        ; $708f: $fe $9a
    inc [hl]                                      ; $7091: $34
    db $eb                                        ; $7092: $eb
    xor a                                         ; $7093: $af
    rst $38                                       ; $7094: $ff
    inc bc                                        ; $7095: $03
    sub $72                                       ; $7096: $d6 $72
    xor e                                         ; $7098: $ab
    ld a, d                                       ; $7099: $7a
    ld a, h                                       ; $709a: $7c
    ld e, b                                       ; $709b: $58
    ld e, e                                       ; $709c: $5b
    xor e                                         ; $709d: $ab
    ld a, [$94ec]                                 ; $709e: $fa $ec $94
    ld a, c                                       ; $70a1: $79
    ld sp, hl                                     ; $70a2: $f9
    db $10                                        ; $70a3: $10
    ld h, c                                       ; $70a4: $61
    rst $00                                       ; $70a5: $c7
    ld e, h                                       ; $70a6: $5c
    or [hl]                                       ; $70a7: $b6
    ld h, $cd                                     ; $70a8: $26 $cd
    ret c                                         ; $70aa: $d8

    ld d, a                                       ; $70ab: $57
    sub a                                         ; $70ac: $97
    db $fd                                        ; $70ad: $fd
    sub d                                         ; $70ae: $92
    and $25                                       ; $70af: $e6 $25
    pop hl                                        ; $70b1: $e1
    rst $10                                       ; $70b2: $d7
    adc $ac                                       ; $70b3: $ce $ac
    ld b, e                                       ; $70b5: $43
    ld d, a                                       ; $70b6: $57
    inc c                                         ; $70b7: $0c
    dec a                                         ; $70b8: $3d
    ccf                                           ; $70b9: $3f
    ld d, [hl]                                    ; $70ba: $56
    add hl, de                                    ; $70bb: $19
    cp $3c                                        ; $70bc: $fe $3c
    ld [hl], a                                    ; $70be: $77
    ld e, h                                       ; $70bf: $5c
    ld c, h                                       ; $70c0: $4c
    inc hl                                        ; $70c1: $23
    rla                                           ; $70c2: $17
    jp z, $df7a                                   ; $70c3: $ca $7a $df

    pop de                                        ; $70c6: $d1
    ld sp, $61dd                                  ; $70c7: $31 $dd $61
    ld b, a                                       ; $70ca: $47
    ld h, a                                       ; $70cb: $67

jr_026_70cc:
    sub $c1                                       ; $70cc: $d6 $c1
    ld d, e                                       ; $70ce: $53
    ld e, $ad                                     ; $70cf: $1e $ad
    rst $20                                       ; $70d1: $e7
    ld c, a                                       ; $70d2: $4f
    push hl                                       ; $70d3: $e5
    xor c                                         ; $70d4: $a9
    and $83                                       ; $70d5: $e6 $83
    rla                                           ; $70d7: $17
    db $eb                                        ; $70d8: $eb
    and l                                         ; $70d9: $a5
    ld h, b                                       ; $70da: $60
    sub l                                         ; $70db: $95
    ld bc, $f0cf                                  ; $70dc: $01 $cf $f0
    dec b                                         ; $70df: $05
    and [hl]                                      ; $70e0: $a6
    ld a, $2f                                     ; $70e1: $3e $2f
    cp a                                          ; $70e3: $bf
    jr nc, @-$3b                                  ; $70e4: $30 $c3

    daa                                           ; $70e6: $27
    ld b, a                                       ; $70e7: $47
    ld [$3ff1], sp                                ; $70e8: $08 $f1 $3f
    ld a, [$f367]                                 ; $70eb: $fa $67 $f3
    sbc h                                         ; $70ee: $9c
    ccf                                           ; $70ef: $3f
    or c                                          ; $70f0: $b1
    ld a, c                                       ; $70f1: $79
    ld c, [hl]                                    ; $70f2: $4e
    ld l, c                                       ; $70f3: $69
    ld l, c                                       ; $70f4: $69
    cp h                                          ; $70f5: $bc
    dec l                                         ; $70f6: $2d
    xor a                                         ; $70f7: $af
    push af                                       ; $70f8: $f5
    and l                                         ; $70f9: $a5
    cp l                                          ; $70fa: $bd
    halt                                          ; $70fb: $76
    ld h, [hl]                                    ; $70fc: $66
    sbc l                                         ; $70fd: $9d
    ld c, a                                       ; $70fe: $4f
    add hl, bc                                    ; $70ff: $09
    ld bc, $476d                                  ; $7100: $01 $6d $47
    dec de                                        ; $7103: $1b
    ld e, a                                       ; $7104: $5f
    daa                                           ; $7105: $27
    cp [hl]                                       ; $7106: $be
    jp nz, $caaf                                  ; $7107: $c2 $af $ca

    ldh a, [$d7]                                  ; $710a: $f0 $d7
    sub $aa                                       ; $710c: $d6 $aa
    ld a, $c8                                     ; $710e: $3e $c8
    inc h                                         ; $7110: $24
    add h                                         ; $7111: $84
    ld bc, $1fad                                  ; $7112: $01 $ad $1f
    ld h, e                                       ; $7115: $63
    ld [hl], d                                    ; $7116: $72
    ld h, a                                       ; $7117: $67
    xor c                                         ; $7118: $a9

jr_026_7119:
    add l                                         ; $7119: $85
    dec sp                                        ; $711a: $3b
    ld b, [hl]                                    ; $711b: $46
    or h                                          ; $711c: $b4
    jp z, $ac9d                                   ; $711d: $ca $9d $ac

    pop de                                        ; $7120: $d1
    adc $06                                       ; $7121: $ce $06
    ld l, l                                       ; $7123: $6d
    ld b, a                                       ; $7124: $47
    ret                                           ; $7125: $c9


    xor a                                         ; $7126: $af
    ld c, c                                       ; $7127: $49
    inc sp                                        ; $7128: $33
    ld e, l                                       ; $7129: $5d
    ld l, e                                       ; $712a: $6b
    ld b, $bc                                     ; $712b: $06 $bc
    adc d                                         ; $712d: $8a
    jp Jump_000_0dc0                              ; $712e: $c3 $c0 $0d


    ld a, e                                       ; $7131: $7b
    ld a, [c]                                     ; $7132: $f2
    xor [hl]                                      ; $7133: $ae
    jr jr_026_70cc                                ; $7134: $18 $96

    pop af                                        ; $7136: $f1
    scf                                           ; $7137: $37
    add $b5                                       ; $7138: $c6 $b5
    ld a, a                                       ; $713a: $7f
    sub b                                         ; $713b: $90
    ld c, c                                       ; $713c: $49
    ld [$2703], sp                                ; $713d: $08 $03 $27
    rst $38                                       ; $7140: $ff
    inc a                                         ; $7141: $3c
    inc de                                        ; $7142: $13
    ld l, l                                       ; $7143: $6d
    sub [hl]                                      ; $7144: $96
    add c                                         ; $7145: $81
    ld a, [c]                                     ; $7146: $f2
    ld l, e                                       ; $7147: $6b
    jp nc, Jump_026_55ec                          ; $7148: $d2 $ec $55

    ld [c], a                                     ; $714b: $e2
    ld a, l                                       ; $714c: $7d
    add hl, de                                    ; $714d: $19
    ld a, a                                       ; $714e: $7f
    cp l                                          ; $714f: $bd
    call z, $fa8b                                 ; $7150: $cc $8b $fa
    jp c, $e0af                                   ; $7153: $da $af $e0

    or c                                          ; $7156: $b1
    add hl, de                                    ; $7157: $19
    cp h                                          ; $7158: $bc
    ld e, b                                       ; $7159: $58
    sub l                                         ; $715a: $95
    ld a, h                                       ; $715b: $7c
    xor l                                         ; $715c: $ad
    ld a, [de]                                    ; $715d: $1a
    ret z                                         ; $715e: $c8

    ld h, l                                       ; $715f: $65
    ld [$9603], sp                                ; $7160: $08 $03 $96
    push bc                                       ; $7163: $c5
    ld e, e                                       ; $7164: $5b
    rst $38                                       ; $7165: $ff
    or l                                          ; $7166: $b5
    ld l, d                                       ; $7167: $6a
    jr nz, @-$67                                  ; $7168: $20 $97

    ld hl, $c70c                                  ; $716a: $21 $0c $c7
    db $e4                                        ; $716d: $e4
    sbc d                                         ; $716e: $9a
    inc [hl]                                      ; $716f: $34
    ld e, l                                       ; $7170: $5d
    or a                                          ; $7171: $b7
    ld d, e                                       ; $7172: $53
    jp nc, Jump_026_4697                          ; $7173: $d2 $97 $46

    ld b, $29                                     ; $7176: $06 $29
    adc $5d                                       ; $7178: $ce $5d
    sub e                                         ; $717a: $93
    ld h, [hl]                                    ; $717b: $66
    ld [hl], l                                    ; $717c: $75
    ld c, d                                       ; $717d: $4a
    ld e, $6d                                     ; $717e: $1e $6d
    xor l                                         ; $7180: $ad
    ld e, a                                       ; $7181: $5f
    add e                                         ; $7182: $83
    ld l, c                                       ; $7183: $69
    inc c                                         ; $7184: $0c
    inc de                                        ; $7185: $13
    ld a, h                                       ; $7186: $7c
    ld a, [bc]                                    ; $7187: $0a
    ld l, e                                       ; $7188: $6b
    dec hl                                        ; $7189: $2b
    sbc e                                         ; $718a: $9b
    jp nz, Jump_000_2774                          ; $718b: $c2 $74 $27

    sbc e                                         ; $718e: $9b
    jr nz, jr_026_7119                            ; $718f: $20 $88

    adc a                                         ; $7191: $8f
    or [hl]                                       ; $7192: $b6
    xor $2f                                       ; $7193: $ee $2f
    ld b, l                                       ; $7195: $45
    dec sp                                        ; $7196: $3b
    jr nc, jr_026_71d7                            ; $7197: $30 $3e

    dec b                                         ; $7199: $05
    ld e, $6d                                     ; $719a: $1e $6d
    dec a                                         ; $719c: $3d
    ccf                                           ; $719d: $3f
    ld b, [hl]                                    ; $719e: $46
    xor $e0                                       ; $719f: $ee $e0
    ld a, a                                       ; $71a1: $7f
    ld c, l                                       ; $71a2: $4d
    sbc d                                         ; $71a3: $9a
    ld b, l                                       ; $71a4: $45
    push af                                       ; $71a5: $f5
    rla                                           ; $71a6: $17
    add h                                         ; $71a7: $84
    ld bc, $3f3d                                  ; $71a8: $01 $3d $3f
    ld d, [hl]                                    ; $71ab: $56
    add hl, de                                    ; $71ac: $19
    cp $3c                                        ; $71ad: $fe $3c
    rst $20                                       ; $71af: $e7
    push hl                                       ; $71b0: $e5
    ld d, a                                       ; $71b1: $57
    ld e, [hl]                                    ; $71b2: $5e
    db $e3                                        ; $71b3: $e3
    and l                                         ; $71b4: $a5
    ld h, b                                       ; $71b5: $60
    ldh [$ea], a                                  ; $71b6: $e0 $ea
    scf                                           ; $71b8: $37
    adc c                                         ; $71b9: $89
    dec sp                                        ; $71ba: $3b
    adc l                                         ; $71bb: $8d
    ld e, [hl]                                    ; $71bc: $5e
    jp nc, Jump_026_6504                          ; $71bd: $d2 $04 $65

    sub [hl]                                      ; $71c0: $96
    ld d, l                                       ; $71c1: $55
    ld c, d                                       ; $71c2: $4a
    add e                                         ; $71c3: $83
    rst $38                                       ; $71c4: $ff
    dec [hl]                                      ; $71c5: $35
    ld l, c                                       ; $71c6: $69

jr_026_71c7:
    and [hl]                                      ; $71c7: $a6
    ld a, [c]                                     ; $71c8: $f2
    and e                                         ; $71c9: $a3
    db $f4                                        ; $71ca: $f4
    ld e, l                                       ; $71cb: $5d
    ld a, [hl-]                                   ; $71cc: $3a
    rst $08                                       ; $71cd: $cf
    ret z                                         ; $71ce: $c8

    inc sp                                        ; $71cf: $33
    add h                                         ; $71d0: $84
    ld bc, $8b3d                                  ; $71d1: $01 $3d $8b
    ld a, [$ae58]                                 ; $71d4: $fa $58 $ae

jr_026_71d7:
    ld c, c                                       ; $71d7: $49
    or e                                          ; $71d8: $b3
    and d                                         ; $71d9: $a2
    sub $5f                                       ; $71da: $d6 $5f
    ld a, c                                       ; $71dc: $79
    ld sp, hl                                     ; $71dd: $f9
    xor [hl]                                      ; $71de: $ae
    jr @-$68                                      ; $71df: $18 $96

    sub l                                         ; $71e1: $95
    rst $10                                       ; $71e2: $d7
    jr c, jr_026_7214                             ; $71e3: $38 $2f

    add hl, bc                                    ; $71e5: $09
    ccf                                           ; $71e6: $3f
    cp [hl]                                       ; $71e7: $be
    db $e4                                        ; $71e8: $e4
    adc d                                         ; $71e9: $8a
    ld e, d                                       ; $71ea: $5a
    ld a, a                                       ; $71eb: $7f
    db $ed                                        ; $71ec: $ed
    ld a, a                                       ; $71ed: $7f
    jp c, $f3a5                                   ; $71ee: $da $a5 $f3

    adc h                                         ; $71f1: $8c
    inc a                                         ; $71f2: $3c
    db $db                                        ; $71f3: $db
    and l                                         ; $71f4: $a5
    dec e                                         ; $71f5: $1d
    ld [hl], e                                    ; $71f6: $73
    dec [hl]                                      ; $71f7: $35
    ld c, b                                       ; $71f8: $48
    jp c, $3151                                   ; $71f9: $da $51 $31

    ld a, [hl]                                    ; $71fc: $7e
    add e                                         ; $71fd: $83
    jr nc, jr_026_71c7                            ; $71fe: $30 $c7

    db $fd                                        ; $7200: $fd
    rst $00                                       ; $7201: $c7
    reti                                          ; $7202: $d9


    ld a, [c]                                     ; $7203: $f2
    ccf                                           ; $7204: $3f
    rst $08                                       ; $7205: $cf
    ld e, c                                       ; $7206: $59
    cpl                                           ; $7207: $2f
    ld e, h                                       ; $7208: $5c
    sbc a                                         ; $7209: $9f
    ld d, d                                       ; $720a: $52
    inc sp                                        ; $720b: $33
    cp a                                          ; $720c: $bf
    pop hl                                        ; $720d: $e1
    inc hl                                        ; $720e: $23
    inc c                                         ; $720f: $0c
    sub [hl]                                      ; $7210: $96
    ld d, l                                       ; $7211: $55
    ld c, d                                       ; $7212: $4a
    add e                                         ; $7213: $83

jr_026_7214:
    rst $38                                       ; $7214: $ff
    ld a, c                                       ; $7215: $79
    ld d, c                                       ; $7216: $51
    ld e, a                                       ; $7217: $5f
    sub e                                         ; $7218: $93
    ld h, [hl]                                    ; $7219: $66
    ld a, [hl+]                                   ; $721a: $2a
    cp a                                          ; $721b: $bf
    ld h, d                                       ; $721c: $62
    call nz, Call_026_7ad1                        ; $721d: $c4 $d1 $7a
    and [hl]                                      ; $7220: $a6
    adc c                                         ; $7221: $89
    ld l, h                                       ; $7222: $6c
    ld c, l                                       ; $7223: $4d
    sbc d                                         ; $7224: $9a
    push bc                                       ; $7225: $c5
    ld e, e                                       ; $7226: $5b
    rst $38                                       ; $7227: $ff
    add l                                         ; $7228: $85
    ccf                                           ; $7229: $3f
    rst $08                                       ; $722a: $cf
    sub l                                         ; $722b: $95
    rst $10                                       ; $722c: $d7
    cp b                                          ; $722d: $b8
    ld h, $4d                                     ; $722e: $26 $4d
    ld d, a                                       ; $7230: $57
    inc c                                         ; $7231: $0c
    cp l                                          ; $7232: $bd
    ld e, $b8                                     ; $7233: $1e $b8
    db $eb                                        ; $7235: $eb
    call nz, Call_026_7857                        ; $7236: $c4 $57 $78
    or h                                          ; $7239: $b4
    push af                                       ; $723a: $f5
    inc l                                         ; $723b: $2c
    ld [$b963], a                                 ; $723c: $ea $63 $b9
    ld h, $cd                                     ; $723f: $26 $cd
    xor d                                         ; $7241: $aa
    and d                                         ; $7242: $a2
    ld [de], a                                    ; $7243: $12
    ld a, h                                       ; $7244: $7c
    ld d, a                                       ; $7245: $57
    inc c                                         ; $7246: $0c
    dec a                                         ; $7247: $3d
    jp z, $efcb                                   ; $7248: $ca $cb $ef

    jp nz, Jump_026_5728                          ; $724b: $c2 $28 $57

    dec d                                         ; $724e: $15
    sub l                                         ; $724f: $95
    ldh [$d1], a                                  ; $7250: $e0 $d1
    ld h, [hl]                                    ; $7252: $66
    pop af                                        ; $7253: $f1
    ld e, l                                       ; $7254: $5d
    ld e, b                                       ; $7255: $58
    ret c                                         ; $7256: $d8

    adc h                                         ; $7257: $8c
    add hl, de                                    ; $7258: $19
    ld l, a                                       ; $7259: $6f
    and $b9                                       ; $725a: $e6 $b9
    ld a, [c]                                     ; $725c: $f2
    ld a, [de]                                    ; $725d: $1a
    and a                                         ; $725e: $a7
    ld sp, $2f8e                                  ; $725f: $31 $8e $2f
    add hl, sp                                    ; $7262: $39
    add l                                         ; $7263: $85
    ld a, [hl-]                                   ; $7264: $3a
    jp nz, Jump_000_1ebd                          ; $7265: $c2 $bd $1e

    cp b                                          ; $7268: $b8
    db $eb                                        ; $7269: $eb
    call nz, $f857                                ; $726a: $c4 $57 $f8
    ld l, $18                                     ; $726d: $2e $18
    dec a                                         ; $726f: $3d
    jp z, Jump_026_73cb                           ; $7270: $ca $cb $73

    rst $20                                       ; $7273: $e7
    ld b, l                                       ; $7274: $45
    ld a, l                                       ; $7275: $7d
    ld d, b                                       ; $7276: $50
    jp nc, Jump_000_3644                          ; $7277: $d2 $44 $36

    ei                                            ; $727a: $fb
    ccf                                           ; $727b: $3f
    xor [hl]                                      ; $727c: $ae
    db $fd                                        ; $727d: $fd
    xor $2f                                       ; $727e: $ee $2f
    ld [$0703], sp                                ; $7280: $08 $03 $07
    db $ec                                        ; $7283: $ec
    db $f4                                        ; $7284: $f4
    ld l, h                                       ; $7285: $6c
    ccf                                           ; $7286: $3f
    ld h, b                                       ; $7287: $60
    db $fd                                        ; $7288: $fd
    xor l                                         ; $7289: $ad
    rst $20                                       ; $728a: $e7
    dec h                                         ; $728b: $25
    ld a, a                                       ; $728c: $7f
    ld e, c                                       ; $728d: $59
    or a                                          ; $728e: $b7
    sbc b                                         ; $728f: $98
    ld e, d                                       ; $7290: $5a
    rst $00                                       ; $7291: $c7
    db $fd                                        ; $7292: $fd
    xor l                                         ; $7293: $ad
    ld a, e                                       ; $7294: $7b
    ld e, [hl]                                    ; $7295: $5e
    ld a, [c]                                     ; $7296: $f2
    ld h, a                                       ; $7297: $67
    ld l, e                                       ; $7298: $6b
    ld d, l                                       ; $7299: $55
    rst $00                                       ; $729a: $c7
    db $fd                                        ; $729b: $fd
    xor l                                         ; $729c: $ad
    cp e                                          ; $729d: $bb
    ld e, [hl]                                    ; $729e: $5e
    ld e, c                                       ; $729f: $59
    jp c, $3e3b                                   ; $72a0: $da $3b $3e

    and [hl]                                      ; $72a3: $a6
    push af                                       ; $72a4: $f5
    ld bc, $fd03                                  ; $72a5: $01 $03 $fd
    db $ed                                        ; $72a8: $ed
    inc d                                         ; $72a9: $14
    dec c                                         ; $72aa: $0d
    ld a, a                                       ; $72ab: $7f
    dec a                                         ; $72ac: $3d
    inc [hl]                                      ; $72ad: $34
    ld e, b                                       ; $72ae: $58
    ld [hl], a                                    ; $72af: $77
    xor l                                         ; $72b0: $ad
    ld [$fd18], a                                 ; $72b1: $ea $18 $fd
    xor l                                         ; $72b4: $ad
    ld a, e                                       ; $72b5: $7b
    ld a, [$da4d]                                 ; $72b6: $fa $4d $da
    adc c                                         ; $72b9: $89
    rst $10                                       ; $72ba: $d7
    ld [hl], a                                    ; $72bb: $77
    or h                                          ; $72bc: $b4
    ld b, $18                                     ; $72bd: $06 $18
    db $fd                                        ; $72bf: $fd
    xor l                                         ; $72c0: $ad
    push hl                                       ; $72c1: $e5
    ld a, l                                       ; $72c2: $7d
    ld l, c                                       ; $72c3: $69
    rst $28                                       ; $72c4: $ef
    cp b                                          ; $72c5: $b8
    dec hl                                        ; $72c6: $2b
    ldh [$eb], a                                  ; $72c7: $e0 $eb
    push af                                       ; $72c9: $f5
    ld a, [hl+]                                   ; $72ca: $2a
    dec sp                                        ; $72cb: $3b
    ld a, [hl-]                                   ; $72cc: $3a
    or e                                          ; $72cd: $b3
    ld c, $18                                     ; $72ce: $0e $18
    db $fd                                        ; $72d0: $fd
    xor l                                         ; $72d1: $ad
    sbc e                                         ; $72d2: $9b
    sbc d                                         ; $72d3: $9a
    ret z                                         ; $72d4: $c8

    inc h                                         ; $72d5: $24
    add hl, bc                                    ; $72d6: $09
    inc bc                                        ; $72d7: $03
    db $fd                                        ; $72d8: $fd
    xor l                                         ; $72d9: $ad
    and a                                         ; $72da: $a7
    ld [de], a                                    ; $72db: $12
    jp $c947                                      ; $72dc: $c3 $47 $c9


    xor a                                         ; $72df: $af
    ld c, c                                       ; $72e0: $49
    inc sp                                        ; $72e1: $33
    ld e, l                                       ; $72e2: $5d
    sub l                                         ; $72e3: $95
    ld sp, $e57e                                  ; $72e4: $31 $7e $e5
    add hl, hl                                    ; $72e7: $29
    ld e, l                                       ; $72e8: $5d
    scf                                           ; $72e9: $37
    res 1, d                                      ; $72ea: $cb $8a
    ld e, d                                       ; $72ec: $5a
    ld a, a                                       ; $72ed: $7f
    cp d                                          ; $72ee: $ba
    ld c, d                                       ; $72ef: $4a
    add l                                         ; $72f0: $85
    call $fa8b                                    ; $72f1: $cd $8b $fa
    jp nz, $141b                                  ; $72f4: $c2 $1b $14

    rst $18                                       ; $72f7: $df
    dec h                                         ; $72f8: $25
    ld a, a                                       ; $72f9: $7f
    ld a, c                                       ; $72fa: $79
    ldh a, [$35]                                  ; $72fb: $f0 $35
    ld l, c                                       ; $72fd: $69
    db $10                                        ; $72fe: $10
    ld b, $c7                                     ; $72ff: $06 $c7
    db $e4                                        ; $7301: $e4
    sbc d                                         ; $7302: $9a
    inc [hl]                                      ; $7303: $34
    dec bc                                        ; $7304: $0b
    ld e, a                                       ; $7305: $5f
    ld l, c                                       ; $7306: $69
    cp d                                          ; $7307: $ba
    db $e3                                        ; $7308: $e3
    inc [hl]                                      ; $7309: $34
    ld c, h                                       ; $730a: $4c
    inc bc                                        ; $730b: $03
    db $eb                                        ; $730c: $eb
    ld a, c                                       ; $730d: $79
    cp l                                          ; $730e: $bd
    ld a, [hl+]                                   ; $730f: $2a
    rrca                                          ; $7310: $0f
    ld d, e                                       ; $7311: $53
    ld h, d                                       ; $7312: $62
    db $eb                                        ; $7313: $eb
    ld a, c                                       ; $7314: $79
    add hl, sp                                    ; $7315: $39
    xor d                                         ; $7316: $aa
    jr nc, jr_026_7371                            ; $7317: $30 $58

    scf                                           ; $7319: $37
    dec d                                         ; $731a: $15
    sub $75                                       ; $731b: $d6 $75
    db $eb                                        ; $731d: $eb
    ld sp, hl                                     ; $731e: $f9
    ld sp, $1772                                  ; $731f: $31 $72 $17
    ld l, d                                       ; $7322: $6a
    db $d3                                        ; $7323: $d3
    ld a, [hl]                                    ; $7324: $7e
    or h                                          ; $7325: $b4
    sbc l                                         ; $7326: $9d
    call c, $caac                                 ; $7327: $dc $ac $ca
    jr @-$3f                                      ; $732a: $18 $bf

    ld a, [c]                                     ; $732c: $f2
    sbc e                                         ; $732d: $9b
    or h                                          ; $732e: $b4
    dec bc                                        ; $732f: $0b
    dec sp                                        ; $7330: $3b
    rst $18                                       ; $7331: $df
    ld e, h                                       ; $7332: $5c
    rst $38                                       ; $7333: $ff
    ld b, c                                       ; $7334: $41
    xor b                                         ; $7335: $a8
    ld sp, $7d4e                                  ; $7336: $31 $4e $7d
    ld e, [hl]                                    ; $7339: $5e
    ld a, [hl]                                    ; $733a: $7e
    ld h, c                                       ; $733b: $61
    add [hl]                                      ; $733c: $86
    ld c, a                                       ; $733d: $4f
    adc [hl]                                      ; $733e: $8e
    jr nc, jr_026_737e                            ; $733f: $30 $3d

    jp z, $2585                                   ; $7341: $ca $85 $25

    db $fd                                        ; $7344: $fd
    ld l, $cc                                     ; $7345: $2e $cc
    ld a, [$4cd2]                                 ; $7347: $fa $d2 $4c
    ld d, h                                       ; $734a: $54
    ld e, $21                                     ; $734b: $1e $21
    call nc, Call_026_4aed                        ; $734d: $d4 $ed $4a
    push af                                       ; $7350: $f5
    dec hl                                        ; $7351: $2b
    cpl                                           ; $7352: $2f
    ldh a, [$d1]                                  ; $7353: $f0 $d1
    xor $b2                                       ; $7355: $ee $b2
    push af                                       ; $7357: $f5
    ld d, h                                       ; $7358: $54
    ld a, [c]                                     ; $7359: $f2
    ld a, c                                       ; $735a: $79
    adc $45                                       ; $735b: $ce $45
    reti                                          ; $735d: $d9


    ld [hl], a                                    ; $735e: $77
    push bc                                       ; $735f: $c5
    dec a                                         ; $7360: $3d
    adc e                                         ; $7361: $8b
    ld a, [$ae58]                                 ; $7362: $fa $58 $ae
    ld c, c                                       ; $7365: $49
    inc sp                                        ; $7366: $33
    ld e, [hl]                                    ; $7367: $5e
    ret                                           ; $7368: $c9


    ld h, a                                       ; $7369: $67
    and a                                         ; $736a: $a7
    db $ec                                        ; $736b: $ec
    ld a, d                                       ; $736c: $7a
    ld d, a                                       ; $736d: $57
    inc c                                         ; $736e: $0c
    ld b, a                                       ; $736f: $47
    xor l                                         ; $7370: $ad

jr_026_7371:
    db $fd                                        ; $7371: $fd
    inc e                                         ; $7372: $1c
    ld d, e                                       ; $7373: $53
    ld h, l                                       ; $7374: $65
    ldh [rOBP1], a                                ; $7375: $e0 $49
    adc a                                         ; $7377: $8f
    ld [hl], $0b                                  ; $7378: $36 $0b
    ld sp, hl                                     ; $737a: $f9
    res 0, e                                      ; $737b: $cb $83
    ccf                                           ; $737d: $3f

jr_026_737e:
    db $eb                                        ; $737e: $eb
    adc d                                         ; $737f: $8a
    ld bc, $b196                                  ; $7380: $01 $96 $b1
    and h                                         ; $7383: $a4
    sbc d                                         ; $7384: $9a
    rst $28                                       ; $7385: $ef
    xor l                                         ; $7386: $ad
    ld c, a                                       ; $7387: $4f
    xor e                                         ; $7388: $ab
    ld d, e                                       ; $7389: $53
    ld a, [c]                                     ; $738a: $f2
    db $e3                                        ; $738b: $e3
    adc e                                         ; $738c: $8b
    ld a, [$a8bc]                                 ; $738d: $fa $bc $a8
    rst $28                                       ; $7390: $ef
    ld [bc], a                                    ; $7391: $02
    jp nz, Jump_026_61ad                          ; $7392: $c2 $ad $61

    ret z                                         ; $7395: $c8

    ld e, l                                       ; $7396: $5d
    ld l, b                                       ; $7397: $68
    ret nz                                        ; $7398: $c0

    rst $10                                       ; $7399: $d7
    cp $e9                                        ; $739a: $fe $e9
    db $ec                                        ; $739c: $ec
    dec hl                                        ; $739d: $2b
    ldh [$f7], a                                  ; $739e: $e0 $f7
    pop de                                        ; $73a0: $d1
    sub $92                                       ; $73a1: $d6 $92
    ld [hl+], a                                   ; $73a3: $22
    call $d73c                                    ; $73a4: $cd $3c $d7
    ld c, [hl]                                    ; $73a7: $4e
    cpl                                           ; $73a8: $2f
    cpl                                           ; $73a9: $2f
    ld l, e                                       ; $73aa: $6b

jr_026_73ab:
    jp nc, $0c20                                  ; $73ab: $d2 $20 $0c

    dec a                                         ; $73ae: $3d
    ccf                                           ; $73af: $3f
    add $b1                                       ; $73b0: $c6 $b1
    and h                                         ; $73b2: $a4
    rst $20                                       ; $73b3: $e7
    xor [hl]                                      ; $73b4: $ae
    ld d, l                                       ; $73b5: $55
    ld b, l                                       ; $73b6: $45
    ld a, [de]                                    ; $73b7: $1a
    or h                                          ; $73b8: $b4
    push af                                       ; $73b9: $f5
    jr z, jr_026_73eb                             ; $73ba: $28 $2f

    ld e, a                                       ; $73bc: $5f
    add e                                         ; $73bd: $83
    dec h                                         ; $73be: $25
    db $fd                                        ; $73bf: $fd
    and d                                         ; $73c0: $a2
    add d                                         ; $73c1: $82
    rst $08                                       ; $73c2: $cf
    res 4, l                                      ; $73c3: $cb $a5
    nop                                           ; $73c5: $00
    ld hl, $aad4                                  ; $73c6: $21 $d4 $aa
    sbc l                                         ; $73c9: $9d
    ld c, [hl]                                    ; $73ca: $4e

Jump_026_73cb:
    or e                                          ; $73cb: $b3
    and e                                         ; $73cc: $a3
    xor a                                         ; $73cd: $af
    ld a, b                                       ; $73ce: $78
    ld h, c                                       ; $73cf: $61
    jp c, $c174                                   ; $73d0: $da $74 $c1

    dec l                                         ; $73d3: $2d
    push hl                                       ; $73d4: $e5
    ld l, e                                       ; $73d5: $6b
    or b                                          ; $73d6: $b0
    or $ab                                        ; $73d7: $f6 $ab
    pop af                                        ; $73d9: $f1
    ld l, e                                       ; $73da: $6b
    sbc e                                         ; $73db: $9b
    adc b                                         ; $73dc: $88
    or [hl]                                       ; $73dd: $b6
    sbc [hl]                                      ; $73de: $9e
    ld b, l                                       ; $73df: $45
    cp l                                          ; $73e0: $bd
    ld b, $2b                                     ; $73e1: $06 $2b
    cpl                                           ; $73e3: $2f
    inc hl                                        ; $73e4: $23
    dec c                                         ; $73e5: $0d
    cp a                                          ; $73e6: $bf
    dec hl                                        ; $73e7: $2b
    ld b, $2d                                     ; $73e8: $06 $2d
    push hl                                       ; $73ea: $e5

jr_026_73eb:
    rst $10                                       ; $73eb: $d7
    cp $b5                                        ; $73ec: $fe $b5
    ld a, $e3                                     ; $73ee: $3e $e3
    ld l, a                                       ; $73f0: $6f
    add b                                         ; $73f1: $80
    or [hl]                                       ; $73f2: $b6
    and e                                         ; $73f3: $a3
    ld h, d                                       ; $73f4: $62
    sbc h                                         ; $73f5: $9c
    sub a                                         ; $73f6: $97
    ld e, a                                       ; $73f7: $5f
    db $fd                                        ; $73f8: $fd
    ld [hl-], a                                   ; $73f9: $32
    jr jr_026_73ab                                ; $73fa: $18 $af

    db $e4                                        ; $73fc: $e4
    ld c, e                                       ; $73fd: $4b
    ld a, $02                                     ; $73fe: $3e $02
    ld e, d                                       ; $7400: $5a
    adc a                                         ; $7401: $8f
    ld a, [c]                                     ; $7402: $f2
    call Call_000_152a                            ; $7403: $cd $2a $15
    ld l, c                                       ; $7406: $69
    sub $bc                                       ; $7407: $d6 $bc
    inc l                                         ; $7409: $2c
    call nc, $a71b                                ; $740a: $d4 $1b $a7
    ld d, h                                       ; $740d: $54
    db $db                                        ; $740e: $db
    ld e, e                                       ; $740f: $5b
    ld e, a                                       ; $7410: $5f
    ld a, [de]                                    ; $7411: $1a
    cpl                                           ; $7412: $2f
    sub a                                         ; $7413: $97
    ld l, d                                       ; $7414: $6a
    ld [$3d03], sp                                ; $7415: $08 $03 $3d
    adc d                                         ; $7418: $8a
    ld d, d                                       ; $7419: $52
    ld a, l                                       ; $741a: $7d
    ld c, l                                       ; $741b: $4d
    sbc d                                         ; $741c: $9a
    ld l, $18                                     ; $741d: $2e $18
    dec a                                         ; $741f: $3d
    ccf                                           ; $7420: $3f
    ld b, [hl]                                    ; $7421: $46
    xor $fc                                       ; $7422: $ee $fc
    add [hl]                                      ; $7424: $86
    ccf                                           ; $7425: $3f
    dec sp                                        ; $7426: $3b
    ld h, l                                       ; $7427: $65
    ld b, $e6                                     ; $7428: $06 $e6
    cp c                                          ; $742a: $b9
    or $2f                                        ; $742b: $f6 $2f
    ld l, c                                       ; $742d: $69
    ld l, c                                       ; $742e: $69
    ld h, h                                       ; $742f: $64
    cp h                                          ; $7430: $bc
    ld [hl], $08                                  ; $7431: $36 $08
    inc bc                                        ; $7433: $03
    dec a                                         ; $7434: $3d
    adc d                                         ; $7435: $8a
    sub $60                                       ; $7436: $d6 $60
    ld a, [hl-]                                   ; $7438: $3a
    ei                                            ; $7439: $fb
    jp nc, Jump_026_5c0f                          ; $743a: $d2 $0f $5c

    push bc                                       ; $743d: $c5
    rst $10                                       ; $743e: $d7
    ld a, h                                       ; $743f: $7c
    call Call_000_0bfa                            ; $7440: $cd $fa $0b
    sub l                                         ; $7443: $95
    dec a                                         ; $7444: $3d
    ld [hl], a                                    ; $7445: $77
    xor l                                         ; $7446: $ad
    ld a, [hl+]                                   ; $7447: $2a
    jp nc, $ada0                                  ; $7448: $d2 $a0 $ad

    ld e, e                                       ; $744b: $5b
    ld sp, hl                                     ; $744c: $f9
    xor d                                         ; $744d: $aa
    ld a, $2f                                     ; $744e: $3e $2f
    cp a                                          ; $7450: $bf
    ld a, b                                       ; $7451: $78
    pop bc                                        ; $7452: $c1
    ld h, a                                       ; $7453: $67
    ld e, c                                       ; $7454: $59
    and b                                         ; $7455: $a0
    sub $5f                                       ; $7456: $d6 $5f
    di                                            ; $7458: $f3
    ld h, l                                       ; $7459: $65
    ld c, d                                       ; $745a: $4a
    ld l, h                                       ; $745b: $6c
    ld b, c                                       ; $745c: $41
    xor [hl]                                      ; $745d: $ae
    ld l, l                                       ; $745e: $6d
    sbc d                                         ; $745f: $9a
    ld a, c                                       ; $7460: $79
    ld sp, hl                                     ; $7461: $f9
    ret                                           ; $7462: $c9


    add e                                         ; $7463: $83
    cpl                                           ; $7464: $2f
    db $ed                                        ; $7465: $ed
    dec [hl]                                      ; $7466: $35
    cpl                                           ; $7467: $2f
    dec bc                                        ; $7468: $0b
    ld e, [hl]                                    ; $7469: $5e
    dec b                                         ; $746a: $05
    ld h, c                                       ; $746b: $61
    xor l                                         ; $746c: $ad
    rra                                           ; $746d: $1f
    ld h, e                                       ; $746e: $63
    ld [hl], d                                    ; $746f: $72
    ld [hl], a                                    ; $7470: $77
    ld h, c                                       ; $7471: $61
    ld e, [hl]                                    ; $7472: $5e
    ld l, $cc                                     ; $7473: $2e $cc
    res 5, a                                      ; $7475: $cb $af
    dec [hl]                                      ; $7477: $35
    inc bc                                        ; $7478: $03
    ld e, [hl]                                    ; $7479: $5e
    push bc                                       ; $747a: $c5
    ld h, c                                       ; $747b: $61
    rst $00                                       ; $747c: $c7
    ld [hl], d                                    ; $747d: $72
    add sp, -$38                                  ; $747e: $e8 $c8
    inc bc                                        ; $7480: $03
    ld [hl], h                                    ; $7481: $74
    push bc                                       ; $7482: $c5
    cp l                                          ; $7483: $bd
    ld e, $b8                                     ; $7484: $1e $b8
    cp e                                          ; $7486: $bb
    cp [hl]                                       ; $7487: $be
    dec bc                                        ; $7488: $0b
    ld l, b                                       ; $7489: $68
    dec a                                         ; $748a: $3d
    adc e                                         ; $748b: $8b
    ld a, d                                       ; $748c: $7a
    dec c                                         ; $748d: $0d
    and $45                                       ; $748e: $e6 $45
    ld a, l                                       ; $7490: $7d
    ld c, c                                       ; $7491: $49
    ld l, e                                       ; $7492: $6b
    jp nc, $ecc8                                  ; $7493: $d2 $c8 $ec

    sub h                                         ; $7496: $94
    cpl                                           ; $7497: $2f
    xor a                                         ; $7498: $af
    xor h                                         ; $7499: $ac
    db $eb                                        ; $749a: $eb
    adc [hl]                                      ; $749b: $8e
    sub d                                         ; $749c: $92
    ld e, a                                       ; $749d: $5f
    sub e                                         ; $749e: $93
    ld b, $21                                     ; $749f: $06 $21
    ld d, h                                       ; $74a1: $54
    ld l, [hl]                                    ; $74a2: $6e
    ret c                                         ; $74a3: $d8

    dec d                                         ; $74a4: $15
    inc bc                                        ; $74a5: $03
    rst $00                                       ; $74a6: $c7
    ld a, a                                       ; $74a7: $7f
    ld c, d                                       ; $74a8: $4a
    ldh a, [rHDMA3]                               ; $74a9: $f0 $53

Jump_026_74ab:
    ld h, d                                       ; $74ab: $62
    dec sp                                        ; $74ac: $3b
    ld c, [hl]                                    ; $74ad: $4e
    sbc [hl]                                      ; $74ae: $9e
    ld [hl], c                                    ; $74af: $71
    ld d, a                                       ; $74b0: $57
    call nc, Call_026_6bfa                        ; $74b1: $d4 $fa $6b
    jp nc, $fe0c                                  ; $74b4: $d2 $0c $fe

    ld l, c                                       ; $74b7: $69
    db $dd                                        ; $74b8: $dd
    ld e, a                                       ; $74b9: $5f
    xor d                                         ; $74ba: $aa
    and [hl]                                      ; $74bb: $a6
    dec hl                                        ; $74bc: $2b
    ld b, $bd                                     ; $74bd: $06 $bd
    ld e, $b8                                     ; $74bf: $1e $b8
    dec hl                                        ; $74c1: $2b
    ld e, a                                       ; $74c2: $5f
    add e                                         ; $74c3: $83
    sbc c                                         ; $74c4: $99
    adc $6c                                       ; $74c5: $ce $6c
    ld c, c                                       ; $74c7: $49
    ld a, [c]                                     ; $74c8: $f2
    pop af                                        ; $74c9: $f1
    rst $10                                       ; $74ca: $d7
    res 7, h                                      ; $74cb: $cb $bc
    db $fc                                        ; $74cd: $fc
    jp nc, $cbcb                                  ; $74ce: $d2 $cb $cb

    ld a, [hl-]                                   ; $74d1: $3a
    ld a, [c]                                     ; $74d2: $f2
    or $57                                        ; $74d3: $f6 $57
    ld c, $08                                     ; $74d5: $0e $08
    inc bc                                        ; $74d7: $03
    xor l                                         ; $74d8: $ad
    rst $18                                       ; $74d9: $df
    ld [hl], b                                    ; $74da: $70
    ld [hl], a                                    ; $74db: $77
    ld a, d                                       ; $74dc: $7a
    ld [de], a                                    ; $74dd: $12
    ld [hl], a                                    ; $74de: $77
    inc l                                         ; $74df: $2c
    rst $10                                       ; $74e0: $d7
    and h                                         ; $74e1: $a4
    ld e, c                                       ; $74e2: $59
    sbc l                                         ; $74e3: $9d
    sub d                                         ; $74e4: $92
    rra                                           ; $74e5: $1f
    ld e, a                                       ; $74e6: $5f
    ld [hl], d                                    ; $74e7: $72
    ld e, [hl]                                    ; $74e8: $5e
    ld l, $ec                                     ; $74e9: $2e $ec
    ld b, d                                       ; $74eb: $42
    ld d, a                                       ; $74ec: $57

Call_026_74ed:
    inc c                                         ; $74ed: $0c
    rst $00                                       ; $74ee: $c7
    ld a, a                                       ; $74ef: $7f
    ld c, d                                       ; $74f0: $4a
    ldh a, [$dc]                                  ; $74f1: $f0 $dc
    ld e, l                                       ; $74f3: $5d
    rst $18                                       ; $74f4: $df
    dec b                                         ; $74f5: $05
    xor d                                         ; $74f6: $aa
    ld sp, hl                                     ; $74f7: $f9
    ld a, [hl-]                                   ; $74f8: $3a
    add hl, de                                    ; $74f9: $19
    xor a                                         ; $74fa: $af
    rst $38                                       ; $74fb: $ff
    inc a                                         ; $74fc: $3c
    rlca                                          ; $74fd: $07
    xor [hl]                                      ; $74fe: $ae
    ld a, [c]                                     ; $74ff: $f2
    ld e, l                                       ; $7500: $5d
    jr nc, jr_026_7540                            ; $7501: $30 $3d

    ld c, e                                       ; $7503: $4b
    xor $c2                                       ; $7504: $ee $c2
    jp z, $c577                                   ; $7506: $ca $77 $c5

    ld b, a                                       ; $7509: $47
    cp a                                          ; $750a: $bf
    ei                                            ; $750b: $fb
    res 0, d                                      ; $750c: $cb $82
    rst $30                                       ; $750e: $f7
    dec h                                         ; $750f: $25
    ld hl, $bc84                                  ; $7510: $21 $84 $bc
    db $fc                                        ; $7513: $fc
    ld e, h                                       ; $7514: $5c
    db $f4                                        ; $7515: $f4
    ld d, d                                       ; $7516: $52
    dec c                                         ; $7517: $0d
    and [hl]                                      ; $7518: $a6
    db $ed                                        ; $7519: $ed
    inc [hl]                                      ; $751a: $34
    ld a, $cf                                     ; $751b: $3e $cf
    push bc                                       ; $751d: $c5
    ld d, a                                       ; $751e: $57
    db $eb                                        ; $751f: $eb
    inc hl                                        ; $7520: $23
    inc c                                         ; $7521: $0c
    rst $00                                       ; $7522: $c7
    inc h                                         ; $7523: $24
    push de                                       ; $7524: $d5
    ld a, h                                       ; $7525: $7c
    cp h                                          ; $7526: $bc
    ld [de], a                                    ; $7527: $12
    ld a, e                                       ; $7528: $7b
    sbc c                                         ; $7529: $99
    ld h, a                                       ; $752a: $67
    adc $56                                       ; $752b: $ce $56
    ld b, c                                       ; $752d: $41
    ld [$f979], sp                                ; $752e: $08 $79 $f9
    cp c                                          ; $7531: $b9
    add sp, -$5b                                  ; $7532: $e8 $a5
    pop af                                        ; $7534: $f1
    scf                                           ; $7535: $37
    add $b5                                       ; $7536: $c6 $b5
    ld a, a                                       ; $7538: $7f
    pop af                                        ; $7539: $f1
    push de                                       ; $753a: $d5
    ld a, d                                       ; $753b: $7a
    add hl, hl                                    ; $753c: $29
    jr jr_026_75a3                                ; $753d: $18 $64

    ld [de], a                                    ; $753f: $12

jr_026_7540:
    jp nz, $c547                                  ; $7540: $c2 $47 $c5

    jr c, jr_026_75b2                             ; $7543: $38 $6d

    and a                                         ; $7545: $a7
    ld a, [bc]                                    ; $7546: $0a
    db $eb                                        ; $7547: $eb
    add d                                         ; $7548: $82
    ld bc, $5dc7                                  ; $7549: $01 $c7 $5d
    ld a, [$ccc5]                                 ; $754c: $fa $c5 $cc
    ld a, [$60a5]                                 ; $754f: $fa $a5 $60
    add c                                         ; $7552: $81
    and h                                         ; $7553: $a4
    jp hl                                         ; $7554: $e9


    inc l                                         ; $7555: $2c
    db $ed                                        ; $7556: $ed
    add c                                         ; $7557: $81
    dec de                                        ; $7558: $1b
    or $e4                                        ; $7559: $f6 $e4
    jr nc, jr_026_758c                            ; $755b: $30 $2f

    rla                                           ; $755d: $17
    and $37                                       ; $755e: $e6 $37
    ld a, h                                       ; $7560: $7c
    add h                                         ; $7561: $84
    ld bc, $af16                                  ; $7562: $01 $16 $af
    push bc                                       ; $7565: $c5
    cp b                                          ; $7566: $b8
    or $cf                                        ; $7567: $f6 $cf
    ld l, a                                       ; $7569: $6f
    ld hl, sp-$0d                                 ; $756a: $f8 $f3
    ld e, h                                       ; $756c: $5c
    ldh a, [$3e]                                  ; $756d: $f0 $3e
    ld b, e                                       ; $756f: $43
    db $ec                                        ; $7570: $ec
    add l                                         ; $7571: $85
    rst $10                                       ; $7572: $d7
    ld h, [hl]                                    ; $7573: $66
    sub b                                         ; $7574: $90
    ld c, c                                       ; $7575: $49
    ld [$9603], sp                                ; $7576: $08 $03 $96
    ld e, d                                       ; $7579: $5a
    cp b                                          ; $757a: $b8
    ld a, [c]                                     ; $757b: $f2
    ld a, [c]                                     ; $757c: $f2
    di                                            ; $757d: $f3
    inc e                                         ; $757e: $1c
    db $fc                                        ; $757f: $fc
    cpl                                           ; $7580: $2f
    ld l, h                                       ; $7581: $6c
    ld d, $88                                     ; $7582: $16 $88
    ld [de], a                                    ; $7584: $12

Jump_026_7585:
    add e                                         ; $7585: $83
    and h                                         ; $7586: $a4
    and l                                         ; $7587: $a5

jr_026_7588:
    ld l, l                                       ; $7588: $6d
    rst $08                                       ; $7589: $cf
    ld [hl], e                                    ; $758a: $73
    xor l                                         ; $758b: $ad

jr_026_758c:
    add hl, de                                    ; $758c: $19
    ldh a, [$2a]                                  ; $758d: $f0 $2a
    ld c, $08                                     ; $758f: $0e $08
    inc bc                                        ; $7591: $03
    ld d, $1a                                     ; $7592: $16 $1a
    ld [hl], h                                    ; $7594: $74
    xor [hl]                                      ; $7595: $ae
    rst $38                                       ; $7596: $ff
    jp nc, $a51e                                  ; $7597: $d2 $1e $a5

    rst $08                                       ; $759a: $cf
    db $10                                        ; $759b: $10
    ld a, e                                       ; $759c: $7b
    ld bc, $6257                                  ; $759d: $01 $57 $62
    sub a                                         ; $75a0: $97
    add d                                         ; $75a1: $82
    add l                                         ; $75a2: $85

jr_026_75a3:
    ld a, [de]                                    ; $75a3: $1a
    call c, $bb8a                                 ; $75a4: $dc $8a $bb
    ret nc                                        ; $75a7: $d0

    inc b                                         ; $75a8: $04
    ld b, c                                       ; $75a9: $41
    ld a, h                                       ; $75aa: $7c
    ld e, b                                       ; $75ab: $58
    push af                                       ; $75ac: $f5
    ld [c], a                                     ; $75ad: $e2
    ld a, d                                       ; $75ae: $7a
    add hl, hl                                    ; $75af: $29
    ld [hl], $6b                                  ; $75b0: $36 $6b

jr_026_75b2:
    sbc e                                         ; $75b2: $9b
    dec de                                        ; $75b3: $1b
    reti                                          ; $75b4: $d9


    inc a                                         ; $75b5: $3c
    dec sp                                        ; $75b6: $3b
    ld a, l                                       ; $75b7: $7d
    ld d, e                                       ; $75b8: $53
    ld a, d                                       ; $75b9: $7a
    ld d, l                                       ; $75ba: $55
    and $a2                                       ; $75bb: $e6 $a2
    sub a                                         ; $75bd: $97
    nop                                           ; $75be: $00
    ld h, c                                       ; $75bf: $61
    sub [hl]                                      ; $75c0: $96
    ld d, l                                       ; $75c1: $55
    ld c, d                                       ; $75c2: $4a
    dec [hl]                                      ; $75c3: $35
    rra                                           ; $75c4: $1f
    xor a                                         ; $75c5: $af

jr_026_75c6:
    rst $10                                       ; $75c6: $d7
    rst $20                                       ; $75c7: $e7
    cp c                                          ; $75c8: $b9
    ldh [$7d], a                                  ; $75c9: $e0 $7d
    dec h                                         ; $75cb: $25
    jp Jump_000_129f                              ; $75cc: $c3 $9f $12


    ld e, e                                       ; $75cf: $5b
    ld d, l                                       ; $75d0: $55
    sub h                                         ; $75d1: $94
    add d                                         ; $75d2: $82
    ld e, a                                       ; $75d3: $5f
    ld a, [de]                                    ; $75d4: $1a
    ld e, a                                       ; $75d5: $5f
    jp c, $f2f3                                   ; $75d6: $da $f3 $f2

    ldh a, [$3b]                                  ; $75d9: $f0 $3b
    reti                                          ; $75db: $d9


    inc b                                         ; $75dc: $04
    ld b, c                                       ; $75dd: $41
    db $fc                                        ; $75de: $fc
    ld d, l                                       ; $75df: $55
    ld sp, $3cbd                                  ; $75e0: $31 $bd $3c
    and b                                         ; $75e3: $a0
    push af                                       ; $75e4: $f5
    jr z, jr_026_75c6                             ; $75e5: $28 $df

    call nc, Call_000_07e4                        ; $75e7: $d4 $e4 $07
    cp c                                          ; $75ea: $b9
    db $eb                                        ; $75eb: $eb
    ld d, l                                       ; $75ec: $55
    ld l, c                                       ; $75ed: $69
    cp d                                          ; $75ee: $ba
    ld h, b                                       ; $75ef: $60
    sub [hl]                                      ; $75f0: $96
    dec d                                         ; $75f1: $15
    push af                                       ; $75f2: $f5
    ld e, a                                       ; $75f3: $5f
    ld d, c                                       ; $75f4: $51
    db $eb                                        ; $75f5: $eb
    and l                                         ; $75f6: $a5
    ld h, b                                       ; $75f7: $60
    sbc [hl]                                      ; $75f8: $9e
    db $e3                                        ; $75f9: $e3
    ld e, a                                       ; $75fa: $5f
    ld h, l                                       ; $75fb: $65
    daa                                           ; $75fc: $27
    sbc e                                         ; $75fd: $9b
    jr nz, jr_026_7588                            ; $75fe: $20 $88

    cp a                                          ; $7600: $bf
    ld a, [hl+]                                   ; $7601: $2a
    and [hl]                                      ; $7602: $a6
    sub a                                         ; $7603: $97
    rlca                                          ; $7604: $07
    add h                                         ; $7605: $84
    ld d, b                                       ; $7606: $50
    db $db                                        ; $7607: $db
    ld hl, sp-$44                                 ; $7608: $f8 $bc
    db $fc                                        ; $760a: $fc
    and b                                         ; $760b: $a0
    db $e4                                        ; $760c: $e4
    jp Jump_026_7e54                              ; $760d: $c3 $54 $7e


jr_026_7610:
    ld c, h                                       ; $7610: $4c
    dec h                                         ; $7611: $25
    ld e, [hl]                                    ; $7612: $5e
    ld a, [bc]                                    ; $7613: $0a
    cp d                                          ; $7614: $ba
    ld h, b                                       ; $7615: $60
    sub [hl]                                      ; $7616: $96
    sub l                                         ; $7617: $95
    db $ec                                        ; $7618: $ec
    db $fc                                        ; $7619: $fc
    cp h                                          ; $761a: $bc
    inc a                                         ; $761b: $3c
    db $fc                                        ; $761c: $fc
    ld c, [hl]                                    ; $761d: $4e
    ld [hl], $41                                  ; $761e: $36 $41
    db $10                                        ; $7620: $10
    ld a, a                                       ; $7621: $7f
    ld d, l                                       ; $7622: $55
    ld c, h                                       ; $7623: $4c
    cpl                                           ; $7624: $2f
    rrca                                          ; $7625: $0f
    ld h, e                                       ; $7626: $63
    ld c, c                                       ; $7627: $49
    dec [hl]                                      ; $7628: $35
    ld e, a                                       ; $7629: $5f
    xor b                                         ; $762a: $a8
    push af                                       ; $762b: $f5
    ld e, a                                       ; $762c: $5f
    ret c                                         ; $762d: $d8

    xor h                                         ; $762e: $ac
    ld l, l                                       ; $762f: $6d
    jp nz, $ccc5                                  ; $7630: $c2 $c5 $cc

    ld a, [$37da]                                 ; $7633: $fa $da $37
    ld b, b                                       ; $7636: $40
    jr @+$3f                                      ; $7637: $18 $3d

    jp z, Jump_026_7585                           ; $7639: $ca $85 $75

jr_026_763c:
    and d                                         ; $763c: $a2
    cp d                                          ; $763d: $ba
    sbc l                                         ; $763e: $9d
    ld [de], a                                    ; $763f: $12
    adc [hl]                                      ; $7640: $8e
    cp $19                                        ; $7641: $fe $19
    inc l                                         ; $7643: $2c
    ld c, h                                       ; $7644: $4c
    ld sp, hl                                     ; $7645: $f9
    or l                                          ; $7646: $b5
    sbc a                                         ; $7647: $9f
    xor d                                         ; $7648: $aa
    ld a, [c]                                     ; $7649: $f2
    add b                                         ; $764a: $80
    jr nc, jr_026_767a                            ; $764b: $30 $2d

    dec h                                         ; $764d: $25
    ld c, l                                       ; $764e: $4d
    ld h, h                                       ; $764f: $64
    or e                                          ; $7650: $b3
    adc h                                         ; $7651: $8c
    ld d, a                                       ; $7652: $57
    db $eb                                        ; $7653: $eb
    xor a                                         ; $7654: $af
    xor l                                         ; $7655: $ad
    ld d, l                                       ; $7656: $55
    ld a, l                                       ; $7657: $7d
    ld [$f2f3], a                                 ; $7658: $ea $f3 $f2
    dec sp                                        ; $765b: $3b
    reti                                          ; $765c: $d9


    inc b                                         ; $765d: $04
    ld b, c                                       ; $765e: $41
    ld a, h                                       ; $765f: $7c
    add sp, -$76                                  ; $7660: $e8 $8a
    ld bc, $f196                                  ; $7662: $01 $96 $f1
    ld c, d                                       ; $7665: $4a
    ld a, $cf                                     ; $7666: $3e $cf
    or l                                          ; $7668: $b5
    ld a, a                                       ; $7669: $7f
    ld e, [hl]                                    ; $766a: $5e
    ld a, [hl]                                    ; $766b: $7e
    or $15                                        ; $766c: $f6 $15
    ldh a, [$79]                                  ; $766e: $f0 $79
    ld c, $fe                                     ; $7670: $0e $fe
    rst $10                                       ; $7672: $d7
    sbc d                                         ; $7673: $9a
    ld bc, $e2af                                  ; $7674: $01 $af $e2
    add b                                         ; $7677: $80
    jr nc, jr_026_7610                            ; $7678: $30 $96

jr_026_767a:
    sbc d                                         ; $767a: $9a
    push af                                       ; $767b: $f5
    ld d, a                                       ; $767c: $57
    ld h, l                                       ; $767d: $65
    ld hl, sp-$2d                                 ; $767e: $f8 $d3
    push bc                                       ; $7680: $c5
    and h                                         ; $7681: $a4
    ld h, b                                       ; $7682: $60
    cp h                                          ; $7683: $bc
    ld [hl], $f3                                  ; $7684: $36 $f3
    ld e, h                                       ; $7686: $5c
    sub b                                         ; $7687: $90
    di                                            ; $7688: $f3
    ld e, h                                       ; $7689: $5c
    ld l, e                                       ; $768a: $6b
    ld b, $bc                                     ; $768b: $06 $bc
    adc d                                         ; $768d: $8a
    inc bc                                        ; $768e: $03

jr_026_768f:
    jp nz, $9596                                  ; $768f: $c2 $96 $95

    db $ec                                        ; $7692: $ec
    db $fc                                        ; $7693: $fc
    inc l                                         ; $7694: $2c
    ld h, e                                       ; $7695: $63

jr_026_7696:
    ld c, c                                       ; $7696: $49
    dec [hl]                                      ; $7697: $35
    ld e, a                                       ; $7698: $5f
    ldh a, [$be]                                  ; $7699: $f0 $be
    jr nc, @-$01                                  ; $769b: $30 $fd

    ld h, $0d                                     ; $769d: $26 $0d
    ld l, [hl]                                    ; $769f: $6e
    ld d, l                                       ; $76a0: $55
    and a                                         ; $76a1: $a7
    rlca                                          ; $76a2: $07
    ld b, b                                       ; $76a3: $40
    jr jr_026_763c                                ; $76a4: $18 $96

    pop af                                        ; $76a6: $f1
    rla                                           ; $76a7: $17
    jp z, $f4c2                                   ; $76a8: $ca $c2 $f4

    ld a, [c]                                     ; $76ab: $f2
    ld [hl-], a                                   ; $76ac: $32
    ld a, $4d                                     ; $76ad: $3e $4d
    ld h, h                                       ; $76af: $64
    adc e                                         ; $76b0: $8b
    rst $28                                       ; $76b1: $ef
    dec bc                                        ; $76b2: $0b
    ld a, a                                       ; $76b3: $7f
    ld c, h                                       ; $76b4: $4c
    ld e, $60                                     ; $76b5: $1e $60
    ld h, c                                       ; $76b7: $61
    inc bc                                        ; $76b8: $03
    rra                                           ; $76b9: $1f
    ld l, l                                       ; $76ba: $6d
    add h                                         ; $76bb: $84
    ld bc, $c947                                  ; $76bc: $01 $47 $c9
    rst $08                                       ; $76bf: $cf
    swap a                                        ; $76c0: $cb $37
    dec bc                                        ; $76c2: $0b
    ld a, [c]                                     ; $76c3: $f2
    ld d, d                                       ; $76c4: $52
    jr nc, jr_026_7696                            ; $76c5: $30 $cf

    ld b, c                                       ; $76c7: $41
    ld c, c                                       ; $76c8: $49
    ld a, [hl]                                    ; $76c9: $7e
    ld a, [hl-]                                   ; $76ca: $3a
    ei                                            ; $76cb: $fb
    add $b0                                       ; $76cc: $c6 $b0
    dec hl                                        ; $76ce: $2b
    ld b, $96                                     ; $76cf: $06 $96
    sub l                                         ; $76d1: $95
    db $ec                                        ; $76d2: $ec
    db $fc                                        ; $76d3: $fc
    inc l                                         ; $76d4: $2c
    dec bc                                        ; $76d5: $0b
    sbc $77                                       ; $76d6: $de $77
    ret                                           ; $76d8: $c9


    ld [hl], e                                    ; $76d9: $73
    xor l                                         ; $76da: $ad
    add $b6                                       ; $76db: $c6 $b6
    db $e3                                        ; $76dd: $e3
    ld [hl], a                                    ; $76de: $77
    adc h                                         ; $76df: $8c
    ld l, l                                       ; $76e0: $6d
    and e                                         ; $76e1: $a3
    xor l                                         ; $76e2: $ad
    ld b, a                                       ; $76e3: $47
    ld d, c                                       ; $76e4: $51
    rra                                           ; $76e5: $1f
    xor a                                         ; $76e6: $af
    jr nc, jr_026_768f                            ; $76e7: $30 $a6

    xor h                                         ; $76e9: $ac
    ld b, $2b                                     ; $76ea: $06 $2b
    ld l, c                                       ; $76ec: $69
    ldh [rNR11], a                                ; $76ed: $e0 $11
    ld b, $2d                                     ; $76ef: $06 $2d
    add hl, hl                                    ; $76f1: $29
    jp nc, $d770                                  ; $76f2: $d2 $70 $d7

    ld [hl], $3e                                  ; $76f5: $36 $3e
    ld c, e                                       ; $76f7: $4b
    dec l                                         ; $76f8: $2d
    ld e, h                                       ; $76f9: $5c
    db $db                                        ; $76fa: $db
    ld b, b                                       ; $76fb: $40
    inc sp                                        ; $76fc: $33
    cp $7a                                        ; $76fd: $fe $7a
    ld e, c                                       ; $76ff: $59
    ret c                                         ; $7700: $d8

    inc l                                         ; $7701: $2c
    ret nc                                        ; $7702: $d0

    ldh a, [rNR11]                                ; $7703: $f0 $11
    ld b, $dd                                     ; $7705: $06 $dd
    sub h                                         ; $7707: $94
    ld l, d                                       ; $7708: $6a
    ld a, $d7                                     ; $7709: $3e $d7
    ld e, b                                       ; $770b: $58
    rst $20                                       ; $770c: $e7
    adc $52                                       ; $770d: $ce $52
    dec bc                                        ; $770f: $0b
    rla                                           ; $7710: $17
    db $e4                                        ; $7711: $e4
    and l                                         ; $7712: $a5
    ld h, b                                       ; $7713: $60
    halt                                          ; $7714: $76
    jp z, $e574                                   ; $7715: $ca $74 $e5

    ld b, $65                                     ; $7718: $06 $65
    ld d, b                                       ; $771a: $50
    and l                                         ; $771b: $a5
    inc a                                         ; $771c: $3c
    jp nz, $9a96                                  ; $771d: $c2 $96 $9a

    push af                                       ; $7720: $f5
    ld b, a                                       ; $7721: $47
    ld l, a                                       ; $7722: $6f
    ld a, l                                       ; $7723: $7d
    ld e, c                                       ; $7724: $59
    ei                                            ; $7725: $fb
    sbc a                                         ; $7726: $9f

Jump_026_7727:
    sub [hl]                                      ; $7727: $96
    inc [hl]                                      ; $7728: $34
    sbc l                                         ; $7729: $9d
    adc e                                         ; $772a: $8b
    ld e, [hl]                                    ; $772b: $5e
    ld e, d                                       ; $772c: $5a
    ei                                            ; $772d: $fb
    db $ed                                        ; $772e: $ed
    sub h                                         ; $772f: $94
    rst $28                                       ; $7730: $ef
    add d                                         ; $7731: $82
    ld bc, $3727                                  ; $7732: $01 $27 $37
    db $e3                                        ; $7735: $e3
    cpl                                           ; $7736: $2f
    or c                                          ; $7737: $b1
    db $e4                                        ; $7738: $e4
    ld [hl], a                                    ; $7739: $77
    ld h, c                                       ; $773a: $61
    ldh [$a6], a                                  ; $773b: $e0 $a6
    xor d                                         ; $773d: $aa
    inc hl                                        ; $773e: $23
    inc c                                         ; $773f: $0c
    dec a                                         ; $7740: $3d
    set 1, e                                      ; $7741: $cb $cb
    rst $10                                       ; $7743: $d7
    ld h, b                                       ; $7744: $60
    ld e, [hl]                                    ; $7745: $5e
    ld a, [hl]                                    ; $7746: $7e
    db $ec                                        ; $7747: $ec
    jp nc, Jump_026_60a5                          ; $7748: $d2 $a5 $60

    sub l                                         ; $774b: $95
    ld c, d                                       ; $774c: $4a
    ld d, a                                       ; $774d: $57
    inc c                                         ; $774e: $0c
    dec a                                         ; $774f: $3d
    set 1, e                                      ; $7750: $cb $cb
    rst $10                                       ; $7752: $d7
    ld h, b                                       ; $7753: $60
    ld e, [hl]                                    ; $7754: $5e
    ld a, [hl]                                    ; $7755: $7e
    ld c, a                                       ; $7756: $4f
    pop bc                                        ; $7757: $c1
    and l                                         ; $7758: $a5
    rst $28                                       ; $7759: $ef
    adc d                                         ; $775a: $8a
    ld bc, $af16                                  ; $775b: $01 $16 $af
    pop bc                                        ; $775e: $c1
    sub h                                         ; $775f: $94
    ld d, [hl]                                    ; $7760: $56
    sub d                                         ; $7761: $92
    jp nc, Jump_000_3cc8                          ; $7762: $d2 $c8 $3c

    rla                                           ; $7765: $17
    cp $fb                                        ; $7766: $fe $fb
    sbc d                                         ; $7768: $9a
    inc [hl]                                      ; $7769: $34
    call c, Call_000_2c9d                         ; $776a: $dc $9d $2c
    ld l, b                                       ; $776d: $68
    db $dd                                        ; $776e: $dd
    db $d3                                        ; $776f: $d3
    db $fd                                        ; $7770: $fd
    ld h, l                                       ; $7771: $65
    ld [hl], b                                    ; $7772: $70
    dec b                                         ; $7773: $05
    ld h, c                                       ; $7774: $61
    sub [hl]                                      ; $7775: $96
    ld d, l                                       ; $7776: $55
    ld c, d                                       ; $7777: $4a
    dec [hl]                                      ; $7778: $35
    rra                                           ; $7779: $1f
    xor a                                         ; $777a: $af
    rst $10                                       ; $777b: $d7
    rst $20                                       ; $777c: $e7
    cp c                                          ; $777d: $b9
    di                                            ; $777e: $f3
    ld a, [c]                                     ; $777f: $f2
    jp nc, $fcbc                                  ; $7780: $d2 $bc $fc

    ld e, d                                       ; $7783: $5a
    inc sp                                        ; $7784: $33
    ldh [rHDMA5], a                               ; $7785: $e0 $55
    inc e                                         ; $7787: $1c
    halt                                          ; $7788: $76
    sbc h                                         ; $7789: $9c
    add [hl]                                      ; $778a: $86
    ld l, c                                       ; $778b: $69
    ld h, b                                       ; $778c: $60
    dec a                                         ; $778d: $3d
    xor a                                         ; $778e: $af
    ld d, a                                       ; $778f: $57
    push hl                                       ; $7790: $e5
    ld h, c                                       ; $7791: $61
    ld c, d                                       ; $7792: $4a
    ld l, h                                       ; $7793: $6c
    dec a                                         ; $7794: $3d
    cpl                                           ; $7795: $2f
    ld b, a                                       ; $7796: $47
    dec d                                         ; $7797: $15
    ld b, $eb                                     ; $7798: $06 $eb
    and [hl]                                      ; $779a: $a6
    jp nz, Jump_000_2dd6                          ; $779b: $c2 $d6 $2d

    ld h, e                                       ; $779e: $63
    db $fc                                        ; $779f: $fc
    jp z, $6053                                   ; $77a0: $ca $53 $60

    db $dd                                        ; $77a3: $dd
    and d                                         ; $77a4: $a2
    ld l, c                                       ; $77a5: $69
    ld [hl], a                                    ; $77a6: $77
    pop bc                                        ; $77a7: $c1
    db $dd                                        ; $77a8: $dd
    adc d                                         ; $77a9: $8a
    add hl, bc                                    ; $77aa: $09
    ld [bc], a                                    ; $77ab: $02
    ld e, l                                       ; $77ac: $5d
    ld d, l                                       ; $77ad: $55
    ld c, h                                       ; $77ae: $4c
    db $10                                        ; $77af: $10
    jr z, @+$79                                   ; $77b0: $28 $77

    ld d, l                                       ; $77b2: $55
    ld sp, $a041                                  ; $77b3: $31 $41 $a0
    xor e                                         ; $77b6: $ab
    adc d                                         ; $77b7: $8a
    add hl, bc                                    ; $77b8: $09
    ld [bc], a                                    ; $77b9: $02
    push hl                                       ; $77ba: $e5
    adc [hl]                                      ; $77bb: $8e
    rst $08                                       ; $77bc: $cf
    inc e                                         ; $77bd: $1c
    sbc a                                         ; $77be: $9f
    reti                                          ; $77bf: $d9


    dec b                                         ; $77c0: $05
    inc bc                                        ; $77c1: $03
    sub [hl]                                      ; $77c2: $96
    pop af                                        ; $77c3: $f1
    ld c, d                                       ; $77c4: $4a
    ld a, $cf                                     ; $77c5: $3e $cf
    dec b                                         ; $77c7: $05
    rst $28                                       ; $77c8: $ef
    cp e                                          ; $77c9: $bb
    db $e4                                        ; $77ca: $e4
    cp c                                          ; $77cb: $b9
    ld d, a                                       ; $77cc: $57
    pop af                                        ; $77cd: $f1
    or d                                          ; $77ce: $b2
    ld d, b                                       ; $77cf: $50
    add e                                         ; $77d0: $83
    ld e, e                                       ; $77d1: $5b
    and c                                         ; $77d2: $a1
    call $98b2                                    ; $77d3: $cd $b2 $98
    sub $9f                                       ; $77d6: $d6 $9f
    rst $20                                       ; $77d8: $e7
    ret c                                         ; $77d9: $d8

    dec c                                         ; $77da: $0d
    db $10                                        ; $77db: $10
    ld b, $3d                                     ; $77dc: $06 $3d
    adc e                                         ; $77de: $8b
    ld a, [$7e54]                                 ; $77df: $fa $54 $7e
    ld c, l                                       ; $77e2: $4d
    sbc d                                         ; $77e3: $9a
    push bc                                       ; $77e4: $c5
    call z, $a5fa                                 ; $77e5: $cc $fa $a5
    ld h, b                                       ; $77e8: $60
    ld [$315d], a                                 ; $77e9: $ea $5d $31
    dec a                                         ; $77ec: $3d
    jp z, Jump_026_4aaf                           ; $77ed: $ca $af $4a

    ld h, d                                       ; $77f0: $62
    and [hl]                                      ; $77f1: $a6
    ld a, [c]                                     ; $77f2: $f2
    sub h                                         ; $77f3: $94
    ld b, c                                       ; $77f4: $41
    ld hl, sp+$31                                 ; $77f5: $f8 $31
    jp nz, $436c                                  ; $77f7: $c2 $6c $43

    call nc, $0c20                                ; $77fa: $d4 $20 $0c
    ld d, $af                                     ; $77fd: $16 $af
    pop bc                                        ; $77ff: $c1
    xor d                                         ; $7800: $aa
    rla                                           ; $7801: $17
    rst $10                                       ; $7802: $d7
    ld c, e                                       ; $7803: $4b

jr_026_7804:
    or c                                          ; $7804: $b1
    sbc c                                         ; $7805: $99
    adc [hl]                                      ; $7806: $8e
    cp a                                          ; $7807: $bf
    call nz, Call_000_319a                        ; $7808: $c4 $9a $31
    ld l, l                                       ; $780b: $6d
    db $10                                        ; $780c: $10
    ld b, $3d                                     ; $780d: $06 $3d
    jp z, $8fc3                                   ; $780f: $ca $c3 $8f

    cp a                                          ; $7812: $bf
    call nz, $8792                                ; $7813: $c4 $92 $87
    ld d, l                                       ; $7816: $55
    ld l, c                                       ; $7817: $69
    ld [hl+], a                                   ; $7818: $22
    sbc e                                         ; $7819: $9b
    add c                                         ; $781a: $81
    rra                                           ; $781b: $1f
    ld h, h                                       ; $781c: $64
    ld hl, sp-$55                                 ; $781d: $f8 $ab
    ld [c], a                                     ; $781f: $e2
    dec hl                                        ; $7820: $2b
    ld e, l                                       ; $7821: $5d
    ld a, [bc]                                    ; $7822: $0a
    db $10                                        ; $7823: $10
    ld b, $96                                     ; $7824: $06 $96
    dec a                                         ; $7826: $3d
    add a                                         ; $7827: $87
    adc $57                                       ; $7828: $ce $57
    cp $6c                                        ; $782a: $fe $6c
    cp d                                          ; $782c: $ba
    adc [hl]                                      ; $782d: $8e
    ld e, h                                       ; $782e: $5c
    xor e                                         ; $782f: $ab
    ld a, [$52af]                                 ; $7830: $fa $af $52
    sub c                                         ; $7833: $91
    xor e                                         ; $7834: $ab
    pop bc                                        ; $7835: $c1
    inc hl                                        ; $7836: $23
    inc c                                         ; $7837: $0c
    sub [hl]                                      ; $7838: $96
    ld e, d                                       ; $7839: $5a
    jr c, jr_026_7804                             ; $783a: $38 $c8

    dec a                                         ; $783c: $3d
    add a                                         ; $783d: $87
    ld [$33fa], a                                 ; $783e: $ea $fa $33
    xor $2c                                       ; $7841: $ee $2c
    xor e                                         ; $7843: $ab
    sub h                                         ; $7844: $94
    ld l, d                                       ; $7845: $6a
    ld a, $b8                                     ; $7846: $3e $b8
    ld a, $f0                                     ; $7848: $3e $f0
    dec de                                        ; $784a: $1b
    inc hl                                        ; $784b: $23
    jp nz, $c596                                  ; $784c: $c2 $96 $c5

    or h                                          ; $784f: $b4
    cp $da                                        ; $7850: $fe $da
    rrca                                          ; $7852: $0f
    ld c, $1f                                     ; $7853: $0e $1f
    db $e3                                        ; $7855: $e3
    dec bc                                        ; $7856: $0b

Call_026_7857:
    jr nz, jr_026_7865                            ; $7857: $20 $0c

    sub [hl]                                      ; $7859: $96
    ld e, d                                       ; $785a: $5a
    jr c, jr_026_78d6                             ; $785b: $38 $79

    ld h, l                                       ; $785d: $65
    sub a                                         ; $785e: $97
    add d                                         ; $785f: $82
    sbc c                                         ; $7860: $99
    adc $92                                       ; $7861: $ce $92
    ld d, $36                                     ; $7863: $16 $36

jr_026_7865:
    dec bc                                        ; $7865: $0b
    dec [hl]                                      ; $7866: $35
    cp b                                          ; $7867: $b8
    push de                                       ; $7868: $d5
    jr nz, @+$69                                  ; $7869: $20 $67

    ld e, c                                       ; $786b: $59
    and l                                         ; $786c: $a5
    or h                                          ; $786d: $b4

Jump_026_786e:
    or $4f                                        ; $786e: $f6 $4f
    sra e                                         ; $7870: $cb $2b
    dec de                                        ; $7872: $1b
    ld e, a                                       ; $7873: $5f
    sbc [hl]                                      ; $7874: $9e
    ld b, $55                                     ; $7875: $06 $55
    ret                                           ; $7877: $c9


    adc h                                         ; $7878: $8c
    inc bc                                        ; $7879: $03
    ld d, a                                       ; $787a: $57
    ld [hl], c                                    ; $787b: $71
    ld b, b                                       ; $787c: $40
    jr jr_026_78bc                                ; $787d: $18 $3d

    jp z, $0fc3                                   ; $787f: $ca $c3 $0f

    ld e, [hl]                                    ; $7882: $5e
    dec e                                         ; $7883: $1d
    and [hl]                                      ; $7884: $a6
    ld a, [c]                                     ; $7885: $f2
    xor e                                         ; $7886: $ab
    ld [hl-], a                                   ; $7887: $32
    or h                                          ; $7888: $b4
    sbc e                                         ; $7889: $9b
    ld l, $18                                     ; $788a: $2e $18
    xor l                                         ; $788c: $ad
    rst $18                                       ; $788d: $df
    ld [hl], b                                    ; $788e: $70
    ld b, a                                       ; $788f: $47
    add hl, sp                                    ; $7890: $39
    ld a, c                                       ; $7891: $79
    ld h, l                                       ; $7892: $65
    sub a                                         ; $7893: $97
    add d                                         ; $7894: $82
    and l                                         ; $7895: $a5
    push af                                       ; $7896: $f5
    ld h, l                                       ; $7897: $65
    ld h, c                                       ; $7898: $61
    inc sp                                        ; $7899: $33
    jr z, jr_026_7905                             ; $789a: $28 $69

    ld [hl+], a                                   ; $789c: $22
    ld a, e                                       ; $789d: $7b
    jp hl                                         ; $789e: $e9


    add d                                         ; $789f: $82
    ld bc, $cadd                                  ; $78a0: $01 $dd $ca
    ld d, a                                       ; $78a3: $57
    push af                                       ; $78a4: $f5
    and l                                         ; $78a5: $a5
    pop af                                        ; $78a6: $f1
    ld a, c                                       ; $78a7: $79
    ld sp, hl                                     ; $78a8: $f9
    ld bc, $efff                                  ; $78a9: $01 $ff $ef
    ld [hl], e                                    ; $78ac: $73
    ret                                           ; $78ad: $c9


    jr @-$3f                                      ; $78ae: $18 $bf

    add hl, de                                    ; $78b0: $19
    ld e, a                                       ; $78b1: $5f
    sbc [hl]                                      ; $78b2: $9e
    halt                                          ; $78b3: $76
    ld a, l                                       ; $78b4: $7d
    ld d, l                                       ; $78b5: $55
    add [hl]                                      ; $78b6: $86
    rrca                                          ; $78b7: $0f
    ld l, e                                       ; $78b8: $6b
    scf                                           ; $78b9: $37
    ld l, b                                       ; $78ba: $68
    dec sp                                        ; $78bb: $3b

jr_026_78bc:
    cp d                                          ; $78bc: $ba
    sbc c                                         ; $78bd: $99
    sub a                                         ; $78be: $97

jr_026_78bf:
    rra                                           ; $78bf: $1f
    xor a                                         ; $78c0: $af
    dec c                                         ; $78c1: $0d
    ld [hl], a                                    ; $78c2: $77
    rst $00                                       ; $78c3: $c7
    ret                                           ; $78c4: $c9


    or e                                          ; $78c5: $b3
    add hl, hl                                    ; $78c6: $29
    or c                                          ; $78c7: $b1
    ld e, c                                       ; $78c8: $59
    ld b, $1f                                     ; $78c9: $06 $1f
    db $e3                                        ; $78cb: $e3
    add b                                         ; $78cc: $80
    rst $38                                       ; $78cd: $ff
    ld [hl], a                                    ; $78ce: $77
    sbc b                                         ; $78cf: $98
    ld a, [$2aa0]                                 ; $78d0: $fa $a0 $2a
    sbc c                                         ; $78d3: $99
    sub c                                         ; $78d4: $91
    dec sp                                        ; $78d5: $3b

jr_026_78d6:
    rst $08                                       ; $78d6: $cf
    ld b, h                                       ; $78d7: $44
    jr jr_026_78f0                                ; $78d8: $18 $16

    xor a                                         ; $78da: $af
    pop bc                                        ; $78db: $c1
    sub h                                         ; $78dc: $94
    or a                                          ; $78dd: $b7
    ld c, l                                       ; $78de: $4d
    adc h                                         ; $78df: $8c
    call $8dc0                                    ; $78e0: $cd $c0 $8d
    ld l, l                                       ; $78e3: $6d
    scf                                           ; $78e4: $37
    cp e                                          ; $78e5: $bb
    or h                                          ; $78e6: $b4
    ld a, [c]                                     ; $78e7: $f2
    ld a, [c]                                     ; $78e8: $f2
    ld [$2703], sp                                ; $78e9: $08 $03 $27
    ld l, e                                       ; $78ec: $6b
    ld [hl], b                                    ; $78ed: $70
    xor e                                         ; $78ee: $ab
    pop af                                        ; $78ef: $f1

jr_026_78f0:
    ld l, c                                       ; $78f0: $69
    ld [hl+], a                                   ; $78f1: $22
    ld e, e                                       ; $78f2: $5b
    ldh a, [$3e]                                  ; $78f3: $f0 $3e
    inc bc                                        ; $78f5: $03
    di                                            ; $78f6: $f3
    ld a, [c]                                     ; $78f7: $f2
    ld a, [c]                                     ; $78f8: $f2
    dec bc                                        ; $78f9: $0b
    ld d, e                                       ; $78fa: $53
    ld a, [hl]                                    ; $78fb: $7e
    rst $20                                       ; $78fc: $e7
    sbc e                                         ; $78fd: $9b
    ld e, e                                       ; $78fe: $5b
    push de                                       ; $78ff: $d5
    ld h, e                                       ; $7900: $63
    jp $935d                                      ; $7901: $c3 $5d $93


    ld h, [hl]                                    ; $7904: $66

jr_026_7905:
    ld [hl], l                                    ; $7905: $75
    ld c, d                                       ; $7906: $4a
    ld e, $61                                     ; $7907: $1e $61
    xor l                                         ; $7909: $ad
    ld l, d                                       ; $790a: $6a
    db $fd                                        ; $790b: $fd
    dec [hl]                                      ; $790c: $35
    ld l, c                                       ; $790d: $69
    ld b, $ff                                     ; $790e: $06 $ff
    or h                                          ; $7910: $b4
    or b                                          ; $7911: $b0
    sbc c                                         ; $7912: $99
    and a                                         ; $7913: $a7
    or d                                          ; $7914: $b2
    xor [hl]                                      ; $7915: $ae
    jr jr_026_78bf                                ; $7916: $18 $a7

    inc h                                         ; $7918: $24
    ld [hl], a                                    ; $7919: $77
    sub b                                         ; $791a: $90
    ld [hl+], a                                   ; $791b: $22
    dec c                                         ; $791c: $0d
    ld [hl], a                                    ; $791d: $77
    sub [hl]                                      ; $791e: $96
    dec d                                         ; $791f: $15
    or l                                          ; $7920: $b5
    ld a, $d5                                     ; $7921: $3e $d5
    inc e                                         ; $7923: $1c
    ld h, c                                       ; $7924: $61

jr_026_7925:
    and a                                         ; $7925: $a7
    ld d, $b4                                     ; $7926: $16 $b4
    push af                                       ; $7928: $f5
    jr z, jr_026_7975                             ; $7929: $28 $4a

    push af                                       ; $792b: $f5
    dec [hl]                                      ; $792c: $35
    ld l, c                                       ; $792d: $69
    ret nc                                        ; $792e: $d0

    ld h, [hl]                                    ; $792f: $66
    add hl, de                                    ; $7930: $19
    ld a, a                                       ; $7931: $7f

Call_026_7932:
    and c                                         ; $7932: $a1
    xor h                                         ; $7933: $ac
    ld a, h                                       ; $7934: $7c
    adc l                                         ; $7935: $8d
    dec c                                         ; $7936: $0d
    inc a                                         ; $7937: $3c
    dec sp                                        ; $7938: $3b
    db $e3                                        ; $7939: $e3
    sub l                                         ; $793a: $95
    ret c                                         ; $793b: $d8

    res 4, l                                      ; $793c: $cb $a5
    ld h, b                                       ; $793e: $60
    ld l, c                                       ; $793f: $69
    db $db                                        ; $7940: $db
    ld [$c703], sp                                ; $7941: $08 $03 $c7
    ld e, h                                       ; $7944: $5c
    or [hl]                                       ; $7945: $b6
    ld h, $cd                                     ; $7946: $26 $cd
    jp z, Jump_026_74ab                           ; $7948: $ca $ab $74

    db $dd                                        ; $794b: $dd
    ld a, d                                       ; $794c: $7a
    sub h                                         ; $794d: $94
    sub a                                         ; $794e: $97
    rra                                           ; $794f: $1f
    xor a                                         ; $7950: $af
    jr nc, jr_026_79b0                            ; $7951: $30 $5d

    ld e, e                                       ; $7953: $5b
    ld e, [hl]                                    ; $7954: $5e
    db $eb                                        ; $7955: $eb
    ld a, l                                       ; $7956: $7d
    ld e, a                                       ; $7957: $5f
    sbc d                                         ; $7958: $9a
    ld a, [$978e]                                 ; $7959: $fa $8e $97
    ld c, e                                       ; $795c: $4b
    ld b, c                                       ; $795d: $41
    cp d                                          ; $795e: $ba
    ld b, e                                       ; $795f: $43
    sub a                                         ; $7960: $97
    call Call_026_7932                            ; $7961: $cd $32 $79
    ld h, l                                       ; $7964: $65
    cp e                                          ; $7965: $bb
    cp [hl]                                       ; $7966: $be
    ld c, e                                       ; $7967: $4b
    db $eb                                        ; $7968: $eb
    ld d, c                                       ; $7969: $51
    ld a, [hl]                                    ; $796a: $7e
    rst $00                                       ; $796b: $c7
    add sp, -$73                                  ; $796c: $e8 $8d
    call Call_026_4bba                            ; $796e: $cd $ba $4b
    halt                                          ; $7971: $76
    jp z, $c23b                                   ; $7972: $ca $3b $c2

jr_026_7975:
    dec a                                         ; $7975: $3d
    ld c, e                                       ; $7976: $4b
    adc [hl]                                      ; $7977: $8e
    ld d, a                                       ; $7978: $57
    ret c                                         ; $7979: $d8

    push af                                       ; $797a: $f5
    xor [hl]                                      ; $797b: $ae
    jr jr_026_7925                                ; $797c: $18 $a7

    db $e4                                        ; $797e: $e4
    sub d                                         ; $797f: $92
    ld a, [hl]                                    ; $7980: $7e
    ld [hl], l                                    ; $7981: $75
    ld c, d                                       ; $7982: $4a
    ld e, $d0                                     ; $7983: $1e $d0
    ld h, [hl]                                    ; $7985: $66
    pop af                                        ; $7986: $f1
    add l                                         ; $7987: $85
    ld b, $7c                                     ; $7988: $06 $7c
    ld b, l                                       ; $798a: $45
    xor l                                         ; $798b: $ad
    ccf                                           ; $798c: $3f
    rst $10                                       ; $798d: $d7
    ld a, [$3ad3]                                 ; $798e: $fa $d3 $3a
    ret                                           ; $7991: $c9


    cp a                                          ; $7992: $bf
    ret c                                         ; $7993: $d8

    ld h, $8e                                     ; $7994: $26 $8e
    xor c                                         ; $7996: $a9
    call nc, Call_026_6a17                        ; $7997: $d4 $17 $6a
    ld [hl], b                                    ; $799a: $70
    xor e                                         ; $799b: $ab
    ld a, c                                       ; $799c: $79
    ld l, $78                                     ; $799d: $2e $78
    rst $18                                       ; $799f: $df
    and l                                         ; $79a0: $a5
    add hl, hl                                    ; $79a1: $29
    or c                                          ; $79a2: $b1
    and l                                         ; $79a3: $a5
    pop af                                        ; $79a4: $f1
    push bc                                       ; $79a5: $c5
    ld e, e                                       ; $79a6: $5b
    rst $38                                       ; $79a7: $ff
    ld a, c                                       ; $79a8: $79
    ld d, c                                       ; $79a9: $51
    ld b, a                                       ; $79aa: $47
    jr jr_026_79ea                                ; $79ab: $18 $3d

    adc e                                         ; $79ad: $8b
    ld a, d                                       ; $79ae: $7a
    dec c                                         ; $79af: $0d

jr_026_79b0:
    and $e5                                       ; $79b0: $e6 $e5
    ld [hl], a                                    ; $79b2: $77
    adc h                                         ; $79b3: $8c
    sbc $d8                                       ; $79b4: $de $d8
    xor h                                         ; $79b6: $ac
    cp e                                          ; $79b7: $bb
    ld h, h                                       ; $79b8: $64
    and a                                         ; $79b9: $a7
    cp h                                          ; $79ba: $bc
    ld [hl], a                                    ; $79bb: $77
    push bc                                       ; $79bc: $c5
    dec a                                         ; $79bd: $3d
    jp z, $9e8f                                   ; $79be: $ca $8f $9e

    add a                                         ; $79c1: $87
    adc [hl]                                      ; $79c2: $8e
    halt                                          ; $79c3: $76
    ld e, [hl]                                    ; $79c4: $5e
    ld h, [hl]                                    ; $79c5: $66
    and a                                         ; $79c6: $a7
    adc h                                         ; $79c7: $8c
    cp a                                          ; $79c8: $bf
    inc e                                         ; $79c9: $1c
    ld d, l                                       ; $79ca: $55
    jr jr_026_7a19                                ; $79cb: $18 $4c

    adc c                                         ; $79cd: $89
    adc l                                         ; $79ce: $8d
    cp a                                          ; $79cf: $bf
    ld e, [hl]                                    ; $79d0: $5e
    sub l                                         ; $79d1: $95
    rlca                                          ; $79d2: $07
    or h                                          ; $79d3: $b4
    ld e, c                                       ; $79d4: $59
    ld a, h                                       ; $79d5: $7c
    ld b, l                                       ; $79d6: $45
    ld h, c                                       ; $79d7: $61
    and c                                         ; $79d8: $a1
    ld b, $b7                                     ; $79d9: $06 $b7
    ld a, [de]                                    ; $79db: $1a
    dec a                                         ; $79dc: $3d

jr_026_79dd:
    rrca                                          ; $79dd: $0f
    or e                                          ; $79de: $b3
    dec h                                         ; $79df: $25
    jp $a4a9                                      ; $79e0: $c3 $a9 $a4


    ld hl, $2f36                                  ; $79e3: $21 $36 $2f
    ccf                                           ; $79e6: $3f
    ld a, $25                                     ; $79e7: $3e $25
    ld [hl-], a                                   ; $79e9: $32

jr_026_79ea:
    xor $94                                       ; $79ea: $ee $94
    ret c                                         ; $79ec: $d8

    ld [hl], h                                    ; $79ed: $74
    ld sp, $da7d                                  ; $79ee: $31 $7d $da
    ld c, [hl]                                    ; $79f1: $4e
    db $e3                                        ; $79f2: $e3
    ld l, e                                       ; $79f3: $6b
    call Call_026_5780                            ; $79f4: $cd $80 $57
    ld [hl], c                                    ; $79f7: $71
    ldh [$ce], a                                  ; $79f8: $e0 $ce
    inc sp                                        ; $79fa: $33
    ld de, $ad06                                  ; $79fb: $11 $06 $ad
    rra                                           ; $79fe: $1f
    ld h, e                                       ; $79ff: $63
    ld [hl], d                                    ; $7a00: $72
    ld h, a                                       ; $7a01: $67
    xor c                                         ; $7a02: $a9
    add l                                         ; $7a03: $85
    dec sp                                        ; $7a04: $3b
    dec a                                         ; $7a05: $3d
    ld l, c                                       ; $7a06: $69
    dec a                                         ; $7a07: $3d
    ld e, a                                       ; $7a08: $5f
    ld hl, $837e                                  ; $7a09: $21 $7e $83
    or [hl]                                       ; $7a0c: $b6
    and e                                         ; $7a0d: $a3
    db $e4                                        ; $7a0e: $e4
    rst $10                                       ; $7a0f: $d7
    and h                                         ; $7a10: $a4
    sbc c                                         ; $7a11: $99
    cp h                                          ; $7a12: $bc
    add $d8                                       ; $7a13: $c6 $d8
    xor h                                         ; $7a15: $ac
    ld d, l                                       ; $7a16: $55
    ld b, l                                       ; $7a17: $45
    sbc d                                         ; $7a18: $9a

jr_026_7a19:
    ld [hl], l                                    ; $7a19: $75
    ld c, a                                       ; $7a1a: $4f
    rst $30                                       ; $7a1b: $f7
    sub a                                         ; $7a1c: $97
    xor [hl]                                      ; $7a1d: $ae
    jr jr_026_79dd                                ; $7a1e: $18 $bd

    ld e, $b8                                     ; $7a20: $1e $b8
    or e                                          ; $7a22: $b3
    ld c, h                                       ; $7a23: $4c
    ld b, e                                       ; $7a24: $43
    add h                                         ; $7a25: $84

jr_026_7a26:
    ld bc, $16a7                                  ; $7a26: $01 $a7 $16
    add h                                         ; $7a29: $84
    sub b                                         ; $7a2a: $90
    ld h, l                                       ; $7a2b: $65
    ld e, [hl]                                    ; $7a2c: $5e
    jp nc, $c504                                  ; $7a2d: $d2 $04 $c5

    ld [hl], a                                    ; $7a30: $77
    ld a, l                                       ; $7a31: $7d
    pop hl                                        ; $7a32: $e1
    dec c                                         ; $7a33: $0d
    adc d                                         ; $7a34: $8a
    xor a                                         ; $7a35: $af
    db $fd                                        ; $7a36: $fd
    ld d, e                                       ; $7a37: $53
    ld c, d                                       ; $7a38: $4a
    cpl                                           ; $7a39: $2f
    cpl                                           ; $7a3a: $2f
    ld c, e                                       ; $7a3b: $4b
    ld a, e                                       ; $7a3c: $7b
    ld h, c                                       ; $7a3d: $61
    or e                                          ; $7a3e: $b3
    or [hl]                                       ; $7a3f: $b6
    and h                                         ; $7a40: $a4
    sub a                                         ; $7a41: $97
    rla                                           ; $7a42: $17
    xor b                                         ; $7a43: $a8
    db $ed                                        ; $7a44: $ed
    cp h                                          ; $7a45: $bc
    xor h                                         ; $7a46: $ac
    ccf                                           ; $7a47: $3f
    jr nz, jr_026_7a56                            ; $7a48: $20 $0c

    xor l                                         ; $7a4a: $ad
    ld l, d                                       ; $7a4b: $6a
    db $fd                                        ; $7a4c: $fd

jr_026_7a4d:
    dec [hl]                                      ; $7a4d: $35
    ld l, c                                       ; $7a4e: $69
    ld b, $ff                                     ; $7a4f: $06 $ff
    inc [hl]                                      ; $7a51: $34
    sbc l                                         ; $7a52: $9d
    and a                                         ; $7a53: $a7
    or d                                          ; $7a54: $b2
    xor [hl]                                      ; $7a55: $ae

jr_026_7a56:
    db $db                                        ; $7a56: $db
    ld d, c                                       ; $7a57: $51
    ld l, e                                       ; $7a58: $6b
    ld h, a                                       ; $7a59: $67
    inc sp                                        ; $7a5a: $33
    jp nc, $d9f0                                  ; $7a5b: $d2 $f0 $d9

    ld c, [hl]                                    ; $7a5e: $4e
    ld a, c                                       ; $7a5f: $79
    db $eb                                        ; $7a60: $eb
    adc l                                         ; $7a61: $8d
    pop af                                        ; $7a62: $f1
    rla                                           ; $7a63: $17
    inc de                                        ; $7a64: $13
    ld a, h                                       ; $7a65: $7c
    push hl                                       ; $7a66: $e5
    ld [bc], a                                    ; $7a67: $02
    jp nz, Jump_000_24a7                          ; $7a68: $c2 $a7 $24

    jp nz, $e4a7                                  ; $7a6b: $c2 $a7 $e4

    sub d                                         ; $7a6e: $92
    ld a, [hl]                                    ; $7a6f: $7e
    push hl                                       ; $7a70: $e5
    push hl                                       ; $7a71: $e5
    rst $10                                       ; $7a72: $d7
    ld [hl], $3e                                  ; $7a73: $36 $3e
    inc bc                                        ; $7a75: $03
    ld d, e                                       ; $7a76: $53
    ld h, d                                       ; $7a77: $62
    dec bc                                        ; $7a78: $0b
    sbc e                                         ; $7a79: $9b
    adc c                                         ; $7a7a: $89
    ld a, [hl-]                                   ; $7a7b: $3a
    ld [hl], a                                    ; $7a7c: $77
    dec l                                         ; $7a7d: $2d
    sub l                                         ; $7a7e: $95
    or [hl]                                       ; $7a7f: $b6
    db $db                                        ; $7a80: $db
    cpl                                           ; $7a81: $2f
    add b                                         ; $7a82: $80
    jr nc, jr_026_7aec                            ; $7a83: $30 $67

    ld [hl], e                                    ; $7a85: $73
    db $e4                                        ; $7a86: $e4
    ret z                                         ; $7a87: $c8

    sub c                                         ; $7a88: $91
    inc hl                                        ; $7a89: $23
    ld b, a                                       ; $7a8a: $47
    add h                                         ; $7a8b: $84
    db $10                                        ; $7a8c: $10
    ld b, d                                       ; $7a8d: $42
    jr jr_026_7a26                                ; $7a8e: $18 $96

    ld e, d                                       ; $7a90: $5a
    cp b                                          ; $7a91: $b8
    sub $97                                       ; $7a92: $d6 $97
    ldh a, [rNR52]                                ; $7a94: $f0 $26
    db $fd                                        ; $7a96: $fd
    adc [hl]                                      ; $7a97: $8e
    rla                                           ; $7a98: $17
    and l                                         ; $7a99: $a5
    ldh [$85], a                                  ; $7a9a: $e0 $85
    dec sp                                        ; $7a9c: $3b
    cp [hl]                                       ; $7a9d: $be
    db $e4                                        ; $7a9e: $e4
    ld d, h                                       ; $7a9f: $54
    ld a, [hl]                                    ; $7aa0: $7e
    ld c, l                                       ; $7aa1: $4d
    sbc d                                         ; $7aa2: $9a
    xor [hl]                                      ; $7aa3: $ae
    jr jr_026_7a4d                                ; $7aa4: $18 $a7

    daa                                           ; $7aa6: $27
    xor l                                         ; $7aa7: $ad
    rst $20                                       ; $7aa8: $e7
    dec hl                                        ; $7aa9: $2b
    call nz, $106f                                ; $7aaa: $c4 $6f $10
    ld b, $ad                                     ; $7aad: $06 $ad
    ld a, [hl+]                                   ; $7aaf: $2a
    jp nc, Jump_026_7bac                          ; $7ab0: $d2 $ac $7b

    cp d                                          ; $7ab3: $ba
    cp a                                          ; $7ab4: $bf
    jr nz, jr_026_7ac3                            ; $7ab5: $20 $0c

    and a                                         ; $7ab7: $a7
    cp a                                          ; $7ab8: $bf
    add $d8                                       ; $7ab9: $c6 $d8
    ld [hl], h                                    ; $7abb: $74
    sbc l                                         ; $7abc: $9d
    and l                                         ; $7abd: $a5
    ld h, [hl]                                    ; $7abe: $66
    db $fd                                        ; $7abf: $fd
    ret                                           ; $7ac0: $c9


    dec hl                                        ; $7ac1: $2b
    sbc e                                         ; $7ac2: $9b

jr_026_7ac3:
    add $38                                       ; $7ac3: $c6 $38
    ld l, l                                       ; $7ac5: $6d
    and a                                         ; $7ac6: $a7
    pop af                                        ; $7ac7: $f1
    dec [hl]                                      ; $7ac8: $35
    ld l, c                                       ; $7ac9: $69
    ret nc                                        ; $7aca: $d0

    adc [hl]                                      ; $7acb: $8e
    ret                                           ; $7acc: $c9


    dec [hl]                                      ; $7acd: $35
    ld l, c                                       ; $7ace: $69
    ld d, [hl]                                    ; $7acf: $56
    add hl, hl                                    ; $7ad0: $29

Call_026_7ad1:
    ld hl, sp-$60                                 ; $7ad1: $f8 $a0
    di                                            ; $7ad3: $f3
    ld sp, $9ac2                                  ; $7ad4: $31 $c2 $9a
    rst $30                                       ; $7ad7: $f7
    xor [hl]                                      ; $7ad8: $ae
    db $eb                                        ; $7ad9: $eb
    sbc c                                         ; $7ada: $99
    ld h, $b2                                     ; $7adb: $26 $b2
    dec [hl]                                      ; $7add: $35
    ld l, c                                       ; $7ade: $69
    ld d, $6f                                     ; $7adf: $16 $6f
    db $fd                                        ; $7ae1: $fd
    rst $20                                       ; $7ae2: $e7
    cp c                                          ; $7ae3: $b9
    ld hl, sp+$2a                                 ; $7ae4: $f8 $2a
    or h                                          ; $7ae6: $b4
    and h                                         ; $7ae7: $a4
    rst $28                                       ; $7ae8: $ef
    cp d                                          ; $7ae9: $ba
    sub $97                                       ; $7aea: $d6 $97

jr_026_7aec:
    xor a                                         ; $7aec: $af
    pop bc                                        ; $7aed: $c1
    ld c, d                                       ; $7aee: $4a
    ld a, [c]                                     ; $7aef: $f2
    ld l, e                                       ; $7af0: $6b
    jp nc, $52ac                                  ; $7af1: $d2 $ac $52

    ldh a, [$9d]                                  ; $7af4: $f0 $9d
    ld sp, hl                                     ; $7af6: $f9
    jp nz, Jump_026_786e                          ; $7af7: $c2 $6e $78

    ld h, e                                       ; $7afa: $63
    cp h                                          ; $7afb: $bc
    ld l, c                                       ; $7afc: $69
    nop                                           ; $7afd: $00
    ld l, l                                       ; $7afe: $6d
    and a                                         ; $7aff: $a7
    db $e4                                        ; $7b00: $e4
    sub d                                         ; $7b01: $92
    ld a, [hl]                                    ; $7b02: $7e
    sub a                                         ; $7b03: $97
    ld d, $36                                     ; $7b04: $16 $36
    or e                                          ; $7b06: $b3
    dec [hl]                                      ; $7b07: $35
    cp h                                          ; $7b08: $bc
    or c                                          ; $7b09: $b1
    reti                                          ; $7b0a: $d9


    add l                                         ; $7b0b: $85
    add l                                         ; $7b0c: $85
    ld a, [de]                                    ; $7b0d: $1a
    call c, $234a                                 ; $7b0e: $dc $4a $23
    ld [hl], a                                    ; $7b11: $77
    ld l, l                                       ; $7b12: $6d
    db $e3                                        ; $7b13: $e3
    or e                                          ; $7b14: $b3
    call nc, $bfac                                ; $7b15: $d4 $ac $bf
    ld hl, sp+$2a                                 ; $7b18: $f8 $2a
    db $f4                                        ; $7b1a: $f4
    ld l, h                                       ; $7b1b: $6c
    ld a, [de]                                    ; $7b1c: $1a
    db $e3                                        ; $7b1d: $e3
    jp nc, $aac8                                  ; $7b1e: $d2 $c8 $aa

    inc [hl]                                      ; $7b21: $34
    ld [bc], a                                    ; $7b22: $02
    cp a                                          ; $7b23: $bf
    halt                                          ; $7b24: $76
    ld h, [hl]                                    ; $7b25: $66
    dec e                                         ; $7b26: $1d
    sub $6e                                       ; $7b27: $d6 $6e
    ld d, [hl]                                    ; $7b29: $56
    ld e, [hl]                                    ; $7b2a: $5e
    push bc                                       ; $7b2b: $c5
    pop de                                        ; $7b2c: $d1
    sub $f3                                       ; $7b2d: $d6 $f3
    ld h, e                                       ; $7b2f: $63
    db $e4                                        ; $7b30: $e4
    xor [hl]                                      ; $7b31: $ae
    xor l                                         ; $7b32: $ad
    ld d, l                                       ; $7b33: $55
    ld a, l                                       ; $7b34: $7d
    sbc [hl]                                      ; $7b35: $9e
    di                                            ; $7b36: $f3
    ld d, h                                       ; $7b37: $54
    or [hl]                                       ; $7b38: $b6
    ld h, d                                       ; $7b39: $62
    ret z                                         ; $7b3a: $c8

    cpl                                           ; $7b3b: $2f
    dec b                                         ; $7b3c: $05
    ld l, b                                       ; $7b3d: $68
    dec sp                                        ; $7b3e: $3b
    cp d                                          ; $7b3f: $ba
    ld a, c                                       ; $7b40: $79
    add h                                         ; $7b41: $84
    ld bc, $9596                                  ; $7b42: $01 $96 $95
    db $ec                                        ; $7b45: $ec
    db $fc                                        ; $7b46: $fc
    inc l                                         ; $7b47: $2c
    or l                                          ; $7b48: $b5
    ld [hl], b                                    ; $7b49: $70
    sub h                                         ; $7b4a: $94
    cp [hl]                                       ; $7b4b: $be
    ld c, e                                       ; $7b4c: $4b
    xor e                                         ; $7b4d: $ab
    and d                                         ; $7b4e: $a2
    ld [bc], a                                    ; $7b4f: $02
    adc h                                         ; $7b50: $8c
    cp a                                          ; $7b51: $bf
    ld e, [hl]                                    ; $7b52: $5e
    ld d, [hl]                                    ; $7b53: $56
    ld e, [hl]                                    ; $7b54: $5e
    ret nc                                        ; $7b55: $d0

    sub $52                                       ; $7b56: $d6 $52
    ld a, [hl]                                    ; $7b58: $7e
    pop af                                        ; $7b59: $f1
    sub $1f                                       ; $7b5a: $d6 $1f
    and $e5                                       ; $7b5c: $e6 $e5
    rlca                                          ; $7b5e: $07
    ld l, c                                       ; $7b5f: $69
    adc b                                         ; $7b60: $88
    dec l                                         ; $7b61: $2d
    db $ed                                        ; $7b62: $ed
    sub l                                         ; $7b63: $95
    sub a                                         ; $7b64: $97
    dec h                                         ; $7b65: $25
    ld c, a                                       ; $7b66: $4f
    or e                                          ; $7b67: $b3
    and $ad                                       ; $7b68: $e6 $ad
    ld a, [hl]                                    ; $7b6a: $7e
    sbc [hl]                                      ; $7b6b: $9e
    cp c                                          ; $7b6c: $b9
    ret nc                                        ; $7b6d: $d0

    ld d, h                                       ; $7b6e: $54
    dec b                                         ; $7b6f: $05
    ld h, c                                       ; $7b70: $61
    dec l                                         ; $7b71: $2d
    db $fc                                        ; $7b72: $fc
    cp a                                          ; $7b73: $bf
    jp $cbca                                      ; $7b74: $c3 $ca $cb


    ld [hl], a                                    ; $7b77: $77
    reti                                          ; $7b78: $d9


    cp d                                          ; $7b79: $ba
    sub l                                         ; $7b7a: $95
    xor h                                         ; $7b7b: $ac
    ld [hl-], a                                   ; $7b7c: $32
    xor d                                         ; $7b7d: $aa
    rst $38                                       ; $7b7e: $ff
    adc [hl]                                      ; $7b7f: $8e
    sub e                                         ; $7b80: $93
    inc c                                         ; $7b81: $0c
    add b                                         ; $7b82: $80
    cp e                                          ; $7b83: $bb
    xor $26                                       ; $7b84: $ee $26
    db $ec                                        ; $7b86: $ec
    call nc, $ad2f                                ; $7b87: $d4 $2f $ad
    cp e                                          ; $7b8a: $bb
    add d                                         ; $7b8b: $82
    rst $18                                       ; $7b8c: $df
    rlca                                          ; $7b8d: $07
    xor $8e                                       ; $7b8e: $ee $8e
    ld a, [hl]                                    ; $7b90: $7e
    pop af                                        ; $7b91: $f1
    ei                                            ; $7b92: $fb
    dec sp                                        ; $7b93: $3b
    ld a, [hl-]                                   ; $7b94: $3a
    db $dd                                        ; $7b95: $dd
    ld l, e                                       ; $7b96: $6b
    or b                                          ; $7b97: $b0
    ld h, e                                       ; $7b98: $63
    xor l                                         ; $7b99: $ad
    cpl                                           ; $7b9a: $2f
    call $8b8e                                    ; $7b9b: $cd $8e $8b
    ld l, d                                       ; $7b9e: $6a
    ld c, l                                       ; $7b9f: $4d
    inc hl                                        ; $7ba0: $23
    dec sp                                        ; $7ba1: $3b
    ld a, [$8095]                                 ; $7ba2: $fa $95 $80
    dec sp                                        ; $7ba5: $3b
    dec h                                         ; $7ba6: $25
    or [hl]                                       ; $7ba7: $b6
    jr nc, @-$19                                  ; $7ba8: $30 $e5

    cp e                                          ; $7baa: $bb
    ld h, b                                       ; $7bab: $60

Jump_026_7bac:
    and a                                         ; $7bac: $a7
    sub [hl]                                      ; $7bad: $96
    ld l, $5b                                     ; $7bae: $2e $5b
    ld c, e                                       ; $7bb0: $4b
    ld sp, hl                                     ; $7bb1: $f9
    dec d                                         ; $7bb2: $15
    add l                                         ; $7bb3: $85
    ld [hl], l                                    ; $7bb4: $75
    dec hl                                        ; $7bb5: $2b
    ld e, c                                       ; $7bb6: $59
    ld h, l                                       ; $7bb7: $65
    ld d, h                                       ; $7bb8: $54
    rst $38                                       ; $7bb9: $ff
    dec e                                         ; $7bba: $1d
    daa                                           ; $7bbb: $27
    add hl, de                                    ; $7bbc: $19
    ld b, b                                       ; $7bbd: $40
    rla                                           ; $7bbe: $17
    inc c                                         ; $7bbf: $0c
    dec a                                         ; $7bc0: $3d
    adc e                                         ; $7bc1: $8b
    ld a, [$7e54]                                 ; $7bc2: $fa $54 $7e
    db $dd                                        ; $7bc5: $dd
    ld c, d                                       ; $7bc6: $4a
    ld d, [hl]                                    ; $7bc7: $56
    add hl, de                                    ; $7bc8: $19
    push de                                       ; $7bc9: $d5
    ld a, a                                       ; $7bca: $7f
    rst $00                                       ; $7bcb: $c7
    ld c, c                                       ; $7bcc: $49
    ld b, $d0                                     ; $7bcd: $06 $d0
    ld [hl], l                                    ; $7bcf: $75
    db $eb                                        ; $7bd0: $eb
    ld d, c                                       ; $7bd1: $51
    cp [hl]                                       ; $7bd2: $be
    sbc c                                         ; $7bd3: $99
    jp z, $cd53                                   ; $7bd4: $ca $53 $cd

    daa                                           ; $7bd7: $27
    xor a                                         ; $7bd8: $af
    ld [hl], c                                    ; $7bd9: $71
    or [hl]                                       ; $7bda: $b6
    ld h, h                                       ; $7bdb: $64
    nop                                           ; $7bdc: $00

jr_026_7bdd:
    ld d, e                                       ; $7bdd: $53
    ld sp, hl                                     ; $7bde: $f9
    ld a, c                                       ; $7bdf: $79
    ld sp, hl                                     ; $7be0: $f9
    and [hl]                                      ; $7be1: $a6
    dec hl                                        ; $7be2: $2b
    ld b, $a7                                     ; $7be3: $06 $a7
    inc h                                         ; $7be5: $24
    ld [hl], a                                    ; $7be6: $77
    ld l, l                                       ; $7be7: $6d
    db $e3                                        ; $7be8: $e3
    di                                            ; $7be9: $f3
    ld a, [c]                                     ; $7bea: $f2
    call Call_026_7e54                            ; $7beb: $cd $54 $7e
    xor [hl]                                      ; $7bee: $ae
    ldh [$0d], a                                  ; $7bef: $e0 $0d
    jp c, Jump_026_47ba                           ; $7bf1: $da $ba $47

    inc bc                                        ; $7bf4: $03
    di                                            ; $7bf5: $f3
    ld a, [c]                                     ; $7bf6: $f2
    call Call_026_5a8a                            ; $7bf7: $cd $8a $5a
    ld a, a                                       ; $7bfa: $7f
    rst $00                                       ; $7bfb: $c7
    ld l, c                                       ; $7bfc: $69
    sbc b                                         ; $7bfd: $98
    ld b, $d6                                     ; $7bfe: $06 $d6
    di                                            ; $7c00: $f3
    ld a, d                                       ; $7c01: $7a
    ld d, l                                       ; $7c02: $55
    ld e, $a6                                     ; $7c03: $1e $a6
    call nz, $f3d6                                ; $7c05: $c4 $d6 $f3
    ld [hl], d                                    ; $7c08: $72
    ld d, h                                       ; $7c09: $54
    ld h, c                                       ; $7c0a: $61
    or b                                          ; $7c0b: $b0
    ld l, [hl]                                    ; $7c0c: $6e
    ld a, [hl+]                                   ; $7c0d: $2a
    inc c                                         ; $7c0e: $0c
    halt                                          ; $7c0f: $76
    ld l, c                                       ; $7c10: $69
    ld e, [hl]                                    ; $7c11: $5e
    ld a, $44                                     ; $7c12: $3e $44
    jr jr_026_7bdd                                ; $7c14: $18 $c7

    res 5, e                                      ; $7c16: $cb $ab
    ld [hl], e                                    ; $7c18: $73
    and a                                         ; $7c19: $a7
    sub h                                         ; $7c1a: $94
    ld e, [hl]                                    ; $7c1b: $5e
    ld e, [hl]                                    ; $7c1c: $5e
    add $6b                                       ; $7c1d: $c6 $6b
    inc sp                                        ; $7c1f: $33
    rst $08                                       ; $7c20: $cf
    add hl, hl                                    ; $7c21: $29
    ld h, e                                       ; $7c22: $63
    di                                            ; $7c23: $f3
    ld e, h                                       ; $7c24: $5c
    ret c                                         ; $7c25: $d8

    xor h                                         ; $7c26: $ac
    jp z, $bf18                                   ; $7c27: $ca $18 $bf

    ld a, [c]                                     ; $7c2a: $f2
    sbc e                                         ; $7c2b: $9b
    add h                                         ; $7c2c: $84
    ld bc, $d2bd                                  ; $7c2d: $01 $bd $d2
    xor h                                         ; $7c30: $ac
    jp z, $bf18                                   ; $7c31: $ca $18 $bf

    ld a, [c]                                     ; $7c34: $f2
    ld a, c                                       ; $7c35: $79
    ld sp, hl                                     ; $7c36: $f9
    ld [hl], b                                    ; $7c37: $70
    ld a, [bc]                                    ; $7c38: $0a
    db $e3                                        ; $7c39: $e3
    ccf                                           ; $7c3a: $3f
    add $ae                                       ; $7c3b: $c6 $ae
    db $eb                                        ; $7c3d: $eb
    ld d, c                                       ; $7c3e: $51
    ld e, [hl]                                    ; $7c3f: $5e
    cp [hl]                                       ; $7c40: $be
    ld b, $d3                                     ; $7c41: $06 $d3
    ld d, l                                       ; $7c43: $55
    add hl, de                                    ; $7c44: $19
    db $e3                                        ; $7c45: $e3
    ld d, a                                       ; $7c46: $57
    sbc [hl]                                      ; $7c47: $9e
    ld d, d                                       ; $7c48: $52
    add e                                         ; $7c49: $83
    ld d, l                                       ; $7c4a: $55
    pop de                                        ; $7c4b: $d1
    or h                                          ; $7c4c: $b4
    and a                                         ; $7c4d: $a7
    cp [hl]                                       ; $7c4e: $be
    sub $0c                                       ; $7c4f: $d6 $0c
    ld a, b                                       ; $7c51: $78
    dec d                                         ; $7c52: $15
    rlca                                          ; $7c53: $07
    add h                                         ; $7c54: $84
    sub b                                         ; $7c55: $90
    ld [de], a                                    ; $7c56: $12
    sbc e                                         ; $7c57: $9b
    and l                                         ; $7c58: $a5
    ld h, [hl]                                    ; $7c59: $66
    db $fd                                        ; $7c5a: $fd
    sub l                                         ; $7c5b: $95
    ld d, a                                       ; $7c5c: $57
    ld h, c                                       ; $7c5d: $61
    ld l, e                                       ; $7c5e: $6b
    jp nc, $52ac                                  ; $7c5f: $d2 $ac $52

    sbc d                                         ; $7c62: $9a
    add c                                         ; $7c63: $81
    sbc a                                         ; $7c64: $9f
    sub a                                         ; $7c65: $97
    rrca                                          ; $7c66: $0f
    rst $20                                       ; $7c67: $e7
    add hl, sp                                    ; $7c68: $39
    sub [hl]                                      ; $7c69: $96
    dec bc                                        ; $7c6a: $0b
    dec [hl]                                      ; $7c6b: $35
    cp b                                          ; $7c6c: $b8
    dec d                                         ; $7c6d: $15
    ld e, d                                       ; $7c6e: $5a
    rst $08                                       ; $7c6f: $cf
    ld a, [c]                                     ; $7c70: $f2
    or h                                          ; $7c71: $b4
    ld h, $cd                                     ; $7c72: $26 $cd
    jp c, Jump_026_59a6                           ; $7c74: $da $a6 $59

    or a                                          ; $7c77: $b7
    sub d                                         ; $7c78: $92
    ld d, l                                       ; $7c79: $55
    ld b, [hl]                                    ; $7c7a: $46
    push af                                       ; $7c7b: $f5
    rst $18                                       ; $7c7c: $df
    ld [hl], c                                    ; $7c7d: $71
    sub d                                         ; $7c7e: $92
    ld bc, $662c                                  ; $7c7f: $01 $2c $66
    sub $67                                       ; $7c82: $d6 $67
    and a                                         ; $7c84: $a7
    inc l                                         ; $7c85: $2c
    jp hl                                         ; $7c86: $e9


    ld [hl], a                                    ; $7c87: $77
    ld l, c                                       ; $7c88: $69
    ld e, [hl]                                    ; $7c89: $5e
    ld a, [hl]                                    ; $7c8a: $7e
    dec e                                         ; $7c8b: $1d
    xor l                                         ; $7c8c: $ad
    ld [$3c1a], a                                 ; $7c8d: $ea $1a $3c
    jp nz, Jump_026_61ad                          ; $7c90: $c2 $ad $61

    adc b                                         ; $7c93: $88
    db $10                                        ; $7c94: $10
    ld a, [bc]                                    ; $7c95: $0a
    or l                                          ; $7c96: $b5
    ld l, c                                       ; $7c97: $69
    rst $38                                       ; $7c98: $ff
    inc l                                         ; $7c99: $2c
    add e                                         ; $7c9a: $83
    sub d                                         ; $7c9b: $92
    ld h, $b2                                     ; $7c9c: $26 $b2
    or l                                          ; $7c9e: $b5
    ld c, l                                       ; $7c9f: $4d
    inc sp                                        ; $7ca0: $33
    ret z                                         ; $7ca1: $c8

    ldh a, [$d1]                                  ; $7ca2: $f0 $d1
    halt                                          ; $7ca4: $76
    or d                                          ; $7ca5: $b2
    ld b, $b7                                     ; $7ca6: $06 $b7
    jp nc, $e3b8                                  ; $7ca8: $d2 $b8 $e3

    inc [hl]                                      ; $7cab: $34
    ld c, h                                       ; $7cac: $4c
    inc bc                                        ; $7cad: $03
    db $eb                                        ; $7cae: $eb
    ld a, c                                       ; $7caf: $79
    cp l                                          ; $7cb0: $bd
    ld a, [hl+]                                   ; $7cb1: $2a
    rrca                                          ; $7cb2: $0f
    ld d, e                                       ; $7cb3: $53
    ld h, d                                       ; $7cb4: $62
    db $eb                                        ; $7cb5: $eb
    ld a, c                                       ; $7cb6: $79
    add hl, sp                                    ; $7cb7: $39
    xor d                                         ; $7cb8: $aa
    jr nc, jr_026_7d13                            ; $7cb9: $30 $58

    scf                                           ; $7cbb: $37
    dec d                                         ; $7cbc: $15
    ld b, $4b                                     ; $7cbd: $06 $4b
    add hl, de                                    ; $7cbf: $19
    and l                                         ; $7cc0: $a5
    ld [hl], e                                    ; $7cc1: $73
    rst $10                                       ; $7cc2: $d7

jr_026_7cc3:
    and h                                         ; $7cc3: $a4
    ld e, c                                       ; $7cc4: $59
    and l                                         ; $7cc5: $a5
    ld d, h                                       ; $7cc6: $54
    di                                            ; $7cc7: $f3
    dec b                                         ; $7cc8: $05
    add hl, sp                                    ; $7cc9: $39
    ld e, [hl]                                    ; $7cca: $5e
    sub d                                         ; $7ccb: $92
    add d                                         ; $7ccc: $82
    pop af                                        ; $7ccd: $f1
    rst $10                                       ; $7cce: $d7
    res 5, d                                      ; $7ccf: $cb $aa
    sub d                                         ; $7cd1: $92
    ld d, l                                       ; $7cd2: $55
    ld b, [hl]                                    ; $7cd3: $46
    push af                                       ; $7cd4: $f5
    ld b, a                                       ; $7cd5: $47
    jr jr_026_7d15                                ; $7cd6: $18 $3d

    ccf                                           ; $7cd8: $3f
    ld b, [hl]                                    ; $7cd9: $46
    xor $ae                                       ; $7cda: $ee $ae
    cp l                                          ; $7cdc: $bd
    ld h, $cd                                     ; $7cdd: $26 $cd
    add d                                         ; $7cdf: $82
    rst $30                                       ; $7ce0: $f7
    dec e                                         ; $7ce1: $1d
    dec d                                         ; $7ce2: $15
    ret z                                         ; $7ce3: $c8

    db $ed                                        ; $7ce4: $ed
    ld [hl], h                                    ; $7ce5: $74
    sub h                                         ; $7ce6: $94
    cp e                                          ; $7ce7: $bb
    ld c, d                                       ; $7ce8: $4a

jr_026_7ce9:
    ld l, c                                       ; $7ce9: $69
    sub [hl]                                      ; $7cea: $96
    cp c                                          ; $7ceb: $b9
    jr z, jr_026_7ce9                             ; $7cec: $28 $fb

    dec [hl]                                      ; $7cee: $35
    ld l, c                                       ; $7cef: $69
    ld h, [hl]                                    ; $7cf0: $66
    and a                                         ; $7cf1: $a7
    xor h                                         ; $7cf2: $ac
    call c, $ebb0                                 ; $7cf3: $dc $b0 $eb
    sub $fa                                       ; $7cf6: $d6 $fa
    dec [hl]                                      ; $7cf8: $35
    sbc b                                         ; $7cf9: $98
    sub a                                         ; $7cfa: $97
    ld e, a                                       ; $7cfb: $5f
    ld d, d                                       ; $7cfc: $52
    ld l, h                                       ; $7cfd: $6c
    sub [hl]                                      ; $7cfe: $96
    db $f4                                        ; $7cff: $f4
    or e                                          ; $7d00: $b3
    adc h                                         ; $7d01: $8c
    dec h                                         ; $7d02: $25
    push de                                       ; $7d03: $d5
    ld a, h                                       ; $7d04: $7c
    ld b, l                                       ; $7d05: $45
    xor l                                         ; $7d06: $ad
    adc a                                         ; $7d07: $8f
    jr nc, jr_026_7d47                            ; $7d08: $30 $3d

    adc e                                         ; $7d0a: $8b
    ld a, [$9db4]                                 ; $7d0b: $fa $b4 $9d
    add $e7                                       ; $7d0e: $c6 $e7
    dec h                                         ; $7d10: $25
    pop hl                                        ; $7d11: $e1
    ld [hl], a                                    ; $7d12: $77

jr_026_7d13:
    xor h                                         ; $7d13: $ac
    push af                                       ; $7d14: $f5

jr_026_7d15:
    and l                                         ; $7d15: $a5
    reti                                          ; $7d16: $d9


    ld [hl], c                                    ; $7d17: $71
    ld d, c                                       ; $7d18: $51
    xor l                                         ; $7d19: $ad
    ld l, c                                       ; $7d1a: $69
    ld h, h                                       ; $7d1b: $64
    ld b, a                                       ; $7d1c: $47
    cp a                                          ; $7d1d: $bf
    jp nc, Jump_026_5cbc                          ; $7d1e: $d2 $bc $5c

    ld a, [bc]                                    ; $7d21: $0a
    and b                                         ; $7d22: $a0
    db $eb                                        ; $7d23: $eb
    sub $b3                                       ; $7d24: $d6 $b3
    xor b                                         ; $7d26: $a8
    rst $08                                       ; $7d27: $cf
    adc [hl]                                      ; $7d28: $8e
    ld l, d                                       ; $7d29: $6a
    ld c, l                                       ; $7d2a: $4d
    inc hl                                        ; $7d2b: $23
    jr nc, jr_026_7cc3                            ; $7d2c: $30 $95

    sbc a                                         ; $7d2e: $9f
    sub a                                         ; $7d2f: $97
    sub a                                         ; $7d30: $97
    rst $28                                       ; $7d31: $ef
    adc d                                         ; $7d32: $8a
    ld bc, $9ec7                                  ; $7d33: $01 $c7 $9e
    ld a, c                                       ; $7d36: $79
    db $ec                                        ; $7d37: $ec
    jp hl                                         ; $7d38: $e9


    cp l                                          ; $7d39: $bd
    ld h, [hl]                                    ; $7d3a: $66
    ld b, a                                       ; $7d3b: $47
    or l                                          ; $7d3c: $b5
    and [hl]                                      ; $7d3d: $a6
    ld de, $1db4                                  ; $7d3e: $11 $b4 $1d
    ld b, l                                       ; $7d41: $45
    ld l, h                                       ; $7d42: $6c
    sub h                                         ; $7d43: $94
    cp [hl]                                       ; $7d44: $be
    di                                            ; $7d45: $f3
    inc c                                         ; $7d46: $0c

jr_026_7d47:
    ld hl, sp-$44                                 ; $7d47: $f8 $bc
    db $fc                                        ; $7d49: $fc
    add d                                         ; $7d4a: $82
    ld c, h                                       ; $7d4b: $4c

Jump_026_7d4c:
    ld [hl], $70                                  ; $7d4c: $36 $70
    ld h, e                                       ; $7d4e: $63
    db $db                                        ; $7d4f: $db
    ld l, b                                       ; $7d50: $68
    or e                                          ; $7d51: $b3
    call z, $a5cb                                 ; $7d52: $cc $cb $a5
    ld a, [$2b2c]                                 ; $7d55: $fa $2c $2b
    jp z, Jump_026_63a6                           ; $7d58: $ca $a6 $63

    ld d, a                                       ; $7d5b: $57
    ld a, h                                       ; $7d5c: $7c
    halt                                          ; $7d5d: $76
    ld d, h                                       ; $7d5e: $54
    ld l, e                                       ; $7d5f: $6b
    ld a, [de]                                    ; $7d60: $1a
    ld a, c                                       ; $7d61: $79
    or [hl]                                       ; $7d62: $b6
    and h                                         ; $7d63: $a4
    ld e, a                                       ; $7d64: $5f
    ld d, d                                       ; $7d65: $52
    push af                                       ; $7d66: $f5
    ld [$6703], sp                                ; $7d67: $08 $03 $67
    add h                                         ; $7d6a: $84
    ld hl, $a842                                  ; $7d6b: $21 $42 $a8
    inc h                                         ; $7d6e: $24
    ccf                                           ; $7d6f: $3f
    sub [hl]                                      ; $7d70: $96
    ld l, e                                       ; $7d71: $6b
    jp nc, Jump_026_4eac                          ; $7d72: $d2 $ac $4e

    ret                                           ; $7d75: $c9


    adc a                                         ; $7d76: $8f
    cpl                                           ; $7d77: $2f
    ld [$5763], a                                 ; $7d78: $ea $63 $57
    ld a, h                                       ; $7d7b: $7c
    xor [hl]                                      ; $7d7c: $ae
    ldh [rIF], a                                  ; $7d7d: $e0 $0f
    adc e                                         ; $7d7f: $8b
    or a                                          ; $7d80: $b7
    cp $5d                                        ; $7d81: $fe $5d
    ld sp, $24c7                                  ; $7d83: $31 $c7 $24
    push de                                       ; $7d86: $d5
    ld a, h                                       ; $7d87: $7c
    ld a, [bc]                                    ; $7d88: $0a
    ld [hl], l                                    ; $7d89: $75
    or h                                          ; $7d8a: $b4
    push af                                       ; $7d8b: $f5
    ld c, d                                       ; $7d8c: $4a
    inc sp                                        ; $7d8d: $33
    jr z, jr_026_7df9                             ; $7d8e: $28 $69

    ld [hl+], a                                   ; $7d90: $22
    ld e, e                                       ; $7d91: $5b
    ldh a, [$3e]                                  ; $7d92: $f0 $3e
    ret z                                         ; $7d94: $c8

    ldh a, [$bd]                                  ; $7d95: $f0 $bd
    ld e, h                                       ; $7d97: $5c
    ld a, [bc]                                    ; $7d98: $0a
    and $25                                       ; $7d99: $e6 $25
    ld c, l                                       ; $7d9b: $4d
    ld d, b                                       ; $7d9c: $50
    ret nc                                        ; $7d9d: $d0

    halt                                          ; $7d9e: $76
    ld [hl], d                                    ; $7d9f: $72
    add d                                         ; $7da0: $82
    rst $08                                       ; $7da1: $cf
    dec d                                         ; $7da2: $15
    db $fc                                        ; $7da3: $fc
    rst $10                                       ; $7da4: $d7
    sub c                                         ; $7da5: $91
    ld [hl], a                                    ; $7da6: $77
    ld l, a                                       ; $7da7: $6f
    ld d, $64                                     ; $7da8: $16 $64
    ld [hl-], a                                   ; $7daa: $32
    or h                                          ; $7dab: $b4
    sbc l                                         ; $7dac: $9d
    call c, Call_000_2dac                         ; $7dad: $dc $ac $2d
    jp hl                                         ; $7db0: $e9


    push hl                                       ; $7db1: $e5
    dec b                                         ; $7db2: $05

jr_026_7db3:
    ld b, $1f                                     ; $7db3: $06 $1f
    db $e3                                        ; $7db5: $e3
    add b                                         ; $7db6: $80
    rst $38                                       ; $7db7: $ff
    ld [hl], a                                    ; $7db8: $77
    sbc b                                         ; $7db9: $98
    ld a, [$2aa0]                                 ; $7dba: $fa $a0 $2a
    sbc c                                         ; $7dbd: $99
    sub c                                         ; $7dbe: $91
    cp e                                          ; $7dbf: $bb
    or [hl]                                       ; $7dc0: $b6
    pop af                                        ; $7dc1: $f1
    ld a, c                                       ; $7dc2: $79
    ld sp, hl                                     ; $7dc3: $f9
    ld h, [hl]                                    ; $7dc4: $66
    ld d, l                                       ; $7dc5: $55
    ld d, c                                       ; $7dc6: $51
    add hl, bc                                    ; $7dc7: $09
    ld a, [hl]                                    ; $7dc8: $7e
    cp d                                          ; $7dc9: $ba
    sbc b                                         ; $7dca: $98
    cp [hl]                                       ; $7dcb: $be
    jr nc, jr_026_7db3                            ; $7dcc: $30 $e5

    ld de, $2706                                  ; $7dce: $11 $06 $27
    add a                                         ; $7dd1: $87
    ld hl, $9d77                                  ; $7dd2: $21 $77 $9d
    db $ec                                        ; $7dd5: $ec
    ld d, h                                       ; $7dd6: $54
    add hl, hl                                    ; $7dd7: $29
    add h                                         ; $7dd8: $84
    sub $47                                       ; $7dd9: $d6 $47
    ld e, a                                       ; $7ddb: $5f
    ld b, a                                       ; $7ddc: $47
    or $b7                                        ; $7ddd: $f6 $b7
    sub [hl]                                      ; $7ddf: $96
    xor $7d                                       ; $7de0: $ee $7d
    ld h, d                                       ; $7de2: $62
    cp l                                          ; $7de3: $bd
    ld c, h                                       ; $7de4: $4c
    ret z                                         ; $7de5: $c8

    ld e, l                                       ; $7de6: $5d
    xor b                                         ; $7de7: $a8
    ld [de], a                                    ; $7de8: $12
    ld l, d                                       ; $7de9: $6a
    ld d, h                                       ; $7dea: $54
    or $68                                        ; $7deb: $f6 $68
    ld a, l                                       ; $7ded: $7d
    db $f4                                        ; $7dee: $f4
    ld [hl], l                                    ; $7def: $75
    ld h, h                                       ; $7df0: $64
    ld a, a                                       ; $7df1: $7f
    ld l, e                                       ; $7df2: $6b
    jp hl                                         ; $7df3: $e9


    sbc $27                                       ; $7df4: $de $27
    ld b, $3d                                     ; $7df6: $06 $3d
    adc d                                         ; $7df8: $8a

jr_026_7df9:
    ld a, [$d3b4]                                 ; $7df9: $fa $b4 $d3
    adc c                                         ; $7dfc: $89
    ccf                                           ; $7dfd: $3f
    ld e, [hl]                                    ; $7dfe: $5e
    add c                                         ; $7dff: $81
    ld l, d                                       ; $7e00: $6a
    cp [hl]                                       ; $7e01: $be
    di                                            ; $7e02: $f3
    call $9ff5                                    ; $7e03: $cd $f5 $9f
    call c, $a3ce                                 ; $7e06: $dc $ce $a3
    push af                                       ; $7e09: $f5
    pop de                                        ; $7e0a: $d1
    rst $10                                       ; $7e0b: $d7
    sub c                                         ; $7e0c: $91
    db $fd                                        ; $7e0d: $fd
    xor l                                         ; $7e0e: $ad
    and l                                         ; $7e0f: $a5
    ld a, e                                       ; $7e10: $7b
    sbc a                                         ; $7e11: $9f
    jr @-$57                                      ; $7e12: $18 $a7

    ld [hl-], a                                   ; $7e14: $32
    add [hl]                                      ; $7e15: $86
    db $10                                        ; $7e16: $10
    ld a, [c]                                     ; $7e17: $f2
    and d                                         ; $7e18: $a2
    ld a, $57                                     ; $7e19: $3e $57
    ldh a, [$67]                                  ; $7e1b: $f0 $67
    adc e                                         ; $7e1d: $8b
    or a                                          ; $7e1e: $b7
    cp $7b                                        ; $7e1f: $fe $7b
    or d                                          ; $7e21: $b2
    ld a, [hl]                                    ; $7e22: $7e
    call z, Call_000_2fce                         ; $7e23: $cc $ce $2f
    adc b                                         ; $7e26: $88
    and $d1                                       ; $7e27: $e6 $d1
    ld a, [$ebe8]                                 ; $7e29: $fa $e8 $eb
    ret z                                         ; $7e2c: $c8

    cp $d6                                        ; $7e2d: $fe $d6
    jp nc, $4fbd                                  ; $7e2f: $d2 $bd $4f

    inc c                                         ; $7e32: $0c
    cp l                                          ; $7e33: $bd
    ld c, h                                       ; $7e34: $4c
    ld d, l                                       ; $7e35: $55
    rst $28                                       ; $7e36: $ef
    or d                                          ; $7e37: $b2
    push af                                       ; $7e38: $f5
    inc l                                         ; $7e39: $2c

jr_026_7e3a:
    ld [$15e3], a                                 ; $7e3a: $ea $e3 $15
    and $45                                       ; $7e3d: $e6 $45
    sbc l                                         ; $7e3f: $9d
    cp e                                          ; $7e40: $bb
    or $c7                                        ; $7e41: $f6 $c7
    ret c                                         ; $7e43: $d8

    xor h                                         ; $7e44: $ac
    ld l, l                                       ; $7e45: $6d
    call c, $1693                                 ; $7e46: $dc $93 $16
    cpl                                           ; $7e49: $2f
    ld a, c                                       ; $7e4a: $79
    rst $10                                       ; $7e4b: $d7
    push af                                       ; $7e4c: $f5
    pop de                                        ; $7e4d: $d1
    rst $10                                       ; $7e4e: $d7
    sub c                                         ; $7e4f: $91
    db $fd                                        ; $7e50: $fd
    xor l                                         ; $7e51: $ad
    and l                                         ; $7e52: $a5
    ld a, e                                       ; $7e53: $7b

Call_026_7e54:
Jump_026_7e54:
    sbc a                                         ; $7e54: $9f
    jr jr_026_7ebe                                ; $7e55: $18 $67

    inc b                                         ; $7e57: $04
    add l                                         ; $7e58: $85
    dec sp                                        ; $7e59: $3b
    res 7, h                                      ; $7e5a: $cb $bc
    ld e, h                                       ; $7e5c: $5c
    xor d                                         ; $7e5d: $aa
    rst $08                                       ; $7e5e: $cf
    adc e                                         ; $7e5f: $8b
    ld a, [$8578]                                 ; $7e60: $fa $78 $85
    or c                                          ; $7e63: $b1
    inc c                                         ; $7e64: $0c
    ld h, [hl]                                    ; $7e65: $66
    ld h, a                                       ; $7e66: $67
    ld [hl-], a                                   ; $7e67: $32
    or h                                          ; $7e68: $b4
    ld a, $fa                                     ; $7e69: $3e $fa
    ld a, [hl-]                                   ; $7e6b: $3a
    or d                                          ; $7e6c: $b2
    cp a                                          ; $7e6d: $bf
    or l                                          ; $7e6e: $b5
    ld [hl], h                                    ; $7e6f: $74
    rst $28                                       ; $7e70: $ef
    inc de                                        ; $7e71: $13
    inc bc                                        ; $7e72: $03
    dec a                                         ; $7e73: $3d
    jp z, $f337                                   ; $7e74: $ca $37 $f3

    adc a                                         ; $7e77: $8f
    ld [hl], c                                    ; $7e78: $71
    pop hl                                        ; $7e79: $e1
    xor a                                         ; $7e7a: $af
    ld c, c                                       ; $7e7b: $49
    ld d, e                                       ; $7e7c: $53
    sub e                                         ; $7e7d: $93
    ld e, a                                       ; $7e7e: $5f
    xor e                                         ; $7e7f: $ab
    adc d                                         ; $7e80: $8a
    inc [hl]                                      ; $7e81: $34
    db $eb                                        ; $7e82: $eb
    sbc [hl]                                      ; $7e83: $9e
    xor $2f                                       ; $7e84: $ee $2f
    ld [$9603], sp                                ; $7e86: $08 $03 $96
    ld l, c                                       ; $7e89: $69
    adc b                                         ; $7e8a: $88
    jr nc, jr_026_7e3a                            ; $7e8b: $30 $ad

    ret                                           ; $7e8d: $c9


    adc a                                         ; $7e8e: $8f
    ld e, l                                       ; $7e8f: $5d
    ret nc                                        ; $7e90: $d0

    ld c, [hl]                                    ; $7e91: $4e
    daa                                           ; $7e92: $27
    cpl                                           ; $7e93: $2f
    ld sp, hl                                     ; $7e94: $f9
    and l                                         ; $7e95: $a5
    nop                                           ; $7e96: $00
    ld l, l                                       ; $7e97: $6d
    dec a                                         ; $7e98: $3d
    jp z, Jump_026_5d85                           ; $7e99: $ca $85 $5d

    ld e, b                                       ; $7e9c: $58
    scf                                           ; $7e9d: $37
    pop de                                        ; $7e9e: $d1
    halt                                          ; $7e9f: $76
    ei                                            ; $7ea0: $fb
    and a                                         ; $7ea1: $a7
    call nz, Call_026_45e6                        ; $7ea2: $c4 $e6 $45
    cp l                                          ; $7ea5: $bd
    ld b, $3b                                     ; $7ea6: $06 $3b
    ld a, $9b                                     ; $7ea8: $3e $9b
    ld hl, sp+$08                                 ; $7eaa: $f8 $08
    inc bc                                        ; $7eac: $03
    rst $00                                       ; $7ead: $c7
    adc e                                         ; $7eae: $8b
    ld hl, $1847                                  ; $7eaf: $21 $47 $18
    dec l                                         ; $7eb2: $2d
    sub h                                         ; $7eb3: $94
    ld [c], a                                     ; $7eb4: $e2
    ld [$9603], sp                                ; $7eb5: $08 $03 $96
    pop bc                                        ; $7eb8: $c1
    rst $38                                       ; $7eb9: $ff
    sbc d                                         ; $7eba: $9a
    inc [hl]                                      ; $7ebb: $34
    dec [hl]                                      ; $7ebc: $35
    db $eb                                        ; $7ebd: $eb

jr_026_7ebe:
    cpl                                           ; $7ebe: $2f
    ld a, h                                       ; $7ebf: $7c
    ld e, a                                       ; $7ec0: $5f
    rst $08                                       ; $7ec1: $cf
    ld d, a                                       ; $7ec2: $57
    adc b                                         ; $7ec3: $88
    rst $18                                       ; $7ec4: $df
    and b                                         ; $7ec5: $a0
    xor l                                         ; $7ec6: $ad
    sbc e                                         ; $7ec7: $9b
    jp z, $26db                                   ; $7ec8: $ca $db $26

    ld [hl], d                                    ; $7ecb: $72
    rst $10                                       ; $7ecc: $d7
    dec a                                         ; $7ecd: $3d
    db $dd                                        ; $7ece: $dd
    ld e, a                                       ; $7ecf: $5f
    cp b                                          ; $7ed0: $b8
    ld l, e                                       ; $7ed1: $6b
    jp nc, Jump_000_258c                          ; $7ed2: $d2 $8c $25

    push de                                       ; $7ed5: $d5
    ld a, h                                       ; $7ed6: $7c
    cp h                                          ; $7ed7: $bc
    sub d                                         ; $7ed8: $92
    rst $08                                       ; $7ed9: $cf
    ld [hl], e                                    ; $7eda: $73
    pop hl                                        ; $7edb: $e1
    push hl                                       ; $7edc: $e5

jr_026_7edd:
    jr nc, jr_026_7edd                            ; $7edd: $30 $fe

    ld a, d                                       ; $7edf: $7a
    sbc c                                         ; $7ee0: $99
    sub a                                         ; $7ee1: $97
    rra                                           ; $7ee2: $1f
    cpl                                           ; $7ee3: $2f
    ld c, c                                       ; $7ee4: $49
    pop bc                                        ; $7ee5: $c1
    ld a, [hl-]                                   ; $7ee6: $3a
    sbc a                                         ; $7ee7: $9f
    sbc l                                         ; $7ee8: $9d
    ld hl, sp+$08                                 ; $7ee9: $f8 $08
    inc bc                                        ; $7eeb: $03
    sub [hl]                                      ; $7eec: $96
    push de                                       ; $7eed: $d5
    add hl, hl                                    ; $7eee: $29
    ld sp, hl                                     ; $7eef: $f9
    pop af                                        ; $7ef0: $f1
    dec h                                         ; $7ef1: $25
    rst $20                                       ; $7ef2: $e7
    push hl                                       ; $7ef3: $e5
    rst $00                                       ; $7ef4: $c7
    ld c, e                                       ; $7ef5: $4b
    ld d, d                                       ; $7ef6: $52
    or b                                          ; $7ef7: $b0
    adc $67                                       ; $7ef8: $ce $67
    daa                                           ; $7efa: $27
    cp $54                                        ; $7efb: $fe $54
    ld e, $61                                     ; $7efd: $1e $61
    cp l                                          ; $7eff: $bd
    jp nc, $4a0c                                  ; $7f00: $d2 $0c $4a

    sbc d                                         ; $7f03: $9a
    ret z                                         ; $7f04: $c8

    sub $fe                                       ; $7f05: $d6 $fe
    add l                                         ; $7f07: $85
    add hl, hl                                    ; $7f08: $29
    cp a                                          ; $7f09: $bf
    ld c, [hl]                                    ; $7f0a: $4e
    add $eb                                       ; $7f0b: $c6 $eb
    rst $08                                       ; $7f0d: $cf
    ld e, l                                       ; $7f0e: $5d
    rst $30                                       ; $7f0f: $f7
    ld [hl], h                                    ; $7f10: $74
    ld a, a                                       ; $7f11: $7f
    pop hl                                        ; $7f12: $e1
    ld l, $65                                     ; $7f13: $2e $65
    ld c, l                                       ; $7f15: $4d
    sbc d                                         ; $7f16: $9a
    ld e, d                                       ; $7f17: $5a
    adc h                                         ; $7f18: $8c
    ld a, e                                       ; $7f19: $7b
    ld h, d                                       ; $7f1a: $62
    inc sp                                        ; $7f1b: $33
    sbc l                                         ; $7f1c: $9d
    push bc                                       ; $7f1d: $c5
    ld e, e                                       ; $7f1e: $5b
    rst $38                                       ; $7f1f: $ff
    push af                                       ; $7f20: $f5
    ld a, h                                       ; $7f21: $7c
    add l                                         ; $7f22: $85
    ld hl, sp-$33                                 ; $7f23: $f8 $cd
    jp z, $23cb                                   ; $7f25: $ca $cb $23

    inc c                                         ; $7f28: $0c
    cp l                                          ; $7f29: $bd
    jp nc, $d8d4                                  ; $7f2a: $d2 $d4 $d8

    jp c, $feef                                   ; $7f2d: $da $ef $fe

    or d                                          ; $7f30: $b2
    jr nz, @+$13                                  ; $7f31: $20 $11

    ld b, $3d                                     ; $7f33: $06 $3d
    ld a, a                                       ; $7f35: $7f
    inc l                                         ; $7f36: $2c
    xor c                                         ; $7f37: $a9
    and $b3                                       ; $7f38: $e6 $b3
    rst $38                                       ; $7f3a: $ff
    db $e3                                        ; $7f3b: $e3
    ld [c], a                                     ; $7f3c: $e2
    xor l                                         ; $7f3d: $ad
    rst $38                                       ; $7f3e: $ff
    ld [c], a                                     ; $7f3f: $e2
    xor e                                         ; $7f40: $ab
    push af                                       ; $7f41: $f5
    ld d, d                                       ; $7f42: $52
    jr nc, jr_026_7f88                            ; $7f43: $30 $43

    ld a, [hl]                                    ; $7f45: $7e
    db $e3                                        ; $7f46: $e3
    ld hl, sp+$5f                                 ; $7f47: $f8 $5f
    ld d, c                                       ; $7f49: $51
    db $eb                                        ; $7f4a: $eb
    rrca                                          ; $7f4b: $0f
    ld [hl-], a                                   ; $7f4c: $32
    db $fc                                        ; $7f4d: $fc
    and l                                         ; $7f4e: $a5
    cp l                                          ; $7f4f: $bd
    ld h, $8d                                     ; $7f50: $26 $8d
    inc c                                         ; $7f52: $0c
    ld hl, sp+$7f                                 ; $7f53: $f8 $7f
    rlca                                          ; $7f55: $07
    or h                                          ; $7f56: $b4
    or l                                          ; $7f57: $b5
    ld a, [hl]                                    ; $7f58: $7e
    db $ec                                        ; $7f59: $ec
    xor h                                         ; $7f5a: $ac
    ld c, c                                       ; $7f5b: $49
    inc hl                                        ; $7f5c: $23
    ldh a, [$d1]                                  ; $7f5d: $f0 $d1
    ld a, [$5dc0]                                 ; $7f5f: $fa $c0 $5d
    dec sp                                        ; $7f62: $3b
    dec de                                        ; $7f63: $1b
    add sp, -$7e                                  ; $7f64: $e8 $82
    ld bc, $e72d                                  ; $7f66: $01 $2d $e7
    sbc e                                         ; $7f69: $9b
    rst $10                                       ; $7f6a: $d7
    ld a, d                                       ; $7f6b: $7a
    rla                                           ; $7f6c: $17
    inc c                                         ; $7f6d: $0c
    and a                                         ; $7f6e: $a7
    inc a                                         ; $7f6f: $3c
    rlca                                          ; $7f70: $07
    sbc a                                         ; $7f71: $9f
    rst $18                                       ; $7f72: $df
    ldh a, [$b9]                                  ; $7f73: $f0 $b9
    dec bc                                        ; $7f75: $0b
    sbc $d7                                       ; $7f76: $de $d7
    and h                                         ; $7f78: $a4
    sub c                                         ; $7f79: $91
    dec h                                         ; $7f7a: $25
    ld c, a                                       ; $7f7b: $4f
    inc bc                                        ; $7f7c: $03
    cp $df                                        ; $7f7d: $fe $df
    and c                                         ; $7f7f: $a1
    dec bc                                        ; $7f80: $0b
    ld b, $3d                                     ; $7f81: $06 $3d
    jp z, Jump_026_5d85                           ; $7f83: $ca $85 $5d

    and b                                         ; $7f86: $a0
    sbc d                                         ; $7f87: $9a

jr_026_7f88:
    cpl                                           ; $7f88: $2f
    xor l                                         ; $7f89: $ad
    cpl                                           ; $7f8a: $2f
    call c, Call_026_4f75                         ; $7f8b: $dc $75 $4f
    rst $30                                       ; $7f8e: $f7
    sub a                                         ; $7f8f: $97
    ld l, $18                                     ; $7f90: $2e $18
    dec a                                         ; $7f92: $3d
    adc d                                         ; $7f93: $8a
    ld d, d                                       ; $7f94: $52
    dec e                                         ; $7f95: $1d
    cp b                                          ; $7f96: $b8
    db $eb                                        ; $7f97: $eb
    sbc [hl]                                      ; $7f98: $9e
    xor $2f                                       ; $7f99: $ee $2f
    ld l, b                                       ; $7f9b: $68
    dec sp                                        ; $7f9c: $3b
    dec h                                         ; $7f9d: $25
    ld sp, hl                                     ; $7f9e: $f9
    dec [hl]                                      ; $7f9f: $35
    ld l, c                                       ; $7fa0: $69
    ld d, [hl]                                    ; $7fa1: $56
    and a                                         ; $7fa2: $a7
    db $e4                                        ; $7fa3: $e4
    rst $10                                       ; $7fa4: $d7
    ld a, [hl]                                    ; $7fa5: $7e
    rst $30                                       ; $7fa6: $f7
    sub a                                         ; $7fa7: $97
    ld a, c                                       ; $7fa8: $79
    ld d, c                                       ; $7fa9: $51
    sbc d                                         ; $7faa: $9a
    rst $20                                       ; $7fab: $e7
    xor d                                         ; $7fac: $aa
    and d                                         ; $7fad: $a2
    ld sp, $053e                                  ; $7fae: $31 $3e $05
    cp a                                          ; $7fb1: $bf
    ld h, $8d                                     ; $7fb2: $26 $8d
    xor h                                         ; $7fb4: $ac
    db $fd                                        ; $7fb5: $fd
    xor $2f                                       ; $7fb6: $ee $2f
    add b                                         ; $7fb8: $80
    jr nc, @-$37                                  ; $7fb9: $30 $c7

    ld h, a                                       ; $7fbb: $67
    or d                                          ; $7fbc: $b2
    ld a, c                                       ; $7fbd: $79
    cp c                                          ; $7fbe: $b9
    inc d                                         ; $7fbf: $14
    call z, $d94e                                 ; $7fc0: $cc $4e $d9
    ret                                           ; $7fc3: $c9


    ld a, [de]                                    ; $7fc4: $1a
    db $ed                                        ; $7fc5: $ed
    ld l, h                                       ; $7fc6: $6c
    and $45                                       ; $7fc7: $e6 $45
    ld a, l                                       ; $7fc9: $7d
    sub [hl]                                      ; $7fca: $96
    pop af                                        ; $7fcb: $f1
    ld a, [bc]                                    ; $7fcc: $0a
    ld d, h                                       ; $7fcd: $54
    di                                            ; $7fce: $f3
    sub l                                         ; $7fcf: $95
    sub a                                         ; $7fd0: $97
    rst $28                                       ; $7fd1: $ef
    or d                                          ; $7fd2: $b2
    dec e                                         ; $7fd3: $1d
    inc hl                                        ; $7fd4: $23
    sub a                                         ; $7fd5: $97
    ld [$72f3], a                                 ; $7fd6: $ea $f3 $72
    ld h, c                                       ; $7fd9: $61
    dec a                                         ; $7fda: $3d
    ld l, a                                       ; $7fdb: $6f
    db $10                                        ; $7fdc: $10
    inc a                                         ; $7fdd: $3c
    pop af                                        ; $7fde: $f1
    rra                                           ; $7fdf: $1f
    reti                                          ; $7fe0: $d9


    cp d                                          ; $7fe1: $ba
    and a                                         ; $7fe2: $a7
    rst $18                                       ; $7fe3: $df
    inc h                                         ; $7fe4: $24
    xor $ae                                       ; $7fe5: $ee $ae
    adc a                                         ; $7fe7: $8f
    cp a                                          ; $7fe8: $bf
    ld sp, $b5ce                                  ; $7fe9: $31 $ce $b5
    cp $ab                                        ; $7fec: $fe $ab
    ld d, h                                       ; $7fee: $54
    ld a, [hl]                                    ; $7fef: $7e
    ld l, c                                       ; $7ff0: $69
    xor a                                         ; $7ff1: $af
    ld c, c                                       ; $7ff2: $49
    inc hl                                        ; $7ff3: $23
    db $e3                                        ; $7ff4: $e3
    db $d3                                        ; $7ff5: $d3
    db $10                                        ; $7ff6: $10
    inc bc                                        ; $7ff7: $03
    add h                                         ; $7ff8: $84
    ld bc, $ffff                                  ; $7ff9: $01 $ff $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
