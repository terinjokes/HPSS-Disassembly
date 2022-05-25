; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $06b", ROMX[$4000], BANK[$6b]

    ld l, e                                       ; $4000: $6b
    nop                                           ; $4001: $00
    or c                                          ; $4002: $b1
    inc h                                         ; $4003: $24
    nop                                           ; $4004: $00
    cp a                                          ; $4005: $bf
    inc h                                         ; $4006: $24
    nop                                           ; $4007: $00
    call nc, $0024                                ; $4008: $d4 $24 $00
    rst $28                                       ; $400b: $ef
    inc h                                         ; $400c: $24
    nop                                           ; $400d: $00
    push af                                       ; $400e: $f5
    inc h                                         ; $400f: $24
    nop                                           ; $4010: $00
    ld sp, hl                                     ; $4011: $f9
    inc h                                         ; $4012: $24
    nop                                           ; $4013: $00
    db $fd                                        ; $4014: $fd
    inc h                                         ; $4015: $24
    nop                                           ; $4016: $00
    ld [bc], a                                    ; $4017: $02
    dec h                                         ; $4018: $25
    nop                                           ; $4019: $00
    ld c, $25                                     ; $401a: $0e $25
    nop                                           ; $401c: $00
    ld a, [de]                                    ; $401d: $1a
    dec h                                         ; $401e: $25
    nop                                           ; $401f: $00
    inc hl                                        ; $4020: $23
    dec h                                         ; $4021: $25
    nop                                           ; $4022: $00
    inc l                                         ; $4023: $2c
    dec h                                         ; $4024: $25
    nop                                           ; $4025: $00
    ld [hl], $25                                  ; $4026: $36 $25
    nop                                           ; $4028: $00
    ld b, c                                       ; $4029: $41
    dec h                                         ; $402a: $25
    nop                                           ; $402b: $00
    ld c, h                                       ; $402c: $4c
    dec h                                         ; $402d: $25
    nop                                           ; $402e: $00
    ld d, a                                       ; $402f: $57
    dec h                                         ; $4030: $25
    nop                                           ; $4031: $00
    ld h, e                                       ; $4032: $63
    dec h                                         ; $4033: $25
    nop                                           ; $4034: $00
    ld l, a                                       ; $4035: $6f
    dec h                                         ; $4036: $25
    nop                                           ; $4037: $00
    ld a, h                                       ; $4038: $7c
    dec h                                         ; $4039: $25
    nop                                           ; $403a: $00
    add l                                         ; $403b: $85
    dec h                                         ; $403c: $25
    nop                                           ; $403d: $00
    adc [hl]                                      ; $403e: $8e
    dec h                                         ; $403f: $25
    nop                                           ; $4040: $00
    sbc b                                         ; $4041: $98
    dec h                                         ; $4042: $25
    nop                                           ; $4043: $00
    and l                                         ; $4044: $a5
    dec h                                         ; $4045: $25
    nop                                           ; $4046: $00
    or d                                          ; $4047: $b2
    dec h                                         ; $4048: $25
    nop                                           ; $4049: $00
    cp l                                          ; $404a: $bd
    dec h                                         ; $404b: $25
    nop                                           ; $404c: $00
    jp z, $0025                                   ; $404d: $ca $25 $00

    push de                                       ; $4050: $d5
    dec h                                         ; $4051: $25
    nop                                           ; $4052: $00
    xor $25                                       ; $4053: $ee $25
    nop                                           ; $4055: $00
    jr jr_06b_407e                                ; $4056: $18 $26

    nop                                           ; $4058: $00
    add hl, hl                                    ; $4059: $29
    ld h, $00                                     ; $405a: $26 $00
    ld b, c                                       ; $405c: $41
    ld h, $00                                     ; $405d: $26 $00
    ld d, a                                       ; $405f: $57
    ld h, $00                                     ; $4060: $26 $00
    ret c                                         ; $4062: $d8

    ld h, $00                                     ; $4063: $26 $00
    rra                                           ; $4065: $1f
    daa                                           ; $4066: $27
    nop                                           ; $4067: $00
    inc [hl]                                      ; $4068: $34
    daa                                           ; $4069: $27
    nop                                           ; $406a: $00
    ld c, h                                       ; $406b: $4c
    daa                                           ; $406c: $27
    nop                                           ; $406d: $00
    ld h, c                                       ; $406e: $61
    daa                                           ; $406f: $27
    nop                                           ; $4070: $00
    ld a, b                                       ; $4071: $78
    daa                                           ; $4072: $27
    nop                                           ; $4073: $00
    adc h                                         ; $4074: $8c
    daa                                           ; $4075: $27
    nop                                           ; $4076: $00
    or a                                          ; $4077: $b7
    daa                                           ; $4078: $27
    nop                                           ; $4079: $00
    db $db                                        ; $407a: $db
    daa                                           ; $407b: $27
    nop                                           ; $407c: $00
    inc c                                         ; $407d: $0c

jr_06b_407e:
    jr z, jr_06b_4080                             ; $407e: $28 $00

jr_06b_4080:
    ld a, [hl+]                                   ; $4080: $2a
    jr z, jr_06b_4083                             ; $4081: $28 $00

jr_06b_4083:
    ld c, h                                       ; $4083: $4c
    jr z, jr_06b_4086                             ; $4084: $28 $00

jr_06b_4086:
    ld d, [hl]                                    ; $4086: $56
    jr z, jr_06b_4089                             ; $4087: $28 $00

jr_06b_4089:
    ld [hl], b                                    ; $4089: $70
    jr z, jr_06b_408c                             ; $408a: $28 $00

jr_06b_408c:
    adc c                                         ; $408c: $89
    jr z, jr_06b_408f                             ; $408d: $28 $00

jr_06b_408f:
    sub a                                         ; $408f: $97
    jr z, jr_06b_4092                             ; $4090: $28 $00

jr_06b_4092:
    jp z, RST_28                                  ; $4092: $ca $28 $00

    and $28                                       ; $4095: $e6 $28
    nop                                           ; $4097: $00
    rst $30                                       ; $4098: $f7
    jr z, jr_06b_409b                             ; $4099: $28 $00

jr_06b_409b:
    ld bc, $0029                                  ; $409b: $01 $29 $00
    ld de, $0029                                  ; $409e: $11 $29 $00
    daa                                           ; $40a1: $27
    add hl, hl                                    ; $40a2: $29
    nop                                           ; $40a3: $00
    ld c, e                                       ; $40a4: $4b
    add hl, hl                                    ; $40a5: $29
    nop                                           ; $40a6: $00
    adc [hl]                                      ; $40a7: $8e
    add hl, hl                                    ; $40a8: $29
    nop                                           ; $40a9: $00
    cp a                                          ; $40aa: $bf
    add hl, hl                                    ; $40ab: $29
    nop                                           ; $40ac: $00
    rst $10                                       ; $40ad: $d7
    add hl, hl                                    ; $40ae: $29
    nop                                           ; $40af: $00
    rst $38                                       ; $40b0: $ff
    add hl, hl                                    ; $40b1: $29
    nop                                           ; $40b2: $00
    dec h                                         ; $40b3: $25
    ld a, [hl+]                                   ; $40b4: $2a
    nop                                           ; $40b5: $00
    ld c, l                                       ; $40b6: $4d
    ld a, [hl+]                                   ; $40b7: $2a
    nop                                           ; $40b8: $00
    ld a, l                                       ; $40b9: $7d
    ld a, [hl+]                                   ; $40ba: $2a
    nop                                           ; $40bb: $00
    sub e                                         ; $40bc: $93
    ld a, [hl+]                                   ; $40bd: $2a
    nop                                           ; $40be: $00
    cp a                                          ; $40bf: $bf
    ld a, [hl+]                                   ; $40c0: $2a
    nop                                           ; $40c1: $00
    ret nc                                        ; $40c2: $d0

    ld a, [hl+]                                   ; $40c3: $2a
    nop                                           ; $40c4: $00
    dec de                                        ; $40c5: $1b
    dec hl                                        ; $40c6: $2b
    nop                                           ; $40c7: $00
    scf                                           ; $40c8: $37
    dec hl                                        ; $40c9: $2b
    nop                                           ; $40ca: $00
    xor e                                         ; $40cb: $ab
    dec hl                                        ; $40cc: $2b
    nop                                           ; $40cd: $00
    jp nz, $002b                                  ; $40ce: $c2 $2b $00

    rst $28                                       ; $40d1: $ef
    dec hl                                        ; $40d2: $2b
    nop                                           ; $40d3: $00
    db $fd                                        ; $40d4: $fd
    dec hl                                        ; $40d5: $2b
    nop                                           ; $40d6: $00
    ld b, $2c                                     ; $40d7: $06 $2c
    nop                                           ; $40d9: $00
    rla                                           ; $40da: $17
    inc l                                         ; $40db: $2c
    nop                                           ; $40dc: $00
    ld e, c                                       ; $40dd: $59
    inc l                                         ; $40de: $2c
    nop                                           ; $40df: $00
    ld [hl], h                                    ; $40e0: $74
    inc l                                         ; $40e1: $2c
    nop                                           ; $40e2: $00
    ld a, b                                       ; $40e3: $78
    inc l                                         ; $40e4: $2c
    nop                                           ; $40e5: $00
    ld a, l                                       ; $40e6: $7d
    inc l                                         ; $40e7: $2c
    nop                                           ; $40e8: $00
    add l                                         ; $40e9: $85
    inc l                                         ; $40ea: $2c
    nop                                           ; $40eb: $00
    cp [hl]                                       ; $40ec: $be
    inc l                                         ; $40ed: $2c
    nop                                           ; $40ee: $00
    db $eb                                        ; $40ef: $eb
    inc l                                         ; $40f0: $2c
    nop                                           ; $40f1: $00
    ld d, $2d                                     ; $40f2: $16 $2d
    nop                                           ; $40f4: $00
    ld l, l                                       ; $40f5: $6d
    dec l                                         ; $40f6: $2d
    nop                                           ; $40f7: $00
    sbc a                                         ; $40f8: $9f
    dec l                                         ; $40f9: $2d
    nop                                           ; $40fa: $00
    rst $08                                       ; $40fb: $cf
    dec l                                         ; $40fc: $2d
    nop                                           ; $40fd: $00
    rst $38                                       ; $40fe: $ff
    dec l                                         ; $40ff: $2d
    nop                                           ; $4100: $00
    dec l                                         ; $4101: $2d
    ld l, $00                                     ; $4102: $2e $00
    ld [hl], e                                    ; $4104: $73
    ld l, $00                                     ; $4105: $2e $00
    ld a, [hl]                                    ; $4107: $7e
    ld l, $00                                     ; $4108: $2e $00
    and d                                         ; $410a: $a2
    ld l, $00                                     ; $410b: $2e $00
    or d                                          ; $410d: $b2
    ld l, $00                                     ; $410e: $2e $00
    push de                                       ; $4110: $d5
    ld l, $00                                     ; $4111: $2e $00
    jp hl                                         ; $4113: $e9


    ld l, $00                                     ; $4114: $2e $00
    ld [hl+], a                                   ; $4116: $22
    cpl                                           ; $4117: $2f
    nop                                           ; $4118: $00
    ld l, d                                       ; $4119: $6a
    cpl                                           ; $411a: $2f
    nop                                           ; $411b: $00
    and b                                         ; $411c: $a0
    cpl                                           ; $411d: $2f
    nop                                           ; $411e: $00
    sbc $2f                                       ; $411f: $de $2f
    nop                                           ; $4121: $00
    ld b, c                                       ; $4122: $41
    jr nc, jr_06b_4125                            ; $4123: $30 $00

jr_06b_4125:
    ld d, h                                       ; $4125: $54
    jr nc, jr_06b_4128                            ; $4126: $30 $00

jr_06b_4128:
    cp e                                          ; $4128: $bb
    jr nc, jr_06b_412b                            ; $4129: $30 $00

jr_06b_412b:
    sub $30                                       ; $412b: $d6 $30
    nop                                           ; $412d: $00
    db $fd                                        ; $412e: $fd
    jr nc, jr_06b_4131                            ; $412f: $30 $00

jr_06b_4131:
    ld e, $31                                     ; $4131: $1e $31
    nop                                           ; $4133: $00
    add hl, hl                                    ; $4134: $29
    ld sp, $6300                                  ; $4135: $31 $00 $63
    ld sp, $9e00                                  ; $4138: $31 $00 $9e
    ld sp, $a200                                  ; $413b: $31 $00 $a2
    ld sp, $c700                                  ; $413e: $31 $00 $c7
    ld sp, $ea00                                  ; $4141: $31 $00 $ea
    ld sp, $fd00                                  ; $4144: $31 $00 $fd
    ld sp, $2200                                  ; $4147: $31 $00 $22
    ld [hl-], a                                   ; $414a: $32
    nop                                           ; $414b: $00
    ccf                                           ; $414c: $3f
    ld [hl-], a                                   ; $414d: $32
    nop                                           ; $414e: $00
    ld h, l                                       ; $414f: $65
    ld [hl-], a                                   ; $4150: $32
    nop                                           ; $4151: $00
    ld a, e                                       ; $4152: $7b
    ld [hl-], a                                   ; $4153: $32
    nop                                           ; $4154: $00
    rst $10                                       ; $4155: $d7
    ld [hl-], a                                   ; $4156: $32
    nop                                           ; $4157: $00
    db $fc                                        ; $4158: $fc
    ld [hl-], a                                   ; $4159: $32
    nop                                           ; $415a: $00
    rlca                                          ; $415b: $07
    inc sp                                        ; $415c: $33
    nop                                           ; $415d: $00
    add hl, sp                                    ; $415e: $39
    inc sp                                        ; $415f: $33
    nop                                           ; $4160: $00
    ld b, [hl]                                    ; $4161: $46
    inc sp                                        ; $4162: $33
    nop                                           ; $4163: $00
    adc h                                         ; $4164: $8c
    inc sp                                        ; $4165: $33
    nop                                           ; $4166: $00
    or [hl]                                       ; $4167: $b6
    inc sp                                        ; $4168: $33
    nop                                           ; $4169: $00
    ret z                                         ; $416a: $c8

    inc sp                                        ; $416b: $33
    nop                                           ; $416c: $00
    push hl                                       ; $416d: $e5
    inc sp                                        ; $416e: $33
    nop                                           ; $416f: $00
    nop                                           ; $4170: $00
    inc [hl]                                      ; $4171: $34
    nop                                           ; $4172: $00
    inc h                                         ; $4173: $24
    inc [hl]                                      ; $4174: $34
    nop                                           ; $4175: $00
    dec sp                                        ; $4176: $3b
    inc [hl]                                      ; $4177: $34
    nop                                           ; $4178: $00
    ld h, d                                       ; $4179: $62
    inc [hl]                                      ; $417a: $34
    nop                                           ; $417b: $00
    ld l, l                                       ; $417c: $6d
    inc [hl]                                      ; $417d: $34
    nop                                           ; $417e: $00
    adc c                                         ; $417f: $89
    inc [hl]                                      ; $4180: $34
    nop                                           ; $4181: $00
    sub a                                         ; $4182: $97
    inc [hl]                                      ; $4183: $34
    nop                                           ; $4184: $00
    and e                                         ; $4185: $a3
    inc [hl]                                      ; $4186: $34
    nop                                           ; $4187: $00
    or b                                          ; $4188: $b0
    inc [hl]                                      ; $4189: $34
    nop                                           ; $418a: $00
    cp d                                          ; $418b: $ba
    inc [hl]                                      ; $418c: $34
    nop                                           ; $418d: $00
    ret z                                         ; $418e: $c8

    inc [hl]                                      ; $418f: $34
    nop                                           ; $4190: $00
    rst $10                                       ; $4191: $d7
    inc [hl]                                      ; $4192: $34
    nop                                           ; $4193: $00
    and $34                                       ; $4194: $e6 $34
    nop                                           ; $4196: $00
    rst $28                                       ; $4197: $ef
    inc [hl]                                      ; $4198: $34
    nop                                           ; $4199: $00
    ei                                            ; $419a: $fb
    inc [hl]                                      ; $419b: $34
    nop                                           ; $419c: $00
    dec h                                         ; $419d: $25
    dec [hl]                                      ; $419e: $35
    nop                                           ; $419f: $00
    ld l, b                                       ; $41a0: $68
    dec [hl]                                      ; $41a1: $35
    nop                                           ; $41a2: $00
    adc e                                         ; $41a3: $8b
    dec [hl]                                      ; $41a4: $35
    nop                                           ; $41a5: $00
    sbc e                                         ; $41a6: $9b
    dec [hl]                                      ; $41a7: $35
    nop                                           ; $41a8: $00
    xor a                                         ; $41a9: $af
    dec [hl]                                      ; $41aa: $35
    nop                                           ; $41ab: $00
    ret z                                         ; $41ac: $c8

    dec [hl]                                      ; $41ad: $35
    nop                                           ; $41ae: $00
    add sp, $35                                   ; $41af: $e8 $35
    nop                                           ; $41b1: $00
    inc de                                        ; $41b2: $13
    ld [hl], $00                                  ; $41b3: $36 $00
    daa                                           ; $41b5: $27
    ld [hl], $00                                  ; $41b6: $36 $00
    ld e, [hl]                                    ; $41b8: $5e
    ld [hl], $00                                  ; $41b9: $36 $00
    ld h, [hl]                                    ; $41bb: $66
    ld [hl], $00                                  ; $41bc: $36 $00
    ld [hl], l                                    ; $41be: $75
    ld [hl], $00                                  ; $41bf: $36 $00
    or c                                          ; $41c1: $b1
    ld [hl], $00                                  ; $41c2: $36 $00
    ret                                           ; $41c4: $c9


    ld [hl], $00                                  ; $41c5: $36 $00
    rst $28                                       ; $41c7: $ef
    ld [hl], $00                                  ; $41c8: $36 $00
    dec b                                         ; $41ca: $05
    scf                                           ; $41cb: $37
    nop                                           ; $41cc: $00
    inc hl                                        ; $41cd: $23
    scf                                           ; $41ce: $37
    nop                                           ; $41cf: $00
    dec sp                                        ; $41d0: $3b
    scf                                           ; $41d1: $37
    nop                                           ; $41d2: $00
    ld d, a                                       ; $41d3: $57
    scf                                           ; $41d4: $37
    nop                                           ; $41d5: $00
    ld h, b                                       ; $41d6: $60
    scf                                           ; $41d7: $37
    nop                                           ; $41d8: $00
    ld a, b                                       ; $41d9: $78
    scf                                           ; $41da: $37
    nop                                           ; $41db: $00
    sbc c                                         ; $41dc: $99
    scf                                           ; $41dd: $37
    nop                                           ; $41de: $00
    and e                                         ; $41df: $a3
    scf                                           ; $41e0: $37
    nop                                           ; $41e1: $00
    jp nz, Jump_000_0037                          ; $41e2: $c2 $37 $00

    db $d3                                        ; $41e5: $d3
    scf                                           ; $41e6: $37
    nop                                           ; $41e7: $00
    xor $37                                       ; $41e8: $ee $37
    nop                                           ; $41ea: $00
    dec de                                        ; $41eb: $1b
    jr c, jr_06b_41ee                             ; $41ec: $38 $00

jr_06b_41ee:
    ld c, h                                       ; $41ee: $4c
    jr c, jr_06b_41f1                             ; $41ef: $38 $00

jr_06b_41f1:
    ld [hl], h                                    ; $41f1: $74
    jr c, jr_06b_41f4                             ; $41f2: $38 $00

jr_06b_41f4:
    sbc e                                         ; $41f4: $9b
    jr c, jr_06b_41f7                             ; $41f5: $38 $00

jr_06b_41f7:
    or c                                          ; $41f7: $b1
    jr c, jr_06b_41fa                             ; $41f8: $38 $00

jr_06b_41fa:
    call $0038                                    ; $41fa: $cd $38 $00
    db $e4                                        ; $41fd: $e4
    jr c, jr_06b_4200                             ; $41fe: $38 $00

jr_06b_4200:
    nop                                           ; $4200: $00
    add hl, sp                                    ; $4201: $39
    nop                                           ; $4202: $00
    db $10                                        ; $4203: $10
    add hl, sp                                    ; $4204: $39
    nop                                           ; $4205: $00
    jr nc, jr_06b_4241                            ; $4206: $30 $39

    nop                                           ; $4208: $00
    ld b, a                                       ; $4209: $47
    add hl, sp                                    ; $420a: $39
    nop                                           ; $420b: $00
    ld h, a                                       ; $420c: $67
    add hl, sp                                    ; $420d: $39
    nop                                           ; $420e: $00
    add d                                         ; $420f: $82
    add hl, sp                                    ; $4210: $39
    nop                                           ; $4211: $00
    and d                                         ; $4212: $a2
    add hl, sp                                    ; $4213: $39
    nop                                           ; $4214: $00
    or e                                          ; $4215: $b3
    add hl, sp                                    ; $4216: $39
    nop                                           ; $4217: $00
    call nz, Call_000_0039                        ; $4218: $c4 $39 $00
    jp c, Jump_000_0039                           ; $421b: $da $39 $00

    and $39                                       ; $421e: $e6 $39
    nop                                           ; $4220: $00
    cp $39                                        ; $4221: $fe $39
    nop                                           ; $4223: $00
    ccf                                           ; $4224: $3f
    ld a, [hl-]                                   ; $4225: $3a
    nop                                           ; $4226: $00
    ld e, d                                       ; $4227: $5a
    ld a, [hl-]                                   ; $4228: $3a
    nop                                           ; $4229: $00
    ld a, a                                       ; $422a: $7f
    ld a, [hl-]                                   ; $422b: $3a
    nop                                           ; $422c: $00
    sub [hl]                                      ; $422d: $96
    ld a, [hl-]                                   ; $422e: $3a
    nop                                           ; $422f: $00
    xor e                                         ; $4230: $ab
    ld a, [hl-]                                   ; $4231: $3a
    nop                                           ; $4232: $00
    push bc                                       ; $4233: $c5
    ld a, [hl-]                                   ; $4234: $3a
    nop                                           ; $4235: $00
    ld [c], a                                     ; $4236: $e2
    ld a, [hl-]                                   ; $4237: $3a
    nop                                           ; $4238: $00
    ld a, [$003a]                                 ; $4239: $fa $3a $00
    jr jr_06b_4279                                ; $423c: $18 $3b

    nop                                           ; $423e: $00
    inc h                                         ; $423f: $24
    dec sp                                        ; $4240: $3b

jr_06b_4241:
    nop                                           ; $4241: $00
    ld d, d                                       ; $4242: $52
    dec sp                                        ; $4243: $3b
    nop                                           ; $4244: $00
    ld h, [hl]                                    ; $4245: $66
    dec sp                                        ; $4246: $3b
    nop                                           ; $4247: $00
    ld a, c                                       ; $4248: $79
    dec sp                                        ; $4249: $3b
    nop                                           ; $424a: $00
    call nz, Call_000_003b                        ; $424b: $c4 $3b $00
    ret c                                         ; $424e: $d8

    dec sp                                        ; $424f: $3b
    nop                                           ; $4250: $00
    ld a, [$003b]                                 ; $4251: $fa $3b $00
    rlca                                          ; $4254: $07
    inc a                                         ; $4255: $3c
    nop                                           ; $4256: $00
    ld [de], a                                    ; $4257: $12
    inc a                                         ; $4258: $3c
    nop                                           ; $4259: $00
    dec a                                         ; $425a: $3d
    inc a                                         ; $425b: $3c
    nop                                           ; $425c: $00
    ld l, d                                       ; $425d: $6a
    inc a                                         ; $425e: $3c
    nop                                           ; $425f: $00
    ld a, b                                       ; $4260: $78
    inc a                                         ; $4261: $3c
    nop                                           ; $4262: $00
    or e                                          ; $4263: $b3
    inc a                                         ; $4264: $3c
    nop                                           ; $4265: $00
    add $3c                                       ; $4266: $c6 $3c
    nop                                           ; $4268: $00
    db $10                                        ; $4269: $10
    dec a                                         ; $426a: $3d
    nop                                           ; $426b: $00
    inc sp                                        ; $426c: $33
    dec a                                         ; $426d: $3d
    nop                                           ; $426e: $00
    inc a                                         ; $426f: $3c
    dec a                                         ; $4270: $3d
    nop                                           ; $4271: $00
    ld e, a                                       ; $4272: $5f
    dec a                                         ; $4273: $3d
    nop                                           ; $4274: $00
    ld a, e                                       ; $4275: $7b
    dec a                                         ; $4276: $3d
    nop                                           ; $4277: $00
    add b                                         ; $4278: $80

jr_06b_4279:
    dec a                                         ; $4279: $3d
    nop                                           ; $427a: $00
    and [hl]                                      ; $427b: $a6
    dec a                                         ; $427c: $3d
    nop                                           ; $427d: $00
    or d                                          ; $427e: $b2
    dec a                                         ; $427f: $3d
    nop                                           ; $4280: $00
    call $003d                                    ; $4281: $cd $3d $00
    ret c                                         ; $4284: $d8

    dec a                                         ; $4285: $3d
    nop                                           ; $4286: $00
    ld [c], a                                     ; $4287: $e2
    dec a                                         ; $4288: $3d
    nop                                           ; $4289: $00
    ld l, a                                       ; $428a: $6f
    ld a, $00                                     ; $428b: $3e $00
    and e                                         ; $428d: $a3
    ld a, $00                                     ; $428e: $3e $00
    db $e3                                        ; $4290: $e3
    ld a, $00                                     ; $4291: $3e $00
    rst $30                                       ; $4293: $f7
    ld a, $00                                     ; $4294: $3e $00
    ld e, $3f                                     ; $4296: $1e $3f
    nop                                           ; $4298: $00
    ld d, [hl]                                    ; $4299: $56
    ccf                                           ; $429a: $3f
    nop                                           ; $429b: $00
    ld a, d                                       ; $429c: $7a
    ccf                                           ; $429d: $3f
    ld bc, $0001                                  ; $429e: $01 $01 $00
    ld bc, $0041                                  ; $42a1: $01 $41 $00
    ld bc, $0077                                  ; $42a4: $01 $77 $00
    ld bc, $009d                                  ; $42a7: $01 $9d $00
    ld bc, $00d8                                  ; $42aa: $01 $d8 $00
    ld bc, $00f6                                  ; $42ad: $01 $f6 $00
    ld bc, $0155                                  ; $42b0: $01 $55 $01
    ld bc, $0167                                  ; $42b3: $01 $67 $01
    ld bc, $017a                                  ; $42b6: $01 $7a $01
    ld bc, $0196                                  ; $42b9: $01 $96 $01
    ld bc, $01ba                                  ; $42bc: $01 $ba $01
    ld bc, $01df                                  ; $42bf: $01 $df $01
    ld bc, $0201                                  ; $42c2: $01 $01 $02
    ld bc, $021b                                  ; $42c5: $01 $1b $02
    ld bc, $0221                                  ; $42c8: $01 $21 $02
    ld bc, $0240                                  ; $42cb: $01 $40 $02
    ld bc, $0245                                  ; $42ce: $01 $45 $02
    ld bc, $024b                                  ; $42d1: $01 $4b $02
    ld bc, $028c                                  ; $42d4: $01 $8c $02
    ld bc, $02a5                                  ; $42d7: $01 $a5 $02
    ld bc, $02cf                                  ; $42da: $01 $cf $02
    ld bc, $02df                                  ; $42dd: $01 $df $02
    ld bc, $0318                                  ; $42e0: $01 $18 $03
    ld bc, $031f                                  ; $42e3: $01 $1f $03
    ld bc, $033b                                  ; $42e6: $01 $3b $03
    ld bc, $0350                                  ; $42e9: $01 $50 $03
    ld bc, $0382                                  ; $42ec: $01 $82 $03
    ld bc, $03c2                                  ; $42ef: $01 $c2 $03
    ld bc, $03d6                                  ; $42f2: $01 $d6 $03
    ld bc, $03df                                  ; $42f5: $01 $df $03
    ld bc, $03fd                                  ; $42f8: $01 $fd $03
    ld bc, $041b                                  ; $42fb: $01 $1b $04
    ld bc, $0437                                  ; $42fe: $01 $37 $04
    ld bc, $045b                                  ; $4301: $01 $5b $04
    ld bc, $0492                                  ; $4304: $01 $92 $04
    ld bc, $04a0                                  ; $4307: $01 $a0 $04
    ld bc, $0519                                  ; $430a: $01 $19 $05
    ld bc, $0524                                  ; $430d: $01 $24 $05
    ld bc, $053f                                  ; $4310: $01 $3f $05
    ld bc, $0550                                  ; $4313: $01 $50 $05
    ld bc, $0576                                  ; $4316: $01 $76 $05
    ld bc, $058a                                  ; $4319: $01 $8a $05
    ld bc, $05b4                                  ; $431c: $01 $b4 $05
    ld bc, $05c9                                  ; $431f: $01 $c9 $05
    ld bc, $05e1                                  ; $4322: $01 $e1 $05
    ld bc, $0662                                  ; $4325: $01 $62 $06
    ld bc, $067e                                  ; $4328: $01 $7e $06
    ld bc, $069f                                  ; $432b: $01 $9f $06
    ld bc, $06cb                                  ; $432e: $01 $cb $06
    ld bc, $06e3                                  ; $4331: $01 $e3 $06
    ld bc, $0713                                  ; $4334: $01 $13 $07
    ld bc, $0724                                  ; $4337: $01 $24 $07
    ld bc, $074b                                  ; $433a: $01 $4b $07
    ld bc, $076d                                  ; $433d: $01 $6d $07
    ld bc, $078e                                  ; $4340: $01 $8e $07
    ld bc, $07b2                                  ; $4343: $01 $b2 $07
    ld bc, $07d2                                  ; $4346: $01 $d2 $07
    ld bc, $0899                                  ; $4349: $01 $99 $08
    ld bc, $08b3                                  ; $434c: $01 $b3 $08
    ld bc, $090e                                  ; $434f: $01 $0e $09

Call_06b_4352:
    ld bc, $0926                                  ; $4352: $01 $26 $09
    ld bc, $0945                                  ; $4355: $01 $45 $09
    ld bc, $0953                                  ; $4358: $01 $53 $09
    ld bc, $09a9                                  ; $435b: $01 $a9 $09
    ld bc, $0a08                                  ; $435e: $01 $08 $0a
    ld bc, $0a2b                                  ; $4361: $01 $2b $0a
    ld bc, $0a41                                  ; $4364: $01 $41 $0a
    ld bc, $0a5a                                  ; $4367: $01 $5a $0a
    ld bc, $0a75                                  ; $436a: $01 $75 $0a
    ld bc, $0a8a                                  ; $436d: $01 $8a $0a
    ld bc, $0aa2                                  ; $4370: $01 $a2 $0a
    ld bc, $0abe                                  ; $4373: $01 $be $0a
    ld bc, $0ad7                                  ; $4376: $01 $d7 $0a
    ld bc, $0ae3                                  ; $4379: $01 $e3 $0a
    ld bc, $0aed                                  ; $437c: $01 $ed $0a
    ld bc, $0af7                                  ; $437f: $01 $f7 $0a
    ld bc, $0b0c                                  ; $4382: $01 $0c $0b
    ld bc, $0b34                                  ; $4385: $01 $34 $0b
    ld bc, $0b64                                  ; $4388: $01 $64 $0b
    ld bc, $0b8c                                  ; $438b: $01 $8c $0b
    ld bc, $0b9c                                  ; $438e: $01 $9c $0b
    ld bc, $0bbf                                  ; $4391: $01 $bf $0b
    ld bc, $0bee                                  ; $4394: $01 $ee $0b
    ld bc, $0c16                                  ; $4397: $01 $16 $0c
    ld bc, $0c28                                  ; $439a: $01 $28 $0c
    ld bc, $0c3b                                  ; $439d: $01 $3b $0c
    ld bc, $0c4b                                  ; $43a0: $01 $4b $0c
    ld bc, $0c5e                                  ; $43a3: $01 $5e $0c
    ld bc, $0c70                                  ; $43a6: $01 $70 $0c
    ld bc, $0c8d                                  ; $43a9: $01 $8d $0c
    ld bc, $0c9d                                  ; $43ac: $01 $9d $0c
    ld bc, $0cb1                                  ; $43af: $01 $b1 $0c
    ld bc, $0cc1                                  ; $43b2: $01 $c1 $0c
    ld bc, $0ce4                                  ; $43b5: $01 $e4 $0c
    ld bc, $0d28                                  ; $43b8: $01 $28 $0d
    ld bc, $0d44                                  ; $43bb: $01 $44 $0d
    ld bc, $0d47                                  ; $43be: $01 $47 $0d
    ld bc, $0d67                                  ; $43c1: $01 $67 $0d
    ld bc, $0d7c                                  ; $43c4: $01 $7c $0d
    ld bc, $0da1                                  ; $43c7: $01 $a1 $0d
    ld bc, $0dac                                  ; $43ca: $01 $ac $0d
    ld bc, $0dc7                                  ; $43cd: $01 $c7 $0d
    ld bc, $0df1                                  ; $43d0: $01 $f1 $0d
    ld bc, $0e6b                                  ; $43d3: $01 $6b $0e
    ld bc, $0e82                                  ; $43d6: $01 $82 $0e
    ld bc, $0e8f                                  ; $43d9: $01 $8f $0e
    ld bc, $0ea6                                  ; $43dc: $01 $a6 $0e
    ld bc, $0ebb                                  ; $43df: $01 $bb $0e
    ld bc, $0ef5                                  ; $43e2: $01 $f5 $0e
    ld bc, $0f16                                  ; $43e5: $01 $16 $0f
    ld bc, $0f3a                                  ; $43e8: $01 $3a $0f
    ld bc, $0f63                                  ; $43eb: $01 $63 $0f
    ld bc, $0fa9                                  ; $43ee: $01 $a9 $0f
    ld bc, $0ff2                                  ; $43f1: $01 $f2 $0f
    ld bc, $1031                                  ; $43f4: $01 $31 $10
    ld bc, $1072                                  ; $43f7: $01 $72 $10
    ld bc, $10a5                                  ; $43fa: $01 $a5 $10
    ld bc, $10f2                                  ; $43fd: $01 $f2 $10
    ld bc, $1130                                  ; $4400: $01 $30 $11
    ld bc, $1170                                  ; $4403: $01 $70 $11
    ld bc, $11ab                                  ; $4406: $01 $ab $11
    ld bc, $11ef                                  ; $4409: $01 $ef $11
    ld bc, $121b                                  ; $440c: $01 $1b $12
    ld bc, $1242                                  ; $440f: $01 $42 $12
    ld bc, $126e                                  ; $4412: $01 $6e $12
    ld bc, $12b3                                  ; $4415: $01 $b3 $12
    ld bc, $12eb                                  ; $4418: $01 $eb $12
    ld bc, $1325                                  ; $441b: $01 $25 $13
    ld bc, $1368                                  ; $441e: $01 $68 $13
    ld bc, $1392                                  ; $4421: $01 $92 $13
    ld bc, $13d1                                  ; $4424: $01 $d1 $13
    ld bc, $1417                                  ; $4427: $01 $17 $14
    ld bc, $143a                                  ; $442a: $01 $3a $14
    ld bc, $1471                                  ; $442d: $01 $71 $14
    ld bc, $149b                                  ; $4430: $01 $9b $14
    ld bc, $14c7                                  ; $4433: $01 $c7 $14
    ld bc, $14f9                                  ; $4436: $01 $f9 $14
    ld bc, $1535                                  ; $4439: $01 $35 $15
    ld bc, $157e                                  ; $443c: $01 $7e $15
    ld bc, $15c2                                  ; $443f: $01 $c2 $15
    ld bc, $160c                                  ; $4442: $01 $0c $16
    ld bc, $163f                                  ; $4445: $01 $3f $16
    ld bc, $1675                                  ; $4448: $01 $75 $16
    ld bc, $16b9                                  ; $444b: $01 $b9 $16
    ld bc, $16fc                                  ; $444e: $01 $fc $16
    ld bc, $174a                                  ; $4451: $01 $4a $17
    ld bc, $179e                                  ; $4454: $01 $9e $17
    ld bc, $17da                                  ; $4457: $01 $da $17
    ld bc, $1810                                  ; $445a: $01 $10 $18
    ld bc, $185b                                  ; $445d: $01 $5b $18
    ld bc, $1891                                  ; $4460: $01 $91 $18
    ld bc, $18ba                                  ; $4463: $01 $ba $18
    ld bc, $18ec                                  ; $4466: $01 $ec $18
    ld bc, $1920                                  ; $4469: $01 $20 $19
    ld bc, $1936                                  ; $446c: $01 $36 $19
    ld bc, $1950                                  ; $446f: $01 $50 $19
    ld bc, $1962                                  ; $4472: $01 $62 $19
    ld bc, $197a                                  ; $4475: $01 $7a $19
    ld bc, $19a0                                  ; $4478: $01 $a0 $19
    ld bc, $19a8                                  ; $447b: $01 $a8 $19
    ld bc, $19c8                                  ; $447e: $01 $c8 $19
    ld bc, $19cd                                  ; $4481: $01 $cd $19
    ld bc, $19fe                                  ; $4484: $01 $fe $19
    ld bc, $1a23                                  ; $4487: $01 $23 $1a
    ld bc, $1a3a                                  ; $448a: $01 $3a $1a
    ld bc, $1a65                                  ; $448d: $01 $65 $1a
    ld bc, $1a7a                                  ; $4490: $01 $7a $1a
    ld bc, $1a85                                  ; $4493: $01 $85 $1a
    ld bc, $1ad2                                  ; $4496: $01 $d2 $1a
    ld bc, $1afb                                  ; $4499: $01 $fb $1a
    ld bc, $1b2a                                  ; $449c: $01 $2a $1b
    ld bc, $1b3f                                  ; $449f: $01 $3f $1b
    ld bc, $1b61                                  ; $44a2: $01 $61 $1b
    ld bc, $1b81                                  ; $44a5: $01 $81 $1b
    ld bc, $1b95                                  ; $44a8: $01 $95 $1b
    ld bc, $1ba1                                  ; $44ab: $01 $a1 $1b
    ld bc, $1bb6                                  ; $44ae: $01 $b6 $1b
    ld bc, $1bcc                                  ; $44b1: $01 $cc $1b
    ld bc, $1be9                                  ; $44b4: $01 $e9 $1b
    ld bc, $1bf9                                  ; $44b7: $01 $f9 $1b
    ld bc, $1c0b                                  ; $44ba: $01 $0b $1c
    ld bc, $1c1e                                  ; $44bd: $01 $1e $1c
    ld bc, $1c53                                  ; $44c0: $01 $53 $1c
    ld bc, $1c68                                  ; $44c3: $01 $68 $1c
    ld bc, $1c7e                                  ; $44c6: $01 $7e $1c
    ld bc, $1c94                                  ; $44c9: $01 $94 $1c
    ld bc, $1caf                                  ; $44cc: $01 $af $1c
    ld bc, $1cd2                                  ; $44cf: $01 $d2 $1c
    ld bc, $1cda                                  ; $44d2: $01 $da $1c
    ld bc, $1cfb                                  ; $44d5: $01 $fb $1c
    ld bc, $1d07                                  ; $44d8: $01 $07 $1d
    ld bc, $1d48                                  ; $44db: $01 $48 $1d
    ld bc, $1d78                                  ; $44de: $01 $78 $1d
    ld bc, $1d88                                  ; $44e1: $01 $88 $1d
    ld bc, $1da5                                  ; $44e4: $01 $a5 $1d
    ld bc, $1db5                                  ; $44e7: $01 $b5 $1d
    ld bc, $1df4                                  ; $44ea: $01 $f4 $1d
    ld bc, $1e03                                  ; $44ed: $01 $03 $1e
    ld bc, $1e1c                                  ; $44f0: $01 $1c $1e
    ld bc, $1e34                                  ; $44f3: $01 $34 $1e
    ld bc, $1e4d                                  ; $44f6: $01 $4d $1e
    ld bc, $1ea6                                  ; $44f9: $01 $a6 $1e
    ld bc, $1eb5                                  ; $44fc: $01 $b5 $1e
    ld bc, $1ec8                                  ; $44ff: $01 $c8 $1e
    ld bc, $1ed3                                  ; $4502: $01 $d3 $1e
    ld bc, $1ede                                  ; $4505: $01 $de $1e
    ld bc, $1efe                                  ; $4508: $01 $fe $1e
    ld bc, $1f07                                  ; $450b: $01 $07 $1f
    ld bc, $1f11                                  ; $450e: $01 $11 $1f
    ld bc, $1f1e                                  ; $4511: $01 $1e $1f
    ld bc, $1f3c                                  ; $4514: $01 $3c $1f
    ld bc, $1f41                                  ; $4517: $01 $41 $1f
    ld bc, $1f62                                  ; $451a: $01 $62 $1f
    ld bc, $1f81                                  ; $451d: $01 $81 $1f
    ld bc, $1f8e                                  ; $4520: $01 $8e $1f
    ld bc, $1fb2                                  ; $4523: $01 $b2 $1f
    ld bc, $1fd0                                  ; $4526: $01 $d0 $1f
    ld bc, $2008                                  ; $4529: $01 $08 $20
    ld bc, $2027                                  ; $452c: $01 $27 $20
    ld bc, $2057                                  ; $452f: $01 $57 $20
    ld bc, $208e                                  ; $4532: $01 $8e $20
    ld bc, $20c2                                  ; $4535: $01 $c2 $20
    ld bc, $210a                                  ; $4538: $01 $0a $21
    ld bc, $2133                                  ; $453b: $01 $33 $21
    ld bc, $215e                                  ; $453e: $01 $5e $21
    ld bc, $21cb                                  ; $4541: $01 $cb $21
    ld bc, $21f7                                  ; $4544: $01 $f7 $21
    ld bc, $2246                                  ; $4547: $01 $46 $22
    ld bc, $2257                                  ; $454a: $01 $57 $22
    ld bc, $228a                                  ; $454d: $01 $8a $22
    ld bc, $234e                                  ; $4550: $01 $4e $23
    ld bc, $2375                                  ; $4553: $01 $75 $23
    ld bc, $2391                                  ; $4556: $01 $91 $23
    ld bc, $23ba                                  ; $4559: $01 $ba $23
    ld bc, $23e1                                  ; $455c: $01 $e1 $23
    ld bc, $23f6                                  ; $455f: $01 $f6 $23
    ld bc, $2402                                  ; $4562: $01 $02 $24
    ld bc, $243e                                  ; $4565: $01 $3e $24
    ld bc, $2445                                  ; $4568: $01 $45 $24
    ld bc, $2456                                  ; $456b: $01 $56 $24
    ld bc, $24ae                                  ; $456e: $01 $ae $24
    ld bc, $24d7                                  ; $4571: $01 $d7 $24
    ld bc, $2501                                  ; $4574: $01 $01 $25
    ld bc, $2518                                  ; $4577: $01 $18 $25
    ld bc, $254e                                  ; $457a: $01 $4e $25
    ld bc, $2581                                  ; $457d: $01 $81 $25
    ld bc, $25a0                                  ; $4580: $01 $a0 $25
    ld bc, $25cd                                  ; $4583: $01 $cd $25
    ld bc, $25ee                                  ; $4586: $01 $ee $25
    ld bc, $2606                                  ; $4589: $01 $06 $26
    ld bc, $2620                                  ; $458c: $01 $20 $26
    ld bc, $264d                                  ; $458f: $01 $4d $26
    ld bc, $265c                                  ; $4592: $01 $5c $26
    ld bc, $2686                                  ; $4595: $01 $86 $26
    ld bc, $26ac                                  ; $4598: $01 $ac $26
    ld bc, $26b6                                  ; $459b: $01 $b6 $26
    ld bc, $26e4                                  ; $459e: $01 $e4 $26
    ld bc, $2700                                  ; $45a1: $01 $00 $27
    ld bc, $2709                                  ; $45a4: $01 $09 $27
    ld bc, $2755                                  ; $45a7: $01 $55 $27
    ld bc, $275b                                  ; $45aa: $01 $5b $27
    ld bc, $27f9                                  ; $45ad: $01 $f9 $27
    ld bc, $2806                                  ; $45b0: $01 $06 $28
    ld bc, $2813                                  ; $45b3: $01 $13 $28
    ld bc, $2834                                  ; $45b6: $01 $34 $28
    ld bc, $2854                                  ; $45b9: $01 $54 $28
    ld bc, $288b                                  ; $45bc: $01 $8b $28
    ld bc, $28c9                                  ; $45bf: $01 $c9 $28
    ld bc, $28f5                                  ; $45c2: $01 $f5 $28
    ld bc, $2918                                  ; $45c5: $01 $18 $29
    ld bc, $295d                                  ; $45c8: $01 $5d $29
    ld bc, $29ca                                  ; $45cb: $01 $ca $29
    ld bc, $2a01                                  ; $45ce: $01 $01 $2a
    ld bc, $2a36                                  ; $45d1: $01 $36 $2a
    ld bc, $2a49                                  ; $45d4: $01 $49 $2a
    ld bc, $2a6d                                  ; $45d7: $01 $6d $2a
    ld bc, $2a85                                  ; $45da: $01 $85 $2a
    ld bc, $2ab8                                  ; $45dd: $01 $b8 $2a
    ld bc, $2ace                                  ; $45e0: $01 $ce $2a
    ld bc, $2af3                                  ; $45e3: $01 $f3 $2a
    ld bc, $2b2a                                  ; $45e6: $01 $2a $2b
    ld bc, $2b5d                                  ; $45e9: $01 $5d $2b
    ld bc, $2b86                                  ; $45ec: $01 $86 $2b
    ld bc, $2bdc                                  ; $45ef: $01 $dc $2b
    ld bc, $2c05                                  ; $45f2: $01 $05 $2c
    ld bc, $2c61                                  ; $45f5: $01 $61 $2c
    ld bc, $2c96                                  ; $45f8: $01 $96 $2c
    ld bc, $2cc8                                  ; $45fb: $01 $c8 $2c
    ld bc, $2d01                                  ; $45fe: $01 $01 $2d
    ld bc, $2d48                                  ; $4601: $01 $48 $2d
    ld bc, $2d66                                  ; $4604: $01 $66 $2d
    ld bc, $2d84                                  ; $4607: $01 $84 $2d
    ld bc, $2da8                                  ; $460a: $01 $a8 $2d
    ld bc, $2de2                                  ; $460d: $01 $e2 $2d
    ld bc, $2df3                                  ; $4610: $01 $f3 $2d
    ld bc, $2e0d                                  ; $4613: $01 $0d $2e
    ld bc, $2e23                                  ; $4616: $01 $23 $2e
    ld bc, $2e5a                                  ; $4619: $01 $5a $2e
    ld bc, $2e9b                                  ; $461c: $01 $9b $2e
    ld bc, $2eb4                                  ; $461f: $01 $b4 $2e
    ld bc, $2ecd                                  ; $4622: $01 $cd $2e
    ld bc, $2eff                                  ; $4625: $01 $ff $2e
    ld bc, $2f1f                                  ; $4628: $01 $1f $2f
    ld bc, $2f73                                  ; $462b: $01 $73 $2f
    ld bc, $2f92                                  ; $462e: $01 $92 $2f
    ld bc, $2fc9                                  ; $4631: $01 $c9 $2f
    ld bc, $2fff                                  ; $4634: $01 $ff $2f
    ld bc, $302d                                  ; $4637: $01 $2d $30
    ld bc, $3065                                  ; $463a: $01 $65 $30
    ld bc, $307e                                  ; $463d: $01 $7e $30
    ld bc, $30b1                                  ; $4640: $01 $b1 $30
    ld bc, $30cf                                  ; $4643: $01 $cf $30
    ld bc, $30f5                                  ; $4646: $01 $f5 $30
    ld bc, $310b                                  ; $4649: $01 $0b $31
    ld bc, $3140                                  ; $464c: $01 $40 $31
    ld bc, $3172                                  ; $464f: $01 $72 $31
    ld bc, $318a                                  ; $4652: $01 $8a $31
    ld bc, $31bc                                  ; $4655: $01 $bc $31
    ld bc, $31eb                                  ; $4658: $01 $eb $31
    ld bc, $3214                                  ; $465b: $01 $14 $32
    ld bc, $324a                                  ; $465e: $01 $4a $32
    ld bc, $3278                                  ; $4661: $01 $78 $32
    ld bc, $329f                                  ; $4664: $01 $9f $32
    ld bc, $32c5                                  ; $4667: $01 $c5 $32
    ld bc, $3308                                  ; $466a: $01 $08 $33
    ld bc, $334c                                  ; $466d: $01 $4c $33
    ld bc, $3388                                  ; $4670: $01 $88 $33
    ld bc, $33ba                                  ; $4673: $01 $ba $33
    ld bc, $33fc                                  ; $4676: $01 $fc $33
    ld bc, $341b                                  ; $4679: $01 $1b $34
    ld bc, $3438                                  ; $467c: $01 $38 $34
    ld bc, $3469                                  ; $467f: $01 $69 $34
    ld bc, $348c                                  ; $4682: $01 $8c $34
    ld bc, $34bb                                  ; $4685: $01 $bb $34
    ld bc, $34d6                                  ; $4688: $01 $d6 $34
    ld bc, $34fd                                  ; $468b: $01 $fd $34
    ld bc, $353b                                  ; $468e: $01 $3b $35
    ld bc, $356d                                  ; $4691: $01 $6d $35
    ld bc, $357b                                  ; $4694: $01 $7b $35
    ld bc, $35a8                                  ; $4697: $01 $a8 $35
    ld bc, $35bd                                  ; $469a: $01 $bd $35
    ld bc, $35e1                                  ; $469d: $01 $e1 $35
    ld bc, $35f6                                  ; $46a0: $01 $f6 $35
    ld bc, $3600                                  ; $46a3: $01 $00 $36
    ld bc, $3610                                  ; $46a6: $01 $10 $36
    ld bc, $3628                                  ; $46a9: $01 $28 $36
    ld bc, $3652                                  ; $46ac: $01 $52 $36
    ld bc, $369d                                  ; $46af: $01 $9d $36
    ld bc, $36a3                                  ; $46b2: $01 $a3 $36
    ld bc, $36ff                                  ; $46b5: $01 $ff $36
    ld bc, $370b                                  ; $46b8: $01 $0b $37
    ld bc, $3769                                  ; $46bb: $01 $69 $37
    ld bc, $378d                                  ; $46be: $01 $8d $37
    ld bc, $37a4                                  ; $46c1: $01 $a4 $37
    ld bc, $37cd                                  ; $46c4: $01 $cd $37
    ld bc, $381c                                  ; $46c7: $01 $1c $38
    ld bc, $384d                                  ; $46ca: $01 $4d $38
    ld bc, $385f                                  ; $46cd: $01 $5f $38
    ld bc, $3872                                  ; $46d0: $01 $72 $38
    ld bc, $388b                                  ; $46d3: $01 $8b $38
    ld bc, $38b5                                  ; $46d6: $01 $b5 $38
    ld bc, $38d7                                  ; $46d9: $01 $d7 $38
    ld bc, $38e8                                  ; $46dc: $01 $e8 $38
    ld bc, $38f7                                  ; $46df: $01 $f7 $38
    ld bc, $3930                                  ; $46e2: $01 $30 $39
    ld bc, $3972                                  ; $46e5: $01 $72 $39
    ld bc, $398a                                  ; $46e8: $01 $8a $39
    ld bc, $39be                                  ; $46eb: $01 $be $39
    ld bc, $39f4                                  ; $46ee: $01 $f4 $39
    ld bc, $3a0e                                  ; $46f1: $01 $0e $3a
    ld bc, $3a31                                  ; $46f4: $01 $31 $3a
    ld bc, $3a44                                  ; $46f7: $01 $44 $3a
    ld bc, $3a64                                  ; $46fa: $01 $64 $3a
    ld bc, $3a78                                  ; $46fd: $01 $78 $3a
    ld bc, $3a8b                                  ; $4700: $01 $8b $3a
    ld bc, $3aad                                  ; $4703: $01 $ad $3a
    ld bc, $3ad0                                  ; $4706: $01 $d0 $3a
    ld bc, $3b26                                  ; $4709: $01 $26 $3b
    ld bc, $3b43                                  ; $470c: $01 $43 $3b
    ld bc, $3bab                                  ; $470f: $01 $ab $3b
    ld bc, $3be7                                  ; $4712: $01 $e7 $3b
    ld bc, $3c01                                  ; $4715: $01 $01 $3c
    ld bc, $3c35                                  ; $4718: $01 $35 $3c
    ld bc, $3c79                                  ; $471b: $01 $79 $3c
    ld bc, $3cca                                  ; $471e: $01 $ca $3c
    ld bc, $3d00                                  ; $4721: $01 $00 $3d
    ld bc, $3d14                                  ; $4724: $01 $14 $3d
    ld bc, $3d27                                  ; $4727: $01 $27 $3d
    ld bc, $3d49                                  ; $472a: $01 $49 $3d
    ld bc, $3d62                                  ; $472d: $01 $62 $3d
    ld bc, $3d6e                                  ; $4730: $01 $6e $3d
    ld bc, $3d7e                                  ; $4733: $01 $7e $3d
    ld bc, $3d93                                  ; $4736: $01 $93 $3d
    ld bc, $3da7                                  ; $4739: $01 $a7 $3d
    ld bc, $3dd0                                  ; $473c: $01 $d0 $3d
    ld bc, $3de7                                  ; $473f: $01 $e7 $3d
    ld bc, $3df8                                  ; $4742: $01 $f8 $3d
    ld bc, $3e19                                  ; $4745: $01 $19 $3e
    ld bc, $3ead                                  ; $4748: $01 $ad $3e
    ld bc, $3ebe                                  ; $474b: $01 $be $3e
    ld bc, $3ed2                                  ; $474e: $01 $d2 $3e
    ld bc, $3f08                                  ; $4751: $01 $08 $3f
    ld bc, $3f20                                  ; $4754: $01 $20 $3f
    ld bc, $3f4f                                  ; $4757: $01 $4f $3f
    ld bc, $3f8f                                  ; $475a: $01 $8f $3f
    ld [bc], a                                    ; $475d: $02
    ld bc, $0200                                  ; $475e: $01 $00 $02
    ld e, a                                       ; $4761: $5f
    nop                                           ; $4762: $00
    ld [bc], a                                    ; $4763: $02
    ld h, a                                       ; $4764: $67
    nop                                           ; $4765: $00
    ld [bc], a                                    ; $4766: $02
    add h                                         ; $4767: $84
    nop                                           ; $4768: $00
    ld [bc], a                                    ; $4769: $02
    sub b                                         ; $476a: $90
    nop                                           ; $476b: $00
    ld [bc], a                                    ; $476c: $02
    and a                                         ; $476d: $a7
    nop                                           ; $476e: $00
    ld [bc], a                                    ; $476f: $02
    call Call_000_0200                            ; $4770: $cd $00 $02
    dec b                                         ; $4773: $05
    ld bc, $4d02                                  ; $4774: $01 $02 $4d
    ld bc, $7602                                  ; $4777: $01 $02 $76
    ld bc, $bf02                                  ; $477a: $01 $02 $bf
    ld bc, $d302                                  ; $477d: $01 $02 $d3
    ld bc, $e302                                  ; $4780: $01 $02 $e3
    ld bc, $f102                                  ; $4783: $01 $02 $f1
    ld bc, $0902                                  ; $4786: $01 $02 $09
    ld [bc], a                                    ; $4789: $02
    ld [bc], a                                    ; $478a: $02
    add hl, sp                                    ; $478b: $39
    ld [bc], a                                    ; $478c: $02
    ld [bc], a                                    ; $478d: $02
    sub [hl]                                      ; $478e: $96
    ld [bc], a                                    ; $478f: $02
    ld [bc], a                                    ; $4790: $02
    call $0202                                    ; $4791: $cd $02 $02
    ld bc, $0203                                  ; $4794: $01 $03 $02
    ld b, d                                       ; $4797: $42
    inc bc                                        ; $4798: $03
    ld [bc], a                                    ; $4799: $02
    ld [hl], h                                    ; $479a: $74
    inc bc                                        ; $479b: $03
    ld [bc], a                                    ; $479c: $02
    sub a                                         ; $479d: $97
    inc bc                                        ; $479e: $03
    ld [bc], a                                    ; $479f: $02
    cp d                                          ; $47a0: $ba
    inc bc                                        ; $47a1: $03
    ld [bc], a                                    ; $47a2: $02
    ld [$0203], a                                 ; $47a3: $ea $03 $02
    rst $38                                       ; $47a6: $ff
    inc bc                                        ; $47a7: $03
    ld [bc], a                                    ; $47a8: $02
    dec bc                                        ; $47a9: $0b
    inc b                                         ; $47aa: $04
    ld [bc], a                                    ; $47ab: $02
    rra                                           ; $47ac: $1f
    inc b                                         ; $47ad: $04
    ld [bc], a                                    ; $47ae: $02
    inc a                                         ; $47af: $3c
    inc b                                         ; $47b0: $04
    ld [bc], a                                    ; $47b1: $02
    ld l, l                                       ; $47b2: $6d
    inc b                                         ; $47b3: $04
    ld [bc], a                                    ; $47b4: $02
    adc l                                         ; $47b5: $8d
    inc b                                         ; $47b6: $04
    ld [bc], a                                    ; $47b7: $02
    and a                                         ; $47b8: $a7
    inc b                                         ; $47b9: $04
    ld [bc], a                                    ; $47ba: $02
    or [hl]                                       ; $47bb: $b6
    inc b                                         ; $47bc: $04
    ld [bc], a                                    ; $47bd: $02
    add sp, $04                                   ; $47be: $e8 $04
    ld [bc], a                                    ; $47c0: $02
    ld d, $05                                     ; $47c1: $16 $05
    ld [bc], a                                    ; $47c3: $02
    ld h, $05                                     ; $47c4: $26 $05
    ld [bc], a                                    ; $47c6: $02
    ld d, e                                       ; $47c7: $53
    dec b                                         ; $47c8: $05
    ld [bc], a                                    ; $47c9: $02
    ld h, h                                       ; $47ca: $64
    dec b                                         ; $47cb: $05
    ld [bc], a                                    ; $47cc: $02
    ld [hl], a                                    ; $47cd: $77
    dec b                                         ; $47ce: $05
    ld [bc], a                                    ; $47cf: $02
    sub [hl]                                      ; $47d0: $96
    dec b                                         ; $47d1: $05
    ld [bc], a                                    ; $47d2: $02
    xor d                                         ; $47d3: $aa
    dec b                                         ; $47d4: $05
    ld [bc], a                                    ; $47d5: $02
    db $d3                                        ; $47d6: $d3
    dec b                                         ; $47d7: $05
    ld [bc], a                                    ; $47d8: $02
    push af                                       ; $47d9: $f5
    dec b                                         ; $47da: $05
    ld [bc], a                                    ; $47db: $02
    ld a, [de]                                    ; $47dc: $1a
    ld b, $02                                     ; $47dd: $06 $02
    jr c, @+$08                                   ; $47df: $38 $06

    ld [bc], a                                    ; $47e1: $02
    ld l, b                                       ; $47e2: $68
    ld b, $02                                     ; $47e3: $06 $02
    sub b                                         ; $47e5: $90
    ld b, $02                                     ; $47e6: $06 $02
    cp l                                          ; $47e8: $bd
    ld b, $02                                     ; $47e9: $06 $02
    db $ed                                        ; $47eb: $ed
    ld b, $02                                     ; $47ec: $06 $02
    ld [de], a                                    ; $47ee: $12
    rlca                                          ; $47ef: $07
    ld [bc], a                                    ; $47f0: $02
    ld b, h                                       ; $47f1: $44
    rlca                                          ; $47f2: $07
    ld [bc], a                                    ; $47f3: $02
    ld h, b                                       ; $47f4: $60
    rlca                                          ; $47f5: $07
    ld [bc], a                                    ; $47f6: $02
    ld [hl], h                                    ; $47f7: $74
    rlca                                          ; $47f8: $07
    ld [bc], a                                    ; $47f9: $02
    sbc c                                         ; $47fa: $99
    rlca                                          ; $47fb: $07
    ld [bc], a                                    ; $47fc: $02
    or [hl]                                       ; $47fd: $b6

Call_06b_47fe:
    rlca                                          ; $47fe: $07
    ld [bc], a                                    ; $47ff: $02
    ret c                                         ; $4800: $d8

    rlca                                          ; $4801: $07
    ld [bc], a                                    ; $4802: $02
    sbc $07                                       ; $4803: $de $07
    ld [bc], a                                    ; $4805: $02
    db $e4                                        ; $4806: $e4
    rlca                                          ; $4807: $07
    ld [bc], a                                    ; $4808: $02
    ld [$0207], a                                 ; $4809: $ea $07 $02
    db $f4                                        ; $480c: $f4
    rlca                                          ; $480d: $07
    ld [bc], a                                    ; $480e: $02
    ei                                            ; $480f: $fb
    rlca                                          ; $4810: $07
    ld [bc], a                                    ; $4811: $02
    ld sp, $0208                                  ; $4812: $31 $08 $02
    ld c, e                                       ; $4815: $4b
    ld [$5a02], sp                                ; $4816: $08 $02 $5a
    ld [$6402], sp                                ; $4819: $08 $02 $64
    ld [$8002], sp                                ; $481c: $08 $02 $80
    ld [$9e02], sp                                ; $481f: $08 $02 $9e
    ld [$ad02], sp                                ; $4822: $08 $02 $ad
    ld [$b902], sp                                ; $4825: $08 $02 $b9
    ld [$db02], sp                                ; $4828: $08 $02 $db
    ld [$ef02], sp                                ; $482b: $08 $02 $ef
    ld [$0a02], sp                                ; $482e: $08 $02 $0a
    add hl, bc                                    ; $4831: $09
    ld [bc], a                                    ; $4832: $02
    inc h                                         ; $4833: $24
    add hl, bc                                    ; $4834: $09
    ld [bc], a                                    ; $4835: $02
    scf                                           ; $4836: $37
    add hl, bc                                    ; $4837: $09
    ld [bc], a                                    ; $4838: $02
    ld h, e                                       ; $4839: $63
    add hl, bc                                    ; $483a: $09
    ld [bc], a                                    ; $483b: $02
    ld l, l                                       ; $483c: $6d
    add hl, bc                                    ; $483d: $09
    ld [bc], a                                    ; $483e: $02
    sbc c                                         ; $483f: $99
    add hl, bc                                    ; $4840: $09
    ld [bc], a                                    ; $4841: $02
    and l                                         ; $4842: $a5
    add hl, bc                                    ; $4843: $09
    ld [bc], a                                    ; $4844: $02
    add $09                                       ; $4845: $c6 $09
    ld [bc], a                                    ; $4847: $02
    sbc $09                                       ; $4848: $de $09
    ld [bc], a                                    ; $484a: $02
    db $ed                                        ; $484b: $ed
    add hl, bc                                    ; $484c: $09
    ld [bc], a                                    ; $484d: $02
    ld h, d                                       ; $484e: $62
    ld a, [bc]                                    ; $484f: $0a
    ld [bc], a                                    ; $4850: $02
    ld l, d                                       ; $4851: $6a
    ld a, [bc]                                    ; $4852: $0a
    ld [bc], a                                    ; $4853: $02
    ld l, a                                       ; $4854: $6f
    ld a, [bc]                                    ; $4855: $0a
    ld [bc], a                                    ; $4856: $02
    ld [hl], a                                    ; $4857: $77
    ld a, [bc]                                    ; $4858: $0a
    ld [bc], a                                    ; $4859: $02
    ret z                                         ; $485a: $c8

    ld a, [bc]                                    ; $485b: $0a
    ld [bc], a                                    ; $485c: $02
    sbc e                                         ; $485d: $9b
    dec bc                                        ; $485e: $0b
    ld [bc], a                                    ; $485f: $02
    call z, $020b                                 ; $4860: $cc $0b $02
    rst $20                                       ; $4863: $e7
    dec bc                                        ; $4864: $0b
    ld [bc], a                                    ; $4865: $02
    ld a, [$020b]                                 ; $4866: $fa $0b $02
    ld b, $0c                                     ; $4869: $06 $0c
    ld [bc], a                                    ; $486b: $02
    rla                                           ; $486c: $17
    inc c                                         ; $486d: $0c
    ld [bc], a                                    ; $486e: $02
    cpl                                           ; $486f: $2f
    inc c                                         ; $4870: $0c
    ld [bc], a                                    ; $4871: $02
    ld c, l                                       ; $4872: $4d
    inc c                                         ; $4873: $0c
    ld [bc], a                                    ; $4874: $02
    ld l, b                                       ; $4875: $68
    inc c                                         ; $4876: $0c
    ld [bc], a                                    ; $4877: $02
    sub [hl]                                      ; $4878: $96
    inc c                                         ; $4879: $0c
    ld [bc], a                                    ; $487a: $02
    rst $08                                       ; $487b: $cf
    inc c                                         ; $487c: $0c
    ld [bc], a                                    ; $487d: $02
    ld d, $0d                                     ; $487e: $16 $0d
    ld [bc], a                                    ; $4880: $02
    ld b, d                                       ; $4881: $42
    dec c                                         ; $4882: $0d
    ld [bc], a                                    ; $4883: $02
    xor l                                         ; $4884: $ad
    dec c                                         ; $4885: $0d
    ld [bc], a                                    ; $4886: $02
    or l                                          ; $4887: $b5
    dec c                                         ; $4888: $0d
    ld [bc], a                                    ; $4889: $02
    db $fd                                        ; $488a: $fd
    dec c                                         ; $488b: $0d
    ld [bc], a                                    ; $488c: $02
    inc de                                        ; $488d: $13
    ld c, $02                                     ; $488e: $0e $02
    jr c, @+$10                                   ; $4890: $38 $0e

    ld [bc], a                                    ; $4892: $02
    ld a, b                                       ; $4893: $78
    ld c, $02                                     ; $4894: $0e $02
    sub b                                         ; $4896: $90
    ld c, $02                                     ; $4897: $0e $02
    and c                                         ; $4899: $a1
    ld c, $02                                     ; $489a: $0e $02
    ret z                                         ; $489c: $c8

    ld c, $02                                     ; $489d: $0e $02
    call nc, $020e                                ; $489f: $d4 $0e $02
    push hl                                       ; $48a2: $e5
    ld c, $02                                     ; $48a3: $0e $02
    ld hl, sp+$0e                                 ; $48a5: $f8 $0e
    ld [bc], a                                    ; $48a7: $02
    ld bc, $020f                                  ; $48a8: $01 $0f $02
    dec h                                         ; $48ab: $25
    rrca                                          ; $48ac: $0f
    ld [bc], a                                    ; $48ad: $02
    dec a                                         ; $48ae: $3d
    rrca                                          ; $48af: $0f
    ld [bc], a                                    ; $48b0: $02
    ld d, l                                       ; $48b1: $55
    rrca                                          ; $48b2: $0f
    ld [bc], a                                    ; $48b3: $02
    ld [hl], e                                    ; $48b4: $73
    rrca                                          ; $48b5: $0f
    ld [bc], a                                    ; $48b6: $02
    add l                                         ; $48b7: $85
    rrca                                          ; $48b8: $0f
    ld [bc], a                                    ; $48b9: $02
    sbc b                                         ; $48ba: $98
    rrca                                          ; $48bb: $0f
    ld [bc], a                                    ; $48bc: $02
    xor a                                         ; $48bd: $af
    rrca                                          ; $48be: $0f
    ld [bc], a                                    ; $48bf: $02
    reti                                          ; $48c0: $d9


    rrca                                          ; $48c1: $0f
    ld [bc], a                                    ; $48c2: $02
    rst $30                                       ; $48c3: $f7
    rrca                                          ; $48c4: $0f
    ld [bc], a                                    ; $48c5: $02
    ld c, d                                       ; $48c6: $4a
    db $10                                        ; $48c7: $10
    ld [bc], a                                    ; $48c8: $02
    cp b                                          ; $48c9: $b8
    db $10                                        ; $48ca: $10
    ld [bc], a                                    ; $48cb: $02
    push bc                                       ; $48cc: $c5
    db $10                                        ; $48cd: $10
    ld [bc], a                                    ; $48ce: $02
    ld b, $11                                     ; $48cf: $06 $11
    ld [bc], a                                    ; $48d1: $02
    rla                                           ; $48d2: $17
    ld de, $6402                                  ; $48d3: $11 $02 $64
    ld de, $8c02                                  ; $48d6: $11 $02 $8c
    ld de, $b202                                  ; $48d9: $11 $02 $b2
    ld de, $e902                                  ; $48dc: $11 $02 $e9
    ld de, $0c02                                  ; $48df: $11 $02 $0c
    ld [de], a                                    ; $48e2: $12
    ld [bc], a                                    ; $48e3: $02
    ld h, $12                                     ; $48e4: $26 $12
    ld [bc], a                                    ; $48e6: $02
    ld l, e                                       ; $48e7: $6b
    ld [de], a                                    ; $48e8: $12
    ld [bc], a                                    ; $48e9: $02
    ld [hl], c                                    ; $48ea: $71
    ld [de], a                                    ; $48eb: $12
    ld [bc], a                                    ; $48ec: $02
    ld a, [hl]                                    ; $48ed: $7e
    ld [de], a                                    ; $48ee: $12
    ld [bc], a                                    ; $48ef: $02
    sbc d                                         ; $48f0: $9a
    ld [de], a                                    ; $48f1: $12
    ld [bc], a                                    ; $48f2: $02
    or c                                          ; $48f3: $b1
    ld [de], a                                    ; $48f4: $12
    ld [bc], a                                    ; $48f5: $02
    sub $12                                       ; $48f6: $d6 $12
    ld [bc], a                                    ; $48f8: $02
    ld [bc], a                                    ; $48f9: $02
    inc de                                        ; $48fa: $13
    ld [bc], a                                    ; $48fb: $02
    rra                                           ; $48fc: $1f
    inc de                                        ; $48fd: $13
    ld [bc], a                                    ; $48fe: $02
    add hl, hl                                    ; $48ff: $29
    inc de                                        ; $4900: $13
    ld [bc], a                                    ; $4901: $02
    add hl, sp                                    ; $4902: $39
    inc de                                        ; $4903: $13
    ld [bc], a                                    ; $4904: $02
    ld h, e                                       ; $4905: $63
    inc de                                        ; $4906: $13
    ld [bc], a                                    ; $4907: $02
    ld a, c                                       ; $4908: $79
    inc de                                        ; $4909: $13
    ld [bc], a                                    ; $490a: $02
    add [hl]                                      ; $490b: $86
    inc de                                        ; $490c: $13
    ld [bc], a                                    ; $490d: $02
    sbc e                                         ; $490e: $9b
    inc de                                        ; $490f: $13
    ld [bc], a                                    ; $4910: $02
    rst $18                                       ; $4911: $df
    inc de                                        ; $4912: $13
    ld [bc], a                                    ; $4913: $02
    ld d, b                                       ; $4914: $50
    inc d                                         ; $4915: $14
    ld [bc], a                                    ; $4916: $02
    ld h, d                                       ; $4917: $62
    inc d                                         ; $4918: $14
    ld [bc], a                                    ; $4919: $02
    rst $10                                       ; $491a: $d7
    inc d                                         ; $491b: $14
    ld [bc], a                                    ; $491c: $02
    ld c, $15                                     ; $491d: $0e $15
    ld [bc], a                                    ; $491f: $02
    ld c, b                                       ; $4920: $48
    dec d                                         ; $4921: $15
    ld [bc], a                                    ; $4922: $02
    ld h, l                                       ; $4923: $65
    dec d                                         ; $4924: $15
    ld [bc], a                                    ; $4925: $02
    jp nc, $0215                                  ; $4926: $d2 $15 $02

    call c, $0215                                 ; $4929: $dc $15 $02
    ld [$0216], sp                                ; $492c: $08 $16 $02
    inc h                                         ; $492f: $24
    ld d, $02                                     ; $4930: $16 $02
    ld h, l                                       ; $4932: $65
    ld d, $02                                     ; $4933: $16 $02
    db $d3                                        ; $4935: $d3
    ld d, $02                                     ; $4936: $16 $02
    rst $30                                       ; $4938: $f7
    ld d, $02                                     ; $4939: $16 $02
    ld l, $17                                     ; $493b: $2e $17
    ld [bc], a                                    ; $493d: $02
    ld e, a                                       ; $493e: $5f
    rla                                           ; $493f: $17
    ld [bc], a                                    ; $4940: $02
    ld a, d                                       ; $4941: $7a
    rla                                           ; $4942: $17
    ld [bc], a                                    ; $4943: $02
    add l                                         ; $4944: $85
    rla                                           ; $4945: $17
    ld [bc], a                                    ; $4946: $02
    sub l                                         ; $4947: $95
    rla                                           ; $4948: $17
    ld [bc], a                                    ; $4949: $02
    cp l                                          ; $494a: $bd
    rla                                           ; $494b: $17
    ld [bc], a                                    ; $494c: $02
    call c, $0217                                 ; $494d: $dc $17 $02
    ei                                            ; $4950: $fb
    rla                                           ; $4951: $17
    ld [bc], a                                    ; $4952: $02
    rla                                           ; $4953: $17
    jr @+$04                                      ; $4954: $18 $02

    adc l                                         ; $4956: $8d
    jr @+$04                                      ; $4957: $18 $02

    sub h                                         ; $4959: $94
    jr @+$04                                      ; $495a: $18 $02

    cp l                                          ; $495c: $bd
    jr @+$04                                      ; $495d: $18 $02

    jp nc, $0218                                  ; $495f: $d2 $18 $02

    inc bc                                        ; $4962: $03
    add hl, de                                    ; $4963: $19
    ld [bc], a                                    ; $4964: $02
    dec sp                                        ; $4965: $3b
    add hl, de                                    ; $4966: $19
    ld [bc], a                                    ; $4967: $02
    ld b, b                                       ; $4968: $40
    add hl, de                                    ; $4969: $19
    ld [bc], a                                    ; $496a: $02
    ld d, b                                       ; $496b: $50
    add hl, de                                    ; $496c: $19
    ld [bc], a                                    ; $496d: $02
    sub d                                         ; $496e: $92
    add hl, de                                    ; $496f: $19
    ld [bc], a                                    ; $4970: $02
    and l                                         ; $4971: $a5
    add hl, de                                    ; $4972: $19
    ld [bc], a                                    ; $4973: $02
    push de                                       ; $4974: $d5
    add hl, de                                    ; $4975: $19
    ld [bc], a                                    ; $4976: $02
    rst $38                                       ; $4977: $ff
    add hl, de                                    ; $4978: $19
    ld [bc], a                                    ; $4979: $02
    ld d, a                                       ; $497a: $57
    ld a, [de]                                    ; $497b: $1a
    ld [bc], a                                    ; $497c: $02
    ld a, c                                       ; $497d: $79
    ld a, [de]                                    ; $497e: $1a
    ld [bc], a                                    ; $497f: $02
    adc [hl]                                      ; $4980: $8e
    ld a, [de]                                    ; $4981: $1a
    ld [bc], a                                    ; $4982: $02
    and a                                         ; $4983: $a7
    ld a, [de]                                    ; $4984: $1a
    ld [bc], a                                    ; $4985: $02
    cp a                                          ; $4986: $bf
    ld a, [de]                                    ; $4987: $1a
    ld [bc], a                                    ; $4988: $02
    reti                                          ; $4989: $d9


    ld a, [de]                                    ; $498a: $1a
    ld [bc], a                                    ; $498b: $02
    ld a, [$021a]                                 ; $498c: $fa $1a $02
    ld [$021b], sp                                ; $498f: $08 $1b $02
    dec c                                         ; $4992: $0d
    dec de                                        ; $4993: $1b
    ld [bc], a                                    ; $4994: $02
    jr nc, jr_06b_49b2                            ; $4995: $30 $1b

    ld [bc], a                                    ; $4997: $02
    ld d, a                                       ; $4998: $57
    dec de                                        ; $4999: $1b
    ld [bc], a                                    ; $499a: $02
    ld a, [hl]                                    ; $499b: $7e
    dec de                                        ; $499c: $1b
    ld [bc], a                                    ; $499d: $02
    sub [hl]                                      ; $499e: $96
    dec de                                        ; $499f: $1b
    ld [bc], a                                    ; $49a0: $02
    cp b                                          ; $49a1: $b8
    dec de                                        ; $49a2: $1b
    ld [bc], a                                    ; $49a3: $02
    reti                                          ; $49a4: $d9


    dec de                                        ; $49a5: $1b
    ld [bc], a                                    ; $49a6: $02
    add hl, bc                                    ; $49a7: $09
    inc e                                         ; $49a8: $1c
    ld [bc], a                                    ; $49a9: $02
    inc e                                         ; $49aa: $1c
    inc e                                         ; $49ab: $1c
    ld [bc], a                                    ; $49ac: $02
    ld a, $1c                                     ; $49ad: $3e $1c
    ld [bc], a                                    ; $49af: $02
    ld d, [hl]                                    ; $49b0: $56
    inc e                                         ; $49b1: $1c

jr_06b_49b2:
    ld [bc], a                                    ; $49b2: $02
    ld l, a                                       ; $49b3: $6f
    inc e                                         ; $49b4: $1c
    ld [bc], a                                    ; $49b5: $02
    adc b                                         ; $49b6: $88
    inc e                                         ; $49b7: $1c
    ld [bc], a                                    ; $49b8: $02
    or d                                          ; $49b9: $b2
    inc e                                         ; $49ba: $1c
    ld [bc], a                                    ; $49bb: $02
    pop de                                        ; $49bc: $d1
    inc e                                         ; $49bd: $1c
    ld [bc], a                                    ; $49be: $02
    db $dd                                        ; $49bf: $dd
    inc e                                         ; $49c0: $1c
    ld [bc], a                                    ; $49c1: $02
    ld c, $1d                                     ; $49c2: $0e $1d
    ld [bc], a                                    ; $49c4: $02
    ld h, h                                       ; $49c5: $64
    dec e                                         ; $49c6: $1d
    ld [bc], a                                    ; $49c7: $02
    ld a, b                                       ; $49c8: $78
    dec e                                         ; $49c9: $1d
    ld [bc], a                                    ; $49ca: $02
    sub [hl]                                      ; $49cb: $96
    dec e                                         ; $49cc: $1d
    ld [bc], a                                    ; $49cd: $02
    call nz, $021d                                ; $49ce: $c4 $1d $02
    sub $1d                                       ; $49d1: $d6 $1d
    ld [bc], a                                    ; $49d3: $02
    add hl, de                                    ; $49d4: $19
    ld e, $02                                     ; $49d5: $1e $02
    ld c, h                                       ; $49d7: $4c
    ld e, $02                                     ; $49d8: $1e $02
    adc e                                         ; $49da: $8b
    ld e, $02                                     ; $49db: $1e $02
    db $d3                                        ; $49dd: $d3
    ld e, $02                                     ; $49de: $1e $02
    db $fc                                        ; $49e0: $fc
    ld e, $02                                     ; $49e1: $1e $02
    ld d, $1f                                     ; $49e3: $16 $1f
    ld [bc], a                                    ; $49e5: $02
    ld [hl-], a                                   ; $49e6: $32
    rra                                           ; $49e7: $1f
    ld [bc], a                                    ; $49e8: $02
    ld a, $1f                                     ; $49e9: $3e $1f
    ld [bc], a                                    ; $49eb: $02
    ld a, b                                       ; $49ec: $78
    rra                                           ; $49ed: $1f
    ld [bc], a                                    ; $49ee: $02
    sbc b                                         ; $49ef: $98
    rra                                           ; $49f0: $1f
    ld [bc], a                                    ; $49f1: $02
    jp c, Jump_000_021f                           ; $49f2: $da $1f $02

    db $ec                                        ; $49f5: $ec
    rra                                           ; $49f6: $1f
    ld [bc], a                                    ; $49f7: $02
    inc bc                                        ; $49f8: $03
    jr nz, @+$04                                  ; $49f9: $20 $02

    dec bc                                        ; $49fb: $0b
    jr nz, @+$04                                  ; $49fc: $20 $02

    inc hl                                        ; $49fe: $23
    jr nz, @+$04                                  ; $49ff: $20 $02

    ld c, b                                       ; $4a01: $48
    jr nz, @+$04                                  ; $4a02: $20 $02

    ld e, e                                       ; $4a04: $5b
    jr nz, @+$04                                  ; $4a05: $20 $02

    cp c                                          ; $4a07: $b9
    jr nz, @+$04                                  ; $4a08: $20 $02

    db $eb                                        ; $4a0a: $eb
    jr nz, @+$04                                  ; $4a0b: $20 $02

    rra                                           ; $4a0d: $1f
    ld hl, $4902                                  ; $4a0e: $21 $02 $49
    ld hl, $8e02                                  ; $4a11: $21 $02 $8e
    ld hl, $d502                                  ; $4a14: $21 $02 $d5
    ld hl, $0802                                  ; $4a17: $21 $02 $08
    ld [hl+], a                                   ; $4a1a: $22
    ld [bc], a                                    ; $4a1b: $02
    ld b, [hl]                                    ; $4a1c: $46
    ld [hl+], a                                   ; $4a1d: $22
    ld [bc], a                                    ; $4a1e: $02
    ld [hl], b                                    ; $4a1f: $70
    ld [hl+], a                                   ; $4a20: $22
    ld [bc], a                                    ; $4a21: $02
    sub e                                         ; $4a22: $93
    ld [hl+], a                                   ; $4a23: $22
    ld [bc], a                                    ; $4a24: $02
    or $22                                        ; $4a25: $f6 $22
    ld [bc], a                                    ; $4a27: $02
    ld a, [hl+]                                   ; $4a28: $2a
    inc hl                                        ; $4a29: $23
    ld [bc], a                                    ; $4a2a: $02
    ccf                                           ; $4a2b: $3f
    inc hl                                        ; $4a2c: $23
    ld [bc], a                                    ; $4a2d: $02
    ld [hl], l                                    ; $4a2e: $75
    inc hl                                        ; $4a2f: $23
    ld [bc], a                                    ; $4a30: $02
    sub h                                         ; $4a31: $94
    inc hl                                        ; $4a32: $23
    ld [bc], a                                    ; $4a33: $02
    jp z, Jump_000_0223                           ; $4a34: $ca $23 $02

    ldh [rNR44], a                                ; $4a37: $e0 $23
    ld [bc], a                                    ; $4a39: $02
    ld a, [c]                                     ; $4a3a: $f2
    inc hl                                        ; $4a3b: $23
    ld [bc], a                                    ; $4a3c: $02
    rrca                                          ; $4a3d: $0f
    inc h                                         ; $4a3e: $24
    ld [bc], a                                    ; $4a3f: $02
    inc sp                                        ; $4a40: $33
    inc h                                         ; $4a41: $24
    ld [bc], a                                    ; $4a42: $02
    ld c, b                                       ; $4a43: $48
    inc h                                         ; $4a44: $24
    ld [bc], a                                    ; $4a45: $02
    sbc a                                         ; $4a46: $9f
    inc h                                         ; $4a47: $24
    ld [bc], a                                    ; $4a48: $02
    pop bc                                        ; $4a49: $c1
    inc h                                         ; $4a4a: $24
    ld [bc], a                                    ; $4a4b: $02
    inc c                                         ; $4a4c: $0c
    dec h                                         ; $4a4d: $25
    ld [bc], a                                    ; $4a4e: $02
    ld h, $25                                     ; $4a4f: $26 $25
    ld [bc], a                                    ; $4a51: $02
    ld c, b                                       ; $4a52: $48
    dec h                                         ; $4a53: $25
    ld [bc], a                                    ; $4a54: $02
    ld l, a                                       ; $4a55: $6f
    dec h                                         ; $4a56: $25
    ld [bc], a                                    ; $4a57: $02
    adc b                                         ; $4a58: $88
    dec h                                         ; $4a59: $25
    ld [bc], a                                    ; $4a5a: $02
    sbc a                                         ; $4a5b: $9f
    dec h                                         ; $4a5c: $25
    ld [bc], a                                    ; $4a5d: $02
    push de                                       ; $4a5e: $d5
    dec h                                         ; $4a5f: $25
    ld [bc], a                                    ; $4a60: $02
    cp $25                                        ; $4a61: $fe $25
    ld [bc], a                                    ; $4a63: $02
    add hl, de                                    ; $4a64: $19
    ld h, $02                                     ; $4a65: $26 $02
    ld c, b                                       ; $4a67: $48
    ld h, $02                                     ; $4a68: $26 $02
    ld l, l                                       ; $4a6a: $6d
    ld h, $02                                     ; $4a6b: $26 $02
    add d                                         ; $4a6d: $82
    ld h, $02                                     ; $4a6e: $26 $02
    sub a                                         ; $4a70: $97
    ld h, $02                                     ; $4a71: $26 $02
    xor e                                         ; $4a73: $ab
    ld h, $02                                     ; $4a74: $26 $02
    or a                                          ; $4a76: $b7
    ld h, $02                                     ; $4a77: $26 $02
    call z, Call_000_0226                         ; $4a79: $cc $26 $02
    call c, Call_000_0226                         ; $4a7c: $dc $26 $02
    db $ec                                        ; $4a7f: $ec
    ld h, $02                                     ; $4a80: $26 $02
    ld bc, $0227                                  ; $4a82: $01 $27 $02
    dec e                                         ; $4a85: $1d
    daa                                           ; $4a86: $27
    ld [bc], a                                    ; $4a87: $02
    ld [hl+], a                                   ; $4a88: $22
    daa                                           ; $4a89: $27
    ld [bc], a                                    ; $4a8a: $02
    ld a, [hl-]                                   ; $4a8b: $3a
    daa                                           ; $4a8c: $27
    ld [bc], a                                    ; $4a8d: $02
    ld d, e                                       ; $4a8e: $53
    daa                                           ; $4a8f: $27
    ld [bc], a                                    ; $4a90: $02
    add l                                         ; $4a91: $85
    daa                                           ; $4a92: $27
    ld [bc], a                                    ; $4a93: $02
    push de                                       ; $4a94: $d5
    daa                                           ; $4a95: $27
    ld [bc], a                                    ; $4a96: $02
    db $fc                                        ; $4a97: $fc
    daa                                           ; $4a98: $27
    ld [bc], a                                    ; $4a99: $02
    rla                                           ; $4a9a: $17
    jr z, @+$04                                   ; $4a9b: $28 $02

    inc h                                         ; $4a9d: $24
    jr z, @+$04                                   ; $4a9e: $28 $02

    ld c, c                                       ; $4aa0: $49
    jr z, @+$04                                   ; $4aa1: $28 $02

    add h                                         ; $4aa3: $84
    jr z, @+$04                                   ; $4aa4: $28 $02

    or e                                          ; $4aa6: $b3
    jr z, @+$04                                   ; $4aa7: $28 $02

    rst $18                                       ; $4aa9: $df
    jr z, jr_06b_4aae                             ; $4aaa: $28 $02

    add hl, de                                    ; $4aac: $19
    add hl, hl                                    ; $4aad: $29

jr_06b_4aae:
    ld [bc], a                                    ; $4aae: $02
    ld [hl+], a                                   ; $4aaf: $22
    add hl, hl                                    ; $4ab0: $29
    ld [bc], a                                    ; $4ab1: $02
    ld b, b                                       ; $4ab2: $40
    add hl, hl                                    ; $4ab3: $29
    ld [bc], a                                    ; $4ab4: $02
    ld e, [hl]                                    ; $4ab5: $5e
    add hl, hl                                    ; $4ab6: $29
    ld [bc], a                                    ; $4ab7: $02
    xor [hl]                                      ; $4ab8: $ae
    add hl, hl                                    ; $4ab9: $29
    ld [bc], a                                    ; $4aba: $02
    jp Jump_000_0229                              ; $4abb: $c3 $29 $02


    reti                                          ; $4abe: $d9


    add hl, hl                                    ; $4abf: $29
    ld [bc], a                                    ; $4ac0: $02
    inc bc                                        ; $4ac1: $03
    ld a, [hl+]                                   ; $4ac2: $2a
    ld [bc], a                                    ; $4ac3: $02
    ld a, [de]                                    ; $4ac4: $1a
    ld a, [hl+]                                   ; $4ac5: $2a
    ld [bc], a                                    ; $4ac6: $02
    inc sp                                        ; $4ac7: $33
    ld a, [hl+]                                   ; $4ac8: $2a
    ld [bc], a                                    ; $4ac9: $02
    ld e, d                                       ; $4aca: $5a
    ld a, [hl+]                                   ; $4acb: $2a
    ld [bc], a                                    ; $4acc: $02
    sub b                                         ; $4acd: $90
    ld a, [hl+]                                   ; $4ace: $2a
    ld [bc], a                                    ; $4acf: $02
    ret nc                                        ; $4ad0: $d0

    ld a, [hl+]                                   ; $4ad1: $2a
    ld [bc], a                                    ; $4ad2: $02
    rla                                           ; $4ad3: $17
    dec hl                                        ; $4ad4: $2b
    ld [bc], a                                    ; $4ad5: $02
    ld e, b                                       ; $4ad6: $58
    dec hl                                        ; $4ad7: $2b
    ld [bc], a                                    ; $4ad8: $02
    adc a                                         ; $4ad9: $8f
    dec hl                                        ; $4ada: $2b
    ld [bc], a                                    ; $4adb: $02
    xor l                                         ; $4adc: $ad
    dec hl                                        ; $4add: $2b
    ld [bc], a                                    ; $4ade: $02
    pop hl                                        ; $4adf: $e1
    dec hl                                        ; $4ae0: $2b
    ld [bc], a                                    ; $4ae1: $02
    rst $38                                       ; $4ae2: $ff
    dec hl                                        ; $4ae3: $2b
    ld [bc], a                                    ; $4ae4: $02
    ld a, [hl+]                                   ; $4ae5: $2a
    inc l                                         ; $4ae6: $2c
    ld [bc], a                                    ; $4ae7: $02
    ccf                                           ; $4ae8: $3f
    inc l                                         ; $4ae9: $2c
    ld [bc], a                                    ; $4aea: $02
    ld h, c                                       ; $4aeb: $61
    inc l                                         ; $4aec: $2c
    ld [bc], a                                    ; $4aed: $02
    ld a, l                                       ; $4aee: $7d
    inc l                                         ; $4aef: $2c
    ld [bc], a                                    ; $4af0: $02
    adc [hl]                                      ; $4af1: $8e
    inc l                                         ; $4af2: $2c
    ld [bc], a                                    ; $4af3: $02
    or d                                          ; $4af4: $b2
    inc l                                         ; $4af5: $2c
    ld [bc], a                                    ; $4af6: $02
    rst $18                                       ; $4af7: $df
    inc l                                         ; $4af8: $2c
    ld [bc], a                                    ; $4af9: $02
    ld c, $2d                                     ; $4afa: $0e $2d
    ld [bc], a                                    ; $4afc: $02
    dec h                                         ; $4afd: $25
    dec l                                         ; $4afe: $2d
    ld [bc], a                                    ; $4aff: $02
    ld c, h                                       ; $4b00: $4c
    dec l                                         ; $4b01: $2d
    ld [bc], a                                    ; $4b02: $02
    ld e, e                                       ; $4b03: $5b
    dec l                                         ; $4b04: $2d
    ld [bc], a                                    ; $4b05: $02
    halt                                          ; $4b06: $76
    dec l                                         ; $4b07: $2d
    ld [bc], a                                    ; $4b08: $02
    adc b                                         ; $4b09: $88
    dec l                                         ; $4b0a: $2d
    ld [bc], a                                    ; $4b0b: $02
    or [hl]                                       ; $4b0c: $b6
    dec l                                         ; $4b0d: $2d
    ld [bc], a                                    ; $4b0e: $02
    push hl                                       ; $4b0f: $e5
    dec l                                         ; $4b10: $2d
    ld [bc], a                                    ; $4b11: $02
    ei                                            ; $4b12: $fb
    dec l                                         ; $4b13: $2d
    ld [bc], a                                    ; $4b14: $02
    daa                                           ; $4b15: $27
    ld l, $02                                     ; $4b16: $2e $02
    ld sp, $022e                                  ; $4b18: $31 $2e $02
    ld c, [hl]                                    ; $4b1b: $4e
    ld l, $02                                     ; $4b1c: $2e $02
    ld [hl], b                                    ; $4b1e: $70
    ld l, $02                                     ; $4b1f: $2e $02
    sbc b                                         ; $4b21: $98
    ld l, $02                                     ; $4b22: $2e $02
    cp h                                          ; $4b24: $bc
    ld l, $02                                     ; $4b25: $2e $02
    ret c                                         ; $4b27: $d8

    ld l, $02                                     ; $4b28: $2e $02
    db $fd                                        ; $4b2a: $fd
    ld l, $02                                     ; $4b2b: $2e $02
    rra                                           ; $4b2d: $1f
    cpl                                           ; $4b2e: $2f
    ld [bc], a                                    ; $4b2f: $02
    inc a                                         ; $4b30: $3c
    cpl                                           ; $4b31: $2f
    ld [bc], a                                    ; $4b32: $02
    ld l, c                                       ; $4b33: $69
    cpl                                           ; $4b34: $2f
    ld [bc], a                                    ; $4b35: $02
    sbc b                                         ; $4b36: $98
    cpl                                           ; $4b37: $2f
    ld [bc], a                                    ; $4b38: $02
    ret nz                                        ; $4b39: $c0

    cpl                                           ; $4b3a: $2f
    ld [bc], a                                    ; $4b3b: $02
    sbc $2f                                       ; $4b3c: $de $2f
    ld [bc], a                                    ; $4b3e: $02
    db $fc                                        ; $4b3f: $fc
    cpl                                           ; $4b40: $2f
    ld [bc], a                                    ; $4b41: $02
    ld a, [de]                                    ; $4b42: $1a
    jr nc, @+$04                                  ; $4b43: $30 $02

    ld b, c                                       ; $4b45: $41
    jr nc, @+$04                                  ; $4b46: $30 $02

    ld h, b                                       ; $4b48: $60
    jr nc, @+$04                                  ; $4b49: $30 $02

    sbc d                                         ; $4b4b: $9a
    jr nc, @+$04                                  ; $4b4c: $30 $02

    ret nz                                        ; $4b4e: $c0

    jr nc, @+$04                                  ; $4b4f: $30 $02

    push af                                       ; $4b51: $f5
    jr nc, jr_06b_4b56                            ; $4b52: $30 $02

    jr nc, jr_06b_4b87                            ; $4b54: $30 $31

jr_06b_4b56:
    ld [bc], a                                    ; $4b56: $02
    add hl, sp                                    ; $4b57: $39
    ld sp, $5602                                  ; $4b58: $31 $02 $56
    ld sp, $7f02                                  ; $4b5b: $31 $02 $7f
    ld sp, $9402                                  ; $4b5e: $31 $02 $94
    ld sp, $ed02                                  ; $4b61: $31 $02 $ed
    ld sp, $0e02                                  ; $4b64: $31 $02 $0e
    ld [hl-], a                                   ; $4b67: $32
    ld [bc], a                                    ; $4b68: $02
    ld sp, $0232                                  ; $4b69: $31 $32 $02
    ld b, h                                       ; $4b6c: $44
    ld [hl-], a                                   ; $4b6d: $32
    ld [bc], a                                    ; $4b6e: $02
    ld h, h                                       ; $4b6f: $64
    ld [hl-], a                                   ; $4b70: $32
    ld [bc], a                                    ; $4b71: $02
    ld [hl], h                                    ; $4b72: $74
    ld [hl-], a                                   ; $4b73: $32
    ld [bc], a                                    ; $4b74: $02
    sbc b                                         ; $4b75: $98
    ld [hl-], a                                   ; $4b76: $32
    ld [bc], a                                    ; $4b77: $02
    and b                                         ; $4b78: $a0
    ld [hl-], a                                   ; $4b79: $32
    ld [bc], a                                    ; $4b7a: $02
    or e                                          ; $4b7b: $b3
    ld [hl-], a                                   ; $4b7c: $32
    ld [bc], a                                    ; $4b7d: $02
    ld a, [c]                                     ; $4b7e: $f2
    ld [hl-], a                                   ; $4b7f: $32
    ld [bc], a                                    ; $4b80: $02
    nop                                           ; $4b81: $00
    inc sp                                        ; $4b82: $33
    ld [bc], a                                    ; $4b83: $02
    inc d                                         ; $4b84: $14
    inc sp                                        ; $4b85: $33
    ld [bc], a                                    ; $4b86: $02

jr_06b_4b87:
    ld b, e                                       ; $4b87: $43
    inc sp                                        ; $4b88: $33
    ld [bc], a                                    ; $4b89: $02
    ld [hl], l                                    ; $4b8a: $75
    inc sp                                        ; $4b8b: $33
    ld [bc], a                                    ; $4b8c: $02
    add d                                         ; $4b8d: $82
    inc sp                                        ; $4b8e: $33
    ld [bc], a                                    ; $4b8f: $02
    adc b                                         ; $4b90: $88
    inc sp                                        ; $4b91: $33
    ld [bc], a                                    ; $4b92: $02
    and l                                         ; $4b93: $a5
    inc sp                                        ; $4b94: $33
    ld [bc], a                                    ; $4b95: $02
    add $33                                       ; $4b96: $c6 $33
    ld [bc], a                                    ; $4b98: $02
    or $33                                        ; $4b99: $f6 $33
    ld [bc], a                                    ; $4b9b: $02
    db $fd                                        ; $4b9c: $fd
    inc sp                                        ; $4b9d: $33
    ld [bc], a                                    ; $4b9e: $02
    jr jr_06b_4bd5                                ; $4b9f: $18 $34

    ld [bc], a                                    ; $4ba1: $02
    scf                                           ; $4ba2: $37
    inc [hl]                                      ; $4ba3: $34
    ld [bc], a                                    ; $4ba4: $02
    ld c, b                                       ; $4ba5: $48
    inc [hl]                                      ; $4ba6: $34
    ld [bc], a                                    ; $4ba7: $02
    cp b                                          ; $4ba8: $b8
    inc [hl]                                      ; $4ba9: $34
    ld [bc], a                                    ; $4baa: $02
    call nz, $0234                                ; $4bab: $c4 $34 $02
    ret z                                         ; $4bae: $c8

    inc [hl]                                      ; $4baf: $34
    ld [bc], a                                    ; $4bb0: $02
    db $dd                                        ; $4bb1: $dd
    inc [hl]                                      ; $4bb2: $34
    ld [bc], a                                    ; $4bb3: $02
    ld a, [de]                                    ; $4bb4: $1a
    dec [hl]                                      ; $4bb5: $35
    ld [bc], a                                    ; $4bb6: $02
    ld b, e                                       ; $4bb7: $43
    dec [hl]                                      ; $4bb8: $35
    ld [bc], a                                    ; $4bb9: $02
    ld e, h                                       ; $4bba: $5c
    dec [hl]                                      ; $4bbb: $35
    ld [bc], a                                    ; $4bbc: $02
    ld a, l                                       ; $4bbd: $7d
    dec [hl]                                      ; $4bbe: $35
    ld [bc], a                                    ; $4bbf: $02
    sub l                                         ; $4bc0: $95
    dec [hl]                                      ; $4bc1: $35
    ld [bc], a                                    ; $4bc2: $02
    jp c, $0235                                   ; $4bc3: $da $35 $02

    xor $35                                       ; $4bc6: $ee $35
    ld [bc], a                                    ; $4bc8: $02
    nop                                           ; $4bc9: $00
    ld [hl], $02                                  ; $4bca: $36 $02
    jr @+$38                                      ; $4bcc: $18 $36

    ld [bc], a                                    ; $4bce: $02
    ld [hl-], a                                   ; $4bcf: $32
    ld [hl], $02                                  ; $4bd0: $36 $02
    ld b, d                                       ; $4bd2: $42
    ld [hl], $02                                  ; $4bd3: $36 $02

jr_06b_4bd5:
    ld d, [hl]                                    ; $4bd5: $56
    ld [hl], $02                                  ; $4bd6: $36 $02
    add h                                         ; $4bd8: $84
    ld [hl], $02                                  ; $4bd9: $36 $02
    adc [hl]                                      ; $4bdb: $8e
    ld [hl], $02                                  ; $4bdc: $36 $02
    or b                                          ; $4bde: $b0
    ld [hl], $02                                  ; $4bdf: $36 $02
    db $e4                                        ; $4be1: $e4
    ld [hl], $02                                  ; $4be2: $36 $02
    dec de                                        ; $4be4: $1b
    scf                                           ; $4be5: $37
    ld [bc], a                                    ; $4be6: $02
    ld a, [hl-]                                   ; $4be7: $3a
    scf                                           ; $4be8: $37
    ld [bc], a                                    ; $4be9: $02
    ld a, b                                       ; $4bea: $78
    scf                                           ; $4beb: $37
    ld [bc], a                                    ; $4bec: $02
    adc d                                         ; $4bed: $8a
    scf                                           ; $4bee: $37
    ld [bc], a                                    ; $4bef: $02
    sbc a                                         ; $4bf0: $9f
    scf                                           ; $4bf1: $37
    ld [bc], a                                    ; $4bf2: $02
    db $db                                        ; $4bf3: $db
    scf                                           ; $4bf4: $37
    ld [bc], a                                    ; $4bf5: $02
    ld bc, $0238                                  ; $4bf6: $01 $38 $02
    dec h                                         ; $4bf9: $25
    jr c, @+$04                                   ; $4bfa: $38 $02

    ld [hl], d                                    ; $4bfc: $72
    jr c, @+$04                                   ; $4bfd: $38 $02

    adc a                                         ; $4bff: $8f
    jr c, @+$04                                   ; $4c00: $38 $02

    jp nc, Jump_000_0238                          ; $4c02: $d2 $38 $02

    ld c, $39                                     ; $4c05: $0e $39
    ld [bc], a                                    ; $4c07: $02
    ld a, [de]                                    ; $4c08: $1a
    add hl, sp                                    ; $4c09: $39
    ld [bc], a                                    ; $4c0a: $02
    ld b, a                                       ; $4c0b: $47
    add hl, sp                                    ; $4c0c: $39
    ld [bc], a                                    ; $4c0d: $02
    ld a, [hl]                                    ; $4c0e: $7e
    add hl, sp                                    ; $4c0f: $39
    ld [bc], a                                    ; $4c10: $02
    sbc l                                         ; $4c11: $9d
    add hl, sp                                    ; $4c12: $39
    ld [bc], a                                    ; $4c13: $02
    xor c                                         ; $4c14: $a9
    add hl, sp                                    ; $4c15: $39
    ld [bc], a                                    ; $4c16: $02
    ret nz                                        ; $4c17: $c0

    add hl, sp                                    ; $4c18: $39
    ld [bc], a                                    ; $4c19: $02
    rst $08                                       ; $4c1a: $cf
    add hl, sp                                    ; $4c1b: $39
    ld [bc], a                                    ; $4c1c: $02
    ldh a, [$39]                                  ; $4c1d: $f0 $39
    ld [bc], a                                    ; $4c1f: $02
    inc hl                                        ; $4c20: $23
    ld a, [hl-]                                   ; $4c21: $3a
    ld [bc], a                                    ; $4c22: $02
    dec a                                         ; $4c23: $3d
    ld a, [hl-]                                   ; $4c24: $3a
    ld [bc], a                                    ; $4c25: $02
    ld c, a                                       ; $4c26: $4f
    ld a, [hl-]                                   ; $4c27: $3a
    ld [bc], a                                    ; $4c28: $02
    ld l, [hl]                                    ; $4c29: $6e
    ld a, [hl-]                                   ; $4c2a: $3a
    ld [bc], a                                    ; $4c2b: $02
    add h                                         ; $4c2c: $84
    ld a, [hl-]                                   ; $4c2d: $3a
    ld [bc], a                                    ; $4c2e: $02
    push de                                       ; $4c2f: $d5
    ld a, [hl-]                                   ; $4c30: $3a
    ld [bc], a                                    ; $4c31: $02
    inc bc                                        ; $4c32: $03
    dec sp                                        ; $4c33: $3b
    ld [bc], a                                    ; $4c34: $02
    ld c, b                                       ; $4c35: $48
    dec sp                                        ; $4c36: $3b
    ld [bc], a                                    ; $4c37: $02
    ld d, a                                       ; $4c38: $57
    dec sp                                        ; $4c39: $3b
    ld [bc], a                                    ; $4c3a: $02
    ld l, l                                       ; $4c3b: $6d
    dec sp                                        ; $4c3c: $3b
    ld [bc], a                                    ; $4c3d: $02
    sub d                                         ; $4c3e: $92
    dec sp                                        ; $4c3f: $3b
    ld [bc], a                                    ; $4c40: $02
    push bc                                       ; $4c41: $c5
    dec sp                                        ; $4c42: $3b
    ld [bc], a                                    ; $4c43: $02
    and $3b                                       ; $4c44: $e6 $3b
    ld [bc], a                                    ; $4c46: $02
    rla                                           ; $4c47: $17
    inc a                                         ; $4c48: $3c
    ld [bc], a                                    ; $4c49: $02
    inc hl                                        ; $4c4a: $23
    inc a                                         ; $4c4b: $3c
    ld [bc], a                                    ; $4c4c: $02
    ld e, [hl]                                    ; $4c4d: $5e
    inc a                                         ; $4c4e: $3c
    ld [bc], a                                    ; $4c4f: $02
    sub b                                         ; $4c50: $90
    inc a                                         ; $4c51: $3c
    ld [bc], a                                    ; $4c52: $02
    cp c                                          ; $4c53: $b9
    inc a                                         ; $4c54: $3c
    ld [bc], a                                    ; $4c55: $02
    push hl                                       ; $4c56: $e5
    inc a                                         ; $4c57: $3c
    ld [bc], a                                    ; $4c58: $02
    dec bc                                        ; $4c59: $0b
    dec a                                         ; $4c5a: $3d
    ld [bc], a                                    ; $4c5b: $02
    ld b, l                                       ; $4c5c: $45
    dec a                                         ; $4c5d: $3d
    ld [bc], a                                    ; $4c5e: $02
    ld l, c                                       ; $4c5f: $69
    dec a                                         ; $4c60: $3d
    ld [bc], a                                    ; $4c61: $02
    ld a, h                                       ; $4c62: $7c
    dec a                                         ; $4c63: $3d
    ld [bc], a                                    ; $4c64: $02
    or a                                          ; $4c65: $b7
    dec a                                         ; $4c66: $3d
    ld [bc], a                                    ; $4c67: $02
    rst $10                                       ; $4c68: $d7
    dec a                                         ; $4c69: $3d
    ld [bc], a                                    ; $4c6a: $02
    db $ed                                        ; $4c6b: $ed
    dec a                                         ; $4c6c: $3d
    ld [bc], a                                    ; $4c6d: $02
    ld a, [c]                                     ; $4c6e: $f2
    dec a                                         ; $4c6f: $3d
    ld [bc], a                                    ; $4c70: $02
    jr nz, jr_06b_4cb1                            ; $4c71: $20 $3e

    ld [bc], a                                    ; $4c73: $02
    ld a, [hl-]                                   ; $4c74: $3a
    ld a, $02                                     ; $4c75: $3e $02
    ld c, e                                       ; $4c77: $4b
    ld a, $02                                     ; $4c78: $3e $02
    ld e, e                                       ; $4c7a: $5b
    ld a, $02                                     ; $4c7b: $3e $02
    ld a, l                                       ; $4c7d: $7d
    ld a, $02                                     ; $4c7e: $3e $02
    sub l                                         ; $4c80: $95
    ld a, $02                                     ; $4c81: $3e $02
    cp c                                          ; $4c83: $b9
    ld a, $02                                     ; $4c84: $3e $02
    rst $00                                       ; $4c86: $c7
    ld a, $02                                     ; $4c87: $3e $02
    call c, $023e                                 ; $4c89: $dc $3e $02
    db $fc                                        ; $4c8c: $fc
    ld a, $02                                     ; $4c8d: $3e $02
    ld d, a                                       ; $4c8f: $57
    ccf                                           ; $4c90: $3f
    ld [bc], a                                    ; $4c91: $02
    ld l, [hl]                                    ; $4c92: $6e
    ccf                                           ; $4c93: $3f
    ld [bc], a                                    ; $4c94: $02
    ret nz                                        ; $4c95: $c0

    ccf                                           ; $4c96: $3f
    inc bc                                        ; $4c97: $03
    ld bc, $0300                                  ; $4c98: $01 $00 $03
    inc [hl]                                      ; $4c9b: $34
    nop                                           ; $4c9c: $00
    inc bc                                        ; $4c9d: $03
    ld b, d                                       ; $4c9e: $42
    nop                                           ; $4c9f: $00
    inc bc                                        ; $4ca0: $03
    ld l, c                                       ; $4ca1: $69
    nop                                           ; $4ca2: $00
    inc bc                                        ; $4ca3: $03
    ld [hl], c                                    ; $4ca4: $71
    nop                                           ; $4ca5: $00
    inc bc                                        ; $4ca6: $03
    sbc b                                         ; $4ca7: $98
    nop                                           ; $4ca8: $00
    inc bc                                        ; $4ca9: $03
    xor c                                         ; $4caa: $a9
    nop                                           ; $4cab: $00
    inc bc                                        ; $4cac: $03
    call nz, $0300                                ; $4cad: $c4 $00 $03
    rrca                                          ; $4cb0: $0f

jr_06b_4cb1:
    ld bc, $2803                                  ; $4cb1: $01 $03 $28
    ld bc, $3e03                                  ; $4cb4: $01 $03 $3e
    ld bc, $5403                                  ; $4cb7: $01 $03 $54
    ld bc, $7303                                  ; $4cba: $01 $03 $73
    ld bc, $7d03                                  ; $4cbd: $01 $03 $7d
    ld bc, $8503                                  ; $4cc0: $01 $03 $85
    ld bc, $dd03                                  ; $4cc3: $01 $03 $dd
    ld bc, $f203                                  ; $4cc6: $01 $03 $f2
    ld bc, $0103                                  ; $4cc9: $01 $03 $01
    ld [bc], a                                    ; $4ccc: $02
    inc bc                                        ; $4ccd: $03
    add hl, bc                                    ; $4cce: $09
    ld [bc], a                                    ; $4ccf: $02
    inc bc                                        ; $4cd0: $03
    add hl, hl                                    ; $4cd1: $29
    ld [bc], a                                    ; $4cd2: $02
    inc bc                                        ; $4cd3: $03
    add d                                         ; $4cd4: $82
    ld [bc], a                                    ; $4cd5: $02
    inc bc                                        ; $4cd6: $03
    and d                                         ; $4cd7: $a2
    ld [bc], a                                    ; $4cd8: $02
    inc bc                                        ; $4cd9: $03
    or l                                          ; $4cda: $b5
    ld [bc], a                                    ; $4cdb: $02
    inc bc                                        ; $4cdc: $03
    ret nz                                        ; $4cdd: $c0

    ld [bc], a                                    ; $4cde: $02
    inc bc                                        ; $4cdf: $03
    db $fd                                        ; $4ce0: $fd
    ld [bc], a                                    ; $4ce1: $02
    inc bc                                        ; $4ce2: $03
    inc e                                         ; $4ce3: $1c
    inc bc                                        ; $4ce4: $03
    inc bc                                        ; $4ce5: $03
    ld [hl], $03                                  ; $4ce6: $36 $03
    inc bc                                        ; $4ce8: $03
    ld b, a                                       ; $4ce9: $47
    inc bc                                        ; $4cea: $03
    inc bc                                        ; $4ceb: $03
    ld l, b                                       ; $4cec: $68
    inc bc                                        ; $4ced: $03
    inc bc                                        ; $4cee: $03
    ld a, l                                       ; $4cef: $7d
    inc bc                                        ; $4cf0: $03
    inc bc                                        ; $4cf1: $03
    xor b                                         ; $4cf2: $a8
    inc bc                                        ; $4cf3: $03
    inc bc                                        ; $4cf4: $03
    push de                                       ; $4cf5: $d5
    inc bc                                        ; $4cf6: $03
    inc bc                                        ; $4cf7: $03
    db $eb                                        ; $4cf8: $eb
    inc bc                                        ; $4cf9: $03
    inc bc                                        ; $4cfa: $03
    ld c, e                                       ; $4cfb: $4b
    inc b                                         ; $4cfc: $04
    inc bc                                        ; $4cfd: $03
    ld l, a                                       ; $4cfe: $6f
    inc b                                         ; $4cff: $04
    inc bc                                        ; $4d00: $03
    sub a                                         ; $4d01: $97
    inc b                                         ; $4d02: $04
    inc bc                                        ; $4d03: $03
    cp d                                          ; $4d04: $ba
    inc b                                         ; $4d05: $04
    inc bc                                        ; $4d06: $03
    rst $10                                       ; $4d07: $d7
    inc b                                         ; $4d08: $04
    inc bc                                        ; $4d09: $03
    dec de                                        ; $4d0a: $1b
    dec b                                         ; $4d0b: $05
    inc bc                                        ; $4d0c: $03
    inc hl                                        ; $4d0d: $23
    dec b                                         ; $4d0e: $05
    inc bc                                        ; $4d0f: $03
    ret nz                                        ; $4d10: $c0

    dec b                                         ; $4d11: $05
    inc bc                                        ; $4d12: $03
    jp z, $0305                                   ; $4d13: $ca $05 $03

    call c, $0305                                 ; $4d16: $dc $05 $03
    db $f4                                        ; $4d19: $f4
    dec b                                         ; $4d1a: $05
    inc bc                                        ; $4d1b: $03
    dec b                                         ; $4d1c: $05
    ld b, $03                                     ; $4d1d: $06 $03
    dec a                                         ; $4d1f: $3d
    ld b, $03                                     ; $4d20: $06 $03
    ld a, e                                       ; $4d22: $7b
    ld b, $03                                     ; $4d23: $06 $03
    sub l                                         ; $4d25: $95
    ld b, $03                                     ; $4d26: $06 $03
    ret nc                                        ; $4d28: $d0

    ld b, $03                                     ; $4d29: $06 $03
    add hl, bc                                    ; $4d2b: $09
    rlca                                          ; $4d2c: $07
    inc bc                                        ; $4d2d: $03
    jr nz, jr_06b_4d37                            ; $4d2e: $20 $07

    inc bc                                        ; $4d30: $03
    dec a                                         ; $4d31: $3d
    rlca                                          ; $4d32: $07
    inc bc                                        ; $4d33: $03
    ld [hl], c                                    ; $4d34: $71
    rlca                                          ; $4d35: $07
    inc bc                                        ; $4d36: $03

jr_06b_4d37:
    and b                                         ; $4d37: $a0
    rlca                                          ; $4d38: $07
    inc bc                                        ; $4d39: $03
    cp c                                          ; $4d3a: $b9
    rlca                                          ; $4d3b: $07
    inc bc                                        ; $4d3c: $03
    pop hl                                        ; $4d3d: $e1
    rlca                                          ; $4d3e: $07
    inc bc                                        ; $4d3f: $03
    rst $20                                       ; $4d40: $e7
    rlca                                          ; $4d41: $07
    inc bc                                        ; $4d42: $03
    ld b, e                                       ; $4d43: $43
    ld [$4903], sp                                ; $4d44: $08 $03 $49
    ld [$7c03], sp                                ; $4d47: $08 $03 $7c
    ld [$9d03], sp                                ; $4d4a: $08 $03 $9d
    ld [$b003], sp                                ; $4d4d: $08 $03 $b0
    ld [$c003], sp                                ; $4d50: $08 $03 $c0
    ld [$cd03], sp                                ; $4d53: $08 $03 $cd
    ld [$ee03], sp                                ; $4d56: $08 $03 $ee
    ld [$4603], sp                                ; $4d59: $08 $03 $46
    add hl, bc                                    ; $4d5c: $09
    inc bc                                        ; $4d5d: $03
    ld d, h                                       ; $4d5e: $54
    add hl, bc                                    ; $4d5f: $09
    inc bc                                        ; $4d60: $03
    ld l, h                                       ; $4d61: $6c
    add hl, bc                                    ; $4d62: $09
    inc bc                                        ; $4d63: $03
    ld [hl], h                                    ; $4d64: $74
    add hl, bc                                    ; $4d65: $09
    inc bc                                        ; $4d66: $03
    xor d                                         ; $4d67: $aa
    add hl, bc                                    ; $4d68: $09
    inc bc                                        ; $4d69: $03
    ret z                                         ; $4d6a: $c8

    add hl, bc                                    ; $4d6b: $09
    inc bc                                        ; $4d6c: $03
    jp hl                                         ; $4d6d: $e9


    add hl, bc                                    ; $4d6e: $09
    inc bc                                        ; $4d6f: $03
    ld h, c                                       ; $4d70: $61
    ld a, [bc]                                    ; $4d71: $0a
    inc bc                                        ; $4d72: $03
    add b                                         ; $4d73: $80
    ld a, [bc]                                    ; $4d74: $0a
    inc bc                                        ; $4d75: $03
    sub l                                         ; $4d76: $95
    ld a, [bc]                                    ; $4d77: $0a
    inc bc                                        ; $4d78: $03
    ret nz                                        ; $4d79: $c0

    ld a, [bc]                                    ; $4d7a: $0a
    inc bc                                        ; $4d7b: $03
    dec e                                         ; $4d7c: $1d
    dec bc                                        ; $4d7d: $0b
    inc bc                                        ; $4d7e: $03
    ld e, d                                       ; $4d7f: $5a
    dec bc                                        ; $4d80: $0b
    inc bc                                        ; $4d81: $03
    sub [hl]                                      ; $4d82: $96
    dec bc                                        ; $4d83: $0b
    inc bc                                        ; $4d84: $03
    cp [hl]                                       ; $4d85: $be
    dec bc                                        ; $4d86: $0b
    inc bc                                        ; $4d87: $03
    reti                                          ; $4d88: $d9


    dec bc                                        ; $4d89: $0b
    inc bc                                        ; $4d8a: $03
    ld hl, sp+$0b                                 ; $4d8b: $f8 $0b
    inc bc                                        ; $4d8d: $03
    nop                                           ; $4d8e: $00
    inc c                                         ; $4d8f: $0c
    inc bc                                        ; $4d90: $03
    dec sp                                        ; $4d91: $3b
    inc c                                         ; $4d92: $0c
    inc bc                                        ; $4d93: $03
    ld e, a                                       ; $4d94: $5f
    inc c                                         ; $4d95: $0c
    inc bc                                        ; $4d96: $03
    adc h                                         ; $4d97: $8c
    inc c                                         ; $4d98: $0c
    inc bc                                        ; $4d99: $03
    and [hl]                                      ; $4d9a: $a6
    inc c                                         ; $4d9b: $0c
    inc bc                                        ; $4d9c: $03
    jp c, Jump_000_030c                           ; $4d9d: $da $0c $03

    db $eb                                        ; $4da0: $eb
    inc c                                         ; $4da1: $0c
    inc bc                                        ; $4da2: $03
    ld [$030d], sp                                ; $4da3: $08 $0d $03
    inc de                                        ; $4da6: $13
    dec c                                         ; $4da7: $0d
    inc bc                                        ; $4da8: $03
    ldh [$0d], a                                  ; $4da9: $e0 $0d
    inc bc                                        ; $4dab: $03
    di                                            ; $4dac: $f3
    dec c                                         ; $4dad: $0d
    inc bc                                        ; $4dae: $03
    ld l, e                                       ; $4daf: $6b
    ld c, $03                                     ; $4db0: $0e $03
    adc d                                         ; $4db2: $8a
    ld c, $03                                     ; $4db3: $0e $03
    or h                                          ; $4db5: $b4
    ld c, $03                                     ; $4db6: $0e $03
    db $e3                                        ; $4db8: $e3
    ld c, $03                                     ; $4db9: $0e $03
    ld sp, $030f                                  ; $4dbb: $31 $0f $03
    ld c, c                                       ; $4dbe: $49
    rrca                                          ; $4dbf: $0f
    inc bc                                        ; $4dc0: $03
    ld d, e                                       ; $4dc1: $53
    rrca                                          ; $4dc2: $0f
    inc bc                                        ; $4dc3: $03
    ld e, e                                       ; $4dc4: $5b
    rrca                                          ; $4dc5: $0f
    inc bc                                        ; $4dc6: $03
    ld a, e                                       ; $4dc7: $7b
    rrca                                          ; $4dc8: $0f
    inc bc                                        ; $4dc9: $03
    adc c                                         ; $4dca: $89
    rrca                                          ; $4dcb: $0f
    inc bc                                        ; $4dcc: $03
    and [hl]                                      ; $4dcd: $a6
    rrca                                          ; $4dce: $0f
    inc bc                                        ; $4dcf: $03
    adc $0f                                       ; $4dd0: $ce $0f
    inc bc                                        ; $4dd2: $03
    db $e3                                        ; $4dd3: $e3
    rrca                                          ; $4dd4: $0f
    inc bc                                        ; $4dd5: $03
    ld a, [c]                                     ; $4dd6: $f2
    rrca                                          ; $4dd7: $0f
    inc bc                                        ; $4dd8: $03
    dec [hl]                                      ; $4dd9: $35
    db $10                                        ; $4dda: $10
    inc bc                                        ; $4ddb: $03
    ld e, c                                       ; $4ddc: $59
    db $10                                        ; $4ddd: $10
    inc bc                                        ; $4dde: $03
    ld a, [hl]                                    ; $4ddf: $7e
    db $10                                        ; $4de0: $10
    inc bc                                        ; $4de1: $03
    and b                                         ; $4de2: $a0
    db $10                                        ; $4de3: $10
    inc bc                                        ; $4de4: $03
    sub $10                                       ; $4de5: $d6 $10
    inc bc                                        ; $4de7: $03
    dec c                                         ; $4de8: $0d
    ld de, $2f03                                  ; $4de9: $11 $03 $2f
    ld de, $3d03                                  ; $4dec: $11 $03 $3d
    ld de, $4e03                                  ; $4def: $11 $03 $4e
    ld de, $5f03                                  ; $4df2: $11 $03 $5f
    ld de, $8703                                  ; $4df5: $11 $03 $87
    ld de, $af03                                  ; $4df8: $11 $03 $af
    ld de, $b903                                  ; $4dfb: $11 $03 $b9
    ld de, $e603                                  ; $4dfe: $11 $03 $e6
    ld de, $1403                                  ; $4e01: $11 $03 $14
    ld [de], a                                    ; $4e04: $12
    inc bc                                        ; $4e05: $03
    ld c, b                                       ; $4e06: $48
    ld [de], a                                    ; $4e07: $12
    inc bc                                        ; $4e08: $03
    add h                                         ; $4e09: $84
    ld [de], a                                    ; $4e0a: $12
    inc bc                                        ; $4e0b: $03
    and [hl]                                      ; $4e0c: $a6
    ld [de], a                                    ; $4e0d: $12
    inc bc                                        ; $4e0e: $03
    ret nc                                        ; $4e0f: $d0

    ld [de], a                                    ; $4e10: $12
    inc bc                                        ; $4e11: $03
    scf                                           ; $4e12: $37
    inc de                                        ; $4e13: $13
    inc bc                                        ; $4e14: $03
    ld l, h                                       ; $4e15: $6c
    inc de                                        ; $4e16: $13
    inc bc                                        ; $4e17: $03
    sub d                                         ; $4e18: $92
    inc de                                        ; $4e19: $13
    inc bc                                        ; $4e1a: $03
    push bc                                       ; $4e1b: $c5
    inc de                                        ; $4e1c: $13
    inc bc                                        ; $4e1d: $03
    reti                                          ; $4e1e: $d9


    inc de                                        ; $4e1f: $13
    inc bc                                        ; $4e20: $03
    ldh a, [rNR13]                                ; $4e21: $f0 $13
    inc bc                                        ; $4e23: $03
    inc d                                         ; $4e24: $14
    inc d                                         ; $4e25: $14
    inc bc                                        ; $4e26: $03
    inc a                                         ; $4e27: $3c
    inc d                                         ; $4e28: $14
    inc bc                                        ; $4e29: $03
    ld h, h                                       ; $4e2a: $64
    inc d                                         ; $4e2b: $14
    inc bc                                        ; $4e2c: $03
    add [hl]                                      ; $4e2d: $86
    inc d                                         ; $4e2e: $14
    inc bc                                        ; $4e2f: $03
    xor c                                         ; $4e30: $a9
    inc d                                         ; $4e31: $14
    inc bc                                        ; $4e32: $03
    adc $14                                       ; $4e33: $ce $14
    inc bc                                        ; $4e35: $03
    add hl, de                                    ; $4e36: $19
    dec d                                         ; $4e37: $15
    inc bc                                        ; $4e38: $03
    dec l                                         ; $4e39: $2d
    dec d                                         ; $4e3a: $15
    inc bc                                        ; $4e3b: $03
    ld b, h                                       ; $4e3c: $44
    dec d                                         ; $4e3d: $15
    inc bc                                        ; $4e3e: $03
    ld l, e                                       ; $4e3f: $6b
    dec d                                         ; $4e40: $15
    inc bc                                        ; $4e41: $03
    rst $00                                       ; $4e42: $c7
    dec d                                         ; $4e43: $15
    inc bc                                        ; $4e44: $03
    inc b                                         ; $4e45: $04
    ld d, $03                                     ; $4e46: $16 $03
    rra                                           ; $4e48: $1f
    ld d, $03                                     ; $4e49: $16 $03
    dec l                                         ; $4e4b: $2d
    ld d, $03                                     ; $4e4c: $16 $03
    add hl, sp                                    ; $4e4e: $39
    ld d, $03                                     ; $4e4f: $16 $03
    ld d, h                                       ; $4e51: $54
    ld d, $03                                     ; $4e52: $16 $03
    add e                                         ; $4e54: $83
    ld d, $03                                     ; $4e55: $16 $03
    sub c                                         ; $4e57: $91
    ld d, $03                                     ; $4e58: $16 $03
    xor b                                         ; $4e5a: $a8
    ld d, $03                                     ; $4e5b: $16 $03
    jp nz, Jump_000_0316                          ; $4e5d: $c2 $16 $03

    db $f4                                        ; $4e60: $f4
    ld d, $03                                     ; $4e61: $16 $03
    inc c                                         ; $4e63: $0c
    rla                                           ; $4e64: $17
    inc bc                                        ; $4e65: $03
    ld c, c                                       ; $4e66: $49
    rla                                           ; $4e67: $17
    inc bc                                        ; $4e68: $03
    ld h, a                                       ; $4e69: $67
    rla                                           ; $4e6a: $17
    inc bc                                        ; $4e6b: $03
    ld a, a                                       ; $4e6c: $7f
    rla                                           ; $4e6d: $17
    inc bc                                        ; $4e6e: $03
    sbc d                                         ; $4e6f: $9a
    rla                                           ; $4e70: $17
    inc bc                                        ; $4e71: $03
    or b                                          ; $4e72: $b0
    rla                                           ; $4e73: $17
    inc bc                                        ; $4e74: $03
    ret                                           ; $4e75: $c9


    rla                                           ; $4e76: $17
    inc bc                                        ; $4e77: $03
    db $e4                                        ; $4e78: $e4
    rla                                           ; $4e79: $17
    inc bc                                        ; $4e7a: $03
    push af                                       ; $4e7b: $f5
    rla                                           ; $4e7c: $17
    inc bc                                        ; $4e7d: $03
    ld hl, $0318                                  ; $4e7e: $21 $18 $03
    inc a                                         ; $4e81: $3c
    jr jr_06b_4e87                                ; $4e82: $18 $03

    ld d, l                                       ; $4e84: $55
    jr jr_06b_4e8a                                ; $4e85: $18 $03

jr_06b_4e87:
    ld l, c                                       ; $4e87: $69
    jr jr_06b_4e8d                                ; $4e88: $18 $03

jr_06b_4e8a:
    adc l                                         ; $4e8a: $8d
    jr jr_06b_4e90                                ; $4e8b: $18 $03

jr_06b_4e8d:
    sbc l                                         ; $4e8d: $9d
    jr jr_06b_4e93                                ; $4e8e: $18 $03

jr_06b_4e90:
    pop bc                                        ; $4e90: $c1
    jr jr_06b_4e96                                ; $4e91: $18 $03

jr_06b_4e93:
    and $18                                       ; $4e93: $e6 $18
    inc bc                                        ; $4e95: $03

jr_06b_4e96:
    cp $18                                        ; $4e96: $fe $18
    inc bc                                        ; $4e98: $03
    daa                                           ; $4e99: $27
    add hl, de                                    ; $4e9a: $19
    inc bc                                        ; $4e9b: $03
    ld b, e                                       ; $4e9c: $43
    add hl, de                                    ; $4e9d: $19
    inc bc                                        ; $4e9e: $03
    ld h, c                                       ; $4e9f: $61
    add hl, de                                    ; $4ea0: $19
    inc bc                                        ; $4ea1: $03
    ld a, b                                       ; $4ea2: $78
    add hl, de                                    ; $4ea3: $19
    inc bc                                        ; $4ea4: $03
    sub l                                         ; $4ea5: $95
    add hl, de                                    ; $4ea6: $19
    inc bc                                        ; $4ea7: $03
    cp c                                          ; $4ea8: $b9
    add hl, de                                    ; $4ea9: $19
    inc bc                                        ; $4eaa: $03
    db $e3                                        ; $4eab: $e3
    add hl, de                                    ; $4eac: $19
    inc bc                                        ; $4ead: $03
    rst $38                                       ; $4eae: $ff
    add hl, de                                    ; $4eaf: $19
    inc bc                                        ; $4eb0: $03
    ld e, $1a                                     ; $4eb1: $1e $1a
    inc bc                                        ; $4eb3: $03
    ld b, [hl]                                    ; $4eb4: $46
    ld a, [de]                                    ; $4eb5: $1a
    inc bc                                        ; $4eb6: $03
    ld h, d                                       ; $4eb7: $62
    ld a, [de]                                    ; $4eb8: $1a
    inc bc                                        ; $4eb9: $03
    adc h                                         ; $4eba: $8c
    ld a, [de]                                    ; $4ebb: $1a
    inc bc                                        ; $4ebc: $03
    and [hl]                                      ; $4ebd: $a6
    ld a, [de]                                    ; $4ebe: $1a
    inc bc                                        ; $4ebf: $03
    cp a                                          ; $4ec0: $bf
    ld a, [de]                                    ; $4ec1: $1a
    inc bc                                        ; $4ec2: $03
    push hl                                       ; $4ec3: $e5
    ld a, [de]                                    ; $4ec4: $1a
    inc bc                                        ; $4ec5: $03
    ld [de], a                                    ; $4ec6: $12
    dec de                                        ; $4ec7: $1b
    inc bc                                        ; $4ec8: $03
    dec l                                         ; $4ec9: $2d
    dec de                                        ; $4eca: $1b
    inc bc                                        ; $4ecb: $03
    ld h, d                                       ; $4ecc: $62
    dec de                                        ; $4ecd: $1b
    inc bc                                        ; $4ece: $03
    add e                                         ; $4ecf: $83
    dec de                                        ; $4ed0: $1b
    inc bc                                        ; $4ed1: $03
    or e                                          ; $4ed2: $b3
    dec de                                        ; $4ed3: $1b
    inc bc                                        ; $4ed4: $03
    ldh [rNR31], a                                ; $4ed5: $e0 $1b
    inc bc                                        ; $4ed7: $03
    ei                                            ; $4ed8: $fb
    dec de                                        ; $4ed9: $1b
    inc bc                                        ; $4eda: $03
    ld [hl+], a                                   ; $4edb: $22
    inc e                                         ; $4edc: $1c
    inc bc                                        ; $4edd: $03
    ld l, $1c                                     ; $4ede: $2e $1c
    inc bc                                        ; $4ee0: $03
    ld c, d                                       ; $4ee1: $4a
    inc e                                         ; $4ee2: $1c
    inc bc                                        ; $4ee3: $03
    ld c, [hl]                                    ; $4ee4: $4e
    inc e                                         ; $4ee5: $1c
    inc bc                                        ; $4ee6: $03
    ld e, d                                       ; $4ee7: $5a
    inc e                                         ; $4ee8: $1c
    inc bc                                        ; $4ee9: $03
    ld l, e                                       ; $4eea: $6b
    inc e                                         ; $4eeb: $1c
    inc bc                                        ; $4eec: $03
    cp l                                          ; $4eed: $bd
    inc e                                         ; $4eee: $1c
    inc bc                                        ; $4eef: $03
    db $db                                        ; $4ef0: $db
    inc e                                         ; $4ef1: $1c
    inc bc                                        ; $4ef2: $03
    ld sp, hl                                     ; $4ef3: $f9
    inc e                                         ; $4ef4: $1c
    inc bc                                        ; $4ef5: $03
    rla                                           ; $4ef6: $17
    dec e                                         ; $4ef7: $1d
    inc bc                                        ; $4ef8: $03
    ld b, a                                       ; $4ef9: $47
    dec e                                         ; $4efa: $1d
    inc bc                                        ; $4efb: $03
    ld h, l                                       ; $4efc: $65
    dec e                                         ; $4efd: $1d
    inc bc                                        ; $4efe: $03
    ld a, a                                       ; $4eff: $7f
    dec e                                         ; $4f00: $1d
    inc bc                                        ; $4f01: $03
    adc c                                         ; $4f02: $89
    dec e                                         ; $4f03: $1d
    inc bc                                        ; $4f04: $03
    xor c                                         ; $4f05: $a9
    dec e                                         ; $4f06: $1d
    inc bc                                        ; $4f07: $03
    call c, $031d                                 ; $4f08: $dc $1d $03
    di                                            ; $4f0b: $f3
    dec e                                         ; $4f0c: $1d
    inc bc                                        ; $4f0d: $03
    inc hl                                        ; $4f0e: $23
    ld e, $03                                     ; $4f0f: $1e $03
    scf                                           ; $4f11: $37
    ld e, $03                                     ; $4f12: $1e $03
    ld h, e                                       ; $4f14: $63
    ld e, $03                                     ; $4f15: $1e $03
    ld [hl], e                                    ; $4f17: $73
    ld e, $03                                     ; $4f18: $1e $03
    sub d                                         ; $4f1a: $92
    ld e, $03                                     ; $4f1b: $1e $03
    xor a                                         ; $4f1d: $af
    ld e, $03                                     ; $4f1e: $1e $03
    db $e4                                        ; $4f20: $e4
    ld e, $03                                     ; $4f21: $1e $03
    dec d                                         ; $4f23: $15
    rra                                           ; $4f24: $1f
    inc bc                                        ; $4f25: $03
    ld e, $1f                                     ; $4f26: $1e $1f
    inc bc                                        ; $4f28: $03
    ld a, [hl+]                                   ; $4f29: $2a
    rra                                           ; $4f2a: $1f
    inc bc                                        ; $4f2b: $03
    ld c, c                                       ; $4f2c: $49
    rra                                           ; $4f2d: $1f
    inc bc                                        ; $4f2e: $03
    ld d, l                                       ; $4f2f: $55
    rra                                           ; $4f30: $1f
    inc bc                                        ; $4f31: $03
    ld h, d                                       ; $4f32: $62
    rra                                           ; $4f33: $1f
    inc bc                                        ; $4f34: $03
    add [hl]                                      ; $4f35: $86
    rra                                           ; $4f36: $1f
    inc bc                                        ; $4f37: $03
    push bc                                       ; $4f38: $c5
    rra                                           ; $4f39: $1f
    inc bc                                        ; $4f3a: $03
    push de                                       ; $4f3b: $d5
    rra                                           ; $4f3c: $1f
    inc bc                                        ; $4f3d: $03
    rlca                                          ; $4f3e: $07
    jr nz, jr_06b_4f44                            ; $4f3f: $20 $03

    jr nz, jr_06b_4f63                            ; $4f41: $20 $20

    inc bc                                        ; $4f43: $03

jr_06b_4f44:
    ld c, c                                       ; $4f44: $49
    jr nz, jr_06b_4f4a                            ; $4f45: $20 $03

    ld d, a                                       ; $4f47: $57
    jr nz, @+$05                                  ; $4f48: $20 $03

jr_06b_4f4a:
    inc b                                         ; $4f4a: $04
    ld hl, $1b03                                  ; $4f4b: $21 $03 $1b
    ld hl, $4803                                  ; $4f4e: $21 $03 $48
    ld hl, $9f03                                  ; $4f51: $21 $03 $9f
    ld hl, $c303                                  ; $4f54: $21 $03 $c3
    ld hl, $e503                                  ; $4f57: $21 $03 $e5
    ld hl, $0503                                  ; $4f5a: $21 $03 $05
    ld [hl+], a                                   ; $4f5d: $22
    inc bc                                        ; $4f5e: $03
    ld sp, $0322                                  ; $4f5f: $31 $22 $03
    ld l, h                                       ; $4f62: $6c

jr_06b_4f63:
    ld [hl+], a                                   ; $4f63: $22
    inc bc                                        ; $4f64: $03
    xor e                                         ; $4f65: $ab
    ld [hl+], a                                   ; $4f66: $22
    inc bc                                        ; $4f67: $03
    add $22                                       ; $4f68: $c6 $22
    inc bc                                        ; $4f6a: $03
    ld sp, hl                                     ; $4f6b: $f9
    ld [hl+], a                                   ; $4f6c: $22
    inc bc                                        ; $4f6d: $03
    inc d                                         ; $4f6e: $14
    inc hl                                        ; $4f6f: $23
    inc bc                                        ; $4f70: $03
    jr c, jr_06b_4f96                             ; $4f71: $38 $23

    inc bc                                        ; $4f73: $03
    adc c                                         ; $4f74: $89
    inc hl                                        ; $4f75: $23
    inc bc                                        ; $4f76: $03
    add $23                                       ; $4f77: $c6 $23
    inc bc                                        ; $4f79: $03
    call nc, $0323                                ; $4f7a: $d4 $23 $03
    ld sp, hl                                     ; $4f7d: $f9
    inc hl                                        ; $4f7e: $23
    inc bc                                        ; $4f7f: $03
    ld [de], a                                    ; $4f80: $12
    inc h                                         ; $4f81: $24
    inc bc                                        ; $4f82: $03
    add hl, de                                    ; $4f83: $19
    inc h                                         ; $4f84: $24
    inc bc                                        ; $4f85: $03
    ld [hl], $24                                  ; $4f86: $36 $24
    inc bc                                        ; $4f88: $03
    ld h, h                                       ; $4f89: $64
    inc h                                         ; $4f8a: $24
    inc bc                                        ; $4f8b: $03
    ld e, d                                       ; $4f8c: $5a
    dec h                                         ; $4f8d: $25
    inc bc                                        ; $4f8e: $03
    ld h, c                                       ; $4f8f: $61
    dec h                                         ; $4f90: $25
    inc bc                                        ; $4f91: $03
    ld l, l                                       ; $4f92: $6d
    dec h                                         ; $4f93: $25
    inc bc                                        ; $4f94: $03
    ld a, [hl]                                    ; $4f95: $7e

jr_06b_4f96:
    dec h                                         ; $4f96: $25
    inc bc                                        ; $4f97: $03
    jp Jump_000_0325                              ; $4f98: $c3 $25 $03


    add sp, $25                                   ; $4f9b: $e8 $25
    inc bc                                        ; $4f9d: $03
    ld hl, $0326                                  ; $4f9e: $21 $26 $03
    ld b, a                                       ; $4fa1: $47
    ld h, $03                                     ; $4fa2: $26 $03
    ld [hl], b                                    ; $4fa4: $70
    ld h, $03                                     ; $4fa5: $26 $03
    add c                                         ; $4fa7: $81
    ld h, $03                                     ; $4fa8: $26 $03
    add [hl]                                      ; $4faa: $86
    ld h, $03                                     ; $4fab: $26 $03
    sbc [hl]                                      ; $4fad: $9e
    ld h, $03                                     ; $4fae: $26 $03
    ld de, $0327                                  ; $4fb0: $11 $27 $03
    jr z, jr_06b_4fdc                             ; $4fb3: $28 $27

    inc bc                                        ; $4fb5: $03
    sbc h                                         ; $4fb6: $9c
    daa                                           ; $4fb7: $27
    inc bc                                        ; $4fb8: $03
    db $fd                                        ; $4fb9: $fd
    daa                                           ; $4fba: $27
    inc bc                                        ; $4fbb: $03
    ld h, d                                       ; $4fbc: $62
    jr z, jr_06b_4fc2                             ; $4fbd: $28 $03

    cp h                                          ; $4fbf: $bc
    jr z, jr_06b_4fc5                             ; $4fc0: $28 $03

jr_06b_4fc2:
    rla                                           ; $4fc2: $17
    add hl, hl                                    ; $4fc3: $29
    inc bc                                        ; $4fc4: $03

jr_06b_4fc5:
    ld d, l                                       ; $4fc5: $55
    add hl, hl                                    ; $4fc6: $29
    inc bc                                        ; $4fc7: $03
    sbc b                                         ; $4fc8: $98
    add hl, hl                                    ; $4fc9: $29
    inc bc                                        ; $4fca: $03
    sra c                                         ; $4fcb: $cb $29
    inc bc                                        ; $4fcd: $03
    ld a, [hl+]                                   ; $4fce: $2a
    ld a, [hl+]                                   ; $4fcf: $2a
    inc bc                                        ; $4fd0: $03
    add hl, sp                                    ; $4fd1: $39
    ld a, [hl+]                                   ; $4fd2: $2a
    inc bc                                        ; $4fd3: $03
    ld b, c                                       ; $4fd4: $41
    ld a, [hl+]                                   ; $4fd5: $2a
    inc bc                                        ; $4fd6: $03
    ld c, [hl]                                    ; $4fd7: $4e
    ld a, [hl+]                                   ; $4fd8: $2a
    inc bc                                        ; $4fd9: $03
    ld l, l                                       ; $4fda: $6d
    ld a, [hl+]                                   ; $4fdb: $2a

jr_06b_4fdc:
    inc bc                                        ; $4fdc: $03
    ld a, [hl]                                    ; $4fdd: $7e
    ld a, [hl+]                                   ; $4fde: $2a
    inc bc                                        ; $4fdf: $03
    sbc d                                         ; $4fe0: $9a
    ld a, [hl+]                                   ; $4fe1: $2a
    inc bc                                        ; $4fe2: $03
    xor d                                         ; $4fe3: $aa
    ld a, [hl+]                                   ; $4fe4: $2a
    inc bc                                        ; $4fe5: $03
    ret z                                         ; $4fe6: $c8

    ld a, [hl+]                                   ; $4fe7: $2a
    inc bc                                        ; $4fe8: $03
    sub $2a                                       ; $4fe9: $d6 $2a
    inc bc                                        ; $4feb: $03
    db $ec                                        ; $4fec: $ec
    ld a, [hl+]                                   ; $4fed: $2a
    inc bc                                        ; $4fee: $03
    inc e                                         ; $4fef: $1c
    dec hl                                        ; $4ff0: $2b
    inc bc                                        ; $4ff1: $03
    inc sp                                        ; $4ff2: $33

Call_06b_4ff3:
    dec hl                                        ; $4ff3: $2b
    inc bc                                        ; $4ff4: $03
    ld c, [hl]                                    ; $4ff5: $4e
    dec hl                                        ; $4ff6: $2b
    inc bc                                        ; $4ff7: $03
    ld d, l                                       ; $4ff8: $55
    dec hl                                        ; $4ff9: $2b
    inc bc                                        ; $4ffa: $03
    ld [hl], d                                    ; $4ffb: $72
    dec hl                                        ; $4ffc: $2b
    inc bc                                        ; $4ffd: $03
    and b                                         ; $4ffe: $a0
    dec hl                                        ; $4fff: $2b
    inc bc                                        ; $5000: $03
    cp h                                          ; $5001: $bc
    dec hl                                        ; $5002: $2b
    inc bc                                        ; $5003: $03
    db $ed                                        ; $5004: $ed
    dec hl                                        ; $5005: $2b
    inc bc                                        ; $5006: $03
    rla                                           ; $5007: $17
    inc l                                         ; $5008: $2c
    inc bc                                        ; $5009: $03
    ld l, [hl]                                    ; $500a: $6e
    inc l                                         ; $500b: $2c
    inc bc                                        ; $500c: $03
    sub [hl]                                      ; $500d: $96
    inc l                                         ; $500e: $2c
    inc bc                                        ; $500f: $03
    pop bc                                        ; $5010: $c1
    inc l                                         ; $5011: $2c
    inc bc                                        ; $5012: $03
    db $e4                                        ; $5013: $e4
    inc l                                         ; $5014: $2c
    inc bc                                        ; $5015: $03
    rla                                           ; $5016: $17
    dec l                                         ; $5017: $2d
    inc bc                                        ; $5018: $03
    add hl, hl                                    ; $5019: $29
    dec l                                         ; $501a: $2d
    inc bc                                        ; $501b: $03
    inc sp                                        ; $501c: $33
    dec l                                         ; $501d: $2d
    inc bc                                        ; $501e: $03
    ld e, h                                       ; $501f: $5c
    dec l                                         ; $5020: $2d
    inc bc                                        ; $5021: $03
    ld h, a                                       ; $5022: $67
    dec l                                         ; $5023: $2d
    inc bc                                        ; $5024: $03
    ld a, c                                       ; $5025: $79
    dec l                                         ; $5026: $2d
    inc bc                                        ; $5027: $03
    adc e                                         ; $5028: $8b
    dec l                                         ; $5029: $2d
    inc bc                                        ; $502a: $03
    xor c                                         ; $502b: $a9
    dec l                                         ; $502c: $2d
    inc bc                                        ; $502d: $03
    cp [hl]                                       ; $502e: $be
    dec l                                         ; $502f: $2d
    inc bc                                        ; $5030: $03
    rst $08                                       ; $5031: $cf
    dec l                                         ; $5032: $2d
    inc bc                                        ; $5033: $03
    reti                                          ; $5034: $d9


    dec l                                         ; $5035: $2d
    inc bc                                        ; $5036: $03
    db $eb                                        ; $5037: $eb
    dec l                                         ; $5038: $2d
    inc bc                                        ; $5039: $03
    ld sp, hl                                     ; $503a: $f9
    dec l                                         ; $503b: $2d
    inc bc                                        ; $503c: $03
    db $fd                                        ; $503d: $fd
    dec l                                         ; $503e: $2d
    inc bc                                        ; $503f: $03
    db $10                                        ; $5040: $10
    ld l, $03                                     ; $5041: $2e $03
    jr jr_06b_5073                                ; $5043: $18 $2e

    inc bc                                        ; $5045: $03
    inc hl                                        ; $5046: $23
    ld l, $03                                     ; $5047: $2e $03
    inc l                                         ; $5049: $2c
    ld l, $03                                     ; $504a: $2e $03
    ld [hl-], a                                   ; $504c: $32
    ld l, $03                                     ; $504d: $2e $03
    dec sp                                        ; $504f: $3b
    ld l, $03                                     ; $5050: $2e $03
    ld b, h                                       ; $5052: $44
    ld l, $03                                     ; $5053: $2e $03
    ld c, c                                       ; $5055: $49
    ld l, $03                                     ; $5056: $2e $03
    ld c, a                                       ; $5058: $4f
    ld l, $03                                     ; $5059: $2e $03
    ld d, l                                       ; $505b: $55
    ld l, $03                                     ; $505c: $2e $03
    ld e, d                                       ; $505e: $5a
    ld l, $03                                     ; $505f: $2e $03
    ld e, a                                       ; $5061: $5f
    ld l, $03                                     ; $5062: $2e $03
    ld h, [hl]                                    ; $5064: $66
    ld l, $03                                     ; $5065: $2e $03
    ld l, [hl]                                    ; $5067: $6e
    ld l, $03                                     ; $5068: $2e $03
    ld [hl], a                                    ; $506a: $77
    ld l, $03                                     ; $506b: $2e $03
    ld a, a                                       ; $506d: $7f
    ld l, $03                                     ; $506e: $2e $03
    adc h                                         ; $5070: $8c
    ld l, $03                                     ; $5071: $2e $03

jr_06b_5073:
    sbc e                                         ; $5073: $9b
    ld l, $03                                     ; $5074: $2e $03
    and [hl]                                      ; $5076: $a6
    ld l, $03                                     ; $5077: $2e $03
    or [hl]                                       ; $5079: $b6
    ld l, $03                                     ; $507a: $2e $03
    cp a                                          ; $507c: $bf
    ld l, $03                                     ; $507d: $2e $03
    call z, Call_000_032e                         ; $507f: $cc $2e $03
    db $dd                                        ; $5082: $dd
    ld l, $03                                     ; $5083: $2e $03
    ld [$032e], a                                 ; $5085: $ea $2e $03
    push af                                       ; $5088: $f5
    ld l, $03                                     ; $5089: $2e $03
    dec b                                         ; $508b: $05
    cpl                                           ; $508c: $2f
    inc bc                                        ; $508d: $03
    ld de, $032f                                  ; $508e: $11 $2f $03
    rra                                           ; $5091: $1f
    cpl                                           ; $5092: $2f
    inc bc                                        ; $5093: $03
    inc l                                         ; $5094: $2c
    cpl                                           ; $5095: $2f
    inc bc                                        ; $5096: $03
    ld [hl], $2f                                  ; $5097: $36 $2f
    inc bc                                        ; $5099: $03
    ld b, e                                       ; $509a: $43
    cpl                                           ; $509b: $2f
    inc bc                                        ; $509c: $03
    ld d, h                                       ; $509d: $54
    cpl                                           ; $509e: $2f
    inc bc                                        ; $509f: $03
    ld e, [hl]                                    ; $50a0: $5e
    cpl                                           ; $50a1: $2f
    inc bc                                        ; $50a2: $03
    ld l, a                                       ; $50a3: $6f
    cpl                                           ; $50a4: $2f
    inc bc                                        ; $50a5: $03
    ld a, a                                       ; $50a6: $7f
    cpl                                           ; $50a7: $2f
    inc bc                                        ; $50a8: $03
    adc c                                         ; $50a9: $89
    cpl                                           ; $50aa: $2f
    inc bc                                        ; $50ab: $03
    sub l                                         ; $50ac: $95
    cpl                                           ; $50ad: $2f
    inc bc                                        ; $50ae: $03
    and c                                         ; $50af: $a1
    cpl                                           ; $50b0: $2f
    inc bc                                        ; $50b1: $03
    xor e                                         ; $50b2: $ab
    cpl                                           ; $50b3: $2f
    inc bc                                        ; $50b4: $03
    cp e                                          ; $50b5: $bb
    cpl                                           ; $50b6: $2f
    inc bc                                        ; $50b7: $03
    add $2f                                       ; $50b8: $c6 $2f
    inc bc                                        ; $50ba: $03
    ret nc                                        ; $50bb: $d0

    cpl                                           ; $50bc: $2f
    inc bc                                        ; $50bd: $03
    jp c, $032f                                   ; $50be: $da $2f $03

    and $2f                                       ; $50c1: $e6 $2f
    inc bc                                        ; $50c3: $03
    ld a, [c]                                     ; $50c4: $f2
    cpl                                           ; $50c5: $2f
    inc bc                                        ; $50c6: $03
    db $fc                                        ; $50c7: $fc
    cpl                                           ; $50c8: $2f
    inc bc                                        ; $50c9: $03
    rlca                                          ; $50ca: $07
    jr nc, jr_06b_50d0                            ; $50cb: $30 $03

    ld [de], a                                    ; $50cd: $12
    jr nc, jr_06b_50d3                            ; $50ce: $30 $03

jr_06b_50d0:
    ld e, $30                                     ; $50d0: $1e $30
    inc bc                                        ; $50d2: $03

jr_06b_50d3:
    ld a, [hl+]                                   ; $50d3: $2a
    jr nc, jr_06b_50d9                            ; $50d4: $30 $03

    inc sp                                        ; $50d6: $33
    jr nc, jr_06b_50dc                            ; $50d7: $30 $03

jr_06b_50d9:
    ld b, e                                       ; $50d9: $43
    jr nc, jr_06b_50df                            ; $50da: $30 $03

jr_06b_50dc:
    ld c, a                                       ; $50dc: $4f
    jr nc, jr_06b_50e2                            ; $50dd: $30 $03

jr_06b_50df:
    ld e, c                                       ; $50df: $59
    jr nc, jr_06b_50e5                            ; $50e0: $30 $03

jr_06b_50e2:
    ld h, l                                       ; $50e2: $65
    jr nc, jr_06b_50e8                            ; $50e3: $30 $03

jr_06b_50e5:
    ld [hl], c                                    ; $50e5: $71
    jr nc, jr_06b_50eb                            ; $50e6: $30 $03

jr_06b_50e8:
    ld a, c                                       ; $50e8: $79
    jr nc, jr_06b_50ee                            ; $50e9: $30 $03

jr_06b_50eb:
    add c                                         ; $50eb: $81
    jr nc, jr_06b_50f1                            ; $50ec: $30 $03

jr_06b_50ee:
    adc b                                         ; $50ee: $88
    jr nc, jr_06b_50f4                            ; $50ef: $30 $03

jr_06b_50f1:
    sub d                                         ; $50f1: $92
    jr nc, jr_06b_50f7                            ; $50f2: $30 $03

jr_06b_50f4:
    and b                                         ; $50f4: $a0
    jr nc, jr_06b_50fa                            ; $50f5: $30 $03

jr_06b_50f7:
    xor h                                         ; $50f7: $ac
    jr nc, jr_06b_50fd                            ; $50f8: $30 $03

jr_06b_50fa:
    or a                                          ; $50fa: $b7
    jr nc, jr_06b_5100                            ; $50fb: $30 $03

jr_06b_50fd:
    call nz, $0330                                ; $50fd: $c4 $30 $03

jr_06b_5100:
    push de                                       ; $5100: $d5
    jr nc, jr_06b_5106                            ; $5101: $30 $03

    ld [c], a                                     ; $5103: $e2
    jr nc, jr_06b_5109                            ; $5104: $30 $03

jr_06b_5106:
    ldh a, [$30]                                  ; $5106: $f0 $30
    inc bc                                        ; $5108: $03

jr_06b_5109:
    db $fc                                        ; $5109: $fc
    jr nc, @+$05                                  ; $510a: $30 $03

    add hl, bc                                    ; $510c: $09
    ld sp, $1503                                  ; $510d: $31 $03 $15
    ld sp, $2503                                  ; $5110: $31 $03 $25
    ld sp, $3103                                  ; $5113: $31 $03 $31
    ld sp, $3c03                                  ; $5116: $31 $03 $3c
    ld sp, $4703                                  ; $5119: $31 $03 $47
    ld sp, $4f03                                  ; $511c: $31 $03 $4f
    ld sp, $5403                                  ; $511f: $31 $03 $54
    ld sp, $5e03                                  ; $5122: $31 $03 $5e
    ld sp, $6903                                  ; $5125: $31 $03 $69
    ld sp, $7303                                  ; $5128: $31 $03 $73
    ld sp, $7c03                                  ; $512b: $31 $03 $7c
    ld sp, $8603                                  ; $512e: $31 $03 $86
    ld sp, $9103                                  ; $5131: $31 $03 $91
    ld sp, $9d03                                  ; $5134: $31 $03 $9d
    ld sp, $aa03                                  ; $5137: $31 $03 $aa
    ld sp, $b203                                  ; $513a: $31 $03 $b2
    ld sp, $b803                                  ; $513d: $31 $03 $b8
    ld sp, $bc03                                  ; $5140: $31 $03 $bc
    ld sp, $c903                                  ; $5143: $31 $03 $c9
    ld sp, $d503                                  ; $5146: $31 $03 $d5
    ld sp, $e703                                  ; $5149: $31 $03 $e7
    ld sp, $f003                                  ; $514c: $31 $03 $f0
    ld sp, $fb03                                  ; $514f: $31 $03 $fb
    ld sp, $0803                                  ; $5152: $31 $03 $08
    ld [hl-], a                                   ; $5155: $32
    inc bc                                        ; $5156: $03
    inc de                                        ; $5157: $13
    ld [hl-], a                                   ; $5158: $32
    inc bc                                        ; $5159: $03
    inc e                                         ; $515a: $1c
    ld [hl-], a                                   ; $515b: $32
    inc bc                                        ; $515c: $03
    cpl                                           ; $515d: $2f
    ld [hl-], a                                   ; $515e: $32
    inc bc                                        ; $515f: $03
    ld a, [hl-]                                   ; $5160: $3a
    ld [hl-], a                                   ; $5161: $32
    inc bc                                        ; $5162: $03
    ld b, c                                       ; $5163: $41
    ld [hl-], a                                   ; $5164: $32
    inc bc                                        ; $5165: $03
    ld c, h                                       ; $5166: $4c
    ld [hl-], a                                   ; $5167: $32
    inc bc                                        ; $5168: $03
    ld e, b                                       ; $5169: $58
    ld [hl-], a                                   ; $516a: $32
    inc bc                                        ; $516b: $03
    ld h, a                                       ; $516c: $67
    ld [hl-], a                                   ; $516d: $32
    inc bc                                        ; $516e: $03
    ld [hl], l                                    ; $516f: $75
    ld [hl-], a                                   ; $5170: $32
    inc bc                                        ; $5171: $03
    add c                                         ; $5172: $81
    ld [hl-], a                                   ; $5173: $32
    inc bc                                        ; $5174: $03
    adc a                                         ; $5175: $8f
    ld [hl-], a                                   ; $5176: $32
    inc bc                                        ; $5177: $03
    sbc l                                         ; $5178: $9d
    ld [hl-], a                                   ; $5179: $32
    inc bc                                        ; $517a: $03
    xor l                                         ; $517b: $ad
    ld [hl-], a                                   ; $517c: $32
    inc bc                                        ; $517d: $03
    or [hl]                                       ; $517e: $b6
    ld [hl-], a                                   ; $517f: $32
    inc bc                                        ; $5180: $03
    cp a                                          ; $5181: $bf
    ld [hl-], a                                   ; $5182: $32
    inc bc                                        ; $5183: $03
    push bc                                       ; $5184: $c5
    ld [hl-], a                                   ; $5185: $32
    inc bc                                        ; $5186: $03
    swap d                                        ; $5187: $cb $32
    inc bc                                        ; $5189: $03
    sub $32                                       ; $518a: $d6 $32
    inc bc                                        ; $518c: $03
    pop hl                                        ; $518d: $e1
    ld [hl-], a                                   ; $518e: $32
    inc bc                                        ; $518f: $03
    db $ed                                        ; $5190: $ed
    ld [hl-], a                                   ; $5191: $32
    inc bc                                        ; $5192: $03
    db $fc                                        ; $5193: $fc
    ld [hl-], a                                   ; $5194: $32
    inc bc                                        ; $5195: $03
    ld b, $33                                     ; $5196: $06 $33
    inc bc                                        ; $5198: $03
    ld [de], a                                    ; $5199: $12
    inc sp                                        ; $519a: $33
    inc bc                                        ; $519b: $03
    ld e, $33                                     ; $519c: $1e $33
    inc bc                                        ; $519e: $03
    add hl, hl                                    ; $519f: $29
    inc sp                                        ; $51a0: $33
    inc bc                                        ; $51a1: $03
    add hl, sp                                    ; $51a2: $39
    inc sp                                        ; $51a3: $33
    inc bc                                        ; $51a4: $03
    ld b, h                                       ; $51a5: $44
    inc sp                                        ; $51a6: $33
    inc bc                                        ; $51a7: $03
    ld c, d                                       ; $51a8: $4a
    inc sp                                        ; $51a9: $33
    inc bc                                        ; $51aa: $03
    ld e, l                                       ; $51ab: $5d
    inc sp                                        ; $51ac: $33
    inc bc                                        ; $51ad: $03
    ld h, d                                       ; $51ae: $62
    inc sp                                        ; $51af: $33
    inc bc                                        ; $51b0: $03
    ld l, e                                       ; $51b1: $6b
    inc sp                                        ; $51b2: $33
    inc bc                                        ; $51b3: $03
    ld [hl], b                                    ; $51b4: $70
    inc sp                                        ; $51b5: $33
    inc bc                                        ; $51b6: $03
    ld a, e                                       ; $51b7: $7b
    inc sp                                        ; $51b8: $33
    inc bc                                        ; $51b9: $03
    adc d                                         ; $51ba: $8a
    inc sp                                        ; $51bb: $33
    inc bc                                        ; $51bc: $03
    sbc b                                         ; $51bd: $98
    inc sp                                        ; $51be: $33
    inc bc                                        ; $51bf: $03
    xor e                                         ; $51c0: $ab
    inc sp                                        ; $51c1: $33
    inc bc                                        ; $51c2: $03
    ret nz                                        ; $51c3: $c0

    inc sp                                        ; $51c4: $33
    inc bc                                        ; $51c5: $03
    swap e                                        ; $51c6: $cb $33
    inc bc                                        ; $51c8: $03
    ret nc                                        ; $51c9: $d0

    inc sp                                        ; $51ca: $33
    inc bc                                        ; $51cb: $03
    reti                                          ; $51cc: $d9


    inc sp                                        ; $51cd: $33
    inc bc                                        ; $51ce: $03
    xor $33                                       ; $51cf: $ee $33
    inc bc                                        ; $51d1: $03
    ld b, $34                                     ; $51d2: $06 $34
    inc bc                                        ; $51d4: $03
    ld hl, $0334                                  ; $51d5: $21 $34 $03
    ld a, $34                                     ; $51d8: $3e $34
    inc bc                                        ; $51da: $03
    ld d, a                                       ; $51db: $57
    inc [hl]                                      ; $51dc: $34
    inc bc                                        ; $51dd: $03
    ld a, c                                       ; $51de: $79
    inc [hl]                                      ; $51df: $34
    inc bc                                        ; $51e0: $03
    and b                                         ; $51e1: $a0
    inc [hl]                                      ; $51e2: $34
    inc bc                                        ; $51e3: $03
    cp c                                          ; $51e4: $b9
    inc [hl]                                      ; $51e5: $34
    inc bc                                        ; $51e6: $03
    push de                                       ; $51e7: $d5
    inc [hl]                                      ; $51e8: $34
    inc bc                                        ; $51e9: $03
    pop af                                        ; $51ea: $f1
    inc [hl]                                      ; $51eb: $34
    inc bc                                        ; $51ec: $03
    push af                                       ; $51ed: $f5
    inc [hl]                                      ; $51ee: $34
    inc bc                                        ; $51ef: $03
    ld sp, hl                                     ; $51f0: $f9
    inc [hl]                                      ; $51f1: $34
    inc bc                                        ; $51f2: $03
    nop                                           ; $51f3: $00
    dec [hl]                                      ; $51f4: $35
    inc bc                                        ; $51f5: $03
    inc bc                                        ; $51f6: $03
    dec [hl]                                      ; $51f7: $35
    inc bc                                        ; $51f8: $03
    add hl, bc                                    ; $51f9: $09
    dec [hl]                                      ; $51fa: $35
    inc bc                                        ; $51fb: $03
    ld c, $35                                     ; $51fc: $0e $35
    inc bc                                        ; $51fe: $03
    ld [de], a                                    ; $51ff: $12
    dec [hl]                                      ; $5200: $35
    inc bc                                        ; $5201: $03
    ld [hl+], a                                   ; $5202: $22
    dec [hl]                                      ; $5203: $35
    inc bc                                        ; $5204: $03
    dec sp                                        ; $5205: $3b
    dec [hl]                                      ; $5206: $35
    inc bc                                        ; $5207: $03
    ld d, d                                       ; $5208: $52
    dec [hl]                                      ; $5209: $35
    inc bc                                        ; $520a: $03
    ld h, d                                       ; $520b: $62
    dec [hl]                                      ; $520c: $35
    inc bc                                        ; $520d: $03
    halt                                          ; $520e: $76
    dec [hl]                                      ; $520f: $35
    inc bc                                        ; $5210: $03
    adc b                                         ; $5211: $88
    dec [hl]                                      ; $5212: $35
    inc bc                                        ; $5213: $03
    sbc d                                         ; $5214: $9a
    dec [hl]                                      ; $5215: $35
    inc bc                                        ; $5216: $03
    xor h                                         ; $5217: $ac
    dec [hl]                                      ; $5218: $35
    inc bc                                        ; $5219: $03
    cp c                                          ; $521a: $b9
    dec [hl]                                      ; $521b: $35
    inc bc                                        ; $521c: $03
    db $d3                                        ; $521d: $d3
    dec [hl]                                      ; $521e: $35
    inc bc                                        ; $521f: $03
    ldh [$35], a                                  ; $5220: $e0 $35
    inc bc                                        ; $5222: $03
    db $fc                                        ; $5223: $fc
    dec [hl]                                      ; $5224: $35
    inc bc                                        ; $5225: $03
    dec c                                         ; $5226: $0d
    ld [hl], $03                                  ; $5227: $36 $03
    add hl, hl                                    ; $5229: $29
    ld [hl], $03                                  ; $522a: $36 $03
    ld b, a                                       ; $522c: $47
    ld [hl], $03                                  ; $522d: $36 $03
    ld h, a                                       ; $522f: $67
    ld [hl], $03                                  ; $5230: $36 $03
    ld a, c                                       ; $5232: $79
    ld [hl], $03                                  ; $5233: $36 $03
    adc [hl]                                      ; $5235: $8e
    ld [hl], $03                                  ; $5236: $36 $03
    sbc c                                         ; $5238: $99
    ld [hl], $03                                  ; $5239: $36 $03
    xor d                                         ; $523b: $aa
    ld [hl], $03                                  ; $523c: $36 $03
    cp e                                          ; $523e: $bb
    ld [hl], $03                                  ; $523f: $36 $03
    push de                                       ; $5241: $d5
    ld [hl], $03                                  ; $5242: $36 $03
    db $ec                                        ; $5244: $ec
    ld [hl], $03                                  ; $5245: $36 $03
    cp $36                                        ; $5247: $fe $36
    inc bc                                        ; $5249: $03
    jr jr_06b_5283                                ; $524a: $18 $37

    inc bc                                        ; $524c: $03
    jr nc, jr_06b_5286                            ; $524d: $30 $37

    inc bc                                        ; $524f: $03
    dec sp                                        ; $5250: $3b
    scf                                           ; $5251: $37
    inc bc                                        ; $5252: $03
    ld d, b                                       ; $5253: $50
    scf                                           ; $5254: $37
    inc bc                                        ; $5255: $03
    ld h, c                                       ; $5256: $61
    scf                                           ; $5257: $37
    inc bc                                        ; $5258: $03
    add b                                         ; $5259: $80
    scf                                           ; $525a: $37
    inc bc                                        ; $525b: $03
    adc a                                         ; $525c: $8f
    scf                                           ; $525d: $37
    inc bc                                        ; $525e: $03
    and a                                         ; $525f: $a7
    scf                                           ; $5260: $37
    inc bc                                        ; $5261: $03
    jp $0337                                      ; $5262: $c3 $37 $03


    rst $10                                       ; $5265: $d7
    scf                                           ; $5266: $37
    inc bc                                        ; $5267: $03
    ld hl, sp+$37                                 ; $5268: $f8 $37
    inc bc                                        ; $526a: $03
    inc c                                         ; $526b: $0c
    jr c, jr_06b_5271                             ; $526c: $38 $03

    dec de                                        ; $526e: $1b
    jr c, jr_06b_5274                             ; $526f: $38 $03

jr_06b_5271:
    cpl                                           ; $5271: $2f
    jr c, jr_06b_5277                             ; $5272: $38 $03

jr_06b_5274:
    inc a                                         ; $5274: $3c
    jr c, jr_06b_527a                             ; $5275: $38 $03

jr_06b_5277:
    ld h, [hl]                                    ; $5277: $66
    jr c, jr_06b_527d                             ; $5278: $38 $03

jr_06b_527a:
    ld [hl], c                                    ; $527a: $71
    jr c, jr_06b_5280                             ; $527b: $38 $03

jr_06b_527d:
    adc h                                         ; $527d: $8c
    jr c, jr_06b_5283                             ; $527e: $38 $03

jr_06b_5280:
    xor c                                         ; $5280: $a9
    jr c, jr_06b_5286                             ; $5281: $38 $03

jr_06b_5283:
    cp [hl]                                       ; $5283: $be
    jr c, jr_06b_5289                             ; $5284: $38 $03

jr_06b_5286:
    reti                                          ; $5286: $d9


    jr c, jr_06b_528c                             ; $5287: $38 $03

jr_06b_5289:
    ldh a, [$38]                                  ; $5289: $f0 $38
    inc bc                                        ; $528b: $03

jr_06b_528c:
    inc b                                         ; $528c: $04
    add hl, sp                                    ; $528d: $39
    inc bc                                        ; $528e: $03
    dec d                                         ; $528f: $15
    add hl, sp                                    ; $5290: $39
    inc bc                                        ; $5291: $03
    ld [hl+], a                                   ; $5292: $22
    add hl, sp                                    ; $5293: $39
    inc bc                                        ; $5294: $03
    ccf                                           ; $5295: $3f
    add hl, sp                                    ; $5296: $39
    inc bc                                        ; $5297: $03
    ld c, e                                       ; $5298: $4b
    add hl, sp                                    ; $5299: $39
    inc bc                                        ; $529a: $03
    ld h, l                                       ; $529b: $65
    add hl, sp                                    ; $529c: $39
    inc bc                                        ; $529d: $03
    halt                                          ; $529e: $76
    add hl, sp                                    ; $529f: $39
    inc bc                                        ; $52a0: $03
    add l                                         ; $52a1: $85
    add hl, sp                                    ; $52a2: $39
    inc bc                                        ; $52a3: $03
    sbc e                                         ; $52a4: $9b
    add hl, sp                                    ; $52a5: $39
    inc bc                                        ; $52a6: $03
    cp d                                          ; $52a7: $ba
    add hl, sp                                    ; $52a8: $39
    inc bc                                        ; $52a9: $03
    call Call_000_0339                            ; $52aa: $cd $39 $03
    rst $18                                       ; $52ad: $df
    add hl, sp                                    ; $52ae: $39
    inc bc                                        ; $52af: $03
    db $ec                                        ; $52b0: $ec
    add hl, sp                                    ; $52b1: $39
    inc bc                                        ; $52b2: $03
    ld [bc], a                                    ; $52b3: $02
    ld a, [hl-]                                   ; $52b4: $3a
    inc bc                                        ; $52b5: $03
    rrca                                          ; $52b6: $0f
    ld a, [hl-]                                   ; $52b7: $3a
    inc bc                                        ; $52b8: $03
    dec hl                                        ; $52b9: $2b
    ld a, [hl-]                                   ; $52ba: $3a
    inc bc                                        ; $52bb: $03
    dec a                                         ; $52bc: $3d
    ld a, [hl-]                                   ; $52bd: $3a
    inc bc                                        ; $52be: $03
    ld c, h                                       ; $52bf: $4c
    ld a, [hl-]                                   ; $52c0: $3a
    inc bc                                        ; $52c1: $03
    ld h, a                                       ; $52c2: $67
    ld a, [hl-]                                   ; $52c3: $3a
    inc bc                                        ; $52c4: $03
    ld a, d                                       ; $52c5: $7a
    ld a, [hl-]                                   ; $52c6: $3a
    inc bc                                        ; $52c7: $03
    adc l                                         ; $52c8: $8d
    ld a, [hl-]                                   ; $52c9: $3a
    inc bc                                        ; $52ca: $03
    sbc a                                         ; $52cb: $9f
    ld a, [hl-]                                   ; $52cc: $3a
    inc bc                                        ; $52cd: $03
    xor h                                         ; $52ce: $ac
    ld a, [hl-]                                   ; $52cf: $3a
    inc bc                                        ; $52d0: $03
    jp z, $033a                                   ; $52d1: $ca $3a $03

    inc bc                                        ; $52d4: $03
    dec sp                                        ; $52d5: $3b
    inc bc                                        ; $52d6: $03
    scf                                           ; $52d7: $37
    dec sp                                        ; $52d8: $3b
    inc bc                                        ; $52d9: $03
    ld [hl], d                                    ; $52da: $72
    dec sp                                        ; $52db: $3b
    inc bc                                        ; $52dc: $03
    cp b                                          ; $52dd: $b8
    dec sp                                        ; $52de: $3b
    inc bc                                        ; $52df: $03
    jp c, Jump_000_033b                           ; $52e0: $da $3b $03

    rlca                                          ; $52e3: $07
    inc a                                         ; $52e4: $3c
    inc bc                                        ; $52e5: $03
    ld b, e                                       ; $52e6: $43
    inc a                                         ; $52e7: $3c
    inc bc                                        ; $52e8: $03
    sub c                                         ; $52e9: $91
    inc a                                         ; $52ea: $3c
    inc bc                                        ; $52eb: $03
    cp [hl]                                       ; $52ec: $be
    inc a                                         ; $52ed: $3c
    inc bc                                        ; $52ee: $03
    db $ec                                        ; $52ef: $ec
    inc a                                         ; $52f0: $3c
    inc bc                                        ; $52f1: $03
    add hl, sp                                    ; $52f2: $39
    dec a                                         ; $52f3: $3d
    inc bc                                        ; $52f4: $03
    ld h, d                                       ; $52f5: $62
    dec a                                         ; $52f6: $3d
    inc bc                                        ; $52f7: $03
    xor h                                         ; $52f8: $ac
    dec a                                         ; $52f9: $3d
    inc bc                                        ; $52fa: $03
    rst $28                                       ; $52fb: $ef
    dec a                                         ; $52fc: $3d
    inc bc                                        ; $52fd: $03
    inc sp                                        ; $52fe: $33
    ld a, $03                                     ; $52ff: $3e $03
    ld [hl], h                                    ; $5301: $74
    ld a, $03                                     ; $5302: $3e $03
    ld a, a                                       ; $5304: $7f
    ld a, $03                                     ; $5305: $3e $03
    add l                                         ; $5307: $85
    ld a, $03                                     ; $5308: $3e $03
    sub d                                         ; $530a: $92
    ld a, $03                                     ; $530b: $3e $03
    sbc a                                         ; $530d: $9f
    ld a, $03                                     ; $530e: $3e $03
    xor h                                         ; $5310: $ac
    ld a, $03                                     ; $5311: $3e $03
    cp b                                          ; $5313: $b8
    ld a, $03                                     ; $5314: $3e $03
    add $3e                                       ; $5316: $c6 $3e
    inc bc                                        ; $5318: $03
    push de                                       ; $5319: $d5
    ld a, $03                                     ; $531a: $3e $03
    ld [c], a                                     ; $531c: $e2
    ld a, $03                                     ; $531d: $3e $03
    rst $28                                       ; $531f: $ef
    ld a, $03                                     ; $5320: $3e $03
    ld a, [$033e]                                 ; $5322: $fa $3e $03
    inc b                                         ; $5325: $04
    ccf                                           ; $5326: $3f
    inc bc                                        ; $5327: $03
    rrca                                          ; $5328: $0f
    ccf                                           ; $5329: $3f
    inc bc                                        ; $532a: $03
    ld a, [de]                                    ; $532b: $1a
    ccf                                           ; $532c: $3f
    inc bc                                        ; $532d: $03
    ld h, $3f                                     ; $532e: $26 $3f
    inc bc                                        ; $5330: $03
    ld [hl-], a                                   ; $5331: $32
    ccf                                           ; $5332: $3f
    inc bc                                        ; $5333: $03
    dec a                                         ; $5334: $3d
    ccf                                           ; $5335: $3f
    inc bc                                        ; $5336: $03
    ld b, h                                       ; $5337: $44
    ccf                                           ; $5338: $3f
    inc bc                                        ; $5339: $03
    ld d, b                                       ; $533a: $50
    ccf                                           ; $533b: $3f
    inc bc                                        ; $533c: $03
    ld e, l                                       ; $533d: $5d
    ccf                                           ; $533e: $3f
    inc bc                                        ; $533f: $03
    ld h, a                                       ; $5340: $67
    ccf                                           ; $5341: $3f
    inc bc                                        ; $5342: $03
    ld [hl], c                                    ; $5343: $71
    ccf                                           ; $5344: $3f
    inc bc                                        ; $5345: $03
    add c                                         ; $5346: $81
    ccf                                           ; $5347: $3f
    inc bc                                        ; $5348: $03
    adc h                                         ; $5349: $8c
    ccf                                           ; $534a: $3f
    inc bc                                        ; $534b: $03
    sbc b                                         ; $534c: $98
    ccf                                           ; $534d: $3f
    inc bc                                        ; $534e: $03
    and e                                         ; $534f: $a3
    ccf                                           ; $5350: $3f
    inc bc                                        ; $5351: $03
    xor l                                         ; $5352: $ad
    ccf                                           ; $5353: $3f
    inc bc                                        ; $5354: $03
    cp c                                          ; $5355: $b9
    ccf                                           ; $5356: $3f
    inc bc                                        ; $5357: $03
    rst $00                                       ; $5358: $c7
    ccf                                           ; $5359: $3f
    inc bc                                        ; $535a: $03
    push de                                       ; $535b: $d5
    ccf                                           ; $535c: $3f
    inc bc                                        ; $535d: $03
    rst $18                                       ; $535e: $df
    ccf                                           ; $535f: $3f
    inc bc                                        ; $5360: $03
    ld [$043f], a                                 ; $5361: $ea $3f $04
    ld bc, $0400                                  ; $5364: $01 $00 $04
    ld c, $00                                     ; $5367: $0e $00
    inc b                                         ; $5369: $04
    add hl, de                                    ; $536a: $19
    nop                                           ; $536b: $00
    inc b                                         ; $536c: $04
    daa                                           ; $536d: $27
    nop                                           ; $536e: $00
    inc b                                         ; $536f: $04
    ld [hl-], a                                   ; $5370: $32

Jump_06b_5371:
    nop                                           ; $5371: $00
    inc b                                         ; $5372: $04
    dec a                                         ; $5373: $3d
    nop                                           ; $5374: $00
    inc b                                         ; $5375: $04
    ld c, c                                       ; $5376: $49
    nop                                           ; $5377: $00
    inc b                                         ; $5378: $04
    ld d, [hl]                                    ; $5379: $56
    nop                                           ; $537a: $00
    inc b                                         ; $537b: $04
    ld h, c                                       ; $537c: $61
    nop                                           ; $537d: $00
    inc b                                         ; $537e: $04
    ld l, l                                       ; $537f: $6d
    nop                                           ; $5380: $00
    inc b                                         ; $5381: $04
    ld a, e                                       ; $5382: $7b
    nop                                           ; $5383: $00
    inc b                                         ; $5384: $04
    add [hl]                                      ; $5385: $86
    nop                                           ; $5386: $00
    inc b                                         ; $5387: $04
    sub h                                         ; $5388: $94
    nop                                           ; $5389: $00

Jump_06b_538a:
    inc b                                         ; $538a: $04
    sbc c                                         ; $538b: $99
    nop                                           ; $538c: $00
    inc b                                         ; $538d: $04
    and h                                         ; $538e: $a4
    nop                                           ; $538f: $00
    inc b                                         ; $5390: $04
    or b                                          ; $5391: $b0
    nop                                           ; $5392: $00
    inc b                                         ; $5393: $04
    or l                                          ; $5394: $b5
    nop                                           ; $5395: $00
    inc b                                         ; $5396: $04
    cp a                                          ; $5397: $bf
    nop                                           ; $5398: $00
    inc b                                         ; $5399: $04
    ret z                                         ; $539a: $c8

    nop                                           ; $539b: $00
    inc b                                         ; $539c: $04
    call nc, Call_000_0400                        ; $539d: $d4 $00 $04
    ld [c], a                                     ; $53a0: $e2
    nop                                           ; $53a1: $00
    inc b                                         ; $53a2: $04
    xor $00                                       ; $53a3: $ee $00
    inc b                                         ; $53a5: $04
    ei                                            ; $53a6: $fb
    nop                                           ; $53a7: $00
    inc b                                         ; $53a8: $04
    add hl, bc                                    ; $53a9: $09
    ld bc, $1204                                  ; $53aa: $01 $04 $12
    ld bc, $1f04                                  ; $53ad: $01 $04 $1f
    ld bc, $2d04                                  ; $53b0: $01 $04 $2d
    ld bc, $3304                                  ; $53b3: $01 $04 $33
    ld bc, $4204                                  ; $53b6: $01 $04 $42
    ld bc, $4f04                                  ; $53b9: $01 $04 $4f
    ld bc, $5904                                  ; $53bc: $01 $04 $59
    ld bc, $6504                                  ; $53bf: $01 $04 $65
    ld bc, $7104                                  ; $53c2: $01 $04 $71
    ld bc, $7e04                                  ; $53c5: $01 $04 $7e
    ld bc, $8a04                                  ; $53c8: $01 $04 $8a
    ld bc, $9504                                  ; $53cb: $01 $04 $95
    ld bc, $9d04                                  ; $53ce: $01 $04 $9d
    ld bc, $a904                                  ; $53d1: $01 $04 $a9
    ld bc, $b404                                  ; $53d4: $01 $04 $b4
    ld bc, $c204                                  ; $53d7: $01 $04 $c2
    ld bc, $ce04                                  ; $53da: $01 $04 $ce
    ld bc, $d904                                  ; $53dd: $01 $04 $d9
    ld bc, $e504                                  ; $53e0: $01 $04 $e5
    ld bc, $f204                                  ; $53e3: $01 $04 $f2
    ld bc, $fb04                                  ; $53e6: $01 $04 $fb
    ld bc, $0804                                  ; $53e9: $01 $04 $08
    ld [bc], a                                    ; $53ec: $02
    inc b                                         ; $53ed: $04
    ld [de], a                                    ; $53ee: $12
    ld [bc], a                                    ; $53ef: $02
    inc b                                         ; $53f0: $04
    inc e                                         ; $53f1: $1c
    ld [bc], a                                    ; $53f2: $02
    inc b                                         ; $53f3: $04
    daa                                           ; $53f4: $27
    ld [bc], a                                    ; $53f5: $02
    inc b                                         ; $53f6: $04
    inc sp                                        ; $53f7: $33
    ld [bc], a                                    ; $53f8: $02
    inc b                                         ; $53f9: $04
    ccf                                           ; $53fa: $3f
    ld [bc], a                                    ; $53fb: $02
    inc b                                         ; $53fc: $04
    ld c, b                                       ; $53fd: $48
    ld [bc], a                                    ; $53fe: $02
    inc b                                         ; $53ff: $04
    ld d, e                                       ; $5400: $53
    ld [bc], a                                    ; $5401: $02
    inc b                                         ; $5402: $04
    ld h, b                                       ; $5403: $60
    ld [bc], a                                    ; $5404: $02
    inc b                                         ; $5405: $04
    ld l, d                                       ; $5406: $6a
    ld [bc], a                                    ; $5407: $02
    inc b                                         ; $5408: $04
    ld [hl], l                                    ; $5409: $75
    ld [bc], a                                    ; $540a: $02
    inc b                                         ; $540b: $04
    add c                                         ; $540c: $81
    ld [bc], a                                    ; $540d: $02
    inc b                                         ; $540e: $04
    adc [hl]                                      ; $540f: $8e
    ld [bc], a                                    ; $5410: $02
    inc b                                         ; $5411: $04
    sbc [hl]                                      ; $5412: $9e
    ld [bc], a                                    ; $5413: $02
    inc b                                         ; $5414: $04
    xor e                                         ; $5415: $ab
    ld [bc], a                                    ; $5416: $02
    inc b                                         ; $5417: $04
    or h                                          ; $5418: $b4
    ld [bc], a                                    ; $5419: $02
    inc b                                         ; $541a: $04
    cp [hl]                                       ; $541b: $be
    ld [bc], a                                    ; $541c: $02
    inc b                                         ; $541d: $04
    call $0402                                    ; $541e: $cd $02 $04
    db $db                                        ; $5421: $db
    ld [bc], a                                    ; $5422: $02
    inc b                                         ; $5423: $04
    ld [$0402], a                                 ; $5424: $ea $02 $04
    xor $02                                       ; $5427: $ee $02
    inc b                                         ; $5429: $04
    ei                                            ; $542a: $fb
    ld [bc], a                                    ; $542b: $02
    inc b                                         ; $542c: $04
    inc bc                                        ; $542d: $03
    inc bc                                        ; $542e: $03
    inc b                                         ; $542f: $04
    db $10                                        ; $5430: $10
    inc bc                                        ; $5431: $03
    inc b                                         ; $5432: $04
    add hl, de                                    ; $5433: $19
    inc bc                                        ; $5434: $03
    inc b                                         ; $5435: $04
    dec de                                        ; $5436: $1b
    inc bc                                        ; $5437: $03
    inc b                                         ; $5438: $04
    ld h, $03                                     ; $5439: $26 $03
    inc b                                         ; $543b: $04
    ld c, d                                       ; $543c: $4a
    inc bc                                        ; $543d: $03
    inc b                                         ; $543e: $04
    ld h, h                                       ; $543f: $64
    inc bc                                        ; $5440: $03
    inc b                                         ; $5441: $04
    sbc d                                         ; $5442: $9a
    inc bc                                        ; $5443: $03
    inc b                                         ; $5444: $04
    adc $03                                       ; $5445: $ce $03
    inc b                                         ; $5447: $04
    db $ec                                        ; $5448: $ec
    inc bc                                        ; $5449: $03
    inc b                                         ; $544a: $04
    inc de                                        ; $544b: $13
    inc b                                         ; $544c: $04
    inc b                                         ; $544d: $04
    inc sp                                        ; $544e: $33
    inc b                                         ; $544f: $04
    inc b                                         ; $5450: $04
    ld c, e                                       ; $5451: $4b
    inc b                                         ; $5452: $04
    inc b                                         ; $5453: $04
    ld h, e                                       ; $5454: $63
    inc b                                         ; $5455: $04
    inc b                                         ; $5456: $04
    adc b                                         ; $5457: $88
    inc b                                         ; $5458: $04
    inc b                                         ; $5459: $04
    and h                                         ; $545a: $a4
    inc b                                         ; $545b: $04
    inc b                                         ; $545c: $04
    push bc                                       ; $545d: $c5
    inc b                                         ; $545e: $04
    inc b                                         ; $545f: $04
    db $dd                                        ; $5460: $dd
    inc b                                         ; $5461: $04
    inc b                                         ; $5462: $04
    ei                                            ; $5463: $fb
    inc b                                         ; $5464: $04
    inc b                                         ; $5465: $04
    jr jr_06b_546d                                ; $5466: $18 $05

    inc b                                         ; $5468: $04
    ld b, h                                       ; $5469: $44
    dec b                                         ; $546a: $05
    inc b                                         ; $546b: $04
    ld h, l                                       ; $546c: $65

jr_06b_546d:
    dec b                                         ; $546d: $05
    inc b                                         ; $546e: $04
    sub e                                         ; $546f: $93
    dec b                                         ; $5470: $05
    inc b                                         ; $5471: $04
    or b                                          ; $5472: $b0
    dec b                                         ; $5473: $05
    inc b                                         ; $5474: $04
    rst $10                                       ; $5475: $d7
    dec b                                         ; $5476: $05
    inc b                                         ; $5477: $04
    nop                                           ; $5478: $00
    ld b, $04                                     ; $5479: $06 $04
    add hl, hl                                    ; $547b: $29
    ld b, $04                                     ; $547c: $06 $04
    ld d, l                                       ; $547e: $55
    ld b, $04                                     ; $547f: $06 $04
    add [hl]                                      ; $5481: $86
    ld b, $04                                     ; $5482: $06 $04
    or [hl]                                       ; $5484: $b6
    ld b, $04                                     ; $5485: $06 $04
    rst $20                                       ; $5487: $e7
    ld b, $04                                     ; $5488: $06 $04
    db $fc                                        ; $548a: $fc
    ld b, $04                                     ; $548b: $06 $04
    dec sp                                        ; $548d: $3b
    rlca                                          ; $548e: $07
    inc b                                         ; $548f: $04
    ld l, d                                       ; $5490: $6a
    rlca                                          ; $5491: $07
    inc b                                         ; $5492: $04
    sub a                                         ; $5493: $97
    rlca                                          ; $5494: $07
    inc b                                         ; $5495: $04
    ret nz                                        ; $5496: $c0

    rlca                                          ; $5497: $07
    inc b                                         ; $5498: $04
    ld a, [c]                                     ; $5499: $f2
    rlca                                          ; $549a: $07
    inc b                                         ; $549b: $04
    rlca                                          ; $549c: $07
    ld [$3904], sp                                ; $549d: $08 $04 $39
    ld [$5d04], sp                                ; $54a0: $08 $04 $5d
    ld [$8404], sp                                ; $54a3: $08 $04 $84
    ld [$ab04], sp                                ; $54a6: $08 $04 $ab
    ld [$c204], sp                                ; $54a9: $08 $04 $c2
    ld [$e504], sp                                ; $54ac: $08 $04 $e5
    ld [$2004], sp                                ; $54af: $08 $04 $20
    add hl, bc                                    ; $54b2: $09
    inc b                                         ; $54b3: $04
    ld b, h                                       ; $54b4: $44
    add hl, bc                                    ; $54b5: $09
    inc b                                         ; $54b6: $04
    ld a, h                                       ; $54b7: $7c
    add hl, bc                                    ; $54b8: $09
    inc b                                         ; $54b9: $04
    adc l                                         ; $54ba: $8d
    add hl, bc                                    ; $54bb: $09
    inc b                                         ; $54bc: $04
    and l                                         ; $54bd: $a5
    add hl, bc                                    ; $54be: $09
    inc b                                         ; $54bf: $04
    rst $00                                       ; $54c0: $c7
    add hl, bc                                    ; $54c1: $09
    inc b                                         ; $54c2: $04
    ei                                            ; $54c3: $fb
    add hl, bc                                    ; $54c4: $09
    inc b                                         ; $54c5: $04
    ld [hl], $0a                                  ; $54c6: $36 $0a
    inc b                                         ; $54c8: $04
    ld c, c                                       ; $54c9: $49
    ld a, [bc]                                    ; $54ca: $0a
    inc b                                         ; $54cb: $04
    ld [hl], l                                    ; $54cc: $75
    ld a, [bc]                                    ; $54cd: $0a
    inc b                                         ; $54ce: $04
    sub a                                         ; $54cf: $97
    ld a, [bc]                                    ; $54d0: $0a
    inc b                                         ; $54d1: $04
    or l                                          ; $54d2: $b5
    ld a, [bc]                                    ; $54d3: $0a
    inc b                                         ; $54d4: $04
    db $d3                                        ; $54d5: $d3
    ld a, [bc]                                    ; $54d6: $0a
    inc b                                         ; $54d7: $04
    inc bc                                        ; $54d8: $03
    dec bc                                        ; $54d9: $0b
    inc b                                         ; $54da: $04
    ld hl, $040b                                  ; $54db: $21 $0b $04
    ld d, a                                       ; $54de: $57
    dec bc                                        ; $54df: $0b
    inc b                                         ; $54e0: $04
    ld a, b                                       ; $54e1: $78
    dec bc                                        ; $54e2: $0b
    inc b                                         ; $54e3: $04
    adc d                                         ; $54e4: $8a
    dec bc                                        ; $54e5: $0b
    inc b                                         ; $54e6: $04
    cp d                                          ; $54e7: $ba
    dec bc                                        ; $54e8: $0b
    inc b                                         ; $54e9: $04
    rst $20                                       ; $54ea: $e7
    dec bc                                        ; $54eb: $0b
    inc b                                         ; $54ec: $04
    ld c, $0c                                     ; $54ed: $0e $0c
    inc b                                         ; $54ef: $04
    dec [hl]                                      ; $54f0: $35
    inc c                                         ; $54f1: $0c
    inc b                                         ; $54f2: $04
    ld d, l                                       ; $54f3: $55
    inc c                                         ; $54f4: $0c
    inc b                                         ; $54f5: $04
    ld a, a                                       ; $54f6: $7f
    inc c                                         ; $54f7: $0c
    inc b                                         ; $54f8: $04
    and d                                         ; $54f9: $a2
    inc c                                         ; $54fa: $0c
    inc b                                         ; $54fb: $04
    adc $0c                                       ; $54fc: $ce $0c
    inc b                                         ; $54fe: $04
    ei                                            ; $54ff: $fb
    inc c                                         ; $5500: $0c
    inc b                                         ; $5501: $04
    inc d                                         ; $5502: $14
    dec c                                         ; $5503: $0d
    inc b                                         ; $5504: $04
    ld b, c                                       ; $5505: $41
    dec c                                         ; $5506: $0d
    inc b                                         ; $5507: $04
    ld h, e                                       ; $5508: $63
    dec c                                         ; $5509: $0d
    inc b                                         ; $550a: $04
    sub b                                         ; $550b: $90
    dec c                                         ; $550c: $0d
    inc b                                         ; $550d: $04
    cp l                                          ; $550e: $bd
    dec c                                         ; $550f: $0d
    inc b                                         ; $5510: $04
    ret nc                                        ; $5511: $d0

    dec c                                         ; $5512: $0d
    inc b                                         ; $5513: $04
    xor $0d                                       ; $5514: $ee $0d
    inc b                                         ; $5516: $04
    jr nz, jr_06b_5527                            ; $5517: $20 $0e

    inc b                                         ; $5519: $04
    ld b, b                                       ; $551a: $40
    ld c, $04                                     ; $551b: $0e $04
    ld [hl], h                                    ; $551d: $74
    ld c, $04                                     ; $551e: $0e $04
    sbc c                                         ; $5520: $99
    ld c, $04                                     ; $5521: $0e $04
    cp d                                          ; $5523: $ba
    ld c, $04                                     ; $5524: $0e $04
    db $db                                        ; $5526: $db

jr_06b_5527:
    ld c, $04                                     ; $5527: $0e $04
    ei                                            ; $5529: $fb
    ld c, $04                                     ; $552a: $0e $04
    dec de                                        ; $552c: $1b
    rrca                                          ; $552d: $0f
    inc b                                         ; $552e: $04
    cpl                                           ; $552f: $2f
    rrca                                          ; $5530: $0f
    inc b                                         ; $5531: $04
    ld d, [hl]                                    ; $5532: $56
    rrca                                          ; $5533: $0f
    inc b                                         ; $5534: $04
    ld a, d                                       ; $5535: $7a
    rrca                                          ; $5536: $0f
    inc b                                         ; $5537: $04
    sub e                                         ; $5538: $93
    rrca                                          ; $5539: $0f
    inc b                                         ; $553a: $04
    ret nc                                        ; $553b: $d0

    rrca                                          ; $553c: $0f
    inc b                                         ; $553d: $04
    rst $38                                       ; $553e: $ff
    rrca                                          ; $553f: $0f
    inc b                                         ; $5540: $04
    inc l                                         ; $5541: $2c
    db $10                                        ; $5542: $10
    inc b                                         ; $5543: $04
    ld c, l                                       ; $5544: $4d
    db $10                                        ; $5545: $10
    inc b                                         ; $5546: $04
    ld l, e                                       ; $5547: $6b
    db $10                                        ; $5548: $10
    inc b                                         ; $5549: $04
    sub h                                         ; $554a: $94
    db $10                                        ; $554b: $10
    inc b                                         ; $554c: $04
    call z, Call_000_0410                         ; $554d: $cc $10 $04
    ldh a, [rNR10]                                ; $5550: $f0 $10
    inc b                                         ; $5552: $04
    inc c                                         ; $5553: $0c
    ld de, $3c04                                  ; $5554: $11 $04 $3c
    ld de, $6d04                                  ; $5557: $11 $04 $6d
    ld de, $8004                                  ; $555a: $11 $04 $80
    ld de, $bb04                                  ; $555d: $11 $04 $bb
    ld de, $e804                                  ; $5560: $11 $04 $e8
    ld de, $0704                                  ; $5563: $11 $04 $07
    ld [de], a                                    ; $5566: $12
    inc b                                         ; $5567: $04
    inc [hl]                                      ; $5568: $34
    ld [de], a                                    ; $5569: $12
    inc b                                         ; $556a: $04
    ld c, e                                       ; $556b: $4b
    ld [de], a                                    ; $556c: $12
    inc b                                         ; $556d: $04
    ld e, [hl]                                    ; $556e: $5e
    ld [de], a                                    ; $556f: $12
    inc b                                         ; $5570: $04
    ld l, a                                       ; $5571: $6f
    ld [de], a                                    ; $5572: $12
    inc b                                         ; $5573: $04
    halt                                          ; $5574: $76
    ld [de], a                                    ; $5575: $12
    inc b                                         ; $5576: $04
    ld a, l                                       ; $5577: $7d
    ld [de], a                                    ; $5578: $12
    inc b                                         ; $5579: $04
    add d                                         ; $557a: $82
    ld [de], a                                    ; $557b: $12
    inc b                                         ; $557c: $04
    adc c                                         ; $557d: $89
    ld [de], a                                    ; $557e: $12
    inc b                                         ; $557f: $04
    sub d                                         ; $5580: $92
    ld [de], a                                    ; $5581: $12
    inc b                                         ; $5582: $04
    sub [hl]                                      ; $5583: $96
    ld [de], a                                    ; $5584: $12
    inc b                                         ; $5585: $04
    sbc d                                         ; $5586: $9a
    ld [de], a                                    ; $5587: $12
    inc b                                         ; $5588: $04
    and c                                         ; $5589: $a1
    ld [de], a                                    ; $558a: $12
    inc b                                         ; $558b: $04
    and a                                         ; $558c: $a7
    ld [de], a                                    ; $558d: $12
    inc b                                         ; $558e: $04
    xor [hl]                                      ; $558f: $ae
    ld [de], a                                    ; $5590: $12
    inc b                                         ; $5591: $04
    cp c                                          ; $5592: $b9
    ld [de], a                                    ; $5593: $12
    inc b                                         ; $5594: $04
    cp [hl]                                       ; $5595: $be
    ld [de], a                                    ; $5596: $12
    inc b                                         ; $5597: $04
    jp $0412                                      ; $5598: $c3 $12 $04


    adc $12                                       ; $559b: $ce $12
    inc b                                         ; $559d: $04
    jp c, $0412                                   ; $559e: $da $12 $04

    rst $18                                       ; $55a1: $df
    ld [de], a                                    ; $55a2: $12
    inc b                                         ; $55a3: $04
    db $e4                                        ; $55a4: $e4
    ld [de], a                                    ; $55a5: $12
    inc b                                         ; $55a6: $04
    or $12                                        ; $55a7: $f6 $12
    inc b                                         ; $55a9: $04
    inc d                                         ; $55aa: $14
    inc de                                        ; $55ab: $13
    inc b                                         ; $55ac: $04
    ld b, b                                       ; $55ad: $40
    inc de                                        ; $55ae: $13
    inc b                                         ; $55af: $04
    ld c, a                                       ; $55b0: $4f
    inc de                                        ; $55b1: $13
    inc b                                         ; $55b2: $04
    ld l, d                                       ; $55b3: $6a
    inc de                                        ; $55b4: $13
    inc b                                         ; $55b5: $04
    adc d                                         ; $55b6: $8a
    inc de                                        ; $55b7: $13
    inc b                                         ; $55b8: $04
    sub a                                         ; $55b9: $97
    inc de                                        ; $55ba: $13
    inc b                                         ; $55bb: $04
    call $0413                                    ; $55bc: $cd $13 $04
    db $e3                                        ; $55bf: $e3
    inc de                                        ; $55c0: $13
    inc b                                         ; $55c1: $04
    ld a, [bc]                                    ; $55c2: $0a
    inc d                                         ; $55c3: $14
    inc b                                         ; $55c4: $04
    dec h                                         ; $55c5: $25
    inc d                                         ; $55c6: $14
    inc b                                         ; $55c7: $04
    ld e, b                                       ; $55c8: $58
    inc d                                         ; $55c9: $14
    inc b                                         ; $55ca: $04
    ld [hl], e                                    ; $55cb: $73
    inc d                                         ; $55cc: $14
    inc b                                         ; $55cd: $04
    sub b                                         ; $55ce: $90
    inc d                                         ; $55cf: $14
    inc b                                         ; $55d0: $04
    pop bc                                        ; $55d1: $c1
    inc d                                         ; $55d2: $14
    inc b                                         ; $55d3: $04
    ldh a, [rNR14]                                ; $55d4: $f0 $14
    inc b                                         ; $55d6: $04
    add hl, bc                                    ; $55d7: $09
    dec d                                         ; $55d8: $15
    inc b                                         ; $55d9: $04
    jr nz, jr_06b_55f1                            ; $55da: $20 $15

    inc b                                         ; $55dc: $04
    ld sp, $0415                                  ; $55dd: $31 $15 $04
    ld d, l                                       ; $55e0: $55
    dec d                                         ; $55e1: $15
    inc b                                         ; $55e2: $04
    ld d, a                                       ; $55e3: $57
    dec d                                         ; $55e4: $15
    inc b                                         ; $55e5: $04
    ld e, c                                       ; $55e6: $59
    dec d                                         ; $55e7: $15
    inc b                                         ; $55e8: $04
    ld [hl], l                                    ; $55e9: $75
    dec d                                         ; $55ea: $15
    inc b                                         ; $55eb: $04
    add e                                         ; $55ec: $83
    dec d                                         ; $55ed: $15
    inc b                                         ; $55ee: $04
    adc e                                         ; $55ef: $8b
    dec d                                         ; $55f0: $15

jr_06b_55f1:
    inc b                                         ; $55f1: $04
    sub h                                         ; $55f2: $94
    dec d                                         ; $55f3: $15
    inc b                                         ; $55f4: $04
    sbc a                                         ; $55f5: $9f
    dec d                                         ; $55f6: $15
    inc b                                         ; $55f7: $04
    xor b                                         ; $55f8: $a8
    dec d                                         ; $55f9: $15
    inc b                                         ; $55fa: $04
    rl l                                          ; $55fb: $cb $15
    inc b                                         ; $55fd: $04
    pop hl                                        ; $55fe: $e1
    dec d                                         ; $55ff: $15
    inc b                                         ; $5600: $04
    db $fc                                        ; $5601: $fc
    dec d                                         ; $5602: $15
    inc b                                         ; $5603: $04
    dec c                                         ; $5604: $0d
    ld d, $04                                     ; $5605: $16 $04
    ld hl, $0416                                  ; $5607: $21 $16 $04
    inc a                                         ; $560a: $3c
    ld d, $04                                     ; $560b: $16 $04
    ld l, l                                       ; $560d: $6d
    ld d, $04                                     ; $560e: $16 $04
    sbc a                                         ; $5610: $9f
    ld d, $04                                     ; $5611: $16 $04
    rst $18                                       ; $5613: $df
    ld d, $04                                     ; $5614: $16 $04
    dec c                                         ; $5616: $0d
    rla                                           ; $5617: $17
    inc b                                         ; $5618: $04
    ld e, l                                       ; $5619: $5d
    rla                                           ; $561a: $17
    inc b                                         ; $561b: $04
    add h                                         ; $561c: $84
    rla                                           ; $561d: $17
    inc b                                         ; $561e: $04
    xor d                                         ; $561f: $aa
    rla                                           ; $5620: $17
    inc b                                         ; $5621: $04
    or a                                          ; $5622: $b7
    rla                                           ; $5623: $17
    inc b                                         ; $5624: $04
    jp nc, Jump_000_0417                          ; $5625: $d2 $17 $04

    rrca                                          ; $5628: $0f
    jr jr_06b_562f                                ; $5629: $18 $04

    jr c, jr_06b_5645                             ; $562b: $38 $18

    inc b                                         ; $562d: $04
    ld l, h                                       ; $562e: $6c

jr_06b_562f:
    jr jr_06b_5635                                ; $562f: $18 $04

    add a                                         ; $5631: $87
    jr @+$06                                      ; $5632: $18 $04

    sbc a                                         ; $5634: $9f

jr_06b_5635:
    jr @+$06                                      ; $5635: $18 $04

    add $18                                       ; $5637: $c6 $18
    inc b                                         ; $5639: $04
    xor $18                                       ; $563a: $ee $18
    inc b                                         ; $563c: $04
    inc e                                         ; $563d: $1c
    add hl, de                                    ; $563e: $19
    inc b                                         ; $563f: $04
    dec sp                                        ; $5640: $3b
    add hl, de                                    ; $5641: $19
    inc b                                         ; $5642: $04
    ld d, b                                       ; $5643: $50
    add hl, de                                    ; $5644: $19

jr_06b_5645:
    inc b                                         ; $5645: $04
    ld a, e                                       ; $5646: $7b
    add hl, de                                    ; $5647: $19
    inc b                                         ; $5648: $04

Call_06b_5649:
    xor h                                         ; $5649: $ac
    add hl, de                                    ; $564a: $19
    inc b                                         ; $564b: $04
    call nz, Call_000_0419                        ; $564c: $c4 $19 $04
    and $19                                       ; $564f: $e6 $19
    inc b                                         ; $5651: $04
    ld sp, hl                                     ; $5652: $f9
    add hl, de                                    ; $5653: $19
    inc b                                         ; $5654: $04
    ld [hl-], a                                   ; $5655: $32
    ld a, [de]                                    ; $5656: $1a
    inc b                                         ; $5657: $04
    dec a                                         ; $5658: $3d
    ld a, [de]                                    ; $5659: $1a
    inc b                                         ; $565a: $04
    ld c, d                                       ; $565b: $4a
    ld a, [de]                                    ; $565c: $1a
    inc b                                         ; $565d: $04
    ld d, c                                       ; $565e: $51
    ld a, [de]                                    ; $565f: $1a
    inc b                                         ; $5660: $04
    ld e, h                                       ; $5661: $5c
    ld a, [de]                                    ; $5662: $1a
    inc b                                         ; $5663: $04
    ld [hl], b                                    ; $5664: $70
    ld a, [de]                                    ; $5665: $1a
    inc b                                         ; $5666: $04
    add l                                         ; $5667: $85
    ld a, [de]                                    ; $5668: $1a
    inc b                                         ; $5669: $04
    adc $1a                                       ; $566a: $ce $1a
    inc b                                         ; $566c: $04
    dec d                                         ; $566d: $15
    dec de                                        ; $566e: $1b
    inc b                                         ; $566f: $04
    ld h, $1b                                     ; $5670: $26 $1b
    inc b                                         ; $5672: $04
    inc sp                                        ; $5673: $33
    dec de                                        ; $5674: $1b
    inc b                                         ; $5675: $04
    ld d, h                                       ; $5676: $54
    dec de                                        ; $5677: $1b
    inc b                                         ; $5678: $04
    adc b                                         ; $5679: $88
    dec de                                        ; $567a: $1b
    inc b                                         ; $567b: $04
    jp hl                                         ; $567c: $e9


    dec de                                        ; $567d: $1b
    inc b                                         ; $567e: $04
    daa                                           ; $567f: $27
    inc e                                         ; $5680: $1c
    inc b                                         ; $5681: $04
    adc e                                         ; $5682: $8b
    inc e                                         ; $5683: $1c
    inc b                                         ; $5684: $04
    xor h                                         ; $5685: $ac
    inc e                                         ; $5686: $1c
    inc b                                         ; $5687: $04
    sub $1c                                       ; $5688: $d6 $1c
    inc b                                         ; $568a: $04
    inc h                                         ; $568b: $24
    dec e                                         ; $568c: $1d
    inc b                                         ; $568d: $04
    ld [hl-], a                                   ; $568e: $32
    dec e                                         ; $568f: $1d
    inc b                                         ; $5690: $04
    ld h, [hl]                                    ; $5691: $66
    dec e                                         ; $5692: $1d
    inc b                                         ; $5693: $04
    ret nz                                        ; $5694: $c0

    dec e                                         ; $5695: $1d
    inc b                                         ; $5696: $04
    ld a, [c]                                     ; $5697: $f2
    dec e                                         ; $5698: $1d
    inc b                                         ; $5699: $04
    cpl                                           ; $569a: $2f
    ld e, $04                                     ; $569b: $1e $04
    ld d, [hl]                                    ; $569d: $56
    ld e, $04                                     ; $569e: $1e $04
    and h                                         ; $56a0: $a4
    ld e, $04                                     ; $56a1: $1e $04
    ld bc, $041f                                  ; $56a3: $01 $1f $04
    inc e                                         ; $56a6: $1c
    rra                                           ; $56a7: $1f
    inc b                                         ; $56a8: $04
    ld a, l                                       ; $56a9: $7d
    rra                                           ; $56aa: $1f
    inc b                                         ; $56ab: $04
    call c, Call_000_041f                         ; $56ac: $dc $1f $04
    add sp, $1f                                   ; $56af: $e8 $1f
    inc b                                         ; $56b1: $04
    ld d, l                                       ; $56b2: $55
    jr nz, jr_06b_56b9                            ; $56b3: $20 $04

    ld a, h                                       ; $56b5: $7c
    jr nz, @+$06                                  ; $56b6: $20 $04

    adc l                                         ; $56b8: $8d

jr_06b_56b9:
    jr nz, @+$06                                  ; $56b9: $20 $04

    jp z, $0420                                   ; $56bb: $ca $20 $04

    and $20                                       ; $56be: $e6 $20
    inc b                                         ; $56c0: $04
    ld d, $21                                     ; $56c1: $16 $21
    inc b                                         ; $56c3: $04
    dec de                                        ; $56c4: $1b
    ld hl, $9404                                  ; $56c5: $21 $04 $94
    ld hl, $9a04                                  ; $56c8: $21 $04 $9a
    ld hl, $d004                                  ; $56cb: $21 $04 $d0
    ld hl, $de04                                  ; $56ce: $21 $04 $de
    ld hl, $5104                                  ; $56d1: $21 $04 $51
    ld [hl+], a                                   ; $56d4: $22
    inc b                                         ; $56d5: $04
    adc d                                         ; $56d6: $8a
    ld [hl+], a                                   ; $56d7: $22
    inc b                                         ; $56d8: $04
    di                                            ; $56d9: $f3
    ld [hl+], a                                   ; $56da: $22
    inc b                                         ; $56db: $04
    db $10                                        ; $56dc: $10
    inc hl                                        ; $56dd: $23
    inc b                                         ; $56de: $04
    jr z, @+$25                                   ; $56df: $28 $23

    inc b                                         ; $56e1: $04
    dec [hl]                                      ; $56e2: $35
    inc hl                                        ; $56e3: $23
    inc b                                         ; $56e4: $04
    ld c, l                                       ; $56e5: $4d
    inc hl                                        ; $56e6: $23
    inc b                                         ; $56e7: $04
    add e                                         ; $56e8: $83
    inc hl                                        ; $56e9: $23
    inc b                                         ; $56ea: $04
    sub l                                         ; $56eb: $95
    inc hl                                        ; $56ec: $23
    inc b                                         ; $56ed: $04
    or l                                          ; $56ee: $b5
    inc hl                                        ; $56ef: $23
    inc b                                         ; $56f0: $04
    pop hl                                        ; $56f1: $e1
    inc hl                                        ; $56f2: $23
    inc b                                         ; $56f3: $04
    inc de                                        ; $56f4: $13
    inc h                                         ; $56f5: $24
    inc b                                         ; $56f6: $04
    ld d, e                                       ; $56f7: $53
    inc h                                         ; $56f8: $24
    inc b                                         ; $56f9: $04
    adc b                                         ; $56fa: $88
    inc h                                         ; $56fb: $24
    inc b                                         ; $56fc: $04
    ld [c], a                                     ; $56fd: $e2
    inc h                                         ; $56fe: $24
    inc b                                         ; $56ff: $04
    rst $38                                       ; $5700: $ff
    inc h                                         ; $5701: $24
    inc b                                         ; $5702: $04
    ld de, $0425                                  ; $5703: $11 $25 $04
    sub [hl]                                      ; $5706: $96
    dec h                                         ; $5707: $25
    inc b                                         ; $5708: $04
    cp h                                          ; $5709: $bc
    dec h                                         ; $570a: $25
    inc b                                         ; $570b: $04
    inc h                                         ; $570c: $24
    ld h, $04                                     ; $570d: $26 $04
    inc a                                         ; $570f: $3c
    ld h, $04                                     ; $5710: $26 $04
    sub a                                         ; $5712: $97
    ld h, $04                                     ; $5713: $26 $04
    cp c                                          ; $5715: $b9
    ld h, $04                                     ; $5716: $26 $04
    call Call_000_0426                            ; $5718: $cd $26 $04
    rst $18                                       ; $571b: $df
    ld h, $04                                     ; $571c: $26 $04
    rla                                           ; $571e: $17
    daa                                           ; $571f: $27
    inc b                                         ; $5720: $04
    ld [hl+], a                                   ; $5721: $22
    daa                                           ; $5722: $27
    inc b                                         ; $5723: $04
    ld b, c                                       ; $5724: $41
    daa                                           ; $5725: $27
    inc b                                         ; $5726: $04
    ld e, [hl]                                    ; $5727: $5e
    daa                                           ; $5728: $27
    inc b                                         ; $5729: $04
    ld a, e                                       ; $572a: $7b
    daa                                           ; $572b: $27
    inc b                                         ; $572c: $04
    adc a                                         ; $572d: $8f
    daa                                           ; $572e: $27
    inc b                                         ; $572f: $04
    and a                                         ; $5730: $a7
    daa                                           ; $5731: $27
    inc b                                         ; $5732: $04
    or c                                          ; $5733: $b1
    daa                                           ; $5734: $27
    inc b                                         ; $5735: $04
    db $ed                                        ; $5736: $ed
    daa                                           ; $5737: $27
    inc b                                         ; $5738: $04
    cp $27                                        ; $5739: $fe $27
    inc b                                         ; $573b: $04
    ld c, a                                       ; $573c: $4f
    jr z, jr_06b_5743                             ; $573d: $28 $04

    ld [hl], d                                    ; $573f: $72
    jr z, jr_06b_5746                             ; $5740: $28 $04

    sub e                                         ; $5742: $93

jr_06b_5743:
    jr z, @+$06                                   ; $5743: $28 $04

    ret nz                                        ; $5745: $c0

jr_06b_5746:
    jr z, @+$06                                   ; $5746: $28 $04

    add sp, $28                                   ; $5748: $e8 $28
    inc b                                         ; $574a: $04
    ld bc, $0429                                  ; $574b: $01 $29 $04
    dec d                                         ; $574e: $15
    add hl, hl                                    ; $574f: $29
    inc b                                         ; $5750: $04
    dec sp                                        ; $5751: $3b
    add hl, hl                                    ; $5752: $29
    inc b                                         ; $5753: $04
    ld c, d                                       ; $5754: $4a
    add hl, hl                                    ; $5755: $29
    inc b                                         ; $5756: $04
    ld h, c                                       ; $5757: $61
    add hl, hl                                    ; $5758: $29
    inc b                                         ; $5759: $04
    ld [hl], l                                    ; $575a: $75
    add hl, hl                                    ; $575b: $29
    inc b                                         ; $575c: $04
    add b                                         ; $575d: $80
    add hl, hl                                    ; $575e: $29
    inc b                                         ; $575f: $04
    and [hl]                                      ; $5760: $a6
    add hl, hl                                    ; $5761: $29
    inc b                                         ; $5762: $04
    db $fc                                        ; $5763: $fc
    add hl, hl                                    ; $5764: $29
    inc b                                         ; $5765: $04
    ld a, [de]                                    ; $5766: $1a
    ld a, [hl+]                                   ; $5767: $2a
    inc b                                         ; $5768: $04
    inc h                                         ; $5769: $24
    ld a, [hl+]                                   ; $576a: $2a
    inc b                                         ; $576b: $04
    ld a, $2a                                     ; $576c: $3e $2a
    inc b                                         ; $576e: $04
    ld c, c                                       ; $576f: $49
    ld a, [hl+]                                   ; $5770: $2a
    inc b                                         ; $5771: $04
    ld [hl], l                                    ; $5772: $75
    ld a, [hl+]                                   ; $5773: $2a
    inc b                                         ; $5774: $04
    sub [hl]                                      ; $5775: $96
    ld a, [hl+]                                   ; $5776: $2a
    inc b                                         ; $5777: $04
    inc c                                         ; $5778: $0c
    dec hl                                        ; $5779: $2b
    inc b                                         ; $577a: $04
    ccf                                           ; $577b: $3f
    dec hl                                        ; $577c: $2b
    inc b                                         ; $577d: $04
    xor b                                         ; $577e: $a8
    dec hl                                        ; $577f: $2b
    inc b                                         ; $5780: $04
    or b                                          ; $5781: $b0
    dec hl                                        ; $5782: $2b
    inc b                                         ; $5783: $04
    ret nz                                        ; $5784: $c0

    dec hl                                        ; $5785: $2b
    inc b                                         ; $5786: $04
    call c, $042b                                 ; $5787: $dc $2b $04
    dec hl                                        ; $578a: $2b
    inc l                                         ; $578b: $2c
    inc b                                         ; $578c: $04
    ld d, c                                       ; $578d: $51
    inc l                                         ; $578e: $2c
    inc b                                         ; $578f: $04
    adc l                                         ; $5790: $8d
    inc l                                         ; $5791: $2c
    inc b                                         ; $5792: $04
    and l                                         ; $5793: $a5
    inc l                                         ; $5794: $2c
    inc b                                         ; $5795: $04
    pop de                                        ; $5796: $d1
    inc l                                         ; $5797: $2c
    inc b                                         ; $5798: $04
    db $dd                                        ; $5799: $dd
    inc l                                         ; $579a: $2c
    inc b                                         ; $579b: $04
    db $ed                                        ; $579c: $ed
    inc l                                         ; $579d: $2c
    inc b                                         ; $579e: $04
    ld a, [hl-]                                   ; $579f: $3a
    dec l                                         ; $57a0: $2d
    inc b                                         ; $57a1: $04
    ld b, a                                       ; $57a2: $47
    dec l                                         ; $57a3: $2d
    inc b                                         ; $57a4: $04
    adc c                                         ; $57a5: $89
    dec l                                         ; $57a6: $2d
    inc b                                         ; $57a7: $04
    xor h                                         ; $57a8: $ac
    dec l                                         ; $57a9: $2d
    inc b                                         ; $57aa: $04
    rst $38                                       ; $57ab: $ff
    dec l                                         ; $57ac: $2d
    inc b                                         ; $57ad: $04
    inc l                                         ; $57ae: $2c
    ld l, $04                                     ; $57af: $2e $04
    inc a                                         ; $57b1: $3c
    ld l, $04                                     ; $57b2: $2e $04
    ld d, a                                       ; $57b4: $57
    ld l, $04                                     ; $57b5: $2e $04
    ld [hl], l                                    ; $57b7: $75
    ld l, $04                                     ; $57b8: $2e $04
    adc d                                         ; $57ba: $8a
    ld l, $04                                     ; $57bb: $2e $04
    and l                                         ; $57bd: $a5
    ld l, $04                                     ; $57be: $2e $04
    cp h                                          ; $57c0: $bc
    ld l, $04                                     ; $57c1: $2e $04
    pop de                                        ; $57c3: $d1
    ld l, $04                                     ; $57c4: $2e $04
    db $e4                                        ; $57c6: $e4
    ld l, $04                                     ; $57c7: $2e $04
    di                                            ; $57c9: $f3
    ld l, $04                                     ; $57ca: $2e $04
    dec b                                         ; $57cc: $05
    cpl                                           ; $57cd: $2f
    inc b                                         ; $57ce: $04
    dec de                                        ; $57cf: $1b
    cpl                                           ; $57d0: $2f
    inc b                                         ; $57d1: $04
    dec e                                         ; $57d2: $1d
    cpl                                           ; $57d3: $2f
    inc b                                         ; $57d4: $04
    inc l                                         ; $57d5: $2c
    cpl                                           ; $57d6: $2f
    inc b                                         ; $57d7: $04
    ld b, a                                       ; $57d8: $47
    cpl                                           ; $57d9: $2f
    inc b                                         ; $57da: $04
    ld h, d                                       ; $57db: $62
    cpl                                           ; $57dc: $2f
    inc b                                         ; $57dd: $04
    ld h, h                                       ; $57de: $64
    cpl                                           ; $57df: $2f
    inc b                                         ; $57e0: $04
    ld h, [hl]                                    ; $57e1: $66
    cpl                                           ; $57e2: $2f
    inc b                                         ; $57e3: $04
    add [hl]                                      ; $57e4: $86
    cpl                                           ; $57e5: $2f
    inc b                                         ; $57e6: $04
    sbc [hl]                                      ; $57e7: $9e
    cpl                                           ; $57e8: $2f
    inc b                                         ; $57e9: $04
    and b                                         ; $57ea: $a0
    cpl                                           ; $57eb: $2f
    inc b                                         ; $57ec: $04
    cp [hl]                                       ; $57ed: $be
    cpl                                           ; $57ee: $2f
    inc b                                         ; $57ef: $04
    ret nz                                        ; $57f0: $c0

    cpl                                           ; $57f1: $2f
    inc b                                         ; $57f2: $04
    jp nz, $042f                                  ; $57f3: $c2 $2f $04

    db $db                                        ; $57f6: $db
    cpl                                           ; $57f7: $2f
    inc b                                         ; $57f8: $04
    ld [$042f], a                                 ; $57f9: $ea $2f $04
    ld sp, hl                                     ; $57fc: $f9
    cpl                                           ; $57fd: $2f
    inc b                                         ; $57fe: $04
    ei                                            ; $57ff: $fb
    cpl                                           ; $5800: $2f
    inc b                                         ; $5801: $04
    db $fd                                        ; $5802: $fd
    cpl                                           ; $5803: $2f
    inc b                                         ; $5804: $04
    rst $38                                       ; $5805: $ff
    cpl                                           ; $5806: $2f
    inc b                                         ; $5807: $04
    jr @+$32                                      ; $5808: $18 $30

    inc b                                         ; $580a: $04
    ld a, [de]                                    ; $580b: $1a
    jr nc, @+$06                                  ; $580c: $30 $04

    inc e                                         ; $580e: $1c
    jr nc, @+$06                                  ; $580f: $30 $04

    ld e, $30                                     ; $5811: $1e $30
    inc b                                         ; $5813: $04
    jr nz, @+$32                                  ; $5814: $20 $30

    inc b                                         ; $5816: $04
    ld [hl+], a                                   ; $5817: $22
    jr nc, @+$06                                  ; $5818: $30 $04

    inc h                                         ; $581a: $24
    jr nc, @+$06                                  ; $581b: $30 $04

    ld h, $30                                     ; $581d: $26 $30
    inc b                                         ; $581f: $04
    jr z, @+$32                                   ; $5820: $28 $30

    inc b                                         ; $5822: $04
    ld [hl-], a                                   ; $5823: $32
    jr nc, jr_06b_582a                            ; $5824: $30 $04

    ld d, h                                       ; $5826: $54
    jr nc, jr_06b_582d                            ; $5827: $30 $04

    ld h, h                                       ; $5829: $64

jr_06b_582a:
    jr nc, jr_06b_5830                            ; $582a: $30 $04

    ld h, [hl]                                    ; $582c: $66

jr_06b_582d:
    jr nc, jr_06b_5833                            ; $582d: $30 $04

    ld l, b                                       ; $582f: $68

jr_06b_5830:
    jr nc, jr_06b_5836                            ; $5830: $30 $04

    ld l, d                                       ; $5832: $6a

jr_06b_5833:
    jr nc, jr_06b_5839                            ; $5833: $30 $04

    ld l, h                                       ; $5835: $6c

jr_06b_5836:
    jr nc, jr_06b_583c                            ; $5836: $30 $04

    ld l, [hl]                                    ; $5838: $6e

jr_06b_5839:
    jr nc, jr_06b_583f                            ; $5839: $30 $04

    ld [hl], b                                    ; $583b: $70

jr_06b_583c:
    jr nc, jr_06b_5842                            ; $583c: $30 $04

    ld [hl], d                                    ; $583e: $72

jr_06b_583f:
    jr nc, jr_06b_5845                            ; $583f: $30 $04

    ld [hl], h                                    ; $5841: $74

jr_06b_5842:
    jr nc, jr_06b_5848                            ; $5842: $30 $04

    halt                                          ; $5844: $76

jr_06b_5845:
    jr nc, jr_06b_584b                            ; $5845: $30 $04

    ld a, b                                       ; $5847: $78

jr_06b_5848:
    jr nc, jr_06b_584e                            ; $5848: $30 $04

    adc l                                         ; $584a: $8d

jr_06b_584b:
    jr nc, jr_06b_5851                            ; $584b: $30 $04

    sbc l                                         ; $584d: $9d

jr_06b_584e:
    jr nc, jr_06b_5854                            ; $584e: $30 $04

    xor a                                         ; $5850: $af

jr_06b_5851:
    jr nc, jr_06b_5857                            ; $5851: $30 $04

    cp a                                          ; $5853: $bf

jr_06b_5854:
    jr nc, @+$06                                  ; $5854: $30 $04

    pop de                                        ; $5856: $d1

jr_06b_5857:
    jr nc, jr_06b_585d                            ; $5857: $30 $04

    ldh a, [$30]                                  ; $5859: $f0 $30
    inc b                                         ; $585b: $04
    ld a, [c]                                     ; $585c: $f2

jr_06b_585d:
    jr nc, jr_06b_5863                            ; $585d: $30 $04

    nop                                           ; $585f: $00
    ld sp, $0204                                  ; $5860: $31 $04 $02

jr_06b_5863:
    ld sp, $1504                                  ; $5863: $31 $04 $15
    ld sp, $1704                                  ; $5866: $31 $04 $17
    ld sp, $2804                                  ; $5869: $31 $04 $28
    ld sp, $2a04                                  ; $586c: $31 $04 $2a
    ld sp, $4004                                  ; $586f: $31 $04 $40
    ld sp, $4d04                                  ; $5872: $31 $04 $4d
    ld sp, $6604                                  ; $5875: $31 $04 $66
    ld sp, $7604                                  ; $5878: $31 $04 $76
    ld sp, $8904                                  ; $587b: $31 $04 $89
    ld sp, $8b04                                  ; $587e: $31 $04 $8b
    ld sp, $8d04                                  ; $5881: $31 $04 $8d
    ld sp, $8f04                                  ; $5884: $31 $04 $8f
    ld sp, $9104                                  ; $5887: $31 $04 $91
    ld sp, $a304                                  ; $588a: $31 $04 $a3
    ld sp, $b304                                  ; $588d: $31 $04 $b3
    ld sp, $c704                                  ; $5890: $31 $04 $c7
    ld sp, $d904                                  ; $5893: $31 $04 $d9
    ld sp, $f104                                  ; $5896: $31 $04 $f1
    ld sp, $0904                                  ; $5899: $31 $04 $09
    ld [hl-], a                                   ; $589c: $32
    inc b                                         ; $589d: $04
    ld a, [de]                                    ; $589e: $1a
    ld [hl-], a                                   ; $589f: $32
    inc b                                         ; $58a0: $04
    ld a, [hl+]                                   ; $58a1: $2a
    ld [hl-], a                                   ; $58a2: $32
    inc b                                         ; $58a3: $04
    ccf                                           ; $58a4: $3f
    ld [hl-], a                                   ; $58a5: $32
    inc b                                         ; $58a6: $04
    ld d, b                                       ; $58a7: $50
    ld [hl-], a                                   ; $58a8: $32
    inc b                                         ; $58a9: $04
    ld h, l                                       ; $58aa: $65
    ld [hl-], a                                   ; $58ab: $32
    inc b                                         ; $58ac: $04
    ld [hl], a                                    ; $58ad: $77
    ld [hl-], a                                   ; $58ae: $32
    inc b                                         ; $58af: $04
    sbc b                                         ; $58b0: $98
    ld [hl-], a                                   ; $58b1: $32
    inc b                                         ; $58b2: $04
    sbc d                                         ; $58b3: $9a
    ld [hl-], a                                   ; $58b4: $32
    inc b                                         ; $58b5: $04
    or c                                          ; $58b6: $b1
    ld [hl-], a                                   ; $58b7: $32
    inc b                                         ; $58b8: $04
    jp nz, $0432                                  ; $58b9: $c2 $32 $04

    push de                                       ; $58bc: $d5
    ld [hl-], a                                   ; $58bd: $32
    inc b                                         ; $58be: $04
    db $ec                                        ; $58bf: $ec
    ld [hl-], a                                   ; $58c0: $32
    inc b                                         ; $58c1: $04
    db $fc                                        ; $58c2: $fc
    ld [hl-], a                                   ; $58c3: $32
    inc b                                         ; $58c4: $04
    inc c                                         ; $58c5: $0c
    inc sp                                        ; $58c6: $33
    inc b                                         ; $58c7: $04
    add hl, de                                    ; $58c8: $19
    inc sp                                        ; $58c9: $33
    inc b                                         ; $58ca: $04
    inc l                                         ; $58cb: $2c
    inc sp                                        ; $58cc: $33
    inc b                                         ; $58cd: $04
    dec sp                                        ; $58ce: $3b
    inc sp                                        ; $58cf: $33
    inc b                                         ; $58d0: $04
    ld b, l                                       ; $58d1: $45
    inc sp                                        ; $58d2: $33
    inc b                                         ; $58d3: $04
    ld d, d                                       ; $58d4: $52
    inc sp                                        ; $58d5: $33
    inc b                                         ; $58d6: $04
    ld e, c                                       ; $58d7: $59
    inc sp                                        ; $58d8: $33
    inc b                                         ; $58d9: $04
    ld h, h                                       ; $58da: $64
    inc sp                                        ; $58db: $33
    inc b                                         ; $58dc: $04
    ld l, a                                       ; $58dd: $6f
    inc sp                                        ; $58de: $33
    inc b                                         ; $58df: $04
    ld a, d                                       ; $58e0: $7a
    inc sp                                        ; $58e1: $33
    inc b                                         ; $58e2: $04
    add h                                         ; $58e3: $84
    inc sp                                        ; $58e4: $33
    inc b                                         ; $58e5: $04
    adc [hl]                                      ; $58e6: $8e
    inc sp                                        ; $58e7: $33
    inc b                                         ; $58e8: $04
    sbc e                                         ; $58e9: $9b
    inc sp                                        ; $58ea: $33
    inc b                                         ; $58eb: $04
    xor d                                         ; $58ec: $aa
    inc sp                                        ; $58ed: $33
    inc b                                         ; $58ee: $04
    or l                                          ; $58ef: $b5
    inc sp                                        ; $58f0: $33
    inc b                                         ; $58f1: $04
    call nz, Call_000_0433                        ; $58f2: $c4 $33 $04
    db $d3                                        ; $58f5: $d3
    inc sp                                        ; $58f6: $33
    inc b                                         ; $58f7: $04
    ld [c], a                                     ; $58f8: $e2
    inc sp                                        ; $58f9: $33
    inc b                                         ; $58fa: $04
    ldh a, [$33]                                  ; $58fb: $f0 $33
    inc b                                         ; $58fd: $04
    rst $38                                       ; $58fe: $ff
    inc sp                                        ; $58ff: $33
    inc b                                         ; $5900: $04
    inc c                                         ; $5901: $0c
    inc [hl]                                      ; $5902: $34
    inc b                                         ; $5903: $04
    add hl, de                                    ; $5904: $19
    inc [hl]                                      ; $5905: $34
    inc b                                         ; $5906: $04
    ld h, $34                                     ; $5907: $26 $34
    inc b                                         ; $5909: $04
    ld sp, $0434                                  ; $590a: $31 $34 $04
    inc a                                         ; $590d: $3c
    inc [hl]                                      ; $590e: $34
    inc b                                         ; $590f: $04
    ld c, b                                       ; $5910: $48
    inc [hl]                                      ; $5911: $34
    inc b                                         ; $5912: $04
    ld e, b                                       ; $5913: $58
    inc [hl]                                      ; $5914: $34
    inc b                                         ; $5915: $04
    ld h, h                                       ; $5916: $64
    inc [hl]                                      ; $5917: $34
    inc b                                         ; $5918: $04
    ld [hl], c                                    ; $5919: $71
    inc [hl]                                      ; $591a: $34
    inc b                                         ; $591b: $04
    ld a, [hl]                                    ; $591c: $7e
    inc [hl]                                      ; $591d: $34
    inc b                                         ; $591e: $04
    adc e                                         ; $591f: $8b
    inc [hl]                                      ; $5920: $34
    inc b                                         ; $5921: $04
    sbc b                                         ; $5922: $98
    inc [hl]                                      ; $5923: $34
    inc b                                         ; $5924: $04
    and l                                         ; $5925: $a5
    inc [hl]                                      ; $5926: $34
    inc b                                         ; $5927: $04
    or d                                          ; $5928: $b2
    inc [hl]                                      ; $5929: $34
    inc b                                         ; $592a: $04
    cp l                                          ; $592b: $bd
    inc [hl]                                      ; $592c: $34
    inc b                                         ; $592d: $04
    ret z                                         ; $592e: $c8

    inc [hl]                                      ; $592f: $34
    inc b                                         ; $5930: $04
    db $d3                                        ; $5931: $d3
    inc [hl]                                      ; $5932: $34
    inc b                                         ; $5933: $04
    sbc $34                                       ; $5934: $de $34
    inc b                                         ; $5936: $04
    jp hl                                         ; $5937: $e9


    inc [hl]                                      ; $5938: $34
    inc b                                         ; $5939: $04
    db $f4                                        ; $593a: $f4
    inc [hl]                                      ; $593b: $34
    inc b                                         ; $593c: $04
    rlca                                          ; $593d: $07
    dec [hl]                                      ; $593e: $35
    inc b                                         ; $593f: $04
    db $10                                        ; $5940: $10
    dec [hl]                                      ; $5941: $35
    inc b                                         ; $5942: $04
    add hl, de                                    ; $5943: $19
    dec [hl]                                      ; $5944: $35
    inc b                                         ; $5945: $04
    dec h                                         ; $5946: $25
    dec [hl]                                      ; $5947: $35
    inc b                                         ; $5948: $04
    ld a, [hl+]                                   ; $5949: $2a
    dec [hl]                                      ; $594a: $35
    inc b                                         ; $594b: $04
    scf                                           ; $594c: $37
    dec [hl]                                      ; $594d: $35
    inc b                                         ; $594e: $04
    ld b, l                                       ; $594f: $45
    dec [hl]                                      ; $5950: $35
    inc b                                         ; $5951: $04
    ld d, a                                       ; $5952: $57
    dec [hl]                                      ; $5953: $35
    inc b                                         ; $5954: $04
    ld h, a                                       ; $5955: $67
    dec [hl]                                      ; $5956: $35
    inc b                                         ; $5957: $04
    ld [hl], a                                    ; $5958: $77
    dec [hl]                                      ; $5959: $35
    inc b                                         ; $595a: $04
    add a                                         ; $595b: $87
    dec [hl]                                      ; $595c: $35
    inc b                                         ; $595d: $04
    sub [hl]                                      ; $595e: $96
    dec [hl]                                      ; $595f: $35
    inc b                                         ; $5960: $04
    and [hl]                                      ; $5961: $a6
    dec [hl]                                      ; $5962: $35
    inc b                                         ; $5963: $04
    or l                                          ; $5964: $b5
    dec [hl]                                      ; $5965: $35
    inc b                                         ; $5966: $04
    push bc                                       ; $5967: $c5
    dec [hl]                                      ; $5968: $35
    inc b                                         ; $5969: $04
    rst $08                                       ; $596a: $cf
    dec [hl]                                      ; $596b: $35
    inc b                                         ; $596c: $04
    ld [c], a                                     ; $596d: $e2
    dec [hl]                                      ; $596e: $35
    inc b                                         ; $596f: $04
    db $ed                                        ; $5970: $ed
    dec [hl]                                      ; $5971: $35
    inc b                                         ; $5972: $04
    or $35                                        ; $5973: $f6 $35
    inc b                                         ; $5975: $04
    rst $38                                       ; $5976: $ff
    dec [hl]                                      ; $5977: $35
    inc b                                         ; $5978: $04
    inc de                                        ; $5979: $13
    ld [hl], $04                                  ; $597a: $36 $04
    dec h                                         ; $597c: $25
    ld [hl], $04                                  ; $597d: $36 $04
    jr c, jr_06b_59b7                             ; $597f: $38 $36

    inc b                                         ; $5981: $04
    ld b, e                                       ; $5982: $43
    ld [hl], $04                                  ; $5983: $36 $04
    ld d, h                                       ; $5985: $54
    ld [hl], $04                                  ; $5986: $36 $04
    ld h, h                                       ; $5988: $64
    ld [hl], $04                                  ; $5989: $36 $04
    ld [hl], l                                    ; $598b: $75
    ld [hl], $04                                  ; $598c: $36 $04
    ld a, h                                       ; $598e: $7c
    ld [hl], $04                                  ; $598f: $36 $04
    adc h                                         ; $5991: $8c
    ld [hl], $04                                  ; $5992: $36 $04
    sub a                                         ; $5994: $97
    ld [hl], $04                                  ; $5995: $36 $04
    and [hl]                                      ; $5997: $a6
    ld [hl], $04                                  ; $5998: $36 $04
    or e                                          ; $599a: $b3
    ld [hl], $04                                  ; $599b: $36 $04
    cp l                                          ; $599d: $bd
    ld [hl], $04                                  ; $599e: $36 $04
    ret nc                                        ; $59a0: $d0

    ld [hl], $04                                  ; $59a1: $36 $04
    rst $20                                       ; $59a3: $e7
    ld [hl], $04                                  ; $59a4: $36 $04
    ld sp, hl                                     ; $59a6: $f9
    ld [hl], $04                                  ; $59a7: $36 $04
    ld b, $37                                     ; $59a9: $06 $37
    inc b                                         ; $59ab: $04
    inc d                                         ; $59ac: $14
    scf                                           ; $59ad: $37
    inc b                                         ; $59ae: $04
    dec h                                         ; $59af: $25
    scf                                           ; $59b0: $37
    inc b                                         ; $59b1: $04
    ld sp, $0437                                  ; $59b2: $31 $37 $04
    inc a                                         ; $59b5: $3c
    scf                                           ; $59b6: $37

jr_06b_59b7:
    inc b                                         ; $59b7: $04
    ld c, c                                       ; $59b8: $49
    scf                                           ; $59b9: $37
    inc b                                         ; $59ba: $04
    ld d, c                                       ; $59bb: $51
    scf                                           ; $59bc: $37
    inc b                                         ; $59bd: $04
    ld e, l                                       ; $59be: $5d
    scf                                           ; $59bf: $37
    inc b                                         ; $59c0: $04
    ld l, c                                       ; $59c1: $69
    scf                                           ; $59c2: $37
    inc b                                         ; $59c3: $04
    ld [hl], a                                    ; $59c4: $77
    scf                                           ; $59c5: $37
    inc b                                         ; $59c6: $04
    add l                                         ; $59c7: $85
    scf                                           ; $59c8: $37
    inc b                                         ; $59c9: $04
    sub e                                         ; $59ca: $93
    scf                                           ; $59cb: $37
    inc b                                         ; $59cc: $04
    and l                                         ; $59cd: $a5
    scf                                           ; $59ce: $37
    inc b                                         ; $59cf: $04
    or h                                          ; $59d0: $b4
    scf                                           ; $59d1: $37
    inc b                                         ; $59d2: $04
    jp Jump_000_0437                              ; $59d3: $c3 $37 $04


    jp nc, Jump_000_0437                          ; $59d6: $d2 $37 $04

    pop hl                                        ; $59d9: $e1
    scf                                           ; $59da: $37
    inc b                                         ; $59db: $04
    xor $37                                       ; $59dc: $ee $37
    inc b                                         ; $59de: $04
    cp $37                                        ; $59df: $fe $37
    inc b                                         ; $59e1: $04
    inc c                                         ; $59e2: $0c
    jr c, jr_06b_59e9                             ; $59e3: $38 $04

    dec d                                         ; $59e5: $15
    jr c, jr_06b_59ec                             ; $59e6: $38 $04

    add hl, hl                                    ; $59e8: $29

jr_06b_59e9:
    jr c, jr_06b_59ef                             ; $59e9: $38 $04

    add hl, sp                                    ; $59eb: $39

jr_06b_59ec:
    jr c, jr_06b_59f2                             ; $59ec: $38 $04

    ld b, d                                       ; $59ee: $42

jr_06b_59ef:
    jr c, jr_06b_59f5                             ; $59ef: $38 $04

    ld d, b                                       ; $59f1: $50

jr_06b_59f2:
    jr c, jr_06b_59f8                             ; $59f2: $38 $04

    ld h, d                                       ; $59f4: $62

jr_06b_59f5:
    jr c, jr_06b_59fb                             ; $59f5: $38 $04

    ld [hl], b                                    ; $59f7: $70

jr_06b_59f8:
    jr c, jr_06b_59fe                             ; $59f8: $38 $04

    add d                                         ; $59fa: $82

jr_06b_59fb:
    jr c, jr_06b_5a01                             ; $59fb: $38 $04

    sbc a                                         ; $59fd: $9f

jr_06b_59fe:
    jr c, @+$06                                   ; $59fe: $38 $04

    xor [hl]                                      ; $5a00: $ae

jr_06b_5a01:
    jr c, @+$06                                   ; $5a01: $38 $04

    call nz, $0438                                ; $5a03: $c4 $38 $04
    sbc $38                                       ; $5a06: $de $38
    inc b                                         ; $5a08: $04
    ld hl, sp+$38                                 ; $5a09: $f8 $38
    inc b                                         ; $5a0b: $04
    inc e                                         ; $5a0c: $1c
    add hl, sp                                    ; $5a0d: $39
    inc b                                         ; $5a0e: $04
    dec sp                                        ; $5a0f: $3b
    add hl, sp                                    ; $5a10: $39
    inc b                                         ; $5a11: $04
    ld d, [hl]                                    ; $5a12: $56
    add hl, sp                                    ; $5a13: $39
    inc b                                         ; $5a14: $04
    ld [hl], c                                    ; $5a15: $71
    add hl, sp                                    ; $5a16: $39
    inc b                                         ; $5a17: $04
    add e                                         ; $5a18: $83
    add hl, sp                                    ; $5a19: $39
    inc b                                         ; $5a1a: $04
    sub e                                         ; $5a1b: $93
    add hl, sp                                    ; $5a1c: $39
    inc b                                         ; $5a1d: $04
    and e                                         ; $5a1e: $a3
    add hl, sp                                    ; $5a1f: $39
    inc b                                         ; $5a20: $04
    or e                                          ; $5a21: $b3
    add hl, sp                                    ; $5a22: $39
    inc b                                         ; $5a23: $04
    jp z, Jump_000_0439                           ; $5a24: $ca $39 $04

    pop hl                                        ; $5a27: $e1
    add hl, sp                                    ; $5a28: $39
    inc b                                         ; $5a29: $04
    or $39                                        ; $5a2a: $f6 $39
    inc b                                         ; $5a2c: $04
    inc c                                         ; $5a2d: $0c
    ld a, [hl-]                                   ; $5a2e: $3a
    inc b                                         ; $5a2f: $04
    ld hl, $043a                                  ; $5a30: $21 $3a $04
    inc [hl]                                      ; $5a33: $34
    ld a, [hl-]                                   ; $5a34: $3a
    inc b                                         ; $5a35: $04
    ld c, b                                       ; $5a36: $48
    ld a, [hl-]                                   ; $5a37: $3a
    inc b                                         ; $5a38: $04
    ld e, h                                       ; $5a39: $5c
    ld a, [hl-]                                   ; $5a3a: $3a
    inc b                                         ; $5a3b: $04

Jump_06b_5a3c:
    ld a, l                                       ; $5a3c: $7d
    ld a, [hl-]                                   ; $5a3d: $3a
    inc b                                         ; $5a3e: $04
    sub h                                         ; $5a3f: $94
    ld a, [hl-]                                   ; $5a40: $3a
    inc b                                         ; $5a41: $04
    or d                                          ; $5a42: $b2
    ld a, [hl-]                                   ; $5a43: $3a
    inc b                                         ; $5a44: $04
    ret nc                                        ; $5a45: $d0

    ld a, [hl-]                                   ; $5a46: $3a
    inc b                                         ; $5a47: $04
    xor $3a                                       ; $5a48: $ee $3a
    inc b                                         ; $5a4a: $04
    dec bc                                        ; $5a4b: $0b
    dec sp                                        ; $5a4c: $3b
    inc b                                         ; $5a4d: $04
    add hl, hl                                    ; $5a4e: $29
    dec sp                                        ; $5a4f: $3b
    inc b                                         ; $5a50: $04
    ld b, [hl]                                    ; $5a51: $46
    dec sp                                        ; $5a52: $3b
    inc b                                         ; $5a53: $04
    ld d, [hl]                                    ; $5a54: $56
    dec sp                                        ; $5a55: $3b
    inc b                                         ; $5a56: $04
    ld h, [hl]                                    ; $5a57: $66
    dec sp                                        ; $5a58: $3b
    inc b                                         ; $5a59: $04
    halt                                          ; $5a5a: $76
    dec sp                                        ; $5a5b: $3b
    inc b                                         ; $5a5c: $04
    add [hl]                                      ; $5a5d: $86
    dec sp                                        ; $5a5e: $3b
    inc b                                         ; $5a5f: $04
    sub [hl]                                      ; $5a60: $96
    dec sp                                        ; $5a61: $3b
    inc b                                         ; $5a62: $04
    and [hl]                                      ; $5a63: $a6
    dec sp                                        ; $5a64: $3b
    inc b                                         ; $5a65: $04
    call nz, $043b                                ; $5a66: $c4 $3b $04
    rst $10                                       ; $5a69: $d7
    dec sp                                        ; $5a6a: $3b
    inc b                                         ; $5a6b: $04
    ld [$043b], a                                 ; $5a6c: $ea $3b $04
    cp $3b                                        ; $5a6f: $fe $3b
    inc b                                         ; $5a71: $04
    inc c                                         ; $5a72: $0c
    inc a                                         ; $5a73: $3c
    inc b                                         ; $5a74: $04
    ld hl, $043c                                  ; $5a75: $21 $3c $04
    inc sp                                        ; $5a78: $33
    inc a                                         ; $5a79: $3c
    inc b                                         ; $5a7a: $04
    ld c, d                                       ; $5a7b: $4a
    inc a                                         ; $5a7c: $3c
    inc b                                         ; $5a7d: $04
    ld h, c                                       ; $5a7e: $61
    inc a                                         ; $5a7f: $3c
    inc b                                         ; $5a80: $04
    ld a, b                                       ; $5a81: $78
    inc a                                         ; $5a82: $3c
    inc b                                         ; $5a83: $04
    adc a                                         ; $5a84: $8f
    inc a                                         ; $5a85: $3c
    inc b                                         ; $5a86: $04
    and l                                         ; $5a87: $a5
    inc a                                         ; $5a88: $3c
    inc b                                         ; $5a89: $04
    cp h                                          ; $5a8a: $bc
    inc a                                         ; $5a8b: $3c
    inc b                                         ; $5a8c: $04
    jp nc, Jump_000_043c                          ; $5a8d: $d2 $3c $04

    jp hl                                         ; $5a90: $e9


    inc a                                         ; $5a91: $3c
    inc b                                         ; $5a92: $04
    db $fc                                        ; $5a93: $fc
    inc a                                         ; $5a94: $3c
    inc b                                         ; $5a95: $04
    rla                                           ; $5a96: $17
    dec a                                         ; $5a97: $3d
    inc b                                         ; $5a98: $04
    ld a, [hl+]                                   ; $5a99: $2a
    dec a                                         ; $5a9a: $3d
    inc b                                         ; $5a9b: $04
    ld a, [hl-]                                   ; $5a9c: $3a
    dec a                                         ; $5a9d: $3d
    inc b                                         ; $5a9e: $04
    ld c, d                                       ; $5a9f: $4a
    dec a                                         ; $5aa0: $3d
    inc b                                         ; $5aa1: $04
    ld l, c                                       ; $5aa2: $69
    dec a                                         ; $5aa3: $3d
    inc b                                         ; $5aa4: $04
    add e                                         ; $5aa5: $83
    dec a                                         ; $5aa6: $3d
    inc b                                         ; $5aa7: $04
    sbc [hl]                                      ; $5aa8: $9e
    dec a                                         ; $5aa9: $3d
    inc b                                         ; $5aaa: $04
    or d                                          ; $5aab: $b2
    dec a                                         ; $5aac: $3d
    inc b                                         ; $5aad: $04
    adc $3d                                       ; $5aae: $ce $3d
    inc b                                         ; $5ab0: $04
    jp hl                                         ; $5ab1: $e9


    dec a                                         ; $5ab2: $3d
    inc b                                         ; $5ab3: $04
    dec b                                         ; $5ab4: $05
    ld a, $04                                     ; $5ab5: $3e $04
    inc d                                         ; $5ab7: $14
    ld a, $04                                     ; $5ab8: $3e $04
    inc l                                         ; $5aba: $2c
    ld a, $04                                     ; $5abb: $3e $04
    ld b, b                                       ; $5abd: $40
    ld a, $04                                     ; $5abe: $3e $04
    ld e, e                                       ; $5ac0: $5b
    ld a, $04                                     ; $5ac1: $3e $04
    ld [hl], d                                    ; $5ac3: $72
    ld a, $04                                     ; $5ac4: $3e $04
    add h                                         ; $5ac6: $84
    ld a, $04                                     ; $5ac7: $3e $04
    and b                                         ; $5ac9: $a0
    ld a, $04                                     ; $5aca: $3e $04
    ret nz                                        ; $5acc: $c0

    ld a, $04                                     ; $5acd: $3e $04
    jp c, $043e                                   ; $5acf: $da $3e $04

    ldh a, [$3e]                                  ; $5ad2: $f0 $3e
    inc b                                         ; $5ad4: $04
    ld b, $3f                                     ; $5ad5: $06 $3f
    inc b                                         ; $5ad7: $04
    jr jr_06b_5b19                                ; $5ad8: $18 $3f

    inc b                                         ; $5ada: $04
    dec l                                         ; $5adb: $2d
    ccf                                           ; $5adc: $3f
    inc b                                         ; $5add: $04
    ld b, c                                       ; $5ade: $41
    ccf                                           ; $5adf: $3f
    inc b                                         ; $5ae0: $04
    ld d, b                                       ; $5ae1: $50
    ccf                                           ; $5ae2: $3f
    inc b                                         ; $5ae3: $04
    ld l, b                                       ; $5ae4: $68
    ccf                                           ; $5ae5: $3f
    inc b                                         ; $5ae6: $04
    ld a, d                                       ; $5ae7: $7a
    ccf                                           ; $5ae8: $3f
    inc b                                         ; $5ae9: $04
    sub b                                         ; $5aea: $90
    ccf                                           ; $5aeb: $3f
    inc b                                         ; $5aec: $04
    and d                                         ; $5aed: $a2
    ccf                                           ; $5aee: $3f
    inc b                                         ; $5aef: $04
    or h                                          ; $5af0: $b4
    ccf                                           ; $5af1: $3f
    inc b                                         ; $5af2: $04
    add $3f                                       ; $5af3: $c6 $3f
    inc b                                         ; $5af5: $04
    call c, $053f                                 ; $5af6: $dc $3f $05
    ld bc, $0500                                  ; $5af9: $01 $00 $05
    inc de                                        ; $5afc: $13
    nop                                           ; $5afd: $00
    dec b                                         ; $5afe: $05
    dec hl                                        ; $5aff: $2b
    nop                                           ; $5b00: $00
    dec b                                         ; $5b01: $05
    ld b, a                                       ; $5b02: $47
    nop                                           ; $5b03: $00
    dec b                                         ; $5b04: $05
    ld e, h                                       ; $5b05: $5c
    nop                                           ; $5b06: $00
    dec b                                         ; $5b07: $05
    ld [hl], h                                    ; $5b08: $74
    nop                                           ; $5b09: $00
    dec b                                         ; $5b0a: $05
    adc d                                         ; $5b0b: $8a
    nop                                           ; $5b0c: $00
    dec b                                         ; $5b0d: $05
    sbc h                                         ; $5b0e: $9c
    nop                                           ; $5b0f: $00
    dec b                                         ; $5b10: $05
    xor a                                         ; $5b11: $af
    nop                                           ; $5b12: $00
    dec b                                         ; $5b13: $05
    jp z, Jump_000_0500                           ; $5b14: $ca $00 $05

    db $dd                                        ; $5b17: $dd
    nop                                           ; $5b18: $00

jr_06b_5b19:
    dec b                                         ; $5b19: $05
    db $f4                                        ; $5b1a: $f4
    nop                                           ; $5b1b: $00
    dec b                                         ; $5b1c: $05
    ld b, $01                                     ; $5b1d: $06 $01
    dec b                                         ; $5b1f: $05
    cp [hl]                                       ; $5b20: $be
    ld bc, $e405                                  ; $5b21: $01 $05 $e4
    ld bc, $f105                                  ; $5b24: $01 $05 $f1
    ld bc, $fb05                                  ; $5b27: $01 $05 $fb
    ld bc, $0c05                                  ; $5b2a: $01 $05 $0c
    ld [bc], a                                    ; $5b2d: $02
    dec b                                         ; $5b2e: $05
    ld a, [de]                                    ; $5b2f: $1a
    ld [bc], a                                    ; $5b30: $02
    dec b                                         ; $5b31: $05
    inc l                                         ; $5b32: $2c
    ld [bc], a                                    ; $5b33: $02
    dec b                                         ; $5b34: $05
    jr c, jr_06b_5b39                             ; $5b35: $38 $02

    dec b                                         ; $5b37: $05
    ld b, a                                       ; $5b38: $47

jr_06b_5b39:
    ld [bc], a                                    ; $5b39: $02
    dec b                                         ; $5b3a: $05
    ld c, h                                       ; $5b3b: $4c
    ld [bc], a                                    ; $5b3c: $02
    dec b                                         ; $5b3d: $05
    ld d, e                                       ; $5b3e: $53
    ld [bc], a                                    ; $5b3f: $02
    dec b                                         ; $5b40: $05
    ld e, d                                       ; $5b41: $5a
    ld [bc], a                                    ; $5b42: $02
    dec b                                         ; $5b43: $05
    ld h, c                                       ; $5b44: $61
    ld [bc], a                                    ; $5b45: $02
    dec b                                         ; $5b46: $05
    ld l, b                                       ; $5b47: $68
    ld [bc], a                                    ; $5b48: $02
    dec b                                         ; $5b49: $05
    ld [hl], c                                    ; $5b4a: $71
    ld [bc], a                                    ; $5b4b: $02
    dec b                                         ; $5b4c: $05
    add a                                         ; $5b4d: $87
    ld [bc], a                                    ; $5b4e: $02
    dec b                                         ; $5b4f: $05
    sub l                                         ; $5b50: $95
    ld [bc], a                                    ; $5b51: $02
    dec b                                         ; $5b52: $05
    and c                                         ; $5b53: $a1
    ld [bc], a                                    ; $5b54: $02
    dec b                                         ; $5b55: $05
    xor [hl]                                      ; $5b56: $ae
    ld [bc], a                                    ; $5b57: $02
    dec b                                         ; $5b58: $05
    cp d                                          ; $5b59: $ba
    ld [bc], a                                    ; $5b5a: $02
    dec b                                         ; $5b5b: $05
    jp z, Jump_000_0502                           ; $5b5c: $ca $02 $05

    rst $10                                       ; $5b5f: $d7
    ld [bc], a                                    ; $5b60: $02
    dec b                                         ; $5b61: $05
    db $e4                                        ; $5b62: $e4
    ld [bc], a                                    ; $5b63: $02
    dec b                                         ; $5b64: $05
    db $ed                                        ; $5b65: $ed
    ld [bc], a                                    ; $5b66: $02
    dec b                                         ; $5b67: $05
    di                                            ; $5b68: $f3
    ld [bc], a                                    ; $5b69: $02
    dec b                                         ; $5b6a: $05
    rst $30                                       ; $5b6b: $f7
    ld [bc], a                                    ; $5b6c: $02
    dec b                                         ; $5b6d: $05
    inc b                                         ; $5b6e: $04
    inc bc                                        ; $5b6f: $03
    dec b                                         ; $5b70: $05
    db $10                                        ; $5b71: $10
    inc bc                                        ; $5b72: $03
    dec b                                         ; $5b73: $05
    rla                                           ; $5b74: $17
    inc bc                                        ; $5b75: $03
    dec b                                         ; $5b76: $05
    jr nz, jr_06b_5b7c                            ; $5b77: $20 $03

    dec b                                         ; $5b79: $05
    dec hl                                        ; $5b7a: $2b
    inc bc                                        ; $5b7b: $03

jr_06b_5b7c:
    dec b                                         ; $5b7c: $05
    jr c, jr_06b_5b82                             ; $5b7d: $38 $03

    dec b                                         ; $5b7f: $05
    ld b, e                                       ; $5b80: $43
    inc bc                                        ; $5b81: $03

jr_06b_5b82:
    dec b                                         ; $5b82: $05
    ld c, h                                       ; $5b83: $4c
    inc bc                                        ; $5b84: $03
    dec b                                         ; $5b85: $05
    ld e, d                                       ; $5b86: $5a
    inc bc                                        ; $5b87: $03
    dec b                                         ; $5b88: $05
    ld h, l                                       ; $5b89: $65
    inc bc                                        ; $5b8a: $03
    dec b                                         ; $5b8b: $05
    ld l, h                                       ; $5b8c: $6c
    inc bc                                        ; $5b8d: $03
    dec b                                         ; $5b8e: $05
    ld [hl], e                                    ; $5b8f: $73
    inc bc                                        ; $5b90: $03
    dec b                                         ; $5b91: $05
    ld a, l                                       ; $5b92: $7d
    inc bc                                        ; $5b93: $03
    dec b                                         ; $5b94: $05
    adc e                                         ; $5b95: $8b
    inc bc                                        ; $5b96: $03
    dec b                                         ; $5b97: $05
    sub [hl]                                      ; $5b98: $96
    inc bc                                        ; $5b99: $03
    dec b                                         ; $5b9a: $05
    and d                                         ; $5b9b: $a2
    inc bc                                        ; $5b9c: $03
    dec b                                         ; $5b9d: $05
    xor a                                         ; $5b9e: $af
    inc bc                                        ; $5b9f: $03
    dec b                                         ; $5ba0: $05
    ret nz                                        ; $5ba1: $c0

    inc bc                                        ; $5ba2: $03
    dec b                                         ; $5ba3: $05

Jump_06b_5ba4:
    add $03                                       ; $5ba4: $c6 $03
    dec b                                         ; $5ba6: $05
    db $d3                                        ; $5ba7: $d3
    inc bc                                        ; $5ba8: $03
    dec b                                         ; $5ba9: $05
    db $dd                                        ; $5baa: $dd
    inc bc                                        ; $5bab: $03
    dec b                                         ; $5bac: $05
    ld [c], a                                     ; $5bad: $e2
    inc bc                                        ; $5bae: $03
    dec b                                         ; $5baf: $05
    and $03                                       ; $5bb0: $e6 $03
    dec b                                         ; $5bb2: $05
    di                                            ; $5bb3: $f3
    inc bc                                        ; $5bb4: $03
    dec b                                         ; $5bb5: $05
    dec de                                        ; $5bb6: $1b
    inc b                                         ; $5bb7: $04
    dec b                                         ; $5bb8: $05
    ld h, $04                                     ; $5bb9: $26 $04
    dec b                                         ; $5bbb: $05
    ld sp, $0504                                  ; $5bbc: $31 $04 $05
    ld e, l                                       ; $5bbf: $5d
    inc b                                         ; $5bc0: $04
    dec b                                         ; $5bc1: $05
    ld a, d                                       ; $5bc2: $7a
    inc b                                         ; $5bc3: $04
    dec b                                         ; $5bc4: $05
    sbc c                                         ; $5bc5: $99
    inc b                                         ; $5bc6: $04
    dec b                                         ; $5bc7: $05
    cp b                                          ; $5bc8: $b8
    inc b                                         ; $5bc9: $04
    dec b                                         ; $5bca: $05
    call nc, $0504                                ; $5bcb: $d4 $04 $05
    pop af                                        ; $5bce: $f1
    inc b                                         ; $5bcf: $04
    dec b                                         ; $5bd0: $05
    rlca                                          ; $5bd1: $07
    dec b                                         ; $5bd2: $05
    dec b                                         ; $5bd3: $05
    jr z, jr_06b_5bdb                             ; $5bd4: $28 $05

    dec b                                         ; $5bd6: $05
    ld b, d                                       ; $5bd7: $42
    dec b                                         ; $5bd8: $05
    dec b                                         ; $5bd9: $05
    ld e, e                                       ; $5bda: $5b

jr_06b_5bdb:
    dec b                                         ; $5bdb: $05
    dec b                                         ; $5bdc: $05
    ld l, c                                       ; $5bdd: $69
    dec b                                         ; $5bde: $05
    dec b                                         ; $5bdf: $05
    ld a, a                                       ; $5be0: $7f
    dec b                                         ; $5be1: $05
    dec b                                         ; $5be2: $05
    adc l                                         ; $5be3: $8d
    dec b                                         ; $5be4: $05
    dec b                                         ; $5be5: $05
    xor a                                         ; $5be6: $af
    dec b                                         ; $5be7: $05
    dec b                                         ; $5be8: $05
    cp a                                          ; $5be9: $bf
    dec b                                         ; $5bea: $05
    dec b                                         ; $5beb: $05
    ret c                                         ; $5bec: $d8

    dec b                                         ; $5bed: $05
    dec b                                         ; $5bee: $05
    pop hl                                        ; $5bef: $e1
    dec b                                         ; $5bf0: $05
    dec b                                         ; $5bf1: $05
    ld [$0505], a                                 ; $5bf2: $ea $05 $05
    rst $30                                       ; $5bf5: $f7
    dec b                                         ; $5bf6: $05
    dec b                                         ; $5bf7: $05
    inc b                                         ; $5bf8: $04
    ld b, $05                                     ; $5bf9: $06 $05
    db $10                                        ; $5bfb: $10
    ld b, $05                                     ; $5bfc: $06 $05
    ld a, [de]                                    ; $5bfe: $1a
    ld b, $05                                     ; $5bff: $06 $05
    ld [hl], $06                                  ; $5c01: $36 $06
    dec b                                         ; $5c03: $05
    ld c, e                                       ; $5c04: $4b
    ld b, $05                                     ; $5c05: $06 $05
    ld a, h                                       ; $5c07: $7c
    ld b, $05                                     ; $5c08: $06 $05
    xor d                                         ; $5c0a: $aa
    ld b, $05                                     ; $5c0b: $06 $05
    jp nc, $0506                                  ; $5c0d: $d2 $06 $05

    rst $20                                       ; $5c10: $e7
    ld b, $05                                     ; $5c11: $06 $05
    rst $30                                       ; $5c13: $f7
    ld b, $05                                     ; $5c14: $06 $05
    rlca                                          ; $5c16: $07
    rlca                                          ; $5c17: $07

Call_06b_5c18:
    dec b                                         ; $5c18: $05
    inc de                                        ; $5c19: $13
    rlca                                          ; $5c1a: $07
    dec b                                         ; $5c1b: $05
    ld hl, $0507                                  ; $5c1c: $21 $07 $05
    ld sp, $0507                                  ; $5c1f: $31 $07 $05
    inc a                                         ; $5c22: $3c
    rlca                                          ; $5c23: $07
    dec b                                         ; $5c24: $05
    ld c, [hl]                                    ; $5c25: $4e
    rlca                                          ; $5c26: $07
    dec b                                         ; $5c27: $05
    ld a, c                                       ; $5c28: $79
    rlca                                          ; $5c29: $07
    dec b                                         ; $5c2a: $05
    and l                                         ; $5c2b: $a5
    rlca                                          ; $5c2c: $07
    dec b                                         ; $5c2d: $05
    rst $10                                       ; $5c2e: $d7
    rlca                                          ; $5c2f: $07
    dec b                                         ; $5c30: $05
    rst $38                                       ; $5c31: $ff
    rlca                                          ; $5c32: $07
    dec b                                         ; $5c33: $05
    ld a, [hl+]                                   ; $5c34: $2a
    ld [$6f05], sp                                ; $5c35: $08 $05 $6f
    ld [$9905], sp                                ; $5c38: $08 $05 $99
    ld [$d205], sp                                ; $5c3b: $08 $05 $d2
    ld [$0305], sp                                ; $5c3e: $08 $05 $03
    add hl, bc                                    ; $5c41: $09
    dec b                                         ; $5c42: $05
    ld d, b                                       ; $5c43: $50
    add hl, bc                                    ; $5c44: $09
    dec b                                         ; $5c45: $05
    sbc h                                         ; $5c46: $9c
    add hl, bc                                    ; $5c47: $09
    dec b                                         ; $5c48: $05
    pop de                                        ; $5c49: $d1
    add hl, bc                                    ; $5c4a: $09
    dec b                                         ; $5c4b: $05
    ld b, $0a                                     ; $5c4c: $06 $0a
    dec b                                         ; $5c4e: $05
    ei                                            ; $5c4f: $fb
    ld a, [bc]                                    ; $5c50: $0a
    dec b                                         ; $5c51: $05
    inc b                                         ; $5c52: $04
    dec bc                                        ; $5c53: $0b
    dec b                                         ; $5c54: $05
    ld c, $0b                                     ; $5c55: $0e $0b
    dec b                                         ; $5c57: $05
    inc de                                        ; $5c58: $13
    dec bc                                        ; $5c59: $0b
    dec b                                         ; $5c5a: $05
    inc e                                         ; $5c5b: $1c
    dec bc                                        ; $5c5c: $0b
    dec b                                         ; $5c5d: $05
    jr z, jr_06b_5c6b                             ; $5c5e: $28 $0b

    dec b                                         ; $5c60: $05
    ld [hl-], a                                   ; $5c61: $32
    dec bc                                        ; $5c62: $0b
    dec b                                         ; $5c63: $05
    ld b, b                                       ; $5c64: $40
    dec bc                                        ; $5c65: $0b
    dec b                                         ; $5c66: $05
    ld c, d                                       ; $5c67: $4a
    dec bc                                        ; $5c68: $0b
    dec b                                         ; $5c69: $05
    ld d, h                                       ; $5c6a: $54

jr_06b_5c6b:
    dec bc                                        ; $5c6b: $0b
    dec b                                         ; $5c6c: $05
    ld h, b                                       ; $5c6d: $60
    dec bc                                        ; $5c6e: $0b
    dec b                                         ; $5c6f: $05
    ld l, c                                       ; $5c70: $69
    dec bc                                        ; $5c71: $0b
    dec b                                         ; $5c72: $05
    ld [hl], b                                    ; $5c73: $70
    dec bc                                        ; $5c74: $0b
    dec b                                         ; $5c75: $05
    ld a, e                                       ; $5c76: $7b
    dec bc                                        ; $5c77: $0b
    dec b                                         ; $5c78: $05
    add b                                         ; $5c79: $80
    dec bc                                        ; $5c7a: $0b
    dec b                                         ; $5c7b: $05
    adc d                                         ; $5c7c: $8a
    dec bc                                        ; $5c7d: $0b
    dec b                                         ; $5c7e: $05
    sub e                                         ; $5c7f: $93
    dec bc                                        ; $5c80: $0b
    dec b                                         ; $5c81: $05
    sub a                                         ; $5c82: $97
    dec bc                                        ; $5c83: $0b
    dec b                                         ; $5c84: $05
    sbc a                                         ; $5c85: $9f
    dec bc                                        ; $5c86: $0b
    dec b                                         ; $5c87: $05
    xor c                                         ; $5c88: $a9
    dec bc                                        ; $5c89: $0b
    dec b                                         ; $5c8a: $05
    or [hl]                                       ; $5c8b: $b6
    dec bc                                        ; $5c8c: $0b
    dec b                                         ; $5c8d: $05
    jp nz, Jump_000_050b                          ; $5c8e: $c2 $0b $05

    jp z, Jump_000_050b                           ; $5c91: $ca $0b $05

    push de                                       ; $5c94: $d5
    dec bc                                        ; $5c95: $0b
    dec b                                         ; $5c96: $05
    reti                                          ; $5c97: $d9


    dec bc                                        ; $5c98: $0b
    dec b                                         ; $5c99: $05
    ldh [$0b], a                                  ; $5c9a: $e0 $0b
    dec b                                         ; $5c9c: $05
    and $0b                                       ; $5c9d: $e6 $0b
    dec b                                         ; $5c9f: $05
    db $ed                                        ; $5ca0: $ed
    dec bc                                        ; $5ca1: $0b
    dec b                                         ; $5ca2: $05
    ld hl, sp+$0b                                 ; $5ca3: $f8 $0b
    dec b                                         ; $5ca5: $05
    nop                                           ; $5ca6: $00
    inc c                                         ; $5ca7: $0c
    dec b                                         ; $5ca8: $05
    ld b, $0c                                     ; $5ca9: $06 $0c
    dec b                                         ; $5cab: $05
    inc de                                        ; $5cac: $13
    inc c                                         ; $5cad: $0c
    dec b                                         ; $5cae: $05
    jr nz, jr_06b_5cbd                            ; $5caf: $20 $0c

    dec b                                         ; $5cb1: $05
    dec hl                                        ; $5cb2: $2b
    inc c                                         ; $5cb3: $0c
    dec b                                         ; $5cb4: $05
    inc sp                                        ; $5cb5: $33
    inc c                                         ; $5cb6: $0c
    dec b                                         ; $5cb7: $05
    inc a                                         ; $5cb8: $3c
    inc c                                         ; $5cb9: $0c
    dec b                                         ; $5cba: $05
    ld c, b                                       ; $5cbb: $48
    inc c                                         ; $5cbc: $0c

jr_06b_5cbd:
    dec b                                         ; $5cbd: $05
    ld d, c                                       ; $5cbe: $51
    inc c                                         ; $5cbf: $0c
    dec b                                         ; $5cc0: $05
    ld h, c                                       ; $5cc1: $61
    inc c                                         ; $5cc2: $0c
    dec b                                         ; $5cc3: $05
    ld h, a                                       ; $5cc4: $67
    inc c                                         ; $5cc5: $0c
    dec b                                         ; $5cc6: $05
    ld [hl], e                                    ; $5cc7: $73
    inc c                                         ; $5cc8: $0c
    dec b                                         ; $5cc9: $05
    ld a, l                                       ; $5cca: $7d
    inc c                                         ; $5ccb: $0c
    dec b                                         ; $5ccc: $05
    add l                                         ; $5ccd: $85
    inc c                                         ; $5cce: $0c
    dec b                                         ; $5ccf: $05
    adc l                                         ; $5cd0: $8d
    inc c                                         ; $5cd1: $0c
    dec b                                         ; $5cd2: $05
    sub [hl]                                      ; $5cd3: $96
    inc c                                         ; $5cd4: $0c
    dec b                                         ; $5cd5: $05
    and e                                         ; $5cd6: $a3
    inc c                                         ; $5cd7: $0c
    dec b                                         ; $5cd8: $05
    xor a                                         ; $5cd9: $af
    inc c                                         ; $5cda: $0c
    dec b                                         ; $5cdb: $05
    cp e                                          ; $5cdc: $bb
    inc c                                         ; $5cdd: $0c
    dec b                                         ; $5cde: $05
    jp nz, Jump_000_050c                          ; $5cdf: $c2 $0c $05

    call Call_000_050c                            ; $5ce2: $cd $0c $05
    rst $10                                       ; $5ce5: $d7
    inc c                                         ; $5ce6: $0c
    dec b                                         ; $5ce7: $05
    push hl                                       ; $5ce8: $e5
    inc c                                         ; $5ce9: $0c
    dec b                                         ; $5cea: $05
    ei                                            ; $5ceb: $fb
    inc c                                         ; $5cec: $0c
    dec b                                         ; $5ced: $05
    ld a, [de]                                    ; $5cee: $1a
    dec c                                         ; $5cef: $0d
    dec b                                         ; $5cf0: $05
    ld c, e                                       ; $5cf1: $4b
    dec c                                         ; $5cf2: $0d
    dec b                                         ; $5cf3: $05
    add h                                         ; $5cf4: $84
    dec c                                         ; $5cf5: $0d
    dec b                                         ; $5cf6: $05
    xor e                                         ; $5cf7: $ab
    dec c                                         ; $5cf8: $0d
    dec b                                         ; $5cf9: $05
    rst $10                                       ; $5cfa: $d7
    dec c                                         ; $5cfb: $0d
    dec b                                         ; $5cfc: $05
    add hl, bc                                    ; $5cfd: $09
    ld c, $05                                     ; $5cfe: $0e $05
    add hl, de                                    ; $5d00: $19
    ld c, $05                                     ; $5d01: $0e $05
    ld c, h                                       ; $5d03: $4c
    ld c, $05                                     ; $5d04: $0e $05
    ld a, b                                       ; $5d06: $78
    ld c, $05                                     ; $5d07: $0e $05
    and d                                         ; $5d09: $a2
    ld c, $05                                     ; $5d0a: $0e $05
    add $0e                                       ; $5d0c: $c6 $0e
    dec b                                         ; $5d0e: $05
    ld sp, hl                                     ; $5d0f: $f9
    ld c, $05                                     ; $5d10: $0e $05
    daa                                           ; $5d12: $27
    rrca                                          ; $5d13: $0f
    dec b                                         ; $5d14: $05
    ld e, d                                       ; $5d15: $5a
    rrca                                          ; $5d16: $0f
    dec b                                         ; $5d17: $05
    adc b                                         ; $5d18: $88
    rrca                                          ; $5d19: $0f
    dec b                                         ; $5d1a: $05
    or [hl]                                       ; $5d1b: $b6
    rrca                                          ; $5d1c: $0f
    dec b                                         ; $5d1d: $05
    push hl                                       ; $5d1e: $e5
    rrca                                          ; $5d1f: $0f
    dec b                                         ; $5d20: $05
    dec c                                         ; $5d21: $0d
    db $10                                        ; $5d22: $10
    dec b                                         ; $5d23: $05
    dec l                                         ; $5d24: $2d
    db $10                                        ; $5d25: $10
    dec b                                         ; $5d26: $05
    ld d, h                                       ; $5d27: $54
    db $10                                        ; $5d28: $10
    dec b                                         ; $5d29: $05
    add a                                         ; $5d2a: $87
    db $10                                        ; $5d2b: $10
    dec b                                         ; $5d2c: $05
    xor [hl]                                      ; $5d2d: $ae
    db $10                                        ; $5d2e: $10
    dec b                                         ; $5d2f: $05
    sbc $10                                       ; $5d30: $de $10
    dec b                                         ; $5d32: $05
    cp $10                                        ; $5d33: $fe $10
    dec b                                         ; $5d35: $05
    daa                                           ; $5d36: $27
    ld de, $5205                                  ; $5d37: $11 $05 $52
    ld de, $7505                                  ; $5d3a: $11 $05 $75
    ld de, $9005                                  ; $5d3d: $11 $05 $90
    ld de, $c205                                  ; $5d40: $11 $05 $c2
    ld de, $e205                                  ; $5d43: $11 $05 $e2
    ld de, $1b05                                  ; $5d46: $11 $05 $1b
    ld [de], a                                    ; $5d49: $12
    dec b                                         ; $5d4a: $05
    ld e, d                                       ; $5d4b: $5a
    ld [de], a                                    ; $5d4c: $12
    dec b                                         ; $5d4d: $05
    adc c                                         ; $5d4e: $89
    ld [de], a                                    ; $5d4f: $12
    dec b                                         ; $5d50: $05
    and b                                         ; $5d51: $a0
    ld [de], a                                    ; $5d52: $12
    dec b                                         ; $5d53: $05
    jp c, Jump_000_0512                           ; $5d54: $da $12 $05

    ld [bc], a                                    ; $5d57: $02
    inc de                                        ; $5d58: $13
    dec b                                         ; $5d59: $05

Jump_06b_5d5a:
    jr nz, jr_06b_5d6f                            ; $5d5a: $20 $13

    dec b                                         ; $5d5c: $05
    ld c, a                                       ; $5d5d: $4f
    inc de                                        ; $5d5e: $13
    dec b                                         ; $5d5f: $05
    ld a, l                                       ; $5d60: $7d
    inc de                                        ; $5d61: $13
    dec b                                         ; $5d62: $05
    xor l                                         ; $5d63: $ad
    inc de                                        ; $5d64: $13
    dec b                                         ; $5d65: $05
    rst $20                                       ; $5d66: $e7
    inc de                                        ; $5d67: $13
    dec b                                         ; $5d68: $05
    ld hl, $0514                                  ; $5d69: $21 $14 $05
    ld b, e                                       ; $5d6c: $43
    inc d                                         ; $5d6d: $14
    dec b                                         ; $5d6e: $05

jr_06b_5d6f:
    ld e, [hl]                                    ; $5d6f: $5e
    inc d                                         ; $5d70: $14
    dec b                                         ; $5d71: $05
    add [hl]                                      ; $5d72: $86
    inc d                                         ; $5d73: $14
    dec b                                         ; $5d74: $05
    xor a                                         ; $5d75: $af
    inc d                                         ; $5d76: $14
    dec b                                         ; $5d77: $05
    jp hl                                         ; $5d78: $e9


    inc d                                         ; $5d79: $14
    dec b                                         ; $5d7a: $05
    ld [hl+], a                                   ; $5d7b: $22
    dec d                                         ; $5d7c: $15
    dec b                                         ; $5d7d: $05
    ld b, a                                       ; $5d7e: $47
    dec d                                         ; $5d7f: $15
    dec b                                         ; $5d80: $05
    sub [hl]                                      ; $5d81: $96
    dec d                                         ; $5d82: $15
    dec b                                         ; $5d83: $05
    ld h, a                                       ; $5d84: $67
    ld d, $05                                     ; $5d85: $16 $05
    call z, Call_000_0516                         ; $5d87: $cc $16 $05
    ld c, h                                       ; $5d8a: $4c
    rla                                           ; $5d8b: $17
    dec b                                         ; $5d8c: $05
    push hl                                       ; $5d8d: $e5
    rla                                           ; $5d8e: $17
    dec b                                         ; $5d8f: $05
    dec sp                                        ; $5d90: $3b
    jr jr_06b_5d98                                ; $5d91: $18 $05

    ld [de], a                                    ; $5d93: $12
    add hl, de                                    ; $5d94: $19
    dec b                                         ; $5d95: $05
    sbc h                                         ; $5d96: $9c
    add hl, de                                    ; $5d97: $19

jr_06b_5d98:
    dec b                                         ; $5d98: $05
    ldh [rNR30], a                                ; $5d99: $e0 $1a
    dec b                                         ; $5d9b: $05
    ld e, l                                       ; $5d9c: $5d
    dec de                                        ; $5d9d: $1b
    dec b                                         ; $5d9e: $05
    sub h                                         ; $5d9f: $94
    dec de                                        ; $5da0: $1b
    dec b                                         ; $5da1: $05
    ld [$051b], a                                 ; $5da2: $ea $1b $05
    jr jr_06b_5dc3                                ; $5da5: $18 $1c

    dec b                                         ; $5da7: $05
    ld d, c                                       ; $5da8: $51
    inc e                                         ; $5da9: $1c
    dec b                                         ; $5daa: $05
    ld [hl], b                                    ; $5dab: $70
    inc e                                         ; $5dac: $1c
    dec b                                         ; $5dad: $05
    sbc l                                         ; $5dae: $9d
    inc e                                         ; $5daf: $1c
    dec b                                         ; $5db0: $05
    cp [hl]                                       ; $5db1: $be
    inc e                                         ; $5db2: $1c
    dec b                                         ; $5db3: $05
    ldh a, [rNR32]                                ; $5db4: $f0 $1c
    dec b                                         ; $5db6: $05
    inc d                                         ; $5db7: $14
    dec e                                         ; $5db8: $1d
    dec b                                         ; $5db9: $05
    inc a                                         ; $5dba: $3c
    dec e                                         ; $5dbb: $1d
    dec b                                         ; $5dbc: $05
    ld d, c                                       ; $5dbd: $51
    dec e                                         ; $5dbe: $1d
    dec b                                         ; $5dbf: $05
    ld [hl], d                                    ; $5dc0: $72
    dec e                                         ; $5dc1: $1d
    dec b                                         ; $5dc2: $05

jr_06b_5dc3:
    adc h                                         ; $5dc3: $8c
    dec e                                         ; $5dc4: $1d
    dec b                                         ; $5dc5: $05
    and h                                         ; $5dc6: $a4
    dec e                                         ; $5dc7: $1d
    dec b                                         ; $5dc8: $05
    call z, Call_000_051d                         ; $5dc9: $cc $1d $05
    push af                                       ; $5dcc: $f5
    dec e                                         ; $5dcd: $1d
    dec b                                         ; $5dce: $05
    inc l                                         ; $5dcf: $2c
    ld e, $05                                     ; $5dd0: $1e $05
    ld c, b                                       ; $5dd2: $48
    ld e, $05                                     ; $5dd3: $1e $05
    ld a, c                                       ; $5dd5: $79
    ld e, $05                                     ; $5dd6: $1e $05
    xor b                                         ; $5dd8: $a8
    ld e, $05                                     ; $5dd9: $1e $05
    jp c, $051e                                   ; $5ddb: $da $1e $05

    ld bc, $051f                                  ; $5dde: $01 $1f $05
    add hl, de                                    ; $5de1: $19
    rra                                           ; $5de2: $1f
    dec b                                         ; $5de3: $05
    ld b, h                                       ; $5de4: $44
    rra                                           ; $5de5: $1f
    dec b                                         ; $5de6: $05
    ld e, d                                       ; $5de7: $5a
    rra                                           ; $5de8: $1f
    dec b                                         ; $5de9: $05
    ld a, a                                       ; $5dea: $7f
    rra                                           ; $5deb: $1f
    dec b                                         ; $5dec: $05
    xor e                                         ; $5ded: $ab
    rra                                           ; $5dee: $1f
    dec b                                         ; $5def: $05
    ret                                           ; $5df0: $c9


    rra                                           ; $5df1: $1f
    dec b                                         ; $5df2: $05
    di                                            ; $5df3: $f3
    rra                                           ; $5df4: $1f
    dec b                                         ; $5df5: $05
    ld d, $20                                     ; $5df6: $16 $20
    dec b                                         ; $5df8: $05
    scf                                           ; $5df9: $37
    jr nz, @+$07                                  ; $5dfa: $20 $05

    ld h, b                                       ; $5dfc: $60
    jr nz, @+$07                                  ; $5dfd: $20 $05

    adc [hl]                                      ; $5dff: $8e
    jr nz, @+$07                                  ; $5e00: $20 $05

    push bc                                       ; $5e02: $c5
    jr nz, @+$07                                  ; $5e03: $20 $05

    db $eb                                        ; $5e05: $eb
    jr nz, @+$07                                  ; $5e06: $20 $05

    rlca                                          ; $5e08: $07
    ld hl, $1605                                  ; $5e09: $21 $05 $16
    ld hl, $4505                                  ; $5e0c: $21 $05 $45
    ld hl, $6405                                  ; $5e0f: $21 $05 $64
    ld hl, $7e05                                  ; $5e12: $21 $05 $7e
    ld hl, $a205                                  ; $5e15: $21 $05 $a2
    ld hl, $cc05                                  ; $5e18: $21 $05 $cc
    ld hl, $e405                                  ; $5e1b: $21 $05 $e4
    ld hl, $0a05                                  ; $5e1e: $21 $05 $0a
    ld [hl+], a                                   ; $5e21: $22
    dec b                                         ; $5e22: $05
    jr z, jr_06b_5e47                             ; $5e23: $28 $22

    dec b                                         ; $5e25: $05
    ld a, d                                       ; $5e26: $7a
    ld [hl+], a                                   ; $5e27: $22
    dec b                                         ; $5e28: $05
    and c                                         ; $5e29: $a1
    ld [hl+], a                                   ; $5e2a: $22
    dec b                                         ; $5e2b: $05
    push de                                       ; $5e2c: $d5
    ld [hl+], a                                   ; $5e2d: $22
    dec b                                         ; $5e2e: $05
    db $fd                                        ; $5e2f: $fd
    ld [hl+], a                                   ; $5e30: $22
    dec b                                         ; $5e31: $05
    jr z, jr_06b_5e57                             ; $5e32: $28 $23

    dec b                                         ; $5e34: $05
    ld e, e                                       ; $5e35: $5b
    inc hl                                        ; $5e36: $23
    dec b                                         ; $5e37: $05
    add c                                         ; $5e38: $81
    inc hl                                        ; $5e39: $23
    dec b                                         ; $5e3a: $05
    cp [hl]                                       ; $5e3b: $be
    inc hl                                        ; $5e3c: $23
    dec b                                         ; $5e3d: $05
    db $dd                                        ; $5e3e: $dd
    inc hl                                        ; $5e3f: $23
    dec b                                         ; $5e40: $05
    inc b                                         ; $5e41: $04
    inc h                                         ; $5e42: $24
    dec b                                         ; $5e43: $05
    inc l                                         ; $5e44: $2c
    inc h                                         ; $5e45: $24
    dec b                                         ; $5e46: $05

jr_06b_5e47:
    ld h, e                                       ; $5e47: $63
    inc h                                         ; $5e48: $24
    dec b                                         ; $5e49: $05
    add l                                         ; $5e4a: $85
    inc h                                         ; $5e4b: $24
    dec b                                         ; $5e4c: $05
    jp $0524                                      ; $5e4d: $c3 $24 $05


    ld hl, sp+$24                                 ; $5e50: $f8 $24
    dec b                                         ; $5e52: $05
    dec l                                         ; $5e53: $2d
    dec h                                         ; $5e54: $25
    dec b                                         ; $5e55: $05
    ld e, d                                       ; $5e56: $5a

jr_06b_5e57:
    dec h                                         ; $5e57: $25
    dec b                                         ; $5e58: $05
    ld l, l                                       ; $5e59: $6d
    dec h                                         ; $5e5a: $25
    dec b                                         ; $5e5b: $05
    ld l, a                                       ; $5e5c: $6f
    dec h                                         ; $5e5d: $25
    dec b                                         ; $5e5e: $05
    ld a, h                                       ; $5e5f: $7c
    dec h                                         ; $5e60: $25
    dec b                                         ; $5e61: $05
    add [hl]                                      ; $5e62: $86
    dec h                                         ; $5e63: $25
    dec b                                         ; $5e64: $05
    adc b                                         ; $5e65: $88
    dec h                                         ; $5e66: $25
    dec b                                         ; $5e67: $05
    sbc b                                         ; $5e68: $98
    dec h                                         ; $5e69: $25
    dec b                                         ; $5e6a: $05
    and d                                         ; $5e6b: $a2
    dec h                                         ; $5e6c: $25
    dec b                                         ; $5e6d: $05
    and h                                         ; $5e6e: $a4
    dec h                                         ; $5e6f: $25
    dec b                                         ; $5e70: $05
    xor [hl]                                      ; $5e71: $ae
    dec h                                         ; $5e72: $25
    dec b                                         ; $5e73: $05
    cp b                                          ; $5e74: $b8
    dec h                                         ; $5e75: $25
    dec b                                         ; $5e76: $05
    cp d                                          ; $5e77: $ba
    dec h                                         ; $5e78: $25
    dec b                                         ; $5e79: $05
    sla l                                         ; $5e7a: $cb $25
    dec b                                         ; $5e7c: $05
    call nc, $0525                                ; $5e7d: $d4 $25 $05
    db $dd                                        ; $5e80: $dd
    dec h                                         ; $5e81: $25
    dec b                                         ; $5e82: $05
    jp hl                                         ; $5e83: $e9


    dec h                                         ; $5e84: $25
    dec b                                         ; $5e85: $05
    di                                            ; $5e86: $f3
    dec h                                         ; $5e87: $25
    dec b                                         ; $5e88: $05
    push af                                       ; $5e89: $f5
    dec h                                         ; $5e8a: $25
    dec b                                         ; $5e8b: $05
    nop                                           ; $5e8c: $00
    ld h, $05                                     ; $5e8d: $26 $05
    add hl, bc                                    ; $5e8f: $09
    ld h, $05                                     ; $5e90: $26 $05
    ld de, $0526                                  ; $5e92: $11 $26 $05
    dec de                                        ; $5e95: $1b
    ld h, $05                                     ; $5e96: $26 $05
    dec e                                         ; $5e98: $1d
    ld h, $05                                     ; $5e99: $26 $05
    jr nc, jr_06b_5ec3                            ; $5e9b: $30 $26

    dec b                                         ; $5e9d: $05
    ld a, [hl-]                                   ; $5e9e: $3a
    ld h, $05                                     ; $5e9f: $26 $05
    inc a                                         ; $5ea1: $3c
    ld h, $05                                     ; $5ea2: $26 $05
    ld c, b                                       ; $5ea4: $48
    ld h, $05                                     ; $5ea5: $26 $05
    ld d, b                                       ; $5ea7: $50
    ld h, $05                                     ; $5ea8: $26 $05
    ld d, d                                       ; $5eaa: $52
    ld h, $05                                     ; $5eab: $26 $05
    ld h, d                                       ; $5ead: $62
    ld h, $05                                     ; $5eae: $26 $05
    ld l, d                                       ; $5eb0: $6a
    ld h, $05                                     ; $5eb1: $26 $05
    ld [hl], d                                    ; $5eb3: $72
    ld h, $05                                     ; $5eb4: $26 $05
    ld a, c                                       ; $5eb6: $79
    ld h, $05                                     ; $5eb7: $26 $05
    ld a, e                                       ; $5eb9: $7b
    ld h, $05                                     ; $5eba: $26 $05
    add [hl]                                      ; $5ebc: $86
    ld h, $05                                     ; $5ebd: $26 $05
    sub b                                         ; $5ebf: $90
    ld h, $05                                     ; $5ec0: $26 $05
    sbc e                                         ; $5ec2: $9b

jr_06b_5ec3:
    ld h, $05                                     ; $5ec3: $26 $05
    and [hl]                                      ; $5ec5: $a6
    ld h, $05                                     ; $5ec6: $26 $05
    xor [hl]                                      ; $5ec8: $ae
    ld h, $05                                     ; $5ec9: $26 $05
    or b                                          ; $5ecb: $b0
    ld h, $05                                     ; $5ecc: $26 $05
    or d                                          ; $5ece: $b2
    ld h, $05                                     ; $5ecf: $26 $05
    ret z                                         ; $5ed1: $c8

    ld h, $05                                     ; $5ed2: $26 $05
    jp z, Jump_000_0526                           ; $5ed4: $ca $26 $05

    ret c                                         ; $5ed7: $d8

    ld h, $05                                     ; $5ed8: $26 $05
    pop hl                                        ; $5eda: $e1
    ld h, $05                                     ; $5edb: $26 $05
    jp hl                                         ; $5edd: $e9


    ld h, $05                                     ; $5ede: $26 $05
    db $eb                                        ; $5ee0: $eb
    ld h, $05                                     ; $5ee1: $26 $05
    or $26                                        ; $5ee3: $f6 $26
    dec b                                         ; $5ee5: $05
    nop                                           ; $5ee6: $00
    daa                                           ; $5ee7: $27
    dec b                                         ; $5ee8: $05
    ld [bc], a                                    ; $5ee9: $02
    daa                                           ; $5eea: $27
    dec b                                         ; $5eeb: $05
    rrca                                          ; $5eec: $0f
    daa                                           ; $5eed: $27
    dec b                                         ; $5eee: $05
    jr jr_06b_5f18                                ; $5eef: $18 $27

    dec b                                         ; $5ef1: $05
    ld a, [de]                                    ; $5ef2: $1a
    daa                                           ; $5ef3: $27
    dec b                                         ; $5ef4: $05
    ld [hl], $27                                  ; $5ef5: $36 $27
    dec b                                         ; $5ef7: $05
    ld b, d                                       ; $5ef8: $42
    daa                                           ; $5ef9: $27
    dec b                                         ; $5efa: $05
    ld c, h                                       ; $5efb: $4c
    daa                                           ; $5efc: $27
    dec b                                         ; $5efd: $05
    ld d, h                                       ; $5efe: $54
    daa                                           ; $5eff: $27
    dec b                                         ; $5f00: $05
    ld e, h                                       ; $5f01: $5c
    daa                                           ; $5f02: $27
    dec b                                         ; $5f03: $05
    ld h, a                                       ; $5f04: $67
    daa                                           ; $5f05: $27
    dec b                                         ; $5f06: $05
    ld [hl], b                                    ; $5f07: $70
    daa                                           ; $5f08: $27
    dec b                                         ; $5f09: $05
    ld [hl], d                                    ; $5f0a: $72
    daa                                           ; $5f0b: $27
    dec b                                         ; $5f0c: $05
    ld [hl], h                                    ; $5f0d: $74
    daa                                           ; $5f0e: $27
    dec b                                         ; $5f0f: $05
    halt                                          ; $5f10: $76
    daa                                           ; $5f11: $27
    dec b                                         ; $5f12: $05
    adc b                                         ; $5f13: $88
    daa                                           ; $5f14: $27
    dec b                                         ; $5f15: $05
    adc d                                         ; $5f16: $8a
    daa                                           ; $5f17: $27

jr_06b_5f18:
    dec b                                         ; $5f18: $05
    sub a                                         ; $5f19: $97
    daa                                           ; $5f1a: $27
    dec b                                         ; $5f1b: $05
    and b                                         ; $5f1c: $a0
    daa                                           ; $5f1d: $27
    dec b                                         ; $5f1e: $05
    xor e                                         ; $5f1f: $ab
    daa                                           ; $5f20: $27
    dec b                                         ; $5f21: $05
    or e                                          ; $5f22: $b3
    daa                                           ; $5f23: $27
    dec b                                         ; $5f24: $05
    cp [hl]                                       ; $5f25: $be
    daa                                           ; $5f26: $27
    dec b                                         ; $5f27: $05
    ret                                           ; $5f28: $c9


    daa                                           ; $5f29: $27
    dec b                                         ; $5f2a: $05
    jp nc, Jump_000_0527                          ; $5f2b: $d2 $27 $05

    db $db                                        ; $5f2e: $db
    daa                                           ; $5f2f: $27
    dec b                                         ; $5f30: $05
    db $dd                                        ; $5f31: $dd
    daa                                           ; $5f32: $27
    dec b                                         ; $5f33: $05
    db $ec                                        ; $5f34: $ec
    daa                                           ; $5f35: $27
    dec b                                         ; $5f36: $05
    di                                            ; $5f37: $f3
    daa                                           ; $5f38: $27
    dec b                                         ; $5f39: $05
    push af                                       ; $5f3a: $f5
    daa                                           ; $5f3b: $27
    dec b                                         ; $5f3c: $05
    nop                                           ; $5f3d: $00
    jr z, @+$07                                   ; $5f3e: $28 $05

    ld [$0528], sp                                ; $5f40: $08 $28 $05
    ld a, [bc]                                    ; $5f43: $0a
    jr z, @+$07                                   ; $5f44: $28 $05

    inc de                                        ; $5f46: $13
    jr z, jr_06b_5f4e                             ; $5f47: $28 $05

    dec e                                         ; $5f49: $1d
    jr z, @+$07                                   ; $5f4a: $28 $05

    ld h, $28                                     ; $5f4c: $26 $28

jr_06b_5f4e:
    dec b                                         ; $5f4e: $05
    cpl                                           ; $5f4f: $2f
    jr z, @+$07                                   ; $5f50: $28 $05

    add hl, sp                                    ; $5f52: $39
    jr z, @+$07                                   ; $5f53: $28 $05

    dec sp                                        ; $5f55: $3b
    jr z, @+$07                                   ; $5f56: $28 $05

    ld b, a                                       ; $5f58: $47
    jr z, @+$07                                   ; $5f59: $28 $05

    ld d, b                                       ; $5f5b: $50
    jr z, @+$07                                   ; $5f5c: $28 $05

    ld e, e                                       ; $5f5e: $5b
    jr z, @+$07                                   ; $5f5f: $28 $05

    ld h, d                                       ; $5f61: $62
    jr z, @+$07                                   ; $5f62: $28 $05

    ld l, h                                       ; $5f64: $6c
    jr z, @+$07                                   ; $5f65: $28 $05

    ld [hl], l                                    ; $5f67: $75
    jr z, @+$07                                   ; $5f68: $28 $05

    ld a, l                                       ; $5f6a: $7d
    jr z, @+$07                                   ; $5f6b: $28 $05

    adc b                                         ; $5f6d: $88
    jr z, @+$07                                   ; $5f6e: $28 $05

    sub l                                         ; $5f70: $95
    jr z, @+$07                                   ; $5f71: $28 $05

    sbc [hl]                                      ; $5f73: $9e
    jr z, @+$07                                   ; $5f74: $28 $05

    and a                                         ; $5f76: $a7
    jr z, @+$07                                   ; $5f77: $28 $05

    xor c                                         ; $5f79: $a9
    jr z, @+$07                                   ; $5f7a: $28 $05

    or d                                          ; $5f7c: $b2
    jr z, @+$07                                   ; $5f7d: $28 $05

    cp c                                          ; $5f7f: $b9
    jr z, @+$07                                   ; $5f80: $28 $05

    jp $0528                                      ; $5f82: $c3 $28 $05


    call z, $0528                                 ; $5f85: $cc $28 $05
    push de                                       ; $5f88: $d5
    jr z, @+$07                                   ; $5f89: $28 $05

    rst $10                                       ; $5f8b: $d7
    jr z, @+$07                                   ; $5f8c: $28 $05

    ld [$0528], a                                 ; $5f8e: $ea $28 $05
    push af                                       ; $5f91: $f5
    jr z, jr_06b_5f99                             ; $5f92: $28 $05

    nop                                           ; $5f94: $00
    add hl, hl                                    ; $5f95: $29
    dec b                                         ; $5f96: $05
    ld a, [bc]                                    ; $5f97: $0a
    add hl, hl                                    ; $5f98: $29

jr_06b_5f99:
    dec b                                         ; $5f99: $05
    inc de                                        ; $5f9a: $13
    add hl, hl                                    ; $5f9b: $29
    dec b                                         ; $5f9c: $05
    inc e                                         ; $5f9d: $1c
    add hl, hl                                    ; $5f9e: $29
    dec b                                         ; $5f9f: $05
    inc hl                                        ; $5fa0: $23
    add hl, hl                                    ; $5fa1: $29
    dec b                                         ; $5fa2: $05
    dec l                                         ; $5fa3: $2d
    add hl, hl                                    ; $5fa4: $29
    dec b                                         ; $5fa5: $05
    ld [hl], $29                                  ; $5fa6: $36 $29
    dec b                                         ; $5fa8: $05
    dec a                                         ; $5fa9: $3d
    add hl, hl                                    ; $5faa: $29
    dec b                                         ; $5fab: $05
    ld b, l                                       ; $5fac: $45
    add hl, hl                                    ; $5fad: $29
    dec b                                         ; $5fae: $05
    ld c, [hl]                                    ; $5faf: $4e
    add hl, hl                                    ; $5fb0: $29
    dec b                                         ; $5fb1: $05
    ld e, b                                       ; $5fb2: $58
    add hl, hl                                    ; $5fb3: $29
    dec b                                         ; $5fb4: $05
    ld e, d                                       ; $5fb5: $5a
    add hl, hl                                    ; $5fb6: $29
    dec b                                         ; $5fb7: $05
    ld e, h                                       ; $5fb8: $5c
    add hl, hl                                    ; $5fb9: $29
    dec b                                         ; $5fba: $05
    ld e, [hl]                                    ; $5fbb: $5e
    add hl, hl                                    ; $5fbc: $29
    dec b                                         ; $5fbd: $05
    ld h, b                                       ; $5fbe: $60
    add hl, hl                                    ; $5fbf: $29
    dec b                                         ; $5fc0: $05
    ld h, d                                       ; $5fc1: $62
    add hl, hl                                    ; $5fc2: $29
    dec b                                         ; $5fc3: $05
    ld h, h                                       ; $5fc4: $64
    add hl, hl                                    ; $5fc5: $29
    dec b                                         ; $5fc6: $05
    ld h, [hl]                                    ; $5fc7: $66
    add hl, hl                                    ; $5fc8: $29
    dec b                                         ; $5fc9: $05
    ld l, b                                       ; $5fca: $68
    add hl, hl                                    ; $5fcb: $29
    dec b                                         ; $5fcc: $05
    ld l, d                                       ; $5fcd: $6a
    add hl, hl                                    ; $5fce: $29
    dec b                                         ; $5fcf: $05
    ld l, h                                       ; $5fd0: $6c
    add hl, hl                                    ; $5fd1: $29
    dec b                                         ; $5fd2: $05
    ld l, [hl]                                    ; $5fd3: $6e
    add hl, hl                                    ; $5fd4: $29
    dec b                                         ; $5fd5: $05
    ld [hl], b                                    ; $5fd6: $70
    add hl, hl                                    ; $5fd7: $29
    dec b                                         ; $5fd8: $05
    ld [hl], d                                    ; $5fd9: $72
    add hl, hl                                    ; $5fda: $29
    dec b                                         ; $5fdb: $05
    ld [hl], h                                    ; $5fdc: $74
    add hl, hl                                    ; $5fdd: $29
    dec b                                         ; $5fde: $05
    halt                                          ; $5fdf: $76
    add hl, hl                                    ; $5fe0: $29
    dec b                                         ; $5fe1: $05
    ld a, b                                       ; $5fe2: $78
    add hl, hl                                    ; $5fe3: $29
    dec b                                         ; $5fe4: $05
    ld a, d                                       ; $5fe5: $7a
    add hl, hl                                    ; $5fe6: $29
    dec b                                         ; $5fe7: $05
    ld a, h                                       ; $5fe8: $7c
    add hl, hl                                    ; $5fe9: $29
    dec b                                         ; $5fea: $05
    ld a, [hl]                                    ; $5feb: $7e
    add hl, hl                                    ; $5fec: $29
    dec b                                         ; $5fed: $05
    add b                                         ; $5fee: $80
    add hl, hl                                    ; $5fef: $29
    dec b                                         ; $5ff0: $05
    add d                                         ; $5ff1: $82
    add hl, hl                                    ; $5ff2: $29
    dec b                                         ; $5ff3: $05
    add h                                         ; $5ff4: $84
    add hl, hl                                    ; $5ff5: $29
    dec b                                         ; $5ff6: $05
    add [hl]                                      ; $5ff7: $86
    add hl, hl                                    ; $5ff8: $29
    dec b                                         ; $5ff9: $05
    adc b                                         ; $5ffa: $88
    add hl, hl                                    ; $5ffb: $29
    dec b                                         ; $5ffc: $05
    adc d                                         ; $5ffd: $8a
    add hl, hl                                    ; $5ffe: $29
    dec b                                         ; $5fff: $05
    adc h                                         ; $6000: $8c
    add hl, hl                                    ; $6001: $29
    dec b                                         ; $6002: $05
    adc [hl]                                      ; $6003: $8e
    add hl, hl                                    ; $6004: $29
    dec b                                         ; $6005: $05
    sub b                                         ; $6006: $90
    add hl, hl                                    ; $6007: $29
    dec b                                         ; $6008: $05
    sub d                                         ; $6009: $92
    add hl, hl                                    ; $600a: $29
    dec b                                         ; $600b: $05
    sub h                                         ; $600c: $94
    add hl, hl                                    ; $600d: $29
    dec b                                         ; $600e: $05
    sub [hl]                                      ; $600f: $96
    add hl, hl                                    ; $6010: $29
    dec b                                         ; $6011: $05
    sbc b                                         ; $6012: $98
    add hl, hl                                    ; $6013: $29
    dec b                                         ; $6014: $05
    sbc d                                         ; $6015: $9a
    add hl, hl                                    ; $6016: $29
    dec b                                         ; $6017: $05
    sbc h                                         ; $6018: $9c
    add hl, hl                                    ; $6019: $29
    dec b                                         ; $601a: $05
    or e                                          ; $601b: $b3
    add hl, hl                                    ; $601c: $29
    dec b                                         ; $601d: $05
    cp c                                          ; $601e: $b9
    add hl, hl                                    ; $601f: $29
    dec b                                         ; $6020: $05
    di                                            ; $6021: $f3
    add hl, hl                                    ; $6022: $29
    dec b                                         ; $6023: $05
    ld b, $2a                                     ; $6024: $06 $2a
    dec b                                         ; $6026: $05
    ld e, b                                       ; $6027: $58
    ld a, [hl+]                                   ; $6028: $2a
    dec b                                         ; $6029: $05
    ld l, d                                       ; $602a: $6a
    ld a, [hl+]                                   ; $602b: $2a
    dec b                                         ; $602c: $05
    or d                                          ; $602d: $b2
    ld a, [hl+]                                   ; $602e: $2a
    dec b                                         ; $602f: $05
    call nc, Call_000_052a                        ; $6030: $d4 $2a $05
    dec sp                                        ; $6033: $3b
    dec hl                                        ; $6034: $2b
    dec b                                         ; $6035: $05
    ld c, l                                       ; $6036: $4d
    dec hl                                        ; $6037: $2b
    dec b                                         ; $6038: $05
    adc e                                         ; $6039: $8b
    dec hl                                        ; $603a: $2b
    dec b                                         ; $603b: $05
    push hl                                       ; $603c: $e5
    dec hl                                        ; $603d: $2b
    dec b                                         ; $603e: $05
    ld a, [$052b]                                 ; $603f: $fa $2b $05
    jr nc, jr_06b_6070                            ; $6042: $30 $2c

    dec b                                         ; $6044: $05
    ld d, b                                       ; $6045: $50
    inc l                                         ; $6046: $2c
    dec b                                         ; $6047: $05
    ld l, [hl]                                    ; $6048: $6e
    inc l                                         ; $6049: $2c
    dec b                                         ; $604a: $05
    or a                                          ; $604b: $b7
    inc l                                         ; $604c: $2c
    dec b                                         ; $604d: $05
    jp $052c                                      ; $604e: $c3 $2c $05


    ret c                                         ; $6051: $d8

    inc l                                         ; $6052: $2c
    dec b                                         ; $6053: $05
    db $eb                                        ; $6054: $eb
    inc l                                         ; $6055: $2c
    dec b                                         ; $6056: $05
    nop                                           ; $6057: $00
    dec l                                         ; $6058: $2d
    dec b                                         ; $6059: $05
    inc d                                         ; $605a: $14
    dec l                                         ; $605b: $2d
    dec b                                         ; $605c: $05
    ld [hl-], a                                   ; $605d: $32
    dec l                                         ; $605e: $2d
    dec b                                         ; $605f: $05
    ld a, [hl]                                    ; $6060: $7e
    dec l                                         ; $6061: $2d
    dec b                                         ; $6062: $05
    adc e                                         ; $6063: $8b
    dec l                                         ; $6064: $2d
    dec b                                         ; $6065: $05
    pop de                                        ; $6066: $d1
    dec l                                         ; $6067: $2d
    dec b                                         ; $6068: $05
    pop hl                                        ; $6069: $e1
    dec l                                         ; $606a: $2d
    dec b                                         ; $606b: $05
    or $2d                                        ; $606c: $f6 $2d
    dec b                                         ; $606e: $05
    ld [hl-], a                                   ; $606f: $32

jr_06b_6070:
    ld l, $05                                     ; $6070: $2e $05
    ld e, a                                       ; $6072: $5f
    ld l, $05                                     ; $6073: $2e $05
    ld [hl], h                                    ; $6075: $74
    ld l, $05                                     ; $6076: $2e $05
    adc c                                         ; $6078: $89
    ld l, $05                                     ; $6079: $2e $05
    or e                                          ; $607b: $b3
    ld l, $05                                     ; $607c: $2e $05
    jp nc, Jump_000_052e                          ; $607e: $d2 $2e $05

    pop hl                                        ; $6081: $e1
    ld l, $05                                     ; $6082: $2e $05
    db $ed                                        ; $6084: $ed
    ld l, $05                                     ; $6085: $2e $05
    ld [bc], a                                    ; $6087: $02
    cpl                                           ; $6088: $2f
    dec b                                         ; $6089: $05
    dec d                                         ; $608a: $15
    cpl                                           ; $608b: $2f
    dec b                                         ; $608c: $05
    dec e                                         ; $608d: $1d
    cpl                                           ; $608e: $2f
    dec b                                         ; $608f: $05
    ld a, [hl+]                                   ; $6090: $2a
    cpl                                           ; $6091: $2f
    dec b                                         ; $6092: $05
    ld b, b                                       ; $6093: $40
    cpl                                           ; $6094: $2f
    dec b                                         ; $6095: $05
    ld d, c                                       ; $6096: $51
    cpl                                           ; $6097: $2f
    dec b                                         ; $6098: $05
    ld l, c                                       ; $6099: $69
    cpl                                           ; $609a: $2f
    dec b                                         ; $609b: $05
    ld a, d                                       ; $609c: $7a
    cpl                                           ; $609d: $2f
    dec b                                         ; $609e: $05
    sub d                                         ; $609f: $92
    cpl                                           ; $60a0: $2f
    dec b                                         ; $60a1: $05
    xor a                                         ; $60a2: $af
    cpl                                           ; $60a3: $2f
    dec b                                         ; $60a4: $05
    cp e                                          ; $60a5: $bb
    cpl                                           ; $60a6: $2f
    dec b                                         ; $60a7: $05
    db $d3                                        ; $60a8: $d3
    cpl                                           ; $60a9: $2f
    dec b                                         ; $60aa: $05
    rst $20                                       ; $60ab: $e7
    cpl                                           ; $60ac: $2f
    dec b                                         ; $60ad: $05
    inc bc                                        ; $60ae: $03
    jr nc, @+$07                                  ; $60af: $30 $05

    ld e, $30                                     ; $60b1: $1e $30
    dec b                                         ; $60b3: $05
    ld b, b                                       ; $60b4: $40
    jr nc, @+$07                                  ; $60b5: $30 $05

    ld d, b                                       ; $60b7: $50
    jr nc, @+$07                                  ; $60b8: $30 $05

    ld e, e                                       ; $60ba: $5b
    jr nc, @+$07                                  ; $60bb: $30 $05

    add e                                         ; $60bd: $83
    jr nc, @+$07                                  ; $60be: $30 $05

    sub l                                         ; $60c0: $95
    jr nc, @+$07                                  ; $60c1: $30 $05

    xor [hl]                                      ; $60c3: $ae
    jr nc, @+$07                                  ; $60c4: $30 $05

    jp z, $0530                                   ; $60c6: $ca $30 $05

    ld [c], a                                     ; $60c9: $e2
    jr nc, @+$07                                  ; $60ca: $30 $05

    dec c                                         ; $60cc: $0d
    ld sp, $1e05                                  ; $60cd: $31 $05 $1e
    ld sp, $5205                                  ; $60d0: $31 $05 $52
    ld sp, $6805                                  ; $60d3: $31 $05 $68
    ld sp, $8005                                  ; $60d6: $31 $05 $80
    ld sp, $a305                                  ; $60d9: $31 $05 $a3
    ld sp, $bf05                                  ; $60dc: $31 $05 $bf
    ld sp, $d705                                  ; $60df: $31 $05 $d7
    ld sp, $e805                                  ; $60e2: $31 $05 $e8
    ld sp, $0205                                  ; $60e5: $31 $05 $02
    ld [hl-], a                                   ; $60e8: $32
    dec b                                         ; $60e9: $05
    jr jr_06b_611e                                ; $60ea: $18 $32

    dec b                                         ; $60ec: $05
    cpl                                           ; $60ed: $2f
    ld [hl-], a                                   ; $60ee: $32
    dec b                                         ; $60ef: $05
    ld b, h                                       ; $60f0: $44
    ld [hl-], a                                   ; $60f1: $32
    dec b                                         ; $60f2: $05
    ld h, c                                       ; $60f3: $61
    ld [hl-], a                                   ; $60f4: $32
    dec b                                         ; $60f5: $05
    ld a, h                                       ; $60f6: $7c
    ld [hl-], a                                   ; $60f7: $32
    dec b                                         ; $60f8: $05
    sbc [hl]                                      ; $60f9: $9e
    ld [hl-], a                                   ; $60fa: $32
    dec b                                         ; $60fb: $05
    xor a                                         ; $60fc: $af
    ld [hl-], a                                   ; $60fd: $32
    dec b                                         ; $60fe: $05
    rst $00                                       ; $60ff: $c7
    ld [hl-], a                                   ; $6100: $32
    dec b                                         ; $6101: $05
    db $dd                                        ; $6102: $dd
    ld [hl-], a                                   ; $6103: $32
    dec b                                         ; $6104: $05
    rst $38                                       ; $6105: $ff
    ld [hl-], a                                   ; $6106: $32
    dec b                                         ; $6107: $05
    add hl, de                                    ; $6108: $19
    inc sp                                        ; $6109: $33
    dec b                                         ; $610a: $05
    inc a                                         ; $610b: $3c
    inc sp                                        ; $610c: $33
    dec b                                         ; $610d: $05
    ld e, h                                       ; $610e: $5c
    inc sp                                        ; $610f: $33
    dec b                                         ; $6110: $05
    ld l, a                                       ; $6111: $6f
    inc sp                                        ; $6112: $33
    dec b                                         ; $6113: $05
    rst $10                                       ; $6114: $d7
    inc sp                                        ; $6115: $33
    dec b                                         ; $6116: $05
    ld a, $34                                     ; $6117: $3e $34
    dec b                                         ; $6119: $05
    ld e, h                                       ; $611a: $5c
    inc [hl]                                      ; $611b: $34
    dec b                                         ; $611c: $05
    adc e                                         ; $611d: $8b

jr_06b_611e:
    inc [hl]                                      ; $611e: $34
    dec b                                         ; $611f: $05
    or [hl]                                       ; $6120: $b6
    inc [hl]                                      ; $6121: $34
    dec b                                         ; $6122: $05
    db $ed                                        ; $6123: $ed
    inc [hl]                                      ; $6124: $34
    dec b                                         ; $6125: $05
    dec hl                                        ; $6126: $2b
    dec [hl]                                      ; $6127: $35
    dec b                                         ; $6128: $05
    ld d, a                                       ; $6129: $57
    dec [hl]                                      ; $612a: $35
    dec b                                         ; $612b: $05
    ld a, h                                       ; $612c: $7c
    dec [hl]                                      ; $612d: $35
    dec b                                         ; $612e: $05
    and h                                         ; $612f: $a4
    dec [hl]                                      ; $6130: $35
    dec b                                         ; $6131: $05
    call z, Call_000_0535                         ; $6132: $cc $35 $05
    db $ed                                        ; $6135: $ed
    dec [hl]                                      ; $6136: $35
    dec b                                         ; $6137: $05
    ld b, $36                                     ; $6138: $06 $36
    dec b                                         ; $613a: $05
    inc e                                         ; $613b: $1c
    ld [hl], $05                                  ; $613c: $36 $05
    scf                                           ; $613e: $37
    ld [hl], $05                                  ; $613f: $36 $05
    ld h, a                                       ; $6141: $67
    ld [hl], $05                                  ; $6142: $36 $05
    and a                                         ; $6144: $a7
    ld [hl], $05                                  ; $6145: $36 $05
    ld [bc], a                                    ; $6147: $02
    scf                                           ; $6148: $37
    dec b                                         ; $6149: $05
    ld a, $37                                     ; $614a: $3e $37
    dec b                                         ; $614c: $05
    ld a, c                                       ; $614d: $79
    scf                                           ; $614e: $37
    dec b                                         ; $614f: $05
    cp d                                          ; $6150: $ba
    scf                                           ; $6151: $37
    dec b                                         ; $6152: $05
    inc bc                                        ; $6153: $03
    jr c, @+$07                                   ; $6154: $38 $05

    ld [hl], d                                    ; $6156: $72
    jr c, jr_06b_615e                             ; $6157: $38 $05

    db $d3                                        ; $6159: $d3
    jr c, jr_06b_6161                             ; $615a: $38 $05

    ld b, c                                       ; $615c: $41
    add hl, sp                                    ; $615d: $39

jr_06b_615e:
    dec b                                         ; $615e: $05
    or c                                          ; $615f: $b1
    add hl, sp                                    ; $6160: $39

jr_06b_6161:
    dec b                                         ; $6161: $05
    inc d                                         ; $6162: $14
    ld a, [hl-]                                   ; $6163: $3a
    dec b                                         ; $6164: $05
    sub e                                         ; $6165: $93
    ld a, [hl-]                                   ; $6166: $3a
    dec b                                         ; $6167: $05
    db $f4                                        ; $6168: $f4
    ld a, [hl-]                                   ; $6169: $3a
    dec b                                         ; $616a: $05
    ld h, e                                       ; $616b: $63
    dec sp                                        ; $616c: $3b
    dec b                                         ; $616d: $05
    add $3b                                       ; $616e: $c6 $3b
    dec b                                         ; $6170: $05
    dec a                                         ; $6171: $3d
    inc a                                         ; $6172: $3c
    dec b                                         ; $6173: $05
    adc [hl]                                      ; $6174: $8e
    inc a                                         ; $6175: $3c
    dec b                                         ; $6176: $05
    ld hl, sp+$3c                                 ; $6177: $f8 $3c
    dec b                                         ; $6179: $05
    ld e, c                                       ; $617a: $59
    dec a                                         ; $617b: $3d
    dec b                                         ; $617c: $05
    ret nc                                        ; $617d: $d0

    dec a                                         ; $617e: $3d
    dec b                                         ; $617f: $05
    ld b, d                                       ; $6180: $42
    ld a, $05                                     ; $6181: $3e $05
    cp [hl]                                       ; $6183: $be
    ld a, $05                                     ; $6184: $3e $05
    dec h                                         ; $6186: $25
    ccf                                           ; $6187: $3f
    ld b, $01                                     ; $6188: $06 $01
    nop                                           ; $618a: $00
    ld b, $7d                                     ; $618b: $06 $7d
    nop                                           ; $618d: $00
    ld b, $c4                                     ; $618e: $06 $c4
    nop                                           ; $6190: $00
    ld b, $d5                                     ; $6191: $06 $d5
    nop                                           ; $6193: $00
    ld b, $da                                     ; $6194: $06 $da
    nop                                           ; $6196: $00
    ld b, $df                                     ; $6197: $06 $df
    nop                                           ; $6199: $00
    ld b, $ea                                     ; $619a: $06 $ea
    nop                                           ; $619c: $00
    ld b, $f9                                     ; $619d: $06 $f9
    nop                                           ; $619f: $00
    ld b, $08                                     ; $61a0: $06 $08
    ld bc, $3d06                                  ; $61a2: $01 $06 $3d
    ld bc, $7306                                  ; $61a5: $01 $06 $73
    ld bc, $c806                                  ; $61a8: $01 $06 $c8
    ld bc, $0706                                  ; $61ab: $01 $06 $07
    ld [bc], a                                    ; $61ae: $02
    ld b, $4a                                     ; $61af: $06 $4a
    ld [bc], a                                    ; $61b1: $02
    ld b, $76                                     ; $61b2: $06 $76
    ld [bc], a                                    ; $61b4: $02
    ld b, $cc                                     ; $61b5: $06 $cc
    ld [bc], a                                    ; $61b7: $02
    ld b, $12                                     ; $61b8: $06 $12
    inc bc                                        ; $61ba: $03
    ld b, $43                                     ; $61bb: $06 $43
    inc bc                                        ; $61bd: $03
    ld b, $67                                     ; $61be: $06 $67
    inc bc                                        ; $61c0: $03
    ld b, $8c                                     ; $61c1: $06 $8c
    inc bc                                        ; $61c3: $03
    ld b, $b6                                     ; $61c4: $06 $b6
    inc bc                                        ; $61c6: $03
    ld b, $e2                                     ; $61c7: $06 $e2
    inc bc                                        ; $61c9: $03
    ld b, $03                                     ; $61ca: $06 $03
    inc b                                         ; $61cc: $04
    ld b, $1b                                     ; $61cd: $06 $1b
    inc b                                         ; $61cf: $04
    ld b, $34                                     ; $61d0: $06 $34
    inc b                                         ; $61d2: $04
    ld b, $67                                     ; $61d3: $06 $67
    inc b                                         ; $61d5: $04
    ld b, $7c                                     ; $61d6: $06 $7c
    inc b                                         ; $61d8: $04
    ld b, $8d                                     ; $61d9: $06 $8d
    inc b                                         ; $61db: $04
    ld b, $a9                                     ; $61dc: $06 $a9
    inc b                                         ; $61de: $04
    ld b, $d4                                     ; $61df: $06 $d4
    inc b                                         ; $61e1: $04
    ld b, $fd                                     ; $61e2: $06 $fd
    inc b                                         ; $61e4: $04
    ld b, $28                                     ; $61e5: $06 $28
    dec b                                         ; $61e7: $05
    ld b, $4a                                     ; $61e8: $06 $4a
    dec b                                         ; $61ea: $05
    ld b, $80                                     ; $61eb: $06 $80
    dec b                                         ; $61ed: $05
    ld b, $9f                                     ; $61ee: $06 $9f
    dec b                                         ; $61f0: $05
    ld b, $d7                                     ; $61f1: $06 $d7
    dec b                                         ; $61f3: $05
    ld b, $01                                     ; $61f4: $06 $01
    ld b, $06                                     ; $61f6: $06 $06
    ld a, [hl+]                                   ; $61f8: $2a
    ld b, $06                                     ; $61f9: $06 $06
    ccf                                           ; $61fb: $3f
    ld b, $06                                     ; $61fc: $06 $06
    ld e, b                                       ; $61fe: $58
    ld b, $06                                     ; $61ff: $06 $06
    ld l, l                                       ; $6201: $6d
    ld b, $06                                     ; $6202: $06 $06
    add e                                         ; $6204: $83
    ld b, $06                                     ; $6205: $06 $06
    jp c, Jump_000_0606                           ; $6207: $da $06 $06

    ld a, [$0606]                                 ; $620a: $fa $06 $06
    rra                                           ; $620d: $1f
    rlca                                          ; $620e: $07
    ld b, $2b                                     ; $620f: $06 $2b
    rlca                                          ; $6211: $07
    ld b, $33                                     ; $6212: $06 $33
    rlca                                          ; $6214: $07
    ld b, $39                                     ; $6215: $06 $39
    rlca                                          ; $6217: $07
    ld b, $3d                                     ; $6218: $06 $3d
    rlca                                          ; $621a: $07
    ld b, $4a                                     ; $621b: $06 $4a
    rlca                                          ; $621d: $07
    ld b, $51                                     ; $621e: $06 $51
    rlca                                          ; $6220: $07
    ld b, $5b                                     ; $6221: $06 $5b
    rlca                                          ; $6223: $07
    ld b, $6d                                     ; $6224: $06 $6d
    rlca                                          ; $6226: $07
    ld b, $7d                                     ; $6227: $06 $7d
    rlca                                          ; $6229: $07
    ld b, $a7                                     ; $622a: $06 $a7
    rlca                                          ; $622c: $07
    ld b, $af                                     ; $622d: $06 $af
    rlca                                          ; $622f: $07
    ld b, $b9                                     ; $6230: $06 $b9
    rlca                                          ; $6232: $07
    ld b, $c5                                     ; $6233: $06 $c5
    rlca                                          ; $6235: $07
    ld b, $d9                                     ; $6236: $06 $d9
    rlca                                          ; $6238: $07
    ld b, $f8                                     ; $6239: $06 $f8
    rlca                                          ; $623b: $07
    ld b, $28                                     ; $623c: $06 $28
    ld [$3a06], sp                                ; $623e: $08 $06 $3a
    ld [$5006], sp                                ; $6241: $08 $06 $50
    ld [$6506], sp                                ; $6244: $08 $06 $65
    ld [$8106], sp                                ; $6247: $08 $06 $81
    ld [$af06], sp                                ; $624a: $08 $06 $af
    ld [$d506], sp                                ; $624d: $08 $06 $d5
    ld [$0e06], sp                                ; $6250: $08 $06 $0e
    add hl, bc                                    ; $6253: $09
    ld b, $26                                     ; $6254: $06 $26
    add hl, bc                                    ; $6256: $09
    ld b, $51                                     ; $6257: $06 $51
    add hl, bc                                    ; $6259: $09
    ld b, $65                                     ; $625a: $06 $65
    add hl, bc                                    ; $625c: $09
    ld b, $6d                                     ; $625d: $06 $6d
    add hl, bc                                    ; $625f: $09
    ld b, $77                                     ; $6260: $06 $77
    add hl, bc                                    ; $6262: $09
    ld b, $84                                     ; $6263: $06 $84
    add hl, bc                                    ; $6265: $09
    ld b, $8d                                     ; $6266: $06 $8d
    add hl, bc                                    ; $6268: $09
    ld b, $c2                                     ; $6269: $06 $c2
    add hl, bc                                    ; $626b: $09
    ld b, $fc                                     ; $626c: $06 $fc
    add hl, bc                                    ; $626e: $09
    ld b, $6b                                     ; $626f: $06 $6b
    ld a, [bc]                                    ; $6271: $0a
    ld b, $85                                     ; $6272: $06 $85
    ld a, [bc]                                    ; $6274: $0a
    ld b, $93                                     ; $6275: $06 $93
    ld a, [bc]                                    ; $6277: $0a
    ld b, $ca                                     ; $6278: $06 $ca
    ld a, [bc]                                    ; $627a: $0a
    ld b, $d4                                     ; $627b: $06 $d4
    ld a, [bc]                                    ; $627d: $0a
    ld b, $df                                     ; $627e: $06 $df
    ld a, [bc]                                    ; $6280: $0a
    ld b, $e5                                     ; $6281: $06 $e5
    ld a, [bc]                                    ; $6283: $0a
    ld b, $fa                                     ; $6284: $06 $fa
    ld a, [bc]                                    ; $6286: $0a
    ld b, $0f                                     ; $6287: $06 $0f
    dec bc                                        ; $6289: $0b
    ld b, $1a                                     ; $628a: $06 $1a
    dec bc                                        ; $628c: $0b
    ld b, $21                                     ; $628d: $06 $21
    dec bc                                        ; $628f: $0b
    ld b, $29                                     ; $6290: $06 $29
    dec bc                                        ; $6292: $0b
    ld b, $32                                     ; $6293: $06 $32
    dec bc                                        ; $6295: $0b
    ld b, $38                                     ; $6296: $06 $38
    dec bc                                        ; $6298: $0b
    ld b, $3a                                     ; $6299: $06 $3a
    dec bc                                        ; $629b: $0b
    ld b, $3c                                     ; $629c: $06 $3c
    dec bc                                        ; $629e: $0b
    ld b, $3e                                     ; $629f: $06 $3e
    dec bc                                        ; $62a1: $0b
    ld b, $40                                     ; $62a2: $06 $40
    dec bc                                        ; $62a4: $0b
    ld b, $42                                     ; $62a5: $06 $42
    dec bc                                        ; $62a7: $0b
    ld b, $44                                     ; $62a8: $06 $44
    dec bc                                        ; $62aa: $0b
    ld b, $46                                     ; $62ab: $06 $46
    dec bc                                        ; $62ad: $0b
    ld b, $48                                     ; $62ae: $06 $48
    dec bc                                        ; $62b0: $0b

Jump_06b_62b1:
    ld b, $4a                                     ; $62b1: $06 $4a
    dec bc                                        ; $62b3: $0b
    ld b, $4c                                     ; $62b4: $06 $4c
    dec bc                                        ; $62b6: $0b
    ld b, $4e                                     ; $62b7: $06 $4e
    dec bc                                        ; $62b9: $0b
    ld b, $50                                     ; $62ba: $06 $50
    dec bc                                        ; $62bc: $0b
    ld b, $52                                     ; $62bd: $06 $52
    dec bc                                        ; $62bf: $0b
    ld b, $54                                     ; $62c0: $06 $54
    dec bc                                        ; $62c2: $0b
    ld b, $56                                     ; $62c3: $06 $56
    dec bc                                        ; $62c5: $0b
    ld b, $58                                     ; $62c6: $06 $58
    dec bc                                        ; $62c8: $0b
    ld b, $5a                                     ; $62c9: $06 $5a
    dec bc                                        ; $62cb: $0b
    ld b, $5c                                     ; $62cc: $06 $5c
    dec bc                                        ; $62ce: $0b
    ld b, $5e                                     ; $62cf: $06 $5e
    dec bc                                        ; $62d1: $0b
    ld b, $60                                     ; $62d2: $06 $60
    dec bc                                        ; $62d4: $0b
    ld b, $62                                     ; $62d5: $06 $62
    dec bc                                        ; $62d7: $0b
    ld b, $64                                     ; $62d8: $06 $64
    dec bc                                        ; $62da: $0b
    ld b, $66                                     ; $62db: $06 $66
    dec bc                                        ; $62dd: $0b
    ld b, $68                                     ; $62de: $06 $68
    dec bc                                        ; $62e0: $0b
    ld b, $6a                                     ; $62e1: $06 $6a
    dec bc                                        ; $62e3: $0b
    ld b, $6c                                     ; $62e4: $06 $6c
    dec bc                                        ; $62e6: $0b
    ld b, $6e                                     ; $62e7: $06 $6e
    dec bc                                        ; $62e9: $0b
    ld b, $70                                     ; $62ea: $06 $70
    dec bc                                        ; $62ec: $0b
    ld b, $72                                     ; $62ed: $06 $72
    dec bc                                        ; $62ef: $0b
    ld b, $74                                     ; $62f0: $06 $74
    dec bc                                        ; $62f2: $0b
    ld b, $76                                     ; $62f3: $06 $76
    dec bc                                        ; $62f5: $0b
    ld b, $78                                     ; $62f6: $06 $78
    dec bc                                        ; $62f8: $0b
    ld b, $7a                                     ; $62f9: $06 $7a
    dec bc                                        ; $62fb: $0b
    ld b, $7c                                     ; $62fc: $06 $7c
    dec bc                                        ; $62fe: $0b
    ld b, $7e                                     ; $62ff: $06 $7e
    dec bc                                        ; $6301: $0b
    ld b, $80                                     ; $6302: $06 $80
    dec bc                                        ; $6304: $0b
    ld b, $82                                     ; $6305: $06 $82
    dec bc                                        ; $6307: $0b
    ld b, $84                                     ; $6308: $06 $84
    dec bc                                        ; $630a: $0b
    ld b, $86                                     ; $630b: $06 $86
    dec bc                                        ; $630d: $0b
    ld b, $88                                     ; $630e: $06 $88
    dec bc                                        ; $6310: $0b
    ld b, $8a                                     ; $6311: $06 $8a
    dec bc                                        ; $6313: $0b
    ld b, $8c                                     ; $6314: $06 $8c
    dec bc                                        ; $6316: $0b
    ld b, $93                                     ; $6317: $06 $93
    dec bc                                        ; $6319: $0b
    ld b, $9d                                     ; $631a: $06 $9d
    dec bc                                        ; $631c: $0b
    ld b, $a9                                     ; $631d: $06 $a9
    dec bc                                        ; $631f: $0b
    ld b, $b5                                     ; $6320: $06 $b5
    dec bc                                        ; $6322: $0b
    ld b, $c0                                     ; $6323: $06 $c0
    dec bc                                        ; $6325: $0b
    ld b, $cd                                     ; $6326: $06 $cd
    dec bc                                        ; $6328: $0b
    ld b, $dc                                     ; $6329: $06 $dc
    dec bc                                        ; $632b: $0b
    ld b, $de                                     ; $632c: $06 $de
    dec bc                                        ; $632e: $0b
    ld b, $e0                                     ; $632f: $06 $e0
    dec bc                                        ; $6331: $0b
    ld b, $e2                                     ; $6332: $06 $e2
    dec bc                                        ; $6334: $0b
    ld b, $e4                                     ; $6335: $06 $e4
    dec bc                                        ; $6337: $0b
    ld b, $e6                                     ; $6338: $06 $e6
    dec bc                                        ; $633a: $0b
    ld b, $e8                                     ; $633b: $06 $e8
    dec bc                                        ; $633d: $0b
    ld b, $ea                                     ; $633e: $06 $ea
    dec bc                                        ; $6340: $0b
    ld b, $ec                                     ; $6341: $06 $ec
    dec bc                                        ; $6343: $0b
    ld b, $ee                                     ; $6344: $06 $ee
    dec bc                                        ; $6346: $0b
    ld b, $f0                                     ; $6347: $06 $f0
    dec bc                                        ; $6349: $0b
    ld b, $f2                                     ; $634a: $06 $f2
    dec bc                                        ; $634c: $0b
    ld b, $fc                                     ; $634d: $06 $fc
    dec bc                                        ; $634f: $0b
    ld b, $fe                                     ; $6350: $06 $fe
    dec bc                                        ; $6352: $0b
    ld b, $00                                     ; $6353: $06 $00
    inc c                                         ; $6355: $0c
    ld b, $02                                     ; $6356: $06 $02
    inc c                                         ; $6358: $0c
    ld b, $04                                     ; $6359: $06 $04
    inc c                                         ; $635b: $0c
    ld b, $06                                     ; $635c: $06 $06
    inc c                                         ; $635e: $0c
    ld b, $08                                     ; $635f: $06 $08
    inc c                                         ; $6361: $0c
    ld b, $0a                                     ; $6362: $06 $0a
    inc c                                         ; $6364: $0c
    ld b, $0c                                     ; $6365: $06 $0c
    inc c                                         ; $6367: $0c
    ld b, $0e                                     ; $6368: $06 $0e
    inc c                                         ; $636a: $0c
    ld b, $10                                     ; $636b: $06 $10
    inc c                                         ; $636d: $0c
    ld b, $12                                     ; $636e: $06 $12
    inc c                                         ; $6370: $0c
    ld b, $14                                     ; $6371: $06 $14
    inc c                                         ; $6373: $0c
    ld b, $16                                     ; $6374: $06 $16
    inc c                                         ; $6376: $0c
    ld b, $18                                     ; $6377: $06 $18
    inc c                                         ; $6379: $0c
    ld b, $1a                                     ; $637a: $06 $1a
    inc c                                         ; $637c: $0c
    ld b, $1c                                     ; $637d: $06 $1c
    inc c                                         ; $637f: $0c
    ld b, $1e                                     ; $6380: $06 $1e
    inc c                                         ; $6382: $0c
    ld b, $20                                     ; $6383: $06 $20
    inc c                                         ; $6385: $0c
    ld b, $22                                     ; $6386: $06 $22
    inc c                                         ; $6388: $0c
    ld b, $24                                     ; $6389: $06 $24
    inc c                                         ; $638b: $0c
    ld b, $26                                     ; $638c: $06 $26
    inc c                                         ; $638e: $0c
    ld b, $31                                     ; $638f: $06 $31
    inc c                                         ; $6391: $0c
    ld b, $33                                     ; $6392: $06 $33
    inc c                                         ; $6394: $0c
    ld b, $3c                                     ; $6395: $06 $3c
    inc c                                         ; $6397: $0c
    ld b, $4a                                     ; $6398: $06 $4a
    inc c                                         ; $639a: $0c
    ld b, $56                                     ; $639b: $06 $56
    inc c                                         ; $639d: $0c
    ld b, $64                                     ; $639e: $06 $64
    inc c                                         ; $63a0: $0c
    ld b, $66                                     ; $63a1: $06 $66
    inc c                                         ; $63a3: $0c
    ld b, $68                                     ; $63a4: $06 $68
    inc c                                         ; $63a6: $0c
    ld b, $6a                                     ; $63a7: $06 $6a
    inc c                                         ; $63a9: $0c
    ld b, $6c                                     ; $63aa: $06 $6c
    inc c                                         ; $63ac: $0c
    ld b, $6e                                     ; $63ad: $06 $6e
    inc c                                         ; $63af: $0c
    ld b, $70                                     ; $63b0: $06 $70
    inc c                                         ; $63b2: $0c
    ld b, $72                                     ; $63b3: $06 $72
    inc c                                         ; $63b5: $0c
    ld b, $74                                     ; $63b6: $06 $74
    inc c                                         ; $63b8: $0c
    ld b, $76                                     ; $63b9: $06 $76
    inc c                                         ; $63bb: $0c
    ld b, $78                                     ; $63bc: $06 $78
    inc c                                         ; $63be: $0c
    ld b, $7a                                     ; $63bf: $06 $7a
    inc c                                         ; $63c1: $0c
    ld b, $7c                                     ; $63c2: $06 $7c
    inc c                                         ; $63c4: $0c
    ld b, $7e                                     ; $63c5: $06 $7e
    inc c                                         ; $63c7: $0c
    ld b, $80                                     ; $63c8: $06 $80
    inc c                                         ; $63ca: $0c
    ld b, $82                                     ; $63cb: $06 $82
    inc c                                         ; $63cd: $0c
    ld b, $84                                     ; $63ce: $06 $84
    inc c                                         ; $63d0: $0c
    ld b, $86                                     ; $63d1: $06 $86
    inc c                                         ; $63d3: $0c
    ld b, $88                                     ; $63d4: $06 $88
    inc c                                         ; $63d6: $0c
    ld b, $8d                                     ; $63d7: $06 $8d
    inc c                                         ; $63d9: $0c
    ld b, $8f                                     ; $63da: $06 $8f
    inc c                                         ; $63dc: $0c
    ld b, $91                                     ; $63dd: $06 $91
    inc c                                         ; $63df: $0c
    ld b, $93                                     ; $63e0: $06 $93
    inc c                                         ; $63e2: $0c
    ld b, $95                                     ; $63e3: $06 $95
    inc c                                         ; $63e5: $0c
    ld h, l                                       ; $63e6: $65
    ld h, e                                       ; $63e7: $63
    ld h, h                                       ; $63e8: $64
    add e                                         ; $63e9: $83
    adc b                                         ; $63ea: $88
    adc e                                         ; $63eb: $8b
    sub b                                         ; $63ec: $90
    sub h                                         ; $63ed: $94
    sub [hl]                                      ; $63ee: $96
    sbc b                                         ; $63ef: $98
    sbc c                                         ; $63f0: $99
    sbc e                                         ; $63f1: $9b
    and e                                         ; $63f2: $a3
    and h                                         ; $63f3: $a4
    and l                                         ; $63f4: $a5
    and a                                         ; $63f5: $a7
    xor b                                         ; $63f6: $a8
    xor c                                         ; $63f7: $a9
    xor e                                         ; $63f8: $ab
    xor l                                         ; $63f9: $ad
    xor a                                         ; $63fa: $af
    or b                                          ; $63fb: $b0
    or c                                          ; $63fc: $b1
    or d                                          ; $63fd: $b2
    or e                                          ; $63fe: $b3
    or h                                          ; $63ff: $b4
    or l                                          ; $6400: $b5
    or [hl]                                       ; $6401: $b6
    or a                                          ; $6402: $b7
    cp b                                          ; $6403: $b8
    cp c                                          ; $6404: $b9
    cp d                                          ; $6405: $ba
    cp e                                          ; $6406: $bb
    cp h                                          ; $6407: $bc
    cp l                                          ; $6408: $bd
    cp a                                          ; $6409: $bf
    ret nz                                        ; $640a: $c0

    jp nz, $c6c4                                  ; $640b: $c2 $c4 $c6

    rst $00                                       ; $640e: $c7
    ret                                           ; $640f: $c9


    jp z, $cccb                                   ; $6410: $ca $cb $cc

    adc $cf                                       ; $6413: $ce $cf
    pop de                                        ; $6415: $d1
    jp nc, $d5d4                                  ; $6416: $d2 $d4 $d5

    rst $10                                       ; $6419: $d7
    ret c                                         ; $641a: $d8

    reti                                          ; $641b: $d9


    jp c, $dfdc                                   ; $641c: $da $dc $df

    ldh [$ea], a                                  ; $641f: $e0 $ea
    db $eb                                        ; $6421: $eb
    rst $30                                       ; $6422: $f7
    ld sp, hl                                     ; $6423: $f9
    db $fc                                        ; $6424: $fc
    cp $00                                        ; $6425: $fe $00
    adc h                                         ; $6427: $8c
    sbc l                                         ; $6428: $9d
    and c                                         ; $6429: $a1
    pop bc                                        ; $642a: $c1
    jp $cdc8                                      ; $642b: $c3 $c8 $cd


    ret nc                                        ; $642e: $d0

    db $d3                                        ; $642f: $d3
    sub $f8                                       ; $6430: $d6 $f8
    ld a, [$0201]                                 ; $6432: $fa $01 $02
    inc bc                                        ; $6435: $03
    inc b                                         ; $6436: $04
    dec b                                         ; $6437: $05
    ld b, $07                                     ; $6438: $06 $07
    ld [$0a09], sp                                ; $643a: $08 $09 $0a
    dec bc                                        ; $643d: $0b
    inc c                                         ; $643e: $0c
    dec c                                         ; $643f: $0d
    ld c, $0f                                     ; $6440: $0e $0f
    db $10                                        ; $6442: $10
    ld de, $1312                                  ; $6443: $11 $12 $13
    inc d                                         ; $6446: $14
    dec d                                         ; $6447: $15
    ld d, $17                                     ; $6448: $16 $17
    jr jr_06b_6465                                ; $644a: $18 $19

    ld a, [de]                                    ; $644c: $1a
    dec de                                        ; $644d: $1b
    inc e                                         ; $644e: $1c
    dec e                                         ; $644f: $1d
    ld e, $1f                                     ; $6450: $1e $1f
    add a                                         ; $6452: $87
    adc a                                         ; $6453: $8f
    push bc                                       ; $6454: $c5
    jr nz, jr_06b_6478                            ; $6455: $20 $21

    ld [hl+], a                                   ; $6457: $22
    inc hl                                        ; $6458: $23
    inc h                                         ; $6459: $24
    dec h                                         ; $645a: $25
    ld h, $27                                     ; $645b: $26 $27
    jr z, jr_06b_6488                             ; $645d: $28 $29

    ld a, [hl+]                                   ; $645f: $2a
    dec hl                                        ; $6460: $2b
    inc l                                         ; $6461: $2c
    dec l                                         ; $6462: $2d
    ld l, $2f                                     ; $6463: $2e $2f

jr_06b_6465:
    jr nc, jr_06b_6498                            ; $6465: $30 $31

    ld [hl-], a                                   ; $6467: $32
    inc sp                                        ; $6468: $33
    inc [hl]                                      ; $6469: $34
    adc c                                         ; $646a: $89
    xor h                                         ; $646b: $ac
    ld [c], a                                     ; $646c: $e2
    and $e8                                       ; $646d: $e6 $e8
    pop af                                        ; $646f: $f1
    dec [hl]                                      ; $6470: $35
    rst $20                                       ; $6471: $e7
    ld [hl], $37                                  ; $6472: $36 $37
    jr c, jr_06b_64af                             ; $6474: $38 $39

    ld a, [hl-]                                   ; $6476: $3a
    dec sp                                        ; $6477: $3b

jr_06b_6478:
    inc a                                         ; $6478: $3c
    dec a                                         ; $6479: $3d
    ld a, $3f                                     ; $647a: $3e $3f
    ld b, b                                       ; $647c: $40
    ld b, c                                       ; $647d: $41
    or $42                                        ; $647e: $f6 $42
    ld b, e                                       ; $6480: $43
    ld b, h                                       ; $6481: $44
    ldh a, [$ae]                                  ; $6482: $f0 $ae
    db $ec                                        ; $6484: $ec
    rst $38                                       ; $6485: $ff
    ld b, l                                       ; $6486: $45
    ld b, [hl]                                    ; $6487: $46

jr_06b_6488:
    ld b, a                                       ; $6488: $47
    ld c, b                                       ; $6489: $48
    ld c, c                                       ; $648a: $49
    ld c, d                                       ; $648b: $4a
    ld c, e                                       ; $648c: $4b
    ld c, h                                       ; $648d: $4c
    db $e3                                        ; $648e: $e3
    db $ed                                        ; $648f: $ed
    db $e4                                        ; $6490: $e4
    ld c, l                                       ; $6491: $4d
    db $f4                                        ; $6492: $f4
    push af                                       ; $6493: $f5
    xor $e9                                       ; $6494: $ee $e9
    ld c, [hl]                                    ; $6496: $4e
    ld c, a                                       ; $6497: $4f

jr_06b_6498:
    ld d, b                                       ; $6498: $50
    ld d, c                                       ; $6499: $51
    ld d, d                                       ; $649a: $52
    ld d, e                                       ; $649b: $53
    di                                            ; $649c: $f3
    ld a, [c]                                     ; $649d: $f2
    ld d, h                                       ; $649e: $54
    ld d, l                                       ; $649f: $55
    ld d, [hl]                                    ; $64a0: $56
    rst $28                                       ; $64a1: $ef
    ld d, a                                       ; $64a2: $57
    ld e, b                                       ; $64a3: $58
    ld e, c                                       ; $64a4: $59
    pop hl                                        ; $64a5: $e1
    push hl                                       ; $64a6: $e5
    ld e, d                                       ; $64a7: $5a
    ld e, e                                       ; $64a8: $5b
    ld e, h                                       ; $64a9: $5c
    and b                                         ; $64aa: $a0
    ld e, l                                       ; $64ab: $5d
    ld e, [hl]                                    ; $64ac: $5e
    ld e, a                                       ; $64ad: $5f
    ld h, b                                       ; $64ae: $60

jr_06b_64af:
    ld h, c                                       ; $64af: $61
    ld h, d                                       ; $64b0: $62
    ld c, a                                       ; $64b1: $4f
    cp l                                          ; $64b2: $bd
    db $f4                                        ; $64b3: $f4
    db $e4                                        ; $64b4: $e4
    inc sp                                        ; $64b5: $33
    cpl                                           ; $64b6: $2f
    dec a                                         ; $64b7: $3d
    ld sp, hl                                     ; $64b8: $f9
    call z, $4f53                                 ; $64b9: $cc $53 $4f
    dec a                                         ; $64bc: $3d
    ld a, l                                       ; $64bd: $7d
    nop                                           ; $64be: $00
    ld l, a                                       ; $64bf: $6f
    add hl, de                                    ; $64c0: $19
    ld l, [hl]                                    ; $64c1: $6e
    xor a                                         ; $64c2: $af
    ld a, l                                       ; $64c3: $7d
    ld hl, $89f7                                  ; $64c4: $21 $f7 $89
    ld e, [hl]                                    ; $64c7: $5e
    rra                                           ; $64c8: $1f
    adc e                                         ; $64c9: $8b
    jp hl                                         ; $64ca: $e9


    sub h                                         ; $64cb: $94
    adc $f4                                       ; $64cc: $ce $f4
    pop de                                        ; $64ce: $d1
    or a                                          ; $64cf: $b7
    ld a, $7d                                     ; $64d0: $3e $7d
    db $ec                                        ; $64d2: $ec
    nop                                           ; $64d3: $00
    rra                                           ; $64d4: $1f
    ld [hl+], a                                   ; $64d5: $22
    ld d, d                                       ; $64d6: $52
    ld h, e                                       ; $64d7: $63
    ccf                                           ; $64d8: $3f
    db $e3                                        ; $64d9: $e3
    xor l                                         ; $64da: $ad
    ret c                                         ; $64db: $d8

    rst $08                                       ; $64dc: $cf
    ld b, e                                       ; $64dd: $43
    adc a                                         ; $64de: $8f
    ret z                                         ; $64df: $c8

    ld d, a                                       ; $64e0: $57
    ld a, [$4bd4]                                 ; $64e1: $fa $d4 $4b
    ld c, a                                       ; $64e4: $4f
    ld a, $f3                                     ; $64e5: $3e $f3
    ld [c], a                                     ; $64e7: $e2
    sub e                                         ; $64e8: $93
    rst $08                                       ; $64e9: $cf
    inc a                                         ; $64ea: $3c
    push af                                       ; $64eb: $f5
    call nc, Call_000_07d3                        ; $64ec: $d4 $d3 $07
    rst $28                                       ; $64ef: $ef
    ld [hl], b                                    ; $64f0: $70
    push bc                                       ; $64f1: $c5
    ld [hl], l                                    ; $64f2: $75
    ld [hl], c                                    ; $64f3: $71
    ld c, $57                                     ; $64f4: $0e $57
    ld h, b                                       ; $64f6: $60
    ld de, $ef07                                  ; $64f7: $11 $07 $ef
    ld b, l                                       ; $64fa: $45
    cp d                                          ; $64fb: $ba
    inc bc                                        ; $64fc: $03
    rst $28                                       ; $64fd: $ef
    and h                                         ; $64fe: $a4
    db $d3                                        ; $64ff: $d3
    or d                                          ; $6500: $b2
    inc bc                                        ; $6501: $03
    rst $10                                       ; $6502: $d7
    rst $08                                       ; $6503: $cf
    ld e, a                                       ; $6504: $5f
    jp hl                                         ; $6505: $e9


    sbc e                                         ; $6506: $9b
    ld c, a                                       ; $6507: $4f
    ccf                                           ; $6508: $3f
    ld sp, hl                                     ; $6509: $f9
    and $33                                       ; $650a: $e6 $33
    dec a                                         ; $650c: $3d
    nop                                           ; $650d: $00
    rst $10                                       ; $650e: $d7
    xor a                                         ; $650f: $af
    cp l                                          ; $6510: $bd
    jp nc, $9f37                                  ; $6511: $d2 $37 $9f

    ld a, [hl]                                    ; $6514: $7e
    ld a, [c]                                     ; $6515: $f2
    call $7a67                                    ; $6516: $cd $67 $7a
    nop                                           ; $6519: $00
    rst $28                                       ; $651a: $ef
    db $ec                                        ; $651b: $ec
    dec hl                                        ; $651c: $2b
    ld h, h                                       ; $651d: $64
    or $d3                                        ; $651e: $f6 $d3
    rst $08                                       ; $6520: $cf
    di                                            ; $6521: $f3
    inc e                                         ; $6522: $1c
    rst $28                                       ; $6523: $ef
    db $ec                                        ; $6524: $ec
    dec hl                                        ; $6525: $2b
    ld h, h                                       ; $6526: $64
    or $d3                                        ; $6527: $f6 $d3
    or a                                          ; $6529: $b7
    db $d3                                        ; $652a: $d3
    inc e                                         ; $652b: $1c
    rst $28                                       ; $652c: $ef
    db $ec                                        ; $652d: $ec
    dec hl                                        ; $652e: $2b
    ld h, h                                       ; $652f: $64
    or $d3                                        ; $6530: $f6 $d3
    rst $08                                       ; $6532: $cf
    ld l, h                                       ; $6533: $6c
    pop hl                                        ; $6534: $e1
    nop                                           ; $6535: $00
    scf                                           ; $6536: $37
    ld l, c                                       ; $6537: $69
    ld l, [hl]                                    ; $6538: $6e
    db $ed                                        ; $6539: $ed
    ei                                            ; $653a: $fb
    sbc d                                         ; $653b: $9a
    and h                                         ; $653c: $a4
    db $fd                                        ; $653d: $fd
    inc a                                         ; $653e: $3c
    rst $08                                       ; $653f: $cf
    ld bc, $6937                                  ; $6540: $01 $37 $69
    ld l, [hl]                                    ; $6543: $6e
    db $ed                                        ; $6544: $ed
    ei                                            ; $6545: $fb
    sbc d                                         ; $6546: $9a
    and h                                         ; $6547: $a4
    ld a, l                                       ; $6548: $7d
    dec sp                                        ; $6549: $3b
    call $3701                                    ; $654a: $cd $01 $37
    ld l, c                                       ; $654d: $69
    ld l, [hl]                                    ; $654e: $6e
    db $ed                                        ; $654f: $ed
    ei                                            ; $6550: $fb
    sbc d                                         ; $6551: $9a
    and h                                         ; $6552: $a4
    db $fd                                        ; $6553: $fd
    call z, Call_000_0e16                         ; $6554: $cc $16 $0e
    scf                                           ; $6557: $37
    ld l, c                                       ; $6558: $69

Call_06b_6559:
    ld a, [hl]                                    ; $6559: $7e
    cp c                                          ; $655a: $b9
    or l                                          ; $655b: $b5
    rst $28                                       ; $655c: $ef
    ld l, e                                       ; $655d: $6b
    sub d                                         ; $655e: $92
    or $f3                                        ; $655f: $f6 $f3
    inc a                                         ; $6561: $3c
    rlca                                          ; $6562: $07
    scf                                           ; $6563: $37
    ld l, c                                       ; $6564: $69
    ld a, [hl]                                    ; $6565: $7e
    cp c                                          ; $6566: $b9
    or l                                          ; $6567: $b5
    rst $28                                       ; $6568: $ef
    ld l, e                                       ; $6569: $6b
    sub d                                         ; $656a: $92
    or $ed                                        ; $656b: $f6 $ed
    inc [hl]                                      ; $656d: $34
    rlca                                          ; $656e: $07
    scf                                           ; $656f: $37
    ld l, c                                       ; $6570: $69
    ld a, [hl]                                    ; $6571: $7e
    cp c                                          ; $6572: $b9
    or l                                          ; $6573: $b5
    rst $28                                       ; $6574: $ef
    ld l, e                                       ; $6575: $6b
    sub d                                         ; $6576: $92
    or $33                                        ; $6577: $f6 $33
    ld e, e                                       ; $6579: $5b
    jr c, jr_06b_657c                             ; $657a: $38 $00

jr_06b_657c:
    rst $28                                       ; $657c: $ef
    ld h, l                                       ; $657d: $65
    ret                                           ; $657e: $c9


    db $ec                                        ; $657f: $ec
    rst $10                                       ; $6580: $d7
    db $f4                                        ; $6581: $f4
    di                                            ; $6582: $f3
    inc a                                         ; $6583: $3c
    rlca                                          ; $6584: $07
    rst $28                                       ; $6585: $ef
    ld h, l                                       ; $6586: $65
    ret                                           ; $6587: $c9


    db $ec                                        ; $6588: $ec
    rst $10                                       ; $6589: $d7
    db $f4                                        ; $658a: $f4
    db $ed                                        ; $658b: $ed
    inc [hl]                                      ; $658c: $34
    rlca                                          ; $658d: $07
    rst $28                                       ; $658e: $ef
    ld h, l                                       ; $658f: $65
    ret                                           ; $6590: $c9


    db $ec                                        ; $6591: $ec
    rst $10                                       ; $6592: $d7
    db $f4                                        ; $6593: $f4
    inc sp                                        ; $6594: $33
    ld e, e                                       ; $6595: $5b
    jr c, jr_06b_6598                             ; $6596: $38 $00

jr_06b_6598:
    ld e, a                                       ; $6598: $5f
    xor h                                         ; $6599: $ac
    ld a, h                                       ; $659a: $7c
    add d                                         ; $659b: $82
    ld sp, hl                                     ; $659c: $f9
    sub l                                         ; $659d: $95
    ld e, h                                       ; $659e: $5c
    ccf                                           ; $659f: $3f
    db $e4                                        ; $65a0: $e4
    ld a, a                                       ; $65a1: $7f
    adc l                                         ; $65a2: $8d
    ld [c], a                                     ; $65a3: $e2
    nop                                           ; $65a4: $00
    rra                                           ; $65a5: $1f
    adc [hl]                                      ; $65a6: $8e
    inc e                                         ; $65a7: $1c
    scf                                           ; $65a8: $37
    ld [hl], c                                    ; $65a9: $71
    xor h                                         ; $65aa: $ac
    ld e, a                                       ; $65ab: $5f
    inc l                                         ; $65ac: $2c
    and c                                         ; $65ad: $a1
    ld [hl], b                                    ; $65ae: $70
    rst $38                                       ; $65af: $ff
    jp hl                                         ; $65b0: $e9


    nop                                           ; $65b1: $00
    rra                                           ; $65b2: $1f
    adc [hl]                                      ; $65b3: $8e
    inc e                                         ; $65b4: $1c
    scf                                           ; $65b5: $37
    ld [hl], c                                    ; $65b6: $71
    xor h                                         ; $65b7: $ac
    rst $10                                       ; $65b8: $d7
    add $e2                                       ; $65b9: $c6 $e2
    jp nc, $d703                                  ; $65bb: $d2 $03 $d7

    add hl, de                                    ; $65be: $19
    ld l, l                                       ; $65bf: $6d
    adc c                                         ; $65c0: $89
    sub [hl]                                      ; $65c1: $96
    ld c, h                                       ; $65c2: $4c
    jp c, $26cf                                   ; $65c3: $da $cf $26

    ld h, d                                       ; $65c6: $62
    ld c, a                                       ; $65c7: $4f
    ld a, d                                       ; $65c8: $7a
    nop                                           ; $65c9: $00
    rst $10                                       ; $65ca: $d7
    sub d                                         ; $65cb: $92
    ld c, h                                       ; $65cc: $4c
    jp c, $becb                                   ; $65cd: $da $cb $be

    rra                                           ; $65d0: $1f
    ld hl, $e129                                  ; $65d1: $21 $29 $e1
    ld c, $37                                     ; $65d4: $0e $37
    ld b, a                                       ; $65d6: $47
    sbc [hl]                                      ; $65d7: $9e
    dec d                                         ; $65d8: $15
    dec hl                                        ; $65d9: $2b
    ld a, e                                       ; $65da: $7b
    inc [hl]                                      ; $65db: $34
    rst $38                                       ; $65dc: $ff
    ld c, [hl]                                    ; $65dd: $4e
    ld de, $b31a                                  ; $65de: $11 $1a $b3
    ld h, a                                       ; $65e1: $67
    ld l, d                                       ; $65e2: $6a
    ld h, [hl]                                    ; $65e3: $66
    ld d, $27                                     ; $65e4: $16 $27
    ld d, a                                       ; $65e6: $57
    ld de, $5c57                                  ; $65e7: $11 $57 $5c
    rla                                           ; $65ea: $17
    rst $20                                       ; $65eb: $e7
    jp nc, $3701                                  ; $65ec: $d2 $01 $37

    ld b, a                                       ; $65ef: $47
    sbc [hl]                                      ; $65f0: $9e
    dec [hl]                                      ; $65f1: $35
    rst $38                                       ; $65f2: $ff
    ld c, [hl]                                    ; $65f3: $4e
    jp $4d51                                      ; $65f4: $c3 $51 $4d


    xor e                                         ; $65f7: $ab
    rst $10                                       ; $65f8: $d7
    daa                                           ; $65f9: $27
    rst $00                                       ; $65fa: $c7
    pop de                                        ; $65fb: $d1
    ld e, [hl]                                    ; $65fc: $5e
    dec bc                                        ; $65fd: $0b
    ld a, $2d                                     ; $65fe: $3e $2d
    add hl, sp                                    ; $6600: $39
    ld e, d                                       ; $6601: $5a
    ld c, l                                       ; $6602: $4d
    and d                                         ; $6603: $a2
    dec h                                         ; $6604: $25
    rla                                           ; $6605: $17
    ld [hl], e                                    ; $6606: $73
    and h                                         ; $6607: $a4
    ld [hl], $84                                  ; $6608: $36 $84
    and c                                         ; $660a: $a1
    dec sp                                        ; $660b: $3b
    ld a, [c]                                     ; $660c: $f2
    ld b, l                                       ; $660d: $45
    ld e, b                                       ; $660e: $58
    xor c                                         ; $660f: $a9
    sub c                                         ; $6610: $91
    dec d                                         ; $6611: $15
    ld [hl], c                                    ; $6612: $71
    push bc                                       ; $6613: $c5
    ld [hl], l                                    ; $6614: $75
    ld [hl], c                                    ; $6615: $71
    ld l, $1d                                     ; $6616: $2e $1d
    scf                                           ; $6618: $37
    ld b, a                                       ; $6619: $47
    sbc [hl]                                      ; $661a: $9e
    dec [hl]                                      ; $661b: $35
    rst $38                                       ; $661c: $ff
    ld c, [hl]                                    ; $661d: $4e
    push hl                                       ; $661e: $e5
    ld h, h                                       ; $661f: $64
    push hl                                       ; $6620: $e5
    add hl, hl                                    ; $6621: $29
    xor l                                         ; $6622: $ad
    ld d, h                                       ; $6623: $54
    xor d                                         ; $6624: $aa
    ld b, h                                       ; $6625: $44
    ld [$0edb], sp                                ; $6626: $08 $db $0e
    ld l, a                                       ; $6629: $6f
    pop de                                        ; $662a: $d1
    dec a                                         ; $662b: $3d

jr_06b_662c:
    pop af                                        ; $662c: $f1
    ld e, a                                       ; $662d: $5f
    reti                                          ; $662e: $d9


    ld c, a                                       ; $662f: $4f
    ld sp, $8b7d                                  ; $6630: $31 $7d $8b
    ld [hl], d                                    ; $6633: $72
    ld a, [$c2f6]                                 ; $6634: $fa $f6 $c2
    ld l, c                                       ; $6637: $69
    ld [hl-], a                                   ; $6638: $32
    halt                                          ; $6639: $76
    ld b, c                                       ; $663a: $41
    xor a                                         ; $663b: $af
    jp nz, $a7ec                                  ; $663c: $c2 $ec $a7

    db $ed                                        ; $663f: $ed
    nop                                           ; $6640: $00
    rst $20                                       ; $6641: $e7
    xor c                                         ; $6642: $a9
    add hl, sp                                    ; $6643: $39
    ld h, l                                       ; $6644: $65
    adc c                                         ; $6645: $89
    cp $57                                        ; $6646: $fe $57
    sub e                                         ; $6648: $93
    db $eb                                        ; $6649: $eb
    sbc [hl]                                      ; $664a: $9e
    ld c, [hl]                                    ; $664b: $4e
    or b                                          ; $664c: $b0
    jp z, Jump_06b_5371                           ; $664d: $ca $71 $53

    xor d                                         ; $6650: $aa
    or d                                          ; $6651: $b2
    ret z                                         ; $6652: $c8

    sub c                                         ; $6653: $91
    ld a, d                                       ; $6654: $7a
    jp hl                                         ; $6655: $e9


    nop                                           ; $6656: $00
    rst $28                                       ; $6657: $ef
    ld l, c                                       ; $6658: $69
    sbc h                                         ; $6659: $9c
    ld e, [hl]                                    ; $665a: $5e
    ld l, b                                       ; $665b: $68
    jr c, jr_06b_6674                             ; $665c: $38 $16

    ld c, b                                       ; $665e: $48
    ld l, h                                       ; $665f: $6c
    cp $9d                                        ; $6660: $fe $9d
    ld a, [c]                                     ; $6662: $f2
    sub $d2                                       ; $6663: $d6 $d2
    ret z                                         ; $6665: $c8

    ld h, [hl]                                    ; $6666: $66
    ld h, [hl]                                    ; $6667: $66
    ld [hl], c                                    ; $6668: $71
    ld [hl], d                                    ; $6669: $72
    sub l                                         ; $666a: $95
    db $e3                                        ; $666b: $e3
    and [hl]                                      ; $666c: $a6
    call c, $f5b9                                 ; $666d: $dc $b9 $f5
    ld e, h                                       ; $6670: $5c
    inc hl                                        ; $6671: $23
    ld a, d                                       ; $6672: $7a
    and c                                         ; $6673: $a1

jr_06b_6674:
    add sp, -$79                                  ; $6674: $e8 $87
    di                                            ; $6676: $f3
    dec a                                         ; $6677: $3d
    ld [$9bd9], a                                 ; $6678: $ea $d9 $9b
    or b                                          ; $667b: $b0
    sub l                                         ; $667c: $95
    push bc                                       ; $667d: $c5
    ret nc                                        ; $667e: $d0

    ld a, [hl]                                    ; $667f: $7e
    cp h                                          ; $6680: $bc
    xor a                                         ; $6681: $af
    ccf                                           ; $6682: $3f
    inc c                                         ; $6683: $0c
    ld a, [hl+]                                   ; $6684: $2a
    xor b                                         ; $6685: $a8
    inc e                                         ; $6686: $1c
    scf                                           ; $6687: $37
    db $fd                                        ; $6688: $fd
    adc a                                         ; $6689: $8f
    inc a                                         ; $668a: $3c
    ld l, e                                       ; $668b: $6b
    jr c, jr_06b_662c                             ; $668c: $38 $9e

    db $fd                                        ; $668e: $fd
    db $d3                                        ; $668f: $d3
    ld a, [de]                                    ; $6690: $1a
    ld [hl], d                                    ; $6691: $72
    ld b, a                                       ; $6692: $47
    db $c3, $1d, $12                              ; $6693: $c3 $1d $12


    ld e, e                                       ; $6696: $5b
    rst $08                                       ; $6697: $cf
    ld d, e                                       ; $6698: $53
    rst $38                                       ; $6699: $ff
    sub e                                         ; $669a: $93
    jp z, Jump_000_0d1c                           ; $669b: $ca $1c $0d

    ld d, [hl]                                    ; $669e: $56
    or $4f                                        ; $669f: $f6 $4f
    xor e                                         ; $66a1: $ab
    or d                                          ; $66a2: $b2
    sub c                                         ; $66a3: $91
    add l                                         ; $66a4: $85
    ld e, c                                       ; $66a5: $59
    ld [hl], d                                    ; $66a6: $72
    db $d3                                        ; $66a7: $d3
    db $e4                                        ; $66a8: $e4
    ret nc                                        ; $66a9: $d0

    ccf                                           ; $66aa: $3f
    ld l, h                                       ; $66ab: $6c
    ld h, l                                       ; $66ac: $65
    ld sp, $deb6                                  ; $66ad: $31 $b6 $de
    inc e                                         ; $66b0: $1c
    ld a, c                                       ; $66b1: $79
    sub $70                                       ; $66b2: $d6 $70
    inc a                                         ; $66b4: $3c
    bit 3, e                                      ; $66b5: $cb $5b
    pop hl                                        ; $66b7: $e1
    ld a, $06                                     ; $66b8: $3e $06
    ld l, e                                       ; $66ba: $6b
    ld [hl], d                                    ; $66bb: $72
    dec c                                         ; $66bc: $0d
    daa                                           ; $66bd: $27
    ret                                           ; $66be: $c9


    xor c                                         ; $66bf: $a9
    or d                                          ; $66c0: $b2
    add c                                         ; $66c1: $81
    or h                                          ; $66c2: $b4
    sub h                                         ; $66c3: $94
    ld h, $28                                     ; $66c4: $26 $28
    ld [hl], d                                    ; $66c6: $72
    and h                                         ; $66c7: $a4
    sub $b3                                       ; $66c8: $d6 $b3
    adc [hl]                                      ; $66ca: $8e
    ld h, l                                       ; $66cb: $65
    sub [hl]                                      ; $66cc: $96
    sub e                                         ; $66cd: $93
    and e                                         ; $66ce: $a3
    pop bc                                        ; $66cf: $c1
    cp d                                          ; $66d0: $ba
    rlca                                          ; $66d1: $07
    rst $10                                       ; $66d2: $d7
    inc sp                                        ; $66d3: $33
    ld b, a                                       ; $66d4: $47
    sbc e                                         ; $66d5: $9b
    db $ed                                        ; $66d6: $ed
    nop                                           ; $66d7: $00
    rra                                           ; $66d8: $1f
    rst $28                                       ; $66d9: $ef
    pop bc                                        ; $66da: $c1
    add d                                         ; $66db: $82
    ld e, [hl]                                    ; $66dc: $5e
    add l                                         ; $66dd: $85
    reti                                          ; $66de: $d9


    ld c, a                                       ; $66df: $4f
    ld e, e                                       ; $66e0: $5b
    rst $08                                       ; $66e1: $cf
    dec [hl]                                      ; $66e2: $35
    or d                                          ; $66e3: $b2
    rla                                           ; $66e4: $17
    ld a, [hl-]                                   ; $66e5: $3a
    cp l                                          ; $66e6: $bd
    ld h, c                                       ; $66e7: $61
    ld e, e                                       ; $66e8: $5b
    ccf                                           ; $66e9: $3f
    sbc $d7                                       ; $66ea: $de $d7
    rra                                           ; $66ec: $1f
    ld b, $dd                                     ; $66ed: $06 $dd
    ld a, d                                       ; $66ef: $7a
    cp [hl]                                       ; $66f0: $be
    or e                                          ; $66f1: $b3
    res 0, d                                      ; $66f2: $cb $82
    adc e                                         ; $66f4: $8b
    rst $28                                       ; $66f5: $ef
    sub e                                         ; $66f6: $93
    rrca                                          ; $66f7: $0f
    ld a, [hl]                                    ; $66f8: $7e
    ld h, d                                       ; $66f9: $62
    sbc a                                         ; $66fa: $9f
    and d                                         ; $66fb: $a2
    ld d, h                                       ; $66fc: $54
    add hl, sp                                    ; $66fd: $39
    cp e                                          ; $66fe: $bb
    sbc b                                         ; $66ff: $98
    sub $e4                                       ; $6700: $d6 $e4
    ret nc                                        ; $6702: $d0

    ccf                                           ; $6703: $3f
    ld l, h                                       ; $6704: $6c
    ld h, l                                       ; $6705: $65
    ld sp, $deb6                                  ; $6706: $31 $b6 $de
    ld h, h                                       ; $6709: $64
    ld d, $a3                                     ; $670a: $16 $a3
    adc [hl]                                      ; $670c: $8e
    ld h, l                                       ; $670d: $65
    sub [hl]                                      ; $670e: $96
    sub e                                         ; $670f: $93
    and e                                         ; $6710: $a3
    pop bc                                        ; $6711: $c1
    ld c, d                                       ; $6712: $4a
    rst $10                                       ; $6713: $d7
    ld [hl], a                                    ; $6714: $77
    ld l, l                                       ; $6715: $6d
    push hl                                       ; $6716: $e5
    db $d3                                        ; $6717: $d3
    ld b, h                                       ; $6718: $44
    ld l, d                                       ; $6719: $6a

jr_06b_671a:
    dec a                                         ; $671a: $3d
    jp $ba59                                      ; $671b: $c3 $59 $ba


    dec e                                         ; $671e: $1d
    ld d, a                                       ; $671f: $57
    add e                                         ; $6720: $83
    adc e                                         ; $6721: $8b
    db $fd                                        ; $6722: $fd
    sub h                                         ; $6723: $94
    inc e                                         ; $6724: $1c
    ld a, [hl+]                                   ; $6725: $2a
    ld h, a                                       ; $6726: $67
    add hl, hl                                    ; $6727: $29
    ld c, d                                       ; $6728: $4a
    sub l                                         ; $6729: $95
    or [hl]                                       ; $672a: $b6
    ld [hl+], a                                   ; $672b: $22
    sbc d                                         ; $672c: $9a
    pop de                                        ; $672d: $d1
    ld [hl], b                                    ; $672e: $70
    inc l                                         ; $672f: $2c
    and d                                         ; $6730: $a2
    db $db                                        ; $6731: $db
    or [hl]                                       ; $6732: $b6
    dec e                                         ; $6733: $1d
    adc a                                         ; $6734: $8f
    sbc h                                         ; $6735: $9c
    rst $20                                       ; $6736: $e7
    ld l, b                                       ; $6737: $68
    ld [hl], h                                    ; $6738: $74
    add d                                         ; $6739: $82
    ld d, d                                       ; $673a: $52
    and e                                         ; $673b: $a3
    ld hl, $478b                                  ; $673c: $21 $8b $47
    dec b                                         ; $673f: $05
    ld [hl], l                                    ; $6740: $75
    ret nc                                        ; $6741: $d0

    add [hl]                                      ; $6742: $86
    ld b, [hl]                                    ; $6743: $46
    adc l                                         ; $6744: $8d
    ld [hl], h                                    ; $6745: $74
    ld b, l                                       ; $6746: $45
    ld h, h                                       ; $6747: $64
    cp [hl]                                       ; $6748: $be
    ld hl, sp+$3b                                 ; $6749: $f8 $3b
    rlca                                          ; $674b: $07
    sub a                                         ; $674c: $97
    and a                                         ; $674d: $a7
    add c                                         ; $674e: $81
    call nz, Call_06b_4352                        ; $674f: $c4 $52 $43
    ld a, [de]                                    ; $6752: $1a
    ld a, [hl-]                                   ; $6753: $3a
    dec c                                         ; $6754: $0d
    add hl, hl                                    ; $6755: $29
    pop hl                                        ; $6756: $e1
    and a                                         ; $6757: $a7
    ld e, $85                                     ; $6758: $1e $85
    inc de                                        ; $675a: $13

jr_06b_675b:
    xor [hl]                                      ; $675b: $ae
    adc e                                         ; $675c: $8b
    cp a                                          ; $675d: $bf
    inc hl                                        ; $675e: $23
    jr c, jr_06b_6761                             ; $675f: $38 $00

jr_06b_6761:
    rst $10                                       ; $6761: $d7
    rst $00                                       ; $6762: $c7
    ld [bc], a                                    ; $6763: $02
    adc c                                         ; $6764: $89
    dec e                                         ; $6765: $1d
    ld l, l                                       ; $6766: $6d
    jr nz, jr_06b_671a                            ; $6767: $20 $b1

    ld [hl], c                                    ; $6769: $71
    add hl, de                                    ; $676a: $19
    ld e, h                                       ; $676b: $5c
    and a                                         ; $676c: $a7
    add c                                         ; $676d: $81
    call nz, $dfe6                                ; $676e: $c4 $e6 $df
    jp hl                                         ; $6771: $e9


    add hl, bc                                    ; $6772: $09
    ld e, c                                       ; $6773: $59
    inc c                                         ; $6774: $0c
    add e                                         ; $6775: $83
    dec sp                                        ; $6776: $3b
    nop                                           ; $6777: $00
    sbc a                                         ; $6778: $9f
    pop de                                        ; $6779: $d1
    ld a, [hl]                                    ; $677a: $7e
    and a                                         ; $677b: $a7
    rla                                           ; $677c: $17
    ld a, [de]                                    ; $677d: $1a
    ld c, b                                       ; $677e: $48
    ld l, h                                       ; $677f: $6c
    adc b                                         ; $6780: $88
    inc de                                        ; $6781: $13
    xor h                                         ; $6782: $ac
    ld l, $ad                                     ; $6783: $2e $ad
    jr c, @-$69                                   ; $6785: $38 $95

    or b                                          ; $6787: $b0
    reti                                          ; $6788: $d9


    ld e, $39                                     ; $6789: $1e $39
    nop                                           ; $678b: $00
    scf                                           ; $678c: $37
    ld b, a                                       ; $678d: $47
    sbc [hl]                                      ; $678e: $9e
    dec [hl]                                      ; $678f: $35
    rst $38                                       ; $6790: $ff

Call_06b_6791:
    ld c, [hl]                                    ; $6791: $4e
    jp $ecf1                                      ; $6792: $c3 $f1 $ec


    or d                                          ; $6795: $b2
    ld [hl+], a                                   ; $6796: $22
    ld e, [hl]                                    ; $6797: $5e
    jr z, jr_06b_67b4                             ; $6798: $28 $1a

    ld l, h                                       ; $679a: $6c
    ld b, h                                       ; $679b: $44
    db $fd                                        ; $679c: $fd
    ld l, b                                       ; $679d: $68
    push hl                                       ; $679e: $e5
    adc b                                         ; $679f: $88
    adc h                                         ; $67a0: $8c
    ld e, d                                       ; $67a1: $5a
    call nc, $8f31                                ; $67a2: $d4 $31 $8f
    ld [hl], $90                                  ; $67a5: $36 $90
    ret c                                         ; $67a7: $d8

    ret z                                         ; $67a8: $c8

    inc l                                         ; $67a9: $2c
    ld b, [hl]                                    ; $67aa: $46
    ld d, c                                       ; $67ab: $51
    add hl, hl                                    ; $67ac: $29
    add $9f                                       ; $67ad: $c6 $9f
    push af                                       ; $67af: $f5
    xor h                                         ; $67b0: $ac
    ld [hl-], a                                   ; $67b1: $32
    ld d, l                                       ; $67b2: $55
    adc [hl]                                      ; $67b3: $8e

jr_06b_67b4:
    ret z                                         ; $67b4: $c8

    cp b                                          ; $67b5: $b8
    dec e                                         ; $67b6: $1d

jr_06b_67b7:
    scf                                           ; $67b7: $37
    ld l, h                                       ; $67b8: $6c
    db $eb                                        ; $67b9: $eb
    push af                                       ; $67ba: $f5
    adc c                                         ; $67bb: $89
    sub c                                         ; $67bc: $91
    or $46                                        ; $67bd: $f6 $46
    ld l, a                                       ; $67bf: $6f
    jr nc, jr_06b_67b7                            ; $67c0: $30 $f5

    ld h, h                                       ; $67c2: $64
    add hl, hl                                    ; $67c3: $29
    sbc h                                         ; $67c4: $9c
    ld d, d                                       ; $67c5: $52
    ld h, e                                       ; $67c6: $63
    ld [hl], b                                    ; $67c7: $70
    ld [hl], c                                    ; $67c8: $71
    ld c, d                                       ; $67c9: $4a
    jr nc, jr_06b_675b                            ; $67ca: $30 $8f

    db $ec                                        ; $67cc: $ec
    and a                                         ; $67cd: $a7
    ld a, c                                       ; $67ce: $79
    ld a, [hl+]                                   ; $67cf: $2a
    ld e, d                                       ; $67d0: $5a
    add hl, de                                    ; $67d1: $19
    ld a, e                                       ; $67d2: $7b
    db $fd                                        ; $67d3: $fd
    ld d, h                                       ; $67d4: $54
    adc [hl]                                      ; $67d5: $8e
    add hl, de                                    ; $67d6: $19
    db $fd                                        ; $67d7: $fd
    ret c                                         ; $67d8: $d8

    halt                                          ; $67d9: $76
    nop                                           ; $67da: $00
    scf                                           ; $67db: $37
    ret c                                         ; $67dc: $d8

    rst $38                                       ; $67dd: $ff
    ret z                                         ; $67de: $c8

    or e                                          ; $67df: $b3
    ld d, d                                       ; $67e0: $52
    ld h, e                                       ; $67e1: $63
    ld [hl], b                                    ; $67e2: $70
    ld b, e                                       ; $67e3: $43
    dec de                                        ; $67e4: $1b
    sbc c                                         ; $67e5: $99
    inc c                                         ; $67e6: $0c
    reti                                          ; $67e7: $d9


    ld c, a                                       ; $67e8: $4f
    ld b, e                                       ; $67e9: $43
    xor $d3                                       ; $67ea: $ee $d3
    dec de                                        ; $67ec: $1b
    or [hl]                                       ; $67ed: $b6
    push af                                       ; $67ee: $f5
    ld a, [hl+]                                   ; $67ef: $2a
    ld c, [hl]                                    ; $67f0: $4e
    or [hl]                                       ; $67f1: $b6
    cp h                                          ; $67f2: $bc
    and b                                         ; $67f3: $a0
    call c, Call_06b_6559                         ; $67f4: $dc $59 $65
    sbc c                                         ; $67f7: $99
    push hl                                       ; $67f8: $e5
    db $e4                                        ; $67f9: $e4
    ld l, b                                       ; $67fa: $68
    ld l, b                                       ; $67fb: $68
    ld b, [hl]                                    ; $67fc: $46
    sbc c                                         ; $67fd: $99
    and e                                         ; $67fe: $a3
    pop bc                                        ; $67ff: $c1
    and e                                         ; $6800: $a3
    ld e, $0d                                     ; $6801: $1e $0d
    ld [hl], $a2                                  ; $6803: $36 $a2
    ld a, [hl]                                    ; $6805: $7e
    or h                                          ; $6806: $b4
    ld [hl], d                                    ; $6807: $72
    ld b, h                                       ; $6808: $44
    ld b, [hl]                                    ; $6809: $46
    db $dd                                        ; $680a: $dd
    ld c, $1f                                     ; $680b: $0e $1f
    rst $30                                       ; $680d: $f7
    add [hl]                                      ; $680e: $86
    ld l, l                                       ; $680f: $6d
    cp l                                          ; $6810: $bd
    adc d                                         ; $6811: $8a
    sub e                                         ; $6812: $93
    dec l                                         ; $6813: $2d
    rst $18                                       ; $6814: $df
    add hl, hl                                    ; $6815: $29
    ld c, [hl]                                    ; $6816: $4e
    add hl, bc                                    ; $6817: $09
    and $51                                       ; $6818: $e6 $51
    ccf                                           ; $681a: $3f
    sbc l                                         ; $681b: $9d
    inc d                                         ; $681c: $14

jr_06b_681d:
    ld l, l                                       ; $681d: $6d
    cp d                                          ; $681e: $ba
    jp $fd4f                                      ; $681f: $c3 $4f $fd


    sub h                                         ; $6822: $94
    ld a, [hl]                                    ; $6823: $7e
    adc c                                         ; $6824: $89
    xor $96                                       ; $6825: $ee $96
    ld l, e                                       ; $6827: $6b
    or [hl]                                       ; $6828: $b6
    inc bc                                        ; $6829: $03
    rra                                           ; $682a: $1f
    rst $30                                       ; $682b: $f7
    add [hl]                                      ; $682c: $86
    ld l, l                                       ; $682d: $6d
    cp l                                          ; $682e: $bd
    adc d                                         ; $682f: $8a
    sub e                                         ; $6830: $93
    dec l                                         ; $6831: $2d
    ld e, a                                       ; $6832: $5f
    halt                                          ; $6833: $76
    ld a, d                                       ; $6834: $7a
    jp $beb6                                      ; $6835: $c3 $b6 $be


    ld l, e                                       ; $6838: $6b
    ld [hl], b                                    ; $6839: $70
    pop hl                                        ; $683a: $e1
    sub h                                         ; $683b: $94
    ld a, [de]                                    ; $683c: $1a
    pop af                                        ; $683d: $f1
    add a                                         ; $683e: $87
    dec hl                                        ; $683f: $2b
    dec [hl]                                      ; $6840: $35
    and h                                         ; $6841: $a4
    ld hl, $69fb                                  ; $6842: $21 $fb $69
    jr c, jr_06b_681d                             ; $6845: $38 $d6

    rst $38                                       ; $6847: $ff
    ret z                                         ; $6848: $c8

    or e                                          ; $6849: $b3
    db $ed                                        ; $684a: $ed
    nop                                           ; $684b: $00
    rra                                           ; $684c: $1f
    rst $28                                       ; $684d: $ef
    pop bc                                        ; $684e: $c1
    add d                                         ; $684f: $82
    ld e, [hl]                                    ; $6850: $5e
    add l                                         ; $6851: $85
    reti                                          ; $6852: $d9


    ld c, a                                       ; $6853: $4f
    sub a                                         ; $6854: $97
    ld c, $6f                                     ; $6855: $0e $6f
    adc l                                         ; $6857: $8d
    xor e                                         ; $6858: $ab
    ld e, a                                       ; $6859: $5f
    db $10                                        ; $685a: $10
    db $f4                                        ; $685b: $f4
    add [hl]                                      ; $685c: $86
    ld l, l                                       ; $685d: $6d
    cp l                                          ; $685e: $bd

jr_06b_685f:
    ld a, $31                                     ; $685f: $3e $31
    jp nc, $f6b6                                  ; $6861: $d2 $b6 $f6

    ld a, [de]                                    ; $6864: $1a
    ld d, e                                       ; $6865: $53
    di                                            ; $6866: $f3
    jr c, jr_06b_685f                             ; $6867: $38 $f6

    ld b, d                                       ; $6869: $42
    rst $18                                       ; $686a: $df
    dec [hl]                                      ; $686b: $35
    cp b                                          ; $686c: $b8
    ld [hl], b                                    ; $686d: $70
    or [hl]                                       ; $686e: $b6
    inc bc                                        ; $686f: $03
    rra                                           ; $6870: $1f
    db $dd                                        ; $6871: $dd
    and e                                         ; $6872: $a3
    dec a                                         ; $6873: $3d
    adc l                                         ; $6874: $8d
    ld b, [hl]                                    ; $6875: $46
    ret c                                         ; $6876: $d8

    db $dd                                        ; $6877: $dd
    ld [hl], b                                    ; $6878: $70
    and e                                         ; $6879: $a3
    push af                                       ; $687a: $f5
    db $ec                                        ; $687b: $ec
    sbc a                                         ; $687c: $9f
    sub $a9                                       ; $687d: $d6 $a9
    inc e                                         ; $687f: $1c
    sub c                                         ; $6880: $91
    or c                                          ; $6881: $b1
    sbc [hl]                                      ; $6882: $9e
    cp l                                          ; $6883: $bd
    ld a, [bc]                                    ; $6884: $0a
    or e                                          ; $6885: $b3
    sbc a                                         ; $6886: $9f
    or [hl]                                       ; $6887: $b6
    inc bc                                        ; $6888: $03
    rra                                           ; $6889: $1f
    ld d, a                                       ; $688a: $57
    sbc c                                         ; $688b: $99
    push bc                                       ; $688c: $c5
    ld h, e                                       ; $688d: $63
    adc l                                         ; $688e: $8d
    ld [hl], h                                    ; $688f: $74
    ld b, l                                       ; $6890: $45
    and l                                         ; $6891: $a5
    jr jr_06b_6913                                ; $6892: $18 $7f

    cp [hl]                                       ; $6894: $be

jr_06b_6895:
    ld [hl], c                                    ; $6895: $71
    nop                                           ; $6896: $00
    sub a                                         ; $6897: $97
    inc bc                                        ; $6898: $03
    ld l, c                                       ; $6899: $69
    sub l                                         ; $689a: $95
    ld a, [de]                                    ; $689b: $1a
    add e                                         ; $689c: $83
    or a                                          ; $689d: $b7
    sbc [hl]                                      ; $689e: $9e
    scf                                           ; $689f: $37
    rst $38                                       ; $68a0: $ff
    ld c, [hl]                                    ; $68a1: $4e
    sub l                                         ; $68a2: $95
    and l                                         ; $68a3: $a5
    ld b, $12                                     ; $68a4: $06 $12
    cpl                                           ; $68a6: $2f
    and d                                         ; $68a7: $a2
    ld a, [hl]                                    ; $68a8: $7e
    ld a, d                                       ; $68a9: $7a
    ld [hl], e                                    ; $68aa: $73
    db $e4                                        ; $68ab: $e4
    reti                                          ; $68ac: $d9


    inc de                                        ; $68ad: $13
    scf                                           ; $68ae: $37
    jr nz, jr_06b_6895                            ; $68af: $20 $e4

    inc de                                        ; $68b1: $13
    rra                                           ; $68b2: $1f
    ccf                                           ; $68b3: $3f
    pop af                                        ; $68b4: $f1
    ld c, c                                       ; $68b5: $49
    ld a, [hl-]                                   ; $68b6: $3a
    xor e                                         ; $68b7: $ab
    adc [hl]                                      ; $68b8: $8e
    ret nc                                        ; $68b9: $d0

    ret c                                         ; $68ba: $d8

    ld l, c                                       ; $68bb: $69
    jr nz, jr_06b_691f                            ; $68bc: $20 $61

    xor a                                         ; $68be: $af
    sbc h                                         ; $68bf: $9c
    db $fc                                        ; $68c0: $fc
    and a                                         ; $68c1: $a7
    add hl, hl                                    ; $68c2: $29
    call c, $9168                                 ; $68c3: $dc $68 $91
    inc hl                                        ; $68c6: $23
    ld [hl], l                                    ; $68c7: $75
    dec sp                                        ; $68c8: $3b
    nop                                           ; $68c9: $00
    rst $10                                       ; $68ca: $d7
    ld h, c                                       ; $68cb: $61
    sub h                                         ; $68cc: $94
    inc l                                         ; $68cd: $2c
    dec [hl]                                      ; $68ce: $35
    jp nz, $931a                                  ; $68cf: $c2 $1a $93

    sbc a                                         ; $68d2: $9f

Call_06b_68d3:
    jp nc, $cc75                                  ; $68d3: $d2 $75 $cc

    db $d3                                        ; $68d6: $d3
    ld l, l                                       ; $68d7: $6d
    cp l                                          ; $68d8: $bd
    ld a, $56                                     ; $68d9: $3e $56
    ld de, $63fe                                  ; $68db: $11 $fe $63
    add d                                         ; $68de: $82
    ld [$c13a], a                                 ; $68df: $ea $3a $c1
    dec a                                         ; $68e2: $3d
    pop hl                                        ; $68e3: $e1
    cp b                                          ; $68e4: $b8
    dec e                                         ; $68e5: $1d
    rst $28                                       ; $68e6: $ef
    xor h                                         ; $68e7: $ac
    ld b, b                                       ; $68e8: $40
    and d                                         ; $68e9: $a2
    db $eb                                        ; $68ea: $eb
    rst $30                                       ; $68eb: $f7
    add hl, hl                                    ; $68ec: $29
    rst $00                                       ; $68ed: $c7
    ld d, c                                       ; $68ee: $51
    ld b, c                                       ; $68ef: $41
    jp $8ab1                                      ; $68f0: $c3 $b1 $8a


    ldh a, [$1f]                                  ; $68f3: $f0 $1f
    db $db                                        ; $68f5: $db
    ld c, $37                                     ; $68f6: $0e $37
    pop hl                                        ; $68f8: $e1
    ld b, [hl]                                    ; $68f9: $46
    dec b                                         ; $68fa: $05
    cp l                                          ; $68fb: $bd
    ld a, [bc]                                    ; $68fc: $0a
    or e                                          ; $68fd: $b3
    sbc a                                         ; $68fe: $9f
    or [hl]                                       ; $68ff: $b6
    inc bc                                        ; $6900: $03
    ld d, a                                       ; $6901: $57
    ld [hl], c                                    ; $6902: $71
    or d                                          ; $6903: $b2
    push hl                                       ; $6904: $e5
    cpl                                           ; $6905: $2f
    or l                                          ; $6906: $b5
    rst $20                                       ; $6907: $e7
    ld a, [de]                                    ; $6908: $1a
    jp nc, $70d8                                  ; $6909: $d2 $d8 $70

    xor h                                         ; $690c: $ac
    ld l, [hl]                                    ; $690d: $6e
    cp c                                          ; $690e: $b9
    ld c, e                                       ; $690f: $4b
    rlca                                          ; $6910: $07
    ld l, a                                       ; $6911: $6f
    ld d, e                                       ; $6912: $53

jr_06b_6913:
    ld h, l                                       ; $6913: $65
    jp c, Jump_06b_6e43                           ; $6914: $da $43 $6e

    db $ed                                        ; $6917: $ed
    cp c                                          ; $6918: $b9
    ld b, [hl]                                    ; $6919: $46
    ld d, [hl]                                    ; $691a: $56
    ld h, d                                       ; $691b: $62
    db $dd                                        ; $691c: $dd
    ld b, d                                       ; $691d: $42
    xor c                                         ; $691e: $a9

jr_06b_691f:
    ld sp, $22b8                                  ; $691f: $31 $b8 $22
    ld c, d                                       ; $6922: $4a
    ld sp, $6cfc                                  ; $6923: $31 $fc $6c
    rlca                                          ; $6926: $07
    ld l, a                                       ; $6927: $6f
    ld d, e                                       ; $6928: $53
    ld h, l                                       ; $6929: $65
    jp c, Jump_000_0a43                           ; $692a: $da $43 $0a

    jp z, $bd54                                   ; $692d: $ca $54 $bd

    and a                                         ; $6930: $a7
    sub b                                         ; $6931: $90
    ld e, h                                       ; $6932: $5c
    ld [hl], c                                    ; $6933: $71
    ld a, [de]                                    ; $6934: $1a
    ld [c], a                                     ; $6935: $e2
    inc b                                         ; $6936: $04
    rst $00                                       ; $6937: $c7
    inc e                                         ; $6938: $1c
    ld b, a                                       ; $6939: $47
    db $eb                                        ; $693a: $eb
    ld e, c                                       ; $693b: $59
    cp d                                          ; $693c: $ba
    ret nc                                        ; $693d: $d0

    ld l, $68                                     ; $693e: $2e $68
    ld e, h                                       ; $6940: $5c
    ld l, [hl]                                    ; $6941: $6e
    or h                                          ; $6942: $b4
    sbc c                                         ; $6943: $99
    ld a, [de]                                    ; $6944: $1a
    ld e, c                                       ; $6945: $59
    adc c                                         ; $6946: $89
    ld [hl], l                                    ; $6947: $75
    dec bc                                        ; $6948: $0b
    db $db                                        ; $6949: $db
    ld bc, $3f2f                                  ; $694a: $01 $2f $3f
    daa                                           ; $694d: $27
    add sp, -$35                                  ; $694e: $e8 $cb
    rst $08                                       ; $6950: $cf
    dec bc                                        ; $6951: $0b
    ld a, [$0bf2]                                 ; $6952: $fa $f2 $0b
    db $dd                                        ; $6955: $dd
    or [hl]                                       ; $6956: $b6
    xor l                                         ; $6957: $ad
    ld c, h                                       ; $6958: $4c
    ld e, l                                       ; $6959: $5d
    add $55                                       ; $695a: $c6 $55
    ld b, h                                       ; $695c: $44
    ld h, [hl]                                    ; $695d: $66
    ld a, a                                       ; $695e: $7f
    or $c4                                        ; $695f: $f6 $c4
    ld a, $85                                     ; $6961: $3e $85
    ld [$0d72], a                                 ; $6963: $ea $72 $0d
    inc h                                         ; $6966: $24
    ld [hl], $d2                                  ; $6967: $36 $d2
    call c, $b0ca                                 ; $6969: $dc $ca $b0
    ld a, d                                       ; $696c: $7a
    ld d, [hl]                                    ; $696d: $56
    ld c, [hl]                                    ; $696e: $4e
    adc [hl]                                      ; $696f: $8e
    or b                                          ; $6970: $b0
    ld d, d                                       ; $6971: $52
    inc hl                                        ; $6972: $23
    or l                                          ; $6973: $b5
    ld l, [hl]                                    ; $6974: $6e
    db $ed                                        ; $6975: $ed
    ld h, d                                       ; $6976: $62
    jr @-$49                                      ; $6977: $18 $b5

    sbc [hl]                                      ; $6979: $9e
    or l                                          ; $697a: $b5
    inc h                                         ; $697b: $24
    ld e, h                                       ; $697c: $5c
    jp c, $db6d                                   ; $697d: $da $6d $db

    ld a, [$8bf2]                                 ; $6980: $fa $f2 $8b
    add d                                         ; $6983: $82
    cp [hl]                                       ; $6984: $be
    db $fc                                        ; $6985: $fc
    sub d                                         ; $6986: $92
    and b                                         ; $6987: $a0
    cpl                                           ; $6988: $2f
    cp a                                          ; $6989: $bf
    call c, $db6d                                 ; $698a: $dc $6d $db
    ld c, $37                                     ; $698d: $0e $37
    ld b, a                                       ; $698f: $47
    sbc [hl]                                      ; $6990: $9e
    push de                                       ; $6991: $d5
    or c                                          ; $6992: $b1
    ld [hl+], a                                   ; $6993: $22
    sbc $6e                                       ; $6994: $de $6e
    ld c, b                                       ; $6996: $48
    di                                            ; $6997: $f3
    or h                                          ; $6998: $b4
    and d                                         ; $6999: $a2
    ld [hl], d                                    ; $699a: $72
    ld [hl], d                                    ; $699b: $72
    call nz, $f6a5                                ; $699c: $c4 $a5 $f6
    ld a, [$4558]                                 ; $699f: $fa $58 $45
    ld hl, sp-$71                                 ; $69a2: $f8 $8f
    add hl, bc                                    ; $69a4: $09
    sbc d                                         ; $69a5: $9a
    ld a, a                                       ; $69a6: $7f
    and a                                         ; $69a7: $a7
    rst $38                                       ; $69a8: $ff
    reti                                          ; $69a9: $d9


    inc hl                                        ; $69aa: $23
    adc e                                         ; $69ab: $8b
    ld b, b                                       ; $69ac: $40
    ld e, d                                       ; $69ad: $5a
    ld b, l                                       ; $69ae: $45
    cp h                                          ; $69af: $bc
    ret nc                                        ; $69b0: $d0

    ld b, b                                       ; $69b1: $40
    ld h, d                                       ; $69b2: $62
    sbc c                                         ; $69b3: $99
    ld a, [de]                                    ; $69b4: $1a
    sbc c                                         ; $69b5: $99
    push bc                                       ; $69b6: $c5
    ld l, b                                       ; $69b7: $68
    and h                                         ; $69b8: $a4
    cp c                                          ; $69b9: $b9
    sub l                                         ; $69ba: $95
    pop hl                                        ; $69bb: $e1
    ld h, a                                       ; $69bc: $67
    dec sp                                        ; $69bd: $3b
    nop                                           ; $69be: $00
    ld l, a                                       ; $69bf: $6f
    ld d, e                                       ; $69c0: $53
    ld h, l                                       ; $69c1: $65
    jp c, Jump_000_0a43                           ; $69c2: $da $43 $0a

    jp z, Jump_06b_6a54                           ; $69c5: $ca $54 $6a

    sbc h                                         ; $69c8: $9c
    call nc, $1c9c                                ; $69c9: $d4 $9c $1c
    ld a, [de]                                    ; $69cc: $1a
    ld [hl+], a                                   ; $69cd: $22
    add hl, hl                                    ; $69ce: $29
    ld a, [de]                                    ; $69cf: $1a
    jp nz, $a9d0                                  ; $69d0: $c2 $d0 $a9

    inc d                                         ; $69d3: $14
    rlca                                          ; $69d4: $07
    ld l, a                                       ; $69d5: $6f
    rlca                                          ; $69d6: $07
    rra                                           ; $69d7: $1f
    db $fd                                        ; $69d8: $fd
    ld c, [hl]                                    ; $69d9: $4e
    jp $9d51                                      ; $69da: $c3 $51 $9d


    jp z, $7fc9                                   ; $69dd: $ca $c9 $7f

    sbc d                                         ; $69e0: $9a
    jp nz, $a79a                                  ; $69e1: $c2 $9a $a7

    ld l, [hl]                                    ; $69e4: $6e
    inc e                                         ; $69e5: $1c
    ld [hl], e                                    ; $69e6: $73
    inc e                                         ; $69e7: $1c
    ld b, c                                       ; $69e8: $41

Call_06b_69e9:
    xor c                                         ; $69e9: $a9
    ld [hl], c                                    ; $69ea: $71
    ld d, d                                       ; $69eb: $52
    xor c                                         ; $69ec: $a9
    ld hl, $d90d                                  ; $69ed: $21 $0d $d9
    ld c, a                                       ; $69f0: $4f
    jp Jump_000_26b1                              ; $69f1: $c3 $b1 $26


    add a                                         ; $69f4: $87
    jp z, $f4b1                                   ; $69f5: $ca $b1 $f4

    dec a                                         ; $69f8: $3d
    sbc d                                         ; $69f9: $9a
    db $ec                                        ; $69fa: $ec
    call nz, $b91c                                ; $69fb: $c4 $1c $b9
    dec e                                         ; $69fe: $1d
    rst $10                                       ; $69ff: $d7
    rst $00                                       ; $6a00: $c7
    ld [bc], a                                    ; $6a01: $02
    adc c                                         ; $6a02: $89
    db $fd                                        ; $6a03: $fd
    adc a                                         ; $6a04: $8f
    inc a                                         ; $6a05: $3c
    dec hl                                        ; $6a06: $2b
    dec [hl]                                      ; $6a07: $35
    ld b, $17                                     ; $6a08: $06 $17
    reti                                          ; $6a0a: $d9


    inc hl                                        ; $6a0b: $23
    ei                                            ; $6a0c: $fb
    ld l, c                                       ; $6a0d: $69
    jr c, jr_06b_6a66                             ; $6a0e: $38 $56

    call c, $9d5d                                 ; $6a10: $dc $5d $9d
    db $db                                        ; $6a13: $db
    dec hl                                        ; $6a14: $2b
    adc e                                         ; $6a15: $8b
    rst $20                                       ; $6a16: $e7
    adc l                                         ; $6a17: $8d
    cp [hl]                                       ; $6a18: $be
    and a                                         ; $6a19: $a7
    ld a, [hl-]                                   ; $6a1a: $3a
    call $d3bf                                    ; $6a1b: $cd $bf $d3
    dec bc                                        ; $6a1e: $0b
    ld d, l                                       ; $6a1f: $55
    sbc [hl]                                      ; $6a20: $9e
    sub d                                         ; $6a21: $92
    call Call_000_0076                            ; $6a22: $cd $76 $00
    rst $20                                       ; $6a25: $e7
    xor c                                         ; $6a26: $a9
    ld hl, $72b3                                  ; $6a27: $21 $b3 $72
    dec [hl]                                      ; $6a2a: $35
    sub b                                         ; $6a2b: $90
    ret c                                         ; $6a2c: $d8

    ld [hl], a                                    ; $6a2d: $77
    dec c                                         ; $6a2e: $0d
    ld l, $9c                                     ; $6a2f: $2e $9c

Jump_06b_6a31:
    ld d, d                                       ; $6a31: $52
    inc hl                                        ; $6a32: $23
    cp $28                                        ; $6a33: $fe $28
    ld [hl+], a                                   ; $6a35: $22
    or e                                          ; $6a36: $b3
    ld h, a                                       ; $6a37: $67
    or $d3                                        ; $6a38: $f6 $d3
    xor c                                         ; $6a3a: $a9
    ld [hl-], a                                   ; $6a3b: $32
    adc e                                         ; $6a3c: $8b
    rst $00                                       ; $6a3d: $c7
    or [hl]                                       ; $6a3e: $b6
    sbc $48                                       ; $6a3f: $de $48
    and a                                         ; $6a41: $a7
    ld h, l                                       ; $6a42: $65
    db $d3                                        ; $6a43: $d3
    ld b, b                                       ; $6a44: $40
    ld h, d                                       ; $6a45: $62
    and a                                         ; $6a46: $a7
    call z, Call_06b_7272                         ; $6a47: $cc $72 $72
    inc [hl]                                      ; $6a4a: $34
    ld l, [hl]                                    ; $6a4b: $6e
    rlca                                          ; $6a4c: $07
    sub a                                         ; $6a4d: $97
    rst $28                                       ; $6a4e: $ef
    ld l, $35                                     ; $6a4f: $2e $35
    ld b, $f7                                     ; $6a51: $06 $f7
    ccf                                           ; $6a53: $3f

Jump_06b_6a54:
    ld a, [c]                                     ; $6a54: $f2
    ld l, h                                       ; $6a55: $6c
    db $eb                                        ; $6a56: $eb
    dec c                                         ; $6a57: $0d

jr_06b_6a58:
    ld [$e829], sp                                ; $6a58: $08 $29 $e8
    ld a, a                                       ; $6a5b: $7f
    db $e4                                        ; $6a5c: $e4
    ld e, c                                       ; $6a5d: $59
    di                                            ; $6a5e: $f3
    rst $28                                       ; $6a5f: $ef
    call nc, $bff3                                ; $6a60: $d4 $f3 $bf
    ret nc                                        ; $6a63: $d0

    ld c, b                                       ; $6a64: $48
    xor e                                         ; $6a65: $ab

jr_06b_6a66:
    ld l, b                                       ; $6a66: $68
    ld c, c                                       ; $6a67: $49
    ld hl, sp-$17                                 ; $6a68: $f8 $e9
    ld l, l                                       ; $6a6a: $6d
    db $e4                                        ; $6a6b: $e4
    db $db                                        ; $6a6c: $db
    ret z                                         ; $6a6d: $c8

    ld a, [hl]                                    ; $6a6e: $7e
    ld [$caa9], a                                 ; $6a6f: $ea $a9 $ca
    ld a, [hl]                                    ; $6a72: $7e
    rst $08                                       ; $6a73: $cf
    dec d                                         ; $6a74: $15
    and a                                         ; $6a75: $a7
    ld a, e                                       ; $6a76: $7b
    ld [hl], b                                    ; $6a77: $70
    ld de, $582d                                  ; $6a78: $11 $2d $58
    or a                                          ; $6a7b: $b7
    inc bc                                        ; $6a7c: $03
    rst $20                                       ; $6a7d: $e7
    xor c                                         ; $6a7e: $a9
    and c                                         ; $6a7f: $a1
    adc l                                         ; $6a80: $8d
    ld c, h                                       ; $6a81: $4c
    add $d5                                       ; $6a82: $c6 $d5
    ld [hl], b                                    ; $6a84: $70
    xor h                                         ; $6a85: $ac
    rst $38                                       ; $6a86: $ff
    sub c                                         ; $6a87: $91
    ld h, a                                       ; $6a88: $67
    and l                                         ; $6a89: $a5
    ld l, e                                       ; $6a8a: $6b
    inc e                                         ; $6a8b: $1c
    adc a                                         ; $6a8c: $8f
    and d                                         ; $6a8d: $a2
    ld hl, $f22c                                  ; $6a8e: $21 $2c $f2
    jp nc, $d701                                  ; $6a91: $d2 $01 $d7

    and b                                         ; $6a94: $a0
    ld h, l                                       ; $6a95: $65
    ld l, d                                       ; $6a96: $6a
    cp $9d                                        ; $6a97: $fe $9d
    adc d                                         ; $6a99: $8a
    jp nc, $9dea                                  ; $6a9a: $d2 $ea $9d

    db $dd                                        ; $6a9d: $dd
    db $d3                                        ; $6a9e: $d3
    add hl, bc                                    ; $6a9f: $09

jr_06b_6aa0:
    ld d, [hl]                                    ; $6aa0: $56
    db $ec                                        ; $6aa1: $ec
    and a                                         ; $6aa2: $a7
    db $e4                                        ; $6aa3: $e4
    or [hl]                                       ; $6aa4: $b6
    sbc [hl]                                      ; $6aa5: $9e
    and a                                         ; $6aa6: $a7
    ld d, d                                       ; $6aa7: $52
    inc hl                                        ; $6aa8: $23
    cp $a8                                        ; $6aa9: $fe $a8
    sub b                                         ; $6aab: $90
    xor [hl]                                      ; $6aac: $ae
    ld [$25a4], sp                                ; $6aad: $08 $a4 $25
    jr z, jr_06b_6a58                             ; $6ab0: $28 $a6

    dec sp                                        ; $6ab2: $3b
    db $fc                                        ; $6ab3: $fc
    call nc, $954f                                ; $6ab4: $d4 $4f $95
    xor c                                         ; $6ab7: $a9
    ld [hl], d                                    ; $6ab8: $72
    ld b, h                                       ; $6ab9: $44
    add $6e                                       ; $6aba: $c6 $6e
    db $db                                        ; $6abc: $db
    halt                                          ; $6abd: $76
    nop                                           ; $6abe: $00
    rst $28                                       ; $6abf: $ef
    ld l, c                                       ; $6ac0: $69
    sbc h                                         ; $6ac1: $9c
    ld l, [hl]                                    ; $6ac2: $6e
    db $db                                        ; $6ac3: $db
    sub $a5                                       ; $6ac4: $d6 $a5
    ld [hl], c                                    ; $6ac6: $71
    ld a, d                                       ; $6ac7: $7a
    and c                                         ; $6ac8: $a1
    ld sp, $a9f9                                  ; $6ac9: $31 $f9 $a9
    ld h, e                                       ; $6acc: $63
    ld a, d                                       ; $6acd: $7a
    db $e3                                        ; $6ace: $e3
    nop                                           ; $6acf: $00
    scf                                           ; $6ad0: $37
    sub [hl]                                      ; $6ad1: $96
    db $db                                        ; $6ad2: $db
    ld a, d                                       ; $6ad3: $7a
    dec c                                         ; $6ad4: $0d
    jp c, $8f7c                                   ; $6ad5: $da $7c $8f

    halt                                          ; $6ad8: $76
    add hl, de                                    ; $6ad9: $19
    db $dd                                        ; $6ada: $dd
    ld l, b                                       ; $6adb: $68
    ld b, e                                       ; $6adc: $43
    sbc [hl]                                      ; $6add: $9e
    ld h, b                                       ; $6ade: $60
    ld b, l                                       ; $6adf: $45
    ret z                                         ; $6ae0: $c8

    inc c                                         ; $6ae1: $0c
    dec l                                         ; $6ae2: $2d
    or $53                                        ; $6ae3: $f6 $53
    jp z, Jump_06b_5d5a                           ; $6ae5: $ca $5a $5d

    ld [hl], d                                    ; $6ae8: $72
    and a                                         ; $6ae9: $a7
    sub $b3                                       ; $6aea: $d6 $b3
    and c                                         ; $6aec: $a1
    ld hl, $dba2                                  ; $6aed: $21 $a2 $db
    or [hl]                                       ; $6af0: $b6
    ld [hl], l                                    ; $6af1: $75
    ld l, c                                       ; $6af2: $69
    sbc h                                         ; $6af3: $9c
    ld e, [hl]                                    ; $6af4: $5e
    xor b                                         ; $6af5: $a8
    ld e, a                                       ; $6af6: $5f
    ld e, c                                       ; $6af7: $59
    call z, $5365                                 ; $6af8: $cc $65 $53
    rst $08                                       ; $6afb: $cf
    ld a, [hl-]                                   ; $6afc: $3a
    sbc h                                         ; $6afd: $9c
    ld b, [hl]                                    ; $6afe: $46
    cp e                                          ; $6aff: $bb
    ld l, l                                       ; $6b00: $6d
    ld e, e                                       ; $6b01: $5b
    and a                                         ; $6b02: $a7
    sbc d                                         ; $6b03: $9a
    ld b, h                                       ; $6b04: $44
    ld c, e                                       ; $6b05: $4b
    ld l, $e6                                     ; $6b06: $2e $e6
    ret z                                         ; $6b08: $c8

    add [hl]                                      ; $6b09: $86
    jr nc, jr_06b_6aa0                            ; $6b0a: $30 $94

    add c                                         ; $6b0c: $81
    or h                                          ; $6b0d: $b4
    jp nz, $27e0                                  ; $6b0e: $c2 $e0 $27

    or $69                                        ; $6b11: $f6 $69
    ld [$5143], sp                                ; $6b13: $08 $43 $51
    xor d                                         ; $6b16: $aa
    sbc h                                         ; $6b17: $9c
    dec e                                         ; $6b18: $1d
    db $db                                        ; $6b19: $db
    ld bc, $f36f                                  ; $6b1a: $01 $6f $f3
    ld c, a                                       ; $6b1d: $4f
    scf                                           ; $6b1e: $37
    jp c, Jump_000_0d65                           ; $6b1f: $da $65 $0d

    ld h, c                                       ; $6b22: $61
    add sp, $34                                   ; $6b23: $e8 $34
    or h                                          ; $6b25: $b4
    ld a, e                                       ; $6b26: $7b
    ld l, [hl]                                    ; $6b27: $6e
    dec l                                         ; $6b28: $2d
    scf                                           ; $6b29: $37
    sub l                                         ; $6b2a: $95
    inc hl                                        ; $6b2b: $23
    ld [hl-], a                                   ; $6b2c: $32
    ld d, $a7                                     ; $6b2d: $16 $a7
    ld sp, $aa08                                  ; $6b2f: $31 $08 $aa
    call z, $b1e2                                 ; $6b32: $cc $e2 $b1
    scf                                           ; $6b35: $37
    ld c, $37                                     ; $6b36: $0e $37
    sub [hl]                                      ; $6b38: $96
    inc de                                        ; $6b39: $13
    call nc, Call_06b_4ff3                        ; $6b3a: $d4 $f3 $4f
    scf                                           ; $6b3d: $37
    jp c, Jump_06b_5a3c                           ; $6b3e: $da $3c $5a

    add h                                         ; $6b41: $84
    ld b, [hl]                                    ; $6b42: $46
    ld d, l                                       ; $6b43: $55

jr_06b_6b44:
    ret c                                         ; $6b44: $d8

    sub $ab                                       ; $6b45: $d6 $ab
    jr nc, jr_06b_6b44                            ; $6b47: $30 $fb

    ld c, c                                       ; $6b49: $49
    ld d, b                                       ; $6b4a: $50
    inc b                                         ; $6b4b: $04
    jp nc, Jump_000_352a                          ; $6b4c: $d2 $2a $35

    ld b, $57                                     ; $6b4f: $06 $57
    sbc c                                         ; $6b51: $99
    ld [$1657], a                                 ; $6b52: $ea $57 $16
    ld [hl], e                                    ; $6b55: $73
    reti                                          ; $6b56: $d9


    sub h                                         ; $6b57: $94
    ld b, l                                       ; $6b58: $45
    rst $30                                       ; $6b59: $f7
    and l                                         ; $6b5a: $a5
    ld de, $d3f5                                  ; $6b5b: $11 $f5 $d3
    ld b, b                                       ; $6b5e: $40
    ld h, d                                       ; $6b5f: $62
    rst $38                                       ; $6b60: $ff
    inc hl                                        ; $6b61: $23
    rst $08                                       ; $6b62: $cf
    ld a, [de]                                    ; $6b63: $1a
    ld a, [de]                                    ; $6b64: $1a
    push hl                                       ; $6b65: $e5
    ld d, d                                       ; $6b66: $52
    ld l, h                                       ; $6b67: $6c
    cp l                                          ; $6b68: $bd
    ld [hl-], a                                   ; $6b69: $32
    ld l, $34                                     ; $6b6a: $2e $34
    ld [hl], $26                                  ; $6b6c: $36 $26
    ccf                                           ; $6b6e: $3f
    sbc l                                         ; $6b6f: $9d
    ld b, $12                                     ; $6b70: $06 $12
    ld c, e                                       ; $6b72: $4b
    adc l                                         ; $6b73: $8d
    db $eb                                        ; $6b74: $eb
    ld c, a                                       ; $6b75: $4f
    ld l, e                                       ; $6b76: $6b
    ld b, [hl]                                    ; $6b77: $46
    rst $30                                       ; $6b78: $f7
    and l                                         ; $6b79: $a5
    ld de, $cf5b                                  ; $6b7a: $11 $5b $cf
    ld d, e                                       ; $6b7d: $53
    rst $38                                       ; $6b7e: $ff
    sub e                                         ; $6b7f: $93
    ld a, [de]                                    ; $6b80: $1a
    ld a, [c]                                     ; $6b81: $f2
    inc b                                         ; $6b82: $04
    db $eb                                        ; $6b83: $eb
    db $f4                                        ; $6b84: $f4
    and $c8                                       ; $6b85: $e6 $c8
    or e                                          ; $6b87: $b3
    daa                                           ; $6b88: $27
    ld l, [hl]                                    ; $6b89: $6e
    ld b, b                                       ; $6b8a: $40
    ret z                                         ; $6b8b: $c8

    daa                                           ; $6b8c: $27
    ld a, $7e                                     ; $6b8d: $3e $7e
    ld [c], a                                     ; $6b8f: $e2
    sub e                                         ; $6b90: $93
    ld [hl], h                                    ; $6b91: $74
    ld h, $28                                     ; $6b92: $26 $28
    sbc e                                         ; $6b94: $9b
    ld b, a                                       ; $6b95: $47
    sra h                                         ; $6b96: $cb $2c
    daa                                           ; $6b98: $27
    ld b, a                                       ; $6b99: $47
    add e                                         ; $6b9a: $83
    pop de                                        ; $6b9b: $d1
    adc l                                         ; $6b9c: $8d
    sub [hl]                                      ; $6b9d: $96
    xor [hl]                                      ; $6b9e: $ae
    ld [hl+], a                                   ; $6b9f: $22
    ld h, e                                       ; $6ba0: $63
    adc [hl]                                      ; $6ba1: $8e
    inc l                                         ; $6ba2: $2c
    ld a, [$adae]                                 ; $6ba3: $fa $ae $ad
    ld a, h                                       ; $6ba6: $7c
    sbc d                                         ; $6ba7: $9a
    ld c, b                                       ; $6ba8: $48
    db $dd                                        ; $6ba9: $dd
    ld c, $1f                                     ; $6baa: $0e $1f
    scf                                           ; $6bac: $37
    sub b                                         ; $6bad: $90
    ret c                                         ; $6bae: $d8

    dec bc                                        ; $6baf: $0b
    sbc l                                         ; $6bb0: $9d
    sbc $1c                                       ; $6bb1: $de $1c
    ld a, c                                       ; $6bb3: $79
    or $c4                                        ; $6bb4: $f6 $c4
    dec c                                         ; $6bb6: $0d
    ld [$c4f9], sp                                ; $6bb7: $08 $f9 $c4
    rst $00                                       ; $6bba: $c7
    ld c, a                                       ; $6bbb: $4f
    ld a, h                                       ; $6bbc: $7c
    sub d                                         ; $6bbd: $92
    adc $de                                       ; $6bbe: $ce $de
    jr c, jr_06b_6bc2                             ; $6bc0: $38 $00

jr_06b_6bc2:
    rra                                           ; $6bc2: $1f
    db $fd                                        ; $6bc3: $fd
    ld c, [hl]                                    ; $6bc4: $4e
    jp $9d51                                      ; $6bc5: $c3 $51 $9d


    xor $62                                       ; $6bc8: $ee $62
    ld d, [hl]                                    ; $6bca: $56
    ld c, [hl]                                    ; $6bcb: $4e
    adc [hl]                                      ; $6bcc: $8e
    or b                                          ; $6bcd: $b0
    xor l                                         ; $6bce: $ad
    db $fd                                        ; $6bcf: $fd
    adc b                                         ; $6bd0: $88
    and a                                         ; $6bd1: $a7
    ld a, e                                       ; $6bd2: $7b
    db $e4                                        ; $6bd3: $e4
    ld a, [de]                                    ; $6bd4: $1a
    xor l                                         ; $6bd5: $ad
    ld h, a                                       ; $6bd6: $67
    xor a                                         ; $6bd7: $af
    adc $e9                                       ; $6bd8: $ce $e9
    ld b, a                                       ; $6bda: $47
    ld e, b                                       ; $6bdb: $58
    call nc, $fdad                                ; $6bdc: $d4 $ad $fd
    adc h                                         ; $6bdf: $8c
    db $fd                                        ; $6be0: $fd
    di                                            ; $6be1: $f3
    ei                                            ; $6be2: $fb
    jp hl                                         ; $6be3: $e9


    ld e, $5c                                     ; $6be4: $1e $5c
    pop de                                        ; $6be6: $d1
    jr jr_06b_6bed                                ; $6be7: $18 $04

    cp l                                          ; $6be9: $bd
    ld a, [bc]                                    ; $6bea: $0a
    or e                                          ; $6beb: $b3
    sbc a                                         ; $6bec: $9f

jr_06b_6bed:
    or [hl]                                       ; $6bed: $b6
    inc bc                                        ; $6bee: $03
    rra                                           ; $6bef: $1f
    dec bc                                        ; $6bf0: $0b
    ld l, l                                       ; $6bf1: $6d
    sbc l                                         ; $6bf2: $9d
    ldh [$a7], a                                  ; $6bf3: $e0 $a7
    ld hl, $f477                                  ; $6bf5: $21 $77 $f4
    cp a                                          ; $6bf8: $bf
    ld [hl], h                                    ; $6bf9: $74
    ld b, l                                       ; $6bfa: $45
    ld l, h                                       ; $6bfb: $6c
    rlca                                          ; $6bfc: $07
    scf                                           ; $6bfd: $37
    ld h, a                                       ; $6bfe: $67
    adc a                                         ; $6bff: $8f
    xor h                                         ; $6c00: $ac
    jp nc, $c685                                  ; $6c01: $d2 $85 $c6

    db $ed                                        ; $6c04: $ed
    nop                                           ; $6c05: $00
    sub a                                         ; $6c06: $97
    dec de                                        ; $6c07: $1b
    adc [hl]                                      ; $6c08: $8e
    ld b, l                                       ; $6c09: $45
    db $f4                                        ; $6c0a: $f4
    ld b, d                                       ; $6c0b: $42
    jp Jump_06b_62b1                              ; $6c0c: $c3 $b1 $62


    ld e, a                                       ; $6c0f: $5f
    add d                                         ; $6c10: $82
    ld a, [hl+]                                   ; $6c11: $2a
    or e                                          ; $6c12: $b3

Jump_06b_6c13:
    ld a, b                                       ; $6c13: $78
    ld l, h                                       ; $6c14: $6c
    dec sp                                        ; $6c15: $3b
    nop                                           ; $6c16: $00
    rst $20                                       ; $6c17: $e7
    ld a, [de]                                    ; $6c18: $1a
    add e                                         ; $6c19: $83
    dec de                                        ; $6c1a: $1b
    ld c, b                                       ; $6c1b: $48
    ld d, b                                       ; $6c1c: $50
    ld [hl], $a3                                  ; $6c1d: $36 $a3
    ld [c], a                                     ; $6c1f: $e2
    ld sp, $b3d4                                  ; $6c20: $31 $d4 $b3
    ld [hl+], a                                   ; $6c23: $22
    ld c, d                                       ; $6c24: $4a
    ld sp, $8dcc                                  ; $6c25: $31 $cc $8d
    ld [hl], $84                                  ; $6c28: $36 $84
    and c                                         ; $6c2a: $a1
    ld d, e                                       ; $6c2b: $53
    db $ec                                        ; $6c2c: $ec
    ld l, [hl]                                    ; $6c2d: $6e
    ld l, $8e                                     ; $6c2e: $2e $8e
    and b                                         ; $6c30: $a0
    jp z, $1e2c                                   ; $6c31: $ca $2c $1e

    db $db                                        ; $6c34: $db
    ld a, d                                       ; $6c35: $7a
    ld e, [hl]                                    ; $6c36: $5e
    and [hl]                                      ; $6c37: $a6
    ld c, d                                       ; $6c38: $4a
    db $e3                                        ; $6c39: $e3
    sbc d                                         ; $6c3a: $9a
    ld b, $12                                     ; $6c3b: $06 $12
    ei                                            ; $6c3d: $fb
    rra                                           ; $6c3e: $1f
    ld a, c                                       ; $6c3f: $79
    sub $fc                                       ; $6c40: $d6 $fc
    dec sp                                        ; $6c42: $3b
    dec a                                         ; $6c43: $3d
    adc l                                         ; $6c44: $8d
    ld b, [hl]                                    ; $6c45: $46
    ret c                                         ; $6c46: $d8

    ld b, d                                       ; $6c47: $42
    dec a                                         ; $6c48: $3d
    dec hl                                        ; $6c49: $2b
    ld e, d                                       ; $6c4a: $5a
    ld [de], a                                    ; $6c4b: $12
    sub $10                                       ; $6c4c: $d6 $10
    add [hl]                                      ; $6c4e: $86
    and $d1                                       ; $6c4f: $e6 $d1
    cp $69                                        ; $6c51: $fe $69
    sub l                                         ; $6c53: $95
    db $e3                                        ; $6c54: $e3
    sbc b                                         ; $6c55: $98
    db $fd                                        ; $6c56: $fd
    ld l, h                                       ; $6c57: $6c
    rlca                                          ; $6c58: $07
    rra                                           ; $6c59: $1f
    dec bc                                        ; $6c5a: $0b
    ld l, l                                       ; $6c5b: $6d
    sbc l                                         ; $6c5c: $9d
    ldh [$a7], a                                  ; $6c5d: $e0 $a7
    pop hl                                        ; $6c5f: $e1
    ld e, b                                       ; $6c60: $58
    push hl                                       ; $6c61: $e5
    ld h, h                                       ; $6c62: $64
    pop de                                        ; $6c63: $d1
    add d                                         ; $6c64: $82
    ld d, l                                       ; $6c65: $55
    sbc c                                         ; $6c66: $99
    or h                                          ; $6c67: $b4
    ld b, d                                       ; $6c68: $42
    ld h, [hl]                                    ; $6c69: $66
    dec l                                         ; $6c6a: $2d
    and [hl]                                      ; $6c6b: $a6
    rst $28                                       ; $6c6c: $ef
    jp c, $a7ca                                   ; $6c6d: $da $ca $a7

    adc c                                         ; $6c70: $89
    call nc, Call_000_00ed                        ; $6c71: $d4 $ed $00
    rra                                           ; $6c74: $1f
    ld a, a                                       ; $6c75: $7f
    or b                                          ; $6c76: $b0
    dec e                                         ; $6c77: $1d
    rra                                           ; $6c78: $1f
    rst $28                                       ; $6c79: $ef
    pop bc                                        ; $6c7a: $c1
    db $db                                        ; $6c7b: $db
    ld bc, $0b1f                                  ; $6c7c: $01 $1f $0b
    ld l, l                                       ; $6c7f: $6d
    sbc l                                         ; $6c80: $9d
    ldh [$67], a                                  ; $6c81: $e0 $67
    dec sp                                        ; $6c83: $3b
    nop                                           ; $6c84: $00
    sub a                                         ; $6c85: $97
    or l                                          ; $6c86: $b5
    ei                                            ; $6c87: $fb
    ld a, h                                       ; $6c88: $7c
    rrca                                          ; $6c89: $0f
    db $ed                                        ; $6c8a: $ed
    or d                                          ; $6c8b: $b2
    rst $18                                       ; $6c8c: $df
    xor c                                         ; $6c8d: $a9
    inc e                                         ; $6c8e: $1c
    rla                                           ; $6c8f: $17
    ld a, [de]                                    ; $6c90: $1a
    xor h                                         ; $6c91: $ac
    sbc [hl]                                      ; $6c92: $9e
    db $fd                                        ; $6c93: $fd
    rst $08                                       ; $6c94: $cf
    ld e, $d1                                     ; $6c95: $1e $d1
    pop de                                        ; $6c97: $d1
    xor [hl]                                      ; $6c98: $ae
    ret z                                         ; $6c99: $c8

    xor h                                         ; $6c9a: $ac
    dec c                                         ; $6c9b: $0d
    inc h                                         ; $6c9c: $24
    or $cf                                        ; $6c9d: $f6 $cf
    db $ec                                        ; $6c9f: $ec
    ld l, c                                       ; $6ca0: $69
    ld [hl], h                                    ; $6ca1: $74
    cp l                                          ; $6ca2: $bd
    or e                                          ; $6ca3: $b3
    rst $38                                       ; $6ca4: $ff
    sub c                                         ; $6ca5: $91
    ld h, a                                       ; $6ca6: $67
    db $dd                                        ; $6ca7: $dd
    or [hl]                                       ; $6ca8: $b6
    xor l                                         ; $6ca9: $ad
    pop hl                                        ; $6caa: $e1
    ld e, b                                       ; $6cab: $58
    sub e                                         ; $6cac: $93
    ld l, e                                       ; $6cad: $6b
    ld l, b                                       ; $6cae: $68
    cp h                                          ; $6caf: $bc
    jr c, jr_06b_6ce7                             ; $6cb0: $38 $35

    ld a, [$7b74]                                 ; $6cb2: $fa $74 $7b
    ld sp, hl                                     ; $6cb5: $f9
    ld de, $42f4                                  ; $6cb6: $11 $f4 $42
    push hl                                       ; $6cb9: $e5
    ld c, $9b                                     ; $6cba: $0e $9b
    db $ed                                        ; $6cbc: $ed
    nop                                           ; $6cbd: $00
    scf                                           ; $6cbe: $37
    ld b, a                                       ; $6cbf: $47
    sbc [hl]                                      ; $6cc0: $9e
    push af                                       ; $6cc1: $f5
    ld b, d                                       ; $6cc2: $42
    cp c                                          ; $6cc3: $b9
    di                                            ; $6cc4: $f3
    ld d, d                                       ; $6cc5: $52
    rst $18                                       ; $6cc6: $df
    ld e, [hl]                                    ; $6cc7: $5e
    and a                                         ; $6cc8: $a7
    ld de, $3ff4                                  ; $6cc9: $11 $f4 $3f
    ld a, [c]                                     ; $6ccc: $f2
    xor h                                         ; $6ccd: $ac
    rla                                           ; $6cce: $17
    ld a, [$791f]                                 ; $6ccf: $fa $1f $79
    halt                                          ; $6cd2: $76
    xor c                                         ; $6cd3: $a9
    sbc a                                         ; $6cd4: $9f
    inc h                                         ; $6cd5: $24
    jp c, $afd4                                   ; $6cd6: $da $d4 $af

    db $db                                        ; $6cd9: $db
    inc [hl]                                      ; $6cda: $34
    ld b, c                                       ; $6cdb: $41
    rst $38                                       ; $6cdc: $ff
    inc hl                                        ; $6cdd: $23
    rst $08                                       ; $6cde: $cf
    ld a, d                                       ; $6cdf: $7a
    and c                                         ; $6ce0: $a1
    ld d, a                                       ; $6ce1: $57
    ld h, c                                       ; $6ce2: $61
    or $53                                        ; $6ce3: $f6 $53
    xor a                                         ; $6ce5: $af
    ld c, a                                       ; $6ce6: $4f

jr_06b_6ce7:
    adc h                                         ; $6ce7: $8c
    or h                                          ; $6ce8: $b4
    ld c, e                                       ; $6ce9: $4b
    rlca                                          ; $6cea: $07
    sbc a                                         ; $6ceb: $9f
    ld sp, $518b                                  ; $6cec: $31 $8b $51
    sbc c                                         ; $6cef: $99
    sub [hl]                                      ; $6cf0: $96
    add a                                         ; $6cf1: $87
    sbc a                                         ; $6cf2: $9f
    and $d1                                       ; $6cf3: $e6 $d1
    ld a, [bc]                                    ; $6cf5: $0a
    add hl, hl                                    ; $6cf6: $29

jr_06b_6cf7:
    ld b, a                                       ; $6cf7: $47
    cp e                                          ; $6cf8: $bb
    ld l, l                                       ; $6cf9: $6d
    ld e, e                                       ; $6cfa: $5b
    ld a, c                                       ; $6cfb: $79
    ld l, e                                       ; $6cfc: $6b
    ld l, c                                       ; $6cfd: $69
    and h                                         ; $6cfe: $a4
    ld l, e                                       ; $6cff: $6b
    jp z, $435a                                   ; $6d00: $ca $5a $43

    inc e                                         ; $6d03: $1c
    xor l                                         ; $6d04: $ad
    sub b                                         ; $6d05: $90
    xor [hl]                                      ; $6d06: $ae
    daa                                           ; $6d07: $27
    ld b, e                                       ; $6d08: $43
    or $d4                                        ; $6d09: $f6 $d4
    cp $d7                                        ; $6d0b: $fe $d7
    sbc a                                         ; $6d0d: $9f
    reti                                          ; $6d0e: $d9


    ld c, a                                       ; $6d0f: $4f
    jp $eeb1                                      ; $6d10: $c3 $b1 $ee


    pop bc                                        ; $6d13: $c1
    db $db                                        ; $6d14: $db
    ld bc, $fd1f                                  ; $6d15: $01 $1f $fd
    ld c, [hl]                                    ; $6d18: $4e
    ld b, l                                       ; $6d19: $45
    jp hl                                         ; $6d1a: $e9


    ld a, e                                       ; $6d1b: $7b
    call nc, $71b3                                ; $6d1c: $d4 $b3 $71
    inc a                                         ; $6d1f: $3c
    or h                                          ; $6d20: $b4
    ret nc                                        ; $6d21: $d0

    ld c, d                                       ; $6d22: $4a
    ld e, e                                       ; $6d23: $5b
    adc b                                         ; $6d24: $88
    ret                                           ; $6d25: $c9


    and b                                         ; $6d26: $a0
    dec c                                         ; $6d27: $0d
    inc h                                         ; $6d28: $24
    or $3f                                        ; $6d29: $f6 $3f
    ld a, [c]                                     ; $6d2b: $f2
    xor h                                         ; $6d2c: $ac
    call z, Call_06b_7272                         ; $6d2d: $cc $72 $72
    inc [hl]                                      ; $6d30: $34
    ret c                                         ; $6d31: $d8

    sub $9b                                       ; $6d32: $d6 $9b
    inc hl                                        ; $6d34: $23
    rst $08                                       ; $6d35: $cf
    sbc d                                         ; $6d36: $9a
    ld a, a                                       ; $6d37: $7f
    and a                                         ; $6d38: $a7
    pop hl                                        ; $6d39: $e1
    ld a, b                                       ; $6d3a: $78
    ld e, d                                       ; $6d3b: $5a
    ld [hl], b                                    ; $6d3c: $70
    sbc c                                         ; $6d3d: $99
    ld b, l                                       ; $6d3e: $45
    add $1c                                       ; $6d3f: $c6 $1c
    ld h, c                                       ; $6d41: $61
    sub l                                         ; $6d42: $95
    or [hl]                                       ; $6d43: $b6
    db $10                                        ; $6d44: $10
    sub e                                         ; $6d45: $93
    ld b, c                                       ; $6d46: $41
    db $eb                                        ; $6d47: $eb
    or b                                          ; $6d48: $b0
    or h                                          ; $6d49: $b4
    and d                                         ; $6d4a: $a2
    or c                                          ; $6d4b: $b1
    ld c, b                                       ; $6d4c: $48
    ld l, l                                       ; $6d4d: $6d
    sbc [hl]                                      ; $6d4e: $9e
    adc d                                         ; $6d4f: $8a
    ld d, d                                       ; $6d50: $52
    ld c, h                                       ; $6d51: $4c
    ld [hl], $55                                  ; $6d52: $36 $55
    ld [hl], $ff                                  ; $6d54: $36 $ff
    ld c, [hl]                                    ; $6d56: $4e
    dec a                                         ; $6d57: $3d
    call $c226                                    ; $6d58: $cd $26 $c2
    ld a, [bc]                                    ; $6d5b: $0a
    xor l                                         ; $6d5c: $ad
    or h                                          ; $6d5d: $b4
    add l                                         ; $6d5e: $85
    sbc b                                         ; $6d5f: $98
    inc c                                         ; $6d60: $0c
    ld e, d                                       ; $6d61: $5a
    add a                                         ; $6d62: $87
    and l                                         ; $6d63: $a5
    dec d                                         ; $6d64: $15
    add hl, de                                    ; $6d65: $19
    inc h                                         ; $6d66: $24
    or h                                          ; $6d67: $b4
    jr c, jr_06b_6cf7                             ; $6d68: $38 $8d

    ld h, c                                       ; $6d6a: $61
    dec sp                                        ; $6d6b: $3b
    nop                                           ; $6d6c: $00
    rra                                           ; $6d6d: $1f
    rst $30                                       ; $6d6e: $f7
    dec l                                         ; $6d6f: $2d
    jp z, $dbe9                                   ; $6d70: $ca $e9 $db

    dec bc                                        ; $6d73: $0b
    and a                                         ; $6d74: $a7
    ret                                           ; $6d75: $c9


    ret c                                         ; $6d76: $d8

    ld c, e                                       ; $6d77: $4b
    adc l                                         ; $6d78: $8d
    pop bc                                        ; $6d79: $c1
    dec [hl]                                      ; $6d7a: $35
    add [hl]                                      ; $6d7b: $86
    dec sp                                        ; $6d7c: $3b
    db $e3                                        ; $6d7d: $e3
    call nc, $21b3                                ; $6d7e: $d4 $b3 $21
    and l                                         ; $6d81: $a5
    ld a, b                                       ; $6d82: $78
    ld h, l                                       ; $6d83: $65
    add hl, hl                                    ; $6d84: $29
    add [hl]                                      ; $6d85: $86
    halt                                          ; $6d86: $76
    db $db                                        ; $6d87: $db
    or [hl]                                       ; $6d88: $b6
    ld e, [hl]                                    ; $6d89: $5e
    xor b                                         ; $6d8a: $a8
    jr z, jr_06b_6de5                             ; $6d8b: $28 $58

    xor [hl]                                      ; $6d8d: $ae
    cp l                                          ; $6d8e: $bd
    daa                                           ; $6d8f: $27
    ld l, b                                       ; $6d90: $68
    add h                                         ; $6d91: $84
    push de                                       ; $6d92: $d5
    ld h, c                                       ; $6d93: $61
    ld l, c                                       ; $6d94: $69
    db $fd                                        ; $6d95: $fd
    inc [hl]                                      ; $6d96: $34
    sub b                                         ; $6d97: $90
    ld e, b                                       ; $6d98: $58
    rst $08                                       ; $6d99: $cf
    ccf                                           ; $6d9a: $3f
    ld l, l                                       ; $6d9b: $6d
    ld h, c                                       ; $6d9c: $61
    dec sp                                        ; $6d9d: $3b
    nop                                           ; $6d9e: $00
    ld l, a                                       ; $6d9f: $6f
    db $d3                                        ; $6da0: $d3
    ld l, h                                       ; $6da1: $6c
    ld [hl+], a                                   ; $6da2: $22
    dec sp                                        ; $6da3: $3b
    ld e, d                                       ; $6da4: $5a
    scf                                           ; $6da5: $37
    ld e, c                                       ; $6da6: $59
    and e                                         ; $6da7: $a3
    adc l                                         ; $6da8: $8d
    sub $61                                       ; $6da9: $d6 $61
    ld l, c                                       ; $6dab: $69
    ld b, l                                       ; $6dac: $45
    ld b, $39                                     ; $6dad: $06 $39
    ld e, d                                       ; $6daf: $5a

jr_06b_6db0:
    sbc h                                         ; $6db0: $9c
    add $20                                       ; $6db1: $c6 $20
    jr z, jr_06b_6db0                             ; $6db3: $28 $fb

    rra                                           ; $6db5: $1f
    ld a, c                                       ; $6db6: $79
    ld d, [hl]                                    ; $6db7: $56
    ld c, a                                       ; $6db8: $4f
    or e                                          ; $6db9: $b3
    adc c                                         ; $6dba: $89
    or b                                          ; $6dbb: $b0
    ldh [$8e], a                                  ; $6dbc: $e0 $8e
    sub $4d                                       ; $6dbe: $d6 $4d
    sub $68                                       ; $6dc0: $d6 $68
    and e                                         ; $6dc2: $a3
    ld [hl], l                                    ; $6dc3: $75
    ld e, b                                       ; $6dc4: $58
    ld e, d                                       ; $6dc5: $5a
    pop de                                        ; $6dc6: $d1
    ld e, b                                       ; $6dc7: $58
    and h                                         ; $6dc8: $a4
    sub $33                                       ; $6dc9: $d6 $33
    sbc h                                         ; $6dcb: $9c
    and l                                         ; $6dcc: $a5
    db $db                                        ; $6dcd: $db
    ld bc, $d837                                  ; $6dce: $01 $37 $d8
    rst $38                                       ; $6dd1: $ff
    ret z                                         ; $6dd2: $c8

    or e                                          ; $6dd3: $b3
    jp z, $08b1                                   ; $6dd4: $ca $b1 $08

    db $eb                                        ; $6dd7: $eb
    call nc, $8fd3                                ; $6dd8: $d4 $d3 $8f
    and b                                         ; $6ddb: $a0
    sub e                                         ; $6ddc: $93
    ld a, [hl+]                                   ; $6ddd: $2a
    ld a, [de]                                    ; $6dde: $1a
    dec hl                                        ; $6ddf: $2b
    ld [hl+], a                                   ; $6de0: $22
    inc h                                         ; $6de1: $24
    db $fc                                        ; $6de2: $fc
    inc [hl]                                      ; $6de3: $34
    inc e                                         ; $6de4: $1c

jr_06b_6de5:
    ld l, e                                       ; $6de5: $6b
    ld [hl], d                                    ; $6de6: $72
    dec [hl]                                      ; $6de7: $35
    call nz, Call_06b_69e9                        ; $6de8: $c4 $e9 $69
    sbc l                                         ; $6deb: $9d
    sub b                                         ; $6dec: $90
    inc hl                                        ; $6ded: $23
    dec b                                         ; $6dee: $05
    db $fd                                        ; $6def: $fd
    cpl                                           ; $6df0: $2f
    ld e, l                                       ; $6df1: $5d
    sub c                                         ; $6df2: $91
    ld b, l                                       ; $6df3: $45
    xor a                                         ; $6df4: $af
    jr nc, jr_06b_6e3e                            ; $6df5: $30 $47

    jp $cf5e                                      ; $6df7: $c3 $5e $cf


    ld e, [hl]                                    ; $6dfa: $5e
    ld c, c                                       ; $6dfb: $49
    add [hl]                                      ; $6dfc: $86

jr_06b_6dfd:
    db $ed                                        ; $6dfd: $ed
    nop                                           ; $6dfe: $00
    sub a                                         ; $6dff: $97
    db $eb                                        ; $6e00: $eb
    cp b                                          ; $6e01: $b8
    adc e                                         ; $6e02: $8b
    rst $00                                       ; $6e03: $c7
    ld a, [hl+]                                   ; $6e04: $2a
    ld h, a                                       ; $6e05: $67
    add hl, hl                                    ; $6e06: $29
    adc d                                         ; $6e07: $8a
    ld a, [de]                                    ; $6e08: $1a
    dec [hl]                                      ; $6e09: $35
    db $e4                                        ; $6e0a: $e4
    adc d                                         ; $6e0b: $8a
    ld d, e                                       ; $6e0c: $53
    ccf                                           ; $6e0d: $3f
    ld e, d                                       ; $6e0e: $5a
    add hl, sp                                    ; $6e0f: $39
    adc [hl]                                      ; $6e10: $8e
    ld h, $17                                     ; $6e11: $26 $17
    ld [hl], d                                    ; $6e13: $72
    and h                                         ; $6e14: $a4
    ld [hl], $1c                                  ; $6e15: $36 $1c
    dec hl                                        ; $6e17: $2b
    ld [bc], a                                    ; $6e18: $02
    ld l, c                                       ; $6e19: $69
    push af                                       ; $6e1a: $f5
    ld b, d                                       ; $6e1b: $42
    inc bc                                        ; $6e1c: $03
    adc c                                         ; $6e1d: $89
    push hl                                       ; $6e1e: $e5
    ld c, [hl]                                    ; $6e1f: $4e
    xor l                                         ; $6e20: $ad
    cp $4e                                        ; $6e21: $fe $4e
    db $e3                                        ; $6e23: $e3
    ld hl, sp-$2f                                 ; $6e24: $f8 $d1
    adc d                                         ; $6e26: $8a
    daa                                           ; $6e27: $27
    ld d, e                                       ; $6e28: $53
    db $e3                                        ; $6e29: $e3
    add sp, $76                                   ; $6e2a: $e8 $76
    nop                                           ; $6e2c: $00
    rst $28                                       ; $6e2d: $ef
    rlca                                          ; $6e2e: $07
    sub a                                         ; $6e2f: $97
    ld e, c                                       ; $6e30: $59
    ld c, [hl]                                    ; $6e31: $4e
    adc [hl]                                      ; $6e32: $8e
    ld [hl], $a9                                  ; $6e33: $36 $a9
    ret c                                         ; $6e35: $d8

    ld c, a                                       ; $6e36: $4f
    ret                                           ; $6e37: $c9


    ld [hl], l                                    ; $6e38: $75
    ld b, l                                       ; $6e39: $45
    cp d                                          ; $6e3a: $ba
    ld d, d                                       ; $6e3b: $52
    push hl                                       ; $6e3c: $e5
    ld h, h                                       ; $6e3d: $64

jr_06b_6e3e:
    cp a                                          ; $6e3e: $bf
    db $fc                                        ; $6e3f: $fc
    cp h                                          ; $6e40: $bc
    pop de                                        ; $6e41: $d1
    xor e                                         ; $6e42: $ab

Jump_06b_6e43:
    pop bc                                        ; $6e43: $c1
    ld [hl], l                                    ; $6e44: $75
    ld l, c                                       ; $6e45: $69
    push bc                                       ; $6e46: $c5
    pop de                                        ; $6e47: $d1
    ld a, d                                       ; $6e48: $7a
    xor $d4                                       ; $6e49: $ee $d4
    add [hl]                                      ; $6e4b: $86
    ld h, e                                       ; $6e4c: $63
    ld b, l                                       ; $6e4d: $45
    jr nz, jr_06b_6dfd                            ; $6e4e: $20 $ad

    xor l                                         ; $6e50: $ad
    ld d, a                                       ; $6e51: $57
    ld h, b                                       ; $6e52: $60
    ld [hl], b                                    ; $6e53: $70
    ld b, d                                       ; $6e54: $42
    ld [$788a], sp                                ; $6e55: $08 $8a $78
    and c                                         ; $6e58: $a1
    ld [$e347], sp                                ; $6e59: $08 $47 $e3
    inc [hl]                                      ; $6e5c: $34
    sub b                                         ; $6e5d: $90
    ret c                                         ; $6e5e: $d8

    ld c, b                                       ; $6e5f: $48
    rst $10                                       ; $6e60: $d7
    db $e4                                        ; $6e61: $e4
    ld [$53b9], a                                 ; $6e62: $ea $b9 $53
    db $eb                                        ; $6e65: $eb
    sbc c                                         ; $6e66: $99
    and e                                         ; $6e67: $a3
    ld c, l                                       ; $6e68: $4d
    dec a                                         ; $6e69: $3d
    ld [bc], a                                    ; $6e6a: $02
    adc c                                         ; $6e6b: $89
    dec sp                                        ; $6e6c: $3b
    dec hl                                        ; $6e6d: $2b
    add h                                         ; $6e6e: $84
    reti                                          ; $6e6f: $d9


    jp c, Jump_000_03b7                           ; $6e70: $da $b7 $03

    rst $10                                       ; $6e73: $d7
    sub c                                         ; $6e74: $91
    sub h                                         ; $6e75: $94
    cp l                                          ; $6e76: $bd
    ld hl, $cc8d                                  ; $6e77: $21 $8d $cc
    cp l                                          ; $6e7a: $bd
    ld c, d                                       ; $6e7b: $4a
    db $e3                                        ; $6e7c: $e3

jr_06b_6e7d:
    ld bc, $d16f                                  ; $6e7d: $01 $6f $d1
    dec a                                         ; $6e80: $3d
    ld [hl], c                                    ; $6e81: $71
    ld [hl], e                                    ; $6e82: $73
    ld h, l                                       ; $6e83: $65
    ccf                                           ; $6e84: $3f
    push bc                                       ; $6e85: $c5
    db $f4                                        ; $6e86: $f4
    call c, $f785                                 ; $6e87: $dc $85 $f7
    ret c                                         ; $6e8a: $d8

    sbc d                                         ; $6e8b: $9a
    ld a, d                                       ; $6e8c: $7a
    or $ca                                        ; $6e8d: $f6 $ca
    ld e, b                                       ; $6e8f: $58
    ld a, [$ba1e]                                 ; $6e90: $fa $1e $ba
    push af                                       ; $6e93: $f5
    sub e                                         ; $6e94: $93
    add h                                         ; $6e95: $84
    cp l                                          ; $6e96: $bd
    ld d, e                                       ; $6e97: $53
    db $e4                                        ; $6e98: $e4
    ld de, $1c34                                  ; $6e99: $11 $34 $1c
    xor e                                         ; $6e9c: $ab
    ld [$b1ff], sp                                ; $6e9d: $08 $ff $b1
    scf                                           ; $6ea0: $37
    ld c, $97                                     ; $6ea1: $0e $97
    di                                            ; $6ea3: $f3
    cp h                                          ; $6ea4: $bc
    pop de                                        ; $6ea5: $d1
    adc a                                         ; $6ea6: $8f
    dec de                                        ; $6ea7: $1b
    ld c, b                                       ; $6ea8: $48
    ld l, h                                       ; $6ea9: $6c
    jr nz, jr_06b_6e7d                            ; $6eaa: $20 $d1

    ld [$6dd7], a                                 ; $6eac: $ea $d7 $6d
    jp c, Jump_000_071b                           ; $6eaf: $da $1b $07

    rst $20                                       ; $6eb2: $e7
    xor [hl]                                      ; $6eb3: $ae
    add c                                         ; $6eb4: $81
    call nz, $4f22                                ; $6eb5: $c4 $22 $4f
    rst $38                                       ; $6eb8: $ff
    inc hl                                        ; $6eb9: $23
    rst $08                                       ; $6eba: $cf
    ld c, d                                       ; $6ebb: $4a
    adc l                                         ; $6ebc: $8d
    pop bc                                        ; $6ebd: $c1
    and l                                         ; $6ebe: $a5
    db $eb                                        ; $6ebf: $eb
    push de                                       ; $6ec0: $d5
    add hl, sp                                    ; $6ec1: $39
    db $fd                                        ; $6ec2: $fd
    ld [$fa8b], sp                                ; $6ec3: $08 $8b $fa
    ld b, [hl]                                    ; $6ec6: $46
    xor a                                         ; $6ec7: $af
    db $db                                        ; $6ec8: $db
    ld [hl], d                                    ; $6ec9: $72
    ld e, h                                       ; $6eca: $5c
    ld [hl], $6f                                  ; $6ecb: $36 $6f
    db $f4                                        ; $6ecd: $f4
    ld b, $4f                                     ; $6ece: $06 $4f
    add hl, hl                                    ; $6ed0: $29
    ei                                            ; $6ed1: $fb
    ld a, c                                       ; $6ed2: $79
    db $e3                                        ; $6ed3: $e3
    nop                                           ; $6ed4: $00
    rst $20                                       ; $6ed5: $e7
    xor c                                         ; $6ed6: $a9
    ld sp, hl                                     ; $6ed7: $f9
    ld [hl], a                                    ; $6ed8: $77
    ld c, d                                       ; $6ed9: $4a
    adc l                                         ; $6eda: $8d
    sub e                                         ; $6edb: $93
    ld c, d                                       ; $6edc: $4a
    rst $10                                       ; $6edd: $d7
    xor e                                         ; $6ede: $ab
    ld [hl], e                                    ; $6edf: $73
    ld a, [$1611]                                 ; $6ee0: $fa $11 $16
    ld d, l                                       ; $6ee3: $55
    ld d, b                                       ; $6ee4: $50
    xor h                                         ; $6ee5: $ac
    db $ec                                        ; $6ee6: $ec
    or c                                          ; $6ee7: $b1
    dec e                                         ; $6ee8: $1d
    ld l, a                                       ; $6ee9: $6f
    ld d, e                                       ; $6eea: $53
    ld h, l                                       ; $6eeb: $65
    jp c, Jump_000_0a43                           ; $6eec: $da $43 $0a

    jp z, $fcd4                                   ; $6eef: $ca $d4 $fc

    dec sp                                        ; $6ef2: $3b
    dec c                                         ; $6ef3: $0d
    ld b, a                                       ; $6ef4: $47
    ld [hl], l                                    ; $6ef5: $75
    ld a, [$f667]                                 ; $6ef6: $fa $67 $f6
    or h                                          ; $6ef9: $b4
    add [hl]                                      ; $6efa: $86
    jr nc, @-$0a                                  ; $6efb: $30 $f4

    ccf                                           ; $6efd: $3f
    ld a, [c]                                     ; $6efe: $f2
    ld l, h                                       ; $6eff: $6c
    db $eb                                        ; $6f00: $eb

Jump_06b_6f01:
    dec [hl]                                      ; $6f01: $35
    ld l, b                                       ; $6f02: $68
    ld b, l                                       ; $6f03: $45
    dec hl                                        ; $6f04: $2b
    sub b                                         ; $6f05: $90
    ld e, b                                       ; $6f06: $58
    db $f4                                        ; $6f07: $f4
    ccf                                           ; $6f08: $3f
    add hl, sp                                    ; $6f09: $39
    jp nz, $21b3                                  ; $6f0a: $c2 $b3 $21

    inc c                                         ; $6f0d: $0c
    sbc l                                         ; $6f0e: $9d
    ld e, l                                       ; $6f0f: $5d
    inc c                                         ; $6f10: $0c
    db $eb                                        ; $6f11: $eb
    inc [hl]                                      ; $6f12: $34
    sub b                                         ; $6f13: $90
    sub b                                         ; $6f14: $90
    db $e3                                        ; $6f15: $e3
    inc [hl]                                      ; $6f16: $34
    sub b                                         ; $6f17: $90
    sub [hl]                                      ; $6f18: $96
    jp nc, $beb6                                  ; $6f19: $d2 $b6 $be

    dec [hl]                                      ; $6f1c: $35
    xor [hl]                                      ; $6f1d: $ae
    ld a, [hl]                                    ; $6f1e: $7e
    ld h, c                                       ; $6f1f: $61
    dec sp                                        ; $6f20: $3b
    nop                                           ; $6f21: $00

Jump_06b_6f22:
    rst $20                                       ; $6f22: $e7
    or a                                          ; $6f23: $b7
    sub [hl]                                      ; $6f24: $96
    ld b, [hl]                                    ; $6f25: $46
    ld d, $21                                     ; $6f26: $16 $21
    inc sp                                        ; $6f28: $33
    or h                                          ; $6f29: $b4
    ret                                           ; $6f2a: $c9


    and c                                         ; $6f2b: $a1
    ld a, a                                       ; $6f2c: $7f
    ret c                                         ; $6f2d: $d8

    jp z, $3462                                   ; $6f2e: $ca $62 $34

    add h                                         ; $6f31: $84
    and c                                         ; $6f32: $a1
    ld [de], a                                    ; $6f33: $12
    ld e, $15                                     ; $6f34: $1e $15
    ld e, d                                       ; $6f36: $5a
    cp d                                          ; $6f37: $ba
    dec [hl]                                      ; $6f38: $35
    ld e, e                                       ; $6f39: $5b
    ccf                                           ; $6f3a: $3f
    cp d                                          ; $6f3b: $ba
    ld b, a                                       ; $6f3c: $47
    ei                                            ; $6f3d: $fb
    add a                                         ; $6f3e: $87
    dec de                                        ; $6f3f: $1b
    ld l, l                                       ; $6f40: $6d
    and h                                         ; $6f41: $a4
    dec [hl]                                      ; $6f42: $35
    sub b                                         ; $6f43: $90
    ld e, b                                       ; $6f44: $58
    sbc $0a                                       ; $6f45: $de $0a
    ld l, c                                       ; $6f47: $69
    swap c                                        ; $6f48: $cb $31
    ld b, a                                       ; $6f4a: $47
    ld e, b                                       ; $6f4b: $58
    or c                                          ; $6f4c: $b1
    sbc a                                         ; $6f4d: $9f
    sub d                                         ; $6f4e: $92
    add e                                         ; $6f4f: $83
    ld d, $39                                     ; $6f50: $16 $39
    ld d, d                                       ; $6f52: $52
    db $eb                                        ; $6f53: $eb
    ld e, c                                       ; $6f54: $59
    ld h, [hl]                                    ; $6f55: $66
    add hl, sp                                    ; $6f56: $39
    add hl, sp                                    ; $6f57: $39
    ld a, [de]                                    ; $6f58: $1a
    xor h                                         ; $6f59: $ac
    xor b                                         ; $6f5a: $a8
    ld h, $6c                                     ; $6f5b: $26 $6c
    db $fd                                        ; $6f5d: $fd
    adc h                                         ; $6f5e: $8c
    add hl, sp                                    ; $6f5f: $39
    or d                                          ; $6f60: $b2
    call nc, $8688                                ; $6f61: $d4 $88 $86
    or [hl]                                       ; $6f64: $b6
    inc e                                         ; $6f65: $1c
    sub a                                         ; $6f66: $97
    call Call_000_0076                            ; $6f67: $cd $76 $00
    rst $20                                       ; $6f6a: $e7
    ld a, [de]                                    ; $6f6b: $1a
    pop de                                        ; $6f6c: $d1
    ld de, $17fe                                  ; $6f6d: $11 $fe $17
    inc e                                         ; $6f70: $1c
    ld [hl], e                                    ; $6f71: $73
    ld h, h                                       ; $6f72: $64
    di                                            ; $6f73: $f3
    rst $28                                       ; $6f74: $ef
    db $f4                                        ; $6f75: $f4
    ld b, d                                       ; $6f76: $42
    pop de                                        ; $6f77: $d1
    ccf                                           ; $6f78: $3f
    ld l, h                                       ; $6f79: $6c
    ld h, l                                       ; $6f7a: $65
    ld sp, $692a                                  ; $6f7b: $31 $2a $69
    ld de, $610d                                  ; $6f7e: $11 $0d $61
    add sp, $7f                                   ; $6f81: $e8 $7f
    db $e4                                        ; $6f83: $e4
    reti                                          ; $6f84: $d9


    sub $cf                                       ; $6f85: $d6 $cf
    or b                                          ; $6f87: $b0
    rst $38                                       ; $6f88: $ff
    ld a, c                                       ; $6f89: $79
    cp e                                          ; $6f8a: $bb
    rst $38                                       ; $6f8b: $ff
    sub c                                         ; $6f8c: $91
    ld h, a                                       ; $6f8d: $67
    adc l                                         ; $6f8e: $8d
    call z, $d462                                 ; $6f8f: $cc $62 $d4
    ld h, c                                       ; $6f92: $61
    ld l, c                                       ; $6f93: $69
    ld [hl], l                                    ; $6f94: $75
    inc l                                         ; $6f95: $2c
    or d                                          ; $6f96: $b2
    ld [hl], d                                    ; $6f97: $72
    ld e, h                                       ; $6f98: $5c
    xor c                                         ; $6f99: $a9
    ld de, $2045                                  ; $6f9a: $11 $45 $20
    xor l                                         ; $6f9d: $ad
    db $ed                                        ; $6f9e: $ed
    nop                                           ; $6f9f: $00
    sub a                                         ; $6fa0: $97
    ld d, a                                       ; $6fa1: $57
    or $68                                        ; $6fa2: $f6 $68
    cp $9d                                        ; $6fa4: $fe $9d
    adc d                                         ; $6fa6: $8a
    ld d, d                                       ; $6fa7: $52
    sub [hl]                                      ; $6fa8: $96
    ld l, e                                       ; $6fa9: $6b
    ld [hl-], a                                   ; $6faa: $32
    sbc $e8                                       ; $6fab: $de $e8
    call Call_06b_6791                            ; $6fad: $cd $91 $67
    push af                                       ; $6fb0: $f5
    db $fc                                        ; $6fb1: $fc
    or e                                          ; $6fb2: $b3
    and c                                         ; $6fb3: $a1
    ld d, c                                       ; $6fb4: $51
    ld l, $85                                     ; $6fb5: $2e $85
    push de                                       ; $6fb7: $d5
    or e                                          ; $6fb8: $b3
    ret                                           ; $6fb9: $c9


    and c                                         ; $6fba: $a1
    ld a, a                                       ; $6fbb: $7f
    ret c                                         ; $6fbc: $d8

    jp z, $d462                                   ; $6fbd: $ca $62 $d4

    and l                                         ; $6fc0: $a5
    dec d                                         ; $6fc1: $15
    and a                                         ; $6fc2: $a7
    call nc, $7290                                ; $6fc3: $d4 $90 $72
    ld h, c                                       ; $6fc6: $61
    rst $28                                       ; $6fc7: $ef
    or [hl]                                       ; $6fc8: $b6
    ld l, l                                       ; $6fc9: $6d
    cp l                                          ; $6fca: $bd
    ld [$eb9c], a                                 ; $6fcb: $ea $9c $eb
    or [hl]                                       ; $6fce: $b6
    ld l, l                                       ; $6fcf: $6d
    ld h, l                                       ; $6fd0: $65
    ld l, d                                       ; $6fd1: $6a
    ld e, h                                       ; $6fd2: $5c
    ld a, a                                       ; $6fd3: $7f
    ld [hl], $39                                  ; $6fd4: $36 $39
    ld [hl], h                                    ; $6fd6: $74
    ld sp, hl                                     ; $6fd7: $f9
    dec bc                                        ; $6fd8: $0b
    dec bc                                        ; $6fd9: $0b
    db $dd                                        ; $6fda: $dd
    or [hl]                                       ; $6fdb: $b6
    db $ed                                        ; $6fdc: $ed
    nop                                           ; $6fdd: $00
    rst $20                                       ; $6fde: $e7
    ld e, c                                       ; $6fdf: $59
    ld c, [hl]                                    ; $6fe0: $4e
    adc [hl]                                      ; $6fe1: $8e
    ld b, $37                                     ; $6fe2: $06 $37
    ld e, d                                       ; $6fe4: $5a
    db $f4                                        ; $6fe5: $f4
    rrca                                          ; $6fe6: $0f
    ld e, e                                       ; $6fe7: $5b
    ld e, c                                       ; $6fe8: $59
    adc h                                         ; $6fe9: $8c
    add [hl]                                      ; $6fea: $86
    inc [hl]                                      ; $6feb: $34

jr_06b_6fec:
    ld de, $4457                                  ; $6fec: $11 $57 $44
    ld b, e                                       ; $6fef: $43
    jr jr_06b_6fec                                ; $6ff0: $18 $fa

    rra                                           ; $6ff2: $1f
    ld a, c                                       ; $6ff3: $79
    ld h, $e8                                     ; $6ff4: $26 $e8
    ld d, l                                       ; $6ff6: $55
    sbc b                                         ; $6ff7: $98
    db $fd                                        ; $6ff8: $fd
    call nc, Call_000_13eb                        ; $6ff9: $d4 $eb $13
    inc hl                                        ; $6ffc: $23
    ld l, l                                       ; $6ffd: $6d
    db $eb                                        ; $6ffe: $eb
    ld sp, hl                                     ; $6fff: $f9
    adc [hl]                                      ; $7000: $8e
    ld d, d                                       ; $7001: $52
    ld h, e                                       ; $7002: $63
    ld [hl], b                                    ; $7003: $70
    add hl, de                                    ; $7004: $19
    ld c, b                                       ; $7005: $48
    dec hl                                        ; $7006: $2b
    add h                                         ; $7007: $84
    ld b, a                                       ; $7008: $47
    push hl                                       ; $7009: $e5
    cp b                                          ; $700a: $b8
    adc [hl]                                      ; $700b: $8e
    ld d, [hl]                                    ; $700c: $56
    call nz, $d715                                ; $700d: $c4 $15 $d7
    push bc                                       ; $7010: $c5
    pop de                                        ; $7011: $d1
    cp [hl]                                       ; $7012: $be
    or e                                          ; $7013: $b3
    xor a                                         ; $7014: $af
    sub b                                         ; $7015: $90
    reti                                          ; $7016: $d9


    ld c, a                                       ; $7017: $4f
    reti                                          ; $7018: $d9


    sbc e                                         ; $7019: $9b
    inc [hl]                                      ; $701a: $34
    or a                                          ; $701b: $b7
    or $7d                                        ; $701c: $f6 $7d
    ld c, l                                       ; $701e: $4d
    jp nc, $9e7e                                  ; $701f: $d2 $7e $9e

    ld b, a                                       ; $7022: $47
    ret nc                                        ; $7023: $d0

    ld b, b                                       ; $7024: $40
    ld h, d                                       ; $7025: $62
    sub a                                         ; $7026: $97
    db $fd                                        ; $7027: $fd
    ld c, [hl]                                    ; $7028: $4e
    ld b, e                                       ; $7029: $43
    sbc e                                         ; $702a: $9b
    ret z                                         ; $702b: $c8

    db $d3                                        ; $702c: $d3
    reti                                          ; $702d: $d9


    inc de                                        ; $702e: $13
    ei                                            ; $702f: $fb
    call nc, $4327                                ; $7030: $d4 $27 $43
    adc [hl]                                      ; $7033: $8e
    inc l                                         ; $7034: $2c
    or e                                          ; $7035: $b3
    sbc h                                         ; $7036: $9c
    inc e                                         ; $7037: $1c
    ld l, l                                       ; $7038: $6d
    or h                                          ; $7039: $b4
    ld l, $f8                                     ; $703a: $2e $f8
    or h                                          ; $703c: $b4
    db $e4                                        ; $703d: $e4
    add sp, $76                                   ; $703e: $e8 $76
    nop                                           ; $7040: $00
    rst $10                                       ; $7041: $d7
    and b                                         ; $7042: $a0
    add d                                         ; $7043: $82
    ld [hl-], a                                   ; $7044: $32
    dec [hl]                                      ; $7045: $35
    rst $38                                       ; $7046: $ff
    ld c, [hl]                                    ; $7047: $4e
    jp $9d51                                      ; $7048: $c3 $51 $9d


    add [hl]                                      ; $704b: $86
    jr c, @-$3d                                   ; $704c: $38 $c1

    ld a, [de]                                    ; $704e: $1a
    adc [hl]                                      ; $704f: $8e
    sub l                                         ; $7050: $95
    dec sp                                        ; $7051: $3b
    or [hl]                                       ; $7052: $b6
    inc bc                                        ; $7053: $03
    ld d, a                                       ; $7054: $57
    ld [hl], c                                    ; $7055: $71
    or d                                          ; $7056: $b2
    push hl                                       ; $7057: $e5
    ei                                            ; $7058: $fb
    ld a, l                                       ; $7059: $7d
    ld [hl], b                                    ; $705a: $70
    dec a                                         ; $705b: $3d
    rst $10                                       ; $705c: $d7
    xor l                                         ; $705d: $ad
    ld c, c                                       ; $705e: $49
    adc l                                         ; $705f: $8d
    ret                                           ; $7060: $c9


    ld c, a                                       ; $7061: $4f
    ld h, c                                       ; $7062: $61
    add [hl]                                      ; $7063: $86
    db $fc                                        ; $7064: $fc
    dec a                                         ; $7065: $3d
    db $fc                                        ; $7066: $fc
    inc [hl]                                      ; $7067: $34
    inc e                                         ; $7068: $1c
    db $eb                                        ; $7069: $eb
    db $d3                                        ; $706a: $d3
    ld c, a                                       ; $706b: $4f
    cp a                                          ; $706c: $bf
    ld e, h                                       ; $706d: $5c
    ld e, l                                       ; $706e: $5d
    ld [hl], d                                    ; $706f: $72
    and a                                         ; $7070: $a7
    or $ce                                        ; $7071: $f6 $ce
    ld a, [hl+]                                   ; $7073: $2a
    adc l                                         ; $7074: $8d
    xor [hl]                                      ; $7075: $ae
    sbc [hl]                                      ; $7076: $9e
    jp nz, $e115                                  ; $7077: $c2 $15 $e1

    ld b, a                                       ; $707a: $47
    db $eb                                        ; $707b: $eb
    ld e, c                                       ; $707c: $59
    ld c, l                                       ; $707d: $4d
    xor b                                         ; $707e: $a8
    sbc h                                         ; $707f: $9c
    inc e                                         ; $7080: $1c
    ld d, c                                       ; $7081: $51
    cp d                                          ; $7082: $ba
    cp [hl]                                       ; $7083: $be
    ld l, e                                       ; $7084: $6b
    dec hl                                        ; $7085: $2b
    sbc a                                         ; $7086: $9f
    ld h, $52                                     ; $7087: $26 $52
    or a                                          ; $7089: $b7
    ld a, [hl]                                    ; $708a: $7e
    inc l                                         ; $708b: $2c
    or h                                          ; $708c: $b4
    ld [hl], l                                    ; $708d: $75
    add d                                         ; $708e: $82
    sbc a                                         ; $708f: $9f
    add [hl]                                      ; $7090: $86
    call c, $ffd1                                 ; $7091: $dc $d1 $ff
    jp nc, $b115                                  ; $7094: $d2 $15 $b1

    push af                                       ; $7097: $f5
    inc sp                                        ; $7098: $33
    ld h, [hl]                                    ; $7099: $66
    pop af                                        ; $709a: $f1
    ld d, h                                       ; $709b: $54
    jp nc, Jump_06b_6f22                          ; $709c: $d2 $22 $6f

    and e                                         ; $709f: $a3
    add c                                         ; $70a0: $81
    call nz, Call_06b_47fe                        ; $70a1: $c4 $fe $47
    sbc [hl]                                      ; $70a4: $9e
    ld d, l                                       ; $70a5: $55
    inc b                                         ; $70a6: $04
    dec bc                                        ; $70a7: $0b
    xor $c9                                       ; $70a8: $ee $c9
    sub b                                         ; $70aa: $90
    dec a                                         ; $70ab: $3d
    or l                                          ; $70ac: $b5
    ld [hl+], a                                   ; $70ad: $22
    xor [hl]                                      ; $70ae: $ae
    jr c, jr_06b_710b                             ; $70af: $38 $5a

    add hl, sp                                    ; $70b1: $39
    xor [hl]                                      ; $70b2: $ae
    sbc d                                         ; $70b3: $9a
    ret nc                                        ; $70b4: $d0

    ccf                                           ; $70b5: $3f
    ld l, h                                       ; $70b6: $6c
    ld h, l                                       ; $70b7: $65
    ld sp, $03b6                                  ; $70b8: $31 $b6 $03
    rra                                           ; $70bb: $1f
    adc e                                         ; $70bc: $8b
    sbc e                                         ; $70bd: $9b
    ld a, a                                       ; $70be: $7f

jr_06b_70bf:
    ld b, a                                       ; $70bf: $47
    ret nc                                        ; $70c0: $d0

    xor e                                         ; $70c1: $ab
    jr nc, jr_06b_70bf                            ; $70c2: $30 $fb

    xor c                                         ; $70c4: $a9
    rst $10                                       ; $70c5: $d7
    daa                                           ; $70c6: $27
    ld b, [hl]                                    ; $70c7: $46
    sbc d                                         ; $70c8: $9a
    and b                                         ; $70c9: $a0
    inc hl                                        ; $70ca: $23
    or h                                          ; $70cb: $b4
    ld [hl], l                                    ; $70cc: $75
    add d                                         ; $70cd: $82
    sbc a                                         ; $70ce: $9f
    sbc $d9                                       ; $70cf: $de $d9
    rst $38                                       ; $70d1: $ff
    ret z                                         ; $70d2: $c8

    or e                                          ; $70d3: $b3
    db $ed                                        ; $70d4: $ed
    nop                                           ; $70d5: $00
    sbc a                                         ; $70d6: $9f
    ld sp, $9647                                  ; $70d7: $31 $47 $96
    ld a, [de]                                    ; $70da: $1a
    ld d, c                                       ; $70db: $51
    inc b                                         ; $70dc: $04
    jp nc, $a57a                                  ; $70dd: $d2 $7a $a5

    rla                                           ; $70e0: $17
    ld a, [hl+]                                   ; $70e1: $2a
    ld [c], a                                     ; $70e2: $e2
    adc d                                         ; $70e3: $8a
    xor b                                         ; $70e4: $a8
    ld h, a                                       ; $70e5: $67
    ld [hl], c                                    ; $70e6: $71
    sbc e                                         ; $70e7: $9b
    rst $38                                       ; $70e8: $ff
    sub l                                         ; $70e9: $95
    push bc                                       ; $70ea: $c5
    ld d, e                                       ; $70eb: $53
    add hl, sp                                    ; $70ec: $39
    xor [hl]                                      ; $70ed: $ae
    ld l, [hl]                                    ; $70ee: $6e
    call $f53e                                    ; $70ef: $cd $3e $f5
    ld l, h                                       ; $70f2: $6c
    ret z                                         ; $70f3: $c8

    adc h                                         ; $70f4: $8c
    ld a, d                                       ; $70f5: $7a
    ld d, [hl]                                    ; $70f6: $56
    ld [hl], h                                    ; $70f7: $74
    sub [hl]                                      ; $70f8: $96
    rst $10                                       ; $70f9: $d7
    xor l                                         ; $70fa: $ad
    db $ed                                        ; $70fb: $ed
    nop                                           ; $70fc: $00
    rra                                           ; $70fd: $1f
    rst $28                                       ; $70fe: $ef
    pop bc                                        ; $70ff: $c1
    add d                                         ; $7100: $82
    ld a, [hl-]                                   ; $7101: $3a
    and [hl]                                      ; $7102: $a6
    ld a, [hl]                                    ; $7103: $7e
    ccf                                           ; $7104: $3f
    ld a, a                                       ; $7105: $7f
    cp d                                          ; $7106: $ba
    xor l                                         ; $7107: $ad
    scf                                           ; $7108: $37
    ld b, a                                       ; $7109: $47
    sbc [hl]                                      ; $710a: $9e

jr_06b_710b:
    push af                                       ; $710b: $f5
    ld b, d                                       ; $710c: $42
    sub e                                         ; $710d: $93
    dec hl                                        ; $710e: $2b
    dec [hl]                                      ; $710f: $35
    ld h, $8f                                     ; $7110: $26 $8f
    inc e                                         ; $7112: $1c
    ld e, c                                       ; $7113: $59
    ccf                                           ; $7114: $3f
    dec c                                         ; $7115: $0d
    ld l, l                                       ; $7116: $6d
    add hl, sp                                    ; $7117: $39
    ld l, $9b                                     ; $7118: $2e $9b
    ld [hl+], a                                   ; $711a: $22
    rst $08                                       ; $711b: $cf
    dec de                                        ; $711c: $1b
    rlca                                          ; $711d: $07
    rst $20                                       ; $711e: $e7
    xor c                                         ; $711f: $a9
    ld c, d                                       ; $7120: $4a
    db $e3                                        ; $7121: $e3
    ld a, [hl+]                                   ; $7122: $2a
    ld e, l                                       ; $7123: $5d
    add l                                         ; $7124: $85
    add $3f                                       ; $7125: $c6 $3f
    or a                                          ; $7127: $b7
    inc bc                                        ; $7128: $03
    scf                                           ; $7129: $37
    ld b, a                                       ; $712a: $47
    sbc [hl]                                      ; $712b: $9e
    ld d, l                                       ; $712c: $55
    ld hl, $0364                                  ; $712d: $21 $64 $03
    adc c                                         ; $7130: $89
    ld h, l                                       ; $7131: $65
    ld l, d                                       ; $7132: $6a
    cp $9d                                        ; $7133: $fe $9d
    add [hl]                                      ; $7135: $86
    and e                                         ; $7136: $a3
    ld a, [hl-]                                   ; $7137: $3a
    db $dd                                        ; $7138: $dd
    push bc                                       ; $7139: $c5
    db $ec                                        ; $713a: $ec
    sbc a                                         ; $713b: $9f
    reti                                          ; $713c: $d9


    db $d3                                        ; $713d: $d3
    sbc d                                         ; $713e: $9a
    pop hl                                        ; $713f: $e1
    ld hl, $85e8                                  ; $7140: $21 $e8 $85
    jp z, $361d                                   ; $7143: $ca $1d $36

    ld e, e                                       ; $7146: $5b
    xor a                                         ; $7147: $af
    ld b, c                                       ; $7148: $41
    dec hl                                        ; $7149: $2b
    ld e, d                                       ; $714a: $5a
    add c                                         ; $714b: $81
    call nz, $ffa2                                ; $714c: $c4 $a2 $ff
    ret                                           ; $714f: $c9


    ld de, $0d9e                                  ; $7150: $11 $9e $0d
    ld h, c                                       ; $7153: $61
    xor b                                         ; $7154: $a8
    add a                                         ; $7155: $87
    dec [hl]                                      ; $7156: $35
    add hl, sp                                    ; $7157: $39
    ld [hl], h                                    ; $7158: $74
    halt                                          ; $7159: $76
    ld sp, $9a3c                                  ; $715a: $31 $3c $9a
    pop de                                        ; $715d: $d1
    ld a, l                                       ; $715e: $7d
    cp [hl]                                       ; $715f: $be
    rst $00                                       ; $7160: $c7
    halt                                          ; $7161: $76
    nop                                           ; $7162: $00
    sub a                                         ; $7163: $97
    push bc                                       ; $7164: $c5
    add d                                         ; $7165: $82
    ld h, $d7                                     ; $7166: $26 $d7
    rst $28                                       ; $7168: $ef
    rst $20                                       ; $7169: $e7
    ld c, a                                       ; $716a: $4f
    ld d, a                                       ; $716b: $57
    ld l, d                                       ; $716c: $6a
    ld c, h                                       ; $716d: $4c
    ld e, $39                                     ; $716e: $1e $39
    ld [hl], d                                    ; $7170: $72
    db $eb                                        ; $7171: $eb
    call Call_06b_6791                            ; $7172: $cd $91 $67
    cp l                                          ; $7175: $bd
    ld d, b                                       ; $7176: $50
    and l                                         ; $7177: $a5
    dec bc                                        ; $7178: $0b
    adc l                                         ; $7179: $8d
    dec d                                         ; $717a: $15
    jp nc, $f13d                                  ; $717b: $d2 $3d $f1

    ld e, a                                       ; $717e: $5f
    reti                                          ; $717f: $d9


    ld c, a                                       ; $7180: $4f
    inc sp                                        ; $7181: $33
    ld a, [$3ece]                                 ; $7182: $fa $ce $3e
    add $35                                       ; $7185: $c6 $35
    ld e, d                                       ; $7187: $5a
    or $ad                                        ; $7188: $f6 $ad
    ld sp, $97bb                                  ; $718a: $31 $bb $97
    cp d                                          ; $718d: $ba
    push af                                       ; $718e: $f5
    ld [$7e9c], a                                 ; $718f: $ea $9c $7e
    add h                                         ; $7192: $84
    ld b, l                                       ; $7193: $45
    dec d                                         ; $7194: $15
    inc [hl]                                      ; $7195: $34
    or h                                          ; $7196: $b4
    push hl                                       ; $7197: $e5
    cp b                                          ; $7198: $b8
    ld l, h                                       ; $7199: $6c
    adc d                                         ; $719a: $8a
    inc a                                         ; $719b: $3c
    ld l, a                                       ; $719c: $6f
    inc e                                         ; $719d: $1c
    scf                                           ; $719e: $37
    sub [hl]                                      ; $719f: $96
    db $db                                        ; $71a0: $db
    ld c, $37                                     ; $71a1: $0e $37
    sbc b                                         ; $71a3: $98
    or h                                          ; $71a4: $b4
    ei                                            ; $71a5: $fb
    ld a, [$68db]                                 ; $71a6: $fa $db $68
    xor c                                         ; $71a9: $a9
    pop af                                        ; $71aa: $f1
    ld [hl], a                                    ; $71ab: $77
    ld a, [hl+]                                   ; $71ac: $2a
    and h                                         ; $71ad: $a4
    dec hl                                        ; $71ae: $2b
    ld [bc], a                                    ; $71af: $02

jr_06b_71b0:
    ld l, c                                       ; $71b0: $69
    add hl, bc                                    ; $71b1: $09
    ld a, [$707d]                                 ; $71b2: $fa $7d $70
    sub l                                         ; $71b5: $95
    ld hl, $7e0c                                  ; $71b6: $21 $0c $7e
    ld [hl], h                                    ; $71b9: $74
    db $eb                                        ; $71ba: $eb
    adc l                                         ; $71bb: $8d
    rst $18                                       ; $71bc: $df
    jp hl                                         ; $71bd: $e9


    db $d3                                        ; $71be: $d3
    rst $08                                       ; $71bf: $cf
    dec a                                         ; $71c0: $3d
    ld e, e                                       ; $71c1: $5b
    ld e, l                                       ; $71c2: $5d

jr_06b_71c3:
    ld [hl], d                                    ; $71c3: $72
    and a                                         ; $71c4: $a7
    ld l, [hl]                                    ; $71c5: $6e
    rlca                                          ; $71c6: $07
    rra                                           ; $71c7: $1f
    dec bc                                        ; $71c8: $0b
    ld l, l                                       ; $71c9: $6d
    sbc l                                         ; $71ca: $9d
    ldh [$a7], a                                  ; $71cb: $e0 $a7
    pop hl                                        ; $71cd: $e1
    ld e, b                                       ; $71ce: $58
    push hl                                       ; $71cf: $e5
    cp b                                          ; $71d0: $b8
    ret nc                                        ; $71d1: $d0

    ld h, b                                       ; $71d2: $60
    call $3be8                                    ; $71d3: $cd $e8 $3b
    ei                                            ; $71d6: $fb
    jr jr_06b_71b0                                ; $71d7: $18 $d7

    ld l, b                                       ; $71d9: $68
    reti                                          ; $71da: $d9


    or a                                          ; $71db: $b7
    add $ec                                       ; $71dc: $c6 $ec
    ld e, [hl]                                    ; $71de: $5e
    ld [$b7d6], a                                 ; $71df: $ea $d6 $b7
    ld b, $dd                                     ; $71e2: $06 $dd
    cp c                                          ; $71e4: $b9
    ld h, d                                       ; $71e5: $62
    ld [hl-], a                                   ; $71e6: $32
    ld e, h                                       ; $71e7: $5c
    ld a, [hl-]                                   ; $71e8: $3a
    nop                                           ; $71e9: $00
    rst $10                                       ; $71ea: $d7
    and b                                         ; $71eb: $a0
    ld h, l                                       ; $71ec: $65
    ld l, d                                       ; $71ed: $6a
    cp $9d                                        ; $71ee: $fe $9d
    ld b, [hl]                                    ; $71f0: $46
    ld h, [hl]                                    ; $71f1: $66
    pop af                                        ; $71f2: $f1
    inc [hl]                                      ; $71f3: $34
    ld [hl+], a                                   ; $71f4: $22
    rst $00                                       ; $71f5: $c7
    xor c                                         ; $71f6: $a9
    ld e, a                                       ; $71f7: $5f
    ld e, c                                       ; $71f8: $59
    call z, $b365                                 ; $71f9: $cc $65 $b3
    dec e                                         ; $71fc: $1d
    sbc a                                         ; $71fd: $9f
    inc h                                         ; $71fe: $24
    ld [hl], $64                                  ; $71ff: $36 $64
    add $d6                                       ; $7201: $c6 $d6
    ld l, e                                       ; $7203: $6b
    ret nc                                        ; $7204: $d0

jr_06b_7205:
    ld [hl-], a                                   ; $7205: $32
    dec [hl]                                      ; $7206: $35
    ld [hl-], a                                   ; $7207: $32
    adc e                                         ; $7208: $8b
    and a                                         ; $7209: $a7
    sub d                                         ; $720a: $92
    ld d, $79                                     ; $720b: $16 $79
    dec de                                        ; $720d: $1b
    push af                                       ; $720e: $f5
    ld l, h                                       ; $720f: $6c
    jr nz, jr_06b_71c3                            ; $7210: $20 $b1

    ld sp, hl                                     ; $7212: $f9
    ld e, $6d                                     ; $7213: $1e $6d
    ld e, $ed                                     ; $7215: $1e $ed
    sbc a                                         ; $7217: $9f
    ld b, [hl]                                    ; $7218: $46
    scf                                           ; $7219: $37
    jp c, Jump_06b_7f3c                           ; $721a: $da $3c $7f

    jr c, jr_06b_7205                             ; $721d: $38 $e6

    ret z                                         ; $721f: $c8

    db $ed                                        ; $7220: $ed
    nop                                           ; $7221: $00
    rst $20                                       ; $7222: $e7
    xor c                                         ; $7223: $a9
    and c                                         ; $7224: $a1
    ld d, c                                       ; $7225: $51
    ld l, $9d                                     ; $7226: $2e $9d
    cp $99                                        ; $7228: $fe $99
    dec a                                         ; $722a: $3d
    xor l                                         ; $722b: $ad
    call nc, $ed48                                ; $722c: $d4 $48 $ed
    cp [hl]                                       ; $722f: $be
    cp $36                                        ; $7230: $fe $36
    ld e, d                                       ; $7232: $5a
    rst $08                                       ; $7233: $cf
    cp $67                                        ; $7234: $fe $67
    adc a                                         ; $7236: $8f
    ld l, b                                       ; $7237: $68
    ld [$ff43], sp                                ; $7238: $08 $43 $ff
    inc hl                                        ; $723b: $23
    rst $08                                       ; $723c: $cf
    or [hl]                                       ; $723d: $b6
    inc bc                                        ; $723e: $03
    rra                                           ; $723f: $1f
    adc e                                         ; $7240: $8b
    dec hl                                        ; $7241: $2b
    cpl                                           ; $7242: $2f
    inc h                                         ; $7243: $24
    db $dd                                        ; $7244: $dd
    jp c, $d4f3                                   ; $7245: $da $f3 $d4

    ld c, b                                       ; $7248: $48
    scf                                           ; $7249: $37
    dec c                                         ; $724a: $0d
    inc h                                         ; $724b: $24
    ld d, [hl]                                    ; $724c: $56
    rst $28                                       ; $724d: $ef
    ld l, c                                       ; $724e: $69
    jr c, @-$54                                   ; $724f: $38 $aa

    ld [hl], b                                    ; $7251: $70
    and e                                         ; $7252: $a3
    dec c                                         ; $7253: $0d
    ld [hl], c                                    ; $7254: $71
    add d                                         ; $7255: $82
    push af                                       ; $7256: $f5
    jp hl                                         ; $7257: $e9


    ld h, a                                       ; $7258: $67
    sbc [hl]                                      ; $7259: $9e
    xor l                                         ; $725a: $ad
    ld l, $b9                                     ; $725b: $2e $b9
    ld d, e                                       ; $725d: $53
    dec de                                        ; $725e: $1b

jr_06b_725f:
    adc [hl]                                      ; $725f: $8e
    sub l                                         ; $7260: $95
    dec sp                                        ; $7261: $3b
    ld [hl], l                                    ; $7262: $75
    dec sp                                        ; $7263: $3b
    nop                                           ; $7264: $00
    scf                                           ; $7265: $37
    ld b, a                                       ; $7266: $47
    sbc [hl]                                      ; $7267: $9e
    ld d, l                                       ; $7268: $55
    ld e, c                                       ; $7269: $59
    ld c, a                                       ; $726a: $4f
    cp c                                          ; $726b: $b9
    db $fc                                        ; $726c: $fc
    ld c, d                                       ; $726d: $4a
    dec c                                         ; $726e: $0d
    rst $00                                       ; $726f: $c7
    adc d                                         ; $7270: $8a
    ld b, b                                       ; $7271: $40

Call_06b_7272:
    ld [c], a                                     ; $7272: $e2
    ld c, [hl]                                    ; $7273: $4e
    db $ed                                        ; $7274: $ed
    cp [hl]                                       ; $7275: $be
    cp $36                                        ; $7276: $fe $36
    ld a, [$01c6]                                 ; $7278: $fa $c6 $01
    ld l, a                                       ; $727b: $6f
    pop de                                        ; $727c: $d1
    dec a                                         ; $727d: $3d
    pop af                                        ; $727e: $f1
    ld e, a                                       ; $727f: $5f
    reti                                          ; $7280: $d9


    ld c, a                                       ; $7281: $4f
    rst $28                                       ; $7282: $ef
    db $ec                                        ; $7283: $ec
    dec sp                                        ; $7284: $3b
    ei                                            ; $7285: $fb
    jr jr_06b_725f                                ; $7286: $18 $d7

    ld l, b                                       ; $7288: $68
    reti                                          ; $7289: $d9


    or a                                          ; $728a: $b7
    add $ec                                       ; $728b: $c6 $ec
    ld e, [hl]                                    ; $728d: $5e
    ld [$8fd6], a                                 ; $728e: $ea $d6 $8f
    ld a, [hl]                                    ; $7291: $7e
    and a                                         ; $7292: $a7
    call nc, Call_000_3708                        ; $7293: $d4 $08 $37
    ld e, d                                       ; $7296: $5a
    ld b, h                                       ; $7297: $44
    ld h, [hl]                                    ; $7298: $66
    rst $08                                       ; $7299: $cf
    db $ec                                        ; $729a: $ec
    and a                                         ; $729b: $a7
    ld a, c                                       ; $729c: $79
    ld [$31c6], a                                 ; $729d: $ea $c6 $31
    rst $00                                       ; $72a0: $c7
    jp hl                                         ; $72a1: $e9


    or [hl]                                       ; $72a2: $b6
    ld l, l                                       ; $72a3: $6d
    dec c                                         ; $72a4: $0d
    adc l                                         ; $72a5: $8d
    ld [hl], d                                    ; $72a6: $72
    add hl, hl                                    ; $72a7: $29
    call c, Call_000_2168                         ; $72a8: $dc $68 $21
    ld hl, $5584                                  ; $72ab: $21 $84 $55
    adc [hl]                                      ; $72ae: $8e
    ld l, e                                       ; $72af: $6b
    ld [hl], d                                    ; $72b0: $72
    add sp, -$36                                  ; $72b1: $e8 $ca
    ld [hl+], a                                   ; $72b3: $22
    ld l, d                                       ; $72b4: $6a
    call nz, $dfc5                                ; $72b5: $c4 $c5 $df
    xor c                                         ; $72b8: $a9
    ld h, a                                       ; $72b9: $67
    and e                                         ; $72ba: $a3
    pop hl                                        ; $72bb: $e1
    ld [hl+], a                                   ; $72bc: $22
    or h                                          ; $72bd: $b4
    ld [hl], h                                    ; $72be: $74
    call Call_000_3aa3                            ; $72bf: $cd $a3 $3a
    jp c, $fd7d                                   ; $72c2: $da $7d $fd

    ld l, l                                       ; $72c5: $6d
    ld [hl], h                                    ; $72c6: $74
    db $eb                                        ; $72c7: $eb
    push af                                       ; $72c8: $f5
    or c                                          ; $72c9: $b1
    adc d                                         ; $72ca: $8a
    ldh a, [$1f]                                  ; $72cb: $f0 $1f
    inc de                                        ; $72cd: $13
    db $f4                                        ; $72ce: $f4
    ccf                                           ; $72cf: $3f
    ld a, e                                       ; $72d0: $7b
    ld h, h                                       ; $72d1: $64
    dec a                                         ; $72d2: $3d
    jp $ba59                                      ; $72d3: $c3 $59 $ba


    dec e                                         ; $72d6: $1d
    rra                                           ; $72d7: $1f
    rst $28                                       ; $72d8: $ef
    pop bc                                        ; $72d9: $c1
    add d                                         ; $72da: $82
    ld [hl-], a                                   ; $72db: $32
    ld d, l                                       ; $72dc: $55
    daa                                           ; $72dd: $27
    push af                                       ; $72de: $f5
    ld l, l                                       ; $72df: $6d
    add e                                         ; $72e0: $83
    sbc h                                         ; $72e1: $9c
    ld e, [hl]                                    ; $72e2: $5e
    jp $9a2e                                      ; $72e3: $c3 $2e $9a


    sbc a                                         ; $72e6: $9f
    or [hl]                                       ; $72e7: $b6
    or $e6                                        ; $72e8: $f6 $e6
    ret z                                         ; $72ea: $c8

    or e                                          ; $72eb: $b3
    ld e, [hl]                                    ; $72ec: $5e
    ld l, b                                       ; $72ed: $68
    ld [hl], d                                    ; $72ee: $72
    push bc                                       ; $72ef: $c5
    sbc [hl]                                      ; $72f0: $9e
    ld a, [c]                                     ; $72f1: $f2
    call nc, $57b3                                ; $72f2: $d4 $b3 $57
    rst $20                                       ; $72f5: $e7
    db $f4                                        ; $72f6: $f4

Jump_06b_72f7:
    inc hl                                        ; $72f7: $23
    inc l                                         ; $72f8: $2c
    ld [$071b], a                                 ; $72f9: $ea $1b $07
    rst $20                                       ; $72fc: $e7
    xor c                                         ; $72fd: $a9
    ld c, d                                       ; $72fe: $4a
    db $e3                                        ; $72ff: $e3
    ld a, [hl+]                                   ; $7300: $2a
    ld e, l                                       ; $7301: $5d
    add l                                         ; $7302: $85
    add $3f                                       ; $7303: $c6 $3f
    or a                                          ; $7305: $b7
    inc bc                                        ; $7306: $03
    rst $20                                       ; $7307: $e7
    xor c                                         ; $7308: $a9
    ld de, $784e                                  ; $7309: $11 $4e $78
    pop bc                                        ; $730c: $c1
    ld l, l                                       ; $730d: $6d
    db $ed                                        ; $730e: $ed

jr_06b_730f:
    ld a, c                                       ; $730f: $79
    ld [$f57f], a                                 ; $7310: $ea $7f $f5
    ccf                                           ; $7313: $3f
    ld a, [c]                                     ; $7314: $f2
    xor h                                         ; $7315: $ac
    ld [c], a                                     ; $7316: $e2
    ld sp, hl                                     ; $7317: $f9
    sbc [hl]                                      ; $7318: $9e
    sub l                                         ; $7319: $95
    db $f4                                        ; $731a: $f4
    ld d, e                                       ; $731b: $53
    add hl, sp                                    ; $731c: $39
    xor [hl]                                      ; $731d: $ae
    ld [$ee24], sp                                ; $731e: $08 $24 $ee
    xor h                                         ; $7321: $ac
    ld [hl], d                                    ; $7322: $72
    rst $38                                       ; $7323: $ff
    db $e3                                        ; $7324: $e3
    ld b, h                                       ; $7325: $44
    daa                                           ; $7326: $27
    jr z, jr_06b_7386                             ; $7327: $28 $5d

    ld l, b                                       ; $7329: $68
    inc a                                         ; $732a: $3c
    pop bc                                        ; $732b: $c1
    ld c, a                                       ; $732c: $4f
    dec a                                         ; $732d: $3d
    ld c, d                                       ; $732e: $4a
    sub l                                         ; $732f: $95
    or e                                          ; $7330: $b3
    ld b, e                                       ; $7331: $43
    ret nc                                        ; $7332: $d0

    xor e                                         ; $7333: $ab

jr_06b_7334:
    jr c, jr_06b_730f                             ; $7334: $38 $d9

    ld a, [c]                                     ; $7336: $f2
    db $db                                        ; $7337: $db
    ld bc, $a9e7                                  ; $7338: $01 $e7 $a9
    and a                                         ; $733b: $a7
    pop de                                        ; $733c: $d1
    jr c, jr_06b_7334                             ; $733d: $38 $f5

    db $d3                                        ; $733f: $d3
    ld c, a                                       ; $7340: $4f
    rst $28                                       ; $7341: $ef
    rla                                           ; $7342: $17
    ld [hl], d                                    ; $7343: $72
    or [hl]                                       ; $7344: $b6
    inc bc                                        ; $7345: $03
    rst $28                                       ; $7346: $ef
    adc [hl]                                      ; $7347: $8e
    ld b, [hl]                                    ; $7348: $46
    cp h                                          ; $7349: $bc
    pop de                                        ; $734a: $d1
    sbc [hl]                                      ; $734b: $9e
    rst $28                                       ; $734c: $ef
    ld l, h                                       ; $734d: $6c
    cp $9d                                        ; $734e: $fe $9d
    ld e, [hl]                                    ; $7350: $5e
    xor b                                         ; $7351: $a8
    inc e                                         ; $7352: $1c
    scf                                           ; $7353: $37
    call $a8f7                                    ; $7354: $cd $f7 $a8
    and b                                         ; $7357: $a0
    rst $38                                       ; $7358: $ff
    sub c                                         ; $7359: $91
    ld h, a                                       ; $735a: $67
    ld d, l                                       ; $735b: $55
    ld [$f5b9], sp                                ; $735c: $08 $b9 $f5
    ld a, h                                       ; $735f: $7c
    ld h, a                                       ; $7360: $67
    cpl                                           ; $7361: $2f
    inc [hl]                                      ; $7362: $34
    sub b                                         ; $7363: $90
    and b                                         ; $7364: $a0
    ld l, h                                       ; $7365: $6c
    db $fc                                        ; $7366: $fc
    sbc l                                         ; $7367: $9d
    ld e, d                                       ; $7368: $5a
    ld e, d                                       ; $7369: $5a
    xor [hl]                                      ; $736a: $ae
    add c                                         ; $736b: $81
    add h                                         ; $736c: $84
    inc e                                         ; $736d: $1c
    and a                                         ; $736e: $a7
    ret                                           ; $736f: $c9


    dec [hl]                                      ; $7370: $35
    jp c, Jump_06b_5ba4                           ; $7371: $da $a4 $5b

    ret c                                         ; $7374: $d8

    jp c, $b0cf                                   ; $7375: $da $cf $b0

    rst $38                                       ; $7378: $ff
    ld a, c                                       ; $7379: $79
    cp e                                          ; $737a: $bb
    pop hl                                        ; $737b: $e1
    ld a, [de]                                    ; $737c: $1a
    db $db                                        ; $737d: $db
    ld a, [$38d6]                                 ; $737e: $fa $d6 $38
    ld b, c                                       ; $7381: $41
    inc hl                                        ; $7382: $23
    ei                                            ; $7383: $fb
    rst $20                                       ; $7384: $e7
    rst $30                                       ; $7385: $f7

jr_06b_7386:
    ld d, e                                       ; $7386: $53
    rst $08                                       ; $7387: $cf
    ld [hl], b                                    ; $7388: $70
    sub [hl]                                      ; $7389: $96
    ld l, [hl]                                    ; $738a: $6e
    rlca                                          ; $738b: $07
    ld l, a                                       ; $738c: $6f
    pop de                                        ; $738d: $d1
    dec a                                         ; $738e: $3d
    pop af                                        ; $738f: $f1
    ld e, a                                       ; $7390: $5f
    reti                                          ; $7391: $d9


    ld c, a                                       ; $7392: $4f
    ld d, c                                       ; $7393: $51
    ld l, d                                       ; $7394: $6a
    call nz, $dfc5                                ; $7395: $c4 $c5 $df
    xor c                                         ; $7398: $a9
    ld h, a                                       ; $7399: $67
    ld h, l                                       ; $739a: $65
    ld [hl-], a                                   ; $739b: $32
    ld [$a8ea], sp                                ; $739c: $08 $ea $a8
    ld l, [hl]                                    ; $739f: $6e
    ld a, [$f667]                                 ; $73a0: $fa $67 $f6
    db $d3                                        ; $73a3: $d3
    ld b, b                                       ; $73a4: $40
    ld h, d                                       ; $73a5: $62
    rst $38                                       ; $73a6: $ff
    inc hl                                        ; $73a7: $23
    rst $08                                       ; $73a8: $cf
    sbc d                                         ; $73a9: $9a
    ld a, a                                       ; $73aa: $7f
    and a                                         ; $73ab: $a7
    call nc, Call_06b_5c18                        ; $73ac: $d4 $18 $5c
    rlca                                          ; $73af: $07
    add hl, hl                                    ; $73b0: $29
    ld c, [hl]                                    ; $73b1: $4e
    ld [de], a                                    ; $73b2: $12
    ld a, [hl]                                    ; $73b3: $7e
    or [hl]                                       ; $73b4: $b6
    inc bc                                        ; $73b5: $03
    rra                                           ; $73b6: $1f
    scf                                           ; $73b7: $37
    sub b                                         ; $73b8: $90
    ret c                                         ; $73b9: $d8

    rst $38                                       ; $73ba: $ff
    ret z                                         ; $73bb: $c8

    or e                                          ; $73bc: $b3
    adc d                                         ; $73bd: $8a
    ld [hl], b                                    ; $73be: $70
    cp e                                          ; $73bf: $bb
    sbc c                                         ; $73c0: $99
    xor d                                         ; $73c1: $aa
    db $ec                                        ; $73c2: $ec
    sbc [hl]                                      ; $73c3: $9e
    ld c, [hl]                                    ; $73c4: $4e
    or b                                          ; $73c5: $b0
    scf                                           ; $73c6: $37
    ld c, $e7                                     ; $73c7: $0e $e7
    xor c                                         ; $73c9: $a9
    ld [hl-], a                                   ; $73ca: $32
    reti                                          ; $73cb: $d9


    inc d                                         ; $73cc: $14
    add c                                         ; $73cd: $81
    call nz, $da9d                                ; $73ce: $c4 $9d $da
    ld b, b                                       ; $73d1: $40
    ld h, d                                       ; $73d2: $62
    sub l                                         ; $73d3: $95
    ld [hl], l                                    ; $73d4: $75
    sub b                                         ; $73d5: $90
    ld [c], a                                     ; $73d6: $e2
    inc h                                         ; $73d7: $24
    pop hl                                        ; $73d8: $e1
    sbc d                                         ; $73d9: $9a
    and a                                         ; $73da: $a7
    ld l, a                                       ; $73db: $6f
    ld d, c                                       ; $73dc: $51
    ld c, [hl]                                    ; $73dd: $4e
    rst $18                                       ; $73de: $df
    ld e, [hl]                                    ; $73df: $5e
    jr c, jr_06b_742f                             ; $73e0: $38 $4d

    add $be                                       ; $73e2: $c6 $be
    dec e                                         ; $73e4: $1d

jr_06b_73e5:
    rst $28                                       ; $73e5: $ef
    xor h                                         ; $73e6: $ac
    ld b, b                                       ; $73e7: $40
    ld h, d                                       ; $73e8: $62
    pop de                                        ; $73e9: $d1
    rst $38                                       ; $73ea: $ff
    db $e4                                        ; $73eb: $e4
    ld [$86cf], sp                                ; $73ec: $08 $cf $86
    jr nc, jr_06b_73e5                            ; $73ef: $30 $f4

    ccf                                           ; $73f1: $3f
    ld a, e                                       ; $73f2: $7b
    add h                                         ; $73f3: $84
    ld d, l                                       ; $73f4: $55
    jp hl                                         ; $73f5: $e9


    ld b, d                                       ; $73f6: $42
    ld h, e                                       ; $73f7: $63
    inc bc                                        ; $73f8: $03
    adc c                                         ; $73f9: $89
    dec c                                         ; $73fa: $0d
    and h                                         ; $73fb: $a4
    and l                                         ; $73fc: $a5
    or h                                          ; $73fd: $b4
    db $ed                                        ; $73fe: $ed
    nop                                           ; $73ff: $00
    rst $10                                       ; $7400: $d7
    ld b, a                                       ; $7401: $47
    ld [hl], l                                    ; $7402: $75
    ld a, [$35a7]                                 ; $7403: $fa $a7 $35
    sub b                                         ; $7406: $90
    ld e, b                                       ; $7407: $58
    ld l, d                                       ; $7408: $6a
    inc c                                         ; $7409: $0c
    xor [hl]                                      ; $740a: $ae
    add e                                         ; $740b: $83
    inc d                                         ; $740c: $14
    daa                                           ; $740d: $27
    add hl, bc                                    ; $740e: $09
    ccf                                           ; $740f: $3f
    ld e, e                                       ; $7410: $5b
    ld l, a                                       ; $7411: $6f
    adc [hl]                                      ; $7412: $8e
    inc a                                         ; $7413: $3c
    db $eb                                        ; $7414: $eb
    ld l, c                                       ; $7415: $69
    inc [hl]                                      ; $7416: $34
    jp nz, $1a16                                  ; $7417: $c2 $16 $1a

    ld c, b                                       ; $741a: $48
    inc l                                         ; $741b: $2c
    ld d, e                                       ; $741c: $53
    and a                                         ; $741d: $a7
    ld [hl-], a                                   ; $741e: $32
    add hl, de                                    ; $741f: $19
    ld d, h                                       ; $7420: $54
    ld sp, hl                                     ; $7421: $f9
    add $01                                       ; $7422: $c6 $01
    scf                                           ; $7424: $37
    sub [hl]                                      ; $7425: $96
    inc de                                        ; $7426: $13
    inc [hl]                                      ; $7427: $34
    inc e                                         ; $7428: $1c
    xor e                                         ; $7429: $ab
    ld [$b1ff], sp                                ; $742a: $08 $ff $b1
    xor l                                         ; $742d: $ad
    db $fd                                        ; $742e: $fd

jr_06b_742f:
    inc h                                         ; $742f: $24
    ld hl, $e9c7                                  ; $7430: $21 $c7 $e9
    rra                                           ; $7433: $1f
    xor e                                         ; $7434: $ab
    ld [hl-], a                                   ; $7435: $32
    ld l, c                                       ; $7436: $69
    add h                                         ; $7437: $84
    cp l                                          ; $7438: $bd
    ld [hl], c                                    ; $7439: $71
    nop                                           ; $743a: $00
    rra                                           ; $743b: $1f
    db $fd                                        ; $743c: $fd
    ld c, [hl]                                    ; $743d: $4e
    push bc                                       ; $743e: $c5
    pop bc                                        ; $743f: $c1
    sub l                                         ; $7440: $95
    ld c, c                                       ; $7441: $49
    db $e3                                        ; $7442: $e3
    ld l, h                                       ; $7443: $6c
    db $ed                                        ; $7444: $ed
    db $eb                                        ; $7445: $eb
    ld [hl], l                                    ; $7446: $75
    ld c, h                                       ; $7447: $4c
    push af                                       ; $7448: $f5
    db $fc                                        ; $7449: $fc
    db $d3                                        ; $744a: $d3
    ld a, [hl+]                                   ; $744b: $2a
    sub e                                         ; $744c: $93
    pop bc                                        ; $744d: $c1
    ld a, [de]                                    ; $744e: $1a
    rst $00                                       ; $744f: $c7
    adc a                                         ; $7450: $8f
    ld d, $81                                     ; $7451: $16 $81
    call nz, $da9d                                ; $7453: $c4 $9d $da
    ld b, b                                       ; $7456: $40
    ld h, d                                       ; $7457: $62
    dec e                                         ; $7458: $1d
    dec de                                        ; $7459: $1b
    jp nc, Jump_000_15d3                          ; $745a: $d2 $d3 $15

    rst $18                                       ; $745d: $df
    daa                                           ; $745e: $27
    adc a                                         ; $745f: $8f
    db $ed                                        ; $7460: $ed
    nop                                           ; $7461: $00

Jump_06b_7462:
    scf                                           ; $7462: $37
    sub [hl]                                      ; $7463: $96
    inc de                                        ; $7464: $13
    inc [hl]                                      ; $7465: $34
    inc e                                         ; $7466: $1c
    xor e                                         ; $7467: $ab
    ld [$b1ff], sp                                ; $7468: $08 $ff $b1
    ld c, e                                       ; $746b: $4b
    rlca                                          ; $746c: $07
    rst $10                                       ; $746d: $d7
    ld l, l                                       ; $746e: $6d
    ld [hl], d                                    ; $746f: $72
    inc e                                         ; $7470: $1c
    ld b, c                                       ; $7471: $41
    sub a                                         ; $7472: $97
    add $a9                                       ; $7473: $c6 $a9
    rst $20                                       ; $7475: $e7
    sbc a                                         ; $7476: $9f
    dec d                                         ; $7477: $15
    pop hl                                        ; $7478: $e1
    ld [hl], $ad                                  ; $7479: $36 $ad
    rst $38                                       ; $747b: $ff
    sub c                                         ; $747c: $91
    ld h, a                                       ; $747d: $67
    ld d, l                                       ; $747e: $55
    ld d, [hl]                                    ; $747f: $56
    sbc c                                         ; $7480: $99
    db $e3                                        ; $7481: $e3
    or d                                          ; $7482: $b2
    ld a, [hl-]                                   ; $7483: $3a
    xor $e2                                       ; $7484: $ee $e2
    or c                                          ; $7486: $b1
    db $ed                                        ; $7487: $ed
    nop                                           ; $7488: $00

jr_06b_7489:
    rst $08                                       ; $7489: $cf
    or $26                                        ; $748a: $f6 $26
    dec [hl]                                      ; $748c: $35
    ld d, d                                       ; $748d: $52
    db $eb                                        ; $748e: $eb
    reti                                          ; $748f: $d9


    rst $08                                       ; $7490: $cf
    inc c                                         ; $7491: $0c
    ld b, d                                       ; $7492: $42
    db $ec                                        ; $7493: $ec
    ld [c], a                                     ; $7494: $e2
    add hl, sp                                    ; $7495: $39
    nop                                           ; $7496: $00
    ld c, a                                       ; $7497: $4f
    rst $30                                       ; $7498: $f7
    ld a, [bc]                                    ; $7499: $0a
    ld b, d                                       ; $749a: $42
    call nc, $efb3                                ; $749b: $d4 $b3 $ef
    push hl                                       ; $749e: $e5
    ccf                                           ; $749f: $3f
    dec l                                         ; $74a0: $2d
    rst $08                                       ; $74a1: $cf
    ld bc, $f74f                                  ; $74a2: $01 $4f $f7
    adc d                                         ; $74a5: $8a
    jr jr_06b_7489                                ; $74a6: $18 $e1

    add l                                         ; $74a8: $85
    call nc, $93eb                                ; $74a9: $d4 $eb $93
    ld h, e                                       ; $74ac: $63
    ld a, [c]                                     ; $74ad: $f2
    ld [hl], e                                    ; $74ae: $73
    nop                                           ; $74af: $00
    ld c, a                                       ; $74b0: $4f
    rst $30                                       ; $74b1: $f7
    ld a, [hl-]                                   ; $74b2: $3a
    xor h                                         ; $74b3: $ac
    sbc [hl]                                      ; $74b4: $9e

jr_06b_74b5:
    db $fd                                        ; $74b5: $fd
    jr nc, jr_06b_74b5                            ; $74b6: $30 $fd

    and c                                         ; $74b8: $a1
    rlca                                          ; $74b9: $07
    ld c, a                                       ; $74ba: $4f
    rst $30                                       ; $74bb: $f7
    ld a, [hl-]                                   ; $74bc: $3a
    db $e4                                        ; $74bd: $e4
    ld b, h                                       ; $74be: $44
    sub $b3                                       ; $74bf: $d6 $b3
    rst $20                                       ; $74c1: $e7
    ld [hl], c                                    ; $74c2: $71
    dec b                                         ; $74c3: $05
    ld [de], a                                    ; $74c4: $12
    inc hl                                        ; $74c5: $23
    db $f4                                        ; $74c6: $f4
    nop                                           ; $74c7: $00
    ld c, a                                       ; $74c8: $4f
    rst $30                                       ; $74c9: $f7
    jp z, $efe4                                   ; $74ca: $ca $e4 $ef

    ld d, e                                       ; $74cd: $53
    adc [hl]                                      ; $74ce: $8e
    ld d, e                                       ; $74cf: $53
    rst $08                                       ; $74d0: $cf
    cp [hl]                                       ; $74d1: $be
    ld h, e                                       ; $74d2: $63
    ld d, b                                       ; $74d3: $50
    add hl, sp                                    ; $74d4: $39
    ld a, d                                       ; $74d5: $7a
    nop                                           ; $74d6: $00
    ld c, a                                       ; $74d7: $4f
    rst $30                                       ; $74d8: $f7
    jp z, $efe4                                   ; $74d9: $ca $e4 $ef

    ld d, e                                       ; $74dc: $53
    adc [hl]                                      ; $74dd: $8e
    ld d, e                                       ; $74de: $53
    rst $08                                       ; $74df: $cf
    ld a, [hl]                                    ; $74e0: $7e
    cp b                                          ; $74e1: $b8
    cp $36                                        ; $74e2: $fe $36
    ld a, d                                       ; $74e4: $7a
    nop                                           ; $74e5: $00
    ld c, a                                       ; $74e6: $4f
    rst $30                                       ; $74e7: $f7
    ld a, [bc]                                    ; $74e8: $0a
    halt                                          ; $74e9: $76
    rst $08                                       ; $74ea: $cf
    ld h, l                                       ; $74eb: $65
    cp a                                          ; $74ec: $bf
    ld [hl], e                                    ; $74ed: $73
    nop                                           ; $74ee: $00
    ld c, a                                       ; $74ef: $4f
    rst $30                                       ; $74f0: $f7
    ld h, $6c                                     ; $74f1: $26 $6c
    ld h, l                                       ; $74f3: $65
    ld sp, $2d7a                                  ; $74f4: $31 $7a $2d
    ld hl, sp-$4c                                 ; $74f7: $f8 $b4
    inc h                                         ; $74f9: $24
    ld c, $37                                     ; $74fa: $0e $37
    ld b, a                                       ; $74fc: $47
    sbc [hl]                                      ; $74fd: $9e
    push af                                       ; $74fe: $f5
    ld b, d                                       ; $74ff: $42
    sub e                                         ; $7500: $93
    xor e                                         ; $7501: $ab
    sbc h                                         ; $7502: $9c
    sbc l                                         ; $7503: $9d
    ld [hl], d                                    ; $7504: $72
    ld c, l                                       ; $7505: $4d
    add [hl]                                      ; $7506: $86
    rra                                           ; $7507: $1f
    ld a, e                                       ; $7508: $7b
    and e                                         ; $7509: $a3
    dec a                                         ; $750a: $3d
    ld c, a                                       ; $750b: $4f
    adc l                                         ; $750c: $8d
    call z, $69e2                                 ; $750d: $cc $e2 $69
    ld [hl], d                                    ; $7510: $72
    xor b                                         ; $7511: $a8
    add h                                         ; $7512: $84
    ld b, l                                       ; $7513: $45
    inc [hl]                                      ; $7514: $34
    sub b                                         ; $7515: $90
    ret c                                         ; $7516: $d8

    ld [hl], b                                    ; $7517: $70
    inc a                                         ; $7518: $3c
    xor e                                         ; $7519: $ab
    or h                                          ; $751a: $b4
    ld a, [$32a9]                                 ; $751b: $fa $a9 $32
    ld [hl], l                                    ; $751e: $75
    push hl                                       ; $751f: $e5
    ld c, b                                       ; $7520: $48
    and e                                         ; $7521: $a3
    ld a, [hl+]                                   ; $7522: $2a
    or a                                          ; $7523: $b7
    inc bc                                        ; $7524: $03
    scf                                           ; $7525: $37
    ld b, a                                       ; $7526: $47
    sbc [hl]                                      ; $7527: $9e
    dec [hl]                                      ; $7528: $35
    sub b                                         ; $7529: $90
    ld l, b                                       ; $752a: $68
    push af                                       ; $752b: $f5
    db $eb                                        ; $752c: $eb
    ld [hl], $4d                                  ; $752d: $36 $4d
    ret nc                                        ; $752f: $d0

    db $e4                                        ; $7530: $e4
    ld d, b                                       ; $7531: $50
    add hl, bc                                    ; $7532: $09
    adc e                                         ; $7533: $8b
    xor b                                         ; $7534: $a8
    ld h, a                                       ; $7535: $67
    add l                                         ; $7536: $85
    sub [hl]                                      ; $7537: $96
    ld l, [hl]                                    ; $7538: $6e
    ld b, c                                       ; $7539: $41
    rrc d                                         ; $753a: $cb $0a
    dec l                                         ; $753c: $2d
    db $dd                                        ; $753d: $dd
    ld a, [de]                                    ; $753e: $1a
    xor l                                         ; $753f: $ad
    ld [$746e], sp                                ; $7540: $08 $6e $74
    db $f4                                        ; $7543: $f4
    adc l                                         ; $7544: $8d
    cp [hl]                                       ; $7545: $be
    ld b, l                                       ; $7546: $45
    daa                                           ; $7547: $27
    ld l, b                                       ; $7548: $68
    call nz, $e7fe                                ; $7549: $c4 $fe $e7
    db $ed                                        ; $754c: $ed
    xor l                                         ; $754d: $ad
    rst $10                                       ; $754e: $d7
    ld d, [hl]                                    ; $754f: $56
    ld d, $a3                                     ; $7550: $16 $a3
    ld [hl], d                                    ; $7552: $72
    halt                                          ; $7553: $76
    ld e, [hl]                                    ; $7554: $5e
    db $fc                                        ; $7555: $fc
    sbc l                                         ; $7556: $9d
    ld d, d                                       ; $7557: $52
    ld h, e                                       ; $7558: $63
    ld [hl], b                                    ; $7559: $70
    add l                                         ; $755a: $85
    ld [hl], h                                    ; $755b: $74
    dec c                                         ; $755c: $0d
    add hl, de                                    ; $755d: $19
    ld c, b                                       ; $755e: $48
    call z, $9e68                                 ; $755f: $cc $68 $9e
    cp d                                          ; $7562: $ba
    ld [hl], c                                    ; $7563: $71
    call z, $b671                                 ; $7564: $cc $71 $b6
    inc bc                                        ; $7567: $03
    rst $20                                       ; $7568: $e7
    ld a, [de]                                    ; $7569: $1a
    ld d, c                                       ; $756a: $51
    inc b                                         ; $756b: $04
    jp nc, $85ea                                  ; $756c: $d2 $ea $85

    cp d                                          ; $756f: $ba
    or h                                          ; $7570: $b4
    ld [c], a                                     ; $7571: $e2
    call nc, $e860                                ; $7572: $d4 $60 $e8
    or [hl]                                       ; $7575: $b6
    ld l, l                                       ; $7576: $6d
    cp l                                          ; $7577: $bd
    ret nc                                        ; $7578: $d0

    dec hl                                        ; $7579: $2b
    sla h                                         ; $757a: $cb $24
    ld c, e                                       ; $757c: $4b
    rst $10                                       ; $757d: $d7
    sub b                                         ; $757e: $90
    xor d                                         ; $757f: $aa
    add e                                         ; $7580: $83
    ld c, e                                       ; $7581: $4b
    db $fd                                        ; $7582: $fd
    inc h                                         ; $7583: $24
    pop de                                        ; $7584: $d1
    ld a, [de]                                    ; $7585: $1a
    ld l, l                                       ; $7586: $6d
    inc h                                         ; $7587: $24
    db $ec                                        ; $7588: $ec
    adc l                                         ; $7589: $8d
    inc bc                                        ; $758a: $03
    rra                                           ; $758b: $1f
    scf                                           ; $758c: $37
    sub b                                         ; $758d: $90
    ret c                                         ; $758e: $d8

    rst $38                                       ; $758f: $ff
    ret z                                         ; $7590: $c8

    or e                                          ; $7591: $b3
    ld b, $12                                     ; $7592: $06 $12
    xor l                                         ; $7594: $ad
    pop hl                                        ; $7595: $e1
    ld e, b                                       ; $7596: $58
    cp c                                          ; $7597: $b9
    db $e3                                        ; $7598: $e3
    adc l                                         ; $7599: $8d
    inc bc                                        ; $759a: $03
    sbc a                                         ; $759b: $9f
    dec sp                                        ; $759c: $3b
    inc [hl]                                      ; $759d: $34
    and h                                         ; $759e: $a4
    scf                                           ; $759f: $37
    ld d, h                                       ; $75a0: $54
    ret z                                         ; $75a1: $c8

    db $db                                        ; $75a2: $db
    inc bc                                        ; $75a3: $03
    db $db                                        ; $75a4: $db
    jp c, Jump_06b_72f7                           ; $75a5: $da $f7 $72

    and h                                         ; $75a8: $a4
    ld d, c                                       ; $75a9: $51
    dec d                                         ; $75aa: $15
    ld a, [hl]                                    ; $75ab: $7e
    sbc $38                                       ; $75ac: $de $38
    nop                                           ; $75ae: $00
    rst $10                                       ; $75af: $d7
    and b                                         ; $75b0: $a0
    ld h, l                                       ; $75b1: $65
    ld l, d                                       ; $75b2: $6a
    cp $9d                                        ; $75b3: $fe $9d
    ld b, [hl]                                    ; $75b5: $46
    ld h, [hl]                                    ; $75b6: $66
    pop af                                        ; $75b7: $f1
    inc [hl]                                      ; $75b8: $34
    db $d3                                        ; $75b9: $d3
    ld [hl], l                                    ; $75ba: $75
    ld sp, hl                                     ; $75bb: $f9
    dec bc                                        ; $75bc: $0b
    dec bc                                        ; $75bd: $0b
    push af                                       ; $75be: $f5
    db $d3                                        ; $75bf: $d3
    ld b, b                                       ; $75c0: $40
    ld h, d                                       ; $75c1: $62
    cpl                                           ; $75c2: $2f
    ld [hl], h                                    ; $75c3: $74
    xor c                                         ; $75c4: $a9
    adc $76                                       ; $75c5: $ce $76
    nop                                           ; $75c7: $00
    ld d, a                                       ; $75c8: $57
    sbc l                                         ; $75c9: $9d
    inc de                                        ; $75ca: $13
    call nc, $cff3                                ; $75cb: $d4 $f3 $cf
    ld a, [hl+]                                   ; $75ce: $2a
    xor l                                         ; $75cf: $ad
    ret                                           ; $75d0: $c9


    dec [hl]                                      ; $75d1: $35
    rst $08                                       ; $75d2: $cf
    rra                                           ; $75d3: $1f
    ld [hl], c                                    ; $75d4: $71
    or [hl]                                       ; $75d5: $b6
    or $6d                                        ; $75d6: $f6 $6d
    xor d                                         ; $75d8: $aa
    ld c, h                                       ; $75d9: $4c
    ld a, e                                       ; $75da: $7b
    ret z                                         ; $75db: $c8

    add $b3                                       ; $75dc: $c6 $b3
    daa                                           ; $75de: $27
    or $69                                        ; $75df: $f6 $69
    ld c, b                                       ; $75e1: $48
    adc e                                         ; $75e2: $8b
    ret                                           ; $75e3: $c9


    add h                                         ; $75e4: $84
    ldh a, [$b3]                                  ; $75e5: $f0 $b3
    dec e                                         ; $75e7: $1d
    rst $10                                       ; $75e8: $d7
    jp nc, Jump_06b_538a                          ; $75e9: $d2 $8a $53

    ld hl, $a09d                                  ; $75ec: $21 $9d $a0
    ld d, a                                       ; $75ef: $57
    ld h, c                                       ; $75f0: $61
    or $d3                                        ; $75f1: $f6 $d3
    sub $7e                                       ; $75f3: $d6 $7e
    ld b, [hl]                                    ; $75f5: $46
    ld d, a                                       ; $75f6: $57
    cp l                                          ; $75f7: $bd
    and a                                         ; $75f8: $a7
    ld c, $4b                                     ; $75f9: $0e $4b
    sbc e                                         ; $75fb: $9b
    inc e                                         ; $75fc: $1c
    ld a, [hl+]                                   ; $75fd: $2a
    ld h, a                                       ; $75fe: $67
    jp hl                                         ; $75ff: $e9


    jp z, Jump_06b_7462                           ; $7600: $ca $62 $74

    db $db                                        ; $7603: $db
    or [hl]                                       ; $7604: $b6

jr_06b_7605:
    cp [hl]                                       ; $7605: $be
    jp $dd7d                                      ; $7606: $c3 $7d $dd


    xor $e5                                       ; $7609: $ee $e5
    cp h                                          ; $760b: $bc
    cp $34                                        ; $760c: $fe $34
    dec c                                         ; $760e: $0d
    or [hl]                                       ; $760f: $b6
    dec [hl]                                      ; $7610: $35
    sub a                                         ; $7611: $97
    ld c, $e7                                     ; $7612: $0e $e7
    dec sp                                        ; $7614: $3b
    ld a, d                                       ; $7615: $7a
    and c                                         ; $7616: $a1
    ei                                            ; $7617: $fb
    jp z, $5b1e                                   ; $7618: $ca $1e $5b

    ei                                            ; $761b: $fb
    ld c, c                                       ; $761c: $49
    jp nz, $69de                                  ; $761d: $c2 $de $69

    ld e, $c7                                     ; $7620: $1e $c7
    ld a, d                                       ; $7622: $7a
    xor $78                                       ; $7623: $ee $78
    db $e3                                        ; $7625: $e3
    nop                                           ; $7626: $00
    rst $20                                       ; $7627: $e7
    ld a, [de]                                    ; $7628: $1a
    pop de                                        ; $7629: $d1
    dec bc                                        ; $762a: $0b
    dec a                                         ; $762b: $3d
    rst $30                                       ; $762c: $f7
    ccf                                           ; $762d: $3f
    xor [hl]                                      ; $762e: $ae
    inc de                                        ; $762f: $13
    ld [hl], l                                    ; $7630: $75
    db $eb                                        ; $7631: $eb
    ld h, a                                       ; $7632: $67
    db $e3                                        ; $7633: $e3
    ld b, a                                       ; $7634: $47
    dec sp                                        ; $7635: $3b
    jp c, Jump_06b_6c13                           ; $7636: $da $13 $6c

    ld [c], a                                     ; $7639: $e2
    ld l, b                                       ; $763a: $68
    inc bc                                        ; $763b: $03
    adc c                                         ; $763c: $89
    ld b, [hl]                                    ; $763d: $46
    ld d, a                                       ; $763e: $57
    add hl, sp                                    ; $763f: $39
    sub [hl]                                      ; $7640: $96
    cp [hl]                                       ; $7641: $be
    add a                                         ; $7642: $87
    ld a, [bc]                                    ; $7643: $0a
    xor d                                         ; $7644: $aa
    cp a                                          ; $7645: $bf
    ld d, e                                       ; $7646: $53
    sub a                                         ; $7647: $97
    ld d, [hl]                                    ; $7648: $56
    sbc h                                         ; $7649: $9c
    sbc $1f                                       ; $764a: $de $1f
    cp c                                          ; $764c: $b9
    ld d, h                                       ; $764d: $54
    ret nc                                        ; $764e: $d0

    sbc l                                         ; $764f: $9d
    ld a, a                                       ; $7650: $7f
    cp b                                          ; $7651: $b8
    ld c, d                                       ; $7652: $4a
    ld e, b                                       ; $7653: $58
    add h                                         ; $7654: $84
    sub [hl]                                      ; $7655: $96
    adc l                                         ; $7656: $8d
    ret                                           ; $7657: $c9


    ld c, a                                       ; $7658: $4f
    and a                                         ; $7659: $a7
    ld c, $4b                                     ; $765a: $0e $4b
    or a                                          ; $765c: $b7
    inc bc                                        ; $765d: $03
    rra                                           ; $765e: $1f
    dec bc                                        ; $765f: $0b
    ld l, l                                       ; $7660: $6d
    sbc l                                         ; $7661: $9d
    ldh [$e7], a                                  ; $7662: $e0 $e7
    jp nc, Jump_06b_6f01                          ; $7664: $d2 $01 $6f

    pop de                                        ; $7667: $d1
    add hl, bc                                    ; $7668: $09
    ld a, [hl+]                                   ; $7669: $2a
    ld e, $43                                     ; $766a: $1e $43
    dec a                                         ; $766c: $3d
    cp e                                          ; $766d: $bb
    xor h                                         ; $766e: $ac
    ret z                                         ; $766f: $c8

    ld e, $d9                                     ; $7670: $1e $d9
    rst $08                                       ; $7672: $cf
    halt                                          ; $7673: $76
    nop                                           ; $7674: $00
    rst $20                                       ; $7675: $e7
    ld a, [de]                                    ; $7676: $1a
    ld e, c                                       ; $7677: $59
    pop de                                        ; $7678: $d1
    xor h                                         ; $7679: $ac
    ld h, $57                                     ; $767a: $26 $57
    pop hl                                        ; $767c: $e1
    cp b                                          ; $767d: $b8
    jp z, $bc71                                   ; $767e: $ca $71 $bc

    jr c, jr_06b_7605                             ; $7681: $38 $82

    ld e, [hl]                                    ; $7683: $5e
    add l                                         ; $7684: $85
    reti                                          ; $7685: $d9


    ld c, a                                       ; $7686: $4f
    ld e, e                                       ; $7687: $5b
    ei                                            ; $7688: $fb
    or $59                                        ; $7689: $f6 $59
    sub e                                         ; $768b: $93
    ld b, e                                       ; $768c: $43
    ld h, a                                       ; $768d: $67
    rla                                           ; $768e: $17
    jp $19a3                                      ; $768f: $c3 $a3 $19


    db $dd                                        ; $7692: $dd
    sub a                                         ; $7693: $97
    ld b, [hl]                                    ; $7694: $46
    inc [hl]                                      ; $7695: $34
    sub b                                         ; $7696: $90
    ld e, b                                       ; $7697: $58
    and [hl]                                      ; $7698: $a6
    ld b, [hl]                                    ; $7699: $46
    sub $73                                       ; $769a: $d6 $73
    sub l                                         ; $769c: $95
    db $fd                                        ; $769d: $fd
    rlca                                          ; $769e: $07
    ld d, a                                       ; $769f: $57
    adc [hl]                                      ; $76a0: $8e
    dec bc                                        ; $76a1: $0b
    dec c                                         ; $76a2: $0d
    sub $a9                                       ; $76a3: $d6 $a9
    ld d, c                                       ; $76a5: $51
    db $e3                                        ; $76a6: $e3
    call nc, $954f                                ; $76a7: $d4 $4f $95
    xor c                                         ; $76aa: $a9
    ld c, $91                                     ; $76ab: $0e $91
    or [hl]                                       ; $76ad: $b6
    or b                                          ; $76ae: $b0
    ld l, a                                       ; $76af: $6f
    rlca                                          ; $76b0: $07
    rra                                           ; $76b1: $1f
    rst $28                                       ; $76b2: $ef
    pop bc                                        ; $76b3: $c1
    add d                                         ; $76b4: $82
    ld d, d                                       ; $76b5: $52
    inc hl                                        ; $76b6: $23
    ld a, e                                       ; $76b7: $7b
    and c                                         ; $76b8: $a1
    db $d3                                        ; $76b9: $d3
    di                                            ; $76ba: $f3
    ld e, e                                       ; $76bb: $5b
    and c                                         ; $76bc: $a1
    ld d, c                                       ; $76bd: $51
    ld [hl], l                                    ; $76be: $75
    ld [$abd9], a                                 ; $76bf: $ea $d9 $ab
    ld [hl], e                                    ; $76c2: $73
    ld a, [$1611]                                 ; $76c3: $fa $11 $16
    push af                                       ; $76c6: $f5
    adc l                                         ; $76c7: $8d
    inc bc                                        ; $76c8: $03
    scf                                           ; $76c9: $37
    sub [hl]                                      ; $76ca: $96
    inc de                                        ; $76cb: $13
    sub h                                         ; $76cc: $94
    ld a, [de]                                    ; $76cd: $1a
    ld e, c                                       ; $76ce: $59
    ld b, a                                       ; $76cf: $47
    ld [hl], l                                    ; $76d0: $75
    or e                                          ; $76d1: $b3
    push af                                       ; $76d2: $f5
    ld a, [de]                                    ; $76d3: $1a
    or h                                          ; $76d4: $b4
    db $d3                                        ; $76d5: $d3
    ld b, b                                       ; $76d6: $40
    ld h, d                                       ; $76d7: $62
    cpl                                           ; $76d8: $2f
    ld [hl], h                                    ; $76d9: $74
    xor c                                         ; $76da: $a9
    ld c, [hl]                                    ; $76db: $4e
    inc sp                                        ; $76dc: $33
    xor d                                         ; $76dd: $aa
    add hl, bc                                    ; $76de: $09
    adc l                                         ; $76df: $8d
    call nc, $3788                                ; $76e0: $d4 $88 $37
    ld a, d                                       ; $76e3: $7a
    ld [hl], e                                    ; $76e4: $73
    db $e4                                        ; $76e5: $e4

jr_06b_76e6:
    ld e, c                                       ; $76e6: $59
    cpl                                           ; $76e7: $2f
    ld [hl], h                                    ; $76e8: $74
    db $db                                        ; $76e9: $db
    or [hl]                                       ; $76ea: $b6
    ld [hl], d                                    ; $76eb: $72
    rst $20                                       ; $76ec: $e7
    dec de                                        ; $76ed: $1b
    rlca                                          ; $76ee: $07
    rst $28                                       ; $76ef: $ef
    adc a                                         ; $76f0: $8f
    sbc l                                         ; $76f1: $9d
    ld e, b                                       ; $76f2: $58
    or $1d                                        ; $76f3: $f6 $1d
    and e                                         ; $76f5: $a3
    rla                                           ; $76f6: $17
    db $f4                                        ; $76f7: $f4
    ccf                                           ; $76f8: $3f
    ld a, [c]                                     ; $76f9: $f2
    ld c, h                                       ; $76fa: $4c
    ei                                            ; $76fb: $fb
    ld e, a                                       ; $76fc: $5f
    ld b, $d7                                     ; $76fd: $06 $d7
    db $eb                                        ; $76ff: $eb
    inc [hl]                                      ; $7700: $34

jr_06b_7701:
    ld sp, hl                                     ; $7701: $f9
    db $d3                                        ; $7702: $d3

jr_06b_7703:
    dec de                                        ; $7703: $1b
    rlca                                          ; $7704: $07
    scf                                           ; $7705: $37
    sub [hl]                                      ; $7706: $96
    inc de                                        ; $7707: $13
    sub h                                         ; $7708: $94
    dec sp                                        ; $7709: $3b
    ld c, e                                       ; $770a: $4b
    adc l                                         ; $770b: $8d
    pop bc                                        ; $770c: $c1
    db $dd                                        ; $770d: $dd
    add e                                         ; $770e: $83
    sbc e                                         ; $770f: $9b
    ld d, c                                       ; $7710: $51
    sub c                                         ; $7711: $91
    ld sp, $5647                                  ; $7712: $31 $47 $56
    adc [hl]                                      ; $7715: $8e
    db $eb                                        ; $7716: $eb
    ld l, b                                       ; $7717: $68
    daa                                           ; $7718: $27
    ld b, l                                       ; $7719: $45
    dec de                                        ; $771a: $1b
    xor l                                         ; $771b: $ad
    sbc e                                         ; $771c: $9b
    cp h                                          ; $771d: $bc
    ld [c], a                                     ; $771e: $e2
    jr jr_06b_7796                                ; $771f: $18 $75

    dec sp                                        ; $7721: $3b
    nop                                           ; $7722: $00
    rst $20                                       ; $7723: $e7
    xor e                                         ; $7724: $ab
    sbc a                                         ; $7725: $9f
    ld c, [hl]                                    ; $7726: $4e
    cp $49                                        ; $7727: $fe $49
    ret nc                                        ; $7729: $d0

    rst $38                                       ; $772a: $ff
    ret z                                         ; $772b: $c8

    or e                                          ; $772c: $b3
    ld a, [hl+]                                   ; $772d: $2a
    add h                                         ; $772e: $84
    ld l, h                                       ; $772f: $6c
    jr nz, jr_06b_7703                            ; $7730: $20 $d1

    push af                                       ; $7732: $f5
    ld b, d                                       ; $7733: $42
    xor c                                         ; $7734: $a9
    sub c                                         ; $7735: $91
    ld b, l                                       ; $7736: $45
    jr nz, jr_06b_76e6                            ; $7737: $20 $ad

    scf                                           ; $7739: $37
    ld c, $ef                                     ; $773a: $0e $ef
    adc a                                         ; $773c: $8f
    sbc l                                         ; $773d: $9d
    jr z, jr_06b_77a8                             ; $773e: $28 $68

    cp $9d                                        ; $7740: $fe $9d
    ld e, [hl]                                    ; $7742: $5e
    jr z, jr_06b_77c2                             ; $7743: $28 $7d

    sub d                                         ; $7745: $92
    ldh a, [rHDMA3]                               ; $7746: $f0 $53
    pop de                                        ; $7748: $d1
    sub d                                         ; $7749: $92
    or b                                          ; $774a: $b0
    ld [hl-], a                                   ; $774b: $32
    ld c, e                                       ; $774c: $4b
    jr jr_06b_7701                                ; $774d: $18 $b2

    sbc a                                         ; $774f: $9f
    ld b, d                                       ; $7750: $42
    dec de                                        ; $7751: $1b
    ld d, d                                       ; $7752: $52
    ld [hl], l                                    ; $7753: $75
    and b                                         ; $7754: $a0
    sub a                                         ; $7755: $97
    ld c, $9f                                     ; $7756: $0e $9f
    inc h                                         ; $7758: $24
    cp d                                          ; $7759: $ba
    ld e, [hl]                                    ; $775a: $5e
    jr z, jr_06b_77d4                             ; $775b: $28 $77

    cp [hl]                                       ; $775d: $be
    ld [hl], c                                    ; $775e: $71
    nop                                           ; $775f: $00
    rst $10                                       ; $7760: $d7
    cp b                                          ; $7761: $b8
    adc e                                         ; $7762: $8b
    rst $00                                       ; $7763: $c7
    jp z, Jump_000_0d1c                           ; $7764: $ca $1c $0d

    sub $6d                                       ; $7767: $d6 $6d
    db $db                                        ; $7769: $db
    ld a, [hl-]                                   ; $776a: $3a
    adc l                                         ; $776b: $8d
    ld b, [hl]                                    ; $776c: $46
    ld d, a                                       ; $776d: $57
    ld l, d                                       ; $776e: $6a
    inc c                                         ; $776f: $0c
    ld l, [hl]                                    ; $7770: $6e
    ld [$4343], sp                                ; $7771: $08 $43 $43
    ld e, b                                       ; $7774: $58
    ld e, h                                       ; $7775: $5c
    or [hl]                                       ; $7776: $b6
    dec e                                         ; $7777: $1d
    rra                                           ; $7778: $1f
    db $fd                                        ; $7779: $fd
    ld c, [hl]                                    ; $777a: $4e
    rst $38                                       ; $777b: $ff
    pop bc                                        ; $777c: $c1
    ld [hl], l                                    ; $777d: $75
    ld l, c                                       ; $777e: $69
    push bc                                       ; $777f: $c5
    jp hl                                         ; $7780: $e9


    ld a, $f9                                     ; $7781: $3e $f9
    call nz, $db6e                                ; $7783: $c4 $6e $db
    sub $69                                       ; $7786: $d6 $69
    inc [hl]                                      ; $7788: $34
    cp d                                          ; $7789: $ba
    ld d, d                                       ; $778a: $52
    inc hl                                        ; $778b: $23
    inc l                                         ; $778c: $2c
    cp b                                          ; $778d: $b8
    ld hl, $ae2c                                  ; $778e: $21 $2c $ae
    db $ec                                        ; $7791: $ec
    and a                                         ; $7792: $a7
    ld [hl], h                                    ; $7793: $74
    dec d                                         ; $7794: $15
    ld a, [de]                                    ; $7795: $1a

jr_06b_7796:
    rst $38                                       ; $7796: $ff
    call c, $9f0e                                 ; $7797: $dc $0e $9f
    adc l                                         ; $779a: $8d
    rra                                           ; $779b: $1f
    dec l                                         ; $779c: $2d
    ld a, [hl+]                                   ; $779d: $2a
    inc e                                         ; $779e: $1c
    di                                            ; $779f: $f3
    ld [hl], e                                    ; $77a0: $73
    jp hl                                         ; $77a1: $e9


    nop                                           ; $77a2: $00
    rst $10                                       ; $77a3: $d7
    and b                                         ; $77a4: $a0
    dec c                                         ; $77a5: $0d
    inc h                                         ; $77a6: $24
    ld d, [hl]                                    ; $77a7: $56

jr_06b_77a8:
    ret z                                         ; $77a8: $c8

    ld a, l                                       ; $77a9: $7d
    ld a, d                                       ; $77aa: $7a
    or d                                          ; $77ab: $b2
    inc d                                         ; $77ac: $14
    ld c, [hl]                                    ; $77ad: $4e
    dec a                                         ; $77ae: $3d
    ld c, e                                       ; $77af: $4b
    adc l                                         ; $77b0: $8d
    ret                                           ; $77b1: $c9


    inc hl                                        ; $77b2: $23
    ld b, a                                       ; $77b3: $47
    ld l, d                                       ; $77b4: $6a
    di                                            ; $77b5: $f3
    dec a                                         ; $77b6: $3d
    jp c, Jump_000_3748                           ; $77b7: $da $48 $37

    ld e, d                                       ; $77ba: $5a
    ld c, a                                       ; $77bb: $4f
    adc l                                         ; $77bc: $8d
    add sp, -$61                                  ; $77bd: $e8 $9f
    or a                                          ; $77bf: $b7
    or a                                          ; $77c0: $b7
    inc bc                                        ; $77c1: $03

jr_06b_77c2:
    rst $20                                       ; $77c2: $e7
    ld a, [de]                                    ; $77c3: $1a
    ld h, c                                       ; $77c4: $61
    ld [hl], h                                    ; $77c5: $74
    and e                                         ; $77c6: $a3
    ld b, l                                       ; $77c7: $45
    dec h                                         ; $77c8: $25
    call c, $e2ca                                 ; $77c9: $dc $ca $e2
    add hl, hl                                    ; $77cc: $29
    ld e, l                                       ; $77cd: $5d
    add l                                         ; $77ce: $85
    add $3f                                       ; $77cf: $c6 $3f
    or a                                          ; $77d1: $b7
    inc bc                                        ; $77d2: $03
    rst $20                                       ; $77d3: $e7

jr_06b_77d4:
    ld a, [de]                                    ; $77d4: $1a
    daa                                           ; $77d5: $27
    dec d                                         ; $77d6: $15
    add c                                         ; $77d7: $81
    or h                                          ; $77d8: $b4
    ld a, [de]                                    ; $77d9: $1a
    jp nz, $3fd0                                  ; $77da: $c2 $d0 $3f

    xor l                                         ; $77dd: $ad
    adc [hl]                                      ; $77de: $8e
    xor c                                         ; $77df: $a9
    sbc c                                         ; $77e0: $99
    ld [hl], c                                    ; $77e1: $71
    cp d                                          ; $77e2: $ba
    xor h                                         ; $77e3: $ac
    ld hl, $bd0c                                  ; $77e4: $21 $0c $bd
    ld a, [hl-]                                   ; $77e7: $3a
    and a                                         ; $77e8: $a7
    rra                                           ; $77e9: $1f
    ld h, c                                       ; $77ea: $61
    ld d, c                                       ; $77eb: $51
    or a                                          ; $77ec: $b7
    inc bc                                        ; $77ed: $03
    rst $10                                       ; $77ee: $d7
    xor b                                         ; $77ef: $a8
    ld l, [hl]                                    ; $77f0: $6e
    sbc d                                         ; $77f1: $9a
    ld a, a                                       ; $77f2: $7f
    and a                                         ; $77f3: $a7
    call z, $d991                                 ; $77f4: $cc $91 $d9
    inc sp                                        ; $77f7: $33
    ei                                            ; $77f8: $fb
    ld l, c                                       ; $77f9: $69
    add [hl]                                      ; $77fa: $86
    ld b, a                                       ; $77fb: $47
    dec a                                         ; $77fc: $3d
    db $eb                                        ; $77fd: $eb
    add d                                         ; $77fe: $82
    ld c, a                                       ; $77ff: $4f
    ld c, e                                       ; $7800: $4b
    ld b, d                                       ; $7801: $42
    ret nc                                        ; $7802: $d0

    pop de                                        ; $7803: $d1
    ld b, [hl]                                    ; $7804: $46
    sbc e                                         ; $7805: $9b
    ld [hl], h                                    ; $7806: $74
    dec bc                                        ; $7807: $0b
    ld e, d                                       ; $7808: $5a
    ld c, c                                       ; $7809: $49
    adc e                                         ; $780a: $8b
    ld [hl], b                                    ; $780b: $70
    call z, Call_000_1591                         ; $780c: $cc $91 $15
    pop hl                                        ; $780f: $e1
    ld [hl], $5d                                  ; $7810: $36 $5d
    rst $28                                       ; $7812: $ef
    adc c                                         ; $7813: $89
    res 1, l                                      ; $7814: $cb $8d
    ld [hl], $1a                                  ; $7816: $36 $1a
    or e                                          ; $7818: $b3
    ld l, [hl]                                    ; $7819: $6e
    rlca                                          ; $781a: $07
    rst $20                                       ; $781b: $e7
    xor c                                         ; $781c: $a9
    ld sp, hl                                     ; $781d: $f9
    ld [hl], a                                    ; $781e: $77
    ld a, [$f7e7]                                 ; $781f: $fa $e7 $f7
    ld d, e                                       ; $7822: $53
    ld d, h                                       ; $7823: $54
    inc a                                         ; $7824: $3c
    add [hl]                                      ; $7825: $86
    ld a, d                                       ; $7826: $7a
    ld d, [hl]                                    ; $7827: $56
    adc d                                         ; $7828: $8a
    ld a, c                                       ; $7829: $79
    add d                                         ; $782a: $82
    sub l                                         ; $782b: $95
    xor [hl]                                      ; $782c: $ae
    ld [de], a                                    ; $782d: $12
    adc d                                         ; $782e: $8a
    or d                                          ; $782f: $b2
    ld [hl], c                                    ; $7830: $71
    add hl, de                                    ; $7831: $19
    xor h                                         ; $7832: $ac
    call nc, $ad08                                ; $7833: $d4 $08 $ad
    ld c, l                                       ; $7836: $4d
    ld a, [bc]                                    ; $7837: $0a
    and c                                         ; $7838: $a1
    push af                                       ; $7839: $f5
    ld l, h                                       ; $783a: $6c
    or h                                          ; $783b: $b4
    ld c, c                                       ; $783c: $49
    or a                                          ; $783d: $b7
    or b                                          ; $783e: $b0
    push af                                       ; $783f: $f5
    ld a, h                                       ; $7840: $7c
    add a                                         ; $7841: $87
    sub $b1                                       ; $7842: $d6 $b1
    cp $77                                        ; $7844: $fe $77
    ld a, [hl+]                                   ; $7846: $2a
    ld b, a                                       ; $7847: $47
    ld [hl], d                                    ; $7848: $72
    add hl, de                                    ; $7849: $19
    ld l, $1d                                     ; $784a: $2e $1d
    rst $20                                       ; $784c: $e7
    xor c                                         ; $784d: $a9
    db $e3                                        ; $784e: $e3
    cp c                                          ; $784f: $b9
    and [hl]                                      ; $7850: $a6
    sub c                                         ; $7851: $91
    sub $40                                       ; $7852: $d6 $40
    ld h, d                                       ; $7854: $62
    rst $38                                       ; $7855: $ff
    call nc, $acb8                                ; $7856: $d4 $b8 $ac
    ld [hl], $29                                  ; $7859: $36 $29
    add h                                         ; $785b: $84
    sub $b3                                       ; $785c: $d6 $b3
    pop de                                        ; $785e: $d1
    ld h, $dd                                     ; $785f: $26 $dd
    ld b, d                                       ; $7861: $42
    or a                                          ; $7862: $b7
    ld l, l                                       ; $7863: $6d
    xor e                                         ; $7864: $ab
    add e                                         ; $7865: $83
    halt                                          ; $7866: $76
    or h                                          ; $7867: $b4
    adc d                                         ; $7868: $8a
    db $10                                        ; $7869: $10
    ld [hl], c                                    ; $786a: $71
    or h                                          ; $786b: $b4
    ld a, [$dd3b]                                 ; $786c: $fa $3b $dd
    ld d, a                                       ; $786f: $57
    or $a3                                        ; $7870: $f6 $a3
    sub a                                         ; $7872: $97
    ld c, $e7                                     ; $7873: $0e $e7
    ld a, [de]                                    ; $7875: $1a
    jp nc, $81a6                                  ; $7876: $d2 $a6 $81

    call nz, $2352                                ; $7879: $c4 $52 $23
    or h                                          ; $787c: $b4
    ld [hl], $29                                  ; $787d: $36 $29
    add h                                         ; $787f: $84
    sub $b3                                       ; $7880: $d6 $b3
    pop de                                        ; $7882: $d1
    ld h, $dd                                     ; $7883: $26 $dd
    ld b, d                                       ; $7885: $42
    di                                            ; $7886: $f3
    rst $28                                       ; $7887: $ef
    call nc, $9eb1                                ; $7888: $d4 $b1 $9e
    db $eb                                        ; $788b: $eb
    ld d, $5d                                     ; $788c: $16 $5d
    push hl                                       ; $788e: $e5
    cp b                                          ; $788f: $b8
    ld h, $d7                                     ; $7890: $26 $d7
    ld l, b                                       ; $7892: $68
    ld d, b                                       ; $7893: $50
    ld l, $9b                                     ; $7894: $2e $9b
    ld [hl-], a                                   ; $7896: $32
    adc a                                         ; $7897: $8f
    add hl, sp                                    ; $7898: $39
    ld l, [hl]                                    ; $7899: $6e
    rlca                                          ; $789a: $07
    rst $20                                       ; $789b: $e7
    ld a, [de]                                    ; $789c: $1a
    pop de                                        ; $789d: $d1
    ld [hl], b                                    ; $789e: $70
    ld b, a                                       ; $789f: $47
    add h                                         ; $78a0: $84
    ld l, b                                       ; $78a1: $68
    call z, $a1a1                                 ; $78a2: $cc $a1 $a1
    ld d, c                                       ; $78a5: $51
    ld l, $45                                     ; $78a6: $2e $45
    dec a                                         ; $78a8: $3d
    db $eb                                        ; $78a9: $eb
    or b                                          ; $78aa: $b0
    or h                                          ; $78ab: $b4
    ld b, d                                       ; $78ac: $42
    ld h, h                                       ; $78ad: $64
    add hl, sp                                    ; $78ae: $39
    cp d                                          ; $78af: $ba
    dec e                                         ; $78b0: $1d
    scf                                           ; $78b1: $37
    ld l, b                                       ; $78b2: $68
    pop bc                                        ; $78b3: $c1
    dec c                                         ; $78b4: $0d
    inc h                                         ; $78b5: $24
    sub [hl]                                      ; $78b6: $96
    xor c                                         ; $78b7: $a9
    sbc [hl]                                      ; $78b8: $9e
    rst $38                                       ; $78b9: $ff
    add hl, hl                                    ; $78ba: $29
    inc h                                         ; $78bb: $24
    inc sp                                        ; $78bc: $33
    xor h                                         ; $78bd: $ac
    sbc [hl]                                      ; $78be: $9e
    db $fd                                        ; $78bf: $fd
    rst $08                                       ; $78c0: $cf
    ld e, $d1                                     ; $78c1: $1e $d1
    db $10                                        ; $78c3: $10
    add [hl]                                      ; $78c4: $86
    adc [hl]                                      ; $78c5: $8e
    ld [hl], $da                                  ; $78c6: $36 $da
    and h                                         ; $78c8: $a4

jr_06b_78c9:
    ld e, e                                       ; $78c9: $5b
    ret nc                                        ; $78ca: $d0

    scf                                           ; $78cb: $37
    ld c, $e7                                     ; $78cc: $0e $e7
    xor c                                         ; $78ce: $a9
    add c                                         ; $78cf: $81
    ld b, h                                       ; $78d0: $44
    sbc e                                         ; $78d1: $9b
    ld a, [hl+]                                   ; $78d2: $2a
    xor l                                         ; $78d3: $ad
    ld l, b                                       ; $78d4: $68
    ld l, b                                       ; $78d5: $68
    bit 6, c                                      ; $78d6: $cb $71
    add hl, de                                    ; $78d8: $19
    adc d                                         ; $78d9: $8a
    cp $69                                        ; $78da: $fe $69
    cp l                                          ; $78dc: $bd
    ld a, [hl-]                                   ; $78dd: $3a
    and a                                         ; $78de: $a7
    rra                                           ; $78df: $1f
    ld h, c                                       ; $78e0: $61
    ld d, c                                       ; $78e1: $51
    or a                                          ; $78e2: $b7
    inc bc                                        ; $78e3: $03
    rst $20                                       ; $78e4: $e7
    xor c                                         ; $78e5: $a9
    rst $38                                       ; $78e6: $ff
    push hl                                       ; $78e7: $e5
    ld [$9759], a                                 ; $78e8: $ea $59 $97
    ld d, [hl]                                    ; $78eb: $56
    sbc h                                         ; $78ec: $9c
    xor $93                                       ; $78ed: $ee $93
    ld c, a                                       ; $78ef: $4f
    ld l, h                                       ; $78f0: $6c
    ld [$a943], sp                                ; $78f1: $08 $43 $a9
    ld sp, $5879                                  ; $78f4: $31 $79 $58
    jp hl                                         ; $78f7: $e9


    ld a, d                                       ; $78f8: $7a
    ld [hl], l                                    ; $78f9: $75
    ld c, [hl]                                    ; $78fa: $4e
    ccf                                           ; $78fb: $3f
    jp nz, $6ea2                                  ; $78fc: $c2 $a2 $6e

    rlca                                          ; $78ff: $07
    rst $20                                       ; $7900: $e7
    ld a, [de]                                    ; $7901: $1a
    jp nc, $f9a6                                  ; $7902: $d2 $a6 $f9

    ld [hl], a                                    ; $7905: $77
    ld a, [hl+]                                   ; $7906: $2a
    ld e, d                                       ; $7907: $5a
    ld [de], a                                    ; $7908: $12
    ld d, [hl]                                    ; $7909: $56
    and $ef                                       ; $790a: $e6 $ef
    rlca                                          ; $790c: $07
    ld a, [hl]                                    ; $790d: $7e
    or [hl]                                       ; $790e: $b6
    inc bc                                        ; $790f: $03
    rst $20                                       ; $7910: $e7
    xor c                                         ; $7911: $a9
    add c                                         ; $7912: $81
    ld b, h                                       ; $7913: $44
    ld e, e                                       ; $7914: $5b
    ld l, b                                       ; $7915: $68
    jr nz, jr_06b_78c9                            ; $7916: $20 $b1

    ld l, [hl]                                    ; $7918: $6e
    ld h, l                                       ; $7919: $65
    ld sp, $7eea                                  ; $791a: $31 $ea $7e
    ld e, c                                       ; $791d: $59
    rst $08                                       ; $791e: $cf
    ld [hl], l                                    ; $791f: $75
    dec bc                                        ; $7920: $0b
    xor d                                         ; $7921: $aa
    inc l                                         ; $7922: $2c
    ld d, e                                       ; $7923: $53
    dec e                                         ; $7924: $1d
    ei                                            ; $7925: $fb
    and a                                         ; $7926: $a7
    add $65                                       ; $7927: $c6 $65
    push de                                       ; $7929: $d5
    cp c                                          ; $792a: $b9
    cp l                                          ; $792b: $bd
    or d                                          ; $792c: $b2
    ld a, b                                       ; $792d: $78
    or [hl]                                       ; $792e: $b6
    inc bc                                        ; $792f: $03
    scf                                           ; $7930: $37
    ld l, b                                       ; $7931: $68
    pop bc                                        ; $7932: $c1
    dec c                                         ; $7933: $0d
    inc h                                         ; $7934: $24
    sub [hl]                                      ; $7935: $96
    dec sp                                        ; $7936: $3b
    or l                                          ; $7937: $b5
    rst $38                                       ; $7938: $ff
    rst $18                                       ; $7939: $df
    ld l, c                                       ; $793a: $69
    ld [$5855], sp                                ; $793b: $08 $55 $58
    or c                                          ; $793e: $b1
    sbc a                                         ; $793f: $9f
    sub d                                         ; $7940: $92
    xor e                                         ; $7941: $ab
    ld l, b                                       ; $7942: $68
    db $ed                                        ; $7943: $ed
    adc [hl]                                      ; $7944: $8e
    ld l, a                                       ; $7945: $6f
    inc e                                         ; $7946: $1c
    rst $20                                       ; $7947: $e7
    ld a, [de]                                    ; $7948: $1a
    jp nc, $cca6                                  ; $7949: $d2 $a6 $cc

jr_06b_794c:
    pop de                                        ; $794c: $d1
    ld h, b                                       ; $794d: $60
    dec c                                         ; $794e: $0d
    ld h, c                                       ; $794f: $61
    jr z, jr_06b_794c                             ; $7950: $28 $fa

    ld h, c                                       ; $7952: $61
    ld [de], a                                    ; $7953: $12
    pop hl                                        ; $7954: $e1
    adc c                                         ; $7955: $89
    dec a                                         ; $7956: $3d
    adc c                                         ; $7957: $89
    or b                                          ; $7958: $b0
    push af                                       ; $7959: $f5
    sbc l                                         ; $795a: $9d
    ld e, c                                       ; $795b: $59
    ld b, l                                       ; $795c: $45
    dec h                                         ; $795d: $25
    inc d                                         ; $795e: $14
    push af                                       ; $795f: $f5
    ld d, e                                       ; $7960: $53
    rst $00                                       ; $7961: $c7
    call nc, $6b10                                ; $7962: $d4 $10 $6b
    dec sp                                        ; $7965: $3b
    nop                                           ; $7966: $00
    ld l, a                                       ; $7967: $6f
    ld d, e                                       ; $7968: $53
    ld h, l                                       ; $7969: $65
    jp c, Jump_000_0a43                           ; $796a: $da $43 $0a

    ld [$65a0], a                                 ; $796d: $ea $a0 $65
    ld a, [hl+]                                   ; $7970: $2a
    dec [hl]                                      ; $7971: $35
    ld c, [hl]                                    ; $7972: $4e
    ld [$14c8], a                                 ; $7973: $ea $c8 $14
    jp nz, $bf4f                                  ; $7976: $c2 $4f $bf

    sbc a                                         ; $7979: $9f
    inc de                                        ; $797a: $13
    or d                                          ; $797b: $b2
    sbc a                                         ; $797c: $9f
    ld [c], a                                     ; $797d: $e2
    inc [hl]                                      ; $797e: $34
    add [hl]                                      ; $797f: $86
    db $ed                                        ; $7980: $ed
    nop                                           ; $7981: $00
    rra                                           ; $7982: $1f
    db $fd                                        ; $7983: $fd
    ld c, [hl]                                    ; $7984: $4e
    jp $9d51                                      ; $7985: $c3 $51 $9d


    jp z, $7fc9                                   ; $7988: $ca $c9 $7f

    sbc d                                         ; $798b: $9a
    jp nz, $d38a                                  ; $798c: $c2 $8a $d3

    jr jr_06b_7995                                ; $798f: $18 $04

    and l                                         ; $7991: $a5
    add $49                                       ; $7992: $c6 $49
    dec c                                         ; $7994: $0d

jr_06b_7995:
    inc h                                         ; $7995: $24
    jr z, jr_06b_79c3                             ; $7996: $28 $2b

    ld b, h                                       ; $7998: $44
    ld h, h                                       ; $7999: $64
    or $d3                                        ; $799a: $f6 $d3
    xor c                                         ; $799c: $a9
    ld d, c                                       ; $799d: $51
    adc [hl]                                      ; $799e: $8e
    ld a, c                                       ; $799f: $79
    ld l, [hl]                                    ; $79a0: $6e
    rlca                                          ; $79a1: $07
    rst $20                                       ; $79a2: $e7
    xor c                                         ; $79a3: $a9
    add hl, sp                                    ; $79a4: $39
    ld h, l                                       ; $79a5: $65
    adc c                                         ; $79a6: $89
    ld [hl+], a                                   ; $79a7: $22
    ld a, e                                       ; $79a8: $7b
    xor [hl]                                      ; $79a9: $ae
    ld a, d                                       ; $79aa: $7a
    ld [hl], $1a                                  ; $79ab: $36 $1a
    ld e, l                                       ; $79ad: $5d
    sub c                                         ; $79ae: $91
    inc hl                                        ; $79af: $23
    push af                                       ; $79b0: $f5
    jp nc, $d701                                  ; $79b1: $d2 $01 $d7

    ld d, [hl]                                    ; $79b4: $56
    ld d, $a3                                     ; $79b5: $16 $a3
    rst $18                                       ; $79b7: $df
    inc hl                                        ; $79b8: $23
    ld [hl], e                                    ; $79b9: $73
    ld b, a                                       ; $79ba: $47
    xor c                                         ; $79bb: $a9
    ld sp, $d1b8                                  ; $79bc: $31 $b8 $d1
    ldh a, [$87]                                  ; $79bf: $f0 $87
    rst $00                                       ; $79c1: $c7
    halt                                          ; $79c2: $76

jr_06b_79c3:
    nop                                           ; $79c3: $00
    rra                                           ; $79c4: $1f
    ld h, a                                       ; $79c5: $67
    rst $08                                       ; $79c6: $cf
    ld d, d                                       ; $79c7: $52
    ld h, e                                       ; $79c8: $63
    ld [hl], b                                    ; $79c9: $70
    and a                                         ; $79ca: $a7
    ld [de], a                                    ; $79cb: $12
    ld h, [hl]                                    ; $79cc: $66
    dec hl                                        ; $79cd: $2b
    adc e                                         ; $79ce: $8b
    and a                                         ; $79cf: $a7
    sbc [hl]                                      ; $79d0: $9e
    ld d, l                                       ; $79d1: $55
    ld h, h                                       ; $79d2: $64
    sbc a                                         ; $79d3: $9f
    xor $96                                       ; $79d4: $ee $96
    ld h, d                                       ; $79d6: $62
    ld [$071b], a                                 ; $79d7: $ea $1b $07
    rra                                           ; $79da: $1f
    ld h, a                                       ; $79db: $67
    rst $08                                       ; $79dc: $cf
    adc d                                         ; $79dd: $8a
    sub [hl]                                      ; $79de: $96
    ld b, h                                       ; $79df: $44
    and a                                         ; $79e0: $a7
    ld l, [hl]                                    ; $79e1: $6e
    ld [c], a                                     ; $79e2: $e2
    ret c                                         ; $79e3: $d8

    dec de                                        ; $79e4: $1b
    rlca                                          ; $79e5: $07
    xor a                                         ; $79e6: $af
    scf                                           ; $79e7: $37
    add hl, sp                                    ; $79e8: $39
    ld d, h                                       ; $79e9: $54
    inc a                                         ; $79ea: $3c
    reti                                          ; $79eb: $d9


    ld d, b                                       ; $79ec: $50
    add hl, sp                                    ; $79ed: $39
    ld e, c                                       ; $79ee: $59
    ld c, h                                       ; $79ef: $4c
    ld a, c                                       ; $79f0: $79
    or $c4                                        ; $79f1: $f6 $c4
    ld a, $82                                     ; $79f3: $3e $82
    sbc $b0                                       ; $79f5: $de $b0
    xor l                                         ; $79f7: $ad
    rst $10                                       ; $79f8: $d7
    daa                                           ; $79f9: $27
    ld b, [hl]                                    ; $79fa: $46
    jp c, Jump_000_0076                           ; $79fb: $da $76 $00

    rst $20                                       ; $79fe: $e7
    xor c                                         ; $79ff: $a9
    ld c, $7b                                     ; $7a00: $0e $7b
    jp $9d51                                      ; $7a02: $c3 $51 $9d


    ld d, d                                       ; $7a05: $52
    ld b, e                                       ; $7a06: $43
    ld a, [de]                                    ; $7a07: $1a
    xor h                                         ; $7a08: $ac
    ld hl, $750c                                  ; $7a09: $21 $0c $75
    db $ec                                        ; $7a0c: $ec
    rst $30                                       ; $7a0d: $f7
    add hl, hl                                    ; $7a0e: $29
    ld b, a                                       ; $7a0f: $47
    ld e, b                                       ; $7a10: $58
    ld sp, $b2bd                                  ; $7a11: $31 $bd $b2
    daa                                           ; $7a14: $27
    ld hl, $d9eb                                  ; $7a15: $21 $eb $d9
    dec hl                                        ; $7a18: $2b
    or e                                          ; $7a19: $b3
    ld d, e                                       ; $7a1a: $53
    xor [hl]                                      ; $7a1b: $ae
    ret                                           ; $7a1c: $c9


    ldh a, [$63]                                  ; $7a1d: $f0 $63
    call nc, $f67a                                ; $7a1f: $d4 $7a $f6
    ld a, [bc]                                    ; $7a22: $0a
    inc l                                         ; $7a23: $2c
    ld b, d                                       ; $7a24: $42
    db $eb                                        ; $7a25: $eb
    reti                                          ; $7a26: $d9


    or a                                          ; $7a27: $b7
    inc l                                         ; $7a28: $2c
    db $dd                                        ; $7a29: $dd
    add d                                         ; $7a2a: $82
    sub [hl]                                      ; $7a2b: $96
    ld a, l                                       ; $7a2c: $7d
    set 2, d                                      ; $7a2d: $cb $d2
    xor l                                         ; $7a2f: $ad
    pop de                                        ; $7a30: $d1
    cp [hl]                                       ; $7a31: $be
    inc bc                                        ; $7a32: $03
    scf                                           ; $7a33: $37
    ld a, [hl-]                                   ; $7a34: $3a
    ld e, d                                       ; $7a35: $5a
    rst $08                                       ; $7a36: $cf
    ld e, [hl]                                    ; $7a37: $5e
    sbc l                                         ; $7a38: $9d
    db $d3                                        ; $7a39: $d3
    adc a                                         ; $7a3a: $8f
    or b                                          ; $7a3b: $b0
    xor b                                         ; $7a3c: $a8
    sub a                                         ; $7a3d: $97
    ld c, $57                                     ; $7a3e: $0e $57
    call nz, Call_06b_5649                        ; $7a40: $c4 $49 $56
    adc d                                         ; $7a43: $8a
    sub e                                         ; $7a44: $93
    xor h                                         ; $7a45: $ac
    inc d                                         ; $7a46: $14
    daa                                           ; $7a47: $27
    ld e, c                                       ; $7a48: $59
    add hl, hl                                    ; $7a49: $29
    ld c, [hl]                                    ; $7a4a: $4e
    ld d, d                                       ; $7a4b: $52
    ret nc                                        ; $7a4c: $d0

    ld [hl], b                                    ; $7a4d: $70
    and l                                         ; $7a4e: $a5
    cp e                                          ; $7a4f: $bb
    rst $28                                       ; $7a50: $ef
    cp [hl]                                       ; $7a51: $be
    ei                                            ; $7a52: $fb
    xor $bb                                       ; $7a53: $ee $bb
    rst $28                                       ; $7a55: $ef
    cp [hl]                                       ; $7a56: $be
    ei                                            ; $7a57: $fb
    jp nc, $e701                                  ; $7a58: $d2 $01 $e7

    xor c                                         ; $7a5b: $a9
    add c                                         ; $7a5c: $81
    ld b, h                                       ; $7a5d: $44
    sbc e                                         ; $7a5e: $9b
    ld [hl-], a                                   ; $7a5f: $32
    ld b, a                                       ; $7a60: $47
    add e                                         ; $7a61: $83
    dec [hl]                                      ; $7a62: $35
    add h                                         ; $7a63: $84
    and c                                         ; $7a64: $a1
    xor b                                         ; $7a65: $a8
    call c, $caa1                                 ; $7a66: $dc $a1 $ca
    ld a, d                                       ; $7a69: $7a
    sub $05                                       ; $7a6a: $d6 $05
    sbc a                                         ; $7a6c: $9f
    sub [hl]                                      ; $7a6d: $96
    add h                                         ; $7a6e: $84
    ld [hl], $d2                                  ; $7a6f: $36 $d2
    adc h                                         ; $7a71: $8c
    ld a, [de]                                    ; $7a72: $1a
    adc l                                         ; $7a73: $8d
    cp d                                          ; $7a74: $ba
    push af                                       ; $7a75: $f5
    inc a                                         ; $7a76: $3c
    dec d                                         ; $7a77: $15
    ld a, [hl]                                    ; $7a78: $7e
    ld l, h                                       ; $7a79: $6c
    ld a, [hl+]                                   ; $7a7a: $2a
    pop af                                        ; $7a7b: $f1
    add a                                         ; $7a7c: $87
    ld l, l                                       ; $7a7d: $6d
    rlca                                          ; $7a7e: $07
    rst $10                                       ; $7a7f: $d7
    ld b, a                                       ; $7a80: $47
    ld [hl], l                                    ; $7a81: $75
    xor d                                         ; $7a82: $aa
    db $10                                        ; $7a83: $10
    jp nc, $0d3a                                  ; $7a84: $d2 $3a $0d

    inc h                                         ; $7a87: $24
    or $3f                                        ; $7a88: $f6 $3f
    ld a, [c]                                     ; $7a8a: $f2
    xor h                                         ; $7a8b: $ac
    call nc, $dc18                                ; $7a8c: $d4 $18 $dc
    reti                                          ; $7a8f: $d9


    push bc                                       ; $7a90: $c5
    ret z                                         ; $7a91: $c8

    ld a, [hl]                                    ; $7a92: $7e
    sbc $38                                       ; $7a93: $de $38
    nop                                           ; $7a95: $00
    rra                                           ; $7a96: $1f
    ld d, a                                       ; $7a97: $57
    ld c, [hl]                                    ; $7a98: $4e
    or $29                                        ; $7a99: $f6 $29
    adc [hl]                                      ; $7a9b: $8e
    dec [hl]                                      ; $7a9c: $35
    jp nc, $b935                                  ; $7a9d: $d2 $35 $b9

    ld c, d                                       ; $7aa0: $4a
    ld sp, $4d97                                  ; $7aa1: $31 $97 $4d
    sbc c                                         ; $7aa4: $99
    ld c, a                                       ; $7aa5: $4f
    add [hl]                                      ; $7aa6: $86
    adc e                                         ; $7aa7: $8b
    ldh a, [$b3]                                  ; $7aa8: $f0 $b3
    dec e                                         ; $7aaa: $1d
    ld d, a                                       ; $7aab: $57
    ld l, b                                       ; $7aac: $68
    ld de, $398e                                  ; $7aad: $11 $8e $39
    or d                                          ; $7ab0: $b2
    ld [c], a                                     ; $7ab1: $e2
    ld sp, hl                                     ; $7ab2: $f9
    sbc [hl]                                      ; $7ab3: $9e
    cp l                                          ; $7ab4: $bd
    ret nc                                        ; $7ab5: $d0

    db $e4                                        ; $7ab6: $e4
    ld [$2a17], a                                 ; $7ab7: $ea $17 $2a
    rst $00                                       ; $7aba: $c7
    push af                                       ; $7abb: $f5
    rst $08                                       ; $7abc: $cf
    inc e                                         ; $7abd: $1c
    ld b, a                                       ; $7abe: $47
    dec hl                                        ; $7abf: $2b
    ld a, [de]                                    ; $7ac0: $1a
    adc e                                         ; $7ac1: $8b
    call nc, Call_000_00ed                        ; $7ac2: $d4 $ed $00
    rst $20                                       ; $7ac5: $e7
    dec sp                                        ; $7ac6: $3b
    or l                                          ; $7ac7: $b5
    pop hl                                        ; $7ac8: $e1
    ld hl, sp+$05                                 ; $7ac9: $f8 $05
    rst $10                                       ; $7acb: $d7
    ld a, l                                       ; $7acc: $7d
    cp c                                          ; $7acd: $b9
    db $10                                        ; $7ace: $10
    ld d, [hl]                                    ; $7acf: $56
    ld l, d                                       ; $7ad0: $6a

Jump_06b_7ad1:
    add h                                         ; $7ad1: $84
    or $7b                                        ; $7ad2: $f6 $7b
    ld h, h                                       ; $7ad4: $64
    xor $d0                                       ; $7ad5: $ee $d0
    ld a, d                                       ; $7ad7: $7a
    or $cf                                        ; $7ad8: $f6 $cf
    db $db                                        ; $7ada: $db
    and l                                         ; $7adb: $a5
    ld l, e                                       ; $7adc: $6b
    jr nz, jr_06b_7b00                            ; $7add: $20 $21

    ei                                            ; $7adf: $fb
    reti                                          ; $7ae0: $d9


    ld c, $e7                                     ; $7ae1: $0e $e7
    xor c                                         ; $7ae3: $a9
    call nc, $8690                                ; $7ae4: $d4 $90 $86
    ccf                                           ; $7ae7: $3f
    ld a, [de]                                    ; $7ae8: $1a
    adc [hl]                                      ; $7ae9: $8e
    dec [hl]                                      ; $7aea: $35
    add hl, sp                                    ; $7aeb: $39
    ld d, h                                       ; $7aec: $54
    jp nz, $e12c                                  ; $7aed: $c2 $2c $e1

    ld b, h                                       ; $7af0: $44
    rst $10                                       ; $7af1: $d7
    db $10                                        ; $7af2: $10
    ld d, $97                                     ; $7af3: $16 $97
    ld c, h                                       ; $7af5: $4c
    dec sp                                        ; $7af6: $3b
    ld l, h                                       ; $7af7: $6c
    dec sp                                        ; $7af8: $3b
    nop                                           ; $7af9: $00
    rst $20                                       ; $7afa: $e7
    xor c                                         ; $7afb: $a9
    call nc, $a938                                ; $7afc: $d4 $38 $a9
    pop af                                        ; $7aff: $f1

jr_06b_7b00:
    ld [hl], a                                    ; $7b00: $77
    ld c, d                                       ; $7b01: $4a
    rla                                           ; $7b02: $17
    adc $7e                                       ; $7b03: $ce $7e
    add d                                         ; $7b05: $82
    rra                                           ; $7b06: $1f
    ld b, c                                       ; $7b07: $41
    di                                            ; $7b08: $f3
    rst $28                                       ; $7b09: $ef
    ld d, h                                       ; $7b0a: $54
    ld c, [hl]                                    ; $7b0b: $4e
    sub $75                                       ; $7b0c: $d6 $75

jr_06b_7b0e:
    sbc d                                         ; $7b0e: $9a
    adc d                                         ; $7b0f: $8a
    sub [hl]                                      ; $7b10: $96
    add h                                         ; $7b11: $84
    dec [hl]                                      ; $7b12: $35
    sub b                                         ; $7b13: $90
    ld d, $e3                                     ; $7b14: $16 $e3
    ld l, h                                       ; $7b16: $6c
    rlca                                          ; $7b17: $07
    rst $20                                       ; $7b18: $e7
    xor c                                         ; $7b19: $a9
    ld [hl], b                                    ; $7b1a: $70
    ld d, e                                       ; $7b1b: $53
    ld hl, $2a35                                  ; $7b1c: $21 $35 $2a
    rst $30                                       ; $7b1f: $f7
    sbc l                                         ; $7b20: $9d
    and [hl]                                      ; $7b21: $a6
    db $db                                        ; $7b22: $db
    ld bc, $a9e7                                  ; $7b23: $01 $e7 $a9
    call nc, $a938                                ; $7b26: $d4 $38 $a9
    call nc, Call_000_3c98                        ; $7b29: $d4 $98 $3c
    or d                                          ; $7b2c: $b2
    sbc a                                         ; $7b2d: $9f
    adc d                                         ; $7b2e: $8a
    cp b                                          ; $7b2f: $b8
    ld [c], a                                     ; $7b30: $e2
    cp d                                          ; $7b31: $ba
    jr c, jr_06b_7b0e                             ; $7b32: $38 $da

    db $10                                        ; $7b34: $10
    add [hl]                                      ; $7b35: $86
    ld d, d                                       ; $7b36: $52
    inc hl                                        ; $7b37: $23
    xor h                                         ; $7b38: $ac
    ldh a, [$0b]                                  ; $7b39: $f0 $0b
    add hl, sp                                    ; $7b3b: $39
    jp nz, $19a3                                  ; $7b3c: $c2 $a3 $19

    sub l                                         ; $7b3f: $95
    dec sp                                        ; $7b40: $3b
    ld d, h                                       ; $7b41: $54
    reti                                          ; $7b42: $d9


    ld b, b                                       ; $7b43: $40
    ld b, d                                       ; $7b44: $42
    or $53                                        ; $7b45: $f6 $53
    ld l, b                                       ; $7b47: $68
    sub c                                         ; $7b48: $91
    halt                                          ; $7b49: $76
    ld l, b                                       ; $7b4a: $68
    push hl                                       ; $7b4b: $e5
    jr c, jr_06b_7bac                             ; $7b4c: $38 $5e

    add h                                         ; $7b4e: $84
    pop de                                        ; $7b4f: $d1
    ld l, l                                       ; $7b50: $6d
    rlca                                          ; $7b51: $07
    rst $20                                       ; $7b52: $e7
    ld a, [de]                                    ; $7b53: $1a
    xor c                                         ; $7b54: $a9
    add l                                         ; $7b55: $85
    ld a, [hl+]                                   ; $7b56: $2a
    ld [hl], e                                    ; $7b57: $73
    inc e                                         ; $7b58: $1c
    xor l                                         ; $7b59: $ad
    cp $4e                                        ; $7b5a: $fe $4e
    push hl                                       ; $7b5c: $e5
    ld h, h                                       ; $7b5d: $64
    pop de                                        ; $7b5e: $d1
    ld e, b                                       ; $7b5f: $58
    inc c                                         ; $7b60: $0c
    cp $73                                        ; $7b61: $fe $73
    jp hl                                         ; $7b63: $e9


    and l                                         ; $7b64: $a5
    inc bc                                        ; $7b65: $03
    rst $20                                       ; $7b66: $e7
    ld c, e                                       ; $7b67: $4b
    ret nc                                        ; $7b68: $d0

    db $10                                        ; $7b69: $10
    add $7a                                       ; $7b6a: $c6 $7a
    halt                                          ; $7b6c: $76
    and a                                         ; $7b6d: $a7
    ld d, l                                       ; $7b6e: $55
    ld b, a                                       ; $7b6f: $47
    ld l, b                                       ; $7b70: $68
    xor h                                         ; $7b71: $ac
    ld h, e                                       ; $7b72: $63
    ld [$a138], a                                 ; $7b73: $ea $38 $a1
    call $03a5                                    ; $7b76: $cd $a5 $03
    rra                                           ; $7b79: $1f
    db $fd                                        ; $7b7a: $fd
    ld c, [hl]                                    ; $7b7b: $4e
    dec a                                         ; $7b7c: $3d
    rst $10                                       ; $7b7d: $d7
    dec l                                         ; $7b7e: $2d
    sub $b3                                       ; $7b7f: $d6 $b3
    ld e, $d6                                     ; $7b81: $1e $d6
    db $e4                                        ; $7b83: $e4
    ret nc                                        ; $7b84: $d0

    reti                                          ; $7b85: $d9


    push bc                                       ; $7b86: $c5
    ldh a, [rBCPS]                                ; $7b87: $f0 $68
    sbc [hl]                                      ; $7b89: $9e
    ld c, d                                       ; $7b8a: $4a
    sbc b                                         ; $7b8b: $98
    xor l                                         ; $7b8c: $ad
    inc l                                         ; $7b8d: $2c
    sbc [hl]                                      ; $7b8e: $9e
    ld a, d                                       ; $7b8f: $7a
    sub $8f                                       ; $7b90: $d6 $8f
    and h                                         ; $7b92: $a4
    ld [hl], $90                                  ; $7b93: $36 $90
    sub b                                         ; $7b95: $90
    db $fd                                        ; $7b96: $fd
    sub h                                         ; $7b97: $94
    dec sp                                        ; $7b98: $3b
    dec de                                        ; $7b99: $1b
    ld b, d                                       ; $7b9a: $42
    dec d                                         ; $7b9b: $15
    sub $70                                       ; $7b9c: $d6 $70
    xor h                                         ; $7b9e: $ac
    ld [$b5a4], sp                                ; $7b9f: $08 $a4 $b5
    push af                                       ; $7ba2: $f5
    ld [hl], d                                    ; $7ba3: $72
    ld b, e                                       ; $7ba4: $43
    sbc e                                         ; $7ba5: $9b
    ldh a, [rNR34]                                ; $7ba6: $f0 $1e
    ld e, l                                       ; $7ba8: $5d
    ld [hl], c                                    ; $7ba9: $71
    inc b                                         ; $7baa: $04
    ld h, l                                       ; $7bab: $65

jr_06b_7bac:
    ld a, [hl+]                                   ; $7bac: $2a
    ei                                            ; $7bad: $fb
    adc [hl]                                      ; $7bae: $8e
    pop de                                        ; $7baf: $d1
    scf                                           ; $7bb0: $37
    jp nz, Jump_000_2f09                          ; $7bb1: $c2 $09 $2f

    cp b                                          ; $7bb4: $b8
    cp $99                                        ; $7bb5: $fe $99
    dec a                                         ; $7bb7: $3d
    db $dd                                        ; $7bb8: $dd
    ld l, b                                       ; $7bb9: $68
    db $fd                                        ; $7bba: $fd
    ld c, b                                       ; $7bbb: $48
    ld l, d                                       ; $7bbc: $6a
    inc sp                                        ; $7bbd: $33
    ld c, d                                       ; $7bbe: $4a
    sub l                                         ; $7bbf: $95
    or e                                          ; $7bc0: $b3
    ld h, e                                       ; $7bc1: $63
    dec sp                                        ; $7bc2: $3b
    nop                                           ; $7bc3: $00
    rst $20                                       ; $7bc4: $e7
    ld a, [de]                                    ; $7bc5: $1a
    add e                                         ; $7bc6: $83
    dec de                                        ; $7bc7: $1b
    ld l, c                                       ; $7bc8: $69
    or [hl]                                       ; $7bc9: $b6
    cp $dc                                        ; $7bca: $fe $dc
    dec e                                         ; $7bcc: $1d
    ld [hl], e                                    ; $7bcd: $73
    ld h, h                                       ; $7bce: $64
    ld hl, $0884                                  ; $7bcf: $21 $84 $08
    ld a, [hl]                                    ; $7bd2: $7e
    adc d                                         ; $7bd3: $8a
    ld b, b                                       ; $7bd4: $40
    ld e, d                                       ; $7bd5: $5a
    db $db                                        ; $7bd6: $db
    ld bc, $82d7                                  ; $7bd7: $01 $d7 $82
    ld c, a                                       ; $7bda: $4f
    ld c, e                                       ; $7bdb: $4b
    and d                                         ; $7bdc: $a2
    ld a, c                                       ; $7bdd: $79
    or h                                          ; $7bde: $b4
    dec sp                                        ; $7bdf: $3b
    rst $38                                       ; $7be0: $ff
    or b                                          ; $7be1: $b0
    add l                                         ; $7be2: $85
    ld [hl+], a                                   ; $7be3: $22
    ld e, [hl]                                    ; $7be4: $5e
    add sp, $1e                                   ; $7be5: $e8 $1e
    ld e, h                                       ; $7be7: $5c
    sub a                                         ; $7be8: $97
    ld d, [hl]                                    ; $7be9: $56
    sbc h                                         ; $7bea: $9c
    ld a, [hl-]                                   ; $7beb: $3a
    inc l                                         ; $7bec: $2c
    xor l                                         ; $7bed: $ad
    ld h, a                                       ; $7bee: $67
    ld l, b                                       ; $7bef: $68
    ld d, h                                       ; $7bf0: $54
    add l                                         ; $7bf1: $85
    and b                                         ; $7bf2: $a0
    ld sp, hl                                     ; $7bf3: $f9
    ld [hl], a                                    ; $7bf4: $77
    ld a, [bc]                                    ; $7bf5: $0a
    add hl, hl                                    ; $7bf6: $29
    add $1b                                       ; $7bf7: $c6 $1b
    rlca                                          ; $7bf9: $07
    scf                                           ; $7bfa: $37
    ld b, a                                       ; $7bfb: $47
    sbc [hl]                                      ; $7bfc: $9e
    push af                                       ; $7bfd: $f5
    cp a                                          ; $7bfe: $bf
    ld d, d                                       ; $7bff: $52
    dec e                                         ; $7c00: $1d
    ld d, e                                       ; $7c01: $53
    dec d                                         ; $7c02: $15
    pop hl                                        ; $7c03: $e1
    cp h                                          ; $7c04: $bc
    ld [hl], c                                    ; $7c05: $71
    nop                                           ; $7c06: $00
    rra                                           ; $7c07: $1f
    db $fd                                        ; $7c08: $fd
    adc [hl]                                      ; $7c09: $8e
    and b                                         ; $7c0a: $a0
    sbc [hl]                                      ; $7c0b: $9e
    ld a, [hl+]                                   ; $7c0c: $2a
    db $d3                                        ; $7c0d: $d3
    ld e, $72                                     ; $7c0e: $1e $72
    dec sp                                        ; $7c10: $3b
    nop                                           ; $7c11: $00
    sub a                                         ; $7c12: $97
    push bc                                       ; $7c13: $c5
    ld e, e                                       ; $7c14: $5b
    ei                                            ; $7c15: $fb
    or c                                          ; $7c16: $b1

jr_06b_7c17:
    ret nc                                        ; $7c17: $d0

    sub $09                                       ; $7c18: $d6 $09
    ld a, [hl]                                    ; $7c1a: $7e
    or [hl]                                       ; $7c1b: $b6
    or $3c                                        ; $7c1c: $f6 $3c
    push af                                       ; $7c1e: $f5
    inc [hl]                                      ; $7c1f: $34
    ld a, [de]                                    ; $7c20: $1a
    ld h, c                                       ; $7c21: $61
    dec bc                                        ; $7c22: $0b
    dec c                                         ; $7c23: $0d
    inc h                                         ; $7c24: $24
    sub [hl]                                      ; $7c25: $96
    dec sp                                        ; $7c26: $3b
    dec de                                        ; $7c27: $1b
    jp nz, $caa0                                  ; $7c28: $c2 $a0 $ca

    ld a, d                                       ; $7c2b: $7a
    ld [hl], $84                                  ; $7c2c: $36 $84
    ld a, [hl+]                                   ; $7c2e: $2a
    ld h, c                                       ; $7c2f: $61
    dec c                                         ; $7c30: $0d
    rst $00                                       ; $7c31: $c7
    adc d                                         ; $7c32: $8a
    cp e                                          ; $7c33: $bb
    ld e, e                                       ; $7c34: $5b
    ld c, a                                       ; $7c35: $4f
    ld d, l                                       ; $7c36: $55
    or $7b                                        ; $7c37: $f6 $7b
    xor [hl]                                      ; $7c39: $ae
    jr c, jr_06b_7c17                             ; $7c3a: $38 $db

    ld bc, $4737                                  ; $7c3c: $01 $37 $47
    sbc [hl]                                      ; $7c3f: $9e
    ld [hl], l                                    ; $7c40: $75
    jp nc, $a57f                                  ; $7c41: $d2 $7f $a5

    scf                                           ; $7c44: $37
    jp c, $fbcb                                   ; $7c45: $da $cb $fb

    add hl, hl                                    ; $7c48: $29
    ld e, l                                       ; $7c49: $5d
    ld [hl], b                                    ; $7c4a: $70
    ld e, l                                       ; $7c4b: $5d
    ld sp, hl                                     ; $7c4c: $f9
    rrca                                          ; $7c4d: $0f
    cp a                                          ; $7c4e: $bf
    ld d, d                                       ; $7c4f: $52
    rst $18                                       ; $7c50: $df
    or l                                          ; $7c51: $b5
    sub l                                         ; $7c52: $95
    ld c, a                                       ; $7c53: $4f
    inc de                                        ; $7c54: $13
    xor c                                         ; $7c55: $a9
    sub a                                         ; $7c56: $97
    ld a, d                                       ; $7c57: $7a
    sbc [hl]                                      ; $7c58: $9e
    cp d                                          ; $7c59: $ba
    xor a                                         ; $7c5a: $af
    ld l, $d5                                     ; $7c5b: $2e $d5
    ld l, c                                       ; $7c5d: $69
    sbc [hl]                                      ; $7c5e: $9e
    ld e, [hl]                                    ; $7c5f: $5e
    or a                                          ; $7c60: $b7
    ld de, $a231                                  ; $7c61: $11 $31 $a2
    ld l, a                                       ; $7c64: $6f
    xor a                                         ; $7c65: $af
    ld h, b                                       ; $7c66: $60
    ld e, e                                       ; $7c67: $5b
    or e                                          ; $7c68: $b3
    dec e                                         ; $7c69: $1d
    scf                                           ; $7c6a: $37
    ld l, c                                       ; $7c6b: $69
    ld e, $9e                                     ; $7c6c: $1e $9e
    ld l, a                                       ; $7c6e: $6f
    db $f4                                        ; $7c6f: $f4
    cp h                                          ; $7c70: $bc
    add c                                         ; $7c71: $81
    ld b, h                                       ; $7c72: $44
    ld d, a                                       ; $7c73: $57
    pop de                                        ; $7c74: $d1
    xor h                                         ; $7c75: $ac
    scf                                           ; $7c76: $37
    ld c, $1f                                     ; $7c77: $0e $1f
    xor l                                         ; $7c79: $ad
    ld a, h                                       ; $7c7a: $7c
    ld c, d                                       ; $7c7b: $4a
    rla                                           ; $7c7c: $17
    ld e, h                                       ; $7c7d: $5c
    dec d                                         ; $7c7e: $15
    ld b, d                                       ; $7c7f: $42
    ld l, [hl]                                    ; $7c80: $6e
    cp l                                          ; $7c81: $bd
    ld b, $ad                                     ; $7c82: $06 $ad
    rst $20                                       ; $7c84: $e7
    sbc a                                         ; $7c85: $9f
    adc l                                         ; $7c86: $8d
    or h                                          ; $7c87: $b4
    ld [$d3f2], a                                 ; $7c88: $ea $f2 $d3
    db $e4                                        ; $7c8b: $e4
    ld a, [hl+]                                   ; $7c8c: $2a
    or h                                          ; $7c8d: $b4
    ld [hl], h                                    ; $7c8e: $74
    ld l, e                                       ; $7c8f: $6b
    ld [$8da1], a                                 ; $7c90: $ea $a1 $8d
    add $3f                                       ; $7c93: $c6 $3f
    or h                                          ; $7c95: $b4
    pop hl                                        ; $7c96: $e1
    ld a, b                                       ; $7c97: $78
    jp c, Jump_000_34e8                           ; $7c98: $da $e8 $34

    add h                                         ; $7c9b: $84
    and c                                         ; $7c9c: $a1
    ld [hl], d                                    ; $7c9d: $72
    or d                                          ; $7c9e: $b2
    ld a, [c]                                     ; $7c9f: $f2
    sub h                                         ; $7ca0: $94
    sub [hl]                                      ; $7ca1: $96
    sub l                                         ; $7ca2: $95
    add hl, sp                                    ; $7ca3: $39
    ld a, [de]                                    ; $7ca4: $1a
    xor h                                         ; $7ca5: $ac
    xor h                                         ; $7ca6: $ac
    ld h, d                                       ; $7ca7: $62
    ld e, c                                       ; $7ca8: $59
    dec a                                         ; $7ca9: $3d
    ld [bc], a                                    ; $7caa: $02
    adc c                                         ; $7cab: $89
    dec sp                                        ; $7cac: $3b
    ei                                            ; $7cad: $fb
    dec a                                         ; $7cae: $3d
    ld d, a                                       ; $7caf: $57
    sbc h                                         ; $7cb0: $9c
    db $ed                                        ; $7cb1: $ed
    nop                                           ; $7cb2: $00
    rra                                           ; $7cb3: $1f
    scf                                           ; $7cb4: $37
    sub b                                         ; $7cb5: $90
    ret c                                         ; $7cb6: $d8

    dec bc                                        ; $7cb7: $0b
    db $fd                                        ; $7cb8: $fd
    cp b                                          ; $7cb9: $b8
    rst $10                                       ; $7cba: $d7
    ld l, l                                       ; $7cbb: $6d
    ld b, h                                       ; $7cbc: $44
    adc h                                         ; $7cbd: $8c
    add sp, -$25                                  ; $7cbe: $e8 $db
    dec hl                                        ; $7cc0: $2b
    ret c                                         ; $7cc1: $d8

    sub $bc                                       ; $7cc2: $d6 $bc
    ld [hl], c                                    ; $7cc4: $71
    nop                                           ; $7cc5: $00
    rra                                           ; $7cc6: $1f
    rst $30                                       ; $7cc7: $f7
    ei                                            ; $7cc8: $fb
    or c                                          ; $7cc9: $b1
    adc h                                         ; $7cca: $8c
    cp l                                          ; $7ccb: $bd
    ld hl, $150c                                  ; $7ccc: $21 $0c $15
    ld e, d                                       ; $7ccf: $5a
    cp d                                          ; $7cd0: $ba
    dec [hl]                                      ; $7cd1: $35
    ld e, d                                       ; $7cd2: $5a
    ld d, [hl]                                    ; $7cd3: $56
    ld l, b                                       ; $7cd4: $68
    jp hl                                         ; $7cd5: $e9


    ld d, $74                                     ; $7cd6: $16 $74
    db $eb                                        ; $7cd8: $eb
    ld sp, hl                                     ; $7cd9: $f9
    adc $46                                       ; $7cda: $ce $46
    jp $e6ed                                      ; $7cdc: $c3 $ed $e6


    adc c                                         ; $7cdf: $89
    ld [hl], a                                    ; $7ce0: $77
    rlc l                                         ; $7ce1: $cb $05
    xor l                                         ; $7ce3: $ad
    dec bc                                        ; $7ce4: $0b
    ld a, $2d                                     ; $7ce5: $3e $2d
    add hl, bc                                    ; $7ce7: $09
    xor l                                         ; $7ce8: $ad
    ld h, a                                       ; $7ce9: $67
    db $e3                                        ; $7cea: $e3
    ld a, b                                       ; $7ceb: $78
    ld l, b                                       ; $7cec: $68
    and c                                         ; $7ced: $a1
    dec c                                         ; $7cee: $0d
    ld h, c                                       ; $7cef: $61
    sub c                                         ; $7cf0: $91
    ld e, d                                       ; $7cf1: $5a
    ccf                                           ; $7cf2: $3f
    ld [hl], l                                    ; $7cf3: $75
    add hl, hl                                    ; $7cf4: $29
    ei                                            ; $7cf5: $fb
    ld de, $1594                                  ; $7cf6: $11 $94 $15
    ld h, c                                       ; $7cf9: $61

jr_06b_7cfa:
    ld b, a                                       ; $7cfa: $47
    sub e                                         ; $7cfb: $93
    xor e                                         ; $7cfc: $ab
    ld [hl], b                                    ; $7cfd: $70
    inc h                                         ; $7cfe: $24
    db $fc                                        ; $7cff: $fc
    ld d, h                                       ; $7d00: $54
    ld b, a                                       ; $7d01: $47
    ld l, b                                       ; $7d02: $68
    db $ec                                        ; $7d03: $ec
    push de                                       ; $7d04: $d5
    add hl, sp                                    ; $7d05: $39
    db $fd                                        ; $7d06: $fd
    ld [$da8b], sp                                ; $7d07: $08 $8b $da
    ld [$bc27], sp                                ; $7d0a: $08 $27 $bc
    ldh [$b6], a                                  ; $7d0d: $e0 $b6
    inc bc                                        ; $7d0f: $03
    rra                                           ; $7d10: $1f
    cpl                                           ; $7d11: $2f
    ld b, c                                       ; $7d12: $41
    sbc c                                         ; $7d13: $99
    xor d                                         ; $7d14: $aa
    sub e                                         ; $7d15: $93
    ld a, [$e4e9]                                 ; $7d16: $fa $e9 $e4
    sbc a                                         ; $7d19: $9f
    ld a, [$a105]                                 ; $7d1a: $fa $05 $a1
    dec sp                                        ; $7d1d: $3b
    ld a, a                                       ; $7d1e: $7f
    jp c, $9bda                                   ; $7d1f: $da $da $9b

    inc hl                                        ; $7d22: $23
    rst $08                                       ; $7d23: $cf
    ld a, d                                       ; $7d24: $7a
    and c                                         ; $7d25: $a1
    adc [hl]                                      ; $7d26: $8e
    ld [$57a6], a                                 ; $7d27: $ea $a6 $57
    ld h, c                                       ; $7d2a: $61
    or $53                                        ; $7d2b: $f6 $53
    xor a                                         ; $7d2d: $af
    ld c, a                                       ; $7d2e: $4f
    adc h                                         ; $7d2f: $8c
    or h                                          ; $7d30: $b4
    scf                                           ; $7d31: $37
    ld c, $37                                     ; $7d32: $0e $37
    sub [hl]                                      ; $7d34: $96
    inc de                                        ; $7d35: $13
    sub h                                         ; $7d36: $94
    xor c                                         ; $7d37: $a9
    ld a, [hl-]                                   ; $7d38: $3a
    ld l, c                                       ; $7d39: $69
    dec sp                                        ; $7d3a: $3b
    nop                                           ; $7d3b: $00
    rra                                           ; $7d3c: $1f
    ld a, [c]                                     ; $7d3d: $f2
    add h                                         ; $7d3e: $84
    db $fd                                        ; $7d3f: $fd
    ld d, d                                       ; $7d40: $52
    rst $08                                       ; $7d41: $cf
    ld d, e                                       ; $7d42: $53
    ld b, e                                       ; $7d43: $43
    ld h, [hl]                                    ; $7d44: $66
    push hl                                       ; $7d45: $e5
    ld l, d                                       ; $7d46: $6a
    jr nz, jr_06b_7cfa                            ; $7d47: $20 $b1

    and d                                         ; $7d49: $a2
    ld d, c                                       ; $7d4a: $51
    ld h, l                                       ; $7d4b: $65
    sub e                                         ; $7d4c: $93
    ld b, e                                       ; $7d4d: $43
    add l                                         ; $7d4e: $85
    or [hl]                                       ; $7d4f: $b6
    or d                                          ; $7d50: $b2
    add h                                         ; $7d51: $84
    rst $20                                       ; $7d52: $e7
    ld [hl-], a                                   ; $7d53: $32
    call nc, $d68f                                ; $7d54: $d4 $8f $d6
    ld sp, $9769                                  ; $7d57: $31 $69 $97
    cp c                                          ; $7d5a: $b9
    rst $18                                       ; $7d5b: $df
    pop de                                        ; $7d5c: $d1
    db $ed                                        ; $7d5d: $ed
    nop                                           ; $7d5e: $00
    sub a                                         ; $7d5f: $97
    rst $30                                       ; $7d60: $f7
    ld d, e                                       ; $7d61: $53
    cp d                                          ; $7d62: $ba
    ldh [$fa], a                                  ; $7d63: $e0 $fa
    ld e, a                                       ; $7d65: $5f
    xor c                                         ; $7d66: $a9
    ret                                           ; $7d67: $c9


    ld d, l                                       ; $7d68: $55
    ld de, $1bce                                  ; $7d69: $11 $ce $1b
    db $ed                                        ; $7d6c: $ed
    ld b, a                                       ; $7d6d: $47
    db $fc                                        ; $7d6e: $fc
    xor a                                         ; $7d6f: $af
    ld a, l                                       ; $7d70: $7d
    ld h, a                                       ; $7d71: $67
    ld b, e                                       ; $7d72: $43
    sbc d                                         ; $7d73: $9a
    ld h, a                                       ; $7d74: $67
    ld [$73d4], a                                 ; $7d75: $ea $d4 $73
    rst $20                                       ; $7d78: $e7
    halt                                          ; $7d79: $76
    nop                                           ; $7d7a: $00
    rra                                           ; $7d7b: $1f
    db $fd                                        ; $7d7c: $fd
    adc $76                                       ; $7d7d: $ce $76
    nop                                           ; $7d7f: $00
    rra                                           ; $7d80: $1f
    db $fd                                        ; $7d81: $fd
    ld c, [hl]                                    ; $7d82: $4e
    inc hl                                        ; $7d83: $23
    ld e, l                                       ; $7d84: $5d
    dec e                                         ; $7d85: $1d
    sub [hl]                                      ; $7d86: $96
    ld [hl], $af                                  ; $7d87: $36 $af
    ld a, h                                       ; $7d89: $7c
    ld c, d                                       ; $7d8a: $4a
    rla                                           ; $7d8b: $17
    ld e, h                                       ; $7d8c: $5c
    ld de, $ab48                                  ; $7d8d: $11 $48 $ab
    ret c                                         ; $7d90: $d8

    cpl                                           ; $7d91: $2f
    cp b                                          ; $7d92: $b8
    ld a, d                                       ; $7d93: $7a
    ld [hl], $df                                  ; $7d94: $36 $df
    and e                                         ; $7d96: $a3
    push af                                       ; $7d97: $f5
    or e                                          ; $7d98: $b3
    or h                                          ; $7d99: $b4
    xor h                                         ; $7d9a: $ac
    ld h, e                                       ; $7d9b: $63
    xor d                                         ; $7d9c: $aa
    ld hl, $a08e                                  ; $7d9d: $21 $8e $a0
    rst $10                                       ; $7da0: $d7
    ld l, c                                       ; $7da1: $69
    inc d                                         ; $7da2: $14
    ld b, d                                       ; $7da3: $42
    or a                                          ; $7da4: $b7
    inc bc                                        ; $7da5: $03
    ld e, a                                       ; $7da6: $5f
    rst $18                                       ; $7da7: $df
    cp [hl]                                       ; $7da8: $be
    ld a, l                                       ; $7da9: $7d
    ei                                            ; $7daa: $fb
    or $ed                                        ; $7dab: $f6 $ed
    ld l, l                                       ; $7dad: $6d
    db $db                                        ; $7dae: $db
    or [hl]                                       ; $7daf: $b6
    db $ed                                        ; $7db0: $ed
    nop                                           ; $7db1: $00
    rst $20                                       ; $7db2: $e7
    xor c                                         ; $7db3: $a9
    ld a, [hl-]                                   ; $7db4: $3a
    xor c                                         ; $7db5: $a9
    ld d, a                                       ; $7db6: $57
    ld l, c                                       ; $7db7: $69
    ld l, [hl]                                    ; $7db8: $6e
    ld c, l                                       ; $7db9: $4d
    ld h, [hl]                                    ; $7dba: $66
    rst $18                                       ; $7dbb: $df
    dec [hl]                                      ; $7dbc: $35
    db $e4                                        ; $7dbd: $e4
    inc de                                        ; $7dbe: $13
    ld c, l                                       ; $7dbf: $4d
    ld d, b                                       ; $7dc0: $50
    or $3f                                        ; $7dc1: $f6 $3f
    ld a, [c]                                     ; $7dc3: $f2
    ld c, h                                       ; $7dc4: $4c
    dec de                                        ; $7dc5: $1b
    ld c, b                                       ; $7dc6: $48
    ld [hl], h                                    ; $7dc7: $74
    push de                                       ; $7dc8: $d5
    rst $18                                       ; $7dc9: $df
    ld a, c                                       ; $7dca: $79
    db $e3                                        ; $7dcb: $e3
    nop                                           ; $7dcc: $00
    sbc a                                         ; $7dcd: $9f
    ld c, [hl]                                    ; $7dce: $4e
    cp $a9                                        ; $7dcf: $fe $a9
    ld e, a                                       ; $7dd1: $5f
    db $10                                        ; $7dd2: $10
    cp d                                          ; $7dd3: $ba
    di                                            ; $7dd4: $f3
    and a                                         ; $7dd5: $a7
    db $ed                                        ; $7dd6: $ed
    nop                                           ; $7dd7: $00
    ld d, a                                       ; $7dd8: $57
    ld h, c                                       ; $7dd9: $61
    or $53                                        ; $7dda: $f6 $53
    xor a                                         ; $7ddc: $af
    ld c, a                                       ; $7ddd: $4f
    adc h                                         ; $7dde: $8c
    or h                                          ; $7ddf: $b4
    db $ed                                        ; $7de0: $ed
    nop                                           ; $7de1: $00
    scf                                           ; $7de2: $37
    ld l, $d8                                     ; $7de3: $2e $d8
    sbc d                                         ; $7de5: $9a
    scf                                           ; $7de6: $37
    ld a, d                                       ; $7de7: $7a
    sbc [hl]                                      ; $7de8: $9e
    cp d                                          ; $7de9: $ba
    xor a                                         ; $7dea: $af
    add $e4                                       ; $7deb: $c6 $e4
    and a                                         ; $7ded: $a7
    ld a, [hl-]                                   ; $7dee: $3a
    ld b, d                                       ; $7def: $42
    ld h, e                                       ; $7df0: $63
    rst $38                                       ; $7df1: $ff
    inc hl                                        ; $7df2: $23
    rst $08                                       ; $7df3: $cf
    or [hl]                                       ; $7df4: $b6
    sbc $1c                                       ; $7df5: $de $1c
    ld a, c                                       ; $7df7: $79
    sub $ef                                       ; $7df8: $d6 $ef
    add e                                         ; $7dfa: $83
    dec de                                        ; $7dfb: $1b
    adc [hl]                                      ; $7dfc: $8e
    ld h, a                                       ; $7dfd: $67
    ld [hl], a                                    ; $7dfe: $77
    db $e4                                        ; $7dff: $e4
    adc e                                         ; $7e00: $8b
    or b                                          ; $7e01: $b0

jr_06b_7e02:
    adc d                                         ; $7e02: $8a
    cp b                                          ; $7e03: $b8
    ld [c], a                                     ; $7e04: $e2
    cp d                                          ; $7e05: $ba
    jr c, jr_06b_7e02                             ; $7e06: $38 $fa

    ld b, [hl]                                    ; $7e08: $46
    rst $18                                       ; $7e09: $df
    dec e                                         ; $7e0a: $1d
    adc l                                         ; $7e0b: $8d
    or b                                          ; $7e0c: $b0
    add l                                         ; $7e0d: $85
    ld a, d                                       ; $7e0e: $7a
    ld d, $a1                                     ; $7e0f: $16 $a1
    ld sp, $5a7b                                  ; $7e11: $31 $7b $5a
    sub e                                         ; $7e14: $93
    ld a, e                                       ; $7e15: $7b
    and e                                         ; $7e16: $a3
    xor a                                         ; $7e17: $af
    rla                                           ; $7e18: $17
    xor d                                         ; $7e19: $aa
    swap l                                        ; $7e1a: $cb $35
    sub b                                         ; $7e1c: $90
    ret c                                         ; $7e1d: $d8

    rst $38                                       ; $7e1e: $ff
    ret z                                         ; $7e1f: $c8

    or e                                          ; $7e20: $b3
    xor $c8                                       ; $7e21: $ee $c8
    rla                                           ; $7e23: $17
    pop de                                        ; $7e24: $d1
    jp hl                                         ; $7e25: $e9


    ld c, l                                       ; $7e26: $4d
    sbc d                                         ; $7e27: $9a
    ld e, a                                       ; $7e28: $5f
    ld l, [hl]                                    ; $7e29: $6e
    db $ed                                        ; $7e2a: $ed
    ei                                            ; $7e2b: $fb
    sbc d                                         ; $7e2c: $9a
    and h                                         ; $7e2d: $a4
    ld e, e                                       ; $7e2e: $5b
    ccf                                           ; $7e2f: $3f
    ld e, d                                       ; $7e30: $5a
    ld sp, hl                                     ; $7e31: $f9
    sub h                                         ; $7e32: $94
    ld l, $b8                                     ; $7e33: $2e $b8
    ld h, [hl]                                    ; $7e35: $66
    call nc, $2cad                                ; $7e36: $d4 $ad $2c
    ld b, [hl]                                    ; $7e39: $46
    ld b, l                                       ; $7e3a: $45
    ld [hl], b                                    ; $7e3b: $70
    ld [hl], a                                    ; $7e3c: $77
    rst $28                                       ; $7e3d: $ef
    dec bc                                        ; $7e3e: $0b
    cp l                                          ; $7e3f: $bd
    ld d, b                                       ; $7e40: $50
    rla                                           ; $7e41: $17
    ld a, h                                       ; $7e42: $7c
    ld e, d                                       ; $7e43: $5a
    ld [hl], d                                    ; $7e44: $72
    inc b                                         ; $7e45: $04
    ld [hl], l                                    ; $7e46: $75
    ret nc                                        ; $7e47: $d0

    ld [hl-], a                                   ; $7e48: $32
    push de                                       ; $7e49: $d5
    ld d, e                                       ; $7e4a: $53
    adc [hl]                                      ; $7e4b: $8e
    ld [hl], c                                    ; $7e4c: $71
    dec [hl]                                      ; $7e4d: $35
    adc [hl]                                      ; $7e4e: $8e
    rra                                           ; $7e4f: $1f
    db $ed                                        ; $7e50: $ed
    ld l, b                                       ; $7e51: $68
    rst $30                                       ; $7e52: $f7
    push af                                       ; $7e53: $f5
    or a                                          ; $7e54: $b7
    pop de                                        ; $7e55: $d1
    xor l                                         ; $7e56: $ad
    ld l, a                                       ; $7e57: $6f
    pop de                                        ; $7e58: $d1
    add hl, bc                                    ; $7e59: $09
    ld a, [hl+]                                   ; $7e5a: $2a
    ld e, $43                                     ; $7e5b: $1e $43
    dec a                                         ; $7e5d: $3d
    dec hl                                        ; $7e5e: $2b
    ld [hl], c                                    ; $7e5f: $71
    ld de, $0456                                  ; $7e60: $11 $56 $04
    ld [de], a                                    ; $7e63: $12
    ld [hl], a                                    ; $7e64: $77
    ld d, [hl]                                    ; $7e65: $56
    ld de, $d6ce                                  ; $7e66: $11 $ce $d6
    rst $08                                       ; $7e69: $cf
    and h                                         ; $7e6a: $a4
    jr jr_06b_7ed6                                ; $7e6b: $18 $69

    dec sp                                        ; $7e6d: $3b
    nop                                           ; $7e6e: $00
    scf                                           ; $7e6f: $37
    ld hl, sp+$3d                                 ; $7e70: $f8 $3d
    ld a, [de]                                    ; $7e72: $1a
    ld c, b                                       ; $7e73: $48
    ret c                                         ; $7e74: $d8

    dec hl                                        ; $7e75: $2b
    ld a, [de]                                    ; $7e76: $1a
    dec hl                                        ; $7e77: $2b
    ld [$1656], a                                 ; $7e78: $ea $56 $16
    and e                                         ; $7e7b: $a3
    ld [de], a                                    ; $7e7c: $12
    ld a, [bc]                                    ; $7e7d: $0a
    ld b, c                                       ; $7e7e: $41
    xor c                                         ; $7e7f: $a9
    ld hl, $1a6d                                  ; $7e80: $21 $6d $1a
    ld c, b                                       ; $7e83: $48
    inc l                                         ; $7e84: $2c
    ld [hl], a                                    ; $7e85: $77
    inc [hl]                                      ; $7e86: $34
    rst $38                                       ; $7e87: $ff
    ld c, [hl]                                    ; $7e88: $4e
    xor c                                         ; $7e89: $a9
    sub c                                         ; $7e8a: $91
    rst $18                                       ; $7e8b: $df
    and e                                         ; $7e8c: $a3
    ld a, e                                       ; $7e8d: $7b
    ldh a, [$d6]                                  ; $7e8e: $f0 $d6
    di                                            ; $7e90: $f3
    dec e                                         ; $7e91: $1d
    dec d                                         ; $7e92: $15
    ld h, c                                       ; $7e93: $61
    ld b, a                                       ; $7e94: $47
    dec a                                         ; $7e95: $3d
    dec e                                         ; $7e96: $1d
    sub [hl]                                      ; $7e97: $96
    ld [hl], $84                                  ; $7e98: $36 $84
    and c                                         ; $7e9a: $a1
    ld d, e                                       ; $7e9b: $53
    rst $00                                       ; $7e9c: $c7
    call nc, Call_06b_68d3                        ; $7e9d: $d4 $d3 $68
    sbc h                                         ; $7ea0: $9c
    db $ed                                        ; $7ea1: $ed
    nop                                           ; $7ea2: $00
    sbc a                                         ; $7ea3: $9f
    inc h                                         ; $7ea4: $24
    cp d                                          ; $7ea5: $ba
    ld b, $12                                     ; $7ea6: $06 $12
    xor l                                         ; $7ea8: $ad
    ld a, [hl]                                    ; $7ea9: $7e
    inc h                                         ; $7eaa: $24
    push af                                       ; $7eab: $f5
    adc l                                         ; $7eac: $8d
    ld c, e                                       ; $7ead: $4b
    cp l                                          ; $7eae: $bd
    add c                                         ; $7eaf: $81
    ld [hl], b                                    ; $7eb0: $70
    or h                                          ; $7eb1: $b4
    sbc [hl]                                      ; $7eb2: $9e
    sub l                                         ; $7eb3: $95
    ld [c], a                                     ; $7eb4: $e2
    sub c                                         ; $7eb5: $91
    or e                                          ; $7eb6: $b3
    inc hl                                        ; $7eb7: $23
    ld d, d                                       ; $7eb8: $52
    ret nc                                        ; $7eb9: $d0

    jr c, @+$18                                   ; $7eba: $38 $16

    ld d, a                                       ; $7ebc: $57
    ld d, $43                                     ; $7ebd: $16 $43
    db $eb                                        ; $7ebf: $eb
    ld e, c                                       ; $7ec0: $59
    ld [$11ef], sp                                ; $7ec1: $08 $ef $11
    adc [hl]                                      ; $7ec4: $8e
    ld b, c                                       ; $7ec5: $41
    ld d, b                                       ; $7ec6: $50
    ld de, $f7d7                                  ; $7ec7: $11 $d7 $f7
    rst $30                                       ; $7eca: $f7
    ld a, [c]                                     ; $7ecb: $f2
    or $ca                                        ; $7ecc: $f6 $ca
    ld [c], a                                     ; $7ece: $e2
    pop de                                        ; $7ecf: $d1
    ld a, d                                       ; $7ed0: $7a
    ld [hl], $8e                                  ; $7ed1: $36 $8e
    rra                                           ; $7ed3: $1f
    db $ed                                        ; $7ed4: $ed
    ld l, b                                       ; $7ed5: $68

jr_06b_7ed6:
    dec d                                         ; $7ed6: $15
    jp nz, Jump_06b_6a31                          ; $7ed7: $c2 $31 $6a

    ld e, c                                       ; $7eda: $59
    sub a                                         ; $7edb: $97
    ld d, [hl]                                    ; $7edc: $56
    sbc h                                         ; $7edd: $9c
    ld a, [hl-]                                   ; $7ede: $3a
    inc l                                         ; $7edf: $2c
    cp l                                          ; $7ee0: $bd
    ld [hl], h                                    ; $7ee1: $74
    nop                                           ; $7ee2: $00
    rra                                           ; $7ee3: $1f
    adc e                                         ; $7ee4: $8b
    cpl                                           ; $7ee5: $2f
    push af                                       ; $7ee6: $f5
    ld a, h                                       ; $7ee7: $7c
    ld b, a                                       ; $7ee8: $47
    inc hl                                        ; $7ee9: $23
    ld e, l                                       ; $7eea: $5d
    dec d                                         ; $7eeb: $15
    pop hl                                        ; $7eec: $e1
    ld l, b                                       ; $7eed: $68
    dec a                                         ; $7eee: $3d
    dec hl                                        ; $7eef: $2b
    push bc                                       ; $7ef0: $c5
    inc hl                                        ; $7ef1: $23
    ld h, a                                       ; $7ef2: $67
    ld b, a                                       ; $7ef3: $47
    db $e4                                        ; $7ef4: $e4
    and l                                         ; $7ef5: $a5
    inc bc                                        ; $7ef6: $03
    rra                                           ; $7ef7: $1f
    scf                                           ; $7ef8: $37
    sub b                                         ; $7ef9: $90
    ld e, b                                       ; $7efa: $58
    db $fd                                        ; $7efb: $fd
    sbc l                                         ; $7efc: $9d
    ld a, [hl+]                                   ; $7efd: $2a
    jp nz, Jump_06b_7ad1                          ; $7efe: $c2 $d1 $7a

    ld d, [hl]                                    ; $7f01: $56
    adc d                                         ; $7f02: $8a
    ld b, a                                       ; $7f03: $47
    adc $8e                                       ; $7f04: $ce $8e
    ret z                                         ; $7f06: $c8

    scf                                           ; $7f07: $37
    ld a, d                                       ; $7f08: $7a
    cp [hl]                                       ; $7f09: $be
    ld d, e                                       ; $7f0a: $53
    sbc e                                         ; $7f0b: $9b
    ld a, a                                       ; $7f0c: $7f
    and a                                         ; $7f0d: $a7
    ld a, [$553b]                                 ; $7f0e: $fa $3b $55
    add h                                         ; $7f11: $84
    and e                                         ; $7f12: $a3
    push af                                       ; $7f13: $f5
    db $ec                                        ; $7f14: $ec
    sbc a                                         ; $7f15: $9f
    and $e1                                       ; $7f16: $e6 $e1
    add hl, hl                                    ; $7f18: $29
    xor b                                         ; $7f19: $a8
    cp $ce                                        ; $7f1a: $fe $ce
    dec de                                        ; $7f1c: $1b
    rlca                                          ; $7f1d: $07
    rra                                           ; $7f1e: $1f
    db $fd                                        ; $7f1f: $fd
    adc [hl]                                      ; $7f20: $8e
    and b                                         ; $7f21: $a0
    ld c, $5a                                     ; $7f22: $0e $5a
    xor $d4                                       ; $7f24: $ee $d4
    ld [$d4ef], a                                 ; $7f26: $ea $ef $d4
    ld [hl], e                                    ; $7f29: $73
    ld e, a                                       ; $7f2a: $5f
    ld [hl], d                                    ; $7f2b: $72
    adc l                                         ; $7f2c: $8d
    adc [hl]                                      ; $7f2d: $8e
    ld l, [hl]                                    ; $7f2e: $6e
    cp l                                          ; $7f2f: $bd
    cp h                                          ; $7f30: $bc
    ld e, a                                       ; $7f31: $5f
    ld [hl], b                                    ; $7f32: $70
    push af                                       ; $7f33: $f5
    ld c, e                                       ; $7f34: $4b
    ld [hl], l                                    ; $7f35: $75
    inc b                                         ; $7f36: $04
    push hl                                       ; $7f37: $e5
    ld c, [hl]                                    ; $7f38: $4e
    db $ed                                        ; $7f39: $ed
    sbc a                                         ; $7f3a: $9f
    xor [hl]                                      ; $7f3b: $ae

Jump_06b_7f3c:
    ld [hl], d                                    ; $7f3c: $72
    ld e, h                                       ; $7f3d: $5c
    dec h                                         ; $7f3e: $25
    inc l                                         ; $7f3f: $2c
    ld b, d                                       ; $7f40: $42
    db $eb                                        ; $7f41: $eb
    ld e, c                                       ; $7f42: $59
    and c                                         ; $7f43: $a1
    and l                                         ; $7f44: $a5
    ld e, e                                       ; $7f45: $5b
    ret nc                                        ; $7f46: $d0

    or d                                          ; $7f47: $b2
    ld b, d                                       ; $7f48: $42
    ld c, e                                       ; $7f49: $4b
    or a                                          ; $7f4a: $b7
    ld b, [hl]                                    ; $7f4b: $46
    dec hl                                        ; $7f4c: $2b
    add d                                         ; $7f4d: $82
    dec de                                        ; $7f4e: $1b
    dec e                                         ; $7f4f: $1d
    xor l                                         ; $7f50: $ad
    ld h, a                                       ; $7f51: $67
    adc [hl]                                      ; $7f52: $8e
    ld [hl], $db                                  ; $7f53: $36 $db
    ld bc, $f21f                                  ; $7f55: $01 $1f $f2
    add h                                         ; $7f58: $84
    ld e, l                                       ; $7f59: $5d

jr_06b_7f5a:
    ld d, b                                       ; $7f5a: $50
    add a                                         ; $7f5b: $87
    and l                                         ; $7f5c: $a5
    ld c, l                                       ; $7f5d: $4d
    xor [hl]                                      ; $7f5e: $ae
    rst $18                                       ; $7f5f: $df
    ld [hl], e                                    ; $7f60: $73
    push bc                                       ; $7f61: $c5
    xor c                                         ; $7f62: $a9
    ld h, a                                       ; $7f63: $67
    push hl                                       ; $7f64: $e5
    ld h, h                                       ; $7f65: $64
    push hl                                       ; $7f66: $e5
    add hl, hl                                    ; $7f67: $29
    dec l                                         ; $7f68: $2d
    xor e                                         ; $7f69: $ab
    add h                                         ; $7f6a: $84
    ld b, l                                       ; $7f6b: $45
    ld l, b                                       ; $7f6c: $68
    ld b, e                                       ; $7f6d: $43
    jr jr_06b_7f5a                                ; $7f6e: $18 $ea

    ld d, [hl]                                    ; $7f70: $56
    ld d, $a3                                     ; $7f71: $16 $a3
    ld [hl], d                                    ; $7f73: $72
    halt                                          ; $7f74: $76
    ld e, [hl]                                    ; $7f75: $5e
    db $fc                                        ; $7f76: $fc
    sbc l                                         ; $7f77: $9d
    db $ed                                        ; $7f78: $ed
    nop                                           ; $7f79: $00
    scf                                           ; $7f7a: $37
    ld b, a                                       ; $7f7b: $47
    sbc [hl]                                      ; $7f7c: $9e
    ld d, l                                       ; $7f7d: $55
    adc $4e                                       ; $7f7e: $ce $4e
    cp c                                          ; $7f80: $b9
    ld h, $a3                                     ; $7f81: $26 $a3
    ld de, $784e                                  ; $7f83: $11 $4e $78
    pop bc                                        ; $7f86: $c1
    cp l                                          ; $7f87: $bd
    pop de                                        ; $7f88: $d1
    xor e                                         ; $7f89: $ab
    pop bc                                        ; $7f8a: $c1
    ld c, l                                       ; $7f8b: $4d
    xor [hl]                                      ; $7f8c: $ae
    ld [hl], d                                    ; $7f8d: $72
    ld c, a                                       ; $7f8e: $4f
    ld b, d                                       ; $7f8f: $42
    sub $b3                                       ; $7f90: $d6 $b3
    ld [hl], d                                    ; $7f92: $72
    halt                                          ; $7f93: $76
    jp z, Jump_000_1935                           ; $7f94: $ca $35 $19

    ld a, [hl]                                    ; $7f97: $7e
    adc h                                         ; $7f98: $8c
    ld e, d                                       ; $7f99: $5a
    cp d                                          ; $7f9a: $ba
    ld e, [hl]                                    ; $7f9b: $5e
    sbc l                                         ; $7f9c: $9d
    db $d3                                        ; $7f9d: $d3
    adc a                                         ; $7f9e: $8f
    or b                                          ; $7f9f: $b0
    xor b                                         ; $7fa0: $a8
    db $dd                                        ; $7fa1: $dd
    or [hl]                                       ; $7fa2: $b6
    xor l                                         ; $7fa3: $ad
    db $ec                                        ; $7fa4: $ec
    and h                                         ; $7fa5: $a4
    rst $38                                       ; $7fa6: $ff
    xor d                                         ; $7fa7: $aa
    ld e, a                                       ; $7fa8: $5f
    or a                                          ; $7fa9: $b7
    ld l, c                                       ; $7faa: $69
    dec c                                         ; $7fab: $0d
    inc h                                         ; $7fac: $24
    or $3f                                        ; $7fad: $f6 $3f
    ld a, [c]                                     ; $7faf: $f2
    xor h                                         ; $7fb0: $ac
    pop hl                                        ; $7fb1: $e1
    ld a, b                                       ; $7fb2: $78
    ld [hl], $69                                  ; $7fb3: $36 $69
    ldh a, [rNR13]                                ; $7fb5: $f0 $13
    dec sp                                        ; $7fb7: $3b
    or h                                          ; $7fb8: $b4
    ld hl, $150c                                  ; $7fb9: $21 $0c $15
    pop hl                                        ; $7fbc: $e1
    ld [hl], $ad                                  ; $7fbd: $36 $ad
    ld [hl+], a                                   ; $7fbf: $22
    xor [hl]                                      ; $7fc0: $ae
    cp b                                          ; $7fc1: $b8
    ld l, $8e                                     ; $7fc2: $2e $8e
    ld l, [hl]                                    ; $7fc4: $6e
    db $fd                                        ; $7fc5: $fd
    inc h                                         ; $7fc6: $24
    ld hl, $a9fb                                  ; $7fc7: $21 $fb $a9
    inc e                                         ; $7fca: $1c
    rla                                           ; $7fcb: $17
    ld a, [de]                                    ; $7fcc: $1a
    xor h                                         ; $7fcd: $ac
    adc d                                         ; $7fce: $8a
    ld [hl], b                                    ; $7fcf: $70
    or h                                          ; $7fd0: $b4
    sbc [hl]                                      ; $7fd1: $9e
    sub l                                         ; $7fd2: $95
    ld [c], a                                     ; $7fd3: $e2
    sub c                                         ; $7fd4: $91
    or e                                          ; $7fd5: $b3
    inc hl                                        ; $7fd6: $23
    ld d, d                                       ; $7fd7: $52
    ld d, b                                       ; $7fd8: $50
    and l                                         ; $7fd9: $a5
    dec bc                                        ; $7fda: $0b
    adc l                                         ; $7fdb: $8d
    dec c                                         ; $7fdc: $0d
    ld l, l                                       ; $7fdd: $6d
    ld h, h                                       ; $7fde: $64
    ld [hl-], a                                   ; $7fdf: $32
    ld [hl], $e4                                  ; $7fe0: $36 $e4
    adc [hl]                                      ; $7fe2: $8e
    ld c, d                                       ; $7fe3: $4a
    ld e, b                                       ; $7fe4: $58
    ld b, h                                       ; $7fe5: $44
    inc sp                                        ; $7fe6: $33
    ld c, d                                       ; $7fe7: $4a
    daa                                           ; $7fe8: $27
    call nz, Call_000_138e                        ; $7fe9: $c4 $8e $13
    db $dd                                        ; $7fec: $dd
    halt                                          ; $7fed: $76
    nop                                           ; $7fee: $00
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
