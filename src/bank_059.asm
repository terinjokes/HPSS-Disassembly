; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $059", ROMX[$4000], BANK[$59]

    ld e, c                                       ; $4000: $59
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
    call z, $0024                                 ; $400e: $cc $24 $00
    pop de                                        ; $4011: $d1
    inc h                                         ; $4012: $24
    nop                                           ; $4013: $00
    push de                                       ; $4014: $d5
    inc h                                         ; $4015: $24
    nop                                           ; $4016: $00
    jp c, $0024                                   ; $4017: $da $24 $00

    push hl                                       ; $401a: $e5
    inc h                                         ; $401b: $24
    nop                                           ; $401c: $00
    ldh a, [rNR50]                                ; $401d: $f0 $24
    nop                                           ; $401f: $00
    ld sp, hl                                     ; $4020: $f9
    inc h                                         ; $4021: $24
    nop                                           ; $4022: $00
    inc bc                                        ; $4023: $03
    dec h                                         ; $4024: $25
    nop                                           ; $4025: $00
    dec c                                         ; $4026: $0d
    dec h                                         ; $4027: $25
    nop                                           ; $4028: $00
    jr jr_059_4050                                ; $4029: $18 $25

    nop                                           ; $402b: $00
    inc h                                         ; $402c: $24
    dec h                                         ; $402d: $25
    nop                                           ; $402e: $00
    jr nc, jr_059_4056                            ; $402f: $30 $25

    nop                                           ; $4031: $00
    dec a                                         ; $4032: $3d
    dec h                                         ; $4033: $25
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
    ld [hl], d                                    ; $4041: $72
    dec h                                         ; $4042: $25
    nop                                           ; $4043: $00
    ld a, a                                       ; $4044: $7f
    dec h                                         ; $4045: $25
    nop                                           ; $4046: $00
    adc h                                         ; $4047: $8c
    dec h                                         ; $4048: $25
    nop                                           ; $4049: $00
    sbc c                                         ; $404a: $99
    dec h                                         ; $404b: $25
    nop                                           ; $404c: $00
    and a                                         ; $404d: $a7
    dec h                                         ; $404e: $25
    nop                                           ; $404f: $00

jr_059_4050:
    or e                                          ; $4050: $b3
    dec h                                         ; $4051: $25
    nop                                           ; $4052: $00
    ret z                                         ; $4053: $c8

    dec h                                         ; $4054: $25
    nop                                           ; $4055: $00

jr_059_4056:
    xor $25                                       ; $4056: $ee $25
    nop                                           ; $4058: $00
    db $fc                                        ; $4059: $fc
    dec h                                         ; $405a: $25
    nop                                           ; $405b: $00
    ld de, $0026                                  ; $405c: $11 $26 $00
    ld [hl], $26                                  ; $405f: $36 $26
    nop                                           ; $4061: $00
    and d                                         ; $4062: $a2
    ld h, $00                                     ; $4063: $26 $00
    db $e3                                        ; $4065: $e3
    ld h, $00                                     ; $4066: $26 $00
    or $26                                        ; $4068: $f6 $26
    nop                                           ; $406a: $00
    dec c                                         ; $406b: $0d
    daa                                           ; $406c: $27
    nop                                           ; $406d: $00
    ld [hl+], a                                   ; $406e: $22
    daa                                           ; $406f: $27
    nop                                           ; $4070: $00
    dec [hl]                                      ; $4071: $35
    daa                                           ; $4072: $27
    nop                                           ; $4073: $00
    ld c, c                                       ; $4074: $49
    daa                                           ; $4075: $27
    nop                                           ; $4076: $00
    ld h, e                                       ; $4077: $63
    daa                                           ; $4078: $27
    nop                                           ; $4079: $00
    add h                                         ; $407a: $84
    daa                                           ; $407b: $27
    nop                                           ; $407c: $00
    and h                                         ; $407d: $a4
    daa                                           ; $407e: $27
    nop                                           ; $407f: $00
    call nz, Call_000_0027                        ; $4080: $c4 $27 $00
    pop hl                                        ; $4083: $e1
    daa                                           ; $4084: $27
    nop                                           ; $4085: $00
    db $eb                                        ; $4086: $eb
    daa                                           ; $4087: $27
    nop                                           ; $4088: $00
    dec c                                         ; $4089: $0d
    jr z, jr_059_408c                             ; $408a: $28 $00

jr_059_408c:
    inc hl                                        ; $408c: $23
    jr z, jr_059_408f                             ; $408d: $28 $00

jr_059_408f:
    add hl, sp                                    ; $408f: $39
    jr z, jr_059_4092                             ; $4090: $28 $00

jr_059_4092:
    ld [hl], c                                    ; $4092: $71
    jr z, jr_059_4095                             ; $4093: $28 $00

jr_059_4095:
    sub l                                         ; $4095: $95
    jr z, jr_059_4098                             ; $4096: $28 $00

jr_059_4098:
    and l                                         ; $4098: $a5
    jr z, jr_059_409b                             ; $4099: $28 $00

jr_059_409b:
    or b                                          ; $409b: $b0
    jr z, jr_059_409e                             ; $409c: $28 $00

jr_059_409e:
    cp a                                          ; $409e: $bf
    jr z, jr_059_40a1                             ; $409f: $28 $00

jr_059_40a1:
    rst $10                                       ; $40a1: $d7
    jr z, jr_059_40a4                             ; $40a2: $28 $00

jr_059_40a4:
    ld sp, hl                                     ; $40a4: $f9
    jr z, jr_059_40a7                             ; $40a5: $28 $00

jr_059_40a7:
    add hl, sp                                    ; $40a7: $39
    add hl, hl                                    ; $40a8: $29
    nop                                           ; $40a9: $00
    ld l, l                                       ; $40aa: $6d
    add hl, hl                                    ; $40ab: $29
    nop                                           ; $40ac: $00
    adc d                                         ; $40ad: $8a
    add hl, hl                                    ; $40ae: $29
    nop                                           ; $40af: $00
    and e                                         ; $40b0: $a3
    add hl, hl                                    ; $40b1: $29
    nop                                           ; $40b2: $00
    sra c                                         ; $40b3: $cb $29
    nop                                           ; $40b5: $00
    db $fd                                        ; $40b6: $fd
    add hl, hl                                    ; $40b7: $29
    nop                                           ; $40b8: $00
    inc hl                                        ; $40b9: $23
    ld a, [hl+]                                   ; $40ba: $2a
    nop                                           ; $40bb: $00
    ld [hl], $2a                                  ; $40bc: $36 $2a
    nop                                           ; $40be: $00
    ld e, l                                       ; $40bf: $5d
    ld a, [hl+]                                   ; $40c0: $2a
    nop                                           ; $40c1: $00
    ld [hl], b                                    ; $40c2: $70
    ld a, [hl+]                                   ; $40c3: $2a
    nop                                           ; $40c4: $00
    or l                                          ; $40c5: $b5
    ld a, [hl+]                                   ; $40c6: $2a
    nop                                           ; $40c7: $00
    db $d3                                        ; $40c8: $d3
    ld a, [hl+]                                   ; $40c9: $2a
    nop                                           ; $40ca: $00
    dec a                                         ; $40cb: $3d
    dec hl                                        ; $40cc: $2b
    nop                                           ; $40cd: $00
    ld c, a                                       ; $40ce: $4f
    dec hl                                        ; $40cf: $2b
    nop                                           ; $40d0: $00
    ld [hl], h                                    ; $40d1: $74
    dec hl                                        ; $40d2: $2b
    nop                                           ; $40d3: $00
    ld a, a                                       ; $40d4: $7f
    dec hl                                        ; $40d5: $2b
    nop                                           ; $40d6: $00
    adc h                                         ; $40d7: $8c
    dec hl                                        ; $40d8: $2b
    nop                                           ; $40d9: $00
    sbc a                                         ; $40da: $9f
    dec hl                                        ; $40db: $2b
    nop                                           ; $40dc: $00
    push de                                       ; $40dd: $d5
    dec hl                                        ; $40de: $2b
    nop                                           ; $40df: $00
    push af                                       ; $40e0: $f5
    dec hl                                        ; $40e1: $2b
    nop                                           ; $40e2: $00
    ld sp, hl                                     ; $40e3: $f9
    dec hl                                        ; $40e4: $2b
    nop                                           ; $40e5: $00
    db $fd                                        ; $40e6: $fd
    dec hl                                        ; $40e7: $2b
    nop                                           ; $40e8: $00
    ld [bc], a                                    ; $40e9: $02
    inc l                                         ; $40ea: $2c
    nop                                           ; $40eb: $00
    inc [hl]                                      ; $40ec: $34
    inc l                                         ; $40ed: $2c
    nop                                           ; $40ee: $00
    ld d, l                                       ; $40ef: $55
    inc l                                         ; $40f0: $2c
    nop                                           ; $40f1: $00
    ld a, b                                       ; $40f2: $78
    inc l                                         ; $40f3: $2c
    nop                                           ; $40f4: $00
    pop bc                                        ; $40f5: $c1
    inc l                                         ; $40f6: $2c
    nop                                           ; $40f7: $00
    push hl                                       ; $40f8: $e5
    inc l                                         ; $40f9: $2c
    nop                                           ; $40fa: $00
    ld de, $002d                                  ; $40fb: $11 $2d $00
    ccf                                           ; $40fe: $3f
    dec l                                         ; $40ff: $2d
    nop                                           ; $4100: $00
    ld l, c                                       ; $4101: $69
    dec l                                         ; $4102: $2d
    nop                                           ; $4103: $00
    or e                                          ; $4104: $b3
    dec l                                         ; $4105: $2d
    nop                                           ; $4106: $00
    cp a                                          ; $4107: $bf
    dec l                                         ; $4108: $2d
    nop                                           ; $4109: $00
    add sp, $2d                                   ; $410a: $e8 $2d
    nop                                           ; $410c: $00
    push af                                       ; $410d: $f5
    dec l                                         ; $410e: $2d
    nop                                           ; $410f: $00
    add hl, de                                    ; $4110: $19
    ld l, $00                                     ; $4111: $2e $00
    inc l                                         ; $4113: $2c
    ld l, $00                                     ; $4114: $2e $00
    ld l, [hl]                                    ; $4116: $6e
    ld l, $00                                     ; $4117: $2e $00
    cp e                                          ; $4119: $bb
    ld l, $00                                     ; $411a: $2e $00
    db $e4                                        ; $411c: $e4
    ld l, $00                                     ; $411d: $2e $00
    dec e                                         ; $411f: $1d
    cpl                                           ; $4120: $2f
    nop                                           ; $4121: $00
    ld [hl], b                                    ; $4122: $70
    cpl                                           ; $4123: $2f
    nop                                           ; $4124: $00
    add e                                         ; $4125: $83
    cpl                                           ; $4126: $2f
    nop                                           ; $4127: $00
    db $db                                        ; $4128: $db
    cpl                                           ; $4129: $2f
    nop                                           ; $412a: $00
    di                                            ; $412b: $f3
    cpl                                           ; $412c: $2f
    nop                                           ; $412d: $00
    jr jr_059_4160                                ; $412e: $18 $30

    nop                                           ; $4130: $00
    dec sp                                        ; $4131: $3b
    jr nc, jr_059_4134                            ; $4132: $30 $00

jr_059_4134:
    ld c, e                                       ; $4134: $4b
    jr nc, jr_059_4137                            ; $4135: $30 $00

jr_059_4137:
    ld a, e                                       ; $4137: $7b
    jr nc, jr_059_413a                            ; $4138: $30 $00

jr_059_413a:
    cp [hl]                                       ; $413a: $be
    jr nc, jr_059_413d                            ; $413b: $30 $00

jr_059_413d:
    push bc                                       ; $413d: $c5
    jr nc, jr_059_4140                            ; $413e: $30 $00

jr_059_4140:
    push af                                       ; $4140: $f5
    jr nc, jr_059_4143                            ; $4141: $30 $00

jr_059_4143:
    inc c                                         ; $4143: $0c
    ld sp, $1c00                                  ; $4144: $31 $00 $1c
    ld sp, $3b00                                  ; $4147: $31 $00 $3b
    ld sp, $5500                                  ; $414a: $31 $00 $55
    ld sp, $7e00                                  ; $414d: $31 $00 $7e
    ld sp, $9500                                  ; $4150: $31 $00 $95
    ld sp, $f700                                  ; $4153: $31 $00 $f7
    ld sp, $1d00                                  ; $4156: $31 $00 $1d
    ld [hl-], a                                   ; $4159: $32
    nop                                           ; $415a: $00
    jr z, @+$34                                   ; $415b: $28 $32

    nop                                           ; $415d: $00
    ld e, c                                       ; $415e: $59
    ld [hl-], a                                   ; $415f: $32

jr_059_4160:
    nop                                           ; $4160: $00
    ld l, d                                       ; $4161: $6a
    ld [hl-], a                                   ; $4162: $32
    nop                                           ; $4163: $00
    xor l                                         ; $4164: $ad
    ld [hl-], a                                   ; $4165: $32
    nop                                           ; $4166: $00
    push de                                       ; $4167: $d5
    ld [hl-], a                                   ; $4168: $32
    nop                                           ; $4169: $00
    ld [c], a                                     ; $416a: $e2
    ld [hl-], a                                   ; $416b: $32
    nop                                           ; $416c: $00
    db $fd                                        ; $416d: $fd
    ld [hl-], a                                   ; $416e: $32
    nop                                           ; $416f: $00
    db $10                                        ; $4170: $10
    inc sp                                        ; $4171: $33
    nop                                           ; $4172: $00
    ld [hl], $33                                  ; $4173: $36 $33
    nop                                           ; $4175: $00
    ld c, e                                       ; $4176: $4b
    inc sp                                        ; $4177: $33
    nop                                           ; $4178: $00
    ld a, d                                       ; $4179: $7a
    inc sp                                        ; $417a: $33
    nop                                           ; $417b: $00
    add h                                         ; $417c: $84
    inc sp                                        ; $417d: $33
    nop                                           ; $417e: $00
    sbc l                                         ; $417f: $9d
    inc sp                                        ; $4180: $33
    nop                                           ; $4181: $00
    and e                                         ; $4182: $a3
    inc sp                                        ; $4183: $33
    nop                                           ; $4184: $00
    xor h                                         ; $4185: $ac
    inc sp                                        ; $4186: $33
    nop                                           ; $4187: $00
    or l                                          ; $4188: $b5
    inc sp                                        ; $4189: $33
    nop                                           ; $418a: $00
    cp a                                          ; $418b: $bf
    inc sp                                        ; $418c: $33
    nop                                           ; $418d: $00
    call $0033                                    ; $418e: $cd $33 $00
    reti                                          ; $4191: $d9


    inc sp                                        ; $4192: $33
    nop                                           ; $4193: $00
    rst $20                                       ; $4194: $e7

Jump_059_4195:
    inc sp                                        ; $4195: $33
    nop                                           ; $4196: $00
    pop af                                        ; $4197: $f1
    inc sp                                        ; $4198: $33
    nop                                           ; $4199: $00
    ld sp, hl                                     ; $419a: $f9
    inc sp                                        ; $419b: $33
    nop                                           ; $419c: $00
    ld hl, $0034                                  ; $419d: $21 $34 $00
    ld d, c                                       ; $41a0: $51
    inc [hl]                                      ; $41a1: $34
    nop                                           ; $41a2: $00
    ld a, [hl]                                    ; $41a3: $7e
    inc [hl]                                      ; $41a4: $34
    nop                                           ; $41a5: $00
    adc e                                         ; $41a6: $8b
    inc [hl]                                      ; $41a7: $34
    nop                                           ; $41a8: $00
    sbc [hl]                                      ; $41a9: $9e
    inc [hl]                                      ; $41aa: $34
    nop                                           ; $41ab: $00
    xor a                                         ; $41ac: $af
    inc [hl]                                      ; $41ad: $34
    nop                                           ; $41ae: $00
    pop de                                        ; $41af: $d1
    inc [hl]                                      ; $41b0: $34
    nop                                           ; $41b1: $00
    rst $30                                       ; $41b2: $f7
    inc [hl]                                      ; $41b3: $34
    nop                                           ; $41b4: $00
    add hl, bc                                    ; $41b5: $09
    dec [hl]                                      ; $41b6: $35
    nop                                           ; $41b7: $00
    ccf                                           ; $41b8: $3f
    dec [hl]                                      ; $41b9: $35
    nop                                           ; $41ba: $00
    ld b, l                                       ; $41bb: $45
    dec [hl]                                      ; $41bc: $35
    nop                                           ; $41bd: $00
    ld e, h                                       ; $41be: $5c
    dec [hl]                                      ; $41bf: $35
    nop                                           ; $41c0: $00
    sub a                                         ; $41c1: $97
    dec [hl]                                      ; $41c2: $35
    nop                                           ; $41c3: $00
    xor [hl]                                      ; $41c4: $ae
    dec [hl]                                      ; $41c5: $35
    nop                                           ; $41c6: $00
    pop de                                        ; $41c7: $d1
    dec [hl]                                      ; $41c8: $35
    nop                                           ; $41c9: $00
    db $ec                                        ; $41ca: $ec
    dec [hl]                                      ; $41cb: $35
    nop                                           ; $41cc: $00
    ld c, $36                                     ; $41cd: $0e $36
    nop                                           ; $41cf: $00
    dec h                                         ; $41d0: $25
    ld [hl], $00                                  ; $41d1: $36 $00
    inc a                                         ; $41d3: $3c
    ld [hl], $00                                  ; $41d4: $36 $00
    ld b, h                                       ; $41d6: $44
    ld [hl], $00                                  ; $41d7: $36 $00
    ld e, l                                       ; $41d9: $5d
    ld [hl], $00                                  ; $41da: $36 $00
    ld a, e                                       ; $41dc: $7b
    ld [hl], $00                                  ; $41dd: $36 $00
    add l                                         ; $41df: $85
    ld [hl], $00                                  ; $41e0: $36 $00
    sub a                                         ; $41e2: $97
    ld [hl], $00                                  ; $41e3: $36 $00
    xor b                                         ; $41e5: $a8
    ld [hl], $00                                  ; $41e6: $36 $00
    jp nz, $0036                                  ; $41e8: $c2 $36 $00

    ldh a, [$36]                                  ; $41eb: $f0 $36
    nop                                           ; $41ed: $00
    rra                                           ; $41ee: $1f
    scf                                           ; $41ef: $37
    nop                                           ; $41f0: $00
    ld c, b                                       ; $41f1: $48
    scf                                           ; $41f2: $37
    nop                                           ; $41f3: $00
    ld l, h                                       ; $41f4: $6c
    scf                                           ; $41f5: $37
    nop                                           ; $41f6: $00
    ld a, [hl]                                    ; $41f7: $7e
    scf                                           ; $41f8: $37
    nop                                           ; $41f9: $00
    sub c                                         ; $41fa: $91
    scf                                           ; $41fb: $37
    nop                                           ; $41fc: $00
    or b                                          ; $41fd: $b0
    scf                                           ; $41fe: $37
    nop                                           ; $41ff: $00
    add $37                                       ; $4200: $c6 $37
    nop                                           ; $4202: $00
    jp c, Jump_000_0037                           ; $4203: $da $37 $00

    ld a, [c]                                     ; $4206: $f2
    scf                                           ; $4207: $37
    nop                                           ; $4208: $00
    inc b                                         ; $4209: $04
    jr c, jr_059_420c                             ; $420a: $38 $00

jr_059_420c:
    daa                                           ; $420c: $27
    jr c, jr_059_420f                             ; $420d: $38 $00

jr_059_420f:
    add hl, sp                                    ; $420f: $39
    jr c, jr_059_4212                             ; $4210: $38 $00

jr_059_4212:
    ld d, d                                       ; $4212: $52
    jr c, jr_059_4215                             ; $4213: $38 $00

jr_059_4215:
    ld h, [hl]                                    ; $4215: $66
    jr c, jr_059_4218                             ; $4216: $38 $00

jr_059_4218:
    ld [hl], h                                    ; $4218: $74
    jr c, jr_059_421b                             ; $4219: $38 $00

jr_059_421b:
    add e                                         ; $421b: $83
    jr c, jr_059_421e                             ; $421c: $38 $00

jr_059_421e:
    adc l                                         ; $421e: $8d
    jr c, jr_059_4221                             ; $421f: $38 $00

jr_059_4221:
    and a                                         ; $4221: $a7
    jr c, jr_059_4224                             ; $4222: $38 $00

jr_059_4224:
    and $38                                       ; $4224: $e6 $38
    nop                                           ; $4226: $00
    ld a, [$0038]                                 ; $4227: $fa $38 $00
    dec de                                        ; $422a: $1b
    add hl, sp                                    ; $422b: $39
    nop                                           ; $422c: $00
    inc h                                         ; $422d: $24
    add hl, sp                                    ; $422e: $39
    nop                                           ; $422f: $00
    ld [hl], $39                                  ; $4230: $36 $39
    nop                                           ; $4232: $00
    ld b, e                                       ; $4233: $43
    add hl, sp                                    ; $4234: $39
    nop                                           ; $4235: $00
    ld e, e                                       ; $4236: $5b
    add hl, sp                                    ; $4237: $39
    nop                                           ; $4238: $00
    ld [hl], d                                    ; $4239: $72
    add hl, sp                                    ; $423a: $39
    nop                                           ; $423b: $00
    adc a                                         ; $423c: $8f
    add hl, sp                                    ; $423d: $39
    nop                                           ; $423e: $00
    and c                                         ; $423f: $a1
    add hl, sp                                    ; $4240: $39
    nop                                           ; $4241: $00
    srl c                                         ; $4242: $cb $39
    nop                                           ; $4244: $00
    reti                                          ; $4245: $d9


    add hl, sp                                    ; $4246: $39
    nop                                           ; $4247: $00
    db $ec                                        ; $4248: $ec
    add hl, sp                                    ; $4249: $39
    nop                                           ; $424a: $00
    ld a, [de]                                    ; $424b: $1a
    ld a, [hl-]                                   ; $424c: $3a
    nop                                           ; $424d: $00
    ld sp, $003a                                  ; $424e: $31 $3a $00
    ld b, a                                       ; $4251: $47
    ld a, [hl-]                                   ; $4252: $3a
    nop                                           ; $4253: $00
    ld e, e                                       ; $4254: $5b
    ld a, [hl-]                                   ; $4255: $3a
    nop                                           ; $4256: $00
    ld l, b                                       ; $4257: $68
    ld a, [hl-]                                   ; $4258: $3a
    nop                                           ; $4259: $00
    adc c                                         ; $425a: $89
    ld a, [hl-]                                   ; $425b: $3a
    nop                                           ; $425c: $00
    cp b                                          ; $425d: $b8
    ld a, [hl-]                                   ; $425e: $3a
    nop                                           ; $425f: $00
    push bc                                       ; $4260: $c5
    ld a, [hl-]                                   ; $4261: $3a
    nop                                           ; $4262: $00
    nop                                           ; $4263: $00
    dec sp                                        ; $4264: $3b
    nop                                           ; $4265: $00
    ld d, $3b                                     ; $4266: $16 $3b
    nop                                           ; $4268: $00
    ld d, [hl]                                    ; $4269: $56
    dec sp                                        ; $426a: $3b
    nop                                           ; $426b: $00
    ld a, e                                       ; $426c: $7b
    dec sp                                        ; $426d: $3b
    nop                                           ; $426e: $00
    add d                                         ; $426f: $82
    dec sp                                        ; $4270: $3b
    nop                                           ; $4271: $00
    sbc a                                         ; $4272: $9f
    dec sp                                        ; $4273: $3b
    nop                                           ; $4274: $00
    push bc                                       ; $4275: $c5
    dec sp                                        ; $4276: $3b
    nop                                           ; $4277: $00
    jp z, Jump_000_003b                           ; $4278: $ca $3b $00

    rst $20                                       ; $427b: $e7
    dec sp                                        ; $427c: $3b
    nop                                           ; $427d: $00
    di                                            ; $427e: $f3
    dec sp                                        ; $427f: $3b
    nop                                           ; $4280: $00
    ld de, $003c                                  ; $4281: $11 $3c $00
    ld a, [de]                                    ; $4284: $1a
    inc a                                         ; $4285: $3c
    nop                                           ; $4286: $00
    inc hl                                        ; $4287: $23
    inc a                                         ; $4288: $3c
    nop                                           ; $4289: $00
    cp e                                          ; $428a: $bb
    inc a                                         ; $428b: $3c
    nop                                           ; $428c: $00
    ldh a, [$3c]                                  ; $428d: $f0 $3c
    nop                                           ; $428f: $00
    dec l                                         ; $4290: $2d
    dec a                                         ; $4291: $3d
    nop                                           ; $4292: $00
    ld b, d                                       ; $4293: $42
    dec a                                         ; $4294: $3d
    nop                                           ; $4295: $00
    ld e, c                                       ; $4296: $59
    dec a                                         ; $4297: $3d
    nop                                           ; $4298: $00
    sub b                                         ; $4299: $90
    dec a                                         ; $429a: $3d
    nop                                           ; $429b: $00
    xor d                                         ; $429c: $aa
    dec a                                         ; $429d: $3d
    nop                                           ; $429e: $00
    ld [$003e], sp                                ; $429f: $08 $3e $00
    add hl, sp                                    ; $42a2: $39
    ld a, $00                                     ; $42a3: $3e $00
    ld l, c                                       ; $42a5: $69
    ld a, $00                                     ; $42a6: $3e $00
    add [hl]                                      ; $42a8: $86
    ld a, $00                                     ; $42a9: $3e $00
    cp [hl]                                       ; $42ab: $be
    ld a, $00                                     ; $42ac: $3e $00
    db $db                                        ; $42ae: $db
    ld a, $00                                     ; $42af: $3e $00
    jr z, jr_059_42f2                             ; $42b1: $28 $3f

    nop                                           ; $42b3: $00
    dec a                                         ; $42b4: $3d
    ccf                                           ; $42b5: $3f
    nop                                           ; $42b6: $00
    ld d, d                                       ; $42b7: $52
    ccf                                           ; $42b8: $3f
    nop                                           ; $42b9: $00
    ld [hl], b                                    ; $42ba: $70
    ccf                                           ; $42bb: $3f
    nop                                           ; $42bc: $00
    sub e                                         ; $42bd: $93
    ccf                                           ; $42be: $3f
    nop                                           ; $42bf: $00
    xor a                                         ; $42c0: $af
    ccf                                           ; $42c1: $3f
    nop                                           ; $42c2: $00
    call z, Call_000_003f                         ; $42c3: $cc $3f $00
    ldh [$3f], a                                  ; $42c6: $e0 $3f
    ld bc, $0001                                  ; $42c8: $01 $01 $00
    ld bc, $0022                                  ; $42cb: $01 $22 $00
    ld bc, $0027                                  ; $42ce: $01 $27 $00
    ld bc, $002c                                  ; $42d1: $01 $2c $00
    ld bc, $0064                                  ; $42d4: $01 $64 $00
    ld bc, $0079                                  ; $42d7: $01 $79 $00
    ld bc, $00a6                                  ; $42da: $01 $a6 $00
    ld bc, $00b0                                  ; $42dd: $01 $b0 $00
    ld bc, $00db                                  ; $42e0: $01 $db $00
    ld bc, $00e0                                  ; $42e3: $01 $e0 $00
    ld bc, $00f6                                  ; $42e6: $01 $f6 $00
    ld bc, $0106                                  ; $42e9: $01 $06 $01
    ld bc, $012d                                  ; $42ec: $01 $2d $01
    ld bc, $0163                                  ; $42ef: $01 $63 $01

jr_059_42f2:
    ld bc, $0177                                  ; $42f2: $01 $77 $01
    ld bc, $0184                                  ; $42f5: $01 $84 $01
    ld bc, $019a                                  ; $42f8: $01 $9a $01
    ld bc, $01b6                                  ; $42fb: $01 $b6 $01
    ld bc, $01d1                                  ; $42fe: $01 $d1 $01
    ld bc, $01e7                                  ; $4301: $01 $e7 $01
    ld bc, $0221                                  ; $4304: $01 $21 $02
    ld bc, $022c                                  ; $4307: $01 $2c $02
    ld bc, $0298                                  ; $430a: $01 $98 $02
    ld bc, $02a6                                  ; $430d: $01 $a6 $02
    ld bc, $02b6                                  ; $4310: $01 $b6 $02
    ld bc, $02c8                                  ; $4313: $01 $c8 $02
    ld bc, $02e0                                  ; $4316: $01 $e0 $02
    ld bc, $02f2                                  ; $4319: $01 $f2 $02
    ld bc, $0312                                  ; $431c: $01 $12 $03
    ld bc, $0322                                  ; $431f: $01 $22 $03
    ld bc, $0332                                  ; $4322: $01 $32 $03
    ld bc, $0395                                  ; $4325: $01 $95 $03
    ld bc, $03b0                                  ; $4328: $01 $b0 $03
    ld bc, $03d0                                  ; $432b: $01 $d0 $03
    ld bc, $03ed                                  ; $432e: $01 $ed $03
    ld bc, $03ff                                  ; $4331: $01 $ff $03
    ld bc, $0425                                  ; $4334: $01 $25 $04
    ld bc, $0435                                  ; $4337: $01 $35 $04
    ld bc, $045a                                  ; $433a: $01 $5a $04
    ld bc, $0477                                  ; $433d: $01 $77 $04
    ld bc, $04a5                                  ; $4340: $01 $a5 $04
    ld bc, $04ba                                  ; $4343: $01 $ba $04
    ld bc, $04d4                                  ; $4346: $01 $d4 $04
    ld bc, $0574                                  ; $4349: $01 $74 $05
    ld bc, $0588                                  ; $434c: $01 $88 $05
    ld bc, $05e4                                  ; $434f: $01 $e4 $05
    ld bc, $05f7                                  ; $4352: $01 $f7 $05
    ld bc, $0610                                  ; $4355: $01 $10 $06
    ld bc, $0622                                  ; $4358: $01 $22 $06
    ld bc, $0670                                  ; $435b: $01 $70 $06
    ld bc, $06d1                                  ; $435e: $01 $d1 $06
    ld bc, $06ec                                  ; $4361: $01 $ec $06
    ld bc, $06fc                                  ; $4364: $01 $fc $06
    ld bc, $0711                                  ; $4367: $01 $11 $07
    ld bc, $0723                                  ; $436a: $01 $23 $07
    ld bc, $0731                                  ; $436d: $01 $31 $07
    ld bc, $073e                                  ; $4370: $01 $3e $07
    ld bc, $074e                                  ; $4373: $01 $4e $07
    ld bc, $075d                                  ; $4376: $01 $5d $07
    ld bc, $076a                                  ; $4379: $01 $6a $07
    ld bc, $0773                                  ; $437c: $01 $73 $07
    ld bc, $077e                                  ; $437f: $01 $7e $07
    ld bc, $0792                                  ; $4382: $01 $92 $07
    ld bc, $07b5                                  ; $4385: $01 $b5 $07
    ld bc, $07d8                                  ; $4388: $01 $d8 $07
    ld bc, $07fd                                  ; $438b: $01 $fd $07
    ld bc, $080b                                  ; $438e: $01 $0b $08
    ld bc, $082b                                  ; $4391: $01 $2b $08
    ld bc, $085a                                  ; $4394: $01 $5a $08
    ld bc, $087d                                  ; $4397: $01 $7d $08
    ld bc, $088f                                  ; $439a: $01 $8f $08
    ld bc, $089f                                  ; $439d: $01 $9f $08
    ld bc, $08ac                                  ; $43a0: $01 $ac $08
    ld bc, $08c2                                  ; $43a3: $01 $c2 $08
    ld bc, $08d4                                  ; $43a6: $01 $d4 $08
    ld bc, $08ed                                  ; $43a9: $01 $ed $08
    ld bc, $08f9                                  ; $43ac: $01 $f9 $08
    ld bc, $0909                                  ; $43af: $01 $09 $09
    ld bc, $0919                                  ; $43b2: $01 $19 $09
    ld bc, $0937                                  ; $43b5: $01 $37 $09
    ld bc, $096c                                  ; $43b8: $01 $6c $09
    ld bc, $098a                                  ; $43bb: $01 $8a $09
    ld bc, $098d                                  ; $43be: $01 $8d $09
    ld bc, $09b4                                  ; $43c1: $01 $b4 $09
    ld bc, $09cb                                  ; $43c4: $01 $cb $09
    ld bc, $09e3                                  ; $43c7: $01 $e3 $09
    ld bc, $09f0                                  ; $43ca: $01 $f0 $09
    ld bc, $0a02                                  ; $43cd: $01 $02 $0a
    ld bc, $0a2d                                  ; $43d0: $01 $2d $0a
    ld bc, $0aa4                                  ; $43d3: $01 $a4 $0a
    ld bc, $0ab7                                  ; $43d6: $01 $b7 $0a
    ld bc, $0ac3                                  ; $43d9: $01 $c3 $0a
    ld bc, $0ad8                                  ; $43dc: $01 $d8 $0a
    ld bc, $0aec                                  ; $43df: $01 $ec $0a
    ld bc, $0b20                                  ; $43e2: $01 $20 $0b
    ld bc, $0b42                                  ; $43e5: $01 $42 $0b
    ld bc, $0b5e                                  ; $43e8: $01 $5e $0b
    ld bc, $0b86                                  ; $43eb: $01 $86 $0b
    ld bc, $0bc3                                  ; $43ee: $01 $c3 $0b
    ld bc, $0c17                                  ; $43f1: $01 $17 $0c
    ld bc, $0c47                                  ; $43f4: $01 $47 $0c
    ld bc, $0c77                                  ; $43f7: $01 $77 $0c
    ld bc, $0ca0                                  ; $43fa: $01 $a0 $0c
    ld bc, $0ccd                                  ; $43fd: $01 $cd $0c
    ld bc, $0cff                                  ; $4400: $01 $ff $0c
    ld bc, $0d32                                  ; $4403: $01 $32 $0d
    ld bc, $0d63                                  ; $4406: $01 $63 $0d
    ld bc, $0d8e                                  ; $4409: $01 $8e $0d
    ld bc, $0db9                                  ; $440c: $01 $b9 $0d
    ld bc, $0de7                                  ; $440f: $01 $e7 $0d
    ld bc, $0e18                                  ; $4412: $01 $18 $0e
    ld bc, $0e60                                  ; $4415: $01 $60 $0e
    ld bc, $0e8d                                  ; $4418: $01 $8d $0e
    ld bc, $0ece                                  ; $441b: $01 $ce $0e
    ld bc, $0eeb                                  ; $441e: $01 $eb $0e
    ld bc, $0f17                                  ; $4421: $01 $17 $0f
    ld bc, $0f52                                  ; $4424: $01 $52 $0f
    ld bc, $0f90                                  ; $4427: $01 $90 $0f
    ld bc, $0fb5                                  ; $442a: $01 $b5 $0f
    ld bc, $0fdf                                  ; $442d: $01 $df $0f
    ld bc, $1008                                  ; $4430: $01 $08 $10
    ld bc, $1029                                  ; $4433: $01 $29 $10
    ld bc, $1057                                  ; $4436: $01 $57 $10
    ld bc, $108b                                  ; $4439: $01 $8b $10
    ld bc, $10dc                                  ; $443c: $01 $dc $10
    ld bc, $1123                                  ; $443f: $01 $23 $11
    ld bc, $1165                                  ; $4442: $01 $65 $11
    ld bc, $1195                                  ; $4445: $01 $95 $11
    ld bc, $11be                                  ; $4448: $01 $be $11
    ld bc, $11f3                                  ; $444b: $01 $f3 $11
    ld bc, $122c                                  ; $444e: $01 $2c $12
    ld bc, $126f                                  ; $4451: $01 $6f $12
    ld bc, $12bd                                  ; $4454: $01 $bd $12
    ld bc, $12f2                                  ; $4457: $01 $f2 $12
    ld bc, $1326                                  ; $445a: $01 $26 $13
    ld bc, $135d                                  ; $445d: $01 $5d $13
    ld bc, $139d                                  ; $4460: $01 $9d $13
    ld bc, $13c9                                  ; $4463: $01 $c9 $13
    ld bc, $13fe                                  ; $4466: $01 $fe $13
    ld bc, $1430                                  ; $4469: $01 $30 $14
    ld bc, $143d                                  ; $446c: $01 $3d $14
    ld bc, $1453                                  ; $446f: $01 $53 $14
    ld bc, $1461                                  ; $4472: $01 $61 $14
    ld bc, $147f                                  ; $4475: $01 $7f $14
    ld bc, $149b                                  ; $4478: $01 $9b $14
    ld bc, $14a4                                  ; $447b: $01 $a4 $14
    ld bc, $14b2                                  ; $447e: $01 $b2 $14
    ld bc, $14b6                                  ; $4481: $01 $b6 $14
    ld bc, $14de                                  ; $4484: $01 $de $14
    ld bc, $14f9                                  ; $4487: $01 $f9 $14
    ld bc, $1517                                  ; $448a: $01 $17 $15
    ld bc, $153b                                  ; $448d: $01 $3b $15
    ld bc, $1552                                  ; $4490: $01 $52 $15
    ld bc, $155a                                  ; $4493: $01 $5a $15
    ld bc, $15a0                                  ; $4496: $01 $a0 $15
    ld bc, $15c7                                  ; $4499: $01 $c7 $15
    ld bc, $15e6                                  ; $449c: $01 $e6 $15
    ld bc, $15f5                                  ; $449f: $01 $f5 $15
    ld bc, $160a                                  ; $44a2: $01 $0a $16
    ld bc, $161f                                  ; $44a5: $01 $1f $16
    ld bc, $162b                                  ; $44a8: $01 $2b $16
    ld bc, $1635                                  ; $44ab: $01 $35 $16
    ld bc, $1645                                  ; $44ae: $01 $45 $16
    ld bc, $1659                                  ; $44b1: $01 $59 $16
    ld bc, $1677                                  ; $44b4: $01 $77 $16
    ld bc, $1684                                  ; $44b7: $01 $84 $16
    ld bc, $169b                                  ; $44ba: $01 $9b $16
    ld bc, $16b1                                  ; $44bd: $01 $b1 $16
    ld bc, $16e6                                  ; $44c0: $01 $e6 $16
    ld bc, $16fe                                  ; $44c3: $01 $fe $16
    ld bc, $170e                                  ; $44c6: $01 $0e $17
    ld bc, $1721                                  ; $44c9: $01 $21 $17
    ld bc, $1742                                  ; $44cc: $01 $42 $17
    ld bc, $1761                                  ; $44cf: $01 $61 $17
    ld bc, $1768                                  ; $44d2: $01 $68 $17
    ld bc, $178b                                  ; $44d5: $01 $8b $17
    ld bc, $1799                                  ; $44d8: $01 $99 $17
    ld bc, $17c3                                  ; $44db: $01 $c3 $17
    ld bc, $17e8                                  ; $44de: $01 $e8 $17
    ld bc, $17f3                                  ; $44e1: $01 $f3 $17
    ld bc, $180c                                  ; $44e4: $01 $0c $18
    ld bc, $1819                                  ; $44e7: $01 $19 $18
    ld bc, $1850                                  ; $44ea: $01 $50 $18
    ld bc, $1862                                  ; $44ed: $01 $62 $18
    ld bc, $1877                                  ; $44f0: $01 $77 $18
    ld bc, $1886                                  ; $44f3: $01 $86 $18

Jump_059_44f6:
    ld bc, $1895                                  ; $44f6: $01 $95 $18
    ld bc, $18d9                                  ; $44f9: $01 $d9 $18
    ld bc, $18ea                                  ; $44fc: $01 $ea $18
    ld bc, $18ff                                  ; $44ff: $01 $ff $18
    ld bc, $1909                                  ; $4502: $01 $09 $19
    ld bc, $1912                                  ; $4505: $01 $12 $19
    ld bc, $192e                                  ; $4508: $01 $2e $19
    ld bc, $1938                                  ; $450b: $01 $38 $19
    ld bc, $193e                                  ; $450e: $01 $3e $19
    ld bc, $194c                                  ; $4511: $01 $4c $19
    ld bc, $1969                                  ; $4514: $01 $69 $19
    ld bc, $196d                                  ; $4517: $01 $6d $19
    ld bc, $198d                                  ; $451a: $01 $8d $19
    ld bc, $19ae                                  ; $451d: $01 $ae $19
    ld bc, $19bc                                  ; $4520: $01 $bc $19
    ld bc, $19df                                  ; $4523: $01 $df $19
    ld bc, $19f2                                  ; $4526: $01 $f2 $19
    ld bc, $1a23                                  ; $4529: $01 $23 $1a
    ld bc, $1a3c                                  ; $452c: $01 $3c $1a
    ld bc, $1a6f                                  ; $452f: $01 $6f $1a
    ld bc, $1aa7                                  ; $4532: $01 $a7 $1a
    ld bc, $1ac4                                  ; $4535: $01 $c4 $1a
    ld bc, $1b01                                  ; $4538: $01 $01 $1b
    ld bc, $1b3c                                  ; $453b: $01 $3c $1b
    ld bc, $1b6a                                  ; $453e: $01 $6a $1b
    ld bc, $1bcd                                  ; $4541: $01 $cd $1b
    ld bc, $1bea                                  ; $4544: $01 $ea $1b
    ld bc, $1c48                                  ; $4547: $01 $48 $1c
    ld bc, $1c5c                                  ; $454a: $01 $5c $1c
    ld bc, $1c87                                  ; $454d: $01 $87 $1c
    ld bc, $1d5e                                  ; $4550: $01 $5e $1d
    ld bc, $1d8b                                  ; $4553: $01 $8b $1d
    ld bc, $1da3                                  ; $4556: $01 $a3 $1d
    ld bc, $1dc9                                  ; $4559: $01 $c9 $1d
    ld bc, $1ded                                  ; $455c: $01 $ed $1d
    ld bc, $1dfe                                  ; $455f: $01 $fe $1d
    ld bc, $1e0b                                  ; $4562: $01 $0b $1e
    ld bc, $1e46                                  ; $4565: $01 $46 $1e
    ld bc, $1e4c                                  ; $4568: $01 $4c $1e
    ld bc, $1e63                                  ; $456b: $01 $63 $1e
    ld bc, $1e9f                                  ; $456e: $01 $9f $1e
    ld bc, $1ec8                                  ; $4571: $01 $c8 $1e
    ld bc, $1eef                                  ; $4574: $01 $ef $1e
    ld bc, $1efc                                  ; $4577: $01 $fc $1e
    ld bc, $1f1e                                  ; $457a: $01 $1e $1f
    ld bc, $1f45                                  ; $457d: $01 $45 $1f
    ld bc, $1f6a                                  ; $4580: $01 $6a $1f
    ld bc, $1f9a                                  ; $4583: $01 $9a $1f
    ld bc, $1fad                                  ; $4586: $01 $ad $1f
    ld bc, $1fbd                                  ; $4589: $01 $bd $1f
    ld bc, $1fd5                                  ; $458c: $01 $d5 $1f
    ld bc, $1ffb                                  ; $458f: $01 $fb $1f
    ld bc, $200a                                  ; $4592: $01 $0a $20
    ld bc, $2038                                  ; $4595: $01 $38 $20
    ld bc, $2068                                  ; $4598: $01 $68 $20
    ld bc, $2078                                  ; $459b: $01 $78 $20
    ld bc, $20a1                                  ; $459e: $01 $a1 $20
    ld bc, $20bb                                  ; $45a1: $01 $bb $20
    ld bc, $20c3                                  ; $45a4: $01 $c3 $20
    ld bc, $20fe                                  ; $45a7: $01 $fe $20
    ld bc, $2104                                  ; $45aa: $01 $04 $21
    ld bc, $2199                                  ; $45ad: $01 $99 $21
    ld bc, $21ab                                  ; $45b0: $01 $ab $21
    ld bc, $21b3                                  ; $45b3: $01 $b3 $21
    ld bc, $21c8                                  ; $45b6: $01 $c8 $21
    ld bc, $21ea                                  ; $45b9: $01 $ea $21
    ld bc, $2217                                  ; $45bc: $01 $17 $22
    ld bc, $2247                                  ; $45bf: $01 $47 $22
    ld bc, $2269                                  ; $45c2: $01 $69 $22
    ld bc, $2281                                  ; $45c5: $01 $81 $22
    ld bc, $22ca                                  ; $45c8: $01 $ca $22
    ld bc, $2332                                  ; $45cb: $01 $32 $23
    ld bc, $2353                                  ; $45ce: $01 $53 $23
    ld bc, $237b                                  ; $45d1: $01 $7b $23
    ld bc, $2391                                  ; $45d4: $01 $91 $23
    ld bc, $23b6                                  ; $45d7: $01 $b6 $23
    ld bc, $23cc                                  ; $45da: $01 $cc $23
    ld bc, $23f7                                  ; $45dd: $01 $f7 $23
    ld bc, $240c                                  ; $45e0: $01 $0c $24
    ld bc, $2436                                  ; $45e3: $01 $36 $24
    ld bc, $2472                                  ; $45e6: $01 $72 $24
    ld bc, $24a9                                  ; $45e9: $01 $a9 $24
    ld bc, $24c8                                  ; $45ec: $01 $c8 $24
    ld bc, $2521                                  ; $45ef: $01 $21 $25
    ld bc, $2549                                  ; $45f2: $01 $49 $25
    ld bc, $25ad                                  ; $45f5: $01 $ad $25
    ld bc, $25cc                                  ; $45f8: $01 $cc $25
    ld bc, $25fa                                  ; $45fb: $01 $fa $25
    ld bc, $262a                                  ; $45fe: $01 $2a $26
    ld bc, $265f                                  ; $4601: $01 $5f $26
    ld bc, $2675                                  ; $4604: $01 $75 $26
    ld bc, $2694                                  ; $4607: $01 $94 $26
    ld bc, $26b5                                  ; $460a: $01 $b5 $26
    ld bc, $26e5                                  ; $460d: $01 $e5 $26
    ld bc, $26fa                                  ; $4610: $01 $fa $26
    ld bc, $2710                                  ; $4613: $01 $10 $27
    ld bc, $2727                                  ; $4616: $01 $27 $27
    ld bc, $2756                                  ; $4619: $01 $56 $27
    ld bc, $2786                                  ; $461c: $01 $86 $27
    ld bc, $2799                                  ; $461f: $01 $99 $27
    ld bc, $27bd                                  ; $4622: $01 $bd $27
    ld bc, $27f4                                  ; $4625: $01 $f4 $27
    ld bc, $2818                                  ; $4628: $01 $18 $28
    ld bc, $286d                                  ; $462b: $01 $6d $28
    ld bc, $2887                                  ; $462e: $01 $87 $28
    ld bc, $28bd                                  ; $4631: $01 $bd $28
    ld bc, $28e6                                  ; $4634: $01 $e6 $28
    ld bc, $290c                                  ; $4637: $01 $0c $29
    ld bc, $293f                                  ; $463a: $01 $3f $29
    ld bc, $2958                                  ; $463d: $01 $58 $29
    ld bc, $2989                                  ; $4640: $01 $89 $29
    ld bc, $29a6                                  ; $4643: $01 $a6 $29
    ld bc, $29d0                                  ; $4646: $01 $d0 $29
    ld bc, $29e3                                  ; $4649: $01 $e3 $29
    ld bc, $2a17                                  ; $464c: $01 $17 $2a
    ld bc, $2a34                                  ; $464f: $01 $34 $2a
    ld bc, $2a46                                  ; $4652: $01 $46 $2a
    ld bc, $2a71                                  ; $4655: $01 $71 $2a
    ld bc, $2a96                                  ; $4658: $01 $96 $2a
    ld bc, $2aad                                  ; $465b: $01 $ad $2a
    ld bc, $2ad7                                  ; $465e: $01 $d7 $2a
    ld bc, $2b01                                  ; $4661: $01 $01 $2b

Call_059_4664:
    ld bc, $2b28                                  ; $4664: $01 $28 $2b
    ld bc, $2b4b                                  ; $4667: $01 $4b $2b
    ld bc, $2b8b                                  ; $466a: $01 $8b $2b
    ld bc, $2bbc                                  ; $466d: $01 $bc $2b
    ld bc, $2bf7                                  ; $4670: $01 $f7 $2b

Jump_059_4673:
    ld bc, $2c1e                                  ; $4673: $01 $1e $2c
    ld bc, $2c3f                                  ; $4676: $01 $3f $2c
    ld bc, $2c58                                  ; $4679: $01 $58 $2c
    ld bc, $2c76                                  ; $467c: $01 $76 $2c
    ld bc, $2cac                                  ; $467f: $01 $ac $2c
    ld bc, $2ccb                                  ; $4682: $01 $cb $2c
    ld bc, $2cf7                                  ; $4685: $01 $f7 $2c
    ld bc, $2d14                                  ; $4688: $01 $14 $2d
    ld bc, $2d36                                  ; $468b: $01 $36 $2d
    ld bc, $2d55                                  ; $468e: $01 $55 $2d
    ld bc, $2d7b                                  ; $4691: $01 $7b $2d
    ld bc, $2d83                                  ; $4694: $01 $83 $2d
    ld bc, $2da7                                  ; $4697: $01 $a7 $2d
    ld bc, $2db8                                  ; $469a: $01 $b8 $2d
    ld bc, $2dd3                                  ; $469d: $01 $d3 $2d
    ld bc, $2de5                                  ; $46a0: $01 $e5 $2d
    ld bc, $2df2                                  ; $46a3: $01 $f2 $2d
    ld bc, $2e02                                  ; $46a6: $01 $02 $2e
    ld bc, $2e17                                  ; $46a9: $01 $17 $2e
    ld bc, $2e3d                                  ; $46ac: $01 $3d $2e
    ld bc, $2e6f                                  ; $46af: $01 $6f $2e
    ld bc, $2e74                                  ; $46b2: $01 $74 $2e
    ld bc, $2ed2                                  ; $46b5: $01 $d2 $2e
    ld bc, $2ee2                                  ; $46b8: $01 $e2 $2e
    ld bc, $2f3e                                  ; $46bb: $01 $3e $2f
    ld bc, $2f60                                  ; $46be: $01 $60 $2f
    ld bc, $2f74                                  ; $46c1: $01 $74 $2f
    ld bc, $2f9d                                  ; $46c4: $01 $9d $2f
    ld bc, $2fdd                                  ; $46c7: $01 $dd $2f
    ld bc, $300b                                  ; $46ca: $01 $0b $30
    ld bc, $301b                                  ; $46cd: $01 $1b $30
    ld bc, $302e                                  ; $46d0: $01 $2e $30
    ld bc, $3043                                  ; $46d3: $01 $43 $30
    ld bc, $3075                                  ; $46d6: $01 $75 $30
    ld bc, $308e                                  ; $46d9: $01 $8e $30
    ld bc, $309d                                  ; $46dc: $01 $9d $30
    ld bc, $30a8                                  ; $46df: $01 $a8 $30
    ld bc, $30e0                                  ; $46e2: $01 $e0 $30
    ld bc, $310c                                  ; $46e5: $01 $0c $31
    ld bc, $311f                                  ; $46e8: $01 $1f $31
    ld bc, $3151                                  ; $46eb: $01 $51 $31
    ld bc, $3189                                  ; $46ee: $01 $89 $31
    ld bc, $31a2                                  ; $46f1: $01 $a2 $31
    ld bc, $31c6                                  ; $46f4: $01 $c6 $31
    ld bc, $31d9                                  ; $46f7: $01 $d9 $31
    ld bc, $31f2                                  ; $46fa: $01 $f2 $31
    ld bc, $320b                                  ; $46fd: $01 $0b $32
    ld bc, $3220                                  ; $4700: $01 $20 $32
    ld bc, $323d                                  ; $4703: $01 $3d $32
    ld bc, $325e                                  ; $4706: $01 $5e $32
    ld bc, $32b1                                  ; $4709: $01 $b1 $32
    ld bc, $32c4                                  ; $470c: $01 $c4 $32
    ld bc, $3322                                  ; $470f: $01 $22 $33
    ld bc, $335a                                  ; $4712: $01 $5a $33
    ld bc, $3373                                  ; $4715: $01 $73 $33
    ld bc, $339c                                  ; $4718: $01 $9c $33
    ld bc, $33d7                                  ; $471b: $01 $d7 $33
    ld bc, $3418                                  ; $471e: $01 $18 $34
    ld bc, $3440                                  ; $4721: $01 $40 $34
    ld bc, $3450                                  ; $4724: $01 $50 $34
    ld bc, $3460                                  ; $4727: $01 $60 $34
    ld bc, $3482                                  ; $472a: $01 $82 $34
    ld bc, $34a0                                  ; $472d: $01 $a0 $34
    ld bc, $34aa                                  ; $4730: $01 $aa $34
    ld bc, $34ba                                  ; $4733: $01 $ba $34
    ld bc, $34cf                                  ; $4736: $01 $cf $34
    ld bc, $34e8                                  ; $4739: $01 $e8 $34
    ld bc, $3512                                  ; $473c: $01 $12 $35
    ld bc, $3527                                  ; $473f: $01 $27 $35
    ld bc, $3533                                  ; $4742: $01 $33 $35
    ld bc, $354e                                  ; $4745: $01 $4e $35
    ld bc, $35cb                                  ; $4748: $01 $cb $35
    ld bc, $35dd                                  ; $474b: $01 $dd $35
    ld bc, $35f5                                  ; $474e: $01 $f5 $35
    ld bc, $3620                                  ; $4751: $01 $20 $36
    ld bc, $3638                                  ; $4754: $01 $38 $36
    ld bc, $3660                                  ; $4757: $01 $60 $36
    ld bc, $369a                                  ; $475a: $01 $9a $36
    ld bc, $36b3                                  ; $475d: $01 $b3 $36
    ld bc, $3712                                  ; $4760: $01 $12 $37
    ld bc, $371a                                  ; $4763: $01 $1a $37
    ld bc, $3730                                  ; $4766: $01 $30 $37
    ld bc, $373c                                  ; $4769: $01 $3c $37
    ld bc, $3755                                  ; $476c: $01 $55 $37
    ld bc, $3772                                  ; $476f: $01 $72 $37
    ld bc, $37a2                                  ; $4772: $01 $a2 $37
    ld bc, $37d1                                  ; $4775: $01 $d1 $37
    ld bc, $37fa                                  ; $4778: $01 $fa $37
    ld bc, $382b                                  ; $477b: $01 $2b $38
    ld bc, $3840                                  ; $477e: $01 $40 $38
    ld bc, $384f                                  ; $4781: $01 $4f $38
    ld bc, $385c                                  ; $4784: $01 $5c $38
    ld bc, $386c                                  ; $4787: $01 $6c $38
    ld bc, $388e                                  ; $478a: $01 $8e $38
    ld bc, $38e2                                  ; $478d: $01 $e2 $38
    ld bc, $391a                                  ; $4790: $01 $1a $39
    ld bc, $3938                                  ; $4793: $01 $38 $39
    ld bc, $396d                                  ; $4796: $01 $6d $39
    ld bc, $399d                                  ; $4799: $01 $9d $39
    ld bc, $39b0                                  ; $479c: $01 $b0 $39
    ld bc, $39ca                                  ; $479f: $01 $ca $39
    ld bc, $39f2                                  ; $47a2: $01 $f2 $39
    ld bc, $3a04                                  ; $47a5: $01 $04 $3a
    ld bc, $3a0b                                  ; $47a8: $01 $0b $3a
    ld bc, $3a1e                                  ; $47ab: $01 $1e $3a
    ld bc, $3a36                                  ; $47ae: $01 $36 $3a
    ld bc, $3a50                                  ; $47b1: $01 $50 $3a
    ld bc, $3a6b                                  ; $47b4: $01 $6b $3a
    ld bc, $3a78                                  ; $47b7: $01 $78 $3a
    ld bc, $3a99                                  ; $47ba: $01 $99 $3a
    ld bc, $3ab7                                  ; $47bd: $01 $b7 $3a
    ld bc, $3adc                                  ; $47c0: $01 $dc $3a
    ld bc, $3aeb                                  ; $47c3: $01 $eb $3a
    ld bc, $3b0a                                  ; $47c6: $01 $0a $3b
    ld bc, $3b1f                                  ; $47c9: $01 $1f $3b
    ld bc, $3b33                                  ; $47cc: $01 $33 $3b
    ld bc, $3b4b                                  ; $47cf: $01 $4b $3b
    ld bc, $3b6a                                  ; $47d2: $01 $6a $3b
    ld bc, $3b83                                  ; $47d5: $01 $83 $3b
    ld bc, $3ba3                                  ; $47d8: $01 $a3 $3b
    ld bc, $3bc5                                  ; $47db: $01 $c5 $3b
    ld bc, $3bdf                                  ; $47de: $01 $df $3b
    ld bc, $3c04                                  ; $47e1: $01 $04 $3c
    ld bc, $3c2a                                  ; $47e4: $01 $2a $3c
    ld bc, $3c4c                                  ; $47e7: $01 $4c $3c
    ld bc, $3c80                                  ; $47ea: $01 $80 $3c
    ld bc, $3c97                                  ; $47ed: $01 $97 $3c
    ld bc, $3ca9                                  ; $47f0: $01 $a9 $3c
    ld bc, $3cbd                                  ; $47f3: $01 $bd $3c
    ld bc, $3cd0                                  ; $47f6: $01 $d0 $3c
    ld bc, $3cfe                                  ; $47f9: $01 $fe $3c
    ld bc, $3d1a                                  ; $47fc: $01 $1a $3d
    ld bc, $3d3e                                  ; $47ff: $01 $3e $3d
    ld bc, $3d43                                  ; $4802: $01 $43 $3d
    ld bc, $3d48                                  ; $4805: $01 $48 $3d
    ld bc, $3d4d                                  ; $4808: $01 $4d $3d
    ld bc, $3d58                                  ; $480b: $01 $58 $3d
    ld bc, $3d62                                  ; $480e: $01 $62 $3d
    ld bc, $3d9f                                  ; $4811: $01 $9f $3d
    ld bc, $3dc8                                  ; $4814: $01 $c8 $3d
    ld bc, $3dd6                                  ; $4817: $01 $d6 $3d
    ld bc, $3ddf                                  ; $481a: $01 $df $3d
    ld bc, $3e06                                  ; $481d: $01 $06 $3e
    ld bc, $3e21                                  ; $4820: $01 $21 $3e
    ld bc, $3e30                                  ; $4823: $01 $30 $3e
    ld bc, $3e3a                                  ; $4826: $01 $3a $3e
    ld bc, $3e53                                  ; $4829: $01 $53 $3e
    ld bc, $3e63                                  ; $482c: $01 $63 $3e
    ld bc, $3e7f                                  ; $482f: $01 $7f $3e
    ld bc, $3e99                                  ; $4832: $01 $99 $3e
    ld bc, $3ea9                                  ; $4835: $01 $a9 $3e
    ld bc, $3edb                                  ; $4838: $01 $db $3e
    ld bc, $3ee2                                  ; $483b: $01 $e2 $3e
    ld bc, $3f10                                  ; $483e: $01 $10 $3f
    ld bc, $3f18                                  ; $4841: $01 $18 $3f
    ld bc, $3f3d                                  ; $4844: $01 $3d $3f
    ld bc, $3f4e                                  ; $4847: $01 $4e $3f
    ld bc, $3f5b                                  ; $484a: $01 $5b $3f
    ld bc, $3fba                                  ; $484d: $01 $ba $3f
    ld bc, $3fc3                                  ; $4850: $01 $c3 $3f
    ld bc, $3fc8                                  ; $4853: $01 $c8 $3f
    ld [bc], a                                    ; $4856: $02
    ld bc, $0200                                  ; $4857: $01 $00 $02
    ld [hl-], a                                   ; $485a: $32
    nop                                           ; $485b: $00
    ld [bc], a                                    ; $485c: $02
    jp hl                                         ; $485d: $e9


    nop                                           ; $485e: $00
    ld [bc], a                                    ; $485f: $02
    ld [de], a                                    ; $4860: $12
    ld bc, $3002                                  ; $4861: $01 $02 $30
    ld bc, $3e02                                  ; $4864: $01 $02 $3e
    ld bc, $4902                                  ; $4867: $01 $02 $49
    ld bc, $5b02                                  ; $486a: $01 $02 $5b
    ld bc, $6c02                                  ; $486d: $01 $02 $6c
    ld bc, $7902                                  ; $4870: $01 $02 $79
    ld bc, $8f02                                  ; $4873: $01 $02 $8f
    ld bc, $b202                                  ; $4876: $01 $02 $b2
    ld bc, $f002                                  ; $4879: $01 $02 $f0
    ld bc, $2a02                                  ; $487c: $01 $02 $2a
    ld [bc], a                                    ; $487f: $02
    ld [bc], a                                    ; $4880: $02
    ld c, b                                       ; $4881: $48
    ld [bc], a                                    ; $4882: $02
    ld [bc], a                                    ; $4883: $02
    and l                                         ; $4884: $a5
    ld [bc], a                                    ; $4885: $02
    ld [bc], a                                    ; $4886: $02
    xor a                                         ; $4887: $af
    ld [bc], a                                    ; $4888: $02
    ld [bc], a                                    ; $4889: $02
    db $fd                                        ; $488a: $fd
    ld [bc], a                                    ; $488b: $02
    ld [bc], a                                    ; $488c: $02
    ld [de], a                                    ; $488d: $12
    inc bc                                        ; $488e: $03
    ld [bc], a                                    ; $488f: $02
    ld sp, $0203                                  ; $4890: $31 $03 $02
    ld e, b                                       ; $4893: $58
    inc bc                                        ; $4894: $03
    ld [bc], a                                    ; $4895: $02
    ld l, [hl]                                    ; $4896: $6e
    inc bc                                        ; $4897: $03
    ld [bc], a                                    ; $4898: $02
    add c                                         ; $4899: $81

Jump_059_489a:
    inc bc                                        ; $489a: $03
    ld [bc], a                                    ; $489b: $02
    sub b                                         ; $489c: $90
    inc bc                                        ; $489d: $03
    ld [bc], a                                    ; $489e: $02
    sbc e                                         ; $489f: $9b
    inc bc                                        ; $48a0: $03
    ld [bc], a                                    ; $48a1: $02
    xor d                                         ; $48a2: $aa
    inc bc                                        ; $48a3: $03
    ld [bc], a                                    ; $48a4: $02
    cp b                                          ; $48a5: $b8
    inc bc                                        ; $48a6: $03
    ld [bc], a                                    ; $48a7: $02
    call nz, Call_000_0203                        ; $48a8: $c4 $03 $02
    xor $03                                       ; $48ab: $ee $03
    ld [bc], a                                    ; $48ad: $02
    inc b                                         ; $48ae: $04
    inc b                                         ; $48af: $04
    ld [bc], a                                    ; $48b0: $02
    dec d                                         ; $48b1: $15
    inc b                                         ; $48b2: $04
    ld [bc], a                                    ; $48b3: $02
    daa                                           ; $48b4: $27
    inc b                                         ; $48b5: $04

Jump_059_48b6:
    ld [bc], a                                    ; $48b6: $02
    dec [hl]                                      ; $48b7: $35
    inc b                                         ; $48b8: $04
    ld [bc], a                                    ; $48b9: $02
    ld b, l                                       ; $48ba: $45
    inc b                                         ; $48bb: $04
    ld [bc], a                                    ; $48bc: $02
    ld d, d                                       ; $48bd: $52
    inc b                                         ; $48be: $04
    ld [bc], a                                    ; $48bf: $02
    ld [hl], h                                    ; $48c0: $74
    inc b                                         ; $48c1: $04
    ld [bc], a                                    ; $48c2: $02
    adc h                                         ; $48c3: $8c
    inc b                                         ; $48c4: $04
    ld [bc], a                                    ; $48c5: $02
    sbc $04                                       ; $48c6: $de $04
    ld [bc], a                                    ; $48c8: $02
    ld b, d                                       ; $48c9: $42
    dec b                                         ; $48ca: $05
    ld [bc], a                                    ; $48cb: $02
    ld d, e                                       ; $48cc: $53
    dec b                                         ; $48cd: $05
    ld [bc], a                                    ; $48ce: $02
    adc l                                         ; $48cf: $8d
    dec b                                         ; $48d0: $05
    ld [bc], a                                    ; $48d1: $02
    sbc d                                         ; $48d2: $9a
    dec b                                         ; $48d3: $05
    ld [bc], a                                    ; $48d4: $02
    ldh [rTIMA], a                                ; $48d5: $e0 $05
    ld [bc], a                                    ; $48d7: $02
    ld b, $06                                     ; $48d8: $06 $06
    ld [bc], a                                    ; $48da: $02
    daa                                           ; $48db: $27
    ld b, $02                                     ; $48dc: $06 $02
    ld c, [hl]                                    ; $48de: $4e
    ld b, $02                                     ; $48df: $06 $02
    ld l, e                                       ; $48e1: $6b
    ld b, $02                                     ; $48e2: $06 $02
    ld a, [hl]                                    ; $48e4: $7e
    ld b, $02                                     ; $48e5: $06 $02
    push bc                                       ; $48e7: $c5
    ld b, $02                                     ; $48e8: $06 $02
    rlc [hl]                                      ; $48ea: $cb $06
    ld [bc], a                                    ; $48ec: $02
    db $db                                        ; $48ed: $db
    ld b, $02                                     ; $48ee: $06 $02
    ld sp, hl                                     ; $48f0: $f9
    ld b, $02                                     ; $48f1: $06 $02
    db $10                                        ; $48f3: $10
    rlca                                          ; $48f4: $07
    ld [bc], a                                    ; $48f5: $02
    daa                                           ; $48f6: $27
    rlca                                          ; $48f7: $07
    ld [bc], a                                    ; $48f8: $02
    ld e, b                                       ; $48f9: $58
    rlca                                          ; $48fa: $07
    ld [bc], a                                    ; $48fb: $02
    ld l, e                                       ; $48fc: $6b
    rlca                                          ; $48fd: $07
    ld [bc], a                                    ; $48fe: $02
    ld [hl], l                                    ; $48ff: $75
    rlca                                          ; $4900: $07
    ld [bc], a                                    ; $4901: $02
    add b                                         ; $4902: $80
    rlca                                          ; $4903: $07
    ld [bc], a                                    ; $4904: $02
    sbc e                                         ; $4905: $9b
    rlca                                          ; $4906: $07
    ld [bc], a                                    ; $4907: $02
    or c                                          ; $4908: $b1
    rlca                                          ; $4909: $07
    ld [bc], a                                    ; $490a: $02
    ret nz                                        ; $490b: $c0

    rlca                                          ; $490c: $07
    ld [bc], a                                    ; $490d: $02
    jp nc, Jump_000_0207                          ; $490e: $d2 $07 $02

    ld [$0208], sp                                ; $4911: $08 $08 $02
    ld e, e                                       ; $4914: $5b
    ld [$6b02], sp                                ; $4915: $08 $02 $6b
    ld [$cc02], sp                                ; $4918: $08 $02 $cc
    ld [$ee02], sp                                ; $491b: $08 $02 $ee
    ld [$2102], sp                                ; $491e: $08 $02 $21
    add hl, bc                                    ; $4921: $09
    ld [bc], a                                    ; $4922: $02
    inc [hl]                                      ; $4923: $34
    add hl, bc                                    ; $4924: $09
    ld [bc], a                                    ; $4925: $02
    sub b                                         ; $4926: $90
    add hl, bc                                    ; $4927: $09
    ld [bc], a                                    ; $4928: $02
    sbc c                                         ; $4929: $99
    add hl, bc                                    ; $492a: $09
    ld [bc], a                                    ; $492b: $02
    ret                                           ; $492c: $c9


    add hl, bc                                    ; $492d: $09
    ld [bc], a                                    ; $492e: $02
    db $dd                                        ; $492f: $dd
    add hl, bc                                    ; $4930: $09
    ld [bc], a                                    ; $4931: $02
    inc de                                        ; $4932: $13
    ld a, [bc]                                    ; $4933: $0a
    ld [bc], a                                    ; $4934: $02
    ld h, a                                       ; $4935: $67
    ld a, [bc]                                    ; $4936: $0a
    ld [bc], a                                    ; $4937: $02
    add e                                         ; $4938: $83
    ld a, [bc]                                    ; $4939: $0a
    ld [bc], a                                    ; $493a: $02
    and [hl]                                      ; $493b: $a6
    ld a, [bc]                                    ; $493c: $0a
    ld [bc], a                                    ; $493d: $02
    push bc                                       ; $493e: $c5
    ld a, [bc]                                    ; $493f: $0a
    ld [bc], a                                    ; $4940: $02
    db $e3                                        ; $4941: $e3
    ld a, [bc]                                    ; $4942: $0a
    ld [bc], a                                    ; $4943: $02
    add sp, $0a                                   ; $4944: $e8 $0a
    ld [bc], a                                    ; $4946: $02
    push af                                       ; $4947: $f5
    ld a, [bc]                                    ; $4948: $0a
    ld [bc], a                                    ; $4949: $02
    inc c                                         ; $494a: $0c
    dec bc                                        ; $494b: $0b
    ld [bc], a                                    ; $494c: $02
    ld [hl+], a                                   ; $494d: $22
    dec bc                                        ; $494e: $0b
    ld [bc], a                                    ; $494f: $02
    ld a, $0b                                     ; $4950: $3e $0b
    ld [bc], a                                    ; $4952: $02
    ld d, h                                       ; $4953: $54
    dec bc                                        ; $4954: $0b
    ld [bc], a                                    ; $4955: $02
    and h                                         ; $4956: $a4
    dec bc                                        ; $4957: $0b
    ld [bc], a                                    ; $4958: $02
    xor d                                         ; $4959: $aa
    dec bc                                        ; $495a: $0b
    ld [bc], a                                    ; $495b: $02
    pop de                                        ; $495c: $d1
    dec bc                                        ; $495d: $0b
    ld [bc], a                                    ; $495e: $02
    push hl                                       ; $495f: $e5
    dec bc                                        ; $4960: $0b
    ld [bc], a                                    ; $4961: $02
    ld d, $0c                                     ; $4962: $16 $0c
    ld [bc], a                                    ; $4964: $02
    ld c, d                                       ; $4965: $4a
    inc c                                         ; $4966: $0c
    ld [bc], a                                    ; $4967: $02
    ld d, d                                       ; $4968: $52
    inc c                                         ; $4969: $0c
    ld [bc], a                                    ; $496a: $02
    ld h, b                                       ; $496b: $60
    inc c                                         ; $496c: $0c
    ld [bc], a                                    ; $496d: $02
    and c                                         ; $496e: $a1
    inc c                                         ; $496f: $0c
    ld [bc], a                                    ; $4970: $02
    or c                                          ; $4971: $b1
    inc c                                         ; $4972: $0c
    ld [bc], a                                    ; $4973: $02
    call c, Call_000_020c                         ; $4974: $dc $0c $02
    inc b                                         ; $4977: $04
    dec c                                         ; $4978: $0d
    ld [bc], a                                    ; $4979: $02
    ld b, a                                       ; $497a: $47
    dec c                                         ; $497b: $0d
    ld [bc], a                                    ; $497c: $02
    ld l, b                                       ; $497d: $68
    dec c                                         ; $497e: $0d
    ld [bc], a                                    ; $497f: $02
    add b                                         ; $4980: $80
    dec c                                         ; $4981: $0d
    ld [bc], a                                    ; $4982: $02
    sbc c                                         ; $4983: $99
    dec c                                         ; $4984: $0d
    ld [bc], a                                    ; $4985: $02
    or d                                          ; $4986: $b2
    dec c                                         ; $4987: $0d
    ld [bc], a                                    ; $4988: $02
    jp z, Jump_000_020d                           ; $4989: $ca $0d $02

    db $eb                                        ; $498c: $eb
    dec c                                         ; $498d: $0d
    ld [bc], a                                    ; $498e: $02
    db $f4                                        ; $498f: $f4
    dec c                                         ; $4990: $0d
    ld [bc], a                                    ; $4991: $02
    rst $30                                       ; $4992: $f7
    dec c                                         ; $4993: $0d
    ld [bc], a                                    ; $4994: $02
    add hl, de                                    ; $4995: $19
    ld c, $02                                     ; $4996: $0e $02
    ld b, d                                       ; $4998: $42
    ld c, $02                                     ; $4999: $0e $02
    ld h, c                                       ; $499b: $61
    ld c, $02                                     ; $499c: $0e $02
    halt                                          ; $499e: $76
    ld c, $02                                     ; $499f: $0e $02
    adc a                                         ; $49a1: $8f
    ld c, $02                                     ; $49a2: $0e $02
    xor h                                         ; $49a4: $ac
    ld c, $02                                     ; $49a5: $0e $02
    push de                                       ; $49a7: $d5
    ld c, $02                                     ; $49a8: $0e $02
    db $eb                                        ; $49aa: $eb
    ld c, $02                                     ; $49ab: $0e $02
    ld b, $0f                                     ; $49ad: $06 $0f
    ld [bc], a                                    ; $49af: $02
    inc d                                         ; $49b0: $14
    rrca                                          ; $49b1: $0f
    ld [bc], a                                    ; $49b2: $02
    ld h, $0f                                     ; $49b3: $26 $0f
    ld [bc], a                                    ; $49b5: $02
    ld a, $0f                                     ; $49b6: $3e $0f
    ld [bc], a                                    ; $49b8: $02
    ld e, e                                       ; $49b9: $5b
    rrca                                          ; $49ba: $0f
    ld [bc], a                                    ; $49bb: $02
    halt                                          ; $49bc: $76
    rrca                                          ; $49bd: $0f
    ld [bc], a                                    ; $49be: $02
    add c                                         ; $49bf: $81
    rrca                                          ; $49c0: $0f
    ld [bc], a                                    ; $49c1: $02
    or b                                          ; $49c2: $b0
    rrca                                          ; $49c3: $0f
    ld [bc], a                                    ; $49c4: $02
    push af                                       ; $49c5: $f5
    rrca                                          ; $49c6: $0f
    ld [bc], a                                    ; $49c7: $02
    dec b                                         ; $49c8: $05
    db $10                                        ; $49c9: $10
    ld [bc], a                                    ; $49ca: $02
    dec de                                        ; $49cb: $1b
    db $10                                        ; $49cc: $10
    ld [bc], a                                    ; $49cd: $02
    ld b, d                                       ; $49ce: $42
    db $10                                        ; $49cf: $10
    ld [bc], a                                    ; $49d0: $02
    ld d, l                                       ; $49d1: $55
    db $10                                        ; $49d2: $10
    ld [bc], a                                    ; $49d3: $02
    ld a, a                                       ; $49d4: $7f
    db $10                                        ; $49d5: $10
    ld [bc], a                                    ; $49d6: $02
    or b                                          ; $49d7: $b0
    db $10                                        ; $49d8: $10
    ld [bc], a                                    ; $49d9: $02
    xor $10                                       ; $49da: $ee $10
    ld [bc], a                                    ; $49dc: $02
    jr nc, jr_059_49f0                            ; $49dd: $30 $11

    ld [bc], a                                    ; $49df: $02
    ld d, l                                       ; $49e0: $55
    ld de, $6d02                                  ; $49e1: $11 $02 $6d
    ld de, $8a02                                  ; $49e4: $11 $02 $8a
    ld de, $9602                                  ; $49e7: $11 $02 $96
    ld de, $cf02                                  ; $49ea: $11 $02 $cf
    ld de, $ea02                                  ; $49ed: $11 $02 $ea

jr_059_49f0:
    ld de, $1d02                                  ; $49f0: $11 $02 $1d
    ld [de], a                                    ; $49f3: $12
    ld [bc], a                                    ; $49f4: $02
    ld l, $12                                     ; $49f5: $2e $12
    ld [bc], a                                    ; $49f7: $02
    ld b, a                                       ; $49f8: $47
    ld [de], a                                    ; $49f9: $12
    ld [bc], a                                    ; $49fa: $02
    ld d, b                                       ; $49fb: $50
    ld [de], a                                    ; $49fc: $12
    ld [bc], a                                    ; $49fd: $02
    ld [hl], b                                    ; $49fe: $70
    ld [de], a                                    ; $49ff: $12
    ld [bc], a                                    ; $4a00: $02
    sub d                                         ; $4a01: $92
    ld [de], a                                    ; $4a02: $12
    ld [bc], a                                    ; $4a03: $02
    and h                                         ; $4a04: $a4
    ld [de], a                                    ; $4a05: $12
    ld [bc], a                                    ; $4a06: $02
    db $ec                                        ; $4a07: $ec
    ld [de], a                                    ; $4a08: $12
    ld [bc], a                                    ; $4a09: $02
    ld hl, $0213                                  ; $4a0a: $21 $13 $02
    ld c, d                                       ; $4a0d: $4a
    inc de                                        ; $4a0e: $13
    ld [bc], a                                    ; $4a0f: $02
    ld [hl], b                                    ; $4a10: $70
    inc de                                        ; $4a11: $13
    ld [bc], a                                    ; $4a12: $02
    xor e                                         ; $4a13: $ab
    inc de                                        ; $4a14: $13
    ld [bc], a                                    ; $4a15: $02
    push de                                       ; $4a16: $d5
    inc de                                        ; $4a17: $13
    ld [bc], a                                    ; $4a18: $02
    db $fc                                        ; $4a19: $fc
    inc de                                        ; $4a1a: $13
    ld [bc], a                                    ; $4a1b: $02
    dec l                                         ; $4a1c: $2d
    inc d                                         ; $4a1d: $14
    ld [bc], a                                    ; $4a1e: $02
    ld c, e                                       ; $4a1f: $4b
    inc d                                         ; $4a20: $14
    ld [bc], a                                    ; $4a21: $02
    ld h, d                                       ; $4a22: $62
    inc d                                         ; $4a23: $14
    ld [bc], a                                    ; $4a24: $02
    or d                                          ; $4a25: $b2
    inc d                                         ; $4a26: $14
    ld [bc], a                                    ; $4a27: $02
    push hl                                       ; $4a28: $e5
    inc d                                         ; $4a29: $14
    ld [bc], a                                    ; $4a2a: $02
    ei                                            ; $4a2b: $fb
    inc d                                         ; $4a2c: $14
    ld [bc], a                                    ; $4a2d: $02
    daa                                           ; $4a2e: $27
    dec d                                         ; $4a2f: $15
    ld [bc], a                                    ; $4a30: $02
    ld c, e                                       ; $4a31: $4b
    dec d                                         ; $4a32: $15
    ld [bc], a                                    ; $4a33: $02
    ld [hl], a                                    ; $4a34: $77
    dec d                                         ; $4a35: $15
    ld [bc], a                                    ; $4a36: $02
    adc l                                         ; $4a37: $8d
    dec d                                         ; $4a38: $15

Call_059_4a39:
    ld [bc], a                                    ; $4a39: $02
    and e                                         ; $4a3a: $a3
    dec d                                         ; $4a3b: $15
    ld [bc], a                                    ; $4a3c: $02
    cp d                                          ; $4a3d: $ba
    dec d                                         ; $4a3e: $15
    ld [bc], a                                    ; $4a3f: $02
    ldh [$15], a                                  ; $4a40: $e0 $15
    ld [bc], a                                    ; $4a42: $02
    rst $30                                       ; $4a43: $f7
    dec d                                         ; $4a44: $15
    ld [bc], a                                    ; $4a45: $02
    ld c, b                                       ; $4a46: $48
    ld d, $02                                     ; $4a47: $16 $02
    ld e, d                                       ; $4a49: $5a
    ld d, $02                                     ; $4a4a: $16 $02
    xor [hl]                                      ; $4a4c: $ae
    ld d, $02                                     ; $4a4d: $16 $02
    pop bc                                        ; $4a4f: $c1
    ld d, $02                                     ; $4a50: $16 $02
    sbc $16                                       ; $4a52: $de $16
    ld [bc], a                                    ; $4a54: $02
    db $fd                                        ; $4a55: $fd
    ld d, $02                                     ; $4a56: $16 $02
    db $10                                        ; $4a58: $10
    rla                                           ; $4a59: $17
    ld [bc], a                                    ; $4a5a: $02
    ld [hl+], a                                   ; $4a5b: $22
    rla                                           ; $4a5c: $17
    ld [bc], a                                    ; $4a5d: $02
    ld d, l                                       ; $4a5e: $55
    rla                                           ; $4a5f: $17
    ld [bc], a                                    ; $4a60: $02
    ld [hl], b                                    ; $4a61: $70
    rla                                           ; $4a62: $17
    ld [bc], a                                    ; $4a63: $02
    adc e                                         ; $4a64: $8b
    rla                                           ; $4a65: $17
    ld [bc], a                                    ; $4a66: $02
    or h                                          ; $4a67: $b4
    rla                                           ; $4a68: $17
    ld [bc], a                                    ; $4a69: $02
    ret c                                         ; $4a6a: $d8

    rla                                           ; $4a6b: $17
    ld [bc], a                                    ; $4a6c: $02
    db $ed                                        ; $4a6d: $ed
    rla                                           ; $4a6e: $17
    ld [bc], a                                    ; $4a6f: $02
    dec b                                         ; $4a70: $05
    jr @+$04                                      ; $4a71: $18 $02

    rra                                           ; $4a73: $1f
    jr @+$04                                      ; $4a74: $18 $02

    ld a, [hl+]                                   ; $4a76: $2a
    jr @+$04                                      ; $4a77: $18 $02

    inc a                                         ; $4a79: $3c
    jr @+$04                                      ; $4a7a: $18 $02

    ld c, c                                       ; $4a7c: $49
    jr @+$04                                      ; $4a7d: $18 $02

    ld e, [hl]                                    ; $4a7f: $5e
    jr @+$04                                      ; $4a80: $18 $02

    ld l, h                                       ; $4a82: $6c
    jr @+$04                                      ; $4a83: $18 $02

    adc [hl]                                      ; $4a85: $8e
    jr @+$04                                      ; $4a86: $18 $02

    sub h                                         ; $4a88: $94
    jr @+$04                                      ; $4a89: $18 $02

    xor d                                         ; $4a8b: $aa
    jr @+$04                                      ; $4a8c: $18 $02

    ret                                           ; $4a8e: $c9


    jr @+$04                                      ; $4a8f: $18 $02

    ld [$0218], a                                 ; $4a91: $ea $18 $02
    ld sp, $0219                                  ; $4a94: $31 $19 $02
    ld d, l                                       ; $4a97: $55
    add hl, de                                    ; $4a98: $19
    ld [bc], a                                    ; $4a99: $02
    ld l, h                                       ; $4a9a: $6c
    add hl, de                                    ; $4a9b: $19
    ld [bc], a                                    ; $4a9c: $02
    ld a, b                                       ; $4a9d: $78
    add hl, de                                    ; $4a9e: $19
    ld [bc], a                                    ; $4a9f: $02
    sub [hl]                                      ; $4aa0: $96
    add hl, de                                    ; $4aa1: $19
    ld [bc], a                                    ; $4aa2: $02
    cp d                                          ; $4aa3: $ba
    add hl, de                                    ; $4aa4: $19
    ld [bc], a                                    ; $4aa5: $02
    db $e4                                        ; $4aa6: $e4
    add hl, de                                    ; $4aa7: $19
    ld [bc], a                                    ; $4aa8: $02
    inc d                                         ; $4aa9: $14
    ld a, [de]                                    ; $4aaa: $1a
    ld [bc], a                                    ; $4aab: $02
    ld b, e                                       ; $4aac: $43
    ld a, [de]                                    ; $4aad: $1a
    ld [bc], a                                    ; $4aae: $02
    ld c, e                                       ; $4aaf: $4b
    ld a, [de]                                    ; $4ab0: $1a
    ld [bc], a                                    ; $4ab1: $02
    ld h, d                                       ; $4ab2: $62
    ld a, [de]                                    ; $4ab3: $1a
    ld [bc], a                                    ; $4ab4: $02
    ld [hl], e                                    ; $4ab5: $73
    ld a, [de]                                    ; $4ab6: $1a
    ld [bc], a                                    ; $4ab7: $02
    xor e                                         ; $4ab8: $ab
    ld a, [de]                                    ; $4ab9: $1a
    ld [bc], a                                    ; $4aba: $02
    ret nz                                        ; $4abb: $c0

    ld a, [de]                                    ; $4abc: $1a
    ld [bc], a                                    ; $4abd: $02
    rst $08                                       ; $4abe: $cf
    ld a, [de]                                    ; $4abf: $1a
    ld [bc], a                                    ; $4ac0: $02
    push af                                       ; $4ac1: $f5
    ld a, [de]                                    ; $4ac2: $1a
    ld [bc], a                                    ; $4ac3: $02
    cp $1a                                        ; $4ac4: $fe $1a
    ld [bc], a                                    ; $4ac6: $02
    rlca                                          ; $4ac7: $07
    dec de                                        ; $4ac8: $1b
    ld [bc], a                                    ; $4ac9: $02
    dec hl                                        ; $4aca: $2b
    dec de                                        ; $4acb: $1b
    ld [bc], a                                    ; $4acc: $02
    ld d, a                                       ; $4acd: $57
    dec de                                        ; $4ace: $1b
    ld [bc], a                                    ; $4acf: $02
    adc b                                         ; $4ad0: $88
    dec de                                        ; $4ad1: $1b
    ld [bc], a                                    ; $4ad2: $02
    ret z                                         ; $4ad3: $c8

    dec de                                        ; $4ad4: $1b
    ld [bc], a                                    ; $4ad5: $02
    ld [$021c], sp                                ; $4ad6: $08 $1c $02
    inc a                                         ; $4ad9: $3c
    inc e                                         ; $4ada: $1c
    ld [bc], a                                    ; $4adb: $02
    ld d, [hl]                                    ; $4adc: $56
    inc e                                         ; $4add: $1c
    ld [bc], a                                    ; $4ade: $02
    ld a, e                                       ; $4adf: $7b
    inc e                                         ; $4ae0: $1c
    ld [bc], a                                    ; $4ae1: $02
    sub e                                         ; $4ae2: $93
    inc e                                         ; $4ae3: $1c
    ld [bc], a                                    ; $4ae4: $02
    cp l                                          ; $4ae5: $bd
    inc e                                         ; $4ae6: $1c
    ld [bc], a                                    ; $4ae7: $02
    push de                                       ; $4ae8: $d5
    inc e                                         ; $4ae9: $1c
    ld [bc], a                                    ; $4aea: $02
    ld a, [c]                                     ; $4aeb: $f2
    inc e                                         ; $4aec: $1c
    ld [bc], a                                    ; $4aed: $02
    rst $38                                       ; $4aee: $ff
    inc e                                         ; $4aef: $1c
    ld [bc], a                                    ; $4af0: $02
    rlca                                          ; $4af1: $07
    dec e                                         ; $4af2: $1d
    ld [bc], a                                    ; $4af3: $02
    ld h, $1d                                     ; $4af4: $26 $1d
    ld [bc], a                                    ; $4af6: $02
    ld d, c                                       ; $4af7: $51
    dec e                                         ; $4af8: $1d
    ld [bc], a                                    ; $4af9: $02
    ld a, e                                       ; $4afa: $7b
    dec e                                         ; $4afb: $1d
    ld [bc], a                                    ; $4afc: $02
    adc b                                         ; $4afd: $88
    dec e                                         ; $4afe: $1d
    ld [bc], a                                    ; $4aff: $02
    and b                                         ; $4b00: $a0
    dec e                                         ; $4b01: $1d
    ld [bc], a                                    ; $4b02: $02
    xor e                                         ; $4b03: $ab
    dec e                                         ; $4b04: $1d
    ld [bc], a                                    ; $4b05: $02
    cp a                                          ; $4b06: $bf
    dec e                                         ; $4b07: $1d
    ld [bc], a                                    ; $4b08: $02
    sub $1d                                       ; $4b09: $d6 $1d
    ld [bc], a                                    ; $4b0b: $02
    db $fc                                        ; $4b0c: $fc
    dec e                                         ; $4b0d: $1d
    ld [bc], a                                    ; $4b0e: $02
    ld e, $1e                                     ; $4b0f: $1e $1e
    ld [bc], a                                    ; $4b11: $02
    jr nc, jr_059_4b32                            ; $4b12: $30 $1e

    ld [bc], a                                    ; $4b14: $02
    ld e, e                                       ; $4b15: $5b
    ld e, $02                                     ; $4b16: $1e $02
    ld h, [hl]                                    ; $4b18: $66
    ld e, $02                                     ; $4b19: $1e $02
    add d                                         ; $4b1b: $82
    ld e, $02                                     ; $4b1c: $1e $02
    and l                                         ; $4b1e: $a5
    ld e, $02                                     ; $4b1f: $1e $02
    call nz, $021e                                ; $4b21: $c4 $1e $02
    db $dd                                        ; $4b24: $dd
    ld e, $02                                     ; $4b25: $1e $02
    db $f4                                        ; $4b27: $f4
    ld e, $02                                     ; $4b28: $1e $02
    ld c, $1f                                     ; $4b2a: $0e $1f
    ld [bc], a                                    ; $4b2c: $02
    jr z, jr_059_4b4e                             ; $4b2d: $28 $1f

    ld [bc], a                                    ; $4b2f: $02
    dec a                                         ; $4b30: $3d
    rra                                           ; $4b31: $1f

jr_059_4b32:
    ld [bc], a                                    ; $4b32: $02
    ld e, c                                       ; $4b33: $59
    rra                                           ; $4b34: $1f
    ld [bc], a                                    ; $4b35: $02
    ld a, b                                       ; $4b36: $78
    rra                                           ; $4b37: $1f
    ld [bc], a                                    ; $4b38: $02
    sbc [hl]                                      ; $4b39: $9e
    rra                                           ; $4b3a: $1f
    ld [bc], a                                    ; $4b3b: $02
    jp Jump_000_021f                              ; $4b3c: $c3 $1f $02


    and $1f                                       ; $4b3f: $e6 $1f
    ld [bc], a                                    ; $4b41: $02
    ld [bc], a                                    ; $4b42: $02
    jr nz, @+$04                                  ; $4b43: $20 $02

    ld hl, $0220                                  ; $4b45: $21 $20 $02
    ld b, h                                       ; $4b48: $44
    jr nz, @+$04                                  ; $4b49: $20 $02

    ld [hl], b                                    ; $4b4b: $70
    jr nz, @+$04                                  ; $4b4c: $20 $02

jr_059_4b4e:
    sub d                                         ; $4b4e: $92
    jr nz, @+$04                                  ; $4b4f: $20 $02

    cp d                                          ; $4b51: $ba
    jr nz, @+$04                                  ; $4b52: $20 $02

    db $fc                                        ; $4b54: $fc
    jr nz, @+$04                                  ; $4b55: $20 $02

    inc bc                                        ; $4b57: $03
    ld hl, $1c02                                  ; $4b58: $21 $02 $1c
    ld hl, $3d02                                  ; $4b5b: $21 $02 $3d
    ld hl, $5302                                  ; $4b5e: $21 $02 $53
    ld hl, $a502                                  ; $4b61: $21 $02 $a5
    ld hl, $cc02                                  ; $4b64: $21 $02 $cc
    ld hl, $f702                                  ; $4b67: $21 $02 $f7
    ld hl, $1302                                  ; $4b6a: $21 $02 $13
    ld [hl+], a                                   ; $4b6d: $22
    ld [bc], a                                    ; $4b6e: $02
    dec h                                         ; $4b6f: $25
    ld [hl+], a                                   ; $4b70: $22
    ld [bc], a                                    ; $4b71: $02
    ld [hl], $22                                  ; $4b72: $36 $22
    ld [bc], a                                    ; $4b74: $02
    ld d, e                                       ; $4b75: $53
    ld [hl+], a                                   ; $4b76: $22
    ld [bc], a                                    ; $4b77: $02
    ld e, l                                       ; $4b78: $5d
    ld [hl+], a                                   ; $4b79: $22
    ld [bc], a                                    ; $4b7a: $02
    ld l, d                                       ; $4b7b: $6a
    ld [hl+], a                                   ; $4b7c: $22
    ld [bc], a                                    ; $4b7d: $02
    and e                                         ; $4b7e: $a3
    ld [hl+], a                                   ; $4b7f: $22
    ld [bc], a                                    ; $4b80: $02
    or h                                          ; $4b81: $b4
    ld [hl+], a                                   ; $4b82: $22
    ld [bc], a                                    ; $4b83: $02
    rst $00                                       ; $4b84: $c7
    ld [hl+], a                                   ; $4b85: $22
    ld [bc], a                                    ; $4b86: $02
    db $ed                                        ; $4b87: $ed
    ld [hl+], a                                   ; $4b88: $22
    ld [bc], a                                    ; $4b89: $02
    rla                                           ; $4b8a: $17
    inc hl                                        ; $4b8b: $23
    ld [bc], a                                    ; $4b8c: $02
    daa                                           ; $4b8d: $27
    inc hl                                        ; $4b8e: $23
    ld [bc], a                                    ; $4b8f: $02
    ld l, $23                                     ; $4b90: $2e $23
    ld [bc], a                                    ; $4b92: $02
    ld c, d                                       ; $4b93: $4a
    inc hl                                        ; $4b94: $23
    ld [bc], a                                    ; $4b95: $02
    ld l, l                                       ; $4b96: $6d
    inc hl                                        ; $4b97: $23
    ld [bc], a                                    ; $4b98: $02
    sbc d                                         ; $4b99: $9a
    inc hl                                        ; $4b9a: $23
    ld [bc], a                                    ; $4b9b: $02
    and d                                         ; $4b9c: $a2
    inc hl                                        ; $4b9d: $23
    ld [bc], a                                    ; $4b9e: $02
    cp e                                          ; $4b9f: $bb
    inc hl                                        ; $4ba0: $23
    ld [bc], a                                    ; $4ba1: $02
    sub $23                                       ; $4ba2: $d6 $23
    ld [bc], a                                    ; $4ba4: $02
    ld [$0223], a                                 ; $4ba5: $ea $23 $02
    ld e, h                                       ; $4ba8: $5c
    inc h                                         ; $4ba9: $24
    ld [bc], a                                    ; $4baa: $02
    ld h, l                                       ; $4bab: $65
    inc h                                         ; $4bac: $24
    ld [bc], a                                    ; $4bad: $02
    ld l, c                                       ; $4bae: $69
    inc h                                         ; $4baf: $24
    ld [bc], a                                    ; $4bb0: $02
    ld a, e                                       ; $4bb1: $7b
    inc h                                         ; $4bb2: $24
    ld [bc], a                                    ; $4bb3: $02
    and [hl]                                      ; $4bb4: $a6

Jump_059_4bb5:
    inc h                                         ; $4bb5: $24
    ld [bc], a                                    ; $4bb6: $02
    rst $00                                       ; $4bb7: $c7
    inc h                                         ; $4bb8: $24
    ld [bc], a                                    ; $4bb9: $02
    jp c, $0224                                   ; $4bba: $da $24 $02

    cp $24                                        ; $4bbd: $fe $24
    ld [bc], a                                    ; $4bbf: $02
    add hl, de                                    ; $4bc0: $19
    dec h                                         ; $4bc1: $25
    ld [bc], a                                    ; $4bc2: $02
    ld a, $25                                     ; $4bc3: $3e $25
    ld [bc], a                                    ; $4bc5: $02
    ld d, b                                       ; $4bc6: $50
    dec h                                         ; $4bc7: $25
    ld [bc], a                                    ; $4bc8: $02
    ld e, [hl]                                    ; $4bc9: $5e
    dec h                                         ; $4bca: $25
    ld [bc], a                                    ; $4bcb: $02
    ld a, b                                       ; $4bcc: $78
    dec h                                         ; $4bcd: $25
    ld [bc], a                                    ; $4bce: $02
    adc h                                         ; $4bcf: $8c
    dec h                                         ; $4bd0: $25
    ld [bc], a                                    ; $4bd1: $02
    sub a                                         ; $4bd2: $97
    dec h                                         ; $4bd3: $25
    ld [bc], a                                    ; $4bd4: $02
    xor d                                         ; $4bd5: $aa
    dec h                                         ; $4bd6: $25
    ld [bc], a                                    ; $4bd7: $02
    pop bc                                        ; $4bd8: $c1
    dec h                                         ; $4bd9: $25
    ld [bc], a                                    ; $4bda: $02
    ret                                           ; $4bdb: $c9


    dec h                                         ; $4bdc: $25
    ld [bc], a                                    ; $4bdd: $02
    db $ed                                        ; $4bde: $ed
    dec h                                         ; $4bdf: $25
    ld [bc], a                                    ; $4be0: $02
    ld a, [bc]                                    ; $4be1: $0a
    ld h, $02                                     ; $4be2: $26 $02
    ld [hl], $26                                  ; $4be4: $36 $26
    ld [bc], a                                    ; $4be6: $02
    ld d, h                                       ; $4be7: $54
    ld h, $02                                     ; $4be8: $26 $02
    sub d                                         ; $4bea: $92
    ld h, $02                                     ; $4beb: $26 $02
    and h                                         ; $4bed: $a4
    ld h, $02                                     ; $4bee: $26 $02
    or e                                          ; $4bf0: $b3
    ld h, $02                                     ; $4bf1: $26 $02
    rst $18                                       ; $4bf3: $df
    ld h, $02                                     ; $4bf4: $26 $02
    nop                                           ; $4bf6: $00
    daa                                           ; $4bf7: $27
    ld [bc], a                                    ; $4bf8: $02
    rra                                           ; $4bf9: $1f
    daa                                           ; $4bfa: $27
    ld [bc], a                                    ; $4bfb: $02
    ld h, b                                       ; $4bfc: $60
    daa                                           ; $4bfd: $27
    ld [bc], a                                    ; $4bfe: $02
    ld a, c                                       ; $4bff: $79
    daa                                           ; $4c00: $27
    ld [bc], a                                    ; $4c01: $02
    rst $00                                       ; $4c02: $c7
    daa                                           ; $4c03: $27
    ld [bc], a                                    ; $4c04: $02
    inc bc                                        ; $4c05: $03
    jr z, @+$04                                   ; $4c06: $28 $02

    rrca                                          ; $4c08: $0f
    jr z, @+$04                                   ; $4c09: $28 $02

    dec l                                         ; $4c0b: $2d
    jr z, @+$04                                   ; $4c0c: $28 $02

    ld d, [hl]                                    ; $4c0e: $56
    jr z, @+$04                                   ; $4c0f: $28 $02

    ld [hl], b                                    ; $4c11: $70
    jr z, @+$04                                   ; $4c12: $28 $02

    ld [hl], a                                    ; $4c14: $77
    jr z, @+$04                                   ; $4c15: $28 $02

    sub d                                         ; $4c17: $92
    jr z, @+$04                                   ; $4c18: $28 $02

    and b                                         ; $4c1a: $a0
    jr z, @+$04                                   ; $4c1b: $28 $02

    jp nz, $0228                                  ; $4c1d: $c2 $28 $02

    push af                                       ; $4c20: $f5
    jr z, jr_059_4c25                             ; $4c21: $28 $02

    ld a, [bc]                                    ; $4c23: $0a
    add hl, hl                                    ; $4c24: $29

jr_059_4c25:
    ld [bc], a                                    ; $4c25: $02
    rla                                           ; $4c26: $17
    add hl, hl                                    ; $4c27: $29
    ld [bc], a                                    ; $4c28: $02
    dec sp                                        ; $4c29: $3b
    add hl, hl                                    ; $4c2a: $29
    ld [bc], a                                    ; $4c2b: $02
    ld c, d                                       ; $4c2c: $4a
    add hl, hl                                    ; $4c2d: $29
    ld [bc], a                                    ; $4c2e: $02
    and a                                         ; $4c2f: $a7
    add hl, hl                                    ; $4c30: $29
    ld [bc], a                                    ; $4c31: $02
    ret z                                         ; $4c32: $c8

    add hl, hl                                    ; $4c33: $29
    ld [bc], a                                    ; $4c34: $02
    rst $38                                       ; $4c35: $ff
    add hl, hl                                    ; $4c36: $29
    ld [bc], a                                    ; $4c37: $02
    ld c, $2a                                     ; $4c38: $0e $2a
    ld [bc], a                                    ; $4c3a: $02
    dec h                                         ; $4c3b: $25
    ld a, [hl+]                                   ; $4c3c: $2a
    ld [bc], a                                    ; $4c3d: $02
    ld b, l                                       ; $4c3e: $45
    ld a, [hl+]                                   ; $4c3f: $2a
    ld [bc], a                                    ; $4c40: $02
    ld l, l                                       ; $4c41: $6d
    ld a, [hl+]                                   ; $4c42: $2a
    ld [bc], a                                    ; $4c43: $02
    adc c                                         ; $4c44: $89
    ld a, [hl+]                                   ; $4c45: $2a
    ld [bc], a                                    ; $4c46: $02
    cp l                                          ; $4c47: $bd
    ld a, [hl+]                                   ; $4c48: $2a
    ld [bc], a                                    ; $4c49: $02
    rst $00                                       ; $4c4a: $c7
    ld a, [hl+]                                   ; $4c4b: $2a
    ld [bc], a                                    ; $4c4c: $02
    ld a, [c]                                     ; $4c4d: $f2
    ld a, [hl+]                                   ; $4c4e: $2a
    ld [bc], a                                    ; $4c4f: $02
    ld [hl+], a                                   ; $4c50: $22
    dec hl                                        ; $4c51: $2b
    ld [bc], a                                    ; $4c52: $02
    jr c, jr_059_4c80                             ; $4c53: $38 $2b

    ld [bc], a                                    ; $4c55: $02
    ld h, e                                       ; $4c56: $63
    dec hl                                        ; $4c57: $2b
    ld [bc], a                                    ; $4c58: $02
    sub h                                         ; $4c59: $94
    dec hl                                        ; $4c5a: $2b
    ld [bc], a                                    ; $4c5b: $02
    rst $00                                       ; $4c5c: $c7
    dec hl                                        ; $4c5d: $2b
    ld [bc], a                                    ; $4c5e: $02
    db $eb                                        ; $4c5f: $eb
    dec hl                                        ; $4c60: $2b
    ld [bc], a                                    ; $4c61: $02
    nop                                           ; $4c62: $00
    inc l                                         ; $4c63: $2c
    ld [bc], a                                    ; $4c64: $02
    ccf                                           ; $4c65: $3f
    inc l                                         ; $4c66: $2c
    ld [bc], a                                    ; $4c67: $02
    ld e, d                                       ; $4c68: $5a
    inc l                                         ; $4c69: $2c
    ld [bc], a                                    ; $4c6a: $02
    ld l, e                                       ; $4c6b: $6b
    inc l                                         ; $4c6c: $2c
    ld [bc], a                                    ; $4c6d: $02
    ld l, [hl]                                    ; $4c6e: $6e
    inc l                                         ; $4c6f: $2c
    ld [bc], a                                    ; $4c70: $02
    adc [hl]                                      ; $4c71: $8e
    inc l                                         ; $4c72: $2c
    ld [bc], a                                    ; $4c73: $02
    sbc a                                         ; $4c74: $9f
    inc l                                         ; $4c75: $2c
    ld [bc], a                                    ; $4c76: $02
    xor h                                         ; $4c77: $ac
    inc l                                         ; $4c78: $2c
    ld [bc], a                                    ; $4c79: $02
    cp d                                          ; $4c7a: $ba
    inc l                                         ; $4c7b: $2c
    ld [bc], a                                    ; $4c7c: $02
    pop de                                        ; $4c7d: $d1
    inc l                                         ; $4c7e: $2c
    ld [bc], a                                    ; $4c7f: $02

jr_059_4c80:
    db $e4                                        ; $4c80: $e4
    inc l                                         ; $4c81: $2c
    ld [bc], a                                    ; $4c82: $02
    ld c, $2d                                     ; $4c83: $0e $2d
    ld [bc], a                                    ; $4c85: $02
    jr jr_059_4cb5                                ; $4c86: $18 $2d

    ld [bc], a                                    ; $4c88: $02
    ld l, $2d                                     ; $4c89: $2e $2d
    ld [bc], a                                    ; $4c8b: $02
    ld c, [hl]                                    ; $4c8c: $4e
    dec l                                         ; $4c8d: $2d
    ld [bc], a                                    ; $4c8e: $02
    add e                                         ; $4c8f: $83
    dec l                                         ; $4c90: $2d
    ld [bc], a                                    ; $4c91: $02
    sub d                                         ; $4c92: $92
    dec l                                         ; $4c93: $2d
    ld [bc], a                                    ; $4c94: $02
    db $db                                        ; $4c95: $db
    dec l                                         ; $4c96: $2d
    ld [bc], a                                    ; $4c97: $02
    rst $38                                       ; $4c98: $ff
    dec l                                         ; $4c99: $2d
    ld [bc], a                                    ; $4c9a: $02
    dec h                                         ; $4c9b: $25
    ld l, $02                                     ; $4c9c: $2e $02
    ld [hl-], a                                   ; $4c9e: $32
    ld l, $02                                     ; $4c9f: $2e $02
    ld h, e                                       ; $4ca1: $63
    ld l, $02                                     ; $4ca2: $2e $02
    ld l, d                                       ; $4ca4: $6a
    ld l, $02                                     ; $4ca5: $2e $02
    adc l                                         ; $4ca7: $8d
    ld l, $02                                     ; $4ca8: $2e $02
    sbc h                                         ; $4caa: $9c
    ld l, $02                                     ; $4cab: $2e $02
    or e                                          ; $4cad: $b3
    ld l, $02                                     ; $4cae: $2e $02
    db $fd                                        ; $4cb0: $fd
    ld l, $02                                     ; $4cb1: $2e $02
    db $10                                        ; $4cb3: $10
    cpl                                           ; $4cb4: $2f

jr_059_4cb5:
    ld [bc], a                                    ; $4cb5: $02
    daa                                           ; $4cb6: $27
    cpl                                           ; $4cb7: $2f
    ld [bc], a                                    ; $4cb8: $02
    scf                                           ; $4cb9: $37
    cpl                                           ; $4cba: $2f
    ld [bc], a                                    ; $4cbb: $02
    ld e, l                                       ; $4cbc: $5d
    cpl                                           ; $4cbd: $2f
    ld [bc], a                                    ; $4cbe: $02
    ld h, a                                       ; $4cbf: $67
    cpl                                           ; $4cc0: $2f
    ld [bc], a                                    ; $4cc1: $02
    ld l, a                                       ; $4cc2: $6f
    cpl                                           ; $4cc3: $2f
    ld [bc], a                                    ; $4cc4: $02
    or h                                          ; $4cc5: $b4
    cpl                                           ; $4cc6: $2f
    ld [bc], a                                    ; $4cc7: $02
    rst $00                                       ; $4cc8: $c7
    cpl                                           ; $4cc9: $2f
    ld [bc], a                                    ; $4cca: $02
    push de                                       ; $4ccb: $d5
    cpl                                           ; $4ccc: $2f
    ld [bc], a                                    ; $4ccd: $02
    db $db                                        ; $4cce: $db
    cpl                                           ; $4ccf: $2f
    ld [bc], a                                    ; $4cd0: $02
    cp $2f                                        ; $4cd1: $fe $2f
    ld [bc], a                                    ; $4cd3: $02
    dec sp                                        ; $4cd4: $3b
    jr nc, @+$04                                  ; $4cd5: $30 $02

    ld d, l                                       ; $4cd7: $55
    jr nc, @+$04                                  ; $4cd8: $30 $02

    ld h, [hl]                                    ; $4cda: $66
    jr nc, @+$04                                  ; $4cdb: $30 $02

    ld [hl], d                                    ; $4cdd: $72
    jr nc, @+$04                                  ; $4cde: $30 $02

    and e                                         ; $4ce0: $a3
    jr nc, @+$04                                  ; $4ce1: $30 $02

    cp a                                          ; $4ce3: $bf
    jr nc, @+$04                                  ; $4ce4: $30 $02

    pop de                                        ; $4ce6: $d1
    jr nc, jr_059_4ceb                            ; $4ce7: $30 $02

    sbc $30                                       ; $4ce9: $de $30

jr_059_4ceb:
    ld [bc], a                                    ; $4ceb: $02
    ei                                            ; $4cec: $fb
    jr nc, @+$04                                  ; $4ced: $30 $02

    dec c                                         ; $4cef: $0d
    ld sp, $3302                                  ; $4cf0: $31 $02 $33
    ld sp, $5a02                                  ; $4cf3: $31 $02 $5a
    ld sp, $6b02                                  ; $4cf6: $31 $02 $6b
    ld sp, $bc02                                  ; $4cf9: $31 $02 $bc
    ld sp, $db02                                  ; $4cfc: $31 $02 $db
    ld sp, $0202                                  ; $4cff: $31 $02 $02
    ld [hl-], a                                   ; $4d02: $32
    ld [bc], a                                    ; $4d03: $02
    dec de                                        ; $4d04: $1b
    ld [hl-], a                                   ; $4d05: $32
    ld [bc], a                                    ; $4d06: $02
    dec [hl]                                      ; $4d07: $35
    ld [hl-], a                                   ; $4d08: $32
    ld [bc], a                                    ; $4d09: $02
    ld [hl], c                                    ; $4d0a: $71
    ld [hl-], a                                   ; $4d0b: $32
    ld [bc], a                                    ; $4d0c: $02
    ld a, l                                       ; $4d0d: $7d
    ld [hl-], a                                   ; $4d0e: $32
    ld [bc], a                                    ; $4d0f: $02
    add hl, bc                                    ; $4d10: $09
    inc sp                                        ; $4d11: $33
    ld [bc], a                                    ; $4d12: $02
    dec d                                         ; $4d13: $15
    inc sp                                        ; $4d14: $33
    ld [bc], a                                    ; $4d15: $02
    ld h, $33                                     ; $4d16: $26 $33
    ld [bc], a                                    ; $4d18: $02
    ld [hl], $33                                  ; $4d19: $36 $33
    ld [bc], a                                    ; $4d1b: $02
    ld b, l                                       ; $4d1c: $45
    inc sp                                        ; $4d1d: $33
    ld [bc], a                                    ; $4d1e: $02
    ld l, a                                       ; $4d1f: $6f
    inc sp                                        ; $4d20: $33
    ld [bc], a                                    ; $4d21: $02
    xor d                                         ; $4d22: $aa
    inc sp                                        ; $4d23: $33
    ld [bc], a                                    ; $4d24: $02
    cp l                                          ; $4d25: $bd
    inc sp                                        ; $4d26: $33
    ld [bc], a                                    ; $4d27: $02
    ldh a, [$33]                                  ; $4d28: $f0 $33
    ld [bc], a                                    ; $4d2a: $02
    ld hl, $0234                                  ; $4d2b: $21 $34 $02
    ld [hl], $34                                  ; $4d2e: $36 $34
    ld [bc], a                                    ; $4d30: $02
    ld d, c                                       ; $4d31: $51
    inc [hl]                                      ; $4d32: $34
    ld [bc], a                                    ; $4d33: $02
    ld a, h                                       ; $4d34: $7c
    inc [hl]                                      ; $4d35: $34
    ld [bc], a                                    ; $4d36: $02
    and b                                         ; $4d37: $a0
    inc [hl]                                      ; $4d38: $34
    ld [bc], a                                    ; $4d39: $02
    rst $00                                       ; $4d3a: $c7
    inc [hl]                                      ; $4d3b: $34
    ld [bc], a                                    ; $4d3c: $02
    db $eb                                        ; $4d3d: $eb
    inc [hl]                                      ; $4d3e: $34
    ld [bc], a                                    ; $4d3f: $02
    pop af                                        ; $4d40: $f1
    inc [hl]                                      ; $4d41: $34
    ld [bc], a                                    ; $4d42: $02
    ld b, [hl]                                    ; $4d43: $46
    dec [hl]                                      ; $4d44: $35
    ld [bc], a                                    ; $4d45: $02
    ld c, l                                       ; $4d46: $4d
    dec [hl]                                      ; $4d47: $35
    ld [bc], a                                    ; $4d48: $02
    ld a, [hl]                                    ; $4d49: $7e
    dec [hl]                                      ; $4d4a: $35
    ld [bc], a                                    ; $4d4b: $02
    xor c                                         ; $4d4c: $a9
    dec [hl]                                      ; $4d4d: $35
    ld [bc], a                                    ; $4d4e: $02
    cp c                                          ; $4d4f: $b9
    dec [hl]                                      ; $4d50: $35
    ld [bc], a                                    ; $4d51: $02
    ret z                                         ; $4d52: $c8

    dec [hl]                                      ; $4d53: $35
    ld [bc], a                                    ; $4d54: $02
    push de                                       ; $4d55: $d5
    dec [hl]                                      ; $4d56: $35
    ld [bc], a                                    ; $4d57: $02
    ld a, [c]                                     ; $4d58: $f2
    dec [hl]                                      ; $4d59: $35
    ld [bc], a                                    ; $4d5a: $02
    ld a, $36                                     ; $4d5b: $3e $36
    ld [bc], a                                    ; $4d5d: $02
    ld b, a                                       ; $4d5e: $47
    ld [hl], $02                                  ; $4d5f: $36 $02
    ld e, h                                       ; $4d61: $5c
    ld [hl], $02                                  ; $4d62: $36 $02
    ld h, e                                       ; $4d64: $63
    ld [hl], $02                                  ; $4d65: $36 $02
    sub h                                         ; $4d67: $94
    ld [hl], $02                                  ; $4d68: $36 $02
    cp e                                          ; $4d6a: $bb
    ld [hl], $02                                  ; $4d6b: $36 $02
    db $dd                                        ; $4d6d: $dd
    ld [hl], $02                                  ; $4d6e: $36 $02
    cpl                                           ; $4d70: $2f
    scf                                           ; $4d71: $37
    ld [bc], a                                    ; $4d72: $02
    ld d, b                                       ; $4d73: $50
    scf                                           ; $4d74: $37
    ld [bc], a                                    ; $4d75: $02
    ld h, d                                       ; $4d76: $62
    scf                                           ; $4d77: $37
    ld [bc], a                                    ; $4d78: $02
    add [hl]                                      ; $4d79: $86
    scf                                           ; $4d7a: $37
    ld [bc], a                                    ; $4d7b: $02
    call c, $0237                                 ; $4d7c: $dc $37 $02
    ld [$0238], sp                                ; $4d7f: $08 $38 $02
    jr c, @+$3a                                   ; $4d82: $38 $38

    ld [bc], a                                    ; $4d84: $02
    ld e, l                                       ; $4d85: $5d
    jr c, @+$04                                   ; $4d86: $38 $02

    ld [hl], b                                    ; $4d88: $70
    jr c, @+$04                                   ; $4d89: $38 $02

    add [hl]                                      ; $4d8b: $86
    jr c, @+$04                                   ; $4d8c: $38 $02

    adc l                                         ; $4d8e: $8d
    jr c, @+$04                                   ; $4d8f: $38 $02

    cp h                                          ; $4d91: $bc
    jr c, @+$04                                   ; $4d92: $38 $02

    jp c, Jump_000_0238                           ; $4d94: $da $38 $02

    cp $38                                        ; $4d97: $fe $38
    ld [bc], a                                    ; $4d99: $02
    ld de, $0239                                  ; $4d9a: $11 $39 $02
    jr z, jr_059_4dd8                             ; $4d9d: $28 $39

    ld [bc], a                                    ; $4d9f: $02
    dec sp                                        ; $4da0: $3b
    add hl, sp                                    ; $4da1: $39
    ld [bc], a                                    ; $4da2: $02
    ld d, e                                       ; $4da3: $53
    add hl, sp                                    ; $4da4: $39
    ld [bc], a                                    ; $4da5: $02
    ld e, a                                       ; $4da6: $5f
    add hl, sp                                    ; $4da7: $39
    ld [bc], a                                    ; $4da8: $02
    push af                                       ; $4da9: $f5
    add hl, sp                                    ; $4daa: $39
    ld [bc], a                                    ; $4dab: $02
    inc b                                         ; $4dac: $04
    ld a, [hl-]                                   ; $4dad: $3a
    ld [bc], a                                    ; $4dae: $02
    ld [hl], e                                    ; $4daf: $73
    ld a, [hl-]                                   ; $4db0: $3a
    ld [bc], a                                    ; $4db1: $02
    adc [hl]                                      ; $4db2: $8e
    ld a, [hl-]                                   ; $4db3: $3a
    ld [bc], a                                    ; $4db4: $02
    or d                                          ; $4db5: $b2
    ld a, [hl-]                                   ; $4db6: $3a
    ld [bc], a                                    ; $4db7: $02
    ret c                                         ; $4db8: $d8

    ld a, [hl-]                                   ; $4db9: $3a
    ld [bc], a                                    ; $4dba: $02
    ld d, $3b                                     ; $4dbb: $16 $3b

Call_059_4dbd:
    ld [bc], a                                    ; $4dbd: $02
    inc h                                         ; $4dbe: $24
    dec sp                                        ; $4dbf: $3b
    ld [bc], a                                    ; $4dc0: $02
    cpl                                           ; $4dc1: $2f
    dec sp                                        ; $4dc2: $3b
    ld [bc], a                                    ; $4dc3: $02
    ld [hl], $3b                                  ; $4dc4: $36 $3b
    ld [bc], a                                    ; $4dc6: $02
    ld d, h                                       ; $4dc7: $54
    dec sp                                        ; $4dc8: $3b
    ld [bc], a                                    ; $4dc9: $02
    ld e, [hl]                                    ; $4dca: $5e
    dec sp                                        ; $4dcb: $3b
    ld [bc], a                                    ; $4dcc: $02
    ld a, b                                       ; $4dcd: $78
    dec sp                                        ; $4dce: $3b
    ld [bc], a                                    ; $4dcf: $02
    and e                                         ; $4dd0: $a3
    dec sp                                        ; $4dd1: $3b
    ld [bc], a                                    ; $4dd2: $02
    or a                                          ; $4dd3: $b7
    dec sp                                        ; $4dd4: $3b
    ld [bc], a                                    ; $4dd5: $02
    rst $00                                       ; $4dd6: $c7
    dec sp                                        ; $4dd7: $3b

jr_059_4dd8:
    ld [bc], a                                    ; $4dd8: $02
    rlca                                          ; $4dd9: $07
    inc a                                         ; $4dda: $3c
    ld [bc], a                                    ; $4ddb: $02
    dec de                                        ; $4ddc: $1b
    inc a                                         ; $4ddd: $3c
    ld [bc], a                                    ; $4dde: $02
    ld a, $3c                                     ; $4ddf: $3e $3c
    ld [bc], a                                    ; $4de1: $02
    ld e, b                                       ; $4de2: $58
    inc a                                         ; $4de3: $3c
    ld [bc], a                                    ; $4de4: $02
    adc h                                         ; $4de5: $8c
    inc a                                         ; $4de6: $3c
    ld [bc], a                                    ; $4de7: $02
    or a                                          ; $4de8: $b7
    inc a                                         ; $4de9: $3c
    ld [bc], a                                    ; $4dea: $02
    sub $3c                                       ; $4deb: $d6 $3c
    ld [bc], a                                    ; $4ded: $02
    db $e4                                        ; $4dee: $e4
    inc a                                         ; $4def: $3c
    ld [bc], a                                    ; $4df0: $02
    rst $28                                       ; $4df1: $ef
    inc a                                         ; $4df2: $3c
    ld [bc], a                                    ; $4df3: $02
    db $fd                                        ; $4df4: $fd
    inc a                                         ; $4df5: $3c
    ld [bc], a                                    ; $4df6: $02
    dec h                                         ; $4df7: $25
    dec a                                         ; $4df8: $3d
    ld [bc], a                                    ; $4df9: $02
    ld c, c                                       ; $4dfa: $49
    dec a                                         ; $4dfb: $3d
    ld [bc], a                                    ; $4dfc: $02
    ld c, a                                       ; $4dfd: $4f
    dec a                                         ; $4dfe: $3d
    ld [bc], a                                    ; $4dff: $02
    ld l, l                                       ; $4e00: $6d
    dec a                                         ; $4e01: $3d
    ld [bc], a                                    ; $4e02: $02
    sub [hl]                                      ; $4e03: $96
    dec a                                         ; $4e04: $3d
    ld [bc], a                                    ; $4e05: $02
    cp a                                          ; $4e06: $bf
    dec a                                         ; $4e07: $3d
    ld [bc], a                                    ; $4e08: $02
    db $ed                                        ; $4e09: $ed
    dec a                                         ; $4e0a: $3d
    ld [bc], a                                    ; $4e0b: $02
    dec c                                         ; $4e0c: $0d
    ld a, $02                                     ; $4e0d: $3e $02
    jr c, jr_059_4e4f                             ; $4e0f: $38 $3e

    ld [bc], a                                    ; $4e11: $02
    sbc e                                         ; $4e12: $9b
    ld a, $02                                     ; $4e13: $3e $02
    push hl                                       ; $4e15: $e5
    ld a, $02                                     ; $4e16: $3e $02
    ld [$023f], sp                                ; $4e18: $08 $3f $02
    ld [hl], $3f                                  ; $4e1b: $36 $3f
    ld [bc], a                                    ; $4e1d: $02
    ld c, e                                       ; $4e1e: $4b
    ccf                                           ; $4e1f: $3f
    ld [bc], a                                    ; $4e20: $02
    ld e, [hl]                                    ; $4e21: $5e
    ccf                                           ; $4e22: $3f
    ld [bc], a                                    ; $4e23: $02
    ld a, h                                       ; $4e24: $7c
    ccf                                           ; $4e25: $3f
    ld [bc], a                                    ; $4e26: $02
    sbc c                                         ; $4e27: $99
    ccf                                           ; $4e28: $3f
    ld [bc], a                                    ; $4e29: $02
    cp d                                          ; $4e2a: $ba
    ccf                                           ; $4e2b: $3f
    ld [bc], a                                    ; $4e2c: $02
    sub $3f                                       ; $4e2d: $d6 $3f
    inc bc                                        ; $4e2f: $03
    ld bc, $0300                                  ; $4e30: $01 $00 $03
    ld l, $00                                     ; $4e33: $2e $00
    inc bc                                        ; $4e35: $03
    ld [hl], d                                    ; $4e36: $72
    nop                                           ; $4e37: $00
    inc bc                                        ; $4e38: $03
    add h                                         ; $4e39: $84
    nop                                           ; $4e3a: $00
    inc bc                                        ; $4e3b: $03
    sub l                                         ; $4e3c: $95
    nop                                           ; $4e3d: $00
    inc bc                                        ; $4e3e: $03
    cp c                                          ; $4e3f: $b9
    nop                                           ; $4e40: $00
    inc bc                                        ; $4e41: $03
    inc b                                         ; $4e42: $04
    ld bc, $4503                                  ; $4e43: $01 $03 $45
    ld bc, $6203                                  ; $4e46: $01 $03 $62
    ld bc, $7803                                  ; $4e49: $01 $03 $78
    ld bc, $7f03                                  ; $4e4c: $01 $03 $7f

jr_059_4e4f:
    ld bc, $9903                                  ; $4e4f: $01 $03 $99

Call_059_4e52:
    ld bc, $c003                                  ; $4e52: $01 $03 $c0
    ld bc, $c703                                  ; $4e55: $01 $03 $c7
    ld bc, $d803                                  ; $4e58: $01 $03 $d8
    ld bc, $ee03                                  ; $4e5b: $01 $03 $ee
    ld bc, $1503                                  ; $4e5e: $01 $03 $15
    ld [bc], a                                    ; $4e61: $02
    inc bc                                        ; $4e62: $03
    dec hl                                        ; $4e63: $2b
    ld [bc], a                                    ; $4e64: $02
    inc bc                                        ; $4e65: $03
    ld l, d                                       ; $4e66: $6a
    ld [bc], a                                    ; $4e67: $02
    inc bc                                        ; $4e68: $03
    adc [hl]                                      ; $4e69: $8e
    ld [bc], a                                    ; $4e6a: $02
    inc bc                                        ; $4e6b: $03
    and e                                         ; $4e6c: $a3
    ld [bc], a                                    ; $4e6d: $02
    inc bc                                        ; $4e6e: $03
    cp [hl]                                       ; $4e6f: $be
    ld [bc], a                                    ; $4e70: $02
    inc bc                                        ; $4e71: $03
    call Call_000_0302                            ; $4e72: $cd $02 $03
    db $e3                                        ; $4e75: $e3
    ld [bc], a                                    ; $4e76: $02
    inc bc                                        ; $4e77: $03
    dec b                                         ; $4e78: $05
    inc bc                                        ; $4e79: $03
    inc bc                                        ; $4e7a: $03
    inc d                                         ; $4e7b: $14
    inc bc                                        ; $4e7c: $03
    inc bc                                        ; $4e7d: $03
    add hl, sp                                    ; $4e7e: $39
    inc bc                                        ; $4e7f: $03
    inc bc                                        ; $4e80: $03
    ld c, [hl]                                    ; $4e81: $4e
    inc bc                                        ; $4e82: $03
    inc bc                                        ; $4e83: $03
    ld h, [hl]                                    ; $4e84: $66
    inc bc                                        ; $4e85: $03
    inc bc                                        ; $4e86: $03
    ld [hl], a                                    ; $4e87: $77
    inc bc                                        ; $4e88: $03
    inc bc                                        ; $4e89: $03
    sub a                                         ; $4e8a: $97
    inc bc                                        ; $4e8b: $03
    inc bc                                        ; $4e8c: $03
    xor d                                         ; $4e8d: $aa
    inc bc                                        ; $4e8e: $03
    inc bc                                        ; $4e8f: $03
    ret                                           ; $4e90: $c9


    inc bc                                        ; $4e91: $03
    inc bc                                        ; $4e92: $03
    xor $03                                       ; $4e93: $ee $03
    inc bc                                        ; $4e95: $03
    ld [bc], a                                    ; $4e96: $02
    inc b                                         ; $4e97: $04
    inc bc                                        ; $4e98: $03
    ld a, [hl+]                                   ; $4e99: $2a
    inc b                                         ; $4e9a: $04
    inc bc                                        ; $4e9b: $03
    ld b, b                                       ; $4e9c: $40
    inc b                                         ; $4e9d: $04
    inc bc                                        ; $4e9e: $03
    ld d, a                                       ; $4e9f: $57
    inc b                                         ; $4ea0: $04
    inc bc                                        ; $4ea1: $03
    ld [hl], h                                    ; $4ea2: $74
    inc b                                         ; $4ea3: $04
    inc bc                                        ; $4ea4: $03
    sub d                                         ; $4ea5: $92
    inc b                                         ; $4ea6: $04
    inc bc                                        ; $4ea7: $03
    or d                                          ; $4ea8: $b2
    inc b                                         ; $4ea9: $04
    inc bc                                        ; $4eaa: $03
    db $d3                                        ; $4eab: $d3
    inc b                                         ; $4eac: $04
    inc bc                                        ; $4ead: $03
    db $ec                                        ; $4eae: $ec
    inc b                                         ; $4eaf: $04
    inc bc                                        ; $4eb0: $03
    dec b                                         ; $4eb1: $05
    dec b                                         ; $4eb2: $05
    inc bc                                        ; $4eb3: $03
    ld [hl-], a                                   ; $4eb4: $32
    dec b                                         ; $4eb5: $05
    inc bc                                        ; $4eb6: $03
    ld b, h                                       ; $4eb7: $44
    dec b                                         ; $4eb8: $05
    inc bc                                        ; $4eb9: $03
    ld l, l                                       ; $4eba: $6d
    dec b                                         ; $4ebb: $05
    inc bc                                        ; $4ebc: $03
    add b                                         ; $4ebd: $80
    dec b                                         ; $4ebe: $05
    inc bc                                        ; $4ebf: $03
    sub [hl]                                      ; $4ec0: $96
    dec b                                         ; $4ec1: $05
    inc bc                                        ; $4ec2: $03
    cp h                                          ; $4ec3: $bc
    dec b                                         ; $4ec4: $05
    inc bc                                        ; $4ec5: $03
    db $ec                                        ; $4ec6: $ec
    dec b                                         ; $4ec7: $05
    inc bc                                        ; $4ec8: $03
    ld b, $06                                     ; $4ec9: $06 $06
    inc bc                                        ; $4ecb: $03
    daa                                           ; $4ecc: $27
    ld b, $03                                     ; $4ecd: $06 $03
    ld c, b                                       ; $4ecf: $48
    ld b, $03                                     ; $4ed0: $06 $03
    ld l, [hl]                                    ; $4ed2: $6e
    ld b, $03                                     ; $4ed3: $06 $03
    sbc d                                         ; $4ed5: $9a
    ld b, $03                                     ; $4ed6: $06 $03
    xor h                                         ; $4ed8: $ac
    ld b, $03                                     ; $4ed9: $06 $03
    call Call_000_0306                            ; $4edb: $cd $06 $03
    jp c, Jump_000_0306                           ; $4ede: $da $06 $03

    jp hl                                         ; $4ee1: $e9


    ld b, $03                                     ; $4ee2: $06 $03
    db $ed                                        ; $4ee4: $ed
    ld b, $03                                     ; $4ee5: $06 $03
    ld sp, hl                                     ; $4ee7: $f9
    ld b, $03                                     ; $4ee8: $06 $03
    inc bc                                        ; $4eea: $03
    rlca                                          ; $4eeb: $07
    inc bc                                        ; $4eec: $03
    ld d, c                                       ; $4eed: $51
    rlca                                          ; $4eee: $07
    inc bc                                        ; $4eef: $03
    ld [hl], d                                    ; $4ef0: $72
    rlca                                          ; $4ef1: $07
    inc bc                                        ; $4ef2: $03
    sub e                                         ; $4ef3: $93
    rlca                                          ; $4ef4: $07
    inc bc                                        ; $4ef5: $03
    xor d                                         ; $4ef6: $aa
    rlca                                          ; $4ef7: $07
    inc bc                                        ; $4ef8: $03
    rst $18                                       ; $4ef9: $df
    rlca                                          ; $4efa: $07
    inc bc                                        ; $4efb: $03
    db $fc                                        ; $4efc: $fc
    rlca                                          ; $4efd: $07
    inc bc                                        ; $4efe: $03
    ld a, [de]                                    ; $4eff: $1a
    ld [$2203], sp                                ; $4f00: $08 $03 $22
    ld [$4403], sp                                ; $4f03: $08 $03 $44
    ld [$6c03], sp                                ; $4f06: $08 $03 $6c
    ld [$7d03], sp                                ; $4f09: $08 $03 $7d
    ld [$a503], sp                                ; $4f0c: $08 $03 $a5
    ld [$b803], sp                                ; $4f0f: $08 $03 $b8
    ld [$e903], sp                                ; $4f12: $08 $03 $e9
    ld [$f703], sp                                ; $4f15: $08 $03 $f7
    ld [$1403], sp                                ; $4f18: $08 $03 $14
    add hl, bc                                    ; $4f1b: $09
    inc bc                                        ; $4f1c: $03
    ld [hl-], a                                   ; $4f1d: $32
    add hl, bc                                    ; $4f1e: $09
    inc bc                                        ; $4f1f: $03
    ld e, l                                       ; $4f20: $5d
    add hl, bc                                    ; $4f21: $09
    inc bc                                        ; $4f22: $03
    adc a                                         ; $4f23: $8f
    add hl, bc                                    ; $4f24: $09
    inc bc                                        ; $4f25: $03
    sub [hl]                                      ; $4f26: $96
    add hl, bc                                    ; $4f27: $09
    inc bc                                        ; $4f28: $03
    and c                                         ; $4f29: $a1
    add hl, bc                                    ; $4f2a: $09
    inc bc                                        ; $4f2b: $03
    cp [hl]                                       ; $4f2c: $be
    add hl, bc                                    ; $4f2d: $09
    inc bc                                        ; $4f2e: $03
    ret z                                         ; $4f2f: $c8

    add hl, bc                                    ; $4f30: $09
    inc bc                                        ; $4f31: $03
    db $d3                                        ; $4f32: $d3
    add hl, bc                                    ; $4f33: $09
    inc bc                                        ; $4f34: $03
    db $fd                                        ; $4f35: $fd
    add hl, bc                                    ; $4f36: $09
    inc bc                                        ; $4f37: $03
    inc [hl]                                      ; $4f38: $34
    ld a, [bc]                                    ; $4f39: $0a
    inc bc                                        ; $4f3a: $03
    ld b, c                                       ; $4f3b: $41
    ld a, [bc]                                    ; $4f3c: $0a
    inc bc                                        ; $4f3d: $03
    ld [hl], c                                    ; $4f3e: $71
    ld a, [bc]                                    ; $4f3f: $0a
    inc bc                                        ; $4f40: $03
    add h                                         ; $4f41: $84
    ld a, [bc]                                    ; $4f42: $0a
    inc bc                                        ; $4f43: $03
    and e                                         ; $4f44: $a3
    ld a, [bc]                                    ; $4f45: $0a
    inc bc                                        ; $4f46: $03
    or b                                          ; $4f47: $b0
    ld a, [bc]                                    ; $4f48: $0a
    inc bc                                        ; $4f49: $03
    ld c, l                                       ; $4f4a: $4d
    dec bc                                        ; $4f4b: $0b
    inc bc                                        ; $4f4c: $03
    ld e, d                                       ; $4f4d: $5a
    dec bc                                        ; $4f4e: $0b
    inc bc                                        ; $4f4f: $03
    ld a, [hl]                                    ; $4f50: $7e
    dec bc                                        ; $4f51: $0b
    inc bc                                        ; $4f52: $03
    rst $08                                       ; $4f53: $cf
    dec bc                                        ; $4f54: $0b
    inc bc                                        ; $4f55: $03
    ld a, [c]                                     ; $4f56: $f2
    dec bc                                        ; $4f57: $0b
    inc bc                                        ; $4f58: $03
    ld a, [bc]                                    ; $4f59: $0a
    inc c                                         ; $4f5a: $0c
    inc bc                                        ; $4f5b: $03
    ld sp, $030c                                  ; $4f5c: $31 $0c $03
    ld e, l                                       ; $4f5f: $5d
    inc c                                         ; $4f60: $0c
    inc bc                                        ; $4f61: $03
    add [hl]                                      ; $4f62: $86
    inc c                                         ; $4f63: $0c
    inc bc                                        ; $4f64: $03
    ret nz                                        ; $4f65: $c0

    inc c                                         ; $4f66: $0c
    inc bc                                        ; $4f67: $03
    db $dd                                        ; $4f68: $dd
    inc c                                         ; $4f69: $0c
    inc bc                                        ; $4f6a: $03
    ld d, $0d                                     ; $4f6b: $16 $0d
    inc bc                                        ; $4f6d: $03
    inc l                                         ; $4f6e: $2c
    dec c                                         ; $4f6f: $0d
    inc bc                                        ; $4f70: $03
    ld c, d                                       ; $4f71: $4a
    dec c                                         ; $4f72: $0d
    inc bc                                        ; $4f73: $03
    sbc b                                         ; $4f74: $98
    dec c                                         ; $4f75: $0d
    inc bc                                        ; $4f76: $03
    adc $0d                                       ; $4f77: $ce $0d
    inc bc                                        ; $4f79: $03
    db $dd                                        ; $4f7a: $dd
    dec c                                         ; $4f7b: $0d
    inc bc                                        ; $4f7c: $03
    rst $38                                       ; $4f7d: $ff
    dec c                                         ; $4f7e: $0d
    inc bc                                        ; $4f7f: $03
    dec de                                        ; $4f80: $1b
    ld c, $03                                     ; $4f81: $0e $03
    jr nz, jr_059_4f93                            ; $4f83: $20 $0e

    inc bc                                        ; $4f85: $03
    ld c, [hl]                                    ; $4f86: $4e
    ld c, $03                                     ; $4f87: $0e $03
    ld a, e                                       ; $4f89: $7b
    ld c, $03                                     ; $4f8a: $0e $03
    ld a, l                                       ; $4f8c: $7d
    rrca                                          ; $4f8d: $0f
    inc bc                                        ; $4f8e: $03
    add [hl]                                      ; $4f8f: $86
    rrca                                          ; $4f90: $0f
    inc bc                                        ; $4f91: $03
    sub h                                         ; $4f92: $94

jr_059_4f93:
    rrca                                          ; $4f93: $0f
    inc bc                                        ; $4f94: $03
    and a                                         ; $4f95: $a7
    rrca                                          ; $4f96: $0f
    inc bc                                        ; $4f97: $03
    sub $0f                                       ; $4f98: $d6 $0f
    inc bc                                        ; $4f9a: $03
    ld sp, hl                                     ; $4f9b: $f9
    rrca                                          ; $4f9c: $0f
    inc bc                                        ; $4f9d: $03
    inc l                                         ; $4f9e: $2c
    db $10                                        ; $4f9f: $10
    inc bc                                        ; $4fa0: $03
    ld d, e                                       ; $4fa1: $53
    db $10                                        ; $4fa2: $10
    inc bc                                        ; $4fa3: $03
    ld [hl], a                                    ; $4fa4: $77
    db $10                                        ; $4fa5: $10
    inc bc                                        ; $4fa6: $03
    add [hl]                                      ; $4fa7: $86
    db $10                                        ; $4fa8: $10
    inc bc                                        ; $4fa9: $03
    adc l                                         ; $4faa: $8d
    db $10                                        ; $4fab: $10
    inc bc                                        ; $4fac: $03
    xor d                                         ; $4fad: $aa
    db $10                                        ; $4fae: $10
    inc bc                                        ; $4faf: $03
    inc d                                         ; $4fb0: $14
    ld de, $2603                                  ; $4fb1: $11 $03 $26
    ld de, $8203                                  ; $4fb4: $11 $03 $82
    ld de, $e103                                  ; $4fb7: $11 $03 $e1
    ld de, $5103                                  ; $4fba: $11 $03 $51
    ld [de], a                                    ; $4fbd: $12
    inc bc                                        ; $4fbe: $03
    or l                                          ; $4fbf: $b5
    ld [de], a                                    ; $4fc0: $12
    inc bc                                        ; $4fc1: $03
    add hl, de                                    ; $4fc2: $19
    inc de                                        ; $4fc3: $13
    inc bc                                        ; $4fc4: $03
    ld c, [hl]                                    ; $4fc5: $4e
    inc de                                        ; $4fc6: $13
    inc bc                                        ; $4fc7: $03
    adc c                                         ; $4fc8: $89
    inc de                                        ; $4fc9: $13
    inc bc                                        ; $4fca: $03
    cp h                                          ; $4fcb: $bc
    inc de                                        ; $4fcc: $13
    inc bc                                        ; $4fcd: $03
    dec de                                        ; $4fce: $1b
    inc d                                         ; $4fcf: $14
    inc bc                                        ; $4fd0: $03
    jr z, jr_059_4fe7                             ; $4fd1: $28 $14

    inc bc                                        ; $4fd3: $03
    ld l, $14                                     ; $4fd4: $2e $14
    inc bc                                        ; $4fd6: $03
    inc a                                         ; $4fd7: $3c
    inc d                                         ; $4fd8: $14
    inc bc                                        ; $4fd9: $03
    ld d, d                                       ; $4fda: $52
    inc d                                         ; $4fdb: $14
    inc bc                                        ; $4fdc: $03
    ld h, h                                       ; $4fdd: $64
    inc d                                         ; $4fde: $14
    inc bc                                        ; $4fdf: $03
    ld a, d                                       ; $4fe0: $7a
    inc d                                         ; $4fe1: $14
    inc bc                                        ; $4fe2: $03
    add a                                         ; $4fe3: $87
    inc d                                         ; $4fe4: $14
    inc bc                                        ; $4fe5: $03
    and b                                         ; $4fe6: $a0

jr_059_4fe7:
    inc d                                         ; $4fe7: $14
    inc bc                                        ; $4fe8: $03
    xor e                                         ; $4fe9: $ab
    inc d                                         ; $4fea: $14
    inc bc                                        ; $4feb: $03
    ret nz                                        ; $4fec: $c0

    inc d                                         ; $4fed: $14
    inc bc                                        ; $4fee: $03
    rst $18                                       ; $4fef: $df
    inc d                                         ; $4ff0: $14
    inc bc                                        ; $4ff1: $03
    db $eb                                        ; $4ff2: $eb
    inc d                                         ; $4ff3: $14
    inc bc                                        ; $4ff4: $03
    ld bc, $0315                                  ; $4ff5: $01 $15 $03
    dec bc                                        ; $4ff8: $0b
    dec d                                         ; $4ff9: $15
    inc bc                                        ; $4ffa: $03
    inc h                                         ; $4ffb: $24
    dec d                                         ; $4ffc: $15
    inc bc                                        ; $4ffd: $03
    ld b, h                                       ; $4ffe: $44
    dec d                                         ; $4fff: $15
    inc bc                                        ; $5000: $03
    ld h, d                                       ; $5001: $62
    dec d                                         ; $5002: $15
    inc bc                                        ; $5003: $03
    adc d                                         ; $5004: $8a
    dec d                                         ; $5005: $15
    inc bc                                        ; $5006: $03
    xor l                                         ; $5007: $ad
    dec d                                         ; $5008: $15
    inc bc                                        ; $5009: $03
    di                                            ; $500a: $f3
    dec d                                         ; $500b: $15
    inc bc                                        ; $500c: $03
    inc b                                         ; $500d: $04
    ld d, $03                                     ; $500e: $16 $03
    ld [hl+], a                                   ; $5010: $22
    ld d, $03                                     ; $5011: $16 $03
    ld b, l                                       ; $5013: $45
    ld d, $03                                     ; $5014: $16 $03
    ld l, e                                       ; $5016: $6b
    ld d, $03                                     ; $5017: $16 $03
    ld a, l                                       ; $5019: $7d
    ld d, $03                                     ; $501a: $16 $03
    add [hl]                                      ; $501c: $86
    ld d, $03                                     ; $501d: $16 $03
    xor d                                         ; $501f: $aa
    ld d, $03                                     ; $5020: $16 $03
    or h                                          ; $5022: $b4
    ld d, $03                                     ; $5023: $16 $03
    rl [hl]                                       ; $5025: $cb $16
    inc bc                                        ; $5027: $03
    db $db                                        ; $5028: $db
    ld d, $03                                     ; $5029: $16 $03
    rst $28                                       ; $502b: $ef
    ld d, $03                                     ; $502c: $16 $03
    ld sp, hl                                     ; $502e: $f9
    ld d, $03                                     ; $502f: $16 $03
    dec b                                         ; $5031: $05
    rla                                           ; $5032: $17
    inc bc                                        ; $5033: $03
    rrca                                          ; $5034: $0f
    rla                                           ; $5035: $17
    inc bc                                        ; $5036: $03
    dec e                                         ; $5037: $1d
    rla                                           ; $5038: $17
    inc bc                                        ; $5039: $03
    add hl, hl                                    ; $503a: $29
    rla                                           ; $503b: $17
    inc bc                                        ; $503c: $03
    dec l                                         ; $503d: $2d
    rla                                           ; $503e: $17
    inc bc                                        ; $503f: $03
    inc [hl]                                      ; $5040: $34
    rla                                           ; $5041: $17
    inc bc                                        ; $5042: $03
    inc a                                         ; $5043: $3c
    rla                                           ; $5044: $17
    inc bc                                        ; $5045: $03
    ld b, a                                       ; $5046: $47
    rla                                           ; $5047: $17
    inc bc                                        ; $5048: $03
    ld d, b                                       ; $5049: $50
    rla                                           ; $504a: $17
    inc bc                                        ; $504b: $03
    ld d, h                                       ; $504c: $54
    rla                                           ; $504d: $17
    inc bc                                        ; $504e: $03
    ld e, d                                       ; $504f: $5a
    rla                                           ; $5050: $17
    inc bc                                        ; $5051: $03
    ld h, c                                       ; $5052: $61
    rla                                           ; $5053: $17
    inc bc                                        ; $5054: $03
    ld h, [hl]                                    ; $5055: $66
    rla                                           ; $5056: $17
    inc bc                                        ; $5057: $03
    ld l, d                                       ; $5058: $6a
    rla                                           ; $5059: $17
    inc bc                                        ; $505a: $03
    ld l, [hl]                                    ; $505b: $6e
    rla                                           ; $505c: $17
    inc bc                                        ; $505d: $03
    ld [hl], e                                    ; $505e: $73
    rla                                           ; $505f: $17
    inc bc                                        ; $5060: $03
    ld a, d                                       ; $5061: $7a
    rla                                           ; $5062: $17
    inc bc                                        ; $5063: $03
    add c                                         ; $5064: $81
    rla                                           ; $5065: $17
    inc bc                                        ; $5066: $03
    adc b                                         ; $5067: $88
    rla                                           ; $5068: $17
    inc bc                                        ; $5069: $03
    adc a                                         ; $506a: $8f
    rla                                           ; $506b: $17
    inc bc                                        ; $506c: $03
    sub a                                         ; $506d: $97
    rla                                           ; $506e: $17
    inc bc                                        ; $506f: $03
    and c                                         ; $5070: $a1
    rla                                           ; $5071: $17
    inc bc                                        ; $5072: $03
    xor h                                         ; $5073: $ac
    rla                                           ; $5074: $17
    inc bc                                        ; $5075: $03
    cp c                                          ; $5076: $b9
    rla                                           ; $5077: $17
    inc bc                                        ; $5078: $03
    push bc                                       ; $5079: $c5
    rla                                           ; $507a: $17
    inc bc                                        ; $507b: $03
    ret nc                                        ; $507c: $d0

    rla                                           ; $507d: $17
    inc bc                                        ; $507e: $03
    jp c, $0317                                   ; $507f: $da $17 $03

    ld [$0317], a                                 ; $5082: $ea $17 $03
    ld a, [c]                                     ; $5085: $f2
    rla                                           ; $5086: $17
    inc bc                                        ; $5087: $03
    ld a, [$0317]                                 ; $5088: $fa $17 $03
    ld a, [bc]                                    ; $508b: $0a
    jr jr_059_5091                                ; $508c: $18 $03

    inc de                                        ; $508e: $13
    jr jr_059_5094                                ; $508f: $18 $03

jr_059_5091:
    ld a, [de]                                    ; $5091: $1a
    jr jr_059_5097                                ; $5092: $18 $03

jr_059_5094:
    ld h, $18                                     ; $5094: $26 $18
    inc bc                                        ; $5096: $03

jr_059_5097:
    dec l                                         ; $5097: $2d
    jr jr_059_509d                                ; $5098: $18 $03

    dec [hl]                                      ; $509a: $35
    jr jr_059_50a0                                ; $509b: $18 $03

jr_059_509d:
    ld b, d                                       ; $509d: $42
    jr jr_059_50a3                                ; $509e: $18 $03

jr_059_50a0:
    ld c, d                                       ; $50a0: $4a
    jr jr_059_50a6                                ; $50a1: $18 $03

jr_059_50a3:
    ld e, c                                       ; $50a3: $59
    jr jr_059_50a9                                ; $50a4: $18 $03

jr_059_50a6:
    ld l, c                                       ; $50a6: $69
    jr jr_059_50ac                                ; $50a7: $18 $03

jr_059_50a9:
    ld [hl], l                                    ; $50a9: $75
    jr jr_059_50af                                ; $50aa: $18 $03

jr_059_50ac:
    ld a, l                                       ; $50ac: $7d
    jr jr_059_50b2                                ; $50ad: $18 $03

jr_059_50af:
    add h                                         ; $50af: $84
    jr jr_059_50b5                                ; $50b0: $18 $03

jr_059_50b2:
    adc e                                         ; $50b2: $8b
    jr jr_059_50b8                                ; $50b3: $18 $03

jr_059_50b5:
    sub a                                         ; $50b5: $97
    jr jr_059_50bb                                ; $50b6: $18 $03

jr_059_50b8:
    sbc [hl]                                      ; $50b8: $9e
    jr jr_059_50be                                ; $50b9: $18 $03

jr_059_50bb:
    and l                                         ; $50bb: $a5
    jr jr_059_50c1                                ; $50bc: $18 $03

jr_059_50be:
    xor [hl]                                      ; $50be: $ae
    jr jr_059_50c4                                ; $50bf: $18 $03

jr_059_50c1:
    or [hl]                                       ; $50c1: $b6
    jr jr_059_50c7                                ; $50c2: $18 $03

jr_059_50c4:
    cp a                                          ; $50c4: $bf
    jr jr_059_50ca                                ; $50c5: $18 $03

jr_059_50c7:
    rr b                                          ; $50c7: $cb $18
    inc bc                                        ; $50c9: $03

jr_059_50ca:
    reti                                          ; $50ca: $d9


    jr jr_059_50d0                                ; $50cb: $18 $03

    ld [c], a                                     ; $50cd: $e2
    jr jr_059_50d3                                ; $50ce: $18 $03

jr_059_50d0:
    db $eb                                        ; $50d0: $eb
    jr jr_059_50d6                                ; $50d1: $18 $03

jr_059_50d3:
    db $f4                                        ; $50d3: $f4
    jr jr_059_50d9                                ; $50d4: $18 $03

jr_059_50d6:
    db $fd                                        ; $50d6: $fd
    jr jr_059_50dc                                ; $50d7: $18 $03

jr_059_50d9:
    dec c                                         ; $50d9: $0d
    add hl, de                                    ; $50da: $19
    inc bc                                        ; $50db: $03

jr_059_50dc:
    rla                                           ; $50dc: $17
    add hl, de                                    ; $50dd: $19
    inc bc                                        ; $50de: $03
    jr nz, jr_059_50fa                            ; $50df: $20 $19

    inc bc                                        ; $50e1: $03
    dec l                                         ; $50e2: $2d
    add hl, de                                    ; $50e3: $19
    inc bc                                        ; $50e4: $03
    jr c, jr_059_5100                             ; $50e5: $38 $19

    inc bc                                        ; $50e7: $03
    ld b, b                                       ; $50e8: $40
    add hl, de                                    ; $50e9: $19
    inc bc                                        ; $50ea: $03
    ld c, b                                       ; $50eb: $48
    add hl, de                                    ; $50ec: $19
    inc bc                                        ; $50ed: $03
    ld c, a                                       ; $50ee: $4f
    add hl, de                                    ; $50ef: $19
    inc bc                                        ; $50f0: $03
    ld e, c                                       ; $50f1: $59
    add hl, de                                    ; $50f2: $19
    inc bc                                        ; $50f3: $03
    ld l, h                                       ; $50f4: $6c
    add hl, de                                    ; $50f5: $19
    inc bc                                        ; $50f6: $03
    ld a, l                                       ; $50f7: $7d
    add hl, de                                    ; $50f8: $19
    inc bc                                        ; $50f9: $03

jr_059_50fa:
    adc b                                         ; $50fa: $88
    add hl, de                                    ; $50fb: $19
    inc bc                                        ; $50fc: $03
    sub c                                         ; $50fd: $91
    add hl, de                                    ; $50fe: $19
    inc bc                                        ; $50ff: $03

jr_059_5100:
    and e                                         ; $5100: $a3
    add hl, de                                    ; $5101: $19
    inc bc                                        ; $5102: $03
    xor [hl]                                      ; $5103: $ae
    add hl, de                                    ; $5104: $19
    inc bc                                        ; $5105: $03
    cp a                                          ; $5106: $bf
    add hl, de                                    ; $5107: $19
    inc bc                                        ; $5108: $03
    call Call_000_0319                            ; $5109: $cd $19 $03
    call c, Call_000_0319                         ; $510c: $dc $19 $03
    jp hl                                         ; $510f: $e9


    add hl, de                                    ; $5110: $19
    inc bc                                        ; $5111: $03
    ld a, [$0319]                                 ; $5112: $fa $19 $03
    ld [bc], a                                    ; $5115: $02
    ld a, [de]                                    ; $5116: $1a

Call_059_5117:
    inc bc                                        ; $5117: $03
    ld a, [bc]                                    ; $5118: $0a
    ld a, [de]                                    ; $5119: $1a
    inc bc                                        ; $511a: $03
    dec d                                         ; $511b: $15
    ld a, [de]                                    ; $511c: $1a
    inc bc                                        ; $511d: $03
    dec e                                         ; $511e: $1d
    ld a, [de]                                    ; $511f: $1a
    inc bc                                        ; $5120: $03
    dec h                                         ; $5121: $25
    ld a, [de]                                    ; $5122: $1a
    inc bc                                        ; $5123: $03
    dec l                                         ; $5124: $2d
    ld a, [de]                                    ; $5125: $1a
    inc bc                                        ; $5126: $03
    jr c, jr_059_5143                             ; $5127: $38 $1a

    inc bc                                        ; $5129: $03
    ld b, d                                       ; $512a: $42
    ld a, [de]                                    ; $512b: $1a
    inc bc                                        ; $512c: $03
    ld c, h                                       ; $512d: $4c
    ld a, [de]                                    ; $512e: $1a
    inc bc                                        ; $512f: $03
    ld d, h                                       ; $5130: $54
    ld a, [de]                                    ; $5131: $1a
    inc bc                                        ; $5132: $03
    ld e, a                                       ; $5133: $5f
    ld a, [de]                                    ; $5134: $1a
    inc bc                                        ; $5135: $03
    ld h, [hl]                                    ; $5136: $66
    ld a, [de]                                    ; $5137: $1a
    inc bc                                        ; $5138: $03
    ld l, l                                       ; $5139: $6d
    ld a, [de]                                    ; $513a: $1a
    inc bc                                        ; $513b: $03
    ld a, c                                       ; $513c: $79
    ld a, [de]                                    ; $513d: $1a
    inc bc                                        ; $513e: $03
    add c                                         ; $513f: $81
    ld a, [de]                                    ; $5140: $1a
    inc bc                                        ; $5141: $03
    adc b                                         ; $5142: $88

jr_059_5143:
    ld a, [de]                                    ; $5143: $1a
    inc bc                                        ; $5144: $03
    adc [hl]                                      ; $5145: $8e
    ld a, [de]                                    ; $5146: $1a
    inc bc                                        ; $5147: $03
    sbc d                                         ; $5148: $9a
    ld a, [de]                                    ; $5149: $1a
    inc bc                                        ; $514a: $03
    and [hl]                                      ; $514b: $a6
    ld a, [de]                                    ; $514c: $1a
    inc bc                                        ; $514d: $03
    or c                                          ; $514e: $b1
    ld a, [de]                                    ; $514f: $1a
    inc bc                                        ; $5150: $03
    cp a                                          ; $5151: $bf
    ld a, [de]                                    ; $5152: $1a
    inc bc                                        ; $5153: $03
    rr d                                          ; $5154: $cb $1a
    inc bc                                        ; $5156: $03
    sub $1a                                       ; $5157: $d6 $1a
    inc bc                                        ; $5159: $03
    sbc $1a                                       ; $515a: $de $1a
    inc bc                                        ; $515c: $03
    db $ec                                        ; $515d: $ec
    ld a, [de]                                    ; $515e: $1a
    inc bc                                        ; $515f: $03
    push af                                       ; $5160: $f5
    ld a, [de]                                    ; $5161: $1a
    inc bc                                        ; $5162: $03
    db $fc                                        ; $5163: $fc
    ld a, [de]                                    ; $5164: $1a
    inc bc                                        ; $5165: $03
    rlca                                          ; $5166: $07
    dec de                                        ; $5167: $1b
    inc bc                                        ; $5168: $03
    ld [de], a                                    ; $5169: $12
    dec de                                        ; $516a: $1b
    inc bc                                        ; $516b: $03
    ld hl, $031b                                  ; $516c: $21 $1b $03
    inc l                                         ; $516f: $2c
    dec de                                        ; $5170: $1b
    inc bc                                        ; $5171: $03
    add hl, sp                                    ; $5172: $39
    dec de                                        ; $5173: $1b
    inc bc                                        ; $5174: $03
    ld b, e                                       ; $5175: $43
    dec de                                        ; $5176: $1b
    inc bc                                        ; $5177: $03
    ld c, a                                       ; $5178: $4f
    dec de                                        ; $5179: $1b
    inc bc                                        ; $517a: $03
    ld e, a                                       ; $517b: $5f
    dec de                                        ; $517c: $1b
    inc bc                                        ; $517d: $03
    ld l, b                                       ; $517e: $68
    dec de                                        ; $517f: $1b
    inc bc                                        ; $5180: $03
    ld l, a                                       ; $5181: $6f
    dec de                                        ; $5182: $1b
    inc bc                                        ; $5183: $03
    ld [hl], h                                    ; $5184: $74
    dec de                                        ; $5185: $1b
    inc bc                                        ; $5186: $03
    ld a, b                                       ; $5187: $78
    dec de                                        ; $5188: $1b
    inc bc                                        ; $5189: $03
    add c                                         ; $518a: $81
    dec de                                        ; $518b: $1b
    inc bc                                        ; $518c: $03
    adc h                                         ; $518d: $8c
    dec de                                        ; $518e: $1b
    inc bc                                        ; $518f: $03
    sub a                                         ; $5190: $97
    dec de                                        ; $5191: $1b
    inc bc                                        ; $5192: $03
    and d                                         ; $5193: $a2
    dec de                                        ; $5194: $1b
    inc bc                                        ; $5195: $03
    xor a                                         ; $5196: $af
    dec de                                        ; $5197: $1b
    inc bc                                        ; $5198: $03
    cp e                                          ; $5199: $bb
    dec de                                        ; $519a: $1b
    inc bc                                        ; $519b: $03
    rst $00                                       ; $519c: $c7
    dec de                                        ; $519d: $1b
    inc bc                                        ; $519e: $03
    rst $08                                       ; $519f: $cf
    dec de                                        ; $51a0: $1b
    inc bc                                        ; $51a1: $03
    call c, $031b                                 ; $51a2: $dc $1b $03
    push hl                                       ; $51a5: $e5
    dec de                                        ; $51a6: $1b
    inc bc                                        ; $51a7: $03
    db $ed                                        ; $51a8: $ed
    dec de                                        ; $51a9: $1b
    inc bc                                        ; $51aa: $03
    db $f4                                        ; $51ab: $f4
    dec de                                        ; $51ac: $1b
    inc bc                                        ; $51ad: $03
    ld hl, sp+$1b                                 ; $51ae: $f8 $1b
    inc bc                                        ; $51b0: $03
    ld bc, $031c                                  ; $51b1: $01 $1c $03
    rlca                                          ; $51b4: $07
    inc e                                         ; $51b5: $1c
    inc bc                                        ; $51b6: $03
    rrca                                          ; $51b7: $0f
    inc e                                         ; $51b8: $1c
    inc bc                                        ; $51b9: $03
    inc e                                         ; $51ba: $1c
    inc e                                         ; $51bb: $1c
    inc bc                                        ; $51bc: $03
    daa                                           ; $51bd: $27
    inc e                                         ; $51be: $1c
    inc bc                                        ; $51bf: $03
    dec [hl]                                      ; $51c0: $35
    inc e                                         ; $51c1: $1c
    inc bc                                        ; $51c2: $03
    ld c, c                                       ; $51c3: $49
    inc e                                         ; $51c4: $1c
    inc bc                                        ; $51c5: $03
    ld e, c                                       ; $51c6: $59
    inc e                                         ; $51c7: $1c
    inc bc                                        ; $51c8: $03
    ld e, [hl]                                    ; $51c9: $5e
    inc e                                         ; $51ca: $1c
    inc bc                                        ; $51cb: $03
    ld l, d                                       ; $51cc: $6a
    inc e                                         ; $51cd: $1c
    inc bc                                        ; $51ce: $03
    add b                                         ; $51cf: $80
    inc e                                         ; $51d0: $1c
    inc bc                                        ; $51d1: $03
    sub e                                         ; $51d2: $93
    inc e                                         ; $51d3: $1c
    inc bc                                        ; $51d4: $03
    and h                                         ; $51d5: $a4
    inc e                                         ; $51d6: $1c
    inc bc                                        ; $51d7: $03
    or l                                          ; $51d8: $b5
    inc e                                         ; $51d9: $1c
    inc bc                                        ; $51da: $03
    rst $08                                       ; $51db: $cf
    inc e                                         ; $51dc: $1c
    inc bc                                        ; $51dd: $03
    db $ec                                        ; $51de: $ec
    inc e                                         ; $51df: $1c
    inc bc                                        ; $51e0: $03
    ld [de], a                                    ; $51e1: $12
    dec e                                         ; $51e2: $1d
    inc bc                                        ; $51e3: $03
    ld h, $1d                                     ; $51e4: $26 $1d
    inc bc                                        ; $51e6: $03
    ld b, l                                       ; $51e7: $45
    dec e                                         ; $51e8: $1d
    inc bc                                        ; $51e9: $03
    ld h, h                                       ; $51ea: $64
    dec e                                         ; $51eb: $1d
    inc bc                                        ; $51ec: $03
    ld l, c                                       ; $51ed: $69
    dec e                                         ; $51ee: $1d
    inc bc                                        ; $51ef: $03
    ld l, h                                       ; $51f0: $6c
    dec e                                         ; $51f1: $1d
    inc bc                                        ; $51f2: $03
    ld [hl], e                                    ; $51f3: $73
    dec e                                         ; $51f4: $1d
    inc bc                                        ; $51f5: $03
    ld [hl], l                                    ; $51f6: $75
    dec e                                         ; $51f7: $1d
    inc bc                                        ; $51f8: $03
    ld a, c                                       ; $51f9: $79
    dec e                                         ; $51fa: $1d
    inc bc                                        ; $51fb: $03
    ld a, l                                       ; $51fc: $7d
    dec e                                         ; $51fd: $1d
    inc bc                                        ; $51fe: $03
    add d                                         ; $51ff: $82
    dec e                                         ; $5200: $1d
    inc bc                                        ; $5201: $03
    adc a                                         ; $5202: $8f
    dec e                                         ; $5203: $1d
    inc bc                                        ; $5204: $03
    and l                                         ; $5205: $a5
    dec e                                         ; $5206: $1d
    inc bc                                        ; $5207: $03
    push bc                                       ; $5208: $c5
    dec e                                         ; $5209: $1d
    inc bc                                        ; $520a: $03
    call nc, $031d                                ; $520b: $d4 $1d $03
    di                                            ; $520e: $f3
    dec e                                         ; $520f: $1d
    inc bc                                        ; $5210: $03
    nop                                           ; $5211: $00
    ld e, $03                                     ; $5212: $1e $03
    ld de, $031e                                  ; $5214: $11 $1e $03
    inc h                                         ; $5217: $24
    ld e, $03                                     ; $5218: $1e $03
    jr nc, @+$20                                  ; $521a: $30 $1e

    inc bc                                        ; $521c: $03
    ld c, d                                       ; $521d: $4a
    ld e, $03                                     ; $521e: $1e $03
    ld e, b                                       ; $5220: $58
    ld e, $03                                     ; $5221: $1e $03
    ld [hl], a                                    ; $5223: $77
    ld e, $03                                     ; $5224: $1e $03
    add a                                         ; $5226: $87
    ld e, $03                                     ; $5227: $1e $03
    and [hl]                                      ; $5229: $a6
    ld e, $03                                     ; $522a: $1e $03
    cp [hl]                                       ; $522c: $be
    ld e, $03                                     ; $522d: $1e $03
    push de                                       ; $522f: $d5
    ld e, $03                                     ; $5230: $1e $03
    and $1e                                       ; $5232: $e6 $1e
    inc bc                                        ; $5234: $03
    ld bc, $031f                                  ; $5235: $01 $1f $03
    ld [$031f], sp                                ; $5238: $08 $1f $03
    inc e                                         ; $523b: $1c
    rra                                           ; $523c: $1f
    inc bc                                        ; $523d: $03
    ld a, [hl+]                                   ; $523e: $2a
    rra                                           ; $523f: $1f
    inc bc                                        ; $5240: $03
    ld b, e                                       ; $5241: $43
    rra                                           ; $5242: $1f
    inc bc                                        ; $5243: $03
    ld h, [hl]                                    ; $5244: $66
    rra                                           ; $5245: $1f
    inc bc                                        ; $5246: $03
    ld [hl], b                                    ; $5247: $70
    rra                                           ; $5248: $1f
    inc bc                                        ; $5249: $03
    adc d                                         ; $524a: $8a
    rra                                           ; $524b: $1f
    inc bc                                        ; $524c: $03
    sbc e                                         ; $524d: $9b
    rra                                           ; $524e: $1f
    inc bc                                        ; $524f: $03
    and h                                         ; $5250: $a4
    rra                                           ; $5251: $1f
    inc bc                                        ; $5252: $03
    or l                                          ; $5253: $b5
    rra                                           ; $5254: $1f
    inc bc                                        ; $5255: $03
    jp nz, $031f                                  ; $5256: $c2 $1f $03

    rst $20                                       ; $5259: $e7
    rra                                           ; $525a: $1f
    inc bc                                        ; $525b: $03
    ldh a, [$1f]                                  ; $525c: $f0 $1f
    inc bc                                        ; $525e: $03
    rla                                           ; $525f: $17
    jr nz, jr_059_5265                            ; $5260: $20 $03

    dec [hl]                                      ; $5262: $35
    jr nz, jr_059_5268                            ; $5263: $20 $03

jr_059_5265:
    ld d, e                                       ; $5265: $53
    jr nz, jr_059_526b                            ; $5266: $20 $03

jr_059_5268:
    ld l, h                                       ; $5268: $6c
    jr nz, jr_059_526e                            ; $5269: $20 $03

jr_059_526b:
    add d                                         ; $526b: $82
    jr nz, jr_059_5271                            ; $526c: $20 $03

jr_059_526e:
    adc [hl]                                      ; $526e: $8e
    jr nz, jr_059_5274                            ; $526f: $20 $03

jr_059_5271:
    sbc [hl]                                      ; $5271: $9e
    jr nz, jr_059_5277                            ; $5272: $20 $03

jr_059_5274:
    and [hl]                                      ; $5274: $a6
    jr nz, jr_059_527a                            ; $5275: $20 $03

jr_059_5277:
    call Call_000_0320                            ; $5277: $cd $20 $03

jr_059_527a:
    push de                                       ; $527a: $d5
    jr nz, jr_059_5280                            ; $527b: $20 $03

    ld a, [c]                                     ; $527d: $f2
    jr nz, @+$05                                  ; $527e: $20 $03

jr_059_5280:
    ld [bc], a                                    ; $5280: $02
    ld hl, $1203                                  ; $5281: $21 $03 $12
    ld hl, $3003                                  ; $5284: $21 $03 $30
    ld hl, $4403                                  ; $5287: $21 $03 $44
    ld hl, $5803                                  ; $528a: $21 $03 $58
    ld hl, $6603                                  ; $528d: $21 $03 $66
    ld hl, $7003                                  ; $5290: $21 $03 $70
    ld hl, $9303                                  ; $5293: $21 $03 $93
    ld hl, $a103                                  ; $5296: $21 $03 $a1
    ld hl, $b803                                  ; $5299: $21 $03 $b8
    ld hl, $c203                                  ; $529c: $21 $03 $c2
    ld hl, $cc03                                  ; $529f: $21 $03 $cc
    ld hl, $e403                                  ; $52a2: $21 $03 $e4
    ld hl, $0003                                  ; $52a5: $21 $03 $00
    ld [hl+], a                                   ; $52a8: $22
    inc bc                                        ; $52a9: $03
    inc c                                         ; $52aa: $0c
    ld [hl+], a                                   ; $52ab: $22
    inc bc                                        ; $52ac: $03
    jr z, jr_059_52d1                             ; $52ad: $28 $22

    inc bc                                        ; $52af: $03
    inc [hl]                                      ; $52b0: $34
    ld [hl+], a                                   ; $52b1: $22
    inc bc                                        ; $52b2: $03
    ld c, e                                       ; $52b3: $4b
    ld [hl+], a                                   ; $52b4: $22
    inc bc                                        ; $52b5: $03
    ld e, h                                       ; $52b6: $5c
    ld [hl+], a                                   ; $52b7: $22
    inc bc                                        ; $52b8: $03
    ld [hl], d                                    ; $52b9: $72
    ld [hl+], a                                   ; $52ba: $22
    inc bc                                        ; $52bb: $03
    ld a, h                                       ; $52bc: $7c
    ld [hl+], a                                   ; $52bd: $22
    inc bc                                        ; $52be: $03
    add [hl]                                      ; $52bf: $86
    ld [hl+], a                                   ; $52c0: $22
    inc bc                                        ; $52c1: $03
    sbc b                                         ; $52c2: $98
    ld [hl+], a                                   ; $52c3: $22
    inc bc                                        ; $52c4: $03
    or d                                          ; $52c5: $b2
    ld [hl+], a                                   ; $52c6: $22
    inc bc                                        ; $52c7: $03
    cp [hl]                                       ; $52c8: $be
    ld [hl+], a                                   ; $52c9: $22
    inc bc                                        ; $52ca: $03
    rst $10                                       ; $52cb: $d7
    ld [hl+], a                                   ; $52cc: $22
    inc bc                                        ; $52cd: $03
    db $e3                                        ; $52ce: $e3
    ld [hl+], a                                   ; $52cf: $22
    inc bc                                        ; $52d0: $03

jr_059_52d1:
    nop                                           ; $52d1: $00
    inc hl                                        ; $52d2: $23
    inc bc                                        ; $52d3: $03
    dec sp                                        ; $52d4: $3b
    inc hl                                        ; $52d5: $23
    inc bc                                        ; $52d6: $03
    ld h, d                                       ; $52d7: $62
    inc hl                                        ; $52d8: $23
    inc bc                                        ; $52d9: $03
    adc b                                         ; $52da: $88
    inc hl                                        ; $52db: $23
    inc bc                                        ; $52dc: $03
    db $d3                                        ; $52dd: $d3
    inc hl                                        ; $52de: $23
    inc bc                                        ; $52df: $03
    db $fd                                        ; $52e0: $fd
    inc hl                                        ; $52e1: $23
    inc bc                                        ; $52e2: $03
    dec e                                         ; $52e3: $1d
    inc h                                         ; $52e4: $24
    inc bc                                        ; $52e5: $03
    ld d, a                                       ; $52e6: $57
    inc h                                         ; $52e7: $24
    inc bc                                        ; $52e8: $03
    sbc e                                         ; $52e9: $9b
    inc h                                         ; $52ea: $24
    inc bc                                        ; $52eb: $03
    add $24                                       ; $52ec: $c6 $24
    inc bc                                        ; $52ee: $03
    db $f4                                        ; $52ef: $f4
    inc h                                         ; $52f0: $24
    inc bc                                        ; $52f1: $03
    ld c, b                                       ; $52f2: $48
    dec h                                         ; $52f3: $25
    inc bc                                        ; $52f4: $03
    ld [hl], l                                    ; $52f5: $75
    dec h                                         ; $52f6: $25
    inc bc                                        ; $52f7: $03
    xor c                                         ; $52f8: $a9
    dec h                                         ; $52f9: $25
    inc bc                                        ; $52fa: $03
    jp hl                                         ; $52fb: $e9


    dec h                                         ; $52fc: $25
    inc bc                                        ; $52fd: $03
    dec l                                         ; $52fe: $2d
    ld h, $03                                     ; $52ff: $26 $03
    ld a, d                                       ; $5301: $7a
    ld h, $03                                     ; $5302: $26 $03
    add h                                         ; $5304: $84
    ld h, $03                                     ; $5305: $26 $03
    adc h                                         ; $5307: $8c
    ld h, $03                                     ; $5308: $26 $03
    sbc d                                         ; $530a: $9a
    ld h, $03                                     ; $530b: $26 $03
    and a                                         ; $530d: $a7
    ld h, $03                                     ; $530e: $26 $03
    or h                                          ; $5310: $b4
    ld h, $03                                     ; $5311: $26 $03
    ret nz                                        ; $5313: $c0

    ld h, $03                                     ; $5314: $26 $03
    sla [hl]                                      ; $5316: $cb $26
    inc bc                                        ; $5318: $03
    jp c, Jump_000_0326                           ; $5319: $da $26 $03

    rst $20                                       ; $531c: $e7
    ld h, $03                                     ; $531d: $26 $03
    push af                                       ; $531f: $f5
    ld h, $03                                     ; $5320: $26 $03
    rst $38                                       ; $5322: $ff
    ld h, $03                                     ; $5323: $26 $03
    add hl, bc                                    ; $5325: $09
    daa                                           ; $5326: $27
    inc bc                                        ; $5327: $03
    dec d                                         ; $5328: $15
    daa                                           ; $5329: $27
    inc bc                                        ; $532a: $03
    jr nz, jr_059_5354                            ; $532b: $20 $27

    inc bc                                        ; $532d: $03
    dec l                                         ; $532e: $2d
    daa                                           ; $532f: $27
    inc bc                                        ; $5330: $03
    ld a, [hl-]                                   ; $5331: $3a
    daa                                           ; $5332: $27
    inc bc                                        ; $5333: $03
    ld b, h                                       ; $5334: $44
    daa                                           ; $5335: $27
    inc bc                                        ; $5336: $03
    ld c, e                                       ; $5337: $4b
    daa                                           ; $5338: $27
    inc bc                                        ; $5339: $03
    ld e, c                                       ; $533a: $59
    daa                                           ; $533b: $27
    inc bc                                        ; $533c: $03
    ld h, l                                       ; $533d: $65
    daa                                           ; $533e: $27
    inc bc                                        ; $533f: $03
    ld l, a                                       ; $5340: $6f
    daa                                           ; $5341: $27
    inc bc                                        ; $5342: $03
    ld a, c                                       ; $5343: $79
    daa                                           ; $5344: $27
    inc bc                                        ; $5345: $03
    add h                                         ; $5346: $84
    daa                                           ; $5347: $27
    inc bc                                        ; $5348: $03
    adc a                                         ; $5349: $8f
    daa                                           ; $534a: $27
    inc bc                                        ; $534b: $03
    sbc e                                         ; $534c: $9b
    daa                                           ; $534d: $27
    inc bc                                        ; $534e: $03
    and [hl]                                      ; $534f: $a6
    daa                                           ; $5350: $27
    inc bc                                        ; $5351: $03
    or b                                          ; $5352: $b0
    daa                                           ; $5353: $27

jr_059_5354:
    inc bc                                        ; $5354: $03
    cp h                                          ; $5355: $bc
    daa                                           ; $5356: $27
    inc bc                                        ; $5357: $03
    rst $00                                       ; $5358: $c7
    daa                                           ; $5359: $27
    inc bc                                        ; $535a: $03
    rst $08                                       ; $535b: $cf
    daa                                           ; $535c: $27
    inc bc                                        ; $535d: $03
    rst $10                                       ; $535e: $d7
    daa                                           ; $535f: $27
    inc bc                                        ; $5360: $03
    db $e3                                        ; $5361: $e3
    daa                                           ; $5362: $27
    inc bc                                        ; $5363: $03
    rst $28                                       ; $5364: $ef
    daa                                           ; $5365: $27
    inc bc                                        ; $5366: $03
    db $fc                                        ; $5367: $fc
    daa                                           ; $5368: $27
    inc bc                                        ; $5369: $03
    rlca                                          ; $536a: $07
    jr z, jr_059_5370                             ; $536b: $28 $03

    dec d                                         ; $536d: $15
    jr z, jr_059_5373                             ; $536e: $28 $03

jr_059_5370:
    ld e, $28                                     ; $5370: $1e $28
    inc bc                                        ; $5372: $03

jr_059_5373:
    add hl, hl                                    ; $5373: $29
    jr z, jr_059_5379                             ; $5374: $28 $03

    ld [hl], $28                                  ; $5376: $36 $28
    inc bc                                        ; $5378: $03

jr_059_5379:
    ld b, d                                       ; $5379: $42
    jr z, jr_059_537f                             ; $537a: $28 $03

    ld c, l                                       ; $537c: $4d
    jr z, jr_059_5382                             ; $537d: $28 $03

jr_059_537f:
    ld e, c                                       ; $537f: $59
    jr z, jr_059_5385                             ; $5380: $28 $03

jr_059_5382:
    ld h, a                                       ; $5382: $67
    jr z, jr_059_5388                             ; $5383: $28 $03

jr_059_5385:
    ld [hl], e                                    ; $5385: $73
    jr z, jr_059_538b                             ; $5386: $28 $03

jr_059_5388:
    add b                                         ; $5388: $80
    jr z, jr_059_538e                             ; $5389: $28 $03

jr_059_538b:
    add l                                         ; $538b: $85
    jr z, jr_059_5391                             ; $538c: $28 $03

jr_059_538e:
    adc a                                         ; $538e: $8f
    jr z, jr_059_5394                             ; $538f: $28 $03

jr_059_5391:
    sbc e                                         ; $5391: $9b
    jr z, jr_059_5397                             ; $5392: $28 $03

jr_059_5394:
    and b                                         ; $5394: $a0
    jr z, jr_059_539a                             ; $5395: $28 $03

jr_059_5397:
    xor h                                         ; $5397: $ac
    jr z, jr_059_539d                             ; $5398: $28 $03

jr_059_539a:
    or [hl]                                       ; $539a: $b6
    jr z, jr_059_53a0                             ; $539b: $28 $03

jr_059_539d:
    jp nz, $0328                                  ; $539d: $c2 $28 $03

jr_059_53a0:
    pop de                                        ; $53a0: $d1
    jr z, jr_059_53a6                             ; $53a1: $28 $03

    db $dd                                        ; $53a3: $dd
    jr z, jr_059_53a9                             ; $53a4: $28 $03

jr_059_53a6:
    jp hl                                         ; $53a6: $e9


    jr z, jr_059_53ac                             ; $53a7: $28 $03

jr_059_53a9:
    push af                                       ; $53a9: $f5
    jr z, jr_059_53af                             ; $53aa: $28 $03

jr_059_53ac:
    cp $28                                        ; $53ac: $fe $28
    inc bc                                        ; $53ae: $03

jr_059_53af:
    dec bc                                        ; $53af: $0b
    add hl, hl                                    ; $53b0: $29
    inc bc                                        ; $53b1: $03
    add hl, de                                    ; $53b2: $19
    add hl, hl                                    ; $53b3: $29
    inc bc                                        ; $53b4: $03
    rra                                           ; $53b5: $1f
    add hl, hl                                    ; $53b6: $29
    inc bc                                        ; $53b7: $03
    dec l                                         ; $53b8: $2d
    add hl, hl                                    ; $53b9: $29
    inc bc                                        ; $53ba: $03
    dec sp                                        ; $53bb: $3b
    add hl, hl                                    ; $53bc: $29
    inc bc                                        ; $53bd: $03
    ld b, l                                       ; $53be: $45
    add hl, hl                                    ; $53bf: $29
    inc bc                                        ; $53c0: $03
    ld d, d                                       ; $53c1: $52
    add hl, hl                                    ; $53c2: $29
    inc bc                                        ; $53c3: $03
    ld e, [hl]                                    ; $53c4: $5e
    add hl, hl                                    ; $53c5: $29
    inc bc                                        ; $53c6: $03
    ld l, e                                       ; $53c7: $6b
    add hl, hl                                    ; $53c8: $29
    inc bc                                        ; $53c9: $03
    ld [hl], a                                    ; $53ca: $77
    add hl, hl                                    ; $53cb: $29
    inc bc                                        ; $53cc: $03
    add e                                         ; $53cd: $83
    add hl, hl                                    ; $53ce: $29
    inc bc                                        ; $53cf: $03
    adc [hl]                                      ; $53d0: $8e
    add hl, hl                                    ; $53d1: $29
    inc bc                                        ; $53d2: $03
    sbc d                                         ; $53d3: $9a
    add hl, hl                                    ; $53d4: $29
    inc bc                                        ; $53d5: $03
    and a                                         ; $53d6: $a7
    add hl, hl                                    ; $53d7: $29
    inc bc                                        ; $53d8: $03
    xor l                                         ; $53d9: $ad
    add hl, hl                                    ; $53da: $29
    inc bc                                        ; $53db: $03
    cp d                                          ; $53dc: $ba
    add hl, hl                                    ; $53dd: $29
    inc bc                                        ; $53de: $03
    rst $00                                       ; $53df: $c7
    add hl, hl                                    ; $53e0: $29
    inc bc                                        ; $53e1: $03
    db $d3                                        ; $53e2: $d3
    add hl, hl                                    ; $53e3: $29
    inc bc                                        ; $53e4: $03
    ldh [$29], a                                  ; $53e5: $e0 $29
    inc bc                                        ; $53e7: $03
    ld [$0329], a                                 ; $53e8: $ea $29 $03
    rst $30                                       ; $53eb: $f7
    add hl, hl                                    ; $53ec: $29
    inc bc                                        ; $53ed: $03
    rst $38                                       ; $53ee: $ff
    add hl, hl                                    ; $53ef: $29
    inc bc                                        ; $53f0: $03
    ld a, [bc]                                    ; $53f1: $0a
    ld a, [hl+]                                   ; $53f2: $2a
    inc bc                                        ; $53f3: $03
    inc d                                         ; $53f4: $14
    ld a, [hl+]                                   ; $53f5: $2a
    inc bc                                        ; $53f6: $03
    rra                                           ; $53f7: $1f
    ld a, [hl+]                                   ; $53f8: $2a
    inc bc                                        ; $53f9: $03
    inc l                                         ; $53fa: $2c
    ld a, [hl+]                                   ; $53fb: $2a
    inc bc                                        ; $53fc: $03
    dec [hl]                                      ; $53fd: $35
    ld a, [hl+]                                   ; $53fe: $2a
    inc bc                                        ; $53ff: $03
    ld b, b                                       ; $5400: $40
    ld a, [hl+]                                   ; $5401: $2a
    inc bc                                        ; $5402: $03
    ld c, [hl]                                    ; $5403: $4e
    ld a, [hl+]                                   ; $5404: $2a
    inc bc                                        ; $5405: $03
    ld e, b                                       ; $5406: $58
    ld a, [hl+]                                   ; $5407: $2a
    inc bc                                        ; $5408: $03
    ld h, e                                       ; $5409: $63
    ld a, [hl+]                                   ; $540a: $2a
    inc bc                                        ; $540b: $03
    ld l, [hl]                                    ; $540c: $6e
    ld a, [hl+]                                   ; $540d: $2a
    inc bc                                        ; $540e: $03
    ld a, e                                       ; $540f: $7b
    ld a, [hl+]                                   ; $5410: $2a
    inc bc                                        ; $5411: $03
    adc d                                         ; $5412: $8a
    ld a, [hl+]                                   ; $5413: $2a
    inc bc                                        ; $5414: $03
    sub a                                         ; $5415: $97
    ld a, [hl+]                                   ; $5416: $2a
    inc bc                                        ; $5417: $03
    and c                                         ; $5418: $a1
    ld a, [hl+]                                   ; $5419: $2a
    inc bc                                        ; $541a: $03
    xor c                                         ; $541b: $a9
    ld a, [hl+]                                   ; $541c: $2a
    inc bc                                        ; $541d: $03
    or l                                          ; $541e: $b5
    ld a, [hl+]                                   ; $541f: $2a
    inc bc                                        ; $5420: $03
    jp nz, Jump_000_032a                          ; $5421: $c2 $2a $03

    jp nc, Jump_000_032a                          ; $5424: $d2 $2a $03

    sub $2a                                       ; $5427: $d6 $2a
    inc bc                                        ; $5429: $03
    db $e3                                        ; $542a: $e3
    ld a, [hl+]                                   ; $542b: $2a
    inc bc                                        ; $542c: $03
    db $eb                                        ; $542d: $eb
    ld a, [hl+]                                   ; $542e: $2a
    inc bc                                        ; $542f: $03
    rst $30                                       ; $5430: $f7
    ld a, [hl+]                                   ; $5431: $2a
    inc bc                                        ; $5432: $03
    cp $2a                                        ; $5433: $fe $2a
    inc bc                                        ; $5435: $03
    rst $38                                       ; $5436: $ff
    ld a, [hl+]                                   ; $5437: $2a
    inc bc                                        ; $5438: $03
    db $10                                        ; $5439: $10
    dec hl                                        ; $543a: $2b
    inc bc                                        ; $543b: $03
    dec [hl]                                      ; $543c: $35
    dec hl                                        ; $543d: $2b
    inc bc                                        ; $543e: $03
    ld c, [hl]                                    ; $543f: $4e
    dec hl                                        ; $5440: $2b
    inc bc                                        ; $5441: $03
    ld a, d                                       ; $5442: $7a
    dec hl                                        ; $5443: $2b
    inc bc                                        ; $5444: $03
    and h                                         ; $5445: $a4
    dec hl                                        ; $5446: $2b
    inc bc                                        ; $5447: $03
    cp l                                          ; $5448: $bd
    dec hl                                        ; $5449: $2b
    inc bc                                        ; $544a: $03
    ldh [$2b], a                                  ; $544b: $e0 $2b
    inc bc                                        ; $544d: $03
    nop                                           ; $544e: $00
    inc l                                         ; $544f: $2c
    inc bc                                        ; $5450: $03
    rla                                           ; $5451: $17
    inc l                                         ; $5452: $2c
    inc bc                                        ; $5453: $03
    dec l                                         ; $5454: $2d
    inc l                                         ; $5455: $2c
    inc bc                                        ; $5456: $03
    ld d, h                                       ; $5457: $54
    inc l                                         ; $5458: $2c
    inc bc                                        ; $5459: $03
    ld [hl], l                                    ; $545a: $75
    inc l                                         ; $545b: $2c
    inc bc                                        ; $545c: $03
    adc [hl]                                      ; $545d: $8e
    inc l                                         ; $545e: $2c
    inc bc                                        ; $545f: $03
    and h                                         ; $5460: $a4
    inc l                                         ; $5461: $2c
    inc bc                                        ; $5462: $03
    pop bc                                        ; $5463: $c1
    inc l                                         ; $5464: $2c
    inc bc                                        ; $5465: $03
    push hl                                       ; $5466: $e5
    inc l                                         ; $5467: $2c
    inc bc                                        ; $5468: $03
    inc de                                        ; $5469: $13
    dec l                                         ; $546a: $2d
    inc bc                                        ; $546b: $03
    ld sp, $032d                                  ; $546c: $31 $2d $03
    ld l, c                                       ; $546f: $69
    dec l                                         ; $5470: $2d
    inc bc                                        ; $5471: $03
    adc e                                         ; $5472: $8b
    dec l                                         ; $5473: $2d
    inc bc                                        ; $5474: $03
    or b                                          ; $5475: $b0
    dec l                                         ; $5476: $2d
    inc bc                                        ; $5477: $03
    call c, $032d                                 ; $5478: $dc $2d $03
    ld [bc], a                                    ; $547b: $02
    ld l, $03                                     ; $547c: $2e $03
    ld a, [hl+]                                   ; $547e: $2a
    ld l, $03                                     ; $547f: $2e $03
    ld l, c                                       ; $5481: $69
    ld l, $03                                     ; $5482: $2e $03
    sub e                                         ; $5484: $93
    ld l, $03                                     ; $5485: $2e $03
    jp nz, Jump_000_032e                          ; $5487: $c2 $2e $03

    db $d3                                        ; $548a: $d3
    ld l, $03                                     ; $548b: $2e $03
    ld a, [bc]                                    ; $548d: $0a
    cpl                                           ; $548e: $2f
    inc bc                                        ; $548f: $03
    ccf                                           ; $5490: $3f
    cpl                                           ; $5491: $2f
    inc bc                                        ; $5492: $03
    ld [hl], b                                    ; $5493: $70
    cpl                                           ; $5494: $2f
    inc bc                                        ; $5495: $03
    sbc c                                         ; $5496: $99
    cpl                                           ; $5497: $2f
    inc bc                                        ; $5498: $03
    jp nz, $032f                                  ; $5499: $c2 $2f $03

    pop de                                        ; $549c: $d1
    cpl                                           ; $549d: $2f
    inc bc                                        ; $549e: $03
    ld b, $30                                     ; $549f: $06 $30
    inc bc                                        ; $54a1: $03
    ld sp, $0330                                  ; $54a2: $31 $30 $03
    ld d, d                                       ; $54a5: $52
    jr nc, jr_059_54ab                            ; $54a6: $30 $03

    ld a, b                                       ; $54a8: $78
    jr nc, jr_059_54ae                            ; $54a9: $30 $03

jr_059_54ab:
    sub b                                         ; $54ab: $90
    jr nc, jr_059_54b1                            ; $54ac: $30 $03

jr_059_54ae:
    cp b                                          ; $54ae: $b8
    jr nc, jr_059_54b4                            ; $54af: $30 $03

jr_059_54b1:
    db $e4                                        ; $54b1: $e4
    jr nc, jr_059_54b7                            ; $54b2: $30 $03

jr_059_54b4:
    ld [$0331], sp                                ; $54b4: $08 $31 $03

jr_059_54b7:
    inc sp                                        ; $54b7: $33
    ld sp, $4503                                  ; $54b8: $31 $03 $45
    ld sp, $5403                                  ; $54bb: $31 $03 $54
    ld sp, $7c03                                  ; $54be: $31 $03 $7c
    ld sp, $a303                                  ; $54c1: $31 $03 $a3
    ld sp, $da03                                  ; $54c4: $31 $03 $da
    ld sp, $ea03                                  ; $54c7: $31 $03 $ea
    ld sp, $1403                                  ; $54ca: $31 $03 $14
    ld [hl-], a                                   ; $54cd: $32
    inc bc                                        ; $54ce: $03
    inc [hl]                                      ; $54cf: $34
    ld [hl-], a                                   ; $54d0: $32
    inc bc                                        ; $54d1: $03
    ld e, d                                       ; $54d2: $5a
    ld [hl-], a                                   ; $54d3: $32
    inc bc                                        ; $54d4: $03
    ld [hl], l                                    ; $54d5: $75
    ld [hl-], a                                   ; $54d6: $32
    inc bc                                        ; $54d7: $03
    xor c                                         ; $54d8: $a9
    ld [hl-], a                                   ; $54d9: $32
    inc bc                                        ; $54da: $03
    call nz, $0332                                ; $54db: $c4 $32 $03
    xor $32                                       ; $54de: $ee $32
    inc bc                                        ; $54e0: $03
    ld a, [bc]                                    ; $54e1: $0a
    inc sp                                        ; $54e2: $33
    inc bc                                        ; $54e3: $03
    ld d, $33                                     ; $54e4: $16 $33
    inc bc                                        ; $54e6: $03
    ld b, h                                       ; $54e7: $44
    inc sp                                        ; $54e8: $33
    inc bc                                        ; $54e9: $03
    ld [hl], d                                    ; $54ea: $72
    inc sp                                        ; $54eb: $33
    inc bc                                        ; $54ec: $03
    and d                                         ; $54ed: $a2
    inc sp                                        ; $54ee: $33
    inc bc                                        ; $54ef: $03
    jp z, $0333                                   ; $54f0: $ca $33 $03

    jp hl                                         ; $54f3: $e9


    inc sp                                        ; $54f4: $33
    inc bc                                        ; $54f5: $03
    ld c, $34                                     ; $54f6: $0e $34
    inc bc                                        ; $54f8: $03
    ld [hl-], a                                   ; $54f9: $32
    inc [hl]                                      ; $54fa: $34
    inc bc                                        ; $54fb: $03
    ld e, c                                       ; $54fc: $59
    inc [hl]                                      ; $54fd: $34
    inc bc                                        ; $54fe: $03
    adc b                                         ; $54ff: $88
    inc [hl]                                      ; $5500: $34
    inc bc                                        ; $5501: $03
    and b                                         ; $5502: $a0
    inc [hl]                                      ; $5503: $34
    inc bc                                        ; $5504: $03
    rst $08                                       ; $5505: $cf
    inc [hl]                                      ; $5506: $34
    inc bc                                        ; $5507: $03
    db $f4                                        ; $5508: $f4
    inc [hl]                                      ; $5509: $34
    inc bc                                        ; $550a: $03
    inc hl                                        ; $550b: $23
    dec [hl]                                      ; $550c: $35
    inc bc                                        ; $550d: $03
    ld d, d                                       ; $550e: $52
    dec [hl]                                      ; $550f: $35
    inc bc                                        ; $5510: $03
    ld h, h                                       ; $5511: $64
    dec [hl]                                      ; $5512: $35
    inc bc                                        ; $5513: $03
    add b                                         ; $5514: $80
    dec [hl]                                      ; $5515: $35
    inc bc                                        ; $5516: $03
    xor h                                         ; $5517: $ac
    dec [hl]                                      ; $5518: $35
    inc bc                                        ; $5519: $03
    ret nc                                        ; $551a: $d0

    dec [hl]                                      ; $551b: $35
    inc bc                                        ; $551c: $03
    ld [bc], a                                    ; $551d: $02
    ld [hl], $03                                  ; $551e: $36 $03
    add hl, hl                                    ; $5520: $29
    ld [hl], $03                                  ; $5521: $36 $03
    ld c, [hl]                                    ; $5523: $4e
    ld [hl], $03                                  ; $5524: $36 $03
    ld [hl], l                                    ; $5526: $75
    ld [hl], $03                                  ; $5527: $36 $03
    sub c                                         ; $5529: $91
    ld [hl], $03                                  ; $552a: $36 $03
    or [hl]                                       ; $552c: $b6
    ld [hl], $03                                  ; $552d: $36 $03
    ret z                                         ; $552f: $c8

    ld [hl], $03                                  ; $5530: $36 $03
    ldh a, [$36]                                  ; $5532: $f0 $36
    inc bc                                        ; $5534: $03
    inc d                                         ; $5535: $14
    scf                                           ; $5536: $37
    inc bc                                        ; $5537: $03
    ld sp, $0337                                  ; $5538: $31 $37 $03
    ld h, [hl]                                    ; $553b: $66
    scf                                           ; $553c: $37
    inc bc                                        ; $553d: $03
    sub l                                         ; $553e: $95
    scf                                           ; $553f: $37
    inc bc                                        ; $5540: $03
    or [hl]                                       ; $5541: $b6
    scf                                           ; $5542: $37
    inc bc                                        ; $5543: $03
    call z, $0337                                 ; $5544: $cc $37 $03
    ldh a, [$37]                                  ; $5547: $f0 $37
    inc bc                                        ; $5549: $03
    db $10                                        ; $554a: $10
    jr c, jr_059_5550                             ; $554b: $38 $03

    ld c, l                                       ; $554d: $4d
    jr c, jr_059_5553                             ; $554e: $38 $03

jr_059_5550:
    ld l, e                                       ; $5550: $6b
    jr c, jr_059_5556                             ; $5551: $38 $03

jr_059_5553:
    ld a, [hl]                                    ; $5553: $7e
    jr c, jr_059_5559                             ; $5554: $38 $03

jr_059_5556:
    or c                                          ; $5556: $b1
    jr c, jr_059_555c                             ; $5557: $38 $03

jr_059_5559:
    sub $38                                       ; $5559: $d6 $38
    inc bc                                        ; $555b: $03

jr_059_555c:
    ld [$0338], a                                 ; $555c: $ea $38 $03
    dec h                                         ; $555f: $25
    add hl, sp                                    ; $5560: $39
    inc bc                                        ; $5561: $03
    ld b, e                                       ; $5562: $43
    add hl, sp                                    ; $5563: $39
    inc bc                                        ; $5564: $03
    ld e, l                                       ; $5565: $5d
    add hl, sp                                    ; $5566: $39
    inc bc                                        ; $5567: $03
    ld a, h                                       ; $5568: $7c
    add hl, sp                                    ; $5569: $39
    inc bc                                        ; $556a: $03
    sub e                                         ; $556b: $93
    add hl, sp                                    ; $556c: $39
    inc bc                                        ; $556d: $03
    and c                                         ; $556e: $a1
    add hl, sp                                    ; $556f: $39
    inc bc                                        ; $5570: $03
    or h                                          ; $5571: $b4
    add hl, sp                                    ; $5572: $39
    inc bc                                        ; $5573: $03
    cp d                                          ; $5574: $ba
    add hl, sp                                    ; $5575: $39
    inc bc                                        ; $5576: $03
    cp a                                          ; $5577: $bf
    add hl, sp                                    ; $5578: $39
    inc bc                                        ; $5579: $03
    push bc                                       ; $557a: $c5
    add hl, sp                                    ; $557b: $39
    inc bc                                        ; $557c: $03
    call z, Call_000_0339                         ; $557d: $cc $39 $03
    db $d3                                        ; $5580: $d3
    add hl, sp                                    ; $5581: $39
    inc bc                                        ; $5582: $03
    ret c                                         ; $5583: $d8

    add hl, sp                                    ; $5584: $39
    inc bc                                        ; $5585: $03
    rst $18                                       ; $5586: $df
    add hl, sp                                    ; $5587: $39
    inc bc                                        ; $5588: $03
    and $39                                       ; $5589: $e6 $39
    inc bc                                        ; $558b: $03
    db $ec                                        ; $558c: $ec
    add hl, sp                                    ; $558d: $39
    inc bc                                        ; $558e: $03
    ld a, [c]                                     ; $558f: $f2
    add hl, sp                                    ; $5590: $39
    inc bc                                        ; $5591: $03
    db $fc                                        ; $5592: $fc
    add hl, sp                                    ; $5593: $39
    inc bc                                        ; $5594: $03
    nop                                           ; $5595: $00
    ld a, [hl-]                                   ; $5596: $3a
    inc bc                                        ; $5597: $03
    dec b                                         ; $5598: $05
    ld a, [hl-]                                   ; $5599: $3a
    inc bc                                        ; $559a: $03
    dec bc                                        ; $559b: $0b
    ld a, [hl-]                                   ; $559c: $3a
    inc bc                                        ; $559d: $03
    inc de                                        ; $559e: $13
    ld a, [hl-]                                   ; $559f: $3a
    inc bc                                        ; $55a0: $03
    add hl, de                                    ; $55a1: $19
    ld a, [hl-]                                   ; $55a2: $3a
    inc bc                                        ; $55a3: $03
    dec e                                         ; $55a4: $1d
    ld a, [hl-]                                   ; $55a5: $3a
    inc bc                                        ; $55a6: $03
    dec hl                                        ; $55a7: $2b
    ld a, [hl-]                                   ; $55a8: $3a
    inc bc                                        ; $55a9: $03
    ld b, c                                       ; $55aa: $41
    ld a, [hl-]                                   ; $55ab: $3a
    inc bc                                        ; $55ac: $03
    ld h, e                                       ; $55ad: $63
    ld a, [hl-]                                   ; $55ae: $3a
    inc bc                                        ; $55af: $03
    ld [hl], h                                    ; $55b0: $74
    ld a, [hl-]                                   ; $55b1: $3a
    inc bc                                        ; $55b2: $03
    add h                                         ; $55b3: $84
    ld a, [hl-]                                   ; $55b4: $3a
    inc bc                                        ; $55b5: $03
    sbc d                                         ; $55b6: $9a
    ld a, [hl-]                                   ; $55b7: $3a
    inc bc                                        ; $55b8: $03
    or [hl]                                       ; $55b9: $b6
    ld a, [hl-]                                   ; $55ba: $3a
    inc bc                                        ; $55bb: $03
    jp c, $033a                                   ; $55bc: $da $3a $03

    rst $28                                       ; $55bf: $ef
    ld a, [hl-]                                   ; $55c0: $3a
    inc bc                                        ; $55c1: $03
    inc b                                         ; $55c2: $04
    dec sp                                        ; $55c3: $3b
    inc bc                                        ; $55c4: $03
    add hl, de                                    ; $55c5: $19
    dec sp                                        ; $55c6: $3b
    inc bc                                        ; $55c7: $03
    ld b, a                                       ; $55c8: $47
    dec sp                                        ; $55c9: $3b
    inc bc                                        ; $55ca: $03
    ld h, [hl]                                    ; $55cb: $66
    dec sp                                        ; $55cc: $3b
    inc bc                                        ; $55cd: $03
    ld a, l                                       ; $55ce: $7d
    dec sp                                        ; $55cf: $3b
    inc bc                                        ; $55d0: $03
    sbc [hl]                                      ; $55d1: $9e
    dec sp                                        ; $55d2: $3b
    inc bc                                        ; $55d3: $03
    call nz, Call_000_033b                        ; $55d4: $c4 $3b $03
    push de                                       ; $55d7: $d5
    dec sp                                        ; $55d8: $3b
    inc bc                                        ; $55d9: $03
    db $e4                                        ; $55da: $e4
    dec sp                                        ; $55db: $3b
    inc bc                                        ; $55dc: $03
    xor $3b                                       ; $55dd: $ee $3b
    inc bc                                        ; $55df: $03
    db $10                                        ; $55e0: $10
    inc a                                         ; $55e1: $3c
    inc bc                                        ; $55e2: $03
    ld de, $033c                                  ; $55e3: $11 $3c $03
    ld [de], a                                    ; $55e6: $12
    inc a                                         ; $55e7: $3c
    inc bc                                        ; $55e8: $03
    dec l                                         ; $55e9: $2d
    inc a                                         ; $55ea: $3c
    inc bc                                        ; $55eb: $03
    inc a                                         ; $55ec: $3c
    inc a                                         ; $55ed: $3c
    inc bc                                        ; $55ee: $03
    ld b, e                                       ; $55ef: $43
    inc a                                         ; $55f0: $3c
    inc bc                                        ; $55f1: $03
    ld c, d                                       ; $55f2: $4a
    inc a                                         ; $55f3: $3c
    inc bc                                        ; $55f4: $03
    ld d, e                                       ; $55f5: $53
    inc a                                         ; $55f6: $3c
    inc bc                                        ; $55f7: $03
    ld e, d                                       ; $55f8: $5a
    inc a                                         ; $55f9: $3c
    inc bc                                        ; $55fa: $03
    add d                                         ; $55fb: $82
    inc a                                         ; $55fc: $3c
    inc bc                                        ; $55fd: $03
    sub a                                         ; $55fe: $97
    inc a                                         ; $55ff: $3c
    inc bc                                        ; $5600: $03
    or e                                          ; $5601: $b3
    inc a                                         ; $5602: $3c
    inc bc                                        ; $5603: $03
    ret z                                         ; $5604: $c8

    inc a                                         ; $5605: $3c
    inc bc                                        ; $5606: $03
    call c, $033c                                 ; $5607: $dc $3c $03
    ld [bc], a                                    ; $560a: $02
    dec a                                         ; $560b: $3d
    inc bc                                        ; $560c: $03
    jr z, jr_059_564c                             ; $560d: $28 $3d

    inc bc                                        ; $560f: $03
    ld e, d                                       ; $5610: $5a
    dec a                                         ; $5611: $3d
    inc bc                                        ; $5612: $03
    add e                                         ; $5613: $83
    dec a                                         ; $5614: $3d
    inc bc                                        ; $5615: $03
    xor c                                         ; $5616: $a9
    dec a                                         ; $5617: $3d
    inc bc                                        ; $5618: $03
    ld a, [c]                                     ; $5619: $f2
    dec a                                         ; $561a: $3d
    inc bc                                        ; $561b: $03
    rrca                                          ; $561c: $0f
    ld a, $03                                     ; $561d: $3e $03
    add hl, hl                                    ; $561f: $29
    ld a, $03                                     ; $5620: $3e $03
    jr c, jr_059_5662                             ; $5622: $38 $3e

    inc bc                                        ; $5624: $03
    ld c, l                                       ; $5625: $4d
    ld a, $03                                     ; $5626: $3e $03
    ld [hl], b                                    ; $5628: $70
    ld a, $03                                     ; $5629: $3e $03
    sub [hl]                                      ; $562b: $96
    ld a, $03                                     ; $562c: $3e $03
    pop bc                                        ; $562e: $c1
    ld a, $03                                     ; $562f: $3e $03
    rst $10                                       ; $5631: $d7
    ld a, $03                                     ; $5632: $3e $03
    ldh a, [$3e]                                  ; $5634: $f0 $3e
    inc bc                                        ; $5636: $03
    inc c                                         ; $5637: $0c
    ccf                                           ; $5638: $3f
    inc bc                                        ; $5639: $03
    inc a                                         ; $563a: $3c
    ccf                                           ; $563b: $3f
    inc bc                                        ; $563c: $03
    ld e, h                                       ; $563d: $5c
    ccf                                           ; $563e: $3f
    inc bc                                        ; $563f: $03
    ld a, e                                       ; $5640: $7b
    ccf                                           ; $5641: $3f
    inc bc                                        ; $5642: $03
    sub c                                         ; $5643: $91
    ccf                                           ; $5644: $3f
    inc bc                                        ; $5645: $03
    xor e                                         ; $5646: $ab
    ccf                                           ; $5647: $3f
    inc bc                                        ; $5648: $03
    db $db                                        ; $5649: $db
    ccf                                           ; $564a: $3f
    inc b                                         ; $564b: $04

jr_059_564c:
    ld bc, $0400                                  ; $564c: $01 $00 $04
    ld h, $00                                     ; $564f: $26 $00
    inc b                                         ; $5651: $04
    inc [hl]                                      ; $5652: $34
    nop                                           ; $5653: $00
    inc b                                         ; $5654: $04
    ld l, c                                       ; $5655: $69
    nop                                           ; $5656: $00
    inc b                                         ; $5657: $04
    ld [hl], d                                    ; $5658: $72
    nop                                           ; $5659: $00
    inc b                                         ; $565a: $04
    ld a, h                                       ; $565b: $7c
    nop                                           ; $565c: $00
    inc b                                         ; $565d: $04
    add e                                         ; $565e: $83
    nop                                           ; $565f: $00
    inc b                                         ; $5660: $04
    adc e                                         ; $5661: $8b

jr_059_5662:
    nop                                           ; $5662: $00
    inc b                                         ; $5663: $04
    and d                                         ; $5664: $a2
    nop                                           ; $5665: $00
    inc b                                         ; $5666: $04
    or a                                          ; $5667: $b7
    nop                                           ; $5668: $00
    inc b                                         ; $5669: $04
    inc b                                         ; $566a: $04
    ld bc, $4004                                  ; $566b: $01 $04 $40
    ld bc, $5104                                  ; $566e: $01 $04 $51
    ld bc, $5f04                                  ; $5671: $01 $04 $5f
    ld bc, $7d04                                  ; $5674: $01 $04 $7d
    ld bc, $a604                                  ; $5677: $01 $04 $a6
    ld bc, $0b04                                  ; $567a: $01 $04 $0b
    ld [bc], a                                    ; $567d: $02
    inc b                                         ; $567e: $04
    ld b, b                                       ; $567f: $40
    ld [bc], a                                    ; $5680: $02
    inc b                                         ; $5681: $04
    xor d                                         ; $5682: $aa
    ld [bc], a                                    ; $5683: $02
    inc b                                         ; $5684: $04
    pop de                                        ; $5685: $d1
    ld [bc], a                                    ; $5686: $02
    inc b                                         ; $5687: $04
    ei                                            ; $5688: $fb
    ld [bc], a                                    ; $5689: $02
    inc b                                         ; $568a: $04
    inc sp                                        ; $568b: $33
    inc bc                                        ; $568c: $03
    inc b                                         ; $568d: $04
    inc a                                         ; $568e: $3c
    inc bc                                        ; $568f: $03
    inc b                                         ; $5690: $04
    ld e, e                                       ; $5691: $5b
    inc bc                                        ; $5692: $03
    inc b                                         ; $5693: $04
    or h                                          ; $5694: $b4
    inc bc                                        ; $5695: $03
    inc b                                         ; $5696: $04
    db $e4                                        ; $5697: $e4
    inc bc                                        ; $5698: $03
    inc b                                         ; $5699: $04
    rla                                           ; $569a: $17
    inc b                                         ; $569b: $04
    inc b                                         ; $569c: $04
    inc sp                                        ; $569d: $33
    inc b                                         ; $569e: $04
    inc b                                         ; $569f: $04
    ld [hl], e                                    ; $56a0: $73
    inc b                                         ; $56a1: $04
    inc b                                         ; $56a2: $04
    jp nc, Jump_000_0404                          ; $56a3: $d2 $04 $04

    db $eb                                        ; $56a6: $eb
    inc b                                         ; $56a7: $04
    inc b                                         ; $56a8: $04
    ld c, c                                       ; $56a9: $49
    dec b                                         ; $56aa: $05
    inc b                                         ; $56ab: $04
    or c                                          ; $56ac: $b1
    dec b                                         ; $56ad: $05
    inc b                                         ; $56ae: $04
    cp e                                          ; $56af: $bb
    dec b                                         ; $56b0: $05
    inc b                                         ; $56b1: $04
    dec de                                        ; $56b2: $1b
    ld b, $04                                     ; $56b3: $06 $04
    inc a                                         ; $56b5: $3c
    ld b, $04                                     ; $56b6: $06 $04
    ld c, a                                       ; $56b8: $4f
    ld b, $04                                     ; $56b9: $06 $04
    ld a, [hl]                                    ; $56bb: $7e
    ld b, $04                                     ; $56bc: $06 $04
    sbc c                                         ; $56be: $99
    ld b, $04                                     ; $56bf: $06 $04
    jp nz, Jump_000_0406                          ; $56c1: $c2 $06 $04

    rst $00                                       ; $56c4: $c7
    ld b, $04                                     ; $56c5: $06 $04
    dec hl                                        ; $56c7: $2b
    rlca                                          ; $56c8: $07
    inc b                                         ; $56c9: $04
    ld sp, $0407                                  ; $56ca: $31 $07 $04
    ld l, l                                       ; $56cd: $6d
    rlca                                          ; $56ce: $07
    inc b                                         ; $56cf: $04
    ld a, h                                       ; $56d0: $7c
    rlca                                          ; $56d1: $07
    inc b                                         ; $56d2: $04
    db $ed                                        ; $56d3: $ed
    rlca                                          ; $56d4: $07
    inc b                                         ; $56d5: $04
    jr z, jr_059_56e0                             ; $56d6: $28 $08

    inc b                                         ; $56d8: $04
    ld a, b                                       ; $56d9: $78
    ld [$8804], sp                                ; $56da: $08 $04 $88
    ld [$9704], sp                                ; $56dd: $08 $04 $97

jr_059_56e0:
    ld [$a804], sp                                ; $56e0: $08 $04 $a8
    ld [$be04], sp                                ; $56e3: $08 $04 $be
    ld [$f304], sp                                ; $56e6: $08 $04 $f3
    ld [$0504], sp                                ; $56e9: $08 $04 $05
    add hl, bc                                    ; $56ec: $09
    inc b                                         ; $56ed: $04
    dec hl                                        ; $56ee: $2b
    add hl, bc                                    ; $56ef: $09
    inc b                                         ; $56f0: $04
    ld h, l                                       ; $56f1: $65
    add hl, bc                                    ; $56f2: $09
    inc b                                         ; $56f3: $04
    sub [hl]                                      ; $56f4: $96
    add hl, bc                                    ; $56f5: $09
    inc b                                         ; $56f6: $04
    pop de                                        ; $56f7: $d1
    add hl, bc                                    ; $56f8: $09
    inc b                                         ; $56f9: $04
    ld [bc], a                                    ; $56fa: $02
    ld a, [bc]                                    ; $56fb: $0a
    inc b                                         ; $56fc: $04
    ld d, c                                       ; $56fd: $51
    ld a, [bc]                                    ; $56fe: $0a
    inc b                                         ; $56ff: $04
    ld [hl], d                                    ; $5700: $72
    ld a, [bc]                                    ; $5701: $0a
    inc b                                         ; $5702: $04
    add d                                         ; $5703: $82
    ld a, [bc]                                    ; $5704: $0a
    inc b                                         ; $5705: $04
    pop af                                        ; $5706: $f1
    ld a, [bc]                                    ; $5707: $0a
    inc b                                         ; $5708: $04
    inc de                                        ; $5709: $13
    dec bc                                        ; $570a: $0b
    inc b                                         ; $570b: $04
    ld e, h                                       ; $570c: $5c
    dec bc                                        ; $570d: $0b
    inc b                                         ; $570e: $04
    ld a, d                                       ; $570f: $7a
    dec bc                                        ; $5710: $0b
    inc b                                         ; $5711: $04
    call c, Call_000_040b                         ; $5712: $dc $0b $04
    rst $38                                       ; $5715: $ff
    dec bc                                        ; $5716: $0b
    inc b                                         ; $5717: $04
    dec d                                         ; $5718: $15
    inc c                                         ; $5719: $0c
    inc b                                         ; $571a: $04
    inc hl                                        ; $571b: $23
    inc c                                         ; $571c: $0c
    inc b                                         ; $571d: $04
    ld e, a                                       ; $571e: $5f
    inc c                                         ; $571f: $0c
    inc b                                         ; $5720: $04
    ld l, b                                       ; $5721: $68
    inc c                                         ; $5722: $0c
    inc b                                         ; $5723: $04
    sub c                                         ; $5724: $91
    inc c                                         ; $5725: $0c
    inc b                                         ; $5726: $04
    and a                                         ; $5727: $a7
    inc c                                         ; $5728: $0c
    inc b                                         ; $5729: $04
    cp d                                          ; $572a: $ba
    inc c                                         ; $572b: $0c
    inc b                                         ; $572c: $04
    call Call_000_040c                            ; $572d: $cd $0c $04
    ldh [$0c], a                                  ; $5730: $e0 $0c
    inc b                                         ; $5732: $04
    xor $0c                                       ; $5733: $ee $0c
    inc b                                         ; $5735: $04
    ld a, [de]                                    ; $5736: $1a
    dec c                                         ; $5737: $0d
    inc b                                         ; $5738: $04
    jr nc, jr_059_5748                            ; $5739: $30 $0d

    inc b                                         ; $573b: $04
    ld a, h                                       ; $573c: $7c
    dec c                                         ; $573d: $0d
    inc b                                         ; $573e: $04
    sbc [hl]                                      ; $573f: $9e
    dec c                                         ; $5740: $0d
    inc b                                         ; $5741: $04
    cp c                                          ; $5742: $b9
    dec c                                         ; $5743: $0d
    inc b                                         ; $5744: $04
    push hl                                       ; $5745: $e5
    dec c                                         ; $5746: $0d
    inc b                                         ; $5747: $04

jr_059_5748:
    rlca                                          ; $5748: $07
    ld c, $04                                     ; $5749: $0e $04
    ld hl, $040e                                  ; $574b: $21 $0e $04
    inc [hl]                                      ; $574e: $34
    ld c, $04                                     ; $574f: $0e $04
    ld d, [hl]                                    ; $5751: $56
    ld c, $04                                     ; $5752: $0e $04
    ld h, c                                       ; $5754: $61
    ld c, $04                                     ; $5755: $0e $04
    ld a, b                                       ; $5757: $78
    ld c, $04                                     ; $5758: $0e $04
    add a                                         ; $575a: $87
    ld c, $04                                     ; $575b: $0e $04
    sub c                                         ; $575d: $91
    ld c, $04                                     ; $575e: $0e $04
    cp c                                          ; $5760: $b9
    ld c, $04                                     ; $5761: $0e $04
    ld b, $0f                                     ; $5763: $06 $0f
    inc b                                         ; $5765: $04
    jr nz, jr_059_5777                            ; $5766: $20 $0f

    inc b                                         ; $5768: $04
    jr z, jr_059_577a                             ; $5769: $28 $0f

    inc b                                         ; $576b: $04
    inc a                                         ; $576c: $3c
    rrca                                          ; $576d: $0f
    inc b                                         ; $576e: $04
    ld b, [hl]                                    ; $576f: $46
    rrca                                          ; $5770: $0f
    inc b                                         ; $5771: $04
    ld [hl], e                                    ; $5772: $73
    rrca                                          ; $5773: $0f
    inc b                                         ; $5774: $04
    adc a                                         ; $5775: $8f
    rrca                                          ; $5776: $0f

jr_059_5777:
    inc b                                         ; $5777: $04
    jr nz, jr_059_578a                            ; $5778: $20 $10

jr_059_577a:
    inc b                                         ; $577a: $04
    ld d, c                                       ; $577b: $51
    db $10                                        ; $577c: $10
    inc b                                         ; $577d: $04
    or e                                          ; $577e: $b3
    db $10                                        ; $577f: $10
    inc b                                         ; $5780: $04
    cp e                                          ; $5781: $bb
    db $10                                        ; $5782: $10
    inc b                                         ; $5783: $04
    jp z, Jump_000_0410                           ; $5784: $ca $10 $04

    ldh [rNR10], a                                ; $5787: $e0 $10
    inc b                                         ; $5789: $04

jr_059_578a:
    inc d                                         ; $578a: $14
    ld de, $3304                                  ; $578b: $11 $04 $33
    ld de, $6d04                                  ; $578e: $11 $04 $6d
    ld de, $8104                                  ; $5791: $11 $04 $81
    ld de, $a704                                  ; $5794: $11 $04 $a7
    ld de, $ae04                                  ; $5797: $11 $04 $ae
    ld de, $bc04                                  ; $579a: $11 $04 $bc
    ld de, $0904                                  ; $579d: $11 $04 $09
    ld [de], a                                    ; $57a0: $12
    inc b                                         ; $57a1: $04
    dec d                                         ; $57a2: $15
    ld [de], a                                    ; $57a3: $12
    inc b                                         ; $57a4: $04
    ld h, d                                       ; $57a5: $62
    ld [de], a                                    ; $57a6: $12
    inc b                                         ; $57a7: $04
    add c                                         ; $57a8: $81
    ld [de], a                                    ; $57a9: $12
    inc b                                         ; $57aa: $04
    pop de                                        ; $57ab: $d1
    ld [de], a                                    ; $57ac: $12
    inc b                                         ; $57ad: $04
    push af                                       ; $57ae: $f5
    ld [de], a                                    ; $57af: $12
    inc b                                         ; $57b0: $04
    rst $38                                       ; $57b1: $ff
    ld [de], a                                    ; $57b2: $12
    inc b                                         ; $57b3: $04
    ld [de], a                                    ; $57b4: $12
    inc de                                        ; $57b5: $13
    inc b                                         ; $57b6: $04
    dec e                                         ; $57b7: $1d
    inc de                                        ; $57b8: $13
    inc b                                         ; $57b9: $04
    dec h                                         ; $57ba: $25
    inc de                                        ; $57bb: $13
    inc b                                         ; $57bc: $04
    jr nc, jr_059_57d2                            ; $57bd: $30 $13

    inc b                                         ; $57bf: $04
    add hl, sp                                    ; $57c0: $39
    inc de                                        ; $57c1: $13
    inc b                                         ; $57c2: $04
    ld b, l                                       ; $57c3: $45
    inc de                                        ; $57c4: $13
    inc b                                         ; $57c5: $04
    ld d, c                                       ; $57c6: $51
    inc de                                        ; $57c7: $13
    inc b                                         ; $57c8: $04
    ld e, e                                       ; $57c9: $5b
    inc de                                        ; $57ca: $13
    inc b                                         ; $57cb: $04
    ld l, d                                       ; $57cc: $6a
    inc de                                        ; $57cd: $13
    inc b                                         ; $57ce: $04
    ld a, e                                       ; $57cf: $7b
    inc de                                        ; $57d0: $13
    inc b                                         ; $57d1: $04

jr_059_57d2:
    ld a, h                                       ; $57d2: $7c
    inc de                                        ; $57d3: $13
    inc b                                         ; $57d4: $04
    adc e                                         ; $57d5: $8b
    inc de                                        ; $57d6: $13
    inc b                                         ; $57d7: $04
    and b                                         ; $57d8: $a0
    inc de                                        ; $57d9: $13
    inc b                                         ; $57da: $04
    or l                                          ; $57db: $b5
    inc de                                        ; $57dc: $13
    inc b                                         ; $57dd: $04
    or [hl]                                       ; $57de: $b6
    inc de                                        ; $57df: $13
    inc b                                         ; $57e0: $04
    or a                                          ; $57e1: $b7
    inc de                                        ; $57e2: $13
    inc b                                         ; $57e3: $04
    rst $00                                       ; $57e4: $c7
    inc de                                        ; $57e5: $13
    inc b                                         ; $57e6: $04
    jp nc, $0413                                  ; $57e7: $d2 $13 $04

    db $d3                                        ; $57ea: $d3
    inc de                                        ; $57eb: $13
    inc b                                         ; $57ec: $04

Jump_059_57ed:
    sbc $13                                       ; $57ed: $de $13
    inc b                                         ; $57ef: $04
    rst $18                                       ; $57f0: $df
    inc de                                        ; $57f1: $13
    inc b                                         ; $57f2: $04
    ldh [rNR13], a                                ; $57f3: $e0 $13
    inc b                                         ; $57f5: $04
    rst $28                                       ; $57f6: $ef
    inc de                                        ; $57f7: $13
    inc b                                         ; $57f8: $04
    ei                                            ; $57f9: $fb
    inc de                                        ; $57fa: $13
    inc b                                         ; $57fb: $04
    rlca                                          ; $57fc: $07
    inc d                                         ; $57fd: $14
    inc b                                         ; $57fe: $04
    ld [$0414], sp                                ; $57ff: $08 $14 $04
    add hl, bc                                    ; $5802: $09
    inc d                                         ; $5803: $14
    inc b                                         ; $5804: $04
    ld a, [bc]                                    ; $5805: $0a
    inc d                                         ; $5806: $14
    inc b                                         ; $5807: $04
    add hl, de                                    ; $5808: $19
    inc d                                         ; $5809: $14
    inc b                                         ; $580a: $04
    ld a, [de]                                    ; $580b: $1a
    inc d                                         ; $580c: $14
    inc b                                         ; $580d: $04
    dec de                                        ; $580e: $1b
    inc d                                         ; $580f: $14
    inc b                                         ; $5810: $04
    inc e                                         ; $5811: $1c
    inc d                                         ; $5812: $14
    inc b                                         ; $5813: $04
    dec e                                         ; $5814: $1d
    inc d                                         ; $5815: $14
    inc b                                         ; $5816: $04
    ld e, $14                                     ; $5817: $1e $14
    inc b                                         ; $5819: $04
    rra                                           ; $581a: $1f
    inc d                                         ; $581b: $14
    inc b                                         ; $581c: $04
    jr nz, jr_059_5833                            ; $581d: $20 $14

    inc b                                         ; $581f: $04
    ld hl, $0414                                  ; $5820: $21 $14 $04
    dec hl                                        ; $5823: $2b
    inc d                                         ; $5824: $14
    inc b                                         ; $5825: $04
    ld a, [hl-]                                   ; $5826: $3a
    inc d                                         ; $5827: $14
    inc b                                         ; $5828: $04
    ld c, e                                       ; $5829: $4b
    inc d                                         ; $582a: $14
    inc b                                         ; $582b: $04
    ld c, h                                       ; $582c: $4c
    inc d                                         ; $582d: $14
    inc b                                         ; $582e: $04
    ld c, l                                       ; $582f: $4d
    inc d                                         ; $5830: $14
    inc b                                         ; $5831: $04
    ld c, [hl]                                    ; $5832: $4e

jr_059_5833:
    inc d                                         ; $5833: $14
    inc b                                         ; $5834: $04
    ld c, a                                       ; $5835: $4f
    inc d                                         ; $5836: $14
    inc b                                         ; $5837: $04
    ld d, b                                       ; $5838: $50
    inc d                                         ; $5839: $14
    inc b                                         ; $583a: $04
    ld d, c                                       ; $583b: $51
    inc d                                         ; $583c: $14
    inc b                                         ; $583d: $04
    ld d, d                                       ; $583e: $52
    inc d                                         ; $583f: $14
    inc b                                         ; $5840: $04
    ld d, e                                       ; $5841: $53
    inc d                                         ; $5842: $14
    inc b                                         ; $5843: $04
    ld d, h                                       ; $5844: $54
    inc d                                         ; $5845: $14
    inc b                                         ; $5846: $04
    ld d, l                                       ; $5847: $55

Call_059_5848:
    inc d                                         ; $5848: $14
    inc b                                         ; $5849: $04
    ld h, [hl]                                    ; $584a: $66
    inc d                                         ; $584b: $14
    inc b                                         ; $584c: $04
    halt                                          ; $584d: $76
    inc d                                         ; $584e: $14
    inc b                                         ; $584f: $04
    add l                                         ; $5850: $85
    inc d                                         ; $5851: $14
    inc b                                         ; $5852: $04
    sub c                                         ; $5853: $91
    inc d                                         ; $5854: $14
    inc b                                         ; $5855: $04
    sbc h                                         ; $5856: $9c
    inc d                                         ; $5857: $14
    inc b                                         ; $5858: $04
    xor [hl]                                      ; $5859: $ae
    inc d                                         ; $585a: $14
    inc b                                         ; $585b: $04
    xor a                                         ; $585c: $af
    inc d                                         ; $585d: $14

Call_059_585e:
    inc b                                         ; $585e: $04
    cp e                                          ; $585f: $bb
    inc d                                         ; $5860: $14
    inc b                                         ; $5861: $04
    cp h                                          ; $5862: $bc
    inc d                                         ; $5863: $14
    inc b                                         ; $5864: $04
    jp z, Jump_000_0414                           ; $5865: $ca $14 $04

    rl h                                          ; $5868: $cb $14
    inc b                                         ; $586a: $04
    db $db                                        ; $586b: $db
    inc d                                         ; $586c: $14
    inc b                                         ; $586d: $04
    call c, Call_000_0414                         ; $586e: $dc $14 $04
    db $ec                                        ; $5871: $ec
    inc d                                         ; $5872: $14
    inc b                                         ; $5873: $04
    ld sp, hl                                     ; $5874: $f9
    inc d                                         ; $5875: $14
    inc b                                         ; $5876: $04
    add hl, bc                                    ; $5877: $09
    dec d                                         ; $5878: $15
    inc b                                         ; $5879: $04
    ld d, $15                                     ; $587a: $16 $15
    inc b                                         ; $587c: $04
    add hl, hl                                    ; $587d: $29
    dec d                                         ; $587e: $15
    inc b                                         ; $587f: $04
    ld a, [hl+]                                   ; $5880: $2a
    dec d                                         ; $5881: $15
    inc b                                         ; $5882: $04
    dec hl                                        ; $5883: $2b
    dec d                                         ; $5884: $15
    inc b                                         ; $5885: $04
    inc l                                         ; $5886: $2c
    dec d                                         ; $5887: $15
    inc b                                         ; $5888: $04
    dec l                                         ; $5889: $2d
    dec d                                         ; $588a: $15
    inc b                                         ; $588b: $04
    ld a, $15                                     ; $588c: $3e $15
    inc b                                         ; $588e: $04
    ld c, d                                       ; $588f: $4a
    dec d                                         ; $5890: $15
    inc b                                         ; $5891: $04
    ld d, [hl]                                    ; $5892: $56
    dec d                                         ; $5893: $15
    inc b                                         ; $5894: $04
    ld l, d                                       ; $5895: $6a
    dec d                                         ; $5896: $15
    inc b                                         ; $5897: $04
    ld a, h                                       ; $5898: $7c
    dec d                                         ; $5899: $15
    inc b                                         ; $589a: $04
    adc [hl]                                      ; $589b: $8e
    dec d                                         ; $589c: $15
    inc b                                         ; $589d: $04
    sbc d                                         ; $589e: $9a
    dec d                                         ; $589f: $15
    inc b                                         ; $58a0: $04
    and [hl]                                      ; $58a1: $a6
    dec d                                         ; $58a2: $15
    inc b                                         ; $58a3: $04
    or [hl]                                       ; $58a4: $b6
    dec d                                         ; $58a5: $15
    inc b                                         ; $58a6: $04
    call nz, Call_000_0415                        ; $58a7: $c4 $15 $04
    reti                                          ; $58aa: $d9


    dec d                                         ; $58ab: $15
    inc b                                         ; $58ac: $04
    jp hl                                         ; $58ad: $e9


    dec d                                         ; $58ae: $15
    inc b                                         ; $58af: $04
    or $15                                        ; $58b0: $f6 $15
    inc b                                         ; $58b2: $04
    rst $30                                       ; $58b3: $f7
    dec d                                         ; $58b4: $15
    inc b                                         ; $58b5: $04
    dec bc                                        ; $58b6: $0b
    ld d, $04                                     ; $58b7: $16 $04
    ld a, [de]                                    ; $58b9: $1a
    ld d, $04                                     ; $58ba: $16 $04
    daa                                           ; $58bc: $27
    ld d, $04                                     ; $58bd: $16 $04
    cpl                                           ; $58bf: $2f
    ld d, $04                                     ; $58c0: $16 $04
    inc a                                         ; $58c2: $3c
    ld d, $04                                     ; $58c3: $16 $04
    ld c, c                                       ; $58c5: $49
    ld d, $04                                     ; $58c6: $16 $04
    ld d, [hl]                                    ; $58c8: $56
    ld d, $04                                     ; $58c9: $16 $04
    ld l, c                                       ; $58cb: $69
    ld d, $04                                     ; $58cc: $16 $04
    ld [hl], l                                    ; $58ce: $75
    ld d, $04                                     ; $58cf: $16 $04
    ld a, h                                       ; $58d1: $7c
    ld d, $04                                     ; $58d2: $16 $04
    adc c                                         ; $58d4: $89
    ld d, $04                                     ; $58d5: $16 $04
    sub b                                         ; $58d7: $90
    ld d, $04                                     ; $58d8: $16 $04
    sbc c                                         ; $58da: $99
    ld d, $04                                     ; $58db: $16 $04
    and c                                         ; $58dd: $a1
    ld d, $04                                     ; $58de: $16 $04
    xor c                                         ; $58e0: $a9
    ld d, $04                                     ; $58e1: $16 $04
    or c                                          ; $58e3: $b1
    ld d, $04                                     ; $58e4: $16 $04
    cp d                                          ; $58e6: $ba
    ld d, $04                                     ; $58e7: $16 $04
    add $16                                       ; $58e9: $c6 $16
    inc b                                         ; $58eb: $04
    pop de                                        ; $58ec: $d1
    ld d, $04                                     ; $58ed: $16 $04
    jp c, Jump_000_0416                           ; $58ef: $da $16 $04

    rst $20                                       ; $58f2: $e7
    ld d, $04                                     ; $58f3: $16 $04
    db $f4                                        ; $58f5: $f4
    ld d, $04                                     ; $58f6: $16 $04
    ld bc, $0417                                  ; $58f8: $01 $17 $04
    ld c, $17                                     ; $58fb: $0e $17
    inc b                                         ; $58fd: $04
    ld e, $17                                     ; $58fe: $1e $17
    inc b                                         ; $5900: $04
    dec hl                                        ; $5901: $2b
    rla                                           ; $5902: $17
    inc b                                         ; $5903: $04
    inc [hl]                                      ; $5904: $34
    rla                                           ; $5905: $17
    inc b                                         ; $5906: $04
    ld b, b                                       ; $5907: $40
    rla                                           ; $5908: $17
    inc b                                         ; $5909: $04
    ld c, c                                       ; $590a: $49
    rla                                           ; $590b: $17
    inc b                                         ; $590c: $04
    ld d, c                                       ; $590d: $51
    rla                                           ; $590e: $17
    inc b                                         ; $590f: $04
    ld e, c                                       ; $5910: $59
    rla                                           ; $5911: $17
    inc b                                         ; $5912: $04
    ld h, h                                       ; $5913: $64
    rla                                           ; $5914: $17
    inc b                                         ; $5915: $04
    ld l, [hl]                                    ; $5916: $6e
    rla                                           ; $5917: $17
    inc b                                         ; $5918: $04
    ld a, c                                       ; $5919: $79
    rla                                           ; $591a: $17
    inc b                                         ; $591b: $04
    add h                                         ; $591c: $84
    rla                                           ; $591d: $17
    inc b                                         ; $591e: $04
    adc a                                         ; $591f: $8f
    rla                                           ; $5920: $17
    inc b                                         ; $5921: $04
    sbc d                                         ; $5922: $9a
    rla                                           ; $5923: $17
    inc b                                         ; $5924: $04
    and l                                         ; $5925: $a5
    rla                                           ; $5926: $17
    inc b                                         ; $5927: $04
    or b                                          ; $5928: $b0
    rla                                           ; $5929: $17
    inc b                                         ; $592a: $04
    cp h                                          ; $592b: $bc
    rla                                           ; $592c: $17
    inc b                                         ; $592d: $04
    ret z                                         ; $592e: $c8

    rla                                           ; $592f: $17
    inc b                                         ; $5930: $04
    call nc, Call_000_0417                        ; $5931: $d4 $17 $04
    ldh [rNR22], a                                ; $5934: $e0 $17
    inc b                                         ; $5936: $04
    db $ec                                        ; $5937: $ec
    rla                                           ; $5938: $17
    inc b                                         ; $5939: $04
    ld hl, sp+$17                                 ; $593a: $f8 $17
    inc b                                         ; $593c: $04
    inc b                                         ; $593d: $04
    jr @+$06                                      ; $593e: $18 $04

    dec c                                         ; $5940: $0d
    jr @+$06                                      ; $5941: $18 $04

    ld d, $18                                     ; $5943: $16 $18
    inc b                                         ; $5945: $04
    ld hl, $0418                                  ; $5946: $21 $18 $04
    jr z, @+$1a                                   ; $5949: $28 $18

    inc b                                         ; $594b: $04
    ld [hl-], a                                   ; $594c: $32
    jr jr_059_5953                                ; $594d: $18 $04

    ld b, b                                       ; $594f: $40
    jr jr_059_5956                                ; $5950: $18 $04

    ld d, b                                       ; $5952: $50

jr_059_5953:
    jr jr_059_5959                                ; $5953: $18 $04

    ld e, l                                       ; $5955: $5d

jr_059_5956:
    jr jr_059_595c                                ; $5956: $18 $04

    ld l, d                                       ; $5958: $6a

jr_059_5959:
    jr jr_059_595f                                ; $5959: $18 $04

    ld [hl], a                                    ; $595b: $77

jr_059_595c:
    jr jr_059_5962                                ; $595c: $18 $04

    add h                                         ; $595e: $84

jr_059_595f:
    jr jr_059_5965                                ; $595f: $18 $04

    sub c                                         ; $5961: $91

jr_059_5962:
    jr jr_059_5968                                ; $5962: $18 $04

    sbc [hl]                                      ; $5964: $9e

jr_059_5965:
    jr jr_059_596b                                ; $5965: $18 $04

    xor e                                         ; $5967: $ab

jr_059_5968:
    jr @+$06                                      ; $5968: $18 $04

    or [hl]                                       ; $596a: $b6

jr_059_596b:
    jr jr_059_5971                                ; $596b: $18 $04

    add $18                                       ; $596d: $c6 $18
    inc b                                         ; $596f: $04
    rst $08                                       ; $5970: $cf

jr_059_5971:
    jr jr_059_5977                                ; $5971: $18 $04

    rst $10                                       ; $5973: $d7
    jr @+$06                                      ; $5974: $18 $04

    rst $18                                       ; $5976: $df

jr_059_5977:
    jr @+$06                                      ; $5977: $18 $04

    xor $18                                       ; $5979: $ee $18
    inc b                                         ; $597b: $04
    ld a, [$0418]                                 ; $597c: $fa $18 $04
    rlca                                          ; $597f: $07
    add hl, de                                    ; $5980: $19
    inc b                                         ; $5981: $04
    ld [de], a                                    ; $5982: $12
    add hl, de                                    ; $5983: $19
    inc b                                         ; $5984: $04
    inc e                                         ; $5985: $1c
    add hl, de                                    ; $5986: $19
    inc b                                         ; $5987: $04
    add hl, hl                                    ; $5988: $29
    add hl, de                                    ; $5989: $19
    inc b                                         ; $598a: $04
    inc sp                                        ; $598b: $33
    add hl, de                                    ; $598c: $19
    inc b                                         ; $598d: $04
    dec sp                                        ; $598e: $3b
    add hl, de                                    ; $598f: $19
    inc b                                         ; $5990: $04
    ld b, a                                       ; $5991: $47
    add hl, de                                    ; $5992: $19
    inc b                                         ; $5993: $04
    ld d, b                                       ; $5994: $50
    add hl, de                                    ; $5995: $19
    inc b                                         ; $5996: $04
    ld e, e                                       ; $5997: $5b
    add hl, de                                    ; $5998: $19
    inc b                                         ; $5999: $04
    ld h, [hl]                                    ; $599a: $66
    add hl, de                                    ; $599b: $19
    inc b                                         ; $599c: $04
    ld l, [hl]                                    ; $599d: $6e
    add hl, de                                    ; $599e: $19
    inc b                                         ; $599f: $04
    ld a, e                                       ; $59a0: $7b
    add hl, de                                    ; $59a1: $19
    inc b                                         ; $59a2: $04
    adc h                                         ; $59a3: $8c
    add hl, de                                    ; $59a4: $19
    inc b                                         ; $59a5: $04
    sbc d                                         ; $59a6: $9a
    add hl, de                                    ; $59a7: $19
    inc b                                         ; $59a8: $04
    and e                                         ; $59a9: $a3
    add hl, de                                    ; $59aa: $19
    inc b                                         ; $59ab: $04
    xor l                                         ; $59ac: $ad
    add hl, de                                    ; $59ad: $19
    inc b                                         ; $59ae: $04
    cp e                                          ; $59af: $bb
    add hl, de                                    ; $59b0: $19
    inc b                                         ; $59b1: $04
    call z, Call_000_0419                         ; $59b2: $cc $19 $04
    sub $19                                       ; $59b5: $d6 $19
    inc b                                         ; $59b7: $04
    ldh [rNR24], a                                ; $59b8: $e0 $19
    inc b                                         ; $59ba: $04
    jp hl                                         ; $59bb: $e9


    add hl, de                                    ; $59bc: $19
    inc b                                         ; $59bd: $04
    ld a, [c]                                     ; $59be: $f2
    add hl, de                                    ; $59bf: $19
    inc b                                         ; $59c0: $04
    cp $19                                        ; $59c1: $fe $19
    inc b                                         ; $59c3: $04
    inc c                                         ; $59c4: $0c
    ld a, [de]                                    ; $59c5: $1a
    inc b                                         ; $59c6: $04
    ld a, [de]                                    ; $59c7: $1a
    ld a, [de]                                    ; $59c8: $1a
    inc b                                         ; $59c9: $04
    jr z, jr_059_59e6                             ; $59ca: $28 $1a

    inc b                                         ; $59cc: $04
    jr c, jr_059_59e9                             ; $59cd: $38 $1a

    inc b                                         ; $59cf: $04
    ld b, b                                       ; $59d0: $40
    ld a, [de]                                    ; $59d1: $1a
    inc b                                         ; $59d2: $04
    ld c, h                                       ; $59d3: $4c
    ld a, [de]                                    ; $59d4: $1a
    inc b                                         ; $59d5: $04
    ld e, b                                       ; $59d6: $58
    ld a, [de]                                    ; $59d7: $1a
    inc b                                         ; $59d8: $04
    ld h, e                                       ; $59d9: $63
    ld a, [de]                                    ; $59da: $1a
    inc b                                         ; $59db: $04
    ld l, e                                       ; $59dc: $6b
    ld a, [de]                                    ; $59dd: $1a
    inc b                                         ; $59de: $04
    ld a, b                                       ; $59df: $78
    ld a, [de]                                    ; $59e0: $1a
    inc b                                         ; $59e1: $04
    add h                                         ; $59e2: $84
    ld a, [de]                                    ; $59e3: $1a
    inc b                                         ; $59e4: $04
    adc h                                         ; $59e5: $8c

jr_059_59e6:
    ld a, [de]                                    ; $59e6: $1a
    inc b                                         ; $59e7: $04
    sbc e                                         ; $59e8: $9b

jr_059_59e9:
    ld a, [de]                                    ; $59e9: $1a
    inc b                                         ; $59ea: $04
    and [hl]                                      ; $59eb: $a6
    ld a, [de]                                    ; $59ec: $1a
    inc b                                         ; $59ed: $04
    xor a                                         ; $59ee: $af
    ld a, [de]                                    ; $59ef: $1a
    inc b                                         ; $59f0: $04
    ret nz                                        ; $59f1: $c0

    ld a, [de]                                    ; $59f2: $1a
    inc b                                         ; $59f3: $04
    rst $08                                       ; $59f4: $cf
    ld a, [de]                                    ; $59f5: $1a
    inc b                                         ; $59f6: $04
    db $dd                                        ; $59f7: $dd
    ld a, [de]                                    ; $59f8: $1a
    inc b                                         ; $59f9: $04
    ld [$041a], a                                 ; $59fa: $ea $1a $04
    nop                                           ; $59fd: $00
    dec de                                        ; $59fe: $1b
    inc b                                         ; $59ff: $04
    dec bc                                        ; $5a00: $0b
    dec de                                        ; $5a01: $1b
    inc b                                         ; $5a02: $04
    ld [hl+], a                                   ; $5a03: $22
    dec de                                        ; $5a04: $1b
    inc b                                         ; $5a05: $04
    ld [hl], $1b                                  ; $5a06: $36 $1b
    inc b                                         ; $5a08: $04
    ld c, a                                       ; $5a09: $4f
    dec de                                        ; $5a0a: $1b
    inc b                                         ; $5a0b: $04
    ld h, h                                       ; $5a0c: $64
    dec de                                        ; $5a0d: $1b
    inc b                                         ; $5a0e: $04
    ld a, c                                       ; $5a0f: $79
    dec de                                        ; $5a10: $1b
    inc b                                         ; $5a11: $04
    adc [hl]                                      ; $5a12: $8e
    dec de                                        ; $5a13: $1b
    inc b                                         ; $5a14: $04
    sbc h                                         ; $5a15: $9c
    dec de                                        ; $5a16: $1b
    inc b                                         ; $5a17: $04
    xor e                                         ; $5a18: $ab
    dec de                                        ; $5a19: $1b
    inc b                                         ; $5a1a: $04
    or h                                          ; $5a1b: $b4
    dec de                                        ; $5a1c: $1b
    inc b                                         ; $5a1d: $04
    cp l                                          ; $5a1e: $bd
    dec de                                        ; $5a1f: $1b
    inc b                                         ; $5a20: $04
    add $1b                                       ; $5a21: $c6 $1b
    inc b                                         ; $5a23: $04
    ret c                                         ; $5a24: $d8

    dec de                                        ; $5a25: $1b
    inc b                                         ; $5a26: $04
    db $ec                                        ; $5a27: $ec
    dec de                                        ; $5a28: $1b
    inc b                                         ; $5a29: $04
    db $fd                                        ; $5a2a: $fd
    dec de                                        ; $5a2b: $1b
    inc b                                         ; $5a2c: $04
    inc c                                         ; $5a2d: $0c
    inc e                                         ; $5a2e: $1c
    inc b                                         ; $5a2f: $04
    inc e                                         ; $5a30: $1c
    inc e                                         ; $5a31: $1c
    inc b                                         ; $5a32: $04
    ld a, [hl+]                                   ; $5a33: $2a
    inc e                                         ; $5a34: $1c
    inc b                                         ; $5a35: $04
    ld [hl], $1c                                  ; $5a36: $36 $1c
    inc b                                         ; $5a38: $04
    ld b, d                                       ; $5a39: $42
    inc e                                         ; $5a3a: $1c
    inc b                                         ; $5a3b: $04
    ld d, d                                       ; $5a3c: $52
    inc e                                         ; $5a3d: $1c
    inc b                                         ; $5a3e: $04
    ld h, [hl]                                    ; $5a3f: $66
    inc e                                         ; $5a40: $1c
    inc b                                         ; $5a41: $04
    ld a, c                                       ; $5a42: $79
    inc e                                         ; $5a43: $1c
    inc b                                         ; $5a44: $04
    adc h                                         ; $5a45: $8c
    inc e                                         ; $5a46: $1c
    inc b                                         ; $5a47: $04
    sbc a                                         ; $5a48: $9f
    inc e                                         ; $5a49: $1c
    inc b                                         ; $5a4a: $04
    or d                                          ; $5a4b: $b2
    inc e                                         ; $5a4c: $1c
    inc b                                         ; $5a4d: $04
    push bc                                       ; $5a4e: $c5
    inc e                                         ; $5a4f: $1c
    inc b                                         ; $5a50: $04
    ret c                                         ; $5a51: $d8

    inc e                                         ; $5a52: $1c
    inc b                                         ; $5a53: $04
    pop hl                                        ; $5a54: $e1
    inc e                                         ; $5a55: $1c
    inc b                                         ; $5a56: $04
    ld [$041c], a                                 ; $5a57: $ea $1c $04
    di                                            ; $5a5a: $f3
    inc e                                         ; $5a5b: $1c
    inc b                                         ; $5a5c: $04
    db $fc                                        ; $5a5d: $fc
    inc e                                         ; $5a5e: $1c
    inc b                                         ; $5a5f: $04
    dec b                                         ; $5a60: $05
    dec e                                         ; $5a61: $1d
    inc b                                         ; $5a62: $04
    ld c, $1d                                     ; $5a63: $0e $1d
    inc b                                         ; $5a65: $04
    ld h, $1d                                     ; $5a66: $26 $1d
    inc b                                         ; $5a68: $04
    jr c, jr_059_5a88                             ; $5a69: $38 $1d

    inc b                                         ; $5a6b: $04
    ld c, d                                       ; $5a6c: $4a
    dec e                                         ; $5a6d: $1d
    inc b                                         ; $5a6e: $04
    ld e, e                                       ; $5a6f: $5b
    dec e                                         ; $5a70: $1d
    inc b                                         ; $5a71: $04
    ld l, b                                       ; $5a72: $68
    dec e                                         ; $5a73: $1d
    inc b                                         ; $5a74: $04
    halt                                          ; $5a75: $76
    dec e                                         ; $5a76: $1d
    inc b                                         ; $5a77: $04
    add [hl]                                      ; $5a78: $86
    dec e                                         ; $5a79: $1d
    inc b                                         ; $5a7a: $04
    sbc c                                         ; $5a7b: $99
    dec e                                         ; $5a7c: $1d
    inc b                                         ; $5a7d: $04
    xor e                                         ; $5a7e: $ab
    dec e                                         ; $5a7f: $1d
    inc b                                         ; $5a80: $04
    cp l                                          ; $5a81: $bd
    dec e                                         ; $5a82: $1d
    inc b                                         ; $5a83: $04
    rst $08                                       ; $5a84: $cf
    dec e                                         ; $5a85: $1d
    inc b                                         ; $5a86: $04
    pop hl                                        ; $5a87: $e1

jr_059_5a88:
    dec e                                         ; $5a88: $1d
    inc b                                         ; $5a89: $04
    di                                            ; $5a8a: $f3
    dec e                                         ; $5a8b: $1d
    inc b                                         ; $5a8c: $04
    dec b                                         ; $5a8d: $05
    ld e, $04                                     ; $5a8e: $1e $04
    rla                                           ; $5a90: $17
    ld e, $04                                     ; $5a91: $1e $04
    ld h, $1e                                     ; $5a93: $26 $1e
    inc b                                         ; $5a95: $04
    ld a, [hl-]                                   ; $5a96: $3a
    ld e, $04                                     ; $5a97: $1e $04
    ld b, a                                       ; $5a99: $47
    ld e, $04                                     ; $5a9a: $1e $04
    ld d, d                                       ; $5a9c: $52
    ld e, $04                                     ; $5a9d: $1e $04
    ld e, l                                       ; $5a9f: $5d
    ld e, $04                                     ; $5aa0: $1e $04
    ld a, b                                       ; $5aa2: $78
    ld e, $04                                     ; $5aa3: $1e $04
    adc b                                         ; $5aa5: $88
    ld e, $04                                     ; $5aa6: $1e $04
    sbc [hl]                                      ; $5aa8: $9e
    ld e, $04                                     ; $5aa9: $1e $04
    xor l                                         ; $5aab: $ad
    ld e, $04                                     ; $5aac: $1e $04
    call nz, Call_000_041e                        ; $5aae: $c4 $1e $04
    db $dd                                        ; $5ab1: $dd
    ld e, $04                                     ; $5ab2: $1e $04
    db $f4                                        ; $5ab4: $f4
    ld e, $04                                     ; $5ab5: $1e $04
    ld [bc], a                                    ; $5ab7: $02
    rra                                           ; $5ab8: $1f
    inc b                                         ; $5ab9: $04
    inc d                                         ; $5aba: $14
    rra                                           ; $5abb: $1f
    inc b                                         ; $5abc: $04
    ld [hl+], a                                   ; $5abd: $22
    rra                                           ; $5abe: $1f
    inc b                                         ; $5abf: $04
    jr nc, jr_059_5ae1                            ; $5ac0: $30 $1f

    inc b                                         ; $5ac2: $04
    ld c, e                                       ; $5ac3: $4b
    rra                                           ; $5ac4: $1f
    inc b                                         ; $5ac5: $04
    ld e, b                                       ; $5ac6: $58
    rra                                           ; $5ac7: $1f
    inc b                                         ; $5ac8: $04
    ld l, d                                       ; $5ac9: $6a

Jump_059_5aca:
    rra                                           ; $5aca: $1f
    inc b                                         ; $5acb: $04
    add c                                         ; $5acc: $81
    rra                                           ; $5acd: $1f
    inc b                                         ; $5ace: $04
    sub [hl]                                      ; $5acf: $96
    rra                                           ; $5ad0: $1f
    inc b                                         ; $5ad1: $04
    and h                                         ; $5ad2: $a4
    rra                                           ; $5ad3: $1f
    inc b                                         ; $5ad4: $04
    or h                                          ; $5ad5: $b4
    rra                                           ; $5ad6: $1f
    inc b                                         ; $5ad7: $04
    pop bc                                        ; $5ad8: $c1
    rra                                           ; $5ad9: $1f
    inc b                                         ; $5ada: $04
    ret nc                                        ; $5adb: $d0

    rra                                           ; $5adc: $1f
    inc b                                         ; $5add: $04
    rst $18                                       ; $5ade: $df
    rra                                           ; $5adf: $1f
    inc b                                         ; $5ae0: $04

jr_059_5ae1:
    add sp, $1f                                   ; $5ae1: $e8 $1f
    inc b                                         ; $5ae3: $04
    ei                                            ; $5ae4: $fb
    rra                                           ; $5ae5: $1f
    inc b                                         ; $5ae6: $04
    add hl, bc                                    ; $5ae7: $09
    jr nz, jr_059_5aee                            ; $5ae8: $20 $04

    ld a, [de]                                    ; $5aea: $1a
    jr nz, @+$06                                  ; $5aeb: $20 $04

    add hl, hl                                    ; $5aed: $29

jr_059_5aee:
    jr nz, jr_059_5af4                            ; $5aee: $20 $04

    jr c, jr_059_5b12                             ; $5af0: $38 $20

    inc b                                         ; $5af2: $04
    ld b, a                                       ; $5af3: $47

jr_059_5af4:
    jr nz, jr_059_5afa                            ; $5af4: $20 $04

    ld e, l                                       ; $5af6: $5d
    jr nz, jr_059_5afd                            ; $5af7: $20 $04

    ld [hl], a                                    ; $5af9: $77

jr_059_5afa:
    jr nz, jr_059_5b00                            ; $5afa: $20 $04

    add h                                         ; $5afc: $84

jr_059_5afd:
    jr nz, jr_059_5b03                            ; $5afd: $20 $04

    sub [hl]                                      ; $5aff: $96

jr_059_5b00:
    jr nz, jr_059_5b06                            ; $5b00: $20 $04

    xor d                                         ; $5b02: $aa

jr_059_5b03:
    jr nz, jr_059_5b09                            ; $5b03: $20 $04

    or a                                          ; $5b05: $b7

jr_059_5b06:
    jr nz, jr_059_5b0c                            ; $5b06: $20 $04

    ret z                                         ; $5b08: $c8

jr_059_5b09:
    jr nz, jr_059_5b0f                            ; $5b09: $20 $04

    ret c                                         ; $5b0b: $d8

jr_059_5b0c:
    jr nz, jr_059_5b12                            ; $5b0c: $20 $04

    push hl                                       ; $5b0e: $e5

jr_059_5b0f:
    jr nz, jr_059_5b15                            ; $5b0f: $20 $04

    ld a, [c]                                     ; $5b11: $f2

jr_059_5b12:
    jr nz, jr_059_5b18                            ; $5b12: $20 $04

    add hl, bc                                    ; $5b14: $09

jr_059_5b15:
    ld hl, $1b04                                  ; $5b15: $21 $04 $1b

jr_059_5b18:
    ld hl, $3104                                  ; $5b18: $21 $04 $31
    ld hl, $3e04                                  ; $5b1b: $21 $04 $3e
    ld hl, $0304                                  ; $5b1e: $21 $04 $03
    ld [hl+], a                                   ; $5b21: $22
    inc b                                         ; $5b22: $04
    dec hl                                        ; $5b23: $2b
    ld [hl+], a                                   ; $5b24: $22
    inc b                                         ; $5b25: $04
    add hl, sp                                    ; $5b26: $39
    ld [hl+], a                                   ; $5b27: $22
    inc b                                         ; $5b28: $04
    ld b, c                                       ; $5b29: $41
    ld [hl+], a                                   ; $5b2a: $22
    inc b                                         ; $5b2b: $04
    ld d, c                                       ; $5b2c: $51
    ld [hl+], a                                   ; $5b2d: $22
    inc b                                         ; $5b2e: $04
    ld e, a                                       ; $5b2f: $5f
    ld [hl+], a                                   ; $5b30: $22
    inc b                                         ; $5b31: $04
    ld [hl], d                                    ; $5b32: $72
    ld [hl+], a                                   ; $5b33: $22
    inc b                                         ; $5b34: $04
    ld a, [hl]                                    ; $5b35: $7e
    ld [hl+], a                                   ; $5b36: $22
    inc b                                         ; $5b37: $04
    adc h                                         ; $5b38: $8c
    ld [hl+], a                                   ; $5b39: $22
    inc b                                         ; $5b3a: $04
    sub d                                         ; $5b3b: $92
    ld [hl+], a                                   ; $5b3c: $22
    inc b                                         ; $5b3d: $04
    sbc c                                         ; $5b3e: $99
    ld [hl+], a                                   ; $5b3f: $22
    inc b                                         ; $5b40: $04
    and b                                         ; $5b41: $a0
    ld [hl+], a                                   ; $5b42: $22
    inc b                                         ; $5b43: $04
    and a                                         ; $5b44: $a7
    ld [hl+], a                                   ; $5b45: $22
    inc b                                         ; $5b46: $04
    xor [hl]                                      ; $5b47: $ae
    ld [hl+], a                                   ; $5b48: $22
    inc b                                         ; $5b49: $04
    or d                                          ; $5b4a: $b2
    ld [hl+], a                                   ; $5b4b: $22
    inc b                                         ; $5b4c: $04
    add $22                                       ; $5b4d: $c6 $22
    inc b                                         ; $5b4f: $04
    call nc, Call_000_0422                        ; $5b50: $d4 $22 $04
    ld [c], a                                     ; $5b53: $e2
    ld [hl+], a                                   ; $5b54: $22
    inc b                                         ; $5b55: $04
    ldh a, [rNR43]                                ; $5b56: $f0 $22
    inc b                                         ; $5b58: $04
    db $fd                                        ; $5b59: $fd
    ld [hl+], a                                   ; $5b5a: $22
    inc b                                         ; $5b5b: $04
    ld c, $23                                     ; $5b5c: $0e $23
    inc b                                         ; $5b5e: $04
    dec d                                         ; $5b5f: $15
    inc hl                                        ; $5b60: $23
    inc b                                         ; $5b61: $04
    inc e                                         ; $5b62: $1c
    inc hl                                        ; $5b63: $23
    inc b                                         ; $5b64: $04
    jr z, jr_059_5b8a                             ; $5b65: $28 $23

    inc b                                         ; $5b67: $04
    jr nc, jr_059_5b8d                            ; $5b68: $30 $23

    inc b                                         ; $5b6a: $04
    scf                                           ; $5b6b: $37
    inc hl                                        ; $5b6c: $23
    inc b                                         ; $5b6d: $04
    dec a                                         ; $5b6e: $3d
    inc hl                                        ; $5b6f: $23
    inc b                                         ; $5b70: $04
    ld c, c                                       ; $5b71: $49
    inc hl                                        ; $5b72: $23
    inc b                                         ; $5b73: $04
    ld d, l                                       ; $5b74: $55
    inc hl                                        ; $5b75: $23
    inc b                                         ; $5b76: $04
    ld h, b                                       ; $5b77: $60
    inc hl                                        ; $5b78: $23
    inc b                                         ; $5b79: $04
    ld l, l                                       ; $5b7a: $6d
    inc hl                                        ; $5b7b: $23
    inc b                                         ; $5b7c: $04
    ld a, c                                       ; $5b7d: $79
    inc hl                                        ; $5b7e: $23
    inc b                                         ; $5b7f: $04
    add e                                         ; $5b80: $83
    inc hl                                        ; $5b81: $23
    inc b                                         ; $5b82: $04
    adc e                                         ; $5b83: $8b
    inc hl                                        ; $5b84: $23
    inc b                                         ; $5b85: $04
    sbc e                                         ; $5b86: $9b
    inc hl                                        ; $5b87: $23
    inc b                                         ; $5b88: $04
    and h                                         ; $5b89: $a4

jr_059_5b8a:
    inc hl                                        ; $5b8a: $23
    inc b                                         ; $5b8b: $04
    xor d                                         ; $5b8c: $aa

jr_059_5b8d:
    inc hl                                        ; $5b8d: $23
    inc b                                         ; $5b8e: $04
    or c                                          ; $5b8f: $b1
    inc hl                                        ; $5b90: $23
    inc b                                         ; $5b91: $04
    cp e                                          ; $5b92: $bb
    inc hl                                        ; $5b93: $23
    inc b                                         ; $5b94: $04
    adc $23                                       ; $5b95: $ce $23
    inc b                                         ; $5b97: $04
    reti                                          ; $5b98: $d9


    inc hl                                        ; $5b99: $23

Jump_059_5b9a:
    inc b                                         ; $5b9a: $04
    ld [$0423], a                                 ; $5b9b: $ea $23 $04
    di                                            ; $5b9e: $f3
    inc hl                                        ; $5b9f: $23
    inc b                                         ; $5ba0: $04
    nop                                           ; $5ba1: $00
    inc h                                         ; $5ba2: $24
    inc b                                         ; $5ba3: $04
    inc b                                         ; $5ba4: $04
    inc h                                         ; $5ba5: $24
    inc b                                         ; $5ba6: $04
    ld de, $0424                                  ; $5ba7: $11 $24 $04
    ld a, [de]                                    ; $5baa: $1a
    inc h                                         ; $5bab: $24
    inc b                                         ; $5bac: $04
    rra                                           ; $5bad: $1f
    inc h                                         ; $5bae: $24
    inc b                                         ; $5baf: $04
    inc h                                         ; $5bb0: $24
    inc h                                         ; $5bb1: $24
    inc b                                         ; $5bb2: $04
    ld sp, $0424                                  ; $5bb3: $31 $24 $04
    ld e, e                                       ; $5bb6: $5b
    inc h                                         ; $5bb7: $24
    inc b                                         ; $5bb8: $04
    ld h, a                                       ; $5bb9: $67
    inc h                                         ; $5bba: $24
    inc b                                         ; $5bbb: $04
    ld [hl], e                                    ; $5bbc: $73
    inc h                                         ; $5bbd: $24
    inc b                                         ; $5bbe: $04
    sub [hl]                                      ; $5bbf: $96
    inc h                                         ; $5bc0: $24
    inc b                                         ; $5bc1: $04
    or a                                          ; $5bc2: $b7
    inc h                                         ; $5bc3: $24
    inc b                                         ; $5bc4: $04
    push bc                                       ; $5bc5: $c5
    inc h                                         ; $5bc6: $24
    inc b                                         ; $5bc7: $04
    call nc, $0424                                ; $5bc8: $d4 $24 $04
    db $e3                                        ; $5bcb: $e3
    inc h                                         ; $5bcc: $24
    inc b                                         ; $5bcd: $04
    ld a, [c]                                     ; $5bce: $f2
    inc h                                         ; $5bcf: $24
    inc b                                         ; $5bd0: $04
    dec b                                         ; $5bd1: $05
    dec h                                         ; $5bd2: $25
    inc b                                         ; $5bd3: $04
    ld h, $25                                     ; $5bd4: $26 $25
    inc b                                         ; $5bd6: $04
    dec sp                                        ; $5bd7: $3b
    dec h                                         ; $5bd8: $25
    inc b                                         ; $5bd9: $04
    ld c, [hl]                                    ; $5bda: $4e
    dec h                                         ; $5bdb: $25
    inc b                                         ; $5bdc: $04
    ld h, c                                       ; $5bdd: $61
    dec h                                         ; $5bde: $25
    inc b                                         ; $5bdf: $04
    ld [hl], c                                    ; $5be0: $71
    dec h                                         ; $5be1: $25
    inc b                                         ; $5be2: $04
    ld a, [hl]                                    ; $5be3: $7e
    dec h                                         ; $5be4: $25
    inc b                                         ; $5be5: $04
    sub a                                         ; $5be6: $97
    dec h                                         ; $5be7: $25
    inc b                                         ; $5be8: $04
    and a                                         ; $5be9: $a7
    dec h                                         ; $5bea: $25
    inc b                                         ; $5beb: $04
    cp c                                          ; $5bec: $b9
    dec h                                         ; $5bed: $25
    inc b                                         ; $5bee: $04
    push bc                                       ; $5bef: $c5
    dec h                                         ; $5bf0: $25
    inc b                                         ; $5bf1: $04
    ret nc                                        ; $5bf2: $d0

    dec h                                         ; $5bf3: $25
    inc b                                         ; $5bf4: $04
    call c, $0425                                 ; $5bf5: $dc $25 $04
    add sp, $25                                   ; $5bf8: $e8 $25
    inc b                                         ; $5bfa: $04
    di                                            ; $5bfb: $f3

Jump_059_5bfc:
    dec h                                         ; $5bfc: $25
    inc b                                         ; $5bfd: $04
    db $fc                                        ; $5bfe: $fc
    dec h                                         ; $5bff: $25
    inc b                                         ; $5c00: $04
    inc de                                        ; $5c01: $13
    ld h, $04                                     ; $5c02: $26 $04
    daa                                           ; $5c04: $27
    ld h, $04                                     ; $5c05: $26 $04
    ld c, l                                       ; $5c07: $4d
    ld h, $04                                     ; $5c08: $26 $04
    ld [hl], e                                    ; $5c0a: $73
    ld h, $04                                     ; $5c0b: $26 $04
    sub a                                         ; $5c0d: $97
    ld h, $04                                     ; $5c0e: $26 $04
    xor c                                         ; $5c10: $a9
    ld h, $04                                     ; $5c11: $26 $04
    cp d                                          ; $5c13: $ba
    ld h, $04                                     ; $5c14: $26 $04
    jp Jump_000_0426                              ; $5c16: $c3 $26 $04


    jp z, Jump_000_0426                           ; $5c19: $ca $26 $04

    ret c                                         ; $5c1c: $d8

    ld h, $04                                     ; $5c1d: $26 $04
    rst $18                                       ; $5c1f: $df
    ld h, $04                                     ; $5c20: $26 $04
    db $e4                                        ; $5c22: $e4
    ld h, $04                                     ; $5c23: $26 $04
    ldh a, [rNR52]                                ; $5c25: $f0 $26
    inc b                                         ; $5c27: $04
    add hl, de                                    ; $5c28: $19
    daa                                           ; $5c29: $27
    inc b                                         ; $5c2a: $04
    jr c, jr_059_5c54                             ; $5c2b: $38 $27

    inc b                                         ; $5c2d: $04
    ld h, c                                       ; $5c2e: $61
    daa                                           ; $5c2f: $27
    inc b                                         ; $5c30: $04
    add [hl]                                      ; $5c31: $86
    daa                                           ; $5c32: $27
    inc b                                         ; $5c33: $04
    xor e                                         ; $5c34: $ab
    daa                                           ; $5c35: $27
    inc b                                         ; $5c36: $04
    sbc $27                                       ; $5c37: $de $27
    inc b                                         ; $5c39: $04
    ld [$0428], sp                                ; $5c3a: $08 $28 $04
    add hl, sp                                    ; $5c3d: $39
    jr z, jr_059_5c44                             ; $5c3e: $28 $04

    ld h, d                                       ; $5c40: $62
    jr z, jr_059_5c47                             ; $5c41: $28 $04

    and [hl]                                      ; $5c43: $a6

jr_059_5c44:
    jr z, jr_059_5c4a                             ; $5c44: $28 $04

    db $ed                                        ; $5c46: $ed

jr_059_5c47:
    jr z, jr_059_5c4d                             ; $5c47: $28 $04

    rla                                           ; $5c49: $17

jr_059_5c4a:
    add hl, hl                                    ; $5c4a: $29
    inc b                                         ; $5c4b: $04
    ld b, l                                       ; $5c4c: $45

jr_059_5c4d:
    add hl, hl                                    ; $5c4d: $29
    inc b                                         ; $5c4e: $04
    inc de                                        ; $5c4f: $13
    ld a, [hl+]                                   ; $5c50: $2a
    inc b                                         ; $5c51: $04
    dec e                                         ; $5c52: $1d
    ld a, [hl+]                                   ; $5c53: $2a

jr_059_5c54:
    inc b                                         ; $5c54: $04
    ld h, $2a                                     ; $5c55: $26 $2a
    inc b                                         ; $5c57: $04
    ld l, $2a                                     ; $5c58: $2e $2a
    inc b                                         ; $5c5a: $04
    scf                                           ; $5c5b: $37
    ld a, [hl+]                                   ; $5c5c: $2a
    inc b                                         ; $5c5d: $04
    ccf                                           ; $5c5e: $3f
    ld a, [hl+]                                   ; $5c5f: $2a
    inc b                                         ; $5c60: $04
    ld c, b                                       ; $5c61: $48
    ld a, [hl+]                                   ; $5c62: $2a
    inc b                                         ; $5c63: $04
    ld d, d                                       ; $5c64: $52
    ld a, [hl+]                                   ; $5c65: $2a
    inc b                                         ; $5c66: $04
    ld e, b                                       ; $5c67: $58
    ld a, [hl+]                                   ; $5c68: $2a
    inc b                                         ; $5c69: $04
    ld h, b                                       ; $5c6a: $60
    ld a, [hl+]                                   ; $5c6b: $2a
    inc b                                         ; $5c6c: $04
    ld l, e                                       ; $5c6d: $6b
    ld a, [hl+]                                   ; $5c6e: $2a
    inc b                                         ; $5c6f: $04
    ld [hl], e                                    ; $5c70: $73
    ld a, [hl+]                                   ; $5c71: $2a
    inc b                                         ; $5c72: $04
    ld a, c                                       ; $5c73: $79
    ld a, [hl+]                                   ; $5c74: $2a
    inc b                                         ; $5c75: $04
    ld a, a                                       ; $5c76: $7f
    ld a, [hl+]                                   ; $5c77: $2a
    inc b                                         ; $5c78: $04
    add a                                         ; $5c79: $87
    ld a, [hl+]                                   ; $5c7a: $2a
    inc b                                         ; $5c7b: $04
    sub d                                         ; $5c7c: $92
    ld a, [hl+]                                   ; $5c7d: $2a
    inc b                                         ; $5c7e: $04
    sbc l                                         ; $5c7f: $9d
    ld a, [hl+]                                   ; $5c80: $2a
    inc b                                         ; $5c81: $04
    and b                                         ; $5c82: $a0
    ld a, [hl+]                                   ; $5c83: $2a
    inc b                                         ; $5c84: $04
    xor b                                         ; $5c85: $a8
    ld a, [hl+]                                   ; $5c86: $2a
    inc b                                         ; $5c87: $04
    or e                                          ; $5c88: $b3
    ld a, [hl+]                                   ; $5c89: $2a
    inc b                                         ; $5c8a: $04
    cp l                                          ; $5c8b: $bd
    ld a, [hl+]                                   ; $5c8c: $2a
    inc b                                         ; $5c8d: $04
    jp nz, Jump_000_042a                          ; $5c8e: $c2 $2a $04

    ret z                                         ; $5c91: $c8

    ld a, [hl+]                                   ; $5c92: $2a
    inc b                                         ; $5c93: $04
    rst $08                                       ; $5c94: $cf
    ld a, [hl+]                                   ; $5c95: $2a
    inc b                                         ; $5c96: $04
    sub $2a                                       ; $5c97: $d6 $2a
    inc b                                         ; $5c99: $04
    call c, Call_000_042a                         ; $5c9a: $dc $2a $04
    ldh [$2a], a                                  ; $5c9d: $e0 $2a
    inc b                                         ; $5c9f: $04
    push hl                                       ; $5ca0: $e5
    ld a, [hl+]                                   ; $5ca1: $2a
    inc b                                         ; $5ca2: $04
    ldh a, [$2a]                                  ; $5ca3: $f0 $2a
    inc b                                         ; $5ca5: $04
    ld hl, sp+$2a                                 ; $5ca6: $f8 $2a
    inc b                                         ; $5ca8: $04
    rst $38                                       ; $5ca9: $ff
    ld a, [hl+]                                   ; $5caa: $2a
    inc b                                         ; $5cab: $04
    rlca                                          ; $5cac: $07
    dec hl                                        ; $5cad: $2b
    inc b                                         ; $5cae: $04
    ld de, $042b                                  ; $5caf: $11 $2b $04
    dec de                                        ; $5cb2: $1b
    dec hl                                        ; $5cb3: $2b
    inc b                                         ; $5cb4: $04
    inc hl                                        ; $5cb5: $23
    dec hl                                        ; $5cb6: $2b
    inc b                                         ; $5cb7: $04
    cpl                                           ; $5cb8: $2f
    dec hl                                        ; $5cb9: $2b
    inc b                                         ; $5cba: $04
    scf                                           ; $5cbb: $37
    dec hl                                        ; $5cbc: $2b
    inc b                                         ; $5cbd: $04
    ld b, e                                       ; $5cbe: $43
    dec hl                                        ; $5cbf: $2b
    inc b                                         ; $5cc0: $04
    ld c, e                                       ; $5cc1: $4b
    dec hl                                        ; $5cc2: $2b
    inc b                                         ; $5cc3: $04
    ld d, e                                       ; $5cc4: $53
    dec hl                                        ; $5cc5: $2b
    inc b                                         ; $5cc6: $04
    ld e, a                                       ; $5cc7: $5f
    dec hl                                        ; $5cc8: $2b
    inc b                                         ; $5cc9: $04
    ld h, [hl]                                    ; $5cca: $66
    dec hl                                        ; $5ccb: $2b
    inc b                                         ; $5ccc: $04
    ld l, l                                       ; $5ccd: $6d
    dec hl                                        ; $5cce: $2b
    inc b                                         ; $5ccf: $04
    ld [hl], h                                    ; $5cd0: $74
    dec hl                                        ; $5cd1: $2b
    inc b                                         ; $5cd2: $04
    ld a, h                                       ; $5cd3: $7c
    dec hl                                        ; $5cd4: $2b
    inc b                                         ; $5cd5: $04
    add l                                         ; $5cd6: $85
    dec hl                                        ; $5cd7: $2b
    inc b                                         ; $5cd8: $04
    adc [hl]                                      ; $5cd9: $8e
    dec hl                                        ; $5cda: $2b
    inc b                                         ; $5cdb: $04
    sub l                                         ; $5cdc: $95
    dec hl                                        ; $5cdd: $2b
    inc b                                         ; $5cde: $04
    sbc h                                         ; $5cdf: $9c
    dec hl                                        ; $5ce0: $2b
    inc b                                         ; $5ce1: $04
    and h                                         ; $5ce2: $a4
    dec hl                                        ; $5ce3: $2b
    inc b                                         ; $5ce4: $04
    or b                                          ; $5ce5: $b0
    dec hl                                        ; $5ce6: $2b
    inc b                                         ; $5ce7: $04
    cp b                                          ; $5ce8: $b8
    dec hl                                        ; $5ce9: $2b
    inc b                                         ; $5cea: $04
    ret                                           ; $5ceb: $c9


    dec hl                                        ; $5cec: $2b
    inc b                                         ; $5ced: $04
    pop hl                                        ; $5cee: $e1
    dec hl                                        ; $5cef: $2b
    inc b                                         ; $5cf0: $04
    inc e                                         ; $5cf1: $1c
    inc l                                         ; $5cf2: $2c
    inc b                                         ; $5cf3: $04
    ld c, h                                       ; $5cf4: $4c
    inc l                                         ; $5cf5: $2c
    inc b                                         ; $5cf6: $04
    ld h, a                                       ; $5cf7: $67
    inc l                                         ; $5cf8: $2c
    inc b                                         ; $5cf9: $04
    adc l                                         ; $5cfa: $8d
    inc l                                         ; $5cfb: $2c
    inc b                                         ; $5cfc: $04
    pop bc                                        ; $5cfd: $c1
    inc l                                         ; $5cfe: $2c
    inc b                                         ; $5cff: $04
    call nc, $042c                                ; $5d00: $d4 $2c $04
    db $fd                                        ; $5d03: $fd
    inc l                                         ; $5d04: $2c
    inc b                                         ; $5d05: $04
    ld a, [hl+]                                   ; $5d06: $2a
    dec l                                         ; $5d07: $2d
    inc b                                         ; $5d08: $04
    ld c, c                                       ; $5d09: $49
    dec l                                         ; $5d0a: $2d
    inc b                                         ; $5d0b: $04
    ld h, h                                       ; $5d0c: $64
    dec l                                         ; $5d0d: $2d
    inc b                                         ; $5d0e: $04
    sub b                                         ; $5d0f: $90
    dec l                                         ; $5d10: $2d
    inc b                                         ; $5d11: $04
    call nz, Call_000_042d                        ; $5d12: $c4 $2d $04
    db $f4                                        ; $5d15: $f4
    dec l                                         ; $5d16: $2d
    inc b                                         ; $5d17: $04
    inc l                                         ; $5d18: $2c
    ld l, $04                                     ; $5d19: $2e $04
    ld e, e                                       ; $5d1b: $5b
    ld l, $04                                     ; $5d1c: $2e $04
    ld a, l                                       ; $5d1e: $7d
    ld l, $04                                     ; $5d1f: $2e $04
    sbc d                                         ; $5d21: $9a
    ld l, $04                                     ; $5d22: $2e $04
    cp h                                          ; $5d24: $bc
    ld l, $04                                     ; $5d25: $2e $04
    and $2e                                       ; $5d27: $e6 $2e
    inc b                                         ; $5d29: $04
    inc d                                         ; $5d2a: $14
    cpl                                           ; $5d2b: $2f
    inc b                                         ; $5d2c: $04
    ld b, h                                       ; $5d2d: $44
    cpl                                           ; $5d2e: $2f
    inc b                                         ; $5d2f: $04
    ld a, d                                       ; $5d30: $7a
    cpl                                           ; $5d31: $2f
    inc b                                         ; $5d32: $04
    sub e                                         ; $5d33: $93
    cpl                                           ; $5d34: $2f
    inc b                                         ; $5d35: $04
    cp e                                          ; $5d36: $bb
    cpl                                           ; $5d37: $2f
    inc b                                         ; $5d38: $04
    sbc $2f                                       ; $5d39: $de $2f
    inc b                                         ; $5d3b: $04
    cp $2f                                        ; $5d3c: $fe $2f
    inc b                                         ; $5d3e: $04
    dec e                                         ; $5d3f: $1d
    jr nc, jr_059_5d46                            ; $5d40: $30 $04

    ld c, e                                       ; $5d42: $4b
    jr nc, jr_059_5d49                            ; $5d43: $30 $04

    ld [hl], e                                    ; $5d45: $73

jr_059_5d46:
    jr nc, jr_059_5d4c                            ; $5d46: $30 $04

    or h                                          ; $5d48: $b4

jr_059_5d49:
    jr nc, @+$06                                  ; $5d49: $30 $04

    db $f4                                        ; $5d4b: $f4

jr_059_5d4c:
    jr nc, jr_059_5d52                            ; $5d4c: $30 $04

    jr z, jr_059_5d81                             ; $5d4e: $28 $31

    inc b                                         ; $5d50: $04
    ld b, c                                       ; $5d51: $41

jr_059_5d52:
    ld sp, $7704                                  ; $5d52: $31 $04 $77
    ld sp, $9f04                                  ; $5d55: $31 $04 $9f
    ld sp, $b804                                  ; $5d58: $31 $04 $b8
    ld sp, $ec04                                  ; $5d5b: $31 $04 $ec
    ld sp, $1d04                                  ; $5d5e: $31 $04 $1d
    ld [hl-], a                                   ; $5d61: $32
    inc b                                         ; $5d62: $04
    ld c, d                                       ; $5d63: $4a
    ld [hl-], a                                   ; $5d64: $32
    inc b                                         ; $5d65: $04
    ld [hl], a                                    ; $5d66: $77
    ld [hl-], a                                   ; $5d67: $32
    inc b                                         ; $5d68: $04
    and h                                         ; $5d69: $a4
    ld [hl-], a                                   ; $5d6a: $32
    inc b                                         ; $5d6b: $04
    cp [hl]                                       ; $5d6c: $be
    ld [hl-], a                                   ; $5d6d: $32
    inc b                                         ; $5d6e: $04
    db $e3                                        ; $5d6f: $e3
    ld [hl-], a                                   ; $5d70: $32
    inc b                                         ; $5d71: $04
    ld [$0433], sp                                ; $5d72: $08 $33 $04

Call_059_5d75:
    ccf                                           ; $5d75: $3f
    inc sp                                        ; $5d76: $33
    inc b                                         ; $5d77: $04
    ld h, [hl]                                    ; $5d78: $66
    inc sp                                        ; $5d79: $33
    inc b                                         ; $5d7a: $04
    adc e                                         ; $5d7b: $8b
    inc sp                                        ; $5d7c: $33
    inc b                                         ; $5d7d: $04
    or [hl]                                       ; $5d7e: $b6
    inc sp                                        ; $5d7f: $33
    inc b                                         ; $5d80: $04

jr_059_5d81:
    inc b                                         ; $5d81: $04
    inc [hl]                                      ; $5d82: $34
    inc b                                         ; $5d83: $04
    and h                                         ; $5d84: $a4
    inc [hl]                                      ; $5d85: $34
    inc b                                         ; $5d86: $04
    ld bc, $0435                                  ; $5d87: $01 $35 $04
    ld l, b                                       ; $5d8a: $68
    dec [hl]                                      ; $5d8b: $35
    inc b                                         ; $5d8c: $04
    db $e3                                        ; $5d8d: $e3
    dec [hl]                                      ; $5d8e: $35
    inc b                                         ; $5d8f: $04
    add hl, sp                                    ; $5d90: $39
    ld [hl], $04                                  ; $5d91: $36 $04
    or [hl]                                       ; $5d93: $b6
    ld [hl], $04                                  ; $5d94: $36 $04
    ld a, [hl-]                                   ; $5d96: $3a
    scf                                           ; $5d97: $37
    inc b                                         ; $5d98: $04
    ld d, c                                       ; $5d99: $51
    jr c, jr_059_5da0                             ; $5d9a: $38 $04

    and $38                                       ; $5d9c: $e6 $38
    inc b                                         ; $5d9e: $04
    ld [de], a                                    ; $5d9f: $12

jr_059_5da0:
    add hl, sp                                    ; $5da0: $39
    inc b                                         ; $5da1: $04
    ld h, e                                       ; $5da2: $63
    add hl, sp                                    ; $5da3: $39
    inc b                                         ; $5da4: $04
    add e                                         ; $5da5: $83
    add hl, sp                                    ; $5da6: $39
    inc b                                         ; $5da7: $04
    or e                                          ; $5da8: $b3
    add hl, sp                                    ; $5da9: $39
    inc b                                         ; $5daa: $04
    pop de                                        ; $5dab: $d1
    add hl, sp                                    ; $5dac: $39
    inc b                                         ; $5dad: $04
    ldh a, [$39]                                  ; $5dae: $f0 $39
    inc b                                         ; $5db0: $04
    inc b                                         ; $5db1: $04
    ld a, [hl-]                                   ; $5db2: $3a
    inc b                                         ; $5db3: $04
    inc l                                         ; $5db4: $2c
    ld a, [hl-]                                   ; $5db5: $3a
    inc b                                         ; $5db6: $04
    ld d, d                                       ; $5db7: $52
    ld a, [hl-]                                   ; $5db8: $3a
    inc b                                         ; $5db9: $04
    ld l, h                                       ; $5dba: $6c
    ld a, [hl-]                                   ; $5dbb: $3a
    inc b                                         ; $5dbc: $04
    adc h                                         ; $5dbd: $8c
    ld a, [hl-]                                   ; $5dbe: $3a
    inc b                                         ; $5dbf: $04
    xor l                                         ; $5dc0: $ad
    ld a, [hl-]                                   ; $5dc1: $3a
    inc b                                         ; $5dc2: $04
    jp $043a                                      ; $5dc3: $c3 $3a $04


    ret c                                         ; $5dc6: $d8

    ld a, [hl-]                                   ; $5dc7: $3a
    inc b                                         ; $5dc8: $04
    db $ed                                        ; $5dc9: $ed
    ld a, [hl-]                                   ; $5dca: $3a
    inc b                                         ; $5dcb: $04
    inc de                                        ; $5dcc: $13
    dec sp                                        ; $5dcd: $3b
    inc b                                         ; $5dce: $04
    dec a                                         ; $5dcf: $3d
    dec sp                                        ; $5dd0: $3b
    inc b                                         ; $5dd1: $04
    ld d, d                                       ; $5dd2: $52
    dec sp                                        ; $5dd3: $3b
    inc b                                         ; $5dd4: $04
    ld a, d                                       ; $5dd5: $7a
    dec sp                                        ; $5dd6: $3b
    inc b                                         ; $5dd7: $04
    sbc a                                         ; $5dd8: $9f
    dec sp                                        ; $5dd9: $3b
    inc b                                         ; $5dda: $04
    cp h                                          ; $5ddb: $bc
    dec sp                                        ; $5ddc: $3b
    inc b                                         ; $5ddd: $04
    reti                                          ; $5dde: $d9


    dec sp                                        ; $5ddf: $3b
    inc b                                         ; $5de0: $04
    ei                                            ; $5de1: $fb
    dec sp                                        ; $5de2: $3b
    inc b                                         ; $5de3: $04
    ld a, [de]                                    ; $5de4: $1a
    inc a                                         ; $5de5: $3c
    inc b                                         ; $5de6: $04
    jr c, @+$3e                                   ; $5de7: $38 $3c

    inc b                                         ; $5de9: $04
    ld d, c                                       ; $5dea: $51
    inc a                                         ; $5deb: $3c
    inc b                                         ; $5dec: $04
    ld [hl], h                                    ; $5ded: $74
    inc a                                         ; $5dee: $3c
    inc b                                         ; $5def: $04
    adc l                                         ; $5df0: $8d
    inc a                                         ; $5df1: $3c
    inc b                                         ; $5df2: $04
    xor a                                         ; $5df3: $af
    inc a                                         ; $5df4: $3c
    inc b                                         ; $5df5: $04
    push de                                       ; $5df6: $d5
    inc a                                         ; $5df7: $3c
    inc b                                         ; $5df8: $04
    rst $30                                       ; $5df9: $f7
    inc a                                         ; $5dfa: $3c
    inc b                                         ; $5dfb: $04
    inc e                                         ; $5dfc: $1c
    dec a                                         ; $5dfd: $3d
    inc b                                         ; $5dfe: $04
    ld c, b                                       ; $5dff: $48
    dec a                                         ; $5e00: $3d
    inc b                                         ; $5e01: $04
    ld a, b                                       ; $5e02: $78
    dec a                                         ; $5e03: $3d
    inc b                                         ; $5e04: $04
    sub [hl]                                      ; $5e05: $96
    dec a                                         ; $5e06: $3d
    inc b                                         ; $5e07: $04
    xor a                                         ; $5e08: $af
    dec a                                         ; $5e09: $3d
    inc b                                         ; $5e0a: $04
    cp l                                          ; $5e0b: $bd
    dec a                                         ; $5e0c: $3d
    inc b                                         ; $5e0d: $04
    rst $20                                       ; $5e0e: $e7
    dec a                                         ; $5e0f: $3d
    inc b                                         ; $5e10: $04
    ld [$043e], sp                                ; $5e11: $08 $3e $04
    daa                                           ; $5e14: $27
    ld a, $04                                     ; $5e15: $3e $04
    ld c, e                                       ; $5e17: $4b
    ld a, $04                                     ; $5e18: $3e $04
    ld [hl], h                                    ; $5e1a: $74
    ld a, $04                                     ; $5e1b: $3e $04
    adc c                                         ; $5e1d: $89
    ld a, $04                                     ; $5e1e: $3e $04
    or h                                          ; $5e20: $b4
    ld a, $04                                     ; $5e21: $3e $04
    ret                                           ; $5e23: $c9


    ld a, $04                                     ; $5e24: $3e $04
    db $10                                        ; $5e26: $10
    ccf                                           ; $5e27: $3f
    inc b                                         ; $5e28: $04
    inc sp                                        ; $5e29: $33
    ccf                                           ; $5e2a: $3f
    inc b                                         ; $5e2b: $04
    ld h, b                                       ; $5e2c: $60
    ccf                                           ; $5e2d: $3f
    inc b                                         ; $5e2e: $04
    adc a                                         ; $5e2f: $8f
    ccf                                           ; $5e30: $3f
    inc b                                         ; $5e31: $04
    cp c                                          ; $5e32: $b9
    ccf                                           ; $5e33: $3f
    dec b                                         ; $5e34: $05
    ld bc, $0500                                  ; $5e35: $01 $00 $05
    cpl                                           ; $5e38: $2f
    nop                                           ; $5e39: $00
    dec b                                         ; $5e3a: $05
    ld h, e                                       ; $5e3b: $63
    nop                                           ; $5e3c: $00
    dec b                                         ; $5e3d: $05
    adc d                                         ; $5e3e: $8a
    nop                                           ; $5e3f: $00
    dec b                                         ; $5e40: $05
    or d                                          ; $5e41: $b2
    nop                                           ; $5e42: $00
    dec b                                         ; $5e43: $05
    db $db                                        ; $5e44: $db
    nop                                           ; $5e45: $00
    dec b                                         ; $5e46: $05
    rlca                                          ; $5e47: $07
    ld bc, $2a05                                  ; $5e48: $01 $05 $2a
    ld bc, $5d05                                  ; $5e4b: $01 $05 $5d
    ld bc, $8d05                                  ; $5e4e: $01 $05 $8d
    ld bc, $bd05                                  ; $5e51: $01 $05 $bd
    ld bc, $e705                                  ; $5e54: $01 $05 $e7
    ld bc, $f905                                  ; $5e57: $01 $05 $f9
    ld bc, $fa05                                  ; $5e5a: $01 $05 $fa
    ld bc, $0505                                  ; $5e5d: $01 $05 $05
    ld [bc], a                                    ; $5e60: $02
    dec b                                         ; $5e61: $05
    rrca                                          ; $5e62: $0f
    ld [bc], a                                    ; $5e63: $02
    dec b                                         ; $5e64: $05
    db $10                                        ; $5e65: $10
    ld [bc], a                                    ; $5e66: $02
    dec b                                         ; $5e67: $05
    inc e                                         ; $5e68: $1c
    ld [bc], a                                    ; $5e69: $02
    dec b                                         ; $5e6a: $05
    daa                                           ; $5e6b: $27
    ld [bc], a                                    ; $5e6c: $02
    dec b                                         ; $5e6d: $05
    jr z, jr_059_5e72                             ; $5e6e: $28 $02

    dec b                                         ; $5e70: $05
    inc [hl]                                      ; $5e71: $34

jr_059_5e72:
    ld [bc], a                                    ; $5e72: $02
    dec b                                         ; $5e73: $05
    dec a                                         ; $5e74: $3d
    ld [bc], a                                    ; $5e75: $02
    dec b                                         ; $5e76: $05
    ld a, $02                                     ; $5e77: $3e $02
    dec b                                         ; $5e79: $05
    ld b, [hl]                                    ; $5e7a: $46
    ld [bc], a                                    ; $5e7b: $02
    dec b                                         ; $5e7c: $05
    ld c, a                                       ; $5e7d: $4f
    ld [bc], a                                    ; $5e7e: $02
    dec b                                         ; $5e7f: $05
    ld e, b                                       ; $5e80: $58
    ld [bc], a                                    ; $5e81: $02
    dec b                                         ; $5e82: $05
    ld h, h                                       ; $5e83: $64
    ld [bc], a                                    ; $5e84: $02
    dec b                                         ; $5e85: $05
    ld l, [hl]                                    ; $5e86: $6e
    ld [bc], a                                    ; $5e87: $02
    dec b                                         ; $5e88: $05
    ld l, a                                       ; $5e89: $6f
    ld [bc], a                                    ; $5e8a: $02
    dec b                                         ; $5e8b: $05
    ld a, d                                       ; $5e8c: $7a
    ld [bc], a                                    ; $5e8d: $02
    dec b                                         ; $5e8e: $05
    add e                                         ; $5e8f: $83
    ld [bc], a                                    ; $5e90: $02
    dec b                                         ; $5e91: $05
    adc e                                         ; $5e92: $8b
    ld [bc], a                                    ; $5e93: $02
    dec b                                         ; $5e94: $05
    sub l                                         ; $5e95: $95
    ld [bc], a                                    ; $5e96: $02
    dec b                                         ; $5e97: $05
    sub [hl]                                      ; $5e98: $96
    ld [bc], a                                    ; $5e99: $02
    dec b                                         ; $5e9a: $05
    xor e                                         ; $5e9b: $ab
    ld [bc], a                                    ; $5e9c: $02
    dec b                                         ; $5e9d: $05
    or l                                          ; $5e9e: $b5
    ld [bc], a                                    ; $5e9f: $02
    dec b                                         ; $5ea0: $05
    or [hl]                                       ; $5ea1: $b6
    ld [bc], a                                    ; $5ea2: $02
    dec b                                         ; $5ea3: $05
    pop bc                                        ; $5ea4: $c1
    ld [bc], a                                    ; $5ea5: $02
    dec b                                         ; $5ea6: $05
    ret                                           ; $5ea7: $c9


    ld [bc], a                                    ; $5ea8: $02
    dec b                                         ; $5ea9: $05
    jp z, Jump_000_0502                           ; $5eaa: $ca $02 $05

    reti                                          ; $5ead: $d9


    ld [bc], a                                    ; $5eae: $02
    dec b                                         ; $5eaf: $05
    pop hl                                        ; $5eb0: $e1
    ld [bc], a                                    ; $5eb1: $02
    dec b                                         ; $5eb2: $05
    jp hl                                         ; $5eb3: $e9


    ld [bc], a                                    ; $5eb4: $02
    dec b                                         ; $5eb5: $05
    ldh a, [rSC]                                  ; $5eb6: $f0 $02
    dec b                                         ; $5eb8: $05
    pop af                                        ; $5eb9: $f1
    ld [bc], a                                    ; $5eba: $02
    dec b                                         ; $5ebb: $05
    or $02                                        ; $5ebc: $f6 $02
    dec b                                         ; $5ebe: $05
    ld bc, $0503                                  ; $5ebf: $01 $03 $05
    dec bc                                        ; $5ec2: $0b
    inc bc                                        ; $5ec3: $03
    dec b                                         ; $5ec4: $05
    dec d                                         ; $5ec5: $15
    inc bc                                        ; $5ec6: $03
    dec b                                         ; $5ec7: $05
    dec e                                         ; $5ec8: $1d
    inc bc                                        ; $5ec9: $03
    dec b                                         ; $5eca: $05
    ld e, $03                                     ; $5ecb: $1e $03
    dec b                                         ; $5ecd: $05
    rra                                           ; $5ece: $1f
    inc bc                                        ; $5ecf: $03
    dec b                                         ; $5ed0: $05
    inc [hl]                                      ; $5ed1: $34
    inc bc                                        ; $5ed2: $03
    dec b                                         ; $5ed3: $05
    dec [hl]                                      ; $5ed4: $35
    inc bc                                        ; $5ed5: $03
    dec b                                         ; $5ed6: $05
    ld b, c                                       ; $5ed7: $41
    inc bc                                        ; $5ed8: $03
    dec b                                         ; $5ed9: $05
    ld c, d                                       ; $5eda: $4a
    inc bc                                        ; $5edb: $03
    dec b                                         ; $5edc: $05
    ld d, d                                       ; $5edd: $52
    inc bc                                        ; $5ede: $03
    dec b                                         ; $5edf: $05
    ld d, e                                       ; $5ee0: $53
    inc bc                                        ; $5ee1: $03
    dec b                                         ; $5ee2: $05
    ld e, [hl]                                    ; $5ee3: $5e
    inc bc                                        ; $5ee4: $03
    dec b                                         ; $5ee5: $05
    ld l, b                                       ; $5ee6: $68
    inc bc                                        ; $5ee7: $03
    dec b                                         ; $5ee8: $05
    ld l, c                                       ; $5ee9: $69
    inc bc                                        ; $5eea: $03
    dec b                                         ; $5eeb: $05
    ld [hl], a                                    ; $5eec: $77
    inc bc                                        ; $5eed: $03
    dec b                                         ; $5eee: $05
    add b                                         ; $5eef: $80
    inc bc                                        ; $5ef0: $03
    dec b                                         ; $5ef1: $05
    add c                                         ; $5ef2: $81
    inc bc                                        ; $5ef3: $03
    dec b                                         ; $5ef4: $05
    sub h                                         ; $5ef5: $94
    inc bc                                        ; $5ef6: $03
    dec b                                         ; $5ef7: $05
    and b                                         ; $5ef8: $a0
    inc bc                                        ; $5ef9: $03
    dec b                                         ; $5efa: $05
    xor c                                         ; $5efb: $a9
    inc bc                                        ; $5efc: $03
    dec b                                         ; $5efd: $05
    or b                                          ; $5efe: $b0
    inc bc                                        ; $5eff: $03
    dec b                                         ; $5f00: $05
    cp b                                          ; $5f01: $b8
    inc bc                                        ; $5f02: $03
    dec b                                         ; $5f03: $05
    jp nz, $0503                                  ; $5f04: $c2 $03 $05

    rlc e                                         ; $5f07: $cb $03
    dec b                                         ; $5f09: $05
    call z, $0503                                 ; $5f0a: $cc $03 $05
    call $0503                                    ; $5f0d: $cd $03 $05
    adc $03                                       ; $5f10: $ce $03
    dec b                                         ; $5f12: $05
    rst $18                                       ; $5f13: $df
    inc bc                                        ; $5f14: $03
    dec b                                         ; $5f15: $05
    ldh [$03], a                                  ; $5f16: $e0 $03
    dec b                                         ; $5f18: $05
    and $03                                       ; $5f19: $e6 $03
    dec b                                         ; $5f1b: $05
    xor $03                                       ; $5f1c: $ee $03
    dec b                                         ; $5f1e: $05
    ld hl, sp+$03                                 ; $5f1f: $f8 $03
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
    inc sp                                        ; $5f34: $33
    inc b                                         ; $5f35: $04
    dec b                                         ; $5f36: $05
    ld a, [hl-]                                   ; $5f37: $3a
    inc b                                         ; $5f38: $04
    dec b                                         ; $5f39: $05
    dec sp                                        ; $5f3a: $3b
    inc b                                         ; $5f3b: $04
    dec b                                         ; $5f3c: $05
    ld b, [hl]                                    ; $5f3d: $46
    inc b                                         ; $5f3e: $04
    dec b                                         ; $5f3f: $05
    ld c, l                                       ; $5f40: $4d
    inc b                                         ; $5f41: $04
    dec b                                         ; $5f42: $05
    ld c, [hl]                                    ; $5f43: $4e
    inc b                                         ; $5f44: $04
    dec b                                         ; $5f45: $05
    ld d, d                                       ; $5f46: $52
    inc b                                         ; $5f47: $04
    dec b                                         ; $5f48: $05
    ld e, e                                       ; $5f49: $5b
    inc b                                         ; $5f4a: $04
    dec b                                         ; $5f4b: $05
    ld h, e                                       ; $5f4c: $63
    inc b                                         ; $5f4d: $04
    dec b                                         ; $5f4e: $05
    ld l, h                                       ; $5f4f: $6c
    inc b                                         ; $5f50: $04
    dec b                                         ; $5f51: $05
    halt                                          ; $5f52: $76
    inc b                                         ; $5f53: $04
    dec b                                         ; $5f54: $05
    ld [hl], a                                    ; $5f55: $77
    inc b                                         ; $5f56: $04
    dec b                                         ; $5f57: $05
    ld a, a                                       ; $5f58: $7f
    inc b                                         ; $5f59: $04
    dec b                                         ; $5f5a: $05
    adc b                                         ; $5f5b: $88
    inc b                                         ; $5f5c: $04
    dec b                                         ; $5f5d: $05
    sub d                                         ; $5f5e: $92
    inc b                                         ; $5f5f: $04
    dec b                                         ; $5f60: $05
    sbc b                                         ; $5f61: $98
    inc b                                         ; $5f62: $04
    dec b                                         ; $5f63: $05
    and d                                         ; $5f64: $a2
    inc b                                         ; $5f65: $04
    dec b                                         ; $5f66: $05
    xor d                                         ; $5f67: $aa
    inc b                                         ; $5f68: $04
    dec b                                         ; $5f69: $05
    or e                                          ; $5f6a: $b3
    inc b                                         ; $5f6b: $04
    dec b                                         ; $5f6c: $05
    cp a                                          ; $5f6d: $bf
    inc b                                         ; $5f6e: $04
    dec b                                         ; $5f6f: $05
    call $0504                                    ; $5f70: $cd $04 $05
    sub $04                                       ; $5f73: $d6 $04
    dec b                                         ; $5f75: $05
    rst $18                                       ; $5f76: $df
    inc b                                         ; $5f77: $04
    dec b                                         ; $5f78: $05
    ldh [rDIV], a                                 ; $5f79: $e0 $04
    dec b                                         ; $5f7b: $05
    jp hl                                         ; $5f7c: $e9


    inc b                                         ; $5f7d: $04
    dec b                                         ; $5f7e: $05
    ldh a, [rDIV]                                 ; $5f7f: $f0 $04
    dec b                                         ; $5f81: $05
    ld a, [$0504]                                 ; $5f82: $fa $04 $05
    inc bc                                        ; $5f85: $03
    dec b                                         ; $5f86: $05
    dec b                                         ; $5f87: $05
    inc c                                         ; $5f88: $0c
    dec b                                         ; $5f89: $05
    dec b                                         ; $5f8a: $05
    dec c                                         ; $5f8b: $0d
    dec b                                         ; $5f8c: $05
    dec b                                         ; $5f8d: $05
    inc hl                                        ; $5f8e: $23
    dec b                                         ; $5f8f: $05
    dec b                                         ; $5f90: $05
    cpl                                           ; $5f91: $2f
    dec b                                         ; $5f92: $05
    dec b                                         ; $5f93: $05
    add hl, sp                                    ; $5f94: $39
    dec b                                         ; $5f95: $05
    dec b                                         ; $5f96: $05
    ld b, d                                       ; $5f97: $42
    dec b                                         ; $5f98: $05
    dec b                                         ; $5f99: $05
    ld c, e                                       ; $5f9a: $4b
    dec b                                         ; $5f9b: $05
    dec b                                         ; $5f9c: $05
    ld d, e                                       ; $5f9d: $53
    dec b                                         ; $5f9e: $05
    dec b                                         ; $5f9f: $05
    ld e, d                                       ; $5fa0: $5a
    dec b                                         ; $5fa1: $05
    dec b                                         ; $5fa2: $05
    ld h, l                                       ; $5fa3: $65
    dec b                                         ; $5fa4: $05
    dec b                                         ; $5fa5: $05

Jump_059_5fa6:
    ld l, l                                       ; $5fa6: $6d
    dec b                                         ; $5fa7: $05
    dec b                                         ; $5fa8: $05
    ld [hl], h                                    ; $5fa9: $74
    dec b                                         ; $5faa: $05
    dec b                                         ; $5fab: $05
    ld a, h                                       ; $5fac: $7c
    dec b                                         ; $5fad: $05
    dec b                                         ; $5fae: $05
    add l                                         ; $5faf: $85
    dec b                                         ; $5fb0: $05
    dec b                                         ; $5fb1: $05
    adc [hl]                                      ; $5fb2: $8e
    dec b                                         ; $5fb3: $05
    dec b                                         ; $5fb4: $05
    adc a                                         ; $5fb5: $8f
    dec b                                         ; $5fb6: $05
    dec b                                         ; $5fb7: $05
    sub b                                         ; $5fb8: $90
    dec b                                         ; $5fb9: $05
    dec b                                         ; $5fba: $05
    sub c                                         ; $5fbb: $91
    dec b                                         ; $5fbc: $05
    dec b                                         ; $5fbd: $05
    sub d                                         ; $5fbe: $92
    dec b                                         ; $5fbf: $05
    dec b                                         ; $5fc0: $05
    sub e                                         ; $5fc1: $93
    dec b                                         ; $5fc2: $05
    dec b                                         ; $5fc3: $05
    sub h                                         ; $5fc4: $94
    dec b                                         ; $5fc5: $05
    dec b                                         ; $5fc6: $05
    sub l                                         ; $5fc7: $95
    dec b                                         ; $5fc8: $05
    dec b                                         ; $5fc9: $05
    sub [hl]                                      ; $5fca: $96
    dec b                                         ; $5fcb: $05
    dec b                                         ; $5fcc: $05
    sub a                                         ; $5fcd: $97
    dec b                                         ; $5fce: $05
    dec b                                         ; $5fcf: $05
    sbc b                                         ; $5fd0: $98
    dec b                                         ; $5fd1: $05
    dec b                                         ; $5fd2: $05
    sbc c                                         ; $5fd3: $99
    dec b                                         ; $5fd4: $05
    dec b                                         ; $5fd5: $05
    sbc d                                         ; $5fd6: $9a
    dec b                                         ; $5fd7: $05
    dec b                                         ; $5fd8: $05
    sbc e                                         ; $5fd9: $9b
    dec b                                         ; $5fda: $05
    dec b                                         ; $5fdb: $05
    sbc h                                         ; $5fdc: $9c
    dec b                                         ; $5fdd: $05
    dec b                                         ; $5fde: $05
    sbc l                                         ; $5fdf: $9d
    dec b                                         ; $5fe0: $05
    dec b                                         ; $5fe1: $05
    sbc [hl]                                      ; $5fe2: $9e
    dec b                                         ; $5fe3: $05
    dec b                                         ; $5fe4: $05
    sbc a                                         ; $5fe5: $9f
    dec b                                         ; $5fe6: $05
    dec b                                         ; $5fe7: $05
    and b                                         ; $5fe8: $a0
    dec b                                         ; $5fe9: $05
    dec b                                         ; $5fea: $05
    and c                                         ; $5feb: $a1
    dec b                                         ; $5fec: $05
    dec b                                         ; $5fed: $05
    and d                                         ; $5fee: $a2
    dec b                                         ; $5fef: $05
    dec b                                         ; $5ff0: $05
    and e                                         ; $5ff1: $a3
    dec b                                         ; $5ff2: $05
    dec b                                         ; $5ff3: $05
    and h                                         ; $5ff4: $a4
    dec b                                         ; $5ff5: $05
    dec b                                         ; $5ff6: $05
    and l                                         ; $5ff7: $a5
    dec b                                         ; $5ff8: $05

Call_059_5ff9:
    dec b                                         ; $5ff9: $05
    and [hl]                                      ; $5ffa: $a6
    dec b                                         ; $5ffb: $05
    dec b                                         ; $5ffc: $05
    and a                                         ; $5ffd: $a7
    dec b                                         ; $5ffe: $05
    dec b                                         ; $5fff: $05
    xor b                                         ; $6000: $a8
    dec b                                         ; $6001: $05
    dec b                                         ; $6002: $05
    xor c                                         ; $6003: $a9
    dec b                                         ; $6004: $05
    dec b                                         ; $6005: $05
    xor d                                         ; $6006: $aa
    dec b                                         ; $6007: $05
    dec b                                         ; $6008: $05
    xor e                                         ; $6009: $ab
    dec b                                         ; $600a: $05
    dec b                                         ; $600b: $05
    xor h                                         ; $600c: $ac
    dec b                                         ; $600d: $05
    dec b                                         ; $600e: $05
    xor l                                         ; $600f: $ad
    dec b                                         ; $6010: $05
    dec b                                         ; $6011: $05
    xor [hl]                                      ; $6012: $ae
    dec b                                         ; $6013: $05
    dec b                                         ; $6014: $05
    xor a                                         ; $6015: $af
    dec b                                         ; $6016: $05
    dec b                                         ; $6017: $05
    or b                                          ; $6018: $b0
    dec b                                         ; $6019: $05
    dec b                                         ; $601a: $05
    rst $00                                       ; $601b: $c7
    dec b                                         ; $601c: $05
    dec b                                         ; $601d: $05
    call z, Call_000_0505                         ; $601e: $cc $05 $05
    db $f4                                        ; $6021: $f4
    dec b                                         ; $6022: $05
    dec b                                         ; $6023: $05
    inc b                                         ; $6024: $04
    ld b, $05                                     ; $6025: $06 $05
    ld d, h                                       ; $6027: $54
    ld b, $05                                     ; $6028: $06 $05
    ld h, h                                       ; $602a: $64
    ld b, $05                                     ; $602b: $06 $05
    or e                                          ; $602d: $b3
    ld b, $05                                     ; $602e: $06 $05
    push de                                       ; $6030: $d5
    ld b, $05                                     ; $6031: $06 $05
    inc [hl]                                      ; $6033: $34
    rlca                                          ; $6034: $07
    dec b                                         ; $6035: $05
    ld c, b                                       ; $6036: $48
    rlca                                          ; $6037: $07
    dec b                                         ; $6038: $05
    ld a, d                                       ; $6039: $7a
    rlca                                          ; $603a: $07
    dec b                                         ; $603b: $05
    rst $00                                       ; $603c: $c7
    rlca                                          ; $603d: $07
    dec b                                         ; $603e: $05
    rst $10                                       ; $603f: $d7
    rlca                                          ; $6040: $07
    dec b                                         ; $6041: $05
    ld [$0508], sp                                ; $6042: $08 $08 $05
    add hl, hl                                    ; $6045: $29
    ld [$4d05], sp                                ; $6046: $08 $05 $4d
    ld [$9d05], sp                                ; $6049: $08 $05 $9d
    ld [$a805], sp                                ; $604c: $08 $05 $a8
    ld [$bd05], sp                                ; $604f: $08 $05 $bd
    ld [$d005], sp                                ; $6052: $08 $05 $d0
    ld [$e205], sp                                ; $6055: $08 $05 $e2
    ld [$f505], sp                                ; $6058: $08 $05 $f5
    ld [$1105], sp                                ; $605b: $08 $05 $11
    add hl, bc                                    ; $605e: $09
    dec b                                         ; $605f: $05
    ld c, a                                       ; $6060: $4f
    add hl, bc                                    ; $6061: $09
    dec b                                         ; $6062: $05
    ld e, d                                       ; $6063: $5a
    add hl, bc                                    ; $6064: $09
    dec b                                         ; $6065: $05
    sbc d                                         ; $6066: $9a
    add hl, bc                                    ; $6067: $09
    dec b                                         ; $6068: $05
    xor e                                         ; $6069: $ab
    add hl, bc                                    ; $606a: $09
    dec b                                         ; $606b: $05
    ret nz                                        ; $606c: $c0

    add hl, bc                                    ; $606d: $09
    dec b                                         ; $606e: $05
    rst $38                                       ; $606f: $ff
    add hl, bc                                    ; $6070: $09
    dec b                                         ; $6071: $05
    dec h                                         ; $6072: $25
    ld a, [bc]                                    ; $6073: $0a
    dec b                                         ; $6074: $05
    inc a                                         ; $6075: $3c
    ld a, [bc]                                    ; $6076: $0a
    dec b                                         ; $6077: $05
    ld d, d                                       ; $6078: $52
    ld a, [bc]                                    ; $6079: $0a
    dec b                                         ; $607a: $05
    add a                                         ; $607b: $87
    ld a, [bc]                                    ; $607c: $0a
    dec b                                         ; $607d: $05
    and h                                         ; $607e: $a4
    ld a, [bc]                                    ; $607f: $0a
    dec b                                         ; $6080: $05
    or e                                          ; $6081: $b3
    ld a, [bc]                                    ; $6082: $0a
    dec b                                         ; $6083: $05
    jp Jump_000_050a                              ; $6084: $c3 $0a $05


    rst $10                                       ; $6087: $d7
    ld a, [bc]                                    ; $6088: $0a
    dec b                                         ; $6089: $05
    xor $0a                                       ; $608a: $ee $0a
    dec b                                         ; $608c: $05
    ld hl, sp+$0a                                 ; $608d: $f8 $0a
    dec b                                         ; $608f: $05
    ld b, $0b                                     ; $6090: $06 $0b
    dec b                                         ; $6092: $05
    jr jr_059_60a0                                ; $6093: $18 $0b

    dec b                                         ; $6095: $05
    dec hl                                        ; $6096: $2b
    dec bc                                        ; $6097: $0b
    dec b                                         ; $6098: $05
    ld b, e                                       ; $6099: $43
    dec bc                                        ; $609a: $0b
    dec b                                         ; $609b: $05
    ld d, h                                       ; $609c: $54

Jump_059_609d:
    dec bc                                        ; $609d: $0b
    dec b                                         ; $609e: $05
    ld l, e                                       ; $609f: $6b

jr_059_60a0:
    dec bc                                        ; $60a0: $0b
    dec b                                         ; $60a1: $05
    adc d                                         ; $60a2: $8a
    dec bc                                        ; $60a3: $0b
    dec b                                         ; $60a4: $05
    sub a                                         ; $60a5: $97
    dec bc                                        ; $60a6: $0b
    dec b                                         ; $60a7: $05
    xor c                                         ; $60a8: $a9
    dec bc                                        ; $60a9: $0b
    dec b                                         ; $60aa: $05
    or a                                          ; $60ab: $b7
    dec bc                                        ; $60ac: $0b
    dec b                                         ; $60ad: $05
    call z, Call_000_050b                         ; $60ae: $cc $0b $05
    pop hl                                        ; $60b1: $e1
    dec bc                                        ; $60b2: $0b
    dec b                                         ; $60b3: $05
    ld a, [c]                                     ; $60b4: $f2
    dec bc                                        ; $60b5: $0b
    dec b                                         ; $60b6: $05
    nop                                           ; $60b7: $00
    inc c                                         ; $60b8: $0c
    dec b                                         ; $60b9: $05
    ld c, $0c                                     ; $60ba: $0e $0c
    dec b                                         ; $60bc: $05
    inc sp                                        ; $60bd: $33
    inc c                                         ; $60be: $0c
    dec b                                         ; $60bf: $05
    ld b, a                                       ; $60c0: $47
    inc c                                         ; $60c1: $0c
    dec b                                         ; $60c2: $05
    ld d, c                                       ; $60c3: $51
    inc c                                         ; $60c4: $0c
    dec b                                         ; $60c5: $05
    ld h, b                                       ; $60c6: $60
    inc c                                         ; $60c7: $0c
    dec b                                         ; $60c8: $05
    ld [hl], h                                    ; $60c9: $74
    inc c                                         ; $60ca: $0c
    dec b                                         ; $60cb: $05
    sub e                                         ; $60cc: $93
    inc c                                         ; $60cd: $0c
    dec b                                         ; $60ce: $05
    and l                                         ; $60cf: $a5
    inc c                                         ; $60d0: $0c
    dec b                                         ; $60d1: $05
    ret nc                                        ; $60d2: $d0

    inc c                                         ; $60d3: $0c
    dec b                                         ; $60d4: $05
    jp hl                                         ; $60d5: $e9


    inc c                                         ; $60d6: $0c
    dec b                                         ; $60d7: $05
    ei                                            ; $60d8: $fb
    inc c                                         ; $60d9: $0c
    dec b                                         ; $60da: $05
    dec e                                         ; $60db: $1d
    dec c                                         ; $60dc: $0d
    dec b                                         ; $60dd: $05
    ld [hl], $0d                                  ; $60de: $36 $0d
    dec b                                         ; $60e0: $05
    ld d, h                                       ; $60e1: $54
    dec c                                         ; $60e2: $0d
    dec b                                         ; $60e3: $05
    ld l, c                                       ; $60e4: $69
    dec c                                         ; $60e5: $0d
    dec b                                         ; $60e6: $05
    add l                                         ; $60e7: $85
    dec c                                         ; $60e8: $0d
    dec b                                         ; $60e9: $05
    sbc a                                         ; $60ea: $9f
    dec c                                         ; $60eb: $0d
    dec b                                         ; $60ec: $05
    or h                                          ; $60ed: $b4
    dec c                                         ; $60ee: $0d
    dec b                                         ; $60ef: $05
    ret z                                         ; $60f0: $c8

    dec c                                         ; $60f1: $0d
    dec b                                         ; $60f2: $05
    db $dd                                        ; $60f3: $dd
    dec c                                         ; $60f4: $0d
    dec b                                         ; $60f5: $05
    rst $38                                       ; $60f6: $ff
    dec c                                         ; $60f7: $0d
    dec b                                         ; $60f8: $05
    ld h, $0e                                     ; $60f9: $26 $0e
    dec b                                         ; $60fb: $05
    scf                                           ; $60fc: $37
    ld c, $05                                     ; $60fd: $0e $05
    ld c, l                                       ; $60ff: $4d
    ld c, $05                                     ; $6100: $0e $05
    ld h, l                                       ; $6102: $65
    ld c, $05                                     ; $6103: $0e $05
    add l                                         ; $6105: $85
    ld c, $05                                     ; $6106: $0e $05
    sbc a                                         ; $6108: $9f
    ld c, $05                                     ; $6109: $0e $05
    cp d                                          ; $610b: $ba
    ld c, $05                                     ; $610c: $0e $05
    rst $10                                       ; $610e: $d7
    ld c, $05                                     ; $610f: $0e $05
    db $eb                                        ; $6111: $eb
    ld c, $05                                     ; $6112: $0e $05
    ld d, e                                       ; $6114: $53
    rrca                                          ; $6115: $0f
    dec b                                         ; $6116: $05
    xor c                                         ; $6117: $a9
    rrca                                          ; $6118: $0f
    dec b                                         ; $6119: $05
    pop bc                                        ; $611a: $c1
    rrca                                          ; $611b: $0f
    dec b                                         ; $611c: $05
    rst $20                                       ; $611d: $e7
    rrca                                          ; $611e: $0f
    dec b                                         ; $611f: $05
    rrca                                          ; $6120: $0f
    db $10                                        ; $6121: $10
    dec b                                         ; $6122: $05
    ld b, b                                       ; $6123: $40
    db $10                                        ; $6124: $10
    dec b                                         ; $6125: $05
    ld l, e                                       ; $6126: $6b
    db $10                                        ; $6127: $10
    dec b                                         ; $6128: $05
    adc d                                         ; $6129: $8a
    db $10                                        ; $612a: $10
    dec b                                         ; $612b: $05
    xor a                                         ; $612c: $af
    db $10                                        ; $612d: $10
    dec b                                         ; $612e: $05
    ret nc                                        ; $612f: $d0

    db $10                                        ; $6130: $10
    dec b                                         ; $6131: $05
    ld a, [c]                                     ; $6132: $f2
    db $10                                        ; $6133: $10
    dec b                                         ; $6134: $05
    dec d                                         ; $6135: $15
    ld de, $3105                                  ; $6136: $11 $05 $31
    ld de, $4505                                  ; $6139: $11 $05 $45
    ld de, $5b05                                  ; $613c: $11 $05 $5b
    ld de, $8405                                  ; $613f: $11 $05 $84
    ld de, $c805                                  ; $6142: $11 $05 $c8
    ld de, $1905                                  ; $6145: $11 $05 $19
    ld [de], a                                    ; $6148: $12
    dec b                                         ; $6149: $05
    ld b, [hl]                                    ; $614a: $46
    ld [de], a                                    ; $614b: $12
    dec b                                         ; $614c: $05
    ld a, b                                       ; $614d: $78
    ld [de], a                                    ; $614e: $12
    dec b                                         ; $614f: $05
    or [hl]                                       ; $6150: $b6
    ld [de], a                                    ; $6151: $12
    dec b                                         ; $6152: $05
    di                                            ; $6153: $f3
    ld [de], a                                    ; $6154: $12
    dec b                                         ; $6155: $05
    ld c, b                                       ; $6156: $48
    inc de                                        ; $6157: $13
    dec b                                         ; $6158: $05
    adc l                                         ; $6159: $8d
    inc de                                        ; $615a: $13
    dec b                                         ; $615b: $05
    db $ec                                        ; $615c: $ec
    inc de                                        ; $615d: $13
    dec b                                         ; $615e: $05
    ld e, d                                       ; $615f: $5a
    inc d                                         ; $6160: $14
    dec b                                         ; $6161: $05
    cp [hl]                                       ; $6162: $be
    inc d                                         ; $6163: $14
    dec b                                         ; $6164: $05
    ld a, [de]                                    ; $6165: $1a
    dec d                                         ; $6166: $15
    dec b                                         ; $6167: $05
    ld [hl], e                                    ; $6168: $73
    dec d                                         ; $6169: $15
    dec b                                         ; $616a: $05
    call nz, Call_000_0515                        ; $616b: $c4 $15 $05
    db $10                                        ; $616e: $10

Call_059_616f:
    ld d, $05                                     ; $616f: $16 $05
    ld a, c                                       ; $6171: $79
    ld d, $05                                     ; $6172: $16 $05
    add $16                                       ; $6174: $c6 $16
    dec b                                         ; $6176: $05
    ld hl, $0517                                  ; $6177: $21 $17 $05
    ld l, h                                       ; $617a: $6c
    rla                                           ; $617b: $17
    dec b                                         ; $617c: $05
    cp [hl]                                       ; $617d: $be
    rla                                           ; $617e: $17
    dec b                                         ; $617f: $05
    inc e                                         ; $6180: $1c
    jr @+$07                                      ; $6181: $18 $05

    halt                                          ; $6183: $76
    jr jr_059_618b                                ; $6184: $18 $05

    db $d3                                        ; $6186: $d3
    jr jr_059_618e                                ; $6187: $18 $05

    ld a, $19                                     ; $6189: $3e $19

jr_059_618b:
    dec b                                         ; $618b: $05
    or l                                          ; $618c: $b5
    add hl, de                                    ; $618d: $19

jr_059_618e:
    dec b                                         ; $618e: $05
    db $fc                                        ; $618f: $fc
    add hl, de                                    ; $6190: $19
    dec b                                         ; $6191: $05
    dec c                                         ; $6192: $0d
    ld a, [de]                                    ; $6193: $1a
    dec b                                         ; $6194: $05
    ld [de], a                                    ; $6195: $12
    ld a, [de]                                    ; $6196: $1a
    dec b                                         ; $6197: $05
    rla                                           ; $6198: $17
    ld a, [de]                                    ; $6199: $1a
    dec b                                         ; $619a: $05
    dec e                                         ; $619b: $1d
    ld a, [de]                                    ; $619c: $1a
    dec b                                         ; $619d: $05
    dec hl                                        ; $619e: $2b
    ld a, [de]                                    ; $619f: $1a
    dec b                                         ; $61a0: $05
    scf                                           ; $61a1: $37
    ld a, [de]                                    ; $61a2: $1a
    dec b                                         ; $61a3: $05
    ld e, d                                       ; $61a4: $5a
    ld a, [de]                                    ; $61a5: $1a
    dec b                                         ; $61a6: $05
    ld a, a                                       ; $61a7: $7f
    ld a, [de]                                    ; $61a8: $1a
    dec b                                         ; $61a9: $05
    jp $051a                                      ; $61aa: $c3 $1a $05


    push af                                       ; $61ad: $f5
    ld a, [de]                                    ; $61ae: $1a
    dec b                                         ; $61af: $05
    jr nz, jr_059_61cd                            ; $61b0: $20 $1b

    dec b                                         ; $61b2: $05
    ld d, h                                       ; $61b3: $54
    dec de                                        ; $61b4: $1b
    dec b                                         ; $61b5: $05
    sbc d                                         ; $61b6: $9a
    dec de                                        ; $61b7: $1b
    dec b                                         ; $61b8: $05
    rst $10                                       ; $61b9: $d7
    dec de                                        ; $61ba: $1b
    dec b                                         ; $61bb: $05
    rlca                                          ; $61bc: $07
    inc e                                         ; $61bd: $1c
    dec b                                         ; $61be: $05
    dec hl                                        ; $61bf: $2b
    inc e                                         ; $61c0: $1c
    dec b                                         ; $61c1: $05
    ld e, b                                       ; $61c2: $58
    inc e                                         ; $61c3: $1c
    dec b                                         ; $61c4: $05
    ld a, a                                       ; $61c5: $7f
    inc e                                         ; $61c6: $1c
    dec b                                         ; $61c7: $05
    xor b                                         ; $61c8: $a8
    inc e                                         ; $61c9: $1c
    dec b                                         ; $61ca: $05
    ret                                           ; $61cb: $c9


    inc e                                         ; $61cc: $1c

jr_059_61cd:
    dec b                                         ; $61cd: $05
    rst $20                                       ; $61ce: $e7
    inc e                                         ; $61cf: $1c
    dec b                                         ; $61d0: $05
    db $10                                        ; $61d1: $10
    dec e                                         ; $61d2: $1d
    dec b                                         ; $61d3: $05
    ld b, h                                       ; $61d4: $44
    dec e                                         ; $61d5: $1d
    dec b                                         ; $61d6: $05
    ld h, e                                       ; $61d7: $63
    dec e                                         ; $61d8: $1d
    dec b                                         ; $61d9: $05
    ld [hl], l                                    ; $61da: $75
    dec e                                         ; $61db: $1d
    dec b                                         ; $61dc: $05
    add [hl]                                      ; $61dd: $86
    dec e                                         ; $61de: $1d
    dec b                                         ; $61df: $05
    xor l                                         ; $61e0: $ad
    dec e                                         ; $61e1: $1d
    dec b                                         ; $61e2: $05
    sub $1d                                       ; $61e3: $d6 $1d
    dec b                                         ; $61e5: $05
    push af                                       ; $61e6: $f5
    dec e                                         ; $61e7: $1d
    dec b                                         ; $61e8: $05
    rrca                                          ; $61e9: $0f
    ld e, $05                                     ; $61ea: $1e $05
    ld b, b                                       ; $61ec: $40
    ld e, $05                                     ; $61ed: $1e $05
    ld e, [hl]                                    ; $61ef: $5e
    ld e, $05                                     ; $61f0: $1e $05
    sbc d                                         ; $61f2: $9a
    ld e, $05                                     ; $61f3: $1e $05
    add $1e                                       ; $61f5: $c6 $1e
    dec b                                         ; $61f7: $05
    rst $20                                       ; $61f8: $e7
    ld e, $05                                     ; $61f9: $1e $05
    db $fd                                        ; $61fb: $fd
    ld e, $05                                     ; $61fc: $1e $05
    jr jr_059_621f                                ; $61fe: $18 $1f

    dec b                                         ; $6200: $05
    ld l, $1f                                     ; $6201: $2e $1f
    dec b                                         ; $6203: $05
    ld c, b                                       ; $6204: $48
    rra                                           ; $6205: $1f
    dec b                                         ; $6206: $05
    xor c                                         ; $6207: $a9
    rra                                           ; $6208: $1f
    dec b                                         ; $6209: $05
    push de                                       ; $620a: $d5
    rra                                           ; $620b: $1f
    dec b                                         ; $620c: $05
    push af                                       ; $620d: $f5
    rra                                           ; $620e: $1f
    dec b                                         ; $620f: $05
    db $fc                                        ; $6210: $fc
    rra                                           ; $6211: $1f
    dec b                                         ; $6212: $05
    ld [$0520], sp                                ; $6213: $08 $20 $05
    db $10                                        ; $6216: $10
    jr nz, @+$07                                  ; $6217: $20 $05

    rla                                           ; $6219: $17
    jr nz, @+$07                                  ; $621a: $20 $05

    dec e                                         ; $621c: $1d
    jr nz, @+$07                                  ; $621d: $20 $05

jr_059_621f:
    inc hl                                        ; $621f: $23
    jr nz, @+$07                                  ; $6220: $20 $05

    inc l                                         ; $6222: $2c
    jr nz, @+$07                                  ; $6223: $20 $05

    add hl, sp                                    ; $6225: $39
    jr nz, @+$07                                  ; $6226: $20 $05

    ld b, [hl]                                    ; $6228: $46
    jr nz, @+$07                                  ; $6229: $20 $05

    ld c, [hl]                                    ; $622b: $4e
    jr nz, @+$07                                  ; $622c: $20 $05

    ld e, b                                       ; $622e: $58
    jr nz, @+$07                                  ; $622f: $20 $05

    ld h, l                                       ; $6231: $65
    jr nz, @+$07                                  ; $6232: $20 $05

    ld [hl], h                                    ; $6234: $74
    jr nz, @+$07                                  ; $6235: $20 $05

    add e                                         ; $6237: $83
    jr nz, @+$07                                  ; $6238: $20 $05

    and b                                         ; $623a: $a0
    jr nz, @+$07                                  ; $623b: $20 $05

    cp [hl]                                       ; $623d: $be
    jr nz, @+$07                                  ; $623e: $20 $05

    ret nc                                        ; $6240: $d0

    jr nz, @+$07                                  ; $6241: $20 $05

    pop hl                                        ; $6243: $e1
    jr nz, @+$07                                  ; $6244: $20 $05

    ld a, [c]                                     ; $6246: $f2
    jr nz, @+$07                                  ; $6247: $20 $05

    inc bc                                        ; $6249: $03
    ld hl, $2a05                                  ; $624a: $21 $05 $2a
    ld hl, $4a05                                  ; $624d: $21 $05 $4a
    ld hl, $7805                                  ; $6250: $21 $05 $78
    ld hl, $8d05                                  ; $6253: $21 $05 $8d
    ld hl, $b805                                  ; $6256: $21 $05 $b8
    ld hl, $c605                                  ; $6259: $21 $05 $c6
    ld hl, $d105                                  ; $625c: $21 $05 $d1
    ld hl, $dd05                                  ; $625f: $21 $05 $dd
    ld hl, $ea05                                  ; $6262: $21 $05 $ea
    ld hl, $f505                                  ; $6265: $21 $05 $f5
    ld hl, $1d05                                  ; $6268: $21 $05 $1d
    ld [hl+], a                                   ; $626b: $22
    dec b                                         ; $626c: $05
    ld b, l                                       ; $626d: $45
    ld [hl+], a                                   ; $626e: $22
    dec b                                         ; $626f: $05
    sbc h                                         ; $6270: $9c
    ld [hl+], a                                   ; $6271: $22
    dec b                                         ; $6272: $05
    xor a                                         ; $6273: $af
    ld [hl+], a                                   ; $6274: $22
    dec b                                         ; $6275: $05
    cp e                                          ; $6276: $bb
    ld [hl+], a                                   ; $6277: $22
    dec b                                         ; $6278: $05
    ld [c], a                                     ; $6279: $e2
    ld [hl+], a                                   ; $627a: $22
    dec b                                         ; $627b: $05
    xor $22                                       ; $627c: $ee $22
    dec b                                         ; $627e: $05
    ei                                            ; $627f: $fb
    ld [hl+], a                                   ; $6280: $22
    dec b                                         ; $6281: $05
    ld bc, $0523                                  ; $6282: $01 $23 $05
    db $10                                        ; $6285: $10
    inc hl                                        ; $6286: $23
    dec b                                         ; $6287: $05
    ld [hl+], a                                   ; $6288: $22
    inc hl                                        ; $6289: $23
    dec b                                         ; $628a: $05
    dec hl                                        ; $628b: $2b
    inc hl                                        ; $628c: $23
    dec b                                         ; $628d: $05
    ld sp, $0523                                  ; $628e: $31 $23 $05
    add hl, sp                                    ; $6291: $39
    inc hl                                        ; $6292: $23
    dec b                                         ; $6293: $05
    ld b, d                                       ; $6294: $42
    inc hl                                        ; $6295: $23
    dec b                                         ; $6296: $05
    ld b, a                                       ; $6297: $47
    inc hl                                        ; $6298: $23
    dec b                                         ; $6299: $05
    ld c, b                                       ; $629a: $48
    inc hl                                        ; $629b: $23
    dec b                                         ; $629c: $05
    ld c, c                                       ; $629d: $49
    inc hl                                        ; $629e: $23
    dec b                                         ; $629f: $05
    ld c, d                                       ; $62a0: $4a
    inc hl                                        ; $62a1: $23
    dec b                                         ; $62a2: $05
    ld c, e                                       ; $62a3: $4b
    inc hl                                        ; $62a4: $23
    dec b                                         ; $62a5: $05
    ld c, h                                       ; $62a6: $4c
    inc hl                                        ; $62a7: $23
    dec b                                         ; $62a8: $05
    ld c, l                                       ; $62a9: $4d
    inc hl                                        ; $62aa: $23
    dec b                                         ; $62ab: $05
    ld c, [hl]                                    ; $62ac: $4e
    inc hl                                        ; $62ad: $23
    dec b                                         ; $62ae: $05
    ld c, a                                       ; $62af: $4f
    inc hl                                        ; $62b0: $23
    dec b                                         ; $62b1: $05
    ld d, b                                       ; $62b2: $50
    inc hl                                        ; $62b3: $23
    dec b                                         ; $62b4: $05
    ld d, c                                       ; $62b5: $51
    inc hl                                        ; $62b6: $23
    dec b                                         ; $62b7: $05
    ld d, d                                       ; $62b8: $52
    inc hl                                        ; $62b9: $23
    dec b                                         ; $62ba: $05
    ld d, e                                       ; $62bb: $53
    inc hl                                        ; $62bc: $23
    dec b                                         ; $62bd: $05
    ld d, h                                       ; $62be: $54
    inc hl                                        ; $62bf: $23
    dec b                                         ; $62c0: $05
    ld d, l                                       ; $62c1: $55
    inc hl                                        ; $62c2: $23
    dec b                                         ; $62c3: $05
    ld d, [hl]                                    ; $62c4: $56
    inc hl                                        ; $62c5: $23
    dec b                                         ; $62c6: $05
    ld d, a                                       ; $62c7: $57
    inc hl                                        ; $62c8: $23
    dec b                                         ; $62c9: $05
    ld e, b                                       ; $62ca: $58
    inc hl                                        ; $62cb: $23
    dec b                                         ; $62cc: $05
    ld e, c                                       ; $62cd: $59
    inc hl                                        ; $62ce: $23
    dec b                                         ; $62cf: $05
    ld e, d                                       ; $62d0: $5a
    inc hl                                        ; $62d1: $23
    dec b                                         ; $62d2: $05
    ld e, e                                       ; $62d3: $5b
    inc hl                                        ; $62d4: $23
    dec b                                         ; $62d5: $05
    ld e, h                                       ; $62d6: $5c
    inc hl                                        ; $62d7: $23
    dec b                                         ; $62d8: $05
    ld e, l                                       ; $62d9: $5d
    inc hl                                        ; $62da: $23
    dec b                                         ; $62db: $05
    ld e, [hl]                                    ; $62dc: $5e
    inc hl                                        ; $62dd: $23
    dec b                                         ; $62de: $05
    ld e, a                                       ; $62df: $5f
    inc hl                                        ; $62e0: $23
    dec b                                         ; $62e1: $05
    ld h, b                                       ; $62e2: $60
    inc hl                                        ; $62e3: $23
    dec b                                         ; $62e4: $05
    ld h, c                                       ; $62e5: $61
    inc hl                                        ; $62e6: $23
    dec b                                         ; $62e7: $05
    ld h, d                                       ; $62e8: $62
    inc hl                                        ; $62e9: $23
    dec b                                         ; $62ea: $05
    ld h, e                                       ; $62eb: $63
    inc hl                                        ; $62ec: $23
    dec b                                         ; $62ed: $05
    ld h, h                                       ; $62ee: $64
    inc hl                                        ; $62ef: $23
    dec b                                         ; $62f0: $05
    ld h, l                                       ; $62f1: $65
    inc hl                                        ; $62f2: $23
    dec b                                         ; $62f3: $05
    ld h, [hl]                                    ; $62f4: $66
    inc hl                                        ; $62f5: $23
    dec b                                         ; $62f6: $05
    ld h, a                                       ; $62f7: $67
    inc hl                                        ; $62f8: $23
    dec b                                         ; $62f9: $05
    ld l, b                                       ; $62fa: $68
    inc hl                                        ; $62fb: $23
    dec b                                         ; $62fc: $05
    ld l, c                                       ; $62fd: $69
    inc hl                                        ; $62fe: $23
    dec b                                         ; $62ff: $05
    ld l, d                                       ; $6300: $6a
    inc hl                                        ; $6301: $23
    dec b                                         ; $6302: $05
    ld l, e                                       ; $6303: $6b
    inc hl                                        ; $6304: $23
    dec b                                         ; $6305: $05
    ld l, h                                       ; $6306: $6c
    inc hl                                        ; $6307: $23
    dec b                                         ; $6308: $05
    ld l, l                                       ; $6309: $6d
    inc hl                                        ; $630a: $23
    dec b                                         ; $630b: $05
    ld l, [hl]                                    ; $630c: $6e
    inc hl                                        ; $630d: $23
    dec b                                         ; $630e: $05
    ld l, a                                       ; $630f: $6f
    inc hl                                        ; $6310: $23
    dec b                                         ; $6311: $05
    ld [hl], b                                    ; $6312: $70
    inc hl                                        ; $6313: $23
    dec b                                         ; $6314: $05
    ld [hl], c                                    ; $6315: $71
    inc hl                                        ; $6316: $23
    dec b                                         ; $6317: $05
    ld a, b                                       ; $6318: $78
    inc hl                                        ; $6319: $23
    dec b                                         ; $631a: $05
    add d                                         ; $631b: $82
    inc hl                                        ; $631c: $23
    dec b                                         ; $631d: $05
    sub b                                         ; $631e: $90
    inc hl                                        ; $631f: $23
    dec b                                         ; $6320: $05
    sbc [hl]                                      ; $6321: $9e
    inc hl                                        ; $6322: $23
    dec b                                         ; $6323: $05
    xor c                                         ; $6324: $a9
    inc hl                                        ; $6325: $23
    dec b                                         ; $6326: $05
    or d                                          ; $6327: $b2
    inc hl                                        ; $6328: $23
    dec b                                         ; $6329: $05
    pop bc                                        ; $632a: $c1
    inc hl                                        ; $632b: $23
    dec b                                         ; $632c: $05
    jp nz, Jump_000_0523                          ; $632d: $c2 $23 $05

    jp Jump_000_0523                              ; $6330: $c3 $23 $05


    call nz, Call_000_0523                        ; $6333: $c4 $23 $05
    push bc                                       ; $6336: $c5
    inc hl                                        ; $6337: $23
    dec b                                         ; $6338: $05
    add $23                                       ; $6339: $c6 $23
    dec b                                         ; $633b: $05
    rst $00                                       ; $633c: $c7
    inc hl                                        ; $633d: $23
    dec b                                         ; $633e: $05
    ret z                                         ; $633f: $c8

    inc hl                                        ; $6340: $23
    dec b                                         ; $6341: $05
    ret                                           ; $6342: $c9


    inc hl                                        ; $6343: $23
    dec b                                         ; $6344: $05
    jp z, Jump_000_0523                           ; $6345: $ca $23 $05

    sla e                                         ; $6348: $cb $23
    dec b                                         ; $634a: $05
    call z, Call_000_0523                         ; $634b: $cc $23 $05
    call nc, Call_000_0523                        ; $634e: $d4 $23 $05
    push de                                       ; $6351: $d5
    inc hl                                        ; $6352: $23
    dec b                                         ; $6353: $05
    sub $23                                       ; $6354: $d6 $23
    dec b                                         ; $6356: $05
    rst $10                                       ; $6357: $d7
    inc hl                                        ; $6358: $23
    dec b                                         ; $6359: $05
    ret c                                         ; $635a: $d8

    inc hl                                        ; $635b: $23
    dec b                                         ; $635c: $05
    reti                                          ; $635d: $d9


    inc hl                                        ; $635e: $23
    dec b                                         ; $635f: $05
    jp c, Jump_000_0523                           ; $6360: $da $23 $05

    db $db                                        ; $6363: $db
    inc hl                                        ; $6364: $23
    dec b                                         ; $6365: $05
    call c, Call_000_0523                         ; $6366: $dc $23 $05
    db $dd                                        ; $6369: $dd
    inc hl                                        ; $636a: $23
    dec b                                         ; $636b: $05
    sbc $23                                       ; $636c: $de $23
    dec b                                         ; $636e: $05
    rst $18                                       ; $636f: $df
    inc hl                                        ; $6370: $23
    dec b                                         ; $6371: $05
    ldh [rNR44], a                                ; $6372: $e0 $23
    dec b                                         ; $6374: $05
    pop hl                                        ; $6375: $e1
    inc hl                                        ; $6376: $23
    dec b                                         ; $6377: $05
    ld [c], a                                     ; $6378: $e2
    inc hl                                        ; $6379: $23
    dec b                                         ; $637a: $05
    db $e3                                        ; $637b: $e3
    inc hl                                        ; $637c: $23
    dec b                                         ; $637d: $05
    db $e4                                        ; $637e: $e4
    inc hl                                        ; $637f: $23
    dec b                                         ; $6380: $05
    push hl                                       ; $6381: $e5
    inc hl                                        ; $6382: $23
    dec b                                         ; $6383: $05
    and $23                                       ; $6384: $e6 $23
    dec b                                         ; $6386: $05
    rst $20                                       ; $6387: $e7
    inc hl                                        ; $6388: $23
    dec b                                         ; $6389: $05
    add sp, $23                                   ; $638a: $e8 $23
    dec b                                         ; $638c: $05
    jp hl                                         ; $638d: $e9


    inc hl                                        ; $638e: $23
    dec b                                         ; $638f: $05
    db $f4                                        ; $6390: $f4
    inc hl                                        ; $6391: $23
    dec b                                         ; $6392: $05
    push af                                       ; $6393: $f5
    inc hl                                        ; $6394: $23
    dec b                                         ; $6395: $05
    ld bc, $0524                                  ; $6396: $01 $24 $05
    inc c                                         ; $6399: $0c
    inc h                                         ; $639a: $24
    dec b                                         ; $639b: $05
    add hl, de                                    ; $639c: $19
    inc h                                         ; $639d: $24
    dec b                                         ; $639e: $05
    inc hl                                        ; $639f: $23
    inc h                                         ; $63a0: $24
    dec b                                         ; $63a1: $05
    inc h                                         ; $63a2: $24
    inc h                                         ; $63a3: $24
    dec b                                         ; $63a4: $05
    dec h                                         ; $63a5: $25
    inc h                                         ; $63a6: $24
    dec b                                         ; $63a7: $05
    ld h, $24                                     ; $63a8: $26 $24
    dec b                                         ; $63aa: $05
    daa                                           ; $63ab: $27
    inc h                                         ; $63ac: $24
    dec b                                         ; $63ad: $05
    jr z, jr_059_63d4                             ; $63ae: $28 $24

    dec b                                         ; $63b0: $05
    add hl, hl                                    ; $63b1: $29
    inc h                                         ; $63b2: $24
    dec b                                         ; $63b3: $05
    ld a, [hl+]                                   ; $63b4: $2a
    inc h                                         ; $63b5: $24
    dec b                                         ; $63b6: $05
    dec hl                                        ; $63b7: $2b
    inc h                                         ; $63b8: $24
    dec b                                         ; $63b9: $05
    inc l                                         ; $63ba: $2c
    inc h                                         ; $63bb: $24
    dec b                                         ; $63bc: $05
    dec l                                         ; $63bd: $2d
    inc h                                         ; $63be: $24
    dec b                                         ; $63bf: $05
    ld l, $24                                     ; $63c0: $2e $24
    dec b                                         ; $63c2: $05
    cpl                                           ; $63c3: $2f
    inc h                                         ; $63c4: $24
    dec b                                         ; $63c5: $05
    jr nc, jr_059_63ec                            ; $63c6: $30 $24

    dec b                                         ; $63c8: $05
    ld sp, $0524                                  ; $63c9: $31 $24 $05
    ld [hl-], a                                   ; $63cc: $32
    inc h                                         ; $63cd: $24
    dec b                                         ; $63ce: $05
    inc sp                                        ; $63cf: $33
    inc h                                         ; $63d0: $24
    dec b                                         ; $63d1: $05
    inc [hl]                                      ; $63d2: $34
    inc h                                         ; $63d3: $24

jr_059_63d4:
    dec b                                         ; $63d4: $05
    dec [hl]                                      ; $63d5: $35
    inc h                                         ; $63d6: $24
    dec b                                         ; $63d7: $05
    add hl, sp                                    ; $63d8: $39
    inc h                                         ; $63d9: $24
    dec b                                         ; $63da: $05
    ld a, [hl-]                                   ; $63db: $3a
    inc h                                         ; $63dc: $24
    dec b                                         ; $63dd: $05
    dec sp                                        ; $63de: $3b
    inc h                                         ; $63df: $24
    dec b                                         ; $63e0: $05
    inc a                                         ; $63e1: $3c
    inc h                                         ; $63e2: $24
    dec b                                         ; $63e3: $05
    dec a                                         ; $63e4: $3d
    inc h                                         ; $63e5: $24
    ld d, [hl]                                    ; $63e6: $56
    ld d, h                                       ; $63e7: $54
    ld d, l                                       ; $63e8: $55
    add c                                         ; $63e9: $81
    and d                                         ; $63ea: $a2
    and l                                         ; $63eb: $a5

jr_059_63ec:
    and [hl]                                      ; $63ec: $a6
    and a                                         ; $63ed: $a7
    xor b                                         ; $63ee: $a8
    xor c                                         ; $63ef: $a9
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
    ret nz                                        ; $63ff: $c0

    pop bc                                        ; $6400: $c1
    jp nz, $c4c3                                  ; $6401: $c2 $c3 $c4

    add $c7                                       ; $6404: $c6 $c7
    ret                                           ; $6406: $c9


    jp z, $d1cc                                   ; $6407: $ca $cc $d1

    jp nc, $d6d5                                  ; $640a: $d2 $d5 $d6

    rst $10                                       ; $640d: $d7
    ret c                                         ; $640e: $d8

    reti                                          ; $640f: $d9


    jp c, $dfdc                                   ; $6410: $da $dc $df

    ldh [$e2], a                                  ; $6413: $e0 $e2
    db $e3                                        ; $6415: $e3
    and $e7                                       ; $6416: $e6 $e7
    rst $30                                       ; $6418: $f7
    ld hl, sp-$06                                 ; $6419: $f8 $fa
    cp $00                                        ; $641b: $fe $00
    adc $d0                                       ; $641d: $ce $d0
    ld bc, $0302                                  ; $641f: $01 $02 $03
    inc b                                         ; $6422: $04
    dec b                                         ; $6423: $05
    ld b, $07                                     ; $6424: $06 $07
    ld [$0a09], sp                                ; $6426: $08 $09 $0a
    dec bc                                        ; $6429: $0b
    inc c                                         ; $642a: $0c
    dec c                                         ; $642b: $0d
    ld c, $0f                                     ; $642c: $0e $0f
    db $10                                        ; $642e: $10
    ld de, $1312                                  ; $642f: $11 $12 $13
    inc d                                         ; $6432: $14
    dec d                                         ; $6433: $15
    ld d, $17                                     ; $6434: $16 $17

jr_059_6436:
    jr @+$1b                                      ; $6436: $18 $19

    ld a, [de]                                    ; $6438: $1a
    cp a                                          ; $6439: $bf
    push bc                                       ; $643a: $c5
    rst $08                                       ; $643b: $cf
    db $d3                                        ; $643c: $d3
    add e                                         ; $643d: $83
    and c                                         ; $643e: $a1
    ret z                                         ; $643f: $c8

    set 1, l                                      ; $6440: $cb $cd
    call nc, $1c1b                                ; $6442: $d4 $1b $1c
    dec e                                         ; $6445: $1d
    ld e, $1f                                     ; $6446: $1e $1f
    jr nz, @+$23                                  ; $6448: $20 $21

    ld [hl+], a                                   ; $644a: $22
    inc hl                                        ; $644b: $23
    inc h                                         ; $644c: $24
    dec h                                         ; $644d: $25
    ld h, $27                                     ; $644e: $26 $27
    jr z, jr_059_6436                             ; $6450: $28 $e4

    add hl, hl                                    ; $6452: $29
    ld a, [hl+]                                   ; $6453: $2a
    dec hl                                        ; $6454: $2b
    inc l                                         ; $6455: $2c
    dec l                                         ; $6456: $2d
    ld l, $2f                                     ; $6457: $2e $2f
    jr nc, jr_059_648c                            ; $6459: $30 $31

    ld [hl-], a                                   ; $645b: $32
    inc sp                                        ; $645c: $33
    inc [hl]                                      ; $645d: $34
    xor h                                         ; $645e: $ac
    dec [hl]                                      ; $645f: $35
    ld [$3736], a                                 ; $6460: $ea $36 $37
    jr c, @+$3b                                   ; $6463: $38 $39

    ld a, [hl-]                                   ; $6465: $3a
    ldh a, [$3b]                                  ; $6466: $f0 $3b
    add sp, -$07                                  ; $6468: $e8 $f9
    or $ae                                        ; $646a: $f6 $ae
    db $ed                                        ; $646c: $ed
    rst $38                                       ; $646d: $ff
    inc a                                         ; $646e: $3c
    ld a, [c]                                     ; $646f: $f2
    dec a                                         ; $6470: $3d
    ld a, $3f                                     ; $6471: $3e $3f
    ld b, b                                       ; $6473: $40
    ld b, c                                       ; $6474: $41
    push af                                       ; $6475: $f5
    db $eb                                        ; $6476: $eb
    db $ec                                        ; $6477: $ec
    ld b, d                                       ; $6478: $42
    ld b, e                                       ; $6479: $43
    rst $28                                       ; $647a: $ef
    db $fd                                        ; $647b: $fd
    ld b, h                                       ; $647c: $44
    di                                            ; $647d: $f3
    ld b, l                                       ; $647e: $45
    push hl                                       ; $647f: $e5
    ld b, [hl]                                    ; $6480: $46
    xor $f4                                       ; $6481: $ee $f4
    ld b, a                                       ; $6483: $47
    jp hl                                         ; $6484: $e9


    ld c, b                                       ; $6485: $48
    pop hl                                        ; $6486: $e1
    ld c, c                                       ; $6487: $49
    ld c, d                                       ; $6488: $4a
    and b                                         ; $6489: $a0
    ld c, e                                       ; $648a: $4b
    ld c, h                                       ; $648b: $4c

jr_059_648c:
    ld c, l                                       ; $648c: $4d
    ld c, [hl]                                    ; $648d: $4e
    ld c, a                                       ; $648e: $4f
    ld d, b                                       ; $648f: $50
    ld d, c                                       ; $6490: $51
    ld d, d                                       ; $6491: $52
    ld d, e                                       ; $6492: $53
    adc $b9                                       ; $6493: $ce $b9
    and $ac                                       ; $6495: $e6 $ac
    dec bc                                        ; $6497: $0b
    xor [hl]                                      ; $6498: $ae
    add hl, sp                                    ; $6499: $39
    db $eb                                        ; $649a: $eb
    add d                                         ; $649b: $82
    ld [hl], e                                    ; $649c: $73
    adc $39                                       ; $649d: $ce $39
    rrca                                          ; $649f: $0f
    nop                                           ; $64a0: $00
    xor $6f                                       ; $64a1: $ee $6f
    push de                                       ; $64a3: $d5
    ld e, d                                       ; $64a4: $5a
    ld a, [hl+]                                   ; $64a5: $2a
    ld h, a                                       ; $64a6: $67
    call nz, $f039                                ; $64a7: $c4 $39 $f0
    ld e, [hl]                                    ; $64aa: $5e
    nop                                           ; $64ab: $00
    ld e, $7f                                     ; $64ac: $1e $7f
    add a                                         ; $64ae: $87
    or l                                          ; $64af: $b5
    ld hl, sp+$23                                 ; $64b0: $f8 $23
    sub c                                         ; $64b2: $91
    sub [hl]                                      ; $64b3: $96
    ld h, a                                       ; $64b4: $67
    ld a, $e4                                     ; $64b5: $3e $e4
    dec sp                                        ; $64b7: $3b
    call c, Call_059_7390                         ; $64b8: $dc $90 $73
    xor [hl]                                      ; $64bb: $ae
    add hl, sp                                    ; $64bc: $39
    db $eb                                        ; $64bd: $eb
    add d                                         ; $64be: $82
    dec hl                                        ; $64bf: $2b
    adc $ba                                       ; $64c0: $ce $ba
    ldh [$9c], a                                  ; $64c2: $e0 $9c
    ld [hl], e                                    ; $64c4: $73
    adc $03                                       ; $64c5: $ce $03
    ld e, $e3                                     ; $64c7: $1e $e3
    or [hl]                                       ; $64c9: $b6
    dec c                                         ; $64ca: $0d
    nop                                           ; $64cb: $00
    cp h                                          ; $64cc: $bc
    ret z                                         ; $64cd: $c8

    cp d                                          ; $64ce: $ba
    rla                                           ; $64cf: $17
    nop                                           ; $64d0: $00
    ret nc                                        ; $64d1: $d0

    or [hl]                                       ; $64d2: $b6
    dec d                                         ; $64d3: $15
    nop                                           ; $64d4: $00
    ld c, $7f                                     ; $64d5: $0e $7f
    ld b, [hl]                                    ; $64d7: $46
    dec b                                         ; $64d8: $05
    nop                                           ; $64d9: $00
    cp h                                          ; $64da: $bc
    ld c, $dd                                     ; $64db: $0e $dd
    sub b                                         ; $64dd: $90
    ld e, e                                       ; $64de: $5b
    adc $3b                                       ; $64df: $ce $3b
    db $eb                                        ; $64e1: $eb
    sub [hl]                                      ; $64e2: $96
    dec bc                                        ; $64e3: $0b
    ld [bc], a                                    ; $64e4: $02
    db $fc                                        ; $64e5: $fc
    ld c, $dd                                     ; $64e6: $0e $dd
    sub b                                         ; $64e8: $90
    ld e, e                                       ; $64e9: $5b
    adc $3b                                       ; $64ea: $ce $3b
    db $eb                                        ; $64ec: $eb
    sub [hl]                                      ; $64ed: $96
    dec bc                                        ; $64ee: $0b
    ld [bc], a                                    ; $64ef: $02
    cp h                                          ; $64f0: $bc
    db $e3                                        ; $64f1: $e3
    add $ed                                       ; $64f2: $c6 $ed
    ld h, c                                       ; $64f4: $61
    jp z, $ada6                                   ; $64f5: $ca $a6 $ad

    ld bc, $e3bc                                  ; $64f8: $01 $bc $e3
    add $ed                                       ; $64fb: $c6 $ed
    ld h, c                                       ; $64fd: $61
    sbc d                                         ; $64fe: $9a
    ccf                                           ; $64ff: $3f
    ld l, l                                       ; $6500: $6d
    dec c                                         ; $6501: $0d
    nop                                           ; $6502: $00
    cp h                                          ; $6503: $bc
    db $e3                                        ; $6504: $e3
    add $ed                                       ; $6505: $c6 $ed
    ld h, c                                       ; $6507: $61
    sbc d                                         ; $6508: $9a
    ld a, b                                       ; $6509: $78
    xor $35                                       ; $650a: $ee $35
    nop                                           ; $650c: $00
    sbc [hl]                                      ; $650d: $9e
    rlca                                          ; $650e: $07
    cp e                                          ; $650f: $bb
    rst $30                                       ; $6510: $f7
    sbc h                                         ; $6511: $9c
    push bc                                       ; $6512: $c5
    ld h, c                                       ; $6513: $61
    jp z, $ada6                                   ; $6514: $ca $a6 $ad

    ld bc, $079e                                  ; $6517: $01 $9e $07
    cp e                                          ; $651a: $bb
    rst $30                                       ; $651b: $f7
    sbc h                                         ; $651c: $9c
    push bc                                       ; $651d: $c5
    ld h, c                                       ; $651e: $61
    sbc d                                         ; $651f: $9a
    ccf                                           ; $6520: $3f
    ld l, l                                       ; $6521: $6d
    dec c                                         ; $6522: $0d
    nop                                           ; $6523: $00
    sbc [hl]                                      ; $6524: $9e
    rlca                                          ; $6525: $07
    cp e                                          ; $6526: $bb
    rst $30                                       ; $6527: $f7
    sbc h                                         ; $6528: $9c
    push bc                                       ; $6529: $c5
    ld h, c                                       ; $652a: $61
    sbc d                                         ; $652b: $9a
    ld a, b                                       ; $652c: $78
    xor $35                                       ; $652d: $ee $35
    nop                                           ; $652f: $00
    sbc [hl]                                      ; $6530: $9e
    rlca                                          ; $6531: $07
    add e                                         ; $6532: $83
    db $ec                                        ; $6533: $ec
    cp l                                          ; $6534: $bd
    rst $20                                       ; $6535: $e7
    inc l                                         ; $6536: $2c
    ld c, $53                                     ; $6537: $0e $53
    ld [hl], $6d                                  ; $6539: $36 $6d
    dec c                                         ; $653b: $0d
    nop                                           ; $653c: $00
    sbc [hl]                                      ; $653d: $9e
    rlca                                          ; $653e: $07
    add e                                         ; $653f: $83
    db $ec                                        ; $6540: $ec
    cp l                                          ; $6541: $bd
    rst $20                                       ; $6542: $e7
    inc l                                         ; $6543: $2c
    ld c, $d3                                     ; $6544: $0e $d3
    db $fc                                        ; $6546: $fc
    ld l, c                                       ; $6547: $69
    ld l, e                                       ; $6548: $6b
    nop                                           ; $6549: $00
    sbc [hl]                                      ; $654a: $9e
    rlca                                          ; $654b: $07
    add e                                         ; $654c: $83
    db $ec                                        ; $654d: $ec
    cp l                                          ; $654e: $bd
    rst $20                                       ; $654f: $e7
    inc l                                         ; $6550: $2c
    ld c, $d3                                     ; $6551: $0e $d3
    call nz, $af73                                ; $6553: $c4 $73 $af
    ld bc, $599c                                  ; $6556: $01 $9c $59
    ld h, a                                       ; $6559: $67
    jr nc, jr_059_6586                            ; $655a: $30 $2a

    sbc e                                         ; $655c: $9b
    or [hl]                                       ; $655d: $b6
    ld b, $00                                     ; $655e: $06 $00
    sbc h                                         ; $6560: $9c
    ld e, c                                       ; $6561: $59
    ld h, a                                       ; $6562: $67
    jr nc, @+$6c                                  ; $6563: $30 $6a

    cp $b4                                        ; $6565: $fe $b4
    dec [hl]                                      ; $6567: $35
    nop                                           ; $6568: $00
    sbc h                                         ; $6569: $9c
    ld e, c                                       ; $656a: $59
    ld h, a                                       ; $656b: $67
    jr nc, jr_059_65d8                            ; $656c: $30 $6a

    ld [c], a                                     ; $656e: $e2
    cp c                                          ; $656f: $b9
    rst $10                                       ; $6570: $d7
    nop                                           ; $6571: $00
    sbc h                                         ; $6572: $9c
    cp e                                          ; $6573: $bb
    cp $2e                                        ; $6574: $fe $2e
    add e                                         ; $6576: $83
    db $ec                                        ; $6577: $ec
    cp b                                          ; $6578: $b8
    ld [hl], l                                    ; $6579: $75
    and d                                         ; $657a: $a2
    ld a, d                                       ; $657b: $7a
    add a                                         ; $657c: $87
    dec a                                         ; $657d: $3d
    nop                                           ; $657e: $00
    ld e, $ef                                     ; $657f: $1e $ef
    adc $39                                       ; $6581: $ce $39
    xor $ed                                       ; $6583: $ee $ed
    pop bc                                        ; $6585: $c1

jr_059_6586:
    sub h                                         ; $6586: $94
    cp a                                          ; $6587: $bf
    cp a                                          ; $6588: $bf
    dec [hl]                                      ; $6589: $35
    inc c                                         ; $658a: $0c
    nop                                           ; $658b: $00
    ld e, $ef                                     ; $658c: $1e $ef
    adc $39                                       ; $658e: $ce $39
    xor $ed                                       ; $6590: $ee $ed
    pop bc                                        ; $6592: $c1
    inc [hl]                                      ; $6593: $34
    rlca                                          ; $6594: $07
    sbc [hl]                                      ; $6595: $9e
    db $ed                                        ; $6596: $ed
    ld h, c                                       ; $6597: $61
    nop                                           ; $6598: $00
    cp h                                          ; $6599: $bc
    ld e, a                                       ; $659a: $5f
    add hl, bc                                    ; $659b: $09
    xor l                                         ; $659c: $ad
    push af                                       ; $659d: $f5
    cp b                                          ; $659e: $b8
    rst $10                                       ; $659f: $d7
    call nc, Call_059_6659                        ; $65a0: $d4 $59 $66
    cp l                                          ; $65a3: $bd
    daa                                           ; $65a4: $27
    inc sp                                        ; $65a5: $33
    nop                                           ; $65a6: $00
    ld c, $3f                                     ; $65a7: $0e $3f
    push bc                                       ; $65a9: $c5
    db $ed                                        ; $65aa: $ed
    ld h, c                                       ; $65ab: $61
    jp z, $ab71                                   ; $65ac: $ca $71 $ab

    rst $30                                       ; $65af: $f7
    ld e, $06                                     ; $65b0: $1e $06
    nop                                           ; $65b2: $00
    ret nc                                        ; $65b3: $d0

    dec l                                         ; $65b4: $2d
    inc a                                         ; $65b5: $3c
    ld hl, $fdf4                                  ; $65b6: $21 $f4 $fd
    xor l                                         ; $65b9: $ad
    pop de                                        ; $65ba: $d1
    jp z, Jump_000_0e37                           ; $65bb: $ca $37 $0e

    add hl, hl                                    ; $65be: $29
    ld c, e                                       ; $65bf: $4b
    sbc e                                         ; $65c0: $9b
    xor b                                         ; $65c1: $a8
    ld [hl], h                                    ; $65c2: $74
    ld [hl], b                                    ; $65c3: $70
    db $db                                        ; $65c4: $db
    add $73                                       ; $65c5: $c6 $73
    inc bc                                        ; $65c7: $03
    sbc h                                         ; $65c8: $9c
    ld e, e                                       ; $65c9: $5b
    db $e3                                        ; $65ca: $e3
    sbc h                                         ; $65cb: $9c
    ld d, a                                       ; $65cc: $57
    xor h                                         ; $65cd: $ac
    ldh a, [$84]                                  ; $65ce: $f0 $84
    ld a, [$1f99]                                 ; $65d0: $fa $99 $1f
    ld sp, $d56d                                  ; $65d3: $31 $6d $d5
    cp a                                          ; $65d6: $bf

jr_059_65d7:
    di                                            ; $65d7: $f3

jr_059_65d8:
    db $fd                                        ; $65d8: $fd
    or l                                          ; $65d9: $b5
    adc [hl]                                      ; $65da: $8e
    ld l, l                                       ; $65db: $6d
    ld d, d                                       ; $65dc: $52
    db $d3                                        ; $65dd: $d3
    ld c, l                                       ; $65de: $4d
    and l                                         ; $65df: $a5
    add e                                         ; $65e0: $83
    db $db                                        ; $65e1: $db
    ld [hl], $4a                                  ; $65e2: $36 $4a
    rst $20                                       ; $65e4: $e7
    dec hl                                        ; $65e5: $2b
    and c                                         ; $65e6: $a1
    add sp, -$02                                  ; $65e7: $e8 $fe
    ld a, e                                       ; $65e9: $7b
    dec l                                         ; $65ea: $2d
    and d                                         ; $65eb: $a2
    cp b                                          ; $65ec: $b8
    ld bc, $7f0e                                  ; $65ed: $01 $0e $7f
    ld b, [hl]                                    ; $65f0: $46
    push bc                                       ; $65f1: $c5
    cp l                                          ; $65f2: $bd
    dec d                                         ; $65f3: $15
    and l                                         ; $65f4: $a5
    ld e, b                                       ; $65f5: $58
    ld h, c                                       ; $65f6: $61
    push de                                       ; $65f7: $d5
    ld e, d                                       ; $65f8: $5a
    adc a                                         ; $65f9: $8f
    dec bc                                        ; $65fa: $0b
    nop                                           ; $65fb: $00
    db $fc                                        ; $65fc: $fc
    pop bc                                        ; $65fd: $c1
    ld a, [c]                                     ; $65fe: $f2
    add sp, $71                                   ; $65ff: $e8 $71
    ldh a, [$e5]                                  ; $6601: $f0 $e5
    ld sp, hl                                     ; $6603: $f9
    xor [hl]                                      ; $6604: $ae
    dec [hl]                                      ; $6605: $35
    adc $01                                       ; $6606: $ce $01
    rst $38                                       ; $6608: $ff
    add hl, sp                                    ; $6609: $39
    sub c                                         ; $660a: $91
    inc d                                         ; $660b: $14
    rst $08                                       ; $660c: $cf
    inc sp                                        ; $660d: $33
    sub [hl]                                      ; $660e: $96
    ld e, l                                       ; $660f: $5d
    nop                                           ; $6610: $00
    inc e                                         ; $6611: $1c
    push hl                                       ; $6612: $e5
    cp a                                          ; $6613: $bf
    ld [hl], $bd                                  ; $6614: $36 $bd
    inc hl                                        ; $6616: $23
    adc $d9                                       ; $6617: $ce $d9
    adc d                                         ; $6619: $8a
    sub d                                         ; $661a: $92
    rst $38                                       ; $661b: $ff
    dec sp                                        ; $661c: $3b
    rst $20                                       ; $661d: $e7
    ld [hl], e                                    ; $661e: $73
    dec bc                                        ; $661f: $0b
    cp d                                          ; $6620: $ba
    add h                                         ; $6621: $84
    daa                                           ; $6622: $27
    inc [hl]                                      ; $6623: $34
    pop de                                        ; $6624: $d1
    and $7f                                       ; $6625: $e6 $7f
    xor c                                         ; $6627: $a9
    jr z, jr_059_65d7                             ; $6628: $28 $ad

    xor h                                         ; $662a: $ac
    ld [hl], l                                    ; $662b: $75
    ld l, a                                       ; $662c: $6f
    inc de                                        ; $662d: $13
    sub l                                         ; $662e: $95
    sbc d                                         ; $662f: $9a
    adc $f9                                       ; $6630: $ce $f9
    or l                                          ; $6632: $b5
    cp $0b                                        ; $6633: $fe $0b
    nop                                           ; $6635: $00
    db $fc                                        ; $6636: $fc
    ld b, h                                       ; $6637: $44
    jp nz, Jump_059_5b9a                          ; $6638: $c2 $9a $5b

    ld a, [$442d]                                 ; $663b: $fa $2d $44
    sbc l                                         ; $663e: $9d
    add a                                         ; $663f: $87
    rst $10                                       ; $6640: $d7
    db $ec                                        ; $6641: $ec
    cp a                                          ; $6642: $bf
    ld l, $f1                                     ; $6643: $2e $f1
    inc de                                        ; $6645: $13
    add hl, bc                                    ; $6646: $09
    ld c, e                                       ; $6647: $4b
    inc e                                         ; $6648: $1c
    rst $20                                       ; $6649: $e7
    ld l, h                                       ; $664a: $6c
    cp $05                                        ; $664b: $fe $05
    add hl, bc                                    ; $664d: $09
    or [hl]                                       ; $664e: $b6
    dec h                                         ; $664f: $25
    ei                                            ; $6650: $fb
    sub c                                         ; $6651: $91
    rst $38                                       ; $6652: $ff
    db $fc                                        ; $6653: $fc
    pop hl                                        ; $6654: $e1
    ei                                            ; $6655: $fb
    sbc a                                         ; $6656: $9f
    ld d, h                                       ; $6657: $54
    db $ed                                        ; $6658: $ed

Call_059_6659:
    sub $1c                                       ; $6659: $d6 $1c
    sbc d                                         ; $665b: $9a
    reti                                          ; $665c: $d9


    jp hl                                         ; $665d: $e9


    dec [hl]                                      ; $665e: $35
    and e                                         ; $665f: $a3
    cp c                                          ; $6660: $b9
    or d                                          ; $6661: $b2
    ld e, b                                       ; $6662: $58
    ld b, e                                       ; $6663: $43
    cp h                                          ; $6664: $bc
    call nz, Call_059_5117                        ; $6665: $c4 $17 $51
    or d                                          ; $6668: $b2
    dec [hl]                                      ; $6669: $35
    and d                                         ; $666a: $a2
    ld d, d                                       ; $666b: $52
    adc d                                         ; $666c: $8a
    rst $30                                       ; $666d: $f7
    db $fd                                        ; $666e: $fd
    ld a, a                                       ; $666f: $7f
    rst $38                                       ; $6670: $ff
    sub a                                         ; $6671: $97
    ld l, h                                       ; $6672: $6c
    sbc h                                         ; $6673: $9c
    inc de                                        ; $6674: $13
    ld [$f9df], a                                 ; $6675: $ea $df $f9
    or $23                                        ; $6678: $f6 $23
    rst $38                                       ; $667a: $ff
    cp a                                          ; $667b: $bf
    db $e4                                        ; $667c: $e4
    ld de, $3a9a                                  ; $667d: $11 $9a $3a
    sbc e                                         ; $6680: $9b
    sub e                                         ; $6681: $93
    xor b                                         ; $6682: $a8
    sub e                                         ; $6683: $93
    xor d                                         ; $6684: $aa
    db $dd                                        ; $6685: $dd
    ld d, d                                       ; $6686: $52
    adc [hl]                                      ; $6687: $8e
    db $db                                        ; $6688: $db
    sbc d                                         ; $6689: $9a
    rst $18                                       ; $668a: $df
    ld [hl], c                                    ; $668b: $71
    adc $2b                                       ; $668c: $ce $2b
    cp e                                          ; $668e: $bb
    ld a, l                                       ; $668f: $7d
    ld h, d                                       ; $6690: $62
    ld a, e                                       ; $6691: $7b
    ld c, [hl]                                    ; $6692: $4e
    sbc b                                         ; $6693: $98
    and d                                         ; $6694: $a2
    ld a, [hl+]                                   ; $6695: $2a
    ld c, d                                       ; $6696: $4a
    ld [hl], e                                    ; $6697: $73
    ld l, h                                       ; $6698: $6c
    xor c                                         ; $6699: $a9
    rst $00                                       ; $669a: $c7
    ld l, b                                       ; $669b: $68
    ld sp, hl                                     ; $669c: $f9
    pop bc                                        ; $669d: $c1
    ret z                                         ; $669e: $c8

    adc h                                         ; $669f: $8c
    ld l, $00                                     ; $66a0: $2e $00
    inc a                                         ; $66a2: $3c
    or c                                          ; $66a3: $b1
    ld c, c                                       ; $66a4: $49
    pop af                                        ; $66a5: $f1
    inc a                                         ; $66a6: $3c
    ld h, e                                       ; $66a7: $63
    reti                                          ; $66a8: $d9


    dec h                                         ; $66a9: $25
    ld a, [hl]                                    ; $66aa: $7e

jr_059_66ab:
    ld [hl-], a                                   ; $66ab: $32
    inc hl                                        ; $66ac: $23
    ld h, c                                       ; $66ad: $61
    add hl, hl                                    ; $66ae: $29
    dec c                                         ; $66af: $0d
    add $5e                                       ; $66b0: $c6 $5e
    inc e                                         ; $66b2: $1c
    rst $20                                       ; $66b3: $e7
    ld l, h                                       ; $66b4: $6c
    cp $05                                        ; $66b5: $fe $05
    add hl, bc                                    ; $66b7: $09
    halt                                          ; $66b8: $76
    ld c, c                                       ; $66b9: $49
    inc a                                         ; $66ba: $3c
    ld d, h                                       ; $66bb: $54
    add d                                         ; $66bc: $82
    adc c                                         ; $66bd: $89
    call $2449                                    ; $66be: $cd $49 $24
    dec de                                        ; $66c1: $1b
    rst $20                                       ; $66c2: $e7
    add h                                         ; $66c3: $84
    ld a, [$be77]                                 ; $66c4: $fa $77 $be
    db $fd                                        ; $66c7: $fd
    ret z                                         ; $66c8: $c8

    cp a                                          ; $66c9: $bf
    ld l, $f1                                     ; $66ca: $2e $f1
    adc l                                         ; $66cc: $8d
    sub $e1                                       ; $66cd: $d6 $e1
    jp z, Jump_059_489a                           ; $66cf: $ca $9a $48

    ld d, $25                                     ; $66d2: $16 $25
    sbc b                                         ; $66d4: $98
    adc $8c                                       ; $66d5: $ce $8c
    jr z, jr_059_6752                             ; $66d7: $28 $79

    ret z                                         ; $66d9: $c8

    ld a, [c]                                     ; $66da: $f2
    add sp, $2f                                   ; $66db: $e8 $2f
    ld sp, hl                                     ; $66dd: $f9
    ld e, a                                       ; $66de: $5f
    ld [hl], e                                    ; $66df: $73
    xor l                                         ; $66e0: $ad
    rst $38                                       ; $66e1: $ff
    ld [bc], a                                    ; $66e2: $02
    inc e                                         ; $66e3: $1c
    ld a, c                                       ; $66e4: $79
    ld b, h                                       ; $66e5: $44
    add hl, bc                                    ; $66e6: $09
    ld c, e                                       ; $66e7: $4b
    ld [hl], e                                    ; $66e8: $73
    add hl, de                                    ; $66e9: $19
    adc h                                         ; $66ea: $8c
    db $db                                        ; $66eb: $db
    pop de                                        ; $66ec: $d1
    dec a                                         ; $66ed: $3d
    inc b                                         ; $66ee: $04
    ld h, e                                       ; $66ef: $63
    rst $38                                       ; $66f0: $ff
    call c, $aeba                                 ; $66f1: $dc $ba $ae
    dec bc                                        ; $66f4: $0b
    nop                                           ; $66f5: $00
    ld c, [hl]                                    ; $66f6: $4e
    ldh a, [rHDMA2]                               ; $66f7: $f0 $52
    ld h, $5b                                     ; $66f9: $26 $5b
    inc hl                                        ; $66fb: $23
    xor d                                         ; $66fc: $aa
    and h                                         ; $66fd: $a4
    ld a, [c]                                     ; $66fe: $f2
    dec c                                         ; $66ff: $0d
    or $96                                        ; $6700: $f6 $96
    call nc, $ba3d                                ; $6702: $d4 $3d $ba
    ld e, a                                       ; $6705: $5f
    ld a, b                                       ; $6706: $78
    ld b, d                                       ; $6707: $42
    db $fd                                        ; $6708: $fd
    ld l, h                                       ; $6709: $6c
    adc $4f                                       ; $670a: $ce $4f
    ld [bc], a                                    ; $670c: $02
    rst $30                                       ; $670d: $f7
    ld e, b                                       ; $670e: $58
    db $eb                                        ; $670f: $eb
    rst $28                                       ; $6710: $ef
    db $f4                                        ; $6711: $f4
    ld c, e                                       ; $6712: $4b
    rst $30                                       ; $6713: $f7
    ld c, [hl]                                    ; $6714: $4e
    ld [de], a                                    ; $6715: $12

jr_059_6716:
    sub [hl]                                      ; $6716: $96
    ld a, $ad                                     ; $6717: $3e $ad
    jr jr_059_66ab                                ; $6719: $18 $90

    jr z, jr_059_6716                             ; $671b: $28 $f9

    ld a, a                                       ; $671d: $7f
    and $fc                                       ; $671e: $e6 $fc

jr_059_6720:
    dec bc                                        ; $6720: $0b
    nop                                           ; $6721: $00
    sbc h                                         ; $6722: $9c
    ld a, e                                       ; $6723: $7b
    ld c, $e9                                     ; $6724: $0e $e9
    or a                                          ; $6726: $b7
    ld a, $29                                     ; $6727: $3e $29
    jr jr_059_6778                                ; $6729: $18 $4d

    ret c                                         ; $672b: $d8

    db $fd                                        ; $672c: $fd
    cpl                                           ; $672d: $2f
    cp h                                          ; $672e: $bc
    rst $38                                       ; $672f: $ff
    push de                                       ; $6730: $d5
    cp b                                          ; $6731: $b8
    ld d, $95                                     ; $6732: $16 $95
    inc b                                         ; $6734: $04
    or $af                                        ; $6735: $f6 $af
    ld sp, hl                                     ; $6737: $f9
    rst $20                                       ; $6738: $e7
    db $ec                                        ; $6739: $ec
    ld e, d                                       ; $673a: $5a
    xor a                                         ; $673b: $af
    xor $9f                                       ; $673c: $ee $9f
    or $af                                        ; $673e: $f6 $af
    ld c, $2c                                     ; $6740: $0e $2c
    db $dd                                        ; $6742: $dd
    cp b                                          ; $6743: $b8
    ld d, $75                                     ; $6744: $16 $75
    add hl, sp                                    ; $6746: $39
    ld bc, $1e00                                  ; $6747: $01 $00 $1e
    sbc [hl]                                      ; $674a: $9e
    ei                                            ; $674b: $fb
    ld c, e                                       ; $674c: $4b
    add hl, hl                                    ; $674d: $29
    sbc [hl]                                      ; $674e: $9e
    ld a, h                                       ; $674f: $7c
    ld c, e                                       ; $6750: $4b
    sbc a                                         ; $6751: $9f

jr_059_6752:
    rst $38                                       ; $6752: $ff
    ld d, [hl]                                    ; $6753: $56
    cp a                                          ; $6754: $bf
    and d                                         ; $6755: $a2
    push hl                                       ; $6756: $e5
    inc de                                        ; $6757: $13
    ld e, c                                       ; $6758: $59
    jr z, jr_059_6720                             ; $6759: $28 $c5

    sub e                                         ; $675b: $93
    rst $28                                       ; $675c: $ef
    sbc a                                         ; $675d: $9f
    ld de, $4e71                                  ; $675e: $11 $71 $4e
    ld e, h                                       ; $6761: $5c
    nop                                           ; $6762: $00
    inc a                                         ; $6763: $3c
    pop bc                                        ; $6764: $c1
    ret c                                         ; $6765: $d8

    sla c                                         ; $6766: $cb $21
    halt                                          ; $6768: $76
    rlca                                          ; $6769: $07
    add e                                         ; $676a: $83
    sub d                                         ; $676b: $92
    rst $00                                       ; $676c: $c7
    ld e, h                                       ; $676d: $5c
    add hl, de                                    ; $676e: $19
    add h                                         ; $676f: $84
    cp d                                          ; $6770: $ba
    ld b, e                                       ; $6771: $43
    adc l                                         ; $6772: $8d
    ld a, c                                       ; $6773: $79
    or b                                          ; $6774: $b0
    xor l                                         ; $6775: $ad
    ld a, [bc]                                    ; $6776: $0a
    db $fd                                        ; $6777: $fd

jr_059_6778:
    jr c, @+$61                                   ; $6778: $38 $5f

    ld l, d                                       ; $677a: $6a
    ld e, h                                       ; $677b: $5c
    dec bc                                        ; $677c: $0b
    db $eb                                        ; $677d: $eb
    sub a                                         ; $677e: $97
    ld c, a                                       ; $677f: $4f
    ld h, h                                       ; $6780: $64
    ld c, l                                       ; $6781: $4d
    rla                                           ; $6782: $17
    nop                                           ; $6783: $00
    ld e, $a1                                     ; $6784: $1e $a1
    add hl, hl                                    ; $6786: $29
    jp c, $3bb6                                   ; $6787: $da $b6 $3b

    call nz, $8c13                                ; $678a: $c4 $13 $8c
    cp l                                          ; $678d: $bd
    ld a, b                                       ; $678e: $78
    ld a, $21                                     ; $678f: $3e $21
    or [hl]                                       ; $6791: $b6
    sub b                                         ; $6792: $90
    and h                                         ; $6793: $a4
    ld l, d                                       ; $6794: $6a
    or a                                          ; $6795: $b7
    sub h                                         ; $6796: $94
    ld d, d                                       ; $6797: $52
    add hl, bc                                    ; $6798: $09
    ld c, e                                       ; $6799: $4b
    add hl, hl                                    ; $679a: $29
    sbc [hl]                                      ; $679b: $9e
    ld a, h                                       ; $679c: $7c
    and e                                         ; $679d: $a3
    add h                                         ; $679e: $84
    ld a, c                                       ; $679f: $79
    sbc h                                         ; $67a0: $9c
    di                                            ; $67a1: $f3
    rla                                           ; $67a2: $17
    nop                                           ; $67a3: $00
    inc a                                         ; $67a4: $3c
    pop bc                                        ; $67a5: $c1
    ret c                                         ; $67a6: $d8

    adc e                                         ; $67a7: $8b
    rst $20                                       ; $67a8: $e7
    inc de                                        ; $67a9: $13
    ld h, d                                       ; $67aa: $62
    dec bc                                        ; $67ab: $0b
    ld de, $b042                                  ; $67ac: $11 $42 $b0
    ei                                            ; $67af: $fb
    ld e, a                                       ; $67b0: $5f
    dec e                                         ; $67b1: $1d
    db $db                                        ; $67b2: $db
    inc h                                         ; $67b3: $24
    or $33                                        ; $67b4: $f6 $33
    xor d                                         ; $67b6: $aa
    add $b4                                       ; $67b7: $c6 $b4
    jr z, jr_059_67f0                             ; $67b9: $28 $35

    xor [hl]                                      ; $67bb: $ae
    add l                                         ; $67bc: $85
    reti                                          ; $67bd: $d9


    sla a                                         ; $67be: $cb $27
    ld [hl-], a                                   ; $67c0: $32
    and e                                         ; $67c1: $a3
    dec bc                                        ; $67c2: $0b
    nop                                           ; $67c3: $00
    inc a                                         ; $67c4: $3c
    pop bc                                        ; $67c5: $c1
    ret c                                         ; $67c6: $d8

    adc e                                         ; $67c7: $8b
    rst $20                                       ; $67c8: $e7
    inc de                                        ; $67c9: $13
    ld h, d                                       ; $67ca: $62
    dec bc                                        ; $67cb: $0b
    ld de, $4afc                                  ; $67cc: $11 $fc $4a
    add e                                         ; $67cf: $83
    or c                                          ; $67d0: $b1
    sub a                                         ; $67d1: $97
    rst $00                                       ; $67d2: $c7
    inc bc                                        ; $67d3: $03
    cp $f4                                        ; $67d4: $fe $f4
    rst $20                                       ; $67d6: $e7
    dec bc                                        ; $67d7: $0b
    ld hl, $fdd8                                  ; $67d8: $21 $d8 $fd
    ld sp, hl                                     ; $67db: $f9
    or a                                          ; $67dc: $b7
    ld a, [hl-]                                   ; $67dd: $3a
    or [hl]                                       ; $67de: $b6
    jp hl                                         ; $67df: $e9


    ld [bc], a                                    ; $67e0: $02
    db $fc                                        ; $67e1: $fc
    pop bc                                        ; $67e2: $c1
    ld a, [c]                                     ; $67e3: $f2
    ld c, b                                       ; $67e4: $48
    adc d                                         ; $67e5: $8a
    rst $20                                       ; $67e6: $e7
    add hl, de                                    ; $67e7: $19
    res 7, b                                      ; $67e8: $cb $b8
    ld bc, $593c                                  ; $67ea: $01 $3c $59
    ld c, [hl]                                    ; $67ed: $4e
    and h                                         ; $67ee: $a4
    ld [hl], h                                    ; $67ef: $74

jr_059_67f0:
    ldh [rNR33], a                                ; $67f0: $e0 $1d
    push de                                       ; $67f2: $d5

Call_059_67f3:
    sbc a                                         ; $67f3: $9f
    ld d, h                                       ; $67f4: $54
    ld a, [de]                                    ; $67f5: $1a
    adc h                                         ; $67f6: $8c
    cp l                                          ; $67f7: $bd
    inc e                                         ; $67f8: $1c
    ld h, d                                       ; $67f9: $62
    ld [hl], a                                    ; $67fa: $77
    or b                                          ; $67fb: $b0
    ld c, e                                       ; $67fc: $4b
    ld a, h                                       ; $67fd: $7c
    ld e, e                                       ; $67fe: $5b
    and e                                         ; $67ff: $a3
    ld d, h                                       ; $6800: $54
    ld a, e                                       ; $6801: $7b
    ld b, a                                       ; $6802: $47
    xor l                                         ; $6803: $ad
    or b                                          ; $6804: $b0
    db $e4                                        ; $6805: $e4
    pop af                                        ; $6806: $f1
    add b                                         ; $6807: $80
    ccf                                           ; $6808: $3f
    db $fd                                        ; $6809: $fd
    ld sp, hl                                     ; $680a: $f9
    rla                                           ; $680b: $17
    nop                                           ; $680c: $00
    ld a, h                                       ; $680d: $7c
    and c                                         ; $680e: $a1
    db $f4                                        ; $680f: $f4
    rst $08                                       ; $6810: $cf
    add sp, -$02                                  ; $6811: $e8 $fe
    dec [hl]                                      ; $6813: $35
    ld d, l                                       ; $6814: $55
    sub $2a                                       ; $6815: $d6 $2a
    ld c, d                                       ; $6817: $4a
    ld hl, $9e24                                  ; $6818: $21 $24 $9e
    ld h, a                                       ; $681b: $67
    inc l                                         ; $681c: $2c
    dec hl                                        ; $681d: $2b
    and l                                         ; $681e: $a5
    ld a, b                                       ; $681f: $78
    ld a, [c]                                     ; $6820: $f2
    cp l                                          ; $6821: $bd
    nop                                           ; $6822: $00
    ld e, $73                                     ; $6823: $1e $73
    ld h, l                                       ; $6825: $65
    sbc l                                         ; $6826: $9d
    xor l                                         ; $6827: $ad
    db $ed                                        ; $6828: $ed
    db $e4                                        ; $6829: $e4
    ld c, d                                       ; $682a: $4a
    xor c                                         ; $682b: $a9
    call nc, $a7b1                                ; $682c: $d4 $b1 $a7
    ld c, c                                       ; $682f: $49
    sbc a                                         ; $6830: $9f
    rst $38                                       ; $6831: $ff
    ld d, [hl]                                    ; $6832: $56
    cp a                                          ; $6833: $bf
    ld l, h                                       ; $6834: $6c
    xor e                                         ; $6835: $ab
    ld [bc], a                                    ; $6836: $02
    ld a, [bc]                                    ; $6837: $0a
    nop                                           ; $6838: $00
    db $fc                                        ; $6839: $fc
    ld h, h                                       ; $683a: $64
    ld b, [hl]                                    ; $683b: $46
    jp nz, Jump_059_4bb5                          ; $683c: $c2 $b5 $4b

    ld e, $bd                                     ; $683f: $1e $bd
    ld l, h                                       ; $6841: $6c
    cp e                                          ; $6842: $bb
    and e                                         ; $6843: $a3
    add h                                         ; $6844: $84
    and l                                         ; $6845: $a5
    ld a, h                                       ; $6846: $7c
    db $e3                                        ; $6847: $e3
    sub b                                         ; $6848: $90
    inc l                                         ; $6849: $2c
    inc b                                         ; $684a: $04
    adc a                                         ; $684b: $8f
    xor $a1                                       ; $684c: $ee $a1
    ld a, e                                       ; $684e: $7b
    xor l                                         ; $684f: $ad
    ld c, c                                       ; $6850: $49
    cp $48                                        ; $6851: $fe $48
    ld b, a                                       ; $6853: $47
    rst $30                                       ; $6854: $f7
    ld l, [hl]                                    ; $6855: $6e
    jp hl                                         ; $6856: $e9


    ld [hl], a                                    ; $6857: $77
    cp [hl]                                       ; $6858: $be
    push bc                                       ; $6859: $c5
    ld a, l                                       ; $685a: $7d
    ld l, a                                       ; $685b: $6f
    dec h                                         ; $685c: $25
    ld h, l                                       ; $685d: $65
    and c                                         ; $685e: $a1
    ld a, e                                       ; $685f: $7b
    daa                                           ; $6860: $27
    ld l, c                                       ; $6861: $69
    and d                                         ; $6862: $a2
    call $f508                                    ; $6863: $cd $08 $f5
    ld b, $84                                     ; $6866: $06 $84
    jp c, $f999                                   ; $6868: $da $99 $f9

    db $eb                                        ; $686b: $eb
    call z, Call_059_4dbd                         ; $686c: $cc $bd $4d
    rla                                           ; $686f: $17
    nop                                           ; $6870: $00
    cp h                                          ; $6871: $bc
    cp a                                          ; $6872: $bf
    ld [hl], e                                    ; $6873: $73
    xor [hl]                                      ; $6874: $ae
    adc d                                         ; $6875: $8a
    or d                                          ; $6876: $b2
    ld l, [hl]                                    ; $6877: $6e
    ld e, d                                       ; $6878: $5a

jr_059_6879:
    ld e, e                                       ; $6879: $5b
    pop hl                                        ; $687a: $e1
    adc c                                         ; $687b: $89
    db $fc                                        ; $687c: $fc
    ld c, e                                       ; $687d: $4b
    ld [hl], e                                    ; $687e: $73
    ld d, h                                       ; $687f: $54
    and c                                         ; $6880: $a1
    reti                                          ; $6881: $d9


    ld e, a                                       ; $6882: $5f
    ld [c], a                                     ; $6883: $e2
    jr c, jr_059_6879                             ; $6884: $38 $f3

    ld e, a                                       ; $6886: $5f
    ld l, c                                       ; $6887: $69
    sub [hl]                                      ; $6888: $96
    sub e                                         ; $6889: $93
    ldh [$57], a                                  ; $688a: $e0 $57
    adc a                                         ; $688c: $8f
    inc sp                                        ; $688d: $33
    rst $38                                       ; $688e: $ff
    push hl                                       ; $688f: $e5
    rlca                                          ; $6890: $07

jr_059_6891:
    inc hl                                        ; $6891: $23
    inc sp                                        ; $6892: $33
    cp d                                          ; $6893: $ba
    nop                                           ; $6894: $00
    ld c, $33                                     ; $6895: $0e $33
    sla [hl]                                      ; $6897: $cb $26
    sub c                                         ; $6899: $91
    or d                                          ; $689a: $b2
    inc d                                         ; $689b: $14
    ld [de], a                                    ; $689c: $12
    ld h, [hl]                                    ; $689d: $66
    sub h                                         ; $689e: $94
    call nc, Call_059_6ddc                        ; $689f: $d4 $dc $6d
    or h                                          ; $68a2: $b4
    dec bc                                        ; $68a3: $0b
    nop                                           ; $68a4: $00
    db $fc                                        ; $68a5: $fc
    db $e3                                        ; $68a6: $e3
    add h                                         ; $68a7: $84
    ld h, b                                       ; $68a8: $60
    ld c, h                                       ; $68a9: $4c
    adc d                                         ; $68aa: $8a
    rst $20                                       ; $68ab: $e7
    add hl, de                                    ; $68ac: $19
    sra [hl]                                      ; $68ad: $cb $2e
    nop                                           ; $68af: $00
    inc a                                         ; $68b0: $3c
    sbc a                                         ; $68b1: $9f
    db $10                                        ; $68b2: $10
    ld e, e                                       ; $68b3: $5b
    ld [$38b7], sp                                ; $68b4: $08 $b7 $38
    jr nz, jr_059_6891                            ; $68b7: $20 $d8

    xor a                                         ; $68b9: $af
    ld a, e                                       ; $68ba: $7b
    ld l, e                                       ; $68bb: $6b
    inc a                                         ; $68bc: $3c
    scf                                           ; $68bd: $37
    nop                                           ; $68be: $00
    ld l, [hl]                                    ; $68bf: $6e
    ld d, a                                       ; $68c0: $57
    ld b, a                                       ; $68c1: $47
    ld c, h                                       ; $68c2: $4c
    db $db                                        ; $68c3: $db
    and h                                         ; $68c4: $a4
    xor $d1                                       ; $68c5: $ee $d1
    db $fd                                        ; $68c7: $fd
    ld l, d                                       ; $68c8: $6a
    cp d                                          ; $68c9: $ba
    ld c, c                                       ; $68ca: $49
    ld h, a                                       ; $68cb: $67
    adc h                                         ; $68cc: $8c
    add hl, sp                                    ; $68cd: $39
    add a                                         ; $68ce: $87
    or b                                          ; $68cf: $b0
    ld h, h                                       ; $68d0: $64
    db $e3                                        ; $68d1: $e3
    ret nz                                        ; $68d2: $c0

    pop de                                        ; $68d3: $d1
    dec a                                         ; $68d4: $3d
    ld l, $00                                     ; $68d5: $2e $00
    ld l, [hl]                                    ; $68d7: $6e
    ld d, a                                       ; $68d8: $57
    ld b, a                                       ; $68d9: $47
    ld c, h                                       ; $68da: $4c
    db $db                                        ; $68db: $db
    and h                                         ; $68dc: $a4
    xor $d1                                       ; $68dd: $ee $d1
    db $fd                                        ; $68df: $fd
    ld l, d                                       ; $68e0: $6a
    cp d                                          ; $68e1: $ba
    ld c, c                                       ; $68e2: $49
    ld h, a                                       ; $68e3: $67
    adc h                                         ; $68e4: $8c
    add hl, sp                                    ; $68e5: $39
    add a                                         ; $68e6: $87
    or b                                          ; $68e7: $b0
    call nc, $26cf                                ; $68e8: $d4 $cf $26
    ld l, [hl]                                    ; $68eb: $6e
    ld b, a                                       ; $68ec: $47
    rst $30                                       ; $68ed: $f7
    ret nc                                        ; $68ee: $d0

    ld sp, hl                                     ; $68ef: $f9
    dec l                                         ; $68f0: $2d
    add h                                         ; $68f1: $84
    and e                                         ; $68f2: $a3
    ld [hl], h                                    ; $68f3: $74
    rst $38                                       ; $68f4: $ff
    or h                                          ; $68f5: $b4
    ld sp, $02ea                                  ; $68f6: $31 $ea $02
    xor [hl]                                      ; $68f9: $ae
    cp e                                          ; $68fa: $bb
    sub h                                         ; $68fb: $94
    sub h                                         ; $68fc: $94
    db $eb                                        ; $68fd: $eb
    ld l, $27                                     ; $68fe: $2e $27
    push hl                                       ; $6900: $e5
    cp d                                          ; $6901: $ba
    dec hl                                        ; $6902: $2b
    rst $10                                       ; $6903: $d7
    ld [hl], l                                    ; $6904: $75
    ret                                           ; $6905: $c9


    pop hl                                        ; $6906: $e1
    sbc a                                         ; $6907: $9f
    inc a                                         ; $6908: $3c
    ld c, [hl]                                    ; $6909: $4e
    sub h                                         ; $690a: $94
    ld a, [hl-]                                   ; $690b: $3a
    or [hl]                                       ; $690c: $b6
    ld c, c                                       ; $690d: $49
    ld l, c                                       ; $690e: $69
    db $f4                                        ; $690f: $f4
    ld l, d                                       ; $6910: $6a
    adc [hl]                                      ; $6911: $8e
    sub d                                         ; $6912: $92
    db $fd                                        ; $6913: $fd
    sub a                                         ; $6914: $97
    adc d                                         ; $6915: $8a
    ld l, [hl]                                    ; $6916: $6e
    sub d                                         ; $6917: $92
    rst $38                                       ; $6918: $ff
    ld l, h                                       ; $6919: $6c
    push de                                       ; $691a: $d5
    inc hl                                        ; $691b: $23
    db $fd                                        ; $691c: $fd
    xor $17                                       ; $691d: $ee $17
    dec de                                        ; $691f: $1b
    sbc $ef                                       ; $6920: $de $ef
    sub $be                                       ; $6922: $d6 $be
    adc $db                                       ; $6924: $ce $db
    adc h                                         ; $6926: $8c
    xor $f1                                       ; $6927: $ee $f1
    rst $10                                       ; $6929: $d7
    ld [hl], l                                    ; $692a: $75
    ret                                           ; $692b: $c9


    ld [hl], l                                    ; $692c: $75
    ld d, a                                       ; $692d: $57
    sub e                                         ; $692e: $93
    ld [hl], d                                    ; $692f: $72
    db $dd                                        ; $6930: $dd
    or l                                          ; $6931: $b5
    and h                                         ; $6932: $a4
    ld e, h                                       ; $6933: $5c
    ld [hl], a                                    ; $6934: $77
    db $fd                                        ; $6935: $fd
    cp d                                          ; $6936: $ba
    ld l, $00                                     ; $6937: $2e $00
    ld c, $b2                                     ; $6939: $0e $b2
    sub [hl]                                      ; $693b: $96
    push bc                                       ; $693c: $c5
    call nz, Call_059_6ded                        ; $693d: $c4 $ed $6d
    db $dd                                        ; $6940: $dd
    ld e, e                                       ; $6941: $5b
    and e                                         ; $6942: $a3
    ld [hl], l                                    ; $6943: $75
    sbc $e6                                       ; $6944: $de $e6
    ld e, b                                       ; $6946: $58
    or e                                          ; $6947: $b3
    rst $20                                       ; $6948: $e7
    sub [hl]                                      ; $6949: $96
    rst $20                                       ; $694a: $e7
    cp b                                          ; $694b: $b8
    or [hl]                                       ; $694c: $b6
    dec a                                         ; $694d: $3d
    ld d, c                                       ; $694e: $51
    ld a, b                                       ; $694f: $78
    adc $2b                                       ; $6950: $ce $2b
    and l                                         ; $6952: $a5
    ld h, l                                       ; $6953: $65
    db $db                                        ; $6954: $db
    ld d, $37                                     ; $6955: $16 $37
    ld [hl], l                                    ; $6957: $75
    ld d, e                                       ; $6958: $53
    ld d, d                                       ; $6959: $52
    ld [hl], e                                    ; $695a: $73
    ld d, h                                       ; $695b: $54
    add l                                         ; $695c: $85
    ret                                           ; $695d: $c9


    cp $4b                                        ; $695e: $fe $4b
    ld c, l                                       ; $6960: $4d
    scf                                           ; $6961: $37
    sub l                                         ; $6962: $95
    ld d, d                                       ; $6963: $52
    cp h                                          ; $6964: $bc
    rst $28                                       ; $6965: $ef
    cpl                                           ; $6966: $2f
    ld [hl], l                                    ; $6967: $75
    and h                                         ; $6968: $a4
    sbc l                                         ; $6969: $9d
    ld de, $0014                                  ; $696a: $11 $14 $00
    ld l, [hl]                                    ; $696d: $6e
    ld d, a                                       ; $696e: $57
    ld b, a                                       ; $696f: $47
    ld c, h                                       ; $6970: $4c
    db $db                                        ; $6971: $db
    and h                                         ; $6972: $a4
    xor $d1                                       ; $6973: $ee $d1
    db $fd                                        ; $6975: $fd
    cp d                                          ; $6976: $ba
    or a                                          ; $6977: $b7
    ld c, b                                       ; $6978: $48
    ldh a, [$c0]                                  ; $6979: $f0 $c0
    ld d, d                                       ; $697b: $52
    ld h, l                                       ; $697c: $65
    xor l                                         ; $697d: $ad
    ld c, c                                       ; $697e: $49
    call nz, $88ee                                ; $697f: $c4 $ee $88
    ld h, d                                       ; $6982: $62
    inc bc                                        ; $6983: $03
    ld d, e                                       ; $6984: $53
    db $ec                                        ; $6985: $ec
    adc b                                         ; $6986: $88
    and [hl]                                      ; $6987: $a6
    dec bc                                        ; $6988: $0b
    nop                                           ; $6989: $00
    ret nc                                        ; $698a: $d0

    and l                                         ; $698b: $a5
    inc e                                         ; $698c: $1c
    ld d, a                                       ; $698d: $57
    sub l                                         ; $698e: $95
    or l                                          ; $698f: $b5
    ld a, [hl]                                    ; $6990: $7e
    ld [hl], h                                    ; $6991: $74
    rst $38                                       ; $6992: $ff
    daa                                           ; $6993: $27
    add l                                         ; $6994: $85
    db $10                                        ; $6995: $10
    db $ec                                        ; $6996: $ec
    cpl                                           ; $6997: $2f
    dec [hl]                                      ; $6998: $35
    or c                                          ; $6999: $b1
    add hl, de                                    ; $699a: $19
    ld b, h                                       ; $699b: $44
    ld a, [c]                                     ; $699c: $f2
    cp c                                          ; $699d: $b9
    adc $e1                                       ; $699e: $ce $e1
    and d                                         ; $69a0: $a2
    dec bc                                        ; $69a1: $0b
    nop                                           ; $69a2: $00
    ld a, h                                       ; $69a3: $7c
    dec sp                                        ; $69a4: $3b
    ld l, l                                       ; $69a5: $6d
    sub l                                         ; $69a6: $95
    ld a, $4b                                     ; $69a7: $3e $4b
    ld a, a                                       ; $69a9: $7f
    ld c, a                                       ; $69aa: $4f
    or h                                          ; $69ab: $b4
    sbc d                                         ; $69ac: $9a
    add sp, $1c                                   ; $69ad: $e8 $1c
    ld d, d                                       ; $69af: $52
    ld [hl], $6d                                  ; $69b0: $36 $6d
    adc e                                         ; $69b2: $8b
    ld l, h                                       ; $69b3: $6c
    and c                                         ; $69b4: $a1
    inc b                                         ; $69b5: $04
    db $dd                                        ; $69b6: $dd
    sub e                                         ; $69b7: $93
    ld c, e                                       ; $69b8: $4b
    cp l                                          ; $69b9: $bd
    ld bc, $4521                                  ; $69ba: $01 $21 $45
    ld [hl], a                                    ; $69bd: $77
    xor h                                         ; $69be: $ac
    inc l                                         ; $69bf: $2c
    add h                                         ; $69c0: $84
    daa                                           ; $69c1: $27
    call nc, $e583                                ; $69c2: $d4 $83 $e5
    ld a, a                                       ; $69c5: $7f
    adc $5a                                       ; $69c6: $ce $5a
    ccf                                           ; $69c8: $3f
    inc d                                         ; $69c9: $14
    nop                                           ; $69ca: $00
    ld e, $8f                                     ; $69cb: $1e $8f
    ld [hl], c                                    ; $69cd: $71
    or [hl]                                       ; $69ce: $b6
    sub d                                         ; $69cf: $92
    adc d                                         ; $69d0: $8a
    ld l, [hl]                                    ; $69d1: $6e
    ld [de], a                                    ; $69d2: $12
    ld c, a                                       ; $69d3: $4f
    jr nc, @-$08                                  ; $69d4: $30 $f6

    ld a, [c]                                     ; $69d6: $f2
    ld a, b                                       ; $69d7: $78
    ret nz                                        ; $69d8: $c0

    sbc a                                         ; $69d9: $9f
    cp $7c                                        ; $69da: $fe $7c
    dec [hl]                                      ; $69dc: $35
    pop de                                        ; $69dd: $d1
    add hl, sp                                    ; $69de: $39
    inc h                                         ; $69df: $24
    rrca                                          ; $69e0: $0f
    ld e, c                                       ; $69e1: $59
    ld e, $fd                                     ; $69e2: $1e $fd
    ld h, [hl]                                    ; $69e4: $66
    xor a                                         ; $69e5: $af
    rra                                           ; $69e6: $1f
    db $dd                                        ; $69e7: $dd
    rst $38                                       ; $69e8: $ff
    or d                                          ; $69e9: $b2
    xor l                                         ; $69ea: $ad
    pop af                                        ; $69eb: $f1
    sub a                                         ; $69ec: $97
    inc a                                         ; $69ed: $3c
    ld b, d                                       ; $69ee: $42
    di                                            ; $69ef: $f3
    ld e, a                                       ; $69f0: $5f
    pop de                                        ; $69f1: $d1
    or [hl]                                       ; $69f2: $b6
    or [hl]                                       ; $69f3: $b6
    xor l                                         ; $69f4: $ad
    sub h                                         ; $69f5: $94
    ld a, [hl+]                                   ; $69f6: $2a
    ld e, d                                       ; $69f7: $5a
    sub e                                         ; $69f8: $93
    ld l, h                                       ; $69f9: $6c
    rst $10                                       ; $69fa: $d7
    or $02                                        ; $69fb: $f6 $02
    sbc h                                         ; $69fd: $9c
    dec de                                        ; $69fe: $1b
    rst $20                                       ; $69ff: $e7
    ld d, b                                       ; $6a00: $50
    ld c, d                                       ; $6a01: $4a
    dec h                                         ; $6a02: $25
    db $db                                        ; $6a03: $db
    ld [hl+], a                                   ; $6a04: $22
    pop hl                                        ; $6a05: $e1
    adc c                                         ; $6a06: $89
    cp [hl]                                       ; $6a07: $be
    call nz, Call_059_4a39                        ; $6a08: $c4 $39 $4a
    or c                                          ; $6a0b: $b1
    jp nz, $f935                                  ; $6a0c: $c2 $35 $f9

    db $db                                        ; $6a0f: $db
    ld d, h                                       ; $6a10: $54
    ld e, c                                       ; $6a11: $59
    dec bc                                        ; $6a12: $0b
    ld h, $82                                     ; $6a13: $26 $82
    sub b                                         ; $6a15: $90
    ld h, b                                       ; $6a16: $60
    ld a, [hl-]                                   ; $6a17: $3a
    inc sp                                        ; $6a18: $33
    and d                                         ; $6a19: $a2
    call nc, $ce78                                ; $6a1a: $d4 $78 $ce
    xor e                                         ; $6a1d: $ab
    ccf                                           ; $6a1e: $3f
    rst $38                                       ; $6a1f: $ff
    ld [hl], e                                    ; $6a20: $73
    cp $02                                        ; $6a21: $fe $02
    inc e                                         ; $6a23: $1c
    daa                                           ; $6a24: $27
    ld c, d                                       ; $6a25: $4a
    pop de                                        ; $6a26: $d1
    or [hl]                                       ; $6a27: $b6
    sub l                                         ; $6a28: $95
    or l                                          ; $6a29: $b5
    ld l, h                                       ; $6a2a: $6c
    ld l, e                                       ; $6a2b: $6b
    cp h                                          ; $6a2c: $bc
    ld h, b                                       ; $6a2d: $60
    sbc h                                         ; $6a2e: $9c
    cpl                                           ; $6a2f: $2f
    rst $38                                       ; $6a30: $ff
    ld [hl], a                                    ; $6a31: $77
    cp [hl]                                       ; $6a32: $be
    push af                                       ; $6a33: $f5
    ld [hl], e                                    ; $6a34: $73
    inc bc                                        ; $6a35: $03
    ld a, h                                       ; $6a36: $7c
    and e                                         ; $6a37: $a3
    dec d                                         ; $6a38: $15
    and l                                         ; $6a39: $a5
    ld a, e                                       ; $6a3a: $7b
    adc e                                         ; $6a3b: $8b
    ld [hl], h                                    ; $6a3c: $74
    ld b, a                                       ; $6a3d: $47
    ld d, l                                       ; $6a3e: $55
    sub $82                                       ; $6a3f: $d6 $82
    ld [hl], c                                    ; $6a41: $71
    cp [hl]                                       ; $6a42: $be
    db $fc                                        ; $6a43: $fc
    rst $18                                       ; $6a44: $df
    add hl, sp                                    ; $6a45: $39
    rst $38                                       ; $6a46: $ff
    db $eb                                        ; $6a47: $eb
    ld [de], a                                    ; $6a48: $12
    rst $00                                       ; $6a49: $c7
    reti                                          ; $6a4a: $d9


    jp nc, Jump_059_5fa6                          ; $6a4b: $d2 $a6 $5f

    ld l, d                                       ; $6a4e: $6a
    ld [hl-], a                                   ; $6a4f: $32
    and e                                         ; $6a50: $a3
    and h                                         ; $6a51: $a4
    ld d, d                                       ; $6a52: $52
    inc a                                         ; $6a53: $3c
    ld sp, hl                                     ; $6a54: $f9
    jp c, $0cea                                   ; $6a55: $da $ea $0c

    xor h                                         ; $6a58: $ac
    cp a                                          ; $6a59: $bf
    xor [hl]                                      ; $6a5a: $ae
    dec bc                                        ; $6a5b: $0b
    nop                                           ; $6a5c: $00
    ld a, h                                       ; $6a5d: $7c
    db $db                                        ; $6a5e: $db
    ld [hl], h                                    ; $6a5f: $74
    ld e, l                                       ; $6a60: $5d
    sub a                                         ; $6a61: $97
    or b                                          ; $6a62: $b0
    ld h, $aa                                     ; $6a63: $26 $aa
    jp hl                                         ; $6a65: $e9


    ld h, $cd                                     ; $6a66: $26 $cd
    rst $18                                       ; $6a68: $df
    add hl, sp                                    ; $6a69: $39
    ld d, a                                       ; $6a6a: $57
    rst $30                                       ; $6a6b: $f7
    sub $28                                       ; $6a6c: $d6 $28
    jr z, jr_059_6a70                             ; $6a6e: $28 $00

jr_059_6a70:
    ld c, $f6                                     ; $6a70: $0e $f6
    adc [hl]                                      ; $6a72: $8e
    jp nz, $bffb                                  ; $6a73: $c2 $fb $bf

    ld l, $f1                                     ; $6a76: $2e $f1
    add l                                         ; $6a78: $85
    or b                                          ; $6a79: $b0
    and e                                         ; $6a7a: $a3
    rst $38                                       ; $6a7b: $ff
    ld c, e                                       ; $6a7c: $4b
    sub l                                         ; $6a7d: $95
    or l                                          ; $6a7e: $b5
    ld a, [c]                                     ; $6a7f: $f2
    rst $38                                       ; $6a80: $ff
    sub d                                         ; $6a81: $92
    ld b, l                                       ; $6a82: $45
    add hl, hl                                    ; $6a83: $29
    rrca                                          ; $6a84: $0f
    add $be                                       ; $6a85: $c6 $be
    sub h                                         ; $6a87: $94
    and d                                         ; $6a88: $a2
    rra                                           ; $6a89: $1f
    ld l, a                                       ; $6a8a: $6f
    bit 7, h                                      ; $6a8b: $cb $7c
    ccf                                           ; $6a8d: $3f
    ld h, b                                       ; $6a8e: $60
    cp d                                          ; $6a8f: $ba
    xor [hl]                                      ; $6a90: $ae
    ld c, e                                       ; $6a91: $4b
    ld d, $c2                                     ; $6a92: $16 $c2
    ld d, d                                       ; $6a94: $52
    ld e, $27                                     ; $6a95: $1e $27
    ld b, l                                       ; $6a97: $45
    jr c, jr_059_6ae4                             ; $6a98: $38 $4a

    db $ec                                        ; $6a9a: $ec
    db $d3                                        ; $6a9b: $d3
    rst $38                                       ; $6a9c: $ff
    db $eb                                        ; $6a9d: $eb

jr_059_6a9e:
    cp d                                          ; $6a9e: $ba
    inc d                                         ; $6a9f: $14
    db $dd                                        ; $6aa0: $dd
    inc h                                         ; $6aa1: $24
    ei                                            ; $6aa2: $fb
    add a                                         ; $6aa3: $87
    db $fc                                        ; $6aa4: $fc
    sub a                                         ; $6aa5: $97
    ld l, h                                       ; $6aa6: $6c
    sbc h                                         ; $6aa7: $9c
    inc de                                        ; $6aa8: $13
    sbc d                                         ; $6aa9: $9a
    ld a, a                                       ; $6aaa: $7f
    ei                                            ; $6aab: $fb
    ld a, [hl]                                    ; $6aac: $7e
    ld b, h                                       ; $6aad: $44
    ld l, e                                       ; $6aae: $6b
    ld [c], a                                     ; $6aaf: $e2
    jr c, @+$65                                   ; $6ab0: $38 $63

    call nc, Call_000_0005                        ; $6ab2: $d4 $05 $00
    sbc h                                         ; $6ab5: $9c
    cp e                                          ; $6ab6: $bb
    adc h                                         ; $6ab7: $8c
    ld h, l                                       ; $6ab8: $65
    ld c, l                                       ; $6ab9: $4d
    ld d, h                                       ; $6aba: $54
    sub e                                         ; $6abb: $93
    ld c, e                                       ; $6abc: $4b
    sub l                                         ; $6abd: $95
    or l                                          ; $6abe: $b5
    inc l                                         ; $6abf: $2c
    ld b, $fb                                     ; $6ac0: $06 $fb
    rst $08                                       ; $6ac2: $cf
    rst $38                                       ; $6ac3: $ff
    ld c, e                                       ; $6ac4: $4b
    add hl, hl                                    ; $6ac5: $29
    sbc [hl]                                      ; $6ac6: $9e
    ld a, h                                       ; $6ac7: $7c
    or a                                          ; $6ac8: $b7
    sub d                                         ; $6ac9: $92
    ld c, d                                       ; $6aca: $4a
    or e                                          ; $6acb: $b3
    sbc h                                         ; $6acc: $9c
    sub h                                         ; $6acd: $94
    ld b, $63                                     ; $6ace: $06 $63
    rrca                                          ; $6ad0: $0f
    dec b                                         ; $6ad1: $05
    nop                                           ; $6ad2: $00
    ld e, $21                                     ; $6ad3: $1e $21
    ld h, $e5                                     ; $6ad5: $26 $e5
    cpl                                           ; $6ad7: $2f
    inc h                                         ; $6ad8: $24
    sbc d                                         ; $6ad9: $9a
    xor b                                         ; $6ada: $a8
    inc [hl]                                      ; $6adb: $34
    ld [hl], a                                    ; $6adc: $77
    ld e, c                                       ; $6add: $59
    ld [hl], h                                    ; $6ade: $74
    db $d3                                        ; $6adf: $d3
    dec h                                         ; $6ae0: $25
    pop af                                        ; $6ae1: $f1
    inc a                                         ; $6ae2: $3c
    ld h, e                                       ; $6ae3: $63

jr_059_6ae4:
    ld e, c                                       ; $6ae4: $59
    ld d, d                                       ; $6ae5: $52
    ld c, l                                       ; $6ae6: $4d
    ld h, [hl]                                    ; $6ae7: $66
    inc h                                         ; $6ae8: $24
    inc l                                         ; $6ae9: $2c
    reti                                          ; $6aea: $d9


    jr z, jr_059_6a9e                             ; $6aeb: $28 $b1

    ld c, a                                       ; $6aed: $4f
    rst $18                                       ; $6aee: $df
    ld d, [hl]                                    ; $6aef: $56
    ldh a, [$eb]                                  ; $6af0: $f0 $eb
    xor h                                         ; $6af2: $ac
    push af                                       ; $6af3: $f5
    bit 6, [hl]                                   ; $6af4: $cb $76
    sbc e                                         ; $6af6: $9b
    ld [hl], h                                    ; $6af7: $74
    ld l, a                                       ; $6af8: $6f
    sub e                                         ; $6af9: $93
    ld a, [$7759]                                 ; $6afa: $fa $59 $77
    db $f4                                        ; $6afd: $f4
    dec h                                         ; $6afe: $25
    ld c, $eb                                     ; $6aff: $0e $eb
    ld d, a                                       ; $6b01: $57
    cp $5f                                        ; $6b02: $fe $5f
    sbc d                                         ; $6b04: $9a
    cp a                                          ; $6b05: $bf
    ld [hl], e                                    ; $6b06: $73
    xor [hl]                                      ; $6b07: $ae
    xor $6d                                       ; $6b08: $ee $6d
    sub d                                         ; $6b0a: $92
    db $ed                                        ; $6b0b: $ed
    ld d, $c9                                     ; $6b0c: $16 $c9
    cp [hl]                                       ; $6b0e: $be
    or b                                          ; $6b0f: $b0
    rst $38                                       ; $6b10: $ff
    db $eb                                        ; $6b11: $eb
    ld [de], a                                    ; $6b12: $12
    rst $18                                       ; $6b13: $df
    ld d, $69                                     ; $6b14: $16 $69
    ld d, d                                       ; $6b16: $52
    ld d, [hl]                                    ; $6b17: $56
    ld c, d                                       ; $6b18: $4a
    ld a, a                                       ; $6b19: $7f
    add $fd                                       ; $6b1a: $c6 $fd
    ld h, [hl]                                    ; $6b1c: $66
    xor a                                         ; $6b1d: $af
    sbc $80                                       ; $6b1e: $de $80
    ld d, b                                       ; $6b20: $50
    dec sp                                        ; $6b21: $3b
    inc sp                                        ; $6b22: $33
    ld a, a                                       ; $6b23: $7f
    sbc l                                         ; $6b24: $9d
    cp c                                          ; $6b25: $b9
    or a                                          ; $6b26: $b7
    ld h, $25                                     ; $6b27: $26 $25
    ld d, l                                       ; $6b29: $55
    cp e                                          ; $6b2a: $bb
    and l                                         ; $6b2b: $a5
    and d                                         ; $6b2c: $a2
    inc d                                         ; $6b2d: $14
    ld b, d                                       ; $6b2e: $42
    ld d, h                                       ; $6b2f: $54
    or d                                          ; $6b30: $b2
    db $ed                                        ; $6b31: $ed
    adc [hl]                                      ; $6b32: $8e
    sub d                                         ; $6b33: $92
    add a                                         ; $6b34: $87
    inc l                                         ; $6b35: $2c
    adc a                                         ; $6b36: $8f
    cp $52                                        ; $6b37: $fe $52
    add h                                         ; $6b39: $84
    add hl, de                                    ; $6b3a: $19
    ld e, l                                       ; $6b3b: $5d
    nop                                           ; $6b3c: $00
    ld a, h                                       ; $6b3d: $7c
    dec sp                                        ; $6b3e: $3b
    ld c, c                                       ; $6b3f: $49
    ld d, $ea                                     ; $6b40: $16 $ea
    dec c                                         ; $6b42: $0d
    ld [$33b5], sp                                ; $6b43: $08 $b5 $33
    di                                            ; $6b46: $f3
    rst $10                                       ; $6b47: $d7
    sbc c                                         ; $6b48: $99
    ld a, e                                       ; $6b49: $7b
    daa                                           ; $6b4a: $27
    add hl, bc                                    ; $6b4b: $09
    dec bc                                        ; $6b4c: $0b
    ld a, [bc]                                    ; $6b4d: $0a
    nop                                           ; $6b4e: $00
    ret nc                                        ; $6b4f: $d0

    dec h                                         ; $6b50: $25
    ei                                            ; $6b51: $fb
    sub a                                         ; $6b52: $97
    ld a, l                                       ; $6b53: $7d
    ld hl, $e25e                                  ; $6b54: $21 $5e $e2
    rst $08                                       ; $6b57: $cf
    ld c, [hl]                                    ; $6b58: $4e
    and $7f                                       ; $6b59: $e6 $7f
    ld a, [hl-]                                   ; $6b5b: $3a
    cp a                                          ; $6b5c: $bf
    inc b                                         ; $6b5d: $04
    adc a                                         ; $6b5e: $8f
    xor $01                                       ; $6b5f: $ee $01
    rst $38                                       ; $6b61: $ff
    dec h                                         ; $6b62: $25
    rlca                                          ; $6b63: $07
    sub h                                         ; $6b64: $94
    ld b, d                                       ; $6b65: $42
    adc b                                         ; $6b66: $88
    ld c, d                                       ; $6b67: $4a
    or [hl]                                       ; $6b68: $b6
    xor l                                         ; $6b69: $ad
    ld [hl], c                                    ; $6b6a: $71
    ld h, $d6                                     ; $6b6b: $26 $d6
    daa                                           ; $6b6d: $27
    push bc                                       ; $6b6e: $c5
    di                                            ; $6b6f: $f3
    adc h                                         ; $6b70: $8c

Jump_059_6b71:
    ld h, l                                       ; $6b71: $65
    rla                                           ; $6b72: $17
    nop                                           ; $6b73: $00
    cp h                                          ; $6b74: $bc
    cp e                                          ; $6b75: $bb
    adc l                                         ; $6b76: $8d
    and [hl]                                      ; $6b77: $a6
    ld c, c                                       ; $6b78: $49
    ld e, c                                       ; $6b79: $59
    push de                                       ; $6b7a: $d5
    ld e, d                                       ; $6b7b: $5a
    db $d3                                        ; $6b7c: $d3
    dec b                                         ; $6b7d: $05
    nop                                           ; $6b7e: $00
    db $fc                                        ; $6b7f: $fc
    pop bc                                        ; $6b80: $c1
    ld a, [c]                                     ; $6b81: $f2
    add sp, $71                                   ; $6b82: $e8 $71
    ldh a, [$35]                                  ; $6b84: $f0 $35
    ld b, $24                                     ; $6b86: $06 $24
    xor h                                         ; $6b88: $ac
    rst $38                                       ; $6b89: $ff
    db $eb                                        ; $6b8a: $eb
    ld [bc], a                                    ; $6b8b: $02
    sbc [hl]                                      ; $6b8c: $9e
    dec e                                         ; $6b8d: $1d
    inc [hl]                                      ; $6b8e: $34
    ld sp, hl                                     ; $6b8f: $f9
    ld b, h                                       ; $6b90: $44
    ld d, $a1                                     ; $6b91: $16 $a1
    ld e, $78                                     ; $6b93: $1e $78
    ld a, [$4a93]                                 ; $6b95: $fa $93 $4a
    or e                                          ; $6b98: $b3
    sbc h                                         ; $6b99: $9c
    sub h                                         ; $6b9a: $94
    ld b, $63                                     ; $6b9b: $06 $63
    ld a, a                                       ; $6b9d: $7f
    ld bc, $e39c                                  ; $6b9e: $01 $9c $e3
    ret nz                                        ; $6ba1: $c0

    ld [hl], c                                    ; $6ba2: $71
    rst $18                                       ; $6ba3: $df
    and c                                         ; $6ba4: $a1
    adc c                                         ; $6ba5: $89
    ld l, c                                       ; $6ba6: $69
    cp a                                          ; $6ba7: $bf
    ld c, $8e                                     ; $6ba8: $0e $8e
    ld a, [$3d2f]                                 ; $6baa: $fa $2f $3d
    db $fc                                        ; $6bad: $fc
    db $d3                                        ; $6bae: $d3
    or $12                                        ; $6baf: $f6 $12
    db $f4                                        ; $6bb1: $f4
    ld c, [hl]                                    ; $6bb2: $4e
    jp nc, Jump_000_0b1d                          ; $6bb3: $d2 $1d $0b

    and c                                         ; $6bb6: $a1
    ld [de], a                                    ; $6bb7: $12
    dec de                                        ; $6bb8: $1b
    jr c, @+$81                                   ; $6bb9: $38 $7f

    rst $08                                       ; $6bbb: $cf
    cp b                                          ; $6bbc: $b8
    rst $28                                       ; $6bbd: $ef
    db $10                                        ; $6bbe: $10
    sbc [hl]                                      ; $6bbf: $9e
    ld d, b                                       ; $6bc0: $50
    cp $ec                                        ; $6bc1: $fe $ec
    cp $2f                                        ; $6bc3: $fe $2f
    db $dd                                        ; $6bc5: $dd
    db $db                                        ; $6bc6: $db
    ld b, h                                       ; $6bc7: $44
    and l                                         ; $6bc8: $a5
    ld sp, hl                                     ; $6bc9: $f9
    and e                                         ; $6bca: $a3
    sub $fa                                       ; $6bcb: $d6 $fa
    dec [hl]                                      ; $6bcd: $35
    cp a                                          ; $6bce: $bf
    dec l                                         ; $6bcf: $2d
    ld c, [hl]                                    ; $6bd0: $4e
    ld a, a                                       ; $6bd1: $7f
    cp $7f                                        ; $6bd2: $fe $7f
    ld bc, $bbbc                                  ; $6bd4: $01 $bc $bb
    adc l                                         ; $6bd7: $8d
    db $d3                                        ; $6bd8: $d3
    or $93                                        ; $6bd9: $f6 $93
    adc d                                         ; $6bdb: $8a
    ld l, [hl]                                    ; $6bdc: $6e
    ld d, d                                       ; $6bdd: $52
    adc d                                         ; $6bde: $8a
    dec bc                                        ; $6bdf: $0b
    reti                                          ; $6be0: $d9


    xor $90                                       ; $6be1: $ee $90
    rst $38                                       ; $6be3: $ff
    dec [hl]                                      ; $6be4: $35
    rst $20                                       ; $6be5: $e7
    cp [hl]                                       ; $6be6: $be
    db $ed                                        ; $6be7: $ed
    ld d, a                                       ; $6be8: $57
    add l                                         ; $6be9: $85
    xor $d8                                       ; $6bea: $ee $d8
    ld [hl], e                                    ; $6bec: $73

jr_059_6bed:
    ld c, b                                       ; $6bed: $48
    ld e, $b2                                     ; $6bee: $1e $b2
    inc a                                         ; $6bf0: $3c
    ld a, [$fecd]                                 ; $6bf1: $fa $cd $fe
    ld [bc], a                                    ; $6bf4: $02
    inc e                                         ; $6bf5: $1c
    cp h                                          ; $6bf6: $bc

Call_059_6bf7:
    rla                                           ; $6bf7: $17
    nop                                           ; $6bf8: $00
    inc a                                         ; $6bf9: $3c
    or c                                          ; $6bfa: $b1
    rla                                           ; $6bfb: $17
    nop                                           ; $6bfc: $00
    cp h                                          ; $6bfd: $bc
    cp e                                          ; $6bfe: $bb
    adc l                                         ; $6bff: $8d
    halt                                          ; $6c00: $76
    ld bc, $3fbc                                  ; $6c01: $01 $bc $3f
    db $fc                                        ; $6c04: $fc
    ld l, a                                       ; $6c05: $6f
    ld h, c                                       ; $6c06: $61
    cp $ad                                        ; $6c07: $fe $ad
    db $fc                                        ; $6c09: $fc
    rst $08                                       ; $6c0a: $cf
    cp l                                          ; $6c0b: $bd
    db $db                                        ; $6c0c: $db
    cpl                                           ; $6c0d: $2f
    or h                                          ; $6c0e: $b4
    cp $fb                                        ; $6c0f: $fe $fb
    cp a                                          ; $6c11: $bf
    ld [hl], h                                    ; $6c12: $74
    ld h, a                                       ; $6c13: $67
    reti                                          ; $6c14: $d9


    ld c, l                                       ; $6c15: $4d
    ld h, l                                       ; $6c16: $65
    and h                                         ; $6c17: $a4
    cp $fc                                        ; $6c18: $fe $fc
    reti                                          ; $6c1a: $d9


    or a                                          ; $6c1b: $b7
    ld a, [$afe7]                                 ; $6c1c: $fa $e7 $af
    ld l, l                                       ; $6c1f: $6d
    ld e, l                                       ; $6c20: $5d
    rst $10                                       ; $6c21: $d7
    and l                                         ; $6c22: $a5
    ccf                                           ; $6c23: $3f
    ld d, c                                       ; $6c24: $51
    dec d                                         ; $6c25: $15
    db $dd                                        ; $6c26: $dd
    ld h, e                                       ; $6c27: $63
    sub h                                         ; $6c28: $94
    jp nc, $fead                                  ; $6c29: $d2 $ad $fe

    xor a                                         ; $6c2c: $af
    and h                                         ; $6c2d: $a4
    ld a, [de]                                    ; $6c2e: $1a
    cp e                                          ; $6c2f: $bb
    ld e, a                                       ; $6c30: $5f
    di                                            ; $6c31: $f3
    rst $30                                       ; $6c32: $f7
    ld [bc], a                                    ; $6c33: $02
    inc e                                         ; $6c34: $1c
    daa                                           ; $6c35: $27
    ld a, d                                       ; $6c36: $7a
    and d                                         ; $6c37: $a2
    inc l                                         ; $6c38: $2c
    call nc, $fb68                                ; $6c39: $d4 $68 $fb
    ld e, a                                       ; $6c3c: $5f
    or d                                          ; $6c3d: $b2
    dec l                                         ; $6c3e: $2d
    add d                                         ; $6c3f: $82
    ld [c], a                                     ; $6c40: $e2
    ld d, $e7                                     ; $6c41: $16 $e7
    xor [hl]                                      ; $6c43: $ae
    ret                                           ; $6c44: $c9


    or [hl]                                       ; $6c45: $b6
    jr z, jr_059_6bed                             ; $6c46: $28 $a5

    ld [de], a                                    ; $6c48: $12
    sbc [hl]                                      ; $6c49: $9e
    ld l, b                                       ; $6c4a: $68
    pop af                                        ; $6c4b: $f1
    inc a                                         ; $6c4c: $3c
    ld h, e                                       ; $6c4d: $63
    sbc c                                         ; $6c4e: $99
    inc e                                         ; $6c4f: $1c
    ld h, d                                       ; $6c50: $62
    ld [hl], a                                    ; $6c51: $77
    jr nc, jr_059_6cc2                            ; $6c52: $30 $6e

    nop                                           ; $6c54: $00
    ret nc                                        ; $6c55: $d0

    xor e                                         ; $6c56: $ab
    ld sp, hl                                     ; $6c57: $f9
    ld d, l                                       ; $6c58: $55
    rst $18                                       ; $6c59: $df
    xor a                                         ; $6c5a: $af
    sbc b                                         ; $6c5b: $98
    sub [hl]                                      ; $6c5c: $96
    sub c                                         ; $6c5d: $91
    ld l, h                                       ; $6c5e: $6c
    di                                            ; $6c5f: $f3
    ld sp, $bc07                                  ; $6c60: $31 $07 $bc
    rst $20                                       ; $6c63: $e7
    call nz, Call_059_5d75                        ; $6c64: $c4 $75 $5d
    or d                                          ; $6c67: $b2
    adc l                                         ; $6c68: $8d
    ld [hl], e                                    ; $6c69: $73
    ld c, b                                       ; $6c6a: $48
    ld l, a                                       ; $6c6b: $6f
    ld h, e                                       ; $6c6c: $63
    add sp, $77                                   ; $6c6d: $e8 $77
    cp [hl]                                       ; $6c6f: $be
    sub $10                                       ; $6c70: $d6 $10
    ld a, [hl]                                    ; $6c72: $7e
    ld sp, $deec                                  ; $6c73: $31 $ec $de
    cp a                                          ; $6c76: $bf

jr_059_6c77:
    nop                                           ; $6c77: $00
    adc [hl]                                      ; $6c78: $8e
    dec e                                         ; $6c79: $1d
    ld [de], a                                    ; $6c7a: $12
    inc a                                         ; $6c7b: $3c
    ld [hl], b                                    ; $6c7c: $70
    ld e, d                                       ; $6c7d: $5a
    ret z                                         ; $6c7e: $c8

    rst $38                                       ; $6c7f: $ff
    adc c                                         ; $6c80: $89
    ld e, b                                       ; $6c81: $58
    add d                                         ; $6c82: $82
    ld [hl], c                                    ; $6c83: $71
    cp $5a                                        ; $6c84: $fe $5a
    cp a                                          ; $6c86: $bf
    ld h, $a6                                     ; $6c87: $26 $a6
    db $fd                                        ; $6c89: $fd
    ld a, a                                       ; $6c8a: $7f
    rst $38                                       ; $6c8b: $ff
    db $db                                        ; $6c8c: $db
    ld a, [bc]                                    ; $6c8d: $0a
    ld c, a                                       ; $6c8e: $4f
    ld d, h                                       ; $6c8f: $54
    db $e3                                        ; $6c90: $e3
    ld e, a                                       ; $6c91: $5f
    add d                                         ; $6c92: $82
    ld l, [hl]                                    ; $6c93: $6e
    push hl                                       ; $6c94: $e5
    cp b                                          ; $6c95: $b8
    jp z, $bb71                                   ; $6c96: $ca $71 $bb

    rst $38                                       ; $6c99: $ff
    sub l                                         ; $6c9a: $95
    ld a, a                                       ; $6c9b: $7f
    sbc d                                         ; $6c9c: $9a
    rst $00                                       ; $6c9d: $c7
    db $ed                                        ; $6c9e: $ed
    rst $28                                       ; $6c9f: $ef
    dec bc                                        ; $6ca0: $0b
    ld c, a                                       ; $6ca1: $4f
    ld d, h                                       ; $6ca2: $54
    inc hl                                        ; $6ca3: $23
    db $fc                                        ; $6ca4: $fc
    cp d                                          ; $6ca5: $ba
    inc sp                                        ; $6ca6: $33
    xor [hl]                                      ; $6ca7: $ae
    inc [hl]                                      ; $6ca8: $34
    xor $7b                                       ; $6ca9: $ee $7b
    dec hl                                        ; $6cab: $2b
    add hl, hl                                    ; $6cac: $29
    jr jr_059_6cfc                                ; $6cad: $18 $4d

    pop de                                        ; $6caf: $d1
    ld a, [c]                                     ; $6cb0: $f2
    adc c                                         ; $6cb1: $89
    pop bc                                        ; $6cb2: $c1
    ld b, h                                       ; $6cb3: $44
    ld a, [$a633]                                 ; $6cb4: $fa $33 $a6
    xor l                                         ; $6cb7: $ad
    jp nc, $89d8                                  ; $6cb8: $d2 $d8 $89

    rst $30                                       ; $6cbb: $f7
    cp l                                          ; $6cbc: $bd
    rst $20                                       ; $6cbd: $e7

Jump_059_6cbe:
    call nz, Call_000_0005                        ; $6cbe: $c4 $05 $00
    sbc [hl]                                      ; $6cc1: $9e

jr_059_6cc2:
    rst $28                                       ; $6cc2: $ef
    ld e, d                                       ; $6cc3: $5a
    db $e3                                        ; $6cc4: $e3
    inc e                                         ; $6cc5: $1c
    ldh a, [$0b]                                  ; $6cc6: $f0 $0b
    ld c, e                                       ; $6cc8: $4b
    ld c, l                                       ; $6cc9: $4d
    ld e, c                                       ; $6cca: $59
    dec d                                         ; $6ccb: $15
    xor c                                         ; $6ccc: $a9
    sbc a                                         ; $6ccd: $9f
    pop bc                                        ; $6cce: $c1
    jr c, jr_059_6c77                             ; $6ccf: $38 $a6

    db $ed                                        ; $6cd1: $ed
    ld e, a                                       ; $6cd2: $5f
    rst $10                                       ; $6cd3: $d7
    and l                                         ; $6cd4: $a5
    ld e, $e9                                     ; $6cd5: $1e $e9
    ld sp, hl                                     ; $6cd7: $f9
    cp a                                          ; $6cd8: $bf
    rst $38                                       ; $6cd9: $ff
    ld c, e                                       ; $6cda: $4b
    add [hl]                                      ; $6cdb: $86
    xor h                                         ; $6cdc: $ac
    rst $00                                       ; $6cdd: $c7
    ld d, b                                       ; $6cde: $50
    ld a, [de]                                    ; $6cdf: $1a
    rst $00                                       ; $6ce0: $c7
    ld b, a                                       ; $6ce1: $47
    db $eb                                        ; $6ce2: $eb
    cp l                                          ; $6ce3: $bd
    nop                                           ; $6ce4: $00
    cp h                                          ; $6ce5: $bc
    and e                                         ; $6ce6: $a3
    sub h                                         ; $6ce7: $94
    db $e3                                        ; $6ce8: $e3
    or $b7                                        ; $6ce9: $f6 $b7
    cp $8c                                        ; $6ceb: $fe $8c
    ld l, c                                       ; $6ced: $69
    xor e                                         ; $6cee: $ab
    inc [hl]                                      ; $6cef: $34
    halt                                          ; $6cf0: $76
    ld [c], a                                     ; $6cf1: $e2
    db $ed                                        ; $6cf2: $ed
    rst $28                                       ; $6cf3: $ef
    dec hl                                        ; $6cf4: $2b
    ld e, l                                       ; $6cf5: $5d
    sub [hl]                                      ; $6cf6: $96
    cpl                                           ; $6cf7: $2f
    rst $10                                       ; $6cf8: $d7
    ld [hl], $25                                  ; $6cf9: $36 $25
    push hl                                       ; $6cfb: $e5

jr_059_6cfc:
    inc de                                        ; $6cfc: $13
    add e                                         ; $6cfd: $83
    adc c                                         ; $6cfe: $89

Jump_059_6cff:
    ld e, d                                       ; $6cff: $5a
    ld [hl], a                                    ; $6d00: $77
    add $95                                       ; $6d01: $c6 $95
    add $7d                                       ; $6d03: $c6 $7d
    ld l, a                                       ; $6d05: $6f
    add hl, hl                                    ; $6d06: $29
    rst $38                                       ; $6d07: $ff
    inc [hl]                                      ; $6d08: $34
    adc a                                         ; $6d09: $8f
    ei                                            ; $6d0a: $fb
    sbc $73                                       ; $6d0b: $de $73
    ld h, d                                       ; $6d0d: $62
    ld l, [hl]                                    ; $6d0e: $6e
    ld e, l                                       ; $6d0f: $5d
    nop                                           ; $6d10: $00
    ld e, $a1                                     ; $6d11: $1e $a1
    ret                                           ; $6d13: $c9


    cp [hl]                                       ; $6d14: $be
    ld b, a                                       ; $6d15: $47
    ld a, a                                       ; $6d16: $7f
    dec hl                                        ; $6d17: $2b
    ld a, a                                       ; $6d18: $7f
    and $ff                                       ; $6d19: $e6 $ff
    db $db                                        ; $6d1b: $db
    xor d                                         ; $6d1c: $aa
    ld a, a                                       ; $6d1d: $7f
    dec b                                         ; $6d1e: $05
    ld d, e                                       ; $6d1f: $53
    rst $30                                       ; $6d20: $f7
    ld e, $5a                                     ; $6d21: $1e $5a
    ld h, e                                       ; $6d23: $63
    ret c                                         ; $6d24: $d8

    db $fd                                        ; $6d25: $fd
    ld c, d                                       ; $6d26: $4a
    inc sp                                        ; $6d27: $33
    xor [hl]                                      ; $6d28: $ae
    add hl, sp                                    ; $6d29: $39
    adc c                                         ; $6d2a: $89
    inc [hl]                                      ; $6d2b: $34
    rst $30                                       ; $6d2c: $f7
    or $fd                                        ; $6d2d: $f6 $fd
    ld sp, $936c                                  ; $6d2f: $31 $6c $93
    sbc d                                         ; $6d32: $9a
    sub h                                         ; $6d33: $94
    ret                                           ; $6d34: $c9


    ld a, a                                       ; $6d35: $7f
    or $d5                                        ; $6d36: $f6 $d5
    rrca                                          ; $6d38: $0f
    ld a, a                                       ; $6d39: $7f
    jp hl                                         ; $6d3a: $e9


    inc c                                         ; $6d3b: $0c
    xor h                                         ; $6d3c: $ac
    cp a                                          ; $6d3d: $bf
    nop                                           ; $6d3e: $00
    db $fc                                        ; $6d3f: $fc
    ld [hl], h                                    ; $6d40: $74
    ld d, e                                       ; $6d41: $53
    ret                                           ; $6d42: $c9


    rst $38                                       ; $6d43: $ff
    sbc l                                         ; $6d44: $9d
    ld e, a                                       ; $6d45: $5f
    sbc d                                         ; $6d46: $9a
    ccf                                           ; $6d47: $3f
    ld a, h                                       ; $6d48: $7c
    ld a, a                                       ; $6d49: $7f
    ld a, a                                       ; $6d4a: $7f
    call Call_059_585e                            ; $6d4b: $cd $5e $58
    or d                                          ; $6d4e: $b2
    ld d, b                                       ; $6d4f: $50
    sbc d                                         ; $6d50: $9a
    push hl                                       ; $6d51: $e5
    inc h                                         ; $6d52: $24
    ld a, a                                       ; $6d53: $7f
    ldh [$d9], a                                  ; $6d54: $e0 $d9
    and h                                         ; $6d56: $a4
    and d                                         ; $6d57: $a2
    sbc e                                         ; $6d58: $9b
    ld d, h                                       ; $6d59: $54
    ld hl, $bfcc                                  ; $6d5a: $21 $cc $bf
    dec [hl]                                      ; $6d5d: $35
    ld a, a                                       ; $6d5e: $7f
    rst $20                                       ; $6d5f: $e7
    ld e, h                                       ; $6d60: $5c
    or c                                          ; $6d61: $b1
    ld c, b                                       ; $6d62: $48
    db $e3                                        ; $6d63: $e3
    sbc h                                         ; $6d64: $9c
    or l                                          ; $6d65: $b5
    and l                                         ; $6d66: $a5
    dec bc                                        ; $6d67: $0b
    nop                                           ; $6d68: $00
    inc e                                         ; $6d69: $1c
    daa                                           ; $6d6a: $27
    ld a, d                                       ; $6d6b: $7a
    and d                                         ; $6d6c: $a2
    ld c, $57                                     ; $6d6d: $0e $57
    sub $54                                       ; $6d6f: $d6 $54
    ld e, c                                       ; $6d71: $59
    dec hl                                        ; $6d72: $2b
    ld c, e                                       ; $6d73: $4b
    sbc e                                         ; $6d74: $9b
    xor b                                         ; $6d75: $a8
    inc [hl]                                      ; $6d76: $34
    xor c                                         ; $6d77: $a9
    ld h, a                                       ; $6d78: $67
    ld [hl], h                                    ; $6d79: $74
    ld h, a                                       ; $6d7a: $67
    jr nc, jr_059_6da6                            ; $6d7b: $30 $29

    ld l, h                                       ; $6d7d: $6c
    dec hl                                        ; $6d7e: $2b
    or [hl]                                       ; $6d7f: $b6
    add hl, bc                                    ; $6d80: $09
    ld c, d                                       ; $6d81: $4a
    ld c, $76                                     ; $6d82: $0e $76
    sbc e                                         ; $6d84: $9b
    add h                                         ; $6d85: $84
    dec h                                         ; $6d86: $25
    jr @-$17                                      ; $6d87: $18 $e7

    rr a                                          ; $6d89: $cb $1f
    ld a, b                                       ; $6d8b: $78
    ld [c], a                                     ; $6d8c: $e2
    sbc h                                         ; $6d8d: $9c
    cp a                                          ; $6d8e: $bf
    db $e4                                        ; $6d8f: $e4
    add hl, sp                                    ; $6d90: $39
    ld l, [hl]                                    ; $6d91: $6e
    add hl, hl                                    ; $6d92: $29
    rst $38                                       ; $6d93: $ff
    sbc l                                         ; $6d94: $9d
    di                                            ; $6d95: $f3
    ld [hl], l                                    ; $6d96: $75
    ld [hl-], a                                   ; $6d97: $32
    ld l, $08                                     ; $6d98: $2e $08
    add hl, hl                                    ; $6d9a: $29
    adc a                                         ; $6d9b: $8f
    add $4f                                       ; $6d9c: $c6 $4f
    ld a, [hl+]                                   ; $6d9e: $2a
    cp d                                          ; $6d9f: $ba
    ld c, c                                       ; $6da0: $49
    dec a                                         ; $6da1: $3d
    ret nc                                        ; $6da2: $d0

    db $ec                                        ; $6da3: $ec
    push de                                       ; $6da4: $d5
    ld e, c                                       ; $6da5: $59

jr_059_6da6:
    ld d, l                                       ; $6da6: $55
    add $d6                                       ; $6da7: $c6 $d6
    adc h                                         ; $6da9: $8c
    and $96                                       ; $6daa: $e6 $96
    or b                                          ; $6dac: $b0
    inc b                                         ; $6dad: $04
    ld h, e                                       ; $6dae: $63
    rst $38                                       ; $6daf: $ff
    call c, Call_000_00ba                         ; $6db0: $dc $ba $00
    ld c, $7f                                     ; $6db3: $0e $7f
    ld e, b                                       ; $6db5: $58
    adc b                                         ; $6db6: $88
    inc sp                                        ; $6db7: $33
    ld bc, $5116                                  ; $6db8: $01 $16 $51
    ld [c], a                                     ; $6dbb: $e2
    add hl, bc                                    ; $6dbc: $09
    ld d, $00                                     ; $6dbd: $16 $00
    db $fc                                        ; $6dbf: $fc
    pop bc                                        ; $6dc0: $c1

Jump_059_6dc1:
    ld a, [c]                                     ; $6dc1: $f2
    add sp, $71                                   ; $6dc2: $e8 $71
    ldh a, [$e5]                                  ; $6dc4: $f0 $e5
    pop af                                        ; $6dc6: $f1
    ld h, b                                       ; $6dc7: $60
    cp [hl]                                       ; $6dc8: $be
    ccf                                           ; $6dc9: $3f
    adc $c0                                       ; $6dca: $ce $c0
    dec sp                                        ; $6dcc: $3b
    ld c, d                                       ; $6dcd: $4a
    ld a, $d7                                     ; $6dce: $3e $d7
    add hl, sp                                    ; $6dd0: $39
    ld e, h                                       ; $6dd1: $5c
    inc sp                                        ; $6dd2: $33
    ld l, h                                       ; $6dd3: $6c
    adc [hl]                                      ; $6dd4: $8e
    ld l, c                                       ; $6dd5: $69
    ld de, $8975                                  ; $6dd6: $11 $75 $89
    rrca                                          ; $6dd9: $0f
    dec hl                                        ; $6dda: $2b
    ld l, h                                       ; $6ddb: $6c

Call_059_6ddc:
    and d                                         ; $6ddc: $a2
    ld a, [c]                                     ; $6ddd: $f2
    add c                                         ; $6dde: $81
    or [hl]                                       ; $6ddf: $b6
    jp nz, Jump_000_1dd2                          ; $6de0: $c2 $d2 $1d

    add l                                         ; $6de3: $85
    ld h, [hl]                                    ; $6de4: $66
    rrca                                          ; $6de5: $0f
    dec b                                         ; $6de6: $05
    nop                                           ; $6de7: $00
    sbc [hl]                                      ; $6de8: $9e
    rrca                                          ; $6de9: $0f
    or h                                          ; $6dea: $b4
    add l                                         ; $6deb: $85
    ld [de], a                                    ; $6dec: $12

Call_059_6ded:
    rst $18                                       ; $6ded: $df
    ld c, [hl]                                    ; $6dee: $4e
    ld d, d                                       ; $6def: $52
    ld a, $d0                                     ; $6df0: $3e $d0
    ld d, $0a                                     ; $6df2: $16 $0a
    nop                                           ; $6df4: $00
    ld a, h                                       ; $6df5: $7c
    ld a, e                                       ; $6df6: $7b
    ld c, $e9                                     ; $6df7: $0e $e9
    inc c                                         ; $6df9: $0c
    sbc h                                         ; $6dfa: $9c
    ld a, a                                       ; $6dfb: $7f
    adc $0b                                       ; $6dfc: $ce $0b

jr_059_6dfe:
    ld c, a                                       ; $6dfe: $4f
    or h                                          ; $6dff: $b4
    ld hl, sp-$4d                                 ; $6e00: $f8 $b3
    sub e                                         ; $6e02: $93
    ld sp, hl                                     ; $6e03: $f9
    sbc a                                         ; $6e04: $9f
    adc $37                                       ; $6e05: $ce $37
    ld a, e                                       ; $6e07: $7b
    jr z, jr_059_6e4b                             ; $6e08: $28 $41

    sub a                                         ; $6e0a: $97
    db $ed                                        ; $6e0b: $ed
    ld a, l                                       ; $6e0c: $7d
    db $d3                                        ; $6e0d: $d3
    ld e, d                                       ; $6e0e: $5a
    sbc h                                         ; $6e0f: $9c
    ld b, e                                       ; $6e10: $43
    ld d, b                                       ; $6e11: $50
    ld [c], a                                     ; $6e12: $e2
    rst $00                                       ; $6e13: $c7
    or l                                          ; $6e14: $b5
    jr c, jr_059_6dfe                             ; $6e15: $38 $e7

    and c                                         ; $6e17: $a1
    nop                                           ; $6e18: $00
    ret nc                                        ; $6e19: $d0

    and l                                         ; $6e1a: $a5
    ld a, e                                       ; $6e1b: $7b
    adc e                                         ; $6e1c: $8b
    add h                                         ; $6e1d: $84
    daa                                           ; $6e1e: $27
    sub h                                         ; $6e1f: $94
    ld l, a                                       ; $6e20: $6f
    inc e                                         ; $6e21: $1c
    ld [de], a                                    ; $6e22: $12
    ld a, a                                       ; $6e23: $7f
    halt                                          ; $6e24: $76
    ld [hl-], a                                   ; $6e25: $32
    rst $38                                       ; $6e26: $ff
    db $d3                                        ; $6e27: $d3
    ld sp, hl                                     ; $6e28: $f9
    ld h, [hl]                                    ; $6e29: $66
    ld a, a                                       ; $6e2a: $7f
    ld bc, $4e1e                                  ; $6e2b: $01 $1e $4e
    jp z, Jump_000_3349                           ; $6e2e: $ca $49 $33

    dec sp                                        ; $6e31: $3b
    add a                                         ; $6e32: $87
    inc d                                         ; $6e33: $14
    rst $30                                       ; $6e34: $f7
    dec e                                         ; $6e35: $1d
    jp z, Jump_059_7571                           ; $6e36: $ca $71 $75

    ld h, a                                       ; $6e39: $67
    add hl, de                                    ; $6e3a: $19
    add h                                         ; $6e3b: $84
    ld [hl], h                                    ; $6e3c: $74
    ld l, a                                       ; $6e3d: $6f
    inc de                                        ; $6e3e: $13
    sub l                                         ; $6e3f: $95
    ld l, h                                       ; $6e40: $6c
    ld l, e                                       ; $6e41: $6b
    sbc h                                         ; $6e42: $9c
    inc de                                        ; $6e43: $13
    sub a                                         ; $6e44: $97
    inc a                                         ; $6e45: $3c
    rst $00                                       ; $6e46: $c7
    ld l, l                                       ; $6e47: $6d
    call $1db1                                    ; $6e48: $cd $b1 $1d

jr_059_6e4b:
    dec [hl]                                      ; $6e4b: $35
    or a                                          ; $6e4c: $b7

jr_059_6e4d:
    inc [hl]                                      ; $6e4d: $34
    cp a                                          ; $6e4e: $bf
    dec l                                         ; $6e4f: $2d
    adc $79                                       ; $6e50: $ce $79
    ld h, l                                       ; $6e52: $65
    or a                                          ; $6e53: $b7
    ld c, a                                       ; $6e54: $4f
    ld l, h                                       ; $6e55: $6c
    rst $08                                       ; $6e56: $cf
    add hl, bc                                    ; $6e57: $09
    db $db                                        ; $6e58: $db
    and h                                         ; $6e59: $a4
    ld h, b                                       ; $6e5a: $60
    inc [hl]                                      ; $6e5b: $34
    and l                                         ; $6e5c: $a5
    ld a, a                                       ; $6e5d: $7f
    add $f7                                       ; $6e5e: $c6 $f7
    dec h                                         ; $6e60: $25
    sbc [hl]                                      ; $6e61: $9e
    inc l                                         ; $6e62: $2c
    daa                                           ; $6e63: $27
    sub d                                         ; $6e64: $92
    ld c, a                                       ; $6e65: $4f
    sbc e                                         ; $6e66: $9b
    ld d, e                                       ; $6e67: $53
    add hl, bc                                    ; $6e68: $09
    cp $9e                                        ; $6e69: $fe $9e
    ld hl, sp+$17                                 ; $6e6b: $f8 $17
    nop                                           ; $6e6d: $00
    ld e, $e1                                     ; $6e6e: $1e $e1
    db $fc                                        ; $6e70: $fc
    xor l                                         ; $6e71: $ad
    jr z, jr_059_6e4d                             ; $6e72: $28 $d9

    adc a                                         ; $6e74: $8f
    db $fc                                        ; $6e75: $fc
    sub l                                         ; $6e76: $95
    rst $38                                       ; $6e77: $ff
    reti                                          ; $6e78: $d9


    or [hl]                                       ; $6e79: $b6
    ld [$71e5], sp                                ; $6e7a: $08 $e5 $71
    ld d, d                                       ; $6e7d: $52
    inc l                                         ; $6e7e: $2c
    ei                                            ; $6e7f: $fb
    ld c, e                                       ; $6e80: $4b
    ld a, h                                       ; $6e81: $7c
    or c                                          ; $6e82: $b1
    db $10                                        ; $6e83: $10
    ld a, [hl+]                                   ; $6e84: $2a
    dec [hl]                                      ; $6e85: $35
    ld h, l                                       ; $6e86: $65
    sbc l                                         ; $6e87: $9d
    ld h, l                                       ; $6e88: $65
    sbc d                                         ; $6e89: $9a
    jr c, jr_059_6eef                             ; $6e8a: $38 $63

    rst $08                                       ; $6e8c: $cf
    ld a, c                                       ; $6e8d: $79
    push hl                                       ; $6e8e: $e5
    sub h                                         ; $6e8f: $94
    ld d, d                                       ; $6e90: $52
    dec h                                         ; $6e91: $25
    dec d                                         ; $6e92: $15
    db $dd                                        ; $6e93: $dd
    and h                                         ; $6e94: $a4
    jp Jump_059_4195                              ; $6e95: $c3 $95 $41


    add sp, -$42                                  ; $6e98: $e8 $be
    ld b, e                                       ; $6e9a: $43
    or [hl]                                       ; $6e9b: $b6
    dec [hl]                                      ; $6e9c: $35
    adc $09                                       ; $6e9d: $ce $09
    add hl, de                                    ; $6e9f: $19
    ld a, [$7f9b]                                 ; $6ea0: $fa $9b $7f
    xor c                                         ; $6ea3: $a9
    ld a, a                                       ; $6ea4: $7f
    rst $20                                       ; $6ea5: $e7
    db $db                                        ; $6ea6: $db
    adc a                                         ; $6ea7: $8f
    db $fc                                        ; $6ea8: $fc
    db $eb                                        ; $6ea9: $eb
    ld [de], a                                    ; $6eaa: $12
    cpl                                           ; $6eab: $2f
    adc $d8                                       ; $6eac: $ce $d8
    inc de                                        ; $6eae: $13
    cp $2b                                        ; $6eaf: $fe $2b
    jp z, $94b6                                   ; $6eb1: $ca $b6 $94

    rst $38                                       ; $6eb4: $ff
    adc $f9                                       ; $6eb5: $ce $f9
    ld l, d                                       ; $6eb7: $6a
    ld l, d                                       ; $6eb8: $6a
    cp d                                          ; $6eb9: $ba
    nop                                           ; $6eba: $00
    sbc h                                         ; $6ebb: $9c
    and c                                         ; $6ebc: $a1
    ld e, b                                       ; $6ebd: $58
    ld e, c                                       ; $6ebe: $59
    sbc h                                         ; $6ebf: $9c
    sbc h                                         ; $6ec0: $9c

jr_059_6ec1:
    xor h                                         ; $6ec1: $ac
    ld [hl], a                                    ; $6ec2: $77
    ld [de], a                                    ; $6ec3: $12
    sub l                                         ; $6ec4: $95
    inc c                                         ; $6ec5: $0c
    db $fd                                        ; $6ec6: $fd
    xor l                                         ; $6ec7: $ad
    pop de                                        ; $6ec8: $d1
    or d                                          ; $6ec9: $b2
    xor l                                         ; $6eca: $ad
    ld [hl], c                                    ; $6ecb: $71
    ld c, [hl]                                    ; $6ecc: $4e
    ld e, h                                       ; $6ecd: $5c
    add d                                         ; $6ece: $82
    ld c, [hl]                                    ; $6ecf: $4e
    daa                                           ; $6ed0: $27
    xor c                                         ; $6ed1: $a9
    jp hl                                         ; $6ed2: $e9


    and [hl]                                      ; $6ed3: $a6
    jp nc, Jump_000_32fc                          ; $6ed4: $d2 $fc $32

    ld a, e                                       ; $6ed7: $7b
    pop hl                                        ; $6ed8: $e1
    ld e, c                                       ; $6ed9: $59
    ld e, e                                       ; $6eda: $5b
    ld b, l                                       ; $6edb: $45
    push bc                                       ; $6edc: $c5
    ld a, l                                       ; $6edd: $7d
    ld d, e                                       ; $6ede: $53
    add hl, bc                                    ; $6edf: $09
    xor e                                         ; $6ee0: $ab
    ld [c], a                                     ; $6ee1: $e2
    cpl                                           ; $6ee2: $2f
    nop                                           ; $6ee3: $00
    ret nc                                        ; $6ee4: $d0

    dec sp                                        ; $6ee5: $3b
    cp c                                          ; $6ee6: $b9
    ld c, h                                       ; $6ee7: $4c
    ld d, $93                                     ; $6ee8: $16 $93
    xor b                                         ; $6eea: $a8
    call nc, $f7b8                                ; $6eeb: $d4 $b8 $f7
    ld b, d                                       ; $6eee: $42

jr_059_6eef:
    adc c                                         ; $6eef: $89
    ld [hl], e                                    ; $6ef0: $73
    adc e                                         ; $6ef1: $8b
    call nc, $f2cf                                ; $6ef2: $d4 $cf $f2
    ld l, l                                       ; $6ef5: $6d
    adc e                                         ; $6ef6: $8b
    ld d, [hl]                                    ; $6ef7: $56
    cp $ec                                        ; $6ef8: $fe $ec
    cp $2f                                        ; $6efa: $fe $2f
    dec [hl]                                      ; $6efc: $35
    ld b, d                                       ; $6efd: $42
    ld [c], a                                     ; $6efe: $e2
    sbc h                                         ; $6eff: $9c
    ld d, a                                       ; $6f00: $57
    or b                                          ; $6f01: $b0
    sbc l                                         ; $6f02: $9d
    cp b                                          ; $6f03: $b8
    ld d, $25                                     ; $6f04: $16 $25
    ei                                            ; $6f06: $fb
    sub c                                         ; $6f07: $91
    ld a, a                                       ; $6f08: $7f
    ld e, l                                       ; $6f09: $5d
    rst $10                                       ; $6f0a: $d7
    dec h                                         ; $6f0b: $25
    and l                                         ; $6f0c: $a5
    rst $30                                       ; $6f0d: $f7
    ld a, l                                       ; $6f0e: $7d
    ld e, l                                       ; $6f0f: $5d
    sub a                                         ; $6f10: $97
    ld a, [hl+]                                   ; $6f11: $2a
    ld l, e                                       ; $6f12: $6b
    push af                                       ; $6f13: $f5
    jr c, jr_059_6ec1                             ; $6f14: $38 $ab

    ld a, e                                       ; $6f16: $7b
    db $e3                                        ; $6f17: $e3
    ld b, h                                       ; $6f18: $44
    call nc, Call_059_5d75                        ; $6f19: $d4 $75 $5d
    nop                                           ; $6f1c: $00
    inc a                                         ; $6f1d: $3c
    rst $08                                       ; $6f1e: $cf
    ld e, b                                       ; $6f1f: $58
    ld h, $87                                     ; $6f20: $26 $87
    ret c                                         ; $6f22: $d8

    dec e                                         ; $6f23: $1d
    inc l                                         ; $6f24: $2c
    xor c                                         ; $6f25: $a9
    ld h, $33                                     ; $6f26: $26 $33
    ld [de], a                                    ; $6f28: $12
    sub [hl]                                      ; $6f29: $96
    ld l, h                                       ; $6f2a: $6c
    ld l, e                                       ; $6f2b: $6b
    sbc h                                         ; $6f2c: $9c
    inc de                                        ; $6f2d: $13
    add d                                         ; $6f2e: $82
    rst $00                                       ; $6f2f: $c7
    ld h, b                                       ; $6f30: $60
    dec hl                                        ; $6f31: $2b
    ld b, e                                       ; $6f32: $43
    ld a, a                                       ; $6f33: $7f
    di                                            ; $6f34: $f3
    sub a                                         ; $6f35: $97
    db $fd                                        ; $6f36: $fd
    ret z                                         ; $6f37: $c8

    rst $38                                       ; $6f38: $ff
    ld [de], a                                    ; $6f39: $12
    ld h, a                                       ; $6f3a: $67
    sub h                                         ; $6f3b: $94
    xor $31                                       ; $6f3c: $ee $31
    cp a                                          ; $6f3e: $bf
    ld e, [hl]                                    ; $6f3f: $5e
    dec a                                         ; $6f40: $3d
    ld c, [hl]                                    ; $6f41: $4e
    db $e4                                        ; $6f42: $e4
    rst $18                                       ; $6f43: $df
    sbc d                                         ; $6f44: $9a
    db $e3                                        ; $6f45: $e3
    add $ed                                       ; $6f46: $c6 $ed
    ld h, c                                       ; $6f48: $61
    add d                                         ; $6f49: $82
    ld e, a                                       ; $6f4a: $5f
    ld a, c                                       ; $6f4b: $79
    or b                                          ; $6f4c: $b0
    ld a, e                                       ; $6f4d: $7b
    rst $08                                       ; $6f4e: $cf
    ld e, c                                       ; $6f4f: $59
    inc e                                         ; $6f50: $1c
    and [hl]                                      ; $6f51: $a6
    ld l, h                                       ; $6f52: $6c
    jp c, $9c9a                                   ; $6f53: $da $9a $9c

    add hl, sp                                    ; $6f56: $39
    cp b                                          ; $6f57: $b8
    ld l, l                                       ; $6f58: $6d
    and e                                         ; $6f59: $a3
    sub e                                         ; $6f5a: $93
    add d                                         ; $6f5b: $82
    or c                                          ; $6f5c: $b1
    rst $20                                       ; $6f5d: $e7
    rlc [hl]                                      ; $6f5e: $cb $06
    jp nz, $2271                                  ; $6f60: $c2 $71 $22

    rst $38                                       ; $6f63: $ff
    sub [hl]                                      ; $6f64: $96
    ld l, l                                       ; $6f65: $6d
    adc l                                         ; $6f66: $8d
    ld d, a                                       ; $6f67: $57
    rst $38                                       ; $6f68: $ff
    adc $31                                       ; $6f69: $ce $31
    jr nz, jr_059_6fde                            ; $6f6b: $20 $71

    ld a, [$002f]                                 ; $6f6d: $fa $2f $00
    sbc h                                         ; $6f70: $9c
    ld hl, $cd2c                                  ; $6f71: $21 $2c $cd
    db $ec                                        ; $6f74: $ec
    inc e                                         ; $6f75: $1c
    jp nc, $fdd9                                  ; $6f76: $d2 $d9 $fd

    jp nc, Jump_059_73fc                          ; $6f79: $d2 $fc $73

    sub $74                                       ; $6f7c: $d6 $74
    ld l, a                                       ; $6f7e: $6f
    adc l                                         ; $6f7f: $8d
    ld [hl], e                                    ; $6f80: $73
    ld [c], a                                     ; $6f81: $e2
    ld [bc], a                                    ; $6f82: $02
    inc a                                         ; $6f83: $3c
    sbc a                                         ; $6f84: $9f
    db $10                                        ; $6f85: $10
    ld e, e                                       ; $6f86: $5b
    adc b                                         ; $6f87: $88
    or b                                          ; $6f88: $b0
    inc b                                         ; $6f89: $04
    inc de                                        ; $6f8a: $13
    add e                                         ; $6f8b: $83
    jp $2a9a                                      ; $6f8c: $c3 $9a $2a


    ld l, e                                       ; $6f8f: $6b
    cp l                                          ; $6f90: $bd
    db $ed                                        ; $6f91: $ed
    rst $10                                       ; $6f92: $d7
    dec h                                         ; $6f93: $25
    rrca                                          ; $6f94: $0f
    ld e, c                                       ; $6f95: $59
    ld e, $fd                                     ; $6f96: $1e $fd
    and l                                         ; $6f98: $a5
    sbc $b3                                       ; $6f99: $de $b3
    and a                                         ; $6f9b: $a7
    ret                                           ; $6f9c: $c9


    ld d, [hl]                                    ; $6f9d: $56
    ld a, c                                       ; $6f9e: $79
    inc e                                         ; $6f9f: $1c
    call c, $fe8e                                 ; $6fa0: $dc $8e $fe
    cpl                                           ; $6fa3: $2f
    add hl, sp                                    ; $6fa4: $39
    rst $28                                       ; $6fa5: $ef
    cp h                                          ; $6fa6: $bc
    db $eb                                        ; $6fa7: $eb
    or d                                          ; $6fa8: $b2
    ld h, l                                       ; $6fa9: $65
    cp [hl]                                       ; $6faa: $be
    cp a                                          ; $6fab: $bf
    ld [hl], h                                    ; $6fac: $74
    adc c                                         ; $6fad: $89
    ld [hl], a                                    ; $6fae: $77
    or a                                          ; $6faf: $b7
    ld [hl], c                                    ; $6fb0: $71
    jp c, Jump_000_26be                           ; $6fb1: $da $be $26

    ld h, l                                       ; $6fb4: $65
    ld d, l                                       ; $6fb5: $55
    ld l, e                                       ; $6fb6: $6b
    ld c, l                                       ; $6fb7: $4d
    sub a                                         ; $6fb8: $97
    jr c, @-$47                                   ; $6fb9: $38 $b7

    ld c, b                                       ; $6fbb: $48
    ldh a, [$ab]                                  ; $6fbc: $f0 $ab
    ld a, a                                       ; $6fbe: $7f
    rst $20                                       ; $6fbf: $e7
    db $db                                        ; $6fc0: $db
    adc a                                         ; $6fc1: $8f
    db $fc                                        ; $6fc2: $fc
    ld l, l                                       ; $6fc3: $6d
    ld h, l                                       ; $6fc4: $65
    rst $38                                       ; $6fc5: $ff
    db $dd                                        ; $6fc6: $dd
    and c                                         ; $6fc7: $a1
    db $fc                                        ; $6fc8: $fc
    reti                                          ; $6fc9: $d9


    db $fd                                        ; $6fca: $fd
    sub $ab                                       ; $6fcb: $d6 $ab
    ld a, h                                       ; $6fcd: $7c
    db $e3                                        ; $6fce: $e3
    sub b                                         ; $6fcf: $90
    db $fc                                        ; $6fd0: $fc
    ccf                                           ; $6fd1: $3f

Jump_059_6fd2:
    jr nc, @-$68                                  ; $6fd2: $30 $96

    ld a, [hl]                                    ; $6fd4: $7e
    rst $20                                       ; $6fd5: $e7
    xor a                                         ; $6fd6: $af
    push bc                                       ; $6fd7: $c5
    or h                                          ; $6fd8: $b4
    cp l                                          ; $6fd9: $bd
    nop                                           ; $6fda: $00
    ret nc                                        ; $6fdb: $d0

    xor e                                         ; $6fdc: $ab
    ret c                                         ; $6fdd: $d8

jr_059_6fde:
    and h                                         ; $6fde: $a4
    ld a, b                                       ; $6fdf: $78
    sbc [hl]                                      ; $6fe0: $9e
    or c                                          ; $6fe1: $b1
    ld c, h                                       ; $6fe2: $4c
    ld c, $b1                                     ; $6fe3: $0e $b1
    dec sp                                        ; $6fe5: $3b
    ld e, b                                       ; $6fe6: $58
    ld d, d                                       ; $6fe7: $52
    ld [hl], e                                    ; $6fe8: $73
    or a                                          ; $6fe9: $b7
    ld [hl], c                                    ; $6fea: $71
    jp c, Jump_059_6cbe                           ; $6feb: $da $be $6c

    ld l, e                                       ; $6fee: $6b
    sbc h                                         ; $6fef: $9c
    inc de                                        ; $6ff0: $13
    rla                                           ; $6ff1: $17
    nop                                           ; $6ff2: $00
    cp h                                          ; $6ff3: $bc
    jr c, jr_059_7059                             ; $6ff4: $38 $63

    ld c, a                                       ; $6ff6: $4f
    xor b                                         ; $6ff7: $a8
    xor c                                         ; $6ff8: $a9
    ret                                           ; $6ff9: $c9


    dec c                                         ; $6ffa: $0d
    ld [hl], c                                    ; $6ffb: $71
    xor $16                                       ; $6ffc: $ee $16
    add hl, bc                                    ; $6ffe: $09
    ld c, e                                       ; $6fff: $4b
    cp $ee                                        ; $7000: $fe $ee
    sbc h                                         ; $7002: $9c
    db $eb                                        ; $7003: $eb
    rst $38                                       ; $7004: $ff
    or a                                          ; $7005: $b7
    db $fd                                        ; $7006: $fd
    db $fd                                        ; $7007: $fd
    cpl                                           ; $7008: $2f
    ld hl, sp-$6b                                 ; $7009: $f8 $95
    ld h, b                                       ; $700b: $60
    ld b, h                                       ; $700c: $44
    db $ed                                        ; $700d: $ed
    or h                                          ; $700e: $b4
    or e                                          ; $700f: $b3
    ld d, l                                       ; $7010: $55
    and e                                         ; $7011: $a3
    ld h, h                                       ; $7012: $64
    db $e3                                        ; $7013: $e3
    call z, Call_000_0bff                         ; $7014: $cc $ff $0b
    nop                                           ; $7017: $00
    db $fc                                        ; $7018: $fc
    pop bc                                        ; $7019: $c1
    ld a, [c]                                     ; $701a: $f2
    ld c, b                                       ; $701b: $48
    ld hl, $2599                                  ; $701c: $21 $99 $25
    ld d, l                                       ; $701f: $55
    inc bc                                        ; $7020: $03
    reti                                          ; $7021: $d9


    ld [$b0de], a                                 ; $7022: $ea $de $b0
    ld c, e                                       ; $7025: $4b
    inc e                                         ; $7026: $1c
    daa                                           ; $7027: $27
    ld a, d                                       ; $7028: $7a
    and d                                         ; $7029: $a2
    and d                                         ; $702a: $a2
    ld l, h                                       ; $702b: $6c
    rst $28                                       ; $702c: $ef
    sbc e                                         ; $702d: $9b
    sub $a2                                       ; $702e: $d6 $a2
    sub h                                         ; $7030: $94
    rrca                                          ; $7031: $0f
    add h                                         ; $7032: $84
    ld b, h                                       ; $7033: $44
    add hl, bc                                    ; $7034: $09
    ld a, l                                       ; $7035: $7d
    ld a, a                                       ; $7036: $7f
    rst $08                                       ; $7037: $cf
    dec de                                        ; $7038: $1b
    inc d                                         ; $7039: $14
    nop                                           ; $703a: $00
    inc e                                         ; $703b: $1c
    daa                                           ; $703c: $27
    ld c, d                                       ; $703d: $4a
    ld sp, hl                                     ; $703e: $f9
    ld e, e                                       ; $703f: $5b
    cp a                                          ; $7040: $bf
    xor $28                                       ; $7041: $ee $28
    inc [hl]                                      ; $7043: $34
    ld a, e                                       ; $7044: $7b

jr_059_7045:
    ld c, l                                       ; $7045: $4d
    inc e                                         ; $7046: $1c
    ld h, a                                       ; $7047: $67
    adc h                                         ; $7048: $8c
    cp d                                          ; $7049: $ba
    nop                                           ; $704a: $00
    db $fc                                        ; $704b: $fc
    dec de                                        ; $704c: $1b
    db $10                                        ; $704d: $10
    ld l, d                                       ; $704e: $6a
    call $a4df                                    ; $704f: $cd $df $a4

jr_059_7052:
    and d                                         ; $7052: $a2
    dec sp                                        ; $7053: $3b
    ld c, d                                       ; $7054: $4a
    add hl, sp                                    ; $7055: $39
    xor [hl]                                      ; $7056: $ae
    xor $2c                                       ; $7057: $ee $2c

jr_059_7059:
    add e                                         ; $7059: $83
    sub b                                         ; $705a: $90
    ld l, h                                       ; $705b: $6c
    ld l, e                                       ; $705c: $6b
    sbc h                                         ; $705d: $9c
    inc de                                        ; $705e: $13
    cp d                                          ; $705f: $ba
    or a                                          ; $7060: $b7
    adc c                                         ; $7061: $89
    ld [$df12], a                                 ; $7062: $ea $12 $df
    add sp, $7e                                   ; $7065: $e8 $7e
    call $8b6f                                    ; $7067: $cd $6f $8b
    inc de                                        ; $706a: $13
    ld l, d                                       ; $706b: $6a
    sbc h                                         ; $706c: $9c
    xor e                                         ; $706d: $ab
    db $fc                                        ; $706e: $fc
    db $fd                                        ; $706f: $fd
    ld a, a                                       ; $7070: $7f
    db $eb                                        ; $7071: $eb
    ld d, l                                       ; $7072: $55
    halt                                          ; $7073: $76
    ei                                            ; $7074: $fb
    call nz, $9cf6                                ; $7075: $c4 $f6 $9c
    or b                                          ; $7078: $b0
    cp l                                          ; $7079: $bd
    nop                                           ; $707a: $00
    cp h                                          ; $707b: $bc
    ld l, a                                       ; $707c: $6f
    ld c, c                                       ; $707d: $49
    push de                                       ; $707e: $d5
    ld b, b                                       ; $707f: $40
    or [hl]                                       ; $7080: $b6
    sbc d                                         ; $7081: $9a
    jr c, jr_059_7052                             ; $7082: $38 $ce

    jr c, jr_059_7045                             ; $7084: $38 $bf

    dec d                                         ; $7086: $15
    ld [hl], l                                    ; $7087: $75
    adc c                                         ; $7088: $89
    db $e3                                        ; $7089: $e3
    ld b, h                                       ; $708a: $44
    db $eb                                        ; $708b: $eb
    or a                                          ; $708c: $b7
    ld e, [hl]                                    ; $708d: $5e
    dec e                                         ; $708e: $1d
    inc l                                         ; $708f: $2c
    adc a                                         ; $7090: $8f
    ld e, $e7                                     ; $7091: $1e $e7
    adc h                                         ; $7093: $8c
    ld d, $27                                     ; $7094: $16 $27
    db $ed                                        ; $7096: $ed
    ld hl, $2e39                                  ; $7097: $21 $39 $2e
    rrca                                          ; $709a: $0f
    rst $28                                       ; $709b: $ef
    pop hl                                        ; $709c: $e1
    cp a                                          ; $709d: $bf
    rra                                           ; $709e: $1f
    ld l, h                                       ; $709f: $6c
    or a                                          ; $70a0: $b7
    ld l, $f1                                     ; $70a1: $2e $f1
    ld h, a                                       ; $70a3: $67
    daa                                           ; $70a4: $27
    di                                            ; $70a5: $f3
    ccf                                           ; $70a6: $3f
    sbc l                                         ; $70a7: $9d
    ld e, a                                       ; $70a8: $5f
    adc d                                         ; $70a9: $8a
    or d                                          ; $70aa: $b2
    cp l                                          ; $70ab: $bd
    ld l, a                                       ; $70ac: $6f
    ld e, d                                       ; $70ad: $5a
    adc e                                         ; $70ae: $8b
    ld [hl], e                                    ; $70af: $73
    ld c, b                                       ; $70b0: $48
    ld h, a                                       ; $70b1: $67
    ldh [$fc], a                                  ; $70b2: $e0 $fc
    ld [hl], e                                    ; $70b4: $73
    ld a, $a9                                     ; $70b5: $3e $a9
    db $fc                                        ; $70b7: $fc
    ld d, a                                       ; $70b8: $57
    ld [hl], e                                    ; $70b9: $73
    ld l, h                                       ; $70ba: $6c
    call Call_000_0287                            ; $70bb: $cd $87 $02
    ld c, $76                                     ; $70be: $0e $76
    ld c, e                                       ; $70c0: $4b
    ld a, b                                       ; $70c1: $78
    and d                                         ; $70c2: $a2
    ld l, $00                                     ; $70c3: $2e $00
    db $fc                                        ; $70c5: $fc
    ld h, h                                       ; $70c6: $64
    ld b, [hl]                                    ; $70c7: $46
    jp nz, Jump_059_5bfc                          ; $70c8: $c2 $fc $5b

    db $fd                                        ; $70cb: $fd
    inc l                                         ; $70cc: $2c
    rst $18                                       ; $70cd: $df
    or [hl]                                       ; $70ce: $b6
    cp b                                          ; $70cf: $b8
    rst $18                                       ; $70d0: $df
    ld d, [hl]                                    ; $70d1: $56
    ld [hl], e                                    ; $70d2: $73
    add hl, de                                    ; $70d3: $19
    db $fc                                        ; $70d4: $fc
    sbc l                                         ; $70d5: $9d
    ld d, h                                       ; $70d6: $54
    cp $e7                                        ; $70d7: $fe $e7
    sbc $9d                                       ; $70d9: $de $9d
    or [hl]                                       ; $70db: $b6
    add d                                         ; $70dc: $82
    adc c                                         ; $70dd: $89
    pop bc                                        ; $70de: $c1
    ld h, c                                       ; $70df: $61
    sbc l                                         ; $70e0: $9d
    ld c, l                                       ; $70e1: $4d
    dec bc                                        ; $70e2: $0b
    inc sp                                        ; $70e3: $33
    cp d                                          ; $70e4: $ba
    call nz, $ea19                                ; $70e5: $c4 $19 $ea
    sbc b                                         ; $70e8: $98
    ld l, e                                       ; $70e9: $6b
    dec hl                                        ; $70ea: $2b
    rst $20                                       ; $70eb: $e7
    ld e, l                                       ; $70ec: $5d
    ld [hl], d                                    ; $70ed: $72
    ld d, c                                       ; $70ee: $51
    or [hl]                                       ; $70ef: $b6
    call z, $97f7                                 ; $70f0: $cc $f7 $97
    ld l, $00                                     ; $70f3: $2e $00
    cp h                                          ; $70f5: $bc
    cp e                                          ; $70f6: $bb
    adc l                                         ; $70f7: $8d
    and [hl]                                      ; $70f8: $a6
    ld c, c                                       ; $70f9: $49
    ld e, c                                       ; $70fa: $59
    push de                                       ; $70fb: $d5
    ld e, d                                       ; $70fc: $5a
    ld d, e                                       ; $70fd: $53
    ld d, d                                       ; $70fe: $52
    ldh a, [$2b]                                  ; $70ff: $f0 $2b
    call Call_000_25f2                            ; $7101: $cd $f2 $25
    sbc l                                         ; $7104: $9d
    ld sp, $1a47                                  ; $7105: $31 $47 $1a
    dec a                                         ; $7108: $3d
    sub a                                         ; $7109: $97
    cp b                                          ; $710a: $b8
    ld bc, $5b7c                                  ; $710b: $01 $7c $5b
    db $e3                                        ; $710e: $e3
    sbc h                                         ; $710f: $9c
    ld d, a                                       ; $7110: $57
    xor h                                         ; $7111: $ac
    ldh a, [$84]                                  ; $7112: $f0 $84
    ld l, d                                       ; $7114: $6a
    or a                                          ; $7115: $b7
    db $e4                                        ; $7116: $e4
    rst $38                                       ; $7117: $ff
    add c                                         ; $7118: $81
    or c                                          ; $7119: $b1
    ld l, $00                                     ; $711a: $2e $00
    sbc h                                         ; $711c: $9c
    pop hl                                        ; $711d: $e1
    sub e                                         ; $711e: $93
    jp nc, $f767                                  ; $711f: $d2 $67 $f7

    ld e, [hl]                                    ; $7122: $5e
    ld [de], a                                    ; $7123: $12
    rst $18                                       ; $7124: $df
    add sp, $7e                                   ; $7125: $e8 $7e
    db $dd                                        ; $7127: $dd
    and c                                         ; $7128: $a1
    db $fc                                        ; $7129: $fc
    reti                                          ; $712a: $d9


    db $fd                                        ; $712b: $fd
    ld e, a                                       ; $712c: $5f
    ld a, [hl+]                                   ; $712d: $2a
    adc d                                         ; $712e: $8a
    ei                                            ; $712f: $fb
    ld c, $e5                                     ; $7130: $0e $e5
    dec de                                        ; $7132: $1b
    add a                                         ; $7133: $87
    inc [hl]                                      ; $7134: $34
    ld b, $24                                     ; $7135: $06 $24
    xor h                                         ; $7137: $ac
    rst $38                                       ; $7138: $ff
    db $eb                                        ; $7139: $eb
    ld [bc], a                                    ; $713a: $02
    inc a                                         ; $713b: $3c
    ld a, a                                       ; $713c: $7f
    add $af                                       ; $713d: $c6 $af
    ld l, l                                       ; $713f: $6d
    jp hl                                         ; $7140: $e9


    adc $32                                       ; $7141: $ce $32
    ld [$e8a9], sp                                ; $7143: $08 $a9 $e8
    ld h, $cd                                     ; $7146: $26 $cd
    ld h, l                                       ; $7148: $65
    ldh a, [$b7]                                  ; $7149: $f0 $b7
    ld a, [$afe7]                                 ; $714b: $fa $e7 $af
    ld l, l                                       ; $714e: $6d
    xor c                                         ; $714f: $a9
    ld h, e                                       ; $7150: $63
    rst $08                                       ; $7151: $cf
    adc c                                         ; $7152: $89
    dec bc                                        ; $7153: $0b
    nop                                           ; $7154: $00
    sbc [hl]                                      ; $7155: $9e
    rst $38                                       ; $7156: $ff
    jp z, $9ce2                                   ; $7157: $ca $e2 $9c

    ld e, a                                       ; $715a: $5f
    db $eb                                        ; $715b: $eb
    cp a                                          ; $715c: $bf
    inc h                                         ; $715d: $24
    add sp, -$05                                  ; $715e: $e8 $fb
    ld c, $e5                                     ; $7160: $0e $e5
    cp b                                          ; $7162: $b8
    jp z, Jump_059_6cff                           ; $7163: $ca $ff $6c

    ld b, a                                       ; $7166: $47
    rst $30                                       ; $7167: $f7
    rst $20                                       ; $7168: $e7
    ld l, a                                       ; $7169: $6f
    cp l                                          ; $716a: $bd
    ld a, [$7fea]                                 ; $716b: $fa $ea $7f
    push de                                       ; $716e: $d5
    xor [hl]                                      ; $716f: $ae
    dec [hl]                                      ; $7170: $35
    ld l, c                                       ; $7171: $69
    adc [hl]                                      ; $7172: $8e
    dec l                                         ; $7173: $2d
    add hl, sp                                    ; $7174: $39
    rst $28                                       ; $7175: $ef
    add d                                         ; $7176: $82
    adc e                                         ; $7177: $8b
    or d                                          ; $7178: $b2
    ld h, l                                       ; $7179: $65
    cp [hl]                                       ; $717a: $be
    cp a                                          ; $717b: $bf
    ld [hl], h                                    ; $717c: $74
    ld bc, $b1fc                                  ; $717d: $01 $fc $b1
    dec a                                         ; $7180: $3d
    cp c                                          ; $7181: $b9
    inc b                                         ; $7182: $04
    and e                                         ; $7183: $a3
    ld a, h                                       ; $7184: $7c
    and d                                         ; $7185: $a2
    and $9a                                       ; $7186: $e6 $9a
    ld d, $a5                                     ; $7188: $16 $a5
    cp c                                          ; $718a: $b9
    inc c                                         ; $718b: $0c
    ld b, [hl]                                    ; $718c: $46
    jr c, jr_059_71d9                             ; $718d: $38 $4a

    ld [hl], $d2                                  ; $718f: $36 $d2
    adc [hl]                                      ; $7191: $8e
    jr z, jr_059_71bc                             ; $7192: $28 $28

    nop                                           ; $7194: $00
    db $fc                                        ; $7195: $fc
    pop bc                                        ; $7196: $c1
    ld a, [c]                                     ; $7197: $f2
    add sp, $71                                   ; $7198: $e8 $71
    ldh a, [$35]                                  ; $719a: $f0 $35
    sub a                                         ; $719c: $97
    pop bc                                        ; $719d: $c1
    ccf                                           ; $719e: $3f
    ld a, a                                       ; $719f: $7f
    ld hl, sp-$02                                 ; $71a0: $f8 $fe
    adc e                                         ; $71a2: $8b
    sub e                                         ; $71a3: $93
    or $90                                        ; $71a4: $f6 $90
    inc e                                         ; $71a6: $1c
    sub a                                         ; $71a7: $97
    add a                                         ; $71a8: $87
    rst $30                                       ; $71a9: $f7
    ldh a, [$df]                                  ; $71aa: $f0 $df
    rrca                                          ; $71ac: $0f
    or [hl]                                       ; $71ad: $b6
    ld e, e                                       ; $71ae: $5b
    sub a                                         ; $71af: $97
    ld hl, sp-$17                                 ; $71b0: $f8 $e9
    inc e                                         ; $71b2: $1c
    ld d, d                                       ; $71b3: $52
    ld a, [de]                                    ; $71b4: $1a
    dec a                                         ; $71b5: $3d
    db $e3                                        ; $71b6: $e3
    inc e                                         ; $71b7: $1c
    ld d, d                                       ; $71b8: $52
    call c, $c877                                 ; $71b9: $dc $77 $c8

jr_059_71bc:
    rst $38                                       ; $71bc: $ff
    sub e                                         ; $71bd: $93
    rst $00                                       ; $71be: $c7
    add hl, bc                                    ; $71bf: $09
    cp l                                          ; $71c0: $bd
    db $ed                                        ; $71c1: $ed
    rst $08                                       ; $71c2: $cf

jr_059_71c3:
    ld sp, hl                                     ; $71c3: $f9
    db $db                                        ; $71c4: $db
    ld a, a                                       ; $71c5: $7f
    ld e, l                                       ; $71c6: $5d
    sub a                                         ; $71c7: $97
    adc $98                                       ; $71c8: $ce $98
    and e                                         ; $71ca: $a3
    ld [hl], c                                    ; $71cb: $71
    call z, Call_059_616f                         ; $71cc: $cc $6f $61
    cp $2d                                        ; $71cf: $fe $2d
    sbc a                                         ; $71d1: $9f
    ret z                                         ; $71d2: $c8

    inc l                                         ; $71d3: $2c
    and d                                         ; $71d4: $a2
    sub l                                         ; $71d5: $95
    rst $38                                       ; $71d6: $ff
    add hl, sp                                    ; $71d7: $39
    cp b                                          ; $71d8: $b8

jr_059_71d9:
    rst $20                                       ; $71d9: $e7
    ld b, h                                       ; $71da: $44

jr_059_71db:
    call nc, $8e25                                ; $71db: $d4 $25 $8e
    inc sp                                        ; $71de: $33
    rst $38                                       ; $71df: $ff
    sub l                                         ; $71e0: $95
    ld h, [hl]                                    ; $71e1: $66
    add hl, sp                                    ; $71e2: $39
    add hl, bc                                    ; $71e3: $09
    ld a, [hl]                                    ; $71e4: $7e
    push af                                       ; $71e5: $f5
    jr c, jr_059_71db                             ; $71e6: $38 $f3

    ld e, a                                       ; $71e8: $5f
    ld [hl], a                                    ; $71e9: $77
    add $95                                       ; $71ea: $c6 $95
    add $7d                                       ; $71ec: $c6 $7d
    ld l, a                                       ; $71ee: $6f
    ld l, c                                       ; $71ef: $69
    inc c                                         ; $71f0: $0c
    ld c, b                                       ; $71f1: $48
    ld e, b                                       ; $71f2: $58
    rst $38                                       ; $71f3: $ff
    rst $10                                       ; $71f4: $d7
    dec b                                         ; $71f5: $05
    nop                                           ; $71f6: $00
    inc a                                         ; $71f7: $3c
    or c                                          ; $71f8: $b1
    ld c, c                                       ; $71f9: $49
    db $dd                                        ; $71fa: $dd
    ld e, e                                       ; $71fb: $5b
    inc h                                         ; $71fc: $24
    inc a                                         ; $71fd: $3c
    ld d, c                                       ; $71fe: $51
    ld [hl], d                                    ; $71ff: $72
    adc a                                         ; $7200: $8f
    ld a, l                                       ; $7201: $7d
    ld [bc], a                                    ; $7202: $02
    jr z, jr_059_71c3                             ; $7203: $28 $be

    ccf                                           ; $7205: $3f
    add hl, bc                                    ; $7206: $09
    ld h, d                                       ; $7207: $62
    halt                                          ; $7208: $76
    adc c                                         ; $7209: $89
    jp $9b5f                                      ; $720a: $c3 $5f $9b


    ld [hl], c                                    ; $720d: $71
    and d                                         ; $720e: $a2
    daa                                           ; $720f: $27
    jp z, Jump_059_48b6                           ; $7210: $ca $b6 $48

    db $fc                                        ; $7213: $fc
    reti                                          ; $7214: $d9


    ret                                           ; $7215: $c9


    db $fc                                        ; $7216: $fc
    ld c, a                                       ; $7217: $4f
    rst $20                                       ; $7218: $e7
    sbc e                                         ; $7219: $9b
    dec a                                         ; $721a: $3d
    inc d                                         ; $721b: $14
    nop                                           ; $721c: $00
    inc e                                         ; $721d: $1c
    daa                                           ; $721e: $27
    ld c, d                                       ; $721f: $4a
    ld [hl], a                                    ; $7220: $77
    inc d                                         ; $7221: $14
    sbc d                                         ; $7222: $9a
    cp l                                          ; $7223: $bd
    ld l, h                                       ; $7224: $6c
    xor e                                         ; $7225: $ab
    ld [c], a                                     ; $7226: $e2
    ld [bc], a                                    ; $7227: $02
    ld c, $76                                     ; $7228: $0e $76
    ld c, e                                       ; $722a: $4b
    rst $30                                       ; $722b: $f7
    ld d, $cd                                     ; $722c: $16 $cd
    xor l                                         ; $722e: $ad
    ld c, e                                       ; $722f: $4b
    ld c, $68                                     ; $7230: $0e $68
    ld c, e                                       ; $7232: $4b
    or [hl]                                       ; $7233: $b6
    dec [hl]                                      ; $7234: $35
    ld e, d                                       ; $7235: $5a
    cp a                                          ; $7236: $bf
    di                                            ; $7237: $f3
    rst $10                                       ; $7238: $d7
    ld [c], a                                     ; $7239: $e2
    cp [hl]                                       ; $723a: $be
    or a                                          ; $723b: $b7
    call nz, Call_000_09f3                        ; $723c: $c4 $f3 $09
    or c                                          ; $723f: $b1
    add l                                         ; $7240: $85
    inc h                                         ; $7241: $24
    ld h, l                                       ; $7242: $65
    ld d, c                                       ; $7243: $51
    sbc d                                         ; $7244: $9a
    rst $08                                       ; $7245: $cf
    xor $f8                                       ; $7246: $ee $f8
    ld d, d                                       ; $7248: $52
    pop de                                        ; $7249: $d1
    db $e4                                        ; $724a: $e4
    ld e, d                                       ; $724b: $5a
    adc e                                         ; $724c: $8b
    sub d                                         ; $724d: $92
    rst $38                                       ; $724e: $ff
    daa                                           ; $724f: $27
    adc a                                         ; $7250: $8f
    or e                                          ; $7251: $b3
    ldh a, [$97]                                  ; $7252: $f0 $97
    and $97                                       ; $7254: $e6 $97
    reti                                          ; $7256: $d9


    ld e, a                                       ; $7257: $5f
    nop                                           ; $7258: $00
    ld a, h                                       ; $7259: $7c
    ld e, e                                       ; $725a: $5b
    jp $c5fa                                      ; $725b: $c3 $fa $c5


    di                                            ; $725e: $f3
    add hl, bc                                    ; $725f: $09
    or c                                          ; $7260: $b1
    add l                                         ; $7261: $85
    ld [$f74b], sp                                ; $7262: $08 $4b $f7
    sbc b                                         ; $7265: $98
    sbc a                                         ; $7266: $9f
    rst $38                                       ; $7267: $ff
    dec b                                         ; $7268: $05
    nop                                           ; $7269: $00
    sbc [hl]                                      ; $726a: $9e
    rst $38                                       ; $726b: $ff
    xor d                                         ; $726c: $aa
    halt                                          ; $726d: $76
    dec bc                                        ; $726e: $0b
    ld c, d                                       ; $726f: $4a
    inc a                                         ; $7270: $3c
    ld d, h                                       ; $7271: $54
    adc d                                         ; $7272: $8a
    dec d                                         ; $7273: $15
    sbc [hl]                                      ; $7274: $9e
    sub b                                         ; $7275: $90
    db $fd                                        ; $7276: $fd
    db $fd                                        ; $7277: $fd
    ld [hl], l                                    ; $7278: $75
    ld a, [hl]                                    ; $7279: $7e
    dec hl                                        ; $727a: $2b
    ld c, d                                       ; $727b: $4a
    ld [hl], e                                    ; $727c: $73
    ld l, h                                       ; $727d: $6c
    jp hl                                         ; $727e: $e9


    adc [hl]                                      ; $727f: $8e
    ld c, e                                       ; $7280: $4b
    ld a, h                                       ; $7281: $7c
    ld [hl], c                                    ; $7282: $71
    ld h, [hl]                                    ; $7283: $66
    ld l, h                                       ; $7284: $6c
    add hl, hl                                    ; $7285: $29
    ld c, e                                       ; $7286: $4b
    sbc e                                         ; $7287: $9b
    db $e4                                        ; $7288: $e4
    ld a, a                                       ; $7289: $7f
    ld a, [$639a]                                 ; $728a: $fa $9a $63
    ld c, e                                       ; $728d: $4b
    jr nc, jr_059_72e9                            ; $728e: $30 $59

    ld l, a                                       ; $7290: $6f
    ld e, a                                       ; $7291: $5f
    ld [c], a                                     ; $7292: $e2
    rst $38                                       ; $7293: $ff
    ld d, l                                       ; $7294: $55
    and h                                         ; $7295: $a4
    sub e                                         ; $7296: $93
    db $e4                                        ; $7297: $e4
    ld a, a                                       ; $7298: $7f
    ld a, [de]                                    ; $7299: $1a
    or a                                          ; $729a: $b7
    cp a                                          ; $729b: $bf
    sub a                                         ; $729c: $97
    inc e                                         ; $729d: $1c
    ld h, b                                       ; $729e: $60
    ld d, d                                       ; $729f: $52
    ld b, l                                       ; $72a0: $45
    add hl, hl                                    ; $72a1: $29
    add h                                         ; $72a2: $84
    xor b                                         ; $72a3: $a8
    ld [hl], h                                    ; $72a4: $74
    ld h, a                                       ; $72a5: $67
    ld e, h                                       ; $72a6: $5c
    ld l, c                                       ; $72a7: $69
    call c, $d6f7                                 ; $72a8: $dc $f7 $d6
    dec b                                         ; $72ab: $05
    nop                                           ; $72ac: $00
    db $fc                                        ; $72ad: $fc
    pop bc                                        ; $72ae: $c1
    ld a, [c]                                     ; $72af: $f2
    add sp, $71                                   ; $72b0: $e8 $71
    ldh a, [$e5]                                  ; $72b2: $f0 $e5
    ccf                                           ; $72b4: $3f

jr_059_72b5:
    ei                                            ; $72b5: $fb
    xor d                                         ; $72b6: $aa
    ld h, c                                       ; $72b7: $61
    ld l, a                                       ; $72b8: $6f
    ld [hl], c                                    ; $72b9: $71
    rst $38                                       ; $72ba: $ff
    add hl, sp                                    ; $72bb: $39
    sub c                                         ; $72bc: $91
    ld d, h                                       ; $72bd: $54
    cp $3b                                        ; $72be: $fe $3b
    rst $20                                       ; $72c0: $e7
    dec hl                                        ; $72c1: $2b
    ld e, d                                       ; $72c2: $5a
    ld b, l                                       ; $72c3: $45
    sub e                                         ; $72c4: $93
    dec bc                                        ; $72c5: $0b
    ld h, $2a                                     ; $72c6: $26 $2a
    pop hl                                        ; $72c8: $e1
    adc c                                         ; $72c9: $89
    ld sp, hl                                     ; $72ca: $f9
    ld e, a                                       ; $72cb: $5f
    ld a, [hl-]                                   ; $72cc: $3a
    jr c, jr_059_72b5                             ; $72cd: $38 $e6

    db $fc                                        ; $72cf: $fc
    xor a                                         ; $72d0: $af
    ld e, $35                                     ; $72d1: $1e $35
    ld a, [$7c02]                                 ; $72d3: $fa $02 $7c
    db $db                                        ; $72d6: $db
    and h                                         ; $72d7: $a4
    ld c, $75                                     ; $72d8: $0e $75
    ld b, h                                       ; $72da: $44
    ld [hl], a                                    ; $72db: $77
    xor b                                         ; $72dc: $a8
    adc c                                         ; $72dd: $89
    adc $21                                       ; $72de: $ce $21
    jr z, jr_059_72e2                             ; $72e0: $28 $00

jr_059_72e2:
    ld c, $9f                                     ; $72e2: $0e $9f
    ld a, l                                       ; $72e4: $7d
    push de                                       ; $72e5: $d5
    rst $18                                       ; $72e6: $df
    ld [hl], a                                    ; $72e7: $77
    ld l, b                                       ; $72e8: $68

jr_059_72e9:
    db $db                                        ; $72e9: $db
    and d                                         ; $72ea: $a2
    adc h                                         ; $72eb: $8c
    db $e4                                        ; $72ec: $e4
    ld sp, hl                                     ; $72ed: $f9
    xor [hl]                                      ; $72ee: $ae
    dec [hl]                                      ; $72ef: $35
    adc $01                                       ; $72f0: $ce $01
    rst $38                                       ; $72f2: $ff
    add hl, sp                                    ; $72f3: $39
    xor a                                         ; $72f4: $af
    add e                                         ; $72f5: $83
    ld h, e                                       ; $72f6: $63
    ld a, [hl]                                    ; $72f7: $7e
    ld d, l                                       ; $72f8: $55
    ld l, h                                       ; $72f9: $6c
    rst $38                                       ; $72fa: $ff
    dec b                                         ; $72fb: $05
    nop                                           ; $72fc: $00
    sbc [hl]                                      ; $72fd: $9e
    db $e3                                        ; $72fe: $e3
    or [hl]                                       ; $72ff: $b6
    ld a, d                                       ; $7300: $7a
    sbc h                                         ; $7301: $9c
    di                                            ; $7302: $f3
    ld l, d                                       ; $7303: $6a
    xor d                                         ; $7304: $aa
    ld a, [bc]                                    ; $7305: $0a
    db $dd                                        ; $7306: $dd
    ld a, e                                       ; $7307: $7b
    ld c, $6e                                     ; $7308: $0e $6e
    add hl, hl                                    ; $730a: $29
    db $fd                                        ; $730b: $fd
    inc sp                                        ; $730c: $33
    cp [hl]                                       ; $730d: $be
    cpl                                           ; $730e: $2f
    nop                                           ; $730f: $00
    inc e                                         ; $7310: $1c
    daa                                           ; $7311: $27
    ld e, d                                       ; $7312: $5a
    ld d, $27                                     ; $7313: $16 $27
    daa                                           ; $7315: $27
    db $eb                                        ; $7316: $eb
    sub l                                         ; $7317: $95
    ld a, l                                       ; $7318: $7d
    adc a                                         ; $7319: $8f
    xor $af                                       ; $731a: $ee $af
    pop de                                        ; $731c: $d1
    jp c, $b0b6                                   ; $731d: $da $b6 $b0

    cp l                                          ; $7320: $bd
    call nz, Call_059_67f3                        ; $7321: $c4 $f3 $67
    db $fc                                        ; $7324: $fc
    jp c, Jump_059_44f6                           ; $7325: $da $f6 $44

    db $dd                                        ; $7328: $dd
    ld e, e                                       ; $7329: $5b
    and e                                         ; $732a: $a3
    db $e4                                        ; $732b: $e4
    ccf                                           ; $732c: $3f
    ei                                            ; $732d: $fb
    ld [$bfcf], a                                 ; $732e: $ea $cf $bf
    ld h, h                                       ; $7331: $64
    ld e, e                                       ; $7332: $5b
    and e                                         ; $7333: $a3
    and c                                         ; $7334: $a1
    nop                                           ; $7335: $00
    cp h                                          ; $7336: $bc
    reti                                          ; $7337: $d9


    add hl, sp                                    ; $7338: $39
    sub h                                         ; $7339: $94
    call nc, Call_059_6ddc                        ; $733a: $d4 $dc $6d
    or h                                          ; $733d: $b4
    ld c, e                                       ; $733e: $4b
    ld c, $ff                                     ; $733f: $0e $ff
    ret nz                                        ; $7341: $c0

    ld e, b                                       ; $7342: $58
    inc de                                        ; $7343: $13
    ld h, l                                       ; $7344: $65
    and c                                         ; $7345: $a1
    ei                                            ; $7346: $fb
    and a                                         ; $7347: $a7
    db $fd                                        ; $7348: $fd
    ld b, e                                       ; $7349: $43
    ld bc, $a19c                                  ; $734a: $01 $9c $a1
    ld e, b                                       ; $734d: $58
    db $dd                                        ; $734e: $dd
    ccf                                           ; $734f: $3f
    db $ed                                        ; $7350: $ed
    ld [hl], l                                    ; $7351: $75
    ld l, a                                       ; $7352: $6f
    inc de                                        ; $7353: $13
    push de                                       ; $7354: $d5
    dec h                                         ; $7355: $25
    cp [hl]                                       ; $7356: $be
    xor l                                         ; $7357: $ad
    ld d, c                                       ; $7358: $51
    jp z, $e4e3                                   ; $7359: $ca $e3 $e4

    ld a, b                                       ; $735c: $78
    adc $da                                       ; $735d: $ce $da
    jr jr_059_737e                                ; $735f: $18 $1d

    or l                                          ; $7361: $b5
    jp nz, $8fd2                                  ; $7362: $c2 $d2 $8f

    xor $7f                                       ; $7365: $ee $7f
    call $39df                                    ; $7367: $cd $df $39
    rst $30                                       ; $736a: $f7
    sub e                                         ; $736b: $93
    add d                                         ; $736c: $82
    or c                                          ; $736d: $b1
    rst $20                                       ; $736e: $e7
    db $eb                                        ; $736f: $eb
    db $fd                                        ; $7370: $fd
    pop af                                        ; $7371: $f1
    ld [$f967], a                                 ; $7372: $ea $67 $f9
    or [hl]                                       ; $7375: $b6
    ld b, l                                       ; $7376: $45
    cp $7d                                        ; $7377: $fe $7d
    ld bc, $d9bc                                  ; $7379: $01 $bc $d9
    add hl, sp                                    ; $737c: $39
    sub h                                         ; $737d: $94

jr_059_737e:
    call nc, Call_059_6ddc                        ; $737e: $d4 $dc $6d
    inc [hl]                                      ; $7381: $34
    ld l, [hl]                                    ; $7382: $6e
    nop                                           ; $7383: $00
    ld c, $50                                     ; $7384: $0e $50
    or l                                          ; $7386: $b5
    ld e, e                                       ; $7387: $5b
    ld c, c                                       ; $7388: $49
    ld d, l                                       ; $7389: $55
    sub $ea                                       ; $738a: $d6 $ea
    ld d, c                                       ; $738c: $51
    dec a                                         ; $738d: $3d
    add [hl]                                      ; $738e: $86
    ld a, [c]                                     ; $738f: $f2

Call_059_7390:
    ld h, a                                       ; $7390: $67
    rst $30                                       ; $7391: $f7
    ld a, a                                       ; $7392: $7f
    add hl, bc                                    ; $7393: $09
    ld b, [hl]                                    ; $7394: $46
    ld sp, hl                                     ; $7395: $f9
    rst $08                                       ; $7396: $cf
    ld [c], a                                     ; $7397: $e2
    cp [hl]                                       ; $7398: $be
    rst $38                                       ; $7399: $ff
    db $f4                                        ; $739a: $f4
    ld e, a                                       ; $739b: $5f
    nop                                           ; $739c: $00
    ld l, $6a                                     ; $739d: $2e $6a
    cp $fb                                        ; $739f: $fe $fb
    db $e3                                        ; $73a1: $e3
    ld bc, $abce                                  ; $73a2: $01 $ce $ab
    rst $38                                       ; $73a5: $ff
    db $e4                                        ; $73a6: $e4
    sbc e                                         ; $73a7: $9b
    rst $28                                       ; $73a8: $ef
    halt                                          ; $73a9: $76
    ccf                                           ; $73aa: $3f
    nop                                           ; $73ab: $00
    adc $cb                                       ; $73ac: $ce $cb
    add $fa                                       ; $73ae: $c6 $fa
    ld a, $a6                                     ; $73b0: $3e $a6
    rst $18                                       ; $73b2: $df
    dec a                                         ; $73b3: $3d
    nop                                           ; $73b4: $00
    adc $cb                                       ; $73b5: $ce $cb
    ld a, a                                       ; $73b7: $7f
    or [hl]                                       ; $73b8: $b6
    sbc d                                         ; $73b9: $9a
    ld h, h                                       ; $73ba: $64
    ld e, e                                       ; $73bb: $5b
    or c                                          ; $73bc: $b1
    ld c, l                                       ; $73bd: $4d
    nop                                           ; $73be: $00
    adc $cb                                       ; $73bf: $ce $cb
    rst $38                                       ; $73c1: $ff
    add hl, sp                                    ; $73c2: $39
    ld a, a                                       ; $73c3: $7f
    sbc b                                         ; $73c4: $98
    ld l, d                                       ; $73c5: $6a
    rst $28                                       ; $73c6: $ef
    dec a                                         ; $73c7: $3d
    rst $28                                       ; $73c8: $ef
    ei                                            ; $73c9: $fb
    inc bc                                        ; $73ca: $03
    ld a, [hl]                                    ; $73cb: $7e
    nop                                           ; $73cc: $00
    adc $ab                                       ; $73cd: $ce $ab
    ld a, a                                       ; $73cf: $7f
    rst $20                                       ; $73d0: $e7
    jp $ef03                                      ; $73d1: $c3 $03 $ef


    ccf                                           ; $73d4: $3f
    ccf                                           ; $73d5: $3f
    and $1c                                       ; $73d6: $e6 $1c
    nop                                           ; $73d8: $00
    adc $2b                                       ; $73d9: $ce $2b
    jp z, $bef6                                   ; $73db: $ca $f6 $be

    sub h                                         ; $73de: $94
    rrca                                          ; $73df: $0f
    add h                                         ; $73e0: $84

jr_059_73e1:
    ld b, h                                       ; $73e1: $44
    ld l, c                                       ; $73e2: $69
    ld l, $83                                     ; $73e3: $2e $83
    rra                                           ; $73e5: $1f
    nop                                           ; $73e6: $00
    adc $ab                                       ; $73e7: $ce $ab
    ld [hl], b                                    ; $73e9: $70
    ld hl, $f35f                                  ; $73ea: $21 $5f $f3
    cp e                                          ; $73ed: $bb
    rst $30                                       ; $73ee: $f7
    inc a                                         ; $73ef: $3c
    nop                                           ; $73f0: $00
    adc $ab                                       ; $73f1: $ce $ab
    ld a, a                                       ; $73f3: $7f
    rst $20                                       ; $73f4: $e7
    db $db                                        ; $73f5: $db
    adc a                                         ; $73f6: $8f
    db $fc                                        ; $73f7: $fc
    ld bc, $271c                                  ; $73f8: $01 $1c $27
    ld a, d                                       ; $73fb: $7a

Jump_059_73fc:
    and d                                         ; $73fc: $a2
    ld l, h                                       ; $73fd: $6c
    adc e                                         ; $73fe: $8b
    inc [hl]                                      ; $73ff: $34
    add e                                         ; $7400: $83
    pop de                                        ; $7401: $d1
    sbc [hl]                                      ; $7402: $9e
    add l                                         ; $7403: $85
    add hl, bc                                    ; $7404: $09
    ld c, d                                       ; $7405: $4a
    ld [c], a                                     ; $7406: $e2
    db $db                                        ; $7407: $db
    ld a, [de]                                    ; $7408: $1a
    rst $20                                       ; $7409: $e7
    cp h                                          ; $740a: $bc
    or b                                          ; $740b: $b0
    inc [hl]                                      ; $740c: $34
    sub c                                         ; $740d: $91
    ld [hl], l                                    ; $740e: $75
    ld l, a                                       ; $740f: $6f
    ld d, d                                       ; $7410: $52
    jr nc, jr_059_73e1                            ; $7411: $30 $ce

    ld d, a                                       ; $7413: $57
    adc [hl]                                      ; $7414: $8e
    ld l, e                                       ; $7415: $6b
    xor e                                         ; $7416: $ab
    cp c                                          ; $7417: $b9
    ld e, e                                       ; $7418: $5b
    add l                                         ; $7419: $85
    sub $ff                                       ; $741a: $d6 $ff
    or d                                          ; $741c: $b2
    xor l                                         ; $741d: $ad
    pop af                                        ; $741e: $f1
    rla                                           ; $741f: $17
    nop                                           ; $7420: $00
    cp h                                          ; $7421: $bc

jr_059_7422:
    ld h, e                                       ; $7422: $63
    sbc h                                         ; $7423: $9c
    or c                                          ; $7424: $b1
    or [hl]                                       ; $7425: $b6
    xor a                                         ; $7426: $af
    jp nz, $7ded                                  ; $7427: $c2 $ed $7d

    pop bc                                        ; $742a: $c1
    xor a                                         ; $742b: $af
    inc a                                         ; $742c: $3c
    ld c, [hl]                                    ; $742d: $4e
    adc d                                         ; $742e: $8a
    ldh a, [rSCX]                                 ; $742f: $f0 $43
    add hl, bc                                    ; $7431: $09
    ld a, [hl-]                                   ; $7432: $3a
    sbc l                                         ; $7433: $9d
    db $e4                                        ; $7434: $e4
    db $d3                                        ; $7435: $d3
    dec h                                         ; $7436: $25
    ld e, [hl]                                    ; $7437: $5e
    sbc h                                         ; $7438: $9c
    jr jr_059_7422                                ; $7439: $18 $e7

    cp $5a                                        ; $743b: $fe $5a
    ld h, c                                       ; $743d: $61
    xor c                                         ; $743e: $a9
    jp hl                                         ; $743f: $e9


    inc e                                         ; $7440: $1c
    ld d, d                                       ; $7441: $52
    ld a, [de]                                    ; $7442: $1a
    dec a                                         ; $7443: $3d
    db $e3                                        ; $7444: $e3
    inc e                                         ; $7445: $1c
    jp nc, $7cef                                  ; $7446: $d2 $ef $7c

    push hl                                       ; $7449: $e5
    rst $38                                       ; $744a: $ff
    cp l                                          ; $744b: $bd
    rst $30                                       ; $744c: $f7
    scf                                           ; $744d: $37
    sub $05                                       ; $744e: $d6 $05
    nop                                           ; $7450: $00
    db $fc                                        ; $7451: $fc
    ld [hl], h                                    ; $7452: $74
    sub e                                         ; $7453: $93
    sbc d                                         ; $7454: $9a
    call z, Call_059_5848                         ; $7455: $cc $48 $58
    ld a, [bc]                                    ; $7458: $0a
    or [hl]                                       ; $7459: $b6
    db $dd                                        ; $745a: $dd
    or h                                          ; $745b: $b4
    and l                                         ; $745c: $a5
    db $f4                                        ; $745d: $f4
    ld e, c                                       ; $745e: $59
    cp [hl]                                       ; $745f: $be
    push af                                       ; $7460: $f5
    ld e, e                                       ; $7461: $5b
    ld d, c                                       ; $7462: $51
    rst $10                                       ; $7463: $d7
    ld [hl], l                                    ; $7464: $75
    ld l, l                                       ; $7465: $6d
    ld e, e                                       ; $7466: $5b
    adc b                                         ; $7467: $88
    ld [hl], a                                    ; $7468: $77
    reti                                          ; $7469: $d9


    inc c                                         ; $746a: $0c
    ld l, [hl]                                    ; $746b: $6e
    pop af                                        ; $746c: $f1
    db $fc                                        ; $746d: $fc
    add hl, de                                    ; $746e: $19
    rst $18                                       ; $746f: $df
    inc de                                        ; $7470: $13
    push de                                       ; $7471: $d5
    sub c                                         ; $7472: $91
    ld b, d                                       ; $7473: $42
    ld c, b                                       ; $7474: $48
    ld sp, hl                                     ; $7475: $f9
    ld l, a                                       ; $7476: $6f
    jp c, Jump_059_7f38                           ; $7477: $da $38 $7f

    ld hl, sp-$21                                 ; $747a: $f8 $df
    ld d, b                                       ; $747c: $50
    nop                                           ; $747d: $00
    ld a, h                                       ; $747e: $7c
    db $db                                        ; $747f: $db
    and h                                         ; $7480: $a4
    db $f4                                        ; $7481: $f4
    rst $08                                       ; $7482: $cf
    ld hl, sp-$4b                                 ; $7483: $f8 $b5
    ld l, l                                       ; $7485: $6d
    reti                                          ; $7486: $d9


    ld l, [hl]                                    ; $7487: $6e
    inc de                                        ; $7488: $13
    inc d                                         ; $7489: $14
    nop                                           ; $748a: $00
    xor $84                                       ; $748b: $ee $84
    pop hl                                        ; $748d: $e1
    ccf                                           ; $748e: $3f
    db $db                                        ; $748f: $db
    cp c                                          ; $7490: $b9
    ld a, c                                       ; $7491: $79
    call nc, $be25                                ; $7492: $d4 $25 $be
    dec a                                         ; $7495: $3d
    ld c, l                                       ; $7496: $4d
    sbc d                                         ; $7497: $9a
    ld h, e                                       ; $7498: $63
    inc e                                         ; $7499: $1c
    or h                                          ; $749a: $b4
    cp $87                                        ; $749b: $fe $87
    ld [bc], a                                    ; $749d: $02
    ld a, h                                       ; $749e: $7c
    ld e, e                                       ; $749f: $5b
    and h                                         ; $74a0: $a4
    jr z, @+$07                                   ; $74a1: $28 $05

    inc h                                         ; $74a3: $24
    ld c, h                                       ; $74a4: $4c
    cp l                                          ; $74a5: $bd
    ld bc, $dd21                                  ; $74a6: $01 $21 $dd
    dec sp                                        ; $74a9: $3b
    ld c, c                                       ; $74aa: $49
    ld d, $c2                                     ; $74ab: $16 $c2
    cp d                                          ; $74ad: $ba
    nop                                           ; $74ae: $00
    ld e, $fd                                     ; $74af: $1e $fd
    daa                                           ; $74b1: $27
    add l                                         ; $74b2: $85
    daa                                           ; $74b3: $27
    ld a, d                                       ; $74b4: $7a
    ld l, [hl]                                    ; $74b5: $6e
    add hl, hl                                    ; $74b6: $29
    ld a, a                                       ; $74b7: $7f
    halt                                          ; $74b8: $76
    rst $38                                       ; $74b9: $ff
    sub a                                         ; $74ba: $97
    ld a, d                                       ; $74bb: $7a
    inc e                                         ; $74bc: $1c
    sbc h                                         ; $74bd: $9c
    di                                            ; $74be: $f3
    or a                                          ; $74bf: $b7
    rst $38                                       ; $74c0: $ff
    sub d                                         ; $74c1: $92
    db $db                                        ; $74c2: $db
    push de                                       ; $74c3: $d5
    ld de, $36d3                                  ; $74c4: $11 $d3 $36
    xor c                                         ; $74c7: $a9
    add sp, $26                                   ; $74c8: $e8 $26
    and l                                         ; $74ca: $a5
    or h                                          ; $74cb: $b4
    ld l, h                                       ; $74cc: $6c
    db $db                                        ; $74cd: $db
    or [hl]                                       ; $74ce: $b6
    ld l, $00                                     ; $74cf: $2e $00
    inc a                                         ; $74d1: $3c
    ld e, c                                       ; $74d2: $59
    ld c, [hl]                                    ; $74d3: $4e
    ld c, d                                       ; $74d4: $4a
    pop af                                        ; $74d5: $f1
    cp [hl]                                       ; $74d6: $be
    ccf                                           ; $74d7: $3f
    add hl, hl                                    ; $74d8: $29
    sbc [hl]                                      ; $74d9: $9e
    ld h, a                                       ; $74da: $67
    inc l                                         ; $74db: $2c
    db $e3                                        ; $74dc: $e3
    sub [hl]                                      ; $74dd: $96
    rst $20                                       ; $74de: $e7
    dec de                                        ; $74df: $1b
    add a                                         ; $74e0: $87
    sub h                                         ; $74e1: $94
    ld c, l                                       ; $74e2: $4d
    ld e, e                                       ; $74e3: $5b
    pop bc                                        ; $74e4: $c1
    and e                                         ; $74e5: $a3
    ld a, e                                       ; $74e6: $7b
    ld e, h                                       ; $74e7: $5c
    rst $10                                       ; $74e8: $d7
    and l                                         ; $74e9: $a5
    inc [hl]                                      ; $74ea: $34
    res 1, c                                      ; $74eb: $cb $89
    ld h, h                                       ; $74ed: $64
    ld e, c                                       ; $74ee: $59
    ld [hl], l                                    ; $74ef: $75
    halt                                          ; $74f0: $76
    sub e                                         ; $74f1: $93
    ld c, a                                       ; $74f2: $4f
    sbc e                                         ; $74f3: $9b
    inc de                                        ; $74f4: $13
    ld [hl], c                                    ; $74f5: $71
    inc bc                                        ; $74f6: $03
    sbc h                                         ; $74f7: $9c
    ld hl, $cd2c                                  ; $74f8: $21 $2c $cd
    rra                                           ; $74fb: $1f
    or l                                          ; $74fc: $b5
    halt                                          ; $74fd: $76
    adc c                                         ; $74fe: $89

Call_059_74ff:
    ld l, a                                       ; $74ff: $6f
    daa                                           ; $7500: $27
    ret                                           ; $7501: $c9


    and d                                         ; $7502: $a2
    ld d, h                                       ; $7503: $54
    ld a, e                                       ; $7504: $7b
    xor a                                         ; $7505: $af
    or b                                          ; $7506: $b0
    and b                                         ; $7507: $a0
    nop                                           ; $7508: $00
    sbc h                                         ; $7509: $9c
    ld hl, $f12c                                  ; $750a: $21 $2c $f1
    inc b                                         ; $750d: $04
    inc h                                         ; $750e: $24
    pop hl                                        ; $750f: $e1
    ld c, l                                       ; $7510: $4d
    add sp, $12                                   ; $7511: $e8 $12
    rst $28                                       ; $7513: $ef
    rst $28                                       ; $7514: $ef
    sbc h                                         ; $7515: $9c
    dec hl                                        ; $7516: $2b
    ccf                                           ; $7517: $3f
    xor d                                         ; $7518: $aa
    ld b, [hl]                                    ; $7519: $46
    dec hl                                        ; $751a: $2b
    db $fd                                        ; $751b: $fd
    inc sp                                        ; $751c: $33
    cp $b5                                        ; $751d: $fe $b5
    db $dd                                        ; $751f: $dd
    ld [hl], c                                    ; $7520: $71
    ld c, [hl]                                    ; $7521: $4e
    ld b, h                                       ; $7522: $44
    ret                                           ; $7523: $c9


    rst $20                                       ; $7524: $e7
    ld a, [hl-]                                   ; $7525: $3a
    add a                                         ; $7526: $87
    xor e                                         ; $7527: $ab
    ld l, $39                                     ; $7528: $2e $39
    ld [$afcd], sp                                ; $752a: $08 $cd $af
    cp $97                                        ; $752d: $fe $97
    adc a                                         ; $752f: $8f
    sub $fb                                       ; $7530: $d6 $fb
    add d                                         ; $7532: $82
    ld e, a                                       ; $7533: $5f
    di                                            ; $7534: $f3
    ld [hl], a                                    ; $7535: $77
    adc $78                                       ; $7536: $ce $78
    ld e, c                                       ; $7538: $59
    sbc h                                         ; $7539: $9c
    di                                            ; $753a: $f3
    ld l, e                                       ; $753b: $6b
    db $fd                                        ; $753c: $fd
    rla                                           ; $753d: $17
    nop                                           ; $753e: $00
    cp h                                          ; $753f: $bc
    cp e                                          ; $7540: $bb
    adc l                                         ; $7541: $8d
    add $0d                                       ; $7542: $c6 $0d
    nop                                           ; $7544: $00
    ld c, $50                                     ; $7545: $0e $50
    or l                                          ; $7547: $b5
    ld e, e                                       ; $7548: $5b
    ld c, c                                       ; $7549: $49
    push bc                                       ; $754a: $c5
    ld c, [hl]                                    ; $754b: $4e
    xor [hl]                                      ; $754c: $ae
    sub h                                         ; $754d: $94
    ld c, d                                       ; $754e: $4a
    add a                                         ; $754f: $87
    ld d, d                                       ; $7550: $52
    ld c, b                                       ; $7551: $48
    inc [hl]                                      ; $7552: $34
    add hl, bc                                    ; $7553: $09
    ld b, [hl]                                    ; $7554: $46
    db $dd                                        ; $7555: $dd
    ld d, c                                       ; $7556: $51
    ld [hl], c                                    ; $7557: $71
    inc de                                        ; $7558: $13
    push de                                       ; $7559: $d5
    dec b                                         ; $755a: $05
    nop                                           ; $755b: $00
    inc e                                         ; $755c: $1c
    ret c                                         ; $755d: $d8

    ld [hl], e                                    ; $755e: $73
    ld c, e                                       ; $755f: $4b
    ld a, $91                                     ; $7560: $3e $91
    ld e, c                                       ; $7562: $59
    sub $2a                                       ; $7563: $d6 $2a
    sbc d                                         ; $7565: $9a
    ld e, h                                       ; $7566: $5c
    jr nc, jr_059_75ba                            ; $7567: $30 $51

    add hl, hl                                    ; $7569: $29
    call $a272                                    ; $756a: $cd $72 $a2
    jp nc, Jump_000_399f                          ; $756d: $d2 $9f $39

    ld b, [hl]                                    ; $7570: $46

Jump_059_7571:
    ld e, l                                       ; $7571: $5d
    ld [c], a                                     ; $7572: $e2
    db $fd                                        ; $7573: $fd
    ld [hl], $94                                  ; $7574: $36 $94
    ld l, l                                       ; $7576: $6d
    sub e                                         ; $7577: $93
    xor $51                                       ; $7578: $ee $51
    ld a, [$bfea]                                 ; $757a: $fa $ea $bf
    rst $38                                       ; $757d: $ff
    ld [hl], l                                    ; $757e: $75
    sub $fa                                       ; $757f: $d6 $fa
    ld e, a                                       ; $7581: $5f
    ldh a, [rOCPD]                                ; $7582: $f0 $6b
    ld d, d                                       ; $7584: $52
    ld h, $b4                                     ; $7585: $26 $b4
    cp $fb                                        ; $7587: $fe $fb
    call Call_000_075e                            ; $7589: $cd $5e $07
    db $fd                                        ; $758c: $fd
    pop de                                        ; $758d: $d1
    ld [hl], e                                    ; $758e: $73
    ld c, e                                       ; $758f: $4b
    di                                            ; $7590: $f3
    ld l, a                                       ; $7591: $6f
    rst $18                                       ; $7592: $df
    adc a                                         ; $7593: $8f
    add sp, $0b                                   ; $7594: $e8 $0b
    nop                                           ; $7596: $00
    inc a                                         ; $7597: $3c
    or c                                          ; $7598: $b1
    ld c, c                                       ; $7599: $49
    ld h, c                                       ; $759a: $61
    ld c, l                                       ; $759b: $4d
    ld d, h                                       ; $759c: $54
    db $d3                                        ; $759d: $d3
    ld c, l                                       ; $759e: $4d
    ld a, [c]                                     ; $759f: $f2
    ld [hl], a                                    ; $75a0: $77
    ld a, $3c                                     ; $75a1: $3e $3c
    ld [$9fc5], a                                 ; $75a3: $ea $c5 $9f
    sbc l                                         ; $75a6: $9d
    call z, Call_059_74ff                         ; $75a7: $cc $ff $74
    cp $17                                        ; $75aa: $fe $17
    inc d                                         ; $75ac: $14
    nop                                           ; $75ad: $00
    sbc h                                         ; $75ae: $9c
    sub c                                         ; $75af: $91
    ld d, d                                       ; $75b0: $52
    xor c                                         ; $75b1: $a9
    jp hl                                         ; $75b2: $e9


    ld h, $61                                     ; $75b3: $26 $61
    ld e, l                                       ; $75b5: $5d
    ld [c], a                                     ; $75b6: $e2
    db $db                                        ; $75b7: $db
    ld c, c                                       ; $75b8: $49
    or d                                          ; $75b9: $b2

jr_059_75ba:
    xor l                                         ; $75ba: $ad
    ld [hl], c                                    ; $75bb: $71
    adc $0b                                       ; $75bc: $ce $0b
    ld c, e                                       ; $75be: $4b
    ret c                                         ; $75bf: $d8

    or $66                                        ; $75c0: $f6 $66
    ld l, a                                       ; $75c2: $6f
    dec bc                                        ; $75c3: $0b
    dec h                                         ; $75c4: $25
    adc [hl]                                      ; $75c5: $8e
    inc de                                        ; $75c6: $13
    dec a                                         ; $75c7: $3d
    ld d, c                                       ; $75c8: $51
    or [hl]                                       ; $75c9: $b6
    ld b, l                                       ; $75ca: $45
    rst $10                                       ; $75cb: $d7
    ld [hl], l                                    ; $75cc: $75
    add hl, hl                                    ; $75cd: $29
    and l                                         ; $75ce: $a5
    add d                                         ; $75cf: $82
    ld [bc], a                                    ; $75d0: $02
    ld e, $04                                     ; $75d1: $1e $04
    or d                                          ; $75d3: $b2
    add h                                         ; $75d4: $84
    ld b, d                                       ; $75d5: $42
    ldh a, [$cb]                                  ; $75d6: $f0 $cb
    ld a, l                                       ; $75d8: $7d
    ld d, $90                                     ; $75d9: $16 $90
    and h                                         ; $75db: $a4
    ldh a, [rLY]                                  ; $75dc: $f0 $44
    ld [hl], a                                    ; $75de: $77
    ld c, h                                       ; $75df: $4c
    ld d, h                                       ; $75e0: $54
    ld d, c                                       ; $75e1: $51
    ld e, d                                       ; $75e2: $5a
    ld de, $872d                                  ; $75e3: $11 $2d $87
    pop bc                                        ; $75e6: $c1
    ld [de], a                                    ; $75e7: $12
    ret z                                         ; $75e8: $c8

    ld [$000a], sp                                ; $75e9: $08 $0a $00
    ld e, $21                                     ; $75ec: $1e $21
    ld h, $65                                     ; $75ee: $26 $65
    ld hl, $f52c                                  ; $75f0: $21 $2c $f5
    ret nz                                        ; $75f3: $c0

    ld [hl], e                                    ; $75f4: $73
    ld e, [hl]                                    ; $75f5: $5e
    ld bc, $3309                                  ; $75f6: $01 $09 $33
    jp nc, $163d                                  ; $75f9: $d2 $3d $16

    ld [de], a                                    ; $75fc: $12
    and l                                         ; $75fd: $a5
    db $fc                                        ; $75fe: $fc
    ld c, a                                       ; $75ff: $4f
    adc [hl]                                      ; $7600: $8e
    ldh a, [$a3]                                  ; $7601: $f0 $a3
    rst $28                                       ; $7603: $ef
    rst $28                                       ; $7604: $ef
    ld sp, hl                                     ; $7605: $f9
    add l                                         ; $7606: $85
    ld b, h                                       ; $7607: $44
    ld l, c                                       ; $7608: $69
    ld a, [hl]                                    ; $7609: $7e
    sbc c                                         ; $760a: $99
    db $fd                                        ; $760b: $fd
    dec b                                         ; $760c: $05
    nop                                           ; $760d: $00
    inc a                                         ; $760e: $3c
    or c                                          ; $760f: $b1
    ld c, c                                       ; $7610: $49
    ld a, c                                       ; $7611: $79
    adc d                                         ; $7612: $8a
    sub l                                         ; $7613: $95
    ld d, h                                       ; $7614: $54
    ld l, a                                       ; $7615: $6f
    ld b, b                                       ; $7616: $40
    xor b                                         ; $7617: $a8
    daa                                           ; $7618: $27
    sub a                                         ; $7619: $97
    and $98                                       ; $761a: $e6 $98
    xor a                                         ; $761c: $af
    and [hl]                                      ; $761d: $a6
    sbc e                                         ; $761e: $9b
    call nc, Call_059_4664                        ; $761f: $d4 $64 $46
    jp nz, Jump_000_0282                          ; $7622: $c2 $82 $02

    ld e, $04                                     ; $7625: $1e $04
    or d                                          ; $7627: $b2
    add h                                         ; $7628: $84
    ld [hl+], a                                   ; $7629: $22
    xor c                                         ; $762a: $a9
    ld e, b                                       ; $762b: $58
    pop hl                                        ; $762c: $e1
    add hl, bc                                    ; $762d: $09
    ld c, l                                       ; $762e: $4d
    ld c, h                                       ; $762f: $4c
    dec sp                                        ; $7630: $3b
    adc $be                                       ; $7631: $ce $be
    push af                                       ; $7633: $f5
    xor e                                         ; $7634: $ab
    rst $00                                       ; $7635: $c7
    jp nz, $fdd8                                  ; $7636: $c2 $d8 $fd

    rst $08                                       ; $7639: $cf
    dec c                                         ; $763a: $0d
    nop                                           ; $763b: $00
    cp h                                          ; $763c: $bc
    ld h, e                                       ; $763d: $63
    cp [hl]                                       ; $763e: $be
    ld d, d                                       ; $763f: $52
    ld a, [hl+]                                   ; $7640: $2a
    ld h, c                                       ; $7641: $61
    ld b, c                                       ; $7642: $41
    ld bc, $5fbc                                  ; $7643: $01 $bc $5f
    push af                                       ; $7646: $f5
    db $dd                                        ; $7647: $dd
    rst $38                                       ; $7648: $ff
    cp d                                          ; $7649: $ba
    and e                                         ; $764a: $a3
    adc d                                         ; $764b: $8a
    ld h, h                                       ; $764c: $64
    ld l, e                                       ; $764d: $6b
    ld b, h                                       ; $764e: $44
    ld [hl], l                                    ; $764f: $75
    ld e, l                                       ; $7650: $5d
    sub a                                         ; $7651: $97
    ldh [rHDMA1], a                               ; $7652: $e0 $51
    xor a                                         ; $7654: $af
    ld b, e                                       ; $7655: $43
    ld l, c                                       ; $7656: $69
    ld b, a                                       ; $7657: $47
    ld l, b                                       ; $7658: $68
    ld h, d                                       ; $7659: $62
    jp c, $017f                                   ; $765a: $da $7f $01

    adc [hl]                                      ; $765d: $8e
    sbc l                                         ; $765e: $9d
    ld c, c                                       ; $765f: $49
    and h                                         ; $7660: $a4
    dec sp                                        ; $7661: $3b
    ld l, d                                       ; $7662: $6a
    ld [hl], d                                    ; $7663: $72
    jp hl                                         ; $7664: $e9


    db $ec                                        ; $7665: $ec
    ld a, [hl]                                    ; $7666: $7e
    ld l, c                                       ; $7667: $69
    cp $78                                        ; $7668: $fe $78
    cp e                                          ; $766a: $bb
    xor [hl]                                      ; $766b: $ae
    ld c, e                                       ; $766c: $4b
    ldh a, [$a8]                                  ; $766d: $f0 $a8
    rst $10                                       ; $766f: $d7
    and c                                         ; $7670: $a1
    or h                                          ; $7671: $b4
    inc hl                                        ; $7672: $23
    or h                                          ; $7673: $b4
    jp hl                                         ; $7674: $e9


    sub a                                         ; $7675: $97
    ld h, $a6                                     ; $7676: $26 $a6
    db $fd                                        ; $7678: $fd
    rla                                           ; $7679: $17

jr_059_767a:
    nop                                           ; $767a: $00
    cp h                                          ; $767b: $bc
    cp a                                          ; $767c: $bf
    ld [hl], e                                    ; $767d: $73
    xor [hl]                                      ; $767e: $ae
    ld h, [hl]                                    ; $767f: $66
    sub [hl]                                      ; $7680: $96
    push af                                       ; $7681: $f5
    ld l, [hl]                                    ; $7682: $6e
    ld [hl], c                                    ; $7683: $71
    inc bc                                        ; $7684: $03
    ld e, $0f                                     ; $7685: $1e $0f
    rst $38                                       ; $7687: $ff
    ccf                                           ; $7688: $3f
    rst $38                                       ; $7689: $ff
    ld d, d                                       ; $768a: $52
    pop de                                        ; $768b: $d1
    db $e4                                        ; $768c: $e4
    ld e, d                                       ; $768d: $5a
    ld e, e                                       ; $768e: $5b
    ld [de], a                                    ; $768f: $12
    ld a, [$9efe]                                 ; $7690: $fa $fe $9e
    rst $18                                       ; $7693: $df
    cp $0b                                        ; $7694: $fe $0b
    nop                                           ; $7696: $00
    cp h                                          ; $7697: $bc
    sbc b                                         ; $7698: $98
    or $eb                                        ; $7699: $f6 $eb
    ld d, b                                       ; $769b: $50
    ld a, [bc]                                    ; $769c: $0a
    adc c                                         ; $769d: $89
    ld h, $2a                                     ; $769e: $26 $2a
    sbc l                                         ; $76a0: $9d
    db $dd                                        ; $76a1: $dd
    add hl, sp                                    ; $76a2: $39
    inc hl                                        ; $76a3: $23
    adc $89                                       ; $76a4: $ce $89
    dec bc                                        ; $76a6: $0b
    nop                                           ; $76a7: $00
    inc e                                         ; $76a8: $1c
    daa                                           ; $76a9: $27
    ld c, d                                       ; $76aa: $4a
    or $df                                        ; $76ab: $f6 $df
    db $fd                                        ; $76ad: $fd
    rst $30                                       ; $76ae: $f7
    sbc e                                         ; $76af: $9b
    cp l                                          ; $76b0: $bd
    ld a, h                                       ; $76b1: $7c
    add h                                         ; $76b2: $84
    cp a                                          ; $76b3: $bf
    ld a, h                                       ; $76b4: $7c
    call c, Call_059_5ff9                         ; $76b5: $dc $f9 $5f
    dec hl                                        ; $76b8: $2b
    cp $ec                                        ; $76b9: $fe $ec
    ld h, h                                       ; $76bb: $64
    cp $a7                                        ; $76bc: $fe $a7
    di                                            ; $76be: $f3
    cp a                                          ; $76bf: $bf
    ld l, $00                                     ; $76c0: $2e $00
    sbc [hl]                                      ; $76c2: $9e
    rst $38                                       ; $76c3: $ff
    adc $f9                                       ; $76c4: $ce $f9
    add d                                         ; $76c6: $82
    ret                                           ; $76c7: $c9


    ld a, d                                       ; $76c8: $7a
    ld e, e                                       ; $76c9: $5b
    or c                                          ; $76ca: $b1
    add hl, sp                                    ; $76cb: $39
    or l                                          ; $76cc: $b5
    ld a, [$8e77]                                 ; $76cd: $fa $77 $8e
    pop de                                        ; $76d0: $d1
    db $fd                                        ; $76d1: $fd
    jp z, $9bee                                   ; $76d2: $ca $ee $9b

    jr jr_059_767a                                ; $76d5: $18 $a3

    ld c, c                                       ; $76d7: $49
    ld d, h                                       ; $76d8: $54
    ld c, c                                       ; $76d9: $49
    and l                                         ; $76da: $a5
    ld e, c                                       ; $76db: $59
    cp [hl]                                       ; $76dc: $be
    inc h                                         ; $76dd: $24
    ld a, b                                       ; $76de: $78
    call nc, $2abe                                ; $76df: $d4 $be $2a
    inc [hl]                                      ; $76e2: $34
    or e                                          ; $76e3: $b3
    ld [hl], e                                    ; $76e4: $73
    ld c, b                                       ; $76e5: $48
    ld l, b                                       ; $76e6: $68
    rst $38                                       ; $76e7: $ff
    ld sp, hl                                     ; $76e8: $f9
    or a                                          ; $76e9: $b7
    ret c                                         ; $76ea: $d8

    rst $08                                       ; $76eb: $cf
    xor b                                         ; $76ec: $a8
    cp $bf                                        ; $76ed: $fe $bf
    nop                                           ; $76ef: $00
    inc e                                         ; $76f0: $1c
    ld d, l                                       ; $76f1: $55
    ld sp, $356d                                  ; $76f2: $31 $6d $35
    ld sp, $97ed                                  ; $76f5: $31 $ed $97
    ld c, a                                       ; $76f8: $4f
    ld h, h                                       ; $76f9: $64
    ld de, $d89a                                  ; $76fa: $11 $9a $d8
    cp e                                          ; $76fd: $bb
    dec h                                         ; $76fe: $25
    ld hl, sp+$15                                 ; $76ff: $f8 $15
    inc c                                         ; $7701: $0c
    or c                                          ; $7702: $b1
    ld d, h                                       ; $7703: $54
    or h                                          ; $7704: $b4
    sub $24                                       ; $7705: $d6 $24
    sbc b                                         ; $7707: $98
    xor h                                         ; $7708: $ac
    scf                                           ; $7709: $37
    ld c, d                                       ; $770a: $4a
    ld [hl], e                                    ; $770b: $73
    ld [hl], h                                    ; $770c: $74
    xor h                                         ; $770d: $ac
    push af                                       ; $770e: $f5
    ld e, a                                       ; $770f: $5f
    ld [hl], d                                    ; $7710: $72
    db $10                                        ; $7711: $10
    sbc d                                         ; $7712: $9a
    and e                                         ; $7713: $a3
    or a                                          ; $7714: $b7
    ei                                            ; $7715: $fb
    di                                            ; $7716: $f3
    ld l, a                                       ; $7717: $6f
    call $ffbf                                    ; $7718: $cd $bf $ff
    cp h                                          ; $771b: $bc
    push af                                       ; $771c: $f5
    ld [hl], d                                    ; $771d: $72
    inc bc                                        ; $771e: $03
    db $fc                                        ; $771f: $fc
    ld l, b                                       ; $7720: $68
    xor e                                         ; $7721: $ab
    xor l                                         ; $7722: $ad
    inc d                                         ; $7723: $14
    cp e                                          ; $7724: $bb
    ccf                                           ; $7725: $3f
    rst $38                                       ; $7726: $ff
    rst $10                                       ; $7727: $d7
    and h                                         ; $7728: $a4
    xor h                                         ; $7729: $ac
    sbc e                                         ; $772a: $9b
    ld c, b                                       ; $772b: $48
    ld b, l                                       ; $772c: $45
    db $db                                        ; $772d: $db
    inc h                                         ; $772e: $24
    sbc b                                         ; $772f: $98
    xor h                                         ; $7730: $ac
    scf                                           ; $7731: $37
    rst $38                                       ; $7732: $ff
    rst $28                                       ; $7733: $ef
    adc [hl]                                      ; $7734: $8e
    db $ed                                        ; $7735: $ed
    cp a                                          ; $7736: $bf
    xor [hl]                                      ; $7737: $ae
    ld c, e                                       ; $7738: $4b
    rst $30                                       ; $7739: $f7
    add sp, $7e                                   ; $773a: $e8 $7e
    call $84a8                                    ; $773c: $cd $a8 $84
    xor b                                         ; $773f: $a8
    add l                                         ; $7740: $85
    ld sp, hl                                     ; $7741: $f9
    or a                                          ; $7742: $b7
    ld [hl], $fd                                  ; $7743: $36 $fd
    jp c, Jump_000_06e7                           ; $7745: $da $e7 $06

    db $fc                                        ; $7748: $fc
    cp b                                          ; $7749: $b8
    add hl, sp                                    ; $774a: $39
    halt                                          ; $774b: $76
    ld a, a                                       ; $774c: $7f
    cp $d6                                        ; $774d: $fe $d6
    xor e                                         ; $774f: $ab
    cp $f9                                        ; $7750: $fe $f9
    rst $30                                       ; $7752: $f7
    sbc b                                         ; $7753: $98
    ld d, $b5                                     ; $7754: $16 $b5
    adc d                                         ; $7756: $8a
    ld d, l                                       ; $7757: $55
    ld d, c                                       ; $7758: $51
    sub $a4                                       ; $7759: $d6 $a4
    dec [hl]                                      ; $775b: $35
    inc a                                         ; $775c: $3c
    db $fd                                        ; $775d: $fd
    ld a, [hl+]                                   ; $775e: $2a
    ld e, d                                       ; $775f: $5a
    inc sp                                        ; $7760: $33
    ld [de], a                                    ; $7761: $12
    ld c, h                                       ; $7762: $4c
    sub $9b                                       ; $7763: $d6 $9b
    rst $38                                       ; $7765: $ff
    ld [hl], a                                    ; $7766: $77
    rst $00                                       ; $7767: $c7
    sbc d                                         ; $7768: $9a
    db $fd                                        ; $7769: $fd
    dec b                                         ; $776a: $05
    nop                                           ; $776b: $00
    db $fc                                        ; $776c: $fc
    ld d, h                                       ; $776d: $54
    dec d                                         ; $776e: $15
    ld [$f967], a                                 ; $776f: $ea $67 $f9
    or $7f                                        ; $7772: $f6 $7f
    jp hl                                         ; $7774: $e9


    xor h                                         ; $7775: $ac
    ld de, $8fc9                                  ; $7776: $11 $c9 $8f
    sbc d                                         ; $7779: $9a
    inc sp                                        ; $777a: $33
    ld h, b                                       ; $777b: $60
    cp d                                          ; $777c: $ba
    nop                                           ; $777d: $00
    ld c, $b7                                     ; $777e: $0e $b7
    ld l, c                                       ; $7780: $69
    ld l, l                                       ; $7781: $6d
    daa                                           ; $7782: $27
    sub a                                         ; $7783: $97
    ld a, [c]                                     ; $7784: $f2
    dec a                                         ; $7785: $3d
    ld [hl], e                                    ; $7786: $73
    ld [hl], h                                    ; $7787: $74
    rst $38                                       ; $7788: $ff
    dec bc                                        ; $7789: $0b
    ld h, $eb                                     ; $778a: $26 $eb
    ret c                                         ; $778c: $d8

    ld [hl], e                                    ; $778d: $73
    ld [bc], a                                    ; $778e: $02
    ld a, [bc]                                    ; $778f: $0a
    nop                                           ; $7790: $00
    ld a, h                                       ; $7791: $7c
    ld e, e                                       ; $7792: $5b
    and h                                         ; $7793: $a4
    db $f4                                        ; $7794: $f4
    rst $08                                       ; $7795: $cf
    ld hl, sp+$12                                 ; $7796: $f8 $12
    sbc [hl]                                      ; $7798: $9e
    di                                            ; $7799: $f3
    adc d                                         ; $779a: $8a
    or d                                          ; $779b: $b2
    cp l                                          ; $779c: $bd
    ld l, a                                       ; $779d: $6f
    jp c, $4a8a                                   ; $779e: $da $8a $4a

    ld a, [bc]                                    ; $77a1: $0a
    add $f9                                       ; $77a2: $c6 $f9
    ld a, [hl+]                                   ; $77a4: $2a
    sbc d                                         ; $77a5: $9a
    ld de, $cfe2                                  ; $77a6: $11 $e2 $cf
    ld c, [hl]                                    ; $77a9: $4e
    and $7f                                       ; $77aa: $e6 $7f
    ld a, [hl-]                                   ; $77ac: $3a
    cp a                                          ; $77ad: $bf
    ld l, $00                                     ; $77ae: $2e $00
    inc e                                         ; $77b0: $1c
    daa                                           ; $77b1: $27
    ld c, d                                       ; $77b2: $4a
    dec a                                         ; $77b3: $3d
    adc $19                                       ; $77b4: $ce $19
    xor l                                         ; $77b6: $ad
    and [hl]                                      ; $77b7: $a6
    xor d                                         ; $77b8: $aa
    sub b                                         ; $77b9: $90
    cp a                                          ; $77ba: $bf
    dec a                                         ; $77bb: $3d
    xor c                                         ; $77bc: $a9
    ld [hl], h                                    ; $77bd: $74
    ld a, a                                       ; $77be: $7f
    rst $08                                       ; $77bf: $cf
    cpl                                           ; $77c0: $2f
    ld sp, hl                                     ; $77c1: $f9
    ld b, h                                       ; $77c2: $44
    sub $74                                       ; $77c3: $d6 $74
    ld bc, $b8fc                                  ; $77c5: $01 $fc $b8
    add hl, sp                                    ; $77c8: $39
    halt                                          ; $77c9: $76
    ld a, a                                       ; $77ca: $7f
    cp $d6                                        ; $77cb: $fe $d6

jr_059_77cd:
    xor e                                         ; $77cd: $ab
    jr z, jr_059_77cd                             ; $77ce: $28 $fd

    ld a, c                                       ; $77d0: $79
    push hl                                       ; $77d1: $e5
    cp b                                          ; $77d2: $b8
    sub b                                         ; $77d3: $90
    sub a                                         ; $77d4: $97
    rst $38                                       ; $77d5: $ff
    add hl, hl                                    ; $77d6: $29
    ld l, [hl]                                    ; $77d7: $6e
    ld e, l                                       ; $77d8: $5d
    nop                                           ; $77d9: $00
    ld l, [hl]                                    ; $77da: $6e
    ld d, a                                       ; $77db: $57
    rst $38                                       ; $77dc: $ff
    jp c, Jump_000_2ffa                           ; $77dd: $da $fa $2f

    jp c, $dd5e                                   ; $77e0: $da $5e $dd

    ld e, e                                       ; $77e3: $5b
    and e                                         ; $77e4: $a3
    sub h                                         ; $77e5: $94
    rst $38                                       ; $77e6: $ff
    reti                                          ; $77e7: $d9


    ld a, [hl]                                    ; $77e8: $7e
    push hl                                       ; $77e9: $e5
    rst $38                                       ; $77ea: $ff
    db $dd                                        ; $77eb: $dd
    ld de, $dab5                                  ; $77ec: $11 $b5 $da
    or [hl]                                       ; $77ef: $b6
    cp b                                          ; $77f0: $b8
    nop                                           ; $77f1: $00
    ld c, $28                                     ; $77f2: $0e $28
    db $eb                                        ; $77f4: $eb
    ld l, b                                       ; $77f5: $68
    and d                                         ; $77f6: $a2
    sbc d                                         ; $77f7: $9a
    ld e, h                                       ; $77f8: $5c
    ld l, d                                       ; $77f9: $6a
    and d                                         ; $77fa: $a2
    ld [hl], e                                    ; $77fb: $73
    ld c, b                                       ; $77fc: $48
    daa                                           ; $77fd: $27
    ld [de], a                                    ; $77fe: $12
    ld c, h                                       ; $77ff: $4c
    ldh a, [$1f]                                  ; $7800: $f0 $1f
    ld a, [bc]                                    ; $7802: $0a
    nop                                           ; $7803: $00
    db $fc                                        ; $7804: $fc
    cp b                                          ; $7805: $b8
    add hl, sp                                    ; $7806: $39
    halt                                          ; $7807: $76
    ld a, a                                       ; $7808: $7f
    cp $d6                                        ; $7809: $fe $d6
    dec hl                                        ; $780b: $2b
    sbc a                                         ; $780c: $9f
    ret z                                         ; $780d: $c8

    and d                                         ; $780e: $a2
    db $e4                                        ; $780f: $e4
    ld [hl], b                                    ; $7810: $70
    inc c                                         ; $7811: $0c
    sbc e                                         ; $7812: $9b
    jp $e91f                                      ; $7813: $c3 $1f $e9


    ld l, [hl]                                    ; $7816: $6e
    ld e, l                                       ; $7817: $5d
    ld a, [c]                                     ; $7818: $f2
    ret nc                                        ; $7819: $d0

    xor b                                         ; $781a: $a8
    ld d, [hl]                                    ; $781b: $56
    ld a, b                                       ; $781c: $78
    ld d, [hl]                                    ; $781d: $56
    or [hl]                                       ; $781e: $b6
    ld e, e                                       ; $781f: $5b
    and h                                         ; $7820: $a4
    ld e, $f9                                     ; $7821: $1e $f9
    sbc e                                         ; $7823: $9b
    db $fd                                        ; $7824: $fd
    dec b                                         ; $7825: $05
    nop                                           ; $7826: $00
    sbc h                                         ; $7827: $9c
    ret z                                         ; $7828: $c8

    ld [hl], $a9                                  ; $7829: $36 $a9
    ld a, e                                       ; $782b: $7b
    ld l, e                                       ; $782c: $6b
    sbc h                                         ; $782d: $9c
    di                                            ; $782e: $f3
    jp nz, $1f92                                  ; $782f: $c2 $92 $1f

    ld h, a                                       ; $7832: $67
    dec [hl]                                      ; $7833: $35
    jp $d466                                      ; $7834: $c3 $66 $d4


    dec b                                         ; $7837: $05
    nop                                           ; $7838: $00
    ret nc                                        ; $7839: $d0

    and l                                         ; $783a: $a5
    inc e                                         ; $783b: $1c
    ld d, a                                       ; $783c: $57
    sub l                                         ; $783d: $95
    or l                                          ; $783e: $b5
    ldh [$d1], a                                  ; $783f: $e0 $d1
    ld [hl], c                                    ; $7841: $71
    adc $27                                       ; $7842: $ce $27
    sub l                                         ; $7844: $95
    or c                                          ; $7845: $b1
    ld l, l                                       ; $7846: $6d
    ld a, [hl+]                                   ; $7847: $2a
    adc l                                         ; $7848: $8d
    pop de                                        ; $7849: $d1
    db $fd                                        ; $784a: $fd
    adc d                                         ; $784b: $8a
    ld a, [hl+]                                   ; $784c: $2a
    ld [$9acc], a                                 ; $784d: $ea $cc $9a
    ld l, $00                                     ; $7850: $2e $00
    ret nc                                        ; $7852: $d0

    dec h                                         ; $7853: $25
    inc a                                         ; $7854: $3c
    and c                                         ; $7855: $a1
    adc c                                         ; $7856: $89
    ld [hl], $ff                                  ; $7857: $36 $ff
    ld c, e                                       ; $7859: $4b
    ld d, c                                       ; $785a: $51
    dec d                                         ; $785b: $15
    dec h                                         ; $785c: $25
    inc a                                         ; $785d: $3c
    ld h, a                                       ; $785e: $67
    or h                                          ; $785f: $b4
    ldh [rHDMA1], a                               ; $7860: $e0 $51
    ld l, a                                       ; $7862: $6f
    or $dc                                        ; $7863: $f6 $dc
    nop                                           ; $7865: $00
    db $fc                                        ; $7866: $fc
    ld [hl], h                                    ; $7867: $74
    sub e                                         ; $7868: $93
    halt                                          ; $7869: $76
    adc $51                                       ; $786a: $ce $51
    cpl                                           ; $786c: $2f
    inc l                                         ; $786d: $2c
    pop bc                                        ; $786e: $c1
    db $e3                                        ; $786f: $e3
    ld e, [hl]                                    ; $7870: $5e
    or e                                          ; $7871: $b3
    cp a                                          ; $7872: $bf
    nop                                           ; $7873: $00
    ld a, h                                       ; $7874: $7c
    ld l, e                                       ; $7875: $6b
    ld b, [hl]                                    ; $7876: $46
    jp nz, $fb12                                  ; $7877: $c2 $12 $fb

    ld a, h                                       ; $787a: $7c
    xor e                                         ; $787b: $ab
    pop af                                        ; $787c: $f1
    ld a, h                                       ; $787d: $7c
    cp $a3                                        ; $787e: $fe $a3
    ld b, $14                                     ; $7880: $06 $14
    nop                                           ; $7882: $00
    ld a, h                                       ; $7883: $7c
    ld l, e                                       ; $7884: $6b
    ld b, [hl]                                    ; $7885: $46
    jp nz, $1e52                                  ; $7886: $c2 $52 $1e

    dec a                                         ; $7889: $3d
    ret c                                         ; $788a: $d8

    ld b, d                                       ; $788b: $42
    ld bc, $a51c                                  ; $788c: $01 $1c $a5
    add hl, sp                                    ; $788f: $39
    xor d                                         ; $7890: $aa
    or $d5                                        ; $7891: $f6 $d5
    sbc a                                         ; $7893: $9f
    ld a, a                                       ; $7894: $7f
    cp a                                          ; $7895: $bf
    ld a, [hl-]                                   ; $7896: $3a

jr_059_7897:
    ld d, $42                                     ; $7897: $16 $42
    sbc l                                         ; $7899: $9d
    call nc, Call_000_1cb3                        ; $789a: $d4 $b3 $1c
    ld c, e                                       ; $789d: $4b
    ld l, c                                       ; $789e: $69
    jr nc, jr_059_7897                            ; $789f: $30 $f6

    ld [hl], d                                    ; $78a1: $72
    adc b                                         ; $78a2: $88

jr_059_78a3:
    db $dd                                        ; $78a3: $dd
    pop bc                                        ; $78a4: $c1
    ld l, $00                                     ; $78a5: $2e $00
    db $fc                                        ; $78a7: $fc
    jp $96e6                                      ; $78a8: $c3 $e6 $96


    xor $3f                                       ; $78ab: $ee $3f
    db $fd                                        ; $78ad: $fd
    dec h                                         ; $78ae: $25
    add h                                         ; $78af: $84
    ld h, b                                       ; $78b0: $60
    rst $30                                       ; $78b1: $f7
    ld a, a                                       ; $78b2: $7f
    ld d, d                                       ; $78b3: $52
    pop de                                        ; $78b4: $d1
    ld c, l                                       ; $78b5: $4d
    ld a, [c]                                     ; $78b6: $f2
    adc c                                         ; $78b7: $89
    inc l                                         ; $78b8: $2c
    ld c, d                                       ; $78b9: $4a
    ld h, a                                       ; $78ba: $67
    or a                                          ; $78bb: $b7
    dec sp                                        ; $78bc: $3b
    cp e                                          ; $78bd: $bb
    adc c                                         ; $78be: $89
    ld c, d                                       ; $78bf: $4a
    ld c, [hl]                                    ; $78c0: $4e
    ldh a, [$8e]                                  ; $78c1: $f0 $8e
    ld [hl], c                                    ; $78c3: $71
    add $da                                       ; $78c4: $c6 $da
    cp [hl]                                       ; $78c6: $be
    ld a, [bc]                                    ; $78c7: $0a

jr_059_78c8:
    or a                                          ; $78c8: $b7
    rst $30                                       ; $78c9: $f7
    dec b                                         ; $78ca: $05
    cp a                                          ; $78cb: $bf
    ld a, [c]                                     ; $78cc: $f2
    jr c, jr_059_78f8                             ; $78cd: $38 $29

    jp nz, $84ef                                  ; $78cf: $c2 $ef $84

    sbc h                                         ; $78d2: $9c
    sbc c                                         ; $78d3: $99
    ret z                                         ; $78d4: $c8

    cp d                                          ; $78d5: $ba
    scf                                           ; $78d6: $37
    ld c, d                                       ; $78d7: $4a
    inc sp                                        ; $78d8: $33
    jr jr_059_78c8                                ; $78d9: $18 $ed

    ld e, c                                       ; $78db: $59
    sbc b                                         ; $78dc: $98
    ld l, e                                       ; $78dd: $6b
    ld hl, $9a51                                  ; $78de: $21 $51 $9a
    pop bc                                        ; $78e1: $c1
    ld d, d                                       ; $78e2: $52
    call nz, Call_000_06e2                        ; $78e3: $c4 $e2 $06
    db $fc                                        ; $78e6: $fc
    ld [hl], $52                                  ; $78e7: $36 $52
    or l                                          ; $78e9: $b5
    adc l                                         ; $78ea: $8d
    inc [hl]                                      ; $78eb: $34
    xor c                                         ; $78ec: $a9
    or [hl]                                       ; $78ed: $b6
    sub c                                         ; $78ee: $91
    xor d                                         ; $78ef: $aa
    ld l, l                                       ; $78f0: $6d
    and h                                         ; $78f1: $a4
    ld c, c                                       ; $78f2: $49
    push af                                       ; $78f3: $f5
    jr jr_059_78a3                                ; $78f4: $18 $ad

    ld e, $a3                                     ; $78f6: $1e $a3

jr_059_78f8:
    cp c                                          ; $78f8: $b9
    ld bc, $7f3c                                  ; $78f9: $01 $3c $7f
    add $97                                       ; $78fc: $c6 $97
    ret nc                                        ; $78fe: $d0

    rst $30                                       ; $78ff: $f7
    rst $30                                       ; $7900: $f7
    ld [hl], l                                    ; $7901: $75
    rst $38                                       ; $7902: $ff
    rst $30                                       ; $7903: $f7
    rst $28                                       ; $7904: $ef
    inc e                                         ; $7905: $1c
    and e                                         ; $7906: $a3
    ei                                            ; $7907: $fb
    cpl                                           ; $7908: $2f
    pop af                                        ; $7909: $f1
    ld c, $f4                                     ; $790a: $0e $f4
    db $fd                                        ; $790c: $fd
    adc l                                         ; $790d: $8d
    jp nc, $cdfc                                  ; $790e: $d2 $fc $cd

    rst $38                                       ; $7911: $ff
    sbc $8a                                       ; $7912: $de $8a
    ld [de], a                                    ; $7914: $12
    sub [hl]                                      ; $7915: $96
    and $e6                                       ; $7916: $e6 $e6
    rst $38                                       ; $7918: $ff
    rla                                           ; $7919: $17
    nop                                           ; $791a: $00
    ld a, h                                       ; $791b: $7c
    db $db                                        ; $791c: $db
    and h                                         ; $791d: $a4
    ld e, $0b                                     ; $791e: $1e $0b
    ld h, e                                       ; $7920: $63
    ld a, a                                       ; $7921: $7f
    ld b, e                                       ; $7922: $43
    ld bc, $58bc                                  ; $7923: $01 $bc $58
    sub b                                         ; $7926: $90
    ld sp, $8b9b                                  ; $7927: $31 $9b $8b
    adc e                                         ; $792a: $8b
    xor l                                         ; $792b: $ad
    jp nc, $8b5f                                  ; $792c: $d2 $5f $8b

    ret nc                                        ; $792f: $d0

    inc e                                         ; $7930: $1c
    rst $30                                       ; $7931: $f7
    db $fd                                        ; $7932: $fd
    and a                                         ; $7933: $a7
    rst $38                                       ; $7934: $ff
    ld [bc], a                                    ; $7935: $02
    inc e                                         ; $7936: $1c
    push hl                                       ; $7937: $e5
    cp a                                          ; $7938: $bf
    xor c                                         ; $7939: $a9
    rst $00                                       ; $793a: $c7
    jr c, jr_059_7998                             ; $793b: $38 $5b

    ld d, c                                       ; $793d: $51
    ld a, [c]                                     ; $793e: $f2
    ld l, c                                       ; $793f: $69
    ld [hl], e                                    ; $7940: $73
    cp d                                          ; $7941: $ba
    nop                                           ; $7942: $00
    ld c, $68                                     ; $7943: $0e $68
    sbc e                                         ; $7945: $9b
    or h                                          ; $7946: $b4
    ld [hl], e                                    ; $7947: $73
    adc [hl]                                      ; $7948: $8e
    jp nz, Jump_059_57ed                          ; $7949: $c2 $ed $57

    adc [hl]                                      ; $794c: $8e
    ld l, e                                       ; $794d: $6b
    dec hl                                        ; $794e: $2b
    ld a, a                                       ; $794f: $7f
    or h                                          ; $7950: $b4
    ld a, l                                       ; $7951: $7d
    rst $38                                       ; $7952: $ff
    call c, Call_059_4e52                         ; $7953: $dc $52 $4e
    ld h, a                                       ; $7956: $67
    rst $08                                       ; $7957: $cf
    and c                                         ; $7958: $a1
    dec bc                                        ; $7959: $0b
    nop                                           ; $795a: $00
    ld a, h                                       ; $795b: $7c
    ld e, e                                       ; $795c: $5b
    and e                                         ; $795d: $a3
    db $e4                                        ; $795e: $e4
    ld l, a                                       ; $795f: $6f
    xor a                                         ; $7960: $af
    ld a, h                                       ; $7961: $7c
    ld [hl+], a                                   ; $7962: $22
    ld l, e                                       ; $7963: $6b
    ld d, d                                       ; $7964: $52
    ld [hl], $27                                  ; $7965: $36 $27
    sub a                                         ; $7967: $97
    sbc l                                         ; $7968: $9d
    add c                                         ; $7969: $81
    di                                            ; $796a: $f3
    ld c, e                                       ; $796b: $4b
    ld sp, hl                                     ; $796c: $f9
    adc a                                         ; $796d: $8f
    ld a, [de]                                    ; $796e: $1a
    and e                                         ; $796f: $a3
    ld l, $00                                     ; $7970: $2e $00
    db $fc                                        ; $7972: $fc
    ld [hl], h                                    ; $7973: $74
    sub e                                         ; $7974: $93
    or b                                          ; $7975: $b0
    ld d, h                                       ; $7976: $54
    cp e                                          ; $7977: $bb
    dec h                                         ; $7978: $25
    sbc b                                         ; $7979: $98
    xor d                                         ; $797a: $aa
    adc b                                         ; $797b: $88
    sub d                                         ; $797c: $92
    adc d                                         ; $797d: $8a
    xor $28                                       ; $797e: $ee $28
    db $dd                                        ; $7980: $dd
    ld a, a                                       ; $7981: $7f
    ld a, [$67e5]                                 ; $7982: $fa $e5 $67
    sub [hl]                                      ; $7985: $96
    sub c                                         ; $7986: $91
    db $fc                                        ; $7987: $fc
    rst $18                                       ; $7988: $df
    adc c                                         ; $7989: $89
    ld a, e                                       ; $798a: $7b
    adc $d7                                       ; $798b: $ce $d7
    ld e, [hl]                                    ; $798d: $5e
    nop                                           ; $798e: $00
    db $fc                                        ; $798f: $fc
    reti                                          ; $7990: $d9


    sbc h                                         ; $7991: $9c
    ld b, h                                       ; $7992: $44
    and l                                         ; $7993: $a5
    db $f4                                        ; $7994: $f4
    add a                                         ; $7995: $87
    ld c, l                                       ; $7996: $4d
    ld e, h                                       ; $7997: $5c

jr_059_7998:
    db $eb                                        ; $7998: $eb
    rst $10                                       ; $7999: $d7

jr_059_799a:
    ld e, h                                       ; $799a: $5c
    ld b, $e3                                     ; $799b: $06 $e3
    ld e, d                                       ; $799d: $5a
    rst $38                                       ; $799e: $ff
    dec b                                         ; $799f: $05
    nop                                           ; $79a0: $00
    ld e, $8f                                     ; $79a1: $1e $8f
    jr z, jr_059_799a                             ; $79a3: $28 $f5

    rst $28                                       ; $79a5: $ef
    db $fc                                        ; $79a6: $fc
    cp c                                          ; $79a7: $b9
    inc c                                         ; $79a8: $0c
    ld b, [hl]                                    ; $79a9: $46
    ld hl, sp+$15                                 ; $79aa: $f8 $15
    dec a                                         ; $79ac: $3d
    ld h, $75                                     ; $79ad: $26 $75
    ld b, h                                       ; $79af: $44
    dec h                                         ; $79b0: $25
    ld d, l                                       ; $79b1: $55
    cp e                                          ; $79b2: $bb
    dec h                                         ; $79b3: $25
    sbc a                                         ; $79b4: $9f
    jr @+$4e                                      ; $79b5: $18 $4c

    ld d, h                                       ; $79b7: $54
    ld c, d                                       ; $79b8: $4a
    and e                                         ; $79b9: $a3
    ld d, a                                       ; $79ba: $57
    ld a, a                                       ; $79bb: $7f
    add [hl]                                      ; $79bc: $86
    reti                                          ; $79bd: $d9


    bit 7, a                                      ; $79be: $cb $7f
    ld d, $f7                                     ; $79c0: $16 $f7
    cp l                                          ; $79c2: $bd
    and l                                         ; $79c3: $a5
    add hl, sp                                    ; $79c4: $39
    or [hl]                                       ; $79c5: $b6
    ld [hl], h                                    ; $79c6: $74
    adc a                                         ; $79c7: $8f
    pop de                                        ; $79c8: $d1
    rla                                           ; $79c9: $17
    nop                                           ; $79ca: $00
    db $fc                                        ; $79cb: $fc
    ld l, b                                       ; $79cc: $68
    xor e                                         ; $79cd: $ab
    ld a, e                                       ; $79ce: $7b
    call z, $bfcf                                 ; $79cf: $cc $cf $bf
    or l                                          ; $79d2: $b5
    sub $63                                       ; $79d3: $d6 $63
    rst $28                                       ; $79d5: $ef
    ld l, b                                       ; $79d6: $68
    ld l, [hl]                                    ; $79d7: $6e
    nop                                           ; $79d8: $00
    inc a                                         ; $79d9: $3c

jr_059_79da:
    or c                                          ; $79da: $b1
    ld c, c                                       ; $79db: $49
    push bc                                       ; $79dc: $c5
    ld a, [$9a64]                                 ; $79dd: $fa $64 $9a
    add e                                         ; $79e0: $83
    call $17ed                                    ; $79e1: $cd $ed $17
    sbc [hl]                                      ; $79e4: $9e
    cpl                                           ; $79e5: $2f
    ld h, l                                       ; $79e6: $65
    ld h, a                                       ; $79e7: $67
    db $db                                        ; $79e8: $db
    add d                                         ; $79e9: $82
    dec de                                        ; $79ea: $1b
    nop                                           ; $79eb: $00
    db $fc                                        ; $79ec: $fc
    ld h, h                                       ; $79ed: $64
    ld c, l                                       ; $79ee: $4d
    cp d                                          ; $79ef: $ba
    and e                                         ; $79f0: $a3
    ld [hl+], a                                   ; $79f1: $22
    inc [hl]                                      ; $79f2: $34
    ld sp, $d7ed                                  ; $79f3: $31 $ed $d7
    ld a, h                                       ; $79f6: $7c
    ld [hl], $e7                                  ; $79f7: $36 $e7
    ld c, [hl]                                    ; $79f9: $4e
    ld h, d                                       ; $79fa: $62
    inc l                                         ; $79fb: $2c
    cp e                                          ; $79fc: $bb
    call nz, $45b7                                ; $79fd: $c4 $b7 $45
    add d                                         ; $7a00: $82
    ld e, a                                       ; $7a01: $5f
    xor $b3                                       ; $7a02: $ee $b3
    add b                                         ; $7a04: $80
    add sp, $1e                                   ; $7a05: $e8 $1e
    and e                                         ; $7a07: $a3
    and e                                         ; $7a08: $a3
    ld [hl], h                                    ; $7a09: $74
    ld h, a                                       ; $7a0a: $67
    add hl, de                                    ; $7a0b: $19
    add h                                         ; $7a0c: $84
    xor b                                         ; $7a0d: $a8
    inc [hl]                                      ; $7a0e: $34
    sbc a                                         ; $7a0f: $9f
    call $f019                                    ; $7a10: $cd $19 $f0
    ld l, e                                       ; $7a13: $6b
    ld [c], a                                     ; $7a14: $e2
    jr c, jr_059_79da                             ; $7a15: $38 $c3

    db $ec                                        ; $7a17: $ec
    cpl                                           ; $7a18: $2f
    nop                                           ; $7a19: $00
    ld l, [hl]                                    ; $7a1a: $6e
    rst $28                                       ; $7a1b: $ef
    ld a, h                                       ; $7a1c: $7c
    ld sp, hl                                     ; $7a1d: $f9
    ld a, a                                       ; $7a1e: $7f
    ld h, b                                       ; $7a1f: $60
    inc l                                         ; $7a20: $2c
    adc l                                         ; $7a21: $8d
    ld h, c                                       ; $7a22: $61
    ei                                            ; $7a23: $fb
    ld b, d                                       ; $7a24: $42
    rst $18                                       ; $7a25: $df
    rst $18                                       ; $7a26: $df
    di                                            ; $7a27: $f3
    db $db                                        ; $7a28: $db
    xor a                                         ; $7a29: $af
    and [hl]                                      ; $7a2a: $a6
    ld [hl+], a                                   ; $7a2b: $22
    push hl                                       ; $7a2c: $e5
    inc bc                                        ; $7a2d: $03
    xor e                                         ; $7a2e: $ab
    cp $02                                        ; $7a2f: $fe $02
    db $fc                                        ; $7a31: $fc
    cp a                                          ; $7a32: $bf
    inc de                                        ; $7a33: $13
    pop hl                                        ; $7a34: $e1
    jr z, jr_059_7ab4                             ; $7a35: $28 $7d

    ld a, $ce                                     ; $7a37: $3e $ce
    ld a, c                                       ; $7a39: $79
    pop hl                                        ; $7a3a: $e1
    ld e, c                                       ; $7a3b: $59
    db $db                                        ; $7a3c: $db
    ei                                            ; $7a3d: $fb
    ld c, $c1                                     ; $7a3e: $0e $c1
    jr z, jr_059_7a81                             ; $7a40: $28 $3f

    ret c                                         ; $7a42: $d8

    sbc [hl]                                      ; $7a43: $9e
    ld b, e                                       ; $7a44: $43
    rla                                           ; $7a45: $17
    nop                                           ; $7a46: $00
    inc e                                         ; $7a47: $1c
    daa                                           ; $7a48: $27
    ld a, d                                       ; $7a49: $7a
    and d                                         ; $7a4a: $a2
    adc d                                         ; $7a4b: $8a
    jp nc, Jump_059_5aca                          ; $7a4c: $d2 $ca $5a

    rst $30                                       ; $7a4f: $f7
    sub $28                                       ; $7a50: $d6 $28
    or c                                          ; $7a52: $b1
    pop hl                                        ; $7a53: $e1
    rst $28                                       ; $7a54: $ef
    call nz, $ffaa                                ; $7a55: $c4 $aa $ff
    ld e, d                                       ; $7a58: $5a
    jr z, jr_059_7a5b                             ; $7a59: $28 $00

jr_059_7a5b:
    ret nc                                        ; $7a5b: $d0

    dec h                                         ; $7a5c: $25
    inc a                                         ; $7a5d: $3c
    sub c                                         ; $7a5e: $91
    call nc, $ca4e                                ; $7a5f: $d4 $4e $ca
    ld c, c                                       ; $7a62: $49
    inc sp                                        ; $7a63: $33
    dec sp                                        ; $7a64: $3b
    add a                                         ; $7a65: $87
    ld l, $00                                     ; $7a66: $2e $00
    ld l, [hl]                                    ; $7a68: $6e
    and a                                         ; $7a69: $a7
    ld a, a                                       ; $7a6a: $7f
    ld c, c                                       ; $7a6b: $49
    cp h                                          ; $7a6c: $bc
    cp e                                          ; $7a6d: $bb
    adc l                                         ; $7a6e: $8d
    halt                                          ; $7a6f: $76
    ld c, c                                       ; $7a70: $49
    cp h                                          ; $7a71: $bc
    and e                                         ; $7a72: $a3
    db $fc                                        ; $7a73: $fc
    sub a                                         ; $7a74: $97
    add l                                         ; $7a75: $85
    ld h, d                                       ; $7a76: $62
    push af                                       ; $7a77: $f5
    ld e, e                                       ; $7a78: $5b
    xor a                                         ; $7a79: $af
    ld sp, hl                                     ; $7a7a: $f9
    ld l, h                                       ; $7a7b: $6c
    cp $9e                                        ; $7a7c: $fe $9e
    or l                                          ; $7a7e: $b5
    sub l                                         ; $7a7f: $95
    db $ed                                        ; $7a80: $ed

jr_059_7a81:
    add hl, sp                                    ; $7a81: $39
    and h                                         ; $7a82: $a4
    cp $fc                                        ; $7a83: $fe $fc
    rst $08                                       ; $7a85: $cf
    ld sp, hl                                     ; $7a86: $f9
    dec bc                                        ; $7a87: $0b
    nop                                           ; $7a88: $00
    cp h                                          ; $7a89: $bc
    ld h, e                                       ; $7a8a: $63
    sbc h                                         ; $7a8b: $9c
    db $ed                                        ; $7a8c: $ed
    adc [hl]                                      ; $7a8d: $8e
    adc c                                         ; $7a8e: $89
    add d                                         ; $7a8f: $82
    ld d, c                                       ; $7a90: $51
    ld h, e                                       ; $7a91: $63
    db $f4                                        ; $7a92: $f4
    ld e, d                                       ; $7a93: $5a
    inc [hl]                                      ; $7a94: $34
    sub h                                         ; $7a95: $94
    db $e4                                        ; $7a96: $e4
    ld hl, $a3cb                                  ; $7a97: $21 $cb $a3
    rst $38                                       ; $7a9a: $ff
    ld c, e                                       ; $7a9b: $4b
    ld e, b                                       ; $7a9c: $58
    cp d                                          ; $7a9d: $ba
    rlca                                          ; $7a9e: $07
    db $eb                                        ; $7a9f: $eb
    rra                                           ; $7aa0: $1f
    sub b                                         ; $7aa1: $90
    pop de                                        ; $7aa2: $d1
    dec a                                         ; $7aa3: $3d
    cp b                                          ; $7aa4: $b8
    push bc                                       ; $7aa5: $c5
    cp c                                          ; $7aa6: $b9
    db $db                                        ; $7aa7: $db
    inc h                                         ; $7aa8: $24
    inc a                                         ; $7aa9: $3c
    dec hl                                        ; $7aaa: $2b
    add a                                         ; $7aab: $87
    or h                                          ; $7aac: $b4
    add hl, sp                                    ; $7aad: $39
    sub l                                         ; $7aae: $95
    inc e                                         ; $7aaf: $1c
    ld [hl-], a                                   ; $7ab0: $32
    ld c, h                                       ; $7ab1: $4c
    jr nc, @-$5c                                  ; $7ab2: $30 $a2

jr_059_7ab4:
    rst $18                                       ; $7ab4: $df
    db $ec                                        ; $7ab5: $ec
    cpl                                           ; $7ab6: $2f
    nop                                           ; $7ab7: $00
    cp h                                          ; $7ab8: $bc
    ld h, e                                       ; $7ab9: $63
    cp [hl]                                       ; $7aba: $be
    ld l, h                                       ; $7abb: $6c
    xor e                                         ; $7abc: $ab
    ld b, d                                       ; $7abd: $42
    rst $30                                       ; $7abe: $f7
    ld h, b                                       ; $7abf: $60
    db $fd                                        ; $7ac0: $fd

jr_059_7ac1:
    and e                                         ; $7ac1: $a3
    rst $00                                       ; $7ac2: $c7
    ld b, d                                       ; $7ac3: $42
    ld bc, $db9c                                  ; $7ac4: $01 $9c $db
    and h                                         ; $7ac7: $a4
    ld e, b                                       ; $7ac8: $58
    push af                                       ; $7ac9: $f5
    ld b, $24                                     ; $7aca: $06 $24
    sbc d                                         ; $7acc: $9a
    ld l, $49                                     ; $7acd: $2e $49
    sbc h                                         ; $7acf: $9c
    ld hl, $ab3c                                  ; $7ad0: $21 $3c $ab
    db $fc                                        ; $7ad3: $fc
    reti                                          ; $7ad4: $d9


    db $fd                                        ; $7ad5: $fd
    sub $2b                                       ; $7ad6: $d6 $2b
    jr jr_059_7ac1                                ; $7ad8: $18 $e7

    ld d, b                                       ; $7ada: $50
    inc hl                                        ; $7adb: $23
    inc h                                         ; $7adc: $24
    adc $79                                       ; $7add: $ce $79
    push hl                                       ; $7adf: $e5
    cp b                                          ; $7ae0: $b8
    rst $30                                       ; $7ae1: $f7
    rst $08                                       ; $7ae2: $cf
    scf                                           ; $7ae3: $37
    ld sp, hl                                     ; $7ae4: $f9
    sbc a                                         ; $7ae5: $9f
    cp [hl]                                       ; $7ae6: $be
    ld a, [c]                                     ; $7ae7: $f2
    jr c, jr_059_7b13                             ; $7ae8: $38 $29

    ld h, $35                                     ; $7aea: $26 $35
    pop de                                        ; $7aec: $d1
    and $cb                                       ; $7aed: $e6 $cb
    daa                                           ; $7aef: $27
    or d                                          ; $7af0: $b2
    ld d, l                                       ; $7af1: $55
    pop hl                                        ; $7af2: $e1
    sub [hl]                                      ; $7af3: $96
    ld a, [c]                                     ; $7af4: $f2
    rst $18                                       ; $7af5: $df
    sub d                                         ; $7af6: $92
    xor l                                         ; $7af7: $ad
    ld de, $5295                                  ; $7af8: $11 $95 $52
    inc a                                         ; $7afb: $3c
    ld sp, hl                                     ; $7afc: $f9
    ld l, [hl]                                    ; $7afd: $6e
    ld e, l                                       ; $7afe: $5d
    nop                                           ; $7aff: $00
    ld a, h                                       ; $7b00: $7c
    dec sp                                        ; $7b01: $3b
    ld c, c                                       ; $7b02: $49
    ld d, $72                                     ; $7b03: $16 $72
    ld c, b                                       ; $7b05: $48
    sbc e                                         ; $7b06: $9b
    ld d, e                                       ; $7b07: $53
    ret                                           ; $7b08: $c9


    ld hl, $04c3                                  ; $7b09: $21 $c3 $04
    inc hl                                        ; $7b0c: $23
    cp d                                          ; $7b0d: $ba
    ld e, a                                       ; $7b0e: $5f
    cp b                                          ; $7b0f: $b8
    inc sp                                        ; $7b10: $33
    or [hl]                                       ; $7b11: $b6
    add h                                         ; $7b12: $84

jr_059_7b13:
    dec b                                         ; $7b13: $05
    dec b                                         ; $7b14: $05
    nop                                           ; $7b15: $00
    sbc [hl]                                      ; $7b16: $9e
    rst $00                                       ; $7b17: $c7
    ld c, c                                       ; $7b18: $49
    ld de, $128e                                  ; $7b19: $11 $8e $12
    db $fc                                        ; $7b1c: $fc
    ld a, [hl+]                                   ; $7b1d: $2a
    call c, Call_000_28de                         ; $7b1e: $dc $de $28
    pop hl                                        ; $7b21: $e1
    db $fd                                        ; $7b22: $fd
    or d                                          ; $7b23: $b2
    cpl                                           ; $7b24: $2f
    cp h                                          ; $7b25: $bc
    rst $38                                       ; $7b26: $ff
    ld b, h                                       ; $7b27: $44
    jp c, $897b                                   ; $7b28: $da $7b $89

    ld [hl], e                                    ; $7b2b: $73
    or a                                          ; $7b2c: $b7
    ld c, b                                       ; $7b2d: $48
    ld e, b                                       ; $7b2e: $58
    ld [$f9df], a                                 ; $7b2f: $ea $df $f9
    ld h, e                                       ; $7b32: $63
    db $f4                                        ; $7b33: $f4
    jp c, $b2be                                   ; $7b34: $da $be $b2

    db $db                                        ; $7b37: $db
    daa                                           ; $7b38: $27
    or [hl]                                       ; $7b39: $b6
    cp d                                          ; $7b3a: $ba
    rst $38                                       ; $7b3b: $ff
    rst $30                                       ; $7b3c: $f7
    call c, $82ff                                 ; $7b3d: $dc $ff $82
    ld e, a                                       ; $7b40: $5f
    cp a                                          ; $7b41: $bf
    di                                            ; $7b42: $f3
    push hl                                       ; $7b43: $e5
    rst $38                                       ; $7b44: $ff
    add c                                         ; $7b45: $81
    or c                                          ; $7b46: $b1
    call nz, $9d9f                                ; $7b47: $c4 $9f $9d
    call z, Call_059_74ff                         ; $7b4a: $cc $ff $74
    ld a, [hl]                                    ; $7b4d: $7e

jr_059_7b4e:
    call $bd2d                                    ; $7b4e: $cd $2d $bd
    dec l                                         ; $7b51: $2d
    ld l, [hl]                                    ; $7b52: $6e
    rst $38                                       ; $7b53: $ff
    dec b                                         ; $7b54: $05
    nop                                           ; $7b55: $00
    inc a                                         ; $7b56: $3c
    or c                                          ; $7b57: $b1
    ld c, c                                       ; $7b58: $49
    db $dd                                        ; $7b59: $dd
    ld e, e                                       ; $7b5a: $5b
    inc h                                         ; $7b5b: $24
    inc a                                         ; $7b5c: $3c
    ld d, c                                       ; $7b5d: $51
    ld a, [c]                                     ; $7b5e: $f2
    inc d                                         ; $7b5f: $14
    ld c, e                                       ; $7b60: $4b
    ld e, [hl]                                    ; $7b61: $5e
    call nz, $89db                                ; $7b62: $c4 $db $89
    db $ec                                        ; $7b65: $ec
    sub d                                         ; $7b66: $92
    jr c, jr_059_7bb7                             ; $7b67: $38 $4e

    db $f4                                        ; $7b69: $f4
    ld b, h                                       ; $7b6a: $44
    reti                                          ; $7b6b: $d9


    ld d, $a9                                     ; $7b6c: $16 $a9
    pop de                                        ; $7b6e: $d1
    or $bf                                        ; $7b6f: $f6 $bf
    call nz, $8cf3                                ; $7b71: $c4 $f3 $8c
    ld h, l                                       ; $7b74: $65
    ld [hl], d                                    ; $7b75: $72
    adc b                                         ; $7b76: $88
    db $dd                                        ; $7b77: $dd
    pop bc                                        ; $7b78: $c1
    and b                                         ; $7b79: $a0
    nop                                           ; $7b7a: $00
    inc e                                         ; $7b7b: $1c
    daa                                           ; $7b7c: $27
    ld c, d                                       ; $7b7d: $4a
    rst $30                                       ; $7b7e: $f7
    ld d, $5d                                     ; $7b7f: $16 $5d
    nop                                           ; $7b81: $00
    ld l, [hl]                                    ; $7b82: $6e
    rst $28                                       ; $7b83: $ef
    ld [hl], l                                    ; $7b84: $75
    ld e, l                                       ; $7b85: $5d
    ld a, [hl-]                                   ; $7b86: $3a
    ld h, e                                       ; $7b87: $63
    sbc h                                         ; $7b88: $9c
    dec l                                         ; $7b89: $2d
    ld b, l                                       ; $7b8a: $45
    scf                                           ; $7b8b: $37
    add hl, hl                                    ; $7b8c: $29
    adc a                                         ; $7b8d: $8f
    inc bc                                        ; $7b8e: $03
    ld b, a                                       ; $7b8f: $47
    xor l                                         ; $7b90: $ad
    ld a, [c]                                     ; $7b91: $f2
    add sp, $55                                   ; $7b92: $e8 $55
    rst $38                                       ; $7b94: $ff
    sbc e                                         ; $7b95: $9b
    xor $ad                                       ; $7b96: $ee $ad
    pop af                                        ; $7b98: $f1
    xor d                                         ; $7b99: $aa
    jr z, jr_059_7b4e                             ; $7b9a: $28 $b2

    and [hl]                                      ; $7b9c: $a6
    dec bc                                        ; $7b9d: $0b
    nop                                           ; $7b9e: $00
    inc e                                         ; $7b9f: $1c
    daa                                           ; $7ba0: $27
    ld a, d                                       ; $7ba1: $7a
    and d                                         ; $7ba2: $a2
    adc d                                         ; $7ba3: $8a
    jp nc, Jump_059_5aca                          ; $7ba4: $d2 $ca $5a

    ld l, h                                       ; $7ba7: $6c
    ld hl, sp+$3b                                 ; $7ba8: $f8 $3b
    or c                                          ; $7baa: $b1
    ld [$4a1f], a                                 ; $7bab: $ea $1f $4a
    ld c, $22                                     ; $7bae: $0e $22
    rst $18                                       ; $7bb0: $df
    ld [hl], e                                    ; $7bb1: $73
    jp nz, $da99                                  ; $7bb2: $c2 $99 $da

    ld a, e                                       ; $7bb5: $7b
    dec hl                                        ; $7bb6: $2b

jr_059_7bb7:
    ld c, d                                       ; $7bb7: $4a
    ld a, $ee                                     ; $7bb8: $3e $ee
    ld a, h                                       ; $7bba: $7c
    ld b, l                                       ; $7bbb: $45
    db $db                                        ; $7bbc: $db
    xor [hl]                                      ; $7bbd: $ae
    inc l                                         ; $7bbe: $2c
    adc $f9                                       ; $7bbf: $ce $f9
    or l                                          ; $7bc1: $b5
    cp $0b                                        ; $7bc2: $fe $0b
    nop                                           ; $7bc4: $00
    ret nc                                        ; $7bc5: $d0

    dec h                                         ; $7bc6: $25
    inc a                                         ; $7bc7: $3c
    ld [hl], c                                    ; $7bc8: $71
    ld bc, $44fc                                  ; $7bc9: $01 $fc $44
    rst $20                                       ; $7bcc: $e7
    sub b                                         ; $7bcd: $90
    or b                                          ; $7bce: $b0
    ld [hl], h                                    ; $7bcf: $74
    rst $00                                       ; $7bd0: $c7
    ld b, d                                       ; $7bd1: $42
    xor b                                         ; $7bd2: $a8
    ld [hl], h                                    ; $7bd3: $74
    sub $68                                       ; $7bd4: $d6 $68
    jp c, $ff2a                                   ; $7bd6: $da $2a $ff

    dec l                                         ; $7bd9: $2d
    db $dd                                        ; $7bda: $dd
    ld e, e                                       ; $7bdb: $5b
    and e                                         ; $7bdc: $a3
    call nz, $fbb0                                ; $7bdd: $c4 $b0 $fb
    ld l, e                                       ; $7be0: $6b
    sub e                                         ; $7be1: $93
    ld [c], a                                     ; $7be2: $e2
    dec e                                         ; $7be3: $1d
    dec a                                         ; $7be4: $3d
    rst $38                                       ; $7be5: $ff
    ld [bc], a                                    ; $7be6: $02
    ld e, [hl]                                    ; $7be7: $5e
    daa                                           ; $7be8: $27
    sbc d                                         ; $7be9: $9a
    ld l, b                                       ; $7bea: $68
    and d                                         ; $7beb: $a2
    adc c                                         ; $7bec: $89
    ld h, $7a                                     ; $7bed: $26 $7a
    ld e, l                                       ; $7bef: $5d
    rst $10                                       ; $7bf0: $d7
    ld [hl], l                                    ; $7bf1: $75
    ld bc, $5b7c                                  ; $7bf2: $01 $7c $5b
    and e                                         ; $7bf5: $a3
    ld d, h                                       ; $7bf6: $54
    ld a, e                                       ; $7bf7: $7b
    ld b, a                                       ; $7bf8: $47
    xor l                                         ; $7bf9: $ad
    or b                                          ; $7bfa: $b0
    call nz, $ec13                                ; $7bfb: $c4 $13 $ec
    ld e, [hl]                                    ; $7bfe: $5e
    xor h                                         ; $7bff: $ac
    sub b                                         ; $7c00: $90
    rlca                                          ; $7c01: $07
    db $ec                                        ; $7c02: $ec
    dec hl                                        ; $7c03: $2b
    and c                                         ; $7c04: $a1
    ld h, b                                       ; $7c05: $60
    ld c, c                                       ; $7c06: $49
    call Call_000_26d8                            ; $7c07: $cd $d8 $26
    ld [hl], l                                    ; $7c0a: $75
    ld [$744f], sp                                ; $7c0b: $08 $4f $74
    rlca                                          ; $7c0e: $07
    inc d                                         ; $7c0f: $14
    nop                                           ; $7c10: $00
    sbc [hl]                                      ; $7c11: $9e
    ld h, d                                       ; $7c12: $62
    ret                                           ; $7c13: $c9


    adc e                                         ; $7c14: $8b
    ld a, b                                       ; $7c15: $78
    dec sp                                        ; $7c16: $3b
    sub c                                         ; $7c17: $91
    ld e, l                                       ; $7c18: $5d
    nop                                           ; $7c19: $00
    inc a                                         ; $7c1a: $3c
    rst $08                                       ; $7c1b: $cf
    ld e, b                                       ; $7c1c: $58
    ld h, $87                                     ; $7c1d: $26 $87
    ret c                                         ; $7c1f: $d8

    dec e                                         ; $7c20: $1d
    db $ec                                        ; $7c21: $ec
    ld [bc], a                                    ; $7c22: $02
    ld e, $a6                                     ; $7c23: $1e $a6
    ld e, a                                       ; $7c25: $5f
    ld l, d                                       ; $7c26: $6a
    or h                                          ; $7c27: $b4
    add l                                         ; $7c28: $85
    sub d                                         ; $7c29: $92
    jr c, jr_059_7c7a                             ; $7c2a: $38 $4e

    sub h                                         ; $7c2c: $94
    adc $98                                       ; $7c2d: $ce $98
    ld d, c                                       ; $7c2f: $51
    and e                                         ; $7c30: $a3
    dec [hl]                                      ; $7c31: $35
    ld a, a                                       ; $7c32: $7f
    ld h, a                                       ; $7c33: $67
    sub h                                         ; $7c34: $94
    ld l, h                                       ; $7c35: $6c
    ld l, e                                       ; $7c36: $6b
    ld e, b                                       ; $7c37: $58
    rst $38                                       ; $7c38: $ff
    dec h                                         ; $7c39: $25
    ld c, $fb                                     ; $7c3a: $0e $fb
    rst $28                                       ; $7c3c: $ef
    adc c                                         ; $7c3d: $89
    or d                                          ; $7c3e: $b2
    dec l                                         ; $7c3f: $2d
    ld [de], a                                    ; $7c40: $12
    adc h                                         ; $7c41: $8c
    ld [$89df], a                                 ; $7c42: $ea $df $89
    rrca                                          ; $7c45: $0f
    dec h                                         ; $7c46: $25
    sbc [hl]                                      ; $7c47: $9e
    ccf                                           ; $7c48: $3f
    db $e3                                        ; $7c49: $e3
    rst $10                                       ; $7c4a: $d7
    or [hl]                                       ; $7c4b: $b6
    daa                                           ; $7c4c: $27
    ld a, [bc]                                    ; $7c4d: $0a
    ld a, l                                       ; $7c4e: $7d
    ld a, a                                       ; $7c4f: $7f
    ld e, a                                       ; $7c50: $5f
    ld e, c                                       ; $7c51: $59
    ld a, [bc]                                    ; $7c52: $0a
    adc c                                         ; $7c53: $89
    jp nc, Jump_059_6dc1                          ; $7c54: $d2 $c1 $6d

    dec de                                        ; $7c57: $1b
    dec b                                         ; $7c58: $05
    dec h                                         ; $7c59: $25
    rlca                                          ; $7c5a: $07
    or h                                          ; $7c5b: $b4
    and l                                         ; $7c5c: $a5
    adc [hl]                                      ; $7c5d: $8e
    inc d                                         ; $7c5e: $14
    ld b, d                                       ; $7c5f: $42
    ld d, h                                       ; $7c60: $54
    ld a, [c]                                     ; $7c61: $f2
    inc a                                         ; $7c62: $3c
    jr jr_059_7cc9                                ; $7c63: $18 $64

    rst $28                                       ; $7c65: $ef
    dec a                                         ; $7c66: $3d
    ld h, a                                       ; $7c67: $67
    ld [hl], c                                    ; $7c68: $71
    ret c                                         ; $7c69: $d8

    dec h                                         ; $7c6a: $25
    cp [hl]                                       ; $7c6b: $be
    xor l                                         ; $7c6c: $ad
    ld d, c                                       ; $7c6d: $51
    or d                                          ; $7c6e: $b2
    sub c                                         ; $7c6f: $91
    rrca                                          ; $7c70: $0f
    or e                                          ; $7c71: $b3
    xor a                                         ; $7c72: $af
    ld d, l                                       ; $7c73: $55
    xor h                                         ; $7c74: $ac
    ld h, [hl]                                    ; $7c75: $66
    halt                                          ; $7c76: $76
    ld c, $09                                     ; $7c77: $0e $09
    ld c, a                                       ; $7c79: $4f

jr_059_7c7a:
    jr z, jr_059_7cc7                             ; $7c7a: $28 $4b

    sbc e                                         ; $7c7c: $9b
    xor b                                         ; $7c7d: $a8
    sub h                                         ; $7c7e: $94
    rst $00                                       ; $7c7f: $c7
    ld c, c                                       ; $7c80: $49
    ld de, $4bfe                                  ; $7c81: $11 $fe $4b
    ld a, h                                       ; $7c84: $7c
    and e                                         ; $7c85: $a3
    ei                                            ; $7c86: $fb
    add l                                         ; $7c87: $85
    or $5f                                        ; $7c88: $f6 $5f
    sbc d                                         ; $7c8a: $9a
    cp a                                          ; $7c8b: $bf
    ld [hl], e                                    ; $7c8c: $73
    xor [hl]                                      ; $7c8d: $ae
    and $60                                       ; $7c8e: $e6 $60
    ld h, [hl]                                    ; $7c90: $66
    dec sp                                        ; $7c91: $3b
    sub a                                         ; $7c92: $97
    pop bc                                        ; $7c93: $c1
    rst $18                                       ; $7c94: $df
    add d                                         ; $7c95: $82
    ld d, c                                       ; $7c96: $51
    db $e3                                        ; $7c97: $e3
    ld c, h                                       ; $7c98: $4c
    db $fc                                        ; $7c99: $fc
    ld c, e                                       ; $7c9a: $4b
    ld c, $30                                     ; $7c9b: $0e $30
    xor c                                         ; $7c9d: $a9
    and [hl]                                      ; $7c9e: $a6
    xor h                                         ; $7c9f: $ac
    or e                                          ; $7ca0: $b3
    ld c, h                                       ; $7ca1: $4c
    ld [hl], a                                    ; $7ca2: $77
    ld d, h                                       ; $7ca3: $54
    sub c                                         ; $7ca4: $91
    ld a, [$14df]                                 ; $7ca5: $fa $df $14
    ld l, l                                       ; $7ca8: $6d
    ld a, e                                       ; $7ca9: $7b
    inc de                                        ; $7caa: $13
    sub l                                         ; $7cab: $95
    ld l, h                                       ; $7cac: $6c
    sbc e                                         ; $7cad: $9b
    call nz, $bf86                                ; $7cae: $c4 $86 $bf
    inc de                                        ; $7cb1: $13
    xor e                                         ; $7cb2: $ab
    cp $2f                                        ; $7cb3: $fe $2f
    pop af                                        ; $7cb5: $f1
    call nz, $fefa                                ; $7cb6: $c4 $fa $fe
    ld e, a                                       ; $7cb9: $5f
    nop                                           ; $7cba: $00
    db $fc                                        ; $7cbb: $fc
    cp b                                          ; $7cbc: $b8
    add hl, sp                                    ; $7cbd: $39
    halt                                          ; $7cbe: $76
    ld a, a                                       ; $7cbf: $7f
    cp $d6                                        ; $7cc0: $fe $d6
    xor e                                         ; $7cc2: $ab
    jr z, @-$1d                                   ; $7cc3: $28 $e1

    add hl, bc                                    ; $7cc5: $09
    reti                                          ; $7cc6: $d9


jr_059_7cc7:
    rst $18                                       ; $7cc7: $df
    cp b                                          ; $7cc8: $b8

jr_059_7cc9:
    rst $20                                       ; $7cc9: $e7
    cp h                                          ; $7cca: $bc
    ld a, d                                       ; $7ccb: $7a
    ld d, h                                       ; $7ccc: $54
    push bc                                       ; $7ccd: $c5
    sbc [hl]                                      ; $7cce: $9e
    di                                            ; $7ccf: $f3
    ld c, d                                       ; $7cd0: $4a
    xor c                                         ; $7cd1: $a9
    and d                                         ; $7cd2: $a2
    inc [hl]                                      ; $7cd3: $34
    cp a                                          ; $7cd4: $bf
    call z, $ebfe                                 ; $7cd5: $cc $fe $eb
    ld [de], a                                    ; $7cd8: $12
    rrca                                          ; $7cd9: $0f
    sub l                                         ; $7cda: $95
    ld a, [hl-]                                   ; $7cdb: $3a
    sbc e                                         ; $7cdc: $9b
    sub e                                         ; $7cdd: $93
    ld c, b                                       ; $7cde: $48
    add hl, sp                                    ; $7cdf: $39
    and l                                         ; $7ce0: $a5
    ld d, h                                       ; $7ce1: $54
    ld a, [hl-]                                   ; $7ce2: $3a
    cp e                                          ; $7ce3: $bb
    di                                            ; $7ce4: $f3
    ld e, a                                       ; $7ce5: $5f
    ld a, b                                       ; $7ce6: $78
    cp a                                          ; $7ce7: $bf
    push af                                       ; $7ce8: $f5
    adc e                                         ; $7ce9: $8b

jr_059_7cea:
    xor b                                         ; $7cea: $a8
    jp nz, $a89a                                  ; $7ceb: $c2 $9a $a8

    ld l, $00                                     ; $7cee: $2e $00
    ld a, h                                       ; $7cf0: $7c
    ccf                                           ; $7cf1: $3f
    ld h, e                                       ; $7cf2: $63
    ld l, l                                       ; $7cf3: $6d
    ccf                                           ; $7cf4: $3f
    xor c                                         ; $7cf5: $a9
    ei                                            ; $7cf6: $fb
    ld h, a                                       ; $7cf7: $67
    xor h                                         ; $7cf8: $ac
    db $ed                                        ; $7cf9: $ed
    ld [hl], e                                    ; $7cfa: $73
    ld c, e                                       ; $7cfb: $4b
    sbc h                                         ; $7cfc: $9c
    ld h, e                                       ; $7cfd: $63
    sbc [hl]                                      ; $7cfe: $9e
    ld a, a                                       ; $7cff: $7f
    ei                                            ; $7d00: $fb
    ei                                            ; $7d01: $fb
    cp $89                                        ; $7d02: $fe $89
    db $db                                        ; $7d04: $db
    sbc a                                         ; $7d05: $9f
    call nc, $cc1c                                ; $7d06: $d4 $1c $cc
    rst $18                                       ; $7d09: $df
    or [hl]                                       ; $7d0a: $b6
    ccf                                           ; $7d0b: $3f
    or c                                          ; $7d0c: $b1
    add hl, sp                                    ; $7d0d: $39
    ld c, [hl]                                    ; $7d0e: $4e
    db $db                                        ; $7d0f: $db
    ld c, a                                       ; $7d10: $4f
    jp z, Jump_059_609d                           ; $7d11: $ca $9d $60

    cp l                                          ; $7d14: $bd
    ld hl, $b077                                  ; $7d15: $21 $77 $b0
    ld a, e                                       ; $7d18: $7b
    ld c, e                                       ; $7d19: $4b
    jr nc, jr_059_7cea                            ; $7d1a: $30 $ce

    rst $10                                       ; $7d1c: $d7
    db $fd                                        ; $7d1d: $fd
    and e                                         ; $7d1e: $a3
    call nz, $c67e                                ; $7d1f: $c4 $7e $c6
    or $0b                                        ; $7d22: $f6 $0b
    ld a, [hl]                                    ; $7d24: $7e
    push hl                                       ; $7d25: $e5
    cp a                                          ; $7d26: $bf
    ld [hl], e                                    ; $7d27: $73
    cp [hl]                                       ; $7d28: $be
    xor $6d                                       ; $7d29: $ee $6d
    ld [c], a                                     ; $7d2b: $e2
    ld b, $9e                                     ; $7d2c: $06 $9e
    rst $38                                       ; $7d2e: $ff
    ldh [$96], a                                  ; $7d2f: $e0 $96
    jr c, @-$07                                   ; $7d31: $38 $f7

    inc [hl]                                      ; $7d33: $34
    ret                                           ; $7d34: $c9


    cp $65                                        ; $7d35: $fe $65
    ld h, e                                       ; $7d37: $63
    sbc [hl]                                      ; $7d38: $9e
    ld a, a                                       ; $7d39: $7f
    ei                                            ; $7d3a: $fb
    ei                                            ; $7d3b: $fb
    cp $89                                        ; $7d3c: $fe $89
    db $db                                        ; $7d3e: $db
    rst $08                                       ; $7d3f: $cf
    dec c                                         ; $7d40: $0d
    nop                                           ; $7d41: $00
    ld a, h                                       ; $7d42: $7c
    db $db                                        ; $7d43: $db
    and h                                         ; $7d44: $a4
    ld a, [bc]                                    ; $7d45: $0a
    ld h, c                                       ; $7d46: $61
    cp $0d                                        ; $7d47: $fe $0d
    dec h                                         ; $7d49: $25
    add sp, -$2b                                  ; $7d4a: $e8 $d5
    db $fc                                        ; $7d4c: $fc
    dec d                                         ; $7d4d: $15
    xor $8c                                       ; $7d4e: $ee $8c
    db $ed                                        ; $7d50: $ed
    sub a                                         ; $7d51: $97
    db $fd                                        ; $7d52: $fd
    ld a, l                                       ; $7d53: $7d
    rst $38                                       ; $7d54: $ff
    call nz, $87ed                                ; $7d55: $c4 $ed $87
    ld [bc], a                                    ; $7d58: $02
    ret nc                                        ; $7d59: $d0

    sbc e                                         ; $7d5a: $9b
    call nc, $ba3d                                ; $7d5b: $d4 $3d $ba
    ld e, a                                       ; $7d5e: $5f
    adc l                                         ; $7d5f: $8d
    or [hl]                                       ; $7d60: $b6
    ld c, d                                       ; $7d61: $4a
    or e                                          ; $7d62: $b3
    ld a, h                                       ; $7d63: $7c
    ld c, c                                       ; $7d64: $49
    dec d                                         ; $7d65: $15
    jp nz, $fbfc                                  ; $7d66: $c2 $fc $fb

    sub d                                         ; $7d69: $92
    ld b, a                                       ; $7d6a: $47
    xor a                                         ; $7d6b: $af
    jp c, $4485                                   ; $7d6c: $da $85 $44

    ret                                           ; $7d6f: $c9


    sub $e8                                       ; $7d70: $d6 $e8
    inc e                                         ; $7d72: $1c
    ld [de], a                                    ; $7d73: $12
    sub [hl]                                      ; $7d74: $96
    ld h, $b2                                     ; $7d75: $26 $b2
    xor $9d                                       ; $7d77: $ee $9d
    inc hl                                        ; $7d79: $23
    rst $18                                       ; $7d7a: $df
    rst $10                                       ; $7d7b: $d7
    inc e                                         ; $7d7c: $1c
    db $e3                                        ; $7d7d: $e3
    adc h                                         ; $7d7e: $8c
    or l                                          ; $7d7f: $b5
    or l                                          ; $7d80: $b5
    ld a, [hl]                                    ; $7d81: $7e
    dec d                                         ; $7d82: $15
    ld l, $64                                     ; $7d83: $2e $64
    xor l                                         ; $7d85: $ad
    ld e, a                                       ; $7d86: $5f
    ldh a, [$2b]                                  ; $7d87: $f0 $2b
    adc a                                         ; $7d89: $8f
    sub e                                         ; $7d8a: $93
    ld [c], a                                     ; $7d8b: $e2
    ld e, d                                       ; $7d8c: $5a
    rst $38                                       ; $7d8d: $ff
    dec b                                         ; $7d8e: $05
    nop                                           ; $7d8f: $00
    inc a                                         ; $7d90: $3c
    ld e, c                                       ; $7d91: $59
    ld c, [hl]                                    ; $7d92: $4e
    add d                                         ; $7d93: $82
    ld b, a                                       ; $7d94: $47
    rst $30                                       ; $7d95: $f7
    ld c, b                                       ; $7d96: $48
    ld a, [hl+]                                   ; $7d97: $2a
    cp d                                          ; $7d98: $ba
    ld c, c                                       ; $7d99: $49
    or l                                          ; $7d9a: $b5
    ld l, e                                       ; $7d9b: $6b
    ld c, l                                       ; $7d9c: $4d
    ld [hl], e                                    ; $7d9d: $73
    ld c, e                                       ; $7d9e: $4b
    or $af                                        ; $7d9f: $f6 $af
    or e                                          ; $7da1: $b3
    ld b, [hl]                                    ; $7da2: $46
    and h                                         ; $7da3: $a4
    adc c                                         ; $7da4: $89
    xor h                                         ; $7da5: $ac
    dec sp                                        ; $7da6: $3b
    ldh [$bf], a                                  ; $7da7: $e0 $bf
    nop                                           ; $7da9: $00
    cp h                                          ; $7daa: $bc
    pop bc                                        ; $7dab: $c1
    adc b                                         ; $7dac: $88
    ld a, d                                       ; $7dad: $7a
    ld [hl], d                                    ; $7dae: $72
    ret                                           ; $7daf: $c9


    or [hl]                                       ; $7db0: $b6

jr_059_7db1:
    ld l, b                                       ; $7db1: $68
    ld l, [hl]                                    ; $7db2: $6e
    xor c                                         ; $7db3: $a9
    halt                                          ; $7db4: $76
    sbc e                                         ; $7db5: $9b
    and b                                         ; $7db6: $a0
    call nz, $9d9f                                ; $7db7: $c4 $9f $9d
    call z, Call_059_74ff                         ; $7dba: $cc $ff $74
    cp [hl]                                       ; $7dbd: $be
    reti                                          ; $7dbe: $d9


    dec bc                                        ; $7dbf: $0b
    ld c, e                                       ; $7dc0: $4b
    inc de                                        ; $7dc1: $13
    ld e, c                                       ; $7dc2: $59
    rst $30                                       ; $7dc3: $f7
    ld b, [hl]                                    ; $7dc4: $46
    ld l, c                                       ; $7dc5: $69
    ld b, $a3                                     ; $7dc6: $06 $a3
    dec a                                         ; $7dc8: $3d
    dec bc                                        ; $7dc9: $0b
    ld [hl], e                                    ; $7dca: $73
    dec l                                         ; $7dcb: $2d
    inc h                                         ; $7dcc: $24
    ld c, d                                       ; $7dcd: $4a
    inc sp                                        ; $7dce: $33
    ld e, b                                       ; $7dcf: $58
    adc d                                         ; $7dd0: $8a
    rst $10                                       ; $7dd1: $d7
    ld [hl], l                                    ; $7dd2: $75
    add hl, bc                                    ; $7dd3: $09
    ld a, [hl]                                    ; $7dd4: $7e
    push de                                       ; $7dd5: $d5
    ld l, [hl]                                    ; $7dd6: $6e
    sub e                                         ; $7dd7: $93
    ld [hl], d                                    ; $7dd8: $72
    ld e, h                                       ; $7dd9: $5c
    call $4e31                                    ; $7dda: $cd $31 $4e
    call c, Call_059_6bf7                         ; $7ddd: $dc $f7 $6b
    ld d, d                                       ; $7de0: $52
    sub $4d                                       ; $7de1: $d6 $4d
    and h                                         ; $7de3: $a4
    cp $9d                                        ; $7de4: $fe $9d
    cp b                                          ; $7de6: $b8
    jp hl                                         ; $7de7: $e9


    sub $dc                                       ; $7de8: $d6 $dc
    cp d                                          ; $7dea: $ba
    db $e4                                        ; $7deb: $e4
    ld de, $5fce                                  ; $7dec: $11 $ce $5f
    adc e                                         ; $7def: $8b
    sub d                                         ; $7df0: $92
    adc l                                         ; $7df1: $8d
    ld a, c                                       ; $7df2: $79
    cp $ed                                        ; $7df3: $fe $ed
    rst $28                                       ; $7df5: $ef
    ei                                            ; $7df6: $fb
    daa                                           ; $7df7: $27
    sub [hl]                                      ; $7df8: $96
    xor $31                                       ; $7df9: $ee $31
    cp a                                          ; $7dfb: $bf
    ld e, [hl]                                    ; $7dfc: $5e
    dec a                                         ; $7dfd: $3d
    ld c, [hl]                                    ; $7dfe: $4e
    add h                                         ; $7dff: $84
    or d                                          ; $7e00: $b2
    ld l, c                                       ; $7e01: $69
    xor e                                         ; $7e02: $ab
    adc c                                         ; $7e03: $89
    xor h                                         ; $7e04: $ac
    ld a, e                                       ; $7e05: $7b
    cpl                                           ; $7e06: $2f
    nop                                           ; $7e07: $00
    inc a                                         ; $7e08: $3c
    rst $30                                       ; $7e09: $f7
    ld a, l                                       ; $7e0a: $7d
    ld e, l                                       ; $7e0b: $5d
    sub a                                         ; $7e0c: $97
    ld a, [$f217]                                 ; $7e0d: $fa $17 $f2
    push hl                                       ; $7e10: $e5
    cp a                                          ; $7e11: $bf
    ret nc                                        ; $7e12: $d0

    ld a, [$f75f]                                 ; $7e13: $fa $5f $f7
    jr @-$01                                      ; $7e16: $18 $fd

    rst $30                                       ; $7e18: $f7
    rst $10                                       ; $7e19: $d7
    dec h                                         ; $7e1a: $25
    rst $08                                       ; $7e1b: $cf
    db $e3                                        ; $7e1c: $e3
    and h                                         ; $7e1d: $a4
    jr c, jr_059_7db1                             ; $7e1e: $38 $91

    ld [hl], l                                    ; $7e20: $75
    rlca                                          ; $7e21: $07
    db $fc                                        ; $7e22: $fc
    ld [$c55f], a                                 ; $7e23: $ea $5f $c5
    ld h, $65                                     ; $7e26: $26 $65
    ld h, e                                       ; $7e28: $63
    sbc [hl]                                      ; $7e29: $9e
    ld a, a                                       ; $7e2a: $7f
    ld h, c                                       ; $7e2b: $61
    ld l, c                                       ; $7e2c: $69
    adc [hl]                                      ; $7e2d: $8e
    db $ed                                        ; $7e2e: $ed
    xor b                                         ; $7e2f: $a8
    cp c                                          ; $7e30: $b9
    and l                                         ; $7e31: $a5
    rst $18                                       ; $7e32: $df
    ld a, d                                       ; $7e33: $7a
    and l                                         ; $7e34: $a5
    ld e, c                                       ; $7e35: $59
    ld c, [hl]                                    ; $7e36: $4e
    ld [hl], h                                    ; $7e37: $74
    ld bc, $a11e                                  ; $7e38: $01 $1e $a1
    ret                                           ; $7e3b: $c9


    cp $5b                                        ; $7e3c: $fe $5b
    ld l, [hl]                                    ; $7e3e: $6e
    daa                                           ; $7e3f: $27
    call nz, $f7d6                                ; $7e40: $c4 $d6 $f7
    cp a                                          ; $7e43: $bf
    sub d                                         ; $7e44: $92
    jp z, Jump_059_6b71                           ; $7e45: $ca $71 $6b

    and d                                         ; $7e48: $a2
    ld a, [c]                                     ; $7e49: $f2
    rst $18                                       ; $7e4a: $df
    or h                                          ; $7e4b: $b4
    rst $38                                       ; $7e4c: $ff
    ld h, l                                       ; $7e4d: $65
    ld d, c                                       ; $7e4e: $51
    or d                                          ; $7e4f: $b2
    xor l                                         ; $7e50: $ad
    ld [hl], c                                    ; $7e51: $71
    ld a, [$c4a1]                                 ; $7e52: $fa $a1 $c4
    add hl, de                                    ; $7e55: $19
    jp nz, Jump_059_6fd2                          ; $7e56: $c2 $d2 $6f

    pop hl                                        ; $7e59: $e1
    daa                                           ; $7e5a: $27
    dec b                                         ; $7e5b: $05
    db $e3                                        ; $7e5c: $e3
    ld a, h                                       ; $7e5d: $7c
    db $dd                                        ; $7e5e: $dd
    ld e, e                                       ; $7e5f: $5b
    db $e3                                        ; $7e60: $e3
    db $f4                                        ; $7e61: $f4
    rr a                                          ; $7e62: $cb $1f
    and e                                         ; $7e64: $a3
    ld a, e                                       ; $7e65: $7b
    adc h                                         ; $7e66: $8c
    dec bc                                        ; $7e67: $0b
    nop                                           ; $7e68: $00
    ret nc                                        ; $7e69: $d0

    push de                                       ; $7e6a: $d5
    and h                                         ; $7e6b: $a4
    ld a, [de]                                    ; $7e6c: $1a
    jr z, @+$1a                                   ; $7e6d: $28 $18

    rst $20                                       ; $7e6f: $e7
    db $eb                                        ; $7e70: $eb
    cp $51                                        ; $7e71: $fe $51
    ld h, d                                       ; $7e73: $62
    ccf                                           ; $7e74: $3f
    inc hl                                        ; $7e75: $23
    ld a, [de]                                    ; $7e76: $1a
    ld c, d                                       ; $7e77: $4a
    ld a, h                                       ; $7e78: $7c
    ld e, e                                       ; $7e79: $5b
    sub e                                         ; $7e7a: $93
    ld [hl], h                                    ; $7e7b: $74
    rst $38                                       ; $7e7c: $ff
    inc e                                         ; $7e7d: $1c
    ld l, e                                       ; $7e7e: $6b
    ei                                            ; $7e7f: $fb
    xor d                                         ; $7e80: $aa
    db $10                                        ; $7e81: $10
    and $df                                       ; $7e82: $e6 $df
    ld d, b                                       ; $7e84: $50
    nop                                           ; $7e85: $00
    ld c, $76                                     ; $7e86: $0e $76
    sbc e                                         ; $7e88: $9b
    add h                                         ; $7e89: $84
    dec h                                         ; $7e8a: $25
    adc a                                         ; $7e8b: $8f
    jr c, jr_059_7f06                             ; $7e8c: $38 $78

    db $dd                                        ; $7e8e: $dd
    or $90                                        ; $7e8f: $f6 $90
    sub e                                         ; $7e91: $93
    rst $18                                       ; $7e92: $df
    ld l, l                                       ; $7e93: $6d
    db $dd                                        ; $7e94: $dd
    ccf                                           ; $7e95: $3f
    rst $00                                       ; $7e96: $c7
    ld e, a                                       ; $7e97: $5f
    ld [de], a                                    ; $7e98: $12
    db $f4                                        ; $7e99: $f4
    ld c, [hl]                                    ; $7e9a: $4e
    sub d                                         ; $7e9b: $92
    rra                                           ; $7e9c: $1f
    ld h, a                                       ; $7e9d: $67
    sub d                                         ; $7e9e: $92
    dec [hl]                                      ; $7e9f: $35
    ld d, c                                       ; $7ea0: $51
    add hl, hl                                    ; $7ea1: $29
    call $a5f2                                    ; $7ea2: $cd $f2 $a5
    ld c, e                                       ; $7ea5: $4b
    ld e, $8f                                     ; $7ea6: $1e $8f
    ld [hl], c                                    ; $7ea8: $71

jr_059_7ea9:
    and d                                         ; $7ea9: $a2
    sub d                                         ; $7eaa: $92
    adc d                                         ; $7eab: $8a
    ld l, [hl]                                    ; $7eac: $6e
    sub d                                         ; $7ead: $92
    db $fd                                        ; $7eae: $fd
    sub [hl]                                      ; $7eaf: $96
    ld h, [hl]                                    ; $7eb0: $66
    jr nc, jr_059_7ea9                            ; $7eb1: $30 $f6

    dec h                                         ; $7eb3: $25
    sbc a                                         ; $7eb4: $9f
    db $eb                                        ; $7eb5: $eb

jr_059_7eb6:
    ld h, h                                       ; $7eb6: $64
    and l                                         ; $7eb7: $a5
    ei                                            ; $7eb8: $fb
    rst $20                                       ; $7eb9: $e7
    ld e, b                                       ; $7eba: $58
    adc e                                         ; $7ebb: $8b
    cp d                                          ; $7ebc: $ba
    nop                                           ; $7ebd: $00
    db $fc                                        ; $7ebe: $fc
    inc bc                                        ; $7ebf: $03
    ei                                            ; $7ec0: $fb
    xor a                                         ; $7ec1: $af
    db $eb                                        ; $7ec2: $eb
    jp nc, $d6bd                                  ; $7ec3: $d2 $bd $d6

    inc h                                         ; $7ec6: $24
    db $db                                        ; $7ec7: $db
    ld [hl+], a                                   ; $7ec8: $22
    push af                                       ; $7ec9: $f5
    ld b, $84                                     ; $7eca: $06 $84
    ld a, [hl-]                                   ; $7ecc: $3a
    xor c                                         ; $7ecd: $a9
    ld a, e                                       ; $7ece: $7b
    ld c, a                                       ; $7ecf: $4f
    sub e                                         ; $7ed0: $93
    ld a, h                                       ; $7ed1: $7c
    xor [hl]                                      ; $7ed2: $ae
    sub e                                         ; $7ed3: $93
    jp hl                                         ; $7ed4: $e9


    cp $b5                                        ; $7ed5: $fe $b5
    ld e, $03                                     ; $7ed7: $1e $03
    ld a, [bc]                                    ; $7ed9: $0a
    nop                                           ; $7eda: $00
    adc [hl]                                      ; $7edb: $8e
    dec e                                         ; $7edc: $1d
    jp nc, Jump_000_2ccc                          ; $7edd: $d2 $cc $2c

    cp e                                          ; $7ee0: $bb
    inc h                                         ; $7ee1: $24
    cp [hl]                                       ; $7ee2: $be
    pop de                                        ; $7ee3: $d1
    db $fd                                        ; $7ee4: $fd
    ld b, d                                       ; $7ee5: $42
    db $eb                                        ; $7ee6: $eb
    rst $10                                       ; $7ee7: $d7
    and [hl]                                      ; $7ee8: $a6
    ld [hl], a                                    ; $7ee9: $77
    add h                                         ; $7eea: $84
    add hl, de                                    ; $7eeb: $19
    ld e, l                                       ; $7eec: $5d
    ld [c], a                                     ; $7eed: $e2
    inc e                                         ; $7eee: $1c
    add e                                         ; $7eef: $83
    ld l, l                                       ; $7ef0: $6d
    add hl, bc                                    ; $7ef1: $09
    db $ed                                        ; $7ef2: $ed
    ld d, l                                       ; $7ef3: $55
    cp e                                          ; $7ef4: $bb
    sub $24                                       ; $7ef5: $d6 $24
    inc l                                         ; $7ef7: $2c
    db $fd                                        ; $7ef8: $fd
    adc $57                                       ; $7ef9: $ce $57
    sbc d                                         ; $7efb: $9a
    push hl                                       ; $7efc: $e5
    ld c, e                                       ; $7efd: $4b
    sub a                                         ; $7efe: $97
    inc a                                         ; $7eff: $3c
    adc a                                         ; $7f00: $8f
    inc bc                                        ; $7f01: $03
    ld b, a                                       ; $7f02: $47
    xor l                                         ; $7f03: $ad
    xor $2c                                       ; $7f04: $ee $2c

jr_059_7f06:
    db $d3                                        ; $7f06: $d3
    db $fd                                        ; $7f07: $fd
    inc sp                                        ; $7f08: $33
    sub $f6                                       ; $7f09: $d6 $f6
    dec [hl]                                      ; $7f0b: $35
    ld [hl], c                                    ; $7f0c: $71
    sbc h                                         ; $7f0d: $9c
    ld h, c                                       ; $7f0e: $61
    or $49                                        ; $7f0f: $f6 $49
    db $dd                                        ; $7f11: $dd
    and e                                         ; $7f12: $a3
    ei                                            ; $7f13: $fb
    ld d, l                                       ; $7f14: $55
    ld hl, $bfcc                                  ; $7f15: $21 $cc $bf
    ld h, l                                       ; $7f18: $65
    dec de                                        ; $7f19: $1b
    rst $20                                       ; $7f1a: $e7
    sub b                                         ; $7f1b: $90
    db $fc                                        ; $7f1c: $fc
    ccf                                           ; $7f1d: $3f
    jr nc, jr_059_7eb6                            ; $7f1e: $30 $96

    and $9f                                       ; $7f20: $e6 $9f
    or e                                          ; $7f22: $b3
    ld a, e                                       ; $7f23: $7b
    ei                                            ; $7f24: $fb
    ei                                            ; $7f25: $fb
    rla                                           ; $7f26: $17
    nop                                           ; $7f27: $00
    ld a, h                                       ; $7f28: $7c
    rst $30                                       ; $7f29: $f7
    sbc l                                         ; $7f2a: $9d
    sub h                                         ; $7f2b: $94
    adc a                                         ; $7f2c: $8f
    ld a, [hl]                                    ; $7f2d: $7e
    ld [bc], a                                    ; $7f2e: $02
    ret z                                         ; $7f2f: $c8

    ld l, d                                       ; $7f30: $6a
    rst $38                                       ; $7f31: $ff
    sub d                                         ; $7f32: $92
    sub e                                         ; $7f33: $93
    ld c, [hl]                                    ; $7f34: $4e
    cp e                                          ; $7f35: $bb
    push hl                                       ; $7f36: $e5
    cp h                                          ; $7f37: $bc

Jump_059_7f38:
    jr c, jr_059_7f57                             ; $7f38: $38 $1d

    ld a, [hl-]                                   ; $7f3a: $3a
    dec b                                         ; $7f3b: $05
    nop                                           ; $7f3c: $00
    ld c, $fe                                     ; $7f3d: $0e $fe
    ld c, [hl]                                    ; $7f3f: $4e
    ld [$767e], a                                 ; $7f40: $ea $7e $76
    rst $00                                       ; $7f43: $c7
    ld a, c                                       ; $7f44: $79
    ret z                                         ; $7f45: $c8

    cp $25                                        ; $7f46: $fe $25
    daa                                           ; $7f48: $27
    sbc l                                         ; $7f49: $9d
    halt                                          ; $7f4a: $76
    bit 7, c                                      ; $7f4b: $cb $79
    ld [hl], c                                    ; $7f4d: $71
    ld a, [hl-]                                   ; $7f4e: $3a
    ld [hl], h                                    ; $7f4f: $74
    ld a, [bc]                                    ; $7f50: $0a
    nop                                           ; $7f51: $00
    sbc h                                         ; $7f52: $9c
    ld hl, $a3bc                                  ; $7f53: $21 $bc $a3
    ld e, [hl]                                    ; $7f56: $5e

jr_059_7f57:
    or c                                          ; $7f57: $b1
    jp nz, Jump_059_4673                          ; $7f58: $c2 $73 $46

    ld l, e                                       ; $7f5b: $6b
    db $d3                                        ; $7f5c: $d3
    cpl                                           ; $7f5d: $2f
    push hl                                       ; $7f5e: $e5
    dec de                                        ; $7f5f: $1b
    add a                                         ; $7f60: $87
    inc [hl]                                      ; $7f61: $34
    inc sp                                        ; $7f62: $33
    rst $18                                       ; $7f63: $df
    add sp, -$6e                                  ; $7f64: $e8 $92
    sub e                                         ; $7f66: $93
    ld c, [hl]                                    ; $7f67: $4e
    cp e                                          ; $7f68: $bb
    push hl                                       ; $7f69: $e5
    cp h                                          ; $7f6a: $bc
    jr c, jr_059_7f8a                             ; $7f6b: $38 $1d

    ld a, [hl-]                                   ; $7f6d: $3a
    dec b                                         ; $7f6e: $05
    nop                                           ; $7f6f: $00
    inc e                                         ; $7f70: $1c
    rst $30                                       ; $7f71: $f7
    or $58                                        ; $7f72: $f6 $58
    db $eb                                        ; $7f74: $eb
    cp a                                          ; $7f75: $bf
    xor [hl]                                      ; $7f76: $ae
    ld c, e                                       ; $7f77: $4b
    ld d, $ba                                     ; $7f78: $16 $ba
    ld a, a                                       ; $7f7a: $7f
    xor l                                         ; $7f7b: $ad
    rst $00                                       ; $7f7c: $c7
    ld l, d                                       ; $7f7d: $6a
    db $d3                                        ; $7f7e: $d3
    cpl                                           ; $7f7f: $2f
    ld sp, hl                                     ; $7f80: $f9
    rst $28                                       ; $7f81: $ef
    rlca                                          ; $7f82: $07
    db $db                                        ; $7f83: $db
    or e                                          ; $7f84: $b3
    ld a, e                                       ; $7f85: $7b
    rst $38                                       ; $7f86: $ff
    jp hl                                         ; $7f87: $e9


    cp a                                          ; $7f88: $bf
    db $e4                                        ; $7f89: $e4

jr_059_7f8a:
    and h                                         ; $7f8a: $a4
    db $d3                                        ; $7f8b: $d3
    ld l, [hl]                                    ; $7f8c: $6e
    add hl, sp                                    ; $7f8d: $39
    cpl                                           ; $7f8e: $2f
    ld c, [hl]                                    ; $7f8f: $4e
    add a                                         ; $7f90: $87
    ld c, [hl]                                    ; $7f91: $4e
    ld bc, $715e                                  ; $7f92: $01 $5e $71
    ld c, l                                       ; $7f95: $4d
    ld l, [hl]                                    ; $7f96: $6e
    adc c                                         ; $7f97: $89
    db $e3                                        ; $7f98: $e3
    db $ec                                        ; $7f99: $ec
    ld b, h                                       ; $7f9a: $44
    ld e, c                                       ; $7f9b: $59
    xor b                                         ; $7f9c: $a8
    sbc $ff                                       ; $7f9d: $de $ff
    ld [c], a                                     ; $7f9f: $e2
    jp z, Jump_000_26d2                           ; $7fa0: $ca $d2 $26

    add d                                         ; $7fa3: $82
    sub d                                         ; $7fa4: $92
    sub e                                         ; $7fa5: $93
    ld c, [hl]                                    ; $7fa6: $4e
    cp e                                          ; $7fa7: $bb
    push hl                                       ; $7fa8: $e5
    cp h                                          ; $7fa9: $bc
    jr c, jr_059_7fc9                             ; $7faa: $38 $1d

    ld a, [hl-]                                   ; $7fac: $3a
    dec b                                         ; $7fad: $05
    nop                                           ; $7fae: $00
    inc a                                         ; $7faf: $3c
    ld e, c                                       ; $7fb0: $59
    sbc d                                         ; $7fb1: $9a
    sub h                                         ; $7fb2: $94
    add l                                         ; $7fb3: $85
    ldh a, [$ac]                                  ; $7fb4: $f0 $ac
    ld a, [c]                                     ; $7fb6: $f2
    ld h, a                                       ; $7fb7: $67
    rst $30                                       ; $7fb8: $f7
    ld a, a                                       ; $7fb9: $7f
    ld l, c                                       ; $7fba: $69
    ld [c], a                                     ; $7fbb: $e2
    or d                                          ; $7fbc: $b2
    cpl                                           ; $7fbd: $2f
    ld [hl], $70                                  ; $7fbe: $36 $70
    cp $5f                                        ; $7fc0: $fe $5f
    ld [hl], d                                    ; $7fc2: $72
    jp nc, $b769                                  ; $7fc3: $d2 $69 $b7

    sbc h                                         ; $7fc6: $9c
    rla                                           ; $7fc7: $17
    and a                                         ; $7fc8: $a7

jr_059_7fc9:
    ld b, e                                       ; $7fc9: $43
    and a                                         ; $7fca: $a7
    nop                                           ; $7fcb: $00
    sbc h                                         ; $7fcc: $9c
    ld e, e                                       ; $7fcd: $5b
    inc h                                         ; $7fce: $24
    inc a                                         ; $7fcf: $3c
    pop de                                        ; $7fd0: $d1
    sbc d                                         ; $7fd1: $9a
    ld h, e                                       ; $7fd2: $63
    sbc h                                         ; $7fd3: $9c
    cp b                                          ; $7fd4: $b8
    rst $28                                       ; $7fd5: $ef
    rla                                           ; $7fd6: $17
    rst $08                                       ; $7fd7: $cf
    inc sp                                        ; $7fd8: $33
    sub [hl]                                      ; $7fd9: $96
    ret                                           ; $7fda: $c9


    ld hl, $0776                                  ; $7fdb: $21 $76 $07
    cp e                                          ; $7fde: $bb
    nop                                           ; $7fdf: $00
    ld c, $76                                     ; $7fe0: $0e $76
    ld c, e                                       ; $7fe2: $4b
    ld a, b                                       ; $7fe3: $78
    and d                                         ; $7fe4: $a2
    ld l, $00                                     ; $7fe5: $2e $00
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
