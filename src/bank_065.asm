; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $065", ROMX[$4000], BANK[$65]

    ld h, l                                       ; $4000: $65
    nop                                           ; $4001: $00
    cp c                                          ; $4002: $b9
    inc h                                         ; $4003: $24
    nop                                           ; $4004: $00
    rst $00                                       ; $4005: $c7
    inc h                                         ; $4006: $24
    nop                                           ; $4007: $00
    rst $10                                       ; $4008: $d7
    inc h                                         ; $4009: $24
    nop                                           ; $400a: $00
    ld a, [c]                                     ; $400b: $f2
    inc h                                         ; $400c: $24
    nop                                           ; $400d: $00
    ld hl, sp+$24                                 ; $400e: $f8 $24
    nop                                           ; $4010: $00
    db $fc                                        ; $4011: $fc
    inc h                                         ; $4012: $24
    nop                                           ; $4013: $00
    nop                                           ; $4014: $00
    dec h                                         ; $4015: $25
    nop                                           ; $4016: $00
    dec b                                         ; $4017: $05
    dec h                                         ; $4018: $25
    nop                                           ; $4019: $00
    ld de, $0025                                  ; $401a: $11 $25 $00
    dec e                                         ; $401d: $1d
    dec h                                         ; $401e: $25
    nop                                           ; $401f: $00
    ld h, $25                                     ; $4020: $26 $25
    nop                                           ; $4022: $00
    cpl                                           ; $4023: $2f
    dec h                                         ; $4024: $25
    nop                                           ; $4025: $00
    add hl, sp                                    ; $4026: $39
    dec h                                         ; $4027: $25
    nop                                           ; $4028: $00
    ld b, h                                       ; $4029: $44
    dec h                                         ; $402a: $25
    nop                                           ; $402b: $00
    ld c, a                                       ; $402c: $4f
    dec h                                         ; $402d: $25
    nop                                           ; $402e: $00
    ld e, d                                       ; $402f: $5a
    dec h                                         ; $4030: $25
    nop                                           ; $4031: $00
    ld h, [hl]                                    ; $4032: $66
    dec h                                         ; $4033: $25
    nop                                           ; $4034: $00
    ld [hl], d                                    ; $4035: $72
    dec h                                         ; $4036: $25
    nop                                           ; $4037: $00
    ld a, a                                       ; $4038: $7f
    dec h                                         ; $4039: $25
    nop                                           ; $403a: $00
    adc b                                         ; $403b: $88
    dec h                                         ; $403c: $25
    nop                                           ; $403d: $00
    sub c                                         ; $403e: $91
    dec h                                         ; $403f: $25
    nop                                           ; $4040: $00
    sbc e                                         ; $4041: $9b
    dec h                                         ; $4042: $25
    nop                                           ; $4043: $00
    xor b                                         ; $4044: $a8
    dec h                                         ; $4045: $25
    nop                                           ; $4046: $00
    or l                                          ; $4047: $b5
    dec h                                         ; $4048: $25
    nop                                           ; $4049: $00
    ret nz                                        ; $404a: $c0

    dec h                                         ; $404b: $25
    nop                                           ; $404c: $00
    call $0025                                    ; $404d: $cd $25 $00
    ret c                                         ; $4050: $d8

    dec h                                         ; $4051: $25
    nop                                           ; $4052: $00
    rst $28                                       ; $4053: $ef
    dec h                                         ; $4054: $25
    nop                                           ; $4055: $00
    ld d, $26                                     ; $4056: $16 $26
    nop                                           ; $4058: $00
    ld h, $26                                     ; $4059: $26 $26
    nop                                           ; $405b: $00
    dec a                                         ; $405c: $3d
    ld h, $00                                     ; $405d: $26 $00
    ld d, a                                       ; $405f: $57
    ld h, $00                                     ; $4060: $26 $00
    sbc $26                                       ; $4062: $de $26
    nop                                           ; $4064: $00
    dec h                                         ; $4065: $25
    daa                                           ; $4066: $27
    nop                                           ; $4067: $00
    dec a                                         ; $4068: $3d
    daa                                           ; $4069: $27
    nop                                           ; $406a: $00
    ld d, c                                       ; $406b: $51
    daa                                           ; $406c: $27
    nop                                           ; $406d: $00
    ld e, [hl]                                    ; $406e: $5e
    daa                                           ; $406f: $27
    nop                                           ; $4070: $00
    ld [hl], e                                    ; $4071: $73
    daa                                           ; $4072: $27
    nop                                           ; $4073: $00
    add l                                         ; $4074: $85
    daa                                           ; $4075: $27
    nop                                           ; $4076: $00
    xor c                                         ; $4077: $a9
    daa                                           ; $4078: $27
    nop                                           ; $4079: $00
    call Call_000_0027                            ; $407a: $cd $27 $00
    ld hl, sp+$27                                 ; $407d: $f8 $27
    nop                                           ; $407f: $00
    jr jr_065_40aa                                ; $4080: $18 $28

    nop                                           ; $4082: $00
    add hl, sp                                    ; $4083: $39
    jr z, jr_065_4086                             ; $4084: $28 $00

jr_065_4086:
    ld b, e                                       ; $4086: $43
    jr z, jr_065_4089                             ; $4087: $28 $00

jr_065_4089:
    ld h, b                                       ; $4089: $60
    jr z, jr_065_408c                             ; $408a: $28 $00

jr_065_408c:
    ld a, b                                       ; $408c: $78
    jr z, jr_065_408f                             ; $408d: $28 $00

jr_065_408f:
    add [hl]                                      ; $408f: $86
    jr z, jr_065_4092                             ; $4090: $28 $00

jr_065_4092:
    or h                                          ; $4092: $b4
    jr z, jr_065_4095                             ; $4093: $28 $00

jr_065_4095:
    call nc, RST_28                               ; $4095: $d4 $28 $00
    sbc $28                                       ; $4098: $de $28
    nop                                           ; $409a: $00
    rst $20                                       ; $409b: $e7
    jr z, jr_065_409e                             ; $409c: $28 $00

jr_065_409e:
    rst $30                                       ; $409e: $f7
    jr z, jr_065_40a1                             ; $409f: $28 $00

jr_065_40a1:
    dec c                                         ; $40a1: $0d
    add hl, hl                                    ; $40a2: $29
    nop                                           ; $40a3: $00
    ld sp, $0029                                  ; $40a4: $31 $29 $00
    ld l, a                                       ; $40a7: $6f
    add hl, hl                                    ; $40a8: $29
    nop                                           ; $40a9: $00

jr_065_40aa:
    adc d                                         ; $40aa: $8a
    add hl, hl                                    ; $40ab: $29
    nop                                           ; $40ac: $00
    xor [hl]                                      ; $40ad: $ae
    add hl, hl                                    ; $40ae: $29
    nop                                           ; $40af: $00
    jp nc, Jump_000_0029                          ; $40b0: $d2 $29 $00

    xor $29                                       ; $40b3: $ee $29
    nop                                           ; $40b5: $00
    jr jr_065_40e2                                ; $40b6: $18 $2a

    nop                                           ; $40b8: $00
    ld [hl], $2a                                  ; $40b9: $36 $2a
    nop                                           ; $40bb: $00
    ld d, b                                       ; $40bc: $50
    ld a, [hl+]                                   ; $40bd: $2a
    nop                                           ; $40be: $00
    halt                                          ; $40bf: $76
    ld a, [hl+]                                   ; $40c0: $2a
    nop                                           ; $40c1: $00
    add [hl]                                      ; $40c2: $86
    ld a, [hl+]                                   ; $40c3: $2a
    nop                                           ; $40c4: $00
    call z, $002a                                 ; $40c5: $cc $2a $00
    ldh [$2a], a                                  ; $40c8: $e0 $2a
    nop                                           ; $40ca: $00
    ld e, [hl]                                    ; $40cb: $5e
    dec hl                                        ; $40cc: $2b
    nop                                           ; $40cd: $00
    ld l, a                                       ; $40ce: $6f
    dec hl                                        ; $40cf: $2b
    nop                                           ; $40d0: $00
    sub a                                         ; $40d1: $97
    dec hl                                        ; $40d2: $2b
    nop                                           ; $40d3: $00
    xor b                                         ; $40d4: $a8
    dec hl                                        ; $40d5: $2b
    nop                                           ; $40d6: $00
    or e                                          ; $40d7: $b3
    dec hl                                        ; $40d8: $2b
    nop                                           ; $40d9: $00
    jp $002b                                      ; $40da: $c3 $2b $00


    db $f4                                        ; $40dd: $f4
    dec hl                                        ; $40de: $2b
    nop                                           ; $40df: $00
    ld a, [bc]                                    ; $40e0: $0a
    inc l                                         ; $40e1: $2c

jr_065_40e2:
    nop                                           ; $40e2: $00
    ld c, $2c                                     ; $40e3: $0e $2c
    nop                                           ; $40e5: $00
    inc de                                        ; $40e6: $13
    inc l                                         ; $40e7: $2c
    nop                                           ; $40e8: $00
    ld a, [de]                                    ; $40e9: $1a
    inc l                                         ; $40ea: $2c
    nop                                           ; $40eb: $00
    ld b, [hl]                                    ; $40ec: $46
    inc l                                         ; $40ed: $2c

Jump_065_40ee:
    nop                                           ; $40ee: $00
    ld l, h                                       ; $40ef: $6c
    inc l                                         ; $40f0: $2c
    nop                                           ; $40f1: $00
    sub b                                         ; $40f2: $90
    inc l                                         ; $40f3: $2c
    nop                                           ; $40f4: $00
    reti                                          ; $40f5: $d9


    inc l                                         ; $40f6: $2c
    nop                                           ; $40f7: $00
    dec b                                         ; $40f8: $05
    dec l                                         ; $40f9: $2d
    nop                                           ; $40fa: $00
    ld l, $2d                                     ; $40fb: $2e $2d
    nop                                           ; $40fd: $00
    ld e, d                                       ; $40fe: $5a
    dec l                                         ; $40ff: $2d
    nop                                           ; $4100: $00
    ld a, d                                       ; $4101: $7a
    dec l                                         ; $4102: $2d
    nop                                           ; $4103: $00
    cp a                                          ; $4104: $bf
    dec l                                         ; $4105: $2d
    nop                                           ; $4106: $00
    jp z, $002d                                   ; $4107: $ca $2d $00

    db $ed                                        ; $410a: $ed
    dec l                                         ; $410b: $2d
    nop                                           ; $410c: $00
    rst $38                                       ; $410d: $ff
    dec l                                         ; $410e: $2d
    nop                                           ; $410f: $00
    rra                                           ; $4110: $1f
    ld l, $00                                     ; $4111: $2e $00
    ld sp, $002e                                  ; $4113: $31 $2e $00
    ld h, l                                       ; $4116: $65
    ld l, $00                                     ; $4117: $2e $00
    xor d                                         ; $4119: $aa
    ld l, $00                                     ; $411a: $2e $00
    rst $10                                       ; $411c: $d7
    ld l, $00                                     ; $411d: $2e $00
    rrca                                          ; $411f: $0f
    cpl                                           ; $4120: $2f
    nop                                           ; $4121: $00
    ld e, l                                       ; $4122: $5d
    cpl                                           ; $4123: $2f
    nop                                           ; $4124: $00
    ld l, l                                       ; $4125: $6d
    cpl                                           ; $4126: $2f
    nop                                           ; $4127: $00
    jp z, $002f                                   ; $4128: $ca $2f $00

    pop hl                                        ; $412b: $e1
    cpl                                           ; $412c: $2f
    nop                                           ; $412d: $00
    inc c                                         ; $412e: $0c
    jr nc, jr_065_4131                            ; $412f: $30 $00

jr_065_4131:
    inc h                                         ; $4131: $24
    jr nc, jr_065_4134                            ; $4132: $30 $00

jr_065_4134:
    ld l, $30                                     ; $4134: $2e $30
    nop                                           ; $4136: $00
    ld e, c                                       ; $4137: $59
    jr nc, jr_065_413a                            ; $4138: $30 $00

jr_065_413a:
    sub h                                         ; $413a: $94
    jr nc, jr_065_413d                            ; $413b: $30 $00

jr_065_413d:
    sbc b                                         ; $413d: $98
    jr nc, jr_065_4140                            ; $413e: $30 $00

jr_065_4140:
    cp [hl]                                       ; $4140: $be
    jr nc, jr_065_4143                            ; $4141: $30 $00

jr_065_4143:
    db $e3                                        ; $4143: $e3
    jr nc, jr_065_4146                            ; $4144: $30 $00

jr_065_4146:
    di                                            ; $4146: $f3
    jr nc, jr_065_4149                            ; $4147: $30 $00

jr_065_4149:
    rrca                                          ; $4149: $0f
    ld sp, $2900                                  ; $414a: $31 $00 $29
    ld sp, $4d00                                  ; $414d: $31 $00 $4d
    ld sp, $5f00                                  ; $4150: $31 $00 $5f
    ld sp, $b100                                  ; $4153: $31 $00 $b1
    ld sp, $d100                                  ; $4156: $31 $00 $d1
    ld sp, $db00                                  ; $4159: $31 $00 $db
    ld sp, $fd00                                  ; $415c: $31 $00 $fd
    ld sp, $0a00                                  ; $415f: $31 $00 $0a
    ld [hl-], a                                   ; $4162: $32
    nop                                           ; $4163: $00
    ld c, [hl]                                    ; $4164: $4e
    ld [hl-], a                                   ; $4165: $32
    nop                                           ; $4166: $00
    ld [hl], h                                    ; $4167: $74
    ld [hl-], a                                   ; $4168: $32
    nop                                           ; $4169: $00
    ld a, a                                       ; $416a: $7f
    ld [hl-], a                                   ; $416b: $32
    nop                                           ; $416c: $00
    sbc e                                         ; $416d: $9b
    ld [hl-], a                                   ; $416e: $32
    nop                                           ; $416f: $00
    or c                                          ; $4170: $b1
    ld [hl-], a                                   ; $4171: $32
    nop                                           ; $4172: $00
    adc $32                                       ; $4173: $ce $32
    nop                                           ; $4175: $00
    ld [c], a                                     ; $4176: $e2
    ld [hl-], a                                   ; $4177: $32
    nop                                           ; $4178: $00
    inc b                                         ; $4179: $04
    inc sp                                        ; $417a: $33
    nop                                           ; $417b: $00
    rrca                                          ; $417c: $0f
    inc sp                                        ; $417d: $33
    nop                                           ; $417e: $00
    ld a, [hl+]                                   ; $417f: $2a
    inc sp                                        ; $4180: $33
    nop                                           ; $4181: $00
    ld sp, $0033                                  ; $4182: $31 $33 $00
    ld b, b                                       ; $4185: $40
    inc sp                                        ; $4186: $33
    nop                                           ; $4187: $00
    ld c, [hl]                                    ; $4188: $4e
    inc sp                                        ; $4189: $33
    nop                                           ; $418a: $00
    ld e, b                                       ; $418b: $58
    inc sp                                        ; $418c: $33
    nop                                           ; $418d: $00
    ld l, [hl]                                    ; $418e: $6e
    inc sp                                        ; $418f: $33
    nop                                           ; $4190: $00
    add b                                         ; $4191: $80
    inc sp                                        ; $4192: $33
    nop                                           ; $4193: $00
    sbc b                                         ; $4194: $98
    inc sp                                        ; $4195: $33
    nop                                           ; $4196: $00
    and c                                         ; $4197: $a1
    inc sp                                        ; $4198: $33
    nop                                           ; $4199: $00
    xor [hl]                                      ; $419a: $ae
    inc sp                                        ; $419b: $33
    nop                                           ; $419c: $00
    ret nc                                        ; $419d: $d0

    inc sp                                        ; $419e: $33
    nop                                           ; $419f: $00
    inc d                                         ; $41a0: $14
    inc [hl]                                      ; $41a1: $34
    nop                                           ; $41a2: $00
    ld [hl], $34                                  ; $41a3: $36 $34
    nop                                           ; $41a5: $00
    ld b, h                                       ; $41a6: $44
    inc [hl]                                      ; $41a7: $34
    nop                                           ; $41a8: $00
    ld d, a                                       ; $41a9: $57
    inc [hl]                                      ; $41aa: $34
    nop                                           ; $41ab: $00
    ld l, b                                       ; $41ac: $68
    inc [hl]                                      ; $41ad: $34
    nop                                           ; $41ae: $00
    adc c                                         ; $41af: $89
    inc [hl]                                      ; $41b0: $34
    nop                                           ; $41b1: $00
    or b                                          ; $41b2: $b0
    inc [hl]                                      ; $41b3: $34
    nop                                           ; $41b4: $00
    ret nz                                        ; $41b5: $c0

    inc [hl]                                      ; $41b6: $34
    nop                                           ; $41b7: $00
    db $ec                                        ; $41b8: $ec
    inc [hl]                                      ; $41b9: $34
    nop                                           ; $41ba: $00
    db $f4                                        ; $41bb: $f4
    inc [hl]                                      ; $41bc: $34
    nop                                           ; $41bd: $00
    ld c, $35                                     ; $41be: $0e $35
    nop                                           ; $41c0: $00
    ld b, d                                       ; $41c1: $42
    dec [hl]                                      ; $41c2: $35
    nop                                           ; $41c3: $00
    ld e, d                                       ; $41c4: $5a
    dec [hl]                                      ; $41c5: $35
    nop                                           ; $41c6: $00
    ld a, c                                       ; $41c7: $79
    dec [hl]                                      ; $41c8: $35
    nop                                           ; $41c9: $00
    adc h                                         ; $41ca: $8c
    dec [hl]                                      ; $41cb: $35
    nop                                           ; $41cc: $00
    or c                                          ; $41cd: $b1
    dec [hl]                                      ; $41ce: $35
    nop                                           ; $41cf: $00
    call nz, Call_000_0035                        ; $41d0: $c4 $35 $00
    push hl                                       ; $41d3: $e5
    dec [hl]                                      ; $41d4: $35
    nop                                           ; $41d5: $00
    db $ec                                        ; $41d6: $ec
    dec [hl]                                      ; $41d7: $35
    nop                                           ; $41d8: $00
    ld c, $36                                     ; $41d9: $0e $36
    nop                                           ; $41db: $00
    inc l                                         ; $41dc: $2c
    ld [hl], $00                                  ; $41dd: $36 $00
    ld [hl], $36                                  ; $41df: $36 $36
    nop                                           ; $41e1: $00
    ld c, [hl]                                    ; $41e2: $4e
    ld [hl], $00                                  ; $41e3: $36 $00
    ld h, a                                       ; $41e5: $67
    ld [hl], $00                                  ; $41e6: $36 $00
    adc d                                         ; $41e8: $8a
    ld [hl], $00                                  ; $41e9: $36 $00
    or [hl]                                       ; $41eb: $b6
    ld [hl], $00                                  ; $41ec: $36 $00
    rst $20                                       ; $41ee: $e7
    ld [hl], $00                                  ; $41ef: $36 $00
    inc c                                         ; $41f1: $0c
    scf                                           ; $41f2: $37
    nop                                           ; $41f3: $00
    inc sp                                        ; $41f4: $33
    scf                                           ; $41f5: $37
    nop                                           ; $41f6: $00
    ld c, d                                       ; $41f7: $4a
    scf                                           ; $41f8: $37
    nop                                           ; $41f9: $00
    ld h, a                                       ; $41fa: $67
    scf                                           ; $41fb: $37
    nop                                           ; $41fc: $00
    ld a, h                                       ; $41fd: $7c
    scf                                           ; $41fe: $37
    nop                                           ; $41ff: $00
    sub l                                         ; $4200: $95
    scf                                           ; $4201: $37
    nop                                           ; $4202: $00
    and l                                         ; $4203: $a5
    scf                                           ; $4204: $37
    nop                                           ; $4205: $00
    push bc                                       ; $4206: $c5
    scf                                           ; $4207: $37
    nop                                           ; $4208: $00
    push de                                       ; $4209: $d5
    scf                                           ; $420a: $37
    nop                                           ; $420b: $00
    push af                                       ; $420c: $f5
    scf                                           ; $420d: $37
    nop                                           ; $420e: $00
    dec bc                                        ; $420f: $0b
    jr c, jr_065_4212                             ; $4210: $38 $00

jr_065_4212:
    ld h, $38                                     ; $4212: $26 $38
    nop                                           ; $4214: $00
    ld a, $38                                     ; $4215: $3e $38
    nop                                           ; $4217: $00
    ld c, [hl]                                    ; $4218: $4e
    jr c, jr_065_421b                             ; $4219: $38 $00

jr_065_421b:
    ld e, a                                       ; $421b: $5f
    jr c, jr_065_421e                             ; $421c: $38 $00

jr_065_421e:
    ld l, [hl]                                    ; $421e: $6e
    jr c, jr_065_4221                             ; $421f: $38 $00

jr_065_4221:
    add [hl]                                      ; $4221: $86
    jr c, jr_065_4224                             ; $4222: $38 $00

jr_065_4224:
    ret                                           ; $4224: $c9


    jr c, jr_065_4227                             ; $4225: $38 $00

jr_065_4227:
    db $e4                                        ; $4227: $e4
    jr c, jr_065_422a                             ; $4228: $38 $00

jr_065_422a:
    cp $38                                        ; $422a: $fe $38
    nop                                           ; $422c: $00
    dec c                                         ; $422d: $0d
    add hl, sp                                    ; $422e: $39
    nop                                           ; $422f: $00
    ld [hl+], a                                   ; $4230: $22
    add hl, sp                                    ; $4231: $39
    nop                                           ; $4232: $00
    ld l, $39                                     ; $4233: $2e $39
    nop                                           ; $4235: $00
    ld c, e                                       ; $4236: $4b
    add hl, sp                                    ; $4237: $39
    nop                                           ; $4238: $00
    ld h, d                                       ; $4239: $62
    add hl, sp                                    ; $423a: $39
    nop                                           ; $423b: $00
    add b                                         ; $423c: $80
    add hl, sp                                    ; $423d: $39
    nop                                           ; $423e: $00
    adc h                                         ; $423f: $8c
    add hl, sp                                    ; $4240: $39
    nop                                           ; $4241: $00
    or d                                          ; $4242: $b2
    add hl, sp                                    ; $4243: $39
    nop                                           ; $4244: $00
    add $39                                       ; $4245: $c6 $39
    nop                                           ; $4247: $00
    call c, Call_000_0039                         ; $4248: $dc $39 $00
    dec e                                         ; $424b: $1d
    ld a, [hl-]                                   ; $424c: $3a
    nop                                           ; $424d: $00
    ld a, [hl+]                                   ; $424e: $2a
    ld a, [hl-]                                   ; $424f: $3a
    nop                                           ; $4250: $00
    ld b, [hl]                                    ; $4251: $46
    ld a, [hl-]                                   ; $4252: $3a
    nop                                           ; $4253: $00
    ld d, c                                       ; $4254: $51
    ld a, [hl-]                                   ; $4255: $3a
    nop                                           ; $4256: $00
    ld h, b                                       ; $4257: $60
    ld a, [hl-]                                   ; $4258: $3a
    nop                                           ; $4259: $00
    ld a, [hl]                                    ; $425a: $7e
    ld a, [hl-]                                   ; $425b: $3a
    nop                                           ; $425c: $00
    xor c                                         ; $425d: $a9
    ld a, [hl-]                                   ; $425e: $3a
    nop                                           ; $425f: $00
    or c                                          ; $4260: $b1
    ld a, [hl-]                                   ; $4261: $3a
    nop                                           ; $4262: $00
    pop hl                                        ; $4263: $e1
    ld a, [hl-]                                   ; $4264: $3a
    nop                                           ; $4265: $00
    di                                            ; $4266: $f3
    ld a, [hl-]                                   ; $4267: $3a
    nop                                           ; $4268: $00
    jr c, jr_065_42a6                             ; $4269: $38 $3b

    nop                                           ; $426b: $00
    ld e, d                                       ; $426c: $5a
    dec sp                                        ; $426d: $3b
    nop                                           ; $426e: $00
    ld h, c                                       ; $426f: $61
    dec sp                                        ; $4270: $3b
    nop                                           ; $4271: $00
    ld a, [hl]                                    ; $4272: $7e
    dec sp                                        ; $4273: $3b
    nop                                           ; $4274: $00
    and h                                         ; $4275: $a4
    dec sp                                        ; $4276: $3b
    nop                                           ; $4277: $00
    xor b                                         ; $4278: $a8
    dec sp                                        ; $4279: $3b
    nop                                           ; $427a: $00
    call Call_000_003b                            ; $427b: $cd $3b $00
    reti                                          ; $427e: $d9


    dec sp                                        ; $427f: $3b
    nop                                           ; $4280: $00
    di                                            ; $4281: $f3
    dec sp                                        ; $4282: $3b
    nop                                           ; $4283: $00
    db $fc                                        ; $4284: $fc
    dec sp                                        ; $4285: $3b
    nop                                           ; $4286: $00
    ld b, $3c                                     ; $4287: $06 $3c
    nop                                           ; $4289: $00
    sbc h                                         ; $428a: $9c
    inc a                                         ; $428b: $3c

Call_065_428c:
    nop                                           ; $428c: $00
    add $3c                                       ; $428d: $c6 $3c
    nop                                           ; $428f: $00
    inc c                                         ; $4290: $0c
    dec a                                         ; $4291: $3d
    nop                                           ; $4292: $00
    ld [hl+], a                                   ; $4293: $22
    dec a                                         ; $4294: $3d
    nop                                           ; $4295: $00
    ld c, d                                       ; $4296: $4a
    dec a                                         ; $4297: $3d
    nop                                           ; $4298: $00
    ld a, e                                       ; $4299: $7b
    dec a                                         ; $429a: $3d
    nop                                           ; $429b: $00
    sbc d                                         ; $429c: $9a
    dec a                                         ; $429d: $3d
    nop                                           ; $429e: $00
    add hl, bc                                    ; $429f: $09
    ld a, $00                                     ; $42a0: $3e $00
    ld c, a                                       ; $42a2: $4f
    ld a, $00                                     ; $42a3: $3e $00
    ld [hl], a                                    ; $42a5: $77

jr_065_42a6:
    ld a, $00                                     ; $42a6: $3e $00
    and e                                         ; $42a8: $a3
    ld a, $00                                     ; $42a9: $3e $00
    jp c, $003e                                   ; $42ab: $da $3e $00

    rst $30                                       ; $42ae: $f7
    ld a, $00                                     ; $42af: $3e $00
    ld c, c                                       ; $42b1: $49
    ccf                                           ; $42b2: $3f
    nop                                           ; $42b3: $00
    ld e, h                                       ; $42b4: $5c
    ccf                                           ; $42b5: $3f
    nop                                           ; $42b6: $00
    ld [hl], h                                    ; $42b7: $74
    ccf                                           ; $42b8: $3f
    nop                                           ; $42b9: $00
    sub h                                         ; $42ba: $94
    ccf                                           ; $42bb: $3f
    nop                                           ; $42bc: $00
    or l                                          ; $42bd: $b5
    ccf                                           ; $42be: $3f
    nop                                           ; $42bf: $00
    jp c, $013f                                   ; $42c0: $da $3f $01

    ld bc, $0100                                  ; $42c3: $01 $00 $01
    ld d, $00                                     ; $42c6: $16 $00
    ld bc, $001b                                  ; $42c8: $01 $1b $00
    ld bc, $003b                                  ; $42cb: $01 $3b $00
    ld bc, $0041                                  ; $42ce: $01 $41 $00
    ld bc, $0049                                  ; $42d1: $01 $49 $00
    ld bc, $0084                                  ; $42d4: $01 $84 $00
    ld bc, $0099                                  ; $42d7: $01 $99 $00
    ld bc, $00c3                                  ; $42da: $01 $c3 $00
    ld bc, $00cb                                  ; $42dd: $01 $cb $00
    ld bc, $00fa                                  ; $42e0: $01 $fa $00
    ld bc, $0101                                  ; $42e3: $01 $01 $01
    ld bc, $0116                                  ; $42e6: $01 $16 $01
    ld bc, $012b                                  ; $42e9: $01 $2b $01
    ld bc, $0155                                  ; $42ec: $01 $55 $01
    ld bc, $0190                                  ; $42ef: $01 $90 $01
    ld bc, $01a6                                  ; $42f2: $01 $a6 $01
    ld bc, $01af                                  ; $42f5: $01 $af $01
    ld bc, $01cd                                  ; $42f8: $01 $cd $01
    ld bc, $01e1                                  ; $42fb: $01 $e1 $01
    ld bc, $01f8                                  ; $42fe: $01 $f8 $01
    ld bc, $0215                                  ; $4301: $01 $15 $02
    ld bc, $024b                                  ; $4304: $01 $4b $02
    ld bc, $0258                                  ; $4307: $01 $58 $02
    ld bc, $02bf                                  ; $430a: $01 $bf $02
    ld bc, $02ca                                  ; $430d: $01 $ca $02
    ld bc, $02db                                  ; $4310: $01 $db $02
    ld bc, $02eb                                  ; $4313: $01 $eb $02
    ld bc, $0305                                  ; $4316: $01 $05 $03
    ld bc, $0319                                  ; $4319: $01 $19 $03
    ld bc, $0343                                  ; $431c: $01 $43 $03
    ld bc, $0357                                  ; $431f: $01 $57 $03
    ld bc, $036d                                  ; $4322: $01 $6d $03
    ld bc, $03db                                  ; $4325: $01 $db $03
    ld bc, $03f4                                  ; $4328: $01 $f4 $03
    ld bc, $040f                                  ; $432b: $01 $0f $04
    ld bc, $0432                                  ; $432e: $01 $32 $04
    ld bc, $0448                                  ; $4331: $01 $48 $04
    ld bc, $046f                                  ; $4334: $01 $6f $04
    ld bc, $0482                                  ; $4337: $01 $82 $04
    ld bc, $04a2                                  ; $433a: $01 $a2 $04
    ld bc, $04c0                                  ; $433d: $01 $c0 $04
    ld bc, $04df                                  ; $4340: $01 $df $04
    ld bc, $04f6                                  ; $4343: $01 $f6 $04
    ld bc, $0514                                  ; $4346: $01 $14 $05
    ld bc, $05c4                                  ; $4349: $01 $c4 $05
    ld bc, $05d4                                  ; $434c: $01 $d4 $05
    ld bc, $062b                                  ; $434f: $01 $2b $06
    ld bc, $0641                                  ; $4352: $01 $41 $06
    ld bc, $065a                                  ; $4355: $01 $5a $06
    ld bc, $0668                                  ; $4358: $01 $68 $06
    ld bc, $06af                                  ; $435b: $01 $af $06
    ld bc, $070e                                  ; $435e: $01 $0e $07
    ld bc, $0728                                  ; $4361: $01 $28 $07
    ld bc, $0738                                  ; $4364: $01 $38 $07
    ld bc, $074d                                  ; $4367: $01 $4d $07
    ld bc, $075c                                  ; $436a: $01 $5c $07
    ld bc, $076d                                  ; $436d: $01 $6d $07
    ld bc, $077e                                  ; $4370: $01 $7e $07
    ld bc, $078f                                  ; $4373: $01 $8f $07
    ld bc, $079e                                  ; $4376: $01 $9e $07
    ld bc, $07ab                                  ; $4379: $01 $ab $07
    ld bc, $07b5                                  ; $437c: $01 $b5 $07
    ld bc, $07c0                                  ; $437f: $01 $c0 $07
    ld bc, $07d7                                  ; $4382: $01 $d7 $07
    ld bc, $07fe                                  ; $4385: $01 $fe $07
    ld bc, $0824                                  ; $4388: $01 $24 $08
    ld bc, $0847                                  ; $438b: $01 $47 $08
    ld bc, $0857                                  ; $438e: $01 $57 $08
    ld bc, $0879                                  ; $4391: $01 $79 $08
    ld bc, $08a7                                  ; $4394: $01 $a7 $08
    ld bc, $08cb                                  ; $4397: $01 $cb $08
    ld bc, $08dc                                  ; $439a: $01 $dc $08
    ld bc, $08ee                                  ; $439d: $01 $ee $08
    ld bc, $08fe                                  ; $43a0: $01 $fe $08
    ld bc, $0913                                  ; $43a3: $01 $13 $09
    ld bc, $0927                                  ; $43a6: $01 $27 $09
    ld bc, $093f                                  ; $43a9: $01 $3f $09
    ld bc, $0951                                  ; $43ac: $01 $51 $09
    ld bc, $0961                                  ; $43af: $01 $61 $09
    ld bc, $0972                                  ; $43b2: $01 $72 $09
    ld bc, $098e                                  ; $43b5: $01 $8e $09
    ld bc, $09cc                                  ; $43b8: $01 $cc $09
    ld bc, $09e9                                  ; $43bb: $01 $e9 $09
    ld bc, $09ec                                  ; $43be: $01 $ec $09
    ld bc, $0a09                                  ; $43c1: $01 $09 $0a
    ld bc, $0a1e                                  ; $43c4: $01 $1e $0a
    ld bc, $0a3a                                  ; $43c7: $01 $3a $0a
    ld bc, $0a48                                  ; $43ca: $01 $48 $0a
    ld bc, $0a66                                  ; $43cd: $01 $66 $0a
    ld bc, $0a88                                  ; $43d0: $01 $88 $0a
    ld bc, $0af9                                  ; $43d3: $01 $f9 $0a
    ld bc, $0b09                                  ; $43d6: $01 $09 $0b
    ld bc, $0b15                                  ; $43d9: $01 $15 $0b
    ld bc, $0b26                                  ; $43dc: $01 $26 $0b
    ld bc, $0b39                                  ; $43df: $01 $39 $0b
    ld bc, $0b72                                  ; $43e2: $01 $72 $0b
    ld bc, $0b98                                  ; $43e5: $01 $98 $0b
    ld bc, $0bb6                                  ; $43e8: $01 $b6 $0b
    ld bc, $0bd9                                  ; $43eb: $01 $d9 $0b
    ld bc, $0c13                                  ; $43ee: $01 $13 $0c
    ld bc, $0c52                                  ; $43f1: $01 $52 $0c
    ld bc, $0c84                                  ; $43f4: $01 $84 $0c
    ld bc, $0cb1                                  ; $43f7: $01 $b1 $0c
    ld bc, $0cef                                  ; $43fa: $01 $ef $0c
    ld bc, $0d3e                                  ; $43fd: $01 $3e $0d
    ld bc, $0d7e                                  ; $4400: $01 $7e $0d
    ld bc, $0db2                                  ; $4403: $01 $b2 $0d
    ld bc, $0dea                                  ; $4406: $01 $ea $0d
    ld bc, $0e25                                  ; $4409: $01 $25 $0e
    ld bc, $0e4a                                  ; $440c: $01 $4a $0e
    ld bc, $0e73                                  ; $440f: $01 $73 $0e
    ld bc, $0e99                                  ; $4412: $01 $99 $0e
    ld bc, $0ed1                                  ; $4415: $01 $d1 $0e
    ld bc, $0f05                                  ; $4418: $01 $05 $0f
    ld bc, $0f38                                  ; $441b: $01 $38 $0f
    ld bc, $0f88                                  ; $441e: $01 $88 $0f
    ld bc, $0fbd                                  ; $4421: $01 $bd $0f
    ld bc, $0ff1                                  ; $4424: $01 $f1 $0f
    ld bc, $1031                                  ; $4427: $01 $31 $10
    ld bc, $1057                                  ; $442a: $01 $57 $10
    ld bc, $108a                                  ; $442d: $01 $8a $10
    ld bc, $10b5                                  ; $4430: $01 $b5 $10
    ld bc, $10df                                  ; $4433: $01 $df $10
    ld bc, $1113                                  ; $4436: $01 $13 $11
    ld bc, $1146                                  ; $4439: $01 $46 $11
    ld bc, $1189                                  ; $443c: $01 $89 $11
    ld bc, $11ca                                  ; $443f: $01 $ca $11
    ld bc, $1212                                  ; $4442: $01 $12 $12
    ld bc, $123d                                  ; $4445: $01 $3d $12
    ld bc, $1269                                  ; $4448: $01 $69 $12
    ld bc, $12a7                                  ; $444b: $01 $a7 $12
    ld bc, $12e9                                  ; $444e: $01 $e9 $12
    ld bc, $1330                                  ; $4451: $01 $30 $13
    ld bc, $1387                                  ; $4454: $01 $87 $13
    ld bc, $13b8                                  ; $4457: $01 $b8 $13
    ld bc, $13ed                                  ; $445a: $01 $ed $13
    ld bc, $142e                                  ; $445d: $01 $2e $14
    ld bc, $146d                                  ; $4460: $01 $6d $14
    ld bc, $1499                                  ; $4463: $01 $99 $14
    ld bc, $14c6                                  ; $4466: $01 $c6 $14
    ld bc, $14ff                                  ; $4469: $01 $ff $14
    ld bc, $150d                                  ; $446c: $01 $0d $15
    ld bc, $1524                                  ; $446f: $01 $24 $15
    ld bc, $153b                                  ; $4472: $01 $3b $15
    ld bc, $1557                                  ; $4475: $01 $57 $15
    ld bc, $157a                                  ; $4478: $01 $7a $15
    ld bc, $1580                                  ; $447b: $01 $80 $15
    ld bc, $1590                                  ; $447e: $01 $90 $15
    ld bc, $1595                                  ; $4481: $01 $95 $15
    ld bc, $15bd                                  ; $4484: $01 $bd $15
    ld bc, $15da                                  ; $4487: $01 $da $15
    ld bc, $15f0                                  ; $448a: $01 $f0 $15
    ld bc, $1616                                  ; $448d: $01 $16 $16
    ld bc, $1626                                  ; $4490: $01 $26 $16
    ld bc, $1631                                  ; $4493: $01 $31 $16
    ld bc, $167f                                  ; $4496: $01 $7f $16
    ld bc, $16a8                                  ; $4499: $01 $a8 $16
    ld bc, $16d1                                  ; $449c: $01 $d1 $16
    ld bc, $16e5                                  ; $449f: $01 $e5 $16
    ld bc, $1701                                  ; $44a2: $01 $01 $17
    ld bc, $1715                                  ; $44a5: $01 $15 $17
    ld bc, $1727                                  ; $44a8: $01 $27 $17
    ld bc, $172e                                  ; $44ab: $01 $2e $17
    ld bc, $1742                                  ; $44ae: $01 $42 $17
    ld bc, $1755                                  ; $44b1: $01 $55 $17
    ld bc, $176f                                  ; $44b4: $01 $6f $17
    ld bc, $177e                                  ; $44b7: $01 $7e $17
    ld bc, $178d                                  ; $44ba: $01 $8d $17
    ld bc, $179e                                  ; $44bd: $01 $9e $17
    ld bc, $17c6                                  ; $44c0: $01 $c6 $17
    ld bc, $17d9                                  ; $44c3: $01 $d9 $17
    ld bc, $17ef                                  ; $44c6: $01 $ef $17
    ld bc, $1805                                  ; $44c9: $01 $05 $18
    ld bc, $181d                                  ; $44cc: $01 $1d $18
    ld bc, $183f                                  ; $44cf: $01 $3f $18
    ld bc, $1846                                  ; $44d2: $01 $46 $18
    ld bc, $1864                                  ; $44d5: $01 $64 $18
    ld bc, $186c                                  ; $44d8: $01 $6c $18
    ld bc, $18a4                                  ; $44db: $01 $a4 $18
    ld bc, $18cf                                  ; $44de: $01 $cf $18
    ld bc, $18d6                                  ; $44e1: $01 $d6 $18
    ld bc, $18ed                                  ; $44e4: $01 $ed $18
    ld bc, $18f7                                  ; $44e7: $01 $f7 $18
    ld bc, $1931                                  ; $44ea: $01 $31 $19
    ld bc, $1940                                  ; $44ed: $01 $40 $19
    ld bc, $195a                                  ; $44f0: $01 $5a $19
    ld bc, $196d                                  ; $44f3: $01 $6d $19
    ld bc, $197b                                  ; $44f6: $01 $7b $19
    ld bc, $19d2                                  ; $44f9: $01 $d2 $19
    ld bc, $19e1                                  ; $44fc: $01 $e1 $19
    ld bc, $19f1                                  ; $44ff: $01 $f1 $19
    ld bc, $19fb                                  ; $4502: $01 $fb $19
    ld bc, $1a06                                  ; $4505: $01 $06 $1a
    ld bc, $1a24                                  ; $4508: $01 $24 $1a
    ld bc, $1a2a                                  ; $450b: $01 $2a $1a
    ld bc, $1a35                                  ; $450e: $01 $35 $1a
    ld bc, $1a40                                  ; $4511: $01 $40 $1a
    ld bc, $1a63                                  ; $4514: $01 $63 $1a
    ld bc, $1a68                                  ; $4517: $01 $68 $1a
    ld bc, $1a92                                  ; $451a: $01 $92 $1a
    ld bc, $1ab0                                  ; $451d: $01 $b0 $1a
    ld bc, $1ac2                                  ; $4520: $01 $c2 $1a
    ld bc, $1ae4                                  ; $4523: $01 $e4 $1a
    ld bc, $1af6                                  ; $4526: $01 $f6 $1a
    ld bc, $1b2c                                  ; $4529: $01 $2c $1b
    ld bc, $1b42                                  ; $452c: $01 $42 $1b
    ld bc, $1b75                                  ; $452f: $01 $75 $1b
    ld bc, $1baa                                  ; $4532: $01 $aa $1b
    ld bc, $1bd6                                  ; $4535: $01 $d6 $1b
    ld bc, $1c12                                  ; $4538: $01 $12 $1c
    ld bc, $1c41                                  ; $453b: $01 $41 $1c
    ld bc, $1c6b                                  ; $453e: $01 $6b $1c
    ld bc, $1cc2                                  ; $4541: $01 $c2 $1c
    ld bc, $1ce5                                  ; $4544: $01 $e5 $1c
    ld bc, $1d38                                  ; $4547: $01 $38 $1d
    ld bc, $1d48                                  ; $454a: $01 $48 $1d
    ld bc, $1d79                                  ; $454d: $01 $79 $1d
    ld bc, $1e37                                  ; $4550: $01 $37 $1e
    ld bc, $1e5c                                  ; $4553: $01 $5c $1e
    ld bc, $1e72                                  ; $4556: $01 $72 $1e
    ld bc, $1e99                                  ; $4559: $01 $99 $1e
    ld bc, $1ebe                                  ; $455c: $01 $be $1e
    ld bc, $1ed6                                  ; $455f: $01 $d6 $1e
    ld bc, $1ee2                                  ; $4562: $01 $e2 $1e
    ld bc, $1f1d                                  ; $4565: $01 $1d $1f
    ld bc, $1f24                                  ; $4568: $01 $24 $1f
    ld bc, $1f3a                                  ; $456b: $01 $3a $1f
    ld bc, $1f7c                                  ; $456e: $01 $7c $1f
    ld bc, $1fa1                                  ; $4571: $01 $a1 $1f
    ld bc, $1fcf                                  ; $4574: $01 $cf $1f
    ld bc, $1fdf                                  ; $4577: $01 $df $1f
    ld bc, $2006                                  ; $457a: $01 $06 $20
    ld bc, $202b                                  ; $457d: $01 $2b $20
    ld bc, $2044                                  ; $4580: $01 $44 $20
    ld bc, $206e                                  ; $4583: $01 $6e $20
    ld bc, $2086                                  ; $4586: $01 $86 $20
    ld bc, $209d                                  ; $4589: $01 $9d $20
    ld bc, $20b7                                  ; $458c: $01 $b7 $20
    ld bc, $20df                                  ; $458f: $01 $df $20
    ld bc, $20ee                                  ; $4592: $01 $ee $20
    ld bc, $2113                                  ; $4595: $01 $13 $21
    ld bc, $2134                                  ; $4598: $01 $34 $21
    ld bc, $213e                                  ; $459b: $01 $3e $21
    ld bc, $216c                                  ; $459e: $01 $6c $21
    ld bc, $2184                                  ; $45a1: $01 $84 $21
    ld bc, $218c                                  ; $45a4: $01 $8c $21
    ld bc, $21d3                                  ; $45a7: $01 $d3 $21
    ld bc, $21d8                                  ; $45aa: $01 $d8 $21
    ld bc, $2288                                  ; $45ad: $01 $88 $22
    ld bc, $2298                                  ; $45b0: $01 $98 $22
    ld bc, $22a2                                  ; $45b3: $01 $a2 $22
    ld bc, $22c3                                  ; $45b6: $01 $c3 $22
    ld bc, $22e6                                  ; $45b9: $01 $e6 $22
    ld bc, $231d                                  ; $45bc: $01 $1d $23
    ld bc, $235c                                  ; $45bf: $01 $5c $23
    ld bc, $2383                                  ; $45c2: $01 $83 $23
    ld bc, $23a6                                  ; $45c5: $01 $a6 $23
    ld bc, $23ee                                  ; $45c8: $01 $ee $23
    ld bc, $245d                                  ; $45cb: $01 $5d $24
    ld bc, $2486                                  ; $45ce: $01 $86 $24
    ld bc, $24b0                                  ; $45d1: $01 $b0 $24
    ld bc, $24c8                                  ; $45d4: $01 $c8 $24
    ld bc, $24eb                                  ; $45d7: $01 $eb $24
    ld bc, $2505                                  ; $45da: $01 $05 $25
    ld bc, $2530                                  ; $45dd: $01 $30 $25
    ld bc, $2547                                  ; $45e0: $01 $47 $25
    ld bc, $2569                                  ; $45e3: $01 $69 $25
    ld bc, $2599                                  ; $45e6: $01 $99 $25
    ld bc, $25c9                                  ; $45e9: $01 $c9 $25
    ld bc, $25eb                                  ; $45ec: $01 $eb $25
    ld bc, $263f                                  ; $45ef: $01 $3f $26
    ld bc, $2662                                  ; $45f2: $01 $62 $26
    ld bc, $26c7                                  ; $45f5: $01 $c7 $26
    ld bc, $26f9                                  ; $45f8: $01 $f9 $26
    ld bc, $272b                                  ; $45fb: $01 $2b $27
    ld bc, $2755                                  ; $45fe: $01 $55 $27
    ld bc, $278e                                  ; $4601: $01 $8e $27
    ld bc, $27a6                                  ; $4604: $01 $a6 $27
    ld bc, $27bc                                  ; $4607: $01 $bc $27
    ld bc, $27dd                                  ; $460a: $01 $dd $27
    ld bc, $2815                                  ; $460d: $01 $15 $28
    ld bc, $2824                                  ; $4610: $01 $24 $28
    ld bc, $283c                                  ; $4613: $01 $3c $28
    ld bc, $2849                                  ; $4616: $01 $49 $28
    ld bc, $2881                                  ; $4619: $01 $81 $28
    ld bc, $28c2                                  ; $461c: $01 $c2 $28
    ld bc, $28da                                  ; $461f: $01 $da $28
    ld bc, $28f1                                  ; $4622: $01 $f1 $28
    ld bc, $2927                                  ; $4625: $01 $27 $29
    ld bc, $294b                                  ; $4628: $01 $4b $29
    ld bc, $299f                                  ; $462b: $01 $9f $29
    ld bc, $29b4                                  ; $462e: $01 $b4 $29
    ld bc, $29e8                                  ; $4631: $01 $e8 $29
    ld bc, $2a07                                  ; $4634: $01 $07 $2a
    ld bc, $2a30                                  ; $4637: $01 $30 $2a
    ld bc, $2a5f                                  ; $463a: $01 $5f $2a
    ld bc, $2a78                                  ; $463d: $01 $78 $2a
    ld bc, $2aad                                  ; $4640: $01 $ad $2a
    ld bc, $2aca                                  ; $4643: $01 $ca $2a
    ld bc, $2af2                                  ; $4646: $01 $f2 $2a
    ld bc, $2b01                                  ; $4649: $01 $01 $2b
    ld bc, $2b34                                  ; $464c: $01 $34 $2b
    ld bc, $2b57                                  ; $464f: $01 $57 $2b
    ld bc, $2b66                                  ; $4652: $01 $66 $2b
    ld bc, $2b8a                                  ; $4655: $01 $8a $2b
    ld bc, $2bb6                                  ; $4658: $01 $b6 $2b
    ld bc, $2bd3                                  ; $465b: $01 $d3 $2b
    ld bc, $2bfe                                  ; $465e: $01 $fe $2b
    ld bc, $2c29                                  ; $4661: $01 $29 $2c
    ld bc, $2c54                                  ; $4664: $01 $54 $2c
    ld bc, $2c77                                  ; $4667: $01 $77 $2c
    ld bc, $2cb2                                  ; $466a: $01 $b2 $2c
    ld bc, $2cf5                                  ; $466d: $01 $f5 $2c
    ld bc, $2d35                                  ; $4670: $01 $35 $2d
    ld bc, $2d5b                                  ; $4673: $01 $5b $2d
    ld bc, $2d8b                                  ; $4676: $01 $8b $2d
    ld bc, $2daa                                  ; $4679: $01 $aa $2d
    ld bc, $2dc6                                  ; $467c: $01 $c6 $2d
    ld bc, $2df6                                  ; $467f: $01 $f6 $2d
    ld bc, $2e19                                  ; $4682: $01 $19 $2e
    ld bc, $2e43                                  ; $4685: $01 $43 $2e
    ld bc, $2e62                                  ; $4688: $01 $62 $2e
    ld bc, $2e81                                  ; $468b: $01 $81 $2e
    ld bc, $2eb8                                  ; $468e: $01 $b8 $2e
    ld bc, $2edd                                  ; $4691: $01 $dd $2e
    ld bc, $2ee7                                  ; $4694: $01 $e7 $2e
    ld bc, $2f0c                                  ; $4697: $01 $0c $2f
    ld bc, $2f1d                                  ; $469a: $01 $1d $2f
    ld bc, $2f43                                  ; $469d: $01 $43 $2f
    ld bc, $2f59                                  ; $46a0: $01 $59 $2f
    ld bc, $2f65                                  ; $46a3: $01 $65 $2f
    ld bc, $2f7a                                  ; $46a6: $01 $7a $2f
    ld bc, $2f8e                                  ; $46a9: $01 $8e $2f
    ld bc, $2fb7                                  ; $46ac: $01 $b7 $2f
    ld bc, $3003                                  ; $46af: $01 $03 $30
    ld bc, $300b                                  ; $46b2: $01 $0b $30
    ld bc, $3069                                  ; $46b5: $01 $69 $30
    ld bc, $3077                                  ; $46b8: $01 $77 $30
    ld bc, $30d4                                  ; $46bb: $01 $d4 $30
    ld bc, $30f4                                  ; $46be: $01 $f4 $30
    ld bc, $3109                                  ; $46c1: $01 $09 $31
    ld bc, $312b                                  ; $46c4: $01 $2b $31
    ld bc, $3180                                  ; $46c7: $01 $80 $31
    ld bc, $31b3                                  ; $46ca: $01 $b3 $31
    ld bc, $31c5                                  ; $46cd: $01 $c5 $31
    ld bc, $31d7                                  ; $46d0: $01 $d7 $31
    ld bc, $31ee                                  ; $46d3: $01 $ee $31
    ld bc, $3219                                  ; $46d6: $01 $19 $32
    ld bc, $3236                                  ; $46d9: $01 $36 $32
    ld bc, $3248                                  ; $46dc: $01 $48 $32
    ld bc, $324f                                  ; $46df: $01 $4f $32
    ld bc, $328f                                  ; $46e2: $01 $8f $32
    ld bc, $32c6                                  ; $46e5: $01 $c6 $32
    ld bc, $32df                                  ; $46e8: $01 $df $32
    ld bc, $3311                                  ; $46eb: $01 $11 $33
    ld bc, $334a                                  ; $46ee: $01 $4a $33
    ld bc, $3361                                  ; $46f1: $01 $61 $33
    ld bc, $3381                                  ; $46f4: $01 $81 $33
    ld bc, $3391                                  ; $46f7: $01 $91 $33
    ld bc, $33ae                                  ; $46fa: $01 $ae $33
    ld bc, $33cc                                  ; $46fd: $01 $cc $33
    ld bc, $33e0                                  ; $4700: $01 $e0 $33
    ld bc, $33fe                                  ; $4703: $01 $fe $33
    ld bc, $3426                                  ; $4706: $01 $26 $34
    ld bc, $347e                                  ; $4709: $01 $7e $34
    ld bc, $3491                                  ; $470c: $01 $91 $34
    ld bc, $34e9                                  ; $470f: $01 $e9 $34
    ld bc, $3526                                  ; $4712: $01 $26 $35
    ld bc, $3542                                  ; $4715: $01 $42 $35
    ld bc, $356d                                  ; $4718: $01 $6d $35
    ld bc, $35aa                                  ; $471b: $01 $aa $35
    ld bc, $35fc                                  ; $471e: $01 $fc $35
    ld bc, $363b                                  ; $4721: $01 $3b $36
    ld bc, $364f                                  ; $4724: $01 $4f $36
    ld bc, $3660                                  ; $4727: $01 $60 $36
    ld bc, $3677                                  ; $472a: $01 $77 $36
    ld bc, $368b                                  ; $472d: $01 $8b $36
    ld bc, $3698                                  ; $4730: $01 $98 $36
    ld bc, $36aa                                  ; $4733: $01 $aa $36
    ld bc, $36bd                                  ; $4736: $01 $bd $36
    ld bc, $36d3                                  ; $4739: $01 $d3 $36
    ld bc, $3701                                  ; $473c: $01 $01 $37
    ld bc, $3719                                  ; $473f: $01 $19 $37
    ld bc, $3727                                  ; $4742: $01 $27 $37
    ld bc, $374c                                  ; $4745: $01 $4c $37
    ld bc, $37cd                                  ; $4748: $01 $cd $37
    ld bc, $37de                                  ; $474b: $01 $de $37
    ld bc, $37fd                                  ; $474e: $01 $fd $37
    ld bc, $382d                                  ; $4751: $01 $2d $38
    ld bc, $384a                                  ; $4754: $01 $4a $38
    ld bc, $387a                                  ; $4757: $01 $7a $38
    ld bc, $38b8                                  ; $475a: $01 $b8 $38
    ld bc, $38d6                                  ; $475d: $01 $d6 $38
    ld bc, $3938                                  ; $4760: $01 $38 $39
    ld bc, $3940                                  ; $4763: $01 $40 $39
    ld bc, $395a                                  ; $4766: $01 $5a $39
    ld bc, $3968                                  ; $4769: $01 $68 $39
    ld bc, $397f                                  ; $476c: $01 $7f $39
    ld bc, $39ad                                  ; $476f: $01 $ad $39
    ld bc, $39e4                                  ; $4772: $01 $e4 $39
    ld bc, $3a1c                                  ; $4775: $01 $1c $3a
    ld bc, $3a40                                  ; $4778: $01 $40 $3a
    ld bc, $3a75                                  ; $477b: $01 $75 $3a
    ld bc, $3a8d                                  ; $477e: $01 $8d $3a
    ld bc, $3a9c                                  ; $4781: $01 $9c $3a
    ld bc, $3aab                                  ; $4784: $01 $ab $3a
    ld bc, $3abc                                  ; $4787: $01 $bc $3a
    ld bc, $3aee                                  ; $478a: $01 $ee $3a
    ld bc, $3b49                                  ; $478d: $01 $49 $3b
    ld bc, $3b81                                  ; $4790: $01 $81 $3b
    ld bc, $3ba9                                  ; $4793: $01 $a9 $3b
    ld bc, $3be7                                  ; $4796: $01 $e7 $3b
    ld bc, $3c15                                  ; $4799: $01 $15 $3c
    ld bc, $3c35                                  ; $479c: $01 $35 $3c
    ld bc, $3c50                                  ; $479f: $01 $50 $3c
    ld bc, $3c73                                  ; $47a2: $01 $73 $3c
    ld bc, $3c88                                  ; $47a5: $01 $88 $3c
    ld bc, $3c93                                  ; $47a8: $01 $93 $3c
    ld bc, $3ca7                                  ; $47ab: $01 $a7 $3c
    ld bc, $3cbb                                  ; $47ae: $01 $bb $3c
    ld bc, $3ccd                                  ; $47b1: $01 $cd $3c
    ld bc, $3cea                                  ; $47b4: $01 $ea $3c
    ld bc, $3cff                                  ; $47b7: $01 $ff $3c
    ld bc, $3d16                                  ; $47ba: $01 $16 $3d
    ld bc, $3d3a                                  ; $47bd: $01 $3a $3d
    ld bc, $3d60                                  ; $47c0: $01 $60 $3d
    ld bc, $3d6f                                  ; $47c3: $01 $6f $3d
    ld bc, $3d99                                  ; $47c6: $01 $99 $3d
    ld bc, $3daa                                  ; $47c9: $01 $aa $3d
    ld bc, $3dbe                                  ; $47cc: $01 $be $3d
    ld bc, $3dd1                                  ; $47cf: $01 $d1 $3d
    ld bc, $3de2                                  ; $47d2: $01 $e2 $3d
    ld bc, $3df7                                  ; $47d5: $01 $f7 $3d
    ld bc, $3e15                                  ; $47d8: $01 $15 $3e
    ld bc, $3e33                                  ; $47db: $01 $33 $3e
    ld bc, $3e47                                  ; $47de: $01 $47 $3e
    ld bc, $3e73                                  ; $47e1: $01 $73 $3e
    ld bc, $3e95                                  ; $47e4: $01 $95 $3e
    ld bc, $3ec5                                  ; $47e7: $01 $c5 $3e
    ld bc, $3ef8                                  ; $47ea: $01 $f8 $3e
    ld bc, $3f0d                                  ; $47ed: $01 $0d $3f
    ld bc, $3f2c                                  ; $47f0: $01 $2c $3f
    ld bc, $3f4a                                  ; $47f3: $01 $4a $3f
    ld bc, $3f5a                                  ; $47f6: $01 $5a $3f
    ld bc, $3f8e                                  ; $47f9: $01 $8e $3f
    ld bc, $3fa8                                  ; $47fc: $01 $a8 $3f
    ld bc, $3fca                                  ; $47ff: $01 $ca $3f
    ld bc, $3fd1                                  ; $4802: $01 $d1 $3f
    ld bc, $3fd8                                  ; $4805: $01 $d8 $3f
    ld bc, $3fdf                                  ; $4808: $01 $df $3f
    ld bc, $3ff0                                  ; $480b: $01 $f0 $3f
    ld [bc], a                                    ; $480e: $02
    ld bc, $0200                                  ; $480f: $01 $00 $02
    inc [hl]                                      ; $4812: $34
    nop                                           ; $4813: $00
    ld [bc], a                                    ; $4814: $02
    ld d, d                                       ; $4815: $52
    nop                                           ; $4816: $00
    ld [bc], a                                    ; $4817: $02
    ld e, a                                       ; $4818: $5f
    nop                                           ; $4819: $00
    ld [bc], a                                    ; $481a: $02
    ld l, b                                       ; $481b: $68
    nop                                           ; $481c: $00
    ld [bc], a                                    ; $481d: $02
    adc d                                         ; $481e: $8a
    nop                                           ; $481f: $00
    ld [bc], a                                    ; $4820: $02
    and h                                         ; $4821: $a4
    nop                                           ; $4822: $00
    ld [bc], a                                    ; $4823: $02
    or h                                          ; $4824: $b4
    nop                                           ; $4825: $00
    ld [bc], a                                    ; $4826: $02
    ret nz                                        ; $4827: $c0

    nop                                           ; $4828: $00
    ld [bc], a                                    ; $4829: $02
    db $dd                                        ; $482a: $dd
    nop                                           ; $482b: $00
    ld [bc], a                                    ; $482c: $02
    db $ec                                        ; $482d: $ec
    nop                                           ; $482e: $00
    ld [bc], a                                    ; $482f: $02
    ld c, $01                                     ; $4830: $0e $01
    ld [bc], a                                    ; $4832: $02
    ld a, [hl+]                                   ; $4833: $2a
    ld bc, $3c02                                  ; $4834: $01 $02 $3c
    ld bc, $5f02                                  ; $4837: $01 $02 $5f
    ld bc, $6702                                  ; $483a: $01 $02 $67
    ld bc, $9002                                  ; $483d: $01 $02 $90
    ld bc, $9d02                                  ; $4840: $01 $02 $9d
    ld bc, $c002                                  ; $4843: $01 $02 $c0
    ld bc, $cc02                                  ; $4846: $01 $02 $cc
    ld bc, $dd02                                  ; $4849: $01 $02 $dd
    ld bc, $4902                                  ; $484c: $01 $02 $49
    ld [bc], a                                    ; $484f: $02
    ld [bc], a                                    ; $4850: $02
    ld d, c                                       ; $4851: $51
    ld [bc], a                                    ; $4852: $02
    ld [bc], a                                    ; $4853: $02
    ld d, [hl]                                    ; $4854: $56
    ld [bc], a                                    ; $4855: $02
    ld [bc], a                                    ; $4856: $02
    ld e, a                                       ; $4857: $5f
    ld [bc], a                                    ; $4858: $02
    ld [bc], a                                    ; $4859: $02
    and l                                         ; $485a: $a5
    ld [bc], a                                    ; $485b: $02
    ld [bc], a                                    ; $485c: $02
    ld d, b                                       ; $485d: $50
    inc bc                                        ; $485e: $03
    ld [bc], a                                    ; $485f: $02
    ld a, l                                       ; $4860: $7d
    inc bc                                        ; $4861: $03
    ld [bc], a                                    ; $4862: $02
    sub a                                         ; $4863: $97
    inc bc                                        ; $4864: $03
    ld [bc], a                                    ; $4865: $02
    xor b                                         ; $4866: $a8
    inc bc                                        ; $4867: $03
    ld [bc], a                                    ; $4868: $02
    or l                                          ; $4869: $b5
    inc bc                                        ; $486a: $03
    ld [bc], a                                    ; $486b: $02
    jp nz, Jump_000_0203                          ; $486c: $c2 $03 $02

    sub $03                                       ; $486f: $d6 $03
    ld [bc], a                                    ; $4871: $02
    jp hl                                         ; $4872: $e9


    inc bc                                        ; $4873: $03
    ld [bc], a                                    ; $4874: $02
    add hl, bc                                    ; $4875: $09
    inc b                                         ; $4876: $04
    ld [bc], a                                    ; $4877: $02
    inc sp                                        ; $4878: $33
    inc b                                         ; $4879: $04
    ld [bc], a                                    ; $487a: $02
    ld l, e                                       ; $487b: $6b
    inc b                                         ; $487c: $04
    ld [bc], a                                    ; $487d: $02
    xor b                                         ; $487e: $a8
    inc b                                         ; $487f: $04
    ld [bc], a                                    ; $4880: $02
    jp c, $0204                                   ; $4881: $da $04 $02

    ld a, $05                                     ; $4884: $3e $05
    ld [bc], a                                    ; $4886: $02
    ld b, l                                       ; $4887: $45
    dec b                                         ; $4888: $05
    ld [bc], a                                    ; $4889: $02
    add e                                         ; $488a: $83
    dec b                                         ; $488b: $05
    ld [bc], a                                    ; $488c: $02
    sub [hl]                                      ; $488d: $96
    dec b                                         ; $488e: $05
    ld [bc], a                                    ; $488f: $02
    cp l                                          ; $4890: $bd
    dec b                                         ; $4891: $05
    ld [bc], a                                    ; $4892: $02
    rst $20                                       ; $4893: $e7
    dec b                                         ; $4894: $05
    ld [bc], a                                    ; $4895: $02
    ei                                            ; $4896: $fb
    dec b                                         ; $4897: $05
    ld [bc], a                                    ; $4898: $02
    ld c, $06                                     ; $4899: $0e $06
    ld [bc], a                                    ; $489b: $02
    ld a, [hl+]                                   ; $489c: $2a
    ld b, $02                                     ; $489d: $06 $02
    ld [hl], $06                                  ; $489f: $36 $06
    ld [bc], a                                    ; $48a1: $02
    ld c, c                                       ; $48a2: $49
    ld b, $02                                     ; $48a3: $06 $02
    ld e, h                                       ; $48a5: $5c
    ld b, $02                                     ; $48a6: $06 $02
    ld h, e                                       ; $48a8: $63
    ld b, $02                                     ; $48a9: $06 $02
    adc c                                         ; $48ab: $89
    ld b, $02                                     ; $48ac: $06 $02
    and d                                         ; $48ae: $a2
    ld b, $02                                     ; $48af: $06 $02
    cp d                                          ; $48b1: $ba
    ld b, $02                                     ; $48b2: $06 $02
    call z, Call_000_0206                         ; $48b4: $cc $06 $02
    db $dd                                        ; $48b7: $dd
    ld b, $02                                     ; $48b8: $06 $02
    ldh a, [rTMA]                                 ; $48ba: $f0 $06
    ld [bc], a                                    ; $48bc: $02
    rlca                                          ; $48bd: $07
    rlca                                          ; $48be: $07
    ld [bc], a                                    ; $48bf: $02
    dec hl                                        ; $48c0: $2b
    rlca                                          ; $48c1: $07
    ld [bc], a                                    ; $48c2: $02
    ld b, l                                       ; $48c3: $45
    rlca                                          ; $48c4: $07
    ld [bc], a                                    ; $48c5: $02
    sbc c                                         ; $48c6: $99
    rlca                                          ; $48c7: $07
    ld [bc], a                                    ; $48c8: $02
    dec b                                         ; $48c9: $05
    ld [$1502], sp                                ; $48ca: $08 $02 $15
    ld [$5602], sp                                ; $48cd: $08 $02 $56
    ld [$6802], sp                                ; $48d0: $08 $02 $68
    ld [$b402], sp                                ; $48d3: $08 $02 $b4
    ld [$dd02], sp                                ; $48d6: $08 $02 $dd
    ld [$0102], sp                                ; $48d9: $08 $02 $01
    add hl, bc                                    ; $48dc: $09
    ld [bc], a                                    ; $48dd: $02
    daa                                           ; $48de: $27
    add hl, bc                                    ; $48df: $09
    ld [bc], a                                    ; $48e0: $02
    ld c, e                                       ; $48e1: $4b
    add hl, bc                                    ; $48e2: $09
    ld [bc], a                                    ; $48e3: $02
    ld h, h                                       ; $48e4: $64
    add hl, bc                                    ; $48e5: $09
    ld [bc], a                                    ; $48e6: $02
    xor [hl]                                      ; $48e7: $ae
    add hl, bc                                    ; $48e8: $09
    ld [bc], a                                    ; $48e9: $02
    or e                                          ; $48ea: $b3
    add hl, bc                                    ; $48eb: $09
    ld [bc], a                                    ; $48ec: $02
    ret nz                                        ; $48ed: $c0

    add hl, bc                                    ; $48ee: $09
    ld [bc], a                                    ; $48ef: $02
    db $dd                                        ; $48f0: $dd
    add hl, bc                                    ; $48f1: $09
    ld [bc], a                                    ; $48f2: $02
    or $09                                        ; $48f3: $f6 $09
    ld [bc], a                                    ; $48f5: $02
    rla                                           ; $48f6: $17
    ld a, [bc]                                    ; $48f7: $0a
    ld [bc], a                                    ; $48f8: $02
    ld b, b                                       ; $48f9: $40
    ld a, [bc]                                    ; $48fa: $0a
    ld [bc], a                                    ; $48fb: $02
    ld d, h                                       ; $48fc: $54
    ld a, [bc]                                    ; $48fd: $0a
    ld [bc], a                                    ; $48fe: $02
    ld e, a                                       ; $48ff: $5f
    ld a, [bc]                                    ; $4900: $0a
    ld [bc], a                                    ; $4901: $02
    ld l, l                                       ; $4902: $6d
    ld a, [bc]                                    ; $4903: $0a
    ld [bc], a                                    ; $4904: $02
    adc c                                         ; $4905: $89
    ld a, [bc]                                    ; $4906: $0a
    ld [bc], a                                    ; $4907: $02
    and d                                         ; $4908: $a2
    ld a, [bc]                                    ; $4909: $0a
    ld [bc], a                                    ; $490a: $02
    or b                                          ; $490b: $b0
    ld a, [bc]                                    ; $490c: $0a
    ld [bc], a                                    ; $490d: $02
    cp a                                          ; $490e: $bf
    ld a, [bc]                                    ; $490f: $0a
    ld [bc], a                                    ; $4910: $02
    ld [bc], a                                    ; $4911: $02
    dec bc                                        ; $4912: $0b
    ld [bc], a                                    ; $4913: $02
    ld e, a                                       ; $4914: $5f
    dec bc                                        ; $4915: $0b
    ld [bc], a                                    ; $4916: $02
    ld [hl], c                                    ; $4917: $71
    dec bc                                        ; $4918: $0b
    ld [bc], a                                    ; $4919: $02
    pop hl                                        ; $491a: $e1
    dec bc                                        ; $491b: $0b
    ld [bc], a                                    ; $491c: $02
    add hl, bc                                    ; $491d: $09
    inc c                                         ; $491e: $0c
    ld [bc], a                                    ; $491f: $02
    ld sp, $020c                                  ; $4920: $31 $0c $02
    ld b, c                                       ; $4923: $41
    inc c                                         ; $4924: $0c
    ld [bc], a                                    ; $4925: $02
    sbc h                                         ; $4926: $9c
    inc c                                         ; $4927: $0c
    ld [bc], a                                    ; $4928: $02
    and [hl]                                      ; $4929: $a6
    inc c                                         ; $492a: $0c
    ld [bc], a                                    ; $492b: $02
    db $d3                                        ; $492c: $d3
    inc c                                         ; $492d: $0c
    ld [bc], a                                    ; $492e: $02
    rst $20                                       ; $492f: $e7
    inc c                                         ; $4930: $0c
    ld [bc], a                                    ; $4931: $02
    inc h                                         ; $4932: $24
    dec c                                         ; $4933: $0d
    ld [bc], a                                    ; $4934: $02
    adc d                                         ; $4935: $8a
    dec c                                         ; $4936: $0d
    ld [bc], a                                    ; $4937: $02
    xor b                                         ; $4938: $a8
    dec c                                         ; $4939: $0d
    ld [bc], a                                    ; $493a: $02
    call nc, Call_000_020d                        ; $493b: $d4 $0d $02
    db $fd                                        ; $493e: $fd
    dec c                                         ; $493f: $0d
    ld [bc], a                                    ; $4940: $02
    jr jr_065_4951                                ; $4941: $18 $0e

    ld [bc], a                                    ; $4943: $02
    ld [hl+], a                                   ; $4944: $22
    ld c, $02                                     ; $4945: $0e $02
    ld l, $0e                                     ; $4947: $2e $0e
    ld [bc], a                                    ; $4949: $02
    ld e, b                                       ; $494a: $58
    ld c, $02                                     ; $494b: $0e $02
    ld [hl], c                                    ; $494d: $71
    ld c, $02                                     ; $494e: $0e $02
    sub b                                         ; $4950: $90

jr_065_4951:
    ld c, $02                                     ; $4951: $0e $02
    or b                                          ; $4953: $b0
    ld c, $02                                     ; $4954: $0e $02
    ld d, $0f                                     ; $4956: $16 $0f
    ld [bc], a                                    ; $4958: $02
    ld e, $0f                                     ; $4959: $1e $0f
    ld [bc], a                                    ; $495b: $02
    ld c, l                                       ; $495c: $4d
    rrca                                          ; $495d: $0f
    ld [bc], a                                    ; $495e: $02
    ld h, d                                       ; $495f: $62
    rrca                                          ; $4960: $0f
    ld [bc], a                                    ; $4961: $02
    add d                                         ; $4962: $82
    rrca                                          ; $4963: $0f
    ld [bc], a                                    ; $4964: $02
    or h                                          ; $4965: $b4
    rrca                                          ; $4966: $0f
    ld [bc], a                                    ; $4967: $02
    cp b                                          ; $4968: $b8
    rrca                                          ; $4969: $0f
    ld [bc], a                                    ; $496a: $02
    rst $00                                       ; $496b: $c7
    rrca                                          ; $496c: $0f
    ld [bc], a                                    ; $496d: $02
    inc c                                         ; $496e: $0c
    db $10                                        ; $496f: $10
    ld [bc], a                                    ; $4970: $02
    inc e                                         ; $4971: $1c
    db $10                                        ; $4972: $10
    ld [bc], a                                    ; $4973: $02
    ld b, l                                       ; $4974: $45
    db $10                                        ; $4975: $10
    ld [bc], a                                    ; $4976: $02
    ld [hl], e                                    ; $4977: $73
    db $10                                        ; $4978: $10
    ld [bc], a                                    ; $4979: $02
    jp Jump_000_0210                              ; $497a: $c3 $10 $02


    sbc $10                                       ; $497d: $de $10
    ld [bc], a                                    ; $497f: $02
    xor $10                                       ; $4980: $ee $10
    ld [bc], a                                    ; $4982: $02
    rst $38                                       ; $4983: $ff
    db $10                                        ; $4984: $10
    ld [bc], a                                    ; $4985: $02
    rrca                                          ; $4986: $0f
    ld de, $2502                                  ; $4987: $11 $02 $25
    ld de, $4402                                  ; $498a: $11 $02 $44
    ld de, $4d02                                  ; $498d: $11 $02 $4d
    ld de, $5102                                  ; $4990: $11 $02 $51
    ld de, $7602                                  ; $4993: $11 $02 $76
    ld de, $9702                                  ; $4996: $11 $02 $97
    ld de, $bd02                                  ; $4999: $11 $02 $bd
    ld de, $d102                                  ; $499c: $11 $02 $d1
    ld de, $f102                                  ; $499f: $11 $02 $f1
    ld de, $0e02                                  ; $49a2: $11 $02 $0e
    ld [de], a                                    ; $49a5: $12
    ld [bc], a                                    ; $49a6: $02
    inc sp                                        ; $49a7: $33
    ld [de], a                                    ; $49a8: $12
    ld [bc], a                                    ; $49a9: $02
    ld b, d                                       ; $49aa: $42
    ld [de], a                                    ; $49ab: $12
    ld [bc], a                                    ; $49ac: $02
    ld h, [hl]                                    ; $49ad: $66
    ld [de], a                                    ; $49ae: $12
    ld [bc], a                                    ; $49af: $02
    ld [hl], a                                    ; $49b0: $77
    ld [de], a                                    ; $49b1: $12
    ld [bc], a                                    ; $49b2: $02
    adc a                                         ; $49b3: $8f
    ld [de], a                                    ; $49b4: $12
    ld [bc], a                                    ; $49b5: $02
    and b                                         ; $49b6: $a0
    ld [de], a                                    ; $49b7: $12
    ld [bc], a                                    ; $49b8: $02
    cp [hl]                                       ; $49b9: $be
    ld [de], a                                    ; $49ba: $12
    ld [bc], a                                    ; $49bb: $02
    call c, $0212                                 ; $49bc: $dc $12 $02
    jp hl                                         ; $49bf: $e9


    ld [de], a                                    ; $49c0: $12
    ld [bc], a                                    ; $49c1: $02
    inc d                                         ; $49c2: $14
    inc de                                        ; $49c3: $13
    ld [bc], a                                    ; $49c4: $02
    ld h, e                                       ; $49c5: $63
    inc de                                        ; $49c6: $13
    ld [bc], a                                    ; $49c7: $02
    ld [hl], d                                    ; $49c8: $72
    inc de                                        ; $49c9: $13
    ld [bc], a                                    ; $49ca: $02
    adc l                                         ; $49cb: $8d
    inc de                                        ; $49cc: $13
    ld [bc], a                                    ; $49cd: $02
    cp b                                          ; $49ce: $b8
    inc de                                        ; $49cf: $13
    ld [bc], a                                    ; $49d0: $02
    call nz, $0213                                ; $49d1: $c4 $13 $02
    inc b                                         ; $49d4: $04
    inc d                                         ; $49d5: $14
    ld [bc], a                                    ; $49d6: $02
    cpl                                           ; $49d7: $2f
    inc d                                         ; $49d8: $14
    ld [bc], a                                    ; $49d9: $02
    ld h, d                                       ; $49da: $62
    inc d                                         ; $49db: $14
    ld [bc], a                                    ; $49dc: $02
    and l                                         ; $49dd: $a5
    inc d                                         ; $49de: $14
    ld [bc], a                                    ; $49df: $02
    call z, Call_000_0214                         ; $49e0: $cc $14 $02
    rst $20                                       ; $49e3: $e7
    inc d                                         ; $49e4: $14
    ld [bc], a                                    ; $49e5: $02
    cp $14                                        ; $49e6: $fe $14
    ld [bc], a                                    ; $49e8: $02
    ld a, [bc]                                    ; $49e9: $0a
    dec d                                         ; $49ea: $15
    ld [bc], a                                    ; $49eb: $02
    ld b, l                                       ; $49ec: $45
    dec d                                         ; $49ed: $15
    ld [bc], a                                    ; $49ee: $02
    ld l, b                                       ; $49ef: $68
    dec d                                         ; $49f0: $15
    ld [bc], a                                    ; $49f1: $02
    and c                                         ; $49f2: $a1
    dec d                                         ; $49f3: $15
    ld [bc], a                                    ; $49f4: $02
    or e                                          ; $49f5: $b3
    dec d                                         ; $49f6: $15
    ld [bc], a                                    ; $49f7: $02
    ret z                                         ; $49f8: $c8

    dec d                                         ; $49f9: $15
    ld [bc], a                                    ; $49fa: $02
    pop de                                        ; $49fb: $d1
    dec d                                         ; $49fc: $15
    ld [bc], a                                    ; $49fd: $02
    push hl                                       ; $49fe: $e5
    dec d                                         ; $49ff: $15
    ld [bc], a                                    ; $4a00: $02
    ld a, [bc]                                    ; $4a01: $0a
    ld d, $02                                     ; $4a02: $16 $02
    inc e                                         ; $4a04: $1c
    ld d, $02                                     ; $4a05: $16 $02
    ld e, h                                       ; $4a07: $5c
    ld d, $02                                     ; $4a08: $16 $02
    add l                                         ; $4a0a: $85
    ld d, $02                                     ; $4a0b: $16 $02
    cp b                                          ; $4a0d: $b8
    ld d, $02                                     ; $4a0e: $16 $02
    rst $10                                       ; $4a10: $d7
    ld d, $02                                     ; $4a11: $16 $02
    ld de, $0217                                  ; $4a13: $11 $17 $02
    ld c, e                                       ; $4a16: $4b
    rla                                           ; $4a17: $17
    ld [bc], a                                    ; $4a18: $02
    ld [hl], d                                    ; $4a19: $72
    rla                                           ; $4a1a: $17
    ld [bc], a                                    ; $4a1b: $02
    xor e                                         ; $4a1c: $ab
    rla                                           ; $4a1d: $17
    ld [bc], a                                    ; $4a1e: $02
    call $0217                                    ; $4a1f: $cd $17 $02
    add sp, $17                                   ; $4a22: $e8 $17
    ld [bc], a                                    ; $4a24: $02
    dec sp                                        ; $4a25: $3b
    jr @+$04                                      ; $4a26: $18 $02

    ld l, b                                       ; $4a28: $68
    jr @+$04                                      ; $4a29: $18 $02

    ld [hl], a                                    ; $4a2b: $77
    jr @+$04                                      ; $4a2c: $18 $02

    xor e                                         ; $4a2e: $ab
    jr @+$04                                      ; $4a2f: $18 $02

    rst $08                                       ; $4a31: $cf
    jr jr_065_4a36                                ; $4a32: $18 $02

    dec b                                         ; $4a34: $05
    add hl, de                                    ; $4a35: $19

jr_065_4a36:
    ld [bc], a                                    ; $4a36: $02
    dec de                                        ; $4a37: $1b
    add hl, de                                    ; $4a38: $19
    ld [bc], a                                    ; $4a39: $02
    dec l                                         ; $4a3a: $2d
    add hl, de                                    ; $4a3b: $19
    ld [bc], a                                    ; $4a3c: $02
    ld c, c                                       ; $4a3d: $49
    add hl, de                                    ; $4a3e: $19
    ld [bc], a                                    ; $4a3f: $02
    ld l, c                                       ; $4a40: $69
    add hl, de                                    ; $4a41: $19
    ld [bc], a                                    ; $4a42: $02
    ld a, l                                       ; $4a43: $7d
    add hl, de                                    ; $4a44: $19
    ld [bc], a                                    ; $4a45: $02
    ret z                                         ; $4a46: $c8

    add hl, de                                    ; $4a47: $19
    ld [bc], a                                    ; $4a48: $02
    db $dd                                        ; $4a49: $dd
    add hl, de                                    ; $4a4a: $19
    ld [bc], a                                    ; $4a4b: $02
    rla                                           ; $4a4c: $17
    ld a, [de]                                    ; $4a4d: $1a
    ld [bc], a                                    ; $4a4e: $02
    cpl                                           ; $4a4f: $2f
    ld a, [de]                                    ; $4a50: $1a
    ld [bc], a                                    ; $4a51: $02
    ld c, h                                       ; $4a52: $4c
    ld a, [de]                                    ; $4a53: $1a
    ld [bc], a                                    ; $4a54: $02
    ld l, c                                       ; $4a55: $69
    ld a, [de]                                    ; $4a56: $1a
    ld [bc], a                                    ; $4a57: $02
    ld a, e                                       ; $4a58: $7b
    ld a, [de]                                    ; $4a59: $1a
    ld [bc], a                                    ; $4a5a: $02
    adc h                                         ; $4a5b: $8c
    ld a, [de]                                    ; $4a5c: $1a
    ld [bc], a                                    ; $4a5d: $02
    cp [hl]                                       ; $4a5e: $be
    ld a, [de]                                    ; $4a5f: $1a
    ld [bc], a                                    ; $4a60: $02
    jp c, $021a                                   ; $4a61: $da $1a $02

    ld a, [c]                                     ; $4a64: $f2
    ld a, [de]                                    ; $4a65: $1a
    ld [bc], a                                    ; $4a66: $02
    rla                                           ; $4a67: $17
    dec de                                        ; $4a68: $1b
    ld [bc], a                                    ; $4a69: $02
    dec a                                         ; $4a6a: $3d
    dec de                                        ; $4a6b: $1b
    ld [bc], a                                    ; $4a6c: $02
    ld c, a                                       ; $4a6d: $4f
    dec de                                        ; $4a6e: $1b
    ld [bc], a                                    ; $4a6f: $02
    ld h, l                                       ; $4a70: $65
    dec de                                        ; $4a71: $1b
    ld [bc], a                                    ; $4a72: $02
    ld a, d                                       ; $4a73: $7a
    dec de                                        ; $4a74: $1b
    ld [bc], a                                    ; $4a75: $02
    add l                                         ; $4a76: $85
    dec de                                        ; $4a77: $1b
    ld [bc], a                                    ; $4a78: $02
    sub c                                         ; $4a79: $91
    dec de                                        ; $4a7a: $1b
    ld [bc], a                                    ; $4a7b: $02
    and l                                         ; $4a7c: $a5
    dec de                                        ; $4a7d: $1b
    ld [bc], a                                    ; $4a7e: $02
    cp e                                          ; $4a7f: $bb
    dec de                                        ; $4a80: $1b
    ld [bc], a                                    ; $4a81: $02
    ret z                                         ; $4a82: $c8

    dec de                                        ; $4a83: $1b
    ld [bc], a                                    ; $4a84: $02
    sbc $1b                                       ; $4a85: $de $1b
    ld [bc], a                                    ; $4a87: $02
    db $e4                                        ; $4a88: $e4
    dec de                                        ; $4a89: $1b
    ld [bc], a                                    ; $4a8a: $02
    pop af                                        ; $4a8b: $f1
    dec de                                        ; $4a8c: $1b
    ld [bc], a                                    ; $4a8d: $02
    add hl, bc                                    ; $4a8e: $09
    inc e                                         ; $4a8f: $1c
    ld [bc], a                                    ; $4a90: $02
    scf                                           ; $4a91: $37
    inc e                                         ; $4a92: $1c
    ld [bc], a                                    ; $4a93: $02
    ld a, c                                       ; $4a94: $79
    inc e                                         ; $4a95: $1c
    ld [bc], a                                    ; $4a96: $02
    sbc l                                         ; $4a97: $9d
    inc e                                         ; $4a98: $1c
    ld [bc], a                                    ; $4a99: $02
    or l                                          ; $4a9a: $b5
    inc e                                         ; $4a9b: $1c
    ld [bc], a                                    ; $4a9c: $02
    cp [hl]                                       ; $4a9d: $be
    inc e                                         ; $4a9e: $1c
    ld [bc], a                                    ; $4a9f: $02

Jump_065_4aa0:
    ldh [rNR32], a                                ; $4aa0: $e0 $1c
    ld [bc], a                                    ; $4aa2: $02
    dec bc                                        ; $4aa3: $0b
    dec e                                         ; $4aa4: $1d
    ld [bc], a                                    ; $4aa5: $02
    dec a                                         ; $4aa6: $3d
    dec e                                         ; $4aa7: $1d
    ld [bc], a                                    ; $4aa8: $02
    ld l, a                                       ; $4aa9: $6f
    dec e                                         ; $4aaa: $1d
    ld [bc], a                                    ; $4aab: $02
    sbc l                                         ; $4aac: $9d
    dec e                                         ; $4aad: $1d
    ld [bc], a                                    ; $4aae: $02
    and [hl]                                      ; $4aaf: $a6
    dec e                                         ; $4ab0: $1d
    ld [bc], a                                    ; $4ab1: $02
    cp l                                          ; $4ab2: $bd
    dec e                                         ; $4ab3: $1d
    ld [bc], a                                    ; $4ab4: $02
    rst $10                                       ; $4ab5: $d7
    dec e                                         ; $4ab6: $1d
    ld [bc], a                                    ; $4ab7: $02
    inc e                                         ; $4ab8: $1c
    ld e, $02                                     ; $4ab9: $1e $02
    dec hl                                        ; $4abb: $2b
    ld e, $02                                     ; $4abc: $1e $02
    add hl, sp                                    ; $4abe: $39
    ld e, $02                                     ; $4abf: $1e $02
    ld l, b                                       ; $4ac1: $68
    ld e, $02                                     ; $4ac2: $1e $02
    add b                                         ; $4ac4: $80
    ld e, $02                                     ; $4ac5: $1e $02
    sub h                                         ; $4ac7: $94
    ld e, $02                                     ; $4ac8: $1e $02
    or b                                          ; $4aca: $b0
    ld e, $02                                     ; $4acb: $1e $02
    rst $10                                       ; $4acd: $d7
    ld e, $02                                     ; $4ace: $1e $02
    rrca                                          ; $4ad0: $0f
    rra                                           ; $4ad1: $1f
    ld [bc], a                                    ; $4ad2: $02
    ld c, b                                       ; $4ad3: $48
    rra                                           ; $4ad4: $1f
    ld [bc], a                                    ; $4ad5: $02
    adc b                                         ; $4ad6: $88
    rra                                           ; $4ad7: $1f
    ld [bc], a                                    ; $4ad8: $02
    or e                                          ; $4ad9: $b3
    rra                                           ; $4ada: $1f
    ld [bc], a                                    ; $4adb: $02
    call z, Call_000_021f                         ; $4adc: $cc $1f $02
    ld a, [c]                                     ; $4adf: $f2
    rra                                           ; $4ae0: $1f
    ld [bc], a                                    ; $4ae1: $02
    rrca                                          ; $4ae2: $0f
    jr nz, jr_065_4ae7                            ; $4ae3: $20 $02

    jr c, jr_065_4b07                             ; $4ae5: $38 $20

jr_065_4ae7:
    ld [bc], a                                    ; $4ae7: $02
    ld b, [hl]                                    ; $4ae8: $46
    jr nz, @+$04                                  ; $4ae9: $20 $02

    ld h, [hl]                                    ; $4aeb: $66
    jr nz, @+$04                                  ; $4aec: $20 $02

    ld [hl], a                                    ; $4aee: $77
    jr nz, @+$04                                  ; $4aef: $20 $02

    adc c                                         ; $4af1: $89
    jr nz, @+$04                                  ; $4af2: $20 $02

    xor d                                         ; $4af4: $aa
    jr nz, @+$04                                  ; $4af5: $20 $02

    reti                                          ; $4af7: $d9


    jr nz, @+$04                                  ; $4af8: $20 $02

    ld a, [$0220]                                 ; $4afa: $fa $20 $02
    ld c, $21                                     ; $4afd: $0e $21
    ld [bc], a                                    ; $4aff: $02
    dec l                                         ; $4b00: $2d
    ld hl, $3802                                  ; $4b01: $21 $02 $38
    ld hl, $5002                                  ; $4b04: $21 $02 $50

jr_065_4b07:
    ld hl, $6602                                  ; $4b07: $21 $02 $66
    ld hl, $8402                                  ; $4b0a: $21 $02 $84
    ld hl, $9f02                                  ; $4b0d: $21 $02 $9f
    ld hl, $ac02                                  ; $4b10: $21 $02 $ac
    ld hl, $cf02                                  ; $4b13: $21 $02 $cf
    ld hl, $de02                                  ; $4b16: $21 $02 $de
    ld hl, $fc02                                  ; $4b19: $21 $02 $fc
    ld hl, $1a02                                  ; $4b1c: $21 $02 $1a
    ld [hl+], a                                   ; $4b1f: $22
    ld [bc], a                                    ; $4b20: $02
    ld b, b                                       ; $4b21: $40
    ld [hl+], a                                   ; $4b22: $22
    ld [bc], a                                    ; $4b23: $02
    ld l, l                                       ; $4b24: $6d
    ld [hl+], a                                   ; $4b25: $22
    ld [bc], a                                    ; $4b26: $02
    adc b                                         ; $4b27: $88
    ld [hl+], a                                   ; $4b28: $22
    ld [bc], a                                    ; $4b29: $02
    and c                                         ; $4b2a: $a1
    ld [hl+], a                                   ; $4b2b: $22
    ld [bc], a                                    ; $4b2c: $02
    cp a                                          ; $4b2d: $bf
    ld [hl+], a                                   ; $4b2e: $22
    ld [bc], a                                    ; $4b2f: $02
    sbc $22                                       ; $4b30: $de $22
    ld [bc], a                                    ; $4b32: $02
    ld bc, $0223                                  ; $4b33: $01 $23 $02
    jr nz, jr_065_4b5b                            ; $4b36: $20 $23

    ld [bc], a                                    ; $4b38: $02
    ld c, b                                       ; $4b39: $48
    inc hl                                        ; $4b3a: $23
    ld [bc], a                                    ; $4b3b: $02
    ld h, e                                       ; $4b3c: $63
    inc hl                                        ; $4b3d: $23
    ld [bc], a                                    ; $4b3e: $02
    add b                                         ; $4b3f: $80
    inc hl                                        ; $4b40: $23
    ld [bc], a                                    ; $4b41: $02
    sbc l                                         ; $4b42: $9d
    inc hl                                        ; $4b43: $23
    ld [bc], a                                    ; $4b44: $02
    cp b                                          ; $4b45: $b8
    inc hl                                        ; $4b46: $23
    ld [bc], a                                    ; $4b47: $02
    rst $10                                       ; $4b48: $d7
    inc hl                                        ; $4b49: $23
    ld [bc], a                                    ; $4b4a: $02
    dec b                                         ; $4b4b: $05
    inc h                                         ; $4b4c: $24
    ld [bc], a                                    ; $4b4d: $02
    ld a, [hl+]                                   ; $4b4e: $2a
    inc h                                         ; $4b4f: $24
    ld [bc], a                                    ; $4b50: $02
    ld e, e                                       ; $4b51: $5b
    inc h                                         ; $4b52: $24
    ld [bc], a                                    ; $4b53: $02
    sbc h                                         ; $4b54: $9c
    inc h                                         ; $4b55: $24
    ld [bc], a                                    ; $4b56: $02
    and e                                         ; $4b57: $a3
    inc h                                         ; $4b58: $24
    ld [bc], a                                    ; $4b59: $02
    or [hl]                                       ; $4b5a: $b6

jr_065_4b5b:
    inc h                                         ; $4b5b: $24
    ld [bc], a                                    ; $4b5c: $02
    pop hl                                        ; $4b5d: $e1
    inc h                                         ; $4b5e: $24
    ld [bc], a                                    ; $4b5f: $02
    ld a, [$0224]                                 ; $4b60: $fa $24 $02
    ld b, a                                       ; $4b63: $47
    dec h                                         ; $4b64: $25
    ld [bc], a                                    ; $4b65: $02
    ld l, b                                       ; $4b66: $68
    dec h                                         ; $4b67: $25
    ld [bc], a                                    ; $4b68: $02
    adc d                                         ; $4b69: $8a
    dec h                                         ; $4b6a: $25
    ld [bc], a                                    ; $4b6b: $02
    and b                                         ; $4b6c: $a0
    dec h                                         ; $4b6d: $25
    ld [bc], a                                    ; $4b6e: $02
    or [hl]                                       ; $4b6f: $b6
    dec h                                         ; $4b70: $25
    ld [bc], a                                    ; $4b71: $02
    push bc                                       ; $4b72: $c5
    dec h                                         ; $4b73: $25
    ld [bc], a                                    ; $4b74: $02
    rst $20                                       ; $4b75: $e7
    dec h                                         ; $4b76: $25
    ld [bc], a                                    ; $4b77: $02
    pop af                                        ; $4b78: $f1
    dec h                                         ; $4b79: $25
    ld [bc], a                                    ; $4b7a: $02
    inc bc                                        ; $4b7b: $03
    ld h, $02                                     ; $4b7c: $26 $02
    ld b, l                                       ; $4b7e: $45
    ld h, $02                                     ; $4b7f: $26 $02
    ld d, e                                       ; $4b81: $53
    ld h, $02                                     ; $4b82: $26 $02
    ld h, l                                       ; $4b84: $65
    ld h, $02                                     ; $4b85: $26 $02
    adc e                                         ; $4b87: $8b
    ld h, $02                                     ; $4b88: $26 $02
    or a                                          ; $4b8a: $b7
    ld h, $02                                     ; $4b8b: $26 $02
    call nz, Call_000_0226                        ; $4b8d: $c4 $26 $02
    sla [hl]                                      ; $4b90: $cb $26
    ld [bc], a                                    ; $4b92: $02
    pop hl                                        ; $4b93: $e1
    ld h, $02                                     ; $4b94: $26 $02
    db $fd                                        ; $4b96: $fd
    ld h, $02                                     ; $4b97: $26 $02
    ld a, [hl+]                                   ; $4b99: $2a
    daa                                           ; $4b9a: $27
    ld [bc], a                                    ; $4b9b: $02
    ld [hl-], a                                   ; $4b9c: $32
    daa                                           ; $4b9d: $27
    ld [bc], a                                    ; $4b9e: $02
    ld c, l                                       ; $4b9f: $4d
    daa                                           ; $4ba0: $27
    ld [bc], a                                    ; $4ba1: $02
    ld l, e                                       ; $4ba2: $6b
    daa                                           ; $4ba3: $27
    ld [bc], a                                    ; $4ba4: $02
    ld a, [hl]                                    ; $4ba5: $7e
    daa                                           ; $4ba6: $27
    ld [bc], a                                    ; $4ba7: $02
    db $eb                                        ; $4ba8: $eb
    daa                                           ; $4ba9: $27
    ld [bc], a                                    ; $4baa: $02
    ei                                            ; $4bab: $fb
    daa                                           ; $4bac: $27
    ld [bc], a                                    ; $4bad: $02
    ld bc, $0228                                  ; $4bae: $01 $28 $02
    db $10                                        ; $4bb1: $10
    jr z, @+$04                                   ; $4bb2: $28 $02

    ld b, [hl]                                    ; $4bb4: $46
    jr z, @+$04                                   ; $4bb5: $28 $02

    ld l, b                                       ; $4bb7: $68
    jr z, @+$04                                   ; $4bb8: $28 $02

    ld a, a                                       ; $4bba: $7f
    jr z, @+$04                                   ; $4bbb: $28 $02

    sbc h                                         ; $4bbd: $9c
    jr z, @+$04                                   ; $4bbe: $28 $02

    or b                                          ; $4bc0: $b0
    jr z, @+$04                                   ; $4bc1: $28 $02

    pop de                                        ; $4bc3: $d1
    jr z, @+$04                                   ; $4bc4: $28 $02

    ld [c], a                                     ; $4bc6: $e2
    jr z, @+$04                                   ; $4bc7: $28 $02

    di                                            ; $4bc9: $f3
    jr z, jr_065_4bce                             ; $4bca: $28 $02

    ld a, [bc]                                    ; $4bcc: $0a
    add hl, hl                                    ; $4bcd: $29

jr_065_4bce:
    ld [bc], a                                    ; $4bce: $02
    ld [hl+], a                                   ; $4bcf: $22
    add hl, hl                                    ; $4bd0: $29
    ld [bc], a                                    ; $4bd1: $02
    ld [hl-], a                                   ; $4bd2: $32
    add hl, hl                                    ; $4bd3: $29
    ld [bc], a                                    ; $4bd4: $02
    ld b, [hl]                                    ; $4bd5: $46
    add hl, hl                                    ; $4bd6: $29
    ld [bc], a                                    ; $4bd7: $02
    ld e, c                                       ; $4bd8: $59
    add hl, hl                                    ; $4bd9: $29
    ld [bc], a                                    ; $4bda: $02
    ld h, e                                       ; $4bdb: $63
    add hl, hl                                    ; $4bdc: $29
    ld [bc], a                                    ; $4bdd: $02
    add e                                         ; $4bde: $83
    add hl, hl                                    ; $4bdf: $29
    ld [bc], a                                    ; $4be0: $02
    xor b                                         ; $4be1: $a8
    add hl, hl                                    ; $4be2: $29
    ld [bc], a                                    ; $4be3: $02
    rst $08                                       ; $4be4: $cf
    add hl, hl                                    ; $4be5: $29
    ld [bc], a                                    ; $4be6: $02
    ld [$0229], a                                 ; $4be7: $ea $29 $02
    ld a, [hl+]                                   ; $4bea: $2a
    ld a, [hl+]                                   ; $4beb: $2a
    ld [bc], a                                    ; $4bec: $02
    jr c, jr_065_4c19                             ; $4bed: $38 $2a

    ld [bc], a                                    ; $4bef: $02
    ld c, [hl]                                    ; $4bf0: $4e
    ld a, [hl+]                                   ; $4bf1: $2a
    ld [bc], a                                    ; $4bf2: $02
    ld a, a                                       ; $4bf3: $7f
    ld a, [hl+]                                   ; $4bf4: $2a
    ld [bc], a                                    ; $4bf5: $02
    sub a                                         ; $4bf6: $97
    ld a, [hl+]                                   ; $4bf7: $2a
    ld [bc], a                                    ; $4bf8: $02
    or e                                          ; $4bf9: $b3
    ld a, [hl+]                                   ; $4bfa: $2a
    ld [bc], a                                    ; $4bfb: $02
    db $fc                                        ; $4bfc: $fc
    ld a, [hl+]                                   ; $4bfd: $2a
    ld [bc], a                                    ; $4bfe: $02
    dec d                                         ; $4bff: $15
    dec hl                                        ; $4c00: $2b
    ld [bc], a                                    ; $4c01: $02
    ld c, a                                       ; $4c02: $4f
    dec hl                                        ; $4c03: $2b
    ld [bc], a                                    ; $4c04: $02
    add [hl]                                      ; $4c05: $86
    dec hl                                        ; $4c06: $2b
    ld [bc], a                                    ; $4c07: $02
    sub c                                         ; $4c08: $91
    dec hl                                        ; $4c09: $2b
    ld [bc], a                                    ; $4c0a: $02
    cp [hl]                                       ; $4c0b: $be
    dec hl                                        ; $4c0c: $2b
    ld [bc], a                                    ; $4c0d: $02
    db $eb                                        ; $4c0e: $eb
    dec hl                                        ; $4c0f: $2b
    ld [bc], a                                    ; $4c10: $02
    ld b, $2c                                     ; $4c11: $06 $2c
    ld [bc], a                                    ; $4c13: $02
    ld [de], a                                    ; $4c14: $12
    inc l                                         ; $4c15: $2c
    ld [bc], a                                    ; $4c16: $02
    ld a, [hl+]                                   ; $4c17: $2a
    inc l                                         ; $4c18: $2c

jr_065_4c19:
    ld [bc], a                                    ; $4c19: $02
    add hl, sp                                    ; $4c1a: $39
    inc l                                         ; $4c1b: $2c
    ld [bc], a                                    ; $4c1c: $02
    ld e, c                                       ; $4c1d: $59
    inc l                                         ; $4c1e: $2c
    ld [bc], a                                    ; $4c1f: $02
    adc b                                         ; $4c20: $88
    inc l                                         ; $4c21: $2c
    ld [bc], a                                    ; $4c22: $02
    and b                                         ; $4c23: $a0
    inc l                                         ; $4c24: $2c
    ld [bc], a                                    ; $4c25: $02
    or d                                          ; $4c26: $b2
    inc l                                         ; $4c27: $2c
    ld [bc], a                                    ; $4c28: $02
    call z, $022c                                 ; $4c29: $cc $2c $02
    db $dd                                        ; $4c2c: $dd
    inc l                                         ; $4c2d: $2c

Call_065_4c2e:
    ld [bc], a                                    ; $4c2e: $02
    dec e                                         ; $4c2f: $1d
    dec l                                         ; $4c30: $2d
    ld [bc], a                                    ; $4c31: $02
    ld c, b                                       ; $4c32: $48
    dec l                                         ; $4c33: $2d
    ld [bc], a                                    ; $4c34: $02
    ld a, h                                       ; $4c35: $7c
    dec l                                         ; $4c36: $2d
    ld [bc], a                                    ; $4c37: $02
    adc l                                         ; $4c38: $8d
    dec l                                         ; $4c39: $2d
    ld [bc], a                                    ; $4c3a: $02
    and d                                         ; $4c3b: $a2
    dec l                                         ; $4c3c: $2d
    ld [bc], a                                    ; $4c3d: $02
    jp z, $022d                                   ; $4c3e: $ca $2d $02

    nop                                           ; $4c41: $00
    ld l, $02                                     ; $4c42: $2e $02
    ld hl, $022e                                  ; $4c44: $21 $2e $02
    ld c, [hl]                                    ; $4c47: $4e
    ld l, $02                                     ; $4c48: $2e $02
    ld d, l                                       ; $4c4a: $55
    ld l, $02                                     ; $4c4b: $2e $02
    adc [hl]                                      ; $4c4d: $8e
    ld l, $02                                     ; $4c4e: $2e $02
    cp [hl]                                       ; $4c50: $be
    ld l, $02                                     ; $4c51: $2e $02
    rst $18                                       ; $4c53: $df
    ld l, $02                                     ; $4c54: $2e $02
    ld b, $2f                                     ; $4c56: $06 $2f
    ld [bc], a                                    ; $4c58: $02
    ld h, $2f                                     ; $4c59: $26 $2f
    ld [bc], a                                    ; $4c5b: $02
    ld d, l                                       ; $4c5c: $55
    cpl                                           ; $4c5d: $2f
    ld [bc], a                                    ; $4c5e: $02
    ld [hl], a                                    ; $4c5f: $77
    cpl                                           ; $4c60: $2f
    ld [bc], a                                    ; $4c61: $02
    adc d                                         ; $4c62: $8a
    cpl                                           ; $4c63: $2f
    ld [bc], a                                    ; $4c64: $02
    ret z                                         ; $4c65: $c8

    cpl                                           ; $4c66: $2f
    ld [bc], a                                    ; $4c67: $02
    db $dd                                        ; $4c68: $dd
    cpl                                           ; $4c69: $2f
    ld [bc], a                                    ; $4c6a: $02
    ldh a, [$2f]                                  ; $4c6b: $f0 $2f
    ld [bc], a                                    ; $4c6d: $02
    db $f4                                        ; $4c6e: $f4
    cpl                                           ; $4c6f: $2f
    ld [bc], a                                    ; $4c70: $02
    dec e                                         ; $4c71: $1d
    jr nc, @+$04                                  ; $4c72: $30 $02

    ld [hl-], a                                   ; $4c74: $32
    jr nc, @+$04                                  ; $4c75: $30 $02

    ld b, b                                       ; $4c77: $40
    jr nc, @+$04                                  ; $4c78: $30 $02

    ld d, b                                       ; $4c7a: $50
    jr nc, @+$04                                  ; $4c7b: $30 $02

    ld l, a                                       ; $4c7d: $6f
    jr nc, @+$04                                  ; $4c7e: $30 $02

    ld a, l                                       ; $4c80: $7d
    jr nc, @+$04                                  ; $4c81: $30 $02

    and d                                         ; $4c83: $a2
    jr nc, @+$04                                  ; $4c84: $30 $02

    xor l                                         ; $4c86: $ad
    jr nc, @+$04                                  ; $4c87: $30 $02

    pop bc                                        ; $4c89: $c1
    jr nc, jr_065_4c8e                            ; $4c8a: $30 $02

    sbc $30                                       ; $4c8c: $de $30

jr_065_4c8e:
    ld [bc], a                                    ; $4c8e: $02
    add hl, sp                                    ; $4c8f: $39
    ld sp, $4b02                                  ; $4c90: $31 $02 $4b
    ld sp, $9902                                  ; $4c93: $31 $02 $99
    ld sp, $bc02                                  ; $4c96: $31 $02 $bc
    ld sp, $e202                                  ; $4c99: $31 $02 $e2
    ld sp, $ec02                                  ; $4c9c: $31 $02 $ec
    ld sp, $0a02                                  ; $4c9f: $31 $02 $0a
    ld [hl-], a                                   ; $4ca2: $32
    ld [bc], a                                    ; $4ca3: $02
    ld de, $0232                                  ; $4ca4: $11 $32 $02
    scf                                           ; $4ca7: $37
    ld [hl-], a                                   ; $4ca8: $32
    ld [bc], a                                    ; $4ca9: $02
    ld c, b                                       ; $4caa: $48
    ld [hl-], a                                   ; $4cab: $32
    ld [bc], a                                    ; $4cac: $02
    ld h, c                                       ; $4cad: $61
    ld [hl-], a                                   ; $4cae: $32
    ld [bc], a                                    ; $4caf: $02
    sbc [hl]                                      ; $4cb0: $9e
    ld [hl-], a                                   ; $4cb1: $32
    ld [bc], a                                    ; $4cb2: $02
    or b                                          ; $4cb3: $b0
    ld [hl-], a                                   ; $4cb4: $32
    ld [bc], a                                    ; $4cb5: $02
    ret nz                                        ; $4cb6: $c0

    ld [hl-], a                                   ; $4cb7: $32
    ld [bc], a                                    ; $4cb8: $02
    ret nc                                        ; $4cb9: $d0

    ld [hl-], a                                   ; $4cba: $32
    ld [bc], a                                    ; $4cbb: $02
    add sp, $32                                   ; $4cbc: $e8 $32
    ld [bc], a                                    ; $4cbe: $02
    ld a, [c]                                     ; $4cbf: $f2
    ld [hl-], a                                   ; $4cc0: $32
    ld [bc], a                                    ; $4cc1: $02
    ei                                            ; $4cc2: $fb
    ld [hl-], a                                   ; $4cc3: $32
    ld [bc], a                                    ; $4cc4: $02
    ld c, d                                       ; $4cc5: $4a
    inc sp                                        ; $4cc6: $33
    ld [bc], a                                    ; $4cc7: $02
    ld e, l                                       ; $4cc8: $5d
    inc sp                                        ; $4cc9: $33
    ld [bc], a                                    ; $4cca: $02
    ld h, [hl]                                    ; $4ccb: $66
    inc sp                                        ; $4ccc: $33
    ld [bc], a                                    ; $4ccd: $02
    ld l, a                                       ; $4cce: $6f
    inc sp                                        ; $4ccf: $33
    ld [bc], a                                    ; $4cd0: $02
    adc a                                         ; $4cd1: $8f
    inc sp                                        ; $4cd2: $33
    ld [bc], a                                    ; $4cd3: $02
    sbc $33                                       ; $4cd4: $de $33
    ld [bc], a                                    ; $4cd6: $02
    dec b                                         ; $4cd7: $05
    inc [hl]                                      ; $4cd8: $34
    ld [bc], a                                    ; $4cd9: $02
    rla                                           ; $4cda: $17
    inc [hl]                                      ; $4cdb: $34
    ld [bc], a                                    ; $4cdc: $02
    ld hl, $0234                                  ; $4cdd: $21 $34 $02
    ld c, l                                       ; $4ce0: $4d
    inc [hl]                                      ; $4ce1: $34
    ld [bc], a                                    ; $4ce2: $02
    ld h, l                                       ; $4ce3: $65
    inc [hl]                                      ; $4ce4: $34
    ld [bc], a                                    ; $4ce5: $02
    ld a, b                                       ; $4ce6: $78
    inc [hl]                                      ; $4ce7: $34
    ld [bc], a                                    ; $4ce8: $02
    adc c                                         ; $4ce9: $89
    inc [hl]                                      ; $4cea: $34
    ld [bc], a                                    ; $4ceb: $02
    xor b                                         ; $4cec: $a8
    inc [hl]                                      ; $4ced: $34
    ld [bc], a                                    ; $4cee: $02
    cp d                                          ; $4cef: $ba
    inc [hl]                                      ; $4cf0: $34
    ld [bc], a                                    ; $4cf1: $02
    rst $18                                       ; $4cf2: $df
    inc [hl]                                      ; $4cf3: $34
    ld [bc], a                                    ; $4cf4: $02
    inc b                                         ; $4cf5: $04
    dec [hl]                                      ; $4cf6: $35
    ld [bc], a                                    ; $4cf7: $02
    dec e                                         ; $4cf8: $1d
    dec [hl]                                      ; $4cf9: $35
    ld [bc], a                                    ; $4cfa: $02
    ld l, l                                       ; $4cfb: $6d
    dec [hl]                                      ; $4cfc: $35
    ld [bc], a                                    ; $4cfd: $02
    adc e                                         ; $4cfe: $8b
    dec [hl]                                      ; $4cff: $35
    ld [bc], a                                    ; $4d00: $02
    cp b                                          ; $4d01: $b8
    dec [hl]                                      ; $4d02: $35
    ld [bc], a                                    ; $4d03: $02
    rst $18                                       ; $4d04: $df
    dec [hl]                                      ; $4d05: $35
    ld [bc], a                                    ; $4d06: $02
    or $35                                        ; $4d07: $f6 $35
    ld [bc], a                                    ; $4d09: $02
    inc [hl]                                      ; $4d0a: $34
    ld [hl], $02                                  ; $4d0b: $36 $02
    dec a                                         ; $4d0d: $3d
    ld [hl], $02                                  ; $4d0e: $36 $02
    or l                                          ; $4d10: $b5
    ld [hl], $02                                  ; $4d11: $36 $02
    cp a                                          ; $4d13: $bf
    ld [hl], $02                                  ; $4d14: $36 $02
    ret nc                                        ; $4d16: $d0

    ld [hl], $02                                  ; $4d17: $36 $02
    pop hl                                        ; $4d19: $e1
    ld [hl], $02                                  ; $4d1a: $36 $02
    di                                            ; $4d1c: $f3
    ld [hl], $02                                  ; $4d1d: $36 $02
    jr nz, jr_065_4d58                            ; $4d1f: $20 $37

    ld [bc], a                                    ; $4d21: $02
    ld e, d                                       ; $4d22: $5a
    scf                                           ; $4d23: $37
    ld [bc], a                                    ; $4d24: $02
    ld l, e                                       ; $4d25: $6b
    scf                                           ; $4d26: $37
    ld [bc], a                                    ; $4d27: $02
    sbc e                                         ; $4d28: $9b
    scf                                           ; $4d29: $37
    ld [bc], a                                    ; $4d2a: $02
    ret z                                         ; $4d2b: $c8

    scf                                           ; $4d2c: $37
    ld [bc], a                                    ; $4d2d: $02
    db $dd                                        ; $4d2e: $dd
    scf                                           ; $4d2f: $37
    ld [bc], a                                    ; $4d30: $02
    nop                                           ; $4d31: $00
    jr c, jr_065_4d36                             ; $4d32: $38 $02

    ld l, $38                                     ; $4d34: $2e $38

jr_065_4d36:
    ld [bc], a                                    ; $4d36: $02
    ld e, e                                       ; $4d37: $5b
    jr c, @+$04                                   ; $4d38: $38 $02

    ld [hl], h                                    ; $4d3a: $74
    jr c, @+$04                                   ; $4d3b: $38 $02

    sbc b                                         ; $4d3d: $98
    jr c, @+$04                                   ; $4d3e: $38 $02

    sbc [hl]                                      ; $4d40: $9e
    jr c, @+$04                                   ; $4d41: $38 $02

    db $fc                                        ; $4d43: $fc
    jr c, jr_065_4d48                             ; $4d44: $38 $02

    ld [bc], a                                    ; $4d46: $02
    add hl, sp                                    ; $4d47: $39

jr_065_4d48:
    ld [bc], a                                    ; $4d48: $02
    ld sp, $0239                                  ; $4d49: $31 $39 $02
    ld d, [hl]                                    ; $4d4c: $56
    add hl, sp                                    ; $4d4d: $39
    ld [bc], a                                    ; $4d4e: $02
    ld l, h                                       ; $4d4f: $6c
    add hl, sp                                    ; $4d50: $39
    ld [bc], a                                    ; $4d51: $02
    ld a, h                                       ; $4d52: $7c
    add hl, sp                                    ; $4d53: $39
    ld [bc], a                                    ; $4d54: $02
    adc c                                         ; $4d55: $89
    add hl, sp                                    ; $4d56: $39
    ld [bc], a                                    ; $4d57: $02

jr_065_4d58:
    and c                                         ; $4d58: $a1
    add hl, sp                                    ; $4d59: $39
    ld [bc], a                                    ; $4d5a: $02
    ld bc, $023a                                  ; $4d5b: $01 $3a $02
    ld c, $3a                                     ; $4d5e: $0e $3a
    ld [bc], a                                    ; $4d60: $02
    inc hl                                        ; $4d61: $23
    ld a, [hl-]                                   ; $4d62: $3a
    ld [bc], a                                    ; $4d63: $02
    ld a, [hl+]                                   ; $4d64: $2a
    ld a, [hl-]                                   ; $4d65: $3a
    ld [bc], a                                    ; $4d66: $02
    ld e, e                                       ; $4d67: $5b
    ld a, [hl-]                                   ; $4d68: $3a
    ld [bc], a                                    ; $4d69: $02
    add e                                         ; $4d6a: $83
    ld a, [hl-]                                   ; $4d6b: $3a
    ld [bc], a                                    ; $4d6c: $02
    and d                                         ; $4d6d: $a2
    ld a, [hl-]                                   ; $4d6e: $3a
    ld [bc], a                                    ; $4d6f: $02
    dec bc                                        ; $4d70: $0b
    dec sp                                        ; $4d71: $3b
    ld [bc], a                                    ; $4d72: $02
    ld a, [hl+]                                   ; $4d73: $2a
    dec sp                                        ; $4d74: $3b
    ld [bc], a                                    ; $4d75: $02
    ld a, $3b                                     ; $4d76: $3e $3b
    ld [bc], a                                    ; $4d78: $02
    ld h, e                                       ; $4d79: $63
    dec sp                                        ; $4d7a: $3b
    ld [bc], a                                    ; $4d7b: $02
    push bc                                       ; $4d7c: $c5
    dec sp                                        ; $4d7d: $3b
    ld [bc], a                                    ; $4d7e: $02
    db $ed                                        ; $4d7f: $ed
    dec sp                                        ; $4d80: $3b
    ld [bc], a                                    ; $4d81: $02
    ld sp, $023c                                  ; $4d82: $31 $3c $02
    ld d, l                                       ; $4d85: $55
    inc a                                         ; $4d86: $3c
    ld [bc], a                                    ; $4d87: $02
    ld h, l                                       ; $4d88: $65
    inc a                                         ; $4d89: $3c
    ld [bc], a                                    ; $4d8a: $02
    ld a, l                                       ; $4d8b: $7d

Jump_065_4d8c:
    inc a                                         ; $4d8c: $3c
    ld [bc], a                                    ; $4d8d: $02
    add l                                         ; $4d8e: $85
    inc a                                         ; $4d8f: $3c
    ld [bc], a                                    ; $4d90: $02
    or [hl]                                       ; $4d91: $b6
    inc a                                         ; $4d92: $3c
    ld [bc], a                                    ; $4d93: $02
    db $d3                                        ; $4d94: $d3
    inc a                                         ; $4d95: $3c
    ld [bc], a                                    ; $4d96: $02
    db $fc                                        ; $4d97: $fc
    inc a                                         ; $4d98: $3c
    ld [bc], a                                    ; $4d99: $02
    dec c                                         ; $4d9a: $0d
    dec a                                         ; $4d9b: $3d
    ld [bc], a                                    ; $4d9c: $02
    scf                                           ; $4d9d: $37
    dec a                                         ; $4d9e: $3d
    ld [bc], a                                    ; $4d9f: $02
    ld c, h                                       ; $4da0: $4c
    dec a                                         ; $4da1: $3d
    ld [bc], a                                    ; $4da2: $02
    ld h, l                                       ; $4da3: $65
    dec a                                         ; $4da4: $3d
    ld [bc], a                                    ; $4da5: $02
    ld [hl], c                                    ; $4da6: $71
    dec a                                         ; $4da7: $3d
    ld [bc], a                                    ; $4da8: $02
    jr nc, jr_065_4de9                            ; $4da9: $30 $3e

    ld [bc], a                                    ; $4dab: $02
    ld b, c                                       ; $4dac: $41
    ld a, $02                                     ; $4dad: $3e $02
    cp h                                          ; $4daf: $bc
    ld a, $02                                     ; $4db0: $3e $02
    call c, $023e                                 ; $4db2: $dc $3e $02
    inc c                                         ; $4db5: $0c
    ccf                                           ; $4db6: $3f
    ld [bc], a                                    ; $4db7: $02
    ld [hl-], a                                   ; $4db8: $32
    ccf                                           ; $4db9: $3f
    ld [bc], a                                    ; $4dba: $02
    ld a, b                                       ; $4dbb: $78
    ccf                                           ; $4dbc: $3f
    ld [bc], a                                    ; $4dbd: $02
    adc l                                         ; $4dbe: $8d
    ccf                                           ; $4dbf: $3f
    ld [bc], a                                    ; $4dc0: $02
    sub [hl]                                      ; $4dc1: $96
    ccf                                           ; $4dc2: $3f
    ld [bc], a                                    ; $4dc3: $02
    sbc [hl]                                      ; $4dc4: $9e
    ccf                                           ; $4dc5: $3f
    ld [bc], a                                    ; $4dc6: $02
    cp e                                          ; $4dc7: $bb
    ccf                                           ; $4dc8: $3f
    ld [bc], a                                    ; $4dc9: $02
    ret                                           ; $4dca: $c9


    ccf                                           ; $4dcb: $3f
    inc bc                                        ; $4dcc: $03
    ld bc, $0300                                  ; $4dcd: $01 $00 $03
    add hl, hl                                    ; $4dd0: $29
    nop                                           ; $4dd1: $00
    inc bc                                        ; $4dd2: $03
    ld b, c                                       ; $4dd3: $41
    nop                                           ; $4dd4: $00
    inc bc                                        ; $4dd5: $03
    ld c, l                                       ; $4dd6: $4d
    nop                                           ; $4dd7: $00
    inc bc                                        ; $4dd8: $03
    adc l                                         ; $4dd9: $8d
    nop                                           ; $4dda: $00
    inc bc                                        ; $4ddb: $03
    and l                                         ; $4ddc: $a5
    nop                                           ; $4ddd: $00
    inc bc                                        ; $4dde: $03
    adc $00                                       ; $4ddf: $ce $00
    inc bc                                        ; $4de1: $03
    and $00                                       ; $4de2: $e6 $00
    inc bc                                        ; $4de4: $03
    inc d                                         ; $4de5: $14
    ld bc, $3f03                                  ; $4de6: $01 $03 $3f

jr_065_4de9:
    ld bc, $6303                                  ; $4de9: $01 $03 $63
    ld bc, $6d03                                  ; $4dec: $01 $03 $6d
    ld bc, $7c03                                  ; $4def: $01 $03 $7c
    ld bc, $8f03                                  ; $4df2: $01 $03 $8f
    ld bc, $ae03                                  ; $4df5: $01 $03 $ae
    ld bc, $d503                                  ; $4df8: $01 $03 $d5
    ld bc, $de03                                  ; $4dfb: $01 $03 $de
    ld bc, $0903                                  ; $4dfe: $01 $03 $09
    ld [bc], a                                    ; $4e01: $02
    inc bc                                        ; $4e02: $03
    jr c, jr_065_4e07                             ; $4e03: $38 $02

    inc bc                                        ; $4e05: $03
    ld e, l                                       ; $4e06: $5d

jr_065_4e07:
    ld [bc], a                                    ; $4e07: $02
    inc bc                                        ; $4e08: $03
    adc h                                         ; $4e09: $8c
    ld [bc], a                                    ; $4e0a: $02
    inc bc                                        ; $4e0b: $03
    xor e                                         ; $4e0c: $ab
    ld [bc], a                                    ; $4e0d: $02
    inc bc                                        ; $4e0e: $03
    ret c                                         ; $4e0f: $d8

    ld [bc], a                                    ; $4e10: $02
    inc bc                                        ; $4e11: $03
    ld l, $03                                     ; $4e12: $2e $03
    inc bc                                        ; $4e14: $03
    ld e, l                                       ; $4e15: $5d
    inc bc                                        ; $4e16: $03
    inc bc                                        ; $4e17: $03
    ld a, e                                       ; $4e18: $7b
    inc bc                                        ; $4e19: $03
    inc bc                                        ; $4e1a: $03
    xor b                                         ; $4e1b: $a8
    inc bc                                        ; $4e1c: $03
    inc bc                                        ; $4e1d: $03
    cp e                                          ; $4e1e: $bb
    inc bc                                        ; $4e1f: $03
    inc bc                                        ; $4e20: $03
    call z, Call_000_0303                         ; $4e21: $cc $03 $03
    pop af                                        ; $4e24: $f1
    inc bc                                        ; $4e25: $03
    inc bc                                        ; $4e26: $03
    dec c                                         ; $4e27: $0d
    inc b                                         ; $4e28: $04
    inc bc                                        ; $4e29: $03
    add hl, hl                                    ; $4e2a: $29
    inc b                                         ; $4e2b: $04
    inc bc                                        ; $4e2c: $03
    ld c, d                                       ; $4e2d: $4a
    inc b                                         ; $4e2e: $04
    inc bc                                        ; $4e2f: $03
    ld [hl], l                                    ; $4e30: $75
    inc b                                         ; $4e31: $04
    inc bc                                        ; $4e32: $03
    sbc c                                         ; $4e33: $99
    inc b                                         ; $4e34: $04
    inc bc                                        ; $4e35: $03
    ld [c], a                                     ; $4e36: $e2
    inc b                                         ; $4e37: $04
    inc bc                                        ; $4e38: $03
    ld hl, sp+$04                                 ; $4e39: $f8 $04
    inc bc                                        ; $4e3b: $03
    dec b                                         ; $4e3c: $05
    dec b                                         ; $4e3d: $05
    inc bc                                        ; $4e3e: $03
    jr nc, jr_065_4e46                            ; $4e3f: $30 $05

    inc bc                                        ; $4e41: $03
    ld a, a                                       ; $4e42: $7f
    dec b                                         ; $4e43: $05
    inc bc                                        ; $4e44: $03
    cp c                                          ; $4e45: $b9

jr_065_4e46:
    dec b                                         ; $4e46: $05
    inc bc                                        ; $4e47: $03
    sub $05                                       ; $4e48: $d6 $05
    inc bc                                        ; $4e4a: $03
    ldh [rTIMA], a                                ; $4e4b: $e0 $05
    inc bc                                        ; $4e4d: $03
    jp hl                                         ; $4e4e: $e9


    dec b                                         ; $4e4f: $05
    inc bc                                        ; $4e50: $03
    dec b                                         ; $4e51: $05
    ld b, $03                                     ; $4e52: $06 $03
    inc hl                                        ; $4e54: $23
    ld b, $03                                     ; $4e55: $06 $03
    ld l, $06                                     ; $4e57: $2e $06
    inc bc                                        ; $4e59: $03
    ld b, d                                       ; $4e5a: $42
    ld b, $03                                     ; $4e5b: $06 $03
    ld e, l                                       ; $4e5d: $5d
    ld b, $03                                     ; $4e5e: $06 $03
    add [hl]                                      ; $4e60: $86
    ld b, $03                                     ; $4e61: $06 $03
    sbc d                                         ; $4e63: $9a
    ld b, $03                                     ; $4e64: $06 $03
    rst $10                                       ; $4e66: $d7
    ld b, $03                                     ; $4e67: $06 $03
    ld a, [$0306]                                 ; $4e69: $fa $06 $03
    rrca                                          ; $4e6c: $0f
    rlca                                          ; $4e6d: $07
    inc bc                                        ; $4e6e: $03
    jr z, jr_065_4e78                             ; $4e6f: $28 $07

    inc bc                                        ; $4e71: $03
    ld [hl], $07                                  ; $4e72: $36 $07
    inc bc                                        ; $4e74: $03
    ld c, d                                       ; $4e75: $4a
    rlca                                          ; $4e76: $07
    inc bc                                        ; $4e77: $03

jr_065_4e78:
    ld e, a                                       ; $4e78: $5f
    rlca                                          ; $4e79: $07
    inc bc                                        ; $4e7a: $03
    ld l, l                                       ; $4e7b: $6d
    rlca                                          ; $4e7c: $07
    inc bc                                        ; $4e7d: $03
    sub e                                         ; $4e7e: $93
    rlca                                          ; $4e7f: $07
    inc bc                                        ; $4e80: $03
    and [hl]                                      ; $4e81: $a6
    rlca                                          ; $4e82: $07
    inc bc                                        ; $4e83: $03
    cp h                                          ; $4e84: $bc
    rlca                                          ; $4e85: $07
    inc bc                                        ; $4e86: $03
    call $0307                                    ; $4e87: $cd $07 $03
    db $ed                                        ; $4e8a: $ed
    rlca                                          ; $4e8b: $07
    inc bc                                        ; $4e8c: $03
    ei                                            ; $4e8d: $fb
    rlca                                          ; $4e8e: $07
    inc bc                                        ; $4e8f: $03
    rrca                                          ; $4e90: $0f
    ld [$2903], sp                                ; $4e91: $08 $03 $29
    ld [$3f03], sp                                ; $4e94: $08 $03 $3f
    ld [$5e03], sp                                ; $4e97: $08 $03 $5e
    ld [$7403], sp                                ; $4e9a: $08 $03 $74
    ld [$9803], sp                                ; $4e9d: $08 $03 $98
    ld [$ac03], sp                                ; $4ea0: $08 $03 $ac
    ld [$cc03], sp                                ; $4ea3: $08 $03 $cc
    ld [$e903], sp                                ; $4ea6: $08 $03 $e9
    ld [$0503], sp                                ; $4ea9: $08 $03 $05
    add hl, bc                                    ; $4eac: $09
    inc bc                                        ; $4ead: $03
    add hl, de                                    ; $4eae: $19
    add hl, bc                                    ; $4eaf: $09
    inc bc                                        ; $4eb0: $03
    inc [hl]                                      ; $4eb1: $34
    add hl, bc                                    ; $4eb2: $09

Jump_065_4eb3:
    inc bc                                        ; $4eb3: $03
    ld h, d                                       ; $4eb4: $62
    add hl, bc                                    ; $4eb5: $09
    inc bc                                        ; $4eb6: $03
    ld a, b                                       ; $4eb7: $78
    add hl, bc                                    ; $4eb8: $09
    inc bc                                        ; $4eb9: $03
    sbc e                                         ; $4eba: $9b
    add hl, bc                                    ; $4ebb: $09
    inc bc                                        ; $4ebc: $03
    xor l                                         ; $4ebd: $ad
    add hl, bc                                    ; $4ebe: $09
    inc bc                                        ; $4ebf: $03
    cp h                                          ; $4ec0: $bc
    add hl, bc                                    ; $4ec1: $09
    inc bc                                        ; $4ec2: $03
    db $dd                                        ; $4ec3: $dd
    add hl, bc                                    ; $4ec4: $09
    inc bc                                        ; $4ec5: $03
    dec b                                         ; $4ec6: $05
    ld a, [bc]                                    ; $4ec7: $0a
    inc bc                                        ; $4ec8: $03
    ld e, $0a                                     ; $4ec9: $1e $0a
    inc bc                                        ; $4ecb: $03
    ld c, h                                       ; $4ecc: $4c
    ld a, [bc]                                    ; $4ecd: $0a
    inc bc                                        ; $4ece: $03
    ld [hl], h                                    ; $4ecf: $74
    ld a, [bc]                                    ; $4ed0: $0a
    inc bc                                        ; $4ed1: $03
    sbc l                                         ; $4ed2: $9d
    ld a, [bc]                                    ; $4ed3: $0a
    inc bc                                        ; $4ed4: $03
    push bc                                       ; $4ed5: $c5
    ld a, [bc]                                    ; $4ed6: $0a
    inc bc                                        ; $4ed7: $03
    db $dd                                        ; $4ed8: $dd
    ld a, [bc]                                    ; $4ed9: $0a
    inc bc                                        ; $4eda: $03
    cp $0a                                        ; $4edb: $fe $0a
    inc bc                                        ; $4edd: $03
    ld [$030b], sp                                ; $4ede: $08 $0b $03
    rra                                           ; $4ee1: $1f
    dec bc                                        ; $4ee2: $0b
    inc bc                                        ; $4ee3: $03
    dec h                                         ; $4ee4: $25
    dec bc                                        ; $4ee5: $0b
    inc bc                                        ; $4ee6: $03
    inc [hl]                                      ; $4ee7: $34
    dec bc                                        ; $4ee8: $0b
    inc bc                                        ; $4ee9: $03
    ld b, d                                       ; $4eea: $42
    dec bc                                        ; $4eeb: $0b
    inc bc                                        ; $4eec: $03
    adc a                                         ; $4eed: $8f
    dec bc                                        ; $4eee: $0b
    inc bc                                        ; $4eef: $03
    xor h                                         ; $4ef0: $ac
    dec bc                                        ; $4ef1: $0b
    inc bc                                        ; $4ef2: $03
    jp z, Jump_000_030b                           ; $4ef3: $ca $0b $03

    rst $20                                       ; $4ef6: $e7
    dec bc                                        ; $4ef7: $0b
    inc bc                                        ; $4ef8: $03
    rla                                           ; $4ef9: $17
    inc c                                         ; $4efa: $0c
    inc bc                                        ; $4efb: $03
    ld sp, $030c                                  ; $4efc: $31 $0c $03
    ld c, [hl]                                    ; $4eff: $4e
    inc c                                         ; $4f00: $0c
    inc bc                                        ; $4f01: $03
    ld e, b                                       ; $4f02: $58
    inc c                                         ; $4f03: $0c
    inc bc                                        ; $4f04: $03
    halt                                          ; $4f05: $76
    inc c                                         ; $4f06: $0c
    inc bc                                        ; $4f07: $03
    sub [hl]                                      ; $4f08: $96
    inc c                                         ; $4f09: $0c
    inc bc                                        ; $4f0a: $03
    or b                                          ; $4f0b: $b0
    inc c                                         ; $4f0c: $0c
    inc bc                                        ; $4f0d: $03
    rst $08                                       ; $4f0e: $cf
    inc c                                         ; $4f0f: $0c
    inc bc                                        ; $4f10: $03
    ldh [$0c], a                                  ; $4f11: $e0 $0c
    inc bc                                        ; $4f13: $03
    dec c                                         ; $4f14: $0d
    dec c                                         ; $4f15: $0d
    inc bc                                        ; $4f16: $03
    ld e, $0d                                     ; $4f17: $1e $0d
    inc bc                                        ; $4f19: $03
    ccf                                           ; $4f1a: $3f
    dec c                                         ; $4f1b: $0d
    inc bc                                        ; $4f1c: $03
    ld d, a                                       ; $4f1d: $57
    dec c                                         ; $4f1e: $0d
    inc bc                                        ; $4f1f: $03
    sub c                                         ; $4f20: $91
    dec c                                         ; $4f21: $0d
    inc bc                                        ; $4f22: $03
    cp d                                          ; $4f23: $ba
    dec c                                         ; $4f24: $0d
    inc bc                                        ; $4f25: $03
    jp nz, $030d                                  ; $4f26: $c2 $0d $03

    call z, $030d                                 ; $4f29: $cc $0d $03
    and $0d                                       ; $4f2c: $e6 $0d
    inc bc                                        ; $4f2e: $03
    ld a, [c]                                     ; $4f2f: $f2
    dec c                                         ; $4f30: $0d
    inc bc                                        ; $4f31: $03
    cp $0d                                        ; $4f32: $fe $0d
    inc bc                                        ; $4f34: $03
    inc hl                                        ; $4f35: $23
    ld c, $03                                     ; $4f36: $0e $03
    ld d, c                                       ; $4f38: $51
    ld c, $03                                     ; $4f39: $0e $03
    ld h, h                                       ; $4f3b: $64
    ld c, $03                                     ; $4f3c: $0e $03
    sub [hl]                                      ; $4f3e: $96
    ld c, $03                                     ; $4f3f: $0e $03
    xor a                                         ; $4f41: $af
    ld c, $03                                     ; $4f42: $0e $03
    jp c, $030e                                   ; $4f44: $da $0e $03

    rst $20                                       ; $4f47: $e7
    ld c, $03                                     ; $4f48: $0e $03
    adc e                                         ; $4f4a: $8b
    rrca                                          ; $4f4b: $0f
    inc bc                                        ; $4f4c: $03
    sbc b                                         ; $4f4d: $98
    rrca                                          ; $4f4e: $0f
    inc bc                                        ; $4f4f: $03
    cp [hl]                                       ; $4f50: $be
    rrca                                          ; $4f51: $0f
    inc bc                                        ; $4f52: $03

Call_065_4f53:
    ld [bc], a                                    ; $4f53: $02
    db $10                                        ; $4f54: $10
    inc bc                                        ; $4f55: $03
    daa                                           ; $4f56: $27
    db $10                                        ; $4f57: $10
    inc bc                                        ; $4f58: $03
    ld b, a                                       ; $4f59: $47
    db $10                                        ; $4f5a: $10
    inc bc                                        ; $4f5b: $03
    ld h, h                                       ; $4f5c: $64
    db $10                                        ; $4f5d: $10
    inc bc                                        ; $4f5e: $03
    sub c                                         ; $4f5f: $91
    db $10                                        ; $4f60: $10
    inc bc                                        ; $4f61: $03
    cp a                                          ; $4f62: $bf
    db $10                                        ; $4f63: $10
    inc bc                                        ; $4f64: $03
    ld a, [c]                                     ; $4f65: $f2
    db $10                                        ; $4f66: $10
    inc bc                                        ; $4f67: $03
    ld [$0311], sp                                ; $4f68: $08 $11 $03
    dec [hl]                                      ; $4f6b: $35
    ld de, $4d03                                  ; $4f6c: $11 $03 $4d
    ld de, $5c03                                  ; $4f6f: $11 $03 $5c
    ld de, $b203                                  ; $4f72: $11 $03 $b2
    ld de, $ec03                                  ; $4f75: $11 $03 $ec
    ld de, $f903                                  ; $4f78: $11 $03 $f9
    ld de, $1803                                  ; $4f7b: $11 $03 $18
    ld [de], a                                    ; $4f7e: $12
    inc bc                                        ; $4f7f: $03
    ld [hl], $12                                  ; $4f80: $36 $12
    inc bc                                        ; $4f82: $03
    dec a                                         ; $4f83: $3d
    ld [de], a                                    ; $4f84: $12
    inc bc                                        ; $4f85: $03
    ld d, e                                       ; $4f86: $53
    ld [de], a                                    ; $4f87: $12
    inc bc                                        ; $4f88: $03
    ld [hl], e                                    ; $4f89: $73
    ld [de], a                                    ; $4f8a: $12
    inc bc                                        ; $4f8b: $03
    ld b, b                                       ; $4f8c: $40
    inc de                                        ; $4f8d: $13
    inc bc                                        ; $4f8e: $03
    ld c, b                                       ; $4f8f: $48
    inc de                                        ; $4f90: $13
    inc bc                                        ; $4f91: $03
    ld d, h                                       ; $4f92: $54
    inc de                                        ; $4f93: $13
    inc bc                                        ; $4f94: $03
    ld l, h                                       ; $4f95: $6c
    inc de                                        ; $4f96: $13
    inc bc                                        ; $4f97: $03
    sbc b                                         ; $4f98: $98
    inc de                                        ; $4f99: $13
    inc bc                                        ; $4f9a: $03
    cp e                                          ; $4f9b: $bb
    inc de                                        ; $4f9c: $13
    inc bc                                        ; $4f9d: $03
    xor $13                                       ; $4f9e: $ee $13
    inc bc                                        ; $4fa0: $03
    dec c                                         ; $4fa1: $0d
    inc d                                         ; $4fa2: $14
    inc bc                                        ; $4fa3: $03
    cpl                                           ; $4fa4: $2f
    inc d                                         ; $4fa5: $14
    inc bc                                        ; $4fa6: $03
    ccf                                           ; $4fa7: $3f
    inc d                                         ; $4fa8: $14
    inc bc                                        ; $4fa9: $03
    ld c, h                                       ; $4faa: $4c
    inc d                                         ; $4fab: $14
    inc bc                                        ; $4fac: $03
    ld l, c                                       ; $4fad: $69
    inc d                                         ; $4fae: $14
    inc bc                                        ; $4faf: $03
    push bc                                       ; $4fb0: $c5
    inc d                                         ; $4fb1: $14
    inc bc                                        ; $4fb2: $03
    ldh [rNR14], a                                ; $4fb3: $e0 $14
    inc bc                                        ; $4fb5: $03
    ld b, e                                       ; $4fb6: $43
    dec d                                         ; $4fb7: $15
    inc bc                                        ; $4fb8: $03
    sub e                                         ; $4fb9: $93
    dec d                                         ; $4fba: $15
    inc bc                                        ; $4fbb: $03
    ld sp, hl                                     ; $4fbc: $f9
    dec d                                         ; $4fbd: $15
    inc bc                                        ; $4fbe: $03
    ld d, e                                       ; $4fbf: $53
    ld d, $03                                     ; $4fc0: $16 $03
    or b                                          ; $4fc2: $b0
    ld d, $03                                     ; $4fc3: $16 $03
    rst $28                                       ; $4fc5: $ef
    ld d, $03                                     ; $4fc6: $16 $03
    ld [hl], $17                                  ; $4fc8: $36 $17
    inc bc                                        ; $4fca: $03
    ld [hl], b                                    ; $4fcb: $70
    rla                                           ; $4fcc: $17
    inc bc                                        ; $4fcd: $03
    add $17                                       ; $4fce: $c6 $17
    inc bc                                        ; $4fd0: $03
    db $d3                                        ; $4fd1: $d3
    rla                                           ; $4fd2: $17
    inc bc                                        ; $4fd3: $03
    db $db                                        ; $4fd4: $db
    rla                                           ; $4fd5: $17
    inc bc                                        ; $4fd6: $03
    add sp, $17                                   ; $4fd7: $e8 $17
    inc bc                                        ; $4fd9: $03
    add hl, bc                                    ; $4fda: $09
    jr jr_065_4fe0                                ; $4fdb: $18 $03

    add hl, de                                    ; $4fdd: $19
    jr jr_065_4fe3                                ; $4fde: $18 $03

jr_065_4fe0:
    dec hl                                        ; $4fe0: $2b
    jr jr_065_4fe6                                ; $4fe1: $18 $03

jr_065_4fe3:
    add hl, sp                                    ; $4fe3: $39
    jr jr_065_4fe9                                ; $4fe4: $18 $03

jr_065_4fe6:
    ld d, e                                       ; $4fe6: $53
    jr jr_065_4fec                                ; $4fe7: $18 $03

jr_065_4fe9:
    ld h, h                                       ; $4fe9: $64
    jr jr_065_4fef                                ; $4fea: $18 $03

jr_065_4fec:
    ld a, d                                       ; $4fec: $7a
    jr jr_065_4ff2                                ; $4fed: $18 $03

jr_065_4fef:
    or b                                          ; $4fef: $b0
    jr jr_065_4ff5                                ; $4ff0: $18 $03

jr_065_4ff2:
    jp nz, $0318                                  ; $4ff2: $c2 $18 $03

jr_065_4ff5:
    rst $10                                       ; $4ff5: $d7
    jr jr_065_4ffb                                ; $4ff6: $18 $03

    sbc $18                                       ; $4ff8: $de $18
    inc bc                                        ; $4ffa: $03

jr_065_4ffb:
    ld [bc], a                                    ; $4ffb: $02
    add hl, de                                    ; $4ffc: $19
    inc bc                                        ; $4ffd: $03
    ld [hl], $19                                  ; $4ffe: $36 $19
    inc bc                                        ; $5000: $03
    ld d, c                                       ; $5001: $51
    add hl, de                                    ; $5002: $19
    inc bc                                        ; $5003: $03
    add h                                         ; $5004: $84
    add hl, de                                    ; $5005: $19
    inc bc                                        ; $5006: $03
    and e                                         ; $5007: $a3
    add hl, de                                    ; $5008: $19
    inc bc                                        ; $5009: $03
    ld a, [$0319]                                 ; $500a: $fa $19 $03
    add hl, de                                    ; $500d: $19
    ld a, [de]                                    ; $500e: $1a
    inc bc                                        ; $500f: $03
    ccf                                           ; $5010: $3f
    ld a, [de]                                    ; $5011: $1a
    inc bc                                        ; $5012: $03
    ld h, e                                       ; $5013: $63
    ld a, [de]                                    ; $5014: $1a
    inc bc                                        ; $5015: $03
    sub d                                         ; $5016: $92
    ld a, [de]                                    ; $5017: $1a
    inc bc                                        ; $5018: $03
    and d                                         ; $5019: $a2

Jump_065_501a:
    ld a, [de]                                    ; $501a: $1a
    inc bc                                        ; $501b: $03
    xor h                                         ; $501c: $ac
    ld a, [de]                                    ; $501d: $1a
    inc bc                                        ; $501e: $03
    ret                                           ; $501f: $c9


    ld a, [de]                                    ; $5020: $1a
    inc bc                                        ; $5021: $03
    call nc, Call_000_031a                        ; $5022: $d4 $1a $03
    rst $28                                       ; $5025: $ef
    ld a, [de]                                    ; $5026: $1a
    inc bc                                        ; $5027: $03
    ld bc, $031b                                  ; $5028: $01 $1b $03
    ld d, $1b                                     ; $502b: $16 $1b
    inc bc                                        ; $502d: $03
    dec h                                         ; $502e: $25
    dec de                                        ; $502f: $1b
    inc bc                                        ; $5030: $03
    inc sp                                        ; $5031: $33
    dec de                                        ; $5032: $1b
    inc bc                                        ; $5033: $03
    ld a, [hl-]                                   ; $5034: $3a
    dec de                                        ; $5035: $1b
    inc bc                                        ; $5036: $03
    ld c, e                                       ; $5037: $4b
    dec de                                        ; $5038: $1b
    inc bc                                        ; $5039: $03
    ld d, [hl]                                    ; $503a: $56
    dec de                                        ; $503b: $1b
    inc bc                                        ; $503c: $03
    ld e, d                                       ; $503d: $5a
    dec de                                        ; $503e: $1b
    inc bc                                        ; $503f: $03
    ld l, l                                       ; $5040: $6d
    dec de                                        ; $5041: $1b
    inc bc                                        ; $5042: $03
    ld [hl], l                                    ; $5043: $75
    dec de                                        ; $5044: $1b
    inc bc                                        ; $5045: $03
    add c                                         ; $5046: $81
    dec de                                        ; $5047: $1b
    inc bc                                        ; $5048: $03
    adc d                                         ; $5049: $8a
    dec de                                        ; $504a: $1b
    inc bc                                        ; $504b: $03
    sub b                                         ; $504c: $90
    dec de                                        ; $504d: $1b
    inc bc                                        ; $504e: $03
    sbc c                                         ; $504f: $99
    dec de                                        ; $5050: $1b
    inc bc                                        ; $5051: $03
    and e                                         ; $5052: $a3
    dec de                                        ; $5053: $1b
    inc bc                                        ; $5054: $03
    xor b                                         ; $5055: $a8
    dec de                                        ; $5056: $1b
    inc bc                                        ; $5057: $03
    xor [hl]                                      ; $5058: $ae
    dec de                                        ; $5059: $1b
    inc bc                                        ; $505a: $03
    or e                                          ; $505b: $b3
    dec de                                        ; $505c: $1b
    inc bc                                        ; $505d: $03
    cp b                                          ; $505e: $b8
    dec de                                        ; $505f: $1b
    inc bc                                        ; $5060: $03
    cp l                                          ; $5061: $bd
    dec de                                        ; $5062: $1b
    inc bc                                        ; $5063: $03
    call nz, $031b                                ; $5064: $c4 $1b $03
    call $031b                                    ; $5067: $cd $1b $03
    sub $1b                                       ; $506a: $d6 $1b
    inc bc                                        ; $506c: $03
    sbc $1b                                       ; $506d: $de $1b
    inc bc                                        ; $506f: $03
    rst $20                                       ; $5070: $e7
    dec de                                        ; $5071: $1b
    inc bc                                        ; $5072: $03
    or $1b                                        ; $5073: $f6 $1b
    inc bc                                        ; $5075: $03
    ld bc, $031c                                  ; $5076: $01 $1c $03
    ld de, $031c                                  ; $5079: $11 $1c $03
    ld a, [de]                                    ; $507c: $1a
    inc e                                         ; $507d: $1c
    inc bc                                        ; $507e: $03
    ld h, $1c                                     ; $507f: $26 $1c
    inc bc                                        ; $5081: $03
    ld [hl], $1c                                  ; $5082: $36 $1c
    inc bc                                        ; $5084: $03
    ld b, b                                       ; $5085: $40
    inc e                                         ; $5086: $1c
    inc bc                                        ; $5087: $03
    ld c, l                                       ; $5088: $4d
    inc e                                         ; $5089: $1c
    inc bc                                        ; $508a: $03
    ld e, a                                       ; $508b: $5f
    inc e                                         ; $508c: $1c
    inc bc                                        ; $508d: $03
    ld l, e                                       ; $508e: $6b
    inc e                                         ; $508f: $1c
    inc bc                                        ; $5090: $03
    ld a, c                                       ; $5091: $79
    inc e                                         ; $5092: $1c
    inc bc                                        ; $5093: $03
    adc b                                         ; $5094: $88
    inc e                                         ; $5095: $1c
    inc bc                                        ; $5096: $03
    sub e                                         ; $5097: $93
    inc e                                         ; $5098: $1c
    inc bc                                        ; $5099: $03
    sbc e                                         ; $509a: $9b
    inc e                                         ; $509b: $1c
    inc bc                                        ; $509c: $03
    xor h                                         ; $509d: $ac
    inc e                                         ; $509e: $1c
    inc bc                                        ; $509f: $03
    cp d                                          ; $50a0: $ba
    inc e                                         ; $50a1: $1c
    inc bc                                        ; $50a2: $03
    rr h                                          ; $50a3: $cb $1c
    inc bc                                        ; $50a5: $03
    sbc $1c                                       ; $50a6: $de $1c
    inc bc                                        ; $50a8: $03
    rst $20                                       ; $50a9: $e7
    inc e                                         ; $50aa: $1c
    inc bc                                        ; $50ab: $03
    push af                                       ; $50ac: $f5
    inc e                                         ; $50ad: $1c
    inc bc                                        ; $50ae: $03
    cp $1c                                        ; $50af: $fe $1c
    inc bc                                        ; $50b1: $03
    add hl, bc                                    ; $50b2: $09
    dec e                                         ; $50b3: $1d
    inc bc                                        ; $50b4: $03
    ld d, $1d                                     ; $50b5: $16 $1d
    inc bc                                        ; $50b7: $03
    inc h                                         ; $50b8: $24
    dec e                                         ; $50b9: $1d
    inc bc                                        ; $50ba: $03
    ld l, $1d                                     ; $50bb: $2e $1d
    inc bc                                        ; $50bd: $03
    jr c, jr_065_50dd                             ; $50be: $38 $1d

    inc bc                                        ; $50c0: $03
    ld b, d                                       ; $50c1: $42
    dec e                                         ; $50c2: $1d
    inc bc                                        ; $50c3: $03
    ld c, e                                       ; $50c4: $4b
    dec e                                         ; $50c5: $1d
    inc bc                                        ; $50c6: $03
    ld d, l                                       ; $50c7: $55
    dec e                                         ; $50c8: $1d
    inc bc                                        ; $50c9: $03
    ld h, b                                       ; $50ca: $60
    dec e                                         ; $50cb: $1d
    inc bc                                        ; $50cc: $03
    ld l, d                                       ; $50cd: $6a
    dec e                                         ; $50ce: $1d
    inc bc                                        ; $50cf: $03
    halt                                          ; $50d0: $76
    dec e                                         ; $50d1: $1d
    inc bc                                        ; $50d2: $03
    add c                                         ; $50d3: $81
    dec e                                         ; $50d4: $1d
    inc bc                                        ; $50d5: $03
    adc e                                         ; $50d6: $8b
    dec e                                         ; $50d7: $1d
    inc bc                                        ; $50d8: $03
    sbc l                                         ; $50d9: $9d
    dec e                                         ; $50da: $1d
    inc bc                                        ; $50db: $03
    and [hl]                                      ; $50dc: $a6

jr_065_50dd:
    dec e                                         ; $50dd: $1d
    inc bc                                        ; $50de: $03
    or c                                          ; $50df: $b1
    dec e                                         ; $50e0: $1d
    inc bc                                        ; $50e1: $03
    jp $031d                                      ; $50e2: $c3 $1d $03


    rst $10                                       ; $50e5: $d7
    dec e                                         ; $50e6: $1d
    inc bc                                        ; $50e7: $03
    ld [c], a                                     ; $50e8: $e2
    dec e                                         ; $50e9: $1d
    inc bc                                        ; $50ea: $03
    ld [$031d], a                                 ; $50eb: $ea $1d $03
    pop af                                        ; $50ee: $f1
    dec e                                         ; $50ef: $1d
    inc bc                                        ; $50f0: $03
    cp $1d                                        ; $50f1: $fe $1d
    inc bc                                        ; $50f3: $03
    rrca                                          ; $50f4: $0f
    ld e, $03                                     ; $50f5: $1e $03
    ld a, [de]                                    ; $50f7: $1a
    ld e, $03                                     ; $50f8: $1e $03
    dec h                                         ; $50fa: $25
    ld e, $03                                     ; $50fb: $1e $03
    ld sp, $031e                                  ; $50fd: $31 $1e $03
    ld b, c                                       ; $5100: $41
    ld e, $03                                     ; $5101: $1e $03
    ld d, d                                       ; $5103: $52
    ld e, $03                                     ; $5104: $1e $03
    ld h, c                                       ; $5106: $61
    ld e, $03                                     ; $5107: $1e $03
    ld l, l                                       ; $5109: $6d
    ld e, $03                                     ; $510a: $1e $03
    ld a, d                                       ; $510c: $7a
    ld e, $03                                     ; $510d: $1e $03
    add [hl]                                      ; $510f: $86
    ld e, $03                                     ; $5110: $1e $03
    sub [hl]                                      ; $5112: $96
    ld e, $03                                     ; $5113: $1e $03
    and e                                         ; $5115: $a3
    ld e, $03                                     ; $5116: $1e $03
    xor [hl]                                      ; $5118: $ae
    ld e, $03                                     ; $5119: $1e $03
    cp d                                          ; $511b: $ba
    ld e, $03                                     ; $511c: $1e $03
    jp nz, Jump_000_031e                          ; $511e: $c2 $1e $03

    rst $00                                       ; $5121: $c7
    ld e, $03                                     ; $5122: $1e $03
    call nc, Call_000_031e                        ; $5124: $d4 $1e $03
    rst $18                                       ; $5127: $df
    ld e, $03                                     ; $5128: $1e $03
    jp hl                                         ; $512a: $e9


    ld e, $03                                     ; $512b: $1e $03
    ld a, [c]                                     ; $512d: $f2
    ld e, $03                                     ; $512e: $1e $03
    db $fc                                        ; $5130: $fc
    ld e, $03                                     ; $5131: $1e $03
    ld [$031f], sp                                ; $5133: $08 $1f $03
    inc d                                         ; $5136: $14
    rra                                           ; $5137: $1f
    inc bc                                        ; $5138: $03
    inc e                                         ; $5139: $1c
    rra                                           ; $513a: $1f
    inc bc                                        ; $513b: $03
    dec h                                         ; $513c: $25
    rra                                           ; $513d: $1f
    inc bc                                        ; $513e: $03
    inc l                                         ; $513f: $2c
    rra                                           ; $5140: $1f
    inc bc                                        ; $5141: $03
    ld [hl-], a                                   ; $5142: $32
    rra                                           ; $5143: $1f
    inc bc                                        ; $5144: $03
    ccf                                           ; $5145: $3f
    rra                                           ; $5146: $1f
    inc bc                                        ; $5147: $03
    ld c, d                                       ; $5148: $4a
    rra                                           ; $5149: $1f
    inc bc                                        ; $514a: $03
    ld e, h                                       ; $514b: $5c
    rra                                           ; $514c: $1f
    inc bc                                        ; $514d: $03
    ld h, l                                       ; $514e: $65
    rra                                           ; $514f: $1f
    inc bc                                        ; $5150: $03
    ld [hl], e                                    ; $5151: $73
    rra                                           ; $5152: $1f
    inc bc                                        ; $5153: $03
    ld a, a                                       ; $5154: $7f
    rra                                           ; $5155: $1f
    inc bc                                        ; $5156: $03
    adc c                                         ; $5157: $89
    rra                                           ; $5158: $1f
    inc bc                                        ; $5159: $03
    sub d                                         ; $515a: $92
    rra                                           ; $515b: $1f

Call_065_515c:
    inc bc                                        ; $515c: $03
    and h                                         ; $515d: $a4
    rra                                           ; $515e: $1f
    inc bc                                        ; $515f: $03
    xor e                                         ; $5160: $ab
    rra                                           ; $5161: $1f
    inc bc                                        ; $5162: $03
    or d                                          ; $5163: $b2
    rra                                           ; $5164: $1f
    inc bc                                        ; $5165: $03
    call nz, $031f                                ; $5166: $c4 $1f $03
    ret nc                                        ; $5169: $d0

    rra                                           ; $516a: $1f
    inc bc                                        ; $516b: $03
    push hl                                       ; $516c: $e5
    rra                                           ; $516d: $1f
    inc bc                                        ; $516e: $03
    ld a, [c]                                     ; $516f: $f2
    rra                                           ; $5170: $1f
    inc bc                                        ; $5171: $03
    cp $1f                                        ; $5172: $fe $1f
    inc bc                                        ; $5174: $03
    ld de, $0320                                  ; $5175: $11 $20 $03
    dec e                                         ; $5178: $1d
    jr nz, jr_065_517e                            ; $5179: $20 $03

    inc l                                         ; $517b: $2c
    jr nz, jr_065_5181                            ; $517c: $20 $03

jr_065_517e:
    dec [hl]                                      ; $517e: $35
    jr nz, jr_065_5184                            ; $517f: $20 $03

jr_065_5181:
    jr c, jr_065_51a3                             ; $5181: $38 $20

    inc bc                                        ; $5183: $03

jr_065_5184:
    dec a                                         ; $5184: $3d
    jr nz, jr_065_518a                            ; $5185: $20 $03

    ld b, l                                       ; $5187: $45
    jr nz, jr_065_518d                            ; $5188: $20 $03

jr_065_518a:
    ld d, b                                       ; $518a: $50
    jr nz, jr_065_5190                            ; $518b: $20 $03

jr_065_518d:
    ld e, h                                       ; $518d: $5c
    jr nz, jr_065_5193                            ; $518e: $20 $03

jr_065_5190:
    ld h, [hl]                                    ; $5190: $66
    jr nz, jr_065_5196                            ; $5191: $20 $03

jr_065_5193:
    ld [hl], b                                    ; $5193: $70
    jr nz, jr_065_5199                            ; $5194: $20 $03

jr_065_5196:
    ld a, e                                       ; $5196: $7b
    jr nz, jr_065_519c                            ; $5197: $20 $03

jr_065_5199:
    adc b                                         ; $5199: $88
    jr nz, jr_065_519f                            ; $519a: $20 $03

jr_065_519c:
    sub h                                         ; $519c: $94
    jr nz, jr_065_51a2                            ; $519d: $20 $03

jr_065_519f:
    sbc [hl]                                      ; $519f: $9e
    jr nz, jr_065_51a5                            ; $51a0: $20 $03

jr_065_51a2:
    or b                                          ; $51a2: $b0

jr_065_51a3:
    jr nz, jr_065_51a8                            ; $51a3: $20 $03

jr_065_51a5:
    cp e                                          ; $51a5: $bb
    jr nz, jr_065_51ab                            ; $51a6: $20 $03

jr_065_51a8:
    jp nz, Jump_000_0320                          ; $51a8: $c2 $20 $03

jr_065_51ab:
    push de                                       ; $51ab: $d5
    jr nz, jr_065_51b1                            ; $51ac: $20 $03

    jp c, Jump_000_0320                           ; $51ae: $da $20 $03

jr_065_51b1:
    ld [c], a                                     ; $51b1: $e2
    jr nz, jr_065_51b7                            ; $51b2: $20 $03

    rst $20                                       ; $51b4: $e7
    jr nz, jr_065_51ba                            ; $51b5: $20 $03

jr_065_51b7:
    ld a, [c]                                     ; $51b7: $f2
    jr nz, @+$05                                  ; $51b8: $20 $03

jr_065_51ba:
    ld [bc], a                                    ; $51ba: $02
    ld hl, $1003                                  ; $51bb: $21 $03 $10
    ld hl, $1a03                                  ; $51be: $21 $03 $1a
    ld hl, $3103                                  ; $51c1: $21 $03 $31
    ld hl, $3f03                                  ; $51c4: $21 $03 $3f
    ld hl, $4403                                  ; $51c7: $21 $03 $44
    ld hl, $5003                                  ; $51ca: $21 $03 $50
    ld hl, $5e03                                  ; $51cd: $21 $03 $5e
    ld hl, $7403                                  ; $51d0: $21 $03 $74
    ld hl, $9103                                  ; $51d3: $21 $03 $91
    ld hl, $aa03                                  ; $51d6: $21 $03 $aa
    ld hl, $c603                                  ; $51d9: $21 $03 $c6
    ld hl, $e603                                  ; $51dc: $21 $03 $e6
    ld hl, $0903                                  ; $51df: $21 $03 $09
    ld [hl+], a                                   ; $51e2: $22
    inc bc                                        ; $51e3: $03
    jr nz, jr_065_5208                            ; $51e4: $20 $22

    inc bc                                        ; $51e6: $03
    scf                                           ; $51e7: $37
    ld [hl+], a                                   ; $51e8: $22
    inc bc                                        ; $51e9: $03
    ld c, [hl]                                    ; $51ea: $4e
    ld [hl+], a                                   ; $51eb: $22
    inc bc                                        ; $51ec: $03
    ld d, d                                       ; $51ed: $52
    ld [hl+], a                                   ; $51ee: $22
    inc bc                                        ; $51ef: $03
    ld d, [hl]                                    ; $51f0: $56
    ld [hl+], a                                   ; $51f1: $22
    inc bc                                        ; $51f2: $03
    ld e, [hl]                                    ; $51f3: $5e
    ld [hl+], a                                   ; $51f4: $22
    inc bc                                        ; $51f5: $03
    ld h, c                                       ; $51f6: $61
    ld [hl+], a                                   ; $51f7: $22
    inc bc                                        ; $51f8: $03
    ld h, a                                       ; $51f9: $67
    ld [hl+], a                                   ; $51fa: $22
    inc bc                                        ; $51fb: $03
    ld l, h                                       ; $51fc: $6c
    ld [hl+], a                                   ; $51fd: $22
    inc bc                                        ; $51fe: $03
    ld [hl], b                                    ; $51ff: $70
    ld [hl+], a                                   ; $5200: $22
    inc bc                                        ; $5201: $03
    ld a, l                                       ; $5202: $7d
    ld [hl+], a                                   ; $5203: $22
    inc bc                                        ; $5204: $03
    sub h                                         ; $5205: $94
    ld [hl+], a                                   ; $5206: $22
    inc bc                                        ; $5207: $03

jr_065_5208:
    xor a                                         ; $5208: $af
    ld [hl+], a                                   ; $5209: $22
    inc bc                                        ; $520a: $03
    cp d                                          ; $520b: $ba
    ld [hl+], a                                   ; $520c: $22
    inc bc                                        ; $520d: $03
    call nc, $0322                                ; $520e: $d4 $22 $03
    and $22                                       ; $5211: $e6 $22
    inc bc                                        ; $5213: $03
    rst $38                                       ; $5214: $ff
    ld [hl+], a                                   ; $5215: $22
    inc bc                                        ; $5216: $03
    dec e                                         ; $5217: $1d
    inc hl                                        ; $5218: $23
    inc bc                                        ; $5219: $03
    ld a, [hl+]                                   ; $521a: $2a
    inc hl                                        ; $521b: $23
    inc bc                                        ; $521c: $03
    ld b, c                                       ; $521d: $41
    inc hl                                        ; $521e: $23
    inc bc                                        ; $521f: $03
    ld d, b                                       ; $5220: $50
    inc hl                                        ; $5221: $23
    inc bc                                        ; $5222: $03
    ld h, [hl]                                    ; $5223: $66
    inc hl                                        ; $5224: $23
    inc bc                                        ; $5225: $03
    ld [hl], e                                    ; $5226: $73
    inc hl                                        ; $5227: $23
    inc bc                                        ; $5228: $03
    adc c                                         ; $5229: $89
    inc hl                                        ; $522a: $23
    inc bc                                        ; $522b: $03
    and d                                         ; $522c: $a2
    inc hl                                        ; $522d: $23
    inc bc                                        ; $522e: $03
    ret nz                                        ; $522f: $c0

    inc hl                                        ; $5230: $23
    inc bc                                        ; $5231: $03
    rst $08                                       ; $5232: $cf
    inc hl                                        ; $5233: $23
    inc bc                                        ; $5234: $03
    ld [c], a                                     ; $5235: $e2
    inc hl                                        ; $5236: $23
    inc bc                                        ; $5237: $03
    ld [$0323], a                                 ; $5238: $ea $23 $03
    db $fc                                        ; $523b: $fc
    inc hl                                        ; $523c: $23
    inc bc                                        ; $523d: $03
    add hl, bc                                    ; $523e: $09
    inc h                                         ; $523f: $24
    inc bc                                        ; $5240: $03
    ld [hl+], a                                   ; $5241: $22
    inc h                                         ; $5242: $24
    inc bc                                        ; $5243: $03
    ld b, e                                       ; $5244: $43
    inc h                                         ; $5245: $24
    inc bc                                        ; $5246: $03
    ld d, e                                       ; $5247: $53
    inc h                                         ; $5248: $24
    inc bc                                        ; $5249: $03
    ld l, l                                       ; $524a: $6d
    inc h                                         ; $524b: $24
    inc bc                                        ; $524c: $03
    add [hl]                                      ; $524d: $86
    inc h                                         ; $524e: $24
    inc bc                                        ; $524f: $03
    sub c                                         ; $5250: $91
    inc h                                         ; $5251: $24
    inc bc                                        ; $5252: $03
    and l                                         ; $5253: $a5
    inc h                                         ; $5254: $24
    inc bc                                        ; $5255: $03
    xor a                                         ; $5256: $af
    inc h                                         ; $5257: $24
    inc bc                                        ; $5258: $03
    ret c                                         ; $5259: $d8

    inc h                                         ; $525a: $24
    inc bc                                        ; $525b: $03
    ld [c], a                                     ; $525c: $e2
    inc h                                         ; $525d: $24
    inc bc                                        ; $525e: $03
    dec bc                                        ; $525f: $0b
    dec h                                         ; $5260: $25
    inc bc                                        ; $5261: $03
    ld l, $25                                     ; $5262: $2e $25
    inc bc                                        ; $5264: $03
    ld d, c                                       ; $5265: $51
    dec h                                         ; $5266: $25

Jump_065_5267:
    inc bc                                        ; $5267: $03
    ld l, h                                       ; $5268: $6c
    dec h                                         ; $5269: $25
    inc bc                                        ; $526a: $03
    add e                                         ; $526b: $83
    dec h                                         ; $526c: $25
    inc bc                                        ; $526d: $03
    sub b                                         ; $526e: $90
    dec h                                         ; $526f: $25
    inc bc                                        ; $5270: $03
    and h                                         ; $5271: $a4
    dec h                                         ; $5272: $25
    inc bc                                        ; $5273: $03
    xor h                                         ; $5274: $ac
    dec h                                         ; $5275: $25
    inc bc                                        ; $5276: $03
    ret                                           ; $5277: $c9


    dec h                                         ; $5278: $25
    inc bc                                        ; $5279: $03
    call nc, Call_000_0325                        ; $527a: $d4 $25 $03
    ld [$0325], a                                 ; $527d: $ea $25 $03
    nop                                           ; $5280: $00
    ld h, $03                                     ; $5281: $26 $03
    inc de                                        ; $5283: $13
    ld h, $03                                     ; $5284: $26 $03
    inc sp                                        ; $5286: $33
    ld h, $03                                     ; $5287: $26 $03
    ld c, b                                       ; $5289: $48
    ld h, $03                                     ; $528a: $26 $03
    ld e, [hl]                                    ; $528c: $5e
    ld h, $03                                     ; $528d: $26 $03
    ld l, e                                       ; $528f: $6b
    ld h, $03                                     ; $5290: $26 $03
    ld a, h                                       ; $5292: $7c
    ld h, $03                                     ; $5293: $26 $03
    sub a                                         ; $5295: $97
    ld h, $03                                     ; $5296: $26 $03
    and l                                         ; $5298: $a5
    ld h, $03                                     ; $5299: $26 $03
    pop bc                                        ; $529b: $c1
    ld h, $03                                     ; $529c: $26 $03
    adc $26                                       ; $529e: $ce $26
    inc bc                                        ; $52a0: $03
    reti                                          ; $52a1: $d9


    ld h, $03                                     ; $52a2: $26 $03
    ld hl, sp+$26                                 ; $52a4: $f8 $26
    inc bc                                        ; $52a6: $03
    jr jr_065_52d0                                ; $52a7: $18 $27

    inc bc                                        ; $52a9: $03
    jr z, jr_065_52d3                             ; $52aa: $28 $27

    inc bc                                        ; $52ac: $03
    ld b, b                                       ; $52ad: $40
    daa                                           ; $52ae: $27
    inc bc                                        ; $52af: $03
    ld c, l                                       ; $52b0: $4d
    daa                                           ; $52b1: $27
    inc bc                                        ; $52b2: $03
    ld h, h                                       ; $52b3: $64
    daa                                           ; $52b4: $27
    inc bc                                        ; $52b5: $03
    ld a, b                                       ; $52b6: $78
    daa                                           ; $52b7: $27
    inc bc                                        ; $52b8: $03
    sub a                                         ; $52b9: $97
    daa                                           ; $52ba: $27
    inc bc                                        ; $52bb: $03
    and e                                         ; $52bc: $a3
    daa                                           ; $52bd: $27
    inc bc                                        ; $52be: $03
    xor l                                         ; $52bf: $ad
    daa                                           ; $52c0: $27
    inc bc                                        ; $52c1: $03
    call Call_000_0327                            ; $52c2: $cd $27 $03
    db $e3                                        ; $52c5: $e3
    daa                                           ; $52c6: $27
    inc bc                                        ; $52c7: $03
    di                                            ; $52c8: $f3
    daa                                           ; $52c9: $27
    inc bc                                        ; $52ca: $03
    dec bc                                        ; $52cb: $0b
    jr z, jr_065_52d1                             ; $52cc: $28 $03

    jr jr_065_52f8                                ; $52ce: $18 $28

jr_065_52d0:
    inc bc                                        ; $52d0: $03

jr_065_52d1:
    ld [hl], $28                                  ; $52d1: $36 $28

jr_065_52d3:
    inc bc                                        ; $52d3: $03
    ld [hl], l                                    ; $52d4: $75
    jr z, jr_065_52da                             ; $52d5: $28 $03

    and e                                         ; $52d7: $a3
    jr z, jr_065_52dd                             ; $52d8: $28 $03

jr_065_52da:
    pop de                                        ; $52da: $d1
    jr z, jr_065_52e0                             ; $52db: $28 $03

jr_065_52dd:
    dec d                                         ; $52dd: $15
    add hl, hl                                    ; $52de: $29
    inc bc                                        ; $52df: $03

jr_065_52e0:
    ld [hl], $29                                  ; $52e0: $36 $29
    inc bc                                        ; $52e2: $03
    ld h, c                                       ; $52e3: $61
    add hl, hl                                    ; $52e4: $29
    inc bc                                        ; $52e5: $03
    and c                                         ; $52e6: $a1
    add hl, hl                                    ; $52e7: $29
    inc bc                                        ; $52e8: $03
    db $f4                                        ; $52e9: $f4
    add hl, hl                                    ; $52ea: $29
    inc bc                                        ; $52eb: $03
    ld hl, $032a                                  ; $52ec: $21 $2a $03
    ld d, [hl]                                    ; $52ef: $56
    ld a, [hl+]                                   ; $52f0: $2a
    inc bc                                        ; $52f1: $03
    xor a                                         ; $52f2: $af
    ld a, [hl+]                                   ; $52f3: $2a
    inc bc                                        ; $52f4: $03
    db $d3                                        ; $52f5: $d3
    ld a, [hl+]                                   ; $52f6: $2a
    inc bc                                        ; $52f7: $03

jr_065_52f8:
    ld c, $2b                                     ; $52f8: $0e $2b
    inc bc                                        ; $52fa: $03
    ld c, l                                       ; $52fb: $4d
    dec hl                                        ; $52fc: $2b
    inc bc                                        ; $52fd: $03
    adc d                                         ; $52fe: $8a
    dec hl                                        ; $52ff: $2b
    inc bc                                        ; $5300: $03
    rst $10                                       ; $5301: $d7
    dec hl                                        ; $5302: $2b
    inc bc                                        ; $5303: $03
    pop hl                                        ; $5304: $e1
    dec hl                                        ; $5305: $2b
    inc bc                                        ; $5306: $03
    add sp, $2b                                   ; $5307: $e8 $2b
    inc bc                                        ; $5309: $03
    push af                                       ; $530a: $f5
    dec hl                                        ; $530b: $2b
    inc bc                                        ; $530c: $03
    ld [bc], a                                    ; $530d: $02
    inc l                                         ; $530e: $2c
    inc bc                                        ; $530f: $03
    rrca                                          ; $5310: $0f
    inc l                                         ; $5311: $2c
    inc bc                                        ; $5312: $03
    dec de                                        ; $5313: $1b
    inc l                                         ; $5314: $2c
    inc bc                                        ; $5315: $03
    add hl, hl                                    ; $5316: $29
    inc l                                         ; $5317: $2c
    inc bc                                        ; $5318: $03
    jr c, jr_065_5347                             ; $5319: $38 $2c

    inc bc                                        ; $531b: $03
    ld b, l                                       ; $531c: $45
    inc l                                         ; $531d: $2c
    inc bc                                        ; $531e: $03
    ld d, d                                       ; $531f: $52
    inc l                                         ; $5320: $2c
    inc bc                                        ; $5321: $03
    ld e, h                                       ; $5322: $5c
    inc l                                         ; $5323: $2c
    inc bc                                        ; $5324: $03
    ld h, [hl]                                    ; $5325: $66
    inc l                                         ; $5326: $2c
    inc bc                                        ; $5327: $03
    ld [hl], c                                    ; $5328: $71
    inc l                                         ; $5329: $2c
    inc bc                                        ; $532a: $03
    ld a, h                                       ; $532b: $7c
    inc l                                         ; $532c: $2c
    inc bc                                        ; $532d: $03
    adc b                                         ; $532e: $88
    inc l                                         ; $532f: $2c
    inc bc                                        ; $5330: $03
    sub h                                         ; $5331: $94
    inc l                                         ; $5332: $2c
    inc bc                                        ; $5333: $03
    sbc a                                         ; $5334: $9f
    inc l                                         ; $5335: $2c
    inc bc                                        ; $5336: $03
    and [hl]                                      ; $5337: $a6
    inc l                                         ; $5338: $2c
    inc bc                                        ; $5339: $03
    or e                                          ; $533a: $b3
    inc l                                         ; $533b: $2c
    inc bc                                        ; $533c: $03
    ret nz                                        ; $533d: $c0

    inc l                                         ; $533e: $2c
    inc bc                                        ; $533f: $03
    jp z, $032c                                   ; $5340: $ca $2c $03

    call nc, $032c                                ; $5343: $d4 $2c $03
    db $e3                                        ; $5346: $e3

jr_065_5347:
    inc l                                         ; $5347: $2c
    inc bc                                        ; $5348: $03
    xor $2c                                       ; $5349: $ee $2c
    inc bc                                        ; $534b: $03
    ld a, [$032c]                                 ; $534c: $fa $2c $03
    dec b                                         ; $534f: $05
    dec l                                         ; $5350: $2d
    inc bc                                        ; $5351: $03
    rrca                                          ; $5352: $0f
    dec l                                         ; $5353: $2d
    inc bc                                        ; $5354: $03
    dec de                                        ; $5355: $1b
    dec l                                         ; $5356: $2d
    inc bc                                        ; $5357: $03
    daa                                           ; $5358: $27
    dec l                                         ; $5359: $2d
    inc bc                                        ; $535a: $03
    inc sp                                        ; $535b: $33
    dec l                                         ; $535c: $2d
    inc bc                                        ; $535d: $03
    inc a                                         ; $535e: $3c
    dec l                                         ; $535f: $2d
    inc bc                                        ; $5360: $03
    ld c, b                                       ; $5361: $48
    dec l                                         ; $5362: $2d
    inc bc                                        ; $5363: $03
    ld d, e                                       ; $5364: $53
    dec l                                         ; $5365: $2d
    inc bc                                        ; $5366: $03
    ld h, b                                       ; $5367: $60
    dec l                                         ; $5368: $2d
    inc bc                                        ; $5369: $03
    ld l, e                                       ; $536a: $6b
    dec l                                         ; $536b: $2d
    inc bc                                        ; $536c: $03
    ld a, c                                       ; $536d: $79
    dec l                                         ; $536e: $2d
    inc bc                                        ; $536f: $03
    add e                                         ; $5370: $83
    dec l                                         ; $5371: $2d
    inc bc                                        ; $5372: $03
    adc [hl]                                      ; $5373: $8e
    dec l                                         ; $5374: $2d
    inc bc                                        ; $5375: $03
    sbc d                                         ; $5376: $9a
    dec l                                         ; $5377: $2d
    inc bc                                        ; $5378: $03
    and [hl]                                      ; $5379: $a6
    dec l                                         ; $537a: $2d
    inc bc                                        ; $537b: $03
    or b                                          ; $537c: $b0
    dec l                                         ; $537d: $2d
    inc bc                                        ; $537e: $03
    cp h                                          ; $537f: $bc
    dec l                                         ; $5380: $2d
    inc bc                                        ; $5381: $03
    ret                                           ; $5382: $c9


    dec l                                         ; $5383: $2d
    inc bc                                        ; $5384: $03
    call nc, $032d                                ; $5385: $d4 $2d $03
    ld [c], a                                     ; $5388: $e2
    dec l                                         ; $5389: $2d
    inc bc                                        ; $538a: $03
    rst $20                                       ; $538b: $e7
    dec l                                         ; $538c: $2d
    inc bc                                        ; $538d: $03
    ld a, [c]                                     ; $538e: $f2
    dec l                                         ; $538f: $2d
    inc bc                                        ; $5390: $03
    cp $2d                                        ; $5391: $fe $2d
    inc bc                                        ; $5393: $03
    inc bc                                        ; $5394: $03
    ld l, $03                                     ; $5395: $2e $03
    dec c                                         ; $5397: $0d
    ld l, $03                                     ; $5398: $2e $03
    ld d, $2e                                     ; $539a: $16 $2e
    inc bc                                        ; $539c: $03
    ld [hl+], a                                   ; $539d: $22
    ld l, $03                                     ; $539e: $2e $03
    jr nc, jr_065_53d0                            ; $53a0: $30 $2e

    inc bc                                        ; $53a2: $03
    inc a                                         ; $53a3: $3c
    ld l, $03                                     ; $53a4: $2e $03
    ld c, c                                       ; $53a6: $49
    ld l, $03                                     ; $53a7: $2e $03
    ld d, a                                       ; $53a9: $57
    ld l, $03                                     ; $53aa: $2e $03
    ld h, c                                       ; $53ac: $61
    ld l, $03                                     ; $53ad: $2e $03
    ld l, [hl]                                    ; $53af: $6e
    ld l, $03                                     ; $53b0: $2e $03
    ld a, h                                       ; $53b2: $7c
    ld l, $03                                     ; $53b3: $2e $03
    add d                                         ; $53b5: $82
    ld l, $03                                     ; $53b6: $2e $03
    sub c                                         ; $53b8: $91
    ld l, $03                                     ; $53b9: $2e $03
    sbc [hl]                                      ; $53bb: $9e
    ld l, $03                                     ; $53bc: $2e $03
    xor b                                         ; $53be: $a8
    ld l, $03                                     ; $53bf: $2e $03
    or h                                          ; $53c1: $b4
    ld l, $03                                     ; $53c2: $2e $03
    ret nz                                        ; $53c4: $c0

    ld l, $03                                     ; $53c5: $2e $03
    call Call_000_032e                            ; $53c7: $cd $2e $03
    reti                                          ; $53ca: $d9


    ld l, $03                                     ; $53cb: $2e $03
    and $2e                                       ; $53cd: $e6 $2e
    inc bc                                        ; $53cf: $03

jr_065_53d0:
    xor $2e                                       ; $53d0: $ee $2e
    inc bc                                        ; $53d2: $03
    ei                                            ; $53d3: $fb
    ld l, $03                                     ; $53d4: $2e $03
    rlca                                          ; $53d6: $07
    cpl                                           ; $53d7: $2f
    inc bc                                        ; $53d8: $03
    dec d                                         ; $53d9: $15
    cpl                                           ; $53da: $2f
    inc bc                                        ; $53db: $03
    ld hl, $032f                                  ; $53dc: $21 $2f $03
    dec l                                         ; $53df: $2d
    cpl                                           ; $53e0: $2f
    inc bc                                        ; $53e1: $03
    add hl, sp                                    ; $53e2: $39
    cpl                                           ; $53e3: $2f
    inc bc                                        ; $53e4: $03
    ld b, [hl]                                    ; $53e5: $46
    cpl                                           ; $53e6: $2f
    inc bc                                        ; $53e7: $03
    ld c, a                                       ; $53e8: $4f
    cpl                                           ; $53e9: $2f
    inc bc                                        ; $53ea: $03
    ld e, h                                       ; $53eb: $5c
    cpl                                           ; $53ec: $2f
    inc bc                                        ; $53ed: $03
    ld h, [hl]                                    ; $53ee: $66
    cpl                                           ; $53ef: $2f
    inc bc                                        ; $53f0: $03
    ld [hl], b                                    ; $53f1: $70
    cpl                                           ; $53f2: $2f
    inc bc                                        ; $53f3: $03
    ld a, e                                       ; $53f4: $7b
    cpl                                           ; $53f5: $2f
    inc bc                                        ; $53f6: $03
    add a                                         ; $53f7: $87
    cpl                                           ; $53f8: $2f
    inc bc                                        ; $53f9: $03
    sub e                                         ; $53fa: $93
    cpl                                           ; $53fb: $2f
    inc bc                                        ; $53fc: $03
    sbc h                                         ; $53fd: $9c
    cpl                                           ; $53fe: $2f
    inc bc                                        ; $53ff: $03
    and a                                         ; $5400: $a7
    cpl                                           ; $5401: $2f
    inc bc                                        ; $5402: $03
    or h                                          ; $5403: $b4
    cpl                                           ; $5404: $2f
    inc bc                                        ; $5405: $03

Jump_065_5406:
    cp [hl]                                       ; $5406: $be
    cpl                                           ; $5407: $2f
    inc bc                                        ; $5408: $03
    ret                                           ; $5409: $c9


    cpl                                           ; $540a: $2f
    inc bc                                        ; $540b: $03
    push de                                       ; $540c: $d5
    cpl                                           ; $540d: $2f
    inc bc                                        ; $540e: $03
    ld [c], a                                     ; $540f: $e2
    cpl                                           ; $5410: $2f
    inc bc                                        ; $5411: $03
    ld a, [c]                                     ; $5412: $f2
    cpl                                           ; $5413: $2f
    inc bc                                        ; $5414: $03
    rst $38                                       ; $5415: $ff
    cpl                                           ; $5416: $2f
    inc bc                                        ; $5417: $03
    ld [$0330], sp                                ; $5418: $08 $30 $03
    ld [de], a                                    ; $541b: $12
    jr nc, jr_065_5421                            ; $541c: $30 $03

    ld hl, $0330                                  ; $541e: $21 $30 $03

jr_065_5421:
    dec [hl]                                      ; $5421: $35
    jr nc, jr_065_5427                            ; $5422: $30 $03

    ld b, h                                       ; $5424: $44
    jr nc, jr_065_542a                            ; $5425: $30 $03

jr_065_5427:
    ld c, c                                       ; $5427: $49
    jr nc, jr_065_542d                            ; $5428: $30 $03

jr_065_542a:
    ld d, [hl]                                    ; $542a: $56
    jr nc, jr_065_5430                            ; $542b: $30 $03

jr_065_542d:
    ld e, [hl]                                    ; $542d: $5e
    jr nc, jr_065_5433                            ; $542e: $30 $03

jr_065_5430:
    ld l, e                                       ; $5430: $6b
    jr nc, jr_065_5436                            ; $5431: $30 $03

jr_065_5433:
    ld [hl], h                                    ; $5433: $74
    jr nc, jr_065_5439                            ; $5434: $30 $03

jr_065_5436:
    halt                                          ; $5436: $76
    jr nc, jr_065_543c                            ; $5437: $30 $03

jr_065_5439:
    add c                                         ; $5439: $81
    jr nc, jr_065_543f                            ; $543a: $30 $03

jr_065_543c:
    and [hl]                                      ; $543c: $a6
    jr nc, jr_065_5442                            ; $543d: $30 $03

jr_065_543f:
    ret nz                                        ; $543f: $c0

    jr nc, jr_065_5445                            ; $5440: $30 $03

jr_065_5442:
    rst $30                                       ; $5442: $f7
    jr nc, @+$05                                  ; $5443: $30 $03

jr_065_5445:
    daa                                           ; $5445: $27
    ld sp, $4503                                  ; $5446: $31 $03 $45
    ld sp, $6b03                                  ; $5449: $31 $03 $6b
    ld sp, $8803                                  ; $544c: $31 $03 $88
    ld sp, $a003                                  ; $544f: $31 $03 $a0
    ld sp, $b903                                  ; $5452: $31 $03 $b9
    ld sp, $e603                                  ; $5455: $31 $03 $e6
    ld sp, $0803                                  ; $5458: $31 $03 $08
    ld [hl-], a                                   ; $545b: $32
    inc bc                                        ; $545c: $03
    ld a, [hl+]                                   ; $545d: $2a
    ld [hl-], a                                   ; $545e: $32
    inc bc                                        ; $545f: $03
    ld c, c                                       ; $5460: $49
    ld [hl-], a                                   ; $5461: $32
    inc bc                                        ; $5462: $03
    ld h, a                                       ; $5463: $67
    ld [hl-], a                                   ; $5464: $32
    inc bc                                        ; $5465: $03
    add a                                         ; $5466: $87
    ld [hl-], a                                   ; $5467: $32
    inc bc                                        ; $5468: $03
    or h                                          ; $5469: $b4
    ld [hl-], a                                   ; $546a: $32
    inc bc                                        ; $546b: $03
    call nc, $0332                                ; $546c: $d4 $32 $03
    rlca                                          ; $546f: $07
    inc sp                                        ; $5470: $33
    inc bc                                        ; $5471: $03
    inc hl                                        ; $5472: $23
    inc sp                                        ; $5473: $33
    inc bc                                        ; $5474: $03
    ld d, e                                       ; $5475: $53
    inc sp                                        ; $5476: $33
    inc bc                                        ; $5477: $03
    ld a, h                                       ; $5478: $7c
    inc sp                                        ; $5479: $33
    inc bc                                        ; $547a: $03
    sbc a                                         ; $547b: $9f
    inc sp                                        ; $547c: $33
    inc bc                                        ; $547d: $03
    call $0333                                    ; $547e: $cd $33 $03
    rlca                                          ; $5481: $07
    inc [hl]                                      ; $5482: $34
    inc bc                                        ; $5483: $03
    inc sp                                        ; $5484: $33
    inc [hl]                                      ; $5485: $34
    inc bc                                        ; $5486: $03
    ld h, h                                       ; $5487: $64
    inc [hl]                                      ; $5488: $34
    inc bc                                        ; $5489: $03
    ld [hl], a                                    ; $548a: $77
    inc [hl]                                      ; $548b: $34
    inc bc                                        ; $548c: $03
    or b                                          ; $548d: $b0
    inc [hl]                                      ; $548e: $34
    inc bc                                        ; $548f: $03
    ld [c], a                                     ; $5490: $e2
    inc [hl]                                      ; $5491: $34
    inc bc                                        ; $5492: $03
    dec c                                         ; $5493: $0d
    dec [hl]                                      ; $5494: $35
    inc bc                                        ; $5495: $03
    add hl, sp                                    ; $5496: $39
    dec [hl]                                      ; $5497: $35
    inc bc                                        ; $5498: $03
    ld [hl], d                                    ; $5499: $72
    dec [hl]                                      ; $549a: $35
    inc bc                                        ; $549b: $03
    add l                                         ; $549c: $85
    dec [hl]                                      ; $549d: $35
    inc bc                                        ; $549e: $03
    cp d                                          ; $549f: $ba
    dec [hl]                                      ; $54a0: $35
    inc bc                                        ; $54a1: $03
    db $e3                                        ; $54a2: $e3
    dec [hl]                                      ; $54a3: $35
    inc bc                                        ; $54a4: $03
    add hl, bc                                    ; $54a5: $09
    ld [hl], $03                                  ; $54a6: $36 $03
    cpl                                           ; $54a8: $2f
    ld [hl], $03                                  ; $54a9: $36 $03
    ld b, [hl]                                    ; $54ab: $46
    ld [hl], $03                                  ; $54ac: $36 $03
    ld l, h                                       ; $54ae: $6c
    ld [hl], $03                                  ; $54af: $36 $03
    sbc [hl]                                      ; $54b1: $9e
    ld [hl], $03                                  ; $54b2: $36 $03
    add $36                                       ; $54b4: $c6 $36
    inc bc                                        ; $54b6: $03
    inc c                                         ; $54b7: $0c
    scf                                           ; $54b8: $37
    inc bc                                        ; $54b9: $03
    dec e                                         ; $54ba: $1d
    scf                                           ; $54bb: $37
    inc bc                                        ; $54bc: $03
    ld [hl], $37                                  ; $54bd: $36 $37
    inc bc                                        ; $54bf: $03
    ld e, e                                       ; $54c0: $5b
    scf                                           ; $54c1: $37
    inc bc                                        ; $54c2: $03
    add b                                         ; $54c3: $80
    scf                                           ; $54c4: $37
    inc bc                                        ; $54c5: $03
    or e                                          ; $54c6: $b3
    scf                                           ; $54c7: $37
    inc bc                                        ; $54c8: $03
    swap a                                        ; $54c9: $cb $37
    inc bc                                        ; $54cb: $03
    ld sp, hl                                     ; $54cc: $f9
    scf                                           ; $54cd: $37
    inc bc                                        ; $54ce: $03
    rra                                           ; $54cf: $1f
    jr c, jr_065_54d5                             ; $54d0: $38 $03

    ccf                                           ; $54d2: $3f
    jr c, jr_065_54d8                             ; $54d3: $38 $03

jr_065_54d5:
    ld h, l                                       ; $54d5: $65
    jr c, jr_065_54db                             ; $54d6: $38 $03

jr_065_54d8:
    sub e                                         ; $54d8: $93
    jr c, jr_065_54de                             ; $54d9: $38 $03

jr_065_54db:
    or b                                          ; $54db: $b0
    jr c, jr_065_54e1                             ; $54dc: $38 $03

jr_065_54de:
    ldh [$38], a                                  ; $54de: $e0 $38
    inc bc                                        ; $54e0: $03

jr_065_54e1:
    ld b, $39                                     ; $54e1: $06 $39
    inc bc                                        ; $54e3: $03
    rla                                           ; $54e4: $17
    add hl, sp                                    ; $54e5: $39
    inc bc                                        ; $54e6: $03
    ld b, l                                       ; $54e7: $45

Call_065_54e8:
    add hl, sp                                    ; $54e8: $39
    inc bc                                        ; $54e9: $03
    ld [hl], h                                    ; $54ea: $74
    add hl, sp                                    ; $54eb: $39
    inc bc                                        ; $54ec: $03
    and l                                         ; $54ed: $a5
    add hl, sp                                    ; $54ee: $39
    inc bc                                        ; $54ef: $03
    jp z, Jump_000_0339                           ; $54f0: $ca $39 $03

    jp hl                                         ; $54f3: $e9


    add hl, sp                                    ; $54f4: $39
    inc bc                                        ; $54f5: $03
    dec d                                         ; $54f6: $15
    ld a, [hl-]                                   ; $54f7: $3a
    inc bc                                        ; $54f8: $03
    add hl, sp                                    ; $54f9: $39
    ld a, [hl-]                                   ; $54fa: $3a
    inc bc                                        ; $54fb: $03
    ld h, l                                       ; $54fc: $65
    ld a, [hl-]                                   ; $54fd: $3a
    inc bc                                        ; $54fe: $03
    sub h                                         ; $54ff: $94
    ld a, [hl-]                                   ; $5500: $3a
    inc bc                                        ; $5501: $03
    xor [hl]                                      ; $5502: $ae
    ld a, [hl-]                                   ; $5503: $3a
    inc bc                                        ; $5504: $03
    db $dd                                        ; $5505: $dd
    ld a, [hl-]                                   ; $5506: $3a
    inc bc                                        ; $5507: $03
    nop                                           ; $5508: $00
    dec sp                                        ; $5509: $3b
    inc bc                                        ; $550a: $03
    cpl                                           ; $550b: $2f
    dec sp                                        ; $550c: $3b
    inc bc                                        ; $550d: $03
    ld h, b                                       ; $550e: $60
    dec sp                                        ; $550f: $3b
    inc bc                                        ; $5510: $03
    ld [hl], h                                    ; $5511: $74
    dec sp                                        ; $5512: $3b
    inc bc                                        ; $5513: $03
    adc [hl]                                      ; $5514: $8e
    dec sp                                        ; $5515: $3b
    inc bc                                        ; $5516: $03
    cp a                                          ; $5517: $bf
    dec sp                                        ; $5518: $3b
    inc bc                                        ; $5519: $03
    push hl                                       ; $551a: $e5
    dec sp                                        ; $551b: $3b
    inc bc                                        ; $551c: $03
    rla                                           ; $551d: $17
    inc a                                         ; $551e: $3c
    inc bc                                        ; $551f: $03
    ld b, c                                       ; $5520: $41
    inc a                                         ; $5521: $3c
    inc bc                                        ; $5522: $03
    ld h, a                                       ; $5523: $67
    inc a                                         ; $5524: $3c
    inc bc                                        ; $5525: $03
    adc [hl]                                      ; $5526: $8e
    inc a                                         ; $5527: $3c
    inc bc                                        ; $5528: $03
    or e                                          ; $5529: $b3
    inc a                                         ; $552a: $3c
    inc bc                                        ; $552b: $03
    reti                                          ; $552c: $d9


    inc a                                         ; $552d: $3c
    inc bc                                        ; $552e: $03
    db $eb                                        ; $552f: $eb
    inc a                                         ; $5530: $3c
    inc bc                                        ; $5531: $03
    dec d                                         ; $5532: $15
    dec a                                         ; $5533: $3d
    inc bc                                        ; $5534: $03
    ld a, $3d                                     ; $5535: $3e $3d
    inc bc                                        ; $5537: $03
    ld e, h                                       ; $5538: $5c
    dec a                                         ; $5539: $3d
    inc bc                                        ; $553a: $03
    sub l                                         ; $553b: $95
    dec a                                         ; $553c: $3d
    inc bc                                        ; $553d: $03
    call $033d                                    ; $553e: $cd $3d $03
    rst $28                                       ; $5541: $ef
    dec a                                         ; $5542: $3d
    inc bc                                        ; $5543: $03
    ld c, $3e                                     ; $5544: $0e $3e
    inc bc                                        ; $5546: $03
    ld [hl], $3e                                  ; $5547: $36 $3e
    inc bc                                        ; $5549: $03
    ld e, h                                       ; $554a: $5c
    ld a, $03                                     ; $554b: $3e $03
    sub h                                         ; $554d: $94
    ld a, $03                                     ; $554e: $3e $03
    cp h                                          ; $5550: $bc
    ld a, $03                                     ; $5551: $3e $03
    rst $10                                       ; $5553: $d7
    ld a, $03                                     ; $5554: $3e $03
    dec b                                         ; $5556: $05
    ccf                                           ; $5557: $3f
    inc bc                                        ; $5558: $03
    dec [hl]                                      ; $5559: $35
    ccf                                           ; $555a: $3f
    inc bc                                        ; $555b: $03
    ld c, b                                       ; $555c: $48
    ccf                                           ; $555d: $3f
    inc bc                                        ; $555e: $03
    add c                                         ; $555f: $81
    ccf                                           ; $5560: $3f
    inc bc                                        ; $5561: $03
    xor [hl]                                      ; $5562: $ae
    ccf                                           ; $5563: $3f
    inc b                                         ; $5564: $04
    ld bc, $0400                                  ; $5565: $01 $00 $04
    dec l                                         ; $5568: $2d
    nop                                           ; $5569: $00
    inc b                                         ; $556a: $04
    ld b, d                                       ; $556b: $42
    nop                                           ; $556c: $00
    inc b                                         ; $556d: $04
    ld d, e                                       ; $556e: $53
    nop                                           ; $556f: $00
    inc b                                         ; $5570: $04
    ld h, l                                       ; $5571: $65
    nop                                           ; $5572: $00
    inc b                                         ; $5573: $04
    ld l, h                                       ; $5574: $6c
    nop                                           ; $5575: $00
    inc b                                         ; $5576: $04
    ld [hl], l                                    ; $5577: $75
    nop                                           ; $5578: $00
    inc b                                         ; $5579: $04
    ld a, l                                       ; $557a: $7d
    nop                                           ; $557b: $00
    inc b                                         ; $557c: $04
    add h                                         ; $557d: $84
    nop                                           ; $557e: $00
    inc b                                         ; $557f: $04
    adc l                                         ; $5580: $8d
    nop                                           ; $5581: $00
    inc b                                         ; $5582: $04
    sub l                                         ; $5583: $95
    nop                                           ; $5584: $00
    inc b                                         ; $5585: $04
    sbc d                                         ; $5586: $9a
    nop                                           ; $5587: $00
    inc b                                         ; $5588: $04
    and c                                         ; $5589: $a1
    nop                                           ; $558a: $00
    inc b                                         ; $558b: $04
    and a                                         ; $558c: $a7
    nop                                           ; $558d: $00
    inc b                                         ; $558e: $04
    xor a                                         ; $558f: $af
    nop                                           ; $5590: $00
    inc b                                         ; $5591: $04
    cp d                                          ; $5592: $ba
    nop                                           ; $5593: $00
    inc b                                         ; $5594: $04
    cp [hl]                                       ; $5595: $be
    nop                                           ; $5596: $00
    inc b                                         ; $5597: $04
    jp Jump_000_0400                              ; $5598: $c3 $00 $04


    adc $00                                       ; $559b: $ce $00
    inc b                                         ; $559d: $04
    sub $00                                       ; $559e: $d6 $00
    inc b                                         ; $55a0: $04
    db $db                                        ; $55a1: $db
    nop                                           ; $55a2: $00
    inc b                                         ; $55a3: $04
    ldh [rP1], a                                  ; $55a4: $e0 $00
    inc b                                         ; $55a6: $04
    ld a, [c]                                     ; $55a7: $f2
    nop                                           ; $55a8: $00
    inc b                                         ; $55a9: $04
    dec c                                         ; $55aa: $0d
    ld bc, $3304                                  ; $55ab: $01 $04 $33
    ld bc, $4204                                  ; $55ae: $01 $04 $42
    ld bc, $5404                                  ; $55b1: $01 $04 $54
    ld bc, $6e04                                  ; $55b4: $01 $04 $6e
    ld bc, $9004                                  ; $55b7: $01 $04 $90
    ld bc, $c004                                  ; $55ba: $01 $04 $c0
    ld bc, $d304                                  ; $55bd: $01 $04 $d3
    ld bc, $f204                                  ; $55c0: $01 $04 $f2
    ld bc, $0a04                                  ; $55c3: $01 $04 $0a
    ld [bc], a                                    ; $55c6: $02
    inc b                                         ; $55c7: $04
    ld [hl-], a                                   ; $55c8: $32
    ld [bc], a                                    ; $55c9: $02
    inc b                                         ; $55ca: $04
    ld c, l                                       ; $55cb: $4d
    ld [bc], a                                    ; $55cc: $02
    inc b                                         ; $55cd: $04
    ld l, d                                       ; $55ce: $6a
    ld [bc], a                                    ; $55cf: $02
    inc b                                         ; $55d0: $04
    adc e                                         ; $55d1: $8b
    ld [bc], a                                    ; $55d2: $02
    inc b                                         ; $55d3: $04
    xor e                                         ; $55d4: $ab
    ld [bc], a                                    ; $55d5: $02
    inc b                                         ; $55d6: $04
    jp $0402                                      ; $55d7: $c3 $02 $04


    ret c                                         ; $55da: $d8

    ld [bc], a                                    ; $55db: $02
    inc b                                         ; $55dc: $04
    jp hl                                         ; $55dd: $e9


    ld [bc], a                                    ; $55de: $02
    inc b                                         ; $55df: $04
    rrca                                          ; $55e0: $0f
    inc bc                                        ; $55e1: $03
    inc b                                         ; $55e2: $04
    ld de, $0403                                  ; $55e3: $11 $03 $04
    inc de                                        ; $55e6: $13
    inc bc                                        ; $55e7: $03
    inc b                                         ; $55e8: $04
    dec l                                         ; $55e9: $2d
    inc bc                                        ; $55ea: $03
    inc b                                         ; $55eb: $04
    scf                                           ; $55ec: $37
    inc bc                                        ; $55ed: $03
    inc b                                         ; $55ee: $04
    ccf                                           ; $55ef: $3f
    inc bc                                        ; $55f0: $03
    inc b                                         ; $55f1: $04
    ld c, b                                       ; $55f2: $48
    inc bc                                        ; $55f3: $03
    inc b                                         ; $55f4: $04
    ld d, h                                       ; $55f5: $54
    inc bc                                        ; $55f6: $03
    inc b                                         ; $55f7: $04
    ld e, a                                       ; $55f8: $5f
    inc bc                                        ; $55f9: $03
    inc b                                         ; $55fa: $04
    ld a, [hl]                                    ; $55fb: $7e
    inc bc                                        ; $55fc: $03
    inc b                                         ; $55fd: $04
    sub e                                         ; $55fe: $93
    inc bc                                        ; $55ff: $03
    inc b                                         ; $5600: $04
    xor l                                         ; $5601: $ad
    inc bc                                        ; $5602: $03
    inc b                                         ; $5603: $04
    cp l                                          ; $5604: $bd
    inc bc                                        ; $5605: $03
    inc b                                         ; $5606: $04
    call $0403                                    ; $5607: $cd $03 $04
    ldh [$03], a                                  ; $560a: $e0 $03
    inc b                                         ; $560c: $04
    inc c                                         ; $560d: $0c
    inc b                                         ; $560e: $04
    inc b                                         ; $560f: $04
    ld [hl-], a                                   ; $5610: $32
    inc b                                         ; $5611: $04
    inc b                                         ; $5612: $04
    ld h, a                                       ; $5613: $67
    inc b                                         ; $5614: $04
    inc b                                         ; $5615: $04
    adc d                                         ; $5616: $8a
    inc b                                         ; $5617: $04
    inc b                                         ; $5618: $04
    jp nc, Jump_000_0404                          ; $5619: $d2 $04 $04

    or $04                                        ; $561c: $f6 $04
    inc b                                         ; $561e: $04
    ld d, $05                                     ; $561f: $16 $05
    inc b                                         ; $5621: $04
    ld h, $05                                     ; $5622: $26 $05
    inc b                                         ; $5624: $04
    ld b, c                                       ; $5625: $41
    dec b                                         ; $5626: $05
    inc b                                         ; $5627: $04
    ld h, l                                       ; $5628: $65
    dec b                                         ; $5629: $05
    inc b                                         ; $562a: $04
    add a                                         ; $562b: $87
    dec b                                         ; $562c: $05
    inc b                                         ; $562d: $04
    cp d                                          ; $562e: $ba
    dec b                                         ; $562f: $05
    inc b                                         ; $5630: $04
    rst $08                                       ; $5631: $cf
    dec b                                         ; $5632: $05
    inc b                                         ; $5633: $04
    db $e4                                        ; $5634: $e4
    dec b                                         ; $5635: $05
    inc b                                         ; $5636: $04
    dec b                                         ; $5637: $05
    ld b, $04                                     ; $5638: $06 $04
    dec [hl]                                      ; $563a: $35
    ld b, $04                                     ; $563b: $06 $04
    ld h, b                                       ; $563d: $60
    ld b, $04                                     ; $563e: $06 $04
    add c                                         ; $5640: $81
    ld b, $04                                     ; $5641: $06 $04
    sub l                                         ; $5643: $95
    ld b, $04                                     ; $5644: $06 $04
    cp e                                          ; $5646: $bb
    ld b, $04                                     ; $5647: $06 $04
    pop hl                                        ; $5649: $e1
    ld b, $04                                     ; $564a: $06 $04
    ld a, [$0406]                                 ; $564c: $fa $06 $04
    rla                                           ; $564f: $17
    rlca                                          ; $5650: $07
    inc b                                         ; $5651: $04
    daa                                           ; $5652: $27
    rlca                                          ; $5653: $07
    inc b                                         ; $5654: $04
    ld e, e                                       ; $5655: $5b
    rlca                                          ; $5656: $07
    inc b                                         ; $5657: $04
    ld h, l                                       ; $5658: $65
    rlca                                          ; $5659: $07
    inc b                                         ; $565a: $04
    ld l, [hl]                                    ; $565b: $6e

Call_065_565c:
    rlca                                          ; $565c: $07
    inc b                                         ; $565d: $04
    ld [hl], h                                    ; $565e: $74
    rlca                                          ; $565f: $07
    inc b                                         ; $5660: $04
    add b                                         ; $5661: $80
    rlca                                          ; $5662: $07
    inc b                                         ; $5663: $04
    sub l                                         ; $5664: $95
    rlca                                          ; $5665: $07
    inc b                                         ; $5666: $04
    and h                                         ; $5667: $a4
    rlca                                          ; $5668: $07
    inc b                                         ; $5669: $04
    ld [$0407], a                                 ; $566a: $ea $07 $04
    ld a, [hl+]                                   ; $566d: $2a
    ld [$3804], sp                                ; $566e: $08 $04 $38
    ld [$4704], sp                                ; $5671: $08 $04 $47
    ld [$6c04], sp                                ; $5674: $08 $04 $6c
    ld [$9504], sp                                ; $5677: $08 $04 $95
    ld [$f204], sp                                ; $567a: $08 $04 $f2
    ld [$2804], sp                                ; $567d: $08 $04 $28
    add hl, bc                                    ; $5680: $09
    inc b                                         ; $5681: $04
    add c                                         ; $5682: $81
    add hl, bc                                    ; $5683: $09
    inc b                                         ; $5684: $04
    cp e                                          ; $5685: $bb
    add hl, bc                                    ; $5686: $09
    inc b                                         ; $5687: $04
    pop hl                                        ; $5688: $e1
    add hl, bc                                    ; $5689: $09
    inc b                                         ; $568a: $04
    inc h                                         ; $568b: $24
    ld a, [bc]                                    ; $568c: $0a
    inc b                                         ; $568d: $04
    ld [hl-], a                                   ; $568e: $32
    ld a, [bc]                                    ; $568f: $0a
    inc b                                         ; $5690: $04
    ld e, b                                       ; $5691: $58
    ld a, [bc]                                    ; $5692: $0a
    inc b                                         ; $5693: $04
    or a                                          ; $5694: $b7
    ld a, [bc]                                    ; $5695: $0a
    inc b                                         ; $5696: $04
    push hl                                       ; $5697: $e5
    ld a, [bc]                                    ; $5698: $0a
    inc b                                         ; $5699: $04
    jr nz, @+$0d                                  ; $569a: $20 $0b

    inc b                                         ; $569c: $04
    ld a, $0b                                     ; $569d: $3e $0b
    inc b                                         ; $569f: $04
    ld a, h                                       ; $56a0: $7c
    dec bc                                        ; $56a1: $0b
    inc b                                         ; $56a2: $04
    call c, Call_000_040b                         ; $56a3: $dc $0b $04
    ldh a, [$0b]                                  ; $56a6: $f0 $0b
    inc b                                         ; $56a8: $04
    ld b, l                                       ; $56a9: $45
    inc c                                         ; $56aa: $0c
    inc b                                         ; $56ab: $04
    and c                                         ; $56ac: $a1
    inc c                                         ; $56ad: $0c
    inc b                                         ; $56ae: $04
    xor e                                         ; $56af: $ab
    inc c                                         ; $56b0: $0c
    inc b                                         ; $56b1: $04
    ld sp, hl                                     ; $56b2: $f9
    inc c                                         ; $56b3: $0c
    inc b                                         ; $56b4: $04
    add hl, de                                    ; $56b5: $19
    dec c                                         ; $56b6: $0d
    inc b                                         ; $56b7: $04
    ld h, $0d                                     ; $56b8: $26 $0d
    inc b                                         ; $56ba: $04
    ld e, a                                       ; $56bb: $5f
    dec c                                         ; $56bc: $0d
    inc b                                         ; $56bd: $04
    ld a, l                                       ; $56be: $7d
    dec c                                         ; $56bf: $0d
    inc b                                         ; $56c0: $04
    and [hl]                                      ; $56c1: $a6
    dec c                                         ; $56c2: $0d
    inc b                                         ; $56c3: $04
    xor h                                         ; $56c4: $ac
    dec c                                         ; $56c5: $0d
    inc b                                         ; $56c6: $04
    dec b                                         ; $56c7: $05
    ld c, $04                                     ; $56c8: $0e $04
    ld a, [bc]                                    ; $56ca: $0a
    ld c, $04                                     ; $56cb: $0e $04
    dec sp                                        ; $56cd: $3b
    ld c, $04                                     ; $56ce: $0e $04
    ld b, [hl]                                    ; $56d0: $46
    ld c, $04                                     ; $56d1: $0e $04
    and a                                         ; $56d3: $a7
    ld c, $04                                     ; $56d4: $0e $04
    db $db                                        ; $56d6: $db
    ld c, $04                                     ; $56d7: $0e $04
    inc a                                         ; $56d9: $3c
    rrca                                          ; $56da: $0f
    inc b                                         ; $56db: $04
    ld d, l                                       ; $56dc: $55
    rrca                                          ; $56dd: $0f
    inc b                                         ; $56de: $04
    ld h, c                                       ; $56df: $61
    rrca                                          ; $56e0: $0f
    inc b                                         ; $56e1: $04
    ld [hl], d                                    ; $56e2: $72
    rrca                                          ; $56e3: $0f
    inc b                                         ; $56e4: $04
    adc c                                         ; $56e5: $89
    rrca                                          ; $56e6: $0f
    inc b                                         ; $56e7: $04
    or a                                          ; $56e8: $b7
    rrca                                          ; $56e9: $0f
    inc b                                         ; $56ea: $04
    ret                                           ; $56eb: $c9


    rrca                                          ; $56ec: $0f
    inc b                                         ; $56ed: $04
    db $ec                                        ; $56ee: $ec
    rrca                                          ; $56ef: $0f
    inc b                                         ; $56f0: $04
    ld d, $10                                     ; $56f1: $16 $10
    inc b                                         ; $56f3: $04
    ld b, e                                       ; $56f4: $43
    db $10                                        ; $56f5: $10
    inc b                                         ; $56f6: $04
    add d                                         ; $56f7: $82
    db $10                                        ; $56f8: $10
    inc b                                         ; $56f9: $04
    or e                                          ; $56fa: $b3
    db $10                                        ; $56fb: $10
    inc b                                         ; $56fc: $04
    nop                                           ; $56fd: $00
    ld de, $1b04                                  ; $56fe: $11 $04 $1b
    ld de, $2c04                                  ; $5701: $11 $04 $2c
    ld de, $a104                                  ; $5704: $11 $04 $a1
    ld de, $c404                                  ; $5707: $11 $04 $c4
    ld de, $1404                                  ; $570a: $11 $04 $14
    ld [de], a                                    ; $570d: $12
    inc b                                         ; $570e: $04
    ld a, [hl+]                                   ; $570f: $2a
    ld [de], a                                    ; $5710: $12
    inc b                                         ; $5711: $04
    add a                                         ; $5712: $87
    ld [de], a                                    ; $5713: $12
    inc b                                         ; $5714: $04
    xor c                                         ; $5715: $a9
    ld [de], a                                    ; $5716: $12
    inc b                                         ; $5717: $04
    cp d                                          ; $5718: $ba
    ld [de], a                                    ; $5719: $12
    inc b                                         ; $571a: $04
    rst $00                                       ; $571b: $c7
    ld [de], a                                    ; $571c: $12
    inc b                                         ; $571d: $04
    nop                                           ; $571e: $00
    inc de                                        ; $571f: $13
    inc b                                         ; $5720: $04
    ld a, [bc]                                    ; $5721: $0a
    inc de                                        ; $5722: $13
    inc b                                         ; $5723: $04
    inc l                                         ; $5724: $2c
    inc de                                        ; $5725: $13
    inc b                                         ; $5726: $04
    ld b, [hl]                                    ; $5727: $46
    inc de                                        ; $5728: $13
    inc b                                         ; $5729: $04
    ld e, d                                       ; $572a: $5a
    inc de                                        ; $572b: $13
    inc b                                         ; $572c: $04
    ld l, h                                       ; $572d: $6c
    inc de                                        ; $572e: $13
    inc b                                         ; $572f: $04
    adc d                                         ; $5730: $8a
    inc de                                        ; $5731: $13
    inc b                                         ; $5732: $04
    sub h                                         ; $5733: $94
    inc de                                        ; $5734: $13
    inc b                                         ; $5735: $04
    add $13                                       ; $5736: $c6 $13
    inc b                                         ; $5738: $04
    ldh [rNR13], a                                ; $5739: $e0 $13
    inc b                                         ; $573b: $04
    inc h                                         ; $573c: $24
    inc d                                         ; $573d: $14
    inc b                                         ; $573e: $04
    ld b, l                                       ; $573f: $45
    inc d                                         ; $5740: $14
    inc b                                         ; $5741: $04
    ld h, e                                       ; $5742: $63
    inc d                                         ; $5743: $14
    inc b                                         ; $5744: $04
    sub e                                         ; $5745: $93
    inc d                                         ; $5746: $14
    inc b                                         ; $5747: $04
    or l                                          ; $5748: $b5
    inc d                                         ; $5749: $14
    inc b                                         ; $574a: $04
    adc $14                                       ; $574b: $ce $14
    inc b                                         ; $574d: $04
    ld [c], a                                     ; $574e: $e2
    inc d                                         ; $574f: $14
    inc b                                         ; $5750: $04
    ld b, $15                                     ; $5751: $06 $15
    inc b                                         ; $5753: $04
    rrca                                          ; $5754: $0f
    dec d                                         ; $5755: $15
    inc b                                         ; $5756: $04
    inc h                                         ; $5757: $24
    dec d                                         ; $5758: $15
    inc b                                         ; $5759: $04
    ld [hl], $15                                  ; $575a: $36 $15
    inc b                                         ; $575c: $04
    ld b, c                                       ; $575d: $41
    dec d                                         ; $575e: $15
    inc b                                         ; $575f: $04
    ld l, h                                       ; $5760: $6c
    dec d                                         ; $5761: $15
    inc b                                         ; $5762: $04
    or l                                          ; $5763: $b5
    dec d                                         ; $5764: $15
    inc b                                         ; $5765: $04
    rst $08                                       ; $5766: $cf
    dec d                                         ; $5767: $15
    inc b                                         ; $5768: $04
    reti                                          ; $5769: $d9


    dec d                                         ; $576a: $15
    inc b                                         ; $576b: $04
    ldh a, [$15]                                  ; $576c: $f0 $15
    inc b                                         ; $576e: $04
    ei                                            ; $576f: $fb
    dec d                                         ; $5770: $15
    inc b                                         ; $5771: $04
    inc hl                                        ; $5772: $23
    ld d, $04                                     ; $5773: $16 $04
    ld b, b                                       ; $5775: $40
    ld d, $04                                     ; $5776: $16 $04
    sbc l                                         ; $5778: $9d
    ld d, $04                                     ; $5779: $16 $04
    call z, Call_000_0416                         ; $577b: $cc $16 $04
    daa                                           ; $577e: $27
    rla                                           ; $577f: $17
    inc b                                         ; $5780: $04
    cpl                                           ; $5781: $2f
    rla                                           ; $5782: $17
    inc b                                         ; $5783: $04
    inc a                                         ; $5784: $3c
    rla                                           ; $5785: $17
    inc b                                         ; $5786: $04
    ld d, e                                       ; $5787: $53
    rla                                           ; $5788: $17
    inc b                                         ; $5789: $04
    add l                                         ; $578a: $85
    rla                                           ; $578b: $17
    inc b                                         ; $578c: $04
    and [hl]                                      ; $578d: $a6
    rla                                           ; $578e: $17
    inc b                                         ; $578f: $04
    rst $18                                       ; $5790: $df
    rla                                           ; $5791: $17
    inc b                                         ; $5792: $04
    push af                                       ; $5793: $f5
    rla                                           ; $5794: $17
    inc b                                         ; $5795: $04
    jr nz, jr_065_57b0                            ; $5796: $20 $18

    inc b                                         ; $5798: $04
    inc l                                         ; $5799: $2c
    jr jr_065_57a0                                ; $579a: $18 $04

    dec sp                                        ; $579c: $3b
    jr jr_065_57a3                                ; $579d: $18 $04

    ld a, l                                       ; $579f: $7d

jr_065_57a0:
    jr jr_065_57a6                                ; $57a0: $18 $04

    adc c                                         ; $57a2: $89

jr_065_57a3:
    jr jr_065_57a9                                ; $57a3: $18 $04

    rst $08                                       ; $57a5: $cf

jr_065_57a6:
    jr jr_065_57ac                                ; $57a6: $18 $04

    ld a, [c]                                     ; $57a8: $f2

jr_065_57a9:
    jr jr_065_57af                                ; $57a9: $18 $04

    add hl, sp                                    ; $57ab: $39

jr_065_57ac:
    add hl, de                                    ; $57ac: $19
    inc b                                         ; $57ad: $04
    ld e, h                                       ; $57ae: $5c

jr_065_57af:
    add hl, de                                    ; $57af: $19

jr_065_57b0:
    inc b                                         ; $57b0: $04
    ld l, e                                       ; $57b1: $6b
    add hl, de                                    ; $57b2: $19
    inc b                                         ; $57b3: $04
    add l                                         ; $57b4: $85
    add hl, de                                    ; $57b5: $19
    inc b                                         ; $57b6: $04
    and c                                         ; $57b7: $a1
    add hl, de                                    ; $57b8: $19
    inc b                                         ; $57b9: $04
    or l                                          ; $57ba: $b5
    add hl, de                                    ; $57bb: $19
    inc b                                         ; $57bc: $04
    adc $19                                       ; $57bd: $ce $19
    inc b                                         ; $57bf: $04
    push hl                                       ; $57c0: $e5
    add hl, de                                    ; $57c1: $19
    inc b                                         ; $57c2: $04
    ld a, [$0419]                                 ; $57c3: $fa $19 $04
    ld c, $1a                                     ; $57c6: $0e $1a
    inc b                                         ; $57c8: $04
    dec e                                         ; $57c9: $1d
    ld a, [de]                                    ; $57ca: $1a
    inc b                                         ; $57cb: $04
    dec l                                         ; $57cc: $2d
    ld a, [de]                                    ; $57cd: $1a
    inc b                                         ; $57ce: $04
    ld b, d                                       ; $57cf: $42
    ld a, [de]                                    ; $57d0: $1a
    inc b                                         ; $57d1: $04
    ld b, h                                       ; $57d2: $44
    ld a, [de]                                    ; $57d3: $1a
    inc b                                         ; $57d4: $04
    ld d, h                                       ; $57d5: $54
    ld a, [de]                                    ; $57d6: $1a
    inc b                                         ; $57d7: $04
    ld l, [hl]                                    ; $57d8: $6e
    ld a, [de]                                    ; $57d9: $1a
    inc b                                         ; $57da: $04
    adc b                                         ; $57db: $88
    ld a, [de]                                    ; $57dc: $1a
    inc b                                         ; $57dd: $04
    adc d                                         ; $57de: $8a
    ld a, [de]                                    ; $57df: $1a
    inc b                                         ; $57e0: $04
    adc h                                         ; $57e1: $8c
    ld a, [de]                                    ; $57e2: $1a
    inc b                                         ; $57e3: $04
    xor d                                         ; $57e4: $aa
    ld a, [de]                                    ; $57e5: $1a
    inc b                                         ; $57e6: $04
    push bc                                       ; $57e7: $c5
    ld a, [de]                                    ; $57e8: $1a
    inc b                                         ; $57e9: $04
    rst $00                                       ; $57ea: $c7
    ld a, [de]                                    ; $57eb: $1a
    inc b                                         ; $57ec: $04
    sbc $1a                                       ; $57ed: $de $1a
    inc b                                         ; $57ef: $04
    ldh [rNR30], a                                ; $57f0: $e0 $1a
    inc b                                         ; $57f2: $04
    ld [c], a                                     ; $57f3: $e2
    ld a, [de]                                    ; $57f4: $1a
    inc b                                         ; $57f5: $04
    push af                                       ; $57f6: $f5
    ld a, [de]                                    ; $57f7: $1a
    inc b                                         ; $57f8: $04
    inc b                                         ; $57f9: $04
    dec de                                        ; $57fa: $1b
    inc b                                         ; $57fb: $04
    inc de                                        ; $57fc: $13
    dec de                                        ; $57fd: $1b
    inc b                                         ; $57fe: $04
    dec d                                         ; $57ff: $15
    dec de                                        ; $5800: $1b
    inc b                                         ; $5801: $04
    rla                                           ; $5802: $17
    dec de                                        ; $5803: $1b
    inc b                                         ; $5804: $04
    add hl, de                                    ; $5805: $19
    dec de                                        ; $5806: $1b
    inc b                                         ; $5807: $04
    inc l                                         ; $5808: $2c
    dec de                                        ; $5809: $1b
    inc b                                         ; $580a: $04
    ld l, $1b                                     ; $580b: $2e $1b
    inc b                                         ; $580d: $04
    jr nc, jr_065_582b                            ; $580e: $30 $1b

    inc b                                         ; $5810: $04
    ld [hl-], a                                   ; $5811: $32
    dec de                                        ; $5812: $1b
    inc b                                         ; $5813: $04
    inc [hl]                                      ; $5814: $34
    dec de                                        ; $5815: $1b
    inc b                                         ; $5816: $04
    ld [hl], $1b                                  ; $5817: $36 $1b
    inc b                                         ; $5819: $04
    jr c, jr_065_5837                             ; $581a: $38 $1b

    inc b                                         ; $581c: $04
    ld a, [hl-]                                   ; $581d: $3a
    dec de                                        ; $581e: $1b
    inc b                                         ; $581f: $04
    inc a                                         ; $5820: $3c
    dec de                                        ; $5821: $1b
    inc b                                         ; $5822: $04
    ld c, b                                       ; $5823: $48
    dec de                                        ; $5824: $1b
    inc b                                         ; $5825: $04
    ld l, b                                       ; $5826: $68
    dec de                                        ; $5827: $1b
    inc b                                         ; $5828: $04
    ld a, b                                       ; $5829: $78
    dec de                                        ; $582a: $1b

jr_065_582b:
    inc b                                         ; $582b: $04
    ld a, d                                       ; $582c: $7a
    dec de                                        ; $582d: $1b
    inc b                                         ; $582e: $04
    ld a, h                                       ; $582f: $7c
    dec de                                        ; $5830: $1b
    inc b                                         ; $5831: $04
    ld a, [hl]                                    ; $5832: $7e
    dec de                                        ; $5833: $1b
    inc b                                         ; $5834: $04
    add b                                         ; $5835: $80
    dec de                                        ; $5836: $1b

jr_065_5837:
    inc b                                         ; $5837: $04
    add d                                         ; $5838: $82
    dec de                                        ; $5839: $1b
    inc b                                         ; $583a: $04
    add h                                         ; $583b: $84
    dec de                                        ; $583c: $1b
    inc b                                         ; $583d: $04
    add [hl]                                      ; $583e: $86
    dec de                                        ; $583f: $1b
    inc b                                         ; $5840: $04
    adc b                                         ; $5841: $88
    dec de                                        ; $5842: $1b
    inc b                                         ; $5843: $04
    adc d                                         ; $5844: $8a
    dec de                                        ; $5845: $1b
    inc b                                         ; $5846: $04
    adc h                                         ; $5847: $8c
    dec de                                        ; $5848: $1b
    inc b                                         ; $5849: $04
    and b                                         ; $584a: $a0
    dec de                                        ; $584b: $1b
    inc b                                         ; $584c: $04
    or d                                          ; $584d: $b2
    dec de                                        ; $584e: $1b
    inc b                                         ; $584f: $04
    jp Jump_000_041b                              ; $5850: $c3 $1b $04


Call_065_5853:
    pop de                                        ; $5853: $d1
    dec de                                        ; $5854: $1b
    inc b                                         ; $5855: $04
    db $e3                                        ; $5856: $e3
    dec de                                        ; $5857: $1b
    inc b                                         ; $5858: $04
    inc b                                         ; $5859: $04
    inc e                                         ; $585a: $1c
    inc b                                         ; $585b: $04
    ld b, $1c                                     ; $585c: $06 $1c
    inc b                                         ; $585e: $04
    inc de                                        ; $585f: $13
    inc e                                         ; $5860: $1c
    inc b                                         ; $5861: $04
    dec d                                         ; $5862: $15
    inc e                                         ; $5863: $1c
    inc b                                         ; $5864: $04
    dec hl                                        ; $5865: $2b
    inc e                                         ; $5866: $1c
    inc b                                         ; $5867: $04
    dec l                                         ; $5868: $2d
    inc e                                         ; $5869: $1c
    inc b                                         ; $586a: $04
    dec a                                         ; $586b: $3d
    inc e                                         ; $586c: $1c
    inc b                                         ; $586d: $04
    ccf                                           ; $586e: $3f
    inc e                                         ; $586f: $1c
    inc b                                         ; $5870: $04
    ld d, h                                       ; $5871: $54
    inc e                                         ; $5872: $1c
    inc b                                         ; $5873: $04
    ld h, a                                       ; $5874: $67
    inc e                                         ; $5875: $1c
    inc b                                         ; $5876: $04
    add b                                         ; $5877: $80
    inc e                                         ; $5878: $1c
    inc b                                         ; $5879: $04
    adc a                                         ; $587a: $8f
    inc e                                         ; $587b: $1c
    inc b                                         ; $587c: $04
    and c                                         ; $587d: $a1
    inc e                                         ; $587e: $1c
    inc b                                         ; $587f: $04
    and e                                         ; $5880: $a3
    inc e                                         ; $5881: $1c
    inc b                                         ; $5882: $04
    and l                                         ; $5883: $a5
    inc e                                         ; $5884: $1c
    inc b                                         ; $5885: $04
    and a                                         ; $5886: $a7
    inc e                                         ; $5887: $1c
    inc b                                         ; $5888: $04
    xor c                                         ; $5889: $a9
    inc e                                         ; $588a: $1c
    inc b                                         ; $588b: $04
    cp c                                          ; $588c: $b9
    inc e                                         ; $588d: $1c
    inc b                                         ; $588e: $04
    rr h                                          ; $588f: $cb $1c
    inc b                                         ; $5891: $04
    sbc $1c                                       ; $5892: $de $1c
    inc b                                         ; $5894: $04
    ld a, [c]                                     ; $5895: $f2
    inc e                                         ; $5896: $1c
    inc b                                         ; $5897: $04
    dec bc                                        ; $5898: $0b
    dec e                                         ; $5899: $1d
    inc b                                         ; $589a: $04
    inc h                                         ; $589b: $24
    dec e                                         ; $589c: $1d
    inc b                                         ; $589d: $04
    ld [hl], $1d                                  ; $589e: $36 $1d
    inc b                                         ; $58a0: $04
    ccf                                           ; $58a1: $3f
    dec e                                         ; $58a2: $1d
    inc b                                         ; $58a3: $04
    ld e, c                                       ; $58a4: $59
    dec e                                         ; $58a5: $1d
    inc b                                         ; $58a6: $04
    ld l, e                                       ; $58a7: $6b
    dec e                                         ; $58a8: $1d
    inc b                                         ; $58a9: $04
    add c                                         ; $58aa: $81
    dec e                                         ; $58ab: $1d
    inc b                                         ; $58ac: $04
    sub c                                         ; $58ad: $91
    dec e                                         ; $58ae: $1d
    inc b                                         ; $58af: $04
    or e                                          ; $58b0: $b3
    dec e                                         ; $58b1: $1d
    inc b                                         ; $58b2: $04
    or l                                          ; $58b3: $b5
    dec e                                         ; $58b4: $1d
    inc b                                         ; $58b5: $04
    rr l                                          ; $58b6: $cb $1d
    inc b                                         ; $58b8: $04
    db $dd                                        ; $58b9: $dd
    dec e                                         ; $58ba: $1d
    inc b                                         ; $58bb: $04
    xor $1d                                       ; $58bc: $ee $1d
    inc b                                         ; $58be: $04
    inc b                                         ; $58bf: $04
    ld e, $04                                     ; $58c0: $1e $04
    inc d                                         ; $58c2: $14
    ld e, $04                                     ; $58c3: $1e $04
    inc hl                                        ; $58c5: $23
    ld e, $04                                     ; $58c6: $1e $04
    ld sp, $041e                                  ; $58c8: $31 $1e $04
    ld b, h                                       ; $58cb: $44
    ld e, $04                                     ; $58cc: $1e $04
    ld d, e                                       ; $58ce: $53
    ld e, $04                                     ; $58cf: $1e $04
    ld e, e                                       ; $58d1: $5b
    ld e, $04                                     ; $58d2: $1e $04
    ld l, b                                       ; $58d4: $68
    ld e, $04                                     ; $58d5: $1e $04
    ld [hl], b                                    ; $58d7: $70
    ld e, $04                                     ; $58d8: $1e $04
    ld a, e                                       ; $58da: $7b
    ld e, $04                                     ; $58db: $1e $04
    add [hl]                                      ; $58dd: $86
    ld e, $04                                     ; $58de: $1e $04
    adc h                                         ; $58e0: $8c
    ld e, $04                                     ; $58e1: $1e $04
    sub l                                         ; $58e3: $95
    ld e, $04                                     ; $58e4: $1e $04
    sbc a                                         ; $58e6: $9f
    ld e, $04                                     ; $58e7: $1e $04
    xor h                                         ; $58e9: $ac
    ld e, $04                                     ; $58ea: $1e $04
    cp e                                          ; $58ec: $bb
    ld e, $04                                     ; $58ed: $1e $04
    add $1e                                       ; $58ef: $c6 $1e
    inc b                                         ; $58f1: $04
    push de                                       ; $58f2: $d5
    ld e, $04                                     ; $58f3: $1e $04
    db $e4                                        ; $58f5: $e4
    ld e, $04                                     ; $58f6: $1e $04
    di                                            ; $58f8: $f3
    ld e, $04                                     ; $58f9: $1e $04
    ld bc, $041f                                  ; $58fb: $01 $1f $04
    inc d                                         ; $58fe: $14
    rra                                           ; $58ff: $1f
    inc b                                         ; $5900: $04
    inc h                                         ; $5901: $24
    rra                                           ; $5902: $1f
    inc b                                         ; $5903: $04
    jr nc, jr_065_5925                            ; $5904: $30 $1f

    inc b                                         ; $5906: $04
    ld b, b                                       ; $5907: $40
    rra                                           ; $5908: $1f
    inc b                                         ; $5909: $04
    ld c, [hl]                                    ; $590a: $4e
    rra                                           ; $590b: $1f
    inc b                                         ; $590c: $04
    ld e, c                                       ; $590d: $59
    rra                                           ; $590e: $1f
    inc b                                         ; $590f: $04
    ld l, e                                       ; $5910: $6b
    rra                                           ; $5911: $1f
    inc b                                         ; $5912: $04
    ld a, a                                       ; $5913: $7f
    rra                                           ; $5914: $1f
    inc b                                         ; $5915: $04
    adc a                                         ; $5916: $8f
    rra                                           ; $5917: $1f
    inc b                                         ; $5918: $04
    sbc h                                         ; $5919: $9c
    rra                                           ; $591a: $1f
    inc b                                         ; $591b: $04
    xor c                                         ; $591c: $a9
    rra                                           ; $591d: $1f
    inc b                                         ; $591e: $04
    or [hl]                                       ; $591f: $b6
    rra                                           ; $5920: $1f
    inc b                                         ; $5921: $04
    jp Jump_000_041f                              ; $5922: $c3 $1f $04


jr_065_5925:
    ret nc                                        ; $5925: $d0

    rra                                           ; $5926: $1f
    inc b                                         ; $5927: $04
    db $dd                                        ; $5928: $dd
    rra                                           ; $5929: $1f
    inc b                                         ; $592a: $04
    add sp, $1f                                   ; $592b: $e8 $1f
    inc b                                         ; $592d: $04
    di                                            ; $592e: $f3
    rra                                           ; $592f: $1f
    inc b                                         ; $5930: $04
    cp $1f                                        ; $5931: $fe $1f
    inc b                                         ; $5933: $04
    add hl, bc                                    ; $5934: $09
    jr nz, jr_065_593b                            ; $5935: $20 $04

    inc d                                         ; $5937: $14
    jr nz, @+$06                                  ; $5938: $20 $04

    rra                                           ; $593a: $1f

jr_065_593b:
    jr nz, @+$06                                  ; $593b: $20 $04

    jr nc, jr_065_595f                            ; $593d: $30 $20

    inc b                                         ; $593f: $04
    jr c, @+$22                                   ; $5940: $38 $20

    inc b                                         ; $5942: $04
    ld b, b                                       ; $5943: $40
    jr nz, jr_065_594a                            ; $5944: $20 $04

    ld c, e                                       ; $5946: $4b
    jr nz, jr_065_594d                            ; $5947: $20 $04

    ld d, c                                       ; $5949: $51

jr_065_594a:
    jr nz, jr_065_5950                            ; $594a: $20 $04

    ld h, d                                       ; $594c: $62

jr_065_594d:
    jr nz, jr_065_5953                            ; $594d: $20 $04

    ld a, b                                       ; $594f: $78

jr_065_5950:
    jr nz, jr_065_5956                            ; $5950: $20 $04

    adc d                                         ; $5952: $8a

jr_065_5953:
    jr nz, jr_065_5959                            ; $5953: $20 $04

    sub [hl]                                      ; $5955: $96

jr_065_5956:
    jr nz, jr_065_595c                            ; $5956: $20 $04

    and d                                         ; $5958: $a2

jr_065_5959:
    jr nz, jr_065_595f                            ; $5959: $20 $04

    xor [hl]                                      ; $595b: $ae

jr_065_595c:
    jr nz, @+$06                                  ; $595c: $20 $04

    cp d                                          ; $595e: $ba

jr_065_595f:
    jr nz, @+$06                                  ; $595f: $20 $04

    add $20                                       ; $5961: $c6 $20
    inc b                                         ; $5963: $04
    jp nc, $0420                                  ; $5964: $d2 $20 $04

    sbc $20                                       ; $5967: $de $20
    inc b                                         ; $5969: $04
    ld [$0420], a                                 ; $596a: $ea $20 $04
    ld a, [$0420]                                 ; $596d: $fa $20 $04
    inc b                                         ; $5970: $04
    ld hl, $0e04                                  ; $5971: $21 $04 $0e
    ld hl, $1804                                  ; $5974: $21 $04 $18
    ld hl, $2904                                  ; $5977: $21 $04 $29
    ld hl, $3904                                  ; $597a: $21 $04 $39
    ld hl, $4804                                  ; $597d: $21 $04 $48
    ld hl, $5704                                  ; $5980: $21 $04 $57
    ld hl, $6604                                  ; $5983: $21 $04 $66
    ld hl, $7304                                  ; $5986: $21 $04 $73
    ld hl, $8104                                  ; $5989: $21 $04 $81
    ld hl, $8804                                  ; $598c: $21 $04 $88
    ld hl, $9704                                  ; $598f: $21 $04 $97

Call_065_5992:
    ld hl, $a304                                  ; $5992: $21 $04 $a3
    ld hl, $b204                                  ; $5995: $21 $04 $b2
    ld hl, $bf04                                  ; $5998: $21 $04 $bf
    ld hl, $c904                                  ; $599b: $21 $04 $c9
    ld hl, $d604                                  ; $599e: $21 $04 $d6
    ld hl, $ef04                                  ; $59a1: $21 $04 $ef
    ld hl, HeaderLogo                             ; $59a4: $21 $04 $01
    ld [hl+], a                                   ; $59a7: $22
    inc b                                         ; $59a8: $04
    ld c, $22                                     ; $59a9: $0e $22
    inc b                                         ; $59ab: $04
    inc e                                         ; $59ac: $1c
    ld [hl+], a                                   ; $59ad: $22
    inc b                                         ; $59ae: $04
    jr z, jr_065_59d3                             ; $59af: $28 $22

    inc b                                         ; $59b1: $04
    inc a                                         ; $59b2: $3c
    ld [hl+], a                                   ; $59b3: $22
    inc b                                         ; $59b4: $04
    ld b, a                                       ; $59b5: $47
    ld [hl+], a                                   ; $59b6: $22
    inc b                                         ; $59b7: $04
    ld d, h                                       ; $59b8: $54
    ld [hl+], a                                   ; $59b9: $22
    inc b                                         ; $59ba: $04
    ld e, e                                       ; $59bb: $5b
    ld [hl+], a                                   ; $59bc: $22
    inc b                                         ; $59bd: $04
    ld h, a                                       ; $59be: $67
    ld [hl+], a                                   ; $59bf: $22
    inc b                                         ; $59c0: $04
    ld [hl], h                                    ; $59c1: $74
    ld [hl+], a                                   ; $59c2: $22
    inc b                                         ; $59c3: $04
    adc d                                         ; $59c4: $8a
    ld [hl+], a                                   ; $59c5: $22
    inc b                                         ; $59c6: $04
    and b                                         ; $59c7: $a0
    ld [hl+], a                                   ; $59c8: $22
    inc b                                         ; $59c9: $04
    or [hl]                                       ; $59ca: $b6
    ld [hl+], a                                   ; $59cb: $22
    inc b                                         ; $59cc: $04
    ret z                                         ; $59cd: $c8

    ld [hl+], a                                   ; $59ce: $22
    inc b                                         ; $59cf: $04
    ret c                                         ; $59d0: $d8

    ld [hl+], a                                   ; $59d1: $22
    inc b                                         ; $59d2: $04

jr_065_59d3:
    ld [c], a                                     ; $59d3: $e2
    ld [hl+], a                                   ; $59d4: $22
    inc b                                         ; $59d5: $04
    di                                            ; $59d6: $f3
    ld [hl+], a                                   ; $59d7: $22
    inc b                                         ; $59d8: $04
    ld [bc], a                                    ; $59d9: $02
    inc hl                                        ; $59da: $23
    inc b                                         ; $59db: $04
    ld [de], a                                    ; $59dc: $12
    inc hl                                        ; $59dd: $23
    inc b                                         ; $59de: $04
    ld hl, $0423                                  ; $59df: $21 $23 $04
    ld l, $23                                     ; $59e2: $2e $23
    inc b                                         ; $59e4: $04
    jr c, jr_065_5a0a                             ; $59e5: $38 $23

    inc b                                         ; $59e7: $04
    ld c, d                                       ; $59e8: $4a
    inc hl                                        ; $59e9: $23
    inc b                                         ; $59ea: $04
    ld d, a                                       ; $59eb: $57
    inc hl                                        ; $59ec: $23
    inc b                                         ; $59ed: $04
    ld e, a                                       ; $59ee: $5f
    inc hl                                        ; $59ef: $23
    inc b                                         ; $59f0: $04
    ld l, l                                       ; $59f1: $6d
    inc hl                                        ; $59f2: $23
    inc b                                         ; $59f3: $04
    ld a, e                                       ; $59f4: $7b
    inc hl                                        ; $59f5: $23
    inc b                                         ; $59f6: $04
    adc c                                         ; $59f7: $89
    inc hl                                        ; $59f8: $23
    inc b                                         ; $59f9: $04
    sub a                                         ; $59fa: $97
    inc hl                                        ; $59fb: $23
    inc b                                         ; $59fc: $04
    xor a                                         ; $59fd: $af
    inc hl                                        ; $59fe: $23
    inc b                                         ; $59ff: $04
    cp l                                          ; $5a00: $bd
    inc hl                                        ; $5a01: $23
    inc b                                         ; $5a02: $04
    pop de                                        ; $5a03: $d1
    inc hl                                        ; $5a04: $23
    inc b                                         ; $5a05: $04
    xor $23                                       ; $5a06: $ee $23
    inc b                                         ; $5a08: $04
    rlca                                          ; $5a09: $07

jr_065_5a0a:
    inc h                                         ; $5a0a: $24
    inc b                                         ; $5a0b: $04
    ld l, $24                                     ; $5a0c: $2e $24
    inc b                                         ; $5a0e: $04
    ld b, a                                       ; $5a0f: $47
    inc h                                         ; $5a10: $24
    inc b                                         ; $5a11: $04
    ld h, e                                       ; $5a12: $63
    inc h                                         ; $5a13: $24
    inc b                                         ; $5a14: $04
    ld a, h                                       ; $5a15: $7c
    inc h                                         ; $5a16: $24
    inc b                                         ; $5a17: $04
    adc e                                         ; $5a18: $8b
    inc h                                         ; $5a19: $24
    inc b                                         ; $5a1a: $04
    sbc b                                         ; $5a1b: $98
    inc h                                         ; $5a1c: $24
    inc b                                         ; $5a1d: $04
    and l                                         ; $5a1e: $a5
    inc h                                         ; $5a1f: $24
    inc b                                         ; $5a20: $04
    or d                                          ; $5a21: $b2
    inc h                                         ; $5a22: $24
    inc b                                         ; $5a23: $04
    add $24                                       ; $5a24: $c6 $24
    inc b                                         ; $5a26: $04
    sbc $24                                       ; $5a27: $de $24
    inc b                                         ; $5a29: $04
    di                                            ; $5a2a: $f3
    inc h                                         ; $5a2b: $24
    inc b                                         ; $5a2c: $04
    dec b                                         ; $5a2d: $05
    dec h                                         ; $5a2e: $25
    inc b                                         ; $5a2f: $04
    ld a, [de]                                    ; $5a30: $1a
    dec h                                         ; $5a31: $25
    inc b                                         ; $5a32: $04
    dec l                                         ; $5a33: $2d
    dec h                                         ; $5a34: $25
    inc b                                         ; $5a35: $04
    ld a, $25                                     ; $5a36: $3e $25
    inc b                                         ; $5a38: $04
    ld d, l                                       ; $5a39: $55
    dec h                                         ; $5a3a: $25
    inc b                                         ; $5a3b: $04
    ld l, [hl]                                    ; $5a3c: $6e
    dec h                                         ; $5a3d: $25
    inc b                                         ; $5a3e: $04
    add [hl]                                      ; $5a3f: $86
    dec h                                         ; $5a40: $25
    inc b                                         ; $5a41: $04
    and b                                         ; $5a42: $a0
    dec h                                         ; $5a43: $25
    inc b                                         ; $5a44: $04
    cp d                                          ; $5a45: $ba
    dec h                                         ; $5a46: $25
    inc b                                         ; $5a47: $04
    call nc, $0425                                ; $5a48: $d4 $25 $04
    xor $25                                       ; $5a4b: $ee $25
    inc b                                         ; $5a4d: $04
    ld [$0426], sp                                ; $5a4e: $08 $26 $04
    ld [hl+], a                                   ; $5a51: $22
    ld h, $04                                     ; $5a52: $26 $04
    cpl                                           ; $5a54: $2f
    ld h, $04                                     ; $5a55: $26 $04
    inc a                                         ; $5a57: $3c
    ld h, $04                                     ; $5a58: $26 $04
    ld c, c                                       ; $5a5a: $49
    ld h, $04                                     ; $5a5b: $26 $04
    ld d, [hl]                                    ; $5a5d: $56
    ld h, $04                                     ; $5a5e: $26 $04
    ld h, e                                       ; $5a60: $63
    ld h, $04                                     ; $5a61: $26 $04
    ld [hl], b                                    ; $5a63: $70
    ld h, $04                                     ; $5a64: $26 $04
    adc h                                         ; $5a66: $8c
    ld h, $04                                     ; $5a67: $26 $04
    sbc a                                         ; $5a69: $9f
    ld h, $04                                     ; $5a6a: $26 $04
    or d                                          ; $5a6c: $b2
    ld h, $04                                     ; $5a6d: $26 $04
    call nz, Call_000_0426                        ; $5a6f: $c4 $26 $04
    rst $08                                       ; $5a72: $cf
    ld h, $04                                     ; $5a73: $26 $04
    and $26                                       ; $5a75: $e6 $26
    inc b                                         ; $5a77: $04
    or $26                                        ; $5a78: $f6 $26
    inc b                                         ; $5a7a: $04
    dec bc                                        ; $5a7b: $0b
    daa                                           ; $5a7c: $27
    inc b                                         ; $5a7d: $04
    ld e, $27                                     ; $5a7e: $1e $27
    inc b                                         ; $5a80: $04
    ld sp, $0427                                  ; $5a81: $31 $27 $04
    ld b, h                                       ; $5a84: $44
    daa                                           ; $5a85: $27
    inc b                                         ; $5a86: $04
    ld d, a                                       ; $5a87: $57
    daa                                           ; $5a88: $27
    inc b                                         ; $5a89: $04
    ld l, d                                       ; $5a8a: $6a
    daa                                           ; $5a8b: $27
    inc b                                         ; $5a8c: $04
    ld a, l                                       ; $5a8d: $7d
    daa                                           ; $5a8e: $27
    inc b                                         ; $5a8f: $04
    sub b                                         ; $5a90: $90
    daa                                           ; $5a91: $27
    inc b                                         ; $5a92: $04
    and d                                         ; $5a93: $a2
    daa                                           ; $5a94: $27
    inc b                                         ; $5a95: $04
    cp h                                          ; $5a96: $bc
    daa                                           ; $5a97: $27
    inc b                                         ; $5a98: $04
    call z, Call_000_0427                         ; $5a99: $cc $27 $04
    jp c, Jump_000_0427                           ; $5a9c: $da $27 $04

    add sp, $27                                   ; $5a9f: $e8 $27
    inc b                                         ; $5aa1: $04
    dec b                                         ; $5aa2: $05
    jr z, @+$06                                   ; $5aa3: $28 $04

    ld e, $28                                     ; $5aa5: $1e $28
    inc b                                         ; $5aa7: $04
    ld [hl], $28                                  ; $5aa8: $36 $28
    inc b                                         ; $5aaa: $04
    ld c, d                                       ; $5aab: $4a
    jr z, jr_065_5ab2                             ; $5aac: $28 $04

    ld h, l                                       ; $5aae: $65
    jr z, jr_065_5ab5                             ; $5aaf: $28 $04

    ld a, l                                       ; $5ab1: $7d

jr_065_5ab2:
    jr z, jr_065_5ab8                             ; $5ab2: $28 $04

    sub a                                         ; $5ab4: $97

jr_065_5ab5:
    jr z, jr_065_5abb                             ; $5ab5: $28 $04

    and h                                         ; $5ab7: $a4

jr_065_5ab8:
    jr z, jr_065_5abe                             ; $5ab8: $28 $04

    cp l                                          ; $5aba: $bd

jr_065_5abb:
    jr z, @+$06                                   ; $5abb: $28 $04

    rst $08                                       ; $5abd: $cf

jr_065_5abe:
    jr z, jr_065_5ac4                             ; $5abe: $28 $04

    add sp, $28                                   ; $5ac0: $e8 $28
    inc b                                         ; $5ac2: $04
    ld [bc], a                                    ; $5ac3: $02

jr_065_5ac4:
    add hl, hl                                    ; $5ac4: $29
    inc b                                         ; $5ac5: $04
    ld [de], a                                    ; $5ac6: $12
    add hl, hl                                    ; $5ac7: $29
    inc b                                         ; $5ac8: $04
    dec l                                         ; $5ac9: $2d
    add hl, hl                                    ; $5aca: $29
    inc b                                         ; $5acb: $04
    ld c, h                                       ; $5acc: $4c
    add hl, hl                                    ; $5acd: $29
    inc b                                         ; $5ace: $04
    ld h, e                                       ; $5acf: $63
    add hl, hl                                    ; $5ad0: $29
    inc b                                         ; $5ad1: $04
    halt                                          ; $5ad2: $76
    add hl, hl                                    ; $5ad3: $29
    inc b                                         ; $5ad4: $04
    adc d                                         ; $5ad5: $8a
    add hl, hl                                    ; $5ad6: $29
    inc b                                         ; $5ad7: $04
    sub l                                         ; $5ad8: $95
    add hl, hl                                    ; $5ad9: $29
    inc b                                         ; $5ada: $04
    and a                                         ; $5adb: $a7
    add hl, hl                                    ; $5adc: $29
    inc b                                         ; $5add: $04
    cp b                                          ; $5ade: $b8
    add hl, hl                                    ; $5adf: $29
    inc b                                         ; $5ae0: $04
    push bc                                       ; $5ae1: $c5
    add hl, hl                                    ; $5ae2: $29
    inc b                                         ; $5ae3: $04
    push de                                       ; $5ae4: $d5
    add hl, hl                                    ; $5ae5: $29
    inc b                                         ; $5ae6: $04
    push hl                                       ; $5ae7: $e5
    add hl, hl                                    ; $5ae8: $29
    inc b                                         ; $5ae9: $04
    ld hl, sp+$29                                 ; $5aea: $f8 $29
    inc b                                         ; $5aec: $04

Call_065_5aed:
    ld [$042a], sp                                ; $5aed: $08 $2a $04
    jr jr_065_5b1c                                ; $5af0: $18 $2a

    inc b                                         ; $5af2: $04
    jr z, jr_065_5b1f                             ; $5af3: $28 $2a

    inc b                                         ; $5af5: $04
    inc a                                         ; $5af6: $3c
    ld a, [hl+]                                   ; $5af7: $2a
    inc b                                         ; $5af8: $04
    ld d, [hl]                                    ; $5af9: $56
    ld a, [hl+]                                   ; $5afa: $2a
    inc b                                         ; $5afb: $04
    ld h, c                                       ; $5afc: $61
    ld a, [hl+]                                   ; $5afd: $2a
    inc b                                         ; $5afe: $04
    ld a, b                                       ; $5aff: $78
    ld a, [hl+]                                   ; $5b00: $2a
    inc b                                         ; $5b01: $04
    sub l                                         ; $5b02: $95
    ld a, [hl+]                                   ; $5b03: $2a
    inc b                                         ; $5b04: $04
    xor e                                         ; $5b05: $ab
    ld a, [hl+]                                   ; $5b06: $2a
    inc b                                         ; $5b07: $04
    call nz, Call_000_042a                        ; $5b08: $c4 $2a $04
    db $db                                        ; $5b0b: $db
    ld a, [hl+]                                   ; $5b0c: $2a
    inc b                                         ; $5b0d: $04
    db $ec                                        ; $5b0e: $ec
    ld a, [hl+]                                   ; $5b0f: $2a
    inc b                                         ; $5b10: $04
    db $fc                                        ; $5b11: $fc
    ld a, [hl+]                                   ; $5b12: $2a
    inc b                                         ; $5b13: $04
    inc d                                         ; $5b14: $14
    dec hl                                        ; $5b15: $2b
    inc b                                         ; $5b16: $04
    daa                                           ; $5b17: $27
    dec hl                                        ; $5b18: $2b
    inc b                                         ; $5b19: $04
    dec sp                                        ; $5b1a: $3b
    dec hl                                        ; $5b1b: $2b

jr_065_5b1c:
    inc b                                         ; $5b1c: $04
    ld b, [hl]                                    ; $5b1d: $46
    dec hl                                        ; $5b1e: $2b

jr_065_5b1f:
    inc b                                         ; $5b1f: $04
    rlca                                          ; $5b20: $07
    inc l                                         ; $5b21: $2c
    inc b                                         ; $5b22: $04
    ld l, $2c                                     ; $5b23: $2e $2c
    inc b                                         ; $5b25: $04
    ld a, [hl-]                                   ; $5b26: $3a
    inc l                                         ; $5b27: $2c
    inc b                                         ; $5b28: $04
    ld b, h                                       ; $5b29: $44
    inc l                                         ; $5b2a: $2c
    inc b                                         ; $5b2b: $04
    ld d, h                                       ; $5b2c: $54
    inc l                                         ; $5b2d: $2c
    inc b                                         ; $5b2e: $04
    ld h, h                                       ; $5b2f: $64
    inc l                                         ; $5b30: $2c
    inc b                                         ; $5b31: $04
    ld a, c                                       ; $5b32: $79
    inc l                                         ; $5b33: $2c
    inc b                                         ; $5b34: $04
    add l                                         ; $5b35: $85
    inc l                                         ; $5b36: $2c
    inc b                                         ; $5b37: $04
    sub h                                         ; $5b38: $94
    inc l                                         ; $5b39: $2c
    inc b                                         ; $5b3a: $04
    sbc [hl]                                      ; $5b3b: $9e
    inc l                                         ; $5b3c: $2c
    inc b                                         ; $5b3d: $04
    and l                                         ; $5b3e: $a5
    inc l                                         ; $5b3f: $2c
    inc b                                         ; $5b40: $04
    xor h                                         ; $5b41: $ac
    inc l                                         ; $5b42: $2c
    inc b                                         ; $5b43: $04
    or e                                          ; $5b44: $b3
    inc l                                         ; $5b45: $2c
    inc b                                         ; $5b46: $04
    cp d                                          ; $5b47: $ba
    inc l                                         ; $5b48: $2c
    inc b                                         ; $5b49: $04
    jp $042c                                      ; $5b4a: $c3 $2c $04


    rst $10                                       ; $5b4d: $d7
    inc l                                         ; $5b4e: $2c
    inc b                                         ; $5b4f: $04
    and $2c                                       ; $5b50: $e6 $2c
    inc b                                         ; $5b52: $04
    ld a, [c]                                     ; $5b53: $f2
    inc l                                         ; $5b54: $2c
    inc b                                         ; $5b55: $04
    rst $38                                       ; $5b56: $ff
    inc l                                         ; $5b57: $2c
    inc b                                         ; $5b58: $04
    dec bc                                        ; $5b59: $0b
    dec l                                         ; $5b5a: $2d
    inc b                                         ; $5b5b: $04
    dec de                                        ; $5b5c: $1b
    dec l                                         ; $5b5d: $2d
    inc b                                         ; $5b5e: $04
    daa                                           ; $5b5f: $27
    dec l                                         ; $5b60: $2d
    inc b                                         ; $5b61: $04
    cpl                                           ; $5b62: $2f
    dec l                                         ; $5b63: $2d
    inc b                                         ; $5b64: $04
    jr c, @+$2f                                   ; $5b65: $38 $2d

    inc b                                         ; $5b67: $04
    ccf                                           ; $5b68: $3f
    dec l                                         ; $5b69: $2d
    inc b                                         ; $5b6a: $04
    ld b, l                                       ; $5b6b: $45
    dec l                                         ; $5b6c: $2d
    inc b                                         ; $5b6d: $04
    ld d, d                                       ; $5b6e: $52
    dec l                                         ; $5b6f: $2d
    inc b                                         ; $5b70: $04
    ld e, l                                       ; $5b71: $5d
    dec l                                         ; $5b72: $2d
    inc b                                         ; $5b73: $04
    ld l, a                                       ; $5b74: $6f
    dec l                                         ; $5b75: $2d
    inc b                                         ; $5b76: $04
    ld a, b                                       ; $5b77: $78
    dec l                                         ; $5b78: $2d
    inc b                                         ; $5b79: $04
    add [hl]                                      ; $5b7a: $86
    dec l                                         ; $5b7b: $2d
    inc b                                         ; $5b7c: $04
    sub d                                         ; $5b7d: $92
    dec l                                         ; $5b7e: $2d
    inc b                                         ; $5b7f: $04
    sbc l                                         ; $5b80: $9d
    dec l                                         ; $5b81: $2d
    inc b                                         ; $5b82: $04
    and [hl]                                      ; $5b83: $a6
    dec l                                         ; $5b84: $2d
    inc b                                         ; $5b85: $04
    cp b                                          ; $5b86: $b8
    dec l                                         ; $5b87: $2d
    inc b                                         ; $5b88: $04
    cp a                                          ; $5b89: $bf
    dec l                                         ; $5b8a: $2d
    inc b                                         ; $5b8b: $04
    add $2d                                       ; $5b8c: $c6 $2d
    inc b                                         ; $5b8e: $04
    call Call_000_042d                            ; $5b8f: $cd $2d $04
    jp c, Jump_000_042d                           ; $5b92: $da $2d $04

    db $ec                                        ; $5b95: $ec
    dec l                                         ; $5b96: $2d
    inc b                                         ; $5b97: $04
    rst $30                                       ; $5b98: $f7
    dec l                                         ; $5b99: $2d
    inc b                                         ; $5b9a: $04
    ld [bc], a                                    ; $5b9b: $02
    ld l, $04                                     ; $5b9c: $2e $04
    ld c, $2e                                     ; $5b9e: $0e $2e
    inc b                                         ; $5ba0: $04
    dec e                                         ; $5ba1: $1d
    ld l, $04                                     ; $5ba2: $2e $04
    inc h                                         ; $5ba4: $24
    ld l, $04                                     ; $5ba5: $2e $04
    inc sp                                        ; $5ba7: $33
    ld l, $04                                     ; $5ba8: $2e $04
    dec a                                         ; $5baa: $3d
    ld l, $04                                     ; $5bab: $2e $04
    ld b, d                                       ; $5bad: $42
    ld l, $04                                     ; $5bae: $2e $04
    ld b, [hl]                                    ; $5bb0: $46
    ld l, $04                                     ; $5bb1: $2e $04
    ld d, e                                       ; $5bb3: $53
    ld l, $04                                     ; $5bb4: $2e $04
    ld a, c                                       ; $5bb6: $79
    ld l, $04                                     ; $5bb7: $2e $04
    add h                                         ; $5bb9: $84
    ld l, $04                                     ; $5bba: $2e $04
    adc a                                         ; $5bbc: $8f
    ld l, $04                                     ; $5bbd: $2e $04
    cp d                                          ; $5bbf: $ba
    ld l, $04                                     ; $5bc0: $2e $04
    db $db                                        ; $5bc2: $db
    ld l, $04                                     ; $5bc3: $2e $04
    xor $2e                                       ; $5bc5: $ee $2e
    inc b                                         ; $5bc7: $04
    ld bc, $042f                                  ; $5bc8: $01 $2f $04
    inc de                                        ; $5bcb: $13
    cpl                                           ; $5bcc: $2f
    inc b                                         ; $5bcd: $04
    dec h                                         ; $5bce: $25
    cpl                                           ; $5bcf: $2f
    inc b                                         ; $5bd0: $04
    ld a, [hl-]                                   ; $5bd1: $3a
    cpl                                           ; $5bd2: $2f
    inc b                                         ; $5bd3: $04
    ld e, l                                       ; $5bd4: $5d
    cpl                                           ; $5bd5: $2f
    inc b                                         ; $5bd6: $04
    ld [hl], l                                    ; $5bd7: $75
    cpl                                           ; $5bd8: $2f
    inc b                                         ; $5bd9: $04
    sub e                                         ; $5bda: $93
    cpl                                           ; $5bdb: $2f
    inc b                                         ; $5bdc: $04
    xor b                                         ; $5bdd: $a8
    cpl                                           ; $5bde: $2f
    inc b                                         ; $5bdf: $04
    or [hl]                                       ; $5be0: $b6
    cpl                                           ; $5be1: $2f
    inc b                                         ; $5be2: $04
    push bc                                       ; $5be3: $c5
    cpl                                           ; $5be4: $2f
    inc b                                         ; $5be5: $04
    xor $2f                                       ; $5be6: $ee $2f
    inc b                                         ; $5be8: $04
    cp $2f                                        ; $5be9: $fe $2f
    inc b                                         ; $5beb: $04
    dec d                                         ; $5bec: $15
    jr nc, jr_065_5bf3                            ; $5bed: $30 $04

    ld e, $30                                     ; $5bef: $1e $30
    inc b                                         ; $5bf1: $04
    daa                                           ; $5bf2: $27

jr_065_5bf3:
    jr nc, jr_065_5bf9                            ; $5bf3: $30 $04

    dec [hl]                                      ; $5bf5: $35
    jr nc, jr_065_5bfc                            ; $5bf6: $30 $04

    ld b, d                                       ; $5bf8: $42

jr_065_5bf9:
    jr nc, jr_065_5bff                            ; $5bf9: $30 $04

    ld c, [hl]                                    ; $5bfb: $4e

jr_065_5bfc:
    jr nc, jr_065_5c02                            ; $5bfc: $30 $04

    ld e, e                                       ; $5bfe: $5b

jr_065_5bff:
    jr nc, jr_065_5c05                            ; $5bff: $30 $04

    ld l, a                                       ; $5c01: $6f

jr_065_5c02:
    jr nc, jr_065_5c08                            ; $5c02: $30 $04

    add l                                         ; $5c04: $85

jr_065_5c05:
    jr nc, jr_065_5c0b                            ; $5c05: $30 $04

    and a                                         ; $5c07: $a7

jr_065_5c08:
    jr nc, jr_065_5c0e                            ; $5c08: $30 $04

    pop de                                        ; $5c0a: $d1

jr_065_5c0b:
    jr nc, jr_065_5c11                            ; $5c0b: $30 $04

    rst $30                                       ; $5c0d: $f7

jr_065_5c0e:
    jr nc, jr_065_5c14                            ; $5c0e: $30 $04

    dec bc                                        ; $5c10: $0b

jr_065_5c11:
    ld sp, $1b04                                  ; $5c11: $31 $04 $1b

jr_065_5c14:
    ld sp, $2a04                                  ; $5c14: $31 $04 $2a
    ld sp, $3604                                  ; $5c17: $31 $04 $36
    ld sp, $4e04                                  ; $5c1a: $31 $04 $4e
    ld sp, $5c04                                  ; $5c1d: $31 $04 $5c
    ld sp, $6904                                  ; $5c20: $31 $04 $69
    ld sp, $7904                                  ; $5c23: $31 $04 $79
    ld sp, $9b04                                  ; $5c26: $31 $04 $9b
    ld sp, $cc04                                  ; $5c29: $31 $04 $cc
    ld sp, $f404                                  ; $5c2c: $31 $04 $f4
    ld sp, $2004                                  ; $5c2f: $31 $04 $20
    ld [hl-], a                                   ; $5c32: $32
    inc b                                         ; $5c33: $04
    ld d, b                                       ; $5c34: $50
    ld [hl-], a                                   ; $5c35: $32
    inc b                                         ; $5c36: $04
    add a                                         ; $5c37: $87
    ld [hl-], a                                   ; $5c38: $32
    inc b                                         ; $5c39: $04
    xor h                                         ; $5c3a: $ac
    ld [hl-], a                                   ; $5c3b: $32
    inc b                                         ; $5c3c: $04
    ldh [$32], a                                  ; $5c3d: $e0 $32
    inc b                                         ; $5c3f: $04
    ld d, $33                                     ; $5c40: $16 $33
    inc b                                         ; $5c42: $04
    ld d, e                                       ; $5c43: $53
    inc sp                                        ; $5c44: $33
    inc b                                         ; $5c45: $04
    adc a                                         ; $5c46: $8f
    inc sp                                        ; $5c47: $33
    inc b                                         ; $5c48: $04
    cp d                                          ; $5c49: $ba
    inc sp                                        ; $5c4a: $33
    inc b                                         ; $5c4b: $04
    ldh a, [$33]                                  ; $5c4c: $f0 $33
    inc b                                         ; $5c4e: $04
    swap h                                        ; $5c4f: $cb $34
    inc b                                         ; $5c51: $04
    call nc, $0434                                ; $5c52: $d4 $34 $04
    ldh [$34], a                                  ; $5c55: $e0 $34
    inc b                                         ; $5c57: $04
    push hl                                       ; $5c58: $e5
    inc [hl]                                      ; $5c59: $34
    inc b                                         ; $5c5a: $04
    db $ed                                        ; $5c5b: $ed
    inc [hl]                                      ; $5c5c: $34
    inc b                                         ; $5c5d: $04
    ld sp, hl                                     ; $5c5e: $f9
    inc [hl]                                      ; $5c5f: $34
    inc b                                         ; $5c60: $04
    inc b                                         ; $5c61: $04
    dec [hl]                                      ; $5c62: $35
    inc b                                         ; $5c63: $04
    rrca                                          ; $5c64: $0f
    dec [hl]                                      ; $5c65: $35
    inc b                                         ; $5c66: $04
    ld a, [de]                                    ; $5c67: $1a
    dec [hl]                                      ; $5c68: $35
    inc b                                         ; $5c69: $04
    inc h                                         ; $5c6a: $24
    dec [hl]                                      ; $5c6b: $35
    inc b                                         ; $5c6c: $04
    inc l                                         ; $5c6d: $2c
    dec [hl]                                      ; $5c6e: $35
    inc b                                         ; $5c6f: $04
    jr c, jr_065_5ca7                             ; $5c70: $38 $35

    inc b                                         ; $5c72: $04
    ld a, $35                                     ; $5c73: $3e $35
    inc b                                         ; $5c75: $04
    ld b, e                                       ; $5c76: $43
    dec [hl]                                      ; $5c77: $35
    inc b                                         ; $5c78: $04
    ld c, b                                       ; $5c79: $48
    dec [hl]                                      ; $5c7a: $35
    inc b                                         ; $5c7b: $04
    ld c, l                                       ; $5c7c: $4d
    dec [hl]                                      ; $5c7d: $35
    inc b                                         ; $5c7e: $04
    ld d, a                                       ; $5c7f: $57
    dec [hl]                                      ; $5c80: $35
    inc b                                         ; $5c81: $04
    ld e, e                                       ; $5c82: $5b
    dec [hl]                                      ; $5c83: $35
    inc b                                         ; $5c84: $04
    ld h, h                                       ; $5c85: $64
    dec [hl]                                      ; $5c86: $35
    inc b                                         ; $5c87: $04
    ld l, [hl]                                    ; $5c88: $6e
    dec [hl]                                      ; $5c89: $35
    inc b                                         ; $5c8a: $04
    ld a, d                                       ; $5c8b: $7a
    dec [hl]                                      ; $5c8c: $35
    inc b                                         ; $5c8d: $04
    add c                                         ; $5c8e: $81
    dec [hl]                                      ; $5c8f: $35
    inc b                                         ; $5c90: $04
    add a                                         ; $5c91: $87
    dec [hl]                                      ; $5c92: $35
    inc b                                         ; $5c93: $04
    sub e                                         ; $5c94: $93
    dec [hl]                                      ; $5c95: $35
    inc b                                         ; $5c96: $04
    sbc a                                         ; $5c97: $9f
    dec [hl]                                      ; $5c98: $35
    inc b                                         ; $5c99: $04
    and h                                         ; $5c9a: $a4
    dec [hl]                                      ; $5c9b: $35
    inc b                                         ; $5c9c: $04
    xor e                                         ; $5c9d: $ab
    dec [hl]                                      ; $5c9e: $35
    inc b                                         ; $5c9f: $04
    or d                                          ; $5ca0: $b2
    dec [hl]                                      ; $5ca1: $35
    inc b                                         ; $5ca2: $04
    cp l                                          ; $5ca3: $bd
    dec [hl]                                      ; $5ca4: $35
    inc b                                         ; $5ca5: $04
    push bc                                       ; $5ca6: $c5

jr_065_5ca7:
    dec [hl]                                      ; $5ca7: $35
    inc b                                         ; $5ca8: $04
    swap l                                        ; $5ca9: $cb $35
    inc b                                         ; $5cab: $04
    push de                                       ; $5cac: $d5
    dec [hl]                                      ; $5cad: $35
    inc b                                         ; $5cae: $04
    ld [c], a                                     ; $5caf: $e2
    dec [hl]                                      ; $5cb0: $35
    inc b                                         ; $5cb1: $04
    ldh a, [$35]                                  ; $5cb2: $f0 $35
    inc b                                         ; $5cb4: $04
    ld hl, sp+$35                                 ; $5cb5: $f8 $35
    inc b                                         ; $5cb7: $04
    nop                                           ; $5cb8: $00
    ld [hl], $04                                  ; $5cb9: $36 $04
    inc c                                         ; $5cbb: $0c
    ld [hl], $04                                  ; $5cbc: $36 $04
    jr jr_065_5cf6                                ; $5cbe: $18 $36

    inc b                                         ; $5cc0: $04
    dec hl                                        ; $5cc1: $2b
    ld [hl], $04                                  ; $5cc2: $36 $04
    dec [hl]                                      ; $5cc4: $35
    ld [hl], $04                                  ; $5cc5: $36 $04
    ccf                                           ; $5cc7: $3f
    ld [hl], $04                                  ; $5cc8: $36 $04
    ld c, b                                       ; $5cca: $48
    ld [hl], $04                                  ; $5ccb: $36 $04
    ld d, c                                       ; $5ccd: $51
    ld [hl], $04                                  ; $5cce: $36 $04
    ld e, d                                       ; $5cd0: $5a
    ld [hl], $04                                  ; $5cd1: $36 $04
    ld h, d                                       ; $5cd3: $62
    ld [hl], $04                                  ; $5cd4: $36 $04
    ld l, d                                       ; $5cd6: $6a
    ld [hl], $04                                  ; $5cd7: $36 $04
    ld [hl], l                                    ; $5cd9: $75
    ld [hl], $04                                  ; $5cda: $36 $04
    ld a, h                                       ; $5cdc: $7c
    ld [hl], $04                                  ; $5cdd: $36 $04
    add e                                         ; $5cdf: $83
    ld [hl], $04                                  ; $5ce0: $36 $04
    sub b                                         ; $5ce2: $90
    ld [hl], $04                                  ; $5ce3: $36 $04
    sbc d                                         ; $5ce5: $9a
    ld [hl], $04                                  ; $5ce6: $36 $04
    and [hl]                                      ; $5ce8: $a6
    ld [hl], $04                                  ; $5ce9: $36 $04
    cp [hl]                                       ; $5ceb: $be
    ld [hl], $04                                  ; $5cec: $36 $04
    sbc $36                                       ; $5cee: $de $36
    inc b                                         ; $5cf0: $04
    daa                                           ; $5cf1: $27
    scf                                           ; $5cf2: $37
    inc b                                         ; $5cf3: $04
    ld e, b                                       ; $5cf4: $58
    scf                                           ; $5cf5: $37

jr_065_5cf6:
    inc b                                         ; $5cf6: $04
    add h                                         ; $5cf7: $84
    scf                                           ; $5cf8: $37
    inc b                                         ; $5cf9: $04
    xor b                                         ; $5cfa: $a8
    scf                                           ; $5cfb: $37
    inc b                                         ; $5cfc: $04
    reti                                          ; $5cfd: $d9


    scf                                           ; $5cfe: $37
    inc b                                         ; $5cff: $04
    jp hl                                         ; $5d00: $e9


    scf                                           ; $5d01: $37
    inc b                                         ; $5d02: $04
    dec de                                        ; $5d03: $1b
    jr c, jr_065_5d0a                             ; $5d04: $38 $04

    ld c, c                                       ; $5d06: $49
    jr c, jr_065_5d0d                             ; $5d07: $38 $04

    ld l, h                                       ; $5d09: $6c

jr_065_5d0a:
    jr c, jr_065_5d10                             ; $5d0a: $38 $04

    add a                                         ; $5d0c: $87

jr_065_5d0d:
    jr c, jr_065_5d13                             ; $5d0d: $38 $04

    or b                                          ; $5d0f: $b0

jr_065_5d10:
    jr c, @+$06                                   ; $5d10: $38 $04

    db $e3                                        ; $5d12: $e3

jr_065_5d13:
    jr c, jr_065_5d19                             ; $5d13: $38 $04

    jr jr_065_5d50                                ; $5d15: $18 $39

    inc b                                         ; $5d17: $04
    ld c, c                                       ; $5d18: $49

jr_065_5d19:
    add hl, sp                                    ; $5d19: $39
    inc b                                         ; $5d1a: $04
    ld a, d                                       ; $5d1b: $7a
    add hl, sp                                    ; $5d1c: $39
    inc b                                         ; $5d1d: $04
    xor c                                         ; $5d1e: $a9
    add hl, sp                                    ; $5d1f: $39
    inc b                                         ; $5d20: $04
    ret c                                         ; $5d21: $d8

    add hl, sp                                    ; $5d22: $39
    inc b                                         ; $5d23: $04
    ld hl, sp+$39                                 ; $5d24: $f8 $39
    inc b                                         ; $5d26: $04
    inc hl                                        ; $5d27: $23
    ld a, [hl-]                                   ; $5d28: $3a
    inc b                                         ; $5d29: $04
    ld d, e                                       ; $5d2a: $53
    ld a, [hl-]                                   ; $5d2b: $3a
    inc b                                         ; $5d2c: $04
    ld [hl], h                                    ; $5d2d: $74
    ld a, [hl-]                                   ; $5d2e: $3a
    inc b                                         ; $5d2f: $04
    or e                                          ; $5d30: $b3
    ld a, [hl-]                                   ; $5d31: $3a
    inc b                                         ; $5d32: $04
    adc $3a                                       ; $5d33: $ce $3a
    inc b                                         ; $5d35: $04
    ldh a, [$3a]                                  ; $5d36: $f0 $3a
    inc b                                         ; $5d38: $04
    dec d                                         ; $5d39: $15
    dec sp                                        ; $5d3a: $3b
    inc b                                         ; $5d3b: $04
    dec [hl]                                      ; $5d3c: $35
    dec sp                                        ; $5d3d: $3b
    inc b                                         ; $5d3e: $04
    ld d, c                                       ; $5d3f: $51
    dec sp                                        ; $5d40: $3b
    inc b                                         ; $5d41: $04
    ld a, [hl]                                    ; $5d42: $7e
    dec sp                                        ; $5d43: $3b
    inc b                                         ; $5d44: $04
    sbc [hl]                                      ; $5d45: $9e
    dec sp                                        ; $5d46: $3b
    inc b                                         ; $5d47: $04
    db $eb                                        ; $5d48: $eb
    dec sp                                        ; $5d49: $3b
    inc b                                         ; $5d4a: $04
    jr z, @+$3e                                   ; $5d4b: $28 $3c

    inc b                                         ; $5d4d: $04
    ld e, a                                       ; $5d4e: $5f
    inc a                                         ; $5d4f: $3c

jr_065_5d50:
    inc b                                         ; $5d50: $04
    ld [hl], l                                    ; $5d51: $75
    inc a                                         ; $5d52: $3c
    inc b                                         ; $5d53: $04
    cp c                                          ; $5d54: $b9
    inc a                                         ; $5d55: $3c
    inc b                                         ; $5d56: $04
    call c, Call_000_043c                         ; $5d57: $dc $3c $04
    or $3c                                        ; $5d5a: $f6 $3c
    inc b                                         ; $5d5c: $04
    inc sp                                        ; $5d5d: $33
    dec a                                         ; $5d5e: $3d
    inc b                                         ; $5d5f: $04
    ld e, h                                       ; $5d60: $5c
    dec a                                         ; $5d61: $3d
    inc b                                         ; $5d62: $04
    add a                                         ; $5d63: $87
    dec a                                         ; $5d64: $3d
    inc b                                         ; $5d65: $04
    cp d                                          ; $5d66: $ba
    dec a                                         ; $5d67: $3d
    inc b                                         ; $5d68: $04
    db $ed                                        ; $5d69: $ed
    dec a                                         ; $5d6a: $3d
    inc b                                         ; $5d6b: $04
    dec bc                                        ; $5d6c: $0b
    ld a, $04                                     ; $5d6d: $3e $04
    dec l                                         ; $5d6f: $2d
    ld a, $04                                     ; $5d70: $3e $04
    ld d, [hl]                                    ; $5d72: $56
    ld a, $04                                     ; $5d73: $3e $04
    adc b                                         ; $5d75: $88
    ld a, $04                                     ; $5d76: $3e $04
    cp c                                          ; $5d78: $b9
    ld a, $04                                     ; $5d79: $3e $04
    ldh a, [$3e]                                  ; $5d7b: $f0 $3e
    inc b                                         ; $5d7d: $04
    ld [hl+], a                                   ; $5d7e: $22
    ccf                                           ; $5d7f: $3f
    dec b                                         ; $5d80: $05
    ld bc, $0500                                  ; $5d81: $01 $00 $05
    jp Jump_000_0500                              ; $5d84: $c3 $00 $05


    dec l                                         ; $5d87: $2d
    ld bc, $b305                                  ; $5d88: $01 $05 $b3
    ld bc, $4505                                  ; $5d8b: $01 $05 $45

Call_065_5d8e:
    ld [bc], a                                    ; $5d8e: $02
    dec b                                         ; $5d8f: $05
    sbc h                                         ; $5d90: $9c
    ld [bc], a                                    ; $5d91: $02
    dec b                                         ; $5d92: $05
    ld l, b                                       ; $5d93: $68
    inc bc                                        ; $5d94: $03
    dec b                                         ; $5d95: $05
    pop af                                        ; $5d96: $f1
    inc bc                                        ; $5d97: $03
    dec b                                         ; $5d98: $05
    dec hl                                        ; $5d99: $2b
    dec b                                         ; $5d9a: $05
    dec b                                         ; $5d9b: $05
    cp h                                          ; $5d9c: $bc
    dec b                                         ; $5d9d: $05
    dec b                                         ; $5d9e: $05
    rst $28                                       ; $5d9f: $ef

Jump_065_5da0:
    dec b                                         ; $5da0: $05
    dec b                                         ; $5da1: $05
    ld b, e                                       ; $5da2: $43
    ld b, $05                                     ; $5da3: $06 $05
    ld h, l                                       ; $5da5: $65
    ld b, $05                                     ; $5da6: $06 $05
    sub a                                         ; $5da8: $97
    ld b, $05                                     ; $5da9: $06 $05
    cp b                                          ; $5dab: $b8
    ld b, $05                                     ; $5dac: $06 $05
    push hl                                       ; $5dae: $e5
    ld b, $05                                     ; $5daf: $06 $05
    ld bc, $0507                                  ; $5db1: $01 $07 $05
    inc hl                                        ; $5db4: $23
    rlca                                          ; $5db5: $07
    dec b                                         ; $5db6: $05
    ld b, l                                       ; $5db7: $45
    rlca                                          ; $5db8: $07
    dec b                                         ; $5db9: $05
    ld h, a                                       ; $5dba: $67
    rlca                                          ; $5dbb: $07
    dec b                                         ; $5dbc: $05
    ld a, l                                       ; $5dbd: $7d
    rlca                                          ; $5dbe: $07
    dec b                                         ; $5dbf: $05
    sbc a                                         ; $5dc0: $9f
    rlca                                          ; $5dc1: $07
    dec b                                         ; $5dc2: $05
    cp l                                          ; $5dc3: $bd
    rlca                                          ; $5dc4: $07
    dec b                                         ; $5dc5: $05

Call_065_5dc6:
    ret c                                         ; $5dc6: $d8

    rlca                                          ; $5dc7: $07
    dec b                                         ; $5dc8: $05
    db $fd                                        ; $5dc9: $fd
    rlca                                          ; $5dca: $07
    dec b                                         ; $5dcb: $05
    inc hl                                        ; $5dcc: $23
    ld [$5805], sp                                ; $5dcd: $08 $05 $58
    ld [$7705], sp                                ; $5dd0: $08 $05 $77
    ld [$ad05], sp                                ; $5dd3: $08 $05 $ad
    ld [$d605], sp                                ; $5dd6: $08 $05 $d6
    ld [$0b05], sp                                ; $5dd9: $08 $05 $0b
    add hl, bc                                    ; $5ddc: $09
    dec b                                         ; $5ddd: $05
    ld [hl-], a                                   ; $5dde: $32
    add hl, bc                                    ; $5ddf: $09
    dec b                                         ; $5de0: $05
    ld d, d                                       ; $5de1: $52
    add hl, bc                                    ; $5de2: $09
    dec b                                         ; $5de3: $05
    ld a, [hl]                                    ; $5de4: $7e
    add hl, bc                                    ; $5de5: $09
    dec b                                         ; $5de6: $05
    sbc e                                         ; $5de7: $9b
    add hl, bc                                    ; $5de8: $09
    dec b                                         ; $5de9: $05
    cp [hl]                                       ; $5dea: $be
    add hl, bc                                    ; $5deb: $09
    dec b                                         ; $5dec: $05
    push hl                                       ; $5ded: $e5
    add hl, bc                                    ; $5dee: $09
    dec b                                         ; $5def: $05
    inc b                                         ; $5df0: $04
    ld a, [bc]                                    ; $5df1: $0a
    dec b                                         ; $5df2: $05
    inc l                                         ; $5df3: $2c
    ld a, [bc]                                    ; $5df4: $0a
    dec b                                         ; $5df5: $05
    ld c, a                                       ; $5df6: $4f
    ld a, [bc]                                    ; $5df7: $0a
    dec b                                         ; $5df8: $05
    ld [hl], e                                    ; $5df9: $73
    ld a, [bc]                                    ; $5dfa: $0a
    dec b                                         ; $5dfb: $05
    sbc e                                         ; $5dfc: $9b
    ld a, [bc]                                    ; $5dfd: $0a
    dec b                                         ; $5dfe: $05
    ret                                           ; $5dff: $c9


    ld a, [bc]                                    ; $5e00: $0a
    dec b                                         ; $5e01: $05
    rst $30                                       ; $5e02: $f7
    ld a, [bc]                                    ; $5e03: $0a
    dec b                                         ; $5e04: $05
    dec e                                         ; $5e05: $1d
    dec bc                                        ; $5e06: $0b
    dec b                                         ; $5e07: $05
    ld [hl], $0b                                  ; $5e08: $36 $0b
    dec b                                         ; $5e0a: $05
    ld b, l                                       ; $5e0b: $45
    dec bc                                        ; $5e0c: $0b
    dec b                                         ; $5e0d: $05
    ld [hl], d                                    ; $5e0e: $72
    dec bc                                        ; $5e0f: $0b
    dec b                                         ; $5e10: $05
    sub e                                         ; $5e11: $93
    dec bc                                        ; $5e12: $0b
    dec b                                         ; $5e13: $05
    xor l                                         ; $5e14: $ad
    dec bc                                        ; $5e15: $0b
    dec b                                         ; $5e16: $05
    db $d3                                        ; $5e17: $d3
    dec bc                                        ; $5e18: $0b
    dec b                                         ; $5e19: $05
    cp $0b                                        ; $5e1a: $fe $0b
    dec b                                         ; $5e1c: $05
    rla                                           ; $5e1d: $17
    inc c                                         ; $5e1e: $0c
    dec b                                         ; $5e1f: $05
    ccf                                           ; $5e20: $3f
    inc c                                         ; $5e21: $0c
    dec b                                         ; $5e22: $05
    ld e, b                                       ; $5e23: $58
    inc c                                         ; $5e24: $0c
    dec b                                         ; $5e25: $05
    and e                                         ; $5e26: $a3
    inc c                                         ; $5e27: $0c
    dec b                                         ; $5e28: $05
    adc $0c                                       ; $5e29: $ce $0c
    dec b                                         ; $5e2b: $05
    db $fc                                        ; $5e2c: $fc
    inc c                                         ; $5e2d: $0c
    dec b                                         ; $5e2e: $05
    ld hl, $050d                                  ; $5e2f: $21 $0d $05
    ld d, h                                       ; $5e32: $54
    dec c                                         ; $5e33: $0d
    dec b                                         ; $5e34: $05
    add h                                         ; $5e35: $84
    dec c                                         ; $5e36: $0d
    dec b                                         ; $5e37: $05
    xor b                                         ; $5e38: $a8
    dec c                                         ; $5e39: $0d
    dec b                                         ; $5e3a: $05
    ld [$050d], a                                 ; $5e3b: $ea $0d $05
    rrca                                          ; $5e3e: $0f
    ld c, $05                                     ; $5e3f: $0e $05
    ld a, $0e                                     ; $5e41: $3e $0e
    dec b                                         ; $5e43: $05
    ld h, c                                       ; $5e44: $61
    ld c, $05                                     ; $5e45: $0e $05
    sub e                                         ; $5e47: $93
    ld c, $05                                     ; $5e48: $0e $05
    cp c                                          ; $5e4a: $b9
    ld c, $05                                     ; $5e4b: $0e $05
    di                                            ; $5e4d: $f3
    ld c, $05                                     ; $5e4e: $0e $05
    dec h                                         ; $5e50: $25
    rrca                                          ; $5e51: $0f
    dec b                                         ; $5e52: $05
    ld d, h                                       ; $5e53: $54
    rrca                                          ; $5e54: $0f
    dec b                                         ; $5e55: $05
    adc l                                         ; $5e56: $8d
    rrca                                          ; $5e57: $0f
    dec b                                         ; $5e58: $05
    and b                                         ; $5e59: $a0
    rrca                                          ; $5e5a: $0f
    dec b                                         ; $5e5b: $05
    and d                                         ; $5e5c: $a2
    rrca                                          ; $5e5d: $0f
    dec b                                         ; $5e5e: $05
    xor a                                         ; $5e5f: $af
    rrca                                          ; $5e60: $0f
    dec b                                         ; $5e61: $05
    cp c                                          ; $5e62: $b9
    rrca                                          ; $5e63: $0f
    dec b                                         ; $5e64: $05
    cp e                                          ; $5e65: $bb
    rrca                                          ; $5e66: $0f
    dec b                                         ; $5e67: $05
    ret                                           ; $5e68: $c9


    rrca                                          ; $5e69: $0f
    dec b                                         ; $5e6a: $05
    call nc, Call_000_050f                        ; $5e6b: $d4 $0f $05
    sub $0f                                       ; $5e6e: $d6 $0f
    dec b                                         ; $5e70: $05
    ld [c], a                                     ; $5e71: $e2
    rrca                                          ; $5e72: $0f
    dec b                                         ; $5e73: $05
    db $ec                                        ; $5e74: $ec
    rrca                                          ; $5e75: $0f
    dec b                                         ; $5e76: $05
    xor $0f                                       ; $5e77: $ee $0f
    dec b                                         ; $5e79: $05
    or $0f                                        ; $5e7a: $f6 $0f
    dec b                                         ; $5e7c: $05
    rst $38                                       ; $5e7d: $ff
    rrca                                          ; $5e7e: $0f
    dec b                                         ; $5e7f: $05
    add hl, bc                                    ; $5e80: $09
    db $10                                        ; $5e81: $10
    dec b                                         ; $5e82: $05
    dec d                                         ; $5e83: $15
    db $10                                        ; $5e84: $10
    dec b                                         ; $5e85: $05
    rra                                           ; $5e86: $1f
    db $10                                        ; $5e87: $10
    dec b                                         ; $5e88: $05
    ld hl, $0510                                  ; $5e89: $21 $10 $05
    inc l                                         ; $5e8c: $2c
    db $10                                        ; $5e8d: $10
    dec b                                         ; $5e8e: $05
    dec [hl]                                      ; $5e8f: $35
    db $10                                        ; $5e90: $10
    dec b                                         ; $5e91: $05
    dec a                                         ; $5e92: $3d
    db $10                                        ; $5e93: $10
    dec b                                         ; $5e94: $05
    ld b, a                                       ; $5e95: $47
    db $10                                        ; $5e96: $10
    dec b                                         ; $5e97: $05
    ld c, c                                       ; $5e98: $49
    db $10                                        ; $5e99: $10
    dec b                                         ; $5e9a: $05
    ld e, l                                       ; $5e9b: $5d
    db $10                                        ; $5e9c: $10
    dec b                                         ; $5e9d: $05
    ld h, a                                       ; $5e9e: $67
    db $10                                        ; $5e9f: $10
    dec b                                         ; $5ea0: $05

Jump_065_5ea1:
    ld l, c                                       ; $5ea1: $69
    db $10                                        ; $5ea2: $10
    dec b                                         ; $5ea3: $05
    ld [hl], l                                    ; $5ea4: $75
    db $10                                        ; $5ea5: $10
    dec b                                         ; $5ea6: $05
    ld a, l                                       ; $5ea7: $7d
    db $10                                        ; $5ea8: $10
    dec b                                         ; $5ea9: $05
    ld a, a                                       ; $5eaa: $7f
    db $10                                        ; $5eab: $10
    dec b                                         ; $5eac: $05
    adc a                                         ; $5ead: $8f
    db $10                                        ; $5eae: $10
    dec b                                         ; $5eaf: $05
    sub a                                         ; $5eb0: $97
    db $10                                        ; $5eb1: $10
    dec b                                         ; $5eb2: $05
    sbc a                                         ; $5eb3: $9f
    db $10                                        ; $5eb4: $10
    dec b                                         ; $5eb5: $05
    and [hl]                                      ; $5eb6: $a6
    db $10                                        ; $5eb7: $10
    dec b                                         ; $5eb8: $05
    xor b                                         ; $5eb9: $a8
    db $10                                        ; $5eba: $10
    dec b                                         ; $5ebb: $05
    xor l                                         ; $5ebc: $ad
    db $10                                        ; $5ebd: $10
    dec b                                         ; $5ebe: $05
    or a                                          ; $5ebf: $b7
    db $10                                        ; $5ec0: $10
    dec b                                         ; $5ec1: $05
    pop bc                                        ; $5ec2: $c1
    db $10                                        ; $5ec3: $10
    dec b                                         ; $5ec4: $05
    call z, Call_000_0510                         ; $5ec5: $cc $10 $05
    call nc, Call_000_0510                        ; $5ec8: $d4 $10 $05
    sub $10                                       ; $5ecb: $d6 $10
    dec b                                         ; $5ecd: $05
    ret c                                         ; $5ece: $d8

    db $10                                        ; $5ecf: $10
    dec b                                         ; $5ed0: $05
    xor $10                                       ; $5ed1: $ee $10
    dec b                                         ; $5ed3: $05
    ldh a, [rNR10]                                ; $5ed4: $f0 $10
    dec b                                         ; $5ed6: $05
    cp $10                                        ; $5ed7: $fe $10
    dec b                                         ; $5ed9: $05
    rlca                                          ; $5eda: $07
    ld de, $0f05                                  ; $5edb: $11 $05 $0f
    ld de, $1105                                  ; $5ede: $11 $05 $11
    ld de, $1d05                                  ; $5ee1: $11 $05 $1d
    ld de, $2705                                  ; $5ee4: $11 $05 $27
    ld de, $2905                                  ; $5ee7: $11 $05 $29
    ld de, $3505                                  ; $5eea: $11 $05 $35
    ld de, $3e05                                  ; $5eed: $11 $05 $3e
    ld de, $4005                                  ; $5ef0: $11 $05 $40
    ld de, $5b05                                  ; $5ef3: $11 $05 $5b
    ld de, $6705                                  ; $5ef6: $11 $05 $67
    ld de, $7105                                  ; $5ef9: $11 $05 $71
    ld de, $7805                                  ; $5efc: $11 $05 $78
    ld de, $8005                                  ; $5eff: $11 $05 $80
    ld de, $8b05                                  ; $5f02: $11 $05 $8b
    ld de, $9405                                  ; $5f05: $11 $05 $94
    ld de, $9605                                  ; $5f08: $11 $05 $96
    ld de, $9805                                  ; $5f0b: $11 $05 $98
    ld de, $9a05                                  ; $5f0e: $11 $05 $9a
    ld de, $ac05                                  ; $5f11: $11 $05 $ac
    ld de, $ae05                                  ; $5f14: $11 $05 $ae
    ld de, $bb05                                  ; $5f17: $11 $05 $bb
    ld de, $c305                                  ; $5f1a: $11 $05 $c3
    ld de, $ce05                                  ; $5f1d: $11 $05 $ce
    ld de, $d605                                  ; $5f20: $11 $05 $d6
    ld de, $e105                                  ; $5f23: $11 $05 $e1
    ld de, $ec05                                  ; $5f26: $11 $05 $ec
    ld de, $f505                                  ; $5f29: $11 $05 $f5
    ld de, $fe05                                  ; $5f2c: $11 $05 $fe
    ld de, $0005                                  ; $5f2f: $11 $05 $00
    ld [de], a                                    ; $5f32: $12
    dec b                                         ; $5f33: $05
    rrca                                          ; $5f34: $0f
    ld [de], a                                    ; $5f35: $12
    dec b                                         ; $5f36: $05
    ld d, $12                                     ; $5f37: $16 $12
    dec b                                         ; $5f39: $05
    jr jr_065_5f4e                                ; $5f3a: $18 $12

    dec b                                         ; $5f3c: $05
    ld h, $12                                     ; $5f3d: $26 $12
    dec b                                         ; $5f3f: $05
    ld l, $12                                     ; $5f40: $2e $12
    dec b                                         ; $5f42: $05
    jr nc, jr_065_5f57                            ; $5f43: $30 $12

    dec b                                         ; $5f45: $05
    add hl, sp                                    ; $5f46: $39
    ld [de], a                                    ; $5f47: $12
    dec b                                         ; $5f48: $05
    ld b, d                                       ; $5f49: $42
    ld [de], a                                    ; $5f4a: $12
    dec b                                         ; $5f4b: $05
    ld c, e                                       ; $5f4c: $4b
    ld [de], a                                    ; $5f4d: $12

jr_065_5f4e:
    dec b                                         ; $5f4e: $05
    ld d, h                                       ; $5f4f: $54
    ld [de], a                                    ; $5f50: $12
    dec b                                         ; $5f51: $05
    ld e, [hl]                                    ; $5f52: $5e
    ld [de], a                                    ; $5f53: $12
    dec b                                         ; $5f54: $05
    ld h, b                                       ; $5f55: $60
    ld [de], a                                    ; $5f56: $12

jr_065_5f57:
    dec b                                         ; $5f57: $05
    ld l, h                                       ; $5f58: $6c
    ld [de], a                                    ; $5f59: $12
    dec b                                         ; $5f5a: $05
    ld [hl], l                                    ; $5f5b: $75
    ld [de], a                                    ; $5f5c: $12
    dec b                                         ; $5f5d: $05
    ld a, a                                       ; $5f5e: $7f
    ld [de], a                                    ; $5f5f: $12
    dec b                                         ; $5f60: $05
    add [hl]                                      ; $5f61: $86
    ld [de], a                                    ; $5f62: $12
    dec b                                         ; $5f63: $05
    sub b                                         ; $5f64: $90
    ld [de], a                                    ; $5f65: $12
    dec b                                         ; $5f66: $05
    sbc c                                         ; $5f67: $99
    ld [de], a                                    ; $5f68: $12
    dec b                                         ; $5f69: $05
    and c                                         ; $5f6a: $a1
    ld [de], a                                    ; $5f6b: $12
    dec b                                         ; $5f6c: $05
    xor h                                         ; $5f6d: $ac
    ld [de], a                                    ; $5f6e: $12
    dec b                                         ; $5f6f: $05
    cp c                                          ; $5f70: $b9
    ld [de], a                                    ; $5f71: $12
    dec b                                         ; $5f72: $05
    jp nz, Jump_000_0512                          ; $5f73: $c2 $12 $05

    rl d                                          ; $5f76: $cb $12
    dec b                                         ; $5f78: $05
    call Call_000_0512                            ; $5f79: $cd $12 $05
    rst $10                                       ; $5f7c: $d7
    ld [de], a                                    ; $5f7d: $12
    dec b                                         ; $5f7e: $05
    sbc $12                                       ; $5f7f: $de $12
    dec b                                         ; $5f81: $05
    add sp, $12                                   ; $5f82: $e8 $12
    dec b                                         ; $5f84: $05
    pop af                                        ; $5f85: $f1
    ld [de], a                                    ; $5f86: $12
    dec b                                         ; $5f87: $05
    ld a, [$0512]                                 ; $5f88: $fa $12 $05
    db $fc                                        ; $5f8b: $fc
    ld [de], a                                    ; $5f8c: $12
    dec b                                         ; $5f8d: $05
    rla                                           ; $5f8e: $17
    inc de                                        ; $5f8f: $13
    dec b                                         ; $5f90: $05
    ld [hl+], a                                   ; $5f91: $22
    inc de                                        ; $5f92: $13
    dec b                                         ; $5f93: $05
    dec l                                         ; $5f94: $2d
    inc de                                        ; $5f95: $13
    dec b                                         ; $5f96: $05
    scf                                           ; $5f97: $37
    inc de                                        ; $5f98: $13
    dec b                                         ; $5f99: $05
    ld b, b                                       ; $5f9a: $40
    inc de                                        ; $5f9b: $13
    dec b                                         ; $5f9c: $05
    ld c, c                                       ; $5f9d: $49
    inc de                                        ; $5f9e: $13
    dec b                                         ; $5f9f: $05
    ld d, b                                       ; $5fa0: $50
    inc de                                        ; $5fa1: $13
    dec b                                         ; $5fa2: $05
    ld e, d                                       ; $5fa3: $5a
    inc de                                        ; $5fa4: $13
    dec b                                         ; $5fa5: $05
    ld h, e                                       ; $5fa6: $63
    inc de                                        ; $5fa7: $13
    dec b                                         ; $5fa8: $05
    ld l, d                                       ; $5fa9: $6a
    inc de                                        ; $5faa: $13
    dec b                                         ; $5fab: $05
    ld [hl], d                                    ; $5fac: $72
    inc de                                        ; $5fad: $13
    dec b                                         ; $5fae: $05
    ld a, d                                       ; $5faf: $7a
    inc de                                        ; $5fb0: $13
    dec b                                         ; $5fb1: $05
    add h                                         ; $5fb2: $84
    inc de                                        ; $5fb3: $13
    dec b                                         ; $5fb4: $05
    add [hl]                                      ; $5fb5: $86
    inc de                                        ; $5fb6: $13
    dec b                                         ; $5fb7: $05
    adc b                                         ; $5fb8: $88
    inc de                                        ; $5fb9: $13
    dec b                                         ; $5fba: $05
    adc d                                         ; $5fbb: $8a
    inc de                                        ; $5fbc: $13
    dec b                                         ; $5fbd: $05
    adc h                                         ; $5fbe: $8c
    inc de                                        ; $5fbf: $13
    dec b                                         ; $5fc0: $05
    adc [hl]                                      ; $5fc1: $8e
    inc de                                        ; $5fc2: $13
    dec b                                         ; $5fc3: $05
    sub b                                         ; $5fc4: $90
    inc de                                        ; $5fc5: $13
    dec b                                         ; $5fc6: $05
    sub d                                         ; $5fc7: $92
    inc de                                        ; $5fc8: $13
    dec b                                         ; $5fc9: $05
    sub h                                         ; $5fca: $94
    inc de                                        ; $5fcb: $13
    dec b                                         ; $5fcc: $05
    sub [hl]                                      ; $5fcd: $96
    inc de                                        ; $5fce: $13
    dec b                                         ; $5fcf: $05
    sbc b                                         ; $5fd0: $98
    inc de                                        ; $5fd1: $13
    dec b                                         ; $5fd2: $05
    sbc d                                         ; $5fd3: $9a
    inc de                                        ; $5fd4: $13
    dec b                                         ; $5fd5: $05
    sbc h                                         ; $5fd6: $9c
    inc de                                        ; $5fd7: $13
    dec b                                         ; $5fd8: $05
    sbc [hl]                                      ; $5fd9: $9e
    inc de                                        ; $5fda: $13
    dec b                                         ; $5fdb: $05
    and b                                         ; $5fdc: $a0
    inc de                                        ; $5fdd: $13
    dec b                                         ; $5fde: $05
    and d                                         ; $5fdf: $a2
    inc de                                        ; $5fe0: $13
    dec b                                         ; $5fe1: $05
    and h                                         ; $5fe2: $a4
    inc de                                        ; $5fe3: $13
    dec b                                         ; $5fe4: $05
    and [hl]                                      ; $5fe5: $a6
    inc de                                        ; $5fe6: $13
    dec b                                         ; $5fe7: $05
    xor b                                         ; $5fe8: $a8
    inc de                                        ; $5fe9: $13
    dec b                                         ; $5fea: $05
    xor d                                         ; $5feb: $aa
    inc de                                        ; $5fec: $13
    dec b                                         ; $5fed: $05
    xor h                                         ; $5fee: $ac
    inc de                                        ; $5fef: $13
    dec b                                         ; $5ff0: $05
    xor [hl]                                      ; $5ff1: $ae
    inc de                                        ; $5ff2: $13
    dec b                                         ; $5ff3: $05
    or b                                          ; $5ff4: $b0
    inc de                                        ; $5ff5: $13
    dec b                                         ; $5ff6: $05
    or d                                          ; $5ff7: $b2
    inc de                                        ; $5ff8: $13
    dec b                                         ; $5ff9: $05
    or h                                          ; $5ffa: $b4
    inc de                                        ; $5ffb: $13
    dec b                                         ; $5ffc: $05
    or [hl]                                       ; $5ffd: $b6
    inc de                                        ; $5ffe: $13
    dec b                                         ; $5fff: $05
    cp b                                          ; $6000: $b8
    inc de                                        ; $6001: $13
    dec b                                         ; $6002: $05
    cp d                                          ; $6003: $ba
    inc de                                        ; $6004: $13
    dec b                                         ; $6005: $05
    cp h                                          ; $6006: $bc
    inc de                                        ; $6007: $13
    dec b                                         ; $6008: $05
    cp [hl]                                       ; $6009: $be
    inc de                                        ; $600a: $13
    dec b                                         ; $600b: $05
    ret nz                                        ; $600c: $c0

    inc de                                        ; $600d: $13
    dec b                                         ; $600e: $05
    jp nz, $0513                                  ; $600f: $c2 $13 $05

    call nz, $0513                                ; $6012: $c4 $13 $05
    add $13                                       ; $6015: $c6 $13
    dec b                                         ; $6017: $05
    ret z                                         ; $6018: $c8

    inc de                                        ; $6019: $13
    dec b                                         ; $601a: $05
    sbc $13                                       ; $601b: $de $13
    dec b                                         ; $601d: $05
    db $e4                                        ; $601e: $e4
    inc de                                        ; $601f: $13
    dec b                                         ; $6020: $05
    ld [de], a                                    ; $6021: $12
    inc d                                         ; $6022: $14
    dec b                                         ; $6023: $05
    add hl, hl                                    ; $6024: $29
    inc d                                         ; $6025: $14
    dec b                                         ; $6026: $05
    ld a, h                                       ; $6027: $7c
    inc d                                         ; $6028: $14
    dec b                                         ; $6029: $05
    adc h                                         ; $602a: $8c
    inc d                                         ; $602b: $14
    dec b                                         ; $602c: $05
    call nc, $0514                                ; $602d: $d4 $14 $05
    cp $14                                        ; $6030: $fe $14
    dec b                                         ; $6032: $05
    ld d, l                                       ; $6033: $55
    dec d                                         ; $6034: $15
    dec b                                         ; $6035: $05
    ld l, b                                       ; $6036: $68
    dec d                                         ; $6037: $15
    dec b                                         ; $6038: $05
    sbc [hl]                                      ; $6039: $9e
    dec d                                         ; $603a: $15
    dec b                                         ; $603b: $05
    pop af                                        ; $603c: $f1
    dec d                                         ; $603d: $15
    dec b                                         ; $603e: $05
    dec b                                         ; $603f: $05
    ld d, $05                                     ; $6040: $16 $05
    ld sp, $0516                                  ; $6042: $31 $16 $05
    ld d, h                                       ; $6045: $54
    ld d, $05                                     ; $6046: $16 $05
    ld [hl], a                                    ; $6048: $77
    ld d, $05                                     ; $6049: $16 $05
    cp l                                          ; $604b: $bd
    ld d, $05                                     ; $604c: $16 $05
    rl [hl]                                       ; $604e: $cb $16
    dec b                                         ; $6050: $05
    pop hl                                        ; $6051: $e1
    ld d, $05                                     ; $6052: $16 $05
    push af                                       ; $6054: $f5
    ld d, $05                                     ; $6055: $16 $05
    ld a, [bc]                                    ; $6057: $0a
    rla                                           ; $6058: $17
    dec b                                         ; $6059: $05
    rra                                           ; $605a: $1f
    rla                                           ; $605b: $17
    dec b                                         ; $605c: $05
    inc a                                         ; $605d: $3c
    rla                                           ; $605e: $17
    dec b                                         ; $605f: $05
    add l                                         ; $6060: $85
    rla                                           ; $6061: $17
    dec b                                         ; $6062: $05
    sub d                                         ; $6063: $92
    rla                                           ; $6064: $17
    dec b                                         ; $6065: $05
    call c, Call_000_0517                         ; $6066: $dc $17 $05
    db $ec                                        ; $6069: $ec
    rla                                           ; $606a: $17
    dec b                                         ; $606b: $05
    inc bc                                        ; $606c: $03
    jr @+$07                                      ; $606d: $18 $05

    ld b, e                                       ; $606f: $43
    jr @+$07                                      ; $6070: $18 $05

    ld l, a                                       ; $6072: $6f
    jr @+$07                                      ; $6073: $18 $05

    add h                                         ; $6075: $84
    jr @+$07                                      ; $6076: $18 $05

    sub [hl]                                      ; $6078: $96
    jr @+$07                                      ; $6079: $18 $05

    cp e                                          ; $607b: $bb
    jr @+$07                                      ; $607c: $18 $05

    ret nc                                        ; $607e: $d0

    jr jr_065_6086                                ; $607f: $18 $05

    db $e3                                        ; $6081: $e3
    jr @+$07                                      ; $6082: $18 $05

    ldh a, [rNR23]                                ; $6084: $f0 $18

jr_065_6086:
    dec b                                         ; $6086: $05
    ld bc, $0519                                  ; $6087: $01 $19 $05
    ld [de], a                                    ; $608a: $12
    add hl, de                                    ; $608b: $19
    dec b                                         ; $608c: $05
    ld a, [de]                                    ; $608d: $1a
    add hl, de                                    ; $608e: $19
    dec b                                         ; $608f: $05
    daa                                           ; $6090: $27
    add hl, de                                    ; $6091: $19
    dec b                                         ; $6092: $05
    jr c, jr_065_60ae                             ; $6093: $38 $19

    dec b                                         ; $6095: $05
    ld c, c                                       ; $6096: $49
    add hl, de                                    ; $6097: $19
    dec b                                         ; $6098: $05
    ld e, d                                       ; $6099: $5a
    add hl, de                                    ; $609a: $19
    dec b                                         ; $609b: $05
    ld h, a                                       ; $609c: $67
    add hl, de                                    ; $609d: $19
    dec b                                         ; $609e: $05
    ld a, b                                       ; $609f: $78
    add hl, de                                    ; $60a0: $19
    dec b                                         ; $60a1: $05
    sub a                                         ; $60a2: $97
    add hl, de                                    ; $60a3: $19
    dec b                                         ; $60a4: $05
    and e                                         ; $60a5: $a3
    add hl, de                                    ; $60a6: $19
    dec b                                         ; $60a7: $05
    cp e                                          ; $60a8: $bb
    add hl, de                                    ; $60a9: $19
    dec b                                         ; $60aa: $05
    call $0519                                    ; $60ab: $cd $19 $05

jr_065_60ae:
    db $e4                                        ; $60ae: $e4
    add hl, de                                    ; $60af: $19
    dec b                                         ; $60b0: $05
    ei                                            ; $60b1: $fb
    add hl, de                                    ; $60b2: $19
    dec b                                         ; $60b3: $05
    dec c                                         ; $60b4: $0d
    ld a, [de]                                    ; $60b5: $1a
    dec b                                         ; $60b6: $05
    ld e, $1a                                     ; $60b7: $1e $1a
    dec b                                         ; $60b9: $05
    ld a, [hl+]                                   ; $60ba: $2a
    ld a, [de]                                    ; $60bb: $1a
    dec b                                         ; $60bc: $05
    ld c, l                                       ; $60bd: $4d
    ld a, [de]                                    ; $60be: $1a
    dec b                                         ; $60bf: $05
    ld e, [hl]                                    ; $60c0: $5e
    ld a, [de]                                    ; $60c1: $1a
    dec b                                         ; $60c2: $05
    ld [hl], h                                    ; $60c3: $74
    ld a, [de]                                    ; $60c4: $1a
    dec b                                         ; $60c5: $05
    adc d                                         ; $60c6: $8a
    ld a, [de]                                    ; $60c7: $1a
    dec b                                         ; $60c8: $05
    and b                                         ; $60c9: $a0
    ld a, [de]                                    ; $60ca: $1a
    dec b                                         ; $60cb: $05
    rst $00                                       ; $60cc: $c7
    ld a, [de]                                    ; $60cd: $1a
    dec b                                         ; $60ce: $05
    rst $10                                       ; $60cf: $d7
    ld a, [de]                                    ; $60d0: $1a
    dec b                                         ; $60d1: $05
    ld b, $1b                                     ; $60d2: $06 $1b
    dec b                                         ; $60d4: $05
    dec de                                        ; $60d5: $1b
    dec de                                        ; $60d6: $1b
    dec b                                         ; $60d7: $05
    ld sp, $051b                                  ; $60d8: $31 $1b $05
    ld c, l                                       ; $60db: $4d
    dec de                                        ; $60dc: $1b
    dec b                                         ; $60dd: $05
    ld l, e                                       ; $60de: $6b
    dec de                                        ; $60df: $1b
    dec b                                         ; $60e0: $05
    add e                                         ; $60e1: $83
    dec de                                        ; $60e2: $1b
    dec b                                         ; $60e3: $05
    sub [hl]                                      ; $60e4: $96
    dec de                                        ; $60e5: $1b
    dec b                                         ; $60e6: $05
    xor l                                         ; $60e7: $ad
    dec de                                        ; $60e8: $1b
    dec b                                         ; $60e9: $05
    push bc                                       ; $60ea: $c5
    dec de                                        ; $60eb: $1b
    dec b                                         ; $60ec: $05
    ret c                                         ; $60ed: $d8

    dec de                                        ; $60ee: $1b
    dec b                                         ; $60ef: $05
    ld [$051b], a                                 ; $60f0: $ea $1b $05
    ld bc, $051c                                  ; $60f3: $01 $1c $05
    jr jr_065_6114                                ; $60f6: $18 $1c

    dec b                                         ; $60f8: $05
    dec sp                                        ; $60f9: $3b
    inc e                                         ; $60fa: $1c
    dec b                                         ; $60fb: $05
    ld c, d                                       ; $60fc: $4a
    inc e                                         ; $60fd: $1c
    dec b                                         ; $60fe: $05
    ld e, [hl]                                    ; $60ff: $5e
    inc e                                         ; $6100: $1c
    dec b                                         ; $6101: $05
    ld [hl], d                                    ; $6102: $72
    inc e                                         ; $6103: $1c
    dec b                                         ; $6104: $05
    sub h                                         ; $6105: $94
    inc e                                         ; $6106: $1c
    dec b                                         ; $6107: $05
    xor e                                         ; $6108: $ab
    inc e                                         ; $6109: $1c
    dec b                                         ; $610a: $05
    push bc                                       ; $610b: $c5
    inc e                                         ; $610c: $1c
    dec b                                         ; $610d: $05
    rst $18                                       ; $610e: $df
    inc e                                         ; $610f: $1c
    dec b                                         ; $6110: $05
    db $f4                                        ; $6111: $f4
    inc e                                         ; $6112: $1c
    dec b                                         ; $6113: $05

jr_065_6114:
    ld d, d                                       ; $6114: $52
    dec e                                         ; $6115: $1d
    dec b                                         ; $6116: $05
    or e                                          ; $6117: $b3
    dec e                                         ; $6118: $1d
    dec b                                         ; $6119: $05
    jp nc, Jump_000_051d                          ; $611a: $d2 $1d $05

    db $fc                                        ; $611d: $fc
    dec e                                         ; $611e: $1d
    dec b                                         ; $611f: $05
    dec h                                         ; $6120: $25
    ld e, $05                                     ; $6121: $1e $05
    ld d, a                                       ; $6123: $57
    ld e, $05                                     ; $6124: $1e $05
    sub [hl]                                      ; $6126: $96
    ld e, $05                                     ; $6127: $1e $05
    cp a                                          ; $6129: $bf
    ld e, $05                                     ; $612a: $1e $05
    ld [c], a                                     ; $612c: $e2
    ld e, $05                                     ; $612d: $1e $05
    ld [bc], a                                    ; $612f: $02
    rra                                           ; $6130: $1f
    dec b                                         ; $6131: $05
    dec hl                                        ; $6132: $2b
    rra                                           ; $6133: $1f
    dec b                                         ; $6134: $05
    ld e, c                                       ; $6135: $59
    rra                                           ; $6136: $1f
    dec b                                         ; $6137: $05
    ld a, [hl]                                    ; $6138: $7e
    rra                                           ; $6139: $1f
    dec b                                         ; $613a: $05
    sub b                                         ; $613b: $90
    rra                                           ; $613c: $1f
    dec b                                         ; $613d: $05
    xor l                                         ; $613e: $ad
    rra                                           ; $613f: $1f
    dec b                                         ; $6140: $05
    push de                                       ; $6141: $d5
    rra                                           ; $6142: $1f
    dec b                                         ; $6143: $05
    inc d                                         ; $6144: $14
    jr nz, @+$07                                  ; $6145: $20 $05

    ld l, [hl]                                    ; $6147: $6e
    jr nz, @+$07                                  ; $6148: $20 $05

    xor b                                         ; $614a: $a8
    jr nz, jr_065_6152                            ; $614b: $20 $05

    call c, $0520                                 ; $614d: $dc $20 $05
    ld e, $21                                     ; $6150: $1e $21

jr_065_6152:
    dec b                                         ; $6152: $05
    ld d, l                                       ; $6153: $55
    ld hl, $c705                                  ; $6154: $21 $05 $c7
    ld hl, $2805                                  ; $6157: $21 $05 $28
    ld [hl+], a                                   ; $615a: $22
    dec b                                         ; $615b: $05
    sub e                                         ; $615c: $93
    ld [hl+], a                                   ; $615d: $22
    dec b                                         ; $615e: $05
    ld [de], a                                    ; $615f: $12
    inc hl                                        ; $6160: $23
    dec b                                         ; $6161: $05
    add a                                         ; $6162: $87
    inc hl                                        ; $6163: $23
    dec b                                         ; $6164: $05
    add hl, bc                                    ; $6165: $09
    inc h                                         ; $6166: $24
    dec b                                         ; $6167: $05
    ld l, l                                       ; $6168: $6d
    inc h                                         ; $6169: $24
    dec b                                         ; $616a: $05
    ldh a, [rNR50]                                ; $616b: $f0 $24
    dec b                                         ; $616d: $05
    ld d, a                                       ; $616e: $57
    dec h                                         ; $616f: $25
    dec b                                         ; $6170: $05
    reti                                          ; $6171: $d9


    dec h                                         ; $6172: $25
    dec b                                         ; $6173: $05
    dec h                                         ; $6174: $25
    ld h, $05                                     ; $6175: $26 $05
    sub e                                         ; $6177: $93
    ld h, $05                                     ; $6178: $26 $05
    ld hl, sp+$26                                 ; $617a: $f8 $26
    dec b                                         ; $617c: $05
    ld l, c                                       ; $617d: $69
    daa                                           ; $617e: $27
    dec b                                         ; $617f: $05
    rst $20                                       ; $6180: $e7
    daa                                           ; $6181: $27
    dec b                                         ; $6182: $05
    ld h, b                                       ; $6183: $60
    jr z, jr_065_618b                             ; $6184: $28 $05

    ret                                           ; $6186: $c9


    jr z, jr_065_618e                             ; $6187: $28 $05

    dec sp                                        ; $6189: $3b
    add hl, hl                                    ; $618a: $29

jr_065_618b:
    dec b                                         ; $618b: $05
    or l                                          ; $618c: $b5
    add hl, hl                                    ; $618d: $29

jr_065_618e:
    dec b                                         ; $618e: $05
    nop                                           ; $618f: $00
    ld a, [hl+]                                   ; $6190: $2a
    dec b                                         ; $6191: $05
    inc c                                         ; $6192: $0c
    ld a, [hl+]                                   ; $6193: $2a
    dec b                                         ; $6194: $05
    ld de, $052a                                  ; $6195: $11 $2a $05
    ld d, $2a                                     ; $6198: $16 $2a
    dec b                                         ; $619a: $05
    inc e                                         ; $619b: $1c
    ld a, [hl+]                                   ; $619c: $2a
    dec b                                         ; $619d: $05
    daa                                           ; $619e: $27
    ld a, [hl+]                                   ; $619f: $2a
    dec b                                         ; $61a0: $05
    inc sp                                        ; $61a1: $33
    ld a, [hl+]                                   ; $61a2: $2a
    dec b                                         ; $61a3: $05
    ld h, b                                       ; $61a4: $60
    ld a, [hl+]                                   ; $61a5: $2a
    dec b                                         ; $61a6: $05
    sbc l                                         ; $61a7: $9d
    ld a, [hl+]                                   ; $61a8: $2a
    dec b                                         ; $61a9: $05
    db $eb                                        ; $61aa: $eb
    ld a, [hl+]                                   ; $61ab: $2a
    dec b                                         ; $61ac: $05
    ld l, $2b                                     ; $61ad: $2e $2b
    dec b                                         ; $61af: $05
    ld a, d                                       ; $61b0: $7a
    dec hl                                        ; $61b1: $2b
    dec b                                         ; $61b2: $05
    xor d                                         ; $61b3: $aa
    dec hl                                        ; $61b4: $2b
    dec b                                         ; $61b5: $05
    inc b                                         ; $61b6: $04
    inc l                                         ; $61b7: $2c
    dec b                                         ; $61b8: $05
    ld c, h                                       ; $61b9: $4c
    inc l                                         ; $61ba: $2c
    dec b                                         ; $61bb: $05
    add a                                         ; $61bc: $87
    inc l                                         ; $61bd: $2c
    dec b                                         ; $61be: $05
    xor h                                         ; $61bf: $ac
    inc l                                         ; $61c0: $2c
    dec b                                         ; $61c1: $05
    rst $08                                       ; $61c2: $cf
    inc l                                         ; $61c3: $2c
    dec b                                         ; $61c4: $05
    rst $28                                       ; $61c5: $ef
    inc l                                         ; $61c6: $2c
    dec b                                         ; $61c7: $05
    jr jr_065_61f7                                ; $61c8: $18 $2d

    dec b                                         ; $61ca: $05
    inc [hl]                                      ; $61cb: $34
    dec l                                         ; $61cc: $2d
    dec b                                         ; $61cd: $05
    ld c, h                                       ; $61ce: $4c
    dec l                                         ; $61cf: $2d
    dec b                                         ; $61d0: $05
    ld h, a                                       ; $61d1: $67
    dec l                                         ; $61d2: $2d
    dec b                                         ; $61d3: $05
    sub a                                         ; $61d4: $97
    dec l                                         ; $61d5: $2d
    dec b                                         ; $61d6: $05
    xor c                                         ; $61d7: $a9
    dec l                                         ; $61d8: $2d
    dec b                                         ; $61d9: $05
    cp d                                          ; $61da: $ba
    dec l                                         ; $61db: $2d
    dec b                                         ; $61dc: $05
    sra l                                         ; $61dd: $cb $2d
    dec b                                         ; $61df: $05
    pop af                                        ; $61e0: $f1
    dec l                                         ; $61e1: $2d
    dec b                                         ; $61e2: $05
    ld a, [de]                                    ; $61e3: $1a
    ld l, $05                                     ; $61e4: $2e $05
    dec a                                         ; $61e6: $3d
    ld l, $05                                     ; $61e7: $2e $05
    ld e, b                                       ; $61e9: $58
    ld l, $05                                     ; $61ea: $2e $05
    sub b                                         ; $61ec: $90
    ld l, $05                                     ; $61ed: $2e $05
    xor l                                         ; $61ef: $ad
    ld l, $05                                     ; $61f0: $2e $05
    pop hl                                        ; $61f2: $e1
    ld l, $05                                     ; $61f3: $2e $05
    ld a, [bc]                                    ; $61f5: $0a
    cpl                                           ; $61f6: $2f

jr_065_61f7:
    dec b                                         ; $61f7: $05
    ld h, $2f                                     ; $61f8: $26 $2f
    dec b                                         ; $61fa: $05
    ld b, d                                       ; $61fb: $42
    cpl                                           ; $61fc: $2f
    dec b                                         ; $61fd: $05
    ld e, b                                       ; $61fe: $58
    cpl                                           ; $61ff: $2f
    dec b                                         ; $6200: $05
    ld l, e                                       ; $6201: $6b
    cpl                                           ; $6202: $2f
    dec b                                         ; $6203: $05
    add [hl]                                      ; $6204: $86
    cpl                                           ; $6205: $2f
    dec b                                         ; $6206: $05
    ld [c], a                                     ; $6207: $e2
    cpl                                           ; $6208: $2f
    dec b                                         ; $6209: $05
    add hl, bc                                    ; $620a: $09
    jr nc, @+$07                                  ; $620b: $30 $05

    cpl                                           ; $620d: $2f
    jr nc, @+$07                                  ; $620e: $30 $05

    dec sp                                        ; $6210: $3b
    jr nc, @+$07                                  ; $6211: $30 $05

    ld b, h                                       ; $6213: $44
    jr nc, @+$07                                  ; $6214: $30 $05

    ld c, e                                       ; $6216: $4b
    jr nc, @+$07                                  ; $6217: $30 $05

    ld d, c                                       ; $6219: $51
    jr nc, @+$07                                  ; $621a: $30 $05

    ld e, [hl]                                    ; $621c: $5e
    jr nc, @+$07                                  ; $621d: $30 $05

    ld h, l                                       ; $621f: $65
    jr nc, @+$07                                  ; $6220: $30 $05

    ld l, a                                       ; $6222: $6f
    jr nc, @+$07                                  ; $6223: $30 $05

    ld a, [hl]                                    ; $6225: $7e
    jr nc, @+$07                                  ; $6226: $30 $05

    adc [hl]                                      ; $6228: $8e
    jr nc, @+$07                                  ; $6229: $30 $05

    and h                                         ; $622b: $a4
    jr nc, @+$07                                  ; $622c: $30 $05

    xor [hl]                                      ; $622e: $ae
    jr nc, @+$07                                  ; $622f: $30 $05

    cp e                                          ; $6231: $bb
    jr nc, @+$07                                  ; $6232: $30 $05

    rst $00                                       ; $6234: $c7
    jr nc, @+$07                                  ; $6235: $30 $05

    db $db                                        ; $6237: $db
    jr nc, jr_065_623f                            ; $6238: $30 $05

    ld a, [c]                                     ; $623a: $f2
    jr nc, @+$07                                  ; $623b: $30 $05

    ld d, $31                                     ; $623d: $16 $31

jr_065_623f:
    dec b                                         ; $623f: $05
    add hl, hl                                    ; $6240: $29
    ld sp, $3e05                                  ; $6241: $31 $05 $3e
    ld sp, $5005                                  ; $6244: $31 $05 $50
    ld sp, $6305                                  ; $6247: $31 $05 $63
    ld sp, $8705                                  ; $624a: $31 $05 $87
    ld sp, $a505                                  ; $624d: $31 $05 $a5
    ld sp, $d805                                  ; $6250: $31 $05 $d8
    ld sp, $f105                                  ; $6253: $31 $05 $f1
    ld sp, $2405                                  ; $6256: $31 $05 $24
    ld [hl-], a                                   ; $6259: $32
    dec b                                         ; $625a: $05
    dec [hl]                                      ; $625b: $35
    ld [hl-], a                                   ; $625c: $32
    dec b                                         ; $625d: $05
    ld a, $32                                     ; $625e: $3e $32
    dec b                                         ; $6260: $05
    ld c, a                                       ; $6261: $4f
    ld [hl-], a                                   ; $6262: $32
    dec b                                         ; $6263: $05
    ld e, h                                       ; $6264: $5c
    ld [hl-], a                                   ; $6265: $32
    dec b                                         ; $6266: $05
    ld h, a                                       ; $6267: $67
    ld [hl-], a                                   ; $6268: $32
    dec b                                         ; $6269: $05
    and l                                         ; $626a: $a5
    ld [hl-], a                                   ; $626b: $32
    dec b                                         ; $626c: $05
    db $db                                        ; $626d: $db
    ld [hl-], a                                   ; $626e: $32
    dec b                                         ; $626f: $05
    ld d, h                                       ; $6270: $54
    inc sp                                        ; $6271: $33
    dec b                                         ; $6272: $05
    ld l, e                                       ; $6273: $6b
    inc sp                                        ; $6274: $33
    dec b                                         ; $6275: $05
    halt                                          ; $6276: $76
    inc sp                                        ; $6277: $33
    dec b                                         ; $6278: $05
    sbc b                                         ; $6279: $98
    inc sp                                        ; $627a: $33
    dec b                                         ; $627b: $05
    and d                                         ; $627c: $a2
    inc sp                                        ; $627d: $33
    dec b                                         ; $627e: $05

Call_065_627f:
    xor [hl]                                      ; $627f: $ae
    inc sp                                        ; $6280: $33
    dec b                                         ; $6281: $05
    or h                                          ; $6282: $b4
    inc sp                                        ; $6283: $33
    dec b                                         ; $6284: $05
    rst $00                                       ; $6285: $c7
    inc sp                                        ; $6286: $33
    dec b                                         ; $6287: $05
    sub $33                                       ; $6288: $d6 $33
    dec b                                         ; $628a: $05
    pop hl                                        ; $628b: $e1
    inc sp                                        ; $628c: $33
    dec b                                         ; $628d: $05
    add sp, $33                                   ; $628e: $e8 $33
    dec b                                         ; $6290: $05
    ldh a, [$33]                                  ; $6291: $f0 $33
    dec b                                         ; $6293: $05
    ld a, [$0533]                                 ; $6294: $fa $33 $05
    ld bc, $0534                                  ; $6297: $01 $34 $05
    inc bc                                        ; $629a: $03
    inc [hl]                                      ; $629b: $34
    dec b                                         ; $629c: $05
    dec b                                         ; $629d: $05
    inc [hl]                                      ; $629e: $34
    dec b                                         ; $629f: $05
    rlca                                          ; $62a0: $07
    inc [hl]                                      ; $62a1: $34
    dec b                                         ; $62a2: $05
    add hl, bc                                    ; $62a3: $09
    inc [hl]                                      ; $62a4: $34
    dec b                                         ; $62a5: $05
    dec bc                                        ; $62a6: $0b
    inc [hl]                                      ; $62a7: $34
    dec b                                         ; $62a8: $05
    dec c                                         ; $62a9: $0d
    inc [hl]                                      ; $62aa: $34
    dec b                                         ; $62ab: $05
    rrca                                          ; $62ac: $0f
    inc [hl]                                      ; $62ad: $34
    dec b                                         ; $62ae: $05
    ld de, $0534                                  ; $62af: $11 $34 $05
    inc de                                        ; $62b2: $13
    inc [hl]                                      ; $62b3: $34
    dec b                                         ; $62b4: $05
    dec d                                         ; $62b5: $15
    inc [hl]                                      ; $62b6: $34
    dec b                                         ; $62b7: $05
    rla                                           ; $62b8: $17
    inc [hl]                                      ; $62b9: $34
    dec b                                         ; $62ba: $05
    add hl, de                                    ; $62bb: $19
    inc [hl]                                      ; $62bc: $34
    dec b                                         ; $62bd: $05
    dec de                                        ; $62be: $1b
    inc [hl]                                      ; $62bf: $34
    dec b                                         ; $62c0: $05
    dec e                                         ; $62c1: $1d
    inc [hl]                                      ; $62c2: $34
    dec b                                         ; $62c3: $05
    rra                                           ; $62c4: $1f
    inc [hl]                                      ; $62c5: $34
    dec b                                         ; $62c6: $05
    ld hl, $0534                                  ; $62c7: $21 $34 $05
    inc hl                                        ; $62ca: $23
    inc [hl]                                      ; $62cb: $34
    dec b                                         ; $62cc: $05
    dec h                                         ; $62cd: $25
    inc [hl]                                      ; $62ce: $34
    dec b                                         ; $62cf: $05
    daa                                           ; $62d0: $27
    inc [hl]                                      ; $62d1: $34
    dec b                                         ; $62d2: $05
    add hl, hl                                    ; $62d3: $29
    inc [hl]                                      ; $62d4: $34
    dec b                                         ; $62d5: $05
    dec hl                                        ; $62d6: $2b
    inc [hl]                                      ; $62d7: $34
    dec b                                         ; $62d8: $05
    dec l                                         ; $62d9: $2d
    inc [hl]                                      ; $62da: $34
    dec b                                         ; $62db: $05
    cpl                                           ; $62dc: $2f
    inc [hl]                                      ; $62dd: $34
    dec b                                         ; $62de: $05
    ld sp, $0534                                  ; $62df: $31 $34 $05
    inc sp                                        ; $62e2: $33
    inc [hl]                                      ; $62e3: $34
    dec b                                         ; $62e4: $05
    dec [hl]                                      ; $62e5: $35
    inc [hl]                                      ; $62e6: $34
    dec b                                         ; $62e7: $05
    scf                                           ; $62e8: $37
    inc [hl]                                      ; $62e9: $34
    dec b                                         ; $62ea: $05

Call_065_62eb:
    add hl, sp                                    ; $62eb: $39
    inc [hl]                                      ; $62ec: $34
    dec b                                         ; $62ed: $05
    dec sp                                        ; $62ee: $3b
    inc [hl]                                      ; $62ef: $34
    dec b                                         ; $62f0: $05
    dec a                                         ; $62f1: $3d
    inc [hl]                                      ; $62f2: $34
    dec b                                         ; $62f3: $05
    ccf                                           ; $62f4: $3f
    inc [hl]                                      ; $62f5: $34
    dec b                                         ; $62f6: $05
    ld b, c                                       ; $62f7: $41
    inc [hl]                                      ; $62f8: $34
    dec b                                         ; $62f9: $05
    ld b, e                                       ; $62fa: $43
    inc [hl]                                      ; $62fb: $34
    dec b                                         ; $62fc: $05
    ld b, l                                       ; $62fd: $45
    inc [hl]                                      ; $62fe: $34
    dec b                                         ; $62ff: $05
    ld b, a                                       ; $6300: $47
    inc [hl]                                      ; $6301: $34
    dec b                                         ; $6302: $05
    ld c, c                                       ; $6303: $49
    inc [hl]                                      ; $6304: $34
    dec b                                         ; $6305: $05
    ld c, e                                       ; $6306: $4b
    inc [hl]                                      ; $6307: $34
    dec b                                         ; $6308: $05
    ld c, l                                       ; $6309: $4d
    inc [hl]                                      ; $630a: $34
    dec b                                         ; $630b: $05
    ld c, a                                       ; $630c: $4f
    inc [hl]                                      ; $630d: $34
    dec b                                         ; $630e: $05
    ld d, c                                       ; $630f: $51
    inc [hl]                                      ; $6310: $34
    dec b                                         ; $6311: $05
    ld d, e                                       ; $6312: $53
    inc [hl]                                      ; $6313: $34
    dec b                                         ; $6314: $05
    ld d, l                                       ; $6315: $55
    inc [hl]                                      ; $6316: $34
    dec b                                         ; $6317: $05
    ld e, h                                       ; $6318: $5c
    inc [hl]                                      ; $6319: $34
    dec b                                         ; $631a: $05
    ld l, c                                       ; $631b: $69
    inc [hl]                                      ; $631c: $34
    dec b                                         ; $631d: $05
    ld a, d                                       ; $631e: $7a
    inc [hl]                                      ; $631f: $34
    dec b                                         ; $6320: $05
    add l                                         ; $6321: $85
    inc [hl]                                      ; $6322: $34
    dec b                                         ; $6323: $05
    sub b                                         ; $6324: $90
    inc [hl]                                      ; $6325: $34
    dec b                                         ; $6326: $05
    sbc h                                         ; $6327: $9c
    inc [hl]                                      ; $6328: $34
    dec b                                         ; $6329: $05
    xor e                                         ; $632a: $ab
    inc [hl]                                      ; $632b: $34
    dec b                                         ; $632c: $05
    xor l                                         ; $632d: $ad
    inc [hl]                                      ; $632e: $34
    dec b                                         ; $632f: $05
    xor a                                         ; $6330: $af
    inc [hl]                                      ; $6331: $34
    dec b                                         ; $6332: $05
    or c                                          ; $6333: $b1
    inc [hl]                                      ; $6334: $34
    dec b                                         ; $6335: $05
    or e                                          ; $6336: $b3
    inc [hl]                                      ; $6337: $34
    dec b                                         ; $6338: $05
    or l                                          ; $6339: $b5
    inc [hl]                                      ; $633a: $34
    dec b                                         ; $633b: $05
    or a                                          ; $633c: $b7
    inc [hl]                                      ; $633d: $34
    dec b                                         ; $633e: $05
    cp c                                          ; $633f: $b9
    inc [hl]                                      ; $6340: $34
    dec b                                         ; $6341: $05
    cp e                                          ; $6342: $bb
    inc [hl]                                      ; $6343: $34
    dec b                                         ; $6344: $05
    cp l                                          ; $6345: $bd
    inc [hl]                                      ; $6346: $34
    dec b                                         ; $6347: $05
    cp a                                          ; $6348: $bf
    inc [hl]                                      ; $6349: $34
    dec b                                         ; $634a: $05
    pop bc                                        ; $634b: $c1
    inc [hl]                                      ; $634c: $34
    dec b                                         ; $634d: $05
    adc $34                                       ; $634e: $ce $34
    dec b                                         ; $6350: $05
    ret nc                                        ; $6351: $d0

    inc [hl]                                      ; $6352: $34
    dec b                                         ; $6353: $05
    jp nc, $0534                                  ; $6354: $d2 $34 $05

    call nc, $0534                                ; $6357: $d4 $34 $05
    sub $34                                       ; $635a: $d6 $34
    dec b                                         ; $635c: $05
    ret c                                         ; $635d: $d8

    inc [hl]                                      ; $635e: $34
    dec b                                         ; $635f: $05
    jp c, $0534                                   ; $6360: $da $34 $05

    call c, $0534                                 ; $6363: $dc $34 $05
    sbc $34                                       ; $6366: $de $34
    dec b                                         ; $6368: $05
    ldh [$34], a                                  ; $6369: $e0 $34
    dec b                                         ; $636b: $05
    ld [c], a                                     ; $636c: $e2
    inc [hl]                                      ; $636d: $34
    dec b                                         ; $636e: $05
    db $e4                                        ; $636f: $e4
    inc [hl]                                      ; $6370: $34
    dec b                                         ; $6371: $05
    and $34                                       ; $6372: $e6 $34
    dec b                                         ; $6374: $05
    add sp, $34                                   ; $6375: $e8 $34
    dec b                                         ; $6377: $05
    ld [$0534], a                                 ; $6378: $ea $34 $05
    db $ec                                        ; $637b: $ec
    inc [hl]                                      ; $637c: $34
    dec b                                         ; $637d: $05
    xor $34                                       ; $637e: $ee $34
    dec b                                         ; $6380: $05
    ldh a, [$34]                                  ; $6381: $f0 $34
    dec b                                         ; $6383: $05
    ld a, [c]                                     ; $6384: $f2
    inc [hl]                                      ; $6385: $34
    dec b                                         ; $6386: $05
    db $f4                                        ; $6387: $f4
    inc [hl]                                      ; $6388: $34
    dec b                                         ; $6389: $05
    or $34                                        ; $638a: $f6 $34
    dec b                                         ; $638c: $05
    ld hl, sp+$34                                 ; $638d: $f8 $34
    dec b                                         ; $638f: $05
    rlca                                          ; $6390: $07
    dec [hl]                                      ; $6391: $35
    dec b                                         ; $6392: $05
    add hl, bc                                    ; $6393: $09
    dec [hl]                                      ; $6394: $35
    dec b                                         ; $6395: $05
    ld d, $35                                     ; $6396: $16 $35
    dec b                                         ; $6398: $05
    inc hl                                        ; $6399: $23
    dec [hl]                                      ; $639a: $35
    dec b                                         ; $639b: $05
    cpl                                           ; $639c: $2f
    dec [hl]                                      ; $639d: $35
    dec b                                         ; $639e: $05
    ld b, b                                       ; $639f: $40
    dec [hl]                                      ; $63a0: $35
    dec b                                         ; $63a1: $05
    ld b, d                                       ; $63a2: $42
    dec [hl]                                      ; $63a3: $35
    dec b                                         ; $63a4: $05
    ld b, h                                       ; $63a5: $44
    dec [hl]                                      ; $63a6: $35
    dec b                                         ; $63a7: $05
    ld b, [hl]                                    ; $63a8: $46
    dec [hl]                                      ; $63a9: $35
    dec b                                         ; $63aa: $05
    ld c, b                                       ; $63ab: $48
    dec [hl]                                      ; $63ac: $35
    dec b                                         ; $63ad: $05
    ld c, d                                       ; $63ae: $4a
    dec [hl]                                      ; $63af: $35
    dec b                                         ; $63b0: $05
    ld c, h                                       ; $63b1: $4c
    dec [hl]                                      ; $63b2: $35
    dec b                                         ; $63b3: $05
    ld c, [hl]                                    ; $63b4: $4e
    dec [hl]                                      ; $63b5: $35
    dec b                                         ; $63b6: $05
    ld d, b                                       ; $63b7: $50
    dec [hl]                                      ; $63b8: $35
    dec b                                         ; $63b9: $05
    ld d, d                                       ; $63ba: $52
    dec [hl]                                      ; $63bb: $35
    dec b                                         ; $63bc: $05
    ld d, h                                       ; $63bd: $54
    dec [hl]                                      ; $63be: $35
    dec b                                         ; $63bf: $05
    ld d, [hl]                                    ; $63c0: $56
    dec [hl]                                      ; $63c1: $35
    dec b                                         ; $63c2: $05
    ld e, b                                       ; $63c3: $58
    dec [hl]                                      ; $63c4: $35
    dec b                                         ; $63c5: $05
    ld e, d                                       ; $63c6: $5a
    dec [hl]                                      ; $63c7: $35
    dec b                                         ; $63c8: $05
    ld e, h                                       ; $63c9: $5c
    dec [hl]                                      ; $63ca: $35
    dec b                                         ; $63cb: $05
    ld e, [hl]                                    ; $63cc: $5e

Jump_065_63cd:
    dec [hl]                                      ; $63cd: $35
    dec b                                         ; $63ce: $05
    ld h, b                                       ; $63cf: $60
    dec [hl]                                      ; $63d0: $35
    dec b                                         ; $63d1: $05
    ld h, d                                       ; $63d2: $62
    dec [hl]                                      ; $63d3: $35
    dec b                                         ; $63d4: $05
    ld h, h                                       ; $63d5: $64
    dec [hl]                                      ; $63d6: $35
    dec b                                         ; $63d7: $05
    ld l, c                                       ; $63d8: $69
    dec [hl]                                      ; $63d9: $35
    dec b                                         ; $63da: $05
    ld l, e                                       ; $63db: $6b
    dec [hl]                                      ; $63dc: $35
    dec b                                         ; $63dd: $05
    ld l, l                                       ; $63de: $6d
    dec [hl]                                      ; $63df: $35
    dec b                                         ; $63e0: $05
    ld l, a                                       ; $63e1: $6f
    dec [hl]                                      ; $63e2: $35
    dec b                                         ; $63e3: $05
    ld [hl], c                                    ; $63e4: $71
    dec [hl]                                      ; $63e5: $35
    ld l, c                                       ; $63e6: $69
    ld h, a                                       ; $63e7: $67
    ld l, b                                       ; $63e8: $68
    add d                                         ; $63e9: $82
    add l                                         ; $63ea: $85
    add [hl]                                      ; $63eb: $86
    adc h                                         ; $63ec: $8c
    adc l                                         ; $63ed: $8d
    adc a                                         ; $63ee: $8f
    sub b                                         ; $63ef: $90
    sub c                                         ; $63f0: $91
    sub d                                         ; $63f1: $92
    sub [hl]                                      ; $63f2: $96
    sbc b                                         ; $63f3: $98
    sbc c                                         ; $63f4: $99
    sbc d                                         ; $63f5: $9a
    sbc e                                         ; $63f6: $9b
    sbc h                                         ; $63f7: $9c
    and e                                         ; $63f8: $a3
    and [hl]                                      ; $63f9: $a6
    and a                                         ; $63fa: $a7
    xor b                                         ; $63fb: $a8
    xor c                                         ; $63fc: $a9
    xor e                                         ; $63fd: $ab
    xor a                                         ; $63fe: $af
    or b                                          ; $63ff: $b0
    or c                                          ; $6400: $b1
    or d                                          ; $6401: $b2
    or e                                          ; $6402: $b3
    or h                                          ; $6403: $b4
    or l                                          ; $6404: $b5
    or [hl]                                       ; $6405: $b6
    or a                                          ; $6406: $b7
    cp b                                          ; $6407: $b8
    cp c                                          ; $6408: $b9
    cp d                                          ; $6409: $ba
    cp e                                          ; $640a: $bb
    cp h                                          ; $640b: $bc
    cp l                                          ; $640c: $bd
    cp [hl]                                       ; $640d: $be
    ret nz                                        ; $640e: $c0

    jp nz, $c6c4                                  ; $640f: $c2 $c4 $c6

    rst $00                                       ; $6412: $c7
    ret                                           ; $6413: $c9


    jp z, $cccb                                   ; $6414: $ca $cb $cc

    pop de                                        ; $6417: $d1

jr_065_6418:
    jp nc, $d5d4                                  ; $6418: $d2 $d4 $d5

    sub $d7                                       ; $641b: $d6 $d7
    ret c                                         ; $641d: $d8

    reti                                          ; $641e: $d9


    jp c, $dfdd                                   ; $641f: $da $dd $df

    ldh [$ea], a                                  ; $6422: $e0 $ea
    db $eb                                        ; $6424: $eb
    rst $30                                       ; $6425: $f7
    ld hl, sp-$02                                 ; $6426: $f8 $fe
    nop                                           ; $6428: $00
    add c                                         ; $6429: $81
    sbc l                                         ; $642a: $9d
    and c                                         ; $642b: $a1
    xor l                                         ; $642c: $ad
    cp a                                          ; $642d: $bf
    jp $cdc8                                      ; $642e: $c3 $c8 $cd


    adc $cf                                       ; $6431: $ce $cf
    db $d3                                        ; $6433: $d3
    ld sp, hl                                     ; $6434: $f9
    ld a, [$0201]                                 ; $6435: $fa $01 $02
    inc bc                                        ; $6438: $03
    inc b                                         ; $6439: $04
    dec b                                         ; $643a: $05
    ld b, $07                                     ; $643b: $06 $07
    ld [$0a09], sp                                ; $643d: $08 $09 $0a
    dec bc                                        ; $6440: $0b
    inc c                                         ; $6441: $0c
    dec c                                         ; $6442: $0d
    ld c, $0f                                     ; $6443: $0e $0f
    db $10                                        ; $6445: $10
    ld de, $1312                                  ; $6446: $11 $12 $13
    inc d                                         ; $6449: $14
    dec d                                         ; $644a: $15
    ld d, $17                                     ; $644b: $16 $17
    jr @+$1b                                      ; $644d: $18 $19

    ld a, [de]                                    ; $644f: $1a
    dec de                                        ; $6450: $1b
    inc e                                         ; $6451: $1c
    dec e                                         ; $6452: $1d
    ld e, $1f                                     ; $6453: $1e $1f
    jr nz, jr_065_6418                            ; $6455: $20 $c1

    push bc                                       ; $6457: $c5
    ret nc                                        ; $6458: $d0

    ei                                            ; $6459: $fb
    ld hl, $2322                                  ; $645a: $21 $22 $23
    inc h                                         ; $645d: $24
    dec h                                         ; $645e: $25
    ld h, $27                                     ; $645f: $26 $27
    jr z, jr_065_648c                             ; $6461: $28 $29

    ld a, [hl+]                                   ; $6463: $2a
    dec hl                                        ; $6464: $2b
    inc l                                         ; $6465: $2c
    dec l                                         ; $6466: $2d
    ld l, $2f                                     ; $6467: $2e $2f
    jr nc, jr_065_649c                            ; $6469: $30 $31

    ld [hl-], a                                   ; $646b: $32
    inc sp                                        ; $646c: $33
    inc [hl]                                      ; $646d: $34
    dec [hl]                                      ; $646e: $35
    ld [hl], $97                                  ; $646f: $36 $97
    xor h                                         ; $6471: $ac
    scf                                           ; $6472: $37
    ld [c], a                                     ; $6473: $e2
    and $38                                       ; $6474: $e6 $38
    add sp, -$0f                                  ; $6476: $e8 $f1
    rst $20                                       ; $6478: $e7
    or $39                                        ; $6479: $f6 $39
    ld a, [hl-]                                   ; $647b: $3a
    dec sp                                        ; $647c: $3b
    inc a                                         ; $647d: $3c
    dec a                                         ; $647e: $3d
    ld a, $3f                                     ; $647f: $3e $3f
    ld b, b                                       ; $6481: $40
    ld b, c                                       ; $6482: $41
    ld b, d                                       ; $6483: $42
    ld b, e                                       ; $6484: $43
    ld b, h                                       ; $6485: $44
    ld b, l                                       ; $6486: $45
    ld b, [hl]                                    ; $6487: $46
    ldh a, [rBGP]                                 ; $6488: $f0 $47
    ld c, b                                       ; $648a: $48
    db $ec                                        ; $648b: $ec

jr_065_648c:
    ld c, c                                       ; $648c: $49
    ld c, d                                       ; $648d: $4a
    ld c, e                                       ; $648e: $4b
    ld c, h                                       ; $648f: $4c
    ld c, l                                       ; $6490: $4d
    ld c, [hl]                                    ; $6491: $4e
    xor [hl]                                      ; $6492: $ae
    rst $38                                       ; $6493: $ff
    db $e3                                        ; $6494: $e3
    ld c, a                                       ; $6495: $4f
    db $ed                                        ; $6496: $ed
    push af                                       ; $6497: $f5
    ld d, b                                       ; $6498: $50
    db $e4                                        ; $6499: $e4
    xor $51                                       ; $649a: $ee $51

jr_065_649c:
    db $f4                                        ; $649c: $f4
    ld d, d                                       ; $649d: $52
    ld d, e                                       ; $649e: $53
    ld d, h                                       ; $649f: $54
    ld d, l                                       ; $64a0: $55
    jp hl                                         ; $64a1: $e9


    ld d, [hl]                                    ; $64a2: $56
    ld d, a                                       ; $64a3: $57
    di                                            ; $64a4: $f3
    ld a, [c]                                     ; $64a5: $f2
    ld e, b                                       ; $64a6: $58
    ld e, c                                       ; $64a7: $59
    ld e, d                                       ; $64a8: $5a
    rst $28                                       ; $64a9: $ef
    ld e, e                                       ; $64aa: $5b
    ld e, h                                       ; $64ab: $5c
    ld e, l                                       ; $64ac: $5d
    push hl                                       ; $64ad: $e5
    pop hl                                        ; $64ae: $e1
    ld e, [hl]                                    ; $64af: $5e
    ld e, a                                       ; $64b0: $5f
    ld h, b                                       ; $64b1: $60
    and b                                         ; $64b2: $a0
    ld h, c                                       ; $64b3: $61
    ld h, d                                       ; $64b4: $62
    ld h, e                                       ; $64b5: $63
    ld h, h                                       ; $64b6: $64
    ld h, l                                       ; $64b7: $65
    ld h, [hl]                                    ; $64b8: $66
    rst $00                                       ; $64b9: $c7
    sbc h                                         ; $64ba: $9c
    ld [hl], d                                    ; $64bb: $72
    db $f4                                        ; $64bc: $f4
    ld [hl], c                                    ; $64bd: $71
    and a                                         ; $64be: $a7
    inc e                                         ; $64bf: $1c
    ld a, l                                       ; $64c0: $7d
    call c, $c731                                 ; $64c1: $dc $31 $c7
    inc e                                         ; $64c4: $1c
    ei                                            ; $64c5: $fb
    ld bc, $6389                                  ; $64c6: $01 $89 $63
    reti                                          ; $64c9: $d9


    and l                                         ; $64ca: $a5
    dec e                                         ; $64cb: $1d
    inc d                                         ; $64cc: $14
    db $dd                                        ; $64cd: $dd
    ret c                                         ; $64ce: $d8

    call nz, $ecb1                                ; $64cf: $c4 $b1 $ec
    jp nc, Jump_065_40ee                          ; $64d2: $d2 $ee $40

    db $fd                                        ; $64d5: $fd
    nop                                           ; $64d6: $00
    rla                                           ; $64d7: $17
    inc sp                                        ; $64d8: $33
    ld b, e                                       ; $64d9: $43
    ld [hl], e                                    ; $64da: $73
    cpl                                           ; $64db: $2f
    add e                                         ; $64dc: $83
    ldh [$dc], a                                  ; $64dd: $e0 $dc
    set 7, l                                      ; $64df: $cb $fd
    ret nz                                        ; $64e1: $c0

    adc h                                         ; $64e2: $8c
    db $d3                                        ; $64e3: $d3
    ld a, d                                       ; $64e4: $7a
    call z, $4729                                 ; $64e5: $cc $29 $47
    rra                                           ; $64e8: $1f
    ld [hl], a                                    ; $64e9: $77
    ld a, [c]                                     ; $64ea: $f2
    pop de                                        ; $64eb: $d1
    rst $00                                       ; $64ec: $c7
    dec e                                         ; $64ed: $1d
    ld [hl], e                                    ; $64ee: $73
    call z, Call_000_1fb1                         ; $64ef: $cc $b1 $1f
    rst $20                                       ; $64f2: $e7
    pop hl                                        ; $64f3: $e1
    push hl                                       ; $64f4: $e5
    or a                                          ; $64f5: $b7
    ld a, [hl]                                    ; $64f6: $7e
    ld a, $9b                                     ; $64f7: $3e $9b
    ld l, l                                       ; $64f9: $6d
    db $e4                                        ; $64fa: $e4
    ld a, h                                       ; $64fb: $7c
    rla                                           ; $64fc: $17
    ld h, h                                       ; $64fd: $64
    ret z                                         ; $64fe: $c8

    rrca                                          ; $64ff: $0f
    rst $20                                       ; $6500: $e7
    cp c                                          ; $6501: $b9
    db $f4                                        ; $6502: $f4
    or e                                          ; $6503: $b3
    rrca                                          ; $6504: $0f
    adc c                                         ; $6505: $89
    sub a                                         ; $6506: $97
    sbc [hl]                                      ; $6507: $9e
    sub $b3                                       ; $6508: $d6 $b3
    adc a                                         ; $650a: $8f
    dec a                                         ; $650b: $3d
    ld a, [$e3ec]                                 ; $650c: $fa $ec $e3
    ld a, [$8901]                                 ; $650f: $fa $01 $89
    ld e, e                                       ; $6512: $5b
    ld c, a                                       ; $6513: $4f
    db $eb                                        ; $6514: $eb
    reti                                          ; $6515: $d9


    rst $00                                       ; $6516: $c7
    ld e, $7d                                     ; $6517: $1e $7d
    or $71                                        ; $6519: $f6 $71
    db $fd                                        ; $651b: $fd
    nop                                           ; $651c: $00
    rst $20                                       ; $651d: $e7
    dec l                                         ; $651e: $2d
    rst $08                                       ; $651f: $cf
    ld b, a                                       ; $6520: $47
    inc c                                         ; $6521: $0c
    db $d3                                        ; $6522: $d3
    set 4, e                                      ; $6523: $cb $e3
    ld a, h                                       ; $6525: $7c
    rst $20                                       ; $6526: $e7
    dec l                                         ; $6527: $2d
    rst $08                                       ; $6528: $cf
    ld b, a                                       ; $6529: $47
    inc c                                         ; $652a: $0c
    db $d3                                        ; $652b: $d3
    ld [hl], e                                    ; $652c: $73
    db $dd                                        ; $652d: $dd
    ld a, h                                       ; $652e: $7c
    rst $20                                       ; $652f: $e7
    dec l                                         ; $6530: $2d
    rst $08                                       ; $6531: $cf
    ld b, a                                       ; $6532: $47
    inc c                                         ; $6533: $0c
    db $d3                                        ; $6534: $d3
    set 5, h                                      ; $6535: $cb $ec
    pop af                                        ; $6537: $f1
    inc bc                                        ; $6538: $03
    ld d, a                                       ; $6539: $57
    ret nz                                        ; $653a: $c0

    db $e4                                        ; $653b: $e4
    ld e, e                                       ; $653c: $5b
    sub [hl]                                      ; $653d: $96
    scf                                           ; $653e: $37
    ld c, [hl]                                    ; $653f: $4e
    ld a, e                                       ; $6540: $7b
    ld a, c                                       ; $6541: $79
    sbc h                                         ; $6542: $9c
    rrca                                          ; $6543: $0f
    ld d, a                                       ; $6544: $57
    ret nz                                        ; $6545: $c0

    db $e4                                        ; $6546: $e4
    ld e, e                                       ; $6547: $5b
    sub [hl]                                      ; $6548: $96
    scf                                           ; $6549: $37
    ld c, [hl]                                    ; $654a: $4e
    ld a, e                                       ; $654b: $7b
    xor [hl]                                      ; $654c: $ae
    sbc e                                         ; $654d: $9b
    rrca                                          ; $654e: $0f
    ld d, a                                       ; $654f: $57
    ret nz                                        ; $6550: $c0

    db $e4                                        ; $6551: $e4
    ld e, e                                       ; $6552: $5b
    sub [hl]                                      ; $6553: $96
    scf                                           ; $6554: $37
    ld c, [hl]                                    ; $6555: $4e
    ld a, e                                       ; $6556: $7b
    sbc c                                         ; $6557: $99
    dec a                                         ; $6558: $3d
    ld a, [hl]                                    ; $6559: $7e
    ld d, a                                       ; $655a: $57
    ret nz                                        ; $655b: $c0

    jp nz, Jump_065_6f93                          ; $655c: $c2 $93 $6f

    ld e, c                                       ; $655f: $59
    sbc $38                                       ; $6560: $de $38
    db $ed                                        ; $6562: $ed
    push hl                                       ; $6563: $e5
    ld [hl], c                                    ; $6564: $71
    ld a, $57                                     ; $6565: $3e $57
    ret nz                                        ; $6567: $c0

    jp nz, Jump_065_6f93                          ; $6568: $c2 $93 $6f

    ld e, c                                       ; $656b: $59
    sbc $38                                       ; $656c: $de $38
    db $ed                                        ; $656e: $ed
    cp c                                          ; $656f: $b9
    ld l, [hl]                                    ; $6570: $6e
    ld a, $57                                     ; $6571: $3e $57
    ret nz                                        ; $6573: $c0

    jp nz, Jump_065_6f93                          ; $6574: $c2 $93 $6f

    ld e, c                                       ; $6577: $59
    sbc $38                                       ; $6578: $de $38
    db $ed                                        ; $657a: $ed
    ld h, l                                       ; $657b: $65
    or $f8                                        ; $657c: $f6 $f8
    ld bc, $c417                                  ; $657e: $01 $17 $c4
    rra                                           ; $6581: $1f
    ld sp, $e9bc                                  ; $6582: $31 $bc $e9
    push hl                                       ; $6585: $e5
    ld [hl], c                                    ; $6586: $71
    ld a, $17                                     ; $6587: $3e $17
    call nz, $311f                                ; $6589: $c4 $1f $31
    cp h                                          ; $658c: $bc
    jp hl                                         ; $658d: $e9


    cp c                                          ; $658e: $b9
    ld l, [hl]                                    ; $658f: $6e
    ld a, $17                                     ; $6590: $3e $17
    call nz, $311f                                ; $6592: $c4 $1f $31
    cp h                                          ; $6595: $bc
    jp hl                                         ; $6596: $e9


    ld h, l                                       ; $6597: $65
    or $f8                                        ; $6598: $f6 $f8
    ld bc, $be57                                  ; $659a: $01 $57 $be
    sbc b                                         ; $659d: $98
    and [hl]                                      ; $659e: $a6
    add l                                         ; $659f: $85
    rst $20                                       ; $65a0: $e7
    ld h, h                                       ; $65a1: $64
    cpl                                           ; $65a2: $2f
    add $ea                                       ; $65a3: $c6 $ea
    adc l                                         ; $65a5: $8d
    ld a, [c]                                     ; $65a6: $f2
    inc bc                                        ; $65a7: $03
    rla                                           ; $65a8: $17
    rst $08                                       ; $65a9: $cf
    ccf                                           ; $65aa: $3f
    ld [hl], d                                    ; $65ab: $72
    ld a, [c]                                     ; $65ac: $f2
    ld e, b                                       ; $65ad: $58
    xor a                                         ; $65ae: $af
    ld a, h                                       ; $65af: $7c
    ld e, $cf                                     ; $65b0: $1e $cf
    or d                                          ; $65b2: $b2
    di                                            ; $65b3: $f3
    inc bc                                        ; $65b4: $03
    rla                                           ; $65b5: $17
    rst $08                                       ; $65b6: $cf
    ccf                                           ; $65b7: $3f
    ld [hl], d                                    ; $65b8: $72
    ld a, [c]                                     ; $65b9: $f2
    ld e, b                                       ; $65ba: $58
    or a                                          ; $65bb: $b7
    adc [hl]                                      ; $65bc: $8e
    push hl                                       ; $65bd: $e5
    and a                                         ; $65be: $a7
    rra                                           ; $65bf: $1f
    adc c                                         ; $65c0: $89
    ret z                                         ; $65c1: $c8

    or $bc                                        ; $65c2: $f6 $bc
    rst $28                                       ; $65c4: $ef
    ld [hl], a                                    ; $65c5: $77
    jp c, $26cb                                   ; $65c6: $da $cb $26

    ld [hl], e                                    ; $65c9: $73
    ld [hl], c                                    ; $65ca: $71
    ld a, [$5b01]                                 ; $65cb: $fa $01 $5b
    db $dd                                        ; $65ce: $dd
    rst $28                                       ; $65cf: $ef
    or h                                          ; $65d0: $b4
    ld [c], a                                     ; $65d1: $e2
    and c                                         ; $65d2: $a1
    db $db                                        ; $65d3: $db
    add sp, $14                                   ; $65d4: $e8 $14
    sub h                                         ; $65d6: $94
    rra                                           ; $65d7: $1f
    ld [c], a                                     ; $65d8: $e2
    cpl                                           ; $65d9: $2f
    ld b, $36                                     ; $65da: $06 $36
    ld a, [bc]                                    ; $65dc: $0a
    and a                                         ; $65dd: $a7
    db $f4                                        ; $65de: $f4
    dec c                                         ; $65df: $0d
    ld sp, $3340                                  ; $65e0: $31 $40 $33
    ld a, [de]                                    ; $65e3: $1a
    ld de, $4e93                                  ; $65e4: $11 $93 $4e
    sub $8b                                       ; $65e7: $d6 $8b
    sub a                                         ; $65e9: $97
    rst $18                                       ; $65ea: $df
    ld a, [$f0d9]                                 ; $65eb: $fa $d9 $f0
    ld bc, $84db                                  ; $65ee: $01 $db $84
    db $d3                                        ; $65f1: $d3
    adc h                                         ; $65f2: $8c
    xor b                                         ; $65f3: $a8
    ld c, l                                       ; $65f4: $4d
    sbc h                                         ; $65f5: $9c
    sbc b                                         ; $65f6: $98
    ld b, a                                       ; $65f7: $47
    dec de                                        ; $65f8: $1b
    ret nc                                        ; $65f9: $d0

    di                                            ; $65fa: $f3
    ldh a, [$f2]                                  ; $65fb: $f0 $f2
    ld e, e                                       ; $65fd: $5b
    ccf                                           ; $65fe: $3f
    ld d, l                                       ; $65ff: $55
    rst $20                                       ; $6600: $e7
    ld a, l                                       ; $6601: $7d
    rst $38                                       ; $6602: $ff
    ld b, e                                       ; $6603: $43
    call z, $fad0                                 ; $6604: $cc $d0 $fa
    inc [hl]                                      ; $6607: $34
    halt                                          ; $6608: $76
    ld h, c                                       ; $6609: $61
    ld e, h                                       ; $660a: $5c
    ld c, a                                       ; $660b: $4f
    dec hl                                        ; $660c: $2b
    inc [hl]                                      ; $660d: $34
    and e                                         ; $660e: $a3
    ld e, [hl]                                    ; $660f: $5e
    cp h                                          ; $6610: $bc
    db $fc                                        ; $6611: $fc
    sub $cf                                       ; $6612: $d6 $cf
    add [hl]                                      ; $6614: $86
    rrca                                          ; $6615: $0f
    db $db                                        ; $6616: $db
    add h                                         ; $6617: $84
    db $d3                                        ; $6618: $d3
    ld [hl], l                                    ; $6619: $75
    push af                                       ; $661a: $f5
    ld b, a                                       ; $661b: $47
    ld [hl], l                                    ; $661c: $75
    or a                                          ; $661d: $b7
    dec d                                         ; $661e: $15
    sub [hl]                                      ; $661f: $96
    ld a, d                                       ; $6620: $7a
    ld e, l                                       ; $6621: $5d
    ld a, [$fdd9]                                 ; $6622: $fa $d9 $fd
    ld bc, $40e7                                  ; $6625: $01 $e7 $40
    ld l, [hl]                                    ; $6628: $6e
    ld e, h                                       ; $6629: $5c
    cp l                                          ; $662a: $bd
    jr jr_065_663b                                ; $662b: $18 $0e

    rst $18                                       ; $662d: $df
    cp a                                          ; $662e: $bf
    rst $20                                       ; $662f: $e7
    ld a, $a6                                     ; $6630: $3e $a6
    daa                                           ; $6632: $27
    ld l, [hl]                                    ; $6633: $6e
    inc d                                         ; $6634: $14
    ld e, a                                       ; $6635: $5f
    ld b, h                                       ; $6636: $44
    db $dd                                        ; $6637: $dd
    ld b, d                                       ; $6638: $42
    or e                                          ; $6639: $b3
    sbc l                                         ; $663a: $9d

jr_065_663b:
    rst $30                                       ; $663b: $f7
    rlca                                          ; $663c: $07
    db $db                                        ; $663d: $db
    ld e, h                                       ; $663e: $5c
    db $fc                                        ; $663f: $fc
    reti                                          ; $6640: $d9


    ret z                                         ; $6641: $c8

jr_065_6642:
    jp z, $9317                                   ; $6642: $ca $17 $93

    db $ec                                        ; $6645: $ec
    ld [$7605], a                                 ; $6646: $ea $05 $76
    push af                                       ; $6649: $f5
    ld [$7564], a                                 ; $664a: $ea $64 $75
    or a                                          ; $664d: $b7
    db $fc                                        ; $664e: $fc
    and [hl]                                      ; $664f: $a6
    rst $38                                       ; $6650: $ff
    ret z                                         ; $6651: $c8

    add hl, hl                                    ; $6652: $29
    inc [hl]                                      ; $6653: $34
    ld h, e                                       ; $6654: $63
    jp $1707                                      ; $6655: $c3 $07 $17


    xor b                                         ; $6658: $a8
    ld e, $be                                     ; $6659: $1e $be
    xor [hl]                                      ; $665b: $ae
    cp $58                                        ; $665c: $fe $58
    jp z, $51a1                                   ; $665e: $ca $a1 $51

    jr c, @+$4f                                   ; $6661: $38 $4d

    xor [hl]                                      ; $6663: $ae
    dec [hl]                                      ; $6664: $35
    ld [hl+], a                                   ; $6665: $22
    ld h, $9d                                     ; $6666: $26 $9d
    xor h                                         ; $6668: $ac
    xor $96                                       ; $6669: $ee $96
    rst $18                                       ; $666b: $df
    db $f4                                        ; $666c: $f4
    rra                                           ; $666d: $1f
    ld a, c                                       ; $666e: $79
    jr c, jr_065_66a5                             ; $666f: $38 $34

    db $e3                                        ; $6671: $e3
    xor $19                                       ; $6672: $ee $19
    ld h, l                                       ; $6674: $65
    sub a                                         ; $6675: $97
    ld de, $6ec0                                  ; $6676: $11 $c0 $6e
    ld e, a                                       ; $6679: $5f
    sub [hl]                                      ; $667a: $96
    or a                                          ; $667b: $b7
    ld h, d                                       ; $667c: $62
    inc c                                         ; $667d: $0c
    or b                                          ; $667e: $b0
    db $d3                                        ; $667f: $d3
    ld a, d                                       ; $6680: $7a
    ld e, $3d                                     ; $6681: $1e $3d
    or $7e                                        ; $6683: $f6 $7e
    add $8c                                       ; $6685: $c6 $8c
    ld b, $6a                                     ; $6687: $06 $6a
    dec h                                         ; $6689: $25
    sub [hl]                                      ; $668a: $96
    db $e4                                        ; $668b: $e4
    jr jr_065_6642                                ; $668c: $18 $b4

    dec hl                                        ; $668e: $2b
    jp c, $498b                                   ; $668f: $da $8b $49

    xor d                                         ; $6692: $aa
    xor b                                         ; $6693: $a8
    rst $38                                       ; $6694: $ff
    ret z                                         ; $6695: $c8

    xor c                                         ; $6696: $a9
    ccf                                           ; $6697: $3f
    ld bc, $15da                                  ; $6698: $01 $da $15
    xor h                                         ; $669b: $ac
    cp $e1                                        ; $669c: $fe $e1
    bit 6, h                                      ; $669e: $cb $74
    ld b, c                                       ; $66a0: $41
    ld [hl], $3c                                  ; $66a1: $36 $3c
    sbc e                                         ; $66a3: $9b
    cp e                                          ; $66a4: $bb

jr_065_66a5:
    ld d, a                                       ; $66a5: $57
    adc h                                         ; $66a6: $8c
    dec hl                                        ; $66a7: $2b
    ld h, d                                       ; $66a8: $62
    ld [hl], $5a                                  ; $66a9: $36 $5a
    pop de                                        ; $66ab: $d1
    dec d                                         ; $66ac: $15
    xor h                                         ; $66ad: $ac

Jump_065_66ae:
    add c                                         ; $66ae: $81
    call Call_065_5d8e                            ; $66af: $cd $8e $5d
    pop de                                        ; $66b2: $d1
    ld e, [hl]                                    ; $66b3: $5e
    ld c, h                                       ; $66b4: $4c
    ld a, [c]                                     ; $66b5: $f2
    xor $0e                                       ; $66b6: $ee $0e
    inc [hl]                                      ; $66b8: $34
    push hl                                       ; $66b9: $e5
    sbc [hl]                                      ; $66ba: $9e
    jp nz, Jump_065_5da0                          ; $66bb: $c2 $a0 $5d

    pop af                                        ; $66be: $f1
    ld [hl], l                                    ; $66bf: $75
    dec b                                         ; $66c0: $05
    dec hl                                        ; $66c1: $2b
    or l                                          ; $66c2: $b5
    add [hl]                                      ; $66c3: $86
    jr nc, jr_065_66f7                            ; $66c4: $30 $31

    ld h, b                                       ; $66c6: $60
    rla                                           ; $66c7: $17

Jump_065_66c8:
    or l                                          ; $66c8: $b5
    adc h                                         ; $66c9: $8c
    add hl, de                                    ; $66ca: $19
    jp c, $ae80                                   ; $66cb: $da $80 $ae

    sbc [hl]                                      ; $66ce: $9e
    ld b, c                                       ; $66cf: $41
    sbc e                                         ; $66d0: $9b
    ld h, c                                       ; $66d1: $61
    db $fd                                        ; $66d2: $fd
    ld b, a                                       ; $66d3: $47
    cp [hl]                                       ; $66d4: $be
    db $f4                                        ; $66d5: $f4
    ld [hl], h                                    ; $66d6: $74
    ld e, c                                       ; $66d7: $59
    ld l, e                                       ; $66d8: $6b
    ld b, b                                       ; $66d9: $40
    call z, $f736                                 ; $66da: $cc $36 $f7
    rlca                                          ; $66dd: $07
    db $db                                        ; $66de: $db
    sub a                                         ; $66df: $97
    dec [hl]                                      ; $66e0: $35
    ld d, c                                       ; $66e1: $51
    or a                                          ; $66e2: $b7
    ret nc                                        ; $66e3: $d0

    ld l, h                                       ; $66e4: $6c
    rst $20                                       ; $66e5: $e7
    db $dd                                        ; $66e6: $dd
    inc b                                         ; $66e7: $04
    call $bae8                                    ; $66e8: $cd $e8 $ba
    ld c, [hl]                                    ; $66eb: $4e
    push de                                       ; $66ec: $d5
    xor $6e                                       ; $66ed: $ee $6e
    ld e, a                                       ; $66ef: $5f
    sub [hl]                                      ; $66f0: $96
    or a                                          ; $66f1: $b7
    ld h, d                                       ; $66f2: $62
    inc c                                         ; $66f3: $0c
    or b                                          ; $66f4: $b0
    cp e                                          ; $66f5: $bb
    ld c, l                                       ; $66f6: $4d

jr_065_66f7:
    ld e, b                                       ; $66f7: $58
    ld d, b                                       ; $66f8: $50
    ld a, [bc]                                    ; $66f9: $0a
    ld [hl], b                                    ; $66fa: $70
    add c                                         ; $66fb: $81
    dec de                                        ; $66fc: $1b
    di                                            ; $66fd: $f3
    pop hl                                        ; $66fe: $e1
    inc l                                         ; $66ff: $2c
    db $f4                                        ; $6700: $f4
    sbc a                                         ; $6701: $9f
    dec h                                         ; $6702: $25
    add hl, bc                                    ; $6703: $09
    xor e                                         ; $6704: $ab
    sub e                                         ; $6705: $93
    db $ec                                        ; $6706: $ec
    adc d                                         ; $6707: $8a
    or $62                                        ; $6708: $f6 $62
    sub d                                         ; $670a: $92
    ld [hl], a                                    ; $670b: $77
    rrca                                          ; $670c: $0f
    ld c, a                                       ; $670d: $4f
    sbc h                                         ; $670e: $9c
    and a                                         ; $670f: $a7
    ld e, l                                       ; $6710: $5d
    ld b, c                                       ; $6711: $41
    ld [hl], $c3                                  ; $6712: $36 $c3
    ld a, [$7c8f]                                 ; $6714: $fa $8f $7c
    jp hl                                         ; $6717: $e9


    add hl, hl                                    ; $6718: $29
    and a                                         ; $6719: $a7
    ld e, $c6                                     ; $671a: $1e $c6
    ld a, a                                       ; $671c: $7f
    ld a, d                                       ; $671d: $7a
    cp [hl]                                       ; $671e: $be
    cp l                                          ; $671f: $bd
    sbc b                                         ; $6720: $98
    sbc [hl]                                      ; $6721: $9e
    sbc h                                         ; $6722: $9c
    rst $28                                       ; $6723: $ef
    rrca                                          ; $6724: $0f
    add a                                         ; $6725: $87
    ld e, a                                       ; $6726: $5f
    or [hl]                                       ; $6727: $b6
    sub $94                                       ; $6728: $d6 $94
    db $e3                                        ; $672a: $e3
    sub d                                         ; $672b: $92
    ld [hl], d                                    ; $672c: $72
    or b                                          ; $672d: $b0
    cp $f3                                        ; $672e: $fe $f3
    sub h                                         ; $6730: $94
    add l                                         ; $6731: $85
    cp $f6                                        ; $6732: $fe $f6
    ld [hl-], a                                   ; $6734: $32
    dec de                                        ; $6735: $1b
    ld e, c                                       ; $6736: $59
    ld a, a                                       ; $6737: $7f
    inc l                                         ; $6738: $2c
    di                                            ; $6739: $f3
    cp [hl]                                       ; $673a: $be
    rst $28                                       ; $673b: $ef
    rrca                                          ; $673c: $0f
    rst $10                                       ; $673d: $d7
    daa                                           ; $673e: $27
    call nz, $2c6c                                ; $673f: $c4 $6c $2c
    inc [hl]                                      ; $6742: $34
    dec de                                        ; $6743: $1b
    ld h, e                                       ; $6744: $63
    ld [hl], d                                    ; $6745: $72
    ld b, h                                       ; $6746: $44
    sub l                                         ; $6747: $95
    call nc, $c866                                ; $6748: $d4 $66 $c8
    cp $ee                                        ; $674b: $fe $ee
    dec b                                         ; $674d: $05
    add [hl]                                      ; $674e: $86
    ld sp, hl                                     ; $674f: $f9
    nop                                           ; $6750: $00

Call_065_6751:
    ld [c], a                                     ; $6751: $e2
    push hl                                       ; $6752: $e5
    ld [$ec05], a                                 ; $6753: $ea $05 $ec
    ld [$3aba], a                                 ; $6756: $ea $ba $3a
    ld e, c                                       ; $6759: $59
    rra                                           ; $675a: $1f
    ccf                                           ; $675b: $3f
    jp $097c                                      ; $675c: $c3 $7c $09


    dec e                                         ; $675f: $1d
    ld l, l                                       ; $6760: $6d
    jp z, $0ba1                                   ; $6761: $ca $a1 $0b

    ld d, [hl]                                    ; $6764: $56
    sub h                                         ; $6765: $94
    ld d, l                                       ; $6766: $55
    ret z                                         ; $6767: $c8

    and [hl]                                      ; $6768: $a6
    inc e                                         ; $6769: $1c
    inc c                                         ; $676a: $0c
    ld d, [hl]                                    ; $676b: $56
    add hl, bc                                    ; $676c: $09
    jp $e07f                                      ; $676d: $c3 $7f $e0


    add $65                                       ; $6770: $c6 $65
    ld a, $97                                     ; $6772: $3e $97
    res 0, [hl]                                   ; $6774: $cb $86
    rst $00                                       ; $6776: $c7
    ld h, [hl]                                    ; $6777: $66
    sbc b                                         ; $6778: $98
    ld [hl], b                                    ; $6779: $70
    ld a, [de]                                    ; $677a: $1a
    ld d, b                                       ; $677b: $50
    rra                                           ; $677c: $1f
    ld d, $0e                                     ; $677d: $16 $0e
    call c, $ccb8                                 ; $677f: $dc $b8 $cc
    ld a, l                                       ; $6782: $7d
    ld hl, sp+$07                                 ; $6783: $f8 $07
    db $db                                        ; $6785: $db
    add h                                         ; $6786: $84
    ld d, e                                       ; $6787: $53
    ld a, a                                       ; $6788: $7f
    ld [bc], a                                    ; $6789: $02
    or h                                          ; $678a: $b4
    adc b                                         ; $678b: $88
    reti                                          ; $678c: $d9


    ld l, b                                       ; $678d: $68
    adc l                                         ; $678e: $8d
    and e                                         ; $678f: $a3
    db $fd                                        ; $6790: $fd
    rst $00                                       ; $6791: $c7
    ld l, e                                       ; $6792: $6b
    ret nc                                        ; $6793: $d0

    ld a, [hl+]                                   ; $6794: $2a
    ld a, [de]                                    ; $6795: $1a
    add l                                         ; $6796: $85
    db $d3                                        ; $6797: $d3
    db $fc                                        ; $6798: $fc
    ld d, [hl]                                    ; $6799: $56
    jr nc, jr_065_6804                            ; $679a: $30 $68

    sbc l                                         ; $679c: $9d
    ld h, h                                       ; $679d: $64
    rst $38                                       ; $679e: $ff
    inc h                                         ; $679f: $24
    ld d, a                                       ; $67a0: $57
    ld l, b                                       ; $67a1: $68
    ld b, b                                       ; $67a2: $40
    rst $38                                       ; $67a3: $ff
    pop af                                        ; $67a4: $f1
    ld a, [de]                                    ; $67a5: $1a
    db $f4                                        ; $67a6: $f4
    cp $00                                        ; $67a7: $fe $00
    dec sp                                        ; $67a9: $3b
    db $ec                                        ; $67aa: $ec
    ld l, [hl]                                    ; $67ab: $6e
    ld [c], a                                     ; $67ac: $e2
    db $e4                                        ; $67ad: $e4
    inc c                                         ; $67ae: $0c
    db $db                                        ; $67af: $db
    call nc, Call_065_5aed                        ; $67b0: $d4 $ed $5a
    add l                                         ; $67b3: $85
    db $d3                                        ; $67b4: $d3
    ld d, d                                       ; $67b5: $52
    cp [hl]                                       ; $67b6: $be
    db $f4                                        ; $67b7: $f4
    ld l, b                                       ; $67b8: $68
    and c                                         ; $67b9: $a1
    ld a, $8c                                     ; $67ba: $3e $8c
    or d                                          ; $67bc: $b2
    cp $58                                        ; $67bd: $fe $58
    push af                                       ; $67bf: $f5
    sub l                                         ; $67c0: $95
    ld d, e                                       ; $67c1: $53
    xor a                                         ; $67c2: $af
    adc e                                         ; $67c3: $8b
    ld h, c                                       ; $67c4: $61
    ld a, [de]                                    ; $67c5: $1a
    and [hl]                                      ; $67c6: $a6
    rst $38                                       ; $67c7: $ff
    sbc b                                         ; $67c8: $98
    ld hl, $dd8c                                  ; $67c9: $21 $8c $dd
    rra                                           ; $67cc: $1f
    dec sp                                        ; $67cd: $3b
    ld d, b                                       ; $67ce: $50
    ld l, b                                       ; $67cf: $68
    ld e, [hl]                                    ; $67d0: $5e
    db $eb                                        ; $67d1: $eb
    cp $f5                                        ; $67d2: $fe $f5
    ld l, l                                       ; $67d4: $6d
    ld a, [hl]                                    ; $67d5: $7e
    ld h, a                                       ; $67d6: $67
    ld l, h                                       ; $67d7: $6c
    sbc b                                         ; $67d8: $98
    xor $b0                                       ; $67d9: $ee $b0
    cp e                                          ; $67db: $bb
    ld e, e                                       ; $67dc: $5b
    sbc b                                         ; $67dd: $98
    or [hl]                                       ; $67de: $b6
    rla                                           ; $67df: $17
    ld b, h                                       ; $67e0: $44
    push bc                                       ; $67e1: $c5
    add d                                         ; $67e2: $82
    ld b, d                                       ; $67e3: $42
    di                                            ; $67e4: $f3
    ld e, d                                       ; $67e5: $5a
    sub a                                         ; $67e6: $97
    or l                                          ; $67e7: $b5
    ld [hl-], a                                   ; $67e8: $32
    db $db                                        ; $67e9: $db
    sbc d                                         ; $67ea: $9a
    adc d                                         ; $67eb: $8a
    ld a, [hl+]                                   ; $67ec: $2a
    ret nz                                        ; $67ed: $c0

    push bc                                       ; $67ee: $c5
    inc a                                         ; $67ef: $3c
    push hl                                       ; $67f0: $e5
    ld l, b                                       ; $67f1: $68
    rst $38                                       ; $67f2: $ff
    pop af                                        ; $67f3: $f1
    ld a, [de]                                    ; $67f4: $1a
    db $f4                                        ; $67f5: $f4
    cp $00                                        ; $67f6: $fe $00
    db $db                                        ; $67f8: $db
    cp e                                          ; $67f9: $bb
    jp Jump_065_6eee                              ; $67fa: $c3 $ee $6e


    ld h, c                                       ; $67fd: $61
    jp c, Jump_000_285e                           ; $67fe: $da $5e $28

    inc [hl]                                      ; $6801: $34
    xor a                                         ; $6802: $af
    ld [hl], l                                    ; $6803: $75

jr_065_6804:
    rst $38                                       ; $6804: $ff
    xor d                                         ; $6805: $aa
    ld h, e                                       ; $6806: $63
    and c                                         ; $6807: $a1
    ld a, $8c                                     ; $6808: $3e $8c
    push hl                                       ; $680a: $e5
    call nc, Call_065_62eb                        ; $680b: $d4 $eb $62
    sbc b                                         ; $680e: $98
    add [hl]                                      ; $680f: $86
    add hl, hl                                    ; $6810: $29
    jp nz, $eef3                                  ; $6811: $c2 $f3 $ee

    or $bf                                        ; $6814: $f6 $bf
    cp c                                          ; $6816: $b9
    ccf                                           ; $6817: $3f
    db $db                                        ; $6818: $db
    cp e                                          ; $6819: $bb
    jp Jump_065_6eee                              ; $681a: $c3 $ee $6e


    ld h, c                                       ; $681d: $61
    jp c, Jump_000_285e                           ; $681e: $da $5e $28

    ld a, [hl-]                                   ; $6821: $3a
    db $dd                                        ; $6822: $dd
    ld h, c                                       ; $6823: $61
    dec a                                         ; $6824: $3d
    rst $18                                       ; $6825: $df
    sbc [hl]                                      ; $6826: $9e
    sbc a                                         ; $6827: $9f
    sbc h                                         ; $6828: $9c
    ld de, $7cd8                                  ; $6829: $11 $d8 $7c
    and b                                         ; $682c: $a0
    inc l                                         ; $682d: $2c
    inc [hl]                                      ; $682e: $34
    inc sp                                        ; $682f: $33
    ld c, h                                       ; $6830: $4c
    rst $30                                       ; $6831: $f7
    xor a                                         ; $6832: $af
    ld a, [hl-]                                   ; $6833: $3a
    ld d, $ea                                     ; $6834: $16 $ea
    jp Jump_065_7f78                              ; $6836: $c3 $78 $7f


    db $db                                        ; $6839: $db

jr_065_683a:
    sub a                                         ; $683a: $97
    dec [hl]                                      ; $683b: $35
    ld d, c                                       ; $683c: $51
    or a                                          ; $683d: $b7
    ret nc                                        ; $683e: $d0

    ld l, h                                       ; $683f: $6c
    rst $20                                       ; $6840: $e7
    add [hl]                                      ; $6841: $86
    rrca                                          ; $6842: $0f
    rst $20                                       ; $6843: $e7
    adc h                                         ; $6844: $8c
    ld l, h                                       ; $6845: $6c
    ld a, b                                       ; $6846: $78
    inc d                                         ; $6847: $14
    ld [hl], l                                    ; $6848: $75
    add a                                         ; $6849: $87
    db $dd                                        ; $684a: $dd
    ld c, l                                       ; $684b: $4d
    sbc h                                         ; $684c: $9c
    sbc h                                         ; $684d: $9c
    ld h, c                                       ; $684e: $61
    ld [hl], a                                    ; $684f: $77

jr_065_6850:
    cp e                                          ; $6850: $bb
    cp l                                          ; $6851: $bd
    ld [de], a                                    ; $6852: $12
    xor [hl]                                      ; $6853: $ae
    ld [hl], c                                    ; $6854: $71
    inc h                                         ; $6855: $24
    cp d                                          ; $6856: $ba
    xor [hl]                                      ; $6857: $ae
    rst $20                                       ; $6858: $e7
    db $db                                        ; $6859: $db
    di                                            ; $685a: $f3
    sub e                                         ; $685b: $93
    inc sp                                        ; $685c: $33
    ld [bc], a                                    ; $685d: $02
    rst $28                                       ; $685e: $ef
    rrca                                          ; $685f: $0f
    ld [c], a                                     ; $6860: $e2
    jp hl                                         ; $6861: $e9


    ld sp, $e536                                  ; $6862: $31 $36 $e5
    ld c, $b7                                     ; $6865: $0e $b7
    db $dd                                        ; $6867: $dd
    jr z, jr_065_68b1                             ; $6868: $28 $47

    cp e                                          ; $686a: $bb
    add d                                         ; $686b: $82
    ld [hl], l                                    ; $686c: $75
    ld a, [$d78f]                                 ; $686d: $fa $8f $d7
    ret nc                                        ; $6870: $d0

    jr nc, jr_065_6850                            ; $6871: $30 $dd

    ld b, d                                       ; $6873: $42
    or e                                          ; $6874: $b3
    sbc l                                         ; $6875: $9d
    rst $30                                       ; $6876: $f7
    rlca                                          ; $6877: $07
    add hl, bc                                    ; $6878: $09
    sbc l                                         ; $6879: $9d
    ld a, [hl+]                                   ; $687a: $2a
    ld h, d                                       ; $687b: $62
    ld [hl], d                                    ; $687c: $72
    xor h                                         ; $687d: $ac
    add hl, de                                    ; $687e: $19
    or d                                          ; $687f: $b2
    db $ec                                        ; $6880: $ec
    sbc a                                         ; $6881: $9f
    db $e4                                        ; $6882: $e4
    ld a, [bc]                                    ; $6883: $0a
    sbc e                                         ; $6884: $9b
    ld a, $87                                     ; $6885: $3e $87
    ld e, a                                       ; $6887: $5f
    or [hl]                                       ; $6888: $b6
    ld d, [hl]                                    ; $6889: $56
    and [hl]                                      ; $688a: $a6
    call c, $9bbb                                 ; $688b: $dc $bb $9b
    ret nc                                        ; $688e: $d0

    nop                                           ; $688f: $00
    ld a, a                                       ; $6890: $7f
    sbc [hl]                                      ; $6891: $9e
    ld [hl], $b9                                  ; $6892: $36 $b9
    ld d, [hl]                                    ; $6894: $56
    ld [hl], $e5                                  ; $6895: $36 $e5
    and b                                         ; $6897: $a0
    ld e, c                                       ; $6898: $59
    jr c, jr_065_68a8                             ; $6899: $38 $0d

    db $d3                                        ; $689b: $d3
    jr z, jr_065_683a                             ; $689c: $28 $9c

    adc l                                         ; $689e: $8d
    adc d                                         ; $689f: $8a
    or a                                          ; $68a0: $b7
    ld sp, $0ee5                                  ; $68a1: $31 $e5 $0e
    ld l, h                                       ; $68a4: $6c
    jp z, Jump_065_5ea1                           ; $68a5: $ca $a1 $5e

jr_065_68a8:
    ld l, $6b                                     ; $68a8: $2e $6b
    ld [hl], d                                    ; $68aa: $72
    or h                                          ; $68ab: $b4
    ret                                           ; $68ac: $c9


jr_065_68ad:
    or l                                          ; $68ad: $b5
    ld a, d                                       ; $68ae: $7a
    and $67                                       ; $68af: $e6 $67

jr_065_68b1:
    sbc b                                         ; $68b1: $98
    ei                                            ; $68b2: $fb
    inc bc                                        ; $68b3: $03
    sub a                                         ; $68b4: $97
    cp c                                          ; $68b5: $b9
    jr nc, jr_065_68ad                            ; $68b6: $30 $f5

    ld l, c                                       ; $68b8: $69
    ld hl, sp+$51                                 ; $68b9: $f8 $51
    ld l, b                                       ; $68bb: $68
    and [hl]                                      ; $68bc: $a6
    dec d                                         ; $68bd: $15
    or d                                          ; $68be: $b2
    ld h, e                                       ; $68bf: $63
    ld bc, $6ef2                                  ; $68c0: $01 $f2 $6e
    rst $08                                       ; $68c3: $cf
    db $e3                                        ; $68c4: $e3
    ld a, d                                       ; $68c5: $7a
    jp z, $bd4e                                   ; $68c6: $ca $4e $bd

    ld e, h                                       ; $68c9: $5c
    adc l                                         ; $68ca: $8d
    dec [hl]                                      ; $68cb: $35
    and b                                         ; $68cc: $a0
    ld [de], a                                    ; $68cd: $12
    ld d, l                                       ; $68ce: $55
    and h                                         ; $68cf: $a4
    db $dd                                        ; $68d0: $dd
    or e                                          ; $68d1: $b3
    ei                                            ; $68d2: $fb
    inc bc                                        ; $68d3: $03
    db $db                                        ; $68d4: $db
    add h                                         ; $68d5: $84
    ld d, e                                       ; $68d6: $53
    ld b, l                                       ; $68d7: $45
    jp hl                                         ; $68d8: $e9


    and l                                         ; $68d9: $a5
    ld h, [hl]                                    ; $68da: $66
    ret z                                         ; $68db: $c8

    ei                                            ; $68dc: $fb
    inc bc                                        ; $68dd: $03
    ld [c], a                                     ; $68de: $e2
    ld sp, $d450                                  ; $68df: $31 $50 $d4
    dec l                                         ; $68e2: $2d
    inc [hl]                                      ; $68e3: $34
    db $db                                        ; $68e4: $db
    ld a, c                                       ; $68e5: $79
    ld a, a                                       ; $68e6: $7f
    ld e, e                                       ; $68e7: $5b
    sbc b                                         ; $68e8: $98
    or [hl]                                       ; $68e9: $b6
    rla                                           ; $68ea: $17
    ld [hl], $b4                                  ; $68eb: $36 $b4
    add hl, bc                                    ; $68ed: $09
    ld [$58c3], a                                 ; $68ee: $ea $c3 $58
    ld a, a                                       ; $68f1: $7f
    xor h                                         ; $68f2: $ac
    ld a, [c]                                     ; $68f3: $f2
    ret                                           ; $68f4: $c9


    dec c                                         ; $68f5: $0d
    rra                                           ; $68f6: $1f
    rla                                           ; $68f7: $17
    ld d, e                                       ; $68f8: $53
    ld [hl+], a                                   ; $68f9: $22
    and $b9                                       ; $68fa: $e6 $b9
    db $db                                        ; $68fc: $db
    inc b                                         ; $68fd: $04
    call Call_000_00ac                            ; $68fe: $cd $ac $00
    ld b, [hl]                                    ; $6901: $46
    inc l                                         ; $6902: $2c
    inc l                                         ; $6903: $2c
    inc [hl]                                      ; $6904: $34
    xor a                                         ; $6905: $af
    push de                                       ; $6906: $d5
    adc e                                         ; $6907: $8b
    ccf                                           ; $6908: $3f
    ret                                           ; $6909: $c9


    ret nz                                        ; $690a: $c0

    ei                                            ; $690b: $fb
    inc bc                                        ; $690c: $03
    rla                                           ; $690d: $17
    ld d, e                                       ; $690e: $53
    ld [hl+], a                                   ; $690f: $22
    and $11                                       ; $6910: $e6 $11
    ld d, l                                       ; $6912: $55
    ld d, d                                       ; $6913: $52
    dec de                                        ; $6914: $1b
    and c                                         ; $6915: $a1
    sbc c                                         ; $6916: $99
    dec d                                         ; $6917: $15
    ret nz                                        ; $6918: $c0

    adc b                                         ; $6919: $88
    add l                                         ; $691a: $85
    push de                                       ; $691b: $d5
    db $dd                                        ; $691c: $dd
    rr a                                          ; $691d: $cb $1f

jr_065_691f:
    cpl                                           ; $691f: $2f
    ld c, a                                       ; $6920: $4f
    ld a, l                                       ; $6921: $7d
    and [hl]                                      ; $6922: $a6
    add hl, hl                                    ; $6923: $29
    ld de, $68f3                                  ; $6924: $11 $f3 $68
    inc bc                                        ; $6927: $03
    ld a, [bc]                                    ; $6928: $0a
    jp hl                                         ; $6929: $e9


    db $db                                        ; $692a: $db
    ld a, [hl-]                                   ; $692b: $3a
    call $8e4f                                    ; $692c: $cd $4f $8e
    sbc $1f                                       ; $692f: $de $1f
    and a                                         ; $6931: $a7
    sbc [hl]                                      ; $6932: $9e
    jr nz, jr_065_691f                            ; $6933: $20 $ea

    xor c                                         ; $6935: $a9
    daa                                           ; $6936: $27
    adc d                                         ; $6937: $8a
    ld a, d                                       ; $6938: $7a
    ld [$f749], a                                 ; $6939: $ea $49 $f7
    ld a, l                                       ; $693c: $7d
    dec bc                                        ; $693d: $0b
    ld e, b                                       ; $693e: $58
    ld l, e                                       ; $693f: $6b
    ld b, [hl]                                    ; $6940: $46
    sbc c                                         ; $6941: $99
    ld de, $94c3                                  ; $6942: $11 $c3 $94
    xor d                                         ; $6945: $aa
    ld c, a                                       ; $6946: $4f
    ld [hl], $e5                                  ; $6947: $36 $e5
    ld d, b                                       ; $6949: $50
    cp $f4                                        ; $694a: $fe $f4
    ret nc                                        ; $694c: $d0

    ld a, [de]                                    ; $694d: $1a
    ret nc                                        ; $694e: $d0

    ld a, a                                       ; $694f: $7f
    ld h, d                                       ; $6950: $62
    and [hl]                                      ; $6951: $a6
    dec d                                         ; $6952: $15
    sbc d                                         ; $6953: $9a
    and c                                         ; $6954: $a1
    sub l                                         ; $6955: $95
    ld l, a                                       ; $6956: $6f
    ld c, c                                       ; $6957: $49
    jp nc, $0da0                                  ; $6958: $d2 $a0 $0d

    xor b                                         ; $695b: $a8
    add hl, sp                                    ; $695c: $39
    rst $08                                       ; $695d: $cf
    db $d3                                        ; $695e: $d3
    ei                                            ; $695f: $fb
    cp [hl]                                       ; $6960: $be
    ld c, a                                       ; $6961: $4f
    dec a                                         ; $6962: $3d
    ld e, c                                       ; $6963: $59
    call nc, Call_065_4f53                        ; $6964: $d4 $53 $4f
    ld de, $d4f5                                  ; $6967: $11 $f5 $d4
    ld d, e                                       ; $696a: $53
    rst $28                                       ; $696b: $ef
    ei                                            ; $696c: $fb
    cp $00                                        ; $696d: $fe $00
    rla                                           ; $696f: $17
    xor [hl]                                      ; $6970: $ae
    ld d, l                                       ; $6971: $55
    and d                                         ; $6972: $a2
    ld a, $2c                                     ; $6973: $3e $2c
    cp h                                          ; $6975: $bc
    dec c                                         ; $6976: $0d
    db $ed                                        ; $6977: $ed
    ld [hl], $e1                                  ; $6978: $36 $e1
    ld [hl], h                                    ; $697a: $74
    dec [hl]                                      ; $697b: $35
    ld c, e                                       ; $697c: $4b
    add [hl]                                      ; $697d: $86
    sub [hl]                                      ; $697e: $96
    ld a, c                                       ; $697f: $79
    ld e, l                                       ; $6980: $5d
    pop hl                                        ; $6981: $e1
    sbc d                                         ; $6982: $9a
    ld h, c                                       ; $6983: $61
    push hl                                       ; $6984: $e5

Jump_065_6985:
    ld c, a                                       ; $6985: $4f
    rrca                                          ; $6986: $0f
    jp Jump_000_1fdc                              ; $6987: $c3 $dc $1f


    rst $20                                       ; $698a: $e7
    ld b, d                                       ; $698b: $42
    ld a, a                                       ; $698c: $7f
    or a                                          ; $698d: $b7
    ld hl, sp+$14                                 ; $698e: $f8 $14
    sub l                                         ; $6990: $95
    jp hl                                         ; $6991: $e9


Call_065_6992:
    ld sp, $9a16                                  ; $6992: $31 $16 $9a
    rst $00                                       ; $6995: $c7
    sub l                                         ; $6996: $95
    push af                                       ; $6997: $f5
    ld [hl], d                                    ; $6998: $72
    rla                                           ; $6999: $17
    xor h                                         ; $699a: $ac
    ld c, [hl]                                    ; $699b: $4e
    or d                                          ; $699c: $b2
    ld a, $9d                                     ; $699d: $3e $9d
    or d                                          ; $699f: $b2
    ld a, $8d                                     ; $69a0: $3e $8d
    sbc l                                         ; $69a2: $9d
    cp $c9                                        ; $69a3: $fe $c9
    or l                                          ; $69a5: $b5
    ld b, $d4                                     ; $69a6: $06 $d4
    di                                            ; $69a8: $f3
    inc [hl]                                      ; $69a9: $34
    adc a                                         ; $69aa: $8f
    ld h, l                                       ; $69ab: $65
    sbc $1f                                       ; $69ac: $de $1f
    ld [c], a                                     ; $69ae: $e2
    jp hl                                         ; $69af: $e9


    ld sp, $0a36                                  ; $69b0: $31 $36 $0a
    and a                                         ; $69b3: $a7
    cp $a8                                        ; $69b4: $fe $a8
    ld c, [hl]                                    ; $69b6: $4e
    cp l                                          ; $69b7: $bd
    ld e, h                                       ; $69b8: $5c
    ld l, b                                       ; $69b9: $68
    and d                                         ; $69ba: $a2
    ld b, d                                       ; $69bb: $42
    di                                            ; $69bc: $f3
    cp b                                          ; $69bd: $b8
    xor $5f                                       ; $69be: $ee $5f
    xor b                                         ; $69c0: $a8
    rrca                                          ; $69c1: $0f
    ld h, e                                       ; $69c2: $63
    inc bc                                        ; $69c3: $03
    ld [$fb24], a                                 ; $69c4: $ea $24 $fb
    adc a                                         ; $69c7: $8f
    add hl, sp                                    ; $69c8: $39
    ld bc, $93ec                                  ; $69c9: $01 $ec $93
    cp $58                                        ; $69cc: $fe $58
    ld h, [hl]                                    ; $69ce: $66
    call z, Call_000_3fb8                         ; $69cf: $cc $b8 $3f
    adc c                                         ; $69d2: $89
    ld h, e                                       ; $69d3: $63
    add hl, hl                                    ; $69d4: $29
    add a                                         ; $69d5: $87
    ld [hl-], a                                   ; $69d6: $32
    ld b, $6a                                     ; $69d7: $06 $6a
    db $fd                                        ; $69d9: $fd
    or c                                          ; $69da: $b1
    ld [hl-], a                                   ; $69db: $32
    push hl                                       ; $69dc: $e5
    ld e, [hl]                                    ; $69dd: $5e
    ld [hl], l                                    ; $69de: $75
    halt                                          ; $69df: $76
    cp l                                          ; $69e0: $bd
    sbc b                                         ; $69e1: $98
    sbc h                                         ; $69e2: $9c
    ld c, l                                       ; $69e3: $4d
    db $ed                                        ; $69e4: $ed
    ld [hl], $e1                                  ; $69e5: $36 $e1
    ld [hl], h                                    ; $69e7: $74
    ld e, l                                       ; $69e8: $5d
    dec d                                         ; $69e9: $15
    ld l, c                                       ; $69ea: $69
    ld h, a                                       ; $69eb: $67
    ld [hl], e                                    ; $69ec: $73
    ld a, a                                       ; $69ed: $7f
    ld [c], a                                     ; $69ee: $e2
    ld a, a                                       ; $69ef: $7f
    ld [de], a                                    ; $69f0: $12
    xor a                                         ; $69f1: $af
    add hl, hl                                    ; $69f2: $29
    add a                                         ; $69f3: $87
    ld c, [hl]                                    ; $69f4: $4e
    rst $08                                       ; $69f5: $cf
    or a                                          ; $69f6: $b7
    rst $20                                       ; $69f7: $e7
    daa                                           ; $69f8: $27
    ld h, a                                       ; $69f9: $67
    inc b                                         ; $69fa: $04
    ld [hl], $a3                                  ; $69fb: $36 $a3
    ret nc                                        ; $69fd: $d0

    call z, $cb15                                 ; $69fe: $cc $15 $cb
    ld d, d                                       ; $6a01: $52
    add b                                         ; $6a02: $80
    dec bc                                        ; $6a03: $0b
    or h                                          ; $6a04: $b4
    cp e                                          ; $6a05: $bb
    dec a                                         ; $6a06: $3d
    and e                                         ; $6a07: $a3
    ld [de], a                                    ; $6a08: $12
    ld c, e                                       ; $6a09: $4b
    ld [hl], d                                    ; $6a0a: $72
    xor h                                         ; $6a0b: $ac
    rst $08                                       ; $6a0c: $cf
    and b                                         ; $6a0d: $a0
    db $dd                                        ; $6a0e: $dd
    cp a                                          ; $6a0f: $bf
    cp [hl]                                       ; $6a10: $be
    call $8cef                                    ; $6a11: $cd $ef $8c
    dec c                                         ; $6a14: $0d
    ld e, b                                       ; $6a15: $58
    ld [hl], b                                    ; $6a16: $70
    ld a, a                                       ; $6a17: $7f
    db $db                                        ; $6a18: $db
    adc l                                         ; $6a19: $8d
    ld h, l                                       ; $6a1a: $65
    jp z, Jump_000_1ebd                           ; $6a1b: $ca $bd $1e

    sbc [hl]                                      ; $6a1e: $9e
    rst $10                                       ; $6a1f: $d7
    or h                                          ; $6a20: $b4
    reti                                          ; $6a21: $d9


    db $dd                                        ; $6a22: $dd
    db $ed                                        ; $6a23: $ed
    ld [hl], $61                                  ; $6a24: $36 $61
    inc bc                                        ; $6a26: $03
    ld d, [hl]                                    ; $6a27: $56
    adc a                                         ; $6a28: $8f
    jp c, $ab0c                                   ; $6a29: $da $0c $ab

    rst $30                                       ; $6a2c: $f7
    db $fd                                        ; $6a2d: $fd
    inc c                                         ; $6a2e: $0c
    ld d, e                                       ; $6a2f: $53
    rst $18                                       ; $6a30: $df
    ret c                                         ; $6a31: $d8

    ld l, h                                       ; $6a32: $6c
    ld l, e                                       ; $6a33: $6b
    ld a, d                                       ; $6a34: $7a
    ld a, a                                       ; $6a35: $7f
    sub a                                         ; $6a36: $97
    ld hl, $a726                                  ; $6a37: $21 $26 $a7
    adc h                                         ; $6a3a: $8c
    add c                                         ; $6a3b: $81
    ld h, c                                       ; $6a3c: $61
    cp d                                          ; $6a3d: $ba
    ld a, a                                       ; $6a3e: $7f
    or e                                          ; $6a3f: $b3
    ld h, e                                       ; $6a40: $63
    ld a, l                                       ; $6a41: $7d
    sbc e                                         ; $6a42: $9b
    rst $18                                       ; $6a43: $df
    add hl, de                                    ; $6a44: $19
    db $eb                                        ; $6a45: $eb
    adc a                                         ; $6a46: $8f
    dec [hl]                                      ; $6a47: $35
    ld c, a                                       ; $6a48: $4f
    sbc b                                         ; $6a49: $98
    ld c, [hl]                                    ; $6a4a: $4e
    rla                                           ; $6a4b: $17
    add [hl]                                      ; $6a4c: $86
    reti                                          ; $6a4d: $d9


    ldh a, [rSB]                                  ; $6a4e: $f0 $01
    ld e, e                                       ; $6a50: $5b
    xor c                                         ; $6a51: $a9
    adc l                                         ; $6a52: $8d
    jp nz, $d7a9                                  ; $6a53: $c2 $a9 $d7

    cp l                                          ; $6a56: $bd
    or d                                          ; $6a57: $b2
    dec bc                                        ; $6a58: $0b
    jp Jump_000_2234                              ; $6a59: $c3 $34 $22


    ld h, $9d                                     ; $6a5c: $26 $9d
    cp h                                          ; $6a5e: $bc
    db $db                                        ; $6a5f: $db
    di                                            ; $6a60: $f3
    ld e, [hl]                                    ; $6a61: $5e
    jp z, $95e1                                   ; $6a62: $ca $e1 $95

    add hl, hl                                    ; $6a65: $29
    rst $30                                       ; $6a66: $f7
    ld b, h                                       ; $6a67: $44
    dec d                                         ; $6a68: $15
    ldh [$62], a                                  ; $6a69: $e0 $62
    sbc [hl]                                      ; $6a6b: $9e
    ld [hl], d                                    ; $6a6c: $72
    sbc d                                         ; $6a6d: $9a
    pop hl                                        ; $6a6e: $e1
    ld a, [$d78f]                                 ; $6a6f: $fa $8f $d7
    ld [hl], b                                    ; $6a72: $70
    rst $18                                       ; $6a73: $df
    rst $30                                       ; $6a74: $f7
    rlca                                          ; $6a75: $07
    rla                                           ; $6a76: $17
    ld l, b                                       ; $6a77: $68
    sbc [hl]                                      ; $6a78: $9e
    ei                                            ; $6a79: $fb
    cp [hl]                                       ; $6a7a: $be
    sbc a                                         ; $6a7b: $9f
    and $e9                                       ; $6a7c: $e6 $e9
    cp d                                          ; $6a7e: $ba
    ld h, [hl]                                    ; $6a7f: $66
    rla                                           ; $6a80: $17
    and [hl]                                      ; $6a81: $a6
    ld [de], a                                    ; $6a82: $12
    ld l, [hl]                                    ; $6a83: $6e
    db $d3                                        ; $6a84: $d3
    rlca                                          ; $6a85: $07
    ld h, a                                       ; $6a86: $67
    call c, $8eed                                 ; $6a87: $dc $ed $8e
    db $dd                                        ; $6a8a: $dd
    cp e                                          ; $6a8b: $bb
    and d                                         ; $6a8c: $a2
    inc e                                         ; $6a8d: $1c
    db $ed                                        ; $6a8e: $ed
    add d                                         ; $6a8f: $82
    dec d                                         ; $6a90: $15
    xor l                                         ; $6a91: $ad
    dec bc                                        ; $6a92: $0b
    ld c, $86                                     ; $6a93: $0e $86
    ld [hl], $a0                                  ; $6a95: $36 $a0
    cp [hl]                                       ; $6a97: $be
    ld sp, $bef3                                  ; $6a98: $31 $f3 $be
    rst $28                                       ; $6a9b: $ef
    add [hl]                                      ; $6a9c: $86
    rla                                           ; $6a9d: $17
    sub e                                         ; $6a9e: $93
    ld a, b                                       ; $6a9f: $78
    ld [hl], $0d                                  ; $6aa0: $36 $0d
    xor b                                         ; $6aa2: $a8
    rla                                           ; $6aa3: $17
    cpl                                           ; $6aa4: $2f
    cp a                                          ; $6aa5: $bf
    rra                                           ; $6aa6: $1f
    rst $08                                       ; $6aa7: $cf
    ld b, [hl]                                    ; $6aa8: $46
    ld b, l                                       ; $6aa9: $45
    dec a                                         ; $6aaa: $3d
    inc a                                         ; $6aab: $3c
    xor a                                         ; $6aac: $af
    ld l, c                                       ; $6aad: $69
    reti                                          ; $6aae: $d9


    dec d                                         ; $6aaf: $15
    db $ec                                        ; $6ab0: $ec
    cp [hl]                                       ; $6ab1: $be
    rst $28                                       ; $6ab2: $ef
    xor d                                         ; $6ab3: $aa
    di                                            ; $6ab4: $f3
    cp [hl]                                       ; $6ab5: $be
    rst $38                                       ; $6ab6: $ff
    ld hl, $6866                                  ; $6ab7: $21 $66 $68
    db $fd                                        ; $6aba: $fd
    jp $7f6d                                      ; $6abb: $c3 $6d $7f


    ld l, l                                       ; $6abe: $6d
    halt                                          ; $6abf: $76
    call nc, $23fe                                ; $6ac0: $d4 $fe $23
    ld a, l                                       ; $6ac3: $7d
    and e                                         ; $6ac4: $a3
    ld [hl], $b0                                  ; $6ac5: $36 $b0
    ret nc                                        ; $6ac7: $d0

    ld a, a                                       ; $6ac8: $7f
    ld d, $de                                     ; $6ac9: $16 $de
    rra                                           ; $6acb: $1f
    adc c                                         ; $6acc: $89
    ld d, h                                       ; $6acd: $54
    add l                                         ; $6ace: $85
    inc e                                         ; $6acf: $1c
    dec l                                         ; $6ad0: $2d
    db $d3                                        ; $6ad1: $d3
    ld h, e                                       ; $6ad2: $63
    inc l                                         ; $6ad3: $2c
    and a                                         ; $6ad4: $a7
    rst $38                                       ; $6ad5: $ff
    ld a, b                                       ; $6ad6: $78
    dec c                                         ; $6ad7: $0d
    ld d, l                                       ; $6ad8: $55
    and h                                         ; $6ad9: $a4
    db $dd                                        ; $6ada: $dd
    adc e                                         ; $6adb: $8b
    add hl, de                                    ; $6adc: $19
    rst $30                                       ; $6add: $f7
    ld a, l                                       ; $6ade: $7d
    ld a, a                                       ; $6adf: $7f
    add a                                         ; $6ae0: $87
    ld e, a                                       ; $6ae1: $5f
    or [hl]                                       ; $6ae2: $b6
    ld d, [hl]                                    ; $6ae3: $56
    rrca                                          ; $6ae4: $0f
    and h                                         ; $6ae5: $a4
    xor b                                         ; $6ae6: $a8
    db $eb                                        ; $6ae7: $eb
    ld a, [hl+]                                   ; $6ae8: $2a
    or c                                          ; $6ae9: $b1
    inc h                                         ; $6aea: $24
    rst $00                                       ; $6aeb: $c7
    ld a, [de]                                    ; $6aec: $1a
    and b                                         ; $6aed: $a0
    ld a, $ff                                     ; $6aee: $3e $ff
    inc h                                         ; $6af0: $24
    ld c, l                                       ; $6af1: $4d
    adc $c6                                       ; $6af2: $ce $c6
    jr c, jr_065_6b70                             ; $6af4: $38 $7a

    or a                                          ; $6af6: $b7
    ld e, e                                       ; $6af7: $5b
    ld l, b                                       ; $6af8: $68
    or [hl]                                       ; $6af9: $b6
    ld d, e                                       ; $6afa: $53
    call nc, $f3c3                                ; $6afb: $d4 $c3 $f3
    ld e, d                                       ; $6afe: $5a
    sbc c                                         ; $6aff: $99
    ld [hl], d                                    ; $6b00: $72
    xor a                                         ; $6b01: $af
    db $d3                                        ; $6b02: $d3
    ldh a, [$62]                                  ; $6b03: $f0 $62
    ld [de], a                                    ; $6b05: $12
    rst $08                                       ; $6b06: $cf
    and [hl]                                      ; $6b07: $a6
    sub d                                         ; $6b08: $92
    ld c, a                                       ; $6b09: $4f
    db $eb                                        ; $6b0a: $eb
    inc h                                         ; $6b0b: $24

Jump_065_6b0c:
    cp e                                          ; $6b0c: $bb
    inc a                                         ; $6b0d: $3c
    call $986c                                    ; $6b0e: $cd $6c $98
    and [hl]                                      ; $6b11: $a6
    inc e                                         ; $6b12: $1c
    cp d                                          ; $6b13: $ba
    ld [c], a                                     ; $6b14: $e2
    db $d3                                        ; $6b15: $d3
    ld a, [$ff86]                                 ; $6b16: $fa $86 $ff
    add hl, hl                                    ; $6b19: $29
    db $ed                                        ; $6b1a: $ed
    ld l, [hl]                                    ; $6b1b: $6e
    scf                                           ; $6b1c: $37
    adc a                                         ; $6b1d: $8f
    db $f4                                        ; $6b1e: $f4
    adc l                                         ; $6b1f: $8d
    call Call_065_4c2e                            ; $6b20: $cd $2e $4c
    and a                                         ; $6b23: $a7
    add hl, hl                                    ; $6b24: $29
    add a                                         ; $6b25: $87
    ld e, $9e                                     ; $6b26: $1e $9e
    rst $10                                       ; $6b28: $d7
    ld a, [de]                                    ; $6b29: $1a
    reti                                          ; $6b2a: $d9


    push hl                                       ; $6b2b: $e5
    ld l, c                                       ; $6b2c: $69
    and $dd                                       ; $6b2d: $e6 $dd
    inc b                                         ; $6b2f: $04
    rst $10                                       ; $6b30: $d7
    push de                                       ; $6b31: $d5
    cp b                                          ; $6b32: $b8
    ld a, d                                       ; $6b33: $7a
    sbc h                                         ; $6b34: $9c
    cp $b4                                        ; $6b35: $fe $b4
    ld c, [hl]                                    ; $6b37: $4e
    and e                                         ; $6b38: $a3
    ld [hl], b                                    ; $6b39: $70
    ld [hl], $2a                                  ; $6b3a: $36 $2a
    sbc $c6                                       ; $6b3c: $de $c6
    sub h                                         ; $6b3e: $94
    dec sp                                        ; $6b3f: $3b
    ld d, b                                       ; $6b40: $50
    call nc, $fdc3                                ; $6b41: $d4 $c3 $fd
    ld a, c                                       ; $6b44: $79
    jp c, $b8d5                                   ; $6b45: $da $d5 $b8

    ld h, [hl]                                    ; $6b48: $66
    ld e, b                                       ; $6b49: $58
    rst $38                                       ; $6b4a: $ff
    adc c                                         ; $6b4b: $89
    ld sp, hl                                     ; $6b4c: $f9
    and l                                         ; $6b4d: $a5
    and a                                         ; $6b4e: $a7
    sub b                                         ; $6b4f: $90
    push af                                       ; $6b50: $f5
    ld a, [de]                                    ; $6b51: $1a
    ld h, d                                       ; $6b52: $62
    ld a, $9c                                     ; $6b53: $3e $9c
    db $d3                                        ; $6b55: $d3
    di                                            ; $6b56: $f3
    db $ed                                        ; $6b57: $ed
    push bc                                       ; $6b58: $c5
    db $f4                                        ; $6b59: $f4
    db $e4                                        ; $6b5a: $e4
    xor h                                         ; $6b5b: $ac
    rst $30                                       ; $6b5c: $f7
    rlca                                          ; $6b5d: $07
    db $db                                        ; $6b5e: $db
    sbc e                                         ; $6b5f: $9b
    ld [hl], d                                    ; $6b60: $72
    add sp, -$46                                  ; $6b61: $e8 $ba
    ld c, [hl]                                    ; $6b63: $4e
    and e                                         ; $6b64: $a3
    ld [hl], b                                    ; $6b65: $70
    ld [hl], $2a                                  ; $6b66: $36 $2a
    sbc $c6                                       ; $6b68: $de $c6
    sub h                                         ; $6b6a: $94
    dec sp                                        ; $6b6b: $3b
    ld [hl], b                                    ; $6b6c: $70
    db $d3                                        ; $6b6d: $d3
    rlca                                          ; $6b6e: $07
    db $db                                        ; $6b6f: $db

jr_065_6b70:
    add h                                         ; $6b70: $84
    call Call_000_3fa8                            ; $6b71: $cd $a8 $3f
    xor d                                         ; $6b74: $aa
    db $d3                                        ; $6b75: $d3
    ldh a, [rPCM12]                               ; $6b76: $f0 $76
    pop bc                                        ; $6b78: $c1
    xor $76                                       ; $6b79: $ee $76
    dec de                                        ; $6b7b: $1b
    jp nc, $ffbb                                  ; $6b7c: $d2 $bb $ff

    ld l, a                                       ; $6b7f: $6f
    or h                                          ; $6b80: $b4
    pop hl                                        ; $6b81: $e1
    ldh a, [$2d]                                  ; $6b82: $f0 $2d
    sub e                                         ; $6b84: $93
    ld d, $44                                     ; $6b85: $16 $44
    bit 7, d                                      ; $6b87: $cb $7a
    or a                                          ; $6b89: $b7
    add a                                         ; $6b8a: $87
    ld e, a                                       ; $6b8b: $5f
    or [hl]                                       ; $6b8c: $b6
    xor [hl]                                      ; $6b8d: $ae
    ld [bc], a                                    ; $6b8e: $02
    sub $44                                       ; $6b8f: $d6 $44
    db $dd                                        ; $6b91: $dd
    ld b, d                                       ; $6b92: $42
    or e                                          ; $6b93: $b3
    sbc l                                         ; $6b94: $9d
    rst $30                                       ; $6b95: $f7
    rlca                                          ; $6b96: $07
    db $db                                        ; $6b97: $db
    dec a                                         ; $6b98: $3d
    or $d2                                        ; $6b99: $f6 $d2
    inc c                                         ; $6b9b: $0c
    ld d, e                                       ; $6b9c: $53
    ld a, a                                       ; $6b9d: $7f
    xor h                                         ; $6b9e: $ac
    ld a, $55                                     ; $6b9f: $3e $55
    ld l, c                                       ; $6ba1: $69
    push af                                       ; $6ba2: $f5
    rst $00                                       ; $6ba3: $c7
    ld a, [$ddaf]                                 ; $6ba4: $fa $af $dd
    rra                                           ; $6ba7: $1f
    ld d, a                                       ; $6ba8: $57
    call z, Call_065_5992                         ; $6ba9: $cc $92 $59
    adc a                                         ; $6bac: $8f
    ld h, c                                       ; $6bad: $61
    dec b                                         ; $6bae: $05
    adc c                                         ; $6baf: $89
    sbc b                                         ; $6bb0: $98
    ld [hl], c                                    ; $6bb1: $71
    ld a, a                                       ; $6bb2: $7f
    ld [c], a                                     ; $6bb3: $e2
    push af                                       ; $6bb4: $f5

Jump_065_6bb5:
    rst $00                                       ; $6bb5: $c7
    ld [hl-], a                                   ; $6bb6: $32
    cp e                                          ; $6bb7: $bb
    xor [hl]                                      ; $6bb8: $ae
    cp $58                                        ; $6bb9: $fe $58
    cp c                                          ; $6bbb: $b9
    inc a                                         ; $6bbc: $3c
    ld d, c                                       ; $6bbd: $51
    dec d                                         ; $6bbe: $15
    ld sp, $7639                                  ; $6bbf: $31 $39 $76
    ld a, a                                       ; $6bc2: $7f
    add hl, bc                                    ; $6bc3: $09
    sbc d                                         ; $6bc4: $9a
    add hl, hl                                    ; $6bc5: $29
    ld b, a                                       ; $6bc6: $47
    sbc e                                         ; $6bc7: $9b
    ld [hl], d                                    ; $6bc8: $72
    ld d, h                                       ; $6bc9: $54
    sub h                                         ; $6bca: $94
    push af                                       ; $6bcb: $f5
    ld [c], a                                     ; $6bcc: $e2
    ld c, a                                       ; $6bcd: $4f
    jp nc, $d3ea                                  ; $6bce: $d2 $ea $d3

    ret c                                         ; $6bd1: $d8

    add hl, hl                                    ; $6bd2: $29
    rla                                           ; $6bd3: $17
    add hl, sp                                    ; $6bd4: $39
    db $eb                                        ; $6bd5: $eb
    ld b, a                                       ; $6bd6: $47
    ld d, h                                       ; $6bd7: $54
    ld b, l                                       ; $6bd8: $45
    ld c, h                                       ; $6bd9: $4c
    adc [hl]                                      ; $6bda: $8e
    db $dd                                        ; $6bdb: $dd
    xor l                                         ; $6bdc: $ad
    ld hl, sp-$61                                 ; $6bdd: $f8 $9f
    sbc h                                         ; $6bdf: $9c
    and [hl]                                      ; $6be0: $a6
    inc e                                         ; $6be1: $1c
    ld a, [de]                                    ; $6be2: $1a
    add l                                         ; $6be3: $85
    db $d3                                        ; $6be4: $d3
    dec d                                         ; $6be5: $15
    ld e, a                                       ; $6be6: $5f
    ld d, e                                       ; $6be7: $53
    ld c, $06                                     ; $6be8: $0e $06
    db $eb                                        ; $6bea: $eb
    ld a, [bc]                                    ; $6beb: $0a
    or [hl]                                       ; $6bec: $b6
    ld sp, $f68e                                  ; $6bed: $31 $8e $f6
    rra                                           ; $6bf0: $1f
    add hl, bc                                    ; $6bf1: $09
    cp e                                          ; $6bf2: $bb
    ccf                                           ; $6bf3: $3f
    db $db                                        ; $6bf4: $db
    dec a                                         ; $6bf5: $3d
    or $d2                                        ; $6bf6: $f6 $d2
    inc c                                         ; $6bf8: $0c
    xor h                                         ; $6bf9: $ac
    ccf                                           ; $6bfa: $3f
    ld d, [hl]                                    ; $6bfb: $56
    rst $18                                       ; $6bfc: $df
    ldh [$85], a                                  ; $6bfd: $e0 $85
    dec a                                         ; $6bff: $3d
    db $eb                                        ; $6c00: $eb
    db $f4                                        ; $6c01: $f4
    ld a, h                                       ; $6c02: $7c
    ld a, e                                       ; $6c03: $7b
    ld sp, $393d                                  ; $6c04: $31 $3d $39
    db $eb                                        ; $6c07: $eb
    db $fd                                        ; $6c08: $fd
    ld bc, $2fdb                                  ; $6c09: $01 $db $2f
    cp d                                          ; $6c0c: $ba
    ccf                                           ; $6c0d: $3f
    db $db                                        ; $6c0e: $db
    sub a                                         ; $6c0f: $97
    or l                                          ; $6c10: $b5
    ei                                            ; $6c11: $fb
    inc bc                                        ; $6c12: $03
    db $db                                        ; $6c13: $db
    dec a                                         ; $6c14: $3d
    or $d2                                        ; $6c15: $f6 $d2
    inc c                                         ; $6c17: $0c
    ld [hl], e                                    ; $6c18: $73
    ld a, a                                       ; $6c19: $7f
    ld [c], a                                     ; $6c1a: $e2
    jp c, Jump_000_0465                           ; $6c1b: $da $65 $04

    ld d, b                                       ; $6c1e: $50
    cp e                                          ; $6c1f: $bb
    sbc d                                         ; $6c20: $9a
    dec h                                         ; $6c21: $25
    ld d, e                                       ; $6c22: $53
    sub [hl]                                      ; $6c23: $96
    db $fd                                        ; $6c24: $fd
    ld b, a                                       ; $6c25: $47
    ld a, [$2b46]                                 ; $6c26: $fa $46 $2b
    ld d, e                                       ; $6c29: $53
    xor $2d                                       ; $6c2a: $ee $2d
    db $d3                                        ; $6c2c: $d3
    sub h                                         ; $6c2d: $94
    ld b, e                                       ; $6c2e: $43
    ld d, a                                       ; $6c2f: $57
    adc b                                         ; $6c30: $88
    ld bc, $bef2                                  ; $6c31: $01 $f2 $be
    rst $28                                       ; $6c34: $ef
    or d                                          ; $6c35: $b2
    cp [hl]                                       ; $6c36: $be
    ld h, c                                       ; $6c37: $61
    db $fd                                        ; $6c38: $fd
    ld l, b                                       ; $6c39: $68
    dec c                                         ; $6c3a: $0d
    pop bc                                        ; $6c3b: $c1
    db $ed                                        ; $6c3c: $ed
    ld a, d                                       ; $6c3d: $7a
    ld h, c                                       ; $6c3e: $61
    ld d, h                                       ; $6c3f: $54
    call nc, $a17f                                ; $6c40: $d4 $7f $a1
    call Call_000_01fd                            ; $6c43: $cd $fd $01
    ld h, a                                       ; $6c46: $67
    ld l, b                                       ; $6c47: $68
    or c                                          ; $6c48: $b1
    ld h, b                                       ; $6c49: $60
    ld b, e                                       ; $6c4a: $43
    cpl                                           ; $6c4b: $2f
    ld [hl], c                                    ; $6c4c: $71
    or b                                          ; $6c4d: $b0
    add [hl]                                      ; $6c4e: $86
    or a                                          ; $6c4f: $b7
    dec bc                                        ; $6c50: $0b
    ld h, $ea                                     ; $6c51: $26 $ea
    ld a, [hl-]                                   ; $6c53: $3a
    ld l, l                                       ; $6c54: $6d
    halt                                          ; $6c55: $76
    dec de                                        ; $6c56: $1b
    ld a, d                                       ; $6c57: $7a
    adc c                                         ; $6c58: $89
    add e                                         ; $6c59: $83
    dec [hl]                                      ; $6c5a: $35
    cp h                                          ; $6c5b: $bc
    ld e, l                                       ; $6c5c: $5d
    jr nc, @+$53                                  ; $6c5d: $30 $51

    rst $10                                       ; $6c5f: $d7
    ld l, c                                       ; $6c60: $69
    and a                                         ; $6c61: $a7

jr_065_6c62:
    ld e, e                                       ; $6c62: $5b
    ld l, b                                       ; $6c63: $68
    or [hl]                                       ; $6c64: $b6
    or e                                          ; $6c65: $b3
    adc c                                         ; $6c66: $89
    sub e                                         ; $6c67: $93
    inc sp                                        ; $6c68: $33
    ld l, h                                       ; $6c69: $6c
    jp $9b07                                      ; $6c6a: $c3 $07 $9b


    db $dd                                        ; $6c6d: $dd
    dec bc                                        ; $6c6e: $0b
    inc c                                         ; $6c6f: $0c
    db $d3                                        ; $6c70: $d3
    ld a, a                                       ; $6c71: $7f
    ld h, h                                       ; $6c72: $64
    ld b, a                                       ; $6c73: $47
    db $eb                                        ; $6c74: $eb
    pop bc                                        ; $6c75: $c1
    ccf                                           ; $6c76: $3f
    jp c, Jump_000_1985                           ; $6c77: $da $85 $19

    add $a7                                       ; $6c7a: $c6 $a7
    rst $30                                       ; $6c7c: $f7
    ld a, l                                       ; $6c7d: $7d
    sub a                                         ; $6c7e: $97
    ld c, e                                       ; $6c7f: $4b
    jp c, $6d45                                   ; $6c80: $da $45 $6d

    ld a, $50                                     ; $6c83: $3e $50
    sub $98                                       ; $6c85: $d6 $98
    cp c                                          ; $6c87: $b9
    adc e                                         ; $6c88: $8b
    sub c                                         ; $6c89: $91
    ld e, d                                       ; $6c8a: $5a
    call nz, $0931                                ; $6c8b: $c4 $31 $09
    cp l                                          ; $6c8e: $bd
    ccf                                           ; $6c8f: $3f
    db $db                                        ; $6c90: $db
    add h                                         ; $6c91: $84
    ld d, e                                       ; $6c92: $53
    xor a                                         ; $6c93: $af
    inc de                                        ; $6c94: $13
    ld b, b                                       ; $6c95: $40
    ld l, l                                       ; $6c96: $6d
    ld b, b                                       ; $6c97: $40
    di                                            ; $6c98: $f3
    inc b                                         ; $6c99: $04
    ld l, d                                       ; $6c9a: $6a
    xor c                                         ; $6c9b: $a9
    db $fd                                        ; $6c9c: $fd
    db $ed                                        ; $6c9d: $ed
    ld sp, $a33b                                  ; $6c9e: $31 $3b $a3
    ld [hl], $e5                                  ; $6ca1: $36 $e5
    ld d, b                                       ; $6ca3: $50
    call nz, Call_065_627f                        ; $6ca4: $c4 $7f $62
    ld [hl], $ea                                  ; $6ca7: $36 $ea
    db $dd                                        ; $6ca9: $dd
    ld l, l                                       ; $6caa: $6d
    jp nz, Jump_000_3fa9                          ; $6cab: $c2 $a9 $3f

    ld bc, $00da                                  ; $6cae: $01 $da $00
    or e                                          ; $6cb1: $b3
    ret                                           ; $6cb2: $c9


    or h                                          ; $6cb3: $b4
    cp $f6                                        ; $6cb4: $fe $f6
    sbc b                                         ; $6cb6: $98
    sbc l                                         ; $6cb7: $9d
    ld d, c                                       ; $6cb8: $51
    db $eb                                        ; $6cb9: $eb
    dec e                                         ; $6cba: $1d
    set 2, b                                      ; $6cbb: $cb $d0
    ld c, d                                       ; $6cbd: $4a
    ld a, $6d                                     ; $6cbe: $3e $6d
    and [hl]                                      ; $6cc0: $a6
    dec b                                         ; $6cc1: $05
    ld d, h                                       ; $6cc2: $54
    pop de                                        ; $6cc3: $d1
    jr z, jr_065_6c62                             ; $6cc4: $28 $9c

    ld b, $98                                     ; $6cc6: $06 $98
    ld c, l                                       ; $6cc8: $4d
    and [hl]                                      ; $6cc9: $a6

jr_065_6cca:
    ld b, c                                       ; $6cca: $41
    set 6, h                                      ; $6ccb: $cb $f4
    jr jr_065_6cca                                ; $6ccd: $18 $fb

    db $db                                        ; $6ccf: $db
    ld h, e                                       ; $6cd0: $63
    halt                                          ; $6cd1: $76
    ld b, [hl]                                    ; $6cd2: $46
    xor l                                         ; $6cd3: $ad
    rst $10                                       ; $6cd4: $d7
    ld hl, sp+$53                                 ; $6cd5: $f8 $53
    rst $28                                       ; $6cd7: $ef
    rrca                                          ; $6cd8: $0f
    ld [c], a                                     ; $6cd9: $e2
    dec a                                         ; $6cda: $3d
    rst $30                                       ; $6cdb: $f7
    ld sp, $713d                                  ; $6cdc: $31 $3d $71
    and e                                         ; $6cdf: $a3
    ld hl, sp-$2e                                 ; $6ce0: $f8 $d2
    inc c                                         ; $6ce2: $0c
    reti                                          ; $6ce3: $d9


    daa                                           ; $6ce4: $27
    ld de, $5a95                                  ; $6ce5: $11 $95 $5a
    rra                                           ; $6ce8: $1f
    ld a, a                                       ; $6ce9: $7f
    ld a, [c]                                     ; $6cea: $f2
    push bc                                       ; $6ceb: $c5
    ccf                                           ; $6cec: $3f
    ld c, c                                       ; $6ced: $49
    cp l                                          ; $6cee: $bd
    rst $28                                       ; $6cef: $ef
    cp e                                          ; $6cf0: $bb
    db $eb                                        ; $6cf1: $eb
    ld [$fb5d], a                                 ; $6cf2: $ea $5d $fb
    rst $18                                       ; $6cf5: $df
    jp nc, Jump_000_3534                          ; $6cf6: $d2 $34 $35

    db $d3                                        ; $6cf9: $d3
    ld a, [hl+]                                   ; $6cfa: $2a
    db $dd                                        ; $6cfb: $dd
    set 2, e                                      ; $6cfc: $cb $d3
    ldh a, [$62]                                  ; $6cfe: $f0 $62
    ld [de], a                                    ; $6d00: $12
    rst $08                                       ; $6d01: $cf
    and $fe                                       ; $6d02: $e6 $fe
    nop                                           ; $6d04: $00
    rst $20                                       ; $6d05: $e7
    jp nz, Jump_000_326c                          ; $6d06: $c2 $6c $32

    set 6, h                                      ; $6d09: $cb $f4
    jr @+$3d                                      ; $6d0b: $18 $3b

    ld e, d                                       ; $6d0d: $5a
    add hl, sp                                    ; $6d0e: $39
    ld d, c                                       ; $6d0f: $51
    or e                                          ; $6d10: $b3
    adc l                                         ; $6d11: $8d
    ld d, [hl]                                    ; $6d12: $56
    ld a, [c]                                     ; $6d13: $f2
    ld l, c                                       ; $6d14: $69
    cp l                                          ; $6d15: $bd
    add $7f                                       ; $6d16: $c6 $7f
    or h                                          ; $6d18: $b4
    xor b                                         ; $6d19: $a8
    db $e4                                        ; $6d1a: $e4
    db $d3                                        ; $6d1b: $d3
    ld h, [hl]                                    ; $6d1c: $66
    ld e, d                                       ; $6d1d: $5a
    ld b, b                                       ; $6d1e: $40
    inc bc                                        ; $6d1f: $03
    call z, $d326                                 ; $6d20: $cc $26 $d3
    sub $b4                                       ; $6d23: $d6 $b4
    and e                                         ; $6d25: $a3
    sub l                                         ; $6d26: $95
    ld a, h                                       ; $6d27: $7c
    ld e, d                                       ; $6d28: $5a
    rst $28                                       ; $6d29: $ef
    ld e, b                                       ; $6d2a: $58
    add [hl]                                      ; $6d2b: $86
    sbc $1f                                       ; $6d2c: $de $1f
    dec sp                                        ; $6d2e: $3b
    ld d, b                                       ; $6d2f: $50
    ret                                           ; $6d30: $c9


    db $f4                                        ; $6d31: $f4
    ret nc                                        ; $6d32: $d0

    and b                                         ; $6d33: $a0
    sbc l                                         ; $6d34: $9d
    ld a, [$3aeb]                                 ; $6d35: $fa $eb $3a
    xor [hl]                                      ; $6d38: $ae
    adc d                                         ; $6d39: $8a
    ld a, d                                       ; $6d3a: $7a
    rst $00                                       ; $6d3b: $c7
    and b                                         ; $6d3c: $a0
    ld h, l                                       ; $6d3d: $65
    and $cf                                       ; $6d3e: $e6 $cf
    jr nc, @-$09                                  ; $6d40: $30 $f5

    rst $00                                       ; $6d42: $c7
    ld [$6b24], a                                 ; $6d43: $ea $24 $6b
    call z, $c5dc                                 ; $6d46: $cc $dc $c5
    ld c, b                                       ; $6d49: $48
    ld d, c                                       ; $6d4a: $51
    ld d, a                                       ; $6d4b: $57
    ld a, h                                       ; $6d4c: $7c
    call $feb0                                    ; $6d4d: $cd $b0 $fe
    inc hl                                        ; $6d50: $23
    dec sp                                        ; $6d51: $3b
    db $fd                                        ; $6d52: $fd
    sbc l                                         ; $6d53: $9d
    ld sp, $3c06                                  ; $6d54: $31 $06 $3c
    sbc e                                         ; $6d57: $9b
    ei                                            ; $6d58: $fb
    inc bc                                        ; $6d59: $03
    db $db                                        ; $6d5a: $db
    dec hl                                        ; $6d5b: $2b
    or c                                          ; $6d5c: $b1
    inc h                                         ; $6d5d: $24
    rst $00                                       ; $6d5e: $c7
    ld a, [de]                                    ; $6d5f: $1a
    ld b, [hl]                                    ; $6d60: $46
    dec de                                        ; $6d61: $1b
    ld h, $8e                                     ; $6d62: $26 $8e
    ld [hl], $50                                  ; $6d64: $36 $50
    cp e                                          ; $6d66: $bb
    adc h                                         ; $6d67: $8c
    nop                                           ; $6d68: $00
    ld l, d                                       ; $6d69: $6a
    rst $10                                       ; $6d6a: $d7
    dec [hl]                                      ; $6d6b: $35
    push hl                                       ; $6d6c: $e5
    ld d, b                                       ; $6d6d: $50
    dec d                                         ; $6d6e: $15
    ld c, [hl]                                    ; $6d6f: $4e
    di                                            ; $6d70: $f3
    add h                                         ; $6d71: $84
    pop de                                        ; $6d72: $d1
    ld h, $27                                     ; $6d73: $26 $27
    ld b, d                                       ; $6d75: $42
    di                                            ; $6d76: $f3

jr_065_6d77:
    add sp, -$03                                  ; $6d77: $e8 $fd
    ld bc, $ae17                                  ; $6d79: $01 $17 $ae
    dec d                                         ; $6d7c: $15
    pop af                                        ; $6d7d: $f1
    sbc a                                         ; $6d7e: $9f
    sbc b                                         ; $6d7f: $98
    adc l                                         ; $6d80: $8d
    sbc d                                         ; $6d81: $9a
    ld d, c                                       ; $6d82: $51
    ld l, $69                                     ; $6d83: $2e $69
    rla                                           ; $6d85: $17
    or l                                          ; $6d86: $b5
    db $e3                                        ; $6d87: $e3
    ld de, $3f80                                  ; $6d88: $11 $80 $3f
    adc a                                         ; $6d8b: $8f
    ld d, $fa                                     ; $6d8c: $16 $fa
    ld c, a                                       ; $6d8e: $4f
    inc c                                         ; $6d8f: $0c
    cpl                                           ; $6d90: $2f
    adc h                                         ; $6d91: $8c
    ld l, [hl]                                    ; $6d92: $6e
    ld l, d                                       ; $6d93: $6a
    or a                                          ; $6d94: $b7
    xor h                                         ; $6d95: $ac
    ld d, l                                       ; $6d96: $55
    cp d                                          ; $6d97: $ba
    sub a                                         ; $6d98: $97
    ld b, a                                       ; $6d99: $47
    db $eb                                        ; $6d9a: $eb
    adc a                                         ; $6d9b: $8f
    dec [hl]                                      ; $6d9c: $35
    ld c, a                                       ; $6d9d: $4f
    sbc b                                         ; $6d9e: $98
    ld c, [hl]                                    ; $6d9f: $4e
    rla                                           ; $6da0: $17
    add [hl]                                      ; $6da1: $86
    cp c                                          ; $6da2: $b9
    rst $28                                       ; $6da3: $ef
    ld d, [hl]                                    ; $6da4: $56
    call c, $cd1f                                 ; $6da5: $dc $1f $cd
    db $d3                                        ; $6da8: $d3
    sub h                                         ; $6da9: $94
    ld b, e                                       ; $6daa: $43
    sbc c                                         ; $6dab: $99
    rst $10                                       ; $6dac: $d7
    dec [hl]                                      ; $6dad: $35
    cp c                                          ; $6dae: $b9
    ld d, [hl]                                    ; $6daf: $56
    daa                                           ; $6db0: $27
    dec de                                        ; $6db1: $1b
    db $10                                        ; $6db2: $10
    or e                                          ; $6db3: $b3
    ld c, l                                       ; $6db4: $4d
    inc bc                                        ; $6db5: $03
    ld d, e                                       ; $6db6: $53
    ld c, $0b                                     ; $6db7: $0e $0b
    ld [$d9a1], a                                 ; $6db9: $ea $a1 $d9
    ld e, e                                       ; $6dbc: $5b
    xor $0f                                       ; $6dbd: $ee $0f
    adc c                                         ; $6dbf: $89
    ld [hl], h                                    ; $6dc0: $74
    adc d                                         ; $6dc1: $8a
    xor $f8                                       ; $6dc2: $ee $f8
    dec c                                         ; $6dc4: $0d
    adc b                                         ; $6dc5: $88
    db $dd                                        ; $6dc6: $dd
    ld [bc], a                                    ; $6dc7: $02
    jp $e707                                      ; $6dc8: $c3 $07 $e7


    ld b, b                                       ; $6dcb: $40
    ld l, [hl]                                    ; $6dcc: $6e
    ld e, h                                       ; $6dcd: $5c
    cp l                                          ; $6dce: $bd
    jr jr_065_6d77                                ; $6dcf: $18 $a6

    sbc h                                         ; $6dd1: $9c
    adc d                                         ; $6dd2: $8a
    sbc e                                         ; $6dd3: $9b
    db $e4                                        ; $6dd4: $e4
    xor [hl]                                      ; $6dd5: $ae
    ld [hl], l                                    ; $6dd6: $75
    or d                                          ; $6dd7: $b2
    add c                                         ; $6dd8: $81
    jp c, Jump_065_63cd                           ; $6dd9: $da $cd $63

    ld c, [hl]                                    ; $6ddc: $4e
    nop                                           ; $6ddd: $00
    push af                                       ; $6dde: $f5
    xor $25                                       ; $6ddf: $ee $25
    ld c, $65                                     ; $6de1: $0e $65
    inc e                                         ; $6de3: $1c
    ld d, c                                       ; $6de4: $51
    db $fd                                        ; $6de5: $fd
    or c                                          ; $6de6: $b1
    ld a, d                                       ; $6de7: $7a
    cp c                                          ; $6de8: $b9
    ld a, [de]                                    ; $6de9: $1a
    db $db                                        ; $6dea: $db
    db $f4                                        ; $6deb: $f4
    ld bc, $71e2                                  ; $6dec: $01 $e2 $71
    ld [hl], $75                                  ; $6def: $36 $75
    ld a, e                                       ; $6df1: $7b
    ld d, e                                       ; $6df2: $53
    ld c, $4d                                     ; $6df3: $0e $4d
    add hl, sp                                    ; $6df5: $39
    ld e, b                                       ; $6df6: $58
    sbc a                                         ; $6df7: $9f
    ld [$bc34], a                                 ; $6df8: $ea $34 $bc
    ld e, l                                       ; $6dfb: $5d
    or b                                          ; $6dfc: $b0
    ld c, l                                       ; $6dfd: $4d
    rra                                           ; $6dfe: $1f
    add hl, bc                                    ; $6dff: $09
    or d                                          ; $6e00: $b2
    add hl, hl                                    ; $6e01: $29
    add a                                         ; $6e02: $87
    ld [hl-], a                                   ; $6e03: $32
    ld c, [hl]                                    ; $6e04: $4e
    and c                                         ; $6e05: $a1
    ld a, c                                       ; $6e06: $79
    ld c, l                                       ; $6e07: $4d
    ld d, h                                       ; $6e08: $54
    ret z                                         ; $6e09: $c8

    ld l, [hl]                                    ; $6e0a: $6e
    sbc c                                         ; $6e0b: $99
    or h                                          ; $6e0c: $b4
    jr nz, jr_065_6e69                            ; $6e0d: $20 $5a

    sub $4d                                       ; $6e0f: $d6 $4d
    ld c, l                                       ; $6e11: $4d
    or h                                          ; $6e12: $b4
    daa                                           ; $6e13: $27
    pop af                                        ; $6e14: $f1
    ld l, h                                       ; $6e15: $6c
    ld [hl], $75                                  ; $6e16: $36 $75
    rlca                                          ; $6e18: $07
    jp nc, $862e                                  ; $6e19: $d2 $2e $86

    reti                                          ; $6e1c: $d9


    db $f4                                        ; $6e1d: $f4
    ld bc, $2fe2                                  ; $6e1e: $01 $e2 $2f
    ld b, $36                                     ; $6e21: $06 $36
    ld a, [bc]                                    ; $6e23: $0a
    and a                                         ; $6e24: $a7
    ret nc                                        ; $6e25: $d0

    inc a                                         ; $6e26: $3c
    xor [hl]                                      ; $6e27: $ae
    sub b                                         ; $6e28: $90
    db $dd                                        ; $6e29: $dd
    ld [hl-], a                                   ; $6e2a: $32
    ld l, c                                       ; $6e2b: $69
    ld b, c                                       ; $6e2c: $41
    or h                                          ; $6e2d: $b4
    xor h                                         ; $6e2e: $ac
    rst $30                                       ; $6e2f: $f7
    rlca                                          ; $6e30: $07
    rla                                           ; $6e31: $17
    ld d, e                                       ; $6e32: $53
    ld [hl+], a                                   ; $6e33: $22
    and $11                                       ; $6e34: $e6 $11
    ld d, l                                       ; $6e36: $55
    ld d, d                                       ; $6e37: $52
    dec de                                        ; $6e38: $1b
    and c                                         ; $6e39: $a1
    adc d                                         ; $6e3a: $8a
    cp $d4                                        ; $6e3b: $fe $d4
    ld l, c                                       ; $6e3d: $69
    inc d                                         ; $6e3e: $14
    ld c, [hl]                                    ; $6e3f: $4e
    sub a                                         ; $6e40: $97
    inc h                                         ; $6e41: $24
    ld [$804f], a                                 ; $6e42: $ea $4f $80
    inc e                                         ; $6e45: $1c
    db $ed                                        ; $6e46: $ed
    ld a, [bc]                                    ; $6e47: $0a
    ld sp, $1ac0                                  ; $6e48: $31 $c0 $1a
    add hl, de                                    ; $6e4b: $19
    ld a, b                                       ; $6e4c: $78
    ld [hl], a                                    ; $6e4d: $77
    dec hl                                        ; $6e4e: $2b

jr_065_6e4f:
    or l                                          ; $6e4f: $b5
    adc d                                         ; $6e50: $8a
    and [hl]                                      ; $6e51: $a6
    call c, Call_065_5853                         ; $6e52: $dc $53 $58
    db $fd                                        ; $6e55: $fd
    add hl, bc                                    ; $6e56: $09
    add sp, $0a                                   ; $6e57: $e8 $0a
    ld d, [hl]                                    ; $6e59: $56
    halt                                          ; $6e5a: $76
    add hl, de                                    ; $6e5b: $19
    ld bc, $7bbc                                  ; $6e5c: $01 $bc $7b
    adc $c8                                       ; $6e5f: $ce $c8
    add [hl]                                      ; $6e61: $86
    rst $00                                       ; $6e62: $c7
    ei                                            ; $6e63: $fb
    inc bc                                        ; $6e64: $03
    dec sp                                        ; $6e65: $3b
    halt                                          ; $6e66: $76
    cpl                                           ; $6e67: $2f
    inc b                                         ; $6e68: $04

jr_065_6e69:
    ccf                                           ; $6e69: $3f
    call $93a8                                    ; $6e6a: $cd $a8 $93
    db $ec                                        ; $6e6d: $ec
    adc d                                         ; $6e6e: $8a
    or $62                                        ; $6e6f: $f6 $62
    sub d                                         ; $6e71: $92
    push af                                       ; $6e72: $f5
    ld l, c                                       ; $6e73: $69
    db $ec                                        ; $6e74: $ec
    rst $08                                       ; $6e75: $cf
    ret nz                                        ; $6e76: $c0

    ld a, d                                       ; $6e77: $7a
    pop af                                        ; $6e78: $f1
    ld a, [c]                                     ; $6e79: $f2
    ei                                            ; $6e7a: $fb
    pop af                                        ; $6e7b: $f1
    ld l, h                                       ; $6e7c: $6c
    xor $5e                                       ; $6e7d: $ee $5e
    ld b, c                                       ; $6e7f: $41
    add hl, sp                                    ; $6e80: $39
    jp c, Jump_065_6b0c                           ; $6e81: $da $0c $6b

    ld b, b                                       ; $6e84: $40
    inc sp                                        ; $6e85: $33
    inc [hl]                                      ; $6e86: $34
    db $d3                                        ; $6e87: $d3
    jp z, $ed25                                   ; $6e88: $ca $25 $ed

    inc h                                         ; $6e8b: $24
    or l                                          ; $6e8c: $b5
    adc h                                         ; $6e8d: $8c
    add hl, de                                    ; $6e8e: $19
    jp c, $2280                                   ; $6e8f: $da $80 $22

    cp $13                                        ; $6e92: $fe $13
    or e                                          ; $6e94: $b3
    pop de                                        ; $6e95: $d1
    jp z, $e3aa                                   ; $6e96: $ca $aa $e3

    db $dd                                        ; $6e99: $dd
    inc b                                         ; $6e9a: $04
    pop bc                                        ; $6e9b: $c1
    ld a, $ec                                     ; $6e9c: $3e $ec
    ld c, c                                       ; $6e9e: $49
    call nz, Call_065_428c                        ; $6e9f: $c4 $8c $42
    inc sp                                        ; $6ea2: $33
    db $eb                                        ; $6ea3: $eb
    db $db                                        ; $6ea4: $db
    sub e                                         ; $6ea5: $93
    ld a, b                                       ; $6ea6: $78
    ld [hl], $f7                                  ; $6ea7: $36 $f7
    rlca                                          ; $6ea9: $07
    db $db                                        ; $6eaa: $db
    dec a                                         ; $6eab: $3d
    xor e                                         ; $6eac: $ab
    ld b, a                                       ; $6ead: $47
    adc c                                         ; $6eae: $89
    sbc b                                         ; $6eaf: $98
    pop de                                        ; $6eb0: $d1
    jr z, jr_065_6e4f                             ; $6eb1: $28 $9c

    xor [hl]                                      ; $6eb3: $ae
    dec hl                                        ; $6eb4: $2b
    cp e                                          ; $6eb5: $bb
    and d                                         ; $6eb6: $a2
    cp l                                          ; $6eb7: $bd
    sbc b                                         ; $6eb8: $98
    ld h, h                                       ; $6eb9: $64
    ld a, a                                       ; $6eba: $7f
    ld e, b                                       ; $6ebb: $58
    ld h, [hl]                                    ; $6ebc: $66
    ld a, l                                       ; $6ebd: $7d
    ld a, [de]                                    ; $6ebe: $1a
    xor e                                         ; $6ebf: $ab
    rst $28                                       ; $6ec0: $ef
    xor $65                                       ; $6ec1: $ee $65
    ld e, h                                       ; $6ec3: $5c
    ld d, [hl]                                    ; $6ec4: $56
    ret c                                         ; $6ec5: $d8

    push de                                       ; $6ec6: $d5
    adc h                                         ; $6ec7: $8c
    sbc b                                         ; $6ec8: $98
    ld h, h                                       ; $6ec9: $64
    dec h                                         ; $6eca: $25
    sub [hl]                                      ; $6ecb: $96
    db $e4                                        ; $6ecc: $e4
    ld e, b                                       ; $6ecd: $58
    ld [hl], l                                    ; $6ece: $75
    inc l                                         ; $6ecf: $2c
    and e                                         ; $6ed0: $a3
    rst $38                                       ; $6ed1: $ff
    ret z                                         ; $6ed2: $c8

    ld b, d                                       ; $6ed3: $42
    inc sp                                        ; $6ed4: $33
    rst $28                                       ; $6ed5: $ef
    rrca                                          ; $6ed6: $0f
    ld [c], a                                     ; $6ed7: $e2
    cpl                                           ; $6ed8: $2f
    ld b, $36                                     ; $6ed9: $06 $36
    ld a, [bc]                                    ; $6edb: $0a
    and a                                         ; $6edc: $a7
    ld e, [hl]                                    ; $6edd: $5e
    rla                                           ; $6ede: $17
    rst $38                                       ; $6edf: $ff
    scf                                           ; $6ee0: $37
    sub c                                         ; $6ee1: $91
    sbc e                                         ; $6ee2: $9b
    jp c, $b173                                   ; $6ee3: $da $73 $b1

    ld b, d                                       ; $6ee6: $42
    ld a, l                                       ; $6ee7: $7d
    jp $94ff                                      ; $6ee8: $c3 $ff $94


    sub $80                                       ; $6eeb: $d6 $80
    ld a, [hl-]                                   ; $6eed: $3a

Jump_065_6eee:
    ret                                           ; $6eee: $c9


    xor [hl]                                      ; $6eef: $ae
    ld l, b                                       ; $6ef0: $68
    cpl                                           ; $6ef1: $2f
    ld h, $59                                     ; $6ef2: $26 $59
    jp hl                                         ; $6ef4: $e9


    ld e, [hl]                                    ; $6ef5: $5e
    sbc [hl]                                      ; $6ef6: $9e
    ld b, d                                       ; $6ef7: $42
    ld a, l                                       ; $6ef8: $7d
    db $fc                                        ; $6ef9: $fc
    adc a                                         ; $6efa: $8f
    bit 7, l                                      ; $6efb: $cb $7d
    rst $18                                       ; $6efd: $df
    db $ed                                        ; $6efe: $ed
    ld d, $27                                     ; $6eff: $16 $27
    push hl                                       ; $6f01: $e5
    ld a, l                                       ; $6f02: $7d
    rst $18                                       ; $6f03: $df
    add hl, de                                    ; $6f04: $19
    ld sp, $7539                                  ; $6f05: $31 $39 $75
    sub d                                         ; $6f08: $92
    ld a, l                                       ; $6f09: $7d
    ld bc, $f78f                                  ; $6f0a: $01 $8f $f7
    ld a, l                                       ; $6f0d: $7d
    ld a, a                                       ; $6f0e: $7f
    add hl, bc                                    ; $6f0f: $09
    pop af                                        ; $6f10: $f1
    sbc a                                         ; $6f11: $9f
    sbc b                                         ; $6f12: $98
    ld l, l                                       ; $6f13: $6d
    ld c, l                                       ; $6f14: $4d
    adc [hl]                                      ; $6f15: $8e
    sub [hl]                                      ; $6f16: $96
    ld e, l                                       ; $6f17: $5d
    pop de                                        ; $6f18: $d1
    ld e, [hl]                                    ; $6f19: $5e
    ld c, h                                       ; $6f1a: $4c
    or d                                          ; $6f1b: $b2
    ccf                                           ; $6f1c: $3f
    inc l                                         ; $6f1d: $2c
    or e                                          ; $6f1e: $b3
    ld a, $8d                                     ; $6f1f: $3e $8d
    push de                                       ; $6f21: $d5
    daa                                           ; $6f22: $27
    ld [$9a16], a                                 ; $6f23: $ea $16 $9a
    db $ed                                        ; $6f26: $ed
    ld l, h                                       ; $6f27: $6c
    ld [c], a                                     ; $6f28: $e2
    db $e4                                        ; $6f29: $e4
    inc c                                         ; $6f2a: $0c
    cp e                                          ; $6f2b: $bb
    ld a, e                                       ; $6f2c: $7b
    dec b                                         ; $6f2d: $05
    ld h, h                                       ; $6f2e: $64
    sub c                                         ; $6f2f: $91
    ld [hl], d                                    ; $6f30: $72
    rst $08                                       ; $6f31: $cf
    ld h, a                                       ; $6f32: $67

Jump_065_6f33:
    ld h, b                                       ; $6f33: $60
    rst $38                                       ; $6f34: $ff
    sub c                                         ; $6f35: $91
    dec e                                         ; $6f36: $1d
    xor l                                         ; $6f37: $ad
    rla                                           ; $6f38: $17
    cpl                                           ; $6f39: $2f
    cp a                                          ; $6f3a: $bf
    push af                                       ; $6f3b: $f5
    and e                                         ; $6f3c: $a3
    dec a                                         ; $6f3d: $3d
    ld l, a                                       ; $6f3e: $6f
    ld a, c                                       ; $6f3f: $79
    ld a, $62                                     ; $6f40: $3e $62
    sbc b                                         ; $6f42: $98
    and d                                         ; $6f43: $a2
    ld d, a                                       ; $6f44: $57
    ret nz                                        ; $6f45: $c0

    db $e4                                        ; $6f46: $e4
    ld e, e                                       ; $6f47: $5b
    sub [hl]                                      ; $6f48: $96
    scf                                           ; $6f49: $37
    ld c, [hl]                                    ; $6f4a: $4e
    ld b, l                                       ; $6f4b: $45
    ld c, l                                       ; $6f4c: $4d
    add hl, sp                                    ; $6f4d: $39
    ld [hl], h                                    ; $6f4e: $74
    ld [$64db], a                                 ; $6f4f: $ea $db $64
    and h                                         ; $6f52: $a4
    ld hl, $590b                                  ; $6f53: $21 $0b $59
    call nz, Call_065_627f                        ; $6f56: $c4 $7f $62
    or [hl]                                       ; $6f59: $b6
    pop de                                        ; $6f5a: $d1
    ei                                            ; $6f5b: $fb
    inc bc                                        ; $6f5c: $03
    ld e, e                                       ; $6f5d: $5b
    xor c                                         ; $6f5e: $a9
    add l                                         ; $6f5f: $85
    ld l, e                                       ; $6f60: $6b
    inc d                                         ; $6f61: $14
    ld c, [hl]                                    ; $6f62: $4e
    db $fd                                        ; $6f63: $fd
    ld d, c                                       ; $6f64: $51
    sbc l                                         ; $6f65: $9d
    ld a, [$af4c]                                 ; $6f66: $fa $4c $af
    ld l, l                                       ; $6f69: $6d
    ld e, h                                       ; $6f6a: $5c
    ld a, b                                       ; $6f6b: $78
    ld a, a                                       ; $6f6c: $7f
    db $db                                        ; $6f6d: $db
    cp e                                          ; $6f6e: $bb
    add l                                         ; $6f6f: $85
    ld l, c                                       ; $6f70: $69
    ld a, e                                       ; $6f71: $7b
    and c                                         ; $6f72: $a1
    ld [bc], a                                    ; $6f73: $02
    sub $9a                                       ; $6f74: $d6 $9a
    adc l                                         ; $6f76: $8d
    ld a, c                                       ; $6f77: $79
    ld e, h                                       ; $6f78: $5c
    inc bc                                        ; $6f79: $03
    sbc d                                         ; $6f7a: $9a
    ld [hl], d                                    ; $6f7b: $72
    xor b                                         ; $6f7c: $a8
    and d                                         ; $6f7d: $a2
    ld bc, $4ffa                                  ; $6f7e: $01 $fa $4f
    call z, $8554                                 ; $6f81: $cc $54 $85
    db $ec                                        ; $6f84: $ec
    or c                                          ; $6f85: $b1
    rst $00                                       ; $6f86: $c7
    sbc [hl]                                      ; $6f87: $9e
    jp c, Jump_065_718b                           ; $6f88: $da $8b $71

    jr nc, @-$4a                                  ; $6f8b: $30 $b4

    add c                                         ; $6f8d: $81
    ld d, l                                       ; $6f8e: $55
    rst $00                                       ; $6f8f: $c7
    cp $13                                        ; $6f90: $fe $13
    inc sp                                        ; $6f92: $33

Jump_065_6f93:
    dec bc                                        ; $6f93: $0b
    reti                                          ; $6f94: $d9


    di                                            ; $6f95: $f3
    db $ed                                        ; $6f96: $ed
    push bc                                       ; $6f97: $c5
    db $f4                                        ; $6f98: $f4
    db $e4                                        ; $6f99: $e4
    xor h                                         ; $6f9a: $ac
    ld [hl], a                                    ; $6f9b: $77
    or a                                          ; $6f9c: $b7
    ld a, e                                       ; $6f9d: $7b
    db $ec                                        ; $6f9e: $ec
    and l                                         ; $6f9f: $a5
    add hl, de                                    ; $6fa0: $19
    ld e, b                                       ; $6fa1: $58
    ld a, a                                       ; $6fa2: $7f
    xor h                                         ; $6fa3: $ac
    ld a, $55                                     ; $6fa4: $3e $55
    ld l, c                                       ; $6fa6: $69
    push af                                       ; $6fa7: $f5

Call_065_6fa8:
    rst $00                                       ; $6fa8: $c7
    ld a, [$ddaf]                                 ; $6fa9: $fa $af $dd
    cp l                                          ; $6fac: $bd
    inc c                                         ; $6fad: $0c
    ld sp, $6539                                  ; $6fae: $31 $39 $65
    ld a, a                                       ; $6fb1: $7f
    ld e, b                                       ; $6fb2: $58
    add $2e                                       ; $6fb3: $c6 $2e
    ld [hl], $a0                                  ; $6fb5: $36 $a0
    add hl, hl                                    ; $6fb7: $29
    add a                                         ; $6fb8: $87
    ld a, d                                       ; $6fb9: $7a
    ld l, c                                       ; $6fba: $69
    ld l, e                                       ; $6fbb: $6b
    push af                                       ; $6fbc: $f5
    adc h                                         ; $6fbd: $8c
    xor h                                         ; $6fbe: $ac
    db $d3                                        ; $6fbf: $d3
    ld l, c                                       ; $6fc0: $69
    ld h, b                                       ; $6fc1: $60
    push de                                       ; $6fc2: $d5
    or c                                          ; $6fc3: $b1
    dec hl                                        ; $6fc4: $2b
    jp c, $498b                                   ; $6fc5: $da $8b $49

    sbc $1f                                       ; $6fc8: $de $1f
    db $db                                        ; $6fca: $db
    sub e                                         ; $6fcb: $93
    adc l                                         ; $6fcc: $8d
    jp nz, Jump_065_7511                          ; $6fcd: $c2 $11 $75

    dec bc                                        ; $6fd0: $0b
    call $3676                                    ; $6fd1: $cd $76 $36
    ld [hl], c                                    ; $6fd4: $71
    ld [hl], d                                    ; $6fd5: $72
    add [hl]                                      ; $6fd6: $86
    adc c                                         ; $6fd7: $89
    ld a, [hl-]                                   ; $6fd8: $3a
    ld e, $7b                                     ; $6fd9: $1e $7b
    ld l, c                                       ; $6fdb: $69
    add [hl]                                      ; $6fdc: $86
    add hl, hl                                    ; $6fdd: $29
    call c, Call_000_01fd                         ; $6fde: $dc $fd $01
    add hl, bc                                    ; $6fe1: $09
    add d                                         ; $6fe2: $82
    ld a, l                                       ; $6fe3: $7d
    ret c                                         ; $6fe4: $d8

    sub e                                         ; $6fe5: $93
    adc b                                         ; $6fe6: $88
    add hl, de                                    ; $6fe7: $19
    add l                                         ; $6fe8: $85
    ld h, [hl]                                    ; $6fe9: $66
    sbc [hl]                                      ; $6fea: $9e
    sub $33                                       ; $6feb: $d6 $33
    ld [$cbc5], a                                 ; $6fed: $ea $c5 $cb
    ld l, h                                       ; $6ff0: $6c
    ld b, b                                       ; $6ff1: $40
    cp c                                          ; $6ff2: $b9
    dec bc                                        ; $6ff3: $0b
    xor e                                         ; $6ff4: $ab
    rla                                           ; $6ff5: $17
    sub e                                         ; $6ff6: $93
    ld d, e                                       ; $6ff7: $53
    inc [hl]                                      ; $6ff8: $34
    ld b, e                                       ; $6ff9: $43
    sub $49                                       ; $6ffa: $d6 $49
    sub $47                                       ; $6ffc: $d6 $47
    ld h, h                                       ; $6ffe: $64
    inc bc                                        ; $6fff: $03
    ld [$175d], a                                 ; $7000: $ea $5d $17
    sbc a                                         ; $7003: $9f
    ldh [$c6], a                                  ; $7004: $e0 $c6
    jp hl                                         ; $7006: $e9


    adc a                                         ; $7007: $8f
    sbc b                                         ; $7008: $98
    ld l, l                                       ; $7009: $6d
    xor $0f                                       ; $700a: $ee $0f
    db $db                                        ; $700c: $db
    sub a                                         ; $700d: $97
    dec [hl]                                      ; $700e: $35
    ld d, c                                       ; $700f: $51
    dec b                                         ; $7010: $05
    call z, $f20a                                 ; $7011: $cc $0a $f2
    xor $19                                       ; $7014: $ee $19
    push hl                                       ; $7016: $e5
    ld [c], a                                     ; $7017: $e2
    ld [c], a                                     ; $7018: $e2
    inc [hl]                                      ; $7019: $34
    ld c, h                                       ; $701a: $4c
    ld a, l                                       ; $701b: $7d
    ld a, e                                       ; $701c: $7b
    ld [de], a                                    ; $701d: $12
    rst $08                                       ; $701e: $cf
    and [hl]                                      ; $701f: $a6
    adc h                                         ; $7020: $8c
    or e                                          ; $7021: $b3
    jp hl                                         ; $7022: $e9


    inc bc                                        ; $7023: $03
    dec sp                                        ; $7024: $3b
    ld h, b                                       ; $7025: $60
    ld a, b                                       ; $7026: $78
    add l                                         ; $7027: $85
    xor h                                         ; $7028: $ac
    rst $00                                       ; $7029: $c7
    or b                                          ; $702a: $b0
    jp nz, Jump_000_01fd                          ; $702b: $c2 $fd $01

    dec sp                                        ; $702e: $3b
    add sp, $41                                   ; $702f: $e8 $41
    ld d, e                                       ; $7031: $53
    ld c, $8d                                     ; $7032: $0e $8d
    jp nz, $92e9                                  ; $7034: $c2 $e9 $92

    ld b, h                                       ; $7037: $44
    db $fd                                        ; $7038: $fd
    ld d, c                                       ; $7039: $51
    sbc l                                         ; $703a: $9d
    xor [hl]                                      ; $703b: $ae
    db $10                                        ; $703c: $10
    inc bc                                        ; $703d: $03
    xor h                                         ; $703e: $ac
    sub c                                         ; $703f: $91
    add c                                         ; $7040: $81
    and d                                         ; $7041: $a2
    cp $0b                                        ; $7042: $fe $0b
    ld l, l                                       ; $7044: $6d
    xor $6e                                       ; $7045: $ee $6e
    and l                                         ; $7047: $a5
    sub $9f                                       ; $7048: $d6 $9f
    add b                                         ; $704a: $80
    xor [hl]                                      ; $704b: $ae
    ld h, b                                       ; $704c: $60
    ld h, l                                       ; $704d: $65
    sub a                                         ; $704e: $97
    ld de, $eec0                                  ; $704f: $11 $c0 $ee
    rst $18                                       ; $7052: $df
    push de                                       ; $7053: $d5
    call nz, $80cc                                ; $7054: $c4 $cc $80
    ei                                            ; $7057: $fb
    inc bc                                        ; $7058: $03
    ld [c], a                                     ; $7059: $e2
    ld c, c                                       ; $705a: $49
    ld d, c                                       ; $705b: $51
    sbc l                                         ; $705c: $9d
    xor h                                         ; $705d: $ac
    add b                                         ; $705e: $80
    ld e, c                                       ; $705f: $59
    ld b, c                                       ; $7060: $41
    ld d, $9a                                     ; $7061: $16 $9a
    ld e, l                                       ; $7063: $5d
    ld h, b                                       ; $7064: $60
    call z, $bbb8                                 ; $7065: $cc $b8 $bb
    ld b, e                                       ; $7068: $43
    jr c, jr_065_70c0                             ; $7069: $38 $55

    ld c, b                                       ; $706b: $48
    rst $18                                       ; $706c: $df
    ld d, b                                       ; $706d: $50
    rrca                                          ; $706e: $0f
    db $e4                                        ; $706f: $e4
    add $d5                                       ; $7070: $c6 $d5
    adc e                                         ; $7072: $8b
    ld h, c                                       ; $7073: $61
    or h                                          ; $7074: $b4
    sub c                                         ; $7075: $91
    dec a                                         ; $7076: $3d
    ld l, a                                       ; $7077: $6f
    add hl, de                                    ; $7078: $19
    ld h, a                                       ; $7079: $67
    ld c, a                                       ; $707a: $4f
    sub e                                         ; $707b: $93
    ld h, l                                       ; $707c: $65
    inc c                                         ; $707d: $0c
    dec a                                         ; $707e: $3d
    ld h, a                                       ; $707f: $67
    sbc c                                         ; $7080: $99
    sbc h                                         ; $7081: $9c
    push af                                       ; $7082: $f5
    ld l, [hl]                                    ; $7083: $6e
    or a                                          ; $7084: $b7
    ld c, h                                       ; $7085: $4c
    ld e, d                                       ; $7086: $5a
    db $10                                        ; $7087: $10
    dec l                                         ; $7088: $2d
    xor e                                         ; $7089: $ab
    xor b                                         ; $708a: $a8
    cp [hl]                                       ; $708b: $be
    dec a                                         ; $708c: $3d
    adc c                                         ; $708d: $89
    ld h, a                                       ; $708e: $67
    ld d, e                                       ; $708f: $53
    add $d9                                       ; $7090: $c6 $d9
    db $f4                                        ; $7092: $f4
    ld bc, $9e3b                                  ; $7093: $01 $3b $9e
    cp h                                          ; $7096: $bc
    ccf                                           ; $7097: $3f
    sub a                                         ; $7098: $97
    ld b, c                                       ; $7099: $41
    adc [hl]                                      ; $709a: $8e
    halt                                          ; $709b: $76
    or h                                          ; $709c: $b4
    ld a, [bc]                                    ; $709d: $0a
    and a                                         ; $709e: $a7
    ld e, l                                       ; $709f: $5d
    sbc $ca                                       ; $70a0: $de $ca
    ld b, [hl]                                    ; $70a2: $46
    res 2, h                                      ; $70a3: $cb $94
    ld a, e                                       ; $70a5: $7b
    and d                                         ; $70a6: $a2
    ld a, [bc]                                    ; $70a7: $0a
    ld e, b                                       ; $70a8: $58
    dec hl                                        ; $70a9: $2b
    db $f4                                        ; $70aa: $f4
    sbc a                                         ; $70ab: $9f
    dec h                                         ; $70ac: $25
    ld sp, hl                                     ; $70ad: $f9
    jp nz, $dde8                                  ; $70ae: $c2 $e8 $dd

    xor $10                                       ; $70b1: $ee $10
    ld c, [hl]                                    ; $70b3: $4e
    adc a                                         ; $70b4: $8f
    dec a                                         ; $70b5: $3d
    pop hl                                        ; $70b6: $e1
    ld hl, sp+$5e                                 ; $70b7: $f8 $5e
    adc h                                         ; $70b9: $8c
    add e                                         ; $70ba: $83
    and c                                         ; $70bb: $a1
    rst $30                                       ; $70bc: $f7
    rlca                                          ; $70bd: $07
    db $db                                        ; $70be: $db
    dec a                                         ; $70bf: $3d

jr_065_70c0:
    or $d2                                        ; $70c0: $f6 $d2
    inc c                                         ; $70c2: $0c
    ld d, e                                       ; $70c3: $53
    ld a, a                                       ; $70c4: $7f
    xor h                                         ; $70c5: $ac
    rst $38                                       ; $70c6: $ff
    ld c, b                                       ; $70c7: $48
    rst $18                                       ; $70c8: $df
    ld l, b                                       ; $70c9: $68
    adc l                                         ; $70ca: $8d
    db $ec                                        ; $70cb: $ec
    ld a, c                                       ; $70cc: $79
    srl b                                         ; $70cd: $cb $38
    ld a, e                                       ; $70cf: $7b
    sbc d                                         ; $70d0: $9a
    inc l                                         ; $70d1: $2c
    ld h, e                                       ; $70d2: $63
    add sp, $39                                   ; $70d3: $e8 $39
    set 4, h                                      ; $70d5: $cb $e4
    xor h                                         ; $70d7: $ac
    ld [hl], a                                    ; $70d8: $77
    ld a, e                                       ; $70d9: $7b
    adc $50                                       ; $70da: $ce $50
    cp e                                          ; $70dc: $bb
    ldh [$65], a                                  ; $70dd: $e0 $65
    ld h, a                                       ; $70df: $67
    call nc, $1f0d                                ; $70e0: $d4 $0d $1f
    db $db                                        ; $70e3: $db
    add h                                         ; $70e4: $84
    db $d3                                        ; $70e5: $d3
    adc h                                         ; $70e6: $8c
    sbc b                                         ; $70e7: $98
    sbc h                                         ; $70e8: $9c
    ld h, [hl]                                    ; $70e9: $66
    add $3c                                       ; $70ea: $c6 $3c
    dec c                                         ; $70ec: $0d
    cpl                                           ; $70ed: $2f
    ld h, $f1                                     ; $70ee: $26 $f1
    ld l, h                                       ; $70f0: $6c
    xor $0f                                       ; $70f1: $ee $0f
    ld h, a                                       ; $70f3: $67
    call nc, $e447                                ; $70f4: $d4 $47 $e4
    db $dd                                        ; $70f7: $dd
    ld l, [hl]                                    ; $70f8: $6e
    and l                                         ; $70f9: $a5
    or $1f                                        ; $70fa: $f6 $1f
    reti                                          ; $70fc: $d9


    rra                                           ; $70fd: $1f
    sub [hl]                                      ; $70fe: $96
    or c                                          ; $70ff: $b1
    adc e                                         ; $7100: $8b
    ld e, l                                       ; $7101: $5d
    call Call_065_6992                            ; $7102: $cd $92 $69
    sub b                                         ; $7105: $90
    and e                                         ; $7106: $a3
    ld h, l                                       ; $7107: $65
    ld d, a                                       ; $7108: $57
    or b                                          ; $7109: $b0
    adc l                                         ; $710a: $8d
    ld [hl], c                                    ; $710b: $71

jr_065_710c:
    db $f4                                        ; $710c: $f4
    cp $00                                        ; $710d: $fe $00
    sub a                                         ; $710f: $97
    ld hl, $a726                                  ; $7110: $21 $26 $a7
    ld bc, $925d                                  ; $7113: $01 $5d $92
    ret nc                                        ; $7116: $d0

    xor [hl]                                      ; $7117: $ae
    db $10                                        ; $7118: $10
    inc bc                                        ; $7119: $03
    xor h                                         ; $711a: $ac
    ld [hl], c                                    ; $711b: $71
    ld d, [hl]                                    ; $711c: $56
    sub h                                         ; $711d: $94
    adc b                                         ; $711e: $88
    add hl, de                                    ; $711f: $19
    add l                                         ; $7120: $85
    ld h, [hl]                                    ; $7121: $66
    ld l, b                                       ; $7122: $68
    sub a                                         ; $7123: $97
    or a                                          ; $7124: $b7
    or d                                          ; $7125: $b2
    pop de                                        ; $7126: $d1
    ei                                            ; $7127: $fb
    inc bc                                        ; $7128: $03
    db $db                                        ; $7129: $db
    sub e                                         ; $712a: $93
    rst $30                                       ; $712b: $f7
    ld a, l                                       ; $712c: $7d
    or a                                          ; $712d: $b7
    sub a                                         ; $712e: $97
    ld [c], a                                     ; $712f: $e2
    rst $00                                       ; $7130: $c7
    sbc e                                         ; $7131: $9b
    and [hl]                                      ; $7132: $a6
    inc e                                         ; $7133: $1c
    xor d                                         ; $7134: $aa
    cp e                                          ; $7135: $bb
    ld [hl], a                                    ; $7136: $77
    ld c, c                                       ; $7137: $49
    and d                                         ; $7138: $a2
    cp $a8                                        ; $7139: $fe $a8
    ld d, d                                       ; $713b: $52
    adc [hl]                                      ; $713c: $8e
    ld [hl], $d0                                  ; $713d: $36 $d0
    ld a, d                                       ; $713f: $7a
    db $ec                                        ; $7140: $ec
    ld [hl], c                                    ; $7141: $71
    rst $00                                       ; $7142: $c7
    ld [hl], a                                    ; $7143: $77
    pop bc                                        ; $7144: $c1
    pop bc                                        ; $7145: $c1
    ret nc                                        ; $7146: $d0

    ld a, [$c563]                                 ; $7147: $fa $63 $c5
    ld [bc], a                                    ; $714a: $02
    cp l                                          ; $714b: $bd
    ccf                                           ; $714c: $3f
    rst $20                                       ; $714d: $e7
    ld [c], a                                     ; $714e: $e2
    ld a, a                                       ; $714f: $7f
    pop hl                                        ; $7150: $e1
    cp c                                          ; $7151: $b9
    adc l                                         ; $7152: $8d
    adc d                                         ; $7153: $8a
    ld a, [$8563]                                 ; $7154: $fa $63 $85
    ld a, [hl+]                                   ; $7157: $2a
    or h                                          ; $7158: $b4
    bit 3, e                                      ; $7159: $cb $5b
    reti                                          ; $715b: $d9


    add sp, -$5a                                  ; $715c: $e8 $a6
    rrca                                          ; $715e: $0f
    rst $20                                       ; $715f: $e7
    ld b, b                                       ; $7160: $40
    ld l, [hl]                                    ; $7161: $6e
    ld e, h                                       ; $7162: $5c
    cp l                                          ; $7163: $bd
    jr jr_065_710c                                ; $7164: $18 $a6

    ei                                            ; $7166: $fb
    ld [hl], a                                    ; $7167: $77
    ld a, c                                       ; $7168: $79
    dec hl                                        ; $7169: $2b
    and e                                         ; $716a: $a3
    dec a                                         ; $716b: $3d
    or $bc                                        ; $716c: $f6 $bc
    ld h, l                                       ; $716e: $65
    sbc h                                         ; $716f: $9c
    dec a                                         ; $7170: $3d
    ld c, l                                       ; $7171: $4d
    or $b0                                        ; $7172: $f6 $b0
    sbc [hl]                                      ; $7174: $9e
    or e                                          ; $7175: $b3
    ld c, h                                       ; $7176: $4c
    adc $7a                                       ; $7177: $ce $7a
    rst $30                                       ; $7179: $f7
    ld e, h                                       ; $717a: $5c
    ld d, h                                       ; $717b: $54
    adc [hl]                                      ; $717c: $8e
    ld b, h                                       ; $717d: $44
    call z, Call_000_28d3                         ; $717e: $cc $d3 $28
    sbc h                                         ; $7181: $9c
    ld [hl-], a                                   ; $7182: $32
    inc hl                                        ; $7183: $23
    ld b, $c8                                     ; $7184: $06 $c8
    pop de                                        ; $7186: $d1
    ld [hl], d                                    ; $7187: $72
    ld a, [$0f2f]                                 ; $7188: $fa $2f $0f

Jump_065_718b:
    ld sp, $bee3                                  ; $718b: $31 $e3 $be
    rst $28                                       ; $718e: $ef
    ld h, [hl]                                    ; $718f: $66
    ret z                                         ; $7190: $c8

    pop de                                        ; $7191: $d1
    ld b, $34                                     ; $7192: $06 $34
    dec de                                        ; $7194: $1b
    inc sp                                        ; $7195: $33
    xor l                                         ; $7196: $ad
    ld bc, $9275                                  ; $7197: $01 $75 $92
    add l                                         ; $719a: $85
    rst $38                                       ; $719b: $ff
    ld [bc], a                                    ; $719c: $02
    db $e4                                        ; $719d: $e4
    ld h, e                                       ; $719e: $63
    inc bc                                        ; $719f: $03
    sbc d                                         ; $71a0: $9a
    adc l                                         ; $71a1: $8d
    db $eb                                        ; $71a2: $eb
    xor c                                         ; $71a3: $a9
    ld [hl], a                                    ; $71a4: $77
    ld a, e                                       ; $71a5: $7b
    push bc                                       ; $71a6: $c5
    inc l                                         ; $71a7: $2c
    add hl, de                                    ; $71a8: $19
    push af                                       ; $71a9: $f5
    jr jr_065_7202                                ; $71aa: $18 $56

    sub b                                         ; $71ac: $90
    adc b                                         ; $71ad: $88
    add hl, de                                    ; $71ae: $19
    rst $30                                       ; $71af: $f7
    rlca                                          ; $71b0: $07
    ld d, a                                       ; $71b1: $57

jr_065_71b2:
    cp h                                          ; $71b2: $bc
    dec d                                         ; $71b3: $15
    ld b, l                                       ; $71b4: $45
    push de                                       ; $71b5: $d5
    ld [hl], c                                    ; $71b6: $71
    sbc l                                         ; $71b7: $9d
    sbc [hl]                                      ; $71b8: $9e
    ld l, e                                       ; $71b9: $6b
    db $fc                                        ; $71ba: $fc
    and a                                         ; $71bb: $a7
    ld e, e                                       ; $71bc: $5b
    cp c                                          ; $71bd: $b9
    ld a, b                                       ; $71be: $78
    ld h, a                                       ; $71bf: $67
    rst $20                                       ; $71c0: $e7
    db $dd                                        ; $71c1: $dd
    sbc [hl]                                      ; $71c2: $9e
    and c                                         ; $71c3: $a1
    push hl                                       ; $71c4: $e5
    ld [c], a                                     ; $71c5: $e2
    ld [c], a                                     ; $71c6: $e2
    inc [hl]                                      ; $71c7: $34
    and b                                         ; $71c8: $a0
    ld e, e                                       ; $71c9: $5b
    ld h, $2d                                     ; $71ca: $26 $2d
    adc b                                         ; $71cc: $88
    sub [hl]                                      ; $71cd: $96
    ld [hl], l                                    ; $71ce: $75
    db $d3                                        ; $71cf: $d3
    rlca                                          ; $71d0: $07
    dec sp                                        ; $71d1: $3b
    ld h, b                                       ; $71d2: $60
    ld a, b                                       ; $71d3: $78
    add l                                         ; $71d4: $85
    xor h                                         ; $71d5: $ac
    rst $00                                       ; $71d6: $c7
    or b                                          ; $71d7: $b0
    jp nz, Jump_000_01fd                          ; $71d8: $c2 $fd $01

    add hl, bc                                    ; $71db: $09
    xor [hl]                                      ; $71dc: $ae
    sbc c                                         ; $71dd: $99
    jp nc, Jump_065_4eb3                          ; $71de: $d2 $b3 $4e

    sbc $ed                                       ; $71e1: $de $ed
    dec d                                         ; $71e3: $15
    ld l, a                                       ; $71e4: $6f
    ld h, e                                       ; $71e5: $63
    ld b, [hl]                                    ; $71e6: $46
    sub e                                         ; $71e7: $93
    ld l, e                                       ; $71e8: $6b
    push af                                       ; $71e9: $f5
    rst $00                                       ; $71ea: $c7
    db $fd                                        ; $71eb: $fd
    db $d3                                        ; $71ec: $d3
    ld a, a                                       ; $71ed: $7f
    ld h, h                                       ; $71ee: $64
    and a                                         ; $71ef: $a7
    adc d                                         ; $71f0: $8a
    ld h, l                                       ; $71f1: $65
    push bc                                       ; $71f2: $c5
    inc [hl]                                      ; $71f3: $34
    ld h, h                                       ; $71f4: $64
    jp $0b74                                      ; $71f5: $c3 $74 $0b


    db $d3                                        ; $71f8: $d3
    or $c2                                        ; $71f9: $f6 $c2

jr_065_71fb:
    db $fd                                        ; $71fb: $fd
    ld bc, $ae09                                  ; $71fc: $01 $09 $ae
    jp hl                                         ; $71ff: $e9


    pop de                                        ; $7200: $d1
    inc a                                         ; $7201: $3c

jr_065_7202:
    dec c                                         ; $7202: $0d
    db $d3                                        ; $7203: $d3
    dec l                                         ; $7204: $2d
    ld c, h                                       ; $7205: $4c
    db $db                                        ; $7206: $db
    dec bc                                        ; $7207: $0b
    rst $30                                       ; $7208: $f7
    rlca                                          ; $7209: $07
    rst $20                                       ; $720a: $e7
    adc a                                         ; $720b: $8f
    ld h, [hl]                                    ; $720c: $66
    ld [$76a6], a                                 ; $720d: $ea $a6 $76
    dec hl                                        ; $7210: $2b
    or l                                          ; $7211: $b5
    ld e, b                                       ; $7212: $58
    ret nc                                        ; $7213: $d0

    jr z, jr_065_71b2                             ; $7214: $28 $9c

    xor [hl]                                      ; $7216: $ae
    ld l, e                                       ; $7217: $6b
    ld h, b                                       ; $7218: $60
    db $e3                                        ; $7219: $e3
    xor b                                         ; $721a: $a8
    or d                                          ; $721b: $b2
    rst $38                                       ; $721c: $ff
    ld b, d                                       ; $721d: $42
    ld d, l                                       ; $721e: $55
    adc b                                         ; $721f: $88
    xor d                                         ; $7220: $aa
    db $f4                                        ; $7221: $f4
    ld b, b                                       ; $7222: $40
    rst $28                                       ; $7223: $ef
    or $8c                                        ; $7224: $f6 $8c
    and [hl]                                      ; $7226: $a6
    inc e                                         ; $7227: $1c
    dec d                                         ; $7228: $15
    call $a9c2                                    ; $7229: $cd $c2 $a9
    and h                                         ; $722c: $a4
    db $eb                                        ; $722d: $eb
    ccf                                           ; $722e: $3f
    ld [hl], d                                    ; $722f: $72
    xor d                                         ; $7230: $aa
    or b                                          ; $7231: $b0
    ld l, [hl]                                    ; $7232: $6e
    ld [hl], l                                    ; $7233: $75
    jp hl                                         ; $7234: $e9


    db $f4                                        ; $7235: $f4
    add d                                         ; $7236: $82
    cp e                                          ; $7237: $bb
    db $dd                                        ; $7238: $dd
    add c                                         ; $7239: $81
    cp $5c                                        ; $723a: $fe $5c
    sub d                                         ; $723c: $92
    or h                                          ; $723d: $b4
    xor [hl]                                      ; $723e: $ae
    xor e                                         ; $723f: $ab
    rst $38                                       ; $7240: $ff
    add $ee                                       ; $7241: $c6 $ee
    or $1c                                        ; $7243: $f6 $1c
    ld c, b                                       ; $7245: $48
    ld d, c                                       ; $7246: $51
    sbc c                                         ; $7247: $99
    rst $10                                       ; $7248: $d7
    ld [hl], l                                    ; $7249: $75
    sbc c                                         ; $724a: $99
    db $f4                                        ; $724b: $f4
    call c, $e71f                                 ; $724c: $dc $1f $e7
    ld b, b                                       ; $724f: $40
    ld l, [hl]                                    ; $7250: $6e
    ld e, h                                       ; $7251: $5c
    cp l                                          ; $7252: $bd
    jr jr_065_71fb                                ; $7253: $18 $a6

    ei                                            ; $7255: $fb
    rla                                           ; $7256: $17
    sbc d                                         ; $7257: $9a
    cp c                                          ; $7258: $b9
    ld e, [hl]                                    ; $7259: $5e
    jr c, jr_065_7269                             ; $725a: $38 $0d

    add sp, -$11                                  ; $725c: $e8 $ef
    adc h                                         ; $725e: $8c
    and d                                         ; $725f: $a2
    ld c, d                                       ; $7260: $4a
    ld l, d                                       ; $7261: $6a
    db $fd                                        ; $7262: $fd
    ld d, c                                       ; $7263: $51
    sbc l                                         ; $7264: $9d
    xor [hl]                                      ; $7265: $ae
    ld h, b                                       ; $7266: $60
    ld c, l                                       ; $7267: $4d
    add hl, sp                                    ; $7268: $39

jr_065_7269:
    inc [hl]                                      ; $7269: $34
    ld a, [bc]                                    ; $726a: $0a

jr_065_726b:
    and a                                         ; $726b: $a7
    ret nc                                        ; $726c: $d0

    cp h                                          ; $726d: $bc
    ld d, [hl]                                    ; $726e: $56
    cpl                                           ; $726f: $2f
    db $ec                                        ; $7270: $ec
    add l                                         ; $7271: $85
    cp c                                          ; $7272: $b9
    ccf                                           ; $7273: $3f
    db $db                                        ; $7274: $db
    sbc e                                         ; $7275: $9b
    ld [hl], d                                    ; $7276: $72
    ld l, b                                       ; $7277: $68
    ld a, $50                                     ; $7278: $3e $50
    sub [hl]                                      ; $727a: $96
    add hl, hl                                    ; $727b: $29
    rst $30                                       ; $727c: $f7
    ld [hl], $7d                                  ; $727d: $36 $7d
    add hl, bc                                    ; $727f: $09
    xor [hl]                                      ; $7280: $ae
    cp a                                          ; $7281: $bf
    or e                                          ; $7282: $b3
    add hl, hl                                    ; $7283: $29
    ld d, e                                       ; $7284: $53
    ld c, $0b                                     ; $7285: $0e $0b
    or h                                          ; $7287: $b4
    add hl, hl                                    ; $7288: $29
    add a                                         ; $7289: $87
    xor d                                         ; $728a: $aa
    ld [hl], b                                    ; $728b: $70
    ld [$bd85], a                                 ; $728c: $ea $85 $bd
    jr nc, jr_065_726b                            ; $728f: $30 $da

    ret z                                         ; $7291: $c8

    sbc [hl]                                      ; $7292: $9e
    ei                                            ; $7293: $fb
    sbc b                                         ; $7294: $98
    sbc [hl]                                      ; $7295: $9e
    cp b                                          ; $7296: $b8
    ld d, c                                       ; $7297: $51
    ld a, h                                       ; $7298: $7c
    cp c                                          ; $7299: $b9
    ccf                                           ; $729a: $3f
    ld d, a                                       ; $729b: $57
    jr nz, jr_065_72c4                            ; $729c: $20 $26

    reti                                          ; $729e: $d9


    push de                                       ; $729f: $d5
    db $d3                                        ; $72a0: $d3
    sub a                                         ; $72a1: $97
    ld l, c                                       ; $72a2: $69
    dec de                                        ; $72a3: $1b
    dec h                                         ; $72a4: $25
    xor d                                         ; $72a5: $aa
    sub b                                         ; $72a6: $90
    cp [hl]                                       ; $72a7: $be
    and c                                         ; $72a8: $a1
    add hl, hl                                    ; $72a9: $29
    add a                                         ; $72aa: $87
    and [hl]                                      ; $72ab: $a6
    inc e                                         ; $72ac: $1c
    sbc [hl]                                      ; $72ad: $9e
    pop af                                        ; $72ae: $f1
    cp $00                                        ; $72af: $fe $00
    ld d, a                                       ; $72b1: $57
    ld b, b                                       ; $72b2: $40
    ret nz                                        ; $72b3: $c0

Call_065_72b4:
    inc [hl]                                      ; $72b4: $34
    push hl                                       ; $72b5: $e5
    ld d, b                                       ; $72b6: $50
    ld l, b                                       ; $72b7: $68
    ld e, [hl]                                    ; $72b8: $5e
    xor e                                         ; $72b9: $ab
    rla                                           ; $72ba: $17
    or $c2                                        ; $72bb: $f6 $c2
    call c, $7f3d                                 ; $72bd: $dc $3d $7f
    inc [hl]                                      ; $72c0: $34
    db $d3                                        ; $72c1: $d3
    ld e, $9b                                     ; $72c2: $1e $9b

jr_065_72c4:
    ld [hl], d                                    ; $72c4: $72
    jr z, jr_065_7323                             ; $72c5: $28 $5c

    and a                                         ; $72c7: $a7
    cp a                                          ; $72c8: $bf
    inc sp                                        ; $72c9: $33
    xor d                                         ; $72ca: $aa
    ld h, d                                       ; $72cb: $62
    db $d3                                        ; $72cc: $d3
    rlca                                          ; $72cd: $07
    dec sp                                        ; $72ce: $3b
    sbc [hl]                                      ; $72cf: $9e
    inc d                                         ; $72d0: $14
    push de                                       ; $72d1: $d5
    rra                                           ; $72d2: $1f
    xor e                                         ; $72d3: $ab
    sub a                                         ; $72d4: $97
    xor e                                         ; $72d5: $ab
    or c                                          ; $72d6: $b1
    cp e                                          ; $72d7: $bb
    cp l                                          ; $72d8: $bd
    call nz, $e631                                ; $72d9: $c4 $31 $e6
    jp hl                                         ; $72dc: $e9


    rst $28                                       ; $72dd: $ef
    inc [hl]                                      ; $72de: $34
    ld [hl], e                                    ; $72df: $73
    db $d3                                        ; $72e0: $d3
    rlca                                          ; $72e1: $07
    db $db                                        ; $72e2: $db
    add h                                         ; $72e3: $84
    db $d3                                        ; $72e4: $d3
    rst $18                                       ; $72e5: $df
    ld l, c                                       ; $72e6: $69
    ld h, [hl]                                    ; $72e7: $66
    inc hl                                        ; $72e8: $23
    inc bc                                        ; $72e9: $03
    rst $28                                       ; $72ea: $ef
    halt                                          ; $72eb: $76
    ld a, e                                       ; $72ec: $7b
    dec h                                         ; $72ed: $25
    ld e, h                                       ; $72ee: $5c
    inc bc                                        ; $72ef: $03
    ld d, [hl]                                    ; $72f0: $56
    or b                                          ; $72f1: $b0
    xor [hl]                                      ; $72f2: $ae
    db $eb                                        ; $72f3: $eb
    rst $28                                       ; $72f4: $ef
    adc h                                         ; $72f5: $8c
    sub $3c                                       ; $72f6: $d6 $3c
    ld h, c                                       ; $72f8: $61
    or h                                          ; $72f9: $b4
    and e                                         ; $72fa: $a3
    ld c, l                                       ; $72fb: $4d
    add hl, sp                                    ; $72fc: $39
    ld d, h                                       ; $72fd: $54
    and d                                         ; $72fe: $a2
    ld a, $02                                     ; $72ff: $3e $02
    db $e4                                        ; $7301: $e4
    db $fd                                        ; $7302: $fd
    ld bc, $9e3b                                  ; $7303: $01 $3b $9e
    inc d                                         ; $7306: $14
    push de                                       ; $7307: $d5
    rra                                           ; $7308: $1f
    xor e                                         ; $7309: $ab
    sub a                                         ; $730a: $97
    xor e                                         ; $730b: $ab
    or c                                          ; $730c: $b1
    dec c                                         ; $730d: $0d
    rra                                           ; $730e: $1f
    db $db                                        ; $730f: $db
    adc l                                         ; $7310: $8d
    push hl                                       ; $7311: $e5
    ld l, [hl]                                    ; $7312: $6e
    add l                                         ; $7313: $85
    and $35                                       ; $7314: $e6 $35
    ld d, c                                       ; $7316: $51
    xor c                                         ; $7317: $a9
    ld a, [$0564]                                 ; $7318: $fa $64 $05
    xor h                                         ; $731b: $ac
    ld d, l                                       ; $731c: $55
    pop de                                        ; $731d: $d1
    add b                                         ; $731e: $80
    dec d                                         ; $731f: $15
    xor d                                         ; $7320: $aa
    adc b                                         ; $7321: $88
    ld sp, hl                                     ; $7322: $f9

jr_065_7323:
    ld e, c                                       ; $7323: $59
    dec h                                         ; $7324: $25
    sub [hl]                                      ; $7325: $96
    db $e4                                        ; $7326: $e4
    ret c                                         ; $7327: $d8

    db $fd                                        ; $7328: $fd
    ld bc, $77c7                                  ; $7329: $01 $c7 $77
    dec hl                                        ; $732c: $2b
    ld h, e                                       ; $732d: $63
    ld e, $fd                                     ; $732e: $1e $fd
    nop                                           ; $7330: $00
    rst $00                                       ; $7331: $c7
    halt                                          ; $7332: $76
    rst $00                                       ; $7333: $c7
    ld a, b                                       ; $7334: $78
    inc c                                         ; $7335: $0c
    reti                                          ; $7336: $d9


    add l                                         ; $7337: $85
    ld l, c                                       ; $7338: $69
    ld b, b                                       ; $7339: $40
    cpl                                           ; $733a: $2f
    adc b                                         ; $733b: $88
    dec hl                                        ; $733c: $2b
    ld e, b                                       ; $733d: $58
    sbc h                                         ; $733e: $9c
    rrca                                          ; $733f: $0f
    rst $00                                       ; $7340: $c7
    halt                                          ; $7341: $76
    ld [hl], e                                    ; $7342: $73
    sub d                                         ; $7343: $92
    cp $3a                                        ; $7344: $fe $3a
    rst $10                                       ; $7346: $d7
    call nz, $f989                                ; $7347: $c4 $89 $f9
    ld sp, $c2ed                                  ; $734a: $31 $ed $c2
    ld a, h                                       ; $734d: $7c
    rst $00                                       ; $734e: $c7
    ld [hl], $91                                  ; $734f: $36 $91
    sub $80                                       ; $7351: $d6 $80
    ld e, [hl]                                    ; $7353: $5e
    db $ec                                        ; $7354: $ec
    ld d, [hl]                                    ; $7355: $56
    call nc, $c70f                                ; $7356: $d4 $0f $c7
    halt                                          ; $7359: $76
    di                                            ; $735a: $f3
    ld b, h                                       ; $735b: $44
    ld bc, $e62e                                  ; $735c: $01 $2e $e6
    ld l, c                                       ; $735f: $69
    ld b, b                                       ; $7360: $40
    inc de                                        ; $7361: $13
    ld a, [c]                                     ; $7362: $f2
    ld c, e                                       ; $7363: $4b
    add hl, sp                                    ; $7364: $39
    ld h, h                                       ; $7365: $64
    ld l, d                                       ; $7366: $6a
    rst $38                                       ; $7367: $ff
    sub c                                         ; $7368: $91
    sbc l                                         ; $7369: $9d
    ld l, [hl]                                    ; $736a: $6e
    dec de                                        ; $736b: $1b
    adc c                                         ; $736c: $89
    rrca                                          ; $736d: $0f
    rst $00                                       ; $736e: $c7
    halt                                          ; $736f: $76
    rlca                                          ; $7370: $07
    rst $38                                       ; $7371: $ff
    jp hl                                         ; $7372: $e9


    and $91                                       ; $7373: $e6 $91
    cp l                                          ; $7375: $bd
    add sp, -$1b                                  ; $7376: $e8 $e5
    ld b, $34                                     ; $7378: $06 $34
    ld [hl], c                                    ; $737a: $71
    sub $1f                                       ; $737b: $d6 $1f
    inc c                                         ; $737d: $0c
    db $fd                                        ; $737e: $fd
    nop                                           ; $737f: $00
    rst $00                                       ; $7380: $c7
    halt                                          ; $7381: $76
    di                                            ; $7382: $f3
    ld b, h                                       ; $7383: $44
    ld bc, $e62e                                  ; $7384: $01 $2e $e6
    ld l, c                                       ; $7387: $69
    ld b, b                                       ; $7388: $40
    cpl                                           ; $7389: $2f
    ld a, [hl]                                    ; $738a: $7e
    dec hl                                        ; $738b: $2b
    dec de                                        ; $738c: $1b
    ld l, l                                       ; $738d: $6d
    sbc b                                         ; $738e: $98
    ld h, $da                                     ; $738f: $26 $da
    sub e                                         ; $7391: $93
    ld a, b                                       ; $7392: $78
    ld [hl], $15                                  ; $7393: $36 $15
    adc a                                         ; $7395: $8f
    di                                            ; $7396: $f3
    ld bc, $76c7                                  ; $7397: $01 $c7 $76
    inc sp                                        ; $739a: $33
    sub a                                         ; $739b: $97
    add b                                         ; $739c: $80
    ld h, a                                       ; $739d: $67
    jp nz, Jump_000_00f9                          ; $739e: $c2 $f9 $00

    rst $00                                       ; $73a1: $c7
    or $0a                                        ; $73a2: $f6 $0a
    jp c, $498b                                   ; $73a4: $da $8b $49

    halt                                          ; $73a7: $76
    db $eb                                        ; $73a8: $eb
    ld e, d                                       ; $73a9: $5a
    ld a, [$fcfd]                                 ; $73aa: $fa $fd $fc
    nop                                           ; $73ad: $00
    ld h, a                                       ; $73ae: $67
    ld l, b                                       ; $73af: $68
    rst $38                                       ; $73b0: $ff
    ld e, c                                       ; $73b1: $59
    ldh a, [rIE]                                  ; $73b2: $f0 $ff
    ld l, a                                       ; $73b4: $6f
    ld [hl+], a                                   ; $73b5: $22
    jp $a6d8                                      ; $73b6: $c3 $d8 $a6


    or $32                                        ; $73b9: $f6 $32
    call nz, $d4e4                                ; $73bb: $c4 $e4 $d4
    ret                                           ; $73be: $c9


    cp $36                                        ; $73bf: $fe $36
    ld [hl], d                                    ; $73c1: $72
    sbc d                                         ; $73c2: $9a
    ld [hl], d                                    ; $73c3: $72
    xor b                                         ; $73c4: $a8
    ccf                                           ; $73c5: $3f
    ld bc, $317d                                  ; $73c6: $01 $7d $31
    jp Jump_065_4aa0                              ; $73c9: $c3 $a0 $4a


    db $db                                        ; $73cc: $db
    sbc b                                         ; $73cd: $98
    ld [hl], c                                    ; $73ce: $71
    ld a, a                                       ; $73cf: $7f
    sub a                                         ; $73d0: $97
    jr c, jr_065_73eb                             ; $73d1: $38 $18

    or h                                          ; $73d3: $b4
    pop hl                                        ; $73d4: $e1
    db $ed                                        ; $73d5: $ed
    add d                                         ; $73d6: $82
    adc c                                         ; $73d7: $89
    ld [$3764], a                                 ; $73d8: $ea $64 $37
    db $db                                        ; $73db: $db
    ret z                                         ; $73dc: $c8

    ld l, c                                       ; $73dd: $69
    ld b, b                                       ; $73de: $40
    rst $08                                       ; $73df: $cf
    jp $efcb                                      ; $73e0: $c3 $cb $ef


    rst $00                                       ; $73e3: $c7
    or e                                          ; $73e4: $b3
    pop de                                        ; $73e5: $d1
    and d                                         ; $73e6: $a2
    rst $20                                       ; $73e7: $e7
    sbc b                                         ; $73e8: $98
    inc de                                        ; $73e9: $13
    ld c, h                                       ; $73ea: $4c

jr_065_73eb:
    db $ed                                        ; $73eb: $ed
    ld a, c                                       ; $73ec: $79
    sub h                                         ; $73ed: $94
    and e                                         ; $73ee: $a3
    and e                                         ; $73ef: $a3
    sbc e                                         ; $73f0: $9b
    jp c, $2073                                   ; $73f1: $da $73 $20

    ld b, l                                       ; $73f4: $45
    call Call_065_565c                            ; $73f5: $cd $5c $56
    ret c                                         ; $73f8: $d8

    ld [hl], l                                    ; $73f9: $75
    or a                                          ; $73fa: $b7
    ld [c], a                                     ; $73fb: $e2
    sub l                                         ; $73fc: $95
    cpl                                           ; $73fd: $2f
    ld h, $d9                                     ; $73fe: $26 $d9
    ld a, a                                       ; $7400: $7f
    ld d, $fc                                     ; $7401: $16 $fc
    db $eb                                        ; $7403: $eb
    add l                                         ; $7404: $85

jr_065_7405:
    ld d, e                                       ; $7405: $53
    cp [hl]                                       ; $7406: $be
    jr @-$26                                      ; $7407: $18 $d8

    ld [hl], l                                    ; $7409: $75
    sub l                                         ; $740a: $95
    xor $e5                                       ; $740b: $ee $e5
    xor c                                         ; $740d: $a9
    adc a                                         ; $740e: $8f
    sub h                                         ; $740f: $94
    ld b, e                                       ; $7410: $43
    db $e4                                        ; $7411: $e4
    db $fd                                        ; $7412: $fd
    ld bc, $9a09                                  ; $7413: $01 $09 $9a
    pop de                                        ; $7416: $d1
    ld [hl], l                                    ; $7417: $75
    sub l                                         ; $7418: $95
    xor $e5                                       ; $7419: $ee $e5
    xor c                                         ; $741b: $a9
    pop de                                        ; $741c: $d1
    and $be                                       ; $741d: $e6 $be
    rst $28                                       ; $741f: $ef

jr_065_7420:
    xor [hl]                                      ; $7420: $ae
    dec hl                                        ; $7421: $2b
    db $eb                                        ; $7422: $eb
    db $db                                        ; $7423: $db
    xor $be                                       ; $7424: $ee $be
    dec a                                         ; $7426: $3d
    halt                                          ; $7427: $76
    di                                            ; $7428: $f3
    or e                                          ; $7429: $b3
    rra                                           ; $742a: $1f
    dec de                                        ; $742b: $1b
    jp c, Jump_000_1c4b                           ; $742c: $da $4b $1c

    inc c                                         ; $742f: $0c
    jp c, $f36c                                   ; $7430: $da $6c $f3

    db $d3                                        ; $7433: $d3
    ld [hl], $7d                                  ; $7434: $36 $7d
    db $db                                        ; $7436: $db
    sbc e                                         ; $7437: $9b
    ld [hl], d                                    ; $7438: $72
    ld l, b                                       ; $7439: $68
    jp z, $a0c1                                   ; $743a: $ca $c1 $a0

    add l                                         ; $743d: $85
    ld l, h                                       ; $743e: $6c
    or [hl]                                       ; $743f: $b6
    ld sp, hl                                     ; $7440: $f9
    cp c                                          ; $7441: $b9
    jp hl                                         ; $7442: $e9


    inc bc                                        ; $7443: $03
    sub a                                         ; $7444: $97
    ld c, e                                       ; $7445: $4b
    sub $47                                       ; $7446: $d6 $47
    jr nc, jr_065_7420                            ; $7448: $30 $d6

    add e                                         ; $744a: $83
    ld e, l                                       ; $744b: $5d
    ld b, e                                       ; $744c: $43
    cp e                                          ; $744d: $bb
    db $db                                        ; $744e: $db
    dec bc                                        ; $744f: $0b
    ld h, d                                       ; $7450: $62
    add [hl]                                      ; $7451: $86
    ld b, c                                       ; $7452: $41
    sub l                                         ; $7453: $95
    ld h, c                                       ; $7454: $61
    ld [hl], $7d                                  ; $7455: $36 $7d
    db $db                                        ; $7457: $db
    jr nz, jr_065_7405                            ; $7458: $20 $ab

    ld c, b                                       ; $745a: $48
    add hl, sp                                    ; $745b: $39
    ld e, b                                       ; $745c: $58
    dec d                                         ; $745d: $15
    xor a                                         ; $745e: $af
    db $d3                                        ; $745f: $d3
    sub h                                         ; $7460: $94
    ld b, e                                       ; $7461: $43
    sbc a                                         ; $7462: $9f
    ld [$dd74], a                                 ; $7463: $ea $74 $dd
    db $fd                                        ; $7466: $fd
    ld bc, $9c5b                                  ; $7467: $01 $5b $9c
    sub h                                         ; $746a: $94
    and d                                         ; $746b: $a2
    ld b, $ac                                     ; $746c: $06 $ac
    and b                                         ; $746e: $a0
    ld d, l                                       ; $746f: $55
    ld e, b                                       ; $7470: $58
    sbc l                                         ; $7471: $9d
    ld l, h                                       ; $7472: $6c
    sbc h                                         ; $7473: $9c
    dec d                                         ; $7474: $15
    di                                            ; $7475: $f3
    call c, $b9ed                                 ; $7476: $dc $ed $b9
    ret nc                                        ; $7479: $d0

    rst $18                                       ; $747a: $df
    dec l                                         ; $747b: $2d
    ld a, $9b                                     ; $747c: $3e $9b
    ld h, c                                       ; $747e: $61
    dec de                                        ; $747f: $1b
    inc sp                                        ; $7480: $33
    ld a, [$3fe2]                                 ; $7481: $fa $e2 $3f
    ld [hl], d                                    ; $7484: $72
    ld [bc], a                                    ; $7485: $02
    jp Jump_000_1fdc                              ; $7486: $c3 $dc $1f


    ld e, e                                       ; $7489: $5b
    db $dd                                        ; $748a: $dd
    bit 2, e                                      ; $748b: $cb $53
    rrca                                          ; $748d: $0f
    and h                                         ; $748e: $a4
    xor b                                         ; $748f: $a8
    ld e, e                                       ; $7490: $5b
    ld l, b                                       ; $7491: $68
    or [hl]                                       ; $7492: $b6
    di                                            ; $7493: $f3
    ld l, [hl]                                    ; $7494: $6e
    or a                                          ; $7495: $b7
    ld d, d                                       ; $7496: $52
    xor e                                         ; $7497: $ab
    cp e                                          ; $7498: $bb
    scf                                           ; $7499: $37
    cp c                                          ; $749a: $b9
    ld d, [hl]                                    ; $749b: $56
    ret                                           ; $749c: $c9


    and a                                         ; $749d: $a7
    ld [hl], l                                    ; $749e: $75
    sub d                                         ; $749f: $92
    db $fd                                        ; $74a0: $fd
    rst $20                                       ; $74a1: $e7
    jp hl                                         ; $74a2: $e9


    adc e                                         ; $74a3: $8b
    ld c, c                                       ; $74a4: $49
    sbc $f7                                       ; $74a5: $de $f7
    db $dd                                        ; $74a7: $dd
    ld b, h                                       ; $74a8: $44
    ld a, [de]                                    ; $74a9: $1a
    dec a                                         ; $74aa: $3d
    db $eb                                        ; $74ab: $eb
    and d                                         ; $74ac: $a2
    ld l, [hl]                                    ; $74ad: $6e

jr_065_74ae:
    ld hl, sp+$00                                 ; $74ae: $f8 $00
    ld h, a                                       ; $74b0: $67
    ld [hl], h                                    ; $74b1: $74
    ld a, c                                       ; $74b2: $79
    ld sp, $6ef0                                  ; $74b3: $31 $f0 $6e
    scf                                           ; $74b6: $37
    adc a                                         ; $74b7: $8f
    sbc h                                         ; $74b8: $9c
    ld a, [hl+]                                   ; $74b9: $2a
    ld a, [$2927]                                 ; $74ba: $fa $27 $29
    cp c                                          ; $74bd: $b9
    jp hl                                         ; $74be: $e9


    inc bc                                        ; $74bf: $03
    ld h, a                                       ; $74c0: $67
    sub h                                         ; $74c1: $94
    db $dd                                        ; $74c2: $dd
    add d                                         ; $74c3: $82
    jr nz, jr_065_74ae                            ; $74c4: $20 $e8

    and l                                         ; $74c6: $a5
    rst $28                                       ; $74c7: $ef
    or $b2                                        ; $74c8: $f6 $b2
    add hl, bc                                    ; $74ca: $09
    and e                                         ; $74cb: $a3
    dec e                                         ; $74cc: $1d
    xor l                                         ; $74cd: $ad
    ld a, h                                       ; $74ce: $7c
    ld a, e                                       ; $74cf: $7b
    add h                                         ; $74d0: $84
    pop de                                        ; $74d1: $d1
    and [hl]                                      ; $74d2: $a6
    inc e                                         ; $74d3: $1c
    inc c                                         ; $74d4: $0c
    or d                                          ; $74d5: $b2
    rst $38                                       ; $74d6: $ff
    sbc b                                         ; $74d7: $98
    inc de                                        ; $74d8: $13
    ld b, b                                       ; $74d9: $40
    cp l                                          ; $74da: $bd
    dec hl                                        ; $74db: $2b
    sbc [hl]                                      ; $74dc: $9e
    rst $10                                       ; $74dd: $d7
    ld [hl], l                                    ; $74de: $75
    pop bc                                        ; $74df: $c1
    adc d                                         ; $74e0: $8a
    or d                                          ; $74e1: $b2
    db $d3                                        ; $74e2: $d3
    ld a, a                                       ; $74e3: $7f
    call z, $a6f0                                 ; $74e4: $cc $f0 $a6
    ld l, b                                       ; $74e7: $68
    halt                                          ; $74e8: $76
    ld h, c                                       ; $74e9: $61
    xor $0f                                       ; $74ea: $ee $0f
    db $db                                        ; $74ec: $db
    dec a                                         ; $74ed: $3d
    or $d2                                        ; $74ee: $f6 $d2
    inc c                                         ; $74f0: $0c
    or e                                          ; $74f1: $b3
    pop hl                                        ; $74f2: $e1
    inc bc                                        ; $74f3: $03
    rst $20                                       ; $74f4: $e7
    ld b, b                                       ; $74f5: $40
    adc d                                         ; $74f6: $8a
    ld a, [hl+]                                   ; $74f7: $2a
    ld h, b                                       ; $74f8: $60
    xor l                                         ; $74f9: $ad
    db $eb                                        ; $74fa: $eb
    sbc d                                         ; $74fb: $9a
    ld hl, $69fd                                  ; $74fc: $21 $fd $69
    ld b, b                                       ; $74ff: $40
    db $e3                                        ; $7500: $e3
    ld l, b                                       ; $7501: $68
    cp l                                          ; $7502: $bd
    call c, $9305                                 ; $7503: $dc $05 $93
    and e                                         ; $7506: $a3
    db $dd                                        ; $7507: $dd
    cp a                                          ; $7508: $bf
    ret nc                                        ; $7509: $d0

    ld l, h                                       ; $750a: $6c
    inc c                                         ; $750b: $0c
    cp h                                          ; $750c: $bc
    ccf                                           ; $750d: $3f
    rla                                           ; $750e: $17
    xor [hl]                                      ; $750f: $ae
    push af                                       ; $7510: $f5

Jump_065_7511:
    rra                                           ; $7511: $1f
    adc c                                         ; $7512: $89
    push af                                       ; $7513: $f5
    call nc, Call_065_7a8c                        ; $7514: $d4 $8c $7a
    jr nz, @+$47                                  ; $7517: $20 $45

    db $dd                                        ; $7519: $dd
    ld b, d                                       ; $751a: $42
    or e                                          ; $751b: $b3
    sbc l                                         ; $751c: $9d
    ld [hl], a                                    ; $751d: $77
    ld a, e                                       ; $751e: $7b
    ld hl, sp+$65                                 ; $751f: $f8 $65
    ld l, e                                       ; $7521: $6b
    push hl                                       ; $7522: $e5
    ld l, [hl]                                    ; $7523: $6e
    ld h, l                                       ; $7524: $65
    sub a                                         ; $7525: $97
    and a                                         ; $7526: $a7
    sbc c                                         ; $7527: $99
    ld c, l                                       ; $7528: $4d
    cp c                                          ; $7529: $b9
    jp $9ae1                                      ; $752a: $c3 $e1 $9a


    pop de                                        ; $752d: $d1
    add b                                         ; $752e: $80
    daa                                           ; $752f: $27
    ld [$af8a], a                                 ; $7530: $ea $8a $af
    rst $38                                       ; $7533: $ff
    ld c, b                                       ; $7534: $48
    rst $18                                       ; $7535: $df
    ld l, b                                       ; $7536: $68
    sbc l                                         ; $7537: $9d
    ld a, [de]                                    ; $7538: $1a
    inc [hl]                                      ; $7539: $34
    ld c, a                                       ; $753a: $4f
    inc bc                                        ; $753b: $03
    or l                                          ; $753c: $b5
    rst $38                                       ; $753d: $ff
    inc a                                         ; $753e: $3c
    and l                                         ; $753f: $a5
    sbc $1f                                       ; $7540: $de $1f
    db $db                                        ; $7542: $db
    sub a                                         ; $7543: $97
    dec [hl]                                      ; $7544: $35
    ld d, c                                       ; $7545: $51
    rst $10                                       ; $7546: $d7
    dec d                                         ; $7547: $15
    sbc d                                         ; $7548: $9a
    pop de                                        ; $7549: $d1
    ld l, c                                       ; $754a: $69
    add d                                         ; $754b: $82
    ld h, b                                       ; $754c: $60
    rst $18                                       ; $754d: $df
    and b                                         ; $754e: $a0
    ld a, [hl-]                                   ; $754f: $3a
    dec c                                         ; $7550: $0d
    add sp, -$6a                                  ; $7551: $e8 $96
    ld c, c                                       ; $7553: $49
    dec bc                                        ; $7554: $0b
    and d                                         ; $7555: $a2
    ld h, l                                       ; $7556: $65
    db $dd                                        ; $7557: $dd
    db $f4                                        ; $7558: $f4
    ld bc, $dc67                                  ; $7559: $01 $67 $dc
    db $dd                                        ; $755c: $dd
    sbc $94                                       ; $755d: $de $94
    ld b, e                                       ; $755f: $43
    rst $10                                       ; $7560: $d7
    push af                                       ; $7561: $f5
    xor c                                         ; $7562: $a9
    ld c, [hl]                                    ; $7563: $4e
    ld d, e                                       ; $7564: $53
    ld c, $cd                                     ; $7565: $0e $cd
    adc b                                         ; $7567: $88
    jp c, Jump_065_66c8                           ; $7568: $da $c8 $66

    ld l, b                                       ; $756b: $68
    and $a6                                       ; $756c: $e6 $a6

Call_065_756e:
    ld e, [hl]                                    ; $756e: $5e
    and $ba                                       ; $756f: $e6 $ba
    ld c, [hl]                                    ; $7571: $4e
    rst $28                                       ; $7572: $ef
    ei                                            ; $7573: $fb
    ld l, $16                                     ; $7574: $2e $16
    ld l, h                                       ; $7576: $6c
    ld a, [$e700]                                 ; $7577: $fa $00 $e7
    ld h, e                                       ; $757a: $63
    inc l                                         ; $757b: $2c
    adc l                                         ; $757c: $8d
    and d                                         ; $757d: $a2
    rst $20                                       ; $757e: $e7
    add hl, de                                    ; $757f: $19
    add d                                         ; $7580: $82
    xor b                                         ; $7581: $a8
    xor e                                         ; $7582: $ab
    ld h, a                                       ; $7583: $67
    sub h                                         ; $7584: $94
    sbc l                                         ; $7585: $9d
    ld h, $c2                                     ; $7586: $26 $c2
    cp $9d                                        ; $7588: $fe $9d
    sbc e                                         ; $758a: $9b
    ld a, $3b                                     ; $758b: $3e $3b
    sbc [hl]                                      ; $758d: $9e
    inc d                                         ; $758e: $14
    dec d                                         ; $758f: $15
    dec bc                                        ; $7590: $0b
    ld a, [bc]                                    ; $7591: $0a
    call $e56b                                    ; $7592: $cd $6b $e5
    ld a, [c]                                     ; $7595: $f2
    cp d                                          ; $7596: $ba
    ld a, a                                       ; $7597: $7f
    cp l                                          ; $7598: $bd
    add [hl]                                      ; $7599: $86
    sbc b                                         ; $759a: $98
    pop de                                        ; $759b: $d1
    ld a, a                                       ; $759c: $7f
    ld h, h                                       ; $759d: $64
    ld b, a                                       ; $759e: $47
    dec sp                                        ; $759f: $3b
    ld l, $db                                     ; $75a0: $2e $db
    ld l, b                                       ; $75a2: $68
    rst $38                                       ; $75a3: $ff
    inc h                                         ; $75a4: $24
    cp h                                          ; $75a5: $bc
    ret nc                                        ; $75a6: $d0

    ld b, $34                                     ; $75a7: $06 $34
    ret nz                                        ; $75a9: $c0

    and a                                         ; $75aa: $a7
    ld h, l                                       ; $75ab: $65
    ld c, d                                       ; $75ac: $4a
    call nz, $f73c                                ; $75ad: $c4 $3c $f7

jr_065_75b0:
    rlca                                          ; $75b0: $07
    add hl, bc                                    ; $75b1: $09
    ld c, a                                       ; $75b2: $4f
    call nc, Call_000_274b                        ; $75b3: $d4 $4b $27
    adc d                                         ; $75b6: $8a
    xor d                                         ; $75b7: $aa
    db $f4                                        ; $75b8: $f4
    ld b, b                                       ; $75b9: $40
    dec sp                                        ; $75ba: $3b
    ld c, l                                       ; $75bb: $4d
    add hl, sp                                    ; $75bc: $39
    ld [hl], h                                    ; $75bd: $74
    ld e, l                                       ; $75be: $5d
    sbc a                                         ; $75bf: $9f
    and $d9                                       ; $75c0: $e6 $d9
    db $f4                                        ; $75c2: $f4
    ld bc, $63e7                                  ; $75c3: $01 $e7 $63
    inc l                                         ; $75c6: $2c
    dec c                                         ; $75c7: $0d
    ld d, c                                       ; $75c8: $51
    and e                                         ; $75c9: $a3
    ld [hl], b                                    ; $75ca: $70
    cp d                                          ; $75cb: $ba
    xor [hl]                                      ; $75cc: $ae
    sbc [hl]                                      ; $75cd: $9e
    ld h, c                                       ; $75ce: $61
    ld de, $cfdc                                  ; $75cf: $11 $dc $cf
    push af                                       ; $75d2: $f5
    jp nz, $f7a9                                  ; $75d3: $c2 $a9 $f7

    db $fd                                        ; $75d6: $fd
    or h                                          ; $75d7: $b4
    ld b, d                                       ; $75d8: $42
    ld a, d                                       ; $75d9: $7a
    xor b                                         ; $75da: $a8
    ld e, $fe                                     ; $75db: $1e $fe
    inc c                                         ; $75dd: $0c
    ld d, e                                       ; $75de: $53
    halt                                          ; $75df: $76
    sub [hl]                                      ; $75e0: $96
    inc h                                         ; $75e1: $24
    ld l, l                                       ; $75e2: $6d
    jp $9707                                      ; $75e3: $c3 $07 $97


    jr c, jr_065_75b0                             ; $75e6: $38 $c8

    xor [hl]                                      ; $75e8: $ae
    db $db                                        ; $75e9: $db
    db $f4                                        ; $75ea: $f4
    ld bc, $5467                                  ; $75eb: $01 $67 $54
    ld h, d                                       ; $75ee: $62
    ld c, c                                       ; $75ef: $49
    adc [hl]                                      ; $75f0: $8e
    dec [hl]                                      ; $75f1: $35
    ld b, b                                       ; $75f2: $40
    ld a, l                                       ; $75f3: $7d
    cp $49                                        ; $75f4: $fe $49
    ld a, [de]                                    ; $75f6: $1a
    db $e4                                        ; $75f7: $e4
    ld b, [hl]                                    ; $75f8: $46
    push bc                                       ; $75f9: $c5
    ld a, l                                       ; $75fa: $7d
    rst $18                                       ; $75fb: $df
    sbc l                                         ; $75fc: $9d
    cp $23                                        ; $75fd: $fe $23
    dec a                                         ; $75ff: $3d
    di                                            ; $7600: $f3
    and [hl]                                      ; $7601: $a6
    ret nc                                        ; $7602: $d0

    cp h                                          ; $7603: $bc
    sub $94                                       ; $7604: $d6 $94
    and e                                         ; $7606: $a3
    and d                                         ; $7607: $a2
    xor h                                         ; $7608: $ac
    ld c, a                                       ; $7609: $4f
    set 1, a                                      ; $760a: $cb $cf
    xor $0f                                       ; $760c: $ee $0f
    db $db                                        ; $760e: $db
    add h                                         ; $760f: $84
    ld d, e                                       ; $7610: $53
    ld b, l                                       ; $7611: $45
    jp hl                                         ; $7612: $e9


    and l                                         ; $7613: $a5
    ld h, [hl]                                    ; $7614: $66
    ret z                                         ; $7615: $c8

    ld c, d                                       ; $7616: $4a
    rst $30                                       ; $7617: $f7
    ld a, [c]                                     ; $7618: $f2
    call c, $ddf7                                 ; $7619: $dc $f7 $dd
    jp hl                                         ; $761c: $e9


    ccf                                           ; $761d: $3f
    jp nc, Jump_065_6f33                          ; $761e: $d2 $33 $6f

    ld a, [de]                                    ; $7621: $1a
    add l                                         ; $7622: $85
    db $d3                                        ; $7623: $d3
    ld c, h                                       ; $7624: $4c
    dec bc                                        ; $7625: $0b
    inc l                                         ; $7626: $2c
    ld h, h                                       ; $7627: $64
    sub l                                         ; $7628: $95
    rst $08                                       ; $7629: $cf
    xor $0f                                       ; $762a: $ee $0f
    sub a                                         ; $762c: $97
    ld c, l                                       ; $762d: $4d
    jr jr_065_765d                                ; $762e: $18 $2d

    db $eb                                        ; $7630: $eb
    add hl, de                                    ; $7631: $19
    dec bc                                        ; $7632: $0b
    or e                                          ; $7633: $b3
    pop hl                                        ; $7634: $e1
    inc bc                                        ; $7635: $03
    rst $20                                       ; $7636: $e7
    ld b, d                                       ; $7637: $42
    inc sp                                        ; $7638: $33
    cp e                                          ; $7639: $bb
    jp nz, Jump_065_66ae                          ; $763a: $c2 $ae $66

    ret z                                         ; $763d: $c8

    pop de                                        ; $763e: $d1
    ld a, [hl-]                                   ; $763f: $3a
    ld e, c                                       ; $7640: $59
    rrca                                          ; $7641: $0f
    sub [hl]                                      ; $7642: $96
    ld l, c                                       ; $7643: $69
    jp c, $3f9c                                   ; $7644: $da $9c $3f

    dec c                                         ; $7647: $0d
    jr z, @+$19                                   ; $7648: $28 $17

    rla                                           ; $764a: $17
    ld b, a                                       ; $764b: $47
    rst $28                                       ; $764c: $ef
    rrca                                          ; $764d: $0f
    ld d, a                                       ; $764e: $57
    ldh a, [rHDMA5]                               ; $764f: $f0 $55
    ld h, c                                       ; $7651: $61
    push hl                                       ; $7652: $e5
    sub d                                         ; $7653: $92
    sbc l                                         ; $7654: $9d
    or c                                          ; $7655: $b1
    ld bc, $567d                                  ; $7656: $01 $7d $56
    ld c, b                                       ; $7659: $48
    rst $08                                       ; $765a: $cf
    jr jr_065_7678                                ; $765b: $18 $1b

jr_065_765d:
    db $10                                        ; $765d: $10
    or e                                          ; $765e: $b3
    ld c, l                                       ; $765f: $4d
    ld hl, $8feb                                  ; $7660: $21 $eb $8f
    ei                                            ; $7663: $fb
    rst $20                                       ; $7664: $e7
    cp $00                                        ; $7665: $fe $00
    add hl, bc                                    ; $7667: $09
    sbc d                                         ; $7668: $9a
    rst $00                                       ; $7669: $c7
    sub l                                         ; $766a: $95
    add hl, hl                                    ; $766b: $29
    rst $30                                       ; $766c: $f7
    ld [$58d3], a                                 ; $766d: $ea $d3 $58
    adc c                                         ; $7670: $89
    ld b, $a8                                     ; $7671: $06 $a8
    adc a                                         ; $7673: $8f
    ldh a, [$ac]                                  ; $7674: $f0 $ac
    ld h, c                                       ; $7676: $61
    ld a, [hl+]                                   ; $7677: $2a

jr_065_7678:
    pop hl                                        ; $7678: $e1
    ld a, [de]                                    ; $7679: $1a
    sub c                                         ; $767a: $91
    and a                                         ; $767b: $a7
    add hl, hl                                    ; $767c: $29
    add a                                         ; $767d: $87
    xor [hl]                                      ; $767e: $ae
    ld hl, sp-$16                                 ; $767f: $f8 $ea
    db $d3                                        ; $7681: $d3
    ret c                                         ; $7682: $d8

    dec l                                         ; $7683: $2d
    sub e                                         ; $7684: $93
    ld d, $44                                     ; $7685: $16 $44
    bit 7, d                                      ; $7687: $cb $7a
    ld a, a                                       ; $7689: $7f
    ld [c], a                                     ; $768a: $e2
    ld a, $94                                     ; $768b: $3e $94
    sub $80                                       ; $768d: $d6 $80
    ld b, [hl]                                    ; $768f: $46
    pop hl                                        ; $7690: $e1
    db $f4                                        ; $7691: $f4
    rra                                           ; $7692: $1f
    jp hl                                         ; $7693: $e9


    dec de                                        ; $7694: $1b
    db $10                                        ; $7695: $10
    inc bc                                        ; $7696: $03
    inc c                                         ; $7697: $0c
    or d                                          ; $7698: $b2
    sub d                                         ; $7699: $92
    jp hl                                         ; $769a: $e9


    ld b, a                                       ; $769b: $47
    ld d, c                                       ; $769c: $51
    ld b, a                                       ; $769d: $47
    dec hl                                        ; $769e: $2b
    ld e, l                                       ; $769f: $5d
    ld a, [hl-]                                   ; $76a0: $3a
    cp l                                          ; $76a1: $bd
    ld b, b                                       ; $76a2: $40
    ei                                            ; $76a3: $fb
    ld c, a                                       ; $76a4: $4f
    call nc, Call_000_036c                        ; $76a5: $d4 $6c $03
    reti                                          ; $76a8: $d9


    ld a, a                                       ; $76a9: $7f
    and h                                         ; $76aa: $a4
    ld h, a                                       ; $76ab: $67
    sbc $68                                       ; $76ac: $de $68
    inc bc                                        ; $76ae: $03
    ld [$93db], a                                 ; $76af: $ea $db $93
    ld a, b                                       ; $76b2: $78
    add $fb                                       ; $76b3: $c6 $fb
    inc bc                                        ; $76b5: $03
    ld e, e                                       ; $76b6: $5b
    cp c                                          ; $76b7: $b9
    call nc, $d51f                                ; $76b8: $d4 $1f $d5
    add hl, hl                                    ; $76bb: $29
    call nc, $d187                                ; $76bc: $d4 $87 $d1
    ld [$d8d3], a                                 ; $76bf: $ea $d3 $d8
    ld h, a                                       ; $76c2: $67
    push af                                       ; $76c3: $f5
    ld l, c                                       ; $76c4: $69
    db $ec                                        ; $76c5: $ec
    ld c, a                                       ; $76c6: $4f
    ld h, l                                       ; $76c7: $65
    pop de                                        ; $76c8: $d1
    db $fc                                        ; $76c9: $fc
    adc h                                         ; $76ca: $8c
    ld d, [hl]                                    ; $76cb: $56
    ld l, b                                       ; $76cc: $68
    and [hl]                                      ; $76cd: $a6
    sub $c6                                       ; $76ce: $d6 $c6
    ld sp, hl                                     ; $76d0: $f9
    call nc, Call_065_756e                        ; $76d1: $d4 $6e $75
    jp hl                                         ; $76d4: $e9


    db $f4                                        ; $76d5: $f4
    add d                                         ; $76d6: $82
    cp e                                          ; $76d7: $bb
    rst $20                                       ; $76d8: $e7
    ld [hl], c                                    ; $76d9: $71
    rla                                           ; $76da: $17
    ld h, h                                       ; $76db: $64
    inc sp                                        ; $76dc: $33
    ld h, e                                       ; $76dd: $63
    ld h, [hl]                                    ; $76de: $66
    rst $38                                       ; $76df: $ff
    sub c                                         ; $76e0: $91
    rst $28                                       ; $76e1: $ef
    ld c, a                                       ; $76e2: $4f
    ld a, [bc]                                    ; $76e3: $0a
    ld h, a                                       ; $76e4: $67
    jp $e707                                      ; $76e5: $c3 $07 $e7


    ld [hl+], a                                   ; $76e8: $22
    ld b, e                                       ; $76e9: $43
    di                                            ; $76ea: $f3
    inc [hl]                                      ; $76eb: $34
    jp Jump_065_501a                              ; $76ec: $c3 $1a $50


    and a                                         ; $76ef: $a7
    or h                                          ; $76f0: $b4
    jp c, $9f38                                   ; $76f1: $da $38 $9f

    jp c, Jump_000_2ead                           ; $76f4: $da $ad $2e

    sbc l                                         ; $76f7: $9d
    ld e, [hl]                                    ; $76f8: $5e
    ld [hl], b                                    ; $76f9: $70
    rst $18                                       ; $76fa: $df
    or a                                          ; $76fb: $b7
    and h                                         ; $76fc: $a4
    halt                                          ; $76fd: $76
    or h                                          ; $76fe: $b4
    ld c, d                                       ; $76ff: $4a
    sbc a                                         ; $7700: $9f
    ld a, c                                       ; $7701: $79
    or h                                          ; $7702: $b4
    ld a, [hl+]                                   ; $7703: $2a
    sbc h                                         ; $7704: $9c
    ld d, d                                       ; $7705: $52
    adc [hl]                                      ; $7706: $8e
    adc l                                         ; $7707: $8d
    adc [hl]                                      ; $7708: $8e
    ld l, [hl]                                    ; $7709: $6e
    ld hl, sp+$00                                 ; $770a: $f8 $00
    add hl, bc                                    ; $770c: $09
    ld [$a6c3], a                                 ; $770d: $ea $c3 $a6
    add hl, hl                                    ; $7710: $29
    add a                                         ; $7711: $87
    ld b, d                                       ; $7712: $42
    inc sp                                        ; $7713: $33
    or l                                          ; $7714: $b5
    ld [hl], $ce                                  ; $7715: $36 $ce
    and a                                         ; $7717: $a7
    halt                                          ; $7718: $76
    xor e                                         ; $7719: $ab
    ld c, e                                       ; $771a: $4b
    and a                                         ; $771b: $a7
    rla                                           ; $771c: $17
    inc [hl]                                      ; $771d: $34
    ld a, [bc]                                    ; $771e: $0a
    and a                                         ; $771f: $a7
    ld [de], a                                    ; $7720: $12
    push af                                       ; $7721: $f5
    ld [hl], d                                    ; $7722: $72
    dec a                                         ; $7723: $3d
    ld h, l                                       ; $7724: $65
    cp l                                          ; $7725: $bd
    rst $28                                       ; $7726: $ef
    and a                                         ; $7727: $a7
    push af                                       ; $7728: $f5
    rra                                           ; $7729: $1f
    reti                                          ; $772a: $d9


    xor c                                         ; $772b: $a9
    pop de                                        ; $772c: $d1
    inc sp                                        ; $772d: $33
    ld c, l                                       ; $772e: $4d
    adc a                                         ; $772f: $8f

Call_065_7730:
    add l                                         ; $7730: $85
    cp c                                          ; $7731: $b9
    ccf                                           ; $7732: $3f
    add hl, bc                                    ; $7733: $09
    sbc d                                         ; $7734: $9a
    ld e, c                                       ; $7735: $59
    ld a, a                                       ; $7736: $7f
    ld h, c                                       ; $7737: $61
    and [hl]                                      ; $7738: $a6
    ld [hl], a                                    ; $7739: $77
    ld c, h                                       ; $773a: $4c
    or d                                          ; $773b: $b2
    cp [hl]                                       ; $773c: $be
    pop hl                                        ; $773d: $e1
    ld a, a                                       ; $773e: $7f
    jp z, Jump_065_5406                           ; $773f: $ca $06 $54

jr_065_7742:
    ld a, [c]                                     ; $7742: $f2
    ld l, c                                       ; $7743: $69
    dec a                                         ; $7744: $3d
    adc h                                         ; $7745: $8c
    rst $38                                       ; $7746: $ff
    add sp, -$03                                  ; $7747: $e8 $fd
    ld bc, $b5db                                  ; $7749: $01 $db $b5
    ld e, e                                       ; $774c: $5b
    ld e, l                                       ; $774d: $5d
    ld a, [hl-]                                   ; $774e: $3a
    cp l                                          ; $774f: $bd
    ld b, b                                       ; $7750: $40
    dec bc                                        ; $7751: $0b
    call $29c2                                    ; $7752: $cd $c2 $29
    rr a                                          ; $7755: $cb $1f
    sub c                                         ; $7757: $91
    halt                                          ; $7758: $76
    rst $18                                       ; $7759: $df
    ld [hl], a                                    ; $775a: $77
    inc bc                                        ; $775b: $03
    ld d, [hl]                                    ; $775c: $56
    ld d, e                                       ; $775d: $53
    cpl                                           ; $775e: $2f
    ld [hl], a                                    ; $775f: $77
    pop bc                                        ; $7760: $c1
    ld a, [hl-]                                   ; $7761: $3a
    sub l                                         ; $7762: $95
    ld d, b                                       ; $7763: $50
    add hl, sp                                    ; $7764: $39
    sbc e                                         ; $7765: $9b
    ld a, $97                                     ; $7766: $3e $97
    jr c, jr_065_7742                             ; $7768: $38 $d8

    ld d, h                                       ; $776a: $54
    ld h, c                                       ; $776b: $61
    ld h, l                                       ; $776c: $65
    ld a, l                                       ; $776d: $7d
    ld a, e                                       ; $776e: $7b
    ld [de], a                                    ; $776f: $12

jr_065_7770:
    rst $08                                       ; $7770: $cf
    ld e, b                                       ; $7771: $58
    halt                                          ; $7772: $76
    dec b                                         ; $7773: $05
    db $eb                                        ; $7774: $eb
    sub [hl]                                      ; $7775: $96
    ld c, c                                       ; $7776: $49
    dec bc                                        ; $7777: $0b
    and d                                         ; $7778: $a2
    ld h, l                                       ; $7779: $65
    cp l                                          ; $777a: $bd
    ccf                                           ; $777b: $3f
    ld d, a                                       ; $777c: $57
    inc a                                         ; $777d: $3c
    reti                                          ; $777e: $d9


    add b                                         ; $777f: $80
    ld h, [hl]                                    ; $7780: $66
    pop hl                                        ; $7781: $e1
    ld [hl], h                                    ; $7782: $74
    sbc c                                         ; $7783: $99
    sbc b                                         ; $7784: $98
    ld b, [hl]                                    ; $7785: $46
    ld a, l                                       ; $7786: $7d
    ld a, [de]                                    ; $7787: $1a
    cp e                                          ; $7788: $bb
    ld a, d                                       ; $7789: $7a
    ld d, [hl]                                    ; $778a: $56
    sbc a                                         ; $778b: $9f
    add $6e                                       ; $778c: $c6 $6e
    sbc c                                         ; $778e: $99
    or h                                          ; $778f: $b4
    jr nz, jr_065_77ec                            ; $7790: $20 $5a

    sub $fb                                       ; $7792: $d6 $fb
    inc bc                                        ; $7794: $03
    add hl, bc                                    ; $7795: $09
    ld [$a6c3], a                                 ; $7796: $ea $c3 $a6
    ld d, c                                       ; $7799: $51
    jr c, @-$09                                   ; $779a: $38 $f5

    cp [hl]                                       ; $779c: $be
    sbc a                                         ; $779d: $9f
    ld d, [hl]                                    ; $779e: $56
    ld b, h                                       ; $779f: $44
    ld bc, $30c3                                  ; $77a0: $01 $c3 $30
    rst $30                                       ; $77a3: $f7
    rlca                                          ; $77a4: $07
    sub a                                         ; $77a5: $97
    jr c, jr_065_7770                             ; $77a6: $38 $c8

    ld c, d                                       ; $77a8: $4a
    inc [hl]                                      ; $77a9: $34
    ret nz                                        ; $77aa: $c0

    ret c                                         ; $77ab: $d8

    sub h                                         ; $77ac: $94
    ld b, e                                       ; $77ad: $43
    ld e, c                                       ; $77ae: $59
    ld sp, hl                                     ; $77af: $f9
    ld h, d                                       ; $77b0: $62
    sub d                                         ; $77b1: $92
    sub l                                         ; $77b2: $95
    ld b, d                                       ; $77b3: $42
    ld d, h                                       ; $77b4: $54
    and d                                         ; $77b5: $a2
    ld bc, $304f                                  ; $77b6: $01 $4f $30
    ld d, l                                       ; $77b9: $55
    ld d, c                                       ; $77ba: $51
    add sp, $3f                                   ; $77bb: $e8 $3f
    ld c, e                                       ; $77bd: $4b
    ld [de], a                                    ; $77be: $12
    ld d, [hl]                                    ; $77bf: $56
    sub $c6                                       ; $77c0: $d6 $c6
    ld sp, hl                                     ; $77c2: $f9
    cp h                                          ; $77c3: $bc
    ccf                                           ; $77c4: $3f
    ld d, a                                       ; $77c5: $57
    ld [$3ea7], sp                                ; $77c6: $08 $a7 $3e
    ld d, l                                       ; $77c9: $55
    ld l, c                                       ; $77ca: $69
    push hl                                       ; $77cb: $e5
    sub d                                         ; $77cc: $92
    halt                                          ; $77cd: $76
    or d                                          ; $77ce: $b2
    sbc $b7                                       ; $77cf: $de $b7
    ld c, b                                       ; $77d1: $48
    ld l, h                                       ; $77d2: $6c
    ld a, [$0900]                                 ; $77d3: $fa $00 $09
    ld [$a6c3], a                                 ; $77d6: $ea $c3 $a6
    sbc $f7                                       ; $77d9: $de $f7
    db $d3                                        ; $77db: $d3
    ld a, [bc]                                    ; $77dc: $0a
    reti                                          ; $77dd: $d9


    dec l                                         ; $77de: $2d
    adc $eb                                       ; $77df: $ce $eb
    ld e, l                                       ; $77e1: $5d

jr_065_77e2:
    ldh [$3b], a                                  ; $77e2: $e0 $3b
    xor a                                         ; $77e4: $af
    rst $30                                       ; $77e5: $f7
    ld l, [hl]                                    ; $77e6: $6e
    inc de                                        ; $77e7: $13
    adc h                                         ; $77e8: $8c
    ld h, l                                       ; $77e9: $65
    sub c                                         ; $77ea: $91
    ld [hl], d                                    ; $77eb: $72

jr_065_77ec:
    rst $08                                       ; $77ec: $cf
    ld h, a                                       ; $77ed: $67
    jp $c254                                      ; $77ee: $c3 $54 $c2


    push de                                       ; $77f1: $d5
    rst $20                                       ; $77f2: $e7
    cp e                                          ; $77f3: $bb
    ccf                                           ; $77f4: $3f
    rst $20                                       ; $77f5: $e7
    ld b, d                                       ; $77f6: $42
    ld a, a                                       ; $77f7: $7f
    or a                                          ; $77f8: $b7
    ld hl, sp+$14                                 ; $77f9: $f8 $14
    dec d                                         ; $77fb: $15
    sbc d                                         ; $77fc: $9a
    rst $00                                       ; $77fd: $c7
    ld [hl], l                                    ; $77fe: $75
    ld a, [hl]                                    ; $77ff: $7e
    rst $20                                       ; $7800: $e7
    inc sp                                        ; $7801: $33
    ld c, h                                       ; $7802: $4c
    rst $38                                       ; $7803: $ff
    sub c                                         ; $7804: $91
    sbc l                                         ; $7805: $9d
    ld a, [bc]                                    ; $7806: $0a
    sbc b                                         ; $7807: $98
    db $f4                                        ; $7808: $f4
    call c, $db1f                                 ; $7809: $dc $1f $db
    add h                                         ; $780c: $84
    ld d, e                                       ; $780d: $53
    ld a, a                                       ; $780e: $7f
    ld d, h                                       ; $780f: $54
    and a                                         ; $7810: $a7
    ld e, [hl]                                    ; $7811: $5e
    ld l, $34                                     ; $7812: $2e $34
    ld d, c                                       ; $7814: $51
    and c                                         ; $7815: $a1
    ld a, c                                       ; $7816: $79
    ld e, h                                       ; $7817: $5c
    reti                                          ; $7818: $d9


    adc h                                         ; $7819: $8c
    sbc b                                         ; $781a: $98
    ld l, c                                       ; $781b: $69
    push af                                       ; $781c: $f5
    jr nc, jr_065_77e2                            ; $781d: $30 $c3

    ld a, [hl-]                                   ; $781f: $3a
    dec [hl]                                      ; $7820: $35
    db $fc                                        ; $7821: $fc
    ld h, e                                       ; $7822: $63
    ld bc, $07f7                                  ; $7823: $01 $f7 $07
    db $db                                        ; $7826: $db
    ld e, h                                       ; $7827: $5c
    db $fc                                        ; $7828: $fc
    reti                                          ; $7829: $d9


    ret z                                         ; $782a: $c8

    jp z, $9317                                   ; $782b: $ca $17 $93

    db $ec                                        ; $782e: $ec
    ld [$1605], a                                 ; $782f: $ea $05 $16
    sbc d                                         ; $7832: $9a
    rst $18                                       ; $7833: $df
    ld a, [bc]                                    ; $7834: $0a
    adc l                                         ; $7835: $8d
    ld c, [hl]                                    ; $7836: $4e
    or $1f                                        ; $7837: $f6 $1f
    jp hl                                         ; $7839: $e9


    sbc c                                         ; $783a: $99
    scf                                           ; $783b: $37
    dec de                                        ; $783c: $1b
    ld a, $e2                                     ; $783d: $3e $e2
    sub l                                         ; $783f: $95
    cpl                                           ; $7840: $2f
    ld h, $59                                     ; $7841: $26 $59
    ld bc, $588c                                  ; $7843: $01 $8c $58
    ld e, b                                       ; $7846: $58
    ld l, b                                       ; $7847: $68
    ld e, [hl]                                    ; $7848: $5e
    xor e                                         ; $7849: $ab
    rrca                                          ; $784a: $0f
    inc sp                                        ; $784b: $33
    sbc $1f                                       ; $784c: $de $1f
    db $db                                        ; $784e: $db
    ld h, e                                       ; $784f: $63
    ld b, b                                       ; $7850: $40
    and c                                         ; $7851: $a1
    ld a, c                                       ; $7852: $79
    xor l                                         ; $7853: $ad
    db $ec                                        ; $7854: $ec
    ld c, a                                       ; $7855: $4f
    inc sp                                        ; $7856: $33
    rst $00                                       ; $7857: $c7
    inc [hl]                                      ; $7858: $34
    db $e4                                        ; $7859: $e4
    ld b, [hl]                                    ; $785a: $46
    rrca                                          ; $785b: $0f
    ld l, l                                       ; $785c: $6d
    db $d3                                        ; $785d: $d3
    rlca                                          ; $785e: $07
    db $db                                        ; $785f: $db
    ld h, e                                       ; $7860: $63
    ld b, b                                       ; $7861: $40
    and c                                         ; $7862: $a1
    ld a, c                                       ; $7863: $79
    xor l                                         ; $7864: $ad
    db $ec                                        ; $7865: $ec
    ld [hl-], a                                   ; $7866: $32
    rst $38                                       ; $7867: $ff
    ret z                                         ; $7868: $c8

    ret                                           ; $7869: $c9


    ld l, a                                       ; $786a: $6f
    push bc                                       ; $786b: $c5
    ld c, l                                       ; $786c: $4d
    rra                                           ; $786d: $1f
    dec sp                                        ; $786e: $3b
    db $ec                                        ; $786f: $ec
    ld l, [hl]                                    ; $7870: $6e
    ld [c], a                                     ; $7871: $e2
    db $e4                                        ; $7872: $e4
    inc c                                         ; $7873: $0c
    inc de                                        ; $7874: $13
    ld [hl], l                                    ; $7875: $75
    ld e, l                                       ; $7876: $5d
    sbc l                                         ; $7877: $9d
    ld h, h                                       ; $7878: $64
    sub e                                         ; $7879: $93
    inc de                                        ; $787a: $13
    adc l                                         ; $787b: $8d
    db $fd                                        ; $787c: $fd
    daa                                           ; $787d: $27
    ld h, $f1                                     ; $787e: $26 $f1
    rra                                           ; $7880: $1f
    cp b                                          ; $7881: $b8
    ld [hl], c                                    ; $7882: $71
    sbc c                                         ; $7883: $99
    ei                                            ; $7884: $fb
    inc bc                                        ; $7885: $03
    ld e, e                                       ; $7886: $5b
    cp c                                          ; $7887: $b9
    call nc, $d51f                                ; $7888: $d4 $1f $d5
    add hl, hl                                    ; $788b: $29
    call nc, $d187                                ; $788c: $d4 $87 $d1
    ld [$558f], a                                 ; $788f: $ea $8f $55
    and d                                         ; $7892: $a2
    ld [bc], a                                    ; $7893: $02
    ld e, h                                       ; $7894: $5c
    call z, Call_065_72b4                         ; $7895: $cc $b4 $72
    cp d                                          ; $7898: $ba
    ld a, c                                       ; $7899: $79
    ld [hl], c                                    ; $789a: $71
    ld e, $34                                     ; $789b: $1e $34
    and b                                         ; $789d: $a0
    sbc e                                         ; $789e: $9b
    ld h, a                                       ; $789f: $67
    pop bc                                        ; $78a0: $c1
    rst $38                                       ; $78a1: $ff
    cp a                                          ; $78a2: $bf
    adc c                                         ; $78a3: $89
    inc c                                         ; $78a4: $0c
    ld h, e                                       ; $78a5: $63
    ret nc                                        ; $78a6: $d0

    ld b, $74                                     ; $78a7: $06 $74
    or e                                          ; $78a9: $b3
    adc l                                         ; $78aa: $8d
    inc e                                         ; $78ab: $1c
    ld l, l                                       ; $78ac: $6d
    ld b, b                                       ; $78ad: $40
    rst $08                                       ; $78ae: $cf
    jp $efcb                                      ; $78af: $c3 $cb $ef


    rst $00                                       ; $78b2: $c7
    or e                                          ; $78b3: $b3
    pop de                                        ; $78b4: $d1
    and d                                         ; $78b5: $a2
    rst $20                                       ; $78b6: $e7
    sbc b                                         ; $78b7: $98
    inc de                                        ; $78b8: $13
    ld c, h                                       ; $78b9: $4c
    db $ed                                        ; $78ba: $ed
    ld a, c                                       ; $78bb: $79
    sub h                                         ; $78bc: $94
    and e                                         ; $78bd: $a3
    and e                                         ; $78be: $a3

jr_065_78bf:
    dec c                                         ; $78bf: $0d
    add sp, -$6a                                  ; $78c0: $e8 $96
    ld c, c                                       ; $78c2: $49
    dec bc                                        ; $78c3: $0b
    and d                                         ; $78c4: $a2
    ld h, l                                       ; $78c5: $65
    db $dd                                        ; $78c6: $dd
    ldh a, [rSB]                                  ; $78c7: $f0 $01
    adc c                                         ; $78c9: $89
    db $e3                                        ; $78ca: $e3
    ld a, [hl]                                    ; $78cb: $7e
    ld l, [hl]                                    ; $78cc: $6e
    call z, $a330                                 ; $78cd: $cc $30 $a3
    xor b                                         ; $78d0: $a8
    cp $b8                                        ; $78d1: $fe $b8
    sbc a                                         ; $78d3: $9f
    dec de                                        ; $78d4: $1b
    inc sp                                        ; $78d5: $33
    call z, $ea28                                 ; $78d6: $cc $28 $ea
    ld e, $7b                                     ; $78d9: $1e $7b
    db $ec                                        ; $78db: $ec
    or c                                          ; $78dc: $b1
    rst $00                                       ; $78dd: $c7
    ld e, $7b                                     ; $78de: $1e $7b
    db $ec                                        ; $78e0: $ec
    or c                                          ; $78e1: $b1
    pop hl                                        ; $78e2: $e1
    inc bc                                        ; $78e3: $03
    sub a                                         ; $78e4: $97
    jr c, jr_065_78bf                             ; $78e5: $38 $d8

    sub h                                         ; $78e7: $94
    cp [hl]                                       ; $78e8: $be
    ld hl, $5806                                  ; $78e9: $21 $06 $58
    ld e, c                                       ; $78ec: $59
    ret                                           ; $78ed: $c9


    db $f4                                        ; $78ee: $f4
    ld h, e                                       ; $78ef: $63
    inc bc                                        ; $78f0: $03
    sbc e                                         ; $78f1: $9b
    ld h, c                                       ; $78f2: $61
    add $bb                                       ; $78f3: $c6 $bb
    dec d                                         ; $78f5: $15
    rrca                                          ; $78f6: $0f
    ld h, e                                       ; $78f7: $63
    db $d3                                        ; $78f8: $d3
    sbc a                                         ; $78f9: $9f
    dec hl                                        ; $78fa: $2b
    jp c, Jump_000_01fd                           ; $78fb: $da $fd $01

    adc c                                         ; $78fe: $89
    inc [hl]                                      ; $78ff: $34
    halt                                          ; $7900: $76
    ld h, d                                       ; $7901: $62
    ld b, b                                       ; $7902: $40

Call_065_7903:
    and c                                         ; $7903: $a1
    ld a, c                                       ; $7904: $79
    ld c, l                                       ; $7905: $4d
    set 1, [hl]                                   ; $7906: $cb $ce
    sub d                                         ; $7908: $92
    and h                                         ; $7909: $a4
    ld l, l                                       ; $790a: $6d
    ld a, [$db00]                                 ; $790b: $fa $00 $db
    ei                                            ; $790e: $fb
    ld c, a                                       ; $790f: $4f
    inc c                                         ; $7910: $0c
    ld l, $8f                                     ; $7911: $2e $8f
    dec [hl]                                      ; $7913: $35
    ld b, e                                       ; $7914: $43
    sub $c9                                       ; $7915: $d6 $c9
    cp $49                                        ; $7917: $fe $49
    inc a                                         ; $7919: $3c
    sbc e                                         ; $791a: $9b
    ld b, d                                       ; $791b: $42
    or e                                          ; $791c: $b3
    ld sp, $e726                                  ; $791d: $31 $26 $e7
    cp $00                                        ; $7920: $fe $00
    add hl, bc                                    ; $7922: $09
    sbc d                                         ; $7923: $9a
    rst $10                                       ; $7924: $d7
    ld a, [$a224]                                 ; $7925: $fa $24 $a2
    ld c, [hl]                                    ; $7928: $4e
    ld d, a                                       ; $7929: $57
    adc b                                         ; $792a: $88
    ld a, c                                       ; $792b: $79
    xor $0f                                       ; $792c: $ee $0f
    add hl, bc                                    ; $792e: $09
    sbc d                                         ; $792f: $9a
    xor c                                         ; $7930: $a9
    dec d                                         ; $7931: $15
    ret nz                                        ; $7932: $c0

    adc b                                         ; $7933: $88
    add l                                         ; $7934: $85
    ld e, d                                       ; $7935: $5a
    ld l, b                                       ; $7936: $68
    ld d, $4e                                     ; $7937: $16 $4e
    ld e, c                                       ; $7939: $59
    rst $18                                       ; $793a: $df
    ldh a, [$3f]                                  ; $793b: $f0 $3f
    and l                                         ; $793d: $a5
    dec [hl]                                      ; $793e: $35
    and b                                         ; $793f: $a0
    ld c, [hl]                                    ; $7940: $4e
    or d                                          ; $7941: $b2
    sbc [hl]                                      ; $7942: $9e
    ld h, c                                       ; $7943: $61
    sub a                                         ; $7944: $97
    daa                                           ; $7945: $27
    ld a, l                                       ; $7946: $7d
    db $ec                                        ; $7947: $ec
    ld [c], a                                     ; $7948: $e2
    db $fd                                        ; $7949: $fd
    ld bc, $8889                                  ; $794a: $01 $89 $88

jr_065_794d:
    adc d                                         ; $794d: $8a
    rst $10                                       ; $794e: $d7
    sub h                                         ; $794f: $94
    ld b, e                                       ; $7950: $43
    rra                                           ; $7951: $1f
    sbc e                                         ; $7952: $9b
    ld h, c                                       ; $7953: $61
    ld [hl], l                                    ; $7954: $75
    sub d                                         ; $7955: $92
    db $fd                                        ; $7956: $fd
    ld l, c                                       ; $7957: $69
    and $98                                       ; $7958: $e6 $98
    add [hl]                                      ; $795a: $86
    xor h                                         ; $795b: $ac
    ld l, a                                       ; $795c: $6f
    ld l, a                                       ; $795d: $6f
    push bc                                       ; $795e: $c5
    ret nz                                        ; $795f: $c0

    ei                                            ; $7960: $fb
    inc bc                                        ; $7961: $03
    add hl, bc                                    ; $7962: $09
    sbc d                                         ; $7963: $9a
    rst $00                                       ; $7964: $c7
    dec [hl]                                      ; $7965: $35
    dec bc                                        ; $7966: $0b
    and a                                         ; $7967: $a7
    sub b                                         ; $7968: $90
    di                                            ; $7969: $f3
    cp a                                          ; $796a: $bf
    adc c                                         ; $796b: $89
    inc c                                         ; $796c: $0c
    db $d3                                        ; $796d: $d3
    sub h                                         ; $796e: $94
    ld b, e                                       ; $796f: $43
    inc hl                                        ; $7970: $23
    ld h, h                                       ; $7971: $64
    rst $38                                       ; $7972: $ff
    adc c                                         ; $7973: $89
    ld a, [$53d2]                                 ; $7974: $fa $d2 $53
    rst $28                                       ; $7977: $ef
    ei                                            ; $7978: $fb
    ld l, c                                       ; $7979: $69
    ld c, l                                       ; $797a: $4d
    cp c                                          ; $797b: $b9
    add a                                         ; $797c: $87
    inc a                                         ; $797d: $3c
    rst $30                                       ; $797e: $f7
    rlca                                          ; $797f: $07
    ld [c], a                                     ; $7980: $e2
    ld h, c                                       ; $7981: $61
    ld l, h                                       ; $7982: $6c
    ld [$6681], a                                 ; $7983: $ea $81 $66
    push bc                                       ; $7986: $c5
    or d                                          ; $7987: $b2
    ret nz                                        ; $7988: $c0

    db $f4                                        ; $7989: $f4
    cp $00                                        ; $798a: $fe $00
    add hl, bc                                    ; $798c: $09
    sbc d                                         ; $798d: $9a
    rst $00                                       ; $798e: $c7
    sub l                                         ; $798f: $95
    ld e, l                                       ; $7990: $5d
    ld h, b                                       ; $7991: $60
    push de                                       ; $7992: $d5
    pop af                                        ; $7993: $f1
    jr jr_065_79c0                                ; $7994: $18 $2a

    sbc c                                         ; $7996: $99
    ld a, [hl]                                    ; $7997: $7e
    xor h                                         ; $7998: $ac
    ld c, a                                       ; $7999: $4f
    ld h, e                                       ; $799a: $63
    and c                                         ; $799b: $a1
    sbc c                                         ; $799c: $99
    ld d, [hl]                                    ; $799d: $56
    add [hl]                                      ; $799e: $86
    rst $00                                       ; $799f: $c7
    sbc b                                         ; $79a0: $98
    add hl, de                                    ; $79a1: $19
    and [hl]                                      ; $79a2: $a6
    add hl, hl                                    ; $79a3: $29
    rst $00                                       ; $79a4: $c7
    jr jr_065_794d                                ; $79a5: $18 $a6

    rst $38                                       ; $79a7: $ff
    ld c, b                                       ; $79a8: $48
    xor h                                         ; $79a9: $ac
    and a                                         ; $79aa: $a7
    sub l                                         ; $79ab: $95
    add l                                         ; $79ac: $85
    cp $b3                                        ; $79ad: $fe $b3
    ldh a, [$fe]                                  ; $79af: $f0 $fe
    nop                                           ; $79b1: $00
    add hl, bc                                    ; $79b2: $09
    sbc d                                         ; $79b3: $9a
    and c                                         ; $79b4: $a1
    and l                                         ; $79b5: $a5
    ld a, [hl+]                                   ; $79b6: $2a
    ld h, d                                       ; $79b7: $62
    ld e, $ad                                     ; $79b8: $1e $ad
    ld a, [bc]                                    ; $79ba: $0a
    and a                                         ; $79bb: $a7
    rst $38                                       ; $79bc: $ff
    ld b, h                                       ; $79bd: $44
    rst $28                                       ; $79be: $ef
    ld e, b                                       ; $79bf: $58

jr_065_79c0:
    ld e, [hl]                                    ; $79c0: $5e
    ld e, e                                       ; $79c1: $5b
    pop hl                                        ; $79c2: $e1
    jp hl                                         ; $79c3: $e9


    add [hl]                                      ; $79c4: $86
    rrca                                          ; $79c5: $0f
    db $db                                        ; $79c6: $db
    sbc a                                         ; $79c7: $9f
    xor b                                         ; $79c8: $a8
    ld d, c                                       ; $79c9: $51
    jr c, jr_065_7a29                             ; $79ca: $38 $5d

    ldh a, [$a8]                                  ; $79cc: $f0 $a8
    push af                                       ; $79ce: $f5
    rst $00                                       ; $79cf: $c7
    ld a, [$c93f]                                 ; $79d0: $fa $3f $c9
    add [hl]                                      ; $79d3: $86
    xor c                                         ; $79d4: $a9
    add h                                         ; $79d5: $84
    db $eb                                        ; $79d6: $eb
    ld c, b                                       ; $79d7: $48
    adc a                                         ; $79d8: $8f
    call $0f86                                    ; $79d9: $cd $86 $0f
    db $db                                        ; $79dc: $db
    add h                                         ; $79dd: $84
    db $d3                                        ; $79de: $d3
    adc h                                         ; $79df: $8c
    ld b, d                                       ; $79e0: $42
    ld d, e                                       ; $79e1: $53
    ld c, $eb                                     ; $79e2: $0e $eb
    xor c                                         ; $79e4: $a9
    dec c                                         ; $79e5: $0d
    db $d3                                        ; $79e6: $d3
    sbc a                                         ; $79e7: $9f
    ld h, [hl]                                    ; $79e8: $66
    cpl                                           ; $79e9: $2f
    ld h, $a7                                     ; $79ea: $26 $a7
    ld h, c                                       ; $79ec: $61
    or h                                          ; $79ed: $b4
    ld h, c                                       ; $79ee: $61
    ld a, [hl]                                    ; $79ef: $7e
    ld l, b                                       ; $79f0: $68
    ld d, e                                       ; $79f1: $53
    adc [hl]                                      ; $79f2: $8e
    ld sp, $7d4c                                  ; $79f3: $31 $4c $7d
    xor d                                         ; $79f6: $aa
    jp nc, $36ee                                  ; $79f7: $d2 $ee $36

    ld [hl], c                                    ; $79fa: $71
    xor h                                         ; $79fb: $ac
    ld e, [hl]                                    ; $79fc: $5e
    ld l, $b4                                     ; $79fd: $2e $b4
    add $a7                                       ; $79ff: $c6 $a7
    ld a, [hl-]                                   ; $7a01: $3a
    and d                                         ; $7a02: $a2
    ld c, [hl]                                    ; $7a03: $4e
    rst $08                                       ; $7a04: $cf
    inc sp                                        ; $7a05: $33
    add h                                         ; $7a06: $84
    and d                                         ; $7a07: $a2
    ld [hl], b                                    ; $7a08: $70
    call $9e94                                    ; $7a09: $cd $94 $9e
    ld [hl], l                                    ; $7a0c: $75
    or d                                          ; $7a0d: $b2
    dec hl                                        ; $7a0e: $2b
    call nz, Call_000_3900                        ; $7a0f: $c4 $00 $39
    jp c, $3f30                                   ; $7a12: $da $30 $3f

    or h                                          ; $7a15: $b4
    sub c                                         ; $7a16: $91
    add l                                         ; $7a17: $85
    cp $b3                                        ; $7a18: $fe $b3
    ldh a, [$fe]                                  ; $7a1a: $f0 $fe
    nop                                           ; $7a1c: $00
    add hl, bc                                    ; $7a1d: $09
    sbc d                                         ; $7a1e: $9a
    rst $10                                       ; $7a1f: $d7
    ld a, [hl+]                                   ; $7a20: $2a
    db $dd                                        ; $7a21: $dd
    bit 2, e                                      ; $7a22: $cb $53
    ld a, d                                       ; $7a24: $7a
    add sp, $65                                   ; $7a25: $e8 $65
    sbc b                                         ; $7a27: $98
    ei                                            ; $7a28: $fb

jr_065_7a29:
    inc bc                                        ; $7a29: $03
    dec sp                                        ; $7a2a: $3b
    add sp, -$7f                                  ; $7a2b: $e8 $81
    inc d                                         ; $7a2d: $14
    push af                                       ; $7a2e: $f5
    rra                                           ; $7a2f: $1f
    ld e, c                                       ; $7a30: $59
    ret                                           ; $7a31: $c9


    db $f4                                        ; $7a32: $f4
    ld h, e                                       ; $7a33: $63
    rst $38                                       ; $7a34: $ff
    inc h                                         ; $7a35: $24
    jp nc, Jump_000_2b6b                          ; $7a36: $d2 $6b $2b

    jp z, Jump_000_2ed1                           ; $7a39: $ca $d1 $2e

    ld l, e                                       ; $7a3c: $6b
    sub l                                         ; $7a3d: $95
    ld a, h                                       ; $7a3e: $7c
    jp c, $df00                                   ; $7a3f: $da $00 $df

    and b                                         ; $7a42: $a0
    jp z, $03fb                                   ; $7a43: $ca $fb $03

    ld d, a                                       ; $7a46: $57
    inc a                                         ; $7a47: $3c
    call Call_065_54e8                            ; $7a48: $cd $e8 $54
    jp nz, $e955                                  ; $7a4b: $c2 $55 $e9

    rst $08                                       ; $7a4e: $cf
    and [hl]                                      ; $7a4f: $a6
    rrca                                          ; $7a50: $0f
    db $db                                        ; $7a51: $db
    add h                                         ; $7a52: $84
    inc hl                                        ; $7a53: $23
    ld [$8942], a                                 ; $7a54: $ea $42 $89
    sbc b                                         ; $7a57: $98
    ld b, a                                       ; $7a58: $47
    call nc, $9c28                                ; $7a59: $d4 $28 $9c
    xor [hl]                                      ; $7a5c: $ae
    sbc $fd                                       ; $7a5d: $de $fd
    ld bc, $93db                                  ; $7a5f: $01 $db $93
    ld [hl], a                                    ; $7a62: $77
    cp e                                          ; $7a63: $bb
    db $dd                                        ; $7a64: $dd
    ld h, e                                       ; $7a65: $63
    cpl                                           ; $7a66: $2f
    call Call_065_7730                            ; $7a67: $cd $30 $77
    ld a, e                                       ; $7a6a: $7b
    adc c                                         ; $7a6b: $89
    add e                                         ; $7a6c: $83
    xor h                                         ; $7a6d: $ac
    ld b, h                                       ; $7a6e: $44
    inc bc                                        ; $7a6f: $03
    adc h                                         ; $7a70: $8c
    ld c, l                                       ; $7a71: $4d
    add hl, sp                                    ; $7a72: $39
    call nc, $51a7                                ; $7a73: $d4 $a7 $51
    dec d                                         ; $7a76: $15
    dec c                                         ; $7a77: $0d
    xor b                                         ; $7a78: $a8
    ld c, a                                       ; $7a79: $4f
    ld d, l                                       ; $7a7a: $55
    ret nc                                        ; $7a7b: $d0

    xor $0f                                       ; $7a7c: $ee $0f
    db $db                                        ; $7a7e: $db
    db $dd                                        ; $7a7f: $dd
    ld [$6519], a                                 ; $7a80: $ea $19 $65
    sbc a                                         ; $7a83: $9f
    and $d9                                       ; $7a84: $e6 $d9
    call nc, $2f8a                                ; $7a86: $d4 $8a $2f
    ld l, c                                       ; $7a89: $69
    or a                                          ; $7a8a: $b7
    ld c, [hl]                                    ; $7a8b: $4e

Call_065_7a8c:
    sub [hl]                                      ; $7a8c: $96
    xor d                                         ; $7a8d: $aa
    ld e, h                                       ; $7a8e: $5c
    ld a, [c]                                     ; $7a8f: $f2
    cp b                                          ; $7a90: $b8
    ld c, [hl]                                    ; $7a91: $4e
    rst $08                                       ; $7a92: $cf
    or a                                          ; $7a93: $b7
    rla                                           ; $7a94: $17
    db $d3                                        ; $7a95: $d3
    sub e                                         ; $7a96: $93
    or e                                          ; $7a97: $b3
    ld l, [hl]                                    ; $7a98: $6e
    ld l, b                                       ; $7a99: $68
    cpl                                           ; $7a9a: $2f
    ld a, [hl]                                    ; $7a9b: $7e
    adc l                                         ; $7a9c: $8d
    db $d3                                        ; $7a9d: $d3
    ld b, h                                       ; $7a9e: $44
    dec de                                        ; $7a9f: $1b
    cpl                                           ; $7aa0: $2f
    ld [hl-], a                                   ; $7aa1: $32
    ld a, e                                       ; $7aa2: $7b
    xor $5b                                       ; $7aa3: $ee $5b
    or e                                          ; $7aa5: $b3
    scf                                           ; $7aa6: $37
    rst $30                                       ; $7aa7: $f7
    rlca                                          ; $7aa8: $07

jr_065_7aa9:
    sub a                                         ; $7aa9: $97
    jr c, @-$36                                   ; $7aaa: $38 $c8

    ld a, d                                       ; $7aac: $7a
    rst $20                                       ; $7aad: $e7
    ld l, l                                       ; $7aae: $6d
    ld a, [$db00]                                 ; $7aaf: $fa $00 $db
    ld e, [hl]                                    ; $7ab2: $5e
    ld c, h                                       ; $7ab3: $4c
    cp e                                          ; $7ab4: $bb
    ld [hl], l                                    ; $7ab5: $75
    or d                                          ; $7ab6: $b2
    ld c, d                                       ; $7ab7: $4a
    rrca                                          ; $7ab8: $0f
    xor $36                                       ; $7ab9: $ee $36
    sub c                                         ; $7abb: $91
    add $22                                       ; $7abc: $c6 $22
    ld h, [hl]                                    ; $7abe: $66
    and e                                         ; $7abf: $a3
    dec d                                         ; $7ac0: $15
    ld d, l                                       ; $7ac1: $55
    ld a, $2b                                     ; $7ac2: $3e $2b
    ld d, l                                       ; $7ac4: $55
    sbc a                                         ; $7ac5: $9f
    ld l, h                                       ; $7ac6: $6c
    ret nz                                        ; $7ac7: $c0

    ld a, [bc]                                    ; $7ac8: $0a
    ld d, l                                       ; $7ac9: $55
    ld e, b                                       ; $7aca: $58
    ld a, l                                       ; $7acb: $7d
    jp $94ff                                      ; $7acc: $c3 $ff $94


    ld [hl], l                                    ; $7acf: $75
    sub d                                         ; $7ad0: $92
    sub l                                         ; $7ad1: $95
    ld c, h                                       ; $7ad2: $4c
    ccf                                           ; $7ad3: $3f
    ld [hl], $22                                  ; $7ad4: $36 $22
    ld l, l                                       ; $7ad6: $6d
    xor h                                         ; $7ad7: $ac
    ld [hl], h                                    ; $7ad8: $74
    cpl                                           ; $7ad9: $2f
    ld c, a                                       ; $7ada: $4f
    db $fd                                        ; $7adb: $fd
    add hl, bc                                    ; $7adc: $09
    or b                                          ; $7add: $b0
    ld d, c                                       ; $7ade: $51
    sbc $1f                                       ; $7adf: $de $1f
    db $db                                        ; $7ae1: $db
    sbc e                                         ; $7ae2: $9b
    ld [hl], d                                    ; $7ae3: $72
    add sp, -$46                                  ; $7ae4: $e8 $ba
    ld c, [hl]                                    ; $7ae6: $4e
    inc de                                        ; $7ae7: $13
    ld l, l                                       ; $7ae8: $6d
    cp h                                          ; $7ae9: $bc
    ret z                                         ; $7aea: $c8

    db $ec                                        ; $7aeb: $ec
    cp c                                          ; $7aec: $b9
    ld l, a                                       ; $7aed: $6f
    call $6cde                                    ; $7aee: $cd $de $6c
    ld a, [$6700]                                 ; $7af1: $fa $00 $67
    ld [hl], h                                    ; $7af4: $74
    ld a, [hl+]                                   ; $7af5: $2a
    ld h, b                                       ; $7af6: $60
    inc l                                         ; $7af7: $2c
    ld [hl], d                                    ; $7af8: $72
    ld l, c                                       ; $7af9: $69
    jr jr_065_7aa9                                ; $7afa: $18 $ad

    rla                                           ; $7afc: $17
    cpl                                           ; $7afd: $2f
    cp a                                          ; $7afe: $bf
    rra                                           ; $7aff: $1f
    rst $08                                       ; $7b00: $cf
    ld b, [hl]                                    ; $7b01: $46
    adc e                                         ; $7b02: $8b
    ld a, d                                       ; $7b03: $7a
    call z, $a609                                 ; $7b04: $cc $09 $a6
    sbc $ed                                       ; $7b07: $de $ed
    ld h, l                                       ; $7b09: $65
    sub b                                         ; $7b0a: $90
    adc l                                         ; $7b0b: $8d
    sub e                                         ; $7b0c: $93
    ld [hl], a                                    ; $7b0d: $77
    ei                                            ; $7b0e: $fb
    rra                                           ; $7b0f: $1f
    or l                                          ; $7b10: $b5
    ld bc, $4c95                                  ; $7b11: $01 $95 $4c
    ccf                                           ; $7b14: $3f
    ld [hl], $a0                                  ; $7b15: $36 $a0
    ld a, c                                       ; $7b17: $79
    jp nz, Jump_000_2a74                          ; $7b18: $c2 $74 $2a

    ld e, l                                       ; $7b1b: $5d
    inc c                                         ; $7b1c: $0c
    ld d, e                                       ; $7b1d: $53
    inc [hl]                                      ; $7b1e: $34
    ld d, e                                       ; $7b1f: $53
    ld a, d                                       ; $7b20: $7a
    sub $c9                                       ; $7b21: $d6 $c9
    ld h, [hl]                                    ; $7b23: $66
    db $e3                                        ; $7b24: $e3
    xor [hl]                                      ; $7b25: $ae
    ld c, d                                       ; $7b26: $4a
    rst $30                                       ; $7b27: $f7
    ld [hl-], a                                   ; $7b28: $32
    or l                                          ; $7b29: $b5
    rst $38                                       ; $7b2a: $ff
    inc a                                         ; $7b2b: $3c
    and l                                         ; $7b2c: $a5
    ld d, [hl]                                    ; $7b2d: $56
    rst $00                                       ; $7b2e: $c7
    ld h, e                                       ; $7b2f: $63
    add sp, -$6a                                  ; $7b30: $e8 $96
    ld c, c                                       ; $7b32: $49
    dec bc                                        ; $7b33: $0b
    and d                                         ; $7b34: $a2
    ld h, l                                       ; $7b35: $65
    cp l                                          ; $7b36: $bd
    ccf                                           ; $7b37: $3f
    db $db                                        ; $7b38: $db
    sub a                                         ; $7b39: $97
    dec [hl]                                      ; $7b3a: $35
    ld d, c                                       ; $7b3b: $51
    ld [hl], l                                    ; $7b3c: $75
    ld e, h                                       ; $7b3d: $5c
    and a                                         ; $7b3e: $a7
    sub a                                         ; $7b3f: $97
    ld c, [hl]                                    ; $7b40: $4e
    db $ec                                        ; $7b41: $ec
    sub l                                         ; $7b42: $95
    and b                                         ; $7b43: $a0
    ld l, $d8                                     ; $7b44: $2e $d8
    ld a, c                                       ; $7b46: $79
    or a                                          ; $7b47: $b7
    sub a                                         ; $7b48: $97
    cp c                                          ; $7b49: $b9
    xor [hl]                                      ; $7b4a: $ae
    db $d3                                        ; $7b4b: $d3
    ld c, d                                       ; $7b4c: $4a
    xor b                                         ; $7b4d: $a8
    sbc h                                         ; $7b4e: $9c
    ld c, [hl]                                    ; $7b4f: $4e
    or a                                          ; $7b50: $b7
    ret nc                                        ; $7b51: $d0

    ld l, h                                       ; $7b52: $6c
    ld h, a                                       ; $7b53: $67
    inc de                                        ; $7b54: $13
    daa                                           ; $7b55: $27
    ld h, a                                       ; $7b56: $67
    ret c                                         ; $7b57: $d8

    and [hl]                                      ; $7b58: $a6
    rrca                                          ; $7b59: $0f
    dec sp                                        ; $7b5a: $3b
    add $89                                       ; $7b5b: $c6 $89
    xor d                                         ; $7b5d: $aa
    ld c, a                                       ; $7b5e: $4f
    sbc $1f                                       ; $7b5f: $de $1f
    db $db                                        ; $7b61: $db
    sub e                                         ; $7b62: $93
    rst $30                                       ; $7b63: $f7
    ld a, l                                       ; $7b64: $7d
    ei                                            ; $7b65: $fb
    adc b                                         ; $7b66: $88
    adc d                                         ; $7b67: $8a
    rst $10                                       ; $7b68: $d7
    sub h                                         ; $7b69: $94
    ld b, e                                       ; $7b6a: $43
    ld h, c                                       ; $7b6b: $61
    xor h                                         ; $7b6c: $ac
    db $e4                                        ; $7b6d: $e4
    db $d3                                        ; $7b6e: $d3
    ld a, [hl-]                                   ; $7b6f: $3a
    ret                                           ; $7b70: $c9


    ld a, [$818f]                                 ; $7b71: $fa $8f $81
    dec c                                         ; $7b74: $0d
    and e                                         ; $7b75: $a3
    sub l                                         ; $7b76: $95
    ld [hl], b                                    ; $7b77: $70
    jp c, Jump_065_5267                           ; $7b78: $da $67 $52

    jr c, jr_065_7bf7                             ; $7b7b: $38 $7a

    ld a, a                                       ; $7b7d: $7f
    ld [c], a                                     ; $7b7e: $e2
    ld c, e                                       ; $7b7f: $4b
    jp c, $93ad                                   ; $7b80: $da $ad $93

    ld e, l                                       ; $7b83: $5d
    dec a                                         ; $7b84: $3d
    ld d, a                                       ; $7b85: $57
    daa                                           ; $7b86: $27
    xor e                                         ; $7b87: $ab
    db $f4                                        ; $7b88: $f4

jr_065_7b89:
    ld h, a                                       ; $7b89: $67
    ld d, e                                       ; $7b8a: $53
    ld a, e                                       ; $7b8b: $7b
    cp c                                          ; $7b8c: $b9
    xor h                                         ; $7b8d: $ac
    pop de                                        ; $7b8e: $d1
    rst $20                                       ; $7b8f: $e7
    xor [hl]                                      ; $7b90: $ae
    cp $49                                        ; $7b91: $fe $49
    ld c, d                                       ; $7b93: $4a
    add [hl]                                      ; $7b94: $86
    jp hl                                         ; $7b95: $e9


    ld [hl], $ac                                  ; $7b96: $36 $ac
    sbc $b2                                       ; $7b98: $de $b2
    and b                                         ; $7b9a: $a0
    ld a, $2c                                     ; $7b9b: $3e $2c
    ret nz                                        ; $7b9d: $c0

    ld [hl], l                                    ; $7b9e: $75
    ld a, [de]                                    ; $7b9f: $1a
    or b                                          ; $7ba0: $b0
    ldh [$fe], a                                  ; $7ba1: $e0 $fe
    nop                                           ; $7ba3: $00
    db $db                                        ; $7ba4: $db
    add h                                         ; $7ba5: $84
    ld [hl], e                                    ; $7ba6: $73
    ld a, a                                       ; $7ba7: $7f
    ld [c], a                                     ; $7ba8: $e2
    add hl, hl                                    ; $7ba9: $29
    rst $30                                       ; $7baa: $f7
    ld a, [de]                                    ; $7bab: $1a
    add l                                         ; $7bac: $85
    ld d, e                                       ; $7bad: $53
    ld l, b                                       ; $7bae: $68
    ld e, [hl]                                    ; $7baf: $5e
    ld l, e                                       ; $7bb0: $6b
    ld a, h                                       ; $7bb1: $7c
    ld sp, $d6ed                                  ; $7bb2: $31 $ed $d6
    ret                                           ; $7bb5: $c9


    ld [hl], d                                    ; $7bb6: $72
    ld e, c                                       ; $7bb7: $59
    daa                                           ; $7bb8: $27
    dec de                                        ; $7bb9: $1b
    ret nc                                        ; $7bba: $d0

    cp b                                          ; $7bbb: $b8
    cp e                                          ; $7bbc: $bb
    ld d, $0d                                     ; $7bbd: $16 $0d
    ld d, e                                       ; $7bbf: $53
    add hl, bc                                    ; $7bc0: $09
    ld d, a                                       ; $7bc1: $57
    ld h, e                                       ; $7bc2: $63
    ld e, $51                                     ; $7bc3: $1e $51
    and a                                         ; $7bc5: $a7
    dec sp                                        ; $7bc6: $3b
    ld a, [hl]                                    ; $7bc7: $7e
    ld a, d                                       ; $7bc8: $7a
    inc a                                         ; $7bc9: $3c
    jr nc, jr_065_7b89                            ; $7bca: $30 $bd

    ccf                                           ; $7bcc: $3f
    rst $10                                       ; $7bcd: $d7
    db $ec                                        ; $7bce: $ec
    jp c, Jump_065_6bb5                           ; $7bcf: $da $b5 $6b

    rst $10                                       ; $7bd2: $d7
    xor [hl]                                      ; $7bd3: $ae
    ei                                            ; $7bd4: $fb
    cp [hl]                                       ; $7bd5: $be
    rst $28                                       ; $7bd6: $ef
    ei                                            ; $7bd7: $fb
    inc bc                                        ; $7bd8: $03
    dec sp                                        ; $7bd9: $3b
    add $95                                       ; $7bda: $c6 $95
    db $dd                                        ; $7bdc: $dd
    ld [bc], a                                    ; $7bdd: $02
    sub e                                         ; $7bde: $93
    ld l, a                                       ; $7bdf: $6f
    ld [hl+], a                                   ; $7be0: $22
    ld a, d                                       ; $7be1: $7a
    cp [hl]                                       ; $7be2: $be
    ld sp, $61a6                                  ; $7be3: $31 $a6 $61
    and d                                         ; $7be6: $a2
    and [hl]                                      ; $7be7: $a6
    inc e                                         ; $7be8: $1c
    ld h, h                                       ; $7be9: $64
    ld d, l                                       ; $7bea: $55
    jr c, jr_065_7c4a                             ; $7beb: $38 $5d

jr_065_7bed:
    call $a07f                                    ; $7bed: $cd $7f $a0
    ld l, [hl]                                    ; $7bf0: $6e
    ld a, [$9700]                                 ; $7bf1: $fa $00 $97
    ld c, [hl]                                    ; $7bf4: $4e
    db $ec                                        ; $7bf5: $ec
    sub l                                         ; $7bf6: $95

jr_065_7bf7:
    and b                                         ; $7bf7: $a0
    ld l, $d8                                     ; $7bf8: $2e $d8
    ld a, c                                       ; $7bfa: $79
    ld a, a                                       ; $7bfb: $7f
    ld e, e                                       ; $7bfc: $5b
    ld l, b                                       ; $7bfd: $68
    or [hl]                                       ; $7bfe: $b6
    or e                                          ; $7bff: $b3
    adc c                                         ; $7c00: $89
    sub e                                         ; $7c01: $93
    inc sp                                        ; $7c02: $33
    db $ec                                        ; $7c03: $ec
    cp $00                                        ; $7c04: $fe $00
    ld [c], a                                     ; $7c06: $e2
    push de                                       ; $7c07: $d5
    ld [hl], l                                    ; $7c08: $75
    or $66                                        ; $7c09: $f6 $66
    ld d, e                                       ; $7c0b: $53
    cpl                                           ; $7c0c: $2f
    ld a, [hl]                                    ; $7c0d: $7e
    call Call_065_4c2e                            ; $7c0e: $cd $2e $4c
    ld [hl], l                                    ; $7c11: $75
    inc a                                         ; $7c12: $3c
    add [hl]                                      ; $7c13: $86
    and $77                                       ; $7c14: $e6 $77
    rst $30                                       ; $7c16: $f7
    jp nz, $2eb5                                  ; $7c17: $c2 $b5 $2e

    adc h                                         ; $7c1a: $8c
    db $eb                                        ; $7c1b: $eb
    xor c                                         ; $7c1c: $a9
    push af                                       ; $7c1d: $f5
    ld [c], a                                     ; $7c1e: $e2
    push hl                                       ; $7c1f: $e5
    or a                                          ; $7c20: $b7
    ld a, [hl]                                    ; $7c21: $7e
    ld [hl], h                                    ; $7c22: $74
    ld d, e                                       ; $7c23: $53
    rst $08                                       ; $7c24: $cf
    rra                                           ; $7c25: $1f
    call Call_065_515c                            ; $7c26: $cd $5c $51
    dec de                                        ; $7c29: $1b
    ld d, b                                       ; $7c2a: $50
    ld a, [$1886]                                 ; $7c2b: $fa $86 $18
    ld h, b                                       ; $7c2e: $60
    ld [hl], l                                    ; $7c2f: $75
    ld [hl], d                                    ; $7c30: $72
    ld d, e                                       ; $7c31: $53
    push bc                                       ; $7c32: $c5
    ld d, e                                       ; $7c33: $53
    xor $15                                       ; $7c34: $ee $15
    sbc d                                         ; $7c36: $9a
    rst $10                                       ; $7c37: $d7
    ld a, [$9c8f]                                 ; $7c38: $fa $8f $9c
    ld a, [hl+]                                   ; $7c3b: $2a
    cp d                                          ; $7c3c: $ba
    jr nc, jr_065_7bed                            ; $7c3d: $30 $ae

    ld h, a                                       ; $7c3f: $67
    and a                                         ; $7c40: $a7
    ld d, a                                       ; $7c41: $57
    ret nz                                        ; $7c42: $c0

    jp nz, Jump_065_6f93                          ; $7c43: $c2 $93 $6f

    ld e, c                                       ; $7c46: $59
    sbc $38                                       ; $7c47: $de $38
    cp l                                          ; $7c49: $bd

jr_065_7c4a:
    db $db                                        ; $7c4a: $db
    ld l, l                                       ; $7c4b: $6d
    cpl                                           ; $7c4c: $2f
    and [hl]                                      ; $7c4d: $a6
    db $dd                                        ; $7c4e: $dd
    ld a, [hl-]                                   ; $7c4f: $3a
    reti                                          ; $7c50: $d9


    ret z                                         ; $7c51: $c8

    jp z, $9317                                   ; $7c52: $ca $17 $93

    xor h                                         ; $7c55: $ac
    sub a                                         ; $7c56: $97
    ld [hl], d                                    ; $7c57: $72
    or a                                          ; $7c58: $b7
    push hl                                       ; $7c59: $e5
    or c                                          ; $7c5a: $b1
    db $eb                                        ; $7c5b: $eb
    ld a, [hl+]                                   ; $7c5c: $2a
    rst $10                                       ; $7c5d: $d7
    jp nc, $1fef                                  ; $7c5e: $d2 $ef $1f

    ld d, c                                       ; $7c61: $51
    dec h                                         ; $7c62: $25
    or l                                          ; $7c63: $b5
    ld [hl], b                                    ; $7c64: $70
    dec d                                         ; $7c65: $15
    or b                                          ; $7c66: $b0
    sub $7f                                       ; $7c67: $d6 $7f
    and d                                         ; $7c69: $a2
    ld [hl+], a                                   ; $7c6a: $22
    db $ed                                        ; $7c6b: $ed
    ld e, [hl]                                    ; $7c6c: $5e
    jp hl                                         ; $7c6d: $e9


    dec de                                        ; $7c6e: $1b
    ld h, d                                       ; $7c6f: $62
    add b                                         ; $7c70: $80
    dec [hl]                                      ; $7c71: $35
    and b                                         ; $7c72: $a0
    rst $38                                       ; $7c73: $ff
    ld e, b                                       ; $7c74: $58
    di                                            ; $7c75: $f3
    add h                                         ; $7c76: $84
    pop de                                        ; $7c77: $d1
    adc [hl]                                      ; $7c78: $8e
    halt                                          ; $7c79: $76
    ld a, c                                       ; $7c7a: $79
    dec hl                                        ; $7c7b: $2b
    dec de                                        ; $7c7c: $1b
    ld l, l                                       ; $7c7d: $6d
    ld b, b                                       ; $7c7e: $40
    and c                                         ; $7c7f: $a1
    reti                                          ; $7c80: $d9


    add l                                         ; $7c81: $85
    cp c                                          ; $7c82: $b9
    db $db                                        ; $7c83: $db
    ld [hl], e                                    ; $7c84: $73
    jr nz, jr_065_7ccc                            ; $7c85: $20 $45

    dec [hl]                                      ; $7c87: $35
    and h                                         ; $7c88: $a4
    dec c                                         ; $7c89: $0d
    xor d                                         ; $7c8a: $aa
    sub b                                         ; $7c8b: $90
    and e                                         ; $7c8c: $a3
    db $dd                                        ; $7c8d: $dd
    cp a                                          ; $7c8e: $bf
    ccf                                           ; $7c8f: $3f
    rst $10                                       ; $7c90: $d7
    or e                                          ; $7c91: $b3
    sbc h                                         ; $7c92: $9c
    ld a, [hl+]                                   ; $7c93: $2a
    db $fd                                        ; $7c94: $fd
    cp c                                          ; $7c95: $b9
    ld e, e                                       ; $7c96: $5b
    pop af                                        ; $7c97: $f1

jr_065_7c98:
    nop                                           ; $7c98: $00
    and a                                         ; $7c99: $a7
    rst $30                                       ; $7c9a: $f7
    rlca                                          ; $7c9b: $07
    add hl, bc                                    ; $7c9c: $09
    ld [$a6c3], a                                 ; $7c9d: $ea $c3 $a6
    ld d, c                                       ; $7ca0: $51
    jr c, jr_065_7c98                             ; $7ca1: $38 $f5

    cp [hl]                                       ; $7ca3: $be
    sbc a                                         ; $7ca4: $9f
    sub $c8                                       ; $7ca5: $d6 $c8
    cp $0b                                        ; $7ca7: $fe $0b
    ld d, l                                       ; $7ca9: $55
    pop de                                        ; $7caa: $d1
    add b                                         ; $7cab: $80
    add l                                         ; $7cac: $85
    ld [hl], a                                    ; $7cad: $77
    ld a, e                                       ; $7cae: $7b
    cp $68                                        ; $7caf: $fe $68
    ld h, [hl]                                    ; $7cb1: $66
    inc bc                                        ; $7cb2: $03
    inc h                                         ; $7cb3: $24
    push af                                       ; $7cb4: $f5
    ld sp, $c34c                                  ; $7cb5: $31 $4c $c3
    ld d, h                                       ; $7cb8: $54
    ld b, a                                       ; $7cb9: $47
    ld [hl], $b0                                  ; $7cba: $36 $b0
    cp [hl]                                       ; $7cbc: $be
    db $ed                                        ; $7cbd: $ed
    xor $db                                       ; $7cbe: $ee $db
    ld h, e                                       ; $7cc0: $63
    ld d, a                                       ; $7cc1: $57
    or e                                          ; $7cc2: $b3
    db $eb                                        ; $7cc3: $eb
    cp $00                                        ; $7cc4: $fe $00
    ld [c], a                                     ; $7cc6: $e2
    add hl, hl                                    ; $7cc7: $29
    rst $30                                       ; $7cc8: $f7
    sbc d                                         ; $7cc9: $9a
    ld e, h                                       ; $7cca: $5c
    ld l, e                                       ; $7ccb: $6b

jr_065_7ccc:
    sbc b                                         ; $7ccc: $98
    rra                                           ; $7ccd: $1f
    cp d                                          ; $7cce: $ba
    and c                                         ; $7ccf: $a1
    db $dd                                        ; $7cd0: $dd
    ld b, c                                       ; $7cd1: $41
    ld a, a                                       ; $7cd2: $7f
    or h                                          ; $7cd3: $b4
    ld bc, $9cdd                                  ; $7cd4: $01 $dd $9c
    sbc h                                         ; $7cd7: $9c
    ld a, a                                       ; $7cd8: $7f
    ld d, $66                                     ; $7cd9: $16 $66
    adc b                                         ; $7cdb: $88
    sbc d                                         ; $7cdc: $9a
    ld c, b                                       ; $7cdd: $48
    call $9eeb                                    ; $7cde: $cd $eb $9e
    ld [hl], $a0                                  ; $7ce1: $36 $a0
    ld [c], a                                     ; $7ce3: $e2

jr_065_7ce4:
    sbc [hl]                                      ; $7ce4: $9e
    db $dd                                        ; $7ce5: $dd
    dec a                                         ; $7ce6: $3d
    ld h, e                                       ; $7ce7: $63
    inc d                                         ; $7ce8: $14
    push af                                       ; $7ce9: $f5
    inc a                                         ; $7cea: $3c
    inc a                                         ; $7ceb: $3c
    ld bc, $4307                                  ; $7cec: $01 $07 $43
    dec de                                        ; $7cef: $1b
    ret nc                                        ; $7cf0: $d0

    sla [hl]                                      ; $7cf1: $cb $26
    adc h                                         ; $7cf3: $8c
    halt                                          ; $7cf4: $76
    or h                                          ; $7cf5: $b4
    dec sp                                        ; $7cf6: $3b
    add sp, $19                                   ; $7cf7: $e8 $19
    add e                                         ; $7cf9: $83
    ld [hl], $b0                                  ; $7cfa: $36 $b0
    rst $20                                       ; $7cfc: $e7
    ret nz                                        ; $7cfd: $c0

    ld a, [c]                                     ; $7cfe: $f2
    ld b, e                                       ; $7cff: $43
    rst $08                                       ; $7d00: $cf
    sbc c                                         ; $7d01: $99
    sbc h                                         ; $7d02: $9c
    adc e                                         ; $7d03: $8b
    ld c, d                                       ; $7d04: $4a
    rst $30                                       ; $7d05: $f7
    ld a, [c]                                     ; $7d06: $f2
    ld d, h                                       ; $7d07: $54
    ld a, [c]                                     ; $7d08: $f2
    jp hl                                         ; $7d09: $e9


    add [hl]                                      ; $7d0a: $86
    rrca                                          ; $7d0b: $0f
    db $db                                        ; $7d0c: $db
    sub e                                         ; $7d0d: $93
    dec de                                        ; $7d0e: $1b
    jp c, $8584                                   ; $7d0f: $da $84 $85

    call $dd90                                    ; $7d12: $cd $90 $dd
    ld b, c                                       ; $7d15: $41
    ld a, a                                       ; $7d16: $7f
    or h                                          ; $7d17: $b4
    ld bc, $9cdd                                  ; $7d18: $01 $dd $9c
    sbc h                                         ; $7d1b: $9c
    ld a, a                                       ; $7d1c: $7f
    ld d, $66                                     ; $7d1d: $16 $66
    ld l, h                                       ; $7d1f: $6c
    ld hl, sp+$00                                 ; $7d20: $f8 $00
    db $db                                        ; $7d22: $db
    sbc e                                         ; $7d23: $9b
    ld [hl], d                                    ; $7d24: $72
    xor b                                         ; $7d25: $a8
    ld a, [bc]                                    ; $7d26: $0a
    and a                                         ; $7d27: $a7
    dec sp                                        ; $7d28: $3b
    add sp, -$71                                  ; $7d29: $e8 $8f
    ld [hl], $a0                                  ; $7d2b: $36 $a0
    sbc e                                         ; $7d2d: $9b
    sub e                                         ; $7d2e: $93
    di                                            ; $7d2f: $f3
    rst $08                                       ; $7d30: $cf
    jp nz, Jump_065_4d8c                          ; $7d31: $c2 $8c $4d

    db $ed                                        ; $7d34: $ed
    ld [hl], $e1                                  ; $7d35: $36 $e1
    ld d, h                                       ; $7d37: $54
    add l                                         ; $7d38: $85
    ld d, e                                       ; $7d39: $53
    and l                                         ; $7d3a: $a5
    ccf                                           ; $7d3b: $3f
    jp c, $ae80                                   ; $7d3c: $da $80 $ae

    ld h, b                                       ; $7d3f: $60
    add c                                         ; $7d40: $81
    ld bc, $faa2                                  ; $7d41: $01 $a2 $fa
    di                                            ; $7d44: $f3
    or h                                          ; $7d45: $b4
    ld d, c                                       ; $7d46: $51
    jr c, jr_065_7ce4                             ; $7d47: $38 $9b

    ld a, $db                                     ; $7d49: $3e $db
    add h                                         ; $7d4b: $84
    inc hl                                        ; $7d4c: $23
    xor d                                         ; $7d4d: $aa
    and h                                         ; $7d4e: $a4
    ld d, [hl]                                    ; $7d4f: $56
    add l                                         ; $7d50: $85
    ld d, e                                       ; $7d51: $53
    and l                                         ; $7d52: $a5
    ld h, a                                       ; $7d53: $67
    ld l, h                                       ; $7d54: $6c
    ld [hl], h                                    ; $7d55: $74
    db $f4                                        ; $7d56: $f4
    ld l, [hl]                                    ; $7d57: $6e
    inc de                                        ; $7d58: $13
    ld [$58d3], a                                 ; $7d59: $ea $d3 $58
    ret                                           ; $7d5c: $c9


    and a                                         ; $7d5d: $a7
    call Call_065_5dc6                            ; $7d5e: $cd $c6 $5d

jr_065_7d61:
    sub b                                         ; $7d61: $90
    db $dd                                        ; $7d62: $dd
    ld l, h                                       ; $7d63: $6c
    inc hl                                        ; $7d64: $23
    ld b, a                                       ; $7d65: $47
    dec de                                        ; $7d66: $1b
    ret nc                                        ; $7d67: $d0

    di                                            ; $7d68: $f3
    ldh a, [$f2]                                  ; $7d69: $f0 $f2
    ei                                            ; $7d6b: $fb
    pop af                                        ; $7d6c: $f1
    ld l, h                                       ; $7d6d: $6c
    or h                                          ; $7d6e: $b4
    add sp, $39                                   ; $7d6f: $e8 $39
    and $04                                       ; $7d71: $e6 $04
    ld d, e                                       ; $7d73: $53
    ld a, e                                       ; $7d74: $7b
    ld e, $e5                                     ; $7d75: $1e $e5
    add sp, -$18                                  ; $7d77: $e8 $e8
    db $fd                                        ; $7d79: $fd
    ld bc, $f967                                  ; $7d7a: $01 $67 $f9
    ld sp, hl                                     ; $7d7d: $f9
    ret                                           ; $7d7e: $c9


    ld de, $5c75                                  ; $7d7f: $11 $75 $5c
    ld [hl], $56                                  ; $7d82: $36 $56
    ld [hl-], a                                   ; $7d84: $32
    ld [c], a                                     ; $7d85: $e2
    add hl, de                                    ; $7d86: $19
    dec de                                        ; $7d87: $1b
    ret nc                                        ; $7d88: $d0

    ld a, a                                       ; $7d89: $7f
    and h                                         ; $7d8a: $a4
    cp a                                          ; $7d8b: $bf
    jr nz, jr_065_7d61                            ; $7d8c: $20 $d3

    jp z, $17ca                                   ; $7d8e: $ca $ca $17

    sub e                                         ; $7d91: $93
    db $ec                                        ; $7d92: $ec
    ccf                                           ; $7d93: $3f
    dec bc                                        ; $7d94: $0b
    cp $f5                                        ; $7d95: $fe $f5
    jp nz, Jump_000_3fb9                          ; $7d97: $c2 $b9 $3f

    sub a                                         ; $7d9a: $97
    ld d, c                                       ; $7d9b: $51
    ld a, d                                       ; $7d9c: $7a
    sub $c9                                       ; $7d9d: $d6 $c9
    adc [hl]                                      ; $7d9f: $8e
    or $9f                                        ; $7da0: $f6 $9f
    dec b                                         ; $7da2: $05
    rst $38                                       ; $7da3: $ff
    rst $38                                       ; $7da4: $ff
    ld h, $52                                     ; $7da5: $26 $52
    scf                                           ; $7da7: $37
    dec [hl]                                      ; $7da8: $35
    ld b, c                                       ; $7da9: $41
    halt                                          ; $7daa: $76
    res 4, h                                      ; $7dab: $cb $a4
    dec b                                         ; $7dad: $05
    pop de                                        ; $7dae: $d1
    or d                                          ; $7daf: $b2
    ld [hl], $b9                                  ; $7db0: $36 $b9
    ld d, [hl]                                    ; $7db2: $56
    daa                                           ; $7db3: $27
    ei                                            ; $7db4: $fb
    cpl                                           ; $7db5: $2f
    adc $83                                       ; $7db6: $ce $83
    ld b, $f4                                     ; $7db8: $06 $f4
    sbc a                                         ; $7dba: $9f
    dec b                                         ; $7dbb: $05
    rst $38                                       ; $7dbc: $ff
    rst $38                                       ; $7dbd: $ff
    ld h, $32                                     ; $7dbe: $26 $32
    adc h                                         ; $7dc0: $8c
    ld b, c                                       ; $7dc1: $41
    rst $28                                       ; $7dc2: $ef
    ei                                            ; $7dc3: $fb
    ld l, $2a                                     ; $7dc4: $2e $2a
    ld h, b                                       ; $7dc6: $60
    xor l                                         ; $7dc7: $ad
    db $e3                                        ; $7dc8: $e3
    ld d, [hl]                                    ; $7dc9: $56
    xor a                                         ; $7dca: $af
    pop hl                                        ; $7dcb: $e1
    db $ed                                        ; $7dcc: $ed
    add d                                         ; $7dcd: $82
    dec [hl]                                      ; $7dce: $35
    push hl                                       ; $7dcf: $e5
    ret nc                                        ; $7dd0: $d0

    pop de                                        ; $7dd1: $d1
    ld a, [$2013]                                 ; $7dd2: $fa $13 $20
    ld b, a                                       ; $7dd5: $47
    db $eb                                        ; $7dd6: $eb
    sub h                                         ; $7dd7: $94
    ld d, [hl]                                    ; $7dd8: $56
    sbc a                                         ; $7dd9: $9f
    add $7a                                       ; $7dda: $c6 $7a
    cp c                                          ; $7ddc: $b9
    dec bc                                        ; $7ddd: $0b
    ld d, [hl]                                    ; $7dde: $56
    ret                                           ; $7ddf: $c9


    db $f4                                        ; $7de0: $f4
    db $e3                                        ; $7de1: $e3
    db $dd                                        ; $7de2: $dd
    ld c, e                                       ; $7de3: $4b
    inc e                                         ; $7de4: $1c
    ld h, e                                       ; $7de5: $63
    sbc b                                         ; $7de6: $98
    cp $23                                        ; $7de7: $fe $23
    ld a, l                                       ; $7de9: $7d
    and e                                         ; $7dea: $a3
    ld b, c                                       ; $7deb: $41
    cp e                                          ; $7dec: $bb
    add e                                         ; $7ded: $83
    cp $68                                        ; $7dee: $fe $68
    inc bc                                        ; $7df0: $03
    cp d                                          ; $7df1: $ba
    add hl, sp                                    ; $7df2: $39
    add hl, sp                                    ; $7df3: $39
    rst $38                                       ; $7df4: $ff
    inc l                                         ; $7df5: $2c
    call z, Call_065_6fa8                         ; $7df6: $cc $a8 $6f
    di                                            ; $7df9: $f3
    dec sp                                        ; $7dfa: $3b
    ld h, e                                       ; $7dfb: $63
    and a                                         ; $7dfc: $a7
    cp a                                          ; $7dfd: $bf
    adc l                                         ; $7dfe: $8d
    sbc h                                         ; $7dff: $9c
    ld b, [hl]                                    ; $7e00: $46
    ld d, $d2                                     ; $7e01: $16 $d2
    jp Jump_065_6985                              ; $7e03: $c3 $85 $69


    ret z                                         ; $7e06: $c8

    ei                                            ; $7e07: $fb
    inc bc                                        ; $7e08: $03
    ld e, e                                       ; $7e09: $5b
    sbc h                                         ; $7e0a: $9c
    sub h                                         ; $7e0b: $94
    rst $30                                       ; $7e0c: $f7
    ld a, l                                       ; $7e0d: $7d
    ld h, a                                       ; $7e0e: $67
    ld l, $2b                                     ; $7e0f: $2e $2b
    db $ec                                        ; $7e11: $ec
    ld l, d                                       ; $7e12: $6a
    ret nz                                        ; $7e13: $c0

    ld a, [bc]                                    ; $7e14: $0a
    xor d                                         ; $7e15: $aa
    add sp, $3f                                   ; $7e16: $e8 $3f
    jp nc, $5a37                                  ; $7e18: $d2 $37 $5a

    dec h                                         ; $7e1b: $25
    sbc a                                         ; $7e1c: $9f
    sbc $ed                                       ; $7e1d: $de $ed
    and $91                                       ; $7e1f: $e6 $91
    db $dd                                        ; $7e21: $dd
    ld l, h                                       ; $7e22: $6c
    inc hl                                        ; $7e23: $23
    ld b, a                                       ; $7e24: $47
    dec de                                        ; $7e25: $1b
    ret nc                                        ; $7e26: $d0

    di                                            ; $7e27: $f3
    ldh a, [$f2]                                  ; $7e28: $f0 $f2
    ei                                            ; $7e2a: $fb
    pop af                                        ; $7e2b: $f1
    ld l, h                                       ; $7e2c: $6c
    or h                                          ; $7e2d: $b4
    add sp, $39                                   ; $7e2e: $e8 $39
    and $04                                       ; $7e30: $e6 $04
    ld d, e                                       ; $7e32: $53
    ld a, e                                       ; $7e33: $7b
    ld e, $e5                                     ; $7e34: $1e $e5
    add sp, $68                                   ; $7e36: $e8 $68
    rst $00                                       ; $7e38: $c7
    ld d, l                                       ; $7e39: $55
    ld hl, $058b                                  ; $7e3a: $21 $8b $05
    ld a, [hl+]                                   ; $7e3d: $2a
    ld [$4ff4], a                                 ; $7e3e: $ea $f4 $4f
    adc $3f                                       ; $7e41: $ce $3f
    dec bc                                        ; $7e43: $0b
    inc sp                                        ; $7e44: $33
    ld a, [de]                                    ; $7e45: $1a
    ld e, l                                       ; $7e46: $5d
    db $fc                                        ; $7e47: $fc
    reti                                          ; $7e48: $d9


    ld [hl], l                                    ; $7e49: $75
    dec c                                         ; $7e4a: $0d
    sub b                                         ; $7e4b: $90
    ld a, h                                       ; $7e4c: $7c
    ld a, d                                       ; $7e4d: $7a
    ld a, a                                       ; $7e4e: $7f
    rst $20                                       ; $7e4f: $e7
    ld b, b                                       ; $7e50: $40
    adc d                                         ; $7e51: $8a
    xor d                                         ; $7e52: $aa
    ld l, b                                       ; $7e53: $68
    ld b, [hl]                                    ; $7e54: $46
    sub l                                         ; $7e55: $95
    rst $08                                       ; $7e56: $cf
    ld a, [hl-]                                   ; $7e57: $3a
    dec d                                         ; $7e58: $15
    ld c, a                                       ; $7e59: $4f
    db $db                                        ; $7e5a: $db
    di                                            ; $7e5b: $f3
    ld a, l                                       ; $7e5c: $7d
    adc d                                         ; $7e5d: $8a
    sbc d                                         ; $7e5e: $9a
    ld l, l                                       ; $7e5f: $6d
    ld a, [hl]                                    ; $7e60: $7e
    ld l, d                                       ; $7e61: $6a
    rst $38                                       ; $7e62: $ff
    sub c                                         ; $7e63: $91
    cpl                                           ; $7e64: $2f
    dec a                                         ; $7e65: $3d
    sbc e                                         ; $7e66: $9b
    jp c, $3a33                                   ; $7e67: $da $33 $3a

    db $dd                                        ; $7e6a: $dd
    inc hl                                        ; $7e6b: $23
    cp [hl]                                       ; $7e6c: $be
    ld a, a                                       ; $7e6d: $7f
    sbc d                                         ; $7e6e: $9a
    ld [hl], d                                    ; $7e6f: $72
    xor b                                         ; $7e70: $a8
    ld b, h                                       ; $7e71: $44
    cp l                                          ; $7e72: $bd
    ld e, h                                       ; $7e73: $5c
    ld [hl-], a                                   ; $7e74: $32
    rst $28                                       ; $7e75: $ef
    rrca                                          ; $7e76: $0f
    db $db                                        ; $7e77: $db
    res 2, h                                      ; $7e78: $cb $94
    jp $ed42                                      ; $7e7a: $c3 $42 $ed


    ccf                                           ; $7e7d: $3f
    ld c, a                                       ; $7e7e: $4f
    xor c                                         ; $7e7f: $a9
    dec c                                         ; $7e80: $0d
    and e                                         ; $7e81: $a3
    dec a                                         ; $7e82: $3d
    rrca                                          ; $7e83: $0f
    ld l, a                                       ; $7e84: $6f
    db $fd                                        ; $7e85: $fd
    pop bc                                        ; $7e86: $c1
    ret nc                                        ; $7e87: $d0

    ld b, $f4                                     ; $7e88: $06 $f4
    or d                                          ; $7e8a: $b2
    add hl, bc                                    ; $7e8b: $09
    and e                                         ; $7e8c: $a3
    dec e                                         ; $7e8d: $1d
    db $ed                                        ; $7e8e: $ed
    ld c, $7a                                     ; $7e8f: $0e $7a
    add $a0                                       ; $7e91: $c6 $a0
    sbc e                                         ; $7e93: $9b
    jp c, Jump_000_1c4b                           ; $7e94: $da $4b $1c

    xor d                                         ; $7e97: $aa
    db $f4                                        ; $7e98: $f4
    adc h                                         ; $7e99: $8c
    ld b, c                                       ; $7e9a: $41
    cp e                                          ; $7e9b: $bb
    xor [hl]                                      ; $7e9c: $ae
    add hl, hl                                    ; $7e9d: $29
    add a                                         ; $7e9e: $87
    ld h, $d7                                     ; $7e9f: $26 $d7
    ld [hl], $7d                                  ; $7ea1: $36 $7d
    sub a                                         ; $7ea3: $97
    ld l, l                                       ; $7ea4: $6d
    ccf                                           ; $7ea5: $3f
    ld [hl], a                                    ; $7ea6: $77
    ei                                            ; $7ea7: $fb
    adc [hl]                                      ; $7ea8: $8e
    adc [hl]                                      ; $7ea9: $8e
    ld d, [hl]                                    ; $7eaa: $56
    jp hl                                         ; $7eab: $e9


    add hl, de                                    ; $7eac: $19
    add e                                         ; $7ead: $83
    sbc $6d                                       ; $7eae: $de $6d
    ld b, d                                       ; $7eb0: $42
    and e                                         ; $7eb1: $a3
    ld [hl], b                                    ; $7eb2: $70
    xor d                                         ; $7eb3: $aa
    jp nz, $eea9                                  ; $7eb4: $c2 $a9 $ee

    sbc $7f                                       ; $7eb7: $de $7f
    sbc [hl]                                      ; $7eb9: $9e
    ld d, d                                       ; $7eba: $52
    db $eb                                        ; $7ebb: $eb
    add hl, de                                    ; $7ebc: $19
    ld [$8add], a                                 ; $7ebd: $ea $dd $8a
    rst $38                                       ; $7ec0: $ff
    ret                                           ; $7ec1: $c9


    ld l, c                                       ; $7ec2: $69
    jp z, $4ea1                                   ; $7ec3: $ca $a1 $4e

    or d                                          ; $7ec6: $b2
    dec hl                                        ; $7ec7: $2b
    db $ec                                        ; $7ec8: $ec
    xor d                                         ; $7ec9: $aa
    ld b, h                                       ; $7eca: $44
    ld a, a                                       ; $7ecb: $7f
    ld l, $c9                                     ; $7ecc: $2e $c9
    ld [hl], c                                    ; $7ece: $71
    ld [hl], l                                    ; $7ecf: $75
    or d                                          ; $7ed0: $b2
    xor h                                         ; $7ed1: $ac
    jp nc, $2b03                                  ; $7ed2: $d2 $03 $2b

    sbc e                                         ; $7ed5: $9b
    ld h, c                                       ; $7ed6: $61
    add $fb                                       ; $7ed7: $c6 $fb
    inc bc                                        ; $7ed9: $03
    ld e, e                                       ; $7eda: $5b
    sbc h                                         ; $7edb: $9c
    sub h                                         ; $7edc: $94
    rst $30                                       ; $7edd: $f7
    ld a, l                                       ; $7ede: $7d
    rst $38                                       ; $7edf: $ff
    inc hl                                        ; $7ee0: $23
    and a                                         ; $7ee1: $a7
    db $eb                                        ; $7ee2: $eb
    sbc d                                         ; $7ee3: $9a
    ld [hl], d                                    ; $7ee4: $72
    xor b                                         ; $7ee5: $a8
    jp nc, $2d03                                  ; $7ee6: $d2 $03 $2d

    sbc e                                         ; $7ee9: $9b
    ld [hl], d                                    ; $7eea: $72
    add sp, -$46                                  ; $7eeb: $e8 $ba
    and [hl]                                      ; $7eed: $a6
    inc e                                         ; $7eee: $1c
    xor d                                         ; $7eef: $aa
    db $f4                                        ; $7ef0: $f4
    and b                                         ; $7ef1: $a0
    ld l, h                                       ; $7ef2: $6c
    add [hl]                                      ; $7ef3: $86
    add hl, de                                    ; $7ef4: $19
    scf                                           ; $7ef5: $37
    ld a, l                                       ; $7ef6: $7d
    db $db                                        ; $7ef7: $db
    add h                                         ; $7ef8: $84
    ld d, e                                       ; $7ef9: $53
    rra                                           ; $7efa: $1f
    sub [hl]                                      ; $7efb: $96
    halt                                          ; $7efc: $76
    ld sp, $ef43                                  ; $7efd: $31 $43 $ef
    halt                                          ; $7f00: $76
    dec hl                                        ; $7f01: $2b
    or l                                          ; $7f02: $b5
    ld bc, $47ab                                  ; $7f03: $01 $ab $47
    db $ed                                        ; $7f06: $ed
    or e                                          ; $7f07: $b3
    cp $23                                        ; $7f08: $fe $23
    ld a, l                                       ; $7f0a: $7d
    and e                                         ; $7f0b: $a3
    dec [hl]                                      ; $7f0c: $35
    push hl                                       ; $7f0d: $e5
    cp b                                          ; $7f0e: $b8
    and h                                         ; $7f0f: $a4
    inc e                                         ; $7f10: $1c
    xor h                                         ; $7f11: $ac
    rst $38                                       ; $7f12: $ff
    inc a                                         ; $7f13: $3c
    push hl                                       ; $7f14: $e5
    db $dd                                        ; $7f15: $dd
    ld l, [hl]                                    ; $7f16: $6e
    ld h, e                                       ; $7f17: $63
    dec h                                         ; $7f18: $25
    rst $18                                       ; $7f19: $df
    ret c                                         ; $7f1a: $d8

    ld h, e                                       ; $7f1b: $63
    sub l                                         ; $7f1c: $95
    ld e, $c8                                     ; $7f1d: $1e $c8
    ld c, d                                       ; $7f1f: $4a
    rst $30                                       ; $7f20: $f7
    ld a, [c]                                     ; $7f21: $f2
    call nc, Call_065_7903                        ; $7f22: $d4 $03 $79
    or a                                          ; $7f25: $b7
    db $db                                        ; $7f26: $db
    or l                                          ; $7f27: $b5
    ld [de], a                                    ; $7f28: $12
    ld c, [hl]                                    ; $7f29: $4e
    ei                                            ; $7f2a: $fb
    ld c, h                                       ; $7f2b: $4c
    ld a, [bc]                                    ; $7f2c: $0a
    ld b, a                                       ; $7f2d: $47
    cp e                                          ; $7f2e: $bb
    ld b, d                                       ; $7f2f: $42
    inc c                                         ; $7f30: $0c
    sub b                                         ; $7f31: $90
    dec c                                         ; $7f32: $0d
    di                                            ; $7f33: $f3
    ld b, e                                       ; $7f34: $43
    dec de                                        ; $7f35: $1b
    ld e, c                                       ; $7f36: $59
    add sp, $3f                                   ; $7f37: $e8 $3f
    dec bc                                        ; $7f39: $0b
    ld b, l                                       ; $7f3a: $45
    sub l                                         ; $7f3b: $95
    call nc, $e3fe                                ; $7f3c: $d4 $fe $e3
    ld sp, $4aca                                  ; $7f3f: $31 $ca $4a
    rst $30                                       ; $7f42: $f7
    ld a, [c]                                     ; $7f43: $f2
    ld d, h                                       ; $7f44: $54
    ld a, [c]                                     ; $7f45: $f2
    jp hl                                         ; $7f46: $e9


    db $fd                                        ; $7f47: $fd
    ld bc, $9109                                  ; $7f48: $01 $09 $91
    and d                                         ; $7f4b: $a2
    ld a, [$9fcf]                                 ; $7f4c: $fa $cf $9f
    sbc a                                         ; $7f4f: $9f
    ld a, d                                       ; $7f50: $7a
    rst $30                                       ; $7f51: $f7
    adc b                                         ; $7f52: $88
    and e                                         ; $7f53: $a3
    adc $3e                                       ; $7f54: $ce $3e
    or [hl]                                       ; $7f56: $b6
    adc c                                         ; $7f57: $89
    sub a                                         ; $7f58: $97
    ld e, $f9                                     ; $7f59: $1e $f9
    ld bc, $92db                                  ; $7f5b: $01 $db $92
    sub h                                         ; $7f5e: $94
    dec de                                        ; $7f5f: $1b
    ld h, e                                       ; $7f60: $63
    sub d                                         ; $7f61: $92
    ld d, d                                       ; $7f62: $52
    ld d, h                                       ; $7f63: $54
    ld c, c                                       ; $7f64: $49
    sub e                                         ; $7f65: $93
    ld e, b                                       ; $7f66: $58
    jr @+$7a                                      ; $7f67: $18 $78

    rst $30                                       ; $7f69: $f7
    adc b                                         ; $7f6a: $88
    and e                                         ; $7f6b: $a3

jr_065_7f6c:
    adc $3e                                       ; $7f6c: $ce $3e
    or [hl]                                       ; $7f6e: $b6
    adc c                                         ; $7f6f: $89
    sub a                                         ; $7f70: $97
    ld e, $f9                                     ; $7f71: $1e $f9
    ld bc, $9a09                                  ; $7f73: $01 $09 $9a
    ld e, c                                       ; $7f76: $59
    ret                                           ; $7f77: $c9


Jump_065_7f78:
    push af                                       ; $7f78: $f5
    jp nz, $e146                                  ; $7f79: $c2 $46 $e1

    inc d                                         ; $7f7c: $14
    sbc d                                         ; $7f7d: $9a
    cp c                                          ; $7f7e: $b9
    ld h, d                                       ; $7f7f: $62
    sub a                                         ; $7f80: $97
    or l                                          ; $7f81: $b5
    ld c, d                                       ; $7f82: $4a
    rst $30                                       ; $7f83: $f7
    ld a, [c]                                     ; $7f84: $f2
    ld d, h                                       ; $7f85: $54
    ld [hl-], a                                   ; $7f86: $32
    jr c, jr_065_7f6c                             ; $7f87: $38 $e3

    db $dd                                        ; $7f89: $dd
    inc hl                                        ; $7f8a: $23
    adc [hl]                                      ; $7f8b: $8e
    ld a, [hl-]                                   ; $7f8c: $3a
    ei                                            ; $7f8d: $fb
    ret c                                         ; $7f8e: $d8

    ld h, $5e                                     ; $7f8f: $26 $5e
    ld a, d                                       ; $7f91: $7a
    db $e4                                        ; $7f92: $e4
    rlca                                          ; $7f93: $07
    sub a                                         ; $7f94: $97
    jr c, @+$16                                   ; $7f95: $38 $14

    sbc d                                         ; $7f97: $9a
    adc l                                         ; $7f98: $8d
    ld sp, $f739                                  ; $7f99: $31 $39 $f7
    ld a, l                                       ; $7f9c: $7d
    ld d, a                                       ; $7f9d: $57
    jp hl                                         ; $7f9e: $e9


    ld a, c                                       ; $7f9f: $79
    inc l                                         ; $7fa0: $2c
    ei                                            ; $7fa1: $fb
    rst $08                                       ; $7fa2: $cf
    jp nz, Jump_000_1406                          ; $7fa3: $c2 $06 $14

    ld [hl], c                                    ; $7fa6: $71
    add l                                         ; $7fa7: $85
    ld h, l                                       ; $7fa8: $65
    ld a, h                                       ; $7fa9: $7c
    call c, $e23d                                 ; $7faa: $dc $3d $e2
    xor b                                         ; $7fad: $a8
    or e                                          ; $7fae: $b3
    adc a                                         ; $7faf: $8f
    ld l, l                                       ; $7fb0: $6d
    ld [c], a                                     ; $7fb1: $e2
    and l                                         ; $7fb2: $a5
    ld b, a                                       ; $7fb3: $47
    ld a, [hl]                                    ; $7fb4: $7e
    sub a                                         ; $7fb5: $97
    jr c, @+$36                                   ; $7fb6: $38 $34

    adc [hl]                                      ; $7fb8: $8e
    add b                                         ; $7fb9: $80
    reti                                          ; $7fba: $d9


    ret nc                                        ; $7fbb: $d0

    ld l, [hl]                                    ; $7fbc: $6e
    ld l, a                                       ; $7fbd: $6f
    jp z, Jump_000_30a1                           ; $7fbe: $ca $a1 $30

    or $69                                        ; $7fc1: $f6 $69
    ld e, $51                                     ; $7fc3: $1e $51
    rst $38                                       ; $7fc5: $ff
    ret                                           ; $7fc6: $c9


    jp nz, $9869                                  ; $7fc7: $c2 $69 $98

    ld a, [hl-]                                   ; $7fca: $3a
    jp hl                                         ; $7fcb: $e9


    ld a, c                                       ; $7fcc: $79
    jp hl                                         ; $7fcd: $e9


    reti                                          ; $7fce: $d9


    call nc, $8e23                                ; $7fcf: $d4 $23 $8e
    ld a, [hl-]                                   ; $7fd2: $3a
    ei                                            ; $7fd3: $fb
    ret c                                         ; $7fd4: $d8

    ld h, $5e                                     ; $7fd5: $26 $5e
    ld a, d                                       ; $7fd7: $7a
    db $e4                                        ; $7fd8: $e4
    rlca                                          ; $7fd9: $07
    ld [c], a                                     ; $7fda: $e2
    ld c, a                                       ; $7fdb: $4f
    ld d, h                                       ; $7fdc: $54
    cp $c9                                        ; $7fdd: $fe $c9
    ld l, c                                       ; $7fdf: $69
    jp z, Jump_000_30a1                           ; $7fe0: $ca $a1 $30

    or $1f                                        ; $7fe3: $f6 $1f
    ld sp, hl                                     ; $7fe5: $f9
    ld [bc], a                                    ; $7fe6: $02
    db $eb                                        ; $7fe7: $eb
    db $d3                                        ; $7fe8: $d3
    ret c                                         ; $7fe9: $d8

    ld e, a                                       ; $7fea: $5f
    ld [$7bbd], sp                                ; $7feb: $08 $bd $7b
    call nz, Call_065_6751                        ; $7fee: $c4 $51 $67
    rra                                           ; $7ff1: $1f
    db $db                                        ; $7ff2: $db
    call nz, $8f4b                                ; $7ff3: $c4 $4b $8f
    db $fc                                        ; $7ff6: $fc
    nop                                           ; $7ff7: $00
    rst $38                                       ; $7ff8: $ff
    rst $38                                       ; $7ff9: $ff
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
