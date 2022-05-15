; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $040", ROMX[$4000], BANK[$40]

    ld b, b                                       ; $4000: $40
    nop                                           ; $4001: $00
    sbc c                                         ; $4002: $99
    inc h                                         ; $4003: $24
    nop                                           ; $4004: $00
    and a                                         ; $4005: $a7
    inc h                                         ; $4006: $24
    nop                                           ; $4007: $00
    or e                                          ; $4008: $b3
    inc h                                         ; $4009: $24
    nop                                           ; $400a: $00
    adc $24                                       ; $400b: $ce $24
    nop                                           ; $400d: $00
    sub $24                                       ; $400e: $d6 $24
    nop                                           ; $4010: $00
    call c, $0024                                 ; $4011: $dc $24 $00
    ld [c], a                                     ; $4014: $e2
    inc h                                         ; $4015: $24
    nop                                           ; $4016: $00
    and $24                                       ; $4017: $e6 $24
    nop                                           ; $4019: $00
    ld a, [c]                                     ; $401a: $f2
    inc h                                         ; $401b: $24
    nop                                           ; $401c: $00
    cp $24                                        ; $401d: $fe $24
    nop                                           ; $401f: $00
    rlca                                          ; $4020: $07
    dec h                                         ; $4021: $25
    nop                                           ; $4022: $00
    db $10                                        ; $4023: $10
    dec h                                         ; $4024: $25
    nop                                           ; $4025: $00
    add hl, de                                    ; $4026: $19
    dec h                                         ; $4027: $25
    nop                                           ; $4028: $00
    inc h                                         ; $4029: $24
    dec h                                         ; $402a: $25
    nop                                           ; $402b: $00
    cpl                                           ; $402c: $2f
    dec h                                         ; $402d: $25
    nop                                           ; $402e: $00
    ld a, [hl-]                                   ; $402f: $3a
    dec h                                         ; $4030: $25
    nop                                           ; $4031: $00
    ld b, [hl]                                    ; $4032: $46
    dec h                                         ; $4033: $25
    nop                                           ; $4034: $00
    ld d, d                                       ; $4035: $52
    dec h                                         ; $4036: $25
    nop                                           ; $4037: $00
    ld e, [hl]                                    ; $4038: $5e
    dec h                                         ; $4039: $25
    nop                                           ; $403a: $00
    ld h, a                                       ; $403b: $67
    dec h                                         ; $403c: $25
    nop                                           ; $403d: $00
    ld [hl], b                                    ; $403e: $70
    dec h                                         ; $403f: $25
    nop                                           ; $4040: $00
    ld a, c                                       ; $4041: $79
    dec h                                         ; $4042: $25
    nop                                           ; $4043: $00
    add [hl]                                      ; $4044: $86
    dec h                                         ; $4045: $25
    nop                                           ; $4046: $00
    sub d                                         ; $4047: $92
    dec h                                         ; $4048: $25
    nop                                           ; $4049: $00
    sbc l                                         ; $404a: $9d
    dec h                                         ; $404b: $25
    nop                                           ; $404c: $00
    xor c                                         ; $404d: $a9
    dec h                                         ; $404e: $25
    nop                                           ; $404f: $00
    or l                                          ; $4050: $b5
    dec h                                         ; $4051: $25
    nop                                           ; $4052: $00
    call $0025                                    ; $4053: $cd $25 $00
    di                                            ; $4056: $f3
    dec h                                         ; $4057: $25
    nop                                           ; $4058: $00
    rst $38                                       ; $4059: $ff
    dec h                                         ; $405a: $25
    nop                                           ; $405b: $00
    dec d                                         ; $405c: $15
    ld h, $00                                     ; $405d: $26 $00
    inc sp                                        ; $405f: $33
    ld h, $00                                     ; $4060: $26 $00
    ret z                                         ; $4062: $c8

    ld h, $00                                     ; $4063: $26 $00
    inc de                                        ; $4065: $13
    daa                                           ; $4066: $27
    nop                                           ; $4067: $00
    dec hl                                        ; $4068: $2b
    daa                                           ; $4069: $27
    nop                                           ; $406a: $00
    ld b, d                                       ; $406b: $42
    daa                                           ; $406c: $27
    nop                                           ; $406d: $00
    ld d, [hl]                                    ; $406e: $56
    daa                                           ; $406f: $27
    nop                                           ; $4070: $00
    ld l, d                                       ; $4071: $6a
    daa                                           ; $4072: $27
    nop                                           ; $4073: $00
    ld a, e                                       ; $4074: $7b
    daa                                           ; $4075: $27
    nop                                           ; $4076: $00
    or e                                          ; $4077: $b3
    daa                                           ; $4078: $27
    nop                                           ; $4079: $00
    call c, Call_000_0027                         ; $407a: $dc $27 $00
    ld bc, $0028                                  ; $407d: $01 $28 $00
    dec hl                                        ; $4080: $2b
    jr z, jr_040_4083                             ; $4081: $28 $00

jr_040_4083:
    ld c, a                                       ; $4083: $4f
    jr z, jr_040_4086                             ; $4084: $28 $00

jr_040_4086:
    ld e, c                                       ; $4086: $59
    jr z, jr_040_4089                             ; $4087: $28 $00

jr_040_4089:
    ld a, c                                       ; $4089: $79
    jr z, jr_040_408c                             ; $408a: $28 $00

jr_040_408c:
    sub a                                         ; $408c: $97
    jr z, jr_040_408f                             ; $408d: $28 $00

jr_040_408f:
    and a                                         ; $408f: $a7
    jr z, jr_040_4092                             ; $4090: $28 $00

jr_040_4092:
    db $dd                                        ; $4092: $dd
    jr z, jr_040_4095                             ; $4093: $28 $00

jr_040_4095:
    pop af                                        ; $4095: $f1
    jr z, jr_040_4098                             ; $4096: $28 $00

jr_040_4098:
    ld [bc], a                                    ; $4098: $02
    add hl, hl                                    ; $4099: $29
    nop                                           ; $409a: $00
    ld c, $29                                     ; $409b: $0e $29
    nop                                           ; $409d: $00
    inc e                                         ; $409e: $1c
    add hl, hl                                    ; $409f: $29
    nop                                           ; $40a0: $00
    inc sp                                        ; $40a1: $33
    add hl, hl                                    ; $40a2: $29
    nop                                           ; $40a3: $00
    ld e, c                                       ; $40a4: $59
    add hl, hl                                    ; $40a5: $29
    nop                                           ; $40a6: $00
    sbc h                                         ; $40a7: $9c
    add hl, hl                                    ; $40a8: $29
    nop                                           ; $40a9: $00
    jp Jump_000_0029                              ; $40aa: $c3 $29 $00


    jp hl                                         ; $40ad: $e9


    add hl, hl                                    ; $40ae: $29
    nop                                           ; $40af: $00
    rrca                                          ; $40b0: $0f
    ld a, [hl+]                                   ; $40b1: $2a
    nop                                           ; $40b2: $00
    ld sp, $002a                                  ; $40b3: $31 $2a $00
    ld e, l                                       ; $40b6: $5d
    ld a, [hl+]                                   ; $40b7: $2a
    nop                                           ; $40b8: $00
    ld a, [hl]                                    ; $40b9: $7e
    ld a, [hl+]                                   ; $40ba: $2a
    nop                                           ; $40bb: $00
    adc [hl]                                      ; $40bc: $8e
    ld a, [hl+]                                   ; $40bd: $2a
    nop                                           ; $40be: $00
    cp [hl]                                       ; $40bf: $be
    ld a, [hl+]                                   ; $40c0: $2a
    nop                                           ; $40c1: $00
    pop de                                        ; $40c2: $d1
    ld a, [hl+]                                   ; $40c3: $2a
    nop                                           ; $40c4: $00
    rla                                           ; $40c5: $17
    dec hl                                        ; $40c6: $2b
    nop                                           ; $40c7: $00
    scf                                           ; $40c8: $37
    dec hl                                        ; $40c9: $2b
    nop                                           ; $40ca: $00
    xor a                                         ; $40cb: $af
    dec hl                                        ; $40cc: $2b
    nop                                           ; $40cd: $00
    ret nz                                        ; $40ce: $c0

    dec hl                                        ; $40cf: $2b
    nop                                           ; $40d0: $00
    db $ed                                        ; $40d1: $ed
    dec hl                                        ; $40d2: $2b
    nop                                           ; $40d3: $00
    ld a, [$002b]                                 ; $40d4: $fa $2b $00
    ld [$002c], sp                                ; $40d7: $08 $2c $00
    ld e, $2c                                     ; $40da: $1e $2c
    nop                                           ; $40dc: $00
    ld d, b                                       ; $40dd: $50
    inc l                                         ; $40de: $2c
    nop                                           ; $40df: $00
    ld l, b                                       ; $40e0: $68
    inc l                                         ; $40e1: $2c
    nop                                           ; $40e2: $00
    ld l, h                                       ; $40e3: $6c
    inc l                                         ; $40e4: $2c
    nop                                           ; $40e5: $00
    ld [hl], c                                    ; $40e6: $71
    inc l                                         ; $40e7: $2c
    nop                                           ; $40e8: $00
    ld [hl], a                                    ; $40e9: $77
    inc l                                         ; $40ea: $2c
    nop                                           ; $40eb: $00
    xor l                                         ; $40ec: $ad
    inc l                                         ; $40ed: $2c
    nop                                           ; $40ee: $00
    ret c                                         ; $40ef: $d8

    inc l                                         ; $40f0: $2c
    nop                                           ; $40f1: $00
    ld a, [$002c]                                 ; $40f2: $fa $2c $00
    ld b, a                                       ; $40f5: $47
    dec l                                         ; $40f6: $2d
    nop                                           ; $40f7: $00
    ld [hl], b                                    ; $40f8: $70
    dec l                                         ; $40f9: $2d
    nop                                           ; $40fa: $00
    and l                                         ; $40fb: $a5
    dec l                                         ; $40fc: $2d
    nop                                           ; $40fd: $00
    db $d3                                        ; $40fe: $d3
    dec l                                         ; $40ff: $2d
    nop                                           ; $4100: $00
    ld hl, sp+$2d                                 ; $4101: $f8 $2d
    nop                                           ; $4103: $00
    ld b, d                                       ; $4104: $42
    ld l, $00                                     ; $4105: $2e $00
    ld c, l                                       ; $4107: $4d
    ld l, $00                                     ; $4108: $2e $00
    ld l, [hl]                                    ; $410a: $6e
    ld l, $00                                     ; $410b: $2e $00
    ld a, h                                       ; $410d: $7c
    ld l, $00                                     ; $410e: $2e $00
    sbc d                                         ; $4110: $9a
    ld l, $00                                     ; $4111: $2e $00
    xor l                                         ; $4113: $ad
    ld l, $00                                     ; $4114: $2e $00
    push af                                       ; $4116: $f5
    ld l, $00                                     ; $4117: $2e $00
    ld [hl], $2f                                  ; $4119: $36 $2f
    nop                                           ; $411b: $00
    ld e, [hl]                                    ; $411c: $5e
    cpl                                           ; $411d: $2f
    nop                                           ; $411e: $00
    add a                                         ; $411f: $87
    cpl                                           ; $4120: $2f
    nop                                           ; $4121: $00
    jp hl                                         ; $4122: $e9


    cpl                                           ; $4123: $2f
    nop                                           ; $4124: $00
    ld a, [$002f]                                 ; $4125: $fa $2f $00
    ld e, l                                       ; $4128: $5d
    jr nc, jr_040_412b                            ; $4129: $30 $00

jr_040_412b:
    ld [hl], d                                    ; $412b: $72
    jr nc, jr_040_412e                            ; $412c: $30 $00

jr_040_412e:
    sbc e                                         ; $412e: $9b
    jr nc, jr_040_4131                            ; $412f: $30 $00

jr_040_4131:
    cp c                                          ; $4131: $b9
    jr nc, jr_040_4134                            ; $4132: $30 $00

jr_040_4134:
    call nz, RST_30                               ; $4134: $c4 $30 $00
    cp $30                                        ; $4137: $fe $30
    nop                                           ; $4139: $00
    jr nc, jr_040_416d                            ; $413a: $30 $31

    nop                                           ; $413c: $00
    inc [hl]                                      ; $413d: $34
    ld sp, $6100                                  ; $413e: $31 $00 $61
    ld sp, $8c00                                  ; $4141: $31 $00 $8c
    ld sp, $9b00                                  ; $4144: $31 $00 $9b
    ld sp, $b200                                  ; $4147: $31 $00 $b2
    ld sp, $c800                                  ; $414a: $31 $00 $c8
    ld sp, $f300                                  ; $414d: $31 $00 $f3
    ld sp, $0500                                  ; $4150: $31 $00 $05
    ld [hl-], a                                   ; $4153: $32
    nop                                           ; $4154: $00
    ld h, h                                       ; $4155: $64
    ld [hl-], a                                   ; $4156: $32
    nop                                           ; $4157: $00
    add [hl]                                      ; $4158: $86
    ld [hl-], a                                   ; $4159: $32
    nop                                           ; $415a: $00
    sub c                                         ; $415b: $91
    ld [hl-], a                                   ; $415c: $32
    nop                                           ; $415d: $00
    cp b                                          ; $415e: $b8
    ld [hl-], a                                   ; $415f: $32
    nop                                           ; $4160: $00
    call nz, $0032                                ; $4161: $c4 $32 $00
    rrca                                          ; $4164: $0f
    inc sp                                        ; $4165: $33
    nop                                           ; $4166: $00
    scf                                           ; $4167: $37
    inc sp                                        ; $4168: $33
    nop                                           ; $4169: $00
    ld b, d                                       ; $416a: $42
    inc sp                                        ; $416b: $33
    nop                                           ; $416c: $00

jr_040_416d:
    ld h, h                                       ; $416d: $64
    inc sp                                        ; $416e: $33
    nop                                           ; $416f: $00
    ld a, b                                       ; $4170: $78
    inc sp                                        ; $4171: $33
    nop                                           ; $4172: $00
    sub l                                         ; $4173: $95
    inc sp                                        ; $4174: $33
    nop                                           ; $4175: $00
    and a                                         ; $4176: $a7
    inc sp                                        ; $4177: $33
    nop                                           ; $4178: $00
    rst $00                                       ; $4179: $c7
    inc sp                                        ; $417a: $33
    nop                                           ; $417b: $00
    pop de                                        ; $417c: $d1
    inc sp                                        ; $417d: $33
    nop                                           ; $417e: $00
    rst $20                                       ; $417f: $e7
    inc sp                                        ; $4180: $33
    nop                                           ; $4181: $00
    db $f4                                        ; $4182: $f4
    inc sp                                        ; $4183: $33
    nop                                           ; $4184: $00
    nop                                           ; $4185: $00
    inc [hl]                                      ; $4186: $34
    nop                                           ; $4187: $00
    inc c                                         ; $4188: $0c
    inc [hl]                                      ; $4189: $34
    nop                                           ; $418a: $00
    ld d, $34                                     ; $418b: $16 $34
    nop                                           ; $418d: $00
    dec h                                         ; $418e: $25
    inc [hl]                                      ; $418f: $34
    nop                                           ; $4190: $00
    scf                                           ; $4191: $37
    inc [hl]                                      ; $4192: $34
    nop                                           ; $4193: $00
    ld c, c                                       ; $4194: $49
    inc [hl]                                      ; $4195: $34
    nop                                           ; $4196: $00
    ld d, b                                       ; $4197: $50
    inc [hl]                                      ; $4198: $34
    nop                                           ; $4199: $00
    ld e, h                                       ; $419a: $5c
    inc [hl]                                      ; $419b: $34
    nop                                           ; $419c: $00
    add c                                         ; $419d: $81
    inc [hl]                                      ; $419e: $34
    nop                                           ; $419f: $00
    add $34                                       ; $41a0: $c6 $34
    nop                                           ; $41a2: $00
    pop af                                        ; $41a3: $f1
    inc [hl]                                      ; $41a4: $34
    nop                                           ; $41a5: $00

Jump_040_41a6:
    cp $34                                        ; $41a6: $fe $34
    nop                                           ; $41a8: $00
    dec d                                         ; $41a9: $15
    dec [hl]                                      ; $41aa: $35
    nop                                           ; $41ab: $00
    inc hl                                        ; $41ac: $23
    dec [hl]                                      ; $41ad: $35
    nop                                           ; $41ae: $00
    ld c, b                                       ; $41af: $48
    dec [hl]                                      ; $41b0: $35
    nop                                           ; $41b1: $00
    ld l, [hl]                                    ; $41b2: $6e
    dec [hl]                                      ; $41b3: $35
    nop                                           ; $41b4: $00
    add c                                         ; $41b5: $81
    dec [hl]                                      ; $41b6: $35
    nop                                           ; $41b7: $00
    xor a                                         ; $41b8: $af
    dec [hl]                                      ; $41b9: $35
    nop                                           ; $41ba: $00
    or l                                          ; $41bb: $b5
    dec [hl]                                      ; $41bc: $35
    nop                                           ; $41bd: $00
    jp z, Jump_000_0035                           ; $41be: $ca $35 $00

    rlca                                          ; $41c1: $07
    ld [hl], $00                                  ; $41c2: $36 $00
    ld [hl+], a                                   ; $41c4: $22
    ld [hl], $00                                  ; $41c5: $36 $00
    ld c, c                                       ; $41c7: $49
    ld [hl], $00                                  ; $41c8: $36 $00
    ld e, a                                       ; $41ca: $5f
    ld [hl], $00                                  ; $41cb: $36 $00
    ld a, a                                       ; $41cd: $7f
    ld [hl], $00                                  ; $41ce: $36 $00
    sub d                                         ; $41d0: $92
    ld [hl], $00                                  ; $41d1: $36 $00
    xor d                                         ; $41d3: $aa
    ld [hl], $00                                  ; $41d4: $36 $00
    or b                                          ; $41d6: $b0
    ld [hl], $00                                  ; $41d7: $36 $00
    ret z                                         ; $41d9: $c8

    ld [hl], $00                                  ; $41da: $36 $00
    push hl                                       ; $41dc: $e5
    ld [hl], $00                                  ; $41dd: $36 $00
    xor $36                                       ; $41df: $ee $36
    nop                                           ; $41e1: $00
    dec c                                         ; $41e2: $0d
    scf                                           ; $41e3: $37
    nop                                           ; $41e4: $00
    jr jr_040_421e                                ; $41e5: $18 $37

    nop                                           ; $41e7: $00
    dec sp                                        ; $41e8: $3b
    scf                                           ; $41e9: $37
    nop                                           ; $41ea: $00
    ld l, a                                       ; $41eb: $6f
    scf                                           ; $41ec: $37
    nop                                           ; $41ed: $00
    sbc a                                         ; $41ee: $9f
    scf                                           ; $41ef: $37
    nop                                           ; $41f0: $00
    push bc                                       ; $41f1: $c5
    scf                                           ; $41f2: $37
    nop                                           ; $41f3: $00
    pop af                                        ; $41f4: $f1
    scf                                           ; $41f5: $37
    nop                                           ; $41f6: $00
    rrca                                          ; $41f7: $0f
    jr c, jr_040_41fa                             ; $41f8: $38 $00

jr_040_41fa:
    ld a, [hl+]                                   ; $41fa: $2a
    jr c, jr_040_41fd                             ; $41fb: $38 $00

jr_040_41fd:
    ld b, e                                       ; $41fd: $43
    jr c, jr_040_4200                             ; $41fe: $38 $00

jr_040_4200:
    ld e, l                                       ; $4200: $5d
    jr c, jr_040_4203                             ; $4201: $38 $00

jr_040_4203:
    ld l, a                                       ; $4203: $6f
    jr c, jr_040_4206                             ; $4204: $38 $00

jr_040_4206:
    adc e                                         ; $4206: $8b
    jr c, jr_040_4209                             ; $4207: $38 $00

jr_040_4209:
    sbc e                                         ; $4209: $9b
    jr c, jr_040_420c                             ; $420a: $38 $00

jr_040_420c:
    cp h                                          ; $420c: $bc
    jr c, jr_040_420f                             ; $420d: $38 $00

jr_040_420f:
    db $db                                        ; $420f: $db
    jr c, jr_040_4212                             ; $4210: $38 $00

jr_040_4212:
    db $fd                                        ; $4212: $fd
    jr c, jr_040_4215                             ; $4213: $38 $00

jr_040_4215:
    inc d                                         ; $4215: $14
    add hl, sp                                    ; $4216: $39
    nop                                           ; $4217: $00
    ld h, $39                                     ; $4218: $26 $39
    nop                                           ; $421a: $00
    jr c, jr_040_4256                             ; $421b: $38 $39

    nop                                           ; $421d: $00

jr_040_421e:
    ld b, a                                       ; $421e: $47
    add hl, sp                                    ; $421f: $39
    nop                                           ; $4220: $00
    ld e, a                                       ; $4221: $5f
    add hl, sp                                    ; $4222: $39
    nop                                           ; $4223: $00
    sbc e                                         ; $4224: $9b
    add hl, sp                                    ; $4225: $39
    nop                                           ; $4226: $00
    xor [hl]                                      ; $4227: $ae
    add hl, sp                                    ; $4228: $39
    nop                                           ; $4229: $00
    adc $39                                       ; $422a: $ce $39
    nop                                           ; $422c: $00
    db $db                                        ; $422d: $db
    add hl, sp                                    ; $422e: $39
    nop                                           ; $422f: $00
    rst $28                                       ; $4230: $ef
    add hl, sp                                    ; $4231: $39
    nop                                           ; $4232: $00
    ld [$003a], sp                                ; $4233: $08 $3a $00
    jr z, jr_040_4272                             ; $4236: $28 $3a

    nop                                           ; $4238: $00
    dec a                                         ; $4239: $3d
    ld a, [hl-]                                   ; $423a: $3a
    nop                                           ; $423b: $00
    ld e, d                                       ; $423c: $5a
    ld a, [hl-]                                   ; $423d: $3a
    nop                                           ; $423e: $00
    ld h, a                                       ; $423f: $67
    ld a, [hl-]                                   ; $4240: $3a
    nop                                           ; $4241: $00
    sbc e                                         ; $4242: $9b
    ld a, [hl-]                                   ; $4243: $3a
    nop                                           ; $4244: $00
    or b                                          ; $4245: $b0
    ld a, [hl-]                                   ; $4246: $3a
    nop                                           ; $4247: $00
    ret z                                         ; $4248: $c8

    ld a, [hl-]                                   ; $4249: $3a
    nop                                           ; $424a: $00
    ld b, $3b                                     ; $424b: $06 $3b
    nop                                           ; $424d: $00
    rra                                           ; $424e: $1f
    dec sp                                        ; $424f: $3b
    nop                                           ; $4250: $00
    ld b, l                                       ; $4251: $45
    dec sp                                        ; $4252: $3b
    nop                                           ; $4253: $00
    ld e, b                                       ; $4254: $58
    dec sp                                        ; $4255: $3b

jr_040_4256:
    nop                                           ; $4256: $00
    ld h, d                                       ; $4257: $62
    dec sp                                        ; $4258: $3b
    nop                                           ; $4259: $00
    ld a, [hl]                                    ; $425a: $7e
    dec sp                                        ; $425b: $3b
    nop                                           ; $425c: $00
    or e                                          ; $425d: $b3
    dec sp                                        ; $425e: $3b
    nop                                           ; $425f: $00
    cp h                                          ; $4260: $bc
    dec sp                                        ; $4261: $3b
    nop                                           ; $4262: $00
    di                                            ; $4263: $f3
    dec sp                                        ; $4264: $3b
    nop                                           ; $4265: $00
    ld [$003c], sp                                ; $4266: $08 $3c $00
    ld c, h                                       ; $4269: $4c
    inc a                                         ; $426a: $3c
    nop                                           ; $426b: $00
    ld l, l                                       ; $426c: $6d
    inc a                                         ; $426d: $3c
    nop                                           ; $426e: $00
    ld [hl], c                                    ; $426f: $71
    inc a                                         ; $4270: $3c
    nop                                           ; $4271: $00

jr_040_4272:
    sub [hl]                                      ; $4272: $96
    inc a                                         ; $4273: $3c
    nop                                           ; $4274: $00
    or l                                          ; $4275: $b5
    inc a                                         ; $4276: $3c
    nop                                           ; $4277: $00
    cp c                                          ; $4278: $b9
    inc a                                         ; $4279: $3c
    nop                                           ; $427a: $00
    jp nc, Jump_000_003c                          ; $427b: $d2 $3c $00

    db $db                                        ; $427e: $db
    inc a                                         ; $427f: $3c
    nop                                           ; $4280: $00
    ld a, [c]                                     ; $4281: $f2
    inc a                                         ; $4282: $3c
    nop                                           ; $4283: $00
    ei                                            ; $4284: $fb
    inc a                                         ; $4285: $3c
    nop                                           ; $4286: $00
    dec b                                         ; $4287: $05
    dec a                                         ; $4288: $3d
    nop                                           ; $4289: $00
    sbc l                                         ; $428a: $9d
    dec a                                         ; $428b: $3d
    nop                                           ; $428c: $00
    call $003d                                    ; $428d: $cd $3d $00
    db $fc                                        ; $4290: $fc
    dec a                                         ; $4291: $3d
    nop                                           ; $4292: $00
    dec bc                                        ; $4293: $0b
    ld a, $00                                     ; $4294: $3e $00
    inc l                                         ; $4296: $2c
    ld a, $00                                     ; $4297: $3e $00
    ld e, d                                       ; $4299: $5a
    ld a, $00                                     ; $429a: $3e $00
    ld a, h                                       ; $429c: $7c
    ld a, $00                                     ; $429d: $3e $00
    ldh a, [$3e]                                  ; $429f: $f0 $3e
    nop                                           ; $42a1: $00
    dec l                                         ; $42a2: $2d
    ccf                                           ; $42a3: $3f
    nop                                           ; $42a4: $00
    ld h, b                                       ; $42a5: $60
    ccf                                           ; $42a6: $3f
    nop                                           ; $42a7: $00
    add h                                         ; $42a8: $84
    ccf                                           ; $42a9: $3f
    nop                                           ; $42aa: $00
    call nz, $013f                                ; $42ab: $c4 $3f $01
    ld bc, $0100                                  ; $42ae: $01 $00 $01
    ld e, [hl]                                    ; $42b1: $5e
    nop                                           ; $42b2: $00
    ld bc, $0073                                  ; $42b3: $01 $73 $00
    ld bc, $008d                                  ; $42b6: $01 $8d $00
    ld bc, $00a8                                  ; $42b9: $01 $a8 $00
    ld bc, $00cd                                  ; $42bc: $01 $cd $00
    ld bc, $00eb                                  ; $42bf: $01 $eb $00
    ld bc, $0110                                  ; $42c2: $01 $10 $01
    ld bc, $0129                                  ; $42c5: $01 $29 $01
    ld bc, $012d                                  ; $42c8: $01 $2d $01
    ld bc, $014a                  ; $42cb: $01 $4a $01
    ld bc, $014f                                  ; $42ce: $01 $4f $01
    ld bc, $0154                                  ; $42d1: $01 $54 $01
    ld bc, $0199                                  ; $42d4: $01 $99 $01
    ld bc, $01b2                                  ; $42d7: $01 $b2 $01
    ld bc, $01dd                                  ; $42da: $01 $dd $01
    ld bc, $01ed                                  ; $42dd: $01 $ed $01
    ld bc, $0226                                  ; $42e0: $01 $26 $02
    ld bc, $022c                                  ; $42e3: $01 $2c $02
    ld bc, $0249                                  ; $42e6: $01 $49 $02
    ld bc, $0259                                  ; $42e9: $01 $59 $02
    ld bc, $0285                                  ; $42ec: $01 $85 $02
    ld bc, $02c3                                  ; $42ef: $01 $c3 $02
    ld bc, $02dc                                  ; $42f2: $01 $dc $02
    ld bc, $02e9                                  ; $42f5: $01 $e9 $02
    ld bc, $0300                                  ; $42f8: $01 $00 $03
    ld bc, $0317                                  ; $42fb: $01 $17 $03

Jump_040_42fe:
    ld bc, $032f                                  ; $42fe: $01 $2f $03
    ld bc, $0347                                  ; $4301: $01 $47 $03
    ld bc, $0379                                  ; $4304: $01 $79 $03
    ld bc, $0386                                  ; $4307: $01 $86 $03
    ld bc, $03fe                                  ; $430a: $01 $fe $03
    ld bc, $040a                                  ; $430d: $01 $0a $04
    ld bc, $0423                                  ; $4310: $01 $23 $04
    ld bc, $042c                                  ; $4313: $01 $2c $04
    ld bc, $044d                                  ; $4316: $01 $4d $04
    ld bc, $045c                                  ; $4319: $01 $5c $04
    ld bc, $0489                                  ; $431c: $01 $89 $04
    ld bc, $049f                                  ; $431f: $01 $9f $04
    ld bc, $04b5                                  ; $4322: $01 $b5 $04
    ld bc, $0520                                  ; $4325: $01 $20 $05
    ld bc, $0537                                  ; $4328: $01 $37 $05
    ld bc, $054e                                  ; $432b: $01 $4e $05
    ld bc, $0572                                  ; $432e: $01 $72 $05
    ld bc, $0585                                  ; $4331: $01 $85 $05
    ld bc, $05b7                                  ; $4334: $01 $b7 $05
    ld bc, $05cb                                  ; $4337: $01 $cb $05
    ld bc, $05e9                                  ; $433a: $01 $e9 $05
    ld bc, $0605                                  ; $433d: $01 $05 $06
    ld bc, $0627                                  ; $4340: $01 $27 $06
    ld bc, $0643                                  ; $4343: $01 $43 $06
    ld bc, $0663                                  ; $4346: $01 $63 $06
    ld bc, $071b                                  ; $4349: $01 $1b $07
    ld bc, $0732                                  ; $434c: $01 $32 $07
    ld bc, $078b                                  ; $434f: $01 $8b $07
    ld bc, $079a                                  ; $4352: $01 $9a $07
    ld bc, $07b2                                  ; $4355: $01 $b2 $07
    ld bc, $07b9                                  ; $4358: $01 $b9 $07
    ld bc, $07f9                                  ; $435b: $01 $f9 $07
    ld bc, $0850                                  ; $435e: $01 $50 $08
    ld bc, $086c                                  ; $4361: $01 $6c $08
    ld bc, $0880                                  ; $4364: $01 $80 $08
    ld bc, $0895                                  ; $4367: $01 $95 $08
    ld bc, $08ab                                  ; $436a: $01 $ab $08
    ld bc, $08be                                  ; $436d: $01 $be $08
    ld bc, $08d2                                  ; $4370: $01 $d2 $08
    ld bc, $08e4                                  ; $4373: $01 $e4 $08
    ld bc, $08f8                                  ; $4376: $01 $f8 $08
    ld bc, $0905                                  ; $4379: $01 $05 $09
    ld bc, $090e                                  ; $437c: $01 $0e $09
    ld bc, $0919                                  ; $437f: $01 $19 $09
    ld bc, $092f                                  ; $4382: $01 $2f $09
    ld bc, $0956                                  ; $4385: $01 $56 $09
    ld bc, $0980                                  ; $4388: $01 $80 $09
    ld bc, $09aa                                  ; $438b: $01 $aa $09
    ld bc, $09ba                                  ; $438e: $01 $ba $09
    ld bc, $09dc                                  ; $4391: $01 $dc $09
    ld bc, $0a08                                  ; $4394: $01 $08 $0a
    ld bc, $0a2a                                  ; $4397: $01 $2a $0a
    ld bc, $0a3f                                  ; $439a: $01 $3f $0a
    ld bc, $0a51                                  ; $439d: $01 $51 $0a
    ld bc, $0a64                                  ; $43a0: $01 $64 $0a
    ld bc, $0a76                                  ; $43a3: $01 $76 $0a
    ld bc, $0a85                                  ; $43a6: $01 $85 $0a
    ld bc, $0a9e                                  ; $43a9: $01 $9e $0a
    ld bc, $0aac                                  ; $43ac: $01 $ac $0a
    ld bc, $0abb                                  ; $43af: $01 $bb $0a
    ld bc, $0acb                                  ; $43b2: $01 $cb $0a
    ld bc, $0af0                                  ; $43b5: $01 $f0 $0a
    ld bc, $0b25                                  ; $43b8: $01 $25 $0b
    ld bc, $0b3c                                  ; $43bb: $01 $3c $0b
    ld bc, $0b3f                                  ; $43be: $01 $3f $0b
    ld bc, $0b64                                  ; $43c1: $01 $64 $0b
    ld bc, $0b7a                                  ; $43c4: $01 $7a $0b
    ld bc, $0b96                                  ; $43c7: $01 $96 $0b
    ld bc, $0ba3                                  ; $43ca: $01 $a3 $0b
    ld bc, $0bba                                  ; $43cd: $01 $ba $0b
    ld bc, $0be4                                  ; $43d0: $01 $e4 $0b
    ld bc, $0c64                                  ; $43d3: $01 $64 $0c
    ld bc, $0c79                                  ; $43d6: $01 $79 $0c
    ld bc, $0c85                                  ; $43d9: $01 $85 $0c
    ld bc, $0c95                                  ; $43dc: $01 $95 $0c
    ld bc, $0caa                                  ; $43df: $01 $aa $0c
    ld bc, $0ce8                                  ; $43e2: $01 $e8 $0c
    ld bc, $0d0c                                  ; $43e5: $01 $0c $0d
    ld bc, $0d2b                                  ; $43e8: $01 $2b $0d
    ld bc, $0d53                                  ; $43eb: $01 $53 $0d
    ld bc, $0d94                                  ; $43ee: $01 $94 $0d
    ld bc, $0de6                                  ; $43f1: $01 $e6 $0d
    ld bc, $0e13                                  ; $43f4: $01 $13 $0e
    ld bc, $0e57                                  ; $43f7: $01 $57 $0e
    ld bc, $0e86                                  ; $43fa: $01 $86 $0e
    ld bc, $0ec7                                  ; $43fd: $01 $c7 $0e
    ld bc, $0f08                                  ; $4400: $01 $08 $0f
    ld bc, $0f46                                  ; $4403: $01 $46 $0f
    ld bc, $0f86                                  ; $4406: $01 $86 $0f
    ld bc, $0fd9                                  ; $4409: $01 $d9 $0f
    ld bc, $0ffb                                  ; $440c: $01 $fb $0f
    ld bc, $1036                                  ; $440f: $01 $36 $10
    ld bc, $106a                                  ; $4412: $01 $6a $10
    ld bc, $10b0                                  ; $4415: $01 $b0 $10
    ld bc, $10e6                                  ; $4418: $01 $e6 $10
    ld bc, $1135                                  ; $441b: $01 $35 $11
    ld bc, $1180                                  ; $441e: $01 $80 $11
    ld bc, $11b6                                  ; $4421: $01 $b6 $11
    ld bc, $1202                                  ; $4424: $01 $02 $12
    ld bc, $1238                                  ; $4427: $01 $38 $12
    ld bc, $1263                                  ; $442a: $01 $63 $12
    ld bc, $129e                                  ; $442d: $01 $9e $12
    ld bc, $12d4                                  ; $4430: $01 $d4 $12
    ld bc, $1303                                  ; $4433: $01 $03 $13
    ld bc, $1339                                  ; $4436: $01 $39 $13
    ld bc, $1380                                  ; $4439: $01 $80 $13
    ld bc, $13da                                  ; $443c: $01 $da $13
    ld bc, $141b                                  ; $443f: $01 $1b $14
    ld bc, $146d                                  ; $4442: $01 $6d $14
    ld bc, $14a1                                  ; $4445: $01 $a1 $14
    ld bc, $14d9                                  ; $4448: $01 $d9 $14
    ld bc, $150c                                  ; $444b: $01 $0c $15
    ld bc, $154f                                  ; $444e: $01 $4f $15
    ld bc, $15a2                                  ; $4451: $01 $a2 $15
    ld bc, $15fc                                  ; $4454: $01 $fc $15
    ld bc, $162e                                  ; $4457: $01 $2e $16
    ld bc, $1661                                  ; $445a: $01 $61 $16
    ld bc, $16a4                                  ; $445d: $01 $a4 $16
    ld bc, $16d8                                  ; $4460: $01 $d8 $16
    ld bc, $1704                                  ; $4463: $01 $04 $17
    ld bc, $1737                                  ; $4466: $01 $37 $17
    ld bc, $1772                                  ; $4469: $01 $72 $17
    ld bc, $1780                                  ; $446c: $01 $80 $17
    ld bc, $179a                                  ; $446f: $01 $9a $17
    ld bc, $17ac                                  ; $4472: $01 $ac $17
    ld bc, $17c8                                  ; $4475: $01 $c8 $17
    ld bc, $17e6                                  ; $4478: $01 $e6 $17
    ld bc, $17ee                                  ; $447b: $01 $ee $17
    ld bc, $17fd                                  ; $447e: $01 $fd $17
    ld bc, $1802                                  ; $4481: $01 $02 $18
    ld bc, $1830                                  ; $4484: $01 $30 $18
    ld bc, $1850                                  ; $4487: $01 $50 $18
    ld bc, $186b                                  ; $448a: $01 $6b $18
    ld bc, $1892                                  ; $448d: $01 $92 $18
    ld bc, $18a6                                  ; $4490: $01 $a6 $18
    ld bc, $18b2                                  ; $4493: $01 $b2 $18
    ld bc, $18ff                                  ; $4496: $01 $ff $18
    ld bc, $1920                                  ; $4499: $01 $20 $19
    ld bc, $1948                                  ; $449c: $01 $48 $19
    ld bc, $1958                                  ; $449f: $01 $58 $19
    ld bc, $1976                                  ; $44a2: $01 $76 $19
    ld bc, $198b                                  ; $44a5: $01 $8b $19
    ld bc, $199a                                  ; $44a8: $01 $9a $19
    ld bc, $19a4                                  ; $44ab: $01 $a4 $19
    ld bc, $19bf                                  ; $44ae: $01 $bf $19
    ld bc, $19d2                                  ; $44b1: $01 $d2 $19
    ld bc, $19ef                                  ; $44b4: $01 $ef $19
    ld bc, $19fc                                  ; $44b7: $01 $fc $19
    ld bc, $1a12                                  ; $44ba: $01 $12 $1a
    ld bc, $1a29                                  ; $44bd: $01 $29 $1a
    ld bc, $1a4f                                  ; $44c0: $01 $4f $1a
    ld bc, $1a6c                                  ; $44c3: $01 $6c $1a
    ld bc, $1a81                                  ; $44c6: $01 $81 $1a
    ld bc, $1a9c                                  ; $44c9: $01 $9c $1a
    ld bc, $1aba                                  ; $44cc: $01 $ba $1a
    ld bc, $1ae6                                  ; $44cf: $01 $e6 $1a
    ld bc, $1aed                                  ; $44d2: $01 $ed $1a
    ld bc, $1b09                                  ; $44d5: $01 $09 $1b
    ld bc, $1b16                                  ; $44d8: $01 $16 $1b
    ld bc, $1b53                                  ; $44db: $01 $53 $1b
    ld bc, $1b83                                  ; $44de: $01 $83 $1b
    ld bc, $1b92                                  ; $44e1: $01 $92 $1b
    ld bc, $1bac                                  ; $44e4: $01 $ac $1b
    ld bc, $1bb9                                  ; $44e7: $01 $b9 $1b
    ld bc, $1bf4                                  ; $44ea: $01 $f4 $1b
    ld bc, $1c01                                  ; $44ed: $01 $01 $1c
    ld bc, $1c1f                                  ; $44f0: $01 $1f $1c
    ld bc, $1c37                                  ; $44f3: $01 $37 $1c
    ld bc, $1c48                                  ; $44f6: $01 $48 $1c
    ld bc, $1c9d                                  ; $44f9: $01 $9d $1c
    ld bc, $1cae                                  ; $44fc: $01 $ae $1c
    ld bc, $1cc0                                  ; $44ff: $01 $c0 $1c
    ld bc, $1cca                                  ; $4502: $01 $ca $1c
    ld bc, $1cd2                                  ; $4505: $01 $d2 $1c
    ld bc, $1ced                                  ; $4508: $01 $ed $1c
    ld bc, $1cf6                                  ; $450b: $01 $f6 $1c
    ld bc, $1cfa                                  ; $450e: $01 $fa $1c
    ld bc, $1d05                                  ; $4511: $01 $05 $1d
    ld bc, $1d1e                                  ; $4514: $01 $1e $1d
    ld bc, $1d22                                  ; $4517: $01 $22 $1d
    ld bc, $1d3f                                  ; $451a: $01 $3f $1d
    ld bc, $1d63                                  ; $451d: $01 $63 $1d
    ld bc, $1d6e                                  ; $4520: $01 $6e $1d
    ld bc, $1d91                                  ; $4523: $01 $91 $1d
    ld bc, $1da7                                  ; $4526: $01 $a7 $1d
    ld bc, $1dd9                                  ; $4529: $01 $d9 $1d
    ld bc, $1df4                                  ; $452c: $01 $f4 $1d
    ld bc, $1e27                                  ; $452f: $01 $27 $1e
    ld bc, $1e64                                  ; $4532: $01 $64 $1e
    ld bc, $1e93                                  ; $4535: $01 $93 $1e
    ld bc, $1edc                                  ; $4538: $01 $dc $1e
    ld bc, $1f10                                  ; $453b: $01 $10 $1f
    ld bc, $1f39                                  ; $453e: $01 $39 $1f
    ld bc, $1fa1                                  ; $4541: $01 $a1 $1f
    ld bc, $1fca                                  ; $4544: $01 $ca $1f
    ld bc, $201b                                  ; $4547: $01 $1b $20
    ld bc, $2030                                  ; $454a: $01 $30 $20
    ld bc, $2063                                  ; $454d: $01 $63 $20
    ld bc, $214a                                  ; $4550: $01 $4a $21
    ld bc, $2170                                  ; $4553: $01 $70 $21
    ld bc, $2188                                  ; $4556: $01 $88 $21
    ld bc, $21ab                                  ; $4559: $01 $ab $21
    ld bc, $21d0                                  ; $455c: $01 $d0 $21
    ld bc, $21e3                                  ; $455f: $01 $e3 $21
    ld bc, $21f0                                  ; $4562: $01 $f0 $21
    ld bc, $2221                                  ; $4565: $01 $21 $22
    ld bc, $2227                                  ; $4568: $01 $27 $22
    ld bc, $223a                                  ; $456b: $01 $3a $22
    ld bc, $2283                                  ; $456e: $01 $83 $22
    ld bc, $22a9                                  ; $4571: $01 $a9 $22
    ld bc, $22d1                                  ; $4574: $01 $d1 $22
    ld bc, $22e2                                  ; $4577: $01 $e2 $22
    ld bc, $2304                                  ; $457a: $01 $04 $23
    ld bc, $232d                                  ; $457d: $01 $2d $23
    ld bc, $2343                                  ; $4580: $01 $43 $23
    ld bc, $2370                                  ; $4583: $01 $70 $23
    ld bc, $2385                                  ; $4586: $01 $85 $23
    ld bc, $2398                                  ; $4589: $01 $98 $23
    ld bc, $23ab                                  ; $458c: $01 $ab $23
    ld bc, $23d3                                  ; $458f: $01 $d3 $23
    ld bc, $23e1                                  ; $4592: $01 $e1 $23
    ld bc, $2410                                  ; $4595: $01 $10 $24
    ld bc, $2436                                  ; $4598: $01 $36 $24
    ld bc, $2442                                  ; $459b: $01 $42 $24
    ld bc, $2475                                  ; $459e: $01 $75 $24
    ld bc, $2492                                  ; $45a1: $01 $92 $24
    ld bc, $249d                                  ; $45a4: $01 $9d $24
    ld bc, $24e4                                  ; $45a7: $01 $e4 $24
    ld bc, $24e9                                  ; $45aa: $01 $e9 $24
    ld bc, $2598                                  ; $45ad: $01 $98 $25
    ld bc, $25a8                                  ; $45b0: $01 $a8 $25
    ld bc, $25b5                                  ; $45b3: $01 $b5 $25
    ld bc, $25d9                                  ; $45b6: $01 $d9 $25
    ld bc, $2607                                  ; $45b9: $01 $07 $26
    ld bc, $263c                                  ; $45bc: $01 $3c $26
    ld bc, $267b                                  ; $45bf: $01 $7b $26
    ld bc, $26b3                                  ; $45c2: $01 $b3 $26
    ld bc, $26d9                                  ; $45c5: $01 $d9 $26
    ld bc, $2725                                  ; $45c8: $01 $25 $27
    ld bc, $2791                                  ; $45cb: $01 $91 $27
    ld bc, $27c6                                  ; $45ce: $01 $c6 $27
    ld bc, $27fd                                  ; $45d1: $01 $fd $27
    ld bc, $2817                                  ; $45d4: $01 $17 $28
    ld bc, $2841                                  ; $45d7: $01 $41 $28
    ld bc, $2853                                  ; $45da: $01 $53 $28
    ld bc, $2880                                  ; $45dd: $01 $80 $28
    ld bc, $2896                                  ; $45e0: $01 $96 $28
    ld bc, $28ba                                  ; $45e3: $01 $ba $28
    ld bc, $28eb                                  ; $45e6: $01 $eb $28
    ld bc, $291d                                  ; $45e9: $01 $1d $29
    ld bc, $293b                                  ; $45ec: $01 $3b $29
    ld bc, $2998                                  ; $45ef: $01 $98 $29
    ld bc, $29ca                                  ; $45f2: $01 $ca $29
    ld bc, $2a41                                  ; $45f5: $01 $41 $2a
    ld bc, $2a78                                  ; $45f8: $01 $78 $2a
    ld bc, $2ab6                                  ; $45fb: $01 $b6 $2a
    ld bc, $2aef                                  ; $45fe: $01 $ef $2a
    ld bc, $2b2e                                  ; $4601: $01 $2e $2b
    ld bc, $2b52                                  ; $4604: $01 $52 $2b
    ld bc, $2b6f                                  ; $4607: $01 $6f $2b
    ld bc, $2b8e                                  ; $460a: $01 $8e $2b
    ld bc, $2bbf                                  ; $460d: $01 $bf $2b
    ld bc, $2bd0                                  ; $4610: $01 $d0 $2b
    ld bc, $2bee                                  ; $4613: $01 $ee $2b
    ld bc, $2c04                                  ; $4616: $01 $04 $2c
    ld bc, $2c45                                  ; $4619: $01 $45 $2c
    ld bc, $2c85                                  ; $461c: $01 $85 $2c
    ld bc, $2c9e                                  ; $461f: $01 $9e $2c
    ld bc, $2cc1                                  ; $4622: $01 $c1 $2c
    ld bc, $2cfa                                  ; $4625: $01 $fa $2c
    ld bc, $2d25                                  ; $4628: $01 $25 $2d
    ld bc, $2d73                                  ; $462b: $01 $73 $2d
    ld bc, $2d94                                  ; $462e: $01 $94 $2d
    ld bc, $2dd0                                  ; $4631: $01 $d0 $2d
    ld bc, $2df9                                  ; $4634: $01 $f9 $2d
    ld bc, $2e21                                  ; $4637: $01 $21 $2e
    ld bc, $2e50                                  ; $463a: $01 $50 $2e
    ld bc, $2e67                                  ; $463d: $01 $67 $2e
    ld bc, $2e91                                  ; $4640: $01 $91 $2e
    ld bc, $2eb4                                  ; $4643: $01 $b4 $2e
    ld bc, $2ede                                  ; $4646: $01 $de $2e
    ld bc, $2ef3                                  ; $4649: $01 $f3 $2e
    ld bc, $2f32                                  ; $464c: $01 $32 $2f
    ld bc, $2f63                                  ; $464f: $01 $63 $2f
    ld bc, $2f73                                  ; $4652: $01 $73 $2f
    ld bc, $2fa4                                  ; $4655: $01 $a4 $2f
    ld bc, $2fdc                                  ; $4658: $01 $dc $2f
    ld bc, $3007                                  ; $465b: $01 $07 $30
    ld bc, $303b                                  ; $465e: $01 $3b $30
    ld bc, $3071                                  ; $4661: $01 $71 $30
    ld bc, $309a                                  ; $4664: $01 $9a $30
    ld bc, $30c2                                  ; $4667: $01 $c2 $30
    ld bc, $3104                                  ; $466a: $01 $04 $31
    ld bc, $3159                                  ; $466d: $01 $59 $31
    ld bc, $319b                                  ; $4670: $01 $9b $31
    ld bc, $31c5                                  ; $4673: $01 $c5 $31
    ld bc, $31f2                                  ; $4676: $01 $f2 $31
    ld bc, $3217                                  ; $4679: $01 $17 $32
    ld bc, $3244                                  ; $467c: $01 $44 $32
    ld bc, $327a                                  ; $467f: $01 $7a $32
    ld bc, $329c                                  ; $4682: $01 $9c $32
    ld bc, $32d8                                  ; $4685: $01 $d8 $32
    ld bc, $32fc                                  ; $4688: $01 $fc $32
    ld bc, $3322                                  ; $468b: $01 $22 $33
    ld bc, $3362                                  ; $468e: $01 $62 $33
    ld bc, $3392                                  ; $4691: $01 $92 $33
    ld bc, $339c                                  ; $4694: $01 $9c $33
    ld bc, $33c7                                  ; $4697: $01 $c7 $33
    ld bc, $33d6                                  ; $469a: $01 $d6 $33
    ld bc, $33f9                                  ; $469d: $01 $f9 $33
    ld bc, $340c                                  ; $46a0: $01 $0c $34
    ld bc, $3417                                  ; $46a3: $01 $17 $34
    ld bc, $3427                                  ; $46a6: $01 $27 $34
    ld bc, $3439                                  ; $46a9: $01 $39 $34
    ld bc, $345d                                  ; $46ac: $01 $5d $34
    ld bc, $34a6                                  ; $46af: $01 $a6 $34
    ld bc, $34ac                                  ; $46b2: $01 $ac $34
    ld bc, $350a                                  ; $46b5: $01 $0a $35
    ld bc, $351a                                  ; $46b8: $01 $1a $35
    ld bc, $3576                                  ; $46bb: $01 $76 $35
    ld bc, $3599                                  ; $46be: $01 $99 $35
    ld bc, $35af                                  ; $46c1: $01 $af $35
    ld bc, $35d6                                  ; $46c4: $01 $d6 $35
    ld bc, $3631                                  ; $46c7: $01 $31 $36
    ld bc, $3666                                  ; $46ca: $01 $66 $36
    ld bc, $3675                                  ; $46cd: $01 $75 $36
    ld bc, $3680                                  ; $46d0: $01 $80 $36
    ld bc, $369b                                  ; $46d3: $01 $9b $36
    ld bc, $36c7                                  ; $46d6: $01 $c7 $36
    ld bc, $36e8                                  ; $46d9: $01 $e8 $36
    ld bc, $3702                                  ; $46dc: $01 $02 $37
    ld bc, $3716                                  ; $46df: $01 $16 $37
    ld bc, $375b                                  ; $46e2: $01 $5b $37
    ld bc, $37a0                                  ; $46e5: $01 $a0 $37
    ld bc, $37b5                                  ; $46e8: $01 $b5 $37
    ld bc, $37ef                                  ; $46eb: $01 $ef $37
    ld bc, $3839                                  ; $46ee: $01 $39 $38
    ld bc, $3854                                  ; $46f1: $01 $54 $38
    ld bc, $3877                                  ; $46f4: $01 $77 $38
    ld bc, $388a                                  ; $46f7: $01 $8a $38
    ld bc, $38a3                                  ; $46fa: $01 $a3 $38
    ld bc, $38c0                                  ; $46fd: $01 $c0 $38
    ld bc, $38d8                                  ; $4700: $01 $d8 $38
    ld bc, $38fb                                  ; $4703: $01 $fb $38
    ld bc, $391e                                  ; $4706: $01 $1e $39
    ld bc, $3975                                  ; $4709: $01 $75 $39
    ld bc, $398b                                  ; $470c: $01 $8b $39
    ld bc, $39ec                                  ; $470f: $01 $ec $39
    ld bc, $3a29                                  ; $4712: $01 $29 $3a
    ld bc, $3a48                                  ; $4715: $01 $48 $3a
    ld bc, $3a79                                  ; $4718: $01 $79 $3a
    ld bc, $3ab4                                  ; $471b: $01 $b4 $3a
    ld bc, $3b0f                                  ; $471e: $01 $0f $3b
    ld bc, $3b47                                  ; $4721: $01 $47 $3b
    ld bc, $3b5b                                  ; $4724: $01 $5b $3b
    ld bc, $3b6b                                  ; $4727: $01 $6b $3b
    ld bc, $3b8e                                  ; $472a: $01 $8e $3b
    ld bc, $3ba4                                  ; $472d: $01 $a4 $3b
    ld bc, $3baf                                  ; $4730: $01 $af $3b
    ld bc, $3bbf                                  ; $4733: $01 $bf $3b
    ld bc, $3bd2                                  ; $4736: $01 $d2 $3b
    ld bc, $3be5                                  ; $4739: $01 $e5 $3b
    ld bc, $3c10                                  ; $473c: $01 $10 $3c
    ld bc, $3c29                                  ; $473f: $01 $29 $3c
    ld bc, $3c36                                  ; $4742: $01 $36 $3c
    ld bc, $3c54                                  ; $4745: $01 $54 $3c
    ld bc, $3cc8                                  ; $4748: $01 $c8 $3c
    ld bc, $3cd8                                  ; $474b: $01 $d8 $3c
    ld bc, $3cf7                                  ; $474e: $01 $f7 $3c
    ld bc, $3d33                                  ; $4751: $01 $33 $3d
    ld bc, $3d4d                                  ; $4754: $01 $4d $3d
    ld bc, $3d84                                  ; $4757: $01 $84 $3d
    ld bc, $3dbe                                  ; $475a: $01 $be $3d
    ld bc, $3de2                                  ; $475d: $01 $e2 $3d
    ld bc, $3e3d                                  ; $4760: $01 $3d $3e
    ld bc, $3e43                                  ; $4763: $01 $43 $3e
    ld bc, $3e5d                                  ; $4766: $01 $5d $3e
    ld bc, $3e69                                  ; $4769: $01 $69 $3e
    ld bc, $3e80                                  ; $476c: $01 $80 $3e
    ld bc, $3eaf                                  ; $476f: $01 $af $3e
    ld bc, $3ee9                                  ; $4772: $01 $e9 $3e
    ld bc, $3f28                                  ; $4775: $01 $28 $3f
    ld bc, $3f4d                                  ; $4778: $01 $4d $3f
    ld bc, $3f87                                  ; $477b: $01 $87 $3f
    ld bc, $3f97                                  ; $477e: $01 $97 $3f
    ld bc, $3fa5                                  ; $4781: $01 $a5 $3f
    ld bc, $3fb9                                  ; $4784: $01 $b9 $3f
    ld bc, $3fc9                                  ; $4787: $01 $c9 $3f
    ld [bc], a                                    ; $478a: $02
    ld bc, $0200                                  ; $478b: $01 $00 $02
    ld c, c                                       ; $478e: $49
    nop                                           ; $478f: $00
    ld [bc], a                                    ; $4790: $02
    ld a, [hl]                                    ; $4791: $7e
    nop                                           ; $4792: $00
    ld [bc], a                                    ; $4793: $02
    or [hl]                                       ; $4794: $b6
    nop                                           ; $4795: $00
    ld [bc], a                                    ; $4796: $02
    xor $00                                       ; $4797: $ee $00
    ld [bc], a                                    ; $4799: $02
    dec h                                         ; $479a: $25
    ld bc, $4802                                  ; $479b: $01 $02 $48
    ld bc, $6302                                  ; $479e: $01 $02 $63
    ld bc, $9602                                  ; $47a1: $01 $02 $96
    ld bc, $ad02                                  ; $47a4: $01 $02 $ad
    ld bc, $b602                                  ; $47a7: $01 $02 $b6
    ld bc, $c902                                  ; $47aa: $01 $02 $c9
    ld bc, $e302                                  ; $47ad: $01 $02 $e3
    ld bc, $0302                                  ; $47b0: $01 $02 $03
    ld [bc], a                                    ; $47b3: $02
    ld [bc], a                                    ; $47b4: $02
    inc e                                         ; $47b5: $1c
    ld [bc], a                                    ; $47b6: $02
    ld [bc], a                                    ; $47b7: $02
    dec l                                         ; $47b8: $2d
    ld [bc], a                                    ; $47b9: $02
    ld [bc], a                                    ; $47ba: $02
    ld b, d                                       ; $47bb: $42
    ld [bc], a                                    ; $47bc: $02
    ld [bc], a                                    ; $47bd: $02
    ld [hl], h                                    ; $47be: $74
    ld [bc], a                                    ; $47bf: $02
    ld [bc], a                                    ; $47c0: $02
    and h                                         ; $47c1: $a4
    ld [bc], a                                    ; $47c2: $02
    ld [bc], a                                    ; $47c3: $02
    cp b                                          ; $47c4: $b8
    ld [bc], a                                    ; $47c5: $02
    ld [bc], a                                    ; $47c6: $02
    jp hl                                         ; $47c7: $e9


    ld [bc], a                                    ; $47c8: $02
    ld [bc], a                                    ; $47c9: $02
    db $fc                                        ; $47ca: $fc
    ld [bc], a                                    ; $47cb: $02
    ld [bc], a                                    ; $47cc: $02
    jr jr_040_47d2                                ; $47cd: $18 $03

    ld [bc], a                                    ; $47cf: $02
    inc l                                         ; $47d0: $2c
    inc bc                                        ; $47d1: $03

jr_040_47d2:
    ld [bc], a                                    ; $47d2: $02
    ld b, d                                       ; $47d3: $42
    inc bc                                        ; $47d4: $03
    ld [bc], a                                    ; $47d5: $02
    ld l, b                                       ; $47d6: $68
    inc bc                                        ; $47d7: $03
    ld [bc], a                                    ; $47d8: $02
    adc e                                         ; $47d9: $8b
    inc bc                                        ; $47da: $03
    ld [bc], a                                    ; $47db: $02
    and h                                         ; $47dc: $a4
    inc bc                                        ; $47dd: $03
    ld [bc], a                                    ; $47de: $02
    ret nz                                        ; $47df: $c0

    inc bc                                        ; $47e0: $03
    ld [bc], a                                    ; $47e1: $02
    ld bc, $0204                                  ; $47e2: $01 $04 $02
    dec h                                         ; $47e5: $25
    inc b                                         ; $47e6: $04
    ld [bc], a                                    ; $47e7: $02
    ld d, a                                       ; $47e8: $57
    inc b                                         ; $47e9: $04
    ld [bc], a                                    ; $47ea: $02
    adc d                                         ; $47eb: $8a
    inc b                                         ; $47ec: $04
    ld [bc], a                                    ; $47ed: $02
    and e                                         ; $47ee: $a3
    inc b                                         ; $47ef: $04
    ld [bc], a                                    ; $47f0: $02
    sub $04                                       ; $47f1: $d6 $04
    ld [bc], a                                    ; $47f3: $02
    or $04                                        ; $47f4: $f6 $04
    ld [bc], a                                    ; $47f6: $02
    dec b                                         ; $47f7: $05
    dec b                                         ; $47f8: $05
    ld [bc], a                                    ; $47f9: $02
    dec [hl]                                      ; $47fa: $35
    dec b                                         ; $47fb: $05
    ld [bc], a                                    ; $47fc: $02
    ld d, d                                       ; $47fd: $52
    dec b                                         ; $47fe: $05
    ld [bc], a                                    ; $47ff: $02
    ld [hl], e                                    ; $4800: $73
    dec b                                         ; $4801: $05
    ld [bc], a                                    ; $4802: $02
    ld [hl], a                                    ; $4803: $77
    dec b                                         ; $4804: $05
    ld [bc], a                                    ; $4805: $02
    ld a, e                                       ; $4806: $7b
    dec b                                         ; $4807: $05
    ld [bc], a                                    ; $4808: $02
    ld a, a                                       ; $4809: $7f
    dec b                                         ; $480a: $05
    ld [bc], a                                    ; $480b: $02
    adc a                                         ; $480c: $8f
    dec b                                         ; $480d: $05
    ld [bc], a                                    ; $480e: $02
    sub [hl]                                      ; $480f: $96
    dec b                                         ; $4810: $05
    ld [bc], a                                    ; $4811: $02
    add $05                                       ; $4812: $c6 $05
    ld [bc], a                                    ; $4814: $02
    xor $05                                       ; $4815: $ee $05
    ld [bc], a                                    ; $4817: $02
    rst $38                                       ; $4818: $ff
    dec b                                         ; $4819: $05
    ld [bc], a                                    ; $481a: $02
    dec bc                                        ; $481b: $0b
    ld b, $02                                     ; $481c: $06 $02
    ld l, $06                                     ; $481e: $2e $06
    ld [bc], a                                    ; $4820: $02
    ld b, [hl]                                    ; $4821: $46
    ld b, $02                                     ; $4822: $06 $02
    ld d, a                                       ; $4824: $57
    ld b, $02                                     ; $4825: $06 $02
    ld h, e                                       ; $4827: $63
    ld b, $02                                     ; $4828: $06 $02
    ld a, a                                       ; $482a: $7f
    ld b, $02                                     ; $482b: $06 $02
    adc h                                         ; $482d: $8c
    ld b, $02                                     ; $482e: $06 $02
    xor e                                         ; $4830: $ab
    ld b, $02                                     ; $4831: $06 $02
    jp z, Jump_000_0206                           ; $4833: $ca $06 $02

    ret c                                         ; $4836: $d8

    ld b, $02                                     ; $4837: $06 $02
    db $10                                        ; $4839: $10
    rlca                                          ; $483a: $07
    ld [bc], a                                    ; $483b: $02
    jr jr_040_4845                                ; $483c: $18 $07

    ld [bc], a                                    ; $483e: $02
    ld b, c                                       ; $483f: $41
    rlca                                          ; $4840: $07
    ld [bc], a                                    ; $4841: $02
    ld b, [hl]                                    ; $4842: $46
    rlca                                          ; $4843: $07
    ld [bc], a                                    ; $4844: $02

jr_040_4845:
    ld h, a                                       ; $4845: $67
    rlca                                          ; $4846: $07
    ld [bc], a                                    ; $4847: $02
    ld [hl], a                                    ; $4848: $77
    rlca                                          ; $4849: $07
    ld [bc], a                                    ; $484a: $02
    add a                                         ; $484b: $87
    rlca                                          ; $484c: $07
    ld [bc], a                                    ; $484d: $02
    or $07                                        ; $484e: $f6 $07
    ld [bc], a                                    ; $4850: $02
    nop                                           ; $4851: $00
    ld [$0502], sp                                ; $4852: $08 $02 $05
    ld [$1102], sp                                ; $4855: $08 $02 $11
    ld [$5802], sp                                ; $4858: $08 $02 $58
    ld [$1402], sp                                ; $485b: $08 $02 $14
    add hl, bc                                    ; $485e: $09
    ld [bc], a                                    ; $485f: $02
    inc a                                         ; $4860: $3c
    add hl, bc                                    ; $4861: $09
    ld [bc], a                                    ; $4862: $02
    ld d, l                                       ; $4863: $55
    add hl, bc                                    ; $4864: $09
    ld [bc], a                                    ; $4865: $02
    ld [hl], c                                    ; $4866: $71
    add hl, bc                                    ; $4867: $09
    ld [bc], a                                    ; $4868: $02
    ld a, h                                       ; $4869: $7c
    add hl, bc                                    ; $486a: $09
    ld [bc], a                                    ; $486b: $02
    adc h                                         ; $486c: $8c
    add hl, bc                                    ; $486d: $09
    ld [bc], a                                    ; $486e: $02
    and d                                         ; $486f: $a2
    add hl, bc                                    ; $4870: $09
    ld [bc], a                                    ; $4871: $02
    or a                                          ; $4872: $b7
    add hl, bc                                    ; $4873: $09
    ld [bc], a                                    ; $4874: $02
    sub $09                                       ; $4875: $d6 $09
    ld [bc], a                                    ; $4877: $02
    rst $38                                       ; $4878: $ff
    add hl, bc                                    ; $4879: $09
    ld [bc], a                                    ; $487a: $02
    ld b, b                                       ; $487b: $40
    ld a, [bc]                                    ; $487c: $0a
    ld [bc], a                                    ; $487d: $02
    ld a, a                                       ; $487e: $7f
    ld a, [bc]                                    ; $487f: $0a
    ld [bc], a                                    ; $4880: $02
    sbc [hl]                                      ; $4881: $9e
    ld a, [bc]                                    ; $4882: $0a
    ld [bc], a                                    ; $4883: $02
    ld c, $0b                                     ; $4884: $0e $0b
    ld [bc], a                                    ; $4886: $02
    dec d                                         ; $4887: $15
    dec bc                                        ; $4888: $0b
    ld [bc], a                                    ; $4889: $02
    ld d, e                                       ; $488a: $53
    dec bc                                        ; $488b: $0b
    ld [bc], a                                    ; $488c: $02
    ld h, [hl]                                    ; $488d: $66
    dec bc                                        ; $488e: $0b
    ld [bc], a                                    ; $488f: $02
    adc h                                         ; $4890: $8c
    dec bc                                        ; $4891: $0b
    ld [bc], a                                    ; $4892: $02
    cp [hl]                                       ; $4893: $be
    dec bc                                        ; $4894: $0b
    ld [bc], a                                    ; $4895: $02
    push de                                       ; $4896: $d5
    dec bc                                        ; $4897: $0b
    ld [bc], a                                    ; $4898: $02
    and $0b                                       ; $4899: $e6 $0b
    ld [bc], a                                    ; $489b: $02
    inc bc                                        ; $489c: $03
    inc c                                         ; $489d: $0c
    ld [bc], a                                    ; $489e: $02
    ld [de], a                                    ; $489f: $12
    inc c                                         ; $48a0: $0c
    ld [bc], a                                    ; $48a1: $02
    inc h                                         ; $48a2: $24
    inc c                                         ; $48a3: $0c
    ld [bc], a                                    ; $48a4: $02
    dec sp                                        ; $48a5: $3b
    inc c                                         ; $48a6: $0c
    ld [bc], a                                    ; $48a7: $02
    ld b, h                                       ; $48a8: $44
    inc c                                         ; $48a9: $0c
    ld [bc], a                                    ; $48aa: $02
    ld l, h                                       ; $48ab: $6c
    inc c                                         ; $48ac: $0c
    ld [bc], a                                    ; $48ad: $02
    add [hl]                                      ; $48ae: $86
    inc c                                         ; $48af: $0c
    ld [bc], a                                    ; $48b0: $02
    and h                                         ; $48b1: $a4
    inc c                                         ; $48b2: $0c
    ld [bc], a                                    ; $48b3: $02
    cp d                                          ; $48b4: $ba
    inc c                                         ; $48b5: $0c
    ld [bc], a                                    ; $48b6: $02
    rrc h                                         ; $48b7: $cb $0c
    ld [bc], a                                    ; $48b9: $02
    sbc $0c                                       ; $48ba: $de $0c
    ld [bc], a                                    ; $48bc: $02
    or $0c                                        ; $48bd: $f6 $0c
    ld [bc], a                                    ; $48bf: $02
    inc d                                         ; $48c0: $14
    dec c                                         ; $48c1: $0d
    ld [bc], a                                    ; $48c2: $02
    daa                                           ; $48c3: $27
    dec c                                         ; $48c4: $0d
    ld [bc], a                                    ; $48c5: $02
    add a                                         ; $48c6: $87
    dec c                                         ; $48c7: $0d
    ld [bc], a                                    ; $48c8: $02
    push af                                       ; $48c9: $f5
    dec c                                         ; $48ca: $0d
    ld [bc], a                                    ; $48cb: $02
    inc b                                         ; $48cc: $04
    ld c, $02                                     ; $48cd: $0e $02
    ld b, a                                       ; $48cf: $47
    ld c, $02                                     ; $48d0: $0e $02
    ld d, e                                       ; $48d2: $53
    ld c, $02                                     ; $48d3: $0e $02
    or e                                          ; $48d5: $b3
    ld c, $02                                     ; $48d6: $0e $02
    jp c, $020e                                   ; $48d8: $da $0e $02

    ei                                            ; $48db: $fb
    ld c, $02                                     ; $48dc: $0e $02
    add hl, hl                                    ; $48de: $29
    rrca                                          ; $48df: $0f
    ld [bc], a                                    ; $48e0: $02
    ld c, a                                       ; $48e1: $4f
    rrca                                          ; $48e2: $0f
    ld [bc], a                                    ; $48e3: $02
    ld [hl], b                                    ; $48e4: $70
    rrca                                          ; $48e5: $0f
    ld [bc], a                                    ; $48e6: $02
    rst $00                                       ; $48e7: $c7
    rrca                                          ; $48e8: $0f
    ld [bc], a                                    ; $48e9: $02
    call z, $020f                                 ; $48ea: $cc $0f $02
    db $dd                                        ; $48ed: $dd
    rrca                                          ; $48ee: $0f
    ld [bc], a                                    ; $48ef: $02
    ei                                            ; $48f0: $fb
    rrca                                          ; $48f1: $0f
    ld [bc], a                                    ; $48f2: $02
    add hl, de                                    ; $48f3: $19
    db $10                                        ; $48f4: $10
    ld [bc], a                                    ; $48f5: $02
    dec sp                                        ; $48f6: $3b
    db $10                                        ; $48f7: $10
    ld [bc], a                                    ; $48f8: $02
    ld [hl], b                                    ; $48f9: $70
    db $10                                        ; $48fa: $10
    ld [bc], a                                    ; $48fb: $02
    adc b                                         ; $48fc: $88
    db $10                                        ; $48fd: $10
    ld [bc], a                                    ; $48fe: $02
    sub d                                         ; $48ff: $92
    db $10                                        ; $4900: $10
    ld [bc], a                                    ; $4901: $02
    sbc a                                         ; $4902: $9f
    db $10                                        ; $4903: $10
    ld [bc], a                                    ; $4904: $02
    cp l                                          ; $4905: $bd
    db $10                                        ; $4906: $10
    ld [bc], a                                    ; $4907: $02
    reti                                          ; $4908: $d9


    db $10                                        ; $4909: $10
    ld [bc], a                                    ; $490a: $02
    db $e4                                        ; $490b: $e4
    db $10                                        ; $490c: $10
    ld [bc], a                                    ; $490d: $02
    db $f4                                        ; $490e: $f4
    db $10                                        ; $490f: $10
    ld [bc], a                                    ; $4910: $02
    ld a, [hl-]                                   ; $4911: $3a
    ld de, $af02                                  ; $4912: $11 $02 $af
    ld de, $bf02                                  ; $4915: $11 $02 $bf
    ld de, $1e02                                  ; $4918: $11 $02 $1e
    ld [de], a                                    ; $491b: $12
    ld [bc], a                                    ; $491c: $02
    ld d, l                                       ; $491d: $55
    ld [de], a                                    ; $491e: $12
    ld [bc], a                                    ; $491f: $02
    sub [hl]                                      ; $4920: $96
    ld [de], a                                    ; $4921: $12
    ld [bc], a                                    ; $4922: $02
    and [hl]                                      ; $4923: $a6
    ld [de], a                                    ; $4924: $12
    ld [bc], a                                    ; $4925: $02
    jr jr_040_493b                                ; $4926: $18 $13

    ld [bc], a                                    ; $4928: $02
    ld [hl+], a                                   ; $4929: $22
    inc de                                        ; $492a: $13
    ld [bc], a                                    ; $492b: $02
    ld d, h                                       ; $492c: $54
    inc de                                        ; $492d: $13
    ld [bc], a                                    ; $492e: $02
    ld l, l                                       ; $492f: $6d
    inc de                                        ; $4930: $13
    ld [bc], a                                    ; $4931: $02
    xor l                                         ; $4932: $ad
    inc de                                        ; $4933: $13
    ld [bc], a                                    ; $4934: $02
    ld h, $14                                     ; $4935: $26 $14
    ld [bc], a                                    ; $4937: $02
    ld b, [hl]                                    ; $4938: $46
    inc d                                         ; $4939: $14
    ld [bc], a                                    ; $493a: $02

jr_040_493b:
    ld a, a                                       ; $493b: $7f
    inc d                                         ; $493c: $14
    ld [bc], a                                    ; $493d: $02
    or a                                          ; $493e: $b7
    inc d                                         ; $493f: $14
    ld [bc], a                                    ; $4940: $02
    rst $10                                       ; $4941: $d7
    inc d                                         ; $4942: $14
    ld [bc], a                                    ; $4943: $02
    db $db                                        ; $4944: $db
    inc d                                         ; $4945: $14
    ld [bc], a                                    ; $4946: $02
    db $ec                                        ; $4947: $ec
    inc d                                         ; $4948: $14
    ld [bc], a                                    ; $4949: $02
    ld d, $15                                     ; $494a: $16 $15
    ld [bc], a                                    ; $494c: $02
    jr c, @+$17                                   ; $494d: $38 $15

    ld [bc], a                                    ; $494f: $02
    ld c, c                                       ; $4950: $49
    dec d                                         ; $4951: $15
    ld [bc], a                                    ; $4952: $02
    ld l, a                                       ; $4953: $6f
    dec d                                         ; $4954: $15
    ld [bc], a                                    ; $4955: $02
    ldh a, [$15]                                  ; $4956: $f0 $15
    ld [bc], a                                    ; $4958: $02
    ld hl, sp+$15                                 ; $4959: $f8 $15
    ld [bc], a                                    ; $495b: $02
    inc l                                         ; $495c: $2c
    ld d, $02                                     ; $495d: $16 $02
    ld b, h                                       ; $495f: $44
    ld d, $02                                     ; $4960: $16 $02
    ld l, b                                       ; $4962: $68
    ld d, $02                                     ; $4963: $16 $02
    sub [hl]                                      ; $4965: $96
    ld d, $02                                     ; $4966: $16 $02
    sbc d                                         ; $4968: $9a
    ld d, $02                                     ; $4969: $16 $02
    xor c                                         ; $496b: $a9
    ld d, $02                                     ; $496c: $16 $02
    ld sp, hl                                     ; $496e: $f9
    ld d, $02                                     ; $496f: $16 $02
    rrca                                          ; $4971: $0f
    rla                                           ; $4972: $17
    ld [bc], a                                    ; $4973: $02
    dec [hl]                                      ; $4974: $35
    rla                                           ; $4975: $17
    ld [bc], a                                    ; $4976: $02
    ld e, b                                       ; $4977: $58
    rla                                           ; $4978: $17
    ld [bc], a                                    ; $4979: $02
    or l                                          ; $497a: $b5
    rla                                           ; $497b: $17
    ld [bc], a                                    ; $497c: $02
    reti                                          ; $497d: $d9


    rla                                           ; $497e: $17
    ld [bc], a                                    ; $497f: $02
    ldh a, [rNR22]                                ; $4980: $f0 $17
    ld [bc], a                                    ; $4982: $02
    ld a, [bc]                                    ; $4983: $0a
    jr @+$04                                      ; $4984: $18 $02

    inc hl                                        ; $4986: $23
    jr @+$04                                      ; $4987: $18 $02

    ld b, h                                       ; $4989: $44
    jr @+$04                                      ; $498a: $18 $02

    ld l, [hl]                                    ; $498c: $6e
    jr @+$04                                      ; $498d: $18 $02

    ld a, h                                       ; $498f: $7c
    jr @+$04                                      ; $4990: $18 $02

    add b                                         ; $4992: $80
    jr @+$04                                      ; $4993: $18 $02

    and [hl]                                      ; $4995: $a6
    jr @+$04                                      ; $4996: $18 $02

    ret z                                         ; $4998: $c8

    jr @+$04                                      ; $4999: $18 $02

    db $ed                                        ; $499b: $ed
    jr @+$04                                      ; $499c: $18 $02

    ld bc, $0219                                  ; $499e: $01 $19 $02
    inc sp                                        ; $49a1: $33
    add hl, de                                    ; $49a2: $19
    ld [bc], a                                    ; $49a3: $02
    ld e, l                                       ; $49a4: $5d
    add hl, de                                    ; $49a5: $19
    ld [bc], a                                    ; $49a6: $02
    add e                                         ; $49a7: $83
    add hl, de                                    ; $49a8: $19
    ld [bc], a                                    ; $49a9: $02
    and b                                         ; $49aa: $a0
    add hl, de                                    ; $49ab: $19
    ld [bc], a                                    ; $49ac: $02
    jp z, Jump_000_0219                           ; $49ad: $ca $19 $02

    sbc $19                                       ; $49b0: $de $19
    ld [bc], a                                    ; $49b2: $02
    db $fd                                        ; $49b3: $fd
    add hl, de                                    ; $49b4: $19
    ld [bc], a                                    ; $49b5: $02
    rra                                           ; $49b6: $1f
    ld a, [de]                                    ; $49b7: $1a
    ld [bc], a                                    ; $49b8: $02
    ld b, c                                       ; $49b9: $41
    ld a, [de]                                    ; $49ba: $1a
    ld [bc], a                                    ; $49bb: $02
    ld e, l                                       ; $49bc: $5d
    ld a, [de]                                    ; $49bd: $1a
    ld [bc], a                                    ; $49be: $02
    ld l, e                                       ; $49bf: $6b
    ld a, [de]                                    ; $49c0: $1a
    ld [bc], a                                    ; $49c1: $02
    sbc d                                         ; $49c2: $9a
    ld a, [de]                                    ; $49c3: $1a
    ld [bc], a                                    ; $49c4: $02
    db $fc                                        ; $49c5: $fc
    ld a, [de]                                    ; $49c6: $1a
    ld [bc], a                                    ; $49c7: $02
    inc c                                         ; $49c8: $0c
    dec de                                        ; $49c9: $1b
    ld [bc], a                                    ; $49ca: $02
    inc l                                         ; $49cb: $2c
    dec de                                        ; $49cc: $1b
    ld [bc], a                                    ; $49cd: $02
    ld e, a                                       ; $49ce: $5f
    dec de                                        ; $49cf: $1b
    ld [bc], a                                    ; $49d0: $02
    ld [hl], c                                    ; $49d1: $71
    dec de                                        ; $49d2: $1b
    ld [bc], a                                    ; $49d3: $02
    or [hl]                                       ; $49d4: $b6
    dec de                                        ; $49d5: $1b
    ld [bc], a                                    ; $49d6: $02
    xor $1b                                       ; $49d7: $ee $1b
    ld [bc], a                                    ; $49d9: $02
    daa                                           ; $49da: $27
    inc e                                         ; $49db: $1c
    ld [bc], a                                    ; $49dc: $02
    ld [hl], a                                    ; $49dd: $77
    inc e                                         ; $49de: $1c
    ld [bc], a                                    ; $49df: $02
    and h                                         ; $49e0: $a4
    inc e                                         ; $49e1: $1c
    ld [bc], a                                    ; $49e2: $02
    cp d                                          ; $49e3: $ba
    inc e                                         ; $49e4: $1c
    ld [bc], a                                    ; $49e5: $02
    jp nc, Jump_000_021c                          ; $49e6: $d2 $1c $02

    sbc $1c                                       ; $49e9: $de $1c
    ld [bc], a                                    ; $49eb: $02
    rra                                           ; $49ec: $1f
    dec e                                         ; $49ed: $1d
    ld [bc], a                                    ; $49ee: $02
    ld b, h                                       ; $49ef: $44
    dec e                                         ; $49f0: $1d
    ld [bc], a                                    ; $49f1: $02
    ld a, l                                       ; $49f2: $7d
    dec e                                         ; $49f3: $1d
    ld [bc], a                                    ; $49f4: $02
    adc [hl]                                      ; $49f5: $8e
    dec e                                         ; $49f6: $1d
    ld [bc], a                                    ; $49f7: $02
    and [hl]                                      ; $49f8: $a6
    dec e                                         ; $49f9: $1d
    ld [bc], a                                    ; $49fa: $02
    xor l                                         ; $49fb: $ad
    dec e                                         ; $49fc: $1d
    ld [bc], a                                    ; $49fd: $02
    ret z                                         ; $49fe: $c8

    dec e                                         ; $49ff: $1d
    ld [bc], a                                    ; $4a00: $02
    ldh a, [rNR33]                                ; $4a01: $f0 $1d
    ld [bc], a                                    ; $4a03: $02
    ld bc, $021e                                  ; $4a04: $01 $1e $02
    ld d, d                                       ; $4a07: $52
    ld e, $02                                     ; $4a08: $1e $02
    ld a, a                                       ; $4a0a: $7f
    ld e, $02                                     ; $4a0b: $1e $02
    xor d                                         ; $4a0d: $aa
    ld e, $02                                     ; $4a0e: $1e $02
    ret c                                         ; $4a10: $d8

    ld e, $02                                     ; $4a11: $1e $02
    dec l                                         ; $4a13: $2d
    rra                                           ; $4a14: $1f
    ld [bc], a                                    ; $4a15: $02
    ld [hl], h                                    ; $4a16: $74
    rra                                           ; $4a17: $1f
    ld [bc], a                                    ; $4a18: $02
    and c                                         ; $4a19: $a1
    rra                                           ; $4a1a: $1f
    ld [bc], a                                    ; $4a1b: $02
    pop de                                        ; $4a1c: $d1
    rra                                           ; $4a1d: $1f
    ld [bc], a                                    ; $4a1e: $02
    push af                                       ; $4a1f: $f5
    rra                                           ; $4a20: $1f
    ld [bc], a                                    ; $4a21: $02
    ld a, [de]                                    ; $4a22: $1a
    jr nz, @+$04                                  ; $4a23: $20 $02

    ld a, l                                       ; $4a25: $7d
    jr nz, @+$04                                  ; $4a26: $20 $02

    cp e                                          ; $4a28: $bb
    jr nz, @+$04                                  ; $4a29: $20 $02

    jp nc, $0220                                  ; $4a2b: $d2 $20 $02

    ld d, $21                                     ; $4a2e: $16 $21
    ld [bc], a                                    ; $4a30: $02
    jr c, jr_040_4a54                             ; $4a31: $38 $21

    ld [bc], a                                    ; $4a33: $02
    ld [hl], b                                    ; $4a34: $70

Call_040_4a35:
    ld hl, $8a02                                  ; $4a35: $21 $02 $8a
    ld hl, $a002                                  ; $4a38: $21 $02 $a0
    ld hl, $b802                                  ; $4a3b: $21 $02 $b8
    ld hl, $e102                                  ; $4a3e: $21 $02 $e1
    ld hl, $f702                                  ; $4a41: $21 $02 $f7
    ld hl, $4f02                                  ; $4a44: $21 $02 $4f
    ld [hl+], a                                   ; $4a47: $22
    ld [bc], a                                    ; $4a48: $02
    ld e, a                                       ; $4a49: $5f
    ld [hl+], a                                   ; $4a4a: $22
    ld [bc], a                                    ; $4a4b: $02
    xor a                                         ; $4a4c: $af
    ld [hl+], a                                   ; $4a4d: $22
    ld [bc], a                                    ; $4a4e: $02
    ret z                                         ; $4a4f: $c8

    ld [hl+], a                                   ; $4a50: $22
    ld [bc], a                                    ; $4a51: $02
    and $22                                       ; $4a52: $e6 $22

jr_040_4a54:
    ld [bc], a                                    ; $4a54: $02
    ld b, $23                                     ; $4a55: $06 $23
    ld [bc], a                                    ; $4a57: $02
    inc e                                         ; $4a58: $1c
    inc hl                                        ; $4a59: $23
    ld [bc], a                                    ; $4a5a: $02
    dec [hl]                                      ; $4a5b: $35
    inc hl                                        ; $4a5c: $23
    ld [bc], a                                    ; $4a5d: $02
    ld l, c                                       ; $4a5e: $69
    inc hl                                        ; $4a5f: $23
    ld [bc], a                                    ; $4a60: $02
    add d                                         ; $4a61: $82
    inc hl                                        ; $4a62: $23
    ld [bc], a                                    ; $4a63: $02
    xor c                                         ; $4a64: $a9
    inc hl                                        ; $4a65: $23
    ld [bc], a                                    ; $4a66: $02
    rst $10                                       ; $4a67: $d7
    inc hl                                        ; $4a68: $23
    ld [bc], a                                    ; $4a69: $02
    db $fd                                        ; $4a6a: $fd
    inc hl                                        ; $4a6b: $23
    ld [bc], a                                    ; $4a6c: $02
    ld a, [de]                                    ; $4a6d: $1a
    inc h                                         ; $4a6e: $24
    ld [bc], a                                    ; $4a6f: $02
    scf                                           ; $4a70: $37
    inc h                                         ; $4a71: $24
    ld [bc], a                                    ; $4a72: $02
    ld c, l                                       ; $4a73: $4d
    inc h                                         ; $4a74: $24
    ld [bc], a                                    ; $4a75: $02
    ld d, l                                       ; $4a76: $55
    inc h                                         ; $4a77: $24
    ld [bc], a                                    ; $4a78: $02
    ld e, a                                       ; $4a79: $5f
    inc h                                         ; $4a7a: $24
    ld [bc], a                                    ; $4a7b: $02
    ld l, a                                       ; $4a7c: $6f
    inc h                                         ; $4a7d: $24
    ld [bc], a                                    ; $4a7e: $02
    add [hl]                                      ; $4a7f: $86
    inc h                                         ; $4a80: $24
    ld [bc], a                                    ; $4a81: $02
    sbc e                                         ; $4a82: $9b
    inc h                                         ; $4a83: $24

Call_040_4a84:
    ld [bc], a                                    ; $4a84: $02
    cp l                                          ; $4a85: $bd
    inc h                                         ; $4a86: $24
    ld [bc], a                                    ; $4a87: $02
    jp $0224                                      ; $4a88: $c3 $24 $02


    db $dd                                        ; $4a8b: $dd
    inc h                                         ; $4a8c: $24
    ld [bc], a                                    ; $4a8d: $02
    push af                                       ; $4a8e: $f5
    inc h                                         ; $4a8f: $24
    ld [bc], a                                    ; $4a90: $02
    inc l                                         ; $4a91: $2c
    dec h                                         ; $4a92: $25
    ld [bc], a                                    ; $4a93: $02
    add c                                         ; $4a94: $81
    dec h                                         ; $4a95: $25
    ld [bc], a                                    ; $4a96: $02
    xor [hl]                                      ; $4a97: $ae
    dec h                                         ; $4a98: $25
    ld [bc], a                                    ; $4a99: $02
    push bc                                       ; $4a9a: $c5
    dec h                                         ; $4a9b: $25
    ld [bc], a                                    ; $4a9c: $02
    rst $08                                       ; $4a9d: $cf
    dec h                                         ; $4a9e: $25
    ld [bc], a                                    ; $4a9f: $02
    di                                            ; $4aa0: $f3
    dec h                                         ; $4aa1: $25
    ld [bc], a                                    ; $4aa2: $02
    ld a, [hl+]                                   ; $4aa3: $2a
    ld h, $02                                     ; $4aa4: $26 $02
    ld e, a                                       ; $4aa6: $5f
    ld h, $02                                     ; $4aa7: $26 $02
    sbc d                                         ; $4aa9: $9a
    ld h, $02                                     ; $4aaa: $26 $02
    pop de                                        ; $4aac: $d1
    ld h, $02                                     ; $4aad: $26 $02
    sbc $26                                       ; $4aaf: $de $26
    ld [bc], a                                    ; $4ab1: $02
    ld a, [c]                                     ; $4ab2: $f2
    ld h, $02                                     ; $4ab3: $26 $02
    add hl, de                                    ; $4ab5: $19
    daa                                           ; $4ab6: $27
    ld [bc], a                                    ; $4ab7: $02
    ld h, c                                       ; $4ab8: $61
    daa                                           ; $4ab9: $27
    ld [bc], a                                    ; $4aba: $02
    halt                                          ; $4abb: $76
    daa                                           ; $4abc: $27
    ld [bc], a                                    ; $4abd: $02
    adc c                                         ; $4abe: $89
    daa                                           ; $4abf: $27
    ld [bc], a                                    ; $4ac0: $02
    xor l                                         ; $4ac1: $ad
    daa                                           ; $4ac2: $27
    ld [bc], a                                    ; $4ac3: $02
    add $27                                       ; $4ac4: $c6 $27
    ld [bc], a                                    ; $4ac6: $02
    db $dd                                        ; $4ac7: $dd
    daa                                           ; $4ac8: $27
    ld [bc], a                                    ; $4ac9: $02
    cp $27                                        ; $4aca: $fe $27
    ld [bc], a                                    ; $4acc: $02
    ld sp, $0228                                  ; $4acd: $31 $28 $02
    ld l, d                                       ; $4ad0: $6a
    jr z, @+$04                                   ; $4ad1: $28 $02

    or e                                          ; $4ad3: $b3
    jr z, jr_040_4ad8                             ; $4ad4: $28 $02

    or $28                                        ; $4ad6: $f6 $28

jr_040_4ad8:
    ld [bc], a                                    ; $4ad8: $02
    ld e, $29                                     ; $4ad9: $1e $29
    ld [bc], a                                    ; $4adb: $02
    jr c, jr_040_4b07                             ; $4adc: $38 $29

    ld [bc], a                                    ; $4ade: $02
    ld l, a                                       ; $4adf: $6f
    add hl, hl                                    ; $4ae0: $29
    ld [bc], a                                    ; $4ae1: $02
    sub a                                         ; $4ae2: $97
    add hl, hl                                    ; $4ae3: $29
    ld [bc], a                                    ; $4ae4: $02
    call nz, Call_000_0229                        ; $4ae5: $c4 $29 $02
    db $dd                                        ; $4ae8: $dd
    add hl, hl                                    ; $4ae9: $29
    ld [bc], a                                    ; $4aea: $02
    dec bc                                        ; $4aeb: $0b
    ld a, [hl+]                                   ; $4aec: $2a
    ld [bc], a                                    ; $4aed: $02
    ld e, $2a                                     ; $4aee: $1e $2a
    ld [bc], a                                    ; $4af0: $02
    inc [hl]                                      ; $4af1: $34
    ld a, [hl+]                                   ; $4af2: $2a
    ld [bc], a                                    ; $4af3: $02
    ld e, l                                       ; $4af4: $5d
    ld a, [hl+]                                   ; $4af5: $2a
    ld [bc], a                                    ; $4af6: $02
    adc l                                         ; $4af7: $8d
    ld a, [hl+]                                   ; $4af8: $2a
    ld [bc], a                                    ; $4af9: $02
    cp [hl]                                       ; $4afa: $be
    ld a, [hl+]                                   ; $4afb: $2a
    ld [bc], a                                    ; $4afc: $02
    adc $2a                                       ; $4afd: $ce $2a
    ld [bc], a                                    ; $4aff: $02
    db $eb                                        ; $4b00: $eb
    ld a, [hl+]                                   ; $4b01: $2a
    ld [bc], a                                    ; $4b02: $02
    di                                            ; $4b03: $f3
    ld a, [hl+]                                   ; $4b04: $2a
    ld [bc], a                                    ; $4b05: $02
    ld [de], a                                    ; $4b06: $12

jr_040_4b07:
    dec hl                                        ; $4b07: $2b
    ld [bc], a                                    ; $4b08: $02
    add hl, hl                                    ; $4b09: $29
    dec hl                                        ; $4b0a: $2b
    ld [bc], a                                    ; $4b0b: $02
    ld d, d                                       ; $4b0c: $52
    dec hl                                        ; $4b0d: $2b
    ld [bc], a                                    ; $4b0e: $02
    ld a, h                                       ; $4b0f: $7c
    dec hl                                        ; $4b10: $2b
    ld [bc], a                                    ; $4b11: $02
    sub c                                         ; $4b12: $91
    dec hl                                        ; $4b13: $2b
    ld [bc], a                                    ; $4b14: $02
    adc $2b                                       ; $4b15: $ce $2b
    ld [bc], a                                    ; $4b17: $02
    db $dd                                        ; $4b18: $dd
    dec hl                                        ; $4b19: $2b
    ld [bc], a                                    ; $4b1a: $02
    nop                                           ; $4b1b: $00
    inc l                                         ; $4b1c: $2c
    ld [bc], a                                    ; $4b1d: $02
    inc hl                                        ; $4b1e: $23
    inc l                                         ; $4b1f: $2c
    ld [bc], a                                    ; $4b20: $02
    ld c, h                                       ; $4b21: $4c
    inc l                                         ; $4b22: $2c
    ld [bc], a                                    ; $4b23: $02
    ld a, d                                       ; $4b24: $7a
    inc l                                         ; $4b25: $2c
    ld [bc], a                                    ; $4b26: $02
    sub a                                         ; $4b27: $97
    inc l                                         ; $4b28: $2c
    ld [bc], a                                    ; $4b29: $02
    or c                                          ; $4b2a: $b1
    inc l                                         ; $4b2b: $2c
    ld [bc], a                                    ; $4b2c: $02
    jp nc, $022c                                  ; $4b2d: $d2 $2c $02

    xor $2c                                       ; $4b30: $ee $2c
    ld [bc], a                                    ; $4b32: $02
    jr jr_040_4b62                                ; $4b33: $18 $2d

    ld [bc], a                                    ; $4b35: $02
    dec sp                                        ; $4b36: $3b
    dec l                                         ; $4b37: $2d
    ld [bc], a                                    ; $4b38: $02
    ld e, b                                       ; $4b39: $58
    dec l                                         ; $4b3a: $2d
    ld [bc], a                                    ; $4b3b: $02
    ld a, d                                       ; $4b3c: $7a
    dec l                                         ; $4b3d: $2d
    ld [bc], a                                    ; $4b3e: $02
    and c                                         ; $4b3f: $a1
    dec l                                         ; $4b40: $2d
    ld [bc], a                                    ; $4b41: $02
    cp a                                          ; $4b42: $bf
    dec l                                         ; $4b43: $2d
    ld [bc], a                                    ; $4b44: $02
    call c, $022d                                 ; $4b45: $dc $2d $02
    cp $2d                                        ; $4b48: $fe $2d
    ld [bc], a                                    ; $4b4a: $02
    ld sp, $022e                                  ; $4b4b: $31 $2e $02
    ld h, e                                       ; $4b4e: $63
    ld l, $02                                     ; $4b4f: $2e $02
    and c                                         ; $4b51: $a1
    ld l, $02                                     ; $4b52: $2e $02
    ld [$022e], a                                 ; $4b54: $ea $2e $02
    pop af                                        ; $4b57: $f1
    ld l, $02                                     ; $4b58: $2e $02
    inc bc                                        ; $4b5a: $03
    cpl                                           ; $4b5b: $2f
    ld [bc], a                                    ; $4b5c: $02
    ld l, $2f                                     ; $4b5d: $2e $2f
    ld [bc], a                                    ; $4b5f: $02
    ld b, d                                       ; $4b60: $42
    cpl                                           ; $4b61: $2f

jr_040_4b62:
    ld [bc], a                                    ; $4b62: $02
    and c                                         ; $4b63: $a1
    cpl                                           ; $4b64: $2f
    ld [bc], a                                    ; $4b65: $02
    ret z                                         ; $4b66: $c8

    cpl                                           ; $4b67: $2f
    ld [bc], a                                    ; $4b68: $02
    and $2f                                       ; $4b69: $e6 $2f
    ld [bc], a                                    ; $4b6b: $02
    cp $2f                                        ; $4b6c: $fe $2f
    ld [bc], a                                    ; $4b6e: $02
    inc e                                         ; $4b6f: $1c
    jr nc, @+$04                                  ; $4b70: $30 $02

    ld a, [hl+]                                   ; $4b72: $2a
    jr nc, @+$04                                  ; $4b73: $30 $02

    ld d, a                                       ; $4b75: $57
    jr nc, @+$04                                  ; $4b76: $30 $02

    ld e, l                                       ; $4b78: $5d
    jr nc, @+$04                                  ; $4b79: $30 $02

    ld [hl], c                                    ; $4b7b: $71
    jr nc, @+$04                                  ; $4b7c: $30 $02

    or e                                          ; $4b7e: $b3
    jr nc, @+$04                                  ; $4b7f: $30 $02

    jp $0230                                      ; $4b81: $c3 $30 $02


    db $db                                        ; $4b84: $db
    jr nc, @+$04                                  ; $4b85: $30 $02

    inc c                                         ; $4b87: $0c
    ld sp, $4302                                  ; $4b88: $31 $02 $43
    ld sp, $5002                                  ; $4b8b: $31 $02 $50
    ld sp, $5902                                  ; $4b8e: $31 $02 $59
    ld sp, $6b02                                  ; $4b91: $31 $02 $6b
    ld sp, $9902                                  ; $4b94: $31 $02 $99
    ld sp, $c502                                  ; $4b97: $31 $02 $c5
    ld sp, $ce02                                  ; $4b9a: $31 $02 $ce
    ld sp, $e002                                  ; $4b9d: $31 $02 $e0
    ld sp, $fd02                                  ; $4ba0: $31 $02 $fd
    ld sp, $1902                                  ; $4ba3: $31 $02 $19
    ld [hl-], a                                   ; $4ba6: $32
    ld [bc], a                                    ; $4ba7: $02
    adc l                                         ; $4ba8: $8d
    ld [hl-], a                                   ; $4ba9: $32
    ld [bc], a                                    ; $4baa: $02
    sbc h                                         ; $4bab: $9c
    ld [hl-], a                                   ; $4bac: $32
    ld [bc], a                                    ; $4bad: $02
    and c                                         ; $4bae: $a1
    ld [hl-], a                                   ; $4baf: $32
    ld [bc], a                                    ; $4bb0: $02
    or l                                          ; $4bb1: $b5
    ld [hl-], a                                   ; $4bb2: $32
    ld [bc], a                                    ; $4bb3: $02
    add sp, $32                                   ; $4bb4: $e8 $32
    ld [bc], a                                    ; $4bb6: $02
    ld c, $33                                     ; $4bb7: $0e $33
    ld [bc], a                                    ; $4bb9: $02
    ld [hl+], a                                   ; $4bba: $22
    inc sp                                        ; $4bbb: $33
    ld [bc], a                                    ; $4bbc: $02
    ld c, b                                       ; $4bbd: $48
    inc sp                                        ; $4bbe: $33
    ld [bc], a                                    ; $4bbf: $02
    ld h, c                                       ; $4bc0: $61
    inc sp                                        ; $4bc1: $33
    ld [bc], a                                    ; $4bc2: $02
    sub b                                         ; $4bc3: $90
    inc sp                                        ; $4bc4: $33
    ld [bc], a                                    ; $4bc5: $02
    and h                                         ; $4bc6: $a4
    inc sp                                        ; $4bc7: $33
    ld [bc], a                                    ; $4bc8: $02
    or a                                          ; $4bc9: $b7
    inc sp                                        ; $4bca: $33
    ld [bc], a                                    ; $4bcb: $02
    call z, Call_000_0233                         ; $4bcc: $cc $33 $02
    ld [c], a                                     ; $4bcf: $e2
    inc sp                                        ; $4bd0: $33
    ld [bc], a                                    ; $4bd1: $02
    pop af                                        ; $4bd2: $f1
    inc sp                                        ; $4bd3: $33
    ld [bc], a                                    ; $4bd4: $02
    ld b, $34                                     ; $4bd5: $06 $34
    ld [bc], a                                    ; $4bd7: $02
    dec l                                         ; $4bd8: $2d
    inc [hl]                                      ; $4bd9: $34
    ld [bc], a                                    ; $4bda: $02
    ld [hl], $34                                  ; $4bdb: $36 $34
    ld [bc], a                                    ; $4bdd: $02
    ld e, e                                       ; $4bde: $5b
    inc [hl]                                      ; $4bdf: $34
    ld [bc], a                                    ; $4be0: $02
    add d                                         ; $4be1: $82
    inc [hl]                                      ; $4be2: $34
    ld [bc], a                                    ; $4be3: $02
    or a                                          ; $4be4: $b7
    inc [hl]                                      ; $4be5: $34
    ld [bc], a                                    ; $4be6: $02
    sub $34                                       ; $4be7: $d6 $34
    ld [bc], a                                    ; $4be9: $02
    inc de                                        ; $4bea: $13
    dec [hl]                                      ; $4beb: $35
    ld [bc], a                                    ; $4bec: $02
    ld [hl+], a                                   ; $4bed: $22
    dec [hl]                                      ; $4bee: $35
    ld [bc], a                                    ; $4bef: $02
    jr c, @+$37                                   ; $4bf0: $38 $35

    ld [bc], a                                    ; $4bf2: $02
    ld l, b                                       ; $4bf3: $68
    dec [hl]                                      ; $4bf4: $35
    ld [bc], a                                    ; $4bf5: $02
    add h                                         ; $4bf6: $84
    dec [hl]                                      ; $4bf7: $35
    ld [bc], a                                    ; $4bf8: $02
    and a                                         ; $4bf9: $a7
    dec [hl]                                      ; $4bfa: $35
    ld [bc], a                                    ; $4bfb: $02
    ldh a, [$35]                                  ; $4bfc: $f0 $35
    ld [bc], a                                    ; $4bfe: $02
    add hl, bc                                    ; $4bff: $09
    ld [hl], $02                                  ; $4c00: $36 $02
    ld d, a                                       ; $4c02: $57
    ld [hl], $02                                  ; $4c03: $36 $02
    sbc e                                         ; $4c05: $9b
    ld [hl], $02                                  ; $4c06: $36 $02
    and [hl]                                      ; $4c08: $a6
    ld [hl], $02                                  ; $4c09: $36 $02
    call Call_000_0236                            ; $4c0b: $cd $36 $02
    rst $30                                       ; $4c0e: $f7
    ld [hl], $02                                  ; $4c0f: $36 $02
    inc de                                        ; $4c11: $13
    scf                                           ; $4c12: $37
    ld [bc], a                                    ; $4c13: $02
    ld e, $37                                     ; $4c14: $1e $37
    ld [bc], a                                    ; $4c16: $02
    dec [hl]                                      ; $4c17: $35
    scf                                           ; $4c18: $37
    ld [bc], a                                    ; $4c19: $02
    ld b, e                                       ; $4c1a: $43
    scf                                           ; $4c1b: $37
    ld [bc], a                                    ; $4c1c: $02
    ld h, l                                       ; $4c1d: $65
    scf                                           ; $4c1e: $37
    ld [bc], a                                    ; $4c1f: $02
    sbc b                                         ; $4c20: $98
    scf                                           ; $4c21: $37
    ld [bc], a                                    ; $4c22: $02
    or [hl]                                       ; $4c23: $b6
    scf                                           ; $4c24: $37
    ld [bc], a                                    ; $4c25: $02
    jp nz, $0237                                  ; $4c26: $c2 $37 $02

    sbc $37                                       ; $4c29: $de $37
    ld [bc], a                                    ; $4c2b: $02
    xor $37                                       ; $4c2c: $ee $37
    ld [bc], a                                    ; $4c2e: $02
    inc a                                         ; $4c2f: $3c
    jr c, @+$04                                   ; $4c30: $38 $02

    ld l, b                                       ; $4c32: $68
    jr c, @+$04                                   ; $4c33: $38 $02

    sbc d                                         ; $4c35: $9a
    jr c, @+$04                                   ; $4c36: $38 $02

    and [hl]                                      ; $4c38: $a6
    jr c, @+$04                                   ; $4c39: $38 $02

    cp c                                          ; $4c3b: $b9
    jr c, @+$04                                   ; $4c3c: $38 $02

    rst $18                                       ; $4c3e: $df
    jr c, jr_040_4c43                             ; $4c3f: $38 $02

    inc d                                         ; $4c41: $14
    add hl, sp                                    ; $4c42: $39

jr_040_4c43:
    ld [bc], a                                    ; $4c43: $02
    ld [hl-], a                                   ; $4c44: $32
    add hl, sp                                    ; $4c45: $39
    ld [bc], a                                    ; $4c46: $02
    ld h, e                                       ; $4c47: $63
    add hl, sp                                    ; $4c48: $39
    ld [bc], a                                    ; $4c49: $02
    ld l, [hl]                                    ; $4c4a: $6e
    add hl, sp                                    ; $4c4b: $39
    ld [bc], a                                    ; $4c4c: $02
    xor b                                         ; $4c4d: $a8
    add hl, sp                                    ; $4c4e: $39
    ld [bc], a                                    ; $4c4f: $02
    ret c                                         ; $4c50: $d8

    add hl, sp                                    ; $4c51: $39
    ld [bc], a                                    ; $4c52: $02
    db $fd                                        ; $4c53: $fd
    add hl, sp                                    ; $4c54: $39
    ld [bc], a                                    ; $4c55: $02
    scf                                           ; $4c56: $37
    ld a, [hl-]                                   ; $4c57: $3a
    ld [bc], a                                    ; $4c58: $02
    ld e, e                                       ; $4c59: $5b
    ld a, [hl-]                                   ; $4c5a: $3a
    ld [bc], a                                    ; $4c5b: $02
    adc b                                         ; $4c5c: $88
    ld a, [hl-]                                   ; $4c5d: $3a
    ld [bc], a                                    ; $4c5e: $02
    xor l                                         ; $4c5f: $ad
    ld a, [hl-]                                   ; $4c60: $3a
    ld [bc], a                                    ; $4c61: $02
    jp $023a                                      ; $4c62: $c3 $3a $02


    ld sp, hl                                     ; $4c65: $f9
    ld a, [hl-]                                   ; $4c66: $3a
    ld [bc], a                                    ; $4c67: $02
    ld d, $3b                                     ; $4c68: $16 $3b
    ld [bc], a                                    ; $4c6a: $02
    dec hl                                        ; $4c6b: $2b
    dec sp                                        ; $4c6c: $3b

Call_040_4c6d:
    ld [bc], a                                    ; $4c6d: $02
    cpl                                           ; $4c6e: $2f
    dec sp                                        ; $4c6f: $3b
    ld [bc], a                                    ; $4c70: $02
    ld e, l                                       ; $4c71: $5d
    dec sp                                        ; $4c72: $3b
    ld [bc], a                                    ; $4c73: $02
    ld [hl], c                                    ; $4c74: $71
    dec sp                                        ; $4c75: $3b
    ld [bc], a                                    ; $4c76: $02
    add b                                         ; $4c77: $80
    dec sp                                        ; $4c78: $3b
    ld [bc], a                                    ; $4c79: $02
    adc l                                         ; $4c7a: $8d
    dec sp                                        ; $4c7b: $3b
    ld [bc], a                                    ; $4c7c: $02
    xor l                                         ; $4c7d: $ad
    dec sp                                        ; $4c7e: $3b
    ld [bc], a                                    ; $4c7f: $02
    push bc                                       ; $4c80: $c5
    dec sp                                        ; $4c81: $3b
    ld [bc], a                                    ; $4c82: $02
    rst $28                                       ; $4c83: $ef
    dec sp                                        ; $4c84: $3b
    ld [bc], a                                    ; $4c85: $02
    ei                                            ; $4c86: $fb
    dec sp                                        ; $4c87: $3b
    ld [bc], a                                    ; $4c88: $02
    ld de, $023c                                  ; $4c89: $11 $3c $02
    ld sp, $023c                                  ; $4c8c: $31 $3c $02
    ld [hl], e                                    ; $4c8f: $73
    inc a                                         ; $4c90: $3c
    ld [bc], a                                    ; $4c91: $02
    adc c                                         ; $4c92: $89
    inc a                                         ; $4c93: $3c
    ld [bc], a                                    ; $4c94: $02
    sub $3c                                       ; $4c95: $d6 $3c
    ld [bc], a                                    ; $4c97: $02
    dec b                                         ; $4c98: $05
    dec a                                         ; $4c99: $3d
    ld [bc], a                                    ; $4c9a: $02
    ld a, [hl+]                                   ; $4c9b: $2a
    dec a                                         ; $4c9c: $3d
    ld [bc], a                                    ; $4c9d: $02
    jr c, jr_040_4cdd                             ; $4c9e: $38 $3d

    ld [bc], a                                    ; $4ca0: $02
    ld e, d                                       ; $4ca1: $5a
    dec a                                         ; $4ca2: $3d
    ld [bc], a                                    ; $4ca3: $02
    ld h, e                                       ; $4ca4: $63
    dec a                                         ; $4ca5: $3d
    ld [bc], a                                    ; $4ca6: $02
    adc b                                         ; $4ca7: $88
    dec a                                         ; $4ca8: $3d
    ld [bc], a                                    ; $4ca9: $02
    sbc e                                         ; $4caa: $9b
    dec a                                         ; $4cab: $3d
    ld [bc], a                                    ; $4cac: $02
    or [hl]                                       ; $4cad: $b6
    dec a                                         ; $4cae: $3d
    ld [bc], a                                    ; $4caf: $02
    ld hl, sp+$3d                                 ; $4cb0: $f8 $3d
    ld [bc], a                                    ; $4cb2: $02
    dec c                                         ; $4cb3: $0d
    ld a, $02                                     ; $4cb4: $3e $02
    rra                                           ; $4cb6: $1f
    ld a, $02                                     ; $4cb7: $3e $02
    inc sp                                        ; $4cb9: $33
    ld a, $02                                     ; $4cba: $3e $02
    ld d, [hl]                                    ; $4cbc: $56
    ld a, $02                                     ; $4cbd: $3e $02
    ld h, h                                       ; $4cbf: $64
    ld a, $02                                     ; $4cc0: $3e $02
    ld l, l                                       ; $4cc2: $6d
    ld a, $02                                     ; $4cc3: $3e $02
    cp d                                          ; $4cc5: $ba
    ld a, $02                                     ; $4cc6: $3e $02
    adc $3e                                       ; $4cc8: $ce $3e
    ld [bc], a                                    ; $4cca: $02
    db $db                                        ; $4ccb: $db
    ld a, $02                                     ; $4ccc: $3e $02
    ld [c], a                                     ; $4cce: $e2
    ld a, $02                                     ; $4ccf: $3e $02
    inc b                                         ; $4cd1: $04
    ccf                                           ; $4cd2: $3f
    ld [bc], a                                    ; $4cd3: $02
    ld d, d                                       ; $4cd4: $52
    ccf                                           ; $4cd5: $3f
    ld [bc], a                                    ; $4cd6: $02
    ld l, e                                       ; $4cd7: $6b
    ccf                                           ; $4cd8: $3f
    ld [bc], a                                    ; $4cd9: $02
    add h                                         ; $4cda: $84
    ccf                                           ; $4cdb: $3f
    ld [bc], a                                    ; $4cdc: $02

jr_040_4cdd:
    adc d                                         ; $4cdd: $8a
    ccf                                           ; $4cde: $3f
    ld [bc], a                                    ; $4cdf: $02
    srl a                                         ; $4ce0: $cb $3f
    ld [bc], a                                    ; $4ce2: $02
    ld [$033f], a                                 ; $4ce3: $ea $3f $03
    ld bc, $0300                                  ; $4ce6: $01 $00 $03
    ld a, [bc]                                    ; $4ce9: $0a
    nop                                           ; $4cea: $00
    inc bc                                        ; $4ceb: $03
    add hl, hl                                    ; $4cec: $29
    nop                                           ; $4ced: $00
    inc bc                                        ; $4cee: $03
    dec a                                         ; $4cef: $3d
    nop                                           ; $4cf0: $00
    inc bc                                        ; $4cf1: $03
    ld h, h                                       ; $4cf2: $64
    nop                                           ; $4cf3: $00
    inc bc                                        ; $4cf4: $03
    adc d                                         ; $4cf5: $8a
    nop                                           ; $4cf6: $00
    inc bc                                        ; $4cf7: $03
    sbc h                                         ; $4cf8: $9c
    nop                                           ; $4cf9: $00
    inc bc                                        ; $4cfa: $03
    ld sp, hl                                     ; $4cfb: $f9
    nop                                           ; $4cfc: $00
    inc bc                                        ; $4cfd: $03
    add hl, de                                    ; $4cfe: $19
    ld bc, $5803                                  ; $4cff: $01 $03 $58
    ld bc, $7903                                  ; $4d02: $01 $03 $79
    ld bc, $9603                                  ; $4d05: $01 $03 $96
    ld bc, $dd03                                  ; $4d08: $01 $03 $dd
    ld bc, $e803                                  ; $4d0b: $01 $03 $e8
    ld bc, $8603                                  ; $4d0e: $01 $03 $86
    ld [bc], a                                    ; $4d11: $02
    inc bc                                        ; $4d12: $03
    adc a                                         ; $4d13: $8f
    ld [bc], a                                    ; $4d14: $02
    inc bc                                        ; $4d15: $03
    and b                                         ; $4d16: $a0
    ld [bc], a                                    ; $4d17: $02
    inc bc                                        ; $4d18: $03
    or a                                          ; $4d19: $b7
    ld [bc], a                                    ; $4d1a: $02
    inc bc                                        ; $4d1b: $03
    ret z                                         ; $4d1c: $c8

    ld [bc], a                                    ; $4d1d: $02
    inc bc                                        ; $4d1e: $03
    rst $38                                       ; $4d1f: $ff
    ld [bc], a                                    ; $4d20: $02
    inc bc                                        ; $4d21: $03
    ccf                                           ; $4d22: $3f
    inc bc                                        ; $4d23: $03
    inc bc                                        ; $4d24: $03
    ld d, b                                       ; $4d25: $50
    inc bc                                        ; $4d26: $03
    inc bc                                        ; $4d27: $03
    sub d                                         ; $4d28: $92
    inc bc                                        ; $4d29: $03
    inc bc                                        ; $4d2a: $03
    call Call_000_0303                            ; $4d2b: $cd $03 $03
    call c, Call_000_0303                         ; $4d2e: $dc $03 $03
    push af                                       ; $4d31: $f5
    inc bc                                        ; $4d32: $03
    inc bc                                        ; $4d33: $03
    dec hl                                        ; $4d34: $2b
    inc b                                         ; $4d35: $04
    inc bc                                        ; $4d36: $03
    ld d, l                                       ; $4d37: $55
    inc b                                         ; $4d38: $04
    inc bc                                        ; $4d39: $03
    ld [hl], h                                    ; $4d3a: $74
    inc b                                         ; $4d3b: $04
    inc bc                                        ; $4d3c: $03
    sub h                                         ; $4d3d: $94
    inc b                                         ; $4d3e: $04
    inc bc                                        ; $4d3f: $03
    sbc d                                         ; $4d40: $9a
    inc b                                         ; $4d41: $04
    inc bc                                        ; $4d42: $03
    jr nz, jr_040_4d4a                            ; $4d43: $20 $05

    inc bc                                        ; $4d45: $03
    dec h                                         ; $4d46: $25
    dec b                                         ; $4d47: $05
    inc bc                                        ; $4d48: $03
    ld e, l                                       ; $4d49: $5d

jr_040_4d4a:
    dec b                                         ; $4d4a: $05
    inc bc                                        ; $4d4b: $03
    add [hl]                                      ; $4d4c: $86
    dec b                                         ; $4d4d: $05
    inc bc                                        ; $4d4e: $03
    sbc h                                         ; $4d4f: $9c
    dec b                                         ; $4d50: $05
    inc bc                                        ; $4d51: $03
    xor [hl]                                      ; $4d52: $ae
    dec b                                         ; $4d53: $05
    inc bc                                        ; $4d54: $03
    cp d                                          ; $4d55: $ba
    dec b                                         ; $4d56: $05
    inc bc                                        ; $4d57: $03
    jp nc, $0305                                  ; $4d58: $d2 $05 $03

    ld l, $06                                     ; $4d5b: $2e $06
    inc bc                                        ; $4d5d: $03
    ccf                                           ; $4d5e: $3f
    ld b, $03                                     ; $4d5f: $06 $03
    ld d, e                                       ; $4d61: $53
    ld b, $03                                     ; $4d62: $06 $03
    ld e, d                                       ; $4d64: $5a
    ld b, $03                                     ; $4d65: $06 $03
    adc h                                         ; $4d67: $8c
    ld b, $03                                     ; $4d68: $06 $03
    cp b                                          ; $4d6a: $b8
    ld b, $03                                     ; $4d6b: $06 $03
    sbc $06                                       ; $4d6d: $de $06
    inc bc                                        ; $4d6f: $03
    ld b, b                                       ; $4d70: $40
    rlca                                          ; $4d71: $07
    inc bc                                        ; $4d72: $03
    ld e, l                                       ; $4d73: $5d
    rlca                                          ; $4d74: $07
    inc bc                                        ; $4d75: $03
    ld l, l                                       ; $4d76: $6d
    rlca                                          ; $4d77: $07
    inc bc                                        ; $4d78: $03
    sub d                                         ; $4d79: $92
    rlca                                          ; $4d7a: $07
    inc bc                                        ; $4d7b: $03
    add sp, $07                                   ; $4d7c: $e8 $07
    inc bc                                        ; $4d7e: $03
    inc de                                        ; $4d7f: $13
    ld [$5203], sp                                ; $4d80: $08 $03 $52
    ld [$7603], sp                                ; $4d83: $08 $03 $76
    ld [$8f03], sp                                ; $4d86: $08 $03 $8f
    ld [$a403], sp                                ; $4d89: $08 $03 $a4
    ld [$ac03], sp                                ; $4d8c: $08 $03 $ac
    ld [$db03], sp                                ; $4d8f: $08 $03 $db
    ld [$f603], sp                                ; $4d92: $08 $03 $f6
    ld [$2303], sp                                ; $4d95: $08 $03 $23
    add hl, bc                                    ; $4d98: $09
    inc bc                                        ; $4d99: $03
    inc [hl]                                      ; $4d9a: $34
    add hl, bc                                    ; $4d9b: $09
    inc bc                                        ; $4d9c: $03
    ld l, [hl]                                    ; $4d9d: $6e
    add hl, bc                                    ; $4d9e: $09
    inc bc                                        ; $4d9f: $03
    add b                                         ; $4da0: $80
    add hl, bc                                    ; $4da1: $09
    inc bc                                        ; $4da2: $03
    sbc a                                         ; $4da3: $9f
    add hl, bc                                    ; $4da4: $09
    inc bc                                        ; $4da5: $03
    xor b                                         ; $4da6: $a8
    add hl, bc                                    ; $4da7: $09
    inc bc                                        ; $4da8: $03
    ld h, [hl]                                    ; $4da9: $66
    ld a, [bc]                                    ; $4daa: $0a
    inc bc                                        ; $4dab: $03
    halt                                          ; $4dac: $76
    ld a, [bc]                                    ; $4dad: $0a
    inc bc                                        ; $4dae: $03
    rst $28                                       ; $4daf: $ef
    ld a, [bc]                                    ; $4db0: $0a
    inc bc                                        ; $4db1: $03
    ld c, $0b                                     ; $4db2: $0e $0b
    inc bc                                        ; $4db4: $03
    inc l                                         ; $4db5: $2c
    dec bc                                        ; $4db6: $0b
    inc bc                                        ; $4db7: $03
    ld c, d                                       ; $4db8: $4a
    dec bc                                        ; $4db9: $0b
    inc bc                                        ; $4dba: $03
    sub l                                         ; $4dbb: $95
    dec bc                                        ; $4dbc: $0b
    inc bc                                        ; $4dbd: $03
    sbc c                                         ; $4dbe: $99
    dec bc                                        ; $4dbf: $0b
    inc bc                                        ; $4dc0: $03
    and l                                         ; $4dc1: $a5
    dec bc                                        ; $4dc2: $0b
    inc bc                                        ; $4dc3: $03
    xor l                                         ; $4dc4: $ad
    dec bc                                        ; $4dc5: $0b
    inc bc                                        ; $4dc6: $03
    adc $0b                                       ; $4dc7: $ce $0b
    inc bc                                        ; $4dc9: $03
    rst $10                                       ; $4dca: $d7
    dec bc                                        ; $4dcb: $0b
    inc bc                                        ; $4dcc: $03
    ld a, [$030b]                                 ; $4dcd: $fa $0b $03
    dec h                                         ; $4dd0: $25
    inc c                                         ; $4dd1: $0c
    inc bc                                        ; $4dd2: $03
    jr c, @+$0e                                   ; $4dd3: $38 $0c

    inc bc                                        ; $4dd5: $03
    ld b, d                                       ; $4dd6: $42
    inc c                                         ; $4dd7: $0c
    inc bc                                        ; $4dd8: $03
    add d                                         ; $4dd9: $82
    inc c                                         ; $4dda: $0c
    inc bc                                        ; $4ddb: $03
    xor e                                         ; $4ddc: $ab
    inc c                                         ; $4ddd: $0c
    inc bc                                        ; $4dde: $03
    call nc, Call_000_030c                        ; $4ddf: $d4 $0c $03
    rst $28                                       ; $4de2: $ef
    inc c                                         ; $4de3: $0c
    inc bc                                        ; $4de4: $03
    add hl, hl                                    ; $4de5: $29
    dec c                                         ; $4de6: $0d
    inc bc                                        ; $4de7: $03
    ld d, [hl]                                    ; $4de8: $56
    dec c                                         ; $4de9: $0d
    inc bc                                        ; $4dea: $03
    ld a, b                                       ; $4deb: $78
    dec c                                         ; $4dec: $0d
    inc bc                                        ; $4ded: $03
    add l                                         ; $4dee: $85
    dec c                                         ; $4def: $0d
    inc bc                                        ; $4df0: $03
    sub b                                         ; $4df1: $90
    dec c                                         ; $4df2: $0d
    inc bc                                        ; $4df3: $03
    and h                                         ; $4df4: $a4
    dec c                                         ; $4df5: $0d
    inc bc                                        ; $4df6: $03
    jp nz, $030d                                  ; $4df7: $c2 $0d $03

    jp hl                                         ; $4dfa: $e9


    dec c                                         ; $4dfb: $0d
    inc bc                                        ; $4dfc: $03
    ldh a, [$0d]                                  ; $4dfd: $f0 $0d
    inc bc                                        ; $4dff: $03
    jr jr_040_4e10                                ; $4e00: $18 $0e

    inc bc                                        ; $4e02: $03
    ld a, $0e                                     ; $4e03: $3e $0e
    inc bc                                        ; $4e05: $03
    ld l, l                                       ; $4e06: $6d
    ld c, $03                                     ; $4e07: $0e $03
    xor l                                         ; $4e09: $ad
    ld c, $03                                     ; $4e0a: $0e $03
    ret nc                                        ; $4e0c: $d0

    ld c, $03                                     ; $4e0d: $0e $03
    nop                                           ; $4e0f: $00

jr_040_4e10:
    rrca                                          ; $4e10: $0f
    inc bc                                        ; $4e11: $03
    ld h, c                                       ; $4e12: $61
    rrca                                          ; $4e13: $0f
    inc bc                                        ; $4e14: $03
    adc l                                         ; $4e15: $8d
    rrca                                          ; $4e16: $0f
    inc bc                                        ; $4e17: $03
    xor d                                         ; $4e18: $aa
    rrca                                          ; $4e19: $0f
    inc bc                                        ; $4e1a: $03
    ret nc                                        ; $4e1b: $d0

    rrca                                          ; $4e1c: $0f
    inc bc                                        ; $4e1d: $03
    db $dd                                        ; $4e1e: $dd
    rrca                                          ; $4e1f: $0f
    inc bc                                        ; $4e20: $03
    db $ed                                        ; $4e21: $ed
    rrca                                          ; $4e22: $0f
    inc bc                                        ; $4e23: $03
    inc de                                        ; $4e24: $13
    db $10                                        ; $4e25: $10
    inc bc                                        ; $4e26: $03
    dec h                                         ; $4e27: $25
    db $10                                        ; $4e28: $10
    inc bc                                        ; $4e29: $03
    ld c, b                                       ; $4e2a: $48
    db $10                                        ; $4e2b: $10
    inc bc                                        ; $4e2c: $03
    ld h, e                                       ; $4e2d: $63
    db $10                                        ; $4e2e: $10
    inc bc                                        ; $4e2f: $03
    sub c                                         ; $4e30: $91
    db $10                                        ; $4e31: $10
    inc bc                                        ; $4e32: $03
    xor d                                         ; $4e33: $aa
    db $10                                        ; $4e34: $10
    inc bc                                        ; $4e35: $03
    db $ec                                        ; $4e36: $ec
    db $10                                        ; $4e37: $10
    inc bc                                        ; $4e38: $03
    inc bc                                        ; $4e39: $03
    ld de, $1103                                  ; $4e3a: $11 $03 $11
    ld de, $3703                                  ; $4e3d: $11 $03 $37
    ld de, $7b03                                  ; $4e40: $11 $03 $7b
    ld de, $b303                                  ; $4e43: $11 $03 $b3
    ld de, $ca03                                  ; $4e46: $11 $03 $ca
    ld de, $d403                                  ; $4e49: $11 $03 $d4
    ld de, $df03                                  ; $4e4c: $11 $03 $df
    ld de, $f403                                  ; $4e4f: $11 $03 $f4
    ld de, $1603                                  ; $4e52: $11 $03 $16
    ld [de], a                                    ; $4e55: $12
    inc bc                                        ; $4e56: $03
    dec h                                         ; $4e57: $25
    ld [de], a                                    ; $4e58: $12
    inc bc                                        ; $4e59: $03
    ld b, e                                       ; $4e5a: $43
    ld [de], a                                    ; $4e5b: $12
    inc bc                                        ; $4e5c: $03

Call_040_4e5d:
    ld d, [hl]                                    ; $4e5d: $56
    ld [de], a                                    ; $4e5e: $12
    inc bc                                        ; $4e5f: $03
    add a                                         ; $4e60: $87
    ld [de], a                                    ; $4e61: $12
    inc bc                                        ; $4e62: $03
    sbc a                                         ; $4e63: $9f
    ld [de], a                                    ; $4e64: $12
    inc bc                                        ; $4e65: $03
    jp c, $0312                                   ; $4e66: $da $12 $03

    ld bc, $0313                                  ; $4e69: $01 $13 $03
    inc de                                        ; $4e6c: $13
    inc de                                        ; $4e6d: $13
    inc bc                                        ; $4e6e: $03
    dec l                                         ; $4e6f: $2d
    inc de                                        ; $4e70: $13
    inc bc                                        ; $4e71: $03
    ld b, e                                       ; $4e72: $43
    inc de                                        ; $4e73: $13
    inc bc                                        ; $4e74: $03
    ld e, l                                       ; $4e75: $5d
    inc de                                        ; $4e76: $13
    inc bc                                        ; $4e77: $03
    ld a, b                                       ; $4e78: $78
    inc de                                        ; $4e79: $13
    inc bc                                        ; $4e7a: $03
    adc d                                         ; $4e7b: $8a
    inc de                                        ; $4e7c: $13
    inc bc                                        ; $4e7d: $03
    xor h                                         ; $4e7e: $ac
    inc de                                        ; $4e7f: $13
    inc bc                                        ; $4e80: $03
    cp c                                          ; $4e81: $b9
    inc de                                        ; $4e82: $13
    inc bc                                        ; $4e83: $03
    jp nc, Jump_000_0313                          ; $4e84: $d2 $13 $03

    pop hl                                        ; $4e87: $e1
    inc de                                        ; $4e88: $13
    inc bc                                        ; $4e89: $03
    rst $38                                       ; $4e8a: $ff
    inc de                                        ; $4e8b: $13
    inc bc                                        ; $4e8c: $03
    ld de, $0314                                  ; $4e8d: $11 $14 $03
    dec hl                                        ; $4e90: $2b
    inc d                                         ; $4e91: $14
    inc bc                                        ; $4e92: $03
    ld d, d                                       ; $4e93: $52
    inc d                                         ; $4e94: $14
    inc bc                                        ; $4e95: $03
    ld h, a                                       ; $4e96: $67
    inc d                                         ; $4e97: $14
    inc bc                                        ; $4e98: $03
    adc e                                         ; $4e99: $8b
    inc d                                         ; $4e9a: $14
    inc bc                                        ; $4e9b: $03
    and a                                         ; $4e9c: $a7
    inc d                                         ; $4e9d: $14
    inc bc                                        ; $4e9e: $03
    db $d3                                        ; $4e9f: $d3
    inc d                                         ; $4ea0: $14
    inc bc                                        ; $4ea1: $03
    db $ec                                        ; $4ea2: $ec
    inc d                                         ; $4ea3: $14
    inc bc                                        ; $4ea4: $03
    dec bc                                        ; $4ea5: $0b
    dec d                                         ; $4ea6: $15
    inc bc                                        ; $4ea7: $03
    dec h                                         ; $4ea8: $25
    dec d                                         ; $4ea9: $15
    inc bc                                        ; $4eaa: $03
    ld d, b                                       ; $4eab: $50
    dec d                                         ; $4eac: $15
    inc bc                                        ; $4ead: $03
    ld h, [hl]                                    ; $4eae: $66
    dec d                                         ; $4eaf: $15
    inc bc                                        ; $4eb0: $03
    add h                                         ; $4eb1: $84
    dec d                                         ; $4eb2: $15
    inc bc                                        ; $4eb3: $03
    jp nz, $0315                                  ; $4eb4: $c2 $15 $03

    ret c                                         ; $4eb7: $d8

    dec d                                         ; $4eb8: $15
    inc bc                                        ; $4eb9: $03
    cp $15                                        ; $4eba: $fe $15
    inc bc                                        ; $4ebc: $03
    jr jr_040_4ed5                                ; $4ebd: $18 $16

    inc bc                                        ; $4ebf: $03
    dec h                                         ; $4ec0: $25
    ld d, $03                                     ; $4ec1: $16 $03
    ld d, c                                       ; $4ec3: $51
    ld d, $03                                     ; $4ec4: $16 $03
    ld a, c                                       ; $4ec6: $79
    ld d, $03                                     ; $4ec7: $16 $03
    sub a                                         ; $4ec9: $97
    ld d, $03                                     ; $4eca: $16 $03
    pop de                                        ; $4ecc: $d1
    ld d, $03                                     ; $4ecd: $16 $03
    db $ed                                        ; $4ecf: $ed
    ld d, $03                                     ; $4ed0: $16 $03
    dec de                                        ; $4ed2: $1b
    rla                                           ; $4ed3: $17
    inc bc                                        ; $4ed4: $03

jr_040_4ed5:
    ld b, a                                       ; $4ed5: $47
    rla                                           ; $4ed6: $17
    inc bc                                        ; $4ed7: $03
    ld e, d                                       ; $4ed8: $5a
    rla                                           ; $4ed9: $17
    inc bc                                        ; $4eda: $03
    add d                                         ; $4edb: $82
    rla                                           ; $4edc: $17
    inc bc                                        ; $4edd: $03
    sub b                                         ; $4ede: $90
    rla                                           ; $4edf: $17
    inc bc                                        ; $4ee0: $03
    xor e                                         ; $4ee1: $ab
    rla                                           ; $4ee2: $17
    inc bc                                        ; $4ee3: $03
    or b                                          ; $4ee4: $b0
    rla                                           ; $4ee5: $17
    inc bc                                        ; $4ee6: $03
    cp a                                          ; $4ee7: $bf
    rla                                           ; $4ee8: $17
    inc bc                                        ; $4ee9: $03
    call $0317                                    ; $4eea: $cd $17 $03
    inc l                                         ; $4eed: $2c
    jr jr_040_4ef3                                ; $4eee: $18 $03

    ld b, l                                       ; $4ef0: $45
    jr jr_040_4ef6                                ; $4ef1: $18 $03

jr_040_4ef3:
    ld h, e                                       ; $4ef3: $63
    jr jr_040_4ef9                                ; $4ef4: $18 $03

jr_040_4ef6:
    add e                                         ; $4ef6: $83
    jr jr_040_4efc                                ; $4ef7: $18 $03

jr_040_4ef9:
    ret nz                                        ; $4ef9: $c0

    jr jr_040_4eff                                ; $4efa: $18 $03

jr_040_4efc:
    rst $10                                       ; $4efc: $d7
    jr jr_040_4f02                                ; $4efd: $18 $03

jr_040_4eff:
    ei                                            ; $4eff: $fb
    jr jr_040_4f05                                ; $4f00: $18 $03

jr_040_4f02:
    ld b, $19                                     ; $4f02: $06 $19
    inc bc                                        ; $4f04: $03

jr_040_4f05:
    inc h                                         ; $4f05: $24
    add hl, de                                    ; $4f06: $19
    inc bc                                        ; $4f07: $03
    ld c, c                                       ; $4f08: $49
    add hl, de                                    ; $4f09: $19
    inc bc                                        ; $4f0a: $03
    ld l, d                                       ; $4f0b: $6a
    add hl, de                                    ; $4f0c: $19
    inc bc                                        ; $4f0d: $03
    sbc l                                         ; $4f0e: $9d
    add hl, de                                    ; $4f0f: $19
    inc bc                                        ; $4f10: $03
    or c                                          ; $4f11: $b1
    add hl, de                                    ; $4f12: $19
    inc bc                                        ; $4f13: $03
    ldh [rNR24], a                                ; $4f14: $e0 $19
    inc bc                                        ; $4f16: $03
    ld a, [c]                                     ; $4f17: $f2
    add hl, de                                    ; $4f18: $19
    inc bc                                        ; $4f19: $03
    ld de, $031a                                  ; $4f1a: $11 $1a $03
    daa                                           ; $4f1d: $27
    ld a, [de]                                    ; $4f1e: $1a
    inc bc                                        ; $4f1f: $03
    ld e, h                                       ; $4f20: $5c
    ld a, [de]                                    ; $4f21: $1a
    inc bc                                        ; $4f22: $03
    sub c                                         ; $4f23: $91
    ld a, [de]                                    ; $4f24: $1a
    inc bc                                        ; $4f25: $03
    sbc b                                         ; $4f26: $98
    ld a, [de]                                    ; $4f27: $1a
    inc bc                                        ; $4f28: $03
    and d                                         ; $4f29: $a2
    ld a, [de]                                    ; $4f2a: $1a
    inc bc                                        ; $4f2b: $03
    ret nz                                        ; $4f2c: $c0

    ld a, [de]                                    ; $4f2d: $1a
    inc bc                                        ; $4f2e: $03
    adc $1a                                       ; $4f2f: $ce $1a
    inc bc                                        ; $4f31: $03
    ret c                                         ; $4f32: $d8

    ld a, [de]                                    ; $4f33: $1a
    inc bc                                        ; $4f34: $03
    ld [bc], a                                    ; $4f35: $02
    dec de                                        ; $4f36: $1b
    inc bc                                        ; $4f37: $03
    ld b, e                                       ; $4f38: $43
    dec de                                        ; $4f39: $1b
    inc bc                                        ; $4f3a: $03
    ld c, [hl]                                    ; $4f3b: $4e
    dec de                                        ; $4f3c: $1b
    inc bc                                        ; $4f3d: $03
    sub e                                         ; $4f3e: $93
    dec de                                        ; $4f3f: $1b
    inc bc                                        ; $4f40: $03
    xor b                                         ; $4f41: $a8
    dec de                                        ; $4f42: $1b
    inc bc                                        ; $4f43: $03
    jp nc, $031b                                  ; $4f44: $d2 $1b $03

    pop hl                                        ; $4f47: $e1
    dec de                                        ; $4f48: $1b
    inc bc                                        ; $4f49: $03
    sub a                                         ; $4f4a: $97
    inc e                                         ; $4f4b: $1c
    inc bc                                        ; $4f4c: $03
    and a                                         ; $4f4d: $a7
    inc e                                         ; $4f4e: $1c
    inc bc                                        ; $4f4f: $03
    sub $1c                                       ; $4f50: $d6 $1c
    inc bc                                        ; $4f52: $03
    dec [hl]                                      ; $4f53: $35
    dec e                                         ; $4f54: $1d
    inc bc                                        ; $4f55: $03
    ld e, c                                       ; $4f56: $59
    dec e                                         ; $4f57: $1d
    inc bc                                        ; $4f58: $03
    ld [hl], h                                    ; $4f59: $74
    dec e                                         ; $4f5a: $1d
    inc bc                                        ; $4f5b: $03
    sbc [hl]                                      ; $4f5c: $9e
    dec e                                         ; $4f5d: $1d
    inc bc                                        ; $4f5e: $03
    db $d3                                        ; $4f5f: $d3
    dec e                                         ; $4f60: $1d
    inc bc                                        ; $4f61: $03
    ld a, [bc]                                    ; $4f62: $0a
    ld e, $03                                     ; $4f63: $1e $03
    ld b, l                                       ; $4f65: $45
    ld e, $03                                     ; $4f66: $1e $03
    ld e, l                                       ; $4f68: $5d
    ld e, $03                                     ; $4f69: $1e $03
    sub c                                         ; $4f6b: $91
    ld e, $03                                     ; $4f6c: $1e $03
    and [hl]                                      ; $4f6e: $a6
    ld e, $03                                     ; $4f6f: $1e $03
    jp nz, Jump_000_031e                          ; $4f71: $c2 $1e $03

    dec de                                        ; $4f74: $1b
    rra                                           ; $4f75: $1f
    inc bc                                        ; $4f76: $03
    ld c, d                                       ; $4f77: $4a
    rra                                           ; $4f78: $1f
    inc bc                                        ; $4f79: $03
    ld e, e                                       ; $4f7a: $5b
    rra                                           ; $4f7b: $1f
    inc bc                                        ; $4f7c: $03
    ld a, c                                       ; $4f7d: $79
    rra                                           ; $4f7e: $1f
    inc bc                                        ; $4f7f: $03
    sbc d                                         ; $4f80: $9a
    rra                                           ; $4f81: $1f
    inc bc                                        ; $4f82: $03
    sbc a                                         ; $4f83: $9f
    rra                                           ; $4f84: $1f
    inc bc                                        ; $4f85: $03
    cp c                                          ; $4f86: $b9
    rra                                           ; $4f87: $1f
    inc bc                                        ; $4f88: $03
    xor $1f                                       ; $4f89: $ee $1f
    inc bc                                        ; $4f8b: $03
    ld [hl-], a                                   ; $4f8c: $32
    ld hl, $3a03                                  ; $4f8d: $21 $03 $3a
    ld hl, $4a03                                  ; $4f90: $21 $03 $4a
    ld hl, $5d03                                  ; $4f93: $21 $03 $5d
    ld hl, $9803                                  ; $4f96: $21 $03 $98
    ld hl, $b603                                  ; $4f99: $21 $03 $b6
    ld hl, $f203                                  ; $4f9c: $21 $03 $f2
    ld hl, $1803                                  ; $4f9f: $21 $03 $18
    ld [hl+], a                                   ; $4fa2: $22
    inc bc                                        ; $4fa3: $03
    ld c, d                                       ; $4fa4: $4a
    ld [hl+], a                                   ; $4fa5: $22
    inc bc                                        ; $4fa6: $03
    ld h, d                                       ; $4fa7: $62
    ld [hl+], a                                   ; $4fa8: $22
    inc bc                                        ; $4fa9: $03
    ld l, h                                       ; $4faa: $6c
    ld [hl+], a                                   ; $4fab: $22
    inc bc                                        ; $4fac: $03
    adc b                                         ; $4fad: $88
    ld [hl+], a                                   ; $4fae: $22
    inc bc                                        ; $4faf: $03
    ld a, [c]                                     ; $4fb0: $f2
    ld [hl+], a                                   ; $4fb1: $22
    inc bc                                        ; $4fb2: $03
    ld de, $0323                                  ; $4fb3: $11 $23 $03
    adc c                                         ; $4fb6: $89
    inc hl                                        ; $4fb7: $23
    inc bc                                        ; $4fb8: $03
    db $f4                                        ; $4fb9: $f4
    inc hl                                        ; $4fba: $23
    inc bc                                        ; $4fbb: $03
    ld [hl], h                                    ; $4fbc: $74
    inc h                                         ; $4fbd: $24
    inc bc                                        ; $4fbe: $03
    db $e4                                        ; $4fbf: $e4
    inc h                                         ; $4fc0: $24
    inc bc                                        ; $4fc1: $03
    ld d, l                                       ; $4fc2: $55
    dec h                                         ; $4fc3: $25
    inc bc                                        ; $4fc4: $03
    sub d                                         ; $4fc5: $92
    dec h                                         ; $4fc6: $25
    inc bc                                        ; $4fc7: $03
    call c, Call_000_0325                         ; $4fc8: $dc $25 $03
    dec de                                        ; $4fcb: $1b
    ld h, $03                                     ; $4fcc: $26 $03
    ld a, b                                       ; $4fce: $78
    ld h, $03                                     ; $4fcf: $26 $03
    adc a                                         ; $4fd1: $8f
    ld h, $03                                     ; $4fd2: $26 $03
    sub l                                         ; $4fd4: $95
    ld h, $03                                     ; $4fd5: $26 $03
    and [hl]                                      ; $4fd7: $a6
    ld h, $03                                     ; $4fd8: $26 $03
    ret z                                         ; $4fda: $c8

    ld h, $03                                     ; $4fdb: $26 $03
    db $db                                        ; $4fdd: $db
    ld h, $03                                     ; $4fde: $26 $03
    xor $26                                       ; $4fe0: $ee $26
    inc bc                                        ; $4fe2: $03
    db $fd                                        ; $4fe3: $fd
    ld h, $03                                     ; $4fe4: $26 $03
    ld a, [de]                                    ; $4fe6: $1a
    daa                                           ; $4fe7: $27
    inc bc                                        ; $4fe8: $03
    dec l                                         ; $4fe9: $2d
    daa                                           ; $4fea: $27
    inc bc                                        ; $4feb: $03
    ld c, e                                       ; $4fec: $4b
    daa                                           ; $4fed: $27
    inc bc                                        ; $4fee: $03
    ld a, h                                       ; $4fef: $7c
    daa                                           ; $4ff0: $27
    inc bc                                        ; $4ff1: $03
    adc a                                         ; $4ff2: $8f
    daa                                           ; $4ff3: $27
    inc bc                                        ; $4ff4: $03
    and l                                         ; $4ff5: $a5
    daa                                           ; $4ff6: $27
    inc bc                                        ; $4ff7: $03
    or b                                          ; $4ff8: $b0
    daa                                           ; $4ff9: $27
    inc bc                                        ; $4ffa: $03
    ret nc                                        ; $4ffb: $d0

    daa                                           ; $4ffc: $27
    inc bc                                        ; $4ffd: $03
    nop                                           ; $4ffe: $00
    jr z, jr_040_5004                             ; $4fff: $28 $03

    inc e                                         ; $5001: $1c
    jr z, jr_040_5007                             ; $5002: $28 $03

jr_040_5004:
    ld c, a                                       ; $5004: $4f
    jr z, jr_040_500a                             ; $5005: $28 $03

jr_040_5007:
    ld [hl], h                                    ; $5007: $74
    jr z, jr_040_500d                             ; $5008: $28 $03

jr_040_500a:
    rst $08                                       ; $500a: $cf
    jr z, jr_040_5010                             ; $500b: $28 $03

jr_040_500d:
    db $eb                                        ; $500d: $eb
    jr z, jr_040_5013                             ; $500e: $28 $03

jr_040_5010:
    inc de                                        ; $5010: $13
    add hl, hl                                    ; $5011: $29
    inc bc                                        ; $5012: $03

jr_040_5013:
    inc [hl]                                      ; $5013: $34
    add hl, hl                                    ; $5014: $29
    inc bc                                        ; $5015: $03
    ld e, [hl]                                    ; $5016: $5e
    add hl, hl                                    ; $5017: $29
    inc bc                                        ; $5018: $03
    ld a, b                                       ; $5019: $78
    add hl, hl                                    ; $501a: $29
    inc bc                                        ; $501b: $03
    add c                                         ; $501c: $81
    add hl, hl                                    ; $501d: $29
    inc bc                                        ; $501e: $03
    sbc [hl]                                      ; $501f: $9e
    add hl, hl                                    ; $5020: $29
    inc bc                                        ; $5021: $03
    xor b                                         ; $5022: $a8
    add hl, hl                                    ; $5023: $29
    inc bc                                        ; $5024: $03
    cp a                                          ; $5025: $bf
    add hl, hl                                    ; $5026: $29
    inc bc                                        ; $5027: $03
    adc $29                                       ; $5028: $ce $29
    inc bc                                        ; $502a: $03
    ld [c], a                                     ; $502b: $e2
    add hl, hl                                    ; $502c: $29
    inc bc                                        ; $502d: $03
    ld a, [c]                                     ; $502e: $f2
    add hl, hl                                    ; $502f: $29
    inc bc                                        ; $5030: $03
    nop                                           ; $5031: $00
    ld a, [hl+]                                   ; $5032: $2a
    inc bc                                        ; $5033: $03
    ld b, $2a                                     ; $5034: $06 $2a
    inc bc                                        ; $5036: $03
    ld d, $2a                                     ; $5037: $16 $2a
    inc bc                                        ; $5039: $03
    ld h, $2a                                     ; $503a: $26 $2a
    inc bc                                        ; $503c: $03
    inc l                                         ; $503d: $2c
    ld a, [hl+]                                   ; $503e: $2a
    inc bc                                        ; $503f: $03
    ld a, $2a                                     ; $5040: $3e $2a
    inc bc                                        ; $5042: $03
    ld b, [hl]                                    ; $5043: $46
    ld a, [hl+]                                   ; $5044: $2a
    inc bc                                        ; $5045: $03
    ld d, c                                       ; $5046: $51
    ld a, [hl+]                                   ; $5047: $2a
    inc bc                                        ; $5048: $03
    ld e, d                                       ; $5049: $5a
    ld a, [hl+]                                   ; $504a: $2a
    inc bc                                        ; $504b: $03
    ld h, b                                       ; $504c: $60
    ld a, [hl+]                                   ; $504d: $2a
    inc bc                                        ; $504e: $03
    ld h, a                                       ; $504f: $67
    ld a, [hl+]                                   ; $5050: $2a
    inc bc                                        ; $5051: $03
    ld [hl], c                                    ; $5052: $71
    ld a, [hl+]                                   ; $5053: $2a
    inc bc                                        ; $5054: $03
    halt                                          ; $5055: $76
    ld a, [hl+]                                   ; $5056: $2a
    inc bc                                        ; $5057: $03
    ld a, h                                       ; $5058: $7c
    ld a, [hl+]                                   ; $5059: $2a
    inc bc                                        ; $505a: $03
    add c                                         ; $505b: $81
    ld a, [hl+]                                   ; $505c: $2a
    inc bc                                        ; $505d: $03
    add [hl]                                      ; $505e: $86
    ld a, [hl+]                                   ; $505f: $2a
    inc bc                                        ; $5060: $03
    adc e                                         ; $5061: $8b
    ld a, [hl+]                                   ; $5062: $2a
    inc bc                                        ; $5063: $03
    sub d                                         ; $5064: $92
    ld a, [hl+]                                   ; $5065: $2a
    inc bc                                        ; $5066: $03
    sbc c                                         ; $5067: $99
    ld a, [hl+]                                   ; $5068: $2a
    inc bc                                        ; $5069: $03
    and b                                         ; $506a: $a0
    ld a, [hl+]                                   ; $506b: $2a
    inc bc                                        ; $506c: $03
    xor b                                         ; $506d: $a8
    ld a, [hl+]                                   ; $506e: $2a
    inc bc                                        ; $506f: $03
    or d                                          ; $5070: $b2
    ld a, [hl+]                                   ; $5071: $2a
    inc bc                                        ; $5072: $03
    ret nz                                        ; $5073: $c0

    ld a, [hl+]                                   ; $5074: $2a
    inc bc                                        ; $5075: $03
    jp z, Jump_000_032a                           ; $5076: $ca $2a $03

    reti                                          ; $5079: $d9


    ld a, [hl+]                                   ; $507a: $2a
    inc bc                                        ; $507b: $03
    ld [c], a                                     ; $507c: $e2
    ld a, [hl+]                                   ; $507d: $2a
    inc bc                                        ; $507e: $03
    db $ec                                        ; $507f: $ec
    ld a, [hl+]                                   ; $5080: $2a
    inc bc                                        ; $5081: $03
    ei                                            ; $5082: $fb
    ld a, [hl+]                                   ; $5083: $2a
    inc bc                                        ; $5084: $03
    rlca                                          ; $5085: $07
    dec hl                                        ; $5086: $2b
    inc bc                                        ; $5087: $03
    ld de, $032b                                  ; $5088: $11 $2b $03
    ld hl, $032b                                  ; $508b: $21 $2b $03
    inc l                                         ; $508e: $2c
    dec hl                                        ; $508f: $2b
    inc bc                                        ; $5090: $03
    add hl, sp                                    ; $5091: $39
    dec hl                                        ; $5092: $2b
    inc bc                                        ; $5093: $03
    ld b, c                                       ; $5094: $41
    dec hl                                        ; $5095: $2b
    inc bc                                        ; $5096: $03
    ld c, e                                       ; $5097: $4b
    dec hl                                        ; $5098: $2b
    inc bc                                        ; $5099: $03
    ld d, l                                       ; $509a: $55
    dec hl                                        ; $509b: $2b
    inc bc                                        ; $509c: $03
    ld h, b                                       ; $509d: $60
    dec hl                                        ; $509e: $2b
    inc bc                                        ; $509f: $03
    ld l, e                                       ; $50a0: $6b
    dec hl                                        ; $50a1: $2b
    inc bc                                        ; $50a2: $03
    ld a, h                                       ; $50a3: $7c
    dec hl                                        ; $50a4: $2b
    inc bc                                        ; $50a5: $03
    adc h                                         ; $50a6: $8c
    dec hl                                        ; $50a7: $2b
    inc bc                                        ; $50a8: $03
    sbc d                                         ; $50a9: $9a
    dec hl                                        ; $50aa: $2b
    inc bc                                        ; $50ab: $03
    and [hl]                                      ; $50ac: $a6
    dec hl                                        ; $50ad: $2b
    inc bc                                        ; $50ae: $03
    or c                                          ; $50af: $b1
    dec hl                                        ; $50b0: $2b
    inc bc                                        ; $50b1: $03
    cp e                                          ; $50b2: $bb
    dec hl                                        ; $50b3: $2b
    inc bc                                        ; $50b4: $03
    rst $00                                       ; $50b5: $c7
    dec hl                                        ; $50b6: $2b
    inc bc                                        ; $50b7: $03
    push de                                       ; $50b8: $d5
    dec hl                                        ; $50b9: $2b
    inc bc                                        ; $50ba: $03
    ldh [$2b], a                                  ; $50bb: $e0 $2b
    inc bc                                        ; $50bd: $03
    rst $28                                       ; $50be: $ef
    dec hl                                        ; $50bf: $2b
    inc bc                                        ; $50c0: $03
    ei                                            ; $50c1: $fb
    dec hl                                        ; $50c2: $2b
    inc bc                                        ; $50c3: $03
    rlca                                          ; $50c4: $07
    inc l                                         ; $50c5: $2c
    inc bc                                        ; $50c6: $03
    dec c                                         ; $50c7: $0d
    inc l                                         ; $50c8: $2c
    inc bc                                        ; $50c9: $03
    jr jr_040_50f8                                ; $50ca: $18 $2c

    inc bc                                        ; $50cc: $03
    inc h                                         ; $50cd: $24
    inc l                                         ; $50ce: $2c
    inc bc                                        ; $50cf: $03
    jr nc, @+$2e                                  ; $50d0: $30 $2c

    inc bc                                        ; $50d2: $03
    dec a                                         ; $50d3: $3d
    inc l                                         ; $50d4: $2c
    inc bc                                        ; $50d5: $03
    ld b, [hl]                                    ; $50d6: $46
    inc l                                         ; $50d7: $2c
    inc bc                                        ; $50d8: $03
    ld d, [hl]                                    ; $50d9: $56
    inc l                                         ; $50da: $2c
    inc bc                                        ; $50db: $03
    ld e, a                                       ; $50dc: $5f
    inc l                                         ; $50dd: $2c
    inc bc                                        ; $50de: $03
    ld l, d                                       ; $50df: $6a
    inc l                                         ; $50e0: $2c
    inc bc                                        ; $50e1: $03
    add b                                         ; $50e2: $80
    inc l                                         ; $50e3: $2c
    inc bc                                        ; $50e4: $03
    adc [hl]                                      ; $50e5: $8e
    inc l                                         ; $50e6: $2c
    inc bc                                        ; $50e7: $03
    sub a                                         ; $50e8: $97
    inc l                                         ; $50e9: $2c
    inc bc                                        ; $50ea: $03
    sbc l                                         ; $50eb: $9d
    inc l                                         ; $50ec: $2c
    inc bc                                        ; $50ed: $03
    and e                                         ; $50ee: $a3
    inc l                                         ; $50ef: $2c
    inc bc                                        ; $50f0: $03
    xor a                                         ; $50f1: $af
    inc l                                         ; $50f2: $2c
    inc bc                                        ; $50f3: $03
    cp [hl]                                       ; $50f4: $be
    inc l                                         ; $50f5: $2c
    inc bc                                        ; $50f6: $03
    ret z                                         ; $50f7: $c8

jr_040_50f8:
    inc l                                         ; $50f8: $2c
    inc bc                                        ; $50f9: $03
    db $d3                                        ; $50fa: $d3
    inc l                                         ; $50fb: $2c
    inc bc                                        ; $50fc: $03
    call c, $032c                                 ; $50fd: $dc $2c $03
    add sp, $2c                                   ; $5100: $e8 $2c

Jump_040_5102:
    inc bc                                        ; $5102: $03
    ld sp, hl                                     ; $5103: $f9
    inc l                                         ; $5104: $2c
    inc bc                                        ; $5105: $03
    dec b                                         ; $5106: $05
    dec l                                         ; $5107: $2d
    inc bc                                        ; $5108: $03
    rrca                                          ; $5109: $0f
    dec l                                         ; $510a: $2d
    inc bc                                        ; $510b: $03
    ld a, [de]                                    ; $510c: $1a
    dec l                                         ; $510d: $2d
    inc bc                                        ; $510e: $03
    ld h, $2d                                     ; $510f: $26 $2d
    inc bc                                        ; $5111: $03
    inc [hl]                                      ; $5112: $34
    dec l                                         ; $5113: $2d
    inc bc                                        ; $5114: $03
    ld b, c                                       ; $5115: $41
    dec l                                         ; $5116: $2d
    inc bc                                        ; $5117: $03
    ld c, d                                       ; $5118: $4a
    dec l                                         ; $5119: $2d
    inc bc                                        ; $511a: $03
    ld d, l                                       ; $511b: $55
    dec l                                         ; $511c: $2d
    inc bc                                        ; $511d: $03
    ld e, l                                       ; $511e: $5d
    dec l                                         ; $511f: $2d
    inc bc                                        ; $5120: $03
    ld h, e                                       ; $5121: $63
    dec l                                         ; $5122: $2d
    inc bc                                        ; $5123: $03
    ld [hl], b                                    ; $5124: $70
    dec l                                         ; $5125: $2d
    inc bc                                        ; $5126: $03
    ld a, l                                       ; $5127: $7d
    dec l                                         ; $5128: $2d
    inc bc                                        ; $5129: $03
    adc e                                         ; $512a: $8b
    dec l                                         ; $512b: $2d
    inc bc                                        ; $512c: $03
    sub e                                         ; $512d: $93
    dec l                                         ; $512e: $2d
    inc bc                                        ; $512f: $03
    sbc h                                         ; $5130: $9c
    dec l                                         ; $5131: $2d
    inc bc                                        ; $5132: $03
    and a                                         ; $5133: $a7
    dec l                                         ; $5134: $2d
    inc bc                                        ; $5135: $03
    or e                                          ; $5136: $b3
    dec l                                         ; $5137: $2d
    inc bc                                        ; $5138: $03
    cp c                                          ; $5139: $b9
    dec l                                         ; $513a: $2d
    inc bc                                        ; $513b: $03
    jp $032d                                      ; $513c: $c3 $2d $03


    ret                                           ; $513f: $c9


    dec l                                         ; $5140: $2d
    inc bc                                        ; $5141: $03
    ret nc                                        ; $5142: $d0

    dec l                                         ; $5143: $2d
    inc bc                                        ; $5144: $03
    db $dd                                        ; $5145: $dd
    dec l                                         ; $5146: $2d
    inc bc                                        ; $5147: $03
    jp hl                                         ; $5148: $e9


    dec l                                         ; $5149: $2d
    inc bc                                        ; $514a: $03
    or $2d                                        ; $514b: $f6 $2d
    inc bc                                        ; $514d: $03
    ld bc, $032e                                  ; $514e: $01 $2e $03
    dec c                                         ; $5151: $0d
    ld l, $03                                     ; $5152: $2e $03
    rla                                           ; $5154: $17
    ld l, $03                                     ; $5155: $2e $03
    ld hl, $032e                                  ; $5157: $21 $2e $03
    ld a, [hl+]                                   ; $515a: $2a
    ld l, $03                                     ; $515b: $2e $03
    ld a, [hl-]                                   ; $515d: $3a
    ld l, $03                                     ; $515e: $2e $03
    ld b, d                                       ; $5160: $42
    ld l, $03                                     ; $5161: $2e $03
    ld c, b                                       ; $5163: $48
    ld l, $03                                     ; $5164: $2e $03
    ld d, e                                       ; $5166: $53
    ld l, $03                                     ; $5167: $2e $03
    ld e, d                                       ; $5169: $5a
    ld l, $03                                     ; $516a: $2e $03
    ld l, b                                       ; $516c: $68
    ld l, $03                                     ; $516d: $2e $03
    ld [hl], e                                    ; $516f: $73
    ld l, $03                                     ; $5170: $2e $03
    ld a, d                                       ; $5172: $7a
    ld l, $03                                     ; $5173: $2e $03
    adc c                                         ; $5175: $89
    ld l, $03                                     ; $5176: $2e $03
    sub h                                         ; $5178: $94
    ld l, $03                                     ; $5179: $2e $03
    and e                                         ; $517b: $a3

Jump_040_517c:
    ld l, $03                                     ; $517c: $2e $03
    or c                                          ; $517e: $b1
    ld l, $03                                     ; $517f: $2e $03
    or [hl]                                       ; $5181: $b6
    ld l, $03                                     ; $5182: $2e $03
    cp e                                          ; $5184: $bb

Call_040_5185:
Jump_040_5185:
    ld l, $03                                     ; $5185: $2e $03
    jp nz, Jump_000_032e                          ; $5187: $c2 $2e $03

    call Call_000_032e                            ; $518a: $cd $2e $03
    jp c, Jump_000_032e                           ; $518d: $da $2e $03

    jp hl                                         ; $5190: $e9


    ld l, $03                                     ; $5191: $2e $03
    rst $30                                       ; $5193: $f7
    ld l, $03                                     ; $5194: $2e $03
    inc bc                                        ; $5196: $03
    cpl                                           ; $5197: $2f
    inc bc                                        ; $5198: $03
    ld [de], a                                    ; $5199: $12
    cpl                                           ; $519a: $2f
    inc bc                                        ; $519b: $03
    ld e, $2f                                     ; $519c: $1e $2f
    inc bc                                        ; $519e: $03
    jr z, jr_040_51d0                             ; $519f: $28 $2f

    inc bc                                        ; $51a1: $03
    dec [hl]                                      ; $51a2: $35
    cpl                                           ; $51a3: $2f
    inc bc                                        ; $51a4: $03
    ld b, b                                       ; $51a5: $40
    cpl                                           ; $51a6: $2f
    inc bc                                        ; $51a7: $03
    ld b, a                                       ; $51a8: $47
    cpl                                           ; $51a9: $2f
    inc bc                                        ; $51aa: $03
    ld e, c                                       ; $51ab: $59
    cpl                                           ; $51ac: $2f
    inc bc                                        ; $51ad: $03
    ld e, [hl]                                    ; $51ae: $5e
    cpl                                           ; $51af: $2f
    inc bc                                        ; $51b0: $03
    ld h, [hl]                                    ; $51b1: $66
    cpl                                           ; $51b2: $2f
    inc bc                                        ; $51b3: $03
    ld l, e                                       ; $51b4: $6b
    cpl                                           ; $51b5: $2f
    inc bc                                        ; $51b6: $03
    ld [hl], a                                    ; $51b7: $77
    cpl                                           ; $51b8: $2f
    inc bc                                        ; $51b9: $03
    adc b                                         ; $51ba: $88
    cpl                                           ; $51bb: $2f
    inc bc                                        ; $51bc: $03
    sub a                                         ; $51bd: $97
    cpl                                           ; $51be: $2f
    inc bc                                        ; $51bf: $03
    and d                                         ; $51c0: $a2
    cpl                                           ; $51c1: $2f
    inc bc                                        ; $51c2: $03
    or a                                          ; $51c3: $b7
    cpl                                           ; $51c4: $2f
    inc bc                                        ; $51c5: $03
    rst $00                                       ; $51c6: $c7
    cpl                                           ; $51c7: $2f
    inc bc                                        ; $51c8: $03
    call z, $032f                                 ; $51c9: $cc $2f $03
    ret c                                         ; $51cc: $d8

    cpl                                           ; $51cd: $2f
    inc bc                                        ; $51ce: $03
    rst $20                                       ; $51cf: $e7

jr_040_51d0:
    cpl                                           ; $51d0: $2f
    inc bc                                        ; $51d1: $03
    ld sp, hl                                     ; $51d2: $f9
    cpl                                           ; $51d3: $2f
    inc bc                                        ; $51d4: $03
    ld [de], a                                    ; $51d5: $12
    jr nc, jr_040_51db                            ; $51d6: $30 $03

    add hl, hl                                    ; $51d8: $29
    jr nc, jr_040_51de                            ; $51d9: $30 $03

jr_040_51db:
    ld b, a                                       ; $51db: $47
    jr nc, jr_040_51e1                            ; $51dc: $30 $03

jr_040_51de:
    ld h, e                                       ; $51de: $63
    jr nc, jr_040_51e4                            ; $51df: $30 $03

jr_040_51e1:
    adc b                                         ; $51e1: $88
    jr nc, jr_040_51e7                            ; $51e2: $30 $03

jr_040_51e4:
    and c                                         ; $51e4: $a1
    jr nc, jr_040_51ea                            ; $51e5: $30 $03

jr_040_51e7:
    ret nz                                        ; $51e7: $c0

    jr nc, jr_040_51ed                            ; $51e8: $30 $03

jr_040_51ea:
    rst $18                                       ; $51ea: $df
    jr nc, jr_040_51f0                            ; $51eb: $30 $03

jr_040_51ed:
    ld [c], a                                     ; $51ed: $e2
    jr nc, jr_040_51f3                            ; $51ee: $30 $03

jr_040_51f0:
    push hl                                       ; $51f0: $e5
    jr nc, jr_040_51f6                            ; $51f1: $30 $03

jr_040_51f3:
    db $ed                                        ; $51f3: $ed
    jr nc, jr_040_51f9                            ; $51f4: $30 $03

jr_040_51f6:
    ldh a, [$30]                                  ; $51f6: $f0 $30
    inc bc                                        ; $51f8: $03

jr_040_51f9:
    push af                                       ; $51f9: $f5
    jr nc, jr_040_51ff                            ; $51fa: $30 $03

    ld sp, hl                                     ; $51fc: $f9
    jr nc, jr_040_5202                            ; $51fd: $30 $03

jr_040_51ff:
    db $fd                                        ; $51ff: $fd
    jr nc, @+$05                                  ; $5200: $30 $03

jr_040_5202:
    ld a, [bc]                                    ; $5202: $0a
    ld sp, $2603                                  ; $5203: $31 $03 $26
    ld sp, $4703                                  ; $5206: $31 $03 $47
    ld sp, $5103                                  ; $5209: $31 $03 $51
    ld sp, $6303                                  ; $520c: $31 $03 $63
    ld sp, $7403                                  ; $520f: $31 $03 $74
    ld sp, $8703                                  ; $5212: $31 $03 $87
    ld sp, $a703                                  ; $5215: $31 $03 $a7
    ld sp, $b103                                  ; $5218: $31 $03 $b1
    ld sp, $c703                                  ; $521b: $31 $03 $c7
    ld sp, $d403                                  ; $521e: $31 $03 $d4
    ld sp, $ee03                                  ; $5221: $31 $03 $ee
    ld sp, $fd03                                  ; $5224: $31 $03 $fd
    ld sp, $1703                                  ; $5227: $31 $03 $17
    ld [hl-], a                                   ; $522a: $32
    inc bc                                        ; $522b: $03
    inc a                                         ; $522c: $3c
    ld [hl-], a                                   ; $522d: $32
    inc bc                                        ; $522e: $03
    ld e, h                                       ; $522f: $5c
    ld [hl-], a                                   ; $5230: $32
    inc bc                                        ; $5231: $03
    ld [hl], d                                    ; $5232: $72
    ld [hl-], a                                   ; $5233: $32
    inc bc                                        ; $5234: $03
    adc e                                         ; $5235: $8b
    ld [hl-], a                                   ; $5236: $32
    inc bc                                        ; $5237: $03
    sub l                                         ; $5238: $95
    ld [hl-], a                                   ; $5239: $32
    inc bc                                        ; $523a: $03
    xor b                                         ; $523b: $a8
    ld [hl-], a                                   ; $523c: $32
    inc bc                                        ; $523d: $03
    cp e                                          ; $523e: $bb
    ld [hl-], a                                   ; $523f: $32
    inc bc                                        ; $5240: $03
    push de                                       ; $5241: $d5
    ld [hl-], a                                   ; $5242: $32
    inc bc                                        ; $5243: $03
    ld sp, hl                                     ; $5244: $f9
    ld [hl-], a                                   ; $5245: $32
    inc bc                                        ; $5246: $03
    inc b                                         ; $5247: $04
    inc sp                                        ; $5248: $33
    inc bc                                        ; $5249: $03
    ld a, [de]                                    ; $524a: $1a
    inc sp                                        ; $524b: $33
    inc bc                                        ; $524c: $03
    dec [hl]                                      ; $524d: $35
    inc sp                                        ; $524e: $33
    inc bc                                        ; $524f: $03
    ld b, b                                       ; $5250: $40
    inc sp                                        ; $5251: $33
    inc bc                                        ; $5252: $03
    ld d, a                                       ; $5253: $57
    inc sp                                        ; $5254: $33
    inc bc                                        ; $5255: $03
    ld h, l                                       ; $5256: $65
    inc sp                                        ; $5257: $33
    inc bc                                        ; $5258: $03
    adc b                                         ; $5259: $88
    inc sp                                        ; $525a: $33
    inc bc                                        ; $525b: $03
    sub d                                         ; $525c: $92
    inc sp                                        ; $525d: $33
    inc bc                                        ; $525e: $03
    and e                                         ; $525f: $a3
    inc sp                                        ; $5260: $33
    inc bc                                        ; $5261: $03
    pop bc                                        ; $5262: $c1
    inc sp                                        ; $5263: $33
    inc bc                                        ; $5264: $03
    ld [c], a                                     ; $5265: $e2
    inc sp                                        ; $5266: $33
    inc bc                                        ; $5267: $03
    ei                                            ; $5268: $fb
    inc sp                                        ; $5269: $33
    inc bc                                        ; $526a: $03
    inc d                                         ; $526b: $14
    inc [hl]                                      ; $526c: $34
    inc bc                                        ; $526d: $03
    inc hl                                        ; $526e: $23
    inc [hl]                                      ; $526f: $34
    inc bc                                        ; $5270: $03
    ld [hl], $34                                  ; $5271: $36 $34
    inc bc                                        ; $5273: $03
    ld b, b                                       ; $5274: $40
    inc [hl]                                      ; $5275: $34
    inc bc                                        ; $5276: $03
    ld e, b                                       ; $5277: $58
    inc [hl]                                      ; $5278: $34
    inc bc                                        ; $5279: $03
    ld h, e                                       ; $527a: $63
    inc [hl]                                      ; $527b: $34
    inc bc                                        ; $527c: $03
    ld [hl], a                                    ; $527d: $77
    inc [hl]                                      ; $527e: $34
    inc bc                                        ; $527f: $03
    sub d                                         ; $5280: $92
    inc [hl]                                      ; $5281: $34
    inc bc                                        ; $5282: $03
    sbc a                                         ; $5283: $9f
    inc [hl]                                      ; $5284: $34
    inc bc                                        ; $5285: $03
    cp [hl]                                       ; $5286: $be
    inc [hl]                                      ; $5287: $34
    inc bc                                        ; $5288: $03
    jp nc, Jump_000_0334                          ; $5289: $d2 $34 $03

    rst $18                                       ; $528c: $df
    inc [hl]                                      ; $528d: $34
    inc bc                                        ; $528e: $03
    xor $34                                       ; $528f: $ee $34
    inc bc                                        ; $5291: $03
    cp $34                                        ; $5292: $fe $34
    inc bc                                        ; $5294: $03
    add hl, de                                    ; $5295: $19
    dec [hl]                                      ; $5296: $35
    inc bc                                        ; $5297: $03
    ld h, $35                                     ; $5298: $26 $35
    inc bc                                        ; $529a: $03
    ld b, d                                       ; $529b: $42
    dec [hl]                                      ; $529c: $35
    inc bc                                        ; $529d: $03
    ld d, b                                       ; $529e: $50
    dec [hl]                                      ; $529f: $35
    inc bc                                        ; $52a0: $03
    ld e, d                                       ; $52a1: $5a
    dec [hl]                                      ; $52a2: $35
    inc bc                                        ; $52a3: $03
    ld a, b                                       ; $52a4: $78
    dec [hl]                                      ; $52a5: $35
    inc bc                                        ; $52a6: $03
    sub e                                         ; $52a7: $93
    dec [hl]                                      ; $52a8: $35
    inc bc                                        ; $52a9: $03
    and a                                         ; $52aa: $a7
    dec [hl]                                      ; $52ab: $35
    inc bc                                        ; $52ac: $03
    cp d                                          ; $52ad: $ba
    dec [hl]                                      ; $52ae: $35
    inc bc                                        ; $52af: $03
    push bc                                       ; $52b0: $c5
    dec [hl]                                      ; $52b1: $35
    inc bc                                        ; $52b2: $03
    jp c, Jump_000_0335                           ; $52b3: $da $35 $03

    db $ec                                        ; $52b6: $ec
    dec [hl]                                      ; $52b7: $35
    inc bc                                        ; $52b8: $03
    ld b, $36                                     ; $52b9: $06 $36
    inc bc                                        ; $52bb: $03
    inc de                                        ; $52bc: $13
    ld [hl], $03                                  ; $52bd: $36 $03
    dec e                                         ; $52bf: $1d
    ld [hl], $03                                  ; $52c0: $36 $03
    ld a, $36                                     ; $52c2: $3e $36
    inc bc                                        ; $52c4: $03
    ld d, b                                       ; $52c5: $50
    ld [hl], $03                                  ; $52c6: $36 $03
    ld l, c                                       ; $52c8: $69
    ld [hl], $03                                  ; $52c9: $36 $03
    ld a, h                                       ; $52cb: $7c
    ld [hl], $03                                  ; $52cc: $36 $03
    add [hl]                                      ; $52ce: $86
    ld [hl], $03                                  ; $52cf: $36 $03
    xor b                                         ; $52d1: $a8
    ld [hl], $03                                  ; $52d2: $36 $03
    ld [c], a                                     ; $52d4: $e2
    ld [hl], $03                                  ; $52d5: $36 $03
    ld d, $37                                     ; $52d7: $16 $37
    inc bc                                        ; $52d9: $03
    ld b, e                                       ; $52da: $43
    scf                                           ; $52db: $37
    inc bc                                        ; $52dc: $03
    adc d                                         ; $52dd: $8a
    scf                                           ; $52de: $37
    inc bc                                        ; $52df: $03
    xor b                                         ; $52e0: $a8
    scf                                           ; $52e1: $37
    inc bc                                        ; $52e2: $03
    pop de                                        ; $52e3: $d1
    scf                                           ; $52e4: $37
    inc bc                                        ; $52e5: $03
    db $10                                        ; $52e6: $10
    jr c, jr_040_52ec                             ; $52e7: $38 $03

    ld d, e                                       ; $52e9: $53
    jr c, jr_040_52ef                             ; $52ea: $38 $03

jr_040_52ec:
    sub d                                         ; $52ec: $92
    jr c, jr_040_52f2                             ; $52ed: $38 $03

jr_040_52ef:
    or a                                          ; $52ef: $b7
    jr c, jr_040_52f5                             ; $52f0: $38 $03

jr_040_52f2:
    db $fc                                        ; $52f2: $fc
    jr c, jr_040_52f8                             ; $52f3: $38 $03

jr_040_52f5:
    cpl                                           ; $52f5: $2f
    add hl, sp                                    ; $52f6: $39
    inc bc                                        ; $52f7: $03

jr_040_52f8:
    halt                                          ; $52f8: $76
    add hl, sp                                    ; $52f9: $39
    inc bc                                        ; $52fa: $03
    xor h                                         ; $52fb: $ac
    add hl, sp                                    ; $52fc: $39
    inc bc                                        ; $52fd: $03
    pop hl                                        ; $52fe: $e1
    add hl, sp                                    ; $52ff: $39
    inc bc                                        ; $5300: $03
    ld h, $3a                                     ; $5301: $26 $3a
    inc bc                                        ; $5303: $03
    ld sp, $033a                                  ; $5304: $31 $3a $03
    jr c, jr_040_5343                             ; $5307: $38 $3a

    inc bc                                        ; $5309: $03
    ld b, l                                       ; $530a: $45
    ld a, [hl-]                                   ; $530b: $3a
    inc bc                                        ; $530c: $03
    ld d, c                                       ; $530d: $51
    ld a, [hl-]                                   ; $530e: $3a
    inc bc                                        ; $530f: $03
    ld e, l                                       ; $5310: $5d
    ld a, [hl-]                                   ; $5311: $3a
    inc bc                                        ; $5312: $03
    ld l, c                                       ; $5313: $69
    ld a, [hl-]                                   ; $5314: $3a
    inc bc                                        ; $5315: $03
    halt                                          ; $5316: $76
    ld a, [hl-]                                   ; $5317: $3a
    inc bc                                        ; $5318: $03
    add l                                         ; $5319: $85
    ld a, [hl-]                                   ; $531a: $3a
    inc bc                                        ; $531b: $03
    sub c                                         ; $531c: $91
    ld a, [hl-]                                   ; $531d: $3a
    inc bc                                        ; $531e: $03
    sbc [hl]                                      ; $531f: $9e
    ld a, [hl-]                                   ; $5320: $3a
    inc bc                                        ; $5321: $03
    xor c                                         ; $5322: $a9
    ld a, [hl-]                                   ; $5323: $3a
    inc bc                                        ; $5324: $03
    or e                                          ; $5325: $b3
    ld a, [hl-]                                   ; $5326: $3a
    inc bc                                        ; $5327: $03
    cp [hl]                                       ; $5328: $be
    ld a, [hl-]                                   ; $5329: $3a
    inc bc                                        ; $532a: $03
    ret z                                         ; $532b: $c8

    ld a, [hl-]                                   ; $532c: $3a
    inc bc                                        ; $532d: $03
    db $d3                                        ; $532e: $d3
    ld a, [hl-]                                   ; $532f: $3a
    inc bc                                        ; $5330: $03
    rst $18                                       ; $5331: $df
    ld a, [hl-]                                   ; $5332: $3a
    inc bc                                        ; $5333: $03
    ld [$033a], a                                 ; $5334: $ea $3a $03
    pop af                                        ; $5337: $f1
    ld a, [hl-]                                   ; $5338: $3a
    inc bc                                        ; $5339: $03
    cp $3a                                        ; $533a: $fe $3a
    inc bc                                        ; $533c: $03
    dec bc                                        ; $533d: $0b
    dec sp                                        ; $533e: $3b
    inc bc                                        ; $533f: $03
    inc d                                         ; $5340: $14
    dec sp                                        ; $5341: $3b
    inc bc                                        ; $5342: $03

jr_040_5343:
    ld e, $3b                                     ; $5343: $1e $3b
    inc bc                                        ; $5345: $03
    dec l                                         ; $5346: $2d
    dec sp                                        ; $5347: $3b
    inc bc                                        ; $5348: $03
    jr c, jr_040_5386                             ; $5349: $38 $3b

    inc bc                                        ; $534b: $03
    ld b, h                                       ; $534c: $44
    dec sp                                        ; $534d: $3b
    inc bc                                        ; $534e: $03
    ld c, a                                       ; $534f: $4f
    dec sp                                        ; $5350: $3b
    inc bc                                        ; $5351: $03
    ld e, c                                       ; $5352: $59
    dec sp                                        ; $5353: $3b
    inc bc                                        ; $5354: $03
    ld h, l                                       ; $5355: $65
    dec sp                                        ; $5356: $3b
    inc bc                                        ; $5357: $03
    ld [hl], d                                    ; $5358: $72
    dec sp                                        ; $5359: $3b
    inc bc                                        ; $535a: $03
    ld a, a                                       ; $535b: $7f
    dec sp                                        ; $535c: $3b
    inc bc                                        ; $535d: $03
    adc b                                         ; $535e: $88
    dec sp                                        ; $535f: $3b
    inc bc                                        ; $5360: $03
    sub h                                         ; $5361: $94
    dec sp                                        ; $5362: $3b
    inc bc                                        ; $5363: $03
    sbc a                                         ; $5364: $9f
    dec sp                                        ; $5365: $3b
    inc bc                                        ; $5366: $03
    xor h                                         ; $5367: $ac
    dec sp                                        ; $5368: $3b
    inc bc                                        ; $5369: $03
    or a                                          ; $536a: $b7
    dec sp                                        ; $536b: $3b
    inc bc                                        ; $536c: $03
    push bc                                       ; $536d: $c5
    dec sp                                        ; $536e: $3b
    inc bc                                        ; $536f: $03
    rst $08                                       ; $5370: $cf
    dec sp                                        ; $5371: $3b
    inc bc                                        ; $5372: $03
    jp c, Jump_000_033b                           ; $5373: $da $3b $03

    ldh [$3b], a                                  ; $5376: $e0 $3b
    inc bc                                        ; $5378: $03
    db $ec                                        ; $5379: $ec
    dec sp                                        ; $537a: $3b
    inc bc                                        ; $537b: $03
    or $3b                                        ; $537c: $f6 $3b
    inc bc                                        ; $537e: $03
    ld bc, $033c                                  ; $537f: $01 $3c $03
    inc c                                         ; $5382: $0c
    inc a                                         ; $5383: $3c
    inc bc                                        ; $5384: $03
    rla                                           ; $5385: $17

jr_040_5386:
    inc a                                         ; $5386: $3c
    inc bc                                        ; $5387: $03
    dec h                                         ; $5388: $25
    inc a                                         ; $5389: $3c
    inc bc                                        ; $538a: $03
    dec hl                                        ; $538b: $2b
    inc a                                         ; $538c: $3c
    inc bc                                        ; $538d: $03
    ld [hl], $3c                                  ; $538e: $36 $3c
    inc bc                                        ; $5390: $03
    ld b, d                                       ; $5391: $42
    inc a                                         ; $5392: $3c
    inc bc                                        ; $5393: $03
    ld b, a                                       ; $5394: $47
    inc a                                         ; $5395: $3c
    inc bc                                        ; $5396: $03
    ld d, c                                       ; $5397: $51
    inc a                                         ; $5398: $3c
    inc bc                                        ; $5399: $03
    ld e, d                                       ; $539a: $5a
    inc a                                         ; $539b: $3c
    inc bc                                        ; $539c: $03
    ld h, [hl]                                    ; $539d: $66
    inc a                                         ; $539e: $3c
    inc bc                                        ; $539f: $03
    ld [hl], h                                    ; $53a0: $74
    inc a                                         ; $53a1: $3c
    inc bc                                        ; $53a2: $03
    add b                                         ; $53a3: $80
    inc a                                         ; $53a4: $3c
    inc bc                                        ; $53a5: $03
    adc h                                         ; $53a6: $8c
    inc a                                         ; $53a7: $3c
    inc bc                                        ; $53a8: $03
    sbc c                                         ; $53a9: $99
    inc a                                         ; $53aa: $3c
    inc bc                                        ; $53ab: $03
    and d                                         ; $53ac: $a2
    inc a                                         ; $53ad: $3c
    inc bc                                        ; $53ae: $03
    xor a                                         ; $53af: $af
    inc a                                         ; $53b0: $3c
    inc bc                                        ; $53b1: $03
    cp l                                          ; $53b2: $bd
    inc a                                         ; $53b3: $3c
    inc bc                                        ; $53b4: $03
    jp nz, $033c                                  ; $53b5: $c2 $3c $03

    pop de                                        ; $53b8: $d1
    inc a                                         ; $53b9: $3c
    inc bc                                        ; $53ba: $03
    db $dd                                        ; $53bb: $dd
    inc a                                         ; $53bc: $3c
    inc bc                                        ; $53bd: $03
    rst $20                                       ; $53be: $e7
    inc a                                         ; $53bf: $3c
    inc bc                                        ; $53c0: $03
    di                                            ; $53c1: $f3
    inc a                                         ; $53c2: $3c
    inc bc                                        ; $53c3: $03
    cp $3c                                        ; $53c4: $fe $3c
    inc bc                                        ; $53c6: $03
    ld a, [bc]                                    ; $53c7: $0a
    dec a                                         ; $53c8: $3d
    inc bc                                        ; $53c9: $03
    inc d                                         ; $53ca: $14
    dec a                                         ; $53cb: $3d
    inc bc                                        ; $53cc: $03
    jr nz, jr_040_540c                            ; $53cd: $20 $3d

    inc bc                                        ; $53cf: $03
    add hl, hl                                    ; $53d0: $29
    dec a                                         ; $53d1: $3d
    inc bc                                        ; $53d2: $03
    inc [hl]                                      ; $53d3: $34
    dec a                                         ; $53d4: $3d
    inc bc                                        ; $53d5: $03
    ld b, b                                       ; $53d6: $40
    dec a                                         ; $53d7: $3d
    inc bc                                        ; $53d8: $03
    ld d, e                                       ; $53d9: $53
    dec a                                         ; $53da: $3d
    inc bc                                        ; $53db: $03
    ld e, a                                       ; $53dc: $5f
    dec a                                         ; $53dd: $3d
    inc bc                                        ; $53de: $03
    ld l, b                                       ; $53df: $68
    dec a                                         ; $53e0: $3d
    inc bc                                        ; $53e1: $03
    ld [hl], h                                    ; $53e2: $74
    dec a                                         ; $53e3: $3d
    inc bc                                        ; $53e4: $03
    add c                                         ; $53e5: $81
    dec a                                         ; $53e6: $3d
    inc bc                                        ; $53e7: $03
    adc d                                         ; $53e8: $8a
    dec a                                         ; $53e9: $3d
    inc bc                                        ; $53ea: $03
    sub [hl]                                      ; $53eb: $96
    dec a                                         ; $53ec: $3d
    inc bc                                        ; $53ed: $03
    sbc a                                         ; $53ee: $9f
    dec a                                         ; $53ef: $3d
    inc bc                                        ; $53f0: $03
    xor c                                         ; $53f1: $a9
    dec a                                         ; $53f2: $3d
    inc bc                                        ; $53f3: $03
    or h                                          ; $53f4: $b4
    dec a                                         ; $53f5: $3d
    inc bc                                        ; $53f6: $03
    ret nz                                        ; $53f7: $c0

    dec a                                         ; $53f8: $3d
    inc bc                                        ; $53f9: $03
    call z, $033d                                 ; $53fa: $cc $3d $03
    push de                                       ; $53fd: $d5
    dec a                                         ; $53fe: $3d
    inc bc                                        ; $53ff: $03
    ldh [$3d], a                                  ; $5400: $e0 $3d
    inc bc                                        ; $5402: $03
    db $ed                                        ; $5403: $ed
    dec a                                         ; $5404: $3d
    inc bc                                        ; $5405: $03
    or $3d                                        ; $5406: $f6 $3d
    inc bc                                        ; $5408: $03
    nop                                           ; $5409: $00
    ld a, $03                                     ; $540a: $3e $03

jr_040_540c:
    dec bc                                        ; $540c: $0b
    ld a, $03                                     ; $540d: $3e $03
    rla                                           ; $540f: $17
    ld a, $03                                     ; $5410: $3e $03
    ld h, $3e                                     ; $5412: $26 $3e
    inc bc                                        ; $5414: $03
    inc sp                                        ; $5415: $33
    ld a, $03                                     ; $5416: $3e $03
    inc a                                         ; $5418: $3c
    ld a, $03                                     ; $5419: $3e $03
    ld b, [hl]                                    ; $541b: $46
    ld a, $03                                     ; $541c: $3e $03
    ld d, h                                       ; $541e: $54
    ld a, $03                                     ; $541f: $3e $03
    ld e, [hl]                                    ; $5421: $5e
    ld a, $03                                     ; $5422: $3e $03
    ld l, h                                       ; $5424: $6c
    ld a, $03                                     ; $5425: $3e $03
    ld [hl], b                                    ; $5427: $70
    ld a, $03                                     ; $5428: $3e $03
    ld a, l                                       ; $542a: $7d
    ld a, $03                                     ; $542b: $3e $03
    add l                                         ; $542d: $85
    ld a, $03                                     ; $542e: $3e $03
    sub d                                         ; $5430: $92
    ld a, $03                                     ; $5431: $3e $03
    sbc d                                         ; $5433: $9a
    ld a, $03                                     ; $5434: $3e $03
    sbc h                                         ; $5436: $9c
    ld a, $03                                     ; $5437: $3e $03
    and l                                         ; $5439: $a5
    ld a, $03                                     ; $543a: $3e $03
    ret nc                                        ; $543c: $d0

    ld a, $03                                     ; $543d: $3e $03
    db $ed                                        ; $543f: $ed
    ld a, $03                                     ; $5440: $3e $03
    inc l                                         ; $5442: $2c
    ccf                                           ; $5443: $3f
    inc bc                                        ; $5444: $03
    ld h, h                                       ; $5445: $64
    ccf                                           ; $5446: $3f
    inc bc                                        ; $5447: $03
    add b                                         ; $5448: $80
    ccf                                           ; $5449: $3f
    inc bc                                        ; $544a: $03
    and [hl]                                      ; $544b: $a6
    ccf                                           ; $544c: $3f
    inc bc                                        ; $544d: $03
    ret z                                         ; $544e: $c8

    ccf                                           ; $544f: $3f
    inc bc                                        ; $5450: $03
    pop hl                                        ; $5451: $e1
    ccf                                           ; $5452: $3f
    inc b                                         ; $5453: $04
    ld bc, $0400                                  ; $5454: $01 $00 $04
    dec l                                         ; $5457: $2d
    nop                                           ; $5458: $00
    inc b                                         ; $5459: $04
    ld c, d                                       ; $545a: $4a
    nop                                           ; $545b: $00
    inc b                                         ; $545c: $04
    ld l, e                                       ; $545d: $6b
    nop                                           ; $545e: $00
    inc b                                         ; $545f: $04
    add l                                         ; $5460: $85
    nop                                           ; $5461: $00
    inc b                                         ; $5462: $04
    and d                                         ; $5463: $a2
    nop                                           ; $5464: $00
    inc b                                         ; $5465: $04
    pop bc                                        ; $5466: $c1
    nop                                           ; $5467: $00
    inc b                                         ; $5468: $04
    db $ed                                        ; $5469: $ed
    nop                                           ; $546a: $00
    inc b                                         ; $546b: $04
    ld [de], a                                    ; $546c: $12
    ld bc, $4104                                  ; $546d: $01 $04 $41
    ld bc, $6104                                  ; $5470: $01 $04 $61
    ld bc, $8804                                  ; $5473: $01 $04 $88
    ld bc, $ae04                                  ; $5476: $01 $04 $ae
    ld bc, $d704                                  ; $5479: $01 $04 $d7
    ld bc, $0c04                                  ; $547c: $01 $04 $0c
    ld [bc], a                                    ; $547f: $02
    inc b                                         ; $5480: $04
    ld c, c                                       ; $5481: $49
    ld [bc], a                                    ; $5482: $02
    inc b                                         ; $5483: $04
    ld a, b                                       ; $5484: $78
    ld [bc], a                                    ; $5485: $02
    inc b                                         ; $5486: $04
    and a                                         ; $5487: $a7
    ld [bc], a                                    ; $5488: $02
    inc b                                         ; $5489: $04
    cp c                                          ; $548a: $b9
    ld [bc], a                                    ; $548b: $02
    inc b                                         ; $548c: $04
    db $ed                                        ; $548d: $ed
    ld [bc], a                                    ; $548e: $02
    inc b                                         ; $548f: $04
    add hl, hl                                    ; $5490: $29
    inc bc                                        ; $5491: $03
    inc b                                         ; $5492: $04
    ld e, d                                       ; $5493: $5a
    inc bc                                        ; $5494: $03
    inc b                                         ; $5495: $04
    sbc e                                         ; $5496: $9b
    inc bc                                        ; $5497: $03
    inc b                                         ; $5498: $04
    push de                                       ; $5499: $d5
    inc bc                                        ; $549a: $03
    inc b                                         ; $549b: $04
    add sp, $03                                   ; $549c: $e8 $03
    inc b                                         ; $549e: $04
    daa                                           ; $549f: $27
    inc b                                         ; $54a0: $04
    inc b                                         ; $54a1: $04
    ld c, h                                       ; $54a2: $4c
    inc b                                         ; $54a3: $04
    inc b                                         ; $54a4: $04
    ld a, e                                       ; $54a5: $7b
    inc b                                         ; $54a6: $04
    inc b                                         ; $54a7: $04
    and c                                         ; $54a8: $a1
    inc b                                         ; $54a9: $04
    inc b                                         ; $54aa: $04
    or a                                          ; $54ab: $b7
    inc b                                         ; $54ac: $04
    inc b                                         ; $54ad: $04
    db $db                                        ; $54ae: $db
    inc b                                         ; $54af: $04
    inc b                                         ; $54b0: $04
    ld [de], a                                    ; $54b1: $12
    dec b                                         ; $54b2: $05
    inc b                                         ; $54b3: $04
    scf                                           ; $54b4: $37
    dec b                                         ; $54b5: $05
    inc b                                         ; $54b6: $04
    ld l, c                                       ; $54b7: $69
    dec b                                         ; $54b8: $05
    inc b                                         ; $54b9: $04
    ld a, e                                       ; $54ba: $7b
    dec b                                         ; $54bb: $05
    inc b                                         ; $54bc: $04
    adc [hl]                                      ; $54bd: $8e
    dec b                                         ; $54be: $05
    inc b                                         ; $54bf: $04
    or d                                          ; $54c0: $b2
    dec b                                         ; $54c1: $05
    inc b                                         ; $54c2: $04
    and $05                                       ; $54c3: $e6 $05
    inc b                                         ; $54c5: $04
    ld d, $06                                     ; $54c6: $16 $06
    inc b                                         ; $54c8: $04
    add hl, hl                                    ; $54c9: $29
    ld b, $04                                     ; $54ca: $06 $04
    ld d, h                                       ; $54cc: $54
    ld b, $04                                     ; $54cd: $06 $04
    ld a, b                                       ; $54cf: $78
    ld b, $04                                     ; $54d0: $06 $04
    sbc h                                         ; $54d2: $9c
    ld b, $04                                     ; $54d3: $06 $04
    cp e                                          ; $54d5: $bb
    ld b, $04                                     ; $54d6: $06 $04
    ld a, [c]                                     ; $54d8: $f2
    ld b, $04                                     ; $54d9: $06 $04
    rrca                                          ; $54db: $0f
    rlca                                          ; $54dc: $07
    inc b                                         ; $54dd: $04
    ld b, l                                       ; $54de: $45
    rlca                                          ; $54df: $07
    inc b                                         ; $54e0: $04
    ld h, l                                       ; $54e1: $65
    rlca                                          ; $54e2: $07
    inc b                                         ; $54e3: $04
    ld a, b                                       ; $54e4: $78
    rlca                                          ; $54e5: $07
    inc b                                         ; $54e6: $04
    xor a                                         ; $54e7: $af
    rlca                                          ; $54e8: $07
    inc b                                         ; $54e9: $04
    db $dd                                        ; $54ea: $dd
    rlca                                          ; $54eb: $07
    inc b                                         ; $54ec: $04
    inc bc                                        ; $54ed: $03
    ld [$2b04], sp                                ; $54ee: $08 $04 $2b
    ld [$4804], sp                                ; $54f1: $08 $04 $48
    ld [$7004], sp                                ; $54f4: $08 $04 $70
    ld [$9204], sp                                ; $54f7: $08 $04 $92
    ld [$b904], sp                                ; $54fa: $08 $04 $b9
    ld [$e404], sp                                ; $54fd: $08 $04 $e4
    ld [$fe04], sp                                ; $5500: $08 $04 $fe
    ld [$2904], sp                                ; $5503: $08 $04 $29
    add hl, bc                                    ; $5506: $09
    inc b                                         ; $5507: $04
    ld c, a                                       ; $5508: $4f
    add hl, bc                                    ; $5509: $09
    inc b                                         ; $550a: $04
    ld a, d                                       ; $550b: $7a
    add hl, bc                                    ; $550c: $09
    inc b                                         ; $550d: $04
    and l                                         ; $550e: $a5
    add hl, bc                                    ; $550f: $09
    inc b                                         ; $5510: $04
    cp h                                          ; $5511: $bc
    add hl, bc                                    ; $5512: $09
    inc b                                         ; $5513: $04
    call nc, Call_000_0409                        ; $5514: $d4 $09 $04
    ld b, $0a                                     ; $5517: $06 $0a
    inc b                                         ; $5519: $04
    cpl                                           ; $551a: $2f
    ld a, [bc]                                    ; $551b: $0a
    inc b                                         ; $551c: $04
    ld h, a                                       ; $551d: $67
    ld a, [bc]                                    ; $551e: $0a
    inc b                                         ; $551f: $04
    sub d                                         ; $5520: $92
    ld a, [bc]                                    ; $5521: $0a
    inc b                                         ; $5522: $04
    cp e                                          ; $5523: $bb
    ld a, [bc]                                    ; $5524: $0a
    inc b                                         ; $5525: $04
    and $0a                                       ; $5526: $e6 $0a
    inc b                                         ; $5528: $04
    inc c                                         ; $5529: $0c
    dec bc                                        ; $552a: $0b
    inc b                                         ; $552b: $04
    ld [hl], $0b                                  ; $552c: $36 $0b
    inc b                                         ; $552e: $04
    ld c, b                                       ; $552f: $48
    dec bc                                        ; $5530: $0b
    inc b                                         ; $5531: $04
    ld [hl], a                                    ; $5532: $77
    dec bc                                        ; $5533: $0b
    inc b                                         ; $5534: $04
    and e                                         ; $5535: $a3
    dec bc                                        ; $5536: $0b
    inc b                                         ; $5537: $04
    ret nz                                        ; $5538: $c0

    dec bc                                        ; $5539: $0b
    inc b                                         ; $553a: $04
    pop af                                        ; $553b: $f1
    dec bc                                        ; $553c: $0b
    inc b                                         ; $553d: $04
    inc l                                         ; $553e: $2c
    inc c                                         ; $553f: $0c
    inc b                                         ; $5540: $04
    ld d, l                                       ; $5541: $55
    inc c                                         ; $5542: $0c
    inc b                                         ; $5543: $04
    ld a, l                                       ; $5544: $7d
    inc c                                         ; $5545: $0c
    inc b                                         ; $5546: $04
    sbc a                                         ; $5547: $9f
    inc c                                         ; $5548: $0c
    inc b                                         ; $5549: $04
    jp Jump_000_040c                              ; $554a: $c3 $0c $04


    db $f4                                        ; $554d: $f4
    inc c                                         ; $554e: $0c
    inc b                                         ; $554f: $04
    jr nz, jr_040_555f                            ; $5550: $20 $0d

    inc b                                         ; $5552: $04
    ld a, [hl-]                                   ; $5553: $3a
    dec c                                         ; $5554: $0d
    inc b                                         ; $5555: $04
    ld h, l                                       ; $5556: $65
    dec c                                         ; $5557: $0d
    inc b                                         ; $5558: $04
    sbc a                                         ; $5559: $9f
    dec c                                         ; $555a: $0d
    inc b                                         ; $555b: $04
    or e                                          ; $555c: $b3
    dec c                                         ; $555d: $0d
    inc b                                         ; $555e: $04

jr_040_555f:
    pop af                                        ; $555f: $f1
    dec c                                         ; $5560: $0d
    inc b                                         ; $5561: $04
    inc hl                                        ; $5562: $23
    ld c, $04                                     ; $5563: $0e $04
    ld a, $0e                                     ; $5565: $3e $0e
    inc b                                         ; $5567: $04
    ld l, e                                       ; $5568: $6b
    ld c, $04                                     ; $5569: $0e $04
    add h                                         ; $556b: $84
    ld c, $04                                     ; $556c: $0e $04
    sub [hl]                                      ; $556e: $96
    ld c, $04                                     ; $556f: $0e $04
    xor l                                         ; $5571: $ad
    ld c, $04                                     ; $5572: $0e $04
    or h                                          ; $5574: $b4
    ld c, $04                                     ; $5575: $0e $04
    cp h                                          ; $5577: $bc
    ld c, $04                                     ; $5578: $0e $04
    call nz, Call_000_040e                        ; $557a: $c4 $0e $04
    rrc [hl]                                      ; $557d: $cb $0e
    inc b                                         ; $557f: $04
    db $d3                                        ; $5580: $d3
    ld c, $04                                     ; $5581: $0e $04
    reti                                          ; $5583: $d9


    ld c, $04                                     ; $5584: $0e $04
    ldh [$0e], a                                  ; $5586: $e0 $0e
    inc b                                         ; $5588: $04
    rst $20                                       ; $5589: $e7
    ld c, $04                                     ; $558a: $0e $04
    db $ec                                        ; $558c: $ec
    ld c, $04                                     ; $558d: $0e $04
    di                                            ; $558f: $f3
    ld c, $04                                     ; $5590: $0e $04
    cp $0e                                        ; $5592: $fe $0e
    inc b                                         ; $5594: $04
    inc bc                                        ; $5595: $03
    rrca                                          ; $5596: $0f
    inc b                                         ; $5597: $04
    ld [$040f], sp                                ; $5598: $08 $0f $04
    inc d                                         ; $559b: $14
    rrca                                          ; $559c: $0f
    inc b                                         ; $559d: $04
    dec e                                         ; $559e: $1d
    rrca                                          ; $559f: $0f
    inc b                                         ; $55a0: $04
    ld [hl+], a                                   ; $55a1: $22
    rrca                                          ; $55a2: $0f
    inc b                                         ; $55a3: $04
    ld h, $0f                                     ; $55a4: $26 $0f
    inc b                                         ; $55a6: $04
    ld a, [hl-]                                   ; $55a7: $3a
    rrca                                          ; $55a8: $0f
    inc b                                         ; $55a9: $04
    ld e, d                                       ; $55aa: $5a
    rrca                                          ; $55ab: $0f
    inc b                                         ; $55ac: $04
    add [hl]                                      ; $55ad: $86
    rrca                                          ; $55ae: $0f
    inc b                                         ; $55af: $04
    sbc b                                         ; $55b0: $98
    rrca                                          ; $55b1: $0f
    inc b                                         ; $55b2: $04
    or [hl]                                       ; $55b3: $b6
    rrca                                          ; $55b4: $0f
    inc b                                         ; $55b5: $04
    pop de                                        ; $55b6: $d1
    rrca                                          ; $55b7: $0f
    inc b                                         ; $55b8: $04
    ldh [rIF], a                                  ; $55b9: $e0 $0f
    inc b                                         ; $55bb: $04
    rla                                           ; $55bc: $17
    db $10                                        ; $55bd: $10
    inc b                                         ; $55be: $04
    dec [hl]                                      ; $55bf: $35
    db $10                                        ; $55c0: $10
    inc b                                         ; $55c1: $04
    ld c, a                                       ; $55c2: $4f
    db $10                                        ; $55c3: $10
    inc b                                         ; $55c4: $04
    ld l, l                                       ; $55c5: $6d
    db $10                                        ; $55c6: $10
    inc b                                         ; $55c7: $04
    and c                                         ; $55c8: $a1
    db $10                                        ; $55c9: $10
    inc b                                         ; $55ca: $04
    cp a                                          ; $55cb: $bf
    db $10                                        ; $55cc: $10
    inc b                                         ; $55cd: $04
    ldh [rNR10], a                                ; $55ce: $e0 $10
    inc b                                         ; $55d0: $04
    dec c                                         ; $55d1: $0d
    ld de, $3104                                  ; $55d2: $11 $04 $31
    ld de, $4f04                                  ; $55d5: $11 $04 $4f
    ld de, $6e04                                  ; $55d8: $11 $04 $6e
    ld de, $8704                                  ; $55db: $11 $04 $87
    ld de, $a404                                  ; $55de: $11 $04 $a4
    ld de, $a604                                  ; $55e1: $11 $04 $a6
    ld de, $a804                                  ; $55e4: $11 $04 $a8
    ld de, $c104                                  ; $55e7: $11 $04 $c1
    ld de, $d004                                  ; $55ea: $11 $04 $d0
    ld de, $d904                                  ; $55ed: $11 $04 $d9
    ld de, $e204                                  ; $55f0: $11 $04 $e2
    ld de, $ec04                                  ; $55f3: $11 $04 $ec
    ld de, $f504                                  ; $55f6: $11 $04 $f5
    ld de, $1504                                  ; $55f9: $11 $04 $15
    ld [de], a                                    ; $55fc: $12
    inc b                                         ; $55fd: $04
    cpl                                           ; $55fe: $2f
    ld [de], a                                    ; $55ff: $12
    inc b                                         ; $5600: $04
    ld c, a                                       ; $5601: $4f
    ld [de], a                                    ; $5602: $12
    inc b                                         ; $5603: $04
    ld h, c                                       ; $5604: $61
    ld [de], a                                    ; $5605: $12
    inc b                                         ; $5606: $04
    ld [hl], d                                    ; $5607: $72
    ld [de], a                                    ; $5608: $12
    inc b                                         ; $5609: $04
    adc l                                         ; $560a: $8d
    ld [de], a                                    ; $560b: $12
    inc b                                         ; $560c: $04
    or d                                          ; $560d: $b2
    ld [de], a                                    ; $560e: $12
    inc b                                         ; $560f: $04
    db $e3                                        ; $5610: $e3
    ld [de], a                                    ; $5611: $12
    inc b                                         ; $5612: $04
    jr nz, jr_040_5628                            ; $5613: $20 $13

    inc b                                         ; $5615: $04
    ld c, l                                       ; $5616: $4d
    inc de                                        ; $5617: $13
    inc b                                         ; $5618: $04
    sbc c                                         ; $5619: $99
    inc de                                        ; $561a: $13
    inc b                                         ; $561b: $04
    cp d                                          ; $561c: $ba
    inc de                                        ; $561d: $13
    inc b                                         ; $561e: $04
    call c, $0413                                 ; $561f: $dc $13 $04
    jp hl                                         ; $5622: $e9


    inc de                                        ; $5623: $13
    inc b                                         ; $5624: $04
    ld [$0414], sp                                ; $5625: $08 $14 $04

jr_040_5628:
    dec sp                                        ; $5628: $3b
    inc d                                         ; $5629: $14
    inc b                                         ; $562a: $04
    ld d, l                                       ; $562b: $55
    inc d                                         ; $562c: $14
    inc b                                         ; $562d: $04
    ld a, h                                       ; $562e: $7c
    inc d                                         ; $562f: $14
    inc b                                         ; $5630: $04
    sub a                                         ; $5631: $97
    inc d                                         ; $5632: $14
    inc b                                         ; $5633: $04
    xor h                                         ; $5634: $ac
    inc d                                         ; $5635: $14
    inc b                                         ; $5636: $04
    db $d3                                        ; $5637: $d3
    inc d                                         ; $5638: $14
    inc b                                         ; $5639: $04
    cp $14                                        ; $563a: $fe $14
    inc b                                         ; $563c: $04
    dec l                                         ; $563d: $2d
    dec d                                         ; $563e: $15
    inc b                                         ; $563f: $04
    ld c, b                                       ; $5640: $48
    dec d                                         ; $5641: $15
    inc b                                         ; $5642: $04
    ld e, h                                       ; $5643: $5c
    dec d                                         ; $5644: $15
    inc b                                         ; $5645: $04
    ld a, l                                       ; $5646: $7d
    dec d                                         ; $5647: $15
    inc b                                         ; $5648: $04
    and h                                         ; $5649: $a4
    dec d                                         ; $564a: $15
    inc b                                         ; $564b: $04
    cp e                                          ; $564c: $bb
    dec d                                         ; $564d: $15
    inc b                                         ; $564e: $04
    jp c, Jump_000_0415                           ; $564f: $da $15 $04

    ld [$0415], a                                 ; $5652: $ea $15 $04
    inc h                                         ; $5655: $24
    ld d, $04                                     ; $5656: $16 $04
    cpl                                           ; $5658: $2f
    ld d, $04                                     ; $5659: $16 $04
    ld a, [hl-]                                   ; $565b: $3a
    ld d, $04                                     ; $565c: $16 $04
    ld b, c                                       ; $565e: $41
    ld d, $04                                     ; $565f: $16 $04
    ld c, e                                       ; $5661: $4b
    ld d, $04                                     ; $5662: $16 $04
    ld h, c                                       ; $5664: $61
    ld d, $04                                     ; $5665: $16 $04
    ld [hl], b                                    ; $5667: $70
    ld d, $04                                     ; $5668: $16 $04
    cp c                                          ; $566a: $b9
    ld d, $04                                     ; $566b: $16 $04
    ld bc, $0417                                  ; $566d: $01 $17 $04
    ld de, $0417                                  ; $5670: $11 $17 $04
    jr nz, @+$19                                  ; $5673: $20 $17

    inc b                                         ; $5675: $04
    ld b, c                                       ; $5676: $41
    rla                                           ; $5677: $17
    inc b                                         ; $5678: $04
    ld l, [hl]                                    ; $5679: $6e
    rla                                           ; $567a: $17
    inc b                                         ; $567b: $04
    jp nc, Jump_000_0417                          ; $567c: $d2 $17 $04

    dec b                                         ; $567f: $05
    jr jr_040_5686                                ; $5680: $18 $04

    ld h, h                                       ; $5682: $64
    jr jr_040_5689                                ; $5683: $18 $04

    add l                                         ; $5685: $85

jr_040_5686:
    jr @+$06                                      ; $5686: $18 $04

    xor c                                         ; $5688: $a9

jr_040_5689:
    jr @+$06                                      ; $5689: $18 $04

    ldh a, [rNR23]                                ; $568b: $f0 $18
    inc b                                         ; $568d: $04
    or $18                                        ; $568e: $f6 $18
    inc b                                         ; $5690: $04
    dec de                                        ; $5691: $1b
    add hl, de                                    ; $5692: $19
    inc b                                         ; $5693: $04
    ld l, h                                       ; $5694: $6c
    add hl, de                                    ; $5695: $19
    inc b                                         ; $5696: $04
    xor d                                         ; $5697: $aa
    add hl, de                                    ; $5698: $19
    inc b                                         ; $5699: $04
    ld [c], a                                     ; $569a: $e2
    add hl, de                                    ; $569b: $19
    inc b                                         ; $569c: $04
    inc b                                         ; $569d: $04
    ld a, [de]                                    ; $569e: $1a
    inc b                                         ; $569f: $04
    ld c, b                                       ; $56a0: $48
    ld a, [de]                                    ; $56a1: $1a
    inc b                                         ; $56a2: $04
    cp e                                          ; $56a3: $bb
    ld a, [de]                                    ; $56a4: $1a
    inc b                                         ; $56a5: $04

Jump_040_56a6:
    db $d3                                        ; $56a6: $d3
    ld a, [de]                                    ; $56a7: $1a
    inc b                                         ; $56a8: $04
    scf                                           ; $56a9: $37
    dec de                                        ; $56aa: $1b
    inc b                                         ; $56ab: $04
    sub a                                         ; $56ac: $97
    dec de                                        ; $56ad: $1b
    inc b                                         ; $56ae: $04
    and l                                         ; $56af: $a5
    dec de                                        ; $56b0: $1b
    inc b                                         ; $56b1: $04
    ld [$041c], sp                                ; $56b2: $08 $1c $04
    dec l                                         ; $56b5: $2d
    inc e                                         ; $56b6: $1c
    inc b                                         ; $56b7: $04
    ld a, $1c                                     ; $56b8: $3e $1c
    inc b                                         ; $56ba: $04
    halt                                          ; $56bb: $76
    inc e                                         ; $56bc: $1c
    inc b                                         ; $56bd: $04
    adc a                                         ; $56be: $8f
    inc e                                         ; $56bf: $1c
    inc b                                         ; $56c0: $04
    cp l                                          ; $56c1: $bd
    inc e                                         ; $56c2: $1c
    inc b                                         ; $56c3: $04
    jp nz, Jump_000_041c                          ; $56c4: $c2 $1c $04

    ld b, a                                       ; $56c7: $47
    dec e                                         ; $56c8: $1d
    inc b                                         ; $56c9: $04
    ld c, h                                       ; $56ca: $4c
    dec e                                         ; $56cb: $1d
    inc b                                         ; $56cc: $04
    add c                                         ; $56cd: $81
    dec e                                         ; $56ce: $1d
    inc b                                         ; $56cf: $04
    adc l                                         ; $56d0: $8d
    dec e                                         ; $56d1: $1d
    inc b                                         ; $56d2: $04
    ld [de], a                                    ; $56d3: $12
    ld e, $04                                     ; $56d4: $1e $04
    ld c, a                                       ; $56d6: $4f
    ld e, $04                                     ; $56d7: $1e $04
    or d                                          ; $56d9: $b2
    ld e, $04                                     ; $56da: $1e $04
    ret                                           ; $56dc: $c9


    ld e, $04                                     ; $56dd: $1e $04
    reti                                          ; $56df: $d9


    ld e, $04                                     ; $56e0: $1e $04
    add sp, $1e                                   ; $56e2: $e8 $1e
    inc b                                         ; $56e4: $04
    ld bc, $041f                                  ; $56e5: $01 $1f $04
    dec [hl]                                      ; $56e8: $35
    rra                                           ; $56e9: $1f
    inc b                                         ; $56ea: $04
    ld c, c                                       ; $56eb: $49
    rra                                           ; $56ec: $1f
    inc b                                         ; $56ed: $04
    ld [hl], d                                    ; $56ee: $72
    rra                                           ; $56ef: $1f
    inc b                                         ; $56f0: $04
    sbc [hl]                                      ; $56f1: $9e
    rra                                           ; $56f2: $1f
    inc b                                         ; $56f3: $04
    ret nc                                        ; $56f4: $d0

    rra                                           ; $56f5: $1f
    inc b                                         ; $56f6: $04
    ld [de], a                                    ; $56f7: $12
    jr nz, jr_040_56fe                            ; $56f8: $20 $04

    ld c, b                                       ; $56fa: $48
    jr nz, @+$06                                  ; $56fb: $20 $04

Call_040_56fd:
    xor b                                         ; $56fd: $a8

jr_040_56fe:
    jr nz, jr_040_5704                            ; $56fe: $20 $04

    call $0420                                    ; $5700: $cd $20 $04
    db $e4                                        ; $5703: $e4

jr_040_5704:
    jr nz, jr_040_570a                            ; $5704: $20 $04

    ld d, a                                       ; $5706: $57
    ld hl, $7404                                  ; $5707: $21 $04 $74

jr_040_570a:
    ld hl, $cc04                                  ; $570a: $21 $04 $cc
    ld hl, $e504                                  ; $570d: $21 $04 $e5
    ld hl, $5404                                  ; $5710: $21 $04 $54
    ld [hl+], a                                   ; $5713: $22
    inc b                                         ; $5714: $04
    ld a, b                                       ; $5715: $78
    ld [hl+], a                                   ; $5716: $22
    inc b                                         ; $5717: $04
    adc b                                         ; $5718: $88
    ld [hl+], a                                   ; $5719: $22
    inc b                                         ; $571a: $04
    sub a                                         ; $571b: $97
    ld [hl+], a                                   ; $571c: $22
    inc b                                         ; $571d: $04
    db $d3                                        ; $571e: $d3
    ld [hl+], a                                   ; $571f: $22
    inc b                                         ; $5720: $04
    rst $18                                       ; $5721: $df
    ld [hl+], a                                   ; $5722: $22
    inc b                                         ; $5723: $04
    inc bc                                        ; $5724: $03
    inc hl                                        ; $5725: $23
    inc b                                         ; $5726: $04
    dec e                                         ; $5727: $1d
    inc hl                                        ; $5728: $23
    inc b                                         ; $5729: $04
    scf                                           ; $572a: $37
    inc hl                                        ; $572b: $23
    inc b                                         ; $572c: $04
    ld c, e                                       ; $572d: $4b
    inc hl                                        ; $572e: $23
    inc b                                         ; $572f: $04
    ld e, a                                       ; $5730: $5f
    inc hl                                        ; $5731: $23
    inc b                                         ; $5732: $04
    ld l, c                                       ; $5733: $69
    inc hl                                        ; $5734: $23
    inc b                                         ; $5735: $04
    and d                                         ; $5736: $a2
    inc hl                                        ; $5737: $23
    inc b                                         ; $5738: $04
    or l                                          ; $5739: $b5
    inc hl                                        ; $573a: $23
    inc b                                         ; $573b: $04
    rst $38                                       ; $573c: $ff
    inc hl                                        ; $573d: $23
    inc b                                         ; $573e: $04
    ld [hl+], a                                   ; $573f: $22
    inc h                                         ; $5740: $24
    inc b                                         ; $5741: $04
    ld b, b                                       ; $5742: $40
    inc h                                         ; $5743: $24
    inc b                                         ; $5744: $04
    ld h, a                                       ; $5745: $67
    inc h                                         ; $5746: $24
    inc b                                         ; $5747: $04
    adc b                                         ; $5748: $88
    inc h                                         ; $5749: $24
    inc b                                         ; $574a: $04
    and e                                         ; $574b: $a3
    inc h                                         ; $574c: $24
    inc b                                         ; $574d: $04
    or a                                          ; $574e: $b7
    inc h                                         ; $574f: $24
    inc b                                         ; $5750: $04
    sbc $24                                       ; $5751: $de $24
    inc b                                         ; $5753: $04
    db $ed                                        ; $5754: $ed
    inc h                                         ; $5755: $24
    inc b                                         ; $5756: $04
    ld [bc], a                                    ; $5757: $02
    dec h                                         ; $5758: $25
    inc b                                         ; $5759: $04
    rrca                                          ; $575a: $0f
    dec h                                         ; $575b: $25
    inc b                                         ; $575c: $04
    dec de                                        ; $575d: $1b
    dec h                                         ; $575e: $25
    inc b                                         ; $575f: $04
    ld d, h                                       ; $5760: $54
    dec h                                         ; $5761: $25
    inc b                                         ; $5762: $04
    xor d                                         ; $5763: $aa
    dec h                                         ; $5764: $25
    inc b                                         ; $5765: $04
    call nz, $0425                                ; $5766: $c4 $25 $04
    call z, $0425                                 ; $5769: $cc $25 $04
    db $e3                                        ; $576c: $e3
    dec h                                         ; $576d: $25
    inc b                                         ; $576e: $04
    rst $28                                       ; $576f: $ef
    dec h                                         ; $5770: $25
    inc b                                         ; $5771: $04
    jr jr_040_579a                                ; $5772: $18 $26

    inc b                                         ; $5774: $04
    inc sp                                        ; $5775: $33
    ld h, $04                                     ; $5776: $26 $04
    sub a                                         ; $5778: $97
    ld h, $04                                     ; $5779: $26 $04
    db $d3                                        ; $577b: $d3
    ld h, $04                                     ; $577c: $26 $04
    dec a                                         ; $577e: $3d
    daa                                           ; $577f: $27
    inc b                                         ; $5780: $04
    ld b, l                                       ; $5781: $45
    daa                                           ; $5782: $27
    inc b                                         ; $5783: $04
    ld d, h                                       ; $5784: $54
    daa                                           ; $5785: $27
    inc b                                         ; $5786: $04
    ld l, l                                       ; $5787: $6d
    daa                                           ; $5788: $27
    inc b                                         ; $5789: $04
    xor [hl]                                      ; $578a: $ae
    daa                                           ; $578b: $27
    inc b                                         ; $578c: $04
    db $d3                                        ; $578d: $d3
    daa                                           ; $578e: $27
    inc b                                         ; $578f: $04
    add hl, bc                                    ; $5790: $09
    jr z, jr_040_5797                             ; $5791: $28 $04

    rra                                           ; $5793: $1f
    jr z, jr_040_579a                             ; $5794: $28 $04

    ld b, c                                       ; $5796: $41

jr_040_5797:
    jr z, jr_040_579d                             ; $5797: $28 $04

    ld c, h                                       ; $5799: $4c

jr_040_579a:
    jr z, jr_040_57a0                             ; $579a: $28 $04

    ld e, l                                       ; $579c: $5d

jr_040_579d:
    jr z, jr_040_57a3                             ; $579d: $28 $04

    or a                                          ; $579f: $b7

jr_040_57a0:
    jr z, jr_040_57a6                             ; $57a0: $28 $04

    rst $00                                       ; $57a2: $c7

jr_040_57a3:
    jr z, jr_040_57a9                             ; $57a3: $28 $04

    nop                                           ; $57a5: $00

jr_040_57a6:
    add hl, hl                                    ; $57a6: $29
    inc b                                         ; $57a7: $04
    inc hl                                        ; $57a8: $23

jr_040_57a9:
    add hl, hl                                    ; $57a9: $29
    inc b                                         ; $57aa: $04
    add c                                         ; $57ab: $81
    add hl, hl                                    ; $57ac: $29
    inc b                                         ; $57ad: $04
    xor a                                         ; $57ae: $af
    add hl, hl                                    ; $57af: $29
    inc b                                         ; $57b0: $04
    cp d                                          ; $57b1: $ba
    add hl, hl                                    ; $57b2: $29
    inc b                                         ; $57b3: $04
    jp nc, Jump_000_0429                          ; $57b4: $d2 $29 $04

    sbc $29                                       ; $57b7: $de $29
    inc b                                         ; $57b9: $04
    db $f4                                        ; $57ba: $f4
    add hl, hl                                    ; $57bb: $29
    inc b                                         ; $57bc: $04
    rrca                                          ; $57bd: $0f
    ld a, [hl+]                                   ; $57be: $2a
    inc b                                         ; $57bf: $04
    dec de                                        ; $57c0: $1b
    ld a, [hl+]                                   ; $57c1: $2a
    inc b                                         ; $57c2: $04
    ld sp, $042a                                  ; $57c3: $31 $2a $04
    ld c, d                                       ; $57c6: $4a
    ld a, [hl+]                                   ; $57c7: $2a
    inc b                                         ; $57c8: $04
    ld d, [hl]                                    ; $57c9: $56
    ld a, [hl+]                                   ; $57ca: $2a
    inc b                                         ; $57cb: $04
    ld h, [hl]                                    ; $57cc: $66
    ld a, [hl+]                                   ; $57cd: $2a
    inc b                                         ; $57ce: $04
    ld a, c                                       ; $57cf: $79
    ld a, [hl+]                                   ; $57d0: $2a
    inc b                                         ; $57d1: $04
    ld a, e                                       ; $57d2: $7b
    ld a, [hl+]                                   ; $57d3: $2a
    inc b                                         ; $57d4: $04
    adc a                                         ; $57d5: $8f
    ld a, [hl+]                                   ; $57d6: $2a
    inc b                                         ; $57d7: $04
    xor b                                         ; $57d8: $a8
    ld a, [hl+]                                   ; $57d9: $2a
    inc b                                         ; $57da: $04
    pop bc                                        ; $57db: $c1
    ld a, [hl+]                                   ; $57dc: $2a
    inc b                                         ; $57dd: $04
    jp Jump_000_042a                              ; $57de: $c3 $2a $04


    push bc                                       ; $57e1: $c5
    ld a, [hl+]                                   ; $57e2: $2a
    inc b                                         ; $57e3: $04
    pop hl                                        ; $57e4: $e1
    ld a, [hl+]                                   ; $57e5: $2a
    inc b                                         ; $57e6: $04
    ld hl, sp+$2a                                 ; $57e7: $f8 $2a
    inc b                                         ; $57e9: $04
    ld a, [$042a]                                 ; $57ea: $fa $2a $04
    ld de, $042b                                  ; $57ed: $11 $2b $04
    inc de                                        ; $57f0: $13
    dec hl                                        ; $57f1: $2b
    inc b                                         ; $57f2: $04
    dec d                                         ; $57f3: $15
    dec hl                                        ; $57f4: $2b
    inc b                                         ; $57f5: $04
    inc l                                         ; $57f6: $2c
    dec hl                                        ; $57f7: $2b
    inc b                                         ; $57f8: $04
    dec a                                         ; $57f9: $3d
    dec hl                                        ; $57fa: $2b
    inc b                                         ; $57fb: $04
    ld c, [hl]                                    ; $57fc: $4e
    dec hl                                        ; $57fd: $2b
    inc b                                         ; $57fe: $04
    ld d, b                                       ; $57ff: $50
    dec hl                                        ; $5800: $2b
    inc b                                         ; $5801: $04
    ld d, d                                       ; $5802: $52
    dec hl                                        ; $5803: $2b
    inc b                                         ; $5804: $04
    ld d, h                                       ; $5805: $54
    dec hl                                        ; $5806: $2b
    inc b                                         ; $5807: $04
    ld l, e                                       ; $5808: $6b
    dec hl                                        ; $5809: $2b
    inc b                                         ; $580a: $04
    ld l, l                                       ; $580b: $6d
    dec hl                                        ; $580c: $2b
    inc b                                         ; $580d: $04
    ld l, a                                       ; $580e: $6f
    dec hl                                        ; $580f: $2b
    inc b                                         ; $5810: $04
    ld [hl], c                                    ; $5811: $71
    dec hl                                        ; $5812: $2b
    inc b                                         ; $5813: $04
    ld [hl], e                                    ; $5814: $73
    dec hl                                        ; $5815: $2b
    inc b                                         ; $5816: $04
    ld [hl], l                                    ; $5817: $75
    dec hl                                        ; $5818: $2b
    inc b                                         ; $5819: $04
    ld [hl], a                                    ; $581a: $77
    dec hl                                        ; $581b: $2b
    inc b                                         ; $581c: $04
    ld a, c                                       ; $581d: $79
    dec hl                                        ; $581e: $2b
    inc b                                         ; $581f: $04
    ld a, e                                       ; $5820: $7b
    dec hl                                        ; $5821: $2b
    inc b                                         ; $5822: $04
    add a                                         ; $5823: $87
    dec hl                                        ; $5824: $2b
    inc b                                         ; $5825: $04
    and l                                         ; $5826: $a5
    dec hl                                        ; $5827: $2b
    inc b                                         ; $5828: $04
    or d                                          ; $5829: $b2
    dec hl                                        ; $582a: $2b
    inc b                                         ; $582b: $04
    or h                                          ; $582c: $b4
    dec hl                                        ; $582d: $2b
    inc b                                         ; $582e: $04
    or [hl]                                       ; $582f: $b6
    dec hl                                        ; $5830: $2b
    inc b                                         ; $5831: $04
    cp b                                          ; $5832: $b8
    dec hl                                        ; $5833: $2b
    inc b                                         ; $5834: $04
    cp d                                          ; $5835: $ba
    dec hl                                        ; $5836: $2b
    inc b                                         ; $5837: $04
    cp h                                          ; $5838: $bc
    dec hl                                        ; $5839: $2b
    inc b                                         ; $583a: $04
    cp [hl]                                       ; $583b: $be
    dec hl                                        ; $583c: $2b
    inc b                                         ; $583d: $04
    ret nz                                        ; $583e: $c0

    dec hl                                        ; $583f: $2b
    inc b                                         ; $5840: $04
    jp nz, $042b                                  ; $5841: $c2 $2b $04

    call nz, $042b                                ; $5844: $c4 $2b $04
    add $2b                                       ; $5847: $c6 $2b
    inc b                                         ; $5849: $04
    ret c                                         ; $584a: $d8

    dec hl                                        ; $584b: $2b
    inc b                                         ; $584c: $04
    add sp, $2b                                   ; $584d: $e8 $2b
    inc b                                         ; $584f: $04
    ld sp, hl                                     ; $5850: $f9
    dec hl                                        ; $5851: $2b
    inc b                                         ; $5852: $04
    dec b                                         ; $5853: $05
    inc l                                         ; $5854: $2c
    inc b                                         ; $5855: $04
    dec d                                         ; $5856: $15
    inc l                                         ; $5857: $2c
    inc b                                         ; $5858: $04
    dec l                                         ; $5859: $2d
    inc l                                         ; $585a: $2c
    inc b                                         ; $585b: $04
    cpl                                           ; $585c: $2f
    inc l                                         ; $585d: $2c
    inc b                                         ; $585e: $04
    ccf                                           ; $585f: $3f
    inc l                                         ; $5860: $2c
    inc b                                         ; $5861: $04
    ld b, c                                       ; $5862: $41
    inc l                                         ; $5863: $2c
    inc b                                         ; $5864: $04
    ld d, h                                       ; $5865: $54
    inc l                                         ; $5866: $2c
    inc b                                         ; $5867: $04
    ld d, [hl]                                    ; $5868: $56
    inc l                                         ; $5869: $2c
    inc b                                         ; $586a: $04
    ld h, a                                       ; $586b: $67
    inc l                                         ; $586c: $2c
    inc b                                         ; $586d: $04
    ld l, c                                       ; $586e: $69
    inc l                                         ; $586f: $2c
    inc b                                         ; $5870: $04
    ld a, h                                       ; $5871: $7c
    inc l                                         ; $5872: $2c
    inc b                                         ; $5873: $04
    sub b                                         ; $5874: $90
    inc l                                         ; $5875: $2c
    inc b                                         ; $5876: $04
    and h                                         ; $5877: $a4
    inc l                                         ; $5878: $2c
    inc b                                         ; $5879: $04
    or c                                          ; $587a: $b1
    inc l                                         ; $587b: $2c
    inc b                                         ; $587c: $04
    ret nz                                        ; $587d: $c0

    inc l                                         ; $587e: $2c
    inc b                                         ; $587f: $04
    jp nz, $042c                                  ; $5880: $c2 $2c $04

    call nz, $042c                                ; $5883: $c4 $2c $04
    add $2c                                       ; $5886: $c6 $2c
    inc b                                         ; $5888: $04
    ret z                                         ; $5889: $c8

    inc l                                         ; $588a: $2c
    inc b                                         ; $588b: $04
    reti                                          ; $588c: $d9


    inc l                                         ; $588d: $2c
    inc b                                         ; $588e: $04
    rst $28                                       ; $588f: $ef
    inc l                                         ; $5890: $2c
    inc b                                         ; $5891: $04
    ld bc, $042d                                  ; $5892: $01 $2d $04
    dec de                                        ; $5895: $1b
    dec l                                         ; $5896: $2d
    inc b                                         ; $5897: $04
    cpl                                           ; $5898: $2f
    dec l                                         ; $5899: $2d
    inc b                                         ; $589a: $04
    ld b, e                                       ; $589b: $43
    dec l                                         ; $589c: $2d
    inc b                                         ; $589d: $04
    ld d, c                                       ; $589e: $51
    dec l                                         ; $589f: $2d
    inc b                                         ; $58a0: $04
    ld e, a                                       ; $58a1: $5f
    dec l                                         ; $58a2: $2d
    inc b                                         ; $58a3: $04
    ld [hl], c                                    ; $58a4: $71
    dec l                                         ; $58a5: $2d
    inc b                                         ; $58a6: $04
    add [hl]                                      ; $58a7: $86
    dec l                                         ; $58a8: $2d
    inc b                                         ; $58a9: $04
    sbc [hl]                                      ; $58aa: $9e
    dec l                                         ; $58ab: $2d
    inc b                                         ; $58ac: $04
    xor a                                         ; $58ad: $af
    dec l                                         ; $58ae: $2d
    inc b                                         ; $58af: $04
    call Call_000_042d                            ; $58b0: $cd $2d $04
    rst $08                                       ; $58b3: $cf
    dec l                                         ; $58b4: $2d
    inc b                                         ; $58b5: $04
    rst $20                                       ; $58b6: $e7
    dec l                                         ; $58b7: $2d
    inc b                                         ; $58b8: $04
    ld hl, sp+$2d                                 ; $58b9: $f8 $2d
    inc b                                         ; $58bb: $04
    rlca                                          ; $58bc: $07
    ld l, $04                                     ; $58bd: $2e $04
    ld hl, $042e                                  ; $58bf: $21 $2e $04
    ld l, $2e                                     ; $58c2: $2e $2e
    inc b                                         ; $58c4: $04
    dec sp                                        ; $58c5: $3b
    ld l, $04                                     ; $58c6: $2e $04
    ld c, c                                       ; $58c8: $49
    ld l, $04                                     ; $58c9: $2e $04
    ld e, c                                       ; $58cb: $59
    ld l, $04                                     ; $58cc: $2e $04
    ld l, d                                       ; $58ce: $6a
    ld l, $04                                     ; $58cf: $2e $04
    ld [hl], h                                    ; $58d1: $74
    ld l, $04                                     ; $58d2: $2e $04
    add b                                         ; $58d4: $80
    ld l, $04                                     ; $58d5: $2e $04
    add [hl]                                      ; $58d7: $86
    ld l, $04                                     ; $58d8: $2e $04
    sub d                                         ; $58da: $92
    ld l, $04                                     ; $58db: $2e $04
    and l                                         ; $58dd: $a5
    ld l, $04                                     ; $58de: $2e $04
    xor e                                         ; $58e0: $ab
    ld l, $04                                     ; $58e1: $2e $04
    or [hl]                                       ; $58e3: $b6
    ld l, $04                                     ; $58e4: $2e $04
    pop bc                                        ; $58e6: $c1
    ld l, $04                                     ; $58e7: $2e $04
    ret nc                                        ; $58e9: $d0

    ld l, $04                                     ; $58ea: $2e $04
    pop hl                                        ; $58ec: $e1
    ld l, $04                                     ; $58ed: $2e $04
    db $ed                                        ; $58ef: $ed
    ld l, $04                                     ; $58f0: $2e $04
    db $fd                                        ; $58f2: $fd
    ld l, $04                                     ; $58f3: $2e $04
    dec c                                         ; $58f5: $0d
    cpl                                           ; $58f6: $2f
    inc b                                         ; $58f7: $04
    dec e                                         ; $58f8: $1d
    cpl                                           ; $58f9: $2f
    inc b                                         ; $58fa: $04
    inc l                                         ; $58fb: $2c
    cpl                                           ; $58fc: $2f
    inc b                                         ; $58fd: $04
    ld a, [hl-]                                   ; $58fe: $3a
    cpl                                           ; $58ff: $2f
    inc b                                         ; $5900: $04
    ld b, [hl]                                    ; $5901: $46
    cpl                                           ; $5902: $2f
    inc b                                         ; $5903: $04
    ld d, h                                       ; $5904: $54
    cpl                                           ; $5905: $2f
    inc b                                         ; $5906: $04
    ld h, b                                       ; $5907: $60
    cpl                                           ; $5908: $2f
    inc b                                         ; $5909: $04
    ld l, h                                       ; $590a: $6c
    cpl                                           ; $590b: $2f
    inc b                                         ; $590c: $04
    ld a, h                                       ; $590d: $7c
    cpl                                           ; $590e: $2f
    inc b                                         ; $590f: $04
    adc c                                         ; $5910: $89
    cpl                                           ; $5911: $2f
    inc b                                         ; $5912: $04
    sub [hl]                                      ; $5913: $96
    cpl                                           ; $5914: $2f
    inc b                                         ; $5915: $04
    and e                                         ; $5916: $a3
    cpl                                           ; $5917: $2f
    inc b                                         ; $5918: $04
    xor a                                         ; $5919: $af
    cpl                                           ; $591a: $2f
    inc b                                         ; $591b: $04
    cp e                                          ; $591c: $bb
    cpl                                           ; $591d: $2f
    inc b                                         ; $591e: $04
    rst $00                                       ; $591f: $c7
    cpl                                           ; $5920: $2f
    inc b                                         ; $5921: $04
    db $d3                                        ; $5922: $d3
    cpl                                           ; $5923: $2f
    inc b                                         ; $5924: $04
    rst $18                                       ; $5925: $df
    cpl                                           ; $5926: $2f
    inc b                                         ; $5927: $04
    db $eb                                        ; $5928: $eb
    cpl                                           ; $5929: $2f
    inc b                                         ; $592a: $04
    rst $30                                       ; $592b: $f7
    cpl                                           ; $592c: $2f
    inc b                                         ; $592d: $04
    inc bc                                        ; $592e: $03
    jr nc, jr_040_5935                            ; $592f: $30 $04

    rrca                                          ; $5931: $0f
    jr nc, jr_040_5938                            ; $5932: $30 $04

    dec de                                        ; $5934: $1b

jr_040_5935:
    jr nc, jr_040_593b                            ; $5935: $30 $04

    daa                                           ; $5937: $27

jr_040_5938:
    jr nc, jr_040_593e                            ; $5938: $30 $04

    inc sp                                        ; $593a: $33

jr_040_593b:
    jr nc, jr_040_5941                            ; $593b: $30 $04

    ld b, b                                       ; $593d: $40

jr_040_593e:
    jr nc, jr_040_5944                            ; $593e: $30 $04

    ld b, a                                       ; $5940: $47

jr_040_5941:
    jr nc, jr_040_5947                            ; $5941: $30 $04

    ld c, [hl]                                    ; $5943: $4e

jr_040_5944:
    jr nc, jr_040_594a                            ; $5944: $30 $04

    ld e, d                                       ; $5946: $5a

jr_040_5947:
    jr nc, jr_040_594d                            ; $5947: $30 $04

    ld e, [hl]                                    ; $5949: $5e

jr_040_594a:
    jr nc, jr_040_5950                            ; $594a: $30 $04

    ld l, d                                       ; $594c: $6a

jr_040_594d:
    jr nc, jr_040_5953                            ; $594d: $30 $04

    ld a, b                                       ; $594f: $78

jr_040_5950:
    jr nc, jr_040_5956                            ; $5950: $30 $04

    adc e                                         ; $5952: $8b

jr_040_5953:
    jr nc, jr_040_5959                            ; $5953: $30 $04

    sbc d                                         ; $5955: $9a

jr_040_5956:
    jr nc, jr_040_595c                            ; $5956: $30 $04

    xor d                                         ; $5958: $aa

jr_040_5959:
    jr nc, jr_040_595f                            ; $5959: $30 $04

    cp c                                          ; $595b: $b9

jr_040_595c:
    jr nc, jr_040_5962                            ; $595c: $30 $04

    ret z                                         ; $595e: $c8

jr_040_595f:
    jr nc, @+$06                                  ; $595f: $30 $04

    ret c                                         ; $5961: $d8

jr_040_5962:
    jr nc, @+$06                                  ; $5962: $30 $04

    and $30                                       ; $5964: $e6 $30
    inc b                                         ; $5966: $04
    or $30                                        ; $5967: $f6 $30
    inc b                                         ; $5969: $04
    inc b                                         ; $596a: $04
    ld sp, $1504                                  ; $596b: $31 $04 $15
    ld sp, $1c04                                  ; $596e: $31 $04 $1c
    ld sp, $2504                                  ; $5971: $31 $04 $25
    ld sp, $2e04                                  ; $5974: $31 $04 $2e
    ld sp, $3e04                                  ; $5977: $31 $04 $3e
    ld sp, $4c04                                  ; $597a: $31 $04 $4c
    ld sp, $5a04                                  ; $597d: $31 $04 $5a
    ld sp, $6504                                  ; $5980: $31 $04 $65
    ld sp, $7104                                  ; $5983: $31 $04 $71
    ld sp, $7c04                                  ; $5986: $31 $04 $7c
    ld sp, $8904                                  ; $5989: $31 $04 $89
    ld sp, $9104                                  ; $598c: $31 $04 $91
    ld sp, $a004                                  ; $598f: $31 $04 $a0
    ld sp, $a904                                  ; $5992: $31 $04 $a9
    ld sp, $ba04                                  ; $5995: $31 $04 $ba
    ld sp, $c504                                  ; $5998: $31 $04 $c5
    ld sp, $ce04                                  ; $599b: $31 $04 $ce
    ld sp, $e104                                  ; $599e: $31 $04 $e1
    ld sp, $f704                                  ; $59a1: $31 $04 $f7
    ld sp, $0904                                  ; $59a4: $31 $04 $09
    ld [hl-], a                                   ; $59a7: $32
    inc b                                         ; $59a8: $04
    rla                                           ; $59a9: $17
    ld [hl-], a                                   ; $59aa: $32
    inc b                                         ; $59ab: $04
    inc hl                                        ; $59ac: $23
    ld [hl-], a                                   ; $59ad: $32
    inc b                                         ; $59ae: $04
    inc sp                                        ; $59af: $33
    ld [hl-], a                                   ; $59b0: $32
    inc b                                         ; $59b1: $04
    ld b, l                                       ; $59b2: $45
    ld [hl-], a                                   ; $59b3: $32
    inc b                                         ; $59b4: $04
    ld c, a                                       ; $59b5: $4f
    ld [hl-], a                                   ; $59b6: $32
    inc b                                         ; $59b7: $04
    ld e, l                                       ; $59b8: $5d
    ld [hl-], a                                   ; $59b9: $32
    inc b                                         ; $59ba: $04
    ld h, h                                       ; $59bb: $64
    ld [hl-], a                                   ; $59bc: $32
    inc b                                         ; $59bd: $04
    halt                                          ; $59be: $76
    ld [hl-], a                                   ; $59bf: $32
    inc b                                         ; $59c0: $04
    add h                                         ; $59c1: $84
    ld [hl-], a                                   ; $59c2: $32
    inc b                                         ; $59c3: $04
    sub d                                         ; $59c4: $92
    ld [hl-], a                                   ; $59c5: $32
    inc b                                         ; $59c6: $04
    and b                                         ; $59c7: $a0
    ld [hl-], a                                   ; $59c8: $32
    inc b                                         ; $59c9: $04
    xor [hl]                                      ; $59ca: $ae
    ld [hl-], a                                   ; $59cb: $32
    inc b                                         ; $59cc: $04
    pop bc                                        ; $59cd: $c1
    ld [hl-], a                                   ; $59ce: $32
    inc b                                         ; $59cf: $04
    rst $08                                       ; $59d0: $cf
    ld [hl-], a                                   ; $59d1: $32
    inc b                                         ; $59d2: $04
    call c, $0432                                 ; $59d3: $dc $32 $04
    db $eb                                        ; $59d6: $eb
    ld [hl-], a                                   ; $59d7: $32
    inc b                                         ; $59d8: $04
    ld a, [c]                                     ; $59d9: $f2
    ld [hl-], a                                   ; $59da: $32
    inc b                                         ; $59db: $04
    db $fd                                        ; $59dc: $fd
    ld [hl-], a                                   ; $59dd: $32
    inc b                                         ; $59de: $04
    dec c                                         ; $59df: $0d
    inc sp                                        ; $59e0: $33
    inc b                                         ; $59e1: $04
    dec de                                        ; $59e2: $1b
    inc sp                                        ; $59e3: $33
    inc b                                         ; $59e4: $04
    dec l                                         ; $59e5: $2d
    inc sp                                        ; $59e6: $33
    inc b                                         ; $59e7: $04
    ccf                                           ; $59e8: $3f
    inc sp                                        ; $59e9: $33
    inc b                                         ; $59ea: $04
    ld c, e                                       ; $59eb: $4b
    inc sp                                        ; $59ec: $33
    inc b                                         ; $59ed: $04
    ld d, d                                       ; $59ee: $52
    inc sp                                        ; $59ef: $33
    inc b                                         ; $59f0: $04
    ld h, c                                       ; $59f1: $61
    inc sp                                        ; $59f2: $33
    inc b                                         ; $59f3: $04
    ld [hl], d                                    ; $59f4: $72
    inc sp                                        ; $59f5: $33
    inc b                                         ; $59f6: $04
    add b                                         ; $59f7: $80
    inc sp                                        ; $59f8: $33
    inc b                                         ; $59f9: $04
    adc l                                         ; $59fa: $8d
    inc sp                                        ; $59fb: $33
    inc b                                         ; $59fc: $04
    and [hl]                                      ; $59fd: $a6
    inc sp                                        ; $59fe: $33
    inc b                                         ; $59ff: $04
    or d                                          ; $5a00: $b2
    inc sp                                        ; $5a01: $33
    inc b                                         ; $5a02: $04
    call nz, Call_000_0433                        ; $5a03: $c4 $33 $04
    push hl                                       ; $5a06: $e5
    inc sp                                        ; $5a07: $33
    inc b                                         ; $5a08: $04
    ld sp, hl                                     ; $5a09: $f9
    inc sp                                        ; $5a0a: $33
    inc b                                         ; $5a0b: $04
    jr jr_040_5a42                                ; $5a0c: $18 $34

    inc b                                         ; $5a0e: $04
    cpl                                           ; $5a0f: $2f
    inc [hl]                                      ; $5a10: $34
    inc b                                         ; $5a11: $04
    ld b, a                                       ; $5a12: $47
    inc [hl]                                      ; $5a13: $34
    inc b                                         ; $5a14: $04
    ld e, l                                       ; $5a15: $5d
    inc [hl]                                      ; $5a16: $34
    inc b                                         ; $5a17: $04
    ld l, l                                       ; $5a18: $6d
    inc [hl]                                      ; $5a19: $34
    inc b                                         ; $5a1a: $04
    ld a, c                                       ; $5a1b: $79
    inc [hl]                                      ; $5a1c: $34
    inc b                                         ; $5a1d: $04
    add l                                         ; $5a1e: $85
    inc [hl]                                      ; $5a1f: $34
    inc b                                         ; $5a20: $04
    sub c                                         ; $5a21: $91
    inc [hl]                                      ; $5a22: $34
    inc b                                         ; $5a23: $04
    and [hl]                                      ; $5a24: $a6
    inc [hl]                                      ; $5a25: $34
    inc b                                         ; $5a26: $04
    cp c                                          ; $5a27: $b9
    inc [hl]                                      ; $5a28: $34
    inc b                                         ; $5a29: $04
    swap h                                        ; $5a2a: $cb $34
    inc b                                         ; $5a2c: $04
    sbc $34                                       ; $5a2d: $de $34
    inc b                                         ; $5a2f: $04
    ldh a, [$34]                                  ; $5a30: $f0 $34
    inc b                                         ; $5a32: $04
    ld [bc], a                                    ; $5a33: $02
    dec [hl]                                      ; $5a34: $35
    inc b                                         ; $5a35: $04
    rla                                           ; $5a36: $17
    dec [hl]                                      ; $5a37: $35
    inc b                                         ; $5a38: $04
    add hl, hl                                    ; $5a39: $29
    dec [hl]                                      ; $5a3a: $35
    inc b                                         ; $5a3b: $04
    inc a                                         ; $5a3c: $3c
    dec [hl]                                      ; $5a3d: $35
    inc b                                         ; $5a3e: $04
    ld d, d                                       ; $5a3f: $52
    dec [hl]                                      ; $5a40: $35
    inc b                                         ; $5a41: $04

jr_040_5a42:
    ld l, l                                       ; $5a42: $6d
    dec [hl]                                      ; $5a43: $35
    inc b                                         ; $5a44: $04
    adc b                                         ; $5a45: $88
    dec [hl]                                      ; $5a46: $35
    inc b                                         ; $5a47: $04

Jump_040_5a48:
    and d                                         ; $5a48: $a2
    dec [hl]                                      ; $5a49: $35
    inc b                                         ; $5a4a: $04
    cp l                                          ; $5a4b: $bd
    dec [hl]                                      ; $5a4c: $35
    inc b                                         ; $5a4d: $04
    ret c                                         ; $5a4e: $d8

    dec [hl]                                      ; $5a4f: $35
    inc b                                         ; $5a50: $04
    ld a, [c]                                     ; $5a51: $f2
    dec [hl]                                      ; $5a52: $35
    inc b                                         ; $5a53: $04
    cp $35                                        ; $5a54: $fe $35
    inc b                                         ; $5a56: $04
    ld a, [bc]                                    ; $5a57: $0a
    ld [hl], $04                                  ; $5a58: $36 $04
    ld d, $36                                     ; $5a5a: $16 $36
    inc b                                         ; $5a5c: $04
    ld [hl+], a                                   ; $5a5d: $22
    ld [hl], $04                                  ; $5a5e: $36 $04
    ld l, $36                                     ; $5a60: $2e $36
    inc b                                         ; $5a62: $04
    ld a, [hl-]                                   ; $5a63: $3a
    ld [hl], $04                                  ; $5a64: $36 $04
    ld d, d                                       ; $5a66: $52
    ld [hl], $04                                  ; $5a67: $36 $04
    ld e, a                                       ; $5a69: $5f
    ld [hl], $04                                  ; $5a6a: $36 $04
    ld l, h                                       ; $5a6c: $6c
    ld [hl], $04                                  ; $5a6d: $36 $04
    ld a, h                                       ; $5a6f: $7c
    ld [hl], $04                                  ; $5a70: $36 $04
    add [hl]                                      ; $5a72: $86
    ld [hl], $04                                  ; $5a73: $36 $04
    sub a                                         ; $5a75: $97
    ld [hl], $04                                  ; $5a76: $36 $04
    and [hl]                                      ; $5a78: $a6
    ld [hl], $04                                  ; $5a79: $36 $04
    or a                                          ; $5a7b: $b7
    ld [hl], $04                                  ; $5a7c: $36 $04
    jp z, $0436                                   ; $5a7e: $ca $36 $04

    sbc $36                                       ; $5a81: $de $36
    inc b                                         ; $5a83: $04
    pop af                                        ; $5a84: $f1
    ld [hl], $04                                  ; $5a85: $36 $04
    dec b                                         ; $5a87: $05
    scf                                           ; $5a88: $37
    inc b                                         ; $5a89: $04
    add hl, de                                    ; $5a8a: $19
    scf                                           ; $5a8b: $37
    inc b                                         ; $5a8c: $04
    inc l                                         ; $5a8d: $2c
    scf                                           ; $5a8e: $37
    inc b                                         ; $5a8f: $04
    ld b, b                                       ; $5a90: $40
    scf                                           ; $5a91: $37
    inc b                                         ; $5a92: $04
    ld d, h                                       ; $5a93: $54
    scf                                           ; $5a94: $37
    inc b                                         ; $5a95: $04
    ld l, d                                       ; $5a96: $6a
    scf                                           ; $5a97: $37
    inc b                                         ; $5a98: $04
    ld [hl], a                                    ; $5a99: $77
    scf                                           ; $5a9a: $37
    inc b                                         ; $5a9b: $04
    add h                                         ; $5a9c: $84
    scf                                           ; $5a9d: $37
    inc b                                         ; $5a9e: $04
    sub c                                         ; $5a9f: $91
    scf                                           ; $5aa0: $37
    inc b                                         ; $5aa1: $04
    xor [hl]                                      ; $5aa2: $ae
    scf                                           ; $5aa3: $37
    inc b                                         ; $5aa4: $04
    pop bc                                        ; $5aa5: $c1
    scf                                           ; $5aa6: $37
    inc b                                         ; $5aa7: $04
    rst $10                                       ; $5aa8: $d7
    scf                                           ; $5aa9: $37
    inc b                                         ; $5aaa: $04
    rst $20                                       ; $5aab: $e7
    scf                                           ; $5aac: $37
    inc b                                         ; $5aad: $04
    rst $38                                       ; $5aae: $ff
    scf                                           ; $5aaf: $37
    inc b                                         ; $5ab0: $04
    ld d, $38                                     ; $5ab1: $16 $38
    inc b                                         ; $5ab3: $04
    ld sp, $0438                                  ; $5ab4: $31 $38 $04
    ld a, $38                                     ; $5ab7: $3e $38
    inc b                                         ; $5ab9: $04
    ld d, e                                       ; $5aba: $53
    jr c, jr_040_5ac1                             ; $5abb: $38 $04

    ld h, d                                       ; $5abd: $62
    jr c, jr_040_5ac4                             ; $5abe: $38 $04

    ld a, b                                       ; $5ac0: $78

jr_040_5ac1:
    jr c, jr_040_5ac7                             ; $5ac1: $38 $04

    add a                                         ; $5ac3: $87

jr_040_5ac4:
    jr c, jr_040_5aca                             ; $5ac4: $38 $04

    sub [hl]                                      ; $5ac6: $96

jr_040_5ac7:
    jr c, jr_040_5acd                             ; $5ac7: $38 $04

    xor l                                         ; $5ac9: $ad

jr_040_5aca:
    jr c, @+$06                                   ; $5aca: $38 $04

    rst $00                                       ; $5acc: $c7

jr_040_5acd:
    jr c, jr_040_5ad3                             ; $5acd: $38 $04

    sbc $38                                       ; $5acf: $de $38
    inc b                                         ; $5ad1: $04
    ld a, [c]                                     ; $5ad2: $f2

jr_040_5ad3:
    jr c, jr_040_5ad9                             ; $5ad3: $38 $04

    inc b                                         ; $5ad5: $04
    add hl, sp                                    ; $5ad6: $39
    inc b                                         ; $5ad7: $04
    ld [de], a                                    ; $5ad8: $12

jr_040_5ad9:
    add hl, sp                                    ; $5ad9: $39
    inc b                                         ; $5ada: $04
    ld [hl+], a                                   ; $5adb: $22
    add hl, sp                                    ; $5adc: $39
    inc b                                         ; $5add: $04
    ld [hl-], a                                   ; $5ade: $32
    add hl, sp                                    ; $5adf: $39
    inc b                                         ; $5ae0: $04
    dec a                                         ; $5ae1: $3d
    add hl, sp                                    ; $5ae2: $39
    inc b                                         ; $5ae3: $04
    ld d, [hl]                                    ; $5ae4: $56
    add hl, sp                                    ; $5ae5: $39
    inc b                                         ; $5ae6: $04
    ld l, e                                       ; $5ae7: $6b
    add hl, sp                                    ; $5ae8: $39
    inc b                                         ; $5ae9: $04
    ld a, [hl]                                    ; $5aea: $7e
    add hl, sp                                    ; $5aeb: $39
    inc b                                         ; $5aec: $04
    adc l                                         ; $5aed: $8d
    add hl, sp                                    ; $5aee: $39
    inc b                                         ; $5aef: $04
    sbc h                                         ; $5af0: $9c
    add hl, sp                                    ; $5af1: $39
    inc b                                         ; $5af2: $04
    xor e                                         ; $5af3: $ab
    add hl, sp                                    ; $5af4: $39
    inc b                                         ; $5af5: $04
    ret nz                                        ; $5af6: $c0

    add hl, sp                                    ; $5af7: $39
    inc b                                         ; $5af8: $04
    rst $18                                       ; $5af9: $df
    add hl, sp                                    ; $5afa: $39
    inc b                                         ; $5afb: $04
    db $ed                                        ; $5afc: $ed
    add hl, sp                                    ; $5afd: $39
    inc b                                         ; $5afe: $04
    ld [bc], a                                    ; $5aff: $02
    ld a, [hl-]                                   ; $5b00: $3a
    inc b                                         ; $5b01: $04
    jr jr_040_5b3e                                ; $5b02: $18 $3a

    inc b                                         ; $5b04: $04
    jr z, jr_040_5b41                             ; $5b05: $28 $3a

    inc b                                         ; $5b07: $04
    dec a                                         ; $5b08: $3d
    ld a, [hl-]                                   ; $5b09: $3a
    inc b                                         ; $5b0a: $04
    ld d, b                                       ; $5b0b: $50
    ld a, [hl-]                                   ; $5b0c: $3a
    inc b                                         ; $5b0d: $04
    ld l, b                                       ; $5b0e: $68
    ld a, [hl-]                                   ; $5b0f: $3a
    inc b                                         ; $5b10: $04
    ld a, b                                       ; $5b11: $78
    ld a, [hl-]                                   ; $5b12: $3a
    inc b                                         ; $5b13: $04
    adc a                                         ; $5b14: $8f
    ld a, [hl-]                                   ; $5b15: $3a
    inc b                                         ; $5b16: $04
    sbc h                                         ; $5b17: $9c
    ld a, [hl-]                                   ; $5b18: $3a
    inc b                                         ; $5b19: $04
    or c                                          ; $5b1a: $b1
    ld a, [hl-]                                   ; $5b1b: $3a
    inc b                                         ; $5b1c: $04
    cp a                                          ; $5b1d: $bf
    ld a, [hl-]                                   ; $5b1e: $3a
    inc b                                         ; $5b1f: $04
    ld [hl], a                                    ; $5b20: $77
    dec sp                                        ; $5b21: $3b
    inc b                                         ; $5b22: $04
    sbc e                                         ; $5b23: $9b
    dec sp                                        ; $5b24: $3b
    inc b                                         ; $5b25: $04
    and e                                         ; $5b26: $a3
    dec sp                                        ; $5b27: $3b
    inc b                                         ; $5b28: $04
    xor l                                         ; $5b29: $ad
    dec sp                                        ; $5b2a: $3b
    inc b                                         ; $5b2b: $04
    cp h                                          ; $5b2c: $bc
    dec sp                                        ; $5b2d: $3b
    inc b                                         ; $5b2e: $04
    rst $00                                       ; $5b2f: $c7
    dec sp                                        ; $5b30: $3b
    inc b                                         ; $5b31: $04
    db $db                                        ; $5b32: $db
    dec sp                                        ; $5b33: $3b
    inc b                                         ; $5b34: $04
    rst $20                                       ; $5b35: $e7
    dec sp                                        ; $5b36: $3b
    inc b                                         ; $5b37: $04
    ei                                            ; $5b38: $fb
    dec sp                                        ; $5b39: $3b
    inc b                                         ; $5b3a: $04
    nop                                           ; $5b3b: $00
    inc a                                         ; $5b3c: $3c
    inc b                                         ; $5b3d: $04

jr_040_5b3e:
    rlca                                          ; $5b3e: $07
    inc a                                         ; $5b3f: $3c
    inc b                                         ; $5b40: $04

jr_040_5b41:
    ld c, $3c                                     ; $5b41: $0e $3c
    inc b                                         ; $5b43: $04
    dec d                                         ; $5b44: $15
    inc a                                         ; $5b45: $3c
    inc b                                         ; $5b46: $04
    inc e                                         ; $5b47: $1c
    inc a                                         ; $5b48: $3c
    inc b                                         ; $5b49: $04
    ld h, $3c                                     ; $5b4a: $26 $3c
    inc b                                         ; $5b4c: $04
    dec a                                         ; $5b4d: $3d
    inc a                                         ; $5b4e: $3c
    inc b                                         ; $5b4f: $04
    ld c, c                                       ; $5b50: $49
    inc a                                         ; $5b51: $3c
    inc b                                         ; $5b52: $04
    ld d, e                                       ; $5b53: $53
    inc a                                         ; $5b54: $3c
    inc b                                         ; $5b55: $04
    ld e, [hl]                                    ; $5b56: $5e
    inc a                                         ; $5b57: $3c
    inc b                                         ; $5b58: $04
    ld l, d                                       ; $5b59: $6a
    inc a                                         ; $5b5a: $3c
    inc b                                         ; $5b5b: $04
    ld a, b                                       ; $5b5c: $78
    inc a                                         ; $5b5d: $3c
    inc b                                         ; $5b5e: $04
    add h                                         ; $5b5f: $84
    inc a                                         ; $5b60: $3c
    inc b                                         ; $5b61: $04
    adc d                                         ; $5b62: $8a
    inc a                                         ; $5b63: $3c
    inc b                                         ; $5b64: $04
    sub h                                         ; $5b65: $94
    inc a                                         ; $5b66: $3c
    inc b                                         ; $5b67: $04
    sbc d                                         ; $5b68: $9a
    inc a                                         ; $5b69: $3c
    inc b                                         ; $5b6a: $04
    and c                                         ; $5b6b: $a1
    inc a                                         ; $5b6c: $3c
    inc b                                         ; $5b6d: $04
    xor [hl]                                      ; $5b6e: $ae
    inc a                                         ; $5b6f: $3c
    inc b                                         ; $5b70: $04
    cp d                                          ; $5b71: $ba
    inc a                                         ; $5b72: $3c
    inc b                                         ; $5b73: $04
    rst $00                                       ; $5b74: $c7
    inc a                                         ; $5b75: $3c
    inc b                                         ; $5b76: $04
    jp nc, Jump_000_043c                          ; $5b77: $d2 $3c $04

    sbc $3c                                       ; $5b7a: $de $3c
    inc b                                         ; $5b7c: $04
    add sp, $3c                                   ; $5b7d: $e8 $3c
    inc b                                         ; $5b7f: $04
    ld a, [c]                                     ; $5b80: $f2
    inc a                                         ; $5b81: $3c
    inc b                                         ; $5b82: $04
    ei                                            ; $5b83: $fb
    inc a                                         ; $5b84: $3c
    inc b                                         ; $5b85: $04
    dec bc                                        ; $5b86: $0b
    dec a                                         ; $5b87: $3d
    inc b                                         ; $5b88: $04
    inc de                                        ; $5b89: $13
    dec a                                         ; $5b8a: $3d
    inc b                                         ; $5b8b: $04
    add hl, de                                    ; $5b8c: $19
    dec a                                         ; $5b8d: $3d
    inc b                                         ; $5b8e: $04
    rra                                           ; $5b8f: $1f
    dec a                                         ; $5b90: $3d
    inc b                                         ; $5b91: $04
    dec hl                                        ; $5b92: $2b
    dec a                                         ; $5b93: $3d
    inc b                                         ; $5b94: $04
    dec a                                         ; $5b95: $3d
    dec a                                         ; $5b96: $3d
    inc b                                         ; $5b97: $04
    ld c, b                                       ; $5b98: $48
    dec a                                         ; $5b99: $3d
    inc b                                         ; $5b9a: $04
    ld d, d                                       ; $5b9b: $52
    dec a                                         ; $5b9c: $3d
    inc b                                         ; $5b9d: $04
    ld e, e                                       ; $5b9e: $5b
    dec a                                         ; $5b9f: $3d
    inc b                                         ; $5ba0: $04
    ld l, c                                       ; $5ba1: $69
    dec a                                         ; $5ba2: $3d
    inc b                                         ; $5ba3: $04
    ld l, [hl]                                    ; $5ba4: $6e
    dec a                                         ; $5ba5: $3d
    inc b                                         ; $5ba6: $04
    ld a, h                                       ; $5ba7: $7c
    dec a                                         ; $5ba8: $3d
    inc b                                         ; $5ba9: $04
    add [hl]                                      ; $5baa: $86
    dec a                                         ; $5bab: $3d
    inc b                                         ; $5bac: $04
    adc h                                         ; $5bad: $8c
    dec a                                         ; $5bae: $3d
    inc b                                         ; $5baf: $04
    sub b                                         ; $5bb0: $90
    dec a                                         ; $5bb1: $3d
    inc b                                         ; $5bb2: $04
    sbc h                                         ; $5bb3: $9c
    dec a                                         ; $5bb4: $3d
    inc b                                         ; $5bb5: $04
    jp z, Jump_000_043d                           ; $5bb6: $ca $3d $04

    sub $3d                                       ; $5bb9: $d6 $3d
    inc b                                         ; $5bbb: $04
    db $e3                                        ; $5bbc: $e3
    dec a                                         ; $5bbd: $3d
    inc b                                         ; $5bbe: $04
    db $10                                        ; $5bbf: $10
    ld a, $04                                     ; $5bc0: $3e $04
    cpl                                           ; $5bc2: $2f
    ld a, $04                                     ; $5bc3: $3e $04
    ld c, c                                       ; $5bc5: $49
    ld a, $04                                     ; $5bc6: $3e $04
    ld h, c                                       ; $5bc8: $61
    ld a, $04                                     ; $5bc9: $3e $04
    ld a, b                                       ; $5bcb: $78
    ld a, $04                                     ; $5bcc: $3e $04
    adc a                                         ; $5bce: $8f
    ld a, $04                                     ; $5bcf: $3e $04
    and [hl]                                      ; $5bd1: $a6
    ld a, $04                                     ; $5bd2: $3e $04
    push bc                                       ; $5bd4: $c5
    ld a, $04                                     ; $5bd5: $3e $04
    sbc $3e                                       ; $5bd7: $de $3e
    inc b                                         ; $5bd9: $04
    rst $30                                       ; $5bda: $f7
    ld a, $04                                     ; $5bdb: $3e $04
    rlca                                          ; $5bdd: $07
    ccf                                           ; $5bde: $3f
    inc b                                         ; $5bdf: $04
    ld e, $3f                                     ; $5be0: $1e $3f
    inc b                                         ; $5be2: $04
    dec l                                         ; $5be3: $2d
    ccf                                           ; $5be4: $3f
    inc b                                         ; $5be5: $04
    ld c, c                                       ; $5be6: $49
    ccf                                           ; $5be7: $3f
    inc b                                         ; $5be8: $04
    ld e, h                                       ; $5be9: $5c
    ccf                                           ; $5bea: $3f
    inc b                                         ; $5beb: $04
    ld [hl], h                                    ; $5bec: $74
    ccf                                           ; $5bed: $3f
    inc b                                         ; $5bee: $04
    ld a, l                                       ; $5bef: $7d
    ccf                                           ; $5bf0: $3f
    inc b                                         ; $5bf1: $04
    add a                                         ; $5bf2: $87
    ccf                                           ; $5bf3: $3f
    inc b                                         ; $5bf4: $04
    sub h                                         ; $5bf5: $94
    ccf                                           ; $5bf6: $3f
    inc b                                         ; $5bf7: $04
    and d                                         ; $5bf8: $a2
    ccf                                           ; $5bf9: $3f
    inc b                                         ; $5bfa: $04
    xor l                                         ; $5bfb: $ad
    ccf                                           ; $5bfc: $3f
    inc b                                         ; $5bfd: $04
    cp c                                          ; $5bfe: $b9
    ccf                                           ; $5bff: $3f
    inc b                                         ; $5c00: $04
    push de                                       ; $5c01: $d5
    ccf                                           ; $5c02: $3f
    dec b                                         ; $5c03: $05
    ld bc, $0500                                  ; $5c04: $01 $00 $05
    inc hl                                        ; $5c07: $23
    nop                                           ; $5c08: $00
    dec b                                         ; $5c09: $05
    ld c, a                                       ; $5c0a: $4f
    nop                                           ; $5c0b: $00
    dec b                                         ; $5c0c: $05
    ld a, c                                       ; $5c0d: $79
    nop                                           ; $5c0e: $00
    dec b                                         ; $5c0f: $05
    adc l                                         ; $5c10: $8d
    nop                                           ; $5c11: $00
    dec b                                         ; $5c12: $05
    sbc a                                         ; $5c13: $9f
    nop                                           ; $5c14: $00
    dec b                                         ; $5c15: $05
    xor d                                         ; $5c16: $aa
    nop                                           ; $5c17: $00
    dec b                                         ; $5c18: $05
    or c                                          ; $5c19: $b1
    nop                                           ; $5c1a: $00
    dec b                                         ; $5c1b: $05
    jp Jump_000_0500                              ; $5c1c: $c3 $00 $05


    jp nc, Jump_000_0500                          ; $5c1f: $d2 $00 $05

    jp c, Jump_000_0500                           ; $5c22: $da $00 $05

    and $00                                       ; $5c25: $e6 $00
    dec b                                         ; $5c27: $05
    rla                                           ; $5c28: $17
    ld bc, $4105                                  ; $5c29: $01 $05 $41
    ld bc, $6a05                                  ; $5c2c: $01 $05 $6a
    ld bc, $8d05                                  ; $5c2f: $01 $05 $8d
    ld bc, $b905                                  ; $5c32: $01 $05 $b9
    ld bc, $ee05                                  ; $5c35: $01 $05 $ee
    ld bc, $1805                                  ; $5c38: $01 $05 $18
    ld [bc], a                                    ; $5c3b: $02
    dec b                                         ; $5c3c: $05
    ld c, l                                       ; $5c3d: $4d
    ld [bc], a                                    ; $5c3e: $02
    dec b                                         ; $5c3f: $05
    add [hl]                                      ; $5c40: $86
    ld [bc], a                                    ; $5c41: $02
    dec b                                         ; $5c42: $05
    ret nc                                        ; $5c43: $d0

    ld [bc], a                                    ; $5c44: $02
    dec b                                         ; $5c45: $05
    add hl, bc                                    ; $5c46: $09
    inc bc                                        ; $5c47: $03
    dec b                                         ; $5c48: $05
    ld a, [hl-]                                   ; $5c49: $3a
    inc bc                                        ; $5c4a: $03
    dec b                                         ; $5c4b: $05
    ld l, [hl]                                    ; $5c4c: $6e
    inc bc                                        ; $5c4d: $03
    dec b                                         ; $5c4e: $05
    ld c, c                                       ; $5c4f: $49
    inc b                                         ; $5c50: $04
    dec b                                         ; $5c51: $05
    ld d, c                                       ; $5c52: $51
    inc b                                         ; $5c53: $04
    dec b                                         ; $5c54: $05
    ld d, a                                       ; $5c55: $57
    inc b                                         ; $5c56: $04
    dec b                                         ; $5c57: $05
    ld e, h                                       ; $5c58: $5c
    inc b                                         ; $5c59: $04
    dec b                                         ; $5c5a: $05
    ld h, l                                       ; $5c5b: $65
    inc b                                         ; $5c5c: $04
    dec b                                         ; $5c5d: $05
    ld [hl], c                                    ; $5c5e: $71
    inc b                                         ; $5c5f: $04
    dec b                                         ; $5c60: $05
    ld a, h                                       ; $5c61: $7c
    inc b                                         ; $5c62: $04
    dec b                                         ; $5c63: $05
    adc c                                         ; $5c64: $89
    inc b                                         ; $5c65: $04
    dec b                                         ; $5c66: $05
    adc a                                         ; $5c67: $8f
    inc b                                         ; $5c68: $04
    dec b                                         ; $5c69: $05
    sub [hl]                                      ; $5c6a: $96
    inc b                                         ; $5c6b: $04
    dec b                                         ; $5c6c: $05
    sbc h                                         ; $5c6d: $9c
    inc b                                         ; $5c6e: $04
    dec b                                         ; $5c6f: $05
    and a                                         ; $5c70: $a7
    inc b                                         ; $5c71: $04
    dec b                                         ; $5c72: $05
    xor [hl]                                      ; $5c73: $ae
    inc b                                         ; $5c74: $04
    dec b                                         ; $5c75: $05
    or l                                          ; $5c76: $b5
    inc b                                         ; $5c77: $04
    dec b                                         ; $5c78: $05
    cp d                                          ; $5c79: $ba
    inc b                                         ; $5c7a: $04
    dec b                                         ; $5c7b: $05
    pop bc                                        ; $5c7c: $c1
    inc b                                         ; $5c7d: $04
    dec b                                         ; $5c7e: $05
    jp z, $0504                                   ; $5c7f: $ca $04 $05

    adc $04                                       ; $5c82: $ce $04
    dec b                                         ; $5c84: $05
    push de                                       ; $5c85: $d5
    inc b                                         ; $5c86: $04
    dec b                                         ; $5c87: $05
    rst $18                                       ; $5c88: $df
    inc b                                         ; $5c89: $04
    dec b                                         ; $5c8a: $05
    db $eb                                        ; $5c8b: $eb
    inc b                                         ; $5c8c: $04
    dec b                                         ; $5c8d: $05
    pop af                                        ; $5c8e: $f1
    inc b                                         ; $5c8f: $04
    dec b                                         ; $5c90: $05
    ld sp, hl                                     ; $5c91: $f9
    inc b                                         ; $5c92: $04
    dec b                                         ; $5c93: $05
    nop                                           ; $5c94: $00
    dec b                                         ; $5c95: $05
    dec b                                         ; $5c96: $05
    ld a, [bc]                                    ; $5c97: $0a
    dec b                                         ; $5c98: $05
    dec b                                         ; $5c99: $05
    db $10                                        ; $5c9a: $10
    dec b                                         ; $5c9b: $05
    dec b                                         ; $5c9c: $05
    ld d, $05                                     ; $5c9d: $16 $05
    dec b                                         ; $5c9f: $05
    inc e                                         ; $5ca0: $1c
    dec b                                         ; $5ca1: $05
    dec b                                         ; $5ca2: $05
    inc hl                                        ; $5ca3: $23
    dec b                                         ; $5ca4: $05
    dec b                                         ; $5ca5: $05
    ld a, [hl+]                                   ; $5ca6: $2a
    dec b                                         ; $5ca7: $05
    dec b                                         ; $5ca8: $05
    ld [hl-], a                                   ; $5ca9: $32
    dec b                                         ; $5caa: $05
    dec b                                         ; $5cab: $05
    inc a                                         ; $5cac: $3c
    dec b                                         ; $5cad: $05
    dec b                                         ; $5cae: $05
    ld b, e                                       ; $5caf: $43
    dec b                                         ; $5cb0: $05
    dec b                                         ; $5cb1: $05
    ld c, d                                       ; $5cb2: $4a
    dec b                                         ; $5cb3: $05
    dec b                                         ; $5cb4: $05
    ld d, d                                       ; $5cb5: $52
    dec b                                         ; $5cb6: $05
    dec b                                         ; $5cb7: $05
    ld e, e                                       ; $5cb8: $5b
    dec b                                         ; $5cb9: $05
    dec b                                         ; $5cba: $05
    ld h, a                                       ; $5cbb: $67
    dec b                                         ; $5cbc: $05
    dec b                                         ; $5cbd: $05
    ld [hl], e                                    ; $5cbe: $73
    dec b                                         ; $5cbf: $05
    dec b                                         ; $5cc0: $05
    add b                                         ; $5cc1: $80
    dec b                                         ; $5cc2: $05
    dec b                                         ; $5cc3: $05
    adc d                                         ; $5cc4: $8a
    dec b                                         ; $5cc5: $05
    dec b                                         ; $5cc6: $05
    sub l                                         ; $5cc7: $95
    dec b                                         ; $5cc8: $05
    dec b                                         ; $5cc9: $05
    sbc h                                         ; $5cca: $9c
    dec b                                         ; $5ccb: $05
    dec b                                         ; $5ccc: $05
    and l                                         ; $5ccd: $a5
    dec b                                         ; $5cce: $05
    dec b                                         ; $5ccf: $05
    xor [hl]                                      ; $5cd0: $ae
    dec b                                         ; $5cd1: $05
    dec b                                         ; $5cd2: $05
    cp b                                          ; $5cd3: $b8
    dec b                                         ; $5cd4: $05

Call_040_5cd5:
    dec b                                         ; $5cd5: $05
    call nz, Call_000_0505                        ; $5cd6: $c4 $05 $05
    pop de                                        ; $5cd9: $d1
    dec b                                         ; $5cda: $05
    dec b                                         ; $5cdb: $05
    ret c                                         ; $5cdc: $d8

    dec b                                         ; $5cdd: $05
    dec b                                         ; $5cde: $05
    ldh [rTIMA], a                                ; $5cdf: $e0 $05
    dec b                                         ; $5ce1: $05
    db $ec                                        ; $5ce2: $ec
    dec b                                         ; $5ce3: $05
    dec b                                         ; $5ce4: $05
    db $f4                                        ; $5ce5: $f4
    dec b                                         ; $5ce6: $05
    dec b                                         ; $5ce7: $05
    nop                                           ; $5ce8: $00
    ld b, $05                                     ; $5ce9: $06 $05
    ld d, $06                                     ; $5ceb: $16 $06
    dec b                                         ; $5ced: $05
    add hl, sp                                    ; $5cee: $39
    ld b, $05                                     ; $5cef: $06 $05
    adc l                                         ; $5cf1: $8d
    ld b, $05                                     ; $5cf2: $06 $05
    call nc, $0506                                ; $5cf4: $d4 $06 $05
    inc bc                                        ; $5cf7: $03
    rlca                                          ; $5cf8: $07
    dec b                                         ; $5cf9: $05
    inc sp                                        ; $5cfa: $33
    rlca                                          ; $5cfb: $07
    dec b                                         ; $5cfc: $05
    ld h, l                                       ; $5cfd: $65
    rlca                                          ; $5cfe: $07
    dec b                                         ; $5cff: $05
    add d                                         ; $5d00: $82
    rlca                                          ; $5d01: $07
    dec b                                         ; $5d02: $05
    cp h                                          ; $5d03: $bc
    rlca                                          ; $5d04: $07
    dec b                                         ; $5d05: $05
    rst $28                                       ; $5d06: $ef
    rlca                                          ; $5d07: $07
    dec b                                         ; $5d08: $05
    inc de                                        ; $5d09: $13
    ld [$3905], sp                                ; $5d0a: $08 $05 $39
    ld [$6805], sp                                ; $5d0d: $08 $05 $68
    ld [$9d05], sp                                ; $5d10: $08 $05 $9d
    ld [$ca05], sp                                ; $5d13: $08 $05 $ca
    ld [$0a05], sp                                ; $5d16: $08 $05 $0a
    add hl, bc                                    ; $5d19: $09
    dec b                                         ; $5d1a: $05
    ld c, h                                       ; $5d1b: $4c
    add hl, bc                                    ; $5d1c: $09
    dec b                                         ; $5d1d: $05
    add b                                         ; $5d1e: $80
    add hl, bc                                    ; $5d1f: $09
    dec b                                         ; $5d20: $05
    or e                                          ; $5d21: $b3
    add hl, bc                                    ; $5d22: $09
    dec b                                         ; $5d23: $05
    pop hl                                        ; $5d24: $e1
    add hl, bc                                    ; $5d25: $09
    dec b                                         ; $5d26: $05
    ld a, [bc]                                    ; $5d27: $0a
    ld a, [bc]                                    ; $5d28: $0a
    dec b                                         ; $5d29: $05
    ld a, [hl-]                                   ; $5d2a: $3a
    ld a, [bc]                                    ; $5d2b: $0a
    dec b                                         ; $5d2c: $05
    ld l, b                                       ; $5d2d: $68
    ld a, [bc]                                    ; $5d2e: $0a
    dec b                                         ; $5d2f: $05
    xor [hl]                                      ; $5d30: $ae
    ld a, [bc]                                    ; $5d31: $0a
    dec b                                         ; $5d32: $05
    call Call_000_050a                            ; $5d33: $cd $0a $05
    db $f4                                        ; $5d36: $f4
    ld a, [bc]                                    ; $5d37: $0a
    dec b                                         ; $5d38: $05
    jr nz, jr_040_5d46                            ; $5d39: $20 $0b

    dec b                                         ; $5d3b: $05
    ld c, c                                       ; $5d3c: $49
    dec bc                                        ; $5d3d: $0b
    dec b                                         ; $5d3e: $05
    ld [hl], b                                    ; $5d3f: $70
    dec bc                                        ; $5d40: $0b
    dec b                                         ; $5d41: $05
    and [hl]                                      ; $5d42: $a6
    dec bc                                        ; $5d43: $0b
    dec b                                         ; $5d44: $05
    reti                                          ; $5d45: $d9


jr_040_5d46:
    dec bc                                        ; $5d46: $0b
    dec b                                         ; $5d47: $05
    add hl, hl                                    ; $5d48: $29
    inc c                                         ; $5d49: $0c

Call_040_5d4a:
    dec b                                         ; $5d4a: $05
    ld l, a                                       ; $5d4b: $6f
    inc c                                         ; $5d4c: $0c
    dec b                                         ; $5d4d: $05

Jump_040_5d4e:
    xor e                                         ; $5d4e: $ab
    inc c                                         ; $5d4f: $0c
    dec b                                         ; $5d50: $05
    ret                                           ; $5d51: $c9


    inc c                                         ; $5d52: $0c
    dec b                                         ; $5d53: $05
    ld a, [bc]                                    ; $5d54: $0a
    dec c                                         ; $5d55: $0d
    dec b                                         ; $5d56: $05
    dec [hl]                                      ; $5d57: $35
    dec c                                         ; $5d58: $0d
    dec b                                         ; $5d59: $05
    ld d, b                                       ; $5d5a: $50
    dec c                                         ; $5d5b: $0d
    dec b                                         ; $5d5c: $05
    adc h                                         ; $5d5d: $8c
    dec c                                         ; $5d5e: $0d
    dec b                                         ; $5d5f: $05
    ret z                                         ; $5d60: $c8

    dec c                                         ; $5d61: $0d
    dec b                                         ; $5d62: $05
    ei                                            ; $5d63: $fb
    dec c                                         ; $5d64: $0d
    dec b                                         ; $5d65: $05
    inc [hl]                                      ; $5d66: $34
    ld c, $05                                     ; $5d67: $0e $05
    ld l, l                                       ; $5d69: $6d
    ld c, $05                                     ; $5d6a: $0e $05
    adc a                                         ; $5d6c: $8f
    ld c, $05                                     ; $5d6d: $0e $05
    cp d                                          ; $5d6f: $ba
    ld c, $05                                     ; $5d70: $0e $05
    and $0e                                       ; $5d72: $e6 $0e
    dec b                                         ; $5d74: $05
    dec h                                         ; $5d75: $25
    rrca                                          ; $5d76: $0f
    dec b                                         ; $5d77: $05
    ld d, [hl]                                    ; $5d78: $56
    rrca                                          ; $5d79: $0f
    dec b                                         ; $5d7a: $05
    sbc c                                         ; $5d7b: $99
    rrca                                          ; $5d7c: $0f
    dec b                                         ; $5d7d: $05
    push de                                       ; $5d7e: $d5
    rrca                                          ; $5d7f: $0f
    dec b                                         ; $5d80: $05
    ld [hl], $10                                  ; $5d81: $36 $10
    dec b                                         ; $5d83: $05
    add hl, de                                    ; $5d84: $19
    ld de, $8305                                  ; $5d85: $11 $05 $83
    ld de, $0305                                  ; $5d88: $11 $05 $03
    ld [de], a                                    ; $5d8b: $12
    dec b                                         ; $5d8c: $05
    and d                                         ; $5d8d: $a2
    ld [de], a                                    ; $5d8e: $12
    dec b                                         ; $5d8f: $05
    db $ec                                        ; $5d90: $ec
    ld [de], a                                    ; $5d91: $12
    dec b                                         ; $5d92: $05
    jp nc, $0513                                  ; $5d93: $d2 $13 $05

    ld [hl], c                                    ; $5d96: $71
    inc d                                         ; $5d97: $14
    dec b                                         ; $5d98: $05
    sub h                                         ; $5d99: $94
    dec d                                         ; $5d9a: $15
    dec b                                         ; $5d9b: $05
    inc [hl]                                      ; $5d9c: $34
    ld d, $05                                     ; $5d9d: $16 $05
    ld l, h                                       ; $5d9f: $6c
    ld d, $05                                     ; $5da0: $16 $05
    db $d3                                        ; $5da2: $d3
    ld d, $05                                     ; $5da3: $16 $05
    db $fc                                        ; $5da5: $fc
    ld d, $05                                     ; $5da6: $16 $05
    dec h                                         ; $5da8: $25
    rla                                           ; $5da9: $17
    dec b                                         ; $5daa: $05
    ld b, [hl]                                    ; $5dab: $46
    rla                                           ; $5dac: $17
    dec b                                         ; $5dad: $05
    ld a, d                                       ; $5dae: $7a
    rla                                           ; $5daf: $17
    dec b                                         ; $5db0: $05
    sub l                                         ; $5db1: $95
    rla                                           ; $5db2: $17
    dec b                                         ; $5db3: $05
    jp nz, Jump_000_0517                          ; $5db4: $c2 $17 $05

    ldh a, [rNR22]                                ; $5db7: $f0 $17
    dec b                                         ; $5db9: $05
    rrca                                          ; $5dba: $0f
    jr @+$07                                      ; $5dbb: $18 $05

    cpl                                           ; $5dbd: $2f
    jr @+$07                                      ; $5dbe: $18 $05

    ld e, h                                       ; $5dc0: $5c
    jr @+$07                                      ; $5dc1: $18 $05

    ld [hl], d                                    ; $5dc3: $72
    jr @+$07                                      ; $5dc4: $18 $05

    sbc e                                         ; $5dc6: $9b
    jr @+$07                                      ; $5dc7: $18 $05

    call Call_000_0518                            ; $5dc9: $cd $18 $05
    db $ec                                        ; $5dcc: $ec
    jr jr_040_5dd4                                ; $5dcd: $18 $05

    scf                                           ; $5dcf: $37
    add hl, de                                    ; $5dd0: $19
    dec b                                         ; $5dd1: $05
    ld d, h                                       ; $5dd2: $54
    add hl, de                                    ; $5dd3: $19

jr_040_5dd4:
    dec b                                         ; $5dd4: $05
    adc c                                         ; $5dd5: $89
    add hl, de                                    ; $5dd6: $19
    dec b                                         ; $5dd7: $05
    or b                                          ; $5dd8: $b0
    add hl, de                                    ; $5dd9: $19
    dec b                                         ; $5dda: $05
    db $e3                                        ; $5ddb: $e3
    add hl, de                                    ; $5ddc: $19
    dec b                                         ; $5ddd: $05
    dec c                                         ; $5dde: $0d
    ld a, [de]                                    ; $5ddf: $1a
    dec b                                         ; $5de0: $05
    ld a, [hl+]                                   ; $5de1: $2a
    ld a, [de]                                    ; $5de2: $1a
    dec b                                         ; $5de3: $05
    ld d, e                                       ; $5de4: $53
    ld a, [de]                                    ; $5de5: $1a
    dec b                                         ; $5de6: $05
    ld [hl], d                                    ; $5de7: $72
    ld a, [de]                                    ; $5de8: $1a
    dec b                                         ; $5de9: $05
    and b                                         ; $5dea: $a0
    ld a, [de]                                    ; $5deb: $1a
    dec b                                         ; $5dec: $05
    jp $051a                                      ; $5ded: $c3 $1a $05


    push hl                                       ; $5df0: $e5
    ld a, [de]                                    ; $5df1: $1a
    dec b                                         ; $5df2: $05
    ld [$051b], sp                                ; $5df3: $08 $1b $05
    dec hl                                        ; $5df6: $2b
    dec de                                        ; $5df7: $1b
    dec b                                         ; $5df8: $05
    ld l, b                                       ; $5df9: $68
    dec de                                        ; $5dfa: $1b
    dec b                                         ; $5dfb: $05
    and b                                         ; $5dfc: $a0
    dec de                                        ; $5dfd: $1b
    dec b                                         ; $5dfe: $05
    db $dd                                        ; $5dff: $dd
    dec de                                        ; $5e00: $1b
    dec b                                         ; $5e01: $05
    ld [de], a                                    ; $5e02: $12
    inc e                                         ; $5e03: $1c
    dec b                                         ; $5e04: $05
    jr c, jr_040_5e23                             ; $5e05: $38 $1c

    dec b                                         ; $5e07: $05
    ld e, d                                       ; $5e08: $5a
    inc e                                         ; $5e09: $1c
    dec b                                         ; $5e0a: $05
    ld l, c                                       ; $5e0b: $69
    inc e                                         ; $5e0c: $1c
    dec b                                         ; $5e0d: $05
    sub l                                         ; $5e0e: $95
    inc e                                         ; $5e0f: $1c
    dec b                                         ; $5e10: $05
    or l                                          ; $5e11: $b5
    inc e                                         ; $5e12: $1c
    dec b                                         ; $5e13: $05
    sub $1c                                       ; $5e14: $d6 $1c
    dec b                                         ; $5e16: $05
    ei                                            ; $5e17: $fb
    inc e                                         ; $5e18: $1c
    dec b                                         ; $5e19: $05
    inc sp                                        ; $5e1a: $33
    dec e                                         ; $5e1b: $1d
    dec b                                         ; $5e1c: $05
    ld c, [hl]                                    ; $5e1d: $4e
    dec e                                         ; $5e1e: $1d
    dec b                                         ; $5e1f: $05
    ld a, h                                       ; $5e20: $7c
    dec e                                         ; $5e21: $1d
    dec b                                         ; $5e22: $05

jr_040_5e23:
    sub a                                         ; $5e23: $97
    dec e                                         ; $5e24: $1d
    dec b                                         ; $5e25: $05
    ld [c], a                                     ; $5e26: $e2
    dec e                                         ; $5e27: $1d
    dec b                                         ; $5e28: $05
    inc bc                                        ; $5e29: $03
    ld e, $05                                     ; $5e2a: $1e $05
    cpl                                           ; $5e2c: $2f
    ld e, $05                                     ; $5e2d: $1e $05
    ld h, a                                       ; $5e2f: $67
    ld e, $05                                     ; $5e30: $1e $05
    sbc h                                         ; $5e32: $9c
    ld e, $05                                     ; $5e33: $1e $05
    jp nc, $051e                                  ; $5e35: $d2 $1e $05

    di                                            ; $5e38: $f3
    ld e, $05                                     ; $5e39: $1e $05
    inc l                                         ; $5e3b: $2c
    rra                                           ; $5e3c: $1f
    dec b                                         ; $5e3d: $05
    ld c, d                                       ; $5e3e: $4a
    rra                                           ; $5e3f: $1f
    dec b                                         ; $5e40: $05
    ld [hl], c                                    ; $5e41: $71
    rra                                           ; $5e42: $1f
    dec b                                         ; $5e43: $05
    sub e                                         ; $5e44: $93
    rra                                           ; $5e45: $1f
    dec b                                         ; $5e46: $05
    add $1f                                       ; $5e47: $c6 $1f
    dec b                                         ; $5e49: $05
    add sp, $1f                                   ; $5e4a: $e8 $1f
    dec b                                         ; $5e4c: $05
    add hl, hl                                    ; $5e4d: $29
    jr nz, @+$07                                  ; $5e4e: $20 $05

    ld e, e                                       ; $5e50: $5b
    jr nz, @+$07                                  ; $5e51: $20 $05

    sub e                                         ; $5e53: $93
    jr nz, @+$07                                  ; $5e54: $20 $05

    ret                                           ; $5e56: $c9


    jr nz, @+$07                                  ; $5e57: $20 $05

    db $dd                                        ; $5e59: $dd
    jr nz, @+$07                                  ; $5e5a: $20 $05

    rst $18                                       ; $5e5c: $df
    jr nz, @+$07                                  ; $5e5d: $20 $05

    db $eb                                        ; $5e5f: $eb
    jr nz, jr_040_5e67                            ; $5e60: $20 $05

    db $f4                                        ; $5e62: $f4
    jr nz, @+$07                                  ; $5e63: $20 $05

    or $20                                        ; $5e65: $f6 $20

jr_040_5e67:
    dec b                                         ; $5e67: $05
    ld bc, $0521                                  ; $5e68: $01 $21 $05
    dec bc                                        ; $5e6b: $0b
    ld hl, $0d05                                  ; $5e6c: $21 $05 $0d
    ld hl, $1605                                  ; $5e6f: $21 $05 $16
    ld hl, $2005                                  ; $5e72: $21 $05 $20
    ld hl, $2205                                  ; $5e75: $21 $05 $22
    ld hl, $2b05                                  ; $5e78: $21 $05 $2b
    ld hl, $3405                                  ; $5e7b: $21 $05 $34
    ld hl, $3d05                                  ; $5e7e: $21 $05 $3d
    ld hl, $4805                                  ; $5e81: $21 $05 $48
    ld hl, $5105                                  ; $5e84: $21 $05 $51
    ld hl, $5305                                  ; $5e87: $21 $05 $53
    ld hl, $6005                                  ; $5e8a: $21 $05 $60
    ld hl, $6905                                  ; $5e8d: $21 $05 $69
    ld hl, $7105                                  ; $5e90: $21 $05 $71
    ld hl, $7b05                                  ; $5e93: $21 $05 $7b
    ld hl, $7d05                                  ; $5e96: $21 $05 $7d
    ld hl, $8f05                                  ; $5e99: $21 $05 $8f
    ld hl, $9905                                  ; $5e9c: $21 $05 $99
    ld hl, $9b05                                  ; $5e9f: $21 $05 $9b
    ld hl, $a705                                  ; $5ea2: $21 $05 $a7
    ld hl, $af05                                  ; $5ea5: $21 $05 $af
    ld hl, $b105                                  ; $5ea8: $21 $05 $b1
    ld hl, $c005                                  ; $5eab: $21 $05 $c0
    ld hl, $c805                                  ; $5eae: $21 $05 $c8
    ld hl, $d005                                  ; $5eb1: $21 $05 $d0
    ld hl, $d705                                  ; $5eb4: $21 $05 $d7
    ld hl, $d905                                  ; $5eb7: $21 $05 $d9
    ld hl, $df05                                  ; $5eba: $21 $05 $df
    ld hl, $e905                                  ; $5ebd: $21 $05 $e9
    ld hl, $f305                                  ; $5ec0: $21 $05 $f3
    ld hl, $fd05                                  ; $5ec3: $21 $05 $fd
    ld hl, $0505                                  ; $5ec6: $21 $05 $05
    ld [hl+], a                                   ; $5ec9: $22
    dec b                                         ; $5eca: $05
    rlca                                          ; $5ecb: $07
    ld [hl+], a                                   ; $5ecc: $22
    dec b                                         ; $5ecd: $05
    add hl, bc                                    ; $5ece: $09
    ld [hl+], a                                   ; $5ecf: $22
    dec b                                         ; $5ed0: $05
    ld hl, $0522                                  ; $5ed1: $21 $22 $05
    inc hl                                        ; $5ed4: $23
    ld [hl+], a                                   ; $5ed5: $22
    dec b                                         ; $5ed6: $05
    cpl                                           ; $5ed7: $2f
    ld [hl+], a                                   ; $5ed8: $22
    dec b                                         ; $5ed9: $05
    jr c, jr_040_5efe                             ; $5eda: $38 $22

    dec b                                         ; $5edc: $05
    ld b, b                                       ; $5edd: $40
    ld [hl+], a                                   ; $5ede: $22
    dec b                                         ; $5edf: $05
    ld b, d                                       ; $5ee0: $42
    ld [hl+], a                                   ; $5ee1: $22
    dec b                                         ; $5ee2: $05
    ld c, h                                       ; $5ee3: $4c
    ld [hl+], a                                   ; $5ee4: $22
    dec b                                         ; $5ee5: $05
    ld d, [hl]                                    ; $5ee6: $56
    ld [hl+], a                                   ; $5ee7: $22
    dec b                                         ; $5ee8: $05
    ld e, b                                       ; $5ee9: $58
    ld [hl+], a                                   ; $5eea: $22
    dec b                                         ; $5eeb: $05
    ld h, e                                       ; $5eec: $63
    ld [hl+], a                                   ; $5eed: $22
    dec b                                         ; $5eee: $05
    ld l, h                                       ; $5eef: $6c
    ld [hl+], a                                   ; $5ef0: $22
    dec b                                         ; $5ef1: $05
    ld l, [hl]                                    ; $5ef2: $6e
    ld [hl+], a                                   ; $5ef3: $22
    dec b                                         ; $5ef4: $05
    adc d                                         ; $5ef5: $8a
    ld [hl+], a                                   ; $5ef6: $22
    dec b                                         ; $5ef7: $05
    sub [hl]                                      ; $5ef8: $96
    ld [hl+], a                                   ; $5ef9: $22
    dec b                                         ; $5efa: $05
    and b                                         ; $5efb: $a0
    ld [hl+], a                                   ; $5efc: $22
    dec b                                         ; $5efd: $05

jr_040_5efe:
    xor b                                         ; $5efe: $a8
    ld [hl+], a                                   ; $5eff: $22
    dec b                                         ; $5f00: $05
    or b                                          ; $5f01: $b0
    ld [hl+], a                                   ; $5f02: $22
    dec b                                         ; $5f03: $05
    cp d                                          ; $5f04: $ba
    ld [hl+], a                                   ; $5f05: $22
    dec b                                         ; $5f06: $05
    jp Jump_000_0522                              ; $5f07: $c3 $22 $05


    push bc                                       ; $5f0a: $c5
    ld [hl+], a                                   ; $5f0b: $22
    dec b                                         ; $5f0c: $05
    rst $00                                       ; $5f0d: $c7
    ld [hl+], a                                   ; $5f0e: $22
    dec b                                         ; $5f0f: $05
    ret                                           ; $5f10: $c9


    ld [hl+], a                                   ; $5f11: $22
    dec b                                         ; $5f12: $05
    db $db                                        ; $5f13: $db
    ld [hl+], a                                   ; $5f14: $22
    dec b                                         ; $5f15: $05
    db $dd                                        ; $5f16: $dd
    ld [hl+], a                                   ; $5f17: $22
    dec b                                         ; $5f18: $05
    rst $20                                       ; $5f19: $e7
    ld [hl+], a                                   ; $5f1a: $22
    dec b                                         ; $5f1b: $05
    rst $28                                       ; $5f1c: $ef
    ld [hl+], a                                   ; $5f1d: $22
    dec b                                         ; $5f1e: $05
    ld sp, hl                                     ; $5f1f: $f9
    ld [hl+], a                                   ; $5f20: $22
    dec b                                         ; $5f21: $05
    ld bc, $0523                                  ; $5f22: $01 $23 $05
    dec bc                                        ; $5f25: $0b
    inc hl                                        ; $5f26: $23
    dec b                                         ; $5f27: $05
    ld d, $23                                     ; $5f28: $16 $23
    dec b                                         ; $5f2a: $05
    rra                                           ; $5f2b: $1f
    inc hl                                        ; $5f2c: $23
    dec b                                         ; $5f2d: $05
    jr z, jr_040_5f53                             ; $5f2e: $28 $23

    dec b                                         ; $5f30: $05
    ld a, [hl+]                                   ; $5f31: $2a
    inc hl                                        ; $5f32: $23
    dec b                                         ; $5f33: $05
    ld a, [hl-]                                   ; $5f34: $3a
    inc hl                                        ; $5f35: $23
    dec b                                         ; $5f36: $05
    ld b, c                                       ; $5f37: $41
    inc hl                                        ; $5f38: $23
    dec b                                         ; $5f39: $05
    ld b, e                                       ; $5f3a: $43
    inc hl                                        ; $5f3b: $23
    dec b                                         ; $5f3c: $05
    ld c, a                                       ; $5f3d: $4f
    inc hl                                        ; $5f3e: $23
    dec b                                         ; $5f3f: $05
    ld d, a                                       ; $5f40: $57
    inc hl                                        ; $5f41: $23
    dec b                                         ; $5f42: $05
    ld e, c                                       ; $5f43: $59
    inc hl                                        ; $5f44: $23
    dec b                                         ; $5f45: $05
    ld h, b                                       ; $5f46: $60
    inc hl                                        ; $5f47: $23
    dec b                                         ; $5f48: $05
    ld l, c                                       ; $5f49: $69
    inc hl                                        ; $5f4a: $23
    dec b                                         ; $5f4b: $05
    ld [hl], d                                    ; $5f4c: $72
    inc hl                                        ; $5f4d: $23
    dec b                                         ; $5f4e: $05
    ld a, e                                       ; $5f4f: $7b
    inc hl                                        ; $5f50: $23
    dec b                                         ; $5f51: $05
    add l                                         ; $5f52: $85

jr_040_5f53:
    inc hl                                        ; $5f53: $23
    dec b                                         ; $5f54: $05
    add a                                         ; $5f55: $87
    inc hl                                        ; $5f56: $23
    dec b                                         ; $5f57: $05
    sub d                                         ; $5f58: $92
    inc hl                                        ; $5f59: $23
    dec b                                         ; $5f5a: $05
    sbc e                                         ; $5f5b: $9b
    inc hl                                        ; $5f5c: $23
    dec b                                         ; $5f5d: $05
    and l                                         ; $5f5e: $a5
    inc hl                                        ; $5f5f: $23
    dec b                                         ; $5f60: $05
    xor e                                         ; $5f61: $ab
    inc hl                                        ; $5f62: $23
    dec b                                         ; $5f63: $05
    or l                                          ; $5f64: $b5
    inc hl                                        ; $5f65: $23
    dec b                                         ; $5f66: $05
    cp l                                          ; $5f67: $bd
    inc hl                                        ; $5f68: $23
    dec b                                         ; $5f69: $05
    push bc                                       ; $5f6a: $c5
    inc hl                                        ; $5f6b: $23
    dec b                                         ; $5f6c: $05
    rst $08                                       ; $5f6d: $cf
    inc hl                                        ; $5f6e: $23
    dec b                                         ; $5f6f: $05
    call c, Call_000_0523                         ; $5f70: $dc $23 $05
    push hl                                       ; $5f73: $e5
    inc hl                                        ; $5f74: $23
    dec b                                         ; $5f75: $05
    xor $23                                       ; $5f76: $ee $23
    dec b                                         ; $5f78: $05
    ldh a, [rNR44]                                ; $5f79: $f0 $23
    dec b                                         ; $5f7b: $05
    ld hl, sp+$23                                 ; $5f7c: $f8 $23
    dec b                                         ; $5f7e: $05
    rst $38                                       ; $5f7f: $ff
    inc hl                                        ; $5f80: $23
    dec b                                         ; $5f81: $05
    add hl, bc                                    ; $5f82: $09
    inc h                                         ; $5f83: $24
    dec b                                         ; $5f84: $05
    ld [de], a                                    ; $5f85: $12
    inc h                                         ; $5f86: $24
    dec b                                         ; $5f87: $05
    dec de                                        ; $5f88: $1b
    inc h                                         ; $5f89: $24
    dec b                                         ; $5f8a: $05
    dec e                                         ; $5f8b: $1d
    inc h                                         ; $5f8c: $24
    dec b                                         ; $5f8d: $05
    scf                                           ; $5f8e: $37
    inc h                                         ; $5f8f: $24
    dec b                                         ; $5f90: $05
    ld b, d                                       ; $5f91: $42
    inc h                                         ; $5f92: $24
    dec b                                         ; $5f93: $05
    ld c, h                                       ; $5f94: $4c
    inc h                                         ; $5f95: $24
    dec b                                         ; $5f96: $05
    ld d, l                                       ; $5f97: $55
    inc h                                         ; $5f98: $24
    dec b                                         ; $5f99: $05
    ld e, [hl]                                    ; $5f9a: $5e
    inc h                                         ; $5f9b: $24
    dec b                                         ; $5f9c: $05
    ld h, [hl]                                    ; $5f9d: $66
    inc h                                         ; $5f9e: $24
    dec b                                         ; $5f9f: $05
    ld l, l                                       ; $5fa0: $6d
    inc h                                         ; $5fa1: $24
    dec b                                         ; $5fa2: $05
    ld [hl], a                                    ; $5fa3: $77
    inc h                                         ; $5fa4: $24
    dec b                                         ; $5fa5: $05
    add b                                         ; $5fa6: $80
    inc h                                         ; $5fa7: $24
    dec b                                         ; $5fa8: $05
    add a                                         ; $5fa9: $87
    inc h                                         ; $5faa: $24
    dec b                                         ; $5fab: $05
    adc a                                         ; $5fac: $8f
    inc h                                         ; $5fad: $24
    dec b                                         ; $5fae: $05
    sbc b                                         ; $5faf: $98
    inc h                                         ; $5fb0: $24
    dec b                                         ; $5fb1: $05
    and c                                         ; $5fb2: $a1
    inc h                                         ; $5fb3: $24
    dec b                                         ; $5fb4: $05
    and e                                         ; $5fb5: $a3
    inc h                                         ; $5fb6: $24
    dec b                                         ; $5fb7: $05
    and l                                         ; $5fb8: $a5
    inc h                                         ; $5fb9: $24
    dec b                                         ; $5fba: $05
    and a                                         ; $5fbb: $a7
    inc h                                         ; $5fbc: $24
    dec b                                         ; $5fbd: $05
    xor c                                         ; $5fbe: $a9
    inc h                                         ; $5fbf: $24
    dec b                                         ; $5fc0: $05
    xor e                                         ; $5fc1: $ab
    inc h                                         ; $5fc2: $24
    dec b                                         ; $5fc3: $05
    xor l                                         ; $5fc4: $ad
    inc h                                         ; $5fc5: $24
    dec b                                         ; $5fc6: $05
    xor a                                         ; $5fc7: $af
    inc h                                         ; $5fc8: $24
    dec b                                         ; $5fc9: $05
    or c                                          ; $5fca: $b1
    inc h                                         ; $5fcb: $24
    dec b                                         ; $5fcc: $05
    or e                                          ; $5fcd: $b3
    inc h                                         ; $5fce: $24
    dec b                                         ; $5fcf: $05
    or l                                          ; $5fd0: $b5
    inc h                                         ; $5fd1: $24
    dec b                                         ; $5fd2: $05
    or a                                          ; $5fd3: $b7
    inc h                                         ; $5fd4: $24
    dec b                                         ; $5fd5: $05
    cp c                                          ; $5fd6: $b9
    inc h                                         ; $5fd7: $24
    dec b                                         ; $5fd8: $05
    cp e                                          ; $5fd9: $bb
    inc h                                         ; $5fda: $24

Jump_040_5fdb:
    dec b                                         ; $5fdb: $05
    cp l                                          ; $5fdc: $bd
    inc h                                         ; $5fdd: $24
    dec b                                         ; $5fde: $05
    cp a                                          ; $5fdf: $bf
    inc h                                         ; $5fe0: $24
    dec b                                         ; $5fe1: $05
    pop bc                                        ; $5fe2: $c1
    inc h                                         ; $5fe3: $24
    dec b                                         ; $5fe4: $05
    jp $0524                                      ; $5fe5: $c3 $24 $05


    push bc                                       ; $5fe8: $c5
    inc h                                         ; $5fe9: $24
    dec b                                         ; $5fea: $05
    rst $00                                       ; $5feb: $c7
    inc h                                         ; $5fec: $24
    dec b                                         ; $5fed: $05
    ret                                           ; $5fee: $c9


    inc h                                         ; $5fef: $24
    dec b                                         ; $5ff0: $05
    sla h                                         ; $5ff1: $cb $24
    dec b                                         ; $5ff3: $05
    call $0524                                    ; $5ff4: $cd $24 $05
    rst $08                                       ; $5ff7: $cf
    inc h                                         ; $5ff8: $24
    dec b                                         ; $5ff9: $05
    pop de                                        ; $5ffa: $d1
    inc h                                         ; $5ffb: $24
    dec b                                         ; $5ffc: $05
    db $d3                                        ; $5ffd: $d3
    inc h                                         ; $5ffe: $24
    dec b                                         ; $5fff: $05
    push de                                       ; $6000: $d5
    inc h                                         ; $6001: $24
    dec b                                         ; $6002: $05
    rst $10                                       ; $6003: $d7
    inc h                                         ; $6004: $24
    dec b                                         ; $6005: $05
    reti                                          ; $6006: $d9


    inc h                                         ; $6007: $24
    dec b                                         ; $6008: $05
    db $db                                        ; $6009: $db
    inc h                                         ; $600a: $24
    dec b                                         ; $600b: $05
    db $dd                                        ; $600c: $dd
    inc h                                         ; $600d: $24
    dec b                                         ; $600e: $05
    rst $18                                       ; $600f: $df
    inc h                                         ; $6010: $24
    dec b                                         ; $6011: $05
    pop hl                                        ; $6012: $e1
    inc h                                         ; $6013: $24
    dec b                                         ; $6014: $05
    db $e3                                        ; $6015: $e3
    inc h                                         ; $6016: $24
    dec b                                         ; $6017: $05
    push hl                                       ; $6018: $e5
    inc h                                         ; $6019: $24
    dec b                                         ; $601a: $05
    db $fc                                        ; $601b: $fc
    inc h                                         ; $601c: $24
    dec b                                         ; $601d: $05
    ld [bc], a                                    ; $601e: $02
    dec h                                         ; $601f: $25
    dec b                                         ; $6020: $05
    inc [hl]                                      ; $6021: $34
    dec h                                         ; $6022: $25
    dec b                                         ; $6023: $05
    ld d, b                                       ; $6024: $50
    dec h                                         ; $6025: $25
    dec b                                         ; $6026: $05
    and h                                         ; $6027: $a4
    dec h                                         ; $6028: $25
    dec b                                         ; $6029: $05
    or e                                          ; $602a: $b3
    dec h                                         ; $602b: $25
    dec b                                         ; $602c: $05
    dec b                                         ; $602d: $05
    ld h, $05                                     ; $602e: $26 $05
    add hl, hl                                    ; $6030: $29
    ld h, $05                                     ; $6031: $26 $05
    add d                                         ; $6033: $82
    ld h, $05                                     ; $6034: $26 $05
    sub [hl]                                      ; $6036: $96
    ld h, $05                                     ; $6037: $26 $05
    push de                                       ; $6039: $d5
    ld h, $05                                     ; $603a: $26 $05
    add hl, de                                    ; $603c: $19
    daa                                           ; $603d: $27
    dec b                                         ; $603e: $05
    add hl, hl                                    ; $603f: $29
    daa                                           ; $6040: $27
    dec b                                         ; $6041: $05
    ld e, l                                       ; $6042: $5d
    daa                                           ; $6043: $27
    dec b                                         ; $6044: $05
    add b                                         ; $6045: $80
    daa                                           ; $6046: $27
    dec b                                         ; $6047: $05
    sbc a                                         ; $6048: $9f
    daa                                           ; $6049: $27
    dec b                                         ; $604a: $05
    ldh a, [$27]                                  ; $604b: $f0 $27
    dec b                                         ; $604d: $05
    db $fd                                        ; $604e: $fd
    daa                                           ; $604f: $27
    dec b                                         ; $6050: $05
    ld de, $0528                                  ; $6051: $11 $28 $05
    inc hl                                        ; $6054: $23
    jr z, @+$07                                   ; $6055: $28 $05

    ld [hl], $28                                  ; $6057: $36 $28
    dec b                                         ; $6059: $05
    ld c, d                                       ; $605a: $4a
    jr z, @+$07                                   ; $605b: $28 $05

    ld l, c                                       ; $605d: $69
    jr z, @+$07                                   ; $605e: $28 $05

    cp h                                          ; $6060: $bc
    jr z, @+$07                                   ; $6061: $28 $05

    rst $00                                       ; $6063: $c7
    jr z, jr_040_606b                             ; $6064: $28 $05

    ld de, $0529                                  ; $6066: $11 $29 $05
    inc hl                                        ; $6069: $23
    add hl, hl                                    ; $606a: $29

jr_040_606b:
    dec b                                         ; $606b: $05
    dec a                                         ; $606c: $3d
    add hl, hl                                    ; $606d: $29
    dec b                                         ; $606e: $05
    add a                                         ; $606f: $87
    add hl, hl                                    ; $6070: $29
    dec b                                         ; $6071: $05
    xor a                                         ; $6072: $af
    add hl, hl                                    ; $6073: $29
    dec b                                         ; $6074: $05
    push bc                                       ; $6075: $c5
    add hl, hl                                    ; $6076: $29
    dec b                                         ; $6077: $05
    push de                                       ; $6078: $d5
    add hl, hl                                    ; $6079: $29
    dec b                                         ; $607a: $05
    rst $30                                       ; $607b: $f7
    add hl, hl                                    ; $607c: $29
    dec b                                         ; $607d: $05
    inc de                                        ; $607e: $13
    ld a, [hl+]                                   ; $607f: $2a
    dec b                                         ; $6080: $05
    dec h                                         ; $6081: $25
    ld a, [hl+]                                   ; $6082: $2a
    dec b                                         ; $6083: $05
    ld [hl-], a                                   ; $6084: $32
    ld a, [hl+]                                   ; $6085: $2a
    dec b                                         ; $6086: $05
    ld b, l                                       ; $6087: $45
    ld a, [hl+]                                   ; $6088: $2a
    dec b                                         ; $6089: $05
    ld e, a                                       ; $608a: $5f
    ld a, [hl+]                                   ; $608b: $2a
    dec b                                         ; $608c: $05
    ld l, d                                       ; $608d: $6a
    ld a, [hl+]                                   ; $608e: $2a
    dec b                                         ; $608f: $05
    halt                                          ; $6090: $76
    ld a, [hl+]                                   ; $6091: $2a
    dec b                                         ; $6092: $05
    adc c                                         ; $6093: $89
    ld a, [hl+]                                   ; $6094: $2a
    dec b                                         ; $6095: $05
    and e                                         ; $6096: $a3
    ld a, [hl+]                                   ; $6097: $2a
    dec b                                         ; $6098: $05
    cp b                                          ; $6099: $b8
    ld a, [hl+]                                   ; $609a: $2a
    dec b                                         ; $609b: $05
    rst $00                                       ; $609c: $c7
    ld a, [hl+]                                   ; $609d: $2a
    dec b                                         ; $609e: $05
    db $e4                                        ; $609f: $e4
    ld a, [hl+]                                   ; $60a0: $2a
    dec b                                         ; $60a1: $05
    cp $2a                                        ; $60a2: $fe $2a
    dec b                                         ; $60a4: $05
    ld a, [bc]                                    ; $60a5: $0a
    dec hl                                        ; $60a6: $2b
    dec b                                         ; $60a7: $05
    add hl, hl                                    ; $60a8: $29
    dec hl                                        ; $60a9: $2b
    dec b                                         ; $60aa: $05
    ld b, b                                       ; $60ab: $40
    dec hl                                        ; $60ac: $2b
    dec b                                         ; $60ad: $05
    ld e, d                                       ; $60ae: $5a
    dec hl                                        ; $60af: $2b
    dec b                                         ; $60b0: $05
    ld a, e                                       ; $60b1: $7b
    dec hl                                        ; $60b2: $2b
    dec b                                         ; $60b3: $05
    sub c                                         ; $60b4: $91
    dec hl                                        ; $60b5: $2b
    dec b                                         ; $60b6: $05
    and d                                         ; $60b7: $a2
    dec hl                                        ; $60b8: $2b
    dec b                                         ; $60b9: $05
    xor a                                         ; $60ba: $af
    dec hl                                        ; $60bb: $2b
    dec b                                         ; $60bc: $05
    push de                                       ; $60bd: $d5
    dec hl                                        ; $60be: $2b
    dec b                                         ; $60bf: $05
    ldh a, [$2b]                                  ; $60c0: $f0 $2b
    dec b                                         ; $60c2: $05
    ld [$052c], sp                                ; $60c3: $08 $2c $05
    ld hl, $052c                                  ; $60c6: $21 $2c $05
    ld b, c                                       ; $60c9: $41
    inc l                                         ; $60ca: $2c
    dec b                                         ; $60cb: $05
    ld [hl], e                                    ; $60cc: $73
    inc l                                         ; $60cd: $2c
    dec b                                         ; $60ce: $05
    add h                                         ; $60cf: $84
    inc l                                         ; $60d0: $2c
    dec b                                         ; $60d1: $05
    cp a                                          ; $60d2: $bf
    inc l                                         ; $60d3: $2c
    dec b                                         ; $60d4: $05
    sbc $2c                                       ; $60d5: $de $2c
    dec b                                         ; $60d7: $05
    di                                            ; $60d8: $f3
    inc l                                         ; $60d9: $2c
    dec b                                         ; $60da: $05
    ld c, $2d                                     ; $60db: $0e $2d
    dec b                                         ; $60dd: $05
    inc [hl]                                      ; $60de: $34
    dec l                                         ; $60df: $2d
    dec b                                         ; $60e0: $05
    ld d, l                                       ; $60e1: $55
    dec l                                         ; $60e2: $2d
    dec b                                         ; $60e3: $05
    ld l, b                                       ; $60e4: $68
    dec l                                         ; $60e5: $2d
    dec b                                         ; $60e6: $05
    add e                                         ; $60e7: $83
    dec l                                         ; $60e8: $2d
    dec b                                         ; $60e9: $05
    and h                                         ; $60ea: $a4
    dec l                                         ; $60eb: $2d
    dec b                                         ; $60ec: $05
    or [hl]                                       ; $60ed: $b6
    dec l                                         ; $60ee: $2d
    dec b                                         ; $60ef: $05
    rst $00                                       ; $60f0: $c7
    dec l                                         ; $60f1: $2d
    dec b                                         ; $60f2: $05
    rst $18                                       ; $60f3: $df
    dec l                                         ; $60f4: $2d
    dec b                                         ; $60f5: $05
    cp $2d                                        ; $60f6: $fe $2d
    dec b                                         ; $60f8: $05
    dec h                                         ; $60f9: $25
    ld l, $05                                     ; $60fa: $2e $05
    dec [hl]                                      ; $60fc: $35
    ld l, $05                                     ; $60fd: $2e $05
    ld c, h                                       ; $60ff: $4c
    ld l, $05                                     ; $6100: $2e $05
    ld l, d                                       ; $6102: $6a
    ld l, $05                                     ; $6103: $2e $05
    sub c                                         ; $6105: $91
    ld l, $05                                     ; $6106: $2e $05
    xor b                                         ; $6108: $a8
    ld l, $05                                     ; $6109: $2e $05
    add $2e                                       ; $610b: $c6 $2e
    dec b                                         ; $610d: $05
    db $eb                                        ; $610e: $eb
    ld l, $05                                     ; $610f: $2e $05
    inc bc                                        ; $6111: $03
    cpl                                           ; $6112: $2f
    dec b                                         ; $6113: $05
    ld [hl], b                                    ; $6114: $70
    cpl                                           ; $6115: $2f
    dec b                                         ; $6116: $05
    push hl                                       ; $6117: $e5
    cpl                                           ; $6118: $2f
    dec b                                         ; $6119: $05
    inc b                                         ; $611a: $04
    jr nc, @+$07                                  ; $611b: $30 $05

    jr nc, jr_040_614f                            ; $611d: $30 $30

    dec b                                         ; $611f: $05
    ld e, b                                       ; $6120: $58
    jr nc, @+$07                                  ; $6121: $30 $05

    sub b                                         ; $6123: $90
    jr nc, @+$07                                  ; $6124: $30 $05

    rst $00                                       ; $6126: $c7
    jr nc, @+$07                                  ; $6127: $30 $05

    db $f4                                        ; $6129: $f4
    jr nc, @+$07                                  ; $612a: $30 $05

    dec e                                         ; $612c: $1d
    ld sp, $4b05                                  ; $612d: $31 $05 $4b
    ld sp, $7805                                  ; $6130: $31 $05 $78
    ld sp, $aa05                                  ; $6133: $31 $05 $aa
    ld sp, $cf05                                  ; $6136: $31 $05 $cf
    ld sp, $e405                                  ; $6139: $31 $05 $e4
    ld sp, $fe05                                  ; $613c: $31 $05 $fe
    ld sp, $3305                                  ; $613f: $31 $05 $33
    ld [hl-], a                                   ; $6142: $32
    dec b                                         ; $6143: $05
    ld [hl], h                                    ; $6144: $74
    ld [hl-], a                                   ; $6145: $32
    dec b                                         ; $6146: $05
    adc $32                                       ; $6147: $ce $32
    dec b                                         ; $6149: $05
    ld de, $0533                                  ; $614a: $11 $33 $05
    ld d, b                                       ; $614d: $50
    inc sp                                        ; $614e: $33

jr_040_614f:
    dec b                                         ; $614f: $05
    sbc [hl]                                      ; $6150: $9e
    inc sp                                        ; $6151: $33
    dec b                                         ; $6152: $05
    and $33                                       ; $6153: $e6 $33
    dec b                                         ; $6155: $05
    ld b, e                                       ; $6156: $43
    inc [hl]                                      ; $6157: $34
    dec b                                         ; $6158: $05
    sbc c                                         ; $6159: $99
    inc [hl]                                      ; $615a: $34
    dec b                                         ; $615b: $05
    inc de                                        ; $615c: $13
    dec [hl]                                      ; $615d: $35
    dec b                                         ; $615e: $05
    add e                                         ; $615f: $83
    dec [hl]                                      ; $6160: $35
    dec b                                         ; $6161: $05
    db $dd                                        ; $6162: $dd
    dec [hl]                                      ; $6163: $35
    dec b                                         ; $6164: $05
    ld c, e                                       ; $6165: $4b
    ld [hl], $05                                  ; $6166: $36 $05
    and h                                         ; $6168: $a4
    ld [hl], $05                                  ; $6169: $36 $05
    dec de                                        ; $616b: $1b
    scf                                           ; $616c: $37
    dec b                                         ; $616d: $05
    ld [hl], h                                    ; $616e: $74
    scf                                           ; $616f: $37
    dec b                                         ; $6170: $05
    and $37                                       ; $6171: $e6 $37
    dec b                                         ; $6173: $05
    inc a                                         ; $6174: $3c
    jr c, @+$07                                   ; $6175: $38 $05

    and b                                         ; $6177: $a0
    jr c, jr_040_617f                             ; $6178: $38 $05

    ld a, [$0538]                                 ; $617a: $fa $38 $05
    ld h, b                                       ; $617d: $60
    add hl, sp                                    ; $617e: $39

jr_040_617f:
    dec b                                         ; $617f: $05
    srl c                                         ; $6180: $cb $39
    dec b                                         ; $6182: $05
    scf                                           ; $6183: $37
    ld a, [hl-]                                   ; $6184: $3a
    dec b                                         ; $6185: $05
    sub [hl]                                      ; $6186: $96
    ld a, [hl-]                                   ; $6187: $3a
    dec b                                         ; $6188: $05
    inc bc                                        ; $6189: $03
    dec sp                                        ; $618a: $3b
    dec b                                         ; $618b: $05
    ld [hl], a                                    ; $618c: $77
    dec sp                                        ; $618d: $3b
    dec b                                         ; $618e: $05
    or a                                          ; $618f: $b7
    dec sp                                        ; $6190: $3b
    dec b                                         ; $6191: $05
    jp z, Jump_000_053b                           ; $6192: $ca $3b $05

    rst $08                                       ; $6195: $cf
    dec sp                                        ; $6196: $3b
    dec b                                         ; $6197: $05
    call nc, Call_000_053b                        ; $6198: $d4 $3b $05
    db $dd                                        ; $619b: $dd
    dec sp                                        ; $619c: $3b
    dec b                                         ; $619d: $05
    add sp, $3b                                   ; $619e: $e8 $3b
    dec b                                         ; $61a0: $05
    push af                                       ; $61a1: $f5
    dec sp                                        ; $61a2: $3b
    dec b                                         ; $61a3: $05
    jr z, jr_040_61e2                             ; $61a4: $28 $3c

    dec b                                         ; $61a6: $05
    ld h, d                                       ; $61a7: $62
    inc a                                         ; $61a8: $3c
    dec b                                         ; $61a9: $05
    or b                                          ; $61aa: $b0
    inc a                                         ; $61ab: $3c
    dec b                                         ; $61ac: $05
    rst $28                                       ; $61ad: $ef
    inc a                                         ; $61ae: $3c
    dec b                                         ; $61af: $05
    ld a, [hl-]                                   ; $61b0: $3a
    dec a                                         ; $61b1: $3d
    dec b                                         ; $61b2: $05
    ld h, e                                       ; $61b3: $63
    dec a                                         ; $61b4: $3d
    dec b                                         ; $61b5: $05
    pop bc                                        ; $61b6: $c1
    dec a                                         ; $61b7: $3d
    dec b                                         ; $61b8: $05
    add hl, bc                                    ; $61b9: $09
    ld a, $05                                     ; $61ba: $3e $05
    dec sp                                        ; $61bc: $3b
    ld a, $05                                     ; $61bd: $3e $05
    ld h, d                                       ; $61bf: $62
    ld a, $05                                     ; $61c0: $3e $05
    add a                                         ; $61c2: $87
    ld a, $05                                     ; $61c3: $3e $05
    xor c                                         ; $61c5: $a9
    ld a, $05                                     ; $61c6: $3e $05
    rst $08                                       ; $61c8: $cf
    ld a, $05                                     ; $61c9: $3e $05
    rst $28                                       ; $61cb: $ef
    ld a, $05                                     ; $61cc: $3e $05
    inc d                                         ; $61ce: $14
    ccf                                           ; $61cf: $3f
    dec b                                         ; $61d0: $05
    cpl                                           ; $61d1: $2f
    ccf                                           ; $61d2: $3f
    dec b                                         ; $61d3: $05
    ld e, h                                       ; $61d4: $5c
    ccf                                           ; $61d5: $3f
    dec b                                         ; $61d6: $05
    ld l, d                                       ; $61d7: $6a
    ccf                                           ; $61d8: $3f
    dec b                                         ; $61d9: $05
    ld a, [hl]                                    ; $61da: $7e
    ccf                                           ; $61db: $3f
    dec b                                         ; $61dc: $05
    sub e                                         ; $61dd: $93
    ccf                                           ; $61de: $3f
    dec b                                         ; $61df: $05
    ret z                                         ; $61e0: $c8

    ccf                                           ; $61e1: $3f

jr_040_61e2:
    ld b, $01                                     ; $61e2: $06 $01
    nop                                           ; $61e4: $00
    ld b, $24                                     ; $61e5: $06 $24
    nop                                           ; $61e7: $00
    ld b, $3e                                     ; $61e8: $06 $3e
    nop                                           ; $61ea: $00
    ld b, $6e                                     ; $61eb: $06 $6e
    nop                                           ; $61ed: $00
    ld b, $a0                                     ; $61ee: $06 $a0
    nop                                           ; $61f0: $00
    ld b, $d6                                     ; $61f1: $06 $d6
    nop                                           ; $61f3: $00
    ld b, $0b                                     ; $61f4: $06 $0b
    ld bc, $2b06                                  ; $61f6: $01 $06 $2b
    ld bc, $4106                                  ; $61f9: $01 $06 $41
    ld bc, $5506                                  ; $61fc: $01 $06 $55
    ld bc, $6806                                  ; $61ff: $01 $06 $68
    ld bc, $8506                                  ; $6202: $01 $06 $85
    ld bc, $e006                                  ; $6205: $01 $06 $e0
    ld bc, $0806                                  ; $6208: $01 $06 $08
    ld [bc], a                                    ; $620b: $02
    ld b, $2d                                     ; $620c: $06 $2d
    ld [bc], a                                    ; $620e: $02
    ld b, $39                                     ; $620f: $06 $39
    ld [bc], a                                    ; $6211: $02
    ld b, $43                                     ; $6212: $06 $43
    ld [bc], a                                    ; $6214: $02
    ld b, $49                                     ; $6215: $06 $49
    ld [bc], a                                    ; $6217: $02
    ld b, $50                                     ; $6218: $06 $50
    ld [bc], a                                    ; $621a: $02
    ld b, $5d                                     ; $621b: $06 $5d
    ld [bc], a                                    ; $621d: $02
    ld b, $63                                     ; $621e: $06 $63
    ld [bc], a                                    ; $6220: $02
    ld b, $6c                                     ; $6221: $06 $6c
    ld [bc], a                                    ; $6223: $02
    ld b, $7e                                     ; $6224: $06 $7e
    ld [bc], a                                    ; $6226: $02
    ld b, $90                                     ; $6227: $06 $90
    ld [bc], a                                    ; $6229: $02
    ld b, $aa                                     ; $622a: $06 $aa
    ld [bc], a                                    ; $622c: $02
    ld b, $b3                                     ; $622d: $06 $b3
    ld [bc], a                                    ; $622f: $02
    ld b, $bd                                     ; $6230: $06 $bd
    ld [bc], a                                    ; $6232: $02
    ld b, $c9                                     ; $6233: $06 $c9
    ld [bc], a                                    ; $6235: $02
    ld b, $de                                     ; $6236: $06 $de
    ld [bc], a                                    ; $6238: $02
    ld b, $fb                                     ; $6239: $06 $fb
    ld [bc], a                                    ; $623b: $02
    ld b, $1c                                     ; $623c: $06 $1c
    inc bc                                        ; $623e: $03
    ld b, $31                                     ; $623f: $06 $31
    inc bc                                        ; $6241: $03
    ld b, $3f                                     ; $6242: $06 $3f
    inc bc                                        ; $6244: $03
    ld b, $4b                                     ; $6245: $06 $4b
    inc bc                                        ; $6247: $03
    ld b, $5f                                     ; $6248: $06 $5f
    inc bc                                        ; $624a: $03
    ld b, $8a                                     ; $624b: $06 $8a
    inc bc                                        ; $624d: $03
    ld b, $a9                                     ; $624e: $06 $a9
    inc bc                                        ; $6250: $03
    ld b, $e7                                     ; $6251: $06 $e7
    inc bc                                        ; $6253: $03
    ld b, $fc                                     ; $6254: $06 $fc
    inc bc                                        ; $6256: $03
    ld b, $2f                                     ; $6257: $06 $2f
    inc b                                         ; $6259: $04
    ld b, $3d                                     ; $625a: $06 $3d
    inc b                                         ; $625c: $04
    ld b, $47                                     ; $625d: $06 $47
    inc b                                         ; $625f: $04
    ld b, $53                                     ; $6260: $06 $53
    inc b                                         ; $6262: $04
    ld b, $62                                     ; $6263: $06 $62
    inc b                                         ; $6265: $04
    ld b, $6d                                     ; $6266: $06 $6d
    inc b                                         ; $6268: $04
    ld b, $a4                                     ; $6269: $06 $a4
    inc b                                         ; $626b: $04
    ld b, $d7                                     ; $626c: $06 $d7
    inc b                                         ; $626e: $04
    ld b, $43                                     ; $626f: $06 $43
    dec b                                         ; $6271: $05
    ld b, $54                                     ; $6272: $06 $54
    dec b                                         ; $6274: $05
    ld b, $60                                     ; $6275: $06 $60
    dec b                                         ; $6277: $05
    ld b, $8f                                     ; $6278: $06 $8f
    dec b                                         ; $627a: $05
    ld b, $98                                     ; $627b: $06 $98
    dec b                                         ; $627d: $05
    ld b, $a1                                     ; $627e: $06 $a1
    dec b                                         ; $6280: $05
    ld b, $a6                                     ; $6281: $06 $a6
    dec b                                         ; $6283: $05
    ld b, $ba                                     ; $6284: $06 $ba
    dec b                                         ; $6286: $05
    ld b, $cc                                     ; $6287: $06 $cc
    dec b                                         ; $6289: $05
    ld b, $d6                                     ; $628a: $06 $d6
    dec b                                         ; $628c: $05
    ld b, $dc                                     ; $628d: $06 $dc
    dec b                                         ; $628f: $05
    ld b, $e4                                     ; $6290: $06 $e4
    dec b                                         ; $6292: $05
    ld b, $ed                                     ; $6293: $06 $ed
    dec b                                         ; $6295: $05
    ld b, $f3                                     ; $6296: $06 $f3
    dec b                                         ; $6298: $05
    ld b, $f5                                     ; $6299: $06 $f5
    dec b                                         ; $629b: $05
    ld b, $f7                                     ; $629c: $06 $f7
    dec b                                         ; $629e: $05
    ld b, $f9                                     ; $629f: $06 $f9
    dec b                                         ; $62a1: $05
    ld b, $fb                                     ; $62a2: $06 $fb
    dec b                                         ; $62a4: $05
    ld b, $fd                                     ; $62a5: $06 $fd
    dec b                                         ; $62a7: $05
    ld b, $ff                                     ; $62a8: $06 $ff
    dec b                                         ; $62aa: $05
    ld b, $01                                     ; $62ab: $06 $01
    ld b, $06                                     ; $62ad: $06 $06
    inc bc                                        ; $62af: $03
    ld b, $06                                     ; $62b0: $06 $06
    dec b                                         ; $62b2: $05
    ld b, $06                                     ; $62b3: $06 $06
    rlca                                          ; $62b5: $07
    ld b, $06                                     ; $62b6: $06 $06
    add hl, bc                                    ; $62b8: $09
    ld b, $06                                     ; $62b9: $06 $06
    dec bc                                        ; $62bb: $0b
    ld b, $06                                     ; $62bc: $06 $06
    dec c                                         ; $62be: $0d
    ld b, $06                                     ; $62bf: $06 $06
    rrca                                          ; $62c1: $0f
    ld b, $06                                     ; $62c2: $06 $06
    ld de, $0606                                  ; $62c4: $11 $06 $06
    inc de                                        ; $62c7: $13
    ld b, $06                                     ; $62c8: $06 $06
    dec d                                         ; $62ca: $15
    ld b, $06                                     ; $62cb: $06 $06
    rla                                           ; $62cd: $17

Jump_040_62ce:
    ld b, $06                                     ; $62ce: $06 $06
    add hl, de                                    ; $62d0: $19
    ld b, $06                                     ; $62d1: $06 $06
    dec de                                        ; $62d3: $1b
    ld b, $06                                     ; $62d4: $06 $06
    dec e                                         ; $62d6: $1d
    ld b, $06                                     ; $62d7: $06 $06
    rra                                           ; $62d9: $1f
    ld b, $06                                     ; $62da: $06 $06
    ld hl, $0606                                  ; $62dc: $21 $06 $06
    inc hl                                        ; $62df: $23
    ld b, $06                                     ; $62e0: $06 $06
    dec h                                         ; $62e2: $25
    ld b, $06                                     ; $62e3: $06 $06
    daa                                           ; $62e5: $27
    ld b, $06                                     ; $62e6: $06 $06
    add hl, hl                                    ; $62e8: $29
    ld b, $06                                     ; $62e9: $06 $06
    dec hl                                        ; $62eb: $2b
    ld b, $06                                     ; $62ec: $06 $06
    dec l                                         ; $62ee: $2d
    ld b, $06                                     ; $62ef: $06 $06
    cpl                                           ; $62f1: $2f
    ld b, $06                                     ; $62f2: $06 $06
    ld sp, $0606                                  ; $62f4: $31 $06 $06
    inc sp                                        ; $62f7: $33
    ld b, $06                                     ; $62f8: $06 $06
    dec [hl]                                      ; $62fa: $35
    ld b, $06                                     ; $62fb: $06 $06
    scf                                           ; $62fd: $37
    ld b, $06                                     ; $62fe: $06 $06
    add hl, sp                                    ; $6300: $39
    ld b, $06                                     ; $6301: $06 $06
    dec sp                                        ; $6303: $3b
    ld b, $06                                     ; $6304: $06 $06
    dec a                                         ; $6306: $3d
    ld b, $06                                     ; $6307: $06 $06
    ccf                                           ; $6309: $3f
    ld b, $06                                     ; $630a: $06 $06
    ld b, c                                       ; $630c: $41
    ld b, $06                                     ; $630d: $06 $06
    ld b, e                                       ; $630f: $43
    ld b, $06                                     ; $6310: $06 $06
    ld b, l                                       ; $6312: $45
    ld b, $06                                     ; $6313: $06 $06
    ld b, a                                       ; $6315: $47
    ld b, $06                                     ; $6316: $06 $06
    ld c, l                                       ; $6318: $4d
    ld b, $06                                     ; $6319: $06 $06
    ld e, c                                       ; $631b: $59
    ld b, $06                                     ; $631c: $06 $06
    ld h, [hl]                                    ; $631e: $66
    ld b, $06                                     ; $631f: $06 $06
    ld [hl], b                                    ; $6321: $70
    ld b, $06                                     ; $6322: $06 $06
    ld a, e                                       ; $6324: $7b
    ld b, $06                                     ; $6325: $06 $06
    add h                                         ; $6327: $84
    ld b, $06                                     ; $6328: $06 $06
    sub b                                         ; $632a: $90
    ld b, $06                                     ; $632b: $06 $06
    sub d                                         ; $632d: $92
    ld b, $06                                     ; $632e: $06 $06
    sub h                                         ; $6330: $94
    ld b, $06                                     ; $6331: $06 $06
    sub [hl]                                      ; $6333: $96
    ld b, $06                                     ; $6334: $06 $06
    sbc b                                         ; $6336: $98
    ld b, $06                                     ; $6337: $06 $06
    sbc d                                         ; $6339: $9a
    ld b, $06                                     ; $633a: $06 $06
    sbc h                                         ; $633c: $9c
    ld b, $06                                     ; $633d: $06 $06
    sbc [hl]                                      ; $633f: $9e
    ld b, $06                                     ; $6340: $06 $06
    and b                                         ; $6342: $a0
    ld b, $06                                     ; $6343: $06 $06
    and d                                         ; $6345: $a2
    ld b, $06                                     ; $6346: $06 $06
    and h                                         ; $6348: $a4
    ld b, $06                                     ; $6349: $06 $06
    and [hl]                                      ; $634b: $a6
    ld b, $06                                     ; $634c: $06 $06
    or e                                          ; $634e: $b3
    ld b, $06                                     ; $634f: $06 $06
    or l                                          ; $6351: $b5
    ld b, $06                                     ; $6352: $06 $06
    or a                                          ; $6354: $b7
    ld b, $06                                     ; $6355: $06 $06
    cp c                                          ; $6357: $b9
    ld b, $06                                     ; $6358: $06 $06
    cp e                                          ; $635a: $bb
    ld b, $06                                     ; $635b: $06 $06
    cp l                                          ; $635d: $bd
    ld b, $06                                     ; $635e: $06 $06
    cp a                                          ; $6360: $bf
    ld b, $06                                     ; $6361: $06 $06
    pop bc                                        ; $6363: $c1
    ld b, $06                                     ; $6364: $06 $06
    jp Jump_000_0606                              ; $6366: $c3 $06 $06


    push bc                                       ; $6369: $c5
    ld b, $06                                     ; $636a: $06 $06
    rst $00                                       ; $636c: $c7
    ld b, $06                                     ; $636d: $06 $06
    ret                                           ; $636f: $c9


    ld b, $06                                     ; $6370: $06 $06
    rlc [hl]                                      ; $6372: $cb $06
    ld b, $cd                                     ; $6374: $06 $cd
    ld b, $06                                     ; $6376: $06 $06
    rst $08                                       ; $6378: $cf
    ld b, $06                                     ; $6379: $06 $06
    pop de                                        ; $637b: $d1
    ld b, $06                                     ; $637c: $06 $06
    db $d3                                        ; $637e: $d3
    ld b, $06                                     ; $637f: $06 $06
    push de                                       ; $6381: $d5
    ld b, $06                                     ; $6382: $06 $06
    rst $10                                       ; $6384: $d7
    ld b, $06                                     ; $6385: $06 $06
    reti                                          ; $6387: $d9


    ld b, $06                                     ; $6388: $06 $06
    db $db                                        ; $638a: $db
    ld b, $06                                     ; $638b: $06 $06
    db $dd                                        ; $638d: $dd
    ld b, $06                                     ; $638e: $06 $06
    add sp, $06                                   ; $6390: $e8 $06
    ld b, $ea                                     ; $6392: $06 $ea
    ld b, $06                                     ; $6394: $06 $06
    ld hl, sp+$06                                 ; $6396: $f8 $06
    ld b, $03                                     ; $6398: $06 $03
    rlca                                          ; $639a: $07
    ld b, $0a                                     ; $639b: $06 $0a
    rlca                                          ; $639d: $07
    ld b, $18                                     ; $639e: $06 $18
    rlca                                          ; $63a0: $07
    ld b, $1a                                     ; $63a1: $06 $1a
    rlca                                          ; $63a3: $07
    ld b, $1c                                     ; $63a4: $06 $1c
    rlca                                          ; $63a6: $07
    ld b, $1e                                     ; $63a7: $06 $1e
    rlca                                          ; $63a9: $07
    ld b, $20                                     ; $63aa: $06 $20
    rlca                                          ; $63ac: $07
    ld b, $22                                     ; $63ad: $06 $22
    rlca                                          ; $63af: $07
    ld b, $24                                     ; $63b0: $06 $24
    rlca                                          ; $63b2: $07
    ld b, $26                                     ; $63b3: $06 $26
    rlca                                          ; $63b5: $07
    ld b, $28                                     ; $63b6: $06 $28
    rlca                                          ; $63b8: $07
    ld b, $2a                                     ; $63b9: $06 $2a
    rlca                                          ; $63bb: $07
    ld b, $2c                                     ; $63bc: $06 $2c
    rlca                                          ; $63be: $07
    ld b, $2e                                     ; $63bf: $06 $2e
    rlca                                          ; $63c1: $07
    ld b, $30                                     ; $63c2: $06 $30
    rlca                                          ; $63c4: $07
    ld b, $32                                     ; $63c5: $06 $32
    rlca                                          ; $63c7: $07
    ld b, $34                                     ; $63c8: $06 $34
    rlca                                          ; $63ca: $07
    ld b, $36                                     ; $63cb: $06 $36
    rlca                                          ; $63cd: $07
    ld b, $38                                     ; $63ce: $06 $38
    rlca                                          ; $63d0: $07
    ld b, $3a                                     ; $63d1: $06 $3a
    rlca                                          ; $63d3: $07
    ld b, $3c                                     ; $63d4: $06 $3c
    rlca                                          ; $63d6: $07
    ld b, $41                                     ; $63d7: $06 $41
    rlca                                          ; $63d9: $07
    ld b, $43                                     ; $63da: $06 $43
    rlca                                          ; $63dc: $07
    ld b, $45                                     ; $63dd: $06 $45
    rlca                                          ; $63df: $07
    ld b, $47                                     ; $63e0: $06 $47
    rlca                                          ; $63e2: $07
    ld b, $49                                     ; $63e3: $06 $49
    rlca                                          ; $63e5: $07
    ld e, c                                       ; $63e6: $59
    ld d, a                                       ; $63e7: $57
    ld e, b                                       ; $63e8: $58
    adc b                                         ; $63e9: $88
    adc h                                         ; $63ea: $8c
    sub c                                         ; $63eb: $91
    sub l                                         ; $63ec: $95
    sbc d                                         ; $63ed: $9a
    sbc e                                         ; $63ee: $9b
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
    cp [hl]                                       ; $6400: $be
    ret nz                                        ; $6401: $c0

    pop bc                                        ; $6402: $c1
    jp nz, $c5c4                                  ; $6403: $c2 $c4 $c5

    add $c7                                       ; $6406: $c6 $c7
    ret                                           ; $6408: $c9


    jp z, $cccb                                   ; $6409: $ca $cb $cc

    call $d1cf                                    ; $640c: $cd $cf $d1
    jp nc, $d5d4                                  ; $640f: $d2 $d4 $d5

    sub $d7                                       ; $6412: $d6 $d7
    ret c                                         ; $6414: $d8

    reti                                          ; $6415: $d9


    jp c, $e0df                                   ; $6416: $da $df $e0

    ld [$f7eb], a                                 ; $6419: $ea $eb $f7
    ld hl, sp-$07                                 ; $641c: $f8 $f9
    db $fd                                        ; $641e: $fd
    cp $00                                        ; $641f: $fe $00
    adc l                                         ; $6421: $8d
    and c                                         ; $6422: $a1
    cp a                                          ; $6423: $bf
    ret z                                         ; $6424: $c8

    adc $d0                                       ; $6425: $ce $d0
    ld bc, $0302                                  ; $6427: $01 $02 $03
    inc b                                         ; $642a: $04
    dec b                                         ; $642b: $05
    ld b, $07                                     ; $642c: $06 $07
    ld [$0a09], sp                                ; $642e: $08 $09 $0a
    dec bc                                        ; $6431: $0b
    inc c                                         ; $6432: $0c
    dec c                                         ; $6433: $0d
    ld c, $0f                                     ; $6434: $0e $0f
    db $10                                        ; $6436: $10
    ld de, $1312                                  ; $6437: $11 $12 $13
    inc d                                         ; $643a: $14
    dec d                                         ; $643b: $15
    ld d, $17                                     ; $643c: $16 $17
    jr @+$1b                                      ; $643e: $18 $19

    ld a, [de]                                    ; $6440: $1a
    dec de                                        ; $6441: $1b
    inc e                                         ; $6442: $1c
    and a                                         ; $6443: $a7
    jp $d3f1                                      ; $6444: $c3 $f1 $d3


    dec e                                         ; $6447: $1d
    ld e, $1f                                     ; $6448: $1e $1f
    jr nz, jr_040_646d                            ; $644a: $20 $21

    ld [hl+], a                                   ; $644c: $22
    inc hl                                        ; $644d: $23
    inc h                                         ; $644e: $24
    dec h                                         ; $644f: $25
    ld h, $27                                     ; $6450: $26 $27
    jr z, jr_040_647d                             ; $6452: $28 $29

    ld a, [hl+]                                   ; $6454: $2a
    dec hl                                        ; $6455: $2b
    inc l                                         ; $6456: $2c
    dec l                                         ; $6457: $2d
    ld a, [$e2ac]                                 ; $6458: $fa $ac $e2
    ld l, $e6                                     ; $645b: $2e $e6
    cpl                                           ; $645d: $2f
    add sp, $30                                   ; $645e: $e8 $30
    ld sp, $3332                                  ; $6460: $31 $32 $33
    inc [hl]                                      ; $6463: $34
    dec [hl]                                      ; $6464: $35
    ld [hl], $37                                  ; $6465: $36 $37
    jr c, @-$08                                   ; $6467: $38 $f6

    rst $20                                       ; $6469: $e7
    add hl, sp                                    ; $646a: $39
    ld a, [hl-]                                   ; $646b: $3a
    dec sp                                        ; $646c: $3b

jr_040_646d:
    db $ed                                        ; $646d: $ed
    inc a                                         ; $646e: $3c
    dec a                                         ; $646f: $3d
    ld a, $3f                                     ; $6470: $3e $3f
    xor [hl]                                      ; $6472: $ae
    ldh a, [rIE]                                  ; $6473: $f0 $ff
    ld b, b                                       ; $6475: $40
    push af                                       ; $6476: $f5
    db $e4                                        ; $6477: $e4
    ld b, c                                       ; $6478: $41
    db $e3                                        ; $6479: $e3
    ld b, d                                       ; $647a: $42
    di                                            ; $647b: $f3
    ld b, e                                       ; $647c: $43

jr_040_647d:
    ld b, h                                       ; $647d: $44
    ld b, l                                       ; $647e: $45
    ld b, [hl]                                    ; $647f: $46
    db $ec                                        ; $6480: $ec
    ld b, a                                       ; $6481: $47
    db $f4                                        ; $6482: $f4
    xor $48                                       ; $6483: $ee $48
    ld a, [c]                                     ; $6485: $f2
    ld c, c                                       ; $6486: $49
    ld c, d                                       ; $6487: $4a
    ld c, e                                       ; $6488: $4b
    rst $28                                       ; $6489: $ef
    ld c, h                                       ; $648a: $4c
    jp hl                                         ; $648b: $e9


    pop hl                                        ; $648c: $e1
    push hl                                       ; $648d: $e5
    ld c, l                                       ; $648e: $4d
    ld c, [hl]                                    ; $648f: $4e
    ld c, a                                       ; $6490: $4f
    and b                                         ; $6491: $a0
    ld d, b                                       ; $6492: $50
    ld d, c                                       ; $6493: $51
    ld d, d                                       ; $6494: $52
    ld d, e                                       ; $6495: $53
    ld d, h                                       ; $6496: $54
    ld d, l                                       ; $6497: $55
    ld d, [hl]                                    ; $6498: $56
    adc l                                         ; $6499: $8d
    scf                                           ; $649a: $37
    rst $18                                       ; $649b: $df
    ld e, b                                       ; $649c: $58
    sub e                                         ; $649d: $93
    call $d637                                    ; $649e: $cd $37 $d6
    ld h, h                                       ; $64a1: $64
    db $e3                                        ; $64a2: $e3
    adc l                                         ; $64a3: $8d
    scf                                           ; $64a4: $37
    or c                                          ; $64a5: $b1
    ld [bc], a                                    ; $64a6: $02
    ld l, l                                       ; $64a7: $6d
    di                                            ; $64a8: $f3
    rst $28                                       ; $64a9: $ef
    ld a, e                                       ; $64aa: $7b
    ld c, c                                       ; $64ab: $49
    and e                                         ; $64ac: $a3
    ld l, c                                       ; $64ad: $69
    sbc e                                         ; $64ae: $9b
    ld a, a                                       ; $64af: $7f
    rst $18                                       ; $64b0: $df
    res 5, h                                      ; $64b1: $cb $ac
    db $ed                                        ; $64b3: $ed
    dec a                                         ; $64b4: $3d
    and e                                         ; $64b5: $a3
    ld [hl], b                                    ; $64b6: $70
    ld a, [hl-]                                   ; $64b7: $3a
    ld b, [hl]                                    ; $64b8: $46
    rst $30                                       ; $64b9: $f7
    sbc h                                         ; $64ba: $9c
    ld c, [hl]                                    ; $64bb: $4e
    ld d, $f5                                     ; $64bc: $16 $f5
    adc h                                         ; $64be: $8c
    ld d, $d3                                     ; $64bf: $16 $d3
    ld a, b                                       ; $64c1: $78
    di                                            ; $64c2: $f3
    adc l                                         ; $64c3: $8d
    dec [hl]                                      ; $64c4: $35
    reti                                          ; $64c5: $d9


    ld l, h                                       ; $64c6: $6c
    ld h, e                                       ; $64c7: $63
    ld c, l                                       ; $64c8: $4d
    ld [hl], $de                                  ; $64c9: $36 $de
    ld a, b                                       ; $64cb: $78
    inc de                                        ; $64cc: $13
    dec hl                                        ; $64cd: $2b
    ld l, l                                       ; $64ce: $6d
    adc e                                         ; $64cf: $8b
    ld a, e                                       ; $64d0: $7b
    ld h, c                                       ; $64d1: $61
    sub h                                         ; $64d2: $94
    xor e                                         ; $64d3: $ab
    ld h, [hl]                                    ; $64d4: $66
    dec b                                         ; $64d5: $05
    ld l, l                                       ; $64d6: $6d
    sbc [hl]                                      ; $64d7: $9e
    ld b, [hl]                                    ; $64d8: $46
    db $ed                                        ; $64d9: $ed
    db $e4                                        ; $64da: $e4
    ld d, a                                       ; $64db: $57
    dec e                                         ; $64dc: $1d
    ld l, b                                       ; $64dd: $68
    ld a, [de]                                    ; $64de: $1a
    sbc b                                         ; $64df: $98
    ld h, a                                       ; $64e0: $67
    dec b                                         ; $64e1: $05
    ld l, l                                       ; $64e2: $6d
    ld d, d                                       ; $64e3: $52
    db $ed                                        ; $64e4: $ed
    ld d, a                                       ; $64e5: $57
    ld [hl], l                                    ; $64e6: $75
    dec sp                                        ; $64e7: $3b
    ld l, d                                       ; $64e8: $6a
    ld sp, $34ad                                  ; $64e9: $31 $ad $34
    pop de                                        ; $64ec: $d1
    ld e, b                                       ; $64ed: $58
    dec hl                                        ; $64ee: $2b
    ld c, l                                       ; $64ef: $4d
    ld h, [hl]                                    ; $64f0: $66
    dec b                                         ; $64f1: $05
    ld [hl], l                                    ; $64f2: $75
    db $db                                        ; $64f3: $db
    ld l, a                                       ; $64f4: $6f
    ld sp, $34ad                                  ; $64f5: $31 $ad $34
    pop de                                        ; $64f8: $d1
    ld e, b                                       ; $64f9: $58
    dec hl                                        ; $64fa: $2b
    ld c, l                                       ; $64fb: $4d
    ld h, [hl]                                    ; $64fc: $66
    dec b                                         ; $64fd: $05
    ld l, l                                       ; $64fe: $6d
    xor $5b                                       ; $64ff: $ee $5b
    jr nz, jr_040_656d                            ; $6501: $20 $6a

    jp nc, $cc89                                  ; $6503: $d2 $89 $cc

    ld a, [bc]                                    ; $6506: $0a
    ld l, l                                       ; $6507: $6d
    xor $5b                                       ; $6508: $ee $5b
    jr nz, jr_040_6576                            ; $650a: $20 $6a

    jp nc, $9d3a                                  ; $650c: $d2 $3a $9d

    dec d                                         ; $650f: $15
    ld l, l                                       ; $6510: $6d
    xor $5b                                       ; $6511: $ee $5b
    jr nz, @+$6c                                  ; $6513: $20 $6a

    jp nc, $ddb1                                  ; $6515: $d2 $b1 $dd

    xor a                                         ; $6518: $af
    sbc l                                         ; $6519: $9d
    jp nz, $dbaa                                  ; $651a: $c2 $aa $db

    ei                                            ; $651d: $fb
    add [hl]                                      ; $651e: $86
    sub [hl]                                      ; $651f: $96
    ld [hl], h                                    ; $6520: $74
    ld [hl+], a                                   ; $6521: $22
    or e                                          ; $6522: $b3
    ld [bc], a                                    ; $6523: $02
    sbc l                                         ; $6524: $9d
    jp nz, $dbaa                                  ; $6525: $c2 $aa $db

    ei                                            ; $6528: $fb
    add [hl]                                      ; $6529: $86
    sub [hl]                                      ; $652a: $96
    or h                                          ; $652b: $b4
    ld c, [hl]                                    ; $652c: $4e
    ld h, a                                       ; $652d: $67
    dec b                                         ; $652e: $05
    sbc l                                         ; $652f: $9d
    jp nz, $dbaa                                  ; $6530: $c2 $aa $db

    ei                                            ; $6533: $fb
    add [hl]                                      ; $6534: $86
    sub [hl]                                      ; $6535: $96
    ld [hl], h                                    ; $6536: $74
    ld l, h                                       ; $6537: $6c
    rst $30                                       ; $6538: $f7
    dec hl                                        ; $6539: $2b
    sbc l                                         ; $653a: $9d
    jp nz, $55d4                                  ; $653b: $c2 $d4 $55

    or a                                          ; $653e: $b7
    rst $30                                       ; $653f: $f7
    dec c                                         ; $6540: $0d
    dec l                                         ; $6541: $2d
    jp hl                                         ; $6542: $e9


    ld b, h                                       ; $6543: $44
    ld h, [hl]                                    ; $6544: $66
    dec b                                         ; $6545: $05
    sbc l                                         ; $6546: $9d
    jp nz, $55d4                                  ; $6547: $c2 $d4 $55

    or a                                          ; $654a: $b7
    rst $30                                       ; $654b: $f7
    dec c                                         ; $654c: $0d
    dec l                                         ; $654d: $2d
    ld l, c                                       ; $654e: $69
    sbc l                                         ; $654f: $9d
    adc $0a                                       ; $6550: $ce $0a
    sbc l                                         ; $6552: $9d
    jp nz, $55d4                                  ; $6553: $c2 $d4 $55

    or a                                          ; $6556: $b7
    rst $30                                       ; $6557: $f7
    dec c                                         ; $6558: $0d
    dec l                                         ; $6559: $2d
    jp hl                                         ; $655a: $e9


    ret c                                         ; $655b: $d8

    xor $57                                       ; $655c: $ee $57
    ld l, l                                       ; $655e: $6d
    adc e                                         ; $655f: $8b
    add e                                         ; $6560: $83
    xor b                                         ; $6561: $a8
    sbc e                                         ; $6562: $9b
    ld [hl], h                                    ; $6563: $74
    ld [hl+], a                                   ; $6564: $22
    or e                                          ; $6565: $b3
    ld [bc], a                                    ; $6566: $02
    ld l, l                                       ; $6567: $6d
    adc e                                         ; $6568: $8b
    add e                                         ; $6569: $83
    xor b                                         ; $656a: $a8
    sbc e                                         ; $656b: $9b
    or h                                          ; $656c: $b4

jr_040_656d:
    ld c, [hl]                                    ; $656d: $4e
    ld h, a                                       ; $656e: $67
    dec b                                         ; $656f: $05
    ld l, l                                       ; $6570: $6d
    adc e                                         ; $6571: $8b
    add e                                         ; $6572: $83
    xor b                                         ; $6573: $a8
    sbc e                                         ; $6574: $9b
    ld [hl], h                                    ; $6575: $74

jr_040_6576:
    ld l, h                                       ; $6576: $6c
    rst $30                                       ; $6577: $f7
    dec hl                                        ; $6578: $2b
    sbc l                                         ; $6579: $9d
    sbc l                                         ; $657a: $9d
    ld l, b                                       ; $657b: $68
    ld l, a                                       ; $657c: $6f
    ld [$9568], a                                 ; $657d: $ea $68 $95
    or $40                                        ; $6580: $f6 $40
    sbc $94                                       ; $6582: $de $94
    ld e, a                                       ; $6584: $5f
    ld bc, $8ded                                  ; $6585: $01 $ed $8d
    sbc e                                         ; $6588: $9b
    ld l, d                                       ; $6589: $6a
    ld a, b                                       ; $658a: $78

jr_040_658b:
    inc l                                         ; $658b: $2c
    ld l, l                                       ; $658c: $6d
    adc l                                         ; $658d: $8d
    rst $10                                       ; $658e: $d7
    ld c, e                                       ; $658f: $4b
    rrc d                                         ; $6590: $cb $0a
    db $ed                                        ; $6592: $ed
    adc l                                         ; $6593: $8d
    sbc e                                         ; $6594: $9b

Call_040_6595:
    ld l, d                                       ; $6595: $6a
    ld a, b                                       ; $6596: $78
    inc l                                         ; $6597: $2c
    db $ed                                        ; $6598: $ed
    adc a                                         ; $6599: $8f
    pop af                                        ; $659a: $f1
    sub l                                         ; $659b: $95
    dec d                                         ; $659c: $15
    ld [hl], l                                    ; $659d: $75
    pop bc                                        ; $659e: $c1
    halt                                          ; $659f: $76
    sbc $73                                       ; $65a0: $de $73
    or h                                          ; $65a2: $b4
    and h                                         ; $65a3: $a4
    db $e3                                        ; $65a4: $e3
    pop hl                                        ; $65a5: $e1
    rst $18                                       ; $65a6: $df
    or h                                          ; $65a7: $b4
    xor h                                         ; $65a8: $ac
    db $ed                                        ; $65a9: $ed
    ld d, e                                       ; $65aa: $53
    ld b, a                                       ; $65ab: $47
    ld c, e                                       ; $65ac: $4b
    ld e, d                                       ; $65ad: $5a
    ld d, l                                       ; $65ae: $55
    xor c                                         ; $65af: $a9
    di                                            ; $65b0: $f3
    or h                                          ; $65b1: $b4
    ldh [$ab], a                                  ; $65b2: $e0 $ab
    dec d                                         ; $65b4: $15
    ld [hl], l                                    ; $65b5: $75
    ld b, [hl]                                    ; $65b6: $46
    ld [c], a                                     ; $65b7: $e2
    rst $38                                       ; $65b8: $ff
    res 1, e                                      ; $65b9: $cb $8b
    dec de                                        ; $65bb: $1b
    ei                                            ; $65bc: $fb
    db $fc                                        ; $65bd: $fc
    or d                                          ; $65be: $b2
    jr jr_040_658b                                ; $65bf: $18 $ca

    ld b, h                                       ; $65c1: $44
    ld d, b                                       ; $65c2: $50
    ld a, [bc]                                    ; $65c3: $0a
    sub l                                         ; $65c4: $95
    sbc h                                         ; $65c5: $9c
    cp b                                          ; $65c6: $b8
    rla                                           ; $65c7: $17
    ld b, [hl]                                    ; $65c8: $46
    cp c                                          ; $65c9: $b9
    ld l, d                                       ; $65ca: $6a
    ld l, d                                       ; $65cb: $6a
    xor [hl]                                      ; $65cc: $ae
    ld [hl], l                                    ; $65cd: $75
    ld b, [hl]                                    ; $65ce: $46
    ld [c], a                                     ; $65cf: $e2
    rst $38                                       ; $65d0: $ff
    set 5, e                                      ; $65d1: $cb $eb
    push af                                       ; $65d3: $f5
    ld e, a                                       ; $65d4: $5f
    ld hl, sp-$7b                                 ; $65d5: $f8 $85
    ld hl, sp-$57                                 ; $65d7: $f8 $a9
    ld c, e                                       ; $65d9: $4b
    add l                                         ; $65da: $85
    cpl                                           ; $65db: $2f
    db $ed                                        ; $65dc: $ed
    cp a                                          ; $65dd: $bf
    halt                                          ; $65de: $76
    sbc a                                         ; $65df: $9f
    dec b                                         ; $65e0: $05
    sub [hl]                                      ; $65e1: $96
    db $fd                                        ; $65e2: $fd
    ld [c], a                                     ; $65e3: $e2
    xor $0d                                       ; $65e4: $ee $0d
    pop af                                        ; $65e6: $f1
    and c                                         ; $65e7: $a1
    jr z, jr_040_6626                             ; $65e8: $28 $3c

    add hl, sp                                    ; $65ea: $39
    ld [hl], c                                    ; $65eb: $71
    cpl                                           ; $65ec: $2f
    adc h                                         ; $65ed: $8c
    ld [hl], d                                    ; $65ee: $72
    push de                                       ; $65ef: $d5
    call nc, $015c                                ; $65f0: $d4 $5c $01
    ld [hl], l                                    ; $65f3: $75
    ld b, [hl]                                    ; $65f4: $46
    or d                                          ; $65f5: $b2
    ret nc                                        ; $65f6: $d0

    cp c                                          ; $65f7: $b9
    inc d                                         ; $65f8: $14
    rst $30                                       ; $65f9: $f7
    set 6, d                                      ; $65fa: $cb $f2
    add [hl]                                      ; $65fc: $86
    ld a, [hl]                                    ; $65fd: $7e
    dec b                                         ; $65fe: $05
    xor l                                         ; $65ff: $ad
    ld b, c                                       ; $6600: $41
    ld c, b                                       ; $6601: $48
    ld [$c9e5], sp                                ; $6602: $08 $e5 $c9
    and a                                         ; $6605: $a7
    push af                                       ; $6606: $f5
    ld a, e                                       ; $6607: $7b
    ld l, l                                       ; $6608: $6d
    inc h                                         ; $6609: $24
    xor l                                         ; $660a: $ad
    xor $0d                                       ; $660b: $ee $0d
    ld [bc], a                                    ; $660d: $02
    cp d                                          ; $660e: $ba
    call nc, $337e                                ; $660f: $d4 $7e $33
    ld [bc], a                                    ; $6612: $02
    db $fd                                        ; $6613: $fd
    ld a, [bc]                                    ; $6614: $0a
    ld [hl], l                                    ; $6615: $75
    ld b, [hl]                                    ; $6616: $46
    ld [c], a                                     ; $6617: $e2
    sbc a                                         ; $6618: $9f
    ld d, h                                       ; $6619: $54
    ld a, a                                       ; $661a: $7f
    ld hl, $f0af                                  ; $661b: $21 $af $f0
    add h                                         ; $661e: $84
    ld c, d                                       ; $661f: $4a
    sub [hl]                                      ; $6620: $96
    add hl, hl                                    ; $6621: $29
    inc a                                         ; $6622: $3c
    ld d, c                                       ; $6623: $51
    ret c                                         ; $6624: $d8

    pop de                                        ; $6625: $d1

jr_040_6626:
    jr nz, jr_040_6658                            ; $6626: $20 $30

    add sp, -$4e                                  ; $6628: $e8 $b2
    ret c                                         ; $662a: $d8

    ld d, l                                       ; $662b: $55
    rra                                           ; $662c: $1f
    push hl                                       ; $662d: $e5
    ld sp, $769a                                  ; $662e: $31 $9a $76
    dec [hl]                                      ; $6631: $35
    ld d, a                                       ; $6632: $57
    ld l, l                                       ; $6633: $6d
    rst $28                                       ; $6634: $ef
    ld d, h                                       ; $6635: $54
    jp $4e47                                      ; $6636: $c3 $47 $4e


    ld l, d                                       ; $6639: $6a
    and h                                         ; $663a: $a4
    and b                                         ; $663b: $a0
    ld e, d                                       ; $663c: $5a
    or $39                                        ; $663d: $f6 $39
    or h                                          ; $663f: $b4
    jr jr_040_665b                                ; $6640: $18 $19

    add hl, bc                                    ; $6642: $09
    jp z, $4615                                   ; $6643: $ca $15 $46

    inc b                                         ; $6646: $04
    and l                                         ; $6647: $a5
    ld d, b                                       ; $6648: $50
    ret                                           ; $6649: $c9


    and [hl]                                      ; $664a: $a6
    and e                                         ; $664b: $a3
    ld c, l                                       ; $664c: $4d
    call c, $8854                                 ; $664d: $dc $54 $88
    rrca                                          ; $6650: $0f
    ld b, l                                       ; $6651: $45
    pop hl                                        ; $6652: $e1
    jp hl                                         ; $6653: $e9


    db $d3                                        ; $6654: $d3
    ld hl, $e145                                  ; $6655: $21 $45 $e1

jr_040_6658:
    ld c, a                                       ; $6658: $4f
    adc l                                         ; $6659: $8d
    db $ec                                        ; $665a: $ec

jr_040_665b:
    ld c, a                                       ; $665b: $4f
    ld l, e                                       ; $665c: $6b
    jp $ed0c                                      ; $665d: $c3 $0c $ed


    and e                                         ; $6660: $a3
    or b                                          ; $6661: $b0
    scf                                           ; $6662: $37
    and d                                         ; $6663: $a2
    ld a, a                                       ; $6664: $7f
    rst $20                                       ; $6665: $e7
    db $fc                                        ; $6666: $fc
    ld h, b                                       ; $6667: $60
    ld b, [hl]                                    ; $6668: $46
    xor d                                         ; $6669: $aa
    rst $10                                       ; $666a: $d7
    adc $f9                                       ; $666b: $ce $f9
    ld de, $e975                                  ; $666d: $11 $75 $e9
    ld h, b                                       ; $6670: $60
    rst $28                                       ; $6671: $ef
    inc hl                                        ; $6672: $23
    ld e, a                                       ; $6673: $5f
    inc d                                         ; $6674: $14
    ld c, h                                       ; $6675: $4c
    rla                                           ; $6676: $17
    scf                                           ; $6677: $37
    dec d                                         ; $6678: $15
    or d                                          ; $6679: $b2
    ret nc                                        ; $667a: $d0

    cp c                                          ; $667b: $b9
    sub b                                         ; $667c: $90
    ld d, b                                       ; $667d: $50
    jr nc, jr_040_66c4                            ; $667e: $30 $44

    db $fd                                        ; $6680: $fd
    sbc $1e                                       ; $6681: $de $1e
    daa                                           ; $6683: $27
    dec b                                         ; $6684: $05
    sbc d                                         ; $6685: $9a
    ld a, h                                       ; $6686: $7c
    sbc a                                         ; $6687: $9f
    ld [hl], $84                                  ; $6688: $36 $84
    dec c                                         ; $668a: $0d
    ld d, [hl]                                    ; $668b: $56
    ld a, a                                       ; $668c: $7f
    ld a, $0e                                     ; $668d: $3e $0e
    and $de                                       ; $668f: $e6 $de
    db $10                                        ; $6691: $10
    ld a, [hl+]                                   ; $6692: $2a
    rra                                           ; $6693: $1f
    db $fd                                        ; $6694: $fd
    dec sp                                        ; $6695: $3b
    rst $20                                       ; $6696: $e7
    rlca                                          ; $6697: $07
    di                                            ; $6698: $f3
    rst $20                                       ; $6699: $e7
    push de                                       ; $669a: $d5
    inc sp                                        ; $669b: $33
    ld a, a                                       ; $669c: $7f
    ld a, $8c                                     ; $669d: $3e $8c
    ld a, $75                                     ; $669f: $3e $75
    or b                                          ; $66a1: $b0
    db $e3                                        ; $66a2: $e3
    or l                                          ; $66a3: $b5
    ld h, a                                       ; $66a4: $67
    ld b, [hl]                                    ; $66a5: $46
    or l                                          ; $66a6: $b5
    adc h                                         ; $66a7: $8c
    ld l, $0b                                     ; $66a8: $2e $0b
    sbc l                                         ; $66aa: $9d
    adc e                                         ; $66ab: $8b
    ld a, d                                       ; $66ac: $7a
    ld b, e                                       ; $66ad: $43
    xor b                                         ; $66ae: $a8
    ld a, b                                       ; $66af: $78
    adc h                                         ; $66b0: $8c
    ld [hl], e                                    ; $66b1: $73
    cp $7b                                        ; $66b2: $fe $7b

Jump_040_66b4:
    cp $9c                                        ; $66b4: $fe $9c
    ld b, h                                       ; $66b6: $44
    dec sp                                        ; $66b7: $3b
    dec de                                        ; $66b8: $1b
    ld e, l                                       ; $66b9: $5d
    ld d, $bb                                     ; $66ba: $16 $bb
    ld [$2ea3], a                                 ; $66bc: $ea $a3 $2e
    or $9a                                        ; $66bf: $f6 $9a
    halt                                          ; $66c1: $76
    ld d, h                                       ; $66c2: $54
    inc [hl]                                      ; $66c3: $34

jr_040_66c4:
    ld e, b                                       ; $66c4: $58
    ld [hl], l                                    ; $66c5: $75
    db $fd                                        ; $66c6: $fd
    ld a, [bc]                                    ; $66c7: $0a
    sbc [hl]                                      ; $66c8: $9e
    rst $30                                       ; $66c9: $f7
    and e                                         ; $66ca: $a3
    ld c, e                                       ; $66cb: $4b
    db $ed                                        ; $66cc: $ed
    scf                                           ; $66cd: $37
    inc hl                                        ; $66ce: $23
    ret nc                                        ; $66cf: $d0

    and a                                         ; $66d0: $a7
    ld b, e                                       ; $66d1: $43
    adc d                                         ; $66d2: $8a
    jp nz, Jump_000_1a93                          ; $66d3: $c2 $93 $1a

    cp c                                          ; $66d6: $b9
    sbc l                                         ; $66d7: $9d
    ld [hl], d                                    ; $66d8: $72
    sbc d                                         ; $66d9: $9a
    adc h                                         ; $66da: $8c
    and l                                         ; $66db: $a5
    add e                                         ; $66dc: $83
    cp l                                          ; $66dd: $bd
    adc a                                         ; $66de: $8f
    ld a, h                                       ; $66df: $7c
    ld d, c                                       ; $66e0: $51
    or b                                          ; $66e1: $b0
    ld a, $1d                                     ; $66e2: $3e $1d
    db $db                                        ; $66e4: $db
    sub b                                         ; $66e5: $90
    or b                                          ; $66e6: $b0
    ld a, d                                       ; $66e7: $7a
    or d                                          ; $66e8: $b2
    ccf                                           ; $66e9: $3f
    ld a, [$ce77]                                 ; $66ea: $fa $77 $ce
    rrca                                          ; $66ed: $0f
    and $4f                                       ; $66ee: $e6 $4f
    push af                                       ; $66f0: $f5
    jp c, $cfb9                                   ; $66f1: $da $b9 $cf

    xor e                                         ; $66f4: $ab
    ld h, a                                       ; $66f5: $67
    cp $7c                                        ; $66f6: $fe $7c
    jr @+$7f                                      ; $66f8: $18 $7d

    inc a                                         ; $66fa: $3c
    cpl                                           ; $66fb: $2f
    inc h                                         ; $66fc: $24
    call nc, Call_000_357d                        ; $66fd: $d4 $7d $35
    ld e, c                                       ; $6700: $59
    xor [hl]                                      ; $6701: $ae
    add c                                         ; $6702: $81
    ldh a, [$9b]                                  ; $6703: $f0 $9b
    cp d                                          ; $6705: $ba
    db $fc                                        ; $6706: $fc
    sbc $1f                                       ; $6707: $de $1f
    db $fd                                        ; $6709: $fd
    adc e                                         ; $670a: $8b
    ei                                            ; $670b: $fb
    or h                                          ; $670c: $b4
    ld h, l                                       ; $670d: $65
    daa                                           ; $670e: $27
    jp c, $f730                                   ; $670f: $da $30 $f7

    dec hl                                        ; $6712: $2b
    cp [hl]                                       ; $6713: $be
    ld [hl], h                                    ; $6714: $74
    ld l, a                                       ; $6715: $6f
    adc a                                         ; $6716: $8f
    inc de                                        ; $6717: $13
    call $ca50                                    ; $6718: $cd $50 $ca
    call nz, $d479                                ; $671b: $c4 $79 $d4
    ld c, b                                       ; $671e: $48
    ld [hl], c                                    ; $671f: $71
    halt                                          ; $6720: $76
    call z, Call_000_1f13                         ; $6721: $cc $13 $1f
    ld a, [$4ddb]                                 ; $6724: $fa $db $4d
    ld sp, hl                                     ; $6727: $f9
    cp [hl]                                       ; $6728: $be
    rst $28                                       ; $6729: $ef
    ld d, a                                       ; $672a: $57
    ld e, $be                                     ; $672b: $1e $be
    ld l, h                                       ; $672d: $6c
    cpl                                           ; $672e: $2f
    rlca                                          ; $672f: $07
    dec de                                        ; $6730: $1b
    ld e, l                                       ; $6731: $5d
    jr nz, jr_040_67a0                            ; $6732: $20 $6c

    xor a                                         ; $6734: $af
    ld c, e                                       ; $6735: $4b
    push af                                       ; $6736: $f5
    pop hl                                        ; $6737: $e1
    add e                                         ; $6738: $83
    ld e, h                                       ; $6739: $5c
    ld c, [hl]                                    ; $673a: $4e
    and d                                         ; $673b: $a2
    reti                                          ; $673c: $d9


    ld c, e                                       ; $673d: $4b
    call c, $cf08                                 ; $673e: $dc $08 $cf
    ld a, [bc]                                    ; $6741: $0a
    dec e                                         ; $6742: $1d
    ld d, d                                       ; $6743: $52
    db $ec                                        ; $6744: $ec
    jr c, @+$41                                   ; $6745: $38 $3f

    jp nz, $2f97                                  ; $6747: $c2 $97 $2f

    dec bc                                        ; $674a: $0b
    sbc b                                         ; $674b: $98
    ccf                                           ; $674c: $3f
    dec b                                         ; $674d: $05
    add hl, hl                                    ; $674e: $29
    ld l, a                                       ; $674f: $6f
    ld a, a                                       ; $6750: $7f
    add hl, sp                                    ; $6751: $39
    pop de                                        ; $6752: $d1
    add $d4                                       ; $6753: $c6 $d4
    xor h                                         ; $6755: $ac
    ld [hl], l                                    ; $6756: $75
    ld h, c                                       ; $6757: $61
    adc $5f                                       ; $6758: $ce $5f
    ld l, a                                       ; $675a: $6f
    sbc h                                         ; $675b: $9c
    rst $38                                       ; $675c: $ff
    or d                                          ; $675d: $b2
    jr jr_040_67a4                                ; $675e: $18 $44

    ld hl, $47d5                                  ; $6760: $21 $d5 $47
    ld b, [hl]                                    ; $6763: $46
    and d                                         ; $6764: $a2
    pop de                                        ; $6765: $d1
    ld d, a                                       ; $6766: $57
    xor a                                         ; $6767: $af
    ret                                           ; $6768: $c9


    xor a                                         ; $6769: $af
    ld [hl], l                                    ; $676a: $75
    ld e, a                                       ; $676b: $5f
    di                                            ; $676c: $f3
    jp $89ea                                      ; $676d: $c3 $ea $89


    ld a, e                                       ; $6770: $7b
    ei                                            ; $6771: $fb
    db $ec                                        ; $6772: $ec
    ld c, a                                       ; $6773: $4f
    push af                                       ; $6774: $f5
    jp c, $f26b                                   ; $6775: $da $6b $f2

    cp l                                          ; $6778: $bd
    rst $00                                       ; $6779: $c7
    ld a, [bc]                                    ; $677a: $0a
    ld [hl], l                                    ; $677b: $75
    ld b, [hl]                                    ; $677c: $46
    or d                                          ; $677d: $b2
    ret nc                                        ; $677e: $d0

    cp c                                          ; $677f: $b9
    ld b, b                                       ; $6780: $40
    ret c                                         ; $6781: $d8

    sbc $10                                       ; $6782: $de $10
    pop bc                                        ; $6784: $c1
    sbc $1e                                       ; $6785: $de $1e
    ld l, a                                       ; $6787: $6f
    ld hl, sp-$58                                 ; $6788: $f8 $a8
    ld c, e                                       ; $678a: $4b
    add hl, sp                                    ; $678b: $39
    ld b, a                                       ; $678c: $47
    dec c                                         ; $678d: $0d
    ld b, h                                       ; $678e: $44
    ld [c], a                                     ; $678f: $e2
    db $eb                                        ; $6790: $eb
    ld a, [c]                                     ; $6791: $f2
    xor c                                         ; $6792: $a9
    jr nz, jr_040_67a8                            ; $6793: $20 $13

    rst $20                                       ; $6795: $e7
    ld b, a                                       ; $6796: $47
    sbc b                                         ; $6797: $98
    ld b, [hl]                                    ; $6798: $46
    ld b, [hl]                                    ; $6799: $46
    ld a, [c]                                     ; $679a: $f2
    ld a, d                                       ; $679b: $7a
    db $fd                                        ; $679c: $fd
    ld a, l                                       ; $679d: $7d
    or $c7                                        ; $679e: $f6 $c7

jr_040_67a0:
    ld sp, hl                                     ; $67a0: $f9
    rst $28                                       ; $67a1: $ef
    ld c, c                                       ; $67a2: $49
    ld b, h                                       ; $67a3: $44

jr_040_67a4:
    ld h, c                                       ; $67a4: $61
    rst $28                                       ; $67a5: $ef
    rrca                                          ; $67a6: $0f
    db $d3                                        ; $67a7: $d3

jr_040_67a8:
    adc a                                         ; $67a8: $8f
    ei                                            ; $67a9: $fb
    ld a, [bc]                                    ; $67aa: $0a
    or $d1                                        ; $67ab: $f6 $d1
    rst $28                                       ; $67ad: $ef
    inc de                                        ; $67ae: $13
    push af                                       ; $67af: $f5
    db $fc                                        ; $67b0: $fc
    db $fd                                        ; $67b1: $fd
    ld a, [bc]                                    ; $67b2: $0a
    cp [hl]                                       ; $67b3: $be
    and a                                         ; $67b4: $a7
    ret                                           ; $67b5: $c9


    ld e, b                                       ; $67b6: $58
    ld [$330e], a                                 ; $67b7: $ea $0e $33
    xor h                                         ; $67ba: $ac
    ld d, [hl]                                    ; $67bb: $56
    jp c, $29de                                   ; $67bc: $da $de $29

    ld [hl], h                                    ; $67bf: $74
    ld [c], a                                     ; $67c0: $e2
    and [hl]                                      ; $67c1: $a6
    ld e, d                                       ; $67c2: $5a
    sbc $90                                       ; $67c3: $de $90
    db $fd                                        ; $67c5: $fd
    add hl, hl                                    ; $67c6: $29
    db $fc                                        ; $67c7: $fc
    ld sp, hl                                     ; $67c8: $f9
    or d                                          ; $67c9: $b2
    add b                                         ; $67ca: $80
    ld sp, hl                                     ; $67cb: $f9
    ld b, l                                       ; $67cc: $45
    ld c, l                                       ; $67cd: $4d
    ld a, [hl]                                    ; $67ce: $7e
    rst $28                                       ; $67cf: $ef
    adc a                                         ; $67d0: $8f
    rst $30                                       ; $67d1: $f7
    inc b                                         ; $67d2: $04
    ld d, c                                       ; $67d3: $51
    ret c                                         ; $67d4: $d8

    ld [hl], c                                    ; $67d5: $71
    ld h, e                                       ; $67d6: $63
    halt                                          ; $67d7: $76
    ld l, d                                       ; $67d8: $6a
    ld l, [hl]                                    ; $67d9: $6e
    ld a, [$be15]                                 ; $67da: $fa $15 $be
    ld c, b                                       ; $67dd: $48
    pop hl                                        ; $67de: $e1
    adc a                                         ; $67df: $8f
    add e                                         ; $67e0: $83
    cp c                                          ; $67e1: $b9
    rla                                           ; $67e2: $17
    dec [hl]                                      ; $67e3: $35
    cp c                                          ; $67e4: $b9
    sbc l                                         ; $67e5: $9d
    ld [hl], d                                    ; $67e6: $72
    sbc d                                         ; $67e7: $9a
    adc h                                         ; $67e8: $8c
    and l                                         ; $67e9: $a5
    or $6b                                        ; $67ea: $f6 $6b
    halt                                          ; $67ec: $76
    ld c, d                                       ; $67ed: $4a
    sub a                                         ; $67ee: $97
    ld a, [de]                                    ; $67ef: $1a
    ld hl, $9dcf                                  ; $67f0: $21 $cf $9d
    ld c, h                                       ; $67f3: $4c
    ld a, [hl]                                    ; $67f4: $7e
    ld l, a                                       ; $67f5: $6f
    call nz, $057d                                ; $67f6: $c4 $7d $05
    ld b, e                                       ; $67f9: $43
    db $f4                                        ; $67fa: $f4
    ei                                            ; $67fb: $fb
    ld b, h                                       ; $67fc: $44
    dec a                                         ; $67fd: $3d
    and e                                         ; $67fe: $a3
    ld e, a                                       ; $67ff: $5f
    ld bc, $ef6d                                  ; $6800: $01 $6d $ef
    sub h                                         ; $6803: $94
    db $d3                                        ; $6804: $d3
    ld h, h                                       ; $6805: $64
    inc l                                         ; $6806: $2c
    or l                                          ; $6807: $b5
    ld e, a                                       ; $6808: $5f
    or e                                          ; $6809: $b3
    ld d, e                                       ; $680a: $53
    reti                                          ; $680b: $d9


    sbc a                                         ; $680c: $9f
    jp nz, Jump_000_2f9f                          ; $680d: $c2 $9f $2f

    dec bc                                        ; $6810: $0b
    sbc b                                         ; $6811: $98
    ld e, a                                       ; $6812: $5f
    call nc, $f7e4                                ; $6813: $d4 $e4 $f7
    or $40                                        ; $6816: $f6 $40
    ld h, c                                       ; $6818: $61
    ld b, e                                       ; $6819: $43
    ld [hl], l                                    ; $681a: $75
    ld e, h                                       ; $681b: $5c
    ld c, a                                       ; $681c: $4f
    ld h, [hl]                                    ; $681d: $66
    ld e, c                                       ; $681e: $59
    and [hl]                                      ; $681f: $a6
    ldh a, [rBGP]                                 ; $6820: $f0 $47
    ld h, c                                       ; $6822: $61
    ld l, a                                       ; $6823: $6f
    rrca                                          ; $6824: $0f
    xor b                                         ; $6825: $a8
    di                                            ; $6826: $f3
    sbc [hl]                                      ; $6827: $9e
    cp e                                          ; $6828: $bb
    jp hl                                         ; $6829: $e9


    ld d, a                                       ; $682a: $57
    ld l, l                                       ; $682b: $6d
    rst $28                                       ; $682c: $ef
    sub h                                         ; $682d: $94
    db $d3                                        ; $682e: $d3
    ld h, h                                       ; $682f: $64
    inc l                                         ; $6830: $2c
    or l                                          ; $6831: $b5
    ld e, a                                       ; $6832: $5f
    or e                                          ; $6833: $b3
    ld d, e                                       ; $6834: $53
    ld b, c                                       ; $6835: $41
    ld l, [hl]                                    ; $6836: $6e
    and a                                         ; $6837: $a7
    sbc h                                         ; $6838: $9c
    ld h, $63                                     ; $6839: $26 $63
    jp hl                                         ; $683b: $e9


    ld b, h                                       ; $683c: $44
    call c, Call_040_4a35                         ; $683d: $dc $35 $4a
    push bc                                       ; $6840: $c5
    ld e, l                                       ; $6841: $5d
    or $a7                                        ; $6842: $f6 $a7
    ldh a, [$93]                                  ; $6844: $f0 $93
    cpl                                           ; $6846: $2f
    sub e                                         ; $6847: $93
    cpl                                           ; $6848: $2f
    dec bc                                        ; $6849: $0b
    sbc b                                         ; $684a: $98
    ld e, a                                       ; $684b: $5f
    call nc, $2bf4                                ; $684c: $d4 $f4 $2b
    sbc [hl]                                      ; $684f: $9e
    rst $30                                       ; $6850: $f7
    and e                                         ; $6851: $a3
    ld c, e                                       ; $6852: $4b
    db $ed                                        ; $6853: $ed
    scf                                           ; $6854: $37
    inc hl                                        ; $6855: $23
    ld d, b                                       ; $6856: $50
    ld [hl], e                                    ; $6857: $73
    dec b                                         ; $6858: $05
    xor l                                         ; $6859: $ad
    pop de                                        ; $685a: $d1
    ld de, $c6ed                                  ; $685b: $11 $ed $c6
    ld h, h                                       ; $685e: $64
    ld [hl], h                                    ; $685f: $74
    add hl, hl                                    ; $6860: $29
    and a                                         ; $6861: $a7
    ret                                           ; $6862: $c9


    ld e, b                                       ; $6863: $58
    ld [$330e], a                                 ; $6864: $ea $0e $33
    xor h                                         ; $6867: $ac
    ld c, a                                       ; $6868: $4f
    db $db                                        ; $6869: $db
    dec sp                                        ; $686a: $3b
    push de                                       ; $686b: $d5
    ld c, l                                       ; $686c: $4d
    ld h, h                                       ; $686d: $64
    ld a, [hl+]                                   ; $686e: $2a
    and h                                         ; $686f: $a4
    ld b, [hl]                                    ; $6870: $46
    ld a, [hl-]                                   ; $6871: $3a
    ld de, $8d77                                  ; $6872: $11 $77 $8d
    ld d, d                                       ; $6875: $52
    ld [hl], c                                    ; $6876: $71
    rst $10                                       ; $6877: $d7
    xor a                                         ; $6878: $af
    xor l                                         ; $6879: $ad
    ld a, [hl+]                                   ; $687a: $2a
    sub h                                         ; $687b: $94
    ld [hl-], a                                   ; $687c: $32
    ld hl, $0cc7                                  ; $687d: $21 $c7 $0c
    ld d, l                                       ; $6880: $55
    dec [hl]                                      ; $6881: $35
    ld hl, $60a1                                  ; $6882: $21 $a1 $60
    ret z                                         ; $6885: $c8

    cp $b8                                        ; $6886: $fe $b8
    xor a                                         ; $6888: $af
    ld h, b                                       ; $6889: $60
    rra                                           ; $688a: $1f
    db $fd                                        ; $688b: $fd
    ld a, $51                                     ; $688c: $3e $51
    rst $08                                       ; $688e: $cf
    rra                                           ; $688f: $1f
    ld [hl], l                                    ; $6890: $75
    xor c                                         ; $6891: $a9
    db $fd                                        ; $6892: $fd
    ld h, [hl]                                    ; $6893: $66
    inc b                                         ; $6894: $04
    ld a, [$ad15]                                 ; $6895: $fa $15 $ad
    sub d                                         ; $6898: $92
    ld h, b                                       ; $6899: $60
    ld h, h                                       ; $689a: $64
    ld a, a                                       ; $689b: $7f
    sbc h                                         ; $689c: $9c
    rst $38                                       ; $689d: $ff
    sbc [hl]                                      ; $689e: $9e
    add h                                         ; $689f: $84
    ld l, $e5                                     ; $68a0: $2e $e5
    inc [hl]                                      ; $68a2: $34
    add hl, de                                    ; $68a3: $19
    ld b, e                                       ; $68a4: $43
    xor l                                         ; $68a5: $ad
    dec d                                         ; $68a6: $15
    ld l, l                                       ; $68a7: $6d
    jr c, @+$39                                   ; $68a8: $38 $37

    ei                                            ; $68aa: $fb
    db $e3                                        ; $68ab: $e3
    ld b, e                                       ; $68ac: $43
    xor a                                         ; $68ad: $af

jr_040_68ae:
    ld c, a                                       ; $68ae: $4f
    dec de                                        ; $68af: $1b
    ld [hl], c                                    ; $68b0: $71
    ld e, $35                                     ; $68b1: $1e $35
    ld a, [c]                                     ; $68b3: $f2
    ld [c], a                                     ; $68b4: $e2
    db $fc                                        ; $68b5: $fc
    adc b                                         ; $68b6: $88
    rrca                                          ; $68b7: $0f
    push bc                                       ; $68b8: $c5
    sbc $1f                                       ; $68b9: $de $1f
    rra                                           ; $68bb: $1f
    adc d                                         ; $68bc: $8a
    jp nz, $8237                                  ; $68bd: $c2 $37 $82

    jr z, jr_040_68ae                             ; $68c0: $28 $ec

    or h                                          ; $68c2: $b4
    add a                                         ; $68c3: $87
    ld l, e                                       ; $68c4: $6b
    call nc, Call_000_1bf7                        ; $68c5: $d4 $f7 $1b
    push af                                       ; $68c8: $f5
    sbc h                                         ; $68c9: $9c
    ld a, [c]                                     ; $68ca: $f2
    ld d, c                                       ; $68cb: $51
    rla                                           ; $68cc: $17
    ld b, a                                       ; $68cd: $47
    cpl                                           ; $68ce: $2f
    xor a                                         ; $68cf: $af
    rst $10                                       ; $68d0: $d7
    rst $18                                       ; $68d1: $df
    ld d, a                                       ; $68d2: $57
    sub e                                         ; $68d3: $93
    push hl                                       ; $68d4: $e5
    ld l, l                                       ; $68d5: $6d
    ccf                                           ; $68d6: $3f
    ld c, a                                       ; $68d7: $4f
    ld d, $bb                                     ; $68d8: $16 $bb
    ld [$15fb], a                                 ; $68da: $ea $fb $15
    cp [hl]                                       ; $68dd: $be
    xor b                                         ; $68de: $a8
    db $f4                                        ; $68df: $f4
    or $71                                        ; $68e0: $f6 $71
    ld a, [hl]                                    ; $68e2: $7e
    add h                                         ; $68e3: $84
    ld a, h                                       ; $68e4: $7c
    push af                                       ; $68e5: $f5
    pop de                                        ; $68e6: $d1
    ld b, e                                       ; $68e7: $43
    ret nc                                        ; $68e8: $d0

    rst $00                                       ; $68e9: $c7
    rla                                           ; $68ea: $17
    ld a, [de]                                    ; $68eb: $1a
    dec a                                         ; $68ec: $3d
    ld b, [hl]                                    ; $68ed: $46
    ld [hl], l                                    ; $68ee: $75
    db $fd                                        ; $68ef: $fd
    ld a, [bc]                                    ; $68f0: $0a
    dec e                                         ; $68f1: $1d
    ld e, l                                       ; $68f2: $5d
    push af                                       ; $68f3: $f5
    ld [bc], a                                    ; $68f4: $02
    ld b, [hl]                                    ; $68f5: $46
    ret z                                         ; $68f6: $c8

    ld [hl], e                                    ; $68f7: $73
    daa                                           ; $68f8: $27
    and a                                         ; $68f9: $a7
    rlc d                                         ; $68fa: $cb $02
    adc e                                         ; $68fc: $8b
    rst $30                                       ; $68fd: $f7
    ret                                           ; $68fe: $c9


    ld sp, $2bf4                                  ; $68ff: $31 $f4 $2b
    xor l                                         ; $6902: $ad
    adc d                                         ; $6903: $8a
    cp d                                          ; $6904: $ba
    xor a                                         ; $6905: $af
    ld b, [hl]                                    ; $6906: $46
    sub a                                         ; $6907: $97
    jp c, $466f                                   ; $6908: $da $6f $46

    and b                                         ; $690b: $a0
    ld e, a                                       ; $690c: $5f
    ld bc, $5fb5                                  ; $690d: $01 $b5 $5f
    or e                                          ; $6910: $b3
    ld d, e                                       ; $6911: $53
    dec [hl]                                      ; $6912: $35
    db $d3                                        ; $6913: $d3
    ld l, d                                       ; $6914: $6a
    ld e, c                                       ; $6915: $59
    ret nz                                        ; $6916: $c0

    db $fc                                        ; $6917: $fc
    push de                                       ; $6918: $d5
    push de                                       ; $6919: $d5
    ld e, h                                       ; $691a: $5c
    ld bc, $5fed                                  ; $691b: $01 $ed $5f
    jp z, $ef72                                   ; $691e: $ca $72 $ef

    ret nc                                        ; $6921: $d0

    and a                                         ; $6922: $a7
    ld b, e                                       ; $6923: $43
    adc d                                         ; $6924: $8a
    jp nz, $b293                                  ; $6925: $c2 $93 $b2

    adc h                                         ; $6928: $8c
    ld sp, $9ef6                                  ; $6929: $31 $f6 $9e
    call nc, $f388                                ; $692c: $d4 $88 $f3
    rra                                           ; $692f: $1f
    dec l                                         ; $6930: $2d
    db $d3                                        ; $6931: $d3
    xor a                                         ; $6932: $af
    db $ed                                        ; $6933: $ed
    ld e, a                                       ; $6934: $5f
    jp z, $ef72                                   ; $6935: $ca $72 $ef

    and b                                         ; $6938: $a0
    bit 4, l                                      ; $6939: $cb $65
    ld a, c                                       ; $693b: $79
    db $ed                                        ; $693c: $ed
    dec hl                                        ; $693d: $2b
    ld [$3e5f], sp                                ; $693e: $08 $5f $3e
    or $8c                                        ; $6941: $f6 $8c
    sub h                                         ; $6943: $94
    dec bc                                        ; $6944: $0b
    cp h                                          ; $6945: $bc
    ld e, [hl]                                    ; $6946: $5e
    jr nc, @-$2b                                  ; $6947: $30 $d3

    sub a                                         ; $6949: $97
    ld c, c                                       ; $694a: $49
    sbc c                                         ; $694b: $99
    dec a                                         ; $694c: $3d
    ld sp, hl                                     ; $694d: $f9
    ld hl, sp+$50                                 ; $694e: $f8 $50
    inc d                                         ; $6950: $14
    sbc [hl]                                      ; $6951: $9e
    sub h                                         ; $6952: $94
    ld h, l                                       ; $6953: $65
    adc h                                         ; $6954: $8c
    or c                                          ; $6955: $b1
    rst $30                                       ; $6956: $f7
    db $f4                                        ; $6957: $f4
    dec hl                                        ; $6958: $2b
    dec l                                         ; $6959: $2d
    inc [hl]                                      ; $695a: $34
    xor l                                         ; $695b: $ad
    ld c, e                                       ; $695c: $4b
    dec bc                                        ; $695d: $0b
    call $d2e8                                    ; $695e: $cd $e8 $d2
    ld b, d                                       ; $6961: $42
    or e                                          ; $6962: $b3
    ld a, l                                       ; $6963: $7d
    rst $18                                       ; $6964: $df
    and a                                         ; $6965: $a7
    cp h                                          ; $6966: $bc
    push de                                       ; $6967: $d5
    rra                                           ; $6968: $1f
    push af                                       ; $6969: $f5
    ld h, c                                       ; $696a: $61
    ld b, h                                       ; $696b: $44
    ld b, [hl]                                    ; $696c: $46
    ld a, [c]                                     ; $696d: $f2
    rlc d                                         ; $696e: $cb $02
    ld sp, hl                                     ; $6970: $f9
    inc a                                         ; $6971: $3c
    ld l, c                                       ; $6972: $69
    push af                                       ; $6973: $f5
    rst $00                                       ; $6974: $c7
    ld a, e                                       ; $6975: $7b
    ld [hl], d                                    ; $6976: $72
    inc a                                         ; $6977: $3c
    ld d, c                                       ; $6978: $51
    rla                                           ; $6979: $17
    scf                                           ; $697a: $37
    jp nz, $886f                                  ; $697b: $c2 $6f $88

    rrca                                          ; $697e: $0f
    ld b, l                                       ; $697f: $45
    ld h, c                                       ; $6980: $61
    and h                                         ; $6981: $a4
    ld a, [hl-]                                   ; $6982: $3a
    ld l, l                                       ; $6983: $6d
    rst $18                                       ; $6984: $df
    rst $18                                       ; $6985: $df
    ld b, a                                       ; $6986: $47
    ld e, l                                       ; $6987: $5d
    adc h                                         ; $6988: $8c
    ld [$ae4f], a                                 ; $6989: $ea $4f $ae
    rst $28                                       ; $698c: $ef
    ei                                            ; $698d: $fb
    or h                                          ; $698e: $b4
    ret nc                                        ; $698f: $d0

    sbc h                                         ; $6990: $9c
    ld l, $2d                                     ; $6991: $2e $2d
    inc [hl]                                      ; $6993: $34
    xor a                                         ; $6994: $af
    ld c, e                                       ; $6995: $4b
    dec bc                                        ; $6996: $0b
    dec l                                         ; $6997: $2d
    db $f4                                        ; $6998: $f4
    ld a, l                                       ; $6999: $7d
    cp a                                          ; $699a: $bf
    ld [bc], a                                    ; $699b: $02
    db $ed                                        ; $699c: $ed
    ld e, a                                       ; $699d: $5f
    db $fc                                        ; $699e: $fc
    ld a, a                                       ; $699f: $7f
    pop af                                        ; $69a0: $f1
    ld a, $f3                                     ; $69a1: $3e $f3
    ld h, h                                       ; $69a3: $64
    add c                                         ; $69a4: $81
    add hl, hl                                    ; $69a5: $29
    jr jr_040_6a1a                                ; $69a6: $18 $72

    dec sp                                        ; $69a8: $3b
    ld l, [hl]                                    ; $69a9: $6e
    add h                                         ; $69aa: $84
    and a                                         ; $69ab: $a7
    ld h, [hl]                                    ; $69ac: $66
    ld [$848c], a                                 ; $69ad: $ea $8c $84
    rst $00                                       ; $69b0: $c7
    db $e4                                        ; $69b1: $e4
    dec c                                         ; $69b2: $0d
    pop af                                        ; $69b3: $f1
    sbc [hl]                                      ; $69b4: $9e
    jr c, jr_040_6a36                             ; $69b5: $38 $7f

    cp l                                          ; $69b7: $bd
    sub c                                         ; $69b8: $91
    sub c                                         ; $69b9: $91
    inc a                                         ; $69ba: $3c
    ld l, c                                       ; $69bb: $69
    push af                                       ; $69bc: $f5
    rst $00                                       ; $69bd: $c7
    ld a, e                                       ; $69be: $7b
    ld [hl], d                                    ; $69bf: $72
    inc a                                         ; $69c0: $3c
    db $fd                                        ; $69c1: $fd
    ld a, [bc]                                    ; $69c2: $0a
    db $ed                                        ; $69c3: $ed
    ld e, a                                       ; $69c4: $5f
    jp z, $ef72                                   ; $69c5: $ca $72 $ef

    and b                                         ; $69c8: $a0
    ld c, e                                       ; $69c9: $4b
    pop hl                                        ; $69ca: $e1
    adc c                                         ; $69cb: $89
    rst $30                                       ; $69cc: $f7
    dec e                                         ; $69cd: $1d
    ld b, h                                       ; $69ce: $44
    ld c, l                                       ; $69cf: $4d
    xor b                                         ; $69d0: $a8
    ld a, h                                       ; $69d1: $7c
    sub [hl]                                      ; $69d2: $96
    and a                                         ; $69d3: $a7
    push hl                                       ; $69d4: $e5
    or e                                          ; $69d5: $b3
    ret nz                                        ; $69d6: $c0

    and d                                         ; $69d7: $a2
    add a                                         ; $69d8: $87
    ld hl, $c254                                  ; $69d9: $21 $54 $c2
    dec [hl]                                      ; $69dc: $35
    ld a, [c]                                     ; $69dd: $f2
    ld a, e                                       ; $69de: $7b
    inc hl                                        ; $69df: $23
    jr nc, @+$3f                                  ; $69e0: $30 $3d

    ld d, d                                       ; $69e2: $52
    ld h, b                                       ; $69e3: $60
    dec bc                                        ; $69e4: $0b
    add h                                         ; $69e5: $84
    ld c, a                                       ; $69e6: $4f
    ret nc                                        ; $69e7: $d0

    xor a                                         ; $69e8: $af
    xor l                                         ; $69e9: $ad
    ld a, [hl+]                                   ; $69ea: $2a
    sub h                                         ; $69eb: $94
    ld [hl-], a                                   ; $69ec: $32
    sub c                                         ; $69ed: $91
    sub c                                         ; $69ee: $91
    inc l                                         ; $69ef: $2c
    ld d, e                                       ; $69f0: $53
    jp z, Jump_040_7964                           ; $69f1: $ca $64 $79

    db $db                                        ; $69f4: $db
    ld l, a                                       ; $69f5: $6f
    add sp, -$1d                                  ; $69f6: $e8 $e3
    res 2, e                                      ; $69f8: $cb $93
    cpl                                           ; $69fa: $2f
    dec bc                                        ; $69fb: $0b
    sbc b                                         ; $69fc: $98
    ld e, a                                       ; $69fd: $5f
    call nc, Call_040_4a84                        ; $69fe: $d4 $84 $4a
    inc [hl]                                      ; $6a01: $34
    ld [$549d], a                                 ; $6a02: $ea $9d $54
    or e                                          ; $6a05: $b3
    ld a, c                                       ; $6a06: $79
    ld [hl], d                                    ; $6a07: $72
    push de                                       ; $6a08: $d5
    ld [hl-], a                                   ; $6a09: $32
    add $2f                                       ; $6a0a: $c6 $2f
    adc h                                         ; $6a0c: $8c
    ld a, [hl]                                    ; $6a0d: $7e
    dec b                                         ; $6a0e: $05
    ld [hl], l                                    ; $6a0f: $75
    ld h, c                                       ; $6a10: $61
    adc $5f                                       ; $6a11: $ce $5f
    ld l, a                                       ; $6a13: $6f
    call c, $9f08                                 ; $6a14: $dc $08 $9f
    ret nc                                        ; $6a17: $d0

    res 5, e                                      ; $6a18: $cb $ab

jr_040_6a1a:
    cp h                                          ; $6a1a: $bc
    xor b                                         ; $6a1b: $a8
    scf                                           ; $6a1c: $37
    add [hl]                                      ; $6a1d: $86
    jr nz, jr_040_6a47                            ; $6a1e: $20 $27

    pop de                                        ; $6a20: $d1
    adc $26                                       ; $6a21: $ce $26
    ld [$6653], a                                 ; $6a23: $ea $53 $66
    ld c, a                                       ; $6a26: $4f
    xor l                                         ; $6a27: $ad
    or h                                          ; $6a28: $b4
    sbc h                                         ; $6a29: $9c
    dec b                                         ; $6a2a: $05
    halt                                          ; $6a2b: $76
    ld l, [hl]                                    ; $6a2c: $6e
    or $94                                        ; $6a2d: $f6 $94
    jp hl                                         ; $6a2f: $e9


    ld d, a                                       ; $6a30: $57
    ld [hl], l                                    ; $6a31: $75
    ld hl, $c9e5                                  ; $6a32: $21 $e5 $c9
    adc c                                         ; $6a35: $89

jr_040_6a36:
    di                                            ; $6a36: $f3
    inc hl                                        ; $6a37: $23
    sbc l                                         ; $6a38: $9d
    adc b                                         ; $6a39: $88
    cp e                                          ; $6a3a: $bb
    ld b, [hl]                                    ; $6a3b: $46
    xor c                                         ; $6a3c: $a9
    cp b                                          ; $6a3d: $b8
    dec bc                                        ; $6a3e: $0b
    ld e, a                                       ; $6a3f: $5f
    ld a, [bc]                                    ; $6a40: $0a
    and e                                         ; $6a41: $a3
    inc d                                         ; $6a42: $14
    db $e4                                        ; $6a43: $e4
    adc a                                         ; $6a44: $8f
    ld a, [c]                                     ; $6a45: $f2
    adc e                                         ; $6a46: $8b

jr_040_6a47:
    sbc d                                         ; $6a47: $9a
    ld a, $1d                                     ; $6a48: $3e $1d
    ld e, a                                       ; $6a4a: $5f
    ld a, [bc]                                    ; $6a4b: $0a
    push de                                       ; $6a4c: $d5
    inc [hl]                                      ; $6a4d: $34
    ret c                                         ; $6a4e: $d8

    dec d                                         ; $6a4f: $15
    scf                                           ; $6a50: $37
    ld d, c                                       ; $6a51: $51
    sub a                                         ; $6a52: $97
    rla                                           ; $6a53: $17
    push af                                       ; $6a54: $f5
    add [hl]                                      ; $6a55: $86
    ld a, h                                       ; $6a56: $7c
    inc e                                         ; $6a57: $1c
    call z, $edbd                                 ; $6a58: $cc $bd $ed
    jp hl                                         ; $6a5b: $e9


    ld d, a                                       ; $6a5c: $57
    ld l, l                                       ; $6a5d: $6d
    jr c, jr_040_6a97                             ; $6a5e: $38 $37

    ld a, h                                       ; $6a60: $7c
    dec [hl]                                      ; $6a61: $35
    ld d, e                                       ; $6a62: $53
    ld h, a                                       ; $6a63: $67
    inc h                                         ; $6a64: $24
    ld c, a                                       ; $6a65: $4f
    ld a, [de]                                    ; $6a66: $1a
    ld a, [bc]                                    ; $6a67: $0a
    ld e, a                                       ; $6a68: $5f
    call nc, $9490                                ; $6a69: $d4 $90 $94
    daa                                           ; $6a6c: $27
    cpl                                           ; $6a6d: $2f
    ld [$218d], a                                 ; $6a6e: $ea $8d $21
    ret z                                         ; $6a71: $c8

    ld c, c                                       ; $6a72: $49
    or h                                          ; $6a73: $b4
    or e                                          ; $6a74: $b3
    ret                                           ; $6a75: $c9


    ld c, c                                       ; $6a76: $49
    ld a, h                                       ; $6a77: $7c
    jr z, jr_040_6af0                             ; $6a78: $28 $76

    xor d                                         ; $6a7a: $aa
    ld d, c                                       ; $6a7b: $51
    db $d3                                        ; $6a7c: $d3
    xor a                                         ; $6a7d: $af
    dec e                                         ; $6a7e: $1d
    ld e, a                                       ; $6a7f: $5f
    db $fc                                        ; $6a80: $fc
    inc de                                        ; $6a81: $13
    rlca                                          ; $6a82: $07
    ld [hl], e                                    ; $6a83: $73
    rst $08                                       ; $6a84: $cf
    inc de                                        ; $6a85: $13
    push af                                       ; $6a86: $f5
    rlc d                                         ; $6a87: $cb $02
    ld h, e                                       ; $6a89: $63
    jp z, Jump_000_353c                           ; $6a8a: $ca $3c $35

    ld d, a                                       ; $6a8d: $57
    db $ed                                        ; $6a8e: $ed
    ld a, a                                       ; $6a8f: $7f
    ld h, h                                       ; $6a90: $64
    inc h                                         ; $6a91: $24
    ld h, l                                       ; $6a92: $65
    ld h, h                                       ; $6a93: $64
    ld a, [c]                                     ; $6a94: $f2
    and d                                         ; $6a95: $a2
    sbc [hl]                                      ; $6a96: $9e

jr_040_6a97:
    daa                                           ; $6a97: $27
    ld [$0597], a                                 ; $6a98: $ea $97 $05
    add $94                                       ; $6a9b: $c6 $94
    ld a, c                                       ; $6a9d: $79
    ld a, [$61b4]                                 ; $6a9e: $fa $b4 $61
    sub e                                         ; $6aa1: $93
    push bc                                       ; $6aa2: $c5
    ld h, [hl]                                    ; $6aa3: $66
    or c                                          ; $6aa4: $b1
    sbc e                                         ; $6aa5: $9b
    ld hl, sp-$30                                 ; $6aa6: $f8 $d0
    db $d3                                        ; $6aa8: $d3
    add l                                         ; $6aa9: $85
    inc a                                         ; $6aaa: $3c
    ld [hl], a                                    ; $6aab: $77
    ld [hl-], a                                   ; $6aac: $32
    ld sp, hl                                     ; $6aad: $f9
    cp l                                          ; $6aae: $bd
    ccf                                           ; $6aaf: $3f
    ld c, h                                       ; $6ab0: $4c
    ccf                                           ; $6ab1: $3f
    xor $2b                                       ; $6ab2: $ee $2b
    ret c                                         ; $6ab4: $d8

    ld b, a                                       ; $6ab5: $47
    cp a                                          ; $6ab6: $bf
    ld c, a                                       ; $6ab7: $4f
    call nc, $f7f3                                ; $6ab8: $d4 $f3 $f7
    ld a, l                                       ; $6abb: $7d
    cp a                                          ; $6abc: $bf
    ld [bc], a                                    ; $6abd: $02
    dec e                                         ; $6abe: $1d
    ld d, e                                       ; $6abf: $53
    and $e9                                       ; $6ac0: $e6 $e9
    ei                                            ; $6ac2: $fb
    ld a, $4c                                     ; $6ac3: $3e $4c
    sbc c                                         ; $6ac5: $99
    daa                                           ; $6ac6: $27
    ld a, $14                                     ; $6ac7: $3e $14
    add l                                         ; $6ac9: $85
    daa                                           ; $6aca: $27
    dec [hl]                                      ; $6acb: $35
    ld d, d                                       ; $6acc: $52
    db $dd                                        ; $6acd: $dd
    call nc, $015a                                ; $6ace: $d4 $5a $01
    ld [hl], l                                    ; $6ad1: $75
    ld l, l                                       ; $6ad2: $6d
    ld d, $bb                                     ; $6ad3: $16 $bb
    adc c                                         ; $6ad5: $89
    sbc e                                         ; $6ad6: $9b
    ld d, d                                       ; $6ad7: $52
    ld e, a                                       ; $6ad8: $5f
    sbc a                                         ; $6ad9: $9f
    cp d                                          ; $6ada: $ba
    ld b, $51                                     ; $6adb: $06 $51
    jr nc, @+$56                                  ; $6add: $30 $54

    sub e                                         ; $6adf: $93
    ld [hl-], a                                   ; $6ae0: $32
    ld a, e                                       ; $6ae1: $7b
    ld b, d                                       ; $6ae2: $42
    dec h                                         ; $6ae3: $25
    bit 7, b                                      ; $6ae4: $cb $78
    ld b, h                                       ; $6ae6: $44
    ld e, l                                       ; $6ae7: $5d
    cp h                                          ; $6ae8: $bc
    cp a                                          ; $6ae9: $bf
    db $dd                                        ; $6aea: $dd
    ld b, l                                       ; $6aeb: $45
    ld a, c                                       ; $6aec: $79
    cp h                                          ; $6aed: $bc
    ld l, c                                       ; $6aee: $69
    db $10                                        ; $6aef: $10

jr_040_6af0:
    sbc [hl]                                      ; $6af0: $9e
    cp [hl]                                       ; $6af1: $be
    rst $28                                       ; $6af2: $ef
    ld d, e                                       ; $6af3: $53
    ld b, [hl]                                    ; $6af4: $46
    ld h, $d5                                     ; $6af5: $26 $d5
    ld [$a918], sp                                ; $6af7: $08 $18 $a9
    ld e, [hl]                                    ; $6afa: $5e
    dec sp                                        ; $6afb: $3b
    rst $20                                       ; $6afc: $e7
    ld b, a                                       ; $6afd: $47
    rst $18                                       ; $6afe: $df
    rst $30                                       ; $6aff: $f7
    pop hl                                        ; $6b00: $e1
    ld c, e                                       ; $6b01: $4b
    add c                                         ; $6b02: $81
    sub c                                         ; $6b03: $91
    ld h, a                                       ; $6b04: $67
    cpl                                           ; $6b05: $2f
    ld [hl-], a                                   ; $6b06: $32
    ld e, c                                       ; $6b07: $59
    ld h, b                                       ; $6b08: $60
    cp c                                          ; $6b09: $b9
    sbc l                                         ; $6b0a: $9d
    ld [$7619], a                                 ; $6b0b: $ea $19 $76
    cp a                                          ; $6b0e: $bf
    sub c                                         ; $6b0f: $91
    ld [c], a                                     ; $6b10: $e2
    ld h, [hl]                                    ; $6b11: $66
    ld a, a                                       ; $6b12: $7f
    pop hl                                        ; $6b13: $e1
    ld [hl], e                                    ; $6b14: $73
    db $d3                                        ; $6b15: $d3
    xor a                                         ; $6b16: $af
    ld [hl], l                                    ; $6b17: $75
    and a                                         ; $6b18: $a7
    sub h                                         ; $6b19: $94
    ei                                            ; $6b1a: $fb
    ld l, d                                       ; $6b1b: $6a
    ld a, [c]                                     ; $6b1c: $f2
    and d                                         ; $6b1d: $a2
    sbc $90                                       ; $6b1e: $de $90
    rst $18                                       ; $6b20: $df
    ei                                            ; $6b21: $fb
    or e                                          ; $6b22: $b3
    ret c                                         ; $6b23: $d8

    sub h                                         ; $6b24: $94
    ld [hl], d                                    ; $6b25: $72
    push de                                       ; $6b26: $d5
    rst $00                                       ; $6b27: $c7
    ld a, l                                       ; $6b28: $7d
    dec b                                         ; $6b29: $05
    ei                                            ; $6b2a: $fb
    add sp, -$09                                  ; $6b2b: $e8 $f7
    adc c                                         ; $6b2d: $89
    ld a, d                                       ; $6b2e: $7a

jr_040_6b2f:
    ld a, [hl]                                    ; $6b2f: $7e
    ld e, l                                       ; $6b30: $5d
    jp z, Jump_000_3269                           ; $6b31: $ca $69 $32

    add [hl]                                      ; $6b34: $86
    ld e, d                                       ; $6b35: $5a
    dec hl                                        ; $6b36: $2b
    ld l, l                                       ; $6b37: $6d
    ld hl, sp+$4f                                 ; $6b38: $f8 $4f
    rla                                           ; $6b3a: $17
    dec [hl]                                      ; $6b3b: $35
    ld a, d                                       ; $6b3c: $7a
    db $fd                                        ; $6b3d: $fd
    ld a, l                                       ; $6b3e: $7d
    dec [hl]                                      ; $6b3f: $35
    add hl, hl                                    ; $6b40: $29
    ld a, d                                       ; $6b41: $7a
    dec sp                                        ; $6b42: $3b
    db $ed                                        ; $6b43: $ed
    call $9f5d                                    ; $6b44: $cd $5d $9f
    jp c, $466f                                   ; $6b47: $da $6f $46

    ld b, b                                       ; $6b4a: $40
    rla                                           ; $6b4b: $17
    jr c, jr_040_6b85                             ; $6b4c: $38 $37

    cp c                                          ; $6b4e: $b9
    dec e                                         ; $6b4f: $1d

Jump_040_6b50:
    and [hl]                                      ; $6b50: $a6
    inc de                                        ; $6b51: $13
    dec b                                         ; $6b52: $05
    ld a, c                                       ; $6b53: $79
    sbc e                                         ; $6b54: $9b
    jr nz, @-$23                                  ; $6b55: $20 $db

    inc bc                                        ; $6b57: $03
    dec de                                        ; $6b58: $1b
    ld [c], a                                     ; $6b59: $e2
    ld h, $ea                                     ; $6b5a: $26 $ea
    ld [c], a                                     ; $6b5c: $e2
    xor [hl]                                      ; $6b5d: $ae
    cp $38                                        ; $6b5e: $fe $38
    ccf                                           ; $6b60: $3f
    jp nz, Jump_000_0297                          ; $6b61: $c2 $97 $02

    inc hl                                        ; $6b64: $23
    pop de                                        ; $6b65: $d1
    rst $00                                       ; $6b66: $c7
    ld [hl], e                                    ; $6b67: $73
    xor d                                         ; $6b68: $aa
    dec b                                         ; $6b69: $05
    or $61                                        ; $6b6a: $f6 $61
    jp z, $f13c                                   ; $6b6c: $ca $3c $f1

    and c                                         ; $6b6f: $a1
    ret c                                         ; $6b70: $d8

    ld a, e                                       ; $6b71: $7b
    ld [c], a                                     ; $6b72: $e2
    db $fc                                        ; $6b73: $fc
    adc b                                         ; $6b74: $88
    di                                            ; $6b75: $f3
    xor b                                         ; $6b76: $a8
    sub c                                         ; $6b77: $91
    ld b, d                                       ; $6b78: $42
    rst $30                                       ; $6b79: $f7
    cp $ec                                        ; $6b7a: $fe $ec
    dec hl                                        ; $6b7c: $2b
    db $fc                                        ; $6b7d: $fc
    ld a, l                                       ; $6b7e: $7d
    jp c, $bc9e                                   ; $6b7f: $da $9e $bc

    jr z, jr_040_6b2f                             ; $6b82: $28 $ab

    ccf                                           ; $6b84: $3f

jr_040_6b85:
    sbc a                                         ; $6b85: $9f
    push bc                                       ; $6b86: $c5
    jr nz, jr_040_6b93                            ; $6b87: $20 $0a

    add [hl]                                      ; $6b89: $86
    call c, $c74e                                 ; $6b8a: $dc $4e $c7
    or h                                          ; $6b8d: $b4
    ld d, c                                       ; $6b8e: $51
    rst $18                                       ; $6b8f: $df
    cp a                                          ; $6b90: $bf
    ld b, [hl]                                    ; $6b91: $46
    dec a                                         ; $6b92: $3d

jr_040_6b93:
    and a                                         ; $6b93: $a7
    ld a, h                                       ; $6b94: $7c
    sub b                                         ; $6b95: $90
    ld h, l                                       ; $6b96: $65
    ld l, $7c                                     ; $6b97: $2e $7c
    or c                                          ; $6b99: $b1
    rst $10                                       ; $6b9a: $d7
    or h                                          ; $6b9b: $b4
    and e                                         ; $6b9c: $a3
    and d                                         ; $6b9d: $a2
    pop bc                                        ; $6b9e: $c1
    ld [$ba8f], a                                 ; $6b9f: $ea $8f $ba
    ld a, b                                       ; $6ba2: $78
    ld l, l                                       ; $6ba3: $6d
    add h                                         ; $6ba4: $84
    sub c                                         ; $6ba5: $91
    rst $18                                       ; $6ba6: $df
    ei                                            ; $6ba7: $fb
    db $d3                                        ; $6ba8: $d3
    sub [hl]                                      ; $6ba9: $96
    sbc l                                         ; $6baa: $9d
    ld l, b                                       ; $6bab: $68
    jp $afdc                                      ; $6bac: $c3 $dc $af


    sbc [hl]                                      ; $6baf: $9e
    ld d, e                                       ; $6bb0: $53
    inc a                                         ; $6bb1: $3c
    ld l, d                                       ; $6bb2: $6a
    db $e4                                        ; $6bb3: $e4
    halt                                          ; $6bb4: $76
    ld a, [hl-]                                   ; $6bb5: $3a
    and [hl]                                      ; $6bb6: $a6
    adc l                                         ; $6bb7: $8d
    ld a, [$35fe]                                 ; $6bb8: $fa $fe $35
    ld [$e539], a                                 ; $6bbb: $ea $39 $e5
    ld l, e                                       ; $6bbe: $6b
    xor l                                         ; $6bbf: $ad
    dec e                                         ; $6bc0: $1d
    ld d, d                                       ; $6bc1: $52
    inc d                                         ; $6bc2: $14
    sbc [hl]                                      ; $6bc3: $9e
    ret z                                         ; $6bc4: $c8

    ld c, b                                       ; $6bc5: $48
    jr @-$25                                      ; $6bc6: $18 $d9

    sub e                                         ; $6bc8: $93
    ld h, l                                       ; $6bc9: $65
    ld c, d                                       ; $6bca: $4a
    sbc c                                         ; $6bcb: $99
    xor b                                         ; $6bcc: $a8
    inc sp                                        ; $6bcd: $33
    db $f4                                        ; $6bce: $f4
    ld l, c                                       ; $6bcf: $69
    di                                            ; $6bd0: $f3
    sbc l                                         ; $6bd1: $9d
    add e                                         ; $6bd2: $83
    jr z, jr_040_6c19                             ; $6bd3: $28 $44

    ld e, l                                       ; $6bd5: $5d
    ld l, d                                       ; $6bd6: $6a
    adc a                                         ; $6bd7: $8f
    sub $dd                                       ; $6bd8: $d6 $dd
    dec de                                        ; $6bda: $1b
    sub a                                         ; $6bdb: $97
    ld a, $9e                                     ; $6bdc: $3e $9e
    rla                                           ; $6bde: $17
    ld [de], a                                    ; $6bdf: $12
    ld [$9abe], a                                 ; $6be0: $ea $be $9a
    ld a, b                                       ; $6be3: $78
    jp hl                                         ; $6be4: $e9


    ret c                                         ; $6be5: $d8

    jp hl                                         ; $6be6: $e9


    ld d, d                                       ; $6be7: $52
    ei                                            ; $6be8: $fb
    call $f408                                    ; $6be9: $cd $08 $f4
    dec hl                                        ; $6bec: $2b
    ld l, l                                       ; $6bed: $6d
    reti                                          ; $6bee: $d9


    inc de                                        ; $6bef: $13
    rrca                                          ; $6bf0: $0f
    ld e, c                                       ; $6bf1: $59
    ld h, b                                       ; $6bf2: $60
    reti                                          ; $6bf3: $d9


    rra                                           ; $6bf4: $1f
    ld a, [c]                                     ; $6bf5: $f2
    jp z, $f7f1                                   ; $6bf6: $ca $f1 $f7

    dec hl                                        ; $6bf9: $2b
    dec e                                         ; $6bfa: $1d
    adc a                                         ; $6bfb: $8f
    ret                                           ; $6bfc: $c9


    push hl                                       ; $6bfd: $e5
    jp $e436                                      ; $6bfe: $c3 $36 $e4


    sbc e                                         ; $6c01: $9b
    cp e                                          ; $6c02: $bb
    inc l                                         ; $6c03: $2c
    add [hl]                                      ; $6c04: $86
    jp nz, $afd3                                  ; $6c05: $c2 $d3 $af

    db $ed                                        ; $6c08: $ed
    ld a, l                                       ; $6c09: $7d
    sub [hl]                                      ; $6c0a: $96
    ld sp, $d4fe                                  ; $6c0b: $31 $fe $d4
    adc b                                         ; $6c0e: $88
    ld a, [$50f8]                                 ; $6c0f: $fa $f8 $50
    db $ec                                        ; $6c12: $ec
    db $fd                                        ; $6c13: $fd
    ld e, c                                       ; $6c14: $59
    sbc $18                                       ; $6c15: $de $18
    cp d                                          ; $6c17: $ba
    sub h                                         ; $6c18: $94

jr_040_6c19:
    db $d3                                        ; $6c19: $d3
    ld h, h                                       ; $6c1a: $64
    inc c                                         ; $6c1b: $0c
    db $fd                                        ; $6c1c: $fd
    ld a, [bc]                                    ; $6c1d: $0a
    cp [hl]                                       ; $6c1e: $be
    ld a, h                                       ; $6c1f: $7c
    ld e, a                                       ; $6c20: $5f
    ld c, l                                       ; $6c21: $4d
    ld d, $58                                     ; $6c22: $16 $58
    sbc h                                         ; $6c24: $9c

jr_040_6c25:
    rst $38                                       ; $6c25: $ff
    xor b                                         ; $6c26: $a8
    add d                                         ; $6c27: $82
    ld hl, $2c0b                                  ; $6c28: $21 $0b $2c
    adc e                                         ; $6c2b: $8b
    cp l                                          ; $6c2c: $bd
    db $10                                        ; $6c2d: $10
    ld b, a                                       ; $6c2e: $47
    sub a                                         ; $6c2f: $97
    ld [hl], d                                    ; $6c30: $72
    sbc d                                         ; $6c31: $9a
    adc h                                         ; $6c32: $8c
    and c                                         ; $6c33: $a1
    ld c, a                                       ; $6c34: $4f
    sbc l                                         ; $6c35: $9d
    sub c                                         ; $6c36: $91
    jr c, @-$7b                                   ; $6c37: $38 $83

    sbc d                                         ; $6c39: $9a
    jr c, jr_040_6c7b                             ; $6c3a: $38 $3f

    ld b, d                                       ; $6c3c: $42
    adc [hl]                                      ; $6c3d: $8e
    or [hl]                                       ; $6c3e: $b6
    rst $28                                       ; $6c3f: $ef
    and e                                         ; $6c40: $a3
    pop de                                        ; $6c41: $d1
    scf                                           ; $6c42: $37
    push af                                       ; $6c43: $f5
    and $2e                                       ; $6c44: $e6 $2e
    dec d                                         ; $6c46: $15
    add h                                         ; $6c47: $84
    dec c                                         ; $6c48: $0d
    xor c                                         ; $6c49: $a9
    ld e, [hl]                                    ; $6c4a: $5e
    or h                                          ; $6c4b: $b4
    ei                                            ; $6c4c: $fb
    ld l, d                                       ; $6c4d: $6a
    ld a, [$6d15]                                 ; $6c4e: $fa $15 $6d
    reti                                          ; $6c51: $d9


    inc de                                        ; $6c52: $13
    rrca                                          ; $6c53: $0f
    ld e, c                                       ; $6c54: $59
    ld h, b                                       ; $6c55: $60
    ld a, c                                       ; $6c56: $79
    ld [de], a                                    ; $6c57: $12
    sub [hl]                                      ; $6c58: $96
    ld [c], a                                     ; $6c59: $e2
    or b                                          ; $6c5a: $b0
    ld a, c                                       ; $6c5b: $79
    or d                                          ; $6c5c: $b2
    ccf                                           ; $6c5d: $3f
    ld a, [$f717]                                 ; $6c5e: $fa $17 $f7
    ld l, c                                       ; $6c61: $69
    bit 1, [hl]                                   ; $6c62: $cb $4e
    or h                                          ; $6c64: $b4
    ld h, c                                       ; $6c65: $61
    xor $57                                       ; $6c66: $ee $57
    xor l                                         ; $6c68: $ad
    ld b, c                                       ; $6c69: $41
    ret nc                                        ; $6c6a: $d0

    xor a                                         ; $6c6b: $af
    cp [hl]                                       ; $6c6c: $be
    cp a                                          ; $6c6d: $bf
    ld c, c                                       ; $6c6e: $49
    db $f4                                        ; $6c6f: $f4
    dec hl                                        ; $6c70: $2b
    ld l, l                                       ; $6c71: $6d
    reti                                          ; $6c72: $d9


    inc de                                        ; $6c73: $13
    rrca                                          ; $6c74: $0f
    db $fd                                        ; $6c75: $fd
    ld a, [bc]                                    ; $6c76: $0a
    ld l, l                                       ; $6c77: $6d
    ld b, a                                       ; $6c78: $47
    and b                                         ; $6c79: $a0
    dec c                                         ; $6c7a: $0d

jr_040_6c7b:
    pop af                                        ; $6c7b: $f1
    ld h, d                                       ; $6c7c: $62
    rst $20                                       ; $6c7d: $e7
    and [hl]                                      ; $6c7e: $a6
    ld e, d                                       ; $6c7f: $5a
    inc c                                         ; $6c80: $0c
    or $22                                        ; $6c81: $f6 $22
    inc de                                        ; $6c83: $13
    ld l, l                                       ; $6c84: $6d
    ld e, a                                       ; $6c85: $5f
    sbc $f8                                       ; $6c86: $de $f8
    call c, $8bec                                 ; $6c88: $dc $ec $8b
    di                                            ; $6c8b: $f3
    inc hl                                        ; $6c8c: $23
    ld a, h                                       ; $6c8d: $7c
    pop af                                        ; $6c8e: $f1
    cp a                                          ; $6c8f: $bf
    ret z                                         ; $6c90: $c8

    add h                                         ; $6c91: $84
    add h                                         ; $6c92: $84
    jr z, @-$34                                   ; $6c93: $28 $ca

    db $d3                                        ; $6c95: $d3
    rst $30                                       ; $6c96: $f7
    ld a, l                                       ; $6c97: $7d
    ld a, $54                                     ; $6c98: $3e $54
    or d                                          ; $6c9a: $b2
    jr jr_040_6c25                                ; $6c9b: $18 $88

    call nz, $89c9                                ; $6c9d: $c4 $c9 $89
    rla                                           ; $6ca0: $17
    halt                                          ; $6ca1: $76
    ld h, e                                       ; $6ca2: $63
    ret nc                                        ; $6ca3: $d0

    push bc                                       ; $6ca4: $c5
    ld sp, hl                                     ; $6ca5: $f9
    rst $28                                       ; $6ca6: $ef
    db $ed                                        ; $6ca7: $ed
    dec hl                                        ; $6ca8: $2b
    ld [$5fa3], sp                                ; $6ca9: $08 $a3 $5f
    ld bc, $b8be                                  ; $6cac: $01 $be $b8
    inc l                                         ; $6caf: $2c
    ld [hl], $8b                                  ; $6cb0: $36 $8b
    db $dd                                        ; $6cb2: $dd
    ld h, h                                       ; $6cb3: $64
    db $d3                                        ; $6cb4: $d3
    xor e                                         ; $6cb5: $ab
    add hl, de                                    ; $6cb6: $19
    rst $08                                       ; $6cb7: $cf
    sbc e                                         ; $6cb8: $9b
    ld a, [de]                                    ; $6cb9: $1a
    cp d                                          ; $6cba: $ba
    inc d                                         ; $6cbb: $14
    ld e, h                                       ; $6cbc: $5c
    ld d, $9b                                     ; $6cbd: $16 $9b
    push bc                                       ; $6cbf: $c5
    ld l, [hl]                                    ; $6cc0: $6e
    jp nz, Jump_040_66b4                          ; $6cc1: $c2 $b4 $66

    ld a, [hl-]                                   ; $6cc4: $3a
    dec e                                         ; $6cc5: $1d
    ld l, l                                       ; $6cc6: $6d
    rst $18                                       ; $6cc7: $df
    ld b, h                                       ; $6cc8: $44
    sbc l                                         ; $6cc9: $9d
    ld b, c                                       ; $6cca: $41
    sub a                                         ; $6ccb: $97
    add d                                         ; $6ccc: $82
    ld c, e                                       ; $6ccd: $4b
    db $ed                                        ; $6cce: $ed
    scf                                           ; $6ccf: $37
    inc hl                                        ; $6cd0: $23
    sub b                                         ; $6cd1: $90
    cp d                                          ; $6cd2: $ba
    jp $ab0c                                      ; $6cd3: $c3 $0c $ab


    cp c                                          ; $6cd6: $b9
    ld [bc], a                                    ; $6cd7: $02
    ld l, l                                       ; $6cd8: $6d
    cp $e5                                        ; $6cd9: $fe $e5
    sbc c                                         ; $6cdb: $99
    ld hl, $1bc4                                  ; $6cdc: $21 $c4 $1b
    ld b, c                                       ; $6cdf: $41
    cp $42                                        ; $6ce0: $fe $42
    sbc [hl]                                      ; $6ce2: $9e
    sbc e                                         ; $6ce3: $9b
    ld a, l                                       ; $6ce4: $7d
    reti                                          ; $6ce5: $d9


    rst $08                                       ; $6ce6: $cf
    or b                                          ; $6ce7: $b0
    rst $18                                       ; $6ce8: $df
    rst $10                                       ; $6ce9: $d7
    rst $30                                       ; $6cea: $f7
    ld a, l                                       ; $6ceb: $7d
    call c, $8ca5                                 ; $6cec: $dc $a5 $8c

jr_040_6cef:
    ld c, h                                       ; $6cef: $4c
    inc d                                         ; $6cf0: $14
    ld l, $3c                                     ; $6cf1: $2e $3c
    rlc l                                         ; $6cf3: $cb $05
    ld [hl-], a                                   ; $6cf5: $32
    ld d, [hl]                                    ; $6cf6: $56
    ld e, l                                       ; $6cf7: $5d
    cp a                                          ; $6cf8: $bf
    ld [bc], a                                    ; $6cf9: $02
    ld [hl], l                                    ; $6cfa: $75
    ld b, [hl]                                    ; $6cfb: $46
    ld [c], a                                     ; $6cfc: $e2
    and l                                         ; $6cfd: $a5
    sbc d                                         ; $6cfe: $9a
    halt                                          ; $6cff: $76
    add [hl]                                      ; $6d00: $86
    xor b                                         ; $6d01: $a8
    rrca                                          ; $6d02: $0f
    ld d, e                                       ; $6d03: $53
    ld h, [hl]                                    ; $6d04: $66
    ld h, h                                       ; $6d05: $64
    inc hl                                        ; $6d06: $23
    adc $f0                                       ; $6d07: $ce $f0
    ld c, h                                       ; $6d09: $4c
    dec c                                         ; $6d0a: $0d
    ld [hl], c                                    ; $6d0b: $71
    ld a, [hl]                                    ; $6d0c: $7e
    db $e4                                        ; $6d0d: $e4
    call nz, $b08d                                ; $6d0e: $c4 $8d $b0
    ld e, l                                       ; $6d11: $5d
    sbc a                                         ; $6d12: $9f
    ld a, [hl-]                                   ; $6d13: $3a
    inc hl                                        ; $6d14: $23
    cp c                                          ; $6d15: $b9
    ld l, d                                       ; $6d16: $6a
    ld a, c                                       ; $6d17: $79
    add e                                         ; $6d18: $83
    db $fd                                        ; $6d19: $fd
    push hl                                       ; $6d1a: $e5
    ld d, e                                       ; $6d1b: $53
    call c, $f788                                 ; $6d1c: $dc $88 $f7
    inc [hl]                                      ; $6d1f: $34
    dec c                                         ; $6d20: $0d
    add [hl]                                      ; $6d21: $86
    ld hl, sp+$50                                 ; $6d22: $f8 $50
    db $ec                                        ; $6d24: $ec
    adc l                                         ; $6d25: $8d
    inc l                                         ; $6d26: $2c
    rst $10                                       ; $6d27: $d7
    ld b, b                                       ; $6d28: $40
    sub [hl]                                      ; $6d29: $96
    ld h, c                                       ; $6d2a: $61
    ld [$d45f], sp                                ; $6d2b: $08 $5f $d4
    inc l                                         ; $6d2e: $2c
    and e                                         ; $6d2f: $a3
    ld c, e                                       ; $6d30: $4b
    ld b, c                                       ; $6d31: $41
    ld h, h                                       ; $6d32: $64
    inc h                                         ; $6d33: $24
    ld a, [$be67]                                 ; $6d34: $fa $67 $be
    ld hl, sp+$50                                 ; $6d37: $f8 $50
    db $ec                                        ; $6d39: $ec
    adc l                                         ; $6d3a: $8d
    inc l                                         ; $6d3b: $2c
    rst $10                                       ; $6d3c: $d7
    ld b, b                                       ; $6d3d: $40
    inc d                                         ; $6d3e: $14
    db $f4                                        ; $6d3f: $f4
    or e                                          ; $6d40: $b3
    cpl                                           ; $6d41: $2f
    xor a                                         ; $6d42: $af
    ld d, b                                       ; $6d43: $50
    jp z, $2bf4                                   ; $6d44: $ca $f4 $2b

    xor l                                         ; $6d47: $ad
    rst $18                                       ; $6d48: $df
    ld l, e                                       ; $6d49: $6b
    inc hl                                        ; $6d4a: $23
    ld l, c                                       ; $6d4b: $69
    ld [hl], l                                    ; $6d4c: $75
    ld l, a                                       ; $6d4d: $6f
    db $10                                        ; $6d4e: $10
    ret z                                         ; $6d4f: $c8

    ld b, d                                       ; $6d50: $42
    rst $30                                       ; $6d51: $f7
    and [hl]                                      ; $6d52: $a6
    ei                                            ; $6d53: $fb
    and e                                         ; $6d54: $a3
    ld l, $e3                                     ; $6d55: $2e $e3
    call c, $1b97                                 ; $6d57: $dc $97 $1b
    cp c                                          ; $6d5a: $b9
    cp [hl]                                       ; $6d5b: $be
    rst $28                                       ; $6d5c: $ef
    ld d, e                                       ; $6d5d: $53
    inc hl                                        ; $6d5e: $23
    push de                                       ; $6d5f: $d5
    ld l, h                                       ; $6d60: $6c
    sbc [hl]                                      ; $6d61: $9e
    ld a, b                                       ; $6d62: $78
    rst $18                                       ; $6d63: $df
    db $dd                                        ; $6d64: $dd
    ld b, [hl]                                    ; $6d65: $46
    jp z, Jump_040_5102                           ; $6d66: $ca $02 $51

    jr nc, jr_040_6cef                            ; $6d69: $30 $84

    ld l, l                                       ; $6d6b: $6d
    sub [hl]                                      ; $6d6c: $96
    ld h, l                                       ; $6d6d: $65
    ld a, [$be15]                                 ; $6d6e: $fa $15 $be
    ld l, [hl]                                    ; $6d71: $6e
    call nz, $9a7b                                ; $6d72: $c4 $7b $9a
    halt                                          ; $6d75: $76
    cp c                                          ; $6d76: $b9
    ld d, h                                       ; $6d77: $54
    ld d, e                                       ; $6d78: $53
    ret c                                         ; $6d79: $d8

    ld l, $cb                                     ; $6d7a: $2e $cb
    dec [hl]                                      ; $6d7c: $35
    db $10                                        ; $6d7d: $10
    dec b                                         ; $6d7e: $05
    db $fd                                        ; $6d7f: $fd
    db $ec                                        ; $6d80: $ec
    sra e                                         ; $6d81: $cb $2b
    sub h                                         ; $6d83: $94
    ld [hl-], a                                   ; $6d84: $32
    cp d                                          ; $6d85: $ba
    cp b                                          ; $6d86: $b8
    add hl, hl                                    ; $6d87: $29
    push af                                       ; $6d88: $f5
    and l                                         ; $6d89: $a5
    cp h                                          ; $6d8a: $bc
    db $fd                                        ; $6d8b: $fd
    push hl                                       ; $6d8c: $e5
    inc h                                         ; $6d8d: $24
    sbc d                                         ; $6d8e: $9a
    cp l                                          ; $6d8f: $bd
    sbc d                                         ; $6d90: $9a
    xor b                                         ; $6d91: $a8
    adc e                                         ; $6d92: $8b
    cp $99                                        ; $6d93: $fe $99
    ld h, c                                       ; $6d95: $61
    adc b                                         ; $6d96: $88
    rrca                                          ; $6d97: $0f
    push bc                                       ; $6d98: $c5
    sbc $97                                       ; $6d99: $de $97
    push hl                                       ; $6d9b: $e5
    ld a, [de]                                    ; $6d9c: $1a
    adc b                                         ; $6d9d: $88
    ld [hl], a                                    ; $6d9e: $77
    adc h                                         ; $6d9f: $8c
    cpl                                           ; $6da0: $2f
    ld l, d                                       ; $6da1: $6a
    sub [hl]                                      ; $6da2: $96
    jp hl                                         ; $6da3: $e9


    ld d, a                                       ; $6da4: $57
    cp [hl]                                       ; $6da5: $be
    ld [$bc5f], sp                                ; $6da6: $08 $5f $bc
    ld a, a                                       ; $6da9: $7f
    xor c                                         ; $6daa: $a9
    ld a, [hl]                                    ; $6dab: $7e
    inc hl                                        ; $6dac: $23
    rra                                           ; $6dad: $1f
    ld a, [hl+]                                   ; $6dae: $2a
    ld e, c                                       ; $6daf: $59
    ld c, $0a                                     ; $6db0: $0e $0a
    cp d                                          ; $6db2: $ba
    ld c, h                                       ; $6db3: $4c
    ret z                                         ; $6db4: $c8

    add e                                         ; $6db5: $83
    ld e, h                                       ; $6db6: $5c
    sbc [hl]                                      ; $6db7: $9e
    ld sp, hl                                     ; $6db8: $f9
    sbc l                                         ; $6db9: $9d
    ld a, e                                       ; $6dba: $7b
    sbc [hl]                                      ; $6dbb: $9e
    xor b                                         ; $6dbc: $a8
    rrca                                          ; $6dbd: $0f
    sub l                                         ; $6dbe: $95
    ld l, b                                       ; $6dbf: $68
    ld [hl], $a5                                  ; $6dc0: $36 $a5
    ld c, h                                       ; $6dc2: $4c
    ld a, b                                       ; $6dc3: $78
    sub [hl]                                      ; $6dc4: $96
    pop de                                        ; $6dc5: $d1
    add l                                         ; $6dc6: $85
    cp h                                          ; $6dc7: $bc
    ld [hl], d                                    ; $6dc8: $72
    db $fc                                        ; $6dc9: $fc
    reti                                          ; $6dca: $d9


    rra                                           ; $6dcb: $1f
    adc l                                         ; $6dcc: $8d
    cp [hl]                                       ; $6dcd: $be
    dec e                                         ; $6dce: $1d
    db $db                                        ; $6dcf: $db
    add hl, sp                                    ; $6dd0: $39
    db $f4                                        ; $6dd1: $f4
    dec hl                                        ; $6dd2: $2b
    db $ed                                        ; $6dd3: $ed
    ld a, c                                       ; $6dd4: $79
    ld a, h                                       ; $6dd5: $7c
    ld e, c                                       ; $6dd6: $59
    ret nz                                        ; $6dd7: $c0

    inc a                                         ; $6dd8: $3c
    xor c                                         ; $6dd9: $a9
    ld c, [hl]                                    ; $6dda: $4e
    db $db                                        ; $6ddb: $db
    scf                                           ; $6ddc: $37
    add [hl]                                      ; $6ddd: $86
    jr z, @+$5e                                   ; $6dde: $28 $5c

    inc b                                         ; $6de0: $04
    jp c, $ef10                                   ; $6de1: $da $10 $ef

    add l                                         ; $6de4: $85
    cpl                                           ; $6de5: $2f
    ld [$43e2], a                                 ; $6de6: $ea $e2 $43
    cpl                                           ; $6de9: $2f
    dec [hl]                                      ; $6dea: $35
    ld [c], a                                     ; $6deb: $e2
    db $fc                                        ; $6dec: $fc
    ld c, b                                       ; $6ded: $48
    add hl, de                                    ; $6dee: $19
    sbc c                                         ; $6def: $99
    jr nc, jr_040_6e57                            ; $6df0: $30 $65

    cp [hl]                                       ; $6df2: $be

jr_040_6df3:
    adc h                                         ; $6df3: $8c
    and b                                         ; $6df4: $a0
    ldh a, [$f5]                                  ; $6df5: $f0 $f5
    dec hl                                        ; $6df7: $2b
    or l                                          ; $6df8: $b5
    rst $38                                       ; $6df9: $ff
    and d                                         ; $6dfa: $a2
    ld e, l                                       ; $6dfb: $5d
    dec a                                         ; $6dfc: $3d
    ld h, c                                       ; $6dfd: $61
    dec de                                        ; $6dfe: $1b
    ld a, [c]                                     ; $6dff: $f2
    ld a, c                                       ; $6e00: $79
    ld [c], a                                     ; $6e01: $e2
    ld b, e                                       ; $6e02: $43
    ld a, a                                       ; $6e03: $7f
    dec sp                                        ; $6e04: $3b
    ccf                                           ; $6e05: $3f
    ld [hl-], a                                   ; $6e06: $32
    sbc d                                         ; $6e07: $9a
    ld b, $e6                                     ; $6e08: $06 $e6
    adc c                                         ; $6e0a: $89
    ld a, h                                       ; $6e0b: $7c
    ld [hl], c                                    ; $6e0c: $71
    ld d, e                                       ; $6e0d: $53
    ld a, b                                       ; $6e0e: $78
    ld l, d                                       ; $6e0f: $6a
    push bc                                       ; $6e10: $c5
    inc de                                        ; $6e11: $13
    ld de, $8ca4                                  ; $6e12: $11 $a4 $8c
    ld c, h                                       ; $6e15: $4c
    xor d                                         ; $6e16: $aa
    reti                                          ; $6e17: $d9


    ld a, h                                       ; $6e18: $7c
    cp d                                          ; $6e19: $ba
    sub h                                         ; $6e1a: $94
    push hl                                       ; $6e1b: $e5
    xor l                                         ; $6e1c: $ad
    ld e, h                                       ; $6e1d: $5c
    add [hl]                                      ; $6e1e: $86
    and h                                         ; $6e1f: $a4
    ld [c], a                                     ; $6e20: $e2
    ld b, e                                       ; $6e21: $43
    pop de                                        ; $6e22: $d1
    rst $00                                       ; $6e23: $c7
    rst $10                                       ; $6e24: $d7
    ld c, l                                       ; $6e25: $4d
    ld d, l                                       ; $6e26: $55
    add c                                         ; $6e27: $81
    ld a, c                                       ; $6e28: $79
    ld [c], a                                     ; $6e29: $e2
    db $fc                                        ; $6e2a: $fc
    adc b                                         ; $6e2b: $88
    jr nz, jr_040_6e9a                            ; $6e2c: $20 $6c

    ld b, e                                       ; $6e2e: $43
    jp nz, Jump_040_42fe                          ; $6e2f: $c2 $fe $42

    ld h, l                                       ; $6e32: $65
    ld a, [c]                                     ; $6e33: $f2
    ld [c], a                                     ; $6e34: $e2
    db $fc                                        ; $6e35: $fc
    adc b                                         ; $6e36: $88
    add d                                         ; $6e37: $82
    or b                                          ; $6e38: $b0
    ld c, l                                       ; $6e39: $4d
    ld a, h                                       ; $6e3a: $7c
    jr z, jr_040_6eb3                             ; $6e3b: $28 $76

    db $f4                                        ; $6e3d: $f4
    ld l, a                                       ; $6e3e: $6f
    or a                                          ; $6e3f: $b7
    pop de                                        ; $6e40: $d1
    xor a                                         ; $6e41: $af
    ld [hl], l                                    ; $6e42: $75
    sbc a                                         ; $6e43: $9f
    ld d, $c4                                     ; $6e44: $16 $c4
    rst $10                                       ; $6e46: $d7
    add hl, de                                    ; $6e47: $19
    jr nz, jr_040_6df3                            ; $6e48: $20 $a9

    dec c                                         ; $6e4a: $0d
    jp $ad0a                                      ; $6e4b: $c3 $0a $ad


    ld b, c                                       ; $6e4e: $41
    ld c, b                                       ; $6e4f: $48
    ld [$c9e5], sp                                ; $6e50: $08 $e5 $c9
    rst $28                                       ; $6e53: $ef
    db $ed                                        ; $6e54: $ed
    pop de                                        ; $6e55: $d1
    ld b, [hl]                                    ; $6e56: $46

jr_040_6e57:
    or l                                          ; $6e57: $b5
    adc h                                         ; $6e58: $8c
    db $dd                                        ; $6e59: $dd
    ld b, h                                       ; $6e5a: $44
    ld h, c                                       ; $6e5b: $61
    ld b, a                                       ; $6e5c: $47
    and e                                         ; $6e5d: $a3
    sbc $e9                                       ; $6e5e: $de $e9
    db $e3                                        ; $6e60: $e3
    jp hl                                         ; $6e61: $e9


    ld b, a                                       ; $6e62: $47
    ld e, [hl]                                    ; $6e63: $5e
    ld h, h                                       ; $6e64: $64
    ld [hl], h                                    ; $6e65: $74
    ld e, c                                       ; $6e66: $59
    ld h, b                                       ; $6e67: $60
    pop af                                        ; $6e68: $f1
    ld a, $39                                     ; $6e69: $3e $39
    add [hl]                                      ; $6e6b: $86
    ld e, d                                       ; $6e6c: $5a
    dec hl                                        ; $6e6d: $2b
    xor l                                         ; $6e6e: $ad
    adc d                                         ; $6e6f: $8a

Jump_040_6e70:
    ld c, h                                       ; $6e70: $4c
    xor l                                         ; $6e71: $ad
    or h                                          ; $6e72: $b4
    dec l                                         ; $6e73: $2d
    ld [hl], c                                    ; $6e74: $71
    ld a, [hl]                                    ; $6e75: $7e
    and h                                         ; $6e76: $a4
    ld b, b                                       ; $6e77: $40
    jp z, $5ad4                                   ; $6e78: $ca $d4 $5a

    ld bc, $7e9e                                  ; $6e7b: $01 $9e $7e
    db $e4                                        ; $6e7e: $e4
    ld b, l                                       ; $6e7f: $45
    ld h, $5e                                     ; $6e80: $26 $5e
    add e                                         ; $6e82: $83
    rrca                                          ; $6e83: $0f
    add l                                         ; $6e84: $85
    ldh a, [$e5]                                  ; $6e85: $f0 $e5
    ld d, e                                       ; $6e87: $53
    ld a, e                                       ; $6e88: $7b
    or h                                          ; $6e89: $b4
    xor $de                                       ; $6e8a: $ee $de
    cp b                                          ; $6e8c: $b8
    call nc, Call_040_5d4a                        ; $6e8d: $d4 $4a $5d
    cp e                                          ; $6e90: $bb
    ld l, d                                       ; $6e91: $6a
    ld l, d                                       ; $6e92: $6a
    push bc                                       ; $6e93: $c5
    rla                                           ; $6e94: $17
    ld l, [hl]                                    ; $6e95: $6e
    ld b, h                                       ; $6e96: $44
    ld c, l                                       ; $6e97: $4d
    xor l                                         ; $6e98: $ad
    dec d                                         ; $6e99: $15

jr_040_6e9a:
    ld [hl], l                                    ; $6e9a: $75
    ld b, [hl]                                    ; $6e9b: $46
    ld [c], a                                     ; $6e9c: $e2
    dec [hl]                                      ; $6e9d: $35
    ld hl, sp+$50                                 ; $6e9e: $f8 $50
    ld [$5e4f], sp                                ; $6ea0: $08 $4f $5e
    call c, $a7d8                                 ; $6ea3: $dc $d8 $a7
    or $68                                        ; $6ea6: $f6 $68
    db $dd                                        ; $6ea8: $dd
    cp l                                          ; $6ea9: $bd
    ld [hl], c                                    ; $6eaa: $71
    jp hl                                         ; $6eab: $e9


    ld d, a                                       ; $6eac: $57
    cp [hl]                                       ; $6ead: $be
    inc hl                                        ; $6eae: $23
    inc de                                        ; $6eaf: $13
    add l                                         ; $6eb0: $85
    ld [hl-], a                                   ; $6eb1: $32
    ei                                            ; $6eb2: $fb

jr_040_6eb3:
    ld a, c                                       ; $6eb3: $79
    ld [hl], h                                    ; $6eb4: $74
    xor c                                         ; $6eb5: $a9
    ld a, $32                                     ; $6eb6: $3e $32
    sub d                                         ; $6eb8: $92
    ld h, l                                       ; $6eb9: $65
    ld c, d                                       ; $6eba: $4a
    cp c                                          ; $6ebb: $b9
    xor a                                         ; $6ebc: $af
    ld h, $8b                                     ; $6ebd: $26 $8b
    call Call_000_3762                            ; $6ebf: $cd $62 $37
    ld hl, $0a21                                  ; $6ec2: $21 $21 $0a
    add $97                                       ; $6ec5: $c6 $97
    adc e                                         ; $6ec7: $8b
    ld c, h                                       ; $6ec8: $4c
    ld h, c                                       ; $6ec9: $61

jr_040_6eca:
    cp e                                          ; $6eca: $bb
    cp h                                          ; $6ecb: $bc
    pop af                                        ; $6ecc: $f1
    cp c                                          ; $6ecd: $b9
    reti                                          ; $6ece: $d9


    rst $10                                       ; $6ecf: $d7
    rst $00                                       ; $6ed0: $c7
    rla                                           ; $6ed1: $17
    ld hl, $9ce9                                  ; $6ed2: $21 $e9 $9c
    ld l, $0b                                     ; $6ed5: $2e $0b
    xor h                                         ; $6ed7: $ac
    ld a, [hl]                                    ; $6ed8: $7e
    ld e, l                                       ; $6ed9: $5d
    ld d, $3a                                     ; $6eda: $16 $3a
    rla                                           ; $6edc: $17
    push af                                       ; $6edd: $f5
    add [hl]                                      ; $6ede: $86
    ld d, b                                       ; $6edf: $50
    pop af                                        ; $6ee0: $f1
    jr jr_040_6eca                                ; $6ee1: $18 $e7

    db $fc                                        ; $6ee3: $fc
    rst $30                                       ; $6ee4: $f7
    db $fc                                        ; $6ee5: $fc
    add hl, sp                                    ; $6ee6: $39
    adc c                                         ; $6ee7: $89
    halt                                          ; $6ee8: $76
    ld [hl], $7d                                  ; $6ee9: $36 $7d
    ld e, d                                       ; $6eeb: $5a
    and e                                         ; $6eec: $a3
    inc hl                                        ; $6eed: $23
    rra                                           ; $6eee: $1f
    db $ed                                        ; $6eef: $ed
    add $e4                                       ; $6ef0: $c6 $e4
    ld sp, hl                                     ; $6ef2: $f9
    ei                                            ; $6ef3: $fb
    dec d                                         ; $6ef4: $15
    ld l, l                                       ; $6ef5: $6d
    sub h                                         ; $6ef6: $94
    dec hl                                        ; $6ef7: $2b
    adc h                                         ; $6ef8: $8c
    ld d, b                                       ; $6ef9: $50
    ld sp, hl                                     ; $6efa: $f9
    sub h                                         ; $6efb: $94
    reti                                          ; $6efc: $d9


    rra                                           ; $6efd: $1f
    db $fd                                        ; $6efe: $fd
    dec sp                                        ; $6eff: $3b
    rst $20                                       ; $6f00: $e7
    rlca                                          ; $6f01: $07
    di                                            ; $6f02: $f3
    ld h, a                                       ; $6f03: $67
    add c                                         ; $6f04: $81
    ld h, l                                       ; $6f05: $65
    inc [hl]                                      ; $6f06: $34
    cp c                                          ; $6f07: $b9
    ld d, h                                       ; $6f08: $54
    xor a                                         ; $6f09: $af
    ld c, l                                       ; $6f0a: $4d
    sbc a                                         ; $6f0b: $9f
    sub $87                                       ; $6f0c: $d6 $87
    inc [hl]                                      ; $6f0e: $34
    ld d, h                                       ; $6f0f: $54
    sub e                                         ; $6f10: $93
    push bc                                       ; $6f11: $c5
    add [hl]                                      ; $6f12: $86

jr_040_6f13:
    ld a, h                                       ; $6f13: $7c
    inc de                                        ; $6f14: $13
    call nz, $fe87                                ; $6f15: $c4 $87 $fe
    halt                                          ; $6f18: $76
    ld d, h                                       ; $6f19: $54
    ld e, [hl]                                    ; $6f1a: $5e
    sub a                                         ; $6f1b: $97
    push bc                                       ; $6f1c: $c5
    xor [hl]                                      ; $6f1d: $ae
    ld a, [$0ba8]                                 ; $6f1e: $fa $a8 $0b
    db $db                                        ; $6f21: $db
    sub b                                         ; $6f22: $90
    ld l, a                                       ; $6f23: $6f
    ret z                                         ; $6f24: $c8

    cp $30                                        ; $6f25: $fe $30
    db $fd                                        ; $6f27: $fd
    ld a, $6d                                     ; $6f28: $3e $6d
    rl c                                          ; $6f2a: $cb $11
    rst $28                                       ; $6f2c: $ef
    xor e                                         ; $6f2d: $ab
    adc c                                         ; $6f2e: $89
    dec de                                        ; $6f2f: $1b

jr_040_6f30:
    adc c                                         ; $6f30: $89
    rrca                                          ; $6f31: $0f
    ld b, l                                       ; $6f32: $45
    pop hl                                        ; $6f33: $e1
    rst $28                                       ; $6f34: $ef
    ld d, a                                       ; $6f35: $57
    dec l                                         ; $6f36: $2d
    rst $00                                       ; $6f37: $c7
    ld sp, hl                                     ; $6f38: $f9
    rst $28                                       ; $6f39: $ef
    ld l, l                                       ; $6f3a: $6d
    ld [c], a                                     ; $6f3b: $e2
    db $fc                                        ; $6f3c: $fc
    adc b                                         ; $6f3d: $88
    adc h                                         ; $6f3e: $8c
    and h                                         ; $6f3f: $a4
    ld b, [hl]                                    ; $6f40: $46
    ld e, [hl]                                    ; $6f41: $5e
    dec a                                         ; $6f42: $3d
    di                                            ; $6f43: $f3
    rst $20                                       ; $6f44: $e7
    jp $d3e8                                      ; $6f45: $c3 $e8 $d3


    and $58                                       ; $6f48: $e6 $58
    ld b, c                                       ; $6f4a: $41
    jp z, Jump_040_5fdb                           ; $6f4b: $ca $db $5f

    sub [hl]                                      ; $6f4e: $96
    ld l, e                                       ; $6f4f: $6b
    jr nz, jr_040_6f30                            ; $6f50: $20 $de

    ld sp, $f2a6                                  ; $6f52: $31 $a6 $f2
    inc a                                         ; $6f55: $3c
    ld [hl], c                                    ; $6f56: $71
    inc hl                                        ; $6f57: $23

jr_040_6f58:
    pop af                                        ; $6f58: $f1
    and c                                         ; $6f59: $a1
    jr z, jr_040_6f58                             ; $6f5a: $28 $fc

    db $fd                                        ; $6f5c: $fd
    ld a, [bc]                                    ; $6f5d: $0a
    xor l                                         ; $6f5e: $ad
    adc d                                         ; $6f5f: $8a
    dec de                                        ; $6f60: $1b
    ei                                            ; $6f61: $fb
    ret z                                         ; $6f62: $c8

    ld c, b                                       ; $6f63: $48
    cp h                                          ; $6f64: $bc
    ld d, h                                       ; $6f65: $54
    adc b                                         ; $6f66: $88
    scf                                           ; $6f67: $37
    ld a, [c]                                     ; $6f68: $f2
    or l                                          ; $6f69: $b5
    jp nc, $c489                                  ; $6f6a: $d2 $89 $c4

    db $ed                                        ; $6f6d: $ed
    add e                                         ; $6f6e: $83
    jr nc, jr_040_6f13                            ; $6f6f: $30 $a2

    adc $eb                                       ; $6f71: $ce $eb
    dec a                                         ; $6f73: $3d
    ld [hl], a                                    ; $6f74: $77
    dec de                                        ; $6f75: $1b
    ld a, l                                       ; $6f76: $7d
    rst $18                                       ; $6f77: $df
    rst $00                                       ; $6f78: $c7
    ld e, a                                       ; $6f79: $5f
    ld d, l                                       ; $6f7a: $55
    ld a, l                                       ; $6f7b: $7d
    rst $18                                       ; $6f7c: $df
    rst $00                                       ; $6f7d: $c7
    ccf                                           ; $6f7e: $3f
    and c                                         ; $6f7f: $a1
    ld [c], a                                     ; $6f80: $e2
    ld [hl], c                                    ; $6f81: $71
    ld a, [bc]                                    ; $6f82: $0a
    rst $18                                       ; $6f83: $df
    rst $30                                       ; $6f84: $f7
    db $fd                                        ; $6f85: $fd
    ld a, [bc]                                    ; $6f86: $0a
    xor l                                         ; $6f87: $ad
    ld [$f7f5], a                                 ; $6f88: $ea $f5 $f7
    push de                                       ; $6f8b: $d5
    add h                                         ; $6f8c: $84
    ld l, l                                       ; $6f8d: $6d
    ret z                                         ; $6f8e: $c8

    rst $20                                       ; $6f8f: $e7
    ret                                           ; $6f90: $c9


    cp $e8                                        ; $6f91: $fe $e8
    rst $18                                       ; $6f93: $df
    add hl, sp                                    ; $6f94: $39
    ccf                                           ; $6f95: $3f
    sbc b                                         ; $6f96: $98
    ccf                                           ; $6f97: $3f
    xor a                                         ; $6f98: $af
    sbc [hl]                                      ; $6f99: $9e
    ld sp, hl                                     ; $6f9a: $f9
    di                                            ; $6f9b: $f3
    ld h, c                                       ; $6f9c: $61
    add sp, $52                                   ; $6f9d: $e8 $52
    ei                                            ; $6f9f: $fb
    call $a408                                    ; $6fa0: $cd $08 $a4
    xor $30                                       ; $6fa3: $ee $30
    jp $b4fa                                      ; $6fa5: $c3 $fa $b4


    inc e                                         ; $6fa8: $1c
    ld hl, sp-$30                                 ; $6fa9: $f8 $d0
    ld e, e                                       ; $6fab: $5b
    ld e, [hl]                                    ; $6fac: $5e
    db $d3                                        ; $6fad: $d3
    xor $f9                                       ; $6fae: $ee $f9
    db $e3                                        ; $6fb0: $e3
    ld b, [hl]                                    ; $6fb1: $46
    and d                                         ; $6fb2: $a2
    db $ed                                        ; $6fb3: $ed
    res 1, c                                      ; $6fb4: $cb $89
    ld a, e                                       ; $6fb6: $7b
    ld h, c                                       ; $6fb7: $61
    sub h                                         ; $6fb8: $94
    xor e                                         ; $6fb9: $ab
    ld l, $6d                                     ; $6fba: $2e $6d
    xor $5b                                       ; $6fbc: $ee $5b
    jr nz, @+$6c                                  ; $6fbe: $20 $6a

    add d                                         ; $6fc0: $82
    ld [hl], h                                    ; $6fc1: $74
    ld a, [bc]                                    ; $6fc2: $0a
    xor e                                         ; $6fc3: $ab
    ld l, [hl]                                    ; $6fc4: $6e
    rst $28                                       ; $6fc5: $ef
    dec de                                        ; $6fc6: $1b
    ld e, d                                       ; $6fc7: $5a
    ld b, d                                       ; $6fc8: $42
    ld h, l                                       ; $6fc9: $65
    ld [hl], h                                    ; $6fca: $74
    ld [hl], c                                    ; $6fcb: $71
    ld a, [hl]                                    ; $6fcc: $7e
    add h                                         ; $6fcd: $84
    cpl                                           ; $6fce: $2f
    adc e                                         ; $6fcf: $8b
    dec c                                         ; $6fd0: $0d
    ld b, e                                       ; $6fd1: $43
    db $d3                                        ; $6fd2: $d3
    ld h, b                                       ; $6fd3: $60
    cpl                                           ; $6fd4: $2f
    ld [hl-], a                                   ; $6fd5: $32
    ld d, c                                       ; $6fd6: $51
    call nc, $185e                                ; $6fd7: $d4 $5e $18
    cp c                                          ; $6fda: $b9
    cp b                                          ; $6fdb: $b8
    xor c                                         ; $6fdc: $a9
    db $f4                                        ; $6fdd: $f4
    rst $08                                       ; $6fde: $cf
    ld a, h                                       ; $6fdf: $7c
    dec d                                         ; $6fe0: $15
    add h                                         ; $6fe1: $84
    cpl                                           ; $6fe2: $2f
    push de                                       ; $6fe3: $d5
    ld l, e                                       ; $6fe4: $6b
    rst $20                                       ; $6fe5: $e7
    xor [hl]                                      ; $6fe6: $ae
    ld e, a                                       ; $6fe7: $5f
    ld bc, $7fed                                  ; $6fe8: $01 $ed $7f
    ld h, h                                       ; $6feb: $64
    inc h                                         ; $6fec: $24
    dec d                                         ; $6fed: $15
    or d                                          ; $6fee: $b2
    ccf                                           ; $6fef: $3f
    res 2, h                                      ; $6ff0: $cb $94
    ld [hl-], a                                   ; $6ff2: $32
    ld e, c                                       ; $6ff3: $59
    ld h, b                                       ; $6ff4: $60
    dec d                                         ; $6ff5: $15
    sbc b                                         ; $6ff6: $98
    ld h, c                                       ; $6ff7: $61
    add sp, $57                                   ; $6ff8: $e8 $57
    or l                                          ; $6ffa: $b5
    ld e, a                                       ; $6ffb: $5f
    or e                                          ; $6ffc: $b3
    ld d, e                                       ; $6ffd: $53
    pop af                                        ; $6ffe: $f1
    ld a, a                                       ; $6fff: $7f
    call nc, Call_040_6595                        ; $7000: $d4 $95 $65
    ld a, [bc]                                    ; $7003: $0a
    ld c, a                                       ; $7004: $4f
    sbc h                                         ; $7005: $9c
    rra                                           ; $7006: $1f
    ld hl, $da21                                  ; $7007: $21 $21 $da
    set 4, h                                      ; $700a: $cb $e4
    sub l                                         ; $700c: $95
    add d                                         ; $700d: $82
    cp $f8                                        ; $700e: $fe $f8
    ld sp, hl                                     ; $7010: $f9
    jp nc, Jump_000_1344                          ; $7011: $d2 $44 $13

    dec l                                         ; $7014: $2d
    call nz, $dbfb                                ; $7015: $c4 $fb $db
    ld e, l                                       ; $7018: $5d
    ld a, [bc]                                    ; $7019: $0a
    db $dd                                        ; $701a: $dd
    ld h, c                                       ; $701b: $61
    ld a, [hl-]                                   ; $701c: $3a
    ld [hl], c                                    ; $701d: $71
    inc hl                                        ; $701e: $23
    inc a                                         ; $701f: $3c
    ld sp, hl                                     ; $7020: $f9
    cp l                                          ; $7021: $bd
    ccf                                           ; $7022: $3f
    ld l, l                                       ; $7023: $6d
    reti                                          ; $7024: $d9


    adc c                                         ; $7025: $89
    ld [hl], $cc                                  ; $7026: $36 $cc
    ld a, l                                       ; $7028: $7d
    jp c, $27b2                                   ; $7029: $da $b2 $27

    ld e, $b2                                     ; $702c: $1e $b2
    ret nz                                        ; $702e: $c0

    add d                                         ; $702f: $82
    ld d, d                                       ; $7030: $52
    ld h, b                                       ; $7031: $60
    ret z                                         ; $7032: $c8

    ld a, [c]                                     ; $7033: $f2
    and l                                         ; $7034: $a5
    inc a                                         ; $7035: $3c
    ld c, a                                       ; $7036: $4f
    call nc, $87c5                                ; $7037: $d4 $c5 $87
    ld e, [hl]                                    ; $703a: $5e
    rra                                           ; $703b: $1f
    rst $18                                       ; $703c: $df
    sub c                                         ; $703d: $91
    ld c, c                                       ; $703e: $49
    add hl, sp                                    ; $703f: $39
    ld b, a                                       ; $7040: $47
    ld l, l                                       ; $7041: $6d
    ld [c], a                                     ; $7042: $e2
    db $fc                                        ; $7043: $fc
    ld c, b                                       ; $7044: $48
    ld sp, hl                                     ; $7045: $f9
    push bc                                       ; $7046: $c5
    cp $e2                                        ; $7047: $fe $e2
    ld a, l                                       ; $7049: $7d
    ld b, e                                       ; $704a: $43
    db $f4                                        ; $704b: $f4
    ld [hl], h                                    ; $704c: $74
    inc h                                         ; $704d: $24
    or h                                          ; $704e: $b4
    ld c, h                                       ; $704f: $4c
    inc d                                         ; $7050: $14
    or $fe                                        ; $7051: $f6 $fe
    jr nc, @-$01                                  ; $7053: $30 $fd

    add sp, -$21                                  ; $7055: $e8 $df
    add hl, sp                                    ; $7057: $39
    ccf                                           ; $7058: $3f
    sbc b                                         ; $7059: $98
    cp a                                          ; $705a: $bf
    ld e, a                                       ; $705b: $5f
    ld bc, $f81d                                  ; $705c: $01 $1d $f8
    inc hl                                        ; $705f: $23
    and e                                         ; $7060: $a3
    ld c, e                                       ; $7061: $4b
    db $ed                                        ; $7062: $ed
    scf                                           ; $7063: $37
    inc hl                                        ; $7064: $23
    sub b                                         ; $7065: $90
    cp d                                          ; $7066: $ba
    jp $d30c                                      ; $7067: $c3 $0c $d3


    ld b, l                                       ; $706a: $45
    or e                                          ; $706b: $b3
    daa                                           ; $706c: $27
    ld e, $f2                                     ; $706d: $1e $f2
    ld h, c                                       ; $706f: $61
    db $f4                                        ; $7070: $f4
    dec hl                                        ; $7071: $2b
    ld [hl], l                                    ; $7072: $75
    ld l, l                                       ; $7073: $6d
    ret z                                         ; $7074: $c8

    adc a                                         ; $7075: $8f
    rrca                                          ; $7076: $0f
    ld b, l                                       ; $7077: $45
    pop hl                                        ; $7078: $e1
    ld l, a                                       ; $7079: $6f
    ld sp, $0a6e                                  ; $707a: $31 $6e $0a
    dec de                                        ; $707d: $1b
    dec a                                         ; $707e: $3d
    cp $9c                                        ; $707f: $fe $9c
    db $e4                                        ; $7081: $e4
    dec [hl]                                      ; $7082: $35
    dec sp                                        ; $7083: $3b
    rst $28                                       ; $7084: $ef
    ld l, b                                       ; $7085: $68
    ei                                            ; $7086: $fb
    ld h, $6e                                     ; $7087: $26 $6e
    inc h                                         ; $7089: $24
    ld d, h                                       ; $708a: $54
    ld [hl+], a                                   ; $708b: $22
    call nc, Call_040_4c6d                        ; $708c: $d4 $6d $4c
    call nc, Call_000_3965                        ; $708f: $d4 $65 $39
    ld e, d                                       ; $7092: $5a
    ld hl, $e2ea                                  ; $7093: $21 $ea $e2
    add l                                         ; $7096: $85
    sbc h                                         ; $7097: $9c
    ld b, e                                       ; $7098: $43
    cp a                                          ; $7099: $bf
    ld [bc], a                                    ; $709a: $02
    cp [hl]                                       ; $709b: $be
    cp a                                          ; $709c: $bf
    ld c, c                                       ; $709d: $49
    add sp, -$5e                                  ; $709e: $e8 $a2
    db $dd                                        ; $70a0: $dd
    sub b                                         ; $70a1: $90
    cpl                                           ; $70a2: $2f
    jp Jump_040_7d3c                              ; $70a3: $c3 $3c $7d


    ld a, h                                       ; $70a6: $7c
    ld [hl], c                                    ; $70a7: $71
    and c                                         ; $70a8: $a1
    ld [hl-], a                                   ; $70a9: $32
    add hl, hl                                    ; $70aa: $29
    ld c, h                                       ; $70ab: $4c
    dec d                                         ; $70ac: $15
    add h                                         ; $70ad: $84
    ld de, $9d85                                  ; $70ae: $11 $85 $9d
    push bc                                       ; $70b1: $c5
    xor [hl]                                      ; $70b2: $ae
    sbc d                                         ; $70b3: $9a
    cp h                                          ; $70b4: $bc
    ret z                                         ; $70b5: $c8

    call nc, $015a                                ; $70b6: $d4 $5a $01
    db $ed                                        ; $70b9: $ed
    ld c, l                                       ; $70ba: $4d
    jp z, $fd5b                                   ; $70bb: $ca $5b $fd

    ld e, c                                       ; $70be: $59
    inc c                                         ; $70bf: $0c
    add l                                         ; $70c0: $85
    and a                                         ; $70c1: $a7
    ld e, a                                       ; $70c2: $5f
    ld bc, $309e                                  ; $70c3: $01 $9e $30
    cp $0a                                        ; $70c6: $fe $0a
    jp nz, $f948                                  ; $70c8: $c2 $48 $f9

    push bc                                       ; $70cb: $c5
    cp $e2                                        ; $70cc: $fe $e2
    db $fc                                        ; $70ce: $fc
    adc b                                         ; $70cf: $88
    adc h                                         ; $70d0: $8c
    ld h, h                                       ; $70d1: $64
    sbc c                                         ; $70d2: $99
    ld d, d                                       ; $70d3: $52
    ld h, $24                                     ; $70d4: $26 $24
    ld b, h                                       ; $70d6: $44
    pop bc                                        ; $70d7: $c1
    ld hl, sp+$72                                 ; $70d8: $f8 $72
    xor c                                         ; $70da: $a9
    ld c, $97                                     ; $70db: $0e $97
    scf                                           ; $70dd: $37
    ld a, $37                                     ; $70de: $3e $37
    ei                                            ; $70e0: $fb
    ld a, [$22f8]                                 ; $70e1: $fa $f8 $22
    inc h                                         ; $70e4: $24
    sbc l                                         ; $70e5: $9d
    db $d3                                        ; $70e6: $d3
    ld h, l                                       ; $70e7: $65
    add c                                         ; $70e8: $81
    push de                                       ; $70e9: $d5
    xor a                                         ; $70ea: $af
    bit 0, d                                      ; $70eb: $cb $42
    rst $20                                       ; $70ed: $e7
    and d                                         ; $70ee: $a2
    sbc $10                                       ; $70ef: $de $10
    ld a, [hl+]                                   ; $70f1: $2a
    ld e, $e3                                     ; $70f2: $1e $e3
    sbc h                                         ; $70f4: $9c
    rst $38                                       ; $70f5: $ff
    sbc [hl]                                      ; $70f6: $9e
    ccf                                           ; $70f7: $3f
    daa                                           ; $70f8: $27
    pop de                                        ; $70f9: $d1
    adc $a6                                       ; $70fa: $ce $a6
    ld e, a                                       ; $70fc: $5f
    ld bc, $faad                                  ; $70fd: $01 $ad $fa
    ld [hl], l                                    ; $7100: $75
    and c                                         ; $7101: $a1
    ld [de], a                                    ; $7102: $12
    db $ed                                        ; $7103: $ed
    add [hl]                                      ; $7104: $86
    ld a, h                                       ; $7105: $7c
    ld b, c                                       ; $7106: $41
    adc d                                         ; $7107: $8a
    sbc e                                         ; $7108: $9b
    db $fd                                        ; $7109: $fd
    ld [hl], $7d                                  ; $710a: $36 $7d
    ld a, h                                       ; $710c: $7c
    rrca                                          ; $710d: $0f
    adc h                                         ; $710e: $8c
    inc d                                         ; $710f: $14
    ld d, h                                       ; $7110: $54
    adc e                                         ; $7111: $8b
    ld hl, $3d17                                  ; $7112: $21 $17 $3d
    add h                                         ; $7115: $84
    add h                                         ; $7116: $84
    ld d, b                                       ; $7117: $50
    cp [hl]                                       ; $7118: $be
    db $fc                                        ; $7119: $fc
    ld c, [hl]                                    ; $711a: $4e
    ld e, e                                       ; $711b: $5b
    cp $b3                                        ; $711c: $fe $b3
    db $d3                                        ; $711e: $d3
    add $a6                                       ; $711f: $c6 $a6
    ld c, a                                       ; $7121: $4f
    db $ed                                        ; $7122: $ed
    pop de                                        ; $7123: $d1
    cp d                                          ; $7124: $ba
    ld a, e                                       ; $7125: $7b
    db $e3                                        ; $7126: $e3
    and d                                         ; $7127: $a2
    bit 4, d                                      ; $7128: $cb $62
    ld d, a                                       ; $712a: $57
    ld c, l                                       ; $712b: $4d
    ld e, [hl]                                    ; $712c: $5e
    ld h, h                                       ; $712d: $64
    ld l, d                                       ; $712e: $6a
    xor l                                         ; $712f: $ad
    cp [hl]                                       ; $7130: $be
    push af                                       ; $7131: $f5
    push af                                       ; $7132: $f5
    dec hl                                        ; $7133: $2b
    xor l                                         ; $7134: $ad
    ld [$f7f5], a                                 ; $7135: $ea $f5 $f7
    push de                                       ; $7138: $d5
    db $e4                                        ; $7139: $e4
    or d                                          ; $713a: $b2
    ld c, a                                       ; $713b: $4f
    ld l, a                                       ; $713c: $6f
    rla                                           ; $713d: $17
    rst $20                                       ; $713e: $e7
    ld b, a                                       ; $713f: $47
    ld hl, sp+$52                                 ; $7140: $f8 $52
    ld h, b                                       ; $7142: $60
    db $e4                                        ; $7143: $e4
    ret z                                         ; $7144: $c8

    ld h, h                                       ; $7145: $64
    or c                                          ; $7146: $b1
    ld e, c                                       ; $7147: $59
    db $ec                                        ; $7148: $ec
    ld h, $3e                                     ; $7149: $26 $3e
    db $f4                                        ; $714b: $f4
    ld [hl], h                                    ; $714c: $74
    pop de                                        ; $714d: $d1
    xor [hl]                                      ; $714e: $ae
    sbc [hl]                                      ; $714f: $9e
    inc l                                         ; $7150: $2c
    ld [hl], $c2                                  ; $7151: $36 $c2
    rst $10                                       ; $7153: $d7
    rst $00                                       ; $7154: $c7
    ld [hl], a                                    ; $7155: $77
    ld h, h                                       ; $7156: $64
    jp nc, $d344                                  ; $7157: $d2 $44 $d3

    ld c, l                                       ; $715a: $4d
    push bc                                       ; $715b: $c5
    ei                                            ; $715c: $fb
    db $db                                        ; $715d: $db
    ld e, l                                       ; $715e: $5d
    cp a                                          ; $715f: $bf
    ld [bc], a                                    ; $7160: $02
    ld l, l                                       ; $7161: $6d
    reti                                          ; $7162: $d9


    inc de                                        ; $7163: $13
    rrca                                          ; $7164: $0f
    ld e, c                                       ; $7165: $59
    ld h, b                                       ; $7166: $60
    ld a, c                                       ; $7167: $79
    ld [de], a                                    ; $7168: $12
    sub [hl]                                      ; $7169: $96
    ld [c], a                                     ; $716a: $e2
    or b                                          ; $716b: $b0
    ld a, c                                       ; $716c: $79
    and d                                         ; $716d: $a2
    ld l, $de                                     ; $716e: $2e $de
    scf                                           ; $7170: $37
    db $e4                                        ; $7171: $e4
    jp nz, Jump_000_2e74                          ; $7172: $c2 $74 $2e

    rst $28                                       ; $7175: $ef
    ld a, h                                       ; $7176: $7c
    add sp, $15                                   ; $7177: $e8 $15
    cp [hl]                                       ; $7179: $be
    db $fc                                        ; $717a: $fc
    ld c, [hl]                                    ; $717b: $4e
    ld e, e                                       ; $717c: $5b
    cp $b3                                        ; $717d: $fe $b3
    db $d3                                        ; $717f: $d3
    add $a6                                       ; $7180: $c6 $a6
    ld c, a                                       ; $7182: $4f
    ld l, e                                       ; $7183: $6b
    ld [hl], h                                    ; $7184: $74
    db $e4                                        ; $7185: $e4
    or e                                          ; $7186: $b3
    pop bc                                        ; $7187: $c1
    ld c, h                                       ; $7188: $4c
    db $ed                                        ; $7189: $ed
    ld l, e                                       ; $718a: $6b
    xor [hl]                                      ; $718b: $ae
    ld [hl], l                                    ; $718c: $75
    ld b, [hl]                                    ; $718d: $46
    ld [c], a                                     ; $718e: $e2
    sbc a                                         ; $718f: $9f
    jr nc, @+$67                                  ; $7190: $30 $65

    cp [hl]                                       ; $7192: $be
    ld hl, sp+$50                                 ; $7193: $f8 $50
    ld e, h                                       ; $7195: $5c
    jp z, $756c                                   ; $7196: $ca $6c $75

    db $fd                                        ; $7199: $fd
    ld a, [bc]                                    ; $719a: $0a
    ld [hl], l                                    ; $719b: $75
    pop hl                                        ; $719c: $e1
    call c, $f4f3                                 ; $719d: $dc $f3 $f4
    ld l, c                                       ; $71a0: $69
    rst $38                                       ; $71a1: $ff
    ld d, e                                       ; $71a2: $53
    ld b, [hl]                                    ; $71a3: $46
    ld h, $0e                                     ; $71a4: $26 $0e
    add $13                                       ; $71a6: $c6 $13
    rst $20                                       ; $71a8: $e7
    ld b, a                                       ; $71a9: $47
    call c, $8ec5                                 ; $71aa: $dc $c5 $8e
    add h                                         ; $71ad: $84
    ld [hl-], a                                   ; $71ae: $32
    ld d, h                                       ; $71af: $54
    db $d3                                        ; $71b0: $d3
    xor a                                         ; $71b1: $af
    or l                                          ; $71b2: $b5
    daa                                           ; $71b3: $27
    ld a, [$a32b]                                 ; $71b4: $fa $2b $a3
    ret                                           ; $71b7: $c9


    ld b, h                                       ; $71b8: $44
    ld e, l                                       ; $71b9: $5d
    db $ec                                        ; $71ba: $ec
    ld c, b                                       ; $71bb: $48
    adc b                                         ; $71bc: $88
    add d                                         ; $71bd: $82
    ld hl, $143e                                  ; $71be: $21 $3e $14
    add l                                         ; $71c1: $85
    cpl                                           ; $71c2: $2f
    ei                                            ; $71c3: $fb
    db $f4                                        ; $71c4: $f4
    halt                                          ; $71c5: $76
    db $fd                                        ; $71c6: $fd
    ld a, [bc]                                    ; $71c7: $0a
    dec e                                         ; $71c8: $1d
    ld hl, sp+$75                                 ; $71c9: $f8 $75
    ld [hl], c                                    ; $71cb: $71
    add a                                         ; $71cc: $87
    dec a                                         ; $71cd: $3d
    ld a, l                                       ; $71ce: $7d
    ld a, [hl-]                                   ; $71cf: $3a
    ld b, [hl]                                    ; $71d0: $46
    dec [hl]                                      ; $71d1: $35
    ld [hl], c                                    ; $71d2: $71
    ld a, [hl]                                    ; $71d3: $7e
    ld h, h                                       ; $71d4: $64
    add hl, de                                    ; $71d5: $19
    or [hl]                                       ; $71d6: $b6
    ld a, [$2863]                                 ; $71d7: $fa $63 $28
    ld a, h                                       ; $71da: $7c
    ld c, h                                       ; $71db: $4c
    rst $08                                       ; $71dc: $cf
    ld hl, sp+$52                                 ; $71dd: $f8 $52
    ld h, [hl]                                    ; $71df: $66
    ld c, a                                       ; $71e0: $4f
    sbc d                                         ; $71e1: $9a
    ld l, b                                       ; $71e2: $68
    or d                                          ; $71e3: $b2
    xor c                                         ; $71e4: $a9
    ld a, b                                       ; $71e5: $78
    ld a, a                                       ; $71e6: $7f
    cp e                                          ; $71e7: $bb
    rlc d                                         ; $71e8: $cb $02
    adc e                                         ; $71ea: $8b
    rrca                                          ; $71eb: $0f
    ld b, l                                       ; $71ec: $45
    pop hl                                        ; $71ed: $e1
    dec bc                                        ; $71ee: $0b
    and e                                         ; $71ef: $a3
    ldh a, [$f5]                                  ; $71f0: $f0 $f5
    dec hl                                        ; $71f2: $2b
    dec e                                         ; $71f3: $1d
    ld e, a                                       ; $71f4: $5f
    ld a, [bc]                                    ; $71f5: $0a
    ld l, $0a                                     ; $71f6: $2e $0a
    xor $ca                                       ; $71f8: $ee $ca
    ld h, h                                       ; $71fa: $64
    add c                                         ; $71fb: $81
    push bc                                       ; $71fc: $c5
    add a                                         ; $71fd: $87
    ld [c], a                                     ; $71fe: $e2
    or d                                          ; $71ff: $b2
    ld c, a                                       ; $7200: $4f
    ld l, a                                       ; $7201: $6f
    ld d, a                                       ; $7202: $57
    ld l, e                                       ; $7203: $6b
    dec b                                         ; $7204: $05
    xor l                                         ; $7205: $ad
    ld b, c                                       ; $7206: $41
    ld c, b                                       ; $7207: $48
    ld [$cbe5], sp                                ; $7208: $08 $e5 $cb
    rst $28                                       ; $720b: $ef
    or h                                          ; $720c: $b4
    push hl                                       ; $720d: $e5
    ccf                                           ; $720e: $3f
    dec sp                                        ; $720f: $3b
    ld l, l                                       ; $7210: $6d
    ld l, h                                       ; $7211: $6c
    ld a, [$2db4]                                 ; $7212: $fa $b4 $2d
    pop af                                        ; $7215: $f1
    and c                                         ; $7216: $a1
    jr z, jr_040_7255                             ; $7217: $28 $3c

    xor c                                         ; $7219: $a9
    and [hl]                                      ; $721a: $a6
    add d                                         ; $721b: $82
    ldh a, [rLY]                                  ; $721c: $f0 $44
    ld b, [hl]                                    ; $721e: $46
    ld d, d                                       ; $721f: $52
    xor $ab                                       ; $7220: $ee $ab
    ret                                           ; $7222: $c9


    ld c, c                                       ; $7223: $49
    inc [hl]                                      ; $7224: $34
    ld a, e                                       ; $7225: $7b
    dec [hl]                                      ; $7226: $35
    ld d, c                                       ; $7227: $51
    sub a                                         ; $7228: $97
    ld [bc], a                                    ; $7229: $02
    inc hl                                        ; $722a: $23
    rst $08                                       ; $722b: $cf
    sub b                                         ; $722c: $90
    adc e                                         ; $722d: $8b
    ld c, h                                       ; $722e: $4c
    ld h, c                                       ; $722f: $61
    cp e                                          ; $7230: $bb
    cp b                                          ; $7231: $b8
    ld a, l                                       ; $7232: $7d
    db $10                                        ; $7233: $10
    cp [hl]                                       ; $7234: $be
    ld a, $be                                     ; $7235: $3e $be
    rst $30                                       ; $7237: $f7
    push de                                       ; $7238: $d5
    db $e4                                        ; $7239: $e4
    xor d                                         ; $723a: $aa
    dec b                                         ; $723b: $05
    sbc d                                         ; $723c: $9a
    inc a                                         ; $723d: $3c
    ld e, a                                       ; $723e: $5f
    ld a, $05                                     ; $723f: $3e $05
    ld [$a10d], a                                 ; $7241: $ea $0d $a1
    ld a, [c]                                     ; $7244: $f2
    or c                                          ; $7245: $b1
    inc hl                                        ; $7246: $23
    ld h, a                                       ; $7247: $67
    di                                            ; $7248: $f3
    ld b, a                                       ; $7249: $47
    ld e, l                                       ; $724a: $5d
    ld hl, sp-$53                                 ; $724b: $f8 $ad
    ld b, d                                       ; $724d: $42
    sbc a                                         ; $724e: $9f
    ld c, [hl]                                    ; $724f: $4e
    cpl                                           ; $7250: $2f
    adc e                                         ; $7251: $8b
    ld b, c                                       ; $7252: $41
    di                                            ; $7253: $f3
    rst $18                                       ; $7254: $df

jr_040_7255:
    ld d, a                                       ; $7255: $57
    inc de                                        ; $7256: $13
    ld [hl], l                                    ; $7257: $75
    pop hl                                        ; $7258: $e1
    ld sp, $4379                                  ; $7259: $31 $79 $43

jr_040_725c:
    sub [hl]                                      ; $725c: $96
    ld l, e                                       ; $725d: $6b
    jr nz, jr_040_725c                            ; $725e: $20 $fc

    and [hl]                                      ; $7260: $a6
    xor [hl]                                      ; $7261: $ae
    ld e, a                                       ; $7262: $5f
    ld bc, $f79e                                  ; $7263: $01 $9e $f7
    and e                                         ; $7266: $a3
    ld c, e                                       ; $7267: $4b
    add hl, de                                    ; $7268: $19
    sbc c                                         ; $7269: $99
    or h                                          ; $726a: $b4
    ld l, [hl]                                    ; $726b: $6e
    rst $28                                       ; $726c: $ef
    ld h, $ed                                     ; $726d: $26 $ed
    rst $38                                       ; $726f: $ff
    or $0e                                        ; $7270: $f6 $0e
    add c                                         ; $7272: $81
    ld a, $be                                     ; $7273: $3e $be
    cp b                                          ; $7275: $b8
    ld d, b                                       ; $7276: $50
    sbc c                                         ; $7277: $99
    inc d                                         ; $7278: $14
    and [hl]                                      ; $7279: $a6
    ld a, [bc]                                    ; $727a: $0a
    jp nz, $ba88                                  ; $727b: $c2 $88 $ba

    call nc, $ad1e                                ; $727e: $d4 $1e $ad
    cp e                                          ; $7281: $bb
    scf                                           ; $7282: $37
    ld l, $b5                                     ; $7283: $2e $b5
    ld d, [hl]                                    ; $7285: $56
    db $ed                                        ; $7286: $ed
    ld c, l                                       ; $7287: $4d
    jp z, $fd5b                                   ; $7288: $ca $5b $fd

    ld e, c                                       ; $728b: $59
    inc c                                         ; $728c: $0c
    add l                                         ; $728d: $85
    and a                                         ; $728e: $a7
    ld e, a                                       ; $728f: $5f
    ld bc, $8aad                                  ; $7290: $01 $ad $8a
    di                                            ; $7293: $f3
    ld a, e                                       ; $7294: $7b
    call c, $a9f4                                 ; $7295: $dc $f4 $a9
    ld l, e                                       ; $7298: $6b
    ld d, a                                       ; $7299: $57
    ld a, l                                       ; $729a: $7d
    ld hl, sp-$1e                                 ; $729b: $f8 $e2
    sbc a                                         ; $729d: $9f
    sub b                                         ; $729e: $90
    ld d, a                                       ; $729f: $57
    ld a, b                                       ; $72a0: $78
    ld [c], a                                     ; $72a1: $e2
    ld b, [hl]                                    ; $72a2: $46
    ld [c], a                                     ; $72a3: $e2
    ld b, e                                       ; $72a4: $43
    or c                                          ; $72a5: $b1
    or a                                          ; $72a6: $b7
    rlca                                          ; $72a7: $07
    xor l                                         ; $72a8: $ad
    ld l, [hl]                                    ; $72a9: $6e
    inc hl                                        ; $72aa: $23
    daa                                           ; $72ab: $27
    dec b                                         ; $72ac: $05
    ld b, [hl]                                    ; $72ad: $46
    ld e, $84                                     ; $72ae: $1e $84
    ld de, $a975                                  ; $72b0: $11 $75 $a9
    db $fd                                        ; $72b3: $fd
    sbc d                                         ; $72b4: $9a
    sbc l                                         ; $72b5: $9d
    ld [$ad57], a                                 ; $72b6: $ea $57 $ad
    and [hl]                                      ; $72b9: $a6
    ld b, d                                       ; $72ba: $42
    sub [hl]                                      ; $72bb: $96
    ld a, e                                       ; $72bc: $7b
    add a                                         ; $72bd: $87
    call nc, $cd7e                                ; $72be: $d4 $7e $cd
    ld c, [hl]                                    ; $72c1: $4e
    push af                                       ; $72c2: $f5
    dec hl                                        ; $72c3: $2b
    xor l                                         ; $72c4: $ad
    ccf                                           ; $72c5: $3f
    ld c, c                                       ; $72c6: $49
    jp nz, Jump_040_56a6                          ; $72c7: $c2 $a6 $56

    ld [$a48c], a                                 ; $72ca: $ea $8c $a4
    ld b, [hl]                                    ; $72cd: $46
    inc [hl]                                      ; $72ce: $34
    ld [$ce23], sp                                ; $72cf: $08 $23 $ce
    adc a                                         ; $72d2: $8f
    ld a, b                                       ; $72d3: $78
    ccf                                           ; $72d4: $3f
    dec bc                                        ; $72d5: $0b
    inc l                                         ; $72d6: $2c
    ld [hl-], a                                   ; $72d7: $32
    and a                                         ; $72d8: $a7
    adc e                                         ; $72d9: $8b
    ld a, [de]                                    ; $72da: $1a
    jp nc, $f850                                  ; $72db: $d2 $50 $f8

    ld d, d                                       ; $72de: $52
    ld a, [hl]                                    ; $72df: $7e
    add c                                         ; $72e0: $81
    db $ed                                        ; $72e1: $ed
    jp hl                                         ; $72e2: $e9


    db $d3                                        ; $72e3: $d3
    ld [hl], d                                    ; $72e4: $72
    ld a, h                                       ; $72e5: $7c
    add sp, -$69                                  ; $72e6: $e8 $97
    adc e                                         ; $72e8: $8b
    sbc e                                         ; $72e9: $9b
    ld a, [bc]                                    ; $72ea: $0a
    and c                                         ; $72eb: $a1
    sub d                                         ; $72ec: $92
    sub $5e                                       ; $72ed: $d6 $5e
    xor a                                         ; $72ef: $af
    ld a, a                                       ; $72f0: $7f
    sbc c                                         ; $72f1: $99
    ld a, $ad                                     ; $72f2: $3e $ad
    ld a, [bc]                                    ; $72f4: $0a
    pop af                                        ; $72f5: $f1
    ld [hl], h                                    ; $72f6: $74
    pop af                                        ; $72f7: $f1
    adc [hl]                                      ; $72f8: $8e
    dec d                                         ; $72f9: $15
    and h                                         ; $72fa: $a4
    ld b, [hl]                                    ; $72fb: $46
    ld e, [hl]                                    ; $72fc: $5e
    sbc h                                         ; $72fd: $9c
    rra                                           ; $72fe: $1f
    ld e, c                                       ; $72ff: $59
    and b                                         ; $7300: $a0
    ld l, c                                       ; $7301: $69
    scf                                           ; $7302: $37
    ld a, l                                       ; $7303: $7d
    ld e, d                                       ; $7304: $5a
    add e                                         ; $7305: $83
    ld e, a                                       ; $7306: $5f
    rla                                           ; $7307: $17
    ld [hl], a                                    ; $7308: $77
    ld hl, $eea1                                  ; $7309: $21 $a1 $ee
    xor e                                         ; $730c: $ab
    jp hl                                         ; $730d: $e9


    ld d, a                                       ; $730e: $57
    xor l                                         ; $730f: $ad
    ld b, c                                       ; $7310: $41
    ld c, b                                       ; $7311: $48
    ld [$c9e5], sp                                ; $7312: $08 $e5 $c9
    rst $28                                       ; $7315: $ef
    jr c, jr_040_7320                             ; $7316: $38 $08

    db $db                                        ; $7318: $db
    ld b, h                                       ; $7319: $44
    ld e, l                                       ; $731a: $5d
    inc [hl]                                      ; $731b: $34
    ld a, [$da76]                                 ; $731c: $fa $76 $da
    adc l                                         ; $731f: $8d

jr_040_7320:
    ld b, b                                       ; $7320: $40
    sub a                                         ; $7321: $97
    rla                                           ; $7322: $17
    rst $20                                       ; $7323: $e7
    ld b, a                                       ; $7324: $47
    ld a, [bc]                                    ; $7325: $0a
    ld b, d                                       ; $7326: $42
    ld b, d                                       ; $7327: $42
    ld c, l                                       ; $7328: $4d
    sbc h                                         ; $7329: $9c
    rra                                           ; $732a: $1f
    add hl, hl                                    ; $732b: $29
    cp b                                          ; $732c: $b8
    sbc h                                         ; $732d: $9c
    ld h, h                                       ; $732e: $64
    sbc b                                         ; $732f: $98
    xor a                                         ; $7330: $af
    ld a, [$c778]                                 ; $7331: $fa $78 $c7
    xor d                                         ; $7334: $aa
    rst $28                                       ; $7335: $ef
    ld d, a                                       ; $7336: $57
    sbc [hl]                                      ; $7337: $9e
    ld d, e                                       ; $7338: $53
    inc a                                         ; $7339: $3c
    ld l, d                                       ; $733a: $6a
    call nz, $a287                                ; $733b: $c4 $87 $a2
    ldh a, [$d4]                                  ; $733e: $f0 $d4
    ld e, d                                       ; $7340: $5a
    ld bc, $4f6d                                  ; $7341: $01 $6d $4f
    inc [hl]                                      ; $7344: $34
    ld a, [$c576]                                 ; $7345: $fa $76 $c5
    ld c, l                                       ; $7348: $4d
    call c, $b1ec                                 ; $7349: $dc $ec $b1
    adc c                                         ; $734c: $89
    di                                            ; $734d: $f3
    inc hl                                        ; $734e: $23
    push hl                                       ; $734f: $e5
    ld d, d                                       ; $7350: $52
    ld b, [hl]                                    ; $7351: $46
    ld h, $de                                     ; $7352: $26 $de
    ld h, a                                       ; $7354: $67
    cp [hl]                                       ; $7355: $be
    ld d, h                                       ; $7356: $54
    cp a                                          ; $7357: $bf
    sub c                                         ; $7358: $91
    ld c, a                                       ; $7359: $4f
    db $eb                                        ; $735a: $eb
    rst $30                                       ; $735b: $f7
    jp c, Jump_040_5a48                           ; $735c: $da $48 $5a

    db $dd                                        ; $735f: $dd
    dec de                                        ; $7360: $1b
    inc b                                         ; $7361: $04
    ld a, [$1d15]                                 ; $7362: $fa $15 $1d
    adc a                                         ; $7365: $8f
    ret                                           ; $7366: $c9


    ld h, a                                       ; $7367: $67
    and c                                         ; $7368: $a1
    add [hl]                                      ; $7369: $86
    ld a, h                                       ; $736a: $7c
    ret c                                         ; $736b: $d8

    add [hl]                                      ; $736c: $86
    ld a, h                                       ; $736d: $7c
    xor e                                         ; $736e: $ab
    ld l, $3e                                     ; $736f: $2e $3e
    db $f4                                        ; $7371: $f4
    ld b, l                                       ; $7372: $45
    ld c, l                                       ; $7373: $4d
    ld c, b                                       ; $7374: $48
    ld a, [hl-]                                   ; $7375: $3a
    rst $10                                       ; $7376: $d7
    xor a                                         ; $7377: $af
    sbc l                                         ; $7378: $9d
    ld b, d                                       ; $7379: $42
    ld c, l                                       ; $737a: $4d
    sbc h                                         ; $737b: $9c
    rra                                           ; $737c: $1f
    pop hl                                        ; $737d: $e1
    ld c, e                                       ; $737e: $4b
    pop bc                                        ; $737f: $c1
    push bc                                       ; $7380: $c5
    ei                                            ; $7381: $fb
    call z, $ea93                                 ; $7382: $cc $93 $ea
    scf                                           ; $7385: $37
    ld a, [$4a74]                                 ; $7386: $fa $74 $4a
    rst $20                                       ; $7389: $e7
    ld [c], a                                     ; $738a: $e2
    db $fc                                        ; $738b: $fc
    ld [$345f], sp                                ; $738c: $08 $5f $34
    ld a, [$c576]                                 ; $738f: $fa $76 $c5
    ld a, l                                       ; $7392: $7d
    xor l                                         ; $7393: $ad
    dec d                                         ; $7394: $15
    cp [hl]                                       ; $7395: $be
    push af                                       ; $7396: $f5
    jp hl                                         ; $7397: $e9


    or d                                          ; $7398: $b2
    ccf                                           ; $7399: $3f
    adc e                                         ; $739a: $8b
    ld b, c                                       ; $739b: $41
    sbc e                                         ; $739c: $9b
    ld a, $1d                                     ; $739d: $3e $1d
    jp nc, $9e17                                  ; $739f: $d2 $17 $9e

    cp b                                          ; $73a2: $b8
    add hl, hl                                    ; $73a3: $29
    db $fc                                        ; $73a4: $fc
    or l                                          ; $73a5: $b5
    ld d, [hl]                                    ; $73a6: $56
    ld [hl], l                                    ; $73a7: $75
    ld c, $c2                                     ; $73a8: $0e $c2
    add sp, -$2d                                  ; $73aa: $e8 $d3
    ld [hl], d                                    ; $73ac: $72
    xor d                                         ; $73ad: $aa
    sbc e                                         ; $73ae: $9b
    xor b                                         ; $73af: $a8
    ld hl, $8861                                  ; $73b0: $21 $61 $88
    ld b, [hl]                                    ; $73b3: $46
    rst $18                                       ; $73b4: $df
    adc $10                                       ; $73b5: $ce $10
    rst $20                                       ; $73b7: $e7
    ccf                                           ; $73b8: $3f
    ld a, [hl+]                                   ; $73b9: $2a
    ld a, $14                                     ; $73ba: $3e $14
    ld de, $f5e4                                  ; $73bc: $11 $e4 $f5
    ld a, [$e8fb]                                 ; $73bf: $fa $fb $e8
    xor a                                         ; $73c2: $af
    adc h                                         ; $73c3: $8c
    ld h, $d3                                     ; $73c4: $26 $d3
    xor a                                         ; $73c6: $af
    cp [hl]                                       ; $73c7: $be
    push af                                       ; $73c8: $f5
    jp hl                                         ; $73c9: $e9


    or d                                          ; $73ca: $b2
    ccf                                           ; $73cb: $3f
    adc e                                         ; $73cc: $8b
    ld b, c                                       ; $73cd: $41
    sbc e                                         ; $73ce: $9b
    sbc d                                         ; $73cf: $9a
    dec hl                                        ; $73d0: $2b
    ld l, l                                       ; $73d1: $6d
    jr c, @+$39                                   ; $73d2: $38 $37

    cp d                                          ; $73d4: $ba
    cp h                                          ; $73d5: $bc
    ld b, d                                       ; $73d6: $42
    add hl, hl                                    ; $73d7: $29
    inc de                                        ; $73d8: $13
    dec [hl]                                      ; $73d9: $35
    and h                                         ; $73da: $a4
    and c                                         ; $73db: $a1
    ldh a, [$a5]                                  ; $73dc: $f0 $a5
    ld b, b                                       ; $73de: $40
    ld hl, sp-$74                                 ; $73df: $f8 $8c
    cpl                                           ; $73e1: $2f
    dec d                                         ; $73e2: $15
    or h                                          ; $73e3: $b4
    ld a, l                                       ; $73e4: $7d
    db $d3                                        ; $73e5: $d3
    xor a                                         ; $73e6: $af
    ld c, l                                       ; $73e7: $4d
    push bc                                       ; $73e8: $c5
    ld c, l                                       ; $73e9: $4d
    or l                                          ; $73ea: $b5
    ld l, h                                       ; $73eb: $6c
    ldh a, [rLYC]                                 ; $73ec: $f0 $45
    ld a, l                                       ; $73ee: $7d
    or $93                                        ; $73ef: $f6 $93
    ld h, e                                       ; $73f1: $63
    or e                                          ; $73f2: $b3
    ld [bc], a                                    ; $73f3: $02
    ld c, l                                       ; $73f4: $4d
    and h                                         ; $73f5: $a4
    ld a, d                                       ; $73f6: $7a
    ld h, c                                       ; $73f7: $61
    db $ec                                        ; $73f8: $ec
    dec a                                         ; $73f9: $3d
    add hl, sp                                    ; $73fa: $39
    ld hl, $f261                                  ; $73fb: $21 $61 $f2
    dec de                                        ; $73fe: $1b
    dec hl                                        ; $73ff: $2b
    ld c, l                                       ; $7400: $4d
    call nz, $b2fd                                ; $7401: $c4 $fd $b2
    ld h, b                                       ; $7404: $60
    rst $28                                       ; $7405: $ef
    ret                                           ; $7406: $c9


    ld h, a                                       ; $7407: $67
    and c                                         ; $7408: $a1
    jp nz, $02bf                                  ; $7409: $c2 $bf $02

    ld c, l                                       ; $740c: $4d
    ld h, h                                       ; $740d: $64
    ld sp, hl                                     ; $740e: $f9
    sbc e                                         ; $740f: $9b
    xor b                                         ; $7410: $a8
    adc e                                         ; $7411: $8b
    ld b, [hl]                                    ; $7412: $46
    ld e, a                                       ; $7413: $5f
    ld hl, sp+$56                                 ; $7414: $f8 $56
    ld c, l                                       ; $7416: $4d
    call nz, Call_040_788d                        ; $7417: $c4 $8d $78
    ld b, c                                       ; $741a: $41
    cp h                                          ; $741b: $bc
    ld de, $5d44                                  ; $741c: $11 $44 $5d
    ld hl, sp+$4d                                 ; $741f: $f8 $4d
    di                                            ; $7421: $f3
    add e                                         ; $7422: $83
    add hl, de                                    ; $7423: $19
    dec hl                                        ; $7424: $2b
    ld c, l                                       ; $7425: $4d
    ld b, h                                       ; $7426: $44
    ccf                                           ; $7427: $3f
    ld d, [hl]                                    ; $7428: $56
    ld a, $0b                                     ; $7429: $3e $0b
    inc l                                         ; $742b: $2c
    or a                                          ; $742c: $b7
    db $d3                                        ; $742d: $d3
    db $ed                                        ; $742e: $ed
    ld [hl], c                                    ; $742f: $71
    call nc, Call_000_1965                        ; $7430: $d4 $65 $19
    ld [c], a                                     ; $7433: $e2
    adc l                                         ; $7434: $8d
    call c, $4d0a                                 ; $7435: $dc $0a $4d
    and h                                         ; $7438: $a4
    add b                                         ; $7439: $80
    and e                                         ; $743a: $a3
    ld l, $fb                                     ; $743b: $2e $fb
    db $f4                                        ; $743d: $f4
    halt                                          ; $743e: $76
    ld e, c                                       ; $743f: $59
    ld h, b                                       ; $7440: $60
    cp c                                          ; $7441: $b9
    sbc l                                         ; $7442: $9d
    push bc                                       ; $7443: $c5
    xor [hl]                                      ; $7444: $ae
    sbc d                                         ; $7445: $9a
    cp h                                          ; $7446: $bc
    ret z                                         ; $7447: $c8

    xor h                                         ; $7448: $ac
    ld c, l                                       ; $7449: $4d
    call nz, Call_040_56fd                        ; $744a: $c4 $fd $56
    or b                                          ; $744d: $b0
    ld de, $4dac                                  ; $744e: $11 $ac $4d
    ld b, h                                       ; $7451: $44
    rst $38                                       ; $7452: $ff
    adc $f9                                       ; $7453: $ce $f9
    pop bc                                        ; $7455: $c1
    db $fc                                        ; $7456: $fc
    xor c                                         ; $7457: $a9
    ld e, [hl]                                    ; $7458: $5e
    dec sp                                        ; $7459: $3b
    rst $30                                       ; $745a: $f7
    dec hl                                        ; $745b: $2b
    cp [hl]                                       ; $745c: $be
    cp b                                          ; $745d: $b8
    ld d, b                                       ; $745e: $50
    adc c                                         ; $745f: $89
    sbc e                                         ; $7460: $9b
    cp l                                          ; $7461: $bd
    ld b, c                                       ; $7462: $41
    cp h                                          ; $7463: $bc
    sub c                                         ; $7464: $91
    dec hl                                        ; $7465: $2b
    db $fc                                        ; $7466: $fc
    or l                                          ; $7467: $b5
    ld d, d                                       ; $7468: $52
    ld a, e                                       ; $7469: $7b
    ld b, d                                       ; $746a: $42
    push hl                                       ; $746b: $e5
    db $e3                                        ; $746c: $e3
    dec a                                         ; $746d: $3d
    adc l                                         ; $746e: $8d
    jp c, $c7c9                                   ; $746f: $da $c9 $c7

    ld sp, hl                                     ; $7472: $f9
    sub c                                         ; $7473: $91
    ld h, l                                       ; $7474: $65
    ret c                                         ; $7475: $d8

    and b                                         ; $7476: $a0
    rst $10                                       ; $7477: $d7
    inc hl                                        ; $7478: $23
    daa                                           ; $7479: $27
    inc c                                         ; $747a: $0c
    ld b, e                                       ; $747b: $43
    add hl, hl                                    ; $747c: $29
    ld l, a                                       ; $747d: $6f
    ld a, h                                       ; $747e: $7c
    db $fd                                        ; $747f: $fd
    ld a, [bc]                                    ; $7480: $0a
    ld l, l                                       ; $7481: $6d
    dec bc                                        ; $7482: $0b
    ld b, e                                       ; $7483: $43
    call nc, $ca85                                ; $7484: $d4 $85 $ca
    rst $00                                       ; $7487: $c7
    ld a, e                                       ; $7488: $7b
    ld a, [de]                                    ; $7489: $1a
    or l                                          ; $748a: $b5
    sub e                                         ; $748b: $93
    adc a                                         ; $748c: $8f
    cp d                                          ; $748d: $ba
    ld hl, sp-$4e                                 ; $748e: $f8 $b2
    ld b, c                                       ; $7490: $41
    di                                            ; $7491: $f3
    inc hl                                        ; $7492: $23
    ld c, b                                       ; $7493: $48
    push af                                       ; $7494: $f5
    sbc d                                         ; $7495: $9a
    rst $38                                       ; $7496: $ff
    ld [c], a                                     ; $7497: $e2
    db $fd                                        ; $7498: $fd
    ld l, d                                       ; $7499: $6a
    jp z, $4ad5                                   ; $749a: $ca $d5 $4a

    ld l, e                                       ; $749d: $6b
    ldh a, [$eb]                                  ; $749e: $f0 $eb
    or d                                          ; $74a0: $b2
    ret nc                                        ; $74a1: $d0

    ld a, [$dea3]                                 ; $74a2: $fa $a3 $de
    jp z, $a9f5                                   ; $74a5: $ca $f5 $a9

    dec bc                                        ; $74a8: $0b
    set 5, l                                      ; $74a9: $cb $ed
    ld d, h                                       ; $74ab: $54
    ld d, e                                       ; $74ac: $53
    ld b, c                                       ; $74ad: $41
    ld a, b                                       ; $74ae: $78
    ld [hl], h                                    ; $74af: $74
    reti                                          ; $74b0: $d9


    sbc a                                         ; $74b1: $9f
    ld [$6e3e], a                                 ; $74b2: $ea $3e $6e
    or $06                                        ; $74b5: $f6 $06
    pop af                                        ; $74b7: $f1
    ld b, [hl]                                    ; $74b8: $46
    sub b                                         ; $74b9: $90
    ld a, [de]                                    ; $74ba: $1a
    ld e, c                                       ; $74bb: $59
    adc [hl]                                      ; $74bc: $8e
    ld [hl-], a                                   ; $74bd: $32
    ld c, a                                       ; $74be: $4f
    pop hl                                        ; $74bf: $e1
    ld c, c                                       ; $74c0: $49
    ld [hl], c                                    ; $74c1: $71
    ld l, a                                       ; $74c2: $6f
    push hl                                       ; $74c3: $e5
    ei                                            ; $74c4: $fb
    dec d                                         ; $74c5: $15
    dec e                                         ; $74c6: $1d
    ld d, d                                       ; $74c7: $52
    inc d                                         ; $74c8: $14
    cp $d4                                        ; $74c9: $fe $d4
    adc b                                         ; $74cb: $88
    cp l                                          ; $74cc: $bd
    ld e, l                                       ; $74cd: $5d
    add hl, hl                                    ; $74ce: $29
    ld d, a                                       ; $74cf: $57
    ld a, l                                       ; $74d0: $7d
    rst $18                                       ; $74d1: $df
    rst $30                                       ; $74d2: $f7
    reti                                          ; $74d3: $d9


    sbc a                                         ; $74d4: $9f

jr_040_74d5:
    ld [$8fb5], a                                 ; $74d5: $ea $b5 $8f
    rst $20                                       ; $74d8: $e7
    sbc c                                         ; $74d9: $99
    ld b, e                                       ; $74da: $43
    ld c, [hl]                                    ; $74db: $4e
    or d                                          ; $74dc: $b2
    ret nz                                        ; $74dd: $c0

    jp z, $d7c8                                   ; $74de: $ca $c8 $d7

    ld c, h                                       ; $74e1: $4c
    rst $00                                       ; $74e2: $c7
    sub a                                         ; $74e3: $97
    inc de                                        ; $74e4: $13
    add [hl]                                      ; $74e5: $86
    and c                                         ; $74e6: $a1
    sub h                                         ; $74e7: $94
    rrca                                          ; $74e8: $0f
    sub l                                         ; $74e9: $95
    ld c, c                                       ; $74ea: $49
    ld [hl], c                                    ; $74eb: $71
    ld e, a                                       ; $74ec: $5f
    jp hl                                         ; $74ed: $e9


    ld l, a                                       ; $74ee: $6f
    ld l, d                                       ; $74ef: $6a
    xor l                                         ; $74f0: $ad
    sbc [hl]                                      ; $74f1: $9e
    ld d, e                                       ; $74f2: $53
    ld a, $24                                     ; $74f3: $3e $24
    sbc l                                         ; $74f5: $9d
    bit 1, c                                      ; $74f6: $cb $49
    call c, $fa57                                 ; $74f8: $dc $57 $fa
    sbc e                                         ; $74fb: $9b
    ld e, d                                       ; $74fc: $5a
    dec hl                                        ; $74fd: $2b
    sbc l                                         ; $74fe: $9d
    ret z                                         ; $74ff: $c8

    ld h, a                                       ; $7500: $67
    add hl, sp                                    ; $7501: $39
    or b                                          ; $7502: $b0
    ld a, l                                       ; $7503: $7d
    db $f4                                        ; $7504: $f4
    jr nz, jr_040_74d5                            ; $7505: $20 $ce

    ld e, e                                       ; $7507: $5b
    sbc a                                         ; $7508: $9f
    cp d                                          ; $7509: $ba
    or h                                          ; $750a: $b4
    cp $9c                                        ; $750b: $fe $9c
    jr nc, jr_040_751b                            ; $750d: $30 $0c

    and l                                         ; $750f: $a5
    cp h                                          ; $7510: $bc
    pop af                                        ; $7511: $f1
    push de                                       ; $7512: $d5
    ld e, d                                       ; $7513: $5a
    ld bc, $4675                                  ; $7514: $01 $75 $46
    ld d, d                                       ; $7517: $52
    ld h, $82                                     ; $7518: $26 $82
    xor d                                         ; $751a: $aa

jr_040_751b:
    add d                                         ; $751b: $82
    ld c, h                                       ; $751c: $4c
    call c, $4f94                                 ; $751d: $dc $94 $4f
    cp c                                          ; $7520: $b9
    rst $28                                       ; $7521: $ef
    ld d, a                                       ; $7522: $57
    or l                                          ; $7523: $b5
    xor e                                         ; $7524: $ab
    ld c, d                                       ; $7525: $4a
    rla                                           ; $7526: $17
    dec b                                         ; $7527: $05
    ld a, [c]                                     ; $7528: $f2
    add d                                         ; $7529: $82
    ld d, d                                       ; $752a: $52
    ld h, b                                       ; $752b: $60
    ld [$2c95], sp                                ; $752c: $08 $95 $2c
    ld b, a                                       ; $752f: $47
    ld h, d                                       ; $7530: $62
    rst $28                                       ; $7531: $ef
    sub e                                         ; $7532: $93
    adc c                                         ; $7533: $89
    jp nz, Jump_040_62ce                          ; $7534: $c2 $ce $62

    ld d, a                                       ; $7537: $57
    ld c, l                                       ; $7538: $4d
    ld e, [hl]                                    ; $7539: $5e
    ld h, h                                       ; $753a: $64
    ld a, [$3af8]                                 ; $753b: $fa $f8 $3a
    ld e, d                                       ; $753e: $5a
    ld a, $b7                                     ; $753f: $3e $b7
    and e                                         ; $7541: $a3
    xor [hl]                                      ; $7542: $ae
    jr nc, jr_040_757a                            ; $7543: $30 $35

    db $fd                                        ; $7545: $fd
    db $f4                                        ; $7546: $f4
    dec hl                                        ; $7547: $2b
    db $ed                                        ; $7548: $ed
    rst $08                                       ; $7549: $cf
    and $89                                       ; $754a: $e6 $89
    ld e, $02                                     ; $754c: $1e $02

Call_040_754e:
    ld e, l                                       ; $754e: $5d
    ld l, d                                       ; $754f: $6a
    cp a                                          ; $7550: $bf
    add hl, de                                    ; $7551: $19
    add c                                         ; $7552: $81
    ld a, $9e                                     ; $7553: $3e $9e
    ld e, $35                                     ; $7555: $1e $35
    ld b, d                                       ; $7557: $42
    push bc                                       ; $7558: $c5
    add e                                         ; $7559: $83
    ld l, [hl]                                    ; $755a: $6e
    cp [hl]                                       ; $755b: $be
    ld [$a6e3], a                                 ; $755c: $ea $e3 $a6
    ld a, h                                       ; $755f: $7c
    rst $18                                       ; $7560: $df
    rst $30                                       ; $7561: $f7
    ld l, c                                       ; $7562: $69
    adc l                                         ; $7563: $8d
    adc [hl]                                      ; $7564: $8e
    call nz, $b54d                                ; $7565: $c4 $4d $b5
    ld l, h                                       ; $7568: $6c
    cp h                                          ; $7569: $bc
    ret z                                         ; $756a: $c8

    call nc, $015c                                ; $756b: $d4 $5c $01
    dec l                                         ; $756e: $2d
    rst $00                                       ; $756f: $c7
    ei                                            ; $7570: $fb
    jp nz, $f85f                                  ; $7571: $c2 $5f $f8

    call c, $f1f7                                 ; $7574: $dc $f7 $f1
    sbc h                                         ; $7577: $9c
    ld a, [bc]                                    ; $7578: $0a
    add hl, hl                                    ; $7579: $29

jr_040_757a:
    rla                                           ; $757a: $17
    rst $20                                       ; $757b: $e7
    cp a                                          ; $757c: $bf
    xor a                                         ; $757d: $af
    cp [hl]                                       ; $757e: $be
    sub $0a                                       ; $757f: $d6 $0a
    ld l, l                                       ; $7581: $6d
    jr z, @-$0c                                   ; $7582: $28 $f2

    inc [hl]                                      ; $7584: $34
    db $f4                                        ; $7585: $f4
    jp hl                                         ; $7586: $e9


    sbc b                                         ; $7587: $98
    ld [hl-], a                                   ; $7588: $32
    ld e, a                                       ; $7589: $5f
    ld l, $f6                                     ; $758a: $2e $f6
    jp c, $8913                                   ; $758c: $da $13 $89

    daa                                           ; $758f: $27
    rla                                           ; $7590: $17
    ld [hl], d                                    ; $7591: $72
    or h                                          ; $7592: $b4
    ld a, l                                       ; $7593: $7d
    inc hl                                        ; $7594: $23
    sub e                                         ; $7595: $93
    adc e                                         ; $7596: $8b
    ld b, [hl]                                    ; $7597: $46
    cp l                                          ; $7598: $bd
    rst $10                                       ; $7599: $d7
    and a                                         ; $759a: $a7
    xor $18                                       ; $759b: $ee $18
    cp a                                          ; $759d: $bf
    ld c, h                                       ; $759e: $4c
    or $67                                        ; $759f: $f6 $67
    sbc c                                         ; $75a1: $99
    jp nz, $841f                                  ; $75a2: $c2 $1f $84

    add hl, hl                                    ; $75a5: $29
    di                                            ; $75a6: $f3
    db $e4                                        ; $75a7: $e4
    halt                                          ; $75a8: $76
    inc c                                         ; $75a9: $0c
    add l                                         ; $75aa: $85
    and a                                         ; $75ab: $a7
    rst $28                                       ; $75ac: $ef
    ei                                            ; $75ad: $fb
    dec d                                         ; $75ae: $15
    ld l, l                                       ; $75af: $6d
    reti                                          ; $75b0: $d9


    inc de                                        ; $75b1: $13
    rrca                                          ; $75b2: $0f
    dec [hl]                                      ; $75b3: $35
    ld d, a                                       ; $75b4: $57
    xor l                                         ; $75b5: $ad
    pop bc                                        ; $75b6: $c1
    xor a                                         ; $75b7: $af
    ld c, e                                       ; $75b8: $4b
    adc l                                         ; $75b9: $8d
    adc h                                         ; $75ba: $8c
    ld a, l                                       ; $75bb: $7d
    call nc, Call_000_02a5                        ; $75bc: $d4 $a5 $02
    inc sp                                        ; $75bf: $33
    call z, Call_040_4e5d                         ; $75c0: $cc $5d $4e
    ld [c], a                                     ; $75c3: $e2
    cp [hl]                                       ; $75c4: $be
    xor d                                         ; $75c5: $aa
    ld c, [hl]                                    ; $75c6: $4e
    and [hl]                                      ; $75c7: $a6
    ld e, a                                       ; $75c8: $5f
    ld bc, $539e                                  ; $75c9: $01 $9e $53
    ld hl, $4727                                  ; $75cc: $21 $27 $47
    cp h                                          ; $75cf: $bc
    adc c                                         ; $75d0: $89
    adc h                                         ; $75d1: $8c
    call nz, $d479                                ; $75d2: $c4 $79 $d4
    ld c, b                                       ; $75d5: $48
    push af                                       ; $75d6: $f5
    dec de                                        ; $75d7: $1b
    cp d                                          ; $75d8: $ba
    call nc, $337e                                ; $75d9: $d4 $7e $33
    ld [bc], a                                    ; $75dc: $02
    ld a, l                                       ; $75dd: $7d
    inc a                                         ; $75de: $3c
    ld b, a                                       ; $75df: $47
    ret c                                         ; $75e0: $d8

    ld h, [hl]                                    ; $75e1: $66
    rst $28                                       ; $75e2: $ef
    rst $08                                       ; $75e3: $cf
    or $c0                                        ; $75e4: $f6 $c0
    add [hl]                                      ; $75e6: $86
    cp b                                          ; $75e7: $b8
    adc c                                         ; $75e8: $89
    di                                            ; $75e9: $f3
    inc hl                                        ; $75ea: $23
    ld a, h                                       ; $75eb: $7c
    pop af                                        ; $75ec: $f1
    ld c, a                                       ; $75ed: $4f
    call nc, Call_000_04f3                        ; $75ee: $d4 $f3 $04
    ld hl, $f2ff                                  ; $75f1: $21 $ff $f2
    ld [hl], c                                    ; $75f4: $71

jr_040_75f5:
    ld d, e                                       ; $75f5: $53
    dec l                                         ; $75f6: $2d
    or b                                          ; $75f7: $b0
    scf                                           ; $75f8: $37
    db $e4                                        ; $75f9: $e4
    halt                                          ; $75fa: $76
    inc c                                         ; $75fb: $0c
    add l                                         ; $75fc: $85
    daa                                           ; $75fd: $27
    ld a, [bc]                                    ; $75fe: $0a
    dec sp                                        ; $75ff: $3b
    push de                                       ; $7600: $d5
    inc sp                                        ; $7601: $33
    db $ec                                        ; $7602: $ec
    ld a, [hl]                                    ; $7603: $7e
    and e                                         ; $7604: $a3
    ld e, a                                       ; $7605: $5f
    ld bc, $f79e                                  ; $7606: $01 $9e $f7
    and e                                         ; $7609: $a3
    ld c, e                                       ; $760a: $4b
    adc l                                         ; $760b: $8d
    ld hl, sp+$50                                 ; $760c: $f8 $50
    inc d                                         ; $760e: $14
    sbc [hl]                                      ; $760f: $9e
    ld l, h                                       ; $7610: $6c
    adc a                                         ; $7611: $8f
    ld [hl], $ca                                  ; $7612: $36 $ca
    ld h, d                                       ; $7614: $62
    jr z, jr_040_767c                             ; $7615: $28 $65

    or d                                          ; $7617: $b2
    ret nz                                        ; $7618: $c0

    ld d, d                                       ; $7619: $52
    ld a, e                                       ; $761a: $7b
    or h                                          ; $761b: $b4
    xor $de                                       ; $761c: $ee $de
    cp b                                          ; $761e: $b8
    call nc, $015a                                ; $761f: $d4 $5a $01
    ld [hl], l                                    ; $7622: $75
    ld l, l                                       ; $7623: $6d
    ld d, $bb                                     ; $7624: $16 $bb
    adc c                                         ; $7626: $89
    sbc e                                         ; $7627: $9b
    ld d, d                                       ; $7628: $52
    ld e, a                                       ; $7629: $5f
    rra                                           ; $762a: $1f
    rst $08                                       ; $762b: $cf
    add hl, hl                                    ; $762c: $29
    ld e, $fe                                     ; $762d: $1e $fe
    cp a                                          ; $762f: $bf
    inc d                                         ; $7630: $14
    cp d                                          ; $7631: $ba
    rst $30                                       ; $7632: $f7
    rst $00                                       ; $7633: $c7
    ld l, e                                       ; $7634: $6b
    inc hl                                        ; $7635: $23
    adc h                                         ; $7636: $8c
    ld e, d                                       ; $7637: $5a
    xor c                                         ; $7638: $a9
    inc sp                                        ; $7639: $33
    sub d                                         ; $763a: $92
    ld a, [c]                                     ; $763b: $f2
    or $97                                        ; $763c: $f6 $97
    ld [$67dc], a                                 ; $763e: $ea $dc $67
    add c                                         ; $7641: $81
    push bc                                       ; $7642: $c5
    ld a, l                                       ; $7643: $7d
    sbc c                                         ; $7644: $99
    cp [hl]                                       ; $7645: $be
    rst $28                                       ; $7646: $ef
    ld l, e                                       ; $7647: $6b
    xor l                                         ; $7648: $ad
    ld l, l                                       ; $7649: $6d
    ld h, c                                       ; $764a: $61
    ld c, h                                       ; $764b: $4c
    ld b, e                                       ; $764c: $43
    xor l                                         ; $764d: $ad
    or h                                          ; $764e: $b4
    ld l, c                                       ; $764f: $69
    ld d, b                                       ; $7650: $50
    or l                                          ; $7651: $b5
    jp nc, Jump_000_092a                          ; $7652: $d2 $2a $09

    ld b, [hl]                                    ; $7655: $46
    ret z                                         ; $7656: $c8

    dec hl                                        ; $7657: $2b
    inc a                                         ; $7658: $3c
    xor c                                         ; $7659: $a9
    dec bc                                        ; $765a: $0b
    ld [hl], e                                    ; $765b: $73
    inc b                                         ; $765c: $04
    ld l, d                                       ; $765d: $6a
    xor l                                         ; $765e: $ad
    cp [hl]                                       ; $765f: $be
    push af                                       ; $7660: $f5
    jp hl                                         ; $7661: $e9


    ld d, d                                       ; $7662: $52
    inc hl                                        ; $7663: $23
    add l                                         ; $7664: $85
    xor $fd                                       ; $7665: $ee $fd
    ld [hl], c                                    ; $7667: $71
    ld l, a                                       ; $7668: $6f
    ld [hl], $44                                  ; $7669: $36 $44
    ld [c], a                                     ; $766b: $e2
    ld b, a                                       ; $766c: $47
    ld e, l                                       ; $766d: $5d
    jr jr_040_75f5                                ; $766e: $18 $85

    ccf                                           ; $7670: $3f
    ld l, [hl]                                    ; $7671: $6e
    inc h                                         ; $7672: $24
    jp c, $fcbe                                   ; $7673: $da $be $fc

    ld h, [hl]                                    ; $7676: $66
    cp e                                          ; $7677: $bb
    inc l                                         ; $7678: $2c
    ld b, $2f                                     ; $7679: $06 $2f
    sbc b                                         ; $767b: $98

jr_040_767c:
    xor a                                         ; $767c: $af
    ld e, a                                       ; $767d: $5f
    ld bc, $f86d                                  ; $767e: $01 $6d $f8
    ld c, a                                       ; $7681: $4f
    sub a                                         ; $7682: $97
    adc [hl]                                      ; $7683: $8e
    ld b, [hl]                                    ; $7684: $46
    ld [hl], h                                    ; $7685: $74
    add hl, hl                                    ; $7686: $29
    ld a, a                                       ; $7687: $7f
    ld [hl], c                                    ; $7688: $71
    cp $4b                                        ; $7689: $fe $4b
    adc l                                         ; $768b: $8d
    ld hl, sp+$50                                 ; $768c: $f8 $50
    inc d                                         ; $768e: $14
    sbc [hl]                                      ; $768f: $9e
    ld e, d                                       ; $7690: $5a
    dec hl                                        ; $7691: $2b
    ld l, l                                       ; $7692: $6d
    ld h, c                                       ; $7693: $61
    ld c, h                                       ; $7694: $4c
    add e                                         ; $7695: $83
    ld l, $32                                     ; $7696: $2e $32
    sub d                                         ; $7698: $92
    ld a, [de]                                    ; $7699: $1a
    add c                                         ; $769a: $81
    and d                                         ; $769b: $a2
    xor $79                                       ; $769c: $ee $79
    ld [c], a                                     ; $769e: $e2
    cp l                                          ; $769f: $bd
    ld d, d                                       ; $76a0: $52
    sbc $90                                       ; $76a1: $de $90
    adc l                                         ; $76a3: $8d
    inc l                                         ; $76a4: $2c
    or b                                          ; $76a5: $b0
    ld [hl-], a                                   ; $76a6: $32
    add d                                         ; $76a7: $82
    sbc d                                         ; $76a8: $9a
    dec hl                                        ; $76a9: $2b
    sbc [hl]                                      ; $76aa: $9e
    cp $4b                                        ; $76ab: $fe $4b
    adc l                                         ; $76ad: $8d
    ld e, d                                       ; $76ae: $5a
    dec hl                                        ; $76af: $2b
    db $ed                                        ; $76b0: $ed
    ld b, e                                       ; $76b1: $43
    db $db                                        ; $76b2: $db
    scf                                           ; $76b3: $37
    add hl, hl                                    ; $76b4: $29
    cp a                                          ; $76b5: $bf
    rst $08                                       ; $76b6: $cf
    ret nc                                        ; $76b7: $d0

    rst $30                                       ; $76b8: $f7
    ld a, l                                       ; $76b9: $7d
    ld l, [hl]                                    ; $76ba: $6e
    add a                                         ; $76bb: $87
    dec c                                         ; $76bc: $0d
    ld [hl-], a                                   ; $76bd: $32
    add hl, hl                                    ; $76be: $29
    db $fc                                        ; $76bf: $fc
    ld e, c                                       ; $76c0: $59
    ld h, b                                       ; $76c1: $60
    ld e, c                                       ; $76c2: $59
    sbc $f8                                       ; $76c3: $de $f8
    inc c                                         ; $76c5: $0c
    db $fd                                        ; $76c6: $fd
    ld a, [bc]                                    ; $76c7: $0a
    ld [hl], l                                    ; $76c8: $75
    ld b, [hl]                                    ; $76c9: $46
    ld a, [c]                                     ; $76ca: $f2
    ld a, e                                       ; $76cb: $7b
    adc a                                         ; $76cc: $8f
    ldh a, [$cb]                                  ; $76cd: $f0 $cb
    dec de                                        ; $76cf: $1b
    ld e, a                                       ; $76d0: $5f
    ret c                                         ; $76d1: $d8

    ld h, [hl]                                    ; $76d2: $66
    ld e, c                                       ; $76d3: $59
    and [hl]                                      ; $76d4: $a6
    rst $28                                       ; $76d5: $ef
    ei                                            ; $76d6: $fb
    call c, Call_000_1b0e                         ; $76d7: $dc $0e $1b
    ld h, h                                       ; $76da: $64
    ld d, d                                       ; $76db: $52
    ld hl, sp-$4d                                 ; $76dc: $f8 $b3
    ret nz                                        ; $76de: $c0

    or d                                          ; $76df: $b2
    cp h                                          ; $76e0: $bc
    pop af                                        ; $76e1: $f1
    add hl, de                                    ; $76e2: $19
    ld a, [$6d15]                                 ; $76e3: $fa $15 $6d
    ld c, e                                       ; $76e6: $4b
    call c, Call_000_0d9b                         ; $76e7: $dc $9b $0d
    sub c                                         ; $76ea: $91
    ld hl, sp+$35                                 ; $76eb: $f8 $35
    ld d, a                                       ; $76ed: $57

jr_040_76ee:
    dec e                                         ; $76ee: $1d
    ld d, d                                       ; $76ef: $52
    inc d                                         ; $76f0: $14
    or $78                                        ; $76f1: $f6 $78
    sub c                                         ; $76f3: $91
    ld c, c                                       ; $76f4: $49
    ld b, c                                       ; $76f5: $41
    and l                                         ; $76f6: $a5
    or a                                          ; $76f7: $b7
    rst $08                                       ; $76f8: $cf
    ld h, d                                       ; $76f9: $62
    or e                                          ; $76fa: $b3
    ret c                                         ; $76fb: $d8

    ld c, l                                       ; $76fc: $4d
    xor b                                         ; $76fd: $a8
    ld b, h                                       ; $76fe: $44
    adc a                                         ; $76ff: $8f
    dec e                                         ; $7700: $1d
    call $b2e8                                    ; $7701: $cd $e8 $b2
    ld c, h                                       ; $7704: $4c
    call nc, Call_000_30a5                        ; $7705: $d4 $a5 $30
    ld d, l                                       ; $7708: $55
    db $10                                        ; $7709: $10
    cp [hl]                                       ; $770a: $be
    ld a, [hl]                                    ; $770b: $7e
    dec b                                         ; $770c: $05
    ld l, l                                       ; $770d: $6d
    jp c, Jump_000_1967                           ; $770e: $da $67 $19

    scf                                           ; $7711: $37
    add hl, hl                                    ; $7712: $29
    sub a                                         ; $7713: $97
    push hl                                       ; $7714: $e5
    adc l                                         ; $7715: $8d
    pop de                                        ; $7716: $d1
    xor a                                         ; $7717: $af
    cp [hl]                                       ; $7718: $be
    inc hl                                        ; $7719: $23
    inc de                                        ; $771a: $13
    rra                                           ; $771b: $1f
    ld a, d                                       ; $771c: $7a
    ld e, c                                       ; $771d: $59
    ld h, b                                       ; $771e: $60
    add hl, hl                                    ; $771f: $29
    cp a                                          ; $7720: $bf
    add hl, hl                                    ; $7721: $29
    cp a                                          ; $7722: $bf
    ld hl, $53b7                                  ; $7723: $21 $b7 $53
    db $dd                                        ; $7726: $dd
    ld b, h                                       ; $7727: $44
    ld l, [hl]                                    ; $7728: $6e
    add hl, de                                    ; $7729: $19
    ld a, $99                                     ; $772a: $3e $99
    jr c, jr_040_776d                             ; $772c: $38 $3f

    or d                                          ; $772e: $b2
    cp h                                          ; $772f: $bc
    ld sp, $c0b2                                  ; $7730: $31 $b2 $c0
    ld d, d                                       ; $7733: $52
    ld a, e                                       ; $7734: $7b
    or h                                          ; $7735: $b4
    xor $de                                       ; $7736: $ee $de
    cp b                                          ; $7738: $b8
    db $f4                                        ; $7739: $f4
    dec hl                                        ; $773a: $2b
    ld [hl], l                                    ; $773b: $75
    ld b, [hl]                                    ; $773c: $46
    and [hl]                                      ; $773d: $a6
    ldh a, [$0b]                                  ; $773e: $f0 $0b
    inc hl                                        ; $7740: $23
    ld [hl-], a                                   ; $7741: $32
    ld [de], a                                    ; $7742: $12
    rst $30                                       ; $7743: $f7
    rl l                                          ; $7744: $cb $15
    rst $30                                       ; $7746: $f7
    ld [hl-], a                                   ; $7747: $32
    sub c                                         ; $7748: $91
    add e                                         ; $7749: $83
    jr nc, jr_040_76ee                            ; $774a: $30 $a2

    ld l, $d5                                     ; $774c: $2e $d5
    ld l, e                                       ; $774e: $6b
    rst $30                                       ; $774f: $f7
    cp d                                          ; $7750: $ba
    ld e, h                                       ; $7751: $5c
    ld e, d                                       ; $7752: $5a
    ld a, e                                       ; $7753: $7b
    cp l                                          ; $7754: $bd
    cp $e5                                        ; $7755: $fe $e5
    ld [c], a                                     ; $7757: $e2
    and [hl]                                      ; $7758: $a6
    or b                                          ; $7759: $b0
    pop de                                        ; $775a: $d1
    dec hl                                        ; $775b: $2b
    ld l, [hl]                                    ; $775c: $6e
    ld h, h                                       ; $775d: $64
    and d                                         ; $775e: $a2
    ld [hl], b                                    ; $775f: $70
    ld h, c                                       ; $7760: $61
    add e                                         ; $7761: $83
    ld e, h                                       ; $7762: $5c
    call nc, $9865                                ; $7763: $d4 $65 $98
    xor a                                         ; $7766: $af
    ld a, [$d0f8]                                 ; $7767: $fa $f8 $d0
    rst $18                                       ; $776a: $df
    rst $00                                       ; $776b: $c7
    push af                                       ; $776c: $f5

jr_040_776d:
    db $f4                                        ; $776d: $f4
    dec hl                                        ; $776e: $2b
    ld [hl], l                                    ; $776f: $75
    ld b, [hl]                                    ; $7770: $46
    ld b, d                                       ; $7771: $42
    ld b, d                                       ; $7772: $42
    ld c, l                                       ; $7773: $4d
    or [hl]                                       ; $7774: $b6
    rst $00                                       ; $7775: $c7
    ret c                                         ; $7776: $d8

    ld b, a                                       ; $7777: $47
    ld e, l                                       ; $7778: $5d
    sbc $ec                                       ; $7779: $de $ec
    ret z                                         ; $777b: $c8

    scf                                           ; $777c: $37
    inc b                                         ; $777d: $04
    pop hl                                        ; $777e: $e1
    pop de                                        ; $777f: $d1
    or $c1                                        ; $7780: $f6 $c1
    xor d                                         ; $7782: $aa
    adc e                                         ; $7783: $8b
    rrca                                          ; $7784: $0f
    ld b, l                                       ; $7785: $45
    pop hl                                        ; $7786: $e1
    set 5, e                                      ; $7787: $cb $eb
    adc a                                         ; $7789: $8f
    cpl                                           ; $778a: $2f
    ld [$dad3], a                                 ; $778b: $ea $d3 $da
    db $eb                                        ; $778e: $eb
    push af                                       ; $778f: $f5
    cpl                                           ; $7790: $2f
    db $d3                                        ; $7791: $d3
    rst $00                                       ; $7792: $c7
    ld [hl], a                                    ; $7793: $77
    ld h, h                                       ; $7794: $64
    ld [c], a                                     ; $7795: $e2
    and [hl]                                      ; $7796: $a6
    call nc, $e297                                ; $7797: $d4 $97 $e2
    and [hl]                                      ; $779a: $a6
    ld a, [de]                                    ; $779b: $1a
    ld [hl], l                                    ; $779c: $75
    dec [hl]                                      ; $779d: $35
    ld d, a                                       ; $779e: $57
    dec e                                         ; $779f: $1d
    xor b                                         ; $77a0: $a8
    sbc e                                         ; $77a1: $9b
    sbc h                                         ; $77a2: $9c
    xor b                                         ; $77a3: $a8
    add hl, hl                                    ; $77a4: $29
    push hl                                       ; $77a5: $e5
    dec c                                         ; $77a6: $0d
    pop de                                        ; $77a7: $d1
    or $e5                                        ; $77a8: $f6 $e5
    push af                                       ; $77aa: $f5
    rst $00                                       ; $77ab: $c7
    rla                                           ; $77ac: $17
    add l                                         ; $77ad: $85
    ld c, e                                       ; $77ae: $4b
    ld l, e                                       ; $77af: $6b
    xor a                                         ; $77b0: $af
    rst $10                                       ; $77b1: $d7
    cp a                                          ; $77b2: $bf
    ld e, h                                       ; $77b3: $5c
    rst $18                                       ; $77b4: $df
    rst $30                                       ; $77b5: $f7
    xor c                                         ; $77b6: $a9
    ld a, $1b                                     ; $77b7: $3e $1b
    add hl, hl                                    ; $77b9: $29
    xor $6d                                       ; $77ba: $ee $6d
    ld b, c                                       ; $77bc: $41
    jp z, $c4c8                                   ; $77bd: $ca $c8 $c4

    cp l                                          ; $77c0: $bd
    sbc l                                         ; $77c1: $9d
    and b                                         ; $77c2: $a0
    and $0a                                       ; $77c3: $e6 $0a
    cp [hl]                                       ; $77c5: $be
    dec bc                                        ; $77c6: $0b
    ld l, h                                       ; $77c7: $6c
    ld [c], a                                     ; $77c8: $e2
    db $fc                                        ; $77c9: $fc
    adc b                                         ; $77ca: $88
    rrca                                          ; $77cb: $0f
    ld b, l                                       ; $77cc: $45
    pop hl                                        ; $77cd: $e1
    set 5, e                                      ; $77ce: $cb $eb
    adc a                                         ; $77d0: $8f
    cpl                                           ; $77d1: $2f
    ld [$dad3], a                                 ; $77d2: $ea $d3 $da
    db $eb                                        ; $77d5: $eb
    push af                                       ; $77d6: $f5
    cpl                                           ; $77d7: $2f
    inc de                                        ; $77d8: $13
    add hl, de                                    ; $77d9: $19
    ld c, c                                       ; $77da: $49
    ld [hl], l                                    ; $77db: $75
    pop af                                        ; $77dc: $f1
    cp [hl]                                       ; $77dd: $be
    ld [hl], e                                    ; $77de: $73
    rst $30                                       ; $77df: $f7
    ld [hl-], a                                   ; $77e0: $32
    reti                                          ; $77e1: $d9


    adc b                                         ; $77e2: $88
    di                                            ; $77e3: $f3
    rst $18                                       ; $77e4: $df
    cpl                                           ; $77e5: $2f
    dec bc                                        ; $77e6: $0b
    jp nz, $cb36                                  ; $77e7: $c2 $36 $cb

    ld [hl-], a                                   ; $77ea: $32
    pop de                                        ; $77eb: $d1
    ld l, h                                       ; $77ec: $6c
    ld c, d                                       ; $77ed: $4a
    ld b, c                                       ; $77ee: $41
    cp a                                          ; $77ef: $bf
    ld [bc], a                                    ; $77f0: $02
    dec e                                         ; $77f1: $1d
    ld d, d                                       ; $77f2: $52
    inc d                                         ; $77f3: $14
    cp $e8                                        ; $77f4: $fe $e8
    ld e, a                                       ; $77f6: $5f
    sbc h                                         ; $77f7: $9c
    rst $38                                       ; $77f8: $ff
    db $e4                                        ; $77f9: $e4
    di                                            ; $77fa: $f3
    and h                                         ; $77fb: $a4
    ld b, c                                       ; $77fc: $41
    xor a                                         ; $77fd: $af
    ld b, a                                       ; $77fe: $47
    db $f4                                        ; $77ff: $f4
    ld d, a                                       ; $7800: $57
    ld b, [hl]                                    ; $7801: $46
    sub e                                         ; $7802: $93
    adc c                                         ; $7803: $89
    cp d                                          ; $7804: $ba
    inc l                                         ; $7805: $2c
    rst $10                                       ; $7806: $d7
    ld b, b                                       ; $7807: $40
    sub [hl]                                      ; $7808: $96
    rla                                           ; $7809: $17
    rst $20                                       ; $780a: $e7
    ccf                                           ; $780b: $3f
    ld b, c                                       ; $780c: $41
    cp a                                          ; $780d: $bf
    ld [bc], a                                    ; $780e: $02
    xor l                                         ; $780f: $ad
    rrca                                          ; $7810: $0f
    ld l, c                                       ; $7811: $69
    cp b                                          ; $7812: $b8
    cp h                                          ; $7813: $bc
    halt                                          ; $7814: $76
    db $fc                                        ; $7815: $fc
    add [hl]                                      ; $7816: $86
    db $ec                                        ; $7817: $ec
    ld c, a                                       ; $7818: $4f
    push af                                       ; $7819: $f5
    ld [hl-], a                                   ; $781a: $32
    ld e, c                                       ; $781b: $59
    ld h, b                                       ; $781c: $60
    add hl, hl                                    ; $781d: $29
    cp a                                          ; $781e: $bf
    add hl, hl                                    ; $781f: $29
    cp a                                          ; $7820: $bf
    ld hl, $d697                                  ; $7821: $21 $97 $d6
    ld e, [hl]                                    ; $7824: $5e
    xor a                                         ; $7825: $af
    ld a, a                                       ; $7826: $7f
    cp c                                          ; $7827: $b9
    ld e, d                                       ; $7828: $5a
    dec hl                                        ; $7829: $2b
    sbc l                                         ; $782a: $9d
    adc [hl]                                      ; $782b: $8e
    or [hl]                                       ; $782c: $b6
    ld l, a                                       ; $782d: $6f
    add d                                         ; $782e: $82
    ld d, d                                       ; $782f: $52
    ld h, b                                       ; $7830: $60
    ret z                                         ; $7831: $c8

    db $ed                                        ; $7832: $ed
    inc l                                         ; $7833: $2c
    halt                                          ; $7834: $76
    push de                                       ; $7835: $d5
    db $e4                                        ; $7836: $e4
    ld b, e                                       ; $7837: $43
    ld b, d                                       ; $7838: $42
    pop bc                                        ; $7839: $c1
    sub b                                         ; $783a: $90
    jp c, $75a3                                   ; $783b: $da $a3 $75

    rst $30                                       ; $783e: $f7
    add $a5                                       ; $783f: $c6 $a5
    ld e, a                                       ; $7841: $5f
    ld bc, $27b5                                  ; $7842: $01 $b5 $27
    sbc $67                                       ; $7845: $de $67
    sbc [hl]                                      ; $7847: $9e
    ldh a, [$0b]                                  ; $7848: $f0 $0b
    ld a, a                                       ; $784a: $7f
    ld a, [bc]                                    ; $784b: $0a
    db $db                                        ; $784c: $db
    xor e                                         ; $784d: $ab
    rst $08                                       ; $784e: $cf
    ld [bc], a                                    ; $784f: $02
    res 1, e                                      ; $7850: $cb $8b
    ld a, d                                       ; $7852: $7a
    ld b, e                                       ; $7853: $43
    ld a, $b5                                     ; $7854: $3e $b5
    ld b, a                                       ; $7856: $47
    db $eb                                        ; $7857: $eb
    xor $8d                                       ; $7858: $ee $8d
    ld c, e                                       ; $785a: $4b
    cp a                                          ; $785b: $bf
    ld [bc], a                                    ; $785c: $02
    cp [hl]                                       ; $785d: $be
    dec bc                                        ; $785e: $0b
    ld l, h                                       ; $785f: $6c
    and d                                         ; $7860: $a2
    ld l, $32                                     ; $7861: $2e $32
    sub d                                         ; $7863: $92
    ld [hl-], a                                   ; $7864: $32
    ld e, [hl]                                    ; $7865: $5e
    xor a                                         ; $7866: $af
    sbc l                                         ; $7867: $9d
    ld hl, $c3b7                                  ; $7868: $21 $b7 $c3
    ld b, $99                                     ; $786b: $06 $99
    ld a, [hl]                                    ; $786d: $7e
    dec b                                         ; $786e: $05
    sbc l                                         ; $786f: $9d
    adc [hl]                                      ; $7870: $8e
    add hl, de                                    ; $7871: $19
    ld l, $ce                                     ; $7872: $2e $ce
    adc a                                         ; $7874: $8f
    ld d, h                                       ; $7875: $54
    rst $30                                       ; $7876: $f7
    xor c                                         ; $7877: $a9
    ld e, [hl]                                    ; $7878: $5e
    add hl, de                                    ; $7879: $19
    ld d, d                                       ; $787a: $52
    ld e, l                                       ; $787b: $5d
    or $17                                        ; $787c: $f6 $17
    ld [hl], a                                    ; $787e: $77
    ld e, a                                       ; $787f: $5f
    ld a, [bc]                                    ; $7880: $0a
    ld b, d                                       ; $7881: $42
    and d                                         ; $7882: $a2
    ldh a, [rNR24]                                ; $7883: $f0 $19
    and d                                         ; $7885: $a2
    ld a, $65                                     ; $7886: $3e $65
    or $f4                                        ; $7888: $f6 $f4
    dec hl                                        ; $788a: $2b
    sbc [hl]                                      ; $788b: $9e
    rla                                           ; $788c: $17

Call_040_788d:
    rst $28                                       ; $788d: $ef
    db $db                                        ; $788e: $db
    adc e                                         ; $788f: $8b
    ld c, h                                       ; $7890: $4c
    ld c, b                                       ; $7891: $48
    jr z, jr_040_78ac                             ; $7892: $28 $18

    ld b, d                                       ; $7894: $42
    dec h                                         ; $7895: $25
    sbc $db                                       ; $7896: $de $db
    ld d, l                                       ; $7898: $55
    xor l                                         ; $7899: $ad
    dec d                                         ; $789a: $15
    cp [hl]                                       ; $789b: $be
    dec bc                                        ; $789c: $0b
    ld l, h                                       ; $789d: $6c
    and d                                         ; $789e: $a2
    ld l, $2f                                     ; $789f: $2e $2f
    ld [$f90d], a                                 ; $78a1: $ea $0d $f9
    ld [hl], h                                    ; $78a4: $74
    db $fc                                        ; $78a5: $fc
    and l                                         ; $78a6: $a5
    adc h                                         ; $78a7: $8c
    ld c, l                                       ; $78a8: $4d
    add hl, hl                                    ; $78a9: $29
    db $d3                                        ; $78aa: $d3
    and a                                         ; $78ab: $a7

jr_040_78ac:
    dec c                                         ; $78ac: $0d
    ei                                            ; $78ad: $fb
    db $ec                                        ; $78ae: $ec
    adc a                                         ; $78af: $8f
    ei                                            ; $78b0: $fb
    ld a, [c]                                     ; $78b1: $f2
    ld d, c                                       ; $78b2: $51
    ret c                                         ; $78b3: $d8

    xor c                                         ; $78b4: $a9
    ld l, [hl]                                    ; $78b5: $6e
    or d                                          ; $78b6: $b2
    db $fc                                        ; $78b7: $fc
    ld d, d                                       ; $78b8: $52
    ld c, a                                       ; $78b9: $4f
    cp a                                          ; $78ba: $bf
    ld [bc], a                                    ; $78bb: $02
    db $ed                                        ; $78bc: $ed
    ld e, a                                       ; $78bd: $5f
    jp z, $ef72                                   ; $78be: $ca $72 $ef

    and b                                         ; $78c1: $a0
    ld c, e                                       ; $78c2: $4b
    push af                                       ; $78c3: $f5
    add hl, hl                                    ; $78c4: $29
    inc hl                                        ; $78c5: $23
    inc de                                        ; $78c6: $13
    or [hl]                                       ; $78c7: $b6
    ld e, c                                       ; $78c8: $59
    sub [hl]                                      ; $78c9: $96
    ret                                           ; $78ca: $c9


    ld d, l                                       ; $78cb: $55
    dec bc                                        ; $78cc: $0b
    inc [hl]                                      ; $78cd: $34
    ld a, c                                       ; $78ce: $79
    sbc [hl]                                      ; $78cf: $9e
    cp b                                          ; $78d0: $b8
    sub c                                         ; $78d1: $91
    call c, Call_040_754e                         ; $78d2: $dc $4e $75
    inc de                                        ; $78d5: $13
    db $ed                                        ; $78d6: $ed
    add $4d                                       ; $78d7: $c6 $4d
    cp a                                          ; $78d9: $bf
    ld [bc], a                                    ; $78da: $02
    ld [hl], l                                    ; $78db: $75
    ld b, [hl]                                    ; $78dc: $46
    or d                                          ; $78dd: $b2
    ld c, h                                       ; $78de: $4c
    add hl, hl                                    ; $78df: $29
    sub e                                         ; $78e0: $93
    push hl                                       ; $78e1: $e5
    ld l, l                                       ; $78e2: $6d
    cp a                                          ; $78e3: $bf
    ld b, c                                       ; $78e4: $41
    sub a                                         ; $78e5: $97
    jp nz, $0713                                  ; $78e6: $c2 $13 $07

    ld [hl], e                                    ; $78e9: $73
    cpl                                           ; $78ea: $2f
    ld l, d                                       ; $78eb: $6a
    and d                                         ; $78ec: $a2
    ld l, $85                                     ; $78ed: $2e $85
    ld e, a                                       ; $78ef: $5f
    ld a, a                                       ; $78f0: $7f
    ei                                            ; $78f1: $fb
    inc c                                         ; $78f2: $0c
    and c                                         ; $78f3: $a1
    ld [de], a                                    ; $78f4: $12
    and c                                         ; $78f5: $a1
    ld b, e                                       ; $78f6: $43
    ld c, [hl]                                    ; $78f7: $4e
    inc c                                         ; $78f8: $0c
    ld l, [hl]                                    ; $78f9: $6e
    ld c, h                                       ; $78fa: $4c
    push af                                       ; $78fb: $f5
    dec hl                                        ; $78fc: $2b
    dec l                                         ; $78fd: $2d
    ld h, a                                       ; $78fe: $67
    ld a, a                                       ; $78ff: $7f
    ld d, $bb                                     ; $7900: $16 $bb
    ld [$ce43], a                                 ; $7902: $ea $43 $ce
    and $8f                                       ; $7905: $e6 $8f
    di                                            ; $7907: $f3
    inc hl                                        ; $7908: $23
    push hl                                       ; $7909: $e5
    or a                                          ; $790a: $b7
    ld [hl], $29                                  ; $790b: $36 $29
    inc [hl]                                      ; $790d: $34
    ld d, h                                       ; $790e: $54
    jp nz, $9906                                  ; $790f: $c2 $06 $99

    sbc d                                         ; $7912: $9a
    dec hl                                        ; $7913: $2b
    ld l, l                                       ; $7914: $6d
    rst $28                                       ; $7915: $ef
    ld d, h                                       ; $7916: $54
    scf                                           ; $7917: $37
    pop af                                        ; $7918: $f1
    sbc [hl]                                      ; $7919: $9e
    and b                                         ; $791a: $a0
    or b                                          ; $791b: $b0
    sbc l                                         ; $791c: $9d
    ld c, h                                       ; $791d: $4c
    ld l, d                                       ; $791e: $6a
    ld b, h                                       ; $791f: $44
    cp a                                          ; $7920: $bf
    rst $00                                       ; $7921: $c7
    cp c                                          ; $7922: $b9
    rst $20                                       ; $7923: $e7
    jp hl                                         ; $7924: $e9


    ld d, a                                       ; $7925: $57
    xor l                                         ; $7926: $ad
    rrca                                          ; $7927: $0f
    jp hl                                         ; $7928: $e9


    ld d, c                                       ; $7929: $51
    inc hl                                        ; $792a: $23
    or a                                          ; $792b: $b7
    ld b, e                                       ; $792c: $43
    cp [hl]                                       ; $792d: $be
    ld [hl], $82                                  ; $792e: $36 $82
    ret c                                         ; $7930: $d8

    dec d                                         ; $7931: $15
    ld e, $7b                                     ; $7932: $1e $7b
    ld h, c                                       ; $7934: $61
    call nc, $015a                                ; $7935: $d4 $5a $01
    xor l                                         ; $7938: $ad
    rrca                                          ; $7939: $0f
    jp hl                                         ; $793a: $e9


    ld d, c                                       ; $793b: $51
    inc hl                                        ; $793c: $23
    ei                                            ; $793d: $fb
    or e                                          ; $793e: $b3
    rst $00                                       ; $793f: $c7
    ld c, l                                       ; $7940: $4d
    dec [hl]                                      ; $7941: $35
    ld a, h                                       ; $7942: $7c
    db $e4                                        ; $7943: $e4
    rst $10                                       ; $7944: $d7
    ld e, d                                       ; $7945: $5a
    ld bc, $872d                                  ; $7946: $01 $2d $87
    ld c, d                                       ; $7949: $4a
    ld b, [hl]                                    ; $794a: $46
    add $10                                       ; $794b: $c6 $10
    rst $28                                       ; $794d: $ef
    dec de                                        ; $794e: $1b
    or d                                          ; $794f: $b2
    ccf                                           ; $7950: $3f
    ld c, h                                       ; $7951: $4c
    ccf                                           ; $7952: $3f
    ld l, [hl]                                    ; $7953: $6e
    ld h, h                                       ; $7954: $64
    adc d                                         ; $7955: $8a
    add e                                         ; $7956: $83
    db $10                                        ; $7957: $10
    ld e, a                                       ; $7958: $5f
    sub a                                         ; $7959: $97
    cp d                                          ; $795a: $ba
    jp $eb0c                                      ; $795b: $c3 $0c $eb


    ld d, a                                       ; $795e: $57
    ld [hl], l                                    ; $795f: $75
    ld b, [hl]                                    ; $7960: $46
    ld b, d                                       ; $7961: $42
    ld b, d                                       ; $7962: $42
    ld c, l                                       ; $7963: $4d

Jump_040_7964:
    or [hl]                                       ; $7964: $b6
    rst $00                                       ; $7965: $c7
    ret c                                         ; $7966: $d8

    ld b, a                                       ; $7967: $47
    ld e, l                                       ; $7968: $5d
    jr nz, jr_040_79d7                            ; $7969: $20 $6c

    ld l, a                                       ; $796b: $6f
    ret z                                         ; $796c: $c8

    rst $00                                       ; $796d: $c7
    ei                                            ; $796e: $fb
    sub [hl]                                      ; $796f: $96
    push hl                                       ; $7970: $e5
    adc l                                         ; $7971: $8d
    ld de, $1d85                                  ; $7972: $11 $85 $1d
    rst $08                                       ; $7975: $cf
    ld c, l                                       ; $7976: $4d
    push af                                       ; $7977: $f5
    ld d, c                                       ; $7978: $51
    cp b                                          ; $7979: $b8
    ld a, b                                       ; $797a: $78
    adc $de                                       ; $797b: $ce $de
    jr nz, @-$20                                  ; $797d: $20 $de

    ret z                                         ; $797f: $c8

    dec d                                         ; $7980: $15
    cp [hl]                                       ; $7981: $be
    xor b                                         ; $7982: $a8
    adc e                                         ; $7983: $8b
    cpl                                           ; $7984: $2f
    dec de                                        ; $7985: $1b
    inc [hl]                                      ; $7986: $34
    ccf                                           ; $7987: $3f
    add d                                         ; $7988: $82
    ld d, h                                       ; $7989: $54
    xor a                                         ; $798a: $af
    ld sp, hl                                     ; $798b: $f9
    cpl                                           ; $798c: $2f
    sbc $af                                       ; $798d: $de $af
    and [hl]                                      ; $798f: $a6
    ld e, h                                       ; $7990: $5c
    call nc, $f6a5                                ; $7991: $d4 $a5 $f6
    ld l, b                                       ; $7994: $68
    db $dd                                        ; $7995: $dd
    cp l                                          ; $7996: $bd
    ld [hl], c                                    ; $7997: $71
    xor c                                         ; $7998: $a9
    cp c                                          ; $7999: $b9
    ld [bc], a                                    ; $799a: $02
    sbc [hl]                                      ; $799b: $9e
    ld b, a                                       ; $799c: $47
    cp l                                          ; $799d: $bd
    sbc $b8                                       ; $799e: $de $b8
    and e                                         ; $79a0: $a3
    ld e, [hl]                                    ; $79a1: $5e
    xor a                                         ; $79a2: $af
    ld l, $ee                                     ; $79a3: $2e $ee
    xor b                                         ; $79a5: $a8
    rst $10                                       ; $79a6: $d7
    dec de                                        ; $79a7: $1b
    ld [hl], a                                    ; $79a8: $77
    call nc, $adeb                                ; $79a9: $d4 $eb $ad
    cp c                                          ; $79ac: $b9
    ld [bc], a                                    ; $79ad: $02
    sbc l                                         ; $79ae: $9d
    adc [hl]                                      ; $79af: $8e
    or [hl]                                       ; $79b0: $b6
    ld l, a                                       ; $79b1: $6f
    ld [c], a                                     ; $79b2: $e2
    ld b, [hl]                                    ; $79b3: $46
    and [hl]                                      ; $79b4: $a6
    jr c, jr_040_79cf                             ; $79b5: $38 $18

    or d                                          ; $79b7: $b2
    ccf                                           ; $79b8: $3f
    db $ed                                        ; $79b9: $ed
    cp a                                          ; $79ba: $bf
    halt                                          ; $79bb: $76
    rra                                           ; $79bc: $1f
    add l                                         ; $79bd: $85
    cp l                                          ; $79be: $bd
    ccf                                           ; $79bf: $3f
    dec e                                         ; $79c0: $1d
    jp $fbec                                      ; $79c1: $c3 $ec $fb


    or h                                          ; $79c4: $b4
    xor d                                         ; $79c5: $aa
    add $26                                       ; $79c6: $c6 $26
    push bc                                       ; $79c8: $c5
    dec a                                         ; $79c9: $3d
    ld sp, hl                                     ; $79ca: $f9
    add [hl]                                      ; $79cb: $86
    ld a, [hl]                                    ; $79cc: $7e
    dec b                                         ; $79cd: $05
    sbc [hl]                                      ; $79ce: $9e

jr_040_79cf:
    ld d, e                                       ; $79cf: $53
    ld a, $85                                     ; $79d0: $3e $85
    rst $38                                       ; $79d2: $ff
    and d                                         ; $79d3: $a2
    pop de                                        ; $79d4: $d1
    scf                                           ; $79d5: $37
    push af                                       ; $79d6: $f5

jr_040_79d7:
    and d                                         ; $79d7: $a2
    and [hl]                                      ; $79d8: $a6
    sub $0a                                       ; $79d9: $d6 $0a
    ld l, l                                       ; $79db: $6d
    rst $28                                       ; $79dc: $ef
    cp b                                          ; $79dd: $b8
    ld de, $1d45                                  ; $79de: $11 $45 $1d
    add h                                         ; $79e1: $84
    ld de, $87ff                                  ; $79e2: $11 $ff $87
    jp z, $b0a4                                   ; $79e5: $ca $a4 $b0

    cp l                                          ; $79e8: $bd
    ld c, h                                       ; $79e9: $4c
    ld b, [hl]                                    ; $79ea: $46
    adc l                                         ; $79eb: $8d
    and c                                         ; $79ec: $a1
    ld e, a                                       ; $79ed: $5f
    ld bc, $6ebe                                  ; $79ee: $01 $be $6e
    xor d                                         ; $79f1: $aa
    ld a, [bc]                                    ; $79f2: $0a
    call z, $e713                                 ; $79f3: $cc $13 $e7
    ld b, a                                       ; $79f6: $47
    ld l, d                                       ; $79f7: $6a
    add h                                         ; $79f8: $84
    jp z, $bb47                                   ; $79f9: $ca $47 $bb

    ld sp, $fe79                                  ; $79fc: $31 $79 $fe
    ld d, h                                       ; $79ff: $54
    or e                                          ; $7a00: $b3
    ld a, c                                       ; $7a01: $79
    ld b, d                                       ; $7a02: $42
    ld b, d                                       ; $7a03: $42
    ld a, b                                       ; $7a04: $78
    jp z, $2bf7                                   ; $7a05: $ca $f7 $2b

    xor l                                         ; $7a08: $ad
    rrca                                          ; $7a09: $0f
    ld l, c                                       ; $7a0a: $69
    ret nc                                        ; $7a0b: $d0

    db $eb                                        ; $7a0c: $eb
    ld h, c                                       ; $7a0d: $61
    inc de                                        ; $7a0e: $13
    push af                                       ; $7a0f: $f5
    add [hl]                                      ; $7a10: $86
    ld d, b                                       ; $7a11: $50
    ld sp, hl                                     ; $7a12: $f9
    add sp, -$4f                                  ; $7a13: $e8 $b1
    rst $30                                       ; $7a15: $f7
    rst $00                                       ; $7a16: $c7
    ld l, [hl]                                    ; $7a17: $6e
    and c                                         ; $7a18: $a1
    ei                                            ; $7a19: $fb
    ld hl, sp-$0d                                 ; $7a1a: $f8 $f3
    pop af                                        ; $7a1c: $f1
    and c                                         ; $7a1d: $a1
    jr z, jr_040_7a9c                             ; $7a1e: $28 $7c

    pop af                                        ; $7a20: $f1
    sbc [hl]                                      ; $7a21: $9e
    and b                                         ; $7a22: $a0
    or b                                          ; $7a23: $b0
    sbc l                                         ; $7a24: $9d
    ld e, h                                       ; $7a25: $5c
    cp a                                          ; $7a26: $bf
    ld [bc], a                                    ; $7a27: $02
    db $ed                                        ; $7a28: $ed
    ld e, a                                       ; $7a29: $5f
    cp [hl]                                       ; $7a2a: $be
    inc l                                         ; $7a2b: $2c
    ld h, b                                       ; $7a2c: $60
    ld a, [hl]                                    ; $7a2d: $7e
    ld [hl], d                                    ; $7a2e: $72
    ld b, d                                       ; $7a2f: $42
    push hl                                       ; $7a30: $e5
    db $e3                                        ; $7a31: $e3
    sbc $6c                                       ; $7a32: $de $6c
    adc b                                         ; $7a34: $88
    call nz, $62cf                                ; $7a35: $c4 $cf $62
    ld b, a                                       ; $7a38: $47
    ld a, $7f                                     ; $7a39: $3e $7f
    cp a                                          ; $7a3b: $bf
    ld [bc], a                                    ; $7a3c: $02
    ld [hl], l                                    ; $7a3d: $75
    ld b, [hl]                                    ; $7a3e: $46
    ld d, d                                       ; $7a3f: $52
    ld a, b                                       ; $7a40: $78
    or d                                          ; $7a41: $b2
    ld e, h                                       ; $7a42: $5c
    inc bc                                        ; $7a43: $03
    ld de, $fdec                                  ; $7a44: $11 $ec $fd
    ld e, c                                       ; $7a47: $59
    or b                                          ; $7a48: $b0
    scf                                           ; $7a49: $37
    ld [hl], h                                    ; $7a4a: $74
    pop af                                        ; $7a4b: $f1
    ld c, a                                       ; $7a4c: $4f
    db $f4                                        ; $7a4d: $f4
    ld d, a                                       ; $7a4e: $57
    ld b, [hl]                                    ; $7a4f: $46
    sub e                                         ; $7a50: $93
    adc c                                         ; $7a51: $89
    cp d                                          ; $7a52: $ba
    ld d, h                                       ; $7a53: $54
    ld [hl], h                                    ; $7a54: $74
    ld c, b                                       ; $7a55: $48
    ld e, b                                       ; $7a56: $58
    ld [hl], l                                    ; $7a57: $75
    db $fd                                        ; $7a58: $fd
    ld a, [bc]                                    ; $7a59: $0a
    xor l                                         ; $7a5a: $ad
    xor d                                         ; $7a5b: $aa
    or c                                          ; $7a5c: $b1
    ret                                           ; $7a5d: $c9


    ld b, l                                       ; $7a5e: $45
    adc a                                         ; $7a5f: $8f
    jp nz, Jump_000_168d                          ; $7a60: $c2 $8d $16

    db $ec                                        ; $7a63: $ec
    dec c                                         ; $7a64: $0d
    db $eb                                        ; $7a65: $eb
    ld d, a                                       ; $7a66: $57
    cp [hl]                                       ; $7a67: $be
    inc a                                         ; $7a68: $3c
    reti                                          ; $7a69: $d9


    ret nc                                        ; $7a6a: $d0

    inc [hl]                                      ; $7a6b: $34
    adc b                                         ; $7a6c: $88
    sbc d                                         ; $7a6d: $9a
    ld e, h                                       ; $7a6e: $5c
    xor d                                         ; $7a6f: $aa
    jp Jump_040_5185                              ; $7a70: $c3 $85 $51


    ld hl, sp-$5e                                 ; $7a73: $f8 $a2
    ld l, $d5                                     ; $7a75: $2e $d5
    ld l, e                                       ; $7a77: $6b
    rst $30                                       ; $7a78: $f7
    cp d                                          ; $7a79: $ba
    cp b                                          ; $7a7a: $b8
    add hl, hl                                    ; $7a7b: $29
    push af                                       ; $7a7c: $f5
    jp hl                                         ; $7a7d: $e9


    ld [c], a                                     ; $7a7e: $e2
    ld b, e                                       ; $7a7f: $43
    ld e, a                                       ; $7a80: $5f
    call nc, Call_040_7f64                        ; $7a81: $d4 $64 $7f
    adc d                                         ; $7a84: $8a
    and e                                         ; $7a85: $a3
    or e                                          ; $7a86: $b3
    ccf                                           ; $7a87: $3f
    ld c, a                                       ; $7a88: $4f
    ld e, d                                       ; $7a89: $5a
    dec a                                         ; $7a8a: $3d
    add hl, sp                                    ; $7a8b: $39
    add hl, sp                                    ; $7a8c: $39
    ld [c], a                                     ; $7a8d: $e2
    adc l                                         ; $7a8e: $8d
    ld l, $e5                                     ; $7a8f: $2e $e5
    rla                                           ; $7a91: $17
    xor e                                         ; $7a92: $ab
    ccf                                           ; $7a93: $3f
    jp c, $13d5                                   ; $7a94: $da $d5 $13

    and [hl]                                      ; $7a97: $a6
    call z, $afd3                                 ; $7a98: $cc $d3 $af
    dec e                                         ; $7a9b: $1d

jr_040_7a9c:
    ld d, d                                       ; $7a9c: $52
    inc d                                         ; $7a9d: $14
    cp [hl]                                       ; $7a9e: $be
    inc d                                         ; $7a9f: $14
    xor b                                         ; $7aa0: $a8
    db $db                                        ; $7aa1: $db
    sub a                                         ; $7aa2: $97
    ld [hl-], a                                   ; $7aa3: $32
    ld [hl-], a                                   ; $7aa4: $32
    ld d, c                                       ; $7aa5: $51
    ld c, a                                       ; $7aa6: $4f
    sub d                                         ; $7aa7: $92
    or b                                          ; $7aa8: $b0
    adc c                                         ; $7aa9: $89
    sbc e                                         ; $7aaa: $9b
    ld l, d                                       ; $7aab: $6a
    call nc, Call_040_5cd5                        ; $7aac: $d4 $d5 $5c
    ld bc, $f86d                                  ; $7aaf: $01 $6d $f8
    ld c, a                                       ; $7ab2: $4f
    rla                                           ; $7ab3: $17
    add hl, de                                    ; $7ab4: $19
    ret                                           ; $7ab5: $c9


jr_040_7ab6:
    add [hl]                                      ; $7ab6: $86
    and [hl]                                      ; $7ab7: $a6
    pop bc                                        ; $7ab8: $c1
    db $10                                        ; $7ab9: $10
    push af                                       ; $7aba: $f5
    ld d, c                                       ; $7abb: $51
    rlca                                          ; $7abc: $07
    or [hl]                                       ; $7abd: $b6
    ret                                           ; $7abe: $c9


    ld b, [hl]                                    ; $7abf: $46
    xor d                                         ; $7ac0: $aa
    ld b, e                                       ; $7ac1: $43
    jp z, Jump_040_7bf2                           ; $7ac2: $ca $f2 $7b

    and e                                         ; $7ac5: $a3
    and $0a                                       ; $7ac6: $e6 $0a
    xor l                                         ; $7ac8: $ad
    rst $38                                       ; $7ac9: $ff
    add l                                         ; $7aca: $85
    adc d                                         ; $7acb: $8a
    rst $00                                       ; $7acc: $c7
    jr c, jr_040_7ab6                             ; $7acd: $38 $e7

    cp a                                          ; $7acf: $bf
    rst $20                                       ; $7ad0: $e7
    rst $08                                       ; $7ad1: $cf
    rst $28                                       ; $7ad2: $ef
    cp b                                          ; $7ad3: $b8
    scf                                           ; $7ad4: $37
    jp $13de                                      ; $7ad5: $c3 $de $13


    add l                                         ; $7ad8: $85
    adc e                                         ; $7ad9: $8b
    sbc d                                         ; $7ada: $9a
    db $ed                                        ; $7adb: $ed
    ld c, [hl]                                    ; $7adc: $4e
    rla                                           ; $7add: $17
    rra                                           ; $7ade: $1f
    ld a, [$26a2]                                 ; $7adf: $fa $a2 $26
    res 2, a                                      ; $7ae2: $cb $97
    ld a, [c]                                     ; $7ae4: $f2
    ld a, l                                       ; $7ae5: $7d
    ld e, d                                       ; $7ae6: $5a
    call $b362                                    ; $7ae7: $cd $62 $b3
    ld c, h                                       ; $7aea: $4c
    add hl, sp                                    ; $7aeb: $39
    ld e, $5d                                     ; $7aec: $1e $5d
    ld e, [hl]                                    ; $7aee: $5e
    sbc h                                         ; $7aef: $9c
    rra                                           ; $7af0: $1f
    cp c                                          ; $7af1: $b9
    add hl, bc                                    ; $7af2: $09
    jp nc, Jump_040_41a6                          ; $7af3: $d2 $a6 $41

    add l                                         ; $7af6: $85
    add h                                         ; $7af7: $84
    xor b                                         ; $7af8: $a8
    ei                                            ; $7af9: $fb
    ld l, d                                       ; $7afa: $6a
    and d                                         ; $7afb: $a2
    ld h, [hl]                                    ; $7afc: $66
    cp e                                          ; $7afd: $bb
    db $d3                                        ; $7afe: $d3
    push hl                                       ; $7aff: $e5
    ld d, e                                       ; $7b00: $53
    inc e                                         ; $7b01: $1c
    sbc l                                         ; $7b02: $9d
    db $fd                                        ; $7b03: $fd
    db $fd                                        ; $7b04: $fd
    ld a, [bc]                                    ; $7b05: $0a
    dec e                                         ; $7b06: $1d
    jp nc, $828b                                  ; $7b07: $d2 $8b $82

    or b                                          ; $7b0a: $b0
    ld c, l                                       ; $7b0b: $4d
    or [hl]                                       ; $7b0c: $b6
    rst $00                                       ; $7b0d: $c7
    db $db                                        ; $7b0e: $db
    ld a, l                                       ; $7b0f: $7d
    ld l, d                                       ; $7b10: $6a
    add h                                         ; $7b11: $84
    ld h, c                                       ; $7b12: $61
    halt                                          ; $7b13: $76
    ld a, [$15db]                                 ; $7b14: $fa $db $15
    add h                                         ; $7b17: $84
    ld de, $88f2                                  ; $7b18: $11 $f2 $88
    rst $30                                       ; $7b1b: $f7
    db $fc                                        ; $7b1c: $fc
    db $fd                                        ; $7b1d: $fd
    ld a, [bc]                                    ; $7b1e: $0a
    sbc [hl]                                      ; $7b1f: $9e
    inc hl                                        ; $7b20: $23
    reti                                          ; $7b21: $d9


    sbc a                                         ; $7b22: $9f
    ld [$fbb5], a                                 ; $7b23: $ea $b5 $fb
    inc l                                         ; $7b26: $2c
    jp $aa86                                      ; $7b27: $c3 $86 $aa


    sbc d                                         ; $7b2a: $9a
    cp h                                          ; $7b2b: $bc
    reti                                          ; $7b2c: $d9


    sub c                                         ; $7b2d: $91
    ld l, a                                       ; $7b2e: $6f
    ret z                                         ; $7b2f: $c8

    ld b, a                                       ; $7b30: $47
    and c                                         ; $7b31: $a1
    ldh a, [$c9]                                  ; $7b32: $f0 $c9
    inc de                                        ; $7b34: $13
    ld l, a                                       ; $7b35: $6f
    inc b                                         ; $7b36: $04
    add hl, sp                                    ; $7b37: $39
    add hl, bc                                    ; $7b38: $09
    sub l                                         ; $7b39: $95
    add sp, -$61                                  ; $7b3a: $e8 $9f
    add hl, de                                    ; $7b3c: $19
    ld d, $e5                                     ; $7b3d: $16 $e5
    ld sp, $f9ce                                  ; $7b3f: $31 $ce $f9
    ld l, a                                       ; $7b42: $6f
    ld a, [$b515]                                 ; $7b43: $fa $15 $b5
    rst $38                                       ; $7b46: $ff
    or d                                          ; $7b47: $b2
    ret nz                                        ; $7b48: $c0

    ld [c], a                                     ; $7b49: $e2
    cp [hl]                                       ; $7b4a: $be
    ld c, h                                       ; $7b4b: $4c
    ret z                                         ; $7b4c: $c8

    dec hl                                        ; $7b4d: $2b
    inc a                                         ; $7b4e: $3c
    cp c                                          ; $7b4f: $b9
    sbc l                                         ; $7b50: $9d
    ld [$3626], a                                 ; $7b51: $ea $26 $36
    ld h, l                                       ; $7b54: $65
    sbc c                                         ; $7b55: $99
    ld e, d                                       ; $7b56: $5a
    dec hl                                        ; $7b57: $2b
    ld [hl], l                                    ; $7b58: $75
    ld b, [hl]                                    ; $7b59: $46
    sub a                                         ; $7b5a: $97
    ld [$9652], a                                 ; $7b5b: $ea $52 $96
    ld a, e                                       ; $7b5e: $7b
    add a                                         ; $7b5f: $87
    ld a, [hl]                                    ; $7b60: $7e
    dec b                                         ; $7b61: $05
    dec e                                         ; $7b62: $1d
    ld hl, sp-$05                                 ; $7b63: $f8 $fb
    or h                                          ; $7b65: $b4
    ld h, l                                       ; $7b66: $65
    ld c, a                                       ; $7b67: $4f
    inc a                                         ; $7b68: $3c
    db $f4                                        ; $7b69: $f4
    pop af                                        ; $7b6a: $f1
    ld e, l                                       ; $7b6b: $5d
    ld h, b                                       ; $7b6c: $60
    inc de                                        ; $7b6d: $13
    rst $20                                       ; $7b6e: $e7
    ld b, a                                       ; $7b6f: $47
    or $a7                                        ; $7b70: $f6 $a7
    ld d, h                                       ; $7b72: $54
    ld h, b                                       ; $7b73: $60
    cp $a8                                        ; $7b74: $fe $a8
    adc e                                         ; $7b76: $8b
    halt                                          ; $7b77: $76
    ld [hl], $e4                                  ; $7b78: $36 $e4
    ld l, e                                       ; $7b7a: $6b
    ld l, a                                       ; $7b7b: $6f
    add sp, $57                                   ; $7b7c: $e8 $57
    or l                                          ; $7b7e: $b5
    rst $38                                       ; $7b7f: $ff
    ld d, d                                       ; $7b80: $52
    jr nz, jr_040_7bff                            ; $7b81: $20 $7c

    inc a                                         ; $7b83: $3c
    or l                                          ; $7b84: $b5
    ld [c], a                                     ; $7b85: $e2
    jp hl                                         ; $7b86: $e9


    ld d, c                                       ; $7b87: $51
    inc hl                                        ; $7b88: $23
    add l                                         ; $7b89: $85
    sbc a                                         ; $7b8a: $9f
    ccf                                           ; $7b8b: $3f
    ld d, h                                       ; $7b8c: $54
    ld a, $f6                                     ; $7b8d: $3e $f6
    set 1, c                                      ; $7b8f: $cb $c9
    rst $20                                       ; $7b91: $e7
    rst $30                                       ; $7b92: $f7
    cp $b4                                        ; $7b93: $fe $b4
    ld h, l                                       ; $7b95: $65
    daa                                           ; $7b96: $27
    jp c, $d730                                   ; $7b97: $da $30 $d7

    ld c, h                                       ; $7b9a: $4c
    ld a, e                                       ; $7b9b: $7b
    ld e, $fe                                     ; $7b9c: $1e $fe
    ret                                           ; $7b9e: $c9


    ld b, $f3                                     ; $7b9f: $06 $f3
    and h                                         ; $7ba1: $a4
    ret nc                                        ; $7ba2: $d0

    cp l                                          ; $7ba3: $bd
    ccf                                           ; $7ba4: $3f
    ld l, l                                       ; $7ba5: $6d
    dec a                                         ; $7ba6: $3d
    sub c                                         ; $7ba7: $91
    ld [$8fe6], sp                                ; $7ba8: $08 $e6 $8f
    jp nz, Jump_040_5d4e                          ; $7bab: $c2 $4e $5d

    dec de                                        ; $7bae: $1b
    cpl                                           ; $7baf: $2f
    ld hl, sp-$05                                 ; $7bb0: $f8 $fb
    dec d                                         ; $7bb2: $15
    sbc [hl]                                      ; $7bb3: $9e
    cp $4b                                        ; $7bb4: $fe $4b
    adc l                                         ; $7bb6: $8d
    inc d                                         ; $7bb7: $14
    ld a, [hl]                                    ; $7bb8: $7e
    sbc [hl]                                      ; $7bb9: $9e
    ld e, d                                       ; $7bba: $5a
    dec hl                                        ; $7bbb: $2b
    ld [hl], l                                    ; $7bbc: $75
    ld b, [hl]                                    ; $7bbd: $46
    ld d, d                                       ; $7bbe: $52
    ld l, $e5                                     ; $7bbf: $2e $e5
    ei                                            ; $7bc1: $fb
    ld hl, sp-$62                                 ; $7bc2: $f8 $9e
    and e                                         ; $7bc4: $a3
    or $15                                        ; $7bc5: $f6 $15
    add h                                         ; $7bc7: $84
    and c                                         ; $7bc8: $a1
    rlc d                                         ; $7bc9: $cb $02
    dec bc                                        ; $7bcb: $0b
    add h                                         ; $7bcc: $84
    db $ed                                        ; $7bcd: $ed
    dec c                                         ; $7bce: $0d
    ld b, c                                       ; $7bcf: $41
    ld l, b                                       ; $7bd0: $68
    ld [hl], c                                    ; $7bd1: $71
    ld h, a                                       ; $7bd2: $67
    ret z                                         ; $7bd3: $c8

    ld c, c                                       ; $7bd4: $49
    ld a, h                                       ; $7bd5: $7c
    jr z, jr_040_7c4e                             ; $7bd6: $28 $76

    xor d                                         ; $7bd8: $aa
    ld d, c                                       ; $7bd9: $51
    and e                                         ; $7bda: $a3
    ld c, e                                       ; $7bdb: $4b
    adc l                                         ; $7bdc: $8d
    ld [$4a1c], sp                                ; $7bdd: $08 $1c $4a
    ld a, c                                       ; $7be0: $79
    cp e                                          ; $7be1: $bb
    rrca                                          ; $7be2: $0f
    sub l                                         ; $7be3: $95
    adc a                                         ; $7be4: $8f
    sbc [hl]                                      ; $7be5: $9e
    adc [hl]                                      ; $7be6: $8e
    ld a, h                                       ; $7be7: $7c
    call nc, $4414                                ; $7be8: $d4 $14 $44
    ld e, l                                       ; $7beb: $5d
    xor d                                         ; $7bec: $aa
    rst $10                                       ; $7bed: $d7
    xor $23                                       ; $7bee: $ee $23
    or b                                          ; $7bf0: $b0
    rst $28                                       ; $7bf1: $ef

Jump_040_7bf2:
    ld d, a                                       ; $7bf2: $57
    sbc [hl]                                      ; $7bf3: $9e
    ld d, e                                       ; $7bf4: $53
    inc a                                         ; $7bf5: $3c
    ld l, d                                       ; $7bf6: $6a
    and h                                         ; $7bf7: $a4
    cp l                                          ; $7bf8: $bd
    ld c, a                                       ; $7bf9: $4f
    ld e, e                                       ; $7bfa: $5b
    ld c, a                                       ; $7bfb: $4f
    inc h                                         ; $7bfc: $24
    add d                                         ; $7bfd: $82
    ld sp, hl                                     ; $7bfe: $f9

jr_040_7bff:
    and e                                         ; $7bff: $a3
    or b                                          ; $7c00: $b0
    ld d, e                                       ; $7c01: $53
    rst $10                                       ; $7c02: $d7

jr_040_7c03:
    add $0b                                       ; $7c03: $c6 $0b
    cp $5a                                        ; $7c05: $fe $5a
    dec hl                                        ; $7c07: $2b
    ld l, l                                       ; $7c08: $6d
    rst $28                                       ; $7c09: $ef
    ld l, b                                       ; $7c0a: $68
    scf                                           ; $7c0b: $37
    ld h, $bf                                     ; $7c0c: $26 $bf
    ld de, $4b85                                  ; $7c0e: $11 $85 $4b
    push af                                       ; $7c11: $f5
    sbc d                                         ; $7c12: $9a
    rst $38                                       ; $7c13: $ff
    add d                                         ; $7c14: $82
    jr z, jr_040_7c03                             ; $7c15: $28 $ec

    adc l                                         ; $7c17: $8d
    inc d                                         ; $7c18: $14
    ld [hl], $68                                  ; $7c19: $36 $68
    ld a, [hl]                                    ; $7c1b: $7e
    db $f4                                        ; $7c1c: $f4
    jp hl                                         ; $7c1d: $e9


    add sp, -$6a                                  ; $7c1e: $e8 $96
    ld sp, $c8fe                                  ; $7c20: $31 $fe $c8
    ldh a, [rNR11]                                ; $7c23: $f0 $11
    rrca                                          ; $7c25: $0f
    xor c                                         ; $7c26: $a9
    ld e, [hl]                                    ; $7c27: $5e
    dec sp                                        ; $7c28: $3b
    rst $20                                       ; $7c29: $e7
    ld b, a                                       ; $7c2a: $47
    ld d, $1b                                     ; $7c2b: $16 $1b
    ld [de], a                                    ; $7c2d: $12
    ld [hl], d                                    ; $7c2e: $72
    db $10                                        ; $7c2f: $10
    cp [hl]                                       ; $7c30: $be
    xor b                                         ; $7c31: $a8
    rrca                                          ; $7c32: $0f
    ld d, e                                       ; $7c33: $53
    and $c9                                       ; $7c34: $e6 $c9
    db $ed                                        ; $7c36: $ed
    ld d, h                                       ; $7c37: $54
    inc hl                                        ; $7c38: $23
    ld l, d                                       ; $7c39: $6a
    add d                                         ; $7c3a: $82
    inc l                                         ; $7c3b: $2c
    ld l, a                                       ; $7c3c: $6f
    ei                                            ; $7c3d: $fb
    ld d, e                                       ; $7c3e: $53
    ld d, $94                                     ; $7c3f: $16 $94
    ld [hl-], a                                   ; $7c41: $32
    ld d, c                                       ; $7c42: $51
    sub a                                         ; $7c43: $97
    jp c, $75a3                                   ; $7c44: $da $a3 $75

    rst $30                                       ; $7c47: $f7
    add $a5                                       ; $7c48: $c6 $a5
    ld e, a                                       ; $7c4a: $5f
    ld bc, $f79e                                  ; $7c4b: $01 $9e $f7

jr_040_7c4e:
    and e                                         ; $7c4e: $a3
    bit 1, l                                      ; $7c4f: $cb $4d
    jp z, $a4c8                                   ; $7c51: $ca $c8 $a4

    and e                                         ; $7c54: $a3
    sub c                                         ; $7c55: $91
    ld [hl], h                                    ; $7c56: $74
    add [hl]                                      ; $7c57: $86
    cpl                                           ; $7c58: $2f
    dec de                                        ; $7c59: $1b
    inc b                                         ; $7c5a: $04
    ld a, [$e2f8]                                 ; $7c5b: $fa $f8 $e2
    and d                                         ; $7c5e: $a2
    sbc [hl]                                      ; $7c5f: $9e
    inc h                                         ; $7c60: $24
    ld h, c                                       ; $7c61: $61
    sub e                                         ; $7c62: $93
    jp c, $466f                                   ; $7c63: $da $6f $46

    jr nz, jr_040_7cdd                            ; $7c66: $20 $75

    add a                                         ; $7c68: $87
    add hl, de                                    ; $7c69: $19
    ld d, [hl]                                    ; $7c6a: $56
    ld l, e                                       ; $7c6b: $6b
    dec b                                         ; $7c6c: $05
    cp [hl]                                       ; $7c6d: $be
    push af                                       ; $7c6e: $f5
    push af                                       ; $7c6f: $f5
    dec hl                                        ; $7c70: $2b
    dec e                                         ; $7c71: $1d
    ld hl, sp+$6b                                 ; $7c72: $f8 $6b
    and [hl]                                      ; $7c74: $a6
    ld l, $a4                                     ; $7c75: $2e $a4
    inc a                                         ; $7c77: $3c
    add hl, sp                                    ; $7c78: $39
    ld [hl], c                                    ; $7c79: $71
    ld a, [hl]                                    ; $7c7a: $7e
    call nz, $a53b                                ; $7c7b: $c4 $3b $a5
    jr nz, jr_040_7cd4                            ; $7c7e: $20 $54

    ld a, [c]                                     ; $7c80: $f2
    sbc e                                         ; $7c81: $9b
    ld l, l                                       ; $7c82: $6d
    and d                                         ; $7c83: $a2
    and b                                         ; $7c84: $a0
    db $ed                                        ; $7c85: $ed
    ld c, e                                       ; $7c86: $4b
    ld [hl], c                                    ; $7c87: $71
    ld a, [hl]                                    ; $7c88: $7e
    jr @-$0d                                      ; $7c89: $18 $f1

    and d                                         ; $7c8b: $a2
    ld [hl], b                                    ; $7c8c: $70
    xor c                                         ; $7c8d: $a9
    ld c, $17                                     ; $7c8e: $0e $17
    xor a                                         ; $7c90: $af
    dec a                                         ; $7c91: $3d
    ld h, e                                       ; $7c92: $63
    rst $28                                       ; $7c93: $ef
    db $eb                                        ; $7c94: $eb
    ld d, a                                       ; $7c95: $57
    dec e                                         ; $7c96: $1d
    jp nc, $8edf                                  ; $7c97: $d2 $df $8e

    jp z, $ffc4                                   ; $7c9a: $ca $c4 $ff

    ld hl, $f0af                                  ; $7c9d: $21 $af $f0
    add h                                         ; $7ca0: $84
    ld c, d                                       ; $7ca1: $4a
    ld l, h                                       ; $7ca2: $6c
    jp z, $b532                                   ; $7ca3: $ca $32 $b5

    ld d, d                                       ; $7ca6: $52
    rlca                                          ; $7ca7: $07
    db $e4                                        ; $7ca8: $e4
    db $ed                                        ; $7ca9: $ed
    adc l                                         ; $7caa: $8d
    ld hl, sp+$3f                                 ; $7cab: $f8 $3f
    dec bc                                        ; $7cad: $0b
    xor h                                         ; $7cae: $ac
    ld c, h                                       ; $7caf: $4c
    ld l, [hl]                                    ; $7cb0: $6e
    and a                                         ; $7cb1: $a7
    ret nc                                        ; $7cb2: $d0

    jp hl                                         ; $7cb3: $e9


    ld d, a                                       ; $7cb4: $57
    ld [hl], l                                    ; $7cb5: $75
    and [hl]                                      ; $7cb6: $a6
    ld e, a                                       ; $7cb7: $5f
    ld bc, $d21d                                  ; $7cb8: $01 $1d $d2
    adc e                                         ; $7cbb: $8b
    cp e                                          ; $7cbc: $bb
    sub h                                         ; $7cbd: $94
    ei                                            ; $7cbe: $fb
    ld l, d                                       ; $7cbf: $6a
    ld d, d                                       ; $7cc0: $52
    ld h, [hl]                                    ; $7cc1: $66
    ld c, a                                       ; $7cc2: $4f
    ld h, h                                       ; $7cc3: $64
    ld l, $c8                                     ; $7cc4: $2e $c8
    db $ed                                        ; $7cc6: $ed
    ld d, h                                       ; $7cc7: $54
    scf                                           ; $7cc8: $37
    pop hl                                        ; $7cc9: $e1

jr_040_7cca:
    ld e, c                                       ; $7cca: $59
    ld b, [hl]                                    ; $7ccb: $46
    rla                                           ; $7ccc: $17
    ld c, a                                       ; $7ccd: $4f
    sbc e                                         ; $7cce: $9b
    jp nz, $afdf                                  ; $7ccf: $c2 $df $af

    ld e, l                                       ; $7cd2: $5d
    ld [de], a                                    ; $7cd3: $12

jr_040_7cd4:
    adc c                                         ; $7cd4: $89
    ld b, h                                       ; $7cd5: $44
    ld [hl+], a                                   ; $7cd6: $22
    or c                                          ; $7cd7: $b1
    rst $28                                       ; $7cd8: $ef
    ei                                            ; $7cd9: $fb
    dec d                                         ; $7cda: $15
    ld l, l                                       ; $7cdb: $6d
    ld c, a                                       ; $7cdc: $4f

jr_040_7cdd:
    xor d                                         ; $7cdd: $aa
    adc e                                         ; $7cde: $8b
    di                                            ; $7cdf: $f3
    rst $18                                       ; $7ce0: $df
    ld d, a                                       ; $7ce1: $57
    sub e                                         ; $7ce2: $93
    jp c, $eab0                                   ; $7ce3: $da $b0 $ea

    ld b, [hl]                                    ; $7ce6: $46
    sub b                                         ; $7ce7: $90
    or [hl]                                       ; $7ce8: $b6
    db $ec                                        ; $7ce9: $ec
    ld b, l                                       ; $7cea: $45
    add e                                         ; $7ceb: $83
    jp hl                                         ; $7cec: $e9


    add d                                         ; $7ced: $82
    sub b                                         ; $7cee: $90
    ld [hl], e                                    ; $7cef: $73
    or l                                          ; $7cf0: $b5
    ld d, [hl]                                    ; $7cf1: $56
    dec e                                         ; $7cf2: $1d
    adc l                                         ; $7cf3: $8d
    and h                                         ; $7cf4: $a4
    inc sp                                        ; $7cf5: $33
    ld a, h                                       ; $7cf6: $7c
    reti                                          ; $7cf7: $d9


    jr nz, jr_040_7cca                            ; $7cf8: $20 $d0

    xor a                                         ; $7cfa: $af
    or l                                          ; $7cfb: $b5
    rst $18                                       ; $7cfc: $df
    adc h                                         ; $7cfd: $8c
    ld b, b                                       ; $7cfe: $40
    ld [$330e], a                                 ; $7cff: $ea $0e $33
    xor h                                         ; $7d02: $ac
    ld e, a                                       ; $7d03: $5f
    ld bc, $3fad                                  ; $7d04: $01 $ad $3f
    ld c, c                                       ; $7d07: $49
    jp nz, Jump_040_56a6                          ; $7d08: $c2 $a6 $56

    ld l, d                                       ; $7d0b: $6a
    ld c, a                                       ; $7d0c: $4f
    ld [hl], $98                                  ; $7d0d: $36 $98
    daa                                           ; $7d0f: $27
    ld c, h                                       ; $7d10: $4c
    sbc c                                         ; $7d11: $99
    daa                                           ; $7d12: $27
    add l                                         ; $7d13: $85
    ld b, [hl]                                    ; $7d14: $46
    ld e, l                                       ; $7d15: $5d
    jr jr_040_7d95                                ; $7d16: $18 $7d

    ld a, h                                       ; $7d18: $7c
    rst $38                                       ; $7d19: $ff

jr_040_7d1a:
    and d                                         ; $7d1a: $a2
    ld e, l                                       ; $7d1b: $5d
    dec a                                         ; $7d1c: $3d
    reti                                          ; $7d1d: $d9


    cpl                                           ; $7d1e: $2f
    xor $de                                       ; $7d1f: $ee $de
    db $10                                        ; $7d21: $10
    ld l, l                                       ; $7d22: $6d
    ld e, a                                       ; $7d23: $5f
    ld c, [hl]                                    ; $7d24: $4e
    call c, $a30b                                 ; $7d25: $dc $0b $a3
    ld e, h                                       ; $7d28: $5c
    ld [hl], l                                    ; $7d29: $75
    or l                                          ; $7d2a: $b5
    jp nc, $65f1                                  ; $7d2b: $d2 $f1 $65

    cp c                                          ; $7d2e: $b9
    ld [hl], a                                    ; $7d2f: $77
    jr nc, jr_040_7d1a                            ; $7d30: $30 $e8

    push af                                       ; $7d32: $f5
    ret z                                         ; $7d33: $c8

    ld d, l                                       ; $7d34: $55
    set 3, e                                      ; $7d35: $cb $db
    sbc e                                         ; $7d37: $9b
    jr nz, jr_040_7d8e                            ; $7d38: $20 $54

    and [hl]                                      ; $7d3a: $a6
    ld d, [hl]                                    ; $7d3b: $56

Jump_040_7d3c:
    jp c, Jump_040_6e70                           ; $7d3c: $da $70 $6e

    ld [c], a                                     ; $7d3f: $e2
    and [hl]                                      ; $7d40: $a6
    ld b, d                                       ; $7d41: $42
    or $8b                                        ; $7d42: $f6 $8b
    cp e                                          ; $7d44: $bb
    scf                                           ; $7d45: $37
    db $e4                                        ; $7d46: $e4
    halt                                          ; $7d47: $76
    ld a, [hl-]                                   ; $7d48: $3a
    add l                                         ; $7d49: $85
    xor c                                         ; $7d4a: $a9
    xor e                                         ; $7d4b: $ab
    ld l, [hl]                                    ; $7d4c: $6e
    rst $28                                       ; $7d4d: $ef
    dec de                                        ; $7d4e: $1b
    ld e, d                                       ; $7d4f: $5a
    ld a, [$c1d4]                                 ; $7d50: $fa $d4 $c1
    sbc $9f                                       ; $7d53: $de $9f
    ld [$de3e], a                                 ; $7d55: $ea $3e $de
    xor a                                         ; $7d58: $af
    ld c, [hl]                                    ; $7d59: $4e
    db $db                                        ; $7d5a: $db
    rst $30                                       ; $7d5b: $f7
    cp d                                          ; $7d5c: $ba
    ld [$a14a], sp                                ; $7d5d: $08 $4a $a1
    ld [hl-], a                                   ; $7d60: $32
    xor c                                         ; $7d61: $a9
    ld de, $a92a                                  ; $7d62: $11 $2a $a9
    ld e, [hl]                                    ; $7d65: $5e
    dec de                                        ; $7d66: $1b
    ld e, l                                       ; $7d67: $5d
    xor d                                         ; $7d68: $aa
    rst $08                                       ; $7d69: $cf
    ld c, l                                       ; $7d6a: $4d
    db $fc                                        ; $7d6b: $fc
    sub e                                         ; $7d6c: $93
    xor e                                         ; $7d6d: $ab
    sub [hl]                                      ; $7d6e: $96
    or a                                          ; $7d6f: $b7
    rst $20                                       ; $7d70: $e7
    ret                                           ; $7d71: $c9


    and a                                         ; $7d72: $a7
    ld b, d                                       ; $7d73: $42
    dec [hl]                                      ; $7d74: $35
    halt                                          ; $7d75: $76
    rra                                           ; $7d76: $1f
    and [hl]                                      ; $7d77: $a6
    call z, $cb97                                 ; $7d78: $cc $97 $cb
    ld a, $bd                                     ; $7d7b: $3e $bd
    ld e, l                                       ; $7d7d: $5d
    call nc, Call_040_5185                        ; $7d7e: $d4 $85 $51
    ld a, b                                       ; $7d81: $78
    ld a, [$06b4]                                 ; $7d82: $fa $b4 $06
    cp a                                          ; $7d85: $bf
    ld l, $15                                     ; $7d86: $2e $15
    or h                                          ; $7d88: $b4
    ld a, l                                       ; $7d89: $7d
    inc de                                        ; $7d8a: $13
    ld e, $93                                     ; $7d8b: $1e $93
    scf                                           ; $7d8d: $37

jr_040_7d8e:
    db $e4                                        ; $7d8e: $e4
    db $e3                                        ; $7d8f: $e3
    ld h, b                                       ; $7d90: $60
    xor $0d                                       ; $7d91: $ee $0d
    cp c                                          ; $7d93: $b9
    dec e                                         ; $7d94: $1d

jr_040_7d95:
    sbc e                                         ; $7d95: $9b
    or d                                          ; $7d96: $b2
    ld c, h                                       ; $7d97: $4c
    rra                                           ; $7d98: $1f
    rst $08                                       ; $7d99: $cf
    ei                                            ; $7d9a: $fb
    jp hl                                         ; $7d9b: $e9


    ld d, a                                       ; $7d9c: $57
    cp [hl]                                       ; $7d9d: $be
    dec bc                                        ; $7d9e: $0b
    ld l, h                                       ; $7d9f: $6c
    or d                                          ; $7da0: $b2
    ret c                                         ; $7da1: $d8

    inc l                                         ; $7da2: $2c
    halt                                          ; $7da3: $76
    inc de                                        ; $7da4: $13
    ld [hl], l                                    ; $7da5: $75
    sub c                                         ; $7da6: $91
    sub c                                         ; $7da7: $91
    ret c                                         ; $7da8: $d8

    or c                                          ; $7da9: $b1
    dec c                                         ; $7daa: $0d
    ld sp, hl                                     ; $7dab: $f9
    ld d, [hl]                                    ; $7dac: $56
    ld e, l                                       ; $7dad: $5d
    inc b                                         ; $7dae: $04
    ld a, e                                       ; $7daf: $7b
    ld a, a                                       ; $7db0: $7f
    ld a, [bc]                                    ; $7db1: $0a
    db $fd                                        ; $7db2: $fd
    inc d                                         ; $7db3: $14
    ld b, [hl]                                    ; $7db4: $46
    add hl, hl                                    ; $7db5: $29
    rra                                           ; $7db6: $1f
    rst $08                                       ; $7db7: $cf
    cpl                                           ; $7db8: $2f
    rst $18                                       ; $7db9: $df
    and a                                         ; $7dba: $a7
    xor $db                                       ; $7dbb: $ee $db
    cp $b0                                        ; $7dbd: $fe $b0
    call $8cb2                                    ; $7dbf: $cd $b2 $8c
    ld l, $0b                                     ; $7dc2: $2e $0b
    inc l                                         ; $7dc4: $2c
    sub a                                         ; $7dc5: $97
    ld [$d170], a                                 ; $7dc6: $ea $70 $d1
    ld l, b                                       ; $7dc9: $68
    pop hl                                        ; $7dca: $e1
    db $eb                                        ; $7dcb: $eb
    ld d, a                                       ; $7dcc: $57
    xor l                                         ; $7dcd: $ad
    rst $08                                       ; $7dce: $cf
    halt                                          ; $7dcf: $76
    ld d, a                                       ; $7dd0: $57
    inc sp                                        ; $7dd1: $33
    sbc [hl]                                      ; $7dd2: $9e
    scf                                           ; $7dd3: $37
    adc $8d                                       ; $7dd4: $ce $8d
    cp l                                          ; $7dd6: $bd
    ld b, b                                       ; $7dd7: $40
    sub a                                         ; $7dd8: $97
    ld l, $a9                                     ; $7dd9: $2e $a9
    ld [hl], e                                    ; $7ddb: $73
    jp Jump_040_517c                              ; $7ddc: $c3 $7c $51


    rla                                           ; $7ddf: $17
    ld [hl+], a                                   ; $7de0: $22
    ld [hl], l                                    ; $7de1: $75
    xor $75                                       ; $7de2: $ee $75
    pop de                                        ; $7de4: $d1
    or b                                          ; $7de5: $b0
    sbc a                                         ; $7de6: $9f
    ld c, a                                       ; $7de7: $4f
    sub b                                         ; $7de8: $90
    adc [hl]                                      ; $7de9: $8e
    add hl, hl                                    ; $7dea: $29
    di                                            ; $7deb: $f3
    ld l, c                                       ; $7dec: $69
    or h                                          ; $7ded: $b4
    ldh a, [$a5]                                  ; $7dee: $f0 $a5
    sub c                                         ; $7df0: $91
    inc [hl]                                      ; $7df1: $34
    ld de, $37e4                                  ; $7df2: $11 $e4 $37
    db $db                                        ; $7df5: $db
    db $e4                                        ; $7df6: $e4
    push bc                                       ; $7df7: $c5
    adc l                                         ; $7df8: $8d
    ld a, l                                       ; $7df9: $7d
    call Call_000_1d15                            ; $7dfa: $cd $15 $1d
    ld hl, sp+$6b                                 ; $7dfd: $f8 $6b
    and [hl]                                      ; $7dff: $a6
    or $67                                        ; $7e00: $f6 $67
    inc hl                                        ; $7e02: $23
    sbc [hl]                                      ; $7e03: $9e
    scf                                           ; $7e04: $37
    adc $8d                                       ; $7e05: $ce $8d
    cp l                                          ; $7e07: $bd
    and b                                         ; $7e08: $a0
    and $0a                                       ; $7e09: $e6 $0a
    sbc [hl]                                      ; $7e0b: $9e
    ld d, e                                       ; $7e0c: $53
    ld a, $65                                     ; $7e0d: $3e $65
    ld h, h                                       ; $7e0f: $64

jr_040_7e10:
    or d                                          ; $7e10: $b2
    ld de, $1bcf                                  ; $7e11: $11 $cf $1b
    rst $20                                       ; $7e14: $e7
    add $5e                                       ; $7e15: $c6 $5e
    ld d, b                                       ; $7e17: $50
    dec hl                                        ; $7e18: $2b
    ld [hl], l                                    ; $7e19: $75
    ld b, [hl]                                    ; $7e1a: $46
    ld d, d                                       ; $7e1b: $52
    sbc $5e                                       ; $7e1c: $de $5e
    ld h, h                                       ; $7e1e: $64
    ld d, d                                       ; $7e1f: $52
    sbc l                                         ; $7e20: $9d
    ei                                            ; $7e21: $fb
    jr z, jr_040_7e10                             ; $7e22: $28 $ec

    adc l                                         ; $7e24: $8d
    ret c                                         ; $7e25: $d8

    dec bc                                        ; $7e26: $0b
    ld b, d                                       ; $7e27: $42
    jp nz, Jump_040_6b50                          ; $7e28: $c2 $50 $6b

    dec b                                         ; $7e2b: $05
    ld [hl], l                                    ; $7e2c: $75
    ld b, [hl]                                    ; $7e2d: $46
    sub a                                         ; $7e2e: $97
    ld [$4653], a                                 ; $7e2f: $ea $53 $46
    ld h, $c5                                     ; $7e32: $26 $c5
    add a                                         ; $7e34: $87

jr_040_7e35:
    ld e, [hl]                                    ; $7e35: $5e
    add hl, sp                                    ; $7e36: $39
    ld b, [hl]                                    ; $7e37: $46
    and b                                         ; $7e38: $a0
    adc e                                         ; $7e39: $8b
    add d                                         ; $7e3a: $82
    or b                                          ; $7e3b: $b0
    adc l                                         ; $7e3c: $8d
    ld l, $6e                                     ; $7e3d: $2e $6e
    add h                                         ; $7e3f: $84
    ld hl, $c8da                                  ; $7e40: $21 $da $c8
    ld h, h                                       ; $7e43: $64
    inc hl                                        ; $7e44: $23
    sbc $d3                                       ; $7e45: $de $d3
    xor b                                         ; $7e47: $a8
    sbc l                                         ; $7e48: $9d
    jr nz, jr_040_7e35                            ; $7e49: $20 $ea

    ld [c], a                                     ; $7e4b: $e2
    rlc [hl]                                      ; $7e4c: $cb $06
    call Call_000_208f                            ; $7e4e: $cd $8f $20
    push de                                       ; $7e51: $d5
    ld l, e                                       ; $7e52: $6b
    cp $8b                                        ; $7e53: $fe $8b
    rst $30                                       ; $7e55: $f7
    xor e                                         ; $7e56: $ab
    add hl, hl                                    ; $7e57: $29
    rst $10                                       ; $7e58: $d7
    xor a                                         ; $7e59: $af
    ld l, l                                       ; $7e5a: $6d
    cp [hl]                                       ; $7e5b: $be
    ldh a, [rNR22]                                ; $7e5c: $f0 $17
    ld a, $37                                     ; $7e5e: $3e $37
    dec [hl]                                      ; $7e60: $35
    db $d3                                        ; $7e61: $d3
    adc c                                         ; $7e62: $89
    db $e4                                        ; $7e63: $e4
    scf                                           ; $7e64: $37
    db $db                                        ; $7e65: $db
    and h                                         ; $7e66: $a4
    ld a, [de]                                    ; $7e67: $1a
    dec [hl]                                      ; $7e68: $35
    ld e, c                                       ; $7e69: $59
    ld h, b                                       ; $7e6a: $60
    ld a, c                                       ; $7e6b: $79
    or e                                          ; $7e6c: $b3
    ld [hl], e                                    ; $7e6d: $73
    adc $7f                                       ; $7e6e: $ce $7f
    add [hl]                                      ; $7e70: $86
    db $ec                                        ; $7e71: $ec
    ld c, a                                       ; $7e72: $4f
    ld [hl], l                                    ; $7e73: $75
    rra                                           ; $7e74: $1f
    scf                                           ; $7e75: $37
    ld a, e                                       ; $7e76: $7b
    add e                                         ; $7e77: $83
    ld a, b                                       ; $7e78: $78
    inc hl                                        ; $7e79: $23
    add sp, $57                                   ; $7e7a: $e8 $57
    xor l                                         ; $7e7c: $ad
    adc d                                         ; $7e7d: $8a
    di                                            ; $7e7e: $f3
    inc hl                                        ; $7e7f: $23
    ld c, h                                       ; $7e80: $4c
    inc hl                                        ; $7e81: $23
    adc b                                         ; $7e82: $88
    rst $30                                       ; $7e83: $f7
    cpl                                           ; $7e84: $2f
    ld l, [hl]                                    ; $7e85: $6e
    or $06                                        ; $7e86: $f6 $06
    pop af                                        ; $7e88: $f1
    ld b, [hl]                                    ; $7e89: $46
    ld d, b                                       ; $7e8a: $50
    dec hl                                        ; $7e8b: $2b
    sbc [hl]                                      ; $7e8c: $9e
    ld e, $35                                     ; $7e8d: $1e $35
    ld b, d                                       ; $7e8f: $42
    dec h                                         ; $7e90: $25
    ld l, [hl]                                    ; $7e91: $6e
    ld d, e                                       ; $7e92: $53
    ld a, l                                       ; $7e93: $7d
    call nc, $cdc5                                ; $7e94: $d4 $c5 $cd
    sbc $20                                       ; $7e97: $de $20
    sbc $c8                                       ; $7e99: $de $c8
    dec d                                         ; $7e9b: $15
    cp [hl]                                       ; $7e9c: $be
    ld a, h                                       ; $7e9d: $7c
    ld l, d                                       ; $7e9e: $6a
    adc a                                         ; $7e9f: $8f
    sub $dd                                       ; $7ea0: $d6 $dd
    dec de                                        ; $7ea2: $1b
    sub a                                         ; $7ea3: $97
    ld a, $6d                                     ; $7ea4: $3e $6d
    ld h, h                                       ; $7ea6: $64
    sbc c                                         ; $7ea7: $99
    adc e                                         ; $7ea8: $8b
    ld a, a                                       ; $7ea9: $7f
    ld d, d                                       ; $7eaa: $52
    jr nz, @+$7e                                  ; $7eab: $20 $7c

    inc a                                         ; $7ead: $3c
    ld d, c                                       ; $7eae: $51
    ld h, a                                       ; $7eaf: $67
    adc b                                         ; $7eb0: $88
    di                                            ; $7eb1: $f3
    inc hl                                        ; $7eb2: $23
    dec bc                                        ; $7eb3: $0b
    sbc l                                         ; $7eb4: $9d
    dec bc                                        ; $7eb5: $0b
    push hl                                       ; $7eb6: $e5
    db $db                                        ; $7eb7: $db
    ld b, a                                       ; $7eb8: $47
    inc h                                         ; $7eb9: $24
    cp [hl]                                       ; $7eba: $be
    ld l, l                                       ; $7ebb: $6d
    ld h, h                                       ; $7ebc: $64
    add c                                         ; $7ebd: $81
    push bc                                       ; $7ebe: $c5
    ld c, l                                       ; $7ebf: $4d
    or l                                          ; $7ec0: $b5
    inc e                                         ; $7ec1: $1c
    inc c                                         ; $7ec2: $0c
    ld d, c                                       ; $7ec3: $51
    ret c                                         ; $7ec4: $d8

    dec de                                        ; $7ec5: $1b
    xor c                                         ; $7ec6: $a9
    ld e, [hl]                                    ; $7ec7: $5e
    dec sp                                        ; $7ec8: $3b
    db $f4                                        ; $7ec9: $f4
    jp hl                                         ; $7eca: $e9


    sub b                                         ; $7ecb: $90
    cp [hl]                                       ; $7ecc: $be
    xor b                                         ; $7ecd: $a8
    adc c                                         ; $7ece: $89
    sbc e                                         ; $7ecf: $9b
    ld l, d                                       ; $7ed0: $6a
    or c                                          ; $7ed1: $b1
    adc e                                         ; $7ed2: $8b
    jp nz, $88de                                  ; $7ed3: $c2 $de $88

    rst $20                                       ; $7ed6: $e7
    adc l                                         ; $7ed7: $8d
    ld [hl], e                                    ; $7ed8: $73
    ld h, e                                       ; $7ed9: $63
    cpl                                           ; $7eda: $2f
    ret nc                                        ; $7edb: $d0

    ld b, l                                       ; $7edc: $45
    db $10                                        ; $7edd: $10
    or [hl]                                       ; $7ede: $b6
    ld hl, $7f61                                  ; $7edf: $21 $61 $7f
    and c                                         ; $7ee2: $a1
    ld a, [c]                                     ; $7ee3: $f2
    add hl, sp                                    ; $7ee4: $39
    ret                                           ; $7ee5: $c9


    ld l, b                                       ; $7ee6: $68
    ld [hl], d                                    ; $7ee7: $72
    ld [hl], c                                    ; $7ee8: $71
    inc hl                                        ; $7ee9: $23
    ld e, [hl]                                    ; $7eea: $5e
    db $10                                        ; $7eeb: $10
    ld l, a                                       ; $7eec: $6f
    inc b                                         ; $7eed: $04
    db $fd                                        ; $7eee: $fd
    ld a, [bc]                                    ; $7eef: $0a
    or l                                          ; $7ef0: $b5
    xor e                                         ; $7ef1: $ab
    xor d                                         ; $7ef2: $aa
    rst $28                                       ; $7ef3: $ef
    ei                                            ; $7ef4: $fb
    or h                                          ; $7ef5: $b4
    add hl, sp                                    ; $7ef6: $39
    ld d, [hl]                                    ; $7ef7: $56
    db $10                                        ; $7ef8: $10
    dec [hl]                                      ; $7ef9: $35
    and h                                         ; $7efa: $a4
    pop hl                                        ; $7efb: $e1
    ld [c], a                                     ; $7efc: $e2
    and [hl]                                      ; $7efd: $a6
    ld e, d                                       ; $7efe: $5a
    ld h, b                                       ; $7eff: $60
    ld l, a                                       ; $7f00: $6f
    add d                                         ; $7f01: $82
    ld hl, sp-$30                                 ; $7f02: $f8 $d0
    rst $18                                       ; $7f04: $df
    adc [hl]                                      ; $7f05: $8e
    jp z, $f1f7                                   ; $7f06: $ca $f7 $f1

    ld h, l                                       ; $7f09: $65
    add e                                         ; $7f0a: $83
    and $47                                       ; $7f0b: $e6 $47
    sub b                                         ; $7f0d: $90
    ld [$ff35], a                                 ; $7f0e: $ea $35 $ff
    push bc                                       ; $7f11: $c5
    ei                                            ; $7f12: $fb
    push de                                       ; $7f13: $d5
    sub h                                         ; $7f14: $94
    bit 0, h                                      ; $7f15: $cb $44
    ld b, [hl]                                    ; $7f17: $46
    rla                                           ; $7f18: $17
    scf                                           ; $7f19: $37
    dec sp                                        ; $7f1a: $3b
    xor $c6                                       ; $7f1b: $ee $c6
    cp c                                          ; $7f1d: $b9
    reti                                          ; $7f1e: $d9


    rst $08                                       ; $7f1f: $cf
    inc de                                        ; $7f20: $13
    add hl, de                                    ; $7f21: $19
    ld c, c                                       ; $7f22: $49
    cp c                                          ; $7f23: $b9
    inc d                                         ; $7f24: $14
    db $fd                                        ; $7f25: $fd
    ld l, e                                       ; $7f26: $6b
    ei                                            ; $7f27: $fb
    ld a, $d5                                     ; $7f28: $3e $d5
    ld e, a                                       ; $7f2a: $5f
    cp a                                          ; $7f2b: $bf
    ld [bc], a                                    ; $7f2c: $02
    xor l                                         ; $7f2d: $ad
    pop bc                                        ; $7f2e: $c1
    xor a                                         ; $7f2f: $af
    ld c, e                                       ; $7f30: $4b
    ld b, c                                       ; $7f31: $41
    ret c                                         ; $7f32: $d8

    add [hl]                                      ; $7f33: $86
    cp h                                          ; $7f34: $bc
    db $ec                                        ; $7f35: $ec
    adc a                                         ; $7f36: $8f
    rst $30                                       ; $7f37: $f7
    inc [hl]                                      ; $7f38: $34
    ld l, d                                       ; $7f39: $6a
    daa                                           ; $7f3a: $27
    rra                                           ; $7f3b: $1f
    ld [hl], l                                    ; $7f3c: $75
    ld l, c                                       ; $7f3d: $69
    ld d, l                                       ; $7f3e: $55
    or e                                          ; $7f3f: $b3
    ld e, e                                       ; $7f40: $5b
    sub [hl]                                      ; $7f41: $96
    rst $10                                       ; $7f42: $d7
    ld h, l                                       ; $7f43: $65
    ld a, a                                       ; $7f44: $7f
    adc d                                         ; $7f45: $8a
    ei                                            ; $7f46: $fb
    ld c, d                                       ; $7f47: $4a
    ld a, a                                       ; $7f48: $7f
    jr nc, jr_040_7f5f                            ; $7f49: $30 $14

    cp [hl]                                       ; $7f4b: $be
    cp b                                          ; $7f4c: $b8
    sub c                                         ; $7f4d: $91
    ld d, h                                       ; $7f4e: $54
    xor b                                         ; $7f4f: $a8
    sub l                                         ; $7f50: $95
    sub [hl]                                      ; $7f51: $96
    or e                                          ; $7f52: $b3
    dec a                                         ; $7f53: $3d
    xor b                                         ; $7f54: $a8

jr_040_7f55:
    sbc h                                         ; $7f55: $9c
    ei                                            ; $7f56: $fb
    jr c, jr_040_7f98                             ; $7f57: $38 $3f

    ld d, d                                       ; $7f59: $52
    ld e, l                                       ; $7f5a: $5d
    xor d                                         ; $7f5b: $aa
    rla                                           ; $7f5c: $17
    rst $30                                       ; $7f5d: $f7
    db $fd                                        ; $7f5e: $fd

jr_040_7f5f:
    ld a, [bc]                                    ; $7f5f: $0a
    sbc [hl]                                      ; $7f60: $9e
    ld d, e                                       ; $7f61: $53
    ld a, $d5                                     ; $7f62: $3e $d5

Call_040_7f64:
    ld b, l                                       ; $7f64: $45
    sbc l                                         ; $7f65: $9d
    cp e                                          ; $7f66: $bb
    jr z, jr_040_7f55                             ; $7f67: $28 $ec

    adc l                                         ; $7f69: $8d
    ld l, b                                       ; $7f6a: $68
    ret c                                         ; $7f6b: $d8

    rst $08                                       ; $7f6c: $cf
    daa                                           ; $7f6d: $27
    ld c, b                                       ; $7f6e: $48
    rst $00                                       ; $7f6f: $c7
    sub h                                         ; $7f70: $94
    ld sp, hl                                     ; $7f71: $f9
    inc [hl]                                      ; $7f72: $34
    ld e, d                                       ; $7f73: $5a
    ld hl, sp-$2e                                 ; $7f74: $f8 $d2
    ld c, b                                       ; $7f76: $48
    sbc d                                         ; $7f77: $9a
    xor b                                         ; $7f78: $a8
    sub l                                         ; $7f79: $95
    sub $2f                                       ; $7f7a: $d6 $2f
    ld l, [hl]                                    ; $7f7c: $6e
    jp z, $bca7                                   ; $7f7d: $ca $a7 $bc

    ret z                                         ; $7f80: $c8

    call nc, $015a                                ; $7f81: $d4 $5a $01
    sbc [hl]                                      ; $7f84: $9e
    adc b                                         ; $7f85: $88
    jr nz, jr_040_7fed                            ; $7f86: $20 $65

    ld h, h                                       ; $7f88: $64
    and d                                         ; $7f89: $a2
    ld l, $1d                                     ; $7f8a: $2e $1d
    ld [hl], a                                    ; $7f8c: $77
    jp nc, $c771                                  ; $7f8d: $d2 $71 $c7

    ld l, l                                       ; $7f90: $6d
    rst $20                                       ; $7f91: $e7
    and d                                         ; $7f92: $a2
    pop de                                        ; $7f93: $d1
    jp nz, $a7d7                                  ; $7f94: $c2 $d7 $a7

    adc l                                         ; $7f97: $8d

jr_040_7f98:
    ret z                                         ; $7f98: $c8

    ld c, b                                       ; $7f99: $48
    jp z, $89ec                                   ; $7f9a: $ca $ec $89

    rrca                                          ; $7f9d: $0f
    push bc                                       ; $7f9e: $c5
    sbc $97                                       ; $7f9f: $de $97
    push hl                                       ; $7fa1: $e5
    ld a, [de]                                    ; $7fa2: $1a
    adc b                                         ; $7fa3: $88
    sbc [hl]                                      ; $7fa4: $9e
    adc [hl]                                      ; $7fa5: $8e
    ld e, h                                       ; $7fa6: $5c
    sbc a                                         ; $7fa7: $9f
    ld c, [hl]                                    ; $7fa8: $4e
    db $e4                                        ; $7fa9: $e4
    ld b, e                                       ; $7faa: $43
    adc $e6                                       ; $7fab: $ce $e6
    adc a                                         ; $7fad: $8f
    inc sp                                        ; $7fae: $33
    xor b                                         ; $7faf: $a8
    adc c                                         ; $7fb0: $89
    cp d                                          ; $7fb1: $ba
    inc a                                         ; $7fb2: $3c
    add hl, bc                                    ; $7fb3: $09
    inc de                                        ; $7fb4: $13
    add h                                         ; $7fb5: $84
    ld l, l                                       ; $7fb6: $6d
    ret z                                         ; $7fb7: $c8

    rst $20                                       ; $7fb8: $e7
    rrca                                          ; $7fb9: $0f
    sub l                                         ; $7fba: $95
    rst $08                                       ; $7fbb: $cf
    rst $28                                       ; $7fbc: $ef
    adc l                                         ; $7fbd: $8d
    cp b                                          ; $7fbe: $b8
    ld [hl], a                                    ; $7fbf: $77
    ld l, [hl]                                    ; $7fc0: $6e
    ld [hl], $fa                                  ; $7fc1: $36 $fa
    dec d                                         ; $7fc3: $15
    sbc l                                         ; $7fc4: $9d
    ld d, h                                       ; $7fc5: $54
    ld d, l                                       ; $7fc6: $55
    rst $18                                       ; $7fc7: $df
    rst $30                                       ; $7fc8: $f7
    pop af                                        ; $7fc9: $f1
    sbc h                                         ; $7fca: $9c
    ld a, [bc]                                    ; $7fcb: $0a
    pop af                                        ; $7fcc: $f1
    cp $e5                                        ; $7fcd: $fe $e5
    ld d, e                                       ; $7fcf: $53
    ld a, [hl]                                    ; $7fd0: $7e
    add c                                         ; $7fd1: $81
    ld hl, $f43e                                  ; $7fd2: $21 $3e $f4
    ld [hl], a                                    ; $7fd5: $77
    ld l, d                                       ; $7fd6: $6a
    db $e4                                        ; $7fd7: $e4
    halt                                          ; $7fd8: $76
    inc [hl]                                      ; $7fd9: $34
    ld e, d                                       ; $7fda: $5a
    ld a, b                                       ; $7fdb: $78
    and d                                         ; $7fdc: $a2
    or b                                          ; $7fdd: $b0
    scf                                           ; $7fde: $37
    ld [c], a                                     ; $7fdf: $e2
    sbc $b9                                       ; $7fe0: $de $b9
    reti                                          ; $7fe2: $d9


    xor b                                         ; $7fe3: $a8
    or l                                          ; $7fe4: $b5
    ld [bc], a                                    ; $7fe5: $02
    rst $38                                       ; $7fe6: $ff
    rst $38                                       ; $7fe7: $ff
    rst $38                                       ; $7fe8: $ff
    rst $38                                       ; $7fe9: $ff
    rst $38                                       ; $7fea: $ff
    rst $38                                       ; $7feb: $ff
    rst $38                                       ; $7fec: $ff

jr_040_7fed:
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
