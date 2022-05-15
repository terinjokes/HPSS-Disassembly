; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $05f", ROMX[$4000], BANK[$5f]

    ld e, a                                       ; $4000: $5f
    nop                                           ; $4001: $00
    sub e                                         ; $4002: $93
    inc h                                         ; $4003: $24
    nop                                           ; $4004: $00
    and c                                         ; $4005: $a1
    inc h                                         ; $4006: $24
    nop                                           ; $4007: $00
    xor h                                         ; $4008: $ac
    inc h                                         ; $4009: $24
    nop                                           ; $400a: $00
    rst $00                                       ; $400b: $c7
    inc h                                         ; $400c: $24
    nop                                           ; $400d: $00
    jp nc, $0024                                  ; $400e: $d2 $24 $00

    sub $24                                       ; $4011: $d6 $24
    nop                                           ; $4013: $00
    call c, $0024                                 ; $4014: $dc $24 $00
    pop hl                                        ; $4017: $e1
    inc h                                         ; $4018: $24
    nop                                           ; $4019: $00
    db $ed                                        ; $401a: $ed
    inc h                                         ; $401b: $24
    nop                                           ; $401c: $00
    ld sp, hl                                     ; $401d: $f9
    inc h                                         ; $401e: $24
    nop                                           ; $401f: $00
    ld [bc], a                                    ; $4020: $02
    dec h                                         ; $4021: $25
    nop                                           ; $4022: $00
    dec bc                                        ; $4023: $0b
    dec h                                         ; $4024: $25
    nop                                           ; $4025: $00
    dec d                                         ; $4026: $15
    dec h                                         ; $4027: $25
    nop                                           ; $4028: $00
    jr nz, jr_05f_4050                            ; $4029: $20 $25

    nop                                           ; $402b: $00
    dec hl                                        ; $402c: $2b
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
    ld a, b                                       ; $4041: $78
    dec h                                         ; $4042: $25
    nop                                           ; $4043: $00
    add l                                         ; $4044: $85
    dec h                                         ; $4045: $25
    nop                                           ; $4046: $00
    sub d                                         ; $4047: $92
    dec h                                         ; $4048: $25
    nop                                           ; $4049: $00
    sbc [hl]                                      ; $404a: $9e
    dec h                                         ; $404b: $25
    nop                                           ; $404c: $00
    xor e                                         ; $404d: $ab
    dec h                                         ; $404e: $25
    nop                                           ; $404f: $00

jr_05f_4050:
    cp b                                          ; $4050: $b8
    dec h                                         ; $4051: $25
    nop                                           ; $4052: $00
    ret nc                                        ; $4053: $d0

    dec h                                         ; $4054: $25
    nop                                           ; $4055: $00
    ld sp, hl                                     ; $4056: $f9
    dec h                                         ; $4057: $25
    nop                                           ; $4058: $00
    rlca                                          ; $4059: $07
    ld h, $00                                     ; $405a: $26 $00
    ld e, $26                                     ; $405c: $1e $26
    nop                                           ; $405e: $00
    dec [hl]                                      ; $405f: $35
    ld h, $00                                     ; $4060: $26 $00
    call nz, $0026                                ; $4062: $c4 $26 $00
    add hl, bc                                    ; $4065: $09
    daa                                           ; $4066: $27
    nop                                           ; $4067: $00
    add hl, de                                    ; $4068: $19
    daa                                           ; $4069: $27
    nop                                           ; $406a: $00
    jr nc, @+$29                                  ; $406b: $30 $27

    nop                                           ; $406d: $00
    ld b, b                                       ; $406e: $40
    daa                                           ; $406f: $27
    nop                                           ; $4070: $00
    ld c, [hl]                                    ; $4071: $4e
    daa                                           ; $4072: $27
    nop                                           ; $4073: $00
    ld e, a                                       ; $4074: $5f
    daa                                           ; $4075: $27
    nop                                           ; $4076: $00
    add l                                         ; $4077: $85
    daa                                           ; $4078: $27
    nop                                           ; $4079: $00
    and [hl]                                      ; $407a: $a6
    daa                                           ; $407b: $27
    nop                                           ; $407c: $00
    sla a                                         ; $407d: $cb $27
    nop                                           ; $407f: $00
    add sp, $27                                   ; $4080: $e8 $27
    nop                                           ; $4082: $00
    inc b                                         ; $4083: $04
    jr z, jr_05f_4086                             ; $4084: $28 $00

jr_05f_4086:
    inc c                                         ; $4086: $0c
    jr z, jr_05f_4089                             ; $4087: $28 $00

jr_05f_4089:
    add hl, hl                                    ; $4089: $29
    jr z, jr_05f_408c                             ; $408a: $28 $00

jr_05f_408c:
    ld a, $28                                     ; $408c: $3e $28
    nop                                           ; $408e: $00
    ld c, [hl]                                    ; $408f: $4e
    jr z, jr_05f_4092                             ; $4090: $28 $00

jr_05f_4092:
    add [hl]                                      ; $4092: $86
    jr z, jr_05f_4095                             ; $4093: $28 $00

jr_05f_4095:
    and [hl]                                      ; $4095: $a6
    jr z, jr_05f_4098                             ; $4096: $28 $00

jr_05f_4098:
    or h                                          ; $4098: $b4
    jr z, jr_05f_409b                             ; $4099: $28 $00

jr_05f_409b:
    cp a                                          ; $409b: $bf
    jr z, jr_05f_409e                             ; $409c: $28 $00

jr_05f_409e:
    call RST_28                                   ; $409e: $cd $28 $00
    ldh [$28], a                                  ; $40a1: $e0 $28
    nop                                           ; $40a3: $00
    nop                                           ; $40a4: $00
    add hl, hl                                    ; $40a5: $29
    nop                                           ; $40a6: $00
    ld b, h                                       ; $40a7: $44
    add hl, hl                                    ; $40a8: $29
    nop                                           ; $40a9: $00
    ld a, c                                       ; $40aa: $79
    add hl, hl                                    ; $40ab: $29
    nop                                           ; $40ac: $00
    sub b                                         ; $40ad: $90
    add hl, hl                                    ; $40ae: $29
    nop                                           ; $40af: $00
    or h                                          ; $40b0: $b4
    add hl, hl                                    ; $40b1: $29
    nop                                           ; $40b2: $00
    ret nc                                        ; $40b3: $d0

    add hl, hl                                    ; $40b4: $29
    nop                                           ; $40b5: $00
    rst $30                                       ; $40b6: $f7
    add hl, hl                                    ; $40b7: $29
    nop                                           ; $40b8: $00
    jr @+$2c                                      ; $40b9: $18 $2a

    nop                                           ; $40bb: $00
    ld a, [hl+]                                   ; $40bc: $2a
    ld a, [hl+]                                   ; $40bd: $2a
    nop                                           ; $40be: $00
    ld d, d                                       ; $40bf: $52
    ld a, [hl+]                                   ; $40c0: $2a
    nop                                           ; $40c1: $00
    ld h, d                                       ; $40c2: $62
    ld a, [hl+]                                   ; $40c3: $2a
    nop                                           ; $40c4: $00
    sbc a                                         ; $40c5: $9f
    ld a, [hl+]                                   ; $40c6: $2a
    nop                                           ; $40c7: $00
    cp e                                          ; $40c8: $bb
    ld a, [hl+]                                   ; $40c9: $2a
    nop                                           ; $40ca: $00
    inc hl                                        ; $40cb: $23
    dec hl                                        ; $40cc: $2b
    nop                                           ; $40cd: $00
    inc sp                                        ; $40ce: $33
    dec hl                                        ; $40cf: $2b
    nop                                           ; $40d0: $00
    ld e, a                                       ; $40d1: $5f
    dec hl                                        ; $40d2: $2b
    nop                                           ; $40d3: $00
    ld l, d                                       ; $40d4: $6a
    dec hl                                        ; $40d5: $2b
    nop                                           ; $40d6: $00
    ld [hl], h                                    ; $40d7: $74
    dec hl                                        ; $40d8: $2b
    nop                                           ; $40d9: $00
    add c                                         ; $40da: $81
    dec hl                                        ; $40db: $2b
    nop                                           ; $40dc: $00
    cp c                                          ; $40dd: $b9
    dec hl                                        ; $40de: $2b
    nop                                           ; $40df: $00
    ret nc                                        ; $40e0: $d0

    dec hl                                        ; $40e1: $2b
    nop                                           ; $40e2: $00
    call nc, $002b                                ; $40e3: $d4 $2b $00
    ret c                                         ; $40e6: $d8

    dec hl                                        ; $40e7: $2b
    nop                                           ; $40e8: $00
    call c, $002b                                 ; $40e9: $dc $2b $00
    add hl, bc                                    ; $40ec: $09
    inc l                                         ; $40ed: $2c
    nop                                           ; $40ee: $00
    ld sp, $002c                                  ; $40ef: $31 $2c $00
    ld d, c                                       ; $40f2: $51
    inc l                                         ; $40f3: $2c
    nop                                           ; $40f4: $00
    sbc [hl]                                      ; $40f5: $9e
    inc l                                         ; $40f6: $2c
    nop                                           ; $40f7: $00
    rst $08                                       ; $40f8: $cf
    inc l                                         ; $40f9: $2c
    nop                                           ; $40fa: $00
    inc bc                                        ; $40fb: $03
    dec l                                         ; $40fc: $2d
    nop                                           ; $40fd: $00
    dec [hl]                                      ; $40fe: $35
    dec l                                         ; $40ff: $2d
    nop                                           ; $4100: $00
    ld d, a                                       ; $4101: $57
    dec l                                         ; $4102: $2d
    nop                                           ; $4103: $00
    sbc d                                         ; $4104: $9a
    dec l                                         ; $4105: $2d
    nop                                           ; $4106: $00
    and l                                         ; $4107: $a5
    dec l                                         ; $4108: $2d
    nop                                           ; $4109: $00
    ret nc                                        ; $410a: $d0

    dec l                                         ; $410b: $2d
    nop                                           ; $410c: $00
    ldh [$2d], a                                  ; $410d: $e0 $2d
    nop                                           ; $410f: $00
    dec b                                         ; $4110: $05
    ld l, $00                                     ; $4111: $2e $00
    inc e                                         ; $4113: $1c
    ld l, $00                                     ; $4114: $2e $00
    ld d, b                                       ; $4116: $50
    ld l, $00                                     ; $4117: $2e $00
    sub e                                         ; $4119: $93
    ld l, $00                                     ; $411a: $2e $00
    or a                                          ; $411c: $b7
    ld l, $00                                     ; $411d: $2e $00
    rst $28                                       ; $411f: $ef
    ld l, $00                                     ; $4120: $2e $00
    ld c, e                                       ; $4122: $4b
    cpl                                           ; $4123: $2f
    nop                                           ; $4124: $00
    ld e, [hl]                                    ; $4125: $5e
    cpl                                           ; $4126: $2f
    nop                                           ; $4127: $00
    cp b                                          ; $4128: $b8
    cpl                                           ; $4129: $2f
    nop                                           ; $412a: $00
    call $002f                                    ; $412b: $cd $2f $00
    pop af                                        ; $412e: $f1
    cpl                                           ; $412f: $2f
    nop                                           ; $4130: $00
    ld a, [bc]                                    ; $4131: $0a
    jr nc, jr_05f_4134                            ; $4132: $30 $00

jr_05f_4134:
    rla                                           ; $4134: $17
    jr nc, jr_05f_4137                            ; $4135: $30 $00

jr_05f_4137:
    ld c, c                                       ; $4137: $49
    jr nc, jr_05f_413a                            ; $4138: $30 $00

jr_05f_413a:
    add l                                         ; $413a: $85
    jr nc, jr_05f_413d                            ; $413b: $30 $00

jr_05f_413d:
    adc c                                         ; $413d: $89
    jr nc, jr_05f_4140                            ; $413e: $30 $00

jr_05f_4140:
    or l                                          ; $4140: $b5
    jr nc, jr_05f_4143                            ; $4141: $30 $00

jr_05f_4143:
    db $e3                                        ; $4143: $e3
    jr nc, jr_05f_4146                            ; $4144: $30 $00

jr_05f_4146:
    pop af                                        ; $4146: $f1
    jr nc, jr_05f_4149                            ; $4147: $30 $00

jr_05f_4149:
    inc de                                        ; $4149: $13
    ld sp, $3500                                  ; $414a: $31 $00 $35
    ld sp, $7100                                  ; $414d: $31 $00 $71
    ld sp, $8600                                  ; $4150: $31 $00 $86
    ld sp, $e300                                  ; $4153: $31 $00 $e3
    ld sp, $0700                                  ; $4156: $31 $00 $07
    ld [hl-], a                                   ; $4159: $32
    nop                                           ; $415a: $00
    inc d                                         ; $415b: $14
    ld [hl-], a                                   ; $415c: $32
    nop                                           ; $415d: $00
    ld b, d                                       ; $415e: $42
    ld [hl-], a                                   ; $415f: $32
    nop                                           ; $4160: $00
    ld d, c                                       ; $4161: $51
    ld [hl-], a                                   ; $4162: $32
    nop                                           ; $4163: $00
    sbc e                                         ; $4164: $9b
    ld [hl-], a                                   ; $4165: $32
    nop                                           ; $4166: $00
    jp nz, $0032                                  ; $4167: $c2 $32 $00

    call $0032                                    ; $416a: $cd $32 $00
    ldh a, [$32]                                  ; $416d: $f0 $32
    nop                                           ; $416f: $00
    dec b                                         ; $4170: $05
    inc sp                                        ; $4171: $33
    nop                                           ; $4172: $00
    daa                                           ; $4173: $27
    inc sp                                        ; $4174: $33
    nop                                           ; $4175: $00
    scf                                           ; $4176: $37
    inc sp                                        ; $4177: $33
    nop                                           ; $4178: $00
    ld e, [hl]                                    ; $4179: $5e
    inc sp                                        ; $417a: $33
    nop                                           ; $417b: $00
    ld h, h                                       ; $417c: $64
    inc sp                                        ; $417d: $33
    nop                                           ; $417e: $00
    ld [hl], a                                    ; $417f: $77
    inc sp                                        ; $4180: $33
    nop                                           ; $4181: $00
    add d                                         ; $4182: $82
    inc sp                                        ; $4183: $33
    nop                                           ; $4184: $00
    adc e                                         ; $4185: $8b
    inc sp                                        ; $4186: $33
    nop                                           ; $4187: $00
    sub e                                         ; $4188: $93
    inc sp                                        ; $4189: $33
    nop                                           ; $418a: $00
    sbc l                                         ; $418b: $9d
    inc sp                                        ; $418c: $33
    nop                                           ; $418d: $00
    xor e                                         ; $418e: $ab
    inc sp                                        ; $418f: $33
    nop                                           ; $4190: $00
    or a                                          ; $4191: $b7
    inc sp                                        ; $4192: $33
    nop                                           ; $4193: $00
    push bc                                       ; $4194: $c5
    inc sp                                        ; $4195: $33
    nop                                           ; $4196: $00
    jp z, $0033                                   ; $4197: $ca $33 $00

    db $d3                                        ; $419a: $d3
    inc sp                                        ; $419b: $33
    nop                                           ; $419c: $00
    or $33                                        ; $419d: $f6 $33
    nop                                           ; $419f: $00
    ld l, $34                                     ; $41a0: $2e $34
    nop                                           ; $41a2: $00
    ld c, a                                       ; $41a3: $4f
    inc [hl]                                      ; $41a4: $34
    nop                                           ; $41a5: $00
    ld e, a                                       ; $41a6: $5f
    inc [hl]                                      ; $41a7: $34
    nop                                           ; $41a8: $00
    ld [hl], h                                    ; $41a9: $74
    inc [hl]                                      ; $41aa: $34
    nop                                           ; $41ab: $00
    add [hl]                                      ; $41ac: $86
    inc [hl]                                      ; $41ad: $34
    nop                                           ; $41ae: $00
    and e                                         ; $41af: $a3
    inc [hl]                                      ; $41b0: $34
    nop                                           ; $41b1: $00
    call z, Call_000_0034                         ; $41b2: $cc $34 $00
    ld [c], a                                     ; $41b5: $e2
    inc [hl]                                      ; $41b6: $34
    nop                                           ; $41b7: $00
    rla                                           ; $41b8: $17
    dec [hl]                                      ; $41b9: $35
    nop                                           ; $41ba: $00
    inc hl                                        ; $41bb: $23
    dec [hl]                                      ; $41bc: $35
    nop                                           ; $41bd: $00
    inc a                                         ; $41be: $3c
    dec [hl]                                      ; $41bf: $35
    nop                                           ; $41c0: $00
    ld [hl], h                                    ; $41c1: $74
    dec [hl]                                      ; $41c2: $35
    nop                                           ; $41c3: $00
    adc c                                         ; $41c4: $89
    dec [hl]                                      ; $41c5: $35
    nop                                           ; $41c6: $00
    xor e                                         ; $41c7: $ab
    dec [hl]                                      ; $41c8: $35
    nop                                           ; $41c9: $00
    pop bc                                        ; $41ca: $c1
    dec [hl]                                      ; $41cb: $35
    nop                                           ; $41cc: $00
    pop hl                                        ; $41cd: $e1
    dec [hl]                                      ; $41ce: $35
    nop                                           ; $41cf: $00
    or $35                                        ; $41d0: $f6 $35
    nop                                           ; $41d2: $00
    dec bc                                        ; $41d3: $0b
    ld [hl], $00                                  ; $41d4: $36 $00
    inc d                                         ; $41d6: $14
    ld [hl], $00                                  ; $41d7: $36 $00
    cpl                                           ; $41d9: $2f
    ld [hl], $00                                  ; $41da: $36 $00
    ld c, d                                       ; $41dc: $4a
    ld [hl], $00                                  ; $41dd: $36 $00
    ld d, [hl]                                    ; $41df: $56
    ld [hl], $00                                  ; $41e0: $36 $00
    ld [hl], h                                    ; $41e2: $74
    ld [hl], $00                                  ; $41e3: $36 $00
    add h                                         ; $41e5: $84
    ld [hl], $00                                  ; $41e6: $36 $00
    and l                                         ; $41e8: $a5
    ld [hl], $00                                  ; $41e9: $36 $00
    jp nc, $0036                                  ; $41eb: $d2 $36 $00

    rlca                                          ; $41ee: $07
    scf                                           ; $41ef: $37
    nop                                           ; $41f0: $00
    ld a, [hl+]                                   ; $41f1: $2a
    scf                                           ; $41f2: $37
    nop                                           ; $41f3: $00
    ld d, c                                       ; $41f4: $51
    scf                                           ; $41f5: $37
    nop                                           ; $41f6: $00
    ld l, d                                       ; $41f7: $6a
    scf                                           ; $41f8: $37
    nop                                           ; $41f9: $00
    ld a, l                                       ; $41fa: $7d
    scf                                           ; $41fb: $37
    nop                                           ; $41fc: $00
    sub [hl]                                      ; $41fd: $96
    scf                                           ; $41fe: $37
    nop                                           ; $41ff: $00
    or l                                          ; $4200: $b5
    scf                                           ; $4201: $37
    nop                                           ; $4202: $00
    call Call_000_0037                            ; $4203: $cd $37 $00
    or $37                                        ; $4206: $f6 $37
    nop                                           ; $4208: $00
    ld bc, $0038                                  ; $4209: $01 $38 $00
    add hl, hl                                    ; $420c: $29
    jr c, jr_05f_420f                             ; $420d: $38 $00

jr_05f_420f:
    ld b, b                                       ; $420f: $40
    jr c, jr_05f_4212                             ; $4210: $38 $00

jr_05f_4212:
    ld h, e                                       ; $4212: $63
    jr c, jr_05f_4215                             ; $4213: $38 $00

jr_05f_4215:
    ld [hl], a                                    ; $4215: $77
    jr c, jr_05f_4218                             ; $4216: $38 $00

jr_05f_4218:
    add l                                         ; $4218: $85
    jr c, jr_05f_421b                             ; $4219: $38 $00

jr_05f_421b:
    sub d                                         ; $421b: $92
    jr c, jr_05f_421e                             ; $421c: $38 $00

jr_05f_421e:
    sbc a                                         ; $421e: $9f
    jr c, jr_05f_4221                             ; $421f: $38 $00

jr_05f_4221:
    cp d                                          ; $4221: $ba
    jr c, jr_05f_4224                             ; $4222: $38 $00

jr_05f_4224:
    pop af                                        ; $4224: $f1
    jr c, jr_05f_4227                             ; $4225: $38 $00

jr_05f_4227:
    dec bc                                        ; $4227: $0b
    add hl, sp                                    ; $4228: $39
    nop                                           ; $4229: $00
    ld h, $39                                     ; $422a: $26 $39
    nop                                           ; $422c: $00
    inc sp                                        ; $422d: $33
    add hl, sp                                    ; $422e: $39
    nop                                           ; $422f: $00
    ld b, e                                       ; $4230: $43
    add hl, sp                                    ; $4231: $39
    nop                                           ; $4232: $00
    ld d, e                                       ; $4233: $53
    add hl, sp                                    ; $4234: $39
    nop                                           ; $4235: $00
    ld l, l                                       ; $4236: $6d
    add hl, sp                                    ; $4237: $39
    nop                                           ; $4238: $00
    ld a, a                                       ; $4239: $7f
    add hl, sp                                    ; $423a: $39
    nop                                           ; $423b: $00
    sbc d                                         ; $423c: $9a
    add hl, sp                                    ; $423d: $39
    nop                                           ; $423e: $00
    xor b                                         ; $423f: $a8
    add hl, sp                                    ; $4240: $39
    nop                                           ; $4241: $00
    ret c                                         ; $4242: $d8

    add hl, sp                                    ; $4243: $39
    nop                                           ; $4244: $00
    db $ed                                        ; $4245: $ed
    add hl, sp                                    ; $4246: $39
    nop                                           ; $4247: $00
    add hl, bc                                    ; $4248: $09
    ld a, [hl-]                                   ; $4249: $3a
    nop                                           ; $424a: $00
    inc a                                         ; $424b: $3c
    ld a, [hl-]                                   ; $424c: $3a
    nop                                           ; $424d: $00
    ld c, a                                       ; $424e: $4f
    ld a, [hl-]                                   ; $424f: $3a
    nop                                           ; $4250: $00
    ld [hl], c                                    ; $4251: $71
    ld a, [hl-]                                   ; $4252: $3a
    nop                                           ; $4253: $00
    ld a, [hl]                                    ; $4254: $7e
    ld a, [hl-]                                   ; $4255: $3a
    nop                                           ; $4256: $00
    sub d                                         ; $4257: $92
    ld a, [hl-]                                   ; $4258: $3a
    nop                                           ; $4259: $00
    cp c                                          ; $425a: $b9
    ld a, [hl-]                                   ; $425b: $3a
    nop                                           ; $425c: $00
    jp hl                                         ; $425d: $e9


    ld a, [hl-]                                   ; $425e: $3a
    nop                                           ; $425f: $00
    db $f4                                        ; $4260: $f4
    ld a, [hl-]                                   ; $4261: $3a
    nop                                           ; $4262: $00
    daa                                           ; $4263: $27
    dec sp                                        ; $4264: $3b
    nop                                           ; $4265: $00
    dec [hl]                                      ; $4266: $35
    dec sp                                        ; $4267: $3b
    nop                                           ; $4268: $00
    halt                                          ; $4269: $76
    dec sp                                        ; $426a: $3b
    nop                                           ; $426b: $00
    sbc d                                         ; $426c: $9a
    dec sp                                        ; $426d: $3b
    nop                                           ; $426e: $00
    and h                                         ; $426f: $a4
    dec sp                                        ; $4270: $3b
    nop                                           ; $4271: $00
    ret z                                         ; $4272: $c8

    dec sp                                        ; $4273: $3b
    nop                                           ; $4274: $00
    db $ec                                        ; $4275: $ec
    dec sp                                        ; $4276: $3b
    nop                                           ; $4277: $00
    ldh a, [$3b]                                  ; $4278: $f0 $3b
    nop                                           ; $427a: $00
    rlca                                          ; $427b: $07
    inc a                                         ; $427c: $3c
    nop                                           ; $427d: $00
    inc de                                        ; $427e: $13
    inc a                                         ; $427f: $3c
    nop                                           ; $4280: $00
    inc l                                         ; $4281: $2c
    inc a                                         ; $4282: $3c
    nop                                           ; $4283: $00
    dec [hl]                                      ; $4284: $35
    inc a                                         ; $4285: $3c
    nop                                           ; $4286: $00
    ccf                                           ; $4287: $3f
    inc a                                         ; $4288: $3c
    nop                                           ; $4289: $00
    ldh [$3c], a                                  ; $428a: $e0 $3c
    nop                                           ; $428c: $00
    rla                                           ; $428d: $17
    dec a                                         ; $428e: $3d
    nop                                           ; $428f: $00
    ld c, l                                       ; $4290: $4d
    dec a                                         ; $4291: $3d
    nop                                           ; $4292: $00
    ld e, l                                       ; $4293: $5d
    dec a                                         ; $4294: $3d
    nop                                           ; $4295: $00
    ld a, h                                       ; $4296: $7c
    dec a                                         ; $4297: $3d
    nop                                           ; $4298: $00
    xor h                                         ; $4299: $ac
    dec a                                         ; $429a: $3d
    nop                                           ; $429b: $00
    rst $00                                       ; $429c: $c7
    dec a                                         ; $429d: $3d
    nop                                           ; $429e: $00
    ld [hl], $3e                                  ; $429f: $36 $3e
    nop                                           ; $42a1: $00
    adc d                                         ; $42a2: $8a
    ld a, $00                                     ; $42a3: $3e $00
    push bc                                       ; $42a5: $c5
    ld a, $00                                     ; $42a6: $3e $00
    db $ed                                        ; $42a8: $ed
    ld a, $00                                     ; $42a9: $3e $00
    dec hl                                        ; $42ab: $2b
    ccf                                           ; $42ac: $3f
    nop                                           ; $42ad: $00
    ld c, d                                       ; $42ae: $4a
    ccf                                           ; $42af: $3f
    nop                                           ; $42b0: $00
    sbc [hl]                                      ; $42b1: $9e
    ccf                                           ; $42b2: $3f
    nop                                           ; $42b3: $00
    or d                                          ; $42b4: $b2
    ccf                                           ; $42b5: $3f
    nop                                           ; $42b6: $00
    rst $00                                       ; $42b7: $c7
    ccf                                           ; $42b8: $3f
    ld bc, $0001                                  ; $42b9: $01 $01 $00
    ld bc, $0021                                  ; $42bc: $01 $21 $00
    ld bc, $0040                                  ; $42bf: $01 $40 $00
    ld bc, $005f                                  ; $42c2: $01 $5f $00
    ld bc, $0078                                  ; $42c5: $01 $78 $00
    ld bc, $007f                                  ; $42c8: $01 $7f $00
    ld bc, $009c                                  ; $42cb: $01 $9c $00
    ld bc, $00a2                                  ; $42ce: $01 $a2 $00
    ld bc, $00a7                                  ; $42d1: $01 $a7 $00
    ld bc, $00e4                                  ; $42d4: $01 $e4 $00
    ld bc, $00fc                                  ; $42d7: $01 $fc $00
    ld bc, $0123                                  ; $42da: $01 $23 $01
    ld bc, $0133                                  ; $42dd: $01 $33 $01
    ld bc, $0162                                  ; $42e0: $01 $62 $01
    ld bc, $0167                                  ; $42e3: $01 $67 $01
    ld bc, $017a                                  ; $42e6: $01 $7a $01
    ld bc, $018f                                  ; $42e9: $01 $8f $01
    ld bc, $01c7                                  ; $42ec: $01 $c7 $01
    ld bc, $0202                                  ; $42ef: $01 $02 $02
    ld bc, $0214                                  ; $42f2: $01 $14 $02
    ld bc, $021f                                  ; $42f5: $01 $1f $02
    ld bc, $0233                                  ; $42f8: $01 $33 $02
    ld bc, $0249                                  ; $42fb: $01 $49 $02
    ld bc, $0263                                  ; $42fe: $01 $63 $02
    ld bc, $027f                                  ; $4301: $01 $7f $02
    ld bc, $02b3                                  ; $4304: $01 $b3 $02
    ld bc, $02c1                                  ; $4307: $01 $c1 $02
    ld bc, $0347                                  ; $430a: $01 $47 $03
    ld bc, $0351                                  ; $430d: $01 $51 $03
    ld bc, $036e                                  ; $4310: $01 $6e $03
    ld bc, $0381                                  ; $4313: $01 $81 $03
    ld bc, $039d                                  ; $4316: $01 $9d $03
    ld bc, $03b2                                  ; $4319: $01 $b2 $03
    ld bc, $03e5                                  ; $431c: $01 $e5 $03
    ld bc, $03f5                                  ; $431f: $01 $f5 $03
    ld bc, $0407                                  ; $4322: $01 $07 $04
    ld bc, $0484                                  ; $4325: $01 $84 $04
    ld bc, $049c                                  ; $4328: $01 $9c $04
    ld bc, $04ba                                  ; $432b: $01 $ba $04
    ld bc, $04e8                                  ; $432e: $01 $e8 $04
    ld bc, $04fd                                  ; $4331: $01 $fd $04
    ld bc, $052b                                  ; $4334: $01 $2b $05
    ld bc, $0541                                  ; $4337: $01 $41 $05
    ld bc, $0561                                  ; $433a: $01 $61 $05
    ld bc, $0588                                  ; $433d: $01 $88 $05
    ld bc, $05b4                                  ; $4340: $01 $b4 $05
    ld bc, $05cf                                  ; $4343: $01 $cf $05
    ld bc, $05ed                                  ; $4346: $01 $ed $05
    ld bc, $06a6                                  ; $4349: $01 $a6 $06
    ld bc, $06bb                                  ; $434c: $01 $bb $06
    ld bc, $071c                                  ; $434f: $01 $1c $07
    ld bc, $072d                                  ; $4352: $01 $2d $07
    ld bc, $0744                                  ; $4355: $01 $44 $07
    ld bc, $0754                                  ; $4358: $01 $54 $07
    ld bc, $07a0                                  ; $435b: $01 $a0 $07
    ld bc, $07fd                                  ; $435e: $01 $fd $07
    ld bc, $0816                                  ; $4361: $01 $16 $08
    ld bc, $0826                                  ; $4364: $01 $26 $08
    ld bc, $083c                                  ; $4367: $01 $3c $08
    ld bc, $084f                                  ; $436a: $01 $4f $08
    ld bc, $0865                                  ; $436d: $01 $65 $08
    ld bc, $0875                                  ; $4370: $01 $75 $08
    ld bc, $0886                                  ; $4373: $01 $86 $08
    ld bc, $0894                                  ; $4376: $01 $94 $08
    ld bc, $08a1                                  ; $4379: $01 $a1 $08
    ld bc, $08aa                                  ; $437c: $01 $aa $08
    ld bc, $08b5                                  ; $437f: $01 $b5 $08
    ld bc, $08cb                                  ; $4382: $01 $cb $08
    ld bc, $08f8                                  ; $4385: $01 $f8 $08
    ld bc, $092b                                  ; $4388: $01 $2b $09
    ld bc, $0964                                  ; $438b: $01 $64 $09
    ld bc, $0973                                  ; $438e: $01 $73 $09
    ld bc, $0996                                  ; $4391: $01 $96 $09
    ld bc, $09c5                                  ; $4394: $01 $c5 $09
    ld bc, $09ed                                  ; $4397: $01 $ed $09
    ld bc, $09fe                                  ; $439a: $01 $fe $09
    ld bc, $0a0e                                  ; $439d: $01 $0e $0a
    ld bc, $0a1c                                  ; $43a0: $01 $1c $0a
    ld bc, $0a2f                                  ; $43a3: $01 $2f $0a
    ld bc, $0a3f                                  ; $43a6: $01 $3f $0a
    ld bc, $0a58                                  ; $43a9: $01 $58 $0a
    ld bc, $0a64                                  ; $43ac: $01 $64 $0a
    ld bc, $0a73                                  ; $43af: $01 $73 $0a
    ld bc, $0a87                                  ; $43b2: $01 $87 $0a
    ld bc, $0aaa                                  ; $43b5: $01 $aa $0a
    ld bc, $0ae7                                  ; $43b8: $01 $e7 $0a
    ld bc, $0b0c                                  ; $43bb: $01 $0c $0b
    ld bc, $0b0f                                  ; $43be: $01 $0f $0b
    ld bc, $0b30                                  ; $43c1: $01 $30 $0b
    ld bc, $0b48                                  ; $43c4: $01 $48 $0b
    ld bc, $0b63                                  ; $43c7: $01 $63 $0b
    ld bc, $0b6e                                  ; $43ca: $01 $6e $0b
    ld bc, $0b85                                  ; $43cd: $01 $85 $0b
    ld bc, $0bac                                  ; $43d0: $01 $ac $0b
    ld bc, $0c1f                                  ; $43d3: $01 $1f $0c
    ld bc, $0c36                                  ; $43d6: $01 $36 $0c
    ld bc, $0c42                                  ; $43d9: $01 $42 $0c
    ld bc, $0c5b                                  ; $43dc: $01 $5b $0c
    ld bc, $0c70                                  ; $43df: $01 $70 $0c
    ld bc, $0ca8                                  ; $43e2: $01 $a8 $0c
    ld bc, $0ccb                                  ; $43e5: $01 $cb $0c
    ld bc, $0ce2                                  ; $43e8: $01 $e2 $0c
    ld bc, $0d03                                  ; $43eb: $01 $03 $0d
    ld bc, $0d41                                  ; $43ee: $01 $41 $0d
    ld bc, $0d86                                  ; $43f1: $01 $86 $0d
    ld bc, $0db3                                  ; $43f4: $01 $b3 $0d
    ld bc, $0de9                                  ; $43f7: $01 $e9 $0d
    ld bc, $0e1d                                  ; $43fa: $01 $1d $0e
    ld bc, $0e66                                  ; $43fd: $01 $66 $0e
    ld bc, $0e9e                                  ; $4400: $01 $9e $0e
    ld bc, $0ecc                                  ; $4403: $01 $cc $0e
    ld bc, $0f0a                                  ; $4406: $01 $0a $0f
    ld bc, $0f43                                  ; $4409: $01 $43 $0f
    ld bc, $0f73                                  ; $440c: $01 $73 $0f
    ld bc, $0f9d                                  ; $440f: $01 $9d $0f
    ld bc, $0fc3                                  ; $4412: $01 $c3 $0f
    ld bc, $100c                                  ; $4415: $01 $0c $10
    ld bc, $1037                                  ; $4418: $01 $37 $10
    ld bc, $1077                                  ; $441b: $01 $77 $10
    ld bc, $10c0                                  ; $441e: $01 $c0 $10
    ld bc, $10eb                                  ; $4421: $01 $eb $10
    ld bc, $111d                                  ; $4424: $01 $1d $11
    ld bc, $1163                                  ; $4427: $01 $63 $11
    ld bc, $1182                                  ; $442a: $01 $82 $11
    ld bc, $11b2                                  ; $442d: $01 $b2 $11
    ld bc, $11dd                                  ; $4430: $01 $dd $11
    ld bc, $1209                                  ; $4433: $01 $09 $12
    ld bc, $1241                                  ; $4436: $01 $41 $12
    ld bc, $127a                                  ; $4439: $01 $7a $12
    ld bc, $12c0                                  ; $443c: $01 $c0 $12
    ld bc, $1318                                  ; $443f: $01 $18 $13
    ld bc, $1365                                  ; $4442: $01 $65 $13
    ld bc, $1393                                  ; $4445: $01 $93 $13
    ld bc, $13c5                                  ; $4448: $01 $c5 $13
    ld bc, $13fa                                  ; $444b: $01 $fa $13
    ld bc, $1433                                  ; $444e: $01 $33 $14
    ld bc, $1483                                  ; $4451: $01 $83 $14
    ld bc, $14d5                                  ; $4454: $01 $d5 $14
    ld bc, $1503                                  ; $4457: $01 $03 $15
    ld bc, $1537                                  ; $445a: $01 $37 $15
    ld bc, $1576                                  ; $445d: $01 $76 $15
    ld bc, $15a7                                  ; $4460: $01 $a7 $15
    ld bc, $15d4                                  ; $4463: $01 $d4 $15
    ld bc, $1607                                  ; $4466: $01 $07 $16
    ld bc, $1608                                  ; $4469: $01 $08 $16
    ld bc, $1618                                  ; $446c: $01 $18 $16
    ld bc, $163a                                  ; $446f: $01 $3a $16
    ld bc, $164f                                  ; $4472: $01 $4f $16
    ld bc, $166e                                  ; $4475: $01 $6e $16
    ld bc, $1694                                  ; $4478: $01 $94 $16
    ld bc, $169e                                  ; $447b: $01 $9e $16
    ld bc, $16af                                  ; $447e: $01 $af $16
    ld bc, $16b6                                  ; $4481: $01 $b6 $16
    ld bc, $16e3                                  ; $4484: $01 $e3 $16
    ld bc, $16ff                                  ; $4487: $01 $ff $16
    ld bc, $171d                                  ; $448a: $01 $1d $17
    ld bc, $174b                                  ; $448d: $01 $4b $17
    ld bc, $1763                                  ; $4490: $01 $63 $17
    ld bc, $176c                                  ; $4493: $01 $6c $17
    ld bc, $17bb                                  ; $4496: $01 $bb $17
    ld bc, $17de                                  ; $4499: $01 $de $17
    ld bc, $1807                                  ; $449c: $01 $07 $18
    ld bc, $1814                                  ; $449f: $01 $14 $18
    ld bc, $1830                                  ; $44a2: $01 $30 $18
    ld bc, $1844                                  ; $44a5: $01 $44 $18
    ld bc, $185c                                  ; $44a8: $01 $5c $18
    ld bc, $1865                                  ; $44ab: $01 $65 $18
    ld bc, $1882                                  ; $44ae: $01 $82 $18
    ld bc, $1896                                  ; $44b1: $01 $96 $18
    ld bc, $18b7                                  ; $44b4: $01 $b7 $18
    ld bc, $18c6                                  ; $44b7: $01 $c6 $18
    ld bc, $18dc                                  ; $44ba: $01 $dc $18
    ld bc, $18f2                                  ; $44bd: $01 $f2 $18
    ld bc, $1927                                  ; $44c0: $01 $27 $19
    ld bc, $193a                                  ; $44c3: $01 $3a $19
    ld bc, $194b                                  ; $44c6: $01 $4b $19
    ld bc, $1961                                  ; $44c9: $01 $61 $19
    ld bc, $1980                                  ; $44cc: $01 $80 $19
    ld bc, $19a7                                  ; $44cf: $01 $a7 $19
    ld bc, $19af                                  ; $44d2: $01 $af $19
    ld bc, $19cc                                  ; $44d5: $01 $cc $19
    ld bc, $19d7                                  ; $44d8: $01 $d7 $19
    ld bc, $1a0e                                  ; $44db: $01 $0e $1a
    ld bc, $1a2c                                  ; $44de: $01 $2c $1a
    ld bc, $1a39                                  ; $44e1: $01 $39 $1a
    ld bc, $1a53                                  ; $44e4: $01 $53 $1a
    ld bc, $1a63                                  ; $44e7: $01 $63 $1a
    ld bc, $1a9b                                  ; $44ea: $01 $9b $1a
    ld bc, $1aab                                  ; $44ed: $01 $ab $1a
    ld bc, $1ac2                                  ; $44f0: $01 $c2 $1a
    ld bc, $1ad7                                  ; $44f3: $01 $d7 $1a
    ld bc, $1ae7                                  ; $44f6: $01 $e7 $1a
    ld bc, $1b33                                  ; $44f9: $01 $33 $1b
    ld bc, $1b3f                                  ; $44fc: $01 $3f $1b
    ld bc, $1b50                                  ; $44ff: $01 $50 $1b
    ld bc, $1b5a                                  ; $4502: $01 $5a $1b
    ld bc, $1b6a                                  ; $4505: $01 $6a $1b
    ld bc, $1b8d                                  ; $4508: $01 $8d $1b
    ld bc, $1b96                                  ; $450b: $01 $96 $1b
    ld bc, $1b9d                                  ; $450e: $01 $9d $1b
    ld bc, $1ba9                                  ; $4511: $01 $a9 $1b
    ld bc, $1bc7                                  ; $4514: $01 $c7 $1b
    ld bc, $1bcc                                  ; $4517: $01 $cc $1b
    ld bc, $1bf0                                  ; $451a: $01 $f0 $1b
    ld bc, $1c10                                  ; $451d: $01 $10 $1c
    ld bc, $1c1b                                  ; $4520: $01 $1b $1c
    ld bc, $1c3a                                  ; $4523: $01 $3a $1c
    ld bc, $1c4f                                  ; $4526: $01 $4f $1c
    ld bc, $1c83                                  ; $4529: $01 $83 $1c
    ld bc, $1c9a                                  ; $452c: $01 $9a $1c
    ld bc, $1cd1                                  ; $452f: $01 $d1 $1c
    ld bc, $1d02                                  ; $4532: $01 $02 $1d
    ld bc, $1d38                                  ; $4535: $01 $38 $1d
    ld bc, $1d7c                                  ; $4538: $01 $7c $1d
    ld bc, $1daa                                  ; $453b: $01 $aa $1d
    ld bc, $1dd3                                  ; $453e: $01 $d3 $1d
    ld bc, $1e26                                  ; $4541: $01 $26 $1e
    ld bc, $1e50                                  ; $4544: $01 $50 $1e
    ld bc, $1e9f                                  ; $4547: $01 $9f $1e
    ld bc, $1eb1                                  ; $454a: $01 $b1 $1e
    ld bc, $1ed6                                  ; $454d: $01 $d6 $1e
    ld bc, $1fa4                                  ; $4550: $01 $a4 $1f
    ld bc, $1fcb                                  ; $4553: $01 $cb $1f
    ld bc, $1fe3                                  ; $4556: $01 $e3 $1f
    ld bc, $2002                                  ; $4559: $01 $02 $20
    ld bc, $2027                                  ; $455c: $01 $27 $20
    ld bc, $203b                                  ; $455f: $01 $3b $20
    ld bc, $2046                                  ; $4562: $01 $46 $20
    ld bc, $207e                                  ; $4565: $01 $7e $20
    ld bc, $2083                                  ; $4568: $01 $83 $20
    ld bc, $2094                                  ; $456b: $01 $94 $20
    ld bc, $20d7                                  ; $456e: $01 $d7 $20
    ld bc, $2107                                  ; $4571: $01 $07 $21
    ld bc, $2129                                  ; $4574: $01 $29 $21
    ld bc, $2136                                  ; $4577: $01 $36 $21
    ld bc, $215f                                  ; $457a: $01 $5f $21
    ld bc, $2186                                  ; $457d: $01 $86 $21
    ld bc, $219f                                  ; $4580: $01 $9f $21
    ld bc, $21c5                                  ; $4583: $01 $c5 $21
    ld bc, $21de                                  ; $4586: $01 $de $21
    ld bc, $21f4                                  ; $4589: $01 $f4 $21
    ld bc, $2209                                  ; $458c: $01 $09 $22
    ld bc, $222d                                  ; $458f: $01 $2d $22
    ld bc, $223f                                  ; $4592: $01 $3f $22
    ld bc, $2272                                  ; $4595: $01 $72 $22
    ld bc, $229c                                  ; $4598: $01 $9c $22
    ld bc, $22ab                                  ; $459b: $01 $ab $22
    ld bc, $22e2                                  ; $459e: $01 $e2 $22

Call_05f_45a1:
    ld bc, $22fd                                  ; $45a1: $01 $fd $22
    ld bc, $2307                                  ; $45a4: $01 $07 $23
    ld bc, $234e                                  ; $45a7: $01 $4e $23
    ld bc, $2353                                  ; $45aa: $01 $53 $23
    ld bc, $23f1                                  ; $45ad: $01 $f1 $23
    ld bc, $23fe                                  ; $45b0: $01 $fe $23
    ld bc, $240e                                  ; $45b3: $01 $0e $24
    ld bc, $242e                                  ; $45b6: $01 $2e $24
    ld bc, $244c                                  ; $45b9: $01 $4c $24
    ld bc, $2481                                  ; $45bc: $01 $81 $24
    ld bc, $24c5                                  ; $45bf: $01 $c5 $24
    ld bc, $24f7                                  ; $45c2: $01 $f7 $24
    ld bc, $2512                                  ; $45c5: $01 $12 $25
    ld bc, $2552                                  ; $45c8: $01 $52 $25
    ld bc, $25d1                                  ; $45cb: $01 $d1 $25
    ld bc, $2603                                  ; $45ce: $01 $03 $26
    ld bc, $262b                                  ; $45d1: $01 $2b $26
    ld bc, $263e                                  ; $45d4: $01 $3e $26
    ld bc, $2655                                  ; $45d7: $01 $55 $26
    ld bc, $266c                                  ; $45da: $01 $6c $26
    ld bc, $2693                                  ; $45dd: $01 $93 $26
    ld bc, $26a7                                  ; $45e0: $01 $a7 $26
    ld bc, $26cb                                  ; $45e3: $01 $cb $26
    ld bc, $2702                                  ; $45e6: $01 $02 $27
    ld bc, $2731                                  ; $45e9: $01 $31 $27
    ld bc, $274d                                  ; $45ec: $01 $4d $27
    ld bc, $274e                                  ; $45ef: $01 $4e $27
    ld bc, $2777                                  ; $45f2: $01 $77 $27
    ld bc, $27dc                                  ; $45f5: $01 $dc $27
    ld bc, $2805                                  ; $45f8: $01 $05 $28
    ld bc, $2831                                  ; $45fb: $01 $31 $28
    ld bc, $2859                                  ; $45fe: $01 $59 $28
    ld bc, $288e                                  ; $4601: $01 $8e $28
    ld bc, $28a6                                  ; $4604: $01 $a6 $28
    ld bc, $28bc                                  ; $4607: $01 $bc $28
    ld bc, $28d9                                  ; $460a: $01 $d9 $28
    ld bc, $290c                                  ; $460d: $01 $0c $29
    ld bc, $291f                                  ; $4610: $01 $1f $29
    ld bc, $2939                                  ; $4613: $01 $39 $29
    ld bc, $2947                                  ; $4616: $01 $47 $29
    ld bc, $2977                                  ; $4619: $01 $77 $29
    ld bc, $29b6                                  ; $461c: $01 $b6 $29
    ld bc, $29d6                                  ; $461f: $01 $d6 $29
    ld bc, $29f4                                  ; $4622: $01 $f4 $29
    ld bc, $2a18                                  ; $4625: $01 $18 $2a
    ld bc, $2a38                                  ; $4628: $01 $38 $2a
    ld bc, $2a87                                  ; $462b: $01 $87 $2a
    ld bc, $2aac                                  ; $462e: $01 $ac $2a
    ld bc, $2ae8                                  ; $4631: $01 $e8 $2a
    ld bc, $2b0f                                  ; $4634: $01 $0f $2b
    ld bc, $2b36                                  ; $4637: $01 $36 $2b
    ld bc, $2b5f                                  ; $463a: $01 $5f $2b
    ld bc, $2b72                                  ; $463d: $01 $72 $2b
    ld bc, $2ba3                                  ; $4640: $01 $a3 $2b
    ld bc, $2bbe                                  ; $4643: $01 $be $2b
    ld bc, $2bf0                                  ; $4646: $01 $f0 $2b
    ld bc, $2c04                                  ; $4649: $01 $04 $2c
    ld bc, $2c34                                  ; $464c: $01 $34 $2c
    ld bc, $2c5a                                  ; $464f: $01 $5a $2c
    ld bc, $2c6d                                  ; $4652: $01 $6d $2c
    ld bc, $2c91                                  ; $4655: $01 $91 $2c
    ld bc, $2cb7                                  ; $4658: $01 $b7 $2c
    ld bc, $2cda                                  ; $465b: $01 $da $2c
    ld bc, $2d08                                  ; $465e: $01 $08 $2d
    ld bc, $2d39                                  ; $4661: $01 $39 $2d
    ld bc, $2d60                                  ; $4664: $01 $60 $2d
    ld bc, $2d84                                  ; $4667: $01 $84 $2d
    ld bc, $2dc9                                  ; $466a: $01 $c9 $2d
    ld bc, $2e1b                                  ; $466d: $01 $1b $2e
    ld bc, $2e52                                  ; $4670: $01 $52 $2e
    ld bc, $2e77                                  ; $4673: $01 $77 $2e
    ld bc, $2e97                                  ; $4676: $01 $97 $2e
    ld bc, $2eb1                                  ; $4679: $01 $b1 $2e
    ld bc, $2ed5                                  ; $467c: $01 $d5 $2e
    ld bc, $2f0d                                  ; $467f: $01 $0d $2f
    ld bc, $2f2c                                  ; $4682: $01 $2c $2f
    ld bc, $2f66                                  ; $4685: $01 $66 $2f
    ld bc, $2f87                                  ; $4688: $01 $87 $2f
    ld bc, $2fa8                                  ; $468b: $01 $a8 $2f
    ld bc, $2fda                                  ; $468e: $01 $da $2f
    ld bc, $3001                                  ; $4691: $01 $01 $30
    ld bc, $300a                                  ; $4694: $01 $0a $30
    ld bc, $3033                                  ; $4697: $01 $33 $30
    ld bc, $3043                                  ; $469a: $01 $43 $30
    ld bc, $3062                                  ; $469d: $01 $62 $30
    ld bc, $3075                                  ; $46a0: $01 $75 $30
    ld bc, $3081                                  ; $46a3: $01 $81 $30
    ld bc, $3090                                  ; $46a6: $01 $90 $30
    ld bc, $30a3                                  ; $46a9: $01 $a3 $30
    ld bc, $30cb                                  ; $46ac: $01 $cb $30
    ld bc, $3115                                  ; $46af: $01 $15 $31
    ld bc, $311a                                  ; $46b2: $01 $1a $31
    ld bc, $316d                                  ; $46b5: $01 $6d $31
    ld bc, $317f                                  ; $46b8: $01 $7f $31
    ld bc, $31d6                                  ; $46bb: $01 $d6 $31
    ld bc, $31f2                                  ; $46be: $01 $f2 $31
    ld bc, $320d                                  ; $46c1: $01 $0d $32
    ld bc, $3232                                  ; $46c4: $01 $32 $32
    ld bc, $3282                                  ; $46c7: $01 $82 $32
    ld bc, $32b4                                  ; $46ca: $01 $b4 $32
    ld bc, $32c2                                  ; $46cd: $01 $c2 $32
    ld bc, $32d3                                  ; $46d0: $01 $d3 $32
    ld bc, $32ec                                  ; $46d3: $01 $ec $32
    ld bc, $3321                                  ; $46d6: $01 $21 $33
    ld bc, $3342                                  ; $46d9: $01 $42 $33
    ld bc, $3359                                  ; $46dc: $01 $59 $33
    ld bc, $3369                                  ; $46df: $01 $69 $33
    ld bc, $33ae                                  ; $46e2: $01 $ae $33
    ld bc, $33eb                                  ; $46e5: $01 $eb $33
    ld bc, $3401                                  ; $46e8: $01 $01 $34
    ld bc, $343e                                  ; $46eb: $01 $3e $34
    ld bc, $3474                                  ; $46ee: $01 $74 $34
    ld bc, $3490                                  ; $46f1: $01 $90 $34
    ld bc, $34b8                                  ; $46f4: $01 $b8 $34
    ld bc, $34c8                                  ; $46f7: $01 $c8 $34
    ld bc, $34e7                                  ; $46fa: $01 $e7 $34
    ld bc, $34ff                                  ; $46fd: $01 $ff $34
    ld bc, $3514                                  ; $4700: $01 $14 $35
    ld bc, $352d                                  ; $4703: $01 $2d $35
    ld bc, $3558                                  ; $4706: $01 $58 $35
    ld bc, $35b2                                  ; $4709: $01 $b2 $35
    ld bc, $35c2                                  ; $470c: $01 $c2 $35
    ld bc, $3631                                  ; $470f: $01 $31 $36
    ld bc, $366b                                  ; $4712: $01 $6b $36
    ld bc, $368c                                  ; $4715: $01 $8c $36
    ld bc, $36bb                                  ; $4718: $01 $bb $36
    ld bc, $36f8                                  ; $471b: $01 $f8 $36
    ld bc, $374a                                  ; $471e: $01 $4a $37
    ld bc, $3780                                  ; $4721: $01 $80 $37
    ld bc, $378f                                  ; $4724: $01 $8f $37
    ld bc, $379e                                  ; $4727: $01 $9e $37
    ld bc, $37bc                                  ; $472a: $01 $bc $37
    ld bc, $37d2                                  ; $472d: $01 $d2 $37
    ld bc, $37da                                  ; $4730: $01 $da $37
    ld bc, $37e8                                  ; $4733: $01 $e8 $37
    ld bc, $37fb                                  ; $4736: $01 $fb $37
    ld bc, $380e                                  ; $4739: $01 $0e $38
    ld bc, $3838                                  ; $473c: $01 $38 $38
    ld bc, $3850                                  ; $473f: $01 $50 $38
    ld bc, $3861                                  ; $4742: $01 $61 $38
    ld bc, $387f                                  ; $4745: $01 $7f $38
    ld bc, $38f7                                  ; $4748: $01 $f7 $38
    ld bc, $3907                                  ; $474b: $01 $07 $39
    ld bc, $3922                                  ; $474e: $01 $22 $39
    ld bc, $3953                                  ; $4751: $01 $53 $39
    ld bc, $396c                                  ; $4754: $01 $6c $39
    ld bc, $39a4                                  ; $4757: $01 $a4 $39
    ld bc, $39dc                                  ; $475a: $01 $dc $39
    ld bc, $39fc                                  ; $475d: $01 $fc $39
    ld bc, $3a5d                                  ; $4760: $01 $5d $3a
    ld bc, $3a64                                  ; $4763: $01 $64 $3a
    ld bc, $3a82                                  ; $4766: $01 $82 $3a
    ld bc, $3a8d                                  ; $4769: $01 $8d $3a
    ld bc, $3aaa                                  ; $476c: $01 $aa $3a
    ld bc, $3ad9                                  ; $476f: $01 $d9 $3a
    ld bc, $3b0f                                  ; $4772: $01 $0f $3b
    ld bc, $3b54                                  ; $4775: $01 $54 $3b
    ld bc, $3b74                                  ; $4778: $01 $74 $3b
    ld bc, $3bb0                                  ; $477b: $01 $b0 $3b
    ld bc, $3bc0                                  ; $477e: $01 $c0 $3b
    ld bc, $3bcf                                  ; $4781: $01 $cf $3b
    ld bc, $3be0                                  ; $4784: $01 $e0 $3b
    ld bc, $3bf2                                  ; $4787: $01 $f2 $3b
    ld bc, $3c22                                  ; $478a: $01 $22 $3c
    ld bc, $3c7a                                  ; $478d: $01 $7a $3c
    ld bc, $3ca9                                  ; $4790: $01 $a9 $3c
    ld bc, $3caa                                  ; $4793: $01 $aa $3c
    ld bc, $3cdb                                  ; $4796: $01 $db $3c
    ld bc, $3d13                                  ; $4799: $01 $13 $3d
    ld bc, $3d39                                  ; $479c: $01 $39 $3d
    ld bc, $3d56                                  ; $479f: $01 $56 $3d
    ld bc, $3d7a                                  ; $47a2: $01 $7a $3d
    ld bc, $3d96                                  ; $47a5: $01 $96 $3d
    ld bc, $3d9f                                  ; $47a8: $01 $9f $3d
    ld bc, $3db1                                  ; $47ab: $01 $b1 $3d
    ld bc, $3dc5                                  ; $47ae: $01 $c5 $3d
    ld bc, $3de5                                  ; $47b1: $01 $e5 $3d
    ld bc, $3e01                                  ; $47b4: $01 $01 $3e
    ld bc, $3e18                                  ; $47b7: $01 $18 $3e
    ld bc, $3e2c                                  ; $47ba: $01 $2c $3e
    ld bc, $3e60                                  ; $47bd: $01 $60 $3e
    ld bc, $3e94                                  ; $47c0: $01 $94 $3e
    ld bc, $3ea7                                  ; $47c3: $01 $a7 $3e
    ld bc, $3ece                                  ; $47c6: $01 $ce $3e
    ld bc, $3ee2                                  ; $47c9: $01 $e2 $3e
    ld bc, $3ef7                                  ; $47cc: $01 $f7 $3e
    ld bc, $3f11                                  ; $47cf: $01 $11 $3f
    ld bc, $3f34                                  ; $47d2: $01 $34 $3f
    ld bc, $3f48                                  ; $47d5: $01 $48 $3f
    ld bc, $3f61                                  ; $47d8: $01 $61 $3f
    ld bc, $3f89                                  ; $47db: $01 $89 $3f
    ld bc, $3fac                                  ; $47de: $01 $ac $3f
    ld [bc], a                                    ; $47e1: $02
    ld bc, $0200                                  ; $47e2: $01 $00 $02
    add hl, sp                                    ; $47e5: $39
    nop                                           ; $47e6: $00
    ld [bc], a                                    ; $47e7: $02
    ld h, h                                       ; $47e8: $64
    nop                                           ; $47e9: $00
    ld [bc], a                                    ; $47ea: $02
    sbc [hl]                                      ; $47eb: $9e
    nop                                           ; $47ec: $00
    ld [bc], a                                    ; $47ed: $02
    or l                                          ; $47ee: $b5
    nop                                           ; $47ef: $00
    ld [bc], a                                    ; $47f0: $02
    jp c, Jump_000_0200                           ; $47f1: $da $00 $02

    push af                                       ; $47f4: $f5
    nop                                           ; $47f5: $00
    ld [bc], a                                    ; $47f6: $02
    ld b, $01                                     ; $47f7: $06 $01
    ld [bc], a                                    ; $47f9: $02
    ld sp, $0201                                  ; $47fa: $31 $01 $02
    ld b, h                                       ; $47fd: $44
    ld bc, $6402                                  ; $47fe: $01 $02 $64
    ld bc, $6802                                  ; $4801: $01 $02 $68
    ld bc, $6c02                                  ; $4804: $01 $02 $6c
    ld bc, $7002                                  ; $4807: $01 $02 $70
    ld bc, $7d02                                  ; $480a: $01 $02 $7d
    ld bc, $8502                                  ; $480d: $01 $02 $85
    ld bc, $d202                                  ; $4810: $01 $02 $d2
    ld bc, $f502                                  ; $4813: $01 $02 $f5
    ld bc, $0102                                  ; $4816: $01 $02 $01
    ld [bc], a                                    ; $4819: $02
    ld [bc], a                                    ; $481a: $02
    add hl, bc                                    ; $481b: $09
    ld [bc], a                                    ; $481c: $02
    ld [bc], a                                    ; $481d: $02
    jr nc, jr_05f_4822                            ; $481e: $30 $02

    ld [bc], a                                    ; $4820: $02
    ld c, e                                       ; $4821: $4b

jr_05f_4822:
    ld [bc], a                                    ; $4822: $02
    ld [bc], a                                    ; $4823: $02
    ld e, [hl]                                    ; $4824: $5e
    ld [bc], a                                    ; $4825: $02
    ld [bc], a                                    ; $4826: $02
    ld l, b                                       ; $4827: $68
    ld [bc], a                                    ; $4828: $02
    ld [bc], a                                    ; $4829: $02
    add l                                         ; $482a: $85
    ld [bc], a                                    ; $482b: $02
    ld [bc], a                                    ; $482c: $02
    sub [hl]                                      ; $482d: $96
    ld [bc], a                                    ; $482e: $02
    ld [bc], a                                    ; $482f: $02
    or h                                          ; $4830: $b4
    ld [bc], a                                    ; $4831: $02
    ld [bc], a                                    ; $4832: $02
    rst $08                                       ; $4833: $cf
    ld [bc], a                                    ; $4834: $02
    ld [bc], a                                    ; $4835: $02
    ldh [rSC], a                                  ; $4836: $e0 $02
    ld [bc], a                                    ; $4838: $02
    dec b                                         ; $4839: $05
    inc bc                                        ; $483a: $03
    ld [bc], a                                    ; $483b: $02
    dec c                                         ; $483c: $0d
    inc bc                                        ; $483d: $03
    ld [bc], a                                    ; $483e: $02
    ld b, c                                       ; $483f: $41
    inc bc                                        ; $4840: $03
    ld [bc], a                                    ; $4841: $02
    ld d, c                                       ; $4842: $51
    inc bc                                        ; $4843: $03
    ld [bc], a                                    ; $4844: $02
    ld [hl], d                                    ; $4845: $72
    inc bc                                        ; $4846: $03
    ld [bc], a                                    ; $4847: $02
    add d                                         ; $4848: $82
    inc bc                                        ; $4849: $03
    ld [bc], a                                    ; $484a: $02
    sub b                                         ; $484b: $90
    inc bc                                        ; $484c: $03
    ld [bc], a                                    ; $484d: $02
    ld a, [c]                                     ; $484e: $f2
    inc bc                                        ; $484f: $03
    ld [bc], a                                    ; $4850: $02
    rst $38                                       ; $4851: $ff
    inc bc                                        ; $4852: $03
    ld [bc], a                                    ; $4853: $02
    inc b                                         ; $4854: $04
    inc b                                         ; $4855: $04
    ld [bc], a                                    ; $4856: $02
    ld de, $0204                                  ; $4857: $11 $04 $02
    ld d, a                                       ; $485a: $57
    inc b                                         ; $485b: $04
    ld [bc], a                                    ; $485c: $02
    db $10                                        ; $485d: $10
    dec b                                         ; $485e: $05
    ld [bc], a                                    ; $485f: $02
    ld a, $05                                     ; $4860: $3e $05
    ld [bc], a                                    ; $4862: $02
    ld d, e                                       ; $4863: $53
    dec b                                         ; $4864: $05
    ld [bc], a                                    ; $4865: $02
    ld l, l                                       ; $4866: $6d
    dec b                                         ; $4867: $05
    ld [bc], a                                    ; $4868: $02
    ld [hl], l                                    ; $4869: $75
    dec b                                         ; $486a: $05
    ld [bc], a                                    ; $486b: $02
    add e                                         ; $486c: $83
    dec b                                         ; $486d: $05
    ld [bc], a                                    ; $486e: $02
    sub l                                         ; $486f: $95
    dec b                                         ; $4870: $05
    ld [bc], a                                    ; $4871: $02
    xor c                                         ; $4872: $a9
    dec b                                         ; $4873: $05
    ld [bc], a                                    ; $4874: $02
    pop bc                                        ; $4875: $c1
    dec b                                         ; $4876: $05
    ld [bc], a                                    ; $4877: $02
    call c, $0205                                 ; $4878: $dc $05 $02
    inc d                                         ; $487b: $14
    ld b, $02                                     ; $487c: $06 $02
    ld h, l                                       ; $487e: $65
    ld b, $02                                     ; $487f: $06 $02
    sub b                                         ; $4881: $90
    ld b, $02                                     ; $4882: $06 $02
    xor $06                                       ; $4884: $ee $06
    ld [bc], a                                    ; $4886: $02
    db $f4                                        ; $4887: $f4
    ld b, $02                                     ; $4888: $06 $02
    ld a, [hl-]                                   ; $488a: $3a
    rlca                                          ; $488b: $07
    ld [bc], a                                    ; $488c: $02
    ld c, l                                       ; $488d: $4d
    rlca                                          ; $488e: $07
    ld [bc], a                                    ; $488f: $02
    ld h, d                                       ; $4890: $62
    rlca                                          ; $4891: $07
    ld [bc], a                                    ; $4892: $02
    sbc h                                         ; $4893: $9c
    rlca                                          ; $4894: $07
    ld [bc], a                                    ; $4895: $02
    cp b                                          ; $4896: $b8
    rlca                                          ; $4897: $07
    ld [bc], a                                    ; $4898: $02
    call z, Call_000_0207                         ; $4899: $cc $07 $02
    push hl                                       ; $489c: $e5
    rlca                                          ; $489d: $07
    ld [bc], a                                    ; $489e: $02
    di                                            ; $489f: $f3
    rlca                                          ; $48a0: $07
    ld [bc], a                                    ; $48a1: $02
    ld [bc], a                                    ; $48a2: $02
    ld [$1602], sp                                ; $48a3: $08 $02 $16
    ld [$2102], sp                                ; $48a6: $08 $02 $21
    ld [$4b02], sp                                ; $48a9: $08 $02 $4b
    ld [$6402], sp                                ; $48ac: $08 $02 $64
    ld [$7902], sp                                ; $48af: $08 $02 $79
    ld [$9002], sp                                ; $48b2: $08 $02 $90
    ld [$a402], sp                                ; $48b5: $08 $02 $a4
    ld [$b302], sp                                ; $48b8: $08 $02 $b3
    ld [$c302], sp                                ; $48bb: $08 $02 $c3
    ld [$e202], sp                                ; $48be: $08 $02 $e2
    ld [$fb02], sp                                ; $48c1: $08 $02 $fb
    ld [$5f02], sp                                ; $48c4: $08 $02 $5f
    add hl, bc                                    ; $48c7: $09
    ld [bc], a                                    ; $48c8: $02
    ret nz                                        ; $48c9: $c0

    add hl, bc                                    ; $48ca: $09
    ld [bc], a                                    ; $48cb: $02
    call Call_000_0209                            ; $48cc: $cd $09 $02
    ld a, [bc]                                    ; $48cf: $0a
    ld a, [bc]                                    ; $48d0: $0a
    ld [bc], a                                    ; $48d1: $02
    jr jr_05f_48de                                ; $48d2: $18 $0a

    ld [bc], a                                    ; $48d4: $02
    ld h, a                                       ; $48d5: $67
    ld a, [bc]                                    ; $48d6: $0a
    ld [bc], a                                    ; $48d7: $02
    adc a                                         ; $48d8: $8f
    ld a, [bc]                                    ; $48d9: $0a
    ld [bc], a                                    ; $48da: $02
    or h                                          ; $48db: $b4
    ld a, [bc]                                    ; $48dc: $0a
    ld [bc], a                                    ; $48dd: $02

jr_05f_48de:
    jp hl                                         ; $48de: $e9


    ld a, [bc]                                    ; $48df: $0a
    ld [bc], a                                    ; $48e0: $02
    rlca                                          ; $48e1: $07
    dec bc                                        ; $48e2: $0b
    ld [bc], a                                    ; $48e3: $02
    ld [hl+], a                                   ; $48e4: $22
    dec bc                                        ; $48e5: $0b
    ld [bc], a                                    ; $48e6: $02
    ld l, h                                       ; $48e7: $6c
    dec bc                                        ; $48e8: $0b
    ld [bc], a                                    ; $48e9: $02
    ld [hl], c                                    ; $48ea: $71
    dec bc                                        ; $48eb: $0b
    ld [bc], a                                    ; $48ec: $02
    ld a, [hl]                                    ; $48ed: $7e
    dec bc                                        ; $48ee: $0b
    ld [bc], a                                    ; $48ef: $02
    and l                                         ; $48f0: $a5
    dec bc                                        ; $48f1: $0b
    ld [bc], a                                    ; $48f2: $02
    or a                                          ; $48f3: $b7
    dec bc                                        ; $48f4: $0b
    ld [bc], a                                    ; $48f5: $02
    db $db                                        ; $48f6: $db
    dec bc                                        ; $48f7: $0b
    ld [bc], a                                    ; $48f8: $02
    ld [$020c], sp                                ; $48f9: $08 $0c $02
    dec h                                         ; $48fc: $25
    inc c                                         ; $48fd: $0c
    ld [bc], a                                    ; $48fe: $02
    cpl                                           ; $48ff: $2f
    inc c                                         ; $4900: $0c
    ld [bc], a                                    ; $4901: $02
    ld a, [hl-]                                   ; $4902: $3a
    inc c                                         ; $4903: $0c
    ld [bc], a                                    ; $4904: $02
    ld d, l                                       ; $4905: $55
    inc c                                         ; $4906: $0c
    ld [bc], a                                    ; $4907: $02
    ld l, d                                       ; $4908: $6a
    inc c                                         ; $4909: $0c
    ld [bc], a                                    ; $490a: $02
    ld a, b                                       ; $490b: $78
    inc c                                         ; $490c: $0c
    ld [bc], a                                    ; $490d: $02
    adc b                                         ; $490e: $88
    inc c                                         ; $490f: $0c
    ld [bc], a                                    ; $4910: $02
    rrc h                                         ; $4911: $cb $0c
    ld [bc], a                                    ; $4913: $02
    add hl, sp                                    ; $4914: $39
    dec c                                         ; $4915: $0d
    ld [bc], a                                    ; $4916: $02
    ld c, b                                       ; $4917: $48
    dec c                                         ; $4918: $0d
    ld [bc], a                                    ; $4919: $02
    or c                                          ; $491a: $b1
    dec c                                         ; $491b: $0d
    ld [bc], a                                    ; $491c: $02
    pop hl                                        ; $491d: $e1
    dec c                                         ; $491e: $0d
    ld [bc], a                                    ; $491f: $02
    dec hl                                        ; $4920: $2b
    ld c, $02                                     ; $4921: $0e $02
    dec a                                         ; $4923: $3d
    ld c, $02                                     ; $4924: $0e $02
    xor e                                         ; $4926: $ab
    ld c, $02                                     ; $4927: $0e $02
    or l                                          ; $4929: $b5
    ld c, $02                                     ; $492a: $0e $02
    call c, $020e                                 ; $492c: $dc $0e $02
    ld hl, sp+$0e                                 ; $492f: $f8 $0e
    ld [bc], a                                    ; $4931: $02
    inc l                                         ; $4932: $2c
    rrca                                          ; $4933: $0f
    ld [bc], a                                    ; $4934: $02
    sub a                                         ; $4935: $97
    rrca                                          ; $4936: $0f
    ld [bc], a                                    ; $4937: $02
    cp [hl]                                       ; $4938: $be
    rrca                                          ; $4939: $0f
    ld [bc], a                                    ; $493a: $02
    add sp, $0f                                   ; $493b: $e8 $0f
    ld [bc], a                                    ; $493d: $02
    rla                                           ; $493e: $17
    db $10                                        ; $493f: $10
    ld [bc], a                                    ; $4940: $02
    dec sp                                        ; $4941: $3b
    db $10                                        ; $4942: $10
    ld [bc], a                                    ; $4943: $02
    ld c, c                                       ; $4944: $49
    db $10                                        ; $4945: $10
    ld [bc], a                                    ; $4946: $02
    ld e, b                                       ; $4947: $58
    db $10                                        ; $4948: $10
    ld [bc], a                                    ; $4949: $02
    add b                                         ; $494a: $80
    db $10                                        ; $494b: $10
    ld [bc], a                                    ; $494c: $02
    sub [hl]                                      ; $494d: $96
    db $10                                        ; $494e: $10
    ld [bc], a                                    ; $494f: $02
    or [hl]                                       ; $4950: $b6
    db $10                                        ; $4951: $10
    ld [bc], a                                    ; $4952: $02
    call nc, Call_000_0210                        ; $4953: $d4 $10 $02
    ld b, a                                       ; $4956: $47
    ld de, $4f02                                  ; $4957: $11 $02 $4f
    ld de, $8802                                  ; $495a: $11 $02 $88
    ld de, $9b02                                  ; $495d: $11 $02 $9b
    ld de, $c102                                  ; $4960: $11 $02 $c1
    ld de, $f002                                  ; $4963: $11 $02 $f0
    ld de, $f402                                  ; $4966: $11 $02 $f4
    ld de, $0402                                  ; $4969: $11 $02 $04
    ld [de], a                                    ; $496c: $12
    ld [bc], a                                    ; $496d: $02
    ld b, d                                       ; $496e: $42
    ld [de], a                                    ; $496f: $12
    ld [bc], a                                    ; $4970: $02
    ld d, e                                       ; $4971: $53
    ld [de], a                                    ; $4972: $12
    ld [bc], a                                    ; $4973: $02
    ld a, e                                       ; $4974: $7b
    ld [de], a                                    ; $4975: $12
    ld [bc], a                                    ; $4976: $02
    sbc a                                         ; $4977: $9f
    ld [de], a                                    ; $4978: $12
    ld [bc], a                                    ; $4979: $02
    ei                                            ; $497a: $fb
    ld [de], a                                    ; $497b: $12
    ld [bc], a                                    ; $497c: $02
    jr nz, jr_05f_4992                            ; $497d: $20 $13

    ld [bc], a                                    ; $497f: $02
    inc sp                                        ; $4980: $33
    inc de                                        ; $4981: $13
    ld [bc], a                                    ; $4982: $02
    ld c, a                                       ; $4983: $4f
    inc de                                        ; $4984: $13
    ld [bc], a                                    ; $4985: $02
    ld l, h                                       ; $4986: $6c
    inc de                                        ; $4987: $13
    ld [bc], a                                    ; $4988: $02
    add l                                         ; $4989: $85
    inc de                                        ; $498a: $13
    ld [bc], a                                    ; $498b: $02
    and b                                         ; $498c: $a0
    inc de                                        ; $498d: $13
    ld [bc], a                                    ; $498e: $02
    xor d                                         ; $498f: $aa
    inc de                                        ; $4990: $13
    ld [bc], a                                    ; $4991: $02

jr_05f_4992:
    xor [hl]                                      ; $4992: $ae
    inc de                                        ; $4993: $13
    ld [bc], a                                    ; $4994: $02
    db $d3                                        ; $4995: $d3
    inc de                                        ; $4996: $13
    ld [bc], a                                    ; $4997: $02
    rst $30                                       ; $4998: $f7
    inc de                                        ; $4999: $13
    ld [bc], a                                    ; $499a: $02
    ld [de], a                                    ; $499b: $12
    inc d                                         ; $499c: $14
    ld [bc], a                                    ; $499d: $02
    daa                                           ; $499e: $27
    inc d                                         ; $499f: $14
    ld [bc], a                                    ; $49a0: $02
    ld b, e                                       ; $49a1: $43
    inc d                                         ; $49a2: $14
    ld [bc], a                                    ; $49a3: $02
    ld h, l                                       ; $49a4: $65
    inc d                                         ; $49a5: $14
    ld [bc], a                                    ; $49a6: $02
    sub b                                         ; $49a7: $90
    inc d                                         ; $49a8: $14
    ld [bc], a                                    ; $49a9: $02
    sbc a                                         ; $49aa: $9f
    inc d                                         ; $49ab: $14
    ld [bc], a                                    ; $49ac: $02
    jp Jump_000_0214                              ; $49ad: $c3 $14 $02


    jp nc, Jump_000_0214                          ; $49b0: $d2 $14 $02

    push af                                       ; $49b3: $f5
    inc d                                         ; $49b4: $14
    ld [bc], a                                    ; $49b5: $02
    inc c                                         ; $49b6: $0c
    dec d                                         ; $49b7: $15
    ld [bc], a                                    ; $49b8: $02
    jr z, @+$17                                   ; $49b9: $28 $15

    ld [bc], a                                    ; $49bb: $02
    ld a, $15                                     ; $49bc: $3e $15
    ld [bc], a                                    ; $49be: $02
    ld c, b                                       ; $49bf: $48
    dec d                                         ; $49c0: $15
    ld [bc], a                                    ; $49c1: $02
    ld [hl], a                                    ; $49c2: $77
    dec d                                         ; $49c3: $15
    ld [bc], a                                    ; $49c4: $02
    ret                                           ; $49c5: $c9


    dec d                                         ; $49c6: $15
    ld [bc], a                                    ; $49c7: $02
    jp c, $0215                                   ; $49c8: $da $15 $02

    rst $30                                       ; $49cb: $f7
    dec d                                         ; $49cc: $15
    ld [bc], a                                    ; $49cd: $02
    add hl, de                                    ; $49ce: $19
    ld d, $02                                     ; $49cf: $16 $02
    ld a, [hl+]                                   ; $49d1: $2a
    ld d, $02                                     ; $49d2: $16 $02
    ld h, a                                       ; $49d4: $67
    ld d, $02                                     ; $49d5: $16 $02
    sbc d                                         ; $49d7: $9a
    ld d, $02                                     ; $49d8: $16 $02
    call Call_000_0216                            ; $49da: $cd $16 $02
    inc b                                         ; $49dd: $04
    rla                                           ; $49de: $17
    ld [bc], a                                    ; $49df: $02
    cpl                                           ; $49e0: $2f
    rla                                           ; $49e1: $17
    ld [bc], a                                    ; $49e2: $02
    ld b, h                                       ; $49e3: $44
    rla                                           ; $49e4: $17
    ld [bc], a                                    ; $49e5: $02
    ld e, h                                       ; $49e6: $5c
    rla                                           ; $49e7: $17
    ld [bc], a                                    ; $49e8: $02
    ld l, b                                       ; $49e9: $68
    rla                                           ; $49ea: $17
    ld [bc], a                                    ; $49eb: $02
    and b                                         ; $49ec: $a0
    rla                                           ; $49ed: $17
    ld [bc], a                                    ; $49ee: $02
    jp $0217                                      ; $49ef: $c3 $17 $02


    db $fd                                        ; $49f2: $fd
    rla                                           ; $49f3: $17
    ld [bc], a                                    ; $49f4: $02
    inc c                                         ; $49f5: $0c
    jr @+$04                                      ; $49f6: $18 $02

    inc hl                                        ; $49f8: $23
    jr @+$04                                      ; $49f9: $18 $02

    inc l                                         ; $49fb: $2c
    jr @+$04                                      ; $49fc: $18 $02

    ld b, [hl]                                    ; $49fe: $46
    jr @+$04                                      ; $49ff: $18 $02

    ld l, d                                       ; $4a01: $6a
    jr @+$04                                      ; $4a02: $18 $02

    ld a, h                                       ; $4a04: $7c
    jr jr_05f_4a09                                ; $4a05: $18 $02

    adc $18                                       ; $4a07: $ce $18

jr_05f_4a09:
    ld [bc], a                                    ; $4a09: $02
    ld a, [$0218]                                 ; $4a0a: $fa $18 $02
    dec hl                                        ; $4a0d: $2b
    add hl, de                                    ; $4a0e: $19
    ld [bc], a                                    ; $4a0f: $02
    ld c, h                                       ; $4a10: $4c
    add hl, de                                    ; $4a11: $19
    ld [bc], a                                    ; $4a12: $02
    add l                                         ; $4a13: $85
    add hl, de                                    ; $4a14: $19
    ld [bc], a                                    ; $4a15: $02
    or a                                          ; $4a16: $b7
    add hl, de                                    ; $4a17: $19
    ld [bc], a                                    ; $4a18: $02
    db $ed                                        ; $4a19: $ed
    add hl, de                                    ; $4a1a: $19
    ld [bc], a                                    ; $4a1b: $02
    cpl                                           ; $4a1c: $2f
    ld a, [de]                                    ; $4a1d: $1a
    ld [bc], a                                    ; $4a1e: $02
    ld c, e                                       ; $4a1f: $4b
    ld a, [de]                                    ; $4a20: $1a
    ld [bc], a                                    ; $4a21: $02
    ld l, d                                       ; $4a22: $6a
    ld a, [de]                                    ; $4a23: $1a
    ld [bc], a                                    ; $4a24: $02
    jp $021a                                      ; $4a25: $c3 $1a $02


    db $fd                                        ; $4a28: $fd
    ld a, [de]                                    ; $4a29: $1a
    ld [bc], a                                    ; $4a2a: $02
    rrca                                          ; $4a2b: $0f
    dec de                                        ; $4a2c: $1b
    ld [bc], a                                    ; $4a2d: $02
    ccf                                           ; $4a2e: $3f
    dec de                                        ; $4a2f: $1b
    ld [bc], a                                    ; $4a30: $02
    ld e, [hl]                                    ; $4a31: $5e
    dec de                                        ; $4a32: $1b
    ld [bc], a                                    ; $4a33: $02
    adc c                                         ; $4a34: $89
    dec de                                        ; $4a35: $1b
    ld [bc], a                                    ; $4a36: $02
    and d                                         ; $4a37: $a2
    dec de                                        ; $4a38: $1b
    ld [bc], a                                    ; $4a39: $02
    cp e                                          ; $4a3a: $bb
    dec de                                        ; $4a3b: $1b
    ld [bc], a                                    ; $4a3c: $02
    sub $1b                                       ; $4a3d: $d6 $1b
    ld [bc], a                                    ; $4a3f: $02
    ld a, [$021b]                                 ; $4a40: $fa $1b $02
    inc de                                        ; $4a43: $13
    inc e                                         ; $4a44: $1c
    ld [bc], a                                    ; $4a45: $02
    ld l, c                                       ; $4a46: $69
    inc e                                         ; $4a47: $1c
    ld [bc], a                                    ; $4a48: $02
    adc e                                         ; $4a49: $8b
    inc e                                         ; $4a4a: $1c
    ld [bc], a                                    ; $4a4b: $02
    ret c                                         ; $4a4c: $d8

    inc e                                         ; $4a4d: $1c
    ld [bc], a                                    ; $4a4e: $02
    ld hl, sp+$1c                                 ; $4a4f: $f8 $1c
    ld [bc], a                                    ; $4a51: $02
    jr jr_05f_4a71                                ; $4a52: $18 $1d

    ld [bc], a                                    ; $4a54: $02
    ccf                                           ; $4a55: $3f
    dec e                                         ; $4a56: $1d
    ld [bc], a                                    ; $4a57: $02
    ld c, a                                       ; $4a58: $4f
    dec e                                         ; $4a59: $1d
    ld [bc], a                                    ; $4a5a: $02
    ld h, a                                       ; $4a5b: $67
    dec e                                         ; $4a5c: $1d
    ld [bc], a                                    ; $4a5d: $02
    sbc d                                         ; $4a5e: $9a
    dec e                                         ; $4a5f: $1d
    ld [bc], a                                    ; $4a60: $02
    or c                                          ; $4a61: $b1
    dec e                                         ; $4a62: $1d
    ld [bc], a                                    ; $4a63: $02
    call $021d                                    ; $4a64: $cd $1d $02
    db $fd                                        ; $4a67: $fd
    dec e                                         ; $4a68: $1d
    ld [bc], a                                    ; $4a69: $02
    dec h                                         ; $4a6a: $25
    ld e, $02                                     ; $4a6b: $1e $02
    add hl, sp                                    ; $4a6d: $39
    ld e, $02                                     ; $4a6e: $1e $02
    ld d, e                                       ; $4a70: $53

jr_05f_4a71:
    ld e, $02                                     ; $4a71: $1e $02
    ld h, l                                       ; $4a73: $65
    ld e, $02                                     ; $4a74: $1e $02
    ld l, a                                       ; $4a76: $6f
    ld e, $02                                     ; $4a77: $1e $02
    ld a, a                                       ; $4a79: $7f
    ld e, $02                                     ; $4a7a: $1e $02
    adc h                                         ; $4a7c: $8c
    ld e, $02                                     ; $4a7d: $1e $02
    sbc a                                         ; $4a7f: $9f
    ld e, $02                                     ; $4a80: $1e $02
    or c                                          ; $4a82: $b1
    ld e, $02                                     ; $4a83: $1e $02
    jp z, $021e                                   ; $4a85: $ca $1e $02

    rst $08                                       ; $4a88: $cf
    ld e, $02                                     ; $4a89: $1e $02
    ld [c], a                                     ; $4a8b: $e2
    ld e, $02                                     ; $4a8c: $1e $02
    push af                                       ; $4a8e: $f5
    ld e, $02                                     ; $4a8f: $1e $02
    ld hl, $021f                                  ; $4a91: $21 $1f $02
    ld [hl], d                                    ; $4a94: $72
    rra                                           ; $4a95: $1f
    ld [bc], a                                    ; $4a96: $02
    sbc l                                         ; $4a97: $9d
    rra                                           ; $4a98: $1f
    ld [bc], a                                    ; $4a99: $02
    xor a                                         ; $4a9a: $af
    rra                                           ; $4a9b: $1f
    ld [bc], a                                    ; $4a9c: $02
    cp e                                          ; $4a9d: $bb
    rra                                           ; $4a9e: $1f
    ld [bc], a                                    ; $4a9f: $02
    db $e3                                        ; $4aa0: $e3
    rra                                           ; $4aa1: $1f
    ld [bc], a                                    ; $4aa2: $02
    inc de                                        ; $4aa3: $13
    jr nz, @+$04                                  ; $4aa4: $20 $02

    ld b, c                                       ; $4aa6: $41
    jr nz, @+$04                                  ; $4aa7: $20 $02

    ld a, c                                       ; $4aa9: $79
    jr nz, @+$04                                  ; $4aaa: $20 $02

    xor l                                         ; $4aac: $ad
    jr nz, @+$04                                  ; $4aad: $20 $02

    cp b                                          ; $4aaf: $b8
    jr nz, @+$04                                  ; $4ab0: $20 $02

    ret nc                                        ; $4ab2: $d0

    jr nz, @+$04                                  ; $4ab3: $20 $02

    db $eb                                        ; $4ab5: $eb
    jr nz, @+$04                                  ; $4ab6: $20 $02

    ld b, d                                       ; $4ab8: $42
    ld hl, $5102                                  ; $4ab9: $21 $02 $51
    ld hl, $6302                                  ; $4abc: $21 $02 $63
    ld hl, $9802                                  ; $4abf: $21 $02 $98
    ld hl, $ae02                                  ; $4ac2: $21 $02 $ae
    ld hl, $c602                                  ; $4ac5: $21 $02 $c6
    ld hl, $e602                                  ; $4ac8: $21 $02 $e6
    ld hl, $1602                                  ; $4acb: $21 $02 $16
    ld [hl+], a                                   ; $4ace: $22
    ld [bc], a                                    ; $4acf: $02
    ld c, e                                       ; $4ad0: $4b
    ld [hl+], a                                   ; $4ad1: $22
    ld [bc], a                                    ; $4ad2: $02
    adc a                                         ; $4ad3: $8f
    ld [hl+], a                                   ; $4ad4: $22
    ld [bc], a                                    ; $4ad5: $02
    ret z                                         ; $4ad6: $c8

    ld [hl+], a                                   ; $4ad7: $22
    ld [bc], a                                    ; $4ad8: $02
    ld a, [$0222]                                 ; $4ad9: $fa $22 $02
    ld a, [de]                                    ; $4adc: $1a
    inc hl                                        ; $4add: $23
    ld [bc], a                                    ; $4ade: $02
    ld d, b                                       ; $4adf: $50
    inc hl                                        ; $4ae0: $23
    ld [bc], a                                    ; $4ae1: $02
    add b                                         ; $4ae2: $80
    inc hl                                        ; $4ae3: $23
    ld [bc], a                                    ; $4ae4: $02
    and l                                         ; $4ae5: $a5
    inc hl                                        ; $4ae6: $23
    ld [bc], a                                    ; $4ae7: $02
    or l                                          ; $4ae8: $b5
    inc hl                                        ; $4ae9: $23
    ld [bc], a                                    ; $4aea: $02
    rst $18                                       ; $4aeb: $df
    inc hl                                        ; $4aec: $23
    ld [bc], a                                    ; $4aed: $02
    push af                                       ; $4aee: $f5
    inc hl                                        ; $4aef: $23
    ld [bc], a                                    ; $4af0: $02
    dec b                                         ; $4af1: $05
    inc h                                         ; $4af2: $24
    ld [bc], a                                    ; $4af3: $02
    add hl, hl                                    ; $4af4: $29
    inc h                                         ; $4af5: $24
    ld [bc], a                                    ; $4af6: $02
    ld d, d                                       ; $4af7: $52
    inc h                                         ; $4af8: $24
    ld [bc], a                                    ; $4af9: $02
    ld a, e                                       ; $4afa: $7b
    inc h                                         ; $4afb: $24
    ld [bc], a                                    ; $4afc: $02
    adc b                                         ; $4afd: $88
    inc h                                         ; $4afe: $24
    ld [bc], a                                    ; $4aff: $02
    xor h                                         ; $4b00: $ac
    inc h                                         ; $4b01: $24
    ld [bc], a                                    ; $4b02: $02
    cp c                                          ; $4b03: $b9
    inc h                                         ; $4b04: $24
    ld [bc], a                                    ; $4b05: $02
    push de                                       ; $4b06: $d5
    inc h                                         ; $4b07: $24
    ld [bc], a                                    ; $4b08: $02
    add sp, $24                                   ; $4b09: $e8 $24
    ld [bc], a                                    ; $4b0b: $02
    dec c                                         ; $4b0c: $0d
    dec h                                         ; $4b0d: $25
    ld [bc], a                                    ; $4b0e: $02
    add hl, sp                                    ; $4b0f: $39
    dec h                                         ; $4b10: $25
    ld [bc], a                                    ; $4b11: $02
    ld c, e                                       ; $4b12: $4b
    dec h                                         ; $4b13: $25
    ld [bc], a                                    ; $4b14: $02
    ld [hl], a                                    ; $4b15: $77
    dec h                                         ; $4b16: $25
    ld [bc], a                                    ; $4b17: $02
    adc d                                         ; $4b18: $8a
    dec h                                         ; $4b19: $25
    ld [bc], a                                    ; $4b1a: $02
    and e                                         ; $4b1b: $a3
    dec h                                         ; $4b1c: $25
    ld [bc], a                                    ; $4b1d: $02
    ret                                           ; $4b1e: $c9


    dec h                                         ; $4b1f: $25
    ld [bc], a                                    ; $4b20: $02
    ld [$0225], a                                 ; $4b21: $ea $25 $02
    inc de                                        ; $4b24: $13
    ld h, $02                                     ; $4b25: $26 $02
    cpl                                           ; $4b27: $2f
    ld h, $02                                     ; $4b28: $26 $02
    ld b, [hl]                                    ; $4b2a: $46
    ld h, $02                                     ; $4b2b: $26 $02
    ld h, a                                       ; $4b2d: $67
    ld h, $02                                     ; $4b2e: $26 $02
    ld a, l                                       ; $4b30: $7d
    ld h, $02                                     ; $4b31: $26 $02
    and l                                         ; $4b33: $a5
    ld h, $02                                     ; $4b34: $26 $02
    rst $00                                       ; $4b36: $c7
    ld h, $02                                     ; $4b37: $26 $02
    ld sp, hl                                     ; $4b39: $f9
    ld h, $02                                     ; $4b3a: $26 $02
    ld a, [de]                                    ; $4b3c: $1a
    daa                                           ; $4b3d: $27
    ld [bc], a                                    ; $4b3e: $02
    jr c, jr_05f_4b68                             ; $4b3f: $38 $27

    ld [bc], a                                    ; $4b41: $02
    ld d, [hl]                                    ; $4b42: $56
    daa                                           ; $4b43: $27
    ld [bc], a                                    ; $4b44: $02
    ld [hl], h                                    ; $4b45: $74
    daa                                           ; $4b46: $27
    ld [bc], a                                    ; $4b47: $02
    sub c                                         ; $4b48: $91
    daa                                           ; $4b49: $27
    ld [bc], a                                    ; $4b4a: $02
    cp h                                          ; $4b4b: $bc
    daa                                           ; $4b4c: $27
    ld [bc], a                                    ; $4b4d: $02
    db $e3                                        ; $4b4e: $e3
    daa                                           ; $4b4f: $27
    ld [bc], a                                    ; $4b50: $02
    ld b, $28                                     ; $4b51: $06 $28
    ld [bc], a                                    ; $4b53: $02
    ld b, d                                       ; $4b54: $42
    jr z, @+$04                                   ; $4b55: $28 $02

    ld c, c                                       ; $4b57: $49
    jr z, @+$04                                   ; $4b58: $28 $02

    ld h, h                                       ; $4b5a: $64
    jr z, @+$04                                   ; $4b5b: $28 $02

    add c                                         ; $4b5d: $81
    jr z, @+$04                                   ; $4b5e: $28 $02

    sub a                                         ; $4b60: $97
    jr z, jr_05f_4b65                             ; $4b61: $28 $02

    ldh a, [$28]                                  ; $4b63: $f0 $28

jr_05f_4b65:
    ld [bc], a                                    ; $4b65: $02
    ld [de], a                                    ; $4b66: $12
    add hl, hl                                    ; $4b67: $29

jr_05f_4b68:
    ld [bc], a                                    ; $4b68: $02
    jr c, jr_05f_4b94                             ; $4b69: $38 $29

    ld [bc], a                                    ; $4b6b: $02
    ld c, [hl]                                    ; $4b6c: $4e
    add hl, hl                                    ; $4b6d: $29
    ld [bc], a                                    ; $4b6e: $02
    ld l, d                                       ; $4b6f: $6a
    add hl, hl                                    ; $4b70: $29
    ld [bc], a                                    ; $4b71: $02
    ld a, [hl]                                    ; $4b72: $7e
    add hl, hl                                    ; $4b73: $29
    ld [bc], a                                    ; $4b74: $02
    sbc a                                         ; $4b75: $9f
    add hl, hl                                    ; $4b76: $29
    ld [bc], a                                    ; $4b77: $02
    xor b                                         ; $4b78: $a8
    add hl, hl                                    ; $4b79: $29
    ld [bc], a                                    ; $4b7a: $02
    cp l                                          ; $4b7b: $bd
    add hl, hl                                    ; $4b7c: $29
    ld [bc], a                                    ; $4b7d: $02
    rst $38                                       ; $4b7e: $ff
    add hl, hl                                    ; $4b7f: $29
    ld [bc], a                                    ; $4b80: $02
    dec c                                         ; $4b81: $0d
    ld a, [hl+]                                   ; $4b82: $2a
    ld [bc], a                                    ; $4b83: $02
    dec e                                         ; $4b84: $1d
    ld a, [hl+]                                   ; $4b85: $2a
    ld [bc], a                                    ; $4b86: $02
    ld b, h                                       ; $4b87: $44
    ld a, [hl+]                                   ; $4b88: $2a
    ld [bc], a                                    ; $4b89: $02
    ld l, d                                       ; $4b8a: $6a
    ld a, [hl+]                                   ; $4b8b: $2a
    ld [bc], a                                    ; $4b8c: $02
    add b                                         ; $4b8d: $80
    ld a, [hl+]                                   ; $4b8e: $2a
    ld [bc], a                                    ; $4b8f: $02
    adc b                                         ; $4b90: $88
    ld a, [hl+]                                   ; $4b91: $2a
    ld [bc], a                                    ; $4b92: $02
    sbc e                                         ; $4b93: $9b

jr_05f_4b94:
    ld a, [hl+]                                   ; $4b94: $2a
    ld [bc], a                                    ; $4b95: $02
    or a                                          ; $4b96: $b7
    ld a, [hl+]                                   ; $4b97: $2a
    ld [bc], a                                    ; $4b98: $02
    ldh [$2a], a                                  ; $4b99: $e0 $2a
    ld [bc], a                                    ; $4b9b: $02
    jp hl                                         ; $4b9c: $e9


    ld a, [hl+]                                   ; $4b9d: $2a
    ld [bc], a                                    ; $4b9e: $02
    nop                                           ; $4b9f: $00
    dec hl                                        ; $4ba0: $2b
    ld [bc], a                                    ; $4ba1: $02
    ld e, $2b                                     ; $4ba2: $1e $2b
    ld [bc], a                                    ; $4ba4: $02
    jr nc, jr_05f_4bd2                            ; $4ba5: $30 $2b

    ld [bc], a                                    ; $4ba7: $02
    sbc a                                         ; $4ba8: $9f
    dec hl                                        ; $4ba9: $2b
    ld [bc], a                                    ; $4baa: $02
    xor d                                         ; $4bab: $aa
    dec hl                                        ; $4bac: $2b
    ld [bc], a                                    ; $4bad: $02
    xor [hl]                                      ; $4bae: $ae
    dec hl                                        ; $4baf: $2b
    ld [bc], a                                    ; $4bb0: $02
    rst $00                                       ; $4bb1: $c7
    dec hl                                        ; $4bb2: $2b
    ld [bc], a                                    ; $4bb3: $02
    di                                            ; $4bb4: $f3
    dec hl                                        ; $4bb5: $2b
    ld [bc], a                                    ; $4bb6: $02
    ld de, $022c                                  ; $4bb7: $11 $2c $02
    jr z, jr_05f_4be8                             ; $4bba: $28 $2c

    ld [bc], a                                    ; $4bbc: $02
    ld d, [hl]                                    ; $4bbd: $56
    inc l                                         ; $4bbe: $2c
    ld [bc], a                                    ; $4bbf: $02
    ld [hl], c                                    ; $4bc0: $71
    inc l                                         ; $4bc1: $2c
    ld [bc], a                                    ; $4bc2: $02
    and c                                         ; $4bc3: $a1
    inc l                                         ; $4bc4: $2c
    ld [bc], a                                    ; $4bc5: $02
    or d                                          ; $4bc6: $b2
    inc l                                         ; $4bc7: $2c
    ld [bc], a                                    ; $4bc8: $02
    pop bc                                        ; $4bc9: $c1
    inc l                                         ; $4bca: $2c
    ld [bc], a                                    ; $4bcb: $02
    db $dd                                        ; $4bcc: $dd
    inc l                                         ; $4bcd: $2c
    ld [bc], a                                    ; $4bce: $02
    rst $28                                       ; $4bcf: $ef
    inc l                                         ; $4bd0: $2c
    ld [bc], a                                    ; $4bd1: $02

jr_05f_4bd2:
    db $fd                                        ; $4bd2: $fd
    inc l                                         ; $4bd3: $2c
    ld [bc], a                                    ; $4bd4: $02
    rrca                                          ; $4bd5: $0f
    dec l                                         ; $4bd6: $2d
    ld [bc], a                                    ; $4bd7: $02
    ld [hl-], a                                   ; $4bd8: $32
    dec l                                         ; $4bd9: $2d
    ld [bc], a                                    ; $4bda: $02
    ld a, [hl-]                                   ; $4bdb: $3a
    dec l                                         ; $4bdc: $2d
    ld [bc], a                                    ; $4bdd: $02
    ld e, l                                       ; $4bde: $5d
    dec l                                         ; $4bdf: $2d
    ld [bc], a                                    ; $4be0: $02
    ld a, h                                       ; $4be1: $7c
    dec l                                         ; $4be2: $2d
    ld [bc], a                                    ; $4be3: $02
    and c                                         ; $4be4: $a1
    dec l                                         ; $4be5: $2d
    ld [bc], a                                    ; $4be6: $02
    cp [hl]                                       ; $4be7: $be

jr_05f_4be8:
    dec l                                         ; $4be8: $2d
    ld [bc], a                                    ; $4be9: $02
    ld bc, $022e                                  ; $4bea: $01 $2e $02
    inc de                                        ; $4bed: $13
    ld l, $02                                     ; $4bee: $2e $02
    ld a, [hl+]                                   ; $4bf0: $2a
    ld l, $02                                     ; $4bf1: $2e $02
    ld l, d                                       ; $4bf3: $6a
    ld l, $02                                     ; $4bf4: $2e $02
    adc [hl]                                      ; $4bf6: $8e
    ld l, $02                                     ; $4bf7: $2e $02
    xor b                                         ; $4bf9: $a8
    ld l, $02                                     ; $4bfa: $2e $02
    db $eb                                        ; $4bfc: $eb
    ld l, $02                                     ; $4bfd: $2e $02
    rst $38                                       ; $4bff: $ff
    ld l, $02                                     ; $4c00: $2e $02
    ld b, e                                       ; $4c02: $43
    cpl                                           ; $4c03: $2f
    ld [bc], a                                    ; $4c04: $02
    ld [hl], a                                    ; $4c05: $77
    cpl                                           ; $4c06: $2f
    ld [bc], a                                    ; $4c07: $02
    add d                                         ; $4c08: $82
    cpl                                           ; $4c09: $2f
    ld [bc], a                                    ; $4c0a: $02
    and h                                         ; $4c0b: $a4
    cpl                                           ; $4c0c: $2f
    ld [bc], a                                    ; $4c0d: $02
    call Call_000_022f                            ; $4c0e: $cd $2f $02
    db $ec                                        ; $4c11: $ec
    cpl                                           ; $4c12: $2f
    ld [bc], a                                    ; $4c13: $02
    db $f4                                        ; $4c14: $f4
    cpl                                           ; $4c15: $2f
    ld [bc], a                                    ; $4c16: $02
    dec d                                         ; $4c17: $15
    jr nc, @+$04                                  ; $4c18: $30 $02

    inc h                                         ; $4c1a: $24
    jr nc, @+$04                                  ; $4c1b: $30 $02

    ld b, c                                       ; $4c1d: $41
    jr nc, @+$04                                  ; $4c1e: $30 $02

    ld h, h                                       ; $4c20: $64
    jr nc, @+$04                                  ; $4c21: $30 $02

    add h                                         ; $4c23: $84
    jr nc, @+$04                                  ; $4c24: $30 $02

    sub d                                         ; $4c26: $92
    jr nc, @+$04                                  ; $4c27: $30 $02

    xor h                                         ; $4c29: $ac
    jr nc, @+$04                                  ; $4c2a: $30 $02

    cp [hl]                                       ; $4c2c: $be
    jr nc, @+$04                                  ; $4c2d: $30 $02

    dec bc                                        ; $4c2f: $0b
    ld sp, $3902                                  ; $4c30: $31 $02 $39
    ld sp, $7202                                  ; $4c33: $31 $02 $72
    ld sp, $8102                                  ; $4c36: $31 $02 $81
    ld sp, $9e02                                  ; $4c39: $31 $02 $9e
    ld sp, $b802                                  ; $4c3c: $31 $02 $b8
    ld sp, $eb02                                  ; $4c3f: $31 $02 $eb
    ld sp, $0602                                  ; $4c42: $31 $02 $06
    ld [hl-], a                                   ; $4c45: $32
    ld [bc], a                                    ; $4c46: $02
    dec [hl]                                      ; $4c47: $35
    ld [hl-], a                                   ; $4c48: $32
    ld [bc], a                                    ; $4c49: $02
    ld b, d                                       ; $4c4a: $42
    ld [hl-], a                                   ; $4c4b: $32
    ld [bc], a                                    ; $4c4c: $02
    ld a, e                                       ; $4c4d: $7b
    ld [hl-], a                                   ; $4c4e: $32
    ld [bc], a                                    ; $4c4f: $02
    or c                                          ; $4c50: $b1
    ld [hl-], a                                   ; $4c51: $32
    ld [bc], a                                    ; $4c52: $02
    call nc, Call_000_0232                        ; $4c53: $d4 $32 $02
    cp $32                                        ; $4c56: $fe $32
    ld [bc], a                                    ; $4c58: $02
    inc hl                                        ; $4c59: $23
    inc sp                                        ; $4c5a: $33
    ld [bc], a                                    ; $4c5b: $02
    ld d, h                                       ; $4c5c: $54
    inc sp                                        ; $4c5d: $33
    ld [bc], a                                    ; $4c5e: $02
    ld [hl], a                                    ; $4c5f: $77
    inc sp                                        ; $4c60: $33
    ld [bc], a                                    ; $4c61: $02
    adc d                                         ; $4c62: $8a
    inc sp                                        ; $4c63: $33
    ld [bc], a                                    ; $4c64: $02
    push de                                       ; $4c65: $d5
    inc sp                                        ; $4c66: $33
    ld [bc], a                                    ; $4c67: $02
    push af                                       ; $4c68: $f5
    inc sp                                        ; $4c69: $33
    ld [bc], a                                    ; $4c6a: $02
    rlca                                          ; $4c6b: $07
    inc [hl]                                      ; $4c6c: $34
    ld [bc], a                                    ; $4c6d: $02
    dec bc                                        ; $4c6e: $0b
    inc [hl]                                      ; $4c6f: $34
    ld [bc], a                                    ; $4c70: $02
    add hl, sp                                    ; $4c71: $39
    inc [hl]                                      ; $4c72: $34
    ld [bc], a                                    ; $4c73: $02
    ld c, l                                       ; $4c74: $4d
    inc [hl]                                      ; $4c75: $34
    ld [bc], a                                    ; $4c76: $02
    ld e, a                                       ; $4c77: $5f
    inc [hl]                                      ; $4c78: $34
    ld [bc], a                                    ; $4c79: $02
    ld l, [hl]                                    ; $4c7a: $6e
    inc [hl]                                      ; $4c7b: $34
    ld [bc], a                                    ; $4c7c: $02
    adc a                                         ; $4c7d: $8f
    inc [hl]                                      ; $4c7e: $34
    ld [bc], a                                    ; $4c7f: $02
    and c                                         ; $4c80: $a1
    inc [hl]                                      ; $4c81: $34
    ld [bc], a                                    ; $4c82: $02
    pop bc                                        ; $4c83: $c1
    inc [hl]                                      ; $4c84: $34
    ld [bc], a                                    ; $4c85: $02
    jp z, $0234                                   ; $4c86: $ca $34 $02

    rst $18                                       ; $4c89: $df
    inc [hl]                                      ; $4c8a: $34
    ld [bc], a                                    ; $4c8b: $02
    or $34                                        ; $4c8c: $f6 $34
    ld [bc], a                                    ; $4c8e: $02
    ld b, d                                       ; $4c8f: $42
    dec [hl]                                      ; $4c90: $35
    ld [bc], a                                    ; $4c91: $02
    ld e, b                                       ; $4c92: $58
    dec [hl]                                      ; $4c93: $35
    ld [bc], a                                    ; $4c94: $02
    xor e                                         ; $4c95: $ab
    dec [hl]                                      ; $4c96: $35
    ld [bc], a                                    ; $4c97: $02
    ret nc                                        ; $4c98: $d0

    dec [hl]                                      ; $4c99: $35
    ld [bc], a                                    ; $4c9a: $02
    db $fc                                        ; $4c9b: $fc
    dec [hl]                                      ; $4c9c: $35

Jump_05f_4c9d:
    ld [bc], a                                    ; $4c9d: $02
    rlca                                          ; $4c9e: $07
    ld [hl], $02                                  ; $4c9f: $36 $02
    dec [hl]                                      ; $4ca1: $35
    ld [hl], $02                                  ; $4ca2: $36 $02
    dec a                                         ; $4ca4: $3d
    ld [hl], $02                                  ; $4ca5: $36 $02
    ld h, a                                       ; $4ca7: $67
    ld [hl], $02                                  ; $4ca8: $36 $02
    add e                                         ; $4caa: $83
    ld [hl], $02                                  ; $4cab: $36 $02
    sub a                                         ; $4cad: $97
    ld [hl], $02                                  ; $4cae: $36 $02
    ldh [$36], a                                  ; $4cb0: $e0 $36
    ld [bc], a                                    ; $4cb2: $02
    rst $30                                       ; $4cb3: $f7
    ld [hl], $02                                  ; $4cb4: $36 $02
    rlca                                          ; $4cb6: $07
    scf                                           ; $4cb7: $37
    ld [bc], a                                    ; $4cb8: $02
    inc e                                         ; $4cb9: $1c
    scf                                           ; $4cba: $37
    ld [bc], a                                    ; $4cbb: $02
    inc a                                         ; $4cbc: $3c
    scf                                           ; $4cbd: $37
    ld [bc], a                                    ; $4cbe: $02
    ld b, e                                       ; $4cbf: $43
    scf                                           ; $4cc0: $37
    ld [bc], a                                    ; $4cc1: $02
    ld c, [hl]                                    ; $4cc2: $4e
    scf                                           ; $4cc3: $37
    ld [bc], a                                    ; $4cc4: $02
    sbc a                                         ; $4cc5: $9f
    scf                                           ; $4cc6: $37
    ld [bc], a                                    ; $4cc7: $02
    or [hl]                                       ; $4cc8: $b6
    scf                                           ; $4cc9: $37
    ld [bc], a                                    ; $4cca: $02
    jp nz, $0237                                  ; $4ccb: $c2 $37 $02

    call $0237                                    ; $4cce: $cd $37 $02
    rst $28                                       ; $4cd1: $ef
    scf                                           ; $4cd2: $37
    ld [bc], a                                    ; $4cd3: $02
    ld b, [hl]                                    ; $4cd4: $46
    jr c, @+$04                                   ; $4cd5: $38 $02

    ld h, c                                       ; $4cd7: $61
    jr c, @+$04                                   ; $4cd8: $38 $02

    ld a, b                                       ; $4cda: $78
    jr c, @+$04                                   ; $4cdb: $38 $02

    add d                                         ; $4cdd: $82
    jr c, @+$04                                   ; $4cde: $38 $02

    ret nz                                        ; $4ce0: $c0

    jr c, @+$04                                   ; $4ce1: $38 $02

    call c, Call_000_0238                         ; $4ce3: $dc $38 $02
    di                                            ; $4ce6: $f3
    jr c, @+$04                                   ; $4ce7: $38 $02

    ld bc, $0239                                  ; $4ce9: $01 $39 $02
    ld h, $39                                     ; $4cec: $26 $39
    ld [bc], a                                    ; $4cee: $02
    jr c, jr_05f_4d2a                             ; $4cef: $38 $39

    ld [bc], a                                    ; $4cf1: $02
    ld l, c                                       ; $4cf2: $69
    add hl, sp                                    ; $4cf3: $39
    ld [bc], a                                    ; $4cf4: $02
    sub h                                         ; $4cf5: $94
    add hl, sp                                    ; $4cf6: $39
    ld [bc], a                                    ; $4cf7: $02
    xor e                                         ; $4cf8: $ab
    add hl, sp                                    ; $4cf9: $39
    ld [bc], a                                    ; $4cfa: $02
    db $fd                                        ; $4cfb: $fd
    add hl, sp                                    ; $4cfc: $39
    ld [bc], a                                    ; $4cfd: $02
    ld hl, $023a                                  ; $4cfe: $21 $3a $02
    ld b, l                                       ; $4d01: $45
    ld a, [hl-]                                   ; $4d02: $3a
    ld [bc], a                                    ; $4d03: $02
    ld e, [hl]                                    ; $4d04: $5e
    ld a, [hl-]                                   ; $4d05: $3a
    ld [bc], a                                    ; $4d06: $02
    ld a, b                                       ; $4d07: $78
    ld a, [hl-]                                   ; $4d08: $3a
    ld [bc], a                                    ; $4d09: $02
    xor a                                         ; $4d0a: $af
    ld a, [hl-]                                   ; $4d0b: $3a
    ld [bc], a                                    ; $4d0c: $02
    cp c                                          ; $4d0d: $b9
    ld a, [hl-]                                   ; $4d0e: $3a
    ld [bc], a                                    ; $4d0f: $02
    jr c, jr_05f_4d4d                             ; $4d10: $38 $3b

    ld [bc], a                                    ; $4d12: $02
    ld b, c                                       ; $4d13: $41
    dec sp                                        ; $4d14: $3b
    ld [bc], a                                    ; $4d15: $02
    ld e, b                                       ; $4d16: $58
    dec sp                                        ; $4d17: $3b
    ld [bc], a                                    ; $4d18: $02
    ld l, l                                       ; $4d19: $6d
    dec sp                                        ; $4d1a: $3b
    ld [bc], a                                    ; $4d1b: $02
    add e                                         ; $4d1c: $83
    dec sp                                        ; $4d1d: $3b
    ld [bc], a                                    ; $4d1e: $02
    xor l                                         ; $4d1f: $ad
    dec sp                                        ; $4d20: $3b
    ld [bc], a                                    ; $4d21: $02
    ld [$023b], a                                 ; $4d22: $ea $3b $02
    ei                                            ; $4d25: $fb
    dec sp                                        ; $4d26: $3b
    ld [bc], a                                    ; $4d27: $02
    inc [hl]                                      ; $4d28: $34
    inc a                                         ; $4d29: $3c

jr_05f_4d2a:
    ld [bc], a                                    ; $4d2a: $02
    ld h, b                                       ; $4d2b: $60
    inc a                                         ; $4d2c: $3c
    ld [bc], a                                    ; $4d2d: $02
    halt                                          ; $4d2e: $76
    inc a                                         ; $4d2f: $3c
    ld [bc], a                                    ; $4d30: $02
    adc [hl]                                      ; $4d31: $8e
    inc a                                         ; $4d32: $3c
    ld [bc], a                                    ; $4d33: $02
    cp c                                          ; $4d34: $b9
    inc a                                         ; $4d35: $3c
    ld [bc], a                                    ; $4d36: $02
    db $e3                                        ; $4d37: $e3
    inc a                                         ; $4d38: $3c
    ld [bc], a                                    ; $4d39: $02
    ld b, $3d                                     ; $4d3a: $06 $3d
    ld [bc], a                                    ; $4d3c: $02
    dec h                                         ; $4d3d: $25
    dec a                                         ; $4d3e: $3d
    ld [bc], a                                    ; $4d3f: $02
    dec hl                                        ; $4d40: $2b
    dec a                                         ; $4d41: $3d
    ld [bc], a                                    ; $4d42: $02
    sub e                                         ; $4d43: $93
    dec a                                         ; $4d44: $3d
    ld [bc], a                                    ; $4d45: $02
    sbc c                                         ; $4d46: $99
    dec a                                         ; $4d47: $3d
    ld [bc], a                                    ; $4d48: $02
    rst $00                                       ; $4d49: $c7
    dec a                                         ; $4d4a: $3d
    ld [bc], a                                    ; $4d4b: $02
    push af                                       ; $4d4c: $f5

jr_05f_4d4d:
    dec a                                         ; $4d4d: $3d
    ld [bc], a                                    ; $4d4e: $02
    ld [$023e], sp                                ; $4d4f: $08 $3e $02
    rla                                           ; $4d52: $17
    ld a, $02                                     ; $4d53: $3e $02
    inc hl                                        ; $4d55: $23
    ld a, $02                                     ; $4d56: $3e $02
    dec sp                                        ; $4d58: $3b
    ld a, $02                                     ; $4d59: $3e $02
    adc [hl]                                      ; $4d5b: $8e
    ld a, $02                                     ; $4d5c: $3e $02
    sbc l                                         ; $4d5e: $9d
    ld a, $02                                     ; $4d5f: $3e $02
    or h                                          ; $4d61: $b4
    ld a, $02                                     ; $4d62: $3e $02
    cp e                                          ; $4d64: $bb
    ld a, $02                                     ; $4d65: $3e $02
    ldh a, [$3e]                                  ; $4d67: $f0 $3e
    ld [bc], a                                    ; $4d69: $02
    dec e                                         ; $4d6a: $1d
    ccf                                           ; $4d6b: $3f
    ld [bc], a                                    ; $4d6c: $02
    dec sp                                        ; $4d6d: $3b
    ccf                                           ; $4d6e: $3f
    ld [bc], a                                    ; $4d6f: $02
    sbc d                                         ; $4d70: $9a
    ccf                                           ; $4d71: $3f
    ld [bc], a                                    ; $4d72: $02
    cp e                                          ; $4d73: $bb
    ccf                                           ; $4d74: $3f
    ld [bc], a                                    ; $4d75: $02
    ret                                           ; $4d76: $c9


    ccf                                           ; $4d77: $3f
    inc bc                                        ; $4d78: $03
    ld bc, $0300                                  ; $4d79: $01 $00 $03
    ld d, d                                       ; $4d7c: $52
    nop                                           ; $4d7d: $00
    inc bc                                        ; $4d7e: $03
    adc a                                         ; $4d7f: $8f
    nop                                           ; $4d80: $00
    inc bc                                        ; $4d81: $03
    jp nz, $0300                                  ; $4d82: $c2 $00 $03

    rst $20                                       ; $4d85: $e7
    nop                                           ; $4d86: $00
    inc bc                                        ; $4d87: $03
    ld sp, hl                                     ; $4d88: $f9
    nop                                           ; $4d89: $00
    inc bc                                        ; $4d8a: $03
    rrca                                          ; $4d8b: $0f
    ld bc, $1703                                  ; $4d8c: $01 $03 $17
    ld bc, $4d03                                  ; $4d8f: $01 $03 $4d
    ld bc, $6803                                  ; $4d92: $01 $03 $68
    ld bc, $9103                                  ; $4d95: $01 $03 $91
    ld bc, $a203                                  ; $4d98: $01 $03 $a2
    ld bc, $d203                                  ; $4d9b: $01 $03 $d2
    ld bc, $e103                                  ; $4d9e: $01 $03 $e1
    ld bc, $0403                                  ; $4da1: $01 $03 $04
    ld [bc], a                                    ; $4da4: $02
    inc bc                                        ; $4da5: $03
    ld c, $02                                     ; $4da6: $0e $02
    inc bc                                        ; $4da8: $03
    jp Jump_000_0302                              ; $4da9: $c3 $02 $03


    sub $02                                       ; $4dac: $d6 $02
    inc bc                                        ; $4dae: $03
    ld c, b                                       ; $4daf: $48
    inc bc                                        ; $4db0: $03
    inc bc                                        ; $4db1: $03
    ld l, d                                       ; $4db2: $6a
    inc bc                                        ; $4db3: $03
    inc bc                                        ; $4db4: $03
    add a                                         ; $4db5: $87
    inc bc                                        ; $4db6: $03
    inc bc                                        ; $4db7: $03
    or e                                          ; $4db8: $b3
    inc bc                                        ; $4db9: $03
    inc bc                                        ; $4dba: $03
    rst $28                                       ; $4dbb: $ef
    inc bc                                        ; $4dbc: $03
    inc bc                                        ; $4dbd: $03
    nop                                           ; $4dbe: $00
    inc b                                         ; $4dbf: $04
    inc bc                                        ; $4dc0: $03
    dec bc                                        ; $4dc1: $0b
    inc b                                         ; $4dc2: $04
    inc bc                                        ; $4dc3: $03
    inc de                                        ; $4dc4: $13
    inc b                                         ; $4dc5: $04
    inc bc                                        ; $4dc6: $03
    cpl                                           ; $4dc7: $2f
    inc b                                         ; $4dc8: $04
    inc bc                                        ; $4dc9: $03
    ld b, e                                       ; $4dca: $43
    inc b                                         ; $4dcb: $04
    inc bc                                        ; $4dcc: $03
    ld h, l                                       ; $4dcd: $65
    inc b                                         ; $4dce: $04
    inc bc                                        ; $4dcf: $03
    adc l                                         ; $4dd0: $8d
    inc b                                         ; $4dd1: $04
    inc bc                                        ; $4dd2: $03
    and e                                         ; $4dd3: $a3
    inc b                                         ; $4dd4: $04
    inc bc                                        ; $4dd5: $03
    or d                                          ; $4dd6: $b2
    inc b                                         ; $4dd7: $04
    inc bc                                        ; $4dd8: $03
    ldh a, [rDIV]                                 ; $4dd9: $f0 $04
    inc bc                                        ; $4ddb: $03
    inc b                                         ; $4ddc: $04
    dec b                                         ; $4ddd: $05
    inc bc                                        ; $4dde: $03
    cpl                                           ; $4ddf: $2f
    dec b                                         ; $4de0: $05
    inc bc                                        ; $4de1: $03
    ld c, e                                       ; $4de2: $4b
    dec b                                         ; $4de3: $05
    inc bc                                        ; $4de4: $03
    halt                                          ; $4de5: $76
    dec b                                         ; $4de6: $05
    inc bc                                        ; $4de7: $03
    and c                                         ; $4de8: $a1
    dec b                                         ; $4de9: $05
    inc bc                                        ; $4dea: $03
    call nz, $0305                                ; $4deb: $c4 $05 $03
    call $0305                                    ; $4dee: $cd $05 $03
    sub $05                                       ; $4df1: $d6 $05
    inc bc                                        ; $4df3: $03
    add sp, $05                                   ; $4df4: $e8 $05
    inc bc                                        ; $4df6: $03
    ld de, $0306                                  ; $4df7: $11 $06 $03
    dec [hl]                                      ; $4dfa: $35
    ld b, $03                                     ; $4dfb: $06 $03
    dec sp                                        ; $4dfd: $3b
    ld b, $03                                     ; $4dfe: $06 $03
    ld h, c                                       ; $4e00: $61
    ld b, $03                                     ; $4e01: $06 $03
    adc e                                         ; $4e03: $8b
    ld b, $03                                     ; $4e04: $06 $03
    jp nz, Jump_000_0306                          ; $4e06: $c2 $06 $03

    ld sp, hl                                     ; $4e09: $f9
    ld b, $03                                     ; $4e0a: $06 $03
    dec e                                         ; $4e0c: $1d
    rlca                                          ; $4e0d: $07
    inc bc                                        ; $4e0e: $03
    ld b, h                                       ; $4e0f: $44
    rlca                                          ; $4e10: $07
    inc bc                                        ; $4e11: $03
    xor [hl]                                      ; $4e12: $ae
    rlca                                          ; $4e13: $07
    inc bc                                        ; $4e14: $03
    rst $20                                       ; $4e15: $e7
    rlca                                          ; $4e16: $07
    inc bc                                        ; $4e17: $03
    ld b, $08                                     ; $4e18: $06 $08
    inc bc                                        ; $4e1a: $03
    cpl                                           ; $4e1b: $2f
    ld [$4103], sp                                ; $4e1c: $08 $03 $41
    ld [$5703], sp                                ; $4e1f: $08 $03 $57
    ld [$7803], sp                                ; $4e22: $08 $03 $78
    ld [$9503], sp                                ; $4e25: $08 $03 $95
    ld [$bd03], sp                                ; $4e28: $08 $03 $bd
    ld [$da03], sp                                ; $4e2b: $08 $03 $da
    ld [$0903], sp                                ; $4e2e: $08 $03 $09
    add hl, bc                                    ; $4e31: $09
    inc bc                                        ; $4e32: $03
    jr z, jr_05f_4e3e                             ; $4e33: $28 $09

    inc bc                                        ; $4e35: $03
    ld l, h                                       ; $4e36: $6c
    add hl, bc                                    ; $4e37: $09
    inc bc                                        ; $4e38: $03
    add d                                         ; $4e39: $82
    add hl, bc                                    ; $4e3a: $09
    inc bc                                        ; $4e3b: $03
    sub [hl]                                      ; $4e3c: $96
    add hl, bc                                    ; $4e3d: $09

jr_05f_4e3e:
    inc bc                                        ; $4e3e: $03
    pop bc                                        ; $4e3f: $c1
    add hl, bc                                    ; $4e40: $09
    inc bc                                        ; $4e41: $03
    inc b                                         ; $4e42: $04
    ld a, [bc]                                    ; $4e43: $0a
    inc bc                                        ; $4e44: $03
    ld a, $0a                                     ; $4e45: $3e $0a
    inc bc                                        ; $4e47: $03
    ld d, [hl]                                    ; $4e48: $56
    ld a, [bc]                                    ; $4e49: $0a
    inc bc                                        ; $4e4a: $03
    ld h, b                                       ; $4e4b: $60
    ld a, [bc]                                    ; $4e4c: $0a
    inc bc                                        ; $4e4d: $03
    ld l, l                                       ; $4e4e: $6d
    ld a, [bc]                                    ; $4e4f: $0a
    inc bc                                        ; $4e50: $03
    adc h                                         ; $4e51: $8c
    ld a, [bc]                                    ; $4e52: $0a
    inc bc                                        ; $4e53: $03
    xor h                                         ; $4e54: $ac
    ld a, [bc]                                    ; $4e55: $0a
    inc bc                                        ; $4e56: $03
    cp c                                          ; $4e57: $b9
    ld a, [bc]                                    ; $4e58: $0a
    inc bc                                        ; $4e59: $03
    rst $00                                       ; $4e5a: $c7
    ld a, [bc]                                    ; $4e5b: $0a
    inc bc                                        ; $4e5c: $03
    rst $18                                       ; $4e5d: $df
    ld a, [bc]                                    ; $4e5e: $0a
    inc bc                                        ; $4e5f: $03
    inc bc                                        ; $4e60: $03
    dec bc                                        ; $4e61: $0b
    inc bc                                        ; $4e62: $03
    ld d, $0b                                     ; $4e63: $16 $0b
    inc bc                                        ; $4e65: $03
    ld d, d                                       ; $4e66: $52
    dec bc                                        ; $4e67: $0b
    inc bc                                        ; $4e68: $03
    add d                                         ; $4e69: $82
    dec bc                                        ; $4e6a: $0b
    inc bc                                        ; $4e6b: $03
    sub a                                         ; $4e6c: $97
    dec bc                                        ; $4e6d: $0b
    inc bc                                        ; $4e6e: $03
    or l                                          ; $4e6f: $b5
    dec bc                                        ; $4e70: $0b
    inc bc                                        ; $4e71: $03
    add $0b                                       ; $4e72: $c6 $0b
    inc bc                                        ; $4e74: $03
    db $e3                                        ; $4e75: $e3
    dec bc                                        ; $4e76: $0b
    inc bc                                        ; $4e77: $03
    inc b                                         ; $4e78: $04
    inc c                                         ; $4e79: $0c
    inc bc                                        ; $4e7a: $03
    ld de, $030c                                  ; $4e7b: $11 $0c $03
    inc sp                                        ; $4e7e: $33
    inc c                                         ; $4e7f: $0c
    inc bc                                        ; $4e80: $03
    ld b, l                                       ; $4e81: $45
    inc c                                         ; $4e82: $0c
    inc bc                                        ; $4e83: $03
    ld e, e                                       ; $4e84: $5b
    inc c                                         ; $4e85: $0c
    inc bc                                        ; $4e86: $03
    ld [hl], b                                    ; $4e87: $70
    inc c                                         ; $4e88: $0c
    inc bc                                        ; $4e89: $03
    adc d                                         ; $4e8a: $8a
    inc c                                         ; $4e8b: $0c
    inc bc                                        ; $4e8c: $03
    sbc l                                         ; $4e8d: $9d
    inc c                                         ; $4e8e: $0c
    inc bc                                        ; $4e8f: $03
    cp b                                          ; $4e90: $b8
    inc c                                         ; $4e91: $0c
    inc bc                                        ; $4e92: $03
    call nc, Call_000_030c                        ; $4e93: $d4 $0c $03
    db $ed                                        ; $4e96: $ed
    inc c                                         ; $4e97: $0c
    inc bc                                        ; $4e98: $03
    ld de, $030d                                  ; $4e99: $11 $0d $03
    dec hl                                        ; $4e9c: $2b
    dec c                                         ; $4e9d: $0d
    inc bc                                        ; $4e9e: $03
    ld b, [hl]                                    ; $4e9f: $46
    dec c                                         ; $4ea0: $0d
    inc bc                                        ; $4ea1: $03
    ld h, c                                       ; $4ea2: $61
    dec c                                         ; $4ea3: $0d
    inc bc                                        ; $4ea4: $03
    ld a, a                                       ; $4ea5: $7f
    dec c                                         ; $4ea6: $0d
    inc bc                                        ; $4ea7: $03
    sbc l                                         ; $4ea8: $9d
    dec c                                         ; $4ea9: $0d
    inc bc                                        ; $4eaa: $03
    cp e                                          ; $4eab: $bb
    dec c                                         ; $4eac: $0d
    inc bc                                        ; $4ead: $03
    push de                                       ; $4eae: $d5
    dec c                                         ; $4eaf: $0d
    inc bc                                        ; $4eb0: $03
    di                                            ; $4eb1: $f3
    dec c                                         ; $4eb2: $0d
    inc bc                                        ; $4eb3: $03
    dec de                                        ; $4eb4: $1b
    ld c, $03                                     ; $4eb5: $0e $03
    dec sp                                        ; $4eb7: $3b
    ld c, $03                                     ; $4eb8: $0e $03
    ld h, e                                       ; $4eba: $63
    ld c, $03                                     ; $4ebb: $0e $03
    add l                                         ; $4ebd: $85
    ld c, $03                                     ; $4ebe: $0e $03
    sub a                                         ; $4ec0: $97
    ld c, $03                                     ; $4ec1: $0e $03
    or h                                          ; $4ec3: $b4
    ld c, $03                                     ; $4ec4: $0e $03
    pop de                                        ; $4ec6: $d1
    ld c, $03                                     ; $4ec7: $0e $03
    xor $0e                                       ; $4ec9: $ee $0e
    inc bc                                        ; $4ecb: $03
    dec de                                        ; $4ecc: $1b
    rrca                                          ; $4ecd: $0f
    inc bc                                        ; $4ece: $03
    ld b, l                                       ; $4ecf: $45
    rrca                                          ; $4ed0: $0f
    inc bc                                        ; $4ed1: $03
    ld h, a                                       ; $4ed2: $67
    rrca                                          ; $4ed3: $0f
    inc bc                                        ; $4ed4: $03
    sub b                                         ; $4ed5: $90
    rrca                                          ; $4ed6: $0f
    inc bc                                        ; $4ed7: $03
    and a                                         ; $4ed8: $a7
    rrca                                          ; $4ed9: $0f
    inc bc                                        ; $4eda: $03
    add $0f                                       ; $4edb: $c6 $0f
    inc bc                                        ; $4edd: $03
    sub $0f                                       ; $4ede: $d6 $0f
    inc bc                                        ; $4ee0: $03
    ld [$030f], a                                 ; $4ee1: $ea $0f $03
    ldh a, [rIF]                                  ; $4ee4: $f0 $0f
    inc bc                                        ; $4ee6: $03
    cp $0f                                        ; $4ee7: $fe $0f
    inc bc                                        ; $4ee9: $03
    ld c, $10                                     ; $4eea: $0e $10
    inc bc                                        ; $4eec: $03
    ld h, [hl]                                    ; $4eed: $66
    db $10                                        ; $4eee: $10
    inc bc                                        ; $4eef: $03
    add b                                         ; $4ef0: $80
    db $10                                        ; $4ef1: $10
    inc bc                                        ; $4ef2: $03
    sbc [hl]                                      ; $4ef3: $9e
    db $10                                        ; $4ef4: $10
    inc bc                                        ; $4ef5: $03
    cp b                                          ; $4ef6: $b8
    db $10                                        ; $4ef7: $10
    inc bc                                        ; $4ef8: $03
    and $10                                       ; $4ef9: $e6 $10
    inc bc                                        ; $4efb: $03
    nop                                           ; $4efc: $00
    ld de, $1a03                                  ; $4efd: $11 $03 $1a
    ld de, $2303                                  ; $4f00: $11 $03 $23
    ld de, $4203                                  ; $4f03: $11 $03 $42
    ld de, $6a03                                  ; $4f06: $11 $03 $6a
    ld de, $8003                                  ; $4f09: $11 $03 $80
    ld de, $a603                                  ; $4f0c: $11 $03 $a6
    ld de, $b803                                  ; $4f0f: $11 $03 $b8
    ld de, $d903                                  ; $4f12: $11 $03 $d9
    ld de, $ef03                                  ; $4f15: $11 $03 $ef
    ld de, $0c03                                  ; $4f18: $11 $03 $0c
    ld [de], a                                    ; $4f1b: $12
    inc bc                                        ; $4f1c: $03
    inc hl                                        ; $4f1d: $23
    ld [de], a                                    ; $4f1e: $12
    inc bc                                        ; $4f1f: $03
    ld e, h                                       ; $4f20: $5c
    ld [de], a                                    ; $4f21: $12
    inc bc                                        ; $4f22: $03
    add d                                         ; $4f23: $82
    ld [de], a                                    ; $4f24: $12
    inc bc                                        ; $4f25: $03
    adc d                                         ; $4f26: $8a
    ld [de], a                                    ; $4f27: $12
    inc bc                                        ; $4f28: $03
    sub [hl]                                      ; $4f29: $96
    ld [de], a                                    ; $4f2a: $12
    inc bc                                        ; $4f2b: $03
    or l                                          ; $4f2c: $b5
    ld [de], a                                    ; $4f2d: $12
    inc bc                                        ; $4f2e: $03
    pop bc                                        ; $4f2f: $c1
    ld [de], a                                    ; $4f30: $12
    inc bc                                        ; $4f31: $03
    pop de                                        ; $4f32: $d1
    ld [de], a                                    ; $4f33: $12
    inc bc                                        ; $4f34: $03
    push af                                       ; $4f35: $f5
    ld [de], a                                    ; $4f36: $12
    inc bc                                        ; $4f37: $03
    dec hl                                        ; $4f38: $2b
    inc de                                        ; $4f39: $13
    inc bc                                        ; $4f3a: $03
    dec sp                                        ; $4f3b: $3b
    inc de                                        ; $4f3c: $13
    inc bc                                        ; $4f3d: $03
    ld l, e                                       ; $4f3e: $6b
    inc de                                        ; $4f3f: $13
    inc bc                                        ; $4f40: $03
    add [hl]                                      ; $4f41: $86
    inc de                                        ; $4f42: $13
    inc bc                                        ; $4f43: $03
    or a                                          ; $4f44: $b7
    inc de                                        ; $4f45: $13
    inc bc                                        ; $4f46: $03
    jp nz, Jump_000_0313                          ; $4f47: $c2 $13 $03

    ld e, e                                       ; $4f4a: $5b
    inc d                                         ; $4f4b: $14
    inc bc                                        ; $4f4c: $03
    ld l, [hl]                                    ; $4f4d: $6e
    inc d                                         ; $4f4e: $14
    inc bc                                        ; $4f4f: $03
    sbc e                                         ; $4f50: $9b
    inc d                                         ; $4f51: $14
    inc bc                                        ; $4f52: $03
    ei                                            ; $4f53: $fb
    inc d                                         ; $4f54: $14
    inc bc                                        ; $4f55: $03
    ld [hl+], a                                   ; $4f56: $22
    dec d                                         ; $4f57: $15
    inc bc                                        ; $4f58: $03
    ld b, c                                       ; $4f59: $41
    dec d                                         ; $4f5a: $15
    inc bc                                        ; $4f5b: $03
    ld [hl], e                                    ; $4f5c: $73
    dec d                                         ; $4f5d: $15
    inc bc                                        ; $4f5e: $03
    and e                                         ; $4f5f: $a3
    dec d                                         ; $4f60: $15
    inc bc                                        ; $4f61: $03
    ld [$0315], a                                 ; $4f62: $ea $15 $03
    rra                                           ; $4f65: $1f
    ld d, $03                                     ; $4f66: $16 $03
    ld b, b                                       ; $4f68: $40
    ld d, $03                                     ; $4f69: $16 $03
    ld a, e                                       ; $4f6b: $7b
    ld d, $03                                     ; $4f6c: $16 $03
    sub [hl]                                      ; $4f6e: $96
    ld d, $03                                     ; $4f6f: $16 $03
    xor [hl]                                      ; $4f71: $ae
    ld d, $03                                     ; $4f72: $16 $03
    ld [$0317], sp                                ; $4f74: $08 $17 $03
    ld b, a                                       ; $4f77: $47
    rla                                           ; $4f78: $17
    inc bc                                        ; $4f79: $03
    ld d, a                                       ; $4f7a: $57
    rla                                           ; $4f7b: $17
    inc bc                                        ; $4f7c: $03
    ld [hl], l                                    ; $4f7d: $75
    rla                                           ; $4f7e: $17
    inc bc                                        ; $4f7f: $03
    sub d                                         ; $4f80: $92
    rla                                           ; $4f81: $17
    inc bc                                        ; $4f82: $03
    sub a                                         ; $4f83: $97
    rla                                           ; $4f84: $17
    inc bc                                        ; $4f85: $03
    or c                                          ; $4f86: $b1
    rla                                           ; $4f87: $17
    inc bc                                        ; $4f88: $03
    push de                                       ; $4f89: $d5
    rla                                           ; $4f8a: $17
    inc bc                                        ; $4f8b: $03
    jp c, $0318                                   ; $4f8c: $da $18 $03

    ldh [rNR23], a                                ; $4f8f: $e0 $18
    inc bc                                        ; $4f91: $03
    rst $28                                       ; $4f92: $ef
    jr jr_05f_4f98                                ; $4f93: $18 $03

    rst $38                                       ; $4f95: $ff
    jr jr_05f_4f9b                                ; $4f96: $18 $03

jr_05f_4f98:
    ld [hl-], a                                   ; $4f98: $32
    add hl, de                                    ; $4f99: $19
    inc bc                                        ; $4f9a: $03

jr_05f_4f9b:
    ld c, [hl]                                    ; $4f9b: $4e
    add hl, de                                    ; $4f9c: $19
    inc bc                                        ; $4f9d: $03
    add e                                         ; $4f9e: $83
    add hl, de                                    ; $4f9f: $19
    inc bc                                        ; $4fa0: $03
    and h                                         ; $4fa1: $a4
    add hl, de                                    ; $4fa2: $19
    inc bc                                        ; $4fa3: $03
    call nc, Call_000_0319                        ; $4fa4: $d4 $19 $03
    db $e4                                        ; $4fa7: $e4
    add hl, de                                    ; $4fa8: $19
    inc bc                                        ; $4fa9: $03
    db $eb                                        ; $4faa: $eb
    add hl, de                                    ; $4fab: $19
    inc bc                                        ; $4fac: $03
    rrca                                          ; $4fad: $0f
    ld a, [de]                                    ; $4fae: $1a
    inc bc                                        ; $4faf: $03
    ld [hl], l                                    ; $4fb0: $75
    ld a, [de]                                    ; $4fb1: $1a
    inc bc                                        ; $4fb2: $03
    adc h                                         ; $4fb3: $8c
    ld a, [de]                                    ; $4fb4: $1a
    inc bc                                        ; $4fb5: $03
    ld [$031a], a                                 ; $4fb6: $ea $1a $03
    ld b, d                                       ; $4fb9: $42
    dec de                                        ; $4fba: $1b
    inc bc                                        ; $4fbb: $03
    xor l                                         ; $4fbc: $ad
    dec de                                        ; $4fbd: $1b
    inc bc                                        ; $4fbe: $03
    add hl, bc                                    ; $4fbf: $09
    inc e                                         ; $4fc0: $1c
    inc bc                                        ; $4fc1: $03
    ld h, e                                       ; $4fc2: $63
    inc e                                         ; $4fc3: $1c
    inc bc                                        ; $4fc4: $03
    sub e                                         ; $4fc5: $93
    inc e                                         ; $4fc6: $1c
    inc bc                                        ; $4fc7: $03
    call nc, Call_000_031c                        ; $4fc8: $d4 $1c $03
    rlca                                          ; $4fcb: $07
    dec e                                         ; $4fcc: $1d
    inc bc                                        ; $4fcd: $03
    ld h, b                                       ; $4fce: $60
    dec e                                         ; $4fcf: $1d
    inc bc                                        ; $4fd0: $03
    ld l, l                                       ; $4fd1: $6d
    dec e                                         ; $4fd2: $1d
    inc bc                                        ; $4fd3: $03
    ld [hl], e                                    ; $4fd4: $73
    dec e                                         ; $4fd5: $1d
    inc bc                                        ; $4fd6: $03
    ld a, a                                       ; $4fd7: $7f
    dec e                                         ; $4fd8: $1d
    inc bc                                        ; $4fd9: $03
    and l                                         ; $4fda: $a5
    dec e                                         ; $4fdb: $1d
    inc bc                                        ; $4fdc: $03
    or l                                          ; $4fdd: $b5
    dec e                                         ; $4fde: $1d
    inc bc                                        ; $4fdf: $03
    rr l                                          ; $4fe0: $cb $1d
    inc bc                                        ; $4fe2: $03
    reti                                          ; $4fe3: $d9


    dec e                                         ; $4fe4: $1d
    inc bc                                        ; $4fe5: $03
    db $f4                                        ; $4fe6: $f4
    dec e                                         ; $4fe7: $1d
    inc bc                                        ; $4fe8: $03
    inc b                                         ; $4fe9: $04
    ld e, $03                                     ; $4fea: $1e $03
    dec de                                        ; $4fec: $1b
    ld e, $03                                     ; $4fed: $1e $03
    ld b, c                                       ; $4fef: $41
    ld e, $03                                     ; $4ff0: $1e $03
    ld d, e                                       ; $4ff2: $53
    ld e, $03                                     ; $4ff3: $1e $03
    ld l, e                                       ; $4ff5: $6b
    ld e, $03                                     ; $4ff6: $1e $03
    ld [hl], d                                    ; $4ff8: $72
    ld e, $03                                     ; $4ff9: $1e $03
    add a                                         ; $4ffb: $87
    ld e, $03                                     ; $4ffc: $1e $03
    xor h                                         ; $4ffe: $ac
    ld e, $03                                     ; $4fff: $1e $03
    ret z                                         ; $5001: $c8

    ld e, $03                                     ; $5002: $1e $03
    ld sp, hl                                     ; $5004: $f9
    ld e, $03                                     ; $5005: $1e $03
    ld a, [de]                                    ; $5007: $1a
    rra                                           ; $5008: $1f
    inc bc                                        ; $5009: $03
    ld e, e                                       ; $500a: $5b
    rra                                           ; $500b: $1f
    inc bc                                        ; $500c: $03
    halt                                          ; $500d: $76
    rra                                           ; $500e: $1f
    inc bc                                        ; $500f: $03
    sbc d                                         ; $5010: $9a
    rra                                           ; $5011: $1f
    inc bc                                        ; $5012: $03
    rst $00                                       ; $5013: $c7
    rra                                           ; $5014: $1f
    inc bc                                        ; $5015: $03
    db $f4                                        ; $5016: $f4
    rra                                           ; $5017: $1f
    inc bc                                        ; $5018: $03
    dec c                                         ; $5019: $0d
    jr nz, jr_05f_501f                            ; $501a: $20 $03

    ld d, $20                                     ; $501c: $16 $20
    inc bc                                        ; $501e: $03

jr_05f_501f:
    scf                                           ; $501f: $37
    jr nz, jr_05f_5025                            ; $5020: $20 $03

    ld a, $20                                     ; $5022: $3e $20
    inc bc                                        ; $5024: $03

jr_05f_5025:
    ld d, c                                       ; $5025: $51
    jr nz, jr_05f_502b                            ; $5026: $20 $03

    ld e, a                                       ; $5028: $5f
    jr nz, jr_05f_502e                            ; $5029: $20 $03

jr_05f_502b:
    ld [hl], l                                    ; $502b: $75
    jr nz, jr_05f_5031                            ; $502c: $20 $03

jr_05f_502e:
    add h                                         ; $502e: $84
    jr nz, jr_05f_5034                            ; $502f: $20 $03

jr_05f_5031:
    sub e                                         ; $5031: $93
    jr nz, jr_05f_5037                            ; $5032: $20 $03

jr_05f_5034:
    sbc h                                         ; $5034: $9c
    jr nz, jr_05f_503a                            ; $5035: $20 $03

jr_05f_5037:
    xor l                                         ; $5037: $ad
    jr nz, jr_05f_503d                            ; $5038: $20 $03

jr_05f_503a:
    cp c                                          ; $503a: $b9
    jr nz, jr_05f_5040                            ; $503b: $20 $03

jr_05f_503d:
    cp a                                          ; $503d: $bf
    jr nz, jr_05f_5043                            ; $503e: $20 $03

jr_05f_5040:
    jp z, Jump_000_0320                           ; $5040: $ca $20 $03

jr_05f_5043:
    jp nc, Jump_000_0320                          ; $5043: $d2 $20 $03

    sbc $20                                       ; $5046: $de $20
    inc bc                                        ; $5048: $03
    push hl                                       ; $5049: $e5
    jr nz, jr_05f_504f                            ; $504a: $20 $03

    ld [$0320], a                                 ; $504c: $ea $20 $03

jr_05f_504f:
    ldh a, [rNR41]                                ; $504f: $f0 $20
    inc bc                                        ; $5051: $03
    ld sp, hl                                     ; $5052: $f9
    jr nz, @+$05                                  ; $5053: $20 $03

    nop                                           ; $5055: $00
    ld hl, $0503                                  ; $5056: $21 $03 $05
    ld hl, $0903                                  ; $5059: $21 $03 $09
    ld hl, $0e03                                  ; $505c: $21 $03 $0e
    ld hl, $1403                                  ; $505f: $21 $03 $14
    ld hl, $1b03                                  ; $5062: $21 $03 $1b
    ld hl, $2403                                  ; $5065: $21 $03 $24
    ld hl, $2e03                                  ; $5068: $21 $03 $2e
    ld hl, $3603                                  ; $506b: $21 $03 $36
    ld hl, $4203                                  ; $506e: $21 $03 $42
    ld hl, $4e03                                  ; $5071: $21 $03 $4e
    ld hl, $5703                                  ; $5074: $21 $03 $57
    ld hl, $6203                                  ; $5077: $21 $03 $62
    ld hl, $6d03                                  ; $507a: $21 $03 $6d
    ld hl, $7903                                  ; $507d: $21 $03 $79
    ld hl, $8a03                                  ; $5080: $21 $03 $8a
    ld hl, $9303                                  ; $5083: $21 $03 $93
    ld hl, $9a03                                  ; $5086: $21 $03 $9a
    ld hl, $a503                                  ; $5089: $21 $03 $a5
    ld hl, $ac03                                  ; $508c: $21 $03 $ac
    ld hl, $b503                                  ; $508f: $21 $03 $b5
    ld hl, $be03                                  ; $5092: $21 $03 $be
    ld hl, $c703                                  ; $5095: $21 $03 $c7
    ld hl, $d203                                  ; $5098: $21 $03 $d2
    ld hl, $e203                                  ; $509b: $21 $03 $e2
    ld hl, $ea03                                  ; $509e: $21 $03 $ea
    ld hl, $f703                                  ; $50a1: $21 $03 $f7
    ld hl, $0303                                  ; $50a4: $21 $03 $03
    ld [hl+], a                                   ; $50a7: $22
    inc bc                                        ; $50a8: $03
    rrca                                          ; $50a9: $0f
    ld [hl+], a                                   ; $50aa: $22
    inc bc                                        ; $50ab: $03
    add hl, de                                    ; $50ac: $19
    ld [hl+], a                                   ; $50ad: $22
    inc bc                                        ; $50ae: $03
    inc hl                                        ; $50af: $23
    ld [hl+], a                                   ; $50b0: $22
    inc bc                                        ; $50b1: $03
    dec hl                                        ; $50b2: $2b
    ld [hl+], a                                   ; $50b3: $22
    inc bc                                        ; $50b4: $03
    dec [hl]                                      ; $50b5: $35
    ld [hl+], a                                   ; $50b6: $22
    inc bc                                        ; $50b7: $03
    ld b, c                                       ; $50b8: $41
    ld [hl+], a                                   ; $50b9: $22
    inc bc                                        ; $50ba: $03
    ld c, c                                       ; $50bb: $49
    ld [hl+], a                                   ; $50bc: $22
    inc bc                                        ; $50bd: $03
    ld d, d                                       ; $50be: $52
    ld [hl+], a                                   ; $50bf: $22
    inc bc                                        ; $50c0: $03
    ld e, h                                       ; $50c1: $5c
    ld [hl+], a                                   ; $50c2: $22
    inc bc                                        ; $50c3: $03
    ld l, b                                       ; $50c4: $68
    ld [hl+], a                                   ; $50c5: $22
    inc bc                                        ; $50c6: $03
    ld [hl], h                                    ; $50c7: $74
    ld [hl+], a                                   ; $50c8: $22
    inc bc                                        ; $50c9: $03
    ld a, l                                       ; $50ca: $7d
    ld [hl+], a                                   ; $50cb: $22
    inc bc                                        ; $50cc: $03
    add a                                         ; $50cd: $87
    ld [hl+], a                                   ; $50ce: $22
    inc bc                                        ; $50cf: $03
    sub d                                         ; $50d0: $92
    ld [hl+], a                                   ; $50d1: $22
    inc bc                                        ; $50d2: $03
    sbc l                                         ; $50d3: $9d
    ld [hl+], a                                   ; $50d4: $22
    inc bc                                        ; $50d5: $03
    xor b                                         ; $50d6: $a8
    ld [hl+], a                                   ; $50d7: $22
    inc bc                                        ; $50d8: $03
    or d                                          ; $50d9: $b2
    ld [hl+], a                                   ; $50da: $22
    inc bc                                        ; $50db: $03
    cp d                                          ; $50dc: $ba
    ld [hl+], a                                   ; $50dd: $22
    inc bc                                        ; $50de: $03
    call nz, $0322                                ; $50df: $c4 $22 $03
    db $d3                                        ; $50e2: $d3
    ld [hl+], a                                   ; $50e3: $22
    inc bc                                        ; $50e4: $03
    ldh [rNR43], a                                ; $50e5: $e0 $22
    inc bc                                        ; $50e7: $03
    add sp, $22                                   ; $50e8: $e8 $22
    inc bc                                        ; $50ea: $03
    rst $28                                       ; $50eb: $ef
    ld [hl+], a                                   ; $50ec: $22
    inc bc                                        ; $50ed: $03
    push af                                       ; $50ee: $f5
    ld [hl+], a                                   ; $50ef: $22
    inc bc                                        ; $50f0: $03
    ld bc, $0323                                  ; $50f1: $01 $23 $03
    db $10                                        ; $50f4: $10
    inc hl                                        ; $50f5: $23
    inc bc                                        ; $50f6: $03

Call_05f_50f7:
    dec e                                         ; $50f7: $1d
    inc hl                                        ; $50f8: $23
    inc bc                                        ; $50f9: $03
    jr z, jr_05f_511f                             ; $50fa: $28 $23

    inc bc                                        ; $50fc: $03
    inc [hl]                                      ; $50fd: $34
    inc hl                                        ; $50fe: $23
    inc bc                                        ; $50ff: $03
    ld b, h                                       ; $5100: $44
    inc hl                                        ; $5101: $23
    inc bc                                        ; $5102: $03
    ld c, a                                       ; $5103: $4f
    inc hl                                        ; $5104: $23
    inc bc                                        ; $5105: $03
    ld e, l                                       ; $5106: $5d
    inc hl                                        ; $5107: $23
    inc bc                                        ; $5108: $03
    ld h, l                                       ; $5109: $65
    inc hl                                        ; $510a: $23
    inc bc                                        ; $510b: $03
    ld l, l                                       ; $510c: $6d
    inc hl                                        ; $510d: $23
    inc bc                                        ; $510e: $03
    ld [hl], h                                    ; $510f: $74
    inc hl                                        ; $5110: $23
    inc bc                                        ; $5111: $03
    ld a, a                                       ; $5112: $7f
    inc hl                                        ; $5113: $23
    inc bc                                        ; $5114: $03
    add a                                         ; $5115: $87
    inc hl                                        ; $5116: $23
    inc bc                                        ; $5117: $03
    adc a                                         ; $5118: $8f
    inc hl                                        ; $5119: $23
    inc bc                                        ; $511a: $03
    sbc e                                         ; $511b: $9b
    inc hl                                        ; $511c: $23
    inc bc                                        ; $511d: $03
    and e                                         ; $511e: $a3

jr_05f_511f:
    inc hl                                        ; $511f: $23
    inc bc                                        ; $5120: $03
    xor d                                         ; $5121: $aa
    inc hl                                        ; $5122: $23
    inc bc                                        ; $5123: $03
    or l                                          ; $5124: $b5
    inc hl                                        ; $5125: $23
    inc bc                                        ; $5126: $03
    pop bc                                        ; $5127: $c1
    inc hl                                        ; $5128: $23
    inc bc                                        ; $5129: $03
    sla e                                         ; $512a: $cb $23
    inc bc                                        ; $512c: $03
    call nc, $0323                                ; $512d: $d4 $23 $03
    call c, $0323                                 ; $5130: $dc $23 $03
    rst $20                                       ; $5133: $e7
    inc hl                                        ; $5134: $23
    inc bc                                        ; $5135: $03
    rst $28                                       ; $5136: $ef
    inc hl                                        ; $5137: $23
    inc bc                                        ; $5138: $03
    or $23                                        ; $5139: $f6 $23
    inc bc                                        ; $513b: $03
    rst $38                                       ; $513c: $ff
    inc hl                                        ; $513d: $23
    inc bc                                        ; $513e: $03
    dec b                                         ; $513f: $05
    inc h                                         ; $5140: $24
    inc bc                                        ; $5141: $03
    ld a, [bc]                                    ; $5142: $0a
    inc h                                         ; $5143: $24
    inc bc                                        ; $5144: $03
    ld [de], a                                    ; $5145: $12
    inc h                                         ; $5146: $24
    inc bc                                        ; $5147: $03
    inc e                                         ; $5148: $1c
    inc h                                         ; $5149: $24
    inc bc                                        ; $514a: $03
    jr z, jr_05f_5171                             ; $514b: $28 $24

    inc bc                                        ; $514d: $03
    dec [hl]                                      ; $514e: $35
    inc h                                         ; $514f: $24
    inc bc                                        ; $5150: $03
    inc a                                         ; $5151: $3c
    inc h                                         ; $5152: $24
    inc bc                                        ; $5153: $03
    ld b, a                                       ; $5154: $47
    inc h                                         ; $5155: $24
    inc bc                                        ; $5156: $03
    ld c, a                                       ; $5157: $4f
    inc h                                         ; $5158: $24
    inc bc                                        ; $5159: $03
    ld d, a                                       ; $515a: $57
    inc h                                         ; $515b: $24
    inc bc                                        ; $515c: $03
    ld h, h                                       ; $515d: $64
    inc h                                         ; $515e: $24
    inc bc                                        ; $515f: $03
    ld l, e                                       ; $5160: $6b
    inc h                                         ; $5161: $24
    inc bc                                        ; $5162: $03
    ld [hl], e                                    ; $5163: $73
    inc h                                         ; $5164: $24
    inc bc                                        ; $5165: $03
    ld a, a                                       ; $5166: $7f
    inc h                                         ; $5167: $24
    inc bc                                        ; $5168: $03
    add [hl]                                      ; $5169: $86
    inc h                                         ; $516a: $24
    inc bc                                        ; $516b: $03
    sub l                                         ; $516c: $95
    inc h                                         ; $516d: $24
    inc bc                                        ; $516e: $03
    sbc [hl]                                      ; $516f: $9e
    inc h                                         ; $5170: $24

jr_05f_5171:
    inc bc                                        ; $5171: $03
    and l                                         ; $5172: $a5
    inc h                                         ; $5173: $24
    inc bc                                        ; $5174: $03
    xor [hl]                                      ; $5175: $ae
    inc h                                         ; $5176: $24
    inc bc                                        ; $5177: $03
    or a                                          ; $5178: $b7
    inc h                                         ; $5179: $24
    inc bc                                        ; $517a: $03
    ret z                                         ; $517b: $c8

    inc h                                         ; $517c: $24
    inc bc                                        ; $517d: $03
    ret nc                                        ; $517e: $d0

    inc h                                         ; $517f: $24
    inc bc                                        ; $5180: $03
    rst $10                                       ; $5181: $d7
    inc h                                         ; $5182: $24
    inc bc                                        ; $5183: $03
    db $db                                        ; $5184: $db
    inc h                                         ; $5185: $24
    inc bc                                        ; $5186: $03
    pop hl                                        ; $5187: $e1
    inc h                                         ; $5188: $24
    inc bc                                        ; $5189: $03
    ld [$0324], a                                 ; $518a: $ea $24 $03
    ld a, [c]                                     ; $518d: $f2
    inc h                                         ; $518e: $24
    inc bc                                        ; $518f: $03
    ld a, [$0324]                                 ; $5190: $fa $24 $03
    rlca                                          ; $5193: $07
    dec h                                         ; $5194: $25
    inc bc                                        ; $5195: $03
    inc d                                         ; $5196: $14
    dec h                                         ; $5197: $25
    inc bc                                        ; $5198: $03
    inc e                                         ; $5199: $1c
    dec h                                         ; $519a: $25
    inc bc                                        ; $519b: $03
    add hl, hl                                    ; $519c: $29
    dec h                                         ; $519d: $25
    inc bc                                        ; $519e: $03
    cpl                                           ; $519f: $2f
    dec h                                         ; $51a0: $25
    inc bc                                        ; $51a1: $03
    ld a, [hl-]                                   ; $51a2: $3a
    dec h                                         ; $51a3: $25
    inc bc                                        ; $51a4: $03
    ld b, e                                       ; $51a5: $43
    dec h                                         ; $51a6: $25
    inc bc                                        ; $51a7: $03
    ld c, l                                       ; $51a8: $4d
    dec h                                         ; $51a9: $25
    inc bc                                        ; $51aa: $03
    ld e, b                                       ; $51ab: $58
    dec h                                         ; $51ac: $25
    inc bc                                        ; $51ad: $03
    ld e, [hl]                                    ; $51ae: $5e
    dec h                                         ; $51af: $25
    inc bc                                        ; $51b0: $03
    ld l, b                                       ; $51b1: $68
    dec h                                         ; $51b2: $25
    inc bc                                        ; $51b3: $03
    ld l, a                                       ; $51b4: $6f
    dec h                                         ; $51b5: $25
    inc bc                                        ; $51b6: $03
    ld a, c                                       ; $51b7: $79
    dec h                                         ; $51b8: $25
    inc bc                                        ; $51b9: $03
    add l                                         ; $51ba: $85
    dec h                                         ; $51bb: $25
    inc bc                                        ; $51bc: $03
    sub b                                         ; $51bd: $90
    dec h                                         ; $51be: $25
    inc bc                                        ; $51bf: $03
    sbc [hl]                                      ; $51c0: $9e
    dec h                                         ; $51c1: $25
    inc bc                                        ; $51c2: $03
    or d                                          ; $51c3: $b2
    dec h                                         ; $51c4: $25
    inc bc                                        ; $51c5: $03
    cp [hl]                                       ; $51c6: $be
    dec h                                         ; $51c7: $25
    inc bc                                        ; $51c8: $03
    jp Jump_000_0325                              ; $51c9: $c3 $25 $03


    call z, Call_000_0325                         ; $51cc: $cc $25 $03
    call c, Call_000_0325                         ; $51cf: $dc $25 $03
    pop af                                        ; $51d2: $f1
    dec h                                         ; $51d3: $25
    inc bc                                        ; $51d4: $03
    ld b, $26                                     ; $51d5: $06 $26
    inc bc                                        ; $51d7: $03
    rla                                           ; $51d8: $17
    ld h, $03                                     ; $51d9: $26 $03
    jr c, @+$28                                   ; $51db: $38 $26

    inc bc                                        ; $51dd: $03
    ld d, c                                       ; $51de: $51
    ld h, $03                                     ; $51df: $26 $03
    ld [hl], l                                    ; $51e1: $75
    ld h, $03                                     ; $51e2: $26 $03
    adc l                                         ; $51e4: $8d
    ld h, $03                                     ; $51e5: $26 $03
    xor h                                         ; $51e7: $ac
    ld h, $03                                     ; $51e8: $26 $03
    sla [hl]                                      ; $51ea: $cb $26
    inc bc                                        ; $51ec: $03
    adc $26                                       ; $51ed: $ce $26
    inc bc                                        ; $51ef: $03
    jp nc, Jump_000_0326                          ; $51f0: $d2 $26 $03

    call c, Call_000_0326                         ; $51f3: $dc $26 $03
    db $e3                                        ; $51f6: $e3
    ld h, $03                                     ; $51f7: $26 $03
    rst $20                                       ; $51f9: $e7
    ld h, $03                                     ; $51fa: $26 $03
    db $eb                                        ; $51fc: $eb
    ld h, $03                                     ; $51fd: $26 $03
    pop af                                        ; $51ff: $f1
    ld h, $03                                     ; $5200: $26 $03
    ld a, [$0326]                                 ; $5202: $fa $26 $03
    inc c                                         ; $5205: $0c
    daa                                           ; $5206: $27
    inc bc                                        ; $5207: $03
    inc hl                                        ; $5208: $23
    daa                                           ; $5209: $27
    inc bc                                        ; $520a: $03
    ld [hl-], a                                   ; $520b: $32
    daa                                           ; $520c: $27
    inc bc                                        ; $520d: $03
    ld b, l                                       ; $520e: $45
    daa                                           ; $520f: $27
    inc bc                                        ; $5210: $03
    ld d, h                                       ; $5211: $54
    daa                                           ; $5212: $27
    inc bc                                        ; $5213: $03
    ld l, d                                       ; $5214: $6a
    daa                                           ; $5215: $27
    inc bc                                        ; $5216: $03
    add h                                         ; $5217: $84
    daa                                           ; $5218: $27
    inc bc                                        ; $5219: $03
    adc a                                         ; $521a: $8f
    daa                                           ; $521b: $27
    inc bc                                        ; $521c: $03
    sbc a                                         ; $521d: $9f
    daa                                           ; $521e: $27
    inc bc                                        ; $521f: $03
    xor h                                         ; $5220: $ac
    daa                                           ; $5221: $27
    inc bc                                        ; $5222: $03
    push bc                                       ; $5223: $c5
    daa                                           ; $5224: $27
    inc bc                                        ; $5225: $03
    db $d3                                        ; $5226: $d3
    daa                                           ; $5227: $27
    inc bc                                        ; $5228: $03
    rst $30                                       ; $5229: $f7
    daa                                           ; $522a: $27
    inc bc                                        ; $522b: $03
    inc de                                        ; $522c: $13
    jr z, jr_05f_5232                             ; $522d: $28 $03

    ld [hl], $28                                  ; $522f: $36 $28
    inc bc                                        ; $5231: $03

jr_05f_5232:
    ld c, d                                       ; $5232: $4a
    jr z, jr_05f_5238                             ; $5233: $28 $03

    ld l, b                                       ; $5235: $68
    jr z, jr_05f_523b                             ; $5236: $28 $03

jr_05f_5238:
    ld [hl], c                                    ; $5238: $71
    jr z, jr_05f_523e                             ; $5239: $28 $03

jr_05f_523b:
    add l                                         ; $523b: $85
    jr z, jr_05f_5241                             ; $523c: $28 $03

jr_05f_523e:
    sub e                                         ; $523e: $93
    jr z, jr_05f_5244                             ; $523f: $28 $03

jr_05f_5241:
    xor a                                         ; $5241: $af
    jr z, jr_05f_5247                             ; $5242: $28 $03

jr_05f_5244:
    rst $08                                       ; $5244: $cf
    jr z, jr_05f_524a                             ; $5245: $28 $03

jr_05f_5247:
    ld [c], a                                     ; $5247: $e2
    jr z, jr_05f_524d                             ; $5248: $28 $03

jr_05f_524a:
    ld sp, hl                                     ; $524a: $f9
    jr z, jr_05f_5250                             ; $524b: $28 $03

jr_05f_524d:
    dec c                                         ; $524d: $0d
    add hl, hl                                    ; $524e: $29
    inc bc                                        ; $524f: $03

jr_05f_5250:
    ld a, [de]                                    ; $5250: $1a
    add hl, hl                                    ; $5251: $29
    inc bc                                        ; $5252: $03
    scf                                           ; $5253: $37
    add hl, hl                                    ; $5254: $29
    inc bc                                        ; $5255: $03
    ld c, b                                       ; $5256: $48
    add hl, hl                                    ; $5257: $29
    inc bc                                        ; $5258: $03
    ld l, l                                       ; $5259: $6d
    add hl, hl                                    ; $525a: $29
    inc bc                                        ; $525b: $03
    halt                                          ; $525c: $76
    add hl, hl                                    ; $525d: $29
    inc bc                                        ; $525e: $03
    sbc d                                         ; $525f: $9a
    add hl, hl                                    ; $5260: $29
    inc bc                                        ; $5261: $03
    cp d                                          ; $5262: $ba
    add hl, hl                                    ; $5263: $29
    inc bc                                        ; $5264: $03
    sbc $29                                       ; $5265: $de $29
    inc bc                                        ; $5267: $03
    ld a, [c]                                     ; $5268: $f2
    add hl, hl                                    ; $5269: $29
    inc bc                                        ; $526a: $03
    ld a, [bc]                                    ; $526b: $0a
    ld a, [hl+]                                   ; $526c: $2a
    inc bc                                        ; $526d: $03
    ld e, $2a                                     ; $526e: $1e $2a
    inc bc                                        ; $5270: $03
    jr c, jr_05f_529d                             ; $5271: $38 $2a

    inc bc                                        ; $5273: $03
    ld b, b                                       ; $5274: $40
    ld a, [hl+]                                   ; $5275: $2a
    inc bc                                        ; $5276: $03
    ld h, e                                       ; $5277: $63
    ld a, [hl+]                                   ; $5278: $2a
    inc bc                                        ; $5279: $03
    ld l, d                                       ; $527a: $6a
    ld a, [hl+]                                   ; $527b: $2a
    inc bc                                        ; $527c: $03
    adc l                                         ; $527d: $8d
    ld a, [hl+]                                   ; $527e: $2a
    inc bc                                        ; $527f: $03
    and b                                         ; $5280: $a0
    ld a, [hl+]                                   ; $5281: $2a
    inc bc                                        ; $5282: $03
    or h                                          ; $5283: $b4
    ld a, [hl+]                                   ; $5284: $2a
    inc bc                                        ; $5285: $03
    pop de                                        ; $5286: $d1
    ld a, [hl+]                                   ; $5287: $2a
    inc bc                                        ; $5288: $03
    rst $20                                       ; $5289: $e7
    ld a, [hl+]                                   ; $528a: $2a
    inc bc                                        ; $528b: $03
    rst $38                                       ; $528c: $ff
    ld a, [hl+]                                   ; $528d: $2a
    inc bc                                        ; $528e: $03
    inc de                                        ; $528f: $13
    dec hl                                        ; $5290: $2b
    inc bc                                        ; $5291: $03
    ld [hl+], a                                   ; $5292: $22
    dec hl                                        ; $5293: $2b
    inc bc                                        ; $5294: $03
    add hl, sp                                    ; $5295: $39
    dec hl                                        ; $5296: $2b
    inc bc                                        ; $5297: $03
    ld b, l                                       ; $5298: $45
    dec hl                                        ; $5299: $2b
    inc bc                                        ; $529a: $03
    ld e, h                                       ; $529b: $5c
    dec hl                                        ; $529c: $2b

jr_05f_529d:
    inc bc                                        ; $529d: $03
    ld h, l                                       ; $529e: $65
    dec hl                                        ; $529f: $2b
    inc bc                                        ; $52a0: $03
    ld [hl], h                                    ; $52a1: $74
    dec hl                                        ; $52a2: $2b
    inc bc                                        ; $52a3: $03
    adc e                                         ; $52a4: $8b
    dec hl                                        ; $52a5: $2b
    inc bc                                        ; $52a6: $03
    and [hl]                                      ; $52a7: $a6
    dec hl                                        ; $52a8: $2b
    inc bc                                        ; $52a9: $03
    cp c                                          ; $52aa: $b9
    dec hl                                        ; $52ab: $2b
    inc bc                                        ; $52ac: $03
    rst $10                                       ; $52ad: $d7
    dec hl                                        ; $52ae: $2b
    inc bc                                        ; $52af: $03
    ld [c], a                                     ; $52b0: $e2
    dec hl                                        ; $52b1: $2b
    inc bc                                        ; $52b2: $03
    push af                                       ; $52b3: $f5
    dec hl                                        ; $52b4: $2b
    inc bc                                        ; $52b5: $03
    ld [$032c], sp                                ; $52b6: $08 $2c $03
    inc h                                         ; $52b9: $24
    inc l                                         ; $52ba: $2c
    inc bc                                        ; $52bb: $03
    dec l                                         ; $52bc: $2d
    inc l                                         ; $52bd: $2c
    inc bc                                        ; $52be: $03
    inc a                                         ; $52bf: $3c
    inc l                                         ; $52c0: $2c
    inc bc                                        ; $52c1: $03
    ld d, l                                       ; $52c2: $55
    inc l                                         ; $52c3: $2c
    inc bc                                        ; $52c4: $03
    ld l, e                                       ; $52c5: $6b
    inc l                                         ; $52c6: $2c
    inc bc                                        ; $52c7: $03
    ld a, [hl]                                    ; $52c8: $7e
    inc l                                         ; $52c9: $2c
    inc bc                                        ; $52ca: $03
    sbc d                                         ; $52cb: $9a
    inc l                                         ; $52cc: $2c
    inc bc                                        ; $52cd: $03
    and l                                         ; $52ce: $a5
    inc l                                         ; $52cf: $2c
    inc bc                                        ; $52d0: $03
    rst $00                                       ; $52d1: $c7
    inc l                                         ; $52d2: $2c
    inc bc                                        ; $52d3: $03
    ld a, [$032c]                                 ; $52d4: $fa $2c $03
    inc l                                         ; $52d7: $2c
    dec l                                         ; $52d8: $2d
    inc bc                                        ; $52d9: $03
    dec l                                         ; $52da: $2d
    dec l                                         ; $52db: $2d
    inc bc                                        ; $52dc: $03
    ld l, l                                       ; $52dd: $6d
    dec l                                         ; $52de: $2d
    inc bc                                        ; $52df: $03
    adc a                                         ; $52e0: $8f
    dec l                                         ; $52e1: $2d
    inc bc                                        ; $52e2: $03
    or l                                          ; $52e3: $b5
    dec l                                         ; $52e4: $2d
    inc bc                                        ; $52e5: $03
    or $2d                                        ; $52e6: $f6 $2d
    inc bc                                        ; $52e8: $03
    ld b, c                                       ; $52e9: $41
    ld l, $03                                     ; $52ea: $2e $03
    ld [hl], e                                    ; $52ec: $73
    ld l, $03                                     ; $52ed: $2e $03
    sub e                                         ; $52ef: $93
    ld l, $03                                     ; $52f0: $2e $03
    pop hl                                        ; $52f2: $e1
    ld l, $03                                     ; $52f3: $2e $03
    inc bc                                        ; $52f5: $03
    cpl                                           ; $52f6: $2f
    inc bc                                        ; $52f7: $03
    ld sp, $032f                                  ; $52f8: $31 $2f $03
    ld h, h                                       ; $52fb: $64
    cpl                                           ; $52fc: $2f
    inc bc                                        ; $52fd: $03
    and h                                         ; $52fe: $a4
    cpl                                           ; $52ff: $2f
    inc bc                                        ; $5300: $03
    rst $28                                       ; $5301: $ef
    cpl                                           ; $5302: $2f
    inc bc                                        ; $5303: $03
    ld sp, hl                                     ; $5304: $f9
    cpl                                           ; $5305: $2f
    inc bc                                        ; $5306: $03
    ld bc, $0330                                  ; $5307: $01 $30 $03
    ld c, $30                                     ; $530a: $0e $30
    inc bc                                        ; $530c: $03
    ld a, [de]                                    ; $530d: $1a
    jr nc, jr_05f_5313                            ; $530e: $30 $03

    daa                                           ; $5310: $27
    jr nc, jr_05f_5316                            ; $5311: $30 $03

jr_05f_5313:
    inc sp                                        ; $5313: $33
    jr nc, jr_05f_5319                            ; $5314: $30 $03

jr_05f_5316:
    ld b, b                                       ; $5316: $40
    jr nc, jr_05f_531c                            ; $5317: $30 $03

jr_05f_5319:
    ld c, a                                       ; $5319: $4f
    jr nc, jr_05f_531f                            ; $531a: $30 $03

jr_05f_531c:
    ld e, e                                       ; $531c: $5b
    jr nc, jr_05f_5322                            ; $531d: $30 $03

jr_05f_531f:
    ld l, c                                       ; $531f: $69
    jr nc, jr_05f_5325                            ; $5320: $30 $03

jr_05f_5322:
    ld [hl], h                                    ; $5322: $74
    jr nc, jr_05f_5328                            ; $5323: $30 $03

jr_05f_5325:
    ld a, [hl]                                    ; $5325: $7e
    jr nc, jr_05f_532b                            ; $5326: $30 $03

jr_05f_5328:
    adc c                                         ; $5328: $89
    jr nc, jr_05f_532e                            ; $5329: $30 $03

jr_05f_532b:
    sub h                                         ; $532b: $94
    jr nc, jr_05f_5331                            ; $532c: $30 $03

jr_05f_532e:
    and c                                         ; $532e: $a1
    jr nc, jr_05f_5334                            ; $532f: $30 $03

jr_05f_5331:
    xor h                                         ; $5331: $ac
    jr nc, jr_05f_5337                            ; $5332: $30 $03

jr_05f_5334:
    or [hl]                                       ; $5334: $b6
    jr nc, jr_05f_533a                            ; $5335: $30 $03

jr_05f_5337:
    cp l                                          ; $5337: $bd
    jr nc, jr_05f_533d                            ; $5338: $30 $03

jr_05f_533a:
    jp z, $0330                                   ; $533a: $ca $30 $03

jr_05f_533d:
    rst $10                                       ; $533d: $d7
    jr nc, jr_05f_5343                            ; $533e: $30 $03

    pop hl                                        ; $5340: $e1
    jr nc, jr_05f_5346                            ; $5341: $30 $03

jr_05f_5343:
    db $eb                                        ; $5343: $eb
    jr nc, jr_05f_5349                            ; $5344: $30 $03

jr_05f_5346:
    rst $30                                       ; $5346: $f7
    jr nc, @+$05                                  ; $5347: $30 $03

jr_05f_5349:
    ld [bc], a                                    ; $5349: $02
    ld sp, $0e03                                  ; $534a: $31 $03 $0e
    ld sp, $1903                                  ; $534d: $31 $03 $19
    ld sp, $2303                                  ; $5350: $31 $03 $23
    ld sp, $2f03                                  ; $5353: $31 $03 $2f
    ld sp, $3e03                                  ; $5356: $31 $03 $3e
    ld sp, $4a03                                  ; $5359: $31 $03 $4a
    ld sp, $5203                                  ; $535c: $31 $03 $52
    ld sp, $5e03                                  ; $535f: $31 $03 $5e
    ld sp, $6903                                  ; $5362: $31 $03 $69
    ld sp, $7503                                  ; $5365: $31 $03 $75
    ld sp, $8003                                  ; $5368: $31 $03 $80
    ld sp, $8e03                                  ; $536b: $31 $03 $8e
    ld sp, $9803                                  ; $536e: $31 $03 $98
    ld sp, $a303                                  ; $5371: $31 $03 $a3
    ld sp, $b003                                  ; $5374: $31 $03 $b0
    ld sp, $bc03                                  ; $5377: $31 $03 $bc
    ld sp, $c703                                  ; $537a: $31 $03 $c7
    ld sp, $d203                                  ; $537d: $31 $03 $d2
    ld sp, $de03                                  ; $5380: $31 $03 $de
    ld sp, $eb03                                  ; $5383: $31 $03 $eb
    ld sp, $f903                                  ; $5386: $31 $03 $f9
    ld sp, $ff03                                  ; $5389: $31 $03 $ff
    ld sp, $0903                                  ; $538c: $31 $03 $09
    ld [hl-], a                                   ; $538f: $32
    inc bc                                        ; $5390: $03
    dec d                                         ; $5391: $15
    ld [hl-], a                                   ; $5392: $32
    inc bc                                        ; $5393: $03
    ld a, [de]                                    ; $5394: $1a
    ld [hl-], a                                   ; $5395: $32
    inc bc                                        ; $5396: $03
    inc h                                         ; $5397: $24
    ld [hl-], a                                   ; $5398: $32
    inc bc                                        ; $5399: $03
    ld l, $32                                     ; $539a: $2e $32
    inc bc                                        ; $539c: $03
    ld a, [hl-]                                   ; $539d: $3a
    ld [hl-], a                                   ; $539e: $32
    inc bc                                        ; $539f: $03
    ld c, b                                       ; $53a0: $48
    ld [hl-], a                                   ; $53a1: $32
    inc bc                                        ; $53a2: $03
    ld d, h                                       ; $53a3: $54
    ld [hl-], a                                   ; $53a4: $32
    inc bc                                        ; $53a5: $03
    ld h, c                                       ; $53a6: $61
    ld [hl-], a                                   ; $53a7: $32
    inc bc                                        ; $53a8: $03
    ld l, [hl]                                    ; $53a9: $6e
    ld [hl-], a                                   ; $53aa: $32
    inc bc                                        ; $53ab: $03
    ld [hl], a                                    ; $53ac: $77
    ld [hl-], a                                   ; $53ad: $32
    inc bc                                        ; $53ae: $03
    add e                                         ; $53af: $83
    ld [hl-], a                                   ; $53b0: $32
    inc bc                                        ; $53b1: $03
    sub d                                         ; $53b2: $92
    ld [hl-], a                                   ; $53b3: $32
    inc bc                                        ; $53b4: $03
    sbc b                                         ; $53b5: $98
    ld [hl-], a                                   ; $53b6: $32
    inc bc                                        ; $53b7: $03
    and a                                         ; $53b8: $a7
    ld [hl-], a                                   ; $53b9: $32
    inc bc                                        ; $53ba: $03
    or h                                          ; $53bb: $b4
    ld [hl-], a                                   ; $53bc: $32
    inc bc                                        ; $53bd: $03
    cp [hl]                                       ; $53be: $be
    ld [hl-], a                                   ; $53bf: $32
    inc bc                                        ; $53c0: $03
    jp z, $0332                                   ; $53c1: $ca $32 $03

    push de                                       ; $53c4: $d5
    ld [hl-], a                                   ; $53c5: $32
    inc bc                                        ; $53c6: $03
    ld [c], a                                     ; $53c7: $e2
    ld [hl-], a                                   ; $53c8: $32
    inc bc                                        ; $53c9: $03
    xor $32                                       ; $53ca: $ee $32
    inc bc                                        ; $53cc: $03
    ei                                            ; $53cd: $fb
    ld [hl-], a                                   ; $53ce: $32
    inc bc                                        ; $53cf: $03
    dec b                                         ; $53d0: $05
    inc sp                                        ; $53d1: $33
    inc bc                                        ; $53d2: $03
    ld de, $0333                                  ; $53d3: $11 $33 $03
    ld e, $33                                     ; $53d6: $1e $33
    inc bc                                        ; $53d8: $03
    ld a, [hl+]                                   ; $53d9: $2a
    inc sp                                        ; $53da: $33
    inc bc                                        ; $53db: $03
    dec [hl]                                      ; $53dc: $35
    inc sp                                        ; $53dd: $33
    inc bc                                        ; $53de: $03
    ld b, c                                       ; $53df: $41
    inc sp                                        ; $53e0: $33
    inc bc                                        ; $53e1: $03
    ld c, l                                       ; $53e2: $4d
    inc sp                                        ; $53e3: $33
    inc bc                                        ; $53e4: $03
    ld e, d                                       ; $53e5: $5a
    inc sp                                        ; $53e6: $33
    inc bc                                        ; $53e7: $03
    ld h, e                                       ; $53e8: $63
    inc sp                                        ; $53e9: $33
    inc bc                                        ; $53ea: $03
    ld l, a                                       ; $53eb: $6f
    inc sp                                        ; $53ec: $33
    inc bc                                        ; $53ed: $03
    ld [hl], a                                    ; $53ee: $77
    inc sp                                        ; $53ef: $33
    inc bc                                        ; $53f0: $03
    add c                                         ; $53f1: $81
    inc sp                                        ; $53f2: $33
    inc bc                                        ; $53f3: $03
    adc h                                         ; $53f4: $8c
    inc sp                                        ; $53f5: $33
    inc bc                                        ; $53f6: $03
    sbc d                                         ; $53f7: $9a
    inc sp                                        ; $53f8: $33
    inc bc                                        ; $53f9: $03
    and a                                         ; $53fa: $a7
    inc sp                                        ; $53fb: $33
    inc bc                                        ; $53fc: $03
    or b                                          ; $53fd: $b0
    inc sp                                        ; $53fe: $33
    inc bc                                        ; $53ff: $03
    cp e                                          ; $5400: $bb
    inc sp                                        ; $5401: $33
    inc bc                                        ; $5402: $03
    ret z                                         ; $5403: $c8

    inc sp                                        ; $5404: $33
    inc bc                                        ; $5405: $03
    pop de                                        ; $5406: $d1
    inc sp                                        ; $5407: $33
    inc bc                                        ; $5408: $03
    call c, $0333                                 ; $5409: $dc $33 $03
    rst $20                                       ; $540c: $e7
    inc sp                                        ; $540d: $33
    inc bc                                        ; $540e: $03
    di                                            ; $540f: $f3
    inc sp                                        ; $5410: $33
    inc bc                                        ; $5411: $03
    ld [bc], a                                    ; $5412: $02
    inc [hl]                                      ; $5413: $34
    inc bc                                        ; $5414: $03
    rrca                                          ; $5415: $0f
    inc [hl]                                      ; $5416: $34
    inc bc                                        ; $5417: $03
    jr jr_05f_544e                                ; $5418: $18 $34

    inc bc                                        ; $541a: $03
    inc hl                                        ; $541b: $23
    inc [hl]                                      ; $541c: $34
    inc bc                                        ; $541d: $03
    jr nc, jr_05f_5454                            ; $541e: $30 $34

    inc bc                                        ; $5420: $03
    ld a, $34                                     ; $5421: $3e $34
    inc bc                                        ; $5423: $03
    ld c, h                                       ; $5424: $4c
    inc [hl]                                      ; $5425: $34
    inc bc                                        ; $5426: $03
    ld d, b                                       ; $5427: $50
    inc [hl]                                      ; $5428: $34
    inc bc                                        ; $5429: $03
    ld e, l                                       ; $542a: $5d
    inc [hl]                                      ; $542b: $34
    inc bc                                        ; $542c: $03
    ld h, l                                       ; $542d: $65
    inc [hl]                                      ; $542e: $34
    inc bc                                        ; $542f: $03
    ld [hl], c                                    ; $5430: $71
    inc [hl]                                      ; $5431: $34
    inc bc                                        ; $5432: $03
    halt                                          ; $5433: $76
    inc [hl]                                      ; $5434: $34
    inc bc                                        ; $5435: $03
    ld a, b                                       ; $5436: $78
    inc [hl]                                      ; $5437: $34
    inc bc                                        ; $5438: $03
    add c                                         ; $5439: $81
    inc [hl]                                      ; $543a: $34
    inc bc                                        ; $543b: $03
    xor b                                         ; $543c: $a8
    inc [hl]                                      ; $543d: $34
    inc bc                                        ; $543e: $03
    add $34                                       ; $543f: $c6 $34
    inc bc                                        ; $5441: $03
    ei                                            ; $5442: $fb
    inc [hl]                                      ; $5443: $34
    inc bc                                        ; $5444: $03
    inc h                                         ; $5445: $24
    dec [hl]                                      ; $5446: $35
    inc bc                                        ; $5447: $03
    ccf                                           ; $5448: $3f
    dec [hl]                                      ; $5449: $35
    inc bc                                        ; $544a: $03
    ld l, e                                       ; $544b: $6b
    dec [hl]                                      ; $544c: $35
    inc bc                                        ; $544d: $03

jr_05f_544e:
    adc l                                         ; $544e: $8d
    dec [hl]                                      ; $544f: $35
    inc bc                                        ; $5450: $03
    and [hl]                                      ; $5451: $a6
    dec [hl]                                      ; $5452: $35
    inc bc                                        ; $5453: $03

jr_05f_5454:
    cp d                                          ; $5454: $ba
    dec [hl]                                      ; $5455: $35
    inc bc                                        ; $5456: $03
    db $db                                        ; $5457: $db
    dec [hl]                                      ; $5458: $35
    inc bc                                        ; $5459: $03
    rst $30                                       ; $545a: $f7
    dec [hl]                                      ; $545b: $35
    inc bc                                        ; $545c: $03
    rla                                           ; $545d: $17
    ld [hl], $03                                  ; $545e: $36 $03
    ld sp, $0336                                  ; $5460: $31 $36 $03
    ld c, e                                       ; $5463: $4b
    ld [hl], $03                                  ; $5464: $36 $03
    ld [hl], d                                    ; $5466: $72
    ld [hl], $03                                  ; $5467: $36 $03
    sbc e                                         ; $5469: $9b
    ld [hl], $03                                  ; $546a: $36 $03
    cp l                                          ; $546c: $bd
    ld [hl], $03                                  ; $546d: $36 $03
    db $e4                                        ; $546f: $e4
    ld [hl], $03                                  ; $5470: $36 $03
    nop                                           ; $5472: $00
    scf                                           ; $5473: $37
    inc bc                                        ; $5474: $03
    daa                                           ; $5475: $27
    scf                                           ; $5476: $37
    inc bc                                        ; $5477: $03
    ld d, b                                       ; $5478: $50
    scf                                           ; $5479: $37
    inc bc                                        ; $547a: $03
    ld [hl], l                                    ; $547b: $75
    scf                                           ; $547c: $37
    inc bc                                        ; $547d: $03
    and a                                         ; $547e: $a7
    scf                                           ; $547f: $37
    inc bc                                        ; $5480: $03
    rst $18                                       ; $5481: $df
    scf                                           ; $5482: $37
    inc bc                                        ; $5483: $03
    dec c                                         ; $5484: $0d
    jr c, jr_05f_548a                             ; $5485: $38 $03

    add hl, sp                                    ; $5487: $39
    jr c, jr_05f_548d                             ; $5488: $38 $03

jr_05f_548a:
    ld b, [hl]                                    ; $548a: $46
    jr c, jr_05f_5490                             ; $548b: $38 $03

jr_05f_548d:
    ld a, e                                       ; $548d: $7b
    jr c, jr_05f_5493                             ; $548e: $38 $03

jr_05f_5490:
    or a                                          ; $5490: $b7
    jr c, jr_05f_5496                             ; $5491: $38 $03

jr_05f_5493:
    ld [$0338], a                                 ; $5493: $ea $38 $03

jr_05f_5496:
    ld d, $39                                     ; $5496: $16 $39
    inc bc                                        ; $5498: $03
    ld c, e                                       ; $5499: $4b
    add hl, sp                                    ; $549a: $39
    inc bc                                        ; $549b: $03
    ld e, l                                       ; $549c: $5d
    add hl, sp                                    ; $549d: $39
    inc bc                                        ; $549e: $03
    sub d                                         ; $549f: $92
    add hl, sp                                    ; $54a0: $39
    inc bc                                        ; $54a1: $03
    cp c                                          ; $54a2: $b9
    add hl, sp                                    ; $54a3: $39
    inc bc                                        ; $54a4: $03
    sub $39                                       ; $54a5: $d6 $39
    inc bc                                        ; $54a7: $03
    cp $39                                        ; $54a8: $fe $39
    inc bc                                        ; $54aa: $03
    rla                                           ; $54ab: $17
    ld a, [hl-]                                   ; $54ac: $3a
    inc bc                                        ; $54ad: $03
    ld b, [hl]                                    ; $54ae: $46
    ld a, [hl-]                                   ; $54af: $3a
    inc bc                                        ; $54b0: $03
    ld [hl], e                                    ; $54b1: $73
    ld a, [hl-]                                   ; $54b2: $3a
    inc bc                                        ; $54b3: $03
    and b                                         ; $54b4: $a0
    ld a, [hl-]                                   ; $54b5: $3a
    inc bc                                        ; $54b6: $03
    ret                                           ; $54b7: $c9


    ld a, [hl-]                                   ; $54b8: $3a
    inc bc                                        ; $54b9: $03
    jp c, $033a                                   ; $54ba: $da $3a $03

    db $ed                                        ; $54bd: $ed
    ld a, [hl-]                                   ; $54be: $3a
    inc bc                                        ; $54bf: $03
    rrca                                          ; $54c0: $0f
    dec sp                                        ; $54c1: $3b
    inc bc                                        ; $54c2: $03
    dec a                                         ; $54c3: $3d
    dec sp                                        ; $54c4: $3b
    inc bc                                        ; $54c5: $03
    ld [hl], b                                    ; $54c6: $70
    dec sp                                        ; $54c7: $3b
    inc bc                                        ; $54c8: $03
    add d                                         ; $54c9: $82
    dec sp                                        ; $54ca: $3b
    inc bc                                        ; $54cb: $03
    or b                                          ; $54cc: $b0
    dec sp                                        ; $54cd: $3b
    inc bc                                        ; $54ce: $03
    ret nc                                        ; $54cf: $d0

    dec sp                                        ; $54d0: $3b
    inc bc                                        ; $54d1: $03
    ldh a, [$3b]                                  ; $54d2: $f0 $3b
    inc bc                                        ; $54d4: $03
    inc c                                         ; $54d5: $0c
    inc a                                         ; $54d6: $3c
    inc bc                                        ; $54d7: $03
    dec sp                                        ; $54d8: $3b
    inc a                                         ; $54d9: $3c
    inc bc                                        ; $54da: $03
    ld d, a                                       ; $54db: $57
    inc a                                         ; $54dc: $3c
    inc bc                                        ; $54dd: $03
    sub c                                         ; $54de: $91
    inc a                                         ; $54df: $3c
    inc bc                                        ; $54e0: $03
    xor d                                         ; $54e1: $aa
    inc a                                         ; $54e2: $3c
    inc bc                                        ; $54e3: $03
    pop bc                                        ; $54e4: $c1
    inc a                                         ; $54e5: $3c
    inc bc                                        ; $54e6: $03
    db $ec                                        ; $54e7: $ec
    inc a                                         ; $54e8: $3c
    inc bc                                        ; $54e9: $03
    ld de, $033d                                  ; $54ea: $11 $3d $03
    scf                                           ; $54ed: $37
    dec a                                         ; $54ee: $3d
    inc bc                                        ; $54ef: $03
    ld e, b                                       ; $54f0: $58
    dec a                                         ; $54f1: $3d
    inc bc                                        ; $54f2: $03
    ld [hl], d                                    ; $54f3: $72
    dec a                                         ; $54f4: $3d
    inc bc                                        ; $54f5: $03
    sub [hl]                                      ; $54f6: $96
    dec a                                         ; $54f7: $3d
    inc bc                                        ; $54f8: $03
    cp l                                          ; $54f9: $bd
    dec a                                         ; $54fa: $3d
    inc bc                                        ; $54fb: $03
    and $3d                                       ; $54fc: $e6 $3d
    inc bc                                        ; $54fe: $03
    ld de, $033e                                  ; $54ff: $11 $3e $03
    dec h                                         ; $5502: $25
    ld a, $03                                     ; $5503: $3e $03
    ld d, b                                       ; $5505: $50
    ld a, $03                                     ; $5506: $3e $03
    ld [hl], c                                    ; $5508: $71
    ld a, $03                                     ; $5509: $3e $03
    sbc h                                         ; $550b: $9c
    ld a, $03                                     ; $550c: $3e $03
    rst $00                                       ; $550e: $c7
    ld a, $03                                     ; $550f: $3e $03
    db $dd                                        ; $5511: $dd
    ld a, $03                                     ; $5512: $3e $03
    ld hl, sp+$3e                                 ; $5514: $f8 $3e
    inc bc                                        ; $5516: $03
    add hl, hl                                    ; $5517: $29
    ccf                                           ; $5518: $3f
    inc bc                                        ; $5519: $03
    ld c, e                                       ; $551a: $4b
    ccf                                           ; $551b: $3f
    inc bc                                        ; $551c: $03
    ld a, b                                       ; $551d: $78
    ccf                                           ; $551e: $3f
    inc bc                                        ; $551f: $03
    and b                                         ; $5520: $a0
    ccf                                           ; $5521: $3f
    inc bc                                        ; $5522: $03
    call nz, Call_000_043f                        ; $5523: $c4 $3f $04
    ld bc, $0400                                  ; $5526: $01 $00 $04
    inc h                                         ; $5529: $24
    nop                                           ; $552a: $00
    inc b                                         ; $552b: $04
    ld c, c                                       ; $552c: $49
    nop                                           ; $552d: $00
    inc b                                         ; $552e: $04
    ld e, l                                       ; $552f: $5d
    nop                                           ; $5530: $00
    inc b                                         ; $5531: $04
    add e                                         ; $5532: $83
    nop                                           ; $5533: $00
    inc b                                         ; $5534: $04
    and l                                         ; $5535: $a5
    nop                                           ; $5536: $00
    inc b                                         ; $5537: $04
    pop bc                                        ; $5538: $c1
    nop                                           ; $5539: $00
    inc b                                         ; $553a: $04
    or $00                                        ; $553b: $f6 $00
    inc b                                         ; $553d: $04
    jr nz, jr_05f_5541                            ; $553e: $20 $01

    inc b                                         ; $5540: $04

jr_05f_5541:
    ld b, h                                       ; $5541: $44
    ld bc, $5e04                                  ; $5542: $01 $04 $5e
    ld bc, $8404                                  ; $5545: $01 $04 $84
    ld bc, $ae04                                  ; $5548: $01 $04 $ae
    ld bc, $e504                                  ; $554b: $01 $04 $e5
    ld bc, $0c04                                  ; $554e: $01 $04 $0c
    ld [bc], a                                    ; $5551: $02
    inc b                                         ; $5552: $04
    dec h                                         ; $5553: $25
    ld [bc], a                                    ; $5554: $02
    inc b                                         ; $5555: $04
    ld e, c                                       ; $5556: $59
    ld [bc], a                                    ; $5557: $02
    inc b                                         ; $5558: $04
    adc [hl]                                      ; $5559: $8e
    ld [bc], a                                    ; $555a: $02
    inc b                                         ; $555b: $04
    sbc a                                         ; $555c: $9f
    ld [bc], a                                    ; $555d: $02
    inc b                                         ; $555e: $04
    sub $02                                       ; $555f: $d6 $02
    inc b                                         ; $5561: $04
    inc bc                                        ; $5562: $03
    inc bc                                        ; $5563: $03
    inc b                                         ; $5564: $04
    dec e                                         ; $5565: $1d
    inc bc                                        ; $5566: $03
    inc b                                         ; $5567: $04
    ld d, c                                       ; $5568: $51
    inc bc                                        ; $5569: $03
    inc b                                         ; $556a: $04
    ld h, a                                       ; $556b: $67
    inc bc                                        ; $556c: $03
    inc b                                         ; $556d: $04
    ld a, c                                       ; $556e: $79
    inc bc                                        ; $556f: $03
    inc b                                         ; $5570: $04
    adc b                                         ; $5571: $88
    inc bc                                        ; $5572: $03
    inc b                                         ; $5573: $04
    adc [hl]                                      ; $5574: $8e
    inc bc                                        ; $5575: $03
    inc b                                         ; $5576: $04
    sub a                                         ; $5577: $97
    inc bc                                        ; $5578: $03
    inc b                                         ; $5579: $04
    and b                                         ; $557a: $a0
    inc bc                                        ; $557b: $03
    inc b                                         ; $557c: $04
    xor b                                         ; $557d: $a8
    inc bc                                        ; $557e: $03
    inc b                                         ; $557f: $04
    xor [hl]                                      ; $5580: $ae
    inc bc                                        ; $5581: $03
    inc b                                         ; $5582: $04
    or l                                          ; $5583: $b5
    inc bc                                        ; $5584: $03
    inc b                                         ; $5585: $04
    cp d                                          ; $5586: $ba
    inc bc                                        ; $5587: $03
    inc b                                         ; $5588: $04
    pop bc                                        ; $5589: $c1
    inc bc                                        ; $558a: $03
    inc b                                         ; $558b: $04
    rst $00                                       ; $558c: $c7
    inc bc                                        ; $558d: $03
    inc b                                         ; $558e: $04
    rst $08                                       ; $558f: $cf
    inc bc                                        ; $5590: $03
    inc b                                         ; $5591: $04
    rst $10                                       ; $5592: $d7
    inc bc                                        ; $5593: $03
    inc b                                         ; $5594: $04
    db $dd                                        ; $5595: $dd
    inc bc                                        ; $5596: $03
    inc b                                         ; $5597: $04
    db $e4                                        ; $5598: $e4
    inc bc                                        ; $5599: $03
    inc b                                         ; $559a: $04
    db $ec                                        ; $559b: $ec
    inc bc                                        ; $559c: $03
    inc b                                         ; $559d: $04
    rst $30                                       ; $559e: $f7
    inc bc                                        ; $559f: $03
    inc b                                         ; $55a0: $04
    ei                                            ; $55a1: $fb
    inc bc                                        ; $55a2: $03
    inc b                                         ; $55a3: $04
    nop                                           ; $55a4: $00
    inc b                                         ; $55a5: $04
    inc b                                         ; $55a6: $04
    inc de                                        ; $55a7: $13
    inc b                                         ; $55a8: $04
    inc b                                         ; $55a9: $04
    inc l                                         ; $55aa: $2c
    inc b                                         ; $55ab: $04
    inc b                                         ; $55ac: $04
    ld d, d                                       ; $55ad: $52
    inc b                                         ; $55ae: $04
    inc b                                         ; $55af: $04
    ld h, b                                       ; $55b0: $60
    inc b                                         ; $55b1: $04
    inc b                                         ; $55b2: $04
    ld a, e                                       ; $55b3: $7b
    inc b                                         ; $55b4: $04
    inc b                                         ; $55b5: $04
    sub e                                         ; $55b6: $93
    inc b                                         ; $55b7: $04
    inc b                                         ; $55b8: $04
    and b                                         ; $55b9: $a0
    inc b                                         ; $55ba: $04
    inc b                                         ; $55bb: $04
    rst $08                                       ; $55bc: $cf
    inc b                                         ; $55bd: $04
    inc b                                         ; $55be: $04
    and $04                                       ; $55bf: $e6 $04
    inc b                                         ; $55c1: $04
    db $fd                                        ; $55c2: $fd
    inc b                                         ; $55c3: $04
    inc b                                         ; $55c4: $04
    inc de                                        ; $55c5: $13
    dec b                                         ; $55c6: $05
    inc b                                         ; $55c7: $04
    ld b, d                                       ; $55c8: $42
    dec b                                         ; $55c9: $05
    inc b                                         ; $55ca: $04
    ld e, d                                       ; $55cb: $5a
    dec b                                         ; $55cc: $05
    inc b                                         ; $55cd: $04
    halt                                          ; $55ce: $76
    dec b                                         ; $55cf: $05
    inc b                                         ; $55d0: $04
    sbc l                                         ; $55d1: $9d
    dec b                                         ; $55d2: $05
    inc b                                         ; $55d3: $04
    ret                                           ; $55d4: $c9


    dec b                                         ; $55d5: $05
    inc b                                         ; $55d6: $04
    db $e3                                        ; $55d7: $e3
    dec b                                         ; $55d8: $05
    inc b                                         ; $55d9: $04
    ei                                            ; $55da: $fb
    dec b                                         ; $55db: $05
    inc b                                         ; $55dc: $04
    dec c                                         ; $55dd: $0d
    ld b, $04                                     ; $55de: $06 $04
    ld [hl-], a                                   ; $55e0: $32
    ld b, $04                                     ; $55e1: $06 $04
    inc [hl]                                      ; $55e3: $34
    ld b, $04                                     ; $55e4: $06 $04
    ld [hl], $06                                  ; $55e6: $36 $06
    inc b                                         ; $55e8: $04
    ld c, a                                       ; $55e9: $4f
    ld b, $04                                     ; $55ea: $06 $04
    ld e, e                                       ; $55ec: $5b
    ld b, $04                                     ; $55ed: $06 $04
    ld h, d                                       ; $55ef: $62
    ld b, $04                                     ; $55f0: $06 $04
    ld l, e                                       ; $55f2: $6b
    ld b, $04                                     ; $55f3: $06 $04
    ld [hl], h                                    ; $55f5: $74
    ld b, $04                                     ; $55f6: $06 $04
    ld a, h                                       ; $55f8: $7c
    ld b, $04                                     ; $55f9: $06 $04
    sbc h                                         ; $55fb: $9c
    ld b, $04                                     ; $55fc: $06 $04
    or d                                          ; $55fe: $b2
    ld b, $04                                     ; $55ff: $06 $04
    adc $06                                       ; $5601: $ce $06
    inc b                                         ; $5603: $04
    rst $18                                       ; $5604: $df
    ld b, $04                                     ; $5605: $06 $04
    pop af                                        ; $5607: $f1
    ld b, $04                                     ; $5608: $06 $04
    rrca                                          ; $560a: $0f
    rlca                                          ; $560b: $07
    inc b                                         ; $560c: $04
    inc [hl]                                      ; $560d: $34
    rlca                                          ; $560e: $07
    inc b                                         ; $560f: $04
    ld h, h                                       ; $5610: $64
    rlca                                          ; $5611: $07
    inc b                                         ; $5612: $04
    sub a                                         ; $5613: $97
    rlca                                          ; $5614: $07
    inc b                                         ; $5615: $04
    cp l                                          ; $5616: $bd
    rlca                                          ; $5617: $07
    inc b                                         ; $5618: $04
    or $07                                        ; $5619: $f6 $07
    inc b                                         ; $561b: $04
    ld a, [de]                                    ; $561c: $1a
    ld [$4104], sp                                ; $561d: $08 $04 $41
    ld [$4e04], sp                                ; $5620: $08 $04 $4e
    ld [$6704], sp                                ; $5623: $08 $04 $67
    ld [$8f04], sp                                ; $5626: $08 $04 $8f
    ld [$b904], sp                                ; $5629: $08 $04 $b9
    ld [$de04], sp                                ; $562c: $08 $04 $de
    ld [$fc04], sp                                ; $562f: $08 $04 $fc
    ld [$1604], sp                                ; $5632: $08 $04 $16
    add hl, bc                                    ; $5635: $09
    inc b                                         ; $5636: $04
    ld [hl], $09                                  ; $5637: $36 $09
    inc b                                         ; $5639: $04
    ld h, h                                       ; $563a: $64
    add hl, bc                                    ; $563b: $09
    inc b                                         ; $563c: $04
    adc [hl]                                      ; $563d: $8e
    add hl, bc                                    ; $563e: $09
    inc b                                         ; $563f: $04
    xor l                                         ; $5640: $ad
    add hl, bc                                    ; $5641: $09
    inc b                                         ; $5642: $04
    jp nz, Jump_000_0409                          ; $5643: $c2 $09 $04

    ld [c], a                                     ; $5646: $e2
    add hl, bc                                    ; $5647: $09
    inc b                                         ; $5648: $04
    ld a, [bc]                                    ; $5649: $0a
    ld a, [bc]                                    ; $564a: $0a
    inc b                                         ; $564b: $04
    inc e                                         ; $564c: $1c
    ld a, [bc]                                    ; $564d: $0a
    inc b                                         ; $564e: $04
    dec a                                         ; $564f: $3d
    ld a, [bc]                                    ; $5650: $0a
    inc b                                         ; $5651: $04
    ld c, d                                       ; $5652: $4a
    ld a, [bc]                                    ; $5653: $0a
    inc b                                         ; $5654: $04
    ld a, [hl]                                    ; $5655: $7e
    ld a, [bc]                                    ; $5656: $0a
    inc b                                         ; $5657: $04
    add a                                         ; $5658: $87
    ld a, [bc]                                    ; $5659: $0a
    inc b                                         ; $565a: $04
    sub e                                         ; $565b: $93
    ld a, [bc]                                    ; $565c: $0a
    inc b                                         ; $565d: $04
    sbc e                                         ; $565e: $9b
    ld a, [bc]                                    ; $565f: $0a
    inc b                                         ; $5660: $04
    and h                                         ; $5661: $a4
    ld a, [bc]                                    ; $5662: $0a
    inc b                                         ; $5663: $04
    cp d                                          ; $5664: $ba
    ld a, [bc]                                    ; $5665: $0a
    inc b                                         ; $5666: $04
    jp z, Jump_000_040a                           ; $5667: $ca $0a $04

    ld [de], a                                    ; $566a: $12
    dec bc                                        ; $566b: $0b
    inc b                                         ; $566c: $04
    ld d, c                                       ; $566d: $51
    dec bc                                        ; $566e: $0b
    inc b                                         ; $566f: $04
    ld h, b                                       ; $5670: $60
    dec bc                                        ; $5671: $0b
    inc b                                         ; $5672: $04
    ld l, [hl]                                    ; $5673: $6e
    dec bc                                        ; $5674: $0b
    inc b                                         ; $5675: $04
    adc e                                         ; $5676: $8b
    dec bc                                        ; $5677: $0b
    inc b                                         ; $5678: $04
    or a                                          ; $5679: $b7
    dec bc                                        ; $567a: $0b
    inc b                                         ; $567b: $04
    rla                                           ; $567c: $17
    inc c                                         ; $567d: $0c
    inc b                                         ; $567e: $04
    ld d, b                                       ; $567f: $50
    inc c                                         ; $5680: $0c
    inc b                                         ; $5681: $04
    and [hl]                                      ; $5682: $a6
    inc c                                         ; $5683: $0c
    inc b                                         ; $5684: $04
    jp Jump_000_040c                              ; $5685: $c3 $0c $04


    xor $0c                                       ; $5688: $ee $0c
    inc b                                         ; $568a: $04
    ld h, $0d                                     ; $568b: $26 $0d
    inc b                                         ; $568d: $04
    inc [hl]                                      ; $568e: $34
    dec c                                         ; $568f: $0d
    inc b                                         ; $5690: $04
    ld d, [hl]                                    ; $5691: $56
    dec c                                         ; $5692: $0d
    inc b                                         ; $5693: $04
    and a                                         ; $5694: $a7
    dec c                                         ; $5695: $0d
    inc b                                         ; $5696: $04
    db $f4                                        ; $5697: $f4
    dec c                                         ; $5698: $0d
    inc b                                         ; $5699: $04
    ld sp, $040e                                  ; $569a: $31 $0e $04
    ld c, l                                       ; $569d: $4d
    ld c, $04                                     ; $569e: $0e $04
    sub e                                         ; $56a0: $93
    ld c, $04                                     ; $56a1: $0e $04
    rst $38                                       ; $56a3: $ff
    ld c, $04                                     ; $56a4: $0e $04
    rra                                           ; $56a6: $1f
    rrca                                          ; $56a7: $0f
    inc b                                         ; $56a8: $04
    ld [hl], e                                    ; $56a9: $73
    rrca                                          ; $56aa: $0f
    inc b                                         ; $56ab: $04
    push hl                                       ; $56ac: $e5
    rrca                                          ; $56ad: $0f
    inc b                                         ; $56ae: $04
    rst $28                                       ; $56af: $ef
    rrca                                          ; $56b0: $0f
    inc b                                         ; $56b1: $04
    ld b, [hl]                                    ; $56b2: $46
    db $10                                        ; $56b3: $10
    inc b                                         ; $56b4: $04
    ld h, a                                       ; $56b5: $67
    db $10                                        ; $56b6: $10
    inc b                                         ; $56b7: $04
    ld a, e                                       ; $56b8: $7b
    db $10                                        ; $56b9: $10
    inc b                                         ; $56ba: $04
    xor e                                         ; $56bb: $ab
    db $10                                        ; $56bc: $10
    inc b                                         ; $56bd: $04
    push bc                                       ; $56be: $c5
    db $10                                        ; $56bf: $10
    inc b                                         ; $56c0: $04
    rst $28                                       ; $56c1: $ef
    db $10                                        ; $56c2: $10
    inc b                                         ; $56c3: $04
    db $f4                                        ; $56c4: $f4
    db $10                                        ; $56c5: $10
    inc b                                         ; $56c6: $04
    ld e, d                                       ; $56c7: $5a
    ld de, $5f04                                  ; $56c8: $11 $04 $5f
    ld de, $9b04                                  ; $56cb: $11 $04 $9b
    ld de, $a304                                  ; $56ce: $11 $04 $a3
    ld de, $1304                                  ; $56d1: $11 $04 $13
    ld [de], a                                    ; $56d4: $12
    inc b                                         ; $56d5: $04
    ld b, l                                       ; $56d6: $45
    ld [de], a                                    ; $56d7: $12
    inc b                                         ; $56d8: $04
    and c                                         ; $56d9: $a1
    ld [de], a                                    ; $56da: $12
    inc b                                         ; $56db: $04
    cp c                                          ; $56dc: $b9
    ld [de], a                                    ; $56dd: $12
    inc b                                         ; $56de: $04
    ret z                                         ; $56df: $c8

    ld [de], a                                    ; $56e0: $12
    inc b                                         ; $56e1: $04
    push de                                       ; $56e2: $d5
    ld [de], a                                    ; $56e3: $12
    inc b                                         ; $56e4: $04
    di                                            ; $56e5: $f3
    ld [de], a                                    ; $56e6: $12
    inc b                                         ; $56e7: $04
    dec h                                         ; $56e8: $25
    inc de                                        ; $56e9: $13
    inc b                                         ; $56ea: $04
    jr c, jr_05f_5700                             ; $56eb: $38 $13

    inc b                                         ; $56ed: $04
    ld h, b                                       ; $56ee: $60
    inc de                                        ; $56ef: $13
    inc b                                         ; $56f0: $04
    adc b                                         ; $56f1: $88
    inc de                                        ; $56f2: $13
    inc b                                         ; $56f3: $04
    add $13                                       ; $56f4: $c6 $13
    inc b                                         ; $56f6: $04
    ld bc, $0414                                  ; $56f7: $01 $14 $04
    add hl, sp                                    ; $56fa: $39
    inc d                                         ; $56fb: $14
    inc b                                         ; $56fc: $04
    sbc c                                         ; $56fd: $99
    inc d                                         ; $56fe: $14
    inc b                                         ; $56ff: $04

jr_05f_5700:
    or e                                          ; $5700: $b3
    inc d                                         ; $5701: $14
    inc b                                         ; $5702: $04
    add $14                                       ; $5703: $c6 $14
    inc b                                         ; $5705: $04
    inc [hl]                                      ; $5706: $34
    dec d                                         ; $5707: $15
    inc b                                         ; $5708: $04
    ld e, b                                       ; $5709: $58
    dec d                                         ; $570a: $15
    inc b                                         ; $570b: $04
    sbc a                                         ; $570c: $9f
    dec d                                         ; $570d: $15
    inc b                                         ; $570e: $04
    cp b                                          ; $570f: $b8
    dec d                                         ; $5710: $15
    inc b                                         ; $5711: $04
    ld [hl+], a                                   ; $5712: $22
    ld d, $04                                     ; $5713: $16 $04
    ld b, l                                       ; $5715: $45
    ld d, $04                                     ; $5716: $16 $04
    ld d, [hl]                                    ; $5718: $56
    ld d, $04                                     ; $5719: $16 $04
    ld h, d                                       ; $571b: $62
    ld d, $04                                     ; $571c: $16 $04

Call_05f_571e:
    sbc h                                         ; $571e: $9c
    ld d, $04                                     ; $571f: $16 $04
    xor c                                         ; $5721: $a9
    ld d, $04                                     ; $5722: $16 $04
    rst $08                                       ; $5724: $cf
    ld d, $04                                     ; $5725: $16 $04
    db $e3                                        ; $5727: $e3
    ld d, $04                                     ; $5728: $16 $04
    db $fc                                        ; $572a: $fc
    ld d, $04                                     ; $572b: $16 $04
    ld de, $0417                                  ; $572d: $11 $17 $04
    dec l                                         ; $5730: $2d
    rla                                           ; $5731: $17
    inc b                                         ; $5732: $04
    ld [hl], $17                                  ; $5733: $36 $17
    inc b                                         ; $5735: $04
    ld l, b                                       ; $5736: $68
    rla                                           ; $5737: $17
    inc b                                         ; $5738: $04
    ld a, h                                       ; $5739: $7c
    rla                                           ; $573a: $17
    inc b                                         ; $573b: $04
    cp c                                          ; $573c: $b9
    rla                                           ; $573d: $17
    inc b                                         ; $573e: $04
    call c, Call_000_0417                         ; $573f: $dc $17 $04
    ld sp, hl                                     ; $5742: $f9
    rla                                           ; $5743: $17
    inc b                                         ; $5744: $04
    inc h                                         ; $5745: $24
    jr jr_05f_574c                                ; $5746: $18 $04

    ld b, l                                       ; $5748: $45
    jr jr_05f_574f                                ; $5749: $18 $04

    ld e, h                                       ; $574b: $5c

jr_05f_574c:
    jr jr_05f_5752                                ; $574c: $18 $04

    ld l, h                                       ; $574e: $6c

jr_05f_574f:
    jr jr_05f_5755                                ; $574f: $18 $04

    adc d                                         ; $5751: $8a

jr_05f_5752:
    jr jr_05f_5758                                ; $5752: $18 $04

    sub c                                         ; $5754: $91

jr_05f_5755:
    jr jr_05f_575b                                ; $5755: $18 $04

    xor e                                         ; $5757: $ab

jr_05f_5758:
    jr jr_05f_575e                                ; $5758: $18 $04

    cp l                                          ; $575a: $bd

jr_05f_575b:
    jr jr_05f_5761                                ; $575b: $18 $04

    rst $00                                       ; $575d: $c7

jr_05f_575e:
    jr jr_05f_5764                                ; $575e: $18 $04

    ld sp, hl                                     ; $5760: $f9

jr_05f_5761:
    jr jr_05f_5767                                ; $5761: $18 $04

    ld c, b                                       ; $5763: $48

jr_05f_5764:
    add hl, de                                    ; $5764: $19
    inc b                                         ; $5765: $04
    ld h, d                                       ; $5766: $62

jr_05f_5767:
    add hl, de                                    ; $5767: $19
    inc b                                         ; $5768: $04
    ld l, h                                       ; $5769: $6c
    add hl, de                                    ; $576a: $19
    inc b                                         ; $576b: $04
    add c                                         ; $576c: $81
    add hl, de                                    ; $576d: $19
    inc b                                         ; $576e: $04
    adc e                                         ; $576f: $8b
    add hl, de                                    ; $5770: $19
    inc b                                         ; $5771: $04
    or h                                          ; $5772: $b4
    add hl, de                                    ; $5773: $19
    inc b                                         ; $5774: $04
    push de                                       ; $5775: $d5
    add hl, de                                    ; $5776: $19
    inc b                                         ; $5777: $04
    ld a, $1a                                     ; $5778: $3e $1a
    inc b                                         ; $577a: $04

Call_05f_577b:
    ld l, a                                       ; $577b: $6f
    ld a, [de]                                    ; $577c: $1a
    inc b                                         ; $577d: $04
    cp h                                          ; $577e: $bc
    ld a, [de]                                    ; $577f: $1a
    inc b                                         ; $5780: $04
    call nz, Call_000_041a                        ; $5781: $c4 $1a $04
    sub $1a                                       ; $5784: $d6 $1a
    inc b                                         ; $5786: $04
    db $ec                                        ; $5787: $ec
    ld a, [de]                                    ; $5788: $1a
    inc b                                         ; $5789: $04
    inc hl                                        ; $578a: $23
    dec de                                        ; $578b: $1b
    inc b                                         ; $578c: $04
    ld c, e                                       ; $578d: $4b
    dec de                                        ; $578e: $1b
    inc b                                         ; $578f: $04
    add c                                         ; $5790: $81
    dec de                                        ; $5791: $1b
    inc b                                         ; $5792: $04
    sub l                                         ; $5793: $95
    dec de                                        ; $5794: $1b
    inc b                                         ; $5795: $04
    cp e                                          ; $5796: $bb
    dec de                                        ; $5797: $1b
    inc b                                         ; $5798: $04
    jp Jump_000_041b                              ; $5799: $c3 $1b $04


    pop de                                        ; $579c: $d1
    dec de                                        ; $579d: $1b
    inc b                                         ; $579e: $04
    inc e                                         ; $579f: $1c
    inc e                                         ; $57a0: $1c
    inc b                                         ; $57a1: $04
    add hl, hl                                    ; $57a2: $29
    inc e                                         ; $57a3: $1c
    inc b                                         ; $57a4: $04
    ld l, h                                       ; $57a5: $6c
    inc e                                         ; $57a6: $1c
    inc b                                         ; $57a7: $04
    sub h                                         ; $57a8: $94
    inc e                                         ; $57a9: $1c
    inc b                                         ; $57aa: $04
    db $e3                                        ; $57ab: $e3
    inc e                                         ; $57ac: $1c
    inc b                                         ; $57ad: $04
    ld c, $1d                                     ; $57ae: $0e $1d
    inc b                                         ; $57b0: $04
    dec e                                         ; $57b1: $1d
    dec e                                         ; $57b2: $1d
    inc b                                         ; $57b3: $04
    ld sp, $041d                                  ; $57b4: $31 $1d $04
    dec a                                         ; $57b7: $3d
    dec e                                         ; $57b8: $1d
    inc b                                         ; $57b9: $04
    ld b, a                                       ; $57ba: $47
    dec e                                         ; $57bb: $1d
    inc b                                         ; $57bc: $04
    ld d, h                                       ; $57bd: $54
    dec e                                         ; $57be: $1d
    inc b                                         ; $57bf: $04
    ld e, h                                       ; $57c0: $5c
    dec e                                         ; $57c1: $1d
    inc b                                         ; $57c2: $04
    ld l, b                                       ; $57c3: $68
    dec e                                         ; $57c4: $1d
    inc b                                         ; $57c5: $04
    ld [hl], c                                    ; $57c6: $71
    dec e                                         ; $57c7: $1d
    inc b                                         ; $57c8: $04
    ld a, e                                       ; $57c9: $7b
    dec e                                         ; $57ca: $1d
    inc b                                         ; $57cb: $04
    adc b                                         ; $57cc: $88
    dec e                                         ; $57cd: $1d
    inc b                                         ; $57ce: $04
    sbc d                                         ; $57cf: $9a
    dec e                                         ; $57d0: $1d
    inc b                                         ; $57d1: $04
    sbc h                                         ; $57d2: $9c
    dec e                                         ; $57d3: $1d
    inc b                                         ; $57d4: $04
    xor d                                         ; $57d5: $aa
    dec e                                         ; $57d6: $1d
    inc b                                         ; $57d7: $04
    cp [hl]                                       ; $57d8: $be
    dec e                                         ; $57d9: $1d
    inc b                                         ; $57da: $04
    jp nc, Jump_000_041d                          ; $57db: $d2 $1d $04

    call nc, Call_000_041d                        ; $57de: $d4 $1d $04
    sub $1d                                       ; $57e1: $d6 $1d
    inc b                                         ; $57e3: $04
    ldh a, [rNR33]                                ; $57e4: $f0 $1d
    inc b                                         ; $57e6: $04
    rst $38                                       ; $57e7: $ff
    dec e                                         ; $57e8: $1d
    inc b                                         ; $57e9: $04
    ld bc, $041e                                  ; $57ea: $01 $1e $04
    rrca                                          ; $57ed: $0f
    ld e, $04                                     ; $57ee: $1e $04
    ld de, $041e                                  ; $57f0: $11 $1e $04
    inc de                                        ; $57f3: $13
    ld e, $04                                     ; $57f4: $1e $04
    inc l                                         ; $57f6: $2c
    ld e, $04                                     ; $57f7: $1e $04
    ld a, [hl-]                                   ; $57f9: $3a
    ld e, $04                                     ; $57fa: $1e $04
    ld c, b                                       ; $57fc: $48
    ld e, $04                                     ; $57fd: $1e $04
    ld c, d                                       ; $57ff: $4a
    ld e, $04                                     ; $5800: $1e $04
    ld c, h                                       ; $5802: $4c
    ld e, $04                                     ; $5803: $1e $04
    ld c, [hl]                                    ; $5805: $4e
    ld e, $04                                     ; $5806: $1e $04
    ld h, a                                       ; $5808: $67
    ld e, $04                                     ; $5809: $1e $04
    ld l, c                                       ; $580b: $69
    ld e, $04                                     ; $580c: $1e $04
    ld l, e                                       ; $580e: $6b
    ld e, $04                                     ; $580f: $1e $04
    ld l, l                                       ; $5811: $6d
    ld e, $04                                     ; $5812: $1e $04
    ld l, a                                       ; $5814: $6f
    ld e, $04                                     ; $5815: $1e $04
    ld [hl], c                                    ; $5817: $71
    ld e, $04                                     ; $5818: $1e $04
    ld [hl], e                                    ; $581a: $73
    ld e, $04                                     ; $581b: $1e $04
    ld [hl], l                                    ; $581d: $75
    ld e, $04                                     ; $581e: $1e $04
    ld [hl], a                                    ; $5820: $77
    ld e, $04                                     ; $5821: $1e $04
    add b                                         ; $5823: $80
    ld e, $04                                     ; $5824: $1e $04
    adc [hl]                                      ; $5826: $8e
    ld e, $04                                     ; $5827: $1e $04
    and b                                         ; $5829: $a0
    ld e, $04                                     ; $582a: $1e $04
    and d                                         ; $582c: $a2
    ld e, $04                                     ; $582d: $1e $04
    and h                                         ; $582f: $a4
    ld e, $04                                     ; $5830: $1e $04
    and [hl]                                      ; $5832: $a6
    ld e, $04                                     ; $5833: $1e $04
    xor b                                         ; $5835: $a8
    ld e, $04                                     ; $5836: $1e $04
    xor d                                         ; $5838: $aa
    ld e, $04                                     ; $5839: $1e $04
    xor h                                         ; $583b: $ac
    ld e, $04                                     ; $583c: $1e $04
    xor [hl]                                      ; $583e: $ae
    ld e, $04                                     ; $583f: $1e $04
    or b                                          ; $5841: $b0
    ld e, $04                                     ; $5842: $1e $04
    or d                                          ; $5844: $b2
    ld e, $04                                     ; $5845: $1e $04
    or h                                          ; $5847: $b4
    ld e, $04                                     ; $5848: $1e $04
    jp Jump_000_041e                              ; $584a: $c3 $1e $04


    pop de                                        ; $584d: $d1
    ld e, $04                                     ; $584e: $1e $04
    rst $18                                       ; $5850: $df
    ld e, $04                                     ; $5851: $1e $04
    pop af                                        ; $5853: $f1
    ld e, $04                                     ; $5854: $1e $04
    db $fc                                        ; $5856: $fc
    ld e, $04                                     ; $5857: $1e $04
    ld c, $1f                                     ; $5859: $0e $1f
    inc b                                         ; $585b: $04
    db $10                                        ; $585c: $10
    rra                                           ; $585d: $1f
    inc b                                         ; $585e: $04
    ld hl, $041f                                  ; $585f: $21 $1f $04
    inc hl                                        ; $5862: $23
    rra                                           ; $5863: $1f
    inc b                                         ; $5864: $04
    ld sp, $041f                                  ; $5865: $31 $1f $04
    inc sp                                        ; $5868: $33
    rra                                           ; $5869: $1f
    inc b                                         ; $586a: $04
    ld a, $1f                                     ; $586b: $3e $1f
    inc b                                         ; $586d: $04
    ld b, b                                       ; $586e: $40
    rra                                           ; $586f: $1f
    inc b                                         ; $5870: $04
    ld c, a                                       ; $5871: $4f
    rra                                           ; $5872: $1f
    inc b                                         ; $5873: $04
    ld e, c                                       ; $5874: $59
    rra                                           ; $5875: $1f
    inc b                                         ; $5876: $04
    ld l, l                                       ; $5877: $6d
    rra                                           ; $5878: $1f
    inc b                                         ; $5879: $04
    ld a, h                                       ; $587a: $7c
    rra                                           ; $587b: $1f
    inc b                                         ; $587c: $04
    adc d                                         ; $587d: $8a
    rra                                           ; $587e: $1f
    inc b                                         ; $587f: $04
    adc h                                         ; $5880: $8c
    rra                                           ; $5881: $1f
    inc b                                         ; $5882: $04
    adc [hl]                                      ; $5883: $8e
    rra                                           ; $5884: $1f
    inc b                                         ; $5885: $04
    sub b                                         ; $5886: $90
    rra                                           ; $5887: $1f
    inc b                                         ; $5888: $04
    sub d                                         ; $5889: $92
    rra                                           ; $588a: $1f
    inc b                                         ; $588b: $04
    and d                                         ; $588c: $a2
    rra                                           ; $588d: $1f
    inc b                                         ; $588e: $04
    or d                                          ; $588f: $b2
    rra                                           ; $5890: $1f
    inc b                                         ; $5891: $04
    cp a                                          ; $5892: $bf
    rra                                           ; $5893: $1f
    inc b                                         ; $5894: $04
    rst $08                                       ; $5895: $cf
    rra                                           ; $5896: $1f
    inc b                                         ; $5897: $04
    ldh [$1f], a                                  ; $5898: $e0 $1f
    inc b                                         ; $589a: $04
    pop af                                        ; $589b: $f1
    rra                                           ; $589c: $1f
    inc b                                         ; $589d: $04
    cp $1f                                        ; $589e: $fe $1f
    inc b                                         ; $58a0: $04
    ld a, [bc]                                    ; $58a1: $0a
    jr nz, jr_05f_58a8                            ; $58a2: $20 $04

    inc e                                         ; $58a4: $1c
    jr nz, jr_05f_58ab                            ; $58a5: $20 $04

    ld a, [hl+]                                   ; $58a7: $2a

jr_05f_58a8:
    jr nz, jr_05f_58ae                            ; $58a8: $20 $04

    dec sp                                        ; $58aa: $3b

jr_05f_58ab:
    jr nz, jr_05f_58b1                            ; $58ab: $20 $04

    ld b, l                                       ; $58ad: $45

jr_05f_58ae:
    jr nz, jr_05f_58b4                            ; $58ae: $20 $04

    ld d, [hl]                                    ; $58b0: $56

jr_05f_58b1:
    jr nz, jr_05f_58b7                            ; $58b1: $20 $04

    ld e, b                                       ; $58b3: $58

jr_05f_58b4:
    jr nz, jr_05f_58ba                            ; $58b4: $20 $04

    ld l, e                                       ; $58b6: $6b

jr_05f_58b7:
    jr nz, jr_05f_58bd                            ; $58b7: $20 $04

    ld a, l                                       ; $58b9: $7d

jr_05f_58ba:
    jr nz, jr_05f_58c0                            ; $58ba: $20 $04

    adc b                                         ; $58bc: $88

jr_05f_58bd:
    jr nz, jr_05f_58c3                            ; $58bd: $20 $04

    sub e                                         ; $58bf: $93

jr_05f_58c0:
    jr nz, jr_05f_58c6                            ; $58c0: $20 $04

    and l                                         ; $58c2: $a5

jr_05f_58c3:
    jr nz, jr_05f_58c9                            ; $58c3: $20 $04

    or d                                          ; $58c5: $b2

jr_05f_58c6:
    jr nz, jr_05f_58cc                            ; $58c6: $20 $04

    ret nz                                        ; $58c8: $c0

jr_05f_58c9:
    jr nz, jr_05f_58cf                            ; $58c9: $20 $04

    db $d3                                        ; $58cb: $d3

jr_05f_58cc:
    jr nz, jr_05f_58d2                            ; $58cc: $20 $04

    pop hl                                        ; $58ce: $e1

jr_05f_58cf:
    jr nz, jr_05f_58d5                            ; $58cf: $20 $04

    db $eb                                        ; $58d1: $eb

jr_05f_58d2:
    jr nz, @+$06                                  ; $58d2: $20 $04

    di                                            ; $58d4: $f3

jr_05f_58d5:
    jr nz, jr_05f_58db                            ; $58d5: $20 $04

    ld hl, sp+$20                                 ; $58d7: $f8 $20
    inc b                                         ; $58d9: $04
    rst $38                                       ; $58da: $ff

jr_05f_58db:
    jr nz, jr_05f_58e1                            ; $58db: $20 $04

    dec bc                                        ; $58dd: $0b
    ld hl, $1204                                  ; $58de: $21 $04 $12

jr_05f_58e1:
    ld hl, $1a04                                  ; $58e1: $21 $04 $1a
    ld hl, $2104                                  ; $58e4: $21 $04 $21
    ld hl, $3004                                  ; $58e7: $21 $04 $30
    ld hl, $4004                                  ; $58ea: $21 $04 $40
    ld hl, $4704                                  ; $58ed: $21 $04 $47
    ld hl, $5304                                  ; $58f0: $21 $04 $53
    ld hl, $5f04                                  ; $58f3: $21 $04 $5f
    ld hl, $6b04                                  ; $58f6: $21 $04 $6b
    ld hl, $7704                                  ; $58f9: $21 $04 $77
    ld hl, $8604                                  ; $58fc: $21 $04 $86
    ld hl, $9104                                  ; $58ff: $21 $04 $91
    ld hl, $9b04                                  ; $5902: $21 $04 $9b
    ld hl, $a604                                  ; $5905: $21 $04 $a6
    ld hl, $b004                                  ; $5908: $21 $04 $b0
    ld hl, $b804                                  ; $590b: $21 $04 $b8
    ld hl, $c504                                  ; $590e: $21 $04 $c5
    ld hl, $dd04                                  ; $5911: $21 $04 $dd
    ld hl, $e704                                  ; $5914: $21 $04 $e7
    ld hl, $f204                                  ; $5917: $21 $04 $f2
    ld hl, $fd04                                  ; $591a: $21 $04 $fd
    ld hl, $0804                                  ; $591d: $21 $04 $08
    ld [hl+], a                                   ; $5920: $22
    inc b                                         ; $5921: $04
    inc de                                        ; $5922: $13
    ld [hl+], a                                   ; $5923: $22
    inc b                                         ; $5924: $04
    ld e, $22                                     ; $5925: $1e $22
    inc b                                         ; $5927: $04
    add hl, hl                                    ; $5928: $29
    ld [hl+], a                                   ; $5929: $22
    inc b                                         ; $592a: $04
    inc sp                                        ; $592b: $33
    ld [hl+], a                                   ; $592c: $22
    inc b                                         ; $592d: $04
    dec a                                         ; $592e: $3d
    ld [hl+], a                                   ; $592f: $22
    inc b                                         ; $5930: $04
    ld b, a                                       ; $5931: $47
    ld [hl+], a                                   ; $5932: $22
    inc b                                         ; $5933: $04
    ld d, c                                       ; $5934: $51
    ld [hl+], a                                   ; $5935: $22
    inc b                                         ; $5936: $04
    ld e, e                                       ; $5937: $5b
    ld [hl+], a                                   ; $5938: $22
    inc b                                         ; $5939: $04
    ld h, l                                       ; $593a: $65
    ld [hl+], a                                   ; $593b: $22
    inc b                                         ; $593c: $04
    ld [hl], c                                    ; $593d: $71
    ld [hl+], a                                   ; $593e: $22
    inc b                                         ; $593f: $04
    ld a, l                                       ; $5940: $7d
    ld [hl+], a                                   ; $5941: $22
    inc b                                         ; $5942: $04
    adc c                                         ; $5943: $89
    ld [hl+], a                                   ; $5944: $22
    inc b                                         ; $5945: $04
    sub h                                         ; $5946: $94
    ld [hl+], a                                   ; $5947: $22
    inc b                                         ; $5948: $04
    sbc d                                         ; $5949: $9a
    ld [hl+], a                                   ; $594a: $22
    inc b                                         ; $594b: $04
    and c                                         ; $594c: $a1
    ld [hl+], a                                   ; $594d: $22
    inc b                                         ; $594e: $04
    or b                                          ; $594f: $b0
    ld [hl+], a                                   ; $5950: $22
    inc b                                         ; $5951: $04
    cp [hl]                                       ; $5952: $be
    ld [hl+], a                                   ; $5953: $22
    inc b                                         ; $5954: $04
    rst $00                                       ; $5955: $c7
    ld [hl+], a                                   ; $5956: $22
    inc b                                         ; $5957: $04
    ret nc                                        ; $5958: $d0

    ld [hl+], a                                   ; $5959: $22
    inc b                                         ; $595a: $04
    reti                                          ; $595b: $d9


    ld [hl+], a                                   ; $595c: $22
    inc b                                         ; $595d: $04
    ld [c], a                                     ; $595e: $e2
    ld [hl+], a                                   ; $595f: $22
    inc b                                         ; $5960: $04
    db $eb                                        ; $5961: $eb
    ld [hl+], a                                   ; $5962: $22
    inc b                                         ; $5963: $04
    db $f4                                        ; $5964: $f4
    ld [hl+], a                                   ; $5965: $22
    inc b                                         ; $5966: $04
    db $fd                                        ; $5967: $fd
    ld [hl+], a                                   ; $5968: $22
    inc b                                         ; $5969: $04
    ld b, $23                                     ; $596a: $06 $23
    inc b                                         ; $596c: $04
    ld d, $23                                     ; $596d: $16 $23
    inc b                                         ; $596f: $04
    ld hl, $0423                                  ; $5970: $21 $23 $04
    ld a, [hl+]                                   ; $5973: $2a
    inc hl                                        ; $5974: $23
    inc b                                         ; $5975: $04
    inc sp                                        ; $5976: $33
    inc hl                                        ; $5977: $23
    inc b                                         ; $5978: $04
    ld b, b                                       ; $5979: $40
    inc hl                                        ; $597a: $23
    inc b                                         ; $597b: $04
    ld c, a                                       ; $597c: $4f
    inc hl                                        ; $597d: $23
    inc b                                         ; $597e: $04
    ld e, d                                       ; $597f: $5a
    inc hl                                        ; $5980: $23
    inc b                                         ; $5981: $04
    ld h, h                                       ; $5982: $64
    inc hl                                        ; $5983: $23
    inc b                                         ; $5984: $04
    ld l, a                                       ; $5985: $6f
    inc hl                                        ; $5986: $23
    inc b                                         ; $5987: $04
    ld a, b                                       ; $5988: $78
    inc hl                                        ; $5989: $23
    inc b                                         ; $598a: $04
    add c                                         ; $598b: $81
    inc hl                                        ; $598c: $23
    inc b                                         ; $598d: $04
    adc b                                         ; $598e: $88
    inc hl                                        ; $598f: $23
    inc b                                         ; $5990: $04
    sub l                                         ; $5991: $95
    inc hl                                        ; $5992: $23
    inc b                                         ; $5993: $04
    sbc [hl]                                      ; $5994: $9e
    inc hl                                        ; $5995: $23
    inc b                                         ; $5996: $04
    xor [hl]                                      ; $5997: $ae
    inc hl                                        ; $5998: $23
    inc b                                         ; $5999: $04
    cp c                                          ; $599a: $b9
    inc hl                                        ; $599b: $23
    inc b                                         ; $599c: $04
    cp [hl]                                       ; $599d: $be
    inc hl                                        ; $599e: $23
    inc b                                         ; $599f: $04
    call z, Call_000_0423                         ; $59a0: $cc $23 $04
    rst $18                                       ; $59a3: $df
    inc hl                                        ; $59a4: $23
    inc b                                         ; $59a5: $04
    rst $28                                       ; $59a6: $ef
    inc hl                                        ; $59a7: $23
    inc b                                         ; $59a8: $04
    or $23                                        ; $59a9: $f6 $23
    inc b                                         ; $59ab: $04
    nop                                           ; $59ac: $00
    inc h                                         ; $59ad: $24
    inc b                                         ; $59ae: $04
    dec c                                         ; $59af: $0d
    inc h                                         ; $59b0: $24
    inc b                                         ; $59b1: $04
    inc e                                         ; $59b2: $1c
    inc h                                         ; $59b3: $24
    inc b                                         ; $59b4: $04
    daa                                           ; $59b5: $27
    inc h                                         ; $59b6: $24
    inc b                                         ; $59b7: $04
    jr nc, @+$26                                  ; $59b8: $30 $24

    inc b                                         ; $59ba: $04
    scf                                           ; $59bb: $37
    inc h                                         ; $59bc: $24
    inc b                                         ; $59bd: $04
    ld b, l                                       ; $59be: $45
    inc h                                         ; $59bf: $24
    inc b                                         ; $59c0: $04
    ld d, c                                       ; $59c1: $51
    inc h                                         ; $59c2: $24
    inc b                                         ; $59c3: $04
    ld h, b                                       ; $59c4: $60
    inc h                                         ; $59c5: $24
    inc b                                         ; $59c6: $04
    ld l, a                                       ; $59c7: $6f
    inc h                                         ; $59c8: $24
    inc b                                         ; $59c9: $04
    ld a, [hl]                                    ; $59ca: $7e
    inc h                                         ; $59cb: $24
    inc b                                         ; $59cc: $04
    adc e                                         ; $59cd: $8b
    inc h                                         ; $59ce: $24
    inc b                                         ; $59cf: $04
    sub l                                         ; $59d0: $95
    inc h                                         ; $59d1: $24
    inc b                                         ; $59d2: $04
    sbc a                                         ; $59d3: $9f
    inc h                                         ; $59d4: $24
    inc b                                         ; $59d5: $04
    or c                                          ; $59d6: $b1
    inc h                                         ; $59d7: $24
    inc b                                         ; $59d8: $04
    pop bc                                        ; $59d9: $c1
    inc h                                         ; $59da: $24
    inc b                                         ; $59db: $04
    jp z, $0424                                   ; $59dc: $ca $24 $04

    ret c                                         ; $59df: $d8

    inc h                                         ; $59e0: $24
    inc b                                         ; $59e1: $04
    and $24                                       ; $59e2: $e6 $24
    inc b                                         ; $59e4: $04
    db $ed                                        ; $59e5: $ed
    inc h                                         ; $59e6: $24
    inc b                                         ; $59e7: $04
    ld a, [$0424]                                 ; $59e8: $fa $24 $04
    ld [bc], a                                    ; $59eb: $02
    dec h                                         ; $59ec: $25
    inc b                                         ; $59ed: $04
    ld c, $25                                     ; $59ee: $0e $25
    inc b                                         ; $59f0: $04
    ld a, [de]                                    ; $59f1: $1a
    dec h                                         ; $59f2: $25
    inc b                                         ; $59f3: $04
    jr z, jr_05f_5a1b                             ; $59f4: $28 $25

    inc b                                         ; $59f6: $04
    scf                                           ; $59f7: $37
    dec h                                         ; $59f8: $25
    inc b                                         ; $59f9: $04
    ld b, [hl]                                    ; $59fa: $46
    dec h                                         ; $59fb: $25
    inc b                                         ; $59fc: $04
    ld e, b                                       ; $59fd: $58
    dec h                                         ; $59fe: $25
    inc b                                         ; $59ff: $04
    ld h, h                                       ; $5a00: $64
    dec h                                         ; $5a01: $25
    inc b                                         ; $5a02: $04
    ld [hl], a                                    ; $5a03: $77
    dec h                                         ; $5a04: $25
    inc b                                         ; $5a05: $04
    adc a                                         ; $5a06: $8f
    dec h                                         ; $5a07: $25
    inc b                                         ; $5a08: $04
    and a                                         ; $5a09: $a7
    dec h                                         ; $5a0a: $25
    inc b                                         ; $5a0b: $04
    rst $00                                       ; $5a0c: $c7
    dec h                                         ; $5a0d: $25
    inc b                                         ; $5a0e: $04
    ldh [rNR51], a                                ; $5a0f: $e0 $25
    inc b                                         ; $5a11: $04
    or $25                                        ; $5a12: $f6 $25
    inc b                                         ; $5a14: $04
    add hl, bc                                    ; $5a15: $09
    ld h, $04                                     ; $5a16: $26 $04
    inc d                                         ; $5a18: $14
    ld h, $04                                     ; $5a19: $26 $04

jr_05f_5a1b:
    ld e, $26                                     ; $5a1b: $1e $26
    inc b                                         ; $5a1d: $04
    jr z, jr_05f_5a46                             ; $5a1e: $28 $26

    inc b                                         ; $5a20: $04
    ld [hl-], a                                   ; $5a21: $32
    ld h, $04                                     ; $5a22: $26 $04
    ld b, l                                       ; $5a24: $45
    ld h, $04                                     ; $5a25: $26 $04
    ld e, d                                       ; $5a27: $5a
    ld h, $04                                     ; $5a28: $26 $04
    ld l, d                                       ; $5a2a: $6a
    ld h, $04                                     ; $5a2b: $26 $04
    ld a, b                                       ; $5a2d: $78
    ld h, $04                                     ; $5a2e: $26 $04
    add a                                         ; $5a30: $87
    ld h, $04                                     ; $5a31: $26 $04
    sub l                                         ; $5a33: $95
    ld h, $04                                     ; $5a34: $26 $04
    and e                                         ; $5a36: $a3
    ld h, $04                                     ; $5a37: $26 $04
    or l                                          ; $5a39: $b5
    ld h, $04                                     ; $5a3a: $26 $04
    jp nc, Jump_000_0426                          ; $5a3c: $d2 $26 $04

    push hl                                       ; $5a3f: $e5
    ld h, $04                                     ; $5a40: $26 $04
    rst $38                                       ; $5a42: $ff
    ld h, $04                                     ; $5a43: $26 $04
    add hl, de                                    ; $5a45: $19

jr_05f_5a46:
    daa                                           ; $5a46: $27
    inc b                                         ; $5a47: $04
    inc sp                                        ; $5a48: $33
    daa                                           ; $5a49: $27
    inc b                                         ; $5a4a: $04
    ld c, l                                       ; $5a4b: $4d
    daa                                           ; $5a4c: $27
    inc b                                         ; $5a4d: $04
    ld h, a                                       ; $5a4e: $67
    daa                                           ; $5a4f: $27
    inc b                                         ; $5a50: $04
    add c                                         ; $5a51: $81
    daa                                           ; $5a52: $27
    inc b                                         ; $5a53: $04
    adc e                                         ; $5a54: $8b
    daa                                           ; $5a55: $27
    inc b                                         ; $5a56: $04
    sub l                                         ; $5a57: $95
    daa                                           ; $5a58: $27
    inc b                                         ; $5a59: $04
    sbc a                                         ; $5a5a: $9f
    daa                                           ; $5a5b: $27
    inc b                                         ; $5a5c: $04
    xor c                                         ; $5a5d: $a9
    daa                                           ; $5a5e: $27
    inc b                                         ; $5a5f: $04
    or e                                          ; $5a60: $b3
    daa                                           ; $5a61: $27
    inc b                                         ; $5a62: $04
    cp l                                          ; $5a63: $bd
    daa                                           ; $5a64: $27
    inc b                                         ; $5a65: $04
    push de                                       ; $5a66: $d5
    daa                                           ; $5a67: $27
    inc b                                         ; $5a68: $04
    and $27                                       ; $5a69: $e6 $27
    inc b                                         ; $5a6b: $04
    rst $30                                       ; $5a6c: $f7
    daa                                           ; $5a6d: $27
    inc b                                         ; $5a6e: $04
    add hl, bc                                    ; $5a6f: $09
    jr z, jr_05f_5a76                             ; $5a70: $28 $04

    inc d                                         ; $5a72: $14
    jr z, @+$06                                   ; $5a73: $28 $04

    ld [hl+], a                                   ; $5a75: $22

jr_05f_5a76:
    jr z, jr_05f_5a7c                             ; $5a76: $28 $04

    ld sp, $0428                                  ; $5a78: $31 $28 $04
    ld b, c                                       ; $5a7b: $41

jr_05f_5a7c:
    jr z, jr_05f_5a82                             ; $5a7c: $28 $04

    ld d, b                                       ; $5a7e: $50
    jr z, jr_05f_5a85                             ; $5a7f: $28 $04

    ld e, a                                       ; $5a81: $5f

jr_05f_5a82:
    jr z, jr_05f_5a88                             ; $5a82: $28 $04

    ld l, [hl]                                    ; $5a84: $6e

jr_05f_5a85:
    jr z, jr_05f_5a8b                             ; $5a85: $28 $04

    ld a, l                                       ; $5a87: $7d

jr_05f_5a88:
    jr z, jr_05f_5a8e                             ; $5a88: $28 $04

    adc h                                         ; $5a8a: $8c

jr_05f_5a8b:
    jr z, jr_05f_5a91                             ; $5a8b: $28 $04

    sbc e                                         ; $5a8d: $9b

jr_05f_5a8e:
    jr z, jr_05f_5a94                             ; $5a8e: $28 $04

    xor d                                         ; $5a90: $aa

jr_05f_5a91:
    jr z, jr_05f_5a97                             ; $5a91: $28 $04

    cp e                                          ; $5a93: $bb

jr_05f_5a94:
    jr z, @+$06                                   ; $5a94: $28 $04

    ret nc                                        ; $5a96: $d0

jr_05f_5a97:
    jr z, @+$06                                   ; $5a97: $28 $04

    ldh [$28], a                                  ; $5a99: $e0 $28
    inc b                                         ; $5a9b: $04
    xor $28                                       ; $5a9c: $ee $28
    inc b                                         ; $5a9e: $04
    db $fc                                        ; $5a9f: $fc
    jr z, jr_05f_5aa6                             ; $5aa0: $28 $04

    dec d                                         ; $5aa2: $15
    add hl, hl                                    ; $5aa3: $29
    inc b                                         ; $5aa4: $04
    add hl, hl                                    ; $5aa5: $29

jr_05f_5aa6:
    add hl, hl                                    ; $5aa6: $29
    inc b                                         ; $5aa7: $04
    ld a, $29                                     ; $5aa8: $3e $29
    inc b                                         ; $5aaa: $04
    ld c, h                                       ; $5aab: $4c
    add hl, hl                                    ; $5aac: $29
    inc b                                         ; $5aad: $04
    ld h, e                                       ; $5aae: $63
    add hl, hl                                    ; $5aaf: $29
    inc b                                         ; $5ab0: $04
    ld a, b                                       ; $5ab1: $78
    add hl, hl                                    ; $5ab2: $29
    inc b                                         ; $5ab3: $04
    adc a                                         ; $5ab4: $8f
    add hl, hl                                    ; $5ab5: $29
    inc b                                         ; $5ab6: $04
    sbc e                                         ; $5ab7: $9b
    add hl, hl                                    ; $5ab8: $29
    inc b                                         ; $5ab9: $04
    xor l                                         ; $5aba: $ad
    add hl, hl                                    ; $5abb: $29
    inc b                                         ; $5abc: $04
    cp e                                          ; $5abd: $bb
    add hl, hl                                    ; $5abe: $29
    inc b                                         ; $5abf: $04
    jp nc, Jump_000_0429                          ; $5ac0: $d2 $29 $04

    db $e3                                        ; $5ac3: $e3
    add hl, hl                                    ; $5ac4: $29
    inc b                                         ; $5ac5: $04
    rst $28                                       ; $5ac6: $ef
    add hl, hl                                    ; $5ac7: $29
    inc b                                         ; $5ac8: $04
    inc bc                                        ; $5ac9: $03
    ld a, [hl+]                                   ; $5aca: $2a
    inc b                                         ; $5acb: $04
    dec de                                        ; $5acc: $1b
    ld a, [hl+]                                   ; $5acd: $2a
    inc b                                         ; $5ace: $04
    jr nc, @+$2c                                  ; $5acf: $30 $2a

    inc b                                         ; $5ad1: $04
    dec a                                         ; $5ad2: $3d
    ld a, [hl+]                                   ; $5ad3: $2a
    inc b                                         ; $5ad4: $04
    ld c, l                                       ; $5ad5: $4d
    ld a, [hl+]                                   ; $5ad6: $2a
    inc b                                         ; $5ad7: $04
    ld e, c                                       ; $5ad8: $59
    ld a, [hl+]                                   ; $5ad9: $2a
    inc b                                         ; $5ada: $04
    ld l, b                                       ; $5adb: $68
    ld a, [hl+]                                   ; $5adc: $2a
    inc b                                         ; $5add: $04
    ld a, b                                       ; $5ade: $78
    ld a, [hl+]                                   ; $5adf: $2a
    inc b                                         ; $5ae0: $04
    add d                                         ; $5ae1: $82
    ld a, [hl+]                                   ; $5ae2: $2a
    inc b                                         ; $5ae3: $04
    sub h                                         ; $5ae4: $94
    ld a, [hl+]                                   ; $5ae5: $2a

Call_05f_5ae6:
    inc b                                         ; $5ae6: $04
    and c                                         ; $5ae7: $a1
    ld a, [hl+]                                   ; $5ae8: $2a
    inc b                                         ; $5ae9: $04
    or d                                          ; $5aea: $b2
    ld a, [hl+]                                   ; $5aeb: $2a
    inc b                                         ; $5aec: $04
    pop bc                                        ; $5aed: $c1
    ld a, [hl+]                                   ; $5aee: $2a
    inc b                                         ; $5aef: $04
    ret nc                                        ; $5af0: $d0

    ld a, [hl+]                                   ; $5af1: $2a
    inc b                                         ; $5af2: $04
    rst $18                                       ; $5af3: $df
    ld a, [hl+]                                   ; $5af4: $2a
    inc b                                         ; $5af5: $04
    ldh a, [$2a]                                  ; $5af6: $f0 $2a
    inc b                                         ; $5af8: $04
    ld bc, $042b                                  ; $5af9: $01 $2b $04
    dec c                                         ; $5afc: $0d
    dec hl                                        ; $5afd: $2b
    inc b                                         ; $5afe: $04
    inc hl                                        ; $5aff: $23
    dec hl                                        ; $5b00: $2b
    inc b                                         ; $5b01: $04
    inc a                                         ; $5b02: $3c
    dec hl                                        ; $5b03: $2b
    inc b                                         ; $5b04: $04
    ld c, e                                       ; $5b05: $4b
    dec hl                                        ; $5b06: $2b
    inc b                                         ; $5b07: $04
    ld e, [hl]                                    ; $5b08: $5e
    dec hl                                        ; $5b09: $2b
    inc b                                         ; $5b0a: $04
    ld [hl], c                                    ; $5b0b: $71
    dec hl                                        ; $5b0c: $2b
    inc b                                         ; $5b0d: $04
    ld a, l                                       ; $5b0e: $7d
    dec hl                                        ; $5b0f: $2b
    inc b                                         ; $5b10: $04
    adc h                                         ; $5b11: $8c
    dec hl                                        ; $5b12: $2b
    inc b                                         ; $5b13: $04
    and b                                         ; $5b14: $a0
    dec hl                                        ; $5b15: $2b
    inc b                                         ; $5b16: $04
    or c                                          ; $5b17: $b1
    dec hl                                        ; $5b18: $2b
    inc b                                         ; $5b19: $04
    rst $00                                       ; $5b1a: $c7
    dec hl                                        ; $5b1b: $2b
    inc b                                         ; $5b1c: $04
    db $d3                                        ; $5b1d: $d3
    dec hl                                        ; $5b1e: $2b
    inc b                                         ; $5b1f: $04
    sub e                                         ; $5b20: $93
    inc l                                         ; $5b21: $2c
    inc b                                         ; $5b22: $04
    cp e                                          ; $5b23: $bb
    inc l                                         ; $5b24: $2c
    inc b                                         ; $5b25: $04
    sra h                                         ; $5b26: $cb $2c
    inc b                                         ; $5b28: $04
    push de                                       ; $5b29: $d5
    inc l                                         ; $5b2a: $2c
    inc b                                         ; $5b2b: $04
    db $e4                                        ; $5b2c: $e4
    inc l                                         ; $5b2d: $2c
    inc b                                         ; $5b2e: $04
    ld a, [c]                                     ; $5b2f: $f2
    inc l                                         ; $5b30: $2c
    inc b                                         ; $5b31: $04
    inc bc                                        ; $5b32: $03
    dec l                                         ; $5b33: $2d
    inc b                                         ; $5b34: $04
    rrca                                          ; $5b35: $0f
    dec l                                         ; $5b36: $2d
    inc b                                         ; $5b37: $04
    dec de                                        ; $5b38: $1b
    dec l                                         ; $5b39: $2d
    inc b                                         ; $5b3a: $04
    ld hl, $042d                                  ; $5b3b: $21 $2d $04
    jr z, jr_05f_5b6d                             ; $5b3e: $28 $2d

    inc b                                         ; $5b40: $04
    cpl                                           ; $5b41: $2f
    dec l                                         ; $5b42: $2d
    inc b                                         ; $5b43: $04
    ld [hl], $2d                                  ; $5b44: $36 $2d
    inc b                                         ; $5b46: $04
    dec a                                         ; $5b47: $3d
    dec l                                         ; $5b48: $2d
    inc b                                         ; $5b49: $04
    ld b, [hl]                                    ; $5b4a: $46
    dec l                                         ; $5b4b: $2d
    inc b                                         ; $5b4c: $04
    ld e, l                                       ; $5b4d: $5d
    dec l                                         ; $5b4e: $2d
    inc b                                         ; $5b4f: $04
    ld l, e                                       ; $5b50: $6b
    dec l                                         ; $5b51: $2d
    inc b                                         ; $5b52: $04
    ld [hl], e                                    ; $5b53: $73
    dec l                                         ; $5b54: $2d
    inc b                                         ; $5b55: $04
    ld a, e                                       ; $5b56: $7b
    dec l                                         ; $5b57: $2d
    inc b                                         ; $5b58: $04
    add d                                         ; $5b59: $82
    dec l                                         ; $5b5a: $2d
    inc b                                         ; $5b5b: $04
    adc l                                         ; $5b5c: $8d
    dec l                                         ; $5b5d: $2d
    inc b                                         ; $5b5e: $04
    sub l                                         ; $5b5f: $95
    dec l                                         ; $5b60: $2d
    inc b                                         ; $5b61: $04
    sbc h                                         ; $5b62: $9c
    dec l                                         ; $5b63: $2d
    inc b                                         ; $5b64: $04
    and l                                         ; $5b65: $a5
    dec l                                         ; $5b66: $2d
    inc b                                         ; $5b67: $04
    xor e                                         ; $5b68: $ab
    dec l                                         ; $5b69: $2d
    inc b                                         ; $5b6a: $04
    or b                                          ; $5b6b: $b0
    dec l                                         ; $5b6c: $2d

jr_05f_5b6d:
    inc b                                         ; $5b6d: $04
    cp b                                          ; $5b6e: $b8
    dec l                                         ; $5b6f: $2d
    inc b                                         ; $5b70: $04
    jp nz, Jump_000_042d                          ; $5b71: $c2 $2d $04

    rst $08                                       ; $5b74: $cf
    dec l                                         ; $5b75: $2d
    inc b                                         ; $5b76: $04
    call c, Call_000_042d                         ; $5b77: $dc $2d $04
    db $e3                                        ; $5b7a: $e3
    dec l                                         ; $5b7b: $2d
    inc b                                         ; $5b7c: $04
    xor $2d                                       ; $5b7d: $ee $2d
    inc b                                         ; $5b7f: $04
    push af                                       ; $5b80: $f5
    dec l                                         ; $5b81: $2d
    inc b                                         ; $5b82: $04
    db $fd                                        ; $5b83: $fd
    dec l                                         ; $5b84: $2d
    inc b                                         ; $5b85: $04
    ld a, [bc]                                    ; $5b86: $0a
    ld l, $04                                     ; $5b87: $2e $04
    ld de, $042e                                  ; $5b89: $11 $2e $04
    add hl, de                                    ; $5b8c: $19
    ld l, $04                                     ; $5b8d: $2e $04
    rra                                           ; $5b8f: $1f
    ld l, $04                                     ; $5b90: $2e $04
    inc l                                         ; $5b92: $2c
    ld l, $04                                     ; $5b93: $2e $04
    dec a                                         ; $5b95: $3d
    ld l, $04                                     ; $5b96: $2e $04
    ld c, b                                       ; $5b98: $48
    ld l, $04                                     ; $5b99: $2e $04
    ld d, l                                       ; $5b9b: $55
    ld l, $04                                     ; $5b9c: $2e $04
    ld h, c                                       ; $5b9e: $61
    ld l, $04                                     ; $5b9f: $2e $04
    ld [hl], c                                    ; $5ba1: $71
    ld l, $04                                     ; $5ba2: $2e $04
    halt                                          ; $5ba4: $76
    ld l, $04                                     ; $5ba5: $2e $04
    add d                                         ; $5ba7: $82
    ld l, $04                                     ; $5ba8: $2e $04
    adc c                                         ; $5baa: $89
    ld l, $04                                     ; $5bab: $2e $04
    adc l                                         ; $5bad: $8d
    ld l, $04                                     ; $5bae: $2e $04
    sub e                                         ; $5bb0: $93
    ld l, $04                                     ; $5bb1: $2e $04
    and b                                         ; $5bb3: $a0
    ld l, $04                                     ; $5bb4: $2e $04
    ret z                                         ; $5bb6: $c8

    ld l, $04                                     ; $5bb7: $2e $04
    jp nc, $042e                                  ; $5bb9: $d2 $2e $04

    sbc $2e                                       ; $5bbc: $de $2e
    inc b                                         ; $5bbe: $04
    cp $2e                                        ; $5bbf: $fe $2e
    inc b                                         ; $5bc1: $04
    inc e                                         ; $5bc2: $1c
    cpl                                           ; $5bc3: $2f
    inc b                                         ; $5bc4: $04
    jr nc, jr_05f_5bf6                            ; $5bc5: $30 $2f

    inc b                                         ; $5bc7: $04
    ld b, l                                       ; $5bc8: $45
    cpl                                           ; $5bc9: $2f
    inc b                                         ; $5bca: $04
    ld e, d                                       ; $5bcb: $5a
    cpl                                           ; $5bcc: $2f
    inc b                                         ; $5bcd: $04
    ld l, l                                       ; $5bce: $6d
    cpl                                           ; $5bcf: $2f
    inc b                                         ; $5bd0: $04
    add d                                         ; $5bd1: $82
    cpl                                           ; $5bd2: $2f
    inc b                                         ; $5bd3: $04
    xor e                                         ; $5bd4: $ab
    cpl                                           ; $5bd5: $2f
    inc b                                         ; $5bd6: $04
    jp nc, $042f                                  ; $5bd7: $d2 $2f $04

    ld [$042f], a                                 ; $5bda: $ea $2f $04
    ld hl, sp+$2f                                 ; $5bdd: $f8 $2f
    inc b                                         ; $5bdf: $04
    rlca                                          ; $5be0: $07
    jr nc, @+$06                                  ; $5be1: $30 $04

    rla                                           ; $5be3: $17
    jr nc, @+$06                                  ; $5be4: $30 $04

    ld l, $30                                     ; $5be6: $2e $30
    inc b                                         ; $5be8: $04
    ld a, $30                                     ; $5be9: $3e $30
    inc b                                         ; $5beb: $04
    ld d, a                                       ; $5bec: $57
    jr nc, jr_05f_5bf3                            ; $5bed: $30 $04

    ld h, c                                       ; $5bef: $61
    jr nc, jr_05f_5bf6                            ; $5bf0: $30 $04

    ld l, h                                       ; $5bf2: $6c

jr_05f_5bf3:
    jr nc, jr_05f_5bf9                            ; $5bf3: $30 $04

    ld a, d                                       ; $5bf5: $7a

jr_05f_5bf6:
    jr nc, jr_05f_5bfc                            ; $5bf6: $30 $04

    adc c                                         ; $5bf8: $89

jr_05f_5bf9:
    jr nc, jr_05f_5bff                            ; $5bf9: $30 $04

    sub [hl]                                      ; $5bfb: $96

jr_05f_5bfc:
    jr nc, jr_05f_5c02                            ; $5bfc: $30 $04

    and d                                         ; $5bfe: $a2

jr_05f_5bff:
    jr nc, @+$06                                  ; $5bff: $30 $04

    cp [hl]                                       ; $5c01: $be

jr_05f_5c02:
    jr nc, @+$06                                  ; $5c02: $30 $04

    jp c, Jump_000_0430                           ; $5c04: $da $30 $04

    ld bc, $0431                                  ; $5c07: $01 $31 $04
    inc hl                                        ; $5c0a: $23
    ld sp, $5604                                  ; $5c0b: $31 $04 $56
    ld sp, $6804                                  ; $5c0e: $31 $04 $68
    ld sp, $7b04                                  ; $5c11: $31 $04 $7b
    ld sp, $8604                                  ; $5c14: $31 $04 $86
    ld sp, $8e04                                  ; $5c17: $31 $04 $8e
    ld sp, $a304                                  ; $5c1a: $31 $04 $a3
    ld sp, $ad04                                  ; $5c1d: $31 $04 $ad
    ld sp, $b804                                  ; $5c20: $31 $04 $b8
    ld sp, $c504                                  ; $5c23: $31 $04 $c5
    ld sp, $f004                                  ; $5c26: $31 $04 $f0
    ld sp, $1904                                  ; $5c29: $31 $04 $19
    ld [hl-], a                                   ; $5c2c: $32
    inc b                                         ; $5c2d: $04
    ld b, b                                       ; $5c2e: $40
    ld [hl-], a                                   ; $5c2f: $32
    inc b                                         ; $5c30: $04
    ld l, b                                       ; $5c31: $68
    ld [hl-], a                                   ; $5c32: $32
    inc b                                         ; $5c33: $04
    sub e                                         ; $5c34: $93
    ld [hl-], a                                   ; $5c35: $32
    inc b                                         ; $5c36: $04
    ret z                                         ; $5c37: $c8

    ld [hl-], a                                   ; $5c38: $32
    inc b                                         ; $5c39: $04
    ld sp, hl                                     ; $5c3a: $f9
    ld [hl-], a                                   ; $5c3b: $32
    inc b                                         ; $5c3c: $04
    ld l, $33                                     ; $5c3d: $2e $33
    inc b                                         ; $5c3f: $04
    ld l, c                                       ; $5c40: $69
    inc sp                                        ; $5c41: $33
    inc b                                         ; $5c42: $04
    or l                                          ; $5c43: $b5
    inc sp                                        ; $5c44: $33
    inc b                                         ; $5c45: $04
    add hl, bc                                    ; $5c46: $09
    inc [hl]                                      ; $5c47: $34
    inc b                                         ; $5c48: $04
    dec sp                                        ; $5c49: $3b
    inc [hl]                                      ; $5c4a: $34
    inc b                                         ; $5c4b: $04
    ld a, a                                       ; $5c4c: $7f
    inc [hl]                                      ; $5c4d: $34
    inc b                                         ; $5c4e: $04
    ld h, a                                       ; $5c4f: $67
    dec [hl]                                      ; $5c50: $35
    inc b                                         ; $5c51: $04
    ld [hl], b                                    ; $5c52: $70
    dec [hl]                                      ; $5c53: $35
    inc b                                         ; $5c54: $04
    ld a, h                                       ; $5c55: $7c
    dec [hl]                                      ; $5c56: $35
    inc b                                         ; $5c57: $04
    add d                                         ; $5c58: $82
    dec [hl]                                      ; $5c59: $35
    inc b                                         ; $5c5a: $04
    adc c                                         ; $5c5b: $89
    dec [hl]                                      ; $5c5c: $35
    inc b                                         ; $5c5d: $04
    sub h                                         ; $5c5e: $94
    dec [hl]                                      ; $5c5f: $35
    inc b                                         ; $5c60: $04
    and c                                         ; $5c61: $a1
    dec [hl]                                      ; $5c62: $35
    inc b                                         ; $5c63: $04
    xor l                                         ; $5c64: $ad
    dec [hl]                                      ; $5c65: $35
    inc b                                         ; $5c66: $04
    cp b                                          ; $5c67: $b8
    dec [hl]                                      ; $5c68: $35
    inc b                                         ; $5c69: $04
    jp Jump_000_0435                              ; $5c6a: $c3 $35 $04


    swap l                                        ; $5c6d: $cb $35
    inc b                                         ; $5c6f: $04
    sub $35                                       ; $5c70: $d6 $35
    inc b                                         ; $5c72: $04
    db $db                                        ; $5c73: $db

Jump_05f_5c74:
    dec [hl]                                      ; $5c74: $35
    inc b                                         ; $5c75: $04
    ldh [$35], a                                  ; $5c76: $e0 $35
    inc b                                         ; $5c78: $04
    push hl                                       ; $5c79: $e5
    dec [hl]                                      ; $5c7a: $35
    inc b                                         ; $5c7b: $04
    db $ec                                        ; $5c7c: $ec
    dec [hl]                                      ; $5c7d: $35
    inc b                                         ; $5c7e: $04
    push af                                       ; $5c7f: $f5
    dec [hl]                                      ; $5c80: $35
    inc b                                         ; $5c81: $04
    ld sp, hl                                     ; $5c82: $f9
    dec [hl]                                      ; $5c83: $35
    inc b                                         ; $5c84: $04
    inc b                                         ; $5c85: $04
    ld [hl], $04                                  ; $5c86: $36 $04
    ld c, $36                                     ; $5c88: $0e $36
    inc b                                         ; $5c8a: $04
    jr @+$38                                      ; $5c8b: $18 $36

    inc b                                         ; $5c8d: $04
    dec e                                         ; $5c8e: $1d
    ld [hl], $04                                  ; $5c8f: $36 $04
    ld [hl+], a                                   ; $5c91: $22
    ld [hl], $04                                  ; $5c92: $36 $04
    add hl, hl                                    ; $5c94: $29
    ld [hl], $04                                  ; $5c95: $36 $04
    jr nc, @+$38                                  ; $5c97: $30 $36

    inc b                                         ; $5c99: $04
    ld [hl], $36                                  ; $5c9a: $36 $36
    inc b                                         ; $5c9c: $04
    ld a, $36                                     ; $5c9d: $3e $36
    inc b                                         ; $5c9f: $04
    ld b, e                                       ; $5ca0: $43
    ld [hl], $04                                  ; $5ca1: $36 $04
    ld c, [hl]                                    ; $5ca3: $4e
    ld [hl], $04                                  ; $5ca4: $36 $04
    ld h, c                                       ; $5ca6: $61
    ld [hl], $04                                  ; $5ca7: $36 $04
    ld l, b                                       ; $5ca9: $68
    ld [hl], $04                                  ; $5caa: $36 $04
    ld [hl], e                                    ; $5cac: $73
    ld [hl], $04                                  ; $5cad: $36 $04
    ld a, d                                       ; $5caf: $7a
    ld [hl], $04                                  ; $5cb0: $36 $04
    add b                                         ; $5cb2: $80
    ld [hl], $04                                  ; $5cb3: $36 $04
    adc b                                         ; $5cb5: $88
    ld [hl], $04                                  ; $5cb6: $36 $04
    sub c                                         ; $5cb8: $91
    ld [hl], $04                                  ; $5cb9: $36 $04
    sbc h                                         ; $5cbb: $9c
    ld [hl], $04                                  ; $5cbc: $36 $04
    xor c                                         ; $5cbe: $a9
    ld [hl], $04                                  ; $5cbf: $36 $04
    or h                                          ; $5cc1: $b4
    ld [hl], $04                                  ; $5cc2: $36 $04
    cp [hl]                                       ; $5cc4: $be
    ld [hl], $04                                  ; $5cc5: $36 $04
    rst $00                                       ; $5cc7: $c7
    ld [hl], $04                                  ; $5cc8: $36 $04
    rst $08                                       ; $5cca: $cf
    ld [hl], $04                                  ; $5ccb: $36 $04
    ld [c], a                                     ; $5ccd: $e2
    ld [hl], $04                                  ; $5cce: $36 $04
    rst $28                                       ; $5cd0: $ef
    ld [hl], $04                                  ; $5cd1: $36 $04
    ld a, [$0436]                                 ; $5cd3: $fa $36 $04
    ld [bc], a                                    ; $5cd6: $02
    scf                                           ; $5cd7: $37
    inc b                                         ; $5cd8: $04
    dec c                                         ; $5cd9: $0d
    scf                                           ; $5cda: $37
    inc b                                         ; $5cdb: $04
    inc d                                         ; $5cdc: $14
    scf                                           ; $5cdd: $37
    inc b                                         ; $5cde: $04
    add hl, de                                    ; $5cdf: $19
    scf                                           ; $5ce0: $37
    inc b                                         ; $5ce1: $04
    daa                                           ; $5ce2: $27
    scf                                           ; $5ce3: $37
    inc b                                         ; $5ce4: $04
    jr nc, jr_05f_5d1e                            ; $5ce5: $30 $37

    inc b                                         ; $5ce7: $04
    ld a, $37                                     ; $5ce8: $3e $37
    inc b                                         ; $5cea: $04
    ld d, l                                       ; $5ceb: $55
    scf                                           ; $5cec: $37
    inc b                                         ; $5ced: $04
    ld a, b                                       ; $5cee: $78
    scf                                           ; $5cef: $37
    inc b                                         ; $5cf0: $04
    swap a                                        ; $5cf1: $cb $37
    inc b                                         ; $5cf3: $04
    ld [de], a                                    ; $5cf4: $12
    jr c, jr_05f_5cfb                             ; $5cf5: $38 $04

    dec a                                         ; $5cf7: $3d
    jr c, jr_05f_5cfe                             ; $5cf8: $38 $04

    ld h, d                                       ; $5cfa: $62

jr_05f_5cfb:
    jr c, jr_05f_5d01                             ; $5cfb: $38 $04

    sub h                                         ; $5cfd: $94

jr_05f_5cfe:
    jr c, jr_05f_5d04                             ; $5cfe: $38 $04

    xor b                                         ; $5d00: $a8

jr_05f_5d01:
    jr c, jr_05f_5d07                             ; $5d01: $38 $04

    push de                                       ; $5d03: $d5

jr_05f_5d04:
    jr c, jr_05f_5d0a                             ; $5d04: $38 $04

    add hl, bc                                    ; $5d06: $09

jr_05f_5d07:
    add hl, sp                                    ; $5d07: $39
    inc b                                         ; $5d08: $04
    dec l                                         ; $5d09: $2d

jr_05f_5d0a:
    add hl, sp                                    ; $5d0a: $39
    inc b                                         ; $5d0b: $04
    ld b, l                                       ; $5d0c: $45
    add hl, sp                                    ; $5d0d: $39
    inc b                                         ; $5d0e: $04
    ld l, a                                       ; $5d0f: $6f
    add hl, sp                                    ; $5d10: $39
    inc b                                         ; $5d11: $04
    and d                                         ; $5d12: $a2
    add hl, sp                                    ; $5d13: $39
    inc b                                         ; $5d14: $04
    jp nc, Jump_000_0439                          ; $5d15: $d2 $39 $04

    cp $39                                        ; $5d18: $fe $39
    inc b                                         ; $5d1a: $04
    inc [hl]                                      ; $5d1b: $34
    ld a, [hl-]                                   ; $5d1c: $3a
    inc b                                         ; $5d1d: $04

jr_05f_5d1e:
    ld e, c                                       ; $5d1e: $59
    ld a, [hl-]                                   ; $5d1f: $3a
    inc b                                         ; $5d20: $04
    add l                                         ; $5d21: $85
    ld a, [hl-]                                   ; $5d22: $3a
    inc b                                         ; $5d23: $04
    xor l                                         ; $5d24: $ad
    ld a, [hl-]                                   ; $5d25: $3a
    inc b                                         ; $5d26: $04
    db $d3                                        ; $5d27: $d3
    ld a, [hl-]                                   ; $5d28: $3a
    inc b                                         ; $5d29: $04
    db $fd                                        ; $5d2a: $fd
    ld a, [hl-]                                   ; $5d2b: $3a
    inc b                                         ; $5d2c: $04
    dec h                                         ; $5d2d: $25
    dec sp                                        ; $5d2e: $3b
    inc b                                         ; $5d2f: $04
    ld h, h                                       ; $5d30: $64
    dec sp                                        ; $5d31: $3b
    inc b                                         ; $5d32: $04
    add a                                         ; $5d33: $87
    dec sp                                        ; $5d34: $3b
    inc b                                         ; $5d35: $04
    xor d                                         ; $5d36: $aa
    dec sp                                        ; $5d37: $3b
    inc b                                         ; $5d38: $04
    srl e                                         ; $5d39: $cb $3b
    inc b                                         ; $5d3b: $04
    jp hl                                         ; $5d3c: $e9


    dec sp                                        ; $5d3d: $3b
    inc b                                         ; $5d3e: $04
    inc d                                         ; $5d3f: $14
    inc a                                         ; $5d40: $3c
    inc b                                         ; $5d41: $04
    ld b, h                                       ; $5d42: $44
    inc a                                         ; $5d43: $3c
    inc b                                         ; $5d44: $04
    ld l, a                                       ; $5d45: $6f
    inc a                                         ; $5d46: $3c
    inc b                                         ; $5d47: $04
    or [hl]                                       ; $5d48: $b6
    inc a                                         ; $5d49: $3c
    inc b                                         ; $5d4a: $04
    di                                            ; $5d4b: $f3
    inc a                                         ; $5d4c: $3c
    inc b                                         ; $5d4d: $04
    ld a, [hl+]                                   ; $5d4e: $2a
    dec a                                         ; $5d4f: $3d
    inc b                                         ; $5d50: $04
    ld b, h                                       ; $5d51: $44
    dec a                                         ; $5d52: $3d
    inc b                                         ; $5d53: $04
    add e                                         ; $5d54: $83
    dec a                                         ; $5d55: $3d
    inc b                                         ; $5d56: $04
    or b                                          ; $5d57: $b0
    dec a                                         ; $5d58: $3d
    inc b                                         ; $5d59: $04
    ret z                                         ; $5d5a: $c8

    dec a                                         ; $5d5b: $3d
    inc b                                         ; $5d5c: $04
    dec b                                         ; $5d5d: $05
    ld a, $04                                     ; $5d5e: $3e $04
    dec l                                         ; $5d60: $2d
    ld a, $04                                     ; $5d61: $3e $04
    ld d, a                                       ; $5d63: $57
    ld a, $04                                     ; $5d64: $3e $04
    sub [hl]                                      ; $5d66: $96
    ld a, $04                                     ; $5d67: $3e $04
    jp z, $043e                                   ; $5d69: $ca $3e $04

    xor $3e                                       ; $5d6c: $ee $3e
    inc b                                         ; $5d6e: $04
    ld a, [hl-]                                   ; $5d6f: $3a
    ccf                                           ; $5d70: $3f
    inc b                                         ; $5d71: $04
    ld e, [hl]                                    ; $5d72: $5e
    ccf                                           ; $5d73: $3f
    inc b                                         ; $5d74: $04
    sub c                                         ; $5d75: $91
    ccf                                           ; $5d76: $3f
    inc b                                         ; $5d77: $04
    cp l                                          ; $5d78: $bd
    ccf                                           ; $5d79: $3f
    dec b                                         ; $5d7a: $05
    ld bc, $0500                                  ; $5d7b: $01 $00 $05
    ld h, $00                                     ; $5d7e: $26 $00
    dec b                                         ; $5d80: $05
    ld l, [hl]                                    ; $5d81: $6e
    nop                                           ; $5d82: $00
    dec b                                         ; $5d83: $05
    ld a, $01                                     ; $5d84: $3e $01
    dec b                                         ; $5d86: $05
    or c                                          ; $5d87: $b1
    ld bc, $2905                                  ; $5d88: $01 $05 $29
    ld [bc], a                                    ; $5d8b: $02
    dec b                                         ; $5d8c: $05
    and [hl]                                      ; $5d8d: $a6
    ld [bc], a                                    ; $5d8e: $02
    dec b                                         ; $5d8f: $05
    db $fc                                        ; $5d90: $fc
    ld [bc], a                                    ; $5d91: $02
    dec b                                         ; $5d92: $05
    ld [$0503], a                                 ; $5d93: $ea $03 $05
    ld [hl], c                                    ; $5d96: $71
    inc b                                         ; $5d97: $04
    dec b                                         ; $5d98: $05
    sbc b                                         ; $5d99: $98
    dec b                                         ; $5d9a: $05
    dec b                                         ; $5d9b: $05
    inc l                                         ; $5d9c: $2c
    ld b, $05                                     ; $5d9d: $06 $05
    ld h, [hl]                                    ; $5d9f: $66
    ld b, $05                                     ; $5da0: $06 $05
    jp nz, $0506                                  ; $5da2: $c2 $06 $05

    ldh a, [rTMA]                                 ; $5da5: $f0 $06
    dec b                                         ; $5da7: $05
    ld a, [hl+]                                   ; $5da8: $2a
    rlca                                          ; $5da9: $07
    dec b                                         ; $5daa: $05
    ld c, e                                       ; $5dab: $4b
    rlca                                          ; $5dac: $07
    dec b                                         ; $5dad: $05
    ld a, l                                       ; $5dae: $7d
    rlca                                          ; $5daf: $07
    dec b                                         ; $5db0: $05
    sbc l                                         ; $5db1: $9d
    rlca                                          ; $5db2: $07
    dec b                                         ; $5db3: $05
    jp $0507                                      ; $5db4: $c3 $07 $05


    add sp, $07                                   ; $5db7: $e8 $07
    dec b                                         ; $5db9: $05
    inc c                                         ; $5dba: $0c
    ld [$2e05], sp                                ; $5dbb: $08 $05 $2e
    ld [$5305], sp                                ; $5dbe: $08 $05 $53
    ld [$6505], sp                                ; $5dc1: $08 $05 $65
    ld [$7805], sp                                ; $5dc4: $08 $05 $78
    ld [$9d05], sp                                ; $5dc7: $08 $05 $9d
    ld [$c105], sp                                ; $5dca: $08 $05 $c1
    ld [$f005], sp                                ; $5dcd: $08 $05 $f0
    ld [$0805], sp                                ; $5dd0: $08 $05 $08
    add hl, bc                                    ; $5dd3: $09
    dec b                                         ; $5dd4: $05
    inc [hl]                                      ; $5dd5: $34
    add hl, bc                                    ; $5dd6: $09
    dec b                                         ; $5dd7: $05
    ld [hl], c                                    ; $5dd8: $71
    add hl, bc                                    ; $5dd9: $09
    dec b                                         ; $5dda: $05
    sub c                                         ; $5ddb: $91
    add hl, bc                                    ; $5ddc: $09
    dec b                                         ; $5ddd: $05
    or e                                          ; $5dde: $b3
    add hl, bc                                    ; $5ddf: $09
    dec b                                         ; $5de0: $05
    adc $09                                       ; $5de1: $ce $09
    dec b                                         ; $5de3: $05
    rst $38                                       ; $5de4: $ff
    add hl, bc                                    ; $5de5: $09
    dec b                                         ; $5de6: $05
    add hl, de                                    ; $5de7: $19
    ld a, [bc]                                    ; $5de8: $0a
    dec b                                         ; $5de9: $05
    dec a                                         ; $5dea: $3d
    ld a, [bc]                                    ; $5deb: $0a
    dec b                                         ; $5dec: $05
    ld [hl], a                                    ; $5ded: $77
    ld a, [bc]                                    ; $5dee: $0a
    dec b                                         ; $5def: $05
    ld a, b                                       ; $5df0: $78
    ld a, [bc]                                    ; $5df1: $0a
    dec b                                         ; $5df2: $05
    and e                                         ; $5df3: $a3
    ld a, [bc]                                    ; $5df4: $0a
    dec b                                         ; $5df5: $05
    rst $00                                       ; $5df6: $c7
    ld a, [bc]                                    ; $5df7: $0a
    dec b                                         ; $5df8: $05
    add sp, $0a                                   ; $5df9: $e8 $0a
    dec b                                         ; $5dfb: $05
    add hl, de                                    ; $5dfc: $19
    dec bc                                        ; $5dfd: $0b
    dec b                                         ; $5dfe: $05
    ld d, a                                       ; $5dff: $57
    dec bc                                        ; $5e00: $0b
    dec b                                         ; $5e01: $05
    ld a, [hl]                                    ; $5e02: $7e
    dec bc                                        ; $5e03: $0b
    dec b                                         ; $5e04: $05
    sbc a                                         ; $5e05: $9f
    dec bc                                        ; $5e06: $0b
    dec b                                         ; $5e07: $05
    ret nz                                        ; $5e08: $c0

    dec bc                                        ; $5e09: $0b
    dec b                                         ; $5e0a: $05
    call Call_000_050b                            ; $5e0b: $cd $0b $05
    db $fd                                        ; $5e0e: $fd
    dec bc                                        ; $5e0f: $0b
    dec b                                         ; $5e10: $05
    dec h                                         ; $5e11: $25
    inc c                                         ; $5e12: $0c
    dec b                                         ; $5e13: $05
    ccf                                           ; $5e14: $3f
    inc c                                         ; $5e15: $0c
    dec b                                         ; $5e16: $05
    ld h, b                                       ; $5e17: $60
    inc c                                         ; $5e18: $0c
    dec b                                         ; $5e19: $05
    sub b                                         ; $5e1a: $90
    inc c                                         ; $5e1b: $0c
    dec b                                         ; $5e1c: $05
    xor l                                         ; $5e1d: $ad
    inc c                                         ; $5e1e: $0c
    dec b                                         ; $5e1f: $05
    or [hl]                                       ; $5e20: $b6
    inc c                                         ; $5e21: $0c
    dec b                                         ; $5e22: $05
    jp z, Jump_000_050c                           ; $5e23: $ca $0c $05

    ld d, $0d                                     ; $5e26: $16 $0d
    dec b                                         ; $5e28: $05
    ld b, h                                       ; $5e29: $44
    dec c                                         ; $5e2a: $0d
    dec b                                         ; $5e2b: $05
    ld a, h                                       ; $5e2c: $7c
    dec c                                         ; $5e2d: $0d
    dec b                                         ; $5e2e: $05
    and [hl]                                      ; $5e2f: $a6
    dec c                                         ; $5e30: $0d
    dec b                                         ; $5e31: $05
    push de                                       ; $5e32: $d5
    dec c                                         ; $5e33: $0d
    dec b                                         ; $5e34: $05
    ld [bc], a                                    ; $5e35: $02
    ld c, $05                                     ; $5e36: $0e $05
    ld [hl+], a                                   ; $5e38: $22
    ld c, $05                                     ; $5e39: $0e $05
    ld d, a                                       ; $5e3b: $57
    ld c, $05                                     ; $5e3c: $0e $05
    ld [hl], a                                    ; $5e3e: $77
    ld c, $05                                     ; $5e3f: $0e $05
    and c                                         ; $5e41: $a1
    ld c, $05                                     ; $5e42: $0e $05
    cp a                                          ; $5e44: $bf
    ld c, $05                                     ; $5e45: $0e $05
    ld [$050e], a                                 ; $5e47: $ea $0e $05
    rlca                                          ; $5e4a: $07
    rrca                                          ; $5e4b: $0f
    dec b                                         ; $5e4c: $05
    ld b, l                                       ; $5e4d: $45
    rrca                                          ; $5e4e: $0f
    dec b                                         ; $5e4f: $05
    ld b, [hl]                                    ; $5e50: $46
    rrca                                          ; $5e51: $0f
    dec b                                         ; $5e52: $05
    ld l, [hl]                                    ; $5e53: $6e
    rrca                                          ; $5e54: $0f
    dec b                                         ; $5e55: $05
    and d                                         ; $5e56: $a2
    rrca                                          ; $5e57: $0f
    dec b                                         ; $5e58: $05
    or l                                          ; $5e59: $b5
    rrca                                          ; $5e5a: $0f
    dec b                                         ; $5e5b: $05
    or a                                          ; $5e5c: $b7
    rrca                                          ; $5e5d: $0f
    dec b                                         ; $5e5e: $05
    pop bc                                        ; $5e5f: $c1
    rrca                                          ; $5e60: $0f
    dec b                                         ; $5e61: $05
    jp z, Jump_000_050f                           ; $5e62: $ca $0f $05

    call z, Call_000_050f                         ; $5e65: $cc $0f $05
    reti                                          ; $5e68: $d9


    rrca                                          ; $5e69: $0f
    dec b                                         ; $5e6a: $05
    db $e4                                        ; $5e6b: $e4
    rrca                                          ; $5e6c: $0f
    dec b                                         ; $5e6d: $05
    and $0f                                       ; $5e6e: $e6 $0f
    dec b                                         ; $5e70: $05
    ldh a, [rIF]                                  ; $5e71: $f0 $0f
    dec b                                         ; $5e73: $05
    ld sp, hl                                     ; $5e74: $f9
    rrca                                          ; $5e75: $0f
    dec b                                         ; $5e76: $05
    ei                                            ; $5e77: $fb
    rrca                                          ; $5e78: $0f
    dec b                                         ; $5e79: $05
    inc b                                         ; $5e7a: $04
    db $10                                        ; $5e7b: $10
    dec b                                         ; $5e7c: $05
    dec c                                         ; $5e7d: $0d
    db $10                                        ; $5e7e: $10
    dec b                                         ; $5e7f: $05
    ld d, $10                                     ; $5e80: $16 $10
    dec b                                         ; $5e82: $05
    ld hl, $0510                                  ; $5e83: $21 $10 $05
    ld a, [hl+]                                   ; $5e86: $2a
    db $10                                        ; $5e87: $10
    dec b                                         ; $5e88: $05
    inc l                                         ; $5e89: $2c
    db $10                                        ; $5e8a: $10
    dec b                                         ; $5e8b: $05
    add hl, sp                                    ; $5e8c: $39
    db $10                                        ; $5e8d: $10
    dec b                                         ; $5e8e: $05
    ld b, d                                       ; $5e8f: $42
    db $10                                        ; $5e90: $10
    dec b                                         ; $5e91: $05
    ld c, d                                       ; $5e92: $4a
    db $10                                        ; $5e93: $10
    dec b                                         ; $5e94: $05
    ld d, h                                       ; $5e95: $54
    db $10                                        ; $5e96: $10
    dec b                                         ; $5e97: $05
    ld d, [hl]                                    ; $5e98: $56
    db $10                                        ; $5e99: $10
    dec b                                         ; $5e9a: $05
    ld h, a                                       ; $5e9b: $67
    db $10                                        ; $5e9c: $10
    dec b                                         ; $5e9d: $05
    ld [hl], c                                    ; $5e9e: $71
    db $10                                        ; $5e9f: $10
    dec b                                         ; $5ea0: $05
    ld [hl], e                                    ; $5ea1: $73
    db $10                                        ; $5ea2: $10
    dec b                                         ; $5ea3: $05
    ld a, e                                       ; $5ea4: $7b
    db $10                                        ; $5ea5: $10
    dec b                                         ; $5ea6: $05
    add e                                         ; $5ea7: $83
    db $10                                        ; $5ea8: $10
    dec b                                         ; $5ea9: $05
    add l                                         ; $5eaa: $85
    db $10                                        ; $5eab: $10
    dec b                                         ; $5eac: $05
    sub d                                         ; $5ead: $92
    db $10                                        ; $5eae: $10
    dec b                                         ; $5eaf: $05
    sbc c                                         ; $5eb0: $99
    db $10                                        ; $5eb1: $10
    dec b                                         ; $5eb2: $05
    and c                                         ; $5eb3: $a1
    db $10                                        ; $5eb4: $10
    dec b                                         ; $5eb5: $05
    xor b                                         ; $5eb6: $a8
    db $10                                        ; $5eb7: $10
    dec b                                         ; $5eb8: $05
    xor d                                         ; $5eb9: $aa
    db $10                                        ; $5eba: $10
    dec b                                         ; $5ebb: $05
    xor a                                         ; $5ebc: $af
    db $10                                        ; $5ebd: $10
    dec b                                         ; $5ebe: $05
    cp d                                          ; $5ebf: $ba
    db $10                                        ; $5ec0: $10
    dec b                                         ; $5ec1: $05
    call nz, Call_000_0510                        ; $5ec2: $c4 $10 $05
    adc $10                                       ; $5ec5: $ce $10
    dec b                                         ; $5ec7: $05
    sub $10                                       ; $5ec8: $d6 $10
    dec b                                         ; $5eca: $05
    ret c                                         ; $5ecb: $d8

    db $10                                        ; $5ecc: $10
    dec b                                         ; $5ecd: $05
    jp c, Jump_000_0510                           ; $5ece: $da $10 $05

    ld a, [c]                                     ; $5ed1: $f2
    db $10                                        ; $5ed2: $10
    dec b                                         ; $5ed3: $05
    db $f4                                        ; $5ed4: $f4
    db $10                                        ; $5ed5: $10
    dec b                                         ; $5ed6: $05
    cp $10                                        ; $5ed7: $fe $10
    dec b                                         ; $5ed9: $05
    rlca                                          ; $5eda: $07
    ld de, $0f05                                  ; $5edb: $11 $05 $0f
    ld de, $1105                                  ; $5ede: $11 $05 $11
    ld de, $1905                                  ; $5ee1: $11 $05 $19
    ld de, $2305                                  ; $5ee4: $11 $05 $23
    ld de, $2505                                  ; $5ee7: $11 $05 $25
    ld de, $3105                                  ; $5eea: $11 $05 $31
    ld de, $3a05                                  ; $5eed: $11 $05 $3a
    ld de, $3c05                                  ; $5ef0: $11 $05 $3c
    ld de, $4605                                  ; $5ef3: $11 $05 $46
    ld de, $5205                                  ; $5ef6: $11 $05 $52
    ld de, $5c05                                  ; $5ef9: $11 $05 $5c
    ld de, $6305                                  ; $5efc: $11 $05 $63
    ld de, $6b05                                  ; $5eff: $11 $05 $6b
    ld de, $7505                                  ; $5f02: $11 $05 $75
    ld de, $7e05                                  ; $5f05: $11 $05 $7e
    ld de, $8005                                  ; $5f08: $11 $05 $80
    ld de, $8205                                  ; $5f0b: $11 $05 $82
    ld de, $8405                                  ; $5f0e: $11 $05 $84
    ld de, $9705                                  ; $5f11: $11 $05 $97
    ld de, $9905                                  ; $5f14: $11 $05 $99
    ld de, $a305                                  ; $5f17: $11 $05 $a3
    ld de, $ab05                                  ; $5f1a: $11 $05 $ab
    ld de, $b605                                  ; $5f1d: $11 $05 $b6
    ld de, $be05                                  ; $5f20: $11 $05 $be
    ld de, $c805                                  ; $5f23: $11 $05 $c8
    ld de, $d305                                  ; $5f26: $11 $05 $d3
    ld de, $dc05                                  ; $5f29: $11 $05 $dc
    ld de, $e505                                  ; $5f2c: $11 $05 $e5
    ld de, $e705                                  ; $5f2f: $11 $05 $e7
    ld de, $f605                                  ; $5f32: $11 $05 $f6
    ld de, $fd05                                  ; $5f35: $11 $05 $fd
    ld de, $ff05                                  ; $5f38: $11 $05 $ff
    ld de, $0a05                                  ; $5f3b: $11 $05 $0a
    ld [de], a                                    ; $5f3e: $12
    dec b                                         ; $5f3f: $05
    ld de, $0512                                  ; $5f40: $11 $12 $05
    inc de                                        ; $5f43: $13
    ld [de], a                                    ; $5f44: $12
    dec b                                         ; $5f45: $05
    dec de                                        ; $5f46: $1b
    ld [de], a                                    ; $5f47: $12
    dec b                                         ; $5f48: $05
    inc h                                         ; $5f49: $24
    ld [de], a                                    ; $5f4a: $12
    dec b                                         ; $5f4b: $05
    dec l                                         ; $5f4c: $2d
    ld [de], a                                    ; $5f4d: $12
    dec b                                         ; $5f4e: $05
    ld [hl], $12                                  ; $5f4f: $36 $12
    dec b                                         ; $5f51: $05
    ld b, b                                       ; $5f52: $40

Jump_05f_5f53:
    ld [de], a                                    ; $5f53: $12
    dec b                                         ; $5f54: $05
    ld b, d                                       ; $5f55: $42
    ld [de], a                                    ; $5f56: $12
    dec b                                         ; $5f57: $05
    ld c, e                                       ; $5f58: $4b
    ld [de], a                                    ; $5f59: $12
    dec b                                         ; $5f5a: $05
    ld d, e                                       ; $5f5b: $53
    ld [de], a                                    ; $5f5c: $12
    dec b                                         ; $5f5d: $05
    ld e, l                                       ; $5f5e: $5d
    ld [de], a                                    ; $5f5f: $12
    dec b                                         ; $5f60: $05
    ld h, h                                       ; $5f61: $64
    ld [de], a                                    ; $5f62: $12
    dec b                                         ; $5f63: $05
    ld l, [hl]                                    ; $5f64: $6e
    ld [de], a                                    ; $5f65: $12
    dec b                                         ; $5f66: $05
    halt                                          ; $5f67: $76
    ld [de], a                                    ; $5f68: $12
    dec b                                         ; $5f69: $05
    ld a, a                                       ; $5f6a: $7f
    ld [de], a                                    ; $5f6b: $12
    dec b                                         ; $5f6c: $05
    adc c                                         ; $5f6d: $89
    ld [de], a                                    ; $5f6e: $12
    dec b                                         ; $5f6f: $05
    sub [hl]                                      ; $5f70: $96
    ld [de], a                                    ; $5f71: $12
    dec b                                         ; $5f72: $05
    and b                                         ; $5f73: $a0
    ld [de], a                                    ; $5f74: $12
    dec b                                         ; $5f75: $05
    xor c                                         ; $5f76: $a9
    ld [de], a                                    ; $5f77: $12
    dec b                                         ; $5f78: $05
    xor e                                         ; $5f79: $ab
    ld [de], a                                    ; $5f7a: $12
    dec b                                         ; $5f7b: $05
    or e                                          ; $5f7c: $b3
    ld [de], a                                    ; $5f7d: $12
    dec b                                         ; $5f7e: $05
    cp d                                          ; $5f7f: $ba
    ld [de], a                                    ; $5f80: $12
    dec b                                         ; $5f81: $05
    push bc                                       ; $5f82: $c5
    ld [de], a                                    ; $5f83: $12
    dec b                                         ; $5f84: $05
    adc $12                                       ; $5f85: $ce $12
    dec b                                         ; $5f87: $05
    rst $10                                       ; $5f88: $d7
    ld [de], a                                    ; $5f89: $12
    dec b                                         ; $5f8a: $05
    reti                                          ; $5f8b: $d9


    ld [de], a                                    ; $5f8c: $12
    dec b                                         ; $5f8d: $05
    rst $28                                       ; $5f8e: $ef
    ld [de], a                                    ; $5f8f: $12
    dec b                                         ; $5f90: $05
    ei                                            ; $5f91: $fb
    ld [de], a                                    ; $5f92: $12
    dec b                                         ; $5f93: $05
    ld b, $13                                     ; $5f94: $06 $13
    dec b                                         ; $5f96: $05
    rrca                                          ; $5f97: $0f
    inc de                                        ; $5f98: $13
    dec b                                         ; $5f99: $05
    rla                                           ; $5f9a: $17
    inc de                                        ; $5f9b: $13
    dec b                                         ; $5f9c: $05
    rra                                           ; $5f9d: $1f
    inc de                                        ; $5f9e: $13
    dec b                                         ; $5f9f: $05
    daa                                           ; $5fa0: $27
    inc de                                        ; $5fa1: $13
    dec b                                         ; $5fa2: $05
    ld sp, $0513                                  ; $5fa3: $31 $13 $05
    add hl, sp                                    ; $5fa6: $39
    inc de                                        ; $5fa7: $13
    dec b                                         ; $5fa8: $05
    ld b, b                                       ; $5fa9: $40
    inc de                                        ; $5faa: $13
    dec b                                         ; $5fab: $05
    ld c, b                                       ; $5fac: $48
    inc de                                        ; $5fad: $13
    dec b                                         ; $5fae: $05
    ld d, c                                       ; $5faf: $51
    inc de                                        ; $5fb0: $13
    dec b                                         ; $5fb1: $05
    ld e, e                                       ; $5fb2: $5b
    inc de                                        ; $5fb3: $13
    dec b                                         ; $5fb4: $05
    ld e, l                                       ; $5fb5: $5d
    inc de                                        ; $5fb6: $13
    dec b                                         ; $5fb7: $05
    ld e, a                                       ; $5fb8: $5f
    inc de                                        ; $5fb9: $13
    dec b                                         ; $5fba: $05
    ld h, c                                       ; $5fbb: $61

Call_05f_5fbc:
    inc de                                        ; $5fbc: $13
    dec b                                         ; $5fbd: $05
    ld h, e                                       ; $5fbe: $63
    inc de                                        ; $5fbf: $13
    dec b                                         ; $5fc0: $05
    ld h, l                                       ; $5fc1: $65
    inc de                                        ; $5fc2: $13
    dec b                                         ; $5fc3: $05
    ld h, a                                       ; $5fc4: $67
    inc de                                        ; $5fc5: $13
    dec b                                         ; $5fc6: $05
    ld l, c                                       ; $5fc7: $69
    inc de                                        ; $5fc8: $13
    dec b                                         ; $5fc9: $05
    ld l, e                                       ; $5fca: $6b
    inc de                                        ; $5fcb: $13
    dec b                                         ; $5fcc: $05
    ld l, l                                       ; $5fcd: $6d
    inc de                                        ; $5fce: $13
    dec b                                         ; $5fcf: $05
    ld l, a                                       ; $5fd0: $6f
    inc de                                        ; $5fd1: $13
    dec b                                         ; $5fd2: $05
    ld [hl], c                                    ; $5fd3: $71
    inc de                                        ; $5fd4: $13
    dec b                                         ; $5fd5: $05
    ld [hl], e                                    ; $5fd6: $73
    inc de                                        ; $5fd7: $13
    dec b                                         ; $5fd8: $05
    ld [hl], l                                    ; $5fd9: $75
    inc de                                        ; $5fda: $13
    dec b                                         ; $5fdb: $05
    ld [hl], a                                    ; $5fdc: $77
    inc de                                        ; $5fdd: $13
    dec b                                         ; $5fde: $05
    ld a, c                                       ; $5fdf: $79
    inc de                                        ; $5fe0: $13
    dec b                                         ; $5fe1: $05
    ld a, e                                       ; $5fe2: $7b
    inc de                                        ; $5fe3: $13
    dec b                                         ; $5fe4: $05
    ld a, l                                       ; $5fe5: $7d
    inc de                                        ; $5fe6: $13
    dec b                                         ; $5fe7: $05
    ld a, a                                       ; $5fe8: $7f
    inc de                                        ; $5fe9: $13
    dec b                                         ; $5fea: $05
    add c                                         ; $5feb: $81
    inc de                                        ; $5fec: $13
    dec b                                         ; $5fed: $05
    add e                                         ; $5fee: $83
    inc de                                        ; $5fef: $13
    dec b                                         ; $5ff0: $05
    add l                                         ; $5ff1: $85
    inc de                                        ; $5ff2: $13
    dec b                                         ; $5ff3: $05
    add a                                         ; $5ff4: $87
    inc de                                        ; $5ff5: $13
    dec b                                         ; $5ff6: $05
    adc c                                         ; $5ff7: $89
    inc de                                        ; $5ff8: $13
    dec b                                         ; $5ff9: $05
    adc e                                         ; $5ffa: $8b
    inc de                                        ; $5ffb: $13
    dec b                                         ; $5ffc: $05
    adc l                                         ; $5ffd: $8d
    inc de                                        ; $5ffe: $13
    dec b                                         ; $5fff: $05
    adc a                                         ; $6000: $8f
    inc de                                        ; $6001: $13
    dec b                                         ; $6002: $05
    sub c                                         ; $6003: $91
    inc de                                        ; $6004: $13
    dec b                                         ; $6005: $05
    sub e                                         ; $6006: $93
    inc de                                        ; $6007: $13
    dec b                                         ; $6008: $05
    sub l                                         ; $6009: $95
    inc de                                        ; $600a: $13
    dec b                                         ; $600b: $05
    sub a                                         ; $600c: $97
    inc de                                        ; $600d: $13
    dec b                                         ; $600e: $05
    sbc c                                         ; $600f: $99
    inc de                                        ; $6010: $13
    dec b                                         ; $6011: $05
    sbc e                                         ; $6012: $9b
    inc de                                        ; $6013: $13
    dec b                                         ; $6014: $05
    sbc l                                         ; $6015: $9d
    inc de                                        ; $6016: $13
    dec b                                         ; $6017: $05
    sbc a                                         ; $6018: $9f
    inc de                                        ; $6019: $13
    dec b                                         ; $601a: $05
    or a                                          ; $601b: $b7
    inc de                                        ; $601c: $13
    dec b                                         ; $601d: $05
    cp a                                          ; $601e: $bf
    inc de                                        ; $601f: $13
    dec b                                         ; $6020: $05
    rst $28                                       ; $6021: $ef
    inc de                                        ; $6022: $13
    dec b                                         ; $6023: $05
    db $fc                                        ; $6024: $fc
    inc de                                        ; $6025: $13
    dec b                                         ; $6026: $05
    ld c, a                                       ; $6027: $4f
    inc d                                         ; $6028: $14
    dec b                                         ; $6029: $05
    ld l, a                                       ; $602a: $6f
    inc d                                         ; $602b: $14
    dec b                                         ; $602c: $05
    xor l                                         ; $602d: $ad
    inc d                                         ; $602e: $14
    dec b                                         ; $602f: $05
    db $db                                        ; $6030: $db
    inc d                                         ; $6031: $14
    dec b                                         ; $6032: $05
    jr c, @+$17                                   ; $6033: $38 $15

    dec b                                         ; $6035: $05
    ld c, e                                       ; $6036: $4b
    dec d                                         ; $6037: $15
    dec b                                         ; $6038: $05
    ld a, l                                       ; $6039: $7d
    dec d                                         ; $603a: $15
    dec b                                         ; $603b: $05
    db $db                                        ; $603c: $db
    dec d                                         ; $603d: $15
    dec b                                         ; $603e: $05
    db $f4                                        ; $603f: $f4
    dec d                                         ; $6040: $15
    dec b                                         ; $6041: $05
    inc [hl]                                      ; $6042: $34
    ld d, $05                                     ; $6043: $16 $05
    ld d, l                                       ; $6045: $55
    ld d, $05                                     ; $6046: $16 $05
    ld a, [hl]                                    ; $6048: $7e
    ld d, $05                                     ; $6049: $16 $05
    cp l                                          ; $604b: $bd
    ld d, $05                                     ; $604c: $16 $05
    rst $00                                       ; $604e: $c7
    ld d, $05                                     ; $604f: $16 $05
    jp c, Jump_000_0516                           ; $6051: $da $16 $05

    ld [$0516], a                                 ; $6054: $ea $16 $05
    db $fc                                        ; $6057: $fc
    ld d, $05                                     ; $6058: $16 $05
    ld c, $17                                     ; $605a: $0e $17
    dec b                                         ; $605c: $05
    jr z, jr_05f_6076                             ; $605d: $28 $17

    dec b                                         ; $605f: $05
    ld [hl], a                                    ; $6060: $77
    rla                                           ; $6061: $17
    dec b                                         ; $6062: $05
    adc c                                         ; $6063: $89
    rla                                           ; $6064: $17
    dec b                                         ; $6065: $05
    sbc $17                                       ; $6066: $de $17
    dec b                                         ; $6068: $05
    db $ed                                        ; $6069: $ed
    rla                                           ; $606a: $17
    dec b                                         ; $606b: $05
    ld b, $18                                     ; $606c: $06 $18
    dec b                                         ; $606e: $05
    ld c, b                                       ; $606f: $48
    jr @+$07                                      ; $6070: $18 $05

    ld [hl], a                                    ; $6072: $77
    jr @+$07                                      ; $6073: $18 $05

    sub e                                         ; $6075: $93

jr_05f_6076:
    jr @+$07                                      ; $6076: $18 $05

    and l                                         ; $6078: $a5
    jr @+$07                                      ; $6079: $18 $05

    db $db                                        ; $607b: $db
    jr @+$07                                      ; $607c: $18 $05

    di                                            ; $607e: $f3
    jr jr_05f_6086                                ; $607f: $18 $05

    rst $38                                       ; $6081: $ff
    jr @+$07                                      ; $6082: $18 $05

    dec bc                                        ; $6084: $0b
    add hl, de                                    ; $6085: $19

jr_05f_6086:
    dec b                                         ; $6086: $05
    ld hl, $0519                                  ; $6087: $21 $19 $05
    ld [hl-], a                                   ; $608a: $32
    add hl, de                                    ; $608b: $19
    dec b                                         ; $608c: $05
    ld a, $19                                     ; $608d: $3e $19
    dec b                                         ; $608f: $05
    ld c, a                                       ; $6090: $4f
    add hl, de                                    ; $6091: $19
    dec b                                         ; $6092: $05
    ld l, c                                       ; $6093: $69
    add hl, de                                    ; $6094: $19
    dec b                                         ; $6095: $05
    ld a, [hl]                                    ; $6096: $7e
    add hl, de                                    ; $6097: $19
    dec b                                         ; $6098: $05
    sub [hl]                                      ; $6099: $96
    add hl, de                                    ; $609a: $19
    dec b                                         ; $609b: $05
    and l                                         ; $609c: $a5
    add hl, de                                    ; $609d: $19
    dec b                                         ; $609e: $05
    cp b                                          ; $609f: $b8
    add hl, de                                    ; $60a0: $19
    dec b                                         ; $60a1: $05
    sub $19                                       ; $60a2: $d6 $19
    dec b                                         ; $60a4: $05
    ld [c], a                                     ; $60a5: $e2
    add hl, de                                    ; $60a6: $19
    dec b                                         ; $60a7: $05
    ld a, [$0519]                                 ; $60a8: $fa $19 $05
    add hl, bc                                    ; $60ab: $09
    ld a, [de]                                    ; $60ac: $1a
    dec b                                         ; $60ad: $05
    inc hl                                        ; $60ae: $23
    ld a, [de]                                    ; $60af: $1a
    dec b                                         ; $60b0: $05
    scf                                           ; $60b1: $37
    ld a, [de]                                    ; $60b2: $1a
    dec b                                         ; $60b3: $05
    ld d, b                                       ; $60b4: $50
    ld a, [de]                                    ; $60b5: $1a
    dec b                                         ; $60b6: $05
    ld h, h                                       ; $60b7: $64
    ld a, [de]                                    ; $60b8: $1a
    dec b                                         ; $60b9: $05
    ld [hl], b                                    ; $60ba: $70
    ld a, [de]                                    ; $60bb: $1a
    dec b                                         ; $60bc: $05
    add l                                         ; $60bd: $85
    ld a, [de]                                    ; $60be: $1a
    dec b                                         ; $60bf: $05
    sub [hl]                                      ; $60c0: $96
    ld a, [de]                                    ; $60c1: $1a
    dec b                                         ; $60c2: $05
    xor b                                         ; $60c3: $a8
    ld a, [de]                                    ; $60c4: $1a
    dec b                                         ; $60c5: $05
    cp a                                          ; $60c6: $bf
    ld a, [de]                                    ; $60c7: $1a
    dec b                                         ; $60c8: $05
    jp nc, $051a                                  ; $60c9: $d2 $1a $05

    ld [bc], a                                    ; $60cc: $02
    dec de                                        ; $60cd: $1b
    dec b                                         ; $60ce: $05
    ld [de], a                                    ; $60cf: $12
    dec de                                        ; $60d0: $1b
    dec b                                         ; $60d1: $05
    ld b, e                                       ; $60d2: $43
    dec de                                        ; $60d3: $1b
    dec b                                         ; $60d4: $05
    ld d, a                                       ; $60d5: $57
    dec de                                        ; $60d6: $1b
    dec b                                         ; $60d7: $05
    ld l, b                                       ; $60d8: $68
    dec de                                        ; $60d9: $1b
    dec b                                         ; $60da: $05
    adc e                                         ; $60db: $8b
    dec de                                        ; $60dc: $1b
    dec b                                         ; $60dd: $05
    xor h                                         ; $60de: $ac
    dec de                                        ; $60df: $1b
    dec b                                         ; $60e0: $05
    pop bc                                        ; $60e1: $c1
    dec de                                        ; $60e2: $1b
    dec b                                         ; $60e3: $05
    ret nc                                        ; $60e4: $d0

    dec de                                        ; $60e5: $1b
    dec b                                         ; $60e6: $05
    add sp, $1b                                   ; $60e7: $e8 $1b
    dec b                                         ; $60e9: $05
    ei                                            ; $60ea: $fb
    dec de                                        ; $60eb: $1b
    dec b                                         ; $60ec: $05
    dec c                                         ; $60ed: $0d
    inc e                                         ; $60ee: $1c
    dec b                                         ; $60ef: $05
    rra                                           ; $60f0: $1f
    inc e                                         ; $60f1: $1c
    dec b                                         ; $60f2: $05
    ld a, [hl-]                                   ; $60f3: $3a
    inc e                                         ; $60f4: $1c
    dec b                                         ; $60f5: $05
    ld d, c                                       ; $60f6: $51
    inc e                                         ; $60f7: $1c
    dec b                                         ; $60f8: $05
    halt                                          ; $60f9: $76
    inc e                                         ; $60fa: $1c
    dec b                                         ; $60fb: $05
    add l                                         ; $60fc: $85
    inc e                                         ; $60fd: $1c
    dec b                                         ; $60fe: $05
    sbc l                                         ; $60ff: $9d
    inc e                                         ; $6100: $1c
    dec b                                         ; $6101: $05
    or c                                          ; $6102: $b1
    inc e                                         ; $6103: $1c
    dec b                                         ; $6104: $05
    push de                                       ; $6105: $d5
    inc e                                         ; $6106: $1c
    dec b                                         ; $6107: $05
    ld [$051c], a                                 ; $6108: $ea $1c $05
    ld [$051d], sp                                ; $610b: $08 $1d $05
    ld hl, $051d                                  ; $610e: $21 $1d $05
    scf                                           ; $6111: $37
    dec e                                         ; $6112: $1d
    dec b                                         ; $6113: $05
    sbc h                                         ; $6114: $9c
    dec e                                         ; $6115: $1d
    dec b                                         ; $6116: $05
    add hl, bc                                    ; $6117: $09
    ld e, $05                                     ; $6118: $1e $05
    jr nz, jr_05f_613a                            ; $611a: $20 $1e

    dec b                                         ; $611c: $05
    ld b, e                                       ; $611d: $43
    ld e, $05                                     ; $611e: $1e $05
    ld h, a                                       ; $6120: $67
    ld e, $05                                     ; $6121: $1e $05
    sub l                                         ; $6123: $95
    ld e, $05                                     ; $6124: $1e $05
    call nz, $051e                                ; $6126: $c4 $1e $05
    db $eb                                        ; $6129: $eb
    ld e, $05                                     ; $612a: $1e $05
    add hl, bc                                    ; $612c: $09
    rra                                           ; $612d: $1f
    dec b                                         ; $612e: $05
    jr z, @+$21                                   ; $612f: $28 $1f

    dec b                                         ; $6131: $05
    ld d, c                                       ; $6132: $51
    rra                                           ; $6133: $1f
    dec b                                         ; $6134: $05
    add l                                         ; $6135: $85
    rra                                           ; $6136: $1f
    dec b                                         ; $6137: $05
    and [hl]                                      ; $6138: $a6
    rra                                           ; $6139: $1f

jr_05f_613a:
    dec b                                         ; $613a: $05
    jp nz, Jump_000_051f                          ; $613b: $c2 $1f $05

    db $db                                        ; $613e: $db
    rra                                           ; $613f: $1f
    dec b                                         ; $6140: $05
    ld bc, $0520                                  ; $6141: $01 $20 $05
    ld b, e                                       ; $6144: $43
    jr nz, @+$07                                  ; $6145: $20 $05

    sbc b                                         ; $6147: $98
    jr nz, @+$07                                  ; $6148: $20 $05

    rst $08                                       ; $614a: $cf
    jr nz, @+$07                                  ; $614b: $20 $05

    dec b                                         ; $614d: $05
    ld hl, $5305                                  ; $614e: $21 $05 $53
    ld hl, $8f05                                  ; $6151: $21 $05 $8f
    ld hl, $eb05                                  ; $6154: $21 $05 $eb
    ld hl, $3905                                  ; $6157: $21 $05 $39
    ld [hl+], a                                   ; $615a: $22
    dec b                                         ; $615b: $05
    sub h                                         ; $615c: $94
    ld [hl+], a                                   ; $615d: $22
    dec b                                         ; $615e: $05
    ei                                            ; $615f: $fb
    ld [hl+], a                                   ; $6160: $22
    dec b                                         ; $6161: $05
    ld h, b                                       ; $6162: $60
    inc hl                                        ; $6163: $23
    dec b                                         ; $6164: $05
    adc $23                                       ; $6165: $ce $23
    dec b                                         ; $6167: $05
    inc hl                                        ; $6168: $23
    inc h                                         ; $6169: $24
    dec b                                         ; $616a: $05
    sub b                                         ; $616b: $90
    inc h                                         ; $616c: $24
    dec b                                         ; $616d: $05
    push hl                                       ; $616e: $e5
    inc h                                         ; $616f: $24
    dec b                                         ; $6170: $05
    ld h, l                                       ; $6171: $65
    dec h                                         ; $6172: $25
    dec b                                         ; $6173: $05
    cp c                                          ; $6174: $b9
    dec h                                         ; $6175: $25
    dec b                                         ; $6176: $05
    inc de                                        ; $6177: $13
    ld h, $05                                     ; $6178: $26 $05
    ld l, e                                       ; $617a: $6b
    ld h, $05                                     ; $617b: $26 $05
    push bc                                       ; $617d: $c5
    ld h, $05                                     ; $617e: $26 $05
    jr z, jr_05f_61a9                             ; $6180: $28 $27

    dec b                                         ; $6182: $05
    adc c                                         ; $6183: $89
    daa                                           ; $6184: $27
    dec b                                         ; $6185: $05
    rst $18                                       ; $6186: $df
    daa                                           ; $6187: $27
    dec b                                         ; $6188: $05
    ld c, c                                       ; $6189: $49
    jr z, jr_05f_6191                             ; $618a: $28 $05

    or h                                          ; $618c: $b4
    jr z, jr_05f_6194                             ; $618d: $28 $05

    or $28                                        ; $618f: $f6 $28

jr_05f_6191:
    dec b                                         ; $6191: $05
    inc bc                                        ; $6192: $03
    add hl, hl                                    ; $6193: $29

jr_05f_6194:
    dec b                                         ; $6194: $05
    ld [$0529], sp                                ; $6195: $08 $29 $05
    dec c                                         ; $6198: $0d
    add hl, hl                                    ; $6199: $29
    dec b                                         ; $619a: $05
    ld d, $29                                     ; $619b: $16 $29
    dec b                                         ; $619d: $05
    inc hl                                        ; $619e: $23
    add hl, hl                                    ; $619f: $29
    dec b                                         ; $61a0: $05
    jr nc, jr_05f_61cc                            ; $61a1: $30 $29

    dec b                                         ; $61a3: $05
    ld h, h                                       ; $61a4: $64
    add hl, hl                                    ; $61a5: $29
    dec b                                         ; $61a6: $05
    sbc [hl]                                      ; $61a7: $9e
    add hl, hl                                    ; $61a8: $29

jr_05f_61a9:
    dec b                                         ; $61a9: $05
    db $ec                                        ; $61aa: $ec
    add hl, hl                                    ; $61ab: $29
    dec b                                         ; $61ac: $05
    inc h                                         ; $61ad: $24
    ld a, [hl+]                                   ; $61ae: $2a
    dec b                                         ; $61af: $05
    ld l, l                                       ; $61b0: $6d
    ld a, [hl+]                                   ; $61b1: $2a
    dec b                                         ; $61b2: $05
    sbc a                                         ; $61b3: $9f
    ld a, [hl+]                                   ; $61b4: $2a
    dec b                                         ; $61b5: $05
    db $ec                                        ; $61b6: $ec
    ld a, [hl+]                                   ; $61b7: $2a
    dec b                                         ; $61b8: $05
    scf                                           ; $61b9: $37
    dec hl                                        ; $61ba: $2b
    dec b                                         ; $61bb: $05
    ld [hl], e                                    ; $61bc: $73
    dec hl                                        ; $61bd: $2b
    dec b                                         ; $61be: $05
    sbc e                                         ; $61bf: $9b
    dec hl                                        ; $61c0: $2b
    dec b                                         ; $61c1: $05
    ret nz                                        ; $61c2: $c0

    dec hl                                        ; $61c3: $2b
    dec b                                         ; $61c4: $05
    rst $28                                       ; $61c5: $ef
    dec hl                                        ; $61c6: $2b
    dec b                                         ; $61c7: $05
    ld [hl+], a                                   ; $61c8: $22
    inc l                                         ; $61c9: $2c
    dec b                                         ; $61ca: $05
    ld b, e                                       ; $61cb: $43

jr_05f_61cc:
    inc l                                         ; $61cc: $2c
    dec b                                         ; $61cd: $05
    ld l, b                                       ; $61ce: $68
    inc l                                         ; $61cf: $2c
    dec b                                         ; $61d0: $05
    add l                                         ; $61d1: $85
    inc l                                         ; $61d2: $2c
    dec b                                         ; $61d3: $05
    or e                                          ; $61d4: $b3
    inc l                                         ; $61d5: $2c
    dec b                                         ; $61d6: $05
    ret                                           ; $61d7: $c9


    inc l                                         ; $61d8: $2c
    dec b                                         ; $61d9: $05
    db $db                                        ; $61da: $db
    inc l                                         ; $61db: $2c
    dec b                                         ; $61dc: $05
    di                                            ; $61dd: $f3
    inc l                                         ; $61de: $2c
    dec b                                         ; $61df: $05
    rra                                           ; $61e0: $1f
    dec l                                         ; $61e1: $2d
    dec b                                         ; $61e2: $05
    ld c, l                                       ; $61e3: $4d
    dec l                                         ; $61e4: $2d
    dec b                                         ; $61e5: $05
    ld a, c                                       ; $61e6: $79
    dec l                                         ; $61e7: $2d
    dec b                                         ; $61e8: $05
    sub c                                         ; $61e9: $91
    dec l                                         ; $61ea: $2d
    dec b                                         ; $61eb: $05
    cp [hl]                                       ; $61ec: $be
    dec l                                         ; $61ed: $2d
    dec b                                         ; $61ee: $05
    sbc $2d                                       ; $61ef: $de $2d
    dec b                                         ; $61f1: $05
    dec c                                         ; $61f2: $0d
    ld l, $05                                     ; $61f3: $2e $05
    scf                                           ; $61f5: $37
    ld l, $05                                     ; $61f6: $2e $05
    ld e, e                                       ; $61f8: $5b
    ld l, $05                                     ; $61f9: $2e $05
    ld l, l                                       ; $61fb: $6d
    ld l, $05                                     ; $61fc: $2e $05
    add c                                         ; $61fe: $81
    ld l, $05                                     ; $61ff: $2e $05
    sub c                                         ; $6201: $91
    ld l, $05                                     ; $6202: $2e $05
    xor e                                         ; $6204: $ab
    ld l, $05                                     ; $6205: $2e $05
    add hl, bc                                    ; $6207: $09
    cpl                                           ; $6208: $2f
    dec b                                         ; $6209: $05
    jr nc, @+$31                                  ; $620a: $30 $2f

    dec b                                         ; $620c: $05
    ld d, d                                       ; $620d: $52
    cpl                                           ; $620e: $2f
    dec b                                         ; $620f: $05
    ld e, d                                       ; $6210: $5a
    cpl                                           ; $6211: $2f
    dec b                                         ; $6212: $05
    ld h, e                                       ; $6213: $63
    cpl                                           ; $6214: $2f
    dec b                                         ; $6215: $05
    ld l, c                                       ; $6216: $69
    cpl                                           ; $6217: $2f
    dec b                                         ; $6218: $05
    ld l, [hl]                                    ; $6219: $6e
    cpl                                           ; $621a: $2f
    dec b                                         ; $621b: $05
    halt                                          ; $621c: $76
    cpl                                           ; $621d: $2f
    dec b                                         ; $621e: $05
    ld a, [hl]                                    ; $621f: $7e
    cpl                                           ; $6220: $2f
    dec b                                         ; $6221: $05
    add a                                         ; $6222: $87
    cpl                                           ; $6223: $2f
    dec b                                         ; $6224: $05
    sub e                                         ; $6225: $93
    cpl                                           ; $6226: $2f
    dec b                                         ; $6227: $05
    and c                                         ; $6228: $a1
    cpl                                           ; $6229: $2f
    dec b                                         ; $622a: $05
    or l                                          ; $622b: $b5
    cpl                                           ; $622c: $2f
    dec b                                         ; $622d: $05
    cp [hl]                                       ; $622e: $be
    cpl                                           ; $622f: $2f
    dec b                                         ; $6230: $05
    ret                                           ; $6231: $c9


    cpl                                           ; $6232: $2f
    dec b                                         ; $6233: $05
    sub $2f                                       ; $6234: $d6 $2f
    dec b                                         ; $6236: $05
    ld [$052f], a                                 ; $6237: $ea $2f $05
    ld b, $30                                     ; $623a: $06 $30
    dec b                                         ; $623c: $05
    cpl                                           ; $623d: $2f
    jr nc, @+$07                                  ; $623e: $30 $05

    ld b, b                                       ; $6240: $40
    jr nc, @+$07                                  ; $6241: $30 $05

    ld e, e                                       ; $6243: $5b
    jr nc, @+$07                                  ; $6244: $30 $05

    ld [hl], d                                    ; $6246: $72
    jr nc, @+$07                                  ; $6247: $30 $05

    add a                                         ; $6249: $87
    jr nc, jr_05f_6251                            ; $624a: $30 $05

    or a                                          ; $624c: $b7
    jr nc, jr_05f_6254                            ; $624d: $30 $05

    sub $30                                       ; $624f: $d6 $30

jr_05f_6251:
    dec b                                         ; $6251: $05
    ld c, $31                                     ; $6252: $0e $31

jr_05f_6254:
    dec b                                         ; $6254: $05
    rra                                           ; $6255: $1f
    ld sp, $5105                                  ; $6256: $31 $05 $51
    ld sp, $5d05                                  ; $6259: $31 $05 $5d
    ld sp, $6a05                                  ; $625c: $31 $05 $6a
    ld sp, $7d05                                  ; $625f: $31 $05 $7d
    ld sp, $8805                                  ; $6262: $31 $05 $88
    ld sp, $9005                                  ; $6265: $31 $05 $90
    ld sp, $c605                                  ; $6268: $31 $05 $c6
    ld sp, $fb05                                  ; $626b: $31 $05 $fb
    ld sp, $6805                                  ; $626e: $31 $05 $68
    ld [hl-], a                                   ; $6271: $32
    dec b                                         ; $6272: $05
    ld a, [hl]                                    ; $6273: $7e
    ld [hl-], a                                   ; $6274: $32
    dec b                                         ; $6275: $05
    adc d                                         ; $6276: $8a
    ld [hl-], a                                   ; $6277: $32
    dec b                                         ; $6278: $05
    or c                                          ; $6279: $b1
    ld [hl-], a                                   ; $627a: $32
    dec b                                         ; $627b: $05
    cp h                                          ; $627c: $bc
    ld [hl-], a                                   ; $627d: $32
    dec b                                         ; $627e: $05
    ret z                                         ; $627f: $c8

    ld [hl-], a                                   ; $6280: $32
    dec b                                         ; $6281: $05
    call Call_000_0532                            ; $6282: $cd $32 $05
    pop hl                                        ; $6285: $e1
    ld [hl-], a                                   ; $6286: $32
    dec b                                         ; $6287: $05
    pop af                                        ; $6288: $f1
    ld [hl-], a                                   ; $6289: $32
    dec b                                         ; $628a: $05
    db $fc                                        ; $628b: $fc
    ld [hl-], a                                   ; $628c: $32
    dec b                                         ; $628d: $05
    ld [bc], a                                    ; $628e: $02
    inc sp                                        ; $628f: $33
    dec b                                         ; $6290: $05
    ld a, [bc]                                    ; $6291: $0a
    inc sp                                        ; $6292: $33
    dec b                                         ; $6293: $05
    inc de                                        ; $6294: $13
    inc sp                                        ; $6295: $33
    dec b                                         ; $6296: $05
    ld a, [de]                                    ; $6297: $1a
    inc sp                                        ; $6298: $33
    dec b                                         ; $6299: $05
    inc e                                         ; $629a: $1c
    inc sp                                        ; $629b: $33
    dec b                                         ; $629c: $05
    ld e, $33                                     ; $629d: $1e $33
    dec b                                         ; $629f: $05
    jr nz, jr_05f_62d5                            ; $62a0: $20 $33

    dec b                                         ; $62a2: $05
    ld [hl+], a                                   ; $62a3: $22
    inc sp                                        ; $62a4: $33
    dec b                                         ; $62a5: $05
    inc h                                         ; $62a6: $24
    inc sp                                        ; $62a7: $33
    dec b                                         ; $62a8: $05
    ld h, $33                                     ; $62a9: $26 $33
    dec b                                         ; $62ab: $05
    jr z, jr_05f_62e1                             ; $62ac: $28 $33

    dec b                                         ; $62ae: $05
    ld a, [hl+]                                   ; $62af: $2a
    inc sp                                        ; $62b0: $33
    dec b                                         ; $62b1: $05
    inc l                                         ; $62b2: $2c
    inc sp                                        ; $62b3: $33
    dec b                                         ; $62b4: $05
    ld l, $33                                     ; $62b5: $2e $33
    dec b                                         ; $62b7: $05
    jr nc, jr_05f_62ed                            ; $62b8: $30 $33

    dec b                                         ; $62ba: $05
    ld [hl-], a                                   ; $62bb: $32
    inc sp                                        ; $62bc: $33
    dec b                                         ; $62bd: $05
    inc [hl]                                      ; $62be: $34
    inc sp                                        ; $62bf: $33
    dec b                                         ; $62c0: $05
    ld [hl], $33                                  ; $62c1: $36 $33
    dec b                                         ; $62c3: $05
    jr c, jr_05f_62f9                             ; $62c4: $38 $33

    dec b                                         ; $62c6: $05
    ld a, [hl-]                                   ; $62c7: $3a
    inc sp                                        ; $62c8: $33
    dec b                                         ; $62c9: $05
    inc a                                         ; $62ca: $3c
    inc sp                                        ; $62cb: $33
    dec b                                         ; $62cc: $05
    ld a, $33                                     ; $62cd: $3e $33
    dec b                                         ; $62cf: $05
    ld b, b                                       ; $62d0: $40
    inc sp                                        ; $62d1: $33
    dec b                                         ; $62d2: $05
    ld b, d                                       ; $62d3: $42
    inc sp                                        ; $62d4: $33

jr_05f_62d5:
    dec b                                         ; $62d5: $05
    ld b, h                                       ; $62d6: $44
    inc sp                                        ; $62d7: $33
    dec b                                         ; $62d8: $05
    ld b, [hl]                                    ; $62d9: $46
    inc sp                                        ; $62da: $33
    dec b                                         ; $62db: $05
    ld c, b                                       ; $62dc: $48
    inc sp                                        ; $62dd: $33
    dec b                                         ; $62de: $05
    ld c, d                                       ; $62df: $4a
    inc sp                                        ; $62e0: $33

jr_05f_62e1:
    dec b                                         ; $62e1: $05
    ld c, h                                       ; $62e2: $4c
    inc sp                                        ; $62e3: $33
    dec b                                         ; $62e4: $05
    ld c, [hl]                                    ; $62e5: $4e
    inc sp                                        ; $62e6: $33
    dec b                                         ; $62e7: $05
    ld d, b                                       ; $62e8: $50
    inc sp                                        ; $62e9: $33
    dec b                                         ; $62ea: $05
    ld d, d                                       ; $62eb: $52
    inc sp                                        ; $62ec: $33

jr_05f_62ed:
    dec b                                         ; $62ed: $05
    ld d, h                                       ; $62ee: $54
    inc sp                                        ; $62ef: $33
    dec b                                         ; $62f0: $05
    ld d, [hl]                                    ; $62f1: $56
    inc sp                                        ; $62f2: $33
    dec b                                         ; $62f3: $05
    ld e, b                                       ; $62f4: $58
    inc sp                                        ; $62f5: $33
    dec b                                         ; $62f6: $05
    ld e, d                                       ; $62f7: $5a
    inc sp                                        ; $62f8: $33

jr_05f_62f9:
    dec b                                         ; $62f9: $05
    ld e, h                                       ; $62fa: $5c
    inc sp                                        ; $62fb: $33
    dec b                                         ; $62fc: $05
    ld e, [hl]                                    ; $62fd: $5e
    inc sp                                        ; $62fe: $33
    dec b                                         ; $62ff: $05
    ld h, b                                       ; $6300: $60
    inc sp                                        ; $6301: $33
    dec b                                         ; $6302: $05
    ld h, d                                       ; $6303: $62
    inc sp                                        ; $6304: $33
    dec b                                         ; $6305: $05
    ld h, h                                       ; $6306: $64
    inc sp                                        ; $6307: $33
    dec b                                         ; $6308: $05
    ld h, [hl]                                    ; $6309: $66
    inc sp                                        ; $630a: $33
    dec b                                         ; $630b: $05
    ld l, b                                       ; $630c: $68
    inc sp                                        ; $630d: $33
    dec b                                         ; $630e: $05
    ld l, d                                       ; $630f: $6a
    inc sp                                        ; $6310: $33
    dec b                                         ; $6311: $05
    ld l, h                                       ; $6312: $6c
    inc sp                                        ; $6313: $33
    dec b                                         ; $6314: $05
    ld l, [hl]                                    ; $6315: $6e
    inc sp                                        ; $6316: $33
    dec b                                         ; $6317: $05
    ld [hl], h                                    ; $6318: $74
    inc sp                                        ; $6319: $33
    dec b                                         ; $631a: $05
    add b                                         ; $631b: $80
    inc sp                                        ; $631c: $33
    dec b                                         ; $631d: $05
    adc l                                         ; $631e: $8d
    inc sp                                        ; $631f: $33
    dec b                                         ; $6320: $05
    sbc d                                         ; $6321: $9a
    inc sp                                        ; $6322: $33
    dec b                                         ; $6323: $05
    and l                                         ; $6324: $a5
    inc sp                                        ; $6325: $33
    dec b                                         ; $6326: $05
    or c                                          ; $6327: $b1
    inc sp                                        ; $6328: $33
    dec b                                         ; $6329: $05
    cp [hl]                                       ; $632a: $be
    inc sp                                        ; $632b: $33
    dec b                                         ; $632c: $05
    ret nz                                        ; $632d: $c0

    inc sp                                        ; $632e: $33
    dec b                                         ; $632f: $05
    jp nz, $0533                                  ; $6330: $c2 $33 $05

    call nz, $0533                                ; $6333: $c4 $33 $05
    add $33                                       ; $6336: $c6 $33
    dec b                                         ; $6338: $05
    ret z                                         ; $6339: $c8

    inc sp                                        ; $633a: $33
    dec b                                         ; $633b: $05
    jp z, $0533                                   ; $633c: $ca $33 $05

    call z, $0533                                 ; $633f: $cc $33 $05
    adc $33                                       ; $6342: $ce $33
    dec b                                         ; $6344: $05
    ret nc                                        ; $6345: $d0

    inc sp                                        ; $6346: $33
    dec b                                         ; $6347: $05
    jp nc, $0533                                  ; $6348: $d2 $33 $05

    call nc, $0533                                ; $634b: $d4 $33 $05
    rst $18                                       ; $634e: $df
    inc sp                                        ; $634f: $33
    dec b                                         ; $6350: $05
    pop hl                                        ; $6351: $e1
    inc sp                                        ; $6352: $33
    dec b                                         ; $6353: $05
    db $e3                                        ; $6354: $e3
    inc sp                                        ; $6355: $33
    dec b                                         ; $6356: $05
    push hl                                       ; $6357: $e5
    inc sp                                        ; $6358: $33
    dec b                                         ; $6359: $05
    rst $20                                       ; $635a: $e7
    inc sp                                        ; $635b: $33
    dec b                                         ; $635c: $05
    jp hl                                         ; $635d: $e9


    inc sp                                        ; $635e: $33
    dec b                                         ; $635f: $05
    db $eb                                        ; $6360: $eb
    inc sp                                        ; $6361: $33
    dec b                                         ; $6362: $05
    db $ed                                        ; $6363: $ed
    inc sp                                        ; $6364: $33
    dec b                                         ; $6365: $05
    rst $28                                       ; $6366: $ef
    inc sp                                        ; $6367: $33
    dec b                                         ; $6368: $05
    pop af                                        ; $6369: $f1
    inc sp                                        ; $636a: $33
    dec b                                         ; $636b: $05
    di                                            ; $636c: $f3
    inc sp                                        ; $636d: $33
    dec b                                         ; $636e: $05
    push af                                       ; $636f: $f5
    inc sp                                        ; $6370: $33
    dec b                                         ; $6371: $05
    rst $30                                       ; $6372: $f7
    inc sp                                        ; $6373: $33
    dec b                                         ; $6374: $05
    ld sp, hl                                     ; $6375: $f9
    inc sp                                        ; $6376: $33
    dec b                                         ; $6377: $05
    ei                                            ; $6378: $fb
    inc sp                                        ; $6379: $33
    dec b                                         ; $637a: $05
    db $fd                                        ; $637b: $fd
    inc sp                                        ; $637c: $33
    dec b                                         ; $637d: $05
    rst $38                                       ; $637e: $ff
    inc sp                                        ; $637f: $33
    dec b                                         ; $6380: $05
    ld bc, $0534                                  ; $6381: $01 $34 $05
    inc bc                                        ; $6384: $03
    inc [hl]                                      ; $6385: $34
    dec b                                         ; $6386: $05
    dec b                                         ; $6387: $05
    inc [hl]                                      ; $6388: $34
    dec b                                         ; $6389: $05
    rlca                                          ; $638a: $07
    inc [hl]                                      ; $638b: $34
    dec b                                         ; $638c: $05
    add hl, bc                                    ; $638d: $09
    inc [hl]                                      ; $638e: $34
    dec b                                         ; $638f: $05
    dec d                                         ; $6390: $15
    inc [hl]                                      ; $6391: $34
    dec b                                         ; $6392: $05
    rla                                           ; $6393: $17
    inc [hl]                                      ; $6394: $34
    dec b                                         ; $6395: $05
    ld h, $34                                     ; $6396: $26 $34
    dec b                                         ; $6398: $05
    cpl                                           ; $6399: $2f
    inc [hl]                                      ; $639a: $34
    dec b                                         ; $639b: $05
    ld [hl], $34                                  ; $639c: $36 $34
    dec b                                         ; $639e: $05
    ccf                                           ; $639f: $3f
    inc [hl]                                      ; $63a0: $34
    dec b                                         ; $63a1: $05
    ld b, c                                       ; $63a2: $41
    inc [hl]                                      ; $63a3: $34
    dec b                                         ; $63a4: $05
    ld b, e                                       ; $63a5: $43
    inc [hl]                                      ; $63a6: $34
    dec b                                         ; $63a7: $05
    ld b, l                                       ; $63a8: $45
    inc [hl]                                      ; $63a9: $34
    dec b                                         ; $63aa: $05
    ld b, a                                       ; $63ab: $47
    inc [hl]                                      ; $63ac: $34
    dec b                                         ; $63ad: $05
    ld c, c                                       ; $63ae: $49
    inc [hl]                                      ; $63af: $34
    dec b                                         ; $63b0: $05
    ld c, e                                       ; $63b1: $4b
    inc [hl]                                      ; $63b2: $34
    dec b                                         ; $63b3: $05
    ld c, l                                       ; $63b4: $4d
    inc [hl]                                      ; $63b5: $34
    dec b                                         ; $63b6: $05
    ld c, a                                       ; $63b7: $4f
    inc [hl]                                      ; $63b8: $34
    dec b                                         ; $63b9: $05
    ld d, c                                       ; $63ba: $51
    inc [hl]                                      ; $63bb: $34
    dec b                                         ; $63bc: $05
    ld d, e                                       ; $63bd: $53
    inc [hl]                                      ; $63be: $34
    dec b                                         ; $63bf: $05
    ld d, l                                       ; $63c0: $55
    inc [hl]                                      ; $63c1: $34
    dec b                                         ; $63c2: $05
    ld d, a                                       ; $63c3: $57
    inc [hl]                                      ; $63c4: $34
    dec b                                         ; $63c5: $05
    ld e, c                                       ; $63c6: $59
    inc [hl]                                      ; $63c7: $34
    dec b                                         ; $63c8: $05
    ld e, e                                       ; $63c9: $5b
    inc [hl]                                      ; $63ca: $34
    dec b                                         ; $63cb: $05
    ld e, l                                       ; $63cc: $5d
    inc [hl]                                      ; $63cd: $34
    dec b                                         ; $63ce: $05
    ld e, a                                       ; $63cf: $5f
    inc [hl]                                      ; $63d0: $34
    dec b                                         ; $63d1: $05
    ld h, c                                       ; $63d2: $61
    inc [hl]                                      ; $63d3: $34
    dec b                                         ; $63d4: $05
    ld h, e                                       ; $63d5: $63
    inc [hl]                                      ; $63d6: $34
    dec b                                         ; $63d7: $05
    ld l, b                                       ; $63d8: $68
    inc [hl]                                      ; $63d9: $34
    dec b                                         ; $63da: $05
    ld l, d                                       ; $63db: $6a
    inc [hl]                                      ; $63dc: $34
    dec b                                         ; $63dd: $05

Call_05f_63de:
    ld l, h                                       ; $63de: $6c
    inc [hl]                                      ; $63df: $34
    dec b                                         ; $63e0: $05
    ld l, [hl]                                    ; $63e1: $6e
    inc [hl]                                      ; $63e2: $34
    dec b                                         ; $63e3: $05
    ld [hl], b                                    ; $63e4: $70
    inc [hl]                                      ; $63e5: $34
    ld d, [hl]                                    ; $63e6: $56
    ld d, h                                       ; $63e7: $54
    ld d, l                                       ; $63e8: $55
    add c                                         ; $63e9: $81
    and h                                         ; $63ea: $a4
    and [hl]                                      ; $63eb: $a6
    and a                                         ; $63ec: $a7
    xor b                                         ; $63ed: $a8
    xor c                                         ; $63ee: $a9
    xor d                                         ; $63ef: $aa
    xor e                                         ; $63f0: $ab
    xor l                                         ; $63f1: $ad
    xor a                                         ; $63f2: $af
    or b                                          ; $63f3: $b0
    or c                                          ; $63f4: $b1
    or d                                          ; $63f5: $b2
    or e                                          ; $63f6: $b3
    or h                                          ; $63f7: $b4
    or l                                          ; $63f8: $b5
    or [hl]                                       ; $63f9: $b6
    or a                                          ; $63fa: $b7
    cp b                                          ; $63fb: $b8
    cp c                                          ; $63fc: $b9
    cp d                                          ; $63fd: $ba
    cp e                                          ; $63fe: $bb
    cp a                                          ; $63ff: $bf
    ret nz                                        ; $6400: $c0

    pop bc                                        ; $6401: $c1
    jp nz, $c5c3                                  ; $6402: $c2 $c3 $c5

    add $c7                                       ; $6405: $c6 $c7
    ret                                           ; $6407: $c9


    set 1, h                                      ; $6408: $cb $cc
    adc $cf                                       ; $640a: $ce $cf
    ret nc                                        ; $640c: $d0

    pop de                                        ; $640d: $d1
    jp nc, $d5d4                                  ; $640e: $d2 $d4 $d5

    sub $d7                                       ; $6411: $d6 $d7
    ret c                                         ; $6413: $d8

    reti                                          ; $6414: $d9


    jp c, $dfdb                                   ; $6415: $da $db $df

    db $e3                                        ; $6418: $e3
    rst $30                                       ; $6419: $f7
    ld hl, sp-$06                                 ; $641a: $f8 $fa
    cp $00                                        ; $641c: $fe $00
    and c                                         ; $641e: $a1
    jp z, $d3cd                                   ; $641f: $ca $cd $d3

    ld bc, $0302                                  ; $6422: $01 $02 $03
    inc b                                         ; $6425: $04
    dec b                                         ; $6426: $05
    ld b, $07                                     ; $6427: $06 $07
    ld [$0a09], sp                                ; $6429: $08 $09 $0a
    dec bc                                        ; $642c: $0b
    inc c                                         ; $642d: $0c
    dec c                                         ; $642e: $0d
    ld c, $0f                                     ; $642f: $0e $0f
    db $10                                        ; $6431: $10
    ld de, $1312                                  ; $6432: $11 $12 $13
    inc d                                         ; $6435: $14
    dec d                                         ; $6436: $15
    ld d, $17                                     ; $6437: $16 $17
    jr jr_05f_6454                                ; $6439: $18 $19

    ld a, [de]                                    ; $643b: $1a
    dec de                                        ; $643c: $1b
    call nz, Call_000_1cc8                        ; $643d: $c4 $c8 $1c
    dec e                                         ; $6440: $1d
    ld e, $1f                                     ; $6441: $1e $1f
    jr nz, @+$23                                  ; $6443: $20 $21

    ld [hl+], a                                   ; $6445: $22
    inc hl                                        ; $6446: $23
    inc h                                         ; $6447: $24
    dec h                                         ; $6448: $25
    ld h, $27                                     ; $6449: $26 $27
    jr z, jr_05f_6476                             ; $644b: $28 $29

    add b                                         ; $644d: $80
    add h                                         ; $644e: $84
    xor h                                         ; $644f: $ac
    ld [$2af9], a                                 ; $6450: $ea $f9 $2a
    ld [c], a                                     ; $6453: $e2

jr_05f_6454:
    db $fc                                        ; $6454: $fc
    ldh a, [$2b]                                  ; $6455: $f0 $2b
    inc l                                         ; $6457: $2c
    dec l                                         ; $6458: $2d
    ld l, $2f                                     ; $6459: $2e $2f
    jr nc, jr_05f_648e                            ; $645b: $30 $31

    ld [hl-], a                                   ; $645d: $32
    add sp, $33                                   ; $645e: $e8 $33
    inc [hl]                                      ; $6460: $34
    dec [hl]                                      ; $6461: $35
    push af                                       ; $6462: $f5
    and $f6                                       ; $6463: $e6 $f6
    ld [hl], $37                                  ; $6465: $36 $37
    jr c, jr_05f_64a2                             ; $6467: $38 $39

    ld a, [hl-]                                   ; $6469: $3a
    xor [hl]                                      ; $646a: $ae
    db $ed                                        ; $646b: $ed
    rst $38                                       ; $646c: $ff
    dec sp                                        ; $646d: $3b
    inc a                                         ; $646e: $3c
    db $eb                                        ; $646f: $eb
    dec a                                         ; $6470: $3d
    rst $28                                       ; $6471: $ef
    ld a, $e7                                     ; $6472: $3e $e7
    di                                            ; $6474: $f3
    ccf                                           ; $6475: $3f

jr_05f_6476:
    db $ec                                        ; $6476: $ec
    ld b, b                                       ; $6477: $40
    ld b, c                                       ; $6478: $41
    ld b, d                                       ; $6479: $42
    pop hl                                        ; $647a: $e1
    jp hl                                         ; $647b: $e9


    db $e4                                        ; $647c: $e4
    ld b, e                                       ; $647d: $43
    db $f4                                        ; $647e: $f4
    xor $44                                       ; $647f: $ee $44
    ld b, l                                       ; $6481: $45
    ld a, [c]                                     ; $6482: $f2
    ld b, [hl]                                    ; $6483: $46
    ld b, a                                       ; $6484: $47
    ld c, b                                       ; $6485: $48
    ld c, c                                       ; $6486: $49
    ld c, d                                       ; $6487: $4a
    ld c, e                                       ; $6488: $4b
    ld c, h                                       ; $6489: $4c
    push hl                                       ; $648a: $e5
    ld c, l                                       ; $648b: $4d
    ld c, [hl]                                    ; $648c: $4e
    and b                                         ; $648d: $a0

jr_05f_648e:
    ld c, a                                       ; $648e: $4f
    ld d, b                                       ; $648f: $50
    ld d, c                                       ; $6490: $51
    ld d, d                                       ; $6491: $52
    ld d, e                                       ; $6492: $53
    daa                                           ; $6493: $27
    sbc h                                         ; $6494: $9c
    ld [hl], c                                    ; $6495: $71
    db $fc                                        ; $6496: $fc
    ld c, c                                       ; $6497: $49
    ld h, a                                       ; $6498: $67
    inc e                                         ; $6499: $1c
    ld a, a                                       ; $649a: $7f
    jp nc, Jump_000_2709                          ; $649b: $d2 $09 $27

    sbc h                                         ; $649e: $9c
    ld hl, sp+$02                                 ; $649f: $f8 $02
    ld l, l                                       ; $64a1: $6d

jr_05f_64a2:
    ld e, a                                       ; $64a2: $5f
    and b                                         ; $64a3: $a0
    sub d                                         ; $64a4: $92
    dec sp                                        ; $64a5: $3b
    ld l, [hl]                                    ; $64a6: $6e
    ld l, l                                       ; $64a7: $6d
    ld e, a                                       ; $64a8: $5f
    xor d                                         ; $64a9: $aa
    ld a, d                                       ; $64aa: $7a
    ld bc, $7d97                                  ; $64ab: $01 $97 $7d
    halt                                          ; $64ae: $76
    push hl                                       ; $64af: $e5
    ld e, l                                       ; $64b0: $5d
    ld h, e                                       ; $64b1: $63
    ld [c], a                                     ; $64b2: $e2
    cp h                                          ; $64b3: $bc

jr_05f_64b4:
    ld l, e                                       ; $64b4: $6b
    ld e, e                                       ; $64b5: $5b
    ld hl, sp-$27                                 ; $64b6: $f8 $d9
    ld h, a                                       ; $64b8: $67
    db $ed                                        ; $64b9: $ed
    add h                                         ; $64ba: $84
    inc sp                                        ; $64bb: $33
    adc [hl]                                      ; $64bc: $8e
    ccf                                           ; $64bd: $3f
    jp hl                                         ; $64be: $e9


    or h                                          ; $64bf: $b4
    db $e3                                        ; $64c0: $e3
    ld c, a                                       ; $64c1: $4f
    ld a, [hl-]                                   ; $64c2: $3a
    pop hl                                        ; $64c3: $e1
    add h                                         ; $64c4: $84
    inc de                                        ; $64c5: $13
    ld e, a                                       ; $64c6: $5f
    rst $10                                       ; $64c7: $d7
    and h                                         ; $64c8: $a4
    and [hl]                                      ; $64c9: $a6
    ld [hl], a                                    ; $64ca: $77
    ld b, a                                       ; $64cb: $47
    ld hl, $bd1f                                  ; $64cc: $21 $1f $bd
    rst $38                                       ; $64cf: $ff
    ld a, h                                       ; $64d0: $7c
    ld bc, $8697                                  ; $64d1: $01 $97 $86
    db $e4                                        ; $64d4: $e4
    rla                                           ; $64d5: $17
    ld d, a                                       ; $64d6: $57
    inc [hl]                                      ; $64d7: $34
    add sp, $56                                   ; $64d8: $e8 $56
    db $fc                                        ; $64da: $fc
    ld [bc], a                                    ; $64db: $02
    rla                                           ; $64dc: $17
    ld [hl], l                                    ; $64dd: $75
    ld c, l                                       ; $64de: $4d
    pop hl                                        ; $64df: $e1
    rla                                           ; $64e0: $17
    rst $10                                       ; $64e1: $d7
    ld e, h                                       ; $64e2: $5c
    ld a, c                                       ; $64e3: $79
    sub $ce                                       ; $64e4: $d6 $ce
    dec a                                         ; $64e6: $3d
    pop af                                        ; $64e7: $f1
    ld hl, sp+$73                                 ; $64e8: $f8 $73
    ld c, a                                       ; $64ea: $4f

jr_05f_64eb:
    jp c, Jump_000_070b                           ; $64eb: $da $0b $07

    xor a                                         ; $64ee: $af
    inc a                                         ; $64ef: $3c
    ld l, e                                       ; $64f0: $6b
    rst $20                                       ; $64f1: $e7
    sbc [hl]                                      ; $64f2: $9e
    ld a, b                                       ; $64f3: $78
    db $fc                                        ; $64f4: $fc
    cp c                                          ; $64f5: $b9
    daa                                           ; $64f6: $27
    db $ed                                        ; $64f7: $ed
    dec b                                         ; $64f8: $05
    rla                                           ; $64f9: $17
    ld [hl], l                                    ; $64fa: $75
    ld l, b                                       ; $64fb: $68
    ld e, c                                       ; $64fc: $59

jr_05f_64fd:
    jr nc, jr_05f_64eb                            ; $64fd: $30 $ec

    ld e, d                                       ; $64ff: $5a
    add hl, bc                                    ; $6500: $09
    cpl                                           ; $6501: $2f
    rla                                           ; $6502: $17
    ld [hl], l                                    ; $6503: $75
    ld l, b                                       ; $6504: $68
    ld e, c                                       ; $6505: $59
    jr nc, jr_05f_64b4                            ; $6506: $30 $ac

    ld c, l                                       ; $6508: $4d
    rrca                                          ; $6509: $0f
    cpl                                           ; $650a: $2f
    rla                                           ; $650b: $17
    ld [hl], l                                    ; $650c: $75
    ld l, b                                       ; $650d: $68
    ld e, c                                       ; $650e: $59
    jr nc, jr_05f_64fd                            ; $650f: $30 $ec

    sbc d                                         ; $6511: $9a
    add h                                         ; $6512: $84
    rst $38                                       ; $6513: $ff
    ld [bc], a                                    ; $6514: $02
    rst $10                                       ; $6515: $d7
    add hl, sp                                    ; $6516: $39
    rra                                           ; $6517: $1f
    add sp, $1d                                   ; $6518: $e8 $1d
    add d                                         ; $651a: $82
    ld e, [hl]                                    ; $651b: $5e
    ld [hl], a                                    ; $651c: $77
    xor l                                         ; $651d: $ad
    add h                                         ; $651e: $84
    rla                                           ; $651f: $17
    rst $10                                       ; $6520: $d7
    add hl, sp                                    ; $6521: $39
    rra                                           ; $6522: $1f
    add sp, $1d                                   ; $6523: $e8 $1d
    add d                                         ; $6525: $82
    ld e, [hl]                                    ; $6526: $5e
    rst $10                                       ; $6527: $d7
    and [hl]                                      ; $6528: $a6
    add a                                         ; $6529: $87
    rla                                           ; $652a: $17
    rst $10                                       ; $652b: $d7
    add hl, sp                                    ; $652c: $39
    rra                                           ; $652d: $1f
    add sp, $1d                                   ; $652e: $e8 $1d
    add d                                         ; $6530: $82
    ld e, [hl]                                    ; $6531: $5e
    ld [hl], a                                    ; $6532: $77
    ld c, l                                       ; $6533: $4d
    jp nz, $017f                                  ; $6534: $c2 $7f $01

    rst $10                                       ; $6537: $d7
    add hl, sp                                    ; $6538: $39
    ld de, $e81e                                  ; $6539: $11 $1e $e8
    dec e                                         ; $653c: $1d
    add d                                         ; $653d: $82
    ld e, [hl]                                    ; $653e: $5e
    ld [hl], a                                    ; $653f: $77
    xor l                                         ; $6540: $ad
    add h                                         ; $6541: $84
    rla                                           ; $6542: $17
    rst $10                                       ; $6543: $d7
    add hl, sp                                    ; $6544: $39
    ld de, $e81e                                  ; $6545: $11 $1e $e8
    dec e                                         ; $6548: $1d
    add d                                         ; $6549: $82
    ld e, [hl]                                    ; $654a: $5e
    rst $10                                       ; $654b: $d7
    and [hl]                                      ; $654c: $a6
    add a                                         ; $654d: $87

jr_05f_654e:
    rla                                           ; $654e: $17
    rst $10                                       ; $654f: $d7
    add hl, sp                                    ; $6550: $39
    ld de, $e81e                                  ; $6551: $11 $1e $e8
    dec e                                         ; $6554: $1d
    add d                                         ; $6555: $82
    ld e, [hl]                                    ; $6556: $5e
    ld [hl], a                                    ; $6557: $77
    ld c, l                                       ; $6558: $4d
    jp nz, $017f                                  ; $6559: $c2 $7f $01

    sub a                                         ; $655c: $97
    ld [$0b51], sp                                ; $655d: $08 $51 $0b
    ld b, d                                       ; $6560: $42
    ret c                                         ; $6561: $d8

    or l                                          ; $6562: $b5
    ld [de], a                                    ; $6563: $12
    ld e, [hl]                                    ; $6564: $5e
    sub a                                         ; $6565: $97
    ld [$0b51], sp                                ; $6566: $08 $51 $0b
    ld b, d                                       ; $6569: $42
    ld e, b                                       ; $656a: $58
    sbc e                                         ; $656b: $9b
    ld e, $5e                                     ; $656c: $1e $5e
    sub a                                         ; $656e: $97
    ld [$0b51], sp                                ; $656f: $08 $51 $0b
    ld b, d                                       ; $6572: $42
    ret c                                         ; $6573: $d8

    dec [hl]                                      ; $6574: $35
    add hl, bc                                    ; $6575: $09
    rst $38                                       ; $6576: $ff
    dec b                                         ; $6577: $05
    rst $10                                       ; $6578: $d7
    add e                                         ; $6579: $83
    sub h                                         ; $657a: $94
    sbc a                                         ; $657b: $9f
    ld [$b3fa], sp                                ; $657c: $08 $fa $b3
    rr h                                          ; $657f: $cb $1c
    ld b, e                                       ; $6581: $43
    xor b                                         ; $6582: $a8
    rst $38                                       ; $6583: $ff
    dec b                                         ; $6584: $05
    sub a                                         ; $6585: $97
    dec b                                         ; $6586: $05
    and d                                         ; $6587: $a2
    pop hl                                        ; $6588: $e1
    add hl, bc                                    ; $6589: $09
    inc e                                         ; $658a: $1c
    ld [hl], d                                    ; $658b: $72
    rst $10                                       ; $658c: $d7
    ld b, e                                       ; $658d: $43
    and e                                         ; $658e: $a3
    pop de                                        ; $658f: $d1
    dec [hl]                                      ; $6590: $35
    cpl                                           ; $6591: $2f
    sub a                                         ; $6592: $97
    dec b                                         ; $6593: $05
    and d                                         ; $6594: $a2
    pop hl                                        ; $6595: $e1
    add hl, bc                                    ; $6596: $09
    inc e                                         ; $6597: $1c
    ld [hl], d                                    ; $6598: $72
    rlca                                          ; $6599: $07
    ld b, e                                       ; $659a: $43
    ld [hl-], a                                   ; $659b: $32
    call nc, $5717                                ; $659c: $d4 $17 $57
    sbc d                                         ; $659f: $9a
    inc de                                        ; $65a0: $13
    ld [hl+], a                                   ; $65a1: $22
    jr nz, jr_05f_654e                            ; $65a2: $20 $aa

    rst $10                                       ; $65a4: $d7
    ld e, l                                       ; $65a5: $5d
    inc de                                        ; $65a6: $13
    ld hl, sp+$77                                 ; $65a7: $f8 $77
    cp l                                          ; $65a9: $bd
    cp [hl]                                       ; $65aa: $be
    rlca                                          ; $65ab: $07
    ld [hl], l                                    ; $65ac: $75
    and d                                         ; $65ad: $a2
    ld a, d                                       ; $65ae: $7a
    db $dd                                        ; $65af: $dd
    ld a, c                                       ; $65b0: $79
    cp b                                          ; $65b1: $b8
    res 7, a                                      ; $65b2: $cb $bf
    ld e, [hl]                                    ; $65b4: $5e
    db $fd                                        ; $65b5: $fd
    sbc a                                         ; $65b6: $9f
    rla                                           ; $65b7: $17
    ld l, l                                       ; $65b8: $6d
    ld a, [$9fc8]                                 ; $65b9: $fa $c8 $9f
    inc bc                                        ; $65bc: $03
    and l                                         ; $65bd: $a5
    cp h                                          ; $65be: $bc
    ld c, [hl]                                    ; $65bf: $4e
    ld c, c                                       ; $65c0: $49
    ld e, $5a                                     ; $65c1: $1e $5a
    call nz, $b86b                                ; $65c3: $c4 $6b $b8
    add $94                                       ; $65c6: $c6 $94
    inc l                                         ; $65c8: $2c
    xor $d5                                       ; $65c9: $ee $d5
    or e                                          ; $65cb: $b3
    and b                                         ; $65cc: $a0
    add sp, -$26                                  ; $65cd: $e8 $da
    ld e, a                                       ; $65cf: $5f
    ld l, l                                       ; $65d0: $6d
    ld a, [$9fc8]                                 ; $65d1: $fa $c8 $9f
    inc bc                                        ; $65d4: $03
    and l                                         ; $65d5: $a5
    inc a                                         ; $65d6: $3c
    add hl, bc                                    ; $65d7: $09
    ld l, d                                       ; $65d8: $6a
    rst $10                                       ; $65d9: $d7
    and h                                         ; $65da: $a4
    and [hl]                                      ; $65db: $a6
    ld [hl], a                                    ; $65dc: $77
    ld b, a                                       ; $65dd: $47
    ld hl, $bd1f                                  ; $65de: $21 $1f $bd
    rst $38                                       ; $65e1: $ff
    ld l, h                                       ; $65e2: $6c
    dec b                                         ; $65e3: $05
    db $10                                        ; $65e4: $10
    ld e, $43                                     ; $65e5: $1e $43
    rst $18                                       ; $65e7: $df
    rst $20                                       ; $65e8: $e7
    adc c                                         ; $65e9: $89
    ld d, c                                       ; $65ea: $51
    db $fd                                        ; $65eb: $fd
    adc [hl]                                      ; $65ec: $8e
    ld e, $5a                                     ; $65ed: $1e $5a
    call nz, $b86b                                ; $65ef: $c4 $6b $b8
    add $94                                       ; $65f2: $c6 $94
    inc l                                         ; $65f4: $2c
    xor $d5                                       ; $65f5: $ee $d5
    jp c, Jump_05f_6d5f                           ; $65f7: $da $5f $6d

    ld a, [$97d4]                                 ; $65fa: $fa $d4 $97
    add c                                         ; $65fd: $81
    ld d, d                                       ; $65fe: $52
    sbc [hl]                                      ; $65ff: $9e
    ld l, $58                                     ; $6600: $2e $58
    dec sp                                        ; $6602: $3b
    or h                                          ; $6603: $b4
    ld e, d                                       ; $6604: $5a
    cp [hl]                                       ; $6605: $be
    ld e, a                                       ; $6606: $5f
    rst $10                                       ; $6607: $d7
    cp c                                          ; $6608: $b9
    xor e                                         ; $6609: $ab
    ldh a, [$3c]                                  ; $660a: $f0 $3c
    sub [hl]                                      ; $660c: $96
    ld sp, $b5f4                                  ; $660d: $31 $f4 $b5
    pop bc                                        ; $6610: $c1
    cpl                                           ; $6611: $2f
    ld b, c                                       ; $6612: $41
    ld a, [hl]                                    ; $6613: $7e
    xor a                                         ; $6614: $af
    sbc h                                         ; $6615: $9c
    inc d                                         ; $6616: $14
    inc [hl]                                      ; $6617: $34
    ld l, l                                       ; $6618: $6d
    db $ed                                        ; $6619: $ed
    ccf                                           ; $661a: $3f
    ld d, e                                       ; $661b: $53
    ld [hl], e                                    ; $661c: $73
    cp a                                          ; $661d: $bf
    rlca                                          ; $661e: $07
    ld e, h                                       ; $661f: $5c
    ld b, [hl]                                    ; $6620: $46
    cp $dc                                        ; $6621: $fe $dc
    rst $28                                       ; $6623: $ef
    sbc b                                         ; $6624: $98
    ld d, b                                       ; $6625: $50
    ld d, [hl]                                    ; $6626: $56
    call $af33                                    ; $6627: $cd $33 $af
    or d                                          ; $662a: $b2

jr_05f_662b:
    ld [hl], c                                    ; $662b: $71
    dec [hl]                                      ; $662c: $35
    inc a                                         ; $662d: $3c
    ld b, e                                       ; $662e: $43
    inc sp                                        ; $662f: $33
    ld a, e                                       ; $6630: $7b
    ld de, $b535                                  ; $6631: $11 $35 $b5
    cp a                                          ; $6634: $bf
    ld l, l                                       ; $6635: $6d
    and $39                                       ; $6636: $e6 $39
    rla                                           ; $6638: $17
    add l                                         ; $6639: $85
    ld b, h                                       ; $663a: $44
    jr @+$3c                                      ; $663b: $18 $3a

    rlca                                          ; $663d: $07
    ld [$45c8], a                                 ; $663e: $ea $c8 $45
    jr nz, jr_05f_662b                            ; $6641: $20 $e8

    ld a, [hl-]                                   ; $6643: $3a
    add hl, bc                                    ; $6644: $09
    ld b, a                                       ; $6645: $47
    sbc d                                         ; $6646: $9a
    rst $10                                       ; $6647: $d7
    and c                                         ; $6648: $a1
    adc b                                         ; $6649: $88
    dec b                                         ; $664a: $05
    ld a, l                                       ; $664b: $7d
    xor a                                         ; $664c: $af
    db $dd                                        ; $664d: $dd
    add hl, sp                                    ; $664e: $39
    rst $20                                       ; $664f: $e7
    xor [hl]                                      ; $6650: $ae
    add sp, $1d                                   ; $6651: $e8 $1d
    ld [c], a                                     ; $6653: $e2
    cpl                                           ; $6654: $2f
    add sp, -$54                                  ; $6655: $e8 $ac
    db $e3                                        ; $6657: $e3
    call nc, $eef4                                ; $6658: $d4 $f4 $ee
    jp z, $ae3f                                   ; $665b: $ca $3f $ae

    dec c                                         ; $665e: $0d
    sbc l                                         ; $665f: $9d
    ld b, c                                       ; $6660: $41
    pop de                                        ; $6661: $d1
    ld d, [hl]                                    ; $6662: $56
    jp $d433                                      ; $6663: $c3 $33 $d4


    and a                                         ; $6666: $a7
    cp $91                                        ; $6667: $fe $91
    xor e                                         ; $6669: $ab
    ld e, [hl]                                    ; $666a: $5e
    xor e                                         ; $666b: $ab
    cp c                                          ; $666c: $b9
    xor d                                         ; $666d: $aa
    and b                                         ; $666e: $a0
    or e                                          ; $666f: $b3
    ld sp, hl                                     ; $6670: $f9
    sbc $01                                       ; $6671: $de $01
    sub a                                         ; $6673: $97
    sub l                                         ; $6674: $95
    ld h, [hl]                                    ; $6675: $66
    ld c, $04                                     ; $6676: $0e $04
    rla                                           ; $6678: $17
    jp z, Jump_000_352a                           ; $6679: $ca $2a $35

    adc e                                         ; $667c: $8b
    ld [hl], e                                    ; $667d: $73
    ld d, c                                       ; $667e: $51
    ld c, b                                       ; $667f: $48
    jp c, $0f3e                                   ; $6680: $da $3e $0f

    push af                                       ; $6683: $f5
    xor c                                         ; $6684: $a9
    ld a, a                                       ; $6685: $7f
    db $e4                                        ; $6686: $e4
    and d                                         ; $6687: $a2
    and $10                                       ; $6688: $e6 $10
    jp z, $e32c                                   ; $668a: $ca $2c $e3

    call nc, $eef4                                ; $668d: $d4 $f4 $ee
    jp z, $be3f                                   ; $6690: $ca $3f $be

    rst $10                                       ; $6693: $d7
    ld e, $43                                     ; $6694: $1e $43
    dec e                                         ; $6696: $1d
    ld [$7f23], a                                 ; $6697: $ea $23 $7f
    xor [hl]                                      ; $669a: $ae
    ld l, e                                       ; $669b: $6b
    ld a, [hl+]                                   ; $669c: $2a
    db $d3                                        ; $669d: $d3
    and [hl]                                      ; $669e: $a6
    cp $91                                        ; $669f: $fe $91
    ld b, e                                       ; $66a1: $43
    ld a, l                                       ; $66a2: $7d
    push de                                       ; $66a3: $d5
    ld b, e                                       ; $66a4: $43
    jr z, @-$13                                   ; $66a5: $28 $eb

    add b                                         ; $66a7: $80
    cp h                                          ; $66a8: $bc
    ldh a, [$a8]                                  ; $66a9: $f0 $a8
    inc b                                         ; $66ab: $04
    add hl, hl                                    ; $66ac: $29
    or h                                          ; $66ad: $b4
    ld b, l                                       ; $66ae: $45
    call nc, $ea1c                                ; $66af: $d4 $1c $ea
    ld d, e                                       ; $66b2: $53
    pop hl                                        ; $66b3: $e1
    ld a, c                                       ; $66b4: $79
    sbc h                                         ; $66b5: $9c
    inc bc                                        ; $66b6: $03
    pop bc                                        ; $66b7: $c1
    pop bc                                        ; $66b8: $c1
    ld a, [de]                                    ; $66b9: $1a
    ld a, [hl-]                                   ; $66ba: $3a
    add e                                         ; $66bb: $83
    ld d, d                                       ; $66bc: $52
    sub [hl]                                      ; $66bd: $96
    ld sp, $3df4                                  ; $66be: $31 $f4 $3d
    ld d, b                                       ; $66c1: $50
    xor $17                                       ; $66c2: $ee $17
    db $ed                                        ; $66c4: $ed
    and [hl]                                      ; $66c5: $a6
    xor a                                         ; $66c6: $af
    db $fd                                        ; $66c7: $fd
    ld h, a                                       ; $66c8: $67
    ld l, d                                       ; $66c9: $6a
    xor $b5                                       ; $66ca: $ee $b5
    sbc c                                         ; $66cc: $99
    reti                                          ; $66cd: $d9


    ld [hl], e                                    ; $66ce: $73
    adc [hl]                                      ; $66cf: $8e
    call z, Call_05f_577b                         ; $66d0: $cc $7b $57
    db $f4                                        ; $66d3: $f4
    ld c, $f1                                     ; $66d4: $0e $f1
    rla                                           ; $66d6: $17
    ld [hl], h                                    ; $66d7: $74
    sbc $6b                                       ; $66d8: $de $6b
    rst $38                                       ; $66da: $ff
    or d                                          ; $66db: $b2
    xor d                                         ; $66dc: $aa
    cp $91                                        ; $66dd: $fe $91
    sub e                                         ; $66df: $93
    and b                                         ; $66e0: $a0
    ld d, $81                                     ; $66e1: $16 $81
    and b                                         ; $66e3: $a0
    ld h, a                                       ; $66e4: $67
    add hl, de                                    ; $66e5: $19
    and a                                         ; $66e6: $a7
    and [hl]                                      ; $66e7: $a6
    ld [hl], a                                    ; $66e8: $77
    ld d, a                                       ; $66e9: $57
    cp $31                                        ; $66ea: $fe $31
    ld l, l                                       ; $66ec: $6d
    add sp, $5c                                   ; $66ed: $e8 $5c
    db $eb                                        ; $66ef: $eb
    rst $10                                       ; $66f0: $d7
    ld [$421c], a                                 ; $66f1: $ea $1c $42
    cp c                                          ; $66f4: $b9
    ld [hl], a                                    ; $66f5: $77
    sub b                                         ; $66f6: $90
    adc d                                         ; $66f7: $8a
    ld a, e                                       ; $66f8: $7b
    and b                                         ; $66f9: $a0
    inc l                                         ; $66fa: $2c
    ld a, [bc]                                    ; $66fb: $0a
    ld sp, hl                                     ; $66fc: $f9
    ld h, l                                       ; $66fd: $65
    rla                                           ; $66fe: $17
    daa                                           ; $66ff: $27
    ld c, b                                       ; $6700: $48
    add hl, bc                                    ; $6701: $09
    call z, $d575                                 ; $6702: $cc $75 $d5
    ld [c], a                                     ; $6705: $e2
    db $f4                                        ; $6706: $f4
    db $fd                                        ; $6707: $fd
    ld [bc], a                                    ; $6708: $02
    ld l, l                                       ; $6709: $6d
    adc $55                                       ; $670a: $ce $55
    ld l, [hl]                                    ; $670c: $6e
    and $24                                       ; $670d: $e6 $24
    inc d                                         ; $670f: $14
    di                                            ; $6710: $f3
    ld e, d                                       ; $6711: $5a
    call $3521                                    ; $6712: $cd $21 $35
    dec l                                         ; $6715: $2d
    rst $30                                       ; $6716: $f7
    ld a, l                                       ; $6717: $7d
    cp a                                          ; $6718: $bf
    ld b, a                                       ; $6719: $47
    ld e, [hl]                                    ; $671a: $5e
    sub e                                         ; $671b: $93
    inc d                                         ; $671c: $14
    inc e                                         ; $671d: $1c
    ld [$16d2], sp                                ; $671e: $08 $d2 $16
    and l                                         ; $6721: $a5
    sbc a                                         ; $6722: $9f
    rst $00                                       ; $6723: $c7
    ld l, b                                       ; $6724: $68
    jp c, $cb1e                                   ; $6725: $da $1e $cb

    ld hl, sp-$69                                 ; $6728: $f8 $97
    ld hl, $c194                                  ; $672a: $21 $94 $c1
    ld a, [hl]                                    ; $672d: $7e
    pop hl                                        ; $672e: $e1
    rla                                           ; $672f: $17
    ld d, c                                       ; $6730: $51
    ret z                                         ; $6731: $c8

    push bc                                       ; $6732: $c5
    jr nc, @-$0c                                  ; $6733: $30 $f2

    rst $20                                       ; $6735: $e7
    inc l                                         ; $6736: $2c
    xor e                                         ; $6737: $ab
    sub h                                         ; $6738: $94
    ld e, [hl]                                    ; $6739: $5e
    jp $e7b3                                      ; $673a: $c3 $b3 $e7


    rla                                           ; $673d: $17
    and [hl]                                      ; $673e: $a6
    cp l                                          ; $673f: $bd
    ld l, l                                       ; $6740: $6d
    ld e, $3a                                     ; $6741: $1e $3a
    daa                                           ; $6743: $27
    ld a, [de]                                    ; $6744: $1a
    ld [hl], h                                    ; $6745: $74
    ld l, $a2                                     ; $6746: $2e $a2
    and $d0                                       ; $6748: $e6 $d0
    db $d3                                        ; $674a: $d3

jr_05f_674b:
    and b                                         ; $674b: $a0
    di                                            ; $674c: $f3
    dec b                                         ; $674d: $05
    dec c                                         ; $674e: $0d
    di                                            ; $674f: $f3
    rst $28                                       ; $6750: $ef
    adc $45                                       ; $6751: $ce $45
    ld hl, $5e87                                  ; $6753: $21 $87 $5e
    db $ed                                        ; $6756: $ed
    ld h, [hl]                                    ; $6757: $66
    or $50                                        ; $6758: $f6 $50
    add e                                         ; $675a: $83
    adc $fb                                       ; $675b: $ce $fb

jr_05f_675d:
    ret z                                         ; $675d: $c8

    rla                                           ; $675e: $17
    rlca                                          ; $675f: $07
    cp a                                          ; $6760: $bf
    ld c, h                                       ; $6761: $4c
    ld a, l                                       ; $6762: $7d
    add hl, de                                    ; $6763: $19
    jr z, jr_05f_674b                             ; $6764: $28 $e5

    xor c                                         ; $6766: $a9
    ldh a, [$3c]                                  ; $6767: $f0 $3c
    ld e, $08                                     ; $6769: $1e $08
    adc [hl]                                      ; $676b: $8e
    and c                                         ; $676c: $a1
    xor a                                         ; $676d: $af
    ld de, $b554                                  ; $676e: $11 $54 $b5
    sbc b                                         ; $6771: $98
    or [hl]                                       ; $6772: $b6
    rst $00                                       ; $6773: $c7
    ld hl, sp-$80                                 ; $6774: $f8 $80
    ld h, b                                       ; $6776: $60
    ld a, d                                       ; $6777: $7a
    rst $08                                       ; $6778: $cf
    sub a                                         ; $6779: $97
    sub c                                         ; $677a: $91
    ccf                                           ; $677b: $3f
    ld h, a                                       ; $677c: $67
    ld e, c                                       ; $677d: $59
    inc hl                                        ; $677e: $23
    xor b                                         ; $677f: $a8
    ld a, [hl+]                                   ; $6780: $2a
    call nc, $7dd2                                ; $6781: $d4 $d2 $7d
    cp a                                          ; $6784: $bf
    db $ed                                        ; $6785: $ed
    ld a, c                                       ; $6786: $79
    rst $28                                       ; $6787: $ef
    jp z, $ecc0                                   ; $6788: $ca $c0 $ec

    inc a                                         ; $678b: $3c
    ld h, a                                       ; $678c: $67
    ld l, l                                       ; $678d: $6d
    jr nz, jr_05f_67ee                            ; $678e: $20 $5e

    scf                                           ; $6790: $37
    sub $5f                                       ; $6791: $d6 $5f
    sbc h                                         ; $6793: $9c
    ld e, [hl]                                    ; $6794: $5e
    ld l, h                                       ; $6795: $6c
    ld h, c                                       ; $6796: $61
    rst $20                                       ; $6797: $e7
    and d                                         ; $6798: $a2
    sub b                                         ; $6799: $90
    or e                                          ; $679a: $b3
    and b                                         ; $679b: $a0
    ld h, l                                       ; $679c: $65
    ccf                                           ; $679d: $3f
    sbc d                                         ; $679e: $9a
    ld a, [bc]                                    ; $679f: $0a
    sbc c                                         ; $67a0: $99
    add b                                         ; $67a1: $80
    ld hl, $f72d                                  ; $67a2: $21 $2d $f7
    dec bc                                        ; $67a5: $0b
    db $ed                                        ; $67a6: $ed
    ld sp, $a1d4                                  ; $67a7: $31 $d4 $a1
    cp [hl]                                       ; $67aa: $be
    ld l, [hl]                                    ; $67ab: $6e
    ld [hl], h                                    ; $67ac: $74
    adc $11                                       ; $67ad: $ce $11
    dec sp                                        ; $67af: $3b
    ld b, a                                       ; $67b0: $47
    and $bd                                       ; $67b1: $e6 $bd
    or $5f                                        ; $67b3: $f6 $5f
    ld [de], a                                    ; $67b5: $12
    sub b                                         ; $67b6: $90
    ld [hl], $e7                                  ; $67b7: $36 $e7
    ret z                                         ; $67b9: $c8

    cpl                                           ; $67ba: $2f
    inc de                                        ; $67bb: $13
    and e                                         ; $67bc: $a3
    rlca                                          ; $67bd: $07
    inc de                                        ; $67be: $13
    ld c, d                                       ; $67bf: $4a
    sub d                                         ; $67c0: $92
    ld b, [hl]                                    ; $67c1: $46
    bit 7, [hl]                                   ; $67c2: $cb $7e
    or h                                          ; $67c4: $b4
    ld b, [hl]                                    ; $67c5: $46
    ld d, b                                       ; $67c6: $50
    push de                                       ; $67c7: $d5
    ld [c], a                                     ; $67c8: $e2
    ei                                            ; $67c9: $fb
    dec b                                         ; $67ca: $05
    db $ed                                        ; $67cb: $ed
    ld a, c                                       ; $67cc: $79
    xor a                                         ; $67cd: $af
    db $fd                                        ; $67ce: $fd
    sub a                                         ; $67cf: $97
    inc b                                         ; $67d0: $04
    ld e, h                                       ; $67d1: $5c
    scf                                           ; $67d2: $37
    ld a, [hl-]                                   ; $67d3: $3a
    rst $20                                       ; $67d4: $e7
    adc b                                         ; $67d5: $88
    sbc l                                         ; $67d6: $9d
    ld b, e                                       ; $67d7: $43
    jr z, jr_05f_675d                             ; $67d8: $28 $83

    and c                                         ; $67da: $a1
    ld h, l                                       ; $67db: $65
    ld e, a                                       ; $67dc: $5f
    ret nc                                        ; $67dd: $d0

    ld [hl-], a                                   ; $67de: $32
    dec bc                                        ; $67df: $0b
    ld a, d                                       ; $67e0: $7a
    ccf                                           ; $67e1: $3f
    ld a, [de]                                    ; $67e2: $1a
    xor c                                         ; $67e3: $a9
    ld d, a                                       ; $67e4: $57
    di                                            ; $67e5: $f3
    db $fd                                        ; $67e6: $fd
    ld [bc], a                                    ; $67e7: $02
    db $ed                                        ; $67e8: $ed
    ld a, c                                       ; $67e9: $79
    xor a                                         ; $67ea: $af
    db $fd                                        ; $67eb: $fd
    sub a                                         ; $67ec: $97
    inc b                                         ; $67ed: $04

jr_05f_67ee:
    ld e, h                                       ; $67ee: $5c
    jr z, jr_05f_6814                             ; $67ef: $28 $23

    di                                            ; $67f1: $f3
    sbc $c5                                       ; $67f2: $de $c5
    add hl, bc                                    ; $67f4: $09
    dec l                                         ; $67f5: $2d
    ld [hl-], a                                   ; $67f6: $32
    inc b                                         ; $67f7: $04
    dec [hl]                                      ; $67f8: $35
    ld a, [c]                                     ; $67f9: $f2
    rst $20                                       ; $67fa: $e7
    ld h, d                                       ; $67fb: $62
    dec bc                                        ; $67fc: $0b
    sbc e                                         ; $67fd: $9b
    rst $10                                       ; $67fe: $d7
    ld l, d                                       ; $67ff: $6a
    ld c, $a1                                     ; $6800: $0e $a1
    call c, $ed2f                                 ; $6802: $dc $2f $ed
    and [hl]                                      ; $6805: $a6
    xor a                                         ; $6806: $af
    db $fd                                        ; $6807: $fd
    ld h, a                                       ; $6808: $67
    ld l, d                                       ; $6809: $6a
    or h                                          ; $680a: $b4
    cp a                                          ; $680b: $bf
    rla                                           ; $680c: $17

jr_05f_680d:
    rlca                                          ; $680d: $07
    call c, $b213                                 ; $680e: $dc $13 $b2
    ld e, b                                       ; $6811: $58
    ld l, b                                       ; $6812: $68
    inc hl                                        ; $6813: $23

jr_05f_6814:
    di                                            ; $6814: $f3
    sbc $95                                       ; $6815: $de $95
    add c                                         ; $6817: $81
    reti                                          ; $6818: $d9


    ld a, c                                       ; $6819: $79
    rst $28                                       ; $681a: $ef
    jr nz, jr_05f_680d                            ; $681b: $20 $f0

    db $e4                                        ; $681d: $e4
    rst $00                                       ; $681e: $c7
    ld [hl-], a                                   ; $681f: $32
    rst $20                                       ; $6820: $e7
    ld l, $4e                                     ; $6821: $2e $4e
    ld l, b                                       ; $6823: $68
    sub c                                         ; $6824: $91
    ld hl, $fba8                                  ; $6825: $21 $a8 $fb
    dec b                                         ; $6828: $05
    sub a                                         ; $6829: $97
    db $eb                                        ; $682a: $eb
    adc e                                         ; $682b: $8b
    and c                                         ; $682c: $a1
    cpl                                           ; $682d: $2f
    add [hl]                                      ; $682e: $86
    dec d                                         ; $682f: $15
    and a                                         ; $6830: $a7
    ld a, b                                       ; $6831: $78
    jr nz, jr_05f_686c                            ; $6832: $20 $38

    ld e, b                                       ; $6834: $58
    ei                                            ; $6835: $fb
    rst $08                                       ; $6836: $cf
    call nc, $35d4                                ; $6837: $d4 $d4 $35
    add d                                         ; $683a: $82
    xor d                                         ; $683b: $aa
    rst $30                                       ; $683c: $f7
    dec bc                                        ; $683d: $0b
    db $ed                                        ; $683e: $ed
    ccf                                           ; $683f: $3f
    add a                                         ; $6840: $87
    ld a, [$2fc8]                                 ; $6841: $fa $c8 $2f
    ld [hl], l                                    ; $6844: $75
    ld b, d                                       ; $6845: $42
    dec l                                         ; $6846: $2d
    db $dd                                        ; $6847: $dd
    or h                                          ; $6848: $b4
    sub c                                         ; $6849: $91
    ld a, c                                       ; $684a: $79
    sbc a                                         ; $684b: $9f
    di                                            ; $684c: $f3
    ld [bc], a                                    ; $684d: $02
    db $ed                                        ; $684e: $ed
    adc $39                                       ; $684f: $ce $39
    add a                                         ; $6851: $87
    sub [hl]                                      ; $6852: $96
    ld a, e                                       ; $6853: $7b
    ld d, a                                       ; $6854: $57
    sub h                                         ; $6855: $94
    push de                                       ; $6856: $d5
    and $aa                                       ; $6857: $e6 $aa
    ld a, [$2e47]                                 ; $6859: $fa $47 $2e
    add [hl]                                      ; $685c: $86
    pop de                                        ; $685d: $d1
    jp $ad42                                      ; $685e: $c3 $42 $ad


    ld e, $f9                                     ; $6861: $1e $f9
    adc a                                         ; $6863: $8f
    ld e, h                                       ; $6864: $5c
    ld c, b                                       ; $6865: $48
    inc d                                         ; $6866: $14
    di                                            ; $6867: $f3
    ret nc                                        ; $6868: $d0

    cp h                                          ; $6869: $bc
    rst $00                                       ; $686a: $c7
    cp b                                          ; $686b: $b8

jr_05f_686c:
    ld [hl], $fd                                  ; $686c: $36 $fd
    cp b                                          ; $686e: $b8
    db $eb                                        ; $686f: $eb
    adc h                                         ; $6870: $8c
    rst $00                                       ; $6871: $c7
    or l                                          ; $6872: $b5
    rst $00                                       ; $6873: $c7
    ld a, [hl]                                    ; $6874: $7e
    ld l, b                                       ; $6875: $68
    xor e                                         ; $6876: $ab
    pop hl                                        ; $6877: $e1
    ld e, c                                       ; $6878: $59
    inc c                                         ; $6879: $0c
    db $e3                                        ; $687a: $e3
    rst $18                                       ; $687b: $df
    reti                                          ; $687c: $d9


    dec bc                                        ; $687d: $0b
    rst $08                                       ; $687e: $cf
    ld a, [hl-]                                   ; $687f: $3a
    inc d                                         ; $6880: $14
    cpl                                           ; $6881: $2f
    and d                                         ; $6882: $a2
    and $fd                                       ; $6883: $e6 $fd
    ld [bc], a                                    ; $6885: $02
    rst $20                                       ; $6886: $e7
    ld [hl], l                                    ; $6887: $75
    ld e, [hl]                                    ; $6888: $5e
    rst $38                                       ; $6889: $ff
    add sp, $1c                                   ; $688a: $e8 $1c
    ld b, e                                       ; $688c: $43
    rst $18                                       ; $688d: $df
    rst $20                                       ; $688e: $e7
    push bc                                       ; $688f: $c5
    sub h                                         ; $6890: $94
    db $f4                                        ; $6891: $f4
    ld h, b                                       ; $6892: $60
    ld hl, $72d1                                  ; $6893: $21 $d1 $72
    rst $28                                       ; $6896: $ef
    ld a, [hl-]                                   ; $6897: $3a
    ld c, d                                       ; $6898: $4a

jr_05f_6899:
    ld l, $b6                                     ; $6899: $2e $b6
    ld [hl], h                                    ; $689b: $74
    jr z, jr_05f_6899                             ; $689c: $28 $fb

    cp h                                          ; $689e: $bc
    adc b                                         ; $689f: $88
    jp c, $f78b                                   ; $68a0: $da $8b $f7

    ld b, b                                       ; $68a3: $40
    cp c                                          ; $68a4: $b9
    ld e, a                                       ; $68a5: $5f
    db $ed                                        ; $68a6: $ed
    and c                                         ; $68a7: $a1
    db $e3                                        ; $68a8: $e3
    add sp, -$32                                  ; $68a9: $e8 $ce
    pop bc                                        ; $68ab: $c1
    ld [$ba7f], a                                 ; $68ac: $ea $7f $ba
    ld a, c                                       ; $68af: $79
    sbc h                                         ; $68b0: $9c
    and c                                         ; $68b1: $a1
    ld [hl], l                                    ; $68b2: $75
    cp a                                          ; $68b3: $bf
    sub a                                         ; $68b4: $97
    add [hl]                                      ; $68b5: $86
    ld h, a                                       ; $68b6: $67
    or l                                          ; $68b7: $b5
    ld c, c                                       ; $68b8: $49
    ld e, e                                       ; $68b9: $5b
    ei                                            ; $68ba: $fb
    rst $08                                       ; $68bb: $cf
    call nc, Call_000_2fdc                        ; $68bc: $d4 $dc $2f
    db $ed                                        ; $68bf: $ed
    cp a                                          ; $68c0: $bf
    inc h                                         ; $68c1: $24
    jr nz, @+$6f                                  ; $68c2: $20 $6d

    or c                                          ; $68c4: $b1
    add l                                         ; $68c5: $85
    rst $10                                       ; $68c6: $d7
    ld l, d                                       ; $68c7: $6a
    xor $81                                       ; $68c8: $ee $81
    and d                                         ; $68ca: $a2
    db $fd                                        ; $68cb: $fd
    dec b                                         ; $68cc: $05
    rst $20                                       ; $68cd: $e7
    ld e, e                                       ; $68ce: $5b
    push af                                       ; $68cf: $f5
    ld e, a                                       ; $68d0: $5f
    sbc h                                         ; $68d1: $9c
    rst $30                                       ; $68d2: $f7
    jp c, $e22c                                   ; $68d3: $da $2c $e2

    ld [hl], l                                    ; $68d6: $75
    cp l                                          ; $68d7: $bd
    ld a, b                                       ; $68d8: $78
    adc $75                                       ; $68d9: $ce $75
    ld e, l                                       ; $68db: $5d
    add hl, hl                                    ; $68dc: $29
    di                                            ; $68dd: $f3
    db $fd                                        ; $68de: $fd
    ld [bc], a                                    ; $68df: $02
    rst $20                                       ; $68e0: $e7
    ld e, e                                       ; $68e1: $5b
    push af                                       ; $68e2: $f5
    ld e, a                                       ; $68e3: $5f
    sbc h                                         ; $68e4: $9c
    or h                                          ; $68e5: $b4
    pop de                                        ; $68e6: $d1
    ld e, l                                       ; $68e7: $5d
    add $bf                                       ; $68e8: $c6 $bf
    jr c, @+$09                                   ; $68ea: $38 $07

    ld c, d                                       ; $68ec: $4a
    ld a, c                                       ; $68ed: $79
    ldh a, [rDIV]                                 ; $68ee: $f0 $04
    ld e, h                                       ; $68f0: $5c
    jp Jump_000_3bfc                              ; $68f1: $c3 $fc $3b


    ld c, b                                       ; $68f4: $48
    ld [hl], c                                    ; $68f5: $71
    ld l, $36                                     ; $68f6: $2e $36
    ld c, $2d                                     ; $68f8: $0e $2d
    ld [c], a                                     ; $68fa: $e2
    ld [hl], l                                    ; $68fb: $75
    cp l                                          ; $68fc: $bd
    ld hl, sp+$7e                                 ; $68fd: $f8 $7e
    ld bc, $9e67                                  ; $68ff: $01 $67 $9e
    ld b, d                                       ; $6902: $42
    db $db                                        ; $6903: $db
    sbc c                                         ; $6904: $99
    and a                                         ; $6905: $a7
    jp nc, $e676                                  ; $6906: $d2 $76 $e6

    ld l, c                                       ; $6909: $69
    cp e                                          ; $690a: $bb
    rst $28                                       ; $690b: $ef
    ld a, e                                       ; $690c: $7b
    rlca                                          ; $690d: $07
    ld e, h                                       ; $690e: $5c
    ld d, [hl]                                    ; $690f: $56
    push de                                       ; $6910: $d5
    rst $28                                       ; $6911: $ef
    adc e                                         ; $6912: $8b
    add hl, hl                                    ; $6913: $29
    jp hl                                         ; $6914: $e9


    and c                                         ; $6915: $a1
    sub e                                         ; $6916: $93
    or [hl]                                       ; $6917: $b6
    jp c, $955c                                   ; $6918: $da $5c $95

    sbc a                                         ; $691b: $9f
    inc a                                         ; $691c: $3c
    cp d                                          ; $691d: $ba
    set 1, b                                      ; $691e: $cb $c8
    sbc a                                         ; $6920: $9f
    dec bc                                        ; $6921: $0b
    dec l                                         ; $6922: $2d
    cp $9d                                        ; $6923: $fe $9d
    add a                                         ; $6925: $87
    ld d, b                                       ; $6926: $50
    xor e                                         ; $6927: $ab
    rst $30                                       ; $6928: $f7
    ld a, h                                       ; $6929: $7c
    add hl, hl                                    ; $692a: $29
    ld e, $eb                                     ; $692b: $1e $eb
    dec d                                         ; $692d: $15
    inc b                                         ; $692e: $04
    cp l                                          ; $692f: $bd
    call nc, Call_000_201b                        ; $6930: $d4 $1b $20
    adc $dd                                       ; $6933: $ce $dd
    rst $30                                       ; $6935: $f7
    cp l                                          ; $6936: $bd
    inc sp                                        ; $6937: $33
    ld c, a                                       ; $6938: $4f
    and a                                         ; $6939: $a7
    db $ed                                        ; $693a: $ed
    call z, $6833                                 ; $693b: $cc $33 $68
    dec sp                                        ; $693e: $3b
    di                                            ; $693f: $f3
    call z, $befb                                 ; $6940: $cc $fb $be
    ld e, a                                       ; $6943: $5f
    sub a                                         ; $6944: $97
    db $eb                                        ; $6945: $eb
    adc e                                         ; $6946: $8b
    ld b, b                                       ; $6947: $40
    db $ed                                        ; $6948: $ed
    sub d                                         ; $6949: $92
    dec a                                         ; $694a: $3d
    ld d, b                                       ; $694b: $50
    add $d0                                       ; $694c: $c6 $d0
    rst $30                                       ; $694e: $f7
    ld a, c                                       ; $694f: $79
    ld c, h                                       ; $6950: $4c
    jp hl                                         ; $6951: $e9


    db $dd                                        ; $6952: $dd
    adc e                                         ; $6953: $8b
    ld b, d                                       ; $6954: $42
    ld a, [hl+]                                   ; $6955: $2a
    daa                                           ; $6956: $27
    ld l, e                                       ; $6957: $6b
    rst $18                                       ; $6958: $df
    ld [hl], l                                    ; $6959: $75
    sub h                                         ; $695a: $94
    ld e, h                                       ; $695b: $5c
    ld l, h                                       ; $695c: $6c
    jp hl                                         ; $695d: $e9


    ld d, b                                       ; $695e: $50
    ld b, $4a                                     ; $695f: $06 $4a
    ld a, c                                       ; $6961: $79
    sbc a                                         ; $6962: $9f
    rla                                           ; $6963: $17
    ld b, e                                       ; $6964: $43
    push af                                       ; $6965: $f5
    add sp, -$32                                  ; $6966: $e8 $ce
    sub c                                         ; $6968: $91
    adc $41                                       ; $6969: $ce $41
    or c                                          ; $696b: $b1
    ret nc                                        ; $696c: $d0

    ld d, $51                                     ; $696d: $16 $51
    ld [hl], e                                    ; $696f: $73
    ld [hl], h                                    ; $6970: $74
    sub a                                         ; $6971: $97
    add hl, sp                                    ; $6972: $39
    rla                                           ; $6973: $17
    ld d, c                                       ; $6974: $51
    ld [de], a                                    ; $6975: $12
    and c                                         ; $6976: $a1
    call c, $e72f                                 ; $6977: $dc $2f $e7
    ld e, e                                       ; $697a: $5b
    push af                                       ; $697b: $f5

jr_05f_697c:
    ld e, a                                       ; $697c: $5f
    sbc h                                         ; $697d: $9c
    or h                                          ; $697e: $b4
    pop de                                        ; $697f: $d1
    ld e, l                                       ; $6980: $5d
    ld b, [hl]                                    ; $6981: $46
    cp $5c                                        ; $6982: $fe $5c
    or e                                          ; $6984: $b3
    cp e                                          ; $6985: $bb
    inc h                                         ; $6986: $24
    and l                                         ; $6987: $a5
    ld e, $c7                                     ; $6988: $1e $c7
    and h                                         ; $698a: $a4
    ld e, e                                       ; $698b: $5b
    ld e, a                                       ; $698c: $5f
    xor a                                         ; $698d: $af
    cp [hl]                                       ; $698e: $be
    ld e, a                                       ; $698f: $5f
    rlca                                          ; $6990: $07
    ld e, h                                       ; $6991: $5c
    ld b, [hl]                                    ; $6992: $46
    cp $1c                                        ; $6993: $fe $1c
    jr z, jr_05f_697c                             ; $6995: $28 $e5

    ld sp, $18e0                                  ; $6997: $31 $e0 $18
    ld a, [$7caa]                                 ; $699a: $fa $aa $7c

jr_05f_699d:
    or l                                          ; $699d: $b5
    ld c, $c5                                     ; $699e: $0e $c5
    inc de                                        ; $69a0: $13
    db $fd                                        ; $69a1: $fd
    sbc $01                                       ; $69a2: $de $01
    sub a                                         ; $69a4: $97
    push bc                                       ; $69a5: $c5
    ld d, $76                                     ; $69a6: $16 $76
    xor [hl]                                      ; $69a8: $ae
    push de                                       ; $69a9: $d5
    sbc h                                         ; $69aa: $9c
    ld h, l                                       ; $69ab: $65
    ld sp, $8614                                  ; $69ac: $31 $14 $86
    ld [hl-], a                                   ; $69af: $32
    cp l                                          ; $69b0: $bd
    ld [hl], h                                    ; $69b1: $74
    rst $18                                       ; $69b2: $df
    cpl                                           ; $69b3: $2f
    db $ed                                        ; $69b4: $ed
    ld [hl], c                                    ; $69b5: $71
    ret z                                         ; $69b6: $c8

    jr z, jr_05f_699d                             ; $69b7: $28 $e4

    ld c, d                                       ; $69b9: $4a
    inc sp                                        ; $69ba: $33
    add a                                         ; $69bb: $87
    ld a, [$1752]                                 ; $69bc: $fa $52 $17
    db $e4                                        ; $69bf: $e4
    db $fd                                        ; $69c0: $fd
    ld l, [hl]                                    ; $69c1: $6e
    pop af                                        ; $69c2: $f1
    add hl, sp                                    ; $69c3: $39
    ld l, e                                       ; $69c4: $6b
    inc sp                                        ; $69c5: $33
    rst $08                                       ; $69c6: $cf
    add hl, sp                                    ; $69c7: $39
    ld d, b                                       ; $69c8: $50
    jp z, $a0ab                                   ; $69c9: $ca $ab $a0

    sub h                                         ; $69cc: $94
    sub e                                         ; $69cd: $93
    rst $28                                       ; $69ce: $ef
    rla                                           ; $69cf: $17
    rlca                                          ; $69d0: $07
    ld e, h                                       ; $69d1: $5c
    add $19                                       ; $69d2: $c6 $19
    adc h                                         ; $69d4: $8c
    and [hl]                                      ; $69d5: $a6
    db $ed                                        ; $69d6: $ed
    di                                            ; $69d7: $f3
    ld l, $4e                                     ; $69d8: $2e $4e
    ld l, b                                       ; $69da: $68

jr_05f_69db:
    sub c                                         ; $69db: $91

jr_05f_69dc:
    ld hl, $91a8                                  ; $69dc: $21 $a8 $91
    db $f4                                        ; $69df: $f4
    rst $18                                       ; $69e0: $df
    ld e, e                                       ; $69e1: $5b
    ld b, e                                       ; $69e2: $43
    jr z, jr_05f_69dc                             ; $69e3: $28 $f7

    ld c, $b8                                     ; $69e5: $0e $b8
    inc l                                         ; $69e7: $2c
    sbc e                                         ; $69e8: $9b
    add sp, $1c                                   ; $69e9: $e8 $1c
    ld b, d                                       ; $69eb: $42
    add hl, de                                    ; $69ec: $19
    ld b, e                                       ; $69ed: $43
    rst $18                                       ; $69ee: $df
    rst $20                                       ; $69ef: $e7
    ld b, l                                       ; $69f0: $45
    jr nz, jr_05f_69db                            ; $69f1: $20 $e8

    sub c                                         ; $69f3: $91
    rst $38                                       ; $69f4: $ff
    cp c                                          ; $69f5: $b9
    ld e, a                                       ; $69f6: $5f
    sub a                                         ; $69f7: $97
    scf                                           ; $69f8: $37
    ld l, c                                       ; $69f9: $69
    ld b, e                                       ; $69fa: $43
    rst $20                                       ; $69fb: $e7
    sbc h                                         ; $69fc: $9c
    ld b, e                                       ; $69fd: $43
    db $fd                                        ; $69fe: $fd
    ld e, [hl]                                    ; $69ff: $5e
    sbc e                                         ; $6a00: $9b
    cp [hl]                                       ; $6a01: $be
    add [hl]                                      ; $6a02: $86
    sbc [hl]                                      ; $6a03: $9e
    add sp, -$7f                                  ; $6a04: $e8 $81
    ld a, [hl-]                                   ; $6a06: $3a
    ld [hl], d                                    ; $6a07: $72
    push af                                       ; $6a08: $f5
    dec hl                                        ; $6a09: $2b
    push hl                                       ; $6a0a: $e5
    db $fd                                        ; $6a0b: $fd
    jp nz, Jump_000_1d4e                          ; $6a0c: $c2 $4e $1d

    rst $10                                       ; $6a0f: $d7
    ld l, d                                       ; $6a10: $6a
    ld c, $2d                                     ; $6a11: $0e $2d
    ld a, e                                       ; $6a13: $7b
    sbc d                                         ; $6a14: $9a
    add sp, -$05                                  ; $6a15: $e8 $fb
    dec b                                         ; $6a17: $05
    rlca                                          ; $6a18: $07
    ld e, h                                       ; $6a19: $5c
    ld b, [hl]                                    ; $6a1a: $46
    cp $5c                                        ; $6a1b: $fe $5c
    scf                                           ; $6a1d: $37
    ld a, [c]                                     ; $6a1e: $f2
    inc e                                         ; $6a1f: $1c
    or c                                          ; $6a20: $b1
    ld [hl], e                                    ; $6a21: $73
    ld [$2165], sp                                ; $6a22: $08 $65 $21
    halt                                          ; $6a25: $76
    cp $ce                                        ; $6a26: $fe $ce
    jp c, Jump_000_075f                           ; $6a28: $da $5f $07

    dec l                                         ; $6a2b: $2d
    and e                                         ; $6a2c: $a3
    cp e                                          ; $6a2d: $bb
    adc h                                         ; $6a2e: $8c
    db $fc                                        ; $6a2f: $fc
    cp c                                          ; $6a30: $b9
    jp c, Jump_000_03cd                           ; $6a31: $da $cd $03

    ld [hl], l                                    ; $6a34: $75
    db $e4                                        ; $6a35: $e4
    ld h, d                                       ; $6a36: $62
    ld c, d                                       ; $6a37: $4a
    sbc d                                         ; $6a38: $9a
    rla                                           ; $6a39: $17
    ld h, d                                       ; $6a3a: $62
    rst $20                                       ; $6a3b: $e7
    rst $28                                       ; $6a3c: $ef
    ld a, h                                       ; $6a3d: $7c
    rst $28                                       ; $6a3e: $ef
    add b                                         ; $6a3f: $80
    sra d                                         ; $6a40: $cb $2a
    rlca                                          ; $6a42: $07
    ld e, h                                       ; $6a43: $5c
    add a                                         ; $6a44: $87
    ld [c], a                                     ; $6a45: $e2
    sub c                                         ; $6a46: $91
    adc $c5                                       ; $6a47: $ce $c5
    add $21                                       ; $6a49: $c6 $21
    ret z                                         ; $6a4b: $c8

    ld a, [de]                                    ; $6a4c: $1a
    ld b, c                                       ; $6a4d: $41
    push de                                       ; $6a4e: $d5
    ei                                            ; $6a4f: $fb
    cp [hl]                                       ; $6a50: $be
    ld e, a                                       ; $6a51: $5f
    ld l, l                                       ; $6a52: $6d
    and $91                                       ; $6a53: $e6 $91
    adc $dd                                       ; $6a55: $ce $dd
    rst $30                                       ; $6a57: $f7
    dec a                                         ; $6a58: $3d
    rst $20                                       ; $6a59: $e7
    ld a, [hl]                                    ; $6a5a: $7e
    rst $20                                       ; $6a5b: $e7
    and c                                         ; $6a5c: $a1
    ld a, c                                       ; $6a5d: $79
    rrca                                          ; $6a5e: $0f
    ldh a, [$39]                                  ; $6a5f: $f0 $39
    cpl                                           ; $6a61: $2f
    rlca                                          ; $6a62: $07
    cp $bd                                        ; $6a63: $fe $bd
    db $eb                                        ; $6a65: $eb
    ld h, b                                       ; $6a66: $60
    db $fc                                        ; $6a67: $fc
    adc a                                         ; $6a68: $8f
    call z, Call_05f_79a1                         ; $6a69: $cc $a1 $79
    dec c                                         ; $6a6c: $0d
    ld [hl], a                                    ; $6a6d: $77
    ld l, d                                       ; $6a6e: $6a
    ld h, e                                       ; $6a6f: $63
    or b                                          ; $6a70: $b0
    ld b, e                                       ; $6a71: $43
    call nc, Call_05f_571e                        ; $6a72: $d4 $1e $57
    sub a                                         ; $6a75: $97
    cp [hl]                                       ; $6a76: $be
    ei                                            ; $6a77: $fb
    cp [hl]                                       ; $6a78: $be
    add a                                         ; $6a79: $87
    and $23                                       ; $6a7a: $e6 $23
    rst $00                                       ; $6a7c: $c7
    add hl, de                                    ; $6a7d: $19
    ld a, [hl-]                                   ; $6a7e: $3a
    ld a, $5f                                     ; $6a7f: $3e $5f
    or b                                          ; $6a81: $b0
    or [hl]                                       ; $6a82: $b6
    inc l                                         ; $6a83: $2c
    push bc                                       ; $6a84: $c5
    cp e                                          ; $6a85: $bb
    rst $28                                       ; $6a86: $ef
    ld a, e                                       ; $6a87: $7b
    dec [hl]                                      ; $6a88: $35
    inc a                                         ; $6a89: $3c
    adc e                                         ; $6a8a: $8b
    ld h, c                                       ; $6a8b: $61
    ld d, l                                       ; $6a8c: $55
    db $fd                                        ; $6a8d: $fd
    inc hl                                        ; $6a8e: $23
    rst $10                                       ; $6a8f: $d7
    ld c, b                                       ; $6a90: $48
    cp l                                          ; $6a91: $bd
    ld a, b                                       ; $6a92: $78
    inc c                                         ; $6a93: $0c
    ld a, l                                       ; $6a94: $7d
    ld [$aabc], sp                                ; $6a95: $08 $bc $aa
    ld b, d                                       ; $6a98: $42
    or a                                          ; $6a99: $b7
    adc [hl]                                      ; $6a9a: $8e
    sub l                                         ; $6a9b: $95
    dec [hl]                                      ; $6a9c: $35
    ld a, c                                       ; $6a9d: $79
    cp a                                          ; $6a9e: $bf
    add a                                         ; $6a9f: $87
    call nc, $8bef                                ; $6aa0: $d4 $ef $8b
    ld h, c                                       ; $6aa3: $61
    ld d, c                                       ; $6aa4: $51
    ld c, b                                       ; $6aa5: $48
    xor [hl]                                      ; $6aa6: $ae
    inc d                                         ; $6aa7: $14
    ld h, [hl]                                    ; $6aa8: $66
    adc a                                         ; $6aa9: $8f
    and c                                         ; $6aaa: $a1
    rrca                                          ; $6aab: $0f
    dec l                                         ; $6aac: $2d
    inc de                                        ; $6aad: $13
    ld c, d                                       ; $6aae: $4a
    ld h, l                                       ; $6aaf: $65
    xor a                                         ; $6ab0: $af
    ld de, $9d54                                  ; $6ab1: $11 $54 $9d
    add sp, -$4c                                  ; $6ab4: $e8 $b4
    sub c                                         ; $6ab6: $91
    ld a, c                                       ; $6ab7: $79
    sbc a                                         ; $6ab8: $9f
    di                                            ; $6ab9: $f3
    ld [bc], a                                    ; $6aba: $02
    rlca                                          ; $6abb: $07
    ld a, $6d                                     ; $6abc: $3e $6d
    ld sp, $69ec                                  ; $6abe: $31 $ec $69
    adc [hl]                                      ; $6ac1: $8e
    ld [hl], h                                    ; $6ac2: $74
    rst $28                                       ; $6ac3: $ef
    ld c, [hl]                                    ; $6ac4: $4e
    xor a                                         ; $6ac5: $af
    ld a, [hl+]                                   ; $6ac6: $2a
    adc l                                         ; $6ac7: $8d
    and b                                         ; $6ac8: $a0
    rla                                           ; $6ac9: $17
    ld [$f6bd], a                                 ; $6aca: $ea $bd $f6
    sbc a                                         ; $6acd: $9f
    xor c                                         ; $6ace: $a9
    add hl, de                                    ; $6acf: $19
    jp hl                                         ; $6ad0: $e9


    sbc h                                         ; $6ad1: $9c
    ld [hl], e                                    ; $6ad2: $73
    ld [$b5e2], sp                                ; $6ad3: $08 $e2 $b5
    inc l                                         ; $6ad6: $2c

Call_05f_6ad7:
    push bc                                       ; $6ad7: $c5
    dec bc                                        ; $6ad8: $0b
    ld h, l                                       ; $6ad9: $65
    dec e                                         ; $6ada: $1d
    ld a, [hl+]                                   ; $6adb: $2a
    ld e, e                                       ; $6adc: $5b
    ld d, $62                                     ; $6add: $16 $62
    rst $20                                       ; $6adf: $e7
    ret z                                         ; $6ae0: $c8

    ld hl, sp-$1d                                 ; $6ae1: $f8 $e3
    ld d, b                                       ; $6ae3: $50
    ld e, a                                       ; $6ae4: $5f
    ld d, l                                       ; $6ae5: $55
    rst $38                                       ; $6ae6: $ff
    ret z                                         ; $6ae7: $c8

    dec [hl]                                      ; $6ae8: $35
    ld d, d                                       ; $6ae9: $52
    cpl                                           ; $6aea: $2f
    cp [hl]                                       ; $6aeb: $be
    ld [hl], a                                    ; $6aec: $77
    add hl, hl                                    ; $6aed: $29
    or l                                          ; $6aee: $b5
    or c                                          ; $6aef: $b1
    rst $18                                       ; $6af0: $df
    ld a, c                                       ; $6af1: $79
    xor l                                         ; $6af2: $ad
    and $3a                                       ; $6af3: $e6 $3a
    ld d, h                                       ; $6af5: $54
    or [hl]                                       ; $6af6: $b6
    call c, $e03b                                 ; $6af7: $dc $3b $e0
    or d                                          ; $6afa: $b2
    xor d                                         ; $6afb: $aa
    cp $91                                        ; $6afc: $fe $91
    inc hl                                        ; $6afe: $23
    dec l                                         ; $6aff: $2d
    db $ec                                        ; $6b00: $ec
    or l                                          ; $6b01: $b5
    jp hl                                         ; $6b02: $e9


    rst $00                                       ; $6b03: $c7
    ld e, l                                       ; $6b04: $5d
    ld h, a                                       ; $6b05: $67
    inc a                                         ; $6b06: $3c
    xor [hl]                                      ; $6b07: $ae
    dec a                                         ; $6b08: $3d
    cp $78                                        ; $6b09: $fe $78
    rst $28                                       ; $6b0b: $ef
    db $fc                                        ; $6b0c: $fc
    ld e, a                                       ; $6b0d: $5f
    inc e                                         ; $6b0e: $1c
    or c                                          ; $6b0f: $b1
    ld [hl], e                                    ; $6b10: $73
    rrca                                          ; $6b11: $0f
    dec d                                         ; $6b12: $15
    ld e, l                                       ; $6b13: $5d
    rla                                           ; $6b14: $17
    jp $f474                                      ; $6b15: $c3 $74 $f4


    and d                                         ; $6b18: $a2
    sub b                                         ; $6b19: $90
    ld e, a                                       ; $6b1a: $5f
    halt                                          ; $6b1b: $76
    ld [hl], c                                    ; $6b1c: $71
    add d                                         ; $6b1d: $82
    sub h                                         ; $6b1e: $94
    ret nz                                        ; $6b1f: $c0

    ld e, h                                       ; $6b20: $5c
    rst $28                                       ; $6b21: $ef
    rla                                           ; $6b22: $17
    db $ed                                        ; $6b23: $ed
    pop af                                        ; $6b24: $f1
    rst $00                                       ; $6b25: $c7
    add hl, sp                                    ; $6b26: $39
    rst $10                                       ; $6b27: $d7
    and [hl]                                      ; $6b28: $a6
    rra                                           ; $6b29: $1f
    ld [hl], a                                    ; $6b2a: $77
    sbc l                                         ; $6b2b: $9d
    pop af                                        ; $6b2c: $f1
    cp b                                          ; $6b2d: $b8
    or $f8                                        ; $6b2e: $f6 $f8
    db $e3                                        ; $6b30: $e3
    add hl, sp                                    ; $6b31: $39
    cpl                                           ; $6b32: $2f
    ld l, l                                       ; $6b33: $6d
    and $a9                                       ; $6b34: $e6 $a9
    cpl                                           ; $6b36: $2f
    and e                                         ; $6b37: $a3
    cp e                                          ; $6b38: $bb
    inc c                                         ; $6b39: $0c
    call nc, $8b91                                ; $6b3a: $d4 $91 $8b
    ld b, d                                       ; $6b3d: $42
    ld [hl-], a                                   ; $6b3e: $32
    and l                                         ; $6b3f: $a5
    ld [hl], a                                    ; $6b40: $77
    rrca                                          ; $6b41: $0f
    and c                                         ; $6b42: $a1
    call c, Call_000_0f6b                         ; $6b43: $dc $6b $0f
    add l                                         ; $6b46: $85
    ret c                                         ; $6b47: $d8

jr_05f_6b48:
    ld c, a                                       ; $6b48: $4f
    xor [hl]                                      ; $6b49: $ae
    ei                                            ; $6b4a: $fb
    ld d, c                                       ; $6b4b: $51
    ld b, h                                       ; $6b4c: $44
    ld c, c                                       ; $6b4d: $49
    rst $20                                       ; $6b4e: $e7
    cp l                                          ; $6b4f: $bd
    db $eb                                        ; $6b50: $eb
    ld h, b                                       ; $6b51: $60
    push de                                       ; $6b52: $d5
    ld [hl], l                                    ; $6b53: $75
    ld a, [hl-]                                   ; $6b54: $3a
    ld e, d                                       ; $6b55: $5a
    and d                                         ; $6b56: $a2
    sub b                                         ; $6b57: $90
    or h                                          ; $6b58: $b4
    or l                                          ; $6b59: $b5
    rst $38                                       ; $6b5a: $ff
    ld c, h                                       ; $6b5b: $4c
    call Call_000_02fd                            ; $6b5c: $cd $fd $02
    rst $10                                       ; $6b5f: $d7
    ld a, h                                       ; $6b60: $7c
    or l                                          ; $6b61: $b5
    jr z, jr_05f_6b48                             ; $6b62: $28 $e4

    ld a, [de]                                    ; $6b64: $1a
    xor [hl]                                      ; $6b65: $ae
    call nc, $be62                                ; $6b66: $d4 $62 $be
    ld e, a                                       ; $6b69: $5f
    sub a                                         ; $6b6a: $97
    add [hl]                                      ; $6b6b: $86
    ld h, a                                       ; $6b6c: $67
    ld d, l                                       ; $6b6d: $55
    ld a, [hl]                                    ; $6b6e: $7e
    ld a, [c]                                     ; $6b6f: $f2
    and b                                         ; $6b70: $a0
    ld e, b                                       ; $6b71: $58
    xor $17                                       ; $6b72: $ee $17
    ld l, l                                       ; $6b74: $6d
    call nc, $ccb4                                ; $6b75: $d4 $b4 $cc
    add hl, sp                                    ; $6b78: $39
    or h                                          ; $6b79: $b4
    inc l                                         ; $6b7a: $2c
    ld [hl], $9d                                  ; $6b7b: $36 $9d
    ld [hl], $32                                  ; $6b7d: $36 $32
    rst $28                                       ; $6b7f: $ef
    rla                                           ; $6b80: $17
    rst $10                                       ; $6b81: $d7
    pop bc                                        ; $6b82: $c1
    xor d                                         ; $6b83: $aa
    ld a, [$627d]                                 ; $6b84: $fa $7d $62
    ld c, $ad                                     ; $6b87: $0e $ad
    ld sp, $7df4                                  ; $6b89: $31 $f4 $7d
    ld e, $19                                     ; $6b8c: $1e $19
    ld a, [hl-]                                   ; $6b8e: $3a
    ld a, d                                       ; $6b8f: $7a
    ld d, c                                       ; $6b90: $51
    ld b, $15                                     ; $6b91: $06 $15
    ld a, [hl+]                                   ; $6b93: $2a
    ld [hl], a                                    ; $6b94: $77

jr_05f_6b95:
    ld e, l                                       ; $6b95: $5d
    add hl, hl                                    ; $6b96: $29
    inc sp                                        ; $6b97: $33
    ld l, l                                       ; $6b98: $6d

jr_05f_6b99:
    ld h, h                                       ; $6b99: $64
    sbc $da                                       ; $6b9a: $de $da
    ld [hl], a                                    ; $6b9c: $77
    ret nz                                        ; $6b9d: $c0

    ld h, l                                       ; $6b9e: $65
    sbc h                                         ; $6b9f: $9c
    ld hl, $4a07                                  ; $6ba0: $21 $07 $4a
    sbc c                                         ; $6ba3: $99
    or [hl]                                       ; $6ba4: $b6
    rst $08                                       ; $6ba5: $cf
    ld b, e                                       ; $6ba6: $43
    ld a, l                                       ; $6ba7: $7d
    db $e4                                        ; $6ba8: $e4
    rst $08                                       ; $6ba9: $cf
    ld [hl], l                                    ; $6baa: $75
    ld c, l                                       ; $6bab: $4d
    push hl                                       ; $6bac: $e5
    ld sp, $7df4                                  ; $6bad: $31 $f4 $7d
    ld e, [hl]                                    ; $6bb0: $5e
    push af                                       ; $6bb1: $f5
    ld b, d                                       ; $6bb2: $42
    ld e, l                                       ; $6bb3: $5d
    ld l, l                                       ; $6bb4: $6d
    ld b, c                                       ; $6bb5: $41
    push af                                       ; $6bb6: $f5
    db $fd                                        ; $6bb7: $fd
    ld [bc], a                                    ; $6bb8: $02
    rst $10                                       ; $6bb9: $d7
    ld a, h                                       ; $6bba: $7c
    or l                                          ; $6bbb: $b5
    jr z, @-$1a                                   ; $6bbc: $28 $e4

    jr jr_05f_6c3a                                ; $6bbe: $18 $7a

    rlca                                          ; $6bc0: $07
    or h                                          ; $6bc1: $b4
    adc h                                         ; $6bc2: $8c
    and c                                         ; $6bc3: $a1
    rst $28                                       ; $6bc4: $ef
    ld [c], a                                     ; $6bc5: $e2
    inc b                                         ; $6bc6: $04
    add hl, hl                                    ; $6bc7: $29
    add c                                         ; $6bc8: $81
    cp c                                          ; $6bc9: $b9
    ld [hl], $be                                  ; $6bca: $36 $be
    jr z, jr_05f_6b99                             ; $6bcc: $28 $cb

    db $fd                                        ; $6bce: $fd
    ld [bc], a                                    ; $6bcf: $02
    ld d, a                                       ; $6bd0: $57
    ld e, h                                       ; $6bd1: $5c
    ld a, d                                       ; $6bd2: $7a
    cp a                                          ; $6bd3: $bf
    db $ed                                        ; $6bd4: $ed
    and [hl]                                      ; $6bd5: $a6
    rst $18                                       ; $6bd6: $df
    cpl                                           ; $6bd7: $2f
    rst $10                                       ; $6bd8: $d7
    ld a, h                                       ; $6bd9: $7c
    ld [hl], l                                    ; $6bda: $75
    cp a                                          ; $6bdb: $bf
    rst $20                                       ; $6bdc: $e7
    db $eb                                        ; $6bdd: $eb
    inc c                                         ; $6bde: $0c
    ld c, d                                       ; $6bdf: $4a
    add hl, sp                                    ; $6be0: $39
    push bc                                       ; $6be1: $c5
    ld d, e                                       ; $6be2: $53
    call nc, Call_05f_7386                        ; $6be3: $d4 $86 $73
    push bc                                       ; $6be6: $c5
    add hl, hl                                    ; $6be7: $29
    ld e, $82                                     ; $6be8: $1e $82
    ld a, b                                       ; $6bea: $78
    jr nz, jr_05f_6b95                            ; $6beb: $20 $a8

    xor b                                         ; $6bed: $a8
    adc l                                         ; $6bee: $8d
    ld sp, $c6f4                                  ; $6bef: $31 $f4 $c6
    cpl                                           ; $6bf2: $2f
    sbc $7d                                       ; $6bf3: $de $7d
    rst $18                                       ; $6bf5: $df
    ld h, e                                       ; $6bf6: $63
    add sp, -$15                                  ; $6bf7: $e8 $eb
    ccf                                           ; $6bf9: $3f
    halt                                          ; $6bfa: $76
    ld a, d                                       ; $6bfb: $7a
    xor l                                         ; $6bfc: $ad
    add h                                         ; $6bfd: $84
    ld [$4da4], a                                 ; $6bfe: $ea $a4 $4d
    ld a, $eb                                     ; $6c01: $3e $eb
    reti                                          ; $6c03: $d9


    and c                                         ; $6c04: $a1
    call nz, $ef50                                ; $6c05: $c4 $50 $ef
    rla                                           ; $6c08: $17
    ld l, l                                       ; $6c09: $6d
    ld a, [$a39c]                                 ; $6c0a: $fa $9c $a3
    add a                                         ; $6c0d: $87
    sub c                                         ; $6c0e: $91
    rst $38                                       ; $6c0f: $ff
    pop de                                        ; $6c10: $d1
    cp [hl]                                       ; $6c11: $be
    inc bc                                        ; $6c12: $03
    ld l, $7b                                     ; $6c13: $2e $7b
    inc l                                         ; $6c15: $2c
    ld c, [hl]                                    ; $6c16: $4e
    jp c, $9f50                                   ; $6c17: $da $50 $9f

    ld [hl], e                                    ; $6c1a: $73
    ld [$fb45], sp                                ; $6c1b: $08 $45 $fb
    ld c, $b8                                     ; $6c1e: $0e $b8
    db $ec                                        ; $6c20: $ec
    or c                                          ; $6c21: $b1
    jr c, jr_05f_6c8d                             ; $6c22: $38 $69

    ld b, e                                       ; $6c24: $43
    ld a, l                                       ; $6c25: $7d
    adc $b5                                       ; $6c26: $ce $b5
    rst $38                                       ; $6c28: $ff
    ld c, h                                       ; $6c29: $4c
    call Call_000_0cae                            ; $6c2a: $cd $ae $0c
    call z, $ed4e                                 ; $6c2d: $cc $4e $ed
    cpl                                           ; $6c30: $2f
    ld d, a                                       ; $6c31: $57
    cp $ba                                        ; $6c32: $fe $ba
    ld d, [hl]                                    ; $6c34: $56
    ld [hl], e                                    ; $6c35: $73
    dec d                                         ; $6c36: $15
    ret nc                                        ; $6c37: $d0

    ld b, l                                       ; $6c38: $45
    add e                                         ; $6c39: $83

jr_05f_6c3a:
    ld c, [hl]                                    ; $6c3a: $4e
    pop af                                        ; $6c3b: $f1
    xor $fb                                       ; $6c3c: $ee $fb
    ld e, $3a                                     ; $6c3e: $1e $3a
    rst $10                                       ; $6c40: $d7
    ld [$0939], sp                                ; $6c41: $08 $39 $09
    and l                                         ; $6c44: $a5
    ld a, e                                       ; $6c45: $7b
    sub l                                         ; $6c46: $95
    ld b, e                                       ; $6c47: $43
    ld a, d                                       ; $6c48: $7a
    add hl, de                                    ; $6c49: $19
    sbc b                                         ; $6c4a: $98
    sbc l                                         ; $6c4b: $9d
    add e                                         ; $6c4c: $83
    and c                                         ; $6c4d: $a1
    sbc a                                         ; $6c4e: $9f
    ei                                            ; $6c4f: $fb
    dec b                                         ; $6c50: $05
    rla                                           ; $6c51: $17
    ld [hl], l                                    ; $6c52: $75
    ld c, l                                       ; $6c53: $4d
    pop hl                                        ; $6c54: $e1
    add c                                         ; $6c55: $81
    ld d, d                                       ; $6c56: $52
    ld e, [hl]                                    ; $6c57: $5e
    sub h                                         ; $6c58: $94
    ld a, a                                       ; $6c59: $7f
    ld d, $32                                     ; $6c5a: $16 $32
    halt                                          ; $6c5c: $76
    xor [hl]                                      ; $6c5d: $ae
    xor d                                         ; $6c5e: $aa
    rst $18                                       ; $6c5f: $df
    db $10                                        ; $6c60: $10
    sub b                                         ; $6c61: $90
    ld [hl-], a                                   ; $6c62: $32
    call nc, Call_05f_50f7                        ; $6c63: $d4 $f7 $50
    pop de                                        ; $6c66: $d1
    ld a, c                                       ; $6c67: $79
    xor a                                         ; $6c68: $af
    ld c, l                                       ; $6c69: $4d
    sbc a                                         ; $6c6a: $9f
    ld a, [$5032]                                 ; $6c6b: $fa $32 $50
    jp z, $b86b                                   ; $6c6e: $ca $6b $b8

    sbc d                                         ; $6c71: $9a
    sbc [hl]                                      ; $6c72: $9e
    ld e, [hl]                                    ; $6c73: $5e
    ld h, l                                       ; $6c74: $65
    ld c, d                                       ; $6c75: $4a
    ld a, [hl+]                                   ; $6c76: $2a
    and a                                         ; $6c77: $a7
    ld d, a                                       ; $6c78: $57
    push de                                       ; $6c79: $d5
    ld l, a                                       ; $6c7a: $6f
    ld [$7148], sp                                ; $6c7b: $08 $48 $71
    xor [hl]                                      ; $6c7e: $ae
    ld [bc], a                                    ; $6c7f: $02
    ld e, d                                       ; $6c80: $5a
    ld c, b                                       ; $6c81: $48
    dec bc                                        ; $6c82: $0b
    ld l, l                                       ; $6c83: $6d
    ld h, h                                       ; $6c84: $64
    inc c                                         ; $6c85: $0c
    ld [hl], l                                    ; $6c86: $75
    and b                                         ; $6c87: $a0
    sub h                                         ; $6c88: $94
    add a                                         ; $6c89: $87
    ld a, [$ae1a]                                 ; $6c8a: $fa $1a $ae

jr_05f_6c8d:
    and [hl]                                      ; $6c8d: $a6
    and a                                         ; $6c8e: $a7
    ld [hl], e                                    ; $6c8f: $73
    dec [hl]                                      ; $6c90: $35
    cp $c5                                        ; $6c91: $fe $c5
    jp hl                                         ; $6c93: $e9


    ld d, l                                       ; $6c94: $55
    push af                                       ; $6c95: $f5
    dec de                                        ; $6c96: $1b
    ld [bc], a                                    ; $6c97: $02
    ld d, d                                       ; $6c98: $52
    sbc h                                         ; $6c99: $9c
    inc de                                        ; $6c9a: $13
    db $fd                                        ; $6c9b: $fd
    ld a, [hl]                                    ; $6c9c: $7e
    ld bc, $f06d                                  ; $6c9d: $01 $6d $f0
    ld c, e                                       ; $6ca0: $4b
    sub b                                         ; $6ca1: $90
    rst $18                                       ; $6ca2: $df
    dec hl                                        ; $6ca3: $2b
    daa                                           ; $6ca4: $27
    dec b                                         ; $6ca5: $05
    dec a                                         ; $6ca6: $3d
    rst $20                                       ; $6ca7: $e7
    ld [hl+], a                                   ; $6ca8: $22
    cp l                                          ; $6ca9: $bd
    db $e3                                        ; $6caa: $e3
    ld a, [hl]                                    ; $6cab: $7e
    or h                                          ; $6cac: $b4
    ld [de], a                                    ; $6cad: $12
    ret nc                                        ; $6cae: $d0

    ld h, e                                       ; $6caf: $63
    add sp, $0d                                   ; $6cb0: $e8 $0d
    dec e                                         ; $6cb2: $1d
    ld [hl], a                                    ; $6cb3: $77
    rst $18                                       ; $6cb4: $df
    rst $30                                       ; $6cb5: $f7
    sbc [hl]                                      ; $6cb6: $9e
    cpl                                           ; $6cb7: $2f
    ld d, e                                       ; $6cb8: $53
    pop hl                                        ; $6cb9: $e1
    ld a, c                                       ; $6cba: $79
    sbc h                                         ; $6cbb: $9c
    db $eb                                        ; $6cbc: $eb
    and $31                                       ; $6cbd: $e6 $31
    db $f4                                        ; $6cbf: $f4
    ld a, l                                       ; $6cc0: $7d
    ld e, [hl]                                    ; $6cc1: $5e
    inc hl                                        ; $6cc2: $23

jr_05f_6cc3:
    push af                                       ; $6cc3: $f5
    ld [c], a                                     ; $6cc4: $e2
    ld b, l                                       ; $6cc5: $45
    ld hl, $7cf7                                  ; $6cc6: $21 $f7 $7c
    add hl, hl                                    ; $6cc9: $29
    ld e, [hl]                                    ; $6cca: $5e
    bit 2, d                                      ; $6ccb: $cb $52
    ld a, h                                       ; $6ccd: $7c
    cp a                                          ; $6cce: $bf
    ld d, a                                       ; $6ccf: $57
    call nz, $18ce                                ; $6cd0: $c4 $ce $18
    inc b                                         ; $6cd3: $04
    ld d, a                                       ; $6cd4: $57
    sbc a                                         ; $6cd5: $9f
    and $9e                                       ; $6cd6: $e6 $9e
    jr nz, @-$69                                  ; $6cd8: $20 $95

    db $d3                                        ; $6cda: $d3
    inc de                                        ; $6cdb: $13
    ld a, l                                       ; $6cdc: $7d
    and c                                         ; $6cdd: $a1
    xor h                                         ; $6cde: $ac
    ld [hl], $17                                  ; $6cdf: $36 $17
    ld b, e                                       ; $6ce1: $43
    rra                                           ; $6ce2: $1f
    ld [$298b], a                                 ; $6ce3: $ea $8b $29
    jp hl                                         ; $6ce6: $e9


    pop bc                                        ; $6ce7: $c1
    ld a, [hl+]                                   ; $6ce8: $2a
    ld a, a                                       ; $6ce9: $7f
    pop bc                                        ; $6cea: $c1
    ld sp, $7df4                                  ; $6ceb: $31 $f4 $7d
    ld e, [hl]                                    ; $6cee: $5e
    adc b                                         ; $6cef: $88
    sbc l                                         ; $6cf0: $9d
    ld sp, $7a08                                  ; $6cf1: $31 $08 $7a
    sub l                                         ; $6cf4: $95
    add hl, hl                                    ; $6cf5: $29
    xor c                                         ; $6cf6: $a9
    sbc h                                         ; $6cf7: $9c
    sbc $13                                       ; $6cf8: $de $13
    and h                                         ; $6cfa: $a4
    ld [hl], d                                    ; $6cfb: $72
    ld a, d                                       ; $6cfc: $7a
    dec d                                         ; $6cfd: $15
    ret nc                                        ; $6cfe: $d0

jr_05f_6cff:
    ld b, d                                       ; $6cff: $42
    ld e, d                                       ; $6d00: $5a
    xor $17                                       ; $6d01: $ee $17
    db $ed                                        ; $6d03: $ed
    ld sp, $a1d4                                  ; $6d04: $31 $d4 $a1
    cp [hl]                                       ; $6d07: $be
    jp z, Jump_05f_7454                           ; $6d08: $ca $54 $74

    ld c, $41                                     ; $6d0b: $0e $41
    add $cd                                       ; $6d0d: $c6 $cd
    cp c                                          ; $6d0f: $b9
    ld [hl], a                                    ; $6d10: $77
    rst $20                                       ; $6d11: $e7
    ret z                                         ; $6d12: $c8

    jr jr_05f_6cff                                ; $6d13: $18 $ea

    ld d, b                                       ; $6d15: $50
    ld e, a                                       ; $6d16: $5f
    and e                                         ; $6d17: $a3
    ld b, e                                       ; $6d18: $43
    db $ec                                        ; $6d19: $ec
    call c, $9297                                 ; $6d1a: $dc $97 $92
    ld l, [hl]                                    ; $6d1d: $6e
    sbc b                                         ; $6d1e: $98
    rst $30                                       ; $6d1f: $f7
    and e                                         ; $6d20: $a3
    ld e, c                                       ; $6d21: $59
    ld d, [hl]                                    ; $6d22: $56
    add hl, sp                                    ; $6d23: $39
    db $e4                                        ; $6d24: $e4
    ld [hl-], a                                   ; $6d25: $32
    jr nc, jr_05f_6cc3                            ; $6d26: $30 $9b

    or [hl]                                       ; $6d28: $b6
    jp c, $c35c                                   ; $6d29: $da $5c $c3

    sub l                                         ; $6d2c: $95
    ld e, d                                       ; $6d2d: $5a
    ld b, [hl]                                    ; $6d2e: $46
    ld a, [$a777]                                 ; $6d2f: $fa $77 $a7
    push hl                                       ; $6d32: $e5
    ld a, [hl]                                    ; $6d33: $7e
    ld bc, $e66d                                  ; $6d34: $01 $6d $e6
    dec [hl]                                      ; $6d37: $35
    adc h                                         ; $6d38: $8c
    sub l                                         ; $6d39: $95
    cp l                                          ; $6d3a: $bd
    ret c                                         ; $6d3b: $d8

    cp b                                          ; $6d3c: $b8
    add [hl]                                      ; $6d3d: $86
    adc $a0                                       ; $6d3e: $ce $a0
    ld a, [hl+]                                   ; $6d40: $2a
    ld [$fc9a], sp                                ; $6d41: $08 $9a $fc
    or c                                          ; $6d44: $b1
    ld d, e                                       ; $6d45: $53
    inc a                                         ; $6d46: $3c
    jp nc, Jump_000_2739                          ; $6d47: $d2 $39 $27

    ld l, l                                       ; $6d4a: $6d
    sbc a                                         ; $6d4b: $9f
    add a                                         ; $6d4c: $87
    sbc $ef                                       ; $6d4d: $de $ef
    db $dd                                        ; $6d4f: $dd
    ld [hl], e                                    ; $6d50: $73
    adc [hl]                                      ; $6d51: $8e
    sub d                                         ; $6d52: $92
    dec e                                         ; $6d53: $1d
    adc d                                         ; $6d54: $8a
    rst $28                                       ; $6d55: $ef
    rla                                           ; $6d56: $17
    db $ed                                        ; $6d57: $ed
    ccf                                           ; $6d58: $3f
    add a                                         ; $6d59: $87
    ld a, [$5d22]                                 ; $6d5a: $fa $22 $5d
    ret nc                                        ; $6d5d: $d0

    inc a                                         ; $6d5e: $3c

Jump_05f_6d5f:
    add hl, bc                                    ; $6d5f: $09
    and l                                         ; $6d60: $a5
    ld a, e                                       ; $6d61: $7b
    ld d, l                                       ; $6d62: $55
    pop de                                        ; $6d63: $d1
    push af                                       ; $6d64: $f5
    adc $1e                                       ; $6d65: $ce $1e
    add e                                         ; $6d67: $83
    sub h                                         ; $6d68: $94
    ld e, c                                       ; $6d69: $59
    ld d, b                                       ; $6d6a: $50
    db $f4                                        ; $6d6b: $f4
    ld [hl], e                                    ; $6d6c: $73
    sub $e6                                       ; $6d6d: $d6 $e6
    ld e, h                                       ; $6d6f: $5c
    inc b                                         ; $6d70: $04
    add d                                         ; $6d71: $82
    xor [hl]                                      ; $6d72: $ae
    ld a, e                                       ; $6d73: $7b
    ld a, [hl]                                    ; $6d74: $7e
    xor l                                         ; $6d75: $ad
    adc $85                                       ; $6d76: $ce $85
    ret c                                         ; $6d78: $d8

    ld sp, hl                                     ; $6d79: $f9
    dec sp                                        ; $6d7a: $3b
    rst $18                                       ; $6d7b: $df
    dec sp                                        ; $6d7c: $3b
    ldh a, [rBCPD]                                ; $6d7d: $f0 $69
    and e                                         ; $6d7f: $a3
    cp e                                          ; $6d80: $bb
    adc h                                         ; $6d81: $8c
    xor c                                         ; $6d82: $a9
    add hl, sp                                    ; $6d83: $39
    db $fc                                        ; $6d84: $fc
    adc e                                         ; $6d85: $8b
    add hl, hl                                    ; $6d86: $29
    adc b                                         ; $6d87: $88
    ld e, [hl]                                    ; $6d88: $5e
    xor e                                         ; $6d89: $ab
    cp c                                          ; $6d8a: $b9
    rst $08                                       ; $6d8b: $cf
    ld b, e                                       ; $6d8c: $43
    rst $20                                       ; $6d8d: $e7
    sbc h                                         ; $6d8e: $9c
    inc sp                                        ; $6d8f: $33
    rrca                                          ; $6d90: $0f
    inc b                                         ; $6d91: $04
    dec l                                         ; $6d92: $2d
    jr nc, @-$4a                                  ; $6d93: $30 $b4

    adc h                                         ; $6d95: $8c
    xor c                                         ; $6d96: $a9
    add d                                         ; $6d97: $82
    cp [hl]                                       ; $6d98: $be
    ld e, a                                       ; $6d99: $5f
    ld d, a                                       ; $6d9a: $57
    ld a, [hl]                                    ; $6d9b: $7e
    cp l                                          ; $6d9c: $bd
    cp d                                          ; $6d9d: $ba
    ld [de], a                                    ; $6d9e: $12
    ld c, l                                       ; $6d9f: $4d
    ld e, e                                       ; $6da0: $5b
    ld b, [hl]                                    ; $6da1: $46
    ld a, [hl-]                                   ; $6da2: $3a
    db $fd                                        ; $6da3: $fd
    ld [bc], a                                    ; $6da4: $02
    rst $10                                       ; $6da5: $d7
    cp c                                          ; $6da6: $b9
    xor e                                         ; $6da7: $ab
    ldh a, [$3c]                                  ; $6da8: $f0 $3c
    sub [hl]                                      ; $6daa: $96
    ld sp, $5df4                                  ; $6dab: $31 $f4 $5d
    ld l, b                                       ; $6dae: $68
    ld c, l                                       ; $6daf: $4d
    rrca                                          ; $6db0: $0f
    xor l                                         ; $6db1: $ad
    ld a, [hl-]                                   ; $6db2: $3a
    cp l                                          ; $6db3: $bd
    ld [hl], h                                    ; $6db4: $74
    inc de                                        ; $6db5: $13
    or l                                          ; $6db6: $b5
    or b                                          ; $6db7: $b0
    di                                            ; $6db8: $f3
    ld e, [hl]                                    ; $6db9: $5e
    ld a, e                                       ; $6dba: $7b
    inc c                                         ; $6dbb: $0c
    ld e, l                                       ; $6dbc: $5d
    ld e, c                                       ; $6dbd: $59
    sub $cc                                       ; $6dbe: $d6 $cc
    ld a, [c]                                     ; $6dc0: $f2
    and l                                         ; $6dc1: $a5
    ret nc                                        ; $6dc2: $d0

    ld d, $9e                                     ; $6dc3: $16 $9e
    pop de                                        ; $6dc5: $d1
    ld e, l                                       ; $6dc6: $5d
    or $34                                        ; $6dc7: $f6 $34
    ld d, a                                       ; $6dc9: $57
    ld e, e                                       ; $6dca: $5b
    call nc, Call_000_3e2c                        ; $6dcb: $d4 $2c $3e
    rst $20                                       ; $6dce: $e7
    dec b                                         ; $6dcf: $05
    add a                                         ; $6dd0: $87
    ld h, a                                       ; $6dd1: $67
    ld sp, hl                                     ; $6dd2: $f9
    ld d, d                                       ; $6dd3: $52
    adc $59                                       ; $6dd4: $ce $59
    ld a, e                                       ; $6dd6: $7b
    db $fc                                        ; $6dd7: $fc
    ld [hl], c                                    ; $6dd8: $71
    adc a                                         ; $6dd9: $8f
    push bc                                       ; $6dda: $c5
    add hl, sp                                    ; $6ddb: $39
    call nc, Call_05f_79cf                        ; $6ddc: $d4 $cf $79
    ld bc, $31ed                                  ; $6ddf: $01 $ed $31
    ld [hl], h                                    ; $6de2: $74
    ld h, l                                       ; $6de3: $65
    ld e, c                                       ; $6de4: $59
    inc sp                                        ; $6de5: $33
    res 2, a                                      ; $6de6: $cb $97
    ld [hl-], a                                   ; $6de8: $32
    sub d                                         ; $6de9: $92
    sbc d                                         ; $6dea: $9a
    adc $a1                                       ; $6deb: $ce $a1
    ld a, $86                                     ; $6ded: $3e $86
    cp [hl]                                       ; $6def: $be

jr_05f_6df0:
    ld d, [hl]                                    ; $6df0: $56
    ld [hl], e                                    ; $6df1: $73
    db $ed                                        ; $6df2: $ed
    and c                                         ; $6df3: $a1
    db $10                                        ; $6df4: $10
    ei                                            ; $6df5: $fb
    ret                                           ; $6df6: $c9


    push af                                       ; $6df7: $f5
    sbc h                                         ; $6df8: $9c
    ld e, l                                       ; $6df9: $5d
    ld b, h                                       ; $6dfa: $44
    call Call_000_3eca                            ; $6dfb: $cd $ca $3e
    ld h, a                                       ; $6dfe: $67
    rst $20                                       ; $6dff: $e7
    add hl, bc                                    ; $6e00: $09
    ld e, d                                       ; $6e01: $5a
    adc $79                                       ; $6e02: $ce $79
    ld bc, $5c07                                  ; $6e04: $01 $07 $5c
    and $1c                                       ; $6e07: $e6 $1c
    jr z, jr_05f_6df0                             ; $6e09: $28 $e5

    ld d, l                                       ; $6e0b: $55
    cp $c9                                        ; $6e0c: $fe $c9
    and $b5                                       ; $6e0e: $e6 $b5
    sbc d                                         ; $6e10: $9a
    ld l, e                                       ; $6e11: $6b
    rrca                                          ; $6e12: $0f
    add l                                         ; $6e13: $85
    ret c                                         ; $6e14: $d8

    ld c, a                                       ; $6e15: $4f
    xor [hl]                                      ; $6e16: $ae
    or e                                          ; $6e17: $b3
    and b                                         ; $6e18: $a0
    add sp, -$09                                  ; $6e19: $e8 $f7
    dec bc                                        ; $6e1b: $0b
    rst $20                                       ; $6e1c: $e7
    ld e, e                                       ; $6e1d: $5b
    push af                                       ; $6e1e: $f5
    ld e, a                                       ; $6e1f: $5f
    sbc h                                         ; $6e20: $9c
    or h                                          ; $6e21: $b4
    push bc                                       ; $6e22: $c5
    jr nc, @-$09                                  ; $6e23: $30 $f5

    ld h, l                                       ; $6e25: $65
    and b                                         ; $6e26: $a0
    sub h                                         ; $6e27: $94
    sub a                                         ; $6e28: $97

jr_05f_6e29:
    ld d, b                                       ; $6e29: $50

jr_05f_6e2a:
    jr jr_05f_6e36                                ; $6e2a: $18 $0a

    xor a                                         ; $6e2c: $af
    ld d, d                                       ; $6e2d: $52
    ld a, d                                       ; $6e2e: $7a
    pop af                                        ; $6e2f: $f1
    db $10                                        ; $6e30: $10
    jp z, $1424                                   ; $6e31: $ca $24 $14

    di                                            ; $6e34: $f3
    cp l                                          ; $6e35: $bd

jr_05f_6e36:
    add e                                         ; $6e36: $83
    sub [hl]                                      ; $6e37: $96
    ld d, l                                       ; $6e38: $55
    rrca                                          ; $6e39: $0f
    and c                                         ; $6e3a: $a1
    call z, $ee82                                 ; $6e3b: $cc $82 $ee
    ld d, b                                       ; $6e3e: $50
    ld d, $1e                                     ; $6e3f: $16 $1e
    sub l                                         ; $6e41: $95
    jr nz, jr_05f_6e29                            ; $6e42: $20 $e5

    sbc $45                                       ; $6e44: $de $45
    ld hl, $7eb9                                  ; $6e46: $21 $b9 $7e

jr_05f_6e49:
    ld e, [hl]                                    ; $6e49: $5e
    add hl, bc                                    ; $6e4a: $09
    jr c, jr_05f_6e49                             ; $6e4b: $38 $fc

    push hl                                       ; $6e4d: $e5
    ld a, [hl]                                    ; $6e4e: $7e
    ld bc, $ce6d                                  ; $6e4f: $01 $6d $ce
    ld b, l                                       ; $6e52: $45
    jr nz, @-$16                                  ; $6e53: $20 $e8

    ld a, [hl-]                                   ; $6e55: $3a
    and l                                         ; $6e56: $a5
    sra h                                         ; $6e57: $cb $2c
    or e                                          ; $6e59: $b3
    cp b                                          ; $6e5a: $b8
    or d                                          ; $6e5b: $b2
    sub a                                         ; $6e5c: $97
    ld d, b                                       ; $6e5d: $50
    jr jr_05f_6e2a                                ; $6e5e: $18 $ca

    ld a, [hl+]                                   ; $6e60: $2a
    rst $38                                       ; $6e61: $ff
    ld a, b                                       ; $6e62: $78
    inc c                                         ; $6e63: $0c
    ld a, l                                       ; $6e64: $7d
    ld h, h                                       ; $6e65: $64
    db $ec                                        ; $6e66: $ec
    inc e                                         ; $6e67: $1c
    ld h, a                                       ; $6e68: $67
    add sp, -$08                                  ; $6e69: $e8 $f8
    ld a, h                                       ; $6e6b: $7c
    pop bc                                        ; $6e6c: $c1
    ld a, e                                       ; $6e6d: $7b
    rst $10                                       ; $6e6e: $d7
    pop bc                                        ; $6e6f: $c1
    sbc [hl]                                      ; $6e70: $9e
    and $5a                                       ; $6e71: $e6 $5a
    ld c, c                                       ; $6e73: $49
    adc l                                         ; $6e74: $8d
    dec a                                         ; $6e75: $3d
    add hl, bc                                    ; $6e76: $09
    and l                                         ; $6e77: $a5
    ld a, e                                       ; $6e78: $7b
    sub l                                         ; $6e79: $95
    dec [hl]                                      ; $6e7a: $35
    ld c, d                                       ; $6e7b: $4a
    add hl, sp                                    ; $6e7c: $39
    rla                                           ; $6e7d: $17
    ld d, c                                       ; $6e7e: $51
    ld [hl], e                                    ; $6e7f: $73
    ld sp, $022c                                  ; $6e80: $31 $2c $02
    ld b, c                                       ; $6e83: $41
    rst $20                                       ; $6e84: $e7
    db $10                                        ; $6e85: $10
    db $e4                                        ; $6e86: $e4

jr_05f_6e87:
    sbc $95                                       ; $6e87: $de $95
    ld c, c                                       ; $6e89: $49
    adc l                                         ; $6e8a: $8d
    rla                                           ; $6e8b: $17
    ld d, c                                       ; $6e8c: $51
    or e                                          ; $6e8d: $b3
    ld a, [c]                                     ; $6e8e: $f2
    ret nc                                        ; $6e8f: $d0

    ld [hl+], a                                   ; $6e90: $22
    cp [hl]                                       ; $6e91: $be
    ld e, a                                       ; $6e92: $5f
    rst $10                                       ; $6e93: $d7
    ld l, b                                       ; $6e94: $68
    ret nc                                        ; $6e95: $d0

    dec e                                         ; $6e96: $1d
    ld c, d                                       ; $6e97: $4a
    inc c                                         ; $6e98: $0c
    ld [hl], l                                    ; $6e99: $75
    and b                                         ; $6e9a: $a0
    sub h                                         ; $6e9b: $94
    add a                                         ; $6e9c: $87
    sub [hl]                                      ; $6e9d: $96
    and l                                         ; $6e9e: $a5
    sbc c                                         ; $6e9f: $99
    cp l                                          ; $6ea0: $bd
    jr z, jr_05f_6e87                             ; $6ea1: $28 $e4

    db $10                                        ; $6ea3: $10
    jp z, $83bd                                   ; $6ea4: $ca $bd $83

    call $3caa                                    ; $6ea7: $cd $aa $3c
    rst $20                                       ; $6eaa: $e7
    ret nc                                        ; $6eab: $d0

    ld [hl+], a                                   ; $6eac: $22
    sbc $e3                                       ; $6ead: $de $e3
    db $f4                                        ; $6eaf: $f4
    ld e, d                                       ; $6eb0: $5a
    cp a                                          ; $6eb1: $bf
    ld d, [hl]                                    ; $6eb2: $56
    dec bc                                        ; $6eb3: $0b
    ld a, [$017e]                                 ; $6eb4: $fa $7e $01
    add a                                         ; $6eb7: $87
    ld hl, sp+$23                                 ; $6eb8: $f8 $23
    sub h                                         ; $6eba: $94
    add c                                         ; $6ebb: $81
    ld d, d                                       ; $6ebc: $52
    ld e, [hl]                                    ; $6ebd: $5e
    add hl, bc                                    ; $6ebe: $09
    ret z                                         ; $6ebf: $c8

    sub e                                         ; $6ec0: $93
    and b                                         ; $6ec1: $a0
    adc $59                                       ; $6ec2: $ce $59
    sbc e                                         ; $6ec4: $9b
    ld a, $f2                                     ; $6ec5: $3e $f2
    rst $20                                       ; $6ec7: $e7
    inc h                                         ; $6ec8: $24
    xor b                                         ; $6ec9: $a8
    dec [hl]                                      ; $6eca: $35
    ld d, d                                       ; $6ecb: $52
    cpl                                           ; $6ecc: $2f
    adc e                                         ; $6ecd: $8b
    ld b, d                                       ; $6ece: $42
    adc $b2                                       ; $6ecf: $ce $b2
    ld a, [c]                                     ; $6ed1: $f2
    and l                                         ; $6ed2: $a5
    ld a, [hl+]                                   ; $6ed3: $2a
    xor a                                         ; $6ed4: $af
    ld d, d                                       ; $6ed5: $52
    or d                                          ; $6ed6: $b2
    ld b, e                                       ; $6ed7: $43
    ld e, c                                       ; $6ed8: $59
    push hl                                       ; $6ed9: $e5
    rra                                           ; $6eda: $1f
    rst $28                                       ; $6edb: $ef
    cp [hl]                                       ; $6edc: $be
    rst $28                                       ; $6edd: $ef
    or l                                          ; $6ede: $b5
    ccf                                           ; $6edf: $3f
    rst $08                                       ; $6ee0: $cf
    xor $fb                                       ; $6ee1: $ee $fb
    sbc $01                                       ; $6ee3: $de $01
    sub a                                         ; $6ee5: $97
    sub c                                         ; $6ee6: $91
    ccf                                           ; $6ee7: $3f
    ld h, a                                       ; $6ee8: $67
    add hl, de                                    ; $6ee9: $19
    and b                                         ; $6eea: $a0
    rst $28                                       ; $6eeb: $ef
    ei                                            ; $6eec: $fb
    ld a, [hl]                                    ; $6eed: $7e
    ld bc, $eb97                                  ; $6eee: $01 $97 $eb
    inc hl                                        ; $6ef1: $23
    ld a, a                                       ; $6ef2: $7f
    ld l, $86                                     ; $6ef3: $2e $86
    ld b, l                                       ; $6ef5: $45
    cp d                                          ; $6ef6: $ba
    and b                                         ; $6ef7: $a0
    ld a, c                                       ; $6ef8: $79
    ld l, b                                       ; $6ef9: $68
    ld e, c                                       ; $6efa: $59
    sbc d                                         ; $6efb: $9a
    reti                                          ; $6efc: $d9


    db $e3                                        ; $6efd: $e3
    call nc, $eef4                                ; $6efe: $d4 $f4 $ee
    jp z, Jump_000_1e3f                           ; $6f01: $ca $3f $1e

    ld b, e                                       ; $6f04: $43
    rra                                           ; $6f05: $1f
    ld b, d                                       ; $6f06: $42
    and c                                         ; $6f07: $a1
    xor l                                         ; $6f08: $ad
    db $fd                                        ; $6f09: $fd
    ld h, a                                       ; $6f0a: $67
    ld l, d                                       ; $6f0b: $6a
    halt                                          ; $6f0c: $76
    ld h, l                                       ; $6f0d: $65
    ld h, b                                       ; $6f0e: $60
    halt                                          ; $6f0f: $76
    sbc $6b                                       ; $6f10: $de $6b
    or e                                          ; $6f12: $b3
    call z, $1d39                                 ; $6f13: $cc $39 $1d
    dec hl                                        ; $6f16: $2b
    ld l, e                                       ; $6f17: $6b
    jp nc, $c7bc                                  ; $6f18: $d2 $bc $c7

    cp b                                          ; $6f1b: $b8
    adc e                                         ; $6f1c: $8b
    ld a, [hl-]                                   ; $6f1d: $3a
    or h                                          ; $6f1e: $b4
    inc l                                         ; $6f1f: $2c
    jr jr_05f_6f3c                                ; $6f20: $18 $1a

    xor [hl]                                      ; $6f22: $ae
    ld sp, $8b25                                  ; $6f23: $31 $25 $8b
    ld a, e                                       ; $6f26: $7b
    or l                                          ; $6f27: $b5
    inc l                                         ; $6f28: $2c
    sub h                                         ; $6f29: $94
    ld e, l                                       ; $6f2a: $5d
    rst $20                                       ; $6f2b: $e7
    ld a, h                                       ; $6f2c: $7c
    and b                                         ; $6f2d: $a0
    ld [hl], a                                    ; $6f2e: $77
    ld [$dd7a], sp                                ; $6f2f: $08 $7a $dd
    or l                                          ; $6f32: $b5
    ld [de], a                                    ; $6f33: $12
    ld l, b                                       ; $6f34: $68
    ld b, e                                       ; $6f35: $43
    rst $20                                       ; $6f36: $e7
    ld h, d                                       ; $6f37: $62
    add sp, $6b                                   ; $6f38: $e8 $6b
    cp b                                          ; $6f3a: $b8
    ld a, [hl+]                                   ; $6f3b: $2a

jr_05f_6f3c:
    dec c                                         ; $6f3c: $0d
    or e                                          ; $6f3d: $b3
    add a                                         ; $6f3e: $87
    ld d, b                                       ; $6f3f: $50
    ld b, $7b                                     ; $6f40: $06 $7b
    ld a, [hl]                                    ; $6f42: $7e
    add c                                         ; $6f43: $81
    xor d                                         ; $6f44: $aa
    inc a                                         ; $6f45: $3c
    push af                                       ; $6f46: $f5
    sbc a                                         ; $6f47: $9f
    sub [hl]                                      ; $6f48: $96
    rst $28                                       ; $6f49: $ef
    rla                                           ; $6f4a: $17
    rlca                                          ; $6f4b: $07
    dec l                                         ; $6f4c: $2d
    and e                                         ; $6f4d: $a3
    cp e                                          ; $6f4e: $bb
    ld c, h                                       ; $6f4f: $4c
    ld a, l                                       ; $6f50: $7d
    add hl, de                                    ; $6f51: $19
    jr z, @-$19                                   ; $6f52: $28 $e5

    dec [hl]                                      ; $6f54: $35
    call z, Call_05f_7bbf                         ; $6f55: $cc $bf $7b
    ld d, c                                       ; $6f58: $51
    ret z                                         ; $6f59: $c8

    and c                                         ; $6f5a: $a1
    push hl                                       ; $6f5b: $e5
    ld a, [hl]                                    ; $6f5c: $7e
    ld bc, $bfed                                  ; $6f5d: $01 $ed $bf
    inc h                                         ; $6f60: $24
    ldh [$c8], a                                  ; $6f61: $e0 $c8
    sbc a                                         ; $6f63: $9f
    xor e                                         ; $6f64: $ab
    call nc, $e62c                                ; $6f65: $d4 $2c $e6
    ld b, l                                       ; $6f68: $45
    ld hl, $fb69                                  ; $6f69: $21 $69 $fb
    cp h                                          ; $6f6c: $bc
    inc de                                        ; $6f6d: $13
    ld c, a                                       ; $6f6e: $4f
    inc a                                         ; $6f6f: $3c
    ld [hl], e                                    ; $6f70: $73
    add a                                         ; $6f71: $87
    xor b                                         ; $6f72: $a8
    dec a                                         ; $6f73: $3d
    xor [hl]                                      ; $6f74: $ae
    ld l, $7d                                     ; $6f75: $2e $7d
    adc l                                         ; $6f77: $8d
    ld c, $b1                                     ; $6f78: $0e $b1
    ld [hl], e                                    ; $6f7a: $73
    sbc h                                         ; $6f7b: $9c
    cp d                                          ; $6f7c: $ba
    ld d, d                                       ; $6f7d: $52
    and $45                                       ; $6f7e: $e6 $45
    ld sp, hl                                     ; $6f80: $f9
    add a                                         ; $6f81: $87
    jr nz, jr_05f_6fd7                            ; $6f82: $20 $53

    ld b, c                                       ; $6f84: $41
    jr c, jr_05f_6f93                             ; $6f85: $38 $0c

    halt                                          ; $6f87: $76
    ld [hl], c                                    ; $6f88: $71
    add d                                         ; $6f89: $82
    sub h                                         ; $6f8a: $94
    ret nz                                        ; $6f8b: $c0

    ld e, h                                       ; $6f8c: $5c
    rst $28                                       ; $6f8d: $ef
    ld e, l                                       ; $6f8e: $5d
    di                                            ; $6f8f: $f3
    push de                                       ; $6f90: $d5
    and d                                         ; $6f91: $a2
    sub b                                         ; $6f92: $90

jr_05f_6f93:
    ld l, e                                       ; $6f93: $6b
    cp b                                          ; $6f94: $b8
    ld d, d                                       ; $6f95: $52
    adc e                                         ; $6f96: $8b
    ld sp, hl                                     ; $6f97: $f9
    sbc $01                                       ; $6f98: $de $01
    sub a                                         ; $6f9a: $97
    add hl, sp                                    ; $6f9b: $39
    ld d, a                                       ; $6f9c: $57
    ld b, c                                       ; $6f9d: $41
    add hl, hl                                    ; $6f9e: $29
    rst $20                                       ; $6f9f: $e7
    ld e, d                                       ; $6fa0: $5a
    ld c, l                                       ; $6fa1: $4d
    jp c, $0f3e                                   ; $6fa2: $da $3e $0f

    push af                                       ; $6fa5: $f5
    push bc                                       ; $6fa6: $c5
    ret nc                                        ; $6fa7: $d0

    rla                                           ; $6fa8: $17
    dec [hl]                                      ; $6fa9: $35
    ld d, a                                       ; $6faa: $57
    ld a, [hl-]                                   ; $6fab: $3a
    dec b                                         ; $6fac: $05
    cp l                                          ; $6fad: $bd
    rra                                           ; $6fae: $1f
    adc l                                         ; $6faf: $8d

jr_05f_6fb0:
    ld d, e                                       ; $6fb0: $53
    db $d3                                        ; $6fb1: $d3
    cp e                                          ; $6fb2: $bb
    dec hl                                        ; $6fb3: $2b
    rst $38                                       ; $6fb4: $ff
    ret c                                         ; $6fb5: $d8

    ld [hl], d                                    ; $6fb6: $72
    cp a                                          ; $6fb7: $bf
    add a                                         ; $6fb8: $87
    sub e                                         ; $6fb9: $93
    inc de                                        ; $6fba: $13
    db $d3                                        ; $6fbb: $d3
    ld l, c                                       ; $6fbc: $69
    ld l, e                                       ; $6fbd: $6b
    rst $38                                       ; $6fbe: $ff
    sbc c                                         ; $6fbf: $99
    sbc d                                         ; $6fc0: $9a
    ld e, l                                       ; $6fc1: $5d
    add hl, de                                    ; $6fc2: $19
    sbc b                                         ; $6fc3: $98
    sbc l                                         ; $6fc4: $9d
    or h                                          ; $6fc5: $b4
    cp c                                          ; $6fc6: $b9
    ld [hl], a                                    ; $6fc7: $77
    ld h, a                                       ; $6fc8: $67
    dec e                                         ; $6fc9: $1d
    ld a, a                                       ; $6fca: $7f
    ld [hl], l                                    ; $6fcb: $75
    cp a                                          ; $6fcc: $bf
    ld d, a                                       ; $6fcd: $57
    ld h, $35                                     ; $6fce: $26 $35
    ld e, $5a                                     ; $6fd0: $1e $5a
    call nz, $daf7                                ; $6fd2: $c4 $f7 $da
    inc l                                         ; $6fd5: $2c
    ld [hl], e                                    ; $6fd6: $73

jr_05f_6fd7:
    xor [hl]                                      ; $6fd7: $ae
    rst $38                                       ; $6fd8: $ff
    ret c                                         ; $6fd9: $d8

    cp h                                          ; $6fda: $bc
    rra                                           ; $6fdb: $1f
    ld c, l                                       ; $6fdc: $4d
    dec h                                         ; $6fdd: $25
    ld d, h                                       ; $6fde: $54
    and $90                                       ; $6fdf: $e6 $90
    or d                                          ; $6fe1: $b2
    rst $00                                       ; $6fe2: $c7
    jr c, jr_05f_6fb0                             ; $6fe3: $38 $cb

    ld [hl+], a                                   ; $6fe5: $22
    xor d                                         ; $6fe6: $aa
    add b                                         ; $6fe7: $80
    xor d                                         ; $6fe8: $aa
    ld de, $39dd                                  ; $6fe9: $11 $dd $39
    db $10                                        ; $6fec: $10
    or h                                          ; $6fed: $b4
    ret nz                                        ; $6fee: $c0

    db $fd                                        ; $6fef: $fd
    ld [bc], a                                    ; $6ff0: $02
    rla                                           ; $6ff1: $17
    rlca                                          ; $6ff2: $07
    call nz, $685f                                ; $6ff3: $c4 $5f $68
    db $d3                                        ; $6ff6: $d3
    and l                                         ; $6ff7: $a5
    ld a, b                                       ; $6ff8: $78
    rst $08                                       ; $6ff9: $cf
    rla                                           ; $6ffa: $17
    cp h                                          ; $6ffb: $bc
    ld [hl], a                                    ; $6ffc: $77
    ld h, c                                       ; $6ffd: $61
    ld c, $f5                                     ; $6ffe: $0e $f5
    ld b, l                                       ; $7000: $45
    call nc, $ecac                                ; $7001: $d4 $ac $ec
    ld h, [hl]                                    ; $7004: $66
    ld d, [hl]                                    ; $7005: $56
    ld [hl], a                                    ; $7006: $77
    rst $00                                       ; $7007: $c7
    rst $20                                       ; $7008: $e7
    cp h                                          ; $7009: $bc
    ld l, l                                       ; $700a: $6d
    and $35                                       ; $700b: $e6 $35
    ld a, [hl-]                                   ; $700d: $3a
    call nz, $d1ce                                ; $700e: $c4 $ce $d1
    ld e, l                                       ; $7011: $5d
    ld d, [hl]                                    ; $7012: $56
    push hl                                       ; $7013: $e5
    daa                                           ; $7014: $27
    rst $18                                       ; $7015: $df
    cpl                                           ; $7016: $2f
    ld l, l                                       ; $7017: $6d
    ld a, [$e362]                                 ; $7018: $fa $62 $e3
    ld h, d                                       ; $701b: $62
    ld [hl], a                                    ; $701c: $77
    jp c, $8f3e                                   ; $701d: $da $3e $8f

    xor $32                                       ; $7020: $ee $32
    ld d, b                                       ; $7022: $50
    jp z, Jump_05f_5f53                           ; $7023: $ca $53 $5f

    ld d, [hl]                                    ; $7026: $56
    add hl, hl                                    ; $7027: $29
    cp l                                          ; $7028: $bd
    ld a, b                                       ; $7029: $78
    ld [$1265], sp                                ; $702a: $08 $65 $12
    adc d                                         ; $702d: $8a
    ld sp, hl                                     ; $702e: $f9
    sbc $41                                       ; $702f: $de $41
    res 5, d                                      ; $7031: $cb $aa
    add a                                         ; $7033: $87
    ld d, b                                       ; $7034: $50
    sub $f8                                       ; $7035: $d6 $f8
    jp hl                                         ; $7037: $e9


    add l                                         ; $7038: $85
    ld b, a                                       ; $7039: $47
    dec h                                         ; $703a: $25
    ld c, b                                       ; $703b: $48
    and c                                         ; $703c: $a1
    adc l                                         ; $703d: $8d
    adc h                                         ; $703e: $8c
    and c                                         ; $703f: $a1
    ld c, $f5                                     ; $7040: $0e $f5
    sub c                                         ; $7042: $91
    ccf                                           ; $7043: $3f
    rst $10                                       ; $7044: $d7
    dec [hl]                                      ; $7045: $35
    sub l                                         ; $7046: $95
    rst $28                                       ; $7047: $ef
    rla                                           ; $7048: $17
    rst $20                                       ; $7049: $e7
    sub c                                         ; $704a: $91
    sbc a                                         ; $704b: $9f
    ld [hl], $cb                                  ; $704c: $36 $cb
    ld [hl], h                                    ; $704e: $74
    add hl, hl                                    ; $704f: $29
    ld [hl], e                                    ; $7050: $73
    ld [hl], a                                    ; $7051: $77
    ld a, h                                       ; $7052: $7c
    xor a                                         ; $7053: $af
    ld c, l                                       ; $7054: $4d
    sbc a                                         ; $7055: $9f
    ld [hl], e                                    ; $7056: $73
    cp a                                          ; $7057: $bf
    inc sp                                        ; $7058: $33
    ldh [$62], a                                  ; $7059: $e0 $62
    ld [hl], a                                    ; $705b: $77
    dec d                                         ; $705c: $15
    sbc [hl]                                      ; $705d: $9e
    rst $00                                       ; $705e: $c7
    ld [hl-], a                                   ; $705f: $32
    ld [hl-], a                                   ; $7060: $32
    call nc, $d45d                                ; $7061: $d4 $5d $d4
    add e                                         ; $7064: $83
    sbc [hl]                                      ; $7065: $9e
    ld d, b                                       ; $7066: $50
    ret                                           ; $7067: $c9


    dec e                                         ; $7068: $1d
    or c                                          ; $7069: $b1
    di                                            ; $706a: $f3
    ld a, e                                       ; $706b: $7b
    ld h, b                                       ; $706c: $60
    xor [hl]                                      ; $706d: $ae
    rst $30                                       ; $706e: $f7
    ld l, $cc                                     ; $706f: $2e $cc
    and c                                         ; $7071: $a1
    cp [hl]                                       ; $7072: $be
    adc b                                         ; $7073: $88
    sbc d                                         ; $7074: $9a
    sub l                                         ; $7075: $95
    db $dd                                        ; $7076: $dd
    call z, $eeea                                 ; $7077: $cc $ea $ee
    ld a, b                                       ; $707a: $78
    xor l                                         ; $707b: $ad
    and $da                                       ; $707c: $e6 $da
    ld b, e                                       ; $707e: $43
    ld hl, $93f6                                  ; $707f: $21 $f6 $93
    db $eb                                        ; $7082: $eb
    add hl, sp                                    ; $7083: $39
    cpl                                           ; $7084: $2f
    rlca                                          ; $7085: $07
    cp $fd                                        ; $7086: $fe $fd
    ld [bc], a                                    ; $7088: $02
    rst $10                                       ; $7089: $d7
    pop bc                                        ; $708a: $c1
    ret z                                         ; $708b: $c8

    sbc a                                         ; $708c: $9f
    ld b, e                                       ; $708d: $43
    db $10                                        ; $708e: $10
    xor a                                         ; $708f: $af
    ld b, c                                       ; $7090: $41
    dec l                                         ; $7091: $2d
    adc $75                                       ; $7092: $ce $75
    jr z, jr_05f_70b4                             ; $7094: $28 $1e

    jp hl                                         ; $7096: $e9


    and h                                         ; $7097: $a4
    db $ed                                        ; $7098: $ed
    rst $30                                       ; $7099: $f7
    xor $34                                       ; $709a: $ee $34
    ld a, d                                       ; $709c: $7a
    db $fd                                        ; $709d: $fd
    rla                                           ; $709e: $17
    ld e, [hl]                                    ; $709f: $5e
    sub h                                         ; $70a0: $94
    ld a, [hl]                                    ; $70a1: $7e
    xor $b5                                       ; $70a2: $ee $b5
    sbc c                                         ; $70a4: $99
    rst $10                                       ; $70a5: $d7
    add sp, $10                                   ; $70a6: $e8 $10
    dec sp                                        ; $70a8: $3b
    ld [hl], a                                    ; $70a9: $77
    ld [c], a                                     ; $70aa: $e2
    add hl, hl                                    ; $70ab: $29
    daa                                           ; $70ac: $27
    rst $28                                       ; $70ad: $ef
    db $10                                        ; $70ae: $10
    or l                                          ; $70af: $b5
    rst $00                                       ; $70b0: $c7
    push de                                       ; $70b1: $d5
    and l                                         ; $70b2: $a5
    rst $18                                       ; $70b3: $df

jr_05f_70b4:
    cpl                                           ; $70b4: $2f
    rst $10                                       ; $70b5: $d7
    ld a, h                                       ; $70b6: $7c
    or l                                          ; $70b7: $b5
    jr z, jr_05f_70de                             ; $70b8: $28 $24

    jp nz, Jump_000_1f50                          ; $70ba: $c2 $50 $1f

    ld sp, hl                                     ; $70bd: $f9
    dec b                                         ; $70be: $05
    cp e                                          ; $70bf: $bb
    pop de                                        ; $70c0: $d1
    inc hl                                        ; $70c1: $23
    ld b, e                                       ; $70c2: $43
    db $dd                                        ; $70c3: $dd
    ld b, l                                       ; $70c4: $45
    dec a                                         ; $70c5: $3d
    add sp, $09                                   ; $70c6: $e8 $09
    sub l                                         ; $70c8: $95
    call c, Call_000_3b11                         ; $70c9: $dc $11 $3b
    cp a                                          ; $70cc: $bf
    rlca                                          ; $70cd: $07
    and $7a                                       ; $70ce: $e6 $7a
    rst $28                                       ; $70d0: $ef
    ld [c], a                                     ; $70d1: $e2
    add b                                         ; $70d2: $80
    adc e                                         ; $70d3: $8b
    ld b, d                                       ; $70d4: $42
    ld a, [bc]                                    ; $70d5: $0a
    sub l                                         ; $70d6: $95
    xor $5e                                       ; $70d7: $ee $5e
    cp l                                          ; $70d9: $bd
    rst $00                                       ; $70da: $c7
    cp b                                          ; $70db: $b8
    ld c, [hl]                                    ; $70dc: $4e
    xor c                                         ; $70dd: $a9

jr_05f_70de:
    ld [bc], a                                    ; $70de: $02
    ld d, d                                       ; $70df: $52
    inc l                                         ; $70e0: $2c
    jp c, $875f                                   ; $70e1: $da $5f $87

    sbc d                                         ; $70e4: $9a
    ld a, e                                       ; $70e5: $7b
    ld e, h                                       ; $70e6: $5c
    call z, Call_05f_7f23                         ; $70e7: $cc $23 $7f
    adc [hl]                                      ; $70ea: $8e
    xor $32                                       ; $70eb: $ee $32
    ld d, b                                       ; $70ed: $50
    jp z, Jump_000_0bf7                           ; $70ee: $ca $f7 $0b

jr_05f_70f1:
    rla                                           ; $70f1: $17
    jp z, $faaa                                   ; $70f2: $ca $aa $fa

    rst $08                                       ; $70f5: $cf
    cp l                                          ; $70f6: $bd
    add e                                         ; $70f7: $83
    sub [hl]                                      ; $70f8: $96
    pop de                                        ; $70f9: $d1
    ld e, l                                       ; $70fa: $5d
    and $5c                                       ; $70fb: $e6 $5c
    dec b                                         ; $70fd: $05
    and l                                         ; $70fe: $a5
    sbc h                                         ; $70ff: $9c
    ld l, e                                       ; $7100: $6b
    dec [hl]                                      ; $7101: $35
    ld l, c                                       ; $7102: $69
    ei                                            ; $7103: $fb
    cp h                                          ; $7104: $bc
    jr jr_05f_715d                                ; $7105: $18 $56

    push hl                                       ; $7107: $e5
    daa                                           ; $7108: $27
    xor a                                         ; $7109: $af
    ld a, [hl-]                                   ; $710a: $3a
    add a                                         ; $710b: $87
    ld d, b                                       ; $710c: $50
    ld b, [hl]                                    ; $710d: $46
    ld a, [hl-]                                   ; $710e: $3a
    rlca                                          ; $710f: $07
    push bc                                       ; $7110: $c5
    ld [hl], d                                    ; $7111: $72
    cp a                                          ; $7112: $bf
    rlca                                          ; $7113: $07
    ld e, h                                       ; $7114: $5c
    sub $e8                                       ; $7115: $d6 $e8
    db $10                                        ; $7117: $10
    dec sp                                        ; $7118: $3b
    daa                                           ; $7119: $27
    ld d, h                                       ; $711a: $54
    db $e4                                        ; $711b: $e4
    ld sp, $7df4                                  ; $711c: $31 $f4 $7d
    ld e, [hl]                                    ; $711f: $5e
    call nc, $cb5c                                ; $7120: $d4 $5c $cb
    ld d, d                                       ; $7123: $52
    inc l                                         ; $7124: $2c
    ld e, $43                                     ; $7125: $1e $43
    ld l, a                                       ; $7127: $6f
    db $fc                                        ; $7128: $fc
    ld [c], a                                     ; $7129: $e2
    ld b, l                                       ; $712a: $45
    ld hl, $5087                                  ; $712b: $21 $87 $50
    xor e                                         ; $712e: $ab
    rst $10                                       ; $712f: $d7
    and b                                         ; $7130: $a0
    ld d, $e7                                     ; $7131: $16 $e7
    db $fd                                        ; $7133: $fd

jr_05f_7134:
    ld [bc], a                                    ; $7134: $02
    add a                                         ; $7135: $87
    sub e                                         ; $7136: $93
    or h                                          ; $7137: $b4
    dec a                                         ; $7138: $3d
    sub [hl]                                      ; $7139: $96
    ld h, c                                       ; $713a: $61
    jr z, jr_05f_7134                             ; $713b: $28 $f7

    ld c, $b8                                     ; $713d: $0e $b8
    call z, $c6b9                                 ; $713f: $cc $b9 $c6
    sub a                                         ; $7142: $97
    ld [c], a                                     ; $7143: $e2
    ld b, l                                       ; $7144: $45
    ld hl, $fb69                                  ; $7145: $21 $69 $fb
    cp h                                          ; $7148: $bc
    jr jr_05f_70f1                                ; $7149: $18 $a6

    ld [hl], h                                    ; $714b: $74
    sbc c                                         ; $714c: $99
    ld a, [$02b2]                                 ; $714d: $fa $b2 $02
    or c                                          ; $7150: $b1
    add a                                         ; $7151: $87
    ld d, b                                       ; $7152: $50
    halt                                          ; $7153: $76
    ld [c], a                                     ; $7154: $e2
    ld c, c                                       ; $7155: $49
    daa                                           ; $7156: $27
    rst $28                                       ; $7157: $ef
    db $10                                        ; $7158: $10
    or l                                          ; $7159: $b5
    rst $00                                       ; $715a: $c7
    push de                                       ; $715b: $d5
    and l                                         ; $715c: $a5

jr_05f_715d:
    db $d3                                        ; $715d: $d3
    ld b, [hl]                                    ; $715e: $46
    add $50                                       ; $715f: $c6 $50
    ld b, a                                       ; $7161: $47
    ld a, [hl]                                    ; $7162: $7e
    pop bc                                        ; $7163: $c1
    ld l, [hl]                                    ; $7164: $6e
    ld e, c                                       ; $7165: $59
    ld d, l                                       ; $7166: $55
    cp a                                          ; $7167: $bf
    xor a                                         ; $7168: $af
    inc [hl]                                      ; $7169: $34
    rst $00                                       ; $716a: $c7
    ret nc                                        ; $716b: $d0

    dec de                                        ; $716c: $1b
    cp a                                          ; $716d: $bf
    ld hl, sp+$7e                                 ; $716e: $f8 $7e
    ld bc, $3fed                                  ; $7170: $01 $ed $3f
    add a                                         ; $7173: $87
    ld a, [$ae1a]                                 ; $7174: $fa $1a $ae
    db $ec                                        ; $7177: $ec
    add a                                         ; $7178: $87
    add a                                         ; $7179: $87
    ld d, b                                       ; $717a: $50
    ld d, $85                                     ; $717b: $16 $85
    inc e                                         ; $717d: $1c
    ld b, d                                       ; $717e: $42
    xor l                                         ; $717f: $ad
    ld e, [hl]                                    ; $7180: $5e
    add e                                         ; $7181: $83
    ld e, d                                       ; $7182: $5a
    sbc h                                         ; $7183: $9c
    rst $20                                       ; $7184: $e7
    cp h                                          ; $7185: $bc
    rst $10                                       ; $7186: $d7
    cp c                                          ; $7187: $b9
    xor e                                         ; $7188: $ab
    ldh a, [$3c]                                  ; $7189: $f0 $3c
    sub [hl]                                      ; $718b: $96
    ld sp, $5df4                                  ; $718c: $31 $f4 $5d
    call nc, $9e83                                ; $718f: $d4 $83 $9e
    ld d, b                                       ; $7192: $50
    ret                                           ; $7193: $c9


    dec e                                         ; $7194: $1d
    or c                                          ; $7195: $b1
    di                                            ; $7196: $f3
    ld a, e                                       ; $7197: $7b
    ld h, b                                       ; $7198: $60
    xor [hl]                                      ; $7199: $ae
    rst $00                                       ; $719a: $c7
    dec [hl]                                      ; $719b: $35
    ld b, d                                       ; $719c: $42
    ld hl, $60bf                                  ; $719d: $21 $bf $60
    or a                                          ; $71a0: $b7
    call c, Call_000_0ebb                         ; $71a1: $dc $bb $0e
    and [hl]                                      ; $71a4: $a6
    cp [hl]                                       ; $71a5: $be
    inc c                                         ; $71a6: $0c
    sub h                                         ; $71a7: $94
    ld a, [c]                                     ; $71a8: $f2
    ld a, [de]                                    ; $71a9: $1a
    ld h, [hl]                                    ; $71aa: $66
    cp d                                          ; $71ab: $ba
    push bc                                       ; $71ac: $c5
    ld d, e                                       ; $71ad: $53
    cp d                                          ; $71ae: $ba
    and b                                         ; $71af: $a0
    ld [hl], e                                    ; $71b0: $73
    jr nc, jr_05f_71dd                            ; $71b1: $30 $2a

    db $dd                                        ; $71b3: $dd
    adc l                                         ; $71b4: $8d
    ld c, $4a                                     ; $71b5: $0e $4a
    sbc c                                         ; $71b7: $99
    ld l, c                                       ; $71b8: $69
    jp Jump_000_18bf                              ; $71b9: $c3 $bf $18


    or $34                                        ; $71bc: $f6 $34
    rst $00                                       ; $71be: $c7
    cp a                                          ; $71bf: $bf
    ld a, b                                       ; $71c0: $78
    and c                                         ; $71c1: $a1
    xor $47                                       ; $71c2: $ee $47
    inc sp                                        ; $71c4: $33
    ld c, a                                       ; $71c5: $4f
    rst $00                                       ; $71c6: $c7
    ld b, [hl]                                    ; $71c7: $46
    ld [$1fb8], a                                 ; $71c8: $ea $b8 $1f
    xor l                                         ; $71cb: $ad
    ld de, $c84a                                  ; $71cc: $11 $4a $c8
    rst $00                                       ; $71cf: $c7
    rst $30                                       ; $71d0: $f7
    ld c, $5a                                     ; $71d1: $0e $5a
    and [hl]                                      ; $71d3: $a6
    jp nz, $0b33                                  ; $71d4: $c2 $33 $0b

    cp d                                          ; $71d7: $ba
    ld b, e                                       ; $71d8: $43
    add hl, de                                    ; $71d9: $19
    ld b, e                                       ; $71da: $43
    ld l, a                                       ; $71db: $6f
    db $fc                                        ; $71dc: $fc

jr_05f_71dd:
    ld [c], a                                     ; $71dd: $e2
    ld d, l                                       ; $71de: $55
    adc e                                         ; $71df: $8b
    db $d3                                        ; $71e0: $d3
    rst $30                                       ; $71e1: $f7
    dec bc                                        ; $71e2: $0b
    db $ed                                        ; $71e3: $ed
    and [hl]                                      ; $71e4: $a6
    db $d3                                        ; $71e5: $d3
    ld b, [hl]                                    ; $71e6: $46
    ld [hl], a                                    ; $71e7: $77
    add hl, de                                    ; $71e8: $19
    ld l, c                                       ; $71e9: $69
    ld b, h                                       ; $71ea: $44
    rst $20                                       ; $71eb: $e7
    jp c, $13f2                                   ; $71ec: $da $f2 $13

    dec c                                         ; $71ef: $0d
    dec sp                                        ; $71f0: $3b
    ld hl, sp+$7b                                 ; $71f1: $f8 $7b
    inc d                                         ; $71f3: $14
    inc [hl]                                      ; $71f4: $34
    rst $30                                       ; $71f5: $f7
    ld l, $cc                                     ; $71f6: $2e $cc
    and c                                         ; $71f8: $a1
    ld a, $77                                     ; $71f9: $3e $77
    rst $00                                       ; $71fb: $c7
    ld l, e                                       ; $71fc: $6b
    dec [hl]                                      ; $71fd: $35
    rst $10                                       ; $71fe: $d7
    ld e, $0a                                     ; $71ff: $1e $0a
    or c                                          ; $7201: $b1
    sbc a                                         ; $7202: $9f
    ld e, h                                       ; $7203: $5c
    rst $08                                       ; $7204: $cf
    ld a, c                                       ; $7205: $79
    ld bc, $e66d                                  ; $7206: $01 $6d $e6
    dec [hl]                                      ; $7209: $35
    ld a, [hl-]                                   ; $720a: $3a
    call nz, $d1ce                                ; $720b: $c4 $ce $d1
    ld e, l                                       ; $720e: $5d
    ld d, [hl]                                    ; $720f: $56
    push hl                                       ; $7210: $e5
    daa                                           ; $7211: $27
    rst $18                                       ; $7212: $df
    cpl                                           ; $7213: $2f
    ld l, l                                       ; $7214: $6d
    and $15                                       ; $7215: $e6 $15
    ld l, d                                       ; $7217: $6a
    adc [hl]                                      ; $7218: $8e
    xor $b2                                       ; $7219: $ee $b2
    ld d, b                                       ; $721b: $50
    ld l, d                                       ; $721c: $6a
    di                                            ; $721d: $f3
    sbc $01                                       ; $721e: $de $01
    sub a                                         ; $7220: $97
    push de                                       ; $7221: $d5
    and $10                                       ; $7222: $e6 $10
    jp z, $143a                                   ; $7224: $ca $3a $14

    cpl                                           ; $7227: $2f
    and d                                         ; $7228: $a2
    and $ea                                       ; $7229: $e6 $ea
    ld a, a                                       ; $722b: $7f
    ld e, $cb                                     ; $722c: $1e $cb
    ld e, $e3                                     ; $722e: $1e $e3
    ret nc                                        ; $7230: $d0

    or d                                          ; $7231: $b2
    jr z, jr_05f_7298                             ; $7232: $28 $64

    ld b, h                                       ; $7234: $44
    ld c, c                                       ; $7235: $49
    ld [hl], h                                    ; $7236: $74
    add a                                         ; $7237: $87
    ld [c], a                                     ; $7238: $e2
    ld sp, $e2dd                                  ; $7239: $31 $dd $e2
    ld e, h                                       ; $723c: $5c
    ei                                            ; $723d: $fb
    cpl                                           ; $723e: $2f

Call_05f_723f:
    add hl, bc                                    ; $723f: $09
    ld a, b                                       ; $7240: $78
    cp a                                          ; $7241: $bf
    rlca                                          ; $7242: $07
    ld e, h                                       ; $7243: $5c
    and [hl]                                      ; $7244: $a6
    cp [hl]                                       ; $7245: $be
    xor h                                         ; $7246: $ac
    inc b                                         ; $7247: $04
    db $e4                                        ; $7248: $e4
    ld [hl], l                                    ; $7249: $75
    ld b, b                                       ; $724a: $40
    xor a                                         ; $724b: $af
    db $fd                                        ; $724c: $fd
    sub a                                         ; $724d: $97
    inc b                                         ; $724e: $04
    cp h                                          ; $724f: $bc
    ld e, a                                       ; $7250: $5f
    sub a                                         ; $7251: $97
    ld a, [hl]                                    ; $7252: $7e
    add hl, de                                    ; $7253: $19
    ld [$ace7], a                                 ; $7254: $ea $e7 $ac
    db $fd                                        ; $7257: $fd
    res 3, h                                      ; $7258: $cb $9c
    ei                                            ; $725a: $fb
    sbc l                                         ; $725b: $9d
    ld l, e                                       ; $725c: $6b
    ld [hl], e                                    ; $725d: $73
    and b                                         ; $725e: $a0
    sub h                                         ; $725f: $94
    rst $30                                       ; $7260: $f7
    and e                                         ; $7261: $a3
    ld hl, $2ac8                                  ; $7262: $21 $c8 $2a
    ld a, a                                       ; $7265: $7f
    pop bc                                        ; $7266: $c1
    sbc a                                         ; $7267: $9f
    ld c, b                                       ; $7268: $48
    db $db                                        ; $7269: $db
    rst $20                                       ; $726a: $e7
    and c                                         ; $726b: $a1
    cp [hl]                                       ; $726c: $be
    ret c                                         ; $726d: $d8

    jr c, jr_05f_72a4                             ; $726e: $38 $34

    rst $18                                       ; $7270: $df
    ld l, e                                       ; $7271: $6b
    rst $38                                       ; $7272: $ff
    ld [hl-], a                                   ; $7273: $32
    rst $20                                       ; $7274: $e7
    add h                                         ; $7275: $84
    ld d, d                                       ; $7276: $52
    reti                                          ; $7277: $d9


    or d                                          ; $7278: $b2
    jp c, $ed5c                                   ; $7279: $da $5c $ed

    ld a, [hl]                                    ; $727c: $7e
    ld d, [hl]                                    ; $727d: $56
    jp $cb33                                      ; $727e: $c3 $33 $cb


    ld c, $ea                                     ; $7281: $0e $ea
    and l                                         ; $7283: $a5
    ld [hl], h                                    ; $7284: $74
    rst $20                                       ; $7285: $e7
    cp l                                          ; $7286: $bd
    add e                                         ; $7287: $83
    call $bcaa                                    ; $7288: $cd $aa $bc
    sbc b                                         ; $728b: $98
    sub d                                         ; $728c: $92
    jp hl                                         ; $728d: $e9


    ld a, e                                       ; $728e: $7b
    sub a                                         ; $728f: $97
    scf                                           ; $7290: $37
    ld l, c                                       ; $7291: $69
    adc e                                         ; $7292: $8b
    ld h, c                                       ; $7293: $61
    push de                                       ; $7294: $d5
    ld [hl], l                                    ; $7295: $75
    push de                                       ; $7296: $d5
    ld [c], a                                     ; $7297: $e2

jr_05f_7298:
    db $f4                                        ; $7298: $f4
    db $fd                                        ; $7299: $fd
    ld [bc], a                                    ; $729a: $02
    rst $10                                       ; $729b: $d7
    cp c                                          ; $729c: $b9
    xor e                                         ; $729d: $ab
    ldh a, [$3c]                                  ; $729e: $f0 $3c
    sub [hl]                                      ; $72a0: $96
    ld sp, $91f4                                  ; $72a1: $31 $f4 $91

jr_05f_72a4:
    cp $1d                                        ; $72a4: $fe $1d
    and h                                         ; $72a6: $a4
    inc [hl]                                      ; $72a7: $34
    ld [hl], h                                    ; $72a8: $74
    ld b, $a5                                     ; $72a9: $06 $a5
    inc l                                         ; $72ab: $2c
    xor e                                         ; $72ac: $ab
    xor $71                                       ; $72ad: $ee $71
    ld a, b                                       ; $72af: $78
    ld b, [hl]                                    ; $72b0: $46
    ld [hl], a                                    ; $72b1: $77
    sbc c                                         ; $72b2: $99
    ld a, [$eab2]                                 ; $72b3: $fa $b2 $ea
    ld a, l                                       ; $72b6: $7d
    ld e, $ea                                     ; $72b7: $1e $ea
    inc bc                                        ; $72b9: $03
    and l                                         ; $72ba: $a5
    inc a                                         ; $72bb: $3c
    rst $20                                       ; $72bc: $e7
    xor d                                         ; $72bd: $aa
    ld a, [$be68]                                 ; $72be: $fa $68 $be
    ld e, a                                       ; $72c1: $5f
    db $ed                                        ; $72c2: $ed
    pop af                                        ; $72c3: $f1
    rst $00                                       ; $72c4: $c7
    sub c                                         ; $72c5: $91
    ccf                                           ; $72c6: $3f
    add a                                         ; $72c7: $87
    ld a, [$e748]                                 ; $72c8: $fa $48 $e7
    add hl, sp                                    ; $72cb: $39
    cpl                                           ; $72cc: $2f
    rlca                                          ; $72cd: $07
    ld e, h                                       ; $72ce: $5c
    ld b, [hl]                                    ; $72cf: $46
    cp d                                          ; $72d0: $ba
    scf                                           ; $72d1: $37
    jp nc, $dce8                                  ; $72d2: $d2 $e8 $dc

    rst $28                                       ; $72d5: $ef
    db $dd                                        ; $72d6: $dd
    or h                                          ; $72d7: $b4
    push de                                       ; $72d8: $d5
    ldh a, [$cc]                                  ; $72d9: $f0 $cc
    add hl, sp                                    ; $72db: $39
    dec d                                         ; $72dc: $15
    sbc [hl]                                      ; $72dd: $9e
    rst $00                                       ; $72de: $c7
    inc a                                         ; $72df: $3c
    add [hl]                                      ; $72e0: $86
    cp [hl]                                       ; $72e1: $be
    xor d                                         ; $72e2: $aa
    ld a, $7a                                     ; $72e3: $3e $7a
    or b                                          ; $72e5: $b0
    ld [hl], $f8                                  ; $72e6: $36 $f8
    dec h                                         ; $72e8: $25
    ret z                                         ; $72e9: $c8

    rst $28                                       ; $72ea: $ef
    sub l                                         ; $72eb: $95
    sub e                                         ; $72ec: $93
    add d                                         ; $72ed: $82
    cp [hl]                                       ; $72ee: $be
    ld e, a                                       ; $72ef: $5f
    sub a                                         ; $72f0: $97
    ld b, d                                       ; $72f1: $42
    add hl, de                                    ; $72f2: $19
    ld [$9a4e], sp                                ; $72f3: $08 $4e $9a
    cp c                                          ; $72f6: $b9
    ld a, [de]                                    ; $72f7: $1a
    sbc [hl]                                      ; $72f8: $9e
    sub c                                         ; $72f9: $91
    xor $95                                       ; $72fa: $ee $95
    add a                                         ; $72fc: $87
    ld a, [$9fc8]                                 ; $72fd: $fa $c8 $9f
    db $eb                                        ; $7300: $eb
    sbc d                                         ; $7301: $9a
    jp z, Jump_000_0bf7                           ; $7302: $ca $f7 $0b

    rlca                                          ; $7305: $07
    ld e, h                                       ; $7306: $5c
    and [hl]                                      ; $7307: $a6
    cp [hl]                                       ; $7308: $be
    xor h                                         ; $7309: $ac
    sbc d                                         ; $730a: $9a
    or [hl]                                       ; $730b: $b6
    rst $08                                       ; $730c: $cf
    ld b, e                                       ; $730d: $43
    ld a, l                                       ; $730e: $7d
    adc $a9                                       ; $730f: $ce $a9
    ldh a, [$3c]                                  ; $7311: $f0 $3c
    and $31                                       ; $7313: $e6 $31
    db $f4                                        ; $7315: $f4
    ld d, l                                       ; $7316: $55
    push af                                       ; $7317: $f5
    pop de                                        ; $7318: $d1
    rst $30                                       ; $7319: $f7
    ld c, $a9                                     ; $731a: $0e $a9
    rst $18                                       ; $731c: $df
    ld b, a                                       ; $731d: $47
    ld [hl], a                                    ; $731e: $77
    add hl, de                                    ; $731f: $19
    jp hl                                         ; $7320: $e9


    rst $18                                       ; $7321: $df
    dec a                                         ; $7322: $3d
    add h                                         ; $7323: $84
    ld [hl], d                                    ; $7324: $72
    adc $0b                                       ; $7325: $ce $0b
    rlca                                          ; $7327: $07
    cp $f8                                        ; $7328: $fe $f8
    xor e                                         ; $732a: $ab
    ld a, e                                       ; $732b: $7b
    db $ed                                        ; $732c: $ed
    pop af                                        ; $732d: $f1
    rst $00                                       ; $732e: $c7
    xor c                                         ; $732f: $a9
    ld d, b                                       ; $7330: $50
    reti                                          ; $7331: $d9


    add hl, sp                                    ; $7332: $39
    inc [hl]                                      ; $7333: $34
    sbc a                                         ; $7334: $9f
    di                                            ; $7335: $f3
    ld [bc], a                                    ; $7336: $02
    ld l, l                                       ; $7337: $6d
    and $a9                                       ; $7338: $e6 $a9
    ld d, b                                       ; $733a: $50
    reti                                          ; $733b: $d9


    add hl, sp                                    ; $733c: $39
    ld d, b                                       ; $733d: $50
    jp z, $5093                                   ; $733e: $ca $93 $50

    call z, $daf7                                 ; $7341: $cc $f7 $da
    call z, $ee73                                 ; $7344: $cc $73 $ee
    ld bc, $ab59                                  ; $7347: $01 $59 $ab
    ld b, e                                       ; $734a: $43
    pop hl                                        ; $734b: $e1
    ld a, l                                       ; $734c: $7d
    ld e, $e9                                     ; $734d: $1e $e9
    rst $18                                       ; $734f: $df
    cp l                                          ; $7350: $bd
    rst $18                                       ; $7351: $df
    cp e                                          ; $7352: $bb
    ld l, c                                       ; $7353: $69
    ld b, e                                       ; $7354: $43
    rst $20                                       ; $7355: $e7
    ld a, [de]                                    ; $7356: $1a
    ld b, [hl]                                    ; $7357: $46
    rst $20                                       ; $7358: $e7
    jp nz, Jump_000_3433                          ; $7359: $c2 $33 $34

    rst $18                                       ; $735c: $df
    cpl                                           ; $735d: $2f
    rlca                                          ; $735e: $07
    cp $f8                                        ; $735f: $fe $f8
    dec hl                                        ; $7361: $2b
    db $ed                                        ; $7362: $ed
    cpl                                           ; $7363: $2f
    add a                                         ; $7364: $87
    sbc d                                         ; $7365: $9a
    ld hl, sp-$7b                                 ; $7366: $f8 $85
    or [hl]                                       ; $7368: $b6
    jp c, $739c                                   ; $7369: $da $9c $73

    ld l, b                                       ; $736c: $68
    ld e, [hl]                                    ; $736d: $5e
    inc c                                         ; $736e: $0c
    sub l                                         ; $736f: $95
    ld d, a                                       ; $7370: $57
    ld [bc], a                                    ; $7371: $02
    ld a, [c]                                     ; $7372: $f2
    and b                                         ; $7373: $a0
    ld e, b                                       ; $7374: $58
    xor $17                                       ; $7375: $ee $17
    daa                                           ; $7377: $27
    ld c, a                                       ; $7378: $4f
    db $fd                                        ; $7379: $fd
    ld d, [hl]                                    ; $737a: $56
    set 0, l                                      ; $737b: $cb $c5
    pop af                                        ; $737d: $f1
    rla                                           ; $737e: $17
    ld h, h                                       ; $737f: $64
    rst $20                                       ; $7380: $e7
    dec bc                                        ; $7381: $0b
    daa                                           ; $7382: $27
    ld l, $06                                     ; $7383: $2e $06
    ld h, c                                       ; $7385: $61

Call_05f_7386:
    and a                                         ; $7386: $a7
    jp nc, $fd99                                  ; $7387: $d2 $99 $fd

    ld [bc], a                                    ; $738a: $02
    daa                                           ; $738b: $27
    xor [hl]                                      ; $738c: $ae
    or [hl]                                       ; $738d: $b6
    nop                                           ; $738e: $00
    db $eb                                        ; $738f: $eb
    ret z                                         ; $7390: $c8

    rst $08                                       ; $7391: $cf
    cpl                                           ; $7392: $2f
    daa                                           ; $7393: $27
    xor [hl]                                      ; $7394: $ae
    push af                                       ; $7395: $f5
    ld [hl], e                                    ; $7396: $73
    db $e4                                        ; $7397: $e4
    rla                                           ; $7398: $17
    xor h                                         ; $7399: $ac
    jp z, $02f9                                   ; $739a: $ca $f9 $02

    daa                                           ; $739d: $27
    adc [hl]                                      ; $739e: $8e
    ld d, d                                       ; $739f: $52
    sub l                                         ; $73a0: $95
    rst $30                                       ; $73a1: $f7
    jr jr_05f_73cb                                ; $73a2: $18 $27

    ccf                                           ; $73a4: $3f
    ld d, $3f                                     ; $73a5: $16 $3f
    sub h                                         ; $73a7: $94
    ld d, h                                       ; $73a8: $54
    adc $17                                       ; $73a9: $ce $17
    daa                                           ; $73ab: $27
    adc $1d                                       ; $73ac: $ce $1d
    ld d, h                                       ; $73ae: $54
    add l                                         ; $73af: $85
    xor h                                         ; $73b0: $ac
    inc d                                         ; $73b1: $14
    ld e, $ff                                     ; $73b2: $1e $ff
    xor d                                         ; $73b4: $aa
    db $fc                                        ; $73b5: $fc
    ld [bc], a                                    ; $73b6: $02
    daa                                           ; $73b7: $27
    xor [hl]                                      ; $73b8: $ae
    ld d, d                                       ; $73b9: $52
    ld a, b                                       ; $73ba: $78
    ld de, $2b35                                  ; $73bb: $11 $35 $2b
    cp e                                          ; $73be: $bb
    sbc c                                         ; $73bf: $99
    or l                                          ; $73c0: $b5
    ld b, c                                       ; $73c1: $41
    dec l                                         ; $73c2: $2d
    adc $17                                       ; $73c3: $ce $17
    daa                                           ; $73c5: $27

jr_05f_73c6:
    ld c, [hl]                                    ; $73c6: $4e
    add hl, de                                    ; $73c7: $19
    db $dd                                        ; $73c8: $dd
    ld e, a                                       ; $73c9: $5f
    daa                                           ; $73ca: $27

jr_05f_73cb:
    adc [hl]                                      ; $73cb: $8e
    ld d, e                                       ; $73cc: $53
    db $d3                                        ; $73cd: $d3
    cp e                                          ; $73ce: $bb
    dec hl                                        ; $73cf: $2b
    rst $38                                       ; $73d0: $ff
    ld hl, sp+$05                                 ; $73d1: $f8 $05
    rla                                           ; $73d3: $17
    and $50                                       ; $73d4: $e6 $50
    ld e, a                                       ; $73d6: $5f
    db $fd                                        ; $73d7: $fd
    ld c, a                                       ; $73d8: $4f
    ld [hl], a                                    ; $73d9: $77
    sbc [hl]                                      ; $73da: $9e

jr_05f_73db:
    or e                                          ; $73db: $b3
    inc bc                                        ; $73dc: $03
    ld l, $23                                     ; $73dd: $2e $23
    ld a, a                                       ; $73df: $7f
    adc $3c                                       ; $73e0: $ce $3c
    dec d                                         ; $73e2: $15
    sub d                                         ; $73e3: $92
    ld l, c                                       ; $73e4: $69
    ld b, e                                       ; $73e5: $43
    rst $20                                       ; $73e6: $e7
    sbc [hl]                                      ; $73e7: $9e
    ld h, [hl]                                    ; $73e8: $66
    ld d, l                                       ; $73e9: $55
    ld e, [hl]                                    ; $73ea: $5e
    inc c                                         ; $73eb: $0c
    ld a, l                                       ; $73ec: $7d
    jr nz, jr_05f_73db                            ; $73ed: $20 $ec

    ld [hl], h                                    ; $73ef: $74
    xor l                                         ; $73f0: $ad
    ld c, [hl]                                    ; $73f1: $4e
    rrca                                          ; $73f2: $0f
    and c                                         ; $73f3: $a1
    call c, Call_000_072f                         ; $73f4: $dc $2f $07
    dec l                                         ; $73f7: $2d
    adc $a1                                       ; $73f8: $ce $a1
    ld a, $f3                                     ; $73fa: $3e $f3
    adc $77                                       ; $73fc: $ce $77
    ld d, d                                       ; $73fe: $52
    rra                                           ; $73ff: $1f
    or $48                                        ; $7400: $f6 $48
    xor e                                         ; $7402: $ab
    ld [$3285], a                                 ; $7403: $ea $85 $32
    adc $d0                                       ; $7406: $ce $d0
    pop af                                        ; $7408: $f1
    and c                                         ; $7409: $a1
    ld [$854e], sp                                ; $740a: $08 $4e $85
    db $e4                                        ; $740d: $e4
    ld [hl], e                                    ; $740e: $73
    halt                                          ; $740f: $76
    dec c                                         ; $7410: $0d
    db $fd                                        ; $7411: $fd
    db $d3                                        ; $7412: $d3
    or $34                                        ; $7413: $f6 $34
    xor e                                         ; $7415: $ab
    ld a, [c]                                     ; $7416: $f2
    cp l                                          ; $7417: $bd
    add e                                         ; $7418: $83
    jr nz, jr_05f_73c6                            ; $7419: $20 $ab

    rst $38                                       ; $741b: $ff
    jp hl                                         ; $741c: $e9


    jr nz, jr_05f_7484                            ; $741d: $20 $65

    adc $a5                                       ; $741f: $ce $a5
    ld a, c                                       ; $7421: $79
    dec e                                         ; $7422: $1d
    ld a, d                                       ; $7423: $7a
    rst $30                                       ; $7424: $f7
    ld h, b                                       ; $7425: $60
    ld d, h                                       ; $7426: $54
    cp d                                          ; $7427: $ba
    dec de                                        ; $7428: $1b
    dec e                                         ; $7429: $1d
    sub h                                         ; $742a: $94
    ld [hl-], a                                   ; $742b: $32
    rst $18                                       ; $742c: $df
    cpl                                           ; $742d: $2f
    ld l, l                                       ; $742e: $6d
    ld h, [hl]                                    ; $742f: $66
    or $9c                                        ; $7430: $f6 $9c
    ld a, e                                       ; $7432: $7b
    ld e, h                                       ; $7433: $5c
    call z, $74ab                                 ; $7434: $cc $ab $74
    ld c, d                                       ; $7437: $4a
    ld b, a                                       ; $7438: $47
    dec bc                                        ; $7439: $0b
    rst $28                                       ; $743a: $ef
    cp [hl]                                       ; $743b: $be
    rst $28                                       ; $743c: $ef
    ld d, l                                       ; $743d: $55
    rst $30                                       ; $743e: $f7
    ret c                                         ; $743f: $d8

    cp e                                          ; $7440: $bb
    inc d                                         ; $7441: $14
    ld d, d                                       ; $7442: $52
    ld e, c                                       ; $7443: $59
    ei                                            ; $7444: $fb
    xor [hl]                                      ; $7445: $ae
    add e                                         ; $7446: $83
    ld a, $d4                                     ; $7447: $3e $d4
    rst $10                                       ; $7449: $d7
    ret nc                                        ; $744a: $d0

    jr nc, @-$03                                  ; $744b: $30 $fb

    sbc h                                         ; $744d: $9c
    rla                                           ; $744e: $17
    db $ed                                        ; $744f: $ed
    pop af                                        ; $7450: $f1
    rst $00                                       ; $7451: $c7
    push bc                                       ; $7452: $c5
    ret nc                                        ; $7453: $d0

Jump_05f_7454:
    add a                                         ; $7454: $87
    ld a, [$1fc8]                                 ; $7455: $fa $c8 $1f
    ld a, e                                       ; $7458: $7b
    ld d, c                                       ; $7459: $51
    ret z                                         ; $745a: $c8

    and c                                         ; $745b: $a1
    ld sp, hl                                     ; $745c: $f9
    sbc h                                         ; $745d: $9c
    rla                                           ; $745e: $17
    rla                                           ; $745f: $17
    jp z, $d61a                                   ; $7460: $ca $1a $d6

    ld [de], a                                    ; $7463: $12
    ld a, [hl]                                    ; $7464: $7e
    ld d, [hl]                                    ; $7465: $56
    or [hl]                                       ; $7466: $b6
    call c, $30bb                                 ; $7467: $dc $bb $30
    add a                                         ; $746a: $87
    ld a, [$d840]                                 ; $746b: $fa $40 $d8
    jp hl                                         ; $746e: $e9


    ld e, d                                       ; $746f: $5a
    sbc l                                         ; $7470: $9d
    and $73                                       ; $7471: $e6 $73
    ld e, [hl]                                    ; $7473: $5e
    rlca                                          ; $7474: $07
    ld e, h                                       ; $7475: $5c
    ld d, $1b                                     ; $7476: $16 $1b
    ld d, a                                       ; $7478: $57
    cp e                                          ; $7479: $bb
    ld a, c                                       ; $747a: $79
    and b                                         ; $747b: $a0
    sub h                                         ; $747c: $94
    ld l, c                                       ; $747d: $69
    inc hl                                        ; $747e: $23
    db $e3                                        ; $747f: $e3
    adc a                                         ; $7480: $8f
    ld b, e                                       ; $7481: $43
    di                                            ; $7482: $f3
    sbc h                                         ; $7483: $9c

jr_05f_7484:
    rst $30                                       ; $7484: $f7
    dec bc                                        ; $7485: $0b
    db $ed                                        ; $7486: $ed
    rst $08                                       ; $7487: $cf
    ld b, e                                       ; $7488: $43
    dec de                                        ; $7489: $1b
    ld [$9a7b], a                                 ; $748a: $ea $7b $9a
    adc e                                         ; $748d: $8b
    add hl, hl                                    ; $748e: $29
    jp hl                                         ; $748f: $e9


    ld b, l                                       ; $7490: $45
    call nc, $ecac                                ; $7491: $d4 $ac $ec
    ld h, [hl]                                    ; $7494: $66
    ld d, [hl]                                    ; $7495: $56
    ld [hl], a                                    ; $7496: $77
    rst $00                                       ; $7497: $c7
    rst $30                                       ; $7498: $f7
    ld l, $ee                                     ; $7499: $2e $ee
    ld a, [hl]                                    ; $749b: $7e
    add [hl]                                      ; $749c: $86
    and $35                                       ; $749d: $e6 $35
    ld a, [hl]                                    ; $749f: $7e
    ld a, [$017e]                                 ; $74a0: $fa $7e $01
    rla                                           ; $74a3: $17
    rlca                                          ; $74a4: $07
    db $e4                                        ; $74a5: $e4
    xor c                                         ; $74a6: $a9
    cp $d3                                        ; $74a7: $fe $d3
    cp h                                          ; $74a9: $bc
    or $9f                                        ; $74aa: $f6 $9f
    xor c                                         ; $74ac: $a9
    cp c                                          ; $74ad: $b9
    rst $10                                       ; $74ae: $d7
    and $9c                                       ; $74af: $e6 $9c
    ld [hl], e                                    ; $74b1: $73
    sub [hl]                                      ; $74b2: $96
    ld sp, $d948                                  ; $74b3: $31 $48 $d9
    db $e3                                        ; $74b6: $e3
    db $f4                                        ; $74b7: $f4
    xor $fb                                       ; $74b8: $ee $fb
    sbc $35                                       ; $74ba: $de $35
    ret nc                                        ; $74bc: $d0

    cp e                                          ; $74bd: $bb
    ld b, [hl]                                    ; $74be: $46
    add hl, hl                                    ; $74bf: $29
    rst $28                                       ; $74c0: $ef
    ld sp, $a22e                                  ; $74c1: $31 $2e $a2
    ld h, d                                       ; $74c4: $62
    ld [hl], l                                    ; $74c5: $75
    xor a                                         ; $74c6: $af
    ld hl, sp-$75                                 ; $74c7: $f8 $8b
    ld b, l                                       ; $74c9: $45
    ei                                            ; $74ca: $fb
    dec bc                                        ; $74cb: $0b
    db $ed                                        ; $74cc: $ed
    ld [hl], c                                    ; $74cd: $71
    ret z                                         ; $74ce: $c8

    add hl, sp                                    ; $74cf: $39
    ld b, a                                       ; $74d0: $47
    ld [$fab2], a                                 ; $74d1: $ea $b2 $fa
    add sp, -$16                                  ; $74d4: $e8 $ea
    ld e, [hl]                                    ; $74d6: $5e
    ld a, e                                       ; $74d7: $7b
    db $fc                                        ; $74d8: $fc
    ld [hl], c                                    ; $74d9: $71
    and h                                         ; $74da: $a4
    ld de, $239d                                  ; $74db: $11 $9d $23
    ld [hl], l                                    ; $74de: $75
    add hl, sp                                    ; $74df: $39
    rst $20                                       ; $74e0: $e7
    dec b                                         ; $74e1: $05
    db $ed                                        ; $74e2: $ed
    cp d                                          ; $74e3: $ba
    adc h                                         ; $74e4: $8c
    inc [hl]                                      ; $74e5: $34
    and d                                         ; $74e6: $a2
    ld [hl], e                                    ; $74e7: $73
    db $ed                                        ; $74e8: $ed
    add $18                                       ; $74e9: $c6 $18
    jp z, $f3bd                                   ; $74eb: $ca $bd $f3

    ld a, d                                       ; $74ee: $7a
    rst $30                                       ; $74ef: $f7
    ld [hl], h                                    ; $74f0: $74
    add hl, hl                                    ; $74f1: $29
    ld c, [hl]                                    ; $74f2: $4e
    pop af                                        ; $74f3: $f1
    ld h, d                                       ; $74f4: $62
    add sp, $23                                   ; $74f5: $e8 $23
    rst $38                                       ; $74f7: $ff
    sub c                                         ; $74f8: $91
    db $d3                                        ; $74f9: $d3
    ld c, e                                       ; $74fa: $4b
    ld [hl], a                                    ; $74fb: $77
    sbc $6b                                       ; $74fc: $de $6b
    di                                            ; $74fe: $f3
    call nc, Call_05f_723f                        ; $74ff: $d4 $3f $72
    ld d, c                                       ; $7502: $51
    rst $10                                       ; $7503: $d7
    call nz, Call_05f_63de                        ; $7504: $c4 $de $63
    inc e                                         ; $7507: $1c
    add d                                         ; $7508: $82
    ld a, b                                       ; $7509: $78
    adc l                                         ; $750a: $8d
    ld [hl], h                                    ; $750b: $74
    db $ec                                        ; $750c: $ec
    add l                                         ; $750d: $85
    or d                                          ; $750e: $b2
    rst $18                                       ; $750f: $df
    ld a, c                                       ; $7510: $79
    adc a                                         ; $7511: $8f
    sbc $a1                                       ; $7512: $de $a1
    ldh a, [$fd]                                  ; $7514: $f0 $fd
    ld [bc], a                                    ; $7516: $02
    rst $10                                       ; $7517: $d7
    ld a, h                                       ; $7518: $7c
    or l                                          ; $7519: $b5
    xor d                                         ; $751a: $aa
    ld a, [hl]                                    ; $751b: $7e
    rra                                           ; $751c: $1f
    ld [$7f23], a                                 ; $751d: $ea $23 $7f
    ld l, h                                       ; $7520: $6c
    db $ed                                        ; $7521: $ed
    cpl                                           ; $7522: $2f
    sub a                                         ; $7523: $97
    scf                                           ; $7524: $37
    ld l, c                                       ; $7525: $69
    inc de                                        ; $7526: $13
    ld a, l                                       ; $7527: $7d
    adc $a1                                       ; $7528: $ce $a1
    ld a, c                                       ; $752a: $79
    xor l                                         ; $752b: $ad
    and $18                                       ; $752c: $e6 $18
    ret nc                                        ; $752e: $d0

    or h                                          ; $752f: $b4
    ld a, l                                       ; $7530: $7d
    ld e, [hl]                                    ; $7531: $5e
    inc c                                         ; $7532: $0c
    ld d, e                                       ; $7533: $53
    pop hl                                        ; $7534: $e1
    ld a, c                                       ; $7535: $79
    sbc h                                         ; $7536: $9c
    adc e                                         ; $7537: $8b
    ld bc, $be9d                                  ; $7538: $01 $9d $be
    ld e, a                                       ; $753b: $5f
    ld l, l                                       ; $753c: $6d
    and $39                                       ; $753d: $e6 $39
    ld h, a                                       ; $753f: $67
    ld e, c                                       ; $7540: $59
    add hl, bc                                    ; $7541: $09
    cp b                                          ; $7542: $b8
    jp z, Jump_05f_793f                           ; $7543: $ca $3f $79

    ld d, c                                       ; $7546: $51
    ret z                                         ; $7547: $c8

    ld hl, $da14                                  ; $7548: $21 $14 $da
    jp c, $a67f                                   ; $754b: $da $7f $a6

    and $de                                       ; $754e: $e6 $de
    ld hl, $d5af                                  ; $7550: $21 $af $d5
    ld e, h                                       ; $7553: $5c
    add a                                         ; $7554: $87
    jp z, $d196                                   ; $7555: $ca $96 $d1

    ld e, l                                       ; $7558: $5d
    ld d, [hl]                                    ; $7559: $56
    ld a, [hl]                                    ; $755a: $7e
    inc a                                         ; $755b: $3c
    add h                                         ; $755c: $84
    or d                                          ; $755d: $b2
    ld d, b                                       ; $755e: $50
    ld d, [hl]                                    ; $755f: $56
    sbc d                                         ; $7560: $9a
    inc hl                                        ; $7561: $23
    dec l                                         ; $7562: $2d
    dec bc                                        ; $7563: $0b
    ld h, l                                       ; $7564: $65
    adc d                                         ; $7565: $8a
    jp c, $ba58                                   ; $7566: $da $58 $ba

    or d                                          ; $7569: $b2
    ld h, l                                       ; $756a: $65
    ccf                                           ; $756b: $3f
    ld a, [de]                                    ; $756c: $1a
    ld [bc], a                                    ; $756d: $02
    ld c, a                                       ; $756e: $4f
    rst $00                                       ; $756f: $c7
    jp z, $bc9a                                   ; $7570: $ca $9a $bc

    ld e, a                                       ; $7573: $5f
    db $ed                                        ; $7574: $ed
    and [hl]                                      ; $7575: $a6
    db $d3                                        ; $7576: $d3
    and $1c                                       ; $7577: $e6 $1c
    sbc d                                         ; $7579: $9a
    reti                                          ; $757a: $d9


    ld l, e                                       ; $757b: $6b
    rrca                                          ; $757c: $0f
    add l                                         ; $757d: $85
    ret c                                         ; $757e: $d8

    ld c, a                                       ; $757f: $4f
    xor [hl]                                      ; $7580: $ae
    ld d, [hl]                                    ; $7581: $56

jr_05f_7582:
    or l                                          ; $7582: $b5
    sub l                                         ; $7583: $95
    xor [hl]                                      ; $7584: $ae
    push de                                       ; $7585: $d5
    ld [hl], d                                    ; $7586: $72
    adc $0b                                       ; $7587: $ce $0b
    rlca                                          ; $7589: $07
    ld a, $6d                                     ; $758a: $3e $6d
    ld l, b                                       ; $758c: $68
    sbc [hl]                                      ; $758d: $9e
    di                                            ; $758e: $f3
    ld e, [hl]                                    ; $758f: $5e
    ld a, e                                       ; $7590: $7b
    db $fc                                        ; $7591: $fc
    ld [hl], c                                    ; $7592: $71
    adc $a1                                       ; $7593: $ce $a1
    ld a, c                                       ; $7595: $79
    xor b                                         ; $7596: $a8
    adc a                                         ; $7597: $8f
    db $fc                                        ; $7598: $fc
    add hl, sp                                    ; $7599: $39
    ld e, b                                       ; $759a: $58
    db $eb                                        ; $759b: $eb
    dec bc                                        ; $759c: $0b
    ld e, d                                       ; $759d: $5a
    adc $d9                                       ; $759e: $ce $d9
    add l                                         ; $75a0: $85
    add hl, sp                                    ; $75a1: $39
    call nc, $df77                                ; $75a2: $d4 $77 $df
    rst $30                                       ; $75a5: $f7
    ret z                                         ; $75a6: $c8

    rst $38                                       ; $75a7: $ff
    sbc h                                         ; $75a8: $9c
    di                                            ; $75a9: $f3
    ld [bc], a                                    ; $75aa: $02
    rla                                           ; $75ab: $17
    dec sp                                        ; $75ac: $3b
    ld h, h                                       ; $75ad: $64
    pop af                                        ; $75ae: $f1
    ld b, d                                       ; $75af: $42
    reti                                          ; $75b0: $d9


    ld b, l                                       ; $75b1: $45
    ld l, c                                       ; $75b2: $69
    and h                                         ; $75b3: $a4
    adc l                                         ; $75b4: $8d
    db $fc                                        ; $75b5: $fc
    cp c                                          ; $75b6: $b9
    ld c, e                                       ; $75b7: $4b
    ld d, [hl]                                    ; $75b8: $56
    call $d2bb                                    ; $75b9: $cd $bb $d2
    ld c, c                                       ; $75bc: $49
    ld d, h                                       ; $75bd: $54
    ld [hl], e                                    ; $75be: $73
    adc $0b                                       ; $75bf: $ce $0b
    rlca                                          ; $75c1: $07
    ld a, $6d                                     ; $75c2: $3e $6d
    db $e4                                        ; $75c4: $e4
    sub a                                         ; $75c5: $97
    add hl, sp                                    ; $75c6: $39
    rlca                                          ; $75c7: $07
    adc e                                         ; $75c8: $8b
    ld b, d                                       ; $75c9: $42
    and [hl]                                      ; $75ca: $a6

jr_05f_75cb:
    dec hl                                        ; $75cb: $2b
    ld a, e                                       ; $75cc: $7b
    ld [hl], c                                    ; $75cd: $71
    jr z, jr_05f_7582                             ; $75ce: $28 $b2

    ld a, [$c79f]                                 ; $75d0: $fa $9f $c7
    or d                                          ; $75d3: $b2
    rst $00                                       ; $75d4: $c7
    jr c, jr_05f_75cb                             ; $75d5: $38 $f4

    cp [hl]                                       ; $75d7: $be
    ld h, b                                       ; $75d8: $60
    ld a, d                                       ; $75d9: $7a
    or c                                          ; $75da: $b1
    jp hl                                         ; $75db: $e9


    db $dd                                        ; $75dc: $dd
    add sp, -$0c                                  ; $75dd: $e8 $f4
    db $fd                                        ; $75df: $fd
    ld [bc], a                                    ; $75e0: $02
    db $ed                                        ; $75e1: $ed
    and [hl]                                      ; $75e2: $a6
    db $d3                                        ; $75e3: $d3
    halt                                          ; $75e4: $76
    ld [hl], l                                    ; $75e5: $75
    db $10                                        ; $75e6: $10
    jp c, $e362                                   ; $75e7: $da $62 $e3

    ld d, b                                       ; $75ea: $50
    rra                                           ; $75eb: $1f
    add hl, de                                    ; $75ec: $19

jr_05f_75ed:
    ei                                            ; $75ed: $fb
    add hl, de                                    ; $75ee: $19
    sbc d                                         ; $75ef: $9a
    ld b, a                                       ; $75f0: $47
    ld a, [hl-]                                   ; $75f1: $3a
    rst $20                                       ; $75f2: $e7
    inc a                                         ; $75f3: $3c
    rst $20                                       ; $75f4: $e7
    dec b                                         ; $75f5: $05
    rla                                           ; $75f6: $17
    dec sp                                        ; $75f7: $3b
    ld h, h                                       ; $75f8: $64
    ld sp, $686d                                  ; $75f9: $31 $6d $68
    sbc [hl]                                      ; $75fc: $9e
    ld [hl], e                                    ; $75fd: $73
    ld a, [hl-]                                   ; $75fe: $3a
    ld c, c                                       ; $75ff: $49
    adc l                                         ; $7600: $8d
    ld a, [hl-]                                   ; $7601: $3a
    inc d                                         ; $7602: $14
    sbc $e7                                       ; $7603: $de $e7
    ld d, l                                       ; $7605: $55
    add [hl]                                      ; $7606: $86
    ld c, h                                       ; $7607: $4c
    ld l, e                                       ; $7608: $6b
    ld a, a                                       ; $7609: $7f
    ld bc, $b1ed                                  ; $760a: $01 $ed $b1
    sbc a                                         ; $760d: $9f
    add hl, sp                                    ; $760e: $39
    ld b, a                                       ; $760f: $47
    ld a, [hl]                                    ; $7610: $7e
    add hl, sp                                    ; $7611: $39
    rst $20                                       ; $7612: $e7
    dec b                                         ; $7613: $05
    add a                                         ; $7614: $87
    cp h                                          ; $7615: $bc
    rst $08                                       ; $7616: $cf
    ld d, e                                       ; $7617: $53
    pop hl                                        ; $7618: $e1
    ld a, c                                       ; $7619: $79
    cp h                                          ; $761a: $bc
    jr jr_05f_75ed                                ; $761b: $18 $d0

    jp hl                                         ; $761d: $e9


    db $dd                                        ; $761e: $dd
    rst $30                                       ; $761f: $f7
    dec a                                         ; $7620: $3d
    ld c, $c5                                     ; $7621: $0e $c5
    cp h                                          ; $7623: $bc
    xor d                                         ; $7624: $aa
    ld a, [hl]                                    ; $7625: $7e
    rra                                           ; $7626: $1f
    ld b, e                                       ; $7627: $43
    rst $18                                       ; $7628: $df
    rst $20                                       ; $7629: $e7
    add hl, hl                                    ; $762a: $29
    ld l, d                                       ; $762b: $6a
    ld a, [$017e]                                 ; $762c: $fa $7e $01
    rla                                           ; $762f: $17
    scf                                           ; $7630: $37
    rlca                                          ; $7631: $07
    ld c, d                                       ; $7632: $4a
    ld a, c                                       ; $7633: $79
    ld d, c                                       ; $7634: $51
    ret z                                         ; $7635: $c8

    push af                                       ; $7636: $f5
    cpl                                           ; $7637: $2f
    add l                                         ; $7638: $85
    rla                                           ; $7639: $17
    ld d, e                                       ; $763a: $53
    call nc, $fbee                                ; $763b: $d4 $ee $fb

jr_05f_763e:
    ld e, $87                                     ; $763e: $1e $87
    ld h, d                                       ; $7640: $62
    sbc [hl]                                      ; $7641: $9e
    and d                                         ; $7642: $a2
    and [hl]                                      ; $7643: $a6
    ld [hl], e                                    ; $7644: $73
    ld d, l                                       ; $7645: $55
    ld a, [hl]                                    ; $7646: $7e
    ld a, [c]                                     ; $7647: $f2
    db $fd                                        ; $7648: $fd
    ld [bc], a                                    ; $7649: $02
    rst $20                                       ; $764a: $e7
    push af                                       ; $764b: $f5
    xor $85                                       ; $764c: $ee $85
    sub $60                                       ; $764e: $d6 $60
    ld [hl], c                                    ; $7650: $71
    jr z, jr_05f_76b5                             ; $7651: $28 $62

    or c                                          ; $7653: $b1
    or $17                                        ; $7654: $f6 $17
    ld l, l                                       ; $7656: $6d
    and $55                                       ; $7657: $e6 $55
    rst $20                                       ; $7659: $e7
    ld [hl], h                                    ; $765a: $74
    inc e                                         ; $765b: $1c
    ld b, e                                       ; $765c: $43
    rst $18                                       ; $765d: $df
    rst $20                                       ; $765e: $e7
    push bc                                       ; $765f: $c5
    sub h                                         ; $7660: $94
    db $f4                                        ; $7661: $f4
    inc h                                         ; $7662: $24
    sub h                                         ; $7663: $94
    xor $95                                       ; $7664: $ee $95
    add b                                         ; $7666: $80
    sbc [hl]                                      ; $7667: $9e
    cp e                                          ; $7668: $bb
    ld h, e                                       ; $7669: $63
    daa                                           ; $766a: $27
    ld l, l                                       ; $766b: $6d
    ld sp, $6a2c                                  ; $766c: $31 $2c $6a
    and $60                                       ; $766f: $e6 $60
    call Call_05f_5fbc                            ; $7671: $cd $bc $5f
    ld l, l                                       ; $7674: $6d
    and $39                                       ; $7675: $e6 $39
    ld d, a                                       ; $7677: $57
    push hl                                       ; $7678: $e5
    daa                                           ; $7679: $27
    adc a                                         ; $767a: $8f
    ld bc, $d0c7                                  ; $767b: $01 $c7 $d0
    rst $30                                       ; $767e: $f7
    and e                                         ; $767f: $a3
    ld a, [c]                                     ; $7680: $f2
    and l                                         ; $7681: $a5
    call c, Call_000_072f                         ; $7682: $dc $2f $07
    ld e, h                                       ; $7685: $5c
    and $1c                                       ; $7686: $e6 $1c
    jp hl                                         ; $7688: $e9


    ld e, h                                       ; $7689: $5c
    inc d                                         ; $768a: $14
    ld [hl], d                                    ; $768b: $72
    sbc a                                         ; $768c: $9f
    ld d, a                                       ; $768d: $57
    dec l                                         ; $768e: $2d
    add sp, $3d                                   ; $768f: $e8 $3d
    jr nz, jr_05f_763e                            ; $7691: $20 $ab

    ld d, h                                       ; $7693: $54
    ld de, $aa57                                  ; $7694: $11 $57 $aa
    db $ec                                        ; $7697: $ec
    ld b, a                                       ; $7698: $47
    xor e                                         ; $7699: $ab
    ld l, h                                       ; $769a: $6c
    inc e                                         ; $769b: $1c
    ld b, e                                       ; $769c: $43
    ld e, a                                       ; $769d: $5f
    ld a, e                                       ; $769e: $7b
    jr z, @-$3a                                   ; $769f: $28 $c4

    ld a, [hl]                                    ; $76a1: $7e
    ld [hl], d                                    ; $76a2: $72
    cp l                                          ; $76a3: $bd
    ld e, a                                       ; $76a4: $5f
    add a                                         ; $76a5: $87
    call c, $f0e3                                 ; $76a6: $dc $e3 $f0
    inc c                                         ; $76a9: $0c
    dec a                                         ; $76aa: $3d
    ld d, b                                       ; $76ab: $50
    jp z, $1653                                   ; $76ac: $ca $53 $16

    ld [hl], h                                    ; $76af: $74
    adc [hl]                                      ; $76b0: $8e
    and c                                         ; $76b1: $a1
    rst $28                                       ; $76b2: $ef
    ld sp, hl                                     ; $76b3: $f9
    dec b                                         ; $76b4: $05

jr_05f_76b5:
    ld l, b                                       ; $76b5: $68
    ld d, e                                       ; $76b6: $53
    ld e, a                                       ; $76b7: $5f
    halt                                          ; $76b8: $76
    ld d, b                                       ; $76b9: $50
    cpl                                           ; $76ba: $2f
    and l                                         ; $76bb: $a5
    dec sp                                        ; $76bc: $3b
    cp l                                          ; $76bd: $bd
    ld a, [$dd05]                                 ; $76be: $fa $05 $dd
    and c                                         ; $76c1: $a1
    ld c, h                                       ; $76c2: $4c
    dec b                                         ; $76c3: $05
    xor c                                         ; $76c4: $a9
    sbc h                                         ; $76c5: $9c
    cp d                                          ; $76c6: $ba
    db $d3                                        ; $76c7: $d3
    adc e                                         ; $76c8: $8b
    jp nc, $fe4f                                  ; $76c9: $d2 $4f $fe

    ld h, d                                       ; $76cc: $62
    ld b, c                                       ; $76cd: $41
    adc a                                         ; $76ce: $8f
    ld b, e                                       ; $76cf: $43
    cp c                                          ; $76d0: $b9
    ld e, a                                       ; $76d1: $5f
    rlca                                          ; $76d2: $07
    ld e, h                                       ; $76d3: $5c
    ld d, [hl]                                    ; $76d4: $56
    ld a, [hl-]                                   ; $76d5: $3a
    dec b                                         ; $76d6: $05
    sbc l                                         ; $76d7: $9d
    ld a, e                                       ; $76d8: $7b
    and b                                         ; $76d9: $a0
    adc h                                         ; $76da: $8c
    and c                                         ; $76db: $a1
    rst $28                                       ; $76dc: $ef
    di                                            ; $76dd: $f3
    ld d, h                                       ; $76de: $54
    ld a, b                                       ; $76df: $78
    ld e, $8f                                     ; $76e0: $1e $8f
    and h                                         ; $76e2: $a4
    ei                                            ; $76e3: $fb
    ld e, c                                       ; $76e4: $59
    jr z, @-$53                                   ; $76e5: $28 $ab

    ld a, [bc]                                    ; $76e7: $0a
    ld [hl+], a                                   ; $76e8: $22
    or $18                                        ; $76e9: $f6 $18
    ld a, [$1424]                                 ; $76eb: $fa $24 $14
    di                                            ; $76ee: $f3
    cp [hl]                                       ; $76ef: $be
    and b                                         ; $76f0: $a0
    ld a, c                                       ; $76f1: $79
    ld d, $1c                                     ; $76f2: $16 $1c
    sbc d                                         ; $76f4: $9a
    reti                                          ; $76f5: $d9


    dec sp                                        ; $76f6: $3b
    xor b                                         ; $76f7: $a8
    sub a                                         ; $76f8: $97
    jp nc, Jump_05f_4c9d                          ; $76f9: $d2 $9d $4c

    and l                                         ; $76fc: $a5
    rst $18                                       ; $76fd: $df
    ld l, e                                       ; $76fe: $6b
    inc sp                                        ; $76ff: $33
    ld c, a                                       ; $7700: $4f
    push hl                                       ; $7701: $e5
    rst $00                                       ; $7702: $c7
    ld [$fed4], a                                 ; $7703: $ea $d4 $fe
    ld [bc], a                                    ; $7706: $02
    rlca                                          ; $7707: $07
    ld e, h                                       ; $7708: $5c
    ld b, [hl]                                    ; $7709: $46
    ld a, [hl]                                    ; $770a: $7e
    ld [hl], h                                    ; $770b: $74
    xor $f3                                       ; $770c: $ee $f3
    ret z                                         ; $770e: $c8

    rra                                           ; $770f: $1f
    ld a, e                                       ; $7710: $7b
    rlca                                          ; $7711: $07
    push af                                       ; $7712: $f5
    ld d, d                                       ; $7713: $52
    cp d                                          ; $7714: $ba
    sub e                                         ; $7715: $93
    xor c                                         ; $7716: $a9
    db $f4                                        ; $7717: $f4
    or l                                          ; $7718: $b5
    sbc d                                         ; $7719: $9a
    cp e                                          ; $771a: $bb
    rst $28                                       ; $771b: $ef
    ld a, e                                       ; $771c: $7b
    adc a                                         ; $771d: $8f
    ld h, l                                       ; $771e: $65
    ld d, l                                       ; $771f: $55
    dec b                                         ; $7720: $05
    adc e                                         ; $7721: $8b
    rst $20                                       ; $7722: $e7
    ld e, h                                       ; $7723: $5c
    ld d, l                                       ; $7724: $55
    ld d, h                                       ; $7725: $54
    ld de, $7f6b                                  ; $7726: $11 $6b $7f
    ld bc, $5c07                                  ; $7729: $01 $07 $5c
    ld b, [hl]                                    ; $772c: $46
    ld [hl], $1b                                  ; $772d: $36 $1b
    adc $81                                       ; $772f: $ce $81
    ld d, d                                       ; $7731: $52
    and [hl]                                      ; $7732: $a6
    db $ed                                        ; $7733: $ed
    di                                            ; $7734: $f3
    ret nc                                        ; $7735: $d0

    cp h                                          ; $7736: $bc
    add e                                         ; $7737: $83
    ld a, d                                       ; $7738: $7a
    add hl, hl                                    ; $7739: $29
    db $dd                                        ; $773a: $dd
    ret                                           ; $773b: $c9


    ld d, h                                       ; $773c: $54
    ld a, [$66a2]                                 ; $773d: $fa $a2 $66
    xor $01                                       ; $7740: $ee $01

jr_05f_7742:
    sbc c                                         ; $7742: $99
    add sp, $4f                                   ; $7743: $e8 $4f
    push af                                       ; $7745: $f5
    jr jr_05f_7742                                ; $7746: $18 $fa

    ld a, $af                                     ; $7748: $3e $af
    ld a, d                                       ; $774a: $7a
    sub l                                         ; $774b: $95
    ld b, e                                       ; $774c: $43
    ld c, [hl]                                    ; $774d: $4e
    rst $00                                       ; $774e: $c7
    ei                                            ; $774f: $fb
    dec b                                         ; $7750: $05
    ld l, l                                       ; $7751: $6d
    adc $35                                       ; $7752: $ce $35
    db $f4                                        ; $7754: $f4
    ld b, h                                       ; $7755: $44
    cpl                                           ; $7756: $2f
    and [hl]                                      ; $7757: $a6
    and h                                         ; $7758: $a4
    rla                                           ; $7759: $17
    ld [hl], l                                    ; $775a: $75
    and a                                         ; $775b: $a7
    rst $10                                       ; $775c: $d7
    and b                                         ; $775d: $a0
    adc b                                         ; $775e: $88
    ld a, [c]                                     ; $775f: $f2
    ld e, d                                       ; $7760: $5a
    call Call_05f_45a1                            ; $7761: $cd $a1 $45
    cp h                                          ; $7764: $bc
    sub [hl]                                      ; $7765: $96
    inc sp                                        ; $7766: $33
    add e                                         ; $7767: $83
    call c, $e72f                                 ; $7768: $dc $2f $e7
    db $eb                                        ; $776b: $eb
    adc c                                         ; $776c: $89
    ld e, $dd                                     ; $776d: $1e $dd

jr_05f_776f:
    ld h, l                                       ; $776f: $65
    ld sp, $f288                                  ; $7770: $31 $88 $f2
    jr jr_05f_776f                                ; $7773: $18 $fa

    ld c, $ea                                     ; $7775: $0e $ea
    and l                                         ; $7777: $a5
    ld [hl], h                                    ; $7778: $74
    and a                                         ; $7779: $a7
    ld hl, sp-$64                                 ; $777a: $f8 $9c
    rla                                           ; $777c: $17
    rlca                                          ; $777d: $07
    ld e, h                                       ; $777e: $5c
    ld d, $43                                     ; $777f: $16 $43
    ld e, a                                       ; $7781: $5f
    ld c, h                                       ; $7782: $4c
    ld c, c                                       ; $7783: $49
    rrca                                          ; $7784: $0f
    dec l                                         ; $7785: $2d
    adc e                                         ; $7786: $8b
    xor b                                         ; $7787: $a8
    ld e, c                                       ; $7788: $59
    reti                                          ; $7789: $d9


    or h                                          ; $778a: $b4
    and c                                         ; $778b: $a1
    ld [hl], e                                    ; $778c: $73
    push de                                       ; $778d: $d5
    cp c                                          ; $778e: $b9
    or $50                                        ; $778f: $f6 $50
    adc b                                         ; $7791: $88
    db $fd                                        ; $7792: $fd
    db $e4                                        ; $7793: $e4
    ld a, d                                       ; $7794: $7a
    cp a                                          ; $7795: $bf
    rlca                                          ; $7796: $07
    ld e, h                                       ; $7797: $5c
    and $9c                                       ; $7798: $e6 $9c
    ld a, [bc]                                    ; $779a: $0a
    rst $08                                       ; $779b: $cf
    ld h, e                                       ; $779c: $63
    ld e, [hl]                                    ; $779d: $5e
    rst $38                                       ; $779e: $ff
    ld d, d                                       ; $779f: $52
    ld h, d                                       ; $77a0: $62
    db $d3                                        ; $77a1: $d3
    db $eb                                        ; $77a2: $eb
    and d                                         ; $77a3: $a2
    db $fc                                        ; $77a4: $fc
    adc e                                         ; $77a5: $8b
    ld b, d                                       ; $77a6: $42
    xor $f3                                       ; $77a7: $ee $f3
    ld c, d                                       ; $77a9: $4a
    ld [hl], e                                    ; $77aa: $73
    xor l                                         ; $77ab: $ad
    and $da                                       ; $77ac: $e6 $da
    ld b, e                                       ; $77ae: $43
    ld hl, $93f6                                  ; $77af: $21 $f6 $93
    db $eb                                        ; $77b2: $eb
    db $fd                                        ; $77b3: $fd
    ld [bc], a                                    ; $77b4: $02
    rlca                                          ; $77b5: $07
    ld e, h                                       ; $77b6: $5c
    ld b, [hl]                                    ; $77b7: $46
    ld [hl], $1b                                  ; $77b8: $36 $1b
    adc $81                                       ; $77ba: $ce $81
    ld d, d                                       ; $77bc: $52
    and [hl]                                      ; $77bd: $a6
    db $ed                                        ; $77be: $ed
    di                                            ; $77bf: $f3
    add sp, $2e                                   ; $77c0: $e8 $2e
    ld l, e                                       ; $77c2: $6b
    ld [hl], h                                    ; $77c3: $74
    adc b                                         ; $77c4: $88
    sbc l                                         ; $77c5: $9d
    ld d, e                                       ; $77c6: $53
    call nc, $d574                                ; $77c7: $d4 $74 $d5
    sub h                                         ; $77ca: $94
    ei                                            ; $77cb: $fb
    dec b                                         ; $77cc: $05
    rlca                                          ; $77cd: $07
    ld e, h                                       ; $77ce: $5c
    ld d, $43                                     ; $77cf: $16 $43
    rst $28                                       ; $77d1: $ef
    ld e, $55                                     ; $77d2: $1e $55

jr_05f_77d4:
    xor d                                         ; $77d4: $aa
    ld [hl-], a                                   ; $77d5: $32
    ld l, l                                       ; $77d6: $6d
    sbc a                                         ; $77d7: $9f
    rst $30                                       ; $77d8: $f7
    add b                                         ; $77d9: $80
    db $ec                                        ; $77da: $ec
    add hl, bc                                    ; $77db: $09
    cp c                                          ; $77dc: $b9
    ld e, $70                                     ; $77dd: $1e $70
    rrca                                          ; $77df: $0f
    sub h                                         ; $77e0: $94
    dec [hl]                                      ; $77e1: $35
    ld e, h                                       ; $77e2: $5c
    reti                                          ; $77e3: $d9


    rst $08                                       ; $77e4: $cf
    db $e3                                        ; $77e5: $e3
    add l                                         ; $77e6: $85
    ret c                                         ; $77e7: $d8

    cp c                                          ; $77e8: $b9
    rlca                                          ; $77e9: $07
    ld h, h                                       ; $77ea: $64
    ld l, $96                                     ; $77eb: $2e $96
    or l                                          ; $77ed: $b5
    sbc d                                         ; $77ee: $9a
    xor d                                         ; $77ef: $aa
    ld d, e                                       ; $77f0: $53
    ld d, b                                       ; $77f1: $50
    ld b, b                                       ; $77f2: $40
    jp z, Jump_000_02fd                           ; $77f3: $ca $fd $02

    rst $10                                       ; $77f6: $d7
    ld b, c                                       ; $77f7: $41
    ld [hl], l                                    ; $77f8: $75
    ld c, $3d                                     ; $77f9: $0e $3d
    sla d                                         ; $77fb: $cb $22
    add sp, -$31                                  ; $77fd: $e8 $cf
    add hl, sp                                    ; $77ff: $39
    cpl                                           ; $7800: $2f
    rlca                                          ; $7801: $07
    ld e, h                                       ; $7802: $5c
    ld b, [hl]                                    ; $7803: $46
    ld [hl], $1b                                  ; $7804: $36 $1b
    ld c, [hl]                                    ; $7806: $4e
    jp c, $8f3e                                   ; $7807: $da $3e $8f

    xor $32                                       ; $780a: $ee $32
    dec d                                         ; $780c: $15
    sbc [hl]                                      ; $780d: $9e
    rst $00                                       ; $780e: $c7
    cp c                                          ; $780f: $b9
    ld d, [hl]                                    ; $7810: $56
    ld [hl], e                                    ; $7811: $73
    db $ed                                        ; $7812: $ed
    ld a, d                                       ; $7813: $7a
    inc d                                         ; $7814: $14
    ld [hl], l                                    ; $7815: $75
    or a                                          ; $7816: $b7
    db $f4                                        ; $7817: $f4
    jr z, jr_05f_77d4                             ; $7818: $28 $ba

    rst $10                                       ; $781a: $d7
    ld h, [hl]                                    ; $781b: $66
    ld e, [hl]                                    ; $781c: $5e
    db $fc                                        ; $781d: $fc
    ld [hl], e                                    ; $781e: $73
    pop de                                        ; $781f: $d1
    rst $08                                       ; $7820: $cf
    ld a, [hl-]                                   ; $7821: $3a
    dec d                                         ; $7822: $15
    ld a, d                                       ; $7823: $7a
    ld [hl], a                                    ; $7824: $77
    ld bc, $b9fd                                  ; $7825: $01 $fd $b9
    ld e, a                                       ; $7828: $5f
    rst $20                                       ; $7829: $e7
    ld e, e                                       ; $782a: $5b
    push af                                       ; $782b: $f5

jr_05f_782c:
    ld e, a                                       ; $782c: $5f
    sbc h                                         ; $782d: $9c
    or h                                          ; $782e: $b4
    pop de                                        ; $782f: $d1
    ld e, l                                       ; $7830: $5d
    ld b, [hl]                                    ; $7831: $46
    cp $1c                                        ; $7832: $fe $1c
    rst $20                                       ; $7834: $e7
    adc a                                         ; $7835: $8f
    dec sp                                        ; $7836: $3b
    rst $28                                       ; $7837: $ef
    ld sp, $01ee                                  ; $7838: $31 $ee $01
    ld e, [hl]                                    ; $783b: $5e
    ld l, l                                       ; $783c: $6d
    ld b, c                                       ; $783d: $41
    cp a                                          ; $783e: $bf
    ld e, a                                       ; $783f: $5f
    rlca                                          ; $7840: $07
    ld e, h                                       ; $7841: $5c
    ld b, [hl]                                    ; $7842: $46
    cp $1c                                        ; $7843: $fe $1c
    jr z, jr_05f_782c                             ; $7845: $28 $e5

    ld sp, $18e0                                  ; $7847: $31 $e0 $18
    ld a, [$af3e]                                 ; $784a: $fa $3e $af
    jp z, $ca57                                   ; $784d: $ca $57 $ca

    rst $30                                       ; $7850: $f7
    ld c, $b8                                     ; $7851: $0e $b8
    call z, $1d39                                 ; $7853: $cc $39 $1d
    dec a                                         ; $7856: $3d
    ld b, a                                       ; $7857: $47
    db $ec                                        ; $7858: $ec
    inc e                                         ; $7859: $1c
    ld a, d                                       ; $785a: $7a
    sub l                                         ; $785b: $95
    ld b, e                                       ; $785c: $43

Call_05f_785d:
    ld a, d                                       ; $785d: $7a
    xor l                                         ; $785e: $ad
    nop                                           ; $785f: $00
    jp nz, Jump_000_0bf7                          ; $7860: $c2 $f7 $0b

    rlca                                          ; $7863: $07
    ld e, h                                       ; $7864: $5c
    ld b, [hl]                                    ; $7865: $46
    cp $dc                                        ; $7866: $fe $dc
    rst $28                                       ; $7868: $ef
    sbc b                                         ; $7869: $98
    ld d, b                                       ; $786a: $50
    and [hl]                                      ; $786b: $a6
    xor b                                         ; $786c: $a8
    ret                                           ; $786d: $c9


    ld a, e                                       ; $786e: $7b
    adc h                                         ; $786f: $8c
    db $e3                                        ; $7870: $e3
    ld d, b                                       ; $7871: $50
    ld d, $51                                     ; $7872: $16 $51
    ld d, e                                       ; $7874: $53
    ei                                            ; $7875: $fb
    dec bc                                        ; $7876: $0b
    rlca                                          ; $7877: $07
    add c                                         ; $7878: $81
    rla                                           ; $7879: $17
    add e                                         ; $787a: $83
    and b                                         ; $787b: $a0
    xor $55                                       ; $787c: $ee $55
    ld b, b                                       ; $787e: $40
    ld [hl], h                                    ; $787f: $74
    ld l, $fa                                     ; $7880: $2e $fa
    sub l                                         ; $7882: $95
    rst $28                                       ; $7883: $ef
    rla                                           ; $7884: $17
    db $ed                                        ; $7885: $ed
    ld [hl], c                                    ; $7886: $71
    ret z                                         ; $7887: $c8

    add hl, sp                                    ; $7888: $39
    ld d, a                                       ; $7889: $57
    ld e, e                                       ; $788a: $5b
    ld d, b                                       ; $788b: $50
    dec e                                         ; $788c: $1d
    add a                                         ; $788d: $87
    ld [hl+], a                                   ; $788e: $22
    sub [hl]                                      ; $788f: $96
    ld [hl], e                                    ; $7890: $73
    ld e, [hl]                                    ; $7891: $5e
    db $ed                                        ; $7892: $ed
    ld [hl], c                                    ; $7893: $71
    ret z                                         ; $7894: $c8

    ld d, l                                       ; $7895: $55
    ld b, b                                       ; $7896: $40
    ld [hl], h                                    ; $7897: $74
    xor $09                                       ; $7898: $ee $09
    inc e                                         ; $789a: $1c
    jp nc, $ce72                                  ; $789b: $d2 $72 $ce

    dec bc                                        ; $789e: $0b
    ld l, l                                       ; $789f: $6d
    and $39                                       ; $78a0: $e6 $39
    ld h, a                                       ; $78a2: $67
    add hl, de                                    ; $78a3: $19
    dec h                                         ; $78a4: $25
    cp l                                          ; $78a5: $bd
    rst $08                                       ; $78a6: $cf
    db $e3                                        ; $78a7: $e3
    and h                                         ; $78a8: $a4
    ld b, h                                       ; $78a9: $44
    sub c                                         ; $78aa: $91
    add a                                         ; $78ab: $87
    ld d, b                                       ; $78ac: $50
    ld l, b                                       ; $78ad: $68
    inc hl                                        ; $78ae: $23
    di                                            ; $78af: $f3
    ld e, [hl]                                    ; $78b0: $5e
    ei                                            ; $78b1: $fb
    rst $08                                       ; $78b2: $cf
    call nc, $caec                                ; $78b3: $d4 $ec $ca
    ret nz                                        ; $78b6: $c0

    db $ec                                        ; $78b7: $ec
    cp h                                          ; $78b8: $bc
    ld e, a                                       ; $78b9: $5f
    rlca                                          ; $78ba: $07
    ld e, h                                       ; $78bb: $5c
    ld d, [hl]                                    ; $78bc: $56
    ld a, [hl-]                                   ; $78bd: $3a
    dec b                                         ; $78be: $05
    sbc l                                         ; $78bf: $9d
    ld a, e                                       ; $78c0: $7b
    and b                                         ; $78c1: $a0
    adc h                                         ; $78c2: $8c
    and c                                         ; $78c3: $a1
    rst $28                                       ; $78c4: $ef
    di                                            ; $78c5: $f3
    ld a, [de]                                    ; $78c6: $1a
    dec e                                         ; $78c7: $1d
    ld h, d                                       ; $78c8: $62
    rst $28                                       ; $78c9: $ef
    ld sp, $3f76                                  ; $78ca: $31 $76 $3f
    ei                                            ; $78cd: $fb
    pop de                                        ; $78ce: $d1
    jp c, Jump_000_2143                           ; $78cf: $da $43 $21

jr_05f_78d2:
    or $93                                        ; $78d2: $f6 $93
    db $eb                                        ; $78d4: $eb
    sub c                                         ; $78d5: $91
    dec sp                                        ; $78d6: $3b
    rst $18                                       ; $78d7: $df
    ld c, c                                       ; $78d8: $49
    ld a, l                                       ; $78d9: $7d
    ret c                                         ; $78da: $d8

    inc hl                                        ; $78db: $23
    xor l                                         ; $78dc: $ad
    xor d                                         ; $78dd: $aa
    rla                                           ; $78de: $17
    jp z, $4338                                   ; $78df: $ca $38 $43

    rst $00                                       ; $78e2: $c7
    add a                                         ; $78e3: $87
    ld [hl+], a                                   ; $78e4: $22
    ld a, b                                       ; $78e5: $78
    ld e, h                                       ; $78e6: $5c
    db $fd                                        ; $78e7: $fd
    ld c, a                                       ; $78e8: $4f
    or a                                          ; $78e9: $b7
    ld a, [bc]                                    ; $78ea: $0a
    ret                                           ; $78eb: $c9


    xor d                                         ; $78ec: $aa
    db $eb                                        ; $78ed: $eb
    dec c                                         ; $78ee: $0d
    db $ed                                        ; $78ef: $ed
    cpl                                           ; $78f0: $2f

jr_05f_78f1:
    rst $10                                       ; $78f1: $d7
    ld d, b                                       ; $78f2: $50
    and e                                         ; $78f3: $a3
    ret z                                         ; $78f4: $c8

    ld h, e                                       ; $78f5: $63
    ld l, d                                       ; $78f6: $6a
    inc d                                         ; $78f7: $14
    sbc c                                         ; $78f8: $99
    ld [hl], $a6                                  ; $78f9: $36 $a6
    ld b, [hl]                                    ; $78fb: $46
    sub c                                         ; $78fc: $91
    rst $00                                       ; $78fd: $c7
    call nc, Call_000_3228                        ; $78fe: $d4 $28 $32
    ld l, l                                       ; $7901: $6d
    xor b                                         ; $7902: $a8
    db $eb                                        ; $7903: $eb
    ld c, h                                       ; $7904: $4c
    dec de                                        ; $7905: $1b
    ld [$6b3a], a                                 ; $7906: $ea $3a $6b
    ld a, a                                       ; $7909: $7f

jr_05f_790a:
    ld bc, $5c07                                  ; $790a: $01 $07 $5c
    ld d, $43                                     ; $790d: $16 $43
    ld e, a                                       ; $790f: $5f
    ld h, l                                       ; $7910: $65
    dec e                                         ; $7911: $1d
    sbc l                                         ; $7912: $9d
    ld e, $3d                                     ; $7913: $1e $3d
    inc h                                         ; $7915: $24
    ld a, $bf                                     ; $7916: $3e $bf
    ret nz                                        ; $7918: $c0

    cp l                                          ; $7919: $bd
    inc bc                                        ; $791a: $03
    ld l, $73                                     ; $791b: $2e $73
    xor a                                         ; $791d: $af
    jp z, $cfb9                                   ; $791e: $ca $b9 $cf

    dec hl                                        ; $7921: $2b
    ld sp, hl                                     ; $7922: $f9
    ld h, e                                       ; $7923: $63
    rst $18                                       ; $7924: $df
    cpl                                           ; $7925: $2f
    db $ed                                        ; $7926: $ed
    pop af                                        ; $7927: $f1
    rst $00                                       ; $7928: $c7
    add hl, hl                                    ; $7929: $29
    jr z, jr_05f_78f1                             ; $792a: $28 $c5

    add hl, sp                                    ; $792c: $39
    call nc, Call_05f_6ad7                        ; $792d: $d4 $d7 $6a
    sbc [hl]                                      ; $7930: $9e
    di                                            ; $7931: $f3
    ld [bc], a                                    ; $7932: $02
    sub a                                         ; $7933: $97
    ld b, $41                                     ; $7934: $06 $41
    ld e, l                                       ; $7936: $5d
    ld sp, $2d35                                  ; $7937: $31 $35 $2d
    db $eb                                        ; $793a: $eb
    ld a, d                                       ; $793b: $7a
    ld h, c                                       ; $793c: $61
    rst $20                                       ; $793d: $e7
    ld a, [hl+]                                   ; $793e: $2a

Jump_05f_793f:
    dec h                                         ; $793f: $25
    ld sp, hl                                     ; $7940: $f9
    ld a, [hl]                                    ; $7941: $7e
    ld bc, $e66d                                  ; $7942: $01 $6d $e6
    dec [hl]                                      ; $7945: $35
    ld a, [hl-]                                   ; $7946: $3a
    and l                                         ; $7947: $a5
    ld a, [hl-]                                   ; $7948: $3a
    rla                                           ; $7949: $17
    ld b, e                                       ; $794a: $43
    ld a, [hl+]                                   ; $794b: $2a
    ld [hl], a                                    ; $794c: $77
    jr z, jr_05f_78d2                             ; $794d: $28 $83

    pop hl                                        ; $794f: $e1

jr_05f_7950:
    cpl                                           ; $7950: $2f
    rst $30                                       ; $7951: $f7
    dec bc                                        ; $7952: $0b
    ld l, l                                       ; $7953: $6d

jr_05f_7954:
    ld e, [hl]                                    ; $7954: $5e
    inc c                                         ; $7955: $0c
    add d                                         ; $7956: $82
    cp d                                          ; $7957: $ba
    ld [hl], e                                    ; $7958: $73
    ld c, d                                       ; $7959: $4a
    rla                                           ; $795a: $17
    pop af                                        ; $795b: $f1
    ld c, d                                       ; $795c: $4a
    ld b, b                                       ; $795d: $40
    ld e, $27                                     ; $795e: $1e $27
    ld b, l                                       ; $7960: $45
    adc d                                         ; $7961: $8a
    rst $00                                       ; $7962: $c7
    ret nc                                        ; $7963: $d0

    ld h, a                                       ; $7964: $67
    ld e, c                                       ; $7965: $59
    ld c, e                                       ; $7966: $4b
    rst $00                                       ; $7967: $c7
    ld a, [hl+]                                   ; $7968: $2a
    jr nz, jr_05f_7950                            ; $7969: $20 $e5

    ld a, [hl]                                    ; $796b: $7e
    ld bc, $5c07                                  ; $796c: $01 $07 $5c
    ld d, $85                                     ; $796f: $16 $85
    adc h                                         ; $7971: $8c
    dec l                                         ; $7972: $2d
    ld l, h                                       ; $7973: $6c
    db $f4                                        ; $7974: $f4
    inc l                                         ; $7975: $2c
    ld l, e                                       ; $7976: $6b
    dec h                                         ; $7977: $25
    call nz, $e39f                                ; $7978: $c4 $9f $e3
    ld d, b                                       ; $797b: $50
    db $e4                                        ; $797c: $e4
    ld a, [hl]                                    ; $797d: $7e
    ld bc, $5c07                                  ; $797e: $01 $07 $5c
    and $5c                                       ; $7981: $e6 $5c
    ld l, l                                       ; $7983: $6d
    xor [hl]                                      ; $7984: $ae
    or [hl]                                       ; $7985: $b6
    jr z, jr_05f_790a                             ; $7986: $28 $82

    ld c, h                                       ; $7988: $4c
    db $db                                        ; $7989: $db
    rst $20                                       ; $798a: $e7
    pop de                                        ; $798b: $d1
    ld e, l                                       ; $798c: $5d
    ld b, $4a                                     ; $798d: $06 $4a
    ld a, c                                       ; $798f: $79
    ld [$2acb], a                                 ; $7990: $ea $cb $2a

jr_05f_7993:
    jr nz, @+$7c                                  ; $7993: $20 $7a

    sub l                                         ; $7995: $95
    and c                                         ; $7996: $a1
    ld [hl], a                                    ; $7997: $77
    rst $18                                       ; $7998: $df
    cpl                                           ; $7999: $2f
    rlca                                          ; $799a: $07
    ld e, h                                       ; $799b: $5c
    and $5e                                       ; $799c: $e6 $5e
    sub l                                         ; $799e: $95
    ld [hl], e                                    ; $799f: $73
    dec c                                         ; $79a0: $0d

Call_05f_79a1:
    ld d, a                                       ; $79a1: $57
    xor [hl]                                      ; $79a2: $ae
    xor $dd                                       ; $79a3: $ee $dd
    jp hl                                         ; $79a5: $e9


    ei                                            ; $79a6: $fb
    dec b                                         ; $79a7: $05
    rlca                                          ; $79a8: $07
    ld e, h                                       ; $79a9: $5c
    sub $29                                       ; $79aa: $d6 $29
    push de                                       ; $79ac: $d5
    cp c                                          ; $79ad: $b9
    jr z, jr_05f_7954                             ; $79ae: $28 $a4

    adc [hl]                                      ; $79b0: $8e
    add e                                         ; $79b1: $83
    dec a                                         ; $79b2: $3d

jr_05f_79b3:
    jr nz, jr_05f_7993                            ; $79b3: $20 $de

    di                                            ; $79b5: $f3
    dec bc                                        ; $79b6: $0b
    ld d, h                                       ; $79b7: $54
    push hl                                       ; $79b8: $e5
    dec [hl]                                      ; $79b9: $35
    xor b                                         ; $79ba: $a8
    push bc                                       ; $79bb: $c5
    ld c, c                                       ; $79bc: $49
    ld e, e                                       ; $79bd: $5b
    ld l, l                                       ; $79be: $6d
    adc [hl]                                      ; $79bf: $8e
    xor $32                                       ; $79c0: $ee $32
    ld a, [c]                                     ; $79c2: $f2

jr_05f_79c3:
    rst $20                                       ; $79c3: $e7
    call z, $428b                                 ; $79c4: $cc $8b $42
    sub $56                                       ; $79c7: $d6 $56
    add d                                         ; $79c9: $82
    inc d                                         ; $79ca: $14
    jp c, $99a4                                   ; $79cb: $da $a4 $99

    xor e                                         ; $79ce: $ab

Call_05f_79cf:
    ld a, [hl+]                                   ; $79cf: $2a
    ld [hl], h                                    ; $79d0: $74
    sra d                                         ; $79d1: $cb $2a
    rst $38                                       ; $79d3: $ff
    ld h, h                                       ; $79d4: $64
    rst $20                                       ; $79d5: $e7
    db $fd                                        ; $79d6: $fd
    ld [bc], a                                    ; $79d7: $02
    add a                                         ; $79d8: $87
    jr z, jr_05f_79c3                             ; $79d9: $28 $e8

    inc d                                         ; $79db: $14
    adc a                                         ; $79dc: $8f
    ld [hl], h                                    ; $79dd: $74
    adc $b9                                       ; $79de: $ce $b9
    jr @+$54                                      ; $79e0: $18 $52

    cp c                                          ; $79e2: $b9
    ld b, e                                       ; $79e3: $43
    ld e, c                                       ; $79e4: $59
    jp Jump_000_2fe4                              ; $79e5: $c3 $e4 $2f


    xor $50                                       ; $79e8: $ee $50
    xor h                                         ; $79ea: $ac
    db $fd                                        ; $79eb: $fd
    dec b                                         ; $79ec: $05
    db $ed                                        ; $79ed: $ed
    ld hl, $ada6                                  ; $79ee: $21 $a6 $ad
    ld a, a                                       ; $79f1: $7f
    ld e, h                                       ; $79f2: $5c
    ld c, h                                       ; $79f3: $4c
    ld c, c                                       ; $79f4: $49
    rst $28                                       ; $79f5: $ef
    ld sp, $f3ee                                  ; $79f6: $31 $ee $f3
    ld a, [hl-]                                   ; $79f9: $3a

jr_05f_79fa:
    and l                                         ; $79fa: $a5
    ld a, d                                       ; $79fb: $7a
    adc a                                         ; $79fc: $8f
    ld [hl], c                                    ; $79fd: $71
    ld hl, $ee76                                  ; $79fe: $21 $76 $ee
    ld bc, $5559                                  ; $7a01: $01 $59 $55
    ld a, d                                       ; $7a04: $7a
    ld b, a                                       ; $7a05: $47
    and a                                         ; $7a06: $a7
    or $17                                        ; $7a07: $f6 $17
    add a                                         ; $7a09: $87
    cp h                                          ; $7a0a: $bc
    ld c, $c5                                     ; $7a0b: $0e $c5
    ld b, e                                       ; $7a0d: $43
    bit 5, d                                      ; $7a0e: $cb $6a
    rlca                                          ; $7a10: $07
    dec d                                         ; $7a11: $15
    add a                                         ; $7a12: $87
    ld [hl+], a                                   ; $7a13: $22
    ld b, e                                       ; $7a14: $43
    rst $20                                       ; $7a15: $e7
    ld d, h                                       ; $7a16: $54
    ld a, b                                       ; $7a17: $78
    ld e, $e7                                     ; $7a18: $1e $e7
    ld b, h                                       ; $7a1a: $44
    cp a                                          ; $7a1b: $bf
    ld [hl], a                                    ; $7a1c: $77
    ld d, c                                       ; $7a1d: $51
    ret z                                         ; $7a1e: $c8

    and l                                         ; $7a1f: $a5
    dec hl                                        ; $7a20: $2b
    ld e, e                                       ; $7a21: $5b

jr_05f_7a22:
    ld l, b                                       ; $7a22: $68
    cp e                                          ; $7a23: $bb
    jr z, jr_05f_79b3                             ; $7a24: $28 $8d

    dec bc                                        ; $7a26: $0b
    ld h, l                                       ; $7a27: $65
    ld [hl], h                                    ; $7a28: $74
    sub a                                         ; $7a29: $97
    ld d, l                                       ; $7a2a: $55
    ld c, d                                       ; $7a2b: $4a
    cpl                                           ; $7a2c: $2f
    adc $85                                       ; $7a2d: $ce $85
    ld d, d                                       ; $7a2f: $52
    sbc e                                         ; $7a30: $9b
    xor e                                         ; $7a31: $ab
    dec e                                         ; $7a32: $1d
    call nc, $cd5a                                ; $7a33: $d4 $5a $cd
    ld d, l                                       ; $7a36: $55
    dec d                                         ; $7a37: $15
    cp d                                          ; $7a38: $ba
    push hl                                       ; $7a39: $e5
    ld a, [hl]                                    ; $7a3a: $7e
    ld bc, $ce6d                                  ; $7a3b: $01 $6d $ce
    add hl, sp                                    ; $7a3e: $39
    rla                                           ; $7a3f: $17
    and l                                         ; $7a40: $a5
    and [hl]                                      ; $7a41: $a6
    or b                                          ; $7a42: $b0
    dec sp                                        ; $7a43: $3b
    sub h                                         ; $7a44: $94
    add c                                         ; $7a45: $81
    and b                                         ; $7a46: $a0
    cp e                                          ; $7a47: $bb
    xor [hl]                                      ; $7a48: $ae
    sub h                                         ; $7a49: $94
    ld a, c                                       ; $7a4a: $79
    and h                                         ; $7a4b: $a4
    di                                            ; $7a4c: $f3
    ld a, [hl]                                    ; $7a4d: $7e
    ld bc, $c1d7                                  ; $7a4e: $01 $d7 $c1
    sub h                                         ; $7a51: $94
    ld l, $e2                                     ; $7a52: $2e $e2
    db $fd                                        ; $7a54: $fd
    adc $b5                                       ; $7a55: $ce $b5
    add hl, sp                                    ; $7a57: $39
    ld l, c                                       ; $7a58: $69
    ld l, $4a                                     ; $7a59: $2e $4a
    ccf                                           ; $7a5b: $3f
    db $eb                                        ; $7a5c: $eb
    ld e, a                                       ; $7a5d: $5f
    ld a, [bc]                                    ; $7a5e: $0a
    adc a                                         ; $7a5f: $8f
    call nc, $a193                                ; $7a60: $d4 $93 $a1
    jr c, jr_05f_7a22                             ; $7a63: $38 $bd

    ret c                                         ; $7a65: $d8

    jr c, jr_05f_79fa                             ; $7a66: $38 $92

    ld c, [hl]                                    ; $7a68: $4e
    jp hl                                         ; $7a69: $e9


    xor l                                         ; $7a6a: $ad
    db $fd                                        ; $7a6b: $fd
    ld l, b                                       ; $7a6c: $68
    rst $08                                       ; $7a6d: $cf
    cpl                                           ; $7a6e: $2f
    ld [hl], b                                    ; $7a6f: $70
    cp a                                          ; $7a70: $bf
    db $ed                                        ; $7a71: $ed
    ccf                                           ; $7a72: $3f
    add a                                         ; $7a73: $87
    ld a, [$79aa]                                 ; $7a74: $fa $aa $79
    rrca                                          ; $7a77: $0f
    ret z                                         ; $7a78: $c8

    ld e, b                                       ; $7a79: $58
    rst $00                                       ; $7a7a: $c7
    ld [$5e73], a                                 ; $7a7b: $ea $73 $5e
    sub a                                         ; $7a7e: $97
    sbc e                                         ; $7a7f: $9b
    ld c, [hl]                                    ; $7a80: $4e
    ld e, e                                       ; $7a81: $5b
    jp $ffaa                                      ; $7a82: $c3 $aa $ff


    ld [c], a                                     ; $7a85: $e2
    cp h                                          ; $7a86: $bc
    rst $10                                       ; $7a87: $d7
    ld h, [hl]                                    ; $7a88: $66
    ld e, $f9                                     ; $7a89: $1e $f9
    ld [hl], e                                    ; $7a8b: $73
    ld [hl], h                                    ; $7a8c: $74
    sub a                                         ; $7a8d: $97
    add c                                         ; $7a8e: $81
    ld d, d                                       ; $7a8f: $52
    cp [hl]                                       ; $7a90: $be
    ld e, a                                       ; $7a91: $5f
    sub a                                         ; $7a92: $97
    scf                                           ; $7a93: $37
    rst $28                                       ; $7a94: $ef
    ld e, l                                       ; $7a95: $5d
    di                                            ; $7a96: $f3
    push de                                       ; $7a97: $d5
    ld a, [hl]                                    ; $7a98: $7e
    rst $28                                       ; $7a99: $ef
    ld d, b                                       ; $7a9a: $50
    inc e                                         ; $7a9b: $1c
    cp e                                          ; $7a9c: $bb
    rst $18                                       ; $7a9d: $df
    dec sp                                        ; $7a9e: $3b
    ldh [$b2], a                                  ; $7a9f: $e0 $b2
    jr @+$7c                                      ; $7aa1: $18 $7a

    rst $30                                       ; $7aa3: $f7
    xor b                                         ; $7aa4: $a8
    ld d, d                                       ; $7aa5: $52
    sub l                                         ; $7aa6: $95
    ld l, c                                       ; $7aa7: $69
    ei                                            ; $7aa8: $fb
    inc a                                         ; $7aa9: $3c
    ld a, [c]                                     ; $7aaa: $f2
    bit 0, b                                      ; $7aab: $cb $40
    add hl, hl                                    ; $7aad: $29
    xor a                                         ; $7aae: $af
    ld [hl], d                                    ; $7aaf: $72
    sbc d                                         ; $7ab0: $9a
    ld e, $19                                     ; $7ab1: $1e $19
    cp l                                          ; $7ab3: $bd
    jp c, Jump_000_2fc4                           ; $7ab4: $da $c4 $2f

    rst $30                                       ; $7ab7: $f7
    dec bc                                        ; $7ab8: $0b
    db $ed                                        ; $7ab9: $ed
    ccf                                           ; $7aba: $3f
    ld [hl], a                                    ; $7abb: $77
    ret                                           ; $7abc: $c9


    ld c, b                                       ; $7abd: $48
    ld l, d                                       ; $7abe: $6a
    ld a, [c]                                     ; $7abf: $f2
    ret nc                                        ; $7ac0: $d0

    ld a, h                                       ; $7ac1: $7c
    adc $da                                       ; $7ac2: $ce $da
    sbc h                                         ; $7ac4: $9c
    adc e                                         ; $7ac5: $8b
    ld a, a                                       ; $7ac6: $7f
    ld c, $04                                     ; $7ac7: $0e $04
    dec de                                        ; $7ac9: $1b
    xor c                                         ; $7aca: $a9
    db $e3                                        ; $7acb: $e3
    ld h, b                                       ; $7acc: $60
    rla                                           ; $7acd: $17
    daa                                           ; $7ace: $27
    ld c, b                                       ; $7acf: $48
    add hl, bc                                    ; $7ad0: $09
    call z, $f1b5                                 ; $7ad1: $cc $b5 $f1
    ld b, l                                       ; $7ad4: $45
    ld e, c                                       ; $7ad5: $59
    or h                                          ; $7ad6: $b4
    rst $28                                       ; $7ad7: $ef
    add b                                         ; $7ad8: $80
    srl d                                         ; $7ad9: $cb $3a
    and l                                         ; $7adb: $a5
    or d                                          ; $7adc: $b2
    add a                                         ; $7add: $87
    and $c1                                       ; $7ade: $e6 $c1
    xor [hl]                                      ; $7ae0: $ae
    call z, $9910                                 ; $7ae1: $cc $10 $99
    add hl, de                                    ; $7ae4: $19
    ret nc                                        ; $7ae5: $d0

    add d                                         ; $7ae6: $82
    cp [hl]                                       ; $7ae7: $be
    ld e, a                                       ; $7ae8: $5f
    db $ed                                        ; $7ae9: $ed
    or c                                          ; $7aea: $b1
    sbc a                                         ; $7aeb: $9f
    dec d                                         ; $7aec: $15
    ld a, d                                       ; $7aed: $7a
    ld c, b                                       ; $7aee: $48
    db $f4                                        ; $7aef: $f4
    ret nc                                        ; $7af0: $d0

    ld a, h                                       ; $7af1: $7c
    adc $0b                                       ; $7af2: $ce $0b
    ld l, l                                       ; $7af4: $6d
    and $c5                                       ; $7af5: $e6 $c5
    add $3d                                       ; $7af7: $c6 $3d
    ld e, a                                       ; $7af9: $5f
    ld b, $4a                                     ; $7afa: $06 $4a
    ld sp, hl                                     ; $7afc: $f9
    ld e, [hl]                                    ; $7afd: $5e
    sbc e                                         ; $7afe: $9b
    ld a, c                                       ; $7aff: $79
    ld c, a                                       ; $7b00: $4f
    ld [hl], e                                    ; $7b01: $73
    db $e4                                        ; $7b02: $e4
    adc a                                         ; $7b03: $8f
    dec a                                         ; $7b04: $3d
    sub l                                         ; $7b05: $95
    sub h                                         ; $7b06: $94
    ret c                                         ; $7b07: $d8

    cp h                                          ; $7b08: $bc
    jp z, $5494                                   ; $7b09: $ca $94 $54

    ld a, e                                       ; $7b0c: $7b
    xor b                                         ; $7b0d: $a8
    xor c                                         ; $7b0e: $a9
    or $fc                                        ; $7b0f: $f6 $fc
    ld [bc], a                                    ; $7b11: $02
    adc e                                         ; $7b12: $8b
    ld b, d                                       ; $7b13: $42
    xor $f3                                       ; $7b14: $ee $f3
    ld d, h                                       ; $7b16: $54
    ld a, b                                       ; $7b17: $78
    ld e, $0f                                     ; $7b18: $1e $0f
    inc b                                         ; $7b1a: $04
    rla                                           ; $7b1b: $17
    jp z, Jump_05f_5c74                           ; $7b1c: $ca $74 $5c

    xor e                                         ; $7b1f: $ab
    add hl, sp                                    ; $7b20: $39
    or h                                          ; $7b21: $b4
    db $ec                                        ; $7b22: $ec
    ld l, c                                       ; $7b23: $69
    and d                                         ; $7b24: $a2
    rst $28                                       ; $7b25: $ef
    rla                                           ; $7b26: $17
    db $ed                                        ; $7b27: $ed
    pop af                                        ; $7b28: $f1
    rst $00                                       ; $7b29: $c7
    add hl, sp                                    ; $7b2a: $39
    ld [hl], a                                    ; $7b2b: $77
    ld h, l                                       ; $7b2c: $65
    add [hl]                                      ; $7b2d: $86
    ret z                                         ; $7b2e: $c8

    call z, Call_000_1680                         ; $7b2f: $cc $80 $16
    db $f4                                        ; $7b32: $f4
    add hl, sp                                    ; $7b33: $39
    cpl                                           ; $7b34: $2f
    rst $20                                       ; $7b35: $e7
    push bc                                       ; $7b36: $c5
    ld d, b                                       ; $7b37: $50
    dec l                                         ; $7b38: $2d
    adc e                                         ; $7b39: $8b
    ld b, d                                       ; $7b3a: $42
    adc [hl]                                      ; $7b3b: $8e
    inc sp                                        ; $7b3c: $33
    ld [hl], h                                    ; $7b3d: $74
    ld a, h                                       ; $7b3e: $7c
    jr z, @-$7c                                   ; $7b3f: $28 $82

    dec bc                                        ; $7b41: $0b
    ld h, l                                       ; $7b42: $65
    and h                                         ; $7b43: $a4
    ld d, l                                       ; $7b44: $55
    push af                                       ; $7b45: $f5
    cp l                                          ; $7b46: $bd
    ld [hl], $cb                                  ; $7b47: $36 $cb
    ld a, [de]                                    ; $7b49: $1a
    add hl, bc                                    ; $7b4a: $09
    ld d, d                                       ; $7b4b: $52
    sbc h                                         ; $7b4c: $9c
    ld a, e                                       ; $7b4d: $7b
    ld a, [hl]                                    ; $7b4e: $7e
    add c                                         ; $7b4f: $81
    xor d                                         ; $7b50: $aa
    inc a                                         ; $7b51: $3c
    pop de                                        ; $7b52: $d1
    sub b                                         ; $7b53: $90
    ld b, [hl]                                    ; $7b54: $46
    rst $20                                       ; $7b55: $e7
    and d                                         ; $7b56: $a2
    db $fc                                        ; $7b57: $fc
    inc hl                                        ; $7b58: $23
    db $dd                                        ; $7b59: $dd
    cp l                                          ; $7b5a: $bd
    ret c                                         ; $7b5b: $d8

jr_05f_7b5c:
    adc c                                         ; $7b5c: $89
    ld d, $da                                     ; $7b5d: $16 $da
    ld b, d                                       ; $7b5f: $42
    add hl, de                                    ; $7b60: $19
    ld a, [hl-]                                   ; $7b61: $3a
    ld d, a                                       ; $7b62: $57
    cp c                                          ; $7b63: $b9
    sbc c                                         ; $7b64: $99
    dec bc                                        ; $7b65: $0b
    and l                                         ; $7b66: $a5
    ld [hl], $67                                  ; $7b67: $36 $67
    reti                                          ; $7b69: $d9


    di                                            ; $7b6a: $f3
    ld l, e                                       ; $7b6b: $6b
    push af                                       ; $7b6c: $f5
    jp nz, $f6b3                                  ; $7b6d: $c2 $b3 $f6

    ld d, b                                       ; $7b70: $50
    adc b                                         ; $7b71: $88
    db $fd                                        ; $7b72: $fd
    db $e4                                        ; $7b73: $e4
    ld a, d                                       ; $7b74: $7a
    cp a                                          ; $7b75: $bf
    db $ed                                        ; $7b76: $ed
    and [hl]                                      ; $7b77: $a6
    db $d3                                        ; $7b78: $d3
    ld b, [hl]                                    ; $7b79: $46
    ld [hl], a                                    ; $7b7a: $77
    add hl, de                                    ; $7b7b: $19
    ld l, c                                       ; $7b7c: $69
    ld b, h                                       ; $7b7d: $44
    rst $20                                       ; $7b7e: $e7
    xor [hl]                                      ; $7b7f: $ae
    ld c, $b2                                     ; $7b80: $0e $b2
    db $eb                                        ; $7b82: $eb
    db $fd                                        ; $7b83: $fd
    ld l, e                                       ; $7b84: $6b
    or a                                          ; $7b85: $b7
    and $de                                       ; $7b86: $e6 $de
    add l                                         ; $7b88: $85
    add hl, sp                                    ; $7b89: $39
    call nc, $4317                                ; $7b8a: $d4 $17 $43
    ld a, [hl+]                                   ; $7b8d: $2a
    ld [hl], a                                    ; $7b8e: $77
    jr z, jr_05f_7bfc                             ; $7b8f: $28 $6b

jr_05f_7b91:
    rst $38                                       ; $7b91: $ff
    sbc c                                         ; $7b92: $99
    sbc d                                         ; $7b93: $9a
    ld e, l                                       ; $7b94: $5d
    add hl, de                                    ; $7b95: $19
    sbc b                                         ; $7b96: $98
    sbc l                                         ; $7b97: $9d
    rst $20                                       ; $7b98: $e7

jr_05f_7b99:
    cp h                                          ; $7b99: $bc
    rlca                                          ; $7b9a: $07
    ld a, $6d                                     ; $7b9b: $3e $6d
    ld l, b                                       ; $7b9d: $68
    sbc [hl]                                      ; $7b9e: $9e
    ld [hl], e                                    ; $7b9f: $73
    ld [hl], h                                    ; $7ba0: $74
    sub a                                         ; $7ba1: $97
    ei                                            ; $7ba2: $fb
    dec b                                         ; $7ba3: $05
    rst $10                                       ; $7ba4: $d7
    ld b, c                                       ; $7ba5: $41
    ld a, [hl+]                                   ; $7ba6: $2a
    ld [hl], a                                    ; $7ba7: $77
    jr z, jr_05f_7b91                             ; $7ba8: $28 $e7

    db $ec                                        ; $7baa: $ec
    add b                                         ; $7bab: $80
    srl b                                         ; $7bac: $cb $38
    add e                                         ; $7bae: $83
    pop de                                        ; $7baf: $d1
    or h                                          ; $7bb0: $b4
    ld a, l                                       ; $7bb1: $7d
    sbc $03                                       ; $7bb2: $de $03
    ld [c], a                                     ; $7bb4: $e2
    dec [hl]                                      ; $7bb5: $35
    sub d                                         ; $7bb6: $92
    adc d                                         ; $7bb7: $8a
    jp hl                                         ; $7bb8: $e9


    dec d                                         ; $7bb9: $15
    ld a, d                                       ; $7bba: $7a
    ld c, b                                       ; $7bbb: $48
    db $f4                                        ; $7bbc: $f4
    ld c, d                                       ; $7bbd: $4a
    add d                                         ; $7bbe: $82

Call_05f_7bbf:
    db $ec                                        ; $7bbf: $ec
    ld sp, $81ee                                  ; $7bc0: $31 $ee $81
    ld [hl-], a                                   ; $7bc3: $32
    jr z, jr_05f_7b5c                             ; $7bc4: $28 $96

    ei                                            ; $7bc6: $fb
    dec b                                         ; $7bc7: $05
    db $ed                                        ; $7bc8: $ed
    ccf                                           ; $7bc9: $3f
    ld [hl], a                                    ; $7bca: $77
    ret                                           ; $7bcb: $c9


    xor d                                         ; $7bcc: $aa
    ld a, c                                       ; $7bcd: $79
    sub [hl]                                      ; $7bce: $96
    or c                                          ; $7bcf: $b1
    adc [hl]                                      ; $7bd0: $8e
    push de                                       ; $7bd1: $d5
    rst $20                                       ; $7bd2: $e7
    db $ec                                        ; $7bd3: $ec
    ld b, d                                       ; $7bd4: $42
    add hl, de                                    ; $7bd5: $19
    and [hl]                                      ; $7bd6: $a6
    and l                                         ; $7bd7: $a5
    inc c                                         ; $7bd8: $0c
    sbc l                                         ; $7bd9: $9d
    inc hl                                        ; $7bda: $23
    adc l                                         ; $7bdb: $8d
    add sp, -$24                                  ; $7bdc: $e8 $dc
    push hl                                       ; $7bde: $e5
    adc [hl]                                      ; $7bdf: $8e
    and c                                         ; $7be0: $a1
    ld [hl], a                                    ; $7be1: $77
    adc a                                         ; $7be2: $8f
    db $fc                                        ; $7be3: $fc
    cp c                                          ; $7be4: $b9
    rlca                                          ; $7be5: $07
    ld a, [hl+]                                   ; $7be6: $2a
    sbc e                                         ; $7be7: $9b
    ld d, a                                       ; $7be8: $57
    ld b, c                                       ; $7be9: $41
    xor $17                                       ; $7bea: $ee $17
    sub a                                         ; $7bec: $97
    sbc e                                         ; $7bed: $9b
    ld a, [hl]                                    ; $7bee: $7e
    cp a                                          ; $7bef: $bf
    db $ed                                        ; $7bf0: $ed
    adc $39                                       ; $7bf1: $ce $39
    and a                                         ; $7bf3: $a7
    ld [hl], h                                    ; $7bf4: $74
    ld e, c                                       ; $7bf5: $59
    xor b                                         ; $7bf6: $a8
    dec bc                                        ; $7bf7: $0b
    ld h, l                                       ; $7bf8: $65
    rrca                                          ; $7bf9: $0f
    ret z                                         ; $7bfa: $c8

    ld [hl-], a                                   ; $7bfb: $32

jr_05f_7bfc:
    jr nc, jr_05f_7b99                            ; $7bfc: $30 $9b

    or [hl]                                       ; $7bfe: $b6
    ld b, e                                       ; $7bff: $43
    ld b, h                                       ; $7c00: $44
    ld a, a                                       ; $7c01: $7f
    and e                                         ; $7c02: $a3
    pop hl                                        ; $7c03: $e1
    xor h                                         ; $7c04: $ac
    rst $30                                       ; $7c05: $f7
    dec bc                                        ; $7c06: $0b
    add h                                         ; $7c07: $84
    or h                                          ; $7c08: $b4
    ld l, b                                       ; $7c09: $68
    pop de                                        ; $7c0a: $d1
    and d                                         ; $7c0b: $a2
    ld b, l                                       ; $7c0c: $45
    bit 7, l                                      ; $7c0d: $cb $7d
    rst $18                                       ; $7c0f: $df
    rst $30                                       ; $7c10: $f7
    db $fd                                        ; $7c11: $fd
    ld [bc], a                                    ; $7c12: $02
    rlca                                          ; $7c13: $07
    ld e, h                                       ; $7c14: $5c
    ld b, [hl]                                    ; $7c15: $46
    ld a, [de]                                    ; $7c16: $1a
    pop de                                        ; $7c17: $d1
    cp c                                          ; $7c18: $b9
    halt                                          ; $7c19: $76
    rst $20                                       ; $7c1a: $e7
    inc bc                                        ; $7c1b: $03
    ld b, c                                       ; $7c1c: $41
    cp h                                          ; $7c1d: $bc
    adc e                                         ; $7c1e: $8b
    di                                            ; $7c1f: $f3
    ld c, e                                       ; $7c20: $4b
    ld [hl], c                                    ; $7c21: $71
    sbc $6b                                       ; $7c22: $de $6b
    adc a                                         ; $7c24: $8f
    db $fd                                        ; $7c25: $fd
    call z, $4bb9                                 ; $7c26: $cc $b9 $4b
    adc $79                                       ; $7c29: $ce $79
    ld bc, $0757                                  ; $7c2b: $01 $57 $07
    reti                                          ; $7c2e: $d9


    push af                                       ; $7c2f: $f5
    cp $b5                                        ; $7c30: $fe $b5
    ld e, e                                       ; $7c32: $5b
    ld [hl], e                                    ; $7c33: $73
    cp a                                          ; $7c34: $bf
    db $ed                                        ; $7c35: $ed
    ccf                                           ; $7c36: $3f
    ld d, e                                       ; $7c37: $53
    or e                                          ; $7c38: $b3
    dec hl                                        ; $7c39: $2b
    inc bc                                        ; $7c3a: $03
    or e                                          ; $7c3b: $b3
    di                                            ; $7c3c: $f3
    ld a, [hl]                                    ; $7c3d: $7e
    ld bc, $41d7                                  ; $7c3e: $01 $d7 $41
    ld a, [hl+]                                   ; $7c41: $2a
    ld [hl], a                                    ; $7c42: $77
    jr z, @-$17                                   ; $7c43: $28 $e7

    db $ec                                        ; $7c45: $ec
    add b                                         ; $7c46: $80
    set 1, b                                      ; $7c47: $cb $c8
    sbc a                                         ; $7c49: $9f
    db $eb                                        ; $7c4a: $eb
    sub h                                         ; $7c4b: $94
    jp z, $9dfb                                   ; $7c4c: $ca $fb $9d

    rla                                           ; $7c4f: $17
    sbc [hl]                                      ; $7c50: $9e
    ld hl, $7b94                                  ; $7c51: $21 $94 $7b
    sub a                                         ; $7c54: $97
    ld a, [hl]                                    ; $7c55: $7e
    add hl, de                                    ; $7c56: $19
    ld [$408b], a                                 ; $7c57: $ea $8b $40
    ret nc                                        ; $7c5a: $d0

    db $d3                                        ; $7c5b: $d3
    ld [hl], c                                    ; $7c5c: $71
    ccf                                           ; $7c5d: $3f
    jp c, $a9e7                                   ; $7c5e: $da $e7 $a9

    ld e, a                                       ; $7c61: $5f
    reti                                          ; $7c62: $d9


    ld l, e                                       ; $7c63: $6b
    cp b                                          ; $7c64: $b8
    add $94                                       ; $7c65: $c6 $94
    inc l                                         ; $7c67: $2c
    xor $d5                                       ; $7c68: $ee $d5
    add hl, sp                                    ; $7c6a: $39
    dec bc                                        ; $7c6b: $0b
    adc d                                         ; $7c6c: $8a
    ld a, [hl]                                    ; $7c6d: $7e
    adc $ae                                       ; $7c6e: $ce $ae
    add e                                         ; $7c70: $83
    ld a, $d4                                     ; $7c71: $3e $d4
    ld d, a                                       ; $7c73: $57
    sbc h                                         ; $7c74: $9c
    ld [c], a                                     ; $7c75: $e2
    ld [hl], l                                    ; $7c76: $75
    ld c, d                                       ; $7c77: $4a
    ld a, d                                       ; $7c78: $7a
    sub [hl]                                      ; $7c79: $96
    ld [hl], e                                    ; $7c7a: $73
    halt                                          ; $7c7b: $76
    xor b                                         ; $7c7c: $a8
    adc c                                         ; $7c7d: $89
    ld e, a                                       ; $7c7e: $5f
    ld b, [hl]                                    ; $7c7f: $46
    ld a, [hl-]                                   ; $7c80: $3a
    ld d, a                                       ; $7c81: $57
    push de                                       ; $7c82: $d5
    rst $28                                       ; $7c83: $ef
    ld b, e                                       ; $7c84: $43
    ld a, l                                       ; $7c85: $7d
    ld [$f657], a                                 ; $7c86: $ea $57 $f6
    ld a, [de]                                    ; $7c89: $1a
    xor [hl]                                      ; $7c8a: $ae
    ld sp, $8b25                                  ; $7c8b: $31 $25 $8b
    ld a, e                                       ; $7c8e: $7b
    or l                                          ; $7c8f: $b5
    db $ec                                        ; $7c90: $ec
    ld a, [hl-]                                   ; $7c91: $3a
    daa                                           ; $7c92: $27
    jp nz, $bd03                                  ; $7c93: $c2 $03 $bd

    ld b, e                                       ; $7c96: $43
    ret nc                                        ; $7c97: $d0

    db $eb                                        ; $7c98: $eb
    cp l                                          ; $7c99: $bd
    ld c, e                                       ; $7c9a: $4b
    and h                                         ; $7c9b: $a4
    ld e, b                                       ; $7c9c: $58
    ld b, $7b                                     ; $7c9d: $06 $7b
    ld b, b                                       ; $7c9f: $40
    ld d, $fd                                     ; $7ca0: $16 $fd
    rlca                                          ; $7ca2: $07
    ld a, [hl-]                                   ; $7ca3: $3a
    ld a, b                                       ; $7ca4: $78
    adc $3d                                       ; $7ca5: $ce $3d
    cp a                                          ; $7ca7: $bf
    ld b, b                                       ; $7ca8: $40
    ld d, l                                       ; $7ca9: $55
    and [hl]                                      ; $7caa: $a6
    db $ed                                        ; $7cab: $ed
    or c                                          ; $7cac: $b1
    adc h                                         ; $7cad: $8c
    xor $32                                       ; $7cae: $ee $32
    ld a, [c]                                     ; $7cb0: $f2
    rst $20                                       ; $7cb1: $e7
    xor d                                         ; $7cb2: $aa
    ld a, e                                       ; $7cb3: $7b
    inc e                                         ; $7cb4: $1c
    ld d, c                                       ; $7cb5: $51
    ld a, e                                       ; $7cb6: $7b
    ld [hl], c                                    ; $7cb7: $71
    add a                                         ; $7cb8: $87
    or d                                          ; $7cb9: $b2
    ld c, [hl]                                    ; $7cba: $4e
    ld c, c                                       ; $7cbb: $49
    sbc $ef                                       ; $7cbc: $de $ef
    db $dd                                        ; $7cbe: $dd
    ld l, e                                       ; $7cbf: $6b
    ld d, b                                       ; $7cc0: $50
    adc e                                         ; $7cc1: $8b
    ld d, e                                       ; $7cc2: $53
    inc a                                         ; $7cc3: $3c
    dec e                                         ; $7cc4: $1d
    dec l                                         ; $7cc5: $2d
    rra                                           ; $7cc6: $1f
    rst $28                                       ; $7cc7: $ef
    ld e, l                                       ; $7cc8: $5d
    sbc $a4                                       ; $7cc9: $de $a4
    adc l                                         ; $7ccb: $8d

jr_05f_7ccc:
    and c                                         ; $7ccc: $a1
    scf                                           ; $7ccd: $37
    ld a, [hl]                                    ; $7cce: $7e
    pop af                                        ; $7ccf: $f1
    jr jr_05f_7ccc                                ; $7cd0: $18 $fa

    ld e, b                                       ; $7cd2: $58
    rst $00                                       ; $7cd3: $c7
    ld l, d                                       ; $7cd4: $6a
    ld a, [$6c2f]                                 ; $7cd5: $fa $2f $6c
    cp c                                          ; $7cd8: $b9
    ld [hl], a                                    ; $7cd9: $77
    pop de                                        ; $7cda: $d1
    rst $08                                       ; $7cdb: $cf
    ret c                                         ; $7cdc: $d8

    db $fd                                        ; $7cdd: $fd
    ld a, [hl]                                    ; $7cde: $7e
    ld bc, $5c07                                  ; $7cdf: $01 $07 $5c
    ld b, [hl]                                    ; $7ce2: $46
    ld [hl], $1b                                  ; $7ce3: $36 $1b
    adc $81                                       ; $7ce5: $ce $81
    ld d, d                                       ; $7ce7: $52
    and [hl]                                      ; $7ce8: $a6
    db $ed                                        ; $7ce9: $ed
    di                                            ; $7cea: $f3
    add sp, $2e                                   ; $7ceb: $e8 $2e
    ld d, e                                       ; $7ced: $53
    pop hl                                        ; $7cee: $e1
    ld a, c                                       ; $7cef: $79
    sbc h                                         ; $7cf0: $9c
    add e                                         ; $7cf1: $83
    xor c                                         ; $7cf2: $a9
    cp $6b                                        ; $7cf3: $fe $6b
    push af                                       ; $7cf5: $f5
    ld e, $e3                                     ; $7cf6: $1e $e3
    ld c, b                                       ; $7cf8: $48
    dec bc                                        ; $7cf9: $0b
    ld a, [$bb5e]                                 ; $7cfa: $fa $5e $bb
    ld l, $73                                     ; $7cfd: $2e $73
    xor $77                                       ; $7cff: $ee $77
    ld e, [hl]                                    ; $7d01: $5e
    inc d                                         ; $7d02: $14
    ld [hl], d                                    ; $7d03: $72
    and l                                         ; $7d04: $a5
    ld a, a                                       ; $7d05: $7f
    ld e, h                                       ; $7d06: $5c
    inc d                                         ; $7d07: $14
    ld [hl], d                                    ; $7d08: $72
    sbc a                                         ; $7d09: $9f
    ld b, a                                       ; $7d0a: $47
    ld d, d                                       ; $7d0b: $52
    db $d3                                        ; $7d0c: $d3
    xor e                                         ; $7d0d: $ab
    jr nz, jr_05f_7d83                            ; $7d0e: $20 $73

    or c                                          ; $7d10: $b1
    xor h                                         ; $7d11: $ac
    or d                                          ; $7d12: $b2
    sbc a                                         ; $7d13: $9f
    rst $00                                       ; $7d14: $c7
    rst $30                                       ; $7d15: $f7
    dec bc                                        ; $7d16: $0b
    add a                                         ; $7d17: $87
    sbc d                                         ; $7d18: $9a
    ld d, e                                       ; $7d19: $53
    ld e, a                                       ; $7d1a: $5f
    add [hl]                                      ; $7d1b: $86

jr_05f_7d1c:
    adc $29                                       ; $7d1c: $ce $29
    ld l, d                                       ; $7d1e: $6a
    jp $b575                                      ; $7d1f: $c3 $75 $b5


    add e                                         ; $7d22: $83
    jp nc, Jump_000_2bbe                          ; $7d23: $d2 $be $2b

    ei                                            ; $7d26: $fb
    ld h, a                                       ; $7d27: $67
    cp l                                          ; $7d28: $bd
    ld [hl], h                                    ; $7d29: $74
    daa                                           ; $7d2a: $27
    ld l, l                                       ; $7d2b: $6d
    dec h                                         ; $7d2c: $25
    add hl, hl                                    ; $7d2d: $29
    ld d, l                                       ; $7d2e: $55
    db $fd                                        ; $7d2f: $fd
    ld h, h                                       ; $7d30: $64
    ld c, d                                       ; $7d31: $4a
    or d                                          ; $7d32: $b2
    sub e                                         ; $7d33: $93
    or [hl]                                       ; $7d34: $b6
    di                                            ; $7d35: $f3
    sbc l                                         ; $7d36: $9d
    inc c                                         ; $7d37: $0c
    xor [hl]                                      ; $7d38: $ae
    ld a, e                                       ; $7d39: $7b
    db $f4                                        ; $7d3a: $f4
    adc $50                                       ; $7d3b: $ce $50
    sbc a                                         ; $7d3d: $9f
    ld e, a                                       ; $7d3e: $5f
    ld l, d                                       ; $7d3f: $6a
    add e                                         ; $7d40: $83
    ld a, [hl+]                                   ; $7d41: $2a
    ld [c], a                                     ; $7d42: $e2
    ld e, h                                       ; $7d43: $5c
    jr z, jr_05f_7dc1                             ; $7d44: $28 $7b

    ld e, h                                       ; $7d46: $5c
    call z, $9c7b                                 ; $7d47: $cc $7b $9c
    sub $fe                                       ; $7d4a: $d6 $fe
    ld [bc], a                                    ; $7d4c: $02
    add a                                         ; $7d4d: $87
    sub e                                         ; $7d4e: $93
    jp c, $aed7                                   ; $7d4f: $da $d7 $ae

    set 1, b                                      ; $7d52: $cb $c8
    sbc a                                         ; $7d54: $9f
    ld l, e                                       ; $7d55: $6b
    push af                                       ; $7d56: $f5
    rst $08                                       ; $7d57: $cf
    ld a, d                                       ; $7d58: $7a
    jp hl                                         ; $7d59: $e9


    ld c, [hl]                                    ; $7d5a: $4e
    db $ed                                        ; $7d5b: $ed
    cpl                                           ; $7d5c: $2f
    db $ed                                        ; $7d5d: $ed
    pop af                                        ; $7d5e: $f1
    rst $00                                       ; $7d5f: $c7
    add hl, sp                                    ; $7d60: $39
    rst $10                                       ; $7d61: $d7
    ld [$f59f], a                                 ; $7d62: $ea $9f $f5
    jp nc, $e79d                                  ; $7d65: $d2 $9d $e7

    xor h                                         ; $7d68: $ac
    call $e73c                                    ; $7d69: $cd $3c $e7
    ldh a, [rIF]                                  ; $7d6c: $f0 $0f
    sub h                                         ; $7d6e: $94
    ld a, [c]                                     ; $7d6f: $f2
    ld [de], a                                    ; $7d70: $12
    ld a, [bc]                                    ; $7d71: $0a
    ld b, e                                       ; $7d72: $43
    pop af                                        ; $7d73: $f1
    db $f4                                        ; $7d74: $f4
    jp nc, $b49d                                  ; $7d75: $d2 $9d $b4

    push bc                                       ; $7d78: $c5
    xor $e7                                       ; $7d79: $ee $e7
    cp h                                          ; $7d7b: $bc
    sub a                                         ; $7d7c: $97
    sbc e                                         ; $7d7d: $9b
    ld c, [hl]                                    ; $7d7e: $4e
    db $db                                        ; $7d7f: $db
    ld h, e                                       ; $7d80: $63
    add hl, de                                    ; $7d81: $19
    ld a, d                                       ; $7d82: $7a

jr_05f_7d83:
    push af                                       ; $7d83: $f5
    ld sp, hl                                     ; $7d84: $f9
    push bc                                       ; $7d85: $c5
    cp c                                          ; $7d86: $b9
    ld [de], a                                    ; $7d87: $12
    sub b                                         ; $7d88: $90
    rst $28                                       ; $7d89: $ef
    or l                                          ; $7d8a: $b5
    cp c                                          ; $7d8b: $b9
    ld [$d968], a                                 ; $7d8c: $ea $68 $d9
    ld h, e                                       ; $7d8f: $63
    adc h                                         ; $7d90: $8c

jr_05f_7d91:
    xor b                                         ; $7d91: $a8
    cp l                                          ; $7d92: $bd
    jr c, jr_05f_7d1c                             ; $7d93: $38 $87

    adc $a9                                       ; $7d95: $ce $a9
    sub b                                         ; $7d97: $90
    cp h                                          ; $7d98: $bc
    rst $00                                       ; $7d99: $c7
    cp b                                          ; $7d9a: $b8
    add [hl]                                      ; $7d9b: $86
    sub e                                         ; $7d9c: $93
    ld a, [$47b0]                                 ; $7d9d: $fa $b0 $47
    ld e, d                                       ; $7da0: $5a
    ld d, l                                       ; $7da1: $55
    cpl                                           ; $7da2: $2f
    sub h                                         ; $7da3: $94
    ld [hl], c                                    ; $7da4: $71
    add [hl]                                      ; $7da5: $86
    adc [hl]                                      ; $7da6: $8e
    rrca                                          ; $7da7: $0f
    ld b, l                                       ; $7da8: $45
    ldh a, [$7e]                                  ; $7da9: $f0 $7e
    ld bc, $ceed                                  ; $7dab: $01 $ed $ce
    ld c, $85                                     ; $7dae: $0e $85
    ld l, c                                       ; $7db0: $69
    or e                                          ; $7db1: $b3
    and b                                         ; $7db2: $a0
    add sp, -$4d                                  ; $7db3: $e8 $b3
    db $ec                                        ; $7db5: $ec
    ld l, c                                       ; $7db6: $69
    and d                                         ; $7db7: $a2
    rst $30                                       ; $7db8: $f7
    ld a, c                                       ; $7db9: $79
    ld a, [hl-]                                   ; $7dba: $3a
    ld [hl], $34                                  ; $7dbb: $36 $34
    and l                                         ; $7dbd: $a5
    ld a, b                                       ; $7dbe: $78
    rrca                                          ; $7dbf: $0f
    ret z                                         ; $7dc0: $c8

jr_05f_7dc1:
    ld [$3a7f], a                                 ; $7dc1: $ea $7f $3a
    ld c, b                                       ; $7dc4: $48
    ld a, c                                       ; $7dc5: $79
    ld bc, $fe87                                  ; $7dc6: $01 $87 $fe
    db $d3                                        ; $7dc9: $d3
    sbc l                                         ; $7dca: $9d
    ld b, e                                       ; $7dcb: $43
    ld a, l                                       ; $7dcc: $7d
    and c                                         ; $7dcd: $a1
    call nc, Call_05f_5ae6                        ; $7dce: $d4 $e6 $5a
    call $9fa1                                    ; $7dd1: $cd $a1 $9f
    ld [hl], e                                    ; $7dd4: $73
    sub $e6                                       ; $7dd5: $d6 $e6
    sbc h                                         ; $7dd7: $9c
    ld [hl], e                                    ; $7dd8: $73
    sub [hl]                                      ; $7dd9: $96
    push de                                       ; $7dda: $d5
    rst $38                                       ; $7ddb: $ff
    ld [hl], h                                    ; $7ddc: $74
    and a                                         ; $7ddd: $a7
    ld [$637a], a                                 ; $7dde: $ea $7a $63
    xor l                                         ; $7de1: $ad
    and $da                                       ; $7de2: $e6 $da
    ld b, e                                       ; $7de4: $43
    ld hl, $93f6                                  ; $7de5: $21 $f6 $93
    db $eb                                        ; $7de8: $eb
    xor $fb                                       ; $7de9: $ee $fb
    ld e, [hl]                                    ; $7deb: $5e
    jr z, jr_05f_7d91                             ; $7dec: $28 $a3

    cp e                                          ; $7dee: $bb
    adc h                                         ; $7def: $8c
    db $fc                                        ; $7df0: $fc
    add hl, sp                                    ; $7df1: $39
    sub d                                         ; $7df2: $92
    sbc d                                         ; $7df3: $9a
    cp h                                          ; $7df4: $bc
    rst $08                                       ; $7df5: $cf
    ld a, e                                       ; $7df6: $7b
    cp [hl]                                       ; $7df7: $be
    ld c, h                                       ; $7df8: $4c
    ld a, l                                       ; $7df9: $7d
    ld e, c                                       ; $7dfa: $59
    inc hl                                        ; $7dfb: $23
    push af                                       ; $7dfc: $f5
    ld [c], a                                     ; $7dfd: $e2

jr_05f_7dfe:
    xor c                                         ; $7dfe: $a9
    sub b                                         ; $7dff: $90
    ld l, h                                       ; $7e00: $6c
    pop af                                        ; $7e01: $f1
    jr jr_05f_7dfe                                ; $7e02: $18 $fa

    sbc [hl]                                      ; $7e04: $9e
    ld e, a                                       ; $7e05: $5f
    and b                                         ; $7e06: $a0
    ld a, [hl+]                                   ; $7e07: $2a
    cpl                                           ; $7e08: $2f
    ld a, [bc]                                    ; $7e09: $0a
    ld sp, hl                                     ; $7e0a: $f9
    inc [hl]                                      ; $7e0b: $34
    ei                                            ; $7e0c: $fb
    cp l                                          ; $7e0d: $bd
    res 3, e                                      ; $7e0e: $cb $9b
    add hl, sp                                    ; $7e10: $39
    call nc, $a8a7                                ; $7e11: $d4 $a7 $a8
    dec c                                         ; $7e14: $0d
    rst $20                                       ; $7e15: $e7
    ld e, d                                       ; $7e16: $5a
    db $fd                                        ; $7e17: $fd
    or e                                          ; $7e18: $b3
    ld e, [hl]                                    ; $7e19: $5e
    cp d                                          ; $7e1a: $ba
    ld [hl], e                                    ; $7e1b: $73
    ld d, l                                       ; $7e1c: $55
    db $fd                                        ; $7e1d: $fd
    ld a, $d4                                     ; $7e1e: $3e $d4
    ld b, a                                       ; $7e20: $47
    ld [$7955], a                                 ; $7e21: $ea $55 $79
    sbc a                                         ; $7e24: $9f
    and a                                         ; $7e25: $a7
    and b                                         ; $7e26: $a0
    inc d                                         ; $7e27: $14
    rst $08                                       ; $7e28: $cf
    ld de, $673b                                  ; $7e29: $11 $3b $67
    sbc [hl]                                      ; $7e2c: $9e
    ld a, [bc]                                    ; $7e2d: $0a
    ret                                           ; $7e2e: $c9


    add e                                         ; $7e2f: $83
    or l                                          ; $7e30: $b5

jr_05f_7e31:
    cp [hl]                                       ; $7e31: $be
    ld d, d                                       ; $7e32: $52
    sub [hl]                                      ; $7e33: $96
    ei                                            ; $7e34: $fb
    dec b                                         ; $7e35: $05
    db $ed                                        ; $7e36: $ed
    rst $08                                       ; $7e37: $cf
    or e                                          ; $7e38: $b3
    or $e7                                        ; $7e39: $f6 $e7
    reti                                          ; $7e3b: $d9


    ld a, l                                       ; $7e3c: $7d
    rst $18                                       ; $7e3d: $df
    ld a, e                                       ; $7e3e: $7b
    sbc d                                         ; $7e3f: $9a
    ld d, l                                       ; $7e40: $55
    ld a, c                                       ; $7e41: $79
    ld d, l                                       ; $7e42: $55
    db $fd                                        ; $7e43: $fd
    ld a, $ba                                     ; $7e44: $3e $ba
    rl h                                          ; $7e46: $cb $14
    or l                                          ; $7e48: $b5
    pop hl                                        ; $7e49: $e1
    ld c, c                                       ; $7e4a: $49
    jr z, @-$21                                   ; $7e4b: $28 $dd

    rst $30                                       ; $7e4d: $f7
    ld c, $fe                                     ; $7e4e: $0e $fe
    ld [bc], a                                    ; $7e50: $02
    ld d, l                                       ; $7e51: $55
    ld a, c                                       ; $7e52: $79
    push af                                       ; $7e53: $f5
    ccf                                           ; $7e54: $3f
    db $dd                                        ; $7e55: $dd
    ld a, [hl+]                                   ; $7e56: $2a
    inc h                                         ; $7e57: $24
    rst $28                                       ; $7e58: $ef
    ld sp, $e1ae                                  ; $7e59: $31 $ae $e1
    and h                                         ; $7e5c: $a4
    ld a, $ec                                     ; $7e5d: $3e $ec
    sub c                                         ; $7e5f: $91
    ld d, [hl]                                    ; $7e60: $56
    push de                                       ; $7e61: $d5
    dec bc                                        ; $7e62: $0b
    ld h, l                                       ; $7e63: $65
    sbc h                                         ; $7e64: $9c
    and c                                         ; $7e65: $a1
    db $e3                                        ; $7e66: $e3
    ld b, e                                       ; $7e67: $43
    ld de, $7b9c                                  ; $7e68: $11 $9c $7b
    ld [hl], a                                    ; $7e6b: $77
    adc $74                                       ; $7e6c: $ce $74
    jp c, $736a                                   ; $7e6e: $da $6a $73

    and l                                         ; $7e71: $a5
    sbc c                                         ; $7e72: $99
    ld a, e                                       ; $7e73: $7b
    cp [hl]                                       ; $7e74: $be
    db $ec                                        ; $7e75: $ec
    ld [hl], a                                    ; $7e76: $77
    ld c, h                                       ; $7e77: $4c
    jr z, jr_05f_7ea5                             ; $7e78: $28 $2b

    cp a                                          ; $7e7a: $bf
    di                                            ; $7e7b: $f3
    ld h, b                                       ; $7e7c: $60
    dec c                                         ; $7e7d: $0d
    adc l                                         ; $7e7e: $8d
    ld h, l                                       ; $7e7f: $65
    adc a                                         ; $7e80: $8f
    ld [hl], c                                    ; $7e81: $71
    ld b, h                                       ; $7e82: $44
    ret                                           ; $7e83: $c9


    and b                                         ; $7e84: $a0
    ld b, d                                       ; $7e85: $42
    rst $38                                       ; $7e86: $ff
    add sp, -$05                                  ; $7e87: $e8 $fb
    dec b                                         ; $7e89: $05
    rst $20                                       ; $7e8a: $e7
    ld [hl], l                                    ; $7e8b: $75
    xor [hl]                                      ; $7e8c: $ae
    ld c, l                                       ; $7e8d: $4d
    jp c, $18c8                                   ; $7e8e: $da $c8 $18

    ld [$5f50], a                                 ; $7e91: $ea $50 $5f
    call nc, $9dcc                                ; $7e94: $d4 $cc $9d
    ld d, a                                       ; $7e97: $57
    ld [de], a                                    ; $7e98: $12
    ld e, d                                       ; $7e99: $5a
    xor l                                         ; $7e9a: $ad
    ld c, a                                       ; $7e9b: $4f
    ld e, e                                       ; $7e9c: $5b
    inc c                                         ; $7e9d: $0c
    ld a, l                                       ; $7e9e: $7d
    ld [hl], h                                    ; $7e9f: $74
    sub a                                         ; $7ea0: $97
    dec d                                         ; $7ea1: $15
    and a                                         ; $7ea2: $a7
    ld a, b                                       ; $7ea3: $78
    dec c                                         ; $7ea4: $0d

jr_05f_7ea5:
    dec c                                         ; $7ea5: $0d
    or e                                          ; $7ea6: $b3
    rst $30                                       ; $7ea7: $f7
    jr jr_05f_7e31                                ; $7ea8: $18 $87

    ld d, b                                       ; $7eaa: $50
    ld l, b                                       ; $7eab: $68
    inc hl                                        ; $7eac: $23
    ld h, e                                       ; $7ead: $63
    xor b                                         ; $7eae: $a8
    and e                                         ; $7eaf: $a3
    cp e                                          ; $7eb0: $bb
    db $ec                                        ; $7eb1: $ec
    ld l, c                                       ; $7eb2: $69
    sbc $6b                                       ; $7eb3: $de $6b
    rst $38                                       ; $7eb5: $ff
    ld [hl-], a                                   ; $7eb6: $32
    rst $20                                       ; $7eb7: $e7
    ret nc                                        ; $7eb8: $d0

    ld [hl-], a                                   ; $7eb9: $32
    adc e                                         ; $7eba: $8b
    dec hl                                        ; $7ebb: $2b
    ld a, e                                       ; $7ebc: $7b
    ld [hl], h                                    ; $7ebd: $74
    sub a                                         ; $7ebe: $97
    dec a                                         ; $7ebf: $3d
    ld e, a                                       ; $7ec0: $5f
    ld c, d                                       ; $7ec1: $4a
    ld [hl], a                                    ; $7ec2: $77
    sbc $2f                                       ; $7ec3: $de $2f
    db $ed                                        ; $7ec5: $ed
    pop af                                        ; $7ec6: $f1
    rst $00                                       ; $7ec7: $c7
    dec a                                         ; $7ec8: $3d
    add $a1                                       ; $7ec9: $c6 $a1
    add a                                         ; $7ecb: $87
    adc $1d                                       ; $7ecc: $ce $1d
    call nc, $433b                                ; $7ece: $d4 $3b $43
    ld a, l                                       ; $7ed1: $7d
    ld a, [hl]                                    ; $7ed2: $7e
    xor c                                         ; $7ed3: $a9
    dec c                                         ; $7ed4: $0d
    xor d                                         ; $7ed5: $aa
    adc b                                         ; $7ed6: $88
    di                                            ; $7ed7: $f3
    sbc h                                         ; $7ed8: $9c
    or l                                          ; $7ed9: $b5
    rst $00                                       ; $7eda: $c7
    ret nc                                        ; $7edb: $d0

    sub l                                         ; $7edc: $95
    ld d, a                                       ; $7edd: $57
    sbc a                                         ; $7ede: $9f
    ld e, a                                       ; $7edf: $5f
    ld l, d                                       ; $7ee0: $6a
    db $fc                                        ; $7ee1: $fc
    inc de                                        ; $7ee2: $13
    cp [hl]                                       ; $7ee3: $be
    or b                                          ; $7ee4: $b0
    ld [hl], e                                    ; $7ee5: $73
    ld de, $ba08                                  ; $7ee6: $11 $08 $ba
    ld c, $9d                                     ; $7ee9: $0e $9d
    rst $20                                       ; $7eeb: $e7
    cp h                                          ; $7eec: $bc
    ld l, l                                       ; $7eed: $6d
    ld a, [$97d4]                                 ; $7eee: $fa $d4 $97
    ld b, l                                       ; $7ef1: $45
    call Call_05f_785d                            ; $7ef2: $cd $5d $78
    ld a, c                                       ; $7ef5: $79
    ei                                            ; $7ef6: $fb
    ld [hl], l                                    ; $7ef7: $75
    rla                                           ; $7ef8: $17
    ld e, [hl]                                    ; $7ef9: $5e
    cp l                                          ; $7efa: $bd
    ld a, [$72fc]                                 ; $7efb: $fa $fc $72
    rst $28                                       ; $7efe: $ef
    adc d                                         ; $7eff: $8a
    ld [hl-], a                                   ; $7f00: $32
    inc [hl]                                      ; $7f01: $34
    rst $08                                       ; $7f02: $cf
    add hl, sp                                    ; $7f03: $39
    ld d, b                                       ; $7f04: $50
    jp z, $9dfb                                   ; $7f05: $ca $fb $9d

    ld bc, $a1d7                                  ; $7f08: $01 $d7 $a1
    ld a, b                                       ; $7f0b: $78
    sbc l                                         ; $7f0c: $9d
    and d                                         ; $7f0d: $a2
    sub h                                         ; $7f0e: $94
    sub e                                         ; $7f0f: $93
    rst $28                                       ; $7f10: $ef
    dec e                                         ; $7f11: $1d
    ld [hl], b                                    ; $7f12: $70
    add hl, de                                    ; $7f13: $19
    ld h, a                                       ; $7f14: $67
    ret z                                         ; $7f15: $c8

    ld a, l                                       ; $7f16: $7d
    ld e, $dd                                     ; $7f17: $1e $dd
    ld h, l                                       ; $7f19: $65
    ld de, $59a8                                  ; $7f1a: $11 $a8 $59
    or $18                                        ; $7f1d: $f6 $18
    ld d, a                                       ; $7f1f: $57
    push hl                                       ; $7f20: $e5
    rst $00                                       ; $7f21: $c7
    push de                                       ; $7f22: $d5

Call_05f_7f23:
    push af                                       ; $7f23: $f5
    ld sp, hl                                     ; $7f24: $f9
    ld h, l                                       ; $7f25: $65
    sub [hl]                                      ; $7f26: $96
    ld a, [c]                                     ; $7f27: $f2
    and l                                         ; $7f28: $a5
    call c, $842f                                 ; $7f29: $dc $2f $84
    ret                                           ; $7f2c: $c9


    db $dd                                        ; $7f2d: $dd
    rst $30                                       ; $7f2e: $f7
    dec a                                         ; $7f2f: $3d
    ld [hl-], a                                   ; $7f30: $32
    ld c, $89                                     ; $7f31: $0e $89
    ld e, a                                       ; $7f33: $5f
    and [hl]                                      ; $7f34: $a6
    cp [hl]                                       ; $7f35: $be
    inc c                                         ; $7f36: $0c
    push af                                       ; $7f37: $f5
    push bc                                       ; $7f38: $c5
    add b                                         ; $7f39: $80
    and [hl]                                      ; $7f3a: $a6
    adc l                                         ; $7f3b: $8d
    adc h                                         ; $7f3c: $8c
    ld b, e                                       ; $7f3d: $43
    ld [c], a                                     ; $7f3e: $e2
    sub a                                         ; $7f3f: $97
    ld d, l                                       ; $7f40: $55
    ld sp, hl                                     ; $7f41: $f9
    ld [hl], c                                    ; $7f42: $71
    ld e, l                                       ; $7f43: $5d
    ld a, l                                       ; $7f44: $7d
    ld a, [hl]                                    ; $7f45: $7e
    ld [hl], c                                    ; $7f46: $71
    sbc [hl]                                      ; $7f47: $9e
    di                                            ; $7f48: $f3
    ld [bc], a                                    ; $7f49: $02
    ld l, l                                       ; $7f4a: $6d
    and $c5                                       ; $7f4b: $e6 $c5
    ret nc                                        ; $7f4d: $d0

    add a                                         ; $7f4e: $87
    ld a, [$2940]                                 ; $7f4f: $fa $40 $29
    cpl                                           ; $7f52: $2f
    ld b, $f4                                     ; $7f53: $06 $f4
    cp l                                          ; $7f55: $bd

jr_05f_7f56:
    add e                                         ; $7f56: $83
    sub [hl]                                      ; $7f57: $96
    and c                                         ; $7f58: $a1
    cp [hl]                                       ; $7f59: $be
    xor d                                         ; $7f5a: $aa
    db $f4                                        ; $7f5b: $f4
    sbc $3d                                       ; $7f5c: $de $3d
    cp $c5                                        ; $7f5e: $fe $c5
    dec bc                                        ; $7f60: $0b
    ld h, l                                       ; $7f61: $65
    adc d                                         ; $7f62: $8a
    jp c, $24f0                                   ; $7f63: $da $f0 $24

    sub h                                         ; $7f66: $94
    xor $7b                                       ; $7f67: $ee $7b
    ld l, l                                       ; $7f69: $6d
    ld e, [hl]                                    ; $7f6a: $5e
    call nc, $d95d                                ; $7f6b: $d4 $5d $d9
    xor e                                         ; $7f6e: $ab
    rst $08                                       ; $7f6f: $cf
    cpl                                           ; $7f70: $2f
    adc $a5                                       ; $7f71: $ce $a5
    ld a, c                                       ; $7f73: $79
    dec h                                         ; $7f74: $25
    jr nz, jr_05f_7f56                            ; $7f75: $20 $df

    dec sp                                        ; $7f77: $3b
    ld [$35e2], sp                                ; $7f78: $08 $e2 $35
    sub d                                         ; $7f7b: $92
    adc d                                         ; $7f7c: $8a
    jp hl                                         ; $7f7d: $e9


    ld d, l                                       ; $7f7e: $55
    ld c, d                                       ; $7f7f: $4a
    cpl                                           ; $7f80: $2f
    adc $d5                                       ; $7f81: $ce $d5
    ld c, $6a                                     ; $7f83: $0e $6a
    xor l                                         ; $7f85: $ad
    and $aa                                       ; $7f86: $e6 $aa
    ld a, [bc]                                    ; $7f88: $0a
    db $dd                                        ; $7f89: $dd
    ld b, d                                       ; $7f8a: $42
    ld e, e                                       ; $7f8b: $5b
    jr z, jr_05f_7fd1                             ; $7f8c: $28 $43

    and a                                         ; $7f8e: $a7
    db $eb                                        ; $7f8f: $eb
    ld e, d                                       ; $7f90: $5a
    add hl, bc                                    ; $7f91: $09
    push de                                       ; $7f92: $d5
    add hl, sp                                    ; $7f93: $39
    rst $20                                       ; $7f94: $e7
    ld a, [$c297]                                 ; $7f95: $fa $97 $c2
    inc hl                                        ; $7f98: $23
    xor c                                         ; $7f99: $a9
    ld [hl], h                                    ; $7f9a: $74
    and a                                         ; $7f9b: $a7
    rst $28                                       ; $7f9c: $ef
    rla                                           ; $7f9d: $17
    rlca                                          ; $7f9e: $07
    sbc a                                         ; $7f9f: $9f
    add a                                         ; $7fa0: $87
    or [hl]                                       ; $7fa1: $b6
    ld d, [hl]                                    ; $7fa2: $56
    ld l, b                                       ; $7fa3: $68
    ld de, $290d                                  ; $7fa4: $11 $0d $29
    rst $30                                       ; $7fa7: $f7
    adc [hl]                                      ; $7fa8: $8e
    ld a, [hl-]                                   ; $7fa9: $3a
    or $dc                                        ; $7faa: $f6 $dc
    inc de                                        ; $7fac: $13
    ld [hl], a                                    ; $7fad: $77
    call $4795                                    ; $7fae: $cd $95 $47
    cp a                                          ; $7fb1: $bf
    rlca                                          ; $7fb2: $07
    push af                                       ; $7fb3: $f5
    and a                                         ; $7fb4: $a7
    jp nc, $fcf6                                  ; $7fb5: $d2 $f6 $fc

    ld a, h                                       ; $7fb8: $7c
    call c, $fa3f                                 ; $7fb9: $dc $3f $fa
    sbc $51                                       ; $7fbc: $de $51
    rst $00                                       ; $7fbe: $c7
    sbc [hl]                                      ; $7fbf: $9e
    ld a, e                                       ; $7fc0: $7b
    ld [c], a                                     ; $7fc1: $e2
    xor [hl]                                      ; $7fc2: $ae
    cp c                                          ; $7fc3: $b9
    ld a, [c]                                     ; $7fc4: $f2
    add sp, $17                                   ; $7fc5: $e8 $17
    ld l, l                                       ; $7fc7: $6d
    and $51                                       ; $7fc8: $e6 $51
    ld a, [de]                                    ; $7fca: $1a
    db $dd                                        ; $7fcb: $dd
    adc e                                         ; $7fcc: $8b
    ld a, a                                       ; $7fcd: $7f
    ld c, $94                                     ; $7fce: $0e $94
    ld a, [c]                                     ; $7fd0: $f2

jr_05f_7fd1:
    ld c, b                                       ; $7fd1: $48
    ld [hl], a                                    ; $7fd2: $77
    sbc $13                                       ; $7fd3: $de $13
    ret nc                                        ; $7fd5: $d0

    jp nz, $8ef7                                  ; $7fd6: $c2 $f7 $8e

    ld a, [hl-]                                   ; $7fd9: $3a
    or $dc                                        ; $7fda: $f6 $dc
    inc de                                        ; $7fdc: $13
    ld [hl], a                                    ; $7fdd: $77
    call $4795                                    ; $7fde: $cd $95 $47
    cp a                                          ; $7fe1: $bf
    rst $38                                       ; $7fe2: $ff
    rst $38                                       ; $7fe3: $ff
    rst $38                                       ; $7fe4: $ff
    rst $38                                       ; $7fe5: $ff
    rst $38                                       ; $7fe6: $ff
    rst $38                                       ; $7fe7: $ff
    rst $38                                       ; $7fe8: $ff
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
