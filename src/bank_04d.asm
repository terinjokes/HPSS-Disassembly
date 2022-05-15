; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $04d", ROMX[$4000], BANK[$4d]

    ld c, l                                       ; $4000: $4d
    nop                                           ; $4001: $00
    sub e                                         ; $4002: $93
    inc h                                         ; $4003: $24
    nop                                           ; $4004: $00
    and c                                         ; $4005: $a1
    inc h                                         ; $4006: $24
    nop                                           ; $4007: $00
    xor [hl]                                      ; $4008: $ae
    inc h                                         ; $4009: $24
    nop                                           ; $400a: $00
    ret                                           ; $400b: $c9


    inc h                                         ; $400c: $24
    nop                                           ; $400d: $00
    pop de                                        ; $400e: $d1
    inc h                                         ; $400f: $24
    nop                                           ; $4010: $00
    push de                                       ; $4011: $d5
    inc h                                         ; $4012: $24
    nop                                           ; $4013: $00
    db $db                                        ; $4014: $db
    inc h                                         ; $4015: $24
    nop                                           ; $4016: $00
    rst $18                                       ; $4017: $df
    inc h                                         ; $4018: $24
    nop                                           ; $4019: $00
    ld [$0024], a                                 ; $401a: $ea $24 $00
    push af                                       ; $401d: $f5
    inc h                                         ; $401e: $24
    nop                                           ; $401f: $00
    cp $24                                        ; $4020: $fe $24
    nop                                           ; $4022: $00
    rlca                                          ; $4023: $07
    dec h                                         ; $4024: $25
    nop                                           ; $4025: $00
    ld de, $0025                                  ; $4026: $11 $25 $00
    inc e                                         ; $4029: $1c
    dec h                                         ; $402a: $25
    nop                                           ; $402b: $00
    daa                                           ; $402c: $27
    dec h                                         ; $402d: $25
    nop                                           ; $402e: $00
    ld [hl-], a                                   ; $402f: $32
    dec h                                         ; $4030: $25
    nop                                           ; $4031: $00
    ld a, $25                                     ; $4032: $3e $25
    nop                                           ; $4034: $00
    ld c, d                                       ; $4035: $4a
    dec h                                         ; $4036: $25
    nop                                           ; $4037: $00
    ld d, a                                       ; $4038: $57
    dec h                                         ; $4039: $25
    nop                                           ; $403a: $00
    ld h, b                                       ; $403b: $60
    dec h                                         ; $403c: $25
    nop                                           ; $403d: $00
    ld l, c                                       ; $403e: $69
    dec h                                         ; $403f: $25
    nop                                           ; $4040: $00
    ld [hl], e                                    ; $4041: $73
    dec h                                         ; $4042: $25
    nop                                           ; $4043: $00
    add b                                         ; $4044: $80
    dec h                                         ; $4045: $25
    nop                                           ; $4046: $00
    adc l                                         ; $4047: $8d
    dec h                                         ; $4048: $25
    nop                                           ; $4049: $00
    sbc c                                         ; $404a: $99
    dec h                                         ; $404b: $25
    nop                                           ; $404c: $00
    and [hl]                                      ; $404d: $a6
    dec h                                         ; $404e: $25
    nop                                           ; $404f: $00
    or d                                          ; $4050: $b2
    dec h                                         ; $4051: $25
    nop                                           ; $4052: $00
    call z, $0025                                 ; $4053: $cc $25 $00
    ld sp, hl                                     ; $4056: $f9
    dec h                                         ; $4057: $25
    nop                                           ; $4058: $00
    ld [$0026], sp                                ; $4059: $08 $26 $00
    rra                                           ; $405c: $1f
    ld h, $00                                     ; $405d: $26 $00
    dec sp                                        ; $405f: $3b
    ld h, $00                                     ; $4060: $26 $00
    or l                                          ; $4062: $b5
    ld h, $00                                     ; $4063: $26 $00
    ld a, [$0026]                                 ; $4065: $fa $26 $00
    ld a, [bc]                                    ; $4068: $0a
    daa                                           ; $4069: $27
    nop                                           ; $406a: $00
    inc hl                                        ; $406b: $23
    daa                                           ; $406c: $27
    nop                                           ; $406d: $00
    ld a, [hl-]                                   ; $406e: $3a
    daa                                           ; $406f: $27
    nop                                           ; $4070: $00
    ld d, h                                       ; $4071: $54
    daa                                           ; $4072: $27
    nop                                           ; $4073: $00
    ld l, a                                       ; $4074: $6f
    daa                                           ; $4075: $27
    nop                                           ; $4076: $00
    sub e                                         ; $4077: $93
    daa                                           ; $4078: $27
    nop                                           ; $4079: $00
    or e                                          ; $407a: $b3
    daa                                           ; $407b: $27
    nop                                           ; $407c: $00
    rst $10                                       ; $407d: $d7
    daa                                           ; $407e: $27
    nop                                           ; $407f: $00
    push af                                       ; $4080: $f5
    daa                                           ; $4081: $27
    nop                                           ; $4082: $00
    db $10                                        ; $4083: $10
    jr z, jr_04d_4086                             ; $4084: $28 $00

jr_04d_4086:
    ld a, [de]                                    ; $4086: $1a
    jr z, jr_04d_4089                             ; $4087: $28 $00

jr_04d_4089:
    scf                                           ; $4089: $37
    jr z, jr_04d_408c                             ; $408a: $28 $00

jr_04d_408c:
    ld d, b                                       ; $408c: $50
    jr z, jr_04d_408f                             ; $408d: $28 $00

jr_04d_408f:
    ld h, b                                       ; $408f: $60
    jr z, jr_04d_4092                             ; $4090: $28 $00

jr_04d_4092:
    adc l                                         ; $4092: $8d
    jr z, jr_04d_4095                             ; $4093: $28 $00

jr_04d_4095:
    or c                                          ; $4095: $b1
    jr z, jr_04d_4098                             ; $4096: $28 $00

jr_04d_4098:
    jp nz, RST_28                                 ; $4098: $c2 $28 $00

    call z, RST_28                                ; $409b: $cc $28 $00
    db $db                                        ; $409e: $db
    jr z, jr_04d_40a1                             ; $409f: $28 $00

jr_04d_40a1:
    pop af                                        ; $40a1: $f1
    jr z, jr_04d_40a4                             ; $40a2: $28 $00

jr_04d_40a4:
    rla                                           ; $40a4: $17
    add hl, hl                                    ; $40a5: $29
    nop                                           ; $40a6: $00
    ld e, d                                       ; $40a7: $5a
    add hl, hl                                    ; $40a8: $29
    nop                                           ; $40a9: $00
    adc c                                         ; $40aa: $89
    add hl, hl                                    ; $40ab: $29
    nop                                           ; $40ac: $00
    xor b                                         ; $40ad: $a8
    add hl, hl                                    ; $40ae: $29
    nop                                           ; $40af: $00
    ret                                           ; $40b0: $c9


    add hl, hl                                    ; $40b1: $29
    nop                                           ; $40b2: $00
    ld [$0029], a                                 ; $40b3: $ea $29 $00
    jr @+$2c                                      ; $40b6: $18 $2a

    nop                                           ; $40b8: $00
    dec [hl]                                      ; $40b9: $35
    ld a, [hl+]                                   ; $40ba: $2a
    nop                                           ; $40bb: $00
    ld c, c                                       ; $40bc: $49
    ld a, [hl+]                                   ; $40bd: $2a
    nop                                           ; $40be: $00
    ld l, [hl]                                    ; $40bf: $6e
    ld a, [hl+]                                   ; $40c0: $2a
    nop                                           ; $40c1: $00
    ld a, a                                       ; $40c2: $7f
    ld a, [hl+]                                   ; $40c3: $2a
    nop                                           ; $40c4: $00
    jp nz, $002a                                  ; $40c5: $c2 $2a $00

    call c, $002a                                 ; $40c8: $dc $2a $00
    inc l                                         ; $40cb: $2c
    dec hl                                        ; $40cc: $2b
    nop                                           ; $40cd: $00
    ld a, [hl-]                                   ; $40ce: $3a
    dec hl                                        ; $40cf: $2b
    nop                                           ; $40d0: $00
    ld h, h                                       ; $40d1: $64
    dec hl                                        ; $40d2: $2b
    nop                                           ; $40d3: $00
    ld [hl], a                                    ; $40d4: $77
    dec hl                                        ; $40d5: $2b
    nop                                           ; $40d6: $00
    add e                                         ; $40d7: $83
    dec hl                                        ; $40d8: $2b
    nop                                           ; $40d9: $00
    sub e                                         ; $40da: $93
    dec hl                                        ; $40db: $2b
    nop                                           ; $40dc: $00
    cp h                                          ; $40dd: $bc
    dec hl                                        ; $40de: $2b
    nop                                           ; $40df: $00
    call nc, $002b                                ; $40e0: $d4 $2b $00
    ret c                                         ; $40e3: $d8

    dec hl                                        ; $40e4: $2b
    nop                                           ; $40e5: $00
    db $dd                                        ; $40e6: $dd
    dec hl                                        ; $40e7: $2b
    nop                                           ; $40e8: $00
    ld [c], a                                     ; $40e9: $e2
    dec hl                                        ; $40ea: $2b
    nop                                           ; $40eb: $00
    dec d                                         ; $40ec: $15
    inc l                                         ; $40ed: $2c
    nop                                           ; $40ee: $00
    dec a                                         ; $40ef: $3d
    inc l                                         ; $40f0: $2c
    nop                                           ; $40f1: $00
    ld e, a                                       ; $40f2: $5f
    inc l                                         ; $40f3: $2c
    nop                                           ; $40f4: $00
    xor b                                         ; $40f5: $a8
    inc l                                         ; $40f6: $2c
    nop                                           ; $40f7: $00
    push de                                       ; $40f8: $d5
    inc l                                         ; $40f9: $2c
    nop                                           ; $40fa: $00
    db $fd                                        ; $40fb: $fd
    inc l                                         ; $40fc: $2c
    nop                                           ; $40fd: $00
    jr z, jr_04d_412d                             ; $40fe: $28 $2d

    nop                                           ; $4100: $00
    ld c, d                                       ; $4101: $4a
    dec l                                         ; $4102: $2d
    nop                                           ; $4103: $00
    sbc b                                         ; $4104: $98
    dec l                                         ; $4105: $2d
    nop                                           ; $4106: $00
    and h                                         ; $4107: $a4
    dec l                                         ; $4108: $2d
    nop                                           ; $4109: $00
    ret                                           ; $410a: $c9


    dec l                                         ; $410b: $2d
    nop                                           ; $410c: $00
    push de                                       ; $410d: $d5
    dec l                                         ; $410e: $2d
    nop                                           ; $410f: $00
    rst $30                                       ; $4110: $f7
    dec l                                         ; $4111: $2d
    nop                                           ; $4112: $00
    dec c                                         ; $4113: $0d
    ld l, $00                                     ; $4114: $2e $00
    ld a, [hl-]                                   ; $4116: $3a
    ld l, $00                                     ; $4117: $2e $00
    ld a, a                                       ; $4119: $7f
    ld l, $00                                     ; $411a: $2e $00
    and e                                         ; $411c: $a3
    ld l, $00                                     ; $411d: $2e $00
    sbc $2e                                       ; $411f: $de $2e
    nop                                           ; $4121: $00
    dec a                                         ; $4122: $3d
    cpl                                           ; $4123: $2f
    nop                                           ; $4124: $00
    ld d, b                                       ; $4125: $50
    cpl                                           ; $4126: $2f
    nop                                           ; $4127: $00
    xor d                                         ; $4128: $aa
    cpl                                           ; $4129: $2f
    nop                                           ; $412a: $00
    add $2f                                       ; $412b: $c6 $2f

jr_04d_412d:
    nop                                           ; $412d: $00
    db $f4                                        ; $412e: $f4
    cpl                                           ; $412f: $2f
    nop                                           ; $4130: $00
    ld c, $30                                     ; $4131: $0e $30
    nop                                           ; $4133: $00
    ld a, [de]                                    ; $4134: $1a
    jr nc, jr_04d_4137                            ; $4135: $30 $00

jr_04d_4137:
    ld b, h                                       ; $4137: $44
    jr nc, jr_04d_413a                            ; $4138: $30 $00

jr_04d_413a:
    ld a, h                                       ; $413a: $7c
    jr nc, jr_04d_413d                            ; $413b: $30 $00

jr_04d_413d:
    ld a, a                                       ; $413d: $7f
    jr nc, jr_04d_4140                            ; $413e: $30 $00

jr_04d_4140:
    xor d                                         ; $4140: $aa
    jr nc, jr_04d_4143                            ; $4141: $30 $00

jr_04d_4143:
    db $d3                                        ; $4143: $d3
    jr nc, jr_04d_4146                            ; $4144: $30 $00

jr_04d_4146:
    ld [c], a                                     ; $4146: $e2
    jr nc, jr_04d_4149                            ; $4147: $30 $00

jr_04d_4149:
    cp $30                                        ; $4149: $fe $30
    nop                                           ; $414b: $00
    inc e                                         ; $414c: $1c
    ld sp, $4400                                  ; $414d: $31 $00 $44
    ld sp, $5c00                                  ; $4150: $31 $00 $5c
    ld sp, $b600                                  ; $4153: $31 $00 $b6
    ld sp, $d900                                  ; $4156: $31 $00 $d9
    ld sp, $e600                                  ; $4159: $31 $00 $e6
    ld sp, $1600                                  ; $415c: $31 $00 $16
    ld [hl-], a                                   ; $415f: $32
    nop                                           ; $4160: $00
    ld [hl+], a                                   ; $4161: $22
    ld [hl-], a                                   ; $4162: $32
    nop                                           ; $4163: $00
    ld l, b                                       ; $4164: $68
    ld [hl-], a                                   ; $4165: $32
    nop                                           ; $4166: $00
    adc [hl]                                      ; $4167: $8e
    ld [hl-], a                                   ; $4168: $32
    nop                                           ; $4169: $00
    sbc a                                         ; $416a: $9f
    ld [hl-], a                                   ; $416b: $32
    nop                                           ; $416c: $00
    cp d                                          ; $416d: $ba
    ld [hl-], a                                   ; $416e: $32
    nop                                           ; $416f: $00
    db $d3                                        ; $4170: $d3
    ld [hl-], a                                   ; $4171: $32
    nop                                           ; $4172: $00
    db $f4                                        ; $4173: $f4
    ld [hl-], a                                   ; $4174: $32
    nop                                           ; $4175: $00
    dec b                                         ; $4176: $05
    inc sp                                        ; $4177: $33
    nop                                           ; $4178: $00
    inc l                                         ; $4179: $2c
    inc sp                                        ; $417a: $33
    nop                                           ; $417b: $00
    inc [hl]                                      ; $417c: $34
    inc sp                                        ; $417d: $33
    nop                                           ; $417e: $00
    ld c, c                                       ; $417f: $49
    inc sp                                        ; $4180: $33
    nop                                           ; $4181: $00
    ld d, c                                       ; $4182: $51
    inc sp                                        ; $4183: $33
    nop                                           ; $4184: $00
    ld e, d                                       ; $4185: $5a
    inc sp                                        ; $4186: $33
    nop                                           ; $4187: $00
    ld h, h                                       ; $4188: $64
    inc sp                                        ; $4189: $33
    nop                                           ; $418a: $00
    ld [hl], c                                    ; $418b: $71
    inc sp                                        ; $418c: $33
    nop                                           ; $418d: $00
    ld a, l                                       ; $418e: $7d
    inc sp                                        ; $418f: $33
    nop                                           ; $4190: $00
    adc d                                         ; $4191: $8a
    inc sp                                        ; $4192: $33
    nop                                           ; $4193: $00
    sbc e                                         ; $4194: $9b
    inc sp                                        ; $4195: $33
    nop                                           ; $4196: $00
    and c                                         ; $4197: $a1
    inc sp                                        ; $4198: $33
    nop                                           ; $4199: $00
    xor c                                         ; $419a: $a9
    inc sp                                        ; $419b: $33
    nop                                           ; $419c: $00
    ret nc                                        ; $419d: $d0

    inc sp                                        ; $419e: $33
    nop                                           ; $419f: $00
    ld c, $34                                     ; $41a0: $0e $34
    nop                                           ; $41a2: $00
    ld [hl], $34                                  ; $41a3: $36 $34
    nop                                           ; $41a5: $00
    ld b, l                                       ; $41a6: $45
    inc [hl]                                      ; $41a7: $34
    nop                                           ; $41a8: $00
    ld e, e                                       ; $41a9: $5b
    inc [hl]                                      ; $41aa: $34
    nop                                           ; $41ab: $00
    ld l, e                                       ; $41ac: $6b
    inc [hl]                                      ; $41ad: $34
    nop                                           ; $41ae: $00
    adc [hl]                                      ; $41af: $8e
    inc [hl]                                      ; $41b0: $34
    nop                                           ; $41b1: $00
    or l                                          ; $41b2: $b5
    inc [hl]                                      ; $41b3: $34
    nop                                           ; $41b4: $00
    ret                                           ; $41b5: $c9


    inc [hl]                                      ; $41b6: $34
    nop                                           ; $41b7: $00
    ei                                            ; $41b8: $fb
    inc [hl]                                      ; $41b9: $34
    nop                                           ; $41ba: $00
    nop                                           ; $41bb: $00
    dec [hl]                                      ; $41bc: $35
    nop                                           ; $41bd: $00
    rla                                           ; $41be: $17
    dec [hl]                                      ; $41bf: $35
    nop                                           ; $41c0: $00
    ld c, b                                       ; $41c1: $48
    dec [hl]                                      ; $41c2: $35
    nop                                           ; $41c3: $00
    ld h, b                                       ; $41c4: $60
    dec [hl]                                      ; $41c5: $35
    nop                                           ; $41c6: $00
    add d                                         ; $41c7: $82
    dec [hl]                                      ; $41c8: $35
    nop                                           ; $41c9: $00
    sbc c                                         ; $41ca: $99
    dec [hl]                                      ; $41cb: $35
    nop                                           ; $41cc: $00
    or a                                          ; $41cd: $b7
    dec [hl]                                      ; $41ce: $35
    nop                                           ; $41cf: $00
    adc $35                                       ; $41d0: $ce $35
    nop                                           ; $41d2: $00
    ld [c], a                                     ; $41d3: $e2
    dec [hl]                                      ; $41d4: $35
    nop                                           ; $41d5: $00
    ld [$0035], a                                 ; $41d6: $ea $35 $00
    ld bc, $0036                                  ; $41d9: $01 $36 $00
    ld a, [de]                                    ; $41dc: $1a
    ld [hl], $00                                  ; $41dd: $36 $00
    inc h                                         ; $41df: $24
    ld [hl], $00                                  ; $41e0: $36 $00
    dec sp                                        ; $41e2: $3b
    ld [hl], $00                                  ; $41e3: $36 $00
    ld c, d                                       ; $41e5: $4a
    ld [hl], $00                                  ; $41e6: $36 $00
    ld [hl], e                                    ; $41e8: $73
    ld [hl], $00                                  ; $41e9: $36 $00
    and e                                         ; $41eb: $a3
    ld [hl], $00                                  ; $41ec: $36 $00
    call c, $0036                                 ; $41ee: $dc $36 $00
    ld [bc], a                                    ; $41f1: $02
    scf                                           ; $41f2: $37
    nop                                           ; $41f3: $00
    jr z, jr_04d_422d                             ; $41f4: $28 $37

    nop                                           ; $41f6: $00
    ccf                                           ; $41f7: $3f
    scf                                           ; $41f8: $37
    nop                                           ; $41f9: $00
    ld d, a                                       ; $41fa: $57
    scf                                           ; $41fb: $37
    nop                                           ; $41fc: $00
    ld [hl], c                                    ; $41fd: $71
    scf                                           ; $41fe: $37
    nop                                           ; $41ff: $00
    adc e                                         ; $4200: $8b
    scf                                           ; $4201: $37
    nop                                           ; $4202: $00
    and d                                         ; $4203: $a2
    scf                                           ; $4204: $37
    nop                                           ; $4205: $00
    cp a                                          ; $4206: $bf
    scf                                           ; $4207: $37
    nop                                           ; $4208: $00
    pop de                                        ; $4209: $d1
    scf                                           ; $420a: $37
    nop                                           ; $420b: $00
    ld hl, sp+$37                                 ; $420c: $f8 $37
    nop                                           ; $420e: $00
    ld de, $0038                                  ; $420f: $11 $38 $00
    inc sp                                        ; $4212: $33
    jr c, jr_04d_4215                             ; $4213: $38 $00

jr_04d_4215:
    ld b, [hl]                                    ; $4215: $46
    jr c, jr_04d_4218                             ; $4216: $38 $00

jr_04d_4218:
    ld d, l                                       ; $4218: $55
    jr c, jr_04d_421b                             ; $4219: $38 $00

jr_04d_421b:
    ld h, h                                       ; $421b: $64
    jr c, jr_04d_421e                             ; $421c: $38 $00

jr_04d_421e:
    ld l, l                                       ; $421e: $6d
    jr c, jr_04d_4221                             ; $421f: $38 $00

jr_04d_4221:
    adc c                                         ; $4221: $89
    jr c, jr_04d_4224                             ; $4222: $38 $00

jr_04d_4224:
    srl b                                         ; $4224: $cb $38
    nop                                           ; $4226: $00
    and $38                                       ; $4227: $e6 $38
    nop                                           ; $4229: $00
    inc b                                         ; $422a: $04
    add hl, sp                                    ; $422b: $39
    nop                                           ; $422c: $00

jr_04d_422d:
    db $10                                        ; $422d: $10
    add hl, sp                                    ; $422e: $39
    nop                                           ; $422f: $00
    ld [hl+], a                                   ; $4230: $22
    add hl, sp                                    ; $4231: $39
    nop                                           ; $4232: $00
    dec [hl]                                      ; $4233: $35
    add hl, sp                                    ; $4234: $39
    nop                                           ; $4235: $00
    ld c, l                                       ; $4236: $4d
    add hl, sp                                    ; $4237: $39
    nop                                           ; $4238: $00
    ld h, c                                       ; $4239: $61
    add hl, sp                                    ; $423a: $39
    nop                                           ; $423b: $00
    ld a, l                                       ; $423c: $7d
    add hl, sp                                    ; $423d: $39
    nop                                           ; $423e: $00
    adc h                                         ; $423f: $8c
    add hl, sp                                    ; $4240: $39
    nop                                           ; $4241: $00
    or e                                          ; $4242: $b3
    add hl, sp                                    ; $4243: $39
    nop                                           ; $4244: $00
    jp Jump_000_0039                              ; $4245: $c3 $39 $00


    db $db                                        ; $4248: $db
    add hl, sp                                    ; $4249: $39
    nop                                           ; $424a: $00
    db $10                                        ; $424b: $10
    ld a, [hl-]                                   ; $424c: $3a
    nop                                           ; $424d: $00
    inc hl                                        ; $424e: $23
    ld a, [hl-]                                   ; $424f: $3a
    nop                                           ; $4250: $00
    ld c, c                                       ; $4251: $49
    ld a, [hl-]                                   ; $4252: $3a
    nop                                           ; $4253: $00
    ld d, a                                       ; $4254: $57
    ld a, [hl-]                                   ; $4255: $3a
    nop                                           ; $4256: $00
    ld l, d                                       ; $4257: $6a
    ld a, [hl-]                                   ; $4258: $3a
    nop                                           ; $4259: $00
    adc c                                         ; $425a: $89
    ld a, [hl-]                                   ; $425b: $3a
    nop                                           ; $425c: $00
    cp h                                          ; $425d: $bc
    ld a, [hl-]                                   ; $425e: $3a
    nop                                           ; $425f: $00
    rst $00                                       ; $4260: $c7
    ld a, [hl-]                                   ; $4261: $3a
    nop                                           ; $4262: $00
    ld [bc], a                                    ; $4263: $02
    dec sp                                        ; $4264: $3b
    nop                                           ; $4265: $00
    inc d                                         ; $4266: $14
    dec sp                                        ; $4267: $3b
    nop                                           ; $4268: $00
    ld e, h                                       ; $4269: $5c
    dec sp                                        ; $426a: $3b
    nop                                           ; $426b: $00
    add c                                         ; $426c: $81
    dec sp                                        ; $426d: $3b
    nop                                           ; $426e: $00
    adc e                                         ; $426f: $8b
    dec sp                                        ; $4270: $3b
    nop                                           ; $4271: $00
    xor h                                         ; $4272: $ac
    dec sp                                        ; $4273: $3b
    nop                                           ; $4274: $00
    push de                                       ; $4275: $d5
    dec sp                                        ; $4276: $3b
    nop                                           ; $4277: $00
    reti                                          ; $4278: $d9


    dec sp                                        ; $4279: $3b
    nop                                           ; $427a: $00
    di                                            ; $427b: $f3
    dec sp                                        ; $427c: $3b
    nop                                           ; $427d: $00
    cp $3b                                        ; $427e: $fe $3b
    nop                                           ; $4280: $00
    rla                                           ; $4281: $17
    inc a                                         ; $4282: $3c
    nop                                           ; $4283: $00
    jr nz, @+$3e                                  ; $4284: $20 $3c

    nop                                           ; $4286: $00
    add hl, hl                                    ; $4287: $29
    inc a                                         ; $4288: $3c
    nop                                           ; $4289: $00
    jp Jump_000_003c                              ; $428a: $c3 $3c $00


    ei                                            ; $428d: $fb
    inc a                                         ; $428e: $3c
    nop                                           ; $428f: $00
    dec sp                                        ; $4290: $3b
    dec a                                         ; $4291: $3d
    nop                                           ; $4292: $00
    ld c, [hl]                                    ; $4293: $4e
    dec a                                         ; $4294: $3d
    nop                                           ; $4295: $00
    ld [hl], b                                    ; $4296: $70
    dec a                                         ; $4297: $3d
    nop                                           ; $4298: $00
    and d                                         ; $4299: $a2
    dec a                                         ; $429a: $3d
    nop                                           ; $429b: $00
    cp a                                          ; $429c: $bf
    dec a                                         ; $429d: $3d
    nop                                           ; $429e: $00
    inc h                                         ; $429f: $24
    ld a, $00                                     ; $42a0: $3e $00
    ld [hl], b                                    ; $42a2: $70
    ld a, $00                                     ; $42a3: $3e $00
    xor c                                         ; $42a5: $a9
    ld a, $00                                     ; $42a6: $3e $00
    pop de                                        ; $42a8: $d1
    ld a, $00                                     ; $42a9: $3e $00
    inc bc                                        ; $42ab: $03
    ccf                                           ; $42ac: $3f
    nop                                           ; $42ad: $00
    jr jr_04d_42ef                                ; $42ae: $18 $3f

    nop                                           ; $42b0: $00
    ld h, [hl]                                    ; $42b1: $66
    ccf                                           ; $42b2: $3f
    nop                                           ; $42b3: $00
    ld a, c                                       ; $42b4: $79
    ccf                                           ; $42b5: $3f
    nop                                           ; $42b6: $00
    adc l                                         ; $42b7: $8d
    ccf                                           ; $42b8: $3f
    nop                                           ; $42b9: $00
    xor d                                         ; $42ba: $aa
    ccf                                           ; $42bb: $3f
    nop                                           ; $42bc: $00
    jp z, $013f                                   ; $42bd: $ca $3f $01

    ld bc, $0100                                  ; $42c0: $01 $00 $01
    jr nz, jr_04d_42c5                            ; $42c3: $20 $00

jr_04d_42c5:
    ld bc, $0034                                  ; $42c5: $01 $34 $00
    ld bc, $003c                                  ; $42c8: $01 $3c $00
    ld bc, $0061                                  ; $42cb: $01 $61 $00
    ld bc, $0066                                  ; $42ce: $01 $66 $00
    ld bc, $006b                                  ; $42d1: $01 $6b $00
    ld bc, $00a5                                  ; $42d4: $01 $a5 $00
    ld bc, $00bb                                  ; $42d7: $01 $bb $00
    ld bc, $00e9                                  ; $42da: $01 $e9 $00
    ld bc, $00f4                                  ; $42dd: $01 $f4 $00
    ld bc, $0125                                  ; $42e0: $01 $25 $01
    ld bc, $012a                                  ; $42e3: $01 $2a $01
    ld bc, HeaderManufacturerCode                 ; $42e6: $01 $3f $01
    ld bc, $0151                                  ; $42e9: $01 $51 $01
    ld bc, $017b                                  ; $42ec: $01 $7b $01

jr_04d_42ef:
    ld bc, $01b5                                  ; $42ef: $01 $b5 $01
    ld bc, $01c9                                  ; $42f2: $01 $c9 $01
    ld bc, $01d4                                  ; $42f5: $01 $d4 $01
    ld bc, $01ea                                  ; $42f8: $01 $ea $01
    ld bc, $0206                                  ; $42fb: $01 $06 $02
    ld bc, $0226                                  ; $42fe: $01 $26 $02
    ld bc, $0240                                  ; $4301: $01 $40 $02
    ld bc, $0271                                  ; $4304: $01 $71 $02
    ld bc, $0282                                  ; $4307: $01 $82 $02
    ld bc, $02ec                                  ; $430a: $01 $ec $02
    ld bc, $02f6                                  ; $430d: $01 $f6 $02
    ld bc, $0310                                  ; $4310: $01 $10 $03
    ld bc, $031f                                  ; $4313: $01 $1f $03
    ld bc, $033b                                  ; $4316: $01 $3b $03
    ld bc, $034a                                  ; $4319: $01 $4a $03
    ld bc, $0377                                  ; $431c: $01 $77 $03
    ld bc, $0388                                  ; $431f: $01 $88 $03
    ld bc, $03a3                                  ; $4322: $01 $a3 $03
    ld bc, $0404                                  ; $4325: $01 $04 $04
    ld bc, $0416                                  ; $4328: $01 $16 $04

Call_04d_432b:
    ld bc, $042b                                  ; $432b: $01 $2b $04
    ld bc, $0449                                  ; $432e: $01 $49 $04
    ld bc, $045b                                  ; $4331: $01 $5b $04
    ld bc, $0485                                  ; $4334: $01 $85 $04
    ld bc, $0497                                  ; $4337: $01 $97 $04
    ld bc, $04b7                                  ; $433a: $01 $b7 $04
    ld bc, $04cf                                  ; $433d: $01 $cf $04
    ld bc, $04ed                                  ; $4340: $01 $ed $04
    ld bc, $0511                                  ; $4343: $01 $11 $05

Jump_04d_4346:
    ld bc, $052b                                  ; $4346: $01 $2b $05
    ld bc, $05d1                                  ; $4349: $01 $d1 $05
    ld bc, $05e4                                  ; $434c: $01 $e4 $05
    ld bc, $0646                                  ; $434f: $01 $46 $06
    ld bc, $0657                                  ; $4352: $01 $57 $06
    ld bc, $0670                                  ; $4355: $01 $70 $06
    ld bc, $067a                                  ; $4358: $01 $7a $06
    ld bc, $06ca                                  ; $435b: $01 $ca $06
    ld bc, $0723                                  ; $435e: $01 $23 $07
    ld bc, $0745                                  ; $4361: $01 $45 $07
    ld bc, $075a                                  ; $4364: $01 $5a $07
    ld bc, $0772                                  ; $4367: $01 $72 $07
    ld bc, $078b                                  ; $436a: $01 $8b $07
    ld bc, $07a0                                  ; $436d: $01 $a0 $07
    ld bc, $07b4                                  ; $4370: $01 $b4 $07
    ld bc, $07cd                                  ; $4373: $01 $cd $07
    ld bc, $07e1                                  ; $4376: $01 $e1 $07
    ld bc, $07ee                                  ; $4379: $01 $ee $07
    ld bc, $07f7                                  ; $437c: $01 $f7 $07
    ld bc, $0802                                  ; $437f: $01 $02 $08
    ld bc, $0818                                  ; $4382: $01 $18 $08
    ld bc, $0845                                  ; $4385: $01 $45 $08
    ld bc, $0876                                  ; $4388: $01 $76 $08
    ld bc, $08a3                                  ; $438b: $01 $a3 $08
    ld bc, $08b1                                  ; $438e: $01 $b1 $08
    ld bc, $08da                                  ; $4391: $01 $da $08
    ld bc, $0906                                  ; $4394: $01 $06 $09
    ld bc, $0930                                  ; $4397: $01 $30 $09
    ld bc, $0944                                  ; $439a: $01 $44 $09
    ld bc, $0954                                  ; $439d: $01 $54 $09
    ld bc, $0962                                  ; $43a0: $01 $62 $09
    ld bc, $0975                                  ; $43a3: $01 $75 $09
    ld bc, $0984                                  ; $43a6: $01 $84 $09
    ld bc, $09a0                                  ; $43a9: $01 $a0 $09
    ld bc, $09af                                  ; $43ac: $01 $af $09
    ld bc, $09bf                                  ; $43af: $01 $bf $09
    ld bc, $09d5                                  ; $43b2: $01 $d5 $09
    ld bc, $09f6                                  ; $43b5: $01 $f6 $09
    ld bc, $0a37                                  ; $43b8: $01 $37 $0a
    ld bc, $0a50                                  ; $43bb: $01 $50 $0a
    ld bc, $0a53                                  ; $43be: $01 $53 $0a
    ld bc, $0a78                                  ; $43c1: $01 $78 $0a
    ld bc, $0a8e                                  ; $43c4: $01 $8e $0a
    ld bc, $0aac                                  ; $43c7: $01 $ac $0a
    ld bc, $0ab9                                  ; $43ca: $01 $b9 $0a
    ld bc, $0acd                                  ; $43cd: $01 $cd $0a
    ld bc, $0af6                                  ; $43d0: $01 $f6 $0a
    ld bc, $0b6f                                  ; $43d3: $01 $6f $0b
    ld bc, $0b80                                  ; $43d6: $01 $80 $0b
    ld bc, $0b8d                                  ; $43d9: $01 $8d $0b
    ld bc, $0b9e                                  ; $43dc: $01 $9e $0b
    ld bc, $0bb2                                  ; $43df: $01 $b2 $0b
    ld bc, $0be3                                  ; $43e2: $01 $e3 $0b
    ld bc, $0c05                                  ; $43e5: $01 $05 $0c
    ld bc, $0c25                                  ; $43e8: $01 $25 $0c
    ld bc, $0c4c                                  ; $43eb: $01 $4c $0c
    ld bc, $0c8e                                  ; $43ee: $01 $8e $0c
    ld bc, $0cdc                                  ; $43f1: $01 $dc $0c
    ld bc, $0d0b                                  ; $43f4: $01 $0b $0d
    ld bc, $0d46                                  ; $43f7: $01 $46 $0d
    ld bc, $0d74                                  ; $43fa: $01 $74 $0d
    ld bc, $0db7                                  ; $43fd: $01 $b7 $0d
    ld bc, $0dec                                  ; $4400: $01 $ec $0d
    ld bc, $0e1d                                  ; $4403: $01 $1d $0e
    ld bc, $0e5e                                  ; $4406: $01 $5e $0e
    ld bc, $0ea3                                  ; $4409: $01 $a3 $0e
    ld bc, $0ecc                                  ; $440c: $01 $cc $0e
    ld bc, $0ef7                                  ; $440f: $01 $f7 $0e
    ld bc, $0f1b                                  ; $4412: $01 $1b $0f
    ld bc, $0f59                                  ; $4415: $01 $59 $0f
    ld bc, $0f91                                  ; $4418: $01 $91 $0f
    ld bc, $0fd1                                  ; $441b: $01 $d1 $0f
    ld bc, $100f                                  ; $441e: $01 $0f $10
    ld bc, $104b                                  ; $4421: $01 $4b $10
    ld bc, $1083                                  ; $4424: $01 $83 $10
    ld bc, $10b7                                  ; $4427: $01 $b7 $10
    ld bc, $10e4                                  ; $442a: $01 $e4 $10
    ld bc, $111c                                  ; $442d: $01 $1c $11
    ld bc, $1154                                  ; $4430: $01 $54 $11

Call_04d_4433:
    ld bc, $1178                                  ; $4433: $01 $78 $11
    ld bc, $11ad                                  ; $4436: $01 $ad $11
    ld bc, $11e8                                  ; $4439: $01 $e8 $11
    ld bc, $1234                                  ; $443c: $01 $34 $12
    ld bc, $1284                                  ; $443f: $01 $84 $12
    ld bc, $12d0                                  ; $4442: $01 $d0 $12
    ld bc, $12fe                                  ; $4445: $01 $fe $12
    ld bc, $1334                                  ; $4448: $01 $34 $13
    ld bc, $1365                                  ; $444b: $01 $65 $13
    ld bc, $13a6                                  ; $444e: $01 $a6 $13
    ld bc, $13ff                                  ; $4451: $01 $ff $13
    ld bc, $145a                                  ; $4454: $01 $5a $14
    ld bc, $1494                                  ; $4457: $01 $94 $14
    ld bc, $14d5                                  ; $445a: $01 $d5 $14
    ld bc, $1509                                  ; $445d: $01 $09 $15
    ld bc, $1547                                  ; $4460: $01 $47 $15
    ld bc, $1571                                  ; $4463: $01 $71 $15
    ld bc, $159a                                  ; $4466: $01 $9a $15
    ld bc, $15cf                                  ; $4469: $01 $cf $15
    ld bc, $15de                                  ; $446c: $01 $de $15
    ld bc, $15f9                                  ; $446f: $01 $f9 $15
    ld bc, $160e                                  ; $4472: $01 $0e $16
    ld bc, $162f                                  ; $4475: $01 $2f $16
    ld bc, $1652                                  ; $4478: $01 $52 $16
    ld bc, $165b                                  ; $447b: $01 $5b $16
    ld bc, $166c                                  ; $447e: $01 $6c $16
    ld bc, $1672                                  ; $4481: $01 $72 $16
    ld bc, $16a4                                  ; $4484: $01 $a4 $16
    ld bc, $16c6                                  ; $4487: $01 $c6 $16
    ld bc, $16e3                                  ; $448a: $01 $e3 $16
    ld bc, $1709                                  ; $448d: $01 $09 $17
    ld bc, $1719                                  ; $4490: $01 $19 $17
    ld bc, $1722                                  ; $4493: $01 $22 $17
    ld bc, $176c                                  ; $4496: $01 $6c $17
    ld bc, $1790                                  ; $4499: $01 $90 $17
    ld bc, $17b9                                  ; $449c: $01 $b9 $17
    ld bc, $17c6                                  ; $449f: $01 $c6 $17
    ld bc, $17e0                                  ; $44a2: $01 $e0 $17
    ld bc, $17f1                                  ; $44a5: $01 $f1 $17
    ld bc, $180a                                  ; $44a8: $01 $0a $18
    ld bc, $1813                                  ; $44ab: $01 $13 $18
    ld bc, $1828                                  ; $44ae: $01 $28 $18
    ld bc, $183b                                  ; $44b1: $01 $3b $18
    ld bc, $185b                                  ; $44b4: $01 $5b $18
    ld bc, $1867                                  ; $44b7: $01 $67 $18
    ld bc, $1884                                  ; $44ba: $01 $84 $18
    ld bc, $189a                                  ; $44bd: $01 $9a $18
    ld bc, $18da                                  ; $44c0: $01 $da $18
    ld bc, $18ed                                  ; $44c3: $01 $ed $18
    ld bc, $18fe                                  ; $44c6: $01 $fe $18
    ld bc, $1913                                  ; $44c9: $01 $13 $19
    ld bc, $1933                                  ; $44cc: $01 $33 $19
    ld bc, $1961                                  ; $44cf: $01 $61 $19
    ld bc, $1969                                  ; $44d2: $01 $69 $19
    ld bc, $1983                                  ; $44d5: $01 $83 $19
    ld bc, $198f                                  ; $44d8: $01 $8f $19
    ld bc, $19c7                                  ; $44db: $01 $c7 $19
    ld bc, $19e4                                  ; $44de: $01 $e4 $19
    ld bc, $19ec                                  ; $44e1: $01 $ec $19
    ld bc, $1a04                                  ; $44e4: $01 $04 $1a
    ld bc, $1a11                                  ; $44e7: $01 $11 $1a
    ld bc, $1a44                                  ; $44ea: $01 $44 $1a
    ld bc, $1a52                                  ; $44ed: $01 $52 $1a
    ld bc, $1a69                                  ; $44f0: $01 $69 $1a
    ld bc, $1a7f                                  ; $44f3: $01 $7f $1a
    ld bc, $1a8f                                  ; $44f6: $01 $8f $1a
    ld bc, $1ad7                                  ; $44f9: $01 $d7 $1a
    ld bc, $1ae7                                  ; $44fc: $01 $e7 $1a
    ld bc, $1af8                                  ; $44ff: $01 $f8 $1a
    ld bc, $1b01                                  ; $4502: $01 $01 $1b
    ld bc, $1b10                                  ; $4505: $01 $10 $1b
    ld bc, $1b2e                                  ; $4508: $01 $2e $1b
    ld bc, $1b36                                  ; $450b: $01 $36 $1b
    ld bc, $1b3d                                  ; $450e: $01 $3d $1b
    ld bc, $1b48                                  ; $4511: $01 $48 $1b
    ld bc, $1b66                                  ; $4514: $01 $66 $1b
    ld bc, $1b6a                                  ; $4517: $01 $6a $1b
    ld bc, $1b8d                                  ; $451a: $01 $8d $1b
    ld bc, $1bad                                  ; $451d: $01 $ad $1b
    ld bc, $1bba                                  ; $4520: $01 $ba $1b
    ld bc, $1bdb                                  ; $4523: $01 $db $1b
    ld bc, $1bf1                                  ; $4526: $01 $f1 $1b
    ld bc, $1c27                                  ; $4529: $01 $27 $1c
    ld bc, $1c3d                                  ; $452c: $01 $3d $1c
    ld bc, $1c71                                  ; $452f: $01 $71 $1c
    ld bc, $1ca4                                  ; $4532: $01 $a4 $1c
    ld bc, $1cd8                                  ; $4535: $01 $d8 $1c
    ld bc, $1d20                                  ; $4538: $01 $20 $1d
    ld bc, $1d53                                  ; $453b: $01 $53 $1d
    ld bc, $1d80                                  ; $453e: $01 $80 $1d
    ld bc, $1de4                                  ; $4541: $01 $e4 $1d
    ld bc, $1e0d                                  ; $4544: $01 $0d $1e
    ld bc, $1e62                                  ; $4547: $01 $62 $1e
    ld bc, $1e75                                  ; $454a: $01 $75 $1e
    ld bc, $1ea0                                  ; $454d: $01 $a0 $1e
    ld bc, $1f59                                  ; $4550: $01 $59 $1f
    ld bc, $1f88                                  ; $4553: $01 $88 $1f
    ld bc, $1f9d                                  ; $4556: $01 $9d $1f
    ld bc, $1fc7                                  ; $4559: $01 $c7 $1f
    ld bc, $1fea                                  ; $455c: $01 $ea $1f
    ld bc, $1ffe                                  ; $455f: $01 $fe $1f
    ld bc, $2009                                  ; $4562: $01 $09 $20
    ld bc, $204b                                  ; $4565: $01 $4b $20
    ld bc, $2050                                  ; $4568: $01 $50 $20
    ld bc, $206c                                  ; $456b: $01 $6c $20
    ld bc, $20af                                  ; $456e: $01 $af $20
    ld bc, $20d8                                  ; $4571: $01 $d8 $20
    ld bc, $20f6                                  ; $4574: $01 $f6 $20
    ld bc, $2102                                  ; $4577: $01 $02 $21
    ld bc, $212c                                  ; $457a: $01 $2c $21
    ld bc, $2156                                  ; $457d: $01 $56 $21
    ld bc, $2170                                  ; $4580: $01 $70 $21
    ld bc, $219b                                  ; $4583: $01 $9b $21
    ld bc, $21b5                                  ; $4586: $01 $b5 $21
    ld bc, $21d0                                  ; $4589: $01 $d0 $21
    ld bc, $21f0                                  ; $458c: $01 $f0 $21
    ld bc, $221e                                  ; $458f: $01 $1e $22
    ld bc, $2231                                  ; $4592: $01 $31 $22
    ld bc, $225e                                  ; $4595: $01 $5e $22
    ld bc, $2289                                  ; $4598: $01 $89 $22
    ld bc, $2295                                  ; $459b: $01 $95 $22
    ld bc, $22c3                                  ; $459e: $01 $c3 $22
    ld bc, $22e3                                  ; $45a1: $01 $e3 $22
    ld bc, $22ed                                  ; $45a4: $01 $ed $22
    ld bc, $233a                                  ; $45a7: $01 $3a $23
    ld bc, $233f                                  ; $45aa: $01 $3f $23
    ld bc, $23ce                                  ; $45ad: $01 $ce $23
    ld bc, $23dc                                  ; $45b0: $01 $dc $23
    ld bc, $23ec                                  ; $45b3: $01 $ec $23
    ld bc, $240b                                  ; $45b6: $01 $0b $24
    ld bc, $242d                                  ; $45b9: $01 $2d $24
    ld bc, $245e                                  ; $45bc: $01 $5e $24
    ld bc, $24a4                                  ; $45bf: $01 $a4 $24
    ld bc, $24ca                                  ; $45c2: $01 $ca $24
    ld bc, $24e9                                  ; $45c5: $01 $e9 $24
    ld bc, $2532                                  ; $45c8: $01 $32 $25
    ld bc, $2588                                  ; $45cb: $01 $88 $25
    ld bc, $25ae                                  ; $45ce: $01 $ae $25
    ld bc, $25d6                                  ; $45d1: $01 $d6 $25
    ld bc, $25ed                                  ; $45d4: $01 $ed $25
    ld bc, $260e                                  ; $45d7: $01 $0e $26
    ld bc, $2626                                  ; $45da: $01 $26 $26
    ld bc, $264f                                  ; $45dd: $01 $4f $26
    ld bc, $2665                                  ; $45e0: $01 $65 $26
    ld bc, $2689                                  ; $45e3: $01 $89 $26
    ld bc, $26c0                                  ; $45e6: $01 $c0 $26
    ld bc, $26ea                                  ; $45e9: $01 $ea $26
    ld bc, $2709                                  ; $45ec: $01 $09 $27
    ld bc, $2761                                  ; $45ef: $01 $61 $27
    ld bc, $278b                                  ; $45f2: $01 $8b $27
    ld bc, $27ed                                  ; $45f5: $01 $ed $27
    ld bc, $2819                                  ; $45f8: $01 $19 $28
    ld bc, $284b                                  ; $45fb: $01 $4b $28
    ld bc, $287a                                  ; $45fe: $01 $7a $28
    ld bc, $28b6                                  ; $4601: $01 $b6 $28
    ld bc, $28db                                  ; $4604: $01 $db $28
    ld bc, $28f3                                  ; $4607: $01 $f3 $28
    ld bc, $290f                                  ; $460a: $01 $0f $29
    ld bc, $2948                                  ; $460d: $01 $48 $29
    ld bc, $2958                                  ; $4610: $01 $58 $29
    ld bc, $2971                                  ; $4613: $01 $71 $29
    ld bc, $2983                                  ; $4616: $01 $83 $29
    ld bc, $29b5                                  ; $4619: $01 $b5 $29
    ld bc, $29fa                                  ; $461c: $01 $fa $29
    ld bc, $2a15                                  ; $461f: $01 $15 $2a
    ld bc, $2a31                                  ; $4622: $01 $31 $2a
    ld bc, $2a57                                  ; $4625: $01 $57 $2a
    ld bc, $2a78                                  ; $4628: $01 $78 $2a
    ld bc, $2ad8                                  ; $462b: $01 $d8 $2a
    ld bc, $2af5                                  ; $462e: $01 $f5 $2a
    ld bc, $2b2c                                  ; $4631: $01 $2c $2b
    ld bc, $2b55                                  ; $4634: $01 $55 $2b
    ld bc, $2b82                                  ; $4637: $01 $82 $2b
    ld bc, $2bb1                                  ; $463a: $01 $b1 $2b
    ld bc, $2bce                                  ; $463d: $01 $ce $2b
    ld bc, $2c03                                  ; $4640: $01 $03 $2c
    ld bc, $2c24                                  ; $4643: $01 $24 $2c
    ld bc, $2c58                                  ; $4646: $01 $58 $2c
    ld bc, $2c73                                  ; $4649: $01 $73 $2c
    ld bc, $2cb2                                  ; $464c: $01 $b2 $2c
    ld bc, $2ce3                                  ; $464f: $01 $e3 $2c
    ld bc, $2cf4                                  ; $4652: $01 $f4 $2c
    ld bc, $2d23                                  ; $4655: $01 $23 $2d
    ld bc, $2d50                                  ; $4658: $01 $50 $2d
    ld bc, $2d74                                  ; $465b: $01 $74 $2d
    ld bc, $2da7                                  ; $465e: $01 $a7 $2d
    ld bc, $2de2                                  ; $4661: $01 $e2 $2d
    ld bc, $2e13                                  ; $4664: $01 $13 $2e
    ld bc, $2e34                                  ; $4667: $01 $34 $2e
    ld bc, $2e73                                  ; $466a: $01 $73 $2e
    ld bc, $2ebf                                  ; $466d: $01 $bf $2e
    ld bc, $2ef6                                  ; $4670: $01 $f6 $2e
    ld bc, $2f25                                  ; $4673: $01 $25 $2f
    ld bc, $2f4f                                  ; $4676: $01 $4f $2f
    ld bc, $2f72                                  ; $4679: $01 $72 $2f
    ld bc, $2f98                                  ; $467c: $01 $98 $2f
    ld bc, $2fcd                                  ; $467f: $01 $cd $2f
    ld bc, $2ff3                                  ; $4682: $01 $f3 $2f
    ld bc, $302e                                  ; $4685: $01 $2e $30
    ld bc, $304d                                  ; $4688: $01 $4d $30
    ld bc, $3078                                  ; $468b: $01 $78 $30
    ld bc, $30b2                                  ; $468e: $01 $b2 $30
    ld bc, $30df                                  ; $4691: $01 $df $30
    ld bc, $30e8                                  ; $4694: $01 $e8 $30
    ld bc, $3113                                  ; $4697: $01 $13 $31
    ld bc, $3124                                  ; $469a: $01 $24 $31
    ld bc, $3141                                  ; $469d: $01 $41 $31
    ld bc, $3154                                  ; $46a0: $01 $54 $31
    ld bc, $315e                                  ; $46a3: $01 $5e $31
    ld bc, $316d                                  ; $46a6: $01 $6d $31
    ld bc, $3183                                  ; $46a9: $01 $83 $31
    ld bc, $31ab                                  ; $46ac: $01 $ab $31
    ld bc, $31f1                                  ; $46af: $01 $f1 $31
    ld bc, $31f8                                  ; $46b2: $01 $f8 $31
    ld bc, $3251                                  ; $46b5: $01 $51 $32
    ld bc, $325e                                  ; $46b8: $01 $5e $32
    ld bc, $32b2                                  ; $46bb: $01 $b2 $32
    ld bc, $32d3                                  ; $46be: $01 $d3 $32
    ld bc, $32e7                                  ; $46c1: $01 $e7 $32
    ld bc, $330d                                  ; $46c4: $01 $0d $33
    ld bc, $335b                                  ; $46c7: $01 $5b $33
    ld bc, $3392                                  ; $46ca: $01 $92 $33
    ld bc, $33a0                                  ; $46cd: $01 $a0 $33
    ld bc, $33b5                                  ; $46d0: $01 $b5 $33
    ld bc, $33cd                                  ; $46d3: $01 $cd $33
    ld bc, $3402                                  ; $46d6: $01 $02 $34
    ld bc, $3424                                  ; $46d9: $01 $24 $34
    ld bc, $3439                                  ; $46dc: $01 $39 $34
    ld bc, $3446                                  ; $46df: $01 $46 $34
    ld bc, $348b                                  ; $46e2: $01 $8b $34
    ld bc, $34c6                                  ; $46e5: $01 $c6 $34
    ld bc, $34e0                                  ; $46e8: $01 $e0 $34
    ld bc, $351c                                  ; $46eb: $01 $1c $35
    ld bc, $3553                                  ; $46ee: $01 $53 $35
    ld bc, $356b                                  ; $46f1: $01 $6b $35
    ld bc, $358d                                  ; $46f4: $01 $8d $35
    ld bc, $359e                                  ; $46f7: $01 $9e $35
    ld bc, $35be                                  ; $46fa: $01 $be $35
    ld bc, $35d3                                  ; $46fd: $01 $d3 $35
    ld bc, $35e4                                  ; $4700: $01 $e4 $35
    ld bc, $3604                                  ; $4703: $01 $04 $36
    ld bc, $362c                                  ; $4706: $01 $2c $36
    ld bc, $367d                                  ; $4709: $01 $7d $36
    ld bc, $3691                                  ; $470c: $01 $91 $36
    ld bc, $36f3                                  ; $470f: $01 $f3 $36
    ld bc, $3729                                  ; $4712: $01 $29 $37
    ld bc, $3744                                  ; $4715: $01 $44 $37
    ld bc, $3774                                  ; $4718: $01 $74 $37
    ld bc, $37ac                                  ; $471b: $01 $ac $37
    ld bc, $3802                                  ; $471e: $01 $02 $38
    ld bc, $3837                                  ; $4721: $01 $37 $38
    ld bc, $3848                                  ; $4724: $01 $48 $38
    ld bc, $3857                                  ; $4727: $01 $57 $38
    ld bc, $3878                                  ; $472a: $01 $78 $38
    ld bc, $388b                                  ; $472d: $01 $8b $38
    ld bc, $3894                                  ; $4730: $01 $94 $38
    ld bc, $38a3                                  ; $4733: $01 $a3 $38
    ld bc, $38b5                                  ; $4736: $01 $b5 $38
    ld bc, $38c9                                  ; $4739: $01 $c9 $38
    ld bc, $38fa                                  ; $473c: $01 $fa $38
    ld bc, $3913                                  ; $473f: $01 $13 $39
    ld bc, $3927                                  ; $4742: $01 $27 $39
    ld bc, $3948                                  ; $4745: $01 $48 $39
    ld bc, $39bb                                  ; $4748: $01 $bb $39
    ld bc, $39ca                                  ; $474b: $01 $ca $39
    ld bc, $39e9                                  ; $474e: $01 $e9 $39
    ld bc, $3a1a                                  ; $4751: $01 $1a $3a
    ld bc, $3a36                                  ; $4754: $01 $36 $3a
    ld bc, $3a6f                                  ; $4757: $01 $6f $3a
    ld bc, $3aab                                  ; $475a: $01 $ab $3a
    ld bc, $3ac8                                  ; $475d: $01 $c8 $3a
    ld bc, $3b27                                  ; $4760: $01 $27 $3b
    ld bc, $3b2f                                  ; $4763: $01 $2f $3b
    ld bc, $3b4b                                  ; $4766: $01 $4b $3b
    ld bc, $3b57                                  ; $4769: $01 $57 $3b
    ld bc, $3b6e                                  ; $476c: $01 $6e $3b
    ld bc, $3b90                                  ; $476f: $01 $90 $3b
    ld bc, $3bc4                                  ; $4772: $01 $c4 $3b
    ld bc, $3bf5                                  ; $4775: $01 $f5 $3b
    ld bc, $3c1a                                  ; $4778: $01 $1a $3c
    ld bc, $3c53                                  ; $477b: $01 $53 $3c
    ld bc, $3c64                                  ; $477e: $01 $64 $3c
    ld bc, $3c71                                  ; $4781: $01 $71 $3c
    ld bc, $3c80                                  ; $4784: $01 $80 $3c
    ld bc, $3c90                                  ; $4787: $01 $90 $3c
    ld bc, $3cbc                                  ; $478a: $01 $bc $3c
    ld bc, $3d1a                                  ; $478d: $01 $1a $3d
    ld bc, $3d52                                  ; $4790: $01 $52 $3d
    ld bc, $3d83                                  ; $4793: $01 $83 $3d
    ld bc, $3db9                                  ; $4796: $01 $b9 $3d
    ld bc, $3de8                                  ; $4799: $01 $e8 $3d
    ld bc, $3e09                                  ; $479c: $01 $09 $3e
    ld bc, $3e1f                                  ; $479f: $01 $1f $3e
    ld bc, $3e45                                  ; $47a2: $01 $45 $3e
    ld bc, $3e62                                  ; $47a5: $01 $62 $3e
    ld bc, $3e6a                                  ; $47a8: $01 $6a $3e

Call_04d_47ab:
    ld bc, $3e7f                                  ; $47ab: $01 $7f $3e
    ld bc, $3e93                                  ; $47ae: $01 $93 $3e
    ld bc, $3eaf                                  ; $47b1: $01 $af $3e
    ld bc, $3ecf                                  ; $47b4: $01 $cf $3e
    ld bc, $3ee5                                  ; $47b7: $01 $e5 $3e
    ld bc, $3efd                                  ; $47ba: $01 $fd $3e
    ld bc, $3f2a                                  ; $47bd: $01 $2a $3f
    ld bc, $3f50                                  ; $47c0: $01 $50 $3f
    ld bc, $3f63                                  ; $47c3: $01 $63 $3f
    ld bc, $3f89                                  ; $47c6: $01 $89 $3f
    ld bc, $3f9e                                  ; $47c9: $01 $9e $3f
    ld bc, $3faf                                  ; $47cc: $01 $af $3f
    ld bc, $3fc2                                  ; $47cf: $01 $c2 $3f
    ld bc, $3fdf                                  ; $47d2: $01 $df $3f
    ld [bc], a                                    ; $47d5: $02
    ld bc, $0200                                  ; $47d6: $01 $00 $02
    dec e                                         ; $47d9: $1d
    nop                                           ; $47da: $00
    ld [bc], a                                    ; $47db: $02
    inc a                                         ; $47dc: $3c
    nop                                           ; $47dd: $00
    ld [bc], a                                    ; $47de: $02
    ld d, l                                       ; $47df: $55
    nop                                           ; $47e0: $00
    ld [bc], a                                    ; $47e1: $02
    ld a, e                                       ; $47e2: $7b
    nop                                           ; $47e3: $00
    ld [bc], a                                    ; $47e4: $02
    xor [hl]                                      ; $47e5: $ae
    nop                                           ; $47e6: $00
    ld [bc], a                                    ; $47e7: $02
    rst $10                                       ; $47e8: $d7
    nop                                           ; $47e9: $00
    ld [bc], a                                    ; $47ea: $02
    rrca                                          ; $47eb: $0f
    ld bc, $2702                                  ; $47ec: $01 $02 $27
    ld bc, $4b02                                  ; $47ef: $01 $02 $4b
    ld bc, $6802                                  ; $47f2: $01 $02 $68
    ld bc, $7902                                  ; $47f5: $01 $02 $79
    ld bc, $ae02                                  ; $47f8: $01 $02 $ae
    ld bc, $c502                                  ; $47fb: $01 $02 $c5
    ld bc, $e502                                  ; $47fe: $01 $02 $e5
    ld bc, $ea02                                  ; $4801: $01 $02 $ea
    ld bc, $ef02                                  ; $4804: $01 $02 $ef
    ld bc, $f402                                  ; $4807: $01 $02 $f4
    ld bc, $0202                                  ; $480a: $01 $02 $02
    ld [bc], a                                    ; $480d: $02
    ld [bc], a                                    ; $480e: $02
    add hl, bc                                    ; $480f: $09
    ld [bc], a                                    ; $4810: $02
    ld [bc], a                                    ; $4811: $02
    ld d, e                                       ; $4812: $53
    ld [bc], a                                    ; $4813: $02
    ld [bc], a                                    ; $4814: $02
    ld [hl], a                                    ; $4815: $77
    ld [bc], a                                    ; $4816: $02
    ld [bc], a                                    ; $4817: $02
    add h                                         ; $4818: $84
    ld [bc], a                                    ; $4819: $02
    ld [bc], a                                    ; $481a: $02
    adc [hl]                                      ; $481b: $8e
    ld [bc], a                                    ; $481c: $02
    ld [bc], a                                    ; $481d: $02
    cp b                                          ; $481e: $b8
    ld [bc], a                                    ; $481f: $02
    ld [bc], a                                    ; $4820: $02
    pop de                                        ; $4821: $d1
    ld [bc], a                                    ; $4822: $02
    ld [bc], a                                    ; $4823: $02
    pop hl                                        ; $4824: $e1
    ld [bc], a                                    ; $4825: $02
    ld [bc], a                                    ; $4826: $02
    pop af                                        ; $4827: $f1
    ld [bc], a                                    ; $4828: $02
    ld [bc], a                                    ; $4829: $02
    inc c                                         ; $482a: $0c
    inc bc                                        ; $482b: $03
    ld [bc], a                                    ; $482c: $02
    dec de                                        ; $482d: $1b
    inc bc                                        ; $482e: $03
    ld [bc], a                                    ; $482f: $02
    ld a, [hl-]                                   ; $4830: $3a
    inc bc                                        ; $4831: $03
    ld [bc], a                                    ; $4832: $02
    ld e, d                                       ; $4833: $5a
    inc bc                                        ; $4834: $03
    ld [bc], a                                    ; $4835: $02
    ld l, c                                       ; $4836: $69
    inc bc                                        ; $4837: $03
    ld [bc], a                                    ; $4838: $02
    adc [hl]                                      ; $4839: $8e
    inc bc                                        ; $483a: $03
    ld [bc], a                                    ; $483b: $02
    sub [hl]                                      ; $483c: $96
    inc bc                                        ; $483d: $03
    ld [bc], a                                    ; $483e: $02
    cp a                                          ; $483f: $bf
    inc bc                                        ; $4840: $03
    ld [bc], a                                    ; $4841: $02
    ret                                           ; $4842: $c9


    inc bc                                        ; $4843: $03
    ld [bc], a                                    ; $4844: $02
    push hl                                       ; $4845: $e5
    inc bc                                        ; $4846: $03
    ld [bc], a                                    ; $4847: $02
    di                                            ; $4848: $f3
    inc bc                                        ; $4849: $03
    ld [bc], a                                    ; $484a: $02
    rst $38                                       ; $484b: $ff
    inc bc                                        ; $484c: $03
    ld [bc], a                                    ; $484d: $02
    ld d, b                                       ; $484e: $50
    inc b                                         ; $484f: $04
    ld [bc], a                                    ; $4850: $02
    ld e, h                                       ; $4851: $5c
    inc b                                         ; $4852: $04
    ld [bc], a                                    ; $4853: $02
    ld h, c                                       ; $4854: $61
    inc b                                         ; $4855: $04
    ld [bc], a                                    ; $4856: $02
    ld l, h                                       ; $4857: $6c
    inc b                                         ; $4858: $04
    ld [bc], a                                    ; $4859: $02
    or d                                          ; $485a: $b2
    inc b                                         ; $485b: $04
    ld [bc], a                                    ; $485c: $02
    ld l, a                                       ; $485d: $6f
    dec b                                         ; $485e: $05
    ld [bc], a                                    ; $485f: $02
    sbc c                                         ; $4860: $99
    dec b                                         ; $4861: $05
    ld [bc], a                                    ; $4862: $02
    or c                                          ; $4863: $b1
    dec b                                         ; $4864: $05
    ld [bc], a                                    ; $4865: $02
    cp [hl]                                       ; $4866: $be
    dec b                                         ; $4867: $05
    ld [bc], a                                    ; $4868: $02
    ret                                           ; $4869: $c9


    dec b                                         ; $486a: $05
    ld [bc], a                                    ; $486b: $02
    db $d3                                        ; $486c: $d3
    dec b                                         ; $486d: $05
    ld [bc], a                                    ; $486e: $02
    and $05                                       ; $486f: $e6 $05
    ld [bc], a                                    ; $4871: $02
    ld a, [$0205]                                 ; $4872: $fa $05 $02
    jr @+$08                                      ; $4875: $18 $06

    ld [bc], a                                    ; $4877: $02
    dec sp                                        ; $4878: $3b
    ld b, $02                                     ; $4879: $06 $02
    ld a, h                                       ; $487b: $7c
    ld b, $02                                     ; $487c: $06 $02
    or a                                          ; $487e: $b7
    ld b, $02                                     ; $487f: $06 $02
    sub $06                                       ; $4881: $d6 $06
    ld [bc], a                                    ; $4883: $02
    ld a, [hl-]                                   ; $4884: $3a
    rlca                                          ; $4885: $07
    ld [bc], a                                    ; $4886: $02
    ld b, b                                       ; $4887: $40
    rlca                                          ; $4888: $07
    ld [bc], a                                    ; $4889: $02
    ld [hl], a                                    ; $488a: $77
    rlca                                          ; $488b: $07
    ld [bc], a                                    ; $488c: $02
    adc e                                         ; $488d: $8b
    rlca                                          ; $488e: $07
    ld [bc], a                                    ; $488f: $02
    xor h                                         ; $4890: $ac
    rlca                                          ; $4891: $07
    ld [bc], a                                    ; $4892: $02
    call c, Call_000_0207                         ; $4893: $dc $07 $02
    or $07                                        ; $4896: $f6 $07
    ld [bc], a                                    ; $4898: $02
    ld [$0208], sp                                ; $4899: $08 $08 $02
    inc h                                         ; $489c: $24
    ld [$3202], sp                                ; $489d: $08 $02 $32
    ld [$4002], sp                                ; $48a0: $08 $02 $40
    ld [$5502], sp                                ; $48a3: $08 $02 $55
    ld [$6202], sp                                ; $48a6: $08 $02 $62
    ld [$8a02], sp                                ; $48a9: $08 $02 $8a
    ld [$a602], sp                                ; $48ac: $08 $02 $a6
    ld [$bb02], sp                                ; $48af: $08 $02 $bb
    ld [$d002], sp                                ; $48b2: $08 $02 $d0
    ld [$e202], sp                                ; $48b5: $08 $02 $e2
    ld [$f302], sp                                ; $48b8: $08 $02 $f3
    ld [$0702], sp                                ; $48bb: $08 $02 $07
    add hl, bc                                    ; $48be: $09
    ld [bc], a                                    ; $48bf: $02
    dec h                                         ; $48c0: $25
    add hl, bc                                    ; $48c1: $09
    ld [bc], a                                    ; $48c2: $02
    ld b, d                                       ; $48c3: $42
    add hl, bc                                    ; $48c4: $09
    ld [bc], a                                    ; $48c5: $02
    xor c                                         ; $48c6: $a9
    add hl, bc                                    ; $48c7: $09
    ld [bc], a                                    ; $48c8: $02
    dec bc                                        ; $48c9: $0b
    ld a, [bc]                                    ; $48ca: $0a
    ld [bc], a                                    ; $48cb: $02
    jr jr_04d_48d8                                ; $48cc: $18 $0a

    ld [bc], a                                    ; $48ce: $02
    ld d, l                                       ; $48cf: $55
    ld a, [bc]                                    ; $48d0: $0a
    ld [bc], a                                    ; $48d1: $02
    ld h, e                                       ; $48d2: $63
    ld a, [bc]                                    ; $48d3: $0a
    ld [bc], a                                    ; $48d4: $02
    or c                                          ; $48d5: $b1
    ld a, [bc]                                    ; $48d6: $0a
    ld [bc], a                                    ; $48d7: $02

jr_04d_48d8:
    db $db                                        ; $48d8: $db
    ld a, [bc]                                    ; $48d9: $0a
    ld [bc], a                                    ; $48da: $02
    ld a, [$020a]                                 ; $48db: $fa $0a $02
    dec hl                                        ; $48de: $2b
    dec bc                                        ; $48df: $0b
    ld [bc], a                                    ; $48e0: $02
    ld c, h                                       ; $48e1: $4c
    dec bc                                        ; $48e2: $0b
    ld [bc], a                                    ; $48e3: $02
    ld h, a                                       ; $48e4: $67
    dec bc                                        ; $48e5: $0b
    ld [bc], a                                    ; $48e6: $02
    and d                                         ; $48e7: $a2
    dec bc                                        ; $48e8: $0b
    ld [bc], a                                    ; $48e9: $02
    and a                                         ; $48ea: $a7
    dec bc                                        ; $48eb: $0b
    ld [bc], a                                    ; $48ec: $02
    or e                                          ; $48ed: $b3
    dec bc                                        ; $48ee: $0b
    ld [bc], a                                    ; $48ef: $02
    ret c                                         ; $48f0: $d8

    dec bc                                        ; $48f1: $0b
    ld [bc], a                                    ; $48f2: $02
    di                                            ; $48f3: $f3
    dec bc                                        ; $48f4: $0b
    ld [bc], a                                    ; $48f5: $02
    dec d                                         ; $48f6: $15
    inc c                                         ; $48f7: $0c
    ld [bc], a                                    ; $48f8: $02
    ld b, [hl]                                    ; $48f9: $46
    inc c                                         ; $48fa: $0c
    ld [bc], a                                    ; $48fb: $02
    ld h, d                                       ; $48fc: $62
    inc c                                         ; $48fd: $0c
    ld [bc], a                                    ; $48fe: $02
    ld l, h                                       ; $48ff: $6c
    inc c                                         ; $4900: $0c
    ld [bc], a                                    ; $4901: $02
    ld a, b                                       ; $4902: $78
    inc c                                         ; $4903: $0c
    ld [bc], a                                    ; $4904: $02
    sbc b                                         ; $4905: $98
    inc c                                         ; $4906: $0c
    ld [bc], a                                    ; $4907: $02
    xor l                                         ; $4908: $ad
    inc c                                         ; $4909: $0c
    ld [bc], a                                    ; $490a: $02
    cp d                                          ; $490b: $ba
    inc c                                         ; $490c: $0c
    ld [bc], a                                    ; $490d: $02
    rrc h                                         ; $490e: $cb $0c
    ld [bc], a                                    ; $4910: $02
    inc c                                         ; $4911: $0c
    dec c                                         ; $4912: $0d
    ld [bc], a                                    ; $4913: $02
    halt                                          ; $4914: $76
    dec c                                         ; $4915: $0d
    ld [bc], a                                    ; $4916: $02
    add l                                         ; $4917: $85
    dec c                                         ; $4918: $0d
    ld [bc], a                                    ; $4919: $02
    rst $28                                       ; $491a: $ef
    dec c                                         ; $491b: $0d
    ld [bc], a                                    ; $491c: $02
    inc hl                                        ; $491d: $23
    ld c, $02                                     ; $491e: $0e $02
    ld h, b                                       ; $4920: $60
    ld c, $02                                     ; $4921: $0e $02
    ld [hl], c                                    ; $4923: $71
    ld c, $02                                     ; $4924: $0e $02
    pop de                                        ; $4926: $d1
    ld c, $02                                     ; $4927: $0e $02
    jp c, $020e                                   ; $4929: $da $0e $02

    inc b                                         ; $492c: $04
    rrca                                          ; $492d: $0f
    ld [bc], a                                    ; $492e: $02
    inc e                                         ; $492f: $1c
    rrca                                          ; $4930: $0f
    ld [bc], a                                    ; $4931: $02
    ld d, l                                       ; $4932: $55
    rrca                                          ; $4933: $0f
    ld [bc], a                                    ; $4934: $02
    ret                                           ; $4935: $c9


    rrca                                          ; $4936: $0f
    ld [bc], a                                    ; $4937: $02
    db $eb                                        ; $4938: $eb
    rrca                                          ; $4939: $0f
    ld [bc], a                                    ; $493a: $02
    add hl, de                                    ; $493b: $19
    db $10                                        ; $493c: $10
    ld [bc], a                                    ; $493d: $02
    ld c, c                                       ; $493e: $49
    db $10                                        ; $493f: $10
    ld [bc], a                                    ; $4940: $02
    ld h, d                                       ; $4941: $62
    db $10                                        ; $4942: $10
    ld [bc], a                                    ; $4943: $02
    ld [hl], b                                    ; $4944: $70
    db $10                                        ; $4945: $10
    ld [bc], a                                    ; $4946: $02
    ld a, a                                       ; $4947: $7f
    db $10                                        ; $4948: $10
    ld [bc], a                                    ; $4949: $02
    or e                                          ; $494a: $b3
    db $10                                        ; $494b: $10
    ld [bc], a                                    ; $494c: $02
    call z, Call_000_0210                         ; $494d: $cc $10 $02
    ld [c], a                                     ; $4950: $e2
    db $10                                        ; $4951: $10
    ld [bc], a                                    ; $4952: $02
    db $fc                                        ; $4953: $fc
    db $10                                        ; $4954: $10
    ld [bc], a                                    ; $4955: $02
    ld l, l                                       ; $4956: $6d
    ld de, $7502                                  ; $4957: $11 $02 $75
    ld de, $a602                                  ; $495a: $11 $02 $a6
    ld de, $bd02                                  ; $495d: $11 $02 $bd
    ld de, $e002                                  ; $4960: $11 $02 $e0
    ld de, $0e02                                  ; $4963: $11 $02 $0e
    ld [de], a                                    ; $4966: $12
    ld [bc], a                                    ; $4967: $02
    ld de, $0212                                  ; $4968: $11 $12 $02
    inc hl                                        ; $496b: $23
    ld [de], a                                    ; $496c: $12
    ld [bc], a                                    ; $496d: $02
    ld h, l                                       ; $496e: $65
    ld [de], a                                    ; $496f: $12
    ld [bc], a                                    ; $4970: $02
    halt                                          ; $4971: $76
    ld [de], a                                    ; $4972: $12
    ld [bc], a                                    ; $4973: $02
    sbc l                                         ; $4974: $9d
    ld [de], a                                    ; $4975: $12
    ld [bc], a                                    ; $4976: $02
    jp $0212                                      ; $4977: $c3 $12 $02


    db $10                                        ; $497a: $10
    inc de                                        ; $497b: $13
    ld [bc], a                                    ; $497c: $02
    ccf                                           ; $497d: $3f
    inc de                                        ; $497e: $13
    ld [bc], a                                    ; $497f: $02
    ld d, h                                       ; $4980: $54
    inc de                                        ; $4981: $13
    ld [bc], a                                    ; $4982: $02
    ld l, b                                       ; $4983: $68
    inc de                                        ; $4984: $13
    ld [bc], a                                    ; $4985: $02
    ld a, a                                       ; $4986: $7f
    inc de                                        ; $4987: $13
    ld [bc], a                                    ; $4988: $02
    sbc c                                         ; $4989: $99
    inc de                                        ; $498a: $13
    ld [bc], a                                    ; $498b: $02
    cp h                                          ; $498c: $bc
    inc de                                        ; $498d: $13
    ld [bc], a                                    ; $498e: $02
    add $13                                       ; $498f: $c6 $13
    ld [bc], a                                    ; $4991: $02
    jp z, $0213                                   ; $4992: $ca $13 $02

    rst $28                                       ; $4995: $ef

Jump_04d_4996:
    inc de                                        ; $4996: $13
    ld [bc], a                                    ; $4997: $02
    ld [de], a                                    ; $4998: $12
    inc d                                         ; $4999: $14
    ld [bc], a                                    ; $499a: $02
    dec l                                         ; $499b: $2d
    inc d                                         ; $499c: $14
    ld [bc], a                                    ; $499d: $02
    ld b, d                                       ; $499e: $42
    inc d                                         ; $499f: $14
    ld [bc], a                                    ; $49a0: $02
    ld e, l                                       ; $49a1: $5d
    inc d                                         ; $49a2: $14
    ld [bc], a                                    ; $49a3: $02
    add c                                         ; $49a4: $81
    inc d                                         ; $49a5: $14
    ld [bc], a                                    ; $49a6: $02
    xor d                                         ; $49a7: $aa
    inc d                                         ; $49a8: $14
    ld [bc], a                                    ; $49a9: $02
    cp a                                          ; $49aa: $bf
    inc d                                         ; $49ab: $14
    ld [bc], a                                    ; $49ac: $02
    ld [c], a                                     ; $49ad: $e2
    inc d                                         ; $49ae: $14
    ld [bc], a                                    ; $49af: $02
    ld a, [c]                                     ; $49b0: $f2
    inc d                                         ; $49b1: $14
    ld [bc], a                                    ; $49b2: $02
    db $10                                        ; $49b3: $10
    dec d                                         ; $49b4: $15
    ld [bc], a                                    ; $49b5: $02
    add hl, hl                                    ; $49b6: $29
    dec d                                         ; $49b7: $15
    ld [bc], a                                    ; $49b8: $02
    ld b, [hl]                                    ; $49b9: $46
    dec d                                         ; $49ba: $15
    ld [bc], a                                    ; $49bb: $02
    ld e, l                                       ; $49bc: $5d
    dec d                                         ; $49bd: $15
    ld [bc], a                                    ; $49be: $02
    ld l, h                                       ; $49bf: $6c
    dec d                                         ; $49c0: $15
    ld [bc], a                                    ; $49c1: $02
    and c                                         ; $49c2: $a1
    dec d                                         ; $49c3: $15
    ld [bc], a                                    ; $49c4: $02
    db $fc                                        ; $49c5: $fc
    dec d                                         ; $49c6: $15
    ld [bc], a                                    ; $49c7: $02
    ld a, [bc]                                    ; $49c8: $0a
    ld d, $02                                     ; $49c9: $16 $02
    inc h                                         ; $49cb: $24
    ld d, $02                                     ; $49cc: $16 $02
    ld c, l                                       ; $49ce: $4d
    ld d, $02                                     ; $49cf: $16 $02
    ld h, b                                       ; $49d1: $60
    ld d, $02                                     ; $49d2: $16 $02
    sbc h                                         ; $49d4: $9c
    ld d, $02                                     ; $49d5: $16 $02
    call nc, Call_000_0216                        ; $49d7: $d4 $16 $02
    inc b                                         ; $49da: $04
    rla                                           ; $49db: $17
    ld [bc], a                                    ; $49dc: $02
    dec a                                         ; $49dd: $3d
    rla                                           ; $49de: $17
    ld [bc], a                                    ; $49df: $02
    ld l, e                                       ; $49e0: $6b
    rla                                           ; $49e1: $17
    ld [bc], a                                    ; $49e2: $02
    add c                                         ; $49e3: $81
    rla                                           ; $49e4: $17
    ld [bc], a                                    ; $49e5: $02
    and b                                         ; $49e6: $a0
    rla                                           ; $49e7: $17
    ld [bc], a                                    ; $49e8: $02
    xor h                                         ; $49e9: $ac
    rla                                           ; $49ea: $17
    ld [bc], a                                    ; $49eb: $02
    pop hl                                        ; $49ec: $e1
    rla                                           ; $49ed: $17
    ld [bc], a                                    ; $49ee: $02
    ld [$0218], sp                                ; $49ef: $08 $18 $02
    inc a                                         ; $49f2: $3c
    jr @+$04                                      ; $49f3: $18 $02

    ld c, h                                       ; $49f5: $4c
    jr @+$04                                      ; $49f6: $18 $02

    ld h, h                                       ; $49f8: $64
    jr @+$04                                      ; $49f9: $18 $02

    ld l, h                                       ; $49fb: $6c
    jr @+$04                                      ; $49fc: $18 $02

    add l                                         ; $49fe: $85
    jr @+$04                                      ; $49ff: $18 $02

    xor h                                         ; $4a01: $ac
    jr @+$04                                      ; $4a02: $18 $02

    cp l                                          ; $4a04: $bd
    jr jr_04d_4a09                                ; $4a05: $18 $02

    ld c, $19                                     ; $4a07: $0e $19

jr_04d_4a09:
    ld [bc], a                                    ; $4a09: $02
    dec [hl]                                      ; $4a0a: $35
    add hl, de                                    ; $4a0b: $19
    ld [bc], a                                    ; $4a0c: $02
    ld h, [hl]                                    ; $4a0d: $66
    add hl, de                                    ; $4a0e: $19
    ld [bc], a                                    ; $4a0f: $02
    adc b                                         ; $4a10: $88
    add hl, de                                    ; $4a11: $19
    ld [bc], a                                    ; $4a12: $02
    rr c                                          ; $4a13: $cb $19
    ld [bc], a                                    ; $4a15: $02
    ld a, [$0219]                                 ; $4a16: $fa $19 $02
    jr z, jr_04d_4a35                             ; $4a19: $28 $1a

    ld [bc], a                                    ; $4a1b: $02
    ld d, l                                       ; $4a1c: $55
    ld a, [de]                                    ; $4a1d: $1a
    ld [bc], a                                    ; $4a1e: $02
    ld a, d                                       ; $4a1f: $7a
    ld a, [de]                                    ; $4a20: $1a
    ld [bc], a                                    ; $4a21: $02
    sub [hl]                                      ; $4a22: $96
    ld a, [de]                                    ; $4a23: $1a
    ld [bc], a                                    ; $4a24: $02

Jump_04d_4a25:
    db $fc                                        ; $4a25: $fc
    ld a, [de]                                    ; $4a26: $1a
    ld [bc], a                                    ; $4a27: $02
    jr nc, jr_04d_4a45                            ; $4a28: $30 $1b

    ld [bc], a                                    ; $4a2a: $02
    ld b, l                                       ; $4a2b: $45
    dec de                                        ; $4a2c: $1b
    ld [bc], a                                    ; $4a2d: $02
    ld a, d                                       ; $4a2e: $7a
    dec de                                        ; $4a2f: $1b
    ld [bc], a                                    ; $4a30: $02
    sbc c                                         ; $4a31: $99
    dec de                                        ; $4a32: $1b
    ld [bc], a                                    ; $4a33: $02
    ret z                                         ; $4a34: $c8

jr_04d_4a35:
    dec de                                        ; $4a35: $1b
    ld [bc], a                                    ; $4a36: $02
    pop hl                                        ; $4a37: $e1
    dec de                                        ; $4a38: $1b
    ld [bc], a                                    ; $4a39: $02
    rst $30                                       ; $4a3a: $f7
    dec de                                        ; $4a3b: $1b
    ld [bc], a                                    ; $4a3c: $02
    ld [de], a                                    ; $4a3d: $12
    inc e                                         ; $4a3e: $1c
    ld [bc], a                                    ; $4a3f: $02
    jr c, jr_04d_4a5e                             ; $4a40: $38 $1c

    ld [bc], a                                    ; $4a42: $02
    ld c, l                                       ; $4a43: $4d
    inc e                                         ; $4a44: $1c

jr_04d_4a45:
    ld [bc], a                                    ; $4a45: $02
    xor b                                         ; $4a46: $a8
    inc e                                         ; $4a47: $1c
    ld [bc], a                                    ; $4a48: $02
    pop bc                                        ; $4a49: $c1
    inc e                                         ; $4a4a: $1c
    ld [bc], a                                    ; $4a4b: $02

Call_04d_4a4c:
    ld a, [bc]                                    ; $4a4c: $0a
    dec e                                         ; $4a4d: $1d
    ld [bc], a                                    ; $4a4e: $02
    inc hl                                        ; $4a4f: $23
    dec e                                         ; $4a50: $1d
    ld [bc], a                                    ; $4a51: $02
    ld b, c                                       ; $4a52: $41
    dec e                                         ; $4a53: $1d
    ld [bc], a                                    ; $4a54: $02
    ld h, d                                       ; $4a55: $62
    dec e                                         ; $4a56: $1d
    ld [bc], a                                    ; $4a57: $02
    ld [hl], d                                    ; $4a58: $72
    dec e                                         ; $4a59: $1d
    ld [bc], a                                    ; $4a5a: $02
    add a                                         ; $4a5b: $87
    dec e                                         ; $4a5c: $1d
    ld [bc], a                                    ; $4a5d: $02

jr_04d_4a5e:
    cp e                                          ; $4a5e: $bb
    dec e                                         ; $4a5f: $1d
    ld [bc], a                                    ; $4a60: $02
    db $dd                                        ; $4a61: $dd
    dec e                                         ; $4a62: $1d
    ld [bc], a                                    ; $4a63: $02
    ld sp, hl                                     ; $4a64: $f9
    dec e                                         ; $4a65: $1d
    ld [bc], a                                    ; $4a66: $02
    inc hl                                        ; $4a67: $23
    ld e, $02                                     ; $4a68: $1e $02
    ld b, [hl]                                    ; $4a6a: $46
    ld e, $02                                     ; $4a6b: $1e $02
    ld h, b                                       ; $4a6d: $60
    ld e, $02                                     ; $4a6e: $1e $02
    halt                                          ; $4a70: $76
    ld e, $02                                     ; $4a71: $1e $02
    sub b                                         ; $4a73: $90
    ld e, $02                                     ; $4a74: $1e $02
    sbc c                                         ; $4a76: $99
    ld e, $02                                     ; $4a77: $1e $02
    xor b                                         ; $4a79: $a8
    ld e, $02                                     ; $4a7a: $1e $02
    or [hl]                                       ; $4a7c: $b6
    ld e, $02                                     ; $4a7d: $1e $02
    jp z, $021e                                   ; $4a7f: $ca $1e $02

    rst $10                                       ; $4a82: $d7
    ld e, $02                                     ; $4a83: $1e $02
    ldh a, [rNR34]                                ; $4a85: $f0 $1e
    ld [bc], a                                    ; $4a87: $02
    push af                                       ; $4a88: $f5
    ld e, $02                                     ; $4a89: $1e $02
    inc c                                         ; $4a8b: $0c
    rra                                           ; $4a8c: $1f
    ld [bc], a                                    ; $4a8d: $02
    ld hl, $021f                                  ; $4a8e: $21 $1f $02
    ld c, [hl]                                    ; $4a91: $4e
    rra                                           ; $4a92: $1f
    ld [bc], a                                    ; $4a93: $02
    sub c                                         ; $4a94: $91
    rra                                           ; $4a95: $1f
    ld [bc], a                                    ; $4a96: $02
    cp [hl]                                       ; $4a97: $be
    rra                                           ; $4a98: $1f
    ld [bc], a                                    ; $4a99: $02
    call nc, Call_000_021f                        ; $4a9a: $d4 $1f $02
    ldh [$1f], a                                  ; $4a9d: $e0 $1f
    ld [bc], a                                    ; $4a9f: $02
    db $fc                                        ; $4aa0: $fc
    rra                                           ; $4aa1: $1f
    ld [bc], a                                    ; $4aa2: $02
    add hl, hl                                    ; $4aa3: $29
    jr nz, @+$04                                  ; $4aa4: $20 $02

    ld e, b                                       ; $4aa6: $58
    jr nz, @+$04                                  ; $4aa7: $20 $02

    sub [hl]                                      ; $4aa9: $96
    jr nz, @+$04                                  ; $4aaa: $20 $02

    call $0220                                    ; $4aac: $cd $20 $02
    reti                                          ; $4aaf: $d9


    jr nz, jr_04d_4ab4                            ; $4ab0: $20 $02

    xor $20                                       ; $4ab2: $ee $20

jr_04d_4ab4:
    ld [bc], a                                    ; $4ab4: $02
    ld [$0221], sp                                ; $4ab5: $08 $21 $02
    ld d, a                                       ; $4ab8: $57
    ld hl, $6602                                  ; $4ab9: $21 $02 $66
    ld hl, $7902                                  ; $4abc: $21 $02 $79
    ld hl, $a302                                  ; $4abf: $21 $02 $a3
    ld hl, $bc02                                  ; $4ac2: $21 $02 $bc
    ld hl, $d402                                  ; $4ac5: $21 $02 $d4
    ld hl, $f602                                  ; $4ac8: $21 $02 $f6
    ld hl, $2402                                  ; $4acb: $21 $02 $24
    ld [hl+], a                                   ; $4ace: $22
    ld [bc], a                                    ; $4acf: $02
    ld d, e                                       ; $4ad0: $53
    ld [hl+], a                                   ; $4ad1: $22
    ld [bc], a                                    ; $4ad2: $02
    sub c                                         ; $4ad3: $91
    ld [hl+], a                                   ; $4ad4: $22
    ld [bc], a                                    ; $4ad5: $02
    sub $22                                       ; $4ad6: $d6 $22
    ld [bc], a                                    ; $4ad8: $02
    dec bc                                        ; $4ad9: $0b
    inc hl                                        ; $4ada: $23
    ld [bc], a                                    ; $4adb: $02
    inc l                                         ; $4adc: $2c
    inc hl                                        ; $4add: $23
    ld [bc], a                                    ; $4ade: $02
    ld e, c                                       ; $4adf: $59
    inc hl                                        ; $4ae0: $23
    ld [bc], a                                    ; $4ae1: $02
    add d                                         ; $4ae2: $82
    inc hl                                        ; $4ae3: $23
    ld [bc], a                                    ; $4ae4: $02
    xor h                                         ; $4ae5: $ac
    inc hl                                        ; $4ae6: $23
    ld [bc], a                                    ; $4ae7: $02
    cp e                                          ; $4ae8: $bb
    inc hl                                        ; $4ae9: $23
    ld [bc], a                                    ; $4aea: $02
    rst $18                                       ; $4aeb: $df
    inc hl                                        ; $4aec: $23
    ld [bc], a                                    ; $4aed: $02
    pop af                                        ; $4aee: $f1
    inc hl                                        ; $4aef: $23
    ld [bc], a                                    ; $4af0: $02
    ld bc, $0224                                  ; $4af1: $01 $24 $02
    jr nz, jr_04d_4b1a                            ; $4af4: $20 $24

    ld [bc], a                                    ; $4af6: $02
    ld b, [hl]                                    ; $4af7: $46
    inc h                                         ; $4af8: $24
    ld [bc], a                                    ; $4af9: $02
    ld h, a                                       ; $4afa: $67
    inc h                                         ; $4afb: $24
    ld [bc], a                                    ; $4afc: $02
    ld a, d                                       ; $4afd: $7a
    inc h                                         ; $4afe: $24
    ld [bc], a                                    ; $4aff: $02
    sbc a                                         ; $4b00: $9f
    inc h                                         ; $4b01: $24
    ld [bc], a                                    ; $4b02: $02
    xor c                                         ; $4b03: $a9
    inc h                                         ; $4b04: $24
    ld [bc], a                                    ; $4b05: $02
    pop bc                                        ; $4b06: $c1
    inc h                                         ; $4b07: $24
    ld [bc], a                                    ; $4b08: $02
    push de                                       ; $4b09: $d5
    inc h                                         ; $4b0a: $24
    ld [bc], a                                    ; $4b0b: $02
    db $f4                                        ; $4b0c: $f4
    inc h                                         ; $4b0d: $24
    ld [bc], a                                    ; $4b0e: $02
    ld d, $25                                     ; $4b0f: $16 $25
    ld [bc], a                                    ; $4b11: $02
    inc hl                                        ; $4b12: $23
    dec h                                         ; $4b13: $25
    ld [bc], a                                    ; $4b14: $02
    ld c, a                                       ; $4b15: $4f
    dec h                                         ; $4b16: $25
    ld [bc], a                                    ; $4b17: $02
    ld h, c                                       ; $4b18: $61
    dec h                                         ; $4b19: $25

jr_04d_4b1a:
    ld [bc], a                                    ; $4b1a: $02
    ld a, h                                       ; $4b1b: $7c
    dec h                                         ; $4b1c: $25
    ld [bc], a                                    ; $4b1d: $02
    sbc h                                         ; $4b1e: $9c
    dec h                                         ; $4b1f: $25
    ld [bc], a                                    ; $4b20: $02
    jp z, $0225                                   ; $4b21: $ca $25 $02

    or $25                                        ; $4b24: $f6 $25
    ld [bc], a                                    ; $4b26: $02
    ld c, $26                                     ; $4b27: $0e $26
    ld [bc], a                                    ; $4b29: $02
    ld a, [hl+]                                   ; $4b2a: $2a
    ld h, $02                                     ; $4b2b: $26 $02
    ld c, d                                       ; $4b2d: $4a
    ld h, $02                                     ; $4b2e: $26 $02
    ld h, e                                       ; $4b30: $63
    ld h, $02                                     ; $4b31: $26 $02
    sub d                                         ; $4b33: $92
    ld h, $02                                     ; $4b34: $26 $02
    xor l                                         ; $4b36: $ad
    ld h, $02                                     ; $4b37: $26 $02
    jp nc, Jump_000_0226                          ; $4b39: $d2 $26 $02

    rst $28                                       ; $4b3c: $ef
    ld h, $02                                     ; $4b3d: $26 $02
    add hl, bc                                    ; $4b3f: $09
    daa                                           ; $4b40: $27
    ld [bc], a                                    ; $4b41: $02
    dec h                                         ; $4b42: $25
    daa                                           ; $4b43: $27
    ld [bc], a                                    ; $4b44: $02
    ccf                                           ; $4b45: $3f
    daa                                           ; $4b46: $27
    ld [bc], a                                    ; $4b47: $02
    ld e, [hl]                                    ; $4b48: $5e
    daa                                           ; $4b49: $27
    ld [bc], a                                    ; $4b4a: $02
    adc l                                         ; $4b4b: $8d
    daa                                           ; $4b4c: $27
    ld [bc], a                                    ; $4b4d: $02
    or l                                          ; $4b4e: $b5
    daa                                           ; $4b4f: $27
    ld [bc], a                                    ; $4b50: $02
    push hl                                       ; $4b51: $e5
    daa                                           ; $4b52: $27
    ld [bc], a                                    ; $4b53: $02
    dec h                                         ; $4b54: $25
    jr z, @+$04                                   ; $4b55: $28 $02

    inc l                                         ; $4b57: $2c
    jr z, @+$04                                   ; $4b58: $28 $02

    ld b, d                                       ; $4b5a: $42
    jr z, @+$04                                   ; $4b5b: $28 $02

    ld e, l                                       ; $4b5d: $5d
    jr z, @+$04                                   ; $4b5e: $28 $02

    halt                                          ; $4b60: $76
    jr z, @+$04                                   ; $4b61: $28 $02

    ret nc                                        ; $4b63: $d0

    jr z, @+$04                                   ; $4b64: $28 $02

    db $f4                                        ; $4b66: $f4
    jr z, jr_04d_4b6b                             ; $4b67: $28 $02

    jr nz, jr_04d_4b94                            ; $4b69: $20 $29

jr_04d_4b6b:
    ld [bc], a                                    ; $4b6b: $02
    ld [hl], $29                                  ; $4b6c: $36 $29
    ld [bc], a                                    ; $4b6e: $02
    ld d, e                                       ; $4b6f: $53
    add hl, hl                                    ; $4b70: $29
    ld [bc], a                                    ; $4b71: $02
    ld l, c                                       ; $4b72: $69
    add hl, hl                                    ; $4b73: $29
    ld [bc], a                                    ; $4b74: $02
    adc c                                         ; $4b75: $89
    add hl, hl                                    ; $4b76: $29
    ld [bc], a                                    ; $4b77: $02
    sub d                                         ; $4b78: $92
    add hl, hl                                    ; $4b79: $29
    ld [bc], a                                    ; $4b7a: $02
    and e                                         ; $4b7b: $a3
    add hl, hl                                    ; $4b7c: $29
    ld [bc], a                                    ; $4b7d: $02
    push hl                                       ; $4b7e: $e5
    add hl, hl                                    ; $4b7f: $29
    ld [bc], a                                    ; $4b80: $02
    db $f4                                        ; $4b81: $f4
    add hl, hl                                    ; $4b82: $29
    ld [bc], a                                    ; $4b83: $02
    ld b, $2a                                     ; $4b84: $06 $2a
    ld [bc], a                                    ; $4b86: $02
    ld [hl], $2a                                  ; $4b87: $36 $2a
    ld [bc], a                                    ; $4b89: $02
    ld h, d                                       ; $4b8a: $62
    ld a, [hl+]                                   ; $4b8b: $2a
    ld [bc], a                                    ; $4b8c: $02
    ld l, a                                       ; $4b8d: $6f
    ld a, [hl+]                                   ; $4b8e: $2a
    ld [bc], a                                    ; $4b8f: $02
    ld a, d                                       ; $4b90: $7a
    ld a, [hl+]                                   ; $4b91: $2a
    ld [bc], a                                    ; $4b92: $02
    adc l                                         ; $4b93: $8d

jr_04d_4b94:
    ld a, [hl+]                                   ; $4b94: $2a
    ld [bc], a                                    ; $4b95: $02
    xor e                                         ; $4b96: $ab
    ld a, [hl+]                                   ; $4b97: $2a
    ld [bc], a                                    ; $4b98: $02
    rst $10                                       ; $4b99: $d7
    ld a, [hl+]                                   ; $4b9a: $2a
    ld [bc], a                                    ; $4b9b: $02
    rst $18                                       ; $4b9c: $df
    ld a, [hl+]                                   ; $4b9d: $2a
    ld [bc], a                                    ; $4b9e: $02
    db $f4                                        ; $4b9f: $f4
    ld a, [hl+]                                   ; $4ba0: $2a
    ld [bc], a                                    ; $4ba1: $02
    jr jr_04d_4bcf                                ; $4ba2: $18 $2b

    ld [bc], a                                    ; $4ba4: $02
    dec l                                         ; $4ba5: $2d
    dec hl                                        ; $4ba6: $2b
    ld [bc], a                                    ; $4ba7: $02
    xor l                                         ; $4ba8: $ad
    dec hl                                        ; $4ba9: $2b
    ld [bc], a                                    ; $4baa: $02
    or a                                          ; $4bab: $b7
    dec hl                                        ; $4bac: $2b
    ld [bc], a                                    ; $4bad: $02
    cp h                                          ; $4bae: $bc
    dec hl                                        ; $4baf: $2b
    ld [bc], a                                    ; $4bb0: $02
    call Call_000_022b                            ; $4bb1: $cd $2b $02
    ld b, $2c                                     ; $4bb4: $06 $2c
    ld [bc], a                                    ; $4bb6: $02
    jr z, jr_04d_4be5                             ; $4bb7: $28 $2c

    ld [bc], a                                    ; $4bb9: $02
    ld b, d                                       ; $4bba: $42
    inc l                                         ; $4bbb: $2c
    ld [bc], a                                    ; $4bbc: $02
    ld l, c                                       ; $4bbd: $69
    inc l                                         ; $4bbe: $2c
    ld [bc], a                                    ; $4bbf: $02
    add l                                         ; $4bc0: $85
    inc l                                         ; $4bc1: $2c
    ld [bc], a                                    ; $4bc2: $02
    xor l                                         ; $4bc3: $ad
    inc l                                         ; $4bc4: $2c
    ld [bc], a                                    ; $4bc5: $02
    pop bc                                        ; $4bc6: $c1
    inc l                                         ; $4bc7: $2c
    ld [bc], a                                    ; $4bc8: $02
    ret nc                                        ; $4bc9: $d0

    inc l                                         ; $4bca: $2c
    ld [bc], a                                    ; $4bcb: $02
    jp hl                                         ; $4bcc: $e9


    inc l                                         ; $4bcd: $2c
    ld [bc], a                                    ; $4bce: $02

jr_04d_4bcf:
    db $fd                                        ; $4bcf: $fd
    inc l                                         ; $4bd0: $2c
    ld [bc], a                                    ; $4bd1: $02
    rlca                                          ; $4bd2: $07
    dec l                                         ; $4bd3: $2d
    ld [bc], a                                    ; $4bd4: $02
    ld a, [de]                                    ; $4bd5: $1a
    dec l                                         ; $4bd6: $2d
    ld [bc], a                                    ; $4bd7: $02
    dec a                                         ; $4bd8: $3d
    dec l                                         ; $4bd9: $2d
    ld [bc], a                                    ; $4bda: $02
    ld b, [hl]                                    ; $4bdb: $46
    dec l                                         ; $4bdc: $2d
    ld [bc], a                                    ; $4bdd: $02
    ld h, d                                       ; $4bde: $62
    dec l                                         ; $4bdf: $2d
    ld [bc], a                                    ; $4be0: $02
    ld [hl], a                                    ; $4be1: $77
    dec l                                         ; $4be2: $2d
    ld [bc], a                                    ; $4be3: $02
    sbc c                                         ; $4be4: $99

jr_04d_4be5:
    dec l                                         ; $4be5: $2d
    ld [bc], a                                    ; $4be6: $02
    or l                                          ; $4be7: $b5
    dec l                                         ; $4be8: $2d
    ld [bc], a                                    ; $4be9: $02
    db $f4                                        ; $4bea: $f4
    dec l                                         ; $4beb: $2d
    ld [bc], a                                    ; $4bec: $02
    ld c, $2e                                     ; $4bed: $0e $2e
    ld [bc], a                                    ; $4bef: $02
    ld hl, $022e                                  ; $4bf0: $21 $2e $02
    ld e, l                                       ; $4bf3: $5d
    ld l, $02                                     ; $4bf4: $2e $02
    ld a, d                                       ; $4bf6: $7a
    ld l, $02                                     ; $4bf7: $2e $02
    sub l                                         ; $4bf9: $95
    ld l, $02                                     ; $4bfa: $2e $02
    db $db                                        ; $4bfc: $db
    ld l, $02                                     ; $4bfd: $2e $02
    di                                            ; $4bff: $f3
    ld l, $02                                     ; $4c00: $2e $02
    dec [hl]                                      ; $4c02: $35
    cpl                                           ; $4c03: $2f
    ld [bc], a                                    ; $4c04: $02
    ld l, l                                       ; $4c05: $6d
    cpl                                           ; $4c06: $2f
    ld [bc], a                                    ; $4c07: $02
    ld [hl], a                                    ; $4c08: $77
    cpl                                           ; $4c09: $2f
    ld [bc], a                                    ; $4c0a: $02
    sbc l                                         ; $4c0b: $9d
    cpl                                           ; $4c0c: $2f
    ld [bc], a                                    ; $4c0d: $02
    jp z, Jump_000_022f                           ; $4c0e: $ca $2f $02

    and $2f                                       ; $4c11: $e6 $2f
    ld [bc], a                                    ; $4c13: $02
    db $ed                                        ; $4c14: $ed
    cpl                                           ; $4c15: $2f
    ld [bc], a                                    ; $4c16: $02
    ld c, $30                                     ; $4c17: $0e $30
    ld [bc], a                                    ; $4c19: $02
    ld a, [de]                                    ; $4c1a: $1a
    jr nc, @+$04                                  ; $4c1b: $30 $02

    scf                                           ; $4c1d: $37
    jr nc, @+$04                                  ; $4c1e: $30 $02

    ld e, c                                       ; $4c20: $59
    jr nc, @+$04                                  ; $4c21: $30 $02

    ld [hl], d                                    ; $4c23: $72
    jr nc, @+$04                                  ; $4c24: $30 $02

    add c                                         ; $4c26: $81
    jr nc, @+$04                                  ; $4c27: $30 $02

    sbc [hl]                                      ; $4c29: $9e
    jr nc, @+$04                                  ; $4c2a: $30 $02

    xor a                                         ; $4c2c: $af
    jr nc, @+$04                                  ; $4c2d: $30 $02

    db $f4                                        ; $4c2f: $f4
    jr nc, @+$04                                  ; $4c30: $30 $02

    dec de                                        ; $4c32: $1b
    ld sp, $5602                                  ; $4c33: $31 $02 $56
    ld sp, $6802                                  ; $4c36: $31 $02 $68
    ld sp, $7e02                                  ; $4c39: $31 $02 $7e
    ld sp, $9b02                                  ; $4c3c: $31 $02 $9b
    ld sp, $ca02                                  ; $4c3f: $31 $02 $ca
    ld sp, $e602                                  ; $4c42: $31 $02 $e6
    ld sp, $1802                                  ; $4c45: $31 $02 $18
    ld [hl-], a                                   ; $4c48: $32
    ld [bc], a                                    ; $4c49: $02
    daa                                           ; $4c4a: $27
    ld [hl-], a                                   ; $4c4b: $32
    ld [bc], a                                    ; $4c4c: $02
    ld e, b                                       ; $4c4d: $58
    ld [hl-], a                                   ; $4c4e: $32
    ld [bc], a                                    ; $4c4f: $02
    adc l                                         ; $4c50: $8d
    ld [hl-], a                                   ; $4c51: $32
    ld [bc], a                                    ; $4c52: $02
    and [hl]                                      ; $4c53: $a6
    ld [hl-], a                                   ; $4c54: $32
    ld [bc], a                                    ; $4c55: $02
    db $e4                                        ; $4c56: $e4
    ld [hl-], a                                   ; $4c57: $32
    ld [bc], a                                    ; $4c58: $02
    inc de                                        ; $4c59: $13
    inc sp                                        ; $4c5a: $33
    ld [bc], a                                    ; $4c5b: $02
    ld c, d                                       ; $4c5c: $4a
    inc sp                                        ; $4c5d: $33
    ld [bc], a                                    ; $4c5e: $02
    ld l, a                                       ; $4c5f: $6f
    inc sp                                        ; $4c60: $33
    ld [bc], a                                    ; $4c61: $02
    add c                                         ; $4c62: $81
    inc sp                                        ; $4c63: $33
    ld [bc], a                                    ; $4c64: $02
    cp c                                          ; $4c65: $b9
    inc sp                                        ; $4c66: $33
    ld [bc], a                                    ; $4c67: $02
    sbc $33                                       ; $4c68: $de $33
    ld [bc], a                                    ; $4c6a: $02
    di                                            ; $4c6b: $f3
    inc sp                                        ; $4c6c: $33
    ld [bc], a                                    ; $4c6d: $02
    rst $30                                       ; $4c6e: $f7
    inc sp                                        ; $4c6f: $33
    ld [bc], a                                    ; $4c70: $02
    ld [hl+], a                                   ; $4c71: $22
    inc [hl]                                      ; $4c72: $34
    ld [bc], a                                    ; $4c73: $02
    inc a                                         ; $4c74: $3c
    inc [hl]                                      ; $4c75: $34
    ld [bc], a                                    ; $4c76: $02
    ld c, l                                       ; $4c77: $4d
    inc [hl]                                      ; $4c78: $34
    ld [bc], a                                    ; $4c79: $02
    ld e, [hl]                                    ; $4c7a: $5e
    inc [hl]                                      ; $4c7b: $34
    ld [bc], a                                    ; $4c7c: $02
    add b                                         ; $4c7d: $80
    inc [hl]                                      ; $4c7e: $34
    ld [bc], a                                    ; $4c7f: $02
    sub c                                         ; $4c80: $91
    inc [hl]                                      ; $4c81: $34
    ld [bc], a                                    ; $4c82: $02
    or c                                          ; $4c83: $b1
    inc [hl]                                      ; $4c84: $34
    ld [bc], a                                    ; $4c85: $02

Call_04d_4c86:
    cp e                                          ; $4c86: $bb
    inc [hl]                                      ; $4c87: $34
    ld [bc], a                                    ; $4c88: $02
    call nc, $0234                                ; $4c89: $d4 $34 $02
    rst $28                                       ; $4c8c: $ef
    inc [hl]                                      ; $4c8d: $34
    ld [bc], a                                    ; $4c8e: $02
    ld c, d                                       ; $4c8f: $4a
    dec [hl]                                      ; $4c90: $35
    ld [bc], a                                    ; $4c91: $02
    ld e, [hl]                                    ; $4c92: $5e
    dec [hl]                                      ; $4c93: $35
    ld [bc], a                                    ; $4c94: $02
    xor a                                         ; $4c95: $af
    dec [hl]                                      ; $4c96: $35
    ld [bc], a                                    ; $4c97: $02
    rst $08                                       ; $4c98: $cf
    dec [hl]                                      ; $4c99: $35
    ld [bc], a                                    ; $4c9a: $02
    push af                                       ; $4c9b: $f5
    dec [hl]                                      ; $4c9c: $35
    ld [bc], a                                    ; $4c9d: $02
    nop                                           ; $4c9e: $00
    ld [hl], $02                                  ; $4c9f: $36 $02
    inc sp                                        ; $4ca1: $33
    ld [hl], $02                                  ; $4ca2: $36 $02
    dec sp                                        ; $4ca4: $3b
    ld [hl], $02                                  ; $4ca5: $36 $02
    ld h, l                                       ; $4ca7: $65
    ld [hl], $02                                  ; $4ca8: $36 $02
    ld [hl], e                                    ; $4caa: $73
    ld [hl], $02                                  ; $4cab: $36 $02
    adc [hl]                                      ; $4cad: $8e
    ld [hl], $02                                  ; $4cae: $36 $02
    ldh [$36], a                                  ; $4cb0: $e0 $36
    ld [bc], a                                    ; $4cb2: $02
    ld a, [$0236]                                 ; $4cb3: $fa $36 $02
    dec bc                                        ; $4cb6: $0b
    scf                                           ; $4cb7: $37
    ld [bc], a                                    ; $4cb8: $02
    ld [hl+], a                                   ; $4cb9: $22
    scf                                           ; $4cba: $37
    ld [bc], a                                    ; $4cbb: $02
    ld b, a                                       ; $4cbc: $47
    scf                                           ; $4cbd: $37
    ld [bc], a                                    ; $4cbe: $02
    ld d, d                                       ; $4cbf: $52
    scf                                           ; $4cc0: $37
    ld [bc], a                                    ; $4cc1: $02
    ld e, l                                       ; $4cc2: $5d
    scf                                           ; $4cc3: $37
    ld [bc], a                                    ; $4cc4: $02
    and c                                         ; $4cc5: $a1
    scf                                           ; $4cc6: $37
    ld [bc], a                                    ; $4cc7: $02
    cp d                                          ; $4cc8: $ba
    scf                                           ; $4cc9: $37
    ld [bc], a                                    ; $4cca: $02
    ret z                                         ; $4ccb: $c8

    scf                                           ; $4ccc: $37
    ld [bc], a                                    ; $4ccd: $02
    ret nc                                        ; $4cce: $d0

    scf                                           ; $4ccf: $37
    ld [bc], a                                    ; $4cd0: $02
    ld a, [c]                                     ; $4cd1: $f2
    scf                                           ; $4cd2: $37
    ld [bc], a                                    ; $4cd3: $02
    add hl, sp                                    ; $4cd4: $39
    jr c, @+$04                                   ; $4cd5: $38 $02

    ld e, b                                       ; $4cd7: $58
    jr c, @+$04                                   ; $4cd8: $38 $02

    ld l, l                                       ; $4cda: $6d
    jr c, @+$04                                   ; $4cdb: $38 $02

    ld [hl], l                                    ; $4cdd: $75
    jr c, @+$04                                   ; $4cde: $38 $02

    sbc a                                         ; $4ce0: $9f
    jr c, @+$04                                   ; $4ce1: $38 $02

    jp nz, Jump_000_0238                          ; $4ce3: $c2 $38 $02

    rst $10                                       ; $4ce6: $d7
    jr c, @+$04                                   ; $4ce7: $38 $02

    push hl                                       ; $4ce9: $e5
    jr c, jr_04d_4cee                             ; $4cea: $38 $02

    rlca                                          ; $4cec: $07
    add hl, sp                                    ; $4ced: $39

jr_04d_4cee:
    ld [bc], a                                    ; $4cee: $02
    jr jr_04d_4d2a                                ; $4cef: $18 $39

    ld [bc], a                                    ; $4cf1: $02
    ld b, h                                       ; $4cf2: $44
    add hl, sp                                    ; $4cf3: $39
    ld [bc], a                                    ; $4cf4: $02
    ld [hl], d                                    ; $4cf5: $72
    add hl, sp                                    ; $4cf6: $39
    ld [bc], a                                    ; $4cf7: $02
    add h                                         ; $4cf8: $84
    add hl, sp                                    ; $4cf9: $39
    ld [bc], a                                    ; $4cfa: $02
    pop de                                        ; $4cfb: $d1
    add hl, sp                                    ; $4cfc: $39
    ld [bc], a                                    ; $4cfd: $02
    or $39                                        ; $4cfe: $f6 $39
    ld [bc], a                                    ; $4d00: $02
    dec e                                         ; $4d01: $1d
    ld a, [hl-]                                   ; $4d02: $3a
    ld [bc], a                                    ; $4d03: $02
    dec a                                         ; $4d04: $3d
    ld a, [hl-]                                   ; $4d05: $3a
    ld [bc], a                                    ; $4d06: $02
    ld d, a                                       ; $4d07: $57
    ld a, [hl-]                                   ; $4d08: $3a
    ld [bc], a                                    ; $4d09: $02
    adc a                                         ; $4d0a: $8f
    ld a, [hl-]                                   ; $4d0b: $3a
    ld [bc], a                                    ; $4d0c: $02
    sbc d                                         ; $4d0d: $9a
    ld a, [hl-]                                   ; $4d0e: $3a
    ld [bc], a                                    ; $4d0f: $02
    jr nz, jr_04d_4d4d                            ; $4d10: $20 $3b

    ld [bc], a                                    ; $4d12: $02
    add hl, hl                                    ; $4d13: $29
    dec sp                                        ; $4d14: $3b
    ld [bc], a                                    ; $4d15: $02
    ld a, $3b                                     ; $4d16: $3e $3b
    ld [bc], a                                    ; $4d18: $02
    ld d, [hl]                                    ; $4d19: $56
    dec sp                                        ; $4d1a: $3b
    ld [bc], a                                    ; $4d1b: $02
    ld h, [hl]                                    ; $4d1c: $66
    dec sp                                        ; $4d1d: $3b
    ld [bc], a                                    ; $4d1e: $02
    adc a                                         ; $4d1f: $8f
    dec sp                                        ; $4d20: $3b
    ld [bc], a                                    ; $4d21: $02
    call Call_000_023b                            ; $4d22: $cd $3b $02
    db $dd                                        ; $4d25: $dd
    dec sp                                        ; $4d26: $3b
    ld [bc], a                                    ; $4d27: $02
    jr @+$3e                                      ; $4d28: $18 $3c

jr_04d_4d2a:
    ld [bc], a                                    ; $4d2a: $02
    ld a, $3c                                     ; $4d2b: $3e $3c
    ld [bc], a                                    ; $4d2d: $02
    ld d, d                                       ; $4d2e: $52
    inc a                                         ; $4d2f: $3c
    ld [bc], a                                    ; $4d30: $02
    ld l, c                                       ; $4d31: $69
    inc a                                         ; $4d32: $3c
    ld [bc], a                                    ; $4d33: $02
    sub e                                         ; $4d34: $93
    inc a                                         ; $4d35: $3c
    ld [bc], a                                    ; $4d36: $02
    or c                                          ; $4d37: $b1
    inc a                                         ; $4d38: $3c
    ld [bc], a                                    ; $4d39: $02
    call nc, $023c                                ; $4d3a: $d4 $3c $02
    ld a, [c]                                     ; $4d3d: $f2
    inc a                                         ; $4d3e: $3c
    ld [bc], a                                    ; $4d3f: $02
    rst $30                                       ; $4d40: $f7
    inc a                                         ; $4d41: $3c
    ld [bc], a                                    ; $4d42: $02
    ld d, d                                       ; $4d43: $52
    dec a                                         ; $4d44: $3d
    ld [bc], a                                    ; $4d45: $02
    ld e, b                                       ; $4d46: $58
    dec a                                         ; $4d47: $3d
    ld [bc], a                                    ; $4d48: $02
    add a                                         ; $4d49: $87
    dec a                                         ; $4d4a: $3d
    ld [bc], a                                    ; $4d4b: $02
    cp [hl]                                       ; $4d4c: $be

jr_04d_4d4d:
    dec a                                         ; $4d4d: $3d
    ld [bc], a                                    ; $4d4e: $02
    jp nc, Jump_000_023d                          ; $4d4f: $d2 $3d $02

    ld [c], a                                     ; $4d52: $e2
    dec a                                         ; $4d53: $3d
    ld [bc], a                                    ; $4d54: $02
    ldh a, [$3d]                                  ; $4d55: $f0 $3d
    ld [bc], a                                    ; $4d57: $02
    ld a, [bc]                                    ; $4d58: $0a
    ld a, $02                                     ; $4d59: $3e $02
    ld e, h                                       ; $4d5b: $5c
    ld a, $02                                     ; $4d5c: $3e $02
    ld h, [hl]                                    ; $4d5e: $66
    ld a, $02                                     ; $4d5f: $3e $02
    ld a, h                                       ; $4d61: $7c
    ld a, $02                                     ; $4d62: $3e $02
    add e                                         ; $4d64: $83
    ld a, $02                                     ; $4d65: $3e $02
    or l                                          ; $4d67: $b5
    ld a, $02                                     ; $4d68: $3e $02
    push hl                                       ; $4d6a: $e5
    ld a, $02                                     ; $4d6b: $3e $02
    ld b, $3f                                     ; $4d6d: $06 $3f
    ld [bc], a                                    ; $4d6f: $02
    ld l, b                                       ; $4d70: $68
    ccf                                           ; $4d71: $3f
    ld [bc], a                                    ; $4d72: $02
    add a                                         ; $4d73: $87
    ccf                                           ; $4d74: $3f
    ld [bc], a                                    ; $4d75: $02
    sbc d                                         ; $4d76: $9a
    ccf                                           ; $4d77: $3f
    inc bc                                        ; $4d78: $03
    ld bc, $0300                                  ; $4d79: $01 $00 $03
    ld d, c                                       ; $4d7c: $51
    nop                                           ; $4d7d: $00
    inc bc                                        ; $4d7e: $03
    add h                                         ; $4d7f: $84
    nop                                           ; $4d80: $00
    inc bc                                        ; $4d81: $03
    or l                                          ; $4d82: $b5
    nop                                           ; $4d83: $00
    inc bc                                        ; $4d84: $03
    db $dd                                        ; $4d85: $dd
    nop                                           ; $4d86: $00
    inc bc                                        ; $4d87: $03
    ld a, [c]                                     ; $4d88: $f2
    nop                                           ; $4d89: $00
    inc bc                                        ; $4d8a: $03
    ld a, [bc]                                    ; $4d8b: $0a
    ld bc, $1003                                  ; $4d8c: $01 $03 $10
    ld bc, $4103                                  ; $4d8f: $01 $03 $41
    ld bc, $5c03                                  ; $4d92: $01 $03 $5c
    ld bc, $8703                                  ; $4d95: $01 $03 $87
    ld bc, $9803                                  ; $4d98: $01 $03 $98
    ld bc, $c503                                  ; $4d9b: $01 $03 $c5
    ld bc, $d703                                  ; $4d9e: $01 $03 $d7
    ld bc, $f603                                  ; $4da1: $01 $03 $f6
    ld bc, $0003                                  ; $4da4: $01 $03 $00
    ld [bc], a                                    ; $4da7: $02
    inc bc                                        ; $4da8: $03
    or a                                          ; $4da9: $b7
    ld [bc], a                                    ; $4daa: $02
    inc bc                                        ; $4dab: $03
    adc $02                                       ; $4dac: $ce $02
    inc bc                                        ; $4dae: $03
    ld b, a                                       ; $4daf: $47
    inc bc                                        ; $4db0: $03
    inc bc                                        ; $4db1: $03
    ld h, h                                       ; $4db2: $64
    inc bc                                        ; $4db3: $03
    inc bc                                        ; $4db4: $03
    adc l                                         ; $4db5: $8d
    inc bc                                        ; $4db6: $03
    inc bc                                        ; $4db7: $03
    xor [hl]                                      ; $4db8: $ae
    inc bc                                        ; $4db9: $03
    inc bc                                        ; $4dba: $03
    xor $03                                       ; $4dbb: $ee $03
    inc bc                                        ; $4dbd: $03
    ld sp, hl                                     ; $4dbe: $f9
    inc bc                                        ; $4dbf: $03
    inc bc                                        ; $4dc0: $03
    ld b, $04                                     ; $4dc1: $06 $04
    inc bc                                        ; $4dc3: $03
    inc c                                         ; $4dc4: $0c
    inc b                                         ; $4dc5: $04
    inc bc                                        ; $4dc6: $03
    daa                                           ; $4dc7: $27
    inc b                                         ; $4dc8: $04
    inc bc                                        ; $4dc9: $03
    jr c, jr_04d_4dd0                             ; $4dca: $38 $04

    inc bc                                        ; $4dcc: $03
    ld h, c                                       ; $4dcd: $61
    inc b                                         ; $4dce: $04
    inc bc                                        ; $4dcf: $03

jr_04d_4dd0:
    add d                                         ; $4dd0: $82
    inc b                                         ; $4dd1: $04
    inc bc                                        ; $4dd2: $03
    sbc d                                         ; $4dd3: $9a
    inc b                                         ; $4dd4: $04
    inc bc                                        ; $4dd5: $03
    and a                                         ; $4dd6: $a7
    inc b                                         ; $4dd7: $04
    inc bc                                        ; $4dd8: $03
    ret c                                         ; $4dd9: $d8

    inc b                                         ; $4dda: $04
    inc bc                                        ; $4ddb: $03
    add sp, $04                                   ; $4ddc: $e8 $04
    inc bc                                        ; $4dde: $03
    ld c, $05                                     ; $4ddf: $0e $05
    inc bc                                        ; $4de1: $03
    inc l                                         ; $4de2: $2c
    dec b                                         ; $4de3: $05
    inc bc                                        ; $4de4: $03
    ld l, d                                       ; $4de5: $6a
    dec b                                         ; $4de6: $05
    inc bc                                        ; $4de7: $03
    sbc c                                         ; $4de8: $99
    dec b                                         ; $4de9: $05
    inc bc                                        ; $4dea: $03
    cp a                                          ; $4deb: $bf
    dec b                                         ; $4dec: $05
    inc bc                                        ; $4ded: $03
    rlc l                                         ; $4dee: $cb $05
    inc bc                                        ; $4df0: $03
    push de                                       ; $4df1: $d5
    dec b                                         ; $4df2: $05
    inc bc                                        ; $4df3: $03
    rst $20                                       ; $4df4: $e7
    dec b                                         ; $4df5: $05
    inc bc                                        ; $4df6: $03
    rrca                                          ; $4df7: $0f
    ld b, $03                                     ; $4df8: $06 $03
    inc sp                                        ; $4dfa: $33
    ld b, $03                                     ; $4dfb: $06 $03
    ld a, $06                                     ; $4dfd: $3e $06
    inc bc                                        ; $4dff: $03
    ld h, c                                       ; $4e00: $61
    ld b, $03                                     ; $4e01: $06 $03
    adc d                                         ; $4e03: $8a
    ld b, $03                                     ; $4e04: $06 $03
    or b                                          ; $4e06: $b0
    ld b, $03                                     ; $4e07: $06 $03
    sbc $06                                       ; $4e09: $de $06
    inc bc                                        ; $4e0b: $03
    cp $06                                        ; $4e0c: $fe $06
    inc bc                                        ; $4e0e: $03
    ld a, [hl+]                                   ; $4e0f: $2a
    rlca                                          ; $4e10: $07
    inc bc                                        ; $4e11: $03
    add h                                         ; $4e12: $84
    rlca                                          ; $4e13: $07
    inc bc                                        ; $4e14: $03
    cp c                                          ; $4e15: $b9
    rlca                                          ; $4e16: $07
    inc bc                                        ; $4e17: $03
    db $d3                                        ; $4e18: $d3
    rlca                                          ; $4e19: $07
    inc bc                                        ; $4e1a: $03
    db $fd                                        ; $4e1b: $fd
    rlca                                          ; $4e1c: $07
    inc bc                                        ; $4e1d: $03
    ld c, $08                                     ; $4e1e: $0e $08
    inc bc                                        ; $4e20: $03
    daa                                           ; $4e21: $27
    ld [$4b03], sp                                ; $4e22: $08 $03 $4b
    ld [$6503], sp                                ; $4e25: $08 $03 $65
    ld [$8f03], sp                                ; $4e28: $08 $03 $8f
    ld [$ac03], sp                                ; $4e2b: $08 $03 $ac
    ld [$d403], sp                                ; $4e2e: $08 $03 $d4
    ld [$f603], sp                                ; $4e31: $08 $03 $f6
    ld [$4003], sp                                ; $4e34: $08 $03 $40
    add hl, bc                                    ; $4e37: $09
    inc bc                                        ; $4e38: $03
    ld d, d                                       ; $4e39: $52
    add hl, bc                                    ; $4e3a: $09
    inc bc                                        ; $4e3b: $03
    ld h, c                                       ; $4e3c: $61
    add hl, bc                                    ; $4e3d: $09
    inc bc                                        ; $4e3e: $03
    adc l                                         ; $4e3f: $8d
    add hl, bc                                    ; $4e40: $09
    inc bc                                        ; $4e41: $03
    ldh [$09], a                                  ; $4e42: $e0 $09
    inc bc                                        ; $4e44: $03
    dec de                                        ; $4e45: $1b
    ld a, [bc]                                    ; $4e46: $0a
    inc bc                                        ; $4e47: $03
    scf                                           ; $4e48: $37
    ld a, [bc]                                    ; $4e49: $0a
    inc bc                                        ; $4e4a: $03
    ld b, b                                       ; $4e4b: $40
    ld a, [bc]                                    ; $4e4c: $0a
    inc bc                                        ; $4e4d: $03
    ld c, b                                       ; $4e4e: $48
    ld a, [bc]                                    ; $4e4f: $0a
    inc bc                                        ; $4e50: $03
    ld l, b                                       ; $4e51: $68
    ld a, [bc]                                    ; $4e52: $0a
    inc bc                                        ; $4e53: $03
    add [hl]                                      ; $4e54: $86
    ld a, [bc]                                    ; $4e55: $0a
    inc bc                                        ; $4e56: $03
    sub e                                         ; $4e57: $93
    ld a, [bc]                                    ; $4e58: $0a
    inc bc                                        ; $4e59: $03
    and [hl]                                      ; $4e5a: $a6
    ld a, [bc]                                    ; $4e5b: $0a
    inc bc                                        ; $4e5c: $03
    push bc                                       ; $4e5d: $c5
    ld a, [bc]                                    ; $4e5e: $0a
    inc bc                                        ; $4e5f: $03
    db $ed                                        ; $4e60: $ed
    ld a, [bc]                                    ; $4e61: $0a
    inc bc                                        ; $4e62: $03
    inc bc                                        ; $4e63: $03
    dec bc                                        ; $4e64: $0b
    inc bc                                        ; $4e65: $03
    add hl, sp                                    ; $4e66: $39
    dec bc                                        ; $4e67: $0b
    inc bc                                        ; $4e68: $03
    ld l, h                                       ; $4e69: $6c
    dec bc                                        ; $4e6a: $0b
    inc bc                                        ; $4e6b: $03
    add d                                         ; $4e6c: $82
    dec bc                                        ; $4e6d: $0b
    inc bc                                        ; $4e6e: $03
    sbc h                                         ; $4e6f: $9c
    dec bc                                        ; $4e70: $0b
    inc bc                                        ; $4e71: $03
    xor a                                         ; $4e72: $af
    dec bc                                        ; $4e73: $0b
    inc bc                                        ; $4e74: $03
    rst $00                                       ; $4e75: $c7
    dec bc                                        ; $4e76: $0b
    inc bc                                        ; $4e77: $03
    rst $18                                       ; $4e78: $df
    dec bc                                        ; $4e79: $0b
    inc bc                                        ; $4e7a: $03
    db $f4                                        ; $4e7b: $f4
    dec bc                                        ; $4e7c: $0b
    inc bc                                        ; $4e7d: $03
    ld d, $0c                                     ; $4e7e: $16 $0c
    inc bc                                        ; $4e80: $03
    daa                                           ; $4e81: $27
    inc c                                         ; $4e82: $0c
    inc bc                                        ; $4e83: $03
    inc a                                         ; $4e84: $3c
    inc c                                         ; $4e85: $0c
    inc bc                                        ; $4e86: $03
    ld d, b                                       ; $4e87: $50
    inc c                                         ; $4e88: $0c
    inc bc                                        ; $4e89: $03
    ld l, a                                       ; $4e8a: $6f
    inc c                                         ; $4e8b: $0c
    inc bc                                        ; $4e8c: $03
    add h                                         ; $4e8d: $84
    inc c                                         ; $4e8e: $0c
    inc bc                                        ; $4e8f: $03
    and b                                         ; $4e90: $a0
    inc c                                         ; $4e91: $0c
    inc bc                                        ; $4e92: $03
    cp h                                          ; $4e93: $bc
    inc c                                         ; $4e94: $0c
    inc bc                                        ; $4e95: $03
    reti                                          ; $4e96: $d9


    inc c                                         ; $4e97: $0c
    inc bc                                        ; $4e98: $03
    ld a, [$030c]                                 ; $4e99: $fa $0c $03
    jr jr_04d_4eab                                ; $4e9c: $18 $0d

    inc bc                                        ; $4e9e: $03
    inc [hl]                                      ; $4e9f: $34
    dec c                                         ; $4ea0: $0d
    inc bc                                        ; $4ea1: $03
    ld d, c                                       ; $4ea2: $51
    dec c                                         ; $4ea3: $0d
    inc bc                                        ; $4ea4: $03
    ld [hl], b                                    ; $4ea5: $70
    dec c                                         ; $4ea6: $0d
    inc bc                                        ; $4ea7: $03
    adc a                                         ; $4ea8: $8f
    dec c                                         ; $4ea9: $0d
    inc bc                                        ; $4eaa: $03

jr_04d_4eab:
    or d                                          ; $4eab: $b2
    dec c                                         ; $4eac: $0d
    inc bc                                        ; $4ead: $03
    ret z                                         ; $4eae: $c8

    dec c                                         ; $4eaf: $0d
    inc bc                                        ; $4eb0: $03
    db $e3                                        ; $4eb1: $e3
    dec c                                         ; $4eb2: $0d
    inc bc                                        ; $4eb3: $03
    ld [de], a                                    ; $4eb4: $12
    ld c, $03                                     ; $4eb5: $0e $03
    ld a, [hl+]                                   ; $4eb7: $2a
    ld c, $03                                     ; $4eb8: $0e $03
    ld c, [hl]                                    ; $4eba: $4e
    ld c, $03                                     ; $4ebb: $0e $03
    ld e, [hl]                                    ; $4ebd: $5e
    ld c, $03                                     ; $4ebe: $0e $03
    ld [hl], h                                    ; $4ec0: $74
    ld c, $03                                     ; $4ec1: $0e $03
    sub d                                         ; $4ec3: $92
    ld c, $03                                     ; $4ec4: $0e $03
    cp [hl]                                       ; $4ec6: $be
    ld c, $03                                     ; $4ec7: $0e $03
    call nc, $030e                                ; $4ec9: $d4 $0e $03
    dec b                                         ; $4ecc: $05
    rrca                                          ; $4ecd: $0f
    inc bc                                        ; $4ece: $03
    ld a, [hl+]                                   ; $4ecf: $2a
    rrca                                          ; $4ed0: $0f
    inc bc                                        ; $4ed1: $03
    ld c, l                                       ; $4ed2: $4d
    rrca                                          ; $4ed3: $0f
    inc bc                                        ; $4ed4: $03
    halt                                          ; $4ed5: $76
    rrca                                          ; $4ed6: $0f
    inc bc                                        ; $4ed7: $03
    adc l                                         ; $4ed8: $8d
    rrca                                          ; $4ed9: $0f
    inc bc                                        ; $4eda: $03
    xor e                                         ; $4edb: $ab
    rrca                                          ; $4edc: $0f
    inc bc                                        ; $4edd: $03
    cp l                                          ; $4ede: $bd
    rrca                                          ; $4edf: $0f
    inc bc                                        ; $4ee0: $03
    call Call_000_030f                            ; $4ee1: $cd $0f $03
    db $d3                                        ; $4ee4: $d3
    rrca                                          ; $4ee5: $0f
    inc bc                                        ; $4ee6: $03
    ldh [rIF], a                                  ; $4ee7: $e0 $0f
    inc bc                                        ; $4ee9: $03
    xor $0f                                       ; $4eea: $ee $0f
    inc bc                                        ; $4eec: $03
    ld b, l                                       ; $4eed: $45
    db $10                                        ; $4eee: $10
    inc bc                                        ; $4eef: $03
    ld e, [hl]                                    ; $4ef0: $5e
    db $10                                        ; $4ef1: $10
    inc bc                                        ; $4ef2: $03
    ld a, c                                       ; $4ef3: $79
    db $10                                        ; $4ef4: $10
    inc bc                                        ; $4ef5: $03
    sbc b                                         ; $4ef6: $98
    db $10                                        ; $4ef7: $10
    inc bc                                        ; $4ef8: $03
    call nz, Call_000_0310                        ; $4ef9: $c4 $10 $03
    ldh [rNR10], a                                ; $4efc: $e0 $10
    inc bc                                        ; $4efe: $03
    ld sp, hl                                     ; $4eff: $f9
    db $10                                        ; $4f00: $10
    inc bc                                        ; $4f01: $03
    ld bc, $0311                                  ; $4f02: $01 $11 $03
    ld e, $11                                     ; $4f05: $1e $11
    inc bc                                        ; $4f07: $03
    ld b, b                                       ; $4f08: $40
    ld de, $5603                                  ; $4f09: $11 $03 $56
    ld de, $7e03                                  ; $4f0c: $11 $03 $7e
    ld de, $8e03                                  ; $4f0f: $11 $03 $8e
    ld de, $b003                                  ; $4f12: $11 $03 $b0
    ld de, $c103                                  ; $4f15: $11 $03 $c1
    ld de, $e703                                  ; $4f18: $11 $03 $e7
    ld de, $ff03                                  ; $4f1b: $11 $03 $ff
    ld de, $3403                                  ; $4f1e: $11 $03 $34
    ld [de], a                                    ; $4f21: $12
    inc bc                                        ; $4f22: $03
    ld h, d                                       ; $4f23: $62
    ld [de], a                                    ; $4f24: $12
    inc bc                                        ; $4f25: $03
    ld l, d                                       ; $4f26: $6a
    ld [de], a                                    ; $4f27: $12
    inc bc                                        ; $4f28: $03
    ld [hl], l                                    ; $4f29: $75
    ld [de], a                                    ; $4f2a: $12
    inc bc                                        ; $4f2b: $03
    sub a                                         ; $4f2c: $97
    ld [de], a                                    ; $4f2d: $12
    inc bc                                        ; $4f2e: $03
    and d                                         ; $4f2f: $a2
    ld [de], a                                    ; $4f30: $12
    inc bc                                        ; $4f31: $03
    xor a                                         ; $4f32: $af
    ld [de], a                                    ; $4f33: $12
    inc bc                                        ; $4f34: $03
    sub $12                                       ; $4f35: $d6 $12
    inc bc                                        ; $4f37: $03
    ld c, $13                                     ; $4f38: $0e $13
    inc bc                                        ; $4f3a: $03
    ld hl, $0313                                  ; $4f3b: $21 $13 $03
    ld d, c                                       ; $4f3e: $51
    inc de                                        ; $4f3f: $13
    inc bc                                        ; $4f40: $03
    ld l, b                                       ; $4f41: $68
    inc de                                        ; $4f42: $13
    inc bc                                        ; $4f43: $03
    adc [hl]                                      ; $4f44: $8e
    inc de                                        ; $4f45: $13
    inc bc                                        ; $4f46: $03
    sbc b                                         ; $4f47: $98
    inc de                                        ; $4f48: $13
    inc bc                                        ; $4f49: $03
    inc sp                                        ; $4f4a: $33
    inc d                                         ; $4f4b: $14
    inc bc                                        ; $4f4c: $03
    ld b, [hl]                                    ; $4f4d: $46
    inc d                                         ; $4f4e: $14
    inc bc                                        ; $4f4f: $03
    ld l, a                                       ; $4f50: $6f
    inc d                                         ; $4f51: $14
    inc bc                                        ; $4f52: $03
    call nz, $0314                                ; $4f53: $c4 $14 $03
    db $e3                                        ; $4f56: $e3
    inc d                                         ; $4f57: $14
    inc bc                                        ; $4f58: $03
    rst $38                                       ; $4f59: $ff
    inc d                                         ; $4f5a: $14
    inc bc                                        ; $4f5b: $03
    ld hl, $0315                                  ; $4f5c: $21 $15 $03
    ld c, l                                       ; $4f5f: $4d
    dec d                                         ; $4f60: $15
    inc bc                                        ; $4f61: $03
    add l                                         ; $4f62: $85
    dec d                                         ; $4f63: $15
    inc bc                                        ; $4f64: $03
    cp d                                          ; $4f65: $ba
    dec d                                         ; $4f66: $15
    inc bc                                        ; $4f67: $03
    call nc, $0315                                ; $4f68: $d4 $15 $03
    ld b, $16                                     ; $4f6b: $06 $16
    inc bc                                        ; $4f6d: $03
    dec e                                         ; $4f6e: $1d
    ld d, $03                                     ; $4f6f: $16 $03
    add hl, sp                                    ; $4f71: $39
    ld d, $03                                     ; $4f72: $16 $03
    sub e                                         ; $4f74: $93
    ld d, $03                                     ; $4f75: $16 $03
    rst $08                                       ; $4f77: $cf
    ld d, $03                                     ; $4f78: $16 $03
    rst $18                                       ; $4f7a: $df
    ld d, $03                                     ; $4f7b: $16 $03
    ld a, [$0316]                                 ; $4f7d: $fa $16 $03
    ld d, $17                                     ; $4f80: $16 $17
    inc bc                                        ; $4f82: $03
    ld a, [de]                                    ; $4f83: $1a
    rla                                           ; $4f84: $17
    inc bc                                        ; $4f85: $03
    inc [hl]                                      ; $4f86: $34
    rla                                           ; $4f87: $17
    inc bc                                        ; $4f88: $03
    ld e, e                                       ; $4f89: $5b
    rla                                           ; $4f8a: $17
    inc bc                                        ; $4f8b: $03
    dec sp                                        ; $4f8c: $3b
    jr jr_04d_4f92                                ; $4f8d: $18 $03

    ld b, d                                       ; $4f8f: $42
    jr jr_04d_4f95                                ; $4f90: $18 $03

jr_04d_4f92:
    ld d, d                                       ; $4f92: $52
    jr jr_04d_4f98                                ; $4f93: $18 $03

jr_04d_4f95:
    ld h, e                                       ; $4f95: $63
    jr jr_04d_4f9b                                ; $4f96: $18 $03

jr_04d_4f98:
    sub l                                         ; $4f98: $95
    jr jr_04d_4f9e                                ; $4f99: $18 $03

jr_04d_4f9b:
    xor [hl]                                      ; $4f9b: $ae
    jr jr_04d_4fa1                                ; $4f9c: $18 $03

jr_04d_4f9e:
    db $e4                                        ; $4f9e: $e4
    jr jr_04d_4fa4                                ; $4f9f: $18 $03

jr_04d_4fa1:
    ld a, [bc]                                    ; $4fa1: $0a
    add hl, de                                    ; $4fa2: $19
    inc bc                                        ; $4fa3: $03

jr_04d_4fa4:
    ld a, [hl-]                                   ; $4fa4: $3a
    add hl, de                                    ; $4fa5: $19
    inc bc                                        ; $4fa6: $03
    ld b, a                                       ; $4fa7: $47
    add hl, de                                    ; $4fa8: $19
    inc bc                                        ; $4fa9: $03
    ld c, [hl]                                    ; $4faa: $4e
    add hl, de                                    ; $4fab: $19
    inc bc                                        ; $4fac: $03
    ld h, e                                       ; $4fad: $63
    add hl, de                                    ; $4fae: $19
    inc bc                                        ; $4faf: $03
    db $d3                                        ; $4fb0: $d3
    add hl, de                                    ; $4fb1: $19
    inc bc                                        ; $4fb2: $03
    jp hl                                         ; $4fb3: $e9


    add hl, de                                    ; $4fb4: $19
    inc bc                                        ; $4fb5: $03
    ld d, e                                       ; $4fb6: $53
    ld a, [de]                                    ; $4fb7: $1a
    inc bc                                        ; $4fb8: $03
    and [hl]                                      ; $4fb9: $a6
    ld a, [de]                                    ; $4fba: $1a
    inc bc                                        ; $4fbb: $03
    dec c                                         ; $4fbc: $0d
    dec de                                        ; $4fbd: $1b
    inc bc                                        ; $4fbe: $03
    ld l, b                                       ; $4fbf: $68
    dec de                                        ; $4fc0: $1b
    inc bc                                        ; $4fc1: $03
    ret nz                                        ; $4fc2: $c0

    dec de                                        ; $4fc3: $1b
    inc bc                                        ; $4fc4: $03
    or $1b                                        ; $4fc5: $f6 $1b
    inc bc                                        ; $4fc7: $03
    dec [hl]                                      ; $4fc8: $35
    inc e                                         ; $4fc9: $1c
    inc bc                                        ; $4fca: $03
    ld h, l                                       ; $4fcb: $65
    inc e                                         ; $4fcc: $1c
    inc bc                                        ; $4fcd: $03
    call nz, Call_000_031c                        ; $4fce: $c4 $1c $03
    pop de                                        ; $4fd1: $d1
    inc e                                         ; $4fd2: $1c
    inc bc                                        ; $4fd3: $03
    sub $1c                                       ; $4fd4: $d6 $1c
    inc bc                                        ; $4fd6: $03
    rst $20                                       ; $4fd7: $e7
    inc e                                         ; $4fd8: $1c
    inc bc                                        ; $4fd9: $03
    dec b                                         ; $4fda: $05
    dec e                                         ; $4fdb: $1d
    inc bc                                        ; $4fdc: $03
    inc d                                         ; $4fdd: $14
    dec e                                         ; $4fde: $1d
    inc bc                                        ; $4fdf: $03
    ld l, $1d                                     ; $4fe0: $2e $1d
    inc bc                                        ; $4fe2: $03
    dec a                                         ; $4fe3: $3d
    dec e                                         ; $4fe4: $1d
    inc bc                                        ; $4fe5: $03
    ld e, b                                       ; $4fe6: $58
    dec e                                         ; $4fe7: $1d
    inc bc                                        ; $4fe8: $03
    ld h, h                                       ; $4fe9: $64
    dec e                                         ; $4fea: $1d
    inc bc                                        ; $4feb: $03
    ld a, c                                       ; $4fec: $79
    dec e                                         ; $4fed: $1d
    inc bc                                        ; $4fee: $03
    and l                                         ; $4fef: $a5
    dec e                                         ; $4ff0: $1d
    inc bc                                        ; $4ff1: $03
    or a                                          ; $4ff2: $b7
    dec e                                         ; $4ff3: $1d
    inc bc                                        ; $4ff4: $03
    push de                                       ; $4ff5: $d5
    dec e                                         ; $4ff6: $1d
    inc bc                                        ; $4ff7: $03
    db $db                                        ; $4ff8: $db
    dec e                                         ; $4ff9: $1d
    inc bc                                        ; $4ffa: $03
    ld a, [c]                                     ; $4ffb: $f2
    dec e                                         ; $4ffc: $1d
    inc bc                                        ; $4ffd: $03
    rra                                           ; $4ffe: $1f
    ld e, $03                                     ; $4fff: $1e $03
    add hl, sp                                    ; $5001: $39
    ld e, $03                                     ; $5002: $1e $03
    ld h, l                                       ; $5004: $65
    ld e, $03                                     ; $5005: $1e $03
    add e                                         ; $5007: $83
    ld e, $03                                     ; $5008: $1e $03
    ret nc                                        ; $500a: $d0

    ld e, $03                                     ; $500b: $1e $03
    xor $1e                                       ; $500d: $ee $1e
    inc bc                                        ; $500f: $03
    dec d                                         ; $5010: $15
    rra                                           ; $5011: $1f
    inc bc                                        ; $5012: $03
    jr c, jr_04d_5034                             ; $5013: $38 $1f

    inc bc                                        ; $5015: $03
    ld h, h                                       ; $5016: $64
    rra                                           ; $5017: $1f
    inc bc                                        ; $5018: $03
    ld a, c                                       ; $5019: $79
    rra                                           ; $501a: $1f
    inc bc                                        ; $501b: $03
    add d                                         ; $501c: $82
    rra                                           ; $501d: $1f
    inc bc                                        ; $501e: $03
    and e                                         ; $501f: $a3
    rra                                           ; $5020: $1f
    inc bc                                        ; $5021: $03
    xor e                                         ; $5022: $ab
    rra                                           ; $5023: $1f
    inc bc                                        ; $5024: $03
    pop bc                                        ; $5025: $c1
    rra                                           ; $5026: $1f
    inc bc                                        ; $5027: $03
    ret nc                                        ; $5028: $d0

    rra                                           ; $5029: $1f
    inc bc                                        ; $502a: $03
    db $e3                                        ; $502b: $e3
    rra                                           ; $502c: $1f
    inc bc                                        ; $502d: $03
    rst $30                                       ; $502e: $f7
    rra                                           ; $502f: $1f
    inc bc                                        ; $5030: $03
    inc b                                         ; $5031: $04
    jr nz, jr_04d_5037                            ; $5032: $20 $03

jr_04d_5034:
    ld a, [bc]                                    ; $5034: $0a
    jr nz, jr_04d_503a                            ; $5035: $20 $03

jr_04d_5037:
    add hl, de                                    ; $5037: $19
    jr nz, jr_04d_503d                            ; $5038: $20 $03

jr_04d_503a:
    dec h                                         ; $503a: $25
    jr nz, jr_04d_5040                            ; $503b: $20 $03

Jump_04d_503d:
jr_04d_503d:
    dec hl                                        ; $503d: $2b
    jr nz, jr_04d_5043                            ; $503e: $20 $03

jr_04d_5040:
    ld a, [hl-]                                   ; $5040: $3a
    jr nz, jr_04d_5046                            ; $5041: $20 $03

jr_04d_5043:
    ld b, d                                       ; $5043: $42
    jr nz, jr_04d_5049                            ; $5044: $20 $03

jr_04d_5046:
    ld c, [hl]                                    ; $5046: $4e
    jr nz, jr_04d_504c                            ; $5047: $20 $03

jr_04d_5049:
    ld d, a                                       ; $5049: $57
    jr nz, jr_04d_504f                            ; $504a: $20 $03

jr_04d_504c:
    ld e, e                                       ; $504c: $5b
    jr nz, jr_04d_5052                            ; $504d: $20 $03

jr_04d_504f:
    ld h, d                                       ; $504f: $62
    jr nz, jr_04d_5055                            ; $5050: $20 $03

jr_04d_5052:
    ld l, d                                       ; $5052: $6a
    jr nz, jr_04d_5058                            ; $5053: $20 $03

jr_04d_5055:
    ld l, a                                       ; $5055: $6f
    jr nz, jr_04d_505b                            ; $5056: $20 $03

jr_04d_5058:
    ld [hl], e                                    ; $5058: $73
    jr nz, jr_04d_505e                            ; $5059: $20 $03

jr_04d_505b:
    ld [hl], a                                    ; $505b: $77
    jr nz, jr_04d_5061                            ; $505c: $20 $03

jr_04d_505e:
    ld a, h                                       ; $505e: $7c
    jr nz, jr_04d_5064                            ; $505f: $20 $03

jr_04d_5061:
    add d                                         ; $5061: $82
    jr nz, jr_04d_5067                            ; $5062: $20 $03

jr_04d_5064:
    adc c                                         ; $5064: $89
    jr nz, jr_04d_506a                            ; $5065: $20 $03

jr_04d_5067:
    sub c                                         ; $5067: $91
    jr nz, jr_04d_506d                            ; $5068: $20 $03

jr_04d_506a:
    sbc b                                         ; $506a: $98
    jr nz, jr_04d_5070                            ; $506b: $20 $03

jr_04d_506d:
    sbc a                                         ; $506d: $9f
    jr nz, jr_04d_5073                            ; $506e: $20 $03

jr_04d_5070:
    xor h                                         ; $5070: $ac
    jr nz, jr_04d_5076                            ; $5071: $20 $03

jr_04d_5073:
    or h                                          ; $5073: $b4
    jr nz, jr_04d_5079                            ; $5074: $20 $03

jr_04d_5076:
    cp l                                          ; $5076: $bd
    jr nz, jr_04d_507c                            ; $5077: $20 $03

jr_04d_5079:
    ret z                                         ; $5079: $c8

    jr nz, jr_04d_507f                            ; $507a: $20 $03

jr_04d_507c:
    db $d3                                        ; $507c: $d3
    jr nz, jr_04d_5082                            ; $507d: $20 $03

jr_04d_507f:
    ldh [rNR41], a                                ; $507f: $e0 $20
    inc bc                                        ; $5081: $03

jr_04d_5082:
    db $ed                                        ; $5082: $ed
    jr nz, jr_04d_5088                            ; $5083: $20 $03

    rst $30                                       ; $5085: $f7
    jr nz, jr_04d_508b                            ; $5086: $20 $03

jr_04d_5088:
    rst $38                                       ; $5088: $ff
    jr nz, @+$05                                  ; $5089: $20 $03

jr_04d_508b:
    dec bc                                        ; $508b: $0b
    ld hl, $1303                                  ; $508c: $21 $03 $13
    ld hl, $1d03                                  ; $508f: $21 $03 $1d
    ld hl, $2603                                  ; $5092: $21 $03 $26
    ld hl, $2e03                                  ; $5095: $21 $03 $2e
    ld hl, $3a03                                  ; $5098: $21 $03 $3a
    ld hl, $4703                                  ; $509b: $21 $03 $47
    ld hl, $4f03                                  ; $509e: $21 $03 $4f
    ld hl, $5c03                                  ; $50a1: $21 $03 $5c
    ld hl, $6703                                  ; $50a4: $21 $03 $67
    ld hl, $7203                                  ; $50a7: $21 $03 $72
    ld hl, $7c03                                  ; $50aa: $21 $03 $7c
    ld hl, $8703                                  ; $50ad: $21 $03 $87
    ld hl, $8f03                                  ; $50b0: $21 $03 $8f
    ld hl, $9603                                  ; $50b3: $21 $03 $96
    ld hl, $a103                                  ; $50b6: $21 $03 $a1
    ld hl, $ab03                                  ; $50b9: $21 $03 $ab
    ld hl, $b403                                  ; $50bc: $21 $03 $b4
    ld hl, $be03                                  ; $50bf: $21 $03 $be
    ld hl, $ca03                                  ; $50c2: $21 $03 $ca
    ld hl, $d403                                  ; $50c5: $21 $03 $d4
    ld hl, $dd03                                  ; $50c8: $21 $03 $dd
    ld hl, $e703                                  ; $50cb: $21 $03 $e7
    ld hl, $f303                                  ; $50ce: $21 $03 $f3
    ld hl, $fd03                                  ; $50d1: $21 $03 $fd
    ld hl, $0803                                  ; $50d4: $21 $03 $08
    ld [hl+], a                                   ; $50d7: $22
    inc bc                                        ; $50d8: $03
    rla                                           ; $50d9: $17
    ld [hl+], a                                   ; $50da: $22
    inc bc                                        ; $50db: $03
    ld e, $22                                     ; $50dc: $1e $22
    inc bc                                        ; $50de: $03
    inc h                                         ; $50df: $24
    ld [hl+], a                                   ; $50e0: $22
    inc bc                                        ; $50e1: $03
    jr nc, jr_04d_5106                            ; $50e2: $30 $22

    inc bc                                        ; $50e4: $03
    ld a, [hl-]                                   ; $50e5: $3a
    ld [hl+], a                                   ; $50e6: $22
    inc bc                                        ; $50e7: $03
    ld b, d                                       ; $50e8: $42
    ld [hl+], a                                   ; $50e9: $22
    inc bc                                        ; $50ea: $03
    ld c, b                                       ; $50eb: $48
    ld [hl+], a                                   ; $50ec: $22
    inc bc                                        ; $50ed: $03
    ld c, [hl]                                    ; $50ee: $4e
    ld [hl+], a                                   ; $50ef: $22
    inc bc                                        ; $50f0: $03
    ld e, c                                       ; $50f1: $59
    ld [hl+], a                                   ; $50f2: $22
    inc bc                                        ; $50f3: $03
    ld l, c                                       ; $50f4: $69
    ld [hl+], a                                   ; $50f5: $22
    inc bc                                        ; $50f6: $03
    ld [hl], e                                    ; $50f7: $73
    ld [hl+], a                                   ; $50f8: $22
    inc bc                                        ; $50f9: $03
    ld a, l                                       ; $50fa: $7d
    ld [hl+], a                                   ; $50fb: $22
    inc bc                                        ; $50fc: $03
    adc c                                         ; $50fd: $89
    ld [hl+], a                                   ; $50fe: $22
    inc bc                                        ; $50ff: $03
    sbc d                                         ; $5100: $9a
    ld [hl+], a                                   ; $5101: $22
    inc bc                                        ; $5102: $03
    and [hl]                                      ; $5103: $a6
    ld [hl+], a                                   ; $5104: $22
    inc bc                                        ; $5105: $03

jr_04d_5106:
    or d                                          ; $5106: $b2
    ld [hl+], a                                   ; $5107: $22
    inc bc                                        ; $5108: $03
    cp e                                          ; $5109: $bb
    ld [hl+], a                                   ; $510a: $22
    inc bc                                        ; $510b: $03
    push bc                                       ; $510c: $c5
    ld [hl+], a                                   ; $510d: $22
    inc bc                                        ; $510e: $03
    adc $22                                       ; $510f: $ce $22
    inc bc                                        ; $5111: $03
    db $db                                        ; $5112: $db
    ld [hl+], a                                   ; $5113: $22
    inc bc                                        ; $5114: $03
    push hl                                       ; $5115: $e5
    ld [hl+], a                                   ; $5116: $22
    inc bc                                        ; $5117: $03
    db $ed                                        ; $5118: $ed
    ld [hl+], a                                   ; $5119: $22
    inc bc                                        ; $511a: $03
    ld sp, hl                                     ; $511b: $f9
    ld [hl+], a                                   ; $511c: $22
    inc bc                                        ; $511d: $03
    ld bc, $0323                                  ; $511e: $01 $23 $03
    dec bc                                        ; $5121: $0b
    inc hl                                        ; $5122: $23
    inc bc                                        ; $5123: $03
    ld d, $23                                     ; $5124: $16 $23
    inc bc                                        ; $5126: $03
    ld hl, $0323                                  ; $5127: $21 $23 $03
    inc l                                         ; $512a: $2c
    inc hl                                        ; $512b: $23
    inc bc                                        ; $512c: $03
    dec [hl]                                      ; $512d: $35
    inc hl                                        ; $512e: $23
    inc bc                                        ; $512f: $03
    dec a                                         ; $5130: $3d
    inc hl                                        ; $5131: $23
    inc bc                                        ; $5132: $03
    ld c, b                                       ; $5133: $48
    inc hl                                        ; $5134: $23
    inc bc                                        ; $5135: $03
    ld d, b                                       ; $5136: $50
    inc hl                                        ; $5137: $23
    inc bc                                        ; $5138: $03
    ld d, a                                       ; $5139: $57
    inc hl                                        ; $513a: $23
    inc bc                                        ; $513b: $03
    ld h, c                                       ; $513c: $61
    inc hl                                        ; $513d: $23
    inc bc                                        ; $513e: $03
    ld h, a                                       ; $513f: $67
    inc hl                                        ; $5140: $23
    inc bc                                        ; $5141: $03
    ld l, h                                       ; $5142: $6c
    inc hl                                        ; $5143: $23
    inc bc                                        ; $5144: $03
    ld [hl], l                                    ; $5145: $75
    inc hl                                        ; $5146: $23
    inc bc                                        ; $5147: $03
    add b                                         ; $5148: $80
    inc hl                                        ; $5149: $23
    inc bc                                        ; $514a: $03
    adc d                                         ; $514b: $8a
    inc hl                                        ; $514c: $23
    inc bc                                        ; $514d: $03
    sub [hl]                                      ; $514e: $96
    inc hl                                        ; $514f: $23
    inc bc                                        ; $5150: $03
    and b                                         ; $5151: $a0
    inc hl                                        ; $5152: $23
    inc bc                                        ; $5153: $03
    xor e                                         ; $5154: $ab
    inc hl                                        ; $5155: $23
    inc bc                                        ; $5156: $03
    or d                                          ; $5157: $b2
    inc hl                                        ; $5158: $23
    inc bc                                        ; $5159: $03
    cp c                                          ; $515a: $b9
    inc hl                                        ; $515b: $23
    inc bc                                        ; $515c: $03
    ret z                                         ; $515d: $c8

    inc hl                                        ; $515e: $23
    inc bc                                        ; $515f: $03
    rst $08                                       ; $5160: $cf
    inc hl                                        ; $5161: $23
    inc bc                                        ; $5162: $03
    call nc, $0323                                ; $5163: $d4 $23 $03
    ld [c], a                                     ; $5166: $e2
    inc hl                                        ; $5167: $23
    inc bc                                        ; $5168: $03
    db $eb                                        ; $5169: $eb
    inc hl                                        ; $516a: $23
    inc bc                                        ; $516b: $03
    or $23                                        ; $516c: $f6 $23
    inc bc                                        ; $516e: $03
    nop                                           ; $516f: $00
    inc h                                         ; $5170: $24
    inc bc                                        ; $5171: $03
    ld [$0324], sp                                ; $5172: $08 $24 $03
    ld de, $0324                                  ; $5175: $11 $24 $03
    dec de                                        ; $5178: $1b
    inc h                                         ; $5179: $24
    inc bc                                        ; $517a: $03
    add hl, hl                                    ; $517b: $29
    inc h                                         ; $517c: $24
    inc bc                                        ; $517d: $03
    jr nc, jr_04d_51a4                            ; $517e: $30 $24

    inc bc                                        ; $5180: $03
    jr c, jr_04d_51a7                             ; $5181: $38 $24

    inc bc                                        ; $5183: $03
    dec sp                                        ; $5184: $3b
    inc h                                         ; $5185: $24
    inc bc                                        ; $5186: $03
    ld b, e                                       ; $5187: $43
    inc h                                         ; $5188: $24
    inc bc                                        ; $5189: $03
    ld c, h                                       ; $518a: $4c
    inc h                                         ; $518b: $24
    inc bc                                        ; $518c: $03
    ld d, e                                       ; $518d: $53
    inc h                                         ; $518e: $24
    inc bc                                        ; $518f: $03
    ld e, l                                       ; $5190: $5d
    inc h                                         ; $5191: $24
    inc bc                                        ; $5192: $03
    ld l, b                                       ; $5193: $68
    inc h                                         ; $5194: $24
    inc bc                                        ; $5195: $03
    halt                                          ; $5196: $76
    inc h                                         ; $5197: $24
    inc bc                                        ; $5198: $03
    add b                                         ; $5199: $80
    inc h                                         ; $519a: $24
    inc bc                                        ; $519b: $03
    adc a                                         ; $519c: $8f
    inc h                                         ; $519d: $24
    inc bc                                        ; $519e: $03
    sub [hl]                                      ; $519f: $96
    inc h                                         ; $51a0: $24
    inc bc                                        ; $51a1: $03
    and b                                         ; $51a2: $a0
    inc h                                         ; $51a3: $24

jr_04d_51a4:
    inc bc                                        ; $51a4: $03
    xor c                                         ; $51a5: $a9
    inc h                                         ; $51a6: $24

jr_04d_51a7:
    inc bc                                        ; $51a7: $03
    or b                                          ; $51a8: $b0
    inc h                                         ; $51a9: $24
    inc bc                                        ; $51aa: $03
    ret nz                                        ; $51ab: $c0

    inc h                                         ; $51ac: $24
    inc bc                                        ; $51ad: $03
    push bc                                       ; $51ae: $c5
    inc h                                         ; $51af: $24
    inc bc                                        ; $51b0: $03
    ret nc                                        ; $51b1: $d0

    inc h                                         ; $51b2: $24
    inc bc                                        ; $51b3: $03
    push de                                       ; $51b4: $d5
    inc h                                         ; $51b5: $24
    inc bc                                        ; $51b6: $03
    rst $18                                       ; $51b7: $df
    inc h                                         ; $51b8: $24
    inc bc                                        ; $51b9: $03
    db $eb                                        ; $51ba: $eb
    inc h                                         ; $51bb: $24
    inc bc                                        ; $51bc: $03
    push af                                       ; $51bd: $f5
    inc h                                         ; $51be: $24
    inc bc                                        ; $51bf: $03
    inc bc                                        ; $51c0: $03
    dec h                                         ; $51c1: $25
    inc bc                                        ; $51c2: $03
    dec de                                        ; $51c3: $1b
    dec h                                         ; $51c4: $25
    inc bc                                        ; $51c5: $03
    jr z, jr_04d_51ed                             ; $51c6: $28 $25

    inc bc                                        ; $51c8: $03
    dec l                                         ; $51c9: $2d
    dec h                                         ; $51ca: $25
    inc bc                                        ; $51cb: $03
    ld [hl], $25                                  ; $51cc: $36 $25
    inc bc                                        ; $51ce: $03
    ld b, a                                       ; $51cf: $47
    dec h                                         ; $51d0: $25
    inc bc                                        ; $51d1: $03
    ld h, b                                       ; $51d2: $60
    dec h                                         ; $51d3: $25
    inc bc                                        ; $51d4: $03
    ld a, c                                       ; $51d5: $79
    dec h                                         ; $51d6: $25
    inc bc                                        ; $51d7: $03
    adc [hl]                                      ; $51d8: $8e
    dec h                                         ; $51d9: $25
    inc bc                                        ; $51da: $03
    xor d                                         ; $51db: $aa
    dec h                                         ; $51dc: $25
    inc bc                                        ; $51dd: $03
    rst $00                                       ; $51de: $c7
    dec h                                         ; $51df: $25
    inc bc                                        ; $51e0: $03
    rst $20                                       ; $51e1: $e7
    dec h                                         ; $51e2: $25
    inc bc                                        ; $51e3: $03
    inc b                                         ; $51e4: $04
    ld h, $03                                     ; $51e5: $26 $03
    inc e                                         ; $51e7: $1c
    ld h, $03                                     ; $51e8: $26 $03
    inc [hl]                                      ; $51ea: $34
    ld h, $03                                     ; $51eb: $26 $03

jr_04d_51ed:
    scf                                           ; $51ed: $37
    ld h, $03                                     ; $51ee: $26 $03
    dec sp                                        ; $51f0: $3b
    ld h, $03                                     ; $51f1: $26 $03
    ld b, d                                       ; $51f3: $42
    ld h, $03                                     ; $51f4: $26 $03
    ld b, l                                       ; $51f6: $45
    ld h, $03                                     ; $51f7: $26 $03
    ld c, c                                       ; $51f9: $49
    ld h, $03                                     ; $51fa: $26 $03
    ld c, l                                       ; $51fc: $4d
    ld h, $03                                     ; $51fd: $26 $03
    ld d, d                                       ; $51ff: $52
    ld h, $03                                     ; $5200: $26 $03
    ld e, h                                       ; $5202: $5c
    ld h, $03                                     ; $5203: $26 $03
    ld [hl], b                                    ; $5205: $70
    ld h, $03                                     ; $5206: $26 $03
    adc h                                         ; $5208: $8c
    ld h, $03                                     ; $5209: $26 $03
    sbc d                                         ; $520b: $9a
    ld h, $03                                     ; $520c: $26 $03
    xor l                                         ; $520e: $ad
    ld h, $03                                     ; $520f: $26 $03
    cp [hl]                                       ; $5211: $be
    ld h, $03                                     ; $5212: $26 $03
    push de                                       ; $5214: $d5
    ld h, $03                                     ; $5215: $26 $03
    jp hl                                         ; $5217: $e9


    ld h, $03                                     ; $5218: $26 $03
    ld a, [c]                                     ; $521a: $f2
    ld h, $03                                     ; $521b: $26 $03
    ld [$0327], sp                                ; $521d: $08 $27 $03
    jr jr_04d_5249                                ; $5220: $18 $27

    inc bc                                        ; $5222: $03
    ld l, $27                                     ; $5223: $2e $27
    inc bc                                        ; $5225: $03
    inc a                                         ; $5226: $3c
    daa                                           ; $5227: $27
    inc bc                                        ; $5228: $03
    ld d, d                                       ; $5229: $52
    daa                                           ; $522a: $27
    inc bc                                        ; $522b: $03
    ld l, h                                       ; $522c: $6c
    daa                                           ; $522d: $27
    inc bc                                        ; $522e: $03
    adc b                                         ; $522f: $88
    daa                                           ; $5230: $27
    inc bc                                        ; $5231: $03
    sbc c                                         ; $5232: $99
    daa                                           ; $5233: $27
    inc bc                                        ; $5234: $03
    xor [hl]                                      ; $5235: $ae
    daa                                           ; $5236: $27
    inc bc                                        ; $5237: $03
    cp b                                          ; $5238: $b8
    daa                                           ; $5239: $27
    inc bc                                        ; $523a: $03
    ret                                           ; $523b: $c9


    daa                                           ; $523c: $27
    inc bc                                        ; $523d: $03
    push de                                       ; $523e: $d5
    daa                                           ; $523f: $27
    inc bc                                        ; $5240: $03
    rst $28                                       ; $5241: $ef
    daa                                           ; $5242: $27
    inc bc                                        ; $5243: $03
    ld c, $28                                     ; $5244: $0e $28
    inc bc                                        ; $5246: $03
    jr nz, jr_04d_5271                            ; $5247: $20 $28

jr_04d_5249:
    inc bc                                        ; $5249: $03
    scf                                           ; $524a: $37
    jr z, jr_04d_5250                             ; $524b: $28 $03

    ld c, h                                       ; $524d: $4c
    jr z, jr_04d_5253                             ; $524e: $28 $03

jr_04d_5250:
    ld d, [hl]                                    ; $5250: $56
    jr z, jr_04d_5256                             ; $5251: $28 $03

jr_04d_5253:
    ld l, d                                       ; $5253: $6a
    jr z, jr_04d_5259                             ; $5254: $28 $03

jr_04d_5256:
    ld a, c                                       ; $5256: $79
    jr z, jr_04d_525c                             ; $5257: $28 $03

jr_04d_5259:
    sub a                                         ; $5259: $97
    jr z, jr_04d_525f                             ; $525a: $28 $03

jr_04d_525c:
    and b                                         ; $525c: $a0
    jr z, jr_04d_5262                             ; $525d: $28 $03

jr_04d_525f:
    rst $00                                       ; $525f: $c7
    jr z, jr_04d_5265                             ; $5260: $28 $03

jr_04d_5262:
    push hl                                       ; $5262: $e5
    jr z, jr_04d_5268                             ; $5263: $28 $03

jr_04d_5265:
    ld [bc], a                                    ; $5265: $02
    add hl, hl                                    ; $5266: $29
    inc bc                                        ; $5267: $03

jr_04d_5268:
    add hl, de                                    ; $5268: $19
    add hl, hl                                    ; $5269: $29
    inc bc                                        ; $526a: $03
    jr nc, jr_04d_5296                            ; $526b: $30 $29

    inc bc                                        ; $526d: $03
    ccf                                           ; $526e: $3f
    add hl, hl                                    ; $526f: $29
    inc bc                                        ; $5270: $03

jr_04d_5271:
    ld d, l                                       ; $5271: $55
    add hl, hl                                    ; $5272: $29
    inc bc                                        ; $5273: $03
    ld e, l                                       ; $5274: $5d
    add hl, hl                                    ; $5275: $29
    inc bc                                        ; $5276: $03
    ld a, b                                       ; $5277: $78
    add hl, hl                                    ; $5278: $29
    inc bc                                        ; $5279: $03
    ld a, a                                       ; $527a: $7f
    add hl, hl                                    ; $527b: $29
    inc bc                                        ; $527c: $03
    sbc d                                         ; $527d: $9a
    add hl, hl                                    ; $527e: $29
    inc bc                                        ; $527f: $03
    xor h                                         ; $5280: $ac
    add hl, hl                                    ; $5281: $29
    inc bc                                        ; $5282: $03
    pop bc                                        ; $5283: $c1
    add hl, hl                                    ; $5284: $29
    inc bc                                        ; $5285: $03
    reti                                          ; $5286: $d9


    add hl, hl                                    ; $5287: $29
    inc bc                                        ; $5288: $03
    rst $28                                       ; $5289: $ef
    add hl, hl                                    ; $528a: $29
    inc bc                                        ; $528b: $03
    dec b                                         ; $528c: $05
    ld a, [hl+]                                   ; $528d: $2a
    inc bc                                        ; $528e: $03
    ld d, $2a                                     ; $528f: $16 $2a
    inc bc                                        ; $5291: $03
    ld [hl+], a                                   ; $5292: $22
    ld a, [hl+]                                   ; $5293: $2a
    inc bc                                        ; $5294: $03
    ld a, [hl-]                                   ; $5295: $3a

jr_04d_5296:
    ld a, [hl+]                                   ; $5296: $2a
    inc bc                                        ; $5297: $03
    ld b, l                                       ; $5298: $45
    ld a, [hl+]                                   ; $5299: $2a
    inc bc                                        ; $529a: $03
    ld e, l                                       ; $529b: $5d
    ld a, [hl+]                                   ; $529c: $2a
    inc bc                                        ; $529d: $03
    ld h, l                                       ; $529e: $65
    ld a, [hl+]                                   ; $529f: $2a
    inc bc                                        ; $52a0: $03
    ld [hl], b                                    ; $52a1: $70
    ld a, [hl+]                                   ; $52a2: $2a
    inc bc                                        ; $52a3: $03
    adc b                                         ; $52a4: $88
    ld a, [hl+]                                   ; $52a5: $2a
    inc bc                                        ; $52a6: $03
    and e                                         ; $52a7: $a3
    ld a, [hl+]                                   ; $52a8: $2a
    inc bc                                        ; $52a9: $03
    xor a                                         ; $52aa: $af
    ld a, [hl+]                                   ; $52ab: $2a
    inc bc                                        ; $52ac: $03
    call z, Call_000_032a                         ; $52ad: $cc $2a $03
    push de                                       ; $52b0: $d5
    ld a, [hl+]                                   ; $52b1: $2a
    inc bc                                        ; $52b2: $03
    add sp, $2a                                   ; $52b3: $e8 $2a
    inc bc                                        ; $52b5: $03
    ld a, [$032a]                                 ; $52b6: $fa $2a $03
    dec d                                         ; $52b9: $15
    dec hl                                        ; $52ba: $2b
    inc bc                                        ; $52bb: $03

Call_04d_52bc:
    dec e                                         ; $52bc: $1d
    dec hl                                        ; $52bd: $2b
    inc bc                                        ; $52be: $03
    jr z, jr_04d_52ec                             ; $52bf: $28 $2b

    inc bc                                        ; $52c1: $03
    ld b, a                                       ; $52c2: $47
    dec hl                                        ; $52c3: $2b
    inc bc                                        ; $52c4: $03
    ld e, d                                       ; $52c5: $5a
    dec hl                                        ; $52c6: $2b
    inc bc                                        ; $52c7: $03
    ld h, [hl]                                    ; $52c8: $66
    dec hl                                        ; $52c9: $2b
    inc bc                                        ; $52ca: $03
    add e                                         ; $52cb: $83
    dec hl                                        ; $52cc: $2b
    inc bc                                        ; $52cd: $03
    adc h                                         ; $52ce: $8c
    dec hl                                        ; $52cf: $2b
    inc bc                                        ; $52d0: $03

Call_04d_52d1:
    xor l                                         ; $52d1: $ad
    dec hl                                        ; $52d2: $2b
    inc bc                                        ; $52d3: $03
    add sp, $2b                                   ; $52d4: $e8 $2b
    inc bc                                        ; $52d6: $03
    add hl, de                                    ; $52d7: $19
    inc l                                         ; $52d8: $2c
    inc bc                                        ; $52d9: $03
    ld b, l                                       ; $52da: $45
    inc l                                         ; $52db: $2c
    inc bc                                        ; $52dc: $03
    adc h                                         ; $52dd: $8c
    inc l                                         ; $52de: $2c
    inc bc                                        ; $52df: $03
    xor b                                         ; $52e0: $a8
    inc l                                         ; $52e1: $2c
    inc bc                                        ; $52e2: $03
    jp nc, $032c                                  ; $52e3: $d2 $2c $03

    ld [$032d], sp                                ; $52e6: $08 $2d $03
    ld d, e                                       ; $52e9: $53
    dec l                                         ; $52ea: $2d
    inc bc                                        ; $52eb: $03

jr_04d_52ec:
    adc a                                         ; $52ec: $8f
    dec l                                         ; $52ed: $2d
    inc bc                                        ; $52ee: $03
    or l                                          ; $52ef: $b5
    dec l                                         ; $52f0: $2d
    inc bc                                        ; $52f1: $03
    db $fd                                        ; $52f2: $fd
    dec l                                         ; $52f3: $2d
    inc bc                                        ; $52f4: $03
    jr nz, jr_04d_5325                            ; $52f5: $20 $2e

    inc bc                                        ; $52f7: $03
    ld c, h                                       ; $52f8: $4c
    ld l, $03                                     ; $52f9: $2e $03
    add h                                         ; $52fb: $84
    ld l, $03                                     ; $52fc: $2e $03
    jp nz, Jump_000_032e                          ; $52fe: $c2 $2e $03

    ld a, [bc]                                    ; $5301: $0a
    cpl                                           ; $5302: $2f
    inc bc                                        ; $5303: $03
    inc d                                         ; $5304: $14
    cpl                                           ; $5305: $2f
    inc bc                                        ; $5306: $03
    inc e                                         ; $5307: $1c
    cpl                                           ; $5308: $2f
    inc bc                                        ; $5309: $03
    add hl, hl                                    ; $530a: $29
    cpl                                           ; $530b: $2f
    inc bc                                        ; $530c: $03
    ld [hl], $2f                                  ; $530d: $36 $2f
    inc bc                                        ; $530f: $03
    ld b, d                                       ; $5310: $42
    cpl                                           ; $5311: $2f
    inc bc                                        ; $5312: $03
    ld c, l                                       ; $5313: $4d
    cpl                                           ; $5314: $2f
    inc bc                                        ; $5315: $03
    ld e, c                                       ; $5316: $59
    cpl                                           ; $5317: $2f
    inc bc                                        ; $5318: $03
    ld l, b                                       ; $5319: $68
    cpl                                           ; $531a: $2f
    inc bc                                        ; $531b: $03
    ld [hl], h                                    ; $531c: $74
    cpl                                           ; $531d: $2f
    inc bc                                        ; $531e: $03
    add d                                         ; $531f: $82
    cpl                                           ; $5320: $2f
    inc bc                                        ; $5321: $03
    adc h                                         ; $5322: $8c
    cpl                                           ; $5323: $2f
    inc bc                                        ; $5324: $03

jr_04d_5325:
    sub [hl]                                      ; $5325: $96
    cpl                                           ; $5326: $2f
    inc bc                                        ; $5327: $03
    and c                                         ; $5328: $a1
    cpl                                           ; $5329: $2f
    inc bc                                        ; $532a: $03
    xor h                                         ; $532b: $ac
    cpl                                           ; $532c: $2f
    inc bc                                        ; $532d: $03
    cp b                                          ; $532e: $b8
    cpl                                           ; $532f: $2f
    inc bc                                        ; $5330: $03
    jp $032f                                      ; $5331: $c3 $2f $03


    call $032f                                    ; $5334: $cd $2f $03
    call nc, $032f                                ; $5337: $d4 $2f $03
    pop hl                                        ; $533a: $e1
    cpl                                           ; $533b: $2f
    inc bc                                        ; $533c: $03
    rst $28                                       ; $533d: $ef
    cpl                                           ; $533e: $2f
    inc bc                                        ; $533f: $03
    ld hl, sp+$2f                                 ; $5340: $f8 $2f
    inc bc                                        ; $5342: $03
    ld [bc], a                                    ; $5343: $02
    jr nc, jr_04d_5349                            ; $5344: $30 $03

    ld de, $0330                                  ; $5346: $11 $30 $03

jr_04d_5349:
    inc e                                         ; $5349: $1c
    jr nc, jr_04d_534f                            ; $534a: $30 $03

    jr z, @+$32                                   ; $534c: $28 $30

    inc bc                                        ; $534e: $03

jr_04d_534f:
    inc sp                                        ; $534f: $33
    jr nc, jr_04d_5355                            ; $5350: $30 $03

    inc a                                         ; $5352: $3c
    jr nc, jr_04d_5358                            ; $5353: $30 $03

jr_04d_5355:
    ld b, a                                       ; $5355: $47
    jr nc, jr_04d_535b                            ; $5356: $30 $03

jr_04d_5358:
    ld d, d                                       ; $5358: $52
    jr nc, jr_04d_535e                            ; $5359: $30 $03

jr_04d_535b:
    ld e, [hl]                                    ; $535b: $5e
    jr nc, jr_04d_5361                            ; $535c: $30 $03

jr_04d_535e:
    ld h, [hl]                                    ; $535e: $66
    jr nc, jr_04d_5364                            ; $535f: $30 $03

jr_04d_5361:
    ld [hl], d                                    ; $5361: $72
    jr nc, jr_04d_5367                            ; $5362: $30 $03

jr_04d_5364:
    ld a, l                                       ; $5364: $7d
    jr nc, jr_04d_536a                            ; $5365: $30 $03

jr_04d_5367:
    adc c                                         ; $5367: $89
    jr nc, jr_04d_536d                            ; $5368: $30 $03

jr_04d_536a:
    sub e                                         ; $536a: $93
    jr nc, jr_04d_5370                            ; $536b: $30 $03

jr_04d_536d:
    and c                                         ; $536d: $a1
    jr nc, jr_04d_5373                            ; $536e: $30 $03

jr_04d_5370:
    xor e                                         ; $5370: $ab
    jr nc, jr_04d_5376                            ; $5371: $30 $03

jr_04d_5373:
    or [hl]                                       ; $5373: $b6
    jr nc, jr_04d_5379                            ; $5374: $30 $03

jr_04d_5376:
    jp nz, $0330                                  ; $5376: $c2 $30 $03

jr_04d_5379:
    adc $30                                       ; $5379: $ce $30
    inc bc                                        ; $537b: $03
    ret c                                         ; $537c: $d8

    jr nc, jr_04d_5382                            ; $537d: $30 $03

    db $e3                                        ; $537f: $e3
    jr nc, jr_04d_5385                            ; $5380: $30 $03

jr_04d_5382:
    rst $28                                       ; $5382: $ef
    jr nc, jr_04d_5388                            ; $5383: $30 $03

jr_04d_5385:
    ei                                            ; $5385: $fb
    jr nc, jr_04d_538b                            ; $5386: $30 $03

jr_04d_5388:
    ld [$0331], sp                                ; $5388: $08 $31 $03

jr_04d_538b:
    ld c, $31                                     ; $538b: $0e $31
    inc bc                                        ; $538d: $03
    jr @+$33                                      ; $538e: $18 $31

    inc bc                                        ; $5390: $03
    inc h                                         ; $5391: $24
    ld sp, $2903                                  ; $5392: $31 $03 $29
    ld sp, $3303                                  ; $5395: $31 $03 $33
    ld sp, $3c03                                  ; $5398: $31 $03 $3c
    ld sp, $4703                                  ; $539b: $31 $03 $47
    ld sp, $5403                                  ; $539e: $31 $03 $54
    ld sp, $5f03                                  ; $53a1: $31 $03 $5f
    ld sp, $6c03                                  ; $53a4: $31 $03 $6c
    ld sp, $7903                                  ; $53a7: $31 $03 $79
    ld sp, $8203                                  ; $53aa: $31 $03 $82
    ld sp, $8e03                                  ; $53ad: $31 $03 $8e
    ld sp, $9c03                                  ; $53b0: $31 $03 $9c
    ld sp, $a203                                  ; $53b3: $31 $03 $a2
    ld sp, $b003                                  ; $53b6: $31 $03 $b0
    ld sp, $bd03                                  ; $53b9: $31 $03 $bd
    ld sp, $c603                                  ; $53bc: $31 $03 $c6
    ld sp, $d203                                  ; $53bf: $31 $03 $d2
    ld sp, $dd03                                  ; $53c2: $31 $03 $dd
    ld sp, $ea03                                  ; $53c5: $31 $03 $ea
    ld sp, $f503                                  ; $53c8: $31 $03 $f5
    ld sp, $0103                                  ; $53cb: $31 $03 $01
    ld [hl-], a                                   ; $53ce: $32
    inc bc                                        ; $53cf: $03
    dec bc                                        ; $53d0: $0b
    ld [hl-], a                                   ; $53d1: $32
    inc bc                                        ; $53d2: $03
    rla                                           ; $53d3: $17
    ld [hl-], a                                   ; $53d4: $32
    inc bc                                        ; $53d5: $03
    inc hl                                        ; $53d6: $23
    ld [hl-], a                                   ; $53d7: $32
    inc bc                                        ; $53d8: $03
    ld sp, $0332                                  ; $53d9: $31 $32 $03
    inc a                                         ; $53dc: $3c
    ld [hl-], a                                   ; $53dd: $32
    inc bc                                        ; $53de: $03
    ld c, b                                       ; $53df: $48
    ld [hl-], a                                   ; $53e0: $32
    inc bc                                        ; $53e1: $03
    ld d, e                                       ; $53e2: $53
    ld [hl-], a                                   ; $53e3: $32
    inc bc                                        ; $53e4: $03
    ld h, b                                       ; $53e5: $60
    ld [hl-], a                                   ; $53e6: $32
    inc bc                                        ; $53e7: $03
    ld l, c                                       ; $53e8: $69
    ld [hl-], a                                   ; $53e9: $32
    inc bc                                        ; $53ea: $03
    ld [hl], l                                    ; $53eb: $75
    ld [hl-], a                                   ; $53ec: $32
    inc bc                                        ; $53ed: $03
    ld a, [hl]                                    ; $53ee: $7e
    ld [hl-], a                                   ; $53ef: $32
    inc bc                                        ; $53f0: $03
    adc b                                         ; $53f1: $88
    ld [hl-], a                                   ; $53f2: $32
    inc bc                                        ; $53f3: $03
    sub e                                         ; $53f4: $93
    ld [hl-], a                                   ; $53f5: $32
    inc bc                                        ; $53f6: $03
    sbc a                                         ; $53f7: $9f
    ld [hl-], a                                   ; $53f8: $32
    inc bc                                        ; $53f9: $03
    xor e                                         ; $53fa: $ab
    ld [hl-], a                                   ; $53fb: $32
    inc bc                                        ; $53fc: $03
    or h                                          ; $53fd: $b4
    ld [hl-], a                                   ; $53fe: $32
    inc bc                                        ; $53ff: $03
    cp [hl]                                       ; $5400: $be
    ld [hl-], a                                   ; $5401: $32
    inc bc                                        ; $5402: $03
    swap d                                        ; $5403: $cb $32
    inc bc                                        ; $5405: $03
    call nc, $0332                                ; $5406: $d4 $32 $03
    rst $18                                       ; $5409: $df
    ld [hl-], a                                   ; $540a: $32
    inc bc                                        ; $540b: $03
    ld [$0332], a                                 ; $540c: $ea $32 $03
    or $32                                        ; $540f: $f6 $32
    inc bc                                        ; $5411: $03
    dec b                                         ; $5412: $05
    inc sp                                        ; $5413: $33
    inc bc                                        ; $5414: $03
    ld de, $0333                                  ; $5415: $11 $33 $03
    add hl, de                                    ; $5418: $19
    inc sp                                        ; $5419: $33
    inc bc                                        ; $541a: $03
    inc h                                         ; $541b: $24
    inc sp                                        ; $541c: $33
    inc bc                                        ; $541d: $03
    ld sp, $0333                                  ; $541e: $31 $33 $03
    ld a, $33                                     ; $5421: $3e $33
    inc bc                                        ; $5423: $03
    ld c, h                                       ; $5424: $4c
    inc sp                                        ; $5425: $33
    inc bc                                        ; $5426: $03
    ld d, b                                       ; $5427: $50
    inc sp                                        ; $5428: $33
    inc bc                                        ; $5429: $03
    ld e, h                                       ; $542a: $5c
    inc sp                                        ; $542b: $33
    inc bc                                        ; $542c: $03
    ld h, h                                       ; $542d: $64
    inc sp                                        ; $542e: $33
    inc bc                                        ; $542f: $03
    ld [hl], b                                    ; $5430: $70
    inc sp                                        ; $5431: $33
    inc bc                                        ; $5432: $03
    ld [hl], l                                    ; $5433: $75
    inc sp                                        ; $5434: $33
    inc bc                                        ; $5435: $03
    halt                                          ; $5436: $76
    inc sp                                        ; $5437: $33
    inc bc                                        ; $5438: $03
    add c                                         ; $5439: $81
    inc sp                                        ; $543a: $33
    inc bc                                        ; $543b: $03
    and a                                         ; $543c: $a7
    inc sp                                        ; $543d: $33
    inc bc                                        ; $543e: $03
    pop bc                                        ; $543f: $c1
    inc sp                                        ; $5440: $33
    inc bc                                        ; $5441: $03
    jp hl                                         ; $5442: $e9


    inc sp                                        ; $5443: $33
    inc bc                                        ; $5444: $03
    inc e                                         ; $5445: $1c
    inc [hl]                                      ; $5446: $34
    inc bc                                        ; $5447: $03
    ld a, [hl-]                                   ; $5448: $3a
    inc [hl]                                      ; $5449: $34
    inc bc                                        ; $544a: $03
    ld h, a                                       ; $544b: $67
    inc [hl]                                      ; $544c: $34
    inc bc                                        ; $544d: $03
    add a                                         ; $544e: $87
    inc [hl]                                      ; $544f: $34
    inc bc                                        ; $5450: $03
    sbc a                                         ; $5451: $9f
    inc [hl]                                      ; $5452: $34
    inc bc                                        ; $5453: $03
    or h                                          ; $5454: $b4
    inc [hl]                                      ; $5455: $34
    inc bc                                        ; $5456: $03
    ret nc                                        ; $5457: $d0

    inc [hl]                                      ; $5458: $34
    inc bc                                        ; $5459: $03
    ld a, [c]                                     ; $545a: $f2
    inc [hl]                                      ; $545b: $34
    inc bc                                        ; $545c: $03
    jr jr_04d_5494                                ; $545d: $18 $35

    inc bc                                        ; $545f: $03
    inc sp                                        ; $5460: $33
    dec [hl]                                      ; $5461: $35
    inc bc                                        ; $5462: $03
    ld d, b                                       ; $5463: $50
    dec [hl]                                      ; $5464: $35
    inc bc                                        ; $5465: $03
    ld l, d                                       ; $5466: $6a
    dec [hl]                                      ; $5467: $35
    inc bc                                        ; $5468: $03
    sub e                                         ; $5469: $93
    dec [hl]                                      ; $546a: $35
    inc bc                                        ; $546b: $03
    or [hl]                                       ; $546c: $b6
    dec [hl]                                      ; $546d: $35
    inc bc                                        ; $546e: $03
    ld [c], a                                     ; $546f: $e2
    dec [hl]                                      ; $5470: $35
    inc bc                                        ; $5471: $03
    rst $38                                       ; $5472: $ff
    dec [hl]                                      ; $5473: $35
    inc bc                                        ; $5474: $03
    add hl, hl                                    ; $5475: $29
    ld [hl], $03                                  ; $5476: $36 $03
    ld d, b                                       ; $5478: $50
    ld [hl], $03                                  ; $5479: $36 $03
    ld a, c                                       ; $547b: $79
    ld [hl], $03                                  ; $547c: $36 $03
    xor d                                         ; $547e: $aa
    ld [hl], $03                                  ; $547f: $36 $03
    pop hl                                        ; $5481: $e1
    ld [hl], $03                                  ; $5482: $36 $03
    ld b, $37                                     ; $5484: $06 $37
    inc bc                                        ; $5486: $03
    inc sp                                        ; $5487: $33
    scf                                           ; $5488: $37
    inc bc                                        ; $5489: $03
    ld b, c                                       ; $548a: $41
    scf                                           ; $548b: $37
    inc bc                                        ; $548c: $03
    add l                                         ; $548d: $85
    scf                                           ; $548e: $37
    inc bc                                        ; $548f: $03
    cp l                                          ; $5490: $bd
    scf                                           ; $5491: $37
    inc bc                                        ; $5492: $03
    ld a, [c]                                     ; $5493: $f2

jr_04d_5494:
    scf                                           ; $5494: $37
    inc bc                                        ; $5495: $03
    ld hl, $0338                                  ; $5496: $21 $38 $03
    ld e, e                                       ; $5499: $5b
    jr c, jr_04d_549f                             ; $549a: $38 $03

    ld l, [hl]                                    ; $549c: $6e
    jr c, jr_04d_54a2                             ; $549d: $38 $03

jr_04d_549f:
    and c                                         ; $549f: $a1
    jr c, jr_04d_54a5                             ; $54a0: $38 $03

jr_04d_54a2:
    jp Jump_000_0338                              ; $54a2: $c3 $38 $03


jr_04d_54a5:
    push hl                                       ; $54a5: $e5
    jr c, jr_04d_54ab                             ; $54a6: $38 $03

    inc c                                         ; $54a8: $0c
    add hl, sp                                    ; $54a9: $39
    inc bc                                        ; $54aa: $03

jr_04d_54ab:
    jr z, jr_04d_54e6                             ; $54ab: $28 $39

    inc bc                                        ; $54ad: $03
    ld c, a                                       ; $54ae: $4f
    add hl, sp                                    ; $54af: $39
    inc bc                                        ; $54b0: $03
    ld a, [hl]                                    ; $54b1: $7e
    add hl, sp                                    ; $54b2: $39
    inc bc                                        ; $54b3: $03
    xor c                                         ; $54b4: $a9
    add hl, sp                                    ; $54b5: $39
    inc bc                                        ; $54b6: $03
    db $e3                                        ; $54b7: $e3
    add hl, sp                                    ; $54b8: $39
    inc bc                                        ; $54b9: $03
    di                                            ; $54ba: $f3
    add hl, sp                                    ; $54bb: $39
    inc bc                                        ; $54bc: $03
    ld [$033a], sp                                ; $54bd: $08 $3a $03
    cpl                                           ; $54c0: $2f
    ld a, [hl-]                                   ; $54c1: $3a
    inc bc                                        ; $54c2: $03
    ld d, [hl]                                    ; $54c3: $56
    ld a, [hl-]                                   ; $54c4: $3a
    inc bc                                        ; $54c5: $03
    adc e                                         ; $54c6: $8b
    ld a, [hl-]                                   ; $54c7: $3a
    inc bc                                        ; $54c8: $03
    sbc [hl]                                      ; $54c9: $9e
    ld a, [hl-]                                   ; $54ca: $3a
    inc bc                                        ; $54cb: $03
    rst $08                                       ; $54cc: $cf
    ld a, [hl-]                                   ; $54cd: $3a
    inc bc                                        ; $54ce: $03
    di                                            ; $54cf: $f3
    ld a, [hl-]                                   ; $54d0: $3a
    inc bc                                        ; $54d1: $03
    inc de                                        ; $54d2: $13
    dec sp                                        ; $54d3: $3b
    inc bc                                        ; $54d4: $03
    ld [hl], $3b                                  ; $54d5: $36 $3b
    inc bc                                        ; $54d7: $03
    ld l, l                                       ; $54d8: $6d
    dec sp                                        ; $54d9: $3b
    inc bc                                        ; $54da: $03
    adc e                                         ; $54db: $8b
    dec sp                                        ; $54dc: $3b
    inc bc                                        ; $54dd: $03
    or [hl]                                       ; $54de: $b6
    dec sp                                        ; $54df: $3b
    inc bc                                        ; $54e0: $03
    sub $3b                                       ; $54e1: $d6 $3b
    inc bc                                        ; $54e3: $03
    and $3b                                       ; $54e4: $e6 $3b

jr_04d_54e6:
    inc bc                                        ; $54e6: $03
    rrca                                          ; $54e7: $0f
    inc a                                         ; $54e8: $3c
    inc bc                                        ; $54e9: $03
    ld a, [hl-]                                   ; $54ea: $3a
    inc a                                         ; $54eb: $3c
    inc bc                                        ; $54ec: $03
    ld e, l                                       ; $54ed: $5d
    inc a                                         ; $54ee: $3c
    inc bc                                        ; $54ef: $03
    add d                                         ; $54f0: $82
    inc a                                         ; $54f1: $3c
    inc bc                                        ; $54f2: $03
    sbc h                                         ; $54f3: $9c
    inc a                                         ; $54f4: $3c
    inc bc                                        ; $54f5: $03
    add $3c                                       ; $54f6: $c6 $3c
    inc bc                                        ; $54f8: $03
    db $ec                                        ; $54f9: $ec
    inc a                                         ; $54fa: $3c
    inc bc                                        ; $54fb: $03
    dec de                                        ; $54fc: $1b
    dec a                                         ; $54fd: $3d
    inc bc                                        ; $54fe: $03
    ld b, [hl]                                    ; $54ff: $46
    dec a                                         ; $5500: $3d
    inc bc                                        ; $5501: $03
    ld h, b                                       ; $5502: $60
    dec a                                         ; $5503: $3d
    inc bc                                        ; $5504: $03
    adc e                                         ; $5505: $8b
    dec a                                         ; $5506: $3d
    inc bc                                        ; $5507: $03
    or c                                          ; $5508: $b1
    dec a                                         ; $5509: $3d
    inc bc                                        ; $550a: $03
    call c, $033d                                 ; $550b: $dc $3d $03
    rlca                                          ; $550e: $07
    ld a, $03                                     ; $550f: $3e $03
    jr jr_04d_5551                                ; $5511: $18 $3e

    inc bc                                        ; $5513: $03
    dec [hl]                                      ; $5514: $35
    ld a, $03                                     ; $5515: $3e $03
    ld h, a                                       ; $5517: $67
    ld a, $03                                     ; $5518: $3e $03
    sub b                                         ; $551a: $90
    ld a, $03                                     ; $551b: $3e $03
    ret                                           ; $551d: $c9


    ld a, $03                                     ; $551e: $3e $03
    push af                                       ; $5520: $f5
    ld a, $03                                     ; $5521: $3e $03
    ld e, $3f                                     ; $5523: $1e $3f
    inc bc                                        ; $5525: $03
    ld c, b                                       ; $5526: $48
    ccf                                           ; $5527: $3f
    inc bc                                        ; $5528: $03
    ld l, a                                       ; $5529: $6f
    ccf                                           ; $552a: $3f
    inc bc                                        ; $552b: $03
    sbc d                                         ; $552c: $9a
    ccf                                           ; $552d: $3f
    inc bc                                        ; $552e: $03
    xor a                                         ; $552f: $af
    ccf                                           ; $5530: $3f
    inc b                                         ; $5531: $04
    ld bc, $0400                                  ; $5532: $01 $00 $04
    dec hl                                        ; $5535: $2b
    nop                                           ; $5536: $00
    inc b                                         ; $5537: $04
    ld c, e                                       ; $5538: $4b
    nop                                           ; $5539: $00
    inc b                                         ; $553a: $04
    add e                                         ; $553b: $83
    nop                                           ; $553c: $00
    inc b                                         ; $553d: $04
    xor a                                         ; $553e: $af
    nop                                           ; $553f: $00
    inc b                                         ; $5540: $04
    call nc, Call_000_0400                        ; $5541: $d4 $00 $04
    pop af                                        ; $5544: $f1
    nop                                           ; $5545: $00
    inc b                                         ; $5546: $04
    jr jr_04d_554a                                ; $5547: $18 $01

    inc b                                         ; $5549: $04

jr_04d_554a:
    dec a                                         ; $554a: $3d
    ld bc, $7104                                  ; $554b: $01 $04 $71
    ld bc, $9904                                  ; $554e: $01 $04 $99

jr_04d_5551:
    ld bc, $b304                                  ; $5551: $01 $04 $b3
    ld bc, $e004                                  ; $5554: $01 $04 $e0
    ld bc, $0a04                                  ; $5557: $01 $04 $0a
    ld [bc], a                                    ; $555a: $02
    inc b                                         ; $555b: $04
    rra                                           ; $555c: $1f
    ld [bc], a                                    ; $555d: $02
    inc b                                         ; $555e: $04
    ld d, d                                       ; $555f: $52
    ld [bc], a                                    ; $5560: $02
    inc b                                         ; $5561: $04
    adc e                                         ; $5562: $8b
    ld [bc], a                                    ; $5563: $02
    inc b                                         ; $5564: $04
    xor h                                         ; $5565: $ac
    ld [bc], a                                    ; $5566: $02
    inc b                                         ; $5567: $04
    sbc $02                                       ; $5568: $de $02
    inc b                                         ; $556a: $04
    push af                                       ; $556b: $f5
    ld [bc], a                                    ; $556c: $02
    inc b                                         ; $556d: $04
    dec b                                         ; $556e: $05
    inc bc                                        ; $556f: $03
    inc b                                         ; $5570: $04
    jr jr_04d_5576                                ; $5571: $18 $03

    inc b                                         ; $5573: $04
    dec e                                         ; $5574: $1d
    inc bc                                        ; $5575: $03

jr_04d_5576:
    inc b                                         ; $5576: $04
    daa                                           ; $5577: $27
    inc bc                                        ; $5578: $03
    inc b                                         ; $5579: $04
    jr nc, jr_04d_557f                            ; $557a: $30 $03

    inc b                                         ; $557c: $04
    ld [hl], $03                                  ; $557d: $36 $03

jr_04d_557f:
    inc b                                         ; $557f: $04
    dec a                                         ; $5580: $3d
    inc bc                                        ; $5581: $03
    inc b                                         ; $5582: $04
    ld b, [hl]                                    ; $5583: $46
    inc bc                                        ; $5584: $03
    inc b                                         ; $5585: $04
    ld c, e                                       ; $5586: $4b
    inc bc                                        ; $5587: $03
    inc b                                         ; $5588: $04
    ld d, d                                       ; $5589: $52
    inc bc                                        ; $558a: $03
    inc b                                         ; $558b: $04
    ld e, b                                       ; $558c: $58
    inc bc                                        ; $558d: $03
    inc b                                         ; $558e: $04
    ld h, b                                       ; $558f: $60
    inc bc                                        ; $5590: $03
    inc b                                         ; $5591: $04
    ld l, c                                       ; $5592: $69
    inc bc                                        ; $5593: $03
    inc b                                         ; $5594: $04
    ld l, l                                       ; $5595: $6d
    inc bc                                        ; $5596: $03
    inc b                                         ; $5597: $04
    ld [hl], d                                    ; $5598: $72
    inc bc                                        ; $5599: $03
    inc b                                         ; $559a: $04
    ld a, h                                       ; $559b: $7c
    inc bc                                        ; $559c: $03
    inc b                                         ; $559d: $04
    add [hl]                                      ; $559e: $86
    inc bc                                        ; $559f: $03
    inc b                                         ; $55a0: $04
    adc d                                         ; $55a1: $8a
    inc bc                                        ; $55a2: $03
    inc b                                         ; $55a3: $04
    adc a                                         ; $55a4: $8f
    inc bc                                        ; $55a5: $03
    inc b                                         ; $55a6: $04
    sbc [hl]                                      ; $55a7: $9e
    inc bc                                        ; $55a8: $03
    inc b                                         ; $55a9: $04
    or [hl]                                       ; $55aa: $b6
    inc bc                                        ; $55ab: $03
    inc b                                         ; $55ac: $04
    ret c                                         ; $55ad: $d8

    inc bc                                        ; $55ae: $03
    inc b                                         ; $55af: $04
    rst $20                                       ; $55b0: $e7
    inc bc                                        ; $55b1: $03
    inc b                                         ; $55b2: $04
    rst $38                                       ; $55b3: $ff
    inc bc                                        ; $55b4: $03
    inc b                                         ; $55b5: $04
    add hl, de                                    ; $55b6: $19
    inc b                                         ; $55b7: $04
    inc b                                         ; $55b8: $04
    ld b, b                                       ; $55b9: $40
    inc b                                         ; $55ba: $04
    inc b                                         ; $55bb: $04
    ld h, [hl]                                    ; $55bc: $66
    inc b                                         ; $55bd: $04
    inc b                                         ; $55be: $04
    ld a, d                                       ; $55bf: $7a
    inc b                                         ; $55c0: $04
    inc b                                         ; $55c1: $04
    sbc e                                         ; $55c2: $9b
    inc b                                         ; $55c3: $04
    inc b                                         ; $55c4: $04
    cp c                                          ; $55c5: $b9
    inc b                                         ; $55c6: $04
    inc b                                         ; $55c7: $04
    add sp, $04                                   ; $55c8: $e8 $04
    inc b                                         ; $55ca: $04
    nop                                           ; $55cb: $00
    dec b                                         ; $55cc: $05
    inc b                                         ; $55cd: $04
    dec e                                         ; $55ce: $1d
    dec b                                         ; $55cf: $05
    inc b                                         ; $55d0: $04
    ld b, e                                       ; $55d1: $43
    dec b                                         ; $55d2: $05
    inc b                                         ; $55d3: $04
    ld l, [hl]                                    ; $55d4: $6e
    dec b                                         ; $55d5: $05
    inc b                                         ; $55d6: $04
    adc c                                         ; $55d7: $89
    dec b                                         ; $55d8: $05
    inc b                                         ; $55d9: $04
    and e                                         ; $55da: $a3
    dec b                                         ; $55db: $05
    inc b                                         ; $55dc: $04
    or a                                          ; $55dd: $b7
    dec b                                         ; $55de: $05
    inc b                                         ; $55df: $04
    call c, Call_000_0405                         ; $55e0: $dc $05 $04
    db $dd                                        ; $55e3: $dd
    dec b                                         ; $55e4: $05
    inc b                                         ; $55e5: $04
    sbc $05                                       ; $55e6: $de $05
    inc b                                         ; $55e8: $04
    or $05                                        ; $55e9: $f6 $05
    inc b                                         ; $55eb: $04
    dec b                                         ; $55ec: $05
    ld b, $04                                     ; $55ed: $06 $04
    inc c                                         ; $55ef: $0c
    ld b, $04                                     ; $55f0: $06 $04
    dec d                                         ; $55f2: $15
    ld b, $04                                     ; $55f3: $06 $04
    inc e                                         ; $55f5: $1c
    ld b, $04                                     ; $55f6: $06 $04
    inc hl                                        ; $55f8: $23
    ld b, $04                                     ; $55f9: $06 $04
    ld b, [hl]                                    ; $55fb: $46
    ld b, $04                                     ; $55fc: $06 $04
    ld h, b                                       ; $55fe: $60
    ld b, $04                                     ; $55ff: $06 $04
    ld [hl], l                                    ; $5601: $75
    ld b, $04                                     ; $5602: $06 $04
    add a                                         ; $5604: $87
    ld b, $04                                     ; $5605: $06 $04
    sbc c                                         ; $5607: $99
    ld b, $04                                     ; $5608: $06 $04
    cp b                                          ; $560a: $b8
    ld b, $04                                     ; $560b: $06 $04
    ldh [rTMA], a                                 ; $560d: $e0 $06
    inc b                                         ; $560f: $04
    inc de                                        ; $5610: $13
    rlca                                          ; $5611: $07
    inc b                                         ; $5612: $04
    ld b, h                                       ; $5613: $44
    rlca                                          ; $5614: $07
    inc b                                         ; $5615: $04
    ld l, d                                       ; $5616: $6a
    rlca                                          ; $5617: $07
    inc b                                         ; $5618: $04
    xor l                                         ; $5619: $ad
    rlca                                          ; $561a: $07
    inc b                                         ; $561b: $04
    jp z, Jump_000_0407                           ; $561c: $ca $07 $04

    db $ec                                        ; $561f: $ec
    rlca                                          ; $5620: $07
    inc b                                         ; $5621: $04
    ld a, [$0407]                                 ; $5622: $fa $07 $04
    rla                                           ; $5625: $17
    ld [$3f04], sp                                ; $5626: $08 $04 $3f
    ld [$5e04], sp                                ; $5629: $08 $04 $5e
    ld [$8e04], sp                                ; $562c: $08 $04 $8e
    ld [$a204], sp                                ; $562f: $08 $04 $a2
    ld [$bb04], sp                                ; $5632: $08 $04 $bb
    ld [$dd04], sp                                ; $5635: $08 $04 $dd
    ld [$0c04], sp                                ; $5638: $08 $04 $0c
    add hl, bc                                    ; $563b: $09
    inc b                                         ; $563c: $04
    ld sp, $0409                                  ; $563d: $31 $09 $04
    ld c, e                                       ; $5640: $4b
    add hl, bc                                    ; $5641: $09
    inc b                                         ; $5642: $04
    ld e, l                                       ; $5643: $5d
    add hl, bc                                    ; $5644: $09
    inc b                                         ; $5645: $04
    ld a, l                                       ; $5646: $7d
    add hl, bc                                    ; $5647: $09
    inc b                                         ; $5648: $04
    and h                                         ; $5649: $a4
    add hl, bc                                    ; $564a: $09
    inc b                                         ; $564b: $04
    or [hl]                                       ; $564c: $b6
    add hl, bc                                    ; $564d: $09
    inc b                                         ; $564e: $04
    rst $10                                       ; $564f: $d7
    add hl, bc                                    ; $5650: $09
    inc b                                         ; $5651: $04
    jp hl                                         ; $5652: $e9


    add hl, bc                                    ; $5653: $09
    inc b                                         ; $5654: $04
    dec e                                         ; $5655: $1d
    ld a, [bc]                                    ; $5656: $0a
    inc b                                         ; $5657: $04
    ld h, $0a                                     ; $5658: $26 $0a
    inc b                                         ; $565a: $04
    inc sp                                        ; $565b: $33
    ld a, [bc]                                    ; $565c: $0a
    inc b                                         ; $565d: $04
    ld a, [hl-]                                   ; $565e: $3a
    ld a, [bc]                                    ; $565f: $0a
    inc b                                         ; $5660: $04
    ld b, e                                       ; $5661: $43
    ld a, [bc]                                    ; $5662: $0a
    inc b                                         ; $5663: $04
    ld e, c                                       ; $5664: $59
    ld a, [bc]                                    ; $5665: $0a
    inc b                                         ; $5666: $04
    ld l, e                                       ; $5667: $6b
    ld a, [bc]                                    ; $5668: $0a
    inc b                                         ; $5669: $04
    or e                                          ; $566a: $b3
    ld a, [bc]                                    ; $566b: $0a
    inc b                                         ; $566c: $04
    rst $30                                       ; $566d: $f7
    ld a, [bc]                                    ; $566e: $0a
    inc b                                         ; $566f: $04
    ld b, $0b                                     ; $5670: $06 $0b
    inc b                                         ; $5672: $04
    inc de                                        ; $5673: $13
    dec bc                                        ; $5674: $0b
    inc b                                         ; $5675: $04
    ld l, $0b                                     ; $5676: $2e $0b
    inc b                                         ; $5678: $04
    ld e, c                                       ; $5679: $59
    dec bc                                        ; $567a: $0b
    inc b                                         ; $567b: $04
    cp [hl]                                       ; $567c: $be
    dec bc                                        ; $567d: $0b
    inc b                                         ; $567e: $04
    db $f4                                        ; $567f: $f4
    dec bc                                        ; $5680: $0b
    inc b                                         ; $5681: $04
    ld d, l                                       ; $5682: $55
    inc c                                         ; $5683: $0c
    inc b                                         ; $5684: $04
    adc c                                         ; $5685: $89
    inc c                                         ; $5686: $0c
    inc b                                         ; $5687: $04
    xor l                                         ; $5688: $ad
    inc c                                         ; $5689: $0c
    inc b                                         ; $568a: $04
    db $f4                                        ; $568b: $f4
    inc c                                         ; $568c: $0c
    inc b                                         ; $568d: $04
    rst $38                                       ; $568e: $ff
    inc c                                         ; $568f: $0c
    inc b                                         ; $5690: $04
    jr jr_04d_56a0                                ; $5691: $18 $0d

    inc b                                         ; $5693: $04
    ld h, [hl]                                    ; $5694: $66
    dec c                                         ; $5695: $0d
    inc b                                         ; $5696: $04
    sbc [hl]                                      ; $5697: $9e
    dec c                                         ; $5698: $0d
    inc b                                         ; $5699: $04
    ret c                                         ; $569a: $d8

    dec c                                         ; $569b: $0d
    inc b                                         ; $569c: $04
    ld a, [c]                                     ; $569d: $f2

Call_04d_569e:
    dec c                                         ; $569e: $0d
    inc b                                         ; $569f: $04

jr_04d_56a0:
    ld a, [hl-]                                   ; $56a0: $3a
    ld c, $04                                     ; $56a1: $0e $04
    xor e                                         ; $56a3: $ab
    ld c, $04                                     ; $56a4: $0e $04
    jp z, Jump_000_040e                           ; $56a6: $ca $0e $04

    ld hl, $040f                                  ; $56a9: $21 $0f $04
    ld a, [hl]                                    ; $56ac: $7e
    rrca                                          ; $56ad: $0f
    inc b                                         ; $56ae: $04
    add [hl]                                      ; $56af: $86
    rrca                                          ; $56b0: $0f
    inc b                                         ; $56b1: $04
    jp c, Jump_000_040f                           ; $56b2: $da $0f $04

    ei                                            ; $56b5: $fb
    rrca                                          ; $56b6: $0f
    inc b                                         ; $56b7: $04
    rlca                                          ; $56b8: $07
    db $10                                        ; $56b9: $10
    inc b                                         ; $56ba: $04
    ld a, [hl-]                                   ; $56bb: $3a
    db $10                                        ; $56bc: $10
    inc b                                         ; $56bd: $04
    ld d, l                                       ; $56be: $55
    db $10                                        ; $56bf: $10
    inc b                                         ; $56c0: $04
    ld a, e                                       ; $56c1: $7b
    db $10                                        ; $56c2: $10
    inc b                                         ; $56c3: $04
    add c                                         ; $56c4: $81
    db $10                                        ; $56c5: $10
    inc b                                         ; $56c6: $04
    jp hl                                         ; $56c7: $e9


    db $10                                        ; $56c8: $10
    inc b                                         ; $56c9: $04
    xor $10                                       ; $56ca: $ee $10
    inc b                                         ; $56cc: $04
    inc sp                                        ; $56cd: $33
    ld de, $3a04                                  ; $56ce: $11 $04 $3a
    ld de, $a904                                  ; $56d1: $11 $04 $a9
    ld de, $e204                                  ; $56d4: $11 $04 $e2
    ld de, $3f04                                  ; $56d7: $11 $04 $3f
    ld [de], a                                    ; $56da: $12
    inc b                                         ; $56db: $04
    ld d, e                                       ; $56dc: $53
    ld [de], a                                    ; $56dd: $12
    inc b                                         ; $56de: $04
    ld h, d                                       ; $56df: $62
    ld [de], a                                    ; $56e0: $12
    inc b                                         ; $56e1: $04
    ld [hl], b                                    ; $56e2: $70
    ld [de], a                                    ; $56e3: $12
    inc b                                         ; $56e4: $04
    add [hl]                                      ; $56e5: $86
    ld [de], a                                    ; $56e6: $12
    inc b                                         ; $56e7: $04
    or c                                          ; $56e8: $b1
    ld [de], a                                    ; $56e9: $12
    inc b                                         ; $56ea: $04
    call nz, $0412                                ; $56eb: $c4 $12 $04
    db $ec                                        ; $56ee: $ec
    ld [de], a                                    ; $56ef: $12
    inc b                                         ; $56f0: $04
    rla                                           ; $56f1: $17
    inc de                                        ; $56f2: $13
    inc b                                         ; $56f3: $04
    ld b, l                                       ; $56f4: $45
    inc de                                        ; $56f5: $13
    inc b                                         ; $56f6: $04
    ld [hl], a                                    ; $56f7: $77
    inc de                                        ; $56f8: $13
    inc b                                         ; $56f9: $04
    cp b                                          ; $56fa: $b8
    inc de                                        ; $56fb: $13
    inc b                                         ; $56fc: $04
    ld a, [bc]                                    ; $56fd: $0a
    inc d                                         ; $56fe: $14
    inc b                                         ; $56ff: $04
    inc hl                                        ; $5700: $23
    inc d                                         ; $5701: $14
    inc b                                         ; $5702: $04
    scf                                           ; $5703: $37
    inc d                                         ; $5704: $14
    inc b                                         ; $5705: $04
    and a                                         ; $5706: $a7
    inc d                                         ; $5707: $14
    inc b                                         ; $5708: $04
    jp z, Jump_000_0414                           ; $5709: $ca $14 $04

    ld [$0415], sp                                ; $570c: $08 $15 $04
    ld e, $15                                     ; $570f: $1e $15
    inc b                                         ; $5711: $04
    ld [hl], l                                    ; $5712: $75
    dec d                                         ; $5713: $15
    inc b                                         ; $5714: $04
    sub e                                         ; $5715: $93
    dec d                                         ; $5716: $15
    inc b                                         ; $5717: $04
    and e                                         ; $5718: $a3
    dec d                                         ; $5719: $15
    inc b                                         ; $571a: $04
    or b                                          ; $571b: $b0
    dec d                                         ; $571c: $15
    inc b                                         ; $571d: $04
    jp hl                                         ; $571e: $e9


    dec d                                         ; $571f: $15
    inc b                                         ; $5720: $04
    db $f4                                        ; $5721: $f4
    dec d                                         ; $5722: $15
    inc b                                         ; $5723: $04
    dec de                                        ; $5724: $1b
    ld d, $04                                     ; $5725: $16 $04
    ld a, [hl+]                                   ; $5727: $2a
    ld d, $04                                     ; $5728: $16 $04
    add hl, sp                                    ; $572a: $39
    ld d, $04                                     ; $572b: $16 $04
    ld c, l                                       ; $572d: $4d
    ld d, $04                                     ; $572e: $16 $04
    ld l, e                                       ; $5730: $6b
    ld d, $04                                     ; $5731: $16 $04
    ld [hl], h                                    ; $5733: $74
    ld d, $04                                     ; $5734: $16 $04
    sbc h                                         ; $5736: $9c
    ld d, $04                                     ; $5737: $16 $04
    or c                                          ; $5739: $b1
    ld d, $04                                     ; $573a: $16 $04
    db $ed                                        ; $573c: $ed
    ld d, $04                                     ; $573d: $16 $04
    dec bc                                        ; $573f: $0b
    rla                                           ; $5740: $17
    inc b                                         ; $5741: $04
    jr z, jr_04d_575b                             ; $5742: $28 $17

    inc b                                         ; $5744: $04
    ld c, d                                       ; $5745: $4a
    rla                                           ; $5746: $17
    inc b                                         ; $5747: $04
    ld l, l                                       ; $5748: $6d
    rla                                           ; $5749: $17
    inc b                                         ; $574a: $04
    add a                                         ; $574b: $87
    rla                                           ; $574c: $17
    inc b                                         ; $574d: $04
    sbc b                                         ; $574e: $98
    rla                                           ; $574f: $17
    inc b                                         ; $5750: $04
    or l                                          ; $5751: $b5
    rla                                           ; $5752: $17
    inc b                                         ; $5753: $04
    cp a                                          ; $5754: $bf
    rla                                           ; $5755: $17
    inc b                                         ; $5756: $04
    jp nc, Jump_000_0417                          ; $5757: $d2 $17 $04

    db $e3                                        ; $575a: $e3

jr_04d_575b:
    rla                                           ; $575b: $17
    inc b                                         ; $575c: $04
    db $eb                                        ; $575d: $eb
    rla                                           ; $575e: $17
    inc b                                         ; $575f: $04
    db $10                                        ; $5760: $10
    jr jr_04d_5767                                ; $5761: $18 $04

    ld e, e                                       ; $5763: $5b
    jr jr_04d_576a                                ; $5764: $18 $04

    ld a, b                                       ; $5766: $78

jr_04d_5767:
    jr jr_04d_576d                                ; $5767: $18 $04

    add c                                         ; $5769: $81

jr_04d_576a:
    jr jr_04d_5770                                ; $576a: $18 $04

    sub [hl]                                      ; $576c: $96

jr_04d_576d:
    jr @+$06                                      ; $576d: $18 $04

    sbc [hl]                                      ; $576f: $9e

jr_04d_5770:
    jr jr_04d_5776                                ; $5770: $18 $04

    jp z, Jump_000_0418                           ; $5772: $ca $18 $04

    rst $20                                       ; $5775: $e7

jr_04d_5776:
    jr jr_04d_577c                                ; $5776: $18 $04

    ld b, h                                       ; $5778: $44
    add hl, de                                    ; $5779: $19
    inc b                                         ; $577a: $04
    ld [hl], a                                    ; $577b: $77

jr_04d_577c:
    add hl, de                                    ; $577c: $19
    inc b                                         ; $577d: $04
    pop de                                        ; $577e: $d1
    add hl, de                                    ; $577f: $19
    inc b                                         ; $5780: $04
    reti                                          ; $5781: $d9


    add hl, de                                    ; $5782: $19
    inc b                                         ; $5783: $04
    and $19                                       ; $5784: $e6 $19
    inc b                                         ; $5786: $04
    db $fd                                        ; $5787: $fd
    add hl, de                                    ; $5788: $19
    inc b                                         ; $5789: $04
    ld sp, $041a                                  ; $578a: $31 $1a $04
    ld d, c                                       ; $578d: $51
    ld a, [de]                                    ; $578e: $1a
    inc b                                         ; $578f: $04
    adc d                                         ; $5790: $8a
    ld a, [de]                                    ; $5791: $1a
    inc b                                         ; $5792: $04
    and e                                         ; $5793: $a3
    ld a, [de]                                    ; $5794: $1a
    inc b                                         ; $5795: $04
    adc $1a                                       ; $5796: $ce $1a
    inc b                                         ; $5798: $04
    push de                                       ; $5799: $d5
    ld a, [de]                                    ; $579a: $1a
    inc b                                         ; $579b: $04
    ld [c], a                                     ; $579c: $e2
    ld a, [de]                                    ; $579d: $1a
    inc b                                         ; $579e: $04
    inc l                                         ; $579f: $2c
    dec de                                        ; $57a0: $1b
    inc b                                         ; $57a1: $04
    jr c, jr_04d_57bf                             ; $57a2: $38 $1b

    inc b                                         ; $57a4: $04
    add b                                         ; $57a5: $80
    dec de                                        ; $57a6: $1b
    inc b                                         ; $57a7: $04
    sbc a                                         ; $57a8: $9f
    dec de                                        ; $57a9: $1b
    inc b                                         ; $57aa: $04
    jp hl                                         ; $57ab: $e9


    dec de                                        ; $57ac: $1b
    inc b                                         ; $57ad: $04
    inc de                                        ; $57ae: $13
    inc e                                         ; $57af: $1c
    inc b                                         ; $57b0: $04
    ld [hl+], a                                   ; $57b1: $22
    inc e                                         ; $57b2: $1c
    inc b                                         ; $57b3: $04
    jr c, jr_04d_57d2                             ; $57b4: $38 $1c

    inc b                                         ; $57b6: $04
    ld b, e                                       ; $57b7: $43
    inc e                                         ; $57b8: $1c
    inc b                                         ; $57b9: $04
    ld c, l                                       ; $57ba: $4d
    inc e                                         ; $57bb: $1c
    inc b                                         ; $57bc: $04
    ld e, d                                       ; $57bd: $5a
    inc e                                         ; $57be: $1c

jr_04d_57bf:
    inc b                                         ; $57bf: $04
    ld h, l                                       ; $57c0: $65
    inc e                                         ; $57c1: $1c
    inc b                                         ; $57c2: $04
    ld [hl], e                                    ; $57c3: $73
    inc e                                         ; $57c4: $1c
    inc b                                         ; $57c5: $04
    ld a, h                                       ; $57c6: $7c
    inc e                                         ; $57c7: $1c
    inc b                                         ; $57c8: $04
    add [hl]                                      ; $57c9: $86
    inc e                                         ; $57ca: $1c
    inc b                                         ; $57cb: $04
    sbc e                                         ; $57cc: $9b
    inc e                                         ; $57cd: $1c
    inc b                                         ; $57ce: $04
    xor h                                         ; $57cf: $ac
    inc e                                         ; $57d0: $1c
    inc b                                         ; $57d1: $04

jr_04d_57d2:
    xor l                                         ; $57d2: $ad
    inc e                                         ; $57d3: $1c
    inc b                                         ; $57d4: $04
    cp e                                          ; $57d5: $bb
    inc e                                         ; $57d6: $1c
    inc b                                         ; $57d7: $04
    call Call_000_041c                            ; $57d8: $cd $1c $04
    rst $18                                       ; $57db: $df
    inc e                                         ; $57dc: $1c
    inc b                                         ; $57dd: $04
    ldh [rNR32], a                                ; $57de: $e0 $1c
    inc b                                         ; $57e0: $04
    pop hl                                        ; $57e1: $e1
    inc e                                         ; $57e2: $1c
    inc b                                         ; $57e3: $04
    pop af                                        ; $57e4: $f1
    inc e                                         ; $57e5: $1c
    inc b                                         ; $57e6: $04
    rst $38                                       ; $57e7: $ff
    inc e                                         ; $57e8: $1c
    inc b                                         ; $57e9: $04
    nop                                           ; $57ea: $00
    dec e                                         ; $57eb: $1d
    inc b                                         ; $57ec: $04
    ld a, [bc]                                    ; $57ed: $0a
    dec e                                         ; $57ee: $1d
    inc b                                         ; $57ef: $04
    dec bc                                        ; $57f0: $0b
    dec e                                         ; $57f1: $1d
    inc b                                         ; $57f2: $04
    inc c                                         ; $57f3: $0c
    dec e                                         ; $57f4: $1d
    inc b                                         ; $57f5: $04
    inc e                                         ; $57f6: $1c
    dec e                                         ; $57f7: $1d
    inc b                                         ; $57f8: $04
    jr z, jr_04d_5818                             ; $57f9: $28 $1d

    inc b                                         ; $57fb: $04
    inc [hl]                                      ; $57fc: $34
    dec e                                         ; $57fd: $1d
    inc b                                         ; $57fe: $04
    dec [hl]                                      ; $57ff: $35
    dec e                                         ; $5800: $1d
    inc b                                         ; $5801: $04
    ld [hl], $1d                                  ; $5802: $36 $1d
    inc b                                         ; $5804: $04
    scf                                           ; $5805: $37
    dec e                                         ; $5806: $1d
    inc b                                         ; $5807: $04
    ld b, a                                       ; $5808: $47
    dec e                                         ; $5809: $1d
    inc b                                         ; $580a: $04
    ld c, b                                       ; $580b: $48
    dec e                                         ; $580c: $1d
    inc b                                         ; $580d: $04
    ld c, c                                       ; $580e: $49
    dec e                                         ; $580f: $1d
    inc b                                         ; $5810: $04
    ld c, d                                       ; $5811: $4a
    dec e                                         ; $5812: $1d
    inc b                                         ; $5813: $04
    ld c, e                                       ; $5814: $4b
    dec e                                         ; $5815: $1d
    inc b                                         ; $5816: $04
    ld c, h                                       ; $5817: $4c

jr_04d_5818:
    dec e                                         ; $5818: $1d
    inc b                                         ; $5819: $04
    ld c, l                                       ; $581a: $4d
    dec e                                         ; $581b: $1d
    inc b                                         ; $581c: $04
    ld c, [hl]                                    ; $581d: $4e
    dec e                                         ; $581e: $1d
    inc b                                         ; $581f: $04
    ld c, a                                       ; $5820: $4f
    dec e                                         ; $5821: $1d
    inc b                                         ; $5822: $04
    ld d, a                                       ; $5823: $57
    dec e                                         ; $5824: $1d
    inc b                                         ; $5825: $04
    ld h, l                                       ; $5826: $65
    dec e                                         ; $5827: $1d
    inc b                                         ; $5828: $04
    ld a, b                                       ; $5829: $78
    dec e                                         ; $582a: $1d
    inc b                                         ; $582b: $04
    ld a, c                                       ; $582c: $79
    dec e                                         ; $582d: $1d
    inc b                                         ; $582e: $04
    ld a, d                                       ; $582f: $7a
    dec e                                         ; $5830: $1d
    inc b                                         ; $5831: $04
    ld a, e                                       ; $5832: $7b
    dec e                                         ; $5833: $1d
    inc b                                         ; $5834: $04
    ld a, h                                       ; $5835: $7c
    dec e                                         ; $5836: $1d
    inc b                                         ; $5837: $04
    ld a, l                                       ; $5838: $7d
    dec e                                         ; $5839: $1d
    inc b                                         ; $583a: $04
    ld a, [hl]                                    ; $583b: $7e
    dec e                                         ; $583c: $1d
    inc b                                         ; $583d: $04
    ld a, a                                       ; $583e: $7f
    dec e                                         ; $583f: $1d
    inc b                                         ; $5840: $04
    add b                                         ; $5841: $80
    dec e                                         ; $5842: $1d
    inc b                                         ; $5843: $04
    add c                                         ; $5844: $81
    dec e                                         ; $5845: $1d
    inc b                                         ; $5846: $04
    add d                                         ; $5847: $82
    dec e                                         ; $5848: $1d
    inc b                                         ; $5849: $04
    adc h                                         ; $584a: $8c
    dec e                                         ; $584b: $1d
    inc b                                         ; $584c: $04
    sbc [hl]                                      ; $584d: $9e
    dec e                                         ; $584e: $1d
    inc b                                         ; $584f: $04
    xor l                                         ; $5850: $ad
    dec e                                         ; $5851: $1d
    inc b                                         ; $5852: $04
    cp e                                          ; $5853: $bb
    dec e                                         ; $5854: $1d
    inc b                                         ; $5855: $04
    rst $00                                       ; $5856: $c7
    dec e                                         ; $5857: $1d
    inc b                                         ; $5858: $04
    rst $10                                       ; $5859: $d7
    dec e                                         ; $585a: $1d
    inc b                                         ; $585b: $04
    ret c                                         ; $585c: $d8

    dec e                                         ; $585d: $1d
    inc b                                         ; $585e: $04
    rst $20                                       ; $585f: $e7
    dec e                                         ; $5860: $1d
    inc b                                         ; $5861: $04
    add sp, $1d                                   ; $5862: $e8 $1d
    inc b                                         ; $5864: $04
    rst $30                                       ; $5865: $f7
    dec e                                         ; $5866: $1d
    inc b                                         ; $5867: $04
    ld hl, sp+$1d                                 ; $5868: $f8 $1d
    inc b                                         ; $586a: $04
    dec b                                         ; $586b: $05
    ld e, $04                                     ; $586c: $1e $04
    ld b, $1e                                     ; $586e: $06 $1e
    inc b                                         ; $5870: $04
    add hl, de                                    ; $5871: $19
    ld e, $04                                     ; $5872: $1e $04
    ld [hl+], a                                   ; $5874: $22
    ld e, $04                                     ; $5875: $1e $04
    ld [hl], $1e                                  ; $5877: $36 $1e
    inc b                                         ; $5879: $04
    ld b, h                                       ; $587a: $44
    ld e, $04                                     ; $587b: $1e $04
    ld d, [hl]                                    ; $587d: $56
    ld e, $04                                     ; $587e: $1e $04
    ld d, a                                       ; $5880: $57
    ld e, $04                                     ; $5881: $1e $04
    ld e, b                                       ; $5883: $58
    ld e, $04                                     ; $5884: $1e $04
    ld e, c                                       ; $5886: $59
    ld e, $04                                     ; $5887: $1e $04
    ld e, d                                       ; $5889: $5a
    ld e, $04                                     ; $588a: $1e $04
    ld l, l                                       ; $588c: $6d
    ld e, $04                                     ; $588d: $1e $04
    ld a, l                                       ; $588f: $7d
    ld e, $04                                     ; $5890: $1e $04
    adc [hl]                                      ; $5892: $8e
    ld e, $04                                     ; $5893: $1e $04
    sbc [hl]                                      ; $5895: $9e
    ld e, $04                                     ; $5896: $1e $04
    xor [hl]                                      ; $5898: $ae
    ld e, $04                                     ; $5899: $1e $04
    cp [hl]                                       ; $589b: $be
    ld e, $04                                     ; $589c: $1e $04
    call z, Call_000_041e                         ; $589e: $cc $1e $04
    jp c, Jump_000_041e                           ; $58a1: $da $1e $04

    and $1e                                       ; $58a4: $e6 $1e
    inc b                                         ; $58a6: $04
    db $f4                                        ; $58a7: $f4
    ld e, $04                                     ; $58a8: $1e $04
    ld b, $1f                                     ; $58aa: $06 $1f
    inc b                                         ; $58ac: $04
    ld [de], a                                    ; $58ad: $12
    rra                                           ; $58ae: $1f
    inc b                                         ; $58af: $04
    dec h                                         ; $58b0: $25
    rra                                           ; $58b1: $1f
    inc b                                         ; $58b2: $04
    ld h, $1f                                     ; $58b3: $26 $1f
    inc b                                         ; $58b5: $04
    ld [hl], $1f                                  ; $58b6: $36 $1f
    inc b                                         ; $58b8: $04
    ld b, l                                       ; $58b9: $45
    rra                                           ; $58ba: $1f
    inc b                                         ; $58bb: $04
    ld d, h                                       ; $58bc: $54
    rra                                           ; $58bd: $1f
    inc b                                         ; $58be: $04
    ld e, a                                       ; $58bf: $5f
    rra                                           ; $58c0: $1f
    inc b                                         ; $58c1: $04
    ld [hl], d                                    ; $58c2: $72
    rra                                           ; $58c3: $1f
    inc b                                         ; $58c4: $04
    add c                                         ; $58c5: $81
    rra                                           ; $58c6: $1f
    inc b                                         ; $58c7: $04
    adc a                                         ; $58c8: $8f
    rra                                           ; $58c9: $1f
    inc b                                         ; $58ca: $04
    and d                                         ; $58cb: $a2
    rra                                           ; $58cc: $1f
    inc b                                         ; $58cd: $04
    xor [hl]                                      ; $58ce: $ae
    rra                                           ; $58cf: $1f
    inc b                                         ; $58d0: $04
    or [hl]                                       ; $58d1: $b6
    rra                                           ; $58d2: $1f
    inc b                                         ; $58d3: $04
    cp a                                          ; $58d4: $bf
    rra                                           ; $58d5: $1f
    inc b                                         ; $58d6: $04
    rst $00                                       ; $58d7: $c7
    rra                                           ; $58d8: $1f
    inc b                                         ; $58d9: $04
    rst $08                                       ; $58da: $cf

Call_04d_58db:
    rra                                           ; $58db: $1f
    inc b                                         ; $58dc: $04
    jp c, Jump_000_041f                           ; $58dd: $da $1f $04

    pop hl                                        ; $58e0: $e1
    rra                                           ; $58e1: $1f
    inc b                                         ; $58e2: $04
    db $eb                                        ; $58e3: $eb
    rra                                           ; $58e4: $1f
    inc b                                         ; $58e5: $04
    di                                            ; $58e6: $f3
    rra                                           ; $58e7: $1f
    inc b                                         ; $58e8: $04
    db $fd                                        ; $58e9: $fd
    rra                                           ; $58ea: $1f
    inc b                                         ; $58eb: $04
    ld a, [bc]                                    ; $58ec: $0a
    jr nz, @+$06                                  ; $58ed: $20 $04

    ld d, $20                                     ; $58ef: $16 $20
    inc b                                         ; $58f1: $04
    ld h, $20                                     ; $58f2: $26 $20
    inc b                                         ; $58f4: $04
    ld [hl], $20                                  ; $58f5: $36 $20
    inc b                                         ; $58f7: $04
    ld b, [hl]                                    ; $58f8: $46
    jr nz, jr_04d_58ff                            ; $58f9: $20 $04

    ld d, d                                       ; $58fb: $52
    jr nz, jr_04d_5902                            ; $58fc: $20 $04

    ld h, [hl]                                    ; $58fe: $66

jr_04d_58ff:
    jr nz, jr_04d_5905                            ; $58ff: $20 $04

    ld [hl], h                                    ; $5901: $74

jr_04d_5902:
    jr nz, jr_04d_5908                            ; $5902: $20 $04

    ld a, a                                       ; $5904: $7f

jr_04d_5905:
    jr nz, jr_04d_590b                            ; $5905: $20 $04

    adc l                                         ; $5907: $8d

jr_04d_5908:
    jr nz, jr_04d_590e                            ; $5908: $20 $04

    sub [hl]                                      ; $590a: $96

jr_04d_590b:
    jr nz, jr_04d_5911                            ; $590b: $20 $04

    sbc [hl]                                      ; $590d: $9e

jr_04d_590e:
    jr nz, jr_04d_5914                            ; $590e: $20 $04

    or b                                          ; $5910: $b0

jr_04d_5911:
    jr nz, jr_04d_5917                            ; $5911: $20 $04

    cp a                                          ; $5913: $bf

jr_04d_5914:
    jr nz, @+$06                                  ; $5914: $20 $04

    ret                                           ; $5916: $c9


jr_04d_5917:
    jr nz, jr_04d_591d                            ; $5917: $20 $04

    sub $20                                       ; $5919: $d6 $20
    inc b                                         ; $591b: $04
    db $e3                                        ; $591c: $e3

jr_04d_591d:
    jr nz, jr_04d_5923                            ; $591d: $20 $04

    ldh a, [rNR41]                                ; $591f: $f0 $20
    inc b                                         ; $5921: $04
    db $fd                                        ; $5922: $fd

jr_04d_5923:
    jr nz, jr_04d_5929                            ; $5923: $20 $04

    ld a, [bc]                                    ; $5925: $0a
    ld hl, $1704                                  ; $5926: $21 $04 $17

jr_04d_5929:
    ld hl, $2704                                  ; $5929: $21 $04 $27
    ld hl, $3704                                  ; $592c: $21 $04 $37
    ld hl, $4704                                  ; $592f: $21 $04 $47
    ld hl, $5704                                  ; $5932: $21 $04 $57
    ld hl, $6704                                  ; $5935: $21 $04 $67
    ld hl, $7704                                  ; $5938: $21 $04 $77
    ld hl, $8104                                  ; $593b: $21 $04 $81
    ld hl, $8a04                                  ; $593e: $21 $04 $8a
    ld hl, $9304                                  ; $5941: $21 $04 $93
    ld hl, $a104                                  ; $5944: $21 $04 $a1
    ld hl, $a804                                  ; $5947: $21 $04 $a8
    ld hl, $b104                                  ; $594a: $21 $04 $b1
    ld hl, $c004                                  ; $594d: $21 $04 $c0
    ld hl, $ce04                                  ; $5950: $21 $04 $ce
    ld hl, $da04                                  ; $5953: $21 $04 $da
    ld hl, $e604                                  ; $5956: $21 $04 $e6
    ld hl, $f204                                  ; $5959: $21 $04 $f2
    ld hl, $fe04                                  ; $595c: $21 $04 $fe
    ld hl, $0a04                                  ; $595f: $21 $04 $0a
    ld [hl+], a                                   ; $5962: $22
    inc b                                         ; $5963: $04
    ld d, $22                                     ; $5964: $16 $22
    inc b                                         ; $5966: $04
    ld [hl+], a                                   ; $5967: $22
    ld [hl+], a                                   ; $5968: $22
    inc b                                         ; $5969: $04
    ld a, [hl+]                                   ; $596a: $2a
    ld [hl+], a                                   ; $596b: $22
    inc b                                         ; $596c: $04
    ld a, $22                                     ; $596d: $3e $22
    inc b                                         ; $596f: $04
    ld c, c                                       ; $5970: $49
    ld [hl+], a                                   ; $5971: $22
    inc b                                         ; $5972: $04
    ld d, d                                       ; $5973: $52
    ld [hl+], a                                   ; $5974: $22
    inc b                                         ; $5975: $04
    ld e, e                                       ; $5976: $5b
    ld [hl+], a                                   ; $5977: $22
    inc b                                         ; $5978: $04
    ld h, [hl]                                    ; $5979: $66
    ld [hl+], a                                   ; $597a: $22
    inc b                                         ; $597b: $04
    ld a, b                                       ; $597c: $78
    ld [hl+], a                                   ; $597d: $22
    inc b                                         ; $597e: $04
    add c                                         ; $597f: $81
    ld [hl+], a                                   ; $5980: $22
    inc b                                         ; $5981: $04
    sub h                                         ; $5982: $94
    ld [hl+], a                                   ; $5983: $22
    inc b                                         ; $5984: $04
    sbc l                                         ; $5985: $9d
    ld [hl+], a                                   ; $5986: $22
    inc b                                         ; $5987: $04
    and h                                         ; $5988: $a4
    ld [hl+], a                                   ; $5989: $22
    inc b                                         ; $598a: $04
    xor h                                         ; $598b: $ac
    ld [hl+], a                                   ; $598c: $22
    inc b                                         ; $598d: $04
    or d                                          ; $598e: $b2
    ld [hl+], a                                   ; $598f: $22
    inc b                                         ; $5990: $04
    add $22                                       ; $5991: $c6 $22
    inc b                                         ; $5993: $04
    call Call_000_0422                            ; $5994: $cd $22 $04
    jp c, Jump_000_0422                           ; $5997: $da $22 $04

    push hl                                       ; $599a: $e5
    ld [hl+], a                                   ; $599b: $22
    inc b                                         ; $599c: $04
    db $ec                                        ; $599d: $ec
    ld [hl+], a                                   ; $599e: $22
    inc b                                         ; $599f: $04
    ld sp, hl                                     ; $59a0: $f9
    ld [hl+], a                                   ; $59a1: $22
    inc b                                         ; $59a2: $04
    add hl, bc                                    ; $59a3: $09
    inc hl                                        ; $59a4: $23
    inc b                                         ; $59a5: $04
    ld a, [de]                                    ; $59a6: $1a
    inc hl                                        ; $59a7: $23
    inc b                                         ; $59a8: $04
    inc hl                                        ; $59a9: $23
    inc hl                                        ; $59aa: $23
    inc b                                         ; $59ab: $04
    dec hl                                        ; $59ac: $2b
    inc hl                                        ; $59ad: $23
    inc b                                         ; $59ae: $04
    jr c, jr_04d_59d4                             ; $59af: $38 $23

    inc b                                         ; $59b1: $04
    ld b, l                                       ; $59b2: $45
    inc hl                                        ; $59b3: $23
    inc b                                         ; $59b4: $04
    ld c, l                                       ; $59b5: $4d
    inc hl                                        ; $59b6: $23
    inc b                                         ; $59b7: $04
    ld e, l                                       ; $59b8: $5d
    inc hl                                        ; $59b9: $23
    inc b                                         ; $59ba: $04
    ld h, a                                       ; $59bb: $67
    inc hl                                        ; $59bc: $23
    inc b                                         ; $59bd: $04
    ld [hl], c                                    ; $59be: $71
    inc hl                                        ; $59bf: $23
    inc b                                         ; $59c0: $04
    ld a, h                                       ; $59c1: $7c
    inc hl                                        ; $59c2: $23
    inc b                                         ; $59c3: $04
    adc e                                         ; $59c4: $8b
    inc hl                                        ; $59c5: $23
    inc b                                         ; $59c6: $04
    sbc d                                         ; $59c7: $9a
    inc hl                                        ; $59c8: $23
    inc b                                         ; $59c9: $04
    xor c                                         ; $59ca: $a9
    inc hl                                        ; $59cb: $23
    inc b                                         ; $59cc: $04
    cp b                                          ; $59cd: $b8
    inc hl                                        ; $59ce: $23
    inc b                                         ; $59cf: $04
    call nz, Call_000_0423                        ; $59d0: $c4 $23 $04
    ret nc                                        ; $59d3: $d0

jr_04d_59d4:
    inc hl                                        ; $59d4: $23
    inc b                                         ; $59d5: $04
    call c, Call_000_0423                         ; $59d6: $dc $23 $04
    push hl                                       ; $59d9: $e5
    inc hl                                        ; $59da: $23
    inc b                                         ; $59db: $04
    db $ed                                        ; $59dc: $ed
    inc hl                                        ; $59dd: $23
    inc b                                         ; $59de: $04
    cp $23                                        ; $59df: $fe $23
    inc b                                         ; $59e1: $04
    ld c, $24                                     ; $59e2: $0e $24
    inc b                                         ; $59e4: $04
    inc d                                         ; $59e5: $14
    inc h                                         ; $59e6: $24
    inc b                                         ; $59e7: $04
    dec h                                         ; $59e8: $25
    inc h                                         ; $59e9: $24
    inc b                                         ; $59ea: $04
    inc l                                         ; $59eb: $2c
    inc h                                         ; $59ec: $24
    inc b                                         ; $59ed: $04
    dec [hl]                                      ; $59ee: $35
    inc h                                         ; $59ef: $24
    inc b                                         ; $59f0: $04
    ld b, d                                       ; $59f1: $42
    inc h                                         ; $59f2: $24
    inc b                                         ; $59f3: $04
    ld d, e                                       ; $59f4: $53
    inc h                                         ; $59f5: $24
    inc b                                         ; $59f6: $04
    ld h, c                                       ; $59f7: $61
    inc h                                         ; $59f8: $24
    inc b                                         ; $59f9: $04
    ld l, [hl]                                    ; $59fa: $6e
    inc h                                         ; $59fb: $24
    inc b                                         ; $59fc: $04
    add c                                         ; $59fd: $81
    inc h                                         ; $59fe: $24
    inc b                                         ; $59ff: $04
    sub b                                         ; $5a00: $90
    inc h                                         ; $5a01: $24
    inc b                                         ; $5a02: $04
    and e                                         ; $5a03: $a3
    inc h                                         ; $5a04: $24
    inc b                                         ; $5a05: $04
    cp d                                          ; $5a06: $ba
    inc h                                         ; $5a07: $24
    inc b                                         ; $5a08: $04
    db $d3                                        ; $5a09: $d3
    inc h                                         ; $5a0a: $24
    inc b                                         ; $5a0b: $04
    db $f4                                        ; $5a0c: $f4
    inc h                                         ; $5a0d: $24
    inc b                                         ; $5a0e: $04
    dec c                                         ; $5a0f: $0d
    dec h                                         ; $5a10: $25
    inc b                                         ; $5a11: $04
    inc h                                         ; $5a12: $24

Jump_04d_5a13:
    dec h                                         ; $5a13: $25
    inc b                                         ; $5a14: $04
    jr c, jr_04d_5a3c                             ; $5a15: $38 $25

    inc b                                         ; $5a17: $04
    ld b, h                                       ; $5a18: $44
    dec h                                         ; $5a19: $25
    inc b                                         ; $5a1a: $04
    ld c, a                                       ; $5a1b: $4f
    dec h                                         ; $5a1c: $25
    inc b                                         ; $5a1d: $04
    ld e, d                                       ; $5a1e: $5a
    dec h                                         ; $5a1f: $25
    inc b                                         ; $5a20: $04
    ld h, l                                       ; $5a21: $65
    dec h                                         ; $5a22: $25
    inc b                                         ; $5a23: $04
    ld [hl], a                                    ; $5a24: $77
    dec h                                         ; $5a25: $25
    inc b                                         ; $5a26: $04
    sub c                                         ; $5a27: $91
    dec h                                         ; $5a28: $25
    inc b                                         ; $5a29: $04
    and h                                         ; $5a2a: $a4
    dec h                                         ; $5a2b: $25
    inc b                                         ; $5a2c: $04
    or l                                          ; $5a2d: $b5
    dec h                                         ; $5a2e: $25
    inc b                                         ; $5a2f: $04
    ret                                           ; $5a30: $c9


    dec h                                         ; $5a31: $25
    inc b                                         ; $5a32: $04
    rst $10                                       ; $5a33: $d7
    dec h                                         ; $5a34: $25
    inc b                                         ; $5a35: $04
    push hl                                       ; $5a36: $e5
    dec h                                         ; $5a37: $25
    inc b                                         ; $5a38: $04
    ei                                            ; $5a39: $fb
    dec h                                         ; $5a3a: $25
    inc b                                         ; $5a3b: $04

jr_04d_5a3c:
    rrca                                          ; $5a3c: $0f
    ld h, $04                                     ; $5a3d: $26 $04
    ld [hl+], a                                   ; $5a3f: $22
    ld h, $04                                     ; $5a40: $26 $04
    dec a                                         ; $5a42: $3d
    ld h, $04                                     ; $5a43: $26 $04
    ld d, a                                       ; $5a45: $57
    ld h, $04                                     ; $5a46: $26 $04
    ld [hl], d                                    ; $5a48: $72
    ld h, $04                                     ; $5a49: $26 $04
    adc [hl]                                      ; $5a4b: $8e
    ld h, $04                                     ; $5a4c: $26 $04
    xor c                                         ; $5a4e: $a9
    ld h, $04                                     ; $5a4f: $26 $04
    call nz, Call_000_0426                        ; $5a51: $c4 $26 $04
    rst $08                                       ; $5a54: $cf
    ld h, $04                                     ; $5a55: $26 $04
    jp c, Jump_000_0426                           ; $5a57: $da $26 $04

    push hl                                       ; $5a5a: $e5
    ld h, $04                                     ; $5a5b: $26 $04
    ldh a, [rNR52]                                ; $5a5d: $f0 $26
    inc b                                         ; $5a5f: $04
    ei                                            ; $5a60: $fb
    ld h, $04                                     ; $5a61: $26 $04
    ld b, $27                                     ; $5a63: $06 $27
    inc b                                         ; $5a65: $04
    dec de                                        ; $5a66: $1b
    daa                                           ; $5a67: $27
    inc b                                         ; $5a68: $04
    dec hl                                        ; $5a69: $2b
    daa                                           ; $5a6a: $27

Call_04d_5a6b:
    inc b                                         ; $5a6b: $04
    dec sp                                        ; $5a6c: $3b
    daa                                           ; $5a6d: $27
    inc b                                         ; $5a6e: $04
    ld d, b                                       ; $5a6f: $50
    daa                                           ; $5a70: $27
    inc b                                         ; $5a71: $04
    ld e, l                                       ; $5a72: $5d
    daa                                           ; $5a73: $27
    inc b                                         ; $5a74: $04
    ld l, l                                       ; $5a75: $6d
    daa                                           ; $5a76: $27
    inc b                                         ; $5a77: $04
    ld a, l                                       ; $5a78: $7d
    daa                                           ; $5a79: $27
    inc b                                         ; $5a7a: $04
    adc e                                         ; $5a7b: $8b
    daa                                           ; $5a7c: $27
    inc b                                         ; $5a7d: $04
    and d                                         ; $5a7e: $a2
    daa                                           ; $5a7f: $27
    inc b                                         ; $5a80: $04
    cp b                                          ; $5a81: $b8
    daa                                           ; $5a82: $27
    inc b                                         ; $5a83: $04
    rst $08                                       ; $5a84: $cf
    daa                                           ; $5a85: $27
    inc b                                         ; $5a86: $04
    and $27                                       ; $5a87: $e6 $27
    inc b                                         ; $5a89: $04
    db $fc                                        ; $5a8a: $fc
    daa                                           ; $5a8b: $27
    inc b                                         ; $5a8c: $04
    inc de                                        ; $5a8d: $13
    jr z, jr_04d_5a94                             ; $5a8e: $28 $04

    ld a, [hl+]                                   ; $5a90: $2a
    jr z, jr_04d_5a97                             ; $5a91: $28 $04

    add hl, sp                                    ; $5a93: $39

jr_04d_5a94:
    jr z, jr_04d_5a9a                             ; $5a94: $28 $04

    ld d, e                                       ; $5a96: $53

jr_04d_5a97:
    jr z, jr_04d_5a9d                             ; $5a97: $28 $04

    ld h, e                                       ; $5a99: $63

jr_04d_5a9a:
    jr z, jr_04d_5aa0                             ; $5a9a: $28 $04

    ld [hl], b                                    ; $5a9c: $70

jr_04d_5a9d:
    jr z, jr_04d_5aa3                             ; $5a9d: $28 $04

    ld a, l                                       ; $5a9f: $7d

jr_04d_5aa0:
    jr z, jr_04d_5aa6                             ; $5aa0: $28 $04

    sub e                                         ; $5aa2: $93

jr_04d_5aa3:
    jr z, jr_04d_5aa9                             ; $5aa3: $28 $04

    xor e                                         ; $5aa5: $ab

jr_04d_5aa6:
    jr z, jr_04d_5aac                             ; $5aa6: $28 $04

    cp l                                          ; $5aa8: $bd

jr_04d_5aa9:
    jr z, jr_04d_5aaf                             ; $5aa9: $28 $04

    rst $10                                       ; $5aab: $d7

jr_04d_5aac:
    jr z, @+$06                                   ; $5aac: $28 $04

    db $eb                                        ; $5aae: $eb

jr_04d_5aaf:
    jr z, @+$06                                   ; $5aaf: $28 $04

    cp $28                                        ; $5ab1: $fe $28
    inc b                                         ; $5ab3: $04
    ld de, $0429                                  ; $5ab4: $11 $29 $04
    ld e, $29                                     ; $5ab7: $1e $29
    inc b                                         ; $5ab9: $04
    jr c, jr_04d_5ae5                             ; $5aba: $38 $29

    inc b                                         ; $5abc: $04
    ld b, [hl]                                    ; $5abd: $46
    add hl, hl                                    ; $5abe: $29
    inc b                                         ; $5abf: $04
    ld e, d                                       ; $5ac0: $5a
    add hl, hl                                    ; $5ac1: $29
    inc b                                         ; $5ac2: $04
    ld l, a                                       ; $5ac3: $6f
    add hl, hl                                    ; $5ac4: $29
    inc b                                         ; $5ac5: $04
    add b                                         ; $5ac6: $80
    add hl, hl                                    ; $5ac7: $29
    inc b                                         ; $5ac8: $04
    sub d                                         ; $5ac9: $92
    add hl, hl                                    ; $5aca: $29
    inc b                                         ; $5acb: $04
    and a                                         ; $5acc: $a7
    add hl, hl                                    ; $5acd: $29
    inc b                                         ; $5ace: $04
    cp l                                          ; $5acf: $bd
    add hl, hl                                    ; $5ad0: $29
    inc b                                         ; $5ad1: $04
    call z, Call_000_0429                         ; $5ad2: $cc $29 $04
    reti                                          ; $5ad5: $d9


    add hl, hl                                    ; $5ad6: $29
    inc b                                         ; $5ad7: $04
    and $29                                       ; $5ad8: $e6 $29
    inc b                                         ; $5ada: $04
    push af                                       ; $5adb: $f5
    add hl, hl                                    ; $5adc: $29
    inc b                                         ; $5add: $04
    inc b                                         ; $5ade: $04
    ld a, [hl+]                                   ; $5adf: $2a
    inc b                                         ; $5ae0: $04
    inc d                                         ; $5ae1: $14
    ld a, [hl+]                                   ; $5ae2: $2a
    inc b                                         ; $5ae3: $04
    dec h                                         ; $5ae4: $25

jr_04d_5ae5:
    ld a, [hl+]                                   ; $5ae5: $2a
    inc b                                         ; $5ae6: $04
    ld [hl-], a                                   ; $5ae7: $32
    ld a, [hl+]                                   ; $5ae8: $2a
    inc b                                         ; $5ae9: $04
    ld b, e                                       ; $5aea: $43
    ld a, [hl+]                                   ; $5aeb: $2a
    inc b                                         ; $5aec: $04
    ld d, e                                       ; $5aed: $53
    ld a, [hl+]                                   ; $5aee: $2a
    inc b                                         ; $5aef: $04
    ld h, e                                       ; $5af0: $63
    ld a, [hl+]                                   ; $5af1: $2a
    inc b                                         ; $5af2: $04
    ld [hl], e                                    ; $5af3: $73
    ld a, [hl+]                                   ; $5af4: $2a
    inc b                                         ; $5af5: $04
    add l                                         ; $5af6: $85
    ld a, [hl+]                                   ; $5af7: $2a
    inc b                                         ; $5af8: $04
    sbc c                                         ; $5af9: $99
    ld a, [hl+]                                   ; $5afa: $2a
    inc b                                         ; $5afb: $04
    and [hl]                                      ; $5afc: $a6
    ld a, [hl+]                                   ; $5afd: $2a
    inc b                                         ; $5afe: $04
    cp e                                          ; $5aff: $bb
    ld a, [hl+]                                   ; $5b00: $2a
    inc b                                         ; $5b01: $04
    rst $08                                       ; $5b02: $cf
    ld a, [hl+]                                   ; $5b03: $2a
    inc b                                         ; $5b04: $04
    sbc $2a                                       ; $5b05: $de $2a
    inc b                                         ; $5b07: $04
    push af                                       ; $5b08: $f5
    ld a, [hl+]                                   ; $5b09: $2a
    inc b                                         ; $5b0a: $04
    inc c                                         ; $5b0b: $0c
    dec hl                                        ; $5b0c: $2b
    inc b                                         ; $5b0d: $04
    jr jr_04d_5b3b                                ; $5b0e: $18 $2b

    inc b                                         ; $5b10: $04
    add hl, hl                                    ; $5b11: $29
    dec hl                                        ; $5b12: $2b
    inc b                                         ; $5b13: $04
    dec sp                                        ; $5b14: $3b
    dec hl                                        ; $5b15: $2b
    inc b                                         ; $5b16: $04
    ld c, e                                       ; $5b17: $4b
    dec hl                                        ; $5b18: $2b
    inc b                                         ; $5b19: $04
    ld h, c                                       ; $5b1a: $61
    dec hl                                        ; $5b1b: $2b
    inc b                                         ; $5b1c: $04
    ld l, [hl]                                    ; $5b1d: $6e
    dec hl                                        ; $5b1e: $2b
    inc b                                         ; $5b1f: $04
    jr nc, jr_04d_5b4e                            ; $5b20: $30 $2c

    inc b                                         ; $5b22: $04
    ld c, a                                       ; $5b23: $4f
    inc l                                         ; $5b24: $2c
    inc b                                         ; $5b25: $04
    ld e, h                                       ; $5b26: $5c
    inc l                                         ; $5b27: $2c
    inc b                                         ; $5b28: $04
    ld h, h                                       ; $5b29: $64
    inc l                                         ; $5b2a: $2c
    inc b                                         ; $5b2b: $04
    ld [hl], e                                    ; $5b2c: $73
    inc l                                         ; $5b2d: $2c
    inc b                                         ; $5b2e: $04
    ld a, [hl]                                    ; $5b2f: $7e
    inc l                                         ; $5b30: $2c
    inc b                                         ; $5b31: $04
    sub d                                         ; $5b32: $92
    inc l                                         ; $5b33: $2c
    inc b                                         ; $5b34: $04
    sbc l                                         ; $5b35: $9d
    inc l                                         ; $5b36: $2c
    inc b                                         ; $5b37: $04
    xor h                                         ; $5b38: $ac
    inc l                                         ; $5b39: $2c
    inc b                                         ; $5b3a: $04

jr_04d_5b3b:
    or e                                          ; $5b3b: $b3
    inc l                                         ; $5b3c: $2c
    inc b                                         ; $5b3d: $04
    cp d                                          ; $5b3e: $ba
    inc l                                         ; $5b3f: $2c
    inc b                                         ; $5b40: $04
    pop bc                                        ; $5b41: $c1
    inc l                                         ; $5b42: $2c
    inc b                                         ; $5b43: $04
    ret z                                         ; $5b44: $c8

    inc l                                         ; $5b45: $2c
    inc b                                         ; $5b46: $04
    rst $08                                       ; $5b47: $cf
    inc l                                         ; $5b48: $2c
    inc b                                         ; $5b49: $04
    reti                                          ; $5b4a: $d9


    inc l                                         ; $5b4b: $2c
    inc b                                         ; $5b4c: $04
    ld a, [c]                                     ; $5b4d: $f2

jr_04d_5b4e:
    inc l                                         ; $5b4e: $2c
    inc b                                         ; $5b4f: $04
    cp $2c                                        ; $5b50: $fe $2c
    inc b                                         ; $5b52: $04
    rlca                                          ; $5b53: $07
    dec l                                         ; $5b54: $2d
    inc b                                         ; $5b55: $04
    ld de, $042d                                  ; $5b56: $11 $2d $04
    ld a, [de]                                    ; $5b59: $1a
    dec l                                         ; $5b5a: $2d
    inc b                                         ; $5b5b: $04
    daa                                           ; $5b5c: $27
    dec l                                         ; $5b5d: $2d
    inc b                                         ; $5b5e: $04
    cpl                                           ; $5b5f: $2f
    dec l                                         ; $5b60: $2d
    inc b                                         ; $5b61: $04
    ld [hl], $2d                                  ; $5b62: $36 $2d
    inc b                                         ; $5b64: $04
    ld b, b                                       ; $5b65: $40
    dec l                                         ; $5b66: $2d
    inc b                                         ; $5b67: $04
    ld b, [hl]                                    ; $5b68: $46
    dec l                                         ; $5b69: $2d
    inc b                                         ; $5b6a: $04
    ld c, e                                       ; $5b6b: $4b
    dec l                                         ; $5b6c: $2d
    inc b                                         ; $5b6d: $04
    ld d, h                                       ; $5b6e: $54
    dec l                                         ; $5b6f: $2d
    inc b                                         ; $5b70: $04
    ld e, a                                       ; $5b71: $5f
    dec l                                         ; $5b72: $2d
    inc b                                         ; $5b73: $04
    ld l, c                                       ; $5b74: $69
    dec l                                         ; $5b75: $2d
    inc b                                         ; $5b76: $04
    ld [hl], l                                    ; $5b77: $75
    dec l                                         ; $5b78: $2d
    inc b                                         ; $5b79: $04
    ld a, a                                       ; $5b7a: $7f
    dec l                                         ; $5b7b: $2d
    inc b                                         ; $5b7c: $04
    adc d                                         ; $5b7d: $8a
    dec l                                         ; $5b7e: $2d
    inc b                                         ; $5b7f: $04
    adc a                                         ; $5b80: $8f
    dec l                                         ; $5b81: $2d
    inc b                                         ; $5b82: $04
    sub [hl]                                      ; $5b83: $96
    dec l                                         ; $5b84: $2d
    inc b                                         ; $5b85: $04
    and l                                         ; $5b86: $a5
    dec l                                         ; $5b87: $2d
    inc b                                         ; $5b88: $04
    xor h                                         ; $5b89: $ac
    dec l                                         ; $5b8a: $2d
    inc b                                         ; $5b8b: $04
    or c                                          ; $5b8c: $b1
    dec l                                         ; $5b8d: $2d
    inc b                                         ; $5b8e: $04
    or a                                          ; $5b8f: $b7
    dec l                                         ; $5b90: $2d
    inc b                                         ; $5b91: $04
    jp nz, Jump_000_042d                          ; $5b92: $c2 $2d $04

    pop de                                        ; $5b95: $d1
    dec l                                         ; $5b96: $2d
    inc b                                         ; $5b97: $04
    db $db                                        ; $5b98: $db
    dec l                                         ; $5b99: $2d
    inc b                                         ; $5b9a: $04
    push hl                                       ; $5b9b: $e5
    dec l                                         ; $5b9c: $2d
    inc b                                         ; $5b9d: $04
    pop af                                        ; $5b9e: $f1
    dec l                                         ; $5b9f: $2d
    inc b                                         ; $5ba0: $04
    ld [bc], a                                    ; $5ba1: $02
    ld l, $04                                     ; $5ba2: $2e $04
    add hl, bc                                    ; $5ba4: $09
    ld l, $04                                     ; $5ba5: $2e $04
    dec d                                         ; $5ba7: $15
    ld l, $04                                     ; $5ba8: $2e $04
    inc e                                         ; $5baa: $1c
    ld l, $04                                     ; $5bab: $2e $04
    jr nz, jr_04d_5bdd                            ; $5bad: $20 $2e

    inc b                                         ; $5baf: $04
    ld h, $2e                                     ; $5bb0: $26 $2e
    inc b                                         ; $5bb2: $04
    jr nc, jr_04d_5be3                            ; $5bb3: $30 $2e

    inc b                                         ; $5bb5: $04
    ld e, d                                       ; $5bb6: $5a
    ld l, $04                                     ; $5bb7: $2e $04
    ld h, l                                       ; $5bb9: $65
    ld l, $04                                     ; $5bba: $2e $04
    ld l, [hl]                                    ; $5bbc: $6e
    ld l, $04                                     ; $5bbd: $2e $04
    sub a                                         ; $5bbf: $97
    ld l, $04                                     ; $5bc0: $2e $04
    or d                                          ; $5bc2: $b2
    ld l, $04                                     ; $5bc3: $2e $04
    push bc                                       ; $5bc5: $c5
    ld l, $04                                     ; $5bc6: $2e $04
    ret c                                         ; $5bc8: $d8

    ld l, $04                                     ; $5bc9: $2e $04
    db $eb                                        ; $5bcb: $eb
    ld l, $04                                     ; $5bcc: $2e $04
    db $fd                                        ; $5bce: $fd
    ld l, $04                                     ; $5bcf: $2e $04
    dec d                                         ; $5bd1: $15
    cpl                                           ; $5bd2: $2f
    inc b                                         ; $5bd3: $04
    cpl                                           ; $5bd4: $2f
    cpl                                           ; $5bd5: $2f
    inc b                                         ; $5bd6: $04
    ld c, e                                       ; $5bd7: $4b
    cpl                                           ; $5bd8: $2f
    inc b                                         ; $5bd9: $04
    ld h, d                                       ; $5bda: $62
    cpl                                           ; $5bdb: $2f
    inc b                                         ; $5bdc: $04

jr_04d_5bdd:
    ld [hl], e                                    ; $5bdd: $73
    cpl                                           ; $5bde: $2f
    inc b                                         ; $5bdf: $04
    add b                                         ; $5be0: $80
    cpl                                           ; $5be1: $2f
    inc b                                         ; $5be2: $04

jr_04d_5be3:
    adc a                                         ; $5be3: $8f
    cpl                                           ; $5be4: $2f
    inc b                                         ; $5be5: $04
    xor a                                         ; $5be6: $af
    cpl                                           ; $5be7: $2f
    inc b                                         ; $5be8: $04
    ret nz                                        ; $5be9: $c0

    cpl                                           ; $5bea: $2f
    inc b                                         ; $5beb: $04
    ret c                                         ; $5bec: $d8

    cpl                                           ; $5bed: $2f
    inc b                                         ; $5bee: $04
    ld [c], a                                     ; $5bef: $e2
    cpl                                           ; $5bf0: $2f
    inc b                                         ; $5bf1: $04
    db $ec                                        ; $5bf2: $ec
    cpl                                           ; $5bf3: $2f
    inc b                                         ; $5bf4: $04
    ld hl, sp+$2f                                 ; $5bf5: $f8 $2f
    inc b                                         ; $5bf7: $04
    dec b                                         ; $5bf8: $05
    jr nc, jr_04d_5bff                            ; $5bf9: $30 $04

    db $10                                        ; $5bfb: $10
    jr nc, jr_04d_5c02                            ; $5bfc: $30 $04

    dec de                                        ; $5bfe: $1b

jr_04d_5bff:
    jr nc, jr_04d_5c05                            ; $5bff: $30 $04

    scf                                           ; $5c01: $37

jr_04d_5c02:
    jr nc, jr_04d_5c08                            ; $5c02: $30 $04

    ld c, l                                       ; $5c04: $4d

jr_04d_5c05:
    jr nc, jr_04d_5c0b                            ; $5c05: $30 $04

    ld [hl], c                                    ; $5c07: $71

jr_04d_5c08:
    jr nc, jr_04d_5c0e                            ; $5c08: $30 $04

    sub [hl]                                      ; $5c0a: $96

jr_04d_5c0b:
    jr nc, @+$06                                  ; $5c0b: $30 $04

    pop bc                                        ; $5c0d: $c1

jr_04d_5c0e:
    jr nc, jr_04d_5c14                            ; $5c0e: $30 $04

    jp nc, Jump_000_0430                          ; $5c10: $d2 $30 $04

    ld [c], a                                     ; $5c13: $e2

jr_04d_5c14:
    jr nc, jr_04d_5c1a                            ; $5c14: $30 $04

    ld a, [c]                                     ; $5c16: $f2
    jr nc, jr_04d_5c1d                            ; $5c17: $30 $04

    db $fd                                        ; $5c19: $fd

jr_04d_5c1a:
    jr nc, jr_04d_5c20                            ; $5c1a: $30 $04

    inc c                                         ; $5c1c: $0c

jr_04d_5c1d:
    ld sp, $1a04                                  ; $5c1d: $31 $04 $1a

jr_04d_5c20:
    ld sp, $2704                                  ; $5c20: $31 $04 $27
    ld sp, $3704                                  ; $5c23: $31 $04 $37
    ld sp, $6204                                  ; $5c26: $31 $04 $62
    ld sp, $8704                                  ; $5c29: $31 $04 $87
    ld sp, $af04                                  ; $5c2c: $31 $04 $af
    ld sp, $d804                                  ; $5c2f: $31 $04 $d8
    ld sp, $0304                                  ; $5c32: $31 $04 $03
    ld [hl-], a                                   ; $5c35: $32
    inc b                                         ; $5c36: $04
    dec sp                                        ; $5c37: $3b
    ld [hl-], a                                   ; $5c38: $32
    inc b                                         ; $5c39: $04
    ld l, h                                       ; $5c3a: $6c
    ld [hl-], a                                   ; $5c3b: $32
    inc b                                         ; $5c3c: $04
    sbc h                                         ; $5c3d: $9c
    ld [hl-], a                                   ; $5c3e: $32
    inc b                                         ; $5c3f: $04
    jp nc, $0432                                  ; $5c40: $d2 $32 $04

    jr z, jr_04d_5c78                             ; $5c43: $28 $33

    inc b                                         ; $5c45: $04
    ld l, d                                       ; $5c46: $6a
    inc sp                                        ; $5c47: $33
    inc b                                         ; $5c48: $04
    sbc d                                         ; $5c49: $9a
    inc sp                                        ; $5c4a: $33
    inc b                                         ; $5c4b: $04
    swap e                                        ; $5c4c: $cb $33
    inc b                                         ; $5c4e: $04
    sbc b                                         ; $5c4f: $98
    inc [hl]                                      ; $5c50: $34
    inc b                                         ; $5c51: $04
    and e                                         ; $5c52: $a3
    inc [hl]                                      ; $5c53: $34
    inc b                                         ; $5c54: $04
    xor e                                         ; $5c55: $ab
    inc [hl]                                      ; $5c56: $34
    inc b                                         ; $5c57: $04
    or d                                          ; $5c58: $b2
    inc [hl]                                      ; $5c59: $34
    inc b                                         ; $5c5a: $04
    cp d                                          ; $5c5b: $ba
    inc [hl]                                      ; $5c5c: $34
    inc b                                         ; $5c5d: $04
    pop bc                                        ; $5c5e: $c1
    inc [hl]                                      ; $5c5f: $34
    inc b                                         ; $5c60: $04
    jp z, $0434                                   ; $5c61: $ca $34 $04

    call nc, $0434                                ; $5c64: $d4 $34 $04
    rst $18                                       ; $5c67: $df
    inc [hl]                                      ; $5c68: $34
    inc b                                         ; $5c69: $04
    ld [$0434], a                                 ; $5c6a: $ea $34 $04
    ldh a, [$34]                                  ; $5c6d: $f0 $34
    inc b                                         ; $5c6f: $04
    ei                                            ; $5c70: $fb
    inc [hl]                                      ; $5c71: $34
    inc b                                         ; $5c72: $04
    nop                                           ; $5c73: $00
    dec [hl]                                      ; $5c74: $35
    inc b                                         ; $5c75: $04
    dec b                                         ; $5c76: $05
    dec [hl]                                      ; $5c77: $35

jr_04d_5c78:
    inc b                                         ; $5c78: $04
    ld a, [bc]                                    ; $5c79: $0a
    dec [hl]                                      ; $5c7a: $35
    inc b                                         ; $5c7b: $04
    rrca                                          ; $5c7c: $0f
    dec [hl]                                      ; $5c7d: $35
    inc b                                         ; $5c7e: $04
    rla                                           ; $5c7f: $17
    dec [hl]                                      ; $5c80: $35
    inc b                                         ; $5c81: $04
    dec de                                        ; $5c82: $1b
    dec [hl]                                      ; $5c83: $35
    inc b                                         ; $5c84: $04
    dec h                                         ; $5c85: $25
    dec [hl]                                      ; $5c86: $35
    inc b                                         ; $5c87: $04
    dec l                                         ; $5c88: $2d
    dec [hl]                                      ; $5c89: $35
    inc b                                         ; $5c8a: $04
    ld [hl], $35                                  ; $5c8b: $36 $35
    inc b                                         ; $5c8d: $04
    ld a, [hl-]                                   ; $5c8e: $3a
    dec [hl]                                      ; $5c8f: $35
    inc b                                         ; $5c90: $04
    ld b, c                                       ; $5c91: $41
    dec [hl]                                      ; $5c92: $35
    inc b                                         ; $5c93: $04
    ld b, a                                       ; $5c94: $47
    dec [hl]                                      ; $5c95: $35
    inc b                                         ; $5c96: $04
    ld c, [hl]                                    ; $5c97: $4e
    dec [hl]                                      ; $5c98: $35
    inc b                                         ; $5c99: $04
    ld d, d                                       ; $5c9a: $52
    dec [hl]                                      ; $5c9b: $35
    inc b                                         ; $5c9c: $04
    ld d, [hl]                                    ; $5c9d: $56
    dec [hl]                                      ; $5c9e: $35
    inc b                                         ; $5c9f: $04
    ld e, l                                       ; $5ca0: $5d
    dec [hl]                                      ; $5ca1: $35
    inc b                                         ; $5ca2: $04
    ld h, a                                       ; $5ca3: $67
    dec [hl]                                      ; $5ca4: $35
    inc b                                         ; $5ca5: $04
    ld l, a                                       ; $5ca6: $6f
    dec [hl]                                      ; $5ca7: $35
    inc b                                         ; $5ca8: $04
    ld a, c                                       ; $5ca9: $79
    dec [hl]                                      ; $5caa: $35
    inc b                                         ; $5cab: $04
    add c                                         ; $5cac: $81
    dec [hl]                                      ; $5cad: $35
    inc b                                         ; $5cae: $04
    adc c                                         ; $5caf: $89
    dec [hl]                                      ; $5cb0: $35
    inc b                                         ; $5cb1: $04
    sub d                                         ; $5cb2: $92
    dec [hl]                                      ; $5cb3: $35
    inc b                                         ; $5cb4: $04
    sbc d                                         ; $5cb5: $9a
    dec [hl]                                      ; $5cb6: $35
    inc b                                         ; $5cb7: $04
    and h                                         ; $5cb8: $a4
    dec [hl]                                      ; $5cb9: $35
    inc b                                         ; $5cba: $04
    xor h                                         ; $5cbb: $ac
    dec [hl]                                      ; $5cbc: $35
    inc b                                         ; $5cbd: $04
    cp c                                          ; $5cbe: $b9
    dec [hl]                                      ; $5cbf: $35
    inc b                                         ; $5cc0: $04
    push bc                                       ; $5cc1: $c5
    dec [hl]                                      ; $5cc2: $35
    inc b                                         ; $5cc3: $04
    call Call_000_0435                            ; $5cc4: $cd $35 $04
    sub $35                                       ; $5cc7: $d6 $35
    inc b                                         ; $5cc9: $04
    rst $18                                       ; $5cca: $df
    dec [hl]                                      ; $5ccb: $35
    inc b                                         ; $5ccc: $04
    and $35                                       ; $5ccd: $e6 $35
    inc b                                         ; $5ccf: $04
    db $ed                                        ; $5cd0: $ed
    dec [hl]                                      ; $5cd1: $35
    inc b                                         ; $5cd2: $04
    or $35                                        ; $5cd3: $f6 $35
    inc b                                         ; $5cd5: $04
    nop                                           ; $5cd6: $00
    ld [hl], $04                                  ; $5cd7: $36 $04
    inc c                                         ; $5cd9: $0c
    ld [hl], $04                                  ; $5cda: $36 $04
    inc de                                        ; $5cdc: $13
    ld [hl], $04                                  ; $5cdd: $36 $04
    jr @+$38                                      ; $5cdf: $18 $36

    inc b                                         ; $5ce1: $04
    inc hl                                        ; $5ce2: $23
    ld [hl], $04                                  ; $5ce3: $36 $04
    dec l                                         ; $5ce5: $2d
    ld [hl], $04                                  ; $5ce6: $36 $04
    dec sp                                        ; $5ce8: $3b
    ld [hl], $04                                  ; $5ce9: $36 $04
    ld d, b                                       ; $5ceb: $50
    ld [hl], $04                                  ; $5cec: $36 $04
    ld l, c                                       ; $5cee: $69
    ld [hl], $04                                  ; $5cef: $36 $04
    xor l                                         ; $5cf1: $ad
    ld [hl], $04                                  ; $5cf2: $36 $04
    db $dd                                        ; $5cf4: $dd
    ld [hl], $04                                  ; $5cf5: $36 $04
    ld b, $37                                     ; $5cf7: $06 $37
    inc b                                         ; $5cf9: $04
    ld l, $37                                     ; $5cfa: $2e $37
    inc b                                         ; $5cfc: $04
    ld l, b                                       ; $5cfd: $68
    scf                                           ; $5cfe: $37
    inc b                                         ; $5cff: $04
    ld a, l                                       ; $5d00: $7d
    scf                                           ; $5d01: $37
    inc b                                         ; $5d02: $04
    and a                                         ; $5d03: $a7
    scf                                           ; $5d04: $37
    inc b                                         ; $5d05: $04
    call Call_000_0437                            ; $5d06: $cd $37 $04
    xor $37                                       ; $5d09: $ee $37
    inc b                                         ; $5d0b: $04
    ld [$0438], sp                                ; $5d0c: $08 $38 $04
    inc [hl]                                      ; $5d0f: $34
    jr c, jr_04d_5d16                             ; $5d10: $38 $04

    ld h, h                                       ; $5d12: $64
    jr c, jr_04d_5d19                             ; $5d13: $38 $04

    sub h                                         ; $5d15: $94

jr_04d_5d16:
    jr c, @+$06                                   ; $5d16: $38 $04

    cp a                                          ; $5d18: $bf

jr_04d_5d19:
    jr c, @+$06                                   ; $5d19: $38 $04

    xor $38                                       ; $5d1b: $ee $38
    inc b                                         ; $5d1d: $04
    ld d, $39                                     ; $5d1e: $16 $39
    inc b                                         ; $5d20: $04
    ld b, e                                       ; $5d21: $43
    add hl, sp                                    ; $5d22: $39
    inc b                                         ; $5d23: $04
    ld h, a                                       ; $5d24: $67
    add hl, sp                                    ; $5d25: $39
    inc b                                         ; $5d26: $04
    adc a                                         ; $5d27: $8f
    add hl, sp                                    ; $5d28: $39
    inc b                                         ; $5d29: $04
    cp [hl]                                       ; $5d2a: $be
    add hl, sp                                    ; $5d2b: $39
    inc b                                         ; $5d2c: $04
    ld [c], a                                     ; $5d2d: $e2
    add hl, sp                                    ; $5d2e: $39
    inc b                                         ; $5d2f: $04
    dec de                                        ; $5d30: $1b
    ld a, [hl-]                                   ; $5d31: $3a
    inc b                                         ; $5d32: $04
    ld a, [hl-]                                   ; $5d33: $3a
    ld a, [hl-]                                   ; $5d34: $3a
    inc b                                         ; $5d35: $04
    ld e, [hl]                                    ; $5d36: $5e
    ld a, [hl-]                                   ; $5d37: $3a
    inc b                                         ; $5d38: $04
    add c                                         ; $5d39: $81
    ld a, [hl-]                                   ; $5d3a: $3a
    inc b                                         ; $5d3b: $04
    and d                                         ; $5d3c: $a2
    ld a, [hl-]                                   ; $5d3d: $3a
    inc b                                         ; $5d3e: $04
    cp h                                          ; $5d3f: $bc
    ld a, [hl-]                                   ; $5d40: $3a
    inc b                                         ; $5d41: $04
    jp hl                                         ; $5d42: $e9


    ld a, [hl-]                                   ; $5d43: $3a
    inc b                                         ; $5d44: $04
    inc de                                        ; $5d45: $13
    dec sp                                        ; $5d46: $3b
    inc b                                         ; $5d47: $04
    ld c, l                                       ; $5d48: $4d
    dec sp                                        ; $5d49: $3b
    inc b                                         ; $5d4a: $04
    add c                                         ; $5d4b: $81
    dec sp                                        ; $5d4c: $3b
    inc b                                         ; $5d4d: $04
    or [hl]                                       ; $5d4e: $b6
    dec sp                                        ; $5d4f: $3b
    inc b                                         ; $5d50: $04
    call $043b                                    ; $5d51: $cd $3b $04
    dec b                                         ; $5d54: $05
    inc a                                         ; $5d55: $3c
    inc b                                         ; $5d56: $04
    add hl, hl                                    ; $5d57: $29
    inc a                                         ; $5d58: $3c
    inc b                                         ; $5d59: $04
    ld b, b                                       ; $5d5a: $40
    inc a                                         ; $5d5b: $3c
    inc b                                         ; $5d5c: $04
    ld a, e                                       ; $5d5d: $7b
    inc a                                         ; $5d5e: $3c
    inc b                                         ; $5d5f: $04
    and c                                         ; $5d60: $a1
    inc a                                         ; $5d61: $3c
    inc b                                         ; $5d62: $04
    rst $08                                       ; $5d63: $cf
    inc a                                         ; $5d64: $3c
    inc b                                         ; $5d65: $04
    inc bc                                        ; $5d66: $03
    dec a                                         ; $5d67: $3d
    inc b                                         ; $5d68: $04
    scf                                           ; $5d69: $37
    dec a                                         ; $5d6a: $3d
    inc b                                         ; $5d6b: $04
    ld e, c                                       ; $5d6c: $59
    dec a                                         ; $5d6d: $3d
    inc b                                         ; $5d6e: $04
    adc c                                         ; $5d6f: $89
    dec a                                         ; $5d70: $3d

Call_04d_5d71:
    inc b                                         ; $5d71: $04
    or d                                          ; $5d72: $b2
    dec a                                         ; $5d73: $3d
    inc b                                         ; $5d74: $04
    ld [c], a                                     ; $5d75: $e2
    dec a                                         ; $5d76: $3d
    inc b                                         ; $5d77: $04
    ld [de], a                                    ; $5d78: $12
    ld a, $04                                     ; $5d79: $3e $04
    ld c, l                                       ; $5d7b: $4d
    ld a, $04                                     ; $5d7c: $3e $04
    ld l, a                                       ; $5d7e: $6f
    ld a, $04                                     ; $5d7f: $3e $04
    or b                                          ; $5d81: $b0
    ld a, $05                                     ; $5d82: $3e $05
    ld bc, $0500                                  ; $5d84: $01 $00 $05
    halt                                          ; $5d87: $76
    nop                                           ; $5d88: $00
    dec b                                         ; $5d89: $05
    rst $28                                       ; $5d8a: $ef
    nop                                           ; $5d8b: $00
    dec b                                         ; $5d8c: $05
    ld a, d                                       ; $5d8d: $7a
    ld bc, $cf05                                  ; $5d8e: $01 $05 $cf
    ld bc, $c405                                  ; $5d91: $01 $05 $c4
    ld [bc], a                                    ; $5d94: $02
    dec b                                         ; $5d95: $05
    ld c, b                                       ; $5d96: $48
    inc bc                                        ; $5d97: $03
    dec b                                         ; $5d98: $05
    ld a, b                                       ; $5d99: $78
    inc b                                         ; $5d9a: $04
    dec b                                         ; $5d9b: $05
    db $fc                                        ; $5d9c: $fc
    inc b                                         ; $5d9d: $04
    dec b                                         ; $5d9e: $05
    jr nc, jr_04d_5da6                            ; $5d9f: $30 $05

    dec b                                         ; $5da1: $05
    sub b                                         ; $5da2: $90
    dec b                                         ; $5da3: $05
    dec b                                         ; $5da4: $05
    cp b                                          ; $5da5: $b8

jr_04d_5da6:
    dec b                                         ; $5da6: $05
    dec b                                         ; $5da7: $05
    db $eb                                        ; $5da8: $eb
    dec b                                         ; $5da9: $05
    dec b                                         ; $5daa: $05
    rrca                                          ; $5dab: $0f
    ld b, $05                                     ; $5dac: $06 $05
    ld b, d                                       ; $5dae: $42
    ld b, $05                                     ; $5daf: $06 $05
    ld h, c                                       ; $5db1: $61
    ld b, $05                                     ; $5db2: $06 $05
    add h                                         ; $5db4: $84
    ld b, $05                                     ; $5db5: $06 $05
    xor c                                         ; $5db7: $a9
    ld b, $05                                     ; $5db8: $06 $05
    adc $06                                       ; $5dba: $ce $06
    dec b                                         ; $5dbc: $05
    add sp, $06                                   ; $5dbd: $e8 $06
    dec b                                         ; $5dbf: $05
    dec c                                         ; $5dc0: $0d
    rlca                                          ; $5dc1: $07
    dec b                                         ; $5dc2: $05
    ld [hl+], a                                   ; $5dc3: $22
    rlca                                          ; $5dc4: $07
    dec b                                         ; $5dc5: $05
    add hl, sp                                    ; $5dc6: $39
    rlca                                          ; $5dc7: $07
    dec b                                         ; $5dc8: $05
    ld e, d                                       ; $5dc9: $5a
    rlca                                          ; $5dca: $07
    dec b                                         ; $5dcb: $05
    add e                                         ; $5dcc: $83
    rlca                                          ; $5dcd: $07
    dec b                                         ; $5dce: $05
    jp $0507                                      ; $5dcf: $c3 $07 $05


    ldh [rTAC], a                                 ; $5dd2: $e0 $07
    dec b                                         ; $5dd4: $05
    dec bc                                        ; $5dd5: $0b
    ld [$3205], sp                                ; $5dd6: $08 $05 $32
    ld [$6905], sp                                ; $5dd9: $08 $05 $69
    ld [$9305], sp                                ; $5ddc: $08 $05 $93
    ld [$ad05], sp                                ; $5ddf: $08 $05 $ad
    ld [$dd05], sp                                ; $5de2: $08 $05 $dd
    ld [$fb05], sp                                ; $5de5: $08 $05 $fb
    ld [$2705], sp                                ; $5de8: $08 $05 $27
    add hl, bc                                    ; $5deb: $09
    dec b                                         ; $5dec: $05
    ld d, [hl]                                    ; $5ded: $56
    add hl, bc                                    ; $5dee: $09
    dec b                                         ; $5def: $05
    ld [hl], h                                    ; $5df0: $74
    add hl, bc                                    ; $5df1: $09
    dec b                                         ; $5df2: $05
    and h                                         ; $5df3: $a4
    add hl, bc                                    ; $5df4: $09
    dec b                                         ; $5df5: $05
    ret nc                                        ; $5df6: $d0

    add hl, bc                                    ; $5df7: $09
    dec b                                         ; $5df8: $05
    di                                            ; $5df9: $f3
    add hl, bc                                    ; $5dfa: $09
    dec b                                         ; $5dfb: $05
    ld h, $0a                                     ; $5dfc: $26 $0a
    dec b                                         ; $5dfe: $05
    ld d, l                                       ; $5dff: $55
    ld a, [bc]                                    ; $5e00: $0a
    dec b                                         ; $5e01: $05
    add d                                         ; $5e02: $82
    ld a, [bc]                                    ; $5e03: $0a
    dec b                                         ; $5e04: $05
    and e                                         ; $5e05: $a3
    ld a, [bc]                                    ; $5e06: $0a
    dec b                                         ; $5e07: $05
    add $0a                                       ; $5e08: $c6 $0a
    dec b                                         ; $5e0a: $05
    rst $08                                       ; $5e0b: $cf
    ld a, [bc]                                    ; $5e0c: $0a
    dec b                                         ; $5e0d: $05
    inc bc                                        ; $5e0e: $03
    dec bc                                        ; $5e0f: $0b
    dec b                                         ; $5e10: $05
    ld h, $0b                                     ; $5e11: $26 $0b
    dec b                                         ; $5e13: $05
    ccf                                           ; $5e14: $3f
    dec bc                                        ; $5e15: $0b
    dec b                                         ; $5e16: $05
    ld h, h                                       ; $5e17: $64
    dec bc                                        ; $5e18: $0b
    dec b                                         ; $5e19: $05
    sub a                                         ; $5e1a: $97
    dec bc                                        ; $5e1b: $0b
    dec b                                         ; $5e1c: $05
    xor a                                         ; $5e1d: $af
    dec bc                                        ; $5e1e: $0b
    dec b                                         ; $5e1f: $05
    push de                                       ; $5e20: $d5
    dec bc                                        ; $5e21: $0b
    dec b                                         ; $5e22: $05
    add sp, $0b                                   ; $5e23: $e8 $0b
    dec b                                         ; $5e25: $05
    ld a, [hl-]                                   ; $5e26: $3a
    inc c                                         ; $5e27: $0c
    dec b                                         ; $5e28: $05
    ld e, e                                       ; $5e29: $5b
    inc c                                         ; $5e2a: $0c
    dec b                                         ; $5e2b: $05
    sub b                                         ; $5e2c: $90
    inc c                                         ; $5e2d: $0c
    dec b                                         ; $5e2e: $05
    cp [hl]                                       ; $5e2f: $be
    inc c                                         ; $5e30: $0c
    dec b                                         ; $5e31: $05
    rst $20                                       ; $5e32: $e7
    inc c                                         ; $5e33: $0c
    dec b                                         ; $5e34: $05
    ld d, $0d                                     ; $5e35: $16 $0d
    dec b                                         ; $5e37: $05
    ld a, [hl-]                                   ; $5e38: $3a
    dec c                                         ; $5e39: $0d
    dec b                                         ; $5e3a: $05
    ld l, d                                       ; $5e3b: $6a
    dec c                                         ; $5e3c: $0d
    dec b                                         ; $5e3d: $05
    adc b                                         ; $5e3e: $88
    dec c                                         ; $5e3f: $0d
    dec b                                         ; $5e40: $05
    or h                                          ; $5e41: $b4
    dec c                                         ; $5e42: $0d
    dec b                                         ; $5e43: $05
    push de                                       ; $5e44: $d5
    dec c                                         ; $5e45: $0d
    dec b                                         ; $5e46: $05
    ld [bc], a                                    ; $5e47: $02
    ld c, $05                                     ; $5e48: $0e $05
    dec h                                         ; $5e4a: $25
    ld c, $05                                     ; $5e4b: $0e $05
    ld l, b                                       ; $5e4d: $68
    ld c, $05                                     ; $5e4e: $0e $05
    sbc e                                         ; $5e50: $9b
    ld c, $05                                     ; $5e51: $0e $05
    ret z                                         ; $5e53: $c8

    ld c, $05                                     ; $5e54: $0e $05
    ld bc, $050f                                  ; $5e56: $01 $0f $05
    inc de                                        ; $5e59: $13
    rrca                                          ; $5e5a: $0f
    dec b                                         ; $5e5b: $05
    inc d                                         ; $5e5c: $14
    rrca                                          ; $5e5d: $0f
    dec b                                         ; $5e5e: $05
    ld hl, $050f                                  ; $5e5f: $21 $0f $05
    dec hl                                        ; $5e62: $2b
    rrca                                          ; $5e63: $0f
    dec b                                         ; $5e64: $05
    inc l                                         ; $5e65: $2c
    rrca                                          ; $5e66: $0f
    dec b                                         ; $5e67: $05
    add hl, sp                                    ; $5e68: $39
    rrca                                          ; $5e69: $0f
    dec b                                         ; $5e6a: $05
    ld b, e                                       ; $5e6b: $43
    rrca                                          ; $5e6c: $0f
    dec b                                         ; $5e6d: $05
    ld b, h                                       ; $5e6e: $44
    rrca                                          ; $5e6f: $0f
    dec b                                         ; $5e70: $05
    ld c, [hl]                                    ; $5e71: $4e
    rrca                                          ; $5e72: $0f
    dec b                                         ; $5e73: $05
    ld e, b                                       ; $5e74: $58
    rrca                                          ; $5e75: $0f
    dec b                                         ; $5e76: $05
    ld e, c                                       ; $5e77: $59
    rrca                                          ; $5e78: $0f
    dec b                                         ; $5e79: $05
    ld h, c                                       ; $5e7a: $61
    rrca                                          ; $5e7b: $0f
    dec b                                         ; $5e7c: $05
    ld l, d                                       ; $5e7d: $6a
    rrca                                          ; $5e7e: $0f
    dec b                                         ; $5e7f: $05
    ld [hl], e                                    ; $5e80: $73
    rrca                                          ; $5e81: $0f
    dec b                                         ; $5e82: $05
    ld a, [hl]                                    ; $5e83: $7e
    rrca                                          ; $5e84: $0f
    dec b                                         ; $5e85: $05
    adc b                                         ; $5e86: $88
    rrca                                          ; $5e87: $0f
    dec b                                         ; $5e88: $05
    adc c                                         ; $5e89: $89
    rrca                                          ; $5e8a: $0f
    dec b                                         ; $5e8b: $05
    sub [hl]                                      ; $5e8c: $96
    rrca                                          ; $5e8d: $0f

Call_04d_5e8e:
Jump_04d_5e8e:
    dec b                                         ; $5e8e: $05
    sbc a                                         ; $5e8f: $9f
    rrca                                          ; $5e90: $0f
    dec b                                         ; $5e91: $05
    and a                                         ; $5e92: $a7
    rrca                                          ; $5e93: $0f
    dec b                                         ; $5e94: $05
    or c                                          ; $5e95: $b1
    rrca                                          ; $5e96: $0f
    dec b                                         ; $5e97: $05
    or d                                          ; $5e98: $b2
    rrca                                          ; $5e99: $0f
    dec b                                         ; $5e9a: $05
    pop bc                                        ; $5e9b: $c1
    rrca                                          ; $5e9c: $0f
    dec b                                         ; $5e9d: $05
    rrc a                                         ; $5e9e: $cb $0f
    dec b                                         ; $5ea0: $05
    call z, Call_000_050f                         ; $5ea1: $cc $0f $05
    push de                                       ; $5ea4: $d5
    rrca                                          ; $5ea5: $0f
    dec b                                         ; $5ea6: $05
    db $dd                                        ; $5ea7: $dd
    rrca                                          ; $5ea8: $0f
    dec b                                         ; $5ea9: $05
    sbc $0f                                       ; $5eaa: $de $0f
    dec b                                         ; $5eac: $05
    db $ed                                        ; $5ead: $ed
    rrca                                          ; $5eae: $0f
    dec b                                         ; $5eaf: $05
    db $f4                                        ; $5eb0: $f4
    rrca                                          ; $5eb1: $0f
    dec b                                         ; $5eb2: $05
    db $fc                                        ; $5eb3: $fc
    rrca                                          ; $5eb4: $0f
    dec b                                         ; $5eb5: $05
    inc bc                                        ; $5eb6: $03
    db $10                                        ; $5eb7: $10
    dec b                                         ; $5eb8: $05
    inc b                                         ; $5eb9: $04
    db $10                                        ; $5eba: $10
    dec b                                         ; $5ebb: $05
    add hl, bc                                    ; $5ebc: $09
    db $10                                        ; $5ebd: $10
    dec b                                         ; $5ebe: $05
    inc de                                        ; $5ebf: $13
    db $10                                        ; $5ec0: $10
    dec b                                         ; $5ec1: $05
    dec e                                         ; $5ec2: $1d
    db $10                                        ; $5ec3: $10
    dec b                                         ; $5ec4: $05
    daa                                           ; $5ec5: $27
    db $10                                        ; $5ec6: $10
    dec b                                         ; $5ec7: $05
    cpl                                           ; $5ec8: $2f
    db $10                                        ; $5ec9: $10
    dec b                                         ; $5eca: $05
    jr nc, jr_04d_5edd                            ; $5ecb: $30 $10

    dec b                                         ; $5ecd: $05
    ld sp, $0510                                  ; $5ece: $31 $10 $05
    ld b, a                                       ; $5ed1: $47
    db $10                                        ; $5ed2: $10
    dec b                                         ; $5ed3: $05
    ld c, b                                       ; $5ed4: $48
    db $10                                        ; $5ed5: $10
    dec b                                         ; $5ed6: $05
    ld d, a                                       ; $5ed7: $57
    db $10                                        ; $5ed8: $10
    dec b                                         ; $5ed9: $05
    ld h, b                                       ; $5eda: $60
    db $10                                        ; $5edb: $10
    dec b                                         ; $5edc: $05

jr_04d_5edd:
    ld l, b                                       ; $5edd: $68
    db $10                                        ; $5ede: $10
    dec b                                         ; $5edf: $05
    ld l, c                                       ; $5ee0: $69
    db $10                                        ; $5ee1: $10
    dec b                                         ; $5ee2: $05
    ld [hl], b                                    ; $5ee3: $70
    db $10                                        ; $5ee4: $10
    dec b                                         ; $5ee5: $05
    ld a, c                                       ; $5ee6: $79
    db $10                                        ; $5ee7: $10
    dec b                                         ; $5ee8: $05
    ld a, d                                       ; $5ee9: $7a
    db $10                                        ; $5eea: $10
    dec b                                         ; $5eeb: $05
    add l                                         ; $5eec: $85
    db $10                                        ; $5eed: $10
    dec b                                         ; $5eee: $05
    adc [hl]                                      ; $5eef: $8e
    db $10                                        ; $5ef0: $10
    dec b                                         ; $5ef1: $05
    adc a                                         ; $5ef2: $8f
    db $10                                        ; $5ef3: $10
    dec b                                         ; $5ef4: $05
    and e                                         ; $5ef5: $a3
    db $10                                        ; $5ef6: $10
    dec b                                         ; $5ef7: $05
    xor a                                         ; $5ef8: $af
    db $10                                        ; $5ef9: $10
    dec b                                         ; $5efa: $05
    cp c                                          ; $5efb: $b9
    db $10                                        ; $5efc: $10
    dec b                                         ; $5efd: $05
    ret nz                                        ; $5efe: $c0

    db $10                                        ; $5eff: $10
    dec b                                         ; $5f00: $05
    ret z                                         ; $5f01: $c8

    db $10                                        ; $5f02: $10
    dec b                                         ; $5f03: $05
    jp nc, Jump_000_0510                          ; $5f04: $d2 $10 $05

    db $db                                        ; $5f07: $db
    db $10                                        ; $5f08: $10
    dec b                                         ; $5f09: $05
    call c, Call_000_0510                         ; $5f0a: $dc $10 $05
    db $dd                                        ; $5f0d: $dd
    db $10                                        ; $5f0e: $10
    dec b                                         ; $5f0f: $05
    sbc $10                                       ; $5f10: $de $10
    dec b                                         ; $5f12: $05
    rst $28                                       ; $5f13: $ef
    db $10                                        ; $5f14: $10
    dec b                                         ; $5f15: $05
    ldh a, [rNR10]                                ; $5f16: $f0 $10
    dec b                                         ; $5f18: $05
    db $fc                                        ; $5f19: $fc
    db $10                                        ; $5f1a: $10
    dec b                                         ; $5f1b: $05
    inc b                                         ; $5f1c: $04
    ld de, $0e05                                  ; $5f1d: $11 $05 $0e
    ld de, $1605                                  ; $5f20: $11 $05 $16
    ld de, $2005                                  ; $5f23: $11 $05 $20
    ld de, $2b05                                  ; $5f26: $11 $05 $2b
    ld de, $3405                                  ; $5f29: $11 $05 $34
    ld de, $3c05                                  ; $5f2c: $11 $05 $3c
    ld de, $3d05                                  ; $5f2f: $11 $05 $3d
    ld de, $4a05                                  ; $5f32: $11 $05 $4a
    ld de, $5105                                  ; $5f35: $11 $05 $51
    ld de, $5205                                  ; $5f38: $11 $05 $52
    ld de, $5c05                                  ; $5f3b: $11 $05 $5c
    ld de, $6305                                  ; $5f3e: $11 $05 $63
    ld de, $6405                                  ; $5f41: $11 $05 $64
    ld de, $6c05                                  ; $5f44: $11 $05 $6c
    ld de, $7505                                  ; $5f47: $11 $05 $75
    ld de, $7d05                                  ; $5f4a: $11 $05 $7d
    ld de, $8605                                  ; $5f4d: $11 $05 $86
    ld de, $8f05                                  ; $5f50: $11 $05 $8f
    ld de, $9005                                  ; $5f53: $11 $05 $90
    ld de, $9a05                                  ; $5f56: $11 $05 $9a
    ld de, $a305                                  ; $5f59: $11 $05 $a3
    ld de, $ad05                                  ; $5f5c: $11 $05 $ad
    ld de, $b405                                  ; $5f5f: $11 $05 $b4
    ld de, $be05                                  ; $5f62: $11 $05 $be
    ld de, $c605                                  ; $5f65: $11 $05 $c6
    ld de, $cf05                                  ; $5f68: $11 $05 $cf
    ld de, $d905                                  ; $5f6b: $11 $05 $d9
    ld de, $e605                                  ; $5f6e: $11 $05 $e6
    ld de, $ef05                                  ; $5f71: $11 $05 $ef
    ld de, $f805                                  ; $5f74: $11 $05 $f8
    ld de, $f905                                  ; $5f77: $11 $05 $f9
    ld de, $0205                                  ; $5f7a: $11 $05 $02
    ld [de], a                                    ; $5f7d: $12
    dec b                                         ; $5f7e: $05
    add hl, bc                                    ; $5f7f: $09
    ld [de], a                                    ; $5f80: $12
    dec b                                         ; $5f81: $05
    inc de                                        ; $5f82: $13
    ld [de], a                                    ; $5f83: $12
    dec b                                         ; $5f84: $05
    inc e                                         ; $5f85: $1c
    ld [de], a                                    ; $5f86: $12
    dec b                                         ; $5f87: $05
    inc h                                         ; $5f88: $24
    ld [de], a                                    ; $5f89: $12
    dec b                                         ; $5f8a: $05
    dec h                                         ; $5f8b: $25
    ld [de], a                                    ; $5f8c: $12
    dec b                                         ; $5f8d: $05
    dec a                                         ; $5f8e: $3d
    ld [de], a                                    ; $5f8f: $12

Call_04d_5f90:
    dec b                                         ; $5f90: $05
    ld c, b                                       ; $5f91: $48
    ld [de], a                                    ; $5f92: $12
    dec b                                         ; $5f93: $05
    ld d, d                                       ; $5f94: $52
    ld [de], a                                    ; $5f95: $12
    dec b                                         ; $5f96: $05
    ld e, e                                       ; $5f97: $5b
    ld [de], a                                    ; $5f98: $12
    dec b                                         ; $5f99: $05
    ld h, e                                       ; $5f9a: $63
    ld [de], a                                    ; $5f9b: $12
    dec b                                         ; $5f9c: $05
    ld l, e                                       ; $5f9d: $6b
    ld [de], a                                    ; $5f9e: $12
    dec b                                         ; $5f9f: $05
    ld [hl], d                                    ; $5fa0: $72
    ld [de], a                                    ; $5fa1: $12
    dec b                                         ; $5fa2: $05
    ld a, h                                       ; $5fa3: $7c
    ld [de], a                                    ; $5fa4: $12
    dec b                                         ; $5fa5: $05
    add h                                         ; $5fa6: $84
    ld [de], a                                    ; $5fa7: $12
    dec b                                         ; $5fa8: $05
    adc e                                         ; $5fa9: $8b
    ld [de], a                                    ; $5faa: $12
    dec b                                         ; $5fab: $05
    sub e                                         ; $5fac: $93
    ld [de], a                                    ; $5fad: $12
    dec b                                         ; $5fae: $05
    sbc h                                         ; $5faf: $9c
    ld [de], a                                    ; $5fb0: $12
    dec b                                         ; $5fb1: $05
    and [hl]                                      ; $5fb2: $a6
    ld [de], a                                    ; $5fb3: $12
    dec b                                         ; $5fb4: $05
    and a                                         ; $5fb5: $a7
    ld [de], a                                    ; $5fb6: $12
    dec b                                         ; $5fb7: $05
    xor b                                         ; $5fb8: $a8
    ld [de], a                                    ; $5fb9: $12
    dec b                                         ; $5fba: $05
    xor c                                         ; $5fbb: $a9
    ld [de], a                                    ; $5fbc: $12
    dec b                                         ; $5fbd: $05
    xor d                                         ; $5fbe: $aa
    ld [de], a                                    ; $5fbf: $12
    dec b                                         ; $5fc0: $05
    xor e                                         ; $5fc1: $ab
    ld [de], a                                    ; $5fc2: $12
    dec b                                         ; $5fc3: $05
    xor h                                         ; $5fc4: $ac
    ld [de], a                                    ; $5fc5: $12
    dec b                                         ; $5fc6: $05
    xor l                                         ; $5fc7: $ad
    ld [de], a                                    ; $5fc8: $12
    dec b                                         ; $5fc9: $05
    xor [hl]                                      ; $5fca: $ae
    ld [de], a                                    ; $5fcb: $12
    dec b                                         ; $5fcc: $05
    xor a                                         ; $5fcd: $af
    ld [de], a                                    ; $5fce: $12
    dec b                                         ; $5fcf: $05
    or b                                          ; $5fd0: $b0
    ld [de], a                                    ; $5fd1: $12
    dec b                                         ; $5fd2: $05
    or c                                          ; $5fd3: $b1
    ld [de], a                                    ; $5fd4: $12
    dec b                                         ; $5fd5: $05
    or d                                          ; $5fd6: $b2
    ld [de], a                                    ; $5fd7: $12
    dec b                                         ; $5fd8: $05
    or e                                          ; $5fd9: $b3
    ld [de], a                                    ; $5fda: $12
    dec b                                         ; $5fdb: $05
    or h                                          ; $5fdc: $b4
    ld [de], a                                    ; $5fdd: $12
    dec b                                         ; $5fde: $05
    or l                                          ; $5fdf: $b5
    ld [de], a                                    ; $5fe0: $12
    dec b                                         ; $5fe1: $05
    or [hl]                                       ; $5fe2: $b6
    ld [de], a                                    ; $5fe3: $12
    dec b                                         ; $5fe4: $05
    or a                                          ; $5fe5: $b7
    ld [de], a                                    ; $5fe6: $12
    dec b                                         ; $5fe7: $05
    cp b                                          ; $5fe8: $b8
    ld [de], a                                    ; $5fe9: $12
    dec b                                         ; $5fea: $05
    cp c                                          ; $5feb: $b9
    ld [de], a                                    ; $5fec: $12
    dec b                                         ; $5fed: $05
    cp d                                          ; $5fee: $ba
    ld [de], a                                    ; $5fef: $12
    dec b                                         ; $5ff0: $05
    cp e                                          ; $5ff1: $bb
    ld [de], a                                    ; $5ff2: $12
    dec b                                         ; $5ff3: $05
    cp h                                          ; $5ff4: $bc
    ld [de], a                                    ; $5ff5: $12
    dec b                                         ; $5ff6: $05
    cp l                                          ; $5ff7: $bd
    ld [de], a                                    ; $5ff8: $12
    dec b                                         ; $5ff9: $05
    cp [hl]                                       ; $5ffa: $be
    ld [de], a                                    ; $5ffb: $12
    dec b                                         ; $5ffc: $05
    cp a                                          ; $5ffd: $bf
    ld [de], a                                    ; $5ffe: $12
    dec b                                         ; $5fff: $05
    ret nz                                        ; $6000: $c0

    ld [de], a                                    ; $6001: $12
    dec b                                         ; $6002: $05
    pop bc                                        ; $6003: $c1
    ld [de], a                                    ; $6004: $12
    dec b                                         ; $6005: $05
    jp nz, Jump_000_0512                          ; $6006: $c2 $12 $05

    jp Jump_000_0512                              ; $6009: $c3 $12 $05


    call nz, Call_000_0512                        ; $600c: $c4 $12 $05
    push bc                                       ; $600f: $c5
    ld [de], a                                    ; $6010: $12
    dec b                                         ; $6011: $05
    add $12                                       ; $6012: $c6 $12
    dec b                                         ; $6014: $05
    rst $00                                       ; $6015: $c7
    ld [de], a                                    ; $6016: $12
    dec b                                         ; $6017: $05
    ret z                                         ; $6018: $c8

    ld [de], a                                    ; $6019: $12
    dec b                                         ; $601a: $05
    sbc $12                                       ; $601b: $de $12
    dec b                                         ; $601d: $05
    db $e3                                        ; $601e: $e3
    ld [de], a                                    ; $601f: $12
    dec b                                         ; $6020: $05
    ld a, [de]                                    ; $6021: $1a
    inc de                                        ; $6022: $13
    dec b                                         ; $6023: $05
    daa                                           ; $6024: $27
    inc de                                        ; $6025: $13
    dec b                                         ; $6026: $05
    ld a, [hl]                                    ; $6027: $7e
    inc de                                        ; $6028: $13
    dec b                                         ; $6029: $05
    adc [hl]                                      ; $602a: $8e
    inc de                                        ; $602b: $13
    dec b                                         ; $602c: $05
    rl e                                          ; $602d: $cb $13
    dec b                                         ; $602f: $05
    db $f4                                        ; $6030: $f4
    inc de                                        ; $6031: $13
    dec b                                         ; $6032: $05
    ld d, h                                       ; $6033: $54
    inc d                                         ; $6034: $14
    dec b                                         ; $6035: $05
    ld h, a                                       ; $6036: $67
    inc d                                         ; $6037: $14
    dec b                                         ; $6038: $05
    sbc d                                         ; $6039: $9a
    inc d                                         ; $603a: $14
    dec b                                         ; $603b: $05
    db $e4                                        ; $603c: $e4
    inc d                                         ; $603d: $14
    dec b                                         ; $603e: $05
    or $14                                        ; $603f: $f6 $14
    dec b                                         ; $6041: $05
    jr nc, @+$17                                  ; $6042: $30 $15

    dec b                                         ; $6044: $05
    ld c, a                                       ; $6045: $4f
    dec d                                         ; $6046: $15
    dec b                                         ; $6047: $05
    ld [hl], a                                    ; $6048: $77
    dec d                                         ; $6049: $15
    dec b                                         ; $604a: $05
    rl l                                          ; $604b: $cb $15
    dec b                                         ; $604d: $05
    call nc, Call_000_0515                        ; $604e: $d4 $15 $05
    rst $20                                       ; $6051: $e7
    dec d                                         ; $6052: $15
    dec b                                         ; $6053: $05
    ld hl, sp+$15                                 ; $6054: $f8 $15
    dec b                                         ; $6056: $05
    add hl, bc                                    ; $6057: $09
    ld d, $05                                     ; $6058: $16 $05
    inc e                                         ; $605a: $1c
    ld d, $05                                     ; $605b: $16 $05
    inc sp                                        ; $605d: $33
    ld d, $05                                     ; $605e: $16 $05
    ld [hl], h                                    ; $6060: $74
    ld d, $05                                     ; $6061: $16 $05
    ld a, [hl]                                    ; $6063: $7e
    ld d, $05                                     ; $6064: $16 $05
    adc $16                                       ; $6066: $ce $16
    dec b                                         ; $6068: $05
    sbc $16                                       ; $6069: $de $16
    dec b                                         ; $606b: $05
    di                                            ; $606c: $f3
    ld d, $05                                     ; $606d: $16 $05
    jr nc, jr_04d_6088                            ; $606f: $30 $17

    dec b                                         ; $6071: $05
    ld c, a                                       ; $6072: $4f
    rla                                           ; $6073: $17
    dec b                                         ; $6074: $05
    ld h, d                                       ; $6075: $62
    rla                                           ; $6076: $17
    dec b                                         ; $6077: $05
    ld a, b                                       ; $6078: $78
    rla                                           ; $6079: $17
    dec b                                         ; $607a: $05
    sbc [hl]                                      ; $607b: $9e
    rla                                           ; $607c: $17
    dec b                                         ; $607d: $05
    or l                                          ; $607e: $b5
    rla                                           ; $607f: $17
    dec b                                         ; $6080: $05
    jp Jump_000_0517                              ; $6081: $c3 $17 $05


    adc $17                                       ; $6084: $ce $17
    dec b                                         ; $6086: $05
    push hl                                       ; $6087: $e5

jr_04d_6088:
    rla                                           ; $6088: $17
    dec b                                         ; $6089: $05
    or $17                                        ; $608a: $f6 $17
    dec b                                         ; $608c: $05
    rst $38                                       ; $608d: $ff
    rla                                           ; $608e: $17
    dec b                                         ; $608f: $05
    ld a, [bc]                                    ; $6090: $0a
    jr jr_04d_6098                                ; $6091: $18 $05

    jr nz, @+$1a                                  ; $6093: $20 $18

    dec b                                         ; $6095: $05
    jr nc, jr_04d_60b0                            ; $6096: $30 $18

jr_04d_6098:
    dec b                                         ; $6098: $05
    ld c, b                                       ; $6099: $48
    jr @+$07                                      ; $609a: $18 $05

    ld d, h                                       ; $609c: $54
    jr @+$07                                      ; $609d: $18 $05

    ld h, [hl]                                    ; $609f: $66
    jr @+$07                                      ; $60a0: $18 $05

    add c                                         ; $60a2: $81
    jr @+$07                                      ; $60a3: $18 $05

    adc h                                         ; $60a5: $8c
    jr @+$07                                      ; $60a6: $18 $05

    and e                                         ; $60a8: $a3
    jr jr_04d_60b0                                ; $60a9: $18 $05

    or c                                          ; $60ab: $b1
    jr @+$07                                      ; $60ac: $18 $05

    rr b                                          ; $60ae: $cb $18

jr_04d_60b0:
    dec b                                         ; $60b0: $05
    rst $18                                       ; $60b1: $df
    jr jr_04d_60b9                                ; $60b2: $18 $05

    db $f4                                        ; $60b4: $f4
    jr @+$07                                      ; $60b5: $18 $05

    ld b, $19                                     ; $60b7: $06 $19

jr_04d_60b9:
    dec b                                         ; $60b9: $05
    ld de, $0519                                  ; $60ba: $11 $19 $05
    ld b, b                                       ; $60bd: $40
    add hl, de                                    ; $60be: $19
    dec b                                         ; $60bf: $05
    ld d, b                                       ; $60c0: $50
    add hl, de                                    ; $60c1: $19
    dec b                                         ; $60c2: $05
    ld h, l                                       ; $60c3: $65
    add hl, de                                    ; $60c4: $19
    dec b                                         ; $60c5: $05
    ld a, [hl]                                    ; $60c6: $7e
    add hl, de                                    ; $60c7: $19
    dec b                                         ; $60c8: $05
    sub c                                         ; $60c9: $91
    add hl, de                                    ; $60ca: $19
    dec b                                         ; $60cb: $05
    cp l                                          ; $60cc: $bd
    add hl, de                                    ; $60cd: $19
    dec b                                         ; $60ce: $05
    ret                                           ; $60cf: $c9


    add hl, de                                    ; $60d0: $19
    dec b                                         ; $60d1: $05
    ld a, [$0519]                                 ; $60d2: $fa $19 $05
    dec bc                                        ; $60d5: $0b
    ld a, [de]                                    ; $60d6: $1a
    dec b                                         ; $60d7: $05
    dec e                                         ; $60d8: $1d
    ld a, [de]                                    ; $60d9: $1a
    dec b                                         ; $60da: $05
    ld a, $1a                                     ; $60db: $3e $1a
    dec b                                         ; $60dd: $05
    ld e, d                                       ; $60de: $5a
    ld a, [de]                                    ; $60df: $1a
    dec b                                         ; $60e0: $05
    ld [hl], l                                    ; $60e1: $75
    ld a, [de]                                    ; $60e2: $1a
    dec b                                         ; $60e3: $05
    add h                                         ; $60e4: $84
    ld a, [de]                                    ; $60e5: $1a
    dec b                                         ; $60e6: $05
    sbc [hl]                                      ; $60e7: $9e
    ld a, [de]                                    ; $60e8: $1a
    dec b                                         ; $60e9: $05
    or d                                          ; $60ea: $b2
    ld a, [de]                                    ; $60eb: $1a
    dec b                                         ; $60ec: $05
    call nz, $051a                                ; $60ed: $c4 $1a $05
    push de                                       ; $60f0: $d5
    ld a, [de]                                    ; $60f1: $1a
    dec b                                         ; $60f2: $05
    ldh a, [rNR30]                                ; $60f3: $f0 $1a
    dec b                                         ; $60f5: $05
    dec b                                         ; $60f6: $05
    dec de                                        ; $60f7: $1b
    dec b                                         ; $60f8: $05
    inc hl                                        ; $60f9: $23
    dec de                                        ; $60fa: $1b
    dec b                                         ; $60fb: $05
    jr nc, jr_04d_6119                            ; $60fc: $30 $1b

    dec b                                         ; $60fe: $05
    ld c, b                                       ; $60ff: $48
    dec de                                        ; $6100: $1b
    dec b                                         ; $6101: $05
    ld e, e                                       ; $6102: $5b
    dec de                                        ; $6103: $1b
    dec b                                         ; $6104: $05
    add h                                         ; $6105: $84
    dec de                                        ; $6106: $1b
    dec b                                         ; $6107: $05
    sbc c                                         ; $6108: $99
    dec de                                        ; $6109: $1b
    dec b                                         ; $610a: $05
    cp b                                          ; $610b: $b8
    dec de                                        ; $610c: $1b
    dec b                                         ; $610d: $05
    pop de                                        ; $610e: $d1
    dec de                                        ; $610f: $1b
    dec b                                         ; $6110: $05
    db $ec                                        ; $6111: $ec
    dec de                                        ; $6112: $1b
    dec b                                         ; $6113: $05
    ld b, l                                       ; $6114: $45
    inc e                                         ; $6115: $1c
    dec b                                         ; $6116: $05
    sbc l                                         ; $6117: $9d
    inc e                                         ; $6118: $1c

jr_04d_6119:
    dec b                                         ; $6119: $05
    or l                                          ; $611a: $b5
    inc e                                         ; $611b: $1c
    dec b                                         ; $611c: $05
    sub $1c                                       ; $611d: $d6 $1c
    dec b                                         ; $611f: $05
    ei                                            ; $6120: $fb
    inc e                                         ; $6121: $1c
    dec b                                         ; $6122: $05
    inc [hl]                                      ; $6123: $34
    dec e                                         ; $6124: $1d
    dec b                                         ; $6125: $05
    ld h, b                                       ; $6126: $60
    dec e                                         ; $6127: $1d
    dec b                                         ; $6128: $05
    adc d                                         ; $6129: $8a
    dec e                                         ; $612a: $1d
    dec b                                         ; $612b: $05
    xor c                                         ; $612c: $a9
    dec e                                         ; $612d: $1d
    dec b                                         ; $612e: $05
    ret                                           ; $612f: $c9


    dec e                                         ; $6130: $1d
    dec b                                         ; $6131: $05
    rst $28                                       ; $6132: $ef
    dec e                                         ; $6133: $1d
    dec b                                         ; $6134: $05
    ld a, [de]                                    ; $6135: $1a
    ld e, $05                                     ; $6136: $1e $05
    ld a, [hl-]                                   ; $6138: $3a
    ld e, $05                                     ; $6139: $1e $05
    ld d, l                                       ; $613b: $55
    ld e, $05                                     ; $613c: $1e $05
    ld [hl], d                                    ; $613e: $72
    ld e, $05                                     ; $613f: $1e $05
    sbc e                                         ; $6141: $9b
    ld e, $05                                     ; $6142: $1e $05
    db $db                                        ; $6144: $db
    ld e, $05                                     ; $6145: $1e $05
    ld b, b                                       ; $6147: $40
    rra                                           ; $6148: $1f
    dec b                                         ; $6149: $05
    ld [hl], a                                    ; $614a: $77
    rra                                           ; $614b: $1f
    dec b                                         ; $614c: $05
    xor b                                         ; $614d: $a8
    rra                                           ; $614e: $1f
    dec b                                         ; $614f: $05
    jp hl                                         ; $6150: $e9


    rra                                           ; $6151: $1f
    dec b                                         ; $6152: $05
    ld h, $20                                     ; $6153: $26 $20
    dec b                                         ; $6155: $05
    add [hl]                                      ; $6156: $86
    jr nz, @+$07                                  ; $6157: $20 $05

    call c, $0520                                 ; $6159: $dc $20 $05
    ld c, b                                       ; $615c: $48
    ld hl, $ad05                                  ; $615d: $21 $05 $ad
    ld hl, $1705                                  ; $6160: $21 $05 $17
    ld [hl+], a                                   ; $6163: $22
    dec b                                         ; $6164: $05
    adc l                                         ; $6165: $8d
    ld [hl+], a                                   ; $6166: $22
    dec b                                         ; $6167: $05
    and $22                                       ; $6168: $e6 $22
    dec b                                         ; $616a: $05
    ld d, e                                       ; $616b: $53
    inc hl                                        ; $616c: $23
    dec b                                         ; $616d: $05
    or c                                          ; $616e: $b1
    inc hl                                        ; $616f: $23
    dec b                                         ; $6170: $05
    inc l                                         ; $6171: $2c
    inc h                                         ; $6172: $24
    dec b                                         ; $6173: $05
    ld a, l                                       ; $6174: $7d
    inc h                                         ; $6175: $24
    dec b                                         ; $6176: $05
    ldh [rNR50], a                                ; $6177: $e0 $24
    dec b                                         ; $6179: $05
    jr c, jr_04d_61a1                             ; $617a: $38 $25

    dec b                                         ; $617c: $05
    sub e                                         ; $617d: $93
    dec h                                         ; $617e: $25
    dec b                                         ; $617f: $05
    db $f4                                        ; $6180: $f4
    dec h                                         ; $6181: $25
    dec b                                         ; $6182: $05
    ld d, l                                       ; $6183: $55
    ld h, $05                                     ; $6184: $26 $05
    or c                                          ; $6186: $b1
    ld h, $05                                     ; $6187: $26 $05
    add hl, de                                    ; $6189: $19
    daa                                           ; $618a: $27
    dec b                                         ; $618b: $05
    sub b                                         ; $618c: $90
    daa                                           ; $618d: $27
    dec b                                         ; $618e: $05
    db $d3                                        ; $618f: $d3
    daa                                           ; $6190: $27
    dec b                                         ; $6191: $05
    ld [c], a                                     ; $6192: $e2
    daa                                           ; $6193: $27
    dec b                                         ; $6194: $05
    rst $20                                       ; $6195: $e7
    daa                                           ; $6196: $27
    dec b                                         ; $6197: $05
    db $ec                                        ; $6198: $ec
    daa                                           ; $6199: $27
    dec b                                         ; $619a: $05
    ld a, [$0527]                                 ; $619b: $fa $27 $05
    add hl, bc                                    ; $619e: $09
    jr z, @+$07                                   ; $619f: $28 $05

jr_04d_61a1:
    ld a, [de]                                    ; $61a1: $1a
    jr z, @+$07                                   ; $61a2: $28 $05

    ld c, [hl]                                    ; $61a4: $4e
    jr z, @+$07                                   ; $61a5: $28 $05

    add a                                         ; $61a7: $87
    jr z, jr_04d_61af                             ; $61a8: $28 $05

    reti                                          ; $61aa: $d9


    jr z, jr_04d_61b2                             ; $61ab: $28 $05

    dec de                                        ; $61ad: $1b
    add hl, hl                                    ; $61ae: $29

jr_04d_61af:
    dec b                                         ; $61af: $05
    ld l, e                                       ; $61b0: $6b
    add hl, hl                                    ; $61b1: $29

jr_04d_61b2:
    dec b                                         ; $61b2: $05
    sbc h                                         ; $61b3: $9c
    add hl, hl                                    ; $61b4: $29
    dec b                                         ; $61b5: $05
    ld a, [$0529]                                 ; $61b6: $fa $29 $05
    dec sp                                        ; $61b9: $3b
    ld a, [hl+]                                   ; $61ba: $2a
    dec b                                         ; $61bb: $05
    ld [hl], l                                    ; $61bc: $75
    ld a, [hl+]                                   ; $61bd: $2a
    dec b                                         ; $61be: $05
    sbc e                                         ; $61bf: $9b
    ld a, [hl+]                                   ; $61c0: $2a
    dec b                                         ; $61c1: $05
    cp l                                          ; $61c2: $bd
    ld a, [hl+]                                   ; $61c3: $2a
    dec b                                         ; $61c4: $05
    rst $18                                       ; $61c5: $df
    ld a, [hl+]                                   ; $61c6: $2a
    dec b                                         ; $61c7: $05
    ld [bc], a                                    ; $61c8: $02
    dec hl                                        ; $61c9: $2b
    dec b                                         ; $61ca: $05
    dec e                                         ; $61cb: $1d
    dec hl                                        ; $61cc: $2b
    dec b                                         ; $61cd: $05
    dec sp                                        ; $61ce: $3b
    dec hl                                        ; $61cf: $2b
    dec b                                         ; $61d0: $05
    ld e, c                                       ; $61d1: $59
    dec hl                                        ; $61d2: $2b
    dec b                                         ; $61d3: $05
    adc [hl]                                      ; $61d4: $8e
    dec hl                                        ; $61d5: $2b
    dec b                                         ; $61d6: $05
    and l                                         ; $61d7: $a5
    dec hl                                        ; $61d8: $2b
    dec b                                         ; $61d9: $05
    cp b                                          ; $61da: $b8
    dec hl                                        ; $61db: $2b
    dec b                                         ; $61dc: $05
    rst $08                                       ; $61dd: $cf
    dec hl                                        ; $61de: $2b
    dec b                                         ; $61df: $05
    db $f4                                        ; $61e0: $f4
    dec hl                                        ; $61e1: $2b
    dec b                                         ; $61e2: $05
    daa                                           ; $61e3: $27
    inc l                                         ; $61e4: $2c
    dec b                                         ; $61e5: $05
    ld d, c                                       ; $61e6: $51
    inc l                                         ; $61e7: $2c
    dec b                                         ; $61e8: $05
    ld h, a                                       ; $61e9: $67
    inc l                                         ; $61ea: $2c
    dec b                                         ; $61eb: $05
    sub h                                         ; $61ec: $94
    inc l                                         ; $61ed: $2c
    dec b                                         ; $61ee: $05
    or l                                          ; $61ef: $b5
    inc l                                         ; $61f0: $2c
    dec b                                         ; $61f1: $05
    ldh a, [$2c]                                  ; $61f2: $f0 $2c
    dec b                                         ; $61f4: $05
    ld e, $2d                                     ; $61f5: $1e $2d
    dec b                                         ; $61f7: $05
    ld b, h                                       ; $61f8: $44
    dec l                                         ; $61f9: $2d
    dec b                                         ; $61fa: $05
    ld e, c                                       ; $61fb: $59
    dec l                                         ; $61fc: $2d
    dec b                                         ; $61fd: $05
    ld [hl], b                                    ; $61fe: $70
    dec l                                         ; $61ff: $2d
    dec b                                         ; $6200: $05
    add h                                         ; $6201: $84
    dec l                                         ; $6202: $2d
    dec b                                         ; $6203: $05
    sbc l                                         ; $6204: $9d
    dec l                                         ; $6205: $2d
    dec b                                         ; $6206: $05
    rlca                                          ; $6207: $07
    ld l, $05                                     ; $6208: $2e $05
    dec l                                         ; $620a: $2d
    ld l, $05                                     ; $620b: $2e $05
    ld d, c                                       ; $620d: $51
    ld l, $05                                     ; $620e: $2e $05
    ld e, c                                       ; $6210: $59
    ld l, $05                                     ; $6211: $2e $05
    ld h, e                                       ; $6213: $63
    ld l, $05                                     ; $6214: $2e $05
    ld l, c                                       ; $6216: $69
    ld l, $05                                     ; $6217: $2e $05
    ld l, [hl]                                    ; $6219: $6e
    ld l, $05                                     ; $621a: $2e $05
    ld [hl], a                                    ; $621c: $77
    ld l, $05                                     ; $621d: $2e $05
    ld a, h                                       ; $621f: $7c
    ld l, $05                                     ; $6220: $2e $05
    add l                                         ; $6222: $85
    ld l, $05                                     ; $6223: $2e $05
    sub d                                         ; $6225: $92
    ld l, $05                                     ; $6226: $2e $05
    and d                                         ; $6228: $a2
    ld l, $05                                     ; $6229: $2e $05
    or h                                          ; $622b: $b4
    ld l, $05                                     ; $622c: $2e $05
    cp [hl]                                       ; $622e: $be
    ld l, $05                                     ; $622f: $2e $05
    sra [hl]                                      ; $6231: $cb $2e
    dec b                                         ; $6233: $05
    rst $10                                       ; $6234: $d7
    ld l, $05                                     ; $6235: $2e $05
    db $ec                                        ; $6237: $ec
    ld l, $05                                     ; $6238: $2e $05
    dec b                                         ; $623a: $05
    cpl                                           ; $623b: $2f
    dec b                                         ; $623c: $05
    inc l                                         ; $623d: $2c
    cpl                                           ; $623e: $2f
    dec b                                         ; $623f: $05
    ld b, d                                       ; $6240: $42
    cpl                                           ; $6241: $2f
    dec b                                         ; $6242: $05
    ld e, [hl]                                    ; $6243: $5e
    cpl                                           ; $6244: $2f
    dec b                                         ; $6245: $05
    ld [hl], c                                    ; $6246: $71
    cpl                                           ; $6247: $2f
    dec b                                         ; $6248: $05
    add h                                         ; $6249: $84
    cpl                                           ; $624a: $2f
    dec b                                         ; $624b: $05
    or c                                          ; $624c: $b1
    cpl                                           ; $624d: $2f
    dec b                                         ; $624e: $05
    ret nc                                        ; $624f: $d0

    cpl                                           ; $6250: $2f
    dec b                                         ; $6251: $05
    ld [bc], a                                    ; $6252: $02
    jr nc, @+$07                                  ; $6253: $30 $05

    rla                                           ; $6255: $17
    jr nc, @+$07                                  ; $6256: $30 $05

    ld c, c                                       ; $6258: $49
    jr nc, @+$07                                  ; $6259: $30 $05

    ld d, [hl]                                    ; $625b: $56
    jr nc, @+$07                                  ; $625c: $30 $05

    ld h, d                                       ; $625e: $62
    jr nc, @+$07                                  ; $625f: $30 $05

    ld [hl], d                                    ; $6261: $72
    jr nc, @+$07                                  ; $6262: $30 $05

    ld a, l                                       ; $6264: $7d
    jr nc, jr_04d_626c                            ; $6265: $30 $05

    adc b                                         ; $6267: $88
    jr nc, jr_04d_626f                            ; $6268: $30 $05

    add $30                                       ; $626a: $c6 $30

jr_04d_626c:
    dec b                                         ; $626c: $05
    cp $30                                        ; $626d: $fe $30

jr_04d_626f:
    dec b                                         ; $626f: $05
    halt                                          ; $6270: $76
    ld sp, $8805                                  ; $6271: $31 $05 $88
    ld sp, $9305                                  ; $6274: $31 $05 $93
    ld sp, $c105                                  ; $6277: $31 $05 $c1
    ld sp, $ca05                                  ; $627a: $31 $05 $ca
    ld sp, $d605                                  ; $627d: $31 $05 $d6
    ld sp, $db05                                  ; $6280: $31 $05 $db
    ld sp, $ea05                                  ; $6283: $31 $05 $ea
    ld sp, $fb05                                  ; $6286: $31 $05 $fb
    ld sp, $0705                                  ; $6289: $31 $05 $07
    ld [hl-], a                                   ; $628c: $32
    dec b                                         ; $628d: $05
    dec c                                         ; $628e: $0d
    ld [hl-], a                                   ; $628f: $32
    dec b                                         ; $6290: $05
    dec d                                         ; $6291: $15
    ld [hl-], a                                   ; $6292: $32
    dec b                                         ; $6293: $05
    rra                                           ; $6294: $1f
    ld [hl-], a                                   ; $6295: $32
    dec b                                         ; $6296: $05
    dec h                                         ; $6297: $25
    ld [hl-], a                                   ; $6298: $32
    dec b                                         ; $6299: $05
    ld h, $32                                     ; $629a: $26 $32
    dec b                                         ; $629c: $05
    daa                                           ; $629d: $27
    ld [hl-], a                                   ; $629e: $32
    dec b                                         ; $629f: $05
    jr z, jr_04d_62d4                             ; $62a0: $28 $32

    dec b                                         ; $62a2: $05
    add hl, hl                                    ; $62a3: $29
    ld [hl-], a                                   ; $62a4: $32
    dec b                                         ; $62a5: $05
    ld a, [hl+]                                   ; $62a6: $2a
    ld [hl-], a                                   ; $62a7: $32
    dec b                                         ; $62a8: $05
    dec hl                                        ; $62a9: $2b
    ld [hl-], a                                   ; $62aa: $32
    dec b                                         ; $62ab: $05
    inc l                                         ; $62ac: $2c
    ld [hl-], a                                   ; $62ad: $32
    dec b                                         ; $62ae: $05
    dec l                                         ; $62af: $2d
    ld [hl-], a                                   ; $62b0: $32
    dec b                                         ; $62b1: $05
    ld l, $32                                     ; $62b2: $2e $32
    dec b                                         ; $62b4: $05
    cpl                                           ; $62b5: $2f
    ld [hl-], a                                   ; $62b6: $32
    dec b                                         ; $62b7: $05
    jr nc, jr_04d_62ec                            ; $62b8: $30 $32

    dec b                                         ; $62ba: $05
    ld sp, $0532                                  ; $62bb: $31 $32 $05
    ld [hl-], a                                   ; $62be: $32
    ld [hl-], a                                   ; $62bf: $32
    dec b                                         ; $62c0: $05
    inc sp                                        ; $62c1: $33
    ld [hl-], a                                   ; $62c2: $32
    dec b                                         ; $62c3: $05
    inc [hl]                                      ; $62c4: $34
    ld [hl-], a                                   ; $62c5: $32
    dec b                                         ; $62c6: $05
    dec [hl]                                      ; $62c7: $35
    ld [hl-], a                                   ; $62c8: $32
    dec b                                         ; $62c9: $05
    ld [hl], $32                                  ; $62ca: $36 $32
    dec b                                         ; $62cc: $05
    scf                                           ; $62cd: $37
    ld [hl-], a                                   ; $62ce: $32
    dec b                                         ; $62cf: $05
    jr c, jr_04d_6304                             ; $62d0: $38 $32

    dec b                                         ; $62d2: $05
    add hl, sp                                    ; $62d3: $39

jr_04d_62d4:
    ld [hl-], a                                   ; $62d4: $32
    dec b                                         ; $62d5: $05
    ld a, [hl-]                                   ; $62d6: $3a
    ld [hl-], a                                   ; $62d7: $32
    dec b                                         ; $62d8: $05
    dec sp                                        ; $62d9: $3b
    ld [hl-], a                                   ; $62da: $32
    dec b                                         ; $62db: $05
    inc a                                         ; $62dc: $3c
    ld [hl-], a                                   ; $62dd: $32
    dec b                                         ; $62de: $05
    dec a                                         ; $62df: $3d
    ld [hl-], a                                   ; $62e0: $32
    dec b                                         ; $62e1: $05
    ld a, $32                                     ; $62e2: $3e $32
    dec b                                         ; $62e4: $05
    ccf                                           ; $62e5: $3f
    ld [hl-], a                                   ; $62e6: $32
    dec b                                         ; $62e7: $05
    ld b, b                                       ; $62e8: $40
    ld [hl-], a                                   ; $62e9: $32
    dec b                                         ; $62ea: $05
    ld b, c                                       ; $62eb: $41

jr_04d_62ec:
    ld [hl-], a                                   ; $62ec: $32
    dec b                                         ; $62ed: $05
    ld b, d                                       ; $62ee: $42
    ld [hl-], a                                   ; $62ef: $32
    dec b                                         ; $62f0: $05
    ld b, e                                       ; $62f1: $43
    ld [hl-], a                                   ; $62f2: $32
    dec b                                         ; $62f3: $05
    ld b, h                                       ; $62f4: $44
    ld [hl-], a                                   ; $62f5: $32
    dec b                                         ; $62f6: $05
    ld b, l                                       ; $62f7: $45
    ld [hl-], a                                   ; $62f8: $32
    dec b                                         ; $62f9: $05
    ld b, [hl]                                    ; $62fa: $46
    ld [hl-], a                                   ; $62fb: $32
    dec b                                         ; $62fc: $05
    ld b, a                                       ; $62fd: $47
    ld [hl-], a                                   ; $62fe: $32
    dec b                                         ; $62ff: $05
    ld c, b                                       ; $6300: $48
    ld [hl-], a                                   ; $6301: $32
    dec b                                         ; $6302: $05
    ld c, c                                       ; $6303: $49

jr_04d_6304:
    ld [hl-], a                                   ; $6304: $32
    dec b                                         ; $6305: $05
    ld c, d                                       ; $6306: $4a
    ld [hl-], a                                   ; $6307: $32
    dec b                                         ; $6308: $05
    ld c, e                                       ; $6309: $4b
    ld [hl-], a                                   ; $630a: $32
    dec b                                         ; $630b: $05
    ld c, h                                       ; $630c: $4c
    ld [hl-], a                                   ; $630d: $32
    dec b                                         ; $630e: $05
    ld c, l                                       ; $630f: $4d
    ld [hl-], a                                   ; $6310: $32
    dec b                                         ; $6311: $05
    ld c, [hl]                                    ; $6312: $4e
    ld [hl-], a                                   ; $6313: $32
    dec b                                         ; $6314: $05
    ld c, a                                       ; $6315: $4f
    ld [hl-], a                                   ; $6316: $32
    dec b                                         ; $6317: $05
    ld d, l                                       ; $6318: $55
    ld [hl-], a                                   ; $6319: $32
    dec b                                         ; $631a: $05
    ld h, b                                       ; $631b: $60
    ld [hl-], a                                   ; $631c: $32
    dec b                                         ; $631d: $05
    ld l, a                                       ; $631e: $6f
    ld [hl-], a                                   ; $631f: $32
    dec b                                         ; $6320: $05
    ld a, c                                       ; $6321: $79
    ld [hl-], a                                   ; $6322: $32
    dec b                                         ; $6323: $05
    add e                                         ; $6324: $83
    ld [hl-], a                                   ; $6325: $32
    dec b                                         ; $6326: $05
    adc a                                         ; $6327: $8f
    ld [hl-], a                                   ; $6328: $32
    dec b                                         ; $6329: $05
    sbc l                                         ; $632a: $9d
    ld [hl-], a                                   ; $632b: $32
    dec b                                         ; $632c: $05
    sbc [hl]                                      ; $632d: $9e
    ld [hl-], a                                   ; $632e: $32
    dec b                                         ; $632f: $05
    sbc a                                         ; $6330: $9f
    ld [hl-], a                                   ; $6331: $32
    dec b                                         ; $6332: $05
    and b                                         ; $6333: $a0
    ld [hl-], a                                   ; $6334: $32
    dec b                                         ; $6335: $05
    and c                                         ; $6336: $a1
    ld [hl-], a                                   ; $6337: $32
    dec b                                         ; $6338: $05
    and d                                         ; $6339: $a2
    ld [hl-], a                                   ; $633a: $32
    dec b                                         ; $633b: $05
    and e                                         ; $633c: $a3
    ld [hl-], a                                   ; $633d: $32
    dec b                                         ; $633e: $05
    and h                                         ; $633f: $a4
    ld [hl-], a                                   ; $6340: $32
    dec b                                         ; $6341: $05
    and l                                         ; $6342: $a5
    ld [hl-], a                                   ; $6343: $32
    dec b                                         ; $6344: $05
    and [hl]                                      ; $6345: $a6
    ld [hl-], a                                   ; $6346: $32
    dec b                                         ; $6347: $05
    and a                                         ; $6348: $a7
    ld [hl-], a                                   ; $6349: $32
    dec b                                         ; $634a: $05
    xor b                                         ; $634b: $a8
    ld [hl-], a                                   ; $634c: $32
    dec b                                         ; $634d: $05
    or e                                          ; $634e: $b3
    ld [hl-], a                                   ; $634f: $32
    dec b                                         ; $6350: $05
    or h                                          ; $6351: $b4
    ld [hl-], a                                   ; $6352: $32
    dec b                                         ; $6353: $05
    or l                                          ; $6354: $b5
    ld [hl-], a                                   ; $6355: $32
    dec b                                         ; $6356: $05
    or [hl]                                       ; $6357: $b6
    ld [hl-], a                                   ; $6358: $32
    dec b                                         ; $6359: $05
    or a                                          ; $635a: $b7
    ld [hl-], a                                   ; $635b: $32
    dec b                                         ; $635c: $05
    cp b                                          ; $635d: $b8
    ld [hl-], a                                   ; $635e: $32
    dec b                                         ; $635f: $05
    cp c                                          ; $6360: $b9
    ld [hl-], a                                   ; $6361: $32
    dec b                                         ; $6362: $05
    cp d                                          ; $6363: $ba
    ld [hl-], a                                   ; $6364: $32
    dec b                                         ; $6365: $05
    cp e                                          ; $6366: $bb
    ld [hl-], a                                   ; $6367: $32
    dec b                                         ; $6368: $05
    cp h                                          ; $6369: $bc
    ld [hl-], a                                   ; $636a: $32
    dec b                                         ; $636b: $05
    cp l                                          ; $636c: $bd
    ld [hl-], a                                   ; $636d: $32
    dec b                                         ; $636e: $05
    cp [hl]                                       ; $636f: $be
    ld [hl-], a                                   ; $6370: $32
    dec b                                         ; $6371: $05
    cp a                                          ; $6372: $bf
    ld [hl-], a                                   ; $6373: $32
    dec b                                         ; $6374: $05
    ret nz                                        ; $6375: $c0

    ld [hl-], a                                   ; $6376: $32
    dec b                                         ; $6377: $05
    pop bc                                        ; $6378: $c1
    ld [hl-], a                                   ; $6379: $32
    dec b                                         ; $637a: $05
    jp nz, Jump_000_0532                          ; $637b: $c2 $32 $05

    jp Jump_000_0532                              ; $637e: $c3 $32 $05


    call nz, Call_000_0532                        ; $6381: $c4 $32 $05
    push bc                                       ; $6384: $c5
    ld [hl-], a                                   ; $6385: $32
    dec b                                         ; $6386: $05
    add $32                                       ; $6387: $c6 $32
    dec b                                         ; $6389: $05
    rst $00                                       ; $638a: $c7
    ld [hl-], a                                   ; $638b: $32
    dec b                                         ; $638c: $05
    ret z                                         ; $638d: $c8

    ld [hl-], a                                   ; $638e: $32
    dec b                                         ; $638f: $05
    sub $32                                       ; $6390: $d6 $32
    dec b                                         ; $6392: $05
    rst $10                                       ; $6393: $d7
    ld [hl-], a                                   ; $6394: $32
    dec b                                         ; $6395: $05
    ld [c], a                                     ; $6396: $e2
    ld [hl-], a                                   ; $6397: $32
    dec b                                         ; $6398: $05
    db $ec                                        ; $6399: $ec
    ld [hl-], a                                   ; $639a: $32
    dec b                                         ; $639b: $05
    db $f4                                        ; $639c: $f4
    ld [hl-], a                                   ; $639d: $32
    dec b                                         ; $639e: $05
    db $fd                                        ; $639f: $fd
    ld [hl-], a                                   ; $63a0: $32
    dec b                                         ; $63a1: $05
    cp $32                                        ; $63a2: $fe $32
    dec b                                         ; $63a4: $05
    rst $38                                       ; $63a5: $ff
    ld [hl-], a                                   ; $63a6: $32
    dec b                                         ; $63a7: $05
    nop                                           ; $63a8: $00
    inc sp                                        ; $63a9: $33
    dec b                                         ; $63aa: $05
    ld bc, $0533                                  ; $63ab: $01 $33 $05
    ld [bc], a                                    ; $63ae: $02
    inc sp                                        ; $63af: $33
    dec b                                         ; $63b0: $05
    inc bc                                        ; $63b1: $03
    inc sp                                        ; $63b2: $33
    dec b                                         ; $63b3: $05
    inc b                                         ; $63b4: $04
    inc sp                                        ; $63b5: $33
    dec b                                         ; $63b6: $05
    dec b                                         ; $63b7: $05
    inc sp                                        ; $63b8: $33
    dec b                                         ; $63b9: $05
    ld b, $33                                     ; $63ba: $06 $33
    dec b                                         ; $63bc: $05
    rlca                                          ; $63bd: $07
    inc sp                                        ; $63be: $33
    dec b                                         ; $63bf: $05
    ld [$0533], sp                                ; $63c0: $08 $33 $05
    add hl, bc                                    ; $63c3: $09
    inc sp                                        ; $63c4: $33
    dec b                                         ; $63c5: $05
    ld a, [bc]                                    ; $63c6: $0a
    inc sp                                        ; $63c7: $33
    dec b                                         ; $63c8: $05
    dec bc                                        ; $63c9: $0b
    inc sp                                        ; $63ca: $33
    dec b                                         ; $63cb: $05
    inc c                                         ; $63cc: $0c
    inc sp                                        ; $63cd: $33
    dec b                                         ; $63ce: $05
    dec c                                         ; $63cf: $0d
    inc sp                                        ; $63d0: $33
    dec b                                         ; $63d1: $05
    ld c, $33                                     ; $63d2: $0e $33
    dec b                                         ; $63d4: $05
    rrca                                          ; $63d5: $0f
    inc sp                                        ; $63d6: $33
    dec b                                         ; $63d7: $05
    inc d                                         ; $63d8: $14
    inc sp                                        ; $63d9: $33
    dec b                                         ; $63da: $05
    dec d                                         ; $63db: $15
    inc sp                                        ; $63dc: $33
    dec b                                         ; $63dd: $05
    ld d, $33                                     ; $63de: $16 $33
    dec b                                         ; $63e0: $05
    rla                                           ; $63e1: $17
    inc sp                                        ; $63e2: $33
    dec b                                         ; $63e3: $05
    jr @+$35                                      ; $63e4: $18 $33

    ld d, [hl]                                    ; $63e6: $56
    ld d, h                                       ; $63e7: $54
    ld d, l                                       ; $63e8: $55
    add c                                         ; $63e9: $81
    and h                                         ; $63ea: $a4
    and l                                         ; $63eb: $a5
    and a                                         ; $63ec: $a7
    xor b                                         ; $63ed: $a8
    xor c                                         ; $63ee: $a9
    xor e                                         ; $63ef: $ab
    xor l                                         ; $63f0: $ad
    xor a                                         ; $63f1: $af
    or b                                          ; $63f2: $b0
    or c                                          ; $63f3: $b1
    or d                                          ; $63f4: $b2
    or e                                          ; $63f5: $b3
    or h                                          ; $63f6: $b4
    or l                                          ; $63f7: $b5
    or [hl]                                       ; $63f8: $b6
    or a                                          ; $63f9: $b7
    cp b                                          ; $63fa: $b8
    cp c                                          ; $63fb: $b9
    cp d                                          ; $63fc: $ba
    cp e                                          ; $63fd: $bb
    ret nz                                        ; $63fe: $c0

    pop bc                                        ; $63ff: $c1
    jp nz, $c5c3                                  ; $6400: $c2 $c3 $c5

    add $c7                                       ; $6403: $c6 $c7
    ret                                           ; $6405: $c9


    set 1, h                                      ; $6406: $cb $cc
    call $cfce                                    ; $6408: $cd $ce $cf
    ret nc                                        ; $640b: $d0

    pop de                                        ; $640c: $d1
    jp nc, $d5d4                                  ; $640d: $d2 $d4 $d5

    rst $10                                       ; $6410: $d7
    ret c                                         ; $6411: $d8

    reti                                          ; $6412: $d9


    jp c, $dfdc                                   ; $6413: $da $dc $df

    ldh [$f7], a                                  ; $6416: $e0 $f7
    ld hl, sp-$06                                 ; $6418: $f8 $fa
    cp $00                                        ; $641a: $fe $00
    and c                                         ; $641c: $a1
    cp a                                          ; $641d: $bf
    jp z, $d6d3                                   ; $641e: $ca $d3 $d6

    ld bc, $0302                                  ; $6421: $01 $02 $03
    inc b                                         ; $6424: $04
    dec b                                         ; $6425: $05
    ld b, $07                                     ; $6426: $06 $07
    ld [$0a09], sp                                ; $6428: $08 $09 $0a
    dec bc                                        ; $642b: $0b
    inc c                                         ; $642c: $0c
    dec c                                         ; $642d: $0d
    ld c, $0f                                     ; $642e: $0e $0f
    db $10                                        ; $6430: $10
    ld de, $1312                                  ; $6431: $11 $12 $13
    inc d                                         ; $6434: $14
    dec d                                         ; $6435: $15
    ld d, $17                                     ; $6436: $16 $17
    jr jr_04d_6453                                ; $6438: $18 $19

    ld a, [de]                                    ; $643a: $1a
    xor h                                         ; $643b: $ac
    call nz, Call_000_1bc8                        ; $643c: $c4 $c8 $1b
    inc e                                         ; $643f: $1c
    dec e                                         ; $6440: $1d
    ld e, $1f                                     ; $6441: $1e $1f
    jr nz, @+$23                                  ; $6443: $20 $21

    ld [hl+], a                                   ; $6445: $22
    inc hl                                        ; $6446: $23
    inc h                                         ; $6447: $24
    dec h                                         ; $6448: $25
    ld h, $27                                     ; $6449: $26 $27
    jr z, @-$14                                   ; $644b: $28 $ea

    ld sp, hl                                     ; $644d: $f9
    add hl, hl                                    ; $644e: $29
    db $e3                                        ; $644f: $e3
    ld [c], a                                     ; $6450: $e2
    add e                                         ; $6451: $83
    ld a, [hl+]                                   ; $6452: $2a

jr_04d_6453:
    dec hl                                        ; $6453: $2b
    inc l                                         ; $6454: $2c
    dec l                                         ; $6455: $2d
    ld l, $2f                                     ; $6456: $2e $2f
    jr nc, jr_04d_648b                            ; $6458: $30 $31

    ldh a, [$32]                                  ; $645a: $f0 $32
    inc sp                                        ; $645c: $33
    and $fc                                       ; $645d: $e6 $fc
    add sp, -$0a                                  ; $645f: $e8 $f6
    push af                                       ; $6461: $f5
    inc [hl]                                      ; $6462: $34
    db $fd                                        ; $6463: $fd
    dec [hl]                                      ; $6464: $35
    ld [hl], $37                                  ; $6465: $36 $37
    jr c, @-$50                                   ; $6467: $38 $ae

    rst $38                                       ; $6469: $ff
    add hl, sp                                    ; $646a: $39
    db $eb                                        ; $646b: $eb
    db $ed                                        ; $646c: $ed
    ld a, [hl-]                                   ; $646d: $3a
    dec sp                                        ; $646e: $3b
    rst $20                                       ; $646f: $e7
    inc a                                         ; $6470: $3c
    rst $28                                       ; $6471: $ef
    db $e4                                        ; $6472: $e4
    dec a                                         ; $6473: $3d
    di                                            ; $6474: $f3
    ld a, $e9                                     ; $6475: $3e $e9
    ccf                                           ; $6477: $3f
    db $ec                                        ; $6478: $ec
    ld b, b                                       ; $6479: $40
    ld b, c                                       ; $647a: $41
    ld b, d                                       ; $647b: $42
    ld b, e                                       ; $647c: $43
    xor $44                                       ; $647d: $ee $44
    ld b, l                                       ; $647f: $45
    db $f4                                        ; $6480: $f4
    push hl                                       ; $6481: $e5
    ld b, [hl]                                    ; $6482: $46
    pop hl                                        ; $6483: $e1
    ld a, [c]                                     ; $6484: $f2
    ld b, a                                       ; $6485: $47
    ld c, b                                       ; $6486: $48
    ld c, c                                       ; $6487: $49
    ld c, d                                       ; $6488: $4a
    ld c, e                                       ; $6489: $4b
    ld c, h                                       ; $648a: $4c

jr_04d_648b:
    ld c, l                                       ; $648b: $4d
    ld c, [hl]                                    ; $648c: $4e
    and b                                         ; $648d: $a0
    ld c, a                                       ; $648e: $4f
    ld d, b                                       ; $648f: $50
    ld d, c                                       ; $6490: $51
    ld d, d                                       ; $6491: $52
    ld d, e                                       ; $6492: $53
    xor a                                         ; $6493: $af
    cp [hl]                                       ; $6494: $be
    ei                                            ; $6495: $fb
    jp z, $efeb                                   ; $6496: $ca $eb $ef

    cp [hl]                                       ; $6499: $be
    ld a, [c]                                     ; $649a: $f2
    ld a, [$afab]                                 ; $649b: $fa $ab $af
    cp [hl]                                       ; $649e: $be
    add [hl]                                      ; $649f: $86
    nop                                           ; $64a0: $00
    ld c, a                                       ; $64a1: $4f
    jr @-$79                                      ; $64a2: $18 $85

    cp l                                          ; $64a4: $bd
    ld e, c                                       ; $64a5: $59

jr_04d_64a6:
    db $db                                        ; $64a6: $db
    bit 7, e                                      ; $64a7: $cb $7b
    and d                                         ; $64a9: $a2
    add a                                         ; $64aa: $87
    ld h, h                                       ; $64ab: $64
    ld d, d                                       ; $64ac: $52
    ld [$caa0], sp                                ; $64ad: $08 $a0 $ca
    inc hl                                        ; $64b0: $23
    ei                                            ; $64b1: $fb
    jr nc, jr_04d_64ba                            ; $64b2: $30 $06

    ld h, e                                       ; $64b4: $63
    rra                                           ; $64b5: $1f
    ld h, $dc                                     ; $64b6: $26 $dc
    sub [hl]                                      ; $64b8: $96
    rst $00                                       ; $64b9: $c7

jr_04d_64ba:
    ei                                            ; $64ba: $fb
    ld a, e                                       ; $64bb: $7b
    push af                                       ; $64bc: $f5
    db $dd                                        ; $64bd: $dd
    ld d, a                                       ; $64be: $57
    ld e, [hl]                                    ; $64bf: $5e
    ld a, a                                       ; $64c0: $7f
    db $eb                                        ; $64c1: $eb
    sub l                                         ; $64c2: $95
    rst $10                                       ; $64c3: $d7
    ld e, a                                       ; $64c4: $5f
    ld a, l                                       ; $64c5: $7d
    push af                                       ; $64c6: $f5
    dec [hl]                                      ; $64c7: $35
    inc b                                         ; $64c8: $04
    jr jr_04d_64a6                                ; $64c9: $18 $db

    db $fc                                        ; $64cb: $fc
    rst $08                                       ; $64cc: $cf
    sbc c                                         ; $64cd: $99
    and [hl]                                      ; $64ce: $a6
    pop af                                        ; $64cf: $f1
    ld de, $4d20                                  ; $64d0: $11 $20 $4d
    dec sp                                        ; $64d3: $3b
    ld [bc], a                                    ; $64d4: $02
    ret nz                                        ; $64d5: $c0

    ld c, [hl]                                    ; $64d6: $4e
    dec e                                         ; $64d7: $1d
    sub h                                         ; $64d8: $94
    rst $38                                       ; $64d9: $ff
    ld [$3ec0], sp                                ; $64da: $08 $c0 $3e
    dec bc                                        ; $64dd: $0b
    ld bc, $c0a0                                  ; $64de: $01 $a0 $c0
    cp l                                          ; $64e1: $bd
    ccf                                           ; $64e2: $3f
    add b                                         ; $64e3: $80
    xor a                                         ; $64e4: $af
    cp l                                          ; $64e5: $bd
    ld [bc], a                                    ; $64e6: $02
    ldh a, [$f5]                                  ; $64e7: $f0 $f5
    ld hl, $c1a0                                  ; $64e9: $21 $a0 $c1
    cp l                                          ; $64ec: $bd
    ccf                                           ; $64ed: $3f
    add b                                         ; $64ee: $80
    xor a                                         ; $64ef: $af
    cp l                                          ; $64f0: $bd
    ld [bc], a                                    ; $64f1: $02
    ldh a, [$f5]                                  ; $64f2: $f0 $f5
    ld hl, $fec0                                  ; $64f4: $21 $c0 $fe
    push bc                                       ; $64f7: $c5
    ld b, e                                       ; $64f8: $43
    xor h                                         ; $64f9: $ac
    add hl, de                                    ; $64fa: $19
    ld h, $31                                     ; $64fb: $26 $31
    ld [$fec0], sp                                ; $64fd: $08 $c0 $fe
    push bc                                       ; $6500: $c5
    ld b, e                                       ; $6501: $43
    xor h                                         ; $6502: $ac
    reti                                          ; $6503: $d9


    ld a, c                                       ; $6504: $79
    ld h, d                                       ; $6505: $62
    db $10                                        ; $6506: $10
    ret nz                                        ; $6507: $c0

    cp $c5                                        ; $6508: $fe $c5
    ld b, e                                       ; $650a: $43
    xor h                                         ; $650b: $ac
    add hl, de                                    ; $650c: $19
    add $be                                       ; $650d: $c6 $be
    add l                                         ; $650f: $85
    nop                                           ; $6510: $00
    ld c, a                                       ; $6511: $4f
    and e                                         ; $6512: $a3
    jp hl                                         ; $6513: $e9


    db $fd                                        ; $6514: $fd
    rst $38                                       ; $6515: $ff
    sbc d                                         ; $6516: $9a
    inc h                                         ; $6517: $24
    rrca                                          ; $6518: $0f
    sub e                                         ; $6519: $93
    jr jr_04d_6520                                ; $651a: $18 $04

    ld c, a                                       ; $651c: $4f
    and e                                         ; $651d: $a3
    jp hl                                         ; $651e: $e9


    db $fd                                        ; $651f: $fd

jr_04d_6520:
    rst $38                                       ; $6520: $ff
    sbc d                                         ; $6521: $9a
    inc h                                         ; $6522: $24
    rst $28                                       ; $6523: $ef
    inc a                                         ; $6524: $3c
    ld sp, $4f08                                  ; $6525: $31 $08 $4f
    and e                                         ; $6528: $a3
    jp hl                                         ; $6529: $e9


    db $fd                                        ; $652a: $fd
    rst $38                                       ; $652b: $ff
    sbc d                                         ; $652c: $9a
    inc h                                         ; $652d: $24
    rrca                                          ; $652e: $0f
    ld h, e                                       ; $652f: $63
    rst $18                                       ; $6530: $df
    ld b, d                                       ; $6531: $42
    ld c, a                                       ; $6532: $4f
    and e                                         ; $6533: $a3
    db $ed                                        ; $6534: $ed
    and l                                         ; $6535: $a5
    rst $30                                       ; $6536: $f7
    rst $38                                       ; $6537: $ff
    ld l, e                                       ; $6538: $6b
    sub d                                         ; $6539: $92
    inc a                                         ; $653a: $3c
    ld c, h                                       ; $653b: $4c
    ld h, d                                       ; $653c: $62
    db $10                                        ; $653d: $10
    ld c, a                                       ; $653e: $4f
    and e                                         ; $653f: $a3
    db $ed                                        ; $6540: $ed
    and l                                         ; $6541: $a5
    rst $30                                       ; $6542: $f7
    rst $38                                       ; $6543: $ff
    ld l, e                                       ; $6544: $6b
    sub d                                         ; $6545: $92
    cp h                                          ; $6546: $bc
    di                                            ; $6547: $f3
    call nz, $4f20                                ; $6548: $c4 $20 $4f
    and e                                         ; $654b: $a3
    db $ed                                        ; $654c: $ed
    and l                                         ; $654d: $a5
    rst $30                                       ; $654e: $f7
    rst $38                                       ; $654f: $ff
    ld l, e                                       ; $6550: $6b
    sub d                                         ; $6551: $92
    inc a                                         ; $6552: $3c
    adc h                                         ; $6553: $8c
    ld a, l                                       ; $6554: $7d
    dec bc                                        ; $6555: $0b
    ld bc, $2420                                  ; $6556: $01 $20 $24
    dec d                                         ; $6559: $15
    ld h, d                                       ; $655a: $62
    xor a                                         ; $655b: $af
    add hl, de                                    ; $655c: $19
    ld h, $31                                     ; $655d: $26 $31
    ld [$2420], sp                                ; $655f: $08 $20 $24
    dec d                                         ; $6562: $15
    ld h, d                                       ; $6563: $62
    xor a                                         ; $6564: $af
    reti                                          ; $6565: $d9


    ld a, c                                       ; $6566: $79
    ld h, d                                       ; $6567: $62
    db $10                                        ; $6568: $10
    jr nz, jr_04d_658f                            ; $6569: $20 $24

    dec d                                         ; $656b: $15
    ld h, d                                       ; $656c: $62
    xor a                                         ; $656d: $af
    add hl, de                                    ; $656e: $19
    add $be                                       ; $656f: $c6 $be
    add l                                         ; $6571: $85
    nop                                           ; $6572: $00
    sbc b                                         ; $6573: $98
    xor a                                         ; $6574: $af
    xor b                                         ; $6575: $a8
    ld l, d                                       ; $6576: $6a
    ld a, e                                       ; $6577: $7b
    inc de                                        ; $6578: $13
    ld a, [hl-]                                   ; $6579: $3a
    ld d, b                                       ; $657a: $50
    and c                                         ; $657b: $a1
    ld e, a                                       ; $657c: $5f
    sub e                                         ; $657d: $93
    dec bc                                        ; $657e: $0b
    ld bc, $4ca0                                  ; $657f: $01 $a0 $4c
    jp z, $e350                                   ; $6582: $ca $50 $e3

    and [hl]                                      ; $6585: $a6
    add a                                         ; $6586: $87
    ld sp, hl                                     ; $6587: $f9
    and [hl]                                      ; $6588: $a6
    db $d3                                        ; $6589: $d3
    sbc a                                         ; $658a: $9f
    add l                                         ; $658b: $85
    nop                                           ; $658c: $00
    and b                                         ; $658d: $a0
    ld c, h                                       ; $658e: $4c

jr_04d_658f:
    jp z, $e350                                   ; $658f: $ca $50 $e3

    and [hl]                                      ; $6592: $a6
    rlca                                          ; $6593: $07
    jp c, $dfb4                                   ; $6594: $da $b4 $df

    adc h                                         ; $6597: $8c
    nop                                           ; $6598: $00
    ldh [$c2], a                                  ; $6599: $e0 $c2
    ei                                            ; $659b: $fb
    ld [hl], d                                    ; $659c: $72
    scf                                           ; $659d: $37
    sub l                                         ; $659e: $95
    db $e4                                        ; $659f: $e4
    ld h, c                                       ; $65a0: $61
    inc [hl]                                      ; $65a1: $34
    ld e, [hl]                                    ; $65a2: $5e
    ccf                                           ; $65a3: $3f
    ret                                           ; $65a4: $c9


    ld [$93a0], sp                                ; $65a5: $08 $a0 $93
    ld d, h                                       ; $65a8: $54
    sub d                                         ; $65a9: $92
    rlca                                          ; $65aa: $07
    ret z                                         ; $65ab: $c8

    ld c, $4c                                     ; $65ac: $0e $4c
    dec h                                         ; $65ae: $25
    add hl, sp                                    ; $65af: $39
    adc d                                         ; $65b0: $8a
    ld [hl+], a                                   ; $65b1: $22
    rst $20                                       ; $65b2: $e7
    ret                                           ; $65b3: $c9


Jump_04d_65b4:
    or h                                          ; $65b4: $b4
    ld [$f15d], a                                 ; $65b5: $ea $5d $f1
    ret c                                         ; $65b8: $d8

    ccf                                           ; $65b9: $3f
    jp c, $af67                                   ; $65ba: $da $67 $af

    sbc d                                         ; $65bd: $9a
    ldh a, [$aa]                                  ; $65be: $f0 $aa
    ld l, e                                       ; $65c0: $6b
    sbc $e6                                       ; $65c1: $de $e6
    ld a, a                                       ; $65c3: $7f
    adc $34                                       ; $65c4: $ce $34
    db $fd                                        ; $65c6: $fd
    pop de                                        ; $65c7: $d1
    dec sp                                        ; $65c8: $3b
    add h                                         ; $65c9: $84
    dec a                                         ; $65ca: $3d
    ld [bc], a                                    ; $65cb: $02
    rst $20                                       ; $65cc: $e7
    ret                                           ; $65cd: $c9


    or h                                          ; $65ce: $b4
    ld [$f15d], a                                 ; $65cf: $ea $5d $f1
    sbc b                                         ; $65d2: $98
    rst $18                                       ; $65d3: $df
    rst $38                                       ; $65d4: $ff
    ei                                            ; $65d5: $fb
    ld c, b                                       ; $65d6: $48
    sub c                                         ; $65d7: $91
    ld a, a                                       ; $65d8: $7f
    sub l                                         ; $65d9: $95
    adc a                                         ; $65da: $8f
    add [hl]                                      ; $65db: $86
    dec e                                         ; $65dc: $1d
    dec l                                         ; $65dd: $2d
    ld [hl], l                                    ; $65de: $75
    ld [hl], c                                    ; $65df: $71
    ld [hl], e                                    ; $65e0: $73
    adc b                                         ; $65e1: $88
    ld a, [de]                                    ; $65e2: $1a
    ld [hl], a                                    ; $65e3: $77
    ld [$fb95], a                                 ; $65e4: $ea $95 $fb
    ld c, d                                       ; $65e7: $4a
    db $f4                                        ; $65e8: $f4
    ld b, e                                       ; $65e9: $43
    ld l, h                                       ; $65ea: $6c
    call Call_04d_4c86                            ; $65eb: $cd $86 $4c
    dec sp                                        ; $65ee: $3b
    ld a, d                                       ; $65ef: $7a
    sbc $e6                                       ; $65f0: $de $e6
    ld a, a                                       ; $65f2: $7f
    adc $34                                       ; $65f3: $ce $34
    adc l                                         ; $65f5: $8d
    cpl                                           ; $65f6: $2f
    db $ec                                        ; $65f7: $ec
    ld de, $c9e7                                  ; $65f8: $11 $e7 $c9
    ld c, b                                       ; $65fb: $48
    ret                                           ; $65fc: $c9


    xor [hl]                                      ; $65fd: $ae
    ld a, b                                       ; $65fe: $78
    adc h                                         ; $65ff: $8c
    jr jr_04d_664c                                ; $6600: $18 $4a

    ld l, e                                       ; $6602: $6b
    adc c                                         ; $6603: $89
    ret c                                         ; $6604: $d8

    ld [de], a                                    ; $6605: $12
    adc b                                         ; $6606: $88
    nop                                           ; $6607: $00
    ld c, a                                       ; $6608: $4f
    adc a                                         ; $6609: $8f
    ld c, a                                       ; $660a: $4f
    inc c                                         ; $660b: $0c
    and l                                         ; $660c: $a5
    ld hl, $fbf3                                  ; $660d: $21 $f3 $fb
    rst $38                                       ; $6610: $ff
    adc $6f                                       ; $6611: $ce $6f
    add hl, hl                                    ; $6613: $29
    inc hl                                        ; $6614: $23
    xor d                                         ; $6615: $aa
    rrca                                          ; $6616: $0f
    or c                                          ; $6617: $b1
    ld hl, $7b67                                  ; $6618: $21 $67 $7b
    xor b                                         ; $661b: $a8
    ld l, [hl]                                    ; $661c: $6e
    ld d, $44                                     ; $661d: $16 $44
    adc a                                         ; $661f: $8f
    ld c, e                                       ; $6620: $4b
    ld c, l                                       ; $6621: $4d
    xor e                                         ; $6622: $ab
    ld e, [hl]                                    ; $6623: $5e
    ld a, l                                       ; $6624: $7d
    db $db                                        ; $6625: $db
    ld d, a                                       ; $6626: $57
    dec l                                         ; $6627: $2d
    add a                                         ; $6628: $87
    ei                                            ; $6629: $fb
    add h                                         ; $662a: $84
    rst $30                                       ; $662b: $f7
    db $fd                                        ; $662c: $fd
    ld c, e                                       ; $662d: $4b
    and h                                         ; $662e: $a4
    call nz, $b2c6                                ; $662f: $c4 $c6 $b2
    rra                                           ; $6632: $1f
    rst $38                                       ; $6633: $ff
    rst $00                                       ; $6634: $c7
    cp b                                          ; $6635: $b8
    ld d, e                                       ; $6636: $53
    daa                                           ; $6637: $27
    adc $1e                                       ; $6638: $ce $1e
    ld bc, $b1e7                                  ; $663a: $01 $e7 $b1
    jr @+$79                                      ; $663d: $18 $77

    ld [$fb95], a                                 ; $663f: $ea $95 $fb
    ld l, h                                       ; $6642: $6c
    db $ec                                        ; $6643: $ec
    adc d                                         ; $6644: $8a
    rst $00                                       ; $6645: $c7
    cp b                                          ; $6646: $b8
    dec hl                                        ; $6647: $2b
    sub d                                         ; $6648: $92
    daa                                           ; $6649: $27
    cp h                                          ; $664a: $bc
    rst $28                                       ; $664b: $ef

jr_04d_664c:
    ld e, a                                       ; $664c: $5f
    ld [hl+], a                                   ; $664d: $22
    dec h                                         ; $664e: $25
    ld [hl], $e0                                  ; $664f: $36 $e0
    adc $63                                       ; $6651: $ce $63
    jp c, $8bd1                                   ; $6653: $da $d1 $8b

    add c                                         ; $6656: $81
    db $fd                                        ; $6657: $fd
    rst $38                                       ; $6658: $ff
    ld [$3625], a                                 ; $6659: $ea $25 $36
    ld a, [hl-]                                   ; $665c: $3a
    rrca                                          ; $665d: $0f
    ld h, e                                       ; $665e: $63
    sbc e                                         ; $665f: $9b
    rst $38                                       ; $6660: $ff
    or e                                          ; $6661: $b3
    sub a                                         ; $6662: $97
    sbc [hl]                                      ; $6663: $9e
    db $d3                                        ; $6664: $d3
    adc c                                         ; $6665: $89
    ld e, a                                       ; $6666: $5f
    ld [hl], d                                    ; $6667: $72
    or [hl]                                       ; $6668: $b6
    ld l, h                                       ; $6669: $6c
    add sp, $6c                                   ; $666a: $e8 $6c
    or d                                          ; $666c: $b2
    inc e                                         ; $666d: $1c
    dec a                                         ; $666e: $3d
    sbc h                                         ; $666f: $9c
    ld e, a                                       ; $6670: $5f
    ld h, $ac                                     ; $6671: $26 $ac
    rst $28                                       ; $6673: $ef
    ld hl, $8f70                                  ; $6674: $21 $70 $8f
    ld l, e                                       ; $6677: $6b
    adc d                                         ; $6678: $8a
    rst $28                                       ; $6679: $ef
    ld e, l                                       ; $667a: $5d
    add hl, de                                    ; $667b: $19
    cp a                                          ; $667c: $bf
    inc e                                         ; $667d: $1c
    dec a                                         ; $667e: $3d
    cp a                                          ; $667f: $bf
    rst $38                                       ; $6680: $ff
    xor a                                         ; $6681: $af
    call c, $9367                                 ; $6682: $dc $67 $93
    ld [hl], c                                    ; $6685: $71
    ld a, h                                       ; $6686: $7c
    cpl                                           ; $6687: $2f
    ld h, h                                       ; $6688: $64
    sbc $e6                                       ; $6689: $de $e6
    rst $38                                       ; $668b: $ff
    db $ec                                        ; $668c: $ec
    and l                                         ; $668d: $a5
    jp Jump_000_279d                              ; $668e: $c3 $9d $27


    inc hl                                        ; $6691: $23
    dec h                                         ; $6692: $25
    ld d, e                                       ; $6693: $53
    db $fc                                        ; $6694: $fc
    ld a, [hl-]                                   ; $6695: $3a
    ld de, $bfdf                                  ; $6696: $11 $df $bf
    ld e, $f3                                     ; $6699: $1e $f3
    ei                                            ; $669b: $fb
    rst $38                                       ; $669c: $ff
    inc c                                         ; $669d: $0c
    sbc l                                         ; $669e: $9d
    ld c, l                                       ; $669f: $4d
    and [hl]                                      ; $66a0: $a6
    rst $18                                       ; $66a1: $df
    rst $38                                       ; $66a2: $ff
    rst $08                                       ; $66a3: $cf
    halt                                          ; $66a4: $76
    ld b, l                                       ; $66a5: $45
    ld c, d                                       ; $66a6: $4a
    ld h, [hl]                                    ; $66a7: $66
    sub e                                         ; $66a8: $93
    ld de, $6943                                  ; $66a9: $11 $43 $69
    db $f4                                        ; $66ac: $f4
    xor [hl]                                      ; $66ad: $ae
    call z, $ffef                                 ; $66ae: $cc $ef $ff
    and e                                         ; $66b1: $a3
    pop bc                                        ; $66b2: $c1
    add h                                         ; $66b3: $84
    ld [$f50f], sp                                ; $66b4: $08 $0f $f5
    ccf                                           ; $66b7: $3f
    ld a, a                                       ; $66b8: $7f
    or [hl]                                       ; $66b9: $b6
    add a                                         ; $66ba: $87
    ld [$c166], a                                 ; $66bb: $ea $66 $c1
    sbc l                                         ; $66be: $9d
    rst $00                                       ; $66bf: $c7
    or h                                          ; $66c0: $b4
    and e                                         ; $66c1: $a3
    rla                                           ; $66c2: $17
    and e                                         ; $66c3: $a3
    dec a                                         ; $66c4: $3d
    or b                                          ; $66c5: $b0
    rst $38                                       ; $66c6: $ff
    ld e, a                                       ; $66c7: $5f
    cp l                                          ; $66c8: $bd
    call nz, $c346                                ; $66c9: $c4 $46 $c3
    db $ed                                        ; $66cc: $ed
    and c                                         ; $66cd: $a1
    ld h, h                                       ; $66ce: $64
    and [hl]                                      ; $66cf: $a6
    xor l                                         ; $66d0: $ad
    ld d, h                                       ; $66d1: $54
    adc a                                         ; $66d2: $8f

jr_04d_66d3:
    add $42                                       ; $66d3: $c6 $42
    and $6d                                       ; $66d5: $e6 $6d
    cp $cf                                        ; $66d7: $fe $cf
    ld e, [hl]                                    ; $66d9: $5e
    ld a, [$9f78]                                 ; $66da: $fa $78 $9f
    dec c                                         ; $66dd: $0d
    ld h, $1c                                     ; $66de: $26 $1c
    xor b                                         ; $66e0: $a8
    ldh a, [$5a]                                  ; $66e1: $f0 $5a
    rra                                           ; $66e3: $1f
    xor $c3                                       ; $66e4: $ee $c3
    ld sp, hl                                     ; $66e6: $f9
    pop de                                        ; $66e7: $d1
    ld h, b                                       ; $66e8: $60
    ld c, $e7                                     ; $66e9: $0e $e7
    rlca                                          ; $66eb: $07
    cp h                                          ; $66ec: $bc
    xor a                                         ; $66ed: $af
    jr z, jr_04d_66d3                             ; $66ee: $28 $e3

jr_04d_66f0:
    sbc [hl]                                      ; $66f0: $9e
    sub a                                         ; $66f1: $97
    ld l, $21                                     ; $66f2: $2e $21
    dec bc                                        ; $66f4: $0b
    adc $a3                                       ; $66f5: $ce $a3
    ld a, c                                       ; $66f7: $79
    add a                                         ; $66f8: $87
    ld [$e1e7], sp                                ; $66f9: $08 $e7 $e1
    set 1, [hl]                                   ; $66fc: $cb $ce
    rst $30                                       ; $66fe: $f7
    add h                                         ; $66ff: $84
    rst $30                                       ; $6700: $f7
    pop hl                                        ; $6701: $e1
    db $fc                                        ; $6702: $fc
    db $ec                                        ; $6703: $ec
    xor c                                         ; $6704: $a9
    dec sp                                        ; $6705: $3b
    inc b                                         ; $6706: $04
    ld b, d                                       ; $6707: $42
    adc b                                         ; $6708: $88
    nop                                           ; $6709: $00
    inc c                                         ; $670a: $0c
    ld sp, $61f6                                  ; $670b: $31 $f6 $61
    ld [hl], a                                    ; $670e: $77
    ld h, l                                       ; $670f: $65
    jp c, Jump_04d_67d1                           ; $6710: $da $d1 $67

    db $e3                                        ; $6713: $e3
    ld a, [$ffa0]                                 ; $6714: $fa $a0 $ff
    adc d                                         ; $6717: $8a
    ld a, [hl-]                                   ; $6718: $3a
    dec de                                        ; $6719: $1b
    dec c                                         ; $671a: $0d
    sbc c                                         ; $671b: $99
    adc d                                         ; $671c: $8a
    dec d                                         ; $671d: $15
    pop af                                        ; $671e: $f1
    dec h                                         ; $671f: $25
    jr c, jr_04d_66f0                             ; $6720: $38 $ce

    inc hl                                        ; $6722: $23
    rst $20                                       ; $6723: $e7
    pop hl                                        ; $6724: $e1
    set 3, [hl]                                   ; $6725: $cb $de
    push bc                                       ; $6727: $c5
    ld [hl], c                                    ; $6728: $71
    dec bc                                        ; $6729: $0b
    ld e, c                                       ; $672a: $59
    ld h, [hl]                                    ; $672b: $66
    adc c                                         ; $672c: $89
    cp l                                          ; $672d: $bd
    ld l, d                                       ; $672e: $6a
    ld [$55f6], a                                 ; $672f: $ea $f6 $55
    ld e, d                                       ; $6732: $5a
    ld hl, sp+$48                                 ; $6733: $f8 $48
    ret                                           ; $6735: $c9


jr_04d_6736:
    jr c, jr_04d_6736                             ; $6736: $38 $fe

    inc c                                         ; $6738: $0c
    ld bc, $5918                                  ; $6739: $01 $18 $59
    or e                                          ; $673c: $b3
    ld hl, $86cb                                  ; $673d: $21 $cb $86
    ld c, [hl]                                    ; $6740: $4e
    ld a, b                                       ; $6741: $78
    ld h, l                                       ; $6742: $65
    ld a, h                                       ; $6743: $7c
    ld e, [hl]                                    ; $6744: $5e
    ld a, l                                       ; $6745: $7d
    ld [hl], $1a                                  ; $6746: $36 $1a
    or d                                          ; $6748: $b2
    ld h, b                                       ; $6749: $60
    adc [hl]                                      ; $674a: $8e

jr_04d_674b:
    dec sp                                        ; $674b: $3b
    or l                                          ; $674c: $b5
    inc sp                                        ; $674d: $33
    rrca                                          ; $674e: $0f
    add hl, hl                                    ; $674f: $29
    sbc a                                         ; $6750: $9f
    dec c                                         ; $6751: $0d
    ccf                                           ; $6752: $3f
    ld b, e                                       ; $6753: $43
    ret nz                                        ; $6754: $c0

    ld hl, sp+$1e                                 ; $6755: $f8 $1e
    srl l                                         ; $6757: $cb $3d
    ld a, [hl-]                                   ; $6759: $3a
    ei                                            ; $675a: $fb
    inc l                                         ; $675b: $2c
    xor e                                         ; $675c: $ab
    ld a, l                                       ; $675d: $7d
    jp hl                                         ; $675e: $e9


    ldh a, [$fa]                                  ; $675f: $f0 $fa
    dec [hl]                                      ; $6761: $35
    xor $d4                                       ; $6762: $ee $d4
    bit 2, a                                      ; $6764: $cb $57
    sub [hl]                                      ; $6766: $96
    push hl                                       ; $6767: $e5
    sub d                                         ; $6768: $92
    db $10                                        ; $6769: $10
    dec l                                         ; $676a: $2d
    inc e                                         ; $676b: $1c
    ld a, $8f                                     ; $676c: $3e $8f
    nop                                           ; $676e: $00
    rst $20                                       ; $676f: $e7
    ret                                           ; $6770: $c9


    adc b                                         ; $6771: $88
    and c                                         ; $6772: $a1
    inc [hl]                                      ; $6773: $34
    ld a, d                                       ; $6774: $7a
    ld d, a                                       ; $6775: $57
    inc a                                         ; $6776: $3c
    ld h, $d1                                     ; $6777: $26 $d1
    di                                            ; $6779: $f3
    ei                                            ; $677a: $fb
    rst $38                                       ; $677b: $ff
    db $f4                                        ; $677c: $f4
    ld a, [$c87a]                                 ; $677d: $fa $7a $c8
    inc c                                         ; $6780: $0c
    sbc l                                         ; $6781: $9d
    ld c, l                                       ; $6782: $4d
    halt                                          ; $6783: $76
    push bc                                       ; $6784: $c5
    ld h, e                                       ; $6785: $63
    ld e, d                                       ; $6786: $5a
    push af                                       ; $6787: $f5
    db $ec                                        ; $6788: $ec
    sub l                                         ; $6789: $95
    jp hl                                         ; $678a: $e9


    push af                                       ; $678b: $f5
    ld [hl], l                                    ; $678c: $75
    ld h, c                                       ; $678d: $61
    and l                                         ; $678e: $a5
    ld c, b                                       ; $678f: $48
    ld a, h                                       ; $6790: $7c
    adc b                                         ; $6791: $88
    nop                                           ; $6792: $00
    and b                                         ; $6793: $a0
    ld a, e                                       ; $6794: $7b
    ldh [$8c], a                                  ; $6795: $e0 $8c
    ld a, e                                       ; $6797: $7b
    db $f4                                        ; $6798: $f4
    and e                                         ; $6799: $a3
    ld bc, $5f6d                                  ; $679a: $01 $6d $5f
    ld a, $fe                                     ; $679d: $3e $fe
    rst $08                                       ; $679f: $cf
    and h                                         ; $67a0: $a4
    ldh a, [$e9]                                  ; $67a1: $f0 $e9
    add a                                         ; $67a3: $87
    ld a, b                                       ; $67a4: $78
    push af                                       ; $67a5: $f5
    db $f4                                        ; $67a6: $f4
    ld l, e                                       ; $67a7: $6b
    ld b, a                                       ; $67a8: $47

Call_04d_67a9:
    ld c, h                                       ; $67a9: $4c
    rst $30                                       ; $67aa: $f7
    or l                                          ; $67ab: $b5
    and [hl]                                      ; $67ac: $a6
    ld b, e                                       ; $67ad: $43
    ld a, [c]                                     ; $67ae: $f2
    ld a, [c]                                     ; $67af: $f2
    ld c, a                                       ; $67b0: $4f
    inc e                                         ; $67b1: $1c
    ld [hl+], a                                   ; $67b2: $22
    ld h, b                                       ; $67b3: $60
    jp hl                                         ; $67b4: $e9


    db $e4                                        ; $67b5: $e4
    xor $87                                       ; $67b6: $ee $87
    ld d, a                                       ; $67b8: $57
    cpl                                           ; $67b9: $2f
    jr c, jr_04d_674b                             ; $67ba: $38 $8f

    ld e, $ed                                     ; $67bc: $1e $ed
    dec a                                         ; $67be: $3d
    sub h                                         ; $67bf: $94
    ld [$cf6b], a                                 ; $67c0: $ea $6b $cf
    sub [hl]                                      ; $67c3: $96
    ld sp, hl                                     ; $67c4: $f9
    dec e                                         ; $67c5: $1d
    dec a                                         ; $67c6: $3d
    xor l                                         ; $67c7: $ad
    ld h, h                                       ; $67c8: $64
    rst $38                                       ; $67c9: $ff
    db $10                                        ; $67ca: $10
    sub l                                         ; $67cb: $95
    ld a, l                                       ; $67cc: $7d
    jp hl                                         ; $67cd: $e9


    ld [hl+], a                                   ; $67ce: $22
    db $d3                                        ; $67cf: $d3
    xor a                                         ; $67d0: $af

Jump_04d_67d1:
    sbc l                                         ; $67d1: $9d
    ld e, [hl]                                    ; $67d2: $5e
    ld e, a                                       ; $67d3: $5f
    rrca                                          ; $67d4: $0f
    add c                                         ; $67d5: $81
    ld [$7ba0], sp                                ; $67d6: $08 $a0 $7b
    rrca                                          ; $67d9: $0f
    and l                                         ; $67da: $a5
    ld a, [$e9da]                                 ; $67db: $fa $da $e9
    add a                                         ; $67de: $87
    ld a, b                                       ; $67df: $78
    push af                                       ; $67e0: $f5
    ld [hl], b                                    ; $67e1: $70
    ld a, [hl]                                    ; $67e2: $7e
    pop de                                        ; $67e3: $d1
    cp e                                          ; $67e4: $bb
    dec hl                                        ; $67e5: $2b
    or c                                          ; $67e6: $b1
    ld e, l                                       ; $67e7: $5d
    dec sp                                        ; $67e8: $3b
    call nz, $ac86                                ; $67e9: $c4 $86 $ac
    db $f4                                        ; $67ec: $f4
    and l                                         ; $67ed: $a5
    ld e, c                                       ; $67ee: $59
    ld c, d                                       ; $67ef: $4a
    ld c, c                                       ; $67f0: $49
    reti                                          ; $67f1: $d9


    db $10                                        ; $67f2: $10
    adc b                                         ; $67f3: $88
    nop                                           ; $67f4: $00
    and b                                         ; $67f5: $a0
    ld a, e                                       ; $67f6: $7b
    rrca                                          ; $67f7: $0f
    and l                                         ; $67f8: $a5
    ld a, [$99da]                                 ; $67f9: $fa $da $99
    sub h                                         ; $67fc: $94
    ld [hl], $d0                                  ; $67fd: $36 $d0
    dec a                                         ; $67ff: $3d
    ldh [$7d], a                                  ; $6800: $e0 $7d
    ld [hl], c                                    ; $6802: $71
    call Call_000_3218                            ; $6803: $cd $18 $32
    xor l                                         ; $6806: $ad
    ld a, d                                       ; $6807: $7a
    ld a, [$5e21]                                 ; $6808: $fa $21 $5e
    ld a, $9c                                     ; $680b: $3e $9c
    ld e, a                                       ; $680d: $5f
    inc [hl]                                      ; $680e: $34
    ld b, h                                       ; $680f: $44
    rrca                                          ; $6810: $0f
    push af                                       ; $6811: $f5
    ccf                                           ; $6812: $3f
    ld a, a                                       ; $6813: $7f
    or [hl]                                       ; $6814: $b6
    add a                                         ; $6815: $87
    ld [$b166], a                                 ; $6816: $ea $66 $b1
    ld b, a                                       ; $6819: $47
    ret nz                                        ; $681a: $c0

    adc l                                         ; $681b: $8d
    dec e                                         ; $681c: $1d
    dec [hl]                                      ; $681d: $35
    xor l                                         ; $681e: $ad
    adc h                                         ; $681f: $8c
    sbc h                                         ; $6820: $9c
    adc l                                         ; $6821: $8d
    or $c0                                        ; $6822: $f6 $c0
    add hl, de                                    ; $6824: $19
    rst $30                                       ; $6825: $f7
    ld l, b                                       ; $6826: $68
    cp b                                          ; $6827: $b8
    add c                                         ; $6828: $81
    cp [hl]                                       ; $6829: $be
    xor $93                                       ; $682a: $ee $93
    and d                                         ; $682c: $a2
    or d                                          ; $682d: $b2
    and e                                         ; $682e: $a3
    rlca                                          ; $682f: $07
    cp h                                          ; $6830: $bc
    cpl                                           ; $6831: $2f
    xor [hl]                                      ; $6832: $ae
    add hl, de                                    ; $6833: $19
    ld b, e                                       ; $6834: $43
    jr nz, jr_04d_6839                            ; $6835: $20 $02

    ld c, a                                       ; $6837: $4f
    rst $28                                       ; $6838: $ef

jr_04d_6839:
    db $f4                                        ; $6839: $f4
    ei                                            ; $683a: $fb
    rst $38                                       ; $683b: $ff
    call nc, Call_04d_52d1                        ; $683c: $d4 $d1 $52
    inc hl                                        ; $683f: $23
    add [hl]                                      ; $6840: $86
    jp nc, $df9a                                  ; $6841: $d2 $9a $df

    rst $38                                       ; $6844: $ff
    rst $30                                       ; $6845: $f7
    ld d, b                                       ; $6846: $50
    db $dd                                        ; $6847: $dd
    xor h                                         ; $6848: $ac
    inc a                                         ; $6849: $3c
    cp l                                          ; $684a: $bd
    cp [hl]                                       ; $684b: $be
    ld a, $49                                     ; $684c: $3e $49
    jr nz, jr_04d_6852                            ; $684e: $20 $02

    rrca                                          ; $6850: $0f
    push de                                       ; $6851: $d5

jr_04d_6852:
    sub e                                         ; $6852: $93
    dec sp                                        ; $6853: $3b
    xor l                                         ; $6854: $ad
    inc h                                         ; $6855: $24
    ld c, a                                       ; $6856: $4f
    ld e, b                                       ; $6857: $58
    add hl, hl                                    ; $6858: $29
    ld [de], a                                    ; $6859: $12
    rst $38                                       ; $685a: $ff
    ld l, h                                       ; $685b: $6c
    ld sp, hl                                     ; $685c: $f9
    or $23                                        ; $685d: $f6 $23
    inc b                                         ; $685f: $04
    rrca                                          ; $6860: $0f
    ld b, a                                       ; $6861: $47
    ld c, a                                       ; $6862: $4f
    xor e                                         ; $6863: $ab
    ld e, $b3                                     ; $6864: $1e $b3
    ld h, [hl]                                    ; $6866: $66
    ld b, e                                       ; $6867: $43
    ldh [$9e], a                                  ; $6868: $e0 $9e
    ld e, l                                       ; $686a: $5d
    ld c, $99                                     ; $686b: $0e $99
    ld a, [hl-]                                   ; $686d: $3a
    cp $8f                                        ; $686e: $fe $8f
    sbc [hl]                                      ; $6870: $9e
    adc l                                         ; $6871: $8d
    sbc c                                         ; $6872: $99
    inc d                                         ; $6873: $14
    ret                                           ; $6874: $c9


    db $fc                                        ; $6875: $fc
    db $e4                                        ; $6876: $e4
    cp [hl]                                       ; $6877: $be
    xor h                                         ; $6878: $ac
    add a                                         ; $6879: $87
    cp a                                          ; $687a: $bf
    xor h                                         ; $687b: $ac
    sub a                                         ; $687c: $97
    ld e, l                                       ; $687d: $5d
    ld [hl], $74                                  ; $687e: $36 $74
    ld a, [$de1d]                                 ; $6880: $fa $1d $de
    push hl                                       ; $6883: $e5
    ld h, l                                       ; $6884: $65
    ld h, e                                       ; $6885: $63
    add [hl]                                      ; $6886: $86
    adc [hl]                                      ; $6887: $8e
    dec sp                                        ; $6888: $3b
    ld [hl], l                                    ; $6889: $75
    ld [c], a                                     ; $688a: $e2
    db $10                                        ; $688b: $10
    ld bc, $fe80                                  ; $688c: $01 $80 $fe
    rst $30                                       ; $688f: $f7
    jp hl                                         ; $6890: $e9


    pop de                                        ; $6891: $d1
    and h                                         ; $6892: $a4
    ld a, d                                       ; $6893: $7a
    ld a, d                                       ; $6894: $7a
    ld [hl], l                                    ; $6895: $75
    db $ed                                        ; $6896: $ed
    ld l, $5f                                     ; $6897: $2e $5f
    sbc c                                         ; $6899: $99
    ld l, c                                       ; $689a: $69
    dec hl                                        ; $689b: $2b
    ld d, a                                       ; $689c: $57
    inc d                                         ; $689d: $14
    call c, Call_04d_569e                         ; $689e: $dc $9e $56
    cpl                                           ; $68a1: $2f
    set 6, c                                      ; $68a2: $cb $f1
    rst $38                                       ; $68a4: $ff
    ld c, h                                       ; $68a5: $4c
    ld c, d                                       ; $68a6: $4a
    dec de                                        ; $68a7: $1b
    ld [hl], a                                    ; $68a8: $77
    ld a, [$d1cc]                                 ; $68a9: $fa $cc $d1
    or b                                          ; $68ac: $b0
    and e                                         ; $68ad: $a3
    ld d, a                                       ; $68ae: $57
    ld b, c                                       ; $68af: $41
    inc b                                         ; $68b0: $04
    ld c, a                                       ; $68b1: $4f
    xor e                                         ; $68b2: $ab
    sub a                                         ; $68b3: $97
    push hl                                       ; $68b4: $e5
    ld hl, sp-$41                                 ; $68b5: $f8 $bf
    ld h, [hl]                                    ; $68b7: $66
    ld d, d                                       ; $68b8: $52
    jp c, $fe34                                   ; $68b9: $da $34 $fe

    rst $38                                       ; $68bc: $ff
    ld e, l                                       ; $68bd: $5d
    call Call_000_10e0                            ; $68be: $cd $e0 $10
    ld bc, $0d20                                  ; $68c1: $01 $20 $0d
    sbc l                                         ; $68c4: $9d
    inc h                                         ; $68c5: $24

Call_04d_68c6:
    ld h, a                                       ; $68c6: $67
    ld a, e                                       ; $68c7: $7b
    xor b                                         ; $68c8: $a8
    ld l, [hl]                                    ; $68c9: $6e
    ld d, $44                                     ; $68ca: $16 $44
    rrca                                          ; $68cc: $0f
    and l                                         ; $68cd: $a5
    ld a, [$f65a]                                 ; $68ce: $fa $5a $f6
    db $db                                        ; $68d1: $db
    db $d3                                        ; $68d2: $d3
    ld b, e                                       ; $68d3: $43
    cp h                                          ; $68d4: $bc
    add [hl]                                      ; $68d5: $86
    di                                            ; $68d6: $f3
    and e                                         ; $68d7: $a3
    ld d, a                                       ; $68d8: $57
    or c                                          ; $68d9: $b1
    ld b, a                                       ; $68da: $47
    jr jr_04d_6936                                ; $68db: $18 $59

    ld a, [$0dd1]                                 ; $68dd: $fa $d1 $0d
    or a                                          ; $68e0: $b7
    di                                            ; $68e1: $f3
    sub b                                         ; $68e2: $90
    ld l, c                                       ; $68e3: $69
    ld b, a                                       ; $68e4: $47
    rst $28                                       ; $68e5: $ef
    daa                                           ; $68e6: $27
    add hl, hl                                    ; $68e7: $29
    ld d, d                                       ; $68e8: $52
    or d                                          ; $68e9: $b2
    and e                                         ; $68ea: $a3
    sub a                                         ; $68eb: $97
    db $fd                                        ; $68ec: $fd
    db $10                                        ; $68ed: $10
    ld h, l                                       ; $68ee: $65
    ld hl, $1802                                  ; $68ef: $21 $02 $18
    ld e, c                                       ; $68f2: $59
    ld a, [$7dd1]                                 ; $68f3: $fa $d1 $7d
    ld [hl], $66                                  ; $68f6: $36 $66
    xor c                                         ; $68f8: $a9
    ld a, c                                       ; $68f9: $79
    push af                                       ; $68fa: $f5
    jp nc, $b5d5                                  ; $68fb: $d2 $d5 $b5

Call_04d_68fe:
    and b                                         ; $68fe: $a0
    add $57                                       ; $68ff: $c6 $57
    ld a, d                                       ; $6901: $7a
    ld a, [hl-]                                   ; $6902: $3a
    cp h                                          ; $6903: $bc
    cp [hl]                                       ; $6904: $be
    ld e, h                                       ; $6905: $5c
    ld d, c                                       ; $6906: $51
    push de                                       ; $6907: $d5
    jp Jump_04d_7df9                              ; $6908: $c3 $f9 $7d


    ld e, [hl]                                    ; $690b: $5e
    halt                                          ; $690c: $76
    ld h, a                                       ; $690d: $67
    ld b, e                                       ; $690e: $43
    and [hl]                                      ; $690f: $a6
    dec e                                         ; $6910: $1d
    cp l                                          ; $6911: $bd
    sbc a                                         ; $6912: $9f
    and h                                         ; $6913: $a4
    ld c, b                                       ; $6914: $48
    add hl, bc                                    ; $6915: $09
    ld b, h                                       ; $6916: $44
    rst $28                                       ; $6917: $ef
    cp l                                          ; $6918: $bd
    ld a, c                                       ; $6919: $79
    or [hl]                                       ; $691a: $b6
    rst $30                                       ; $691b: $f7
    sbc $3a                                       ; $691c: $de $3a
    db $db                                        ; $691e: $db
    ld a, e                                       ; $691f: $7b
    ld l, a                                       ; $6920: $6f
    ld b, e                                       ; $6921: $43
    ld [$971f], sp                                ; $6922: $08 $1f $97
    sbc d                                         ; $6925: $9a
    add $3c                                       ; $6926: $c6 $3c
    ld a, $1e                                     ; $6928: $3e $1e
    cp l                                          ; $692a: $bd
    add sp, $65                                   ; $692b: $e8 $65
    ld a, [hl]                                    ; $692d: $7e
    sbc h                                         ; $692e: $9c
    ld l, c                                       ; $692f: $69
    rra                                           ; $6930: $1f
    or e                                          ; $6931: $b3
    call nc, $eab4                                ; $6932: $d4 $b4 $ea
    push af                                       ; $6935: $f5

jr_04d_6936:
    ld b, c                                       ; $6936: $41
    and h                                         ; $6937: $a4
    ld a, h                                       ; $6938: $7c
    db $e4                                        ; $6939: $e4
    ld d, a                                       ; $693a: $57
    ei                                            ; $693b: $fb
    ld l, h                                       ; $693c: $6c
    ld c, h                                       ; $693d: $4c
    dec sp                                        ; $693e: $3b
    ld a, d                                       ; $693f: $7a
    sbc [hl]                                      ; $6940: $9e
    db $e4                                        ; $6941: $e4
    db $10                                        ; $6942: $10
    xor a                                         ; $6943: $af
    sbc a                                         ; $6944: $9f
    rst $10                                       ; $6945: $d7
    ld c, c                                       ; $6946: $49
    ld a, [$b44a]                                 ; $6947: $fa $4a $b4
    inc d                                         ; $694a: $14
    add h                                         ; $694b: $84
    ldh a, [$bd]                                  ; $694c: $f0 $bd
    ld [hl], a                                    ; $694e: $77
    adc $f6                                       ; $694f: $ce $f6
    sbc $bb                                       ; $6951: $de $bb
    ld h, a                                       ; $6953: $67
    ld a, e                                       ; $6954: $7b
    rst $28                                       ; $6955: $ef
    dec a                                         ; $6956: $3d
    ld [$0221], sp                                ; $6957: $08 $21 $02
    rst $20                                       ; $695a: $e7
    ret                                           ; $695b: $c9


    cp b                                          ; $695c: $b8
    sbc e                                         ; $695d: $9b
    ld [hl+], a                                   ; $695e: $22
    and e                                         ; $695f: $a3
    ld d, a                                       ; $6960: $57
    xor l                                         ; $6961: $ad
    call c, $85e7                                 ; $6962: $dc $e7 $85
    db $e3                                        ; $6965: $e3
    or l                                          ; $6966: $b5
    ld a, $88                                     ; $6967: $3e $88
    ld e, h                                       ; $6969: $5c
    ld d, c                                       ; $696a: $51
    ld hl, $37ec                                  ; $696b: $21 $ec $37
    sub b                                         ; $696e: $90
    add [hl]                                      ; $696f: $86
    xor $8a                                       ; $6970: $ee $8a
    rst $00                                       ; $6972: $c7
    db $fc                                        ; $6973: $fc
    cp $9f                                        ; $6974: $fe $9f
    ld l, $52                                     ; $6976: $2e $52
    db $e3                                        ; $6978: $e3
    ld c, [hl]                                    ; $6979: $4e
    db $dd                                        ; $697a: $dd
    add a                                         ; $697b: $87
    adc h                                         ; $697c: $8c
    ld e, c                                       ; $697d: $59
    ld l, d                                       ; $697e: $6a
    ld e, d                                       ; $697f: $5a
    push af                                       ; $6980: $f5
    ld a, [$5220]                                 ; $6981: $fa $20 $52
    ld a, $f2                                     ; $6984: $3e $f2
    xor e                                         ; $6986: $ab
    dec e                                         ; $6987: $1d
    ld [hl+], a                                   ; $6988: $22
    jr jr_04d_69e4                                ; $6989: $18 $59

    ld a, [$7dd1]                                 ; $698b: $fa $d1 $7d
    ld [hl], $66                                  ; $698e: $36 $66
    xor c                                         ; $6990: $a9
    ld l, c                                       ; $6991: $69
    push de                                       ; $6992: $d5
    db $eb                                        ; $6993: $eb
    jp z, $933e                                   ; $6994: $ca $3e $93

    jp nc, Jump_04d_4996                          ; $6997: $d2 $96 $49

    call $216b                                    ; $699a: $cd $6b $21
    inc hl                                        ; $699d: $23
    ld b, $c7                                     ; $699e: $06 $c7
    ld h, a                                       ; $69a0: $67
    sbc d                                         ; $69a1: $9a
    and [hl]                                      ; $69a2: $a6
    inc de                                        ; $69a3: $13
    ld hl, $03d9                                  ; $69a4: $21 $d9 $03
    ld [hl+], a                                   ; $69a7: $22
    rrca                                          ; $69a8: $0f
    push de                                       ; $69a9: $d5
    cp e                                          ; $69aa: $bb
    ld [c], a                                     ; $69ab: $e2
    ld sp, $76bf                                  ; $69ac: $31 $bf $76
    push hl                                       ; $69af: $e5
    ld a, $bc                                     ; $69b0: $3e $bc
    bit 5, e                                      ; $69b2: $cb $6b
    sub d                                         ; $69b4: $92
    sbc h                                         ; $69b5: $9c
    adc l                                         ; $69b6: $8d
    ld e, c                                       ; $69b7: $59
    ld l, d                                       ; $69b8: $6a
    ld a, [$5e21]                                 ; $69b9: $fa $21 $5e
    dec a                                         ; $69bc: $3d
    sbc h                                         ; $69bd: $9c
    ld e, a                                       ; $69be: $5f
    ret z                                         ; $69bf: $c8

    db $f4                                        ; $69c0: $f4
    ld c, e                                       ; $69c1: $4b
    db $fc                                        ; $69c2: $fc
    xor d                                         ; $69c3: $aa
    dec h                                         ; $69c4: $25
    ld c, d                                       ; $69c5: $4a
    db $fd                                        ; $69c6: $fd
    add d                                         ; $69c7: $82
    ld [$ab4f], sp                                ; $69c8: $08 $4f $ab
    cp c                                          ; $69cb: $b9
    ld d, e                                       ; $69cc: $53
    ld c, a                                       ; $69cd: $4f
    pop af                                        ; $69ce: $f1
    dec a                                         ; $69cf: $3d
    sbc e                                         ; $69d0: $9b
    call z, $d250                                 ; $69d1: $cc $50 $d2
    ld d, a                                       ; $69d4: $57
    call nc, $f8b4                                ; $69d5: $d4 $b4 $f8
    cp [hl]                                       ; $69d8: $be
    call z, $be3c                                 ; $69d9: $cc $3c $be
    cp $68                                        ; $69dc: $fe $68
    rst $20                                       ; $69de: $e7
    pop hl                                        ; $69df: $e1
    dec sp                                        ; $69e0: $3b
    ld a, d                                       ; $69e1: $7a
    ld d, a                                       ; $69e2: $57
    inc a                                         ; $69e3: $3c

jr_04d_69e4:
    sub [hl]                                      ; $69e4: $96
    rrca                                          ; $69e5: $0f
    ld [de], a                                    ; $69e6: $12
    db $ed                                        ; $69e7: $ed
    db $10                                        ; $69e8: $10
    ld bc, $4b8f                                  ; $69e9: $01 $8f $4b
    call Call_04d_58db                            ; $69ec: $cd $db $58
    dec de                                        ; $69ef: $1b
    dec hl                                        ; $69f0: $2b
    rst $30                                       ; $69f1: $f7
    ld bc, $8bef                                  ; $69f2: $01 $ef $8b
    ld l, e                                       ; $69f5: $6b
    add $90                                       ; $69f6: $c6 $90
    ld l, c                                       ; $69f8: $69
    call z, $e3e3                                 ; $69f9: $cc $e3 $e3
    ld e, $8b                                     ; $69fc: $1e $8b
    add [hl]                                      ; $69fe: $86
    db $db                                        ; $69ff: $db
    db $e3                                        ; $6a00: $e3
    ld d, d                                       ; $6a01: $52
    db $e3                                        ; $6a02: $e3
    ld c, [hl]                                    ; $6a03: $4e
    dec e                                         ; $6a04: $1d
    ld sp, hl                                     ; $6a05: $f9
    di                                            ; $6a06: $f3
    cp l                                          ; $6a07: $bd
    ld [hl], d                                    ; $6a08: $72
    sbc a                                         ; $6a09: $9f
    call c, $f0fd                                 ; $6a0a: $dc $fd $f0
    ld [$e1f5], a                                 ; $6a0d: $ea $f5 $e1
    ld a, $9c                                     ; $6a10: $3e $9c
    sbc a                                         ; $6a12: $9f
    ld h, [hl]                                    ; $6a13: $66
    call nz, $8850                                ; $6a14: $c4 $50 $88
    nop                                           ; $6a17: $00
    rst $20                                       ; $6a18: $e7
    ld b, a                                       ; $6a19: $47
    cpl                                           ; $6a1a: $2f
    ld h, [hl]                                    ; $6a1b: $66
    inc de                                        ; $6a1c: $13
    cp b                                          ; $6a1d: $b8
    sbc l                                         ; $6a1e: $9d
    daa                                           ; $6a1f: $27
    sla h                                         ; $6a20: $cb $24
    ld sp, hl                                     ; $6a22: $f9
    ccf                                           ; $6a23: $3f
    halt                                          ; $6a24: $76
    push bc                                       ; $6a25: $c5
    ld h, e                                       ; $6a26: $63
    ld e, d                                       ; $6a27: $5a
    call $f1f6                                    ; $6a28: $cd $f6 $f1
    cp a                                          ; $6a2b: $bf
    adc a                                         ; $6a2c: $8f
    add sp, -$2b                                  ; $6a2d: $e8 $d5
    set 7, h                                      ; $6a2f: $cb $fc
    db $ec                                        ; $6a31: $ec
    pop de                                        ; $6a32: $d1
    db $10                                        ; $6a33: $10
    ld bc, $6b8f                                  ; $6a34: $01 $8f $6b
    ld e, d                                       ; $6a37: $5a
    push af                                       ; $6a38: $f5
    ld a, [hl]                                    ; $6a39: $7e
    ld a, b                                       ; $6a3a: $78
    ld sp, hl                                     ; $6a3b: $f9
    ld c, [hl]                                    ; $6a3c: $4e
    ld a, d                                       ; $6a3d: $7a
    ld [hl], h                                    ; $6a3e: $74
    db $fd                                        ; $6a3f: $fd
    rst $28                                       ; $6a40: $ef
    dec bc                                        ; $6a41: $0b
    adc $a3                                       ; $6a42: $ce $a3
    ld h, a                                       ; $6a44: $67
    add e                                         ; $6a45: $83
    ret                                           ; $6a46: $c9


    ld e, $01                                     ; $6a47: $1e $01
    and b                                         ; $6a49: $a0
    ld b, e                                       ; $6a4a: $43
    add $ac                                       ; $6a4b: $c6 $ac
    xor c                                         ; $6a4d: $a9
    sbc e                                         ; $6a4e: $9b
    ld [hl+], a                                   ; $6a4f: $22
    cp e                                          ; $6a50: $bb
    and d                                         ; $6a51: $a2
    ld b, d                                       ; $6a52: $42
    or d                                          ; $6a53: $b2
    sub a                                         ; $6a54: $97
    ld h, h                                       ; $6a55: $64
    cp b                                          ; $6a56: $b8
    dec a                                         ; $6a57: $3d
    xor [hl]                                      ; $6a58: $ae
    ld h, l                                       ; $6a59: $65
    scf                                           ; $6a5a: $37
    halt                                          ; $6a5b: $76
    ld a, b                                       ; $6a5c: $78
    ld b, a                                       ; $6a5d: $47
    ld [$69e6], a                                 ; $6a5e: $ea $e6 $69
    ld b, a                                       ; $6a61: $47
    sbc a                                         ; $6a62: $9f
    ld c, l                                       ; $6a63: $4d
    cp a                                          ; $6a64: $bf
    halt                                          ; $6a65: $76
    or $ba                                        ; $6a66: $f6 $ba
    ld c, a                                       ; $6a68: $4f
    xor a                                         ; $6a69: $af
    xor a                                         ; $6a6a: $af
    ld b, e                                       ; $6a6b: $43
    ld [$cf11], sp                                ; $6a6c: $08 $11 $cf
    dec [hl]                                      ; $6a6f: $35
    add h                                         ; $6a70: $84
    ldh a, [$e8]                                  ; $6a71: $f0 $e8
    push de                                       ; $6a73: $d5
    rst $38                                       ; $6a74: $ff
    ld a, $1b                                     ; $6a75: $3e $1b
    ld a, $ed                                     ; $6a77: $3e $ed
    add sp, -$2f                                  ; $6a79: $e8 $d1
    db $eb                                        ; $6a7b: $eb
    cp $08                                        ; $6a7c: $fe $08
    ld bc, $b1e7                                  ; $6a7e: $01 $e7 $b1
    sbc b                                         ; $6a81: $98
    dec c                                         ; $6a82: $0d
    cp b                                          ; $6a83: $b8
    dec a                                         ; $6a84: $3d
    cp l                                          ; $6a85: $bd
    di                                            ; $6a86: $f3
    ld [$aba5], a                                 ; $6a87: $ea $a5 $ab
    ld l, e                                       ; $6a8a: $6b
    inc [hl]                                      ; $6a8b: $34
    and $f7                                       ; $6a8c: $e6 $f7
    rst $38                                       ; $6a8e: $ff
    ld a, $52                                     ; $6a8f: $3e $52
    db $e4                                        ; $6a91: $e4
    ld e, a                                       ; $6a92: $5f
    push hl                                       ; $6a93: $e5
    and e                                         ; $6a94: $a3
    xor h                                         ; $6a95: $ac
    inc d                                         ; $6a96: $14
    adc c                                         ; $6a97: $89
    push hl                                       ; $6a98: $e5
    ei                                            ; $6a99: $fb
    push af                                       ; $6a9a: $f5
    add sp, $7c                                   ; $6a9b: $e8 $7c
    ret                                           ; $6a9d: $c9


    xor a                                         ; $6a9e: $af
    add [hl]                                      ; $6a9f: $86
    db $10                                        ; $6aa0: $10
    jp c, $cc58                                   ; $6aa1: $da $58 $cc

    db $db                                        ; $6aa4: $db
    db $fc                                        ; $6aa5: $fc
    ld c, a                                       ; $6aa6: $4f
    xor d                                         ; $6aa7: $aa
    ld a, a                                       ; $6aa8: $7f
    add $43                                       ; $6aa9: $c6 $43
    ld d, h                                       ; $6aab: $54
    dec [hl]                                      ; $6aac: $35
    add h                                         ; $6aad: $84
    sub b                                         ; $6aae: $90
    dec sp                                        ; $6aaf: $3b
    push af                                       ; $6ab0: $f5
    jp z, $e47d                                   ; $6ab1: $ca $7d $e4

    add h                                         ; $6ab4: $84
    rst $10                                       ; $6ab5: $d7
    db $ec                                        ; $6ab6: $ec
    sub l                                         ; $6ab7: $95
    ld h, l                                       ; $6ab8: $65
    ld h, d                                       ; $6ab9: $62
    ld a, [hl]                                    ; $6aba: $7e
    ld [c], a                                     ; $6abb: $e2
    sbc l                                         ; $6abc: $9d
    ld h, h                                       ; $6abd: $64
    sub a                                         ; $6abe: $97
    dec hl                                        ; $6abf: $2b
    ld a, [bc]                                    ; $6ac0: $0a
    ld [hl+], a                                   ; $6ac1: $22
    ld c, a                                       ; $6ac2: $4f
    ld c, b                                       ; $6ac3: $48
    ld c, l                                       ; $6ac4: $4d
    cp a                                          ; $6ac5: $bf
    db $e3                                        ; $6ac6: $e3
    ld c, h                                       ; $6ac7: $4c
    ld a, e                                       ; $6ac8: $7b
    ld a, $dc                                     ; $6ac9: $3e $dc
    ld l, e                                       ; $6acb: $6b
    ld a, [hl]                                    ; $6acc: $7e
    rst $38                                       ; $6acd: $ff
    sbc a                                         ; $6ace: $9f
    inc e                                         ; $6acf: $1c
    reti                                          ; $6ad0: $d9


    ld l, e                                       ; $6ad1: $6b
    ld a, d                                       ; $6ad2: $7a
    ld a, l                                       ; $6ad3: $7d
    ld a, l                                       ; $6ad4: $7d
    sub d                                         ; $6ad5: $92
    sbc h                                         ; $6ad6: $9c
    dec l                                         ; $6ad7: $2d
    rst $18                                       ; $6ad8: $df
    ld a, [hl]                                    ; $6ad9: $7e
    add h                                         ; $6ada: $84
    nop                                           ; $6adb: $00
    adc a                                         ; $6adc: $8f
    dec bc                                        ; $6add: $0b
    rst $00                                       ; $6ade: $c7
    rst $08                                       ; $6adf: $cf
    and [hl]                                      ; $6ae0: $a6
    rst $18                                       ; $6ae1: $df
    ld d, c                                       ; $6ae2: $51
    ld a, $7b                                     ; $6ae3: $3e $7b
    inc l                                         ; $6ae5: $2c
    inc de                                        ; $6ae6: $13
    sub [hl]                                      ; $6ae7: $96
    ret c                                         ; $6ae8: $d8

    sbc d                                         ; $6ae9: $9a
    ret                                           ; $6aea: $c9


    add hl, de                                    ; $6aeb: $19
    ld l, [hl]                                    ; $6aec: $6e
    rrca                                          ; $6aed: $0f
    ld b, a                                       ; $6aee: $47
    cpl                                           ; $6aef: $2f
    ld h, [hl]                                    ; $6af0: $66
    xor a                                         ; $6af1: $af
    call nc, $10f0                                ; $6af2: $d4 $f0 $10
    ld d, l                                       ; $6af5: $55
    dec a                                         ; $6af6: $3d
    ld a, [hl]                                    ; $6af7: $7e
    rst $38                                       ; $6af8: $ff
    ld h, [hl]                                    ; $6af9: $66
    cpl                                           ; $6afa: $2f
    add hl, de                                    ; $6afb: $19
    adc l                                         ; $6afc: $8d
    jp hl                                         ; $6afd: $e9


    dec [hl]                                      ; $6afe: $35
    sbc e                                         ; $6aff: $9b
    inc l                                         ; $6b00: $2c
    dec e                                         ; $6b01: $1d
    jp c, $8f49                                   ; $6b02: $da $49 $8f

    ld a, $db                                     ; $6b05: $3e $db
    ld b, e                                       ; $6b07: $43
    ld [hl], l                                    ; $6b08: $75
    or e                                          ; $6b09: $b3
    ldh [rNR34], a                                ; $6b0a: $e0 $1e
    sub a                                         ; $6b0c: $97
    sbc d                                         ; $6b0d: $9a
    halt                                          ; $6b0e: $76
    ld d, b                                       ; $6b0f: $50
    xor a                                         ; $6b10: $af
    sbc [hl]                                      ; $6b11: $9e
    call c, $f597                                 ; $6b12: $dc $97 $f5
    ldh a, [$97]                                  ; $6b15: $f0 $97
    push af                                       ; $6b17: $f5
    or d                                          ; $6b18: $b2
    db $e3                                        ; $6b19: $e3
    ld b, a                                       ; $6b1a: $47
    ld c, a                                       ; $6b1b: $4f
    ld e, $3d                                     ; $6b1c: $1e $3d
    dec de                                        ; $6b1e: $1b
    call z, Call_04d_5d71                         ; $6b1f: $cc $71 $5d
    sub h                                         ; $6b22: $94
    dec sp                                        ; $6b23: $3b
    push af                                       ; $6b24: $f5
    add b                                         ; $6b25: $80
    rst $30                                       ; $6b26: $f7
    dec d                                         ; $6b27: $15
    ld h, l                                       ; $6b28: $65
    call c, Call_04d_4433                         ; $6b29: $dc $33 $44
    ld c, a                                       ; $6b2c: $4f
    set 5, [hl]                                   ; $6b2d: $cb $ee
    add sp, -$37                                  ; $6b2f: $e8 $c9
    ld a, l                                       ; $6b31: $7d
    ld e, c                                       ; $6b32: $59
    rrca                                          ; $6b33: $0f
    ld a, a                                       ; $6b34: $7f
    ld e, c                                       ; $6b35: $59
    cpl                                           ; $6b36: $2f
    ei                                            ; $6b37: $fb
    ld [$2001], sp                                ; $6b38: $08 $01 $20
    ld c, e                                       ; $6b3b: $4b
    halt                                          ; $6b3c: $76
    push bc                                       ; $6b3d: $c5
    ld h, e                                       ; $6b3e: $63
    ld e, [hl]                                    ; $6b3f: $5e

jr_04d_6b40:
    cp a                                          ; $6b40: $bf
    ld h, [hl]                                    ; $6b41: $66
    add sp, $6c                                   ; $6b42: $e8 $6c
    adc h                                         ; $6b44: $8c
    dec sp                                        ; $6b45: $3b
    push af                                       ; $6b46: $f5
    ld l, h                                       ; $6b47: $6c
    jr nc, @-$1d                                  ; $6b48: $30 $e1

    ld e, $8c                                     ; $6b4a: $1e $8c
    ld h, d                                       ; $6b4c: $62
    ld d, h                                       ; $6b4d: $54
    db $ed                                        ; $6b4e: $ed
    cp c                                          ; $6b4f: $b9
    jr c, jr_04d_6b40                             ; $6b50: $38 $ee

    add sp, $68                                   ; $6b52: $e8 $68
    cp b                                          ; $6b54: $b8
    dec a                                         ; $6b55: $3d
    cp l                                          ; $6b56: $bd
    res 2, c                                      ; $6b57: $cb $91
    sub a                                         ; $6b59: $97
    ld a, b                                       ; $6b5a: $78
    add hl, bc                                    ; $6b5b: $09
    ld [hl], a                                    ; $6b5c: $77
    ld [$3db3], a                                 ; $6b5d: $ea $b3 $3d
    ld d, h                                       ; $6b60: $54
    scf                                           ; $6b61: $37
    dec bc                                        ; $6b62: $0b
    ld [hl+], a                                   ; $6b63: $22
    jr jr_04d_6b91                                ; $6b64: $18 $2b

    ld b, l                                       ; $6b66: $45
    add $9d                                       ; $6b67: $c6 $9d
    ld a, d                                       ; $6b69: $7a
    push hl                                       ; $6b6a: $e5
    ld a, $b9                                     ; $6b6b: $3e $b9
    di                                            ; $6b6d: $f3
    db $eb                                        ; $6b6e: $eb
    ld e, [hl]                                    ; $6b6f: $5e
    ld [hl], $c6                                  ; $6b70: $36 $c6
    sbc l                                         ; $6b72: $9d
    ld a, [hl-]                                   ; $6b73: $3a
    ld a, l                                       ; $6b74: $7d
    ld hl, $2002                                  ; $6b75: $21 $02 $20
    dec c                                         ; $6b78: $0d
    ld e, l                                       ; $6b79: $5d
    sub [hl]                                      ; $6b7a: $96
    ld l, d                                       ; $6b7b: $6a
    sbc a                                         ; $6b7c: $9f
    rst $18                                       ; $6b7d: $df
    rst $38                                       ; $6b7e: $ff
    db $d3                                        ; $6b7f: $d3
    ld b, l                                       ; $6b80: $45
    ld a, [bc]                                    ; $6b81: $0a
    ld [hl+], a                                   ; $6b82: $22
    rst $20                                       ; $6b83: $e7
    and a                                         ; $6b84: $a7
    xor $90                                       ; $6b85: $ee $90
    db $fd                                        ; $6b87: $fd
    xor e                                         ; $6b88: $ab
    ld d, h                                       ; $6b89: $54
    db $f4                                        ; $6b8a: $f4
    db $ec                                        ; $6b8b: $ec
    ld [hl], l                                    ; $6b8c: $75
    sbc $cf                                       ; $6b8d: $de $cf
    sub [hl]                                      ; $6b8f: $96
    ld l, a                                       ; $6b90: $6f

jr_04d_6b91:
    ld b, e                                       ; $6b91: $43
    inc b                                         ; $6b92: $04
    ld c, a                                       ; $6b93: $4f
    rst $28                                       ; $6b94: $ef
    db $fc                                        ; $6b95: $fc
    db $10                                        ; $6b96: $10
    ld [de], a                                    ; $6b97: $12
    cp l                                          ; $6b98: $bd
    db $ec                                        ; $6b99: $ec
    add a                                         ; $6b9a: $87
    xor b                                         ; $6b9b: $a8
    ld a, [de]                                    ; $6b9c: $1a
    ld [hl], a                                    ; $6b9d: $77
    ld [$44fd], a                                 ; $6b9e: $ea $fd $44
    ld d, d                                       ; $6ba1: $52
    jp c, $f2d9                                   ; $6ba2: $da $d9 $f2

    ld l, l                                       ; $6ba5: $6d
    cp b                                          ; $6ba6: $b8
    dec a                                         ; $6ba7: $3d
    ld l, $35                                     ; $6ba8: $2e $35
    ld l, a                                       ; $6baa: $6f
    db $d3                                        ; $6bab: $d3
    cp e                                          ; $6bac: $bb
    ld [c], a                                     ; $6bad: $e2
    or c                                          ; $6bae: $b1
    ld [hl], d                                    ; $6baf: $72
    sbc a                                         ; $6bb0: $9f

jr_04d_6bb1:
    call c, $f7e9                                 ; $6bb1: $dc $e9 $f7
    rst $38                                       ; $6bb4: $ff
    push hl                                       ; $6bb5: $e5
    sbc b                                         ; $6bb6: $98
    ret                                           ; $6bb7: $c9


    ld a, c                                       ; $6bb8: $79
    add a                                         ; $6bb9: $87
    rla                                           ; $6bba: $17
    ld b, h                                       ; $6bbb: $44
    jr jr_04d_6be9                                ; $6bbc: $18 $2b

    ld b, l                                       ; $6bbe: $45
    add $9d                                       ; $6bbf: $c6 $9d
    ld a, d                                       ; $6bc1: $7a
    push hl                                       ; $6bc2: $e5
    ld a, $b9                                     ; $6bc3: $3e $b9
    dec hl                                        ; $6bc5: $2b
    ld sp, hl                                     ; $6bc6: $f9
    rst $10                                       ; $6bc7: $d7
    xor e                                         ; $6bc8: $ab
    rlca                                          ; $6bc9: $07
    cp h                                          ; $6bca: $bc
    xor a                                         ; $6bcb: $af
    jr z, jr_04d_6bb1                             ; $6bcc: $28 $e3

    sbc [hl]                                      ; $6bce: $9e
    sub a                                         ; $6bcf: $97
    ld l, $21                                     ; $6bd0: $2e $21
    db $10                                        ; $6bd2: $10

jr_04d_6bd3:
    ld bc, $4160                                  ; $6bd3: $01 $60 $41
    ld b, d                                       ; $6bd6: $42
    inc b                                         ; $6bd7: $04
    rrca                                          ; $6bd8: $0f
    push af                                       ; $6bd9: $f5
    ccf                                           ; $6bda: $3f
    rrca                                          ; $6bdb: $0f
    ld de, $2b18                                  ; $6bdc: $11 $18 $2b
    ld b, l                                       ; $6bdf: $45
    jr nz, @+$04                                  ; $6be0: $20 $02

    add b                                         ; $6be2: $80
    jr c, jr_04d_6bd3                             ; $6be3: $38 $ee

    add sp, $68                                   ; $6be5: $e8 $68
    xor c                                         ; $6be7: $a9
    sub c                                         ; $6be8: $91

jr_04d_6be9:
    inc de                                        ; $6be9: $13
    ld e, $3d                                     ; $6bea: $1e $3d
    cp a                                          ; $6bec: $bf
    rst $38                                       ; $6bed: $ff
    and a                                         ; $6bee: $a7
    adc e                                         ; $6bef: $8b
    call nc, $f86c                                ; $6bf0: $d4 $6c $f8
    ld l, h                                       ; $6bf3: $6c
    inc l                                         ; $6bf4: $2c
    rra                                           ; $6bf5: $1f
    sbc a                                         ; $6bf6: $9f
    add hl, de                                    ; $6bf7: $19
    dec a                                         ; $6bf8: $3d
    cp a                                          ; $6bf9: $bf
    rst $38                                       ; $6bfa: $ff
    rst $08                                       ; $6bfb: $cf
    ld e, [hl]                                    ; $6bfc: $5e
    dec b                                         ; $6bfd: $05
    ld hl, $61a4                                  ; $6bfe: $21 $a4 $61
    rla                                           ; $6c01: $17
    xor $d3                                       ; $6c02: $ee $d3
    ld l, a                                       ; $6c04: $6f
    adc $be                                       ; $6c05: $ce $be
    jp nc, $976d                                  ; $6c07: $d2 $6d $97

    ld a, [hl-]                                   ; $6c0a: $3a
    sbc e                                         ; $6c0b: $9b
    sub h                                         ; $6c0c: $94

Jump_04d_6c0d:
    daa                                           ; $6c0d: $27
    db $fd                                        ; $6c0e: $fd
    xor a                                         ; $6c0f: $af
    ld [hl], d                                    ; $6c10: $72
    db $fd                                        ; $6c11: $fd
    ld h, [hl]                                    ; $6c12: $66
    adc b                                         ; $6c13: $88
    nop                                           ; $6c14: $00
    rst $20                                       ; $6c15: $e7
    ret                                           ; $6c16: $c9


    adc [hl]                                      ; $6c17: $8e
    sbc [hl]                                      ; $6c18: $9e
    ld d, [hl]                                    ; $6c19: $56
    jp nz, $8f7e                                  ; $6c1a: $c2 $7e $8f

    ld c, e                                       ; $6c1d: $4b
    adc l                                         ; $6c1e: $8d
    add [hl]                                      ; $6c1f: $86
    ld d, h                                       ; $6c20: $54
    sbc a                                         ; $6c21: $9f
    call Call_000_3b26                            ; $6c22: $cd $26 $3b
    ld a, d                                       ; $6c25: $7a
    ld [hl], $61                                  ; $6c26: $36 $61
    cp a                                          ; $6c28: $bf
    rst $00                                       ; $6c29: $c7
    and l                                         ; $6c2a: $a5
    ld b, [hl]                                    ; $6c2b: $46
    ld b, e                                       ; $6c2c: $43
    xor d                                         ; $6c2d: $aa
    rst $08                                       ; $6c2e: $cf
    ld h, [hl]                                    ; $6c2f: $66
    sub e                                         ; $6c30: $93
    dec e                                         ; $6c31: $1d
    cp l                                          ; $6c32: $bd
    add a                                         ; $6c33: $87
    ld [$0d66], a                                 ; $6c34: $ea $66 $0d
    sbc h                                         ; $6c37: $9c
    ld [hl], c                                    ; $6c38: $71
    adc a                                         ; $6c39: $8f
    ld h, [hl]                                    ; $6c3a: $66
    adc a                                         ; $6c3b: $8f
    nop                                           ; $6c3c: $00
    ld c, a                                       ; $6c3d: $4f
    xor e                                         ; $6c3e: $ab
    rst $00                                       ; $6c3f: $c7
    sbc l                                         ; $6c40: $9d
    ld a, [hl-]                                   ; $6c41: $3a
    ld e, a                                       ; $6c42: $5f
    ld [c], a                                     ; $6c43: $e2
    ld d, a                                       ; $6c44: $57
    adc l                                         ; $6c45: $8d
    add [hl]                                      ; $6c46: $86
    ld e, l                                       ; $6c47: $5d
    cp [hl]                                       ; $6c48: $be
    sub $a8                                       ; $6c49: $d6 $a8
    ld a, $c4                                     ; $6c4b: $3e $c4
    ld b, [hl]                                    ; $6c4d: $46
    ld b, e                                       ; $6c4e: $43
    ld [$f86d], sp                                ; $6c4f: $08 $6d $f8
    jp nc, $97a6                                  ; $6c52: $d2 $a6 $97

    db $dd                                        ; $6c55: $dd
    ld [hl], h                                    ; $6c56: $74
    xor l                                         ; $6c57: $ad
    ld a, c                                       ; $6c58: $79
    ld [hl], a                                    ; $6c59: $77
    db $d3                                        ; $6c5a: $d3
    or e                                          ; $6c5b: $b3
    ld b, a                                       ; $6c5c: $47
    ld b, e                                       ; $6c5d: $43
    inc b                                         ; $6c5e: $04
    ld c, a                                       ; $6c5f: $4f
    ldh a, [$be]                                  ; $6c60: $f0 $be
    and d                                         ; $6c62: $a2
    halt                                          ; $6c63: $76
    push bc                                       ; $6c64: $c5
    ld h, e                                       ; $6c65: $63
    ld e, h                                       ; $6c66: $5c
    di                                            ; $6c67: $f3
    or d                                          ; $6c68: $b2
    ld a, [$a6bf]                                 ; $6c69: $fa $bf $a6
    ld d, a                                       ; $6c6c: $57
    rst $00                                       ; $6c6d: $c7
    rst $08                                       ; $6c6e: $cf
    pop de                                        ; $6c6f: $d1
    or e                                          ; $6c70: $b3
    ret                                           ; $6c71: $c9


    add sp, -$37                                  ; $6c72: $e8 $c9
    and e                                         ; $6c74: $a3
    pop hl                                        ; $6c75: $e1
    adc $93                                       ; $6c76: $ce $93
    sub c                                         ; $6c78: $91
    sub d                                         ; $6c79: $92
    ld e, l                                       ; $6c7a: $5d
    pop af                                        ; $6c7b: $f1
    ld e, b                                       ; $6c7c: $58
    ld a, [hl-]                                   ; $6c7d: $3a
    ld [hl], d                                    ; $6c7e: $72
    xor b                                         ; $6c7f: $a8
    xor [hl]                                      ; $6c80: $ae
    ld h, l                                       ; $6c81: $65
    xor a                                         ; $6c82: $af
    ld h, $d5                                     ; $6c83: $26 $d5
    ld sp, $3abd                                  ; $6c85: $31 $bd $3a
    ld a, [hl]                                    ; $6c88: $7e
    adc [hl]                                      ; $6c89: $8e
    sbc $3f                                       ; $6c8a: $de $3f
    ld b, h                                       ; $6c8c: $44
    ld [hl], l                                    ; $6c8d: $75
    adc h                                         ; $6c8e: $8c
    db $eb                                        ; $6c8f: $eb
    and d                                         ; $6c90: $a2
    inc sp                                        ; $6c91: $33
    ld [hl], h                                    ; $6c92: $74
    ld [hl], $d9                                  ; $6c93: $36 $d9
    dec d                                         ; $6c95: $15
    adc a                                         ; $6c96: $8f
    and l                                         ; $6c97: $a5
    inc hl                                        ; $6c98: $23
    add a                                         ; $6c99: $87
    ld [$65ea], a                                 ; $6c9a: $ea $ea $65
    cp l                                          ; $6c9d: $bd
    ld d, h                                       ; $6c9e: $54
    ld [hl], l                                    ; $6c9f: $75
    ld c, h                                       ; $6ca0: $4c
    xor a                                         ; $6ca1: $af
    adc [hl]                                      ; $6ca2: $8e
    sbc a                                         ; $6ca3: $9f
    and e                                         ; $6ca4: $a3
    daa                                           ; $6ca5: $27
    add hl, bc                                    ; $6ca6: $09
    ld b, h                                       ; $6ca7: $44
    rst $20                                       ; $6ca8: $e7
    or a                                          ; $6ca9: $b7
    sub h                                         ; $6caa: $94
    ld de, $87d5                                  ; $6cab: $11 $d5 $87
    ret c                                         ; $6cae: $d8

    dec e                                         ; $6caf: $1d
    dec a                                         ; $6cb0: $3d
    ld l, $f9                                     ; $6cb1: $2e $f9
    ld a, a                                       ; $6cb3: $7f
    and l                                         ; $6cb4: $a5
    cpl                                           ; $6cb5: $2f
    db $dd                                        ; $6cb6: $dd
    or l                                          ; $6cb7: $b5
    ld [c], a                                     ; $6cb8: $e2
    cp b                                          ; $6cb9: $b8
    and e                                         ; $6cba: $a3
    and e                                         ; $6cbb: $a3
    ld hl, $3684                                  ; $6cbc: $21 $84 $36
    ld a, h                                       ; $6cbf: $7c
    ld b, a                                       ; $6cc0: $47
    rst $28                                       ; $6cc1: $ef
    rra                                           ; $6cc2: $1f
    xor $2b                                       ; $6cc3: $ee $2b
    rst $30                                       ; $6cc5: $f7
    xor c                                         ; $6cc6: $a9
    ld d, e                                       ; $6cc7: $53
    rst $10                                       ; $6cc8: $d7
    ld c, d                                       ; $6cc9: $4a
    rra                                           ; $6cca: $1f
    dec c                                         ; $6ccb: $0d
    dec sp                                        ; $6ccc: $3b
    xor $d4                                       ; $6ccd: $ee $d4
    and e                                         ; $6ccf: $a3
    xor h                                         ; $6cd0: $ac
    inc d                                         ; $6cd1: $14
    add hl, bc                                    ; $6cd2: $09
    add a                                         ; $6cd3: $87
    ld [$2380], sp                                ; $6cd4: $08 $80 $23
    add a                                         ; $6cd7: $87
    ld [$d65a], a                                 ; $6cd8: $ea $5a $d6
    ld c, e                                       ; $6cdb: $4b
    ld d, l                                       ; $6cdc: $55
    rst $00                                       ; $6cdd: $c7
    xor b                                         ; $6cde: $a8
    sub c                                         ; $6cdf: $91
    db $ec                                        ; $6ce0: $ec
    pop de                                        ; $6ce1: $d1
    sub e                                         ; $6ce2: $93
    db $e4                                        ; $6ce3: $e4
    ld l, h                                       ; $6ce4: $6c
    sbc c                                         ; $6ce5: $99
    rra                                           ; $6ce6: $1f
    add hl, hl                                    ; $6ce7: $29
    sbc c                                         ; $6ce8: $99
    ld c, l                                       ; $6ce9: $4d
    sub [hl]                                      ; $6cea: $96
    adc [hl]                                      ; $6ceb: $8e
    inc e                                         ; $6cec: $1c
    xor d                                         ; $6ced: $aa
    ld l, e                                       ; $6cee: $6b
    reti                                          ; $6cef: $d9


    xor e                                         ; $6cf0: $ab
    ld c, c                                       ; $6cf1: $49
    ld [hl], l                                    ; $6cf2: $75
    adc h                                         ; $6cf3: $8c
    ld a, [de]                                    ; $6cf4: $1a
    ret                                           ; $6cf5: $c9


    ld e, $bd                                     ; $6cf6: $1e $bd
    inc e                                         ; $6cf8: $1c
    ld d, d                                       ; $6cf9: $52
    dec e                                         ; $6cfa: $1d
    db $10                                        ; $6cfb: $10
    ld bc, $e960                                  ; $6cfc: $01 $60 $e9
    ld l, h                                       ; $6cff: $6c
    or d                                          ; $6d00: $b2
    db $fc                                        ; $6d01: $fc
    ld sp, hl                                     ; $6d02: $f9
    sbc $5d                                       ; $6d03: $de $5d
    ret z                                         ; $6d05: $c8

    sbc h                                         ; $6d06: $9c
    ld e, a                                       ; $6d07: $5f
    db $fc                                        ; $6d08: $fc
    rra                                           ; $6d09: $1f
    cp l                                          ; $6d0a: $bd
    sub b                                         ; $6d0b: $90
    ld h, l                                       ; $6d0c: $65
    scf                                           ; $6d0d: $37
    cp l                                          ; $6d0e: $bd
    and $dd                                       ; $6d0f: $e6 $dd
    ld l, e                                       ; $6d11: $6b
    dec h                                         ; $6d12: $25
    ld e, h                                       ; $6d13: $5c
    db $fd                                        ; $6d14: $fd
    rra                                           ; $6d15: $1f
    dec a                                         ; $6d16: $3d
    ld a, e                                       ; $6d17: $7b
    push de                                       ; $6d18: $d5
    reti                                          ; $6d19: $d9


    ld c, b                                       ; $6d1a: $48
    ret                                           ; $6d1b: $c9


    ld l, h                                       ; $6d1c: $6c
    or d                                          ; $6d1d: $b2
    ld [hl], h                                    ; $6d1e: $74
    db $e4                                        ; $6d1f: $e4
    inc de                                        ; $6d20: $13
    xor c                                         ; $6d21: $a9
    ld l, c                                       ; $6d22: $69
    pop af                                        ; $6d23: $f1
    xor e                                         ; $6d24: $ab
    ld b, e                                       ; $6d25: $43
    jr nz, jr_04d_6d2a                            ; $6d26: $20 $02

    rst $20                                       ; $6d28: $e7
    pop hl                                        ; $6d29: $e1

jr_04d_6d2a:
    ld c, e                                       ; $6d2a: $4b
    rra                                           ; $6d2b: $1f
    reti                                          ; $6d2c: $d9


    ld l, e                                       ; $6d2d: $6b
    inc [hl]                                      ; $6d2e: $34
    db $ec                                        ; $6d2f: $ec
    adc d                                         ; $6d30: $8a
    db $e3                                        ; $6d31: $e3
    adc [hl]                                      ; $6d32: $8e
    adc $57                                       ; $6d33: $ce $57
    inc h                                         ; $6d35: $24
    or h                                          ; $6d36: $b4
    jp nc, $a5ab                                  ; $6d37: $d2 $ab $a5

    and [hl]                                      ; $6d3a: $a6
    dec e                                         ; $6d3b: $1d
    cp l                                          ; $6d3c: $bd
    and e                                         ; $6d3d: $a3
    ld d, a                                       ; $6d3e: $57
    xor $ab                                       ; $6d3f: $ee $ab
    rst $38                                       ; $6d41: $ff
    ld l, e                                       ; $6d42: $6b
    ld b, a                                       ; $6d43: $47
    rst $28                                       ; $6d44: $ef
    add sp, $7f                                   ; $6d45: $e8 $7f
    ld d, l                                       ; $6d47: $55
    ld b, c                                       ; $6d48: $41
    inc b                                         ; $6d49: $04
    rrca                                          ; $6d4a: $0f
    push de                                       ; $6d4b: $d5
    or e                                          ; $6d4c: $b3
    ret                                           ; $6d4d: $c9


    or h                                          ; $6d4e: $b4
    db $eb                                        ; $6d4f: $eb
    ld e, [hl]                                    ; $6d50: $5e
    ld a, $e1                                     ; $6d51: $3e $e1
    ld d, l                                       ; $6d53: $55
    rst $10                                       ; $6d54: $d7
    call nc, $da89                                ; $6d55: $d4 $89 $da
    ld a, [de]                                    ; $6d58: $1a
    ld [hl], a                                    ; $6d59: $77
    ld [$fca0], a                                 ; $6d5a: $ea $a0 $fc
    rst $18                                       ; $6d5d: $df
    ld hl, $b68f                                  ; $6d5e: $21 $8f $b6
    di                                            ; $6d61: $f3
    ldh a, [$71]                                  ; $6d62: $f0 $71
    ld d, a                                       ; $6d64: $57
    inc h                                         ; $6d65: $24
    adc a                                         ; $6d66: $8f
    ld a, [c]                                     ; $6d67: $f2
    and d                                         ; $6d68: $a2
    ld l, d                                       ; $6d69: $6a
    jp c, $33d1                                   ; $6d6a: $da $d1 $33

    add hl, hl                                    ; $6d6d: $29
    ld l, l                                       ; $6d6e: $6d
    ld a, d                                       ; $6d6f: $7a
    dec [hl]                                      ; $6d70: $35
    call c, $971e                                 ; $6d71: $dc $1e $97
    ld e, d                                       ; $6d74: $5a
    cp $7c                                        ; $6d75: $fe $7c
    rst $08                                       ; $6d77: $cf
    rst $28                                       ; $6d78: $ef
    rst $38                                       ; $6d79: $ff
    inc sp                                        ; $6d7a: $33
    add hl, hl                                    ; $6d7b: $29
    ld l, l                                       ; $6d7c: $6d
    inc [hl]                                      ; $6d7d: $34
    db $ec                                        ; $6d7e: $ec
    db $f4                                        ; $6d7f: $f4
    or d                                          ; $6d80: $b2
    inc sp                                        ; $6d81: $33
    ld [hl], h                                    ; $6d82: $74
    push hl                                       ; $6d83: $e5
    ld a, $1b                                     ; $6d84: $3e $1b
    ld a, $ee                                     ; $6d86: $3e $ee
    adc d                                         ; $6d88: $8a
    db $e4                                        ; $6d89: $e4
    add hl, bc                                    ; $6d8a: $09
    xor a                                         ; $6d8b: $af
    adc h                                         ; $6d8c: $8c
    rst $28                                       ; $6d8d: $ef
    adc $86                                       ; $6d8e: $ce $86
    call z, $3d1e                                 ; $6d90: $cc $1e $3d
    ld c, a                                       ; $6d93: $4f
    ld b, h                                       ; $6d94: $44
    ld c, d                                       ; $6d95: $4a
    jr nz, jr_04d_6d9a                            ; $6d96: $20 $02

    ldh [$2a], a                                  ; $6d98: $e0 $2a

jr_04d_6d9a:
    ret                                           ; $6d9a: $c9


    or c                                          ; $6d9b: $b1
    daa                                           ; $6d9c: $27
    xor c                                         ; $6d9d: $a9
    adc [hl]                                      ; $6d9e: $8e
    sub b                                         ; $6d9f: $90
    dec a                                         ; $6da0: $3d
    ld b, h                                       ; $6da1: $44
    rlca                                          ; $6da2: $07
    ld [bc], a                                    ; $6da3: $02
    ld c, a                                       ; $6da4: $4f
    adc a                                         ; $6da5: $8f
    ld c, a                                       ; $6da6: $4f
    inc c                                         ; $6da7: $0c
    and l                                         ; $6da8: $a5
    ld hl, $fbf3                                  ; $6da9: $21 $f3 $fb
    rst $38                                       ; $6dac: $ff

jr_04d_6dad:
    add b                                         ; $6dad: $80
    ld b, $eb                                     ; $6dae: $06 $eb
    dec de                                        ; $6db0: $1b
    inc a                                         ; $6db1: $3c
    rrca                                          ; $6db2: $0f
    sub e                                         ; $6db3: $93
    ld d, d                                       ; $6db4: $52
    ccf                                           ; $6db5: $3f
    ld l, b                                       ; $6db6: $68
    dec [hl]                                      ; $6db7: $35
    sub c                                         ; $6db8: $91
    or d                                          ; $6db9: $b2
    ld [hl], b                                    ; $6dba: $70
    ld c, a                                       ; $6dbb: $4f
    rst $28                                       ; $6dbc: $ef
    daa                                           ; $6dbd: $27
    pop hl                                        ; $6dbe: $e1
    db $e3                                        ; $6dbf: $e3
    ld a, e                                       ; $6dc0: $7b
    ld [$3ff8], a                                 ; $6dc1: $ea $f8 $3f
    ld a, d                                       ; $6dc4: $7a
    ld [hl], $fc                                  ; $6dc5: $36 $fc
    ld de, $cf02                                  ; $6dc7: $11 $02 $cf
    or $a3                                        ; $6dca: $f6 $a3
    dec a                                         ; $6dcc: $3d
    dec l                                         ; $6dcd: $2d
    dec sp                                        ; $6dce: $3b
    ld a, [de]                                    ; $6dcf: $1a
    ld d, d                                       ; $6dd0: $52
    dec a                                         ; $6dd1: $3d
    sbc e                                         ; $6dd2: $9b
    inc a                                         ; $6dd3: $3c
    ld b, d                                       ; $6dd4: $42
    ld c, a                                       ; $6dd5: $4f
    rst $28                                       ; $6dd6: $ef
    daa                                           ; $6dd7: $27
    pop hl                                        ; $6dd8: $e1
    db $e3                                        ; $6dd9: $e3
    ld a, e                                       ; $6dda: $7b
    ld b, a                                       ; $6ddb: $47
    rst $08                                       ; $6ddc: $cf
    add [hl]                                      ; $6ddd: $86
    adc a                                         ; $6dde: $8f
    dec sp                                        ; $6ddf: $3b
    push af                                       ; $6de0: $f5
    db $ec                                        ; $6de1: $ec
    ld d, l                                       ; $6de2: $55
    jp $3df9                                      ; $6de3: $c3 $f9 $3d


Jump_04d_6de6:
    jr jr_04d_6dad                                ; $6de6: $18 $c5

    xor b                                         ; $6de8: $a8
    jp c, $a3f3                                   ; $6de9: $da $f3 $a3

    ld bc, $753b                                  ; $6dec: $01 $3b $75
    or $7a                                        ; $6def: $f6 $7a
    inc [hl]                                      ; $6df1: $34
    ld b, b                                       ; $6df2: $40
    ld h, d                                       ; $6df3: $62
    cp e                                          ; $6df4: $bb
    ld e, $21                                     ; $6df5: $1e $21
    adc a                                         ; $6df7: $8f
    ld c, e                                       ; $6df8: $4b
    ld c, l                                       ; $6df9: $4d
    xor e                                         ; $6dfa: $ab
    sbc $15                                       ; $6dfb: $de $15
    adc a                                         ; $6dfd: $8f
    and l                                         ; $6dfe: $a5
    ld c, a                                       ; $6dff: $4f
    call $1f2c                                    ; $6e00: $cd $2c $1f
    adc $ef                                       ; $6e03: $ce $ef
    pop bc                                        ; $6e05: $c1
    jr z, jr_04d_6e4e                             ; $6e06: $28 $46

    push de                                       ; $6e08: $d5
    sbc [hl]                                      ; $6e09: $9e
    ld [hl], a                                    ; $6e0a: $77
    ld [$1844], sp                                ; $6e0b: $08 $44 $18
    ld e, c                                       ; $6e0e: $59
    ld a, [$7dd1]                                 ; $6e0f: $fa $d1 $7d
    ld [hl], $cb                                  ; $6e12: $36 $cb
    adc a                                         ; $6e14: $8f
    sub h                                         ; $6e15: $94
    ld c, h                                       ; $6e16: $4c
    cp a                                          ; $6e17: $bf
    cp e                                          ; $6e18: $bb
    ld [c], a                                     ; $6e19: $e2
    or c                                          ; $6e1a: $b1
    ld a, h                                       ; $6e1b: $7c
    ld a, h                                       ; $6e1c: $7c
    ld h, [hl]                                    ; $6e1d: $66
    ld c, l                                       ; $6e1e: $4d
    ld a, b                                       ; $6e1f: $78
    rra                                           ; $6e20: $1f
    rst $28                                       ; $6e21: $ef
    or e                                          ; $6e22: $b3
    ld d, a                                       ; $6e23: $57
    pop bc                                        ; $6e24: $c1
    add c                                         ; $6e25: $81
    ld c, $59                                     ; $6e26: $0e $59
    adc [hl]                                      ; $6e28: $8e
    reti                                          ; $6e29: $d9


    xor e                                         ; $6e2a: $ab
    and [hl]                                      ; $6e2b: $a6
    adc [hl]                                      ; $6e2c: $8e
    sub [hl]                                      ; $6e2d: $96
    sbc d                                         ; $6e2e: $9a
    and c                                         ; $6e2f: $a1
    and h                                         ; $6e30: $a4
    xor a                                         ; $6e31: $af
    jr z, jr_04d_6e6c                             ; $6e32: $28 $38

    ldh [$c6], a                                  ; $6e34: $e0 $c6
    adc $96                                       ; $6e36: $ce $96
    add d                                         ; $6e38: $82
    ld [$e1e7], sp                                ; $6e39: $08 $e7 $e1
    db $e3                                        ; $6e3c: $e3
    xor [hl]                                      ; $6e3d: $ae
    ld c, b                                       ; $6e3e: $48
    ld e, [hl]                                    ; $6e3f: $5e
    cp d                                          ; $6e40: $ba
    cp d                                          ; $6e41: $ba
    ld d, $32                                     ; $6e42: $16 $32
    ld l, a                                       ; $6e44: $6f
    di                                            ; $6e45: $f3
    ld a, a                                       ; $6e46: $7f
    or $d2                                        ; $6e47: $f6 $d2
    rst $00                                       ; $6e49: $c7
    sbc l                                         ; $6e4a: $9d
    ld a, d                                       ; $6e4b: $7a
    ld a, d                                       ; $6e4c: $7a
    dec [hl]                                      ; $6e4d: $35

jr_04d_6e4e:
    inc sp                                        ; $6e4e: $33
    and $6d                                       ; $6e4f: $e6 $6d
    cp $27                                        ; $6e51: $fe $27
    push de                                       ; $6e53: $d5
    rra                                           ; $6e54: $1f
    xor $e9                                       ; $6e55: $ee $e9
    dec e                                         ; $6e57: $1d
    push hl                                       ; $6e58: $e5
    or e                                          ; $6e59: $b3
    rst $00                                       ; $6e5a: $c7
    ldh a, [$36]                                  ; $6e5b: $f0 $36
    ld a, d                                       ; $6e5d: $7a
    ld c, l                                       ; $6e5e: $4d
    ld a, b                                       ; $6e5f: $78
    push de                                       ; $6e60: $d5
    or l                                          ; $6e61: $b5
    db $ec                                        ; $6e62: $ec
    xor h                                         ; $6e63: $ac
    inc d                                         ; $6e64: $14
    add hl, bc                                    ; $6e65: $09
    reti                                          ; $6e66: $d9


    dec d                                         ; $6e67: $15
    add hl, hl                                    ; $6e68: $29
    sbc c                                         ; $6e69: $99
    ld a, [hl]                                    ; $6e6a: $7e
    and a                                         ; $6e6b: $a7

jr_04d_6e6c:
    ld e, l                                       ; $6e6c: $5d
    rst $30                                       ; $6e6d: $f7
    ld [$c345], a                                 ; $6e6e: $ea $45 $c3
    add c                                         ; $6e71: $81
    db $eb                                        ; $6e72: $eb
    sub e                                         ; $6e73: $93
    ld e, [hl]                                    ; $6e74: $5e
    or e                                          ; $6e75: $b3
    ld hl, $8ed3                                  ; $6e76: $21 $d3 $8e
    ld e, $77                                     ; $6e79: $1e $77
    ld [$10ec], a                                 ; $6e7b: $ea $ec $10
    ld bc, $f10f                                  ; $6e7e: $01 $0f $f1
    ld a, l                                       ; $6e81: $7d
    db $e4                                        ; $6e82: $e4
    ld d, a                                       ; $6e83: $57
    ei                                            ; $6e84: $fb
    cp b                                          ; $6e85: $b8
    ld hl, sp-$35                                 ; $6e86: $f8 $cb
    ld e, [hl]                                    ; $6e88: $5e
    ld a, [$53b8]                                 ; $6e89: $fa $b8 $53
    cpl                                           ; $6e8c: $2f
    ld a, [de]                                    ; $6e8d: $1a
    ld c, $cc                                     ; $6e8e: $0e $cc
    dec e                                         ; $6e90: $1d
    add hl, hl                                    ; $6e91: $29
    ret                                           ; $6e92: $c9


    inc h                                         ; $6e93: $24
    and [hl]                                      ; $6e94: $a6
    ld d, l                                       ; $6e95: $55
    adc a                                         ; $6e96: $8f
    ld b, [hl]                                    ; $6e97: $46
    rst $08                                       ; $6e98: $cf
    sub e                                         ; $6e99: $93
    ld e, $0d                                     ; $6e9a: $1e $0d
    dec sp                                        ; $6e9c: $3b
    dec de                                        ; $6e9d: $1b
    ld [hl-], a                                   ; $6e9e: $32
    db $ed                                        ; $6e9f: $ed
    ld l, b                                       ; $6ea0: $68
    adc b                                         ; $6ea1: $88
    nop                                           ; $6ea2: $00
    ret nz                                        ; $6ea3: $c0

    ld [de], a                                    ; $6ea4: $12
    ld d, c                                       ; $6ea5: $51
    pop de                                        ; $6ea6: $d1
    push de                                       ; $6ea7: $d5
    or e                                          ; $6ea8: $b3
    pop hl                                        ; $6ea9: $e1
    dec sp                                        ; $6eaa: $3b
    call nz, $bbf2                                ; $6eab: $c4 $f2 $bb
    ld [c], a                                     ; $6eae: $e2
    pop af                                        ; $6eaf: $f1
    ld l, b                                       ; $6eb0: $68
    inc bc                                        ; $6eb1: $03
    ld [hl], e                                    ; $6eb2: $73
    ld b, a                                       ; $6eb3: $47
    ld sp, hl                                     ; $6eb4: $f9
    db $ec                                        ; $6eb5: $ec
    or c                                          ; $6eb6: $b1
    ld [hl], h                                    ; $6eb7: $74
    ld l, b                                       ; $6eb8: $68
    daa                                           ; $6eb9: $27
    cp l                                          ; $6eba: $bd
    ld d, $32                                     ; $6ebb: $16 $32
    jp z, $914a                                   ; $6ebd: $ca $4a $91

    ldh a, [$65]                                  ; $6ec0: $f0 $65
    inc a                                         ; $6ec2: $3c
    ld d, d                                       ; $6ec3: $52
    scf                                           ; $6ec4: $37
    cp $9f                                        ; $6ec5: $fe $9f
    or a                                          ; $6ec7: $b7
    ld sp, hl                                     ; $6ec8: $f9
    ccf                                           ; $6ec9: $3f
    ld a, e                                       ; $6eca: $7b
    jp hl                                         ; $6ecb: $e9


    db $10                                        ; $6ecc: $10
    jp nz, Jump_04d_503d                          ; $6ecd: $c2 $3d $50

    ld a, [bc]                                    ; $6ed0: $0a
    ld hl, $9664                                  ; $6ed1: $21 $64 $96
    sbc d                                         ; $6ed4: $9a
    ld d, [hl]                                    ; $6ed5: $56
    cp l                                          ; $6ed6: $bd
    sub b                                         ; $6ed7: $90
    ld e, l                                       ; $6ed8: $5d
    ei                                            ; $6ed9: $fb
    inc c                                         ; $6eda: $0c
    add h                                         ; $6edb: $84
    db $10                                        ; $6edc: $10
    ld bc, $ef4f                                  ; $6edd: $01 $4f $ef
    or h                                          ; $6ee0: $b4
    ld [$d769], a                                 ; $6ee1: $ea $69 $d7
    cp l                                          ; $6ee4: $bd
    ld a, h                                       ; $6ee5: $7c
    ld [hl], $64                                  ; $6ee6: $36 $64
    ld a, b                                       ; $6ee8: $78
    inc [hl]                                      ; $6ee9: $34
    rla                                           ; $6eea: $17
    call nz, $de6b                                ; $6eeb: $c4 $6b $de
    and $ff                                       ; $6eee: $e6 $ff
    db $ec                                        ; $6ef0: $ec
    and l                                         ; $6ef1: $a5
    add a                                         ; $6ef2: $87
    adc h                                         ; $6ef3: $8c
    rst $30                                       ; $6ef4: $f7
    ld b, l                                       ; $6ef5: $45
    sbc a                                         ; $6ef6: $9f
    db $ed                                        ; $6ef7: $ed
    and c                                         ; $6ef8: $a1
    cp d                                          ; $6ef9: $ba
    ld e, c                                       ; $6efa: $59
    inc bc                                        ; $6efb: $03
    ld h, a                                       ; $6efc: $67
    call c, $e1a3                                 ; $6efd: $dc $a3 $e1
    adc $43                                       ; $6f00: $ce $43
    halt                                          ; $6f02: $76
    db $f4                                        ; $6f03: $f4
    ld [de], a                                    ; $6f04: $12
    rst $28                                       ; $6f05: $ef
    inc h                                         ; $6f06: $24
    ld a, e                                       ; $6f07: $7b
    reti                                          ; $6f08: $d9


    pop de                                        ; $6f09: $d1
    or b                                          ; $6f0a: $b0
    ld c, e                                       ; $6f0b: $4b
    ld b, a                                       ; $6f0c: $47
    sub $8f                                       ; $6f0d: $d6 $8f
    ld h, [hl]                                    ; $6f0f: $66
    add $cf                                       ; $6f10: $c6 $cf
    pop de                                        ; $6f12: $d1
    ld d, d                                       ; $6f13: $52
    inc bc                                        ; $6f14: $03
    or $2f                                        ; $6f15: $f6 $2f
    ld e, $62                                     ; $6f17: $1e $62
    call Call_04d_4a4c                            ; $6f19: $cd $4c $4a
    db $db                                        ; $6f1c: $db
    db $d3                                        ; $6f1d: $d3
    ld l, b                                       ; $6f1e: $68
    ld a, d                                       ; $6f1f: $7a
    rst $38                                       ; $6f20: $ff
    cp a                                          ; $6f21: $bf
    ld h, $c9                                     ; $6f22: $26 $c9
    jp $e624                                      ; $6f24: $c3 $24 $e6


    ld l, h                                       ; $6f27: $6c
    reti                                          ; $6f28: $d9


    ret nc                                        ; $6f29: $d0

    ld h, l                                       ; $6f2a: $65
    jp nz, $b6b2                                  ; $6f2b: $c2 $b2 $b6

    ld a, d                                       ; $6f2e: $7a
    pop de                                        ; $6f2f: $d1
    db $d3                                        ; $6f30: $d3
    xor a                                         ; $6f31: $af
    dec e                                         ; $6f32: $1d
    dec l                                         ; $6f33: $2d
    ld [hl], l                                    ; $6f34: $75
    inc sp                                        ; $6f35: $33
    xor c                                         ; $6f36: $a9
    ld h, l                                       ; $6f37: $65
    rst $28                                       ; $6f38: $ef
    ld l, e                                       ; $6f39: $6b
    and e                                         ; $6f3a: $a3
    ld hl, $a002                                  ; $6f3b: $21 $02 $a0
    ld b, e                                       ; $6f3e: $43
    add $2c                                       ; $6f3f: $c6 $2c
    dec [hl]                                      ; $6f41: $35
    ld d, d                                       ; $6f42: $52
    or d                                          ; $6f43: $b2
    dec hl                                        ; $6f44: $2b
    ld e, $4b                                     ; $6f45: $1e $4b
    add a                                         ; $6f47: $87
    rst $10                                       ; $6f48: $d7
    xor a                                         ; $6f49: $af
    ld [hl], c                                    ; $6f4a: $71
    and a                                         ; $6f4b: $a7
    sbc [hl]                                      ; $6f4c: $9e
    dec c                                         ; $6f4d: $0d
    add c                                         ; $6f4e: $81
    ld [$a50f], sp                                ; $6f4f: $08 $0f $a5
    ld a, [$69da]                                 ; $6f52: $fa $da $69
    push de                                       ; $6f55: $d5
    inc sp                                        ; $6f56: $33
    ld l, l                                       ; $6f57: $6d
    and l                                         ; $6f58: $a5
    ld a, h                                       ; $6f59: $7c
    sbc c                                         ; $6f5a: $99
    ld e, a                                       ; $6f5b: $5f
    cp c                                          ; $6f5c: $b9
    rst $28                                       ; $6f5d: $ef
    or l                                          ; $6f5e: $b5
    rst $10                                       ; $6f5f: $d7
    sbc $5b                                       ; $6f60: $de $5b
    cp [hl]                                       ; $6f62: $be
    db $e4                                        ; $6f63: $e4
    ld d, a                                       ; $6f64: $57
    rst $08                                       ; $6f65: $cf
    halt                                          ; $6f66: $76
    push hl                                       ; $6f67: $e5
    ld [hl], c                                    ; $6f68: $71
    call $a2cb                                    ; $6f69: $cd $cb $a2
    ld a, l                                       ; $6f6c: $7d
    call nz, $9b88                                ; $6f6d: $c4 $88 $9b
    ld l, c                                       ; $6f70: $69
    ld h, $0f                                     ; $6f71: $26 $0f
    ld a, b                                       ; $6f73: $78
    ld e, a                                       ; $6f74: $5f
    ld d, c                                       ; $6f75: $51
    add $3d                                       ; $6f76: $c6 $3d
    jp $ac61                                      ; $6f78: $c3 $61 $ac


    inc d                                         ; $6f7b: $14
    add hl, de                                    ; $6f7c: $19
    ld [hl], a                                    ; $6f7d: $77
    ld [$fb95], a                                 ; $6f7e: $ea $95 $fb
    db $e4                                        ; $6f81: $e4
    adc $af                                       ; $6f82: $ce $af
    ld a, e                                       ; $6f84: $7b
    reti                                          ; $6f85: $d9


    jr jr_04d_6fff                                ; $6f86: $18 $77

    ld [$85f4], a                                 ; $6f88: $ea $f4 $85
    ld a, e                                       ; $6f8b: $7b
    ld e, h                                       ; $6f8c: $5c
    ld l, d                                       ; $6f8d: $6a
    ld b, a                                       ; $6f8e: $47
    cpl                                           ; $6f8f: $2f
    rra                                           ; $6f90: $1f
    inc h                                         ; $6f91: $24
    ld a, d                                       ; $6f92: $7a
    jr c, @-$3f                                   ; $6f93: $38 $bf

    ld [hl], d                                    ; $6f95: $72
    sbc a                                         ; $6f96: $9f
    call c, $4311                                 ; $6f97: $dc $11 $43
    ld l, c                                       ; $6f9a: $69
    db $f4                                        ; $6f9b: $f4
    jp z, Jump_000_257d                           ; $6f9c: $ca $7d $25

    ld a, [$b621]                                 ; $6f9f: $fa $21 $b6
    sub [hl]                                      ; $6fa2: $96
    cp l                                          ; $6fa3: $bd
    db $f4                                        ; $6fa4: $f4
    sub b                                         ; $6fa5: $90
    jp hl                                         ; $6fa6: $e9


    rst $00                                       ; $6fa7: $c7
    add a                                         ; $6fa8: $87
    ld [$8260], sp                                ; $6fa9: $08 $60 $82
    ld a, c                                       ; $6fac: $79
    or [hl]                                       ; $6fad: $b6
    add a                                         ; $6fae: $87
    ld [$0d66], a                                 ; $6faf: $ea $66 $0d
    sbc h                                         ; $6fb2: $9c
    ld [hl], c                                    ; $6fb3: $71
    adc a                                         ; $6fb4: $8f
    ld a, $9b                                     ; $6fb5: $3e $9b
    dec c                                         ; $6fb7: $0d
    rst $18                                       ; $6fb8: $df
    pop de                                        ; $6fb9: $d1
    ld h, e                                       ; $6fba: $63
    sub [hl]                                      ; $6fbb: $96
    ld e, d                                       ; $6fbc: $5a
    ld [hl], $74                                  ; $6fbd: $36 $74
    sbc c                                         ; $6fbf: $99
    call nc, Call_04d_52bc                        ; $6fc0: $d4 $bc $52
    and h                                         ; $6fc3: $a4
    jr nz, jr_04d_6fc8                            ; $6fc4: $20 $02

    ldh [$fa], a                                  ; $6fc6: $e0 $fa

jr_04d_6fc8:
    and h                                         ; $6fc8: $a4
    rst $10                                       ; $6fc9: $d7
    ld l, h                                       ; $6fca: $6c
    ret z                                         ; $6fcb: $c8

    or h                                          ; $6fcc: $b4
    and e                                         ; $6fcd: $a3
    rst $18                                       ; $6fce: $df
    rst $18                                       ; $6fcf: $df
    ld a, c                                       ; $6fd0: $79
    ret z                                         ; $6fd1: $c8

    adc [hl]                                      ; $6fd2: $8e
    sbc [hl]                                      ; $6fd3: $9e
    ld h, d                                       ; $6fd4: $62
    sbc d                                         ; $6fd5: $9a
    or [hl]                                       ; $6fd6: $b6
    dec hl                                        ; $6fd7: $2b
    ld a, l                                       ; $6fd8: $7d
    call z, Call_000_25a3                         ; $6fd9: $cc $a3 $25
    ret z                                         ; $6fdc: $c8

    ld l, b                                       ; $6fdd: $68
    ret c                                         ; $6fde: $d8

    add l                                         ; $6fdf: $85
    adc h                                         ; $6fe0: $8c
    inc e                                         ; $6fe1: $1c
    dec l                                         ; $6fe2: $2d
    or l                                          ; $6fe3: $b5
    jp nc, $f1c7                                  ; $6fe4: $d2 $c7 $f1

    ld a, [hl+]                                   ; $6fe7: $2a
    cp $80                                        ; $6fe8: $fe $80
    add l                                         ; $6fea: $85
    ld e, h                                       ; $6feb: $5c
    add $2f                                       ; $6fec: $c6 $2f
    ld [hl], e                                    ; $6fee: $73
    call z, $46c3                                 ; $6fef: $cc $c3 $46
    ld b, e                                       ; $6ff2: $43
    inc b                                         ; $6ff3: $04
    rrca                                          ; $6ff4: $0f
    push af                                       ; $6ff5: $f5
    ccf                                           ; $6ff6: $3f
    ld a, a                                       ; $6ff7: $7f
    or [hl]                                       ; $6ff8: $b6
    ld b, h                                       ; $6ff9: $44
    ld d, h                                       ; $6ffa: $54
    adc h                                         ; $6ffb: $8c
    sub [hl]                                      ; $6ffc: $96
    ret nz                                        ; $6ffd: $c0

    dec a                                         ; $6ffe: $3d

jr_04d_6fff:
    rst $10                                       ; $6fff: $d7
    or e                                          ; $7000: $b3
    ret                                           ; $7001: $c9


    ld b, d                                       ; $7002: $42
    add $9d                                       ; $7003: $c6 $9d
    ld a, [hl-]                                   ; $7005: $3a
    ld a, e                                       ; $7006: $7b
    pop af                                        ; $7007: $f1
    sbc l                                         ; $7008: $9d
    db $e3                                        ; $7009: $e3
    add a                                         ; $700a: $87
    cp $08                                        ; $700b: $fe $08
    ld bc, $4b8f                                  ; $700d: $01 $8f $4b
    dec l                                         ; $7010: $2d
    db $fd                                        ; $7011: $fd
    ld l, a                                       ; $7012: $6f
    rst $08                                       ; $7013: $cf
    add [hl]                                      ; $7014: $86
    cpl                                           ; $7015: $2f
    ld c, e                                       ; $7016: $4b
    or l                                          ; $7017: $b5
    ld b, e                                       ; $7018: $43
    inc b                                         ; $7019: $04
    rst $20                                       ; $701a: $e7
    db $fc                                        ; $701b: $fc
    db $f4                                        ; $701c: $f4
    ldh a, [$d9]                                  ; $701d: $f0 $d9
    ld h, h                                       ; $701f: $64
    push hl                                       ; $7020: $e5
    ld a, $66                                     ; $7021: $3e $66
    xor c                                         ; $7023: $a9
    ld e, l                                       ; $7024: $5d
    pop af                                        ; $7025: $f1
    jr jr_04d_7051                                ; $7026: $18 $29

    ld e, c                                       ; $7028: $59
    ld a, $3e                                     ; $7029: $3e $3e
    or e                                          ; $702b: $b3
    ld h, $bc                                     ; $702c: $26 $bc
    ld [hl-], a                                   ; $702e: $32
    ld a, $de                                     ; $702f: $3e $de
    ld h, a                                       ; $7031: $67
    xor a                                         ; $7032: $af

jr_04d_7033:
    add d                                         ; $7033: $82
    inc bc                                        ; $7034: $03
    dec e                                         ; $7035: $1d
    or d                                          ; $7036: $b2
    inc e                                         ; $7037: $1c
    or e                                          ; $7038: $b3
    ld d, a                                       ; $7039: $57
    ld c, l                                       ; $703a: $4d
    dec e                                         ; $703b: $1d
    dec l                                         ; $703c: $2d
    dec [hl]                                      ; $703d: $35
    ld b, e                                       ; $703e: $43
    ld c, c                                       ; $703f: $49
    ld e, a                                       ; $7040: $5f
    ld d, c                                       ; $7041: $51
    db $10                                        ; $7042: $10
    ld bc, $b480                                  ; $7043: $01 $80 $b4
    ld a, [hl-]                                   ; $7046: $3a
    ld e, e                                       ; $7047: $5b
    ret z                                         ; $7048: $c8

    ld [de], a                                    ; $7049: $12
    ld d, c                                       ; $704a: $51
    adc e                                         ; $704b: $8b
    rra                                           ; $704c: $1f
    ld a, [hl-]                                   ; $704d: $3a
    inc e                                         ; $704e: $1c
    sbc b                                         ; $704f: $98
    cp e                                          ; $7050: $bb

jr_04d_7051:
    and e                                         ; $7051: $a3
    ld d, a                                       ; $7052: $57
    rst $38                                       ; $7053: $ff
    ei                                            ; $7054: $fb
    or l                                          ; $7055: $b5
    db $d3                                        ; $7056: $d3
    adc a                                         ; $7057: $8f
    ld c, a                                       ; $7058: $4f
    inc c                                         ; $7059: $0c
    sub l                                         ; $705a: $95
    sbc d                                         ; $705b: $9a
    ld h, [hl]                                    ; $705c: $66
    ld a, [c]                                     ; $705d: $f2
    nop                                           ; $705e: $00
    dec de                                        ; $705f: $1b
    ld a, [c]                                     ; $7060: $f2
    inc de                                        ; $7061: $13
    or c                                          ; $7062: $b1
    inc sp                                        ; $7063: $33
    add hl, hl                                    ; $7064: $29
    ld l, l                                       ; $7065: $6d
    add b                                         ; $7066: $80
    ld a, [hl]                                    ; $7067: $7e
    or $68                                        ; $7068: $f6 $68
    jr c, jr_04d_70cc                             ; $706a: $38 $60

    and a                                         ; $706c: $a7
    adc $5e                                       ; $706d: $ce $5e
    db $e3                                        ; $706f: $e3
    dec sp                                        ; $7070: $3b
    ld a, h                                       ; $7071: $7c
    jr c, jr_04d_7033                             ; $7072: $38 $bf

    rlca                                          ; $7074: $07
    and e                                         ; $7075: $a3
    jr jr_04d_70cd                                ; $7076: $18 $55

    ld a, e                                       ; $7078: $7b
    ld a, [hl]                                    ; $7079: $7e
    add h                                         ; $707a: $84
    nop                                           ; $707b: $00
    adc a                                         ; $707c: $8f
    dec bc                                        ; $707d: $0b
    ld [hl+], a                                   ; $707e: $22
    ld c, a                                       ; $707f: $4f
    rst $28                                       ; $7080: $ef
    or h                                          ; $7081: $b4
    ld [$2bd9], a                                 ; $7082: $ea $d9 $2b
    or l                                          ; $7085: $b5
    db $f4                                        ; $7086: $f4
    add hl, hl                                    ; $7087: $29
    ld b, l                                       ; $7088: $45
    and d                                         ; $7089: $a2
    and a                                         ; $708a: $a7
    dec e                                         ; $708b: $1d
    ld a, l                                       ; $708c: $7d
    or [hl]                                       ; $708d: $b6
    ld a, $dc                                     ; $708e: $3e $dc
    sub a                                         ; $7090: $97
    or h                                          ; $7091: $b4
    ld e, [hl]                                    ; $7092: $5e
    ld a, a                                       ; $7093: $7f
    adc c                                         ; $7094: $89
    db $e3                                        ; $7095: $e3
    rst $18                                       ; $7096: $df
    and h                                         ; $7097: $a4
    ld c, b                                       ; $7098: $48
    reti                                          ; $7099: $d9


    add b                                         ; $709a: $80
    dec sp                                        ; $709b: $3b
    rrca                                          ; $709c: $0f
    ld e, a                                       ; $709d: $5f
    ld a, [$dedf]                                 ; $709e: $fa $df $de
    ld l, e                                       ; $70a1: $6b
    ld l, a                                       ; $70a2: $6f
    cp [hl]                                       ; $70a3: $be
    or c                                          ; $70a4: $b1
    ld a, h                                       ; $70a5: $7c
    ret                                           ; $70a6: $c9


    xor a                                         ; $70a7: $af
    add [hl]                                      ; $70a8: $86
    ld [$2b18], sp                                ; $70a9: $08 $18 $2b
    ld b, l                                       ; $70ac: $45

jr_04d_70ad:
    add $9d                                       ; $70ad: $c6 $9d
    ld a, d                                       ; $70af: $7a
    push hl                                       ; $70b0: $e5
    ld a, $b9                                     ; $70b1: $3e $b9
    db $d3                                        ; $70b3: $d3
    ld c, d                                       ; $70b4: $4a
    db $ec                                        ; $70b5: $ec
    xor a                                         ; $70b6: $af
    sbc [hl]                                      ; $70b7: $9e
    ld h, [hl]                                    ; $70b8: $66
    ld a, [c]                                     ; $70b9: $f2
    nop                                           ; $70ba: $00
    dec de                                        ; $70bb: $1b
    ld a, [c]                                     ; $70bc: $f2
    inc de                                        ; $70bd: $13
    or c                                          ; $70be: $b1
    inc sp                                        ; $70bf: $33
    add hl, hl                                    ; $70c0: $29
    ld l, l                                       ; $70c1: $6d
    add b                                         ; $70c2: $80
    ld a, [hl]                                    ; $70c3: $7e
    or $68                                        ; $70c4: $f6 $68
    cp b                                          ; $70c6: $b8
    ld h, c                                       ; $70c7: $61
    db $ec                                        ; $70c8: $ec
    ret nc                                        ; $70c9: $d0

    rst $38                                       ; $70ca: $ff
    ld d, l                                       ; $70cb: $55

jr_04d_70cc:
    ei                                            ; $70cc: $fb

jr_04d_70cd:
    ld b, a                                       ; $70cd: $47
    sub [hl]                                      ; $70ce: $96
    dec hl                                        ; $70cf: $2b
    adc d                                         ; $70d0: $8a
    dec a                                         ; $70d1: $3d
    ld [bc], a                                    ; $70d2: $02
    adc a                                         ; $70d3: $8f
    ld c, e                                       ; $70d4: $4b
    ld c, l                                       ; $70d5: $4d
    xor e                                         ; $70d6: $ab
    sbc $15                                       ; $70d7: $de $15
    adc a                                         ; $70d9: $8f
    ld h, l                                       ; $70da: $65
    ld a, [hl]                                    ; $70db: $7e
    sub h                                         ; $70dc: $94
    sub l                                         ; $70dd: $95
    ld [hl+], a                                   ; $70de: $22
    pop hl                                        ; $70df: $e1
    db $10                                        ; $70e0: $10
    ld bc, $f84f                                  ; $70e1: $01 $4f $f8
    ld h, l                                       ; $70e4: $65
    sub [hl]                                      ; $70e5: $96
    ld e, b                                       ; $70e6: $58
    cp b                                          ; $70e7: $b8
    add c                                         ; $70e8: $81
    ld c, $19                                     ; $70e9: $0e $19
    or e                                          ; $70eb: $b3
    call nc, Call_04d_5e8e                        ; $70ec: $d4 $8e $5e
    ld a, $48                                     ; $70ef: $3e $48
    db $f4                                        ; $70f1: $f4
    ld [hl], b                                    ; $70f2: $70
    ld a, [hl]                                    ; $70f3: $7e
    push hl                                       ; $70f4: $e5
    ld a, $fd                                     ; $70f5: $3e $fd
    ld l, $47                                     ; $70f7: $2e $47
    sbc $55                                       ; $70f9: $de $55
    ld hl, $0110                                  ; $70fb: $21 $10 $01
    adc a                                         ; $70fe: $8f
    ld c, e                                       ; $70ff: $4b
    adc l                                         ; $7100: $8d
    ld a, [c]                                     ; $7101: $f2
    reti                                          ; $7102: $d9


    ld h, e                                       ; $7103: $63
    ld sp, hl                                     ; $7104: $f9
    ld hl, sp-$34                                 ; $7105: $f8 $cc
    sbc d                                         ; $7107: $9a
    rst $18                                       ; $7108: $df
    rst $38                                       ; $7109: $ff
    db $d3                                        ; $710a: $d3
    ld b, l                                       ; $710b: $45
    ld l, d                                       ; $710c: $6a
    ld [hl], $a6                                  ; $710d: $36 $a6
    dec e                                         ; $710f: $1d
    cp l                                          ; $7110: $bd
    db $f4                                        ; $7111: $f4
    add hl, hl                                    ; $7112: $29
    ld b, l                                       ; $7113: $45
    and d                                         ; $7114: $a2
    and l                                         ; $7115: $a5
    and $f7                                       ; $7116: $e6 $f7
    rst $38                                       ; $7118: $ff
    ld b, l                                       ; $7119: $45
    ld b, e                                       ; $711a: $43
    inc b                                         ; $711b: $04
    jr nz, jr_04d_70ad                            ; $711c: $20 $8f

    xor [hl]                                      ; $711e: $ae
    add hl, bc                                    ; $711f: $09
    cpl                                           ; $7120: $2f
    ld [hl], b                                    ; $7121: $70
    ld a, e                                       ; $7122: $7b
    ld e, h                                       ; $7123: $5c
    ld l, d                                       ; $7124: $6a
    ld b, a                                       ; $7125: $47
    xor a                                         ; $7126: $af
    rrca                                          ; $7127: $0f
    ld l, e                                       ; $7128: $6b
    ld d, a                                       ; $7129: $57
    xor $d3                                       ; $712a: $ee $d3
    rst $28                                       ; $712c: $ef
    jp nc, Jump_000_35d5                          ; $712d: $d2 $d5 $35

    ld d, d                                       ; $7130: $52
    ld [hl-], a                                   ; $7131: $32
    dec d                                         ; $7132: $15
    or e                                          ; $7133: $b3
    ld d, a                                       ; $7134: $57
    db $ed                                        ; $7135: $ed
    or l                                          ; $7136: $b5
    rst $10                                       ; $7137: $d7
    rst $18                                       ; $7138: $df
    ld e, b                                       ; $7139: $58
    cp [hl]                                       ; $713a: $be
    db $e4                                        ; $713b: $e4
    ld d, a                                       ; $713c: $57
    adc a                                         ; $713d: $8f
    dec sp                                        ; $713e: $3b
    push af                                       ; $713f: $f5
    ld l, h                                       ; $7140: $6c
    ld d, b                                       ; $7141: $50
    adc b                                         ; $7142: $88
    nop                                           ; $7143: $00
    rrca                                          ; $7144: $0f
    push de                                       ; $7145: $d5
    or e                                          ; $7146: $b3
    ret                                           ; $7147: $c9


    jp nc, $fd91                                  ; $7148: $d2 $91 $fd

    and b                                         ; $714b: $a0
    ld a, $7b                                     ; $714c: $3e $7b
    push de                                       ; $714e: $d5
    cp b                                          ; $714f: $b8
    ld d, e                                       ; $7150: $53
    xor a                                         ; $7151: $af
    call c, $b5e7                                 ; $7152: $dc $e7 $b5
    db $f4                                        ; $7155: $f4
    add hl, hl                                    ; $7156: $29
    ld b, l                                       ; $7157: $45
    and d                                         ; $7158: $a2
    and l                                         ; $7159: $a5
    ld e, $21                                     ; $715a: $1e $21
    ld c, a                                       ; $715c: $4f
    adc a                                         ; $715d: $8f
    ld c, a                                       ; $715e: $4f
    inc c                                         ; $715f: $0c
    and l                                         ; $7160: $a5
    ld hl, $fbf3                                  ; $7161: $21 $f3 $fb
    rst $38                                       ; $7164: $ff
    nop                                           ; $7165: $00
    dec de                                        ; $7166: $1b
    ld a, [c]                                     ; $7167: $f2
    inc de                                        ; $7168: $13
    or c                                          ; $7169: $b1
    inc sp                                        ; $716a: $33
    add hl, hl                                    ; $716b: $29
    ld l, l                                       ; $716c: $6d
    add b                                         ; $716d: $80
    ld a, [hl]                                    ; $716e: $7e
    or $e8                                        ; $716f: $f6 $e8
    cp h                                          ; $7171: $bc
    or h                                          ; $7172: $b4
    ld hl, $895a                                  ; $7173: $21 $5a $89
    adc l                                         ; $7176: $8d
    rrca                                          ; $7177: $0f
    rst $30                                       ; $7178: $f7
    db $f4                                        ; $7179: $f4
    ld l, $1d                                     ; $717a: $2e $1d
    adc $3c                                       ; $717c: $ce $3c
    and h                                         ; $717e: $a4
    ld a, d                                       ; $717f: $7a
    ld d, a                                       ; $7180: $57
    ld d, h                                       ; $7181: $54
    adc l                                         ; $7182: $8d
    inc h                                         ; $7183: $24
    ld h, d                                       ; $7184: $62
    and e                                         ; $7185: $a3
    rst $00                                       ; $7186: $c7
    sbc l                                         ; $7187: $9d
    ld a, d                                       ; $7188: $7a
    ld [hl], d                                    ; $7189: $72
    or h                                          ; $718a: $b4
    ld e, [hl]                                    ; $718b: $5e
    ld e, l                                       ; $718c: $5d
    ld h, d                                       ; $718d: $62
    inc bc                                        ; $718e: $03
    ld b, d                                       ; $718f: $42
    xor b                                         ; $7190: $a8
    rst $18                                       ; $7191: $df
    ld d, c                                       ; $7192: $51
    ld a, $7b                                     ; $7193: $3e $7b
    call z, Call_04d_5a6b                         ; $7195: $cc $6b $5a
    adc c                                         ; $7198: $89
    sbc l                                         ; $7199: $9d
    and c                                         ; $719a: $a1
    dec bc                                        ; $719b: $0b
    rst $30                                       ; $719c: $f7
    and l                                         ; $719d: $a5
    dec c                                         ; $719e: $0d
    and c                                         ; $719f: $a1
    push af                                       ; $71a0: $f5
    ld [hl], e                                    ; $71a1: $73
    adc c                                         ; $71a2: $89
    ld [$71c0], a                                 ; $71a3: $ea $c0 $71
    cp b                                          ; $71a6: $b8
    add c                                         ; $71a7: $81
    ld c, $19                                     ; $71a8: $0e $19
    ld sp, $7e74                                  ; $71aa: $31 $74 $7e
    rst $38                                       ; $71ad: $ff
    ld c, a                                       ; $71ae: $4f
    rla                                           ; $71af: $17
    xor c                                         ; $71b0: $a9
    ld h, l                                       ; $71b1: $65
    xor c                                         ; $71b2: $a9
    halt                                          ; $71b3: $76
    adc b                                         ; $71b4: $88
    nop                                           ; $71b5: $00
    rrca                                          ; $71b6: $0f
    pop bc                                        ; $71b7: $c1
    inc a                                         ; $71b8: $3c
    dec de                                        ; $71b9: $1b
    or e                                          ; $71ba: $b3
    call nc, $f0b4                                ; $71bb: $d4 $b4 $f0
    add sp, -$63                                  ; $71be: $e8 $9d
    ld [hl], a                                    ; $71c0: $77
    and l                                         ; $71c1: $a5
    call z, $d740                                 ; $71c2: $cc $40 $d7
    rst $20                                       ; $71c5: $e7
    inc c                                         ; $71c6: $0c
    dec bc                                        ; $71c7: $0b
    ld l, [hl]                                    ; $71c8: $6e
    rst $08                                       ; $71c9: $cf
    push af                                       ; $71ca: $f5
    ld l, h                                       ; $71cb: $6c
    or d                                          ; $71cc: $b2
    ld hl, sp-$5f                                 ; $71cd: $f8 $a1
    rrca                                          ; $71cf: $0f
    rst $20                                       ; $71d0: $e7
    rst $30                                       ; $71d1: $f7
    ld h, b                                       ; $71d2: $60
    inc d                                         ; $71d3: $14
    and e                                         ; $71d4: $a3
    ld l, d                                       ; $71d5: $6a
    rst $08                                       ; $71d6: $cf
    adc a                                         ; $71d7: $8f
    db $10                                        ; $71d8: $10
    adc a                                         ; $71d9: $8f
    ld c, e                                       ; $71da: $4b
    dec l                                         ; $71db: $2d
    sub e                                         ; $71dc: $93
    ld e, d                                       ; $71dd: $5a
    ld a, [$ccd4]                                 ; $71de: $fa $d4 $cc
    ld e, d                                       ; $71e1: $5a
    sub [hl]                                      ; $71e2: $96
    ld l, d                                       ; $71e3: $6a
    add a                                         ; $71e4: $87
    ld [$4b8f], sp                                ; $71e5: $08 $8f $4b

Jump_04d_71e8:
    call $48a4                                    ; $71e8: $cd $a4 $48
    and $e1                                       ; $71eb: $e6 $e1
    or $b8                                        ; $71ed: $f6 $b8
    call nc, $af32                                ; $71ef: $d4 $32 $af
    ld h, [hl]                                    ; $71f2: $66
    xor a                                         ; $71f3: $af
    sbc d                                         ; $71f4: $9a
    rst $18                                       ; $71f5: $df
    rst $38                                       ; $71f6: $ff
    ld [hl], e                                    ; $71f7: $73
    ld d, c                                       ; $71f8: $51
    ld e, d                                       ; $71f9: $5a
    sub d                                         ; $71fa: $92
    ld b, a                                       ; $71fb: $47
    jp $86ce                                      ; $71fc: $c3 $ce $86


    call z, $3d1e                                 ; $71ff: $cc $1e $3d
    dec l                                         ; $7202: $2d
    ld l, b                                       ; $7203: $68
    ld h, $35                                     ; $7204: $26 $35
    push bc                                       ; $7206: $c5
    or a                                          ; $7207: $b7
    call $faa4                                    ; $7208: $cd $a4 $fa
    add a                                         ; $720b: $87
    db $ec                                        ; $720c: $ec
    and c                                         ; $720d: $a1
    ld d, h                                       ; $720e: $54
    ld e, a                                       ; $720f: $5f
    dec sp                                        ; $7210: $3b
    xor $d4                                       ; $7211: $ee $d4
    adc c                                         ; $7213: $89
    ld b, e                                       ; $7214: $43
    inc b                                         ; $7215: $04
    adc a                                         ; $7216: $8f
    ld c, e                                       ; $7217: $4b
    ld c, l                                       ; $7218: $4d
    db $dd                                        ; $7219: $dd
    rst $38                                       ; $721a: $ff
    xor e                                         ; $721b: $ab
    rst $30                                       ; $721c: $f7
    ld d, b                                       ; $721d: $50
    xor d                                         ; $721e: $aa
    xor a                                         ; $721f: $af
    add l                                         ; $7220: $85
    ld [$4fc0], sp                                ; $7221: $08 $c0 $4f
    dec a                                         ; $7224: $3d
    sbc e                                         ; $7225: $9b
    inc a                                         ; $7226: $3c
    jp c, $93ce                                   ; $7227: $da $ce $93

    jp hl                                         ; $722a: $e9


    pop hl                                        ; $722b: $e1
    db $d3                                        ; $722c: $d3
    adc a                                         ; $722d: $8f
    cp a                                          ; $722e: $bf
    ld [hl], d                                    ; $722f: $72
    sbc a                                         ; $7230: $9f
    ld d, [hl]                                    ; $7231: $56
    or d                                          ; $7232: $b2
    dec hl                                        ; $7233: $2b
    ld e, $3b                                     ; $7234: $1e $3b
    ld a, d                                       ; $7236: $7a
    ld hl, $7d2b                                  ; $7237: $21 $2b $7d
    ld h, $e7                                     ; $723a: $26 $e7
    ld b, a                                       ; $723c: $47
    db $db                                        ; $723d: $db
    ld b, e                                       ; $723e: $43
    ret                                           ; $723f: $c9


    adc [hl]                                      ; $7240: $8e
    sbc [hl]                                      ; $7241: $9e
    inc e                                         ; $7242: $1c
    reti                                          ; $7243: $d9


    ld c, e                                       ; $7244: $4b
    sub [hl]                                      ; $7245: $96
    dec c                                         ; $7246: $0d
    ld e, l                                       ; $7247: $5d
    ret z                                         ; $7248: $c8

    ld b, b                                       ; $7249: $40
    daa                                           ; $724a: $27
    ld c, d                                       ; $724b: $4a
    db $fd                                        ; $724c: $fd
    ld [$1b80], a                                 ; $724d: $ea $80 $1b
    ret nc                                        ; $7250: $d0

    rst $38                                       ; $7251: $ff
    and e                                         ; $7252: $a3
    ld b, a                                       ; $7253: $47
    ld c, d                                       ; $7254: $4a
    ld [hl-], a                                   ; $7255: $32
    adc c                                         ; $7256: $89
    dec e                                         ; $7257: $1d
    ld [hl+], a                                   ; $7258: $22
    ret                                           ; $7259: $c9


    db $f4                                        ; $725a: $f4
    and e                                         ; $725b: $a3
    dec sp                                        ; $725c: $3b
    ldh [rTMA], a                                 ; $725d: $e0 $06
    add [hl]                                      ; $725f: $86
    ld h, a                                       ; $7260: $67
    sub $d9                                       ; $7261: $d6 $d9
    db $f4                                        ; $7263: $f4
    cp e                                          ; $7264: $bb
    inc e                                         ; $7265: $1c
    add hl, de                                    ; $7266: $19
    ld [hl+], a                                   ; $7267: $22
    ld c, a                                       ; $7268: $4f
    adc a                                         ; $7269: $8f
    ld c, a                                       ; $726a: $4f

jr_04d_726b:
    inc c                                         ; $726b: $0c
    and l                                         ; $726c: $a5
    ld hl, $fbf3                                  ; $726d: $21 $f3 $fb
    rst $38                                       ; $7270: $ff
    or h                                          ; $7271: $b4
    ld hl, sp-$2b                                 ; $7272: $f8 $d5
    reti                                          ; $7274: $d9


    res 5, a                                      ; $7275: $cb $af
    sub c                                         ; $7277: $91
    sub b                                         ; $7278: $90
    or e                                          ; $7279: $b3
    pop de                                        ; $727a: $d1
    sub b                                         ; $727b: $90
    ld sp, $2d4b                                  ; $727c: $31 $4b $2d
    ld b, a                                       ; $727f: $47
    xor a                                         ; $7280: $af
    call c, $9367                                 ; $7281: $dc $67 $93
    ld e, l                                       ; $7284: $5d
    pop af                                        ; $7285: $f1
    ret c                                         ; $7286: $d8

    pop de                                        ; $7287: $d1
    res 4, h                                      ; $7288: $cb $a4
    ld l, h                                       ; $728a: $6c
    ld e, c                                       ; $728b: $59
    adc b                                         ; $728c: $88
    nop                                           ; $728d: $00
    ld c, a                                       ; $728e: $4f
    set 5, [hl]                                   ; $728f: $cb $ee
    add sp, -$27                                  ; $7291: $e8 $d9
    ldh a, [rBCPD]                                ; $7293: $f0 $69
    ld b, a                                       ; $7295: $47
    adc a                                         ; $7296: $8f
    dec sp                                        ; $7297: $3b
    push af                                       ; $7298: $f5
    or d                                          ; $7299: $b2
    rra                                           ; $729a: $1f
    rst $38                                       ; $729b: $ff
    rst $00                                       ; $729c: $c7
    inc hl                                        ; $729d: $23
    inc b                                         ; $729e: $04
    adc a                                         ; $729f: $8f
    ld c, e                                       ; $72a0: $4b
    ld c, l                                       ; $72a1: $4d
    adc e                                         ; $72a2: $8b
    ld e, a                                       ; $72a3: $5f
    dec a                                         ; $72a4: $3d
    dec de                                        ; $72a5: $1b
    res 0, [hl]                                   ; $72a6: $cb $86
    ld l, $fd                                     ; $72a8: $2e $fd
    ld l, a                                       ; $72aa: $6f
    cpl                                           ; $72ab: $2f
    sub e                                         ; $72ac: $93
    or d                                          ; $72ad: $b2
    ld h, l                                       ; $72ae: $65
    ld h, e                                       ; $72af: $63
    ld [hl], a                                    ; $72b0: $77
    rst $20                                       ; $72b1: $e7
    or a                                          ; $72b2: $b7
    sub h                                         ; $72b3: $94
    ld de, $87d5                                  ; $72b4: $11 $d5 $87
    ld e, b                                       ; $72b7: $58
    adc b                                         ; $72b8: $88
    nop                                           ; $72b9: $00
    jr jr_04d_726b                                ; $72ba: $18 $af

    ld a, e                                       ; $72bc: $7b
    adc l                                         ; $72bd: $8d
    dec sp                                        ; $72be: $3b
    ld [hl], l                                    ; $72bf: $75
    ld a, [$8e4e]                                 ; $72c0: $fa $4e $8e
    sbc [hl]                                      ; $72c3: $9e
    ld c, l                                       ; $72c4: $4d
    ld b, [hl]                                    ; $72c5: $46
    ld c, $91                                     ; $72c6: $0e $91
    add sp, -$6b                                  ; $72c8: $e8 $95
    ei                                            ; $72ca: $fb
    ld l, h                                       ; $72cb: $6c
    ld hl, sp-$2e                                 ; $72cc: $f8 $d2
    and c                                         ; $72ce: $a1
    sbc l                                         ; $72cf: $9d
    db $f4                                        ; $72d0: $f4
    inc c                                         ; $72d1: $0c
    ld de, $4b8f                                  ; $72d2: $11 $8f $4b
    dec l                                         ; $72d5: $2d
    ld b, a                                       ; $72d6: $47
    xor a                                         ; $72d7: $af
    call c, $9367                                 ; $72d8: $dc $67 $93
    dec e                                         ; $72db: $1d
    cp l                                          ; $72dc: $bd
    ld c, h                                       ; $72dd: $4c
    jp z, $8596                                   ; $72de: $ca $96 $85

    ld a, e                                       ; $72e1: $7b
    ld a, d                                       ; $72e2: $7a
    rst $38                                       ; $72e3: $ff
    sbc a                                         ; $72e4: $9f
    ld c, l                                       ; $72e5: $4d
    ld d, [hl]                                    ; $72e6: $56
    xor $63                                       ; $72e7: $ee $63
    sub [hl]                                      ; $72e9: $96
    ld e, d                                       ; $72ea: $5a
    ld h, $35                                     ; $72eb: $26 $35
    dec l                                         ; $72ed: $2d
    ld a, [hl]                                    ; $72ee: $7e
    call $f55e                                    ; $72ef: $cd $5e $f5
    ld [$8f01], sp                                ; $72f2: $08 $01 $8f
    db $eb                                        ; $72f5: $eb
    ld l, h                                       ; $72f6: $6c
    ld e, [hl]                                    ; $72f7: $5e
    add hl, hl                                    ; $72f8: $29
    ld [bc], a                                    ; $72f9: $02
    or a                                          ; $72fa: $b7
    and a                                         ; $72fb: $a7
    ld h, l                                       ; $72fc: $65
    ld b, a                                       ; $72fd: $47
    ld c, h                                       ; $72fe: $4c
    or $ea                                        ; $72ff: $f6 $ea
    reti                                          ; $7301: $d9


    ldh a, [rBGP]                                 ; $7302: $f0 $47
    ld [$e1e7], sp                                ; $7304: $08 $e7 $e1
    inc hl                                        ; $7307: $23
    ld h, $7b                                     ; $7308: $26 $7b
    push af                                       ; $730a: $f5
    xor [hl]                                      ; $730b: $ae
    xor b                                         ; $730c: $a8
    db $10                                        ; $730d: $10
    cp a                                          ; $730e: $bf
    and d                                         ; $730f: $a2
    ldh [rPCM12], a                               ; $7310: $e0 $76
    ld e, $be                                     ; $7312: $1e $be
    and e                                         ; $7314: $a3
    ld b, a                                       ; $7315: $47
    xor a                                         ; $7316: $af
    inc c                                         ; $7317: $0c
    rst $38                                       ; $7318: $ff
    sub a                                         ; $7319: $97
    ld hl, sp-$36                                 ; $731a: $f8 $ca
    ld a, l                                       ; $731c: $7d
    ld e, d                                       ; $731d: $5a
    db $fc                                        ; $731e: $fc
    ld e, d                                       ; $731f: $5a
    db $fd                                        ; $7320: $fd
    ld e, a                                       ; $7321: $5f
    res 0, [hl]                                   ; $7322: $cb $86
    ld l, $1d                                     ; $7324: $2e $1d
    dec a                                         ; $7326: $3d
    ld b, e                                       ; $7327: $43
    ld h, a                                       ; $7328: $67
    jp Jump_000_0221                              ; $7329: $c3 $21 $02


    adc a                                         ; $732c: $8f
    db $eb                                        ; $732d: $eb
    ld l, h                                       ; $732e: $6c
    ld e, [hl]                                    ; $732f: $5e
    add hl, hl                                    ; $7330: $29
    jp nz, $011e                                  ; $7331: $c2 $1e $01

    ld c, a                                       ; $7334: $4f
    ld a, b                                       ; $7335: $78
    ld a, e                                       ; $7336: $7b
    db $f4                                        ; $7337: $f4
    reti                                          ; $7338: $d9


    inc h                                         ; $7339: $24
    ld e, c                                       ; $733a: $59
    ld a, [$b3d4]                                 ; $733b: $fa $d4 $b3
    pop hl                                        ; $733e: $e1
    inc hl                                        ; $733f: $23
    add a                                         ; $7340: $87
    ld c, b                                       ; $7341: $48
    push hl                                       ; $7342: $e5
    and l                                         ; $7343: $a5
    rrca                                          ; $7344: $0f
    rst $30                                       ; $7345: $f7
    ld c, $88                                     ; $7346: $0e $88
    nop                                           ; $7348: $00
    ld l, a                                       ; $7349: $6f
    adc h                                         ; $734a: $8c
    db $fc                                        ; $734b: $fc
    jp $d94a                                      ; $734c: $c3 $4a $d9


    ld l, b                                       ; $734f: $68
    inc b                                         ; $7350: $04
    xor a                                         ; $7351: $af
    ld c, l                                       ; $7352: $4d
    cp a                                          ; $7353: $bf
    ld [c], a                                     ; $7354: $e2
    pop de                                        ; $7355: $d1
    or h                                          ; $7356: $b4
    call nz, Call_000_23e3                        ; $7357: $c4 $e3 $23
    xor a                                         ; $735a: $af
    dec l                                         ; $735b: $2d
    db $e3                                        ; $735c: $e3
    pop hl                                        ; $735d: $e1
    ld sp, hl                                     ; $735e: $f9
    xor d                                         ; $735f: $aa
    ld l, c                                       ; $7360: $69
    push hl                                       ; $7361: $e5
    adc [hl]                                      ; $7362: $8e
    nop                                           ; $7363: $00
    xor a                                         ; $7364: $af
    dec c                                         ; $7365: $0d
    xor a                                         ; $7366: $af
    ld e, [hl]                                    ; $7367: $5e
    ld h, $2c                                     ; $7368: $26 $2c
    ld l, e                                       ; $736a: $6b
    or e                                          ; $736b: $b3
    ld d, [hl]                                    ; $736c: $56
    ld h, d                                       ; $736d: $62
    inc sp                                        ; $736e: $33
    xor c                                         ; $736f: $a9
    ld b, [hl]                                    ; $7370: $46
    xor a                                         ; $7371: $af
    dec c                                         ; $7372: $0d
    cpl                                           ; $7373: $2f
    ld [de], a                                    ; $7374: $12
    ld a, $29                                     ; $7375: $3e $29
    ld a, [hl+]                                   ; $7377: $2a
    cp a                                          ; $7378: $bf
    ld [hl], b                                    ; $7379: $70
    cp h                                          ; $737a: $bc
    ld a, [de]                                    ; $737b: $1a
    ld bc, $cdaf                                  ; $737c: $01 $af $cd
    db $db                                        ; $737f: $db
    db $fc                                        ; $7380: $fc
    ld l, a                                       ; $7381: $6f
    sbc e                                         ; $7382: $9b
    sub l                                         ; $7383: $95
    ld [hl+], a                                   ; $7384: $22
    ld sp, hl                                     ; $7385: $f9
    push hl                                       ; $7386: $e5
    ld e, h                                       ; $7387: $5c
    sbc [hl]                                      ; $7388: $9e
    ld de, $2daf                                  ; $7389: $11 $af $2d
    pop bc                                        ; $738c: $c1
    pop af                                        ; $738d: $f1
    ld a, h                                       ; $738e: $7c
    cp b                                          ; $738f: $b8
    rl l                                          ; $7390: $cb $15
    or l                                          ; $7392: $b5
    ld c, h                                       ; $7393: $4c
    call z, $9f4f                                 ; $7394: $cc $4f $9f
    ld d, d                                       ; $7397: $52
    inc h                                         ; $7398: $24
    ld a, [de]                                    ; $7399: $1a
    ld bc, $8daf                                  ; $739a: $01 $af $8d
    ld e, h                                       ; $739d: $5c
    rst $30                                       ; $739e: $f7
    ld hl, sp+$08                                 ; $739f: $f8 $08
    xor a                                         ; $73a1: $af
    call $fcdb                                    ; $73a2: $cd $db $fc
    sbc a                                         ; $73a5: $9f
    cp l                                          ; $73a6: $bd
    ld [hl], h                                    ; $73a7: $74
    inc b                                         ; $73a8: $04
    rst $08                                       ; $73a9: $cf
    push af                                       ; $73aa: $f5
    ld l, h                                       ; $73ab: $6c
    or d                                          ; $73ac: $b2
    ld e, h                                       ; $73ad: $5c
    db $f4                                        ; $73ae: $f4
    ld d, a                                       ; $73af: $57
    rst $00                                       ; $73b0: $c7
    and e                                         ; $73b1: $a3
    db $ed                                        ; $73b2: $ed
    ld [hl], c                                    ; $73b3: $71
    xor c                                         ; $73b4: $a9
    ld l, c                                       ; $73b5: $69
    push de                                       ; $73b6: $d5
    dec bc                                        ; $73b7: $0b
    rst $30                                       ; $73b8: $f7
    ld de, $3ed3                                  ; $73b9: $11 $d3 $3e
    db $ed                                        ; $73bc: $ed
    add sp, $65                                   ; $73bd: $e8 $65
    ld b, e                                       ; $73bf: $43
    ld b, a                                       ; $73c0: $47
    ld c, d                                       ; $73c1: $4a
    ld [hl-], a                                   ; $73c2: $32
    adc c                                         ; $73c3: $89
    sub c                                         ; $73c4: $91
    sub d                                         ; $73c5: $92
    ld e, l                                       ; $73c6: $5d
    pop af                                        ; $73c7: $f1
    adc [hl]                                      ; $73c8: $8e
    sbc h                                         ; $73c9: $9c
    and e                                         ; $73ca: $a3
    ld l, e                                       ; $73cb: $6b
    or $2a                                        ; $73cc: $f6 $2a
    adc b                                         ; $73ce: $88
    nop                                           ; $73cf: $00
    and b                                         ; $73d0: $a0
    ld b, e                                       ; $73d1: $43
    xor d                                         ; $73d2: $aa
    ld h, a                                       ; $73d3: $67
    sub e                                         ; $73d4: $93
    add l                                         ; $73d5: $85
    ei                                            ; $73d6: $fb
    adc b                                         ; $73d7: $88
    ld l, c                                       ; $73d8: $69
    rra                                           ; $73d9: $1f
    dec c                                         ; $73da: $0d
    cp e                                          ; $73db: $bb
    ld [hl], h                                    ; $73dc: $74
    db $f4                                        ; $73dd: $f4
    adc c                                         ; $73de: $89
    jp c, Jump_04d_769a                           ; $73df: $da $9a $76

    jr nc, jr_04d_741a                            ; $73e2: $30 $36

    dec a                                         ; $73e4: $3d
    sub e                                         ; $73e5: $93
    jp nc, Jump_04d_6de6                          ; $73e6: $d2 $e6 $6d

    cp $27                                        ; $73e9: $fe $27
    push de                                       ; $73eb: $d5
    cp a                                          ; $73ec: $bf
    ld a, [$86d1]                                 ; $73ed: $fa $d1 $86
    sub c                                         ; $73f0: $91
    ld e, c                                       ; $73f1: $59
    ld h, a                                       ; $73f2: $67
    inc hl                                        ; $73f3: $23
    dec h                                         ; $73f4: $25
    sbc c                                         ; $73f5: $99
    inc b                                         ; $73f6: $04
    call c, $5f40                                 ; $73f7: $dc $40 $5f
    ld e, c                                       ; $73fa: $59
    ld l, $fa                                     ; $73fb: $2e $fa
    xor a                                         ; $73fd: $af
    xor b                                         ; $73fe: $a8
    dec e                                         ; $73ff: $1d
    cp l                                          ; $7400: $bd
    dec hl                                        ; $7401: $2b
    ld e, $cb                                     ; $7402: $1e $cb
    ld b, a                                       ; $7404: $47
    ld h, a                                       ; $7405: $67
    ld [hl], d                                    ; $7406: $72
    cp a                                          ; $7407: $bf
    cpl                                           ; $7408: $2f
    cp e                                          ; $7409: $bb
    jp hl                                         ; $740a: $e9


    dec e                                         ; $740b: $1d
    ld [bc], a                                    ; $740c: $02
    ld de, $e1e7                                  ; $740d: $11 $e7 $e1
    db $d3                                        ; $7410: $d3
    adc [hl]                                      ; $7411: $8e
    sbc $d1                                       ; $7412: $de $d1
    db $d3                                        ; $7414: $d3
    adc a                                         ; $7415: $8f
    ld l, a                                       ; $7416: $6f
    xor a                                         ; $7417: $af
    ld a, [c]                                     ; $7418: $f2
    push hl                                       ; $7419: $e5

jr_04d_741a:
    db $e3                                        ; $741a: $e3
    rst $38                                       ; $741b: $ff
    call z, $8712                                 ; $741c: $cc $12 $87
    db $10                                        ; $741f: $10
    ld h, [hl]                                    ; $7420: $66
    and $f1                                       ; $7421: $e6 $f1
    push af                                       ; $7423: $f5
    jp z, Jump_000_031e                           ; $7424: $ca $1e $03

    ld a, c                                       ; $7427: $79
    sbc e                                         ; $7428: $9b
    inc b                                         ; $7429: $04
    ei                                            ; $742a: $fb
    db $ed                                        ; $742b: $ed
    jp hl                                         ; $742c: $e9


    db $fd                                        ; $742d: $fd
    ld a, a                                       ; $742e: $7f
    ld [hl], $59                                  ; $742f: $36 $59
    sbc d                                         ; $7431: $9a
    push hl                                       ; $7432: $e5
    push af                                       ; $7433: $f5
    ld [$4f01], sp                                ; $7434: $08 $01 $4f
    bit 1, [hl]                                   ; $7437: $cb $4e
    cp a                                          ; $7439: $bf
    rst $38                                       ; $743a: $ff
    rst $08                                       ; $743b: $cf
    ld h, $d3                                     ; $743c: $26 $d3
    ld l, d                                       ; $743e: $6a
    call c, Call_04d_67a9                         ; $743f: $dc $a9 $67
    jp Jump_000_211f                              ; $7442: $c3 $1f $21


    ld b, b                                       ; $7445: $40
    ld h, l                                       ; $7446: $65
    jp hl                                         ; $7447: $e9


    ret z                                         ; $7448: $c8

    and [hl]                                      ; $7449: $a6
    ld a, [$ece5]                                 ; $744a: $fa $e5 $ec
    ld hl, $7b70                                  ; $744d: $21 $70 $7b
    xor [hl]                                      ; $7450: $ae
    ld h, a                                       ; $7451: $67
    sub e                                         ; $7452: $93
    ld e, l                                       ; $7453: $5d
    pop af                                        ; $7454: $f1
    adc [hl]                                      ; $7455: $8e
    sbc h                                         ; $7456: $9c
    and e                                         ; $7457: $a3
    srl [hl]                                      ; $7458: $cb $3e
    ld b, d                                       ; $745a: $42
    adc a                                         ; $745b: $8f
    ld c, e                                       ; $745c: $4b
    ld c, l                                       ; $745d: $4d
    rrca                                          ; $745e: $0f
    rst $18                                       ; $745f: $df
    dec d                                         ; $7460: $15
    adc a                                         ; $7461: $8f
    add l                                         ; $7462: $85
    db $e4                                        ; $7463: $e4
    jp hl                                         ; $7464: $e9


    ld h, l                                       ; $7465: $65
    ld h, a                                       ; $7466: $67
    jp $3477                                      ; $7467: $c3 $77 $34


    ld b, h                                       ; $746a: $44
    rrca                                          ; $746b: $0f
    sub h                                         ; $746c: $94
    sbc [hl]                                      ; $746d: $9e
    call $a326                                    ; $746e: $cd $26 $a3
    ld a, h                                       ; $7471: $7c
    or $98                                        ; $7472: $f6 $98
    ld e, [hl]                                    ; $7474: $5e
    ld e, l                                       ; $7475: $5d
    dec bc                                        ; $7476: $0b
    add hl, de                                    ; $7477: $19
    ld [hl], a                                    ; $7478: $77
    ld [$37ec], a                                 ; $7479: $ea $ec $37
    jp $540d                                      ; $747c: $c3 $0d $54


    ret c                                         ; $747f: $d8

    inc e                                         ; $7480: $1c
    or d                                          ; $7481: $b2
    ld [hl], d                                    ; $7482: $72
    rra                                           ; $7483: $1f
    or e                                          ; $7484: $b3
    call nc, $9fb2                                ; $7485: $d4 $b2 $9f
    jp c, $ecc6                                   ; $7488: $da $c6 $ec

    ld d, l                                       ; $748b: $55
    db $10                                        ; $748c: $10
    ld bc, $bb80                                  ; $748d: $01 $80 $bb
    and [hl]                                      ; $7490: $a6
    sbc b                                         ; $7491: $98
    and [hl]                                      ; $7492: $a6
    db $fd                                        ; $7493: $fd
    ld l, h                                       ; $7494: $6c
    rrca                                          ; $7495: $0f
    push de                                       ; $7496: $d5
    call Call_000_1b82                            ; $7497: $cd $82 $1b
    ld d, b                                       ; $749a: $50
    ld e, c                                       ; $749b: $59
    cp [hl]                                       ; $749c: $be
    reti                                          ; $749d: $d9


    ld l, e                                       ; $749e: $6b
    cp c                                          ; $749f: $b9
    ret z                                         ; $74a0: $c8

    jp nc, $05d5                                  ; $74a1: $d2 $d5 $05

    ld hl, $de04                                  ; $74a4: $21 $04 $de
    push hl                                       ; $74a7: $e5
    ld a, [hl]                                    ; $74a8: $7e
    di                                            ; $74a9: $f3
    ld [hl], b                                    ; $74aa: $70
    ld a, [hl]                                    ; $74ab: $7e
    call c, $c6c9                                 ; $74ac: $dc $c9 $c6
    rst $08                                       ; $74af: $cf
    ld h, c                                       ; $74b0: $61
    ld c, e                                       ; $74b1: $4b
    add l                                         ; $74b2: $85
    or b                                          ; $74b3: $b0
    ld b, a                                       ; $74b4: $47
    rrca                                          ; $74b5: $0f
    ld b, [hl]                                    ; $74b6: $46
    halt                                          ; $74b7: $76
    db $f4                                        ; $74b8: $f4
    ld [de], a                                    ; $74b9: $12
    or c                                          ; $74ba: $b1
    pop de                                        ; $74bb: $d1
    jp hl                                         ; $74bc: $e9


    ld l, d                                       ; $74bd: $6a
    cp b                                          ; $74be: $b8
    dec a                                         ; $74bf: $3d
    dec l                                         ; $74c0: $2d
    dec sp                                        ; $74c1: $3b
    dec l                                         ; $74c2: $2d
    inc a                                         ; $74c3: $3c
    ld a, d                                       ; $74c4: $7a
    sbc d                                         ; $74c5: $9a
    sub c                                         ; $74c6: $91
    ld b, a                                       ; $74c7: $47
    ld [$b1e7], sp                                ; $74c8: $08 $e7 $b1
    ret c                                         ; $74cb: $d8

    ld b, e                                       ; $74cc: $43
    ld e, b                                       ; $74cd: $58
    ld b, [hl]                                    ; $74ce: $46
    ld d, a                                       ; $74cf: $57
    pop bc                                        ; $74d0: $c1
    dec c                                         ; $74d1: $0d
    ret nc                                        ; $74d2: $d0

    rst $38                                       ; $74d3: $ff
    or l                                          ; $74d4: $b5
    ld b, h                                       ; $74d5: $44
    ld d, h                                       ; $74d6: $54
    push af                                       ; $74d7: $f5
    ld c, [hl]                                    ; $74d8: $4e
    sub d                                         ; $74d9: $92
    ld c, c                                       ; $74da: $49
    push af                                       ; $74db: $f5
    ld a, [c]                                     ; $74dc: $f2
    ld d, l                                       ; $74dd: $55
    ld c, e                                       ; $74de: $4b
    sub h                                         ; $74df: $94
    ld a, [$e1a6]                                 ; $74e0: $fa $a6 $e1
    adc $0d                                       ; $74e3: $ce $0d
    sbc l                                         ; $74e5: $9d
    ld d, a                                       ; $74e6: $57
    adc a                                         ; $74e7: $8f
    add $72                                       ; $74e8: $c6 $72
    jr nc, @+$19                                  ; $74ea: $30 $17

    sub d                                         ; $74ec: $92
    add a                                         ; $74ed: $87
    sbc e                                         ; $74ee: $9b
    db $ec                                        ; $74ef: $ec
    db $e3                                        ; $74f0: $e3
    ld d, a                                       ; $74f1: $57
    rst $38                                       ; $74f2: $ff
    ei                                            ; $74f3: $fb
    add sp, -$77                                  ; $74f4: $e8 $89
    ld sp, hl                                     ; $74f6: $f9
    xor a                                         ; $74f7: $af
    ld [hl], d                                    ; $74f8: $72
    adc b                                         ; $74f9: $88
    nop                                           ; $74fa: $00
    jr jr_04d_7528                                ; $74fb: $18 $2b

    ld b, l                                       ; $74fd: $45
    ret c                                         ; $74fe: $d8

    inc hl                                        ; $74ff: $23
    rst $20                                       ; $7500: $e7
    ld a, h                                       ; $7501: $7c
    and $cf                                       ; $7502: $e6 $cf
    ld h, [hl]                                    ; $7504: $66
    ld h, e                                       ; $7505: $63
    ld sp, $2a5b                                  ; $7506: $31 $5b $2a
    adc a                                         ; $7509: $8f
    dec sp                                        ; $750a: $3b
    push af                                       ; $750b: $f5
    ld c, h                                       ; $750c: $4c
    adc $2b                                       ; $750d: $ce $2b
    rst $30                                       ; $750f: $f7
    xor c                                         ; $7510: $a9
    sbc b                                         ; $7511: $98
    ret                                           ; $7512: $c9


    ld a, c                                       ; $7513: $79
    and l                                         ; $7514: $a5
    ld b, e                                       ; $7515: $43
    inc b                                         ; $7516: $04
    rst $20                                       ; $7517: $e7
    ld sp, $16bd                                  ; $7518: $31 $bd $16
    or d                                          ; $751b: $b2
    cp [hl]                                       ; $751c: $be
    call nz, $f2af                                ; $751d: $c4 $af $f2
    and l                                         ; $7520: $a5
    cp e                                          ; $7521: $bb
    sub [hl]                                      ; $7522: $96
    cp l                                          ; $7523: $bd
    jp c, $f6cf                                   ; $7524: $da $cf $f6

    ld d, b                                       ; $7527: $50

jr_04d_7528:
    db $dd                                        ; $7528: $dd
    inc l                                         ; $7529: $2c
    cp b                                          ; $752a: $b8
    add c                                         ; $752b: $81
    inc [hl]                                      ; $752c: $34
    rst $38                                       ; $752d: $ff
    rst $10                                       ; $752e: $d7
    cp $cd                                        ; $752f: $fe $cd
    ld e, [hl]                                    ; $7531: $5e
    ld [hl-], a                                   ; $7532: $32
    ld h, [hl]                                    ; $7533: $66
    ld c, l                                       ; $7534: $4d
    sub l                                         ; $7535: $95
    ld a, $1b                                     ; $7536: $3e $1b
    call z, Call_000_23f1                         ; $7538: $cc $f1 $23
    daa                                           ; $753b: $27
    ld a, h                                       ; $753c: $7c
    dec e                                         ; $753d: $1d
    reti                                          ; $753e: $d9


    ld b, e                                       ; $753f: $43
    ld d, [hl]                                    ; $7540: $56
    ld a, [$0754]                                 ; $7541: $fa $54 $07
    inc sp                                        ; $7544: $33
    ld e, d                                       ; $7545: $5a
    ld a, [bc]                                    ; $7546: $0a
    ld [hl+], a                                   ; $7547: $22
    rrca                                          ; $7548: $0f
    push af                                       ; $7549: $f5

jr_04d_754a:
    ccf                                           ; $754a: $3f
    ld a, a                                       ; $754b: $7f
    or [hl]                                       ; $754c: $b6
    and e                                         ; $754d: $a3
    ld h, a                                       ; $754e: $67
    jp $1da7                                      ; $754f: $c3 $a7 $1d


    cp l                                          ; $7552: $bd
    rlca                                          ; $7553: $07
    and e                                         ; $7554: $a3
    jr jr_04d_75ac                                ; $7555: $18 $55

    ld a, e                                       ; $7557: $7b
    ld c, $c6                                     ; $7558: $0e $c6
    ld a, b                                       ; $755a: $78
    ld b, a                                       ; $755b: $47
    adc $21                                       ; $755c: $ce $21
    adc a                                         ; $755e: $8f
    db $10                                        ; $755f: $10
    adc a                                         ; $7560: $8f
    db $eb                                        ; $7561: $eb
    ld l, h                                       ; $7562: $6c
    ld [hl], $7c                                  ; $7563: $36 $7c
    ld b, a                                       ; $7565: $47
    rst $08                                       ; $7566: $cf
    add [hl]                                      ; $7567: $86
    jp $2d3d                                      ; $7568: $c3 $3d $2d


    cp e                                          ; $756b: $bb
    and e                                         ; $756c: $a3
    ld h, a                                       ; $756d: $67
    jp $9367                                      ; $756e: $c3 $67 $93


    ld l, c                                       ; $7571: $69
    push de                                       ; $7572: $d5
    cp e                                          ; $7573: $bb
    jp $a44b                                      ; $7574: $c3 $4b $a4


    db $e4                                        ; $7577: $e4
    pop de                                        ; $7578: $d1
    sbc [hl]                                      ; $7579: $9e
    db $eb                                        ; $757a: $eb
    reti                                          ; $757b: $d9


    inc b                                         ; $757c: $04
    ld b, d                                       ; $757d: $42
    xor b                                         ; $757e: $a8
    sub l                                         ; $757f: $95
    inc a                                         ; $7580: $3c
    ld b, d                                       ; $7581: $42
    ret nz                                        ; $7582: $c0

    jp $8ab4                                      ; $7583: $c3 $b4 $8a


    sbc c                                         ; $7586: $99
    sub h                                         ; $7587: $94
    ld [hl], $60                                  ; $7588: $36 $60
    dec e                                         ; $758a: $1d
    or $6c                                        ; $758b: $f6 $6c
    ld e, d                                       ; $758d: $5a
    push af                                       ; $758e: $f5
    db $e4                                        ; $758f: $e4
    ld l, $87                                     ; $7590: $2e $87
    ei                                            ; $7592: $fb
    ret nz                                        ; $7593: $c0

    ld b, l                                       ; $7594: $45
    and a                                         ; $7595: $a7
    ld e, b                                       ; $7596: $58
    adc a                                         ; $7597: $8f
    db $10                                        ; $7598: $10
    adc a                                         ; $7599: $8f
    db $eb                                        ; $759a: $eb
    ld l, h                                       ; $759b: $6c
    ld e, d                                       ; $759c: $5a
    ret                                           ; $759d: $c9


    ld a, [c]                                     ; $759e: $f2
    ld [hl], l                                    ; $759f: $75
    adc a                                         ; $75a0: $8f
    sbc $3f                                       ; $75a1: $de $3f
    ld b, h                                       ; $75a3: $44
    ld [hl], l                                    ; $75a4: $75
    adc h                                         ; $75a5: $8c
    db $eb                                        ; $75a6: $eb
    and d                                         ; $75a7: $a2
    and e                                         ; $75a8: $a3
    ld h, c                                       ; $75a9: $61
    ld h, a                                       ; $75aa: $67
    ld h, e                                       ; $75ab: $63

jr_04d_75ac:
    dec h                                         ; $75ac: $25
    or [hl]                                       ; $75ad: $b6
    ld l, e                                       ; $75ae: $6b
    ld a, b                                       ; $75af: $78
    rlca                                          ; $75b0: $07
    rla                                           ; $75b1: $17
    call nz, $a5a3                                ; $75b2: $c4 $a3 $a5
    jr nz, jr_04d_75b9                            ; $75b5: $20 $02

    rrca                                          ; $75b7: $0f
    and a                                         ; $75b8: $a7

jr_04d_75b9:
    xor $e4                                       ; $75b9: $ee $e4
    ld l, h                                       ; $75bb: $6c
    jr jr_04d_754a                                ; $75bc: $18 $8c

    sbc h                                         ; $75be: $9c
    ld c, l                                       ; $75bf: $4d
    rrca                                          ; $75c0: $0f
    sbc a                                         ; $75c1: $9f
    ld c, l                                       ; $75c2: $4d
    and [hl]                                      ; $75c3: $a6
    rlca                                          ; $75c4: $07
    sbc l                                         ; $75c5: $9d
    dec c                                         ; $75c6: $0d
    sbc a                                         ; $75c7: $9f
    halt                                          ; $75c8: $76
    db $f4                                        ; $75c9: $f4
    adc [hl]                                      ; $75ca: $8e
    ld a, [hl]                                    ; $75cb: $7e
    add h                                         ; $75cc: $84
    nop                                           ; $75cd: $00
    ret nz                                        ; $75ce: $c0

    jp $8ab4                                      ; $75cf: $c3 $b4 $8a


    or e                                          ; $75d2: $b3
    reti                                          ; $75d3: $d9


    ldh a, [rNR33]                                ; $75d4: $f0 $1d
    dec a                                         ; $75d6: $3d
    ld d, e                                       ; $75d7: $53
    db $ed                                        ; $75d8: $ed
    ld d, a                                       ; $75d9: $57
    ld sp, hl                                     ; $75da: $f9
    jp z, $d97d                                   ; $75db: $ca $7d $d9

    ld l, a                                       ; $75de: $6f
    ld [hl], a                                    ; $75df: $77
    or c                                          ; $75e0: $b1
    ld b, a                                       ; $75e1: $47
    ld c, a                                       ; $75e2: $4f
    add e                                         ; $75e3: $83
    xor $e8                                       ; $75e4: $ee $e8
    ld l, c                                       ; $75e6: $69
    dec h                                         ; $75e7: $25
    adc a                                         ; $75e8: $8f
    db $10                                        ; $75e9: $10
    add b                                         ; $75ea: $80
    adc a                                         ; $75eb: $8f
    db $ec                                        ; $75ec: $ec
    dec hl                                        ; $75ed: $2b
    rst $30                                       ; $75ee: $f7
    ret                                           ; $75ef: $c9


    sbc l                                         ; $75f0: $9d
    ld [c], a                                     ; $75f1: $e2
    ld a, e                                       ; $75f2: $7b
    jr c, jr_04d_7604                             ; $75f3: $38 $0f

    ld hl, $5e74                                  ; $75f5: $21 $74 $5e
    add l                                         ; $75f8: $85
    adc a                                         ; $75f9: $8f
    daa                                           ; $75fa: $27
    pop de                                        ; $75fb: $d1
    bit 2, d                                      ; $75fc: $cb $52
    db $ed                                        ; $75fe: $ed
    db $10                                        ; $75ff: $10
    ld bc, $f9c0                                  ; $7600: $01 $c0 $f9
    ld e, l                                       ; $7603: $5d

jr_04d_7604:
    pop af                                        ; $7604: $f1
    jr jr_04d_767e                                ; $7605: $18 $77

    ld [$5e7d], a                                 ; $7607: $ea $7d $5e
    sub h                                         ; $760a: $94
    cpl                                           ; $760b: $2f
    ld l, l                                       ; $760c: $6d
    jp c, $8421                                   ; $760d: $da $21 $84

    adc $ab                                       ; $7610: $ce $ab
    ldh a, [$f1]                                  ; $7612: $f0 $f1
    inc h                                         ; $7614: $24
    ld a, d                                       ; $7615: $7a
    ld e, c                                       ; $7616: $59
    xor d                                         ; $7617: $aa
    dec e                                         ; $7618: $1d
    ld [hl+], a                                   ; $7619: $22
    jr nz, @+$01                                  ; $761a: $20 $ff

    push de                                       ; $761c: $d5
    ld h, a                                       ; $761d: $67
    ld l, b                                       ; $761e: $68
    jp c, Jump_04d_65b4                           ; $761f: $da $b4 $65

    adc a                                         ; $7622: $8f
    nop                                           ; $7623: $00
    rst $20                                       ; $7624: $e7
    pop hl                                        ; $7625: $e1
    db $d3                                        ; $7626: $d3
    and e                                         ; $7627: $a3
    ld c, c                                       ; $7628: $49
    push af                                       ; $7629: $f5
    db $f4                                        ; $762a: $f4
    ld [$5f5a], a                                 ; $762b: $ea $5a $5f
    ld [c], a                                     ; $762e: $e2
    ld d, a                                       ; $762f: $57
    ld sp, hl                                     ; $7630: $f9
    jp nc, $8b5d                                  ; $7631: $d2 $5d $8b

    rra                                           ; $7634: $1f
    ld a, d                                       ; $7635: $7a
    db $f4                                        ; $7636: $f4
    xor $f8                                       ; $7637: $ee $f8
    add [hl]                                      ; $7639: $86
    ld [$e1e7], sp                                ; $763a: $08 $e7 $e1
    dec sp                                        ; $763d: $3b
    ld a, d                                       ; $763e: $7a
    ld e, c                                       ; $763f: $59
    xor d                                         ; $7640: $aa
    ld a, l                                       ; $7641: $7d
    or [hl]                                       ; $7642: $b6
    ld d, h                                       ; $7643: $54
    ld e, [hl]                                    ; $7644: $5e
    cp c                                          ; $7645: $b9
    adc a                                         ; $7646: $8f
    daa                                           ; $7647: $27
    dec b                                         ; $7648: $05
    ld de, $4b8f                                  ; $7649: $11 $8f $4b
    db $ed                                        ; $764c: $ed
    add sp, $69                                   ; $764d: $e8 $69
    ld b, a                                       ; $764f: $47
    adc a                                         ; $7650: $8f
    dec sp                                        ; $7651: $3b
    push af                                       ; $7652: $f5
    jp z, $fa7d                                   ; $7653: $ca $7d $fa

    dec d                                         ; $7656: $15
    ld d, d                                       ; $7657: $52
    dec hl                                        ; $7658: $2b
    ld a, l                                       ; $7659: $7d
    db $f4                                        ; $765a: $f4
    cp d                                          ; $765b: $ba
    cpl                                           ; $765c: $2f
    ld e, l                                       ; $765d: $5d
    dec l                                         ; $765e: $2d
    jp hl                                         ; $765f: $e9


    ld l, d                                       ; $7660: $6a
    ld e, c                                       ; $7661: $59
    ld [hl], $74                                  ; $7662: $36 $74
    sbc c                                         ; $7664: $99
    call nc, $a7d2                                ; $7665: $d4 $d2 $a7
    ld h, [hl]                                    ; $7668: $66
    sub $70                                       ; $7669: $d6 $70
    ld a, [hl]                                    ; $766b: $7e
    rrca                                          ; $766c: $0f
    ld b, [hl]                                    ; $766d: $46
    ld sp, $f6aa                                  ; $766e: $31 $aa $f6
    inc c                                         ; $7671: $0c
    ld de, $db18                                  ; $7672: $11 $18 $db
    ld a, b                                       ; $7675: $78
    ld e, [hl]                                    ; $7676: $5e
    cp c                                          ; $7677: $b9
    rst $08                                       ; $7678: $cf
    add $ae                                       ; $7679: $c6 $ae
    ld a, b                                       ; $767b: $78
    adc h                                         ; $767c: $8c
    dec sp                                        ; $767d: $3b

jr_04d_767e:
    ld [hl], l                                    ; $767e: $75
    halt                                          ; $767f: $76
    cp [hl]                                       ; $7680: $be
    sub a                                         ; $7681: $97
    xor a                                         ; $7682: $af
    ld a, [de]                                    ; $7683: $1a
    adc $8f                                       ; $7684: $ce $8f
    sub [hl]                                      ; $7686: $96
    cp d                                          ; $7687: $ba
    ld h, a                                       ; $7688: $67
    set 7, h                                      ; $7689: $cb $fc
    ld c, b                                       ; $768b: $48
    ret                                           ; $768c: $c9


    ld l, b                                       ; $768d: $68
    and d                                         ; $768e: $a2
    call nc, $96af                                ; $768f: $d4 $af $96
    sbc d                                         ; $7692: $9a
    ld e, $4d                                     ; $7693: $1e $4d
    cp $55                                        ; $7695: $fe $55
    ld hl, $b34b                                  ; $7697: $21 $4b $b3

Jump_04d_769a:
    sub h                                         ; $769a: $94
    xor d                                         ; $769b: $aa
    cp c                                          ; $769c: $b9
    pop bc                                        ; $769d: $c1
    pop af                                        ; $769e: $f1
    db $10                                        ; $769f: $10
    rst $20                                       ; $76a0: $e7
    dec d                                         ; $76a1: $15
    ld b, h                                       ; $76a2: $44
    adc a                                         ; $76a3: $8f
    ld c, e                                       ; $76a4: $4b
    adc l                                         ; $76a5: $8d
    sub h                                         ; $76a6: $94
    adc h                                         ; $76a7: $8c
    ld c, b                                       ; $76a8: $48
    pop hl                                        ; $76a9: $e1
    cp b                                          ; $76aa: $b8
    cpl                                           ; $76ab: $2f
    ld a, l                                       ; $76ac: $7d
    or h                                          ; $76ad: $b4
    xor d                                         ; $76ae: $aa
    pop de                                        ; $76af: $d1
    xor e                                         ; $76b0: $ab
    and $f7                                       ; $76b1: $e6 $f7
    rst $38                                       ; $76b3: $ff
    jp hl                                         ; $76b4: $e9


    ld [hl], a                                    ; $76b5: $77
    call nz, $1a50                                ; $76b6: $c4 $50 $1a
    dec a                                         ; $76b9: $3d
    xor [hl]                                      ; $76ba: $ae
    adc e                                         ; $76bb: $8b
    adc $a4                                       ; $76bc: $ce $a4
    or h                                          ; $76be: $b4
    ld [hl], c                                    ; $76bf: $71
    ld a, h                                       ; $76c0: $7c
    adc a                                         ; $76c1: $8f
    jr jr_04d_770e                                ; $76c2: $18 $4a

    ld l, e                                       ; $76c4: $6b
    ld c, c                                       ; $76c5: $49
    rst $08                                       ; $76c6: $cf
    add $b4                                       ; $76c7: $c6 $b4
    and e                                         ; $76c9: $a3
    ld b, a                                       ; $76ca: $47
    inc de                                        ; $76cb: $13
    and l                                         ; $76cc: $a5
    ld a, [hl]                                    ; $76cd: $7e
    dec [hl]                                      ; $76ce: $35
    ld sp, hl                                     ; $76cf: $f9
    add a                                         ; $76d0: $87
    adc l                                         ; $76d1: $8d
    sub [hl]                                      ; $76d2: $96
    add d                                         ; $76d3: $82
    dec sp                                        ; $76d4: $3b
    adc a                                         ; $76d5: $8f
    ld h, l                                       ; $76d6: $65
    cp a                                          ; $76d7: $bf
    add hl, hl                                    ; $76d8: $29
    sub d                                         ; $76d9: $92
    reti                                          ; $76da: $d9


    inc hl                                        ; $76db: $23
    adc a                                         ; $76dc: $8f
    ld c, e                                       ; $76dd: $4b
    ld c, l                                       ; $76de: $4d
    dec hl                                        ; $76df: $2b
    xor a                                         ; $76e0: $af

Jump_04d_76e1:
    ld e, [hl]                                    ; $76e1: $5e
    cp c                                          ; $76e2: $b9
    ld c, a                                       ; $76e3: $4f
    xor e                                         ; $76e4: $ab
    pop hl                                        ; $76e5: $e1
    db $fc                                        ; $76e6: $fc
    add sp, $55                                   ; $76e7: $e8 $55
    and e                                         ; $76e9: $a3
    adc c                                         ; $76ea: $89
    ld d, d                                       ; $76eb: $52
    cp a                                          ; $76ec: $bf
    sbc d                                         ; $76ed: $9a
    db $fc                                        ; $76ee: $fc
    jp Jump_04d_4346                              ; $76ef: $c3 $46 $43


    ld [$c869], sp                                ; $76f2: $08 $69 $c8
    ld [hl-], a                                   ; $76f5: $32
    ld sp, $b52d                                  ; $76f6: $31 $2d $b5
    and e                                         ; $76f9: $a3
    rst $00                                       ; $76fa: $c7
    inc a                                         ; $76fb: $3c
    call c, $9f23                                 ; $76fc: $dc $23 $9f
    cp h                                          ; $76ff: $bc
    ret c                                         ; $7700: $d8

    inc hl                                        ; $7701: $23
    adc a                                         ; $7702: $8f

jr_04d_7703:
    ld c, e                                       ; $7703: $4b
    ld c, l                                       ; $7704: $4d
    inc sp                                        ; $7705: $33
    jr c, jr_04d_7766                             ; $7706: $38 $5e

    ld a, c                                       ; $7708: $79
    push hl                                       ; $7709: $e5
    ld a, $9a                                     ; $770a: $3e $9a
    jr z, jr_04d_7703                             ; $770c: $28 $f5

jr_04d_770e:
    xor e                                         ; $770e: $ab
    ret                                           ; $770f: $c9


    ccf                                           ; $7710: $3f
    ld l, h                                       ; $7711: $6c
    or h                                          ; $7712: $b4
    call nc, Call_04d_78ae                        ; $7713: $d4 $ae $78
    adc h                                         ; $7716: $8c
    db $e3                                        ; $7717: $e3
    ld a, e                                       ; $7718: $7b
    db $f4                                        ; $7719: $f4
    jp z, Jump_000_33b2                           ; $771a: $ca $b2 $33

    adc a                                         ; $771d: $8f
    or $95                                        ; $771e: $f6 $95
    ei                                            ; $7720: $fb
    ld [hl], d                                    ; $7721: $72
    inc l                                         ; $7722: $2c
    cp e                                          ; $7723: $bb
    jp hl                                         ; $7724: $e9


    dec h                                         ; $7725: $25
    ld c, $11                                     ; $7726: $0e $11
    rst $20                                       ; $7728: $e7
    ld hl, $8ed3                                  ; $7729: $21 $d3 $8e
    ld e, $1e                                     ; $772c: $1e $1e
    db $dd                                        ; $772e: $dd
    ld b, [hl]                                    ; $772f: $46
    ld d, h                                       ; $7730: $54
    ret z                                         ; $7731: $c8

    jp nc, $9da1                                  ; $7732: $d2 $a1 $9d

    db $f4                                        ; $7735: $f4
    add sp, $71                                   ; $7736: $e8 $71
    ccf                                           ; $7738: $3f
    ld a, d                                       ; $7739: $7a
    jp hl                                         ; $773a: $e9


    ld b, e                                       ; $773b: $43
    ld c, b                                       ; $773c: $48
    dec [hl]                                      ; $773d: $35
    ld b, h                                       ; $773e: $44
    ld c, a                                       ; $773f: $4f
    ld c, b                                       ; $7740: $48
    adc l                                         ; $7741: $8d
    ld e, c                                       ; $7742: $59
    ld l, d                                       ; $7743: $6a
    ld a, [$5215]                                 ; $7744: $fa $15 $52
    di                                            ; $7747: $f3
    ei                                            ; $7748: $fb
    ld a, a                                       ; $7749: $7f
    cp d                                          ; $774a: $ba
    ld c, b                                       ; $774b: $48
    sbc [hl]                                      ; $774c: $9e
    rst $18                                       ; $774d: $df
    rst $38                                       ; $774e: $ff
    ld b, a                                       ; $774f: $47
    inc de                                        ; $7750: $13
    and l                                         ; $7751: $a5
    ld a, [hl]                                    ; $7752: $7e
    or l                                          ; $7753: $b5
    call nc, Call_000_0423                        ; $7754: $d4 $23 $04
    adc a                                         ; $7757: $8f
    ld c, e                                       ; $7758: $4b
    ld c, l                                       ; $7759: $4d
    cp a                                          ; $775a: $bf
    rst $38                                       ; $775b: $ff
    cpl                                           ; $775c: $2f
    db $fd                                        ; $775d: $fd
    rst $28                                       ; $775e: $ef
    ld l, h                                       ; $775f: $6c
    ret z                                         ; $7760: $c8

    cp b                                          ; $7761: $b8
    ld d, e                                       ; $7762: $53
    ld h, a                                       ; $7763: $67
    xor a                                         ; $7764: $af
    ld h, l                                       ; $7765: $65

jr_04d_7766:
    ld b, e                                       ; $7766: $43
    sub a                                         ; $7767: $97
    and e                                         ; $7768: $a3
    rst $30                                       ; $7769: $f7
    ld h, b                                       ; $776a: $60
    inc d                                         ; $776b: $14
    and e                                         ; $776c: $a3
    ld l, d                                       ; $776d: $6a
    rst $08                                       ; $776e: $cf
    db $10                                        ; $776f: $10
    ld bc, $4b8f                                  ; $7770: $01 $8f $4b
    ld c, l                                       ; $7773: $4d
    xor e                                         ; $7774: $ab
    ld e, [hl]                                    ; $7775: $5e
    ld b, a                                       ; $7776: $47
    or $7d                                        ; $7777: $f6 $7d
    ld e, [hl]                                    ; $7779: $5e
    sub h                                         ; $777a: $94
    adc a                                         ; $777b: $8f
    dec sp                                        ; $777c: $3b
    push af                                       ; $777d: $f5
    jp z, $8a7d                                   ; $777e: $ca $7d $8a

    rra                                           ; $7781: $1f
    adc $ef                                       ; $7782: $ce $ef
    pop bc                                        ; $7784: $c1
    jr z, jr_04d_77cd                             ; $7785: $28 $46

    push de                                       ; $7787: $d5
    sbc [hl]                                      ; $7788: $9e
    ld hl, $8f02                                  ; $7789: $21 $02 $8f
    ld c, e                                       ; $778c: $4b
    ld c, l                                       ; $778d: $4d
    inc sp                                        ; $778e: $33
    jr c, @+$60                                   ; $778f: $38 $5e

    ld a, c                                       ; $7791: $79
    push hl                                       ; $7792: $e5
    ld a, $66                                     ; $7793: $3e $66
    xor c                                         ; $7795: $a9
    ld e, l                                       ; $7796: $5d
    pop af                                        ; $7797: $f1
    ld e, b                                       ; $7798: $58
    ld a, [$1edf]                                 ; $7799: $fa $df $1e
    ld c, a                                       ; $779c: $4f
    ld [hl-], a                                   ; $779d: $32
    inc sp                                        ; $779e: $33
    ld hl, $0110                                  ; $779f: $21 $10 $01
    adc a                                         ; $77a2: $8f
    ld c, e                                       ; $77a3: $4b
    db $ed                                        ; $77a4: $ed
    inc h                                         ; $77a5: $24
    sbc c                                         ; $77a6: $99
    ld d, h                                       ; $77a7: $54
    xor a                                         ; $77a8: $af
    call c, $8b47                                 ; $77a9: $dc $47 $8b
    jp nc, Jump_000_3fda                          ; $77ac: $d2 $da $3f

    ld a, h                                       ; $77af: $7c
    db $f4                                        ; $77b0: $f4
    xor d                                         ; $77b1: $aa
    jp hl                                         ; $77b2: $e9


    rst $00                                       ; $77b3: $c7
    ld h, a                                       ; $77b4: $67
    sub $c8                                       ; $77b5: $d6 $c8
    ccf                                           ; $77b7: $3f
    ld l, h                                       ; $77b8: $6c
    db $f4                                        ; $77b9: $f4
    ld [hl-], a                                   ; $77ba: $32
    di                                            ; $77bb: $f3
    ld hl, sp+$3a                                 ; $77bc: $f8 $3a
    ld b, h                                       ; $77be: $44
    jr nz, jr_04d_77ce                            ; $77bf: $20 $0d

    and l                                         ; $77c1: $a5
    pop de                                        ; $77c2: $d1
    or e                                          ; $77c3: $b3
    or c                                          ; $77c4: $b1
    ld [hl], d                                    ; $77c5: $72
    sbc a                                         ; $77c6: $9f
    ld a, [hl]                                    ; $77c7: $7e
    ld [hl], e                                    ; $77c8: $73
    ld c, l                                       ; $77c9: $4d
    ld a, b                                       ; $77ca: $78
    add hl, de                                    ; $77cb: $19
    ld [hl], a                                    ; $77cc: $77

jr_04d_77cd:
    ccf                                           ; $77cd: $3f

jr_04d_77ce:
    ld a, l                                       ; $77ce: $7d
    add h                                         ; $77cf: $84
    nop                                           ; $77d0: $00
    adc a                                         ; $77d1: $8f
    ld c, e                                       ; $77d2: $4b
    ld c, l                                       ; $77d3: $4d
    inc sp                                        ; $77d4: $33
    jr c, jr_04d_7835                             ; $77d5: $38 $5e

    ld a, c                                       ; $77d7: $79
    push hl                                       ; $77d8: $e5
    ld a, $66                                     ; $77d9: $3e $66
    xor c                                         ; $77db: $a9
    ld l, c                                       ; $77dc: $69
    ld b, l                                       ; $77dd: $45
    and l                                         ; $77de: $a5
    ld a, d                                       ; $77df: $7a
    ld [hl], a                                    ; $77e0: $77
    rrca                                          ; $77e1: $0f
    add hl, bc                                    ; $77e2: $09
    rst $00                                       ; $77e3: $c7
    db $fd                                        ; $77e4: $fd
    ret nz                                        ; $77e5: $c0

    inc de                                        ; $77e6: $13
    adc [hl]                                      ; $77e7: $8e
    add e                                         ; $77e8: $83
    db $db                                        ; $77e9: $db
    ld a, c                                       ; $77ea: $79
    ld hl, sp-$0c                                 ; $77eb: $f8 $f4
    ld [$85e1], a                                 ; $77ed: $ea $e1 $85
    db $e3                                        ; $77f0: $e3
    sub l                                         ; $77f1: $95
    rla                                           ; $77f2: $17
    ccf                                           ; $77f3: $3f

jr_04d_77f4:
    ld [hl], h                                    ; $77f4: $74
    dec l                                         ; $77f5: $2d
    jr z, jr_04d_783c                             ; $77f6: $28 $44

    and b                                         ; $77f8: $a0
    jp nz, $90e6                                  ; $77f9: $c2 $e6 $90

    or e                                          ; $77fc: $b3
    pop de                                        ; $77fd: $d1
    sub b                                         ; $77fe: $90
    ld sp, $ed4b                                  ; $77ff: $31 $4b $ed
    add sp, $25                                   ; $7802: $e8 $25
    jr c, jr_04d_77f4                             ; $7804: $38 $ee

    and l                                         ; $7806: $a5
    ld b, d                                       ; $7807: $42
    ld b, [hl]                                    ; $7808: $46
    jp Jump_04d_5e8e                              ; $7809: $c3 $8e $5e


    rst $30                                       ; $780c: $f7
    ld h, l                                       ; $780d: $65
    inc a                                         ; $780e: $3c
    ld a, $44                                     ; $780f: $3e $44
    rrca                                          ; $7811: $0f
    push de                                       ; $7812: $d5
    cp e                                          ; $7813: $bb
    ld [c], a                                     ; $7814: $e2
    ld sp, $76bf                                  ; $7815: $31 $bf $76
    push hl                                       ; $7818: $e5
    ld a, $bc                                     ; $7819: $3e $bc
    set 5, e                                      ; $781b: $cb $eb
    ld l, h                                       ; $781d: $6c
    call z, $d352                                 ; $781e: $cc $52 $d3
    ld hl, sp-$01                                 ; $7821: $f8 $ff
    and e                                         ; $7823: $a3
    add a                                         ; $7824: $87
    di                                            ; $7825: $f3
    dec hl                                        ; $7826: $2b
    rst $30                                       ; $7827: $f7
    push hl                                       ; $7828: $e5
    jp Jump_000_26bd                              ; $7829: $c3 $bd $26


    inc l                                         ; $782c: $2c
    rst $30                                       ; $782d: $f7
    ld [hl], l                                    ; $782e: $75
    db $10                                        ; $782f: $10
    db $d3                                        ; $7830: $d3
    ld d, $22                                     ; $7831: $16 $22
    adc a                                         ; $7833: $8f
    ld c, e                                       ; $7834: $4b

jr_04d_7835:
    ld c, l                                       ; $7835: $4d
    xor e                                         ; $7836: $ab
    ld e, [hl]                                    ; $7837: $5e
    ld a, l                                       ; $7838: $7d
    db $db                                        ; $7839: $db
    ld d, a                                       ; $783a: $57
    adc l                                         ; $783b: $8d

jr_04d_783c:
    daa                                           ; $783c: $27
    ld a, $e7                                     ; $783d: $3e $e7
    push de                                       ; $783f: $d5
    cp b                                          ; $7840: $b8
    ld d, e                                       ; $7841: $53
    daa                                           ; $7842: $27
    adc $1e                                       ; $7843: $ce $1e
    ld bc, $afa0                                  ; $7845: $01 $a0 $af
    ei                                            ; $7848: $fb
    cp b                                          ; $7849: $b8
    sub e                                         ; $784a: $93
    ld h, h                                       ; $784b: $64
    adc a                                         ; $784c: $8f
    sbc [hl]                                      ; $784d: $9e
    ld d, [hl]                                    ; $784e: $56
    dec a                                         ; $784f: $3d
    xor [hl]                                      ; $7850: $ae
    or d                                          ; $7851: $b2
    ld c, e                                       ; $7852: $4b
    add hl, sp                                    ; $7853: $39
    ld b, h                                       ; $7854: $44
    ld c, a                                       ; $7855: $4f
    xor e                                         ; $7856: $ab
    ld [hl], a                                    ; $7857: $77
    db $f4                                        ; $7858: $f4
    ld a, [hl-]                                   ; $7859: $3a
    or d                                          ; $785a: $b2
    ld d, a                                       ; $785b: $57
    jp nc, Jump_04d_4a25                          ; $785c: $d2 $25 $4a

    cpl                                           ; $785f: $2f
    dec h                                         ; $7860: $25
    ld hl, $108f                                  ; $7861: $21 $8f $10
    ld c, a                                       ; $7864: $4f
    xor e                                         ; $7865: $ab
    ld [hl], a                                    ; $7866: $77
    db $f4                                        ; $7867: $f4
    cp [hl]                                       ; $7868: $be
    ld hl, $8fe1                                  ; $7869: $21 $e1 $8f
    db $10                                        ; $786c: $10
    rst $20                                       ; $786d: $e7
    pop hl                                        ; $786e: $e1
    dec sp                                        ; $786f: $3b
    ld a, d                                       ; $7870: $7a
    ld hl, $ba3b                                  ; $7871: $21 $3b $ba
    ld d, [hl]                                    ; $7874: $56
    xor $e3                                       ; $7875: $ee $e3
    ld hl, sp+$79                                 ; $7877: $f8 $79
    rra                                           ; $7879: $1f
    inc e                                         ; $787a: $1c
    ld d, a                                       ; $787b: $57
    adc e                                         ; $787c: $8b
    ld a, $1b                                     ; $787d: $3e $1b
    db $ed                                        ; $787f: $ed
    add c                                         ; $7880: $81
    inc sp                                        ; $7881: $33
    xor $d1                                       ; $7882: $ee $d1
    ld h, a                                       ; $7884: $67
    res 6, a                                      ; $7885: $cb $b7
    ld hl, $8f02                                  ; $7887: $21 $02 $8f
    ld c, e                                       ; $788a: $4b
    adc l                                         ; $788b: $8d
    sub h                                         ; $788c: $94
    adc h                                         ; $788d: $8c
    ld c, b                                       ; $788e: $48
    pop hl                                        ; $788f: $e1
    cp b                                          ; $7890: $b8
    ld c, a                                       ; $7891: $4f
    ccf                                           ; $7892: $3f
    call nz, Call_04d_7e6b                        ; $7893: $c4 $6b $7e
    rst $38                                       ; $7896: $ff
    rst $08                                       ; $7897: $cf
    ld h, e                                       ; $7898: $63
    sub [hl]                                      ; $7899: $96
    ld a, [de]                                    ; $789a: $1a
    rst $00                                       ; $789b: $c7
    rst $30                                       ; $789c: $f7
    inc d                                         ; $789d: $14
    ccf                                           ; $789e: $3f

jr_04d_789f:
    ld a, [de]                                    ; $789f: $1a
    halt                                          ; $78a0: $76
    ld [hl], a                                    ; $78a1: $77
    rrca                                          ; $78a2: $0f
    ld b, [hl]                                    ; $78a3: $46
    ld sp, $f6aa                                  ; $78a4: $31 $aa $f6
    cp h                                          ; $78a7: $bc
    ld e, h                                       ; $78a8: $5c
    db $f4                                        ; $78a9: $f4
    ld d, a                                       ; $78aa: $57
    sub e                                         ; $78ab: $93
    sbc a                                         ; $78ac: $9f
    and h                                         ; $78ad: $a4

Call_04d_78ae:
    db $d3                                        ; $78ae: $d3
    db $e3                                        ; $78af: $e3
    ld c, [hl]                                    ; $78b0: $4e
    dec a                                         ; $78b1: $3d
    ld h, d                                       ; $78b2: $62
    jp c, $c347                                   ; $78b3: $da $47 $c3

    ld l, $1d                                     ; $78b6: $2e $1d
    ld a, l                                       ; $78b8: $7d
    and d                                         ; $78b9: $a2
    or [hl]                                       ; $78ba: $b6
    and [hl]                                      ; $78bb: $a6
    dec e                                         ; $78bc: $1d
    adc h                                         ; $78bd: $8c
    ld c, l                                       ; $78be: $4d
    rst $08                                       ; $78bf: $cf
    and h                                         ; $78c0: $a4
    or h                                          ; $78c1: $b4
    ld a, c                                       ; $78c2: $79
    sbc e                                         ; $78c3: $9b
    rst $38                                       ; $78c4: $ff

jr_04d_78c5:
    ld c, c                                       ; $78c5: $49
    push af                                       ; $78c6: $f5
    xor a                                         ; $78c7: $af
    ld h, [hl]                                    ; $78c8: $66
    adc a                                         ; $78c9: $8f
    nop                                           ; $78ca: $00
    jr jr_04d_78e0                                ; $78cb: $18 $13

    adc [hl]                                      ; $78cd: $8e
    dec sp                                        ; $78ce: $3b
    sbc e                                         ; $78cf: $9b
    daa                                           ; $78d0: $27
    inc e                                         ; $78d1: $1c
    ld [hl], a                                    ; $78d2: $77
    ld [hl], $4f                                  ; $78d3: $36 $4f
    jr c, jr_04d_78c5                             ; $78d5: $38 $ee

    ld l, h                                       ; $78d7: $6c
    sbc [hl]                                      ; $78d8: $9e
    ld [hl], b                                    ; $78d9: $70
    inc e                                         ; $78da: $1c
    inc e                                         ; $78db: $1c
    add $24                                       ; $78dc: $c6 $24
    ld c, c                                       ; $78de: $49
    db $fc                                        ; $78df: $fc

jr_04d_78e0:
    ld l, h                                       ; $78e0: $6c
    sbc [hl]                                      ; $78e1: $9e
    inc h                                         ; $78e2: $24
    adc c                                         ; $78e3: $89
    or e                                          ; $78e4: $b3
    ld b, a                                       ; $78e5: $47
    adc a                                         ; $78e6: $8f
    ld c, e                                       ; $78e7: $4b
    ld c, l                                       ; $78e8: $4d
    cp a                                          ; $78e9: $bf
    rst $38                                       ; $78ea: $ff
    cpl                                           ; $78eb: $2f
    ld a, e                                       ; $78ec: $7b
    ld h, d                                       ; $78ed: $62
    and e                                         ; $78ee: $a3
    ld l, e                                       ; $78ef: $6b
    ld c, h                                       ; $78f0: $4c
    db $d3                                        ; $78f1: $d3
    sub [hl]                                      ; $78f2: $96
    sub [hl]                                      ; $78f3: $96
    cp d                                          ; $78f4: $ba
    ld [hl], b                                    ; $78f5: $70
    ld a, e                                       ; $78f6: $7b
    ld e, h                                       ; $78f7: $5c
    ld l, d                                       ; $78f8: $6a
    rst $00                                       ; $78f9: $c7
    rst $08                                       ; $78fa: $cf
    and h                                         ; $78fb: $a4
    ld a, d                                       ; $78fc: $7a
    push hl                                       ; $78fd: $e5
    ld a, $d5                                     ; $78fe: $3e $d5
    add a                                         ; $7900: $87
    ld e, [hl]                                    ; $7901: $5e
    db $10                                        ; $7902: $10
    ld bc, $cb4f                                  ; $7903: $01 $4f $cb
    ld l, $fb                                     ; $7906: $2e $fb
    db $ed                                        ; $7908: $ed
    xor [hl]                                      ; $7909: $ae
    sbc [hl]                                      ; $790a: $9e
    ld c, l                                       ; $790b: $4d
    add [hl]                                      ; $790c: $86
    di                                            ; $790d: $f3
    adc a                                         ; $790e: $8f
    db $10                                        ; $790f: $10
    jr nz, jr_04d_789f                            ; $7910: $20 $8d

    ret c                                         ; $7912: $d8

    add h                                         ; $7913: $84
    ld hl, sp-$57                                 ; $7914: $f8 $a9
    ld b, e                                       ; $7916: $43
    or $13                                        ; $7917: $f6 $13
    ld [c], a                                     ; $7919: $e2
    push de                                       ; $791a: $d5
    inc hl                                        ; $791b: $23
    ld b, [hl]                                    ; $791c: $46
    or d                                          ; $791d: $b2
    ld e, a                                       ; $791e: $5f
    push hl                                       ; $791f: $e5
    db $10                                        ; $7920: $10
    ld bc, $e1e7                                  ; $7921: $01 $e7 $e1
    dec sp                                        ; $7924: $3b
    ld a, d                                       ; $7925: $7a
    ld a, d                                       ; $7926: $7a
    inc [hl]                                      ; $7927: $34
    ld sp, hl                                     ; $7928: $f9
    ld d, a                                       ; $7929: $57
    add l                                         ; $792a: $85
    inc l                                         ; $792b: $2c
    db $fd                                        ; $792c: $fd
    ld sp, hl                                     ; $792d: $f9
    ld a, h                                       ; $792e: $7c
    sub l                                         ; $792f: $95
    rst $28                                       ; $7930: $ef
    jp c, $1052                                   ; $7931: $da $52 $10

    ld bc, $31e7                                  ; $7934: $01 $e7 $31
    db $ed                                        ; $7937: $ed
    add sp, $71                                   ; $7938: $e8 $71
    daa                                           ; $793a: $27
    ret                                           ; $793b: $c9


    sbc $21                                       ; $793c: $de $21
    sla h                                         ; $793e: $cb $24
    ld sp, hl                                     ; $7940: $f9
    ccf                                           ; $7941: $3f
    sub [hl]                                      ; $7942: $96
    ld c, $ed                                     ; $7943: $0e $ed
    and h                                         ; $7945: $a4
    rst $10                                       ; $7946: $d7
    ld e, h                                       ; $7947: $5c
    ccf                                           ; $7948: $3f
    call c, Call_04d_432b                         ; $7949: $dc $2b $43
    inc b                                         ; $794c: $04
    adc a                                         ; $794d: $8f
    ld c, e                                       ; $794e: $4b
    ld c, l                                       ; $794f: $4d
    dec hl                                        ; $7950: $2b
    dec de                                        ; $7951: $1b
    db $d3                                        ; $7952: $d3
    rrca                                          ; $7953: $0f
    pop af                                        ; $7954: $f1
    ld a, [c]                                     ; $7955: $f2
    pop de                                        ; $7956: $d1
    xor e                                         ; $7957: $ab
    ld d, $b2                                     ; $7958: $16 $b2
    ld d, b                                       ; $795a: $50
    ld hl, $0923                                  ; $795b: $21 $23 $09
    cp $0c                                        ; $795e: $fe $0c
    ld b, h                                       ; $7960: $44
    rst $20                                       ; $7961: $e7
    pop hl                                        ; $7962: $e1
    dec sp                                        ; $7963: $3b
    ld a, d                                       ; $7964: $7a
    sbc c                                         ; $7965: $99
    ld e, a                                       ; $7966: $5f
    add $0f                                       ; $7967: $c6 $0f
    sub c                                         ; $7969: $91
    ld [de], a                                    ; $796a: $12
    dec de                                        ; $796b: $1b
    dec hl                                        ; $796c: $2b
    rst $30                                       ; $796d: $f7
    ld sp, $ed4b                                  ; $796e: $31 $4b $ed
    adc d                                         ; $7971: $8a
    rst $00                                       ; $7972: $c7
    ld c, b                                       ; $7973: $48
    ret                                           ; $7974: $c9


    ld a, [c]                                     ; $7975: $f2
    ld [hl], l                                    ; $7976: $75
    xor a                                         ; $7977: $af
    ld h, l                                       ; $7978: $65
    cp a                                          ; $7979: $bf
    rst $38                                       ; $797a: $ff
    ld b, e                                       ; $797b: $43
    inc b                                         ; $797c: $04
    adc a                                         ; $797d: $8f
    ld c, e                                       ; $797e: $4b
    db $ed                                        ; $797f: $ed
    ld hl, sp-$67                                 ; $7980: $f8 $99
    ld d, h                                       ; $7982: $54
    cpl                                           ; $7983: $2f
    cp e                                          ; $7984: $bb
    jp hl                                         ; $7985: $e9


    ld a, h                                       ; $7986: $7c
    ld a, h                                       ; $7987: $7c
    ld h, [hl]                                    ; $7988: $66
    ld [hl], l                                    ; $7989: $75
    ld b, b                                       ; $798a: $40
    inc b                                         ; $798b: $04
    adc a                                         ; $798c: $8f
    ld c, e                                       ; $798d: $4b
    db $ed                                        ; $798e: $ed
    rra                                           ; $798f: $1f
    add hl, sp                                    ; $7990: $39
    ld a, d                                       ; $7991: $7a
    jr c, jr_04d_79d3                             ; $7992: $38 $3f

    ld a, d                                       ; $7994: $7a
    ld h, l                                       ; $7995: $65
    or h                                          ; $7996: $b4
    call nc, $e65d                                ; $7997: $d4 $5d $e6
    rst $00                                       ; $799a: $c7
    inc l                                         ; $799b: $2c
    dec [hl]                                      ; $799c: $35
    adc [hl]                                      ; $799d: $8e
    rst $28                                       ; $799e: $ef
    add l                                         ; $799f: $85
    ei                                            ; $79a0: $fb
    cp b                                          ; $79a1: $b8
    ld d, e                                       ; $79a2: $53
    ld h, a                                       ; $79a3: $67
    cp h                                          ; $79a4: $bc
    ld a, c                                       ; $79a5: $79
    ld d, c                                       ; $79a6: $51
    sub e                                         ; $79a7: $93
    and e                                         ; $79a8: $a3
    sub a                                         ; $79a9: $97

jr_04d_79aa:
    adc c                                         ; $79aa: $89
    ld sp, hl                                     ; $79ab: $f9
    dec h                                         ; $79ac: $25
    ld c, e                                       ; $79ad: $4b
    sbc a                                         ; $79ae: $9f
    sbc d                                         ; $79af: $9a
    ld e, c                                       ; $79b0: $59
    dec c                                         ; $79b1: $0d
    ld de, $31e7                                  ; $79b2: $11 $e7 $31
    db $ed                                        ; $79b5: $ed
    add sp, -$1b                                  ; $79b6: $e8 $e5
    jp $6a43                                      ; $79b8: $c3 $43 $6a


    ld b, a                                       ; $79bb: $47
    cpl                                           ; $79bc: $2f
    dec e                                         ; $79bd: $1d
    ld b, h                                       ; $79be: $44
    ccf                                           ; $79bf: $3f
    ld l, b                                       ; $79c0: $68
    or c                                          ; $79c1: $b1
    ld b, a                                       ; $79c2: $47
    rrca                                          ; $79c3: $0f
    and a                                         ; $79c4: $a7
    xor $e4                                       ; $79c5: $ee $e4
    ld l, h                                       ; $79c7: $6c
    ld sp, hl                                     ; $79c8: $f9
    daa                                           ; $79c9: $27
    ld e, [hl]                                    ; $79ca: $5e
    ei                                            ; $79cb: $fb
    ld b, a                                       ; $79cc: $47
    xor [hl]                                      ; $79cd: $ae
    sbc l                                         ; $79ce: $9d
    db $f4                                        ; $79cf: $f4
    add sp, $15                                   ; $79d0: $e8 $15
    db $e3                                        ; $79d2: $e3

jr_04d_79d3:
    ld hl, sp+$32                                 ; $79d3: $f8 $32
    sbc h                                         ; $79d5: $9c
    rra                                           ; $79d6: $1f
    cp l                                          ; $79d7: $bd
    adc d                                         ; $79d8: $8a
    dec a                                         ; $79d9: $3d
    ld [bc], a                                    ; $79da: $02
    jr nz, jr_04d_79aa                            ; $79db: $20 $cd

    rst $38                                       ; $79dd: $ff
    or l                                          ; $79de: $b5
    dec hl                                        ; $79df: $2b
    ld d, e                                       ; $79e0: $53
    add $de                                       ; $79e1: $c6 $de
    xor h                                         ; $79e3: $ac
    sub a                                         ; $79e4: $97
    sub d                                         ; $79e5: $92
    sub b                                         ; $79e6: $90
    ret                                           ; $79e7: $c9


    pop de                                        ; $79e8: $d1
    or e                                          ; $79e9: $b3
    ld hl, $8623                                  ; $79ea: $21 $23 $86
    jp nc, Jump_04d_71e8                          ; $79ed: $d2 $e8 $71

    and a                                         ; $79f0: $a7
    ld c, [hl]                                    ; $79f1: $4e
    ld e, a                                       ; $79f2: $5f
    cp b                                          ; $79f3: $b8
    ld bc, $753b                                  ; $79f4: $01 $3b $75
    ld b, a                                       ; $79f7: $47
    or $90                                        ; $79f8: $f6 $90
    push hl                                       ; $79fa: $e5
    db $e3                                        ; $79fb: $e3
    inc sp                                        ; $79fc: $33
    and e                                         ; $79fd: $a3
    rst $00                                       ; $79fe: $c7
    inc l                                         ; $79ff: $2c
    dec [hl]                                      ; $7a00: $35
    sub e                                         ; $7a01: $93
    jp nc, $ac06                                  ; $7a02: $d2 $06 $ac

    jp Jump_000_194e                              ; $7a05: $c3 $4e $19


    ld a, e                                       ; $7a08: $7b
    di                                            ; $7a09: $f3
    xor $32                                       ; $7a0a: $ee $32
    ld sp, $04bf                                  ; $7a0c: $31 $bf $04
    ld [hl+], a                                   ; $7a0f: $22
    rst $20                                       ; $7a10: $e7
    pop hl                                        ; $7a11: $e1
    dec sp                                        ; $7a12: $3b
    ld a, d                                       ; $7a13: $7a
    ld a, d                                       ; $7a14: $7a
    inc [hl]                                      ; $7a15: $34
    ld sp, hl                                     ; $7a16: $f9
    ld d, a                                       ; $7a17: $57
    add l                                         ; $7a18: $85
    adc h                                         ; $7a19: $8c
    add sp, -$5b                                  ; $7a1a: $e8 $a5
    ei                                            ; $7a1c: $fb
    or h                                          ; $7a1d: $b4
    and e                                         ; $7a1e: $a3
    ld [hl], a                                    ; $7a1f: $77
    ld b, l                                       ; $7a20: $45
    ld [bc], a                                    ; $7a21: $02
    ld [hl+], a                                   ; $7a22: $22
    jr jr_04d_7a34                                ; $7a23: $18 $0f

    ld hl, $cbd3                                  ; $7a25: $21 $d3 $cb
    adc [hl]                                      ; $7a28: $8e
    or d                                          ; $7a29: $b2
    ld d, d                                       ; $7a2a: $52
    inc h                                         ; $7a2b: $24
    ld a, h                                       ; $7a2c: $7c
    sbc h                                         ; $7a2d: $9c
    ld l, c                                       ; $7a2e: $69
    xor a                                         ; $7a2f: $af
    adc [hl]                                      ; $7a30: $8e
    jp hl                                         ; $7a31: $e9


    ld [hl], a                                    ; $7a32: $77
    sbc c                                         ; $7a33: $99

jr_04d_7a34:
    inc h                                         ; $7a34: $24
    rst $38                                       ; $7a35: $ff
    rst $00                                       ; $7a36: $c7
    adc b                                         ; $7a37: $88
    and c                                         ; $7a38: $a1
    or h                                          ; $7a39: $b4
    add $75                                       ; $7a3a: $c6 $75
    pop de                                        ; $7a3c: $d1
    add hl, de                                    ; $7a3d: $19
    ld a, [hl-]                                   ; $7a3e: $3a
    db $fd                                        ; $7a3f: $fd
    xor [hl]                                      ; $7a40: $ae
    ld b, h                                       ; $7a41: $44
    ccf                                           ; $7a42: $3f
    call nz, Call_04d_68c6                        ; $7a43: $c4 $c6 $68
    xor c                                         ; $7a46: $a9
    dec bc                                        ; $7a47: $0b
    ld de, $d50f                                  ; $7a48: $11 $0f $d5
    or e                                          ; $7a4b: $b3
    ret                                           ; $7a4c: $c9


    ld [hl], d                                    ; $7a4d: $72
    cp b                                          ; $7a4e: $b8
    adc a                                         ; $7a4f: $8f
    ld e, [hl]                                    ; $7a50: $5e
    add hl, de                                    ; $7a51: $19
    ld e, [hl]                                    ; $7a52: $5e
    sub $d6                                       ; $7a53: $d6 $d6
    inc hl                                        ; $7a55: $23
    inc b                                         ; $7a56: $04
    ld h, b                                       ; $7a57: $60
    add d                                         ; $7a58: $82
    ld a, c                                       ; $7a59: $79
    ld [hl], $67                                  ; $7a5a: $36 $67
    jp hl                                         ; $7a5c: $e9


    ld b, a                                       ; $7a5d: $47
    rst $30                                       ; $7a5e: $f7
    reti                                          ; $7a5f: $d9


    ld l, h                                       ; $7a60: $6c
    ld hl, sp-$4c                                 ; $7a61: $f8 $b4
    ld [$4b31], a                                 ; $7a63: $ea $31 $4b
    db $ed                                        ; $7a66: $ed
    adc d                                         ; $7a67: $8a
    rlca                                          ; $7a68: $07
    ld b, h                                       ; $7a69: $44
    rst $08                                       ; $7a6a: $cf
    ld l, d                                       ; $7a6b: $6a
    ld [hl], b                                    ; $7a6c: $70
    jp $2958                                      ; $7a6d: $c3 $58 $29


    ld [bc], a                                    ; $7a70: $02
    or a                                          ; $7a71: $b7
    rst $00                                       ; $7a72: $c7
    and l                                         ; $7a73: $a5
    halt                                          ; $7a74: $76
    sub d                                         ; $7a75: $92
    ld c, h                                       ; $7a76: $4c
    xor d                                         ; $7a77: $aa
    ld d, a                                       ; $7a78: $57
    xor $d3                                       ; $7a79: $ee $d3
    ld c, d                                       ; $7a7b: $4a
    sub [hl]                                      ; $7a7c: $96
    ld a, a                                       ; $7a7d: $7f
    ld [c], a                                     ; $7a7e: $e2
    ld h, l                                       ; $7a7f: $65
    ld h, e                                       ; $7a80: $63
    sbc c                                         ; $7a81: $99
    ld e, [hl]                                    ; $7a82: $5e
    xor a                                         ; $7a83: $af
    ld e, l                                       ; $7a84: $5d
    db $fd                                        ; $7a85: $fd
    ld d, b                                       ; $7a86: $50
    db $10                                        ; $7a87: $10
    ld bc, $d50f                                  ; $7a88: $01 $0f $d5
    sub e                                         ; $7a8b: $93
    dec sp                                        ; $7a8c: $3b
    db $ed                                        ; $7a8d: $ed
    call nc, Call_04d_68fe                        ; $7a8e: $d4 $fe $68
    dec sp                                        ; $7a91: $3b
    rrca                                          ; $7a92: $0f
    sbc a                                         ; $7a93: $9f
    ld e, [hl]                                    ; $7a94: $5e
    cp l                                          ; $7a95: $bd
    dec hl                                        ; $7a96: $2b
    jp hl                                         ; $7a97: $e9


    ld [hl], $ee                                  ; $7a98: $36 $ee
    db $d3                                        ; $7a9a: $d3
    ld c, h                                       ; $7a9b: $4c
    ld e, $f0                                     ; $7a9c: $1e $f0
    cp [hl]                                       ; $7a9e: $be
    and d                                         ; $7a9f: $a2
    adc h                                         ; $7aa0: $8c
    ld a, e                                       ; $7aa1: $7b
    ld h, [hl]                                    ; $7aa2: $66
    cp a                                          ; $7aa3: $bf
    dec a                                         ; $7aa4: $3d
    ld l, $b5                                     ; $7aa5: $2e $b5
    ld a, a                                       ; $7aa7: $7f
    ld h, h                                       ; $7aa8: $64
    adc a                                         ; $7aa9: $8f
    add hl, de                                    ; $7aaa: $19
    ld a, [hl-]                                   ; $7aab: $3a
    dec de                                        ; $7aac: $1b
    cp [hl]                                       ; $7aad: $be
    dec sp                                        ; $7aae: $3b
    adc h                                         ; $7aaf: $8c
    ld e, d                                       ; $7ab0: $5a
    db $ec                                        ; $7ab1: $ec
    cp h                                          ; $7ab2: $bc
    xor $67                                       ; $7ab3: $ee $67
    dec c                                         ; $7ab5: $0d
    ld e, h                                       ; $7ab6: $5c
    dec de                                        ; $7ab7: $1b
    ld e, h                                       ; $7ab8: $5c
    dec bc                                        ; $7ab9: $0b
    add a                                         ; $7aba: $87
    ld [$834f], sp                                ; $7abb: $08 $4f $83
    ld c, [hl]                                    ; $7abe: $4e
    ld sp, $db4d                                  ; $7abf: $31 $4d $db
    sbc b                                         ; $7ac2: $98
    dec c                                         ; $7ac3: $0d

jr_04d_7ac4:
    ld a, a                                       ; $7ac4: $7f

jr_04d_7ac5:
    add h                                         ; $7ac5: $84
    nop                                           ; $7ac6: $00
    rst $20                                       ; $7ac7: $e7
    pop hl                                        ; $7ac8: $e1
    dec sp                                        ; $7ac9: $3b
    ld a, d                                       ; $7aca: $7a
    ld [hl], $7c                                  ; $7acb: $36 $7c
    ld d, a                                       ; $7acd: $57
    ld d, h                                       ; $7ace: $54
    ret z                                         ; $7acf: $c8

    or d                                          ; $7ad0: $b2
    and c                                         ; $7ad1: $a1
    db $d3                                        ; $7ad2: $d3
    jp Jump_04d_76e1                              ; $7ad3: $c3 $e1 $76


    ld e, $3e                                     ; $7ad6: $1e $3e
    jp z, $8f67                                   ; $7ad8: $ca $67 $8f

    ld l, c                                       ; $7adb: $69
    dec [hl]                                      ; $7adc: $35
    cp l                                          ; $7add: $bd
    ld a, [$42fa]                                 ; $7ade: $fa $fa $42
    ld b, [hl]                                    ; $7ae1: $46
    rrca                                          ; $7ae2: $0f
    ld [c], a                                     ; $7ae3: $e2
    ld d, a                                       ; $7ae4: $57
    call $9d88                                    ; $7ae5: $cd $88 $9d
    or a                                          ; $7ae8: $b7
    ld sp, hl                                     ; $7ae9: $f9
    sbc a                                         ; $7aea: $9f
    ld d, h                                       ; $7aeb: $54
    rst $38                                       ; $7aec: $ff
    ld h, l                                       ; $7aed: $65
    ld b, e                                       ; $7aee: $43
    ld b, a                                       ; $7aef: $47
    ld [de], a                                    ; $7af0: $12
    or c                                          ; $7af1: $b1
    ld sp, $e5af                                  ; $7af2: $31 $af $e5
    xor e                                         ; $7af5: $ab
    halt                                          ; $7af6: $76
    ld h, l                                       ; $7af7: $65
    ld h, $a5                                     ; $7af8: $26 $a5
    dec l                                         ; $7afa: $2d
    pop af                                        ; $7afb: $f1
    ld h, l                                       ; $7afc: $65
    ld a, [hl]                                    ; $7afd: $7e
    or $68                                        ; $7afe: $f6 $68
    adc b                                         ; $7b00: $88
    nop                                           ; $7b01: $00
    ld c, a                                       ; $7b02: $4f
    set 5, [hl]                                   ; $7b03: $cb $ee
    add sp, $61                                   ; $7b05: $e8 $61
    call nc, $e762                                ; $7b07: $d4 $62 $e7
    ld [hl], l                                    ; $7b0a: $75
    ccf                                           ; $7b0b: $3f
    ld l, e                                       ; $7b0c: $6b
    ldh [$da], a                                  ; $7b0d: $e0 $da
    ldh [$5a], a                                  ; $7b0f: $e0 $5a
    ld hl, sp+$23                                 ; $7b11: $f8 $23
    inc b                                         ; $7b13: $04
    jr jr_04d_7ac5                                ; $7b14: $18 $af

    sub l                                         ; $7b16: $95
    dec hl                                        ; $7b17: $2b
    ld a, [hl+]                                   ; $7b18: $2a
    ld h, h                                       ; $7b19: $64
    call c, $e7a9                                 ; $7b1a: $dc $a9 $e7
    ld l, l                                       ; $7b1d: $6d
    cp $27                                        ; $7b1e: $fe $27
    push de                                       ; $7b20: $d5
    cp a                                          ; $7b21: $bf
    ld a, d                                       ; $7b22: $7a
    ld h, $a5                                     ; $7b23: $26 $a5
    ld c, l                                       ; $7b25: $4d
    dec sp                                        ; $7b26: $3b
    jr jr_04d_7ac4                                ; $7b27: $18 $9b

    add [hl]                                      ; $7b29: $86
    db $db                                        ; $7b2a: $db
    ld sp, hl                                     ; $7b2b: $f9
    pop de                                        ; $7b2c: $d1
    set 1, [hl]                                   ; $7b2d: $cb $ce
    rst $30                                       ; $7b2f: $f7
    ld [$9aff], a                                 ; $7b30: $ea $ff $9a
    or a                                          ; $7b33: $b7
    ld sp, hl                                     ; $7b34: $f9
    rst $18                                       ; $7b35: $df
    ld a, [de]                                    ; $7b36: $1a
    sbc d                                         ; $7b37: $9a
    add l                                         ; $7b38: $85
    and l                                         ; $7b39: $a5
    add l                                         ; $7b3a: $85
    ld b, a                                       ; $7b3b: $47
    adc a                                         ; $7b3c: $8f
    ld l, e                                       ; $7b3d: $6b
    ld e, [hl]                                    ; $7b3e: $5e
    and [hl]                                      ; $7b3f: $a6
    push bc                                       ; $7b40: $c5
    xor a                                         ; $7b41: $af
    jp hl                                         ; $7b42: $e9


    ld b, a                                       ; $7b43: $47
    ld a, a                                       ; $7b44: $7f
    dec de                                        ; $7b45: $1b
    ld [hl-], a                                   ; $7b46: $32
    sub e                                         ; $7b47: $93
    jp nc, Jump_000_3216                          ; $7b48: $d2 $16 $32

    dec l                                         ; $7b4b: $2d
    cp $6c                                        ; $7b4c: $fe $6c
    db $fc                                        ; $7b4e: $fc
    add hl, de                                    ; $7b4f: $19
    cp d                                          ; $7b50: $ba
    rlca                                          ; $7b51: $07
    and e                                         ; $7b52: $a3
    jr jr_04d_7baa                                ; $7b53: $18 $55

    ld a, e                                       ; $7b55: $7b
    sbc [hl]                                      ; $7b56: $9e
    ld c, c                                       ; $7b57: $49
    sub c                                         ; $7b58: $91
    call z, $0443                                 ; $7b59: $cc $43 $04
    rrca                                          ; $7b5c: $0f
    pop bc                                        ; $7b5d: $c1
    inc a                                         ; $7b5e: $3c
    dec de                                        ; $7b5f: $1b
    or e                                          ; $7b60: $b3
    call nc, $f0b4                                ; $7b61: $d4 $b4 $f0
    add sp, $61                                   ; $7b64: $e8 $61
    jr nc, jr_04d_7b9a                            ; $7b66: $30 $32

    call z, $f951                                 ; $7b68: $cc $51 $f9
    rlca                                          ; $7b6b: $07
    dec bc                                        ; $7b6c: $0b
    ld l, [hl]                                    ; $7b6d: $6e
    rst $08                                       ; $7b6e: $cf
    push af                                       ; $7b6f: $f5
    ld l, h                                       ; $7b70: $6c
    ld [hl-], a                                   ; $7b71: $32
    dec a                                         ; $7b72: $3d
    sbc d                                         ; $7b73: $9a
    db $fc                                        ; $7b74: $fc
    xor e                                         ; $7b75: $ab
    ld b, d                                       ; $7b76: $42
    or $50                                        ; $7b77: $f6 $50
    db $dd                                        ; $7b79: $dd
    xor h                                         ; $7b7a: $ac
    add c                                         ; $7b7b: $81
    inc sp                                        ; $7b7c: $33
    xor $d1                                       ; $7b7d: $ee $d1
    adc a                                         ; $7b7f: $8f
    db $10                                        ; $7b80: $10
    adc a                                         ; $7b81: $8f
    db $eb                                        ; $7b82: $eb
    ld l, h                                       ; $7b83: $6c
    ld [hl], $7c                                  ; $7b84: $36 $7c
    ld b, a                                       ; $7b86: $47
    adc a                                         ; $7b87: $8f
    ld e, c                                       ; $7b88: $59
    ld a, [bc]                                    ; $7b89: $0a
    ld [hl+], a                                   ; $7b8a: $22
    adc a                                         ; $7b8b: $8f
    ld c, e                                       ; $7b8c: $4b
    dec hl                                        ; $7b8d: $2b
    ld [$e3e1], sp                                ; $7b8e: $08 $e1 $e3
    ld d, d                                       ; $7b91: $52
    di                                            ; $7b92: $f3
    ld [hl], $d6                                  ; $7b93: $36 $d6
    add $ca                                       ; $7b95: $c6 $ca
    ld a, l                                       ; $7b97: $7d
    ld [hl], $7c                                  ; $7b98: $36 $7c

jr_04d_7b9a:
    ld a, d                                       ; $7b9a: $7a
    push af                                       ; $7b9b: $f5
    jp nz, $a57d                                  ; $7b9c: $c2 $7d $a5

    adc a                                         ; $7b9f: $8f
    ld e, [hl]                                    ; $7ba0: $5e
    xor c                                         ; $7ba1: $a9
    and l                                         ; $7ba2: $a5
    ei                                            ; $7ba3: $fb
    ld h, h                                       ; $7ba4: $64

jr_04d_7ba5:
    and e                                         ; $7ba5: $a3
    di                                            ; $7ba6: $f3
    ld [hl-], a                                   ; $7ba7: $32
    add hl, sp                                    ; $7ba8: $39
    xor b                                         ; $7ba9: $a8

jr_04d_7baa:
    ld b, e                                       ; $7baa: $43
    inc b                                         ; $7bab: $04
    rrca                                          ; $7bac: $0f
    push de                                       ; $7bad: $d5
    sub e                                         ; $7bae: $93
    cp e                                          ; $7baf: $bb
    inc e                                         ; $7bb0: $1c
    xor $0b                                       ; $7bb1: $ee $0b
    add hl, de                                    ; $7bb3: $19
    ld e, [hl]                                    ; $7bb4: $5e
    sub $d6                                       ; $7bb5: $d6 $d6
    and e                                         ; $7bb7: $a3
    dec c                                         ; $7bb8: $0d
    xor b                                         ; $7bb9: $a8
    inc c                                         ; $7bba: $0c
    scf                                           ; $7bbb: $37
    ld c, h                                       ; $7bbc: $4c
    ld [de], a                                    ; $7bbd: $12
    res 0, [hl]                                   ; $7bbe: $cb $86
    ld c, [hl]                                    ; $7bc0: $4e
    dec bc                                        ; $7bc1: $0b
    adc a                                         ; $7bc2: $8f
    ld e, $98                                     ; $7bc3: $1e $98
    ret nc                                        ; $7bc5: $d0

    rst $28                                       ; $7bc6: $ef
    rst $38                                       ; $7bc7: $ff
    ld sp, $7aad                                  ; $7bc8: $31 $ad $7a
    ld e, [hl]                                    ; $7bcb: $5e
    jr c, jr_04d_7c2c                             ; $7bcc: $38 $5e

    cp [hl]                                       ; $7bce: $be
    or h                                          ; $7bcf: $b4

jr_04d_7bd0:
    ld l, c                                       ; $7bd0: $69
    ld e, a                                       ; $7bd1: $5f
    cp [hl]                                       ; $7bd2: $be
    ld [bc], a                                    ; $7bd3: $02
    ld de, $8260                                  ; $7bd4: $11 $60 $82
    add hl, bc                                    ; $7bd7: $09
    ld de, $470f                                  ; $7bd8: $11 $0f $47
    adc a                                         ; $7bdb: $8f
    cp e                                          ; $7bdc: $bb
    ld [hl+], a                                   ; $7bdd: $22
    ld a, c                                       ; $7bde: $79
    jp hl                                         ; $7bdf: $e9


    ld [$7e9a], a                                 ; $7be0: $ea $9a $7e
    ld h, a                                       ; $7be3: $67
    ld d, d                                       ; $7be4: $52
    jp c, $95e8                                   ; $7be5: $da $e8 $95

    dec [hl]                                      ; $7be8: $35
    rst $28                                       ; $7be9: $ef
    ld e, [hl]                                    ; $7bea: $5e
    ld a, e                                       ; $7beb: $7b
    sub d                                         ; $7bec: $92
    xor d                                         ; $7bed: $aa
    ld [hl], h                                    ; $7bee: $74
    ld a, [hl-]                                   ; $7bef: $3a
    ld a, [hl-]                                   ; $7bf0: $3a
    ld b, e                                       ; $7bf1: $43
    inc b                                         ; $7bf2: $04
    ret c                                         ; $7bf3: $d8

    ret c                                         ; $7bf4: $d8

    or b                                          ; $7bf5: $b0
    ld h, c                                       ; $7bf6: $61
    jp Jump_000_0d86                              ; $7bf7: $c3 $86 $0d


    add h                                         ; $7bfa: $84
    db $10                                        ; $7bfb: $10
    ld b, d                                       ; $7bfc: $42
    inc b                                         ; $7bfd: $04
    adc a                                         ; $7bfe: $8f
    ld c, e                                       ; $7bff: $4b
    ld c, l                                       ; $7c00: $4d
    dec bc                                        ; $7c01: $0b
    adc a                                         ; $7c02: $8f
    sbc $43                                       ; $7c03: $de $43
    inc [hl]                                      ; $7c05: $34
    cp l                                          ; $7c06: $bd
    ld b, [hl]                                    ; $7c07: $46
    ld h, d                                       ; $7c08: $62
    ret nz                                        ; $7c09: $c0

    cp e                                          ; $7c0a: $bb
    ld b, h                                       ; $7c0b: $44
    ld b, l                                       ; $7c0c: $45
    sbc a                                         ; $7c0d: $9f
    ld c, l                                       ; $7c0e: $4d
    cp a                                          ; $7c0f: $bf
    sbc a                                         ; $7c10: $9f
    call nc, $9e8e                                ; $7c11: $d4 $8e $9e
    call c, $0847                                 ; $7c14: $dc $47 $08
    jr jr_04d_7ba5                                ; $7c17: $18 $8c

    inc c                                         ; $7c19: $0c
    ld [hl], e                                    ; $7c1a: $73
    ld d, h                                       ; $7c1b: $54
    cp $c1                                        ; $7c1c: $fe $c1
    add d                                         ; $7c1e: $82
    ld [$d50f], sp                                ; $7c1f: $08 $0f $d5
    call $381a                                    ; $7c22: $cd $1a $38
    db $e3                                        ; $7c25: $e3
    ld e, $0d                                     ; $7c26: $1e $0d
    ld de, $a34f                                  ; $7c28: $11 $4f $a3
    ret                                           ; $7c2b: $c9


jr_04d_7c2c:
    cp a                                          ; $7c2c: $bf
    ld a, [hl+]                                   ; $7c2d: $2a
    db $e4                                        ; $7c2e: $e4
    pop de                                        ; $7c2f: $d1
    ld e, $97                                     ; $7c30: $1e $97
    sbc d                                         ; $7c32: $9a
    ld d, [hl]                                    ; $7c33: $56
    cp l                                          ; $7c34: $bd
    ld a, a                                       ; $7c35: $7f
    ld h, h                                       ; $7c36: $64
    ld e, a                                       ; $7c37: $5f
    db $fd                                        ; $7c38: $fd
    rst $28                                       ; $7c39: $ef
    inc sp                                        ; $7c3a: $33
    ld [hl], h                                    ; $7c3b: $74
    or $2a                                        ; $7c3c: $f6 $2a
    jr c, jr_04d_7bd0                             ; $7c3e: $38 $90

    dec h                                         ; $7c40: $25
    or e                                          ; $7c41: $b3
    ret                                           ; $7c42: $c9


    add h                                         ; $7c43: $84
    ld d, a                                       ; $7c44: $57
    ld e, l                                       ; $7c45: $5d
    di                                            ; $7c46: $f3
    ld [hl], $ff                                  ; $7c47: $36 $ff
    ld [hl], e                                    ; $7c49: $73
    and [hl]                                      ; $7c4a: $a6
    jp hl                                         ; $7c4b: $e9


    adc a                                         ; $7c4c: $8f
    sbc $21                                       ; $7c4d: $de $21
    adc a                                         ; $7c4f: $8f
    or $f4                                        ; $7c50: $f6 $f4
    cp $3f                                        ; $7c52: $fe $3f
    sbc e                                         ; $7c54: $9b
    db $ec                                        ; $7c55: $ec
    rra                                           ; $7c56: $1f
    ld e, l                                       ; $7c57: $5d
    or e                                          ; $7c58: $b3
    ld d, a                                       ; $7c59: $57
    dec l                                         ; $7c5a: $2d
    db $e4                                        ; $7c5b: $e4
    pop de                                        ; $7c5c: $d1
    sbc [hl]                                      ; $7c5d: $9e
    ldh a, [$d3]                                  ; $7c5e: $f0 $d3
    adc [hl]                                      ; $7c60: $8e
    ld e, $a9                                     ; $7c61: $1e $a9
    db $ec                                        ; $7c63: $ec
    push de                                       ; $7c64: $d5
    or e                                          ; $7c65: $b3
    ret                                           ; $7c66: $c9


    sbc [hl]                                      ; $7c67: $9e
    ld b, [hl]                                    ; $7c68: $46
    db $db                                        ; $7c69: $db
    ld c, e                                       ; $7c6a: $4b
    rst $28                                       ; $7c6b: $ef
    rst $38                                       ; $7c6c: $ff
    rst $10                                       ; $7c6d: $d7
    inc h                                         ; $7c6e: $24
    add hl, de                                    ; $7c6f: $19
    ld l, [hl]                                    ; $7c70: $6e
    jr nz, jr_04d_7cb7                            ; $7c71: $20 $44

    add l                                         ; $7c73: $85
    db $ec                                        ; $7c74: $ec
    adc [hl]                                      ; $7c75: $8e
    ld e, [hl]                                    ; $7c76: $5e
    add hl, de                                    ; $7c77: $19
    ld d, a                                       ; $7c78: $57
    db $f4                                        ; $7c79: $f4
    ld a, [hl]                                    ; $7c7a: $7e
    and $b4                                       ; $7c7b: $e6 $b4
    ld [$5665], a                                 ; $7c7d: $ea $65 $56
    adc $bf                                       ; $7c80: $ce $bf
    ld a, h                                       ; $7c82: $7c
    inc [hl]                                      ; $7c83: $34
    db $ec                                        ; $7c84: $ec
    ld l, b                                       ; $7c85: $68
    xor c                                         ; $7c86: $a9
    ld a, e                                       ; $7c87: $7b
    ld [hl], $1a                                  ; $7c88: $36 $1a
    ld [hl-], a                                   ; $7c8a: $32
    ld h, [hl]                                    ; $7c8b: $66
    xor c                                         ; $7c8c: $a9
    ld l, c                                       ; $7c8d: $69
    push de                                       ; $7c8e: $d5
    ei                                            ; $7c8f: $fb
    ld b, a                                       ; $7c90: $47
    ei                                            ; $7c91: $fb
    add sp, $55                                   ; $7c92: $e8 $55
    xor e                                         ; $7c94: $ab
    rst $38                                       ; $7c95: $ff
    ld l, e                                       ; $7c96: $6b
    ld a, [hl-]                                   ; $7c97: $3a
    rst $18                                       ; $7c98: $df
    dec [hl]                                      ; $7c99: $35
    sub d                                         ; $7c9a: $92
    ld [hl], h                                    ; $7c9b: $74
    ld c, [hl]                                    ; $7c9c: $4e
    sbc a                                         ; $7c9d: $9f
    ld d, d                                       ; $7c9e: $52
    inc h                                         ; $7c9f: $24
    ld a, d                                       ; $7ca0: $7a
    adc c                                         ; $7ca1: $89
    sub a                                         ; $7ca2: $97
    ld hl, sp-$03                                 ; $7ca3: $f8 $fd
    rra                                           ; $7ca5: $1f
    ld l, [hl]                                    ; $7ca6: $6e
    ld h, b                                       ; $7ca7: $60
    ld a, b                                       ; $7ca8: $78
    db $fd                                        ; $7ca9: $fd
    ld hl, sp+$67                                 ; $7caa: $f8 $67
    or e                                          ; $7cac: $b3
    and l                                         ; $7cad: $a5
    ld a, [c]                                     ; $7cae: $f2
    jp z, $9c7d                                   ; $7caf: $ca $7d $9c

    ld l, c                                       ; $7cb2: $69
    rst $08                                       ; $7cb3: $cf
    add a                                         ; $7cb4: $87
    ld a, e                                       ; $7cb5: $7b
    dec c                                         ; $7cb6: $0d

jr_04d_7cb7:
    cpl                                           ; $7cb7: $2f
    ld l, e                                       ; $7cb8: $6b
    sbc c                                         ; $7cb9: $99
    ld b, l                                       ; $7cba: $45
    inc a                                         ; $7cbb: $3c
    inc b                                         ; $7cbc: $04
    ld l, [hl]                                    ; $7cbd: $6e
    rrca                                          ; $7cbe: $0f
    pop bc                                        ; $7cbf: $c1
    or h                                          ; $7cc0: $b4
    inc a                                         ; $7cc1: $3c
    ld b, h                                       ; $7cc2: $44
    adc a                                         ; $7cc3: $8f
    ld c, e                                       ; $7cc4: $4b
    ld c, l                                       ; $7cc5: $4d
    inc sp                                        ; $7cc6: $33
    jr c, jr_04d_7d27                             ; $7cc7: $38 $5e

jr_04d_7cc9:
    ld a, c                                       ; $7cc9: $79
    push hl                                       ; $7cca: $e5
    ld a, $66                                     ; $7ccb: $3e $66
    xor c                                         ; $7ccd: $a9
    ld e, l                                       ; $7cce: $5d
    pop af                                        ; $7ccf: $f1
    sbc b                                         ; $7cd0: $98
    ld d, [hl]                                    ; $7cd1: $56
    dec a                                         ; $7cd2: $3d
    pop hl                                        ; $7cd3: $e1
    ld d, l                                       ; $7cd4: $55
    rst $10                                       ; $7cd5: $d7
    ld a, [hl]                                    ; $7cd6: $7e
    db $10                                        ; $7cd7: $10
    cp a                                          ; $7cd8: $bf
    ld b, [hl]                                    ; $7cd9: $46
    and d                                         ; $7cda: $a2
    ld [hl], a                                    ; $7cdb: $77
    dec [hl]                                      ; $7cdc: $35
    add e                                         ; $7cdd: $83
    adc a                                         ; $7cde: $8f
    add [hl]                                      ; $7cdf: $86
    sbc l                                         ; $7ce0: $9d
    ld d, $22                                     ; $7ce1: $16 $22
    ld bc, $07b7                                  ; $7ce3: $01 $b7 $07
    inc hl                                        ; $7ce6: $23
    ld d, e                                       ; $7ce7: $53
    rst $30                                       ; $7ce8: $f7
    rst $38                                       ; $7ce9: $ff
    ld [$2be5], a                                 ; $7cea: $ea $e5 $2b
    dec bc                                        ; $7ced: $0b
    dec d                                         ; $7cee: $15
    or d                                          ; $7cef: $b2
    ld a, $65                                     ; $7cf0: $3e $65
    rra                                           ; $7cf2: $1f
    ld [hl], a                                    ; $7cf3: $77
    ld [$5651], a                                 ; $7cf4: $ea $51 $56
    adc d                                         ; $7cf7: $8a
    add h                                         ; $7cf8: $84
    ld b, e                                       ; $7cf9: $43
    inc b                                         ; $7cfa: $04
    rrca                                          ; $7cfb: $0f
    ld b, a                                       ; $7cfc: $47
    ld c, a                                       ; $7cfd: $4f
    xor a                                         ; $7cfe: $af
    sbc [hl]                                      ; $7cff: $9e
    dec c                                         ; $7d00: $0d
    sbc a                                         ; $7d01: $9f
    ld [hl-], a                                   ; $7d02: $32
    or $66                                        ; $7d03: $f6 $66
    or $1b                                        ; $7d05: $f6 $1b
    db $10                                        ; $7d07: $10
    call Call_04d_5f90                            ; $7d08: $cd $90 $5f
    ld d, [hl]                                    ; $7d0b: $56
    or l                                          ; $7d0c: $b5
    or c                                          ; $7d0d: $b1
    and [hl]                                      ; $7d0e: $a6
    rst $08                                       ; $7d0f: $cf
    ld b, $2e                                     ; $7d10: $06 $2e
    and c                                         ; $7d12: $a1
    ld a, b                                       ; $7d13: $78
    pop hl                                        ; $7d14: $e1
    sub l                                         ; $7d15: $95
    dec a                                         ; $7d16: $3d
    sbc b                                         ; $7d17: $98
    pop de                                        ; $7d18: $d1
    ld h, a                                       ; $7d19: $67
    inc bc                                        ; $7d1a: $03
    inc e                                         ; $7d1b: $1c
    db $ed                                        ; $7d1c: $ed
    scf                                           ; $7d1d: $37
    ld b, $d8                                     ; $7d1e: $06 $d8
    cp b                                          ; $7d20: $b8
    rst $20                                       ; $7d21: $e7
    ld bc, $893e                                  ; $7d22: $01 $3e $89
    jp hl                                         ; $7d25: $e9


    add c                                         ; $7d26: $81

jr_04d_7d27:
    jr jr_04d_7cc9                                ; $7d27: $18 $a0

    rst $38                                       ; $7d29: $ff
    ld l, e                                       ; $7d2a: $6b
    ld c, a                                       ; $7d2b: $4f
    ld l, b                                       ; $7d2c: $68
    sub c                                         ; $7d2d: $91
    add sp, -$4d                                  ; $7d2e: $e8 $b3
    sbc c                                         ; $7d30: $99
    sub h                                         ; $7d31: $94
    ld [hl], $ca                                  ; $7d32: $36 $ca
    ld c, d                                       ; $7d34: $4a
    sub c                                         ; $7d35: $91
    ldh a, [$d1]                                  ; $7d36: $f0 $d1
    ld l, b                                       ; $7d38: $68
    or $08                                        ; $7d39: $f6 $08
    rst $08                                       ; $7d3b: $cf
    ld l, d                                       ; $7d3c: $6a
    db $ec                                        ; $7d3d: $ec
    or a                                          ; $7d3e: $b7
    rlca                                          ; $7d3f: $07
    inc hl                                        ; $7d40: $23
    db $d3                                        ; $7d41: $d3
    xor d                                         ; $7d42: $aa
    rlca                                          ; $7d43: $07
    ld b, h                                       ; $7d44: $44
    inc sp                                        ; $7d45: $33
    db $e4                                        ; $7d46: $e4
    sub a                                         ; $7d47: $97
    ld d, l                                       ; $7d48: $55
    ld l, l                                       ; $7d49: $6d
    xor h                                         ; $7d4a: $ac
    ld l, c                                       ; $7d4b: $69
    or $08                                        ; $7d4c: $f6 $08
    ld c, a                                       ; $7d4e: $4f
    set 5, [hl]                                   ; $7d4f: $cb $ee
    add sp, $01                                   ; $7d51: $e8 $01
    pop de                                        ; $7d53: $d1
    inc c                                         ; $7d54: $0c
    ld sp, hl                                     ; $7d55: $f9
    ld h, l                                       ; $7d56: $65
    ld d, l                                       ; $7d57: $55
    dec de                                        ; $7d58: $1b
    ld l, e                                       ; $7d59: $6b
    ld a, [$76d1]                                 ; $7d5a: $fa $d1 $76
    ld e, $be                                     ; $7d5d: $1e $be
    and e                                         ; $7d5f: $a3
    ld [hl], a                                    ; $7d60: $77
    push bc                                       ; $7d61: $c5
    ld h, e                                       ; $7d62: $63
    ld a, l                                       ; $7d63: $7d
    adc c                                         ; $7d64: $89
    ld e, a                                       ; $7d65: $5f
    ld d, l                                       ; $7d66: $55
    ld d, e                                       ; $7d67: $53
    ld l, l                                       ; $7d68: $6d
    xor h                                         ; $7d69: $ac
    jp hl                                         ; $7d6a: $e9


    or e                                          ; $7d6b: $b3
    jp hl                                         ; $7d6c: $e9


    push af                                       ; $7d6d: $f5
    ld [$6001], sp                                ; $7d6e: $08 $01 $60
    add d                                         ; $7d71: $82
    ld a, c                                       ; $7d72: $79
    ld [hl], $1a                                  ; $7d73: $36 $1a
    ld [hl-], a                                   ; $7d75: $32
    dec de                                        ; $7d76: $1b
    dec sp                                        ; $7d77: $3b
    ld a, d                                       ; $7d78: $7a
    jp z, $82d8                                   ; $7d79: $ca $d8 $82

    db $db                                        ; $7d7c: $db
    ld a, c                                       ; $7d7d: $79
    db $e4                                        ; $7d7e: $e4
    sbc h                                         ; $7d7f: $9c
    cp b                                          ; $7d80: $b8
    and c                                         ; $7d81: $a1
    cp e                                          ; $7d82: $bb
    ld [hl+], a                                   ; $7d83: $22
    and c                                         ; $7d84: $a1
    pop af                                        ; $7d85: $f1
    rst $38                                       ; $7d86: $ff
    ld b, a                                       ; $7d87: $47
    rst $08                                       ; $7d88: $cf
    add $88                                       ; $7d89: $c6 $88
    ld l, c                                       ; $7d8b: $69
    rra                                           ; $7d8c: $1f
    adc $2f                                       ; $7d8d: $ce $2f
    dec e                                         ; $7d8f: $1d
    ld a, l                                       ; $7d90: $7d
    and d                                         ; $7d91: $a2
    or [hl]                                       ; $7d92: $b6
    and [hl]                                      ; $7d93: $a6
    dec e                                         ; $7d94: $1d
    adc h                                         ; $7d95: $8c
    ld c, l                                       ; $7d96: $4d
    rst $08                                       ; $7d97: $cf
    and h                                         ; $7d98: $a4
    or h                                          ; $7d99: $b4
    ld a, c                                       ; $7d9a: $79
    sbc e                                         ; $7d9b: $9b
    rst $38                                       ; $7d9c: $ff
    ld c, c                                       ; $7d9d: $49
    push af                                       ; $7d9e: $f5
    xor a                                         ; $7d9f: $af
    add [hl]                                      ; $7da0: $86
    ld [$0d18], sp                                ; $7da1: $08 $18 $0d
    adc [hl]                                      ; $7da4: $8e
    add a                                         ; $7da5: $87
    sbc h                                         ; $7da6: $9c
    dec l                                         ; $7da7: $2d
    call c, Call_000_2c27                         ; $7da8: $dc $27 $2c
    rst $30                                       ; $7dab: $f7
    push hl                                       ; $7dac: $e5
    jp $e57d                                      ; $7dad: $c3 $7d $e5


    cp [hl]                                       ; $7db0: $be
    inc [hl]                                      ; $7db1: $34
    ld c, e                                       ; $7db2: $4b
    xor c                                         ; $7db3: $a9
    ld e, d                                       ; $7db4: $5a
    add d                                         ; $7db5: $82
    db $e3                                        ; $7db6: $e3
    and e                                         ; $7db7: $a3
    ld d, a                                       ; $7db8: $57
    sub [hl]                                      ; $7db9: $96
    adc e                                         ; $7dba: $8b
    cp $2b                                        ; $7dbb: $fe $2b
    ld a, [bc]                                    ; $7dbd: $0a
    ld [hl+], a                                   ; $7dbe: $22
    ld c, a                                       ; $7dbf: $4f
    adc d                                         ; $7dc0: $8a
    cp $ea                                        ; $7dc1: $fe $ea
    reti                                          ; $7dc3: $d9


    ld h, h                                       ; $7dc4: $64
    ld h, $45                                     ; $7dc5: $26 $45
    ld [hl-], a                                   ; $7dc7: $32
    rst $38                                       ; $7dc8: $ff
    ld l, b                                       ; $7dc9: $68
    rst $20                                       ; $7dca: $e7
    pop hl                                        ; $7dcb: $e1
    db $e3                                        ; $7dcc: $e3
    xor [hl]                                      ; $7dcd: $ae
    ld c, b                                       ; $7dce: $48
    ld e, [hl]                                    ; $7dcf: $5e
    ret z                                         ; $7dd0: $c8

    ld [hl], d                                    ; $7dd1: $72
    pop de                                        ; $7dd2: $d1
    ld e, a                                       ; $7dd3: $5f
    ld c, l                                       ; $7dd4: $4d
    ld a, [hl]                                    ; $7dd5: $7e
    sub d                                         ; $7dd6: $92
    ld c, [hl]                                    ; $7dd7: $4e
    rrca                                          ; $7dd8: $0f
    rst $20                                       ; $7dd9: $e7
    rst $30                                       ; $7dda: $f7
    ld h, b                                       ; $7ddb: $60
    inc d                                         ; $7ddc: $14
    and e                                         ; $7ddd: $a3
    ld l, d                                       ; $7dde: $6a
    rst $08                                       ; $7ddf: $cf
    db $10                                        ; $7de0: $10
    ld b, d                                       ; $7de1: $42
    sub e                                         ; $7de2: $93
    jp nc, $2cc6                                  ; $7de3: $d2 $c6 $2c

    dec [hl]                                      ; $7de6: $35
    xor l                                         ; $7de7: $ad
    ld a, d                                       ; $7de8: $7a
    jp c, $7da9                                   ; $7de9: $da $a9 $7d

    push hl                                       ; $7dec: $e5
    ld a, $5a                                     ; $7ded: $3e $5a
    ld [hl-], a                                   ; $7def: $32
    ld d, d                                       ; $7df0: $52
    or d                                          ; $7df1: $b2
    ld [de], a                                    ; $7df2: $12
    db $fd                                        ; $7df3: $fd
    db $10                                        ; $7df4: $10
    ld e, e                                       ; $7df5: $5b
    or e                                          ; $7df6: $b3
    ld b, c                                       ; $7df7: $41
    rst $00                                       ; $7df8: $c7

Jump_04d_7df9:
    sbc l                                         ; $7df9: $9d
    ld a, d                                       ; $7dfa: $7a
    push hl                                       ; $7dfb: $e5
    ld a, $6f                                     ; $7dfc: $3e $6f
    di                                            ; $7dfe: $f3
    ld a, a                                       ; $7dff: $7f
    pop bc                                        ; $7e00: $c1
    add c                                         ; $7e01: $81
    add hl, sp                                    ; $7e02: $39
    ld a, d                                       ; $7e03: $7a
    ld [hl], $19                                  ; $7e04: $36 $19
    add hl, sp                                    ; $7e06: $39
    pop hl                                        ; $7e07: $e1
    pop de                                        ; $7e08: $d1
    inc bc                                        ; $7e09: $03
    and d                                         ; $7e0a: $a2
    add hl, de                                    ; $7e0b: $19
    ld a, [c]                                     ; $7e0c: $f2
    res 5, d                                      ; $7e0d: $cb $aa
    ld [hl], $d6                                  ; $7e0f: $36 $d6
    db $f4                                        ; $7e11: $f4
    ld c, b                                       ; $7e12: $48
    ret                                           ; $7e13: $c9


    ld l, h                                       ; $7e14: $6c
    or d                                          ; $7e15: $b2
    rra                                           ; $7e16: $1f
    ld e, [hl]                                    ; $7e17: $5e
    dec bc                                        ; $7e18: $0b
    adc $a3                                       ; $7e19: $ce $a3
    ld h, a                                       ; $7e1b: $67
    add e                                         ; $7e1c: $83
    xor $0e                                       ; $7e1d: $ee $0e
    cpl                                           ; $7e1f: $2f
    ld [de], a                                    ; $7e20: $12
    ld e, $0e                                     ; $7e21: $1e $0e
    ld de, $940f                                  ; $7e23: $11 $0f $94
    ld b, d                                       ; $7e26: $42
    ld [$a599], sp                                ; $7e27: $08 $99 $a5
    ld b, [hl]                                    ; $7e2a: $46
    ld c, d                                       ; $7e2b: $4a
    ld [hl-], a                                   ; $7e2c: $32
    adc c                                         ; $7e2d: $89
    ld h, l                                       ; $7e2e: $65
    ld d, d                                       ; $7e2f: $52
    inc hl                                        ; $7e30: $23
    daa                                           ; $7e31: $27
    cp h                                          ; $7e32: $bc
    ld h, $bc                                     ; $7e33: $26 $bc
    ld [$1b82], a                                 ; $7e35: $ea $82 $1b
    add sp, -$50                                  ; $7e38: $e8 $b0
    adc e                                         ; $7e3a: $8b
    rst $38                                       ; $7e3b: $ff
    and e                                         ; $7e3c: $a3
    sub a                                         ; $7e3d: $97
    ld a, b                                       ; $7e3e: $78
    ret                                           ; $7e3f: $c9


    ld l, b                                       ; $7e40: $68
    xor c                                         ; $7e41: $a9
    sbc e                                         ; $7e42: $9b
    ld c, c                                       ; $7e43: $49
    adc l                                         ; $7e44: $8d
    sbc b                                         ; $7e45: $98
    or $e1                                        ; $7e46: $f6 $e1
    db $fc                                        ; $7e48: $fc
    jp nc, Jump_000_27d1                          ; $7e49: $d2 $d1 $27

    ld l, d                                       ; $7e4c: $6a
    ld l, e                                       ; $7e4d: $6b
    jp c, $d8c1                                   ; $7e4e: $da $c1 $d8

    db $f4                                        ; $7e51: $f4
    ld c, h                                       ; $7e52: $4c
    ld c, d                                       ; $7e53: $4a
    sbc e                                         ; $7e54: $9b
    or a                                          ; $7e55: $b7
    ld sp, hl                                     ; $7e56: $f9
    sbc a                                         ; $7e57: $9f
    ld d, h                                       ; $7e58: $54
    rst $38                                       ; $7e59: $ff
    ld [$65b3], a                                 ; $7e5a: $ea $b3 $65
    ld a, [hl]                                    ; $7e5d: $7e
    ld b, a                                       ; $7e5e: $47
    rst $08                                       ; $7e5f: $cf
    add [hl]                                      ; $7e60: $86
    xor a                                         ; $7e61: $af
    cp [hl]                                       ; $7e62: $be
    db $ed                                        ; $7e63: $ed
    xor e                                         ; $7e64: $ab
    add $c5                                       ; $7e65: $c6 $c5
    rra                                           ; $7e67: $1f
    dec c                                         ; $7e68: $0d
    cp e                                          ; $7e69: $bb
    sub h                                         ; $7e6a: $94

Call_04d_7e6b:
    ld h, [hl]                                    ; $7e6b: $66
    ret z                                         ; $7e6c: $c8

    cpl                                           ; $7e6d: $2f
    dec bc                                        ; $7e6e: $0b
    ld de, $e1e7                                  ; $7e6f: $11 $e7 $e1
    bit 7, [hl]                                   ; $7e72: $cb $7e
    ld d, b                                       ; $7e74: $50
    ld a, [de]                                    ; $7e75: $1a
    ld a, l                                       ; $7e76: $7d
    ld [hl], $43                                  ; $7e77: $36 $43
    ld h, a                                       ; $7e79: $67
    sub e                                         ; $7e7a: $93
    ld [hl], c                                    ; $7e7b: $71
    ld a, h                                       ; $7e7c: $7c
    rrca                                          ; $7e7d: $0f
    sub b                                         ; $7e7e: $90
    ld [$e38b], a                                 ; $7e7f: $ea $8b $e3
    dec [hl]                                      ; $7e82: $35
    ld d, d                                       ; $7e83: $52
    ld [hl-], a                                   ; $7e84: $32
    ld h, [hl]                                    ; $7e85: $66
    xor c                                         ; $7e86: $a9
    jp hl                                         ; $7e87: $e9


    rst $00                                       ; $7e88: $c7
    rra                                           ; $7e89: $1f
    rst $00                                       ; $7e8a: $c7
    cpl                                           ; $7e8b: $2f
    call $9af2                                    ; $7e8c: $cd $f2 $9a
    rst $18                                       ; $7e8f: $df
    rst $38                                       ; $7e90: $ff
    ld b, a                                       ; $7e91: $47
    xor a                                         ; $7e92: $af
    sbc d                                         ; $7e93: $9a
    ld h, [hl]                                    ; $7e94: $66
    call nz, $47d0                                ; $7e95: $c4 $d0 $47
    db $db                                        ; $7e98: $db
    ld b, e                                       ; $7e99: $43
    ret                                           ; $7e9a: $c9


    adc [hl]                                      ; $7e9b: $8e
    sbc [hl]                                      ; $7e9c: $9e
    dec c                                         ; $7e9d: $0d
    ld e, c                                       ; $7e9e: $59
    adc b                                         ; $7e9f: $88
    xor l                                         ; $7ea0: $ad
    ld sp, $2d4b                                  ; $7ea1: $31 $4b $2d
    rla                                           ; $7ea4: $17
    sub c                                         ; $7ea5: $91
    ld l, d                                       ; $7ea6: $6a
    adc b                                         ; $7ea7: $88
    nop                                           ; $7ea8: $00
    ld c, a                                       ; $7ea9: $4f
    set 5, [hl]                                   ; $7eaa: $cb $ee
    add sp, -$27                                  ; $7eac: $e8 $d9
    ldh a, [$d9]                                  ; $7eae: $f0 $d9
    and e                                         ; $7eb0: $a3
    rst $00                                       ; $7eb1: $c7
    sbc l                                         ; $7eb2: $9d
    ld a, d                                       ; $7eb3: $7a
    add b                                         ; $7eb4: $80
    ld c, a                                       ; $7eb5: $4f
    ld h, d                                       ; $7eb6: $62
    ld a, d                                       ; $7eb7: $7a
    jr nz, jr_04d_7ec0                            ; $7eb8: $20 $06

    add sp, -$01                                  ; $7eba: $e8 $ff
    jp c, Jump_04d_5a13                           ; $7ebc: $da $13 $5a

    inc h                                         ; $7ebf: $24

jr_04d_7ec0:
    ld a, [$f6d1]                                 ; $7ec0: $fa $d1 $f6
    db $f4                                        ; $7ec3: $f4
    ld a, [hl]                                    ; $7ec4: $7e
    ld d, d                                       ; $7ec5: $52
    res 6, h                                      ; $7ec6: $cb $b4
    ld c, b                                       ; $7ec8: $48
    db $f4                                        ; $7ec9: $f4
    cp b                                          ; $7eca: $b8
    dec hl                                        ; $7ecb: $2b
    sub d                                         ; $7ecc: $92
    ld h, a                                       ; $7ecd: $67
    jp Jump_000_211f                              ; $7ece: $c3 $1f $21


    add b                                         ; $7ed1: $80
    ld b, b                                       ; $7ed2: $40
    add c                                         ; $7ed3: $81
    ld [bc], a                                    ; $7ed4: $02
    or h                                          ; $7ed5: $b4
    ld c, h                                       ; $7ed6: $4c
    adc e                                         ; $7ed7: $8b
    ld b, h                                       ; $7ed8: $44
    jp Jump_04d_6c0d                              ; $7ed9: $c3 $0d $6c


    ld c, d                                       ; $7edc: $4a
    db $db                                        ; $7edd: $db
    dec d                                         ; $7ede: $15
    adc a                                         ; $7edf: $8f
    and l                                         ; $7ee0: $a5
    xor e                                         ; $7ee1: $ab
    ld l, e                                       ; $7ee2: $6b
    ld [hl], $a6                                  ; $7ee3: $36 $a6
    adc h                                         ; $7ee5: $8c
    dec l                                         ; $7ee6: $2d
    cp b                                          ; $7ee7: $b8
    dec a                                         ; $7ee8: $3d
    ld l, $35                                     ; $7ee9: $2e $35
    ld l, a                                       ; $7eeb: $6f
    db $d3                                        ; $7eec: $d3
    dec hl                                        ; $7eed: $2b
    rst $30                                       ; $7eee: $f7
    ld sp, $8d4b                                  ; $7eef: $31 $4b $8d
    cp e                                          ; $7ef2: $bb
    add hl, hl                                    ; $7ef3: $29
    or d                                          ; $7ef4: $b2
    sub b                                         ; $7ef5: $90
    pop de                                        ; $7ef6: $d1
    or b                                          ; $7ef7: $b0
    ld h, e                                       ; $7ef8: $63
    sbc d                                         ; $7ef9: $9a
    or [hl]                                       ; $7efa: $b6
    sbc c                                         ; $7efb: $99
    ld d, $59                                     ; $7efc: $16 $59
    ret z                                         ; $7efe: $c8

    inc d                                         ; $7eff: $14
    cpl                                           ; $7f00: $2f
    ld a, [bc]                                    ; $7f01: $0a
    ld [hl+], a                                   ; $7f02: $22
    rrca                                          ; $7f03: $0f
    sub h                                         ; $7f04: $94
    ld b, d                                       ; $7f05: $42
    ld [$a4b5], sp                                ; $7f06: $08 $b5 $a4
    and a                                         ; $7f09: $a7
    add a                                         ; $7f0a: $87
    rst $08                                       ; $7f0b: $cf
    ld h, $d3                                     ; $7f0c: $26 $d3
    sub d                                         ; $7f0e: $92
    ld e, $d3                                     ; $7f0f: $1e $d3
    or h                                          ; $7f11: $b4
    ld e, l                                       ; $7f12: $5d
    and [hl]                                      ; $7f13: $a6
    ld b, l                                       ; $7f14: $45
    xor d                                         ; $7f15: $aa
    rra                                           ; $7f16: $1f
    ld hl, $9ac0                                  ; $7f17: $21 $c0 $9a
    ld d, a                                       ; $7f1a: $57
    or l                                          ; $7f1b: $b5
    dec hl                                        ; $7f1c: $2b
    ld e, $70                                     ; $7f1d: $1e $70
    inc bc                                        ; $7f1f: $03
    dec e                                         ; $7f20: $1d
    ld [hl-], a                                   ; $7f21: $32
    sbc e                                         ; $7f22: $9b
    inc l                                         ; $7f23: $2c
    ld l, l                                       ; $7f24: $6d
    jp c, $c8c6                                   ; $7f25: $da $c6 $c8

    add hl, bc                                    ; $7f28: $09
    xor a                                         ; $7f29: $af
    add hl, bc                                    ; $7f2a: $09
    xor a                                         ; $7f2b: $af
    cp d                                          ; $7f2c: $ba
    ldh [rPCM12], a                               ; $7f2d: $e0 $76
    ld e, $e3                                     ; $7f2f: $1e $e3
    ld a, [hl]                                    ; $7f31: $7e
    ld h, h                                       ; $7f32: $64
    xor a                                         ; $7f33: $af
    ld h, l                                       ; $7f34: $65
    ld e, d                                       ; $7f35: $5a
    and h                                         ; $7f36: $a4
    ld a, d                                       ; $7f37: $7a
    ld a, l                                       ; $7f38: $7d

jr_04d_7f39:
    cp b                                          ; $7f39: $b8
    ld c, a                                       ; $7f3a: $4f
    add hl, de                                    ; $7f3b: $19
    ld [hl], a                                    ; $7f3c: $77
    cp b                                          ; $7f3d: $b8
    add c                                         ; $7f3e: $81
    cp [hl]                                       ; $7f3f: $be
    ld d, d                                       ; $7f40: $52
    ld c, e                                       ; $7f41: $4b
    rst $30                                       ; $7f42: $f7
    ret                                           ; $7f43: $c9


    ld b, [hl]                                    ; $7f44: $46
    cpl                                           ; $7f45: $2f
    rra                                           ; $7f46: $1f
    sbc a                                         ; $7f47: $9f
    add hl, de                                    ; $7f48: $19
    dec a                                         ; $7f49: $3d
    ld h, l                                       ; $7f4a: $65
    db $ec                                        ; $7f4b: $ec
    call $f9c3                                    ; $7f4c: $cd $c3 $f9
    ld h, l                                       ; $7f4f: $65
    ld h, d                                       ; $7f50: $62
    ld a, [hl]                                    ; $7f51: $7e
    ret                                           ; $7f52: $c9


    reti                                          ; $7f53: $d9


    ld l, b                                       ; $7f54: $68
    ret z                                         ; $7f55: $c8

    ld l, h                                       ; $7f56: $6c
    call z, Call_04d_47ab                         ; $7f57: $cc $ab $47
    ld e, c                                       ; $7f5a: $59
    add hl, hl                                    ; $7f5b: $29
    ld [de], a                                    ; $7f5c: $12
    ld a, $1a                                     ; $7f5d: $3e $1a
    dec a                                         ; $7f5f: $3d
    xor $d4                                       ; $7f60: $ee $d4
    or e                                          ; $7f62: $b3
    ld b, c                                       ; $7f63: $41
    ld hl, $a002                                  ; $7f64: $21 $02 $a0
    add hl, hl                                    ; $7f67: $29
    dec a                                         ; $7f68: $3d
    dec de                                        ; $7f69: $1b
    ld l, [hl]                                    ; $7f6a: $6e
    ldh a, [$94]                                  ; $7f6b: $f0 $94
    ld l, c                                       ; $7f6d: $69
    add c                                         ; $7f6e: $81
    ld a, e                                       ; $7f6f: $7b
    pop hl                                        ; $7f70: $e1
    dec h                                         ; $7f71: $25
    add b                                         ; $7f72: $80
    xor a                                         ; $7f73: $af
    dec c                                         ; $7f74: $0d
    inc d                                         ; $7f75: $14
    cp b                                          ; $7f76: $b8
    rla                                           ; $7f77: $17
    ld de, $13a0                                  ; $7f78: $11 $a0 $13
    sbc d                                         ; $7f7b: $9a
    rst $08                                       ; $7f7c: $cf
    ld b, [hl]                                    ; $7f7d: $46
    xor e                                         ; $7f7e: $ab
    ld l, c                                       ; $7f7f: $69
    db $fc                                        ; $7f80: $fc
    or d                                          ; $7f81: $b2
    ld [hl], b                                    ; $7f82: $70
    cpl                                           ; $7f83: $2f
    cp h                                          ; $7f84: $bc
    inc b                                         ; $7f85: $04
    ldh a, [$b5]                                  ; $7f86: $f0 $b5
    add c                                         ; $7f88: $81
    ld [bc], a                                    ; $7f89: $02
    rst $30                                       ; $7f8a: $f7
    ld [hl+], a                                   ; $7f8b: $22
    ld [bc], a                                    ; $7f8c: $02
    rst $20                                       ; $7f8d: $e7
    pop hl                                        ; $7f8e: $e1
    dec sp                                        ; $7f8f: $3b
    ld [hl], b                                    ; $7f90: $70
    db $fc                                        ; $7f91: $fc
    add a                                         ; $7f92: $87
    ld c, a                                       ; $7f93: $4f
    xor a                                         ; $7f94: $af
    sbc $15                                       ; $7f95: $de $15
    adc a                                         ; $7f97: $8f
    push af                                       ; $7f98: $f5
    dec h                                         ; $7f99: $25
    ld a, [hl]                                    ; $7f9a: $7e
    sub l                                         ; $7f9b: $95
    adc a                                         ; $7f9c: $8f
    ld a, [de]                                    ; $7f9d: $1a
    dec d                                         ; $7f9e: $15
    ld c, $f7                                     ; $7f9f: $0e $f7
    jp nz, $004b                                  ; $7fa1: $c2 $4b $00

    ld e, a                                       ; $7fa4: $5f
    dec de                                        ; $7fa5: $1b
    jr z, @+$72                                   ; $7fa6: $28 $70

    cpl                                           ; $7fa8: $2f
    ld [hl+], a                                   ; $7fa9: $22
    jr nz, jr_04d_7f39                            ; $7faa: $20 $8d

    ld h, h                                       ; $7fac: $64
    cp a                                          ; $7fad: $bf
    jp z, $8421                                   ; $7fae: $ca $21 $84

    ld [hl], $7c                                  ; $7fb1: $36 $7c
    sbc c                                         ; $7fb3: $99
    ld d, $29                                     ; $7fb4: $16 $29
    dec de                                        ; $7fb6: $1b
    res 0, [hl]                                   ; $7fb7: $cb $86
    adc [hl]                                      ; $7fb9: $8e
    inc h                                         ; $7fba: $24
    ld a, d                                       ; $7fbb: $7a
    or h                                          ; $7fbc: $b4
    rst $38                                       ; $7fbd: $ff
    ld c, e                                       ; $7fbe: $4b
    pop hl                                        ; $7fbf: $e1
    ld e, [hl]                                    ; $7fc0: $5e
    ld a, b                                       ; $7fc1: $78
    add hl, bc                                    ; $7fc2: $09
    ldh [rOCPD], a                                ; $7fc3: $e0 $6b
    inc bc                                        ; $7fc5: $03
    dec b                                         ; $7fc6: $05
    xor $45                                       ; $7fc7: $ee $45
    inc b                                         ; $7fc9: $04
    add b                                         ; $7fca: $80
    rst $38                                       ; $7fcb: $ff
    and c                                         ; $7fcc: $a1
    or c                                          ; $7fcd: $b1
    rst $18                                       ; $7fce: $df
    sbc [hl]                                      ; $7fcf: $9e
    sub [hl]                                      ; $7fd0: $96
    sbc l                                         ; $7fd1: $9d
    ld e, [hl]                                    ; $7fd2: $5e
    dec a                                         ; $7fd3: $3d
    dec de                                        ; $7fd4: $1b
    ld a, [hl]                                    ; $7fd5: $7e
    ld [hl], $29                                  ; $7fd6: $36 $29
    dec a                                         ; $7fd8: $3d
    cp $4f                                        ; $7fd9: $fe $4f
    xor h                                         ; $7fdb: $ac
    ld a, l                                       ; $7fdc: $7d
    or h                                          ; $7fdd: $b4
    rla                                           ; $7fde: $17
    ld e, [hl]                                    ; $7fdf: $5e
    ld [bc], a                                    ; $7fe0: $02
    ld hl, sp-$26                                 ; $7fe1: $f8 $da
    ld b, b                                       ; $7fe3: $40
    add c                                         ; $7fe4: $81
    ld a, e                                       ; $7fe5: $7b
    ld de, $ff01                                  ; $7fe6: $11 $01 $ff
    rst $38                                       ; $7fe9: $ff
    rst $38                                       ; $7fea: $ff
    rst $38                                       ; $7feb: $ff
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
