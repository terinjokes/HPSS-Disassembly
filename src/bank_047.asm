; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $047", ROMX[$4000], BANK[$47]

    ld b, a                                       ; $4000: $47
    nop                                           ; $4001: $00
    sub l                                         ; $4002: $95
    inc h                                         ; $4003: $24
    nop                                           ; $4004: $00
    and e                                         ; $4005: $a3
    inc h                                         ; $4006: $24
    nop                                           ; $4007: $00
    or b                                          ; $4008: $b0
    inc h                                         ; $4009: $24
    nop                                           ; $400a: $00
    sla h                                         ; $400b: $cb $24
    nop                                           ; $400d: $00
    ret nc                                        ; $400e: $d0

    inc h                                         ; $400f: $24
    nop                                           ; $4010: $00
    call nc, $0024                                ; $4011: $d4 $24 $00
    db $db                                        ; $4014: $db
    inc h                                         ; $4015: $24
    nop                                           ; $4016: $00
    ld [c], a                                     ; $4017: $e2
    inc h                                         ; $4018: $24
    nop                                           ; $4019: $00
    xor $24                                       ; $401a: $ee $24
    nop                                           ; $401c: $00
    ld a, [$0024]                                 ; $401d: $fa $24 $00
    inc bc                                        ; $4020: $03
    dec h                                         ; $4021: $25
    nop                                           ; $4022: $00
    inc c                                         ; $4023: $0c
    dec h                                         ; $4024: $25
    nop                                           ; $4025: $00
    ld d, $25                                     ; $4026: $16 $25
    nop                                           ; $4028: $00
    ld hl, $0025                                  ; $4029: $21 $25 $00
    inc l                                         ; $402c: $2c
    dec h                                         ; $402d: $25
    nop                                           ; $402e: $00
    scf                                           ; $402f: $37
    dec h                                         ; $4030: $25
    nop                                           ; $4031: $00
    ld b, e                                       ; $4032: $43
    dec h                                         ; $4033: $25
    nop                                           ; $4034: $00
    ld c, a                                       ; $4035: $4f
    dec h                                         ; $4036: $25
    nop                                           ; $4037: $00
    ld e, h                                       ; $4038: $5c
    dec h                                         ; $4039: $25
    nop                                           ; $403a: $00
    ld h, l                                       ; $403b: $65
    dec h                                         ; $403c: $25
    nop                                           ; $403d: $00
    ld l, [hl]                                    ; $403e: $6e
    dec h                                         ; $403f: $25
    nop                                           ; $4040: $00
    ld [hl], a                                    ; $4041: $77
    dec h                                         ; $4042: $25
    nop                                           ; $4043: $00
    add h                                         ; $4044: $84
    dec h                                         ; $4045: $25
    nop                                           ; $4046: $00
    sub c                                         ; $4047: $91
    dec h                                         ; $4048: $25
    nop                                           ; $4049: $00
    sbc l                                         ; $404a: $9d
    dec h                                         ; $404b: $25
    nop                                           ; $404c: $00
    xor d                                         ; $404d: $aa
    dec h                                         ; $404e: $25
    nop                                           ; $404f: $00
    or a                                          ; $4050: $b7
    dec h                                         ; $4051: $25
    nop                                           ; $4052: $00
    sla l                                         ; $4053: $cb $25
    nop                                           ; $4055: $00
    rst $28                                       ; $4056: $ef
    dec h                                         ; $4057: $25
    nop                                           ; $4058: $00
    db $fd                                        ; $4059: $fd
    dec h                                         ; $405a: $25
    nop                                           ; $405b: $00
    ld de, $0026                                  ; $405c: $11 $26 $00
    daa                                           ; $405f: $27
    ld h, $00                                     ; $4060: $26 $00
    and b                                         ; $4062: $a0
    ld h, $00                                     ; $4063: $26 $00
    ldh a, [rNR52]                                ; $4065: $f0 $26
    nop                                           ; $4067: $00
    ld [bc], a                                    ; $4068: $02
    daa                                           ; $4069: $27
    nop                                           ; $406a: $00
    dec de                                        ; $406b: $1b
    daa                                           ; $406c: $27
    nop                                           ; $406d: $00
    inc sp                                        ; $406e: $33
    daa                                           ; $406f: $27
    nop                                           ; $4070: $00
    ld c, b                                       ; $4071: $48
    daa                                           ; $4072: $27
    nop                                           ; $4073: $00
    ld e, l                                       ; $4074: $5d
    daa                                           ; $4075: $27
    nop                                           ; $4076: $00
    ld a, c                                       ; $4077: $79
    daa                                           ; $4078: $27
    nop                                           ; $4079: $00
    and b                                         ; $407a: $a0
    daa                                           ; $407b: $27
    nop                                           ; $407c: $00
    call nz, Call_000_0027                        ; $407d: $c4 $27 $00
    and $27                                       ; $4080: $e6 $27
    nop                                           ; $4082: $00
    ld b, $28                                     ; $4083: $06 $28
    nop                                           ; $4085: $00
    ld de, $0028                                  ; $4086: $11 $28 $00
    ld sp, $0028                                  ; $4089: $31 $28 $00
    ld c, b                                       ; $408c: $48
    jr z, jr_047_408f                             ; $408d: $28 $00

jr_047_408f:
    ld e, b                                       ; $408f: $58
    jr z, jr_047_4092                             ; $4090: $28 $00

jr_047_4092:
    add e                                         ; $4092: $83
    jr z, jr_047_4095                             ; $4093: $28 $00

jr_047_4095:
    and d                                         ; $4095: $a2
    jr z, jr_047_4098                             ; $4096: $28 $00

jr_047_4098:
    or [hl]                                       ; $4098: $b6
    jr z, jr_047_409b                             ; $4099: $28 $00

jr_047_409b:
    pop bc                                        ; $409b: $c1
    jr z, jr_047_409e                             ; $409c: $28 $00

jr_047_409e:
    pop de                                        ; $409e: $d1
    jr z, jr_047_40a1                             ; $409f: $28 $00

jr_047_40a1:
    db $e4                                        ; $40a1: $e4
    jr z, jr_047_40a4                             ; $40a2: $28 $00

jr_047_40a4:
    dec b                                         ; $40a4: $05
    add hl, hl                                    ; $40a5: $29
    nop                                           ; $40a6: $00
    ccf                                           ; $40a7: $3f
    add hl, hl                                    ; $40a8: $29
    nop                                           ; $40a9: $00
    ld l, c                                       ; $40aa: $69
    add hl, hl                                    ; $40ab: $29
    nop                                           ; $40ac: $00
    adc h                                         ; $40ad: $8c
    add hl, hl                                    ; $40ae: $29
    nop                                           ; $40af: $00
    xor d                                         ; $40b0: $aa
    add hl, hl                                    ; $40b1: $29
    nop                                           ; $40b2: $00
    call z, Call_000_0029                         ; $40b3: $cc $29 $00
    pop af                                        ; $40b6: $f1
    add hl, hl                                    ; $40b7: $29
    nop                                           ; $40b8: $00
    ld a, [bc]                                    ; $40b9: $0a
    ld a, [hl+]                                   ; $40ba: $2a
    nop                                           ; $40bb: $00
    dec e                                         ; $40bc: $1d
    ld a, [hl+]                                   ; $40bd: $2a
    nop                                           ; $40be: $00
    ld b, [hl]                                    ; $40bf: $46
    ld a, [hl+]                                   ; $40c0: $2a
    nop                                           ; $40c1: $00
    ld e, e                                       ; $40c2: $5b
    ld a, [hl+]                                   ; $40c3: $2a
    nop                                           ; $40c4: $00
    sub e                                         ; $40c5: $93
    ld a, [hl+]                                   ; $40c6: $2a
    nop                                           ; $40c7: $00
    xor h                                         ; $40c8: $ac
    ld a, [hl+]                                   ; $40c9: $2a
    nop                                           ; $40ca: $00
    ld e, $2b                                     ; $40cb: $1e $2b
    nop                                           ; $40cd: $00
    ld a, [hl+]                                   ; $40ce: $2a
    dec hl                                        ; $40cf: $2b
    nop                                           ; $40d0: $00
    ld d, a                                       ; $40d1: $57
    dec hl                                        ; $40d2: $2b
    nop                                           ; $40d3: $00
    ld l, d                                       ; $40d4: $6a
    dec hl                                        ; $40d5: $2b
    nop                                           ; $40d6: $00
    ld a, c                                       ; $40d7: $79
    dec hl                                        ; $40d8: $2b
    nop                                           ; $40d9: $00
    add a                                         ; $40da: $87
    dec hl                                        ; $40db: $2b
    nop                                           ; $40dc: $00
    or b                                          ; $40dd: $b0
    dec hl                                        ; $40de: $2b
    nop                                           ; $40df: $00
    ret z                                         ; $40e0: $c8

    dec hl                                        ; $40e1: $2b
    nop                                           ; $40e2: $00
    call $002b                                    ; $40e3: $cd $2b $00
    jp nc, $002b                                  ; $40e6: $d2 $2b $00

    ret c                                         ; $40e9: $d8

    dec hl                                        ; $40ea: $2b
    nop                                           ; $40eb: $00
    ld b, $2c                                     ; $40ec: $06 $2c
    nop                                           ; $40ee: $00
    inc [hl]                                      ; $40ef: $34
    inc l                                         ; $40f0: $2c
    nop                                           ; $40f1: $00
    ld e, c                                       ; $40f2: $59
    inc l                                         ; $40f3: $2c
    nop                                           ; $40f4: $00
    xor d                                         ; $40f5: $aa
    inc l                                         ; $40f6: $2c
    nop                                           ; $40f7: $00
    push de                                       ; $40f8: $d5
    inc l                                         ; $40f9: $2c
    nop                                           ; $40fa: $00
    ld [bc], a                                    ; $40fb: $02
    dec l                                         ; $40fc: $2d
    nop                                           ; $40fd: $00
    ld [hl-], a                                   ; $40fe: $32
    dec l                                         ; $40ff: $2d
    nop                                           ; $4100: $00
    ld c, l                                       ; $4101: $4d
    dec l                                         ; $4102: $2d
    nop                                           ; $4103: $00
    sub a                                         ; $4104: $97
    dec l                                         ; $4105: $2d
    nop                                           ; $4106: $00
    and e                                         ; $4107: $a3
    dec l                                         ; $4108: $2d
    nop                                           ; $4109: $00
    ret nz                                        ; $410a: $c0

    dec l                                         ; $410b: $2d
    nop                                           ; $410c: $00
    adc $2d                                       ; $410d: $ce $2d
    nop                                           ; $410f: $00
    pop af                                        ; $4110: $f1
    dec l                                         ; $4111: $2d
    nop                                           ; $4112: $00
    inc bc                                        ; $4113: $03
    ld l, $00                                     ; $4114: $2e $00
    ld sp, $002e                                  ; $4116: $31 $2e $00
    ld a, a                                       ; $4119: $7f
    ld l, $00                                     ; $411a: $2e $00
    xor [hl]                                      ; $411c: $ae
    ld l, $00                                     ; $411d: $2e $00
    ld [c], a                                     ; $411f: $e2
    ld l, $00                                     ; $4120: $2e $00
    ld d, b                                       ; $4122: $50
    cpl                                           ; $4123: $2f
    nop                                           ; $4124: $00
    ld e, l                                       ; $4125: $5d
    cpl                                           ; $4126: $2f
    nop                                           ; $4127: $00
    add $2f                                       ; $4128: $c6 $2f
    nop                                           ; $412a: $00
    call c, $002f                                 ; $412b: $dc $2f $00
    ld a, [$002f]                                 ; $412e: $fa $2f $00
    inc d                                         ; $4131: $14
    jr nc, jr_047_4134                            ; $4132: $30 $00

jr_047_4134:
    inc e                                         ; $4134: $1c
    jr nc, jr_047_4137                            ; $4135: $30 $00

jr_047_4137:
    ld b, [hl]                                    ; $4137: $46
    jr nc, jr_047_413a                            ; $4138: $30 $00

jr_047_413a:
    ld [hl], a                                    ; $413a: $77
    jr nc, jr_047_413d                            ; $413b: $30 $00

jr_047_413d:
    ld a, e                                       ; $413d: $7b
    jr nc, jr_047_4140                            ; $413e: $30 $00

Jump_047_4140:
jr_047_4140:
    sbc h                                         ; $4140: $9c
    jr nc, jr_047_4143                            ; $4141: $30 $00

jr_047_4143:
    push bc                                       ; $4143: $c5
    jr nc, jr_047_4146                            ; $4144: $30 $00

jr_047_4146:
    pop de                                        ; $4146: $d1
    jr nc, jr_047_4149                            ; $4147: $30 $00

jr_047_4149:
    db $ed                                        ; $4149: $ed
    jr nc, jr_047_414c                            ; $414a: $30 $00

jr_047_414c:
    inc b                                         ; $414c: $04
    ld sp, $3300                                  ; $414d: $31 $00 $33
    ld sp, $4700                                  ; $4150: $31 $00 $47
    ld sp, $a900                                  ; $4153: $31 $00 $a9
    ld sp, $ce00                                  ; $4156: $31 $00 $ce
    ld sp, $d800                                  ; $4159: $31 $00 $d8
    ld sp, $f900                                  ; $415c: $31 $00 $f9
    ld sp, $0700                                  ; $415f: $31 $00 $07
    ld [hl-], a                                   ; $4162: $32
    nop                                           ; $4163: $00
    ld h, c                                       ; $4164: $61
    ld [hl-], a                                   ; $4165: $32
    nop                                           ; $4166: $00
    add h                                         ; $4167: $84
    ld [hl-], a                                   ; $4168: $32
    nop                                           ; $4169: $00
    adc a                                         ; $416a: $8f
    ld [hl-], a                                   ; $416b: $32
    nop                                           ; $416c: $00
    or b                                          ; $416d: $b0
    ld [hl-], a                                   ; $416e: $32
    nop                                           ; $416f: $00
    cp [hl]                                       ; $4170: $be
    ld [hl-], a                                   ; $4171: $32

Call_047_4172:
    nop                                           ; $4172: $00
    db $db                                        ; $4173: $db
    ld [hl-], a                                   ; $4174: $32
    nop                                           ; $4175: $00
    rst $28                                       ; $4176: $ef
    ld [hl-], a                                   ; $4177: $32
    nop                                           ; $4178: $00
    rla                                           ; $4179: $17
    inc sp                                        ; $417a: $33
    nop                                           ; $417b: $00
    inc hl                                        ; $417c: $23
    inc sp                                        ; $417d: $33
    nop                                           ; $417e: $00
    add hl, sp                                    ; $417f: $39
    inc sp                                        ; $4180: $33
    nop                                           ; $4181: $00
    ld b, b                                       ; $4182: $40
    inc sp                                        ; $4183: $33
    nop                                           ; $4184: $00
    ld c, c                                       ; $4185: $49
    inc sp                                        ; $4186: $33
    nop                                           ; $4187: $00
    ld d, c                                       ; $4188: $51
    inc sp                                        ; $4189: $33
    nop                                           ; $418a: $00
    ld e, l                                       ; $418b: $5d
    inc sp                                        ; $418c: $33
    nop                                           ; $418d: $00
    ld l, b                                       ; $418e: $68
    inc sp                                        ; $418f: $33
    nop                                           ; $4190: $00
    halt                                          ; $4191: $76
    inc sp                                        ; $4192: $33
    nop                                           ; $4193: $00
    add h                                         ; $4194: $84
    inc sp                                        ; $4195: $33
    nop                                           ; $4196: $00
    adc c                                         ; $4197: $89
    inc sp                                        ; $4198: $33
    nop                                           ; $4199: $00
    sub c                                         ; $419a: $91
    inc sp                                        ; $419b: $33
    nop                                           ; $419c: $00
    cp h                                          ; $419d: $bc
    inc sp                                        ; $419e: $33
    nop                                           ; $419f: $00
    inc b                                         ; $41a0: $04
    inc [hl]                                      ; $41a1: $34
    nop                                           ; $41a2: $00
    ld l, $34                                     ; $41a3: $2e $34
    nop                                           ; $41a5: $00
    ld a, $34                                     ; $41a6: $3e $34
    nop                                           ; $41a8: $00
    ld c, [hl]                                    ; $41a9: $4e
    inc [hl]                                      ; $41aa: $34
    nop                                           ; $41ab: $00
    ld e, [hl]                                    ; $41ac: $5e
    inc [hl]                                      ; $41ad: $34
    nop                                           ; $41ae: $00

Call_047_41af:
    halt                                          ; $41af: $76
    inc [hl]                                      ; $41b0: $34
    nop                                           ; $41b1: $00
    and c                                         ; $41b2: $a1
    inc [hl]                                      ; $41b3: $34
    nop                                           ; $41b4: $00
    or e                                          ; $41b5: $b3
    inc [hl]                                      ; $41b6: $34
    nop                                           ; $41b7: $00
    pop hl                                        ; $41b8: $e1
    inc [hl]                                      ; $41b9: $34
    nop                                           ; $41ba: $00
    ld [$0034], a                                 ; $41bb: $ea $34 $00
    nop                                           ; $41be: $00
    dec [hl]                                      ; $41bf: $35
    nop                                           ; $41c0: $00
    jr c, jr_047_41f8                             ; $41c1: $38 $35

    nop                                           ; $41c3: $00
    ld c, [hl]                                    ; $41c4: $4e
    dec [hl]                                      ; $41c5: $35
    nop                                           ; $41c6: $00
    ld a, e                                       ; $41c7: $7b
    dec [hl]                                      ; $41c8: $35
    nop                                           ; $41c9: $00
    sub [hl]                                      ; $41ca: $96
    dec [hl]                                      ; $41cb: $35
    nop                                           ; $41cc: $00
    or l                                          ; $41cd: $b5
    dec [hl]                                      ; $41ce: $35
    nop                                           ; $41cf: $00
    ret z                                         ; $41d0: $c8

    dec [hl]                                      ; $41d1: $35
    nop                                           ; $41d2: $00
    ldh [$35], a                                  ; $41d3: $e0 $35
    nop                                           ; $41d5: $00
    add sp, $35                                   ; $41d6: $e8 $35
    nop                                           ; $41d8: $00
    inc b                                         ; $41d9: $04
    ld [hl], $00                                  ; $41da: $36 $00
    inc e                                         ; $41dc: $1c
    ld [hl], $00                                  ; $41dd: $36 $00
    add hl, hl                                    ; $41df: $29
    ld [hl], $00                                  ; $41e0: $36 $00
    ld b, b                                       ; $41e2: $40
    ld [hl], $00                                  ; $41e3: $36 $00
    ld c, [hl]                                    ; $41e5: $4e
    ld [hl], $00                                  ; $41e6: $36 $00
    ld [hl], d                                    ; $41e8: $72
    ld [hl], $00                                  ; $41e9: $36 $00
    and l                                         ; $41eb: $a5
    ld [hl], $00                                  ; $41ec: $36 $00
    push de                                       ; $41ee: $d5
    ld [hl], $00                                  ; $41ef: $36 $00
    dec c                                         ; $41f1: $0d
    scf                                           ; $41f2: $37
    nop                                           ; $41f3: $00
    jr nc, jr_047_422d                            ; $41f4: $30 $37

    nop                                           ; $41f6: $00
    ld c, h                                       ; $41f7: $4c

jr_047_41f8:
    scf                                           ; $41f8: $37
    nop                                           ; $41f9: $00
    ld h, e                                       ; $41fa: $63
    scf                                           ; $41fb: $37
    nop                                           ; $41fc: $00
    ld [hl], a                                    ; $41fd: $77
    scf                                           ; $41fe: $37
    nop                                           ; $41ff: $00
    sub l                                         ; $4200: $95
    scf                                           ; $4201: $37
    nop                                           ; $4202: $00
    xor e                                         ; $4203: $ab
    scf                                           ; $4204: $37
    nop                                           ; $4205: $00
    ret nc                                        ; $4206: $d0

    scf                                           ; $4207: $37
    nop                                           ; $4208: $00
    pop hl                                        ; $4209: $e1
    scf                                           ; $420a: $37
    nop                                           ; $420b: $00
    dec b                                         ; $420c: $05
    jr c, jr_047_420f                             ; $420d: $38 $00

jr_047_420f:
    jr nz, jr_047_4249                            ; $420f: $20 $38

    nop                                           ; $4211: $00
    add hl, sp                                    ; $4212: $39
    jr c, jr_047_4215                             ; $4213: $38 $00

jr_047_4215:
    ld c, [hl]                                    ; $4215: $4e
    jr c, jr_047_4218                             ; $4216: $38 $00

jr_047_4218:
    ld e, h                                       ; $4218: $5c
    jr c, jr_047_421b                             ; $4219: $38 $00

jr_047_421b:
    ld l, l                                       ; $421b: $6d
    jr c, jr_047_421e                             ; $421c: $38 $00

jr_047_421e:
    ld a, c                                       ; $421e: $79
    jr c, jr_047_4221                             ; $421f: $38 $00

jr_047_4221:
    sub c                                         ; $4221: $91
    jr c, jr_047_4224                             ; $4222: $38 $00

jr_047_4224:
    rst $10                                       ; $4224: $d7
    jr c, jr_047_4227                             ; $4225: $38 $00

jr_047_4227:
    db $f4                                        ; $4227: $f4
    jr c, jr_047_422a                             ; $4228: $38 $00

jr_047_422a:
    inc d                                         ; $422a: $14
    add hl, sp                                    ; $422b: $39
    nop                                           ; $422c: $00

jr_047_422d:
    ld hl, $0039                                  ; $422d: $21 $39 $00
    ld [hl-], a                                   ; $4230: $32
    add hl, sp                                    ; $4231: $39
    nop                                           ; $4232: $00
    ld c, c                                       ; $4233: $49
    add hl, sp                                    ; $4234: $39
    nop                                           ; $4235: $00
    ld h, l                                       ; $4236: $65
    add hl, sp                                    ; $4237: $39
    nop                                           ; $4238: $00
    ld a, c                                       ; $4239: $79
    add hl, sp                                    ; $423a: $39
    nop                                           ; $423b: $00
    sub e                                         ; $423c: $93
    add hl, sp                                    ; $423d: $39
    nop                                           ; $423e: $00
    and e                                         ; $423f: $a3
    add hl, sp                                    ; $4240: $39
    nop                                           ; $4241: $00
    push de                                       ; $4242: $d5
    add hl, sp                                    ; $4243: $39
    nop                                           ; $4244: $00
    db $eb                                        ; $4245: $eb
    add hl, sp                                    ; $4246: $39
    nop                                           ; $4247: $00
    ld [bc], a                                    ; $4248: $02

jr_047_4249:
    ld a, [hl-]                                   ; $4249: $3a
    nop                                           ; $424a: $00
    ld a, $3a                                     ; $424b: $3e $3a
    nop                                           ; $424d: $00
    ld c, [hl]                                    ; $424e: $4e
    ld a, [hl-]                                   ; $424f: $3a
    nop                                           ; $4250: $00
    ld l, h                                       ; $4251: $6c
    ld a, [hl-]                                   ; $4252: $3a
    nop                                           ; $4253: $00
    add h                                         ; $4254: $84
    ld a, [hl-]                                   ; $4255: $3a
    nop                                           ; $4256: $00
    sub h                                         ; $4257: $94
    ld a, [hl-]                                   ; $4258: $3a
    nop                                           ; $4259: $00
    or [hl]                                       ; $425a: $b6
    ld a, [hl-]                                   ; $425b: $3a
    nop                                           ; $425c: $00
    ldh a, [$3a]                                  ; $425d: $f0 $3a
    nop                                           ; $425f: $00
    db $fd                                        ; $4260: $fd
    ld a, [hl-]                                   ; $4261: $3a
    nop                                           ; $4262: $00
    scf                                           ; $4263: $37
    dec sp                                        ; $4264: $3b
    nop                                           ; $4265: $00
    ld c, b                                       ; $4266: $48
    dec sp                                        ; $4267: $3b

Call_047_4268:
    nop                                           ; $4268: $00
    add d                                         ; $4269: $82
    dec sp                                        ; $426a: $3b
    nop                                           ; $426b: $00
    and h                                         ; $426c: $a4
    dec sp                                        ; $426d: $3b
    nop                                           ; $426e: $00
    xor [hl]                                      ; $426f: $ae
    dec sp                                        ; $4270: $3b
    nop                                           ; $4271: $00
    db $d3                                        ; $4272: $d3
    dec sp                                        ; $4273: $3b
    nop                                           ; $4274: $00
    nop                                           ; $4275: $00
    inc a                                         ; $4276: $3c
    nop                                           ; $4277: $00
    inc b                                         ; $4278: $04
    inc a                                         ; $4279: $3c
    nop                                           ; $427a: $00
    ld [hl+], a                                   ; $427b: $22
    inc a                                         ; $427c: $3c
    nop                                           ; $427d: $00
    dec l                                         ; $427e: $2d
    inc a                                         ; $427f: $3c
    nop                                           ; $4280: $00
    ld c, b                                       ; $4281: $48
    inc a                                         ; $4282: $3c
    nop                                           ; $4283: $00
    ld d, b                                       ; $4284: $50
    inc a                                         ; $4285: $3c
    nop                                           ; $4286: $00
    ld e, d                                       ; $4287: $5a
    inc a                                         ; $4288: $3c
    nop                                           ; $4289: $00
    rlca                                          ; $428a: $07
    dec a                                         ; $428b: $3d
    nop                                           ; $428c: $00
    ld b, d                                       ; $428d: $42
    dec a                                         ; $428e: $3d
    nop                                           ; $428f: $00
    ld [hl], c                                    ; $4290: $71
    dec a                                         ; $4291: $3d
    nop                                           ; $4292: $00
    add [hl]                                      ; $4293: $86
    dec a                                         ; $4294: $3d
    nop                                           ; $4295: $00
    xor e                                         ; $4296: $ab
    dec a                                         ; $4297: $3d
    nop                                           ; $4298: $00
    sbc $3d                                       ; $4299: $de $3d
    nop                                           ; $429b: $00
    nop                                           ; $429c: $00
    ld a, $00                                     ; $429d: $3e $00
    ld h, e                                       ; $429f: $63
    ld a, $00                                     ; $42a0: $3e $00
    xor b                                         ; $42a2: $a8
    ld a, $00                                     ; $42a3: $3e $00
    sbc $3e                                       ; $42a5: $de $3e
    nop                                           ; $42a7: $00
    ld [bc], a                                    ; $42a8: $02
    ccf                                           ; $42a9: $3f
    nop                                           ; $42aa: $00
    dec sp                                        ; $42ab: $3b
    ccf                                           ; $42ac: $3f
    nop                                           ; $42ad: $00
    ld d, l                                       ; $42ae: $55
    ccf                                           ; $42af: $3f
    nop                                           ; $42b0: $00
    xor [hl]                                      ; $42b1: $ae
    ccf                                           ; $42b2: $3f
    nop                                           ; $42b3: $00
    jp nz, Jump_000_003f                          ; $42b4: $c2 $3f $00

    rst $10                                       ; $42b7: $d7
    ccf                                           ; $42b8: $3f
    ld bc, $0001                                  ; $42b9: $01 $01 $00
    ld bc, $0024                                  ; $42bc: $01 $24 $00
    ld bc, $0042                                  ; $42bf: $01 $42 $00
    ld bc, $0062                                  ; $42c2: $01 $62 $00
    ld bc, $0078                                  ; $42c5: $01 $78 $00
    ld bc, $0082                                  ; $42c8: $01 $82 $00
    ld bc, $00a2                                  ; $42cb: $01 $a2 $00
    ld bc, $00a7                                  ; $42ce: $01 $a7 $00
    ld bc, $00ad                                  ; $42d1: $01 $ad $00
    ld bc, $00ef                                  ; $42d4: $01 $ef $00
    ld bc, $0102                                  ; $42d7: $01 $02 $01
    ld bc, $0131                                  ; $42da: $01 $31 $01
    ld bc, HeaderCGBFlag                          ; $42dd: $01 $43 $01
    ld bc, $017a                                  ; $42e0: $01 $7a $01
    ld bc, $0180                                  ; $42e3: $01 $80 $01
    ld bc, $0195                                  ; $42e6: $01 $95 $01
    ld bc, $01ac                                  ; $42e9: $01 $ac $01
    ld bc, $01c9                                  ; $42ec: $01 $c9 $01
    ld bc, $0203                                  ; $42ef: $01 $03 $02
    ld bc, $0214                                  ; $42f2: $01 $14 $02
    ld bc, $0221                                  ; $42f5: $01 $21 $02
    ld bc, $0233                                  ; $42f8: $01 $33 $02
    ld bc, $024d                                  ; $42fb: $01 $4d $02
    ld bc, $0264                                  ; $42fe: $01 $64 $02
    ld bc, $027e                                  ; $4301: $01 $7e $02
    ld bc, $02bb                                  ; $4304: $01 $bb $02
    ld bc, $02c8                                  ; $4307: $01 $c8 $02

Jump_047_430a:
    ld bc, $0333                                  ; $430a: $01 $33 $03
    ld bc, $033e                                  ; $430d: $01 $3e $03
    ld bc, $0352                                  ; $4310: $01 $52 $03
    ld bc, $035e                                  ; $4313: $01 $5e $03
    ld bc, $0384                                  ; $4316: $01 $84 $03
    ld bc, $039c                                  ; $4319: $01 $9c $03
    ld bc, $03c0                                  ; $431c: $01 $c0 $03
    ld bc, $03d0                                  ; $431f: $01 $d0 $03
    ld bc, $03e5                                  ; $4322: $01 $e5 $03
    ld bc, $0468                                  ; $4325: $01 $68 $04
    ld bc, $0483                                  ; $4328: $01 $83 $04
    ld bc, $04a4                                  ; $432b: $01 $a4 $04
    ld bc, $04ce                                  ; $432e: $01 $ce $04
    ld bc, $04e4                                  ; $4331: $01 $e4 $04
    ld bc, $051b                                  ; $4334: $01 $1b $05
    ld bc, $052c                                  ; $4337: $01 $2c $05
    ld bc, $054e                                  ; $433a: $01 $4e $05
    ld bc, $056f                                  ; $433d: $01 $6f $05
    ld bc, $0591                                  ; $4340: $01 $91 $05
    ld bc, $05ae                                  ; $4343: $01 $ae $05
    ld bc, $05c9                                  ; $4346: $01 $c9 $05
    ld bc, $0680                                  ; $4349: $01 $80 $06
    ld bc, $0696                                  ; $434c: $01 $96 $06
    ld bc, $06f1                                  ; $434f: $01 $f1 $06
    ld bc, $0702                                  ; $4352: $01 $02 $07
    ld bc, $071c                                  ; $4355: $01 $1c $07
    ld bc, $072b                                  ; $4358: $01 $2b $07
    ld bc, $077f                                  ; $435b: $01 $7f $07
    ld bc, $07d3                                  ; $435e: $01 $d3 $07
    ld bc, $07ec                                  ; $4361: $01 $ec $07
    ld bc, $07fa                                  ; $4364: $01 $fa $07
    ld bc, $080f                                  ; $4367: $01 $0f $08
    ld bc, $0823                                  ; $436a: $01 $23 $08
    ld bc, $0838                                  ; $436d: $01 $38 $08
    ld bc, $0849                                  ; $4370: $01 $49 $08
    ld bc, $085a                                  ; $4373: $01 $5a $08
    ld bc, $086b                                  ; $4376: $01 $6b $08
    ld bc, $0879                                  ; $4379: $01 $79 $08
    ld bc, $0883                                  ; $437c: $01 $83 $08
    ld bc, $088e                                  ; $437f: $01 $8e $08
    ld bc, $08a6                                  ; $4382: $01 $a6 $08
    ld bc, $08d5                                  ; $4385: $01 $d5 $08
    ld bc, $08fc                                  ; $4388: $01 $fc $08
    ld bc, $0925                                  ; $438b: $01 $25 $09
    ld bc, $0934                                  ; $438e: $01 $34 $09
    ld bc, $0956                                  ; $4391: $01 $56 $09
    ld bc, $0981                                  ; $4394: $01 $81 $09
    ld bc, $09a8                                  ; $4397: $01 $a8 $09
    ld bc, $09bc                                  ; $439a: $01 $bc $09
    ld bc, $09d0                                  ; $439d: $01 $d0 $09
    ld bc, $09dd                                  ; $43a0: $01 $dd $09
    ld bc, $09ef                                  ; $43a3: $01 $ef $09
    ld bc, $0a04                                  ; $43a6: $01 $04 $0a
    ld bc, $0a21                                  ; $43a9: $01 $21 $0a
    ld bc, $0a2e                                  ; $43ac: $01 $2e $0a
    ld bc, $0a3e                                  ; $43af: $01 $3e $0a
    ld bc, $0a52                                  ; $43b2: $01 $52 $0a
    ld bc, $0a73                                  ; $43b5: $01 $73 $0a
    ld bc, $0ab6                                  ; $43b8: $01 $b6 $0a
    ld bc, $0ad8                                  ; $43bb: $01 $d8 $0a
    ld bc, $0adb                                  ; $43be: $01 $db $0a
    ld bc, $0afe                                  ; $43c1: $01 $fe $0a
    ld bc, $0b12                                  ; $43c4: $01 $12 $0b
    ld bc, $0b2c                                  ; $43c7: $01 $2c $0b
    ld bc, $0b3a                                  ; $43ca: $01 $3a $0b
    ld bc, $0b4f                                  ; $43cd: $01 $4f $0b
    ld bc, $0b7d                                  ; $43d0: $01 $7d $0b
    ld bc, $0c00                                  ; $43d3: $01 $00 $0c
    ld bc, $0c15                                  ; $43d6: $01 $15 $0c
    ld bc, $0c20                                  ; $43d9: $01 $20 $0c
    ld bc, $0c32                                  ; $43dc: $01 $32 $0c
    ld bc, $0c48                                  ; $43df: $01 $48 $0c
    ld bc, $0c81                                  ; $43e2: $01 $81 $0c
    ld bc, $0c9f                                  ; $43e5: $01 $9f $0c
    ld bc, $0cbb                                  ; $43e8: $01 $bb $0c
    ld bc, $0cdb                                  ; $43eb: $01 $db $0c
    ld bc, $0d1e                                  ; $43ee: $01 $1e $0d
    ld bc, $0d5e                                  ; $43f1: $01 $5e $0d
    ld bc, $0d8b                                  ; $43f4: $01 $8b $0d
    ld bc, $0dc4                                  ; $43f7: $01 $c4 $0d
    ld bc, $0df0                                  ; $43fa: $01 $f0 $0d
    ld bc, $0e3a                                  ; $43fd: $01 $3a $0e
    ld bc, $0e79                                  ; $4400: $01 $79 $0e
    ld bc, $0ead                                  ; $4403: $01 $ad $0e
    ld bc, $0ef0                                  ; $4406: $01 $f0 $0e
    ld bc, $0f34                                  ; $4409: $01 $34 $0f
    ld bc, $0f64                                  ; $440c: $01 $64 $0f
    ld bc, $0fa3                                  ; $440f: $01 $a3 $0f
    ld bc, $0fce                                  ; $4412: $01 $ce $0f
    ld bc, $1012                                  ; $4415: $01 $12 $10
    ld bc, $104c                                  ; $4418: $01 $4c $10
    ld bc, $109c                                  ; $441b: $01 $9c $10
    ld bc, $10e5                                  ; $441e: $01 $e5 $10
    ld bc, $111b                                  ; $4421: $01 $1b $11
    ld bc, $1153                                  ; $4424: $01 $53 $11
    ld bc, $118c                                  ; $4427: $01 $8c $11
    ld bc, $11bd                                  ; $442a: $01 $bd $11
    ld bc, $11f5                                  ; $442d: $01 $f5 $11
    ld bc, $1229                                  ; $4430: $01 $29 $12
    ld bc, $1253                                  ; $4433: $01 $53 $12
    ld bc, $128e                                  ; $4436: $01 $8e $12
    ld bc, $12d0                                  ; $4439: $01 $d0 $12
    ld bc, $131d                                  ; $443c: $01 $1d $13
    ld bc, $1376                                  ; $443f: $01 $76 $13
    ld bc, $13c2                                  ; $4442: $01 $c2 $13
    ld bc, $13ee                                  ; $4445: $01 $ee $13
    ld bc, $141a                                  ; $4448: $01 $1a $14
    ld bc, $1452                                  ; $444b: $01 $52 $14
    ld bc, $1496                                  ; $444e: $01 $96 $14
    ld bc, $14ea                                  ; $4451: $01 $ea $14
    ld bc, $1543                                  ; $4454: $01 $43 $15
    ld bc, $157a                                  ; $4457: $01 $7a $15
    ld bc, $15bd                                  ; $445a: $01 $bd $15
    ld bc, $1600                                  ; $445d: $01 $00 $16
    ld bc, $1643                                  ; $4460: $01 $43 $16
    ld bc, $1665                                  ; $4463: $01 $65 $16
    ld bc, $1690                                  ; $4466: $01 $90 $16
    ld bc, $16c5                                  ; $4469: $01 $c5 $16
    ld bc, $16d6                                  ; $446c: $01 $d6 $16
    ld bc, $16f3                                  ; $446f: $01 $f3 $16
    ld bc, $1704                                  ; $4472: $01 $04 $17
    ld bc, $1722                                  ; $4475: $01 $22 $17
    ld bc, $174a                                  ; $4478: $01 $4a $17
    ld bc, $1754                                  ; $447b: $01 $54 $17
    ld bc, $1761                                  ; $447e: $01 $61 $17
    ld bc, $1766                                  ; $4481: $01 $66 $17
    ld bc, $17a3                                  ; $4484: $01 $a3 $17
    ld bc, $17c2                                  ; $4487: $01 $c2 $17
    ld bc, $17dd                                  ; $448a: $01 $dd $17
    ld bc, $1806                                  ; $448d: $01 $06 $18
    ld bc, $181c                                  ; $4490: $01 $1c $18
    ld bc, $1825                                  ; $4493: $01 $25 $18
    ld bc, $1871                                  ; $4496: $01 $71 $18
    ld bc, $1897                                  ; $4499: $01 $97 $18
    ld bc, $18c5                                  ; $449c: $01 $c5 $18
    ld bc, $18d3                                  ; $449f: $01 $d3 $18
    ld bc, $18f7                                  ; $44a2: $01 $f7 $18
    ld bc, $1909                                  ; $44a5: $01 $09 $19
    ld bc, $1920                                  ; $44a8: $01 $20 $19
    ld bc, $192b                                  ; $44ab: $01 $2b $19
    ld bc, $193f                                  ; $44ae: $01 $3f $19
    ld bc, $1952                                  ; $44b1: $01 $52 $19
    ld bc, $196d                                  ; $44b4: $01 $6d $19
    ld bc, $197b                                  ; $44b7: $01 $7b $19
    ld bc, $1994                                  ; $44ba: $01 $94 $19
    ld bc, $19ab                                  ; $44bd: $01 $ab $19
    ld bc, $19e6                                  ; $44c0: $01 $e6 $19
    ld bc, $1a04                                  ; $44c3: $01 $04 $1a
    ld bc, $1a1b                                  ; $44c6: $01 $1b $1a
    ld bc, $1a32                                  ; $44c9: $01 $32 $1a
    ld bc, $1a58                                  ; $44cc: $01 $58 $1a
    ld bc, $1a7e                                  ; $44cf: $01 $7e $1a
    ld bc, $1a88                                  ; $44d2: $01 $88 $1a
    ld bc, $1aa2                                  ; $44d5: $01 $a2 $1a
    ld bc, $1aac                                  ; $44d8: $01 $ac $1a
    ld bc, $1ae8                                  ; $44db: $01 $e8 $1a
    ld bc, $1b09                                  ; $44de: $01 $09 $1b
    ld bc, $1b1b                                  ; $44e1: $01 $1b $1b
    ld bc, $1b3d                                  ; $44e4: $01 $3d $1b
    ld bc, $1b47                                  ; $44e7: $01 $47 $1b
    ld bc, $1b87                                  ; $44ea: $01 $87 $1b
    ld bc, $1b99                                  ; $44ed: $01 $99 $1b
    ld bc, $1bbc                                  ; $44f0: $01 $bc $1b
    ld bc, $1bd7                                  ; $44f3: $01 $d7 $1b
    ld bc, $1be4                                  ; $44f6: $01 $e4 $1b
    ld bc, $1c41                                  ; $44f9: $01 $41 $1c
    ld bc, $1c52                                  ; $44fc: $01 $52 $1c
    ld bc, $1c6b                                  ; $44ff: $01 $6b $1c
    ld bc, $1c74                                  ; $4502: $01 $74 $1c
    ld bc, $1c7b                                  ; $4505: $01 $7b $1c
    ld bc, $1c9b                                  ; $4508: $01 $9b $1c
    ld bc, $1ca7                                  ; $450b: $01 $a7 $1c
    ld bc, $1cb2                                  ; $450e: $01 $b2 $1c
    ld bc, $1cbe                                  ; $4511: $01 $be $1c
    ld bc, $1ce3                                  ; $4514: $01 $e3 $1c
    ld bc, $1ce8                                  ; $4517: $01 $e8 $1c
    ld bc, $1d0d                                  ; $451a: $01 $0d $1d
    ld bc, $1d2f                                  ; $451d: $01 $2f $1d
    ld bc, $1d3f                                  ; $4520: $01 $3f $1d
    ld bc, $1d65                                  ; $4523: $01 $65 $1d
    ld bc, $1d7a                                  ; $4526: $01 $7a $1d
    ld bc, $1db7                                  ; $4529: $01 $b7 $1d
    ld bc, $1dd2                                  ; $452c: $01 $d2 $1d
    ld bc, $1e11                                  ; $452f: $01 $11 $1e
    ld bc, $1e4e                                  ; $4532: $01 $4e $1e
    ld bc, $1e78                                  ; $4535: $01 $78 $1e
    ld bc, $1ec1                                  ; $4538: $01 $c1 $1e
    ld bc, $1ef0                                  ; $453b: $01 $f0 $1e
    ld bc, $1f1c                                  ; $453e: $01 $1c $1f
    ld bc, $1f79                                  ; $4541: $01 $79 $1f
    ld bc, $1fa4                                  ; $4544: $01 $a4 $1f
    ld bc, $1ff6                                  ; $4547: $01 $f6 $1f
    ld bc, $200c                                  ; $454a: $01 $0c $20
    ld bc, $2033                                  ; $454d: $01 $33 $20
    ld bc, $20f4                                  ; $4550: $01 $f4 $20
    ld bc, $211a                                  ; $4553: $01 $1a $21
    ld bc, $212a                                  ; $4556: $01 $2a $21
    ld bc, $2154                                  ; $4559: $01 $54 $21
    ld bc, $217c                                  ; $455c: $01 $7c $21
    ld bc, $218e                                  ; $455f: $01 $8e $21
    ld bc, $219b                                  ; $4562: $01 $9b $21
    ld bc, $21d0                                  ; $4565: $01 $d0 $21
    ld bc, $21d7                                  ; $4568: $01 $d7 $21
    ld bc, $21ea                                  ; $456b: $01 $ea $21
    ld bc, $223a                                  ; $456e: $01 $3a $22
    ld bc, $2266                                  ; $4571: $01 $66 $22
    ld bc, $2289                                  ; $4574: $01 $89 $22
    ld bc, $229d                                  ; $4577: $01 $9d $22
    ld bc, $22bf                                  ; $457a: $01 $bf $22
    ld bc, $22e9                                  ; $457d: $01 $e9 $22
    ld bc, $2309                                  ; $4580: $01 $09 $23
    ld bc, $2333                                  ; $4583: $01 $33 $23
    ld bc, $2350                                  ; $4586: $01 $50 $23
    ld bc, $2366                                  ; $4589: $01 $66 $23
    ld bc, $2379                                  ; $458c: $01 $79 $23
    ld bc, $23a0                                  ; $458f: $01 $a0 $23
    ld bc, $23af                                  ; $4592: $01 $af $23
    ld bc, $23e0                                  ; $4595: $01 $e0 $23
    ld bc, $2404                                  ; $4598: $01 $04 $24
    ld bc, $2414                                  ; $459b: $01 $14 $24
    ld bc, $244d                                  ; $459e: $01 $4d $24
    ld bc, $2468                                  ; $45a1: $01 $68 $24
    ld bc, $2474                                  ; $45a4: $01 $74 $24
    ld bc, $24c5                                  ; $45a7: $01 $c5 $24
    ld bc, $24cb                                  ; $45aa: $01 $cb $24
    ld bc, $2560                                  ; $45ad: $01 $60 $25
    ld bc, $256e                                  ; $45b0: $01 $6e $25
    ld bc, $257c                                  ; $45b3: $01 $7c $25
    ld bc, $2596                                  ; $45b6: $01 $96 $25
    ld bc, $25c4                                  ; $45b9: $01 $c4 $25
    ld bc, $25f8                                  ; $45bc: $01 $f8 $25
    ld bc, $2632                                  ; $45bf: $01 $32 $26
    ld bc, $265b                                  ; $45c2: $01 $5b $26
    ld bc, $2677                                  ; $45c5: $01 $77 $26
    ld bc, $26b8                                  ; $45c8: $01 $b8 $26
    ld bc, $272c                                  ; $45cb: $01 $2c $27
    ld bc, $274d                                  ; $45ce: $01 $4d $27
    ld bc, $2777                                  ; $45d1: $01 $77 $27
    ld bc, $278a                                  ; $45d4: $01 $8a $27
    ld bc, $27a5                                  ; $45d7: $01 $a5 $27
    ld bc, $27be                                  ; $45da: $01 $be $27
    ld bc, $27eb                                  ; $45dd: $01 $eb $27
    ld bc, $2805                                  ; $45e0: $01 $05 $28
    ld bc, $2830                                  ; $45e3: $01 $30 $28
    ld bc, $285b                                  ; $45e6: $01 $5b $28
    ld bc, $288a                                  ; $45e9: $01 $8a $28
    ld bc, $28ad                                  ; $45ec: $01 $ad $28
    ld bc, $28fc                                  ; $45ef: $01 $fc $28
    ld bc, $2922                                  ; $45f2: $01 $22 $29
    ld bc, $2984                                  ; $45f5: $01 $84 $29
    ld bc, $29b6                                  ; $45f8: $01 $b6 $29
    ld bc, $29e9                                  ; $45fb: $01 $e9 $29
    ld bc, $2a1b                                  ; $45fe: $01 $1b $2a
    ld bc, $2a57                                  ; $4601: $01 $57 $2a
    ld bc, $2a76                                  ; $4604: $01 $76 $2a
    ld bc, $2a93                                  ; $4607: $01 $93 $2a
    ld bc, $2ab4                                  ; $460a: $01 $b4 $2a
    ld bc, $2af7                                  ; $460d: $01 $f7 $2a
    ld bc, $2b0a                                  ; $4610: $01 $0a $2b
    ld bc, $2b23                                  ; $4613: $01 $23 $2b
    ld bc, $2b35                                  ; $4616: $01 $35 $2b
    ld bc, $2b6f                                  ; $4619: $01 $6f $2b
    ld bc, $2bad                                  ; $461c: $01 $ad $2b
    ld bc, $2bcf                                  ; $461f: $01 $cf $2b
    ld bc, $2bea                                  ; $4622: $01 $ea $2b
    ld bc, $2c1d                                  ; $4625: $01 $1d $2c
    ld bc, $2c42                                  ; $4628: $01 $42 $2c
    ld bc, $2ca3                                  ; $462b: $01 $a3 $2c
    ld bc, $2cbb                                  ; $462e: $01 $bb $2c
    ld bc, $2cf3                                  ; $4631: $01 $f3 $2c
    ld bc, $2d20                                  ; $4634: $01 $20 $2d
    ld bc, $2d4c                                  ; $4637: $01 $4c $2d
    ld bc, $2d82                                  ; $463a: $01 $82 $2d
    ld bc, $2d9c                                  ; $463d: $01 $9c $2d
    ld bc, $2dd3                                  ; $4640: $01 $d3 $2d
    ld bc, $2df2                                  ; $4643: $01 $f2 $2d
    ld bc, $2e1e                                  ; $4646: $01 $1e $2e
    ld bc, $2e36                                  ; $4649: $01 $36 $2e
    ld bc, $2e6c                                  ; $464c: $01 $6c $2e
    ld bc, $2e94                                  ; $464f: $01 $94 $2e
    ld bc, $2ea7                                  ; $4652: $01 $a7 $2e
    ld bc, $2ecc                                  ; $4655: $01 $cc $2e
    ld bc, $2ef4                                  ; $4658: $01 $f4 $2e
    ld bc, $2f17                                  ; $465b: $01 $17 $2f
    ld bc, $2f42                                  ; $465e: $01 $42 $2f
    ld bc, $2f76                                  ; $4661: $01 $76 $2f
    ld bc, $2fa5                                  ; $4664: $01 $a5 $2f
    ld bc, $2fce                                  ; $4667: $01 $ce $2f
    ld bc, $300d                                  ; $466a: $01 $0d $30
    ld bc, $304f                                  ; $466d: $01 $4f $30
    ld bc, $308f                                  ; $4670: $01 $8f $30
    ld bc, $30bf                                  ; $4673: $01 $bf $30
    ld bc, $30e5                                  ; $4676: $01 $e5 $30
    ld bc, $3100                                  ; $4679: $01 $00 $31
    ld bc, $312f                                  ; $467c: $01 $2f $31
    ld bc, $3160                                  ; $467f: $01 $60 $31
    ld bc, $3184                                  ; $4682: $01 $84 $31
    ld bc, $31c1                                  ; $4685: $01 $c1 $31
    ld bc, $31df                                  ; $4688: $01 $df $31
    ld bc, $31fd                                  ; $468b: $01 $fd $31
    ld bc, $3235                                  ; $468e: $01 $35 $32
    ld bc, $325f                                  ; $4691: $01 $5f $32
    ld bc, $3269                                  ; $4694: $01 $69 $32
    ld bc, $3290                                  ; $4697: $01 $90 $32
    ld bc, $329d                                  ; $469a: $01 $9d $32
    ld bc, $32be                                  ; $469d: $01 $be $32
    ld bc, $32d1                                  ; $46a0: $01 $d1 $32
    ld bc, $32d9                                  ; $46a3: $01 $d9 $32
    ld bc, $32e9                                  ; $46a6: $01 $e9 $32
    ld bc, $32fe                                  ; $46a9: $01 $fe $32
    ld bc, $331c                                  ; $46ac: $01 $1c $33
    ld bc, $337b                                  ; $46af: $01 $7b $33
    ld bc, $3380                                  ; $46b2: $01 $80 $33
    ld bc, $33e6                                  ; $46b5: $01 $e6 $33
    ld bc, $33f5                                  ; $46b8: $01 $f5 $33
    ld bc, $3446                                  ; $46bb: $01 $46 $34
    ld bc, $3468                                  ; $46be: $01 $68 $34
    ld bc, $347d                                  ; $46c1: $01 $7d $34
    ld bc, $34a8                                  ; $46c4: $01 $a8 $34
    ld bc, $34ff                                  ; $46c7: $01 $ff $34
    ld bc, $3532                                  ; $46ca: $01 $32 $35
    ld bc, $3544                                  ; $46cd: $01 $44 $35
    ld bc, $355b                                  ; $46d0: $01 $5b $35
    ld bc, $3578                                  ; $46d3: $01 $78 $35
    ld bc, $35b1                                  ; $46d6: $01 $b1 $35
    ld bc, $35d3                                  ; $46d9: $01 $d3 $35
    ld bc, $35e2                                  ; $46dc: $01 $e2 $35
    ld bc, $35f1                                  ; $46df: $01 $f1 $35
    ld bc, $3634                                  ; $46e2: $01 $34 $36
    ld bc, $3673                                  ; $46e5: $01 $73 $36
    ld bc, $368a                                  ; $46e8: $01 $8a $36
    ld bc, $36cc                                  ; $46eb: $01 $cc $36
    ld bc, $3712                                  ; $46ee: $01 $12 $37
    ld bc, $372f                                  ; $46f1: $01 $2f $37
    ld bc, $3756                                  ; $46f4: $01 $56 $37
    ld bc, $3767                                  ; $46f7: $01 $67 $37
    ld bc, $3785                                  ; $46fa: $01 $85 $37
    ld bc, $379b                                  ; $46fd: $01 $9b $37
    ld bc, $37b4                                  ; $4700: $01 $b4 $37
    ld bc, $37da                                  ; $4703: $01 $da $37
    ld bc, $3804                                  ; $4706: $01 $04 $38
    ld bc, $3856                                  ; $4709: $01 $56 $38
    ld bc, $3869                                  ; $470c: $01 $69 $38
    ld bc, $38c6                                  ; $470f: $01 $c6 $38
    ld bc, $38fc                                  ; $4712: $01 $fc $38
    ld bc, $391b                                  ; $4715: $01 $1b $39
    ld bc, $394c                                  ; $4718: $01 $4c $39
    ld bc, $3991                                  ; $471b: $01 $91 $39
    ld bc, $39d8                                  ; $471e: $01 $d8 $39
    ld bc, $3a15                                  ; $4721: $01 $15 $3a
    ld bc, $3a22                                  ; $4724: $01 $22 $3a
    ld bc, $3a32                                  ; $4727: $01 $32 $3a
    ld bc, $3a51                                  ; $472a: $01 $51 $3a
    ld bc, $3a69                                  ; $472d: $01 $69 $3a
    ld bc, $3a75                                  ; $4730: $01 $75 $3a
    ld bc, $3a87                                  ; $4733: $01 $87 $3a
    ld bc, $3a9c                                  ; $4736: $01 $9c $3a
    ld bc, $3ab1                                  ; $4739: $01 $b1 $3a
    ld bc, $3ad7                                  ; $473c: $01 $d7 $3a
    ld bc, $3af4                                  ; $473f: $01 $f4 $3a
    ld bc, $3b05                                  ; $4742: $01 $05 $3b
    ld bc, $3b23                                  ; $4745: $01 $23 $3b
    ld bc, $3b9b                                  ; $4748: $01 $9b $3b
    ld bc, $3bab                                  ; $474b: $01 $ab $3b
    ld bc, $3bc2                                  ; $474e: $01 $c2 $3b
    ld bc, $3bf5                                  ; $4751: $01 $f5 $3b
    ld bc, $3c0d                                  ; $4754: $01 $0d $3c
    ld bc, $3c47                                  ; $4757: $01 $47 $3c
    ld bc, $3c80                                  ; $475a: $01 $80 $3c
    ld bc, $3ca4                                  ; $475d: $01 $a4 $3c
    ld bc, $3d06                                  ; $4760: $01 $06 $3d
    ld bc, $3d0e                                  ; $4763: $01 $0e $3d
    ld bc, $3d2a                                  ; $4766: $01 $2a $3d
    ld bc, $3d36                                  ; $4769: $01 $36 $3d
    ld bc, $3d4b                                  ; $476c: $01 $4b $3d
    ld bc, $3d65                                  ; $476f: $01 $65 $3d
    ld bc, $3d9a                                  ; $4772: $01 $9a $3d
    ld bc, $3dca                                  ; $4775: $01 $ca $3d
    ld bc, $3df1                                  ; $4778: $01 $f1 $3d
    ld bc, $3e37                                  ; $477b: $01 $37 $3e
    ld bc, $3e4a                                  ; $477e: $01 $4a $3e
    ld bc, $3e5c                                  ; $4781: $01 $5c $3e
    ld bc, $3e71                                  ; $4784: $01 $71 $3e
    ld bc, $3e84                                  ; $4787: $01 $84 $3e
    ld bc, $3eb0                                  ; $478a: $01 $b0 $3e
    ld bc, $3f15                                  ; $478d: $01 $15 $3f
    ld bc, $3f54                                  ; $4790: $01 $54 $3f
    ld bc, $3f87                                  ; $4793: $01 $87 $3f
    ld bc, $3fbc                                  ; $4796: $01 $bc $3f
    ld [bc], a                                    ; $4799: $02
    ld bc, $0200                                  ; $479a: $01 $00 $02
    jr nz, jr_047_479f                            ; $479d: $20 $00

jr_047_479f:
    ld [bc], a                                    ; $479f: $02
    ld [hl], $00                                  ; $47a0: $36 $00
    ld [bc], a                                    ; $47a2: $02
    ld e, d                                       ; $47a3: $5a
    nop                                           ; $47a4: $00
    ld [bc], a                                    ; $47a5: $02
    ld [hl], c                                    ; $47a6: $71
    nop                                           ; $47a7: $00
    ld [bc], a                                    ; $47a8: $02
    ld a, b                                       ; $47a9: $78
    nop                                           ; $47aa: $00
    ld [bc], a                                    ; $47ab: $02
    adc a                                         ; $47ac: $8f
    nop                                           ; $47ad: $00
    ld [bc], a                                    ; $47ae: $02
    and l                                         ; $47af: $a5
    nop                                           ; $47b0: $00
    ld [bc], a                                    ; $47b1: $02
    add $00                                       ; $47b2: $c6 $00
    ld [bc], a                                    ; $47b4: $02
    db $e4                                        ; $47b5: $e4
    nop                                           ; $47b6: $00
    ld [bc], a                                    ; $47b7: $02
    di                                            ; $47b8: $f3
    nop                                           ; $47b9: $00
    ld [bc], a                                    ; $47ba: $02
    ld c, $01                                     ; $47bb: $0e $01
    ld [bc], a                                    ; $47bd: $02
    ld l, $01                                     ; $47be: $2e $01
    ld [bc], a                                    ; $47c0: $02
    ld c, c                                       ; $47c1: $49
    ld bc, $5a02                                  ; $47c2: $01 $02 $5a
    ld bc, $8102                                  ; $47c5: $01 $02 $81
    ld bc, $9402                                  ; $47c8: $01 $02 $94
    ld bc, $a802                                  ; $47cb: $01 $02 $a8
    ld bc, $bb02                                  ; $47ce: $01 $02 $bb
    ld bc, $d302                                  ; $47d1: $01 $02 $d3
    ld bc, $f202                                  ; $47d4: $01 $02 $f2
    ld bc, $1302                                  ; $47d7: $01 $02 $13
    ld [bc], a                                    ; $47da: $02
    ld [bc], a                                    ; $47db: $02
    ld sp, $0202                                  ; $47dc: $31 $02 $02
    ld c, [hl]                                    ; $47df: $4e
    ld [bc], a                                    ; $47e0: $02
    ld [bc], a                                    ; $47e1: $02
    ld [hl], l                                    ; $47e2: $75
    ld [bc], a                                    ; $47e3: $02
    ld [bc], a                                    ; $47e4: $02
    and a                                         ; $47e5: $a7
    ld [bc], a                                    ; $47e6: $02
    ld [bc], a                                    ; $47e7: $02
    rst $10                                       ; $47e8: $d7
    ld [bc], a                                    ; $47e9: $02
    ld [bc], a                                    ; $47ea: $02
    ld c, $03                                     ; $47eb: $0e $03
    ld [bc], a                                    ; $47ed: $02
    dec h                                         ; $47ee: $25
    inc bc                                        ; $47ef: $03
    ld [bc], a                                    ; $47f0: $02
    ld c, [hl]                                    ; $47f1: $4e
    inc bc                                        ; $47f2: $03
    ld [bc], a                                    ; $47f3: $02
    ld l, c                                       ; $47f4: $69
    inc bc                                        ; $47f5: $03
    ld [bc], a                                    ; $47f6: $02
    ld a, c                                       ; $47f7: $79
    inc bc                                        ; $47f8: $03
    ld [bc], a                                    ; $47f9: $02
    xor c                                         ; $47fa: $a9
    inc bc                                        ; $47fb: $03
    ld [bc], a                                    ; $47fc: $02
    cp l                                          ; $47fd: $bd

Jump_047_47fe:
    inc bc                                        ; $47fe: $03
    ld [bc], a                                    ; $47ff: $02
    db $dd                                        ; $4800: $dd
    inc bc                                        ; $4801: $03
    ld [bc], a                                    ; $4802: $02
    db $e4                                        ; $4803: $e4
    inc bc                                        ; $4804: $03
    ld [bc], a                                    ; $4805: $02
    db $eb                                        ; $4806: $eb
    inc bc                                        ; $4807: $03
    ld [bc], a                                    ; $4808: $02
    ld a, [c]                                     ; $4809: $f2
    inc bc                                        ; $480a: $03
    ld [bc], a                                    ; $480b: $02
    rst $38                                       ; $480c: $ff
    inc bc                                        ; $480d: $03
    ld [bc], a                                    ; $480e: $02
    rlca                                          ; $480f: $07
    inc b                                         ; $4810: $04
    ld [bc], a                                    ; $4811: $02
    ld a, $04                                     ; $4812: $3e $04
    ld [bc], a                                    ; $4814: $02
    ld h, e                                       ; $4815: $63
    inc b                                         ; $4816: $04
    ld [bc], a                                    ; $4817: $02
    ld [hl], e                                    ; $4818: $73
    inc b                                         ; $4819: $04
    ld [bc], a                                    ; $481a: $02
    ld a, e                                       ; $481b: $7b
    inc b                                         ; $481c: $04
    ld [bc], a                                    ; $481d: $02
    and b                                         ; $481e: $a0
    inc b                                         ; $481f: $04
    ld [bc], a                                    ; $4820: $02
    or [hl]                                       ; $4821: $b6
    inc b                                         ; $4822: $04
    ld [bc], a                                    ; $4823: $02
    add $04                                       ; $4824: $c6 $04
    ld [bc], a                                    ; $4826: $02
    jp nc, $0204                                  ; $4827: $d2 $04 $02

    db $f4                                        ; $482a: $f4
    inc b                                         ; $482b: $04
    ld [bc], a                                    ; $482c: $02
    ld [bc], a                                    ; $482d: $02
    dec b                                         ; $482e: $05
    ld [bc], a                                    ; $482f: $02
    daa                                           ; $4830: $27
    dec b                                         ; $4831: $05
    ld [bc], a                                    ; $4832: $02
    ld b, h                                       ; $4833: $44
    dec b                                         ; $4834: $05
    ld [bc], a                                    ; $4835: $02
    ld d, h                                       ; $4836: $54
    dec b                                         ; $4837: $05
    ld [bc], a                                    ; $4838: $02
    ld a, b                                       ; $4839: $78
    dec b                                         ; $483a: $05
    ld [bc], a                                    ; $483b: $02
    add c                                         ; $483c: $81
    dec b                                         ; $483d: $05
    ld [bc], a                                    ; $483e: $02
    xor h                                         ; $483f: $ac
    dec b                                         ; $4840: $05
    ld [bc], a                                    ; $4841: $02
    or [hl]                                       ; $4842: $b6
    dec b                                         ; $4843: $05
    ld [bc], a                                    ; $4844: $02
    db $db                                        ; $4845: $db
    dec b                                         ; $4846: $05
    ld [bc], a                                    ; $4847: $02
    jp hl                                         ; $4848: $e9


    dec b                                         ; $4849: $05
    ld [bc], a                                    ; $484a: $02
    ei                                            ; $484b: $fb
    dec b                                         ; $484c: $05
    ld [bc], a                                    ; $484d: $02
    ld h, c                                       ; $484e: $61
    ld b, $02                                     ; $484f: $06 $02
    ld l, e                                       ; $4851: $6b
    ld b, $02                                     ; $4852: $06 $02
    ld [hl], c                                    ; $4854: $71
    ld b, $02                                     ; $4855: $06 $02
    ld a, [hl]                                    ; $4857: $7e
    ld b, $02                                     ; $4858: $06 $02
    call nz, Call_000_0206                        ; $485a: $c4 $06 $02
    ld a, [hl]                                    ; $485d: $7e
    rlca                                          ; $485e: $07
    ld [bc], a                                    ; $485f: $02
    and e                                         ; $4860: $a3
    rlca                                          ; $4861: $07
    ld [bc], a                                    ; $4862: $02
    or a                                          ; $4863: $b7
    rlca                                          ; $4864: $07
    ld [bc], a                                    ; $4865: $02
    jp z, Jump_000_0207                           ; $4866: $ca $07 $02

    call nc, Call_000_0207                        ; $4869: $d4 $07 $02
    pop hl                                        ; $486c: $e1
    rlca                                          ; $486d: $07
    ld [bc], a                                    ; $486e: $02
    db $f4                                        ; $486f: $f4
    rlca                                          ; $4870: $07
    ld [bc], a                                    ; $4871: $02
    ld a, [bc]                                    ; $4872: $0a
    ld [$2702], sp                                ; $4873: $08 $02 $27
    ld [$4a02], sp                                ; $4876: $08 $02 $4a
    ld [$8c02], sp                                ; $4879: $08 $02 $8c
    ld [$cd02], sp                                ; $487c: $08 $02 $cd
    ld [$f102], sp                                ; $487f: $08 $02 $f1
    ld [$5f02], sp                                ; $4882: $08 $02 $5f
    add hl, bc                                    ; $4885: $09
    ld [bc], a                                    ; $4886: $02
    ld h, l                                       ; $4887: $65
    add hl, bc                                    ; $4888: $09
    ld [bc], a                                    ; $4889: $02
    xor c                                         ; $488a: $a9
    add hl, bc                                    ; $488b: $09
    ld [bc], a                                    ; $488c: $02
    cp a                                          ; $488d: $bf
    add hl, bc                                    ; $488e: $09
    ld [bc], a                                    ; $488f: $02
    db $e4                                        ; $4890: $e4
    add hl, bc                                    ; $4891: $09
    ld [bc], a                                    ; $4892: $02
    jr jr_047_489f                                ; $4893: $18 $0a

    ld [bc], a                                    ; $4895: $02
    jr nc, jr_047_48a2                            ; $4896: $30 $0a

    ld [bc], a                                    ; $4898: $02
    ld b, h                                       ; $4899: $44
    ld a, [bc]                                    ; $489a: $0a
    ld [bc], a                                    ; $489b: $02
    ld l, c                                       ; $489c: $69
    ld a, [bc]                                    ; $489d: $0a
    ld [bc], a                                    ; $489e: $02

jr_047_489f:
    ld a, d                                       ; $489f: $7a
    ld a, [bc]                                    ; $48a0: $0a
    ld [bc], a                                    ; $48a1: $02

jr_047_48a2:
    adc h                                         ; $48a2: $8c
    ld a, [bc]                                    ; $48a3: $0a
    ld [bc], a                                    ; $48a4: $02
    sbc h                                         ; $48a5: $9c
    ld a, [bc]                                    ; $48a6: $0a
    ld [bc], a                                    ; $48a7: $02
    and a                                         ; $48a8: $a7
    ld a, [bc]                                    ; $48a9: $0a
    ld [bc], a                                    ; $48aa: $02
    jp nc, $020a                                  ; $48ab: $d2 $0a $02

    rst $28                                       ; $48ae: $ef
    ld a, [bc]                                    ; $48af: $0a
    ld [bc], a                                    ; $48b0: $02
    dec b                                         ; $48b1: $05
    dec bc                                        ; $48b2: $0b
    ld [bc], a                                    ; $48b3: $02
    rla                                           ; $48b4: $17
    dec bc                                        ; $48b5: $0b
    ld [bc], a                                    ; $48b6: $02
    dec l                                         ; $48b7: $2d
    dec bc                                        ; $48b8: $0b
    ld [bc], a                                    ; $48b9: $02
    ld a, [hl-]                                   ; $48ba: $3a
    dec bc                                        ; $48bb: $0b
    ld [bc], a                                    ; $48bc: $02
    ld c, l                                       ; $48bd: $4d
    dec bc                                        ; $48be: $0b
    ld [bc], a                                    ; $48bf: $02
    ld l, h                                       ; $48c0: $6c
    dec bc                                        ; $48c1: $0b
    ld [bc], a                                    ; $48c2: $02
    adc h                                         ; $48c3: $8c
    dec bc                                        ; $48c4: $0b
    ld [bc], a                                    ; $48c5: $02
    jp c, $020b                                   ; $48c6: $da $0b $02

    ld b, d                                       ; $48c9: $42
    inc c                                         ; $48ca: $0c
    ld [bc], a                                    ; $48cb: $02
    ld c, a                                       ; $48cc: $4f
    inc c                                         ; $48cd: $0c
    ld [bc], a                                    ; $48ce: $02
    sub b                                         ; $48cf: $90
    inc c                                         ; $48d0: $0c
    ld [bc], a                                    ; $48d1: $02
    sbc [hl]                                      ; $48d2: $9e
    inc c                                         ; $48d3: $0c
    ld [bc], a                                    ; $48d4: $02
    ld a, [c]                                     ; $48d5: $f2
    inc c                                         ; $48d6: $0c
    ld [bc], a                                    ; $48d7: $02
    jr jr_047_48e7                                ; $48d8: $18 $0d

    ld [bc], a                                    ; $48da: $02
    ld b, b                                       ; $48db: $40
    dec c                                         ; $48dc: $0d
    ld [bc], a                                    ; $48dd: $02
    ld [hl], c                                    ; $48de: $71
    dec c                                         ; $48df: $0d
    ld [bc], a                                    ; $48e0: $02
    sbc b                                         ; $48e1: $98
    dec c                                         ; $48e2: $0d
    ld [bc], a                                    ; $48e3: $02
    or b                                          ; $48e4: $b0
    dec c                                         ; $48e5: $0d
    ld [bc], a                                    ; $48e6: $02

jr_047_48e7:
    jp hl                                         ; $48e7: $e9


    dec c                                         ; $48e8: $0d
    ld [bc], a                                    ; $48e9: $02
    rst $28                                       ; $48ea: $ef
    dec c                                         ; $48eb: $0d
    ld [bc], a                                    ; $48ec: $02
    rst $38                                       ; $48ed: $ff
    dec c                                         ; $48ee: $0d
    ld [bc], a                                    ; $48ef: $02
    inc h                                         ; $48f0: $24
    ld c, $02                                     ; $48f1: $0e $02
    jr c, jr_047_4903                             ; $48f3: $38 $0e

    ld [bc], a                                    ; $48f5: $02
    ld e, b                                       ; $48f6: $58
    ld c, $02                                     ; $48f7: $0e $02
    adc b                                         ; $48f9: $88
    ld c, $02                                     ; $48fa: $0e $02
    sbc h                                         ; $48fc: $9c
    ld c, $02                                     ; $48fd: $0e $02
    and a                                         ; $48ff: $a7
    ld c, $02                                     ; $4900: $0e $02
    or e                                          ; $4902: $b3

jr_047_4903:
    ld c, $02                                     ; $4903: $0e $02
    rrc [hl]                                      ; $4905: $cb $0e
    ld [bc], a                                    ; $4907: $02
    db $ec                                        ; $4908: $ec
    ld c, $02                                     ; $4909: $0e $02
    ld hl, sp+$0e                                 ; $490b: $f8 $0e
    ld [bc], a                                    ; $490d: $02
    dec bc                                        ; $490e: $0b
    rrca                                          ; $490f: $0f
    ld [bc], a                                    ; $4910: $02
    ld d, e                                       ; $4911: $53
    rrca                                          ; $4912: $0f
    ld [bc], a                                    ; $4913: $02
    cp d                                          ; $4914: $ba
    rrca                                          ; $4915: $0f
    ld [bc], a                                    ; $4916: $02
    call z, $020f                                 ; $4917: $cc $0f $02
    ld [hl], $10                                  ; $491a: $36 $10
    ld [bc], a                                    ; $491c: $02
    ld l, [hl]                                    ; $491d: $6e
    db $10                                        ; $491e: $10
    ld [bc], a                                    ; $491f: $02
    xor d                                         ; $4920: $aa
    db $10                                        ; $4921: $10
    ld [bc], a                                    ; $4922: $02
    cp h                                          ; $4923: $bc
    db $10                                        ; $4924: $10
    ld [bc], a                                    ; $4925: $02
    ld c, $11                                     ; $4926: $0e $11
    ld [bc], a                                    ; $4928: $02
    jr jr_047_493c                                ; $4929: $18 $11

    ld [bc], a                                    ; $492b: $02
    ld b, b                                       ; $492c: $40
    ld de, $5602                                  ; $492d: $11 $02 $56
    ld de, $8e02                                  ; $4930: $11 $02 $8e
    ld de, $f702                                  ; $4933: $11 $02 $f7
    ld de, $1a02                                  ; $4936: $11 $02 $1a
    ld [de], a                                    ; $4939: $12
    ld [bc], a                                    ; $493a: $02
    ld c, e                                       ; $493b: $4b

jr_047_493c:
    ld [de], a                                    ; $493c: $12
    ld [bc], a                                    ; $493d: $02
    ld a, a                                       ; $493e: $7f
    ld [de], a                                    ; $493f: $12
    ld [bc], a                                    ; $4940: $02
    sbc [hl]                                      ; $4941: $9e
    ld [de], a                                    ; $4942: $12
    ld [bc], a                                    ; $4943: $02
    xor [hl]                                      ; $4944: $ae
    ld [de], a                                    ; $4945: $12
    ld [bc], a                                    ; $4946: $02
    cp l                                          ; $4947: $bd
    ld [de], a                                    ; $4948: $12
    ld [bc], a                                    ; $4949: $02
    xor $12                                       ; $494a: $ee $12
    ld [bc], a                                    ; $494c: $02
    nop                                           ; $494d: $00
    inc de                                        ; $494e: $13
    ld [bc], a                                    ; $494f: $02
    ld a, [de]                                    ; $4950: $1a
    inc de                                        ; $4951: $13
    ld [bc], a                                    ; $4952: $02
    add hl, sp                                    ; $4953: $39
    inc de                                        ; $4954: $13
    ld [bc], a                                    ; $4955: $02
    jp z, $0213                                   ; $4956: $ca $13 $02

    db $d3                                        ; $4959: $d3
    inc de                                        ; $495a: $13
    ld [bc], a                                    ; $495b: $02
    cp $13                                        ; $495c: $fe $13
    ld [bc], a                                    ; $495e: $02
    ld [de], a                                    ; $495f: $12
    inc d                                         ; $4960: $14
    ld [bc], a                                    ; $4961: $02
    dec sp                                        ; $4962: $3b
    inc d                                         ; $4963: $14
    ld [bc], a                                    ; $4964: $02
    ld l, [hl]                                    ; $4965: $6e
    inc d                                         ; $4966: $14
    ld [bc], a                                    ; $4967: $02
    ld [hl], h                                    ; $4968: $74
    inc d                                         ; $4969: $14
    ld [bc], a                                    ; $496a: $02
    add [hl]                                      ; $496b: $86
    inc d                                         ; $496c: $14
    ld [bc], a                                    ; $496d: $02
    jp nc, Jump_000_0214                          ; $496e: $d2 $14 $02

    push hl                                       ; $4971: $e5
    inc d                                         ; $4972: $14
    ld [bc], a                                    ; $4973: $02
    db $10                                        ; $4974: $10
    dec d                                         ; $4975: $15
    ld [bc], a                                    ; $4976: $02
    jr c, jr_047_498e                             ; $4977: $38 $15

    ld [bc], a                                    ; $4979: $02
    sub [hl]                                      ; $497a: $96
    dec d                                         ; $497b: $15
    ld [bc], a                                    ; $497c: $02
    cp b                                          ; $497d: $b8
    dec d                                         ; $497e: $15
    ld [bc], a                                    ; $497f: $02
    jp z, $0215                                   ; $4980: $ca $15 $02

    ld [c], a                                     ; $4983: $e2
    dec d                                         ; $4984: $15
    ld [bc], a                                    ; $4985: $02
    ld sp, hl                                     ; $4986: $f9
    dec d                                         ; $4987: $15
    ld [bc], a                                    ; $4988: $02
    rrca                                          ; $4989: $0f
    ld d, $02                                     ; $498a: $16 $02
    ld l, $16                                     ; $498c: $2e $16

jr_047_498e:
    ld [bc], a                                    ; $498e: $02
    jr c, jr_047_49a7                             ; $498f: $38 $16

    ld [bc], a                                    ; $4991: $02
    inc a                                         ; $4992: $3c
    ld d, $02                                     ; $4993: $16 $02
    ld h, b                                       ; $4995: $60
    ld d, $02                                     ; $4996: $16 $02
    add d                                         ; $4998: $82
    ld d, $02                                     ; $4999: $16 $02
    and c                                         ; $499b: $a1
    ld d, $02                                     ; $499c: $16 $02
    or e                                          ; $499e: $b3
    ld d, $02                                     ; $499f: $16 $02
    call nc, Call_000_0216                        ; $49a1: $d4 $16 $02
    pop af                                        ; $49a4: $f1
    ld d, $02                                     ; $49a5: $16 $02

jr_047_49a7:
    inc h                                         ; $49a7: $24
    rla                                           ; $49a8: $17
    ld [bc], a                                    ; $49a9: $02
    ld b, b                                       ; $49aa: $40
    rla                                           ; $49ab: $17
    ld [bc], a                                    ; $49ac: $02
    ld h, d                                       ; $49ad: $62
    rla                                           ; $49ae: $17
    ld [bc], a                                    ; $49af: $02
    ld [hl], d                                    ; $49b0: $72
    rla                                           ; $49b1: $17
    ld [bc], a                                    ; $49b2: $02
    adc h                                         ; $49b3: $8c
    rla                                           ; $49b4: $17
    ld [bc], a                                    ; $49b5: $02
    sbc a                                         ; $49b6: $9f
    rla                                           ; $49b7: $17
    ld [bc], a                                    ; $49b8: $02
    cp a                                          ; $49b9: $bf
    rla                                           ; $49ba: $17
    ld [bc], a                                    ; $49bb: $02
    ldh [rNR22], a                                ; $49bc: $e0 $17
    ld [bc], a                                    ; $49be: $02
    ld [$0217], a                                 ; $49bf: $ea $17 $02
    dec de                                        ; $49c2: $1b
    jr @+$04                                      ; $49c3: $18 $02

    ld a, h                                       ; $49c5: $7c
    jr @+$04                                      ; $49c6: $18 $02

    adc e                                         ; $49c8: $8b
    jr @+$04                                      ; $49c9: $18 $02

    xor l                                         ; $49cb: $ad
    jr jr_047_49d0                                ; $49cc: $18 $02

    sub $18                                       ; $49ce: $d6 $18

jr_047_49d0:
    ld [bc], a                                    ; $49d0: $02
    db $ec                                        ; $49d1: $ec
    jr jr_047_49d6                                ; $49d2: $18 $02

    jr nc, jr_047_49ef                            ; $49d4: $30 $19

jr_047_49d6:
    ld [bc], a                                    ; $49d6: $02
    ld l, d                                       ; $49d7: $6a
    add hl, de                                    ; $49d8: $19
    ld [bc], a                                    ; $49d9: $02
    sbc [hl]                                      ; $49da: $9e
    add hl, de                                    ; $49db: $19
    ld [bc], a                                    ; $49dc: $02
    call c, Call_000_0219                         ; $49dd: $dc $19 $02
    dec c                                         ; $49e0: $0d
    ld a, [de]                                    ; $49e1: $1a
    ld [bc], a                                    ; $49e2: $02
    inc h                                         ; $49e3: $24
    ld a, [de]                                    ; $49e4: $1a
    ld [bc], a                                    ; $49e5: $02
    ccf                                           ; $49e6: $3f
    ld a, [de]                                    ; $49e7: $1a
    ld [bc], a                                    ; $49e8: $02
    ld c, e                                       ; $49e9: $4b
    ld a, [de]                                    ; $49ea: $1a
    ld [bc], a                                    ; $49eb: $02
    add a                                         ; $49ec: $87
    ld a, [de]                                    ; $49ed: $1a
    ld [bc], a                                    ; $49ee: $02

jr_047_49ef:
    xor [hl]                                      ; $49ef: $ae
    ld a, [de]                                    ; $49f0: $1a
    ld [bc], a                                    ; $49f1: $02
    rst $20                                       ; $49f2: $e7
    ld a, [de]                                    ; $49f3: $1a
    ld [bc], a                                    ; $49f4: $02
    ld a, [$021a]                                 ; $49f5: $fa $1a $02
    ld [de], a                                    ; $49f8: $12
    dec de                                        ; $49f9: $1b
    ld [bc], a                                    ; $49fa: $02
    ld a, [de]                                    ; $49fb: $1a
    dec de                                        ; $49fc: $1b
    ld [bc], a                                    ; $49fd: $02
    inc l                                         ; $49fe: $2c
    dec de                                        ; $49ff: $1b
    ld [bc], a                                    ; $4a00: $02
    ld c, b                                       ; $4a01: $48
    dec de                                        ; $4a02: $1b
    ld [bc], a                                    ; $4a03: $02
    ld e, c                                       ; $4a04: $59
    dec de                                        ; $4a05: $1b
    ld [bc], a                                    ; $4a06: $02
    and [hl]                                      ; $4a07: $a6
    dec de                                        ; $4a08: $1b
    ld [bc], a                                    ; $4a09: $02
    rr e                                          ; $4a0a: $cb $1b
    ld [bc], a                                    ; $4a0c: $02
    ld b, $1c                                     ; $4a0d: $06 $1c
    ld [bc], a                                    ; $4a0f: $02
    dec l                                         ; $4a10: $2d
    inc e                                         ; $4a11: $1c
    ld [bc], a                                    ; $4a12: $02
    ld [hl], h                                    ; $4a13: $74
    inc e                                         ; $4a14: $1c
    ld [bc], a                                    ; $4a15: $02
    xor h                                         ; $4a16: $ac
    inc e                                         ; $4a17: $1c
    ld [bc], a                                    ; $4a18: $02
    push de                                       ; $4a19: $d5
    inc e                                         ; $4a1a: $1c
    ld [bc], a                                    ; $4a1b: $02
    nop                                           ; $4a1c: $00
    dec e                                         ; $4a1d: $1d
    ld [bc], a                                    ; $4a1e: $02
    ld [hl+], a                                   ; $4a1f: $22
    dec e                                         ; $4a20: $1d
    ld [bc], a                                    ; $4a21: $02
    ld b, b                                       ; $4a22: $40
    dec e                                         ; $4a23: $1d
    ld [bc], a                                    ; $4a24: $02
    sbc e                                         ; $4a25: $9b
    dec e                                         ; $4a26: $1d
    ld [bc], a                                    ; $4a27: $02
    pop de                                        ; $4a28: $d1
    dec e                                         ; $4a29: $1d
    ld [bc], a                                    ; $4a2a: $02
    db $e4                                        ; $4a2b: $e4
    dec e                                         ; $4a2c: $1d
    ld [bc], a                                    ; $4a2d: $02
    db $10                                        ; $4a2e: $10
    ld e, $02                                     ; $4a2f: $1e $02
    ld sp, $021e                                  ; $4a31: $31 $1e $02
    ld [hl], c                                    ; $4a34: $71
    ld e, $02                                     ; $4a35: $1e $02
    adc h                                         ; $4a37: $8c
    ld e, $02                                     ; $4a38: $1e $02
    and b                                         ; $4a3a: $a0
    ld e, $02                                     ; $4a3b: $1e $02
    or a                                          ; $4a3d: $b7
    ld e, $02                                     ; $4a3e: $1e $02
    db $db                                        ; $4a40: $db
    ld e, $02                                     ; $4a41: $1e $02
    rst $28                                       ; $4a43: $ef
    ld e, $02                                     ; $4a44: $1e $02
    ld a, [hl-]                                   ; $4a46: $3a
    rra                                           ; $4a47: $1f
    ld [bc], a                                    ; $4a48: $02
    ld c, c                                       ; $4a49: $49
    rra                                           ; $4a4a: $1f
    ld [bc], a                                    ; $4a4b: $02
    adc [hl]                                      ; $4a4c: $8e
    rra                                           ; $4a4d: $1f
    ld [bc], a                                    ; $4a4e: $02
    xor e                                         ; $4a4f: $ab
    rra                                           ; $4a50: $1f
    ld [bc], a                                    ; $4a51: $02
    ret                                           ; $4a52: $c9


    rra                                           ; $4a53: $1f
    ld [bc], a                                    ; $4a54: $02
    ld a, [c]                                     ; $4a55: $f2
    rra                                           ; $4a56: $1f
    ld [bc], a                                    ; $4a57: $02
    dec b                                         ; $4a58: $05
    jr nz, @+$04                                  ; $4a59: $20 $02

    ld hl, $0220                                  ; $4a5b: $21 $20 $02
    ld e, h                                       ; $4a5e: $5c
    jr nz, @+$04                                  ; $4a5f: $20 $02

    ld a, d                                       ; $4a61: $7a
    jr nz, @+$04                                  ; $4a62: $20 $02

    sbc b                                         ; $4a64: $98
    jr nz, @+$04                                  ; $4a65: $20 $02

    cp h                                          ; $4a67: $bc
    jr nz, @+$04                                  ; $4a68: $20 $02

    pop hl                                        ; $4a6a: $e1
    jr nz, @+$04                                  ; $4a6b: $20 $02

    db $fd                                        ; $4a6d: $fd
    jr nz, @+$04                                  ; $4a6e: $20 $02

    rrca                                          ; $4a70: $0f
    ld hl, $2402                                  ; $4a71: $21 $02 $24
    ld hl, $2e02                                  ; $4a74: $21 $02 $2e

Call_047_4a77:
    ld hl, $3d02                                  ; $4a77: $21 $02 $3d
    ld hl, $4b02                                  ; $4a7a: $21 $02 $4b
    ld hl, $6002                                  ; $4a7d: $21 $02 $60
    ld hl, $6e02                                  ; $4a80: $21 $02 $6e
    ld hl, $8802                                  ; $4a83: $21 $02 $88
    ld hl, $8d02                                  ; $4a86: $21 $02 $8d
    ld hl, $a102                                  ; $4a89: $21 $02 $a1
    ld hl, $ba02                                  ; $4a8c: $21 $02 $ba
    ld hl, $e802                                  ; $4a8f: $21 $02 $e8
    ld hl, $3c02                                  ; $4a92: $21 $02 $3c
    ld [hl+], a                                   ; $4a95: $22
    ld [bc], a                                    ; $4a96: $02
    ld l, d                                       ; $4a97: $6a
    ld [hl+], a                                   ; $4a98: $22
    ld [bc], a                                    ; $4a99: $02
    add e                                         ; $4a9a: $83
    ld [hl+], a                                   ; $4a9b: $22
    ld [bc], a                                    ; $4a9c: $02
    sub c                                         ; $4a9d: $91
    ld [hl+], a                                   ; $4a9e: $22
    ld [bc], a                                    ; $4a9f: $02
    or l                                          ; $4aa0: $b5
    ld [hl+], a                                   ; $4aa1: $22
    ld [bc], a                                    ; $4aa2: $02
    ld [c], a                                     ; $4aa3: $e2
    ld [hl+], a                                   ; $4aa4: $22
    ld [bc], a                                    ; $4aa5: $02
    db $10                                        ; $4aa6: $10
    inc hl                                        ; $4aa7: $23
    ld [bc], a                                    ; $4aa8: $02
    ld c, b                                       ; $4aa9: $48
    inc hl                                        ; $4aaa: $23
    ld [bc], a                                    ; $4aab: $02
    ld a, h                                       ; $4aac: $7c
    inc hl                                        ; $4aad: $23
    ld [bc], a                                    ; $4aae: $02
    adc b                                         ; $4aaf: $88
    inc hl                                        ; $4ab0: $23
    ld [bc], a                                    ; $4ab1: $02
    and h                                         ; $4ab2: $a4
    inc hl                                        ; $4ab3: $23
    ld [bc], a                                    ; $4ab4: $02
    cp a                                          ; $4ab5: $bf
    inc hl                                        ; $4ab6: $23
    ld [bc], a                                    ; $4ab7: $02
    cp $23                                        ; $4ab8: $fe $23
    ld [bc], a                                    ; $4aba: $02
    inc d                                         ; $4abb: $14
    inc h                                         ; $4abc: $24
    ld [bc], a                                    ; $4abd: $02
    ld [hl+], a                                   ; $4abe: $22
    inc h                                         ; $4abf: $24
    ld [bc], a                                    ; $4ac0: $02
    ld c, e                                       ; $4ac1: $4b
    inc h                                         ; $4ac2: $24
    ld [bc], a                                    ; $4ac3: $02
    ld h, d                                       ; $4ac4: $62
    inc h                                         ; $4ac5: $24
    ld [bc], a                                    ; $4ac6: $02
    ld a, e                                       ; $4ac7: $7b
    inc h                                         ; $4ac8: $24
    ld [bc], a                                    ; $4ac9: $02
    sbc [hl]                                      ; $4aca: $9e
    inc h                                         ; $4acb: $24
    ld [bc], a                                    ; $4acc: $02
    call $0224                                    ; $4acd: $cd $24 $02
    ei                                            ; $4ad0: $fb
    inc h                                         ; $4ad1: $24
    ld [bc], a                                    ; $4ad2: $02
    dec a                                         ; $4ad3: $3d
    dec h                                         ; $4ad4: $25
    ld [bc], a                                    ; $4ad5: $02
    ld [hl], a                                    ; $4ad6: $77
    dec h                                         ; $4ad7: $25
    ld [bc], a                                    ; $4ad8: $02
    xor l                                         ; $4ad9: $ad
    dec h                                         ; $4ada: $25
    ld [bc], a                                    ; $4adb: $02
    jp nz, $0225                                  ; $4adc: $c2 $25 $02

    db $eb                                        ; $4adf: $eb
    dec h                                         ; $4ae0: $25
    ld [bc], a                                    ; $4ae1: $02
    ld a, [de]                                    ; $4ae2: $1a
    ld h, $02                                     ; $4ae3: $26 $02
    ld b, l                                       ; $4ae5: $45
    ld h, $02                                     ; $4ae6: $26 $02
    ld d, a                                       ; $4ae8: $57
    ld h, $02                                     ; $4ae9: $26 $02
    ld a, a                                       ; $4aeb: $7f
    ld h, $02                                     ; $4aec: $26 $02
    sub l                                         ; $4aee: $95
    ld h, $02                                     ; $4aef: $26 $02
    xor b                                         ; $4af1: $a8
    ld h, $02                                     ; $4af2: $26 $02
    pop de                                        ; $4af4: $d1
    ld h, $02                                     ; $4af5: $26 $02
    inc bc                                        ; $4af7: $03
    daa                                           ; $4af8: $27
    ld [bc], a                                    ; $4af9: $02
    cpl                                           ; $4afa: $2f
    daa                                           ; $4afb: $27
    ld [bc], a                                    ; $4afc: $02
    dec a                                         ; $4afd: $3d
    daa                                           ; $4afe: $27
    ld [bc], a                                    ; $4aff: $02
    ld l, b                                       ; $4b00: $68
    daa                                           ; $4b01: $27
    ld [bc], a                                    ; $4b02: $02
    ld [hl], e                                    ; $4b03: $73
    daa                                           ; $4b04: $27
    ld [bc], a                                    ; $4b05: $02
    adc e                                         ; $4b06: $8b
    daa                                           ; $4b07: $27
    ld [bc], a                                    ; $4b08: $02
    and b                                         ; $4b09: $a0
    daa                                           ; $4b0a: $27
    ld [bc], a                                    ; $4b0b: $02
    jp $0227                                      ; $4b0c: $c3 $27 $02


    jp hl                                         ; $4b0f: $e9


    daa                                           ; $4b10: $27
    ld [bc], a                                    ; $4b11: $02
    rst $30                                       ; $4b12: $f7
    daa                                           ; $4b13: $27
    ld [bc], a                                    ; $4b14: $02
    inc e                                         ; $4b15: $1c
    jr z, @+$04                                   ; $4b16: $28 $02

    inc l                                         ; $4b18: $2c
    jr z, jr_047_4b1d                             ; $4b19: $28 $02

    ld a, $28                                     ; $4b1b: $3e $28

jr_047_4b1d:
    ld [bc], a                                    ; $4b1d: $02
    ld h, d                                       ; $4b1e: $62
    jr z, @+$04                                   ; $4b1f: $28 $02

    adc c                                         ; $4b21: $89
    jr z, @+$04                                   ; $4b22: $28 $02

    or a                                          ; $4b24: $b7
    jr z, @+$04                                   ; $4b25: $28 $02

    db $d3                                        ; $4b27: $d3
    jr z, @+$04                                   ; $4b28: $28 $02

    db $ed                                        ; $4b2a: $ed
    jr z, jr_047_4b2f                             ; $4b2b: $28 $02

    ld b, $29                                     ; $4b2d: $06 $29

jr_047_4b2f:
    ld [bc], a                                    ; $4b2f: $02
    add hl, de                                    ; $4b30: $19
    add hl, hl                                    ; $4b31: $29
    ld [bc], a                                    ; $4b32: $02
    ld b, d                                       ; $4b33: $42
    add hl, hl                                    ; $4b34: $29
    ld [bc], a                                    ; $4b35: $02
    ld h, d                                       ; $4b36: $62
    add hl, hl                                    ; $4b37: $29
    ld [bc], a                                    ; $4b38: $02
    adc d                                         ; $4b39: $8a
    add hl, hl                                    ; $4b3a: $29
    ld [bc], a                                    ; $4b3b: $02
    xor e                                         ; $4b3c: $ab
    add hl, hl                                    ; $4b3d: $29
    ld [bc], a                                    ; $4b3e: $02
    push bc                                       ; $4b3f: $c5
    add hl, hl                                    ; $4b40: $29
    ld [bc], a                                    ; $4b41: $02
    ldh [$29], a                                  ; $4b42: $e0 $29
    ld [bc], a                                    ; $4b44: $02
    push af                                       ; $4b45: $f5
    add hl, hl                                    ; $4b46: $29
    ld [bc], a                                    ; $4b47: $02
    inc de                                        ; $4b48: $13
    ld a, [hl+]                                   ; $4b49: $2a
    ld [bc], a                                    ; $4b4a: $02
    ld d, a                                       ; $4b4b: $57
    ld a, [hl+]                                   ; $4b4c: $2a
    ld [bc], a                                    ; $4b4d: $02
    ld [hl], d                                    ; $4b4e: $72
    ld a, [hl+]                                   ; $4b4f: $2a
    ld [bc], a                                    ; $4b50: $02
    and h                                         ; $4b51: $a4
    ld a, [hl+]                                   ; $4b52: $2a
    ld [bc], a                                    ; $4b53: $02
    db $f4                                        ; $4b54: $f4
    ld a, [hl+]                                   ; $4b55: $2a
    ld [bc], a                                    ; $4b56: $02
    ei                                            ; $4b57: $fb
    ld a, [hl+]                                   ; $4b58: $2a
    ld [bc], a                                    ; $4b59: $02
    jr jr_047_4b87                                ; $4b5a: $18 $2b

    ld [bc], a                                    ; $4b5c: $02
    ld b, c                                       ; $4b5d: $41
    dec hl                                        ; $4b5e: $2b
    ld [bc], a                                    ; $4b5f: $02
    ld e, b                                       ; $4b60: $58
    dec hl                                        ; $4b61: $2b
    ld [bc], a                                    ; $4b62: $02
    xor a                                         ; $4b63: $af
    dec hl                                        ; $4b64: $2b
    ld [bc], a                                    ; $4b65: $02
    push de                                       ; $4b66: $d5
    dec hl                                        ; $4b67: $2b
    ld [bc], a                                    ; $4b68: $02
    db $fc                                        ; $4b69: $fc
    dec hl                                        ; $4b6a: $2b
    ld [bc], a                                    ; $4b6b: $02
    ld de, $022c                                  ; $4b6c: $11 $2c $02
    inc sp                                        ; $4b6f: $33
    inc l                                         ; $4b70: $2c
    ld [bc], a                                    ; $4b71: $02
    ld b, e                                       ; $4b72: $43
    inc l                                         ; $4b73: $2c
    ld [bc], a                                    ; $4b74: $02
    ld h, d                                       ; $4b75: $62
    inc l                                         ; $4b76: $2c
    ld [bc], a                                    ; $4b77: $02
    ld l, b                                       ; $4b78: $68
    inc l                                         ; $4b79: $2c
    ld [bc], a                                    ; $4b7a: $02
    add c                                         ; $4b7b: $81
    inc l                                         ; $4b7c: $2c
    ld [bc], a                                    ; $4b7d: $02
    or a                                          ; $4b7e: $b7
    inc l                                         ; $4b7f: $2c
    ld [bc], a                                    ; $4b80: $02
    rst $00                                       ; $4b81: $c7
    inc l                                         ; $4b82: $2c
    ld [bc], a                                    ; $4b83: $02
    call nc, $022c                                ; $4b84: $d4 $2c $02

jr_047_4b87:
    rst $30                                       ; $4b87: $f7
    inc l                                         ; $4b88: $2c
    ld [bc], a                                    ; $4b89: $02
    jr nz, jr_047_4bb9                            ; $4b8a: $20 $2d

    ld [bc], a                                    ; $4b8c: $02
    jr c, jr_047_4bbc                             ; $4b8d: $38 $2d

    ld [bc], a                                    ; $4b8f: $02
    ld b, c                                       ; $4b90: $41
    dec l                                         ; $4b91: $2d
    ld [bc], a                                    ; $4b92: $02
    ld d, l                                       ; $4b93: $55
    dec l                                         ; $4b94: $2d
    ld [bc], a                                    ; $4b95: $02
    ld a, a                                       ; $4b96: $7f
    dec l                                         ; $4b97: $2d
    ld [bc], a                                    ; $4b98: $02
    xor a                                         ; $4b99: $af
    dec l                                         ; $4b9a: $2d
    ld [bc], a                                    ; $4b9b: $02
    cp c                                          ; $4b9c: $b9
    dec l                                         ; $4b9d: $2d
    ld [bc], a                                    ; $4b9e: $02
    rst $08                                       ; $4b9f: $cf
    dec l                                         ; $4ba0: $2d
    ld [bc], a                                    ; $4ba1: $02
    or $2d                                        ; $4ba2: $f6 $2d
    ld [bc], a                                    ; $4ba4: $02
    ld c, $2e                                     ; $4ba5: $0e $2e
    ld [bc], a                                    ; $4ba7: $02
    add h                                         ; $4ba8: $84
    ld l, $02                                     ; $4ba9: $2e $02
    sub b                                         ; $4bab: $90
    ld l, $02                                     ; $4bac: $2e $02
    sub l                                         ; $4bae: $95
    ld l, $02                                     ; $4baf: $2e $02
    xor d                                         ; $4bb1: $aa
    ld l, $02                                     ; $4bb2: $2e $02
    add sp, $2e                                   ; $4bb4: $e8 $2e
    ld [bc], a                                    ; $4bb6: $02
    dec c                                         ; $4bb7: $0d
    cpl                                           ; $4bb8: $2f

jr_047_4bb9:
    ld [bc], a                                    ; $4bb9: $02
    jr z, @+$31                                   ; $4bba: $28 $2f

jr_047_4bbc:
    ld [bc], a                                    ; $4bbc: $02
    ld d, e                                       ; $4bbd: $53
    cpl                                           ; $4bbe: $2f
    ld [bc], a                                    ; $4bbf: $02
    ld l, l                                       ; $4bc0: $6d
    cpl                                           ; $4bc1: $2f
    ld [bc], a                                    ; $4bc2: $02
    adc e                                         ; $4bc3: $8b
    cpl                                           ; $4bc4: $2f
    ld [bc], a                                    ; $4bc5: $02
    and c                                         ; $4bc6: $a1
    cpl                                           ; $4bc7: $2f
    ld [bc], a                                    ; $4bc8: $02
    or d                                          ; $4bc9: $b2
    cpl                                           ; $4bca: $2f
    ld [bc], a                                    ; $4bcb: $02
    ret z                                         ; $4bcc: $c8

    cpl                                           ; $4bcd: $2f
    ld [bc], a                                    ; $4bce: $02
    ld [c], a                                     ; $4bcf: $e2
    cpl                                           ; $4bd0: $2f
    ld [bc], a                                    ; $4bd1: $02
    rst $28                                       ; $4bd2: $ef
    cpl                                           ; $4bd3: $2f
    ld [bc], a                                    ; $4bd4: $02
    inc bc                                        ; $4bd5: $03
    jr nc, @+$04                                  ; $4bd6: $30 $02

    add hl, hl                                    ; $4bd8: $29
    jr nc, @+$04                                  ; $4bd9: $30 $02

    ld [hl-], a                                   ; $4bdb: $32
    jr nc, @+$04                                  ; $4bdc: $30 $02

    ld e, d                                       ; $4bde: $5a
    jr nc, @+$04                                  ; $4bdf: $30 $02

    ld a, l                                       ; $4be1: $7d
    jr nc, @+$04                                  ; $4be2: $30 $02

    sbc a                                         ; $4be4: $9f
    jr nc, @+$04                                  ; $4be5: $30 $02

    cp d                                          ; $4be7: $ba
    jr nc, jr_047_4bec                            ; $4be8: $30 $02

    or $30                                        ; $4bea: $f6 $30

jr_047_4bec:
    ld [bc], a                                    ; $4bec: $02
    dec c                                         ; $4bed: $0d
    ld sp, $2002                                  ; $4bee: $31 $02 $20
    ld sp, $5d02                                  ; $4bf1: $31 $02 $5d
    ld sp, $7c02                                  ; $4bf4: $31 $02 $7c
    ld sp, $9402                                  ; $4bf7: $31 $02 $94
    ld sp, $dd02                                  ; $4bfa: $31 $02 $dd
    ld sp, $f302                                  ; $4bfd: $31 $02 $f3
    ld sp, $3302                                  ; $4c00: $31 $02 $33
    ld [hl-], a                                   ; $4c03: $32
    ld [bc], a                                    ; $4c04: $02
    ld [hl], c                                    ; $4c05: $71
    ld [hl-], a                                   ; $4c06: $32
    ld [bc], a                                    ; $4c07: $02
    ld a, l                                       ; $4c08: $7d
    ld [hl-], a                                   ; $4c09: $32
    ld [bc], a                                    ; $4c0a: $02
    xor d                                         ; $4c0b: $aa
    ld [hl-], a                                   ; $4c0c: $32
    ld [bc], a                                    ; $4c0d: $02
    ret c                                         ; $4c0e: $d8

    ld [hl-], a                                   ; $4c0f: $32
    ld [bc], a                                    ; $4c10: $02
    ld sp, hl                                     ; $4c11: $f9
    ld [hl-], a                                   ; $4c12: $32
    ld [bc], a                                    ; $4c13: $02
    ld [bc], a                                    ; $4c14: $02
    inc sp                                        ; $4c15: $33
    ld [bc], a                                    ; $4c16: $02
    dec e                                         ; $4c17: $1d
    inc sp                                        ; $4c18: $33
    ld [bc], a                                    ; $4c19: $02
    cpl                                           ; $4c1a: $2f
    inc sp                                        ; $4c1b: $33
    ld [bc], a                                    ; $4c1c: $02
    ld e, c                                       ; $4c1d: $59
    inc sp                                        ; $4c1e: $33
    ld [bc], a                                    ; $4c1f: $02
    add e                                         ; $4c20: $83
    inc sp                                        ; $4c21: $33
    ld [bc], a                                    ; $4c22: $02
    and e                                         ; $4c23: $a3
    inc sp                                        ; $4c24: $33
    ld [bc], a                                    ; $4c25: $02
    xor a                                         ; $4c26: $af
    inc sp                                        ; $4c27: $33
    ld [bc], a                                    ; $4c28: $02
    db $d3                                        ; $4c29: $d3
    inc sp                                        ; $4c2a: $33
    ld [bc], a                                    ; $4c2b: $02
    ldh [$33], a                                  ; $4c2c: $e0 $33
    ld [bc], a                                    ; $4c2e: $02
    inc l                                         ; $4c2f: $2c
    inc [hl]                                      ; $4c30: $34
    ld [bc], a                                    ; $4c31: $02
    ld d, e                                       ; $4c32: $53
    inc [hl]                                      ; $4c33: $34
    ld [bc], a                                    ; $4c34: $02
    adc a                                         ; $4c35: $8f
    inc [hl]                                      ; $4c36: $34
    ld [bc], a                                    ; $4c37: $02
    and b                                         ; $4c38: $a0
    inc [hl]                                      ; $4c39: $34
    ld [bc], a                                    ; $4c3a: $02
    or a                                          ; $4c3b: $b7
    inc [hl]                                      ; $4c3c: $34
    ld [bc], a                                    ; $4c3d: $02
    call c, $0234                                 ; $4c3e: $dc $34 $02
    inc de                                        ; $4c41: $13
    dec [hl]                                      ; $4c42: $35
    ld [bc], a                                    ; $4c43: $02
    scf                                           ; $4c44: $37
    dec [hl]                                      ; $4c45: $35
    ld [bc], a                                    ; $4c46: $02
    ld l, e                                       ; $4c47: $6b
    dec [hl]                                      ; $4c48: $35
    ld [bc], a                                    ; $4c49: $02
    ld a, c                                       ; $4c4a: $79
    dec [hl]                                      ; $4c4b: $35
    ld [bc], a                                    ; $4c4c: $02
    or c                                          ; $4c4d: $b1
    dec [hl]                                      ; $4c4e: $35
    ld [bc], a                                    ; $4c4f: $02
    rst $18                                       ; $4c50: $df
    dec [hl]                                      ; $4c51: $35
    ld [bc], a                                    ; $4c52: $02
    inc b                                         ; $4c53: $04
    ld [hl], $02                                  ; $4c54: $36 $02
    inc [hl]                                      ; $4c56: $34
    ld [hl], $02                                  ; $4c57: $36 $02
    ld l, e                                       ; $4c59: $6b
    ld [hl], $02                                  ; $4c5a: $36 $02
    sbc h                                         ; $4c5c: $9c
    ld [hl], $02                                  ; $4c5d: $36 $02
    jp Jump_000_0236                              ; $4c5f: $c3 $36 $02


    push de                                       ; $4c62: $d5
    ld [hl], $02                                  ; $4c63: $36 $02
    rrca                                          ; $4c65: $0f
    scf                                           ; $4c66: $37
    ld [bc], a                                    ; $4c67: $02
    add hl, hl                                    ; $4c68: $29
    scf                                           ; $4c69: $37
    ld [bc], a                                    ; $4c6a: $02
    ccf                                           ; $4c6b: $3f
    scf                                           ; $4c6c: $37
    ld [bc], a                                    ; $4c6d: $02
    ld b, e                                       ; $4c6e: $43
    scf                                           ; $4c6f: $37
    ld [bc], a                                    ; $4c70: $02
    ld [hl], h                                    ; $4c71: $74
    scf                                           ; $4c72: $37
    ld [bc], a                                    ; $4c73: $02
    adc c                                         ; $4c74: $89
    scf                                           ; $4c75: $37
    ld [bc], a                                    ; $4c76: $02
    sbc e                                         ; $4c77: $9b
    scf                                           ; $4c78: $37
    ld [bc], a                                    ; $4c79: $02
    xor e                                         ; $4c7a: $ab
    scf                                           ; $4c7b: $37
    ld [bc], a                                    ; $4c7c: $02
    adc $37                                       ; $4c7d: $ce $37
    ld [bc], a                                    ; $4c7f: $02
    rst $20                                       ; $4c80: $e7
    scf                                           ; $4c81: $37
    ld [bc], a                                    ; $4c82: $02
    dec bc                                        ; $4c83: $0b
    jr c, @+$04                                   ; $4c84: $38 $02

    ld a, [de]                                    ; $4c86: $1a
    jr c, @+$04                                   ; $4c87: $38 $02

    dec l                                         ; $4c89: $2d
    jr c, @+$04                                   ; $4c8a: $38 $02

    ld b, a                                       ; $4c8c: $47
    jr c, @+$04                                   ; $4c8d: $38 $02

    sub [hl]                                      ; $4c8f: $96
    jr c, @+$04                                   ; $4c90: $38 $02

    xor l                                         ; $4c92: $ad
    jr c, @+$04                                   ; $4c93: $38 $02

    ld [$0239], sp                                ; $4c95: $08 $39 $02
    inc l                                         ; $4c98: $2c
    add hl, sp                                    ; $4c99: $39
    ld [bc], a                                    ; $4c9a: $02
    ld e, d                                       ; $4c9b: $5a
    add hl, sp                                    ; $4c9c: $39
    ld [bc], a                                    ; $4c9d: $02
    ld h, l                                       ; $4c9e: $65
    add hl, sp                                    ; $4c9f: $39
    ld [bc], a                                    ; $4ca0: $02
    adc a                                         ; $4ca1: $8f
    add hl, sp                                    ; $4ca2: $39
    ld [bc], a                                    ; $4ca3: $02
    sbc c                                         ; $4ca4: $99
    add hl, sp                                    ; $4ca5: $39
    ld [bc], a                                    ; $4ca6: $02
    ret z                                         ; $4ca7: $c8

    add hl, sp                                    ; $4ca8: $39
    ld [bc], a                                    ; $4ca9: $02
    sbc $39                                       ; $4caa: $de $39
    ld [bc], a                                    ; $4cac: $02
    ld sp, hl                                     ; $4cad: $f9
    add hl, sp                                    ; $4cae: $39
    ld [bc], a                                    ; $4caf: $02
    ld d, e                                       ; $4cb0: $53
    ld a, [hl-]                                   ; $4cb1: $3a
    ld [bc], a                                    ; $4cb2: $02
    ld l, c                                       ; $4cb3: $69
    ld a, [hl-]                                   ; $4cb4: $3a
    ld [bc], a                                    ; $4cb5: $02
    ld a, a                                       ; $4cb6: $7f
    ld a, [hl-]                                   ; $4cb7: $3a
    ld [bc], a                                    ; $4cb8: $02
    sub e                                         ; $4cb9: $93
    ld a, [hl-]                                   ; $4cba: $3a
    ld [bc], a                                    ; $4cbb: $02
    or l                                          ; $4cbc: $b5
    ld a, [hl-]                                   ; $4cbd: $3a
    ld [bc], a                                    ; $4cbe: $02
    cp [hl]                                       ; $4cbf: $be
    ld a, [hl-]                                   ; $4cc0: $3a
    ld [bc], a                                    ; $4cc1: $02
    ret                                           ; $4cc2: $c9


    ld a, [hl-]                                   ; $4cc3: $3a
    ld [bc], a                                    ; $4cc4: $02
    ld e, $3b                                     ; $4cc5: $1e $3b
    ld [bc], a                                    ; $4cc7: $02
    ld sp, $023b                                  ; $4cc8: $31 $3b $02
    ld a, $3b                                     ; $4ccb: $3e $3b
    ld [bc], a                                    ; $4ccd: $02
    ld b, h                                       ; $4cce: $44
    dec sp                                        ; $4ccf: $3b
    ld [bc], a                                    ; $4cd0: $02
    ld l, l                                       ; $4cd1: $6d
    dec sp                                        ; $4cd2: $3b
    ld [bc], a                                    ; $4cd3: $02
    pop bc                                        ; $4cd4: $c1
    dec sp                                        ; $4cd5: $3b
    ld [bc], a                                    ; $4cd6: $02
    call c, Call_000_023b                         ; $4cd7: $dc $3b $02
    ld a, [c]                                     ; $4cda: $f2
    dec sp                                        ; $4cdb: $3b
    ld [bc], a                                    ; $4cdc: $02
    ld a, [$023b]                                 ; $4cdd: $fa $3b $02
    ld [hl+], a                                   ; $4ce0: $22
    inc a                                         ; $4ce1: $3c
    ld [bc], a                                    ; $4ce2: $02
    ld b, h                                       ; $4ce3: $44
    inc a                                         ; $4ce4: $3c
    ld [bc], a                                    ; $4ce5: $02
    ld d, a                                       ; $4ce6: $57
    inc a                                         ; $4ce7: $3c
    ld [bc], a                                    ; $4ce8: $02
    ld h, l                                       ; $4ce9: $65
    inc a                                         ; $4cea: $3c
    ld [bc], a                                    ; $4ceb: $02
    add [hl]                                      ; $4cec: $86
    inc a                                         ; $4ced: $3c
    ld [bc], a                                    ; $4cee: $02
    sbc e                                         ; $4cef: $9b
    inc a                                         ; $4cf0: $3c
    ld [bc], a                                    ; $4cf1: $02
    cp [hl]                                       ; $4cf2: $be
    inc a                                         ; $4cf3: $3c
    ld [bc], a                                    ; $4cf4: $02
    push hl                                       ; $4cf5: $e5
    inc a                                         ; $4cf6: $3c
    ld [bc], a                                    ; $4cf7: $02
    ld a, [$023c]                                 ; $4cf8: $fa $3c $02
    ld d, d                                       ; $4cfb: $52
    dec a                                         ; $4cfc: $3d
    ld [bc], a                                    ; $4cfd: $02
    ld [hl], b                                    ; $4cfe: $70
    dec a                                         ; $4cff: $3d
    ld [bc], a                                    ; $4d00: $02
    sbc d                                         ; $4d01: $9a
    dec a                                         ; $4d02: $3d
    ld [bc], a                                    ; $4d03: $02
    cp [hl]                                       ; $4d04: $be
    dec a                                         ; $4d05: $3d
    ld [bc], a                                    ; $4d06: $02
    sbc $3d                                       ; $4d07: $de $3d
    ld [bc], a                                    ; $4d09: $02
    ld a, [de]                                    ; $4d0a: $1a
    ld a, $02                                     ; $4d0b: $3e $02
    inc hl                                        ; $4d0d: $23
    ld a, $02                                     ; $4d0e: $3e $02
    call nz, $023e                                ; $4d10: $c4 $3e $02
    adc $3e                                       ; $4d13: $ce $3e
    ld [bc], a                                    ; $4d15: $02
    ld [c], a                                     ; $4d16: $e2
    ld a, $02                                     ; $4d17: $3e $02
    ld sp, hl                                     ; $4d19: $f9
    ld a, $02                                     ; $4d1a: $3e $02
    dec bc                                        ; $4d1c: $0b
    ccf                                           ; $4d1d: $3f
    ld [bc], a                                    ; $4d1e: $02
    dec sp                                        ; $4d1f: $3b
    ccf                                           ; $4d20: $3f
    ld [bc], a                                    ; $4d21: $02
    ld [hl], a                                    ; $4d22: $77
    ccf                                           ; $4d23: $3f
    ld [bc], a                                    ; $4d24: $02
    adc b                                         ; $4d25: $88
    ccf                                           ; $4d26: $3f
    ld [bc], a                                    ; $4d27: $02
    ret nz                                        ; $4d28: $c0

    ccf                                           ; $4d29: $3f
    inc bc                                        ; $4d2a: $03
    ld bc, $0300                                  ; $4d2b: $01 $00 $03
    ld e, $00                                     ; $4d2e: $1e $00
    inc bc                                        ; $4d30: $03
    ld b, l                                       ; $4d31: $45
    nop                                           ; $4d32: $00
    inc bc                                        ; $4d33: $03
    ld l, a                                       ; $4d34: $6f
    nop                                           ; $4d35: $00
    inc bc                                        ; $4d36: $03
    adc e                                         ; $4d37: $8b
    nop                                           ; $4d38: $00
    inc bc                                        ; $4d39: $03
    or [hl]                                       ; $4d3a: $b6
    nop                                           ; $4d3b: $00
    inc bc                                        ; $4d3c: $03
    sbc $00                                       ; $4d3d: $de $00
    inc bc                                        ; $4d3f: $03
    db $e4                                        ; $4d40: $e4
    nop                                           ; $4d41: $00
    inc bc                                        ; $4d42: $03
    ccf                                           ; $4d43: $3f
    ld bc, $4503                                  ; $4d44: $01 $03 $45
    ld bc, $8303                                  ; $4d47: $01 $03 $83
    ld bc, $ab03                                  ; $4d4a: $01 $03 $ab
    ld bc, $c503                                  ; $4d4d: $01 $03 $c5
    ld bc, $d303                                  ; $4d50: $01 $03 $d3
    ld bc, $df03                                  ; $4d53: $01 $03 $df
    ld bc, $f903                                  ; $4d56: $01 $03 $f9
    ld bc, $5c03                                  ; $4d59: $01 $03 $5c
    ld [bc], a                                    ; $4d5c: $02
    inc bc                                        ; $4d5d: $03
    ld h, [hl]                                    ; $4d5e: $66
    ld [bc], a                                    ; $4d5f: $02
    inc bc                                        ; $4d60: $03
    ld a, d                                       ; $4d61: $7a
    ld [bc], a                                    ; $4d62: $02
    inc bc                                        ; $4d63: $03
    add c                                         ; $4d64: $81
    ld [bc], a                                    ; $4d65: $02
    inc bc                                        ; $4d66: $03
    cp c                                          ; $4d67: $b9
    ld [bc], a                                    ; $4d68: $02
    inc bc                                        ; $4d69: $03
    jp hl                                         ; $4d6a: $e9


    ld [bc], a                                    ; $4d6b: $02
    inc bc                                        ; $4d6c: $03
    ld bc, $0303                                  ; $4d6d: $01 $03 $03
    ld e, a                                       ; $4d70: $5f
    inc bc                                        ; $4d71: $03
    inc bc                                        ; $4d72: $03
    add c                                         ; $4d73: $81
    inc bc                                        ; $4d74: $03
    inc bc                                        ; $4d75: $03
    sub e                                         ; $4d76: $93
    inc bc                                        ; $4d77: $03
    inc bc                                        ; $4d78: $03
    cp c                                          ; $4d79: $b9
    inc bc                                        ; $4d7a: $03
    inc bc                                        ; $4d7b: $03
    ld a, [bc]                                    ; $4d7c: $0a
    inc b                                         ; $4d7d: $04
    inc bc                                        ; $4d7e: $03
    ld b, [hl]                                    ; $4d7f: $46
    inc b                                         ; $4d80: $04
    inc bc                                        ; $4d81: $03
    ld a, a                                       ; $4d82: $7f
    inc b                                         ; $4d83: $04
    inc bc                                        ; $4d84: $03
    xor h                                         ; $4d85: $ac
    inc b                                         ; $4d86: $04
    inc bc                                        ; $4d87: $03
    cp l                                          ; $4d88: $bd
    inc b                                         ; $4d89: $04
    inc bc                                        ; $4d8a: $03
    call nc, Call_000_0304                        ; $4d8b: $d4 $04 $03
    db $db                                        ; $4d8e: $db
    inc b                                         ; $4d8f: $04
    inc bc                                        ; $4d90: $03
    ld a, [bc]                                    ; $4d91: $0a
    dec b                                         ; $4d92: $05
    inc bc                                        ; $4d93: $03
    ld h, $05                                     ; $4d94: $26 $05
    inc bc                                        ; $4d96: $03
    ld c, e                                       ; $4d97: $4b
    dec b                                         ; $4d98: $05
    inc bc                                        ; $4d99: $03
    ld e, [hl]                                    ; $4d9a: $5e
    dec b                                         ; $4d9b: $05
    inc bc                                        ; $4d9c: $03
    sub h                                         ; $4d9d: $94
    dec b                                         ; $4d9e: $05
    inc bc                                        ; $4d9f: $03
    and e                                         ; $4da0: $a3
    dec b                                         ; $4da1: $05
    inc bc                                        ; $4da2: $03
    ret nz                                        ; $4da3: $c0

    dec b                                         ; $4da4: $05
    inc bc                                        ; $4da5: $03
    rlc l                                         ; $4da6: $cb $05
    inc bc                                        ; $4da8: $03
    adc h                                         ; $4da9: $8c
    ld b, $03                                     ; $4daa: $06 $03
    sbc e                                         ; $4dac: $9b
    ld b, $03                                     ; $4dad: $06 $03
    ld [de], a                                    ; $4daf: $12
    rlca                                          ; $4db0: $07
    inc bc                                        ; $4db1: $03
    ld sp, $0307                                  ; $4db2: $31 $07 $03
    ld d, c                                       ; $4db5: $51
    rlca                                          ; $4db6: $07
    inc bc                                        ; $4db7: $03
    ld [hl], e                                    ; $4db8: $73
    rlca                                          ; $4db9: $07
    inc bc                                        ; $4dba: $03
    cp l                                          ; $4dbb: $bd
    rlca                                          ; $4dbc: $07
    inc bc                                        ; $4dbd: $03
    rst $08                                       ; $4dbe: $cf
    rlca                                          ; $4dbf: $07
    inc bc                                        ; $4dc0: $03
    rst $10                                       ; $4dc1: $d7
    rlca                                          ; $4dc2: $07
    inc bc                                        ; $4dc3: $03
    sbc $07                                       ; $4dc4: $de $07
    inc bc                                        ; $4dc6: $03
    nop                                           ; $4dc7: $00
    ld [$0a03], sp                                ; $4dc8: $08 $03 $0a
    ld [$3203], sp                                ; $4dcb: $08 $03 $32
    ld [$4f03], sp                                ; $4dce: $08 $03 $4f
    ld [$6503], sp                                ; $4dd1: $08 $03 $65
    ld [$7203], sp                                ; $4dd4: $08 $03 $72
    ld [$b303], sp                                ; $4dd7: $08 $03 $b3
    ld [$d403], sp                                ; $4dda: $08 $03 $d4
    ld [$f603], sp                                ; $4ddd: $08 $03 $f6
    ld [$1603], sp                                ; $4de0: $08 $03 $16
    add hl, bc                                    ; $4de3: $09
    inc bc                                        ; $4de4: $03
    ld c, a                                       ; $4de5: $4f
    add hl, bc                                    ; $4de6: $09
    inc bc                                        ; $4de7: $03
    ld a, l                                       ; $4de8: $7d
    add hl, bc                                    ; $4de9: $09
    inc bc                                        ; $4dea: $03
    sbc h                                         ; $4deb: $9c
    add hl, bc                                    ; $4dec: $09
    inc bc                                        ; $4ded: $03
    xor d                                         ; $4dee: $aa
    add hl, bc                                    ; $4def: $09
    inc bc                                        ; $4df0: $03
    or a                                          ; $4df1: $b7
    add hl, bc                                    ; $4df2: $09
    inc bc                                        ; $4df3: $03
    jp z, $0309                                   ; $4df4: $ca $09 $03

    db $f4                                        ; $4df7: $f4
    add hl, bc                                    ; $4df8: $09
    inc bc                                        ; $4df9: $03
    ld hl, $030a                                  ; $4dfa: $21 $0a $03
    daa                                           ; $4dfd: $27
    ld a, [bc]                                    ; $4dfe: $0a
    inc bc                                        ; $4dff: $03
    ld c, e                                       ; $4e00: $4b
    ld a, [bc]                                    ; $4e01: $0a
    inc bc                                        ; $4e02: $03
    ld [hl], l                                    ; $4e03: $75
    ld a, [bc]                                    ; $4e04: $0a
    inc bc                                        ; $4e05: $03
    and l                                         ; $4e06: $a5
    ld a, [bc]                                    ; $4e07: $0a
    inc bc                                        ; $4e08: $03
    sbc $0a                                       ; $4e09: $de $0a
    inc bc                                        ; $4e0b: $03
    dec bc                                        ; $4e0c: $0b
    dec bc                                        ; $4e0d: $0b
    inc bc                                        ; $4e0e: $03
    scf                                           ; $4e0f: $37
    dec bc                                        ; $4e10: $0b
    inc bc                                        ; $4e11: $03
    xor d                                         ; $4e12: $aa
    dec bc                                        ; $4e13: $0b
    inc bc                                        ; $4e14: $03
    and $0b                                       ; $4e15: $e6 $0b
    inc bc                                        ; $4e17: $03
    ld [bc], a                                    ; $4e18: $02
    inc c                                         ; $4e19: $0c
    inc bc                                        ; $4e1a: $03
    jr c, jr_047_4e29                             ; $4e1b: $38 $0c

    inc bc                                        ; $4e1d: $03
    ld c, d                                       ; $4e1e: $4a
    inc c                                         ; $4e1f: $0c
    inc bc                                        ; $4e20: $03
    ld h, e                                       ; $4e21: $63
    inc c                                         ; $4e22: $0c
    inc bc                                        ; $4e23: $03
    add l                                         ; $4e24: $85
    inc c                                         ; $4e25: $0c
    inc bc                                        ; $4e26: $03
    sbc [hl]                                      ; $4e27: $9e
    inc c                                         ; $4e28: $0c

jr_047_4e29:
    inc bc                                        ; $4e29: $03
    rst $00                                       ; $4e2a: $c7
    inc c                                         ; $4e2b: $0c
    inc bc                                        ; $4e2c: $03
    rst $20                                       ; $4e2d: $e7
    inc c                                         ; $4e2e: $0c
    inc bc                                        ; $4e2f: $03
    db $10                                        ; $4e30: $10
    dec c                                         ; $4e31: $0d
    inc bc                                        ; $4e32: $03
    ld l, $0d                                     ; $4e33: $2e $0d
    inc bc                                        ; $4e35: $03
    ld a, c                                       ; $4e36: $79
    dec c                                         ; $4e37: $0d
    inc bc                                        ; $4e38: $03
    adc a                                         ; $4e39: $8f
    dec c                                         ; $4e3a: $0d
    inc bc                                        ; $4e3b: $03
    sbc a                                         ; $4e3c: $9f
    dec c                                         ; $4e3d: $0d
    inc bc                                        ; $4e3e: $03
    rst $00                                       ; $4e3f: $c7
    dec c                                         ; $4e40: $0d
    inc bc                                        ; $4e41: $03
    jr jr_047_4e52                                ; $4e42: $18 $0e

    inc bc                                        ; $4e44: $03
    ld d, c                                       ; $4e45: $51
    ld c, $03                                     ; $4e46: $0e $03
    ld l, h                                       ; $4e48: $6c
    ld c, $03                                     ; $4e49: $0e $03
    ld [hl], a                                    ; $4e4b: $77
    ld c, $03                                     ; $4e4c: $0e $03
    ld a, l                                       ; $4e4e: $7d
    ld c, $03                                     ; $4e4f: $0e $03
    sub a                                         ; $4e51: $97

jr_047_4e52:
    ld c, $03                                     ; $4e52: $0e $03
    cp [hl]                                       ; $4e54: $be
    ld c, $03                                     ; $4e55: $0e $03
    ret                                           ; $4e57: $c9


    ld c, $03                                     ; $4e58: $0e $03
    ret c                                         ; $4e5a: $d8

    ld c, $03                                     ; $4e5b: $0e $03
    rst $28                                       ; $4e5d: $ef
    ld c, $03                                     ; $4e5e: $0e $03
    ld e, $0f                                     ; $4e60: $1e $0f
    inc bc                                        ; $4e62: $03
    ld [hl], $0f                                  ; $4e63: $36 $0f
    inc bc                                        ; $4e65: $03
    ld [hl], e                                    ; $4e66: $73
    rrca                                          ; $4e67: $0f
    inc bc                                        ; $4e68: $03
    sub e                                         ; $4e69: $93
    rrca                                          ; $4e6a: $0f
    inc bc                                        ; $4e6b: $03
    xor c                                         ; $4e6c: $a9
    rrca                                          ; $4e6d: $0f
    inc bc                                        ; $4e6e: $03
    pop bc                                        ; $4e6f: $c1
    rrca                                          ; $4e70: $0f
    inc bc                                        ; $4e71: $03
    sub $0f                                       ; $4e72: $d6 $0f
    inc bc                                        ; $4e74: $03
    xor $0f                                       ; $4e75: $ee $0f
    inc bc                                        ; $4e77: $03
    inc b                                         ; $4e78: $04
    db $10                                        ; $4e79: $10
    inc bc                                        ; $4e7a: $03
    dec d                                         ; $4e7b: $15
    db $10                                        ; $4e7c: $10
    inc bc                                        ; $4e7d: $03
    ld [hl], $10                                  ; $4e7e: $36 $10
    inc bc                                        ; $4e80: $03
    ld c, c                                       ; $4e81: $49
    db $10                                        ; $4e82: $10
    inc bc                                        ; $4e83: $03
    ld h, c                                       ; $4e84: $61
    db $10                                        ; $4e85: $10
    inc bc                                        ; $4e86: $03
    ld [hl], d                                    ; $4e87: $72
    db $10                                        ; $4e88: $10
    inc bc                                        ; $4e89: $03
    sub c                                         ; $4e8a: $91
    db $10                                        ; $4e8b: $10
    inc bc                                        ; $4e8c: $03
    and a                                         ; $4e8d: $a7
    db $10                                        ; $4e8e: $10
    inc bc                                        ; $4e8f: $03
    push bc                                       ; $4e90: $c5
    db $10                                        ; $4e91: $10
    inc bc                                        ; $4e92: $03
    db $e4                                        ; $4e93: $e4
    db $10                                        ; $4e94: $10
    inc bc                                        ; $4e95: $03
    nop                                           ; $4e96: $00
    ld de, $2703                                  ; $4e97: $11 $03 $27
    ld de, $4003                                  ; $4e9a: $11 $03 $40
    ld de, $6203                                  ; $4e9d: $11 $03 $62
    ld de, $8503                                  ; $4ea0: $11 $03 $85
    ld de, $a703                                  ; $4ea3: $11 $03 $a7
    ld de, $c303                                  ; $4ea6: $11 $03 $c3
    ld de, $e903                                  ; $4ea9: $11 $03 $e9
    ld de, $ff03                                  ; $4eac: $11 $03 $ff
    ld de, $1903                                  ; $4eaf: $11 $03 $19
    ld [de], a                                    ; $4eb2: $12
    inc bc                                        ; $4eb3: $03
    ld b, e                                       ; $4eb4: $43
    ld [de], a                                    ; $4eb5: $12
    inc bc                                        ; $4eb6: $03
    ld h, d                                       ; $4eb7: $62
    ld [de], a                                    ; $4eb8: $12
    inc bc                                        ; $4eb9: $03
    adc a                                         ; $4eba: $8f
    ld [de], a                                    ; $4ebb: $12
    inc bc                                        ; $4ebc: $03
    and d                                         ; $4ebd: $a2
    ld [de], a                                    ; $4ebe: $12
    inc bc                                        ; $4ebf: $03
    or l                                          ; $4ec0: $b5
    ld [de], a                                    ; $4ec1: $12
    inc bc                                        ; $4ec2: $03
    db $e3                                        ; $4ec3: $e3
    ld [de], a                                    ; $4ec4: $12
    inc bc                                        ; $4ec5: $03
    ld b, $13                                     ; $4ec6: $06 $13
    inc bc                                        ; $4ec8: $03
    ld [hl+], a                                   ; $4ec9: $22
    inc de                                        ; $4eca: $13
    inc bc                                        ; $4ecb: $03
    ld e, l                                       ; $4ecc: $5d
    inc de                                        ; $4ecd: $13
    inc bc                                        ; $4ece: $03
    add [hl]                                      ; $4ecf: $86
    inc de                                        ; $4ed0: $13
    inc bc                                        ; $4ed1: $03
    xor [hl]                                      ; $4ed2: $ae
    inc de                                        ; $4ed3: $13
    inc bc                                        ; $4ed4: $03
    sub $13                                       ; $4ed5: $d6 $13
    inc bc                                        ; $4ed7: $03
    rst $20                                       ; $4ed8: $e7
    inc de                                        ; $4ed9: $13
    inc bc                                        ; $4eda: $03
    add hl, bc                                    ; $4edb: $09
    inc d                                         ; $4edc: $14
    inc bc                                        ; $4edd: $03
    dec de                                        ; $4ede: $1b
    inc d                                         ; $4edf: $14
    inc bc                                        ; $4ee0: $03
    cpl                                           ; $4ee1: $2f
    inc d                                         ; $4ee2: $14
    inc bc                                        ; $4ee3: $03
    inc [hl]                                      ; $4ee4: $34
    inc d                                         ; $4ee5: $14
    inc bc                                        ; $4ee6: $03
    ld b, d                                       ; $4ee7: $42
    inc d                                         ; $4ee8: $14
    inc bc                                        ; $4ee9: $03
    ld d, b                                       ; $4eea: $50
    inc d                                         ; $4eeb: $14
    inc bc                                        ; $4eec: $03
    xor e                                         ; $4eed: $ab
    inc d                                         ; $4eee: $14
    inc bc                                        ; $4eef: $03
    rst $00                                       ; $4ef0: $c7
    inc d                                         ; $4ef1: $14
    inc bc                                        ; $4ef2: $03
    rst $20                                       ; $4ef3: $e7
    inc d                                         ; $4ef4: $14
    inc bc                                        ; $4ef5: $03
    add hl, bc                                    ; $4ef6: $09
    dec d                                         ; $4ef7: $15
    inc bc                                        ; $4ef8: $03
    inc a                                         ; $4ef9: $3c
    dec d                                         ; $4efa: $15
    inc bc                                        ; $4efb: $03
    ld e, h                                       ; $4efc: $5c
    dec d                                         ; $4efd: $15
    inc bc                                        ; $4efe: $03
    ld a, l                                       ; $4eff: $7d
    dec d                                         ; $4f00: $15
    inc bc                                        ; $4f01: $03
    add l                                         ; $4f02: $85
    dec d                                         ; $4f03: $15
    inc bc                                        ; $4f04: $03
    and [hl]                                      ; $4f05: $a6
    dec d                                         ; $4f06: $15
    inc bc                                        ; $4f07: $03
    call nz, $0315                                ; $4f08: $c4 $15 $03
    pop hl                                        ; $4f0b: $e1
    dec d                                         ; $4f0c: $15
    inc bc                                        ; $4f0d: $03
    rrca                                          ; $4f0e: $0f
    ld d, $03                                     ; $4f0f: $16 $03
    inc h                                         ; $4f11: $24
    ld d, $03                                     ; $4f12: $16 $03
    ld c, a                                       ; $4f14: $4f
    ld d, $03                                     ; $4f15: $16 $03
    ld h, b                                       ; $4f17: $60
    ld d, $03                                     ; $4f18: $16 $03
    add [hl]                                      ; $4f1a: $86
    ld d, $03                                     ; $4f1b: $16 $03
    and c                                         ; $4f1d: $a1
    ld d, $03                                     ; $4f1e: $16 $03
    db $e3                                        ; $4f20: $e3
    ld d, $03                                     ; $4f21: $16 $03
    ld c, $17                                     ; $4f23: $0e $17
    inc bc                                        ; $4f25: $03
    dec d                                         ; $4f26: $15
    rla                                           ; $4f27: $17
    inc bc                                        ; $4f28: $03
    jr nz, jr_047_4f42                            ; $4f29: $20 $17

    inc bc                                        ; $4f2b: $03
    ld b, h                                       ; $4f2c: $44
    rla                                           ; $4f2d: $17
    inc bc                                        ; $4f2e: $03
    ld d, b                                       ; $4f2f: $50
    rla                                           ; $4f30: $17
    inc bc                                        ; $4f31: $03
    ld e, d                                       ; $4f32: $5a
    rla                                           ; $4f33: $17
    inc bc                                        ; $4f34: $03
    add h                                         ; $4f35: $84
    rla                                           ; $4f36: $17
    inc bc                                        ; $4f37: $03
    cp l                                          ; $4f38: $bd
    rla                                           ; $4f39: $17
    inc bc                                        ; $4f3a: $03
    rl a                                          ; $4f3b: $cb $17
    inc bc                                        ; $4f3d: $03
    dec c                                         ; $4f3e: $0d
    jr jr_047_4f44                                ; $4f3f: $18 $03

    dec hl                                        ; $4f41: $2b

jr_047_4f42:
    jr jr_047_4f47                                ; $4f42: $18 $03

jr_047_4f44:
    ld e, [hl]                                    ; $4f44: $5e
    jr jr_047_4f4a                                ; $4f45: $18 $03

jr_047_4f47:
    ld l, b                                       ; $4f47: $68
    jr jr_047_4f4d                                ; $4f48: $18 $03

jr_047_4f4a:
    db $fd                                        ; $4f4a: $fd
    jr jr_047_4f50                                ; $4f4b: $18 $03

jr_047_4f4d:
    ld c, $19                                     ; $4f4d: $0e $19
    inc bc                                        ; $4f4f: $03

jr_047_4f50:
    ld b, d                                       ; $4f50: $42
    add hl, de                                    ; $4f51: $19
    inc bc                                        ; $4f52: $03
    sub a                                         ; $4f53: $97
    add hl, de                                    ; $4f54: $19
    inc bc                                        ; $4f55: $03
    cp b                                          ; $4f56: $b8
    add hl, de                                    ; $4f57: $19
    inc bc                                        ; $4f58: $03
    pop de                                        ; $4f59: $d1
    add hl, de                                    ; $4f5a: $19
    inc bc                                        ; $4f5b: $03
    or $19                                        ; $4f5c: $f6 $19
    inc bc                                        ; $4f5e: $03
    inc e                                         ; $4f5f: $1c
    ld a, [de]                                    ; $4f60: $1a
    inc bc                                        ; $4f61: $03
    ld e, b                                       ; $4f62: $58
    ld a, [de]                                    ; $4f63: $1a
    inc bc                                        ; $4f64: $03
    sub c                                         ; $4f65: $91
    ld a, [de]                                    ; $4f66: $1a
    inc bc                                        ; $4f67: $03
    xor d                                         ; $4f68: $aa
    ld a, [de]                                    ; $4f69: $1a
    inc bc                                        ; $4f6a: $03
    sbc $1a                                       ; $4f6b: $de $1a
    inc bc                                        ; $4f6d: $03
    or $1a                                        ; $4f6e: $f6 $1a
    inc bc                                        ; $4f70: $03
    inc d                                         ; $4f71: $14
    dec de                                        ; $4f72: $1b
    inc bc                                        ; $4f73: $03
    ld h, a                                       ; $4f74: $67
    dec de                                        ; $4f75: $1b
    inc bc                                        ; $4f76: $03
    and b                                         ; $4f77: $a0
    dec de                                        ; $4f78: $1b
    inc bc                                        ; $4f79: $03
    or l                                          ; $4f7a: $b5
    dec de                                        ; $4f7b: $1b
    inc bc                                        ; $4f7c: $03
    ret nc                                        ; $4f7d: $d0

    dec de                                        ; $4f7e: $1b
    inc bc                                        ; $4f7f: $03
    db $eb                                        ; $4f80: $eb
    dec de                                        ; $4f81: $1b
    inc bc                                        ; $4f82: $03
    ldh a, [rNR31]                                ; $4f83: $f0 $1b
    inc bc                                        ; $4f85: $03
    rlca                                          ; $4f86: $07
    inc e                                         ; $4f87: $1c
    inc bc                                        ; $4f88: $03
    dec l                                         ; $4f89: $2d
    inc e                                         ; $4f8a: $1c
    inc bc                                        ; $4f8b: $03
    ld l, $1d                                     ; $4f8c: $2e $1d
    inc bc                                        ; $4f8e: $03
    ld [hl], $1d                                  ; $4f8f: $36 $1d
    inc bc                                        ; $4f91: $03
    ld b, h                                       ; $4f92: $44
    dec e                                         ; $4f93: $1d
    inc bc                                        ; $4f94: $03
    ld e, c                                       ; $4f95: $59
    dec e                                         ; $4f96: $1d
    inc bc                                        ; $4f97: $03
    sub h                                         ; $4f98: $94
    dec e                                         ; $4f99: $1d
    inc bc                                        ; $4f9a: $03
    or c                                          ; $4f9b: $b1
    dec e                                         ; $4f9c: $1d
    inc bc                                        ; $4f9d: $03
    xor $1d                                       ; $4f9e: $ee $1d
    inc bc                                        ; $4fa0: $03
    inc d                                         ; $4fa1: $14
    ld e, $03                                     ; $4fa2: $1e $03
    ld c, b                                       ; $4fa4: $48
    ld e, $03                                     ; $4fa5: $1e $03
    ld d, e                                       ; $4fa7: $53
    ld e, $03                                     ; $4fa8: $1e $03
    ld e, l                                       ; $4faa: $5d
    ld e, $03                                     ; $4fab: $1e $03
    ld [hl], d                                    ; $4fad: $72
    ld e, $03                                     ; $4fae: $1e $03
    rst $28                                       ; $4fb0: $ef
    ld e, $03                                     ; $4fb1: $1e $03
    ld [$031f], sp                                ; $4fb3: $08 $1f $03
    ld [hl], h                                    ; $4fb6: $74
    rra                                           ; $4fb7: $1f
    inc bc                                        ; $4fb8: $03
    jp nz, $031f                                  ; $4fb9: $c2 $1f $03

    ld h, $20                                     ; $4fbc: $26 $20
    inc bc                                        ; $4fbe: $03
    adc e                                         ; $4fbf: $8b
    jr nz, jr_047_4fc5                            ; $4fc0: $20 $03

    ldh a, [rNR41]                                ; $4fc2: $f0 $20
    inc bc                                        ; $4fc4: $03

jr_047_4fc5:
    inc e                                         ; $4fc5: $1c
    ld hl, $5303                                  ; $4fc6: $21 $03 $53
    ld hl, $7f03                                  ; $4fc9: $21 $03 $7f
    ld hl, $da03                                  ; $4fcc: $21 $03 $da
    ld hl, $e603                                  ; $4fcf: $21 $03 $e6
    ld hl, $ec03                                  ; $4fd2: $21 $03 $ec
    ld hl, $0203                                  ; $4fd5: $21 $03 $02
    ld [hl+], a                                   ; $4fd8: $22
    inc bc                                        ; $4fd9: $03
    daa                                           ; $4fda: $27
    ld [hl+], a                                   ; $4fdb: $22
    inc bc                                        ; $4fdc: $03
    ld a, [hl-]                                   ; $4fdd: $3a
    ld [hl+], a                                   ; $4fde: $22
    inc bc                                        ; $4fdf: $03
    ld e, b                                       ; $4fe0: $58
    ld [hl+], a                                   ; $4fe1: $22
    inc bc                                        ; $4fe2: $03
    ld l, b                                       ; $4fe3: $68
    ld [hl+], a                                   ; $4fe4: $22
    inc bc                                        ; $4fe5: $03
    ld a, b                                       ; $4fe6: $78
    ld [hl+], a                                   ; $4fe7: $22
    inc bc                                        ; $4fe8: $03
    adc b                                         ; $4fe9: $88
    ld [hl+], a                                   ; $4fea: $22
    inc bc                                        ; $4feb: $03
    sbc h                                         ; $4fec: $9c
    ld [hl+], a                                   ; $4fed: $22
    inc bc                                        ; $4fee: $03
    cp d                                          ; $4fef: $ba
    ld [hl+], a                                   ; $4ff0: $22
    inc bc                                        ; $4ff1: $03
    sla d                                         ; $4ff2: $cb $22
    inc bc                                        ; $4ff4: $03
    and $22                                       ; $4ff5: $e6 $22
    inc bc                                        ; $4ff7: $03
    ldh a, [rNR43]                                ; $4ff8: $f0 $22
    inc bc                                        ; $4ffa: $03
    rla                                           ; $4ffb: $17
    inc hl                                        ; $4ffc: $23
    inc bc                                        ; $4ffd: $03
    dec [hl]                                      ; $4ffe: $35
    inc hl                                        ; $4fff: $23
    inc bc                                        ; $5000: $03
    ld d, c                                       ; $5001: $51
    inc hl                                        ; $5002: $23
    inc bc                                        ; $5003: $03
    adc c                                         ; $5004: $89
    inc hl                                        ; $5005: $23
    inc bc                                        ; $5006: $03
    xor c                                         ; $5007: $a9
    inc hl                                        ; $5008: $23
    inc bc                                        ; $5009: $03
    or $23                                        ; $500a: $f6 $23
    inc bc                                        ; $500c: $03
    ld e, $24                                     ; $500d: $1e $24
    inc bc                                        ; $500f: $03
    ld c, l                                       ; $5010: $4d
    inc h                                         ; $5011: $24
    inc bc                                        ; $5012: $03
    ld [hl], b                                    ; $5013: $70
    inc h                                         ; $5014: $24
    inc bc                                        ; $5015: $03
    sbc b                                         ; $5016: $98
    inc h                                         ; $5017: $24
    inc bc                                        ; $5018: $03
    or d                                          ; $5019: $b2
    inc h                                         ; $501a: $24
    inc bc                                        ; $501b: $03
    cp h                                          ; $501c: $bc
    inc h                                         ; $501d: $24
    inc bc                                        ; $501e: $03
    rst $10                                       ; $501f: $d7
    inc h                                         ; $5020: $24
    inc bc                                        ; $5021: $03
    rst $18                                       ; $5022: $df
    inc h                                         ; $5023: $24
    inc bc                                        ; $5024: $03
    ei                                            ; $5025: $fb
    inc h                                         ; $5026: $24
    inc bc                                        ; $5027: $03
    dec c                                         ; $5028: $0d
    dec h                                         ; $5029: $25
    inc bc                                        ; $502a: $03
    ld hl, $0325                                  ; $502b: $21 $25 $03
    jr nc, jr_047_5055                            ; $502e: $30 $25

    inc bc                                        ; $5030: $03
    ld b, b                                       ; $5031: $40
    dec h                                         ; $5032: $25
    inc bc                                        ; $5033: $03
    ld c, b                                       ; $5034: $48
    dec h                                         ; $5035: $25
    inc bc                                        ; $5036: $03
    ld d, a                                       ; $5037: $57
    dec h                                         ; $5038: $25
    inc bc                                        ; $5039: $03
    ld h, l                                       ; $503a: $65
    dec h                                         ; $503b: $25
    inc bc                                        ; $503c: $03
    ld l, h                                       ; $503d: $6c
    dec h                                         ; $503e: $25
    inc bc                                        ; $503f: $03
    ld a, l                                       ; $5040: $7d
    dec h                                         ; $5041: $25
    inc bc                                        ; $5042: $03
    add l                                         ; $5043: $85
    dec h                                         ; $5044: $25
    inc bc                                        ; $5045: $03
    sub c                                         ; $5046: $91
    dec h                                         ; $5047: $25
    inc bc                                        ; $5048: $03
    sbc d                                         ; $5049: $9a
    dec h                                         ; $504a: $25
    inc bc                                        ; $504b: $03
    sbc a                                         ; $504c: $9f
    dec h                                         ; $504d: $25
    inc bc                                        ; $504e: $03
    and l                                         ; $504f: $a5
    dec h                                         ; $5050: $25
    inc bc                                        ; $5051: $03
    xor a                                         ; $5052: $af
    dec h                                         ; $5053: $25
    inc bc                                        ; $5054: $03

jr_047_5055:
    or l                                          ; $5055: $b5
    dec h                                         ; $5056: $25
    inc bc                                        ; $5057: $03
    cp c                                          ; $5058: $b9
    dec h                                         ; $5059: $25
    inc bc                                        ; $505a: $03
    cp l                                          ; $505b: $bd
    dec h                                         ; $505c: $25
    inc bc                                        ; $505d: $03
    jp Jump_000_0325                              ; $505e: $c3 $25 $03


    ret z                                         ; $5061: $c8

    dec h                                         ; $5062: $25
    inc bc                                        ; $5063: $03
    adc $25                                       ; $5064: $ce $25
    inc bc                                        ; $5066: $03
    push de                                       ; $5067: $d5
    dec h                                         ; $5068: $25
    inc bc                                        ; $5069: $03
    call c, Call_000_0325                         ; $506a: $dc $25 $03
    db $e4                                        ; $506d: $e4
    dec h                                         ; $506e: $25
    inc bc                                        ; $506f: $03
    ld a, [c]                                     ; $5070: $f2
    dec h                                         ; $5071: $25
    inc bc                                        ; $5072: $03
    ld [bc], a                                    ; $5073: $02
    ld h, $03                                     ; $5074: $26 $03
    ld [de], a                                    ; $5076: $12
    ld h, $03                                     ; $5077: $26 $03
    ld [hl+], a                                   ; $5079: $22
    ld h, $03                                     ; $507a: $26 $03
    cpl                                           ; $507c: $2f
    ld h, $03                                     ; $507d: $26 $03
    ld a, $26                                     ; $507f: $3e $26
    inc bc                                        ; $5081: $03
    ld c, l                                       ; $5082: $4d
    ld h, $03                                     ; $5083: $26 $03
    ld e, c                                       ; $5085: $59
    ld h, $03                                     ; $5086: $26 $03
    ld h, b                                       ; $5088: $60
    ld h, $03                                     ; $5089: $26 $03
    ld l, [hl]                                    ; $508b: $6e
    ld h, $03                                     ; $508c: $26 $03
    ld a, b                                       ; $508e: $78
    ld h, $03                                     ; $508f: $26 $03
    adc b                                         ; $5091: $88
    ld h, $03                                     ; $5092: $26 $03
    adc a                                         ; $5094: $8f
    ld h, $03                                     ; $5095: $26 $03
    sbc e                                         ; $5097: $9b
    ld h, $03                                     ; $5098: $26 $03
    and [hl]                                      ; $509a: $a6
    ld h, $03                                     ; $509b: $26 $03
    or d                                          ; $509d: $b2
    ld h, $03                                     ; $509e: $26 $03
    cp d                                          ; $50a0: $ba
    ld h, $03                                     ; $50a1: $26 $03
    ret z                                         ; $50a3: $c8

    ld h, $03                                     ; $50a4: $26 $03
    rst $10                                       ; $50a6: $d7
    ld h, $03                                     ; $50a7: $26 $03
    ldh [rNR52], a                                ; $50a9: $e0 $26
    inc bc                                        ; $50ab: $03
    db $ed                                        ; $50ac: $ed
    ld h, $03                                     ; $50ad: $26 $03
    push af                                       ; $50af: $f5
    ld h, $03                                     ; $50b0: $26 $03
    db $fc                                        ; $50b2: $fc
    ld h, $03                                     ; $50b3: $26 $03
    add hl, bc                                    ; $50b5: $09
    daa                                           ; $50b6: $27
    inc bc                                        ; $50b7: $03
    ld [de], a                                    ; $50b8: $12
    daa                                           ; $50b9: $27
    inc bc                                        ; $50ba: $03
    ld a, [de]                                    ; $50bb: $1a
    daa                                           ; $50bc: $27
    inc bc                                        ; $50bd: $03
    inc hl                                        ; $50be: $23
    daa                                           ; $50bf: $27
    inc bc                                        ; $50c0: $03
    dec hl                                        ; $50c1: $2b
    daa                                           ; $50c2: $27
    inc bc                                        ; $50c3: $03
    ld [hl], $27                                  ; $50c4: $36 $27
    inc bc                                        ; $50c6: $03
    ccf                                           ; $50c7: $3f
    daa                                           ; $50c8: $27
    inc bc                                        ; $50c9: $03
    ld c, h                                       ; $50ca: $4c
    daa                                           ; $50cb: $27
    inc bc                                        ; $50cc: $03
    ld d, [hl]                                    ; $50cd: $56
    daa                                           ; $50ce: $27
    inc bc                                        ; $50cf: $03
    ld h, l                                       ; $50d0: $65
    daa                                           ; $50d1: $27
    inc bc                                        ; $50d2: $03
    ld l, [hl]                                    ; $50d3: $6e
    daa                                           ; $50d4: $27
    inc bc                                        ; $50d5: $03
    ld a, c                                       ; $50d6: $79
    daa                                           ; $50d7: $27
    inc bc                                        ; $50d8: $03
    adc c                                         ; $50d9: $89
    daa                                           ; $50da: $27
    inc bc                                        ; $50db: $03
    sub b                                         ; $50dc: $90
    daa                                           ; $50dd: $27
    inc bc                                        ; $50de: $03
    sbc c                                         ; $50df: $99
    daa                                           ; $50e0: $27
    inc bc                                        ; $50e1: $03
    xor b                                         ; $50e2: $a8
    daa                                           ; $50e3: $27
    inc bc                                        ; $50e4: $03
    or d                                          ; $50e5: $b2
    daa                                           ; $50e6: $27
    inc bc                                        ; $50e7: $03
    cp d                                          ; $50e8: $ba
    daa                                           ; $50e9: $27
    inc bc                                        ; $50ea: $03
    pop bc                                        ; $50eb: $c1
    daa                                           ; $50ec: $27
    inc bc                                        ; $50ed: $03
    rst $00                                       ; $50ee: $c7
    daa                                           ; $50ef: $27
    inc bc                                        ; $50f0: $03
    pop de                                        ; $50f1: $d1

Jump_047_50f2:
    daa                                           ; $50f2: $27
    inc bc                                        ; $50f3: $03
    db $dd                                        ; $50f4: $dd
    daa                                           ; $50f5: $27
    inc bc                                        ; $50f6: $03
    add sp, $27                                   ; $50f7: $e8 $27
    inc bc                                        ; $50f9: $03
    pop af                                        ; $50fa: $f1
    daa                                           ; $50fb: $27
    inc bc                                        ; $50fc: $03
    ld hl, sp+$27                                 ; $50fd: $f8 $27
    inc bc                                        ; $50ff: $03
    inc b                                         ; $5100: $04
    jr z, jr_047_5106                             ; $5101: $28 $03

    inc de                                        ; $5103: $13
    jr z, jr_047_5109                             ; $5104: $28 $03

jr_047_5106:
    ld e, $28                                     ; $5106: $1e $28
    inc bc                                        ; $5108: $03

jr_047_5109:
    add hl, hl                                    ; $5109: $29
    jr z, jr_047_510f                             ; $510a: $28 $03

    ld sp, $0328                                  ; $510c: $31 $28 $03

jr_047_510f:
    ld a, [hl-]                                   ; $510f: $3a
    jr z, jr_047_5115                             ; $5110: $28 $03

    ld b, l                                       ; $5112: $45
    jr z, jr_047_5118                             ; $5113: $28 $03

jr_047_5115:
    ld c, [hl]                                    ; $5115: $4e
    jr z, jr_047_511b                             ; $5116: $28 $03

jr_047_5118:
    ld d, a                                       ; $5118: $57
    jr z, jr_047_511e                             ; $5119: $28 $03

jr_047_511b:
    ld h, e                                       ; $511b: $63
    jr z, jr_047_5121                             ; $511c: $28 $03

jr_047_511e:
    ld l, e                                       ; $511e: $6b
    jr z, jr_047_5124                             ; $511f: $28 $03

jr_047_5121:
    ld [hl], c                                    ; $5121: $71
    jr z, jr_047_5127                             ; $5122: $28 $03

jr_047_5124:
    ld a, h                                       ; $5124: $7c
    jr z, jr_047_512a                             ; $5125: $28 $03

jr_047_5127:
    adc b                                         ; $5127: $88
    jr z, jr_047_512d                             ; $5128: $28 $03

jr_047_512a:
    sub c                                         ; $512a: $91
    jr z, jr_047_5130                             ; $512b: $28 $03

jr_047_512d:
    sbc d                                         ; $512d: $9a
    jr z, jr_047_5133                             ; $512e: $28 $03

jr_047_5130:
    and e                                         ; $5130: $a3
    jr z, jr_047_5136                             ; $5131: $28 $03

jr_047_5133:
    xor [hl]                                      ; $5133: $ae
    jr z, jr_047_5139                             ; $5134: $28 $03

jr_047_5136:
    cp b                                          ; $5136: $b8
    jr z, jr_047_513c                             ; $5137: $28 $03

jr_047_5139:
    ret nz                                        ; $5139: $c0

    jr z, jr_047_513f                             ; $513a: $28 $03

jr_047_513c:
    call $0328                                    ; $513c: $cd $28 $03

jr_047_513f:
    rst $10                                       ; $513f: $d7
    jr z, jr_047_5145                             ; $5140: $28 $03

    call c, $0328                                 ; $5142: $dc $28 $03

jr_047_5145:
    push hl                                       ; $5145: $e5
    jr z, jr_047_514b                             ; $5146: $28 $03

    rst $28                                       ; $5148: $ef
    jr z, jr_047_514e                             ; $5149: $28 $03

jr_047_514b:
    ei                                            ; $514b: $fb
    jr z, jr_047_5151                             ; $514c: $28 $03

jr_047_514e:
    dec b                                         ; $514e: $05
    add hl, hl                                    ; $514f: $29
    inc bc                                        ; $5150: $03

jr_047_5151:
    inc c                                         ; $5151: $0c
    add hl, hl                                    ; $5152: $29
    inc bc                                        ; $5153: $03
    add hl, de                                    ; $5154: $19
    add hl, hl                                    ; $5155: $29
    inc bc                                        ; $5156: $03
    ld [hl+], a                                   ; $5157: $22
    add hl, hl                                    ; $5158: $29
    inc bc                                        ; $5159: $03
    dec hl                                        ; $515a: $2b
    add hl, hl                                    ; $515b: $29
    inc bc                                        ; $515c: $03
    ld a, [hl-]                                   ; $515d: $3a
    add hl, hl                                    ; $515e: $29
    inc bc                                        ; $515f: $03
    ld b, e                                       ; $5160: $43
    add hl, hl                                    ; $5161: $29
    inc bc                                        ; $5162: $03
    ld c, c                                       ; $5163: $49
    add hl, hl                                    ; $5164: $29
    inc bc                                        ; $5165: $03
    ld e, b                                       ; $5166: $58
    add hl, hl                                    ; $5167: $29
    inc bc                                        ; $5168: $03
    ld h, c                                       ; $5169: $61
    add hl, hl                                    ; $516a: $29
    inc bc                                        ; $516b: $03
    ld l, h                                       ; $516c: $6c
    add hl, hl                                    ; $516d: $29
    inc bc                                        ; $516e: $03
    halt                                          ; $516f: $76
    add hl, hl                                    ; $5170: $29
    inc bc                                        ; $5171: $03
    ld a, l                                       ; $5172: $7d
    add hl, hl                                    ; $5173: $29
    inc bc                                        ; $5174: $03
    adc b                                         ; $5175: $88
    add hl, hl                                    ; $5176: $29
    inc bc                                        ; $5177: $03
    sub c                                         ; $5178: $91
    add hl, hl                                    ; $5179: $29
    inc bc                                        ; $517a: $03
    sbc h                                         ; $517b: $9c
    add hl, hl                                    ; $517c: $29
    inc bc                                        ; $517d: $03
    and h                                         ; $517e: $a4
    add hl, hl                                    ; $517f: $29
    inc bc                                        ; $5180: $03
    xor b                                         ; $5181: $a8
    add hl, hl                                    ; $5182: $29
    inc bc                                        ; $5183: $03
    xor l                                         ; $5184: $ad
    add hl, hl                                    ; $5185: $29
    inc bc                                        ; $5186: $03
    or c                                          ; $5187: $b1
    add hl, hl                                    ; $5188: $29
    inc bc                                        ; $5189: $03
    cp e                                          ; $518a: $bb
    add hl, hl                                    ; $518b: $29
    inc bc                                        ; $518c: $03
    push bc                                       ; $518d: $c5
    add hl, hl                                    ; $518e: $29
    inc bc                                        ; $518f: $03
    rst $08                                       ; $5190: $cf
    add hl, hl                                    ; $5191: $29
    inc bc                                        ; $5192: $03
    call c, $0329                                 ; $5193: $dc $29 $03
    rst $28                                       ; $5196: $ef
    add hl, hl                                    ; $5197: $29
    inc bc                                        ; $5198: $03
    ei                                            ; $5199: $fb
    add hl, hl                                    ; $519a: $29
    inc bc                                        ; $519b: $03
    add hl, bc                                    ; $519c: $09
    ld a, [hl+]                                   ; $519d: $2a
    inc bc                                        ; $519e: $03
    ld [de], a                                    ; $519f: $12
    ld a, [hl+]                                   ; $51a0: $2a
    inc bc                                        ; $51a1: $03
    inc e                                         ; $51a2: $1c
    ld a, [hl+]                                   ; $51a3: $2a
    inc bc                                        ; $51a4: $03
    daa                                           ; $51a5: $27
    ld a, [hl+]                                   ; $51a6: $2a
    inc bc                                        ; $51a7: $03
    jr nc, jr_047_51d4                            ; $51a8: $30 $2a

    inc bc                                        ; $51aa: $03
    ld b, c                                       ; $51ab: $41
    ld a, [hl+]                                   ; $51ac: $2a
    inc bc                                        ; $51ad: $03
    ld b, [hl]                                    ; $51ae: $46
    ld a, [hl+]                                   ; $51af: $2a
    inc bc                                        ; $51b0: $03
    ld d, e                                       ; $51b1: $53
    ld a, [hl+]                                   ; $51b2: $2a
    inc bc                                        ; $51b3: $03
    ld e, c                                       ; $51b4: $59
    ld a, [hl+]                                   ; $51b5: $2a
    inc bc                                        ; $51b6: $03
    ld h, a                                       ; $51b7: $67
    ld a, [hl+]                                   ; $51b8: $2a
    inc bc                                        ; $51b9: $03
    ld [hl], a                                    ; $51ba: $77
    ld a, [hl+]                                   ; $51bb: $2a
    inc bc                                        ; $51bc: $03
    add c                                         ; $51bd: $81
    ld a, [hl+]                                   ; $51be: $2a
    inc bc                                        ; $51bf: $03
    sub b                                         ; $51c0: $90
    ld a, [hl+]                                   ; $51c1: $2a
    inc bc                                        ; $51c2: $03
    sbc c                                         ; $51c3: $99
    ld a, [hl+]                                   ; $51c4: $2a
    inc bc                                        ; $51c5: $03
    xor b                                         ; $51c6: $a8
    ld a, [hl+]                                   ; $51c7: $2a
    inc bc                                        ; $51c8: $03
    xor l                                         ; $51c9: $ad
    ld a, [hl+]                                   ; $51ca: $2a
    inc bc                                        ; $51cb: $03
    cp b                                          ; $51cc: $b8
    ld a, [hl+]                                   ; $51cd: $2a
    inc bc                                        ; $51ce: $03
    jp z, Jump_000_032a                           ; $51cf: $ca $2a $03

    sbc $2a                                       ; $51d2: $de $2a

jr_047_51d4:
    inc bc                                        ; $51d4: $03
    db $f4                                        ; $51d5: $f4
    ld a, [hl+]                                   ; $51d6: $2a
    inc bc                                        ; $51d7: $03
    ld a, [bc]                                    ; $51d8: $0a
    dec hl                                        ; $51d9: $2b
    inc bc                                        ; $51da: $03
    inc h                                         ; $51db: $24
    dec hl                                        ; $51dc: $2b
    inc bc                                        ; $51dd: $03
    ld b, e                                       ; $51de: $43
    dec hl                                        ; $51df: $2b
    inc bc                                        ; $51e0: $03
    ld e, a                                       ; $51e1: $5f
    dec hl                                        ; $51e2: $2b
    inc bc                                        ; $51e3: $03
    ld [hl], a                                    ; $51e4: $77
    dec hl                                        ; $51e5: $2b
    inc bc                                        ; $51e6: $03
    adc h                                         ; $51e7: $8c
    dec hl                                        ; $51e8: $2b
    inc bc                                        ; $51e9: $03
    and c                                         ; $51ea: $a1
    dec hl                                        ; $51eb: $2b
    inc bc                                        ; $51ec: $03
    and h                                         ; $51ed: $a4
    dec hl                                        ; $51ee: $2b
    inc bc                                        ; $51ef: $03
    and a                                         ; $51f0: $a7
    dec hl                                        ; $51f1: $2b
    inc bc                                        ; $51f2: $03
    xor [hl]                                      ; $51f3: $ae
    dec hl                                        ; $51f4: $2b
    inc bc                                        ; $51f5: $03
    or c                                          ; $51f6: $b1
    dec hl                                        ; $51f7: $2b
    inc bc                                        ; $51f8: $03
    or [hl]                                       ; $51f9: $b6
    dec hl                                        ; $51fa: $2b
    inc bc                                        ; $51fb: $03
    cp h                                          ; $51fc: $bc
    dec hl                                        ; $51fd: $2b
    inc bc                                        ; $51fe: $03
    jp nz, Jump_000_032b                          ; $51ff: $c2 $2b $03

    rst $08                                       ; $5202: $cf
    dec hl                                        ; $5203: $2b
    inc bc                                        ; $5204: $03
    db $e3                                        ; $5205: $e3
    dec hl                                        ; $5206: $2b
    inc bc                                        ; $5207: $03
    db $fd                                        ; $5208: $fd
    dec hl                                        ; $5209: $2b
    inc bc                                        ; $520a: $03
    inc c                                         ; $520b: $0c
    inc l                                         ; $520c: $2c
    inc bc                                        ; $520d: $03
    ld [hl+], a                                   ; $520e: $22
    inc l                                         ; $520f: $2c
    inc bc                                        ; $5210: $03
    ld [hl-], a                                   ; $5211: $32
    inc l                                         ; $5212: $2c
    inc bc                                        ; $5213: $03
    ld b, c                                       ; $5214: $41
    inc l                                         ; $5215: $2c
    inc bc                                        ; $5216: $03
    ld d, d                                       ; $5217: $52
    inc l                                         ; $5218: $2c
    inc bc                                        ; $5219: $03
    ld e, [hl]                                    ; $521a: $5e
    inc l                                         ; $521b: $2c
    inc bc                                        ; $521c: $03
    ld [hl], d                                    ; $521d: $72
    inc l                                         ; $521e: $2c
    inc bc                                        ; $521f: $03
    add e                                         ; $5220: $83
    inc l                                         ; $5221: $2c
    inc bc                                        ; $5222: $03
    sbc h                                         ; $5223: $9c
    inc l                                         ; $5224: $2c
    inc bc                                        ; $5225: $03
    xor c                                         ; $5226: $a9
    inc l                                         ; $5227: $2c
    inc bc                                        ; $5228: $03
    jp nz, $032c                                  ; $5229: $c2 $2c $03

    call c, $032c                                 ; $522c: $dc $2c $03
    ldh a, [$2c]                                  ; $522f: $f0 $2c
    inc bc                                        ; $5231: $03
    ld [bc], a                                    ; $5232: $02
    dec l                                         ; $5233: $2d
    inc bc                                        ; $5234: $03
    ld d, $2d                                     ; $5235: $16 $2d
    inc bc                                        ; $5237: $03
    ld hl, $032d                                  ; $5238: $21 $2d $03
    ld [hl-], a                                   ; $523b: $32
    dec l                                         ; $523c: $2d
    inc bc                                        ; $523d: $03
    ld b, h                                       ; $523e: $44
    dec l                                         ; $523f: $2d
    inc bc                                        ; $5240: $03
    ld e, a                                       ; $5241: $5f
    dec l                                         ; $5242: $2d
    inc bc                                        ; $5243: $03
    ld a, a                                       ; $5244: $7f
    dec l                                         ; $5245: $2d
    inc bc                                        ; $5246: $03
    adc a                                         ; $5247: $8f
    dec l                                         ; $5248: $2d
    inc bc                                        ; $5249: $03
    xor b                                         ; $524a: $a8
    dec l                                         ; $524b: $2d
    inc bc                                        ; $524c: $03
    cp e                                          ; $524d: $bb
    dec l                                         ; $524e: $2d
    inc bc                                        ; $524f: $03
    rst $00                                       ; $5250: $c7
    dec l                                         ; $5251: $2d
    inc bc                                        ; $5252: $03
    db $db                                        ; $5253: $db
    dec l                                         ; $5254: $2d
    inc bc                                        ; $5255: $03
    ld [$032d], a                                 ; $5256: $ea $2d $03
    ld [$032e], sp                                ; $5259: $08 $2e $03
    inc de                                        ; $525c: $13
    ld l, $03                                     ; $525d: $2e $03
    inc l                                         ; $525f: $2c
    ld l, $03                                     ; $5260: $2e $03
    ld b, l                                       ; $5262: $45
    ld l, $03                                     ; $5263: $2e $03
    ld h, b                                       ; $5265: $60
    ld l, $03                                     ; $5266: $2e $03
    ld [hl], a                                    ; $5268: $77
    ld l, $03                                     ; $5269: $2e $03
    adc [hl]                                      ; $526b: $8e
    ld l, $03                                     ; $526c: $2e $03
    sbc e                                         ; $526e: $9b
    ld l, $03                                     ; $526f: $2e $03
    xor a                                         ; $5271: $af
    ld l, $03                                     ; $5272: $2e $03
    cp e                                          ; $5274: $bb
    ld l, $03                                     ; $5275: $2e $03
    reti                                          ; $5277: $d9


    ld l, $03                                     ; $5278: $2e $03
    ld [c], a                                     ; $527a: $e2
    ld l, $03                                     ; $527b: $2e $03
    db $fc                                        ; $527d: $fc
    ld l, $03                                     ; $527e: $2e $03
    jr jr_047_52b1                                ; $5280: $18 $2f

    inc bc                                        ; $5282: $03
    add hl, hl                                    ; $5283: $29
    cpl                                           ; $5284: $2f
    inc bc                                        ; $5285: $03
    ld b, [hl]                                    ; $5286: $46
    cpl                                           ; $5287: $2f
    inc bc                                        ; $5288: $03
    ld e, b                                       ; $5289: $58
    cpl                                           ; $528a: $2f
    inc bc                                        ; $528b: $03
    ld l, l                                       ; $528c: $6d
    cpl                                           ; $528d: $2f
    inc bc                                        ; $528e: $03
    add d                                         ; $528f: $82
    cpl                                           ; $5290: $2f
    inc bc                                        ; $5291: $03
    adc a                                         ; $5292: $8f
    cpl                                           ; $5293: $2f
    inc bc                                        ; $5294: $03
    xor e                                         ; $5295: $ab
    cpl                                           ; $5296: $2f
    inc bc                                        ; $5297: $03
    or [hl]                                       ; $5298: $b6
    cpl                                           ; $5299: $2f
    inc bc                                        ; $529a: $03
    call $032f                                    ; $529b: $cd $2f $03
    push de                                       ; $529e: $d5
    cpl                                           ; $529f: $2f
    inc bc                                        ; $52a0: $03
    pop hl                                        ; $52a1: $e1
    cpl                                           ; $52a2: $2f
    inc bc                                        ; $52a3: $03
    or $2f                                        ; $52a4: $f6 $2f
    inc bc                                        ; $52a6: $03
    dec d                                         ; $52a7: $15
    jr nc, jr_047_52ad                            ; $52a8: $30 $03

    ld hl, $0330                                  ; $52aa: $21 $30 $03

jr_047_52ad:
    scf                                           ; $52ad: $37
    jr nc, jr_047_52b3                            ; $52ae: $30 $03

    ld b, e                                       ; $52b0: $43

jr_047_52b1:
    jr nc, jr_047_52b6                            ; $52b1: $30 $03

jr_047_52b3:
    ld d, [hl]                                    ; $52b3: $56
    jr nc, jr_047_52b9                            ; $52b4: $30 $03

jr_047_52b6:
    ld h, [hl]                                    ; $52b6: $66
    jr nc, jr_047_52bc                            ; $52b7: $30 $03

jr_047_52b9:
    ld a, l                                       ; $52b9: $7d
    jr nc, jr_047_52bf                            ; $52ba: $30 $03

jr_047_52bc:
    add l                                         ; $52bc: $85
    jr nc, jr_047_52c2                            ; $52bd: $30 $03

jr_047_52bf:
    sub c                                         ; $52bf: $91
    jr nc, jr_047_52c5                            ; $52c0: $30 $03

jr_047_52c2:
    or b                                          ; $52c2: $b0
    jr nc, jr_047_52c8                            ; $52c3: $30 $03

jr_047_52c5:
    ret z                                         ; $52c5: $c8

    jr nc, jr_047_52cb                            ; $52c6: $30 $03

jr_047_52c8:
    call nc, $0330                                ; $52c8: $d4 $30 $03

jr_047_52cb:
    ld [$0330], a                                 ; $52cb: $ea $30 $03
    or $30                                        ; $52ce: $f6 $30
    inc bc                                        ; $52d0: $03
    rla                                           ; $52d1: $17
    ld sp, $5903                                  ; $52d2: $31 $03 $59
    ld sp, $8803                                  ; $52d5: $31 $03 $88
    ld sp, $b603                                  ; $52d8: $31 $03 $b6
    ld sp, $fe03                                  ; $52db: $31 $03 $fe
    ld sp, $2003                                  ; $52de: $31 $03 $20
    ld [hl-], a                                   ; $52e1: $32
    inc bc                                        ; $52e2: $03
    ld b, [hl]                                    ; $52e3: $46
    ld [hl-], a                                   ; $52e4: $32
    inc bc                                        ; $52e5: $03
    adc h                                         ; $52e6: $8c
    ld [hl-], a                                   ; $52e7: $32
    inc bc                                        ; $52e8: $03

Call_047_52e9:
    adc $32                                       ; $52e9: $ce $32
    inc bc                                        ; $52eb: $03
    rst $38                                       ; $52ec: $ff
    ld [hl-], a                                   ; $52ed: $32
    inc bc                                        ; $52ee: $03
    ld h, $33                                     ; $52ef: $26 $33
    inc bc                                        ; $52f1: $03
    ld l, l                                       ; $52f2: $6d
    inc sp                                        ; $52f3: $33
    inc bc                                        ; $52f4: $03
    sbc h                                         ; $52f5: $9c
    inc sp                                        ; $52f6: $33
    inc bc                                        ; $52f7: $03
    adc $33                                       ; $52f8: $ce $33
    inc bc                                        ; $52fa: $03
    ld bc, $0334                                  ; $52fb: $01 $34 $03
    ld b, e                                       ; $52fe: $43
    inc [hl]                                      ; $52ff: $34
    inc bc                                        ; $5300: $03
    add h                                         ; $5301: $84
    inc [hl]                                      ; $5302: $34
    inc bc                                        ; $5303: $03
    adc [hl]                                      ; $5304: $8e
    inc [hl]                                      ; $5305: $34
    inc bc                                        ; $5306: $03
    sub [hl]                                      ; $5307: $96
    inc [hl]                                      ; $5308: $34
    inc bc                                        ; $5309: $03
    and e                                         ; $530a: $a3
    inc [hl]                                      ; $530b: $34
    inc bc                                        ; $530c: $03
    xor a                                         ; $530d: $af
    inc [hl]                                      ; $530e: $34
    inc bc                                        ; $530f: $03
    cp e                                          ; $5310: $bb
    inc [hl]                                      ; $5311: $34
    inc bc                                        ; $5312: $03
    rst $00                                       ; $5313: $c7
    inc [hl]                                      ; $5314: $34
    inc bc                                        ; $5315: $03
    call nc, Call_000_0334                        ; $5316: $d4 $34 $03
    db $e3                                        ; $5319: $e3
    inc [hl]                                      ; $531a: $34
    inc bc                                        ; $531b: $03
    xor $34                                       ; $531c: $ee $34
    inc bc                                        ; $531e: $03
    db $fc                                        ; $531f: $fc
    inc [hl]                                      ; $5320: $34
    inc bc                                        ; $5321: $03
    inc b                                         ; $5322: $04
    dec [hl]                                      ; $5323: $35
    inc bc                                        ; $5324: $03
    rrca                                          ; $5325: $0f
    dec [hl]                                      ; $5326: $35
    inc bc                                        ; $5327: $03
    ld a, [de]                                    ; $5328: $1a
    dec [hl]                                      ; $5329: $35
    inc bc                                        ; $532a: $03
    dec h                                         ; $532b: $25
    dec [hl]                                      ; $532c: $35
    inc bc                                        ; $532d: $03
    jr nc, jr_047_5365                            ; $532e: $30 $35

    inc bc                                        ; $5330: $03
    inc a                                         ; $5331: $3c
    dec [hl]                                      ; $5332: $35
    inc bc                                        ; $5333: $03
    ld c, b                                       ; $5334: $48
    dec [hl]                                      ; $5335: $35
    inc bc                                        ; $5336: $03
    ld c, a                                       ; $5337: $4f
    dec [hl]                                      ; $5338: $35
    inc bc                                        ; $5339: $03
    ld e, e                                       ; $533a: $5b
    dec [hl]                                      ; $533b: $35
    inc bc                                        ; $533c: $03
    ld l, e                                       ; $533d: $6b
    dec [hl]                                      ; $533e: $35
    inc bc                                        ; $533f: $03
    ld [hl], l                                    ; $5340: $75
    dec [hl]                                      ; $5341: $35
    inc bc                                        ; $5342: $03
    ld a, a                                       ; $5343: $7f
    dec [hl]                                      ; $5344: $35
    inc bc                                        ; $5345: $03
    adc [hl]                                      ; $5346: $8e
    dec [hl]                                      ; $5347: $35
    inc bc                                        ; $5348: $03
    sbc b                                         ; $5349: $98
    dec [hl]                                      ; $534a: $35
    inc bc                                        ; $534b: $03
    and e                                         ; $534c: $a3
    dec [hl]                                      ; $534d: $35
    inc bc                                        ; $534e: $03
    xor [hl]                                      ; $534f: $ae
    dec [hl]                                      ; $5350: $35
    inc bc                                        ; $5351: $03
    cp c                                          ; $5352: $b9
    dec [hl]                                      ; $5353: $35
    inc bc                                        ; $5354: $03
    add $35                                       ; $5355: $c6 $35
    inc bc                                        ; $5357: $03
    db $d3                                        ; $5358: $d3
    dec [hl]                                      ; $5359: $35
    inc bc                                        ; $535a: $03
    ld [c], a                                     ; $535b: $e2
    dec [hl]                                      ; $535c: $35
    inc bc                                        ; $535d: $03
    db $eb                                        ; $535e: $eb
    dec [hl]                                      ; $535f: $35
    inc bc                                        ; $5360: $03
    or $35                                        ; $5361: $f6 $35
    inc bc                                        ; $5363: $03
    nop                                           ; $5364: $00

jr_047_5365:
    ld [hl], $03                                  ; $5365: $36 $03
    inc c                                         ; $5367: $0c
    ld [hl], $03                                  ; $5368: $36 $03
    ld a, [de]                                    ; $536a: $1a
    ld [hl], $03                                  ; $536b: $36 $03
    dec h                                         ; $536d: $25
    ld [hl], $03                                  ; $536e: $36 $03
    cpl                                           ; $5370: $2f
    ld [hl], $03                                  ; $5371: $36 $03
    ld a, [hl-]                                   ; $5373: $3a
    ld [hl], $03                                  ; $5374: $36 $03
    ld b, [hl]                                    ; $5376: $46
    ld [hl], $03                                  ; $5377: $36 $03
    ld d, c                                       ; $5379: $51
    ld [hl], $03                                  ; $537a: $36 $03
    ld e, e                                       ; $537c: $5b
    ld [hl], $03                                  ; $537d: $36 $03
    ld h, l                                       ; $537f: $65
    ld [hl], $03                                  ; $5380: $36 $03
    ld [hl], b                                    ; $5382: $70
    ld [hl], $03                                  ; $5383: $36 $03
    ld a, h                                       ; $5385: $7c
    ld [hl], $03                                  ; $5386: $36 $03
    adc d                                         ; $5388: $8a
    ld [hl], $03                                  ; $5389: $36 $03
    sub b                                         ; $538b: $90
    ld [hl], $03                                  ; $538c: $36 $03
    sbc e                                         ; $538e: $9b
    ld [hl], $03                                  ; $538f: $36 $03
    and l                                         ; $5391: $a5
    ld [hl], $03                                  ; $5392: $36 $03
    xor e                                         ; $5394: $ab
    ld [hl], $03                                  ; $5395: $36 $03
    or l                                          ; $5397: $b5
    ld [hl], $03                                  ; $5398: $36 $03
    cp [hl]                                       ; $539a: $be
    ld [hl], $03                                  ; $539b: $36 $03
    swap [hl]                                     ; $539d: $cb $36
    inc bc                                        ; $539f: $03
    ret c                                         ; $53a0: $d8

    ld [hl], $03                                  ; $53a1: $36 $03
    and $36                                       ; $53a3: $e6 $36
    inc bc                                        ; $53a5: $03
    ld a, [c]                                     ; $53a6: $f2
    ld [hl], $03                                  ; $53a7: $36 $03
    cp $36                                        ; $53a9: $fe $36
    inc bc                                        ; $53ab: $03
    rlca                                          ; $53ac: $07
    scf                                           ; $53ad: $37
    inc bc                                        ; $53ae: $03
    ld [de], a                                    ; $53af: $12
    scf                                           ; $53b0: $37
    inc bc                                        ; $53b1: $03
    jr nz, jr_047_53eb                            ; $53b2: $20 $37

    inc bc                                        ; $53b4: $03
    ld h, $37                                     ; $53b5: $26 $37
    inc bc                                        ; $53b7: $03
    inc sp                                        ; $53b8: $33
    scf                                           ; $53b9: $37
    inc bc                                        ; $53ba: $03
    dec a                                         ; $53bb: $3d
    scf                                           ; $53bc: $37
    inc bc                                        ; $53bd: $03
    ld c, b                                       ; $53be: $48
    scf                                           ; $53bf: $37
    inc bc                                        ; $53c0: $03
    ld d, e                                       ; $53c1: $53
    scf                                           ; $53c2: $37
    inc bc                                        ; $53c3: $03
    ld e, [hl]                                    ; $53c4: $5e
    scf                                           ; $53c5: $37
    inc bc                                        ; $53c6: $03
    ld l, h                                       ; $53c7: $6c
    scf                                           ; $53c8: $37
    inc bc                                        ; $53c9: $03
    ld [hl], a                                    ; $53ca: $77
    scf                                           ; $53cb: $37
    inc bc                                        ; $53cc: $03
    add h                                         ; $53cd: $84
    scf                                           ; $53ce: $37
    inc bc                                        ; $53cf: $03
    adc [hl]                                      ; $53d0: $8e
    scf                                           ; $53d1: $37
    inc bc                                        ; $53d2: $03
    sbc d                                         ; $53d3: $9a
    scf                                           ; $53d4: $37
    inc bc                                        ; $53d5: $03
    and [hl]                                      ; $53d6: $a6
    scf                                           ; $53d7: $37
    inc bc                                        ; $53d8: $03
    or h                                          ; $53d9: $b4
    scf                                           ; $53da: $37
    inc bc                                        ; $53db: $03
    cp [hl]                                       ; $53dc: $be
    scf                                           ; $53dd: $37
    inc bc                                        ; $53de: $03
    jp z, $0337                                   ; $53df: $ca $37 $03

    call nc, $0337                                ; $53e2: $d4 $37 $03
    ldh [$37], a                                  ; $53e5: $e0 $37
    inc bc                                        ; $53e7: $03
    ld [$0337], a                                 ; $53e8: $ea $37 $03

jr_047_53eb:
    push af                                       ; $53eb: $f5
    scf                                           ; $53ec: $37
    inc bc                                        ; $53ed: $03
    rst $38                                       ; $53ee: $ff
    scf                                           ; $53ef: $37
    inc bc                                        ; $53f0: $03
    dec c                                         ; $53f1: $0d
    jr c, jr_047_53f7                             ; $53f2: $38 $03

    jr @+$3a                                      ; $53f4: $18 $38

    inc bc                                        ; $53f6: $03

jr_047_53f7:
    ld [hl+], a                                   ; $53f7: $22
    jr c, jr_047_53fd                             ; $53f8: $38 $03

    dec l                                         ; $53fa: $2d
    jr c, jr_047_5400                             ; $53fb: $38 $03

jr_047_53fd:
    scf                                           ; $53fd: $37
    jr c, jr_047_5403                             ; $53fe: $38 $03

jr_047_5400:
    ld b, d                                       ; $5400: $42
    jr c, jr_047_5406                             ; $5401: $38 $03

jr_047_5403:
    ld c, [hl]                                    ; $5403: $4e
    jr c, jr_047_5409                             ; $5404: $38 $03

jr_047_5406:
    ld d, a                                       ; $5406: $57
    jr c, jr_047_540c                             ; $5407: $38 $03

jr_047_5409:
    ld e, [hl]                                    ; $5409: $5e
    jr c, jr_047_540f                             ; $540a: $38 $03

jr_047_540c:
    ld l, b                                       ; $540c: $68
    jr c, jr_047_5412                             ; $540d: $38 $03

jr_047_540f:
    ld [hl], d                                    ; $540f: $72
    jr c, jr_047_5415                             ; $5410: $38 $03

jr_047_5412:
    add b                                         ; $5412: $80
    jr c, jr_047_5418                             ; $5413: $38 $03

jr_047_5415:
    adc d                                         ; $5415: $8a
    jr c, jr_047_541b                             ; $5416: $38 $03

jr_047_5418:
    sub h                                         ; $5418: $94
    jr c, jr_047_541e                             ; $5419: $38 $03

jr_047_541b:
    and b                                         ; $541b: $a0
    jr c, jr_047_5421                             ; $541c: $38 $03

jr_047_541e:
    xor [hl]                                      ; $541e: $ae
    jr c, jr_047_5424                             ; $541f: $38 $03

jr_047_5421:
    cp d                                          ; $5421: $ba
    jr c, jr_047_5427                             ; $5422: $38 $03

jr_047_5424:
    add $38                                       ; $5424: $c6 $38
    inc bc                                        ; $5426: $03

jr_047_5427:
    srl b                                         ; $5427: $cb $38
    inc bc                                        ; $5429: $03
    rst $10                                       ; $542a: $d7
    jr c, jr_047_5430                             ; $542b: $38 $03

    ldh [$38], a                                  ; $542d: $e0 $38
    inc bc                                        ; $542f: $03

jr_047_5430:
    jp hl                                         ; $5430: $e9


    jr c, jr_047_5436                             ; $5431: $38 $03

    rst $28                                       ; $5433: $ef
    jr c, jr_047_5439                             ; $5434: $38 $03

jr_047_5436:
    pop af                                        ; $5436: $f1
    jr c, jr_047_543c                             ; $5437: $38 $03

jr_047_5439:
    db $fc                                        ; $5439: $fc
    jr c, jr_047_543f                             ; $543a: $38 $03

jr_047_543c:
    daa                                           ; $543c: $27
    add hl, sp                                    ; $543d: $39
    inc bc                                        ; $543e: $03

jr_047_543f:
    ld b, c                                       ; $543f: $41
    add hl, sp                                    ; $5440: $39
    inc bc                                        ; $5441: $03
    ld [hl], e                                    ; $5442: $73
    add hl, sp                                    ; $5443: $39
    inc bc                                        ; $5444: $03
    sbc a                                         ; $5445: $9f
    add hl, sp                                    ; $5446: $39
    inc bc                                        ; $5447: $03
    cp e                                          ; $5448: $bb
    add hl, sp                                    ; $5449: $39
    inc bc                                        ; $544a: $03
    sbc $39                                       ; $544b: $de $39
    inc bc                                        ; $544d: $03
    db $fc                                        ; $544e: $fc
    add hl, sp                                    ; $544f: $39
    inc bc                                        ; $5450: $03
    ld d, $3a                                     ; $5451: $16 $3a
    inc bc                                        ; $5453: $03
    dec hl                                        ; $5454: $2b
    ld a, [hl-]                                   ; $5455: $3a
    inc bc                                        ; $5456: $03
    ld d, d                                       ; $5457: $52
    ld a, [hl-]                                   ; $5458: $3a
    inc bc                                        ; $5459: $03
    ld l, l                                       ; $545a: $6d
    ld a, [hl-]                                   ; $545b: $3a
    inc bc                                        ; $545c: $03
    sub c                                         ; $545d: $91
    ld a, [hl-]                                   ; $545e: $3a
    inc bc                                        ; $545f: $03
    xor b                                         ; $5460: $a8
    ld a, [hl-]                                   ; $5461: $3a
    inc bc                                        ; $5462: $03
    jp nz, $033a                                  ; $5463: $c2 $3a $03

    add sp, $3a                                   ; $5466: $e8 $3a
    inc bc                                        ; $5468: $03
    db $10                                        ; $5469: $10
    dec sp                                        ; $546a: $3b
    inc bc                                        ; $546b: $03
    ld [hl], $3b                                  ; $546c: $36 $3b
    inc bc                                        ; $546e: $03
    ld e, e                                       ; $546f: $5b
    dec sp                                        ; $5470: $3b
    inc bc                                        ; $5471: $03
    ld a, l                                       ; $5472: $7d
    dec sp                                        ; $5473: $3b
    inc bc                                        ; $5474: $03
    xor e                                         ; $5475: $ab
    dec sp                                        ; $5476: $3b

Call_047_5477:
    inc bc                                        ; $5477: $03
    ret c                                         ; $5478: $d8

    dec sp                                        ; $5479: $3b
    inc bc                                        ; $547a: $03
    inc b                                         ; $547b: $04
    inc a                                         ; $547c: $3c
    inc bc                                        ; $547d: $03
    ld [hl-], a                                   ; $547e: $32
    inc a                                         ; $547f: $3c
    inc bc                                        ; $5480: $03
    ld h, e                                       ; $5481: $63
    inc a                                         ; $5482: $3c
    inc bc                                        ; $5483: $03
    adc [hl]                                      ; $5484: $8e
    inc a                                         ; $5485: $3c
    inc bc                                        ; $5486: $03
    cp [hl]                                       ; $5487: $be
    inc a                                         ; $5488: $3c
    inc bc                                        ; $5489: $03
    jp nc, $033c                                  ; $548a: $d2 $3c $03

    add hl, bc                                    ; $548d: $09
    dec a                                         ; $548e: $3d
    inc bc                                        ; $548f: $03
    ld b, c                                       ; $5490: $41
    dec a                                         ; $5491: $3d
    inc bc                                        ; $5492: $03
    ld [hl], e                                    ; $5493: $73
    dec a                                         ; $5494: $3d
    inc bc                                        ; $5495: $03
    xor h                                         ; $5496: $ac
    dec a                                         ; $5497: $3d
    inc bc                                        ; $5498: $03
    rst $10                                       ; $5499: $d7
    dec a                                         ; $549a: $3d
    inc bc                                        ; $549b: $03
    xor $3d                                       ; $549c: $ee $3d
    inc bc                                        ; $549e: $03
    inc e                                         ; $549f: $1c
    ld a, $03                                     ; $54a0: $3e $03
    ld b, l                                       ; $54a2: $45
    ld a, $03                                     ; $54a3: $3e $03
    ld l, l                                       ; $54a5: $6d
    ld a, $03                                     ; $54a6: $3e $03
    and b                                         ; $54a8: $a0
    ld a, $03                                     ; $54a9: $3e $03
    or [hl]                                       ; $54ab: $b6
    ld a, $03                                     ; $54ac: $3e $03
    db $ec                                        ; $54ae: $ec
    ld a, $03                                     ; $54af: $3e $03
    ld hl, $033f                                  ; $54b1: $21 $3f $03
    ld b, l                                       ; $54b4: $45
    ccf                                           ; $54b5: $3f
    inc bc                                        ; $54b6: $03
    add c                                         ; $54b7: $81
    ccf                                           ; $54b8: $3f
    inc bc                                        ; $54b9: $03
    sub l                                         ; $54ba: $95
    ccf                                           ; $54bb: $3f
    inc bc                                        ; $54bc: $03
    xor d                                         ; $54bd: $aa
    ccf                                           ; $54be: $3f
    inc b                                         ; $54bf: $04
    ld bc, $0400                                  ; $54c0: $01 $00 $04
    dec sp                                        ; $54c3: $3b
    nop                                           ; $54c4: $00
    inc b                                         ; $54c5: $04
    ld [hl], d                                    ; $54c6: $72
    nop                                           ; $54c7: $00
    inc b                                         ; $54c8: $04
    add h                                         ; $54c9: $84
    nop                                           ; $54ca: $00
    inc b                                         ; $54cb: $04
    or d                                          ; $54cc: $b2
    nop                                           ; $54cd: $00
    inc b                                         ; $54ce: $04
    db $d3                                        ; $54cf: $d3
    nop                                           ; $54d0: $00
    inc b                                         ; $54d1: $04
    rst $30                                       ; $54d2: $f7
    nop                                           ; $54d3: $00
    inc b                                         ; $54d4: $04
    ld a, [de]                                    ; $54d5: $1a
    ld bc, $5004                                  ; $54d6: $01 $04 $50
    ld bc, $6d04                                  ; $54d9: $01 $04 $6d
    ld bc, $9f04                                  ; $54dc: $01 $04 $9f
    ld bc, $be04                                  ; $54df: $01 $04 $be
    ld bc, $cf04                                  ; $54e2: $01 $04 $cf
    ld bc, $ff04                                  ; $54e5: $01 $04 $ff
    ld bc, $2604                                  ; $54e8: $01 $04 $26
    ld [bc], a                                    ; $54eb: $02
    inc b                                         ; $54ec: $04
    ld c, c                                       ; $54ed: $49
    ld [bc], a                                    ; $54ee: $02
    inc b                                         ; $54ef: $04
    halt                                          ; $54f0: $76
    ld [bc], a                                    ; $54f1: $02
    inc b                                         ; $54f2: $04
    sub d                                         ; $54f3: $92
    ld [bc], a                                    ; $54f4: $02
    inc b                                         ; $54f5: $04
    jp $0402                                      ; $54f6: $c3 $02 $04


    jp hl                                         ; $54f9: $e9


    ld [bc], a                                    ; $54fa: $02
    inc b                                         ; $54fb: $04
    ld e, $03                                     ; $54fc: $1e $03
    inc b                                         ; $54fe: $04
    ld c, a                                       ; $54ff: $4f
    inc bc                                        ; $5500: $03
    inc b                                         ; $5501: $04
    ld l, c                                       ; $5502: $69
    inc bc                                        ; $5503: $03
    inc b                                         ; $5504: $04
    sbc d                                         ; $5505: $9a
    inc bc                                        ; $5506: $03
    inc b                                         ; $5507: $04
    cp [hl]                                       ; $5508: $be
    inc bc                                        ; $5509: $03
    inc b                                         ; $550a: $04
    ldh a, [$03]                                  ; $550b: $f0 $03
    inc b                                         ; $550d: $04
    ld [hl+], a                                   ; $550e: $22
    inc b                                         ; $550f: $04
    inc b                                         ; $5510: $04
    add hl, sp                                    ; $5511: $39
    inc b                                         ; $5512: $04
    inc b                                         ; $5513: $04
    ld d, e                                       ; $5514: $53
    inc b                                         ; $5515: $04
    inc b                                         ; $5516: $04
    adc b                                         ; $5517: $88
    inc b                                         ; $5518: $04
    inc b                                         ; $5519: $04
    xor h                                         ; $551a: $ac
    inc b                                         ; $551b: $04
    inc b                                         ; $551c: $04
    db $e3                                        ; $551d: $e3
    inc b                                         ; $551e: $04
    inc b                                         ; $551f: $04
    add hl, bc                                    ; $5520: $09
    dec b                                         ; $5521: $05
    inc b                                         ; $5522: $04
    dec l                                         ; $5523: $2d
    dec b                                         ; $5524: $05
    inc b                                         ; $5525: $04
    ld d, e                                       ; $5526: $53
    dec b                                         ; $5527: $05
    inc b                                         ; $5528: $04
    ld [hl], h                                    ; $5529: $74
    dec b                                         ; $552a: $05
    inc b                                         ; $552b: $04
    sub [hl]                                      ; $552c: $96
    dec b                                         ; $552d: $05
    inc b                                         ; $552e: $04
    xor d                                         ; $552f: $aa
    dec b                                         ; $5530: $05
    inc b                                         ; $5531: $04
    pop de                                        ; $5532: $d1
    dec b                                         ; $5533: $05
    inc b                                         ; $5534: $04
    push af                                       ; $5535: $f5
    dec b                                         ; $5536: $05
    inc b                                         ; $5537: $04
    inc d                                         ; $5538: $14
    ld b, $04                                     ; $5539: $06 $04
    ld c, [hl]                                    ; $553b: $4e
    ld b, $04                                     ; $553c: $06 $04
    add b                                         ; $553e: $80
    ld b, $04                                     ; $553f: $06 $04
    xor h                                         ; $5541: $ac
    ld b, $04                                     ; $5542: $06 $04
    ret z                                         ; $5544: $c8

    ld b, $04                                     ; $5545: $06 $04
    rst $38                                       ; $5547: $ff
    ld b, $04                                     ; $5548: $06 $04
    inc l                                         ; $554a: $2c
    rlca                                          ; $554b: $07
    inc b                                         ; $554c: $04
    ld e, l                                       ; $554d: $5d
    rlca                                          ; $554e: $07
    inc b                                         ; $554f: $04
    add e                                         ; $5550: $83
    rlca                                          ; $5551: $07
    inc b                                         ; $5552: $04
    sbc c                                         ; $5553: $99
    rlca                                          ; $5554: $07
    inc b                                         ; $5555: $04
    ret nc                                        ; $5556: $d0

    rlca                                          ; $5557: $07
    inc b                                         ; $5558: $04
    nop                                           ; $5559: $00
    ld [$1304], sp                                ; $555a: $08 $04 $13
    ld [$4504], sp                                ; $555d: $08 $04 $45
    ld [$7304], sp                                ; $5560: $08 $04 $73
    ld [$8d04], sp                                ; $5563: $08 $04 $8d
    ld [$ba04], sp                                ; $5566: $08 $04 $ba
    ld [$d004], sp                                ; $5569: $08 $04 $d0
    ld [$e404], sp                                ; $556c: $08 $04 $e4
    ld [$f404], sp                                ; $556f: $08 $04 $f4
    ld [$fb04], sp                                ; $5572: $08 $04 $fb
    ld [HeaderLogo], sp                           ; $5575: $08 $04 $01
    add hl, bc                                    ; $5578: $09
    inc b                                         ; $5579: $04
    rlca                                          ; $557a: $07
    add hl, bc                                    ; $557b: $09
    inc b                                         ; $557c: $04
    rrca                                          ; $557d: $0f
    add hl, bc                                    ; $557e: $09
    inc b                                         ; $557f: $04
    jr jr_047_558b                                ; $5580: $18 $09

    inc b                                         ; $5582: $04
    rra                                           ; $5583: $1f
    add hl, bc                                    ; $5584: $09
    inc b                                         ; $5585: $04
    dec h                                         ; $5586: $25
    add hl, bc                                    ; $5587: $09
    inc b                                         ; $5588: $04
    inc l                                         ; $5589: $2c
    add hl, bc                                    ; $558a: $09

jr_047_558b:
    inc b                                         ; $558b: $04
    inc sp                                        ; $558c: $33
    add hl, bc                                    ; $558d: $09
    inc b                                         ; $558e: $04
    ld a, [hl-]                                   ; $558f: $3a
    add hl, bc                                    ; $5590: $09
    inc b                                         ; $5591: $04
    ld b, h                                       ; $5592: $44
    add hl, bc                                    ; $5593: $09
    inc b                                         ; $5594: $04
    ld c, c                                       ; $5595: $49
    add hl, bc                                    ; $5596: $09
    inc b                                         ; $5597: $04
    ld c, a                                       ; $5598: $4f
    add hl, bc                                    ; $5599: $09
    inc b                                         ; $559a: $04
    ld d, a                                       ; $559b: $57
    add hl, bc                                    ; $559c: $09
    inc b                                         ; $559d: $04
    ld h, d                                       ; $559e: $62
    add hl, bc                                    ; $559f: $09
    inc b                                         ; $55a0: $04
    ld h, [hl]                                    ; $55a1: $66
    add hl, bc                                    ; $55a2: $09
    inc b                                         ; $55a3: $04
    ld l, e                                       ; $55a4: $6b
    add hl, bc                                    ; $55a5: $09
    inc b                                         ; $55a6: $04
    ld a, d                                       ; $55a7: $7a
    add hl, bc                                    ; $55a8: $09
    inc b                                         ; $55a9: $04
    sub [hl]                                      ; $55aa: $96
    add hl, bc                                    ; $55ab: $09
    inc b                                         ; $55ac: $04
    cp e                                          ; $55ad: $bb
    add hl, bc                                    ; $55ae: $09
    inc b                                         ; $55af: $04
    ret                                           ; $55b0: $c9


    add hl, bc                                    ; $55b1: $09
    inc b                                         ; $55b2: $04
    sbc $09                                       ; $55b3: $de $09
    inc b                                         ; $55b5: $04
    ld hl, sp+$09                                 ; $55b6: $f8 $09
    inc b                                         ; $55b8: $04
    ld b, $0a                                     ; $55b9: $06 $0a
    inc b                                         ; $55bb: $04
    dec [hl]                                      ; $55bc: $35

Call_047_55bd:
    ld a, [bc]                                    ; $55bd: $0a
    inc b                                         ; $55be: $04
    ld c, d                                       ; $55bf: $4a
    ld a, [bc]                                    ; $55c0: $0a
    inc b                                         ; $55c1: $04
    ld h, a                                       ; $55c2: $67
    ld a, [bc]                                    ; $55c3: $0a
    inc b                                         ; $55c4: $04
    add d                                         ; $55c5: $82
    ld a, [bc]                                    ; $55c6: $0a
    inc b                                         ; $55c7: $04
    or b                                          ; $55c8: $b0
    ld a, [bc]                                    ; $55c9: $0a
    inc b                                         ; $55ca: $04
    jp z, Jump_000_040a                           ; $55cb: $ca $0a $04

    rst $18                                       ; $55ce: $df
    ld a, [bc]                                    ; $55cf: $0a
    inc b                                         ; $55d0: $04
    rlca                                          ; $55d1: $07
    dec bc                                        ; $55d2: $0b
    inc b                                         ; $55d3: $04
    scf                                           ; $55d4: $37
    dec bc                                        ; $55d5: $0b
    inc b                                         ; $55d6: $04
    ld d, h                                       ; $55d7: $54
    dec bc                                        ; $55d8: $0b
    inc b                                         ; $55d9: $04
    ld l, e                                       ; $55da: $6b
    dec bc                                        ; $55db: $0b
    inc b                                         ; $55dc: $04
    ld a, d                                       ; $55dd: $7a
    dec bc                                        ; $55de: $0b
    inc b                                         ; $55df: $04
    sbc c                                         ; $55e0: $99
    dec bc                                        ; $55e1: $0b
    inc b                                         ; $55e2: $04
    sbc e                                         ; $55e3: $9b
    dec bc                                        ; $55e4: $0b
    inc b                                         ; $55e5: $04
    sbc l                                         ; $55e6: $9d
    dec bc                                        ; $55e7: $0b
    inc b                                         ; $55e8: $04
    cp c                                          ; $55e9: $b9
    dec bc                                        ; $55ea: $0b
    inc b                                         ; $55eb: $04
    call Call_000_040b                            ; $55ec: $cd $0b $04
    push de                                       ; $55ef: $d5
    dec bc                                        ; $55f0: $0b
    inc b                                         ; $55f1: $04
    call c, Call_000_040b                         ; $55f2: $dc $0b $04
    db $e4                                        ; $55f5: $e4
    dec bc                                        ; $55f6: $0b
    inc b                                         ; $55f7: $04
    rst $28                                       ; $55f8: $ef
    dec bc                                        ; $55f9: $0b
    inc b                                         ; $55fa: $04
    ld [de], a                                    ; $55fb: $12
    inc c                                         ; $55fc: $0c
    inc b                                         ; $55fd: $04
    cpl                                           ; $55fe: $2f
    inc c                                         ; $55ff: $0c
    inc b                                         ; $5600: $04
    ld c, d                                       ; $5601: $4a
    inc c                                         ; $5602: $0c
    inc b                                         ; $5603: $04
    ld h, c                                       ; $5604: $61
    inc c                                         ; $5605: $0c
    inc b                                         ; $5606: $04
    halt                                          ; $5607: $76
    inc c                                         ; $5608: $0c
    inc b                                         ; $5609: $04
    sub [hl]                                      ; $560a: $96
    inc c                                         ; $560b: $0c
    inc b                                         ; $560c: $04
    jp nz, Jump_000_040c                          ; $560d: $c2 $0c $04

    ld a, [c]                                     ; $5610: $f2
    inc c                                         ; $5611: $0c
    inc b                                         ; $5612: $04
    inc h                                         ; $5613: $24
    dec c                                         ; $5614: $0d
    inc b                                         ; $5615: $04
    ld b, a                                       ; $5616: $47
    dec c                                         ; $5617: $0d
    inc b                                         ; $5618: $04
    adc a                                         ; $5619: $8f
    dec c                                         ; $561a: $0d
    inc b                                         ; $561b: $04
    xor a                                         ; $561c: $af
    dec c                                         ; $561d: $0d
    inc b                                         ; $561e: $04
    rst $08                                       ; $561f: $cf
    dec c                                         ; $5620: $0d
    inc b                                         ; $5621: $04
    rst $18                                       ; $5622: $df
    dec c                                         ; $5623: $0d
    inc b                                         ; $5624: $04
    ld a, [$040d]                                 ; $5625: $fa $0d $04
    inc l                                         ; $5628: $2c
    ld c, $04                                     ; $5629: $0e $04
    ld d, d                                       ; $562b: $52
    ld c, $04                                     ; $562c: $0e $04
    sub c                                         ; $562e: $91
    ld c, $04                                     ; $562f: $0e $04
    xor e                                         ; $5631: $ab
    ld c, $04                                     ; $5632: $0e $04
    jp nz, Jump_000_040e                          ; $5634: $c2 $0e $04

    and $0e                                       ; $5637: $e6 $0e
    inc b                                         ; $5639: $04
    inc d                                         ; $563a: $14
    rrca                                          ; $563b: $0f
    inc b                                         ; $563c: $04
    ld b, c                                       ; $563d: $41
    rrca                                          ; $563e: $0f
    inc b                                         ; $563f: $04
    ld e, h                                       ; $5640: $5c
    rrca                                          ; $5641: $0f
    inc b                                         ; $5642: $04
    ld l, [hl]                                    ; $5643: $6e
    rrca                                          ; $5644: $0f
    inc b                                         ; $5645: $04
    adc h                                         ; $5646: $8c
    rrca                                          ; $5647: $0f
    inc b                                         ; $5648: $04
    cp e                                          ; $5649: $bb
    rrca                                          ; $564a: $0f
    inc b                                         ; $564b: $04
    rrc a                                         ; $564c: $cb $0f
    inc b                                         ; $564e: $04
    add sp, $0f                                   ; $564f: $e8 $0f
    inc b                                         ; $5651: $04
    ld a, [c]                                     ; $5652: $f2
    rrca                                          ; $5653: $0f
    inc b                                         ; $5654: $04
    dec hl                                        ; $5655: $2b
    db $10                                        ; $5656: $10
    inc b                                         ; $5657: $04
    dec [hl]                                      ; $5658: $35
    db $10                                        ; $5659: $10
    inc b                                         ; $565a: $04
    ld b, e                                       ; $565b: $43
    db $10                                        ; $565c: $10
    inc b                                         ; $565d: $04
    ld c, h                                       ; $565e: $4c
    db $10                                        ; $565f: $10
    inc b                                         ; $5660: $04
    ld d, l                                       ; $5661: $55
    db $10                                        ; $5662: $10
    inc b                                         ; $5663: $04
    ld l, l                                       ; $5664: $6d
    db $10                                        ; $5665: $10
    inc b                                         ; $5666: $04
    ld a, [hl]                                    ; $5667: $7e
    db $10                                        ; $5668: $10
    inc b                                         ; $5669: $04
    rl b                                          ; $566a: $cb $10
    inc b                                         ; $566c: $04
    db $10                                        ; $566d: $10
    ld de, $2404                                  ; $566e: $11 $04 $24
    ld de, $3104                                  ; $5671: $11 $04 $31
    ld de, $4f04                                  ; $5674: $11 $04 $4f
    ld de, $8704                                  ; $5677: $11 $04 $87
    ld de, $f904                                  ; $567a: $11 $04 $f9
    ld de, $2f04                                  ; $567d: $11 $04 $2f
    ld [de], a                                    ; $5680: $12
    inc b                                         ; $5681: $04
    sub d                                         ; $5682: $92
    ld [de], a                                    ; $5683: $12
    inc b                                         ; $5684: $04
    xor e                                         ; $5685: $ab
    ld [de], a                                    ; $5686: $12
    inc b                                         ; $5687: $04
    ret c                                         ; $5688: $d8

    ld [de], a                                    ; $5689: $12
    inc b                                         ; $568a: $04
    ld a, [hl+]                                   ; $568b: $2a
    inc de                                        ; $568c: $13
    inc b                                         ; $568d: $04
    dec sp                                        ; $568e: $3b
    inc de                                        ; $568f: $13
    inc b                                         ; $5690: $04
    ld h, b                                       ; $5691: $60
    inc de                                        ; $5692: $13
    inc b                                         ; $5693: $04
    or e                                          ; $5694: $b3
    inc de                                        ; $5695: $13
    inc b                                         ; $5696: $04
    rst $30                                       ; $5697: $f7
    inc de                                        ; $5698: $13
    inc b                                         ; $5699: $04
    ld [hl-], a                                   ; $569a: $32
    inc d                                         ; $569b: $14
    inc b                                         ; $569c: $04
    ld c, d                                       ; $569d: $4a
    inc d                                         ; $569e: $14
    inc b                                         ; $569f: $04
    sbc d                                         ; $56a0: $9a
    inc d                                         ; $56a1: $14
    inc b                                         ; $56a2: $04
    ld b, $15                                     ; $56a3: $06 $15
    inc b                                         ; $56a5: $04
    inc hl                                        ; $56a6: $23
    dec d                                         ; $56a7: $15
    inc b                                         ; $56a8: $04
    ld a, a                                       ; $56a9: $7f
    dec d                                         ; $56aa: $15
    inc b                                         ; $56ab: $04
    rst $20                                       ; $56ac: $e7
    dec d                                         ; $56ad: $15
    inc b                                         ; $56ae: $04
    ld a, [c]                                     ; $56af: $f2
    dec d                                         ; $56b0: $15
    inc b                                         ; $56b1: $04
    ld c, b                                       ; $56b2: $48
    ld d, $04                                     ; $56b3: $16 $04
    ld h, [hl]                                    ; $56b5: $66
    ld d, $04                                     ; $56b6: $16 $04
    ld [hl], d                                    ; $56b8: $72
    ld d, $04                                     ; $56b9: $16 $04
    xor c                                         ; $56bb: $a9
    ld d, $04                                     ; $56bc: $16 $04
    jp z, Jump_000_0416                           ; $56be: $ca $16 $04

    db $f4                                        ; $56c1: $f4
    ld d, $04                                     ; $56c2: $16 $04
    ld sp, hl                                     ; $56c4: $f9
    ld d, $04                                     ; $56c5: $16 $04
    ld e, b                                       ; $56c7: $58
    rla                                           ; $56c8: $17
    inc b                                         ; $56c9: $04
    ld e, [hl]                                    ; $56ca: $5e
    rla                                           ; $56cb: $17
    inc b                                         ; $56cc: $04
    sub h                                         ; $56cd: $94
    rla                                           ; $56ce: $17
    inc b                                         ; $56cf: $04
    sbc a                                         ; $56d0: $9f
    rla                                           ; $56d1: $17
    inc b                                         ; $56d2: $04
    ld a, [bc]                                    ; $56d3: $0a
    jr jr_047_56da                                ; $56d4: $18 $04

    ld b, a                                       ; $56d6: $47
    jr @+$06                                      ; $56d7: $18 $04

    xor h                                         ; $56d9: $ac

jr_047_56da:
    jr jr_047_56e0                                ; $56da: $18 $04

    jp nz, Jump_000_0418                          ; $56dc: $c2 $18 $04

    ret nc                                        ; $56df: $d0

jr_047_56e0:
    jr jr_047_56e6                                ; $56e0: $18 $04

    rst $18                                       ; $56e2: $df
    jr jr_047_56e9                                ; $56e3: $18 $04

    db $fc                                        ; $56e5: $fc

jr_047_56e6:
    jr jr_047_56ec                                ; $56e6: $18 $04

    dec hl                                        ; $56e8: $2b

jr_047_56e9:
    add hl, de                                    ; $56e9: $19
    inc b                                         ; $56ea: $04
    ld a, [hl-]                                   ; $56eb: $3a

jr_047_56ec:
    add hl, de                                    ; $56ec: $19
    inc b                                         ; $56ed: $04
    ld h, d                                       ; $56ee: $62
    add hl, de                                    ; $56ef: $19
    inc b                                         ; $56f0: $04
    add h                                         ; $56f1: $84
    add hl, de                                    ; $56f2: $19
    inc b                                         ; $56f3: $04
    or a                                          ; $56f4: $b7
    add hl, de                                    ; $56f5: $19
    inc b                                         ; $56f6: $04
    db $f4                                        ; $56f7: $f4
    add hl, de                                    ; $56f8: $19
    inc b                                         ; $56f9: $04
    ld sp, $041a                                  ; $56fa: $31 $1a $04
    sub h                                         ; $56fd: $94
    ld a, [de]                                    ; $56fe: $1a
    inc b                                         ; $56ff: $04
    or b                                          ; $5700: $b0
    ld a, [de]                                    ; $5701: $1a
    inc b                                         ; $5702: $04
    cp [hl]                                       ; $5703: $be
    ld a, [de]                                    ; $5704: $1a
    inc b                                         ; $5705: $04
    ld [hl-], a                                   ; $5706: $32
    dec de                                        ; $5707: $1b
    inc b                                         ; $5708: $04
    ld e, c                                       ; $5709: $59
    dec de                                        ; $570a: $1b
    inc b                                         ; $570b: $04
    sbc h                                         ; $570c: $9c
    dec de                                        ; $570d: $1b
    inc b                                         ; $570e: $04
    or l                                          ; $570f: $b5
    dec de                                        ; $5710: $1b
    inc b                                         ; $5711: $04
    ld [de], a                                    ; $5712: $12
    inc e                                         ; $5713: $1c
    inc b                                         ; $5714: $04
    dec [hl]                                      ; $5715: $35
    inc e                                         ; $5716: $1c
    inc b                                         ; $5717: $04
    ld c, c                                       ; $5718: $49
    inc e                                         ; $5719: $1c
    inc b                                         ; $571a: $04
    ld d, a                                       ; $571b: $57
    inc e                                         ; $571c: $1c
    inc b                                         ; $571d: $04
    sub a                                         ; $571e: $97
    inc e                                         ; $571f: $1c
    inc b                                         ; $5720: $04
    and [hl]                                      ; $5721: $a6
    inc e                                         ; $5722: $1c
    inc b                                         ; $5723: $04
    ret nc                                        ; $5724: $d0

    inc e                                         ; $5725: $1c
    inc b                                         ; $5726: $04
    db $e4                                        ; $5727: $e4
    inc e                                         ; $5728: $1c
    inc b                                         ; $5729: $04
    ld sp, hl                                     ; $572a: $f9
    inc e                                         ; $572b: $1c
    inc b                                         ; $572c: $04
    dec c                                         ; $572d: $0d
    dec e                                         ; $572e: $1d
    inc b                                         ; $572f: $04
    ld h, $1d                                     ; $5730: $26 $1d
    inc b                                         ; $5732: $04
    jr nc, jr_047_5752                            ; $5733: $30 $1d

    inc b                                         ; $5735: $04
    ld e, e                                       ; $5736: $5b
    dec e                                         ; $5737: $1d
    inc b                                         ; $5738: $04
    ld l, a                                       ; $5739: $6f
    dec e                                         ; $573a: $1d
    inc b                                         ; $573b: $04
    push bc                                       ; $573c: $c5
    dec e                                         ; $573d: $1d
    inc b                                         ; $573e: $04
    and $1d                                       ; $573f: $e6 $1d
    inc b                                         ; $5741: $04
    inc bc                                        ; $5742: $03
    ld e, $04                                     ; $5743: $1e $04
    daa                                           ; $5745: $27
    ld e, $04                                     ; $5746: $1e $04
    ld d, b                                       ; $5748: $50
    ld e, $04                                     ; $5749: $1e $04
    ld h, a                                       ; $574b: $67
    ld e, $04                                     ; $574c: $1e $04
    ld a, d                                       ; $574e: $7a
    ld e, $04                                     ; $574f: $1e $04
    sbc d                                         ; $5751: $9a

jr_047_5752:
    ld e, $04                                     ; $5752: $1e $04
    and a                                         ; $5754: $a7
    ld e, $04                                     ; $5755: $1e $04
    cp a                                          ; $5757: $bf
    ld e, $04                                     ; $5758: $1e $04
    db $d3                                        ; $575a: $d3
    ld e, $04                                     ; $575b: $1e $04
    rst $18                                       ; $575d: $df
    ld e, $04                                     ; $575e: $1e $04
    inc c                                         ; $5760: $0c
    rra                                           ; $5761: $1f
    inc b                                         ; $5762: $04
    ld e, h                                       ; $5763: $5c
    rra                                           ; $5764: $1f
    inc b                                         ; $5765: $04
    ld a, b                                       ; $5766: $78
    rra                                           ; $5767: $1f
    inc b                                         ; $5768: $04
    add c                                         ; $5769: $81
    rra                                           ; $576a: $1f
    inc b                                         ; $576b: $04
    sub [hl]                                      ; $576c: $96
    rra                                           ; $576d: $1f
    inc b                                         ; $576e: $04
    sbc a                                         ; $576f: $9f
    rra                                           ; $5770: $1f
    inc b                                         ; $5771: $04
    jp Jump_000_041f                              ; $5772: $c3 $1f $04


    rst $18                                       ; $5775: $df
    rra                                           ; $5776: $1f
    inc b                                         ; $5777: $04
    ld c, a                                       ; $5778: $4f
    jr nz, jr_047_577f                            ; $5779: $20 $04

    add b                                         ; $577b: $80
    jr nz, jr_047_5782                            ; $577c: $20 $04

    rst $30                                       ; $577e: $f7

jr_047_577f:
    jr nz, @+$06                                  ; $577f: $20 $04

    rst $38                                       ; $5781: $ff

jr_047_5782:
    jr nz, jr_047_5788                            ; $5782: $20 $04

    ld de, $0421                                  ; $5784: $11 $21 $04
    daa                                           ; $5787: $27

jr_047_5788:
    ld hl, $5c04                                  ; $5788: $21 $04 $5c
    ld hl, $7c04                                  ; $578b: $21 $04 $7c
    ld hl, $ac04                                  ; $578e: $21 $04 $ac
    ld hl, $c004                                  ; $5791: $21 $04 $c0
    ld hl, $e804                                  ; $5794: $21 $04 $e8
    ld hl, $f104                                  ; $5797: $21 $04 $f1
    ld hl, $0204                                  ; $579a: $21 $04 $02
    ld [hl+], a                                   ; $579d: $22
    inc b                                         ; $579e: $04
    ld c, [hl]                                    ; $579f: $4e
    ld [hl+], a                                   ; $57a0: $22
    inc b                                         ; $57a1: $04
    ld e, c                                       ; $57a2: $59
    ld [hl+], a                                   ; $57a3: $22
    inc b                                         ; $57a4: $04
    sbc [hl]                                      ; $57a5: $9e
    ld [hl+], a                                   ; $57a6: $22
    inc b                                         ; $57a7: $04
    jp Jump_000_0422                              ; $57a8: $c3 $22 $04


    dec c                                         ; $57ab: $0d
    inc hl                                        ; $57ac: $23
    inc b                                         ; $57ad: $04
    ld a, [hl-]                                   ; $57ae: $3a
    inc hl                                        ; $57af: $23
    inc b                                         ; $57b0: $04
    ld b, [hl]                                    ; $57b1: $46
    inc hl                                        ; $57b2: $23
    inc b                                         ; $57b3: $04
    ld e, e                                       ; $57b4: $5b
    inc hl                                        ; $57b5: $23
    inc b                                         ; $57b6: $04
    ld [hl], l                                    ; $57b7: $75
    inc hl                                        ; $57b8: $23
    inc b                                         ; $57b9: $04
    add a                                         ; $57ba: $87
    inc hl                                        ; $57bb: $23
    inc b                                         ; $57bc: $04
    sub h                                         ; $57bd: $94
    inc hl                                        ; $57be: $23
    inc b                                         ; $57bf: $04
    and b                                         ; $57c0: $a0
    inc hl                                        ; $57c1: $23
    inc b                                         ; $57c2: $04
    or h                                          ; $57c3: $b4
    inc hl                                        ; $57c4: $23
    inc b                                         ; $57c5: $04
    rst $00                                       ; $57c6: $c7
    inc hl                                        ; $57c7: $23
    inc b                                         ; $57c8: $04
    db $db                                        ; $57c9: $db
    inc hl                                        ; $57ca: $23
    inc b                                         ; $57cb: $04
    jp hl                                         ; $57cc: $e9


    inc hl                                        ; $57cd: $23
    inc b                                         ; $57ce: $04
    ei                                            ; $57cf: $fb
    inc hl                                        ; $57d0: $23
    inc b                                         ; $57d1: $04
    db $fd                                        ; $57d2: $fd
    inc hl                                        ; $57d3: $23
    inc b                                         ; $57d4: $04
    add hl, bc                                    ; $57d5: $09
    inc h                                         ; $57d6: $24
    inc b                                         ; $57d7: $04
    ld hl, $0424                                  ; $57d8: $21 $24 $04
    add hl, sp                                    ; $57db: $39
    inc h                                         ; $57dc: $24
    inc b                                         ; $57dd: $04
    dec sp                                        ; $57de: $3b
    inc h                                         ; $57df: $24
    inc b                                         ; $57e0: $04
    dec a                                         ; $57e1: $3d
    inc h                                         ; $57e2: $24
    inc b                                         ; $57e3: $04
    ld d, c                                       ; $57e4: $51
    inc h                                         ; $57e5: $24
    inc b                                         ; $57e6: $04
    ld h, d                                       ; $57e7: $62
    inc h                                         ; $57e8: $24
    inc b                                         ; $57e9: $04
    ld h, h                                       ; $57ea: $64
    inc h                                         ; $57eb: $24
    inc b                                         ; $57ec: $04
    ld a, l                                       ; $57ed: $7d
    inc h                                         ; $57ee: $24
    inc b                                         ; $57ef: $04
    ld a, a                                       ; $57f0: $7f
    inc h                                         ; $57f1: $24
    inc b                                         ; $57f2: $04
    add c                                         ; $57f3: $81
    inc h                                         ; $57f4: $24
    inc b                                         ; $57f5: $04
    and b                                         ; $57f6: $a0
    inc h                                         ; $57f7: $24
    inc b                                         ; $57f8: $04
    xor [hl]                                      ; $57f9: $ae
    inc h                                         ; $57fa: $24
    inc b                                         ; $57fb: $04
    cp h                                          ; $57fc: $bc
    inc h                                         ; $57fd: $24
    inc b                                         ; $57fe: $04
    cp [hl]                                       ; $57ff: $be
    inc h                                         ; $5800: $24
    inc b                                         ; $5801: $04
    ret nz                                        ; $5802: $c0

    inc h                                         ; $5803: $24
    inc b                                         ; $5804: $04
    jp nz, $0424                                  ; $5805: $c2 $24 $04

    pop hl                                        ; $5808: $e1
    inc h                                         ; $5809: $24
    inc b                                         ; $580a: $04
    db $e3                                        ; $580b: $e3
    inc h                                         ; $580c: $24
    inc b                                         ; $580d: $04
    push hl                                       ; $580e: $e5
    inc h                                         ; $580f: $24
    inc b                                         ; $5810: $04
    rst $20                                       ; $5811: $e7
    inc h                                         ; $5812: $24
    inc b                                         ; $5813: $04
    jp hl                                         ; $5814: $e9


    inc h                                         ; $5815: $24
    inc b                                         ; $5816: $04
    db $eb                                        ; $5817: $eb
    inc h                                         ; $5818: $24
    inc b                                         ; $5819: $04
    db $ed                                        ; $581a: $ed
    inc h                                         ; $581b: $24
    inc b                                         ; $581c: $04
    rst $28                                       ; $581d: $ef
    inc h                                         ; $581e: $24
    inc b                                         ; $581f: $04
    pop af                                        ; $5820: $f1
    inc h                                         ; $5821: $24
    inc b                                         ; $5822: $04
    cp $24                                        ; $5823: $fe $24
    inc b                                         ; $5825: $04
    jr jr_047_584d                                ; $5826: $18 $25

    inc b                                         ; $5828: $04
    add hl, hl                                    ; $5829: $29
    dec h                                         ; $582a: $25
    inc b                                         ; $582b: $04
    dec hl                                        ; $582c: $2b
    dec h                                         ; $582d: $25
    inc b                                         ; $582e: $04
    dec l                                         ; $582f: $2d
    dec h                                         ; $5830: $25
    inc b                                         ; $5831: $04
    cpl                                           ; $5832: $2f
    dec h                                         ; $5833: $25
    inc b                                         ; $5834: $04
    ld sp, $0425                                  ; $5835: $31 $25 $04
    inc sp                                        ; $5838: $33
    dec h                                         ; $5839: $25
    inc b                                         ; $583a: $04
    dec [hl]                                      ; $583b: $35
    dec h                                         ; $583c: $25
    inc b                                         ; $583d: $04
    scf                                           ; $583e: $37
    dec h                                         ; $583f: $25
    inc b                                         ; $5840: $04
    add hl, sp                                    ; $5841: $39
    dec h                                         ; $5842: $25
    inc b                                         ; $5843: $04
    dec sp                                        ; $5844: $3b
    dec h                                         ; $5845: $25
    inc b                                         ; $5846: $04
    dec a                                         ; $5847: $3d
    dec h                                         ; $5848: $25
    inc b                                         ; $5849: $04
    ld c, [hl]                                    ; $584a: $4e
    dec h                                         ; $584b: $25
    inc b                                         ; $584c: $04

jr_047_584d:
    ld e, [hl]                                    ; $584d: $5e
    dec h                                         ; $584e: $25
    inc b                                         ; $584f: $04
    ld l, l                                       ; $5850: $6d
    dec h                                         ; $5851: $25
    inc b                                         ; $5852: $04
    ld a, e                                       ; $5853: $7b
    dec h                                         ; $5854: $25
    inc b                                         ; $5855: $04
    adc d                                         ; $5856: $8a
    dec h                                         ; $5857: $25
    inc b                                         ; $5858: $04
    sbc [hl]                                      ; $5859: $9e
    dec h                                         ; $585a: $25
    inc b                                         ; $585b: $04
    and b                                         ; $585c: $a0
    dec h                                         ; $585d: $25
    inc b                                         ; $585e: $04
    or [hl]                                       ; $585f: $b6
    dec h                                         ; $5860: $25
    inc b                                         ; $5861: $04
    cp b                                          ; $5862: $b8
    dec h                                         ; $5863: $25
    inc b                                         ; $5864: $04
    jp z, $0425                                   ; $5865: $ca $25 $04

    call z, $0425                                 ; $5868: $cc $25 $04
    db $db                                        ; $586b: $db
    dec h                                         ; $586c: $25
    inc b                                         ; $586d: $04
    db $dd                                        ; $586e: $dd
    dec h                                         ; $586f: $25
    inc b                                         ; $5870: $04
    rst $28                                       ; $5871: $ef
    dec h                                         ; $5872: $25
    inc b                                         ; $5873: $04
    ld sp, hl                                     ; $5874: $f9
    dec h                                         ; $5875: $25
    inc b                                         ; $5876: $04
    rrca                                          ; $5877: $0f
    ld h, $04                                     ; $5878: $26 $04
    jr nz, jr_047_58a2                            ; $587a: $20 $26

    inc b                                         ; $587c: $04
    cpl                                           ; $587d: $2f
    ld h, $04                                     ; $587e: $26 $04
    ld sp, $0426                                  ; $5880: $31 $26 $04
    inc sp                                        ; $5883: $33
    ld h, $04                                     ; $5884: $26 $04
    dec [hl]                                      ; $5886: $35
    ld h, $04                                     ; $5887: $26 $04
    scf                                           ; $5889: $37
    ld h, $04                                     ; $588a: $26 $04
    ld b, a                                       ; $588c: $47
    ld h, $04                                     ; $588d: $26 $04
    ld d, a                                       ; $588f: $57
    ld h, $04                                     ; $5890: $26 $04
    ld l, h                                       ; $5892: $6c
    ld h, $04                                     ; $5893: $26 $04
    ld a, l                                       ; $5895: $7d
    ld h, $04                                     ; $5896: $26 $04
    adc a                                         ; $5898: $8f
    ld h, $04                                     ; $5899: $26 $04
    and c                                         ; $589b: $a1
    ld h, $04                                     ; $589c: $26 $04
    or b                                          ; $589e: $b0
    ld h, $04                                     ; $589f: $26 $04
    cp [hl]                                       ; $58a1: $be

jr_047_58a2:
    ld h, $04                                     ; $58a2: $26 $04
    sla [hl]                                      ; $58a4: $cb $26
    inc b                                         ; $58a6: $04
    reti                                          ; $58a7: $d9


    ld h, $04                                     ; $58a8: $26 $04
    db $ed                                        ; $58aa: $ed
    ld h, $04                                     ; $58ab: $26 $04
    ld a, [$0426]                                 ; $58ad: $fa $26 $04
    add hl, de                                    ; $58b0: $19
    daa                                           ; $58b1: $27
    inc b                                         ; $58b2: $04
    dec de                                        ; $58b3: $1b
    daa                                           ; $58b4: $27
    inc b                                         ; $58b5: $04
    jr nc, jr_047_58df                            ; $58b6: $30 $27

    inc b                                         ; $58b8: $04
    ld b, c                                       ; $58b9: $41
    daa                                           ; $58ba: $27
    inc b                                         ; $58bb: $04
    ld d, c                                       ; $58bc: $51
    daa                                           ; $58bd: $27
    inc b                                         ; $58be: $04
    ld e, l                                       ; $58bf: $5d
    daa                                           ; $58c0: $27
    inc b                                         ; $58c1: $04
    ld l, [hl]                                    ; $58c2: $6e
    daa                                           ; $58c3: $27
    inc b                                         ; $58c4: $04
    ld a, c                                       ; $58c5: $79
    daa                                           ; $58c6: $27
    inc b                                         ; $58c7: $04
    add l                                         ; $58c8: $85
    daa                                           ; $58c9: $27
    inc b                                         ; $58ca: $04
    sub a                                         ; $58cb: $97
    daa                                           ; $58cc: $27
    inc b                                         ; $58cd: $04
    and l                                         ; $58ce: $a5
    daa                                           ; $58cf: $27
    inc b                                         ; $58d0: $04
    xor e                                         ; $58d1: $ab
    daa                                           ; $58d2: $27
    inc b                                         ; $58d3: $04
    or e                                          ; $58d4: $b3
    daa                                           ; $58d5: $27
    inc b                                         ; $58d6: $04
    cp e                                          ; $58d7: $bb
    daa                                           ; $58d8: $27
    inc b                                         ; $58d9: $04
    jp Jump_000_0427                              ; $58da: $c3 $27 $04


    rst $08                                       ; $58dd: $cf
    daa                                           ; $58de: $27

jr_047_58df:
    inc b                                         ; $58df: $04
    rst $10                                       ; $58e0: $d7
    daa                                           ; $58e1: $27
    inc b                                         ; $58e2: $04
    ldh [$27], a                                  ; $58e3: $e0 $27
    inc b                                         ; $58e5: $04
    add sp, $27                                   ; $58e6: $e8 $27
    inc b                                         ; $58e8: $04
    db $f4                                        ; $58e9: $f4
    daa                                           ; $58ea: $27
    inc b                                         ; $58eb: $04
    ld bc, $0428                                  ; $58ec: $01 $28 $04
    ld a, [bc]                                    ; $58ef: $0a
    jr z, jr_047_58f6                             ; $58f0: $28 $04

    ld d, $28                                     ; $58f2: $16 $28
    inc b                                         ; $58f4: $04
    ld [hl+], a                                   ; $58f5: $22

jr_047_58f6:
    jr z, jr_047_58fc                             ; $58f6: $28 $04

    ld l, $28                                     ; $58f8: $2e $28
    inc b                                         ; $58fa: $04
    add hl, sp                                    ; $58fb: $39

jr_047_58fc:
    jr z, jr_047_5902                             ; $58fc: $28 $04

    ld c, e                                       ; $58fe: $4b
    jr z, jr_047_5905                             ; $58ff: $28 $04

    ld e, l                                       ; $5901: $5d

jr_047_5902:
    jr z, jr_047_5908                             ; $5902: $28 $04

    ld h, [hl]                                    ; $5904: $66

jr_047_5905:
    jr z, jr_047_590b                             ; $5905: $28 $04

    ld [hl], c                                    ; $5907: $71

jr_047_5908:
    jr z, jr_047_590e                             ; $5908: $28 $04

    ld a, e                                       ; $590a: $7b

jr_047_590b:
    jr z, jr_047_5911                             ; $590b: $28 $04

    add e                                         ; $590d: $83

jr_047_590e:
    jr z, jr_047_5914                             ; $590e: $28 $04

    adc [hl]                                      ; $5910: $8e

jr_047_5911:
    jr z, jr_047_5917                             ; $5911: $28 $04

    sbc h                                         ; $5913: $9c

jr_047_5914:
    jr z, jr_047_591a                             ; $5914: $28 $04

    xor b                                         ; $5916: $a8

jr_047_5917:
    jr z, jr_047_591d                             ; $5917: $28 $04

    or e                                          ; $5919: $b3

jr_047_591a:
    jr z, jr_047_5920                             ; $591a: $28 $04

    cp [hl]                                       ; $591c: $be

jr_047_591d:
    jr z, @+$06                                   ; $591d: $28 $04

    ret                                           ; $591f: $c9


jr_047_5920:
    jr z, jr_047_5926                             ; $5920: $28 $04

    call nc, Call_000_0428                        ; $5922: $d4 $28 $04
    rst $18                                       ; $5925: $df

jr_047_5926:
    jr z, jr_047_592c                             ; $5926: $28 $04

    ld [$0428], a                                 ; $5928: $ea $28 $04
    di                                            ; $592b: $f3

jr_047_592c:
    jr z, jr_047_5932                             ; $592c: $28 $04

    db $fc                                        ; $592e: $fc
    jr z, @+$06                                   ; $592f: $28 $04

    dec b                                         ; $5931: $05

jr_047_5932:
    add hl, hl                                    ; $5932: $29
    inc b                                         ; $5933: $04
    ld c, $29                                     ; $5934: $0e $29
    inc b                                         ; $5936: $04
    rla                                           ; $5937: $17
    add hl, hl                                    ; $5938: $29
    inc b                                         ; $5939: $04
    jr nz, jr_047_5965                            ; $593a: $20 $29

    inc b                                         ; $593c: $04
    ld a, [hl+]                                   ; $593d: $2a
    add hl, hl                                    ; $593e: $29
    inc b                                         ; $593f: $04
    ld [hl-], a                                   ; $5940: $32
    add hl, hl                                    ; $5941: $29
    inc b                                         ; $5942: $04
    ld a, [hl-]                                   ; $5943: $3a
    add hl, hl                                    ; $5944: $29
    inc b                                         ; $5945: $04
    ld b, e                                       ; $5946: $43
    add hl, hl                                    ; $5947: $29
    inc b                                         ; $5948: $04
    ld c, b                                       ; $5949: $48
    add hl, hl                                    ; $594a: $29
    inc b                                         ; $594b: $04
    ld d, c                                       ; $594c: $51
    add hl, hl                                    ; $594d: $29
    inc b                                         ; $594e: $04
    ld h, c                                       ; $594f: $61
    add hl, hl                                    ; $5950: $29
    inc b                                         ; $5951: $04
    ld [hl], b                                    ; $5952: $70
    add hl, hl                                    ; $5953: $29
    inc b                                         ; $5954: $04
    ld a, e                                       ; $5955: $7b
    add hl, hl                                    ; $5956: $29
    inc b                                         ; $5957: $04
    add [hl]                                      ; $5958: $86
    add hl, hl                                    ; $5959: $29
    inc b                                         ; $595a: $04
    sub c                                         ; $595b: $91
    add hl, hl                                    ; $595c: $29
    inc b                                         ; $595d: $04
    sbc h                                         ; $595e: $9c
    add hl, hl                                    ; $595f: $29
    inc b                                         ; $5960: $04
    and a                                         ; $5961: $a7
    add hl, hl                                    ; $5962: $29
    inc b                                         ; $5963: $04
    or d                                          ; $5964: $b2

jr_047_5965:
    add hl, hl                                    ; $5965: $29
    inc b                                         ; $5966: $04
    cp l                                          ; $5967: $bd
    add hl, hl                                    ; $5968: $29
    inc b                                         ; $5969: $04
    jp nz, Jump_000_0429                          ; $596a: $c2 $29 $04

    reti                                          ; $596d: $d9


    add hl, hl                                    ; $596e: $29
    inc b                                         ; $596f: $04
    ldh [$29], a                                  ; $5970: $e0 $29
    inc b                                         ; $5972: $04
    ld [$0429], a                                 ; $5973: $ea $29 $04
    db $f4                                        ; $5976: $f4
    add hl, hl                                    ; $5977: $29
    inc b                                         ; $5978: $04
    nop                                           ; $5979: $00
    ld a, [hl+]                                   ; $597a: $2a
    inc b                                         ; $597b: $04
    inc c                                         ; $597c: $0c
    ld a, [hl+]                                   ; $597d: $2a
    inc b                                         ; $597e: $04
    rla                                           ; $597f: $17
    ld a, [hl+]                                   ; $5980: $2a
    inc b                                         ; $5981: $04
    ld [hl+], a                                   ; $5982: $22
    ld a, [hl+]                                   ; $5983: $2a
    inc b                                         ; $5984: $04
    inc l                                         ; $5985: $2c
    ld a, [hl+]                                   ; $5986: $2a
    inc b                                         ; $5987: $04
    dec [hl]                                      ; $5988: $35
    ld a, [hl+]                                   ; $5989: $2a
    inc b                                         ; $598a: $04
    ccf                                           ; $598b: $3f
    ld a, [hl+]                                   ; $598c: $2a
    inc b                                         ; $598d: $04
    ld c, b                                       ; $598e: $48
    ld a, [hl+]                                   ; $598f: $2a
    inc b                                         ; $5990: $04
    ld e, e                                       ; $5991: $5b
    ld a, [hl+]                                   ; $5992: $2a
    inc b                                         ; $5993: $04
    ld h, h                                       ; $5994: $64
    ld a, [hl+]                                   ; $5995: $2a
    inc b                                         ; $5996: $04
    ld [hl], c                                    ; $5997: $71
    ld a, [hl+]                                   ; $5998: $2a
    inc b                                         ; $5999: $04
    ld a, h                                       ; $599a: $7c
    ld a, [hl+]                                   ; $599b: $2a
    inc b                                         ; $599c: $04
    add e                                         ; $599d: $83
    ld a, [hl+]                                   ; $599e: $2a
    inc b                                         ; $599f: $04
    adc l                                         ; $59a0: $8d
    ld a, [hl+]                                   ; $59a1: $2a
    inc b                                         ; $59a2: $04
    sbc a                                         ; $59a3: $9f
    ld a, [hl+]                                   ; $59a4: $2a
    inc b                                         ; $59a5: $04
    or b                                          ; $59a6: $b0
    ld a, [hl+]                                   ; $59a7: $2a
    inc b                                         ; $59a8: $04
    or a                                          ; $59a9: $b7
    ld a, [hl+]                                   ; $59aa: $2a
    inc b                                         ; $59ab: $04
    pop bc                                        ; $59ac: $c1
    ld a, [hl+]                                   ; $59ad: $2a
    inc b                                         ; $59ae: $04
    rst $08                                       ; $59af: $cf
    ld a, [hl+]                                   ; $59b0: $2a
    inc b                                         ; $59b1: $04
    sbc $2a                                       ; $59b2: $de $2a
    inc b                                         ; $59b4: $04
    add sp, $2a                                   ; $59b5: $e8 $2a
    inc b                                         ; $59b7: $04
    push af                                       ; $59b8: $f5
    ld a, [hl+]                                   ; $59b9: $2a
    inc b                                         ; $59ba: $04
    cp $2a                                        ; $59bb: $fe $2a
    inc b                                         ; $59bd: $04
    add hl, bc                                    ; $59be: $09
    dec hl                                        ; $59bf: $2b
    inc b                                         ; $59c0: $04
    inc de                                        ; $59c1: $13
    dec hl                                        ; $59c2: $2b
    inc b                                         ; $59c3: $04
    inc hl                                        ; $59c4: $23
    dec hl                                        ; $59c5: $2b
    inc b                                         ; $59c6: $04
    inc sp                                        ; $59c7: $33
    dec hl                                        ; $59c8: $2b
    inc b                                         ; $59c9: $04
    ld b, e                                       ; $59ca: $43
    dec hl                                        ; $59cb: $2b
    inc b                                         ; $59cc: $04
    ld d, e                                       ; $59cd: $53
    dec hl                                        ; $59ce: $2b
    inc b                                         ; $59cf: $04
    ld e, a                                       ; $59d0: $5f
    dec hl                                        ; $59d1: $2b
    inc b                                         ; $59d2: $04
    ld l, e                                       ; $59d3: $6b
    dec hl                                        ; $59d4: $2b
    inc b                                         ; $59d5: $04
    ld a, b                                       ; $59d6: $78
    dec hl                                        ; $59d7: $2b
    inc b                                         ; $59d8: $04
    add [hl]                                      ; $59d9: $86
    dec hl                                        ; $59da: $2b
    inc b                                         ; $59db: $04
    adc a                                         ; $59dc: $8f
    dec hl                                        ; $59dd: $2b
    inc b                                         ; $59de: $04
    sbc h                                         ; $59df: $9c
    dec hl                                        ; $59e0: $2b
    inc b                                         ; $59e1: $04
    xor b                                         ; $59e2: $a8
    dec hl                                        ; $59e3: $2b
    inc b                                         ; $59e4: $04
    or d                                          ; $59e5: $b2
    dec hl                                        ; $59e6: $2b
    inc b                                         ; $59e7: $04
    jp $042b                                      ; $59e8: $c3 $2b $04


    call z, $042b                                 ; $59eb: $cc $2b $04
    call nc, $042b                                ; $59ee: $d4 $2b $04
    rst $20                                       ; $59f1: $e7
    dec hl                                        ; $59f2: $2b
    inc b                                         ; $59f3: $04
    rst $30                                       ; $59f4: $f7
    dec hl                                        ; $59f5: $2b
    inc b                                         ; $59f6: $04
    ld b, $2c                                     ; $59f7: $06 $2c
    inc b                                         ; $59f9: $04
    dec d                                         ; $59fa: $15
    inc l                                         ; $59fb: $2c
    inc b                                         ; $59fc: $04
    dec hl                                        ; $59fd: $2b
    inc l                                         ; $59fe: $2c
    inc b                                         ; $59ff: $04
    dec sp                                        ; $5a00: $3b
    inc l                                         ; $5a01: $2c
    inc b                                         ; $5a02: $04
    ld d, c                                       ; $5a03: $51
    inc l                                         ; $5a04: $2c
    inc b                                         ; $5a05: $04
    ld l, e                                       ; $5a06: $6b
    inc l                                         ; $5a07: $2c
    inc b                                         ; $5a08: $04
    add d                                         ; $5a09: $82
    inc l                                         ; $5a0a: $2c
    inc b                                         ; $5a0b: $04
    and [hl]                                      ; $5a0c: $a6
    inc l                                         ; $5a0d: $2c
    inc b                                         ; $5a0e: $04
    jp nz, $042c                                  ; $5a0f: $c2 $2c $04

    jp c, $042c                                   ; $5a12: $da $2c $04

    ldh a, [$2c]                                  ; $5a15: $f0 $2c
    inc b                                         ; $5a17: $04
    cp $2c                                        ; $5a18: $fe $2c
    inc b                                         ; $5a1a: $04
    ld a, [bc]                                    ; $5a1b: $0a
    dec l                                         ; $5a1c: $2d
    inc b                                         ; $5a1d: $04
    ld d, $2d                                     ; $5a1e: $16 $2d
    inc b                                         ; $5a20: $04
    ld [hl+], a                                   ; $5a21: $22
    dec l                                         ; $5a22: $2d
    inc b                                         ; $5a23: $04
    dec [hl]                                      ; $5a24: $35
    dec l                                         ; $5a25: $2d
    inc b                                         ; $5a26: $04
    ld c, a                                       ; $5a27: $4f
    dec l                                         ; $5a28: $2d
    inc b                                         ; $5a29: $04
    ld l, b                                       ; $5a2a: $68
    dec l                                         ; $5a2b: $2d
    inc b                                         ; $5a2c: $04
    ld a, c                                       ; $5a2d: $79
    dec l                                         ; $5a2e: $2d
    inc b                                         ; $5a2f: $04
    adc h                                         ; $5a30: $8c
    dec l                                         ; $5a31: $2d
    inc b                                         ; $5a32: $04
    sbc [hl]                                      ; $5a33: $9e
    dec l                                         ; $5a34: $2d
    inc b                                         ; $5a35: $04
    xor [hl]                                      ; $5a36: $ae
    dec l                                         ; $5a37: $2d
    inc b                                         ; $5a38: $04
    jp nz, Jump_000_042d                          ; $5a39: $c2 $2d $04

    ret c                                         ; $5a3c: $d8

    dec l                                         ; $5a3d: $2d
    inc b                                         ; $5a3e: $04
    ldh a, [$2d]                                  ; $5a3f: $f0 $2d
    inc b                                         ; $5a41: $04
    dec bc                                        ; $5a42: $0b
    ld l, $04                                     ; $5a43: $2e $04
    ld h, $2e                                     ; $5a45: $26 $2e
    inc b                                         ; $5a47: $04
    ld b, c                                       ; $5a48: $41
    ld l, $04                                     ; $5a49: $2e $04
    ld e, h                                       ; $5a4b: $5c
    ld l, $04                                     ; $5a4c: $2e $04
    ld [hl], a                                    ; $5a4e: $77
    ld l, $04                                     ; $5a4f: $2e $04
    sub d                                         ; $5a51: $92
    ld l, $04                                     ; $5a52: $2e $04
    sbc [hl]                                      ; $5a54: $9e
    ld l, $04                                     ; $5a55: $2e $04
    xor d                                         ; $5a57: $aa
    ld l, $04                                     ; $5a58: $2e $04
    or [hl]                                       ; $5a5a: $b6
    ld l, $04                                     ; $5a5b: $2e $04
    jp nz, $042e                                  ; $5a5d: $c2 $2e $04

    adc $2e                                       ; $5a60: $ce $2e
    inc b                                         ; $5a62: $04
    jp c, $042e                                   ; $5a63: $da $2e $04

    pop af                                        ; $5a66: $f1
    ld l, $04                                     ; $5a67: $2e $04
    ld [bc], a                                    ; $5a69: $02
    cpl                                           ; $5a6a: $2f
    inc b                                         ; $5a6b: $04
    inc de                                        ; $5a6c: $13
    cpl                                           ; $5a6d: $2f
    inc b                                         ; $5a6e: $04
    inc h                                         ; $5a6f: $24
    cpl                                           ; $5a70: $2f
    inc b                                         ; $5a71: $04
    jr nc, jr_047_5aa3                            ; $5a72: $30 $2f

    inc b                                         ; $5a74: $04
    ld b, c                                       ; $5a75: $41
    cpl                                           ; $5a76: $2f
    inc b                                         ; $5a77: $04
    ld d, a                                       ; $5a78: $57
    cpl                                           ; $5a79: $2f
    inc b                                         ; $5a7a: $04
    ld h, a                                       ; $5a7b: $67
    cpl                                           ; $5a7c: $2f
    inc b                                         ; $5a7d: $04
    ld a, [hl]                                    ; $5a7e: $7e
    cpl                                           ; $5a7f: $2f
    inc b                                         ; $5a80: $04
    sub l                                         ; $5a81: $95
    cpl                                           ; $5a82: $2f
    inc b                                         ; $5a83: $04
    xor h                                         ; $5a84: $ac
    cpl                                           ; $5a85: $2f
    inc b                                         ; $5a86: $04
    jp $042f                                      ; $5a87: $c3 $2f $04


    jp c, $042f                                   ; $5a8a: $da $2f $04

    pop af                                        ; $5a8d: $f1
    cpl                                           ; $5a8e: $2f
    inc b                                         ; $5a8f: $04
    ld [$0430], sp                                ; $5a90: $08 $30 $04
    ld d, $30                                     ; $5a93: $16 $30
    inc b                                         ; $5a95: $04
    dec [hl]                                      ; $5a96: $35
    jr nc, jr_047_5a9d                            ; $5a97: $30 $04

    ld b, h                                       ; $5a99: $44
    jr nc, jr_047_5aa0                            ; $5a9a: $30 $04

    ld d, e                                       ; $5a9c: $53

jr_047_5a9d:
    jr nc, jr_047_5aa3                            ; $5a9d: $30 $04

    ld h, d                                       ; $5a9f: $62

jr_047_5aa0:
    jr nc, jr_047_5aa6                            ; $5aa0: $30 $04

    ld a, d                                       ; $5aa2: $7a

jr_047_5aa3:
    jr nc, jr_047_5aa9                            ; $5aa3: $30 $04

    adc a                                         ; $5aa5: $8f

jr_047_5aa6:
    jr nc, jr_047_5aac                            ; $5aa6: $30 $04

    and l                                         ; $5aa8: $a5

jr_047_5aa9:
    jr nc, jr_047_5aaf                            ; $5aa9: $30 $04

    cp b                                          ; $5aab: $b8

jr_047_5aac:
    jr nc, jr_047_5ab2                            ; $5aac: $30 $04

    rst $08                                       ; $5aae: $cf

jr_047_5aaf:
    jr nc, jr_047_5ab5                            ; $5aaf: $30 $04

    push hl                                       ; $5ab1: $e5

jr_047_5ab2:
    jr nc, jr_047_5ab8                            ; $5ab2: $30 $04

    ei                                            ; $5ab4: $fb

jr_047_5ab5:
    jr nc, jr_047_5abb                            ; $5ab5: $30 $04

    inc c                                         ; $5ab7: $0c

jr_047_5ab8:
    ld sp, $2204                                  ; $5ab8: $31 $04 $22

jr_047_5abb:
    ld sp, $3304                                  ; $5abb: $31 $04 $33
    ld sp, $4904                                  ; $5abe: $31 $04 $49
    ld sp, $5a04                                  ; $5ac1: $31 $04 $5a
    ld sp, $6d04                                  ; $5ac4: $31 $04 $6d
    ld sp, $8104                                  ; $5ac7: $31 $04 $81
    ld sp, $9d04                                  ; $5aca: $31 $04 $9d
    ld sp, $b804                                  ; $5acd: $31 $04 $b8
    ld sp, $c704                                  ; $5ad0: $31 $04 $c7
    ld sp, $d704                                  ; $5ad3: $31 $04 $d7
    ld sp, $e704                                  ; $5ad6: $31 $04 $e7
    ld sp, $f704                                  ; $5ad9: $31 $04 $f7
    ld sp, $0804                                  ; $5adc: $31 $04 $08
    ld [hl-], a                                   ; $5adf: $32
    inc b                                         ; $5ae0: $04
    dec d                                         ; $5ae1: $15
    ld [hl-], a                                   ; $5ae2: $32
    inc b                                         ; $5ae3: $04
    dec l                                         ; $5ae4: $2d
    ld [hl-], a                                   ; $5ae5: $32
    inc b                                         ; $5ae6: $04
    ld a, $32                                     ; $5ae7: $3e $32
    inc b                                         ; $5ae9: $04
    ld c, a                                       ; $5aea: $4f
    ld [hl-], a                                   ; $5aeb: $32
    inc b                                         ; $5aec: $04
    ld h, e                                       ; $5aed: $63
    ld [hl-], a                                   ; $5aee: $32
    inc b                                         ; $5aef: $04
    ld [hl], a                                    ; $5af0: $77
    ld [hl-], a                                   ; $5af1: $32
    inc b                                         ; $5af2: $04
    adc e                                         ; $5af3: $8b
    ld [hl-], a                                   ; $5af4: $32
    inc b                                         ; $5af5: $04
    sbc [hl]                                      ; $5af6: $9e
    ld [hl-], a                                   ; $5af7: $32
    inc b                                         ; $5af8: $04
    cp b                                          ; $5af9: $b8
    ld [hl-], a                                   ; $5afa: $32
    inc b                                         ; $5afb: $04
    ret z                                         ; $5afc: $c8

    ld [hl-], a                                   ; $5afd: $32
    inc b                                         ; $5afe: $04
    db $dd                                        ; $5aff: $dd
    ld [hl-], a                                   ; $5b00: $32
    inc b                                         ; $5b01: $04
    ld hl, sp+$32                                 ; $5b02: $f8 $32
    inc b                                         ; $5b04: $04
    add hl, bc                                    ; $5b05: $09
    inc sp                                        ; $5b06: $33
    inc b                                         ; $5b07: $04
    rra                                           ; $5b08: $1f
    inc sp                                        ; $5b09: $33
    inc b                                         ; $5b0a: $04
    inc [hl]                                      ; $5b0b: $34
    inc sp                                        ; $5b0c: $33
    inc b                                         ; $5b0d: $04
    ld b, a                                       ; $5b0e: $47
    inc sp                                        ; $5b0f: $33
    inc b                                         ; $5b10: $04
    ld d, a                                       ; $5b11: $57
    inc sp                                        ; $5b12: $33
    inc b                                         ; $5b13: $04
    ld l, h                                       ; $5b14: $6c
    inc sp                                        ; $5b15: $33
    inc b                                         ; $5b16: $04
    ld a, e                                       ; $5b17: $7b
    inc sp                                        ; $5b18: $33
    inc b                                         ; $5b19: $04
    sub a                                         ; $5b1a: $97
    inc sp                                        ; $5b1b: $33
    inc b                                         ; $5b1c: $04
    and a                                         ; $5b1d: $a7
    inc sp                                        ; $5b1e: $33
    inc b                                         ; $5b1f: $04
    ld l, h                                       ; $5b20: $6c
    inc [hl]                                      ; $5b21: $34
    inc b                                         ; $5b22: $04
    sub d                                         ; $5b23: $92
    inc [hl]                                      ; $5b24: $34
    inc b                                         ; $5b25: $04
    sbc h                                         ; $5b26: $9c
    inc [hl]                                      ; $5b27: $34
    inc b                                         ; $5b28: $04
    and [hl]                                      ; $5b29: $a6
    inc [hl]                                      ; $5b2a: $34
    inc b                                         ; $5b2b: $04
    or [hl]                                       ; $5b2c: $b6
    inc [hl]                                      ; $5b2d: $34
    inc b                                         ; $5b2e: $04
    ret nz                                        ; $5b2f: $c0

    inc [hl]                                      ; $5b30: $34
    inc b                                         ; $5b31: $04
    sub $34                                       ; $5b32: $d6 $34
    inc b                                         ; $5b34: $04
    ld [c], a                                     ; $5b35: $e2
    inc [hl]                                      ; $5b36: $34
    inc b                                         ; $5b37: $04
    ldh a, [$34]                                  ; $5b38: $f0 $34
    inc b                                         ; $5b3a: $04
    rst $30                                       ; $5b3b: $f7
    inc [hl]                                      ; $5b3c: $34
    inc b                                         ; $5b3d: $04
    cp $34                                        ; $5b3e: $fe $34
    inc b                                         ; $5b40: $04
    dec b                                         ; $5b41: $05
    dec [hl]                                      ; $5b42: $35
    inc b                                         ; $5b43: $04
    inc c                                         ; $5b44: $0c
    dec [hl]                                      ; $5b45: $35
    inc b                                         ; $5b46: $04
    inc de                                        ; $5b47: $13
    dec [hl]                                      ; $5b48: $35
    inc b                                         ; $5b49: $04
    ld e, $35                                     ; $5b4a: $1e $35
    inc b                                         ; $5b4c: $04
    ld l, $35                                     ; $5b4d: $2e $35
    inc b                                         ; $5b4f: $04
    add hl, sp                                    ; $5b50: $39
    dec [hl]                                      ; $5b51: $35
    inc b                                         ; $5b52: $04
    ld b, h                                       ; $5b53: $44
    dec [hl]                                      ; $5b54: $35
    inc b                                         ; $5b55: $04
    ld c, h                                       ; $5b56: $4c
    dec [hl]                                      ; $5b57: $35
    inc b                                         ; $5b58: $04
    ld d, l                                       ; $5b59: $55
    dec [hl]                                      ; $5b5a: $35
    inc b                                         ; $5b5b: $04
    ld h, b                                       ; $5b5c: $60
    dec [hl]                                      ; $5b5d: $35
    inc b                                         ; $5b5e: $04
    ld l, d                                       ; $5b5f: $6a
    dec [hl]                                      ; $5b60: $35
    inc b                                         ; $5b61: $04
    ld [hl], d                                    ; $5b62: $72
    dec [hl]                                      ; $5b63: $35
    inc b                                         ; $5b64: $04
    ld a, a                                       ; $5b65: $7f
    dec [hl]                                      ; $5b66: $35
    inc b                                         ; $5b67: $04
    adc c                                         ; $5b68: $89
    dec [hl]                                      ; $5b69: $35
    inc b                                         ; $5b6a: $04
    adc [hl]                                      ; $5b6b: $8e
    dec [hl]                                      ; $5b6c: $35
    inc b                                         ; $5b6d: $04
    sub a                                         ; $5b6e: $97
    dec [hl]                                      ; $5b6f: $35
    inc b                                         ; $5b70: $04
    and c                                         ; $5b71: $a1
    dec [hl]                                      ; $5b72: $35
    inc b                                         ; $5b73: $04
    xor l                                         ; $5b74: $ad
    dec [hl]                                      ; $5b75: $35
    inc b                                         ; $5b76: $04
    or a                                          ; $5b77: $b7
    dec [hl]                                      ; $5b78: $35
    inc b                                         ; $5b79: $04
    cp [hl]                                       ; $5b7a: $be
    dec [hl]                                      ; $5b7b: $35
    inc b                                         ; $5b7c: $04
    jp z, Jump_000_0435                           ; $5b7d: $ca $35 $04

    db $d3                                        ; $5b80: $d3
    dec [hl]                                      ; $5b81: $35
    inc b                                         ; $5b82: $04
    call c, Call_000_0435                         ; $5b83: $dc $35 $04
    db $eb                                        ; $5b86: $eb
    dec [hl]                                      ; $5b87: $35
    inc b                                         ; $5b88: $04
    db $f4                                        ; $5b89: $f4
    dec [hl]                                      ; $5b8a: $35
    inc b                                         ; $5b8b: $04
    ld a, [$0435]                                 ; $5b8c: $fa $35 $04
    nop                                           ; $5b8f: $00
    ld [hl], $04                                  ; $5b90: $36 $04
    ld a, [bc]                                    ; $5b92: $0a
    ld [hl], $04                                  ; $5b93: $36 $04
    inc e                                         ; $5b95: $1c
    ld [hl], $04                                  ; $5b96: $36 $04
    dec h                                         ; $5b98: $25
    ld [hl], $04                                  ; $5b99: $36 $04
    jr nc, jr_047_5bd3                            ; $5b9b: $30 $36

    inc b                                         ; $5b9d: $04
    scf                                           ; $5b9e: $37
    ld [hl], $04                                  ; $5b9f: $36 $04
    ld b, e                                       ; $5ba1: $43
    ld [hl], $04                                  ; $5ba2: $36 $04
    ld c, d                                       ; $5ba4: $4a
    ld [hl], $04                                  ; $5ba5: $36 $04
    ld d, a                                       ; $5ba7: $57
    ld [hl], $04                                  ; $5ba8: $36 $04
    ld e, [hl]                                    ; $5baa: $5e
    ld [hl], $04                                  ; $5bab: $36 $04
    ld h, e                                       ; $5bad: $63
    ld [hl], $04                                  ; $5bae: $36 $04
    ld l, d                                       ; $5bb0: $6a
    ld [hl], $04                                  ; $5bb1: $36 $04
    halt                                          ; $5bb3: $76
    ld [hl], $04                                  ; $5bb4: $36 $04
    sbc l                                         ; $5bb6: $9d
    ld [hl], $04                                  ; $5bb7: $36 $04
    xor c                                         ; $5bb9: $a9
    ld [hl], $04                                  ; $5bba: $36 $04
    or h                                          ; $5bbc: $b4
    ld [hl], $04                                  ; $5bbd: $36 $04
    jp c, $0436                                   ; $5bbf: $da $36 $04

    ldh a, [$36]                                  ; $5bc2: $f0 $36
    inc b                                         ; $5bc4: $04
    rlca                                          ; $5bc5: $07
    scf                                           ; $5bc6: $37
    inc b                                         ; $5bc7: $04
    ld e, $37                                     ; $5bc8: $1e $37
    inc b                                         ; $5bca: $04
    dec [hl]                                      ; $5bcb: $35
    scf                                           ; $5bcc: $37
    inc b                                         ; $5bcd: $04
    ld c, h                                       ; $5bce: $4c
    scf                                           ; $5bcf: $37
    inc b                                         ; $5bd0: $04
    ld h, d                                       ; $5bd1: $62
    scf                                           ; $5bd2: $37

jr_047_5bd3:
    inc b                                         ; $5bd3: $04
    add l                                         ; $5bd4: $85
    scf                                           ; $5bd5: $37
    inc b                                         ; $5bd6: $04
    sbc a                                         ; $5bd7: $9f
    scf                                           ; $5bd8: $37
    inc b                                         ; $5bd9: $04
    cp b                                          ; $5bda: $b8
    scf                                           ; $5bdb: $37
    inc b                                         ; $5bdc: $04
    add $37                                       ; $5bdd: $c6 $37
    inc b                                         ; $5bdf: $04
    ret nc                                        ; $5be0: $d0

    scf                                           ; $5be1: $37
    inc b                                         ; $5be2: $04
    ldh [$37], a                                  ; $5be3: $e0 $37
    inc b                                         ; $5be5: $04
    ld a, [$0437]                                 ; $5be6: $fa $37 $04
    ld a, [bc]                                    ; $5be9: $0a
    jr c, jr_047_5bf0                             ; $5bea: $38 $04

    ld [hl+], a                                   ; $5bec: $22
    jr c, jr_047_5bf3                             ; $5bed: $38 $04

    inc l                                         ; $5bef: $2c

jr_047_5bf0:
    jr c, jr_047_5bf6                             ; $5bf0: $38 $04

    dec [hl]                                      ; $5bf2: $35

jr_047_5bf3:
    jr c, jr_047_5bf9                             ; $5bf3: $38 $04

    ld b, b                                       ; $5bf5: $40

jr_047_5bf6:
    jr c, jr_047_5bfc                             ; $5bf6: $38 $04

    ld c, h                                       ; $5bf8: $4c

jr_047_5bf9:
    jr c, jr_047_5bff                             ; $5bf9: $38 $04

    ld d, a                                       ; $5bfb: $57

jr_047_5bfc:
    jr c, jr_047_5c02                             ; $5bfc: $38 $04

    ld h, b                                       ; $5bfe: $60

jr_047_5bff:
    jr c, jr_047_5c05                             ; $5bff: $38 $04

    ld a, e                                       ; $5c01: $7b

jr_047_5c02:
    jr c, jr_047_5c08                             ; $5c02: $38 $04

    sub l                                         ; $5c04: $95

jr_047_5c05:
    jr c, @+$06                                   ; $5c05: $38 $04

    cp e                                          ; $5c07: $bb

jr_047_5c08:
    jr c, jr_047_5c0e                             ; $5c08: $38 $04

    and $38                                       ; $5c0a: $e6 $38
    inc b                                         ; $5c0c: $04
    dec d                                         ; $5c0d: $15

jr_047_5c0e:
    add hl, sp                                    ; $5c0e: $39
    inc b                                         ; $5c0f: $04
    ld a, [hl+]                                   ; $5c10: $2a
    add hl, sp                                    ; $5c11: $39
    inc b                                         ; $5c12: $04
    ld a, [hl-]                                   ; $5c13: $3a
    add hl, sp                                    ; $5c14: $39
    inc b                                         ; $5c15: $04
    ld b, h                                       ; $5c16: $44
    add hl, sp                                    ; $5c17: $39
    inc b                                         ; $5c18: $04
    ld c, l                                       ; $5c19: $4d
    add hl, sp                                    ; $5c1a: $39
    inc b                                         ; $5c1b: $04
    ld e, h                                       ; $5c1c: $5c
    add hl, sp                                    ; $5c1d: $39
    inc b                                         ; $5c1e: $04
    ld h, l                                       ; $5c1f: $65
    add hl, sp                                    ; $5c20: $39
    inc b                                         ; $5c21: $04
    ld l, e                                       ; $5c22: $6b
    add hl, sp                                    ; $5c23: $39
    inc b                                         ; $5c24: $04
    ld a, d                                       ; $5c25: $7a
    add hl, sp                                    ; $5c26: $39
    inc b                                         ; $5c27: $04
    xor a                                         ; $5c28: $af
    add hl, sp                                    ; $5c29: $39
    inc b                                         ; $5c2a: $04
    db $d3                                        ; $5c2b: $d3
    add hl, sp                                    ; $5c2c: $39
    inc b                                         ; $5c2d: $04
    rlca                                          ; $5c2e: $07
    ld a, [hl-]                                   ; $5c2f: $3a
    inc b                                         ; $5c30: $04
    inc [hl]                                      ; $5c31: $34
    ld a, [hl-]                                   ; $5c32: $3a
    inc b                                         ; $5c33: $04
    ld e, [hl]                                    ; $5c34: $5e
    ld a, [hl-]                                   ; $5c35: $3a
    inc b                                         ; $5c36: $04
    sbc b                                         ; $5c37: $98
    ld a, [hl-]                                   ; $5c38: $3a
    inc b                                         ; $5c39: $04
    rst $00                                       ; $5c3a: $c7
    ld a, [hl-]                                   ; $5c3b: $3a
    inc b                                         ; $5c3c: $04
    ei                                            ; $5c3d: $fb
    ld a, [hl-]                                   ; $5c3e: $3a
    inc b                                         ; $5c3f: $04
    ld [hl-], a                                   ; $5c40: $32
    dec sp                                        ; $5c41: $3b
    inc b                                         ; $5c42: $04
    add b                                         ; $5c43: $80
    dec sp                                        ; $5c44: $3b
    inc b                                         ; $5c45: $04
    call nz, $043b                                ; $5c46: $c4 $3b $04
    di                                            ; $5c49: $f3
    dec sp                                        ; $5c4a: $3b
    inc b                                         ; $5c4b: $04
    ld h, $3c                                     ; $5c4c: $26 $3c
    inc b                                         ; $5c4e: $04
    rlca                                          ; $5c4f: $07
    dec a                                         ; $5c50: $3d
    inc b                                         ; $5c51: $04
    inc de                                        ; $5c52: $13
    dec a                                         ; $5c53: $3d
    inc b                                         ; $5c54: $04
    jr nz, jr_047_5c94                            ; $5c55: $20 $3d

    inc b                                         ; $5c57: $04
    add hl, hl                                    ; $5c58: $29
    dec a                                         ; $5c59: $3d
    inc b                                         ; $5c5a: $04
    jr nc, jr_047_5c9a                            ; $5c5b: $30 $3d

    inc b                                         ; $5c5d: $04
    dec sp                                        ; $5c5e: $3b
    dec a                                         ; $5c5f: $3d
    inc b                                         ; $5c60: $04
    ld b, e                                       ; $5c61: $43
    dec a                                         ; $5c62: $3d
    inc b                                         ; $5c63: $04
    ld c, h                                       ; $5c64: $4c
    dec a                                         ; $5c65: $3d
    inc b                                         ; $5c66: $04
    ld d, h                                       ; $5c67: $54
    dec a                                         ; $5c68: $3d
    inc b                                         ; $5c69: $04
    ld e, l                                       ; $5c6a: $5d
    dec a                                         ; $5c6b: $3d
    inc b                                         ; $5c6c: $04
    ld h, e                                       ; $5c6d: $63
    dec a                                         ; $5c6e: $3d
    inc b                                         ; $5c6f: $04
    ld [hl], b                                    ; $5c70: $70
    dec a                                         ; $5c71: $3d
    inc b                                         ; $5c72: $04
    ld a, b                                       ; $5c73: $78
    dec a                                         ; $5c74: $3d
    inc b                                         ; $5c75: $04
    ld a, [hl]                                    ; $5c76: $7e
    dec a                                         ; $5c77: $3d
    inc b                                         ; $5c78: $04
    add h                                         ; $5c79: $84
    dec a                                         ; $5c7a: $3d
    inc b                                         ; $5c7b: $04
    adc e                                         ; $5c7c: $8b
    dec a                                         ; $5c7d: $3d
    inc b                                         ; $5c7e: $04
    sub h                                         ; $5c7f: $94
    dec a                                         ; $5c80: $3d
    inc b                                         ; $5c81: $04
    sbc c                                         ; $5c82: $99
    dec a                                         ; $5c83: $3d
    inc b                                         ; $5c84: $04
    and e                                         ; $5c85: $a3
    dec a                                         ; $5c86: $3d
    inc b                                         ; $5c87: $04
    xor l                                         ; $5c88: $ad
    dec a                                         ; $5c89: $3d
    inc b                                         ; $5c8a: $04
    cp b                                          ; $5c8b: $b8
    dec a                                         ; $5c8c: $3d
    inc b                                         ; $5c8d: $04
    cp l                                          ; $5c8e: $bd
    dec a                                         ; $5c8f: $3d
    inc b                                         ; $5c90: $04
    call nz, Call_000_043d                        ; $5c91: $c4 $3d $04

jr_047_5c94:
    call z, Call_000_043d                         ; $5c94: $cc $3d $04
    db $d3                                        ; $5c97: $d3
    dec a                                         ; $5c98: $3d
    inc b                                         ; $5c99: $04

jr_047_5c9a:
    jp c, Jump_000_043d                           ; $5c9a: $da $3d $04

    rst $18                                       ; $5c9d: $df
    dec a                                         ; $5c9e: $3d
    inc b                                         ; $5c9f: $04
    and $3d                                       ; $5ca0: $e6 $3d
    inc b                                         ; $5ca2: $04
    pop af                                        ; $5ca3: $f1
    dec a                                         ; $5ca4: $3d
    inc b                                         ; $5ca5: $04
    ld a, [$043d]                                 ; $5ca6: $fa $3d $04
    nop                                           ; $5ca9: $00
    ld a, $04                                     ; $5caa: $3e $04
    add hl, bc                                    ; $5cac: $09
    ld a, $04                                     ; $5cad: $3e $04
    dec d                                         ; $5caf: $15
    ld a, $04                                     ; $5cb0: $3e $04
    rra                                           ; $5cb2: $1f
    ld a, $04                                     ; $5cb3: $3e $04

Call_047_5cb5:
    daa                                           ; $5cb5: $27
    ld a, $04                                     ; $5cb6: $3e $04
    ld sp, $043e                                  ; $5cb8: $31 $3e $04
    dec a                                         ; $5cbb: $3d
    ld a, $04                                     ; $5cbc: $3e $04
    ld b, a                                       ; $5cbe: $47
    ld a, $04                                     ; $5cbf: $3e $04
    ld d, d                                       ; $5cc1: $52
    ld a, $04                                     ; $5cc2: $3e $04
    ld e, c                                       ; $5cc4: $59
    ld a, $04                                     ; $5cc5: $3e $04
    ld h, e                                       ; $5cc7: $63
    ld a, $04                                     ; $5cc8: $3e $04
    ld l, l                                       ; $5cca: $6d
    ld a, $04                                     ; $5ccb: $3e $04
    ld [hl], h                                    ; $5ccd: $74
    ld a, $04                                     ; $5cce: $3e $04
    ld a, e                                       ; $5cd0: $7b
    ld a, $04                                     ; $5cd1: $3e $04
    add e                                         ; $5cd3: $83
    ld a, $04                                     ; $5cd4: $3e $04
    adc [hl]                                      ; $5cd6: $8e
    ld a, $04                                     ; $5cd7: $3e $04
    sbc e                                         ; $5cd9: $9b
    ld a, $04                                     ; $5cda: $3e $04
    and d                                         ; $5cdc: $a2
    ld a, $04                                     ; $5cdd: $3e $04
    xor d                                         ; $5cdf: $aa
    ld a, $04                                     ; $5ce0: $3e $04
    or e                                          ; $5ce2: $b3
    ld a, $04                                     ; $5ce3: $3e $04
    cp a                                          ; $5ce5: $bf
    ld a, $04                                     ; $5ce6: $3e $04
    call z, $043e                                 ; $5ce8: $cc $3e $04
    ld [$043e], a                                 ; $5ceb: $ea $3e $04
    add hl, bc                                    ; $5cee: $09
    ccf                                           ; $5cef: $3f
    inc b                                         ; $5cf0: $04
    ld b, a                                       ; $5cf1: $47
    ccf                                           ; $5cf2: $3f
    inc b                                         ; $5cf3: $04
    ld [hl], l                                    ; $5cf4: $75
    ccf                                           ; $5cf5: $3f
    inc b                                         ; $5cf6: $04
    and c                                         ; $5cf7: $a1
    ccf                                           ; $5cf8: $3f
    dec b                                         ; $5cf9: $05
    ld bc, $0500                                  ; $5cfa: $01 $00 $05
    jr c, jr_047_5cff                             ; $5cfd: $38 $00

jr_047_5cff:
    dec b                                         ; $5cff: $05
    ld c, a                                       ; $5d00: $4f
    nop                                           ; $5d01: $00
    dec b                                         ; $5d02: $05
    add [hl]                                      ; $5d03: $86
    nop                                           ; $5d04: $00

Jump_047_5d05:
    dec b                                         ; $5d05: $05
    or l                                          ; $5d06: $b5
    nop                                           ; $5d07: $00
    dec b                                         ; $5d08: $05
    sbc $00                                       ; $5d09: $de $00
    dec b                                         ; $5d0b: $05
    nop                                           ; $5d0c: $00
    ld bc, $3905                                  ; $5d0d: $01 $05 $39
    ld bc, $6405                                  ; $5d10: $01 $05 $64
    ld bc, $9f05                                  ; $5d13: $01 $05 $9f
    ld bc, $cd05                                  ; $5d16: $01 $05 $cd
    ld bc, $0c05                                  ; $5d19: $01 $05 $0c
    ld [bc], a                                    ; $5d1c: $02
    dec b                                         ; $5d1d: $05
    dec a                                         ; $5d1e: $3d
    ld [bc], a                                    ; $5d1f: $02
    dec b                                         ; $5d20: $05
    ld l, h                                       ; $5d21: $6c
    ld [bc], a                                    ; $5d22: $02
    dec b                                         ; $5d23: $05
    sbc b                                         ; $5d24: $98
    ld [bc], a                                    ; $5d25: $02
    dec b                                         ; $5d26: $05
    adc $02                                       ; $5d27: $ce $02
    dec b                                         ; $5d29: $05
    cp $02                                        ; $5d2a: $fe $02
    dec b                                         ; $5d2c: $05
    add hl, hl                                    ; $5d2d: $29
    inc bc                                        ; $5d2e: $03
    dec b                                         ; $5d2f: $05
    ld l, e                                       ; $5d30: $6b
    inc bc                                        ; $5d31: $03
    dec b                                         ; $5d32: $05
    adc h                                         ; $5d33: $8c
    inc bc                                        ; $5d34: $03
    dec b                                         ; $5d35: $05
    or b                                          ; $5d36: $b0
    inc bc                                        ; $5d37: $03
    dec b                                         ; $5d38: $05
    rst $10                                       ; $5d39: $d7
    inc bc                                        ; $5d3a: $03
    dec b                                         ; $5d3b: $05
    cp $03                                        ; $5d3c: $fe $03
    dec b                                         ; $5d3e: $05
    inc h                                         ; $5d3f: $24
    inc b                                         ; $5d40: $04
    dec b                                         ; $5d41: $05
    ld b, [hl]                                    ; $5d42: $46
    inc b                                         ; $5d43: $04
    dec b                                         ; $5d44: $05
    ld [hl], d                                    ; $5d45: $72
    inc b                                         ; $5d46: $04
    dec b                                         ; $5d47: $05
    xor d                                         ; $5d48: $aa
    inc b                                         ; $5d49: $04
    dec b                                         ; $5d4a: $05
    rst $20                                       ; $5d4b: $e7
    inc b                                         ; $5d4c: $04
    dec b                                         ; $5d4d: $05
    dec hl                                        ; $5d4e: $2b
    dec b                                         ; $5d4f: $05
    dec b                                         ; $5d50: $05
    ld b, a                                       ; $5d51: $47
    dec b                                         ; $5d52: $05
    dec b                                         ; $5d53: $05
    add [hl]                                      ; $5d54: $86
    dec b                                         ; $5d55: $05
    dec b                                         ; $5d56: $05
    xor [hl]                                      ; $5d57: $ae
    dec b                                         ; $5d58: $05
    dec b                                         ; $5d59: $05
    rlc l                                         ; $5d5a: $cb $05
    dec b                                         ; $5d5c: $05
    db $fd                                        ; $5d5d: $fd
    dec b                                         ; $5d5e: $05
    dec b                                         ; $5d5f: $05
    inc l                                         ; $5d60: $2c
    ld b, $05                                     ; $5d61: $06 $05
    ld e, b                                       ; $5d63: $58
    ld b, $05                                     ; $5d64: $06 $05
    adc l                                         ; $5d66: $8d
    ld b, $05                                     ; $5d67: $06 $05
    jp nz, $0506                                  ; $5d69: $c2 $06 $05

    push hl                                       ; $5d6c: $e5
    ld b, $05                                     ; $5d6d: $06 $05
    dec de                                        ; $5d6f: $1b
    rlca                                          ; $5d70: $07
    dec b                                         ; $5d71: $05
    ld c, l                                       ; $5d72: $4d
    rlca                                          ; $5d73: $07
    dec b                                         ; $5d74: $05
    add a                                         ; $5d75: $87
    rlca                                          ; $5d76: $07
    dec b                                         ; $5d77: $05
    or a                                          ; $5d78: $b7
    rlca                                          ; $5d79: $07
    dec b                                         ; $5d7a: $05
    sub $07                                       ; $5d7b: $d6 $07
    dec b                                         ; $5d7d: $05
    rlca                                          ; $5d7e: $07
    ld [$5805], sp                                ; $5d7f: $08 $05 $58
    ld [$4105], sp                                ; $5d82: $08 $05 $41
    add hl, bc                                    ; $5d85: $09
    dec b                                         ; $5d86: $05
    pop bc                                        ; $5d87: $c1
    add hl, bc                                    ; $5d88: $09
    dec b                                         ; $5d89: $05
    ld b, h                                       ; $5d8a: $44

Call_047_5d8b:
    ld a, [bc]                                    ; $5d8b: $0a
    dec b                                         ; $5d8c: $05
    rst $10                                       ; $5d8d: $d7
    ld a, [bc]                                    ; $5d8e: $0a
    dec b                                         ; $5d8f: $05
    dec [hl]                                      ; $5d90: $35
    dec bc                                        ; $5d91: $0b
    dec b                                         ; $5d92: $05
    ld h, $0c                                     ; $5d93: $26 $0c
    dec b                                         ; $5d95: $05
    or b                                          ; $5d96: $b0
    inc c                                         ; $5d97: $0c
    dec b                                         ; $5d98: $05
    di                                            ; $5d99: $f3
    dec c                                         ; $5d9a: $0d
    dec b                                         ; $5d9b: $05
    add d                                         ; $5d9c: $82
    ld c, $05                                     ; $5d9d: $0e $05
    or d                                          ; $5d9f: $b2
    ld c, $05                                     ; $5da0: $0e $05
    db $fc                                        ; $5da2: $fc
    ld c, $05                                     ; $5da3: $0e $05
    daa                                           ; $5da5: $27
    rrca                                          ; $5da6: $0f
    dec b                                         ; $5da7: $05
    ld e, c                                       ; $5da8: $59
    rrca                                          ; $5da9: $0f
    dec b                                         ; $5daa: $05
    ld a, [hl]                                    ; $5dab: $7e
    rrca                                          ; $5dac: $0f
    dec b                                         ; $5dad: $05
    or e                                          ; $5dae: $b3
    rrca                                          ; $5daf: $0f
    dec b                                         ; $5db0: $05
    pop de                                        ; $5db1: $d1
    rrca                                          ; $5db2: $0f
    dec b                                         ; $5db3: $05
    ld a, [$050f]                                 ; $5db4: $fa $0f $05
    ld a, [hl+]                                   ; $5db7: $2a
    db $10                                        ; $5db8: $10
    dec b                                         ; $5db9: $05
    ld c, [hl]                                    ; $5dba: $4e
    db $10                                        ; $5dbb: $10
    dec b                                         ; $5dbc: $05
    ld h, [hl]                                    ; $5dbd: $66
    db $10                                        ; $5dbe: $10
    dec b                                         ; $5dbf: $05
    adc l                                         ; $5dc0: $8d
    db $10                                        ; $5dc1: $10
    dec b                                         ; $5dc2: $05
    and e                                         ; $5dc3: $a3
    db $10                                        ; $5dc4: $10
    dec b                                         ; $5dc5: $05
    or [hl]                                       ; $5dc6: $b6
    db $10                                        ; $5dc7: $10
    dec b                                         ; $5dc8: $05
    db $d3                                        ; $5dc9: $d3
    db $10                                        ; $5dca: $10
    dec b                                         ; $5dcb: $05
    ei                                            ; $5dcc: $fb
    db $10                                        ; $5dcd: $10
    dec b                                         ; $5dce: $05
    ld a, [hl+]                                   ; $5dcf: $2a
    ld de, $4305                                  ; $5dd0: $11 $05 $43
    ld de, $6e05                                  ; $5dd3: $11 $05 $6e
    ld de, $9805                                  ; $5dd6: $11 $05 $98
    ld de, $b905                                  ; $5dd9: $11 $05 $b9
    ld de, $e905                                  ; $5ddc: $11 $05 $e9
    ld de, $0305                                  ; $5ddf: $11 $05 $03
    ld [de], a                                    ; $5de2: $12
    dec b                                         ; $5de3: $05
    jr z, jr_047_5df8                             ; $5de4: $28 $12

    dec b                                         ; $5de6: $05
    ccf                                           ; $5de7: $3f
    ld [de], a                                    ; $5de8: $12
    dec b                                         ; $5de9: $05
    ld l, c                                       ; $5dea: $69
    ld [de], a                                    ; $5deb: $12
    dec b                                         ; $5dec: $05
    sub h                                         ; $5ded: $94
    ld [de], a                                    ; $5dee: $12
    dec b                                         ; $5def: $05
    or h                                          ; $5df0: $b4
    ld [de], a                                    ; $5df1: $12
    dec b                                         ; $5df2: $05
    jp c, Jump_000_0512                           ; $5df3: $da $12 $05

    db $fd                                        ; $5df6: $fd
    ld [de], a                                    ; $5df7: $12

jr_047_5df8:
    dec b                                         ; $5df8: $05
    ld h, $13                                     ; $5df9: $26 $13
    dec b                                         ; $5dfb: $05
    ld e, e                                       ; $5dfc: $5b
    inc de                                        ; $5dfd: $13
    dec b                                         ; $5dfe: $05
    adc l                                         ; $5dff: $8d
    inc de                                        ; $5e00: $13
    dec b                                         ; $5e01: $05
    or h                                          ; $5e02: $b4
    inc de                                        ; $5e03: $13
    dec b                                         ; $5e04: $05
    push de                                       ; $5e05: $d5
    inc de                                        ; $5e06: $13
    dec b                                         ; $5e07: $05
    pop af                                        ; $5e08: $f1
    inc de                                        ; $5e09: $13
    dec b                                         ; $5e0a: $05
    cp $13                                        ; $5e0b: $fe $13
    dec b                                         ; $5e0d: $05
    ld [hl-], a                                   ; $5e0e: $32
    inc d                                         ; $5e0f: $14
    dec b                                         ; $5e10: $05
    ld d, a                                       ; $5e11: $57
    inc d                                         ; $5e12: $14
    dec b                                         ; $5e13: $05
    ld a, e                                       ; $5e14: $7b
    inc d                                         ; $5e15: $14
    dec b                                         ; $5e16: $05
    xor c                                         ; $5e17: $a9
    inc d                                         ; $5e18: $14
    dec b                                         ; $5e19: $05
    rst $10                                       ; $5e1a: $d7
    inc d                                         ; $5e1b: $14
    dec b                                         ; $5e1c: $05
    rst $28                                       ; $5e1d: $ef
    inc d                                         ; $5e1e: $14
    dec b                                         ; $5e1f: $05
    add hl, de                                    ; $5e20: $19
    dec d                                         ; $5e21: $15
    dec b                                         ; $5e22: $05
    dec hl                                        ; $5e23: $2b
    dec d                                         ; $5e24: $15
    dec b                                         ; $5e25: $05
    halt                                          ; $5e26: $76
    dec d                                         ; $5e27: $15
    dec b                                         ; $5e28: $05
    sub h                                         ; $5e29: $94
    dec d                                         ; $5e2a: $15
    dec b                                         ; $5e2b: $05
    add $15                                       ; $5e2c: $c6 $15
    dec b                                         ; $5e2e: $05
    rst $30                                       ; $5e2f: $f7
    dec d                                         ; $5e30: $15
    dec b                                         ; $5e31: $05
    dec h                                         ; $5e32: $25
    ld d, $05                                     ; $5e33: $16 $05
    ld e, b                                       ; $5e35: $58
    ld d, $05                                     ; $5e36: $16 $05
    add b                                         ; $5e38: $80
    ld d, $05                                     ; $5e39: $16 $05
    cp e                                          ; $5e3b: $bb
    ld d, $05                                     ; $5e3c: $16 $05
    db $dd                                        ; $5e3e: $dd
    ld d, $05                                     ; $5e3f: $16 $05
    ld [de], a                                    ; $5e41: $12
    rla                                           ; $5e42: $17
    dec b                                         ; $5e43: $05
    ld sp, $0517                                  ; $5e44: $31 $17 $05
    ld h, c                                       ; $5e47: $61
    rla                                           ; $5e48: $17
    dec b                                         ; $5e49: $05
    add a                                         ; $5e4a: $87
    rla                                           ; $5e4b: $17
    dec b                                         ; $5e4c: $05
    sub $17                                       ; $5e4d: $d6 $17
    dec b                                         ; $5e4f: $05
    ld c, $18                                     ; $5e50: $0e $18
    dec b                                         ; $5e52: $05
    ld b, h                                       ; $5e53: $44
    jr @+$07                                      ; $5e54: $18 $05

    ld l, [hl]                                    ; $5e56: $6e
    jr @+$07                                      ; $5e57: $18 $05

    add d                                         ; $5e59: $82
    jr @+$07                                      ; $5e5a: $18 $05

    add h                                         ; $5e5c: $84
    jr @+$07                                      ; $5e5d: $18 $05

    sub c                                         ; $5e5f: $91
    jr @+$07                                      ; $5e60: $18 $05

    sbc e                                         ; $5e62: $9b
    jr @+$07                                      ; $5e63: $18 $05

    sbc l                                         ; $5e65: $9d
    jr @+$07                                      ; $5e66: $18 $05

    xor c                                         ; $5e68: $a9
    jr @+$07                                      ; $5e69: $18 $05

    or e                                          ; $5e6b: $b3
    jr @+$07                                      ; $5e6c: $18 $05

    or l                                          ; $5e6e: $b5
    jr @+$07                                      ; $5e6f: $18 $05

    ret nz                                        ; $5e71: $c0

    jr jr_047_5e79                                ; $5e72: $18 $05

    ret                                           ; $5e74: $c9


    jr @+$07                                      ; $5e75: $18 $05

    rr b                                          ; $5e77: $cb $18

jr_047_5e79:
    dec b                                         ; $5e79: $05
    call nc, Call_000_0518                        ; $5e7a: $d4 $18 $05
    db $dd                                        ; $5e7d: $dd
    jr @+$07                                      ; $5e7e: $18 $05

    and $18                                       ; $5e80: $e6 $18
    dec b                                         ; $5e82: $05
    pop af                                        ; $5e83: $f1
    jr @+$07                                      ; $5e84: $18 $05

    ei                                            ; $5e86: $fb
    jr jr_047_5e8e                                ; $5e87: $18 $05

    db $fd                                        ; $5e89: $fd
    jr jr_047_5e91                                ; $5e8a: $18 $05

    rlca                                          ; $5e8c: $07
    add hl, de                                    ; $5e8d: $19

jr_047_5e8e:
    dec b                                         ; $5e8e: $05
    db $10                                        ; $5e8f: $10
    add hl, de                                    ; $5e90: $19

jr_047_5e91:
    dec b                                         ; $5e91: $05
    jr jr_047_5ead                                ; $5e92: $18 $19

    dec b                                         ; $5e94: $05
    ld [hl+], a                                   ; $5e95: $22
    add hl, de                                    ; $5e96: $19
    dec b                                         ; $5e97: $05
    inc h                                         ; $5e98: $24
    add hl, de                                    ; $5e99: $19
    dec b                                         ; $5e9a: $05
    dec [hl]                                      ; $5e9b: $35
    add hl, de                                    ; $5e9c: $19
    dec b                                         ; $5e9d: $05
    ccf                                           ; $5e9e: $3f
    add hl, de                                    ; $5e9f: $19
    dec b                                         ; $5ea0: $05
    ld b, c                                       ; $5ea1: $41
    add hl, de                                    ; $5ea2: $19
    dec b                                         ; $5ea3: $05
    ld c, d                                       ; $5ea4: $4a
    add hl, de                                    ; $5ea5: $19
    dec b                                         ; $5ea6: $05
    ld d, d                                       ; $5ea7: $52
    add hl, de                                    ; $5ea8: $19
    dec b                                         ; $5ea9: $05
    ld d, h                                       ; $5eaa: $54
    add hl, de                                    ; $5eab: $19
    dec b                                         ; $5eac: $05

jr_047_5ead:
    ld h, h                                       ; $5ead: $64
    add hl, de                                    ; $5eae: $19
    dec b                                         ; $5eaf: $05
    ld l, h                                       ; $5eb0: $6c
    add hl, de                                    ; $5eb1: $19
    dec b                                         ; $5eb2: $05
    ld [hl], h                                    ; $5eb3: $74
    add hl, de                                    ; $5eb4: $19
    dec b                                         ; $5eb5: $05
    ld a, e                                       ; $5eb6: $7b
    add hl, de                                    ; $5eb7: $19
    dec b                                         ; $5eb8: $05
    ld a, l                                       ; $5eb9: $7d
    add hl, de                                    ; $5eba: $19
    dec b                                         ; $5ebb: $05
    add d                                         ; $5ebc: $82
    add hl, de                                    ; $5ebd: $19
    dec b                                         ; $5ebe: $05
    adc h                                         ; $5ebf: $8c
    add hl, de                                    ; $5ec0: $19
    dec b                                         ; $5ec1: $05
    sub [hl]                                      ; $5ec2: $96
    add hl, de                                    ; $5ec3: $19
    dec b                                         ; $5ec4: $05
    and b                                         ; $5ec5: $a0
    add hl, de                                    ; $5ec6: $19
    dec b                                         ; $5ec7: $05
    xor b                                         ; $5ec8: $a8
    add hl, de                                    ; $5ec9: $19
    dec b                                         ; $5eca: $05
    xor d                                         ; $5ecb: $aa
    add hl, de                                    ; $5ecc: $19
    dec b                                         ; $5ecd: $05
    xor h                                         ; $5ece: $ac
    add hl, de                                    ; $5ecf: $19
    dec b                                         ; $5ed0: $05
    call nz, $0519                                ; $5ed1: $c4 $19 $05
    add $19                                       ; $5ed4: $c6 $19
    dec b                                         ; $5ed6: $05
    call nc, $0519                                ; $5ed7: $d4 $19 $05
    db $dd                                        ; $5eda: $dd
    add hl, de                                    ; $5edb: $19
    dec b                                         ; $5edc: $05
    push hl                                       ; $5edd: $e5
    add hl, de                                    ; $5ede: $19
    dec b                                         ; $5edf: $05
    rst $20                                       ; $5ee0: $e7
    add hl, de                                    ; $5ee1: $19
    dec b                                         ; $5ee2: $05
    rst $28                                       ; $5ee3: $ef
    add hl, de                                    ; $5ee4: $19
    dec b                                         ; $5ee5: $05
    ld sp, hl                                     ; $5ee6: $f9
    add hl, de                                    ; $5ee7: $19
    dec b                                         ; $5ee8: $05
    ei                                            ; $5ee9: $fb
    add hl, de                                    ; $5eea: $19
    dec b                                         ; $5eeb: $05
    dec b                                         ; $5eec: $05
    ld a, [de]                                    ; $5eed: $1a
    dec b                                         ; $5eee: $05
    ld c, $1a                                     ; $5eef: $0e $1a
    dec b                                         ; $5ef1: $05
    db $10                                        ; $5ef2: $10
    ld a, [de]                                    ; $5ef3: $1a
    dec b                                         ; $5ef4: $05
    inc h                                         ; $5ef5: $24
    ld a, [de]                                    ; $5ef6: $1a
    dec b                                         ; $5ef7: $05
    cpl                                           ; $5ef8: $2f
    ld a, [de]                                    ; $5ef9: $1a
    dec b                                         ; $5efa: $05
    add hl, sp                                    ; $5efb: $39
    ld a, [de]                                    ; $5efc: $1a
    dec b                                         ; $5efd: $05
    ld b, b                                       ; $5efe: $40
    ld a, [de]                                    ; $5eff: $1a
    dec b                                         ; $5f00: $05
    ld c, b                                       ; $5f01: $48
    ld a, [de]                                    ; $5f02: $1a
    dec b                                         ; $5f03: $05
    ld d, d                                       ; $5f04: $52
    ld a, [de]                                    ; $5f05: $1a
    dec b                                         ; $5f06: $05
    ld e, e                                       ; $5f07: $5b
    ld a, [de]                                    ; $5f08: $1a
    dec b                                         ; $5f09: $05
    ld e, l                                       ; $5f0a: $5d
    ld a, [de]                                    ; $5f0b: $1a
    dec b                                         ; $5f0c: $05
    ld e, a                                       ; $5f0d: $5f
    ld a, [de]                                    ; $5f0e: $1a
    dec b                                         ; $5f0f: $05
    ld h, c                                       ; $5f10: $61
    ld a, [de]                                    ; $5f11: $1a
    dec b                                         ; $5f12: $05
    ld [hl], h                                    ; $5f13: $74
    ld a, [de]                                    ; $5f14: $1a
    dec b                                         ; $5f15: $05
    halt                                          ; $5f16: $76
    ld a, [de]                                    ; $5f17: $1a
    dec b                                         ; $5f18: $05
    add c                                         ; $5f19: $81
    ld a, [de]                                    ; $5f1a: $1a
    dec b                                         ; $5f1b: $05
    adc d                                         ; $5f1c: $8a
    ld a, [de]                                    ; $5f1d: $1a
    dec b                                         ; $5f1e: $05
    sub h                                         ; $5f1f: $94
    ld a, [de]                                    ; $5f20: $1a
    dec b                                         ; $5f21: $05
    sbc h                                         ; $5f22: $9c
    ld a, [de]                                    ; $5f23: $1a
    dec b                                         ; $5f24: $05
    and [hl]                                      ; $5f25: $a6
    ld a, [de]                                    ; $5f26: $1a
    dec b                                         ; $5f27: $05
    or c                                          ; $5f28: $b1
    ld a, [de]                                    ; $5f29: $1a
    dec b                                         ; $5f2a: $05
    cp d                                          ; $5f2b: $ba
    ld a, [de]                                    ; $5f2c: $1a
    dec b                                         ; $5f2d: $05
    jp $051a                                      ; $5f2e: $c3 $1a $05


    push bc                                       ; $5f31: $c5
    ld a, [de]                                    ; $5f32: $1a
    dec b                                         ; $5f33: $05
    push de                                       ; $5f34: $d5
    ld a, [de]                                    ; $5f35: $1a
    dec b                                         ; $5f36: $05
    call c, $051a                                 ; $5f37: $dc $1a $05
    sbc $1a                                       ; $5f3a: $de $1a
    dec b                                         ; $5f3c: $05
    add sp, $1a                                   ; $5f3d: $e8 $1a
    dec b                                         ; $5f3f: $05
    ldh a, [rNR30]                                ; $5f40: $f0 $1a
    dec b                                         ; $5f42: $05
    ld a, [c]                                     ; $5f43: $f2
    ld a, [de]                                    ; $5f44: $1a
    dec b                                         ; $5f45: $05
    ld a, [$051a]                                 ; $5f46: $fa $1a $05
    inc bc                                        ; $5f49: $03
    dec de                                        ; $5f4a: $1b
    dec b                                         ; $5f4b: $05
    inc c                                         ; $5f4c: $0c
    dec de                                        ; $5f4d: $1b
    dec b                                         ; $5f4e: $05
    dec d                                         ; $5f4f: $15
    dec de                                        ; $5f50: $1b
    dec b                                         ; $5f51: $05
    ld e, $1b                                     ; $5f52: $1e $1b
    dec b                                         ; $5f54: $05
    jr nz, jr_047_5f72                            ; $5f55: $20 $1b

    dec b                                         ; $5f57: $05
    ld a, [hl+]                                   ; $5f58: $2a
    dec de                                        ; $5f59: $1b
    dec b                                         ; $5f5a: $05
    inc sp                                        ; $5f5b: $33
    dec de                                        ; $5f5c: $1b
    dec b                                         ; $5f5d: $05
    dec a                                         ; $5f5e: $3d
    dec de                                        ; $5f5f: $1b
    dec b                                         ; $5f60: $05
    ld b, h                                       ; $5f61: $44
    dec de                                        ; $5f62: $1b
    dec b                                         ; $5f63: $05
    ld c, [hl]                                    ; $5f64: $4e
    dec de                                        ; $5f65: $1b
    dec b                                         ; $5f66: $05
    ld d, [hl]                                    ; $5f67: $56
    dec de                                        ; $5f68: $1b
    dec b                                         ; $5f69: $05
    ld e, a                                       ; $5f6a: $5f
    dec de                                        ; $5f6b: $1b
    dec b                                         ; $5f6c: $05
    ld l, c                                       ; $5f6d: $69
    dec de                                        ; $5f6e: $1b
    dec b                                         ; $5f6f: $05
    halt                                          ; $5f70: $76
    dec de                                        ; $5f71: $1b

jr_047_5f72:
    dec b                                         ; $5f72: $05
    add b                                         ; $5f73: $80
    dec de                                        ; $5f74: $1b
    dec b                                         ; $5f75: $05
    adc c                                         ; $5f76: $89
    dec de                                        ; $5f77: $1b
    dec b                                         ; $5f78: $05
    adc e                                         ; $5f79: $8b
    dec de                                        ; $5f7a: $1b
    dec b                                         ; $5f7b: $05
    sub h                                         ; $5f7c: $94
    dec de                                        ; $5f7d: $1b
    dec b                                         ; $5f7e: $05
    sbc e                                         ; $5f7f: $9b
    dec de                                        ; $5f80: $1b
    dec b                                         ; $5f81: $05
    and l                                         ; $5f82: $a5
    dec de                                        ; $5f83: $1b
    dec b                                         ; $5f84: $05
    xor a                                         ; $5f85: $af
    dec de                                        ; $5f86: $1b
    dec b                                         ; $5f87: $05
    or a                                          ; $5f88: $b7
    dec de                                        ; $5f89: $1b
    dec b                                         ; $5f8a: $05
    cp c                                          ; $5f8b: $b9
    dec de                                        ; $5f8c: $1b
    dec b                                         ; $5f8d: $05
    adc $1b                                       ; $5f8e: $ce $1b
    dec b                                         ; $5f90: $05
    reti                                          ; $5f91: $d9


    dec de                                        ; $5f92: $1b
    dec b                                         ; $5f93: $05
    db $e3                                        ; $5f94: $e3
    dec de                                        ; $5f95: $1b
    dec b                                         ; $5f96: $05
    db $ec                                        ; $5f97: $ec
    dec de                                        ; $5f98: $1b
    dec b                                         ; $5f99: $05
    push af                                       ; $5f9a: $f5
    dec de                                        ; $5f9b: $1b
    dec b                                         ; $5f9c: $05
    cp $1b                                        ; $5f9d: $fe $1b
    dec b                                         ; $5f9f: $05
    dec b                                         ; $5fa0: $05
    inc e                                         ; $5fa1: $1c
    dec b                                         ; $5fa2: $05
    rrca                                          ; $5fa3: $0f
    inc e                                         ; $5fa4: $1c
    dec b                                         ; $5fa5: $05
    rla                                           ; $5fa6: $17
    inc e                                         ; $5fa7: $1c
    dec b                                         ; $5fa8: $05
    ld e, $1c                                     ; $5fa9: $1e $1c
    dec b                                         ; $5fab: $05
    ld h, $1c                                     ; $5fac: $26 $1c
    dec b                                         ; $5fae: $05
    cpl                                           ; $5faf: $2f
    inc e                                         ; $5fb0: $1c
    dec b                                         ; $5fb1: $05
    add hl, sp                                    ; $5fb2: $39
    inc e                                         ; $5fb3: $1c
    dec b                                         ; $5fb4: $05
    dec sp                                        ; $5fb5: $3b
    inc e                                         ; $5fb6: $1c
    dec b                                         ; $5fb7: $05
    dec a                                         ; $5fb8: $3d
    inc e                                         ; $5fb9: $1c
    dec b                                         ; $5fba: $05
    ccf                                           ; $5fbb: $3f
    inc e                                         ; $5fbc: $1c
    dec b                                         ; $5fbd: $05
    ld b, c                                       ; $5fbe: $41
    inc e                                         ; $5fbf: $1c
    dec b                                         ; $5fc0: $05
    ld b, e                                       ; $5fc1: $43
    inc e                                         ; $5fc2: $1c
    dec b                                         ; $5fc3: $05
    ld b, l                                       ; $5fc4: $45
    inc e                                         ; $5fc5: $1c
    dec b                                         ; $5fc6: $05
    ld b, a                                       ; $5fc7: $47
    inc e                                         ; $5fc8: $1c
    dec b                                         ; $5fc9: $05
    ld c, c                                       ; $5fca: $49
    inc e                                         ; $5fcb: $1c
    dec b                                         ; $5fcc: $05
    ld c, e                                       ; $5fcd: $4b
    inc e                                         ; $5fce: $1c
    dec b                                         ; $5fcf: $05
    ld c, l                                       ; $5fd0: $4d
    inc e                                         ; $5fd1: $1c
    dec b                                         ; $5fd2: $05
    ld c, a                                       ; $5fd3: $4f
    inc e                                         ; $5fd4: $1c
    dec b                                         ; $5fd5: $05
    ld d, c                                       ; $5fd6: $51
    inc e                                         ; $5fd7: $1c
    dec b                                         ; $5fd8: $05
    ld d, e                                       ; $5fd9: $53
    inc e                                         ; $5fda: $1c
    dec b                                         ; $5fdb: $05
    ld d, l                                       ; $5fdc: $55
    inc e                                         ; $5fdd: $1c
    dec b                                         ; $5fde: $05
    ld d, a                                       ; $5fdf: $57
    inc e                                         ; $5fe0: $1c
    dec b                                         ; $5fe1: $05
    ld e, c                                       ; $5fe2: $59
    inc e                                         ; $5fe3: $1c
    dec b                                         ; $5fe4: $05
    ld e, e                                       ; $5fe5: $5b
    inc e                                         ; $5fe6: $1c
    dec b                                         ; $5fe7: $05
    ld e, l                                       ; $5fe8: $5d
    inc e                                         ; $5fe9: $1c
    dec b                                         ; $5fea: $05
    ld e, a                                       ; $5feb: $5f
    inc e                                         ; $5fec: $1c
    dec b                                         ; $5fed: $05
    ld h, c                                       ; $5fee: $61
    inc e                                         ; $5fef: $1c
    dec b                                         ; $5ff0: $05
    ld h, e                                       ; $5ff1: $63
    inc e                                         ; $5ff2: $1c
    dec b                                         ; $5ff3: $05
    ld h, l                                       ; $5ff4: $65
    inc e                                         ; $5ff5: $1c
    dec b                                         ; $5ff6: $05
    ld h, a                                       ; $5ff7: $67
    inc e                                         ; $5ff8: $1c
    dec b                                         ; $5ff9: $05
    ld l, c                                       ; $5ffa: $69
    inc e                                         ; $5ffb: $1c
    dec b                                         ; $5ffc: $05
    ld l, e                                       ; $5ffd: $6b
    inc e                                         ; $5ffe: $1c
    dec b                                         ; $5fff: $05
    ld l, l                                       ; $6000: $6d
    inc e                                         ; $6001: $1c
    dec b                                         ; $6002: $05
    ld l, a                                       ; $6003: $6f
    inc e                                         ; $6004: $1c
    dec b                                         ; $6005: $05
    ld [hl], c                                    ; $6006: $71
    inc e                                         ; $6007: $1c
    dec b                                         ; $6008: $05
    ld [hl], e                                    ; $6009: $73
    inc e                                         ; $600a: $1c
    dec b                                         ; $600b: $05
    ld [hl], l                                    ; $600c: $75
    inc e                                         ; $600d: $1c
    dec b                                         ; $600e: $05
    ld [hl], a                                    ; $600f: $77
    inc e                                         ; $6010: $1c
    dec b                                         ; $6011: $05
    ld a, c                                       ; $6012: $79
    inc e                                         ; $6013: $1c
    dec b                                         ; $6014: $05
    ld a, e                                       ; $6015: $7b
    inc e                                         ; $6016: $1c
    dec b                                         ; $6017: $05
    ld a, l                                       ; $6018: $7d
    inc e                                         ; $6019: $1c
    dec b                                         ; $601a: $05
    sub h                                         ; $601b: $94
    inc e                                         ; $601c: $1c
    dec b                                         ; $601d: $05
    sbc e                                         ; $601e: $9b
    inc e                                         ; $601f: $1c
    dec b                                         ; $6020: $05
    db $d3                                        ; $6021: $d3
    inc e                                         ; $6022: $1c
    dec b                                         ; $6023: $05
    db $e3                                        ; $6024: $e3
    inc e                                         ; $6025: $1c
    dec b                                         ; $6026: $05
    jr nc, @+$1f                                  ; $6027: $30 $1d

    dec b                                         ; $6029: $05
    ld b, h                                       ; $602a: $44
    dec e                                         ; $602b: $1d
    dec b                                         ; $602c: $05
    adc b                                         ; $602d: $88
    dec e                                         ; $602e: $1d
    dec b                                         ; $602f: $05
    xor c                                         ; $6030: $a9
    dec e                                         ; $6031: $1d
    dec b                                         ; $6032: $05
    ld a, [$051d]                                 ; $6033: $fa $1d $05
    inc c                                         ; $6036: $0c
    ld e, $05                                     ; $6037: $1e $05
    ld c, b                                       ; $6039: $48
    ld e, $05                                     ; $603a: $1e $05
    and d                                         ; $603c: $a2
    ld e, $05                                     ; $603d: $1e $05
    or [hl]                                       ; $603f: $b6
    ld e, $05                                     ; $6040: $1e $05
    push hl                                       ; $6042: $e5
    ld e, $05                                     ; $6043: $1e $05
    ld [$051f], sp                                ; $6045: $08 $1f $05
    dec [hl]                                      ; $6048: $35
    rra                                           ; $6049: $1f
    dec b                                         ; $604a: $05
    adc d                                         ; $604b: $8a
    rra                                           ; $604c: $1f
    dec b                                         ; $604d: $05
    sub d                                         ; $604e: $92
    rra                                           ; $604f: $1f
    dec b                                         ; $6050: $05
    and c                                         ; $6051: $a1
    rra                                           ; $6052: $1f
    dec b                                         ; $6053: $05
    or b                                          ; $6054: $b0
    rra                                           ; $6055: $1f
    dec b                                         ; $6056: $05
    jp nz, Jump_000_051f                          ; $6057: $c2 $1f $05

    sub $1f                                       ; $605a: $d6 $1f
    dec b                                         ; $605c: $05
    xor $1f                                       ; $605d: $ee $1f
    dec b                                         ; $605f: $05
    scf                                           ; $6060: $37
    jr nz, @+$07                                  ; $6061: $20 $05

    ld b, d                                       ; $6063: $42
    jr nz, @+$07                                  ; $6064: $20 $05

    adc a                                         ; $6066: $8f
    jr nz, @+$07                                  ; $6067: $20 $05

    and b                                         ; $6069: $a0
    jr nz, @+$07                                  ; $606a: $20 $05

    cp b                                          ; $606c: $b8
    jr nz, @+$07                                  ; $606d: $20 $05

    inc b                                         ; $606f: $04
    ld hl, $2605                                  ; $6070: $21 $05 $26
    ld hl, $3e05                                  ; $6073: $21 $05 $3e
    ld hl, $5105                                  ; $6076: $21 $05 $51
    ld hl, $7805                                  ; $6079: $21 $05 $78
    ld hl, $9705                                  ; $607c: $21 $05 $97
    ld hl, $a905                                  ; $607f: $21 $05 $a9
    ld hl, $be05                                  ; $6082: $21 $05 $be
    ld hl, $d805                                  ; $6085: $21 $05 $d8
    ld hl, $f005                                  ; $6088: $21 $05 $f0
    ld hl, $fa05                                  ; $608b: $21 $05 $fa
    ld hl, $0a05                                  ; $608e: $21 $05 $0a
    ld [hl+], a                                   ; $6091: $22
    dec b                                         ; $6092: $05
    rra                                           ; $6093: $1f
    ld [hl+], a                                   ; $6094: $22
    dec b                                         ; $6095: $05
    ld [hl-], a                                   ; $6096: $32
    ld [hl+], a                                   ; $6097: $22
    dec b                                         ; $6098: $05
    ld c, e                                       ; $6099: $4b
    ld [hl+], a                                   ; $609a: $22
    dec b                                         ; $609b: $05
    ld e, a                                       ; $609c: $5f
    ld [hl+], a                                   ; $609d: $22
    dec b                                         ; $609e: $05
    halt                                          ; $609f: $76
    ld [hl+], a                                   ; $60a0: $22
    dec b                                         ; $60a1: $05
    sub a                                         ; $60a2: $97
    ld [hl+], a                                   ; $60a3: $22
    dec b                                         ; $60a4: $05
    xor c                                         ; $60a5: $a9
    ld [hl+], a                                   ; $60a6: $22
    dec b                                         ; $60a7: $05
    ret nz                                        ; $60a8: $c0

    ld [hl+], a                                   ; $60a9: $22
    dec b                                         ; $60aa: $05
    call nc, Call_000_0522                        ; $60ab: $d4 $22 $05
    db $ed                                        ; $60ae: $ed
    ld [hl+], a                                   ; $60af: $22
    dec b                                         ; $60b0: $05
    inc b                                         ; $60b1: $04
    inc hl                                        ; $60b2: $23
    dec b                                         ; $60b3: $05
    ld a, [de]                                    ; $60b4: $1a
    inc hl                                        ; $60b5: $23
    dec b                                         ; $60b6: $05
    inc l                                         ; $60b7: $2c
    inc hl                                        ; $60b8: $23
    dec b                                         ; $60b9: $05
    dec sp                                        ; $60ba: $3b
    inc hl                                        ; $60bb: $23
    dec b                                         ; $60bc: $05
    ld d, b                                       ; $60bd: $50
    inc hl                                        ; $60be: $23
    dec b                                         ; $60bf: $05
    ld h, d                                       ; $60c0: $62
    inc hl                                        ; $60c1: $23
    dec b                                         ; $60c2: $05
    ld [hl], l                                    ; $60c3: $75
    inc hl                                        ; $60c4: $23
    dec b                                         ; $60c5: $05
    sub b                                         ; $60c6: $90
    inc hl                                        ; $60c7: $23
    dec b                                         ; $60c8: $05
    xor b                                         ; $60c9: $a8
    inc hl                                        ; $60ca: $23
    dec b                                         ; $60cb: $05
    push de                                       ; $60cc: $d5
    inc hl                                        ; $60cd: $23
    dec b                                         ; $60ce: $05
    rst $20                                       ; $60cf: $e7
    inc hl                                        ; $60d0: $23
    dec b                                         ; $60d1: $05
    ld d, $24                                     ; $60d2: $16 $24
    dec b                                         ; $60d4: $05
    dec hl                                        ; $60d5: $2b
    inc h                                         ; $60d6: $24
    dec b                                         ; $60d7: $05
    inc a                                         ; $60d8: $3c
    inc h                                         ; $60d9: $24
    dec b                                         ; $60da: $05
    ld h, d                                       ; $60db: $62
    inc h                                         ; $60dc: $24
    dec b                                         ; $60dd: $05
    add [hl]                                      ; $60de: $86
    inc h                                         ; $60df: $24
    dec b                                         ; $60e0: $05
    sbc h                                         ; $60e1: $9c
    inc h                                         ; $60e2: $24
    dec b                                         ; $60e3: $05
    xor l                                         ; $60e4: $ad
    inc h                                         ; $60e5: $24
    dec b                                         ; $60e6: $05
    jp $0524                                      ; $60e7: $c3 $24 $05


    rst $10                                       ; $60ea: $d7
    inc h                                         ; $60eb: $24
    dec b                                         ; $60ec: $05
    db $ed                                        ; $60ed: $ed
    inc h                                         ; $60ee: $24
    dec b                                         ; $60ef: $05
    inc b                                         ; $60f0: $04
    dec h                                         ; $60f1: $25
    dec b                                         ; $60f2: $05
    ld hl, $0525                                  ; $60f3: $21 $25 $05
    dec sp                                        ; $60f6: $3b
    dec h                                         ; $60f7: $25
    dec b                                         ; $60f8: $05
    ld h, c                                       ; $60f9: $61
    dec h                                         ; $60fa: $25
    dec b                                         ; $60fb: $05
    ld [hl], h                                    ; $60fc: $74
    dec h                                         ; $60fd: $25
    dec b                                         ; $60fe: $05
    adc l                                         ; $60ff: $8d
    dec h                                         ; $6100: $25
    dec b                                         ; $6101: $05
    and e                                         ; $6102: $a3
    dec h                                         ; $6103: $25
    dec b                                         ; $6104: $05
    sla l                                         ; $6105: $cb $25
    dec b                                         ; $6107: $05
    and $25                                       ; $6108: $e6 $25
    dec b                                         ; $610a: $05
    rlca                                          ; $610b: $07
    ld h, $05                                     ; $610c: $26 $05
    dec h                                         ; $610e: $25
    ld h, $05                                     ; $610f: $26 $05
    dec sp                                        ; $6111: $3b
    ld h, $05                                     ; $6112: $26 $05
    and a                                         ; $6114: $a7
    ld h, $05                                     ; $6115: $26 $05
    ld de, $0527                                  ; $6117: $11 $27 $05
    ld a, [hl+]                                   ; $611a: $2a
    daa                                           ; $611b: $27
    dec b                                         ; $611c: $05
    ld c, e                                       ; $611d: $4b
    daa                                           ; $611e: $27
    dec b                                         ; $611f: $05
    ld [hl], h                                    ; $6120: $74
    daa                                           ; $6121: $27
    dec b                                         ; $6122: $05
    xor [hl]                                      ; $6123: $ae
    daa                                           ; $6124: $27
    dec b                                         ; $6125: $05
    db $e3                                        ; $6126: $e3
    daa                                           ; $6127: $27
    dec b                                         ; $6128: $05
    add hl, bc                                    ; $6129: $09
    jr z, @+$07                                   ; $612a: $28 $05

    ld a, [hl+]                                   ; $612c: $2a
    jr z, @+$07                                   ; $612d: $28 $05

    ld d, e                                       ; $612f: $53
    jr z, @+$07                                   ; $6130: $28 $05

    ld a, c                                       ; $6132: $79
    jr z, @+$07                                   ; $6133: $28 $05

    xor b                                         ; $6135: $a8
    jr z, @+$07                                   ; $6136: $28 $05

    push bc                                       ; $6138: $c5
    jr z, @+$07                                   ; $6139: $28 $05

    jp c, $0528                                   ; $613b: $da $28 $05

    ld a, [c]                                     ; $613e: $f2
    jr z, jr_047_6146                             ; $613f: $28 $05

    ld e, $29                                     ; $6141: $1e $29
    dec b                                         ; $6143: $05
    ld e, a                                       ; $6144: $5f
    add hl, hl                                    ; $6145: $29

jr_047_6146:
    dec b                                         ; $6146: $05
    cp d                                          ; $6147: $ba
    add hl, hl                                    ; $6148: $29
    dec b                                         ; $6149: $05
    xor $29                                       ; $614a: $ee $29
    dec b                                         ; $614c: $05
    rra                                           ; $614d: $1f
    ld a, [hl+]                                   ; $614e: $2a
    dec b                                         ; $614f: $05
    ld [hl], b                                    ; $6150: $70
    ld a, [hl+]                                   ; $6151: $2a
    dec b                                         ; $6152: $05
    or b                                          ; $6153: $b0
    ld a, [hl+]                                   ; $6154: $2a
    dec b                                         ; $6155: $05
    inc de                                        ; $6156: $13
    dec hl                                        ; $6157: $2b
    dec b                                         ; $6158: $05
    ld [hl], d                                    ; $6159: $72
    dec hl                                        ; $615a: $2b
    dec b                                         ; $615b: $05
    rst $10                                       ; $615c: $d7
    dec hl                                        ; $615d: $2b
    dec b                                         ; $615e: $05
    jr c, jr_047_618d                             ; $615f: $38 $2c

    dec b                                         ; $6161: $05
    sbc d                                         ; $6162: $9a
    inc l                                         ; $6163: $2c
    dec b                                         ; $6164: $05
    inc bc                                        ; $6165: $03
    dec l                                         ; $6166: $2d
    dec b                                         ; $6167: $05
    ld d, l                                       ; $6168: $55
    dec l                                         ; $6169: $2d
    dec b                                         ; $616a: $05
    jp nz, Jump_000_052d                          ; $616b: $c2 $2d $05

    rra                                           ; $616e: $1f
    ld l, $05                                     ; $616f: $2e $05
    adc l                                         ; $6171: $8d
    ld l, $05                                     ; $6172: $2e $05
    sbc $2e                                       ; $6174: $de $2e
    dec b                                         ; $6176: $05
    inc a                                         ; $6177: $3c
    cpl                                           ; $6178: $2f
    dec b                                         ; $6179: $05
    sbc d                                         ; $617a: $9a
    cpl                                           ; $617b: $2f
    dec b                                         ; $617c: $05
    cp $2f                                        ; $617d: $fe $2f
    dec b                                         ; $617f: $05
    ld e, h                                       ; $6180: $5c
    jr nc, @+$07                                  ; $6181: $30 $05

    jp z, $0530                                   ; $6183: $ca $30 $05

    cpl                                           ; $6186: $2f
    ld sp, $9405                                  ; $6187: $31 $05 $94
    ld sp, $0105                                  ; $618a: $31 $05 $01

jr_047_618d:
    ld [hl-], a                                   ; $618d: $32
    dec b                                         ; $618e: $05
    inc a                                         ; $618f: $3c
    ld [hl-], a                                   ; $6190: $32
    dec b                                         ; $6191: $05
    ld c, h                                       ; $6192: $4c
    ld [hl-], a                                   ; $6193: $32
    dec b                                         ; $6194: $05
    ld d, c                                       ; $6195: $51
    ld [hl-], a                                   ; $6196: $32
    dec b                                         ; $6197: $05
    ld d, [hl]                                    ; $6198: $56
    ld [hl-], a                                   ; $6199: $32
    dec b                                         ; $619a: $05
    ld e, a                                       ; $619b: $5f
    ld [hl-], a                                   ; $619c: $32
    dec b                                         ; $619d: $05
    ld l, l                                       ; $619e: $6d
    ld [hl-], a                                   ; $619f: $32
    dec b                                         ; $61a0: $05
    ld a, c                                       ; $61a1: $79
    ld [hl-], a                                   ; $61a2: $32
    dec b                                         ; $61a3: $05
    or c                                          ; $61a4: $b1
    ld [hl-], a                                   ; $61a5: $32
    dec b                                         ; $61a6: $05
    push hl                                       ; $61a7: $e5
    ld [hl-], a                                   ; $61a8: $32
    dec b                                         ; $61a9: $05
    inc a                                         ; $61aa: $3c
    inc sp                                        ; $61ab: $33
    dec b                                         ; $61ac: $05
    add e                                         ; $61ad: $83
    inc sp                                        ; $61ae: $33
    dec b                                         ; $61af: $05
    push de                                       ; $61b0: $d5
    inc sp                                        ; $61b1: $33
    dec b                                         ; $61b2: $05
    rlca                                          ; $61b3: $07
    inc [hl]                                      ; $61b4: $34
    dec b                                         ; $61b5: $05
    ld l, h                                       ; $61b6: $6c
    inc [hl]                                      ; $61b7: $34
    dec b                                         ; $61b8: $05
    or e                                          ; $61b9: $b3
    inc [hl]                                      ; $61ba: $34
    dec b                                         ; $61bb: $05
    ld a, [c]                                     ; $61bc: $f2
    inc [hl]                                      ; $61bd: $34
    dec b                                         ; $61be: $05
    ld hl, $0535                                  ; $61bf: $21 $35 $05
    ld b, b                                       ; $61c2: $40
    dec [hl]                                      ; $61c3: $35
    dec b                                         ; $61c4: $05
    ld l, e                                       ; $61c5: $6b
    dec [hl]                                      ; $61c6: $35
    dec b                                         ; $61c7: $05
    sbc l                                         ; $61c8: $9d
    dec [hl]                                      ; $61c9: $35
    dec b                                         ; $61ca: $05
    pop bc                                        ; $61cb: $c1
    dec [hl]                                      ; $61cc: $35
    dec b                                         ; $61cd: $05
    jp hl                                         ; $61ce: $e9


    dec [hl]                                      ; $61cf: $35
    dec b                                         ; $61d0: $05
    inc b                                         ; $61d1: $04
    ld [hl], $05                                  ; $61d2: $36 $05
    dec a                                         ; $61d4: $3d
    ld [hl], $05                                  ; $61d5: $36 $05
    ld d, e                                       ; $61d7: $53
    ld [hl], $05                                  ; $61d8: $36 $05
    ld l, e                                       ; $61da: $6b
    ld [hl], $05                                  ; $61db: $36 $05
    add e                                         ; $61dd: $83
    ld [hl], $05                                  ; $61de: $36 $05
    xor l                                         ; $61e0: $ad
    ld [hl], $05                                  ; $61e1: $36 $05
    reti                                          ; $61e3: $d9


    ld [hl], $05                                  ; $61e4: $36 $05
    db $fc                                        ; $61e6: $fc
    ld [hl], $05                                  ; $61e7: $36 $05
    rla                                           ; $61e9: $17
    scf                                           ; $61ea: $37
    dec b                                         ; $61eb: $05
    ld c, c                                       ; $61ec: $49
    scf                                           ; $61ed: $37
    dec b                                         ; $61ee: $05
    ld l, h                                       ; $61ef: $6c
    scf                                           ; $61f0: $37
    dec b                                         ; $61f1: $05
    xor d                                         ; $61f2: $aa
    scf                                           ; $61f3: $37
    dec b                                         ; $61f4: $05
    db $e4                                        ; $61f5: $e4
    scf                                           ; $61f6: $37
    dec b                                         ; $61f7: $05
    inc b                                         ; $61f8: $04
    jr c, @+$07                                   ; $61f9: $38 $05

    inc de                                        ; $61fb: $13
    jr c, @+$07                                   ; $61fc: $38 $05

    cpl                                           ; $61fe: $2f
    jr c, @+$07                                   ; $61ff: $38 $05

    ld b, h                                       ; $6201: $44
    jr c, @+$07                                   ; $6202: $38 $05

    ld d, a                                       ; $6204: $57
    jr c, @+$07                                   ; $6205: $38 $05

    xor a                                         ; $6207: $af
    jr c, jr_047_620f                             ; $6208: $38 $05

    db $db                                        ; $620a: $db
    jr c, jr_047_6212                             ; $620b: $38 $05

    dec b                                         ; $620d: $05
    add hl, sp                                    ; $620e: $39

jr_047_620f:
    dec b                                         ; $620f: $05
    rrca                                          ; $6210: $0f
    add hl, sp                                    ; $6211: $39

jr_047_6212:
    dec b                                         ; $6212: $05
    inc e                                         ; $6213: $1c
    add hl, sp                                    ; $6214: $39
    dec b                                         ; $6215: $05
    ld h, $39                                     ; $6216: $26 $39
    dec b                                         ; $6218: $05
    dec hl                                        ; $6219: $2b
    add hl, sp                                    ; $621a: $39
    dec b                                         ; $621b: $05
    inc [hl]                                      ; $621c: $34
    add hl, sp                                    ; $621d: $39
    dec b                                         ; $621e: $05
    ld a, [hl-]                                   ; $621f: $3a
    add hl, sp                                    ; $6220: $39
    dec b                                         ; $6221: $05
    ld b, h                                       ; $6222: $44
    add hl, sp                                    ; $6223: $39
    dec b                                         ; $6224: $05
    ld d, d                                       ; $6225: $52
    add hl, sp                                    ; $6226: $39
    dec b                                         ; $6227: $05
    ld h, c                                       ; $6228: $61
    add hl, sp                                    ; $6229: $39
    dec b                                         ; $622a: $05
    ld [hl], l                                    ; $622b: $75
    add hl, sp                                    ; $622c: $39
    dec b                                         ; $622d: $05
    ld a, [hl]                                    ; $622e: $7e
    add hl, sp                                    ; $622f: $39
    dec b                                         ; $6230: $05
    add a                                         ; $6231: $87
    add hl, sp                                    ; $6232: $39
    dec b                                         ; $6233: $05
    sub h                                         ; $6234: $94
    add hl, sp                                    ; $6235: $39
    dec b                                         ; $6236: $05
    xor c                                         ; $6237: $a9
    add hl, sp                                    ; $6238: $39
    dec b                                         ; $6239: $05
    add $39                                       ; $623a: $c6 $39
    dec b                                         ; $623c: $05
    db $e4                                        ; $623d: $e4
    add hl, sp                                    ; $623e: $39
    dec b                                         ; $623f: $05
    ld hl, sp+$39                                 ; $6240: $f8 $39
    dec b                                         ; $6242: $05
    rrca                                          ; $6243: $0f
    ld a, [hl-]                                   ; $6244: $3a
    dec b                                         ; $6245: $05
    jr nz, jr_047_6282                            ; $6246: $20 $3a

    dec b                                         ; $6248: $05
    scf                                           ; $6249: $37
    ld a, [hl-]                                   ; $624a: $3a
    dec b                                         ; $624b: $05
    ld h, d                                       ; $624c: $62
    ld a, [hl-]                                   ; $624d: $3a
    dec b                                         ; $624e: $05
    add c                                         ; $624f: $81
    ld a, [hl-]                                   ; $6250: $3a
    dec b                                         ; $6251: $05
    cp d                                          ; $6252: $ba
    ld a, [hl-]                                   ; $6253: $3a
    dec b                                         ; $6254: $05
    jp z, Jump_000_053a                           ; $6255: $ca $3a $05

    cp $3a                                        ; $6258: $fe $3a
    dec b                                         ; $625a: $05
    ld a, [bc]                                    ; $625b: $0a
    dec sp                                        ; $625c: $3b
    dec b                                         ; $625d: $05
    ld d, $3b                                     ; $625e: $16 $3b
    dec b                                         ; $6260: $05
    ld a, [hl+]                                   ; $6261: $2a
    dec sp                                        ; $6262: $3b
    dec b                                         ; $6263: $05
    dec [hl]                                      ; $6264: $35
    dec sp                                        ; $6265: $3b
    dec b                                         ; $6266: $05
    ld b, b                                       ; $6267: $40
    dec sp                                        ; $6268: $3b
    dec b                                         ; $6269: $05
    ld a, e                                       ; $626a: $7b
    dec sp                                        ; $626b: $3b
    dec b                                         ; $626c: $05
    cp b                                          ; $626d: $b8
    dec sp                                        ; $626e: $3b
    dec b                                         ; $626f: $05
    inc [hl]                                      ; $6270: $34
    inc a                                         ; $6271: $3c
    dec b                                         ; $6272: $05
    ld b, a                                       ; $6273: $47
    inc a                                         ; $6274: $3c
    dec b                                         ; $6275: $05
    ld d, h                                       ; $6276: $54
    inc a                                         ; $6277: $3c
    dec b                                         ; $6278: $05
    add d                                         ; $6279: $82
    inc a                                         ; $627a: $3c
    dec b                                         ; $627b: $05
    adc e                                         ; $627c: $8b
    inc a                                         ; $627d: $3c
    dec b                                         ; $627e: $05
    sub a                                         ; $627f: $97
    inc a                                         ; $6280: $3c
    dec b                                         ; $6281: $05

jr_047_6282:
    and b                                         ; $6282: $a0
    inc a                                         ; $6283: $3c
    dec b                                         ; $6284: $05
    xor a                                         ; $6285: $af
    inc a                                         ; $6286: $3c
    dec b                                         ; $6287: $05
    pop bc                                        ; $6288: $c1
    inc a                                         ; $6289: $3c
    dec b                                         ; $628a: $05
    call z, $053c                                 ; $628b: $cc $3c $05
    jp nc, $053c                                  ; $628e: $d2 $3c $05

    jp c, $053c                                   ; $6291: $da $3c $05

    db $e3                                        ; $6294: $e3
    inc a                                         ; $6295: $3c
    dec b                                         ; $6296: $05
    jp hl                                         ; $6297: $e9


    inc a                                         ; $6298: $3c
    dec b                                         ; $6299: $05
    db $eb                                        ; $629a: $eb
    inc a                                         ; $629b: $3c
    dec b                                         ; $629c: $05
    db $ed                                        ; $629d: $ed
    inc a                                         ; $629e: $3c
    dec b                                         ; $629f: $05
    rst $28                                       ; $62a0: $ef
    inc a                                         ; $62a1: $3c
    dec b                                         ; $62a2: $05
    pop af                                        ; $62a3: $f1
    inc a                                         ; $62a4: $3c
    dec b                                         ; $62a5: $05
    di                                            ; $62a6: $f3
    inc a                                         ; $62a7: $3c
    dec b                                         ; $62a8: $05
    push af                                       ; $62a9: $f5
    inc a                                         ; $62aa: $3c
    dec b                                         ; $62ab: $05
    rst $30                                       ; $62ac: $f7
    inc a                                         ; $62ad: $3c
    dec b                                         ; $62ae: $05
    ld sp, hl                                     ; $62af: $f9
    inc a                                         ; $62b0: $3c
    dec b                                         ; $62b1: $05
    ei                                            ; $62b2: $fb
    inc a                                         ; $62b3: $3c
    dec b                                         ; $62b4: $05
    db $fd                                        ; $62b5: $fd
    inc a                                         ; $62b6: $3c
    dec b                                         ; $62b7: $05
    rst $38                                       ; $62b8: $ff
    inc a                                         ; $62b9: $3c
    dec b                                         ; $62ba: $05
    ld bc, $053d                                  ; $62bb: $01 $3d $05
    inc bc                                        ; $62be: $03
    dec a                                         ; $62bf: $3d
    dec b                                         ; $62c0: $05
    dec b                                         ; $62c1: $05
    dec a                                         ; $62c2: $3d
    dec b                                         ; $62c3: $05
    rlca                                          ; $62c4: $07
    dec a                                         ; $62c5: $3d
    dec b                                         ; $62c6: $05
    add hl, bc                                    ; $62c7: $09
    dec a                                         ; $62c8: $3d
    dec b                                         ; $62c9: $05
    dec bc                                        ; $62ca: $0b
    dec a                                         ; $62cb: $3d
    dec b                                         ; $62cc: $05
    dec c                                         ; $62cd: $0d
    dec a                                         ; $62ce: $3d
    dec b                                         ; $62cf: $05
    rrca                                          ; $62d0: $0f
    dec a                                         ; $62d1: $3d
    dec b                                         ; $62d2: $05
    ld de, $053d                                  ; $62d3: $11 $3d $05
    inc de                                        ; $62d6: $13
    dec a                                         ; $62d7: $3d
    dec b                                         ; $62d8: $05
    dec d                                         ; $62d9: $15
    dec a                                         ; $62da: $3d
    dec b                                         ; $62db: $05
    rla                                           ; $62dc: $17
    dec a                                         ; $62dd: $3d
    dec b                                         ; $62de: $05
    add hl, de                                    ; $62df: $19
    dec a                                         ; $62e0: $3d
    dec b                                         ; $62e1: $05
    dec de                                        ; $62e2: $1b
    dec a                                         ; $62e3: $3d
    dec b                                         ; $62e4: $05
    dec e                                         ; $62e5: $1d
    dec a                                         ; $62e6: $3d
    dec b                                         ; $62e7: $05
    rra                                           ; $62e8: $1f
    dec a                                         ; $62e9: $3d
    dec b                                         ; $62ea: $05
    ld hl, $053d                                  ; $62eb: $21 $3d $05
    inc hl                                        ; $62ee: $23
    dec a                                         ; $62ef: $3d
    dec b                                         ; $62f0: $05
    dec h                                         ; $62f1: $25
    dec a                                         ; $62f2: $3d
    dec b                                         ; $62f3: $05
    daa                                           ; $62f4: $27
    dec a                                         ; $62f5: $3d
    dec b                                         ; $62f6: $05
    add hl, hl                                    ; $62f7: $29
    dec a                                         ; $62f8: $3d
    dec b                                         ; $62f9: $05
    dec hl                                        ; $62fa: $2b
    dec a                                         ; $62fb: $3d
    dec b                                         ; $62fc: $05
    dec l                                         ; $62fd: $2d
    dec a                                         ; $62fe: $3d
    dec b                                         ; $62ff: $05
    cpl                                           ; $6300: $2f
    dec a                                         ; $6301: $3d
    dec b                                         ; $6302: $05
    ld sp, $053d                                  ; $6303: $31 $3d $05
    inc sp                                        ; $6306: $33
    dec a                                         ; $6307: $3d
    dec b                                         ; $6308: $05
    dec [hl]                                      ; $6309: $35
    dec a                                         ; $630a: $3d
    dec b                                         ; $630b: $05
    scf                                           ; $630c: $37
    dec a                                         ; $630d: $3d
    dec b                                         ; $630e: $05
    add hl, sp                                    ; $630f: $39
    dec a                                         ; $6310: $3d
    dec b                                         ; $6311: $05
    dec sp                                        ; $6312: $3b
    dec a                                         ; $6313: $3d
    dec b                                         ; $6314: $05
    dec a                                         ; $6315: $3d
    dec a                                         ; $6316: $3d
    dec b                                         ; $6317: $05
    ld b, e                                       ; $6318: $43
    dec a                                         ; $6319: $3d
    dec b                                         ; $631a: $05
    ld c, l                                       ; $631b: $4d
    dec a                                         ; $631c: $3d
    dec b                                         ; $631d: $05
    ld e, c                                       ; $631e: $59
    dec a                                         ; $631f: $3d
    dec b                                         ; $6320: $05
    ld h, h                                       ; $6321: $64
    dec a                                         ; $6322: $3d
    dec b                                         ; $6323: $05
    ld l, l                                       ; $6324: $6d
    dec a                                         ; $6325: $3d
    dec b                                         ; $6326: $05
    ld [hl], h                                    ; $6327: $74
    dec a                                         ; $6328: $3d
    dec b                                         ; $6329: $05
    add b                                         ; $632a: $80
    dec a                                         ; $632b: $3d
    dec b                                         ; $632c: $05
    add d                                         ; $632d: $82
    dec a                                         ; $632e: $3d
    dec b                                         ; $632f: $05
    add h                                         ; $6330: $84
    dec a                                         ; $6331: $3d
    dec b                                         ; $6332: $05
    add [hl]                                      ; $6333: $86
    dec a                                         ; $6334: $3d
    dec b                                         ; $6335: $05
    adc b                                         ; $6336: $88
    dec a                                         ; $6337: $3d
    dec b                                         ; $6338: $05
    adc d                                         ; $6339: $8a
    dec a                                         ; $633a: $3d

Call_047_633b:
    dec b                                         ; $633b: $05
    adc h                                         ; $633c: $8c
    dec a                                         ; $633d: $3d
    dec b                                         ; $633e: $05
    adc [hl]                                      ; $633f: $8e
    dec a                                         ; $6340: $3d
    dec b                                         ; $6341: $05
    sub b                                         ; $6342: $90
    dec a                                         ; $6343: $3d
    dec b                                         ; $6344: $05
    sub d                                         ; $6345: $92
    dec a                                         ; $6346: $3d
    dec b                                         ; $6347: $05
    sub h                                         ; $6348: $94
    dec a                                         ; $6349: $3d
    dec b                                         ; $634a: $05
    sub [hl]                                      ; $634b: $96
    dec a                                         ; $634c: $3d
    dec b                                         ; $634d: $05
    and c                                         ; $634e: $a1
    dec a                                         ; $634f: $3d
    dec b                                         ; $6350: $05
    and e                                         ; $6351: $a3
    dec a                                         ; $6352: $3d
    dec b                                         ; $6353: $05
    and l                                         ; $6354: $a5
    dec a                                         ; $6355: $3d
    dec b                                         ; $6356: $05
    and a                                         ; $6357: $a7
    dec a                                         ; $6358: $3d
    dec b                                         ; $6359: $05
    xor c                                         ; $635a: $a9
    dec a                                         ; $635b: $3d
    dec b                                         ; $635c: $05
    xor e                                         ; $635d: $ab
    dec a                                         ; $635e: $3d
    dec b                                         ; $635f: $05
    xor l                                         ; $6360: $ad
    dec a                                         ; $6361: $3d
    dec b                                         ; $6362: $05
    xor a                                         ; $6363: $af
    dec a                                         ; $6364: $3d
    dec b                                         ; $6365: $05
    or c                                          ; $6366: $b1
    dec a                                         ; $6367: $3d
    dec b                                         ; $6368: $05
    or e                                          ; $6369: $b3
    dec a                                         ; $636a: $3d
    dec b                                         ; $636b: $05
    or l                                          ; $636c: $b5
    dec a                                         ; $636d: $3d
    dec b                                         ; $636e: $05
    or a                                          ; $636f: $b7
    dec a                                         ; $6370: $3d
    dec b                                         ; $6371: $05
    cp c                                          ; $6372: $b9
    dec a                                         ; $6373: $3d
    dec b                                         ; $6374: $05
    cp e                                          ; $6375: $bb
    dec a                                         ; $6376: $3d
    dec b                                         ; $6377: $05
    cp l                                          ; $6378: $bd
    dec a                                         ; $6379: $3d
    dec b                                         ; $637a: $05
    cp a                                          ; $637b: $bf
    dec a                                         ; $637c: $3d
    dec b                                         ; $637d: $05
    pop bc                                        ; $637e: $c1
    dec a                                         ; $637f: $3d
    dec b                                         ; $6380: $05
    jp $053d                                      ; $6381: $c3 $3d $05


    push bc                                       ; $6384: $c5
    dec a                                         ; $6385: $3d
    dec b                                         ; $6386: $05
    rst $00                                       ; $6387: $c7
    dec a                                         ; $6388: $3d
    dec b                                         ; $6389: $05
    ret                                           ; $638a: $c9


    dec a                                         ; $638b: $3d
    dec b                                         ; $638c: $05
    srl l                                         ; $638d: $cb $3d
    dec b                                         ; $638f: $05
    reti                                          ; $6390: $d9


    dec a                                         ; $6391: $3d
    dec b                                         ; $6392: $05
    db $db                                        ; $6393: $db
    dec a                                         ; $6394: $3d
    dec b                                         ; $6395: $05
    and $3d                                       ; $6396: $e6 $3d
    dec b                                         ; $6398: $05
    ldh a, [$3d]                                  ; $6399: $f0 $3d
    dec b                                         ; $639b: $05
    rst $30                                       ; $639c: $f7
    dec a                                         ; $639d: $3d
    dec b                                         ; $639e: $05
    ld [bc], a                                    ; $639f: $02
    ld a, $05                                     ; $63a0: $3e $05
    inc b                                         ; $63a2: $04
    ld a, $05                                     ; $63a3: $3e $05
    ld b, $3e                                     ; $63a5: $06 $3e
    dec b                                         ; $63a7: $05
    ld [$053e], sp                                ; $63a8: $08 $3e $05
    ld a, [bc]                                    ; $63ab: $0a
    ld a, $05                                     ; $63ac: $3e $05
    inc c                                         ; $63ae: $0c
    ld a, $05                                     ; $63af: $3e $05
    ld c, $3e                                     ; $63b1: $0e $3e
    dec b                                         ; $63b3: $05
    db $10                                        ; $63b4: $10
    ld a, $05                                     ; $63b5: $3e $05
    ld [de], a                                    ; $63b7: $12
    ld a, $05                                     ; $63b8: $3e $05
    inc d                                         ; $63ba: $14
    ld a, $05                                     ; $63bb: $3e $05
    ld d, $3e                                     ; $63bd: $16 $3e
    dec b                                         ; $63bf: $05
    jr jr_047_6400                                ; $63c0: $18 $3e

    dec b                                         ; $63c2: $05
    ld a, [de]                                    ; $63c3: $1a
    ld a, $05                                     ; $63c4: $3e $05
    inc e                                         ; $63c6: $1c
    ld a, $05                                     ; $63c7: $3e $05
    ld e, $3e                                     ; $63c9: $1e $3e
    dec b                                         ; $63cb: $05
    jr nz, @+$40                                  ; $63cc: $20 $3e

    dec b                                         ; $63ce: $05

Call_047_63cf:
    ld [hl+], a                                   ; $63cf: $22
    ld a, $05                                     ; $63d0: $3e $05
    inc h                                         ; $63d2: $24
    ld a, $05                                     ; $63d3: $3e $05
    ld h, $3e                                     ; $63d5: $26 $3e
    dec b                                         ; $63d7: $05
    dec hl                                        ; $63d8: $2b
    ld a, $05                                     ; $63d9: $3e $05
    dec l                                         ; $63db: $2d
    ld a, $05                                     ; $63dc: $3e $05
    cpl                                           ; $63de: $2f
    ld a, $05                                     ; $63df: $3e $05
    ld sp, $053e                                  ; $63e1: $31 $3e $05
    inc sp                                        ; $63e4: $33
    ld a, $57                                     ; $63e5: $3e $57
    ld d, l                                       ; $63e7: $55
    ld d, [hl]                                    ; $63e8: $56
    adc h                                         ; $63e9: $8c
    adc l                                         ; $63ea: $8d
    adc [hl]                                      ; $63eb: $8e
    sub d                                         ; $63ec: $92
    sbc e                                         ; $63ed: $9b
    and [hl]                                      ; $63ee: $a6
    and a                                         ; $63ef: $a7
    xor b                                         ; $63f0: $a8
    xor c                                         ; $63f1: $a9
    xor e                                         ; $63f2: $ab
    xor l                                         ; $63f3: $ad
    xor a                                         ; $63f4: $af
    or b                                          ; $63f5: $b0
    or c                                          ; $63f6: $b1
    or d                                          ; $63f7: $b2
    or e                                          ; $63f8: $b3
    or h                                          ; $63f9: $b4
    or l                                          ; $63fa: $b5
    or [hl]                                       ; $63fb: $b6
    or a                                          ; $63fc: $b7
    cp b                                          ; $63fd: $b8
    cp c                                          ; $63fe: $b9
    cp d                                          ; $63ff: $ba

jr_047_6400:
    cp e                                          ; $6400: $bb
    ret nz                                        ; $6401: $c0

    pop bc                                        ; $6402: $c1
    jp nz, $c5c3                                  ; $6403: $c2 $c3 $c5

    add $c7                                       ; $6406: $c6 $c7
    set 1, h                                      ; $6408: $cb $cc
    call $cfce                                    ; $640a: $cd $ce $cf
    ret nc                                        ; $640d: $d0

    pop de                                        ; $640e: $d1
    jp nc, $d4d3                                  ; $640f: $d2 $d3 $d4

    push de                                       ; $6412: $d5
    sub $d7                                       ; $6413: $d6 $d7
    ret c                                         ; $6415: $d8

    reti                                          ; $6416: $d9


    jp c, $dfdb                                   ; $6417: $da $db $df

    ldh [$f1], a                                  ; $641a: $e0 $f1
    ld hl, sp-$07                                 ; $641c: $f8 $f9
    cp $00                                        ; $641e: $fe $00
    and c                                         ; $6420: $a1
    cp a                                          ; $6421: $bf
    call nz, $cac9                                ; $6422: $c4 $c9 $ca
    ld bc, $0302                                  ; $6425: $01 $02 $03
    inc b                                         ; $6428: $04
    dec b                                         ; $6429: $05
    ld b, $07                                     ; $642a: $06 $07
    ld [$0a09], sp                                ; $642c: $08 $09 $0a
    dec bc                                        ; $642f: $0b
    inc c                                         ; $6430: $0c
    dec c                                         ; $6431: $0d
    ld c, $0f                                     ; $6432: $0e $0f
    db $10                                        ; $6434: $10
    ld de, $1312                                  ; $6435: $11 $12 $13
    inc d                                         ; $6438: $14
    dec d                                         ; $6439: $15
    ld d, $17                                     ; $643a: $16 $17
    jr @+$1b                                      ; $643c: $18 $19

    ld a, [de]                                    ; $643e: $1a
    dec de                                        ; $643f: $1b
    inc e                                         ; $6440: $1c
    xor h                                         ; $6441: $ac
    ret z                                         ; $6442: $c8

    dec e                                         ; $6443: $1d
    ld e, $1f                                     ; $6444: $1e $1f
    jr nz, jr_047_6469                            ; $6446: $20 $21

    ld [hl+], a                                   ; $6448: $22
    inc hl                                        ; $6449: $23
    inc h                                         ; $644a: $24
    dec h                                         ; $644b: $25
    ld h, $27                                     ; $644c: $26 $27
    jr z, jr_047_6479                             ; $644e: $28 $29

    ld a, [hl+]                                   ; $6450: $2a
    dec hl                                        ; $6451: $2b
    db $e3                                        ; $6452: $e3
    and $2c                                       ; $6453: $e6 $2c
    rst $30                                       ; $6455: $f7
    ld a, [$2e2d]                                 ; $6456: $fa $2d $2e
    cpl                                           ; $6459: $2f
    jr nc, jr_047_648d                            ; $645a: $30 $31

    ld [hl-], a                                   ; $645c: $32
    inc sp                                        ; $645d: $33
    inc [hl]                                      ; $645e: $34
    ldh a, [$35]                                  ; $645f: $f0 $35
    ld [c], a                                     ; $6461: $e2
    ld [hl], $f5                                  ; $6462: $36 $f5
    or $ea                                        ; $6464: $f6 $ea
    add sp, -$13                                  ; $6466: $e8 $ed
    xor [hl]                                      ; $6468: $ae

jr_047_6469:
    rst $38                                       ; $6469: $ff
    scf                                           ; $646a: $37
    jr c, jr_047_64a6                             ; $646b: $38 $39

    ld a, [hl-]                                   ; $646d: $3a
    dec sp                                        ; $646e: $3b
    rst $20                                       ; $646f: $e7
    inc a                                         ; $6470: $3c
    dec a                                         ; $6471: $3d
    db $eb                                        ; $6472: $eb
    di                                            ; $6473: $f3
    db $ec                                        ; $6474: $ec
    ld a, $e4                                     ; $6475: $3e $e4
    ccf                                           ; $6477: $3f
    ld b, b                                       ; $6478: $40

jr_047_6479:
    ld b, c                                       ; $6479: $41
    ld b, d                                       ; $647a: $42
    ld b, e                                       ; $647b: $43
    rst $28                                       ; $647c: $ef
    ld b, h                                       ; $647d: $44
    jp hl                                         ; $647e: $e9


    ld a, [c]                                     ; $647f: $f2
    db $f4                                        ; $6480: $f4
    ld b, l                                       ; $6481: $45
    ld b, [hl]                                    ; $6482: $46
    pop hl                                        ; $6483: $e1
    ld b, a                                       ; $6484: $47
    ld c, b                                       ; $6485: $48
    xor $49                                       ; $6486: $ee $49
    ld c, d                                       ; $6488: $4a
    ld c, e                                       ; $6489: $4b
    ld c, h                                       ; $648a: $4c
    ld c, l                                       ; $648b: $4d
    ld c, [hl]                                    ; $648c: $4e

jr_047_648d:
    ld c, a                                       ; $648d: $4f
    push hl                                       ; $648e: $e5
    and b                                         ; $648f: $a0
    ld d, b                                       ; $6490: $50
    ld d, c                                       ; $6491: $51
    ld d, d                                       ; $6492: $52
    ld d, e                                       ; $6493: $53
    ld d, h                                       ; $6494: $54
    rst $30                                       ; $6495: $f7
    inc a                                         ; $6496: $3c
    ld [hl], d                                    ; $6497: $72
    rst $30                                       ; $6498: $f7
    ld a, l                                       ; $6499: $7d
    adc a                                         ; $649a: $8f
    call c, $df7d                                 ; $649b: $dc $7d $df
    dec a                                         ; $649e: $3d
    rst $30                                       ; $649f: $f7
    call c, Call_000_007b                         ; $64a0: $dc $7b $00
    ld d, a                                       ; $64a3: $57
    dec e                                         ; $64a4: $1d
    add [hl]                                      ; $64a5: $86

jr_047_64a6:
    add a                                         ; $64a6: $87
    cp e                                          ; $64a7: $bb
    ld l, e                                       ; $64a8: $6b
    cpl                                           ; $64a9: $2f
    push de                                       ; $64aa: $d5
    sub a                                         ; $64ab: $97
    or h                                          ; $64ac: $b4
    and l                                         ; $64ad: $a5
    ld d, a                                       ; $64ae: $57
    rlca                                          ; $64af: $07
    cpl                                           ; $64b0: $2f
    jr jr_047_650a                                ; $64b1: $18 $57

    pop af                                        ; $64b3: $f1
    sbc $28                                       ; $64b4: $de $28
    ld l, h                                       ; $64b6: $6c
    sbc $9b                                       ; $64b7: $de $9b
    sub b                                         ; $64b9: $90
    scf                                           ; $64ba: $37
    xor $63                                       ; $64bb: $ee $63
    cp e                                          ; $64bd: $bb
    rst $20                                       ; $64be: $e7
    sub c                                         ; $64bf: $91
    cp e                                          ; $64c0: $bb
    rst $28                                       ; $64c1: $ef
    ld a, e                                       ; $64c2: $7b
    ldh a, [$ee]                                  ; $64c3: $f0 $ee
    ei                                            ; $64c5: $fb
    xor $b9                                       ; $64c6: $ee $b9
    rst $20                                       ; $64c8: $e7
    sbc $03                                       ; $64c9: $de $03
    xor a                                         ; $64cb: $af
    ld b, e                                       ; $64cc: $43
    ld d, h                                       ; $64cd: $54
    ld b, a                                       ; $64ce: $47
    ld e, $cf                                     ; $64cf: $1e $cf
    sbc e                                         ; $64d1: $9b
    ld de, $6f1f                                  ; $64d2: $11 $1f $6f
    db $fd                                        ; $64d5: $fd
    ld c, a                                       ; $64d6: $4f
    and a                                         ; $64d7: $a7
    ld [de], a                                    ; $64d8: $12
    ld [hl], h                                    ; $64d9: $74
    nop                                           ; $64da: $00
    ld l, a                                       ; $64db: $6f
    ld l, c                                       ; $64dc: $69
    rlca                                          ; $64dd: $07
    ld e, $72                                     ; $64de: $1e $72
    di                                            ; $64e0: $f3
    nop                                           ; $64e1: $00
    cpl                                           ; $64e2: $2f
    cp h                                          ; $64e3: $bc
    ld a, [c]                                     ; $64e4: $f2
    ret c                                         ; $64e5: $d8

    sbc [hl]                                      ; $64e6: $9e
    cp b                                          ; $64e7: $b8
    rst $30                                       ; $64e8: $f7
    xor $27                                       ; $64e9: $ee $27
    xor $db                                       ; $64eb: $ee $db
    ld bc, $bc6f                                  ; $64ed: $01 $6f $bc
    ld a, [c]                                     ; $64f0: $f2
    ret c                                         ; $64f1: $d8

    sbc [hl]                                      ; $64f2: $9e
    cp b                                          ; $64f3: $b8
    rst $30                                       ; $64f4: $f7
    xor $27                                       ; $64f5: $ee $27
    xor $db                                       ; $64f7: $ee $db
    ld bc, $6acf                                  ; $64f9: $01 $cf $6a
    add h                                         ; $64fc: $84
    sbc d                                         ; $64fd: $9a
    cp $ef                                        ; $64fe: $fe $ef
    call Call_000_07fc                            ; $6500: $cd $fc $07
    rst $08                                       ; $6503: $cf
    ld l, d                                       ; $6504: $6a
    add h                                         ; $6505: $84
    sbc d                                         ; $6506: $9a
    cp $ef                                        ; $6507: $fe $ef
    xor d                                         ; $6509: $aa

jr_047_650a:
    di                                            ; $650a: $f3
    rrca                                          ; $650b: $0f
    rst $08                                       ; $650c: $cf
    ld l, d                                       ; $650d: $6a
    add h                                         ; $650e: $84
    sbc d                                         ; $650f: $9a
    cp $ef                                        ; $6510: $fe $ef
    dec c                                         ; $6512: $0d
    ld b, d                                       ; $6513: $42
    dec sp                                        ; $6514: $3b
    nop                                           ; $6515: $00
    ld l, a                                       ; $6516: $6f
    sub l                                         ; $6517: $95
    ld [hl+], a                                   ; $6518: $22
    call nc, $bf1a                                ; $6519: $d4 $1a $bf
    and e                                         ; $651c: $a3
    or $66                                        ; $651d: $f6 $66
    cp $03                                        ; $651f: $fe $03
    ld l, a                                       ; $6521: $6f
    sub l                                         ; $6522: $95
    ld [hl+], a                                   ; $6523: $22
    call nc, $bf1a                                ; $6524: $d4 $1a $bf
    and e                                         ; $6527: $a3
    halt                                          ; $6528: $76
    push de                                       ; $6529: $d5
    ld sp, hl                                     ; $652a: $f9
    rlca                                          ; $652b: $07
    ld l, a                                       ; $652c: $6f
    sub l                                         ; $652d: $95
    ld [hl+], a                                   ; $652e: $22
    call nc, $bf1a                                ; $652f: $d4 $1a $bf
    and e                                         ; $6532: $a3
    or $06                                        ; $6533: $f6 $06
    and c                                         ; $6535: $a1
    dec e                                         ; $6536: $1d
    ld l, a                                       ; $6537: $6f
    sub l                                         ; $6538: $95
    inc a                                         ; $6539: $3c
    ld b, [hl]                                    ; $653a: $46
    xor b                                         ; $653b: $a8
    dec [hl]                                      ; $653c: $35
    ld a, [hl]                                    ; $653d: $7e
    ld b, a                                       ; $653e: $47
    db $ed                                        ; $653f: $ed
    call Call_000_07fc                            ; $6540: $cd $fc $07
    ld l, a                                       ; $6543: $6f
    sub l                                         ; $6544: $95
    inc a                                         ; $6545: $3c
    ld b, [hl]                                    ; $6546: $46
    xor b                                         ; $6547: $a8
    dec [hl]                                      ; $6548: $35
    ld a, [hl]                                    ; $6549: $7e
    ld b, a                                       ; $654a: $47
    db $ed                                        ; $654b: $ed
    xor d                                         ; $654c: $aa
    di                                            ; $654d: $f3
    rrca                                          ; $654e: $0f
    ld l, a                                       ; $654f: $6f
    sub l                                         ; $6550: $95
    inc a                                         ; $6551: $3c
    ld b, [hl]                                    ; $6552: $46
    xor b                                         ; $6553: $a8
    dec [hl]                                      ; $6554: $35
    ld a, [hl]                                    ; $6555: $7e
    ld b, a                                       ; $6556: $47
    db $ed                                        ; $6557: $ed
    dec c                                         ; $6558: $0d
    ld b, d                                       ; $6559: $42
    dec sp                                        ; $655a: $3b
    nop                                           ; $655b: $00
    rst $10                                       ; $655c: $d7
    ld [de], a                                    ; $655d: $12
    sbc $f4                                       ; $655e: $de $f4
    ld hl, sp-$09                                 ; $6560: $f8 $f7
    ld h, [hl]                                    ; $6562: $66
    cp $03                                        ; $6563: $fe $03
    rst $10                                       ; $6565: $d7
    ld [de], a                                    ; $6566: $12
    sbc $f4                                       ; $6567: $de $f4
    ld hl, sp+$77                                 ; $6569: $f8 $77
    push de                                       ; $656b: $d5
    ld sp, hl                                     ; $656c: $f9
    rlca                                          ; $656d: $07
    rst $10                                       ; $656e: $d7
    ld [de], a                                    ; $656f: $12
    sbc $f4                                       ; $6570: $de $f4
    ld hl, sp-$09                                 ; $6572: $f8 $f7
    ld b, $a1                                     ; $6574: $06 $a1
    dec e                                         ; $6576: $1d
    ld l, a                                       ; $6577: $6f
    ld h, e                                       ; $6578: $63
    ld [bc], a                                    ; $6579: $02
    inc hl                                        ; $657a: $23
    adc a                                         ; $657b: $8f
    ld c, [hl]                                    ; $657c: $4e
    or h                                          ; $657d: $b4
    rla                                           ; $657e: $17
    ld [$57e2], a                                 ; $657f: $ea $e2 $57
    halt                                          ; $6582: $76
    nop                                           ; $6583: $00
    cpl                                           ; $6584: $2f
    ld a, h                                       ; $6585: $7c
    ld hl, sp-$71                                 ; $6586: $f8 $8f
    ld a, $7f                                     ; $6588: $3e $7f
    jp c, Jump_000_28db                           ; $658a: $da $db $28

    ld [$cc5a], sp                                ; $658d: $08 $5a $cc
    ld bc, $7c2f                                  ; $6590: $01 $2f $7c
    ld hl, sp-$71                                 ; $6593: $f8 $8f
    ld a, $7f                                     ; $6595: $3e $7f
    jp c, $9f8b                                   ; $6597: $da $8b $9f

    jr @-$29                                      ; $659a: $18 $d5

    ld bc, $94af                                  ; $659c: $01 $af $94
    add hl, bc                                    ; $659f: $09
    ld b, l                                       ; $65a0: $45
    ld [$d477], sp                                ; $65a1: $08 $77 $d4
    sbc $f8                                       ; $65a4: $de $f8
    ld l, h                                       ; $65a6: $6c
    jp c, $0751                                   ; $65a7: $da $51 $07

    cpl                                           ; $65aa: $2f
    ld a, [hl-]                                   ; $65ab: $3a
    ld [hl], b                                    ; $65ac: $70
    ld b, a                                       ; $65ad: $47
    db $ed                                        ; $65ae: $ed
    ld c, c                                       ; $65af: $49
    cp a                                          ; $65b0: $bf
    sub a                                         ; $65b1: $97
    call z, $b551                                 ; $65b2: $cc $51 $b5
    add sp, $00                                   ; $65b5: $e8 $00
    rst $10                                       ; $65b7: $d7
    cp e                                          ; $65b8: $bb
    or b                                          ; $65b9: $b0
    ld [bc], a                                    ; $65ba: $02
    cpl                                           ; $65bb: $2f
    ccf                                           ; $65bc: $3f
    jr jr_047_6627                                ; $65bd: $18 $68

    ld [hl], e                                    ; $65bf: $73
    ld a, [bc]                                    ; $65c0: $0a
    and d                                         ; $65c1: $a2
    ld a, [hl-]                                   ; $65c2: $3a
    or d                                          ; $65c3: $b2
    add hl, sp                                    ; $65c4: $39
    ld d, b                                       ; $65c5: $50
    db $dd                                        ; $65c6: $dd
    sub d                                         ; $65c7: $92
    rla                                           ; $65c8: $17
    ld a, a                                       ; $65c9: $7f
    nop                                           ; $65ca: $00
    rst $10                                       ; $65cb: $d7
    cp e                                          ; $65cc: $bb
    or b                                          ; $65cd: $b0
    ld [bc], a                                    ; $65ce: $02
    cpl                                           ; $65cf: $2f
    or c                                          ; $65d0: $b1
    inc a                                         ; $65d1: $3c
    rst $30                                       ; $65d2: $f7
    ld l, e                                       ; $65d3: $6b
    rst $38                                       ; $65d4: $ff
    sbc e                                         ; $65d5: $9b
    cp [hl]                                       ; $65d6: $be
    db $e3                                        ; $65d7: $e3
    rst $28                                       ; $65d8: $ef
    sub [hl]                                      ; $65d9: $96
    jr nz, jr_047_6603                            ; $65da: $20 $27

    cp c                                          ; $65dc: $b9
    cp c                                          ; $65dd: $b9
    rra                                           ; $65de: $1f
    call $dcf7                                    ; $65df: $cd $f7 $dc
    add hl, hl                                    ; $65e2: $29
    adc b                                         ; $65e3: $88
    ld [$71c8], a                                 ; $65e4: $ea $c8 $71
    rlca                                          ; $65e7: $07
    ld a, [hl+]                                   ; $65e8: $2a
    sub b                                         ; $65e9: $90
    add e                                         ; $65ea: $83
    or d                                          ; $65eb: $b2
    add hl, hl                                    ; $65ec: $29
    cp $00                                        ; $65ed: $fe $00
    rst $10                                       ; $65ef: $d7
    dec sp                                        ; $65f0: $3b
    jp hl                                         ; $65f1: $e9


    inc h                                         ; $65f2: $24
    cpl                                           ; $65f3: $2f
    or c                                          ; $65f4: $b1
    cp h                                          ; $65f5: $bc
    sbc a                                         ; $65f6: $9f
    xor h                                         ; $65f7: $ac
    jp nc, $a820                                  ; $65f8: $d2 $20 $a8

    add hl, de                                    ; $65fb: $19
    rra                                           ; $65fc: $1f
    ld l, a                                       ; $65fd: $6f
    ld d, a                                       ; $65fe: $57
    rr a                                          ; $65ff: $cb $1f
    db $ed                                        ; $6601: $ed
    ld b, e                                       ; $6602: $43

jr_047_6603:
    di                                            ; $6603: $f3
    db $dd                                        ; $6604: $dd
    db $db                                        ; $6605: $db
    dec b                                         ; $6606: $05
    xor b                                         ; $6607: $a8
    ld c, [hl]                                    ; $6608: $4e
    dec b                                         ; $6609: $05
    rla                                           ; $660a: $17
    cp e                                          ; $660b: $bb
    inc [hl]                                      ; $660c: $34
    ld [hl+], a                                   ; $660d: $22
    ld sp, $01f1                                  ; $660e: $31 $f1 $01
    rst $10                                       ; $6611: $d7
    db $e4                                        ; $6612: $e4
    jp nz, $cb0a                                  ; $6613: $c2 $0a $cb

    rrca                                          ; $6616: $0f
    sub [hl]                                      ; $6617: $96
    rst $38                                       ; $6618: $ff
    inc hl                                        ; $6619: $23
    rst $28                                       ; $661a: $ef
    db $fc                                        ; $661b: $fc
    ld l, a                                       ; $661c: $6f
    sra c                                         ; $661d: $cb $29
    ld h, $33                                     ; $661f: $26 $33
    ld e, $e8                                     ; $6621: $1e $e8
    add hl, de                                    ; $6623: $19
    sbc e                                         ; $6624: $9b
    ld [c], a                                     ; $6625: $e2
    rrca                                          ; $6626: $0f

jr_047_6627:
    ld d, a                                       ; $6627: $57
    db $ed                                        ; $6628: $ed
    ld [hl], $b5                                  ; $6629: $36 $b5
    rra                                           ; $662b: $1f
    ld a, c                                       ; $662c: $79
    db $e3                                        ; $662d: $e3
    ld h, c                                       ; $662e: $61
    rst $20                                       ; $662f: $e7
    inc h                                         ; $6630: $24
    ld d, [hl]                                    ; $6631: $56
    ld c, $55                                     ; $6632: $0e $55
    cp h                                          ; $6634: $bc
    xor e                                         ; $6635: $ab
    ret z                                         ; $6636: $c8

    ld b, e                                       ; $6637: $43
    dec [hl]                                      ; $6638: $35
    rst $18                                       ; $6639: $df
    cp l                                          ; $663a: $bd
    pop af                                        ; $663b: $f1
    db $dd                                        ; $663c: $dd
    sub d                                         ; $663d: $92
    ld [c], a                                     ; $663e: $e2
    cpl                                           ; $663f: $2f
    ld h, l                                       ; $6640: $65
    di                                            ; $6641: $f3
    add h                                         ; $6642: $84
    add hl, hl                                    ; $6643: $29
    xor e                                         ; $6644: $ab

Jump_047_6645:
    rst $20                                       ; $6645: $e7
    ld e, d                                       ; $6646: $5a

jr_047_6647:
    xor $65                                       ; $6647: $ee $65
    adc l                                         ; $6649: $8d
    xor [hl]                                      ; $664a: $ae
    and l                                         ; $664b: $a5
    cpl                                           ; $664c: $2f
    ld e, l                                       ; $664d: $5d

jr_047_664e:
    ld c, h                                       ; $664e: $4c
    ld h, d                                       ; $664f: $62
    jr nz, jr_047_6669                            ; $6650: $20 $17

    sbc c                                         ; $6652: $99
    pop de                                        ; $6653: $d1
    ld a, $b4                                     ; $6654: $3e $b4
    or b                                          ; $6656: $b0
    inc a                                         ; $6657: $3c
    rlca                                          ; $6658: $07
    add hl, sp                                    ; $6659: $39
    or h                                          ; $665a: $b4
    inc b                                         ; $665b: $04
    jp nz, $1f27                                  ; $665c: $c2 $27 $1f

jr_047_665f:
    rst $28                                       ; $665f: $ef
    sbc d                                         ; $6660: $9a
    inc e                                         ; $6661: $1c
    jr nc, jr_047_6647                            ; $6662: $30 $e3

    ld d, l                                       ; $6664: $55
    inc h                                         ; $6665: $24
    ld [$8cd2], a                                 ; $6666: $ea $d2 $8c

jr_047_6669:
    ld h, $60                                     ; $6669: $26 $60
    ld h, [hl]                                    ; $666b: $66
    ld [hl], e                                    ; $666c: $73
    ccf                                           ; $666d: $3f
    ld e, d                                       ; $666e: $5a
    sbc d                                         ; $666f: $9a
    pop de                                        ; $6670: $d1
    inc d                                         ; $6671: $14
    ld a, a                                       ; $6672: $7f
    add hl, hl                                    ; $6673: $29
    sbc e                                         ; $6674: $9b
    ld [hl], e                                    ; $6675: $73
    rst $38                                       ; $6676: $ff
    and a                                         ; $6677: $a7
    dec b                                         ; $6678: $05
    dec e                                         ; $6679: $1d
    ld [hl], a                                    ; $667a: $77
    ld [de], a                                    ; $667b: $12
    inc bc                                        ; $667c: $03
    reti                                          ; $667d: $d9


    adc h                                         ; $667e: $8c
    ld [hl], a                                    ; $667f: $77
    cp l                                          ; $6680: $bd
    sub e                                         ; $6681: $93
    call $aa9d                                    ; $6682: $cd $9d $aa
    ld [hl], a                                    ; $6685: $77
    ld [hl-], a                                   ; $6686: $32
    ld e, $fd                                     ; $6687: $1e $fd
    db $f4                                        ; $6689: $f4
    ld e, c                                       ; $668a: $59
    rst $20                                       ; $668b: $e7
    call c, $fb9c                                 ; $668c: $dc $9c $fb
    ccf                                           ; $668f: $3f
    ld a, c                                       ; $6690: $79
    db $e3                                        ; $6691: $e3
    dec b                                         ; $6692: $05
    db $dd                                        ; $6693: $dd
    rst $38                                       ; $6694: $ff
    ld [hl], d                                    ; $6695: $72
    ld l, c                                       ; $6696: $69
    ld b, [hl]                                    ; $6697: $46
    inc de                                        ; $6698: $13
    jr nc, jr_047_664e                            ; $6699: $30 $b3

    add hl, hl                                    ; $669b: $29
    ld a, a                                       ; $669c: $7f
    call nz, $01f1                                ; $669d: $c4 $f1 $01
    sub a                                         ; $66a0: $97
    and [hl]                                      ; $66a1: $a6
    push af                                       ; $66a2: $f5
    cp a                                          ; $66a3: $bf
    ret c                                         ; $66a4: $d8

    and l                                         ; $66a5: $a5
    ld de, $8989                                  ; $66a6: $11 $89 $89
    ld [hl], a                                    ; $66a9: $77
    dec d                                         ; $66aa: $15
    ld a, c                                       ; $66ab: $79
    xor b                                         ; $66ac: $a8
    ld d, $35                                     ; $66ad: $16 $35
    ld e, e                                       ; $66af: $5b
    jp c, Jump_000_1acb                           ; $66b0: $da $cb $1a

    ld e, l                                       ; $66b3: $5d
    ld c, e                                       ; $66b4: $4b
    ld e, a                                       ; $66b5: $5f
    adc d                                         ; $66b6: $8a
    or a                                          ; $66b7: $b7
    ld c, e                                       ; $66b8: $4b
    inc c                                         ; $66b9: $0c
    halt                                          ; $66ba: $76
    ld [hl], $bd                                  ; $66bb: $36 $bd
    and b                                         ; $66bd: $a0
    dec bc                                        ; $66be: $0b
    xor e                                         ; $66bf: $ab
    and c                                         ; $66c0: $a1
    and $da                                       ; $66c1: $e6 $da
    inc e                                         ; $66c3: $1c
    ld a, a                                       ; $66c4: $7f
    or a                                          ; $66c5: $b7
    and h                                         ; $66c6: $a4
    ld hl, sp-$35                                 ; $66c7: $f8 $cb
    ld [hl], c                                    ; $66c9: $71
    daa                                           ; $66ca: $27
    or c                                          ; $66cb: $b1
    rst $20                                       ; $66cc: $e7
    ld h, [hl]                                    ; $66cd: $66
    cp h                                          ; $66ce: $bc
    ld l, e                                       ; $66cf: $6b
    ld [hl], d                                    ; $66d0: $72
    ret nz                                        ; $66d1: $c0

    ld h, [hl]                                    ; $66d2: $66
    jp c, $c535                                   ; $66d3: $da $35 $c5

    ld c, e                                       ; $66d6: $4b
    inc sp                                        ; $66d7: $33
    jp c, $df73                                   ; $66d8: $da $73 $df

    pop af                                        ; $66db: $f1
    add b                                         ; $66dc: $80
    jr nc, jr_047_665f                            ; $66dd: $30 $80

    ld l, $26                                     ; $66df: $2e $26
    ld a, a                                       ; $66e1: $7f
    or h                                          ; $66e2: $b4

jr_047_66e3:
    and b                                         ; $66e3: $a0
    di                                            ; $66e4: $f3
    ld h, [hl]                                    ; $66e5: $66
    inc [hl]                                      ; $66e6: $34
    push bc                                       ; $66e7: $c5
    ld h, h                                       ; $66e8: $64
    ld d, d                                       ; $66e9: $52
    dec l                                         ; $66ea: $2d
    call Call_047_7f88                            ; $66eb: $cd $88 $7f
    xor a                                         ; $66ee: $af
    inc e                                         ; $66ef: $1c
    ld d, a                                       ; $66f0: $57
    ld l, a                                       ; $66f1: $6f
    and e                                         ; $66f2: $a3
    add hl, hl                                    ; $66f3: $29
    ld [hl], $e3                                  ; $66f4: $36 $e3
    sbc l                                         ; $66f6: $9d
    adc h                                         ; $66f7: $8c
    rst $30                                       ; $66f8: $f7
    and c                                         ; $66f9: $a1
    ld a, c                                       ; $66fa: $79
    db $ec                                        ; $66fb: $ec
    ld a, h                                       ; $66fc: $7c
    dec e                                         ; $66fd: $1d
    adc d                                         ; $66fe: $8a
    db $e3                                        ; $66ff: $e3
    ld hl, sp+$00                                 ; $6700: $f8 $00
    jr nc, jr_047_66e3                            ; $6702: $30 $df

    and b                                         ; $6704: $a0
    sub $4f                                       ; $6705: $d6 $4f
    ret nz                                        ; $6707: $c0

    call z, $c5e6                                 ; $6708: $cc $e6 $c5
    ld e, h                                       ; $670b: $5c
    ld l, d                                       ; $670c: $6a
    inc hl                                        ; $670d: $23
    ld e, a                                       ; $670e: $5f
    adc l                                         ; $670f: $8d
    add hl, bc                                    ; $6710: $09
    ld l, $16                                     ; $6711: $2e $16
    sbc c                                         ; $6713: $99
    pop de                                        ; $6714: $d1
    sub h                                         ; $6715: $94
    or [hl]                                       ; $6716: $b6
    add hl, de                                    ; $6717: $19
    inc a                                         ; $6718: $3c
    db $e4                                        ; $6719: $e4
    inc bc                                        ; $671a: $03
    cpl                                           ; $671b: $2f
    ld b, e                                       ; $671c: $43
    dec bc                                        ; $671d: $0b
    set 2, e                                      ; $671e: $cb $d3
    sbc a                                         ; $6720: $9f
    rst $20                                       ; $6721: $e7
    adc l                                         ; $6722: $8d
    rla                                           ; $6723: $17
    ld h, d                                       ; $6724: $62
    ld l, c                                       ; $6725: $69
    cp [hl]                                       ; $6726: $be
    dec bc                                        ; $6727: $0b
    dec hl                                        ; $6728: $2b
    sbc h                                         ; $6729: $9c
    dec e                                         ; $672a: $1d
    ld a, b                                       ; $672b: $78
    ret z                                         ; $672c: $c8

    dec sp                                        ; $672d: $3b
    add hl, de                                    ; $672e: $19
    inc a                                         ; $672f: $3c
    db $e4                                        ; $6730: $e4
    adc e                                         ; $6731: $8b
    inc bc                                        ; $6732: $03
    ld l, a                                       ; $6733: $6f
    ld h, e                                       ; $6734: $63
    sub a                                         ; $6735: $97
    ld l, l                                       ; $6736: $6d
    call nz, Call_000_193b                        ; $6737: $c4 $3b $19
    cpl                                           ; $673a: $2f
    call nz, $8960                                ; $673b: $c4 $60 $89
    push hl                                       ; $673e: $e5
    add l                                         ; $673f: $85
    xor l                                         ; $6740: $ad
    adc b                                         ; $6741: $88
    rst $20                                       ; $6742: $e7
    sub [hl]                                      ; $6743: $96
    inc a                                         ; $6744: $3c
    ld [hl], $fd                                  ; $6745: $36 $fd
    ld bc, $13cf                                  ; $6747: $01 $cf $13
    ld b, $80                                     ; $674a: $06 $80
    rst $10                                       ; $674c: $d7
    and $c2                                       ; $674d: $e6 $c2
    rrca                                          ; $674f: $0f
    ld a, [hl-]                                   ; $6750: $3a
    xor d                                         ; $6751: $aa
    ld l, h                                       ; $6752: $6c
    ld h, d                                       ; $6753: $62
    add d                                         ; $6754: $82
    ld h, c                                       ; $6755: $61
    add d                                         ; $6756: $82
    ld a, d                                       ; $6757: $7a
    ld l, h                                       ; $6758: $6c
    ld a, [$b6f8]                                 ; $6759: $fa $f8 $b6
    inc bc                                        ; $675c: $03
    rst $28                                       ; $675d: $ef
    db $fd                                        ; $675e: $fd
    db $f4                                        ; $675f: $f4
    and l                                         ; $6760: $a5
    ld c, c                                       ; $6761: $49
    db $ed                                        ; $6762: $ed
    and b                                         ; $6763: $a0
    ld d, d                                       ; $6764: $52
    cp d                                          ; $6765: $ba
    ld c, $57                                     ; $6766: $0e $57
    ld c, a                                       ; $6768: $4f
    ld a, [hl-]                                   ; $6769: $3a
    ret                                           ; $676a: $c9


    ld [hl], e                                    ; $676b: $73
    sub [hl]                                      ; $676c: $96
    ld e, b                                       ; $676d: $58
    ld e, [hl]                                    ; $676e: $5e
    sbc d                                         ; $676f: $9a
    pop de                                        ; $6770: $d1
    ld a, h                                       ; $6771: $7c
    daa                                           ; $6772: $27
    or l                                          ; $6773: $b5
    add e                                         ; $6774: $83
    rst $20                                       ; $6775: $e7

jr_047_6776:
    ld h, [hl]                                    ; $6776: $66
    ld a, h                                       ; $6777: $7c
    nop                                           ; $6778: $00
    cpl                                           ; $6779: $2f
    ld [hl], $5b                                  ; $677a: $36 $5b
    jp c, $9f2b                                   ; $677c: $da $2b $9f

    cp c                                          ; $677f: $b9
    ld [hl], h                                    ; $6780: $74
    ld h, l                                       ; $6781: $65
    ld l, a                                       ; $6782: $6f
    sbc [hl]                                      ; $6783: $9e
    ld b, $7a                                     ; $6784: $06 $7a
    xor [hl]                                      ; $6786: $ae
    ld d, [hl]                                    ; $6787: $56
    ldh a, [$d0]                                  ; $6788: $f0 $d0
    and b                                         ; $678a: $a0
    sbc l                                         ; $678b: $9d
    inc c                                         ; $678c: $0c
    ld e, $f2                                     ; $678d: $1e $f2
    ld a, $34                                     ; $678f: $3e $34
    ld h, a                                       ; $6791: $67
    ld h, [hl]                                    ; $6792: $66
    cp c                                          ; $6793: $b9
    or b                                          ; $6794: $b0
    cp h                                          ; $6795: $bc
    ld h, d                                       ; $6796: $62
    ld a, [$b5ce]                                 ; $6797: $fa $ce $b5
    sbc h                                         ; $679a: $9c
    rst $28                                       ; $679b: $ef
    ld b, d                                       ; $679c: $42
    db $d3                                        ; $679d: $d3
    pop af                                        ; $679e: $f1

jr_047_679f:
    ld bc, $6a4f                                  ; $679f: $01 $4f $6a
    dec [hl]                                      ; $67a2: $35
    ld h, a                                       ; $67a3: $67
    ld d, c                                       ; $67a4: $51
    or e                                          ; $67a5: $b3
    and l                                         ; $67a6: $a5
    ld e, l                                       ; $67a7: $5d
    ld a, [de]                                    ; $67a8: $1a
    jr nz, jr_047_679f                            ; $67a9: $20 $f4

    dec sp                                        ; $67ab: $3b
    rst $38                                       ; $67ac: $ff
    ld c, d                                       ; $67ad: $4a
    cp [hl]                                       ; $67ae: $be
    ld e, b                                       ; $67af: $58
    adc b                                         ; $67b0: $88
    pop bc                                        ; $67b1: $c1
    ld d, b                                       ; $67b2: $50
    dec c                                         ; $67b3: $0d
    ld [hl], e                                    ; $67b4: $73
    cp [hl]                                       ; $67b5: $be
    inc de                                        ; $67b6: $13
    inc e                                         ; $67b7: $1c
    add a                                         ; $67b8: $87
    ld a, b                                       ; $67b9: $78
    xor [hl]                                      ; $67ba: $ae
    push hl                                       ; $67bb: $e5
    ld a, h                                       ; $67bc: $7c
    daa                                           ; $67bd: $27
    or l                                          ; $67be: $b5
    add e                                         ; $67bf: $83
    rst $20                                       ; $67c0: $e7
    ld h, [hl]                                    ; $67c1: $66
    ld a, h                                       ; $67c2: $7c
    nop                                           ; $67c3: $00
    cpl                                           ; $67c4: $2f
    ld [hl], $5b                                  ; $67c5: $36 $5b
    jp c, $01a5                                   ; $67c7: $da $a5 $01

    ld b, d                                       ; $67ca: $42
    cp a                                          ; $67cb: $bf
    sub e                                         ; $67cc: $93
    pop bc                                        ; $67cd: $c1
    ld b, e                                       ; $67ce: $43
    sbc $87                                       ; $67cf: $de $87
    and $cc                                       ; $67d1: $e6 $cc
    inc l                                         ; $67d3: $2c
    rst $20                                       ; $67d4: $e7
    dec sp                                        ; $67d5: $3b
    ld c, e                                       ; $67d6: $4b
    ld e, a                                       ; $67d7: $5f
    ld [$25a4], a                                 ; $67d8: $ea $a4 $25
    rst $08                                       ; $67db: $cf
    or l                                          ; $67dc: $b5
    ld e, h                                       ; $67dd: $5c
    ld e, b                                       ; $67de: $58
    ld e, $a8                                     ; $67df: $1e $a8
    ldh a, [$9d]                                  ; $67e1: $f0 $9d
    ld d, e                                       ; $67e3: $53
    ld a, h                                       ; $67e4: $7c
    nop                                           ; $67e5: $00
    cpl                                           ; $67e6: $2f
    ld [hl], $5b                                  ; $67e7: $36 $5b
    jp c, $01a5                                   ; $67e9: $da $a5 $01

    ld b, d                                       ; $67ec: $42
    cp a                                          ; $67ed: $bf
    and $a2                                       ; $67ee: $e6 $a2
    ld h, [hl]                                    ; $67f0: $66
    ld c, e                                       ; $67f1: $4b
    ld a, e                                       ; $67f2: $7b
    adc [hl]                                      ; $67f3: $8e
    jr nc, jr_047_6776                            ; $67f4: $30 $80

    ld b, d                                       ; $67f6: $42
    inc sp                                        ; $67f7: $33
    cp c                                          ; $67f8: $b9
    or b                                          ; $67f9: $b0
    add d                                         ; $67fa: $82
    ret nc                                        ; $67fb: $d0

    call c, $e687                                 ; $67fc: $dc $87 $e6
    inc c                                         ; $67ff: $0c
    db $f4                                        ; $6800: $f4
    ld h, h                                       ; $6801: $64
    ldh a, [$90]                                  ; $6802: $f0 $90
    db $e3                                        ; $6804: $e3
    inc bc                                        ; $6805: $03
    sub a                                         ; $6806: $97
    and [hl]                                      ; $6807: $a6
    push af                                       ; $6808: $f5
    cp a                                          ; $6809: $bf
    ret c                                         ; $680a: $d8

    and l                                         ; $680b: $a5
    ld de, $1189                                  ; $680c: $11 $89 $11
    ld a, a                                       ; $680f: $7f
    nop                                           ; $6810: $00
    rst $08                                       ; $6811: $cf
    db $fd                                        ; $6812: $fd
    ld a, [$9f46]                                 ; $6813: $fa $46 $9f
    ld b, b                                       ; $6816: $40
    di                                            ; $6817: $f3
    ld h, d                                       ; $6818: $62
    ld d, c                                       ; $6819: $51
    or e                                          ; $681a: $b3
    and l                                         ; $681b: $a5
    cp l                                          ; $681c: $bd
    ld a, [c]                                     ; $681d: $f2
    sbc c                                         ; $681e: $99
    ld c, e                                       ; $681f: $4b
    pop af                                        ; $6820: $f1
    or $22                                        ; $6821: $f6 $22
    ld b, $b9                                     ; $6823: $06 $b9
    inc [hl]                                      ; $6825: $34
    adc e                                         ; $6826: $8b
    add [hl]                                      ; $6827: $86
    ld l, d                                       ; $6828: $6a
    rst $08                                       ; $6829: $cf
    ld de, $5006                                  ; $682a: $11 $06 $50
    ld l, b                                       ; $682d: $68
    ld h, $e3                                     ; $682e: $26 $e3
    inc bc                                        ; $6830: $03
    ld l, a                                       ; $6831: $6f
    ld [hl], a                                    ; $6832: $77
    daa                                           ; $6833: $27
    call nc, $b9ba                                ; $6834: $d4 $ba $b9
    ld [hl], h                                    ; $6837: $74
    ld d, [hl]                                    ; $6838: $56
    sub c                                         ; $6839: $91
    xor b                                         ; $683a: $a8
    cp e                                          ; $683b: $bb
    inc [hl]                                      ; $683c: $34
    ld [hl+], a                                   ; $683d: $22
    ld sp, $a9b7                                  ; $683e: $31 $b7 $a9
    ld c, c                                       ; $6841: $49
    db $ed                                        ; $6842: $ed
    and b                                         ; $6843: $a0
    ld a, [de]                                    ; $6844: $1a
    ld h, [hl]                                    ; $6845: $66
    ld a, h                                       ; $6846: $7c
    nop                                           ; $6847: $00
    sub a                                         ; $6848: $97
    xor l                                         ; $6849: $ad
    adc b                                         ; $684a: $88
    rst $20                                       ; $684b: $e7
    call z, Call_047_4a77                         ; $684c: $cc $77 $4a
    rst $10                                       ; $684f: $d7
    pop hl                                        ; $6850: $e1
    ld [$458b], a                                 ; $6851: $ea $8b $45
    call $ae96                                    ; $6854: $cd $96 $ae
    inc e                                         ; $6857: $1c
    sub a                                         ; $6858: $97
    ld e, b                                       ; $6859: $58
    ld a, [de]                                    ; $685a: $1a
    ld a, [hl+]                                   ; $685b: $2a
    add l                                         ; $685c: $85
    adc l                                         ; $685d: $8d
    rst $30                                       ; $685e: $f7
    ld c, h                                       ; $685f: $4c
    adc $5b                                       ; $6860: $ce $5b
    ld c, $98                                     ; $6862: $0e $98
    pop af                                        ; $6864: $f1
    jp nz, $fef2                                  ; $6865: $c2 $f2 $fe

    sub a                                         ; $6868: $97
    rrc a                                         ; $6869: $cb $0f
    or $a3                                        ; $686b: $f6 $a3
    ld a, c                                       ; $686d: $79
    db $ec                                        ; $686e: $ec
    xor [hl]                                      ; $686f: $ae
    ld h, d                                       ; $6870: $62
    add d                                         ; $6871: $82
    xor d                                         ; $6872: $aa
    sbc l                                         ; $6873: $9d
    call z, $a768                                 ; $6874: $cc $68 $a7
    ld l, $2c                                     ; $6877: $2e $2c
    rst $08                                       ; $6879: $cf
    db $f4                                        ; $687a: $f4
    cp [hl]                                       ; $687b: $be
    ld e, e                                       ; $687c: $5b
    ld e, d                                       ; $687d: $5a
    ld l, b                                       ; $687e: $68
    sbc $37                                       ; $687f: $de $37
    db $e3                                        ; $6881: $e3
    inc bc                                        ; $6882: $03
    ld d, a                                       ; $6883: $57
    adc l                                         ; $6884: $8d
    and a                                         ; $6885: $a7
    ld sp, $3c90                                  ; $6886: $31 $90 $3c
    call z, $f27d                                 ; $6889: $cc $7d $f2
    dec e                                         ; $688c: $1d
    ld [hl], a                                    ; $688d: $77
    ld h, a                                       ; $688e: $67
    inc c                                         ; $688f: $0c
    ld [hl-], a                                   ; $6890: $32
    sbc $5b                                       ; $6891: $de $5b
    ld e, a                                       ; $6893: $5f
    inc bc                                        ; $6894: $03
    sbc [hl]                                      ; $6895: $9e
    or e                                          ; $6896: $b3
    ld [$9983], sp                                ; $6897: $08 $83 $99
    ld d, [hl]                                    ; $689a: $56
    db $ec                                        ; $689b: $ec
    ld [$2b1a], sp                                ; $689c: $08 $1a $2b
    ld [c], a                                     ; $689f: $e2
    dec hl                                        ; $68a0: $2b
    rlca                                          ; $68a1: $07
    ld c, a                                       ; $68a2: $4f
    ld h, c                                       ; $68a3: $61
    or b                                          ; $68a4: $b0
    ld l, d                                       ; $68a5: $6a
    ld l, c                                       ; $68a6: $69
    ld b, [hl]                                    ; $68a7: $46
    inc de                                        ; $68a8: $13
    inc [hl]                                      ; $68a9: $34
    ld b, $6e                                     ; $68aa: $06 $6e
    ld [hl], e                                    ; $68ac: $73
    and [hl]                                      ; $68ad: $a6
    dec d                                         ; $68ae: $15
    dec sp                                        ; $68af: $3b
    add d                                         ; $68b0: $82
    add $8a                                       ; $68b1: $c6 $8a
    jr c, @+$40                                   ; $68b3: $38 $3e

    nop                                           ; $68b5: $00
    rst $08                                       ; $68b6: $cf
    rst $38                                       ; $68b7: $ff
    ld l, b                                       ; $68b8: $68
    rra                                           ; $68b9: $1f
    cp d                                          ; $68ba: $ba
    ret c                                         ; $68bb: $d8

    and l                                         ; $68bc: $a5
    ld de, $8989                                  ; $68bd: $11 $89 $89
    rrca                                          ; $68c0: $0f
    sub a                                         ; $68c1: $97
    ld b, $08                                     ; $68c2: $06 $08

jr_047_68c4:
    cp l                                          ; $68c4: $bd
    ld hl, sp-$13                                 ; $68c5: $f8 $ed
    ld l, l                                       ; $68c7: $6d
    add e                                         ; $68c8: $83
    add a                                         ; $68c9: $87
    cp h                                          ; $68ca: $bc
    rrca                                          ; $68cb: $0f
    dec l                                         ; $68cc: $2d
    jp nz, $fc40                                  ; $68cd: $c2 $40 $fc

    ld bc, $7faf                                  ; $68d0: $01 $af $7f
    ld [hl+], a                                   ; $68d3: $22
    ld sp, $76f1                                  ; $68d4: $31 $f1 $76
    dec d                                         ; $68d7: $15
    ld a, c                                       ; $68d8: $79
    ld a, [$f2cb]                                 ; $68d9: $fa $cb $f2
    ld d, b                                       ; $68dc: $50
    dec c                                         ; $68dd: $0d
    ld d, h                                       ; $68de: $54
    jp hl                                         ; $68df: $e9


    rst $08                                       ; $68e0: $cf
    call $00f8                                    ; $68e1: $cd $f8 $00
    xor a                                         ; $68e4: $af
    ld a, a                                       ; $68e5: $7f
    ld [hl+], a                                   ; $68e6: $22
    ld sp, $3317                                  ; $68e7: $31 $17 $33
    xor l                                         ; $68ea: $ad
    db $db                                        ; $68eb: $db
    ld e, h                                       ; $68ec: $5c
    ld h, h                                       ; $68ed: $64
    ld b, [hl]                                    ; $68ee: $46
    inc sp                                        ; $68ef: $33
    sub c                                         ; $68f0: $91
    ld d, b                                       ; $68f1: $50
    ld [hl], $8d                                  ; $68f2: $36 $8d
    add hl, bc                                    ; $68f4: $09
    sbc d                                         ; $68f5: $9a
    ld [hl], e                                    ; $68f6: $73
    dec l                                         ; $68f7: $2d
    and a                                         ; $68f8: $a7
    sbc e                                         ; $68f9: $9b
    sbc b                                         ; $68fa: $98
    and b                                         ; $68fb: $a0
    add hl, sp                                    ; $68fc: $39
    or e                                          ; $68fd: $b3
    sbc h                                         ; $68fe: $9c
    ld b, a                                       ; $68ff: $47
    sbc [hl]                                      ; $6900: $9e
    cp $b2                                        ; $6901: $fe $b2
    inc e                                         ; $6903: $1c
    rra                                           ; $6904: $1f
    adc a                                         ; $6905: $8f
    ld a, $70                                     ; $6906: $3e $70
    or c                                          ; $6908: $b1
    ld b, a                                       ; $6909: $47
    rra                                           ; $690a: $1f
    cp h                                          ; $690b: $bc
    ret c                                         ; $690c: $d8

    and e                                         ; $690d: $a3
    rrca                                          ; $690e: $0f
    push bc                                       ; $690f: $c5
    ld [hl], c                                    ; $6910: $71
    inc a                                         ; $6911: $3c
    sub h                                         ; $6912: $94
    dec bc                                        ; $6913: $0b
    xor e                                         ; $6914: $ab
    and c                                         ; $6915: $a1
    add hl, sp                                    ; $6916: $39
    dec sp                                        ; $6917: $3b
    ld a, a                                       ; $6918: $7f
    ld c, a                                       ; $6919: $4f
    ld [hl], $94                                  ; $691a: $36 $94
    di                                            ; $691c: $f3
    dec a                                         ; $691d: $3d
    ld [hl], a                                    ; $691e: $77
    sbc $c1                                       ; $691f: $de $c1
    ld [hl], e                                    ; $6921: $73
    db $d3                                        ; $6922: $d3
    scf                                           ; $6923: $37
    ld b, a                                       ; $6924: $47
    ld e, a                                       ; $6925: $5f
    ret nz                                        ; $6926: $c0

    jr nz, jr_047_68c4                            ; $6927: $20 $9b

    dec bc                                        ; $6929: $0b
    dec hl                                        ; $692a: $2b
    inc c                                         ; $692b: $0c
    sub h                                         ; $692c: $94
    xor e                                         ; $692d: $ab
    ld a, l                                       ; $692e: $7d
    inc e                                         ; $692f: $1c
    rst $00                                       ; $6930: $c7
    ld a, e                                       ; $6931: $7b
    db $f4                                        ; $6932: $f4
    pop hl                                        ; $6933: $e1
    adc e                                         ; $6934: $8b
    dec a                                         ; $6935: $3d
    ld a, [$c5c8]                                 ; $6936: $fa $c8 $c5
    ld e, $7d                                     ; $6939: $1e $7d
    inc [hl]                                      ; $693b: $34
    adc [hl]                                      ; $693c: $8e
    db $e3                                        ; $693d: $e3
    inc bc                                        ; $693e: $03
    cpl                                           ; $693f: $2f
    add hl, sp                                    ; $6940: $39
    inc de                                        ; $6941: $13
    sbc d                                         ; $6942: $9a
    ld b, e                                       ; $6943: $43
    add hl, sp                                    ; $6944: $39
    rst $18                                       ; $6945: $df
    ld [hl], c                                    ; $6946: $71
    push af                                       ; $6947: $f5
    db $e4                                        ; $6948: $e4
    add hl, bc                                    ; $6949: $09
    inc bc                                        ; $694a: $03
    ld d, $bf                                     ; $694b: $16 $bf
    dec a                                         ; $694d: $3d
    rst $38                                       ; $694e: $ff
    and e                                         ; $694f: $a3
    sbc c                                         ; $6950: $99
    ld d, [hl]                                    ; $6951: $56
    db $ec                                        ; $6952: $ec
    ld [$2b1a], sp                                ; $6953: $08 $1a $2b
    ld [c], a                                     ; $6956: $e2
    ld b, c                                       ; $6957: $41
    and [hl]                                      ; $6958: $a6
    halt                                          ; $6959: $76
    ld l, d                                       ; $695a: $6a
    ld l, c                                       ; $695b: $69
    ld e, h                                       ; $695c: $5c
    ld [hl], d                                    ; $695d: $72
    ret nz                                        ; $695e: $c0

    ld c, h                                       ; $695f: $4c
    xor e                                         ; $6960: $ab
    and c                                         ; $6961: $a1
    sbc h                                         ; $6962: $9c
    call nc, Call_000_3466                        ; $6963: $d4 $66 $34
    and c                                         ; $6966: $a1
    add hl, de                                    ; $6967: $19
    rra                                           ; $6968: $1f
    xor a                                         ; $6969: $af
    ld a, a                                       ; $696a: $7f
    ld [hl+], a                                   ; $696b: $22
    ld sp, $4317                                  ; $696c: $31 $17 $43
    cp c                                          ; $696f: $b9
    or b                                          ; $6970: $b0
    jp nz, Jump_047_7320                          ; $6971: $c2 $20 $73

    adc $5d                                       ; $6974: $ce $5d
    ld [hl], e                                    ; $6976: $73
    and b                                         ; $6977: $a0
    adc c                                         ; $6978: $89
    push hl                                       ; $6979: $e5
    cp c                                          ; $697a: $b9
    sub [hl]                                      ; $697b: $96
    adc e                                         ; $697c: $8b
    ld l, [hl]                                    ; $697d: $6e
    rrc c                                         ; $697e: $cb $09
    db $f4                                        ; $6980: $f4
    cp a                                          ; $6981: $bf
    rrca                                          ; $6982: $0f
    ld a, [hl-]                                   ; $6983: $3a
    di                                            ; $6984: $f3
    cp [hl]                                       ; $6985: $be
    ld [hl], h                                    ; $6986: $74
    ld a, [$d5c4]                                 ; $6987: $fa $c4 $d5
    pop af                                        ; $698a: $f1
    ld bc, $5bcf                                  ; $698b: $01 $cf $5b
    ld l, $9d                                     ; $698e: $2e $9d
    dec h                                         ; $6990: $25
    sub [hl]                                      ; $6991: $96
    rlca                                          ; $6992: $07
    sub c                                         ; $6993: $91
    ld [hl], c                                    ; $6994: $71
    di                                            ; $6995: $f3
    ld h, d                                       ; $6996: $62
    jr z, jr_047_6a10                             ; $6997: $28 $77

    ld [hl-], a                                   ; $6999: $32
    ld a, b                                       ; $699a: $78
    ret z                                         ; $699b: $c8

    ei                                            ; $699c: $fb
    ret nc                                        ; $699d: $d0

    jp c, $509c                                   ; $699e: $da $9c $50

    ld l, l                                       ; $69a1: $6d
    add hl, bc                                    ; $69a2: $09
    ld [$d903], sp                                ; $69a3: $08 $03 $d9
    add hl, sp                                    ; $69a6: $39
    xor b                                         ; $69a7: $a8
    db $e3                                        ; $69a8: $e3
    inc bc                                        ; $69a9: $03
    ld l, a                                       ; $69aa: $6f
    sbc e                                         ; $69ab: $9b
    pop de                                        ; $69ac: $d1
    adc a                                         ; $69ad: $8f
    halt                                          ; $69ae: $76
    ld a, $95                                     ; $69af: $3e $95
    ld b, h                                       ; $69b1: $44
    inc a                                         ; $69b2: $3c
    ld h, a                                       ; $69b3: $67
    ld hl, $8696                                  ; $69b4: $21 $96 $86
    add hl, sp                                    ; $69b7: $39
    rst $20                                       ; $69b8: $e7
    or h                                          ; $69b9: $b4
    ld [hl], $39                                  ; $69ba: $36 $39
    add sp, -$18                                  ; $69bc: $e8 $e8
    and a                                         ; $69be: $a7
    cp a                                          ; $69bf: $bf
    or d                                          ; $69c0: $b2
    xor e                                         ; $69c1: $ab
    add $43                                       ; $69c2: $c6 $43
    or l                                          ; $69c4: $b5
    call nz, $dcf2                                ; $69c5: $c4 $f2 $dc
    and d                                         ; $69c8: $a2
    ld b, [hl]                                    ; $69c9: $46
    db $10                                        ; $69ca: $10
    rra                                           ; $69cb: $1f
    rst $10                                       ; $69cc: $d7
    db $e4                                        ; $69cd: $e4
    cp h                                          ; $69ce: $bc
    pop bc                                        ; $69cf: $c1
    ld b, e                                       ; $69d0: $43
    sbc [hl]                                      ; $69d1: $9e
    scf                                           ; $69d2: $37
    sbc $73                                       ; $69d3: $de $73
    add h                                         ; $69d5: $84
    ld bc, $9a14                                  ; $69d6: $01 $14 $9a
    ret                                           ; $69d9: $c9


    add hl, sp                                    ; $69da: $39
    dec bc                                        ; $69db: $0b
    or c                                          ; $69dc: $b1
    ld a, [de]                                    ; $69dd: $1a
    adc d                                         ; $69de: $8a
    ld [hl], a                                    ; $69df: $77
    ld c, l                                       ; $69e0: $4d
    ld c, [hl]                                    ; $69e1: $4e
    ld [hl], c                                    ; $69e2: $71
    push af                                       ; $69e3: $f5
    call c, Call_047_69ff                         ; $69e4: $dc $ff $69
    sbc $78                                       ; $69e7: $de $78
    adc $c2                                       ; $69e9: $ce $c2
    ld b, [hl]                                    ; $69eb: $46
    dec sp                                        ; $69ec: $3b
    rst $38                                       ; $69ed: $ff
    ld c, d                                       ; $69ee: $4a
    adc [hl]                                      ; $69ef: $8e
    rrca                                          ; $69f0: $0f
    ld d, a                                       ; $69f1: $57
    call Call_047_4268                            ; $69f2: $cd $68 $42
    ld [hl], e                                    ; $69f5: $73
    ld b, c                                       ; $69f6: $41
    db $e3                                        ; $69f7: $e3
    ld e, l                                       ; $69f8: $5d
    rst $28                                       ; $69f9: $ef
    ld b, d                                       ; $69fa: $42
    di                                            ; $69fb: $f3
    ld c, e                                       ; $69fc: $4b
    inc l                                         ; $69fd: $2c
    rst $28                                       ; $69fe: $ef

Call_047_69ff:
    db $fc                                        ; $69ff: $fc
    rla                                           ; $6a00: $17
    ld a, l                                       ; $6a01: $7d
    and $8e                                       ; $6a02: $e6 $8e
    xor c                                         ; $6a04: $a9
    adc $b9                                       ; $6a05: $ce $b9
    cp d                                          ; $6a07: $ba
    add hl, de                                    ; $6a08: $19
    rra                                           ; $6a09: $1f
    rst $10                                       ; $6a0a: $d7
    db $e4                                        ; $6a0b: $e4
    jp nz, $fb0a                                  ; $6a0c: $c2 $0a $fb

    ld l, [hl]                                    ; $6a0f: $6e

jr_047_6a10:
    ret                                           ; $6a10: $c9


    db $f4                                        ; $6a11: $f4
    jp nc, $168c                                  ; $6a12: $d2 $8c $16

    ld [hl], h                                    ; $6a15: $74
    and b                                         ; $6a16: $a0
    rst $20                                       ; $6a17: $e7
    rrca                                          ; $6a18: $0f
    rrca                                          ; $6a19: $0f
    ld e, c                                       ; $6a1a: $59
    db $fc                                        ; $6a1b: $fc
    ld bc, $9a2f                                  ; $6a1c: $01 $2f $9a
    pop de                                        ; $6a1f: $d1
    ld d, b                                       ; $6a20: $50
    ld c, [hl]                                    ; $6a21: $4e
    ld l, b                                       ; $6a22: $68
    ld l, $ac                                     ; $6a23: $2e $ac
    ld l, [hl]                                    ; $6a25: $6e
    ld h, h                                       ; $6a26: $64
    and [hl]                                      ; $6a27: $a6
    sub a                                         ; $6a28: $97
    ld e, b                                       ; $6a29: $58
    sbc $77                                       ; $6a2a: $de $77
    ld c, e                                       ; $6a2c: $4b
    and [hl]                                      ; $6a2d: $a6
    rlca                                          ; $6a2e: $07
    ld a, d                                       ; $6a2f: $7a
    ld l, d                                       ; $6a30: $6a
    dec d                                         ; $6a31: $15
    rst $00                                       ; $6a32: $c7
    cp e                                          ; $6a33: $bb
    ld h, $77                                     ; $6a34: $26 $77
    ld [hl-], a                                   ; $6a36: $32
    or l                                          ; $6a37: $b5
    db $10                                        ; $6a38: $10
    ld c, e                                       ; $6a39: $4b
    rla                                           ; $6a3a: $17
    inc de                                        ; $6a3b: $13
    jr nc, jr_047_6a96                            ; $6a3c: $30 $58

    ret nc                                        ; $6a3e: $d0

    ld c, c                                       ; $6a3f: $49
    db $ed                                        ; $6a40: $ed
    and b                                         ; $6a41: $a0
    adc d                                         ; $6a42: $8a
    db $e3                                        ; $6a43: $e3
    ld hl, sp+$00                                 ; $6a44: $f8 $00
    rst $10                                       ; $6a46: $d7
    call nc, Call_047_723c                        ; $6a47: $d4 $3c $72
    inc e                                         ; $6a4a: $1c
    rst $00                                       ; $6a4b: $c7
    ld b, e                                       ; $6a4c: $43
    dec [hl]                                      ; $6a4d: $35
    adc a                                         ; $6a4e: $8f
    inc a                                         ; $6a4f: $3c
    db $d3                                        ; $6a50: $d3
    cp d                                          ; $6a51: $ba
    sub c                                         ; $6a52: $91
    sbc c                                         ; $6a53: $99
    sbc [hl]                                      ; $6a54: $9e
    ld l, e                                       ; $6a55: $6b
    cp c                                          ; $6a56: $b9
    ld [$2b83], sp                                ; $6a57: $08 $83 $2b
    rlca                                          ; $6a5a: $07
    rst $10                                       ; $6a5b: $d7
    dec l                                         ; $6a5c: $2d
    sbc $de                                       ; $6a5d: $de $de
    xor $b2                                       ; $6a5f: $ee $b2
    ld d, c                                       ; $6a61: $51
    ld [hl], e                                    ; $6a62: $73
    and b                                         ; $6a63: $a0
    ld sp, hl                                     ; $6a64: $f9
    dec bc                                        ; $6a65: $0b
    halt                                          ; $6a66: $76
    ld b, [hl]                                    ; $6a67: $46
    db $ed                                        ; $6a68: $ed
    sub [hl]                                      ; $6a69: $96
    sbc d                                         ; $6a6a: $9a
    ld a, e                                       ; $6a6b: $7b
    dec e                                         ; $6a6c: $1d
    and l                                         ; $6a6d: $a5
    xor h                                         ; $6a6e: $ac
    ld d, [hl]                                    ; $6a6f: $56
    adc e                                         ; $6a70: $8b
    jp c, $8e38                                   ; $6a71: $da $38 $8e

    rst $20                                       ; $6a74: $e7
    db $ed                                        ; $6a75: $ed
    ld [hl], $35                                  ; $6a76: $36 $35
    cp $6e                                        ; $6a78: $fe $6e
    db $d3                                        ; $6a7a: $d3
    adc h                                         ; $6a7b: $8c
    inc d                                         ; $6a7c: $14
    db $f4                                        ; $6a7d: $f4
    sbc e                                         ; $6a7e: $9b
    ld [hl], c                                    ; $6a7f: $71
    inc e                                         ; $6a80: $1c
    rst $08                                       ; $6a81: $cf
    db $fd                                        ; $6a82: $fd
    sbc a                                         ; $6a83: $9f
    ld d, $96                                     ; $6a84: $16 $96
    daa                                           ; $6a86: $27
    ld a, a                                       ; $6a87: $7f
    call nc, $9df4                                ; $6a88: $d4 $f4 $9d
    add d                                         ; $6a8b: $82
    add a                                         ; $6a8c: $87
    rst $38                                       ; $6a8d: $ff
    db $eb                                        ; $6a8e: $eb
    ret nz                                        ; $6a8f: $c0

    adc h                                         ; $6a90: $8c
    ld [c], a                                     ; $6a91: $e2
    inc bc                                        ; $6a92: $03
    rst $08                                       ; $6a93: $cf
    sbc c                                         ; $6a94: $99
    push hl                                       ; $6a95: $e5

jr_047_6a96:
    ld c, [hl]                                    ; $6a96: $4e
    ld e, l                                       ; $6a97: $5d
    ld a, [hl-]                                   ; $6a98: $3a
    ld c, e                                       ; $6a99: $4b
    inc sp                                        ; $6a9a: $33
    sbc d                                         ; $6a9b: $9a
    rst $28                                       ; $6a9c: $ef
    call c, Call_047_41af                         ; $6a9d: $dc $af $41
    db $d3                                        ; $6aa0: $d3
    ld [hl], a                                    ; $6aa1: $77
    ld d, d                                       ; $6aa2: $52
    dec sp                                        ; $6aa3: $3b
    xor b                                         ; $6aa4: $a8
    ld l, $16                                     ; $6aa5: $2e $16
    dec [hl]                                      ; $6aa7: $35
    ld e, e                                       ; $6aa8: $5b
    cp d                                          ; $6aa9: $ba
    ld [hl], d                                    ; $6aaa: $72
    nop                                           ; $6aab: $00
    rst $10                                       ; $6aac: $d7
    dec de                                        ; $6aad: $1b
    ld hl, $ef98                                  ; $6aae: $21 $98 $ef
    and b                                         ; $6ab1: $a0
    ld b, [hl]                                    ; $6ab2: $46
    ld [$762e], sp                                ; $6ab3: $08 $2e $76
    ld [$5fa2], a                                 ; $6ab6: $ea $a2 $5f
    ld l, [hl]                                    ; $6ab9: $6e
    xor $43                                       ; $6aba: $ee $43
    ld a, [bc]                                    ; $6abc: $0a
    ld e, $62                                     ; $6abd: $1e $62
    cp c                                          ; $6abf: $b9
    add hl, de                                    ; $6ac0: $19
    rst $28                                       ; $6ac1: $ef
    jp nc, $c488                                  ; $6ac2: $d2 $88 $c4

    ld e, h                                       ; $6ac5: $5c
    inc l                                         ; $6ac6: $2c
    call nz, Call_047_6dd2                        ; $6ac7: $c4 $d2 $6d
    ld l, d                                       ; $6aca: $6a
    ld b, c                                       ; $6acb: $41
    rlca                                          ; $6acc: $07
    xor d                                         ; $6acd: $aa
    db $fd                                        ; $6ace: $fd
    sbc d                                         ; $6acf: $9a
    di                                            ; $6ad0: $f3
    sbc l                                         ; $6ad1: $9d
    add $40                                       ; $6ad2: $c6 $40
    pop af                                        ; $6ad4: $f1
    and d                                         ; $6ad5: $a2
    ld a, [c]                                     ; $6ad6: $f2
    ld c, [hl]                                    ; $6ad7: $4e
    add $0b                                       ; $6ad8: $c6 $0b
    cp d                                          ; $6ada: $ba
    db $fc                                        ; $6adb: $fc
    ld e, $c1                                     ; $6adc: $1e $c1
    jp nz, $f10a                                  ; $6ade: $c2 $0a $f1

    sbc [hl]                                      ; $6ae1: $9e
    rst $38                                       ; $6ae2: $ff
    rra                                           ; $6ae3: $1f
    sbc d                                         ; $6ae4: $9a
    ld l, c                                       ; $6ae5: $69
    ld e, l                                       ; $6ae6: $5d
    or l                                          ; $6ae7: $b5
    sub e                                         ; $6ae8: $93
    pop af                                        ; $6ae9: $f1
    ld c, d                                       ; $6aea: $4a
    ei                                            ; $6aeb: $fb

jr_047_6aec:
    ret nc                                        ; $6aec: $d0

    inc a                                         ; $6aed: $3c
    halt                                          ; $6aee: $76
    ld a, [de]                                    ; $6aef: $1a
    inc bc                                        ; $6af0: $03
    push bc                                       ; $6af1: $c5
    ld d, e                                       ; $6af2: $53
    ld l, h                                       ; $6af3: $6c
    add $f1                                       ; $6af4: $c6 $f1
    xor [hl]                                      ; $6af6: $ae
    ret                                           ; $6af7: $c9


    add l                                         ; $6af8: $85
    ld h, [hl]                                    ; $6af9: $66
    ld a, d                                       ; $6afa: $7a
    dec d                                         ; $6afb: $15
    adc c                                         ; $6afc: $89
    ld a, [hl-]                                   ; $6afd: $3a
    rst $18                                       ; $6afe: $df

Call_047_6aff:
    ld e, l                                       ; $6aff: $5d
    push bc                                       ; $6b00: $c5
    inc b                                         ; $6b01: $04
    ld d, l                                       ; $6b02: $55
    ei                                            ; $6b03: $fb
    ret nc                                        ; $6b04: $d0

    sbc d                                         ; $6b05: $9a
    dec sp                                        ; $6b06: $3b
    ld h, e                                       ; $6b07: $63
    rla                                           ; $6b08: $17
    ld [hl], h                                    ; $6b09: $74
    sbc $72                                       ; $6b0a: $de $72
    xor $ff                                       ; $6b0c: $ee $ff
    inc [hl]                                      ; $6b0e: $34
    rst $18                                       ; $6b0f: $df
    ld h, c                                       ; $6b10: $61
    ld [bc], a                                    ; $6b11: $02
    ld c, e                                       ; $6b12: $4b
    jr nc, jr_047_6aec                            ; $6b13: $30 $d7

    ld [hl], d                                    ; $6b15: $72
    rst $08                                       ; $6b16: $cf
    ld a, l                                       ; $6b17: $7d
    rst $00                                       ; $6b18: $c7
    inc bc                                        ; $6b19: $03
    jp nz, $8a00                                  ; $6b1a: $c2 $00 $8a

    rrca                                          ; $6b1d: $0f
    ld l, a                                       ; $6b1e: $6f
    dec de                                        ; $6b1f: $1b
    rrca                                          ; $6b20: $0f
    push de                                       ; $6b21: $d5
    ld a, h                                       ; $6b22: $7c
    ld [hl], a                                    ; $6b23: $77
    dec d                                         ; $6b24: $15
    inc de                                        ; $6b25: $13
    ld d, h                                       ; $6b26: $54
    ld e, l                                       ; $6b27: $5d
    add hl, sp                                    ; $6b28: $39
    nop                                           ; $6b29: $00
    rst $08                                       ; $6b2a: $cf
    scf                                           ; $6b2b: $37
    add a                                         ; $6b2c: $87
    ld [hl], d                                    ; $6b2d: $72
    adc c                                         ; $6b2e: $89
    push hl                                       ; $6b2f: $e5
    sbc l                                         ; $6b30: $9d
    dec bc                                        ; $6b31: $0b
    ld b, b                                       ; $6b32: $40
    db $e3                                        ; $6b33: $e3
    db $dd                                        ; $6b34: $dd
    add $bb                                       ; $6b35: $c6 $bb
    xor h                                         ; $6b37: $ac
    or b                                          ; $6b38: $b0
    xor b                                         ; $6b39: $a8
    cp h                                          ; $6b3a: $bc
    rst $30                                       ; $6b3b: $f7
    ld c, [hl]                                    ; $6b3c: $4e
    push bc                                       ; $6b3d: $c5
    ld d, h                                       ; $6b3e: $54
    ld e, h                                       ; $6b3f: $5c
    call z, $1771                                 ; $6b40: $cc $71 $17
    sbc c                                         ; $6b43: $99
    ld l, h                                       ; $6b44: $6c
    add $db                                       ; $6b45: $c6 $db
    ld l, l                                       ; $6b47: $6d
    ld [hl], d                                    ; $6b48: $72
    rst $28                                       ; $6b49: $ef
    ld h, c                                       ; $6b4a: $61
    rla                                           ; $6b4b: $17
    ld [hl], h                                    ; $6b4c: $74
    add d                                         ; $6b4d: $82
    add e                                         ; $6b4e: $83
    call c, $d8bc                                 ; $6b4f: $dc $bc $d8
    and l                                         ; $6b52: $a5
    ld de, $8989                                  ; $6b53: $11 $89 $89
    rrca                                          ; $6b56: $0f
    sub a                                         ; $6b57: $97
    ld b, [hl]                                    ; $6b58: $46
    ld e, h                                       ; $6b59: $5c
    adc l                                         ; $6b5a: $8d
    add c                                         ; $6b5b: $81
    sbc h                                         ; $6b5c: $9c
    or a                                          ; $6b5d: $b7
    sub h                                         ; $6b5e: $94
    ld [hl], e                                    ; $6b5f: $73
    rst $38                                       ; $6b60: $ff
    and a                                         ; $6b61: $a7
    add hl, sp                                    ; $6b62: $39
    and a                                         ; $6b63: $a7
    add hl, bc                                    ; $6b64: $09
    dec a                                         ; $6b65: $3d
    rst $38                                       ; $6b66: $ff
    jp z, $00f8                                   ; $6b67: $ca $f8 $00

    rst $08                                       ; $6b6a: $cf
    rst $38                                       ; $6b6b: $ff
    ld l, b                                       ; $6b6c: $68
    ld a, [hl+]                                   ; $6b6d: $2a
    xor e                                         ; $6b6e: $ab
    ld [hl], a                                    ; $6b6f: $77
    ld l, d                                       ; $6b70: $6a
    ld l, c                                       ; $6b71: $69
    ld l, l                                       ; $6b72: $6d
    xor d                                         ; $6b73: $aa
    ld l, c                                       ; $6b74: $69
    ld c, e                                       ; $6b75: $4b
    and b                                         ; $6b76: $a0
    ld [c], a                                     ; $6b77: $e2
    inc bc                                        ; $6b78: $03
    ld d, a                                       ; $6b79: $57
    dec sp                                        ; $6b7a: $3b
    ld e, a                                       ; $6b7b: $5f
    add a                                         ; $6b7c: $87
    add [hl]                                      ; $6b7d: $86
    ld l, d                                       ; $6b7e: $6a
    sbc $8c                                       ; $6b7f: $de $8c
    ld l, $16                                     ; $6b81: $2e $16
    dec [hl]                                      ; $6b83: $35
    ld e, e                                       ; $6b84: $5b
    adc d                                         ; $6b85: $8a
    rrca                                          ; $6b86: $0f
    ld l, a                                       ; $6b87: $6f
    ld [hl], a                                    ; $6b88: $77
    ld c, d                                       ; $6b89: $4a
    dec sp                                        ; $6b8a: $3b
    ret z                                         ; $6b8b: $c8

    call $ffb9                                    ; $6b8c: $cd $b9 $ff
    db $d3                                        ; $6b8f: $d3
    ld a, h                                       ; $6b90: $7c
    and a                                         ; $6b91: $a7
    sbc l                                         ; $6b92: $9d
    add h                                         ; $6b93: $84
    add a                                         ; $6b94: $87
    rla                                           ; $6b95: $17
    adc e                                         ; $6b96: $8b
    sbc d                                         ; $6b97: $9a
    dec l                                         ; $6b98: $2d
    push bc                                       ; $6b99: $c5
    cp e                                          ; $6b9a: $bb
    ld h, $e7                                     ; $6b9b: $26 $e7
    sbc e                                         ; $6b9d: $9b
    ld [hl], d                                    ; $6b9e: $72
    adc c                                         ; $6b9f: $89
    push hl                                       ; $6ba0: $e5
    ld a, c                                       ; $6ba1: $79
    db $e3                                        ; $6ba2: $e3
    add hl, sp                                    ; $6ba3: $39
    ei                                            ; $6ba4: $fb
    xor c                                         ; $6ba5: $a9
    halt                                          ; $6ba6: $76
    ld b, d                                       ; $6ba7: $42
    call Call_047_633b                            ; $6ba8: $cd $3b $63
    ld [hl], e                                    ; $6bab: $73
    push hl                                       ; $6bac: $e5
    ld h, [hl]                                    ; $6bad: $66
    ld a, h                                       ; $6bae: $7c
    nop                                           ; $6baf: $00
    rst $08                                       ; $6bb0: $cf
    ld a, l                                       ; $6bb1: $7d
    rst $00                                       ; $6bb2: $c7
    inc bc                                        ; $6bb3: $03
    jp nz, $9a00                                  ; $6bb4: $c2 $00 $9a

    ld d, b                                       ; $6bb7: $50
    ld l, a                                       ; $6bb8: $6f
    add hl, hl                                    ; $6bb9: $29

jr_047_6bba:
    ld a, c                                       ; $6bba: $79
    adc $dc                                       ; $6bbb: $ce $dc
    rst $38                                       ; $6bbd: $ff
    ld l, c                                       ; $6bbe: $69
    adc $69                                       ; $6bbf: $ce $69
    ld d, d                                       ; $6bc1: $52
    ld e, e                                       ; $6bc2: $5b
    ld a, d                                       ; $6bc3: $7a
    inc a                                         ; $6bc4: $3c
    ld h, e                                       ; $6bc5: $63
    db $e3                                        ; $6bc6: $e3
    inc bc                                        ; $6bc7: $03
    cpl                                           ; $6bc8: $2f
    rr e                                          ; $6bc9: $cb $1b
    ld [c], a                                     ; $6bcb: $e2
    inc bc                                        ; $6bcc: $03
    sub a                                         ; $6bcd: $97
    and [hl]                                      ; $6bce: $a6
    push af                                       ; $6bcf: $f5
    adc a                                         ; $6bd0: $8f
    rrca                                          ; $6bd1: $0f
    ld d, a                                       ; $6bd2: $57
    dec l                                         ; $6bd3: $2d
    push hl                                       ; $6bd4: $e5
    sbc h                                         ; $6bd5: $9c
    ld hl, sp+$00                                 ; $6bd6: $f8 $00
    ld d, a                                       ; $6bd8: $57
    cp e                                          ; $6bd9: $bb
    inc de                                        ; $6bda: $13
    and [hl]                                      ; $6bdb: $a6
    xor h                                         ; $6bdc: $ac
    ld d, [hl]                                    ; $6bdd: $56
    sub e                                         ; $6bde: $93
    rra                                           ; $6bdf: $1f
    ld l, d                                       ; $6be0: $6a
    adc [hl]                                      ; $6be1: $8e
    ld c, e                                       ; $6be2: $4b
    ld c, $d8                                     ; $6be3: $0e $d8
    ret                                           ; $6be5: $c9


    ld a, b                                       ; $6be6: $78
    rst $20                                       ; $6be7: $e7
    adc $2c                                       ; $6be8: $ce $2c
    rla                                           ; $6bea: $17
    ld [hl], h                                    ; $6beb: $74
    ld l, [hl]                                    ; $6bec: $6e
    ld c, c                                       ; $6bed: $49
    ld a, [hl]                                    ; $6bee: $7e
    xor b                                         ; $6bef: $a8
    add hl, de                                    ; $6bf0: $19
    rst $00                                       ; $6bf1: $c7
    pop af                                        ; $6bf2: $f1
    call c, Call_047_69ff                         ; $6bf3: $dc $ff $69
    ld l, l                                       ; $6bf6: $6d
    ld c, [hl]                                    ; $6bf7: $4e
    dec de                                        ; $6bf8: $1b
    jr z, @+$77                                   ; $6bf9: $28 $75

    db $10                                        ; $6bfb: $10
    ld h, c                                       ; $6bfc: $61
    and b                                         ; $6bfd: $a0
    sub [hl]                                      ; $6bfe: $96
    add $8e                                       ; $6bff: $c6 $8e
    ld b, e                                       ; $6c01: $43
    ld a, [de]                                    ; $6c02: $1a
    inc bc                                        ; $6c03: $03
    add hl, de                                    ; $6c04: $19
    rra                                           ; $6c05: $1f
    rst $10                                       ; $6c06: $d7
    ld sp, $d098                                  ; $6c07: $31 $98 $d0
    db $e4                                        ; $6c0a: $e4
    add l                                         ; $6c0b: $85
    adc l                                         ; $6c0c: $8d
    call nz, $9aef                                ; $6c0d: $c4 $ef $9a
    sbc h                                         ; $6c10: $9c
    ld d, b                                       ; $6c11: $50
    rst $38                                       ; $6c12: $ff
    xor e                                         ; $6c13: $ab
    cpl                                           ; $6c14: $2f
    ld d, $60                                     ; $6c15: $16 $60
    jr nc, jr_047_6bba                            ; $6c17: $30 $a1

    ret                                           ; $6c19: $c9


    dec bc                                        ; $6c1a: $0b
    jr nc, jr_047_6c2d                            ; $6c1b: $30 $10

    cp a                                          ; $6c1d: $bf
    ld l, e                                       ; $6c1e: $6b
    ld [hl], d                                    ; $6c1f: $72
    ld b, d                                       ; $6c20: $42
    db $fd                                        ; $6c21: $fd
    xor a                                         ; $6c22: $af
    cp [hl]                                       ; $6c23: $be
    ld e, b                                       ; $6c24: $58
    add b                                         ; $6c25: $80
    pop bc                                        ; $6c26: $c1
    add h                                         ; $6c27: $84
    ld h, $ef                                     ; $6c28: $26 $ef
    jp nc, $c488                                  ; $6c2a: $d2 $88 $c4

jr_047_6c2d:
    db $ec                                        ; $6c2d: $ec
    sub l                                         ; $6c2e: $95
    rst $08                                       ; $6c2f: $cf
    ld e, h                                       ; $6c30: $5c
    ld [de], a                                    ; $6c31: $12
    ld a, a                                       ; $6c32: $7f
    nop                                           ; $6c33: $00
    ld l, a                                       ; $6c34: $6f
    or a                                          ; $6c35: $b7
    ld l, d                                       ; $6c36: $6a
    xor $ff                                       ; $6c37: $ee $ff
    ld [hl], h                                    ; $6c39: $74
    ld b, [hl]                                    ; $6c3a: $46
    ld a, b                                       ; $6c3b: $78
    ret z                                         ; $6c3c: $c8

    ld [$3986], sp                                ; $6c3d: $08 $86 $39
    rst $18                                       ; $6c40: $df
    sbc l                                         ; $6c41: $9d
    ld sp, $dc50                                  ; $6c42: $31 $50 $dc
    add d                                         ; $6c45: $82
    and b                                         ; $6c46: $a0
    ld a, [hl+]                                   ; $6c47: $2a
    adc [hl]                                      ; $6c48: $8e
    db $e3                                        ; $6c49: $e3
    ld sp, hl                                     ; $6c4a: $f9
    db $db                                        ; $6c4b: $db
    ld l, b                                       ; $6c4c: $68
    ld h, a                                       ; $6c4d: $67
    ld h, h                                       ; $6c4e: $64
    ld l, [hl]                                    ; $6c4f: $6e
    ld c, [hl]                                    ; $6c50: $4e
    and h                                         ; $6c51: $a4
    ld sp, $4765                                  ; $6c52: $31 $65 $47
    add $dc                                       ; $6c55: $c6 $dc
    adc h                                         ; $6c57: $8c
    rrca                                          ; $6c58: $0f
    cpl                                           ; $6c59: $2f
    db $fc                                        ; $6c5a: $fc
    rrca                                          ; $6c5b: $0f
    dec l                                         ; $6c5c: $2d
    or c                                          ; $6c5d: $b1
    cp h                                          ; $6c5e: $bc
    ld d, e                                       ; $6c5f: $53
    pop bc                                        ; $6c60: $c1
    call c, Call_047_69ff                         ; $6c61: $dc $ff $69
    push de                                       ; $6c64: $d5
    ld [hl], d                                    ; $6c65: $72
    ld a, [bc]                                    ; $6c66: $0a
    ld e, $16                                     ; $6c67: $1e $16
    ld d, d                                       ; $6c69: $52
    push de                                       ; $6c6a: $d5
    di                                            ; $6c6b: $f3
    add $0b                                       ; $6c6c: $c6 $0b
    ld a, [hl-]                                   ; $6c6e: $3a
    ld l, $68                                     ; $6c6f: $2e $68
    jp z, Jump_047_711f                           ; $6c71: $ca $1f $71

    cp h                                          ; $6c74: $bc
    db $eb                                        ; $6c75: $eb
    ld e, l                                       ; $6c76: $5d
    db $f4                                        ; $6c77: $f4
    bit 1, e                                      ; $6c78: $cb $4b
    ld h, a                                       ; $6c7a: $67
    cp a                                          ; $6c7b: $bf
    and d                                         ; $6c7c: $a2
    ld h, [hl]                                    ; $6c7d: $66
    ld [hl], e                                    ; $6c7e: $73
    ld d, c                                       ; $6c7f: $51
    ld a, c                                       ; $6c80: $79
    rst $20                                       ; $6c81: $e7
    sub e                                         ; $6c82: $93
    ld c, c                                       ; $6c83: $49
    ld e, c                                       ; $6c84: $59
    ld [$3c14], a                                 ; $6c85: $ea $14 $3c
    inc l                                         ; $6c88: $2c
    and h                                         ; $6c89: $a4
    xor d                                         ; $6c8a: $aa
    push de                                       ; $6c8b: $d5
    ld c, h                                       ; $6c8c: $4c
    xor e                                         ; $6c8d: $ab
    dec b                                         ; $6c8e: $05
    sbc l                                         ; $6c8f: $9d
    ld [hl], $2e                                  ; $6c90: $36 $2e
    ld c, l                                       ; $6c92: $4d
    ld [hl], c                                    ; $6c93: $71
    ld c, c                                       ; $6c94: $49
    sub [hl]                                      ; $6c95: $96
    ld a, [hl-]                                   ; $6c96: $3a
    dec b                                         ; $6c97: $05
    rrca                                          ; $6c98: $0f
    dec bc                                        ; $6c99: $0b
    xor c                                         ; $6c9a: $a9
    ld l, d                                       ; $6c9b: $6a
    or l                                          ; $6c9c: $b5
    inc de                                        ; $6c9d: $13
    ld l, d                                       ; $6c9e: $6a
    sbc [hl]                                      ; $6c9f: $9e
    ld [hl], h                                    ; $6ca0: $74
    ld [hl-], a                                   ; $6ca1: $32
    sbc e                                         ; $6ca2: $9b
    ld [hl], e                                    ; $6ca3: $73
    ld c, e                                       ; $6ca4: $4b
    ld c, d                                       ; $6ca5: $4a
    sbc e                                         ; $6ca6: $9b
    ld h, l                                       ; $6ca7: $65
    ld a, h                                       ; $6ca8: $7c
    nop                                           ; $6ca9: $00
    ld d, a                                       ; $6caa: $57
    cp e                                          ; $6cab: $bb
    or a                                          ; $6cac: $b7
    dec bc                                        ; $6cad: $0b
    ld d, b                                       ; $6cae: $50

Jump_047_6caf:
    sbc l                                         ; $6caf: $9d
    ld a, [bc]                                    ; $6cb0: $0a
    and [hl]                                      ; $6cb1: $a6
    jr jr_047_6cd9                                ; $6cb2: $18 $25

    rst $08                                       ; $6cb4: $cf
    or l                                          ; $6cb5: $b5
    sbc h                                         ; $6cb6: $9c
    rst $28                                       ; $6cb7: $ef
    db $e4                                        ; $6cb8: $e4
    rst $38                                       ; $6cb9: $ff
    ld d, b                                       ; $6cba: $50
    ld d, b                                       ; $6cbb: $50
    dec d                                         ; $6cbc: $15
    rst $00                                       ; $6cbd: $c7
    pop af                                        ; $6cbe: $f1
    add d                                         ; $6cbf: $82
    ld c, [hl]                                    ; $6cc0: $4e
    ld a, [hl-]                                   ; $6cc1: $3a
    ret                                           ; $6cc2: $c9


    dec bc                                        ; $6cc3: $0b
    or c                                          ; $6cc4: $b1
    inc [hl]                                      ; $6cc5: $34
    sub l                                         ; $6cc6: $95
    push de                                       ; $6cc7: $d5
    db $e3                                        ; $6cc8: $e3

Jump_047_6cc9:
    adc $6d                                       ; $6cc9: $ce $6d
    push af                                       ; $6ccb: $f5
    ld b, b                                       ; $6ccc: $40
    or l                                          ; $6ccd: $b5
    sbc a                                         ; $6cce: $9f
    add e                                         ; $6ccf: $83
    inc c                                         ; $6cd0: $0c
    ld [$e336], a                                 ; $6cd1: $ea $36 $e3
    inc bc                                        ; $6cd4: $03
    ld l, a                                       ; $6cd5: $6f
    sub l                                         ; $6cd6: $95
    sub h                                         ; $6cd7: $94
    or [hl]                                       ; $6cd8: $b6

jr_047_6cd9:
    sbc l                                         ; $6cd9: $9d
    ld c, a                                       ; $6cda: $4f
    ld h, $65                                     ; $6cdb: $26 $65
    xor c                                         ; $6cdd: $a9
    adc e                                         ; $6cde: $8b

Jump_047_6cdf:
    ld a, [hl]                                    ; $6cdf: $7e
    ld a, [hl+]                                   ; $6ce0: $2a
    ld l, $a9                                     ; $6ce1: $2e $a9
    and l                                         ; $6ce3: $a5
    ld [hl], e                                    ; $6ce4: $73
    ld sp, $b96f                                  ; $6ce5: $31 $6f $b9
    or e                                          ; $6ce8: $b3
    and e                                         ; $6ce9: $a3
    rla                                           ; $6cea: $17
    ld [hl], h                                    ; $6ceb: $74
    jp c, $34b8                                   ; $6cec: $da $b8 $34

    push bc                                       ; $6cef: $c5
    dec h                                         ; $6cf0: $25
    ld e, c                                       ; $6cf1: $59
    ld [$9fa2], a                                 ; $6cf2: $ea $a2 $9f
    adc d                                         ; $6cf5: $8a
    ld c, e                                       ; $6cf6: $4b
    ld l, d                                       ; $6cf7: $6a
    jp nc, Jump_047_6cc9                          ; $6cf8: $d2 $c9 $6c

    adc $2d                                       ; $6cfb: $ce $2d
    add hl, hl                                    ; $6cfd: $29
    ld l, l                                       ; $6cfe: $6d
    sub [hl]                                      ; $6cff: $96
    pop af                                        ; $6d00: $f1
    ld bc, $6a4f                                  ; $6d01: $01 $4f $6a
    or l                                          ; $6d04: $b5
    and b                                         ; $6d05: $a0
    dec bc                                        ; $6d06: $0b
    ld a, [hl-]                                   ; $6d07: $3a
    ld l, [hl]                                    ; $6d08: $6e
    ld [hl], e                                    ; $6d09: $73
    adc d                                         ; $6d0a: $8a
    rst $38                                       ; $6d0b: $ff
    rst $20                                       ; $6d0c: $e7
    adc e                                         ; $6d0d: $8b
    ld a, l                                       ; $6d0e: $7d
    pop de                                        ; $6d0f: $d1
    ld c, [hl]                                    ; $6d10: $4e
    sbc a                                         ; $6d11: $9f
    inc a                                         ; $6d12: $3c
    rst $08                                       ; $6d13: $cf
    inc l                                         ; $6d14: $2c
    ld b, c                                       ; $6d15: $41
    ld e, l                                       ; $6d16: $5d
    db $d3                                        ; $6d17: $d3
    cp d                                          ; $6d18: $ba
    add hl, sp                                    ; $6d19: $39
    rst $38                                       ; $6d1a: $ff
    ccf                                           ; $6d1b: $3f
    xor l                                         ; $6d1c: $ad
    call Call_000_3f35                            ; $6d1d: $cd $35 $3f
    ld b, l                                       ; $6d20: $45
    dec e                                         ; $6d21: $1d
    add hl, de                                    ; $6d22: $19
    ld e, a                                       ; $6d23: $5f
    inc c                                         ; $6d24: $0c
    ret c                                         ; $6d25: $d8

    cp h                                          ; $6d26: $bc
    push hl                                       ; $6d27: $e5
    jp nc, $e68c                                  ; $6d28: $d2 $8c $e6

    cp e                                          ; $6d2b: $bb
    rst $20                                       ; $6d2c: $e7
    sbc d                                         ; $6d2d: $9a
    dec a                                         ; $6d2e: $3d
    sub a                                         ; $6d2f: $97
    ld [c], a                                     ; $6d30: $e2
    inc bc                                        ; $6d31: $03
    ld d, a                                       ; $6d32: $57
    cp e                                          ; $6d33: $bb
    inc de                                        ; $6d34: $13
    and [hl]                                      ; $6d35: $a6
    xor h                                         ; $6d36: $ac
    add $92                                       ; $6d37: $c6 $92
    ld e, d                                       ; $6d39: $5a
    adc b                                         ; $6d3a: $88
    and l                                         ; $6d3b: $a5
    sbc l                                         ; $6d3c: $9d
    ld sp, $9dc8                                  ; $6d3d: $31 $c8 $9d
    ld l, [hl]                                    ; $6d40: $6e
    ret nc                                        ; $6d41: $d0

    inc sp                                        ; $6d42: $33
    xor l                                         ; $6d43: $ad
    dec de                                        ; $6d44: $1b
    sbc c                                         ; $6d45: $99
    jp hl                                         ; $6d46: $e9


    or l                                          ; $6d47: $b5
    and h                                         ; $6d48: $a4

Call_047_6d49:
    ld sp, $f190                                  ; $6d49: $31 $90 $f1
    ld bc, $1597                                  ; $6d4c: $01 $97 $15
    ld d, $74                                     ; $6d4f: $16 $74
    and [hl]                                      ; $6d51: $a6
    ld [hl], a                                    ; $6d52: $77
    ld [hl-], a                                   ; $6d53: $32
    sbc [hl]                                      ; $6d54: $9e
    ld e, e                                       ; $6d55: $5b
    ld [de], a                                    ; $6d56: $12
    ld a, $81                                     ; $6d57: $3e $81
    and $dc                                       ; $6d59: $e6 $dc
    rst $38                                       ; $6d5b: $ff
    jp hl                                         ; $6d5c: $e9


    ld d, h                                       ; $6d5d: $54
    add d                                         ; $6d5e: $82
    sbc d                                         ; $6d5f: $9a
    inc bc                                        ; $6d60: $03
    ld [hl], l                                    ; $6d61: $75
    ld a, a                                       ; $6d62: $7f
    ld a, [$95e6]                                 ; $6d63: $fa $e6 $95
    dec a                                         ; $6d66: $3d
    ld b, e                                       ; $6d67: $43
    dec sp                                        ; $6d68: $3b
    ld h, e                                       ; $6d69: $63
    sub b                                         ; $6d6a: $90
    dec hl                                        ; $6d6b: $2b
    call $f56d                                    ; $6d6c: $cd $6d $f5
    cp b                                          ; $6d6f: $b8
    ld [hl], e                                    ; $6d70: $73
    ld sp, $337d                                  ; $6d71: $31 $7d $33
    sbc $db                                       ; $6d74: $de $db
    dec l                                         ; $6d76: $2d

jr_047_6d77:
    cpl                                           ; $6d77: $2f
    add sp, -$3b                                  ; $6d78: $e8 $c5
    ld d, b                                       ; $6d7a: $50
    adc $3b                                       ; $6d7b: $ce $3b
    inc h                                         ; $6d7d: $24
    ld a, [de]                                    ; $6d7e: $1a
    ld [hl], a                                    ; $6d7f: $77
    and a                                         ; $6d80: $a7
    ld a, d                                       ; $6d81: $7a
    rst $18                                       ; $6d82: $df
    sbc h                                         ; $6d83: $9c
    scf                                           ; $6d84: $37
    ld e, [hl]                                    ; $6d85: $5e
    ld l, c                                       ; $6d86: $69
    rst $20                                       ; $6d87: $e7
    ld l, d                                       ; $6d88: $6a
    sub c                                         ; $6d89: $91
    jp c, $370d                                   ; $6d8a: $da $0d $37

    db $e4                                        ; $6d8d: $e4
    jr nc, jr_047_6d77                            ; $6d8e: $30 $e7

    adc l                                         ; $6d90: $8d
    rst $20                                       ; $6d91: $e7
    ld a, [de]                                    ; $6d92: $1a
    rst $28                                       ; $6d93: $ef
    adc h                                         ; $6d94: $8c
    inc e                                         ; $6d95: $1c
    rra                                           ; $6d96: $1f
    xor a                                         ; $6d97: $af
    sbc b                                         ; $6d98: $98
    and e                                         ; $6d99: $a3
    cp d                                          ; $6d9a: $ba
    rst $10                                       ; $6d9b: $d7
    pop hl                                        ; $6d9c: $e1
    call nc, Call_000_2ee6                        ; $6d9d: $d4 $e6 $2e
    ld c, e                                       ; $6da0: $4b
    dec a                                         ; $6da1: $3d
    nop                                           ; $6da2: $00
    ld l, a                                       ; $6da3: $6f
    ld d, a                                       ; $6da4: $57
    rr a                                          ; $6da5: $cb $1f
    dec c                                         ; $6da7: $0d
    ld [hl], e                                    ; $6da8: $73
    ld c, a                                       ; $6da9: $4f
    sub c                                         ; $6daa: $91
    sbc c                                         ; $6dab: $99
    inc d                                         ; $6dac: $14
    ld c, h                                       ; $6dad: $4c
    rst $18                                       ; $6dae: $df
    and [hl]                                      ; $6daf: $a6
    or $26                                        ; $6db0: $f6 $26
    ld [$f0a6], a                                 ; $6db2: $ea $a6 $f0
    bit 3, b                                      ; $6db5: $cb $58
    add hl, de                                    ; $6db7: $19
    rst $28                                       ; $6db8: $ef
    db $ed                                        ; $6db9: $ed
    ld l, d                                       ; $6dba: $6a
    cp c                                          ; $6dbb: $b9
    ret nz                                        ; $6dbc: $c0

    adc h                                         ; $6dbd: $8c
    xor [hl]                                      ; $6dbe: $ae
    inc e                                         ; $6dbf: $1c
    rst $10                                       ; $6dc0: $d7
    call $cae8                                    ; $6dc1: $cd $e8 $ca
    ld l, $7f                                     ; $6dc4: $2e $7f
    daa                                           ; $6dc6: $27
    call nc, Call_047_6aff                        ; $6dc7: $d4 $ff $6a
    sbc [hl]                                      ; $6dca: $9e
    ld [hl], e                                    ; $6dcb: $73
    push hl                                       ; $6dcc: $e5
    nop                                           ; $6dcd: $00
    rst $10                                       ; $6dce: $d7
    ld [hl], d                                    ; $6dcf: $72
    and a                                         ; $6dd0: $a7
    ld l, d                                       ; $6dd1: $6a

Call_047_6dd2:
    cp c                                          ; $6dd2: $b9
    ret nz                                        ; $6dd3: $c0

    adc h                                         ; $6dd4: $8c
    halt                                          ; $6dd5: $76
    ld b, [hl]                                    ; $6dd6: $46
    ld e, [hl]                                    ; $6dd7: $5e
    ret nc                                        ; $6dd8: $d0

    ld a, l                                       ; $6dd9: $7d
    ld l, b                                       ; $6dda: $68
    rst $28                                       ; $6ddb: $ef
    sbc l                                         ; $6ddc: $9d
    adc d                                         ; $6ddd: $8a
    xor c                                         ; $6dde: $a9
    cp b                                          ; $6ddf: $b8
    sbc b                                         ; $6de0: $98
    ld d, a                                       ; $6de1: $57
    halt                                          ; $6de2: $76
    ld e, c                                       ; $6de3: $59
    ld e, [hl]                                    ; $6de4: $5e
    ld c, e                                       ; $6de5: $4b
    adc d                                         ; $6de6: $8a
    ld a, e                                       ; $6de7: $7b
    ld h, l                                       ; $6de8: $65
    sub a                                         ; $6de9: $97
    push hl                                       ; $6dea: $e5
    pop af                                        ; $6deb: $f1
    xor c                                         ; $6dec: $a9
    push af                                       ; $6ded: $f5
    cp l                                          ; $6dee: $bd
    ld [hl], d                                    ; $6def: $72
    nop                                           ; $6df0: $00
    rst $10                                       ; $6df1: $d7
    db $e4                                        ; $6df2: $e4
    adc $c8                                       ; $6df3: $ce $c8
    rrc a                                         ; $6df5: $cb $0f
    sub [hl]                                      ; $6df7: $96
    ld e, b                                       ; $6df8: $58
    sbc $87                                       ; $6df9: $de $87
    or $de                                        ; $6dfb: $f6 $de
    xor c                                         ; $6dfd: $a9
    sbc b                                         ; $6dfe: $98
    adc d                                         ; $6dff: $8a
    adc e                                         ; $6e00: $8b
    add hl, de                                    ; $6e01: $19
    rra                                           ; $6e02: $1f
    xor a                                         ; $6e03: $af
    ld a, a                                       ; $6e04: $7f
    ld [hl+], a                                   ; $6e05: $22
    ld sp, $3317                                  ; $6e06: $31 $17 $33
    rlc l                                         ; $6e09: $cb $05
    rst $18                                       ; $6e0b: $df
    ld e, c                                       ; $6e0c: $59
    db $f4                                        ; $6e0d: $f4
    ld b, c                                       ; $6e0e: $41
    ld [hl], e                                    ; $6e0f: $73
    and a                                         ; $6e10: $a7
    ld l, $b1                                     ; $6e11: $2e $b1
    xor h                                         ; $6e13: $ac
    and $96                                       ; $6e14: $e6 $96
    db $e4                                        ; $6e16: $e4
    add a                                         ; $6e17: $87
    sbc d                                         ; $6e18: $9a
    pop af                                        ; $6e19: $f1
    ld e, [hl]                                    ; $6e1a: $5e
    inc [hl]                                      ; $6e1b: $34
    and e                                         ; $6e1c: $a3
    ld c, c                                       ; $6e1d: $49
    inc c                                         ; $6e1e: $0c
    db $e4                                        ; $6e1f: $e4
    ld b, b                                       ; $6e20: $40
    ret                                           ; $6e21: $c9


    ld d, c                                       ; $6e22: $51
    cp h                                          ; $6e23: $bc
    cp d                                          ; $6e24: $ba
    call $4fd1                                    ; $6e25: $cd $d1 $4f
    rra                                           ; $6e28: $1f
    rst $28                                       ; $6e29: $ef
    adc l                                         ; $6e2a: $8d
    rst $08                                       ; $6e2b: $cf
    dec sp                                        ; $6e2c: $3b
    ld h, e                                       ; $6e2d: $63
    ld d, e                                       ; $6e2e: $53
    push bc                                       ; $6e2f: $c5
    rlca                                          ; $6e30: $07
    ld c, a                                       ; $6e31: $4f
    ld h, c                                       ; $6e32: $61
    or b                                          ; $6e33: $b0
    ld l, d                                       ; $6e34: $6a
    reti                                          ; $6e35: $d9


    pop af                                        ; $6e36: $f1
    ld [hl], a                                    ; $6e37: $77
    sbc e                                         ; $6e38: $9b
    ld h, [hl]                                    ; $6e39: $66
    inc [hl]                                      ; $6e3a: $34
    ret z                                         ; $6e3b: $c8

    inc d                                         ; $6e3c: $14
    cpl                                           ; $6e3d: $2f
    ld [hl-], a                                   ; $6e3e: $32
    and e                                         ; $6e3f: $a3
    db $dd                                        ; $6e40: $dd
    ld [hl], b                                    ; $6e41: $70
    ld b, e                                       ; $6e42: $43
    ld c, [hl]                                    ; $6e43: $4e
    jr z, jr_047_6eaa                             ; $6e44: $28 $64

    and [hl]                                      ; $6e46: $a6
    ld a, l                                       ; $6e47: $7d
    rst $00                                       ; $6e48: $c7
    rst $18                                       ; $6e49: $df
    dec l                                         ; $6e4a: $2d
    add hl, hl                                    ; $6e4b: $29
    cp $32                                        ; $6e4c: $fe $32
    sbc $db                                       ; $6e4e: $de $db
    ld e, l                                       ; $6e50: $5d
    db $f4                                        ; $6e51: $f4
    set 1, l                                      ; $6e52: $cb $cd
    sub l                                         ; $6e54: $95
    sub $e6                                       ; $6e55: $d6 $e6
    jr nz, jr_047_6e8c                            ; $6e57: $20 $33

    sbc d                                         ; $6e59: $9a
    add e                                         ; $6e5a: $83
    inc c                                         ; $6e5b: $0c
    pop de                                        ; $6e5c: $d1
    rla                                           ; $6e5d: $17
    ld c, d                                       ; $6e5e: $4a
    call $ffb9                                    ; $6e5f: $cd $b9 $ff
    sub e                                         ; $6e62: $93
    scf                                           ; $6e63: $37
    sbc $a9                                       ; $6e64: $de $a9
    di                                            ; $6e66: $f3
    ret c                                         ; $6e67: $d8

    cp c                                          ; $6e68: $b9
    sub [hl]                                      ; $6e69: $96
    dec bc                                        ; $6e6a: $0b
    cp [hl]                                       ; $6e6b: $be
    inc sp                                        ; $6e6c: $33
    rla                                           ; $6e6d: $17
    db $d3                                        ; $6e6e: $d3
    scf                                           ; $6e6f: $37
    db $e3                                        ; $6e70: $e3
    cp l                                          ; $6e71: $bd
    ld b, d                                       ; $6e72: $42
    ld e, a                                       ; $6e73: $5f
    ld l, b                                       ; $6e74: $68
    ld l, c                                       ; $6e75: $69
    dec l                                         ; $6e76: $2d

jr_047_6e77:
    add hl, hl                                    ; $6e77: $29
    ld e, [hl]                                    ; $6e78: $5e
    sbc e                                         ; $6e79: $9b
    ld l, d                                       ; $6e7a: $6a
    cp [hl]                                       ; $6e7b: $be
    rst $20                                       ; $6e7c: $e7
    add $07                                       ; $6e7d: $c6 $07
    cpl                                           ; $6e7f: $2f
    or l                                          ; $6e80: $b5
    rla                                           ; $6e81: $17
    di                                            ; $6e82: $f3
    ret c                                         ; $6e83: $d8

    ld b, c                                       ; $6e84: $41
    and [hl]                                      ; $6e85: $a6
    ld a, b                                       ; $6e86: $78
    ld h, c                                       ; $6e87: $61
    ld [hl], l                                    ; $6e88: $75
    inc hl                                        ; $6e89: $23
    inc sp                                        ; $6e8a: $33
    cp l                                          ; $6e8b: $bd

jr_047_6e8c:
    call nz, $04f2                                ; $6e8c: $c4 $f2 $04
    inc c                                         ; $6e8f: $0c
    ld d, $34                                     ; $6e90: $16 $34
    sbc $8b                                       ; $6e92: $de $8b
    xor b                                         ; $6e94: $a8
    inc d                                         ; $6e95: $14
    inc a                                         ; $6e96: $3c
    call nz, $c2e6                                ; $6e97: $c4 $e6 $c2
    ld a, [bc]                                    ; $6e9a: $0a
    dec bc                                        ; $6e9b: $0b
    cp d                                          ; $6e9c: $ba
    xor b                                         ; $6e9d: $a8
    inc a                                         ; $6e9e: $3c
    rst $18                                       ; $6e9f: $df
    ld [hl], e                                    ; $6ea0: $73
    rst $00                                       ; $6ea1: $c7
    rst $18                                       ; $6ea2: $df
    dec l                                         ; $6ea3: $2d
    add hl, hl                                    ; $6ea4: $29
    cp $72                                        ; $6ea5: $fe $72
    ld d, c                                       ; $6ea7: $51
    ld c, e                                       ; $6ea8: $4b
    inc bc                                        ; $6ea9: $03

jr_047_6eaa:
    push de                                       ; $6eaa: $d5
    adc [hl]                                      ; $6eab: $8e
    adc h                                         ; $6eac: $8c
    rrca                                          ; $6ead: $0f
    cpl                                           ; $6eae: $2f
    ld a, l                                       ; $6eaf: $7d
    jr nc, jr_047_6e77                            ; $6eb0: $30 $c5

    xor l                                         ; $6eb2: $ad
    ld d, a                                       ; $6eb3: $57
    ld c, e                                       ; $6eb4: $4b
    inc l                                         ; $6eb5: $2c
    xor e                                         ; $6eb6: $ab
    dec hl                                        ; $6eb7: $2b
    db $db                                        ; $6eb8: $db
    push af                                       ; $6eb9: $f5
    ld l, $ac                                     ; $6eba: $2e $ac
    ret nz                                        ; $6ebc: $c0

    ld [hl], e                                    ; $6ebd: $73
    ld c, l                                       ; $6ebe: $4d
    pop af                                        ; $6ebf: $f1
    jp c, $d85c                                   ; $6ec0: $da $5c $d8

    ld [$1809], a                                 ; $6ec3: $ea $09 $18
    sbc h                                         ; $6ec6: $9c
    ld a, a                                       ; $6ec7: $7f
    ld a, [$a752]                                 ; $6ec8: $fa $52 $a7
    ld hl, sp-$35                                 ; $6ecb: $f8 $cb
    push hl                                       ; $6ecd: $e5
    rst $30                                       ; $6ece: $f7
    ld [$78e2], sp                                ; $6ecf: $08 $e2 $78
    cp e                                          ; $6ed2: $bb
    adc h                                         ; $6ed3: $8c
    and d                                         ; $6ed4: $a2
    jr c, @-$70                                   ; $6ed5: $38 $8e

    add a                                         ; $6ed7: $87
    ld [hl], d                                    ; $6ed8: $72
    ld h, c                                       ; $6ed9: $61
    add l                                         ; $6eda: $85
    or l                                          ; $6edb: $b5
    add hl, sp                                    ; $6edc: $39
    db $f4                                        ; $6edd: $f4
    ld l, l                                       ; $6ede: $6d
    inc e                                         ; $6edf: $1c
    rst $00                                       ; $6ee0: $c7
    rlca                                          ; $6ee1: $07
    ld d, a                                       ; $6ee2: $57
    ld a, e                                       ; $6ee3: $7b
    xor $f8                                       ; $6ee4: $ee $f8
    cp e                                          ; $6ee6: $bb
    dec h                                         ; $6ee7: $25
    push bc                                       ; $6ee8: $c5
    ld e, a                                       ; $6ee9: $5f
    ld c, $32                                     ; $6eea: $0e $32
    push bc                                       ; $6eec: $c5
    dec bc                                        ; $6eed: $0b
    xor e                                         ; $6eee: $ab
    dec de                                        ; $6eef: $1b
    sbc c                                         ; $6ef0: $99
    jp hl                                         ; $6ef1: $e9


    add hl, bc                                    ; $6ef2: $09
    jr jr_047_6f21                                ; $6ef3: $18 $2c

    add sp, -$3b                                  ; $6ef5: $e8 $c5
    ld l, $8d                                     ; $6ef7: $2e $8d
    ld c, b                                       ; $6ef9: $48
    call z, $f95e                                 ; $6efa: $cc $5e $f9
    call z, Call_047_78a5                         ; $6efd: $cc $a5 $78
    sub a                                         ; $6f00: $97
    jr jr_047_6f4f                                ; $6f01: $18 $4c

    xor b                                         ; $6f03: $a8
    add d                                         ; $6f04: $82
    add a                                         ; $6f05: $87
    jr z, jr_047_6f81                             ; $6f06: $28 $79

    rst $18                                       ; $6f08: $df
    dec l                                         ; $6f09: $2d
    call $0a77                                    ; $6f0a: $cd $77 $0a
    and d                                         ; $6f0d: $a2
    ld a, [hl-]                                   ; $6f0e: $3a
    or d                                          ; $6f0f: $b2
    cp c                                          ; $6f10: $b9
    ld h, a                                       ; $6f11: $67
    dec [hl]                                      ; $6f12: $35
    ld b, d                                       ; $6f13: $42
    ld c, l                                       ; $6f14: $4d
    rst $38                                       ; $6f15: $ff
    rst $10                                       ; $6f16: $d7
    call c, $a55b                                 ; $6f17: $dc $5b $a5
    ld [$c6b5], sp                                ; $6f1a: $08 $b5 $c6
    rst $28                                       ; $6f1d: $ef
    xor b                                         ; $6f1e: $a8
    cp l                                          ; $6f1f: $bd
    sbc c                                         ; $6f20: $99

jr_047_6f21:
    rst $38                                       ; $6f21: $ff
    ld h, d                                       ; $6f22: $62
    daa                                           ; $6f23: $27
    inc sp                                        ; $6f24: $33
    adc d                                         ; $6f25: $8a
    jp c, Jump_047_5d05                           ; $6f26: $da $05 $5d

    ret nc                                        ; $6f29: $d0

    ld [hl], e                                    ; $6f2a: $73
    or l                                          ; $6f2b: $b5
    ld l, b                                       ; $6f2c: $68
    jp nc, $9e49                                  ; $6f2d: $d2 $49 $9e

    ld d, b                                       ; $6f30: $50
    dec b                                         ; $6f31: $05
    rrca                                          ; $6f32: $0f
    ld c, e                                       ; $6f33: $4b
    ld d, c                                       ; $6f34: $51
    ld [hl], e                                    ; $6f35: $73
    and [hl]                                      ; $6f36: $a6
    push de                                       ; $6f37: $d5
    add d                                         ; $6f38: $82
    adc [hl]                                      ; $6f39: $8e
    dec bc                                        ; $6f3a: $0b
    sbc d                                         ; $6f3b: $9a
    rst $18                                       ; $6f3c: $df
    dec l                                         ; $6f3d: $2d
    call $97d2                                    ; $6f3e: $cd $d2 $97
    ld a, [hl-]                                   ; $6f41: $3a
    cp $6e                                        ; $6f42: $fe $6e
    db $d3                                        ; $6f44: $d3
    adc h                                         ; $6f45: $8c
    call nc, $8fe4                                ; $6f46: $d4 $e4 $8f
    ld a, b                                       ; $6f49: $78
    call c, Call_000_3629                         ; $6f4a: $dc $29 $36
    set 7, b                                      ; $6f4d: $cb $f8

jr_047_6f4f:
    nop                                           ; $6f4f: $00
    cpl                                           ; $6f50: $2f
    sbc d                                         ; $6f51: $9a
    pop de                                        ; $6f52: $d1
    ld d, b                                       ; $6f53: $50
    ld l, $ac                                     ; $6f54: $2e $ac
    jr nc, @-$2e                                  ; $6f56: $30 $d0

    and $40                                       ; $6f58: $e6 $40
    or l                                          ; $6f5a: $b5
    adc a                                         ; $6f5b: $8f
    rrca                                          ; $6f5c: $0f
    sub a                                         ; $6f5d: $97
    ld b, $08                                     ; $6f5e: $06 $08
    db $fd                                        ; $6f60: $fd
    jp nz, $c456                                  ; $6f61: $c2 $56 $c4

    inc bc                                        ; $6f64: $03
    and l                                         ; $6f65: $a5
    add d                                         ; $6f66: $82
    ld l, d                                       ; $6f67: $6a
    ccf                                           ; $6f68: $3f
    ld l, a                                       ; $6f69: $6f
    cp h                                          ; $6f6a: $bc
    jp nc, $bdee                                  ; $6f6b: $d2 $ee $bd

    rst $30                                       ; $6f6e: $f7
    pop de                                        ; $6f6f: $d1
    cp l                                          ; $6f70: $bd
    adc [hl]                                      ; $6f71: $8e
    ld d, d                                       ; $6f72: $52
    ld d, [hl]                                    ; $6f73: $56
    xor e                                         ; $6f74: $ab
    ld a, l                                       ; $6f75: $7d
    or a                                          ; $6f76: $b7
    inc b                                         ; $6f77: $04
    ld a, [de]                                    ; $6f78: $1a
    sbc c                                         ; $6f79: $99
    ld c, c                                       ; $6f7a: $49
    sbc $e9                                       ; $6f7b: $de $e9
    sub e                                         ; $6f7d: $93
    ld l, a                                       ; $6f7e: $6f
    adc $b5                                       ; $6f7f: $ce $b5

jr_047_6f81:
    ld e, h                                       ; $6f81: $5c
    ret nc                                        ; $6f82: $d0

    ld d, c                                       ; $6f83: $51
    ld h, l                                       ; $6f84: $65
    inc de                                        ; $6f85: $13
    inc de                                        ; $6f86: $13
    ld c, h                                       ; $6f87: $4c
    ret nz                                        ; $6f88: $c0

    ld h, b                                       ; $6f89: $60
    rst $08                                       ; $6f8a: $cf
    ld a, l                                       ; $6f8b: $7d
    rst $00                                       ; $6f8c: $c7
    inc bc                                        ; $6f8d: $03
    jp nz, $8a00                                  ; $6f8e: $c2 $00 $8a

    ld [hl], a                                    ; $6f91: $77
    ld l, c                                       ; $6f92: $69
    call nz, Call_000_18d5                        ; $6f93: $c4 $d5 $18
    ret z                                         ; $6f96: $c8

    ld a, c                                       ; $6f97: $79
    ld c, e                                       ; $6f98: $4b
    add hl, sp                                    ; $6f99: $39
    rst $30                                       ; $6f9a: $f7
    ld a, a                                       ; $6f9b: $7f
    ld e, d                                       ; $6f9c: $5a
    ret nc                                        ; $6f9d: $d0

    add hl, bc                                    ; $6f9e: $09
    dec a                                         ; $6f9f: $3d
    rst $38                                       ; $6fa0: $ff
    jp z, $d778                                   ; $6fa1: $ca $78 $d7

    db $e4                                        ; $6fa4: $e4
    ld c, [hl]                                    ; $6fa5: $4e
    dec l                                         ; $6fa6: $2d
    rst $28                                       ; $6fa7: $ef
    ld e, h                                       ; $6fa8: $5c
    ld e, c                                       ; $6fa9: $59
    sbc d                                         ; $6faa: $9a
    scf                                           ; $6fab: $37
    ld e, [hl]                                    ; $6fac: $5e
    ret nc                                        ; $6fad: $d0

    add c                                         ; $6fae: $81
    ld e, a                                       ; $6faf: $5f
    ccf                                           ; $6fb0: $3f
    ld d, b                                       ; $6fb1: $50
    add c                                         ; $6fb2: $81
    inc e                                         ; $6fb3: $1c
    sub h                                         ; $6fb4: $94
    dec sp                                        ; $6fb5: $3b
    dec sp                                        ; $6fb6: $3b
    sbc d                                         ; $6fb7: $9a
    rla                                           ; $6fb8: $17
    sbc c                                         ; $6fb9: $99
    ld l, h                                       ; $6fba: $6c
    adc $b5                                       ; $6fbb: $ce $b5
    ld e, h                                       ; $6fbd: $5c
    ret nc                                        ; $6fbe: $d0

    pop af                                        ; $6fbf: $f1
    ld [hl], a                                    ; $6fc0: $77
    ld c, e                                       ; $6fc1: $4b
    adc d                                         ; $6fc2: $8a
    cp a                                          ; $6fc3: $bf
    adc h                                         ; $6fc4: $8c
    rrca                                          ; $6fc5: $0f
    cpl                                           ; $6fc6: $2f
    add a                                         ; $6fc7: $87
    set 6, [hl]                                   ; $6fc8: $cb $f6
    ld h, d                                       ; $6fca: $62
    sub a                                         ; $6fcb: $97
    ld b, [hl]                                    ; $6fcc: $46
    inc h                                         ; $6fcd: $24
    ld h, [hl]                                    ; $6fce: $66
    xor a                                         ; $6fcf: $af
    ld a, h                                       ; $6fd0: $7c
    and $d2                                       ; $6fd1: $e6 $d2
    push bc                                       ; $6fd3: $c5
    ld [bc], a                                    ; $6fd4: $02
    inc c                                         ; $6fd5: $0c
    ld h, $d4                                     ; $6fd6: $26 $d4
    ld e, e                                       ; $6fd8: $5b
    ld c, d                                       ; $6fd9: $4a
    adc [hl]                                      ; $6fda: $8e
    rrca                                          ; $6fdb: $0f
    xor a                                         ; $6fdc: $af
    ret nc                                        ; $6fdd: $d0

    rla                                           ; $6fde: $17
    ld e, d                                       ; $6fdf: $5a
    sbc d                                         ; $6fe0: $9a
    rst $28                                       ; $6fe1: $ef
    cp c                                          ; $6fe2: $b9
    ld l, e                                       ; $6fe3: $6b
    ld d, e                                       ; $6fe4: $53
    dec a                                         ; $6fe5: $3d
    or [hl]                                       ; $6fe6: $b6
    ret nc                                        ; $6fe7: $d0

    pop de                                        ; $6fe8: $d1
    adc d                                         ; $6fe9: $8a
    rla                                           ; $6fea: $17
    sub l                                         ; $6feb: $95
    rst $10                                       ; $6fec: $d7
    and $64                                       ; $6fed: $e6 $64
    add hl, hl                                    ; $6fef: $29
    rst $20                                       ; $6ff0: $e7
    ld e, d                                       ; $6ff1: $5a
    ld c, [hl]                                    ; $6ff2: $4e
    call nc, $a944                                ; $6ff3: $d4 $44 $a9
    call c, $e296                                 ; $6ff6: $dc $96 $e2
    inc bc                                        ; $6ff9: $03
    sub a                                         ; $6ffa: $97
    and [hl]                                      ; $6ffb: $a6
    push af                                       ; $6ffc: $f5
    cp a                                          ; $6ffd: $bf
    ld e, b                                       ; $6ffe: $58
    ldh a, [rNR13]                                ; $6fff: $f0 $13
    inc [hl]                                      ; $7001: $34
    or d                                          ; $7002: $b2
    adc h                                         ; $7003: $8c
    rst $30                                       ; $7004: $f7
    ld e, $f2                                     ; $7005: $1e $f2
    add d                                         ; $7007: $82
    ld c, $73                                     ; $7008: $0e $73
    ld h, c                                       ; $700a: $61
    ld a, c                                       ; $700b: $79
    dec l                                         ; $700c: $2d
    add hl, hl                                    ; $700d: $29
    xor $02                                       ; $700e: $ee $02
    inc sp                                        ; $7010: $33
    cp d                                          ; $7011: $ba
    ld [hl], d                                    ; $7012: $72
    nop                                           ; $7013: $00
    ld c, a                                       ; $7014: $4f
    ld h, c                                       ; $7015: $61
    sub b                                         ; $7016: $90
    or [hl]                                       ; $7017: $b6
    ld d, e                                       ; $7018: $53
    ld [hl], l                                    ; $7019: $75
    ld a, h                                       ; $701a: $7c
    nop                                           ; $701b: $00
    rst $10                                       ; $701c: $d7
    cp e                                          ; $701d: $bb
    ld d, e                                       ; $701e: $53
    bit 1, e                                      ; $701f: $cb $4b
    ld h, e                                       ; $7021: $63
    rst $00                                       ; $7022: $c7
    ld hl, $818d                                  ; $7023: $21 $8d $81
    sbc h                                         ; $7026: $9c
    scf                                           ; $7027: $37
    ld e, $ca                                     ; $7028: $1e $ca
    dec h                                         ; $702a: $25
    sub [hl]                                      ; $702b: $96
    push de                                       ; $702c: $d5
    call z, Call_047_4172                         ; $702d: $cc $72 $41
    rla                                           ; $7030: $17
    add hl, de                                    ; $7031: $19
    sbc b                                         ; $7032: $98
    ld e, e                                       ; $7033: $5b
    sub d                                         ; $7034: $92
    rra                                           ; $7035: $1f
    ld l, d                                       ; $7036: $6a
    add $7b                                       ; $7037: $c6 $7b
    pop de                                        ; $7039: $d1
    adc h                                         ; $703a: $8c
    ld h, $31                                     ; $703b: $26 $31
    sub b                                         ; $703d: $90
    inc bc                                        ; $703e: $03
    dec h                                         ; $703f: $25
    ld b, a                                       ; $7040: $47
    pop af                                        ; $7041: $f1
    add sp, -$59                                  ; $7042: $e8 $a7
    adc a                                         ; $7044: $8f
    rrca                                          ; $7045: $0f
    ld c, a                                       ; $7046: $4f
    add [hl]                                      ; $7047: $86
    rla                                           ; $7048: $17
    ld l, e                                       ; $7049: $6b
    ld [hl], e                                    ; $704a: $73
    adc d                                         ; $704b: $8a
    dec e                                         ; $704c: $1d
    rst $18                                       ; $704d: $df
    db $e4                                        ; $704e: $e4
    ld a, b                                       ; $704f: $78
    rst $10                                       ; $7050: $d7
    dec sp                                        ; $7051: $3b
    and c                                         ; $7052: $a1
    ret                                           ; $7053: $c9


    inc sp                                        ; $7054: $33
    call $f818                                    ; $7055: $cd $18 $f8
    sbc l                                         ; $7058: $9d
    xor d                                         ; $7059: $aa
    push hl                                       ; $705a: $e5
    adc a                                         ; $705b: $8f
    add [hl]                                      ; $705c: $86
    cp c                                          ; $705d: $b9
    rst $20                                       ; $705e: $e7
    dec [hl]                                      ; $705f: $35
    sub $97                                       ; $7060: $d6 $97
    halt                                          ; $7062: $76
    db $eb                                        ; $7063: $eb
    sbc $d2                                       ; $7064: $de $d2
    sub l                                         ; $7066: $95
    pop af                                        ; $7067: $f1
    sbc $3b                                       ; $7068: $de $3b
    dec d                                         ; $706a: $15
    ld d, e                                       ; $706b: $53
    ld [hl], c                                    ; $706c: $71
    ld sp, $d62f                                  ; $706d: $31 $2f $d6
    sub d                                         ; $7070: $92
    ld [c], a                                     ; $7071: $e2
    ld b, $66                                     ; $7072: $06 $66
    and h                                         ; $7074: $a4
    xor [hl]                                      ; $7075: $ae
    inc e                                         ; $7076: $1c
    rst $10                                       ; $7077: $d7
    dec l                                         ; $7078: $2d
    ld a, $00                                     ; $7079: $3e $00
    ld c, a                                       ; $707b: $4f
    ld [$9d05], a                                 ; $707c: $ea $05 $9d
    ldh a, [$2b]                                  ; $707f: $f0 $2b
    sbc e                                         ; $7081: $9b
    db $d3                                        ; $7082: $d3
    ld [$7340], sp                                ; $7083: $08 $40 $73
    and [hl]                                      ; $7086: $a6
    daa                                           ; $7087: $27
    or l                                          ; $7088: $b5
    add hl, de                                    ; $7089: $19
    push bc                                       ; $708a: $c5
    cp e                                          ; $708b: $bb
    ld l, d                                       ; $708c: $6a
    inc a                                         ; $708d: $3c
    ld d, h                                       ; $708e: $54
    di                                            ; $708f: $f3
    sub [hl]                                      ; $7090: $96
    cp e                                          ; $7091: $bb
    rst $30                                       ; $7092: $f7
    add c                                         ; $7093: $81
    ei                                            ; $7094: $fb
    rst $30                                       ; $7095: $f7
    ld a, [hl-]                                   ; $7096: $3a
    ld c, d                                       ; $7097: $4a
    ld e, c                                       ; $7098: $59
    xor l                                         ; $7099: $ad
    ld [c], a                                     ; $709a: $e2
    inc bc                                        ; $709b: $03
    sub a                                         ; $709c: $97
    ld b, [hl]                                    ; $709d: $46
    ld e, h                                       ; $709e: $5c
    adc l                                         ; $709f: $8d
    add c                                         ; $70a0: $81
    sbc h                                         ; $70a1: $9c
    or a                                          ; $70a2: $b7
    sub h                                         ; $70a3: $94
    ld [hl], e                                    ; $70a4: $73
    rst $38                                       ; $70a5: $ff
    and a                                         ; $70a6: $a7
    dec b                                         ; $70a7: $05
    sbc l                                         ; $70a8: $9d
    ret nc                                        ; $70a9: $d0

    di                                            ; $70aa: $f3
    xor a                                         ; $70ab: $af
    sbc h                                         ; $70ac: $9c
    ld e, c                                       ; $70ad: $59
    xor $79                                       ; $70ae: $ee $79
    adc l                                         ; $70b0: $8d
    push af                                       ; $70b1: $f5
    and l                                         ; $70b2: $a5
    db $dd                                        ; $70b3: $dd
    cp d                                          ; $70b4: $ba
    or a                                          ; $70b5: $b7
    ld [hl], h                                    ; $70b6: $74
    ld h, l                                       ; $70b7: $65
    cp h                                          ; $70b8: $bc
    cp l                                          ; $70b9: $bd
    push de                                       ; $70ba: $d5
    ld [$56e9], a                                 ; $70bb: $ea $e9 $56
    ld b, c                                       ; $70be: $41
    cp d                                          ; $70bf: $ba
    ld h, a                                       ; $70c0: $67
    inc l                                         ; $70c1: $2c
    adc c                                         ; $70c2: $89
    ccf                                           ; $70c3: $3f
    nop                                           ; $70c4: $00
    rst $28                                       ; $70c5: $ef
    ld a, l                                       ; $70c6: $7d
    or a                                          ; $70c7: $b7
    push de                                       ; $70c8: $d5
    dec bc                                        ; $70c9: $0b
    dec hl                                        ; $70ca: $2b
    inc c                                         ; $70cb: $0c
    push hl                                       ; $70cc: $e5
    ld [de], a                                    ; $70cd: $12
    set 6, c                                      ; $70ce: $cb $f1
    ld bc, $2dd7                                  ; $70d0: $01 $d7 $2d
    adc d                                         ; $70d3: $8a
    ld c, d                                       ; $70d4: $4a
    pop af                                        ; $70d5: $f1
    or $a2                                        ; $70d6: $f6 $a2
    add hl, de                                    ; $70d8: $19
    dec c                                         ; $70d9: $0d
    push hl                                       ; $70da: $e5
    ld c, [hl]                                    ; $70db: $4e
    dec l                                         ; $70dc: $2d
    rst $28                                       ; $70dd: $ef
    ld e, h                                       ; $70de: $5c
    ld e, c                                       ; $70df: $59
    sbc d                                         ; $70e0: $9a
    scf                                           ; $70e1: $37
    sbc $a9                                       ; $70e2: $de $a9
    dec bc                                        ; $70e4: $0b
    ld a, [hl-]                                   ; $70e5: $3a
    ld l, $39                                     ; $70e6: $2e $39
    ldh [$8c], a                                  ; $70e8: $e0 $8c
    call $00f8                                    ; $70ea: $cd $f8 $00
    rst $10                                       ; $70ed: $d7
    db $e4                                        ; $70ee: $e4
    and d                                         ; $70ef: $a2
    ld e, a                                       ; $70f0: $5f
    sbc [hl]                                      ; $70f1: $9e
    rst $28                                       ; $70f2: $ef
    cp c                                          ; $70f3: $b9
    inc de                                        ; $70f4: $13
    ld a, [hl]                                    ; $70f5: $7e
    ld h, l                                       ; $70f6: $65
    ld [hl], e                                    ; $70f7: $73
    ld h, [hl]                                    ; $70f8: $66
    add hl, sp                                    ; $70f9: $39
    ld h, a                                       ; $70fa: $67
    ld e, h                                       ; $70fb: $5c
    ld [hl], d                                    ; $70fc: $72
    add b                                         ; $70fd: $80
    ld e, e                                       ; $70fe: $5b
    sub d                                         ; $70ff: $92
    rra                                           ; $7100: $1f
    ld l, d                                       ; $7101: $6a
    add $07                                       ; $7102: $c6 $07
    cpl                                           ; $7104: $2f
    add a                                         ; $7105: $87
    dec bc                                        ; $7106: $0b
    dec de                                        ; $7107: $1b
    ld d, l                                       ; $7108: $55
    ld [hl], e                                    ; $7109: $73
    ret nc                                        ; $710a: $d0

    ld a, b                                       ; $710b: $78
    cp e                                          ; $710c: $bb
    ld h, $27                                     ; $710d: $26 $27
    inc [hl]                                      ; $710f: $34
    daa                                           ; $7110: $27
    ld e, b                                       ; $7111: $58
    add d                                         ; $7112: $82
    ld a, c                                       ; $7113: $79
    db $e3                                        ; $7114: $e3
    sbc l                                         ; $7115: $9d
    cp d                                          ; $7116: $ba
    and b                                         ; $7117: $a0
    dec hl                                        ; $7118: $2b
    dec l                                         ; $7119: $2d
    ld [hl-], a                                   ; $711a: $32
    and e                                         ; $711b: $a3
    db $dd                                        ; $711c: $dd
    ld a, e                                       ; $711d: $7b
    rst $18                                       ; $711e: $df

Jump_047_711f:
    db $fd                                        ; $711f: $fd
    ld a, e                                       ; $7120: $7b
    dec e                                         ; $7121: $1d
    and l                                         ; $7122: $a5
    xor h                                         ; $7123: $ac
    ld d, [hl]                                    ; $7124: $56
    ld [hl], e                                    ; $7125: $73
    rst $38                                       ; $7126: $ff
    and a                                         ; $7127: $a7
    ld c, c                                       ; $7128: $49
    daa                                           ; $7129: $27
    or e                                          ; $712a: $b3
    add hl, sp                                    ; $712b: $39
    ld l, $39                                     ; $712c: $2e $39
    nop                                           ; $712e: $00
    call nc, $c66d                                ; $712f: $d4 $6d $c6
    rlca                                          ; $7132: $07
    sub a                                         ; $7133: $97
    dec d                                         ; $7134: $15
    ld d, $74                                     ; $7135: $16 $74
    and [hl]                                      ; $7137: $a6
    daa                                           ; $7138: $27
    ld d, h                                       ; $7139: $54
    jp hl                                         ; $713a: $e9


    rst $08                                       ; $713b: $cf
    call $aa9d                                    ; $713c: $cd $9d $aa
    ld h, l                                       ; $713f: $65
    rla                                           ; $7140: $17
    ld [hl], h                                    ; $7141: $74
    daa                                           ; $7142: $27
    call nc, $e57c                                ; $7143: $d4 $7c $e5
    nop                                           ; $7146: $00
    ld l, a                                       ; $7147: $6f
    ld d, a                                       ; $7148: $57
    rr a                                          ; $7149: $cb $1f
    dec c                                         ; $714b: $0d
    ld [hl], e                                    ; $714c: $73
    jp nz, Jump_000_3caf                          ; $714d: $c2 $af $3c

    ld h, c                                       ; $7150: $61
    jp z, Jump_000_3dea                           ; $7151: $ca $ea $3d

    xor a                                         ; $7154: $af
    or c                                          ; $7155: $b1
    cp [hl]                                       ; $7156: $be
    or h                                          ; $7157: $b4
    ld e, e                                       ; $7158: $5b
    rst $30                                       ; $7159: $f7
    sub [hl]                                      ; $715a: $96
    xor [hl]                                      ; $715b: $ae
    adc h                                         ; $715c: $8c
    rst $30                                       ; $715d: $f7
    halt                                          ; $715e: $76
    daa                                           ; $715f: $27
    sbc l                                         ; $7160: $9d
    call z, Call_000_3ee6                         ; $7161: $cc $e6 $3e
    inc [hl]                                      ; $7164: $34
    adc a                                         ; $7165: $8f
    cp h                                          ; $7166: $bc
    add sp, $47                                   ; $7167: $e8 $47
    ld c, l                                       ; $7169: $4d
    ld e, $68                                     ; $716a: $1e $68
    ld [hl], e                                    ; $716c: $73
    ld d, d                                       ; $716d: $52
    ld e, e                                       ; $716e: $5b
    ld [hl], d                                    ; $716f: $72
    ld [hl], e                                    ; $7170: $73
    ld h, c                                       ; $7171: $61
    dec [hl]                                      ; $7172: $35
    call nc, $e38c                                ; $7173: $d4 $8c $e3
    ld a, b                                       ; $7176: $78
    and a                                         ; $7177: $a7
    xor $8c                                       ; $7178: $ee $8c
    ld b, c                                       ; $717a: $41
    xor [hl]                                      ; $717b: $ae
    call $bf09                                    ; $717c: $cd $09 $bf
    or d                                          ; $717f: $b2
    ld a, c                                       ; $7180: $79
    ld [hl], d                                    ; $7181: $72
    jr z, jr_047_71ee                             ; $7182: $28 $6a

    ld b, d                                       ; $7184: $42
    jp c, $cc0c                                   ; $7185: $da $0c $cc

    inc l                                         ; $7188: $2c
    rla                                           ; $7189: $17
    sub [hl]                                      ; $718a: $96
    daa                                           ; $718b: $27
    ld d, h                                       ; $718c: $54
    ld sp, $e061                                  ; $718d: $31 $61 $e0
    sbc e                                         ; $7190: $9b
    pop af                                        ; $7191: $f1
    or $a2                                        ; $7192: $f6 $a2
    add hl, de                                    ; $7194: $19
    ld c, l                                       ; $7195: $4d
    cp $68                                        ; $7196: $fe $68
    and [hl]                                      ; $7198: $a6
    ld d, l                                       ; $7199: $55
    ld d, b                                       ; $719a: $50
    ld b, c                                       ; $719b: $41
    ld h, e                                       ; $719c: $63
    ld b, l                                       ; $719d: $45
    inc a                                         ; $719e: $3c
    ld bc, $9b33                                  ; $719f: $01 $33 $9b
    ld a, [c]                                     ; $71a2: $f2
    inc de                                        ; $71a3: $13
    adc a                                         ; $71a4: $8f
    ld c, e                                       ; $71a5: $4b
    ld c, $88                                     ; $71a6: $0e $88
    rrca                                          ; $71a8: $0f
    sub a                                         ; $71a9: $97
    and [hl]                                      ; $71aa: $a6
    push af                                       ; $71ab: $f5
    cp a                                          ; $71ac: $bf
    jr @-$34                                      ; $71ad: $18 $ca

    add hl, bc                                    ; $71af: $09
    call $255d                                    ; $71b0: $cd $5d $25
    add e                                         ; $71b3: $83
    rst $38                                       ; $71b4: $ff
    cp l                                          ; $71b5: $bd
    ld l, b                                       ; $71b6: $68
    ld e, d                                       ; $71b7: $5a
    add h                                         ; $71b8: $84
    sbc $51                                       ; $71b9: $de $51
    pop af                                        ; $71bb: $f1
    or $1e                                        ; $71bc: $f6 $1e
    ld a, [c]                                     ; $71be: $f2
    ld [bc], a                                    ; $71bf: $02
    inc c                                         ; $71c0: $0c
    or $bf                                        ; $71c1: $f6 $bf
    call c, $f687                                 ; $71c3: $dc $87 $f6
    sbc $a9                                       ; $71c6: $de $a9
    sbc b                                         ; $71c8: $98
    adc d                                         ; $71c9: $8a
    adc e                                         ; $71ca: $8b
    ld a, c                                       ; $71cb: $79
    push hl                                       ; $71cc: $e5
    nop                                           ; $71cd: $00
    ld c, a                                       ; $71ce: $4f
    ld h, c                                       ; $71cf: $61
    ld h, [hl]                                    ; $71d0: $66
    ld d, e                                       ; $71d1: $53
    ld a, [hl]                                    ; $71d2: $7e
    ld [c], a                                     ; $71d3: $e2
    sbc l                                         ; $71d4: $9d
    xor d                                         ; $71d5: $aa
    db $e3                                        ; $71d6: $e3
    inc bc                                        ; $71d7: $03

Jump_047_71d8:
    rst $10                                       ; $71d8: $d7
    db $e4                                        ; $71d9: $e4
    cp $97                                        ; $71da: $fe $97
    pop af                                        ; $71dc: $f1
    halt                                          ; $71dd: $76
    ld c, l                                       ; $71de: $4d
    xor $6c                                       ; $71df: $ee $6c
    ld h, b                                       ; $71e1: $60
    ld b, c                                       ; $71e2: $41
    sub a                                         ; $71e3: $97
    push hl                                       ; $71e4: $e5
    ld b, l                                       ; $71e5: $45
    push hl                                       ; $71e6: $e5
    ld a, c                                       ; $71e7: $79
    db $ec                                        ; $71e8: $ec
    ld e, h                                       ; $71e9: $5c
    xor d                                         ; $71ea: $aa
    xor d                                         ; $71eb: $aa
    add $40                                       ; $71ec: $c6 $40

jr_047_71ee:
    halt                                          ; $71ee: $76
    ld b, d                                       ; $71ef: $42
    dec a                                         ; $71f0: $3d
    ld [hl], $7d                                  ; $71f1: $36 $7d
    ld [hl], a                                    ; $71f3: $77
    ld l, c                                       ; $71f4: $69
    add b                                         ; $71f5: $80
    ret nc                                        ; $71f6: $d0

    rst $00                                       ; $71f7: $c7
    rlca                                          ; $71f8: $07
    rst $10                                       ; $71f9: $d7
    db $e4                                        ; $71fa: $e4
    ld e, h                                       ; $71fb: $5c
    ld c, h                                       ; $71fc: $4c
    cp a                                          ; $71fd: $bf
    ld c, e                                       ; $71fe: $4b
    inc bc                                        ; $71ff: $03
    add h                                         ; $7200: $84
    ld a, [hl]                                    ; $7201: $7e
    ld h, [hl]                                    ; $7202: $66
    db $e4                                        ; $7203: $e4
    ld de, $07c4                                  ; $7204: $11 $c4 $07
    rst $08                                       ; $7207: $cf
    ret nz                                        ; $7208: $c0

    ld b, e                                       ; $7209: $43
    sbc $c9                                       ; $720a: $de $c9
    adc h                                         ; $720c: $8c
    xor [hl]                                      ; $720d: $ae

jr_047_720e:
    ld l, h                                       ; $720e: $6c
    cpl                                           ; $720f: $2f
    ld h, c                                       ; $7210: $61
    ld a, c                                       ; $7211: $79
    ccf                                           ; $7212: $3f
    push de                                       ; $7213: $d5
    call nc, $c4ff                                ; $7214: $d4 $ff $c4
    adc e                                         ; $7217: $8b
    sbc d                                         ; $7218: $9a
    xor d                                         ; $7219: $aa
    ld a, c                                       ; $721a: $79
    ld sp, $6ad3                                  ; $721b: $31 $d3 $6a
    ld b, c                                       ; $721e: $41
    daa                                           ; $721f: $27
    inc d                                         ; $7220: $14
    db $10                                        ; $7221: $10
    ld b, $10                                     ; $7222: $06 $10
    rst $28                                       ; $7224: $ef
    ld h, h                                       ; $7225: $64
    inc a                                         ; $7226: $3c
    sub h                                         ; $7227: $94
    inc de                                        ; $7228: $13
    ld [$757f], a                                 ; $7229: $ea $7f $75
    cp h                                          ; $722c: $bc
    ld c, e                                       ; $722d: $4b
    inc c                                         ; $722e: $0c
    add [hl]                                      ; $722f: $86
    ld l, d                                       ; $7230: $6a
    ld [bc], a                                    ; $7231: $02
    ld b, $69                                     ; $7232: $06 $69
    set 6, d                                      ; $7234: $cb $f2
    adc $7f                                       ; $7236: $ce $7f
    dec h                                         ; $7238: $25
    jr nc, jr_047_720e                            ; $7239: $30 $d3

    ld l, d                                       ; $723b: $6a

Call_047_723c:
    ld l, l                                       ; $723c: $6d
    xor $2a                                       ; $723d: $ee $2a
    push de                                       ; $723f: $d5
    add hl, sp                                    ; $7240: $39
    ld d, a                                       ; $7241: $57
    rst $00                                       ; $7242: $c7
    ld a, e                                       ; $7243: $7b
    ld de, $8295                                  ; $7244: $11 $95 $82
    add a                                         ; $7247: $87
    ret c                                         ; $7248: $d8

    ld e, h                                       ; $7249: $5c
    ld a, [hl]                                    ; $724a: $7e
    or b                                          ; $724b: $b0
    ld d, e                                       ; $724c: $53
    push af                                       ; $724d: $f5
    ld c, d                                       ; $724e: $4a
    and b                                         ; $724f: $a0
    inc d                                         ; $7250: $14
    rst $28                                       ; $7251: $ef
    and l                                         ; $7252: $a5
    rst $28                                       ; $7253: $ef
    ld e, h                                       ; $7254: $5c
    adc h                                         ; $7255: $8c
    ccf                                           ; $7256: $3f
    ld c, a                                       ; $7257: $4f
    ret nz                                        ; $7258: $c0

    call z, $fca6                                 ; $7259: $cc $a6 $fc
    call nz, $96f3                                ; $725c: $c4 $f3 $96
    pop af                                        ; $725f: $f1
    ld bc, $576f                                  ; $7260: $01 $6f $57
    rr a                                          ; $7263: $cb $1f
    ld c, l                                       ; $7265: $4d
    ret nz                                        ; $7266: $c0

    ld h, b                                       ; $7267: $60
    cp [hl]                                       ; $7268: $be
    ld a, e                                       ; $7269: $7b
    xor [hl]                                      ; $726a: $ae
    reti                                          ; $726b: $d9


    ld [hl], e                                    ; $726c: $73
    jp hl                                         ; $726d: $e9


    ld h, d                                       ; $726e: $62
    pop hl                                        ; $726f: $e1
    rst $28                                       ; $7270: $ef
    xor c                                         ; $7271: $a9
    ld a, d                                       ; $7272: $7a
    jr z, jr_047_72ec                             ; $7273: $28 $77

    add $ce                                       ; $7275: $c6 $ce
    dec de                                        ; $7277: $1b
    cpl                                           ; $7278: $2f
    add sp, $12                                   ; $7279: $e8 $12
    rlc e                                         ; $727b: $cb $03
    dec a                                         ; $727d: $3d
    db $fd                                        ; $727e: $fd
    db $f4                                        ; $727f: $f4
    inc de                                        ; $7280: $13
    sbc d                                         ; $7281: $9a
    inc e                                         ; $7282: $1c
    rra                                           ; $7283: $1f
    ld l, a                                       ; $7284: $6f
    dec de                                        ; $7285: $1b
    rst $08                                       ; $7286: $cf
    rst $38                                       ; $7287: $ff
    ld a, [c]                                     ; $7288: $f2
    sbc h                                         ; $7289: $9c
    add l                                         ; $728a: $85
    ld e, b                                       ; $728b: $58
    cp d                                          ; $728c: $ba
    ld [hl], d                                    ; $728d: $72
    nop                                           ; $728e: $00
    rst $10                                       ; $728f: $d7
    db $e4                                        ; $7290: $e4
    ld b, b                                       ; $7291: $40
    or e                                          ; $7292: $b3
    ld d, l                                       ; $7293: $55
    di                                            ; $7294: $f3
    ld e, b                                       ; $7295: $58
    ret nc                                        ; $7296: $d0

    ld l, h                                       ; $7297: $6c
    adc $63                                       ; $7298: $ce $63
    rlca                                          ; $729a: $07
    ld a, d                                       ; $729b: $7a
    ld a, [$77e9]                                 ; $729c: $fa $e9 $77
    add $20                                       ; $729f: $c6 $20
    rlca                                          ; $72a1: $07
    ld c, d                                       ; $72a2: $4a
    ld h, [hl]                                    ; $72a3: $66
    sub d                                         ; $72a4: $92
    rst $30                                       ; $72a5: $f7
    and c                                         ; $72a6: $a1
    ld sp, hl                                     ; $72a7: $f9
    xor $ed                                       ; $72a8: $ee $ed
    ld [bc], a                                    ; $72aa: $02
    ld d, h                                       ; $72ab: $54
    and a                                         ; $72ac: $a7
    add d                                         ; $72ad: $82
    ld hl, sp+$00                                 ; $72ae: $f8 $00
    rst $10                                       ; $72b0: $d7
    dec sp                                        ; $72b1: $3b
    and c                                         ; $72b2: $a1
    ret                                           ; $72b3: $c9


    inc sp                                        ; $72b4: $33
    call $f818                                    ; $72b5: $cd $18 $f8
    sbc l                                         ; $72b8: $9d
    xor d                                         ; $72b9: $aa
    push hl                                       ; $72ba: $e5
    adc a                                         ; $72bb: $8f
    ld [c], a                                     ; $72bc: $e2
    inc bc                                        ; $72bd: $03
    rst $10                                       ; $72be: $d7
    db $e4                                        ; $72bf: $e4
    adc $d8                                       ; $72c0: $ce $d8
    ld a, c                                       ; $72c2: $79
    db $e3                                        ; $72c3: $e3

jr_047_72c4:
    dec b                                         ; $72c4: $05
    dec e                                         ; $72c5: $1d
    add sp, -$17                                  ; $72c6: $e8 $e9
    and a                                         ; $72c8: $a7
    sbc a                                         ; $72c9: $9f
    ret nc                                        ; $72ca: $d0

    db $e4                                        ; $72cb: $e4
    ld a, b                                       ; $72cc: $78
    ld l, a                                       ; $72cd: $6f
    and e                                         ; $72ce: $a3
    ld e, [hl]                                    ; $72cf: $5e
    ret nc                                        ; $72d0: $d0

    ld a, c                                       ; $72d1: $79
    db $e3                                        ; $72d2: $e3
    and c                                         ; $72d3: $a1
    ld e, h                                       ; $72d4: $5c
    ret nc                                        ; $72d5: $d0

    add c                                         ; $72d6: $81
    ld h, [hl]                                    ; $72d7: $66
    xor e                                         ; $72d8: $ab
    xor [hl]                                      ; $72d9: $ae
    inc e                                         ; $72da: $1c
    rst $10                                       ; $72db: $d7
    db $ed                                        ; $72dc: $ed
    ld h, d                                       ; $72dd: $62
    and [hl]                                      ; $72de: $a6
    dec d                                         ; $72df: $15
    dec sp                                        ; $72e0: $3b
    add d                                         ; $72e1: $82
    add $8a                                       ; $72e2: $c6 $8a
    jr c, jr_047_72c4                             ; $72e4: $38 $de

    sbc $36                                       ; $72e6: $de $36
    sbc [hl]                                      ; $72e8: $9e
    db $fc                                        ; $72e9: $fc
    adc d                                         ; $72ea: $8a
    rla                                           ; $72eb: $17

jr_047_72ec:
    sub [hl]                                      ; $72ec: $96
    xor a                                         ; $72ed: $af
    inc e                                         ; $72ee: $1c
    sub a                                         ; $72ef: $97
    push de                                       ; $72f0: $d5
    adc l                                         ; $72f1: $8d
    call z, $12f4                                 ; $72f2: $cc $f4 $12
    sra d                                         ; $72f5: $cb $2a
    sbc $2e                                       ; $72f7: $de $2e
    bit 0, e                                      ; $72f9: $cb $43
    or l                                          ; $72fb: $b5
    ld [$1c83], sp                                ; $72fc: $08 $83 $1c

Jump_047_72ff:
    and h                                         ; $72ff: $a4
    ld de, $f21e                                  ; $7300: $11 $1e $f2
    or b                                          ; $7303: $b0
    cp [hl]                                       ; $7304: $be
    call nc, $b8e6                                ; $7305: $d4 $e6 $b8
    inc bc                                        ; $7308: $03
    call $9b9e                                    ; $7309: $cd $9e $9b
    di                                            ; $730c: $f3
    ret c                                         ; $730d: $d8

    ld a, c                                       ; $730e: $79
    inc sp                                        ; $730f: $33
    ld a, [$5cd1]                                 ; $7310: $fa $d1 $5c
    ld [hl-], a                                   ; $7313: $32
    inc bc                                        ; $7314: $03
    inc e                                         ; $7315: $1c
    rra                                           ; $7316: $1f
    rst $10                                       ; $7317: $d7
    db $ed                                        ; $7318: $ed
    ld h, d                                       ; $7319: $62
    and [hl]                                      ; $731a: $a6
    dec d                                         ; $731b: $15
    dec sp                                        ; $731c: $3b
    add d                                         ; $731d: $82
    add $8a                                       ; $731e: $c6 $8a

Jump_047_7320:
    ld e, b                                       ; $7320: $58
    db $fc                                        ; $7321: $fc
    ld bc, $61ef                                  ; $7322: $01 $ef $61
    rst $08                                       ; $7325: $cf
    rst $38                                       ; $7326: $ff
    ld h, d                                       ; $7327: $62
    sbc $78                                       ; $7328: $de $78
    xor $af                                       ; $732a: $ee $af
    and $b9                                       ; $732c: $e6 $b9
    and [hl]                                      ; $732e: $a6
    ld a, b                                       ; $732f: $78
    ld l, l                                       ; $7330: $6d
    ld c, [hl]                                    ; $7331: $4e
    or c                                          ; $7332: $b1
    inc hl                                        ; $7333: $23
    daa                                           ; $7334: $27
    sub h                                         ; $7335: $94
    ld c, e                                       ; $7336: $4b
    pop af                                        ; $7337: $f1
    ld bc, $0ff7                                  ; $7338: $01 $f7 $0f
    db $f4                                        ; $733b: $f4
    ld h, h                                       ; $733c: $64
    cp [hl]                                       ; $733d: $be
    ld a, c                                       ; $733e: $79
    nop                                           ; $733f: $00
    rst $30                                       ; $7340: $f7
    xor $84                                       ; $7341: $ee $84
    ret                                           ; $7343: $c9


    and l                                         ; $7344: $a5
    ret z                                         ; $7345: $c8

    sub d                                         ; $7346: $92
    xor e                                         ; $7347: $ab
    rrca                                          ; $7348: $0f
    rst $30                                       ; $7349: $f7
    ld c, $72                                     ; $734a: $0e $72
    sub d                                         ; $734c: $92
    inc hl                                        ; $734d: $23
    add a                                         ; $734e: $87
    push de                                       ; $734f: $d5
    ld bc, $0ef7                                  ; $7350: $01 $f7 $0e
    ld [hl-], a                                   ; $7353: $32
    and e                                         ; $7354: $a3
    add l                                         ; $7355: $85
    sub [hl]                                      ; $7356: $96
    ld e, [hl]                                    ; $7357: $5e
    pop bc                                        ; $7358: $c1
    jp Jump_047_6cdf                              ; $7359: $c3 $df $6c


Jump_047_735c:
    ld e, $f7                                     ; $735c: $1e $f7
    ld c, $32                                     ; $735e: $0e $32
    cp c                                          ; $7360: $b9
    inc [hl]                                      ; $7361: $34
    adc e                                         ; $7362: $8b
    or h                                          ; $7363: $b4
    add hl, bc                                    ; $7364: $09
    push de                                       ; $7365: $d5
    ld [$f700], a                                 ; $7366: $ea $00 $f7
    ld c, [hl]                                    ; $7369: $4e
    sub l                                         ; $736a: $95
    rst $00                                       ; $736b: $c7
    rst $18                                       ; $736c: $df
    dec l                                         ; $736d: $2d
    ld a, c                                       ; $736e: $79

jr_047_736f:
    or d                                          ; $736f: $b2
    sub h                                         ; $7370: $94
    ld a, [bc]                                    ; $7371: $0a
    ld [hl], d                                    ; $7372: $72
    or h                                          ; $7373: $b4
    ld l, [hl]                                    ; $7374: $6e
    ld e, $f7                                     ; $7375: $1e $f7
    ld c, [hl]                                    ; $7377: $4e
    sub l                                         ; $7378: $95
    rst $10                                       ; $7379: $d7
    sub d                                         ; $737a: $92
    ld [c], a                                     ; $737b: $e2
    ld b, $66                                     ; $737c: $06 $66
    and h                                         ; $737e: $a4
    add h                                         ; $737f: $84
    ld e, a                                       ; $7380: $5f
    reti                                          ; $7381: $d9


    inc a                                         ; $7382: $3c
    nop                                           ; $7383: $00
    rst $30                                       ; $7384: $f7
    ld c, [hl]                                    ; $7385: $4e
    sub [hl]                                      ; $7386: $96
    xor e                                         ; $7387: $ab
    rrca                                          ; $7388: $0f
    rst $30                                       ; $7389: $f7
    adc [hl]                                      ; $738a: $8e
    cp a                                          ; $738b: $bf
    ld e, e                                       ; $738c: $5b
    ld d, d                                       ; $738d: $52
    ld l, h                                       ; $738e: $6c
    and d                                         ; $738f: $a2
    inc bc                                        ; $7390: $03
    ld c, a                                       ; $7391: $4f
    dec [hl]                                      ; $7392: $35
    rla                                           ; $7393: $17
    ld h, b                                       ; $7394: $60
    or b                                          ; $7395: $b0
    ld [hl], $e7                                  ; $7396: $36 $e7
    sub [hl]                                      ; $7398: $96
    adc $16                                       ; $7399: $ce $16
    ld d, l                                       ; $739b: $55
    sbc e                                         ; $739c: $9b
    pop de                                        ; $739d: $d1
    sub l                                         ; $739e: $95

jr_047_739f:
    db $ed                                        ; $739f: $ed
    sbc d                                         ; $73a0: $9a
    ld e, h                                       ; $73a1: $5c
    ld e, b                                       ; $73a2: $58
    ld h, c                                       ; $73a3: $61
    ld l, l                                       ; $73a4: $6d
    ld c, [hl]                                    ; $73a5: $4e
    sbc d                                         ; $73a6: $9a
    ld de, $63cf                                  ; $73a7: $11 $cf $63
    rla                                           ; $73aa: $17
    ld [hl], h                                    ; $73ab: $74
    ld de, $052a                                  ; $73ac: $11 $2a $05
    rrca                                          ; $73af: $0f
    or c                                          ; $73b0: $b1
    cp c                                          ; $73b1: $b9
    ld d, e                                       ; $73b2: $53
    push af                                       ; $73b3: $f5
    jr nc, jr_047_736f                            ; $73b4: $30 $b9

    ld d, h                                       ; $73b6: $54
    and l                                         ; $73b7: $a5
    ld e, d                                       ; $73b8: $5a
    ld [c], a                                     ; $73b9: $e2
    ld hl, sp+$00                                 ; $73ba: $f8 $00
    ld c, a                                       ; $73bc: $4f
    push de                                       ; $73bd: $d5
    rst $38                                       ; $73be: $ff
    ld [$5d05], a                                 ; $73bf: $ea $05 $5d
    sbc e                                         ; $73c2: $9b
    sub e                                         ; $73c3: $93
    ld h, [hl]                                    ; $73c4: $66
    call nz, $9073                                ; $73c5: $c4 $73 $90
    rst $20                                       ; $73c8: $e7
    dec sp                                        ; $73c9: $3b
    ld l, d                                       ; $73ca: $6a
    and l                                         ; $73cb: $a5
    jp c, $a553                                   ; $73cc: $da $53 $a5

    rst $18                                       ; $73cf: $df
    ret z                                         ; $73d0: $c8

    ld [hl], a                                    ; $73d1: $77
    sub a                                         ; $73d2: $97
    sub l                                         ; $73d3: $95
    xor d                                         ; $73d4: $aa
    cp c                                          ; $73d5: $b9
    and $de                                       ; $73d6: $e6 $de
    ld hl, sp+$6e                                 ; $73d8: $f8 $6e
    db $d3                                        ; $73da: $d3
    adc h                                         ; $73db: $8c
    call nc, $bd95                                ; $73dc: $d4 $95 $bd
    db $f4                                        ; $73df: $f4
    sbc l                                         ; $73e0: $9d
    adc e                                         ; $73e1: $8b
    ld b, l                                       ; $73e2: $45
    xor b                                         ; $73e3: $a8
    inc d                                         ; $73e4: $14
    inc a                                         ; $73e5: $3c
    call nz, $bc66                                ; $73e6: $c4 $66 $bc
    rla                                           ; $73e9: $17
    ld sp, $b9c8                                  ; $73ea: $31 $c8 $b9
    and l                                         ; $73ed: $a5
    or e                                          ; $73ee: $b3
    ld b, l                                       ; $73ef: $45
    push de                                       ; $73f0: $d5
    sbc b                                         ; $73f1: $98
    ld h, b                                       ; $73f2: $60
    xor b                                         ; $73f3: $a8
    and $12                                       ; $73f4: $e6 $12
    ld b, $93                                     ; $73f6: $06 $93
    cp d                                          ; $73f8: $ba
    sbc b                                         ; $73f9: $98
    ei                                            ; $73fa: $fb
    ret nc                                        ; $73fb: $d0

    jp nz, $a2f2                                  ; $73fc: $c2 $f2 $a2

    rra                                           ; $73ff: $1f
    dec [hl]                                      ; $7400: $35
    add hl, sp                                    ; $7401: $39
    ld a, $00                                     ; $7402: $3e $00
    ld d, a                                       ; $7404: $57
    ld a, e                                       ; $7405: $7b
    xor $50                                       ; $7406: $ee $50
    xor l                                         ; $7408: $ad
    inc b                                         ; $7409: $04
    halt                                          ; $740a: $76
    xor [hl]                                      ; $740b: $ae
    or $67                                        ; $740c: $f6 $67
    or e                                          ; $740e: $b3
    jr z, jr_047_739f                             ; $740f: $28 $8e

    db $e3                                        ; $7411: $e3
    dec a                                         ; $7412: $3d
    adc l                                         ; $7413: $8d
    inc b                                         ; $7414: $04
    rst $28                                       ; $7415: $ef
    jr nc, jr_047_742f                            ; $7416: $30 $17

    cp $0f                                        ; $7418: $fe $0f
    inc d                                         ; $741a: $14
    rla                                           ; $741b: $17
    ld b, c                                       ; $741c: $41
    ld [hl], e                                    ; $741d: $73
    ld d, b                                       ; $741e: $50
    ld c, c                                       ; $741f: $49
    db $fd                                        ; $7420: $fd
    sbc a                                         ; $7421: $9f
    ld [c], a                                     ; $7422: $e2
    rst $30                                       ; $7423: $f7
    ld [hl], $ea                                  ; $7424: $36 $ea
    dec b                                         ; $7426: $05
    dec e                                         ; $7427: $1d
    add hl, sp                                    ; $7428: $39
    xor b                                         ; $7429: $a8
    sbc e                                         ; $742a: $9b
    ld d, a                                       ; $742b: $57
    xor [hl]                                      ; $742c: $ae
    inc e                                         ; $742d: $1c
    ld l, a                                       ; $742e: $6f

jr_047_742f:
    dec de                                        ; $742f: $1b
    rst $28                                       ; $7430: $ef
    add h                                         ; $7431: $84
    ld a, d                                       ; $7432: $7a
    ld b, c                                       ; $7433: $41
    ld d, a                                       ; $7434: $57
    ld [hl], d                                    ; $7435: $72
    rst $38                                       ; $7436: $ff
    and a                                         ; $7437: $a7
    add l                                         ; $7438: $85
    dec d                                         ; $7439: $15
    add h                                         ; $743a: $84
    and $95                                       ; $743b: $e6 $95
    inc bc                                        ; $743d: $03
    rst $08                                       ; $743e: $cf
    inc [hl]                                      ; $743f: $34
    daa                                           ; $7440: $27
    db $f4                                        ; $7441: $f4
    db $fc                                        ; $7442: $fc
    adc l                                         ; $7443: $8d
    xor $52                                       ; $7444: $ee $52
    call c, $bc66                                 ; $7446: $dc $66 $bc
    xor e                                         ; $7449: $ab
    cp a                                          ; $744a: $bf
    ld a, c                                       ; $744b: $79
    push hl                                       ; $744c: $e5
    nop                                           ; $744d: $00
    rst $10                                       ; $744e: $d7
    db $e4                                        ; $744f: $e4
    ld c, [hl]                                    ; $7450: $4e
    dec l                                         ; $7451: $2d
    cpl                                           ; $7452: $2f
    or c                                          ; $7453: $b1
    cp h                                          ; $7454: $bc
    ld [hl], $d5                                  ; $7455: $36 $d5
    ld c, [hl]                                    ; $7457: $4e
    add $f3                                       ; $7458: $c6 $f3
    add $43                                       ; $745a: $c6 $43
    dec d                                         ; $745c: $15
    rra                                           ; $745d: $1f
    sub a                                         ; $745e: $97
    ld d, c                                       ; $745f: $51
    ld [hl], h                                    ; $7460: $74
    or c                                          ; $7461: $b1
    ld [hl], e                                    ; $7462: $73
    ld h, l                                       ; $7463: $65
    ld l, c                                       ; $7464: $69
    ld l, l                                       ; $7465: $6d
    ld c, $d0                                     ; $7466: $0e $d0
    ld l, a                                       ; $7468: $6f
    ld [hl], d                                    ; $7469: $72
    ret nc                                        ; $746a: $d0

    ld a, b                                       ; $746b: $78
    xor a                                         ; $746c: $af
    ld a, a                                       ; $746d: $7f
    ld [hl+], a                                   ; $746e: $22
    ld sp, $0b17                                  ; $746f: $31 $17 $0b
    rst $38                                       ; $7472: $ff
    and a                                         ; $7473: $a7
    ld hl, sp+$00                                 ; $7474: $f8 $00
    rst $08                                       ; $7476: $cf
    db $fd                                        ; $7477: $fd
    ld a, [$7a81]                                 ; $7478: $fa $81 $7a
    or e                                          ; $747b: $b3
    cp h                                          ; $747c: $bc
    ret c                                         ; $747d: $d8

    and l                                         ; $747e: $a5
    ld de, $8989                                  ; $747f: $11 $89 $89
    or a                                          ; $7482: $b7
    sub a                                         ; $7483: $97
    ld a, $d8                                     ; $7484: $3e $d8
    dec c                                         ; $7486: $0d
    scf                                           ; $7487: $37
    db $e4                                        ; $7488: $e4
    inc a                                         ; $7489: $3c
    ld h, $88                                     ; $748a: $26 $88
    db $e3                                        ; $748c: $e3
    ld a, b                                       ; $748d: $78
    and b                                         ; $748e: $a0
    and d                                         ; $748f: $a2
    ld l, d                                       ; $7490: $6a
    add h                                         ; $7491: $84
    inc hl                                        ; $7492: $23
    or a                                          ; $7493: $b7
    db $e4                                        ; $7494: $e4
    rla                                           ; $7495: $17
    sub l                                         ; $7496: $95
    rla                                           ; $7497: $17
    ld [hl], h                                    ; $7498: $74
    ld l, [hl]                                    ; $7499: $6e
    add hl, hl                                    ; $749a: $29
    jr nc, jr_047_74c0                            ; $749b: $30 $23

    ld l, a                                       ; $749d: $6f
    ld b, b                                       ; $749e: $40
    db $fc                                        ; $749f: $fc
    ld bc, $75ef                                  ; $74a0: $01 $ef $75
    xor b                                         ; $74a3: $a8
    ld b, $91                                     ; $74a4: $06 $91

jr_047_74a6:
    pop bc                                        ; $74a6: $c1
    ld b, e                                       ; $74a7: $43
    ld b, [hl]                                    ; $74a8: $46
    db $10                                        ; $74a9: $10
    ld l, a                                       ; $74aa: $6f
    sub a                                         ; $74ab: $97
    cp a                                          ; $74ac: $bf
    dec bc                                        ; $74ad: $0b
    ld e, e                                       ; $74ae: $5b
    sbc $b9                                       ; $74af: $de $b9
    ld d, a                                       ; $74b1: $57
    ld c, $57                                     ; $74b2: $0e $57
    sub c                                         ; $74b4: $91
    add a                                         ; $74b5: $87
    ld l, d                                       ; $74b6: $6a
    sub a                                         ; $74b7: $97
    push af                                       ; $74b8: $f5
    daa                                           ; $74b9: $27
    inc b                                         ; $74ba: $04
    pop af                                        ; $74bb: $f1
    or $a4                                        ; $74bc: $f6 $a4
    sub $9d                                       ; $74be: $d6 $9d

jr_047_74c0:
    call nz, $a5f4                                ; $74c0: $c4 $f4 $a5
    and $4e                                       ; $74c3: $e6 $4e
    xor b                                         ; $74c5: $a8
    ld [hl], l                                    ; $74c6: $75
    ld [hl], e                                    ; $74c7: $73
    ld l, l                                       ; $74c8: $6d
    adc $41                                       ; $74c9: $ce $41
    dec e                                         ; $74cb: $1d
    rst $28                                       ; $74cc: $ef
    cp l                                          ; $74cd: $bd
    ld c, [hl]                                    ; $74ce: $4e
    ld [hl], $b3                                  ; $74cf: $36 $b3
    dec bc                                        ; $74d1: $0b
    ld a, [hl-]                                   ; $74d2: $3a
    add sp, $2b                                   ; $74d3: $e8 $2b
    ld e, $fd                                     ; $74d5: $1e $fd
    db $f4                                        ; $74d7: $f4
    ld [bc], a                                    ; $74d8: $02
    dec [hl]                                      ; $74d9: $35
    ld b, c                                       ; $74da: $41
    ld [hl], e                                    ; $74db: $73
    call Call_047_7f9d                            ; $74dc: $cd $9d $7f
    ld a, h                                       ; $74df: $7c
    nop                                           ; $74e0: $00
    ld d, a                                       ; $74e1: $57
    dec l                                         ; $74e2: $2d
    push hl                                       ; $74e3: $e5
    add d                                         ; $74e4: $82
    xor $54                                       ; $74e5: $ee $54
    dec l                                         ; $74e7: $2d

jr_047_74e8:
    cp $00                                        ; $74e8: $fe $00
    cpl                                           ; $74ea: $2f
    ld a, l                                       ; $74eb: $7d
    ld h, a                                       ; $74ec: $67
    pop de                                        ; $74ed: $d1
    ld h, a                                       ; $74ee: $67
    xor $4e                                       ; $74ef: $ee $4e
    ld e, l                                       ; $74f1: $5d
    ld h, h                                       ; $74f2: $64
    ld b, [hl]                                    ; $74f3: $46
    dec sp                                        ; $74f4: $3b
    or l                                          ; $74f5: $b5
    or h                                          ; $74f6: $b4
    ld [hl], $d5                                  ; $74f7: $36 $d5
    ld a, $a4                                     ; $74f9: $3e $a4
    ret c                                         ; $74fb: $d8

    jr nz, jr_047_74a6                            ; $74fc: $20 $a8

    add hl, de                                    ; $74fe: $19
    rra                                           ; $74ff: $1f
    ld d, a                                       ; $7500: $57
    db $ed                                        ; $7501: $ed
    ld [hl], $b5                                  ; $7502: $36 $b5

jr_047_7504:
    ld [hl], $07                                  ; $7504: $36 $07
    ld a, [hl]                                    ; $7506: $7e
    db $fd                                        ; $7507: $fd
    add h                                         ; $7508: $84
    ld [bc], a                                    ; $7509: $02
    call z, Call_047_5d8b                         ; $750a: $cc $8b $5d
    ld a, [de]                                    ; $750d: $1a
    sub c                                         ; $750e: $91
    sbc b                                         ; $750f: $98
    ld a, b                                       ; $7510: $78
    rst $08                                       ; $7511: $cf
    ld h, e                                       ; $7512: $63
    jr nz, @-$07                                  ; $7513: $20 $f7

    and c                                         ; $7515: $a1
    ld sp, hl                                     ; $7516: $f9
    ld c, [hl]                                    ; $7517: $4e
    ld h, e                                       ; $7518: $63
    and b                                         ; $7519: $a0
    ld a, b                                       ; $751a: $78
    ld e, $3b                                     ; $751b: $1e $3b
    sub h                                         ; $751d: $94
    dec bc                                        ; $751e: $0b
    cp d                                          ; $751f: $ba
    or b                                          ; $7520: $b0
    jp nz, Jump_047_4140                          ; $7521: $c2 $40 $41

    db $dd                                        ; $7524: $dd
    and $9a                                       ; $7525: $e6 $9a
    sub e                                         ; $7527: $93
    rst $38                                       ; $7528: $ff
    ld b, e                                       ; $7529: $43
    di                                            ; $752a: $f3
    dec e                                         ; $752b: $1d
    ld d, l                                       ; $752c: $55
    pop af                                        ; $752d: $f1
    ld e, h                                       ; $752e: $5c
    set 7, c                                      ; $752f: $cb $f9
    ld c, [hl]                                    ; $7531: $4e
    ld b, c                                       ; $7532: $41
    adc [hl]                                      ; $7533: $8e
    sub $cd                                       ; $7534: $d6 $cd
    ld hl, sp+$00                                 ; $7536: $f8 $00
    sub a                                         ; $7538: $97
    and [hl]                                      ; $7539: $a6
    push af                                       ; $753a: $f5
    cp a                                          ; $753b: $bf
    jr jr_047_74e8                                ; $753c: $18 $aa

    ld a, c                                       ; $753e: $79
    db $e4                                        ; $753f: $e4
    ld sp, hl                                     ; $7540: $f9
    xor $bd                                       ; $7541: $ee $bd
    ld d, e                                       ; $7543: $53
    ld sp, $1715                                  ; $7544: $31 $15 $17
    or e                                          ; $7547: $b3
    or b                                          ; $7548: $b0
    ld hl, $baaa                                  ; $7549: $21 $aa $ba
    ld [hl], d                                    ; $754c: $72
    nop                                           ; $754d: $00
    rst $10                                       ; $754e: $d7
    db $ed                                        ; $754f: $ed
    ld h, d                                       ; $7550: $62
    sbc $78                                       ; $7551: $de $78
    ld d, d                                       ; $7553: $52
    ld a, a                                       ; $7554: $7f
    adc b                                         ; $7555: $88
    db $e3                                        ; $7556: $e3
    cp l                                          ; $7557: $bd
    ld l, l                                       ; $7558: $6d
    cp h                                          ; $7559: $bc
    or b                                          ; $755a: $b0
    jp nz, Jump_000_0c02                          ; $755b: $c2 $02 $0c

    and $cd                                       ; $755e: $e6 $cd
    ld l, b                                       ; $7560: $68
    rra                                           ; $7561: $1f
    ld e, d                                       ; $7562: $5a
    ret nc                                        ; $7563: $d0

    cp c                                          ; $7564: $b9
    rst $38                                       ; $7565: $ff
    ld d, e                                       ; $7566: $53
    ld hl, sp-$41                                 ; $7567: $f8 $bf
    ret z                                         ; $7569: $c8

    rst $28                                       ; $756a: $ef
    adc h                                         ; $756b: $8c
    call z, Call_000_2bcd                         ; $756c: $cc $cd $2b
    ld a, e                                       ; $756f: $7b
    xor d                                         ; $7570: $aa
    cp c                                          ; $7571: $b9
    nop                                           ; $7572: $00
    add e                                         ; $7573: $83
    jr c, jr_047_7504                             ; $7574: $38 $8e

    rla                                           ; $7576: $17
    ld [hl], $ba                                  ; $7577: $36 $ba
    ld [hl], d                                    ; $7579: $72
    nop                                           ; $757a: $00
    rst $08                                       ; $757b: $cf
    push af                                       ; $757c: $f5
    inc de                                        ; $757d: $13
    add sp, -$66                                  ; $757e: $e8 $9a
    ld a, e                                       ; $7580: $7b
    sub [hl]                                      ; $7581: $96
    ld [$162f], a                                 ; $7582: $ea $2f $16
    ld d, [hl]                                    ; $7585: $56
    db $10                                        ; $7586: $10
    sbc d                                         ; $7587: $9a
    dec bc                                        ; $7588: $0b
    inc e                                         ; $7589: $1c
    xor l                                         ; $758a: $ad
    or c                                          ; $758b: $b1
    ld a, e                                       ; $758c: $7b
    and l                                         ; $758d: $a5
    inc b                                         ; $758e: $04
    rla                                           ; $758f: $17
    inc sp                                        ; $7590: $33
    ret nc                                        ; $7591: $d0

    inc sp                                        ; $7592: $33
    ld [hl], $af                                  ; $7593: $36 $af
    inc e                                         ; $7595: $1c
    rst $10                                       ; $7596: $d7
    db $ed                                        ; $7597: $ed
    ld h, d                                       ; $7598: $62
    ld hl, $4306                                  ; $7599: $21 $06 $43
    or l                                          ; $759c: $b5
    ld [de], a                                    ; $759d: $12
    ld l, b                                       ; $759e: $68
    xor d                                         ; $759f: $aa
    cp c                                          ; $75a0: $b9
    rst $38                                       ; $75a1: $ff
    sub e                                         ; $75a2: $93
    ld e, c                                       ; $75a3: $59
    ld l, $2a                                     ; $75a4: $2e $2a
    rst $08                                       ; $75a6: $cf
    ld [hl], a                                    ; $75a7: $77
    sub [hl]                                      ; $75a8: $96
    cp [hl]                                       ; $75a9: $be
    call nc, Call_047_6d49                        ; $75aa: $d4 $49 $6d
    ld c, d                                       ; $75ad: $4a
    dec [hl]                                      ; $75ae: $35
    cp a                                          ; $75af: $bf
    db $e3                                        ; $75b0: $e3
    dec d                                         ; $75b1: $15
    scf                                           ; $75b2: $37
    db $e3                                        ; $75b3: $e3
    inc bc                                        ; $75b4: $03
    sub a                                         ; $75b5: $97
    scf                                           ; $75b6: $37
    ld e, h                                       ; $75b7: $5c
    db $ec                                        ; $75b8: $ec
    or l                                          ; $75b9: $b5
    sbc a                                         ; $75ba: $9f
    rla                                           ; $75bb: $17
    dec sp                                        ; $75bc: $3b
    or l                                          ; $75bd: $b5
    cp h                                          ; $75be: $bc
    and b                                         ; $75bf: $a0
    dec sp                                        ; $75c0: $3b
    ld h, c                                       ; $75c1: $61
    rst $20                                       ; $75c2: $e7
    sub c                                         ; $75c3: $91
    add a                                         ; $75c4: $87
    ld [$01ca], a                                 ; $75c5: $ea $ca $01
    rst $08                                       ; $75c8: $cf
    push af                                       ; $75c9: $f5
    inc de                                        ; $75ca: $13
    add sp, -$3b                                  ; $75cb: $e8 $c5
    jp nz, Jump_047_50f2                          ; $75cd: $c2 $f2 $50

    dec l                                         ; $75d0: $2d
    or c                                          ; $75d1: $b1
    inc a                                         ; $75d2: $3c
    and c                                         ; $75d3: $a1
    cp d                                          ; $75d4: $ba
    dec d                                         ; $75d5: $15
    ld sp, hl                                     ; $75d6: $f9
    db $fd                                        ; $75d7: $fd
    ld l, b                                       ; $75d8: $68
    call c, Call_000_3629                         ; $75d9: $dc $29 $36
    ld l, d                                       ; $75dc: $6a
    adc d                                         ; $75dd: $8a
    ccf                                           ; $75de: $3f
    nop                                           ; $75df: $00
    ld l, a                                       ; $75e0: $6f
    ld h, e                                       ; $75e1: $63
    add a                                         ; $75e2: $87
    ld l, d                                       ; $75e3: $6a
    ld hl, $5706                                  ; $75e4: $21 $06 $57
    ld c, $6f                                     ; $75e7: $0e $6f
    db $fd                                        ; $75e9: $fd
    ld c, a                                       ; $75ea: $4f
    ld c, $f2                                     ; $75eb: $0e $f2
    push bc                                       ; $75ed: $c5
    inc d                                         ; $75ee: $14
    inc a                                         ; $75ef: $3c
    call nz, Call_000_3ef2                        ; $75f0: $c4 $f2 $3e
    inc d                                         ; $75f3: $14
    rst $00                                       ; $75f4: $c7
    pop af                                        ; $75f5: $f1
    ld a, h                                       ; $75f6: $7c
    rst $00                                       ; $75f7: $c7
    ld d, h                                       ; $75f8: $54
    call z, $3301                                 ; $75f9: $cc $01 $33
    sbc [hl]                                      ; $75fc: $9e
    ld e, e                                       ; $75fd: $5b
    ld h, d                                       ; $75fe: $62
    xor d                                         ; $75ff: $aa
    sub h                                         ; $7600: $94
    call $00f8                                    ; $7601: $cd $f8 $00
    rst $08                                       ; $7604: $cf
    reti                                          ; $7605: $d9


    ld [de], a                                    ; $7606: $12
    set 4, e                                      ; $7607: $cb $e3
    adc $2d                                       ; $7609: $ce $2d
    db $ed                                        ; $760b: $ed
    ld d, h                                       ; $760c: $54
    db $10                                        ; $760d: $10
    rst $00                                       ; $760e: $c7
    pop af                                        ; $760f: $f1
    ld a, h                                       ; $7610: $7c
    rst $00                                       ; $7611: $c7
    ld d, h                                       ; $7612: $54
    call z, Call_000_25b9                         ; $7613: $cc $b9 $25
    and [hl]                                      ; $7616: $a6
    ld c, d                                       ; $7617: $4a
    sbc $f9                                       ; $7618: $de $f9
    rst $00                                       ; $761a: $c7
    rlca                                          ; $761b: $07
    ld c, a                                       ; $761c: $4f
    ld l, d                                       ; $761d: $6a
    db $dd                                        ; $761e: $dd
    ret z                                         ; $761f: $c8

    ld c, h                                       ; $7620: $4c
    rrca                                          ; $7621: $0f
    ld d, e                                       ; $7622: $53
    or c                                          ; $7623: $b1
    ld b, c                                       ; $7624: $41
    ld d, b                                       ; $7625: $50
    ld d, e                                       ; $7626: $53
    db $fc                                        ; $7627: $fc
    ld bc, $8d57                                  ; $7628: $01 $57 $8d
    ld [hl], a                                    ; $762b: $77
    ld a, [$79e4]                                 ; $762c: $fa $e4 $79
    daa                                           ; $762f: $27
    db $e3                                        ; $7630: $e3
    ld a, c                                       ; $7631: $79
    db $e4                                        ; $7632: $e4
    dec b                                         ; $7633: $05
    ld h, [hl]                                    ; $7634: $66
    ld [hl], h                                    ; $7635: $74
    ld sp, $bc6f                                  ; $7636: $31 $6f $bc
    inc sp                                        ; $7639: $33
    halt                                          ; $763a: $76
    ld b, c                                       ; $763b: $41
    ld [hl], a                                    ; $763c: $77
    cp $f1                                        ; $763d: $fe $f1
    ld bc, $776f                                  ; $763f: $01 $6f $77
    pop de                                        ; $7642: $d1
    cpl                                           ; $7643: $2f
    scf                                           ; $7644: $37
    ld [hl], a                                    ; $7645: $77
    cp $73                                        ; $7646: $fe $73
    ld c, e                                       ; $7648: $4b
    ld c, h                                       ; $7649: $4c
    sub l                                         ; $764a: $95
    or d                                          ; $764b: $b2
    add hl, de                                    ; $764c: $19
    rra                                           ; $764d: $1f
    cpl                                           ; $764e: $2f
    ld h, d                                       ; $764f: $62
    sub b                                         ; $7650: $90
    sub e                                         ; $7651: $93
    cp d                                          ; $7652: $ba
    sbc b                                         ; $7653: $98
    rst $20                                       ; $7654: $e7
    rst $38                                       ; $7655: $ff
    ld [hl], e                                    ; $7656: $73
    ret nz                                        ; $7657: $c0

    adc h                                         ; $7658: $8c
    sub a                                         ; $7659: $97
    ld h, [hl]                                    ; $765a: $66
    or h                                          ; $765b: $b4
    rst $30                                       ; $765c: $f7
    ld c, [hl]                                    ; $765d: $4e
    push bc                                       ; $765e: $c5
    ld d, h                                       ; $765f: $54
    ld e, h                                       ; $7660: $5c
    call z, $d778                                 ; $7661: $cc $78 $d7
    db $e4                                        ; $7664: $e4
    ld c, [hl]                                    ; $7665: $4e
    xor b                                         ; $7666: $a8
    ld a, l                                       ; $7667: $7d
    rla                                           ; $7668: $17
    ld [hl], $9a                                  ; $7669: $36 $9a
    add e                                         ; $766b: $83
    ld a, h                                       ; $766c: $7c
    ld [hl], d                                    ; $766d: $72
    ret nc                                        ; $766e: $d0

    ld l, l                                       ; $766f: $6d
    add $07                                       ; $7670: $c6 $07
    sub a                                         ; $7672: $97
    cp a                                          ; $7673: $bf
    and a                                         ; $7674: $a7
    ld [$3b9d], a                                 ; $7675: $ea $9d $3b
    ret nc                                        ; $7678: $d0

    and $04                                       ; $7679: $e6 $04
    db $d3                                        ; $767b: $d3
    ld [hl], e                                    ; $767c: $73
    dec l                                         ; $767d: $2d
    rst $00                                       ; $767e: $c7
    rst $18                                       ; $767f: $df
    dec l                                         ; $7680: $2d
    ld c, c                                       ; $7681: $49
    daa                                           ; $7682: $27
    dec d                                         ; $7683: $15
    ld c, a                                       ; $7684: $4f
    and l                                         ; $7685: $a5
    ld b, c                                       ; $7686: $41

Jump_047_7687:
    ld d, b                                       ; $7687: $50
    di                                            ; $7688: $f3
    ld h, d                                       ; $7689: $62
    jp nc, Jump_047_6cc9                          ; $768a: $d2 $c9 $6c

    xor $2a                                       ; $768d: $ee $2a
    push de                                       ; $768f: $d5
    add hl, sp                                    ; $7690: $39
    ld d, a                                       ; $7691: $57
    xor e                                         ; $7692: $ab
    cp c                                          ; $7693: $b9
    dec h                                         ; $7694: $25
    ld c, a                                       ; $7695: $4f
    ld h, [hl]                                    ; $7696: $66
    add sp, $07                                   ; $7697: $e8 $07
    ld a, [hl]                                    ; $7699: $7e
    ld a, l                                       ; $769a: $7d
    rst $00                                       ; $769b: $c7
    ld d, h                                       ; $769c: $54
    call z, $84e6                                 ; $769d: $cc $e6 $84
    rst $28                                       ; $76a0: $ef
    sbc h                                         ; $76a1: $9c
    sbc d                                         ; $76a2: $9a
    pop af                                        ; $76a3: $f1
    ld bc, $9b6f                                  ; $76a4: $01 $6f $9b
    ld a, [de]                                    ; $76a7: $1a
    jp z, Jump_047_6645                           ; $76a8: $ca $45 $66

    inc [hl]                                      ; $76ab: $34
    db $d3                                        ; $76ac: $d3
    and a                                         ; $76ad: $a7
    sub [hl]                                      ; $76ae: $96
    add $a1                                       ; $76af: $c6 $a1
    add e                                         ; $76b1: $83
    ld a, [hl+]                                   ; $76b2: $2a
    sbc $55                                       ; $76b3: $de $55
    set 1, c                                      ; $76b5: $cb $c9
    sbc a                                         ; $76b7: $9f
    ld b, e                                       ; $76b8: $43
    add hl, sp                                    ; $76b9: $39
    ld l, [hl]                                    ; $76ba: $6e
    ld b, [hl]                                    ; $76bb: $46
    sbc b                                         ; $76bc: $98
    adc d                                         ; $76bd: $8a
    dec sp                                        ; $76be: $3b
    adc a                                         ; $76bf: $8f
    sbc l                                         ; $76c0: $9d
    inc h                                         ; $76c1: $24
    xor h                                         ; $76c2: $ac
    ld d, b                                       ; $76c3: $50
    db $dd                                        ; $76c4: $dd
    db $f4                                        ; $76c5: $f4
    db $dd                                        ; $76c6: $dd
    ld d, l                                       ; $76c7: $55
    xor d                                         ; $76c8: $aa
    ld [hl], e                                    ; $76c9: $73
    xor [hl]                                      ; $76ca: $ae
    sub [hl]                                      ; $76cb: $96
    cp d                                          ; $76cc: $ba
    call nc, $839c                                ; $76cd: $d4 $9c $83
    db $ec                                        ; $76d0: $ec
    ld a, a                                       ; $76d1: $7f
    ld d, e                                       ; $76d2: $53
    db $fc                                        ; $76d3: $fc
    ld bc, $e4d7                                  ; $76d4: $01 $d7 $e4
    ld e, h                                       ; $76d7: $5c
    ld c, h                                       ; $76d8: $4c
    cp a                                          ; $76d9: $bf
    or b                                          ; $76da: $b0
    inc a                                         ; $76db: $3c
    inc de                                        ; $76dc: $13
    add hl, hl                                    ; $76dd: $29
    ld a, b                                       ; $76de: $78
    add sp, -$64                                  ; $76df: $e8 $9c
    xor d                                         ; $76e1: $aa
    ld sp, $fb90                                  ; $76e2: $31 $90 $fb
    pop de                                        ; $76e5: $d1
    xor [hl]                                      ; $76e6: $ae
    ld d, d                                       ; $76e7: $52
    sbc l                                         ; $76e8: $9d
    ld [hl], e                                    ; $76e9: $73
    or l                                          ; $76ea: $b5
    call nc, $e6a5                                ; $76eb: $d4 $a5 $e6
    cp b                                          ; $76ee: $b8
    adc e                                         ; $76ef: $8b
    ld a, [hl]                                    ; $76f0: $7e
    cp c                                          ; $76f1: $b9
    add hl, sp                                    ; $76f2: $39
    ld c, a                                       ; $76f3: $4f
    ld b, $9a                                     ; $76f4: $06 $9a
    ld [hl], c                                    ; $76f6: $71
    inc e                                         ; $76f7: $1c
    cpl                                           ; $76f8: $2f
    db $fc                                        ; $76f9: $fc
    dec a                                         ; $76fa: $3d
    ld d, l                                       ; $76fb: $55
    rst $08                                       ; $76fc: $cf
    ld [hl], a                                    ; $76fd: $77
    ld a, [bc]                                    ; $76fe: $0a
    ld e, $fe                                     ; $76ff: $1e $fe
    ld h, [hl]                                    ; $7701: $66
    ld [hl], e                                    ; $7702: $73
    ld a, [hl+]                                   ; $7703: $2a
    ld a, a                                       ; $7704: $7f
    and c                                         ; $7705: $a1
    ld [de], a                                    ; $7706: $12
    add d                                         ; $7707: $82
    sbc l                                         ; $7708: $9d
    ld sp, $f148                                  ; $7709: $31 $48 $f1
    rlca                                          ; $770c: $07
    rst $10                                       ; $770d: $d7
    db $e4                                        ; $770e: $e4
    jp nz, $a1ff                                  ; $770f: $c2 $ff $a1

    ld a, c                                       ; $7712: $79
    db $e3                                        ; $7713: $e3
    and c                                         ; $7714: $a1
    inc e                                         ; $7715: $1c
    ld l, b                                       ; $7716: $68
    ld [hl], e                                    ; $7717: $73
    ld e, $e5                                     ; $7718: $1e $e5
    inc c                                         ; $771a: $0c
    ld e, $72                                     ; $771b: $1e $72
    jp hl                                         ; $771d: $e9


    ld d, h                                       ; $771e: $54
    sub d                                         ; $771f: $92
    dec bc                                        ; $7720: $0b
    dec hl                                        ; $7721: $2b
    inc c                                         ; $7722: $0c
    ld [hl], e                                    ; $7723: $73
    cp [hl]                                       ; $7724: $be
    rst $20                                       ; $7725: $e7
    xor $2a                                       ; $7726: $ee $2a
    push de                                       ; $7728: $d5
    add hl, sp                                    ; $7729: $39
    ld d, a                                       ; $772a: $57
    ld c, e                                       ; $772b: $4b
    ld e, l                                       ; $772c: $5d
    ld l, d                                       ; $772d: $6a
    add $07                                       ; $772e: $c6 $07
    rst $28                                       ; $7730: $ef
    ld [hl], l                                    ; $7731: $75
    and c                                         ; $7732: $a1
    ld a, c                                       ; $7733: $79
    rst $18                                       ; $7734: $df
    ld e, h                                       ; $7735: $5c
    call nc, $04d2                                ; $7736: $d4 $d2 $04
    ld c, e                                       ; $7739: $4b
    reti                                          ; $773a: $d9


    call c, $e687                                 ; $773b: $dc $87 $e6
    sub c                                         ; $773e: $91
    rlca                                          ; $773f: $07
    sub l                                         ; $7740: $95
    add sp, -$19                                  ; $7741: $e8 $e7
    and d                                         ; $7743: $a2
    ld e, a                                       ; $7744: $5f
    ld l, [hl]                                    ; $7745: $6e
    xor $5c                                       ; $7746: $ee $5c
    and $66                                       ; $7748: $e6 $66
    ld a, h                                       ; $774a: $7c
    nop                                           ; $774b: $00
    rst $28                                       ; $774c: $ef
    sbc c                                         ; $774d: $99
    ld e, $ca                                     ; $774e: $1e $ca
    ld [hl], c                                    ; $7750: $71
    ret                                           ; $7751: $c9


    ld bc, $93e7                                  ; $7752: $01 $e7 $93
    add hl, de                                    ; $7755: $19
    ld [hl], $97                                  ; $7756: $36 $97
    ld h, [hl]                                    ; $7758: $66
    inc [hl]                                      ; $7759: $34
    adc a                                         ; $775a: $8f
    db $dd                                        ; $775b: $dd
    ld d, l                                       ; $775c: $55
    xor d                                         ; $775d: $aa

jr_047_775e:
    ld [hl], e                                    ; $775e: $73
    xor [hl]                                      ; $775f: $ae
    ld d, [hl]                                    ; $7760: $56
    ld d, a                                       ; $7761: $57
    ld c, $d7                                     ; $7762: $0e $d7
    db $e4                                        ; $7764: $e4
    ld c, [hl]                                    ; $7765: $4e
    xor b                                         ; $7766: $a8
    ld h, a                                       ; $7767: $67
    ld e, d                                       ; $7768: $5a
    xor l                                         ; $7769: $ad
    dec h                                         ; $776a: $25
    push bc                                       ; $776b: $c5
    db $dd                                        ; $776c: $dd
    ld a, e                                       ; $776d: $7b
    and a                                         ; $776e: $a7
    ld h, d                                       ; $776f: $62
    ld a, [hl+]                                   ; $7770: $2a
    ld l, $e6                                     ; $7771: $2e $e6
    adc $d8                                       ; $7773: $ce $d8
    adc h                                         ; $7775: $8c
    rrca                                          ; $7776: $0f
    rst $10                                       ; $7777: $d7
    db $e4                                        ; $7778: $e4
    jp nz, $730a                                  ; $7779: $c2 $0a $73

    ld c, e                                       ; $777c: $4b
    inc bc                                        ; $777d: $03
    and l                                         ; $777e: $a5
    and d                                         ; $777f: $a2
    ld a, [c]                                     ; $7780: $f2
    ei                                            ; $7781: $fb
    pop de                                        ; $7782: $d1
    jp nc, $f68c                                  ; $7783: $d2 $8c $f6

    sbc $a9                                       ; $7786: $de $a9
    sbc b                                         ; $7788: $98
    adc d                                         ; $7789: $8a
    adc e                                         ; $778a: $8b
    add hl, sp                                    ; $778b: $39
    xor $a4                                       ; $778c: $ee $a4
    sub e                                         ; $778e: $93
    reti                                          ; $778f: $d9


    inc e                                         ; $7790: $1c
    jr nc, jr_047_775e                            ; $7791: $30 $cb

    ld hl, sp+$00                                 ; $7793: $f8 $00
    rst $10                                       ; $7795: $d7
    db $e4                                        ; $7796: $e4
    jp nz, $a1ff                                  ; $7797: $c2 $ff $a1

    ld a, c                                       ; $779a: $79
    db $e3                                        ; $779b: $e3
    and c                                         ; $779c: $a1
    ld e, h                                       ; $779d: $5c
    ld h, d                                       ; $779e: $62
    ld a, c                                       ; $779f: $79
    daa                                           ; $77a0: $27
    inc bc                                        ; $77a1: $03
    call $5633                                    ; $77a2: $cd $33 $56
    xor $f4                                       ; $77a5: $ee $f4
    ret                                           ; $77a7: $c9


    ld [hl], e                                    ; $77a8: $73
    ld a, h                                       ; $77a9: $7c
    nop                                           ; $77aa: $00
    rst $10                                       ; $77ab: $d7
    db $e4                                        ; $77ac: $e4
    adc $df                                       ; $77ad: $ce $df
    reti                                          ; $77af: $d9


    add hl, bc                                    ; $77b0: $09
    or l                                          ; $77b1: $b5
    ld l, [hl]                                    ; $77b2: $6e
    adc $1b                                       ; $77b3: $ce $1b
    cpl                                           ; $77b5: $2f
    jp nz, $1720                                  ; $77b6: $c2 $20 $17

    db $fd                                        ; $77b9: $fd
    ld a, [$a2d2]                                 ; $77ba: $fa $d2 $a2

Call_047_77bd:
    xor $5c                                       ; $77bd: $ee $5c
    dec l                                         ; $77bf: $2d
    ld e, d                                       ; $77c0: $5a
    add h                                         ; $77c1: $84
    ld b, c                                       ; $77c2: $41
    ld c, [hl]                                    ; $77c3: $4e
    ld [$7352], a                                 ; $77c4: $ea $52 $73
    ld a, [de]                                    ; $77c7: $1a
    bit 6, e                                      ; $77c8: $cb $73
    sub b                                         ; $77ca: $90
    rst $08                                       ; $77cb: $cf
    cp a                                          ; $77cc: $bf
    or d                                          ; $77cd: $b2
    add hl, de                                    ; $77ce: $19
    rra                                           ; $77cf: $1f
    rst $08                                       ; $77d0: $cf
    inc de                                        ; $77d1: $13
    ld b, $a0                                     ; $77d2: $06 $a0
    cp c                                          ; $77d4: $b9
    ld d, e                                       ; $77d5: $53
    rst $10                                       ; $77d6: $d7
    and $44                                       ; $77d7: $e6 $44
    xor b                                         ; $77d9: $a8
    and e                                         ; $77da: $a3
    ld [hl], c                                    ; $77db: $71
    ld [hl], a                                    ; $77dc: $77
    add $e6                                       ; $77dd: $c6 $e6
    sub l                                         ; $77df: $95
    inc bc                                        ; $77e0: $03
    rst $10                                       ; $77e1: $d7
    db $e4                                        ; $77e2: $e4
    jp nz, $a1ff                                  ; $77e3: $c2 $ff $a1

    ld a, c                                       ; $77e6: $79
    db $e3                                        ; $77e7: $e3
    and c                                         ; $77e8: $a1
    sbc h                                         ; $77e9: $9c
    add b                                         ; $77ea: $80
    pop bc                                        ; $77eb: $c1
    ld l, $1d                                     ; $77ec: $2e $1d
    sub c                                         ; $77ee: $91
    xor b                                         ; $77ef: $a8
    ld a, [de]                                    ; $77f0: $1a
    ld [hl], d                                    ; $77f1: $72
    ld b, h                                       ; $77f2: $44
    adc e                                         ; $77f3: $8b
    inc c                                         ; $77f4: $0c
    call nz, $6abb                                ; $77f5: $c4 $bb $6a
    ld b, [hl]                                    ; $77f8: $46
    dec sp                                        ; $77f9: $3b
    dec de                                        ; $77fa: $1b
    cpl                                           ; $77fb: $2f
    jp nz, $e720                                  ; $77fc: $c2 $20 $e7

    sbc d                                         ; $77ff: $9a
    cpl                                           ; $7800: $2f
    db $ed                                        ; $7801: $ed
    ld a, a                                       ; $7802: $7f
    add hl, de                                    ; $7803: $19
    rra                                           ; $7804: $1f
    xor a                                         ; $7805: $af
    ld a, a                                       ; $7806: $7f
    ld [hl+], a                                   ; $7807: $22
    ld sp, $8b17                                  ; $7808: $31 $17 $8b
    call z, $2868                                 ; $780b: $cc $68 $28
    daa                                           ; $780e: $27
    inc [hl]                                      ; $780f: $34
    daa                                           ; $7810: $27
    db $f4                                        ; $7811: $f4
    adc h                                         ; $7812: $8c
    ld h, b                                       ; $7813: $60
    ld d, c                                       ; $7814: $51
    ld a, c                                       ; $7815: $79
    ld de, $3906                                  ; $7816: $11 $06 $39
    dec b                                         ; $7819: $05
    ld d, l                                       ; $781a: $55
    db $eb                                        ; $781b: $eb
    ld [hl], d                                    ; $781c: $72
    ret nc                                        ; $781d: $d0

    ld hl, sp+$00                                 ; $781e: $f8 $00
    cpl                                           ; $7820: $2f
    add hl, sp                                    ; $7821: $39
    xor e                                         ; $7822: $ab
    db $db                                        ; $7823: $db
    ld e, h                                       ; $7824: $5c
    ld h, d                                       ; $7825: $62
    ld sp, hl                                     ; $7826: $f9
    ld h, d                                       ; $7827: $62
    jr z, jr_047_7831                             ; $7828: $28 $07

    ld l, h                                       ; $782a: $6c
    xor $ff                                       ; $782b: $ee $ff
    inc [hl]                                      ; $782d: $34
    rst $18                                       ; $782e: $df
    add l                                         ; $782f: $85
    rst $38                                       ; $7830: $ff

jr_047_7831:
    inc bc                                        ; $7831: $03
    push bc                                       ; $7832: $c5
    sbc l                                         ; $7833: $9d
    add d                                         ; $7834: $82
    ld a, a                                       ; $7835: $7f
    ld l, d                                       ; $7836: $6a
    ld a, h                                       ; $7837: $7c
    nop                                           ; $7838: $00
    rst $10                                       ; $7839: $d7
    db $e4                                        ; $783a: $e4
    jp nz, $cb0a                                  ; $783b: $c2 $0a $cb

    rrca                                          ; $783e: $0f
    sub [hl]                                      ; $783f: $96
    rst $38                                       ; $7840: $ff
    inc hl                                        ; $7841: $23
    rrca                                          ; $7842: $0f
    ld [hl], e                                    ; $7843: $73
    ld l, l                                       ; $7844: $6d
    adc [hl]                                      ; $7845: $8e
    xor c                                         ; $7846: $a9
    sbc b                                         ; $7847: $98
    inc bc                                        ; $7848: $03
    dec a                                         ; $7849: $3d
    sub a                                         ; $784a: $97
    sbc e                                         ; $784b: $9b
    ld [c], a                                     ; $784c: $e2
    rrca                                          ; $784d: $0f
    cpl                                           ; $784e: $2f
    sbc $96                                       ; $784f: $de $96
    inc hl                                        ; $7851: $23
    or e                                          ; $7852: $b3
    ld [$ba0a], sp                                ; $7853: $08 $0a $ba
    inc sp                                        ; $7856: $33
    ld a, [c]                                     ; $7857: $f2
    and h                                         ; $7858: $a4
    ld l, [hl]                                    ; $7859: $6e
    inc d                                         ; $785a: $14
    rra                                           ; $785b: $1f
    ld l, a                                       ; $785c: $6f
    sbc e                                         ; $785d: $9b
    pop de                                        ; $785e: $d1
    ld d, b                                       ; $785f: $50
    call Call_047_5477                            ; $7860: $cd $77 $54
    push bc                                       ; $7863: $c5
    and $90                                       ; $7864: $e6 $90
    ld sp, $64f6                                  ; $7866: $31 $f6 $64
    ldh [$e7], a                                  ; $7869: $e0 $e7
    sub l                                         ; $786b: $95
    inc bc                                        ; $786c: $03
    ld l, a                                       ; $786d: $6f
    sbc e                                         ; $786e: $9b

jr_047_786f:
    pop de                                        ; $786f: $d1
    adc $c8                                       ; $7870: $ce $c8
    di                                            ; $7872: $f3
    ld e, l                                       ; $7873: $5d
    db $f4                                        ; $7874: $f4
    ld sp, hl                                     ; $7875: $f9
    db $d3                                        ; $7876: $d3
    sub l                                         ; $7877: $95
    inc bc                                        ; $7878: $03
    sub a                                         ; $7879: $97
    push hl                                       ; $787a: $e5
    and c                                         ; $787b: $a1
    ld e, d                                       ; $787c: $5a
    sbc e                                         ; $787d: $9b
    ld l, e                                       ; $787e: $6b
    ld l, c                                       ; $787f: $69
    adc $b8                                       ; $7880: $ce $b8
    ei                                            ; $7882: $fb
    ret                                           ; $7883: $c9


    pop de                                        ; $7884: $d1
    cpl                                           ; $7885: $2f
    scf                                           ; $7886: $37
    cpl                                           ; $7887: $2f
    ld d, $35                                     ; $7888: $16 $35
    ld e, e                                       ; $788a: $5b
    jp c, $9f2b                                   ; $788b: $da $2b $9f

    cp c                                          ; $788e: $b9
    inc d                                         ; $788f: $14
    rra                                           ; $7890: $1f
    rst $10                                       ; $7891: $d7
    db $e4                                        ; $7892: $e4
    ld c, [hl]                                    ; $7893: $4e
    xor b                                         ; $7894: $a8
    rst $30                                       ; $7895: $f7
    and c                                         ; $7896: $a1
    cp l                                          ; $7897: $bd
    ld [hl], a                                    ; $7898: $77
    ld a, [hl+]                                   ; $7899: $2a
    and [hl]                                      ; $789a: $a6
    ld [c], a                                     ; $789b: $e2
    ld h, d                                       ; $789c: $62
    xor $fc                                       ; $789d: $ee $fc
    and a                                         ; $789f: $a7
    or d                                          ; $78a0: $b2
    ld a, d                                       ; $78a1: $7a
    pop de                                        ; $78a2: $d1
    rlca                                          ; $78a3: $07
    push de                                       ; $78a4: $d5

Call_047_78a5:
    jr jr_047_786f                                ; $78a5: $18 $c8

    ld l, c                                       ; $78a7: $69
    db $f4                                        ; $78a8: $f4
    dec sp                                        ; $78a9: $3b
    ld a, l                                       ; $78aa: $7d
    ld a, [c]                                     ; $78ab: $f2
    call $96b9                                    ; $78ac: $cd $b9 $96
    di                                            ; $78af: $f3
    db $dd                                        ; $78b0: $dd
    ld e, e                                       ; $78b1: $5b
    and l                                         ; $78b2: $a5
    or e                                          ; $78b3: $b3
    ld b, l                                       ; $78b4: $45
    push de                                       ; $78b5: $d5
    ld h, [hl]                                    ; $78b6: $66
    and h                                         ; $78b7: $a4
    ldh [$da], a                                  ; $78b8: $e0 $da
    ld de, $fee6                                  ; $78ba: $11 $e6 $fe
    ld c, a                                       ; $78bd: $4f
    ld a, e                                       ; $78be: $7b
    sbc $8c                                       ; $78bf: $de $8c
    cp b                                          ; $78c1: $b8
    add hl, sp                                    ; $78c2: $39
    rst $10                                       ; $78c3: $d7
    ld [hl], d                                    ; $78c4: $72
    ld c, a                                       ; $78c5: $4f
    sub l                                         ; $78c6: $95
    ld a, [hl]                                    ; $78c7: $7e
    inc hl                                        ; $78c8: $23
    rst $18                                       ; $78c9: $df
    ld e, l                                       ; $78ca: $5d
    ld d, [hl]                                    ; $78cb: $56
    xor d                                         ; $78cc: $aa
    and $9a                                       ; $78cd: $e6 $9a
    ld a, e                                       ; $78cf: $7b
    db $e3                                        ; $78d0: $e3
    cp e                                          ; $78d1: $bb
    ld c, l                                       ; $78d2: $4d
    inc sp                                        ; $78d3: $33
    ld d, d                                       ; $78d4: $52
    ld [c], a                                     ; $78d5: $e2
    rrca                                          ; $78d6: $0f
    ld l, a                                       ; $78d7: $6f
    xor b                                         ; $78d8: $a8
    ldh [$57], a                                  ; $78d9: $e0 $57
    or $62                                        ; $78db: $f6 $62
    inc e                                         ; $78dd: $1c
    xor b                                         ; $78de: $a8
    ld e, a                                       ; $78df: $5f
    reti                                          ; $78e0: $d9


    adc e                                         ; $78e1: $8b
    or c                                          ; $78e2: $b1
    ld a, [bc]                                    ; $78e3: $0a
    ld a, [hl]                                    ; $78e4: $7e
    ld h, l                                       ; $78e5: $65
    cpl                                           ; $78e6: $2f
    add $2a                                       ; $78e7: $c6 $2a
    ld hl, sp-$6b                                 ; $78e9: $f8 $95
    cp l                                          ; $78eb: $bd
    ret c                                         ; $78ec: $d8

    jp hl                                         ; $78ed: $e9


    rst $30                                       ; $78ee: $f7
    ld h, d                                       ; $78ef: $62
    and a                                         ; $78f0: $a7
    ld e, a                                       ; $78f1: $5f
    pop af                                        ; $78f2: $f1
    rlca                                          ; $78f3: $07
    rst $10                                       ; $78f4: $d7
    db $e4                                        ; $78f5: $e4
    ld c, [hl]                                    ; $78f6: $4e
    xor b                                         ; $78f7: $a8
    rla                                           ; $78f8: $17
    ld [hl], l                                    ; $78f9: $75
    ld l, [hl]                                    ; $78fa: $6e
    ret                                           ; $78fb: $c9


    ld h, e                                       ; $78fc: $63
    and c                                         ; $78fd: $a1
    and $30                                       ; $78fe: $e6 $30
    ld h, a                                       ; $7900: $67
    ld b, [hl]                                    ; $7901: $46
    cp [hl]                                       ; $7902: $be
    sub c                                         ; $7903: $91
    ld bc, $bc6c                                  ; $7904: $01 $6c $bc
    ld l, e                                       ; $7907: $6b
    ld [hl], d                                    ; $7908: $72
    ld b, d                                       ; $7909: $42
    ld [hl], e                                    ; $790a: $73
    cp $eb                                        ; $790b: $fe $eb
    ld a, l                                       ; $790d: $7d
    ld l, b                                       ; $790e: $68
    add b                                         ; $790f: $80
    call z, $c66d                                 ; $7910: $cc $6d $c6
    rlca                                          ; $7913: $07
    ld l, a                                       ; $7914: $6f
    sbc e                                         ; $7915: $9b
    pop de                                        ; $7916: $d1
    inc h                                         ; $7917: $24
    ld b, $72                                     ; $7918: $06 $72
    ld bc, $4b06                                  ; $791a: $01 $06 $4b
    inc sp                                        ; $791d: $33
    cp d                                          ; $791e: $ba
    ld [hl], d                                    ; $791f: $72
    nop                                           ; $7920: $00
    ld d, a                                       ; $7921: $57
    dec sp                                        ; $7922: $3b
    ld hl, sp+$4f                                 ; $7923: $f8 $4f
    rst $28                                       ; $7925: $ef
    ret nz                                        ; $7926: $c0

    cp c                                          ; $7927: $b9
    ld c, $8d                                     ; $7928: $0e $8d
    inc e                                         ; $792a: $1c
    sub h                                         ; $792b: $94
    inc a                                         ; $792c: $3c
    sub a                                         ; $792d: $97
    jp c, $c7c8                                   ; $792e: $da $c8 $c7

    rlca                                          ; $7931: $07
    sub a                                         ; $7932: $97
    push hl                                       ; $7933: $e5
    and c                                         ; $7934: $a1
    ld a, [de]                                    ; $7935: $1a
    and [hl]                                      ; $7936: $a6
    cpl                                           ; $7937: $2f
    ld a, c                                       ; $7938: $79
    inc sp                                        ; $7939: $33
    cp a                                          ; $793a: $bf
    db $fc                                        ; $793b: $fc
    ret nz                                        ; $793c: $c0

    db $f4                                        ; $793d: $f4
    ld c, [hl]                                    ; $793e: $4e
    sbc b                                         ; $793f: $98
    cp [hl]                                       ; $7940: $be
    add h                                         ; $7941: $84
    ld h, b                                       ; $7942: $60
    xor [hl]                                      ; $7943: $ae
    and l                                         ; $7944: $a5
    scf                                           ; $7945: $37
    inc bc                                        ; $7946: $03
    pop af                                        ; $7947: $f1
    ld bc, $7b57                                  ; $7948: $01 $57 $7b
    xor $c8                                       ; $794b: $ee $c8
    and d                                         ; $794d: $a2
    and $a2                                       ; $794e: $e6 $a2
    rrca                                          ; $7950: $0f
    sbc d                                         ; $7951: $9a
    dec sp                                        ; $7952: $3b
    ld d, l                                       ; $7953: $55
    xor a                                         ; $7954: $af
    ld c, l                                       ; $7955: $4d
    dec [hl]                                      ; $7956: $35
    dec b                                         ; $7957: $05
    rrca                                          ; $7958: $0f
    rst $38                                       ; $7959: $ff
    ld c, a                                       ; $795a: $4f
    ret nc                                        ; $795b: $d0

    ret z                                         ; $795c: $c8

    ld c, h                                       ; $795d: $4c
    ld a, [c]                                     ; $795e: $f2
    ld c, [hl]                                    ; $795f: $4e
    sbc a                                         ; $7960: $9f
    ld a, h                                       ; $7961: $7c
    inc sp                                        ; $7962: $33
    ld a, $00                                     ; $7963: $3e $00
    rst $10                                       ; $7965: $d7
    db $e4                                        ; $7966: $e4
    ld b, d                                       ; $7967: $42
    di                                            ; $7968: $f3
    ld l, e                                       ; $7969: $6b
    ld [hl], e                                    ; $796a: $73
    db $10                                        ; $796b: $10
    and c                                         ; $796c: $a1
    ld a, e                                       ; $796d: $7b
    jp $c0c9                                      ; $796e: $c3 $c9 $c0


    rst $08                                       ; $7971: $cf
    cp c                                          ; $7972: $b9

jr_047_7973:
    and l                                         ; $7973: $a5
    sub e                                         ; $7974: $93
    pop bc                                        ; $7975: $c1
    ld b, e                                       ; $7976: $43
    adc [hl]                                      ; $7977: $8e
    rrca                                          ; $7978: $0f
    rst $10                                       ; $7979: $d7
    db $e4                                        ; $797a: $e4
    add h                                         ; $797b: $84
    and $ce                                       ; $797c: $e6 $ce
    ld a, a                                       ; $797e: $7f
    rra                                           ; $797f: $1f
    ld [bc], a                                    ; $7980: $02
    dec a                                         ; $7981: $3d
    db $fd                                        ; $7982: $fd
    db $f4                                        ; $7983: $f4
    call $a18b                                    ; $7984: $cd $8b $a1
    sbc h                                         ; $7987: $9c
    or h                                          ; $7988: $b4
    ld e, h                                       ; $7989: $5c
    ld h, d                                       ; $798a: $62
    ld a, c                                       ; $798b: $79
    adc d                                         ; $798c: $8a
    ld d, c                                       ; $798d: $51
    sbc a                                         ; $798e: $9f
    sub c                                         ; $798f: $91
    cp c                                          ; $7990: $b9
    add hl, de                                    ; $7991: $19
    rra                                           ; $7992: $1f
    rst $10                                       ; $7993: $d7
    db $e4                                        ; $7994: $e4
    add h                                         ; $7995: $84
    and $fc                                       ; $7996: $e6 $fc
    rst $10                                       ; $7998: $d7
    ei                                            ; $7999: $fb
    ret nc                                        ; $799a: $d0

    add h                                         ; $799b: $84
    ld a, [hl+]                                   ; $799c: $2a
    ld d, [hl]                                    ; $799d: $56
    push de                                       ; $799e: $d5
    cp d                                          ; $799f: $ba
    and h                                         ; $79a0: $a4
    ld [c], a                                     ; $79a1: $e2
    inc bc                                        ; $79a2: $03
    rst $10                                       ; $79a3: $d7
    db $e4                                        ; $79a4: $e4
    and b                                         ; $79a5: $a0
    ld e, a                                       ; $79a6: $5f
    ld d, [hl]                                    ; $79a7: $56
    adc e                                         ; $79a8: $8b
    jr nc, jr_047_7973                            ; $79a9: $30 $c8

    ret                                           ; $79ab: $c9


    ld h, [hl]                                    ; $79ac: $66
    and d                                         ; $79ad: $a2
    sbc d                                         ; $79ae: $9a
    ld l, e                                       ; $79af: $6b
    add hl, sp                                    ; $79b0: $39
    rst $18                                       ; $79b1: $df
    pop af                                        ; $79b2: $f1
    ld [hl], a                                    ; $79b3: $77
    ld c, e                                       ; $79b4: $4b
    jp nc, $c549                                  ; $79b5: $d2 $49 $c5

    ei                                            ; $79b8: $fb
    ret nc                                        ; $79b9: $d0

    adc $df                                       ; $79ba: $ce $df
    dec de                                        ; $79bc: $1b
    rrca                                          ; $79bd: $0f
    push hl                                       ; $79be: $e5
    jp c, $fb9c                                   ; $79bf: $da $9c $fb

    ccf                                           ; $79c2: $3f
    add hl, hl                                    ; $79c3: $29
    adc b                                         ; $79c4: $88
    ld a, [hl]                                    ; $79c5: $7e
    add d                                         ; $79c6: $82
    add l                                         ; $79c7: $85
    dec d                                         ; $79c8: $15
    ld h, [hl]                                    ; $79c9: $66
    ld e, d                                       ; $79ca: $5a
    ld c, l                                       ; $79cb: $4d
    pop bc                                        ; $79cc: $c1
    jp $f5ff                                      ; $79cd: $c3 $ff $f5


    add h                                         ; $79d0: $84
    ld [bc], a                                    ; $79d1: $02
    ld c, h                                       ; $79d2: $4c
    adc [hl]                                      ; $79d3: $8e
    rrca                                          ; $79d4: $0f
    ld d, a                                       ; $79d5: $57
    ld a, e                                       ; $79d6: $7b
    xor $04                                       ; $79d7: $ee $04
    ld c, e                                       ; $79d9: $4b
    reti                                          ; $79da: $d9


    call c, $8319                                 ; $79db: $dc $19 $83
    sbc h                                         ; $79de: $9c
    ld d, b                                       ; $79df: $50
    push bc                                       ; $79e0: $c5
    add e                                         ; $79e1: $83
    rst $38                                       ; $79e2: $ff
    ld c, b                                       ; $79e3: $48
    db $f4                                        ; $79e4: $f4
    adc c                                         ; $79e5: $89
    ld c, l                                       ; $79e6: $4d
    xor b                                         ; $79e7: $a8
    ld d, $7f                                     ; $79e8: $16 $7f
    nop                                           ; $79ea: $00
    sub a                                         ; $79eb: $97
    scf                                           ; $79ec: $37
    ld e, h                                       ; $79ed: $5c
    inc l                                         ; $79ee: $2c
    or c                                          ; $79ef: $b1
    cp h                                          ; $79f0: $bc
    xor b                                         ; $79f1: $a8
    push de                                       ; $79f2: $d5
    dec a                                         ; $79f3: $3d
    scf                                           ; $79f4: $37
    rst $30                                       ; $79f5: $f7
    db $dd                                        ; $79f6: $dd
    jp nc, Jump_000_0c22                          ; $79f7: $d2 $22 $0c

    ld [hl], d                                    ; $79fa: $72
    ld a, [bc]                                    ; $79fb: $0a
    ld e, $7e                                     ; $79fc: $1e $7e
    rst $00                                       ; $79fe: $c7
    sub a                                         ; $79ff: $97
    call nz, $2f1f                                ; $7a00: $c4 $1f $2f
    or l                                          ; $7a03: $b5
    pop de                                        ; $7a04: $d1
    jp c, $c49c                                   ; $7a05: $da $9c $c4

    ld b, b                                       ; $7a08: $40
    ld b, $1d                                     ; $7a09: $06 $1d
    and $c2                                       ; $7a0b: $e6 $c2
    ld a, [c]                                     ; $7a0d: $f2
    ld d, h                                       ; $7a0e: $54
    cp $42                                        ; $7a0f: $fe $42
    jp nc, $ca88                                  ; $7a11: $d2 $88 $ca

    ld b, c                                       ; $7a14: $41
    ld h, a                                       ; $7a15: $67
    ld e, d                                       ; $7a16: $5a

jr_047_7a17:
    dec l                                         ; $7a17: $2d
    call nz, $da60                                ; $7a18: $c4 $60 $da
    ld [de], a                                    ; $7a1b: $12
    jr z, jr_047_7a17                             ; $7a1c: $28 $f9

    inc hl                                        ; $7a1e: $23
    adc [hl]                                      ; $7a1f: $8e
    or a                                          ; $7a20: $b7
    ld h, a                                       ; $7a21: $67
    xor c                                         ; $7a22: $a9
    ld a, [hl]                                    ; $7a23: $7e
    call $9ca1                                    ; $7a24: $cd $a1 $9c
    ld e, e                                       ; $7a27: $5b
    sub d                                         ; $7a28: $92
    rra                                           ; $7a29: $1f
    ld l, d                                       ; $7a2a: $6a
    adc [hl]                                      ; $7a2b: $8e
    jp hl                                         ; $7a2c: $e9


    dec sp                                        ; $7a2d: $3b
    and a                                         ; $7a2e: $a7
    and [hl]                                      ; $7a2f: $a6
    jp c, Jump_047_72ff                           ; $7a30: $da $ff $72

    ld a, [hl+]                                   ; $7a33: $2a
    ld a, a                                       ; $7a34: $7f
    and c                                         ; $7a35: $a1
    ld a, l                                       ; $7a36: $7d
    ld l, b                                       ; $7a37: $68
    ld a, [bc]                                    ; $7a38: $0a
    ld e, $fe                                     ; $7a39: $1e $fe
    xor a                                         ; $7a3b: $af
    db $e3                                        ; $7a3c: $e3
    inc bc                                        ; $7a3d: $03
    sub a                                         ; $7a3e: $97
    push hl                                       ; $7a3f: $e5
    and c                                         ; $7a40: $a1
    ld e, d                                       ; $7a41: $5a
    adc b                                         ; $7a42: $88
    and l                                         ; $7a43: $a5
    db $fd                                        ; $7a44: $fd
    db $e4                                        ; $7a45: $e4
    ld [hl], e                                    ; $7a46: $73
    sbc c                                         ; $7a47: $99
    sbc e                                         ; $7a48: $9b
    ld a, [hl]                                    ; $7a49: $7e
    sub c                                         ; $7a4a: $91
    inc hl                                        ; $7a4b: $23
    adc d                                         ; $7a4c: $8a
    rrca                                          ; $7a4d: $0f
    cpl                                           ; $7a4e: $2f
    sub [hl]                                      ; $7a4f: $96
    rst $00                                       ; $7a50: $c7
    rst $18                                       ; $7a51: $df
    dec l                                         ; $7a52: $2d
    ld c, c                                       ; $7a53: $49
    ld [hl-], a                                   ; $7a54: $32
    ld a, b                                       ; $7a55: $78
    ret z                                         ; $7a56: $c8

    dec sp                                        ; $7a57: $3b
    ld a, a                                       ; $7a58: $7f
    rst $00                                       ; $7a59: $c7
    scf                                           ; $7a5a: $37
    ld [hl], a                                    ; $7a5b: $77
    ld [$534a], a                                 ; $7a5c: $ea $4a $53
    ld e, c                                       ; $7a5f: $59
    xor l                                         ; $7a60: $ad
    ld c, e                                       ; $7a61: $4b
    dec sp                                        ; $7a62: $3b
    ld h, e                                       ; $7a63: $63
    sub b                                         ; $7a64: $90
    rla                                           ; $7a65: $17
    dec sp                                        ; $7a66: $3b
    or l                                          ; $7a67: $b5
    cp h                                          ; $7a68: $bc
    and b                                         ; $7a69: $a0
    pop af                                        ; $7a6a: $f1
    ld bc, $1597                                  ; $7a6b: $01 $97 $15
    add h                                         ; $7a6e: $84
    and $02                                       ; $7a6f: $e6 $02
    ld b, a                                       ; $7a71: $47
    ld l, e                                       ; $7a72: $6b
    db $ec                                        ; $7a73: $ec
    ld hl, sp-$29                                 ; $7a74: $f8 $d7
    dec [hl]                                      ; $7a76: $35
    xor l                                         ; $7a77: $ad
    ld de, $c22c                                  ; $7a78: $11 $2c $c2
    jr nz, @+$09                                  ; $7a7b: $20 $07

    sbc c                                         ; $7a7d: $99
    rra                                           ; $7a7e: $1f
    add sp, $19                                   ; $7a7f: $e8 $19
    sbc e                                         ; $7a81: $9b
    ld d, a                                       ; $7a82: $57
    ld c, $2f                                     ; $7a83: $0e $2f
    or l                                          ; $7a85: $b5
    rla                                           ; $7a86: $17
    ld d, e                                       ; $7a87: $53
    sbc a                                         ; $7a88: $9f
    ld c, b                                       ; $7a89: $48
    call z, Call_000_12c5                         ; $7a8a: $cc $c5 $12
    rlc e                                         ; $7a8d: $cb $03
    dec a                                         ; $7a8f: $3d
    ld h, e                                       ; $7a90: $63
    inc sp                                        ; $7a91: $33
    ld a, $00                                     ; $7a92: $3e $00
    cpl                                           ; $7a94: $2f
    add a                                         ; $7a95: $87
    pop af                                        ; $7a96: $f1
    halt                                          ; $7a97: $76
    push de                                       ; $7a98: $d5
    ld d, d                                       ; $7a99: $52
    ld l, $68                                     ; $7a9a: $2e $68
    cp h                                          ; $7a9c: $bc
    ld e, l                                       ; $7a9d: $5d
    sub e                                         ; $7a9e: $93
    dec sp                                        ; $7a9f: $3b
    ld a, l                                       ; $7aa0: $7d
    ld h, a                                       ; $7aa1: $67
    sbc $78                                       ; $7aa2: $de $78
    ld hl, $2b06                                  ; $7aa4: $21 $06 $2b
    dec l                                         ; $7aa7: $2d
    or c                                          ; $7aa8: $b1
    inc a                                         ; $7aa9: $3c
    push bc                                       ; $7aaa: $c5
    xor l                                         ; $7aab: $ad
    ld d, a                                       ; $7aac: $57
    ld [hl], e                                    ; $7aad: $73
    dec l                                         ; $7aae: $2d
    db $fd                                        ; $7aaf: $fd
    rst $38                                       ; $7ab0: $ff
    inc [hl]                                      ; $7ab1: $34
    add b                                         ; $7ab2: $80
    add hl, bc                                    ; $7ab3: $09
    ld [c], a                                     ; $7ab4: $e2
    inc bc                                        ; $7ab5: $03
    sub a                                         ; $7ab6: $97
    dec d                                         ; $7ab7: $15
    ld d, $74                                     ; $7ab8: $16 $74
    ld h, c                                       ; $7aba: $61
    ld a, c                                       ; $7abb: $79
    and b                                         ; $7abc: $a0
    pop hl                                        ; $7abd: $e1
    rst $38                                       ; $7abe: $ff
    db $e4                                        ; $7abf: $e4
    xor a                                         ; $7ac0: $af
    ld l, h                                       ; $7ac1: $6c
    rst $28                                       ; $7ac2: $ef
    ld [hl], l                                    ; $7ac3: $75
    ld h, c                                       ; $7ac4: $61
    dec b                                         ; $7ac5: $05
    and c                                         ; $7ac6: $a1
    add hl, sp                                    ; $7ac7: $39
    ld c, h                                       ; $7ac8: $4c
    ld d, b                                       ; $7ac9: $50
    add c                                         ; $7aca: $81
    cp [hl]                                       ; $7acb: $be
    ld l, h                                       ; $7acc: $6c
    ld c, [hl]                                    ; $7acd: $4e
    ret nz                                        ; $7ace: $c0

    ld h, b                                       ; $7acf: $60
    rst $08                                       ; $7ad0: $cf
    ld a, l                                       ; $7ad1: $7d
    rst $00                                       ; $7ad2: $c7
    inc bc                                        ; $7ad3: $03
    jp nz, Jump_000_1200                          ; $7ad4: $c2 $00 $12

    cp a                                          ; $7ad7: $bf
    ld e, l                                       ; $7ad8: $5d
    sub e                                         ; $7ad9: $93
    dec bc                                        ; $7ada: $0b
    dec hl                                        ; $7adb: $2b
    inc l                                         ; $7adc: $2c
    inc l                                         ; $7add: $2c
    rrca                                          ; $7ade: $0f
    ld [hl], e                                    ; $7adf: $73
    cp [hl]                                       ; $7ae0: $be
    ld a, e                                       ; $7ae1: $7b
    add hl, de                                    ; $7ae2: $19
    ld e, $72                                     ; $7ae3: $1e $72
    db $d3                                        ; $7ae5: $d3
    ld b, e                                       ; $7ae6: $43
    db $f4                                        ; $7ae7: $f4
    ld b, l                                       ; $7ae8: $45
    dec l                                         ; $7ae9: $2d
    rrca                                          ; $7aea: $0f
    ld d, h                                       ; $7aeb: $54
    rst $30                                       ; $7aec: $f7
    call c, $0f8c                                 ; $7aed: $dc $8c $0f
    ld l, a                                       ; $7af0: $6f
    ld h, e                                       ; $7af1: $63
    rla                                           ; $7af2: $17
    or [hl]                                       ; $7af3: $b6
    ld [hl+], a                                   ; $7af4: $22
    ld e, [hl]                                    ; $7af5: $5e
    ld e, b                                       ; $7af6: $58
    ld e, $a8                                     ; $7af7: $1e $a8
    scf                                           ; $7af9: $37
    sra e                                         ; $7afa: $cb $2b
    rlca                                          ; $7afc: $07
    ld d, a                                       ; $7afd: $57
    adc l                                         ; $7afe: $8d
    ld [hl], a                                    ; $7aff: $77
    ld l, d                                       ; $7b00: $6a
    ld a, c                                       ; $7b01: $79
    adc c                                         ; $7b02: $89
    adc l                                         ; $7b03: $8d
    inc l                                         ; $7b04: $2c
    ld a, l                                       ; $7b05: $7d
    cp h                                          ; $7b06: $bc
    dec a                                         ; $7b07: $3d
    ld b, e                                       ; $7b08: $43
    ld b, e                                       ; $7b09: $43
    or l                                          ; $7b0a: $b5
    or b                                          ; $7b0b: $b0
    push de                                       ; $7b0c: $d5
    dec sp                                        ; $7b0d: $3b
    add hl, de                                    ; $7b0e: $19
    rst $28                                       ; $7b0f: $ef
    cp l                                          ; $7b10: $bd
    sub e                                         ; $7b11: $93
    ld de, $cf77                                  ; $7b12: $11 $77 $cf
    dec sp                                        ; $7b15: $3b
    xor c                                         ; $7b16: $a9
    ld a, b                                       ; $7b17: $78
    xor $ff                                       ; $7b18: $ee $ff
    or h                                          ; $7b1a: $b4
    db $fc                                        ; $7b1b: $fc
    ld e, $c1                                     ; $7b1c: $1e $c1
    ld b, b                                       ; $7b1e: $40
    ld c, a                                       ; $7b1f: $4f
    xor l                                         ; $7b20: $ad
    ld [c], a                                     ; $7b21: $e2
    db $fd                                        ; $7b22: $fd
    ld l, b                                       ; $7b23: $68
    and l                                         ; $7b24: $a5
    ld a, l                                       ; $7b25: $7d
    ld l, b                                       ; $7b26: $68
    ld e, $bb                                     ; $7b27: $1e $bb
    ret z                                         ; $7b29: $c8

    ld [de], a                                    ; $7b2a: $12
    ld c, e                                       ; $7b2b: $4b
    jp Jump_047_735c                              ; $7b2c: $c3 $5c $73


    ld c, $f2                                     ; $7b2f: $0e $f2
    cp b                                          ; $7b31: $b8
    sub e                                         ; $7b32: $93
    ccf                                           ; $7b33: $3f
    ld l, d                                       ; $7b34: $6a
    add $07                                       ; $7b35: $c6 $07
    ld l, a                                       ; $7b37: $6f
    dec de                                        ; $7b38: $1b
    rrca                                          ; $7b39: $0f
    push de                                       ; $7b3a: $d5
    ld a, h                                       ; $7b3b: $7c
    rst $30                                       ; $7b3c: $f7
    ld [hl-], a                                   ; $7b3d: $32
    inc a                                         ; $7b3e: $3c
    db $e4                                        ; $7b3f: $e4
    and [hl]                                      ; $7b40: $a6
    add a                                         ; $7b41: $87
    add sp, -$75                                  ; $7b42: $e8 $8b
    ld e, d                                       ; $7b44: $5a
    cp [hl]                                       ; $7b45: $be
    ld [hl], d                                    ; $7b46: $72
    nop                                           ; $7b47: $00
    ld d, a                                       ; $7b48: $57
    dec sp                                        ; $7b49: $3b
    ld c, c                                       ; $7b4a: $49
    sub [hl]                                      ; $7b4b: $96
    inc a                                         ; $7b4c: $3c
    rst $30                                       ; $7b4d: $f7
    ld a, a                                       ; $7b4e: $7f
    ld a, [de]                                    ; $7b4f: $1a
    ld a, a                                       ; $7b50: $7f
    or a                                          ; $7b51: $b7

jr_047_7b52:
    ld l, c                                       ; $7b52: $69
    ld b, [hl]                                    ; $7b53: $46
    ld l, d                                       ; $7b54: $6a
    call $9585                                    ; $7b55: $cd $85 $95
    xor d                                         ; $7b58: $aa
    add hl, de                                    ; $7b59: $19
    ld l, a                                       ; $7b5a: $6f
    cpl                                           ; $7b5b: $2f
    sub [hl]                                      ; $7b5c: $96
    rst $00                                       ; $7b5d: $c7
    rst $18                                       ; $7b5e: $df
    dec l                                         ; $7b5f: $2d
    dec h                                         ; $7b60: $25
    sub $39                                       ; $7b61: $d6 $39
    xor c                                         ; $7b63: $a9
    add hl, sp                                    ; $7b64: $39
    ret z                                         ; $7b65: $c8

    dec bc                                        ; $7b66: $0b
    ld e, e                                       ; $7b67: $5b
    dec a                                         ; $7b68: $3d
    rst $18                                       ; $7b69: $df
    sbc l                                         ; $7b6a: $9d
    ld c, d                                       ; $7b6b: $4a
    push de                                       ; $7b6c: $d5
    ld a, [hl]                                    ; $7b6d: $7e
    call Call_047_77bd                            ; $7b6e: $cd $bd $77
    ld a, [hl+]                                   ; $7b71: $2a
    and [hl]                                      ; $7b72: $a6
    ld [c], a                                     ; $7b73: $e2
    ld h, d                                       ; $7b74: $62
    ld c, [hl]                                    ; $7b75: $4e
    or c                                          ; $7b76: $b1
    add hl, de                                    ; $7b77: $19
    xor a                                         ; $7b78: $af
    or h                                          ; $7b79: $b4
    rst $38                                       ; $7b7a: $ff
    push hl                                       ; $7b7b: $e5
    ld e, h                                       ; $7b7c: $5c
    inc sp                                        ; $7b7d: $33
    add hl, sp                                    ; $7b7e: $39
    call z, $00f8                                 ; $7b7f: $cc $f8 $00
    sub a                                         ; $7b82: $97
    and [hl]                                      ; $7b83: $a6
    push af                                       ; $7b84: $f5
    cp a                                          ; $7b85: $bf
    jr jr_047_7b52                                ; $7b86: $18 $ca

    add hl, bc                                    ; $7b88: $09
    call $f6bd                                    ; $7b89: $cd $bd $f6
    ld [hl], e                                    ; $7b8c: $73
    ld l, a                                       ; $7b8d: $6f
    scf                                           ; $7b8e: $37
    xor d                                         ; $7b8f: $aa

jr_047_7b90:
    adc [hl]                                      ; $7b90: $8e
    or a                                          ; $7b91: $b7
    and a                                         ; $7b92: $a7
    sbc d                                         ; $7b93: $9a
    dec bc                                        ; $7b94: $0b
    jr nc, @+$5a                                  ; $7b95: $30 $58

    pop hl                                        ; $7b97: $e1
    ld hl, $d2ef                                  ; $7b98: $21 $ef $d2
    adc b                                         ; $7b9b: $88
    call nz, $95ec                                ; $7b9c: $c4 $ec $95
    rst $08                                       ; $7b9f: $cf
    ld e, h                                       ; $7ba0: $5c
    cp d                                          ; $7ba1: $ba
    ld [hl], d                                    ; $7ba2: $72
    nop                                           ; $7ba3: $00
    rst $10                                       ; $7ba4: $d7
    db $ed                                        ; $7ba5: $ed
    ld h, d                                       ; $7ba6: $62
    sbc $78                                       ; $7ba7: $de $78
    ld b, d                                       ; $7ba9: $42
    ld [hl], e                                    ; $7baa: $73
    jr z, jr_047_7b90                             ; $7bab: $28 $e3

    inc bc                                        ; $7bad: $03
    cpl                                           ; $7bae: $2f
    add a                                         ; $7baf: $87
    ld [hl], c                                    ; $7bb0: $71
    inc e                                         ; $7bb1: $1c
    rrca                                          ; $7bb2: $0f
    push hl                                       ; $7bb3: $e5
    cp h                                          ; $7bb4: $bc
    pop bc                                        ; $7bb5: $c1
    ld b, e                                       ; $7bb6: $43
    sbc [hl]                                      ; $7bb7: $9e
    scf                                           ; $7bb8: $37
    ld e, [hl]                                    ; $7bb9: $5e
    add h                                         ; $7bba: $84
    ld b, c                                       ; $7bbb: $41
    ld c, [hl]                                    ; $7bbc: $4e
    and b                                         ; $7bbd: $a0
    ld e, a                                       ; $7bbe: $5f
    ld d, d                                       ; $7bbf: $52
    adc e                                         ; $7bc0: $8b
    cp d                                          ; $7bc1: $ba
    ld d, e                                       ; $7bc2: $53
    ld c, e                                       ; $7bc3: $4b
    ld l, e                                       ; $7bc4: $6b
    ld d, e                                       ; $7bc5: $53
    call $9ffd                                    ; $7bc6: $cd $fd $9f
    and $3b                                       ; $7bc9: $e6 $3b
    ld d, b                                       ; $7bcb: $50
    cp c                                          ; $7bcc: $b9
    db $10                                        ; $7bcd: $10
    xor e                                         ; $7bce: $ab
    ld a, l                                       ; $7bcf: $7d
    inc sp                                        ; $7bd0: $33
    ld a, $00                                     ; $7bd1: $3e $00
    sub a                                         ; $7bd3: $97
    xor l                                         ; $7bd4: $ad
    adc b                                         ; $7bd5: $88
    ld d, a                                       ; $7bd6: $57
    ld a, [de]                                    ; $7bd7: $1a
    ld [hl], $b2                                  ; $7bd8: $36 $b2
    db $f4                                        ; $7bda: $f4
    ld l, e                                       ; $7bdb: $6b
    ld [hl], e                                    ; $7bdc: $73
    sub b                                         ; $7bdd: $90

jr_047_7bde:
    ld sp, hl                                     ; $7bde: $f9
    add c                                         ; $7bdf: $81
    sbc [hl]                                      ; $7be0: $9e
    or c                                          ; $7be1: $b1
    ld a, c                                       ; $7be2: $79
    ld h, l                                       ; $7be3: $65
    ld a, e                                       ; $7be4: $7b
    and [hl]                                      ; $7be5: $a6
    cp c                                          ; $7be6: $b9
    ldh [$27], a                                  ; $7be7: $e0 $27
    ld l, b                                       ; $7be9: $68
    adc $63                                       ; $7bea: $ce $63
    rst $30                                       ; $7bec: $f7
    and d                                         ; $7bed: $a2
    ld de, $7abc                                  ; $7bee: $11 $bc $7a
    ld h, c                                       ; $7bf1: $61
    rl a                                          ; $7bf2: $cb $17
    ld b, e                                       ; $7bf4: $43
    dec [hl]                                      ; $7bf5: $35
    rst $18                                       ; $7bf6: $df
    sbc l                                         ; $7bf7: $9d
    ld sp, $4ec8                                  ; $7bf8: $31 $c8 $4e
    sbc [hl]                                      ; $7bfb: $9e
    jr nc, jr_047_7bde                            ; $7bfc: $30 $e0

    ld hl, sp+$00                                 ; $7bfe: $f8 $00
    cpl                                           ; $7c00: $2f
    or l                                          ; $7c01: $b5
    pop af                                        ; $7c02: $f1
    ld bc, $5897                                  ; $7c03: $01 $97 $58
    ld a, [de]                                    ; $7c06: $1a
    xor d                                         ; $7c07: $aa
    dec h                                         ; $7c08: $25
    ld [hl], $b2                                  ; $7c09: $36 $b2
    db $f4                                        ; $7c0b: $f4
    inc de                                        ; $7c0c: $13
    ld a, [de]                                    ; $7c0d: $1a
    sbc d                                         ; $7c0e: $9a
    halt                                          ; $7c0f: $76
    cp e                                          ; $7c10: $bb
    inc de                                        ; $7c11: $13
    ld b, $6b                                     ; $7c12: $06 $6b
    ld l, $c2                                     ; $7c14: $2e $c2
    jr nz, jr_047_7c5f                            ; $7c16: $20 $47

    add $17                                       ; $7c18: $c6 $17
    ld a, e                                       ; $7c1a: $7b
    dec e                                         ; $7c1b: $1d
    ld e, $3a                                     ; $7c1c: $1e $3a
    inc h                                         ; $7c1e: $24
    jp nz, Jump_000_07c6                          ; $7c1f: $c2 $c6 $07

    rst $28                                       ; $7c22: $ef
    sbc l                                         ; $7c23: $9d
    rst $08                                       ; $7c24: $cf
    rst $20                                       ; $7c25: $e7
    di                                            ; $7c26: $f3
    add hl, sp                                    ; $7c27: $39
    adc [hl]                                      ; $7c28: $8e
    db $e3                                        ; $7c29: $e3
    jr c, jr_047_7c6a                             ; $7c2a: $38 $3e

    nop                                           ; $7c2c: $00
    rst $10                                       ; $7c2d: $d7
    db $e4                                        ; $7c2e: $e4
    add h                                         ; $7c2f: $84
    and $2e                                       ; $7c30: $e6 $2e
    ld c, e                                       ; $7c32: $4b
    ld d, c                                       ; $7c33: $51
    dec [hl]                                      ; $7c34: $35
    ld [hl], $f7                                  ; $7c35: $36 $f7
    inc e                                         ; $7c37: $1c
    and c                                         ; $7c38: $a1
    ld c, b                                       ; $7c39: $48
    ld d, h                                       ; $7c3a: $54
    ld a, l                                       ; $7c3b: $7d
    or c                                          ; $7c3c: $b1
    inc de                                        ; $7c3d: $13
    halt                                          ; $7c3e: $76
    ld h, a                                       ; $7c3f: $67
    inc c                                         ; $7c40: $0c
    ld [hl], d                                    ; $7c41: $72
    add c                                         ; $7c42: $81
    and e                                         ; $7c43: $a3
    dec [hl]                                      ; $7c44: $35
    or $ca                                        ; $7c45: $f6 $ca
    ld bc, $fdaf                                  ; $7c47: $01 $af $fd
    call c, $8ddb                                 ; $7c4a: $dc $db $8d
    xor d                                         ; $7c4d: $aa
    db $e3                                        ; $7c4e: $e3
    inc bc                                        ; $7c4f: $03
    sub a                                         ; $7c50: $97
    ld b, [hl]                                    ; $7c51: $46

Call_047_7c52:
    inc h                                         ; $7c52: $24
    ld h, [hl]                                    ; $7c53: $66

jr_047_7c54:
    xor a                                         ; $7c54: $af
    ld a, h                                       ; $7c55: $7c
    and $52                                       ; $7c56: $e6 $52
    ld a, h                                       ; $7c58: $7c
    nop                                           ; $7c59: $00
    cpl                                           ; $7c5a: $2f
    or [hl]                                       ; $7c5b: $b6
    cp c                                          ; $7c5c: $b9
    and b                                         ; $7c5d: $a0
    di                                            ; $7c5e: $f3

jr_047_7c5f:
    add $57                                       ; $7c5f: $c6 $57
    halt                                          ; $7c61: $76
    ld c, l                                       ; $7c62: $4d
    xor $d4                                       ; $7c63: $ee $d4
    ld a, [c]                                     ; $7c65: $f2
    jp nc, Jump_047_71d8                          ; $7c66: $d2 $d8 $71

    ld c, b                                       ; $7c69: $48

jr_047_7c6a:
    ld h, e                                       ; $7c6a: $63
    jr nz, jr_047_7cd4                            ; $7c6b: $20 $67

    ld e, d                                       ; $7c6d: $5a
    ld d, a                                       ; $7c6e: $57
    call Call_047_5cb5                            ; $7c6f: $cd $b5 $5c
    ret nc                                        ; $7c72: $d0

    sbc c                                         ; $7c73: $99
    jr z, jr_047_7c54                             ; $7c74: $28 $de

    sbc [hl]                                      ; $7c76: $9e
    ld [hl], a                                    ; $7c77: $77
    ld [hl-], a                                   ; $7c78: $32
    sbc e                                         ; $7c79: $9b
    dec bc                                        ; $7c7a: $0b
    inc e                                         ; $7c7b: $1c
    xor l                                         ; $7c7c: $ad
    or c                                          ; $7c7d: $b1
    inc sp                                        ; $7c7e: $33
    dec a                                         ; $7c7f: $3d
    dec b                                         ; $7c80: $05
    ld d, c                                       ; $7c81: $51
    dec e                                         ; $7c82: $1d
    reti                                          ; $7c83: $d9


    sbc h                                         ; $7c84: $9c
    add e                                         ; $7c85: $83
    db $ec                                        ; $7c86: $ec
    cp $52                                        ; $7c87: $fe $52
    di                                            ; $7c89: $f3
    jp z, $46de                                   ; $7c8a: $ca $de $46

    xor l                                         ; $7c8d: $ad
    sbc e                                         ; $7c8e: $9b
    dec bc                                        ; $7c8f: $0b
    inc e                                         ; $7c90: $1c
    xor l                                         ; $7c91: $ad
    or c                                          ; $7c92: $b1
    dec hl                                        ; $7c93: $2b
    xor l                                         ; $7c94: $ad
    call Call_047_52e9                            ; $7c95: $cd $e9 $52
    di                                            ; $7c98: $f3
    jp z, $fbde                                   ; $7c99: $ca $de $fb

    ld d, e                                       ; $7c9c: $53
    db $10                                        ; $7c9d: $10
    or l                                          ; $7c9e: $b5
    ld [hl], d                                    ; $7c9f: $72
    ld b, c                                       ; $7ca0: $41
    rst $30                                       ; $7ca1: $f7
    ld d, [hl]                                    ; $7ca2: $56
    ret                                           ; $7ca3: $c9


    ld h, e                                       ; $7ca4: $63
    add h                                         ; $7ca5: $84
    ld e, d                                       ; $7ca6: $5a
    db $e3                                        ; $7ca7: $e3
    ld [hl], a                                    ; $7ca8: $77
    call nc, $e41c                                ; $7ca9: $d4 $1c $e4
    ld a, b                                       ; $7cac: $78
    ld l, a                                       ; $7cad: $6f
    sub l                                         ; $7cae: $95
    ld a, h                                       ; $7caf: $7c
    ld l, c                                       ; $7cb0: $69
    ld h, c                                       ; $7cb1: $61
    dec hl                                        ; $7cb2: $2b
    ld [c], a                                     ; $7cb3: $e2
    dec h                                         ; $7cb4: $25
    ld [hl], $b2                                  ; $7cb5: $36 $b2
    db $f4                                        ; $7cb7: $f4
    jp $845c                                      ; $7cb8: $c3 $5c $84


    ld b, c                                       ; $7cbb: $41
    ld c, [hl]                                    ; $7cbc: $4e
    ld h, h                                       ; $7cbd: $64
    ld de, $ec6a                                  ; $7cbe: $11 $6a $ec
    ret c                                         ; $7cc1: $d8

    ld [hl], h                                    ; $7cc2: $74
    sub e                                         ; $7cc3: $93
    rst $20                                       ; $7cc4: $e7
    cp $4f                                        ; $7cc5: $fe $4f

jr_047_7cc7:
    db $e3                                        ; $7cc7: $e3
    rst $28                                       ; $7cc8: $ef
    sub [hl]                                      ; $7cc9: $96
    sbc d                                         ; $7cca: $9a
    rla                                           ; $7ccb: $17
    adc e                                         ; $7ccc: $8b
    call z, $2868                                 ; $7ccd: $cc $68 $28
    daa                                           ; $7cd0: $27
    sbc e                                         ; $7cd1: $9b
    inc sp                                        ; $7cd2: $33
    xor l                                         ; $7cd3: $ad

jr_047_7cd4:
    dec sp                                        ; $7cd4: $3b
    dec b                                         ; $7cd5: $05
    rrca                                          ; $7cd6: $0f
    rst $38                                       ; $7cd7: $ff
    rst $10                                       ; $7cd8: $d7
    jp nz, Jump_047_6caf                          ; $7cd9: $c2 $af $6c

    adc $f4                                       ; $7cdc: $ce $f4
    inc e                                         ; $7cde: $1c
    db $e4                                        ; $7cdf: $e4
    ld b, l                                       ; $7ce0: $45
    jr jr_047_7cc7                                ; $7ce1: $18 $e4

    jp nz, $45ff                                  ; $7ce3: $c2 $ff $45

    ld a, $de                                     ; $7ce6: $3e $de
    ld c, e                                       ; $7ce8: $4b
    rst $18                                       ; $7ce9: $df
    ld e, c                                       ; $7cea: $59
    ld h, b                                       ; $7ceb: $60
    rla                                           ; $7cec: $17
    ld b, e                                       ; $7ced: $43
    add hl, sp                                    ; $7cee: $39
    ld h, b                                       ; $7cef: $60
    adc e                                         ; $7cf0: $8b
    call z, $a768                                 ; $7cf1: $cc $68 $a7
    sub [hl]                                      ; $7cf4: $96

jr_047_7cf5:
    sub $a6                                       ; $7cf5: $d6 $a6
    jp c, Jump_047_7687                           ; $7cf7: $da $87 $76

    cp $95                                        ; $7cfa: $fe $95
    ld c, e                                       ; $7cfc: $4b
    inc sp                                        ; $7cfd: $33
    sbc d                                         ; $7cfe: $9a
    rst $28                                       ; $7cff: $ef
    jr nz, jr_047_7cf5                            ; $7d00: $20 $f3

    pop af                                        ; $7d02: $f1
    xor [hl]                                      ; $7d03: $ae
    ld a, [de]                                    ; $7d04: $1a
    adc b                                         ; $7d05: $88
    rrca                                          ; $7d06: $0f
    rst $10                                       ; $7d07: $d7
    db $e4                                        ; $7d08: $e4
    jp nz, $a1ff                                  ; $7d09: $c2 $ff $a1

    dec h                                         ; $7d0c: $25
    sub [hl]                                      ; $7d0d: $96
    rst $20                                       ; $7d0e: $e7
    adc l                                         ; $7d0f: $8d
    add a                                         ; $7d10: $87
    ld [hl], d                                    ; $7d11: $72
    ld [bc], a                                    ; $7d12: $02
    ld b, $0b                                     ; $7d13: $06 $0b
    call Call_000_1f68                            ; $7d15: $cd $68 $1f
    sbc d                                         ; $7d18: $9a
    rst $28                                       ; $7d19: $ef
    ld c, h                                       ; $7d1a: $4c
    db $e4                                        ; $7d1b: $e4
    xor e                                         ; $7d1c: $ab
    ld sp, $e4c1                                  ; $7d1d: $31 $c1 $e4
    adc a                                         ; $7d20: $8f
    ld [c], a                                     ; $7d21: $e2
    cp l                                          ; $7d22: $bd
    rst $10                                       ; $7d23: $d7
    add l                                         ; $7d24: $85
    rst $18                                       ; $7d25: $df
    pop af                                        ; $7d26: $f1
    inc a                                         ; $7d27: $3c
    or a                                          ; $7d28: $b7
    push de                                       ; $7d29: $d5
    db $e3                                        ; $7d2a: $e3
    adc $6d                                       ; $7d2b: $ce $6d
    push af                                       ; $7d2d: $f5
    ld e, h                                       ; $7d2e: $5c
    res 0, l                                      ; $7d2f: $cb $85
    push hl                                       ; $7d31: $e5
    add c                                         ; $7d32: $81
    ld l, d                                       ; $7d33: $6a
    rlca                                          ; $7d34: $07
    db $fd                                        ; $7d35: $fd
    ld e, h                                       ; $7d36: $5c
    res 0, l                                      ; $7d37: $cb $85
    ld h, [hl]                                    ; $7d39: $66
    or h                                          ; $7d3a: $b4
    ld [hl+], a                                   ; $7d3b: $22
    ld l, b                                       ; $7d3c: $68
    ld c, [hl]                                    ; $7d3d: $4e
    ld [hl], c                                    ; $7d3e: $71
    and e                                         ; $7d3f: $a3
    ld hl, sp+$00                                 ; $7d40: $f8 $00
    xor a                                         ; $7d42: $af
    rst $20                                       ; $7d43: $e7
    cpl                                           ; $7d44: $2f
    inc h                                         ; $7d45: $24
    ld a, [hl]                                    ; $7d46: $7e
    ld a, e                                       ; $7d47: $7b
    ld a, [hl-]                                   ; $7d48: $3a
    db $fc                                        ; $7d49: $fc
    ldh a, [$2f]                                  ; $7d4a: $f0 $2f
    ld d, c                                       ; $7d4c: $51
    jp z, $ba92                                   ; $7d4d: $ca $92 $ba

    ret c                                         ; $7d50: $d8

    dec hl                                        ; $7d51: $2b
    ccf                                           ; $7d52: $3f
    add d                                         ; $7d53: $82
    ld a, [hl]                                    ; $7d54: $7e
    sub e                                         ; $7d55: $93
    call $8388                                    ; $7d56: $cd $88 $83
    xor d                                         ; $7d59: $aa
    adc e                                         ; $7d5a: $8b
    cp l                                          ; $7d5b: $bd
    ld e, $55                                     ; $7d5c: $1e $55
    ld c, d                                       ; $7d5e: $4a
    xor h                                         ; $7d5f: $ac
    jp c, $dcb5                                   ; $7d60: $da $b5 $dc

    sub e                                         ; $7d63: $93
    ld e, d                                       ; $7d64: $5a
    ld [hl], a                                    ; $7d65: $77
    xor a                                         ; $7d66: $af
    ld b, a                                       ; $7d67: $47
    ld h, $9b                                     ; $7d68: $26 $9b
    rla                                           ; $7d6a: $17
    ld l, e                                       ; $7d6b: $6b
    ld l, $6a                                     ; $7d6c: $2e $6a
    ld c, c                                       ; $7d6e: $49
    db $fc                                        ; $7d6f: $fc
    ld bc, $872f                                  ; $7d70: $01 $2f $87
    ld [c], a                                     ; $7d73: $e2
    or a                                          ; $7d74: $b7
    rst $30                                       ; $7d75: $f7
    ld a, [hl-]                                   ; $7d76: $3a
    or a                                          ; $7d77: $b7
    inc h                                         ; $7d78: $24
    rst $38                                       ; $7d79: $ff
    add a                                         ; $7d7a: $87
    ld a, b                                       ; $7d7b: $78
    ld c, a                                       ; $7d7c: $4f
    add a                                         ; $7d7d: $87
    rra                                           ; $7d7e: $1f
    cp $25                                        ; $7d7f: $fe $25
    ld c, d                                       ; $7d81: $4a
    ld e, c                                       ; $7d82: $59
    ld d, d                                       ; $7d83: $52
    ld [c], a                                     ; $7d84: $e2
    rrca                                          ; $7d85: $0f
    ld l, a                                       ; $7d86: $6f
    dec de                                        ; $7d87: $1b
    rst $28                                       ; $7d88: $ef
    adc h                                         ; $7d89: $8c
    ld b, c                                       ; $7d8a: $41
    xor $e9                                       ; $7d8b: $ee $e9
    ldh a, [$c3]                                  ; $7d8d: $f0 $c3
    cp a                                          ; $7d8f: $bf
    ld b, h                                       ; $7d90: $44
    add hl, hl                                    ; $7d91: $29
    ld c, e                                       ; $7d92: $4b
    ld [$f6ca], a                                 ; $7d93: $ea $ca $f6
    add $87                                       ; $7d96: $c6 $87
    add a                                         ; $7d98: $87
    inc bc                                        ; $7d99: $03
    ld l, l                                       ; $7d9a: $6d
    xor [hl]                                      ; $7d9b: $ae
    ldh a, [$90]                                  ; $7d9c: $f0 $90
    dec sp                                        ; $7d9e: $3b
    adc c                                         ; $7d9f: $89
    ld d, d                                       ; $7da0: $52
    sub [hl]                                      ; $7da1: $96
    call nc, $c2c5                                ; $7da2: $d4 $c5 $c2
    rst $38                                       ; $7da5: $ff
    and c                                         ; $7da6: $a1
    and c                                         ; $7da7: $a1
    cp h                                          ; $7da8: $bc
    ld [hl], d                                    ; $7da9: $72
    nop                                           ; $7daa: $00
    cpl                                           ; $7dab: $2f
    or l                                          ; $7dac: $b5
    rla                                           ; $7dad: $17
    adc e                                         ; $7dae: $8b
    call z, $e768                                 ; $7daf: $cc $68 $e7
    xor $8c                                       ; $7db2: $ee $8c
    ld b, c                                       ; $7db4: $41
    xor $54                                       ; $7db5: $ee $54
    dec a                                         ; $7db7: $3d
    ld e, l                                       ; $7db8: $5d
    add hl, hl                                    ; $7db9: $29
    ld c, e                                       ; $7dba: $4b
    pop af                                        ; $7dbb: $f1
    or $4c                                        ; $7dbc: $f6 $4c
    xor [hl]                                      ; $7dbe: $ae
    or h                                          ; $7dbf: $b4
    inc sp                                        ; $7dc0: $33
    ld [hl-], a                                   ; $7dc1: $32
    scf                                           ; $7dc2: $37
    daa                                           ; $7dc3: $27
    call $9b88                                    ; $7dc4: $cd $88 $9b
    ld [hl], e                                    ; $7dc7: $73
    dec l                                         ; $7dc8: $2d
    rst $30                                       ; $7dc9: $f7
    ld d, h                                       ; $7dca: $54
    jp hl                                         ; $7dcb: $e9


    scf                                           ; $7dcc: $37
    ld a, [c]                                     ; $7dcd: $f2
    db $dd                                        ; $7dce: $dd
    ld h, l                                       ; $7dcf: $65
    and l                                         ; $7dd0: $a5
    ld l, d                                       ; $7dd1: $6a
    xor [hl]                                      ; $7dd2: $ae
    cp c                                          ; $7dd3: $b9
    scf                                           ; $7dd4: $37
    cp [hl]                                       ; $7dd5: $be
    db $db                                        ; $7dd6: $db
    inc [hl]                                      ; $7dd7: $34
    inc hl                                        ; $7dd8: $23
    dec [hl]                                      ; $7dd9: $35
    ld bc, $f883                                  ; $7dda: $01 $83 $f8
    nop                                           ; $7ddd: $00
    rst $08                                       ; $7dde: $cf
    push af                                       ; $7ddf: $f5
    ld d, h                                       ; $7de0: $54
    db $ed                                        ; $7de1: $ed
    ld de, $2c5c                                  ; $7de2: $11 $5c $2c
    ccf                                           ; $7de5: $3f
    ld e, b                                       ; $7de6: $58
    sbc e                                         ; $7de7: $9b
    adc e                                         ; $7de8: $8b
    inc l                                         ; $7de9: $2c
    or c                                          ; $7dea: $b1
    or h                                          ; $7deb: $b4
    rra                                           ; $7dec: $1f
    dec l                                         ; $7ded: $2d
    jp nz, $e720                                  ; $7dee: $c2 $20 $e7

    sub [hl]                                      ; $7df1: $96

jr_047_7df2:
    adc $16                                       ; $7df2: $ce $16
    ld d, l                                       ; $7df4: $55
    ld h, e                                       ; $7df5: $63
    add d                                         ; $7df6: $82
    add hl, sp                                    ; $7df7: $39
    ret z                                         ; $7df8: $c8

    db $e3                                        ; $7df9: $e3
    ld c, [hl]                                    ; $7dfa: $4e
    and b                                         ; $7dfb: $a0
    and d                                         ; $7dfc: $a2
    ld l, a                                       ; $7dfd: $6f
    add $07                                       ; $7dfe: $c6 $07
    ld l, a                                       ; $7e00: $6f
    sub l                                         ; $7e01: $95
    adc $16                                       ; $7e02: $ce $16
    ld d, l                                       ; $7e04: $55
    cpl                                           ; $7e05: $2f
    ret nz                                        ; $7e06: $c0

    ld h, b                                       ; $7e07: $60
    rst $20                                       ; $7e08: $e7
    xor $7f                                       ; $7e09: $ee $7f
    ld a, c                                       ; $7e0b: $79
    ld h, l                                       ; $7e0c: $65
    rst $08                                       ; $7e0d: $cf
    ret nc                                        ; $7e0e: $d0

    ld d, b                                       ; $7e0f: $50
    xor l                                         ; $7e10: $ad
    call Call_047_55bd                            ; $7e11: $cd $bd $55
    ld a, [hl-]                                   ; $7e14: $3a
    ld e, e                                       ; $7e15: $5b
    ld d, h                                       ; $7e16: $54
    ld l, l                                       ; $7e17: $6d
    ld b, [hl]                                    ; $7e18: $46
    ld a, [bc]                                    ; $7e19: $0a
    xor [hl]                                      ; $7e1a: $ae
    dec e                                         ; $7e1b: $1d
    ld h, c                                       ; $7e1c: $61
    rra                                           ; $7e1d: $1f
    jp c, $a77b                                   ; $7e1e: $da $7b $a7

    ld h, d                                       ; $7e21: $62
    ld a, [hl+]                                   ; $7e22: $2a
    ld l, $66                                     ; $7e23: $2e $66
    inc e                                         ; $7e25: $1c
    rst $00                                       ; $7e26: $c7
    ld l, e                                       ; $7e27: $6b
    ld c, $e5                                     ; $7e28: $0e $e5
    jp nz, $2b0a                                  ; $7e2a: $c2 $0a $2b

    add c                                         ; $7e2d: $81
    and [hl]                                      ; $7e2e: $a6
    ld a, [de]                                    ; $7e2f: $1a
    xor b                                         ; $7e30: $a8
    xor $b9                                       ; $7e31: $ee $b9
    add hl, sp                                    ; $7e33: $39
    ld l, a                                       ; $7e34: $6f
    cp h                                          ; $7e35: $bc
    and b                                         ; $7e36: $a0
    dec hl                                        ; $7e37: $2b
    db $ed                                        ; $7e38: $ed
    ld a, a                                       ; $7e39: $7f
    cp c                                          ; $7e3a: $b9
    xor b                                         ; $7e3b: $a8
    sbc l                                         ; $7e3c: $9d
    ld [hl], h                                    ; $7e3d: $74
    sub d                                         ; $7e3e: $92
    rst $00                                       ; $7e3f: $c7
    rst $18                                       ; $7e40: $df
    dec l                                         ; $7e41: $2d
    dec [hl]                                      ; $7e42: $35
    db $e3                                        ; $7e43: $e3
    cp l                                          ; $7e44: $bd
    rst $10                                       ; $7e45: $d7
    sbc l                                         ; $7e46: $9d
    sub c                                         ; $7e47: $91
    cp c                                          ; $7e48: $b9
    add hl, sp                                    ; $7e49: $39
    ld h, l                                       ; $7e4a: $65
    ld d, c                                       ; $7e4b: $51
    ld [hl], e                                    ; $7e4c: $73
    ld d, c                                       ; $7e4d: $51
    ld a, c                                       ; $7e4e: $79
    cp [hl]                                       ; $7e4f: $be
    ld a, e                                       ; $7e50: $7b
    ld a, [hl-]                                   ; $7e51: $3a
    db $fc                                        ; $7e52: $fc
    ldh a, [$2f]                                  ; $7e53: $f0 $2f
    ld d, c                                       ; $7e55: $51
    jp z, Jump_000_1a92                           ; $7e56: $ca $92 $1a

    and $7c                                       ; $7e59: $e6 $7c
    rst $20                                       ; $7e5b: $e7
    sub [hl]                                      ; $7e5c: $96
    jr nz, jr_047_7df2                            ; $7e5d: $20 $93

    ld [de], a                                    ; $7e5f: $12
    inc de                                        ; $7e60: $13
    call nz, $9707                                ; $7e61: $c4 $07 $97
    ld d, c                                       ; $7e64: $51
    inc d                                         ; $7e65: $14
    rst $00                                       ; $7e66: $c7
    pop af                                        ; $7e67: $f1
    ld [hl+], a                                   ; $7e68: $22
    ld d, h                                       ; $7e69: $54
    ld a, [bc]                                    ; $7e6a: $0a
    ld e, $62                                     ; $7e6b: $1e $62
    ld [hl], e                                    ; $7e6d: $73
    pop de                                        ; $7e6e: $d1
    cpl                                           ; $7e6f: $2f
    rrca                                          ; $7e70: $0f
    push hl                                       ; $7e71: $e5
    ld c, d                                       ; $7e72: $4a
    dec sp                                        ; $7e73: $3b
    add hl, de                                    ; $7e74: $19
    ld c, a                                       ; $7e75: $4f
    ld a, [hl]                                    ; $7e76: $7e
    xor b                                         ; $7e77: $a8

jr_047_7e78:
    add hl, de                                    ; $7e78: $19
    rst $28                                       ; $7e79: $ef
    adc l                                         ; $7e7a: $8d
    rst $28                                       ; $7e7b: $ef
    sub [hl]                                      ; $7e7c: $96
    and h                                         ; $7e7d: $a4
    add hl, de                                    ; $7e7e: $19
    ld [hl], c                                    ; $7e7f: $71
    ld [hl], e                                    ; $7e80: $73
    xor [hl]                                      ; $7e81: $ae
    push hl                                       ; $7e82: $e5
    sbc [hl]                                      ; $7e83: $9e
    ld a, [hl+]                                   ; $7e84: $2a
    db $fd                                        ; $7e85: $fd
    ld b, [hl]                                    ; $7e86: $46
    cp [hl]                                       ; $7e87: $be
    cp e                                          ; $7e88: $bb
    xor h                                         ; $7e89: $ac
    ld d, h                                       ; $7e8a: $54
    call $f735                                    ; $7e8b: $cd $35 $f7
    add $77                                       ; $7e8e: $c6 $77
    sbc e                                         ; $7e90: $9b
    ld h, [hl]                                    ; $7e91: $66
    and h                                         ; $7e92: $a4
    or $45                                        ; $7e93: $f6 $45
    ld c, e                                       ; $7e95: $4b
    inc l                                         ; $7e96: $2c
    ld e, a                                       ; $7e97: $5f
    inc c                                         ; $7e98: $0c
    ld e, $7e                                     ; $7e99: $1e $7e
    ld hl, sp-$29                                 ; $7e9b: $f8 $d7
    and $3b                                       ; $7e9d: $e6 $3b
    ld d, h                                       ; $7e9f: $54
    inc sp                                        ; $7ea0: $33
    call $f818                                    ; $7ea1: $cd $18 $f8
    add c                                         ; $7ea4: $81
    ld e, a                                       ; $7ea5: $5f
    rra                                           ; $7ea6: $1f
    rra                                           ; $7ea7: $1f
    cpl                                           ; $7ea8: $2f
    ld a, l                                       ; $7ea9: $7d
    rst $20                                       ; $7eaa: $e7
    ld h, d                                       ; $7eab: $62
    and [hl]                                      ; $7eac: $a6
    push de                                       ; $7ead: $d5
    add d                                         ; $7eae: $82
    xor $49                                       ; $7eaf: $ee $49
    ld b, b                                       ; $7eb1: $40
    ld [$3641], sp                                ; $7eb2: $08 $41 $36
    ld c, c                                       ; $7eb5: $49
    jr jr_047_7eb8                                ; $7eb6: $18 $00

jr_047_7eb8:
    cp [hl]                                       ; $7eb8: $be
    ret c                                         ; $7eb9: $d8

    add hl, bc                                    ; $7eba: $09
    push af                                       ; $7ebb: $f5
    add d                                         ; $7ebc: $82
    ld l, $6c                                     ; $7ebd: $2e $6c
    inc [hl]                                      ; $7ebf: $34
    ld l, a                                       ; $7ec0: $6f
    cp c                                          ; $7ec1: $b9
    xor b                                         ; $7ec2: $a8
    cp h                                          ; $7ec3: $bc
    xor b                                         ; $7ec4: $a8
    inc hl                                        ; $7ec5: $23
    rlca                                          ; $7ec6: $07
    ld [hl], l                                    ; $7ec7: $75
    di                                            ; $7ec8: $f3
    jp z, Jump_000_312e                           ; $7ec9: $ca $2e $31

    jr jr_047_7e78                                ; $7ecc: $18 $aa

    ld sp, hl                                     ; $7ece: $f9
    xor [hl]                                      ; $7ecf: $ae
    adc c                                         ; $7ed0: $89
    and b                                         ; $7ed1: $a0
    di                                            ; $7ed2: $f3
    ret c                                         ; $7ed3: $d8

    and c                                         ; $7ed4: $a1
    ld e, h                                       ; $7ed5: $5c
    ld a, [hl]                                    ; $7ed6: $7e
    or b                                          ; $7ed7: $b0
    call nz, $c2f2                                ; $7ed8: $c4 $f2 $c2
    ld a, [bc]                                    ; $7edb: $0a
    pop af                                        ; $7edc: $f1
    ld bc, $e4cf                                  ; $7edd: $01 $cf $e4
    ld c, [hl]                                    ; $7ee0: $4e
    add $3b                                       ; $7ee1: $c6 $3b
    ld h, e                                       ; $7ee3: $63
    sub b                                         ; $7ee4: $90
    di                                            ; $7ee5: $f3
    ret c                                         ; $7ee6: $d8

    cp l                                          ; $7ee7: $bd
    ld e, $55                                     ; $7ee8: $1e $55
    ld c, d                                       ; $7eea: $4a
    xor h                                         ; $7eeb: $ac
    sbc d                                         ; $7eec: $9a
    ei                                            ; $7eed: $fb
    ccf                                           ; $7eee: $3f
    call $8263                                    ; $7eef: $cd $63 $82
    and $95                                       ; $7ef2: $e6 $95
    cp l                                          ; $7ef4: $bd
    ld e, l                                       ; $7ef5: $5d
    dec l                                         ; $7ef6: $2d
    dec sp                                        ; $7ef7: $3b
    dec d                                         ; $7ef8: $15
    sbc c                                         ; $7ef9: $99
    ld l, h                                       ; $7efa: $6c
    xor $8c                                       ; $7efb: $ee $8c
    ld b, c                                       ; $7efd: $41
    xor [hl]                                      ; $7efe: $ae
    ld [hl], h                                    ; $7eff: $74
    push hl                                       ; $7f00: $e5
    nop                                           ; $7f01: $00
    ld c, a                                       ; $7f02: $4f
    cp [hl]                                       ; $7f03: $be
    ldh a, [$c2]                                  ; $7f04: $f0 $c2
    inc sp                                        ; $7f06: $33
    ld d, e                                       ; $7f07: $53
    sub c                                         ; $7f08: $91
    ret                                           ; $7f09: $c9


    ld h, [hl]                                    ; $7f0a: $66
    cp h                                          ; $7f0b: $bc
    cp l                                          ; $7f0c: $bd
    db $fc                                        ; $7f0d: $fc
    push hl                                       ; $7f0e: $e5
    ld a, h                                       ; $7f0f: $7c
    rla                                           ; $7f10: $17
    ld h, c                                       ; $7f11: $61
    ld a, [$74d2]                                 ; $7f12: $fa $d2 $74
    and l                                         ; $7f15: $a5
    inc l                                         ; $7f16: $2c
    dec [hl]                                      ; $7f17: $35
    sbc $5b                                       ; $7f18: $de $5b
    ld e, a                                       ; $7f1a: $5f
    add e                                         ; $7f1b: $83
    and [hl]                                      ; $7f1c: $a6
    ld e, d                                       ; $7f1d: $5a
    add h                                         ; $7f1e: $84
    pop bc                                        ; $7f1f: $c1
    jp nz, Jump_047_430a                          ; $7f20: $c2 $0a $43

    cp c                                          ; $7f23: $b9
    jp nc, Jump_047_47fe                          ; $7f24: $d2 $fe $47

    ld e, [hl]                                    ; $7f27: $5e
    sbc e                                         ; $7f28: $9b
    inc bc                                        ; $7f29: $03
    dec c                                         ; $7f2a: $0d
    call Call_047_63cf                            ; $7f2b: $cd $cf $63
    sub a                                         ; $7f2e: $97
    ld h, [hl]                                    ; $7f2f: $66
    or h                                          ; $7f30: $b4
    add sp, $7b                                   ; $7f31: $e8 $7b
    ld e, a                                       ; $7f33: $5f
    sbc d                                         ; $7f34: $9a
    adc d                                         ; $7f35: $8a
    call z, Call_000_3724                         ; $7f36: $cc $24 $37
    ld a, $00                                     ; $7f39: $3e $00
    ld l, a                                       ; $7f3b: $6f
    ld b, [hl]                                    ; $7f3c: $46
    ld d, c                                       ; $7f3d: $51
    inc e                                         ; $7f3e: $1c
    rst $00                                       ; $7f3f: $c7
    dec bc                                        ; $7f40: $0b
    ld a, a                                       ; $7f41: $7f
    ld [hl], a                                    ; $7f42: $77
    ld l, d                                       ; $7f43: $6a
    ld a, c                                       ; $7f44: $79
    ld b, c                                       ; $7f45: $41
    ld [hl], a                                    ; $7f46: $77
    ld [hl-], a                                   ; $7f47: $32
    and e                                         ; $7f48: $a3
    ld b, l                                       ; $7f49: $45
    rst $18                                       ; $7f4a: $df
    ei                                            ; $7f4b: $fb
    jp nc, $8cd2                                  ; $7f4c: $d2 $d2 $8c

    and [hl]                                      ; $7f4f: $a6
    ld [hl+], a                                   ; $7f50: $22
    inc sp                                        ; $7f51: $33
    ret                                           ; $7f52: $c9


    ld d, a                                       ; $7f53: $57
    ld c, $6f                                     ; $7f54: $0e $6f
    sub c                                         ; $7f56: $91
    add hl, de                                    ; $7f57: $19
    ld e, b                                       ; $7f58: $58
    ld e, b                                       ; $7f59: $58
    ld e, [hl]                                    ; $7f5a: $5e
    call nc, $9625                                ; $7f5b: $d4 $25 $96
    db $e3                                        ; $7f5e: $e3
    db $ed                                        ; $7f5f: $ed
    ld b, l                                       ; $7f60: $45
    inc sp                                        ; $7f61: $33
    ld e, d                                       ; $7f62: $5a
    ret nc                                        ; $7f63: $d0

    ld b, l                                       ; $7f64: $45
    cp a                                          ; $7f65: $bf
    cp h                                          ; $7f66: $bc
    jp nc, $a08a                                  ; $7f67: $d2 $8a $a0

    xor c                                         ; $7f6a: $a9
    ld sp, $6b90                                  ; $7f6b: $31 $90 $6b
    ld [hl], e                                    ; $7f6e: $73
    sub b                                         ; $7f6f: $90
    add hl, de                                    ; $7f70: $19
    ld c, l                                       ; $7f71: $4d
    ld a, [hl]                                    ; $7f72: $7e
    xor b                                         ; $7f73: $a8
    add hl, de                                    ; $7f74: $19
    rst $28                                       ; $7f75: $ef
    ld l, d                                       ; $7f76: $6a
    rla                                           ; $7f77: $17
    or l                                          ; $7f78: $b5
    adc d                                         ; $7f79: $8a
    cp e                                          ; $7f7a: $bb
    inc sp                                        ; $7f7b: $33
    ld b, $39                                     ; $7f7c: $06 $39
    and c                                         ; $7f7e: $a1
    adc d                                         ; $7f7f: $8a
    ld [hl], a                                    ; $7f80: $77
    xor d                                         ; $7f81: $aa
    sbc [hl]                                      ; $7f82: $9e
    xor [hl]                                      ; $7f83: $ae
    sub h                                         ; $7f84: $94
    and l                                         ; $7f85: $a5
    ld a, b                                       ; $7f86: $78
    cpl                                           ; $7f87: $2f

Call_047_7f88:
    ld h, d                                       ; $7f88: $62
    sub b                                         ; $7f89: $90
    inc de                                        ; $7f8a: $13
    add sp, -$69                                  ; $7f8b: $e8 $97
    call nc, $92dc                                ; $7f8d: $d4 $dc $92
    db $fc                                        ; $7f90: $fc
    ld d, b                                       ; $7f91: $50
    ld [hl], e                                    ; $7f92: $73
    ld a, [hl+]                                   ; $7f93: $2a
    ld a, a                                       ; $7f94: $7f
    and c                                         ; $7f95: $a1
    ld a, l                                       ; $7f96: $7d
    ld l, b                                       ; $7f97: $68
    ld a, [bc]                                    ; $7f98: $0a
    ld e, $fe                                     ; $7f99: $1e $fe
    xor a                                         ; $7f9b: $af
    cpl                                           ; $7f9c: $2f

Call_047_7f9d:
    ld d, $99                                     ; $7f9d: $16 $99
    pop de                                        ; $7f9f: $d1
    cp h                                          ; $7fa0: $bc
    push hl                                       ; $7fa1: $e5
    add h                                         ; $7fa2: $84
    or d                                          ; $7fa3: $b2
    sbc c                                         ; $7fa4: $99
    ld e, [hl]                                    ; $7fa5: $5e
    ret nc                                        ; $7fa6: $d0

    cp c                                          ; $7fa7: $b9
    xor l                                         ; $7fa8: $ad
    ld e, [hl]                                    ; $7fa9: $5e
    call nc, Call_047_7c52                        ; $7faa: $d4 $52 $7c
    nop                                           ; $7fad: $00
    cpl                                           ; $7fae: $2f
    ld b, [hl]                                    ; $7faf: $46
    pop de                                        ; $7fb0: $d1
    push bc                                       ; $7fb1: $c5
    and b                                         ; $7fb2: $a0
    rrca                                          ; $7fb3: $0f
    pop bc                                        ; $7fb4: $c1
    ccf                                           ; $7fb5: $3f
    ld h, l                                       ; $7fb6: $65
    cp h                                          ; $7fb7: $bc
    db $db                                        ; $7fb8: $db
    rst $28                                       ; $7fb9: $ef
    ld a, h                                       ; $7fba: $7c
    ld [c], a                                     ; $7fbb: $e2
    sbc $bd                                       ; $7fbc: $de $bd
    ldh a, [$ca]                                  ; $7fbe: $f0 $ca
    dec e                                         ; $7fc0: $1d
    rlca                                          ; $7fc1: $07
    cpl                                           ; $7fc2: $2f
    ld b, [hl]                                    ; $7fc3: $46
    pop de                                        ; $7fc4: $d1
    push bc                                       ; $7fc5: $c5
    ld [hl+], a                                   ; $7fc6: $22
    and e                                         ; $7fc7: $a3
    xor b                                         ; $7fc8: $a8
    jp c, $e37c                                   ; $7fc9: $da $7c $e3

    db $dd                                        ; $7fcc: $dd
    ld a, [hl]                                    ; $7fcd: $7e
    rst $20                                       ; $7fce: $e7
    inc de                                        ; $7fcf: $13
    rst $30                                       ; $7fd0: $f7
    xor $85                                       ; $7fd1: $ee $85
    ld d, a                                       ; $7fd3: $57
    xor $38                                       ; $7fd4: $ee $38
    nop                                           ; $7fd6: $00
    ld d, a                                       ; $7fd7: $57
    or c                                          ; $7fd8: $b1
    inc sp                                        ; $7fd9: $33
    ld [$deaa], sp                                ; $7fda: $08 $aa $de
    ret                                           ; $7fdd: $c9


    call nc, $cb12                                ; $7fde: $d4 $12 $cb
    dec bc                                        ; $7fe1: $0b
    xor e                                         ; $7fe2: $ab
    dec de                                        ; $7fe3: $1b
    sbc c                                         ; $7fe4: $99
    jp hl                                         ; $7fe5: $e9


    ld de, $5006                                  ; $7fe6: $11 $06 $50
    cp h                                          ; $7fe9: $bc
    db $db                                        ; $7fea: $db
    rst $28                                       ; $7feb: $ef
    ld a, h                                       ; $7fec: $7c
    ld [c], a                                     ; $7fed: $e2
    sbc $bd                                       ; $7fee: $de $bd
    ldh a, [$ca]                                  ; $7ff0: $f0 $ca
    dec e                                         ; $7ff2: $1d
    rlca                                          ; $7ff3: $07
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
