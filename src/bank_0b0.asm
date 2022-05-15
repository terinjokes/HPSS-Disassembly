; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0b0", ROMX[$4000], BANK[$b0]

    or b                                          ; $4000: $b0
    nop                                           ; $4001: $00
    jr nz, jr_0b0_4004                            ; $4002: $20 $00

jr_0b0_4004:
    jr nz, jr_0b0_4006                            ; $4004: $20 $00

jr_0b0_4006:
    jr nz, @+$3b                                  ; $4006: $20 $39

    stop                                          ; $4008: $10 $00
    jr nz, jr_0b0_400c                            ; $400a: $20 $00

jr_0b0_400c:
    jr nz, jr_0b0_400e                            ; $400c: $20 $00

jr_0b0_400e:
    jr nz, @+$3b                                  ; $400e: $20 $39

    stop                                          ; $4010: $10 $00
    jr nz, jr_0b0_4014                            ; $4012: $20 $00

jr_0b0_4014:
    jr nz, jr_0b0_4016                            ; $4014: $20 $00

jr_0b0_4016:
    jr nz, @+$3b                                  ; $4016: $20 $39

    stop                                          ; $4018: $10 $00
    nop                                           ; $401a: $00
    rst $38                                       ; $401b: $ff
    ld a, a                                       ; $401c: $7f
    nop                                           ; $401d: $00
    jr nz, jr_0b0_4020                            ; $401e: $20 $00

jr_0b0_4020:
    jr nz, jr_0b0_4022                            ; $4020: $20 $00

jr_0b0_4022:
    jr nz, @+$01                                  ; $4022: $20 $ff

    ld a, a                                       ; $4024: $7f
    nop                                           ; $4025: $00
    jr nz, jr_0b0_4028                            ; $4026: $20 $00

jr_0b0_4028:
    jr nz, jr_0b0_402a                            ; $4028: $20 $00

jr_0b0_402a:
    jr nz, @+$01                                  ; $402a: $20 $ff

    ld a, a                                       ; $402c: $7f
    nop                                           ; $402d: $00
    jr nz, jr_0b0_4030                            ; $402e: $20 $00

jr_0b0_4030:
    jr nz, jr_0b0_4032                            ; $4030: $20 $00

jr_0b0_4032:
    jr nz, @+$01                                  ; $4032: $20 $ff

    ld a, a                                       ; $4034: $7f
    nop                                           ; $4035: $00
    jr nz, jr_0b0_4038                            ; $4036: $20 $00

jr_0b0_4038:
    jr nz, jr_0b0_403a                            ; $4038: $20 $00

jr_0b0_403a:
    jr nz, jr_0b0_403c                            ; $403a: $20 $00

jr_0b0_403c:
    jr nz, jr_0b0_403e                            ; $403c: $20 $00

jr_0b0_403e:
    jr nz, @+$3b                                  ; $403e: $20 $39

    stop                                          ; $4040: $10 $00
    jr nz, jr_0b0_4044                            ; $4042: $20 $00

jr_0b0_4044:
    jr nz, jr_0b0_4046                            ; $4044: $20 $00

jr_0b0_4046:
    jr nz, @+$3b                                  ; $4046: $20 $39

    stop                                          ; $4048: $10 $00
    jr nz, jr_0b0_404c                            ; $404a: $20 $00

jr_0b0_404c:
    jr nz, jr_0b0_404e                            ; $404c: $20 $00

jr_0b0_404e:
    jr nz, @+$3b                                  ; $404e: $20 $39

    stop                                          ; $4050: $10 $00
    nop                                           ; $4052: $00
    rst $38                                       ; $4053: $ff
    ld a, a                                       ; $4054: $7f
    nop                                           ; $4055: $00
    jr nz, jr_0b0_4058                            ; $4056: $20 $00

Call_0b0_4058:
jr_0b0_4058:
    jr nz, jr_0b0_405a                            ; $4058: $20 $00

jr_0b0_405a:
    nop                                           ; $405a: $00
    nop                                           ; $405b: $00
    jr nz, jr_0b0_405e                            ; $405c: $20 $00

jr_0b0_405e:
    jr nz, jr_0b0_4060                            ; $405e: $20 $00

jr_0b0_4060:
    jr nz, jr_0b0_4062                            ; $4060: $20 $00

jr_0b0_4062:
    jr nz, jr_0b0_4064                            ; $4062: $20 $00

jr_0b0_4064:
    jr nz, jr_0b0_4066                            ; $4064: $20 $00

jr_0b0_4066:
    jr nz, jr_0b0_4068                            ; $4066: $20 $00

jr_0b0_4068:
    jr nz, jr_0b0_406a                            ; $4068: $20 $00

jr_0b0_406a:
    jr nz, jr_0b0_406c                            ; $406a: $20 $00

jr_0b0_406c:
    jr nz, jr_0b0_406e                            ; $406c: $20 $00

jr_0b0_406e:
    jr nz, jr_0b0_4070                            ; $406e: $20 $00

jr_0b0_4070:
    jr nz, jr_0b0_4072                            ; $4070: $20 $00

jr_0b0_4072:
    jr nz, jr_0b0_4074                            ; $4072: $20 $00

jr_0b0_4074:
    jr nz, jr_0b0_4076                            ; $4074: $20 $00

jr_0b0_4076:
    jr nz, @+$3b                                  ; $4076: $20 $39

    stop                                          ; $4078: $10 $00
    jr nz, jr_0b0_407c                            ; $407a: $20 $00

jr_0b0_407c:
    jr nz, jr_0b0_407e                            ; $407c: $20 $00

jr_0b0_407e:
    jr nz, @+$3b                                  ; $407e: $20 $39

    stop                                          ; $4080: $10 $00
    nop                                           ; $4082: $00
    rst $38                                       ; $4083: $ff
    ld a, a                                       ; $4084: $7f
    nop                                           ; $4085: $00
    jr nz, jr_0b0_40c1                            ; $4086: $20 $39

    stop                                          ; $4088: $10 $00
    nop                                           ; $408a: $00
    rst $38                                       ; $408b: $ff
    ld a, a                                       ; $408c: $7f
    ld l, d                                       ; $408d: $6a
    ld a, [hl+]                                   ; $408e: $2a
    nop                                           ; $408f: $00
    jr nz, jr_0b0_4092                            ; $4090: $20 $00

jr_0b0_4092:
    nop                                           ; $4092: $00
    rst $38                                       ; $4093: $ff
    ld a, a                                       ; $4094: $7f
    nop                                           ; $4095: $00
    jr nz, jr_0b0_4098                            ; $4096: $20 $00

jr_0b0_4098:
    jr nz, jr_0b0_409a                            ; $4098: $20 $00

jr_0b0_409a:
    jr nz, @+$01                                  ; $409a: $20 $ff

    ld a, a                                       ; $409c: $7f
    nop                                           ; $409d: $00
    jr nz, jr_0b0_40a0                            ; $409e: $20 $00

jr_0b0_40a0:
    jr nz, jr_0b0_40a2                            ; $40a0: $20 $00

jr_0b0_40a2:
    jr nz, @+$01                                  ; $40a2: $20 $ff

    ld a, a                                       ; $40a4: $7f
    nop                                           ; $40a5: $00
    jr nz, jr_0b0_40a8                            ; $40a6: $20 $00

jr_0b0_40a8:
    jr nz, jr_0b0_40aa                            ; $40a8: $20 $00

jr_0b0_40aa:
    jr nz, @+$01                                  ; $40aa: $20 $ff

    ld a, a                                       ; $40ac: $7f
    nop                                           ; $40ad: $00
    jr nz, @+$3b                                  ; $40ae: $20 $39

    stop                                          ; $40b0: $10 $00
    jr nz, @+$01                                  ; $40b2: $20 $ff

    ld a, a                                       ; $40b4: $7f
    nop                                           ; $40b5: $00
    jr nz, @+$3b                                  ; $40b6: $20 $39

    stop                                          ; $40b8: $10 $00
    nop                                           ; $40ba: $00
    rst $38                                       ; $40bb: $ff
    ld a, a                                       ; $40bc: $7f
    nop                                           ; $40bd: $00
    jr nz, @+$3b                                  ; $40be: $20 $39

    db $10                                        ; $40c0: $10

jr_0b0_40c1:
    ld l, c                                       ; $40c1: $69
    ld a, [hl+]                                   ; $40c2: $2a
    ld l, d                                       ; $40c3: $6a
    ld a, [hl+]                                   ; $40c4: $2a
    nop                                           ; $40c5: $00
    jr nz, jr_0b0_40c8                            ; $40c6: $20 $00

jr_0b0_40c8:
    jr nz, jr_0b0_40ca                            ; $40c8: $20 $00

jr_0b0_40ca:
    nop                                           ; $40ca: $00
    rst $38                                       ; $40cb: $ff
    ld a, a                                       ; $40cc: $7f
    ld l, c                                       ; $40cd: $69
    ld a, [hl+]                                   ; $40ce: $2a
    nop                                           ; $40cf: $00
    jr nz, jr_0b0_40d2                            ; $40d0: $20 $00

jr_0b0_40d2:
    jr nz, @+$01                                  ; $40d2: $20 $ff

    ld a, a                                       ; $40d4: $7f
    ld l, c                                       ; $40d5: $69
    ld a, [hl+]                                   ; $40d6: $2a
    nop                                           ; $40d7: $00
    jr nz, jr_0b0_40da                            ; $40d8: $20 $00

jr_0b0_40da:
    jr nz, @+$01                                  ; $40da: $20 $ff

    ld a, a                                       ; $40dc: $7f
    ld l, c                                       ; $40dd: $69
    ld a, [hl+]                                   ; $40de: $2a
    nop                                           ; $40df: $00
    jr nz, jr_0b0_40e2                            ; $40e0: $20 $00

jr_0b0_40e2:
    jr nz, @+$01                                  ; $40e2: $20 $ff

    ld a, a                                       ; $40e4: $7f
    nop                                           ; $40e5: $00
    jr nz, @+$3b                                  ; $40e6: $20 $39

    stop                                          ; $40e8: $10 $00
    jr nz, @+$01                                  ; $40ea: $20 $ff

    ld a, a                                       ; $40ec: $7f
    nop                                           ; $40ed: $00
    jr nz, @+$3b                                  ; $40ee: $20 $39

    stop                                          ; $40f0: $10 $00
    nop                                           ; $40f2: $00
    rst $38                                       ; $40f3: $ff
    ld a, a                                       ; $40f4: $7f
    ld l, c                                       ; $40f5: $69
    ld a, [hl+]                                   ; $40f6: $2a
    nop                                           ; $40f7: $00
    jr nz, jr_0b0_4161                            ; $40f8: $20 $67

    db $10                                        ; $40fa: $10
    ld l, c                                       ; $40fb: $69
    ld a, [hl+]                                   ; $40fc: $2a
    daa                                           ; $40fd: $27
    ld e, $27                                     ; $40fe: $1e $27
    ld [hl+], a                                   ; $4100: $22
    nop                                           ; $4101: $00
    nop                                           ; $4102: $00
    rst $38                                       ; $4103: $ff
    ld a, a                                       ; $4104: $7f
    ld l, c                                       ; $4105: $69
    ld a, [hl+]                                   ; $4106: $2a
    nop                                           ; $4107: $00
    jr nz, jr_0b0_410a                            ; $4108: $20 $00

jr_0b0_410a:
    nop                                           ; $410a: $00
    nop                                           ; $410b: $00
    jr nz, @+$6b                                  ; $410c: $20 $69

    ld a, [hl+]                                   ; $410e: $2a
    nop                                           ; $410f: $00
    jr nz, jr_0b0_4112                            ; $4110: $20 $00

jr_0b0_4112:
    jr nz, jr_0b0_4114                            ; $4112: $20 $00

jr_0b0_4114:
    jr nz, jr_0b0_417f                            ; $4114: $20 $69

    ld a, [hl+]                                   ; $4116: $2a
    nop                                           ; $4117: $00
    jr nz, jr_0b0_411a                            ; $4118: $20 $00

jr_0b0_411a:
    jr nz, @+$01                                  ; $411a: $20 $ff

    ld a, a                                       ; $411c: $7f
    ld l, c                                       ; $411d: $69
    ld a, [hl+]                                   ; $411e: $2a
    nop                                           ; $411f: $00
    jr nz, jr_0b0_4122                            ; $4120: $20 $00

jr_0b0_4122:
    nop                                           ; $4122: $00
    rst $38                                       ; $4123: $ff
    ld a, a                                       ; $4124: $7f
    nop                                           ; $4125: $00
    jr nz, jr_0b0_4128                            ; $4126: $20 $00

jr_0b0_4128:
    jr nz, jr_0b0_416e                            ; $4128: $20 $44

    ld [$49f6], sp                                ; $412a: $08 $f6 $49
    ld l, c                                       ; $412d: $69
    ld a, [hl+]                                   ; $412e: $2a
    rst $38                                       ; $412f: $ff
    ld a, a                                       ; $4130: $7f
    xor b                                         ; $4131: $a8
    jr @+$1f                                      ; $4132: $18 $1d

    jr nz, jr_0b0_417e                            ; $4134: $20 $48

    ld h, $34                                     ; $4136: $26 $34
    ld c, d                                       ; $4138: $4a
    nop                                           ; $4139: $00
    nop                                           ; $413a: $00
    rst $38                                       ; $413b: $ff
    ld a, a                                       ; $413c: $7f
    ld c, b                                       ; $413d: $48
    ld h, $68                                     ; $413e: $26 $68
    ld h, $00                                     ; $4140: $26 $00
    nop                                           ; $4142: $00
    rst $38                                       ; $4143: $ff
    ld a, a                                       ; $4144: $7f
    nop                                           ; $4145: $00
    jr nz, jr_0b0_41b0                            ; $4146: $20 $68

    ld h, $00                                     ; $4148: $26 $00

jr_0b0_414a:
    jr nz, @+$01                                  ; $414a: $20 $ff

    ld a, a                                       ; $414c: $7f
    nop                                           ; $414d: $00
    jr nz, jr_0b0_41b8                            ; $414e: $20 $68

    ld h, $00                                     ; $4150: $26 $00
    jr nz, jr_0b0_414a                            ; $4152: $20 $f6

    ld c, c                                       ; $4154: $49
    ld l, c                                       ; $4155: $69
    ld a, [hl+]                                   ; $4156: $2a
    rst $38                                       ; $4157: $ff
    ld a, a                                       ; $4158: $7f
    nop                                           ; $4159: $00
    nop                                           ; $415a: $00

jr_0b0_415b:
    rst $38                                       ; $415b: $ff
    ld a, a                                       ; $415c: $7f
    nop                                           ; $415d: $00
    jr nz, @+$01                                  ; $415e: $20 $ff

    ld a, a                                       ; $4160: $7f

jr_0b0_4161:
    ld b, l                                       ; $4161: $45
    inc c                                         ; $4162: $0c
    dec d                                         ; $4163: $15
    ld b, [hl]                                    ; $4164: $46
    dec e                                         ; $4165: $1d
    jr nz, @-$33                                  ; $4166: $20 $cb

    jr nz, jr_0b0_41b4                            ; $4168: $20 $4a

    inc c                                         ; $416a: $0c
    sbc e                                         ; $416b: $9b
    jr z, @-$21                                   ; $416c: $28 $dd

jr_0b0_416e:
    ld d, c                                       ; $416e: $51
    ld c, b                                       ; $416f: $48
    ld [hl+], a                                   ; $4170: $22
    ld b, a                                       ; $4171: $47
    ld [hl+], a                                   ; $4172: $22
    ld c, b                                       ; $4173: $48
    ld [hl+], a                                   ; $4174: $22
    ld c, b                                       ; $4175: $48
    ld h, $48                                     ; $4176: $26 $48
    ld [hl+], a                                   ; $4178: $22
    nop                                           ; $4179: $00
    nop                                           ; $417a: $00
    rst $38                                       ; $417b: $ff
    ld a, a                                       ; $417c: $7f
    ld b, a                                       ; $417d: $47

jr_0b0_417e:
    ld [hl+], a                                   ; $417e: $22

jr_0b0_417f:
    nop                                           ; $417f: $00
    jr nz, jr_0b0_4182                            ; $4180: $20 $00

jr_0b0_4182:
    jr nz, @+$01                                  ; $4182: $20 $ff

jr_0b0_4184:
    ld a, a                                       ; $4184: $7f
    ld b, a                                       ; $4185: $47
    ld [hl+], a                                   ; $4186: $22
    nop                                           ; $4187: $00
    jr nz, jr_0b0_418a                            ; $4188: $20 $00

jr_0b0_418a:
    jr nz, jr_0b0_41a1                            ; $418a: $20 $15

    ld b, [hl]                                    ; $418c: $46
    dec e                                         ; $418d: $1d
    jr nz, jr_0b0_415b                            ; $418e: $20 $cb

    jr nz, jr_0b0_4192                            ; $4190: $20 $00

jr_0b0_4192:
    nop                                           ; $4192: $00
    rst $38                                       ; $4193: $ff
    ld a, a                                       ; $4194: $7f
    daa                                           ; $4195: $27
    ld [hl+], a                                   ; $4196: $22
    inc hl                                        ; $4197: $23
    jr jr_0b0_4184                                ; $4198: $18 $ea

    jr nz, jr_0b0_41fa                            ; $419a: $20 $5e

    ld b, l                                       ; $419c: $45
    dec e                                         ; $419d: $1d
    jr nz, jr_0b0_41da                            ; $419e: $20 $3a

    ld d, [hl]                                    ; $41a0: $56

jr_0b0_41a1:
    ld [hl], c                                    ; $41a1: $71
    inc d                                         ; $41a2: $14
    ld d, a                                       ; $41a3: $57
    dec a                                         ; $41a4: $3d
    ld e, [hl]                                    ; $41a5: $5e
    ld l, $79                                     ; $41a6: $2e $79
    ld e, [hl]                                    ; $41a8: $5e
    daa                                           ; $41a9: $27
    ld e, $27                                     ; $41aa: $1e $27
    ld [hl+], a                                   ; $41ac: $22
    ld e, [hl]                                    ; $41ad: $5e
    ld l, $79                                     ; $41ae: $2e $79

jr_0b0_41b0:
    ld e, [hl]                                    ; $41b0: $5e
    nop                                           ; $41b1: $00
    nop                                           ; $41b2: $00
    rst $38                                       ; $41b3: $ff

jr_0b0_41b4:
    ld a, a                                       ; $41b4: $7f
    daa                                           ; $41b5: $27
    ld e, $27                                     ; $41b6: $1e $27

jr_0b0_41b8:
    ld [hl+], a                                   ; $41b8: $22
    nop                                           ; $41b9: $00
    nop                                           ; $41ba: $00
    nop                                           ; $41bb: $00
    jr nz, @+$29                                  ; $41bc: $20 $27

    ld e, $27                                     ; $41be: $1e $27
    ld [hl+], a                                   ; $41c0: $22
    nop                                           ; $41c1: $00
    nop                                           ; $41c2: $00
    rst $38                                       ; $41c3: $ff
    ld a, a                                       ; $41c4: $7f
    nop                                           ; $41c5: $00
    jr nz, jr_0b0_4202                            ; $41c6: $20 $3a

    ld d, [hl]                                    ; $41c8: $56
    nop                                           ; $41c9: $00
    nop                                           ; $41ca: $00
    rst $38                                       ; $41cb: $ff
    ld a, a                                       ; $41cc: $7f
    ld h, $1e                                     ; $41cd: $26 $1e
    adc b                                         ; $41cf: $88
    inc d                                         ; $41d0: $14
    adc c                                         ; $41d1: $89

jr_0b0_41d2:
    jr jr_0b0_41d2                                ; $41d2: $18 $fe

    ld c, c                                       ; $41d4: $49
    ld a, c                                       ; $41d5: $79
    inc h                                         ; $41d6: $24
    ld e, a                                       ; $41d7: $5f
    ld e, e                                       ; $41d8: $5b
    sub e                                         ; $41d9: $93

jr_0b0_41da:
    jr jr_0b0_423a                                ; $41da: $18 $5e

    ld l, $51                                     ; $41dc: $2e $51
    dec l                                         ; $41de: $2d
    ld e, a                                       ; $41df: $5f
    ld e, e                                       ; $41e0: $5b
    ld h, $1a                                     ; $41e1: $26 $1a
    jp z, Jump_000_261c                           ; $41e3: $ca $1c $26

    ld e, $5f                                     ; $41e6: $1e $5f
    ld e, e                                       ; $41e8: $5b
    nop                                           ; $41e9: $00
    nop                                           ; $41ea: $00
    ld l, l                                       ; $41eb: $6d
    ld a, d                                       ; $41ec: $7a
    ld h, $1a                                     ; $41ed: $26 $1a
    rst $38                                       ; $41ef: $ff
    ld a, a                                       ; $41f0: $7f
    nop                                           ; $41f1: $00
    nop                                           ; $41f2: $00
    rst $38                                       ; $41f3: $ff
    ld a, a                                       ; $41f4: $7f
    nop                                           ; $41f5: $00
    jr nz, @+$01                                  ; $41f6: $20 $ff

    ld a, a                                       ; $41f8: $7f
    nop                                           ; $41f9: $00

jr_0b0_41fa:
    nop                                           ; $41fa: $00
    rst $38                                       ; $41fb: $ff
    ld a, a                                       ; $41fc: $7f
    nop                                           ; $41fd: $00
    jr nz, jr_0b0_425f                            ; $41fe: $20 $5f

    ld e, e                                       ; $4200: $5b
    nop                                           ; $4201: $00

jr_0b0_4202:
    nop                                           ; $4202: $00
    ld b, $1a                                     ; $4203: $06 $1a
    inc d                                         ; $4205: $14
    ld b, [hl]                                    ; $4206: $46
    ld h, [hl]                                    ; $4207: $66
    db $10                                        ; $4208: $10
    jr jr_0b0_4223                                ; $4209: $18 $18

    sbc $51                                       ; $420b: $de $51
    ld d, d                                       ; $420d: $52
    add hl, hl                                    ; $420e: $29
    ld e, a                                       ; $420f: $5f
    ld e, e                                       ; $4210: $5b
    ld c, [hl]                                    ; $4211: $4e
    add hl, hl                                    ; $4212: $29
    ld e, a                                       ; $4213: $5f
    ld e, e                                       ; $4214: $5b
    sbc $51                                       ; $4215: $de $51
    ld de, $053a                                  ; $4217: $11 $3a $05
    ld a, [de]                                    ; $421a: $1a
    sub b                                         ; $421b: $90
    add hl, sp                                    ; $421c: $39
    adc b                                         ; $421d: $88
    inc d                                         ; $421e: $14
    scf                                           ; $421f: $37
    ld c, [hl]                                    ; $4220: $4e
    dec b                                         ; $4221: $05
    ld a, [de]                                    ; $4222: $1a

jr_0b0_4223:
    pop hl                                        ; $4223: $e1
    ld [hl], h                                    ; $4224: $74
    cp d                                          ; $4225: $ba
    ld hl, $516a                                  ; $4226: $21 $6a $51
    nop                                           ; $4229: $00
    nop                                           ; $422a: $00
    rst $38                                       ; $422b: $ff
    ld a, a                                       ; $422c: $7f
    nop                                           ; $422d: $00
    jr nz, jr_0b0_4235                            ; $422e: $20 $05

    ld a, [de]                                    ; $4230: $1a
    nop                                           ; $4231: $00
    nop                                           ; $4232: $00
    rst $38                                       ; $4233: $ff
    ld a, a                                       ; $4234: $7f

jr_0b0_4235:
    dec b                                         ; $4235: $05
    ld d, $00                                     ; $4236: $16 $00
    jr nz, jr_0b0_427f                            ; $4238: $20 $45

jr_0b0_423a:
    inc c                                         ; $423a: $0c
    or d                                          ; $423b: $b2
    add hl, sp                                    ; $423c: $39
    dec b                                         ; $423d: $05
    ld d, $58                                     ; $423e: $16 $58
    ld d, d                                       ; $4240: $52
    inc c                                         ; $4241: $0c
    ld hl, $3a1e                                  ; $4242: $21 $1e $3a
    sbc [hl]                                      ; $4245: $9e
    ld h, a                                       ; $4246: $67
    halt                                          ; $4247: $76
    inc e                                         ; $4248: $1c
    add d                                         ; $4249: $82
    ld e, h                                       ; $424a: $5c
    ld e, [hl]                                    ; $424b: $5e
    ld l, $4e                                     ; $424c: $2e $4e
    add hl, hl                                    ; $424e: $29
    ld a, [hl]                                    ; $424f: $7e
    ld e, a                                       ; $4250: $5f
    push hl                                       ; $4251: $e5
    dec d                                         ; $4252: $15
    ld [hl], b                                    ; $4253: $70
    ld sp, $1488                                  ; $4254: $31 $88 $14
    push de                                       ; $4257: $d5
    ld b, c                                       ; $4258: $41
    inc h                                         ; $4259: $24
    ld l, c                                       ; $425a: $69
    ei                                            ; $425b: $fb
    dec h                                         ; $425c: $25
    ld a, [hl-]                                   ; $425d: $3a
    ld e, e                                       ; $425e: $5b

jr_0b0_425f:
    push hl                                       ; $425f: $e5
    dec d                                         ; $4260: $15
    nop                                           ; $4261: $00
    nop                                           ; $4262: $00
    rst $38                                       ; $4263: $ff
    ld a, a                                       ; $4264: $7f
    push hl                                       ; $4265: $e5
    dec d                                         ; $4266: $15
    nop                                           ; $4267: $00
    jr nz, jr_0b0_426a                            ; $4268: $20 $00

jr_0b0_426a:
    nop                                           ; $426a: $00
    rst $38                                       ; $426b: $ff
    ld a, a                                       ; $426c: $7f
    db $e4                                        ; $426d: $e4
    ld de, $15e5                                  ; $426e: $11 $e5 $15
    ld b, l                                       ; $4271: $45
    ld [$39b2], sp                                ; $4272: $08 $b2 $39
    db $e4                                        ; $4275: $e4
    ld de, $4a37                                  ; $4276: $11 $37 $4a
    jp nz, $3b60                                  ; $4279: $c2 $60 $3b

    ld [hl], $7e                                  ; $427c: $36 $7e
    ld h, e                                       ; $427e: $63

jr_0b0_427f:
    jp z, Jump_0b0_4e18                           ; $427f: $ca $18 $4e

    add hl, hl                                    ; $4282: $29
    ld e, a                                       ; $4283: $5f
    ld e, e                                       ; $4284: $5b
    dec d                                         ; $4285: $15
    ld c, [hl]                                    ; $4286: $4e
    ld e, [hl]                                    ; $4287: $5e
    ld l, $e4                                     ; $4288: $2e $e4
    ld de, $1019                                  ; $428a: $11 $19 $10
    rra                                           ; $428d: $1f
    ld e, [hl]                                    ; $428e: $5e
    xor b                                         ; $428f: $a8
    inc d                                         ; $4290: $14
    adc c                                         ; $4291: $89
    dec [hl]                                      ; $4292: $35
    ld e, [hl]                                    ; $4293: $5e
    ld l, $56                                     ; $4294: $2e $56
    dec d                                         ; $4296: $15
    inc a                                         ; $4297: $3c
    ld d, a                                       ; $4298: $57
    nop                                           ; $4299: $00
    nop                                           ; $429a: $00
    rst $38                                       ; $429b: $ff
    ld a, a                                       ; $429c: $7f
    db $e4                                        ; $429d: $e4
    ld de, $2000                                  ; $429e: $11 $00 $20
    nop                                           ; $42a1: $00
    nop                                           ; $42a2: $00
    rst $38                                       ; $42a3: $ff
    ld a, a                                       ; $42a4: $7f

jr_0b0_42a5:
    db $e4                                        ; $42a5: $e4
    ld de, $2000                                  ; $42a6: $11 $00 $20
    db $e4                                        ; $42a9: $e4
    ld de, $39b2                                  ; $42aa: $11 $b2 $39
    ld h, a                                       ; $42ad: $67
    db $10                                        ; $42ae: $10
    ld [hl], $4a                                  ; $42af: $36 $4a
    dec d                                         ; $42b1: $15
    ld a, $dc                                     ; $42b2: $3e $dc
    ld l, d                                       ; $42b4: $6a
    ld e, [hl]                                    ; $42b5: $5e
    ld l, $5f                                     ; $42b6: $2e $5f
    ld e, e                                       ; $42b8: $5b
    cp [hl]                                       ; $42b9: $be
    jr nc, jr_0b0_431b                            ; $42ba: $30 $5f

    ld e, e                                       ; $42bc: $5b
    ld e, [hl]                                    ; $42bd: $5e
    ld l, $be                                     ; $42be: $2e $be
    ld [hl], e                                    ; $42c0: $73
    jp Jump_000_190d                              ; $42c1: $c3 $0d $19


    db $10                                        ; $42c4: $10
    adc b                                         ; $42c5: $88
    inc d                                         ; $42c6: $14
    ld e, [hl]                                    ; $42c7: $5e
    ld l, $4c                                     ; $42c8: $2e $4c
    ld sp, $2e5e                                  ; $42ca: $31 $5e $2e
    ld e, [hl]                                    ; $42cd: $5e
    ld d, a                                       ; $42ce: $57
    ld d, [hl]                                    ; $42cf: $56
    add hl, de                                    ; $42d0: $19
    nop                                           ; $42d1: $00
    nop                                           ; $42d2: $00
    rst $38                                       ; $42d3: $ff

jr_0b0_42d4:
    ld a, a                                       ; $42d4: $7f
    jp Jump_000_000d                              ; $42d5: $c3 $0d $00


    jr nz, jr_0b0_42da                            ; $42d8: $20 $00

jr_0b0_42da:
    nop                                           ; $42da: $00
    rst $38                                       ; $42db: $ff

jr_0b0_42dc:
    ld a, a                                       ; $42dc: $7f
    jp Jump_000_000d                              ; $42dd: $c3 $0d $00


    jr nz, jr_0b0_42a5                            ; $42e0: $20 $c3

    dec c                                         ; $42e2: $0d
    ld [hl], b                                    ; $42e3: $70
    dec [hl]                                      ; $42e4: $35
    ld h, a                                       ; $42e5: $67
    db $10                                        ; $42e6: $10
    sbc c                                         ; $42e7: $99
    ld e, d                                       ; $42e8: $5a
    cp $31                                        ; $42e9: $fe $31
    ld e, a                                       ; $42eb: $5f
    ld e, e                                       ; $42ec: $5b
    ld e, $56                                     ; $42ed: $1e $56
    rst $18                                       ; $42ef: $df
    jr nc, jr_0b0_4360                            ; $42f0: $30 $6e

    inc e                                         ; $42f2: $1c

jr_0b0_42f3:
    ld e, [hl]                                    ; $42f3: $5e
    ld l, $fa                                     ; $42f4: $2e $fa
    jr z, @+$61                                   ; $42f6: $28 $5f

    ld e, e                                       ; $42f8: $5b
    ld h, [hl]                                    ; $42f9: $66

jr_0b0_42fa:
    db $10                                        ; $42fa: $10
    ld [hl], $15                                  ; $42fb: $36 $15
    jp nz, Jump_0b0_5e09                          ; $42fd: $c2 $09 $5e

    ld l, $6a                                     ; $4300: $2e $6a
    ld b, c                                       ; $4302: $41
    ld a, [hl]                                    ; $4303: $7e
    ld e, e                                       ; $4304: $5b
    ld d, [hl]                                    ; $4305: $56
    dec d                                         ; $4306: $15
    ld a, [hl-]                                   ; $4307: $3a
    ld l, $00                                     ; $4308: $2e $00
    nop                                           ; $430a: $00

jr_0b0_430b:
    rst $38                                       ; $430b: $ff
    ld a, a                                       ; $430c: $7f
    jp nz, Jump_000_0009                          ; $430d: $c2 $09 $00

    jr nz, jr_0b0_4312                            ; $4310: $20 $00

jr_0b0_4312:
    nop                                           ; $4312: $00
    rst $38                                       ; $4313: $ff
    ld a, a                                       ; $4314: $7f
    jp nz, Jump_000_0009                          ; $4315: $c2 $09 $00

    jr nz, jr_0b0_42dc                            ; $4318: $20 $c2

    add hl, bc                                    ; $431a: $09

jr_0b0_431b:
    sub c                                         ; $431b: $91
    dec [hl]                                      ; $431c: $35
    ld h, a                                       ; $431d: $67
    db $10                                        ; $431e: $10
    scf                                           ; $431f: $37
    ld c, [hl]                                    ; $4320: $4e
    ld h, h                                       ; $4321: $64
    db $10                                        ; $4322: $10
    ld e, [hl]                                    ; $4323: $5e
    ld l, $d7                                     ; $4324: $2e $d7
    db $10                                        ; $4326: $10
    ld e, a                                       ; $4327: $5f
    ld e, e                                       ; $4328: $5b
    ld b, h                                       ; $4329: $44
    inc c                                         ; $432a: $0c

jr_0b0_432b:
    ld a, $57                                     ; $432b: $3e $57
    ld [hl], $15                                  ; $432d: $36 $15
    rst $18                                       ; $432f: $df
    jr nc, jr_0b0_42d4                            ; $4330: $30 $a2

    add hl, bc                                    ; $4332: $09
    adc b                                         ; $4333: $88
    inc d                                         ; $4334: $14
    ld c, l                                       ; $4335: $4d
    ld [$09c2], sp                                ; $4336: $08 $c2 $09

jr_0b0_4339:
    add a                                         ; $4339: $87
    dec h                                         ; $433a: $25
    ld a, [hl]                                    ; $433b: $7e
    ld [hl-], a                                   ; $433c: $32
    ld [hl], $15                                  ; $433d: $36 $15
    ld e, l                                       ; $433f: $5d
    ld e, e                                       ; $4340: $5b
    nop                                           ; $4341: $00
    inc e                                         ; $4342: $1c
    ld l, a                                       ; $4343: $6f
    ld [hl-], a                                   ; $4344: $32
    ld [hl], $15                                  ; $4345: $36 $15
    rst $18                                       ; $4347: $df
    ld [hl], e                                    ; $4348: $73
    nop                                           ; $4349: $00
    nop                                           ; $434a: $00
    rst $38                                       ; $434b: $ff
    ld a, a                                       ; $434c: $7f

Call_0b0_434d:
    and c                                         ; $434d: $a1
    dec b                                         ; $434e: $05
    nop                                           ; $434f: $00
    jr nz, jr_0b0_42f3                            ; $4350: $20 $a1

    dec b                                         ; $4352: $05
    ld h, a                                       ; $4353: $67
    db $10                                        ; $4354: $10
    add a                                         ; $4355: $87
    jr jr_0b0_42fa                                ; $4356: $18 $a2

    add hl, bc                                    ; $4358: $09
    ld b, l                                       ; $4359: $45
    inc c                                         ; $435a: $0c
    ld e, [hl]                                    ; $435b: $5e
    ld l, $16                                     ; $435c: $2e $16
    dec e                                         ; $435e: $1d
    ld e, a                                       ; $435f: $5f

jr_0b0_4360:
    ld e, e                                       ; $4360: $5b
    di                                            ; $4361: $f3
    jr jr_0b0_43a0                                ; $4362: $18 $3c

    ld a, [hl-]                                   ; $4364: $3a
    ld a, $67                                     ; $4365: $3e $67
    rst $18                                       ; $4367: $df
    jr nc, jr_0b0_430b                            ; $4368: $30 $a1

    dec b                                         ; $436a: $05
    ld c, h                                       ; $436b: $4c
    ld [$0c7c], sp                                ; $436c: $08 $7c $0c
    sub c                                         ; $436f: $91

jr_0b0_4370:
    db $10                                        ; $4370: $10
    and c                                         ; $4371: $a1
    dec b                                         ; $4372: $05
    call z, $7e55                                 ; $4373: $cc $55 $7e
    ld e, e                                       ; $4376: $5b
    ld [hl], $15                                  ; $4377: $36 $15
    add b                                         ; $4379: $80
    nop                                           ; $437a: $00
    ld e, [hl]                                    ; $437b: $5e
    ld l, $00                                     ; $437c: $2e $00
    jr nz, @-$40                                  ; $437e: $20 $be

    ld [hl], e                                    ; $4380: $73
    nop                                           ; $4381: $00
    nop                                           ; $4382: $00
    rst $38                                       ; $4383: $ff
    ld a, a                                       ; $4384: $7f
    and c                                         ; $4385: $a1
    dec b                                         ; $4386: $05
    nop                                           ; $4387: $00
    jr nz, jr_0b0_432b                            ; $4388: $20 $a1

    dec b                                         ; $438a: $05
    ld b, [hl]                                    ; $438b: $46
    db $10                                        ; $438c: $10
    ld c, l                                       ; $438d: $4d
    ld [$1888], sp                                ; $438e: $08 $88 $18
    ld d, b                                       ; $4391: $50
    db $10                                        ; $4392: $10
    sbc e                                         ; $4393: $9b
    ld l, e                                       ; $4394: $6b
    sub [hl]                                      ; $4395: $96
    dec a                                         ; $4396: $3d
    rst $18                                       ; $4397: $df
    jr nc, jr_0b0_43a2                            ; $4398: $30 $08

    inc b                                         ; $439a: $04
    sbc c                                         ; $439b: $99
    ld b, [hl]                                    ; $439c: $46
    inc d                                         ; $439d: $14
    add hl, de                                    ; $439e: $19
    sbc a                                         ; $439f: $9f

jr_0b0_43a0:
    inc h                                         ; $43a0: $24
    add c                                         ; $43a1: $81

jr_0b0_43a2:
    ld bc, $77de                                  ; $43a2: $01 $de $77
    ld c, l                                       ; $43a5: $4d
    ld [$1098], sp                                ; $43a6: $08 $98 $10
    add c                                         ; $43a9: $81
    ld bc, $1536                                  ; $43aa: $01 $36 $15
    ld e, $4f                                     ; $43ad: $1e $4f
    add [hl]                                      ; $43af: $86
    inc l                                         ; $43b0: $2c
    nop                                           ; $43b1: $00
    nop                                           ; $43b2: $00
    rst $38                                       ; $43b3: $ff
    ld a, a                                       ; $43b4: $7f
    nop                                           ; $43b5: $00
    jr nz, jr_0b0_4339                            ; $43b6: $20 $81

    ld bc, $0000                                  ; $43b8: $01 $00 $00
    rst $38                                       ; $43bb: $ff
    ld a, a                                       ; $43bc: $7f
    add b                                         ; $43bd: $80
    ld bc, $2000                                  ; $43be: $01 $00 $20
    add c                                         ; $43c1: $81
    ld bc, $1098                                  ; $43c2: $01 $98 $10
    ld c, l                                       ; $43c5: $4d
    ld [$109d], sp                                ; $43c6: $08 $9d $10
    ld c, a                                       ; $43c9: $4f
    ld [$5718], sp                                ; $43ca: $08 $18 $57
    cp h                                          ; $43cd: $bc
    inc d                                         ; $43ce: $14
    sbc $73                                       ; $43cf: $de $73
    sub $3d                                       ; $43d1: $d6 $3d
    sbc l                                         ; $43d3: $9d
    ld h, e                                       ; $43d4: $63
    rst $38                                       ; $43d5: $ff
    ld a, a                                       ; $43d6: $7f
    cp c                                          ; $43d7: $b9
    ld c, d                                       ; $43d8: $4a
    add b                                         ; $43d9: $80

jr_0b0_43da:
    ld bc, $637d                                  ; $43da: $01 $7d $63
    rst $10                                       ; $43dd: $d7
    jr z, jr_0b0_4415                             ; $43de: $28 $35

    ld a, [hl-]                                   ; $43e0: $3a
    add b                                         ; $43e1: $80
    ld bc, $1536                                  ; $43e2: $01 $36 $15
    ld a, [hl]                                    ; $43e5: $7e
    ld e, e                                       ; $43e6: $5b
    ld e, a                                       ; $43e7: $5f
    ld e, e                                       ; $43e8: $5b
    nop                                           ; $43e9: $00
    nop                                           ; $43ea: $00
    rst $38                                       ; $43eb: $ff
    ld a, a                                       ; $43ec: $7f
    nop                                           ; $43ed: $00
    jr nz, jr_0b0_4370                            ; $43ee: $20 $80

    ld bc, $0000                                  ; $43f0: $01 $00 $00
    rst $38                                       ; $43f3: $ff
    ld a, a                                       ; $43f4: $7f
    ld [hl], b                                    ; $43f5: $70
    ld [$2000], sp                                ; $43f6: $08 $00 $20
    ld c, [hl]                                    ; $43f9: $4e
    ld [$18ba], sp                                ; $43fa: $08 $ba $18
    ld d, l                                       ; $43fd: $55
    ld [$109e], sp                                ; $43fe: $08 $9e $10
    ld c, d                                       ; $4401: $4a
    ld [$001a], sp                                ; $4402: $08 $1a $00
    ld d, h                                       ; $4405: $54
    inc c                                         ; $4406: $0c
    sbc l                                         ; $4407: $9d
    db $10                                        ; $4408: $10
    halt                                          ; $4409: $76
    inc d                                         ; $440a: $14
    ld a, d                                       ; $440b: $7a
    ld h, e                                       ; $440c: $63
    ld [hl], l                                    ; $440d: $75
    add hl, sp                                    ; $440e: $39
    ccf                                           ; $440f: $3f
    ld e, [hl]                                    ; $4410: $5e

jr_0b0_4411:
    add b                                         ; $4411: $80
    ld bc, $45ba                                  ; $4412: $01 $ba $45

jr_0b0_4415:
    or h                                          ; $4415: $b4
    inc e                                         ; $4416: $1c
    sbc $5e                                       ; $4417: $de $5e
    add b                                         ; $4419: $80
    ld bc, $399d                                  ; $441a: $01 $9d $39
    ld [hl], $15                                  ; $441d: $36 $15
    ld e, a                                       ; $441f: $5f
    ld e, e                                       ; $4420: $5b
    nop                                           ; $4421: $00
    nop                                           ; $4422: $00
    rst $38                                       ; $4423: $ff
    ld a, a                                       ; $4424: $7f
    nop                                           ; $4425: $00
    jr nz, jr_0b0_4487                            ; $4426: $20 $5f

    ld e, e                                       ; $4428: $5b
    nop                                           ; $4429: $00
    nop                                           ; $442a: $00
    ld [hl], c                                    ; $442b: $71
    ld [$18bf], sp                                ; $442c: $08 $bf $18
    nop                                           ; $442f: $00
    jr nz, jr_0b0_43da                            ; $4430: $20 $a8

    inc d                                         ; $4432: $14
    rst $38                                       ; $4433: $ff
    ld a, a                                       ; $4434: $7f
    ld a, e                                       ; $4435: $7b
    db $10                                        ; $4436: $10
    push de                                       ; $4437: $d5
    dec [hl]                                      ; $4438: $35
    ld a, [hl+]                                   ; $4439: $2a
    inc b                                         ; $443a: $04
    sbc e                                         ; $443b: $9b
    db $10                                        ; $443c: $10
    ld [hl], c                                    ; $443d: $71
    inc c                                         ; $443e: $0c
    ld a, [hl]                                    ; $443f: $7e
    inc c                                         ; $4440: $0c
    inc sp                                        ; $4441: $33
    inc c                                         ; $4442: $0c
    ret c                                         ; $4443: $d8

    ld b, l                                       ; $4444: $45
    rla                                           ; $4445: $17
    dec l                                         ; $4446: $2d
    ccf                                           ; $4447: $3f
    ld e, d                                       ; $4448: $5a
    rla                                           ; $4449: $17
    inc b                                         ; $444a: $04
    sbc h                                         ; $444b: $9c
    dec a                                         ; $444c: $3d
    ld a, [hl]                                    ; $444d: $7e
    ld e, [hl]                                    ; $444e: $5e
    reti                                          ; $444f: $d9


    jr z, jr_0b0_4452                             ; $4450: $28 $00

jr_0b0_4452:
    nop                                           ; $4452: $00
    dec [hl]                                      ; $4453: $35
    ld b, d                                       ; $4454: $42
    ld e, [hl]                                    ; $4455: $5e
    ld e, a                                       ; $4456: $5f
    or c                                          ; $4457: $b1
    inc c                                         ; $4458: $0c
    nop                                           ; $4459: $00
    nop                                           ; $445a: $00
    rst $38                                       ; $445b: $ff
    ld a, a                                       ; $445c: $7f
    nop                                           ; $445d: $00
    jr nz, jr_0b0_4411                            ; $445e: $20 $b1

    inc c                                         ; $4460: $0c
    nop                                           ; $4461: $00
    nop                                           ; $4462: $00
    rst $38                                       ; $4463: $ff
    ld a, a                                       ; $4464: $7f
    sub h                                         ; $4465: $94
    inc c                                         ; $4466: $0c
    nop                                           ; $4467: $00
    jr nz, jr_0b0_4411                            ; $4468: $20 $a7

    db $10                                        ; $446a: $10
    rst $38                                       ; $446b: $ff
    ld a, a                                       ; $446c: $7f
    ld [hl], a                                    ; $446d: $77
    jr jr_0b0_44c5                                ; $446e: $18 $55

    ld c, d                                       ; $4470: $4a
    ld a, [bc]                                    ; $4471: $0a
    nop                                           ; $4472: $00
    rst $38                                       ; $4473: $ff
    ld a, a                                       ; $4474: $7f
    ld [hl], e                                    ; $4475: $73
    dec l                                         ; $4476: $2d
    ld e, $00                                     ; $4477: $1e $00
    ld d, [hl]                                    ; $4479: $56
    inc d                                         ; $447a: $14
    push de                                       ; $447b: $d5
    ld b, l                                       ; $447c: $45
    cp $51                                        ; $447d: $fe $51
    ld a, a                                       ; $447f: $7f
    ld e, [hl]                                    ; $4480: $5e
    ld c, [hl]                                    ; $4481: $4e

jr_0b0_4482:
    inc b                                         ; $4482: $04
    ld e, b                                       ; $4483: $58
    ld d, [hl]                                    ; $4484: $56
    ld a, b                                       ; $4485: $78
    inc e                                         ; $4486: $1c

jr_0b0_4487:
    rst $38                                       ; $4487: $ff
    ld a, a                                       ; $4488: $7f
    ld h, $04                                     ; $4489: $26 $04
    cp $52                                        ; $448b: $fe $52
    ld e, l                                       ; $448d: $5d
    ld [$7fff], sp                                ; $448e: $08 $ff $7f
    nop                                           ; $4491: $00
    nop                                           ; $4492: $00
    rst $38                                       ; $4493: $ff
    ld a, a                                       ; $4494: $7f
    nop                                           ; $4495: $00
    jr nz, @+$01                                  ; $4496: $20 $ff

    ld a, a                                       ; $4498: $7f
    nop                                           ; $4499: $00
    nop                                           ; $449a: $00
    dec a                                         ; $449b: $3d
    ld b, c                                       ; $449c: $41

jr_0b0_449d:
    rst $38                                       ; $449d: $ff
    ld a, a                                       ; $449e: $7f
    nop                                           ; $449f: $00
    jr nz, jr_0b0_44bb                            ; $44a0: $20 $19

    inc c                                         ; $44a2: $0c
    ld a, h                                       ; $44a3: $7c
    ld b, c                                       ; $44a4: $41
    cp a                                          ; $44a5: $bf
    ld h, [hl]                                    ; $44a6: $66
    cp d                                          ; $44a7: $ba
    inc l                                         ; $44a8: $2c
    add hl, sp                                    ; $44a9: $39
    inc d                                         ; $44aa: $14
    rst $38                                       ; $44ab: $ff
    ld a, a                                       ; $44ac: $7f
    ld d, h                                       ; $44ad: $54
    ld sp, $391b                                  ; $44ae: $31 $1b $39
    cp b                                          ; $44b1: $b8
    ld b, c                                       ; $44b2: $41
    rst $38                                       ; $44b3: $ff
    ld a, a                                       ; $44b4: $7f
    db $f4                                        ; $44b5: $f4
    ld e, d                                       ; $44b6: $5a
    ld e, $56                                     ; $44b7: $1e $56
    dec hl                                        ; $44b9: $2b
    inc b                                         ; $44ba: $04

jr_0b0_44bb:
    ld d, d                                       ; $44bb: $52
    ld c, d                                       ; $44bc: $4a
    or [hl]                                       ; $44bd: $b6
    jr @+$01                                      ; $44be: $18 $ff

    ld a, a                                       ; $44c0: $7f
    nop                                           ; $44c1: $00
    nop                                           ; $44c2: $00
    cp [hl]                                       ; $44c3: $be
    ld [hl], a                                    ; $44c4: $77

jr_0b0_44c5:
    or h                                          ; $44c5: $b4
    add hl, sp                                    ; $44c6: $39
    ld a, l                                       ; $44c7: $7d
    inc c                                         ; $44c8: $0c
    nop                                           ; $44c9: $00
    nop                                           ; $44ca: $00
    nop                                           ; $44cb: $00
    jr nz, jr_0b0_4482                            ; $44cc: $20 $b4

    add hl, sp                                    ; $44ce: $39
    ld a, l                                       ; $44cf: $7d
    inc c                                         ; $44d0: $0c
    nop                                           ; $44d1: $00
    jr nz, jr_0b0_4511                            ; $44d2: $20 $3d

    ld b, c                                       ; $44d4: $41
    rst $38                                       ; $44d5: $ff
    ld d, l                                       ; $44d6: $55
    ld e, l                                       ; $44d7: $5d
    ld b, c                                       ; $44d8: $41
    ld de, $fe08                                  ; $44d9: $11 $08 $fe
    ld d, c                                       ; $44dc: $51
    ret c                                         ; $44dd: $d8

    jr z, jr_0b0_455f                             ; $44de: $28 $7f

    ld h, d                                       ; $44e0: $62
    dec d                                         ; $44e1: $15
    ld [$5a3f], sp                                ; $44e2: $08 $3f $5a
    inc a                                         ; $44e5: $3c
    add hl, sp                                    ; $44e6: $39
    rst $38                                       ; $44e7: $ff
    ld a, a                                       ; $44e8: $7f
    ld a, [bc]                                    ; $44e9: $0a
    nop                                           ; $44ea: $00
    rst $38                                       ; $44eb: $ff
    ld a, a                                       ; $44ec: $7f
    ld d, a                                       ; $44ed: $57
    add hl, sp                                    ; $44ee: $39
    ld c, h                                       ; $44ef: $4c
    ld [$084c], sp                                ; $44f0: $08 $4c $08
    ld [hl], a                                    ; $44f3: $77
    inc c                                         ; $44f4: $0c
    ld c, l                                       ; $44f5: $4d
    add hl, hl                                    ; $44f6: $29
    sbc l                                         ; $44f7: $9d
    inc d                                         ; $44f8: $14
    ld h, $04                                     ; $44f9: $26 $04
    inc a                                         ; $44fb: $3c
    ld e, e                                       ; $44fc: $5b
    sub a                                         ; $44fd: $97
    db $10                                        ; $44fe: $10
    rst $38                                       ; $44ff: $ff
    ld a, a                                       ; $4500: $7f
    nop                                           ; $4501: $00
    nop                                           ; $4502: $00
    nop                                           ; $4503: $00
    jr nz, jr_0b0_449d                            ; $4504: $20 $97

    db $10                                        ; $4506: $10
    rst $38                                       ; $4507: $ff
    ld a, a                                       ; $4508: $7f
    nop                                           ; $4509: $00
    jr nz, jr_0b0_4549                            ; $450a: $20 $3d

    ld b, c                                       ; $450c: $41
    inc a                                         ; $450d: $3c
    add hl, sp                                    ; $450e: $39
    rst $38                                       ; $450f: $ff
    ld a, a                                       ; $4510: $7f

jr_0b0_4511:
    nop                                           ; $4511: $00
    nop                                           ; $4512: $00

jr_0b0_4513:
    db $db                                        ; $4513: $db
    jr z, jr_0b0_4513                             ; $4514: $28 $fd

    ld d, l                                       ; $4516: $55
    rst $38                                       ; $4517: $ff
    ld a, a                                       ; $4518: $7f
    ld d, $0c                                     ; $4519: $16 $0c
    rst $38                                       ; $451b: $ff
    ld d, c                                       ; $451c: $51
    inc e                                         ; $451d: $1c
    dec [hl]                                      ; $451e: $35
    ld e, a                                       ; $451f: $5f
    ld e, [hl]                                    ; $4520: $5e
    ld c, l                                       ; $4521: $4d
    ld [$316e], sp                                ; $4522: $08 $6e $31
    sbc b                                         ; $4525: $98
    db $10                                        ; $4526: $10
    or $4d                                        ; $4527: $f6 $4d
    adc a                                         ; $4529: $8f
    db $10                                        ; $452a: $10
    dec a                                         ; $452b: $3d
    inc b                                         ; $452c: $04
    add hl, sp                                    ; $452d: $39
    dec h                                         ; $452e: $25
    cp [hl]                                       ; $452f: $be
    inc d                                         ; $4530: $14
    nop                                           ; $4531: $00
    nop                                           ; $4532: $00
    scf                                           ; $4533: $37
    ld [hl], $be                                  ; $4534: $36 $be
    ld l, a                                       ; $4536: $6f
    ld a, [hl+]                                   ; $4537: $2a
    inc b                                         ; $4538: $04
    nop                                           ; $4539: $00
    jr nz, @+$39                                  ; $453a: $20 $37

    ld [hl], $be                                  ; $453c: $36 $be
    ld l, a                                       ; $453e: $6f
    ld a, [hl+]                                   ; $453f: $2a
    inc b                                         ; $4540: $04
    nop                                           ; $4541: $00
    jr nz, @+$01                                  ; $4542: $20 $ff

    ld d, c                                       ; $4544: $51
    inc e                                         ; $4545: $1c
    dec [hl]                                      ; $4546: $35
    ld e, a                                       ; $4547: $5f
    ld e, [hl]                                    ; $4548: $5e

jr_0b0_4549:
    nop                                           ; $4549: $00
    nop                                           ; $454a: $00
    sbc a                                         ; $454b: $9f
    ld a, $17                                     ; $454c: $3e $17
    dec e                                         ; $454e: $1d
    rst $38                                       ; $454f: $ff
    ld a, a                                       ; $4550: $7f
    inc [hl]                                      ; $4551: $34
    dec e                                         ; $4552: $1d

jr_0b0_4553:
    ld sp, hl                                     ; $4553: $f9
    ld d, l                                       ; $4554: $55
    inc e                                         ; $4555: $1c
    dec [hl]                                      ; $4556: $35
    jr c, jr_0b0_4571                             ; $4557: $38 $18

    ld c, [hl]                                    ; $4559: $4e
    ld [$4e78], sp                                ; $455a: $08 $78 $4e
    dec de                                        ; $455d: $1b
    inc c                                         ; $455e: $0c

jr_0b0_455f:
    rst $38                                       ; $455f: $ff
    ld a, a                                       ; $4560: $7f
    ld a, c                                       ; $4561: $79
    jr jr_0b0_457a                                ; $4562: $18 $16

    ld h, a                                       ; $4564: $67
    or a                                          ; $4565: $b7
    add hl, sp                                    ; $4566: $39
    cp $7f                                        ; $4567: $fe $7f
    nop                                           ; $4569: $00
    inc b                                         ; $456a: $04
    scf                                           ; $456b: $37
    ld a, [hl-]                                   ; $456c: $3a
    sbc a                                         ; $456d: $9f
    ld l, e                                       ; $456e: $6b
    ld [hl], $15                                  ; $456f: $36 $15

jr_0b0_4571:
    nop                                           ; $4571: $00
    jr nz, @+$39                                  ; $4572: $20 $37

    ld a, [hl-]                                   ; $4574: $3a

jr_0b0_4575:
    sbc a                                         ; $4575: $9f
    ld l, e                                       ; $4576: $6b
    ld [hl], $15                                  ; $4577: $36 $15
    nop                                           ; $4579: $00

jr_0b0_457a:
    jr nz, jr_0b0_4575                            ; $457a: $20 $f9

    ld d, l                                       ; $457c: $55
    inc e                                         ; $457d: $1c
    dec [hl]                                      ; $457e: $35
    jr c, jr_0b0_4599                             ; $457f: $38 $18

    nop                                           ; $4581: $00
    ld [$3a7f], sp                                ; $4582: $08 $7f $3a
    ld [hl], $15                                  ; $4585: $36 $15
    ld a, a                                       ; $4587: $7f
    ld h, a                                       ; $4588: $67
    push af                                       ; $4589: $f5
    inc d                                         ; $458a: $14
    sbc a                                         ; $458b: $9f
    ld a, [hl-]                                   ; $458c: $3a
    sub c                                         ; $458d: $91
    dec [hl]                                      ; $458e: $35
    ld e, a                                       ; $458f: $5f
    ld e, e                                       ; $4590: $5b
    jr c, @+$12                                   ; $4591: $38 $10

    rst $38                                       ; $4593: $ff
    ld a, a                                       ; $4594: $7f
    ld [hl], $4a                                  ; $4595: $36 $4a
    or $2c                                        ; $4597: $f6 $2c

jr_0b0_4599:
    jr jr_0b0_45a7                                ; $4599: $18 $0c

    ld a, l                                       ; $459b: $7d
    ld b, c                                       ; $459c: $41
    cp c                                          ; $459d: $b9
    inc h                                         ; $459e: $24
    ld e, [hl]                                    ; $459f: $5e
    ld e, [hl]                                    ; $45a0: $5e
    nop                                           ; $45a1: $00
    ld [$5b5f], sp                                ; $45a2: $08 $5f $5b
    or $10                                        ; $45a5: $f6 $10

jr_0b0_45a7:
    rst $38                                       ; $45a7: $ff
    ld a, a                                       ; $45a8: $7f
    nop                                           ; $45a9: $00
    jr nz, jr_0b0_460b                            ; $45aa: $20 $5f

    ld e, e                                       ; $45ac: $5b
    or $10                                        ; $45ad: $f6 $10
    rst $38                                       ; $45af: $ff
    ld a, a                                       ; $45b0: $7f
    nop                                           ; $45b1: $00
    jr nz, jr_0b0_4553                            ; $45b2: $20 $9f

    ld a, [hl-]                                   ; $45b4: $3a
    sub c                                         ; $45b5: $91
    dec [hl]                                      ; $45b6: $35
    ld e, a                                       ; $45b7: $5f
    ld e, e                                       ; $45b8: $5b
    nop                                           ; $45b9: $00
    nop                                           ; $45ba: $00
    ccf                                           ; $45bb: $3f
    ld e, e                                       ; $45bc: $5b
    rst $38                                       ; $45bd: $ff
    ld a, a                                       ; $45be: $7f
    nop                                           ; $45bf: $00
    jr nz, jr_0b0_45c2                            ; $45c0: $20 $00

jr_0b0_45c2:
    nop                                           ; $45c2: $00
    ccf                                           ; $45c3: $3f
    ld d, a                                       ; $45c4: $57
    ld [hl], $15                                  ; $45c5: $36 $15
    add hl, sp                                    ; $45c7: $39
    stop                                          ; $45c8: $10 $00
    nop                                           ; $45ca: $00
    rst $38                                       ; $45cb: $ff
    ld a, a                                       ; $45cc: $7f
    or $10                                        ; $45cd: $f6 $10
    rst $38                                       ; $45cf: $ff
    ld a, a                                       ; $45d0: $7f
    nop                                           ; $45d1: $00
    nop                                           ; $45d2: $00
    rst $38                                       ; $45d3: $ff
    ld a, a                                       ; $45d4: $7f
    or $10                                        ; $45d5: $f6 $10
    rst $38                                       ; $45d7: $ff
    ld a, a                                       ; $45d8: $7f
    nop                                           ; $45d9: $00
    nop                                           ; $45da: $00
    rst $38                                       ; $45db: $ff
    ld a, a                                       ; $45dc: $7f
    nop                                           ; $45dd: $00
    jr nz, @+$01                                  ; $45de: $20 $ff

    ld a, a                                       ; $45e0: $7f
    nop                                           ; $45e1: $00
    jr nz, @+$01                                  ; $45e2: $20 $ff

    ld a, a                                       ; $45e4: $7f
    nop                                           ; $45e5: $00
    jr nz, @+$01                                  ; $45e6: $20 $ff

    ld a, a                                       ; $45e8: $7f
    nop                                           ; $45e9: $00
    jr nz, @+$41                                  ; $45ea: $20 $3f

    ld d, a                                       ; $45ec: $57
    ld [hl], $15                                  ; $45ed: $36 $15
    add hl, sp                                    ; $45ef: $39
    stop                                          ; $45f0: $10 $00
    nop                                           ; $45f2: $00
    rst $38                                       ; $45f3: $ff
    ld a, a                                       ; $45f4: $7f
    nop                                           ; $45f5: $00
    jr nz, jr_0b0_4631                            ; $45f6: $20 $39

    stop                                          ; $45f8: $10 $00
    nop                                           ; $45fa: $00
    rst $38                                       ; $45fb: $ff
    ld a, a                                       ; $45fc: $7f
    nop                                           ; $45fd: $00
    jr nz, jr_0b0_4639                            ; $45fe: $20 $39

    stop                                          ; $4600: $10 $00
    nop                                           ; $4602: $00
    nop                                           ; $4603: $00
    jr nz, jr_0b0_4606                            ; $4604: $20 $00

jr_0b0_4606:
    jr nz, @+$01                                  ; $4606: $20 $ff

    ld a, a                                       ; $4608: $7f
    nop                                           ; $4609: $00
    nop                                           ; $460a: $00

jr_0b0_460b:
    nop                                           ; $460b: $00
    jr nz, jr_0b0_460e                            ; $460c: $20 $00

jr_0b0_460e:
    jr nz, @+$01                                  ; $460e: $20 $ff

    ld a, a                                       ; $4610: $7f
    nop                                           ; $4611: $00
    nop                                           ; $4612: $00
    nop                                           ; $4613: $00
    jr nz, jr_0b0_4616                            ; $4614: $20 $00

jr_0b0_4616:
    jr nz, @+$01                                  ; $4616: $20 $ff

    ld a, a                                       ; $4618: $7f
    nop                                           ; $4619: $00
    jr nz, jr_0b0_461c                            ; $461a: $20 $00

jr_0b0_461c:
    jr nz, jr_0b0_461e                            ; $461c: $20 $00

jr_0b0_461e:
    jr nz, @+$01                                  ; $461e: $20 $ff

    ld a, a                                       ; $4620: $7f
    nop                                           ; $4621: $00
    jr nz, jr_0b0_4624                            ; $4622: $20 $00

jr_0b0_4624:
    jr nz, jr_0b0_4626                            ; $4624: $20 $00

jr_0b0_4626:
    jr nz, jr_0b0_462e                            ; $4626: $20 $06

    nop                                           ; $4628: $00
    nop                                           ; $4629: $00
    jr nz, jr_0b0_4636                            ; $462a: $20 $0a

    jr nz, jr_0b0_462e                            ; $462c: $20 $00

jr_0b0_462e:
    jr nz, jr_0b0_4636                            ; $462e: $20 $06

    nop                                           ; $4630: $00

jr_0b0_4631:
    nop                                           ; $4631: $00
    jr nz, jr_0b0_463e                            ; $4632: $20 $0a

    jr nz, jr_0b0_4636                            ; $4634: $20 $00

jr_0b0_4636:
    jr nz, jr_0b0_463e                            ; $4636: $20 $06

    nop                                           ; $4638: $00

jr_0b0_4639:
    nop                                           ; $4639: $00
    nop                                           ; $463a: $00
    rst $38                                       ; $463b: $ff
    ld a, a                                       ; $463c: $7f
    nop                                           ; $463d: $00

jr_0b0_463e:
    jr nz, jr_0b0_4645                            ; $463e: $20 $05

    stop                                          ; $4640: $10 $00
    jr nz, @+$01                                  ; $4642: $20 $ff

    ld a, a                                       ; $4644: $7f

jr_0b0_4645:
    nop                                           ; $4645: $00
    jr nz, jr_0b0_464d                            ; $4646: $20 $05

    stop                                          ; $4648: $10 $00
    jr nz, @+$01                                  ; $464a: $20 $ff

    ld a, a                                       ; $464c: $7f

jr_0b0_464d:
    nop                                           ; $464d: $00
    jr nz, jr_0b0_4655                            ; $464e: $20 $05

    stop                                          ; $4650: $10 $00
    jr nz, @+$01                                  ; $4652: $20 $ff

    ld a, a                                       ; $4654: $7f

jr_0b0_4655:
    nop                                           ; $4655: $00
    jr nz, @+$07                                  ; $4656: $20 $05

    stop                                          ; $4658: $10 $00
    jr nz, jr_0b0_4666                            ; $465a: $20 $0a

    jr nz, jr_0b0_465e                            ; $465c: $20 $00

jr_0b0_465e:
    jr nz, jr_0b0_4666                            ; $465e: $20 $06

    nop                                           ; $4660: $00
    nop                                           ; $4661: $00
    inc e                                         ; $4662: $1c
    ld d, a                                       ; $4663: $57
    ld c, b                                       ; $4664: $48
    rst $38                                       ; $4665: $ff

jr_0b0_4666:
    ld a, c                                       ; $4666: $79
    inc l                                         ; $4667: $2c
    inc h                                         ; $4668: $24
    ld a, [bc]                                    ; $4669: $0a
    jr nz, jr_0b0_4688                            ; $466a: $20 $1c

    ld h, l                                       ; $466c: $65
    sbc [hl]                                      ; $466d: $9e
    ld a, d                                       ; $466e: $7a
    ld a, c                                       ; $466f: $79
    ld d, b                                       ; $4670: $50
    nop                                           ; $4671: $00
    inc b                                         ; $4672: $04
    ccf                                           ; $4673: $3f
    ld a, d                                       ; $4674: $7a
    rst $38                                       ; $4675: $ff
    ld a, a                                       ; $4676: $7f
    ld a, [bc]                                    ; $4677: $0a
    jr nz, jr_0b0_467a                            ; $4678: $20 $00

jr_0b0_467a:
    nop                                           ; $467a: $00
    ld a, [bc]                                    ; $467b: $0a
    jr nz, jr_0b0_467e                            ; $467c: $20 $00

jr_0b0_467e:
    jr nz, jr_0b0_468a                            ; $467e: $20 $0a

    jr nz, jr_0b0_4682                            ; $4680: $20 $00

jr_0b0_4682:
    jr nz, jr_0b0_468e                            ; $4682: $20 $0a

    jr nz, jr_0b0_4686                            ; $4684: $20 $00

jr_0b0_4686:
    jr nz, jr_0b0_4692                            ; $4686: $20 $0a

jr_0b0_4688:
    jr nz, jr_0b0_468a                            ; $4688: $20 $00

jr_0b0_468a:
    jr nz, jr_0b0_4696                            ; $468a: $20 $0a

    jr nz, jr_0b0_468e                            ; $468c: $20 $00

jr_0b0_468e:
    jr nz, jr_0b0_469a                            ; $468e: $20 $0a

    jr nz, jr_0b0_4692                            ; $4690: $20 $00

jr_0b0_4692:
    jr nz, jr_0b0_46b0                            ; $4692: $20 $1c

    ld h, l                                       ; $4694: $65
    sbc [hl]                                      ; $4695: $9e

jr_0b0_4696:
    ld a, d                                       ; $4696: $7a
    ld a, c                                       ; $4697: $79
    ld d, b                                       ; $4698: $50
    nop                                           ; $4699: $00

jr_0b0_469a:
    jr nz, jr_0b0_46a5                            ; $469a: $20 $09

    inc e                                         ; $469c: $1c
    ld c, a                                       ; $469d: $4f
    jr nc, jr_0b0_46a5                            ; $469e: $30 $05

    db $10                                        ; $46a0: $10
    ld d, b                                       ; $46a1: $50
    inc [hl]                                      ; $46a2: $34
    inc a                                         ; $46a3: $3c
    ld h, l                                       ; $46a4: $65

jr_0b0_46a5:
    ld a, c                                       ; $46a5: $79
    ld d, b                                       ; $46a6: $50
    ld a, $76                                     ; $46a7: $3e $76
    nop                                           ; $46a9: $00

jr_0b0_46aa:
    nop                                           ; $46aa: $00
    ld a, l                                       ; $46ab: $7d
    ld l, l                                       ; $46ac: $6d
    ccf                                           ; $46ad: $3f
    ld a, a                                       ; $46ae: $7f
    ld h, a                                       ; $46af: $67

jr_0b0_46b0:
    jr jr_0b0_46b2                                ; $46b0: $18 $00

jr_0b0_46b2:
    db $10                                        ; $46b2: $10
    sbc [hl]                                      ; $46b3: $9e
    ld a, d                                       ; $46b4: $7a
    rst $38                                       ; $46b5: $ff
    ld a, a                                       ; $46b6: $7f
    ld a, [bc]                                    ; $46b7: $0a
    jr nz, jr_0b0_46c4                            ; $46b8: $20 $0a

    jr nz, @+$5e                                  ; $46ba: $20 $5c

    ld h, c                                       ; $46bc: $61
    db $dd                                        ; $46bd: $dd
    ld l, c                                       ; $46be: $69
    ld e, [hl]                                    ; $46bf: $5e
    halt                                          ; $46c0: $76
    nop                                           ; $46c1: $00
    jr nz, jr_0b0_4740                            ; $46c2: $20 $7c

jr_0b0_46c4:
    ld h, c                                       ; $46c4: $61
    dec b                                         ; $46c5: $05
    db $10                                        ; $46c6: $10
    ld a, [bc]                                    ; $46c7: $0a
    jr nz, jr_0b0_46ca                            ; $46c8: $20 $00

jr_0b0_46ca:
    jr nz, jr_0b0_4708                            ; $46ca: $20 $3c

    ld h, l                                       ; $46cc: $65
    ld a, c                                       ; $46cd: $79
    ld d, b                                       ; $46ce: $50
    ld a, $76                                     ; $46cf: $3e $76

jr_0b0_46d1:
    nop                                           ; $46d1: $00
    jr nz, jr_0b0_46d9                            ; $46d2: $20 $05

    db $10                                        ; $46d4: $10
    ld a, c                                       ; $46d5: $79
    ld d, b                                       ; $46d6: $50
    ld a, $76                                     ; $46d7: $3e $76

jr_0b0_46d9:
    rlca                                          ; $46d9: $07
    inc d                                         ; $46da: $14
    ld d, l                                       ; $46db: $55
    ld b, b                                       ; $46dc: $40
    ld c, a                                       ; $46dd: $4f
    jr nc, jr_0b0_4719                            ; $46de: $30 $39

    ld c, h                                       ; $46e0: $4c
    ld l, b                                       ; $46e1: $68
    inc e                                         ; $46e2: $1c
    ld a, [hl-]                                   ; $46e3: $3a
    ld d, b                                       ; $46e4: $50
    sbc $75                                       ; $46e5: $de $75
    rra                                           ; $46e7: $1f
    ld a, a                                       ; $46e8: $7f
    add a                                         ; $46e9: $87
    inc e                                         ; $46ea: $1c
    inc a                                         ; $46eb: $3c
    ld h, c                                       ; $46ec: $61
    sbc $7a                                       ; $46ed: $de $7a
    xor l                                         ; $46ef: $ad
    dec [hl]                                      ; $46f0: $35
    ld d, c                                       ; $46f1: $51
    jr c, jr_0b0_474b                             ; $46f2: $38 $57

    ld c, b                                       ; $46f4: $48
    dec de                                        ; $46f5: $1b
    ld e, c                                       ; $46f6: $59
    sbc d                                         ; $46f7: $9a
    ld d, b                                       ; $46f8: $50
    nop                                           ; $46f9: $00
    jr nz, jr_0b0_46aa                            ; $46fa: $20 $ae

jr_0b0_46fc:
    jr nc, jr_0b0_4735                            ; $46fc: $30 $37

    ld d, c                                       ; $46fe: $51
    dec b                                         ; $46ff: $05
    stop                                          ; $4700: $10 $00
    inc e                                         ; $4702: $1c
    ret c                                         ; $4703: $d8

    rrca                                          ; $4704: $0f
    rst $38                                       ; $4705: $ff
    ld a, a                                       ; $4706: $7f
    ld l, d                                       ; $4707: $6a

jr_0b0_4708:
    inc b                                         ; $4708: $04
    nop                                           ; $4709: $00
    jr jr_0b0_470c                                ; $470a: $18 $00

jr_0b0_470c:
    jr nz, @+$01                                  ; $470c: $20 $ff

    ld a, a                                       ; $470e: $7f
    ld l, d                                       ; $470f: $6a
    inc b                                         ; $4710: $04
    nop                                           ; $4711: $00
    jr nz, jr_0b0_4763                            ; $4712: $20 $4f

jr_0b0_4714:
    jr nc, jr_0b0_476c                            ; $4714: $30 $56

    ld b, h                                       ; $4716: $44
    ld b, $10                                     ; $4717: $06 $10

jr_0b0_4719:
    ld c, b                                       ; $4719: $48
    inc e                                         ; $471a: $1c
    add hl, sp                                    ; $471b: $39
    ld c, h                                       ; $471c: $4c
    ld a, h                                       ; $471d: $7c
    ld l, [hl]                                    ; $471e: $6e
    ld [hl], c                                    ; $471f: $71
    inc [hl]                                      ; $4720: $34
    and $1c                                       ; $4721: $e6 $1c
    ld a, [hl-]                                   ; $4723: $3a
    ld h, a                                       ; $4724: $67
    ld e, c                                       ; $4725: $59
    ld c, h                                       ; $4726: $4c
    xor l                                         ; $4727: $ad
    dec [hl]                                      ; $4728: $35
    ld b, $14                                     ; $4729: $06 $14
    ld sp, $0c34                                  ; $472b: $31 $34 $0c
    inc h                                         ; $472e: $24
    ld [hl], $44                                  ; $472f: $36 $44
    nop                                           ; $4731: $00
    jr nz, jr_0b0_4739                            ; $4732: $20 $05

    db $10                                        ; $4734: $10

jr_0b0_4735:
    inc c                                         ; $4735: $0c
    inc h                                         ; $4736: $24
    ld [hl], $44                                  ; $4737: $36 $44

jr_0b0_4739:
    nop                                           ; $4739: $00
    jr nz, jr_0b0_4714                            ; $473a: $20 $d8

    rrca                                          ; $473c: $0f
    ret                                           ; $473d: $c9


    inc b                                         ; $473e: $04
    rra                                           ; $473f: $1f

jr_0b0_4740:
    ld c, e                                       ; $4740: $4b
    nop                                           ; $4741: $00
    jr jr_0b0_46d1                                ; $4742: $18 $8d

    ld [bc], a                                    ; $4744: $02
    rst $38                                       ; $4745: $ff
    ld a, a                                       ; $4746: $7f
    ei                                            ; $4747: $fb
    rrca                                          ; $4748: $0f
    nop                                           ; $4749: $00
    nop                                           ; $474a: $00

jr_0b0_474b:
    rst $38                                       ; $474b: $ff
    ld a, a                                       ; $474c: $7f
    inc l                                         ; $474d: $2c
    jr z, jr_0b0_4755                             ; $474e: $28 $05

    db $10                                        ; $4750: $10
    dec bc                                        ; $4751: $0b
    jr nz, jr_0b0_478e                            ; $4752: $20 $3a

    ld h, a                                       ; $4754: $67

jr_0b0_4755:
    ld l, d                                       ; $4755: $6a
    dec l                                         ; $4756: $2d
    ld d, c                                       ; $4757: $51
    inc [hl]                                      ; $4758: $34
    and a                                         ; $4759: $a7
    inc d                                         ; $475a: $14
    ld a, [hl-]                                   ; $475b: $3a
    ld h, a                                       ; $475c: $67
    xor l                                         ; $475d: $ad
    dec [hl]                                      ; $475e: $35
    ld [de], a                                    ; $475f: $12
    inc [hl]                                      ; $4760: $34
    nop                                           ; $4761: $00
    nop                                           ; $4762: $00

jr_0b0_4763:
    ld b, $10                                     ; $4763: $06 $10
    inc c                                         ; $4765: $0c
    inc h                                         ; $4766: $24
    nop                                           ; $4767: $00
    jr nz, jr_0b0_476a                            ; $4768: $20 $00

jr_0b0_476a:
    jr nz, jr_0b0_4772                            ; $476a: $20 $06

jr_0b0_476c:
    db $10                                        ; $476c: $10
    inc c                                         ; $476d: $0c
    inc h                                         ; $476e: $24
    nop                                           ; $476f: $00
    jr nz, jr_0b0_4772                            ; $4770: $20 $00

jr_0b0_4772:
    jr nz, jr_0b0_46fc                            ; $4772: $20 $88

    add hl, bc                                    ; $4774: $09
    or l                                          ; $4775: $b5
    dec e                                         ; $4776: $1d
    ld l, d                                       ; $4777: $6a
    inc b                                         ; $4778: $04
    nop                                           ; $4779: $00
    ld [$0bfa], sp                                ; $477a: $08 $fa $0b
    rst $38                                       ; $477d: $ff
    ld a, a                                       ; $477e: $7f
    inc c                                         ; $477f: $0c
    ld a, [bc]                                    ; $4780: $0a
    nop                                           ; $4781: $00
    nop                                           ; $4782: $00
    ld bc, $096d                                  ; $4783: $01 $6d $09
    inc e                                         ; $4786: $1c
    dec b                                         ; $4787: $05
    db $10                                        ; $4788: $10
    ld [bc], a                                    ; $4789: $02
    nop                                           ; $478a: $00
    ld a, [hl-]                                   ; $478b: $3a
    ld h, a                                       ; $478c: $67
    ld a, [hl+]                                   ; $478d: $2a

jr_0b0_478e:
    inc e                                         ; $478e: $1c
    xor l                                         ; $478f: $ad
    dec [hl]                                      ; $4790: $35
    ld [bc], a                                    ; $4791: $02
    nop                                           ; $4792: $00
    adc a                                         ; $4793: $8f
    add hl, hl                                    ; $4794: $29
    sbc a                                         ; $4795: $9f
    ld [hl-], a                                   ; $4796: $32
    daa                                           ; $4797: $27
    inc d                                         ; $4798: $14
    ld bc, $ff00                                  ; $4799: $01 $00 $ff
    ld a, a                                       ; $479c: $7f
    ld [hl+], a                                   ; $479d: $22
    ld l, l                                       ; $479e: $6d
    nop                                           ; $479f: $00
    jr nz, jr_0b0_47a2                            ; $47a0: $20 $00

jr_0b0_47a2:
    jr nz, @+$01                                  ; $47a2: $20 $ff

    ld a, a                                       ; $47a4: $7f
    ld [hl+], a                                   ; $47a5: $22
    ld l, l                                       ; $47a6: $6d
    nop                                           ; $47a7: $00
    jr nz, jr_0b0_47ad                            ; $47a8: $20 $03

    inc d                                         ; $47aa: $14
    jr jr_0b0_47ad                                ; $47ab: $18 $00

jr_0b0_47ad:
    rst $38                                       ; $47ad: $ff
    ld a, a                                       ; $47ae: $7f
    rst $10                                       ; $47af: $d7
    ld hl, $0420                                  ; $47b0: $21 $20 $04
    ld [hl], a                                    ; $47b3: $77
    dec bc                                        ; $47b4: $0b
    ld [hl+], a                                   ; $47b5: $22
    ld l, l                                       ; $47b6: $6d
    rst $38                                       ; $47b7: $ff
    ld a, a                                       ; $47b8: $7f
    ld [hl+], a                                   ; $47b9: $22
    ld l, l                                       ; $47ba: $6d
    add hl, bc                                    ; $47bb: $09
    inc c                                         ; $47bc: $0c
    ld e, a                                       ; $47bd: $5f
    ld c, d                                       ; $47be: $4a
    dec de                                        ; $47bf: $1b
    nop                                           ; $47c0: $00
    daa                                           ; $47c1: $27
    inc b                                         ; $47c2: $04
    ld e, h                                       ; $47c3: $5c
    ld a, [hl+]                                   ; $47c4: $2a
    ld b, [hl]                                    ; $47c5: $46
    ld l, l                                       ; $47c6: $6d
    rst $38                                       ; $47c7: $ff
    ld a, a                                       ; $47c8: $7f
    dec b                                         ; $47c9: $05
    ld [$7122], sp                                ; $47ca: $08 $22 $71
    ld l, $7f                                     ; $47cd: $2e $7f
    rst $38                                       ; $47cf: $ff
    ld a, a                                       ; $47d0: $7f
    nop                                           ; $47d1: $00
    nop                                           ; $47d2: $00
    rst $38                                       ; $47d3: $ff
    ld a, a                                       ; $47d4: $7f
    ld [hl+], a                                   ; $47d5: $22
    ld l, l                                       ; $47d6: $6d
    rst $38                                       ; $47d7: $ff
    ld a, a                                       ; $47d8: $7f
    nop                                           ; $47d9: $00
    nop                                           ; $47da: $00
    nop                                           ; $47db: $00
    jr nz, jr_0b0_4800                            ; $47dc: $20 $22

    ld l, l                                       ; $47de: $6d
    rst $38                                       ; $47df: $ff
    ld a, a                                       ; $47e0: $7f
    nop                                           ; $47e1: $00
    jr nz, jr_0b0_47fe                            ; $47e2: $20 $1a

    ld l, $ff                                     ; $47e4: $2e $ff
    ld a, a                                       ; $47e6: $7f
    ld c, d                                       ; $47e7: $4a
    nop                                           ; $47e8: $00
    call nz, $2200                                ; $47e9: $c4 $00 $22
    ld l, l                                       ; $47ec: $6d
    ei                                            ; $47ed: $fb
    rrca                                          ; $47ee: $0f
    ld l, d                                       ; $47ef: $6a
    inc b                                         ; $47f0: $04
    ld [hl+], a                                   ; $47f1: $22
    ld l, l                                       ; $47f2: $6d
    ld [de], a                                    ; $47f3: $12
    nop                                           ; $47f4: $00
    ld e, a                                       ; $47f5: $5f
    ld c, d                                       ; $47f6: $4a
    sbc l                                         ; $47f7: $9d
    inc bc                                        ; $47f8: $03
    db $10                                        ; $47f9: $10
    dec c                                         ; $47fa: $0d
    sbc $03                                       ; $47fb: $de $03
    sbc a                                         ; $47fd: $9f

jr_0b0_47fe:
    ld [hl-], a                                   ; $47fe: $32
    sbc a                                         ; $47ff: $9f

jr_0b0_4800:
    ld l, e                                       ; $4800: $6b
    inc hl                                        ; $4801: $23
    ld l, l                                       ; $4802: $6d
    rst $18                                       ; $4803: $df
    ld d, d                                       ; $4804: $52
    add hl, bc                                    ; $4805: $09
    nop                                           ; $4806: $00
    halt                                          ; $4807: $76
    inc b                                         ; $4808: $04
    nop                                           ; $4809: $00
    nop                                           ; $480a: $00
    inc hl                                        ; $480b: $23
    ld l, l                                       ; $480c: $6d
    rst $38                                       ; $480d: $ff
    ld a, a                                       ; $480e: $7f
    halt                                          ; $480f: $76
    inc b                                         ; $4810: $04
    nop                                           ; $4811: $00
    nop                                           ; $4812: $00
    rst $38                                       ; $4813: $ff
    ld a, a                                       ; $4814: $7f
    nop                                           ; $4815: $00
    jr nz, jr_0b0_488e                            ; $4816: $20 $76

    inc b                                         ; $4818: $04
    ld b, a                                       ; $4819: $47
    ld [$3a5e], sp                                ; $481a: $08 $5e $3a
    rst $38                                       ; $481d: $ff
    ld a, a                                       ; $481e: $7f
    rst $30                                       ; $481f: $f7
    ld [$0569], sp                                ; $4820: $08 $69 $05
    inc hl                                        ; $4823: $23
    ld l, l                                       ; $4824: $6d
    cp $5f                                        ; $4825: $fe $5f
    add hl, de                                    ; $4827: $19
    nop                                           ; $4828: $00
    ld [de], a                                    ; $4829: $12
    nop                                           ; $482a: $00
    inc hl                                        ; $482b: $23
    ld l, l                                       ; $482c: $6d
    adc $01                                       ; $482d: $ce $01
    ld e, a                                       ; $482f: $5f
    ld c, d                                       ; $4830: $4a
    xor e                                         ; $4831: $ab
    inc b                                         ; $4832: $04
    ld d, $12                                     ; $4833: $16 $12
    dec de                                        ; $4835: $1b
    nop                                           ; $4836: $00
    sbc a                                         ; $4837: $9f
    ld [hl-], a                                   ; $4838: $32
    ld c, l                                       ; $4839: $4d
    nop                                           ; $483a: $00
    rst $38                                       ; $483b: $ff
    inc bc                                        ; $483c: $03
    rst $18                                       ; $483d: $df
    ld c, d                                       ; $483e: $4a
    jr c, jr_0b0_4845                             ; $483f: $38 $04

    inc hl                                        ; $4841: $23
    ld l, l                                       ; $4842: $6d
    ld c, $00                                     ; $4843: $0e $00

jr_0b0_4845:
    ld e, a                                       ; $4845: $5f
    ld c, d                                       ; $4846: $4a
    ld b, h                                       ; $4847: $44
    ld l, l                                       ; $4848: $6d
    nop                                           ; $4849: $00
    nop                                           ; $484a: $00
    rst $38                                       ; $484b: $ff
    ld a, a                                       ; $484c: $7f
    ld b, h                                       ; $484d: $44
    ld l, l                                       ; $484e: $6d
    nop                                           ; $484f: $00
    jr nz, jr_0b0_487a                            ; $4850: $20 $28

    nop                                           ; $4852: $00
    inc a                                         ; $4853: $3c
    ld [hl-], a                                   ; $4854: $32
    rst $38                                       ; $4855: $ff
    ld a, a                                       ; $4856: $7f
    add hl, de                                    ; $4857: $19
    nop                                           ; $4858: $00
    push hl                                       ; $4859: $e5
    nop                                           ; $485a: $00
    ld b, h                                       ; $485b: $44
    ld l, l                                       ; $485c: $6d
    halt                                          ; $485d: $76
    rrca                                          ; $485e: $0f
    ld c, e                                       ; $485f: $4b
    nop                                           ; $4860: $00
    ld b, [hl]                                    ; $4861: $46
    nop                                           ; $4862: $00
    inc e                                         ; $4863: $1c
    nop                                           ; $4864: $00
    ld e, a                                       ; $4865: $5f
    ld c, d                                       ; $4866: $4a
    ld c, $00                                     ; $4867: $0e $00
    inc b                                         ; $4869: $04
    nop                                           ; $486a: $00
    inc a                                         ; $486b: $3c
    ld h, $b0                                     ; $486c: $26 $b0
    ld [$044a], sp                                ; $486e: $08 $4a $04
    ld c, l                                       ; $4871: $4d
    nop                                           ; $4872: $00
    pop de                                        ; $4873: $d1
    ld bc, $0017                                  ; $4874: $01 $17 $00
    rst $38                                       ; $4877: $ff
    inc bc                                        ; $4878: $03
    ld b, h                                       ; $4879: $44

jr_0b0_487a:
    ld l, l                                       ; $487a: $6d
    ld c, $00                                     ; $487b: $0e $00
    ld e, a                                       ; $487d: $5f
    ld c, d                                       ; $487e: $4a
    jr jr_0b0_4881                                ; $487f: $18 $00

jr_0b0_4881:
    nop                                           ; $4881: $00
    nop                                           ; $4882: $00
    ld b, h                                       ; $4883: $44
    ld l, l                                       ; $4884: $6d
    rst $38                                       ; $4885: $ff
    ld a, a                                       ; $4886: $7f
    nop                                           ; $4887: $00
    jr nz, jr_0b0_48cf                            ; $4888: $20 $45

    ld l, l                                       ; $488a: $6d
    dec a                                         ; $488b: $3d
    ld l, $6a                                     ; $488c: $2e $6a

jr_0b0_488e:
    inc b                                         ; $488e: $04
    ldh a, [rNR41]                                ; $488f: $f0 $20
    adc b                                         ; $4891: $88
    nop                                           ; $4892: $00
    ld b, h                                       ; $4893: $44
    ld l, l                                       ; $4894: $6d
    or [hl]                                       ; $4895: $b6
    rrca                                          ; $4896: $0f
    cp $5f                                        ; $4897: $fe $5f
    ld a, [bc]                                    ; $4899: $0a
    nop                                           ; $489a: $00
    ld b, l                                       ; $489b: $45
    ld l, l                                       ; $489c: $6d
    ld e, a                                       ; $489d: $5f
    ld c, d                                       ; $489e: $4a
    inc e                                         ; $489f: $1c
    nop                                           ; $48a0: $00
    ld a, [bc]                                    ; $48a1: $0a
    inc c                                         ; $48a2: $0c
    ld a, [de]                                    ; $48a3: $1a
    ld h, $14                                     ; $48a4: $26 $14
    ld d, b                                       ; $48a6: $50
    ld [de], a                                    ; $48a7: $12
    add hl, bc                                    ; $48a8: $09
    dec b                                         ; $48a9: $05
    nop                                           ; $48aa: $00
    ld b, l                                       ; $48ab: $45
    ld l, l                                       ; $48ac: $6d
    inc e                                         ; $48ad: $1c
    ld l, b                                       ; $48ae: $68
    ld l, $00                                     ; $48af: $2e $00
    ld b, l                                       ; $48b1: $45
    ld l, l                                       ; $48b2: $6d
    dec bc                                        ; $48b3: $0b
    nop                                           ; $48b4: $00
    ld e, $00                                     ; $48b5: $1e $00
    ld e, a                                       ; $48b7: $5f
    ld c, d                                       ; $48b8: $4a
    nop                                           ; $48b9: $00
    nop                                           ; $48ba: $00
    ld b, l                                       ; $48bb: $45
    ld l, l                                       ; $48bc: $6d
    rst $38                                       ; $48bd: $ff
    ld a, a                                       ; $48be: $7f
    nop                                           ; $48bf: $00
    jr nz, jr_0b0_48e7                            ; $48c0: $20 $25

    ld [$327e], sp                                ; $48c2: $08 $7e $32
    ld b, l                                       ; $48c5: $45
    ld [hl], c                                    ; $48c6: $71
    rst $38                                       ; $48c7: $ff
    ld a, a                                       ; $48c8: $7f
    and h                                         ; $48c9: $a4
    nop                                           ; $48ca: $00
    ld b, l                                       ; $48cb: $45
    ld l, l                                       ; $48cc: $6d
    or d                                          ; $48cd: $b2
    ld a, [bc]                                    ; $48ce: $0a

jr_0b0_48cf:
    or [hl]                                       ; $48cf: $b6
    rrca                                          ; $48d0: $0f
    ld c, e                                       ; $48d1: $4b
    nop                                           ; $48d2: $00
    ld b, l                                       ; $48d3: $45
    ld l, l                                       ; $48d4: $6d
    ld e, $42                                     ; $48d5: $1e $42
    ld a, c                                       ; $48d7: $79
    inc c                                         ; $48d8: $0c
    ret nc                                        ; $48d9: $d0

    db $10                                        ; $48da: $10
    ld e, l                                       ; $48db: $5d
    ld l, $fa                                     ; $48dc: $2e $fa
    ld l, [hl]                                    ; $48de: $6e
    ld [de], a                                    ; $48df: $12
    inc a                                         ; $48e0: $3c
    dec bc                                        ; $48e1: $0b
    ld [$7166], sp                                ; $48e2: $08 $66 $71
    sbc h                                         ; $48e5: $9c
    ld d, [hl]                                    ; $48e6: $56

jr_0b0_48e7:
    dec de                                        ; $48e7: $1b
    ld e, b                                       ; $48e8: $58
    ld b, $00                                     ; $48e9: $06 $00
    ld h, [hl]                                    ; $48eb: $66
    ld [hl], c                                    ; $48ec: $71
    ld e, a                                       ; $48ed: $5f
    ld c, d                                       ; $48ee: $4a
    ld c, $00                                     ; $48ef: $0e $00
    nop                                           ; $48f1: $00
    nop                                           ; $48f2: $00
    ld h, [hl]                                    ; $48f3: $66
    ld l, l                                       ; $48f4: $6d
    rst $38                                       ; $48f5: $ff
    ld a, a                                       ; $48f6: $7f
    nop                                           ; $48f7: $00
    jr nz, jr_0b0_48fa                            ; $48f8: $20 $00

jr_0b0_48fa:
    db $10                                        ; $48fa: $10
    dec sp                                        ; $48fb: $3b
    ld a, [hl+]                                   ; $48fc: $2a
    rst $38                                       ; $48fd: $ff
    ld a, a                                       ; $48fe: $7f
    ld l, d                                       ; $48ff: $6a
    inc b                                         ; $4900: $04
    rst $20                                       ; $4901: $e7
    inc b                                         ; $4902: $04
    ld h, [hl]                                    ; $4903: $66
    ld [hl], c                                    ; $4904: $71
    call c, $f143                                 ; $4905: $dc $43 $f1
    ld a, [bc]                                    ; $4908: $0a
    inc c                                         ; $4909: $0c
    nop                                           ; $490a: $00
    or $0f                                        ; $490b: $f6 $0f
    cp $3d                                        ; $490d: $fe $3d
    rla                                           ; $490f: $17
    nop                                           ; $4910: $00
    ld [$9c04], sp                                ; $4911: $08 $04 $9c
    ld [hl], e                                    ; $4914: $73
    ld c, a                                       ; $4915: $4f
    ld b, d                                       ; $4916: $42
    rla                                           ; $4917: $17
    ld c, b                                       ; $4918: $48
    ld b, $00                                     ; $4919: $06 $00
    ld e, h                                       ; $491b: $5c
    ld l, e                                       ; $491c: $6b
    cp d                                          ; $491d: $ba
    inc d                                         ; $491e: $14
    ld d, $40                                     ; $491f: $16 $40
    ld c, $00                                     ; $4921: $0e $00
    ld h, a                                       ; $4923: $67
    ld [hl], c                                    ; $4924: $71
    ld e, a                                       ; $4925: $5f
    ld c, d                                       ; $4926: $4a
    ld d, $40                                     ; $4927: $16 $40
    nop                                           ; $4929: $00
    nop                                           ; $492a: $00
    ld h, a                                       ; $492b: $67
    ld [hl], c                                    ; $492c: $71
    rst $38                                       ; $492d: $ff
    ld a, a                                       ; $492e: $7f
    nop                                           ; $492f: $00
    jr nz, jr_0b0_4932                            ; $4930: $20 $00

jr_0b0_4932:
    inc d                                         ; $4932: $14
    ld a, l                                       ; $4933: $7d
    ld [hl-], a                                   ; $4934: $32
    rst $38                                       ; $4935: $ff
    ld a, a                                       ; $4936: $7f
    adc $0c                                       ; $4937: $ce $0c
    call nz, Call_0b0_6700                        ; $4939: $c4 $00 $67
    ld [hl], c                                    ; $493c: $71
    ld a, c                                       ; $493d: $79
    ld h, $2d                                     ; $493e: $26 $2d
    nop                                           ; $4940: $00
    ld b, $00                                     ; $4941: $06 $00
    ld [hl], d                                    ; $4943: $72
    rrca                                          ; $4944: $0f
    rrca                                          ; $4945: $0f
    nop                                           ; $4946: $00
    ld a, [de]                                    ; $4947: $1a
    nop                                           ; $4948: $00
    ld c, c                                       ; $4949: $49
    ld [$6758], sp                                ; $494a: $08 $58 $67
    inc de                                        ; $494d: $13
    jr c, jr_0b0_496f                             ; $494e: $38 $1f

    ld h, b                                       ; $4950: $60
    jr z, jr_0b0_495b                             ; $4951: $28 $08

    ld c, a                                       ; $4953: $4f
    ld b, d                                       ; $4954: $42
    ld a, [de]                                    ; $4955: $1a
    nop                                           ; $4956: $00
    cp d                                          ; $4957: $ba
    ld l, a                                       ; $4958: $6f
    ld h, a                                       ; $4959: $67
    ld [hl], c                                    ; $495a: $71

jr_0b0_495b:
    ld c, $00                                     ; $495b: $0e $00
    ld e, $3e                                     ; $495d: $1e $3e
    ccf                                           ; $495f: $3f
    ld b, [hl]                                    ; $4960: $46
    nop                                           ; $4961: $00
    nop                                           ; $4962: $00
    ld h, a                                       ; $4963: $67
    ld [hl], c                                    ; $4964: $71
    rst $38                                       ; $4965: $ff
    ld a, a                                       ; $4966: $7f
    nop                                           ; $4967: $00
    jr nz, jr_0b0_496a                            ; $4968: $20 $00

jr_0b0_496a:
    jr @+$5f                                      ; $496a: $18 $5d

    ld [hl-], a                                   ; $496c: $32
    rst $38                                       ; $496d: $ff
    ld a, a                                       ; $496e: $7f

jr_0b0_496f:
    xor l                                         ; $496f: $ad
    ld [$0067], sp                                ; $4970: $08 $67 $00
    sbc [hl]                                      ; $4973: $9e
    ld [hl], $0f                                  ; $4974: $36 $0f
    nop                                           ; $4976: $00
    dec de                                        ; $4977: $1b
    nop                                           ; $4978: $00
    ld l, c                                       ; $4979: $69
    nop                                           ; $497a: $00
    ld de, $fe0b                                  ; $497b: $11 $0b $fe
    ld e, a                                       ; $497e: $5f
    jr jr_0b0_4981                                ; $497f: $18 $00

jr_0b0_4981:
    ld b, [hl]                                    ; $4981: $46
    db $10                                        ; $4982: $10
    cp d                                          ; $4983: $ba
    ld l, a                                       ; $4984: $6f
    db $ec                                        ; $4985: $ec
    inc l                                         ; $4986: $2c
    cpl                                           ; $4987: $2f
    inc b                                         ; $4988: $04
    jr z, jr_0b0_4993                             ; $4989: $28 $08

    ld c, a                                       ; $498b: $4f
    ld b, d                                       ; $498c: $42
    dec de                                        ; $498d: $1b
    nop                                           ; $498e: $00
    rst $38                                       ; $498f: $ff
    ld a, a                                       ; $4990: $7f
    adc b                                         ; $4991: $88
    ld [hl], c                                    ; $4992: $71

jr_0b0_4993:
    ld c, $00                                     ; $4993: $0e $00
    dec de                                        ; $4995: $1b
    ld hl, $001a                                  ; $4996: $21 $1a $00
    nop                                           ; $4999: $00
    nop                                           ; $499a: $00
    adc b                                         ; $499b: $88
    ld [hl], c                                    ; $499c: $71
    rst $38                                       ; $499d: $ff
    ld a, a                                       ; $499e: $7f
    nop                                           ; $499f: $00
    jr nz, jr_0b0_49a2                            ; $49a0: $20 $00

jr_0b0_49a2:
    nop                                           ; $49a2: $00
    rst $38                                       ; $49a3: $ff
    ld a, a                                       ; $49a4: $7f
    xor l                                         ; $49a5: $ad
    ld [$2000], sp                                ; $49a6: $08 $00 $20
    rlca                                          ; $49a9: $07
    nop                                           ; $49aa: $00
    ret c                                         ; $49ab: $d8

    ld hl, $0c92                                  ; $49ac: $21 $92 $0c
    ld a, [hl]                                    ; $49af: $7e
    ld [hl-], a                                   ; $49b0: $32
    ld b, $01                                     ; $49b1: $06 $01
    sub h                                         ; $49b3: $94
    rrca                                          ; $49b4: $0f
    rla                                           ; $49b5: $17
    nop                                           ; $49b6: $00
    cp $5f                                        ; $49b7: $fe $5f
    ld h, [hl]                                    ; $49b9: $66
    db $10                                        ; $49ba: $10
    ld c, a                                       ; $49bb: $4f
    ld b, d                                       ; $49bc: $42
    ld [de], a                                    ; $49bd: $12
    inc a                                         ; $49be: $3c
    cpl                                           ; $49bf: $2f
    inc b                                         ; $49c0: $04
    ld b, $00                                     ; $49c1: $06 $00
    ld [de], a                                    ; $49c3: $12
    inc a                                         ; $49c4: $3c
    ld a, [de]                                    ; $49c5: $1a
    nop                                           ; $49c6: $00
    ld h, a                                       ; $49c7: $67
    jr jr_0b0_49d5                                ; $49c8: $18 $0b

    nop                                           ; $49ca: $00
    adc c                                         ; $49cb: $89
    ld [hl], c                                    ; $49cc: $71
    ld e, d                                       ; $49cd: $5a

jr_0b0_49ce:
    add hl, hl                                    ; $49ce: $29
    jr jr_0b0_49d1                                ; $49cf: $18 $00

jr_0b0_49d1:
    nop                                           ; $49d1: $00
    nop                                           ; $49d2: $00
    adc c                                         ; $49d3: $89
    ld [hl], c                                    ; $49d4: $71

jr_0b0_49d5:
    rst $38                                       ; $49d5: $ff
    ld a, a                                       ; $49d6: $7f
    nop                                           ; $49d7: $00
    jr nz, jr_0b0_49da                            ; $49d8: $20 $00

jr_0b0_49da:
    nop                                           ; $49da: $00
    adc c                                         ; $49db: $89
    ld [hl], c                                    ; $49dc: $71
    rst $38                                       ; $49dd: $ff
    ld a, a                                       ; $49de: $7f
    nop                                           ; $49df: $00
    jr nz, jr_0b0_49e8                            ; $49e0: $20 $06

    nop                                           ; $49e2: $00
    xor d                                         ; $49e3: $aa
    ld [hl], c                                    ; $49e4: $71
    ld d, d                                       ; $49e5: $52
    add hl, de                                    ; $49e6: $19
    dec hl                                        ; $49e7: $2b

jr_0b0_49e8:
    nop                                           ; $49e8: $00
    and h                                         ; $49e9: $a4
    nop                                           ; $49ea: $00
    xor a                                         ; $49eb: $af
    ld a, [bc]                                    ; $49ec: $0a
    jr jr_0b0_49ef                                ; $49ed: $18 $00

jr_0b0_49ef:
    or [hl]                                       ; $49ef: $b6
    rrca                                          ; $49f0: $0f
    dec bc                                        ; $49f1: $0b
    nop                                           ; $49f2: $00
    ld [de], a                                    ; $49f3: $12
    inc a                                         ; $49f4: $3c
    inc l                                         ; $49f5: $2c
    ld b, $59                                     ; $49f6: $06 $59
    ld d, b                                       ; $49f8: $50
    ld [$1100], sp                                ; $49f9: $08 $00 $11
    inc a                                         ; $49fc: $3c
    ld a, [de]                                    ; $49fd: $1a
    nop                                           ; $49fe: $00
    add hl, sp                                    ; $49ff: $39
    ld c, h                                       ; $4a00: $4c
    ld a, [bc]                                    ; $4a01: $0a
    nop                                           ; $4a02: $00
    xor d                                         ; $4a03: $aa
    ld [hl], c                                    ; $4a04: $71
    dec [hl]                                      ; $4a05: $35
    nop                                           ; $4a06: $00
    cp h                                          ; $4a07: $bc
    dec [hl]                                      ; $4a08: $35
    nop                                           ; $4a09: $00
    nop                                           ; $4a0a: $00
    rst $38                                       ; $4a0b: $ff
    ld a, a                                       ; $4a0c: $7f
    nop                                           ; $4a0d: $00
    jr nz, jr_0b0_4a16                            ; $4a0e: $20 $06

    nop                                           ; $4a10: $00
    nop                                           ; $4a11: $00
    nop                                           ; $4a12: $00
    rst $38                                       ; $4a13: $ff
    ld a, a                                       ; $4a14: $7f
    nop                                           ; $4a15: $00

jr_0b0_4a16:
    jr nz, jr_0b0_49ce                            ; $4a16: $20 $b6

    rrca                                          ; $4a18: $0f
    rlca                                          ; $4a19: $07
    nop                                           ; $4a1a: $00
    xor d                                         ; $4a1b: $aa
    ld [hl], c                                    ; $4a1c: $71
    ld l, d                                       ; $4a1d: $6a
    inc b                                         ; $4a1e: $04
    dec bc                                        ; $4a1f: $0b
    nop                                           ; $4a20: $00
    push hl                                       ; $4a21: $e5
    nop                                           ; $4a22: $00
    ld [hl], e                                    ; $4a23: $73
    rrca                                          ; $4a24: $0f
    add hl, de                                    ; $4a25: $19
    nop                                           ; $4a26: $00
    cp $5f                                        ; $4a27: $fe $5f
    ld b, $00                                     ; $4a29: $06 $00
    inc de                                        ; $4a2b: $13
    ld b, b                                       ; $4a2c: $40
    ld [hl-], a                                   ; $4a2d: $32
    dec bc                                        ; $4a2e: $0b
    dec sp                                        ; $4a2f: $3b
    ld h, c                                       ; $4a30: $61
    rlca                                          ; $4a31: $07
    nop                                           ; $4a32: $00
    dec de                                        ; $4a33: $1b
    nop                                           ; $4a34: $00
    ld e, c                                       ; $4a35: $59
    ld c, h                                       ; $4a36: $4c
    cpl                                           ; $4a37: $2f
    inc b                                         ; $4a38: $04
    dec hl                                        ; $4a39: $2b
    inc b                                         ; $4a3a: $04
    ccf                                           ; $4a3b: $3f
    rra                                           ; $4a3c: $1f
    jr jr_0b0_4a3f                                ; $4a3d: $18 $00

jr_0b0_4a3f:
    ld d, c                                       ; $4a3f: $51
    ld bc, $0000                                  ; $4a40: $01 $00 $00
    rst $38                                       ; $4a43: $ff
    ld a, a                                       ; $4a44: $7f
    nop                                           ; $4a45: $00
    jr nz, jr_0b0_4a99                            ; $4a46: $20 $51

    ld bc, $0000                                  ; $4a48: $01 $00 $00
    rst $38                                       ; $4a4b: $ff
    ld a, a                                       ; $4a4c: $7f
    nop                                           ; $4a4d: $00

jr_0b0_4a4e:
    jr nz, jr_0b0_4a4e                            ; $4a4e: $20 $fe

    ld e, a                                       ; $4a50: $5f
    ld bc, $ab00                                  ; $4a51: $01 $00 $ab
    ld [hl], l                                    ; $4a54: $75
    ld a, [bc]                                    ; $4a55: $0a
    nop                                           ; $4a56: $00
    dec b                                         ; $4a57: $05
    nop                                           ; $4a58: $00
    db $e4                                        ; $4a59: $e4
    nop                                           ; $4a5a: $00
    ld [hl], h                                    ; $4a5b: $74
    dec bc                                        ; $4a5c: $0b
    ld d, $00                                     ; $4a5d: $16 $00
    cp $5f                                        ; $4a5f: $fe $5f
    ld [hl], a                                    ; $4a61: $77
    ld c, h                                       ; $4a62: $4c
    ldh a, [rTMA]                                 ; $4a63: $f0 $06
    db $dd                                        ; $4a65: $dd
    ld l, l                                       ; $4a66: $6d
    ld [hl], l                                    ; $4a67: $75
    dec bc                                        ; $4a68: $0b
    ld [$1200], sp                                ; $4a69: $08 $00 $12
    inc a                                         ; $4a6c: $3c
    ld a, [de]                                    ; $4a6d: $1a
    nop                                           ; $4a6e: $00
    ld a, h                                       ; $4a6f: $7c
    ld h, c                                       ; $4a70: $61
    inc b                                         ; $4a71: $04
    nop                                           ; $4a72: $00
    cp a                                          ; $4a73: $bf
    dec [hl]                                      ; $4a74: $35
    ld d, [hl]                                    ; $4a75: $56
    nop                                           ; $4a76: $00
    cp a                                          ; $4a77: $bf
    dec bc                                        ; $4a78: $0b
    nop                                           ; $4a79: $00
    nop                                           ; $4a7a: $00
    rst $38                                       ; $4a7b: $ff
    ld a, a                                       ; $4a7c: $7f
    nop                                           ; $4a7d: $00
    jr nz, jr_0b0_4a3f                            ; $4a7e: $20 $bf

    dec bc                                        ; $4a80: $0b
    nop                                           ; $4a81: $00
    nop                                           ; $4a82: $00
    rst $38                                       ; $4a83: $ff
    ld a, a                                       ; $4a84: $7f
    nop                                           ; $4a85: $00

jr_0b0_4a86:
    jr nz, jr_0b0_4a86                            ; $4a86: $20 $fe

    ld e, a                                       ; $4a88: $5f
    ld bc, $ac00                                  ; $4a89: $01 $00 $ac
    ld [hl], l                                    ; $4a8c: $75
    dec c                                         ; $4a8d: $0d
    nop                                           ; $4a8e: $00
    dec b                                         ; $4a8f: $05
    nop                                           ; $4a90: $00
    inc c                                         ; $4a91: $0c
    nop                                           ; $4a92: $00
    db $e4                                        ; $4a93: $e4
    nop                                           ; $4a94: $00
    cpl                                           ; $4a95: $2f
    rrca                                          ; $4a96: $0f
    jr jr_0b0_4a99                                ; $4a97: $18 $00

jr_0b0_4a99:
    xor c                                         ; $4a99: $a9
    dec b                                         ; $4a9a: $05
    dec e                                         ; $4a9b: $1d
    ld [hl], d                                    ; $4a9c: $72
    or h                                          ; $4a9d: $b4
    dec bc                                        ; $4a9e: $0b
    cp $5f                                        ; $4a9f: $fe $5f
    ld a, [bc]                                    ; $4aa1: $0a
    nop                                           ; $4aa2: $00
    pop af                                        ; $4aa3: $f1
    nop                                           ; $4aa4: $00
    inc de                                        ; $4aa5: $13
    ld b, b                                       ; $4aa6: $40
    add hl, de                                    ; $4aa7: $19
    nop                                           ; $4aa8: $00
    inc b                                         ; $4aa9: $04
    nop                                           ; $4aaa: $00
    cp a                                          ; $4aab: $bf
    dec bc                                        ; $4aac: $0b
    ld d, h                                       ; $4aad: $54
    nop                                           ; $4aae: $00
    rst $38                                       ; $4aaf: $ff
    ld a, a                                       ; $4ab0: $7f
    nop                                           ; $4ab1: $00
    nop                                           ; $4ab2: $00
    rst $38                                       ; $4ab3: $ff
    ld a, a                                       ; $4ab4: $7f
    nop                                           ; $4ab5: $00
    jr nz, @+$01                                  ; $4ab6: $20 $ff

    ld a, a                                       ; $4ab8: $7f
    nop                                           ; $4ab9: $00
    nop                                           ; $4aba: $00
    rst $38                                       ; $4abb: $ff
    ld a, a                                       ; $4abc: $7f
    nop                                           ; $4abd: $00
    jr nz, jr_0b0_4ad8                            ; $4abe: $20 $18

    nop                                           ; $4ac0: $00
    ld bc, $ff00                                  ; $4ac1: $01 $00 $ff
    ld a, a                                       ; $4ac4: $7f
    rrca                                          ; $4ac5: $0f
    nop                                           ; $4ac6: $00
    dec b                                         ; $4ac7: $05
    nop                                           ; $4ac8: $00
    ld b, $00                                     ; $4ac9: $06 $00
    cpl                                           ; $4acb: $2f
    inc b                                         ; $4acc: $04
    rla                                           ; $4acd: $17
    nop                                           ; $4ace: $00
    and h                                         ; $4acf: $a4
    nop                                           ; $4ad0: $00
    push hl                                       ; $4ad1: $e5
    nop                                           ; $4ad2: $00
    or c                                          ; $4ad3: $b1
    ld a, [bc]                                    ; $4ad4: $0a
    cp $5f                                        ; $4ad5: $fe $5f
    or [hl]                                       ; $4ad7: $b6

jr_0b0_4ad8:
    dec bc                                        ; $4ad8: $0b
    ld c, l                                       ; $4ad9: $4d
    nop                                           ; $4ada: $00
    ld d, c                                       ; $4adb: $51
    rlca                                          ; $4adc: $07
    add hl, de                                    ; $4add: $19
    nop                                           ; $4ade: $00
    cp a                                          ; $4adf: $bf
    dec bc                                        ; $4ae0: $0b
    inc b                                         ; $4ae1: $04
    nop                                           ; $4ae2: $00
    cp a                                          ; $4ae3: $bf
    dec bc                                        ; $4ae4: $0b
    inc d                                         ; $4ae5: $14
    nop                                           ; $4ae6: $00
    rst $38                                       ; $4ae7: $ff
    ld a, a                                       ; $4ae8: $7f
    nop                                           ; $4ae9: $00
    nop                                           ; $4aea: $00
    nop                                           ; $4aeb: $00
    jr nz, @+$16                                  ; $4aec: $20 $14

    nop                                           ; $4aee: $00
    rst $38                                       ; $4aef: $ff
    ld a, a                                       ; $4af0: $7f
    nop                                           ; $4af1: $00
    nop                                           ; $4af2: $00
    nop                                           ; $4af3: $00
    jr nz, jr_0b0_4b0d                            ; $4af4: $20 $17

    nop                                           ; $4af6: $00
    and h                                         ; $4af7: $a4
    nop                                           ; $4af8: $00
    ld bc, $ff00                                  ; $4af9: $01 $00 $ff
    ld a, a                                       ; $4afc: $7f
    dec c                                         ; $4afd: $0d
    nop                                           ; $4afe: $00
    dec b                                         ; $4aff: $05
    nop                                           ; $4b00: $00
    ld b, $00                                     ; $4b01: $06 $00
    inc de                                        ; $4b03: $13
    nop                                           ; $4b04: $00
    cpl                                           ; $4b05: $2f
    inc b                                         ; $4b06: $04
    rla                                           ; $4b07: $17
    nop                                           ; $4b08: $00
    push bc                                       ; $4b09: $c5
    nop                                           ; $4b0a: $00
    or a                                          ; $4b0b: $b7
    inc bc                                        ; $4b0c: $03

jr_0b0_4b0d:
    ld d, $00                                     ; $4b0d: $16 $00
    add hl, sp                                    ; $4b0f: $39
    ld e, a                                       ; $4b10: $5f
    ld l, l                                       ; $4b11: $6d
    nop                                           ; $4b12: $00
    jr @+$65                                      ; $4b13: $18 $63

    inc de                                        ; $4b15: $13
    inc bc                                        ; $4b16: $03
    cp a                                          ; $4b17: $bf
    dec bc                                        ; $4b18: $0b
    ld bc, $1800                                  ; $4b19: $01 $00 $18
    ld h, e                                       ; $4b1c: $63
    cpl                                           ; $4b1d: $2f
    inc b                                         ; $4b1e: $04
    rst $38                                       ; $4b1f: $ff
    ld a, a                                       ; $4b20: $7f
    nop                                           ; $4b21: $00
    nop                                           ; $4b22: $00
    nop                                           ; $4b23: $00
    jr nz, jr_0b0_4b55                            ; $4b24: $20 $2f

    inc b                                         ; $4b26: $04
    rst $38                                       ; $4b27: $ff
    ld a, a                                       ; $4b28: $7f
    nop                                           ; $4b29: $00
    nop                                           ; $4b2a: $00
    nop                                           ; $4b2b: $00
    jr nz, jr_0b0_4b5d                            ; $4b2c: $20 $2f

    inc b                                         ; $4b2e: $04
    rla                                           ; $4b2f: $17
    nop                                           ; $4b30: $00
    nop                                           ; $4b31: $00
    nop                                           ; $4b32: $00
    rst $38                                       ; $4b33: $ff
    ld a, a                                       ; $4b34: $7f
    ld c, $00                                     ; $4b35: $0e $00
    dec b                                         ; $4b37: $05
    nop                                           ; $4b38: $00
    ld b, $00                                     ; $4b39: $06 $00
    rla                                           ; $4b3b: $17
    nop                                           ; $4b3c: $00
    cpl                                           ; $4b3d: $2f
    inc b                                         ; $4b3e: $04
    ld [de], a                                    ; $4b3f: $12
    nop                                           ; $4b40: $00
    ld h, e                                       ; $4b41: $63
    jr z, @+$10                                   ; $4b42: $28 $0e

    nop                                           ; $4b44: $00
    dec b                                         ; $4b45: $05
    nop                                           ; $4b46: $00
    dec d                                         ; $4b47: $15
    nop                                           ; $4b48: $00
    ld h, e                                       ; $4b49: $63
    jr z, jr_0b0_4b77                             ; $4b4a: $28 $2b

    add hl, hl                                    ; $4b4c: $29
    ld h, $04                                     ; $4b4d: $26 $04
    adc l                                         ; $4b4f: $8d
    ld sp, $0000                                  ; $4b50: $31 $00 $00
    rst $38                                       ; $4b53: $ff
    ld a, a                                       ; $4b54: $7f

jr_0b0_4b55:
    ld h, e                                       ; $4b55: $63
    inc h                                         ; $4b56: $24
    ld l, e                                       ; $4b57: $6b
    dec l                                         ; $4b58: $2d
    nop                                           ; $4b59: $00
    jr nz, @+$01                                  ; $4b5a: $20 $ff

    ld a, a                                       ; $4b5c: $7f

jr_0b0_4b5d:
    ld h, e                                       ; $4b5d: $63
    inc h                                         ; $4b5e: $24
    ld l, e                                       ; $4b5f: $6b
    dec l                                         ; $4b60: $2d
    nop                                           ; $4b61: $00
    jr nz, @+$19                                  ; $4b62: $20 $17

    nop                                           ; $4b64: $00
    cpl                                           ; $4b65: $2f
    inc b                                         ; $4b66: $04
    ld [de], a                                    ; $4b67: $12
    nop                                           ; $4b68: $00
    nop                                           ; $4b69: $00
    nop                                           ; $4b6a: $00
    rst $28                                       ; $4b6b: $ef
    ld [hl], l                                    ; $4b6c: $75
    rst $38                                       ; $4b6d: $ff
    ld a, a                                       ; $4b6e: $7f
    rlca                                          ; $4b6f: $07
    nop                                           ; $4b70: $00
    ld [bc], a                                    ; $4b71: $02
    nop                                           ; $4b72: $00
    cpl                                           ; $4b73: $2f
    inc b                                         ; $4b74: $04
    ld d, $00                                     ; $4b75: $16 $00

jr_0b0_4b77:
    ld b, $00                                     ; $4b77: $06 $00
    inc hl                                        ; $4b79: $23
    ld [$3525], sp                                ; $4b7a: $08 $25 $35
    cpl                                           ; $4b7d: $2f
    inc b                                         ; $4b7e: $04
    adc $39                                       ; $4b7f: $ce $39
    adc $39                                       ; $4b81: $ce $39
    ld d, c                                       ; $4b83: $51
    ld c, d                                       ; $4b84: $4a
    ld [hl], e                                    ; $4b85: $73
    ld c, [hl]                                    ; $4b86: $4e
    sub h                                         ; $4b87: $94
    ld d, d                                       ; $4b88: $52
    nop                                           ; $4b89: $00
    inc b                                         ; $4b8a: $04
    rst $38                                       ; $4b8b: $ff
    ld a, a                                       ; $4b8c: $7f
    ld c, d                                       ; $4b8d: $4a
    add hl, hl                                    ; $4b8e: $29
    adc $39                                       ; $4b8f: $ce $39
    nop                                           ; $4b91: $00
    jr nz, @+$01                                  ; $4b92: $20 $ff

    ld a, a                                       ; $4b94: $7f
    ld c, d                                       ; $4b95: $4a
    add hl, hl                                    ; $4b96: $29
    adc $39                                       ; $4b97: $ce $39
    nop                                           ; $4b99: $00
    jr nz, @+$31                                  ; $4b9a: $20 $2f

    inc b                                         ; $4b9c: $04
    ld d, $00                                     ; $4b9d: $16 $00
    ld b, $00                                     ; $4b9f: $06 $00
    ld bc, $f000                                  ; $4ba1: $01 $00 $f0
    ld a, c                                       ; $4ba4: $79
    rst $38                                       ; $4ba5: $ff
    ld a, a                                       ; $4ba6: $7f
    nop                                           ; $4ba7: $00
    jr nz, jr_0b0_4bb0                            ; $4ba8: $20 $06

    nop                                           ; $4baa: $00
    rst $08                                       ; $4bab: $cf
    ld l, l                                       ; $4bac: $6d
    ld de, $a900                                  ; $4bad: $11 $00 $a9

jr_0b0_4bb0:
    inc l                                         ; $4bb0: $2c
    inc b                                         ; $4bb1: $04
    inc b                                         ; $4bb2: $04
    rlca                                          ; $4bb3: $07
    dec l                                         ; $4bb4: $2d
    adc $39                                       ; $4bb5: $ce $39
    cpl                                           ; $4bb7: $2f
    inc b                                         ; $4bb8: $04
    ld b, d                                       ; $4bb9: $42
    db $10                                        ; $4bba: $10
    ld c, d                                       ; $4bbb: $4a
    add hl, hl                                    ; $4bbc: $29
    adc h                                         ; $4bbd: $8c
    ld sp, $1884                                  ; $4bbe: $31 $84 $18
    nop                                           ; $4bc1: $00
    nop                                           ; $4bc2: $00
    rst $38                                       ; $4bc3: $ff
    ld a, a                                       ; $4bc4: $7f
    ld c, d                                       ; $4bc5: $4a
    add hl, hl                                    ; $4bc6: $29
    ld hl, $0014                                  ; $4bc7: $21 $14 $00
    jr nz, @+$01                                  ; $4bca: $20 $ff

    ld a, a                                       ; $4bcc: $7f
    ld c, d                                       ; $4bcd: $4a
    add hl, hl                                    ; $4bce: $29
    ld hl, $0014                                  ; $4bcf: $21 $14 $00
    jr nz, @-$2f                                  ; $4bd2: $20 $cf

    ld l, l                                       ; $4bd4: $6d
    ld de, $a900                                  ; $4bd5: $11 $00 $a9
    inc l                                         ; $4bd8: $2c
    nop                                           ; $4bd9: $00
    nop                                           ; $4bda: $00
    ld de, $ff7a                                  ; $4bdb: $11 $7a $ff
    ld a, a                                       ; $4bde: $7f
    nop                                           ; $4bdf: $00
    jr nz, jr_0b0_4be2                            ; $4be0: $20 $00

jr_0b0_4be2:
    nop                                           ; $4be2: $00
    ld de, $0f7a                                  ; $4be3: $11 $7a $0f
    nop                                           ; $4be6: $00
    ld b, $00                                     ; $4be7: $06 $00
    nop                                           ; $4be9: $00
    nop                                           ; $4bea: $00
    rst $38                                       ; $4beb: $ff
    ld a, a                                       ; $4bec: $7f
    ld c, d                                       ; $4bed: $4a
    add hl, hl                                    ; $4bee: $29
    ld hl, $0014                                  ; $4bef: $21 $14 $00
    nop                                           ; $4bf2: $00
    rst $38                                       ; $4bf3: $ff
    ld a, a                                       ; $4bf4: $7f
    ld c, d                                       ; $4bf5: $4a
    add hl, hl                                    ; $4bf6: $29
    ld hl, $0014                                  ; $4bf7: $21 $14 $00
    nop                                           ; $4bfa: $00
    rst $38                                       ; $4bfb: $ff
    ld a, a                                       ; $4bfc: $7f
    nop                                           ; $4bfd: $00
    jr nz, jr_0b0_4c21                            ; $4bfe: $20 $21

    inc d                                         ; $4c00: $14
    nop                                           ; $4c01: $00
    jr nz, @+$01                                  ; $4c02: $20 $ff

    ld a, a                                       ; $4c04: $7f
    nop                                           ; $4c05: $00
    jr nz, jr_0b0_4c29                            ; $4c06: $20 $21

    inc d                                         ; $4c08: $14
    nop                                           ; $4c09: $00
    jr nz, jr_0b0_4c1d                            ; $4c0a: $20 $11

    ld a, d                                       ; $4c0c: $7a
    rrca                                          ; $4c0d: $0f
    nop                                           ; $4c0e: $00
    ld b, $00                                     ; $4c0f: $06 $00
    nop                                           ; $4c11: $00
    nop                                           ; $4c12: $00
    rst $38                                       ; $4c13: $ff
    ld a, a                                       ; $4c14: $7f
    nop                                           ; $4c15: $00
    jr nz, jr_0b0_4c1e                            ; $4c16: $20 $06

    nop                                           ; $4c18: $00

jr_0b0_4c19:
    nop                                           ; $4c19: $00
    nop                                           ; $4c1a: $00
    rst $38                                       ; $4c1b: $ff
    ld a, a                                       ; $4c1c: $7f

jr_0b0_4c1d:
    nop                                           ; $4c1d: $00

jr_0b0_4c1e:
    jr nz, jr_0b0_4c26                            ; $4c1e: $20 $06

    nop                                           ; $4c20: $00

jr_0b0_4c21:
    nop                                           ; $4c21: $00
    nop                                           ; $4c22: $00
    nop                                           ; $4c23: $00
    jr nz, jr_0b0_4c26                            ; $4c24: $20 $00

jr_0b0_4c26:
    jr nz, jr_0b0_4c49                            ; $4c26: $20 $21

    inc d                                         ; $4c28: $14

jr_0b0_4c29:
    nop                                           ; $4c29: $00
    nop                                           ; $4c2a: $00
    nop                                           ; $4c2b: $00
    jr nz, jr_0b0_4c2e                            ; $4c2c: $20 $00

jr_0b0_4c2e:
    jr nz, jr_0b0_4c51                            ; $4c2e: $20 $21

    inc d                                         ; $4c30: $14

jr_0b0_4c31:
    nop                                           ; $4c31: $00
    nop                                           ; $4c32: $00
    nop                                           ; $4c33: $00
    jr nz, jr_0b0_4c36                            ; $4c34: $20 $00

jr_0b0_4c36:
    jr nz, jr_0b0_4c59                            ; $4c36: $20 $21

    inc d                                         ; $4c38: $14
    nop                                           ; $4c39: $00
    jr nz, jr_0b0_4c3c                            ; $4c3a: $20 $00

jr_0b0_4c3c:
    jr nz, jr_0b0_4c3e                            ; $4c3c: $20 $00

jr_0b0_4c3e:
    jr nz, jr_0b0_4c61                            ; $4c3e: $20 $21

    inc d                                         ; $4c40: $14
    nop                                           ; $4c41: $00
    jr nz, jr_0b0_4c44                            ; $4c42: $20 $00

jr_0b0_4c44:
    jr nz, jr_0b0_4c5e                            ; $4c44: $20 $18

    ld [hl], a                                    ; $4c46: $77
    ld c, b                                       ; $4c47: $48
    ld b, l                                       ; $4c48: $45

jr_0b0_4c49:
    nop                                           ; $4c49: $00
    jr nz, jr_0b0_4c4c                            ; $4c4a: $20 $00

jr_0b0_4c4c:
    jr nz, jr_0b0_4c66                            ; $4c4c: $20 $18

    ld [hl], a                                    ; $4c4e: $77
    ld c, b                                       ; $4c4f: $48
    ld b, l                                       ; $4c50: $45

jr_0b0_4c51:
    nop                                           ; $4c51: $00
    jr nz, jr_0b0_4c54                            ; $4c52: $20 $00

jr_0b0_4c54:
    jr nz, jr_0b0_4c6e                            ; $4c54: $20 $18

    ld [hl], a                                    ; $4c56: $77
    ld c, b                                       ; $4c57: $48
    ld b, l                                       ; $4c58: $45

jr_0b0_4c59:
    nop                                           ; $4c59: $00
    jr nz, jr_0b0_4c19                            ; $4c5a: $20 $bd

    ld a, e                                       ; $4c5c: $7b
    ld l, c                                       ; $4c5d: $69

jr_0b0_4c5e:
    nop                                           ; $4c5e: $00
    adc d                                         ; $4c5f: $8a
    nop                                           ; $4c60: $00

jr_0b0_4c61:
    nop                                           ; $4c61: $00
    jr nz, jr_0b0_4c21                            ; $4c62: $20 $bd

    ld a, e                                       ; $4c64: $7b
    ld l, c                                       ; $4c65: $69

jr_0b0_4c66:
    nop                                           ; $4c66: $00
    adc d                                         ; $4c67: $8a
    nop                                           ; $4c68: $00
    nop                                           ; $4c69: $00
    jr nz, jr_0b0_4c29                            ; $4c6a: $20 $bd

    ld a, e                                       ; $4c6c: $7b
    ld l, c                                       ; $4c6d: $69

jr_0b0_4c6e:
    nop                                           ; $4c6e: $00
    adc d                                         ; $4c6f: $8a
    nop                                           ; $4c70: $00
    nop                                           ; $4c71: $00
    jr nz, jr_0b0_4c31                            ; $4c72: $20 $bd

    ld a, e                                       ; $4c74: $7b
    ld l, c                                       ; $4c75: $69
    nop                                           ; $4c76: $00
    adc d                                         ; $4c77: $8a
    nop                                           ; $4c78: $00
    nop                                           ; $4c79: $00
    jr nz, jr_0b0_4c7c                            ; $4c7a: $20 $00

jr_0b0_4c7c:
    jr nz, jr_0b0_4c96                            ; $4c7c: $20 $18

    ld [hl], a                                    ; $4c7e: $77
    ld c, b                                       ; $4c7f: $48
    ld b, l                                       ; $4c80: $45
    nop                                           ; $4c81: $00
    jr nz, jr_0b0_4c84                            ; $4c82: $20 $00

jr_0b0_4c84:
    jr nz, jr_0b0_4c9e                            ; $4c84: $20 $18

    ld [hl], a                                    ; $4c86: $77
    ld c, b                                       ; $4c87: $48
    ld b, l                                       ; $4c88: $45
    nop                                           ; $4c89: $00
    jr nz, jr_0b0_4cf5                            ; $4c8a: $20 $69

    nop                                           ; $4c8c: $00
    jr jr_0b0_4d06                                ; $4c8d: $18 $77

    ld c, b                                       ; $4c8f: $48
    ld b, l                                       ; $4c90: $45
    ld l, c                                       ; $4c91: $69
    nop                                           ; $4c92: $00
    scf                                           ; $4c93: $37
    ld [hl], $2f                                  ; $4c94: $36 $2f

jr_0b0_4c96:
    add hl, de                                    ; $4c96: $19
    db $db                                        ; $4c97: $db
    ld c, d                                       ; $4c98: $4a
    nop                                           ; $4c99: $00
    jr nz, jr_0b0_4ca2                            ; $4c9a: $20 $06

    dec a                                         ; $4c9c: $3d
    ld l, c                                       ; $4c9d: $69

jr_0b0_4c9e:
    nop                                           ; $4c9e: $00
    db $db                                        ; $4c9f: $db
    ld c, d                                       ; $4ca0: $4a
    nop                                           ; $4ca1: $00

jr_0b0_4ca2:
    jr nz, jr_0b0_4caa                            ; $4ca2: $20 $06

    dec a                                         ; $4ca4: $3d
    ld l, c                                       ; $4ca5: $69
    nop                                           ; $4ca6: $00
    db $db                                        ; $4ca7: $db
    ld c, d                                       ; $4ca8: $4a
    nop                                           ; $4ca9: $00

jr_0b0_4caa:
    jr nz, jr_0b0_4cb2                            ; $4caa: $20 $06

    dec a                                         ; $4cac: $3d
    ld l, c                                       ; $4cad: $69
    nop                                           ; $4cae: $00
    db $db                                        ; $4caf: $db
    ld c, d                                       ; $4cb0: $4a
    nop                                           ; $4cb1: $00

jr_0b0_4cb2:
    jr nz, jr_0b0_4d1d                            ; $4cb2: $20 $69

    nop                                           ; $4cb4: $00
    jr jr_0b0_4d2e                                ; $4cb5: $18 $77

    ld c, b                                       ; $4cb7: $48
    ld b, l                                       ; $4cb8: $45
    nop                                           ; $4cb9: $00
    jr nz, jr_0b0_4d25                            ; $4cba: $20 $69

    nop                                           ; $4cbc: $00
    jr jr_0b0_4d36                                ; $4cbd: $18 $77

    ld c, b                                       ; $4cbf: $48
    ld b, l                                       ; $4cc0: $45

jr_0b0_4cc1:
    nop                                           ; $4cc1: $00

jr_0b0_4cc2:
    jr nz, jr_0b0_4cc1                            ; $4cc2: $20 $fd

    ld d, d                                       ; $4cc4: $52
    ld l, c                                       ; $4cc5: $69
    nop                                           ; $4cc6: $00
    ld e, [hl]                                    ; $4cc7: $5e
    ld e, e                                       ; $4cc8: $5b
    ld d, d                                       ; $4cc9: $52

jr_0b0_4cca:
    dec d                                         ; $4cca: $15
    add hl, de                                    ; $4ccb: $19
    ld l, $d7                                     ; $4ccc: $2e $d7
    ld hl, $42bb                                  ; $4cce: $21 $bb $42
    nop                                           ; $4cd1: $00

jr_0b0_4cd2:
    jr nz, jr_0b0_4d25                            ; $4cd2: $20 $51

    dec d                                         ; $4cd4: $15
    cpl                                           ; $4cd5: $2f
    ld d, [hl]                                    ; $4cd6: $56
    ld l, b                                       ; $4cd7: $68
    nop                                           ; $4cd8: $00
    nop                                           ; $4cd9: $00
    jr nz, jr_0b0_4d2d                            ; $4cda: $20 $51

    dec d                                         ; $4cdc: $15
    cpl                                           ; $4cdd: $2f
    ld d, [hl]                                    ; $4cde: $56
    ld l, b                                       ; $4cdf: $68
    nop                                           ; $4ce0: $00
    nop                                           ; $4ce1: $00
    jr nz, jr_0b0_4d35                            ; $4ce2: $20 $51

    dec d                                         ; $4ce4: $15
    cpl                                           ; $4ce5: $2f
    ld d, [hl]                                    ; $4ce6: $56
    ld l, b                                       ; $4ce7: $68
    nop                                           ; $4ce8: $00
    nop                                           ; $4ce9: $00
    jr nz, jr_0b0_4d65                            ; $4cea: $20 $79

    ld b, l                                       ; $4cec: $45
    dec c                                         ; $4ced: $0d
    inc d                                         ; $4cee: $14
    ld e, [hl]                                    ; $4cef: $5e
    ld e, e                                       ; $4cf0: $5b
    nop                                           ; $4cf1: $00
    jr nz, jr_0b0_4d01                            ; $4cf2: $20 $0d

    inc d                                         ; $4cf4: $14

jr_0b0_4cf5:
    dec c                                         ; $4cf5: $0d
    inc d                                         ; $4cf6: $14
    ld e, [hl]                                    ; $4cf7: $5e
    ld e, e                                       ; $4cf8: $5b
    ld bc, $8b1c                                  ; $4cf9: $01 $1c $8b
    ld c, c                                       ; $4cfc: $49
    ld a, [hl-]                                   ; $4cfd: $3a
    ld [hl-], a                                   ; $4cfe: $32
    rrca                                          ; $4cff: $0f
    dec c                                         ; $4d00: $0d

jr_0b0_4d01:
    ld [hl], h                                    ; $4d01: $74
    ld de, $21d7                                  ; $4d02: $11 $d7 $21
    cpl                                           ; $4d05: $2f

jr_0b0_4d06:
    ld d, [hl]                                    ; $4d06: $56
    ld l, b                                       ; $4d07: $68
    nop                                           ; $4d08: $00
    nop                                           ; $4d09: $00
    jr nz, jr_0b0_4cc2                            ; $4d0a: $20 $b6

    dec e                                         ; $4d0c: $1d
    or h                                          ; $4d0d: $b4
    ld h, d                                       ; $4d0e: $62
    adc d                                         ; $4d0f: $8a
    nop                                           ; $4d10: $00
    nop                                           ; $4d11: $00
    jr nz, jr_0b0_4cca                            ; $4d12: $20 $b6

    dec e                                         ; $4d14: $1d
    or h                                          ; $4d15: $b4
    ld h, d                                       ; $4d16: $62
    adc d                                         ; $4d17: $8a
    nop                                           ; $4d18: $00
    nop                                           ; $4d19: $00
    jr nz, jr_0b0_4cd2                            ; $4d1a: $20 $b6

    dec e                                         ; $4d1c: $1d

jr_0b0_4d1d:
    or h                                          ; $4d1d: $b4
    ld h, d                                       ; $4d1e: $62
    adc d                                         ; $4d1f: $8a
    nop                                           ; $4d20: $00
    nop                                           ; $4d21: $00
    jr nz, jr_0b0_4d1d                            ; $4d22: $20 $f9

    inc a                                         ; $4d24: $3c

jr_0b0_4d25:
    ld a, a                                       ; $4d25: $7f
    ld h, d                                       ; $4d26: $62
    dec c                                         ; $4d27: $0d
    inc d                                         ; $4d28: $14
    nop                                           ; $4d29: $00
    jr nz, jr_0b0_4da5                            ; $4d2a: $20 $79

    ld b, l                                       ; $4d2c: $45

jr_0b0_4d2d:
    dec c                                         ; $4d2d: $0d

jr_0b0_4d2e:
    inc d                                         ; $4d2e: $14
    ld a, a                                       ; $4d2f: $7f
    ld h, d                                       ; $4d30: $62
    nop                                           ; $4d31: $00
    ld [$1595], sp                                ; $4d32: $08 $95 $15

jr_0b0_4d35:
    ld [hl], d                                    ; $4d35: $72

jr_0b0_4d36:
    ld e, [hl]                                    ; $4d36: $5e
    adc e                                         ; $4d37: $8b
    nop                                           ; $4d38: $00
    nop                                           ; $4d39: $00
    nop                                           ; $4d3a: $00
    rst $38                                       ; $4d3b: $ff
    ld a, a                                       ; $4d3c: $7f
    call z, $7408                                 ; $4d3d: $cc $08 $74
    dec d                                         ; $4d40: $15
    ld l, d                                       ; $4d41: $6a
    nop                                           ; $4d42: $00

jr_0b0_4d43:
    ld e, e                                       ; $4d43: $5b
    ld l, e                                       ; $4d44: $6b
    rst $10                                       ; $4d45: $d7
    ld hl, $7fff                                  ; $4d46: $21 $ff $7f
    nop                                           ; $4d49: $00
    jr nz, jr_0b0_4d43                            ; $4d4a: $20 $f7

    ld l, d                                       ; $4d4c: $6a
    sbc $7f                                       ; $4d4d: $de $7f
    rst $38                                       ; $4d4f: $ff
    ld a, a                                       ; $4d50: $7f
    nop                                           ; $4d51: $00
    jr nz, @-$07                                  ; $4d52: $20 $f7

    ld l, d                                       ; $4d54: $6a
    sbc $7f                                       ; $4d55: $de $7f
    rst $38                                       ; $4d57: $ff
    ld a, a                                       ; $4d58: $7f
    ld b, $18                                     ; $4d59: $06 $18
    db $dd                                        ; $4d5b: $dd
    inc bc                                        ; $4d5c: $03
    sbc d                                         ; $4d5d: $9a
    jr c, @+$01                                   ; $4d5e: $38 $ff

    ld h, a                                       ; $4d60: $67
    ld [$f618], sp                                ; $4d61: $08 $18 $f6
    ld d, c                                       ; $4d64: $51

jr_0b0_4d65:
    sbc [hl]                                      ; $4d65: $9e
    ld h, d                                       ; $4d66: $62
    ld a, d                                       ; $4d67: $7a
    inc [hl]                                      ; $4d68: $34
    inc h                                         ; $4d69: $24
    nop                                           ; $4d6a: $00
    sbc e                                         ; $4d6b: $9b
    ld a, e                                       ; $4d6c: $7b
    ld h, b                                       ; $4d6d: $60
    ld h, l                                       ; $4d6e: $65
    sub e                                         ; $4d6f: $93
    add hl, de                                    ; $4d70: $19

jr_0b0_4d71:
    ld hl, $9a51                                  ; $4d71: $21 $51 $9a
    ld a, a                                       ; $4d74: $7f
    call z, $9508                                 ; $4d75: $cc $08 $95
    add hl, de                                    ; $4d78: $19
    nop                                           ; $4d79: $00
    nop                                           ; $4d7a: $00
    sub l                                         ; $4d7b: $95
    add hl, de                                    ; $4d7c: $19
    rst $38                                       ; $4d7d: $ff
    ld a, a                                       ; $4d7e: $7f
    ld l, c                                       ; $4d7f: $69
    nop                                           ; $4d80: $00
    nop                                           ; $4d81: $00
    nop                                           ; $4d82: $00
    ld d, d                                       ; $4d83: $52
    ld c, d                                       ; $4d84: $4a
    sbc h                                         ; $4d85: $9c
    ld [hl], a                                    ; $4d86: $77
    nop                                           ; $4d87: $00
    jr nz, jr_0b0_4d8a                            ; $4d88: $20 $00

jr_0b0_4d8a:
    jr nz, jr_0b0_4dde                            ; $4d8a: $20 $52

    ld c, d                                       ; $4d8c: $4a
    sbc h                                         ; $4d8d: $9c
    ld [hl], a                                    ; $4d8e: $77
    nop                                           ; $4d8f: $00
    jr nz, jr_0b0_4d92                            ; $4d90: $20 $00

jr_0b0_4d92:
    jr nz, jr_0b0_4d71                            ; $4d92: $20 $dd

    inc bc                                        ; $4d94: $03
    ld a, d                                       ; $4d95: $7a
    inc [hl]                                      ; $4d96: $34
    adc h                                         ; $4d97: $8c
    db $10                                        ; $4d98: $10
    dec c                                         ; $4d99: $0d
    inc d                                         ; $4d9a: $14
    db $dd                                        ; $4d9b: $dd
    inc bc                                        ; $4d9c: $03
    rst $38                                       ; $4d9d: $ff
    ld h, [hl]                                    ; $4d9e: $66
    cp c                                          ; $4d9f: $b9
    jr c, jr_0b0_4e08                             ; $4da0: $38 $66

    nop                                           ; $4da2: $00
    ld hl, sp+$25                                 ; $4da3: $f8 $25

jr_0b0_4da5:
    ld [hl+], a                                   ; $4da5: $22
    ld c, c                                       ; $4da6: $49
    ld a, a                                       ; $4da7: $7f
    ld e, a                                       ; $4da8: $5f
    add a                                         ; $4da9: $87
    ld [$1174], sp                                ; $4daa: $08 $74 $11
    rst $10                                       ; $4dad: $d7
    ld hl, $1dd8                                  ; $4dae: $21 $d8 $1d
    nop                                           ; $4db1: $00
    nop                                           ; $4db2: $00
    sub e                                         ; $4db3: $93
    dec e                                         ; $4db4: $1d
    sub h                                         ; $4db5: $94

jr_0b0_4db6:
    ld d, d                                       ; $4db6: $52
    xor c                                         ; $4db7: $a9
    ld [$0000], sp                                ; $4db8: $08 $00 $00
    ld d, d                                       ; $4dbb: $52
    ld c, d                                       ; $4dbc: $4a
    ld a, e                                       ; $4dbd: $7b
    ld l, a                                       ; $4dbe: $6f
    nop                                           ; $4dbf: $00
    jr nz, jr_0b0_4dc2                            ; $4dc0: $20 $00

jr_0b0_4dc2:
    nop                                           ; $4dc2: $00
    nop                                           ; $4dc3: $00
    jr nz, jr_0b0_4e41                            ; $4dc4: $20 $7b

    ld l, a                                       ; $4dc6: $6f
    nop                                           ; $4dc7: $00
    jr nz, jr_0b0_4dcb                            ; $4dc8: $20 $01

    db $10                                        ; $4dca: $10

jr_0b0_4dcb:
    xor h                                         ; $4dcb: $ac
    dec c                                         ; $4dcc: $0d
    db $dd                                        ; $4dcd: $dd
    inc bc                                        ; $4dce: $03
    ld a, d                                       ; $4dcf: $7a
    inc [hl]                                      ; $4dd0: $34
    ld a, c                                       ; $4dd1: $79
    ld b, l                                       ; $4dd2: $45
    db $dd                                        ; $4dd3: $dd
    inc bc                                        ; $4dd4: $03
    ld a, a                                       ; $4dd5: $7f
    ld h, d                                       ; $4dd6: $62
    ld a, d                                       ; $4dd7: $7a
    inc [hl]                                      ; $4dd8: $34
    nop                                           ; $4dd9: $00
    nop                                           ; $4dda: $00
    sub l                                         ; $4ddb: $95
    dec d                                         ; $4ddc: $15
    push de                                       ; $4ddd: $d5

jr_0b0_4dde:
    ld b, l                                       ; $4dde: $45
    dec hl                                        ; $4ddf: $2b
    ld [$110d], sp                                ; $4de0: $08 $0d $11
    sub h                                         ; $4de3: $94
    add hl, de                                    ; $4de4: $19
    rst $10                                       ; $4de5: $d7
    ld hl, $21f8                                  ; $4de6: $21 $f8 $21
    nop                                           ; $4de9: $00
    nop                                           ; $4dea: $00
    jr jr_0b0_4e50                                ; $4deb: $18 $63

    ld d, b                                       ; $4ded: $50
    add hl, de                                    ; $4dee: $19
    adc c                                         ; $4def: $89
    inc b                                         ; $4df0: $04
    nop                                           ; $4df1: $00
    nop                                           ; $4df2: $00
    ld d, d                                       ; $4df3: $52
    ld c, d                                       ; $4df4: $4a
    ld a, e                                       ; $4df5: $7b
    ld l, a                                       ; $4df6: $6f
    adc c                                         ; $4df7: $89
    inc b                                         ; $4df8: $04
    nop                                           ; $4df9: $00
    nop                                           ; $4dfa: $00
    ld a, e                                       ; $4dfb: $7b
    ld l, a                                       ; $4dfc: $6f
    nop                                           ; $4dfd: $00
    jr nz, @-$75                                  ; $4dfe: $20 $89

    inc b                                         ; $4e00: $04
    nop                                           ; $4e01: $00
    nop                                           ; $4e02: $00
    ld a, d                                       ; $4e03: $7a
    inc [hl]                                      ; $4e04: $34
    adc h                                         ; $4e05: $8c
    stop                                          ; $4e06: $10 $00

jr_0b0_4e08:
    jr nz, jr_0b0_4db6                            ; $4e08: $20 $ac

    dec c                                         ; $4e0a: $0d
    db $dd                                        ; $4e0b: $dd
    inc bc                                        ; $4e0c: $03
    ld a, d                                       ; $4e0d: $7a
    inc [hl]                                      ; $4e0e: $34
    ld a, a                                       ; $4e0f: $7f
    ld h, d                                       ; $4e10: $62
    nop                                           ; $4e11: $00
    nop                                           ; $4e12: $00
    or e                                          ; $4e13: $b3
    dec h                                         ; $4e14: $25
    rst $30                                       ; $4e15: $f7
    ld c, c                                       ; $4e16: $49
    ld l, h                                       ; $4e17: $6c

Jump_0b0_4e18:
    inc c                                         ; $4e18: $0c
    xor h                                         ; $4e19: $ac
    inc b                                         ; $4e1a: $04
    ld [hl], e                                    ; $4e1b: $73
    dec d                                         ; $4e1c: $15
    rst $10                                       ; $4e1d: $d7
    ld hl, $0d0d                                  ; $4e1e: $21 $0d $0d
    ld [bc], a                                    ; $4e21: $02
    nop                                           ; $4e22: $00
    sub $5a                                       ; $4e23: $d6 $5a
    rst $28                                       ; $4e25: $ef
    ld [$318d], sp                                ; $4e26: $08 $8d $31
    nop                                           ; $4e29: $00
    nop                                           ; $4e2a: $00
    ld d, d                                       ; $4e2b: $52
    ld c, d                                       ; $4e2c: $4a
    ld a, e                                       ; $4e2d: $7b
    ld l, a                                       ; $4e2e: $6f
    rst $20                                       ; $4e2f: $e7
    inc e                                         ; $4e30: $1c
    nop                                           ; $4e31: $00
    nop                                           ; $4e32: $00
    ld a, e                                       ; $4e33: $7b
    ld l, a                                       ; $4e34: $6f
    ld l, e                                       ; $4e35: $6b
    dec l                                         ; $4e36: $2d
    nop                                           ; $4e37: $00
    jr nz, jr_0b0_4e3a                            ; $4e38: $20 $00

jr_0b0_4e3a:
    jr nz, jr_0b0_4e8d                            ; $4e3a: $20 $51

    ld h, [hl]                                    ; $4e3c: $66
    ld sp, $261c                                  ; $4e3d: $31 $1c $26
    ld b, c                                       ; $4e40: $41

jr_0b0_4e41:
    xor h                                         ; $4e41: $ac
    dec c                                         ; $4e42: $0d
    db $dd                                        ; $4e43: $dd
    inc bc                                        ; $4e44: $03
    ld a, d                                       ; $4e45: $7a
    inc [hl]                                      ; $4e46: $34
    ld h, $41                                     ; $4e47: $26 $41
    nop                                           ; $4e49: $00
    nop                                           ; $4e4a: $00
    ld [hl], $1d                                  ; $4e4b: $36 $1d
    rst $30                                       ; $4e4d: $f7
    ld c, c                                       ; $4e4e: $49
    ld l, e                                       ; $4e4f: $6b

jr_0b0_4e50:
    db $10                                        ; $4e50: $10
    ld l, c                                       ; $4e51: $69
    nop                                           ; $4e52: $00
    ld sp, $b50d                                  ; $4e53: $31 $0d $b5
    dec e                                         ; $4e56: $1d
    adc $04                                       ; $4e57: $ce $04
    nop                                           ; $4e59: $00
    nop                                           ; $4e5a: $00
    rst $28                                       ; $4e5b: $ef
    dec a                                         ; $4e5c: $3d
    and a                                         ; $4e5d: $a7
    inc c                                         ; $4e5e: $0c
    ld [hl], h                                    ; $4e5f: $74
    dec d                                         ; $4e60: $15
    nop                                           ; $4e61: $00
    nop                                           ; $4e62: $00
    ld d, d                                       ; $4e63: $52
    ld c, d                                       ; $4e64: $4a
    ld a, e                                       ; $4e65: $7b
    ld l, a                                       ; $4e66: $6f
    rst $20                                       ; $4e67: $e7
    inc e                                         ; $4e68: $1c
    nop                                           ; $4e69: $00
    nop                                           ; $4e6a: $00
    ld a, e                                       ; $4e6b: $7b
    ld l, a                                       ; $4e6c: $6f
    ld l, h                                       ; $4e6d: $6c
    dec l                                         ; $4e6e: $2d
    nop                                           ; $4e6f: $00
    jr nz, jr_0b0_4e72                            ; $4e70: $20 $00

jr_0b0_4e72:
    inc b                                         ; $4e72: $04
    ld sp, $496a                                  ; $4e73: $31 $6a $49
    ld c, l                                       ; $4e76: $4d
    ld e, h                                       ; $4e77: $5c
    ld l, a                                       ; $4e78: $6f
    ld [$dd0c], sp                                ; $4e79: $08 $0c $dd
    inc bc                                        ; $4e7c: $03
    ld a, d                                       ; $4e7d: $7a
    inc [hl]                                      ; $4e7e: $34
    xor h                                         ; $4e7f: $ac
    dec c                                         ; $4e80: $0d
    nop                                           ; $4e81: $00
    nop                                           ; $4e82: $00
    sub l                                         ; $4e83: $95
    dec a                                         ; $4e84: $3d
    ld a, a                                       ; $4e85: $7f
    ld h, d                                       ; $4e86: $62
    ld l, e                                       ; $4e87: $6b
    ld [$04ab], sp                                ; $4e88: $08 $ab $04
    ld [hl], h                                    ; $4e8b: $74
    dec d                                         ; $4e8c: $15

jr_0b0_4e8d:
    rst $10                                       ; $4e8d: $d7
    dec e                                         ; $4e8e: $1d
    db $10                                        ; $4e8f: $10
    add hl, bc                                    ; $4e90: $09
    ld hl, $ae04                                  ; $4e91: $21 $04 $ae
    dec [hl]                                      ; $4e94: $35
    ld a, e                                       ; $4e95: $7b
    ld l, a                                       ; $4e96: $6f
    sub l                                         ; $4e97: $95
    dec d                                         ; $4e98: $15
    nop                                           ; $4e99: $00
    nop                                           ; $4e9a: $00
    ld d, d                                       ; $4e9b: $52
    ld c, d                                       ; $4e9c: $4a
    ld a, e                                       ; $4e9d: $7b
    ld l, a                                       ; $4e9e: $6f
    sub l                                         ; $4e9f: $95
    dec d                                         ; $4ea0: $15
    nop                                           ; $4ea1: $00
    nop                                           ; $4ea2: $00
    ld a, e                                       ; $4ea3: $7b
    ld l, a                                       ; $4ea4: $6f
    adc h                                         ; $4ea5: $8c
    ld sp, $2000                                  ; $4ea6: $31 $00 $20
    ld b, $08                                     ; $4ea9: $06 $08
    ld a, c                                       ; $4eab: $79
    ld b, l                                       ; $4eac: $45
    sbc l                                         ; $4ead: $9d
    ld l, a                                       ; $4eae: $6f
    ld a, b                                       ; $4eaf: $78
    ld l, d                                       ; $4eb0: $6a
    ld c, d                                       ; $4eb1: $4a
    inc c                                         ; $4eb2: $0c
    db $dd                                        ; $4eb3: $dd
    inc bc                                        ; $4eb4: $03
    cp d                                          ; $4eb5: $ba
    jr c, jr_0b0_4f37                             ; $4eb6: $38 $7f

    ld h, d                                       ; $4eb8: $62
    nop                                           ; $4eb9: $00
    nop                                           ; $4eba: $00
    sbc b                                         ; $4ebb: $98
    dec a                                         ; $4ebc: $3d
    db $dd                                        ; $4ebd: $dd
    inc bc                                        ; $4ebe: $03
    xor e                                         ; $4ebf: $ab
    db $10                                        ; $4ec0: $10
    ld l, c                                       ; $4ec1: $69
    nop                                           ; $4ec2: $00
    sub h                                         ; $4ec3: $94
    add hl, de                                    ; $4ec4: $19
    rst $10                                       ; $4ec5: $d7
    ld hl, $25b9                                  ; $4ec6: $21 $b9 $25
    ld bc, $cc00                                  ; $4ec9: $01 $00 $cc
    ld [$35ae], sp                                ; $4ecc: $08 $ae $35
    ld d, e                                       ; $4ecf: $53
    ld de, $0000                                  ; $4ed0: $11 $00 $00
    db $10                                        ; $4ed3: $10
    ld b, d                                       ; $4ed4: $42
    ld a, e                                       ; $4ed5: $7b
    ld l, a                                       ; $4ed6: $6f
    rst $20                                       ; $4ed7: $e7
    inc e                                         ; $4ed8: $1c
    nop                                           ; $4ed9: $00
    nop                                           ; $4eda: $00
    ld a, e                                       ; $4edb: $7b
    ld l, a                                       ; $4edc: $6f
    adc h                                         ; $4edd: $8c
    ld sp, $2000                                  ; $4ede: $31 $00 $20
    dec b                                         ; $4ee1: $05
    inc c                                         ; $4ee2: $0c
    add hl, de                                    ; $4ee3: $19
    dec a                                         ; $4ee4: $3d
    db $10                                        ; $4ee5: $10
    ld h, [hl]                                    ; $4ee6: $66
    cp e                                          ; $4ee7: $bb
    ld l, d                                       ; $4ee8: $6a
    rst $20                                       ; $4ee9: $e7
    nop                                           ; $4eea: $00
    db $dd                                        ; $4eeb: $dd
    inc bc                                        ; $4eec: $03
    ld a, d                                       ; $4eed: $7a
    inc [hl]                                      ; $4eee: $34
    dec c                                         ; $4eef: $0d
    inc d                                         ; $4ef0: $14
    add [hl]                                      ; $4ef1: $86
    nop                                           ; $4ef2: $00
    ld [hl], l                                    ; $4ef3: $75
    ld hl, $03dd                                  ; $4ef4: $21 $dd $03
    ld c, [hl]                                    ; $4ef7: $4e
    db $10                                        ; $4ef8: $10
    ld l, h                                       ; $4ef9: $6c
    dec c                                         ; $4efa: $0d
    rst $38                                       ; $4efb: $ff
    ld a, a                                       ; $4efc: $7f
    or [hl]                                       ; $4efd: $b6
    dec e                                         ; $4efe: $1d
    ld a, c                                       ; $4eff: $79
    ld b, l                                       ; $4f00: $45
    inc hl                                        ; $4f01: $23
    nop                                           ; $4f02: $00
    sub e                                         ; $4f03: $93
    dec d                                         ; $4f04: $15
    ld d, d                                       ; $4f05: $52
    ld c, d                                       ; $4f06: $4a
    ld a, e                                       ; $4f07: $7b
    ld l, a                                       ; $4f08: $6f

jr_0b0_4f09:
    nop                                           ; $4f09: $00
    nop                                           ; $4f0a: $00
    ld d, d                                       ; $4f0b: $52
    ld c, d                                       ; $4f0c: $4a

jr_0b0_4f0d:
    ld a, e                                       ; $4f0d: $7b
    ld l, a                                       ; $4f0e: $6f
    rst $20                                       ; $4f0f: $e7
    inc e                                         ; $4f10: $1c
    nop                                           ; $4f11: $00
    nop                                           ; $4f12: $00
    adc h                                         ; $4f13: $8c
    ld sp, $2000                                  ; $4f14: $31 $00 $20
    ld d, d                                       ; $4f17: $52
    ld c, d                                       ; $4f18: $4a
    dec b                                         ; $4f19: $05
    inc d                                         ; $4f1a: $14
    call $9c59                                    ; $4f1b: $cd $59 $9c
    ld h, [hl]                                    ; $4f1e: $66
    reti                                          ; $4f1f: $d9


    jr c, jr_0b0_4f09                             ; $4f20: $38 $e7

    nop                                           ; $4f22: $00
    db $dd                                        ; $4f23: $dd
    inc bc                                        ; $4f24: $03
    ld a, d                                       ; $4f25: $7a

jr_0b0_4f26:
    inc [hl]                                      ; $4f26: $34
    dec c                                         ; $4f27: $0d
    inc d                                         ; $4f28: $14
    dec c                                         ; $4f29: $0d
    inc d                                         ; $4f2a: $14
    ld a, c                                       ; $4f2b: $79
    ld b, l                                       ; $4f2c: $45
    inc sp                                        ; $4f2d: $33
    dec e                                         ; $4f2e: $1d
    ld a, a                                       ; $4f2f: $7f
    ld h, d                                       ; $4f30: $62
    ld a, [bc]                                    ; $4f31: $0a
    dec b                                         ; $4f32: $05
    db $dd                                        ; $4f33: $dd
    inc bc                                        ; $4f34: $03
    ccf                                           ; $4f35: $3f
    ld l, a                                       ; $4f36: $6f

jr_0b0_4f37:
    sub [hl]                                      ; $4f37: $96
    add hl, hl                                    ; $4f38: $29
    nop                                           ; $4f39: $00
    nop                                           ; $4f3a: $00
    ld d, d                                       ; $4f3b: $52
    ld c, d                                       ; $4f3c: $4a
    ld l, [hl]                                    ; $4f3d: $6e
    dec d                                         ; $4f3e: $15
    cp l                                          ; $4f3f: $bd
    ld [hl], a                                    ; $4f40: $77
    nop                                           ; $4f41: $00
    nop                                           ; $4f42: $00
    ld de, $7b42                                  ; $4f43: $11 $42 $7b
    ld l, a                                       ; $4f46: $6f
    rst $20                                       ; $4f47: $e7
    inc e                                         ; $4f48: $1c
    nop                                           ; $4f49: $00
    nop                                           ; $4f4a: $00
    adc h                                         ; $4f4b: $8c
    ld sp, $2000                                  ; $4f4c: $31 $00 $20
    ld d, d                                       ; $4f4f: $52
    ld c, d                                       ; $4f50: $4a
    nop                                           ; $4f51: $00
    jr nz, jr_0b0_4f0d                            ; $4f52: $20 $b9

    jr c, jr_0b0_4fd5                             ; $4f54: $38 $7f

    ld h, d                                       ; $4f56: $62
    dec c                                         ; $4f57: $0d
    inc d                                         ; $4f58: $14
    nop                                           ; $4f59: $00
    nop                                           ; $4f5a: $00
    ld a, d                                       ; $4f5b: $7a
    inc [hl]                                      ; $4f5c: $34
    rst $38                                       ; $4f5d: $ff
    ld a, a                                       ; $4f5e: $7f
    dec c                                         ; $4f5f: $0d
    inc d                                         ; $4f60: $14
    adc h                                         ; $4f61: $8c
    db $10                                        ; $4f62: $10
    db $dd                                        ; $4f63: $dd
    inc bc                                        ; $4f64: $03
    cp c                                          ; $4f65: $b9
    jr c, @+$01                                   ; $4f66: $38 $ff

    ld l, d                                       ; $4f68: $6a
    sub b                                         ; $4f69: $90
    dec c                                         ; $4f6a: $0d
    db $dd                                        ; $4f6b: $dd
    inc bc                                        ; $4f6c: $03
    add hl, de                                    ; $4f6d: $19
    dec a                                         ; $4f6e: $3d
    ld a, a                                       ; $4f6f: $7f
    ld h, d                                       ; $4f70: $62
    ld b, d                                       ; $4f71: $42
    inc b                                         ; $4f72: $04
    ld [hl], c                                    ; $4f73: $71
    dec c                                         ; $4f74: $0d
    db $dd                                        ; $4f75: $dd
    inc bc                                        ; $4f76: $03
    db $10                                        ; $4f77: $10
    ld b, d                                       ; $4f78: $42
    and l                                         ; $4f79: $a5
    inc d                                         ; $4f7a: $14
    ld d, d                                       ; $4f7b: $52
    ld c, d                                       ; $4f7c: $4a
    ld a, e                                       ; $4f7d: $7b
    ld l, a                                       ; $4f7e: $6f
    adc l                                         ; $4f7f: $8d
    ld sp, $0000                                  ; $4f80: $31 $00 $00
    adc h                                         ; $4f83: $8c
    ld sp, $2000                                  ; $4f84: $31 $00 $20
    xor l                                         ; $4f87: $ad
    dec [hl]                                      ; $4f88: $35
    nop                                           ; $4f89: $00
    jr nz, jr_0b0_4f26                            ; $4f8a: $20 $9a

    jr c, jr_0b0_500d                             ; $4f8c: $38 $7f

    ld h, d                                       ; $4f8e: $62
    dec c                                         ; $4f8f: $0d
    inc d                                         ; $4f90: $14
    ld b, $08                                     ; $4f91: $06 $08
    rst $28                                       ; $4f93: $ef
    dec a                                         ; $4f94: $3d
    db $dd                                        ; $4f95: $dd
    inc bc                                        ; $4f96: $03
    sbc d                                         ; $4f97: $9a
    inc [hl]                                      ; $4f98: $34
    xor h                                         ; $4f99: $ac
    dec c                                         ; $4f9a: $0d
    ld a, c                                       ; $4f9b: $79
    ld b, l                                       ; $4f9c: $45
    dec c                                         ; $4f9d: $0d
    inc d                                         ; $4f9e: $14
    ld a, d                                       ; $4f9f: $7a
    inc [hl]                                      ; $4fa0: $34
    dec hl                                        ; $4fa1: $2b
    add hl, bc                                    ; $4fa2: $09
    db $dd                                        ; $4fa3: $dd
    inc bc                                        ; $4fa4: $03
    ld a, a                                       ; $4fa5: $7f
    ld h, d                                       ; $4fa6: $62
    cp d                                          ; $4fa7: $ba
    jr c, jr_0b0_500d                             ; $4fa8: $38 $63

    inc b                                         ; $4faa: $04
    db $10                                        ; $4fab: $10
    ld b, d                                       ; $4fac: $42
    db $dd                                        ; $4fad: $dd
    inc bc                                        ; $4fae: $03
    ld [hl], h                                    ; $4faf: $74
    ld de, $0000                                  ; $4fb0: $11 $00 $00
    ld sp, $3946                                  ; $4fb3: $31 $46 $39
    ld h, a                                       ; $4fb6: $67
    rst $20                                       ; $4fb7: $e7
    inc e                                         ; $4fb8: $1c
    nop                                           ; $4fb9: $00
    nop                                           ; $4fba: $00
    adc h                                         ; $4fbb: $8c
    ld sp, $2000                                  ; $4fbc: $31 $00 $20
    ld d, d                                       ; $4fbf: $52
    ld c, d                                       ; $4fc0: $4a
    dec c                                         ; $4fc1: $0d
    inc d                                         ; $4fc2: $14
    ld a, c                                       ; $4fc3: $79
    ld b, l                                       ; $4fc4: $45
    ld a, d                                       ; $4fc5: $7a
    inc [hl]                                      ; $4fc6: $34
    ld a, a                                       ; $4fc7: $7f
    ld h, d                                       ; $4fc8: $62
    nop                                           ; $4fc9: $00
    nop                                           ; $4fca: $00
    db $10                                        ; $4fcb: $10
    ld b, d                                       ; $4fcc: $42
    reti                                          ; $4fcd: $d9


    jr c, jr_0b0_4fdd                             ; $4fce: $38 $0d

    inc d                                         ; $4fd0: $14
    xor h                                         ; $4fd1: $ac
    dec c                                         ; $4fd2: $0d
    ld a, c                                       ; $4fd3: $79
    ld b, l                                       ; $4fd4: $45

jr_0b0_4fd5:
    dec c                                         ; $4fd5: $0d
    inc d                                         ; $4fd6: $14
    ld a, d                                       ; $4fd7: $7a
    inc [hl]                                      ; $4fd8: $34
    ld b, b                                       ; $4fd9: $40
    nop                                           ; $4fda: $00
    ld a, d                                       ; $4fdb: $7a
    inc [hl]                                      ; $4fdc: $34

jr_0b0_4fdd:
    dec c                                         ; $4fdd: $0d
    inc d                                         ; $4fde: $14
    jr z, jr_0b0_4fe2                             ; $4fdf: $28 $01

    nop                                           ; $4fe1: $00

jr_0b0_4fe2:
    nop                                           ; $4fe2: $00
    adc l                                         ; $4fe3: $8d
    ld sp, $0ca8                                  ; $4fe4: $31 $a8 $0c
    sub l                                         ; $4fe7: $95
    add hl, de                                    ; $4fe8: $19
    nop                                           ; $4fe9: $00
    nop                                           ; $4fea: $00
    adc l                                         ; $4feb: $8d
    ld sp, $4a52                                  ; $4fec: $31 $52 $4a
    rst $20                                       ; $4fef: $e7
    inc e                                         ; $4ff0: $1c
    nop                                           ; $4ff1: $00
    inc e                                         ; $4ff2: $1c
    sub e                                         ; $4ff3: $93
    ld e, [hl]                                    ; $4ff4: $5e
    rst $38                                       ; $4ff5: $ff
    ld a, a                                       ; $4ff6: $7f
    adc l                                         ; $4ff7: $8d
    ld sp, $0000                                  ; $4ff8: $31 $00 $00
    cp c                                          ; $4ffb: $b9
    jr c, jr_0b0_507d                             ; $4ffc: $38 $7f

    ld h, d                                       ; $4ffe: $62
    dec c                                         ; $4fff: $0d
    inc d                                         ; $5000: $14
    nop                                           ; $5001: $00
    nop                                           ; $5002: $00
    xor l                                         ; $5003: $ad
    dec [hl]                                      ; $5004: $35
    ld a, c                                       ; $5005: $79
    ld b, l                                       ; $5006: $45
    dec c                                         ; $5007: $0d
    inc d                                         ; $5008: $14
    jp z, $dd0c                                   ; $5009: $ca $0c $dd

    inc bc                                        ; $500c: $03

jr_0b0_500d:
    rst $38                                       ; $500d: $ff
    ld a, a                                       ; $500e: $7f
    ld a, c                                       ; $500f: $79
    ld b, l                                       ; $5010: $45
    nop                                           ; $5011: $00
    nop                                           ; $5012: $00

jr_0b0_5013:
    or e                                          ; $5013: $b3
    dec d                                         ; $5014: $15
    ld a, d                                       ; $5015: $7a
    inc [hl]                                      ; $5016: $34
    dec c                                         ; $5017: $0d
    inc d                                         ; $5018: $14
    nop                                           ; $5019: $00
    nop                                           ; $501a: $00
    adc $39                                       ; $501b: $ce $39
    add $18                                       ; $501d: $c6 $18
    sub l                                         ; $501f: $95
    add hl, de                                    ; $5020: $19
    nop                                           ; $5021: $00
    nop                                           ; $5022: $00
    adc h                                         ; $5023: $8c
    ld sp, $5ef7                                  ; $5024: $31 $f7 $5e
    rst $20                                       ; $5027: $e7
    inc e                                         ; $5028: $1c
    nop                                           ; $5029: $00
    inc e                                         ; $502a: $1c
    or h                                          ; $502b: $b4
    ld h, d                                       ; $502c: $62
    adc l                                         ; $502d: $8d
    ld sp, $77bd                                  ; $502e: $31 $bd $77
    nop                                           ; $5031: $00
    nop                                           ; $5032: $00
    reti                                          ; $5033: $d9


    jr c, jr_0b0_5013                             ; $5034: $38 $dd

    inc bc                                        ; $5036: $03
    adc h                                         ; $5037: $8c
    db $10                                        ; $5038: $10
    ld a, d                                       ; $5039: $7a
    inc [hl]                                      ; $503a: $34
    sbc a                                         ; $503b: $9f
    ld h, d                                       ; $503c: $62
    xor h                                         ; $503d: $ac
    dec c                                         ; $503e: $0d
    db $dd                                        ; $503f: $dd
    inc bc                                        ; $5040: $03
    ret nz                                        ; $5041: $c0

    nop                                           ; $5042: $00
    db $dd                                        ; $5043: $dd
    inc bc                                        ; $5044: $03
    inc sp                                        ; $5045: $33

jr_0b0_5046:
    inc h                                         ; $5046: $24
    xor h                                         ; $5047: $ac
    dec c                                         ; $5048: $0d
    nop                                           ; $5049: $00
    nop                                           ; $504a: $00
    xor h                                         ; $504b: $ac
    dec c                                         ; $504c: $0d
    ld c, e                                       ; $504d: $4b
    inc c                                         ; $504e: $0c
    ld [hl], h                                    ; $504f: $74
    ld de, $0000                                  ; $5050: $11 $00 $00
    adc h                                         ; $5053: $8c

jr_0b0_5054:
    ld sp, $1ce7                                  ; $5054: $31 $e7 $1c
    ld d, d                                       ; $5057: $52
    ld c, d                                       ; $5058: $4a
    nop                                           ; $5059: $00
    nop                                           ; $505a: $00
    adc h                                         ; $505b: $8c
    ld sp, $1ce7                                  ; $505c: $31 $e7 $1c
    ld d, d                                       ; $505f: $52
    ld c, d                                       ; $5060: $4a
    nop                                           ; $5061: $00
    nop                                           ; $5062: $00
    rla                                           ; $5063: $17
    ld l, e                                       ; $5064: $6b
    nop                                           ; $5065: $00
    jr nz, jr_0b0_5046                            ; $5066: $20 $de

    ld a, a                                       ; $5068: $7f
    nop                                           ; $5069: $00
    inc d                                         ; $506a: $14

jr_0b0_506b:
    db $dd                                        ; $506b: $dd
    inc bc                                        ; $506c: $03
    xor h                                         ; $506d: $ac
    dec c                                         ; $506e: $0d
    dec c                                         ; $506f: $0d
    inc d                                         ; $5070: $14
    ld l, d                                       ; $5071: $6a
    inc c                                         ; $5072: $0c
    db $dd                                        ; $5073: $dd
    inc bc                                        ; $5074: $03
    rst $38                                       ; $5075: $ff
    ld a, a                                       ; $5076: $7f
    ld a, d                                       ; $5077: $7a
    inc [hl]                                      ; $5078: $34
    ld h, b                                       ; $5079: $60
    nop                                           ; $507a: $00
    db $dd                                        ; $507b: $dd
    inc bc                                        ; $507c: $03

jr_0b0_507d:
    rst $38                                       ; $507d: $ff
    ld a, a                                       ; $507e: $7f
    xor h                                         ; $507f: $ac
    dec c                                         ; $5080: $0d
    adc [hl]                                      ; $5081: $8e
    dec c                                         ; $5082: $0d
    ld a, c                                       ; $5083: $79
    ld b, l                                       ; $5084: $45
    rst $38                                       ; $5085: $ff
    ld a, a                                       ; $5086: $7f
    ld a, a                                       ; $5087: $7f
    ld h, d                                       ; $5088: $62
    nop                                           ; $5089: $00
    nop                                           ; $508a: $00
    adc h                                         ; $508b: $8c
    ld sp, $18e7                                  ; $508c: $31 $e7 $18
    ld d, d                                       ; $508f: $52
    ld c, d                                       ; $5090: $4a
    nop                                           ; $5091: $00
    nop                                           ; $5092: $00
    adc h                                         ; $5093: $8c
    ld sp, $1ce7                                  ; $5094: $31 $e7 $1c
    ld d, d                                       ; $5097: $52
    ld c, d                                       ; $5098: $4a
    nop                                           ; $5099: $00
    jr nz, @-$6b                                  ; $509a: $20 $93

    ld e, [hl]                                    ; $509c: $5e
    db $dd                                        ; $509d: $dd
    ld a, e                                       ; $509e: $7b
    jr jr_0b0_510c                                ; $509f: $18 $6b

    nop                                           ; $50a1: $00
    nop                                           ; $50a2: $00
    adc e                                         ; $50a3: $8b
    ld c, c                                       ; $50a4: $49
    nop                                           ; $50a5: $00
    jr nz, jr_0b0_5054                            ; $50a6: $20 $ac

    dec c                                         ; $50a8: $0d
    nop                                           ; $50a9: $00
    nop                                           ; $50aa: $00
    db $dd                                        ; $50ab: $dd
    inc bc                                        ; $50ac: $03
    rst $38                                       ; $50ad: $ff
    ld a, a                                       ; $50ae: $7f
    xor h                                         ; $50af: $ac
    dec c                                         ; $50b0: $0d
    xor h                                         ; $50b1: $ac
    dec c                                         ; $50b2: $0d
    rst $38                                       ; $50b3: $ff
    ld a, a                                       ; $50b4: $7f
    db $dd                                        ; $50b5: $dd
    inc bc                                        ; $50b6: $03
    xor h                                         ; $50b7: $ac
    dec c                                         ; $50b8: $0d
    adc e                                         ; $50b9: $8b
    add hl, bc                                    ; $50ba: $09
    db $dd                                        ; $50bb: $dd
    inc bc                                        ; $50bc: $03
    ld a, a                                       ; $50bd: $7f
    ld [hl], e                                    ; $50be: $73
    ld a, d                                       ; $50bf: $7a
    inc [hl]                                      ; $50c0: $34
    jr z, jr_0b0_50d8                             ; $50c1: $28 $15

    rst $38                                       ; $50c3: $ff
    ld a, a                                       ; $50c4: $7f
    adc h                                         ; $50c5: $8c
    ld sp, $4a52                                  ; $50c6: $31 $52 $4a
    nop                                           ; $50c9: $00
    nop                                           ; $50ca: $00
    rst $28                                       ; $50cb: $ef
    dec a                                         ; $50cc: $3d
    sbc $7f                                       ; $50cd: $de $7f
    rst $20                                       ; $50cf: $e7
    inc e                                         ; $50d0: $1c
    nop                                           ; $50d1: $00
    jr nz, jr_0b0_5125                            ; $50d2: $20 $51

    ld e, d                                       ; $50d4: $5a
    rst $30                                       ; $50d5: $f7
    ld l, d                                       ; $50d6: $6a
    sbc h                                         ; $50d7: $9c

jr_0b0_50d8:
    ld [hl], a                                    ; $50d8: $77
    nop                                           ; $50d9: $00
    nop                                           ; $50da: $00
    ld c, b                                       ; $50db: $48
    ld b, c                                       ; $50dc: $41
    nop                                           ; $50dd: $00
    jr nz, jr_0b0_506b                            ; $50de: $20 $8b

    ld c, c                                       ; $50e0: $49
    ld hl, $8b00                                  ; $50e1: $21 $00 $8b
    dec d                                         ; $50e4: $15
    db $dd                                        ; $50e5: $dd
    inc bc                                        ; $50e6: $03
    ld [hl], d                                    ; $50e7: $72
    ld e, [hl]                                    ; $50e8: $5e
    rst $20                                       ; $50e9: $e7
    nop                                           ; $50ea: $00
    db $dd                                        ; $50eb: $dd
    inc bc                                        ; $50ec: $03
    xor h                                         ; $50ed: $ac
    dec c                                         ; $50ee: $0d
    ld [hl], d                                    ; $50ef: $72
    ld e, [hl]                                    ; $50f0: $5e
    xor h                                         ; $50f1: $ac
    dec c                                         ; $50f2: $0d
    db $dd                                        ; $50f3: $dd
    inc bc                                        ; $50f4: $03
    ld a, d                                       ; $50f5: $7a
    inc [hl]                                      ; $50f6: $34
    dec c                                         ; $50f7: $0d
    inc d                                         ; $50f8: $14

jr_0b0_50f9:
    rst $20                                       ; $50f9: $e7
    db $10                                        ; $50fa: $10
    db $dd                                        ; $50fb: $dd
    inc bc                                        ; $50fc: $03
    xor l                                         ; $50fd: $ad
    dec [hl]                                      ; $50fe: $35
    ld a, d                                       ; $50ff: $7a
    inc [hl]                                      ; $5100: $34
    nop                                           ; $5101: $00
    nop                                           ; $5102: $00
    adc h                                         ; $5103: $8c
    ld sp, $6af7                                  ; $5104: $31 $f7 $6a
    rst $20                                       ; $5107: $e7
    inc e                                         ; $5108: $1c
    nop                                           ; $5109: $00
    jr nz, jr_0b0_50f9                            ; $510a: $20 $ed

jr_0b0_510c:
    ld d, c                                       ; $510c: $51
    ld [hl], d                                    ; $510d: $72
    ld e, [hl]                                    ; $510e: $5e
    cpl                                           ; $510f: $2f
    ld d, [hl]                                    ; $5110: $56
    nop                                           ; $5111: $00
    jr nz, jr_0b0_511a                            ; $5112: $20 $06

    ld b, c                                       ; $5114: $41
    ld h, $41                                     ; $5115: $26 $41
    ld [hl], d                                    ; $5117: $72
    ld e, [hl]                                    ; $5118: $5e
    nop                                           ; $5119: $00

jr_0b0_511a:
    nop                                           ; $511a: $00
    adc e                                         ; $511b: $8b
    dec a                                         ; $511c: $3d
    sub h                                         ; $511d: $94
    ld d, d                                       ; $511e: $52
    rst $20                                       ; $511f: $e7
    ld [$00e7], sp                                ; $5120: $08 $e7 $00
    db $dd                                        ; $5123: $dd
    inc bc                                        ; $5124: $03

jr_0b0_5125:
    ld a, d                                       ; $5125: $7a
    inc [hl]                                      ; $5126: $34
    dec c                                         ; $5127: $0d
    inc d                                         ; $5128: $14

jr_0b0_5129:
    and [hl]                                      ; $5129: $a6
    nop                                           ; $512a: $00
    db $dd                                        ; $512b: $dd
    inc bc                                        ; $512c: $03
    ld a, d                                       ; $512d: $7a
    inc [hl]                                      ; $512e: $34
    xor h                                         ; $512f: $ac
    dec c                                         ; $5130: $0d
    nop                                           ; $5131: $00
    nop                                           ; $5132: $00
    adc h                                         ; $5133: $8c
    ld sp, $18e7                                  ; $5134: $31 $e7 $18
    ld d, d                                       ; $5137: $52
    ld c, d                                       ; $5138: $4a
    nop                                           ; $5139: $00

jr_0b0_513a:
    nop                                           ; $513a: $00
    ld l, d                                       ; $513b: $6a
    add hl, sp                                    ; $513c: $39
    rst $20                                       ; $513d: $e7
    inc e                                         ; $513e: $1c
    jr nc, jr_0b0_518f                            ; $513f: $30 $4e

    nop                                           ; $5141: $00
    jr nz, jr_0b0_5129                            ; $5142: $20 $e5

    inc a                                         ; $5144: $3c
    ld c, b                                       ; $5145: $48
    ld b, l                                       ; $5146: $45
    jr nc, jr_0b0_5197                            ; $5147: $30 $4e

    nop                                           ; $5149: $00
    jr nz, jr_0b0_513a                            ; $514a: $20 $ee

    ld e, l                                       ; $514c: $5d
    ld a, d                                       ; $514d: $7a
    inc [hl]                                      ; $514e: $34
    dec c                                         ; $514f: $0d
    inc d                                         ; $5150: $14
    nop                                           ; $5151: $00
    nop                                           ; $5152: $00
    ld l, e                                       ; $5153: $6b
    dec l                                         ; $5154: $2d
    sub h                                         ; $5155: $94
    ld d, d                                       ; $5156: $52
    daa                                           ; $5157: $27
    ld b, l                                       ; $5158: $45
    rst $20                                       ; $5159: $e7
    nop                                           ; $515a: $00
    db $dd                                        ; $515b: $dd
    inc bc                                        ; $515c: $03
    dec c                                         ; $515d: $0d
    inc d                                         ; $515e: $14
    daa                                           ; $515f: $27

jr_0b0_5160:
    ld b, l                                       ; $5160: $45

jr_0b0_5161:
    ld b, b                                       ; $5161: $40
    nop                                           ; $5162: $00
    jr c, @+$2b                                   ; $5163: $38 $29

    db $dd                                        ; $5165: $dd
    inc bc                                        ; $5166: $03
    rst $20                                       ; $5167: $e7
    inc b                                         ; $5168: $04
    nop                                           ; $5169: $00
    nop                                           ; $516a: $00
    adc h                                         ; $516b: $8c
    ld sp, $1ce7                                  ; $516c: $31 $e7 $1c
    ld d, d                                       ; $516f: $52
    ld c, d                                       ; $5170: $4a
    nop                                           ; $5171: $00
    nop                                           ; $5172: $00
    adc e                                         ; $5173: $8b
    dec a                                         ; $5174: $3d
    and $24                                       ; $5175: $e6 $24
    ld d, d                                       ; $5177: $52
    ld c, d                                       ; $5178: $4a
    nop                                           ; $5179: $00
    jr nz, jr_0b0_5161                            ; $517a: $20 $e5

    inc a                                         ; $517c: $3c
    and $24                                       ; $517d: $e6 $24
    ld d, d                                       ; $517f: $52

jr_0b0_5180:
    ld c, d                                       ; $5180: $4a
    nop                                           ; $5181: $00
    jr nz, jr_0b0_5161                            ; $5182: $20 $dd

    inc bc                                        ; $5184: $03
    dec c                                         ; $5185: $0d
    inc d                                         ; $5186: $14
    daa                                           ; $5187: $27
    ld b, l                                       ; $5188: $45
    nop                                           ; $5189: $00
    nop                                           ; $518a: $00
    adc h                                         ; $518b: $8c
    ld sp, $6e94                                  ; $518c: $31 $94 $6e

jr_0b0_518f:
    adc $51                                       ; $518f: $ce $51
    add $04                                       ; $5191: $c6 $04
    db $dd                                        ; $5193: $dd
    inc bc                                        ; $5194: $03
    dec c                                         ; $5195: $0d
    inc d                                         ; $5196: $14

jr_0b0_5197:
    ld a, d                                       ; $5197: $7a
    inc [hl]                                      ; $5198: $34

jr_0b0_5199:
    nop                                           ; $5199: $00
    nop                                           ; $519a: $00
    adc l                                         ; $519b: $8d
    ld sp, $00e7                                  ; $519c: $31 $e7 $00
    rst $10                                       ; $519f: $d7
    ld hl, $0000                                  ; $51a0: $21 $00 $00
    rst $20                                       ; $51a3: $e7
    inc e                                         ; $51a4: $1c
    adc h                                         ; $51a5: $8c
    ld sp, $318d                                  ; $51a6: $31 $8d $31
    nop                                           ; $51a9: $00
    nop                                           ; $51aa: $00
    xor h                                         ; $51ab: $ac
    ld d, l                                       ; $51ac: $55
    rst $20                                       ; $51ad: $e7
    jr nz, @+$75                                  ; $51ae: $20 $73

    ld l, [hl]                                    ; $51b0: $6e
    nop                                           ; $51b1: $00
    jr nz, jr_0b0_5160                            ; $51b2: $20 $ac

    ld d, l                                       ; $51b4: $55
    rst $20                                       ; $51b5: $e7
    jr nz, @+$75                                  ; $51b6: $20 $73

    ld l, [hl]                                    ; $51b8: $6e
    nop                                           ; $51b9: $00
    jr nz, jr_0b0_5199                            ; $51ba: $20 $dd

    inc bc                                        ; $51bc: $03
    dec c                                         ; $51bd: $0d
    inc d                                         ; $51be: $14
    ld a, d                                       ; $51bf: $7a
    inc [hl]                                      ; $51c0: $34
    nop                                           ; $51c1: $00
    inc b                                         ; $51c2: $04
    rst $30                                       ; $51c3: $f7
    ld l, [hl]                                    ; $51c4: $6e
    ld l, e                                       ; $51c5: $6b
    dec l                                         ; $51c6: $2d

jr_0b0_51c7:
    rst $38                                       ; $51c7: $ff
    ld a, a                                       ; $51c8: $7f
    and [hl]                                      ; $51c9: $a6
    nop                                           ; $51ca: $00
    db $dd                                        ; $51cb: $dd
    inc bc                                        ; $51cc: $03
    adc h                                         ; $51cd: $8c
    ld sp, $1174                                  ; $51ce: $31 $74 $11

jr_0b0_51d1:
    nop                                           ; $51d1: $00
    nop                                           ; $51d2: $00
    ld c, e                                       ; $51d3: $4b
    add hl, hl                                    ; $51d4: $29
    sub l                                         ; $51d5: $95
    dec d                                         ; $51d6: $15
    ld l, c                                       ; $51d7: $69
    nop                                           ; $51d8: $00
    nop                                           ; $51d9: $00
    nop                                           ; $51da: $00
    rst $20                                       ; $51db: $e7
    inc e                                         ; $51dc: $1c
    sub l                                         ; $51dd: $95
    dec d                                         ; $51de: $15
    ld l, c                                       ; $51df: $69
    nop                                           ; $51e0: $00
    nop                                           ; $51e1: $00
    nop                                           ; $51e2: $00
    sub h                                         ; $51e3: $94
    ld [hl], d                                    ; $51e4: $72
    ld h, e                                       ; $51e5: $63
    inc e                                         ; $51e6: $1c
    ld a, e                                       ; $51e7: $7b
    ld [hl], a                                    ; $51e8: $77
    nop                                           ; $51e9: $00
    jr nz, jr_0b0_5180                            ; $51ea: $20 $94

    ld [hl], d                                    ; $51ec: $72
    ld h, e                                       ; $51ed: $63
    inc e                                         ; $51ee: $1c
    ld a, e                                       ; $51ef: $7b
    ld [hl], a                                    ; $51f0: $77
    nop                                           ; $51f1: $00
    jr nz, jr_0b0_51d1                            ; $51f2: $20 $dd

    inc bc                                        ; $51f4: $03
    adc h                                         ; $51f5: $8c
    ld sp, $1174                                  ; $51f6: $31 $74 $11
    nop                                           ; $51f9: $00
    nop                                           ; $51fa: $00
    sbc h                                         ; $51fb: $9c
    ld [hl], a                                    ; $51fc: $77
    ld l, e                                       ; $51fd: $6b
    dec l                                         ; $51fe: $2d
    nop                                           ; $51ff: $00
    jr nz, jr_0b0_5202                            ; $5200: $20 $00

jr_0b0_5202:
    nop                                           ; $5202: $00
    ld l, c                                       ; $5203: $69

jr_0b0_5204:
    nop                                           ; $5204: $00
    ld l, e                                       ; $5205: $6b
    dec l                                         ; $5206: $2d
    nop                                           ; $5207: $00
    jr nz, jr_0b0_520a                            ; $5208: $20 $00

jr_0b0_520a:
    nop                                           ; $520a: $00
    rrca                                          ; $520b: $0f

jr_0b0_520c:
    ld h, d                                       ; $520c: $62
    sbc h                                         ; $520d: $9c
    ld a, e                                       ; $520e: $7b
    or l                                          ; $520f: $b5
    ld l, [hl]                                    ; $5210: $6e
    nop                                           ; $5211: $00
    nop                                           ; $5212: $00
    push hl                                       ; $5213: $e5

jr_0b0_5214:
    inc a                                         ; $5214: $3c
    rrca                                          ; $5215: $0f
    ld e, d                                       ; $5216: $5a
    ld c, c                                       ; $5217: $49
    ld c, c                                       ; $5218: $49
    nop                                           ; $5219: $00
    nop                                           ; $521a: $00

jr_0b0_521b:
    rst $30                                       ; $521b: $f7

jr_0b0_521c:
    ld [hl], d                                    ; $521c: $72
    sbc $7b                                       ; $521d: $de $7b
    nop                                           ; $521f: $00
    jr nz, jr_0b0_5222                            ; $5220: $20 $00

jr_0b0_5222:
    jr nz, jr_0b0_521b                            ; $5222: $20 $f7

    ld [hl], d                                    ; $5224: $72
    sbc $7b                                       ; $5225: $de $7b
    nop                                           ; $5227: $00
    jr nz, jr_0b0_522a                            ; $5228: $20 $00

jr_0b0_522a:
    jr nz, jr_0b0_5295                            ; $522a: $20 $69

    nop                                           ; $522c: $00
    ld l, e                                       ; $522d: $6b
    dec l                                         ; $522e: $2d
    nop                                           ; $522f: $00
    jr nz, jr_0b0_5232                            ; $5230: $20 $00

jr_0b0_5232:
    jr nz, jr_0b0_51c7                            ; $5232: $20 $93

    ld h, d                                       ; $5234: $62
    sbc h                                         ; $5235: $9c
    ld [hl], a                                    ; $5236: $77
    ld l, c                                       ; $5237: $69
    ld b, l                                       ; $5238: $45
    push hl                                       ; $5239: $e5
    inc a                                         ; $523a: $3c
    ld sp, $f766                                  ; $523b: $31 $66 $f7
    ld [hl], d                                    ; $523e: $72
    ld c, c                                       ; $523f: $49
    ld c, l                                       ; $5240: $4d
    daa                                           ; $5241: $27

jr_0b0_5242:
    ld b, l                                       ; $5242: $45
    sub l                                         ; $5243: $95
    ld [hl], d                                    ; $5244: $72
    sbc h                                         ; $5245: $9c
    ld a, e                                       ; $5246: $7b
    adc $5d                                       ; $5247: $ce $5d
    ld l, d                                       ; $5249: $6a
    ld c, l                                       ; $524a: $4d
    sub h                                         ; $524b: $94
    ld l, [hl]                                    ; $524c: $6e
    jr nc, @+$60                                  ; $524d: $30 $5e

    ld e, d                                       ; $524f: $5a
    ld [hl], e                                    ; $5250: $73
    nop                                           ; $5251: $00
    jr nz, jr_0b0_52c7                            ; $5252: $20 $73

    ld e, [hl]                                    ; $5254: $5e
    cp h                                          ; $5255: $bc
    ld a, e                                       ; $5256: $7b
    push hl                                       ; $5257: $e5
    inc a                                         ; $5258: $3c
    nop                                           ; $5259: $00
    jr nz, jr_0b0_52cf                            ; $525a: $20 $73

    ld e, [hl]                                    ; $525c: $5e
    cp h                                          ; $525d: $bc

jr_0b0_525e:
    ld a, e                                       ; $525e: $7b
    push hl                                       ; $525f: $e5
    inc a                                         ; $5260: $3c
    nop                                           ; $5261: $00
    jr nz, jr_0b0_5264                            ; $5262: $20 $00

jr_0b0_5264:
    jr nz, jr_0b0_5266                            ; $5264: $20 $00

jr_0b0_5266:
    jr nz, @+$01                                  ; $5266: $20 $ff

    ld a, a                                       ; $5268: $7f
    nop                                           ; $5269: $00
    jr nz, jr_0b0_526c                            ; $526a: $20 $00

jr_0b0_526c:
    jr nz, jr_0b0_526e                            ; $526c: $20 $00

jr_0b0_526e:
    jr nz, @+$01                                  ; $526e: $20 $ff

    ld a, a                                       ; $5270: $7f
    nop                                           ; $5271: $00
    jr nz, jr_0b0_5274                            ; $5272: $20 $00

jr_0b0_5274:
    jr nz, jr_0b0_5276                            ; $5274: $20 $00

jr_0b0_5276:
    jr nz, @+$01                                  ; $5276: $20 $ff

    ld a, a                                       ; $5278: $7f
    nop                                           ; $5279: $00
    nop                                           ; $527a: $00
    rst $38                                       ; $527b: $ff
    ld a, a                                       ; $527c: $7f
    nop                                           ; $527d: $00
    jr nz, jr_0b0_5204                            ; $527e: $20 $84

    stop                                          ; $5280: $10 $00
    jr nz, @+$01                                  ; $5282: $20 $ff

    ld a, a                                       ; $5284: $7f
    nop                                           ; $5285: $00
    jr nz, jr_0b0_520c                            ; $5286: $20 $84

    stop                                          ; $5288: $10 $00
    jr nz, @+$01                                  ; $528a: $20 $ff

    ld a, a                                       ; $528c: $7f
    nop                                           ; $528d: $00
    jr nz, jr_0b0_5214                            ; $528e: $20 $84

    stop                                          ; $5290: $10 $00
    jr nz, @+$01                                  ; $5292: $20 $ff

    ld a, a                                       ; $5294: $7f

jr_0b0_5295:
    nop                                           ; $5295: $00
    jr nz, jr_0b0_521c                            ; $5296: $20 $84

    stop                                          ; $5298: $10 $00
    jr nz, jr_0b0_529c                            ; $529a: $20 $00

jr_0b0_529c:
    jr nz, jr_0b0_529e                            ; $529c: $20 $00

jr_0b0_529e:
    jr nz, @+$01                                  ; $529e: $20 $ff

    ld a, a                                       ; $52a0: $7f
    nop                                           ; $52a1: $00
    jr nz, jr_0b0_52a4                            ; $52a2: $20 $00

jr_0b0_52a4:
    jr nz, jr_0b0_52a6                            ; $52a4: $20 $00

jr_0b0_52a6:
    jr nz, @+$01                                  ; $52a6: $20 $ff

    ld a, a                                       ; $52a8: $7f
    nop                                           ; $52a9: $00
    jr nz, jr_0b0_52ac                            ; $52aa: $20 $00

jr_0b0_52ac:
    jr nz, jr_0b0_52ae                            ; $52ac: $20 $00

jr_0b0_52ae:
    jr nz, @+$01                                  ; $52ae: $20 $ff

    ld a, a                                       ; $52b0: $7f
    nop                                           ; $52b1: $00
    nop                                           ; $52b2: $00
    rst $38                                       ; $52b3: $ff
    ld a, a                                       ; $52b4: $7f
    nop                                           ; $52b5: $00
    jr nz, jr_0b0_525e                            ; $52b6: $20 $a6

    ld [$0000], sp                                ; $52b8: $08 $00 $00
    nop                                           ; $52bb: $00
    jr nz, jr_0b0_5242                            ; $52bc: $20 $84

    db $10                                        ; $52be: $10
    and [hl]                                      ; $52bf: $a6
    ld [$2000], sp                                ; $52c0: $08 $00 $20
    add h                                         ; $52c3: $84
    db $10                                        ; $52c4: $10
    add h                                         ; $52c5: $84
    db $10                                        ; $52c6: $10

jr_0b0_52c7:
    and [hl]                                      ; $52c7: $a6
    ld [$2000], sp                                ; $52c8: $08 $00 $20
    add h                                         ; $52cb: $84
    db $10                                        ; $52cc: $10
    add h                                         ; $52cd: $84
    db $10                                        ; $52ce: $10

jr_0b0_52cf:
    and [hl]                                      ; $52cf: $a6
    ld [$2000], sp                                ; $52d0: $08 $00 $20
    nop                                           ; $52d3: $00
    jr nz, jr_0b0_52d6                            ; $52d4: $20 $00

jr_0b0_52d6:
    jr nz, @+$01                                  ; $52d6: $20 $ff

    ld a, a                                       ; $52d8: $7f
    nop                                           ; $52d9: $00
    jr nz, jr_0b0_52dc                            ; $52da: $20 $00

jr_0b0_52dc:
    jr nz, jr_0b0_52de                            ; $52dc: $20 $00

jr_0b0_52de:
    jr nz, @+$01                                  ; $52de: $20 $ff

    ld a, a                                       ; $52e0: $7f
    nop                                           ; $52e1: $00
    jr nz, jr_0b0_5320                            ; $52e2: $20 $3c

    ld b, a                                       ; $52e4: $47
    and [hl]                                      ; $52e5: $a6
    ld [$6bdf], sp                                ; $52e6: $08 $df $6b
    nop                                           ; $52e9: $00
    nop                                           ; $52ea: $00
    add h                                         ; $52eb: $84
    ld a, [hl]                                    ; $52ec: $7e
    rst $18                                       ; $52ed: $df
    ld [hl], e                                    ; $52ee: $73
    add l                                         ; $52ef: $85
    ld [$1ce8], sp                                ; $52f0: $08 $e8 $1c
    ld d, c                                       ; $52f3: $51
    ld c, [hl]                                    ; $52f4: $4e
    rst $18                                       ; $52f5: $df
    ld l, e                                       ; $52f6: $6b
    rst $30                                       ; $52f7: $f7
    ld e, [hl]                                    ; $52f8: $5e
    ld hl, $0f18                                  ; $52f9: $21 $18 $0f
    ld c, d                                       ; $52fc: $4a
    jr @+$65                                      ; $52fd: $18 $63

    rst $18                                       ; $52ff: $df

jr_0b0_5300:
    ld l, e                                       ; $5300: $6b
    nop                                           ; $5301: $00
    jr nz, @+$11                                  ; $5302: $20 $0f

    ld c, d                                       ; $5304: $4a
    jr jr_0b0_536a                                ; $5305: $18 $63

    rst $18                                       ; $5307: $df
    ld l, e                                       ; $5308: $6b
    nop                                           ; $5309: $00
    jr nz, jr_0b0_5348                            ; $530a: $20 $3c

    ld b, a                                       ; $530c: $47
    and [hl]                                      ; $530d: $a6
    ld [$6bdf], sp                                ; $530e: $08 $df $6b
    nop                                           ; $5311: $00
    jr nz, jr_0b0_5350                            ; $5312: $20 $3c

    ld b, a                                       ; $5314: $47
    and [hl]                                      ; $5315: $a6
    ld [$6bdf], sp                                ; $5316: $08 $df $6b
    ld b, d                                       ; $5319: $42
    nop                                           ; $531a: $00
    inc a                                         ; $531b: $3c
    ld b, a                                       ; $531c: $47
    nop                                           ; $531d: $00
    jr nz, @+$01                                  ; $531e: $20 $ff

jr_0b0_5320:
    ld a, a                                       ; $5320: $7f
    rst $00                                       ; $5321: $c7
    db $10                                        ; $5322: $10
    add h                                         ; $5323: $84
    ld a, [hl]                                    ; $5324: $7e
    jr nc, jr_0b0_536d                            ; $5325: $30 $46

    dec sp                                        ; $5327: $3b
    ld d, a                                       ; $5328: $57
    ld h, l                                       ; $5329: $65
    inc b                                         ; $532a: $04
    ld c, l                                       ; $532b: $4d
    dec e                                         ; $532c: $1d
    jr nc, jr_0b0_5375                            ; $532d: $30 $46

    ret z                                         ; $532f: $c8

    stop                                          ; $5330: $10 $00
    jr nz, @+$11                                  ; $5332: $20 $0f

    ld c, d                                       ; $5334: $4a
    jr jr_0b0_539a                                ; $5335: $18 $63

    add h                                         ; $5337: $84

jr_0b0_5338:
    stop                                          ; $5338: $10 $00
    jr nz, @+$11                                  ; $533a: $20 $0f

    ld c, d                                       ; $533c: $4a
    jr jr_0b0_53a2                                ; $533d: $18 $63

    add h                                         ; $533f: $84
    stop                                          ; $5340: $10 $00
    jr nz, jr_0b0_5380                            ; $5342: $20 $3c

    ld b, a                                       ; $5344: $47
    nop                                           ; $5345: $00
    jr nz, @+$01                                  ; $5346: $20 $ff

jr_0b0_5348:
    ld a, a                                       ; $5348: $7f
    nop                                           ; $5349: $00
    jr nz, jr_0b0_5388                            ; $534a: $20 $3c

    ld b, a                                       ; $534c: $47
    nop                                           ; $534d: $00
    jr nz, @+$01                                  ; $534e: $20 $ff

jr_0b0_5350:
    ld a, a                                       ; $5350: $7f
    nop                                           ; $5351: $00
    ld [$7e84], sp                                ; $5352: $08 $84 $7e
    inc e                                         ; $5355: $1c
    ld b, a                                       ; $5356: $47
    rst $38                                       ; $5357: $ff
    ld a, a                                       ; $5358: $7f
    add l                                         ; $5359: $85
    inc c                                         ; $535a: $0c
    add h                                         ; $535b: $84
    ld a, [hl]                                    ; $535c: $7e
    ld [hl], h                                    ; $535d: $74
    ld b, [hl]                                    ; $535e: $46
    di                                            ; $535f: $f3
    ld hl, $0465                                  ; $5360: $21 $65 $04
    inc [hl]                                      ; $5363: $34
    ld [hl], $4d                                  ; $5364: $36 $4d

jr_0b0_5366:
    dec e                                         ; $5366: $1d
    sbc l                                         ; $5367: $9d
    ld d, a                                       ; $5368: $57
    add l                                         ; $5369: $85

jr_0b0_536a:
    inc c                                         ; $536a: $0c
    jr nc, jr_0b0_53b7                            ; $536b: $30 $4a

jr_0b0_536d:
    ld e, d                                       ; $536d: $5a
    ld h, e                                       ; $536e: $63
    ld c, l                                       ; $536f: $4d

jr_0b0_5370:
    add hl, de                                    ; $5370: $19
    nop                                           ; $5371: $00
    jr nz, @+$32                                  ; $5372: $20 $30

    ld c, d                                       ; $5374: $4a

jr_0b0_5375:
    add h                                         ; $5375: $84
    db $10                                        ; $5376: $10
    ld c, l                                       ; $5377: $4d
    add hl, de                                    ; $5378: $19
    nop                                           ; $5379: $00
    jr nz, jr_0b0_5300                            ; $537a: $20 $84

    ld a, [hl]                                    ; $537c: $7e
    inc e                                         ; $537d: $1c

jr_0b0_537e:
    ld b, a                                       ; $537e: $47
    rst $38                                       ; $537f: $ff

jr_0b0_5380:
    ld a, a                                       ; $5380: $7f
    nop                                           ; $5381: $00
    nop                                           ; $5382: $00
    rst $38                                       ; $5383: $ff
    ld a, a                                       ; $5384: $7f
    nop                                           ; $5385: $00

jr_0b0_5386:
    jr nz, @+$01                                  ; $5386: $20 $ff

jr_0b0_5388:
    ld a, a                                       ; $5388: $7f
    nop                                           ; $5389: $00
    nop                                           ; $538a: $00
    add h                                         ; $538b: $84
    ld a, [hl]                                    ; $538c: $7e
    rst $38                                       ; $538d: $ff
    ld a, a                                       ; $538e: $7f
    and [hl]                                      ; $538f: $a6
    ld [$7e84], sp                                ; $5390: $08 $84 $7e
    add a                                         ; $5393: $87
    inc b                                         ; $5394: $04
    ret nc                                        ; $5395: $d0

    dec l                                         ; $5396: $2d
    db $db                                        ; $5397: $db
    ld a, $6c                                     ; $5398: $3e $6c

jr_0b0_539a:
    nop                                           ; $539a: $00
    db $fd                                        ; $539b: $fd
    ld [bc], a                                    ; $539c: $02
    ld [hl], a                                    ; $539d: $77
    ld a, [hl-]                                   ; $539e: $3a
    xor a                                         ; $539f: $af
    dec h                                         ; $53a0: $25
    ld h, l                                       ; $53a1: $65

jr_0b0_53a2:
    ld [$4a0f], sp                                ; $53a2: $08 $0f $4a
    add hl, sp                                    ; $53a5: $39
    ld h, e                                       ; $53a6: $63
    inc l                                         ; $53a7: $2c
    add hl, de                                    ; $53a8: $19
    nop                                           ; $53a9: $00
    jr nz, @+$32                                  ; $53aa: $20 $30

    ld c, d                                       ; $53ac: $4a
    jr jr_0b0_5412                                ; $53ad: $18 $63

    add h                                         ; $53af: $84
    stop                                          ; $53b0: $10 $00
    jr nz, jr_0b0_5338                            ; $53b2: $20 $84

    ld a, [hl]                                    ; $53b4: $7e
    rst $38                                       ; $53b5: $ff

jr_0b0_53b6:
    ld a, a                                       ; $53b6: $7f

jr_0b0_53b7:
    and [hl]                                      ; $53b7: $a6
    ld [$0000], sp                                ; $53b8: $08 $00 $00
    rst $38                                       ; $53bb: $ff
    ld a, a                                       ; $53bc: $7f
    nop                                           ; $53bd: $00

jr_0b0_53be:
    jr nz, jr_0b0_5366                            ; $53be: $20 $a6

    ld [$0000], sp                                ; $53c0: $08 $00 $00
    add h                                         ; $53c3: $84
    ld a, [hl]                                    ; $53c4: $7e
    and [hl]                                      ; $53c5: $a6
    ld [$08a6], sp                                ; $53c6: $08 $a6 $08
    adc b                                         ; $53c9: $88
    nop                                           ; $53ca: $00
    ld h, h                                       ; $53cb: $64
    ld a, d                                       ; $53cc: $7a
    scf                                           ; $53cd: $37
    ld a, [hl+]                                   ; $53ce: $2a
    sbc a                                         ; $53cf: $9f
    ld d, a                                       ; $53d0: $57
    adc e                                         ; $53d1: $8b
    inc b                                         ; $53d2: $04
    reti                                          ; $53d3: $d9


    ld a, $5f                                     ; $53d4: $3e $5f
    ld bc, $039e                                  ; $53d6: $01 $9e $03
    ld l, c                                       ; $53d9: $69
    inc b                                         ; $53da: $04
    jr jr_0b0_5440                                ; $53db: $18 $63

    ld c, h                                       ; $53dd: $4c
    ld hl, $039e                                  ; $53de: $21 $9e $03
    nop                                           ; $53e1: $00
    jr nz, jr_0b0_53f3                            ; $53e2: $20 $0f

    ld c, d                                       ; $53e4: $4a
    jr jr_0b0_544a                                ; $53e5: $18 $63

    add h                                         ; $53e7: $84
    stop                                          ; $53e8: $10 $00
    jr nz, jr_0b0_5370                            ; $53ea: $20 $84

    ld a, [hl]                                    ; $53ec: $7e
    and [hl]                                      ; $53ed: $a6

jr_0b0_53ee:
    ld [$08a6], sp                                ; $53ee: $08 $a6 $08
    nop                                           ; $53f1: $00
    nop                                           ; $53f2: $00

jr_0b0_53f3:
    add h                                         ; $53f3: $84
    ld a, [hl]                                    ; $53f4: $7e
    rst $38                                       ; $53f5: $ff
    ld a, a                                       ; $53f6: $7f
    nop                                           ; $53f7: $00
    jr nz, jr_0b0_537e                            ; $53f8: $20 $84

    ld a, [hl]                                    ; $53fa: $7e
    and [hl]                                      ; $53fb: $a6
    ld [$7fff], sp                                ; $53fc: $08 $ff $7f
    nop                                           ; $53ff: $00
    jr nz, jr_0b0_5386                            ; $5400: $20 $84

    ld a, [hl]                                    ; $5402: $7e
    rlc b                                         ; $5403: $cb $00
    ld e, a                                       ; $5405: $5f
    ld bc, $2f1c                                  ; $5406: $01 $1c $2f
    call $1508                                    ; $5409: $cd $08 $15
    ld b, e                                       ; $540c: $43
    rst $38                                       ; $540d: $ff
    ld a, a                                       ; $540e: $7f
    rst $38                                       ; $540f: $ff
    inc bc                                        ; $5410: $03
    ld l, b                                       ; $5411: $68

jr_0b0_5412:
    inc b                                         ; $5412: $04
    sbc b                                         ; $5413: $98
    ld a, [hl-]                                   ; $5414: $3a
    ld l, h                                       ; $5415: $6c
    add hl, hl                                    ; $5416: $29
    ld e, a                                       ; $5417: $5f
    ld bc, $2000                                  ; $5418: $01 $00 $20
    jr jr_0b0_5480                                ; $541b: $18 $63

    add h                                         ; $541d: $84
    db $10                                        ; $541e: $10
    rst $18                                       ; $541f: $df
    ld l, e                                       ; $5420: $6b
    nop                                           ; $5421: $00
    nop                                           ; $5422: $00
    rst $38                                       ; $5423: $ff
    ld a, a                                       ; $5424: $7f
    nop                                           ; $5425: $00
    jr nz, jr_0b0_5428                            ; $5426: $20 $00

jr_0b0_5428:
    jr nz, jr_0b0_542a                            ; $5428: $20 $00

jr_0b0_542a:
    nop                                           ; $542a: $00
    add h                                         ; $542b: $84
    ld a, [hl]                                    ; $542c: $7e
    rst $38                                       ; $542d: $ff
    ld a, a                                       ; $542e: $7f
    nop                                           ; $542f: $00
    jr nz, jr_0b0_53b6                            ; $5430: $20 $84

    ld a, [hl]                                    ; $5432: $7e
    and [hl]                                      ; $5433: $a6
    ld [$471c], sp                                ; $5434: $08 $1c $47

jr_0b0_5437:
    nop                                           ; $5437: $00
    jr nz, jr_0b0_53be                            ; $5438: $20 $84

    ld a, [hl]                                    ; $543a: $7e
    db $fc                                        ; $543b: $fc
    dec e                                         ; $543c: $1d
    adc c                                         ; $543d: $89
    inc b                                         ; $543e: $04
    rst $38                                       ; $543f: $ff

jr_0b0_5440:
    inc bc                                        ; $5440: $03
    ld h, d                                       ; $5441: $62
    add hl, bc                                    ; $5442: $09
    xor l                                         ; $5443: $ad
    ld c, e                                       ; $5444: $4b
    or b                                          ; $5445: $b0
    add hl, de                                    ; $5446: $19
    jp c, Jump_0b0_653e                           ; $5447: $da $3e $65

jr_0b0_544a:
    inc b                                         ; $544a: $04
    db $db                                        ; $544b: $db
    ld a, $af                                     ; $544c: $3e $af
    nop                                           ; $544e: $00
    sbc [hl]                                      ; $544f: $9e
    inc bc                                        ; $5450: $03
    ld b, d                                       ; $5451: $42
    ld [$6318], sp                                ; $5452: $08 $18 $63
    nop                                           ; $5455: $00
    jr nz, jr_0b0_5437                            ; $5456: $20 $df

    ld l, e                                       ; $5458: $6b
    nop                                           ; $5459: $00
    nop                                           ; $545a: $00
    rst $38                                       ; $545b: $ff
    ld a, a                                       ; $545c: $7f
    nop                                           ; $545d: $00
    jr nz, jr_0b0_5460                            ; $545e: $20 $00

jr_0b0_5460:
    jr nz, jr_0b0_5462                            ; $5460: $20 $00

jr_0b0_5462:
    nop                                           ; $5462: $00
    add h                                         ; $5463: $84
    ld a, [hl]                                    ; $5464: $7e
    nop                                           ; $5465: $00
    jr nz, jr_0b0_5468                            ; $5466: $20 $00

jr_0b0_5468:
    jr nz, jr_0b0_53ee                            ; $5468: $20 $84

    ld a, [hl]                                    ; $546a: $7e
    and [hl]                                      ; $546b: $a6
    ld [$471c], sp                                ; $546c: $08 $1c $47
    rst $18                                       ; $546f: $df
    ld l, e                                       ; $5470: $6b
    add h                                         ; $5471: $84
    ld a, [hl]                                    ; $5472: $7e
    add [hl]                                      ; $5473: $86
    inc b                                         ; $5474: $04
    ld [hl], a                                    ; $5475: $77
    ld [hl], $91                                  ; $5476: $36 $91
    nop                                           ; $5478: $00
    inc bc                                        ; $5479: $03
    add hl, bc                                    ; $547a: $09
    inc a                                         ; $547b: $3c
    ld b, a                                       ; $547c: $47
    jp nc, $ff1d                                  ; $547d: $d2 $1d $ff

jr_0b0_5480:
    ld a, a                                       ; $5480: $7f
    adc c                                         ; $5481: $89
    inc b                                         ; $5482: $04
    ld e, l                                       ; $5483: $5d
    ld bc, $577d                                  ; $5484: $01 $7d $57
    sbc [hl]                                      ; $5487: $9e
    inc bc                                        ; $5488: $03
    ld b, d                                       ; $5489: $42
    ld [$5694], sp                                ; $548a: $08 $94 $56
    rst $38                                       ; $548d: $ff
    ld a, a                                       ; $548e: $7f
    nop                                           ; $548f: $00
    jr nz, jr_0b0_5492                            ; $5490: $20 $00

jr_0b0_5492:
    nop                                           ; $5492: $00
    add l                                         ; $5493: $85
    ld a, [hl]                                    ; $5494: $7e
    rst $38                                       ; $5495: $ff
    ld a, a                                       ; $5496: $7f
    nop                                           ; $5497: $00
    jr nz, jr_0b0_5440                            ; $5498: $20 $a6

    ld [$7e84], sp                                ; $549a: $08 $84 $7e
    rst $18                                       ; $549d: $df
    ld l, e                                       ; $549e: $6b
    nop                                           ; $549f: $00
    jr nz, @-$58                                  ; $54a0: $20 $a6

    ld [$7e84], sp                                ; $54a2: $08 $84 $7e
    sbc [hl]                                      ; $54a5: $9e
    ld e, a                                       ; $54a6: $5f
    di                                            ; $54a7: $f3
    ld hl, $7e84                                  ; $54a8: $21 $84 $7e
    add [hl]                                      ; $54ab: $86
    inc b                                         ; $54ac: $04
    or c                                          ; $54ad: $b1
    dec e                                         ; $54ae: $1d
    sub a                                         ; $54af: $97
    ld [hl], $2b                                  ; $54b0: $36 $2b
    ld hl, $473c                                  ; $54b2: $21 $3c $47
    rst $38                                       ; $54b5: $ff
    ld a, a                                       ; $54b6: $7f
    di                                            ; $54b7: $f3
    ld hl, $1a60                                  ; $54b8: $21 $60 $1a
    push de                                       ; $54bb: $d5
    ld de, $5f7d                                  ; $54bc: $11 $7d $5f
    ld l, b                                       ; $54bf: $68
    nop                                           ; $54c0: $00
    ld hl, $4c04                                  ; $54c1: $21 $04 $4c
    ld e, d                                       ; $54c4: $5a
    sbc h                                         ; $54c5: $9c
    ld [hl], e                                    ; $54c6: $73
    nop                                           ; $54c7: $00
    jr nz, jr_0b0_54ca                            ; $54c8: $20 $00

jr_0b0_54ca:
    nop                                           ; $54ca: $00
    add h                                         ; $54cb: $84
    ld a, [hl]                                    ; $54cc: $7e
    rst $38                                       ; $54cd: $ff
    ld a, a                                       ; $54ce: $7f
    and [hl]                                      ; $54cf: $a6
    ld a, [hl]                                    ; $54d0: $7e
    and [hl]                                      ; $54d1: $a6
    ld [$7e84], sp                                ; $54d2: $08 $84 $7e
    ld e, h                                       ; $54d5: $5c
    ld d, e                                       ; $54d6: $53
    di                                            ; $54d7: $f3
    ld hl, $08a6                                  ; $54d8: $21 $a6 $08
    add h                                         ; $54db: $84
    ld a, [hl]                                    ; $54dc: $7e
    sbc b                                         ; $54dd: $98
    ld a, [hl-]                                   ; $54de: $3a
    rst $18                                       ; $54df: $df
    ld l, e                                       ; $54e0: $6b
    add h                                         ; $54e1: $84
    db $10                                        ; $54e2: $10
    add h                                         ; $54e3: $84
    ld a, [hl]                                    ; $54e4: $7e
    sub b                                         ; $54e5: $90
    dec e                                         ; $54e6: $1d
    and [hl]                                      ; $54e7: $a6

jr_0b0_54e8:
    ld [$00cd], sp                                ; $54e8: $08 $cd $00
    inc e                                         ; $54eb: $1c
    ld b, a                                       ; $54ec: $47
    rst $38                                       ; $54ed: $ff
    ld a, a                                       ; $54ee: $7f
    db $f4                                        ; $54ef: $f4
    ld hl, $00cd                                  ; $54f0: $21 $cd $00
    ld a, h                                       ; $54f3: $7c
    ld bc, $2e57                                  ; $54f4: $01 $57 $2e
    sbc [hl]                                      ; $54f7: $9e
    inc bc                                        ; $54f8: $03
    ld hl, $4a04                                  ; $54f9: $21 $04 $4a
    ld h, d                                       ; $54fc: $62
    sbc h                                         ; $54fd: $9c
    ld [hl], e                                    ; $54fe: $73
    nop                                           ; $54ff: $00
    jr nz, jr_0b0_5502                            ; $5500: $20 $00

jr_0b0_5502:
    ld [$7ea6], sp                                ; $5502: $08 $a6 $7e
    rst $18                                       ; $5505: $df
    ld [hl], a                                    ; $5506: $77
    and [hl]                                      ; $5507: $a6
    ld [$08a6], sp                                ; $5508: $08 $a6 $08
    dec de                                        ; $550b: $1b
    ld b, e                                       ; $550c: $43
    jp nc, $df1d                                  ; $550d: $d2 $1d $df

    ld l, e                                       ; $5510: $6b
    and [hl]                                      ; $5511: $a6
    ld [$7e85], sp                                ; $5512: $08 $85 $7e
    ld [hl], $2e                                  ; $5515: $36 $2e
    db $db                                        ; $5517: $db
    ld a, $84                                     ; $5518: $3e $84
    ld [$7e86], sp                                ; $551a: $08 $86 $7e
    ld d, c                                       ; $551d: $51
    ld d, d                                       ; $551e: $52
    sub b                                         ; $551f: $90

jr_0b0_5520:
    dec e                                         ; $5520: $1d
    and [hl]                                      ; $5521: $a6
    ld [$1dd2], sp                                ; $5522: $08 $d2 $1d
    inc e                                         ; $5525: $1c
    ld b, a                                       ; $5526: $47
    call $ad00                                    ; $5527: $cd $00 $ad
    nop                                           ; $552a: $00
    ld a, e                                       ; $552b: $7b
    ld bc, $7ea7                                  ; $552c: $01 $a7 $7e
    sbc [hl]                                      ; $552f: $9e
    inc bc                                        ; $5530: $03
    ld b, d                                       ; $5531: $42
    ld [$7e85], sp                                ; $5532: $08 $85 $7e
    sbc h                                         ; $5535: $9c
    ld [hl], e                                    ; $5536: $73
    nop                                           ; $5537: $00
    jr nz, @+$24                                  ; $5538: $20 $22

    nop                                           ; $553a: $00
    and a                                         ; $553b: $a7
    ld a, d                                       ; $553c: $7a
    rst $38                                       ; $553d: $ff
    ld a, e                                       ; $553e: $7b
    nop                                           ; $553f: $00
    jr nz, jr_0b0_54e8                            ; $5540: $20 $a6

    ld [$21f3], sp                                ; $5542: $08 $f3 $21
    cp d                                          ; $5545: $ba
    ld a, $1c                                     ; $5546: $3e $1c
    ld b, a                                       ; $5548: $47
    and [hl]                                      ; $5549: $a6
    ld [$21d3], sp                                ; $554a: $08 $d3 $21
    ld a, c                                       ; $554d: $79
    ld [hl-], a                                   ; $554e: $32
    ei                                            ; $554f: $fb
    ld b, d                                       ; $5550: $42
    add l                                         ; $5551: $85
    ld [$2df1], sp                                ; $5552: $08 $f1 $2d
    rst $18                                       ; $5555: $df
    ld l, e                                       ; $5556: $6b
    reti                                          ; $5557: $d9


jr_0b0_5558:
    ld b, d                                       ; $5558: $42
    add a                                         ; $5559: $87
    ld [$0956], sp                                ; $555a: $08 $56 $09
    ld d, l                                       ; $555d: $55
    ld a, [hl-]                                   ; $555e: $3a
    jr @+$65                                      ; $555f: $18 $63

    ld l, b                                       ; $5561: $68
    nop                                           ; $5562: $00
    xor b                                         ; $5563: $a8
    halt                                          ; $5564: $76
    ld e, d                                       ; $5565: $5a
    ld [bc], a                                    ; $5566: $02
    ld de, $4201                                  ; $5567: $11 $01 $42
    ld [$6318], sp                                ; $556a: $08 $18 $63
    nop                                           ; $556d: $00
    jr nz, @+$01                                  ; $556e: $20 $ff

    ld a, a                                       ; $5570: $7f
    ld [hl+], a                                   ; $5571: $22
    nop                                           ; $5572: $00
    ret                                           ; $5573: $c9


    ld a, d                                       ; $5574: $7a
    rst $38                                       ; $5575: $ff
    ld a, a                                       ; $5576: $7f
    nop                                           ; $5577: $00
    jr nz, jr_0b0_5520                            ; $5578: $20 $a6

    ld [$21f3], sp                                ; $557a: $08 $f3 $21
    cp b                                          ; $557d: $b8
    ld a, [hl-]                                   ; $557e: $3a
    inc e                                         ; $557f: $1c
    ld b, e                                       ; $5580: $43
    and [hl]                                      ; $5581: $a6
    ld [$1dd2], sp                                ; $5582: $08 $d2 $1d
    ei                                            ; $5585: $fb
    ld b, d                                       ; $5586: $42
    scf                                           ; $5587: $37
    ld l, $a6                                     ; $5588: $2e $a6
    ld [$3aba], sp                                ; $558a: $08 $ba $3a
    sub b                                         ; $558d: $90
    dec e                                         ; $558e: $1d
    inc e                                         ; $558f: $1c
    ld b, e                                       ; $5590: $43

jr_0b0_5591:
    ld h, h                                       ; $5591: $64
    ld [$49ee], sp                                ; $5592: $08 $ee $49
    ld a, [$f34e]                                 ; $5595: $fa $4e $f3
    ld hl, $0466                                  ; $5598: $21 $66 $04
    bit 6, [hl]                                   ; $559b: $cb $76
    ld sp, $b801                                  ; $559d: $31 $01 $b8
    ld bc, $0842                                  ; $55a0: $01 $42 $08
    sub h                                         ; $55a3: $94
    ld d, [hl]                                    ; $55a4: $56
    rst $38                                       ; $55a5: $ff
    ld a, a                                       ; $55a6: $7f
    nop                                           ; $55a7: $00
    jr nz, @+$24                                  ; $55a8: $20 $22

    nop                                           ; $55aa: $00
    db $eb                                        ; $55ab: $eb
    halt                                          ; $55ac: $76
    rst $38                                       ; $55ad: $ff
    ld a, a                                       ; $55ae: $7f
    nop                                           ; $55af: $00
    jr nz, jr_0b0_5558                            ; $55b0: $20 $a6

    ld [$2a14], sp                                ; $55b2: $08 $14 $2a
    rst $18                                       ; $55b5: $df
    ld l, e                                       ; $55b6: $6b
    cp d                                          ; $55b7: $ba
    ld a, $a6                                     ; $55b8: $3e $a6
    ld [$2e57], sp                                ; $55ba: $08 $57 $2e
    ei                                            ; $55bd: $fb
    ld b, d                                       ; $55be: $42
    ld l, a                                       ; $55bf: $6f
    dec d                                         ; $55c0: $15
    and [hl]                                      ; $55c1: $a6
    ld [$42fb], sp                                ; $55c2: $08 $fb $42
    or d                                          ; $55c5: $b2
    dec e                                         ; $55c6: $1d
    rst $18                                       ; $55c7: $df
    ld l, e                                       ; $55c8: $6b
    ld b, e                                       ; $55c9: $43
    nop                                           ; $55ca: $00
    xor $49                                       ; $55cb: $ee $49
    dec sp                                        ; $55cd: $3b
    ld d, a                                       ; $55ce: $57
    di                                            ; $55cf: $f3
    dec h                                         ; $55d0: $25
    add h                                         ; $55d1: $84
    db $10                                        ; $55d2: $10
    xor $6e                                       ; $55d3: $ee $6e
    sub [hl]                                      ; $55d5: $96
    ld bc, $0089                                  ; $55d6: $01 $89 $00
    ld b, d                                       ; $55d9: $42
    ld [$4a30], sp                                ; $55da: $08 $30 $4a
    rst $38                                       ; $55dd: $ff
    ld a, a                                       ; $55de: $7f
    nop                                           ; $55df: $00
    jr nz, jr_0b0_5603                            ; $55e0: $20 $21

    nop                                           ; $55e2: $00
    db $10                                        ; $55e3: $10
    ld l, a                                       ; $55e4: $6f
    rst $38                                       ; $55e5: $ff
    ld a, a                                       ; $55e6: $7f
    nop                                           ; $55e7: $00
    jr nz, jr_0b0_5591                            ; $55e8: $20 $a7

    ld [$21f3], sp                                ; $55ea: $08 $f3 $21
    rst $18                                       ; $55ed: $df
    ld l, e                                       ; $55ee: $6b
    ld a, b                                       ; $55ef: $78
    ld [hl-], a                                   ; $55f0: $32
    and [hl]                                      ; $55f1: $a6
    ld [$3edb], sp                                ; $55f2: $08 $db $3e
    or e                                          ; $55f5: $b3
    dec e                                         ; $55f6: $1d
    rst $18                                       ; $55f7: $df
    ld l, e                                       ; $55f8: $6b
    and [hl]                                      ; $55f9: $a6
    ld [$2e36], sp                                ; $55fa: $08 $36 $2e
    inc a                                         ; $55fd: $3c
    ld c, e                                       ; $55fe: $4b
    or c                                          ; $55ff: $b1
    dec e                                         ; $5600: $1d
    ld h, h                                       ; $5601: $64
    inc b                                         ; $5602: $04

jr_0b0_5603:
    xor $49                                       ; $5603: $ee $49
    jp nc, $9b21                                  ; $5605: $d2 $21 $9b

    dec b                                         ; $5608: $05
    ld h, [hl]                                    ; $5609: $66
    ld [$6f31], sp                                ; $560a: $08 $31 $6f
    cp b                                          ; $560d: $b8
    ld bc, $6318                                  ; $560e: $01 $18 $63
    ld hl, $3104                                  ; $5611: $21 $04 $31
    ld l, a                                       ; $5614: $6f
    rst $38                                       ; $5615: $ff
    ld a, a                                       ; $5616: $7f
    nop                                           ; $5617: $00
    jr nz, jr_0b0_561a                            ; $5618: $20 $00

jr_0b0_561a:
    nop                                           ; $561a: $00
    ld [hl-], a                                   ; $561b: $32
    ld l, a                                       ; $561c: $6f
    rst $38                                       ; $561d: $ff
    ld a, a                                       ; $561e: $7f
    nop                                           ; $561f: $00
    jr nz, jr_0b0_5686                            ; $5620: $20 $64

    inc b                                         ; $5622: $04
    db $d3                                        ; $5623: $d3
    dec h                                         ; $5624: $25
    ld d, e                                       ; $5625: $53
    ld l, a                                       ; $5626: $6f
    cp h                                          ; $5627: $bc
    add hl, bc                                    ; $5628: $09
    and [hl]                                      ; $5629: $a6
    ld [$369a], sp                                ; $562a: $08 $9a $36
    or e                                          ; $562d: $b3
    dec e                                         ; $562e: $1d
    rst $18                                       ; $562f: $df
    ld l, e                                       ; $5630: $6b
    add l                                         ; $5631: $85
    inc b                                         ; $5632: $04
    dec d                                         ; $5633: $15
    ld a, [hl+]                                   ; $5634: $2a
    inc a                                         ; $5635: $3c
    ld c, e                                       ; $5636: $4b

jr_0b0_5637:
    ld a, h                                       ; $5637: $7c
    dec b                                         ; $5638: $05
    ld h, h                                       ; $5639: $64
    inc b                                         ; $563a: $04
    ld a, [c]                                     ; $563b: $f2
    dec l                                         ; $563c: $2d
    inc a                                         ; $563d: $3c
    ld d, e                                       ; $563e: $53
    sbc h                                         ; $563f: $9c
    dec b                                         ; $5640: $05
    ld h, e                                       ; $5641: $63
    ld [$49ee], sp                                ; $5642: $08 $ee $49
    ld d, h                                       ; $5645: $54
    ld l, e                                       ; $5646: $6b
    ld l, c                                       ; $5647: $69
    nop                                           ; $5648: $00
    nop                                           ; $5649: $00
    nop                                           ; $564a: $00
    ld d, e                                       ; $564b: $53
    ld l, a                                       ; $564c: $6f
    nop                                           ; $564d: $00
    jr nz, @+$01                                  ; $564e: $20 $ff

    ld a, a                                       ; $5650: $7f
    nop                                           ; $5651: $00
    nop                                           ; $5652: $00
    rst $38                                       ; $5653: $ff
    ld a, a                                       ; $5654: $7f
    nop                                           ; $5655: $00
    jr nz, jr_0b0_5637                            ; $5656: $20 $df

    ld l, e                                       ; $5658: $6b
    nop                                           ; $5659: $00
    nop                                           ; $565a: $00
    ld d, l                                       ; $565b: $55
    ld l, e                                       ; $565c: $6b
    sbc e                                         ; $565d: $9b
    add hl, bc                                    ; $565e: $09
    ld h, h                                       ; $565f: $64
    nop                                           ; $5660: $00
    add l                                         ; $5661: $85
    inc b                                         ; $5662: $04
    db $d3                                        ; $5663: $d3
    dec h                                         ; $5664: $25
    db $db                                        ; $5665: $db
    ld b, d                                       ; $5666: $42
    rst $18                                       ; $5667: $df
    ld l, e                                       ; $5668: $6b
    ld h, h                                       ; $5669: $64
    nop                                           ; $566a: $00
    db $f4                                        ; $566b: $f4
    dec h                                         ; $566c: $25
    sbc [hl]                                      ; $566d: $9e

jr_0b0_566e:
    ld e, a                                       ; $566e: $5f

jr_0b0_566f:
    ld [hl], c                                    ; $566f: $71
    add hl, de                                    ; $5670: $19
    ld h, h                                       ; $5671: $64
    ld [$059c], sp                                ; $5672: $08 $9c $05
    inc d                                         ; $5675: $14
    ld h, $1c                                     ; $5676: $26 $1c
    ld b, a                                       ; $5678: $47
    ld b, e                                       ; $5679: $43
    inc b                                         ; $567a: $04
    rrca                                          ; $567b: $0f
    ld b, [hl]                                    ; $567c: $46
    ld d, [hl]                                    ; $567d: $56
    ld h, a                                       ; $567e: $67
    ld d, d                                       ; $567f: $52
    ld de, $0000                                  ; $5680: $11 $00 $00
    rst $38                                       ; $5683: $ff
    ld a, a                                       ; $5684: $7f
    nop                                           ; $5685: $00

jr_0b0_5686:
    jr nz, @+$54                                  ; $5686: $20 $52

    ld de, $0000                                  ; $5688: $11 $00 $00
    rst $38                                       ; $568b: $ff
    ld a, a                                       ; $568c: $7f
    nop                                           ; $568d: $00
    jr nz, jr_0b0_566f                            ; $568e: $20 $df

    ld l, e                                       ; $5690: $6b
    nop                                           ; $5691: $00
    nop                                           ; $5692: $00
    sub a                                         ; $5693: $97
    ld h, a                                       ; $5694: $67
    cp c                                          ; $5695: $b9
    add hl, bc                                    ; $5696: $09
    ld b, e                                       ; $5697: $43
    nop                                           ; $5698: $00
    nop                                           ; $5699: $00
    nop                                           ; $569a: $00
    db $10                                        ; $569b: $10
    dec h                                         ; $569c: $25
    ld d, a                                       ; $569d: $57
    ld l, $a6                                     ; $569e: $2e $a6
    ld [$0043], sp                                ; $56a0: $08 $43 $00
    jp nc, $fa21                                  ; $56a3: $d2 $21 $fa

    ld b, d                                       ; $56a6: $42
    and [hl]                                      ; $56a7: $a6
    ld [$0864], sp                                ; $56a8: $08 $64 $08
    xor $49                                       ; $56ab: $ee $49
    cp d                                          ; $56ad: $ba
    dec b                                         ; $56ae: $05
    di                                            ; $56af: $f3
    dec h                                         ; $56b0: $25
    ld hl, $0f00                                  ; $56b1: $21 $00 $0f
    ld b, [hl]                                    ; $56b4: $46
    ld d, h                                       ; $56b5: $54
    dec c                                         ; $56b6: $0d
    add h                                         ; $56b7: $84
    stop                                          ; $56b8: $10 $00
    nop                                           ; $56ba: $00
    rst $38                                       ; $56bb: $ff
    ld a, a                                       ; $56bc: $7f
    nop                                           ; $56bd: $00
    jr nz, @-$7a                                  ; $56be: $20 $84

    stop                                          ; $56c0: $10 $00
    nop                                           ; $56c2: $00
    rst $38                                       ; $56c3: $ff
    ld a, a                                       ; $56c4: $7f
    nop                                           ; $56c5: $00
    jr nz, jr_0b0_566e                            ; $56c6: $20 $a6

    ld [$0000], sp                                ; $56c8: $08 $00 $00
    rst $10                                       ; $56cb: $d7
    dec c                                         ; $56cc: $0d
    ld b, e                                       ; $56cd: $43
    nop                                           ; $56ce: $00
    reti                                          ; $56cf: $d9


    dec c                                         ; $56d0: $0d
    nop                                           ; $56d1: $00
    nop                                           ; $56d2: $00
    or c                                          ; $56d3: $b1
    dec e                                         ; $56d4: $1d
    add l                                         ; $56d5: $85
    inc b                                         ; $56d6: $04
    ld [hl], d                                    ; $56d7: $72
    inc a                                         ; $56d8: $3c
    ld hl, $9300                                  ; $56d9: $21 $00 $93
    add hl, sp                                    ; $56dc: $39
    dec de                                        ; $56dd: $1b
    ld b, e                                       ; $56de: $43
    ret z                                         ; $56df: $c8

    inc c                                         ; $56e0: $0c
    ld h, h                                       ; $56e1: $64
    ld [$49ee], sp                                ; $56e2: $08 $ee $49
    jp nc, $9721                                  ; $56e5: $d2 $21 $97

    dec b                                         ; $56e8: $05
    ld b, d                                       ; $56e9: $42
    ld [$45ee], sp                                ; $56ea: $08 $ee $45
    dec [hl]                                      ; $56ed: $35
    add hl, bc                                    ; $56ee: $09
    rst $38                                       ; $56ef: $ff
    ld a, a                                       ; $56f0: $7f
    nop                                           ; $56f1: $00
    nop                                           ; $56f2: $00
    rst $38                                       ; $56f3: $ff
    ld a, a                                       ; $56f4: $7f
    nop                                           ; $56f5: $00
    jr nz, @+$01                                  ; $56f6: $20 $ff

    ld a, a                                       ; $56f8: $7f
    nop                                           ; $56f9: $00
    nop                                           ; $56fa: $00

jr_0b0_56fb:
    rst $38                                       ; $56fb: $ff
    ld a, a                                       ; $56fc: $7f
    nop                                           ; $56fd: $00
    jr nz, jr_0b0_5772                            ; $56fe: $20 $72

    inc a                                         ; $5700: $3c
    nop                                           ; $5701: $00
    nop                                           ; $5702: $00
    jr nc, jr_0b0_570a                            ; $5703: $30 $05

    rst $38                                       ; $5705: $ff
    ld a, a                                       ; $5706: $7f
    or [hl]                                       ; $5707: $b6
    add hl, bc                                    ; $5708: $09
    nop                                           ; $5709: $00

jr_0b0_570a:
    nop                                           ; $570a: $00
    db $d3                                        ; $570b: $d3
    ld b, h                                       ; $570c: $44
    inc [hl]                                      ; $570d: $34
    ld c, l                                       ; $570e: $4d
    ld h, e                                       ; $570f: $63
    nop                                           ; $5710: $00
    ld bc, $7600                                  ; $5711: $01 $00 $76
    ld d, c                                       ; $5714: $51
    inc c                                         ; $5715: $0c
    dec c                                         ; $5716: $0d
    and [hl]                                      ; $5717: $a6
    ld [$0864], sp                                ; $5718: $08 $64 $08
    xor h                                         ; $571b: $ac
    dec a                                         ; $571c: $3d
    ld [hl], e                                    ; $571d: $73
    ld bc, $21f3                                  ; $571e: $01 $f3 $21
    ld b, d                                       ; $5721: $42
    ld [$7fff], sp                                ; $5722: $08 $ff $7f
    call Call_0b0_5741                            ; $5725: $cd $41 $57
    dec c                                         ; $5728: $0d
    nop                                           ; $5729: $00
    nop                                           ; $572a: $00
    nop                                           ; $572b: $00
    jr nz, jr_0b0_56fb                            ; $572c: $20 $cd

    ld b, c                                       ; $572e: $41
    ld d, a                                       ; $572f: $57
    dec c                                         ; $5730: $0d
    nop                                           ; $5731: $00
    nop                                           ; $5732: $00
    nop                                           ; $5733: $00
    jr nz, jr_0b0_576a                            ; $5734: $20 $34

    ld c, l                                       ; $5736: $4d
    ld h, e                                       ; $5737: $63
    nop                                           ; $5738: $00
    nop                                           ; $5739: $00
    nop                                           ; $573a: $00
    rst $38                                       ; $573b: $ff
    ld a, a                                       ; $573c: $7f
    call Call_0b0_7200                            ; $573d: $cd $00 $72
    dec b                                         ; $5740: $05

Call_0b0_5741:
    nop                                           ; $5741: $00
    nop                                           ; $5742: $00
    ld d, l                                       ; $5743: $55
    ld c, l                                       ; $5744: $4d
    sub [hl]                                      ; $5745: $96
    ld d, l                                       ; $5746: $55
    or a                                          ; $5747: $b7
    ld d, l                                       ; $5748: $55
    ld bc, $b700                                  ; $5749: $01 $00 $b7
    ld d, l                                       ; $574c: $55
    and [hl]                                      ; $574d: $a6
    ld [$00ed], sp                                ; $574e: $08 $ed $00
    ld h, e                                       ; $5751: $63
    ld [$41ee], sp                                ; $5752: $08 $ee $41
    xor $00                                       ; $5755: $ee $00
    add a                                         ; $5757: $87
    inc b                                         ; $5758: $04
    ld b, d                                       ; $5759: $42
    ld [$7fff], sp                                ; $575a: $08 $ff $7f
    xor h                                         ; $575d: $ac
    add hl, sp                                    ; $575e: $39
    ld d, [hl]                                    ; $575f: $56
    dec c                                         ; $5760: $0d
    nop                                           ; $5761: $00
    nop                                           ; $5762: $00
    nop                                           ; $5763: $00
    jr nz, @-$52                                  ; $5764: $20 $ac

    add hl, sp                                    ; $5766: $39
    ld d, [hl]                                    ; $5767: $56
    dec c                                         ; $5768: $0d
    nop                                           ; $5769: $00

jr_0b0_576a:
    nop                                           ; $576a: $00
    nop                                           ; $576b: $00
    jr nz, @-$68                                  ; $576c: $20 $96

    ld d, l                                       ; $576e: $55
    or a                                          ; $576f: $b7
    ld d, l                                       ; $5770: $55
    nop                                           ; $5771: $00

jr_0b0_5772:
    nop                                           ; $5772: $00
    rst $10                                       ; $5773: $d7
    ld e, c                                       ; $5774: $59
    xor e                                         ; $5775: $ab
    nop                                           ; $5776: $00
    rst $38                                       ; $5777: $ff
    ld a, a                                       ; $5778: $7f
    nop                                           ; $5779: $00
    nop                                           ; $577a: $00

jr_0b0_577b:
    rst $10                                       ; $577b: $d7
    ld e, c                                       ; $577c: $59
    ld e, c                                       ; $577d: $59
    ld e, [hl]                                    ; $577e: $5e
    jr jr_0b0_57df                                ; $577f: $18 $5e

    nop                                           ; $5781: $00
    nop                                           ; $5782: $00
    add hl, sp                                    ; $5783: $39
    ld e, [hl]                                    ; $5784: $5e
    adc b                                         ; $5785: $88
    nop                                           ; $5786: $00
    sbc d                                         ; $5787: $9a
    ld h, [hl]                                    ; $5788: $66
    ld h, h                                       ; $5789: $64
    ld [$41ee], sp                                ; $578a: $08 $ee $41
    ld sp, $8946                                  ; $578d: $31 $46 $89
    nop                                           ; $5790: $00
    ld hl, $ff04                                  ; $5791: $21 $04 $ff
    ld a, a                                       ; $5794: $7f
    add hl, hl                                    ; $5795: $29
    dec l                                         ; $5796: $2d
    ld [hl], d                                    ; $5797: $72
    add hl, de                                    ; $5798: $19
    nop                                           ; $5799: $00
    jr nz, @+$01                                  ; $579a: $20 $ff

    ld a, a                                       ; $579c: $7f
    add hl, hl                                    ; $579d: $29
    dec l                                         ; $579e: $2d
    ld [hl], d                                    ; $579f: $72
    add hl, de                                    ; $57a0: $19
    nop                                           ; $57a1: $00
    jr nz, jr_0b0_577b                            ; $57a2: $20 $d7

    ld e, c                                       ; $57a4: $59
    ld e, c                                       ; $57a5: $59
    ld e, [hl]                                    ; $57a6: $5e
    jr jr_0b0_5807                                ; $57a7: $18 $5e

    nop                                           ; $57a9: $00
    nop                                           ; $57aa: $00
    rst $38                                       ; $57ab: $ff
    ld a, a                                       ; $57ac: $7f
    ld b, [hl]                                    ; $57ad: $46

jr_0b0_57ae:
    nop                                           ; $57ae: $00
    adc c                                         ; $57af: $89
    nop                                           ; $57b0: $00
    nop                                           ; $57b1: $00
    nop                                           ; $57b2: $00
    ld d, d                                       ; $57b3: $52
    inc a                                         ; $57b4: $3c
    ld a, c                                       ; $57b5: $79
    ld h, [hl]                                    ; $57b6: $66
    sbc d                                         ; $57b7: $9a
    ld h, [hl]                                    ; $57b8: $66
    nop                                           ; $57b9: $00
    nop                                           ; $57ba: $00
    sbc d                                         ; $57bb: $9a
    ld h, [hl]                                    ; $57bc: $66
    add a                                         ; $57bd: $87
    nop                                           ; $57be: $00
    ld l, b                                       ; $57bf: $68
    nop                                           ; $57c0: $00
    ld h, h                                       ; $57c1: $64
    ld [$35ad], sp                                ; $57c2: $08 $ad $35
    rrca                                          ; $57c5: $0f
    ld b, [hl]                                    ; $57c6: $46
    rlc b                                         ; $57c7: $cb $00
    nop                                           ; $57c9: $00
    inc b                                         ; $57ca: $04
    rst $38                                       ; $57cb: $ff
    ld a, a                                       ; $57cc: $7f
    rlca                                          ; $57cd: $07
    ld hl, $0068                                  ; $57ce: $21 $68 $00
    nop                                           ; $57d1: $00
    jr nz, @+$01                                  ; $57d2: $20 $ff

    ld a, a                                       ; $57d4: $7f
    rlca                                          ; $57d5: $07
    ld hl, $0068                                  ; $57d6: $21 $68 $00
    nop                                           ; $57d9: $00
    jr nz, @+$54                                  ; $57da: $20 $52

    inc a                                         ; $57dc: $3c
    ld a, c                                       ; $57dd: $79
    ld h, [hl]                                    ; $57de: $66

jr_0b0_57df:
    sbc d                                         ; $57df: $9a
    ld h, [hl]                                    ; $57e0: $66
    nop                                           ; $57e1: $00
    nop                                           ; $57e2: $00
    rst $38                                       ; $57e3: $ff
    ld a, a                                       ; $57e4: $7f
    ld l, b                                       ; $57e5: $68

jr_0b0_57e6:
    nop                                           ; $57e6: $00
    nop                                           ; $57e7: $00
    jr nz, jr_0b0_57ea                            ; $57e8: $20 $00

jr_0b0_57ea:
    nop                                           ; $57ea: $00
    sbc d                                         ; $57eb: $9a
    ld h, [hl]                                    ; $57ec: $66
    ld h, a                                       ; $57ed: $67
    nop                                           ; $57ee: $00
    nop                                           ; $57ef: $00
    jr nz, jr_0b0_57f2                            ; $57f0: $20 $00

jr_0b0_57f2:
    nop                                           ; $57f2: $00
    sbc d                                         ; $57f3: $9a
    ld h, [hl]                                    ; $57f4: $66
    ld h, a                                       ; $57f5: $67
    nop                                           ; $57f6: $00
    xor d                                         ; $57f7: $aa
    nop                                           ; $57f8: $00
    ld h, h                                       ; $57f9: $64
    inc c                                         ; $57fa: $0c
    adc h                                         ; $57fb: $8c
    ld sp, $2928                                  ; $57fc: $31 $28 $29
    db $ed                                        ; $57ff: $ed
    ld b, l                                       ; $5800: $45
    nop                                           ; $5801: $00
    nop                                           ; $5802: $00
    rst $38                                       ; $5803: $ff
    ld a, a                                       ; $5804: $7f
    add $18                                       ; $5805: $c6 $18

jr_0b0_5807:
    nop                                           ; $5807: $00
    jr nz, jr_0b0_580a                            ; $5808: $20 $00

jr_0b0_580a:
    jr nz, @+$01                                  ; $580a: $20 $ff

    ld a, a                                       ; $580c: $7f
    add $18                                       ; $580d: $c6 $18
    nop                                           ; $580f: $00
    jr nz, jr_0b0_5812                            ; $5810: $20 $00

jr_0b0_5812:
    jr nz, jr_0b0_57ae                            ; $5812: $20 $9a

    ld h, [hl]                                    ; $5814: $66
    ld h, a                                       ; $5815: $67
    nop                                           ; $5816: $00
    nop                                           ; $5817: $00
    jr nz, jr_0b0_581a                            ; $5818: $20 $00

jr_0b0_581a:
    ld [$669a], sp                                ; $581a: $08 $9a $66
    xor d                                         ; $581d: $aa
    nop                                           ; $581e: $00
    rst $38                                       ; $581f: $ff
    ld a, a                                       ; $5820: $7f
    nop                                           ; $5821: $00
    nop                                           ; $5822: $00
    sbc d                                         ; $5823: $9a
    ld h, [hl]                                    ; $5824: $66
    xor d                                         ; $5825: $aa
    nop                                           ; $5826: $00
    rst $38                                       ; $5827: $ff
    ld a, a                                       ; $5828: $7f
    nop                                           ; $5829: $00
    nop                                           ; $582a: $00
    rst $38                                       ; $582b: $ff
    ld a, a                                       ; $582c: $7f
    add $18                                       ; $582d: $c6 $18
    nop                                           ; $582f: $00
    jr nz, jr_0b0_5832                            ; $5830: $20 $00

jr_0b0_5832:
    nop                                           ; $5832: $00
    rst $38                                       ; $5833: $ff
    ld a, a                                       ; $5834: $7f
    add $18                                       ; $5835: $c6 $18
    nop                                           ; $5837: $00
    jr nz, jr_0b0_583a                            ; $5838: $20 $00

jr_0b0_583a:
    nop                                           ; $583a: $00
    rst $38                                       ; $583b: $ff
    ld a, a                                       ; $583c: $7f
    nop                                           ; $583d: $00
    jr nz, jr_0b0_5840                            ; $583e: $20 $00

jr_0b0_5840:
    jr nz, jr_0b0_5842                            ; $5840: $20 $00

jr_0b0_5842:
    jr nz, @+$01                                  ; $5842: $20 $ff

    ld a, a                                       ; $5844: $7f

jr_0b0_5845:
    nop                                           ; $5845: $00
    jr nz, jr_0b0_5848                            ; $5846: $20 $00

jr_0b0_5848:
    jr nz, jr_0b0_584a                            ; $5848: $20 $00

jr_0b0_584a:
    jr nz, jr_0b0_57e6                            ; $584a: $20 $9a

    ld h, [hl]                                    ; $584c: $66
    xor d                                         ; $584d: $aa
    nop                                           ; $584e: $00
    rst $38                                       ; $584f: $ff
    ld a, a                                       ; $5850: $7f
    nop                                           ; $5851: $00
    nop                                           ; $5852: $00
    rst $38                                       ; $5853: $ff
    ld a, a                                       ; $5854: $7f
    nop                                           ; $5855: $00
    jr nz, @+$01                                  ; $5856: $20 $ff

jr_0b0_5858:
    ld a, a                                       ; $5858: $7f
    nop                                           ; $5859: $00
    nop                                           ; $585a: $00
    rst $38                                       ; $585b: $ff
    ld a, a                                       ; $585c: $7f
    nop                                           ; $585d: $00
    jr nz, @+$01                                  ; $585e: $20 $ff

    ld a, a                                       ; $5860: $7f
    nop                                           ; $5861: $00
    nop                                           ; $5862: $00
    nop                                           ; $5863: $00
    jr nz, jr_0b0_5866                            ; $5864: $20 $00

jr_0b0_5866:
    jr nz, jr_0b0_5868                            ; $5866: $20 $00

jr_0b0_5868:
    jr nz, jr_0b0_586a                            ; $5868: $20 $00

jr_0b0_586a:
    nop                                           ; $586a: $00
    nop                                           ; $586b: $00
    jr nz, jr_0b0_586e                            ; $586c: $20 $00

jr_0b0_586e:
    jr nz, jr_0b0_5870                            ; $586e: $20 $00

jr_0b0_5870:
    jr nz, jr_0b0_5872                            ; $5870: $20 $00

jr_0b0_5872:
    nop                                           ; $5872: $00
    nop                                           ; $5873: $00
    jr nz, jr_0b0_5876                            ; $5874: $20 $00

jr_0b0_5876:
    jr nz, jr_0b0_5878                            ; $5876: $20 $00

jr_0b0_5878:
    jr nz, jr_0b0_587a                            ; $5878: $20 $00

jr_0b0_587a:
    jr nz, jr_0b0_587c                            ; $587a: $20 $00

jr_0b0_587c:
    jr nz, jr_0b0_587e                            ; $587c: $20 $00

jr_0b0_587e:
    jr nz, jr_0b0_5880                            ; $587e: $20 $00

jr_0b0_5880:
    jr nz, jr_0b0_5882                            ; $5880: $20 $00

jr_0b0_5882:
    jr nz, jr_0b0_5884                            ; $5882: $20 $00

jr_0b0_5884:
    jr nz, @+$01                                  ; $5884: $20 $ff

    ld a, a                                       ; $5886: $7f
    ld [bc], a                                    ; $5887: $02

jr_0b0_5888:
    jr nz, jr_0b0_588a                            ; $5888: $20 $00

jr_0b0_588a:
    jr nz, jr_0b0_588c                            ; $588a: $20 $00

jr_0b0_588c:
    jr nz, @+$01                                  ; $588c: $20 $ff

    ld a, a                                       ; $588e: $7f
    ld [bc], a                                    ; $588f: $02
    jr nz, jr_0b0_5892                            ; $5890: $20 $00

jr_0b0_5892:
    jr nz, jr_0b0_5894                            ; $5892: $20 $00

jr_0b0_5894:
    jr nz, @+$01                                  ; $5894: $20 $ff

    ld a, a                                       ; $5896: $7f
    ld [bc], a                                    ; $5897: $02
    jr nz, jr_0b0_589a                            ; $5898: $20 $00

jr_0b0_589a:
    nop                                           ; $589a: $00
    ld b, h                                       ; $589b: $44
    ld e, l                                       ; $589c: $5d
    nop                                           ; $589d: $00
    jr nz, jr_0b0_5888                            ; $589e: $20 $e8

    ld a, [hl]                                    ; $58a0: $7e
    nop                                           ; $58a1: $00
    jr nz, jr_0b0_58f1                            ; $58a2: $20 $4d

    ld [$2000], sp                                ; $58a4: $08 $00 $20
    add sp, $7e                                   ; $58a7: $e8 $7e
    nop                                           ; $58a9: $00
    jr nz, jr_0b0_58f9                            ; $58aa: $20 $4d

    ld [$2000], sp                                ; $58ac: $08 $00 $20
    add sp, $7e                                   ; $58af: $e8 $7e
    nop                                           ; $58b1: $00
    jr nz, jr_0b0_5901                            ; $58b2: $20 $4d

    ld [$2000], sp                                ; $58b4: $08 $00 $20
    add sp, $7e                                   ; $58b7: $e8 $7e
    nop                                           ; $58b9: $00
    jr nz, jr_0b0_5845                            ; $58ba: $20 $89

    nop                                           ; $58bc: $00
    rst $38                                       ; $58bd: $ff
    ld a, a                                       ; $58be: $7f
    ld [bc], a                                    ; $58bf: $02
    jr nz, jr_0b0_58e5                            ; $58c0: $20 $23

    db $10                                        ; $58c2: $10
    adc h                                         ; $58c3: $8c
    ld h, d                                       ; $58c4: $62
    rst $18                                       ; $58c5: $df
    ld [hl], e                                    ; $58c6: $73
    and d                                         ; $58c7: $a2
    ld d, h                                       ; $58c8: $54
    nop                                           ; $58c9: $00
    jr nz, jr_0b0_5858                            ; $58ca: $20 $8c

    ld h, d                                       ; $58cc: $62
    rst $18                                       ; $58cd: $df
    ld [hl], e                                    ; $58ce: $73
    and d                                         ; $58cf: $a2
    ld d, h                                       ; $58d0: $54
    ld [bc], a                                    ; $58d1: $02
    inc c                                         ; $58d2: $0c
    rst $00                                       ; $58d3: $c7
    ld a, d                                       ; $58d4: $7a
    ld h, d                                       ; $58d5: $62
    ld d, h                                       ; $58d6: $54

jr_0b0_58d7:
    rst $38                                       ; $58d7: $ff
    ld a, a                                       ; $58d8: $7f
    nop                                           ; $58d9: $00
    jr nz, jr_0b0_58fb                            ; $58da: $20 $1f

    ld a, [de]                                    ; $58dc: $1a
    cp a                                          ; $58dd: $bf
    ld d, e                                       ; $58de: $53

jr_0b0_58df:
    ld c, l                                       ; $58df: $4d
    ld [$2000], sp                                ; $58e0: $08 $00 $20

jr_0b0_58e3:
    jr c, jr_0b0_5917                             ; $58e3: $38 $32

jr_0b0_58e5:
    adc c                                         ; $58e5: $89
    nop                                           ; $58e6: $00
    sbc a                                         ; $58e7: $9f
    ld h, e                                       ; $58e8: $63

jr_0b0_58e9:
    nop                                           ; $58e9: $00
    jr nz, jr_0b0_5924                            ; $58ea: $20 $38

    ld [hl-], a                                   ; $58ec: $32
    adc c                                         ; $58ed: $89
    nop                                           ; $58ee: $00
    sbc a                                         ; $58ef: $9f
    ld h, e                                       ; $58f0: $63

jr_0b0_58f1:
    nop                                           ; $58f1: $00
    jr nz, jr_0b0_58e9                            ; $58f2: $20 $f5

    dec l                                         ; $58f4: $2d
    sbc a                                         ; $58f5: $9f
    ld h, e                                       ; $58f6: $63
    adc c                                         ; $58f7: $89
    nop                                           ; $58f8: $00

jr_0b0_58f9:
    ld b, h                                       ; $58f9: $44
    nop                                           ; $58fa: $00

jr_0b0_58fb:
    ccf                                           ; $58fb: $3f
    ld d, e                                       ; $58fc: $53
    nop                                           ; $58fd: $00
    jr nz, jr_0b0_5901                            ; $58fe: $20 $01

    ld d, b                                       ; $5900: $50

jr_0b0_5901:
    nop                                           ; $5901: $00
    nop                                           ; $5902: $00
    rst $00                                       ; $5903: $c7
    ld a, d                                       ; $5904: $7a
    rst $38                                       ; $5905: $ff
    ld a, a                                       ; $5906: $7f

jr_0b0_5907:
    nop                                           ; $5907: $00
    jr nz, jr_0b0_594e                            ; $5908: $20 $44

    nop                                           ; $590a: $00
    rra                                           ; $590b: $1f
    ld a, [de]                                    ; $590c: $1a
    ld b, c                                       ; $590d: $41
    ld d, b                                       ; $590e: $50
    rst $18                                       ; $590f: $df
    ld l, a                                       ; $5910: $6f
    nop                                           ; $5911: $00
    jr nz, @+$01                                  ; $5912: $20 $ff

    ld a, [hl-]                                   ; $5914: $3a
    adc e                                         ; $5915: $8b
    inc b                                         ; $5916: $04

jr_0b0_5917:
    cp a                                          ; $5917: $bf
    ld d, e                                       ; $5918: $53
    nop                                           ; $5919: $00
    jr nz, jr_0b0_58d7                            ; $591a: $20 $bb

    ld a, $9f                                     ; $591c: $3e $9f
    ld h, e                                       ; $591e: $63
    xor d                                         ; $591f: $aa
    inc b                                         ; $5920: $04

jr_0b0_5921:
    nop                                           ; $5921: $00
    jr nz, jr_0b0_58df                            ; $5922: $20 $bb

jr_0b0_5924:
    ld a, $9f                                     ; $5924: $3e $9f
    ld h, e                                       ; $5926: $63
    xor d                                         ; $5927: $aa
    inc b                                         ; $5928: $04
    nop                                           ; $5929: $00
    jr nz, jr_0b0_5921                            ; $592a: $20 $f5

    dec l                                         ; $592c: $2d
    adc c                                         ; $592d: $89
    nop                                           ; $592e: $00
    ccf                                           ; $592f: $3f
    ld d, e                                       ; $5930: $53
    nop                                           ; $5931: $00
    jr nz, jr_0b0_5907                            ; $5932: $20 $d3

    add hl, hl                                    ; $5934: $29
    adc c                                         ; $5935: $89
    nop                                           ; $5936: $00
    ld e, $4b                                     ; $5937: $1e $4b
    nop                                           ; $5939: $00
    jr nz, jr_0b0_58e3                            ; $593a: $20 $a7

    ld a, d                                       ; $593c: $7a
    rst $38                                       ; $593d: $ff
    ld a, a                                       ; $593e: $7f
    ld b, h                                       ; $593f: $44
    ld e, l                                       ; $5940: $5d
    jp Jump_000_1f05                              ; $5941: $c3 $05 $1f


    ld a, [de]                                    ; $5944: $1a
    ld a, a                                       ; $5945: $7f
    ld b, a                                       ; $5946: $47
    ld c, l                                       ; $5947: $4d
    ld [$2000], sp                                ; $5948: $08 $00 $20
    cp a                                          ; $594b: $bf
    ld [hl-], a                                   ; $594c: $32
    sbc a                                         ; $594d: $9f

jr_0b0_594e:
    ld h, e                                       ; $594e: $63
    adc d                                         ; $594f: $8a
    inc b                                         ; $5950: $04

Jump_0b0_5951:
    adc c                                         ; $5951: $89
    inc b                                         ; $5952: $04
    rla                                           ; $5953: $17
    ld l, $3e                                     ; $5954: $2e $3e
    ld d, e                                       ; $5956: $53
    sub d                                         ; $5957: $92
    dec e                                         ; $5958: $1d

jr_0b0_5959:
    nop                                           ; $5959: $00
    jr nz, jr_0b0_5973                            ; $595a: $20 $17

    ld l, $3e                                     ; $595c: $2e $3e
    ld d, e                                       ; $595e: $53
    sub d                                         ; $595f: $92
    dec e                                         ; $5960: $1d
    nop                                           ; $5961: $00
    jr nz, jr_0b0_5959                            ; $5962: $20 $f5

    dec l                                         ; $5964: $2d
    adc c                                         ; $5965: $89
    nop                                           ; $5966: $00
    ld e, $4f                                     ; $5967: $1e $4f
    nop                                           ; $5969: $00
    jr nz, @+$01                                  ; $596a: $20 $ff

    ld b, [hl]                                    ; $596c: $46
    xor c                                         ; $596d: $a9
    nop                                           ; $596e: $00
    ld a, a                                       ; $596f: $7f
    ld h, e                                       ; $5970: $63

jr_0b0_5971:
    nop                                           ; $5971: $00
    inc c                                         ; $5972: $0c

jr_0b0_5973:
    ld bc, $e344                                  ; $5973: $01 $44 $e3
    add hl, bc                                    ; $5976: $09
    ld b, h                                       ; $5977: $44
    ld e, l                                       ; $5978: $5d
    db $e3                                        ; $5979: $e3
    add hl, bc                                    ; $597a: $09
    ld a, a                                       ; $597b: $7f
    ld h, $9f                                     ; $597c: $26 $9f
    ld b, a                                       ; $597e: $47
    ld c, l                                       ; $597f: $4d

jr_0b0_5980:
    ld [$08cc], sp                                ; $5980: $08 $cc $08
    jr c, jr_0b0_59b7                             ; $5983: $38 $32

    rra                                           ; $5985: $1f
    ld c, a                                       ; $5986: $4f
    ld e, a                                       ; $5987: $5f
    ld [hl+], a                                   ; $5988: $22
    nop                                           ; $5989: $00
    jr nz, jr_0b0_5980                            ; $598a: $20 $f4

    add hl, hl                                    ; $598c: $29
    dec e                                         ; $598d: $1d
    ld c, e                                       ; $598e: $4b
    xor d                                         ; $598f: $aa
    ld [$2000], sp                                ; $5990: $08 $00 $20
    add sp, $7e                                   ; $5993: $e8 $7e
    dec e                                         ; $5995: $1d
    ld c, e                                       ; $5996: $4b
    xor d                                         ; $5997: $aa
    ld [$2000], sp                                ; $5998: $08 $00 $20
    ld d, $2a                                     ; $599b: $16 $2a
    rra                                           ; $599d: $1f
    ld c, e                                       ; $599e: $4b
    xor d                                         ; $599f: $aa
    inc b                                         ; $59a0: $04
    nop                                           ; $59a1: $00
    jr jr_0b0_5a1f                                ; $59a2: $18 $7b

    ld a, [hl-]                                   ; $59a4: $3a
    rlc h                                         ; $59a5: $cb $04
    rst $38                                       ; $59a7: $ff
    ld a, a                                       ; $59a8: $7f
    nop                                           ; $59a9: $00
    nop                                           ; $59aa: $00
    rst $38                                       ; $59ab: $ff
    ld a, a                                       ; $59ac: $7f
    db $e3                                        ; $59ad: $e3
    add hl, bc                                    ; $59ae: $09
    db $e4                                        ; $59af: $e4
    add hl, bc                                    ; $59b0: $09
    and [hl]                                      ; $59b1: $a6
    dec d                                         ; $59b2: $15
    sbc a                                         ; $59b3: $9f
    ld a, [hl+]                                   ; $59b4: $2a
    cp a                                          ; $59b5: $bf
    ld c, a                                       ; $59b6: $4f

jr_0b0_59b7:
    ld c, l                                       ; $59b7: $4d

jr_0b0_59b8:
    ld [$0089], sp                                ; $59b8: $08 $89 $00
    sub [hl]                                      ; $59bb: $96
    dec d                                         ; $59bc: $15
    cp l                                          ; $59bd: $bd
    ld a, $fe                                     ; $59be: $3e $fe
    add hl, de                                    ; $59c0: $19
    nop                                           ; $59c1: $00
    jr nz, jr_0b0_59b8                            ; $59c2: $20 $f4

    add hl, hl                                    ; $59c4: $29
    ld e, $4f                                     ; $59c5: $1e $4f
    adc c                                         ; $59c7: $89
    inc b                                         ; $59c8: $04

jr_0b0_59c9:
    nop                                           ; $59c9: $00
    jr nz, jr_0b0_5971                            ; $59ca: $20 $a5

    ld h, l                                       ; $59cc: $65
    rst $38                                       ; $59cd: $ff
    ld a, a                                       ; $59ce: $7f
    jp hl                                         ; $59cf: $e9


    ld a, d                                       ; $59d0: $7a
    nop                                           ; $59d1: $00
    jr nz, jr_0b0_59c9                            ; $59d2: $20 $f5

    add hl, hl                                    ; $59d4: $29
    adc c                                         ; $59d5: $89
    nop                                           ; $59d6: $00
    cp l                                          ; $59d7: $bd
    ld a, $00                                     ; $59d8: $3e $00
    inc b                                         ; $59da: $04
    cp l                                          ; $59db: $bd
    ld a, $ff                                     ; $59dc: $3e $ff
    ld a, a                                       ; $59de: $7f
    adc c                                         ; $59df: $89
    nop                                           ; $59e0: $00
    nop                                           ; $59e1: $00
    nop                                           ; $59e2: $00
    inc b                                         ; $59e3: $04
    ld c, $ff                                     ; $59e4: $0e $ff
    ld a, a                                       ; $59e6: $7f
    adc c                                         ; $59e7: $89
    nop                                           ; $59e8: $00
    ld c, d                                       ; $59e9: $4a
    add hl, hl                                    ; $59ea: $29
    jr jr_0b0_5a50                                ; $59eb: $18 $63

    rst $38                                       ; $59ed: $ff
    ld [hl], $4d                                  ; $59ee: $36 $4d
    ld [$08cb], sp                                ; $59f0: $08 $cb $08
    ld e, $1a                                     ; $59f3: $1e $1a
    or $08                                        ; $59f5: $f6 $08
    rst $18                                       ; $59f7: $df
    ld b, d                                       ; $59f8: $42
    nop                                           ; $59f9: $00
    jr jr_0b0_5a77                                ; $59fa: $18 $7b

    ld a, [hl-]                                   ; $59fc: $3a
    cp a                                          ; $59fd: $bf
    ld l, a                                       ; $59fe: $6f
    adc c                                         ; $59ff: $89
    nop                                           ; $5a00: $00
    nop                                           ; $5a01: $00
    jr nz, jr_0b0_5a68                            ; $5a02: $20 $64

    ld h, c                                       ; $5a04: $61
    ld h, a                                       ; $5a05: $67
    halt                                          ; $5a06: $76
    ld bc, $2250                                  ; $5a07: $01 $50 $22
    jr @-$16                                      ; $5a0a: $18 $e8

    ld a, [hl]                                    ; $5a0c: $7e
    ld a, e                                       ; $5a0d: $7b
    ld [hl], $ff                                  ; $5a0e: $36 $ff
    ld a, a                                       ; $5a10: $7f
    ld h, $00                                     ; $5a11: $26 $00
    sbc $3e                                       ; $5a13: $de $3e
    inc b                                         ; $5a15: $04
    ld [de], a                                    ; $5a16: $12
    rst $38                                       ; $5a17: $ff
    ld a, a                                       ; $5a18: $7f
    inc b                                         ; $5a19: $04
    ld [de], a                                    ; $5a1a: $12
    ld c, d                                       ; $5a1b: $4a
    add hl, hl                                    ; $5a1c: $29
    sub c                                         ; $5a1d: $91
    dec h                                         ; $5a1e: $25

jr_0b0_5a1f:
    dec b                                         ; $5a1f: $05
    ld [de], a                                    ; $5a20: $12
    ret                                           ; $5a21: $c9


    db $10                                        ; $5a22: $10
    ld a, [$de5a]                                 ; $5a23: $fa $5a $de
    ld a, e                                       ; $5a26: $7b
    ld c, h                                       ; $5a27: $4c
    dec h                                         ; $5a28: $25
    ld c, e                                       ; $5a29: $4b
    inc b                                         ; $5a2a: $04
    rst $30                                       ; $5a2b: $f7
    dec h                                         ; $5a2c: $25
    db $fc                                        ; $5a2d: $fc
    ld c, [hl]                                    ; $5a2e: $4e
    sub l                                         ; $5a2f: $95
    ld [$0000], sp                                ; $5a30: $08 $00 $00
    sbc h                                         ; $5a33: $9c
    ld a, [hl-]                                   ; $5a34: $3a
    rst $38                                       ; $5a35: $ff
    ld a, a                                       ; $5a36: $7f
    ld l, e                                       ; $5a37: $6b
    inc b                                         ; $5a38: $04
    nop                                           ; $5a39: $00
    nop                                           ; $5a3a: $00
    ld hl, $0048                                  ; $5a3b: $21 $48 $00
    inc e                                         ; $5a3e: $1c
    ld h, h                                       ; $5a3f: $64
    ld h, c                                       ; $5a40: $61
    ld b, e                                       ; $5a41: $43
    db $10                                        ; $5a42: $10
    add sp, $7e                                   ; $5a43: $e8 $7e
    ld bc, $3d50                                  ; $5a45: $01 $50 $3d
    ld e, e                                       ; $5a48: $5b
    ld l, e                                       ; $5a49: $6b
    inc b                                         ; $5a4a: $04
    cp [hl]                                       ; $5a4b: $be
    ld a, $58                                     ; $5a4c: $3e $58
    dec h                                         ; $5a4e: $25
    sbc a                                         ; $5a4f: $9f

jr_0b0_5a50:
    ld h, e                                       ; $5a50: $63
    dec h                                         ; $5a51: $25
    ld [de], a                                    ; $5a52: $12
    rst $38                                       ; $5a53: $ff
    ld b, [hl]                                    ; $5a54: $46
    ld l, d                                       ; $5a55: $6a
    inc b                                         ; $5a56: $04
    sub c                                         ; $5a57: $91
    dec h                                         ; $5a58: $25
    and a                                         ; $5a59: $a7
    jr nc, @-$16                                  ; $5a5a: $30 $e8

    ld a, [hl]                                    ; $5a5c: $7e
    reti                                          ; $5a5d: $d9


    ld c, [hl]                                    ; $5a5e: $4e
    cp l                                          ; $5a5f: $bd
    ld a, e                                       ; $5a60: $7b
    jp z, $dd0c                                   ; $5a61: $ca $0c $dd

    ld b, d                                       ; $5a64: $42
    sub c                                         ; $5a65: $91
    dec h                                         ; $5a66: $25
    sbc a                                         ; $5a67: $9f

jr_0b0_5a68:
    ld h, e                                       ; $5a68: $63
    dec h                                         ; $5a69: $25
    nop                                           ; $5a6a: $00
    ld d, a                                       ; $5a6b: $57
    dec h                                         ; $5a6c: $25
    ld b, l                                       ; $5a6d: $45
    ld d, $ff                                     ; $5a6e: $16 $ff
    ld a, a                                       ; $5a70: $7f
    nop                                           ; $5a71: $00
    nop                                           ; $5a72: $00
    dec bc                                        ; $5a73: $0b
    ld a, a                                       ; $5a74: $7f
    rst $38                                       ; $5a75: $ff
    ld a, a                                       ; $5a76: $7f

jr_0b0_5a77:
    nop                                           ; $5a77: $00
    jr nz, jr_0b0_5a7a                            ; $5a78: $20 $00

jr_0b0_5a7a:
    nop                                           ; $5a7a: $00
    rst $38                                       ; $5a7b: $ff
    ld a, a                                       ; $5a7c: $7f
    nop                                           ; $5a7d: $00
    jr nz, jr_0b0_5a81                            ; $5a7e: $20 $01

    ld d, b                                       ; $5a80: $50

jr_0b0_5a81:
    add sp, $04                                   ; $5a81: $e8 $04
    ld e, d                                       ; $5a83: $5a
    ld [hl], $f5                                  ; $5a84: $36 $f5
    inc e                                         ; $5a86: $1c
    sbc a                                         ; $5a87: $9f
    ld h, e                                       ; $5a88: $63
    add $18                                       ; $5a89: $c6 $18
    rst $38                                       ; $5a8b: $ff
    ld e, a                                       ; $5a8c: $5f
    or [hl]                                       ; $5a8d: $b6
    inc d                                         ; $5a8e: $14
    ld c, l                                       ; $5a8f: $4d
    ld [$5c85], sp                                ; $5a90: $08 $85 $5c
    or [hl]                                       ; $5a93: $b6
    ld h, d                                       ; $5a94: $62
    ld l, [hl]                                    ; $5a95: $6e
    add hl, hl                                    ; $5a96: $29
    rst $38                                       ; $5a97: $ff
    ld b, [hl]                                    ; $5a98: $46
    ld h, a                                       ; $5a99: $67
    nop                                           ; $5a9a: $00
    jr c, jr_0b0_5acb                             ; $5a9b: $38 $2e

    adc a                                         ; $5a9d: $8f
    add hl, hl                                    ; $5a9e: $29
    sbc $42                                       ; $5a9f: $de $42
    ld bc, $4600                                  ; $5aa1: $01 $00 $46
    ld d, $4e                                     ; $5aa4: $16 $4e
    ld [$1cf5], sp                                ; $5aa6: $08 $f5 $1c
    nop                                           ; $5aa9: $00
    jr nz, jr_0b0_5af2                            ; $5aaa: $20 $46

    ld [hl], d                                    ; $5aac: $72
    rst $38                                       ; $5aad: $ff
    ld a, a                                       ; $5aae: $7f
    ld h, [hl]                                    ; $5aaf: $66
    ld a, [de]                                    ; $5ab0: $1a
    nop                                           ; $5ab1: $00
    nop                                           ; $5ab2: $00
    rst $38                                       ; $5ab3: $ff
    ld a, a                                       ; $5ab4: $7f
    ld h, [hl]                                    ; $5ab5: $66
    ld a, [de]                                    ; $5ab6: $1a
    nop                                           ; $5ab7: $00
    jr nz, jr_0b0_5b20                            ; $5ab8: $20 $66

    ld a, [de]                                    ; $5aba: $1a
    or h                                          ; $5abb: $b4
    ld hl, $046b                                  ; $5abc: $21 $6b $04
    ld a, e                                       ; $5abf: $7b
    ld a, [hl-]                                   ; $5ac0: $3a
    ld l, b                                       ; $5ac1: $68
    inc c                                         ; $5ac2: $0c
    jr @+$65                                      ; $5ac3: $18 $63

    ld d, e                                       ; $5ac5: $53
    add hl, hl                                    ; $5ac6: $29
    rst $18                                       ; $5ac7: $df
    ld d, e                                       ; $5ac8: $53
    nop                                           ; $5ac9: $00
    nop                                           ; $5aca: $00

jr_0b0_5acb:
    ld a, [hl-]                                   ; $5acb: $3a
    inc h                                         ; $5acc: $24
    or l                                          ; $5acd: $b5
    ld d, [hl]                                    ; $5ace: $56
    ld [$2121], sp                                ; $5acf: $08 $21 $21
    inc b                                         ; $5ad2: $04
    ld d, l                                       ; $5ad3: $55
    ld a, [hl-]                                   ; $5ad4: $3a
    xor c                                         ; $5ad5: $a9
    ld [$0c74], sp                                ; $5ad6: $08 $74 $0c
    ld a, [hl+]                                   ; $5ad9: $2a
    ld [$1a66], sp                                ; $5ada: $08 $66 $1a
    add sp, $7e                                   ; $5add: $e8 $7e
    ld [hl], e                                    ; $5adf: $73
    inc c                                         ; $5ae0: $0c
    nop                                           ; $5ae1: $00
    nop                                           ; $5ae2: $00
    ld h, [hl]                                    ; $5ae3: $66
    ld a, [de]                                    ; $5ae4: $1a
    cpl                                           ; $5ae5: $2f
    ld a, a                                       ; $5ae6: $7f
    nop                                           ; $5ae7: $00
    jr nz, jr_0b0_5aea                            ; $5ae8: $20 $00

jr_0b0_5aea:
    nop                                           ; $5aea: $00
    add sp, $7e                                   ; $5aeb: $e8 $7e
    rst $38                                       ; $5aed: $ff
    ld a, a                                       ; $5aee: $7f
    add a                                         ; $5aef: $87
    ld e, $67                                     ; $5af0: $1e $67

jr_0b0_5af2:
    nop                                           ; $5af2: $00
    add a                                         ; $5af3: $87
    ld e, $4d                                     ; $5af4: $1e $4d
    ld [$10b3], sp                                ; $5af6: $08 $b3 $10
    dec h                                         ; $5af9: $25
    inc b                                         ; $5afa: $04
    or $5a                                        ; $5afb: $f6 $5a
    cp a                                          ; $5afd: $bf
    ld l, $cb                                     ; $5afe: $2e $cb
    add hl, sp                                    ; $5b00: $39
    ld [$9521], sp                                ; $5b01: $08 $21 $95
    ld d, d                                       ; $5b04: $52
    inc sp                                        ; $5b05: $33
    inc d                                         ; $5b06: $14
    sbc a                                         ; $5b07: $9f
    ld c, l                                       ; $5b08: $4d
    ld [hl+], a                                   ; $5b09: $22
    inc b                                         ; $5b0a: $04
    sbc a                                         ; $5b0b: $9f
    ld a, [hl+]                                   ; $5b0c: $2a
    ld [$7414], a                                 ; $5b0d: $ea $14 $74
    inc c                                         ; $5b10: $0c
    nop                                           ; $5b11: $00
    nop                                           ; $5b12: $00
    ld b, [hl]                                    ; $5b13: $46
    ld [hl], d                                    ; $5b14: $72
    add a                                         ; $5b15: $87
    ld e, $50                                     ; $5b16: $1e $50
    ld [$0000], sp                                ; $5b18: $08 $00 $00
    dec bc                                        ; $5b1b: $0b
    ld a, a                                       ; $5b1c: $7f
    rst $38                                       ; $5b1d: $ff
    ld a, a                                       ; $5b1e: $7f
    nop                                           ; $5b1f: $00

jr_0b0_5b20:
    jr nz, jr_0b0_5b22                            ; $5b20: $20 $00

jr_0b0_5b22:
    nop                                           ; $5b22: $00
    add sp, $7e                                   ; $5b23: $e8 $7e
    rst $38                                       ; $5b25: $ff
    ld a, a                                       ; $5b26: $7f
    ld bc, $0044                                  ; $5b27: $01 $44 $00
    nop                                           ; $5b2a: $00
    add a                                         ; $5b2b: $87
    ld e, $4e                                     ; $5b2c: $1e $4e
    ld [$0c74], sp                                ; $5b2e: $08 $74 $0c
    ld c, l                                       ; $5b31: $4d
    ld [$7aa7], sp                                ; $5b32: $08 $a7 $7a
    cp e                                          ; $5b35: $bb
    ld a, a                                       ; $5b36: $7f
    call c, $0815                                 ; $5b37: $dc $15 $08
    ld hl, $7aa7                                  ; $5b3a: $21 $a7 $7a
    or $62                                        ; $5b3d: $f6 $62
    ld [hl-], a                                   ; $5b3f: $32
    inc d                                         ; $5b40: $14
    add h                                         ; $5b41: $84
    db $10                                        ; $5b42: $10
    rra                                           ; $5b43: $1f
    ld e, $2c                                     ; $5b44: $1e $2c
    inc b                                         ; $5b46: $04
    ld d, d                                       ; $5b47: $52
    ld [$0427], sp                                ; $5b48: $08 $27 $04
    and l                                         ; $5b4b: $a5
    ld h, l                                       ; $5b4c: $65
    and a                                         ; $5b4d: $a7
    ld e, $01                                     ; $5b4e: $1e $01

Call_0b0_5b50:
    ld b, h                                       ; $5b50: $44
    nop                                           ; $5b51: $00
    inc e                                         ; $5b52: $1c
    push bc                                       ; $5b53: $c5
    ld h, l                                       ; $5b54: $65
    rst $38                                       ; $5b55: $ff
    ld a, a                                       ; $5b56: $7f
    ret z                                         ; $5b57: $c8

    ld a, d                                       ; $5b58: $7a
    nop                                           ; $5b59: $00
    nop                                           ; $5b5a: $00
    add sp, $7e                                   ; $5b5b: $e8 $7e
    ld bc, $0044                                  ; $5b5d: $01 $44 $00
    jr nz, jr_0b0_5b62                            ; $5b60: $20 $00

jr_0b0_5b62:
    nop                                           ; $5b62: $00
    xor b                                         ; $5b63: $a8

jr_0b0_5b64:
    ld [hl+], a                                   ; $5b64: $22
    inc l                                         ; $5b65: $2c
    inc b                                         ; $5b66: $04
    ld d, e                                       ; $5b67: $53
    ld [$4401], sp                                ; $5b68: $08 $01 $44
    cp e                                          ; $5b6b: $bb
    ld a, a                                       ; $5b6c: $7f
    and a                                         ; $5b6d: $a7
    ld a, d                                       ; $5b6e: $7a
    ld b, h                                       ; $5b6f: $44
    ld e, l                                       ; $5b70: $5d
    ld [$c721], sp                                ; $5b71: $08 $21 $c7
    ld a, d                                       ; $5b74: $7a
    ld a, b                                       ; $5b75: $78
    ld [hl], e                                    ; $5b76: $73
    rst $28                                       ; $5b77: $ef
    dec a                                         ; $5b78: $3d
    add h                                         ; $5b79: $84
    db $10                                        ; $5b7a: $10
    add sp, $7e                                   ; $5b7b: $e8 $7e
    ld a, e                                       ; $5b7d: $7b
    dec c                                         ; $5b7e: $0d
    ld d, b                                       ; $5b7f: $50
    ld [$0001], sp                                ; $5b80: $08 $01 $00
    xor b                                         ; $5b83: $a8
    ld [hl+], a                                   ; $5b84: $22
    add sp, $7e                                   ; $5b85: $e8 $7e
    ld bc, $0034                                  ; $5b87: $01 $34 $00
    nop                                           ; $5b8a: $00
    rst $38                                       ; $5b8b: $ff
    ld a, a                                       ; $5b8c: $7f
    and d                                         ; $5b8d: $a2
    ld d, h                                       ; $5b8e: $54
    nop                                           ; $5b8f: $00
    jr nz, jr_0b0_5b92                            ; $5b90: $20 $00

jr_0b0_5b92:
    nop                                           ; $5b92: $00
    ld bc, $c844                                  ; $5b93: $01 $44 $c8
    ld h, $00                                     ; $5b96: $26 $00
    jr nz, jr_0b0_5b9a                            ; $5b98: $20 $00

jr_0b0_5b9a:
    jr z, jr_0b0_5b64                             ; $5b9a: $28 $c8

    ld [hl+], a                                   ; $5b9c: $22
    dec hl                                        ; $5b9d: $2b
    inc b                                         ; $5b9e: $04
    ld d, c                                       ; $5b9f: $51
    ld [$4401], sp                                ; $5ba0: $08 $01 $44
    add a                                         ; $5ba3: $87
    halt                                          ; $5ba4: $76
    cp c                                          ; $5ba5: $b9
    ld a, a                                       ; $5ba6: $7f
    ld b, h                                       ; $5ba7: $44
    ld e, l                                       ; $5ba8: $5d
    add h                                         ; $5ba9: $84
    db $10                                        ; $5baa: $10
    and a                                         ; $5bab: $a7
    ld a, d                                       ; $5bac: $7a
    or l                                          ; $5bad: $b5
    ld d, [hl]                                    ; $5bae: $56
    add hl, bc                                    ; $5baf: $09
    dec h                                         ; $5bb0: $25
    ld h, $04                                     ; $5bb1: $26 $04
    jp hl                                         ; $5bb3: $e9


    ld a, d                                       ; $5bb4: $7a
    rst $38                                       ; $5bb5: $ff
    ld a, a                                       ; $5bb6: $7f
    ret                                           ; $5bb7: $c9


    ld h, $61                                     ; $5bb8: $26 $61
    inc [hl]                                      ; $5bba: $34
    jp hl                                         ; $5bbb: $e9


    ld a, [hl]                                    ; $5bbc: $7e
    ret z                                         ; $5bbd: $c8

    ld h, $ff                                     ; $5bbe: $26 $ff
    ld a, a                                       ; $5bc0: $7f
    nop                                           ; $5bc1: $00
    nop                                           ; $5bc2: $00
    rst $38                                       ; $5bc3: $ff
    ld a, a                                       ; $5bc4: $7f
    ret                                           ; $5bc5: $c9


    ld h, $00                                     ; $5bc6: $26 $00
    jr nz, jr_0b0_5bca                            ; $5bc8: $20 $00

jr_0b0_5bca:
    db $10                                        ; $5bca: $10
    add sp, $7e                                   ; $5bcb: $e8 $7e
    rst $38                                       ; $5bcd: $ff
    ld a, a                                       ; $5bce: $7f
    ret                                           ; $5bcf: $c9


    ld h, $00                                     ; $5bd0: $26 $00
    db $10                                        ; $5bd2: $10
    add sp, $7e                                   ; $5bd3: $e8 $7e
    ld c, a                                       ; $5bd5: $4f
    ld [$26c9], sp                                ; $5bd6: $08 $c9 $26
    ld bc, $a744                                  ; $5bd9: $01 $44 $a7
    ld a, d                                       ; $5bdc: $7a
    ld h, h                                       ; $5bdd: $64
    ld h, c                                       ; $5bde: $61
    sub a                                         ; $5bdf: $97
    ld a, a                                       ; $5be0: $7f
    ld b, d                                       ; $5be1: $42
    ld [$7246], sp                                ; $5be2: $08 $46 $72
    ld d, d                                       ; $5be5: $52
    ld c, d                                       ; $5be6: $4a
    ld bc, $8244                                  ; $5be7: $01 $44 $82
    ld c, h                                       ; $5bea: $4c
    jp hl                                         ; $5beb: $e9


    ld a, [hl+]                                   ; $5bec: $2a
    ld h, a                                       ; $5bed: $67
    halt                                          ; $5bee: $76
    ld h, h                                       ; $5bef: $64
    ld h, c                                       ; $5bf0: $61
    nop                                           ; $5bf1: $00
    nop                                           ; $5bf2: $00
    push bc                                       ; $5bf3: $c5
    dec e                                         ; $5bf4: $1d
    ld bc, $c944                                  ; $5bf5: $01 $44 $c9
    ld h, $00                                     ; $5bf8: $26 $00
    nop                                           ; $5bfa: $00

jr_0b0_5bfb:
    jp hl                                         ; $5bfb: $e9


    ld h, $ff                                     ; $5bfc: $26 $ff
    ld a, a                                       ; $5bfe: $7f
    nop                                           ; $5bff: $00
    jr nz, jr_0b0_5c02                            ; $5c00: $20 $00

jr_0b0_5c02:
    nop                                           ; $5c02: $00
    ld b, $6e                                     ; $5c03: $06 $6e
    rst $38                                       ; $5c05: $ff
    ld a, a                                       ; $5c06: $7f
    nop                                           ; $5c07: $00
    jr nz, jr_0b0_5c0e                            ; $5c08: $20 $04

    inc e                                         ; $5c0a: $1c
    ld b, a                                       ; $5c0b: $47
    ld [hl], d                                    ; $5c0c: $72
    rst $38                                       ; $5c0d: $ff

jr_0b0_5c0e:
    ld a, a                                       ; $5c0e: $7f
    jp hl                                         ; $5c0f: $e9


    ld a, [hl+]                                   ; $5c10: $2a
    nop                                           ; $5c11: $00
    inc d                                         ; $5c12: $14

jr_0b0_5c13:
    ld b, h                                       ; $5c13: $44
    ld e, l                                       ; $5c14: $5d

jr_0b0_5c15:
    ld hl, $8744                                  ; $5c15: $21 $44 $87
    halt                                          ; $5c18: $76
    ld hl, $1404                                  ; $5c19: $21 $04 $14
    inc a                                         ; $5c1c: $3c
    add d                                         ; $5c1d: $82
    ld c, h                                       ; $5c1e: $4c
    ld hl, sp+$5e                                 ; $5c1f: $f8 $5e
    nop                                           ; $5c21: $00
    nop                                           ; $5c22: $00
    jp hl                                         ; $5c23: $e9


    ld a, [hl+]                                   ; $5c24: $2a
    ld b, d                                       ; $5c25: $42
    ld c, h                                       ; $5c26: $4c
    ld d, a                                       ; $5c27: $57
    ld b, b                                       ; $5c28: $40
    inc l                                         ; $5c29: $2c
    jr nc, jr_0b0_5c15                            ; $5c2a: $30 $e9

    ld a, [hl+]                                   ; $5c2c: $2a
    cp a                                          ; $5c2d: $bf
    ld a, [hl]                                    ; $5c2e: $7e
    add hl, bc                                    ; $5c2f: $09
    dec hl                                        ; $5c30: $2b
    nop                                           ; $5c31: $00
    nop                                           ; $5c32: $00
    add hl, bc                                    ; $5c33: $09
    dec hl                                        ; $5c34: $2b
    rst $38                                       ; $5c35: $ff
    ld a, a                                       ; $5c36: $7f

jr_0b0_5c37:
    nop                                           ; $5c37: $00
    jr nz, jr_0b0_5c3a                            ; $5c38: $20 $00

jr_0b0_5c3a:
    nop                                           ; $5c3a: $00
    add d                                         ; $5c3b: $82
    ld d, h                                       ; $5c3c: $54
    inc l                                         ; $5c3d: $2c
    jr nc, jr_0b0_5c40                            ; $5c3e: $30 $00

jr_0b0_5c40:
    jr nz, jr_0b0_5c48                            ; $5c40: $20 $06

    jr nc, jr_0b0_5ca3                            ; $5c42: $30 $5f

    ld a, h                                       ; $5c44: $7c
    adc b                                         ; $5c45: $88
    ld c, d                                       ; $5c46: $4a
    cp a                                          ; $5c47: $bf

jr_0b0_5c48:
    ld a, [hl]                                    ; $5c48: $7e
    nop                                           ; $5c49: $00
    nop                                           ; $5c4a: $00
    nop                                           ; $5c4b: $00
    jr z, jr_0b0_5c4f                             ; $5c4c: $28 $01

    ld b, h                                       ; $5c4e: $44

jr_0b0_5c4f:
    inc l                                         ; $5c4f: $2c
    jr nc, jr_0b0_5c52                            ; $5c50: $30 $00

jr_0b0_5c52:
    inc d                                         ; $5c52: $14
    add hl, sp                                    ; $5c53: $39
    ld c, b                                       ; $5c54: $48
    adc l                                         ; $5c55: $8d
    jr @+$3e                                      ; $5c56: $18 $3c

    ld [hl], h                                    ; $5c58: $74
    db $e4                                        ; $5c59: $e4
    inc d                                         ; $5c5a: $14
    rrca                                          ; $5c5b: $0f
    ld h, b                                       ; $5c5c: $60
    db $10                                        ; $5c5d: $10
    jr nc, jr_0b0_5bfb                            ; $5c5e: $30 $9b

    ld a, c                                       ; $5c60: $79
    ld a, [hl+]                                   ; $5c61: $2a
    jr z, jr_0b0_5cc3                             ; $5c62: $28 $5f

    ld a, h                                       ; $5c64: $7c
    cp a                                          ; $5c65: $bf
    ld a, [hl]                                    ; $5c66: $7e
    ld a, [bc]                                    ; $5c67: $0a
    cpl                                           ; $5c68: $2f
    nop                                           ; $5c69: $00
    nop                                           ; $5c6a: $00
    ld e, a                                       ; $5c6b: $5f
    ld a, a                                       ; $5c6c: $7f
    inc l                                         ; $5c6d: $2c
    jr nc, jr_0b0_5c70                            ; $5c6e: $30 $00

jr_0b0_5c70:
    jr nz, jr_0b0_5c72                            ; $5c70: $20 $00

jr_0b0_5c72:
    jr jr_0b0_5c13                                ; $5c72: $18 $9f

    ld a, h                                       ; $5c74: $7c
    inc l                                         ; $5c75: $2c
    jr nc, jr_0b0_5c37                            ; $5c76: $30 $bf

    ld a, [hl]                                    ; $5c78: $7e
    nop                                           ; $5c79: $00
    nop                                           ; $5c7a: $00
    ld e, a                                       ; $5c7b: $5f
    ld a, h                                       ; $5c7c: $7c
    cp a                                          ; $5c7d: $bf
    ld a, [hl]                                    ; $5c7e: $7e
    inc l                                         ; $5c7f: $2c
    jr nc, jr_0b0_5c82                            ; $5c80: $30 $00

jr_0b0_5c82:
    inc b                                         ; $5c82: $04
    dec hl                                        ; $5c83: $2b
    inc [hl]                                      ; $5c84: $34
    db $10                                        ; $5c85: $10
    ld h, b                                       ; $5c86: $60
    ld e, a                                       ; $5c87: $5f
    ld a, h                                       ; $5c88: $7c
    add hl, bc                                    ; $5c89: $09
    inc e                                         ; $5c8a: $1c
    rla                                           ; $5c8b: $17
    ld e, h                                       ; $5c8c: $5c
    ld a, [hl-]                                   ; $5c8d: $3a
    ld [bc], a                                    ; $5c8e: $02
    cp a                                          ; $5c8f: $bf
    ld a, [hl]                                    ; $5c90: $7e
    ld a, [hl+]                                   ; $5c91: $2a
    inc l                                         ; $5c92: $2c
    ld a, $03                                     ; $5c93: $3e $03
    db $10                                        ; $5c95: $10
    ld h, b                                       ; $5c96: $60
    ld a, [de]                                    ; $5c97: $1a
    ld a, d                                       ; $5c98: $7a
    ld h, d                                       ; $5c99: $62
    inc c                                         ; $5c9a: $0c
    ld e, a                                       ; $5c9b: $5f
    ld a, h                                       ; $5c9c: $7c
    cp a                                          ; $5c9d: $bf
    ld a, [hl]                                    ; $5c9e: $7e
    inc l                                         ; $5c9f: $2c
    jr nc, jr_0b0_5ca2                            ; $5ca0: $30 $00

jr_0b0_5ca2:
    nop                                           ; $5ca2: $00

jr_0b0_5ca3:
    ld e, a                                       ; $5ca3: $5f
    ld a, h                                       ; $5ca4: $7c
    cp a                                          ; $5ca5: $bf
    ld a, [hl]                                    ; $5ca6: $7e
    nop                                           ; $5ca7: $00
    jr nz, jr_0b0_5caa                            ; $5ca8: $20 $00

jr_0b0_5caa:
    nop                                           ; $5caa: $00
    rra                                           ; $5cab: $1f
    ld a, h                                       ; $5cac: $7c
    inc l                                         ; $5cad: $2c
    jr nc, jr_0b0_5cb0                            ; $5cae: $30 $00

jr_0b0_5cb0:
    jr nz, jr_0b0_5cb2                            ; $5cb0: $20 $00

jr_0b0_5cb2:
    nop                                           ; $5cb2: $00
    sbc a                                         ; $5cb3: $9f
    ld [bc], a                                    ; $5cb4: $02
    rst $18                                       ; $5cb5: $df
    ld a, h                                       ; $5cb6: $7c
    inc l                                         ; $5cb7: $2c
    jr nc, jr_0b0_5cda                            ; $5cb8: $30 $20

    inc b                                         ; $5cba: $04
    cp $02                                        ; $5cbb: $fe $02
    db $10                                        ; $5cbd: $10
    ld h, b                                       ; $5cbe: $60
    ld a, [bc]                                    ; $5cbf: $0a
    inc l                                         ; $5cc0: $2c
    ld h, $1c                                     ; $5cc1: $26 $1c

jr_0b0_5cc3:
    cp $03                                        ; $5cc3: $fe $03
    rra                                           ; $5cc5: $1f
    ld a, h                                       ; $5cc6: $7c
    cp a                                          ; $5cc7: $bf
    ld a, [hl]                                    ; $5cc8: $7e
    ld b, c                                       ; $5cc9: $41
    ld [$029f], sp                                ; $5cca: $08 $9f $02
    db $10                                        ; $5ccd: $10
    ld h, b                                       ; $5cce: $60
    inc l                                         ; $5ccf: $2c
    jr nc, jr_0b0_5d1a                            ; $5cd0: $30 $48

    inc h                                         ; $5cd2: $24
    rra                                           ; $5cd3: $1f
    ld [bc], a                                    ; $5cd4: $02
    rra                                           ; $5cd5: $1f
    ld a, h                                       ; $5cd6: $7c
    rst $38                                       ; $5cd7: $ff
    inc bc                                        ; $5cd8: $03
    nop                                           ; $5cd9: $00

jr_0b0_5cda:
    nop                                           ; $5cda: $00
    rra                                           ; $5cdb: $1f
    ld a, h                                       ; $5cdc: $7c
    inc l                                         ; $5cdd: $2c
    jr nc, jr_0b0_5ce0                            ; $5cde: $30 $00

jr_0b0_5ce0:
    jr nz, jr_0b0_5ce2                            ; $5ce0: $20 $00

jr_0b0_5ce2:
    nop                                           ; $5ce2: $00
    inc l                                         ; $5ce3: $2c
    jr nc, jr_0b0_5ce6                            ; $5ce4: $30 $00

jr_0b0_5ce6:
    jr nz, jr_0b0_5cf2                            ; $5ce6: $20 $0a

    inc l                                         ; $5ce8: $2c
    nop                                           ; $5ce9: $00
    nop                                           ; $5cea: $00
    rst $38                                       ; $5ceb: $ff
    ld [bc], a                                    ; $5cec: $02
    rra                                           ; $5ced: $1f
    ld a, h                                       ; $5cee: $7c
    inc l                                         ; $5cef: $2c
    jr nc, jr_0b0_5cf8                            ; $5cf0: $30 $06

jr_0b0_5cf2:
    jr jr_0b0_5d06                                ; $5cf2: $18 $12

    ld h, h                                       ; $5cf4: $64
    cp a                                          ; $5cf5: $bf
    ld a, [hl]                                    ; $5cf6: $7e
    sbc a                                         ; $5cf7: $9f

jr_0b0_5cf8:
    ld [bc], a                                    ; $5cf8: $02
    rra                                           ; $5cf9: $1f
    ld a, h                                       ; $5cfa: $7c
    nop                                           ; $5cfb: $00
    ld d, d                                       ; $5cfc: $52
    ld a, $03                                     ; $5cfd: $3e $03
    jr z, @+$26                                   ; $5cff: $28 $24

    ld h, d                                       ; $5d01: $62
    inc c                                         ; $5d02: $0c
    rra                                           ; $5d03: $1f
    ld a, [hl]                                    ; $5d04: $7e
    db $10                                        ; $5d05: $10

jr_0b0_5d06:
    ld h, b                                       ; $5d06: $60
    ld [$2028], sp                                ; $5d07: $08 $28 $20
    nop                                           ; $5d0a: $00
    sbc a                                         ; $5d0b: $9f
    ld bc, $7ebf                                  ; $5d0c: $01 $bf $7e
    inc l                                         ; $5d0f: $2c
    jr nc, jr_0b0_5d12                            ; $5d10: $30 $00

jr_0b0_5d12:
    nop                                           ; $5d12: $00
    inc l                                         ; $5d13: $2c
    jr nc, jr_0b0_5d16                            ; $5d14: $30 $00

jr_0b0_5d16:
    jr nz, jr_0b0_5d44                            ; $5d16: $20 $2c

    jr nc, jr_0b0_5d1a                            ; $5d18: $30 $00

jr_0b0_5d1a:
    nop                                           ; $5d1a: $00
    cp a                                          ; $5d1b: $bf
    ld a, [hl]                                    ; $5d1c: $7e
    inc l                                         ; $5d1d: $2c
    jr nc, jr_0b0_5d20                            ; $5d1e: $30 $00

jr_0b0_5d20:
    jr nz, jr_0b0_5d22                            ; $5d20: $20 $00

jr_0b0_5d22:
    nop                                           ; $5d22: $00
    ccf                                           ; $5d23: $3f
    ld bc, $7ebf                                  ; $5d24: $01 $bf $7e
    inc l                                         ; $5d27: $2c
    jr nc, jr_0b0_5d2a                            ; $5d28: $30 $00

jr_0b0_5d2a:
    nop                                           ; $5d2a: $00
    dec bc                                        ; $5d2b: $0b
    ld l, h                                       ; $5d2c: $6c
    ccf                                           ; $5d2d: $3f
    ld a, h                                       ; $5d2e: $7c
    ld b, $28                                     ; $5d2f: $06 $28
    ld a, [hl+]                                   ; $5d31: $2a
    jr z, jr_0b0_5d79                             ; $5d32: $28 $45

    ld a, h                                       ; $5d34: $7c
    call nz, Call_000_1f76                        ; $5d35: $c4 $76 $1f
    ld a, h                                       ; $5d38: $7c
    rlca                                          ; $5d39: $07
    inc h                                         ; $5d3a: $24
    ccf                                           ; $5d3b: $3f
    ld a, h                                       ; $5d3c: $7c
    and c                                         ; $5d3d: $a1
    halt                                          ; $5d3e: $76
    cp a                                          ; $5d3f: $bf
    ld a, [hl]                                    ; $5d40: $7e
    ld h, d                                       ; $5d41: $62
    inc c                                         ; $5d42: $0c
    ld a, [hl]                                    ; $5d43: $7e

jr_0b0_5d44:
    ld a, h                                       ; $5d44: $7c
    inc l                                         ; $5d45: $2c
    jr nc, jr_0b0_5d67                            ; $5d46: $30 $1f

    ld a, h                                       ; $5d48: $7c
    nop                                           ; $5d49: $00
    jr nz, jr_0b0_5d6b                            ; $5d4a: $20 $1f

    ld a, h                                       ; $5d4c: $7c
    cp a                                          ; $5d4d: $bf
    ld a, [hl]                                    ; $5d4e: $7e
    rra                                           ; $5d4f: $1f
    ld a, h                                       ; $5d50: $7c
    nop                                           ; $5d51: $00
    jr nz, @-$5f                                  ; $5d52: $20 $9f

    ld a, h                                       ; $5d54: $7c
    cp a                                          ; $5d55: $bf
    ld a, [hl]                                    ; $5d56: $7e
    inc l                                         ; $5d57: $2c
    jr nc, jr_0b0_5d5a                            ; $5d58: $30 $00

jr_0b0_5d5a:
    nop                                           ; $5d5a: $00
    rra                                           ; $5d5b: $1f

jr_0b0_5d5c:
    ld a, h                                       ; $5d5c: $7c
    cp a                                          ; $5d5d: $bf
    ld a, [hl]                                    ; $5d5e: $7e
    inc l                                         ; $5d5f: $2c
    jr nc, jr_0b0_5d68                            ; $5d60: $30 $06

    jr jr_0b0_5d5c                                ; $5d62: $18 $f8

    ld a, l                                       ; $5d64: $7d
    rst $38                                       ; $5d65: $ff
    inc bc                                        ; $5d66: $03

jr_0b0_5d67:
    dec b                                         ; $5d67: $05

jr_0b0_5d68:
    ld a, h                                       ; $5d68: $7c
    jr z, @+$22                                   ; $5d69: $28 $20

jr_0b0_5d6b:
    sbc a                                         ; $5d6b: $9f
    ld [bc], a                                    ; $5d6c: $02
    and c                                         ; $5d6d: $a1
    halt                                          ; $5d6e: $76
    ld h, l                                       ; $5d6f: $65
    ld a, h                                       ; $5d70: $7c
    dec b                                         ; $5d71: $05
    inc h                                         ; $5d72: $24
    ccf                                           ; $5d73: $3f
    inc bc                                        ; $5d74: $03

jr_0b0_5d75:
    ld [bc], a                                    ; $5d75: $02
    halt                                          ; $5d76: $76
    cp a                                          ; $5d77: $bf
    ld a, [hl]                                    ; $5d78: $7e

jr_0b0_5d79:
    ld h, d                                       ; $5d79: $62
    inc c                                         ; $5d7a: $0c
    ccf                                           ; $5d7b: $3f
    ld a, h                                       ; $5d7c: $7c
    cp a                                          ; $5d7d: $bf
    ld a, [hl]                                    ; $5d7e: $7e
    inc l                                         ; $5d7f: $2c
    jr nc, jr_0b0_5d82                            ; $5d80: $30 $00

jr_0b0_5d82:
    jr nz, @+$21                                  ; $5d82: $20 $1f

    ld a, h                                       ; $5d84: $7c
    cp a                                          ; $5d85: $bf
    ld a, [hl]                                    ; $5d86: $7e
    sbc a                                         ; $5d87: $9f
    ld a, h                                       ; $5d88: $7c
    nop                                           ; $5d89: $00
    jr nz, jr_0b0_5dab                            ; $5d8a: $20 $1f

    ld a, h                                       ; $5d8c: $7c
    inc l                                         ; $5d8d: $2c
    jr nc, jr_0b0_5d95                            ; $5d8e: $30 $05

    ld a, h                                       ; $5d90: $7c
    nop                                           ; $5d91: $00
    nop                                           ; $5d92: $00
    rra                                           ; $5d93: $1f
    ld a, h                                       ; $5d94: $7c

jr_0b0_5d95:
    inc l                                         ; $5d95: $2c
    jr nc, @-$5f                                  ; $5d96: $30 $9f

    ld a, h                                       ; $5d98: $7c
    ld [bc], a                                    ; $5d99: $02
    inc d                                         ; $5d9a: $14
    inc hl                                        ; $5d9b: $23
    ld a, c                                       ; $5d9c: $79

jr_0b0_5d9d:
    ld e, a                                       ; $5d9d: $5f
    ld a, l                                       ; $5d9e: $7d
    sbc a                                         ; $5d9f: $9f
    ld [bc], a                                    ; $5da0: $02
    inc bc                                        ; $5da1: $03
    ld [$76a1], sp                                ; $5da2: $08 $a1 $76
    ld h, l                                       ; $5da5: $65
    ld a, h                                       ; $5da6: $7c
    inc l                                         ; $5da7: $2c
    jr nc, jr_0b0_5db0                            ; $5da8: $30 $06

    inc h                                         ; $5daa: $24

jr_0b0_5dab:
    add hl, bc                                    ; $5dab: $09
    ld a, e                                       ; $5dac: $7b
    ld h, l                                       ; $5dad: $65
    ld a, h                                       ; $5dae: $7c
    rra                                           ; $5daf: $1f

jr_0b0_5db0:
    ld a, h                                       ; $5db0: $7c
    ld b, c                                       ; $5db1: $41
    ld [$7438], sp                                ; $5db2: $08 $38 $74
    cp a                                          ; $5db5: $bf
    ld a, [hl]                                    ; $5db6: $7e
    inc l                                         ; $5db7: $2c
    jr nc, jr_0b0_5dba                            ; $5db8: $30 $00

jr_0b0_5dba:
    jr nz, @+$21                                  ; $5dba: $20 $1f

    ld a, h                                       ; $5dbc: $7c
    inc l                                         ; $5dbd: $2c
    jr nc, jr_0b0_5dec                            ; $5dbe: $30 $2c

    jr nc, jr_0b0_5dc2                            ; $5dc0: $30 $00

jr_0b0_5dc2:
    jr nz, jr_0b0_5de7                            ; $5dc2: $20 $23

    ld a, c                                       ; $5dc4: $79
    ld e, a                                       ; $5dc5: $5f
    ld a, l                                       ; $5dc6: $7d
    sbc a                                         ; $5dc7: $9f
    ld [bc], a                                    ; $5dc8: $02
    nop                                           ; $5dc9: $00
    nop                                           ; $5dca: $00
    inc de                                        ; $5dcb: $13
    ld l, h                                       ; $5dcc: $6c
    ld a, [de]                                    ; $5dcd: $1a
    ld a, d                                       ; $5dce: $7a
    inc l                                         ; $5dcf: $2c
    jr nc, jr_0b0_5df7                            ; $5dd0: $30 $25

    jr jr_0b0_5d75                                ; $5dd2: $18 $a1

    halt                                          ; $5dd4: $76
    ccf                                           ; $5dd5: $3f
    inc bc                                        ; $5dd6: $03
    ld h, l                                       ; $5dd7: $65
    ld a, h                                       ; $5dd8: $7c
    ld bc, $1c1c                                  ; $5dd9: $01 $1c $1c
    ld bc, $029f                                  ; $5ddc: $01 $9f $02
    ld c, b                                       ; $5ddf: $48
    nop                                           ; $5de0: $00
    ld h, $20                                     ; $5de1: $26 $20
    rst $18                                       ; $5de3: $df
    ld [bc], a                                    ; $5de4: $02
    ld h, l                                       ; $5de5: $65
    ld a, h                                       ; $5de6: $7c

jr_0b0_5de7:
    ld c, a                                       ; $5de7: $4f
    ld a, a                                       ; $5de8: $7f
    ld b, $1c                                     ; $5de9: $06 $1c
    ld [de], a                                    ; $5deb: $12

jr_0b0_5dec:
    ld l, h                                       ; $5dec: $6c
    sbc a                                         ; $5ded: $9f
    ld [bc], a                                    ; $5dee: $02
    ld a, [de]                                    ; $5def: $1a
    ld a, d                                       ; $5df0: $7a
    nop                                           ; $5df1: $00
    jr nz, jr_0b0_5e06                            ; $5df2: $20 $12

    ld l, h                                       ; $5df4: $6c
    sbc a                                         ; $5df5: $9f
    ld [bc], a                                    ; $5df6: $02

jr_0b0_5df7:
    ld a, [de]                                    ; $5df7: $1a
    ld a, d                                       ; $5df8: $7a
    nop                                           ; $5df9: $00
    jr nz, jr_0b0_5d9d                            ; $5dfa: $20 $a1

    halt                                          ; $5dfc: $76
    ccf                                           ; $5dfd: $3f
    inc bc                                        ; $5dfe: $03
    ld h, l                                       ; $5dff: $65
    ld a, h                                       ; $5e00: $7c
    dec b                                         ; $5e01: $05
    inc e                                         ; $5e02: $1c
    ld a, [de]                                    ; $5e03: $1a
    ld a, d                                       ; $5e04: $7a
    rst $18                                       ; $5e05: $df

jr_0b0_5e06:
    ld [bc], a                                    ; $5e06: $02
    ld [de], a                                    ; $5e07: $12
    ld l, h                                       ; $5e08: $6c

Jump_0b0_5e09:
    dec hl                                        ; $5e09: $2b
    inc h                                         ; $5e0a: $24
    add l                                         ; $5e0b: $85
    ld e, h                                       ; $5e0c: $5c

jr_0b0_5e0d:
    sbc a                                         ; $5e0d: $9f
    ld [bc], a                                    ; $5e0e: $02
    and c                                         ; $5e0f: $a1
    halt                                          ; $5e10: $76
    ld l, e                                       ; $5e11: $6b
    nop                                           ; $5e12: $00
    ccf                                           ; $5e13: $3f
    ld bc, $029f                                  ; $5e14: $01 $9f $02
    rst $38                                       ; $5e17: $ff
    inc bc                                        ; $5e18: $03
    inc h                                         ; $5e19: $24
    inc c                                         ; $5e1a: $0c
    ld h, l                                       ; $5e1b: $65
    ld a, h                                       ; $5e1c: $7c
    ld a, [bc]                                    ; $5e1d: $0a
    inc l                                         ; $5e1e: $2c
    ld [de], a                                    ; $5e1f: $12
    ld l, h                                       ; $5e20: $6c
    nop                                           ; $5e21: $00
    db $10                                        ; $5e22: $10
    ld d, e                                       ; $5e23: $53
    ld l, h                                       ; $5e24: $6c
    ccf                                           ; $5e25: $3f
    inc bc                                        ; $5e26: $03
    ld a, [bc]                                    ; $5e27: $0a
    inc l                                         ; $5e28: $2c
    nop                                           ; $5e29: $00
    jr nz, jr_0b0_5e7f                            ; $5e2a: $20 $53

    ld l, h                                       ; $5e2c: $6c
    ccf                                           ; $5e2d: $3f
    inc bc                                        ; $5e2e: $03
    ld a, [bc]                                    ; $5e2f: $0a
    inc l                                         ; $5e30: $2c
    nop                                           ; $5e31: $00
    jr nz, @-$79                                  ; $5e32: $20 $85

    ld e, h                                       ; $5e34: $5c
    sbc a                                         ; $5e35: $9f
    ld [bc], a                                    ; $5e36: $02
    and c                                         ; $5e37: $a1
    halt                                          ; $5e38: $76
    nop                                           ; $5e39: $00
    db $10                                        ; $5e3a: $10
    ld [de], a                                    ; $5e3b: $12
    ld l, h                                       ; $5e3c: $6c
    ld [$1a28], sp                                ; $5e3d: $08 $28 $1a
    ld a, d                                       ; $5e40: $7a
    ld bc, $a100                                  ; $5e41: $01 $00 $a1
    halt                                          ; $5e44: $76
    pop bc                                        ; $5e45: $c1
    jr nc, @+$67                                  ; $5e46: $30 $65

    ld a, h                                       ; $5e48: $7c
    nop                                           ; $5e49: $00
    nop                                           ; $5e4a: $00
    rst $38                                       ; $5e4b: $ff
    ld a, a                                       ; $5e4c: $7f
    ccf                                           ; $5e4d: $3f
    inc bc                                        ; $5e4e: $03
    ld a, [bc]                                    ; $5e4f: $0a
    inc l                                         ; $5e50: $2c
    nop                                           ; $5e51: $00
    nop                                           ; $5e52: $00
    rst $38                                       ; $5e53: $ff
    ld a, a                                       ; $5e54: $7f
    ld h, l                                       ; $5e55: $65
    ld a, h                                       ; $5e56: $7c
    ld bc, $001c                                  ; $5e57: $01 $1c $00
    nop                                           ; $5e5a: $00
    ld [de], a                                    ; $5e5b: $12
    ld l, h                                       ; $5e5c: $6c
    rst $38                                       ; $5e5d: $ff
    ld a, a                                       ; $5e5e: $7f
    ld [bc], a                                    ; $5e5f: $02
    jr nz, jr_0b0_5e62                            ; $5e60: $20 $00

jr_0b0_5e62:
    jr nz, jr_0b0_5e76                            ; $5e62: $20 $12

    ld l, h                                       ; $5e64: $6c
    rst $38                                       ; $5e65: $ff
    ld a, a                                       ; $5e66: $7f
    ld [bc], a                                    ; $5e67: $02
    jr nz, jr_0b0_5e6a                            ; $5e68: $20 $00

jr_0b0_5e6a:
    jr nz, jr_0b0_5e0d                            ; $5e6a: $20 $a1

    halt                                          ; $5e6c: $76
    pop bc                                        ; $5e6d: $c1
    jr nc, jr_0b0_5ed5                            ; $5e6e: $30 $65

    ld a, h                                       ; $5e70: $7c
    nop                                           ; $5e71: $00
    nop                                           ; $5e72: $00
    ld [de], a                                    ; $5e73: $12
    ld l, h                                       ; $5e74: $6c
    rst $38                                       ; $5e75: $ff

jr_0b0_5e76:
    ld a, a                                       ; $5e76: $7f
    ld [bc], a                                    ; $5e77: $02
    jr nz, jr_0b0_5e7a                            ; $5e78: $20 $00

jr_0b0_5e7a:
    nop                                           ; $5e7a: $00
    rst $38                                       ; $5e7b: $ff
    ld a, a                                       ; $5e7c: $7f
    rst $38                                       ; $5e7d: $ff
    ld a, a                                       ; $5e7e: $7f

jr_0b0_5e7f:
    ld [bc], a                                    ; $5e7f: $02
    jr nz, jr_0b0_5e82                            ; $5e80: $20 $00

jr_0b0_5e82:
    nop                                           ; $5e82: $00
    nop                                           ; $5e83: $00
    jr nz, @+$01                                  ; $5e84: $20 $ff

    ld a, a                                       ; $5e86: $7f
    ld [bc], a                                    ; $5e87: $02
    jr nz, jr_0b0_5e8a                            ; $5e88: $20 $00

jr_0b0_5e8a:
    nop                                           ; $5e8a: $00
    nop                                           ; $5e8b: $00
    jr nz, @+$01                                  ; $5e8c: $20 $ff

    ld a, a                                       ; $5e8e: $7f
    ld [bc], a                                    ; $5e8f: $02
    jr nz, jr_0b0_5e92                            ; $5e90: $20 $00

jr_0b0_5e92:
    nop                                           ; $5e92: $00
    nop                                           ; $5e93: $00
    jr nz, @+$01                                  ; $5e94: $20 $ff

    ld a, a                                       ; $5e96: $7f
    ld [bc], a                                    ; $5e97: $02
    jr nz, jr_0b0_5e9a                            ; $5e98: $20 $00

jr_0b0_5e9a:
    jr nz, jr_0b0_5e9c                            ; $5e9a: $20 $00

jr_0b0_5e9c:
    jr nz, @+$01                                  ; $5e9c: $20 $ff

    ld a, a                                       ; $5e9e: $7f
    ld [bc], a                                    ; $5e9f: $02
    jr nz, jr_0b0_5ea2                            ; $5ea0: $20 $00

jr_0b0_5ea2:
    jr nz, jr_0b0_5ea4                            ; $5ea2: $20 $00

jr_0b0_5ea4:
    jr nz, jr_0b0_5ea6                            ; $5ea4: $20 $00

jr_0b0_5ea6:
    jr nz, jr_0b0_5eba                            ; $5ea6: $20 $12

    inc b                                         ; $5ea8: $04
    nop                                           ; $5ea9: $00
    jr nz, jr_0b0_5eac                            ; $5eaa: $20 $00

jr_0b0_5eac:
    jr nz, jr_0b0_5eae                            ; $5eac: $20 $00

jr_0b0_5eae:
    jr nz, jr_0b0_5ec2                            ; $5eae: $20 $12

    inc b                                         ; $5eb0: $04
    nop                                           ; $5eb1: $00
    jr jr_0b0_5edc                                ; $5eb2: $18 $28

    ld [$2000], sp                                ; $5eb4: $08 $00 $20
    ld [de], a                                    ; $5eb7: $12
    inc b                                         ; $5eb8: $04
    inc b                                         ; $5eb9: $04

jr_0b0_5eba:
    inc b                                         ; $5eba: $04
    ld a, a                                       ; $5ebb: $7f
    ld d, d                                       ; $5ebc: $52
    nop                                           ; $5ebd: $00
    jr nz, @+$01                                  ; $5ebe: $20 $ff

    ld a, a                                       ; $5ec0: $7f
    nop                                           ; $5ec1: $00

jr_0b0_5ec2:
    jr nz, jr_0b0_5eec                            ; $5ec2: $20 $28

    ld [$2000], sp                                ; $5ec4: $08 $00 $20
    rst $38                                       ; $5ec7: $ff
    ld a, a                                       ; $5ec8: $7f
    nop                                           ; $5ec9: $00
    inc e                                         ; $5eca: $1c
    rst $38                                       ; $5ecb: $ff
    ld a, a                                       ; $5ecc: $7f
    nop                                           ; $5ecd: $00
    jr nz, @+$01                                  ; $5ece: $20 $ff

    ld a, a                                       ; $5ed0: $7f
    nop                                           ; $5ed1: $00
    jr nz, @+$01                                  ; $5ed2: $20 $ff

    ld a, a                                       ; $5ed4: $7f

jr_0b0_5ed5:
    nop                                           ; $5ed5: $00
    jr nz, @+$01                                  ; $5ed6: $20 $ff

jr_0b0_5ed8:
    ld a, a                                       ; $5ed8: $7f
    nop                                           ; $5ed9: $00
    jr nz, jr_0b0_5f04                            ; $5eda: $20 $28

jr_0b0_5edc:
    ld [$2000], sp                                ; $5edc: $08 $00 $20
    ld [de], a                                    ; $5edf: $12
    inc b                                         ; $5ee0: $04
    nop                                           ; $5ee1: $00
    jr nz, jr_0b0_5f0c                            ; $5ee2: $20 $28

    ld [$2000], sp                                ; $5ee4: $08 $00 $20
    ld [de], a                                    ; $5ee7: $12
    inc b                                         ; $5ee8: $04

jr_0b0_5ee9:
    nop                                           ; $5ee9: $00
    jr nz, jr_0b0_5f4a                            ; $5eea: $20 $5e

jr_0b0_5eec:
    ld sp, $4e5f                                  ; $5eec: $31 $5f $4e
    inc b                                         ; $5eef: $04
    inc b                                         ; $5ef0: $04
    inc b                                         ; $5ef1: $04
    inc b                                         ; $5ef2: $04
    sbc [hl]                                      ; $5ef3: $9e
    dec [hl]                                      ; $5ef4: $35
    rst $38                                       ; $5ef5: $ff
    ld a, a                                       ; $5ef6: $7f
    sbc a                                         ; $5ef7: $9f
    ld d, [hl]                                    ; $5ef8: $56
    nop                                           ; $5ef9: $00
    jr nz, @+$01                                  ; $5efa: $20 $ff

    ld a, a                                       ; $5efc: $7f
    jr z, jr_0b0_5f07                             ; $5efd: $28 $08

    add hl, bc                                    ; $5eff: $09
    inc b                                         ; $5f00: $04
    nop                                           ; $5f01: $00
    jr nz, @+$01                                  ; $5f02: $20 $ff

jr_0b0_5f04:
    ld h, e                                       ; $5f04: $63
    jp hl                                         ; $5f05: $e9


    inc e                                         ; $5f06: $1c

jr_0b0_5f07:
    rst $38                                       ; $5f07: $ff
    ld a, a                                       ; $5f08: $7f
    nop                                           ; $5f09: $00
    jr nz, @+$01                                  ; $5f0a: $20 $ff

jr_0b0_5f0c:
    ld a, a                                       ; $5f0c: $7f
    jp hl                                         ; $5f0d: $e9


    inc e                                         ; $5f0e: $1c
    rst $38                                       ; $5f0f: $ff
    ld a, a                                       ; $5f10: $7f

jr_0b0_5f11:
    nop                                           ; $5f11: $00
    jr nz, jr_0b0_5f72                            ; $5f12: $20 $5e

Jump_0b0_5f14:
    ld sp, $4e5f                                  ; $5f14: $31 $5f $4e
    inc b                                         ; $5f17: $04
    inc b                                         ; $5f18: $04
    nop                                           ; $5f19: $00
    jr nz, jr_0b0_5f2d                            ; $5f1a: $20 $11

    inc h                                         ; $5f1c: $24
    ld [bc], a                                    ; $5f1d: $02
    inc b                                         ; $5f1e: $04
    inc b                                         ; $5f1f: $04
    inc b                                         ; $5f20: $04
    dec h                                         ; $5f21: $25
    ld [$1c9d], sp                                ; $5f22: $08 $9d $1c
    ld de, $5a1c                                  ; $5f25: $11 $1c $5a
    ld c, l                                       ; $5f28: $4d
    nop                                           ; $5f29: $00
    nop                                           ; $5f2a: $00
    cp h                                          ; $5f2b: $bc
    inc e                                         ; $5f2c: $1c

jr_0b0_5f2d:
    rra                                           ; $5f2d: $1f
    ld b, [hl]                                    ; $5f2e: $46
    jr nc, jr_0b0_5f3d                            ; $5f2f: $30 $0c

    nop                                           ; $5f31: $00
    nop                                           ; $5f32: $00
    rst $38                                       ; $5f33: $ff
    ld a, a                                       ; $5f34: $7f
    dec bc                                        ; $5f35: $0b
    inc b                                         ; $5f36: $04
    nop                                           ; $5f37: $00
    jr nz, jr_0b0_5f3a                            ; $5f38: $20 $00

jr_0b0_5f3a:
    jr nz, jr_0b0_5ed8                            ; $5f3a: $20 $9c

    dec sp                                        ; $5f3c: $3b

jr_0b0_5f3d:
    rst $38                                       ; $5f3d: $ff
    ld [hl], a                                    ; $5f3e: $77
    jp hl                                         ; $5f3f: $e9


    inc e                                         ; $5f40: $1c
    nop                                           ; $5f41: $00
    jr nz, @+$01                                  ; $5f42: $20 $ff

    ld a, a                                       ; $5f44: $7f
    rst $38                                       ; $5f45: $ff
    ld [hl], a                                    ; $5f46: $77
    jp hl                                         ; $5f47: $e9


jr_0b0_5f48:
    inc e                                         ; $5f48: $1c
    nop                                           ; $5f49: $00

jr_0b0_5f4a:
    jr nz, jr_0b0_5ee9                            ; $5f4a: $20 $9d

    inc e                                         ; $5f4c: $1c
    ld de, $5a1c                                  ; $5f4d: $11 $1c $5a
    ld c, l                                       ; $5f50: $4d
    nop                                           ; $5f51: $00
    jr nz, jr_0b0_5f11                            ; $5f52: $20 $bd

    ld e, c                                       ; $5f54: $59
    ld de, $0224                                  ; $5f55: $11 $24 $02
    inc b                                         ; $5f58: $04
    ld a, [hl+]                                   ; $5f59: $2a
    inc c                                         ; $5f5a: $0c
    inc sp                                        ; $5f5b: $33
    add hl, sp                                    ; $5f5c: $39
    ld e, a                                       ; $5f5d: $5f
    ld [hl], a                                    ; $5f5e: $77
    dec a                                         ; $5f5f: $3d
    ld d, c                                       ; $5f60: $51
    ld [$3504], sp                                ; $5f61: $08 $04 $35
    inc c                                         ; $5f64: $0c
    ld a, l                                       ; $5f65: $7d
    inc d                                         ; $5f66: $14
    rrca                                          ; $5f67: $0f
    inc b                                         ; $5f68: $04
    nop                                           ; $5f69: $00
    nop                                           ; $5f6a: $00
    rst $38                                       ; $5f6b: $ff
    ld a, e                                       ; $5f6c: $7b
    jr z, jr_0b0_5f77                             ; $5f6d: $28 $08

    nop                                           ; $5f6f: $00
    jr nz, jr_0b0_5f72                            ; $5f70: $20 $00

jr_0b0_5f72:
    jr nz, @+$01                                  ; $5f72: $20 $ff

    ld h, e                                       ; $5f74: $63
    jp hl                                         ; $5f75: $e9


    inc e                                         ; $5f76: $1c

jr_0b0_5f77:
    rst $38                                       ; $5f77: $ff
    ld a, a                                       ; $5f78: $7f
    nop                                           ; $5f79: $00
    jr nz, @+$01                                  ; $5f7a: $20 $ff

    ld a, a                                       ; $5f7c: $7f
    jp hl                                         ; $5f7d: $e9


    inc e                                         ; $5f7e: $1c
    rst $38                                       ; $5f7f: $ff

jr_0b0_5f80:
    ld a, a                                       ; $5f80: $7f

jr_0b0_5f81:
    nop                                           ; $5f81: $00
    jr nz, jr_0b0_5fb7                            ; $5f82: $20 $33

    add hl, sp                                    ; $5f84: $39
    ld e, a                                       ; $5f85: $5f
    ld [hl], a                                    ; $5f86: $77
    dec a                                         ; $5f87: $3d
    ld d, c                                       ; $5f88: $51
    nop                                           ; $5f89: $00
    jr jr_0b0_5f81                                ; $5f8a: $18 $f5

    inc a                                         ; $5f8c: $3c
    ld de, $9d24                                  ; $5f8d: $11 $24 $9d
    ld d, l                                       ; $5f90: $55
    ld b, a                                       ; $5f91: $47
    inc c                                         ; $5f92: $0c
    ld e, l                                       ; $5f93: $5d
    ld e, [hl]                                    ; $5f94: $5e
    ld d, d                                       ; $5f95: $52
    add hl, sp                                    ; $5f96: $39
    ld e, a                                       ; $5f97: $5f
    ld [hl], a                                    ; $5f98: $77
    nop                                           ; $5f99: $00
    nop                                           ; $5f9a: $00
    jr c, jr_0b0_5fdf                             ; $5f9b: $38 $42

    ld [$7f04], sp                                ; $5f9d: $08 $04 $7f
    ld h, [hl]                                    ; $5fa0: $66
    nop                                           ; $5fa1: $00
    nop                                           ; $5fa2: $00
    rst $30                                       ; $5fa3: $f7
    ld l, l                                       ; $5fa4: $6d
    rst $18                                       ; $5fa5: $df
    ld a, e                                       ; $5fa6: $7b
    adc b                                         ; $5fa7: $88
    jr jr_0b0_5faa                                ; $5fa8: $18 $00

jr_0b0_5faa:
    jr nz, jr_0b0_5f48                            ; $5faa: $20 $9c

    dec sp                                        ; $5fac: $3b
    jp hl                                         ; $5fad: $e9


    inc e                                         ; $5fae: $1c
    rst $38                                       ; $5faf: $ff
    ld [hl], e                                    ; $5fb0: $73
    nop                                           ; $5fb1: $00
    jr nz, @+$01                                  ; $5fb2: $20 $ff

    ld h, e                                       ; $5fb4: $63
    jp hl                                         ; $5fb5: $e9


    inc e                                         ; $5fb6: $1c

jr_0b0_5fb7:
    rst $38                                       ; $5fb7: $ff
    ld a, a                                       ; $5fb8: $7f
    nop                                           ; $5fb9: $00
    jr nz, jr_0b0_6019                            ; $5fba: $20 $5d

    ld e, [hl]                                    ; $5fbc: $5e
    ld d, d                                       ; $5fbd: $52
    add hl, sp                                    ; $5fbe: $39
    ld e, a                                       ; $5fbf: $5f

jr_0b0_5fc0:
    ld [hl], a                                    ; $5fc0: $77
    nop                                           ; $5fc1: $00
    jr nz, @-$6c                                  ; $5fc2: $20 $92

    inc l                                         ; $5fc4: $2c
    dec a                                         ; $5fc5: $3d
    ld d, c                                       ; $5fc6: $51
    ld b, l                                       ; $5fc7: $45
    inc c                                         ; $5fc8: $0c
    adc b                                         ; $5fc9: $88
    jr @+$61                                      ; $5fca: $18 $5f

    ld [hl], a                                    ; $5fcc: $77
    sub c                                         ; $5fcd: $91
    add hl, sp                                    ; $5fce: $39
    ld hl, sp+$51                                 ; $5fcf: $f8 $51
    inc sp                                        ; $5fd1: $33
    ld a, [de]                                    ; $5fd2: $1a
    rra                                           ; $5fd3: $1f
    ld e, e                                       ; $5fd4: $5b
    rst $38                                       ; $5fd5: $ff
    dec hl                                        ; $5fd6: $2b
    jr c, jr_0b0_601b                             ; $5fd7: $38 $42

    ld h, [hl]                                    ; $5fd9: $66
    db $10                                        ; $5fda: $10
    or e                                          ; $5fdb: $b3
    ld [hl], c                                    ; $5fdc: $71
    sbc a                                         ; $5fdd: $9f
    ld [hl], e                                    ; $5fde: $73

jr_0b0_5fdf:
    inc sp                                        ; $5fdf: $33
    ld a, [de]                                    ; $5fe0: $1a
    nop                                           ; $5fe1: $00
    jr jr_0b0_5f80                                ; $5fe2: $18 $9c

    dec sp                                        ; $5fe4: $3b
    jp hl                                         ; $5fe5: $e9


    inc e                                         ; $5fe6: $1c
    rst $38                                       ; $5fe7: $ff
    ld [hl], e                                    ; $5fe8: $73
    nop                                           ; $5fe9: $00
    jr nz, @+$01                                  ; $5fea: $20 $ff

    ld h, e                                       ; $5fec: $63
    jp hl                                         ; $5fed: $e9


    inc e                                         ; $5fee: $1c
    rst $38                                       ; $5fef: $ff
    ld a, a                                       ; $5ff0: $7f
    nop                                           ; $5ff1: $00
    jr nz, jr_0b0_6053                            ; $5ff2: $20 $5f

    ld [hl], a                                    ; $5ff4: $77
    sub c                                         ; $5ff5: $91
    add hl, sp                                    ; $5ff6: $39
    ld hl, sp+$51                                 ; $5ff7: $f8 $51
    ld bc, $5218                                  ; $5ff9: $01 $18 $52
    add hl, sp                                    ; $5ffc: $39
    ld e, a                                       ; $5ffd: $5f
    ld [hl], a                                    ; $5ffe: $77
    ld de, $8824                                  ; $5fff: $11 $24 $88
    inc d                                         ; $6002: $14
    jr jr_0b0_604f                                ; $6003: $18 $4a

    sbc a                                         ; $6005: $9f
    ld h, [hl]                                    ; $6006: $66
    inc sp                                        ; $6007: $33
    ld a, [de]                                    ; $6008: $1a
    nop                                           ; $6009: $00
    nop                                           ; $600a: $00
    rra                                           ; $600b: $1f
    ld e, e                                       ; $600c: $5b
    rst $38                                       ; $600d: $ff
    ld a, a                                       ; $600e: $7f
    rst $38                                       ; $600f: $ff
    dec hl                                        ; $6010: $2b
    ld h, [hl]                                    ; $6011: $66
    db $10                                        ; $6012: $10
    sub $61                                       ; $6013: $d6 $61
    cp l                                          ; $6015: $bd
    inc sp                                        ; $6016: $33
    rst $38                                       ; $6017: $ff
    ld [hl], e                                    ; $6018: $73

jr_0b0_6019:
    nop                                           ; $6019: $00
    nop                                           ; $601a: $00

jr_0b0_601b:
    rst $38                                       ; $601b: $ff
    ld a, a                                       ; $601c: $7f
    jp hl                                         ; $601d: $e9


    inc e                                         ; $601e: $1c
    nop                                           ; $601f: $00
    jr nz, jr_0b0_6022                            ; $6020: $20 $00

jr_0b0_6022:
    jr nz, jr_0b0_5fc0                            ; $6022: $20 $9c

    dec sp                                        ; $6024: $3b
    jp hl                                         ; $6025: $e9


    inc e                                         ; $6026: $1c
    rst $38                                       ; $6027: $ff
    ld l, e                                       ; $6028: $6b
    nop                                           ; $6029: $00
    jr nz, jr_0b0_6044                            ; $602a: $20 $18

    ld c, d                                       ; $602c: $4a
    sbc a                                         ; $602d: $9f
    ld h, [hl]                                    ; $602e: $66
    inc sp                                        ; $602f: $33
    ld a, [de]                                    ; $6030: $1a
    nop                                           ; $6031: $00
    ld [$777f], sp                                ; $6032: $08 $7f $77
    ld de, $8831                                  ; $6035: $11 $31 $88
    jr @+$47                                      ; $6038: $18 $45

    db $10                                        ; $603a: $10
    push de                                       ; $603b: $d5
    ld b, c                                       ; $603c: $41
    ld e, a                                       ; $603d: $5f
    ld c, e                                       ; $603e: $4b
    jr nc, jr_0b0_6047                            ; $603f: $30 $06

    ld h, c                                       ; $6041: $61
    inc [hl]                                      ; $6042: $34
    ld c, a                                       ; $6043: $4f

jr_0b0_6044:
    ld a, [hl]                                    ; $6044: $7e
    sbc a                                         ; $6045: $9f
    ld l, a                                       ; $6046: $6f

jr_0b0_6047:
    ld h, b                                       ; $6047: $60
    ld [hl], h                                    ; $6048: $74
    add a                                         ; $6049: $87
    db $10                                        ; $604a: $10
    ld [hl], c                                    ; $604b: $71
    ld l, c                                       ; $604c: $69
    sbc h                                         ; $604d: $9c
    dec sp                                        ; $604e: $3b

jr_0b0_604f:
    rst $38                                       ; $604f: $ff
    ld l, a                                       ; $6050: $6f
    ld h, h                                       ; $6051: $64
    inc c                                         ; $6052: $0c

jr_0b0_6053:
    ld [hl], c                                    ; $6053: $71
    ld l, c                                       ; $6054: $69
    sbc h                                         ; $6055: $9c
    dec sp                                        ; $6056: $3b
    rst $38                                       ; $6057: $ff
    ld a, e                                       ; $6058: $7b
    nop                                           ; $6059: $00
    jr nz, @-$62                                  ; $605a: $20 $9c

    dec sp                                        ; $605c: $3b
    jp hl                                         ; $605d: $e9


    inc e                                         ; $605e: $1c
    rst $38                                       ; $605f: $ff
    ld l, a                                       ; $6060: $6f
    nop                                           ; $6061: $00

jr_0b0_6062:
    nop                                           ; $6062: $00
    rst $38                                       ; $6063: $ff
    ld a, a                                       ; $6064: $7f
    nop                                           ; $6065: $00
    jr nz, jr_0b0_6098                            ; $6066: $20 $30

    ld b, $44                                     ; $6068: $06 $44
    inc c                                         ; $606a: $0c
    ld a, a                                       ; $606b: $7f
    ld h, [hl]                                    ; $606c: $66
    sub c                                         ; $606d: $91
    add hl, sp                                    ; $606e: $39
    cp a                                          ; $606f: $bf
    ld a, e                                       ; $6070: $7b
    ld b, h                                       ; $6071: $44
    inc c                                         ; $6072: $0c
    push de                                       ; $6073: $d5
    ld b, c                                       ; $6074: $41
    rst $38                                       ; $6075: $ff
    ld a, a                                       ; $6076: $7f
    ld e, d                                       ; $6077: $5a
    rra                                           ; $6078: $1f
    ld h, c                                       ; $6079: $61
    inc [hl]                                      ; $607a: $34
    jr c, jr_0b0_60bf                             ; $607b: $38 $42

    dec l                                         ; $607d: $2d
    ld hl, $633f                                  ; $607e: $21 $3f $63
    jp z, $bd14                                   ; $6081: $ca $14 $bd

    inc sp                                        ; $6084: $33
    ld l, $5d                                     ; $6085: $2e $5d
    rst $38                                       ; $6087: $ff
    ld [hl], a                                    ; $6088: $77

jr_0b0_6089:
    jp hl                                         ; $6089: $e9


    inc e                                         ; $608a: $1c
    sbc h                                         ; $608b: $9c
    dec sp                                        ; $608c: $3b
    ld c, a                                       ; $608d: $4f
    ld h, l                                       ; $608e: $65
    rst $38                                       ; $608f: $ff
    ld l, e                                       ; $6090: $6b
    nop                                           ; $6091: $00
    inc e                                         ; $6092: $1c
    sbc h                                         ; $6093: $9c
    dec sp                                        ; $6094: $3b
    jp hl                                         ; $6095: $e9


    inc e                                         ; $6096: $1c
    rst $38                                       ; $6097: $ff

jr_0b0_6098:
    ld a, e                                       ; $6098: $7b
    nop                                           ; $6099: $00
    nop                                           ; $609a: $00

jr_0b0_609b:
    rst $38                                       ; $609b: $ff
    ld a, a                                       ; $609c: $7f
    nop                                           ; $609d: $00
    jr nz, jr_0b0_60fa                            ; $609e: $20 $5a

    rra                                           ; $60a0: $1f
    ld b, l                                       ; $60a1: $45
    db $10                                        ; $60a2: $10
    ld l, $65                                     ; $60a3: $2e $65
    ld [hl], c                                    ; $60a5: $71
    add hl, sp                                    ; $60a6: $39
    ld hl, sp+$51                                 ; $60a7: $f8 $51
    adc b                                         ; $60a9: $88
    jr jr_0b0_60e4                                ; $60aa: $18 $38

    ld b, d                                       ; $60ac: $42
    sbc a                                         ; $60ad: $9f
    ld b, a                                       ; $60ae: $47
    ld de, $0d1a                                  ; $60af: $11 $1a $0d
    dec e                                         ; $60b2: $1d
    rra                                           ; $60b3: $1f
    ld e, e                                       ; $60b4: $5b
    or $39                                        ; $60b5: $f6 $39
    ld a, a                                       ; $60b7: $7f
    ld l, a                                       ; $60b8: $6f
    db $eb                                        ; $60b9: $eb
    jr jr_0b0_609b                                ; $60ba: $18 $df

    inc hl                                        ; $60bc: $23
    ld c, $61                                     ; $60bd: $0e $61

jr_0b0_60bf:
    sbc $6f                                       ; $60bf: $de $6f
    jp hl                                         ; $60c1: $e9


    inc e                                         ; $60c2: $1c
    sbc h                                         ; $60c3: $9c
    dec sp                                        ; $60c4: $3b
    ld c, $61                                     ; $60c5: $0e $61
    rst $38                                       ; $60c7: $ff
    ld l, a                                       ; $60c8: $6f
    nop                                           ; $60c9: $00
    inc e                                         ; $60ca: $1c
    sbc h                                         ; $60cb: $9c
    dec sp                                        ; $60cc: $3b
    ld [$ff30], a                                 ; $60cd: $ea $30 $ff
    ld [hl], a                                    ; $60d0: $77
    nop                                           ; $60d1: $00
    nop                                           ; $60d2: $00
    dec c                                         ; $60d3: $0d
    ld h, c                                       ; $60d4: $61
    rst $38                                       ; $60d5: $ff
    ld a, a                                       ; $60d6: $7f
    nop                                           ; $60d7: $00
    jr nz, jr_0b0_6062                            ; $60d8: $20 $88

    jr jr_0b0_60e9                                ; $60da: $18 $0d

    ld e, l                                       ; $60dc: $5d
    jp z, Jump_000_0e14                           ; $60dd: $ca $14 $0e

    ld h, c                                       ; $60e0: $61
    ld l, b                                       ; $60e1: $68
    inc c                                         ; $60e2: $0c
    dec e                                         ; $60e3: $1d

jr_0b0_60e4:
    scf                                           ; $60e4: $37
    ld [de], a                                    ; $60e5: $12
    ld a, [de]                                    ; $60e6: $1a
    ld e, a                                       ; $60e7: $5f
    ld e, a                                       ; $60e8: $5f

jr_0b0_60e9:
    rlca                                          ; $60e9: $07
    nop                                           ; $60ea: $00
    sbc h                                         ; $60eb: $9c
    dec l                                         ; $60ec: $2d
    rst $38                                       ; $60ed: $ff
    ld d, [hl]                                    ; $60ee: $56
    pop de                                        ; $60ef: $d1
    inc d                                         ; $60f0: $14
    xor c                                         ; $60f1: $a9
    jr jr_0b0_6089                                ; $60f2: $18 $95

    ld a, [hl+]                                   ; $60f4: $2a
    db $ec                                        ; $60f5: $ec
    ld e, h                                       ; $60f6: $5c
    rst $38                                       ; $60f7: $ff

jr_0b0_60f8:
    daa                                           ; $60f8: $27
    jp hl                                         ; $60f9: $e9


jr_0b0_60fa:
    inc e                                         ; $60fa: $1c
    sbc h                                         ; $60fb: $9c
    dec sp                                        ; $60fc: $3b
    rst $38                                       ; $60fd: $ff
    ld [hl], e                                    ; $60fe: $73
    db $ec                                        ; $60ff: $ec

jr_0b0_6100:
    ld e, h                                       ; $6100: $5c
    nop                                           ; $6101: $00
    inc e                                         ; $6102: $1c
    db $ec                                        ; $6103: $ec

jr_0b0_6104:
    ld e, h                                       ; $6104: $5c
    rst $38                                       ; $6105: $ff
    ld [hl], e                                    ; $6106: $73
    jp hl                                         ; $6107: $e9


    inc e                                         ; $6108: $1c
    nop                                           ; $6109: $00

jr_0b0_610a:
    nop                                           ; $610a: $00
    rst $38                                       ; $610b: $ff
    ld a, a                                       ; $610c: $7f
    db $eb                                        ; $610d: $eb
    ld e, b                                       ; $610e: $58
    db $ec                                        ; $610f: $ec
    ld e, h                                       ; $6110: $5c
    ld c, l                                       ; $6111: $4d
    dec d                                         ; $6112: $15
    rst $38                                       ; $6113: $ff

jr_0b0_6114:
    dec hl                                        ; $6114: $2b
    db $eb                                        ; $6115: $eb
    ld e, b                                       ; $6116: $58
    rst $38                                       ; $6117: $ff
    ld l, a                                       ; $6118: $6f
    xor c                                         ; $6119: $a9
    inc b                                         ; $611a: $04
    ld d, a                                       ; $611b: $57
    ld a, [hl+]                                   ; $611c: $2a
    ld e, $5b                                     ; $611d: $1e $5b
    rst $38                                       ; $611f: $ff
    daa                                           ; $6120: $27
    jr jr_0b0_6123                                ; $6121: $18 $00

jr_0b0_6123:
    ld a, [hl-]                                   ; $6123: $3a
    ld a, $11                                     ; $6124: $3e $11
    dec e                                         ; $6126: $1d
    rst $18                                       ; $6127: $df
    ld d, d                                       ; $6128: $52
    dec h                                         ; $6129: $25
    jr nz, jr_0b0_610a                            ; $612a: $20 $de

    ld a, e                                       ; $612c: $7b
    bit 3, b                                      ; $612d: $cb $58
    ld l, l                                       ; $612f: $6d
    dec a                                         ; $6130: $3d
    jp hl                                         ; $6131: $e9


jr_0b0_6132:
    inc e                                         ; $6132: $1c
    sbc h                                         ; $6133: $9c
    dec sp                                        ; $6134: $3b
    bit 3, b                                      ; $6135: $cb $58
    rst $38                                       ; $6137: $ff
    ld [hl], a                                    ; $6138: $77
    nop                                           ; $6139: $00
    inc e                                         ; $613a: $1c
    rst $38                                       ; $613b: $ff
    ld [hl], e                                    ; $613c: $73
    bit 3, b                                      ; $613d: $cb $58
    jp hl                                         ; $613f: $e9


    inc e                                         ; $6140: $1c
    nop                                           ; $6141: $00
    nop                                           ; $6142: $00
    rst $38                                       ; $6143: $ff
    ld a, a                                       ; $6144: $7f
    jp z, SerialTransferCompleteInterrupt         ; $6145: $ca $58 $00

    jr nz, jr_0b0_6114                            ; $6148: $20 $ca

    inc d                                         ; $614a: $14
    ld [de], a                                    ; $614b: $12
    ld a, [de]                                    ; $614c: $1a
    jp z, $bd58                                   ; $614d: $ca $58 $bd

    dec hl                                        ; $6150: $2b
    ld h, $00                                     ; $6151: $26 $00
    ld a, [c]                                     ; $6153: $f2
    add hl, de                                    ; $6154: $19
    ld e, d                                       ; $6155: $5a
    ld b, d                                       ; $6156: $42
    adc e                                         ; $6157: $8b
    jr jr_0b0_6104                                ; $6158: $18 $aa

    jr jr_0b0_60f8                                ; $615a: $18 $9c

    ld c, [hl]                                    ; $615c: $4e
    sub c                                         ; $615d: $91
    dec l                                         ; $615e: $2d
    rst $38                                       ; $615f: $ff
    ld d, [hl]                                    ; $6160: $56
    daa                                           ; $6161: $27
    jr nz, jr_0b0_6100                            ; $6162: $20 $9c

    ld [hl], e                                    ; $6164: $73
    jp z, Jump_0b0_6d54                           ; $6165: $ca $54 $6d

    dec a                                         ; $6168: $3d
    xor c                                         ; $6169: $a9
    ld d, h                                       ; $616a: $54
    rst $38                                       ; $616b: $ff
    ld a, a                                       ; $616c: $7f
    jp z, $ca58                                   ; $616d: $ca $58 $ca

    ld d, h                                       ; $6170: $54
    nop                                           ; $6171: $00
    inc e                                         ; $6172: $1c
    sbc $5f                                       ; $6173: $de $5f
    xor d                                         ; $6175: $aa
    ld d, h                                       ; $6176: $54
    jp hl                                         ; $6177: $e9


    inc e                                         ; $6178: $1c
    nop                                           ; $6179: $00
    nop                                           ; $617a: $00
    rst $38                                       ; $617b: $ff
    ld a, a                                       ; $617c: $7f
    xor c                                         ; $617d: $a9
    ld d, h                                       ; $617e: $54
    nop                                           ; $617f: $00
    jr nz, @-$55                                  ; $6180: $20 $a9

    ld d, h                                       ; $6182: $54
    ld e, a                                       ; $6183: $5f
    ld [hl], a                                    ; $6184: $77
    ld l, h                                       ; $6185: $6c
    jr nz, jr_0b0_6132                            ; $6186: $20 $aa

    ld d, h                                       ; $6188: $54
    ld h, $00                                     ; $6189: $26 $00
    rra                                           ; $618b: $1f
    ld h, e                                       ; $618c: $63
    sub h                                         ; $618d: $94
    dec l                                         ; $618e: $2d
    ld l, e                                       ; $618f: $6b
    jr jr_0b0_61d9                                ; $6190: $18 $47

    inc b                                         ; $6192: $04
    rst $10                                       ; $6193: $d7
    dec [hl]                                      ; $6194: $35
    xor l                                         ; $6195: $ad
    inc e                                         ; $6196: $1c
    sbc a                                         ; $6197: $9f
    ld e, l                                       ; $6198: $5d
    daa                                           ; $6199: $27
    jr nz, jr_0b0_621a                            ; $619a: $20 $7e

    ld e, c                                       ; $619c: $59
    ld a, e                                       ; $619d: $7b
    ld l, a                                       ; $619e: $6f
    dec hl                                        ; $619f: $2b
    ld b, l                                       ; $61a0: $45
    xor b                                         ; $61a1: $a8
    ld d, h                                       ; $61a2: $54
    or l                                          ; $61a3: $b5
    ld e, $e9                                     ; $61a4: $1e $e9
    inc e                                         ; $61a6: $1c
    rst $38                                       ; $61a7: $ff
    ld e, a                                       ; $61a8: $5f
    nop                                           ; $61a9: $00
    inc e                                         ; $61aa: $1c
    sbc h                                         ; $61ab: $9c
    dec sp                                        ; $61ac: $3b
    jp hl                                         ; $61ad: $e9


    inc e                                         ; $61ae: $1c
    rst $38                                       ; $61af: $ff
    ld h, a                                       ; $61b0: $67
    nop                                           ; $61b1: $00
    nop                                           ; $61b2: $00
    rst $38                                       ; $61b3: $ff
    ld a, a                                       ; $61b4: $7f
    adc b                                         ; $61b5: $88
    ld d, b                                       ; $61b6: $50
    nop                                           ; $61b7: $00
    jr nz, @+$07                                  ; $61b8: $20 $05

    inc h                                         ; $61ba: $24
    cp [hl]                                       ; $61bb: $be
    ld a, e                                       ; $61bc: $7b
    ld [$9448], a                                 ; $61bd: $ea $48 $94
    jr nc, jr_0b0_620c                            ; $61c0: $30 $4a

    inc d                                         ; $61c2: $14
    dec de                                        ; $61c3: $1b
    ld c, [hl]                                    ; $61c4: $4e
    di                                            ; $61c5: $f3
    inc [hl]                                      ; $61c6: $34
    rra                                           ; $61c7: $1f
    ld e, a                                       ; $61c8: $5f
    add hl, hl                                    ; $61c9: $29
    inc b                                         ; $61ca: $04
    jr c, jr_0b0_620f                             ; $61cb: $38 $42

    sbc [hl]                                      ; $61cd: $9e
    inc d                                         ; $61ce: $14
    rra                                           ; $61cf: $1f
    ld e, e                                       ; $61d0: $5b
    ld l, c                                       ; $61d1: $69
    inc e                                         ; $61d2: $1c
    ld e, d                                       ; $61d3: $5a
    ld l, e                                       ; $61d4: $6b
    ld l, l                                       ; $61d5: $6d
    dec a                                         ; $61d6: $3d
    sbc a                                         ; $61d7: $9f
    ld e, l                                       ; $61d8: $5d

jr_0b0_61d9:
    add a                                         ; $61d9: $87
    ld d, b                                       ; $61da: $50
    ld d, h                                       ; $61db: $54
    ld d, $e9                                     ; $61dc: $16 $e9
    inc e                                         ; $61de: $1c
    sbc $33                                       ; $61df: $de $33
    nop                                           ; $61e1: $00
    inc e                                         ; $61e2: $1c
    rst $38                                       ; $61e3: $ff
    ld a, a                                       ; $61e4: $7f
    add a                                         ; $61e5: $87
    ld d, b                                       ; $61e6: $50
    jp hl                                         ; $61e7: $e9


    inc e                                         ; $61e8: $1c
    nop                                           ; $61e9: $00
    nop                                           ; $61ea: $00
    rst $38                                       ; $61eb: $ff
    ld a, a                                       ; $61ec: $7f
    ld [HeaderNewLicenseeCode], a                 ; $61ed: $ea $44 $01
    jr nz, jr_0b0_61f7                            ; $61f0: $20 $05

    inc h                                         ; $61f2: $24
    ld e, h                                       ; $61f3: $5c
    ld [hl], e                                    ; $61f4: $73
    ld l, l                                       ; $61f5: $6d
    dec a                                         ; $61f6: $3d

jr_0b0_61f7:
    sbc l                                         ; $61f7: $9d
    ld [hl], a                                    ; $61f8: $77
    dec b                                         ; $61f9: $05
    inc h                                         ; $61fa: $24
    jp c, Jump_0b0_7f49                           ; $61fb: $da $49 $7f

    ld [hl], a                                    ; $61fe: $77
    adc l                                         ; $61ff: $8d
    inc h                                         ; $6200: $24
    daa                                           ; $6201: $27
    inc b                                         ; $6202: $04
    ld sp, hl                                     ; $6203: $f9
    dec a                                         ; $6204: $3d
    rra                                           ; $6205: $1f
    ld e, e                                       ; $6206: $5b
    sub d                                         ; $6207: $92
    inc d                                         ; $6208: $14
    xor c                                         ; $6209: $a9
    inc d                                         ; $620a: $14
    ld a, [hl-]                                   ; $620b: $3a

jr_0b0_620c:
    rra                                           ; $620c: $1f
    sbc a                                         ; $620d: $9f
    ld e, l                                       ; $620e: $5d

jr_0b0_620f:
    ld [hl], e                                    ; $620f: $73
    inc e                                         ; $6210: $1c
    ld h, [hl]                                    ; $6211: $66
    ld c, h                                       ; $6212: $4c
    sbc h                                         ; $6213: $9c
    cpl                                           ; $6214: $2f
    and [hl]                                      ; $6215: $a6
    nop                                           ; $6216: $00
    jp hl                                         ; $6217: $e9


    inc e                                         ; $6218: $1c
    nop                                           ; $6219: $00

jr_0b0_621a:
    nop                                           ; $621a: $00
    rst $38                                       ; $621b: $ff
    ld a, a                                       ; $621c: $7f
    ld h, [hl]                                    ; $621d: $66
    ld c, h                                       ; $621e: $4c
    nop                                           ; $621f: $00
    jr nz, jr_0b0_6222                            ; $6220: $20 $00

jr_0b0_6222:
    inc d                                         ; $6222: $14
    ld hl, sp+$62                                 ; $6223: $f8 $62
    ld l, l                                       ; $6225: $6d
    dec a                                         ; $6226: $3d
    rst $38                                       ; $6227: $ff
    ld a, a                                       ; $6228: $7f
    rlca                                          ; $6229: $07
    ld [$525d], sp                                ; $622a: $08 $5d $52
    ld l, l                                       ; $622d: $6d
    dec a                                         ; $622e: $3d
    ld a, [hl-]                                   ; $622f: $3a

jr_0b0_6230:
    ld l, e                                       ; $6230: $6b
    daa                                           ; $6231: $27
    jr nz, @-$43                                  ; $6232: $20 $bb

    ld c, l                                       ; $6234: $4d
    rrca                                          ; $6235: $0f
    add hl, sp                                    ; $6236: $39
    sbc l                                         ; $6237: $9d
    ld [hl], a                                    ; $6238: $77
    ld c, b                                       ; $6239: $48
    inc c                                         ; $623a: $0c
    or h                                          ; $623b: $b4
    add hl, sp                                    ; $623c: $39
    ld e, a                                       ; $623d: $5f
    ld [hl], a                                    ; $623e: $77
    rra                                           ; $623f: $1f
    add hl, sp                                    ; $6240: $39
    and a                                         ; $6241: $a7
    inc c                                         ; $6242: $0c
    ret c                                         ; $6243: $d8

    ld e, $9d                                     ; $6244: $1e $9d
    jr @-$01                                      ; $6246: $18 $fd

    daa                                           ; $6248: $27
    and a                                         ; $6249: $a7
    inc c                                         ; $624a: $0c
    or [hl]                                       ; $624b: $b6
    ld e, $66                                     ; $624c: $1e $66
    ld c, h                                       ; $624e: $4c
    sbc h                                         ; $624f: $9c
    daa                                           ; $6250: $27
    nop                                           ; $6251: $00
    nop                                           ; $6252: $00
    rst $38                                       ; $6253: $ff
    ld a, a                                       ; $6254: $7f
    ld b, l                                       ; $6255: $45
    ld c, b                                       ; $6256: $48
    nop                                           ; $6257: $00
    jr nz, jr_0b0_625a                            ; $6258: $20 $00

jr_0b0_625a:
    nop                                           ; $625a: $00
    rst $38                                       ; $625b: $ff
    ld a, a                                       ; $625c: $7f
    nop                                           ; $625d: $00
    jr nz, jr_0b0_6288                            ; $625e: $20 $28

    ld [$0828], sp                                ; $6260: $08 $28 $08
    add hl, de                                    ; $6263: $19
    add hl, hl                                    ; $6264: $29
    cp a                                          ; $6265: $bf
    ld e, [hl]                                    ; $6266: $5e
    cp l                                          ; $6267: $bd

jr_0b0_6268:
    dec a                                         ; $6268: $3d
    ld b, $18                                     ; $6269: $06 $18
    sbc [hl]                                      ; $626b: $9e
    ld [hl], a                                    ; $626c: $77
    ld l, l                                       ; $626d: $6d
    add hl, sp                                    ; $626e: $39
    sub h                                         ; $626f: $94
    jr nc, jr_0b0_62dc                            ; $6270: $30 $6a

    inc e                                         ; $6272: $1c
    ccf                                           ; $6273: $3f
    ld c, l                                       ; $6274: $4d
    adc l                                         ; $6275: $8d
    dec c                                         ; $6276: $0d
    ld e, a                                       ; $6277: $5f
    ld [hl], a                                    ; $6278: $77
    add l                                         ; $6279: $85
    nop                                           ; $627a: $00
    inc sp                                        ; $627b: $33
    ld d, $f9                                     ; $627c: $16 $f9
    ld [hl+], a                                   ; $627e: $22
    ld a, [hl+]                                   ; $627f: $2a
    ld de, $14c8                                  ; $6280: $11 $c8 $14
    ld [hl], h                                    ; $6283: $74
    ld a, [de]                                    ; $6284: $1a
    ld a, [hl-]                                   ; $6285: $3a
    inc hl                                        ; $6286: $23
    cp l                                          ; $6287: $bd

jr_0b0_6288:
    cpl                                           ; $6288: $2f
    nop                                           ; $6289: $00
    nop                                           ; $628a: $00
    rst $38                                       ; $628b: $ff
    ld a, a                                       ; $628c: $7f
    nop                                           ; $628d: $00
    jr nz, @+$47                                  ; $628e: $20 $45

    ld c, b                                       ; $6290: $48
    nop                                           ; $6291: $00
    nop                                           ; $6292: $00
    rst $38                                       ; $6293: $ff
    ld a, a                                       ; $6294: $7f
    nop                                           ; $6295: $00
    jr nz, @-$6a                                  ; $6296: $20 $94

    jr nc, jr_0b0_6230                            ; $6298: $30 $96

    inc d                                         ; $629a: $14
    cp [hl]                                       ; $629b: $be
    dec a                                         ; $629c: $3d
    ld a, [hl-]                                   ; $629d: $3a
    add hl, hl                                    ; $629e: $29
    ld e, a                                       ; $629f: $5f
    ld d, d                                       ; $62a0: $52
    ld b, $18                                     ; $62a1: $06 $18
    sbc h                                         ; $62a3: $9c
    ld [hl], e                                    ; $62a4: $73
    ld l, l                                       ; $62a5: $6d
    dec a                                         ; $62a6: $3d
    rst $18                                       ; $62a7: $df
    ld h, d                                       ; $62a8: $62
    dec b                                         ; $62a9: $05
    inc h                                         ; $62aa: $24
    ld a, a                                       ; $62ab: $7f
    ld h, d                                       ; $62ac: $62
    ldh a, [$34]                                  ; $62ad: $f0 $34

jr_0b0_62af:
    ld [$4314], a                                 ; $62af: $ea $14 $43
    nop                                           ; $62b2: $00
    sub l                                         ; $62b3: $95
    ld a, [de]                                    ; $62b4: $1a
    rst $08                                       ; $62b5: $cf
    ld de, $277c                                  ; $62b6: $11 $7c $27
    ld h, h                                       ; $62b9: $64
    nop                                           ; $62ba: $00
    ld [hl], l                                    ; $62bb: $75
    ld a, [de]                                    ; $62bc: $1a
    jp hl                                         ; $62bd: $e9


    jr jr_0b0_633c                                ; $62be: $18 $7c

    daa                                           ; $62c0: $27
    nop                                           ; $62c1: $00
    nop                                           ; $62c2: $00
    rst $38                                       ; $62c3: $ff
    ld a, a                                       ; $62c4: $7f
    nop                                           ; $62c5: $00
    jr nz, jr_0b0_6268                            ; $62c6: $20 $a0

    nop                                           ; $62c8: $00
    nop                                           ; $62c9: $00
    nop                                           ; $62ca: $00
    rst $38                                       ; $62cb: $ff
    ld a, a                                       ; $62cc: $7f
    nop                                           ; $62cd: $00
    jr nz, jr_0b0_62af                            ; $62ce: $20 $df

    ld h, d                                       ; $62d0: $62
    nop                                           ; $62d1: $00
    nop                                           ; $62d2: $00
    ld a, [$7524]                                 ; $62d3: $fa $24 $75
    db $10                                        ; $62d6: $10
    cp [hl]                                       ; $62d7: $be
    add hl, sp                                    ; $62d8: $39
    rlca                                          ; $62d9: $07
    db $10                                        ; $62da: $10
    ccf                                           ; $62db: $3f

jr_0b0_62dc:
    ld c, [hl]                                    ; $62dc: $4e
    ld a, $6b                                     ; $62dd: $3e $6b
    ld l, l                                       ; $62df: $6d
    dec a                                         ; $62e0: $3d
    add e                                         ; $62e1: $83
    inc b                                         ; $62e2: $04
    db $fc                                        ; $62e3: $fc
    ld h, [hl]                                    ; $62e4: $66
    sla h                                         ; $62e5: $cb $24
    ld d, a                                       ; $62e7: $57
    dec d                                         ; $62e8: $15
    ld b, e                                       ; $62e9: $43
    nop                                           ; $62ea: $00
    pop af                                        ; $62eb: $f1
    ld de, $277c                                  ; $62ec: $11 $7c $27
    ld c, h                                       ; $62ef: $4c
    add hl, bc                                    ; $62f0: $09
    ld b, d                                       ; $62f1: $42
    nop                                           ; $62f2: $00
    rst $10                                       ; $62f3: $d7
    ld e, $ff                                     ; $62f4: $1e $ff
    cpl                                           ; $62f6: $2f
    ld b, $11                                     ; $62f7: $06 $11
    nop                                           ; $62f9: $00
    jr nz, @+$2a                                  ; $62fa: $20 $28

    ld a, [de]                                    ; $62fc: $1a
    ld [hl], d                                    ; $62fd: $72
    ccf                                           ; $62fe: $3f
    pop bc                                        ; $62ff: $c1
    inc b                                         ; $6300: $04
    nop                                           ; $6301: $00
    nop                                           ; $6302: $00
    rst $38                                       ; $6303: $ff
    ld a, a                                       ; $6304: $7f
    nop                                           ; $6305: $00
    jr nz, @+$6f                                  ; $6306: $20 $6d

    dec a                                         ; $6308: $3d
    nop                                           ; $6309: $00
    nop                                           ; $630a: $00
    inc sp                                        ; $630b: $33
    ld [$1cdb], sp                                ; $630c: $08 $db $1c
    ld d, a                                       ; $630f: $57
    db $10                                        ; $6310: $10
    rlca                                          ; $6311: $07
    db $10                                        ; $6312: $10
    sbc a                                         ; $6313: $9f
    add hl, sp                                    ; $6314: $39
    sbc a                                         ; $6315: $9f
    ld e, d                                       ; $6316: $5a
    ld l, l                                       ; $6317: $6d
    dec a                                         ; $6318: $3d
    and d                                         ; $6319: $a2
    nop                                           ; $631a: $00
    xor e                                         ; $631b: $ab
    ld h, $e7                                     ; $631c: $26 $e7
    dec d                                         ; $631e: $15
    ld d, c                                       ; $631f: $51
    ccf                                           ; $6320: $3f
    and b                                         ; $6321: $a0
    nop                                           ; $6322: $00
    ld de, $6312                                  ; $6323: $11 $12 $63
    add hl, bc                                    ; $6326: $09
    ld h, h                                       ; $6327: $64
    nop                                           ; $6328: $00
    and c                                         ; $6329: $a1
    nop                                           ; $632a: $00
    adc d                                         ; $632b: $8a
    ld [hl+], a                                   ; $632c: $22
    sub h                                         ; $632d: $94
    ld b, a                                       ; $632e: $47
    sub l                                         ; $632f: $95
    ld a, [de]                                    ; $6330: $1a
    nop                                           ; $6331: $00
    jr nz, jr_0b0_63a5                            ; $6332: $20 $71

    ccf                                           ; $6334: $3f
    and b                                         ; $6335: $a0
    nop                                           ; $6336: $00
    ld h, l                                       ; $6337: $65
    dec c                                         ; $6338: $0d
    nop                                           ; $6339: $00
    nop                                           ; $633a: $00
    rst $38                                       ; $633b: $ff

jr_0b0_633c:
    ld a, a                                       ; $633c: $7f
    nop                                           ; $633d: $00
    jr nz, @+$6f                                  ; $633e: $20 $6d

    dec a                                         ; $6340: $3d
    nop                                           ; $6341: $00
    nop                                           ; $6342: $00
    rst $38                                       ; $6343: $ff
    ld a, a                                       ; $6344: $7f
    inc d                                         ; $6345: $14
    ld [$1078], sp                                ; $6346: $08 $78 $10
    ld h, d                                       ; $6349: $62
    nop                                           ; $634a: $00
    cp h                                          ; $634b: $bc
    inc e                                         ; $634c: $1c
    rra                                           ; $634d: $1f
    ld c, d                                       ; $634e: $4a
    ld a, $2d                                     ; $634f: $3e $2d
    pop bc                                        ; $6351: $c1
    nop                                           ; $6352: $00
    sub e                                         ; $6353: $93
    ld b, a                                       ; $6354: $47
    ld c, b                                       ; $6355: $48
    ld a, [de]                                    ; $6356: $1a
    ld e, a                                       ; $6357: $5f
    ld h, e                                       ; $6358: $63
    ld l, c                                       ; $6359: $69
    ld e, $b5                                     ; $635a: $1e $b5
    ld c, e                                       ; $635c: $4b
    db $ec                                        ; $635d: $ec
    ld a, [hl+]                                   ; $635e: $2a
    rrca                                          ; $635f: $0f
    scf                                           ; $6360: $37
    inc hl                                        ; $6361: $23
    add hl, bc                                    ; $6362: $09

jr_0b0_6363:
    db $ec                                        ; $6363: $ec
    ld a, [hl+]                                   ; $6364: $2a
    sub e                                         ; $6365: $93
    ld b, a                                       ; $6366: $47
    ld l, c                                       ; $6367: $69
    ld e, $00                                     ; $6368: $1e $00
    jr nz, jr_0b0_6363                            ; $636a: $20 $f7

    add hl, sp                                    ; $636c: $39
    push hl                                       ; $636d: $e5
    ld [$56fe], sp                                ; $636e: $08 $fe $56
    nop                                           ; $6371: $00
    nop                                           ; $6372: $00
    nop                                           ; $6373: $00
    jr nz, jr_0b0_6395                            ; $6374: $20 $1f

    ld c, d                                       ; $6376: $4a
    ld a, $2d                                     ; $6377: $3e $2d
    nop                                           ; $6379: $00
    nop                                           ; $637a: $00
    rst $38                                       ; $637b: $ff
    ld a, a                                       ; $637c: $7f
    ld de, $1404                                  ; $637d: $11 $04 $14
    inc b                                         ; $6380: $04
    jp z, $bf14                                   ; $6381: $ca $14 $bf

    ld d, d                                       ; $6384: $52
    ld a, b                                       ; $6385: $78
    db $10                                        ; $6386: $10
    dec e                                         ; $6387: $1d
    dec h                                         ; $6388: $25
    and b                                         ; $6389: $a0
    nop                                           ; $638a: $00
    ld hl, sp+$39                                 ; $638b: $f8 $39
    jp z, $dd14                                   ; $638d: $ca $14 $dd

    ld d, d                                       ; $6390: $52
    and b                                         ; $6391: $a0
    nop                                           ; $6392: $00
    ld sp, hl                                     ; $6393: $f9
    add hl, sp                                    ; $6394: $39

jr_0b0_6395:
    jp z, $dd14                                   ; $6395: $ca $14 $dd

    ld d, [hl]                                    ; $6398: $56
    and b                                         ; $6399: $a0
    nop                                           ; $639a: $00
    cp h                                          ; $639b: $bc
    ld c, [hl]                                    ; $639c: $4e
    jp z, Jump_0b0_5f14                           ; $639d: $ca $14 $5f

    ld h, e                                       ; $63a0: $63
    nop                                           ; $63a1: $00
    jr nz, @+$61                                  ; $63a2: $20 $5f

    ld h, e                                       ; $63a4: $63

jr_0b0_63a5:
    jp z, $0114                                   ; $63a5: $ca $14 $01

    inc d                                         ; $63a8: $14
    nop                                           ; $63a9: $00
    nop                                           ; $63aa: $00
    nop                                           ; $63ab: $00
    jr nz, jr_0b0_6426                            ; $63ac: $20 $78

    db $10                                        ; $63ae: $10
    dec e                                         ; $63af: $1d
    dec h                                         ; $63b0: $25
    nop                                           ; $63b1: $00
    nop                                           ; $63b2: $00
    rst $38                                       ; $63b3: $ff
    ld a, a                                       ; $63b4: $7f
    ld de, $1304                                  ; $63b5: $11 $04 $13
    inc b                                         ; $63b8: $04
    jp z, $f914                                   ; $63b9: $ca $14 $f9

    add hl, sp                                    ; $63bc: $39
    ld d, [hl]                                    ; $63bd: $56
    inc c                                         ; $63be: $0c
    rra                                           ; $63bf: $1f
    ld e, e                                       ; $63c0: $5b
    xor c                                         ; $63c1: $a9
    inc d                                         ; $63c2: $14
    add hl, de                                    ; $63c3: $19
    ld a, $6f                                     ; $63c4: $3e $6f
    ld sp, $737c                                  ; $63c6: $31 $7c $73
    jp z, $f914                                   ; $63c9: $ca $14 $f9

    add hl, sp                                    ; $63cc: $39
    cp $5e                                        ; $63cd: $fe $5e
    ld a, d                                       ; $63cf: $7a
    ld c, d                                       ; $63d0: $4a
    ld b, h                                       ; $63d1: $44
    ld [$591f], sp                                ; $63d2: $08 $1f $59
    ld bc, $5e3c                                  ; $63d5: $01 $3c $5e
    ld [hl], a                                    ; $63d8: $77
    nop                                           ; $63d9: $00
    jr nz, jr_0b0_63fb                            ; $63da: $20 $1f

    ld e, c                                       ; $63dc: $59

jr_0b0_63dd:
    ld bc, $5e3c                                  ; $63dd: $01 $3c $5e
    ld [hl], a                                    ; $63e0: $77
    nop                                           ; $63e1: $00
    jr nz, jr_0b0_63dd                            ; $63e2: $20 $f9

    add hl, sp                                    ; $63e4: $39
    ld d, [hl]                                    ; $63e5: $56

jr_0b0_63e6:
    inc c                                         ; $63e6: $0c
    rra                                           ; $63e7: $1f
    ld e, e                                       ; $63e8: $5b
    nop                                           ; $63e9: $00
    nop                                           ; $63ea: $00
    rst $38                                       ; $63eb: $ff
    ld a, a                                       ; $63ec: $7f
    db $10                                        ; $63ed: $10
    inc b                                         ; $63ee: $04
    ld [de], a                                    ; $63ef: $12
    inc b                                         ; $63f0: $04
    jp z, Jump_000_1214                           ; $63f1: $ca $14 $12

    inc b                                         ; $63f4: $04
    ld d, l                                       ; $63f5: $55
    inc c                                         ; $63f6: $0c
    inc sp                                        ; $63f7: $33
    ld [$1827], sp                                ; $63f8: $08 $27 $18

jr_0b0_63fb:
    cp e                                          ; $63fb: $bb
    ld b, c                                       ; $63fc: $41
    pop de                                        ; $63fd: $d1
    inc [hl]                                      ; $63fe: $34
    ld a, [hl-]                                   ; $63ff: $3a
    ld l, e                                       ; $6400: $6b
    jp z, Jump_000_1814                           ; $6401: $ca $14 $18

    ld a, $fe                                     ; $6404: $3e $fe
    ld e, d                                       ; $6406: $5a
    sub h                                         ; $6407: $94

jr_0b0_6408:
    jr c, jr_0b0_640a                             ; $6408: $38 $00

jr_0b0_640a:
    inc d                                         ; $640a: $14
    inc a                                         ; $640b: $3c
    ld e, [hl]                                    ; $640c: $5e
    or e                                          ; $640d: $b3
    jr c, @+$01                                   ; $640e: $38 $ff

jr_0b0_6410:
    ld a, a                                       ; $6410: $7f
    nop                                           ; $6411: $00
    jr nz, jr_0b0_6450                            ; $6412: $20 $3c

    ld e, [hl]                                    ; $6414: $5e
    or e                                          ; $6415: $b3
    jr c, @+$01                                   ; $6416: $38 $ff

    ld a, a                                       ; $6418: $7f
    nop                                           ; $6419: $00
    jr nz, jr_0b0_642e                            ; $641a: $20 $12

    inc b                                         ; $641c: $04
    ld d, l                                       ; $641d: $55
    inc c                                         ; $641e: $0c
    inc sp                                        ; $641f: $33
    ld [$0000], sp                                ; $6420: $08 $00 $00
    rst $38                                       ; $6423: $ff
    ld a, a                                       ; $6424: $7f
    rrca                                          ; $6425: $0f

jr_0b0_6426:
    inc b                                         ; $6426: $04
    nop                                           ; $6427: $00
    jr nz, @+$12                                  ; $6428: $20 $10

    inc b                                         ; $642a: $04
    inc de                                        ; $642b: $13
    inc b                                         ; $642c: $04
    ld [de], a                                    ; $642d: $12

jr_0b0_642e:
    inc b                                         ; $642e: $04
    inc sp                                        ; $642f: $33

jr_0b0_6430:
    ld [$1447], sp                                ; $6430: $08 $47 $14
    sbc h                                         ; $6433: $9c
    ld c, c                                       ; $6434: $49
    sbc h                                         ; $6435: $9c
    ld [hl], e                                    ; $6436: $73
    jr nc, jr_0b0_646a                            ; $6437: $30 $31

    jp z, $f814                                   ; $6439: $ca $14 $f8

    dec a                                         ; $643c: $3d
    ld e, $66                                     ; $643d: $1e $66
    sub h                                         ; $643f: $94

jr_0b0_6440:
    inc l                                         ; $6440: $2c
    nop                                           ; $6441: $00
    ld [$519a], sp                                ; $6442: $08 $9a $51
    rst $38                                       ; $6445: $ff
    ld a, a                                       ; $6446: $7f
    adc b                                         ; $6447: $88

jr_0b0_6448:
    inc [hl]                                      ; $6448: $34
    nop                                           ; $6449: $00
    jr nz, jr_0b0_63e6                            ; $644a: $20 $9a

    ld d, c                                       ; $644c: $51
    rst $38                                       ; $644d: $ff
    ld a, a                                       ; $644e: $7f
    adc b                                         ; $644f: $88

jr_0b0_6450:
    inc [hl]                                      ; $6450: $34
    nop                                           ; $6451: $00
    jr nz, @+$15                                  ; $6452: $20 $13

    inc b                                         ; $6454: $04
    ld [de], a                                    ; $6455: $12
    inc b                                         ; $6456: $04
    inc sp                                        ; $6457: $33
    ld [$0000], sp                                ; $6458: $08 $00 $00
    rst $38                                       ; $645b: $ff
    ld a, a                                       ; $645c: $7f
    rrca                                          ; $645d: $0f
    inc b                                         ; $645e: $04
    nop                                           ; $645f: $00
    jr nz, jr_0b0_6462                            ; $6460: $20 $00

jr_0b0_6462:
    nop                                           ; $6462: $00
    db $10                                        ; $6463: $10
    inc b                                         ; $6464: $04
    ld de, $1204                                  ; $6465: $11 $04 $12
    inc b                                         ; $6468: $04
    nop                                           ; $6469: $00

jr_0b0_646a:
    nop                                           ; $646a: $00
    rst $38                                       ; $646b: $ff
    ld a, a                                       ; $646c: $7f
    rst $38                                       ; $646d: $ff
    ld a, a                                       ; $646e: $7f
    adc b                                         ; $646f: $88
    inc [hl]                                      ; $6470: $34
    nop                                           ; $6471: $00
    nop                                           ; $6472: $00
    rst $38                                       ; $6473: $ff
    ld a, a                                       ; $6474: $7f
    rst $38                                       ; $6475: $ff
    ld a, a                                       ; $6476: $7f
    adc b                                         ; $6477: $88
    inc [hl]                                      ; $6478: $34
    nop                                           ; $6479: $00
    nop                                           ; $647a: $00
    rst $38                                       ; $647b: $ff
    ld a, a                                       ; $647c: $7f
    nop                                           ; $647d: $00
    jr nz, jr_0b0_6408                            ; $647e: $20 $88

    inc [hl]                                      ; $6480: $34
    nop                                           ; $6481: $00
    jr nz, @+$01                                  ; $6482: $20 $ff

    ld a, a                                       ; $6484: $7f
    nop                                           ; $6485: $00
    jr nz, jr_0b0_6410                            ; $6486: $20 $88

    inc [hl]                                      ; $6488: $34
    nop                                           ; $6489: $00
    jr nz, jr_0b0_649c                            ; $648a: $20 $10

    inc b                                         ; $648c: $04
    ld de, $1204                                  ; $648d: $11 $04 $12
    inc b                                         ; $6490: $04
    nop                                           ; $6491: $00
    nop                                           ; $6492: $00
    rst $38                                       ; $6493: $ff
    ld a, a                                       ; $6494: $7f
    nop                                           ; $6495: $00
    jr nz, jr_0b0_64aa                            ; $6496: $20 $12

    inc b                                         ; $6498: $04
    nop                                           ; $6499: $00
    nop                                           ; $649a: $00
    rst $38                                       ; $649b: $ff

jr_0b0_649c:
    ld a, a                                       ; $649c: $7f
    nop                                           ; $649d: $00
    jr nz, jr_0b0_64b2                            ; $649e: $20 $12

    inc b                                         ; $64a0: $04
    nop                                           ; $64a1: $00
    nop                                           ; $64a2: $00
    nop                                           ; $64a3: $00
    jr nz, jr_0b0_64a6                            ; $64a4: $20 $00

jr_0b0_64a6:
    jr nz, jr_0b0_6430                            ; $64a6: $20 $88

    inc [hl]                                      ; $64a8: $34
    nop                                           ; $64a9: $00

jr_0b0_64aa:
    nop                                           ; $64aa: $00
    nop                                           ; $64ab: $00
    jr nz, jr_0b0_64ae                            ; $64ac: $20 $00

jr_0b0_64ae:
    jr nz, @-$76                                  ; $64ae: $20 $88

    inc [hl]                                      ; $64b0: $34
    nop                                           ; $64b1: $00

jr_0b0_64b2:
    nop                                           ; $64b2: $00
    nop                                           ; $64b3: $00
    jr nz, jr_0b0_64b6                            ; $64b4: $20 $00

jr_0b0_64b6:
    jr nz, jr_0b0_6440                            ; $64b6: $20 $88

    inc [hl]                                      ; $64b8: $34
    nop                                           ; $64b9: $00
    jr nz, jr_0b0_64bc                            ; $64ba: $20 $00

jr_0b0_64bc:
    jr nz, jr_0b0_64be                            ; $64bc: $20 $00

jr_0b0_64be:
    jr nz, jr_0b0_6448                            ; $64be: $20 $88

    inc [hl]                                      ; $64c0: $34
    nop                                           ; $64c1: $00
    jr nz, jr_0b0_64c4                            ; $64c2: $20 $00

jr_0b0_64c4:
    jr nz, @+$01                                  ; $64c4: $20 $ff

    ld l, a                                       ; $64c6: $6f
    cp [hl]                                       ; $64c7: $be
    dec hl                                        ; $64c8: $2b
    nop                                           ; $64c9: $00
    jr nz, jr_0b0_64cc                            ; $64ca: $20 $00

jr_0b0_64cc:
    jr nz, @+$01                                  ; $64cc: $20 $ff

    ld l, a                                       ; $64ce: $6f
    cp [hl]                                       ; $64cf: $be
    dec hl                                        ; $64d0: $2b
    nop                                           ; $64d1: $00
    jr nz, jr_0b0_64d4                            ; $64d2: $20 $00

jr_0b0_64d4:
    jr nz, @+$01                                  ; $64d4: $20 $ff

    ld l, a                                       ; $64d6: $6f
    cp [hl]                                       ; $64d7: $be
    dec hl                                        ; $64d8: $2b
    nop                                           ; $64d9: $00
    nop                                           ; $64da: $00
    ld e, h                                       ; $64db: $5c
    inc bc                                        ; $64dc: $03
    rst $18                                       ; $64dd: $df
    ld c, e                                       ; $64de: $4b
    nop                                           ; $64df: $00
    jr nz, jr_0b0_64e2                            ; $64e0: $20 $00

jr_0b0_64e2:
    nop                                           ; $64e2: $00
    nop                                           ; $64e3: $00
    jr nz, @-$1f                                  ; $64e4: $20 $df

    ld c, e                                       ; $64e6: $4b
    nop                                           ; $64e7: $00
    jr nz, jr_0b0_64ea                            ; $64e8: $20 $00

jr_0b0_64ea:
    jr nz, jr_0b0_64ec                            ; $64ea: $20 $00

jr_0b0_64ec:
    jr nz, @-$1f                                  ; $64ec: $20 $df

    ld c, e                                       ; $64ee: $4b
    nop                                           ; $64ef: $00
    jr nz, jr_0b0_64f2                            ; $64f0: $20 $00

jr_0b0_64f2:
    jr nz, jr_0b0_64f4                            ; $64f2: $20 $00

jr_0b0_64f4:
    jr nz, @-$1f                                  ; $64f4: $20 $df

    ld c, e                                       ; $64f6: $4b
    nop                                           ; $64f7: $00
    jr nz, jr_0b0_64fa                            ; $64f8: $20 $00

jr_0b0_64fa:
    jr nz, jr_0b0_64fc                            ; $64fa: $20 $00

jr_0b0_64fc:
    jr nz, @+$01                                  ; $64fc: $20 $ff

    ld l, a                                       ; $64fe: $6f
    cp [hl]                                       ; $64ff: $be
    dec hl                                        ; $6500: $2b
    nop                                           ; $6501: $00
    jr nz, jr_0b0_6504                            ; $6502: $20 $00

jr_0b0_6504:
    jr nz, @+$01                                  ; $6504: $20 $ff

    ld l, a                                       ; $6506: $6f
    cp [hl]                                       ; $6507: $be
    dec hl                                        ; $6508: $2b
    nop                                           ; $6509: $00
    jr nz, jr_0b0_650c                            ; $650a: $20 $00

jr_0b0_650c:
    jr nz, @+$01                                  ; $650c: $20 $ff

    ld l, a                                       ; $650e: $6f
    cp [hl]                                       ; $650f: $be
    dec hl                                        ; $6510: $2b
    ld [bc], a                                    ; $6511: $02
    inc b                                         ; $6512: $04
    cp [hl]                                       ; $6513: $be
    rla                                           ; $6514: $17
    rst $38                                       ; $6515: $ff
    ld l, a                                       ; $6516: $6f
    dec d                                         ; $6517: $15
    inc h                                         ; $6518: $24
    nop                                           ; $6519: $00
    ld [$204c], sp                                ; $651a: $08 $4c $20
    cp a                                          ; $651d: $bf
    ld d, h                                       ; $651e: $54
    inc de                                        ; $651f: $13
    inc e                                         ; $6520: $1c
    nop                                           ; $6521: $00
    nop                                           ; $6522: $00
    nop                                           ; $6523: $00
    jr nz, @-$3f                                  ; $6524: $20 $bf

    ld d, h                                       ; $6526: $54
    inc de                                        ; $6527: $13
    inc e                                         ; $6528: $1c
    nop                                           ; $6529: $00
    jr nz, jr_0b0_652c                            ; $652a: $20 $00

jr_0b0_652c:
    jr nz, @-$3f                                  ; $652c: $20 $bf

    ld d, h                                       ; $652e: $54
    inc de                                        ; $652f: $13
    inc e                                         ; $6530: $1c
    nop                                           ; $6531: $00
    jr nz, jr_0b0_6534                            ; $6532: $20 $00

jr_0b0_6534:
    jr nz, @+$01                                  ; $6534: $20 $ff

    ld l, a                                       ; $6536: $6f
    cp [hl]                                       ; $6537: $be
    dec hl                                        ; $6538: $2b
    nop                                           ; $6539: $00
    jr nz, jr_0b0_653c                            ; $653a: $20 $00

jr_0b0_653c:
    jr nz, @+$01                                  ; $653c: $20 $ff

Jump_0b0_653e:
    ld l, a                                       ; $653e: $6f
    cp [hl]                                       ; $653f: $be
    dec hl                                        ; $6540: $2b
    nop                                           ; $6541: $00
    jr nz, jr_0b0_653c                            ; $6542: $20 $f8

    ld b, $be                                     ; $6544: $06 $be
    daa                                           ; $6546: $27
    ld e, e                                       ; $6547: $5b
    inc bc                                        ; $6548: $03
    nop                                           ; $6549: $00
    nop                                           ; $654a: $00
    ld hl, sp+$0e                                 ; $654b: $f8 $0e
    cp d                                          ; $654d: $ba
    ld h, e                                       ; $654e: $63
    db $ec                                        ; $654f: $ec
    ld [$0000], sp                                ; $6550: $08 $00 $00
    ld a, l                                       ; $6553: $7d
    ld c, h                                       ; $6554: $4c
    ld e, c                                       ; $6555: $59
    inc bc                                        ; $6556: $03
    ld c, a                                       ; $6557: $4f
    inc d                                         ; $6558: $14
    nop                                           ; $6559: $00
    nop                                           ; $655a: $00
    ld [de], a                                    ; $655b: $12
    jr nz, jr_0b0_65dd                            ; $655c: $20 $7f

    ld b, b                                       ; $655e: $40
    nop                                           ; $655f: $00
    jr nz, jr_0b0_6562                            ; $6560: $20 $00

jr_0b0_6562:
    jr nz, jr_0b0_6576                            ; $6562: $20 $12

jr_0b0_6564:
    jr nz, @+$81                                  ; $6564: $20 $7f

    ld b, b                                       ; $6566: $40
    nop                                           ; $6567: $00
    jr nz, jr_0b0_656a                            ; $6568: $20 $00

jr_0b0_656a:
    jr nz, jr_0b0_6564                            ; $656a: $20 $f8

jr_0b0_656c:
    ld b, $be                                     ; $656c: $06 $be
    daa                                           ; $656e: $27
    ld e, e                                       ; $656f: $5b
    inc bc                                        ; $6570: $03

jr_0b0_6571:
    nop                                           ; $6571: $00
    jr nz, jr_0b0_656c                            ; $6572: $20 $f8

    ld b, $be                                     ; $6574: $06 $be

jr_0b0_6576:
    daa                                           ; $6576: $27
    ld e, e                                       ; $6577: $5b
    inc bc                                        ; $6578: $03

jr_0b0_6579:
    nop                                           ; $6579: $00
    nop                                           ; $657a: $00
    ldh a, [rNR11]                                ; $657b: $f0 $11
    sub l                                         ; $657d: $95
    ld a, [bc]                                    ; $657e: $0a
    nop                                           ; $657f: $00
    jr nz, jr_0b0_65c5                            ; $6580: $20 $43

    nop                                           ; $6582: $00
    ld [hl], d                                    ; $6583: $72
    ld b, $b9                                     ; $6584: $06 $b9
    ld e, a                                       ; $6586: $5f
    rst $38                                       ; $6587: $ff
    rla                                           ; $6588: $17
    nop                                           ; $6589: $00
    nop                                           ; $658a: $00
    ld hl, sp+$06                                 ; $658b: $f8 $06
    rst $18                                       ; $658d: $df
    ld a, e                                       ; $658e: $7b
    xor l                                         ; $658f: $ad

jr_0b0_6590:
    inc c                                         ; $6590: $0c
    nop                                           ; $6591: $00
    jr jr_0b0_660c                                ; $6592: $18 $78

jr_0b0_6594:
    inc [hl]                                      ; $6594: $34
    ccf                                           ; $6595: $3f
    ld h, c                                       ; $6596: $61
    ld de, $001c                                  ; $6597: $11 $1c $00
    jr nz, jr_0b0_6614                            ; $659a: $20 $78

jr_0b0_659c:
    inc [hl]                                      ; $659c: $34
    ccf                                           ; $659d: $3f
    ld h, c                                       ; $659e: $61
    ld de, $001c                                  ; $659f: $11 $1c $00
    jr nz, jr_0b0_6594                            ; $65a2: $20 $f0

    ld de, $0a95                                  ; $65a4: $11 $95 $0a
    nop                                           ; $65a7: $00
    jr nz, jr_0b0_65aa                            ; $65a8: $20 $00

jr_0b0_65aa:
    jr nz, jr_0b0_659c                            ; $65aa: $20 $f0

    ld de, $0a95                                  ; $65ac: $11 $95 $0a
    nop                                           ; $65af: $00
    jr nz, jr_0b0_65b2                            ; $65b0: $20 $00

jr_0b0_65b2:
    inc c                                         ; $65b2: $0c
    sub l                                         ; $65b3: $95
    ld a, [bc]                                    ; $65b4: $0a
    rst $18                                       ; $65b5: $df
    ld a, e                                       ; $65b6: $7b
    dec sp                                        ; $65b7: $3b
    inc bc                                        ; $65b8: $03
    ld b, e                                       ; $65b9: $43
    inc b                                         ; $65ba: $04
    rra                                           ; $65bb: $1f
    ld c, c                                       ; $65bc: $49
    rra                                           ; $65bd: $1f
    ld d, e                                       ; $65be: $53
    ld l, [hl]                                    ; $65bf: $6e
    inc d                                         ; $65c0: $14
    nop                                           ; $65c1: $00
    nop                                           ; $65c2: $00
    ld e, h                                       ; $65c3: $5c
    rrca                                          ; $65c4: $0f

jr_0b0_65c5:
    rst $18                                       ; $65c5: $df
    ld a, e                                       ; $65c6: $7b
    or b                                          ; $65c7: $b0
    ld bc, $0c00                                  ; $65c8: $01 $00 $0c
    cp h                                          ; $65cb: $bc
    inc bc                                        ; $65cc: $03
    db $10                                        ; $65cd: $10
    jr @+$1d                                      ; $65ce: $18 $1b

    jr nc, jr_0b0_65d2                            ; $65d0: $30 $00

jr_0b0_65d2:
    jr nz, jr_0b0_6590                            ; $65d2: $20 $bc

    inc bc                                        ; $65d4: $03
    db $10                                        ; $65d5: $10
    jr jr_0b0_65f3                                ; $65d6: $18 $1b

    jr nc, jr_0b0_65da                            ; $65d8: $30 $00

jr_0b0_65da:
    jr nz, jr_0b0_6571                            ; $65da: $20 $95

    ld a, [bc]                                    ; $65dc: $0a

jr_0b0_65dd:
    rst $18                                       ; $65dd: $df
    ld a, e                                       ; $65de: $7b
    dec sp                                        ; $65df: $3b
    inc bc                                        ; $65e0: $03
    nop                                           ; $65e1: $00

jr_0b0_65e2:
    jr nz, jr_0b0_6579                            ; $65e2: $20 $95

    ld c, $7c                                     ; $65e4: $0e $7c
    inc bc                                        ; $65e6: $03
    ret c                                         ; $65e7: $d8

    ld a, [bc]                                    ; $65e8: $0a
    ld bc, $7d00                                  ; $65e9: $01 $00 $7d
    dec bc                                        ; $65ec: $0b
    ld a, c                                       ; $65ed: $79
    ld c, e                                       ; $65ee: $4b
    cp a                                          ; $65ef: $bf
    add hl, de                                    ; $65f0: $19
    inc bc                                        ; $65f1: $03
    inc b                                         ; $65f2: $04

jr_0b0_65f3:
    ld [hl], h                                    ; $65f3: $74
    inc e                                         ; $65f4: $1c
    dec e                                         ; $65f5: $1d
    ld e, c                                       ; $65f6: $59
    ld e, h                                       ; $65f7: $5c
    dec d                                         ; $65f8: $15
    ld hl, $1904                                  ; $65f9: $21 $04 $19
    ld b, h                                       ; $65fc: $44
    rst $18                                       ; $65fd: $df
    ld a, e                                       ; $65fe: $7b
    sub a                                         ; $65ff: $97
    ld b, $22                                     ; $6600: $06 $22

jr_0b0_6602:
    inc b                                         ; $6602: $04
    inc de                                        ; $6603: $13
    inc e                                         ; $6604: $1c
    cp h                                          ; $6605: $bc
    ld c, b                                       ; $6606: $48
    halt                                          ; $6607: $76
    ld [bc], a                                    ; $6608: $02
    nop                                           ; $6609: $00
    jr nz, jr_0b0_661f                            ; $660a: $20 $13

jr_0b0_660c:
    inc e                                         ; $660c: $1c
    cp h                                          ; $660d: $bc
    ld c, b                                       ; $660e: $48
    halt                                          ; $660f: $76
    ld [bc], a                                    ; $6610: $02
    nop                                           ; $6611: $00
    jr nz, jr_0b0_6691                            ; $6612: $20 $7d

jr_0b0_6614:
    dec bc                                        ; $6614: $0b
    ld a, c                                       ; $6615: $79
    ld c, e                                       ; $6616: $4b
    cp a                                          ; $6617: $bf
    add hl, de                                    ; $6618: $19
    nop                                           ; $6619: $00
    inc e                                         ; $661a: $1c
    ld d, e                                       ; $661b: $53
    ld c, $be                                     ; $661c: $0e $be
    inc sp                                        ; $661e: $33

jr_0b0_661f:
    ld e, e                                       ; $661f: $5b
    inc bc                                        ; $6620: $03
    ld bc, $9600                                  ; $6621: $01 $00 $96
    ld c, a                                       ; $6624: $4f
    ld d, $11                                     ; $6625: $16 $11
    rst $18                                       ; $6627: $df
    ld b, [hl]                                    ; $6628: $46
    inc b                                         ; $6629: $04
    inc b                                         ; $662a: $04
    add hl, de                                    ; $662b: $19
    inc [hl]                                      ; $662c: $34
    ld l, [hl]                                    ; $662d: $6e
    inc c                                         ; $662e: $0c
    rst $38                                       ; $662f: $ff
    add hl, hl                                    ; $6630: $29
    nop                                           ; $6631: $00
    nop                                           ; $6632: $00
    ld e, a                                       ; $6633: $5f
    dec d                                         ; $6634: $15
    rst $38                                       ; $6635: $ff
    ld a, [hl-]                                   ; $6636: $3a
    inc l                                         ; $6637: $2c
    ld bc, $0c01                                  ; $6638: $01 $01 $0c
    cp [hl]                                       ; $663b: $be
    rrca                                          ; $663c: $0f
    ld a, a                                       ; $663d: $7f
    ld l, [hl]                                    ; $663e: $6e
    ld a, [c]                                     ; $663f: $f2
    jr jr_0b0_6642                                ; $6640: $18 $00

jr_0b0_6642:
    jr nz, jr_0b0_6602                            ; $6642: $20 $be

    rrca                                          ; $6644: $0f
    ld a, a                                       ; $6645: $7f
    ld l, [hl]                                    ; $6646: $6e
    ld a, [c]                                     ; $6647: $f2
    jr jr_0b0_664a                                ; $6648: $18 $00

jr_0b0_664a:
    jr nz, jr_0b0_65e2                            ; $664a: $20 $96

    ld c, a                                       ; $664c: $4f
    ld d, $11                                     ; $664d: $16 $11
    rst $18                                       ; $664f: $df
    ld b, [hl]                                    ; $6650: $46
    nop                                           ; $6651: $00
    inc c                                         ; $6652: $0c

jr_0b0_6653:
    ld [hl-], a                                   ; $6653: $32
    ld c, $75                                     ; $6654: $0e $75
    ld c, a                                       ; $6656: $4f
    ld e, h                                       ; $6657: $5c
    rlca                                          ; $6658: $07
    ld [bc], a                                    ; $6659: $02
    nop                                           ; $665a: $00
    ld [hl], l                                    ; $665b: $75
    ld c, a                                       ; $665c: $4f
    ld a, a                                       ; $665d: $7f
    add hl, de                                    ; $665e: $19
    db $f4                                        ; $665f: $f4
    inc c                                         ; $6660: $0c
    inc bc                                        ; $6661: $03
    nop                                           ; $6662: $00
    cp a                                          ; $6663: $bf
    dec e                                         ; $6664: $1d
    ld [hl], c                                    ; $6665: $71
    nop                                           ; $6666: $00
    rst $18                                       ; $6667: $df
    ld b, [hl]                                    ; $6668: $46
    ld b, l                                       ; $6669: $45
    inc b                                         ; $666a: $04
    ldh a, [rTIMA]                                ; $666b: $f0 $05
    ld e, a                                       ; $666d: $5f
    ld e, a                                       ; $666e: $5f
    ld e, h                                       ; $666f: $5c
    dec d                                         ; $6670: $15
    ld bc, $8c00                                  ; $6671: $01 $00 $8c
    ld bc, $3d7c                                  ; $6674: $01 $7c $3d
    halt                                          ; $6677: $76
    ld b, $00                                     ; $6678: $06 $00
    jr nz, @-$0e                                  ; $667a: $20 $f0

    dec d                                         ; $667c: $15
    ld [hl-], a                                   ; $667d: $32
    ld [de], a                                    ; $667e: $12
    halt                                          ; $667f: $76
    ld b, $00                                     ; $6680: $06 $00
    jr nz, jr_0b0_6653                            ; $6682: $20 $cf

    dec d                                         ; $6684: $15
    ld a, [hl-]                                   ; $6685: $3a
    inc bc                                        ; $6686: $03
    sub l                                         ; $6687: $95
    ld c, $00                                     ; $6688: $0e $00
    nop                                           ; $668a: $00
    ld [hl-], a                                   ; $668b: $32
    ld [de], a                                    ; $668c: $12
    ld d, h                                       ; $668d: $54
    ld c, e                                       ; $668e: $4b
    ld a, [hl-]                                   ; $668f: $3a
    rlca                                          ; $6690: $07

jr_0b0_6691:
    ld [hl+], a                                   ; $6691: $22
    nop                                           ; $6692: $00
    cp a                                          ; $6693: $bf
    dec e                                         ; $6694: $1d
    add hl, sp                                    ; $6695: $39
    ld d, e                                       ; $6696: $53
    jr jr_0b0_66aa                                ; $6697: $18 $11

    ld [bc], a                                    ; $6699: $02
    nop                                           ; $669a: $00
    ld l, a                                       ; $669b: $6f
    nop                                           ; $669c: $00
    sbc a                                         ; $669d: $9f
    add hl, de                                    ; $669e: $19
    ld b, $00                                     ; $669f: $06 $00
    ld [hl+], a                                   ; $66a1: $22
    nop                                           ; $66a2: $00
    push af                                       ; $66a3: $f5
    db $10                                        ; $66a4: $10
    sbc a                                         ; $66a5: $9f
    add hl, de                                    ; $66a6: $19
    ld c, d                                       ; $66a7: $4a
    inc d                                         ; $66a8: $14
    nop                                           ; $66a9: $00

jr_0b0_66aa:
    nop                                           ; $66aa: $00
    ld a, [hl]                                    ; $66ab: $7e
    dec d                                         ; $66ac: $15
    add hl, bc                                    ; $66ad: $09
    nop                                           ; $66ae: $00
    ld [hl], b                                    ; $66af: $70
    nop                                           ; $66b0: $00
    nop                                           ; $66b1: $00
    inc e                                         ; $66b2: $1c
    ldh a, [rNR11]                                ; $66b3: $f0 $11
    sbc [hl]                                      ; $66b5: $9e
    inc bc                                        ; $66b6: $03
    rst $18                                       ; $66b7: $df
    ld b, [hl]                                    ; $66b8: $46
    nop                                           ; $66b9: $00
    inc e                                         ; $66ba: $1c
    ld de, $de12                                  ; $66bb: $11 $12 $de
    ld d, e                                       ; $66be: $53
    dec sp                                        ; $66bf: $3b
    inc bc                                        ; $66c0: $03
    nop                                           ; $66c1: $00
    nop                                           ; $66c2: $00
    ld [hl-], a                                   ; $66c3: $32
    ld b, a                                       ; $66c4: $47
    inc hl                                        ; $66c5: $23
    inc b                                         ; $66c6: $04
    ld d, e                                       ; $66c7: $53
    ld b, a                                       ; $66c8: $47
    dec h                                         ; $66c9: $25
    nop                                           ; $66ca: $00
    ld e, h                                       ; $66cb: $5c
    dec d                                         ; $66cc: $15
    rst $18                                       ; $66cd: $df
    ld b, [hl]                                    ; $66ce: $46
    rst $18                                       ; $66cf: $df
    ld a, e                                       ; $66d0: $7b
    ld bc, $2c00                                  ; $66d1: $01 $00 $2c
    nop                                           ; $66d4: $00
    ldh a, [rNR14]                                ; $66d5: $f0 $14
    daa                                           ; $66d7: $27
    nop                                           ; $66d8: $00
    ld h, $00                                     ; $66d9: $26 $00
    ld e, h                                       ; $66db: $5c
    ld de, $3492                                  ; $66dc: $11 $92 $34
    cp $4c                                        ; $66df: $fe $4c
    ld bc, $1804                                  ; $66e1: $01 $04 $18
    dec c                                         ; $66e4: $0d
    ld c, h                                       ; $66e5: $4c
    nop                                           ; $66e6: $00
    sbc a                                         ; $66e7: $9f
    add hl, de                                    ; $66e8: $19
    nop                                           ; $66e9: $00
    inc e                                         ; $66ea: $1c
    ld [hl], d                                    ; $66eb: $72
    ld a, [de]                                    ; $66ec: $1a
    cp [hl]                                       ; $66ed: $be
    rra                                           ; $66ee: $1f
    rst $38                                       ; $66ef: $ff
    ld h, e                                       ; $66f0: $63
    nop                                           ; $66f1: $00
    ld [$4311], sp                                ; $66f2: $08 $11 $43
    rst $18                                       ; $66f5: $df
    ld h, a                                       ; $66f6: $67
    sbc l                                         ; $66f7: $9d
    dec de                                        ; $66f8: $1b
    inc hl                                        ; $66f9: $23
    inc b                                         ; $66fa: $04
    ld de, $df43                                  ; $66fb: $11 $43 $df
    ld b, [hl]                                    ; $66fe: $46
    rst $18                                       ; $66ff: $df

Call_0b0_6700:
    ld a, e                                       ; $6700: $7b
    daa                                           ; $6701: $27
    nop                                           ; $6702: $00
    rla                                           ; $6703: $17
    dec c                                         ; $6704: $0d
    rst $18                                       ; $6705: $df
    ld b, [hl]                                    ; $6706: $46
    sbc a                                         ; $6707: $9f
    add hl, de                                    ; $6708: $19
    dec b                                         ; $6709: $05
    nop                                           ; $670a: $00
    sbc l                                         ; $670b: $9d
    ld b, [hl]                                    ; $670c: $46
    rrca                                          ; $670d: $0f
    add hl, de                                    ; $670e: $19
    dec hl                                        ; $670f: $2b
    nop                                           ; $6710: $00
    ld [bc], a                                    ; $6711: $02
    nop                                           ; $6712: $00
    inc e                                         ; $6713: $1c
    jr c, jr_0b0_6741                             ; $6714: $38 $2b

    inc b                                         ; $6716: $04
    rlca                                          ; $6717: $07
    nop                                           ; $6718: $00
    nop                                           ; $6719: $00
    nop                                           ; $671a: $00
    ld e, a                                       ; $671b: $5f
    ld [hl], $df                                  ; $671c: $36 $df
    ld a, e                                       ; $671e: $7b
    ld l, [hl]                                    ; $671f: $6e
    nop                                           ; $6720: $00
    nop                                           ; $6721: $00
    inc e                                         ; $6722: $1c
    ld de, $ff3f                                  ; $6723: $11 $3f $ff
    ld a, e                                       ; $6726: $7b
    sbc l                                         ; $6727: $9d
    daa                                           ; $6728: $27
    nop                                           ; $6729: $00
    nop                                           ; $672a: $00
    db $10                                        ; $672b: $10
    ccf                                           ; $672c: $3f
    rst $18                                       ; $672d: $df
    ld e, a                                       ; $672e: $5f
    ld a, l                                       ; $672f: $7d
    inc bc                                        ; $6730: $03
    inc hl                                        ; $6731: $23
    inc b                                         ; $6732: $04
    ldh a, [$3e]                                  ; $6733: $f0 $3e
    or h                                          ; $6735: $b4
    inc b                                         ; $6736: $04
    ld de, $203f                                  ; $6737: $11 $3f $20
    ld [bc], a                                    ; $673a: $02
    rst $38                                       ; $673b: $ff
    ld a, e                                       ; $673c: $7b
    or d                                          ; $673d: $b2
    ld [$157e], sp                                ; $673e: $08 $7e $15

jr_0b0_6741:
    ld b, $00                                     ; $6741: $06 $00
    ld e, a                                       ; $6743: $5f
    ld h, a                                       ; $6744: $67
    jr nz, @+$05                                  ; $6745: $20 $03

    ld d, b                                       ; $6747: $50
    ld hl, $0000                                  ; $6748: $21 $00 $00
    ld [hl], b                                    ; $674b: $70
    nop                                           ; $674c: $00
    sbc a                                         ; $674d: $9f
    add hl, de                                    ; $674e: $19
    dec b                                         ; $674f: $05
    nop                                           ; $6750: $00
    ld l, a                                       ; $6751: $6f
    nop                                           ; $6752: $00
    rst $18                                       ; $6753: $df
    ld b, [hl]                                    ; $6754: $46
    ld e, l                                       ; $6755: $5d
    dec d                                         ; $6756: $15
    rst $18                                       ; $6757: $df
    ld a, e                                       ; $6758: $7b
    nop                                           ; $6759: $00
    inc e                                         ; $675a: $1c
    ld a, l                                       ; $675b: $7d
    rrca                                          ; $675c: $0f
    ld e, b                                       ; $675d: $58
    ld b, a                                       ; $675e: $47
    ld l, a                                       ; $675f: $6f
    nop                                           ; $6760: $00
    nop                                           ; $6761: $00
    ld [$3aef], sp                                ; $6762: $08 $ef $3a
    cp [hl]                                       ; $6765: $be
    ccf                                           ; $6766: $3f
    rst $38                                       ; $6767: $ff
    ld [hl], a                                    ; $6768: $77
    ld [hl+], a                                   ; $6769: $22
    inc b                                         ; $676a: $04
    rst $28                                       ; $676b: $ef
    ld a, [hl-]                                   ; $676c: $3a
    ld e, a                                       ; $676d: $5f
    ld e, a                                       ; $676e: $5f
    ld l, a                                       ; $676f: $6f
    nop                                           ; $6770: $00
    jp nz, $7f00                                  ; $6771: $c2 $00 $7f

    dec d                                         ; $6774: $15
    xor a                                         ; $6775: $af
    inc c                                         ; $6776: $0c
    ld a, [hl]                                    ; $6777: $7e
    ld b, d                                       ; $6778: $42
    ld [hl+], a                                   ; $6779: $22
    nop                                           ; $677a: $00
    ld a, a                                       ; $677b: $7f
    ld l, e                                       ; $677c: $6b
    ldh [rSC], a                                  ; $677d: $e0 $02
    ld d, c                                       ; $677f: $51
    dec h                                         ; $6780: $25
    ld a, [bc]                                    ; $6781: $0a
    nop                                           ; $6782: $00
    ei                                            ; $6783: $fb
    db $10                                        ; $6784: $10
    ld [hl], b                                    ; $6785: $70
    nop                                           ; $6786: $00
    ld a, a                                       ; $6787: $7f
    add hl, de                                    ; $6788: $19
    db $db                                        ; $6789: $db
    inc d                                         ; $678a: $14
    rst $18                                       ; $678b: $df
    ld b, [hl]                                    ; $678c: $46
    ld e, a                                       ; $678d: $5f

jr_0b0_678e:
    add hl, de                                    ; $678e: $19
    sbc a                                         ; $678f: $9f
    add hl, de                                    ; $6790: $19
    nop                                           ; $6791: $00
    inc e                                         ; $6792: $1c
    ld d, l                                       ; $6793: $55
    ld d, $5e                                     ; $6794: $16 $5e
    inc sp                                        ; $6796: $33
    ld c, a                                       ; $6797: $4f
    nop                                           ; $6798: $00
    nop                                           ; $6799: $00
    db $10                                        ; $679a: $10
    ld a, [hl-]                                   ; $679b: $3a
    rrca                                          ; $679c: $0f
    adc $36                                       ; $679d: $ce $36
    rst $38                                       ; $679f: $ff
    ld a, a                                       ; $67a0: $7f
    inc hl                                        ; $67a1: $23
    inc b                                         ; $67a2: $04
    adc $36                                       ; $67a3: $ce $36
    cp a                                          ; $67a5: $bf
    dec e                                         ; $67a6: $1d
    rra                                           ; $67a7: $1f
    ld d, a                                       ; $67a8: $57
    rrca                                          ; $67a9: $0f
    dec e                                         ; $67aa: $1d
    sbc a                                         ; $67ab: $9f
    add hl, de                                    ; $67ac: $19
    jr c, jr_0b0_67ed                             ; $67ad: $38 $3e

    rst $18                                       ; $67af: $df
    ld c, [hl]                                    ; $67b0: $4e
    ld h, b                                       ; $67b1: $60
    nop                                           ; $67b2: $00
    cp l                                          ; $67b3: $bd
    ld c, d                                       ; $67b4: $4a
    ld sp, $0021                                  ; $67b5: $31 $21 $00
    inc bc                                        ; $67b8: $03
    ld c, c                                       ; $67b9: $49
    nop                                           ; $67ba: $00
    ld [hl], a                                    ; $67bb: $77
    ld a, [bc]                                    ; $67bc: $0a
    rst $38                                       ; $67bd: $ff
    dec bc                                        ; $67be: $0b
    sub [hl]                                      ; $67bf: $96
    inc d                                         ; $67c0: $14
    dec hl                                        ; $67c1: $2b
    ld bc, $0ed8                                  ; $67c2: $01 $d8 $0e
    rla                                           ; $67c5: $17
    ld de, $07de                                  ; $67c6: $11 $de $07
    inc bc                                        ; $67c9: $03
    nop                                           ; $67ca: $00
    inc sp                                        ; $67cb: $33
    ld a, [bc]                                    ; $67cc: $0a
    nop                                           ; $67cd: $00
    jr nz, jr_0b0_678e                            ; $67ce: $20 $be

    rra                                           ; $67d0: $1f
    nop                                           ; $67d1: $00
    inc d                                         ; $67d2: $14
    xor l                                         ; $67d3: $ad
    ld [hl-], a                                   ; $67d4: $32
    sbc [hl]                                      ; $67d5: $9e
    rlca                                          ; $67d6: $07
    ld [hl-], a                                   ; $67d7: $32
    ld c, $23                                     ; $67d8: $0e $23
    inc b                                         ; $67da: $04
    xor h                                         ; $67db: $ac
    ld [hl-], a                                   ; $67dc: $32
    rra                                           ; $67dd: $1f
    ld l, $91                                     ; $67de: $2e $91
    nop                                           ; $67e0: $00
    ld [hl], e                                    ; $67e1: $73
    inc b                                         ; $67e2: $04
    sbc [hl]                                      ; $67e3: $9e
    ld c, d                                       ; $67e4: $4a
    ld a, [hl]                                    ; $67e5: $7e

jr_0b0_67e6:
    dec d                                         ; $67e6: $15
    ld de, $c81d                                  ; $67e7: $11 $1d $c8
    nop                                           ; $67ea: $00
    cp l                                          ; $67eb: $bd
    ld c, d                                       ; $67ec: $4a

jr_0b0_67ed:
    rst $38                                       ; $67ed: $ff
    dec bc                                        ; $67ee: $0b
    or d                                          ; $67ef: $b2
    add hl, de                                    ; $67f0: $19
    ld a, [bc]                                    ; $67f1: $0a
    ld bc, $69dc                                  ; $67f2: $01 $dc $69
    dec sp                                        ; $67f5: $3b
    rlca                                          ; $67f6: $07
    ld [de], a                                    ; $67f7: $12
    inc [hl]                                      ; $67f8: $34
    xor c                                         ; $67f9: $a9
    inc b                                         ; $67fa: $04
    dec e                                         ; $67fb: $1d
    ld d, l                                       ; $67fc: $55
    rst $38                                       ; $67fd: $ff
    dec bc                                        ; $67fe: $0b
    ld [hl], c                                    ; $67ff: $71
    ld [bc], a                                    ; $6800: $02
    nop                                           ; $6801: $00
    inc e                                         ; $6802: $1c
    ld [hl-], a                                   ; $6803: $32
    ld c, $ff                                     ; $6804: $0e $ff
    rrca                                          ; $6806: $0f
    ld a, [bc]                                    ; $6807: $0a
    ld bc, $0000                                  ; $6808: $01 $00 $00
    adc e                                         ; $680b: $8b
    ld l, $32                                     ; $680c: $2e $32
    ld c, $00                                     ; $680e: $0e $00
    jr nz, jr_0b0_6835                            ; $6810: $20 $23

    inc b                                         ; $6812: $04
    adc e                                         ; $6813: $8b
    ld l, $4d                                     ; $6814: $2e $4d
    nop                                           ; $6816: $00
    ld [hl], d                                    ; $6817: $72
    nop                                           ; $6818: $00
    daa                                           ; $6819: $27
    nop                                           ; $681a: $00
    sbc l                                         ; $681b: $9d
    ld b, d                                       ; $681c: $42
    pop de                                        ; $681d: $d1
    db $10                                        ; $681e: $10
    dec de                                        ; $681f: $1b
    nop                                           ; $6820: $00
    ld c, h                                       ; $6821: $4c
    dec b                                         ; $6822: $05
    ld a, l                                       ; $6823: $7d
    ld b, [hl]                                    ; $6824: $46
    push af                                       ; $6825: $f5
    jr nc, jr_0b0_67e6                            ; $6826: $30 $be

    rlca                                          ; $6828: $07
    xor b                                         ; $6829: $a8
    inc b                                         ; $682a: $04
    sbc $44                                       ; $682b: $de $44
    sbc a                                         ; $682d: $9f
    ld h, l                                       ; $682e: $65

jr_0b0_682f:
    ld de, $051c                                  ; $682f: $11 $1c $05
    nop                                           ; $6832: $00
    ld d, h                                       ; $6833: $54
    dec a                                         ; $6834: $3d

jr_0b0_6835:
    rra                                           ; $6835: $1f
    ld l, [hl]                                    ; $6836: $6e
    sbc $4c                                       ; $6837: $de $4c
    nop                                           ; $6839: $00
    inc e                                         ; $683a: $1c
    or e                                          ; $683b: $b3
    dec h                                         ; $683c: $25
    sbc $03                                       ; $683d: $de $03
    cp a                                          ; $683f: $bf
    ld l, c                                       ; $6840: $69
    nop                                           ; $6841: $00
    jr jr_0b0_688d                                ; $6842: $18 $49

    ld h, $32                                     ; $6844: $26 $32
    ld c, $3b                                     ; $6846: $0e $3b
    inc bc                                        ; $6848: $03
    inc hl                                        ; $6849: $23
    inc b                                         ; $684a: $04
    ld c, c                                       ; $684b: $49
    ld h, $6a                                     ; $684c: $26 $6a
    ld a, [hl+]                                   ; $684e: $2a
    dec sp                                        ; $684f: $3b
    inc bc                                        ; $6850: $03
    inc bc                                        ; $6851: $03
    nop                                           ; $6852: $00
    sbc a                                         ; $6853: $9f
    add hl, de                                    ; $6854: $19
    sbc [hl]                                      ; $6855: $9e
    ld b, [hl]                                    ; $6856: $46
    pop af                                        ; $6857: $f1
    inc d                                         ; $6858: $14
    ld a, [bc]                                    ; $6859: $0a
    ld bc, $03de                                  ; $685a: $01 $de $03
    db $fc                                        ; $685d: $fc
    ld c, b                                       ; $685e: $48

jr_0b0_685f:
    jp nc, Jump_000_0511                          ; $685f: $d2 $11 $05

    nop                                           ; $6862: $00
    sbc $48                                       ; $6863: $de $48
    inc de                                        ; $6865: $13
    inc e                                         ; $6866: $1c
    cp a                                          ; $6867: $bf
    halt                                          ; $6868: $76
    dec b                                         ; $6869: $05
    nop                                           ; $686a: $00
    rst $18                                       ; $686b: $df
    ld c, h                                       ; $686c: $4c
    db $d3                                        ; $686d: $d3
    jr nc, jr_0b0_682f                            ; $686e: $30 $bf

    halt                                          ; $6870: $76
    nop                                           ; $6871: $00
    nop                                           ; $6872: $00
    ld a, e                                       ; $6873: $7b
    ld b, h                                       ; $6874: $44
    rst $10                                       ; $6875: $d7
    ld a, [bc]                                    ; $6876: $0a
    nop                                           ; $6877: $00
    jr nz, jr_0b0_687a                            ; $6878: $20 $00

jr_0b0_687a:
    jr @+$29                                      ; $687a: $18 $27

    ld [hl+], a                                   ; $687c: $22
    ld sp, hl                                     ; $687d: $f9
    ld [bc], a                                    ; $687e: $02
    ldh a, [rNR11]                                ; $687f: $f0 $11
    inc hl                                        ; $6881: $23
    inc b                                         ; $6882: $04
    daa                                           ; $6883: $27
    ld [hl+], a                                   ; $6884: $22
    ld c, b                                       ; $6885: $48
    ld [hl+], a                                   ; $6886: $22
    ldh a, [rNR11]                                ; $6887: $f0 $11
    ld [$df00], sp                                ; $6889: $08 $00 $df
    ld a, e                                       ; $688c: $7b

jr_0b0_688d:
    jr z, jr_0b0_68b8                             ; $688d: $28 $29

    rst $28                                       ; $688f: $ef
    db $10                                        ; $6890: $10
    xor e                                         ; $6891: $ab
    inc b                                         ; $6892: $04
    call c, Call_0b0_5b50                         ; $6893: $dc $50 $5b
    rlca                                          ; $6896: $07
    rst $38                                       ; $6897: $ff
    ld l, l                                       ; $6898: $6d
    dec b                                         ; $6899: $05
    nop                                           ; $689a: $00
    sbc l                                         ; $689b: $9d
    ld b, b                                       ; $689c: $40
    or c                                          ; $689d: $b1
    jr z, jr_0b0_685f                             ; $689e: $28 $bf

    halt                                          ; $68a0: $76
    ld [$bf04], sp                                ; $68a1: $08 $04 $bf
    ld d, b                                       ; $68a4: $50
    sub l                                         ; $68a5: $95
    inc [hl]                                      ; $68a6: $34
    ld a, h                                       ; $68a7: $7c
    ld l, d                                       ; $68a8: $6a
    nop                                           ; $68a9: $00
    nop                                           ; $68aa: $00
    adc h                                         ; $68ab: $8c
    ld bc, $0719                                  ; $68ac: $01 $19 $07
    nop                                           ; $68af: $00
    jr nz, jr_0b0_68b2                            ; $68b0: $20 $00

jr_0b0_68b2:
    nop                                           ; $68b2: $00
    ld [hl-], a                                   ; $68b3: $32
    ld c, $7c                                     ; $68b4: $0e $7c
    inc bc                                        ; $68b6: $03
    nop                                           ; $68b7: $00

jr_0b0_68b8:
    jr nz, jr_0b0_68ba                            ; $68b8: $20 $00

jr_0b0_68ba:
    nop                                           ; $68ba: $00
    dec b                                         ; $68bb: $05
    ld a, [de]                                    ; $68bc: $1a
    nop                                           ; $68bd: $00
    inc h                                         ; $68be: $24
    ld h, $1e                                     ; $68bf: $26 $1e
    ld h, d                                       ; $68c1: $62
    inc a                                         ; $68c2: $3c
    rst $38                                       ; $68c3: $ff
    rlca                                          ; $68c4: $07
    rst $18                                       ; $68c5: $df
    ld a, e                                       ; $68c6: $7b
    ld c, e                                       ; $68c7: $4b
    dec h                                         ; $68c8: $25
    adc b                                         ; $68c9: $88
    nop                                           ; $68ca: $00
    sbc l                                         ; $68cb: $9d
    ld b, h                                       ; $68cc: $44
    cp a                                          ; $68cd: $bf
    halt                                          ; $68ce: $76
    or b                                          ; $68cf: $b0
    inc h                                         ; $68d0: $24
    dec b                                         ; $68d1: $05

jr_0b0_68d2:
    nop                                           ; $68d2: $00
    sbc $48                                       ; $68d3: $de $48

jr_0b0_68d5:
    cp a                                          ; $68d5: $bf
    halt                                          ; $68d6: $76
    inc d                                         ; $68d7: $14
    jr nz, jr_0b0_68ff                            ; $68d8: $20 $25

    nop                                           ; $68da: $00
    rst $18                                       ; $68db: $df
    ld d, b                                       ; $68dc: $50
    sbc l                                         ; $68dd: $9d
    ld l, [hl]                                    ; $68de: $6e
    inc [hl]                                      ; $68df: $34
    inc h                                         ; $68e0: $24
    nop                                           ; $68e1: $00
    nop                                           ; $68e2: $00
    ld hl, sp+$06                                 ; $68e3: $f8 $06
    cp [hl]                                       ; $68e5: $be
    inc hl                                        ; $68e6: $23
    nop                                           ; $68e7: $00
    jr nz, jr_0b0_68ea                            ; $68e8: $20 $00

jr_0b0_68ea:
    nop                                           ; $68ea: $00
    ldh a, [rNR11]                                ; $68eb: $f0 $11
    add hl, de                                    ; $68ed: $19
    rlca                                          ; $68ee: $07
    nop                                           ; $68ef: $00
    jr nz, jr_0b0_68f2                            ; $68f0: $20 $00

jr_0b0_68f2:
    nop                                           ; $68f2: $00

jr_0b0_68f3:
    db $e4                                        ; $68f3: $e4
    dec d                                         ; $68f4: $15
    add [hl]                                      ; $68f5: $86
    ld a, [hl]                                    ; $68f6: $7e
    nop                                           ; $68f7: $00
    inc h                                         ; $68f8: $24
    add hl, hl                                    ; $68f9: $29
    ld hl, $7e86                                  ; $68fa: $21 $86 $7e
    dec de                                        ; $68fd: $1b
    inc bc                                        ; $68fe: $03

jr_0b0_68ff:
    rst $18                                       ; $68ff: $df
    ld a, e                                       ; $6900: $7b
    dec b                                         ; $6901: $05
    nop                                           ; $6902: $00
    ld c, [hl]                                    ; $6903: $4e
    dec a                                         ; $6904: $3d
    sbc [hl]                                      ; $6905: $9e
    ld e, l                                       ; $6906: $5d
    sbc h                                         ; $6907: $9c
    inc a                                         ; $6908: $3c
    dec b                                         ; $6909: $05
    nop                                           ; $690a: $00
    rst $18                                       ; $690b: $df
    ld c, h                                       ; $690c: $4c
    or e                                          ; $690d: $b3
    inc l                                         ; $690e: $2c
    cp a                                          ; $690f: $bf
    halt                                          ; $6910: $76
    inc bc                                        ; $6911: $03
    nop                                           ; $6912: $00
    cp c                                          ; $6913: $b9
    jr c, jr_0b0_68d5                             ; $6914: $38 $bf

    halt                                          ; $6916: $76
    rra                                           ; $6917: $1f
    ld e, c                                       ; $6918: $59
    nop                                           ; $6919: $00
    jr nz, jr_0b0_68d2                            ; $691a: $20 $b6

    ld a, [bc]                                    ; $691c: $0a
    cp [hl]                                       ; $691d: $be
    cpl                                           ; $691e: $2f
    ld e, e                                       ; $691f: $5b
    inc bc                                        ; $6920: $03
    nop                                           ; $6921: $00
    jr nz, jr_0b0_68f3                            ; $6922: $20 $cf

    dec d                                         ; $6924: $15
    ld hl, sp+$06                                 ; $6925: $f8 $06
    ld d, e                                       ; $6927: $53
    ld [de], a                                    ; $6928: $12

jr_0b0_6929:
    nop                                           ; $6929: $00
    inc c                                         ; $692a: $0c

jr_0b0_692b:
    add [hl]                                      ; $692b: $86
    ld a, [hl]                                    ; $692c: $7e
    rst $18                                       ; $692d: $df
    ld a, e                                       ; $692e: $7b
    ld b, a                                       ; $692f: $47
    dec h                                         ; $6930: $25
    ret                                           ; $6931: $c9


    jr jr_0b0_6959                                ; $6932: $18 $25

    halt                                          ; $6934: $76
    jr jr_0b0_693a                                ; $6935: $18 $03

    ld e, a                                       ; $6937: $5f
    ld [hl], d                                    ; $6938: $72
    dec b                                         ; $6939: $05

jr_0b0_693a:
    nop                                           ; $693a: $00
    sbc $4c                                       ; $693b: $de $4c
    rst $18                                       ; $693d: $df
    ld l, [hl]                                    ; $693e: $6e
    ld [de], a                                    ; $693f: $12
    jr jr_0b0_6947                                ; $6940: $18 $05

    nop                                           ; $6942: $00
    sbc l                                         ; $6943: $9d
    ld b, b                                       ; $6944: $40
    cp a                                          ; $6945: $bf
    halt                                          ; $6946: $76

jr_0b0_6947:
    dec d                                         ; $6947: $15
    inc h                                         ; $6948: $24
    ld [bc], a                                    ; $6949: $02
    nop                                           ; $694a: $00
    push af                                       ; $694b: $f5
    jr c, jr_0b0_696d                             ; $694c: $38 $1f

    ld l, [hl]                                    ; $694e: $6e
    cp [hl]                                       ; $694f: $be
    inc de                                        ; $6950: $13
    nop                                           ; $6951: $00
    jr nz, jr_0b0_6986                            ; $6952: $20 $32

    ld [de], a                                    ; $6954: $12

jr_0b0_6955:
    ld e, e                                       ; $6955: $5b
    inc bc                                        ; $6956: $03
    or [hl]                                       ; $6957: $b6
    ld a, [bc]                                    ; $6958: $0a

jr_0b0_6959:
    nop                                           ; $6959: $00
    jr nz, jr_0b0_692b                            ; $695a: $20 $cf

    dec d                                         ; $695c: $15
    sub l                                         ; $695d: $95
    ld c, $32                                     ; $695e: $0e $32
    ld [de], a                                    ; $6960: $12
    ld h, c                                       ; $6961: $61
    jr @-$26                                      ; $6962: $18 $d8

    ld b, $6b                                     ; $6964: $06 $6b
    ld h, [hl]                                    ; $6966: $66
    rst $18                                       ; $6967: $df
    ld a, e                                       ; $6968: $7b
    ld b, [hl]                                    ; $6969: $46
    jr z, jr_0b0_6987                             ; $696a: $28 $1b

    inc bc                                        ; $696c: $03

jr_0b0_696d:
    add [hl]                                      ; $696d: $86
    ld a, [hl]                                    ; $696e: $7e
    sbc a                                         ; $696f: $9f
    ld h, c                                       ; $6970: $61
    ld b, l                                       ; $6971: $45
    ld [$4cde], sp                                ; $6972: $08 $de $4c
    cp a                                          ; $6975: $bf
    ld [hl], d                                    ; $6976: $72
    rrca                                          ; $6977: $0f
    inc c                                         ; $6978: $0c
    dec b                                         ; $6979: $05
    nop                                           ; $697a: $00
    ld e, e                                       ; $697b: $5b
    inc a                                         ; $697c: $3c
    dec e                                         ; $697d: $1d
    ld d, d                                       ; $697e: $52
    cp a                                          ; $697f: $bf
    halt                                          ; $6980: $76
    inc bc                                        ; $6981: $03
    nop                                           ; $6982: $00
    ld a, [de]                                    ; $6983: $1a
    rlca                                          ; $6984: $07
    ccf                                           ; $6985: $3f

jr_0b0_6986:
    ld l, [hl]                                    ; $6986: $6e

jr_0b0_6987:
    inc d                                         ; $6987: $14
    jr z, jr_0b0_698a                             ; $6988: $28 $00

jr_0b0_698a:
    jr nz, jr_0b0_699c                            ; $698a: $20 $10

    ld d, $96                                     ; $698c: $16 $96
    ld c, $32                                     ; $698e: $0e $32
    ld [de], a                                    ; $6990: $12
    nop                                           ; $6991: $00
    jr nz, jr_0b0_6929                            ; $6992: $20 $95

    ld c, $7c                                     ; $6994: $0e $7c
    inc bc                                        ; $6996: $03
    sbc a                                         ; $6997: $9f
    ld h, c                                       ; $6998: $61
    nop                                           ; $6999: $00
    inc d                                         ; $699a: $14
    ld e, d                                       ; $699b: $5a

jr_0b0_699c:
    ld l, e                                       ; $699c: $6b
    rlca                                          ; $699d: $07
    dec [hl]                                      ; $699e: $35
    ldh a, [rNR11]                                ; $699f: $f0 $11
    dec bc                                        ; $69a1: $0b
    ld bc, $7a6e                                  ; $69a2: $01 $6e $7a
    cp a                                          ; $69a5: $bf
    inc bc                                        ; $69a6: $03
    add hl, sp                                    ; $69a7: $39
    inc l                                         ; $69a8: $2c
    ld b, $00                                     ; $69a9: $06 $00
    ld e, a                                       ; $69ab: $5f
    ld l, [hl]                                    ; $69ac: $6e
    ld c, h                                       ; $69ad: $4c
    dec l                                         ; $69ae: $2d
    dec d                                         ; $69af: $15
    jr nz, jr_0b0_69d7                            ; $69b0: $20 $25

    inc b                                         ; $69b2: $04
    ld e, a                                       ; $69b3: $5f
    ld e, l                                       ; $69b4: $5d
    ld [hl], c                                    ; $69b5: $71
    jr jr_0b0_6955                                ; $69b6: $18 $9d

    ld d, [hl]                                    ; $69b8: $56
    rlca                                          ; $69b9: $07
    inc c                                         ; $69ba: $0c
    cp c                                          ; $69bb: $b9
    add hl, sp                                    ; $69bc: $39
    ret nc                                        ; $69bd: $d0

    ld de, $721f                                  ; $69be: $11 $1f $72
    nop                                           ; $69c1: $00

jr_0b0_69c2:
    jr nz, jr_0b0_69d5                            ; $69c2: $20 $11

    ld [de], a                                    ; $69c4: $12
    ld a, [de]                                    ; $69c5: $1a
    inc bc                                        ; $69c6: $03
    rra                                           ; $69c7: $1f
    ld [hl], d                                    ; $69c8: $72
    nop                                           ; $69c9: $00
    jr nz, jr_0b0_698a                            ; $69ca: $20 $be

    dec hl                                        ; $69cc: $2b
    rst $38                                       ; $69cd: $ff
    ld e, a                                       ; $69ce: $5f
    add hl, sp                                    ; $69cf: $39
    inc l                                         ; $69d0: $2c
    nop                                           ; $69d1: $00
    inc c                                         ; $69d2: $0c
    ld a, [hl-]                                   ; $69d3: $3a
    dec bc                                        ; $69d4: $0b

jr_0b0_69d5:
    ld [hl-], a                                   ; $69d5: $32
    ld a, e                                       ; $69d6: $7b

jr_0b0_69d7:
    ld a, [hl+]                                   ; $69d7: $2a
    add hl, hl                                    ; $69d8: $29
    add [hl]                                      ; $69d9: $86
    ld a, [hl]                                    ; $69da: $7e
    ld l, [hl]                                    ; $69db: $6e
    ld bc, $48dd                                  ; $69dc: $01 $dd $48
    ld e, h                                       ; $69df: $5c
    inc bc                                        ; $69e0: $03
    dec b                                         ; $69e1: $05
    nop                                           ; $69e2: $00
    cp [hl]                                       ; $69e3: $be
    ld b, h                                       ; $69e4: $44
    cp a                                          ; $69e5: $bf
    halt                                          ; $69e6: $76
    ld c, $2d                                     ; $69e7: $0e $2d
    adc d                                         ; $69e9: $8a
    db $10                                        ; $69ea: $10
    ld e, [hl]                                    ; $69eb: $5e
    ld d, d                                       ; $69ec: $52
    ld [hl], d                                    ; $69ed: $72
    dec l                                         ; $69ee: $2d
    ld e, c                                       ; $69ef: $59
    inc [hl]                                      ; $69f0: $34
    nop                                           ; $69f1: $00
    nop                                           ; $69f2: $00
    ld a, l                                       ; $69f3: $7d
    ld b, [hl]                                    ; $69f4: $46
    rrca                                          ; $69f5: $0f
    dec d                                         ; $69f6: $15
    ld a, [de]                                    ; $69f7: $1a
    dec bc                                        ; $69f8: $0b
    nop                                           ; $69f9: $00
    jr nz, jr_0b0_6a16                            ; $69fa: $20 $1a

    inc bc                                        ; $69fc: $03
    rrca                                          ; $69fd: $0f
    dec d                                         ; $69fe: $15
    ld a, [de]                                    ; $69ff: $1a
    dec bc                                        ; $6a00: $0b
    nop                                           ; $6a01: $00
    jr nz, jr_0b0_6a72                            ; $6a02: $20 $6e

    ld bc, $48dd                                  ; $6a04: $01 $dd $48
    ld e, h                                       ; $6a07: $5c
    inc bc                                        ; $6a08: $03
    inc hl                                        ; $6a09: $23
    db $10                                        ; $6a0a: $10
    cp [hl]                                       ; $6a0b: $be
    inc de                                        ; $6a0c: $13
    and l                                         ; $6a0d: $a5

jr_0b0_6a0e:
    ld l, c                                       ; $6a0e: $69
    ld a, a                                       ; $6a0f: $7f
    ld e, e                                       ; $6a10: $5b
    db $ed                                        ; $6a11: $ed
    inc d                                         ; $6a12: $14
    add [hl]                                      ; $6a13: $86
    ld a, [hl]                                    ; $6a14: $7e
    ld a, a                                       ; $6a15: $7f

jr_0b0_6a16:
    ld e, c                                       ; $6a16: $59
    rst $38                                       ; $6a17: $ff
    rlca                                          ; $6a18: $07
    rlca                                          ; $6a19: $07
    inc c                                         ; $6a1a: $0c
    ccf                                           ; $6a1b: $3f
    ld d, l                                       ; $6a1c: $55
    cp a                                          ; $6a1d: $bf
    halt                                          ; $6a1e: $76
    xor $28                                       ; $6a1f: $ee $28
    push hl                                       ; $6a21: $e5
    ld [$525e], sp                                ; $6a22: $08 $5e $52
    ld [hl], d                                    ; $6a25: $72
    dec l                                         ; $6a26: $2d

jr_0b0_6a27:
    sub b                                         ; $6a27: $90
    jr jr_0b0_6a2a                                ; $6a28: $18 $00

jr_0b0_6a2a:
    nop                                           ; $6a2a: $00
    ld a, h                                       ; $6a2b: $7c
    rrca                                          ; $6a2c: $0f
    jr jr_0b0_6a69                                ; $6a2d: $18 $3a

    rra                                           ; $6a2f: $1f
    ld d, e                                       ; $6a30: $53
    nop                                           ; $6a31: $00

jr_0b0_6a32:
    jr nz, jr_0b0_6ab0                            ; $6a32: $20 $7c

    rrca                                          ; $6a34: $0f
    jr jr_0b0_6a71                                ; $6a35: $18 $3a

    rra                                           ; $6a37: $1f
    ld d, e                                       ; $6a38: $53
    nop                                           ; $6a39: $00
    jr nz, jr_0b0_69c2                            ; $6a3a: $20 $86

    ld a, [hl]                                    ; $6a3c: $7e
    ld a, a                                       ; $6a3d: $7f
    ld e, c                                       ; $6a3e: $59
    rst $38                                       ; $6a3f: $ff
    rlca                                          ; $6a40: $07
    nop                                           ; $6a41: $00
    inc d                                         ; $6a42: $14
    sbc [hl]                                      ; $6a43: $9e
    ld d, a                                       ; $6a44: $57
    push bc                                       ; $6a45: $c5
    ld d, h                                       ; $6a46: $54
    rst $28                                       ; $6a47: $ef
    jr jr_0b0_6a0e                                ; $6a48: $18 $c4

    inc [hl]                                      ; $6a4a: $34
    cp [hl]                                       ; $6a4b: $be
    inc bc                                        ; $6a4c: $03
    rst $30                                       ; $6a4d: $f7
    jr z, jr_0b0_6acf                             ; $6a4e: $28 $7f

    ld h, c                                       ; $6a50: $61
    dec b                                         ; $6a51: $05
    nop                                           ; $6a52: $00
    jr c, jr_0b0_6a85                             ; $6a53: $38 $30

    call c, $1e40                                 ; $6a55: $dc $40 $1e
    ld c, l                                       ; $6a58: $4d
    ld l, d                                       ; $6a59: $6a
    inc c                                         ; $6a5a: $0c
    dec d                                         ; $6a5b: $15
    inc h                                         ; $6a5c: $24
    ld a, h                                       ; $6a5d: $7c
    ld d, l                                       ; $6a5e: $55
    inc de                                        ; $6a5f: $13
    dec l                                         ; $6a60: $2d
    ld [bc], a                                    ; $6a61: $02
    ld [$36bb], sp                                ; $6a62: $08 $bb $36
    ld d, d                                       ; $6a65: $52
    dec h                                         ; $6a66: $25
    rst $38                                       ; $6a67: $ff
    ld l, a                                       ; $6a68: $6f

jr_0b0_6a69:
    nop                                           ; $6a69: $00
    jr nz, jr_0b0_6a27                            ; $6a6a: $20 $bb

    ld [hl], $52                                  ; $6a6c: $36 $52
    dec h                                         ; $6a6e: $25
    rst $38                                       ; $6a6f: $ff
    ld l, a                                       ; $6a70: $6f

jr_0b0_6a71:
    nop                                           ; $6a71: $00

jr_0b0_6a72:
    jr nz, jr_0b0_6a32                            ; $6a72: $20 $be

    inc bc                                        ; $6a74: $03
    rst $30                                       ; $6a75: $f7
    jr z, jr_0b0_6af7                             ; $6a76: $28 $7f

    ld h, c                                       ; $6a78: $61
    nop                                           ; $6a79: $00
    nop                                           ; $6a7a: $00
    ld a, l                                       ; $6a7b: $7d
    rrca                                          ; $6a7c: $0f
    rst $38                                       ; $6a7d: $ff
    ld h, e                                       ; $6a7e: $63
    nop                                           ; $6a7f: $00
    jr nz, jr_0b0_6a82                            ; $6a80: $20 $00

jr_0b0_6a82:
    inc b                                         ; $6a82: $04
    db $db                                        ; $6a83: $db
    ld b, b                                       ; $6a84: $40

jr_0b0_6a85:
    ld a, e                                       ; $6a85: $7b
    rlca                                          ; $6a86: $07

jr_0b0_6a87:
    dec hl                                        ; $6a87: $2b
    ld bc, $0000                                  ; $6a88: $01 $00 $00
    ld de, $5312                                  ; $6a8b: $11 $12 $53
    ld c, $74                                     ; $6a8e: $0e $74

jr_0b0_6a90:
    ld c, $00                                     ; $6a90: $0e $00
    nop                                           ; $6a92: $00
    ld de, $5c12                                  ; $6a93: $11 $12 $5c
    inc bc                                        ; $6a96: $03
    cp [hl]                                       ; $6a97: $be

jr_0b0_6a98:
    dec hl                                        ; $6a98: $2b
    nop                                           ; $6a99: $00
    ld [$0b3b], sp                                ; $6a9a: $08 $3b $0b
    cp [hl]                                       ; $6a9d: $be
    ld b, a                                       ; $6a9e: $47
    rst $38                                       ; $6a9f: $ff

jr_0b0_6aa0:
    ld [hl], e                                    ; $6aa0: $73
    nop                                           ; $6aa1: $00
    jr nz, jr_0b0_6adf                            ; $6aa2: $20 $3b

    dec bc                                        ; $6aa4: $0b
    cp [hl]                                       ; $6aa5: $be
    ld b, a                                       ; $6aa6: $47
    rst $38                                       ; $6aa7: $ff

jr_0b0_6aa8:
    ld [hl], e                                    ; $6aa8: $73
    nop                                           ; $6aa9: $00
    jr nz, jr_0b0_6a87                            ; $6aaa: $20 $db

    ld b, b                                       ; $6aac: $40
    ld a, e                                       ; $6aad: $7b
    rlca                                          ; $6aae: $07
    dec hl                                        ; $6aaf: $2b

jr_0b0_6ab0:
    ld bc, $2000                                  ; $6ab0: $01 $00 $20
    ld d, e                                       ; $6ab3: $53
    ld [de], a                                    ; $6ab4: $12
    sbc $57                                       ; $6ab5: $de $57
    ld a, l                                       ; $6ab7: $7d
    rlca                                          ; $6ab8: $07
    ld de, $be12                                  ; $6ab9: $11 $12 $be
    ld b, a                                       ; $6abc: $47
    ld a, h                                       ; $6abd: $7c
    dec bc                                        ; $6abe: $0b
    rst $38                                       ; $6abf: $ff
    ld l, a                                       ; $6ac0: $6f
    ld de, $7412                                  ; $6ac1: $11 $12 $74
    ld c, $b6                                     ; $6ac4: $0e $b6
    ld a, [bc]                                    ; $6ac6: $0a
    ld [hl-], a                                   ; $6ac7: $32
    ld [de], a                                    ; $6ac8: $12
    rst $10                                       ; $6ac9: $d7
    ld b, $be                                     ; $6aca: $06 $be
    dec sp                                        ; $6acc: $3b
    rst $38                                       ; $6acd: $ff
    ld l, a                                       ; $6ace: $6f

jr_0b0_6acf:
    ld a, l                                       ; $6acf: $7d
    dec bc                                        ; $6ad0: $0b
    nop                                           ; $6ad1: $00
    jr nz, jr_0b0_6b27                            ; $6ad2: $20 $53

    ld a, [bc]                                    ; $6ad4: $0a
    sbc $53                                       ; $6ad5: $de $53
    ld a, l                                       ; $6ad7: $7d
    dec bc                                        ; $6ad8: $0b
    nop                                           ; $6ad9: $00
    jr nz, jr_0b0_6b2f                            ; $6ada: $20 $53

    ld a, [bc]                                    ; $6adc: $0a
    sbc $53                                       ; $6add: $de $53

jr_0b0_6adf:
    ld a, l                                       ; $6adf: $7d
    dec bc                                        ; $6ae0: $0b
    nop                                           ; $6ae1: $00
    jr nz, jr_0b0_6ae4                            ; $6ae2: $20 $00

jr_0b0_6ae4:
    jr nz, jr_0b0_6afe                            ; $6ae4: $20 $18

    ld [hl], a                                    ; $6ae6: $77
    ld c, b                                       ; $6ae7: $48
    ld b, l                                       ; $6ae8: $45
    nop                                           ; $6ae9: $00
    jr nz, jr_0b0_6aec                            ; $6aea: $20 $00

jr_0b0_6aec:
    jr nz, jr_0b0_6b06                            ; $6aec: $20 $18

    ld [hl], a                                    ; $6aee: $77
    ld c, b                                       ; $6aef: $48
    ld b, l                                       ; $6af0: $45
    nop                                           ; $6af1: $00
    jr nz, jr_0b0_6af4                            ; $6af2: $20 $00

jr_0b0_6af4:
    jr nz, jr_0b0_6b0e                            ; $6af4: $20 $18

    ld [hl], a                                    ; $6af6: $77

jr_0b0_6af7:
    ld c, b                                       ; $6af7: $48
    ld b, l                                       ; $6af8: $45
    nop                                           ; $6af9: $00
    jr nz, jr_0b0_6a90                            ; $6afa: $20 $94

    ld [hl], d                                    ; $6afc: $72
    sbc h                                         ; $6afd: $9c

jr_0b0_6afe:
    ld a, e                                       ; $6afe: $7b
    cp l                                          ; $6aff: $bd
    ld a, e                                       ; $6b00: $7b
    nop                                           ; $6b01: $00
    jr nz, jr_0b0_6a98                            ; $6b02: $20 $94

    ld [hl], d                                    ; $6b04: $72
    sbc h                                         ; $6b05: $9c

jr_0b0_6b06:
    ld a, e                                       ; $6b06: $7b
    cp l                                          ; $6b07: $bd
    ld a, e                                       ; $6b08: $7b
    nop                                           ; $6b09: $00
    jr nz, jr_0b0_6aa0                            ; $6b0a: $20 $94

    ld [hl], d                                    ; $6b0c: $72
    sbc h                                         ; $6b0d: $9c

jr_0b0_6b0e:
    ld a, e                                       ; $6b0e: $7b
    cp l                                          ; $6b0f: $bd
    ld a, e                                       ; $6b10: $7b
    nop                                           ; $6b11: $00
    jr nz, jr_0b0_6aa8                            ; $6b12: $20 $94

    ld [hl], d                                    ; $6b14: $72
    sbc h                                         ; $6b15: $9c
    ld a, e                                       ; $6b16: $7b
    cp l                                          ; $6b17: $bd
    ld a, e                                       ; $6b18: $7b
    nop                                           ; $6b19: $00
    jr nz, jr_0b0_6b1c                            ; $6b1a: $20 $00

jr_0b0_6b1c:
    jr nz, jr_0b0_6b36                            ; $6b1c: $20 $18

    ld [hl], a                                    ; $6b1e: $77
    ld c, b                                       ; $6b1f: $48
    ld b, l                                       ; $6b20: $45
    nop                                           ; $6b21: $00
    jr nz, jr_0b0_6b24                            ; $6b22: $20 $00

jr_0b0_6b24:
    jr nz, @+$1a                                  ; $6b24: $20 $18

    ld [hl], a                                    ; $6b26: $77

jr_0b0_6b27:
    ld c, b                                       ; $6b27: $48
    ld b, l                                       ; $6b28: $45
    nop                                           ; $6b29: $00
    jr nz, jr_0b0_6b2c                            ; $6b2a: $20 $00

jr_0b0_6b2c:
    jr nz, @+$1a                                  ; $6b2c: $20 $18

    ld [hl], a                                    ; $6b2e: $77

jr_0b0_6b2f:
    ld c, b                                       ; $6b2f: $48
    ld b, l                                       ; $6b30: $45
    nop                                           ; $6b31: $00
    nop                                           ; $6b32: $00
    ld l, c                                       ; $6b33: $69
    ld c, l                                       ; $6b34: $4d
    sub h                                         ; $6b35: $94

jr_0b0_6b36:
    ld [hl], d                                    ; $6b36: $72
    xor h                                         ; $6b37: $ac
    ld d, l                                       ; $6b38: $55
    nop                                           ; $6b39: $00
    jr nz, jr_0b0_6b42                            ; $6b3a: $20 $06

    dec a                                         ; $6b3c: $3d
    call $ac59                                    ; $6b3d: $cd $59 $ac
    ld d, l                                       ; $6b40: $55
    nop                                           ; $6b41: $00

jr_0b0_6b42:
    jr nz, jr_0b0_6b4a                            ; $6b42: $20 $06

    dec a                                         ; $6b44: $3d
    call $ac59                                    ; $6b45: $cd $59 $ac
    ld d, l                                       ; $6b48: $55

jr_0b0_6b49:
    nop                                           ; $6b49: $00

jr_0b0_6b4a:
    jr nz, jr_0b0_6b52                            ; $6b4a: $20 $06

    dec a                                         ; $6b4c: $3d
    call $ac59                                    ; $6b4d: $cd $59 $ac
    ld d, l                                       ; $6b50: $55
    nop                                           ; $6b51: $00

jr_0b0_6b52:
    jr nz, jr_0b0_6b54                            ; $6b52: $20 $00

jr_0b0_6b54:
    jr nz, jr_0b0_6b6e                            ; $6b54: $20 $18

    ld [hl], a                                    ; $6b56: $77
    ld c, b                                       ; $6b57: $48
    ld b, l                                       ; $6b58: $45
    nop                                           ; $6b59: $00
    nop                                           ; $6b5a: $00
    nop                                           ; $6b5b: $00
    jr nz, jr_0b0_6b24                            ; $6b5c: $20 $c6

    jr jr_0b0_6ba8                                ; $6b5e: $18 $48

    ld b, l                                       ; $6b60: $45

jr_0b0_6b61:
    nop                                           ; $6b61: $00
    jr nz, jr_0b0_6b49                            ; $6b62: $20 $e5

    inc a                                         ; $6b64: $3c
    rst $28                                       ; $6b65: $ef
    ld h, c                                       ; $6b66: $61
    dec b                                         ; $6b67: $05
    dec a                                         ; $6b68: $3d
    nop                                           ; $6b69: $00
    nop                                           ; $6b6a: $00
    ld b, $3d                                     ; $6b6b: $06 $3d
    or a                                          ; $6b6d: $b7

jr_0b0_6b6e:
    ld c, l                                       ; $6b6e: $4d
    daa                                           ; $6b6f: $27
    ld b, c                                       ; $6b70: $41

jr_0b0_6b71:
    nop                                           ; $6b71: $00
    jr nz, jr_0b0_6b9b                            ; $6b72: $20 $27

    ld b, c                                       ; $6b74: $41
    call z, $934d                                 ; $6b75: $cc $4d $93
    ld e, [hl]                                    ; $6b78: $5e
    nop                                           ; $6b79: $00
    jr nz, jr_0b0_6ba3                            ; $6b7a: $20 $27

    ld b, c                                       ; $6b7c: $41
    call z, $934d                                 ; $6b7d: $cc $4d $93
    ld e, [hl]                                    ; $6b80: $5e
    nop                                           ; $6b81: $00
    jr nz, jr_0b0_6bab                            ; $6b82: $20 $27

    ld b, c                                       ; $6b84: $41
    call z, $934d                                 ; $6b85: $cc $4d $93
    ld e, [hl]                                    ; $6b88: $5e
    nop                                           ; $6b89: $00
    jr nz, jr_0b0_6b71                            ; $6b8a: $20 $e5

    inc a                                         ; $6b8c: $3c
    rst $28                                       ; $6b8d: $ef
    ld h, c                                       ; $6b8e: $61
    dec b                                         ; $6b8f: $05

jr_0b0_6b90:
    dec a                                         ; $6b90: $3d
    nop                                           ; $6b91: $00
    ld [$5631], sp                                ; $6b92: $08 $31 $56
    sbc e                                         ; $6b95: $9b
    ld [hl], e                                    ; $6b96: $73
    add $18                                       ; $6b97: $c6 $18
    nop                                           ; $6b99: $00
    nop                                           ; $6b9a: $00

jr_0b0_6b9b:
    ld l, d                                       ; $6b9b: $6a
    ld b, l                                       ; $6b9c: $45
    jr nc, jr_0b0_6bf5                            ; $6b9d: $30 $56

    nop                                           ; $6b9f: $00
    jr nz, jr_0b0_6bca                            ; $6ba0: $20 $28

    nop                                           ; $6ba2: $00

jr_0b0_6ba3:
    rra                                           ; $6ba3: $1f
    ld [bc], a                                    ; $6ba4: $02
    or a                                          ; $6ba5: $b7
    ld c, l                                       ; $6ba6: $4d
    ccf                                           ; $6ba7: $3f

jr_0b0_6ba8:
    ld d, e                                       ; $6ba8: $53
    nop                                           ; $6ba9: $00
    db $10                                        ; $6baa: $10

jr_0b0_6bab:
    ld [hl-], a                                   ; $6bab: $32
    ld d, [hl]                                    ; $6bac: $56
    push de                                       ; $6bad: $d5
    ld h, [hl]                                    ; $6bae: $66
    ld a, d                                       ; $6baf: $7a
    ld [hl], e                                    ; $6bb0: $73
    nop                                           ; $6bb1: $00
    jr nz, jr_0b0_6be6                            ; $6bb2: $20 $32

    ld d, [hl]                                    ; $6bb4: $56
    push de                                       ; $6bb5: $d5
    ld h, [hl]                                    ; $6bb6: $66
    ld a, d                                       ; $6bb7: $7a
    ld [hl], e                                    ; $6bb8: $73
    nop                                           ; $6bb9: $00
    jr nz, @+$34                                  ; $6bba: $20 $32

    ld d, [hl]                                    ; $6bbc: $56
    push de                                       ; $6bbd: $d5
    ld h, [hl]                                    ; $6bbe: $66
    ld a, d                                       ; $6bbf: $7a
    ld [hl], e                                    ; $6bc0: $73
    nop                                           ; $6bc1: $00
    nop                                           ; $6bc2: $00
    nop                                           ; $6bc3: $00
    jr nz, @+$32                                  ; $6bc4: $20 $30

    ld d, [hl]                                    ; $6bc6: $56
    nop                                           ; $6bc7: $00
    jr nz, jr_0b0_6b90                            ; $6bc8: $20 $c6

jr_0b0_6bca:
    jr jr_0b0_6b61                                ; $6bca: $18 $95

    ld d, [hl]                                    ; $6bcc: $56
    ld a, e                                       ; $6bcd: $7b
    ld l, a                                       ; $6bce: $6f

jr_0b0_6bcf:
    xor h                                         ; $6bcf: $ac
    ld d, c                                       ; $6bd0: $51
    ld bc, $5100                                  ; $6bd1: $01 $00 $51
    ld e, d                                       ; $6bd4: $5a
    add hl, sp                                    ; $6bd5: $39
    ld h, a                                       ; $6bd6: $67
    add $18                                       ; $6bd7: $c6 $18
    ld l, d                                       ; $6bd9: $6a
    nop                                           ; $6bda: $00
    ccf                                           ; $6bdb: $3f
    ld d, e                                       ; $6bdc: $53
    sbc d                                         ; $6bdd: $9a
    add hl, bc                                    ; $6bde: $09
    rra                                           ; $6bdf: $1f
    ld [bc], a                                    ; $6be0: $02
    nop                                           ; $6be1: $00
    nop                                           ; $6be2: $00

jr_0b0_6be3:
    cp h                                          ; $6be3: $bc
    ld [hl], a                                    ; $6be4: $77
    rra                                           ; $6be5: $1f

jr_0b0_6be6:
    ld [bc], a                                    ; $6be6: $02
    jr z, jr_0b0_6be9                             ; $6be7: $28 $00

jr_0b0_6be9:
    nop                                           ; $6be9: $00
    jr nz, jr_0b0_6be3                            ; $6bea: $20 $f7

    ld l, d                                       ; $6bec: $6a
    sbc $7f                                       ; $6bed: $de $7f
    jr z, jr_0b0_6bf1                             ; $6bef: $28 $00

jr_0b0_6bf1:
    nop                                           ; $6bf1: $00
    jr nz, @-$07                                  ; $6bf2: $20 $f7

    ld l, d                                       ; $6bf4: $6a

jr_0b0_6bf5:
    sbc $7f                                       ; $6bf5: $de $7f
    jr z, jr_0b0_6bf9                             ; $6bf7: $28 $00

jr_0b0_6bf9:
    nop                                           ; $6bf9: $00

jr_0b0_6bfa:
    nop                                           ; $6bfa: $00
    nop                                           ; $6bfb: $00
    jr nz, @+$3b                                  ; $6bfc: $20 $39

    ld h, a                                       ; $6bfe: $67
    add $18                                       ; $6bff: $c6 $18
    nop                                           ; $6c01: $00

jr_0b0_6c02:
    nop                                           ; $6c02: $00
    ld [de], a                                    ; $6c03: $12
    ld a, $d7                                     ; $6c04: $3e $d7
    ld h, d                                       ; $6c06: $62
    add sp, $1c                                   ; $6c07: $e8 $1c
    ld h, $00                                     ; $6c09: $26 $00
    sbc e                                         ; $6c0b: $9b
    add hl, bc                                    ; $6c0c: $09
    rst $20                                       ; $6c0d: $e7
    jr nz, @+$41                                  ; $6c0e: $20 $3f

    ld d, e                                       ; $6c10: $53
    ld c, c                                       ; $6c11: $49
    nop                                           ; $6c12: $00
    sbc d                                         ; $6c13: $9a
    dec c                                         ; $6c14: $0d
    ccf                                           ; $6c15: $3f
    ld d, e                                       ; $6c16: $53
    rst $38                                       ; $6c17: $ff
    dec c                                         ; $6c18: $0d
    dec h                                         ; $6c19: $25
    nop                                           ; $6c1a: $00

jr_0b0_6c1b:
    rra                                           ; $6c1b: $1f
    ld [bc], a                                    ; $6c1c: $02
    or a                                          ; $6c1d: $b7
    ld c, l                                       ; $6c1e: $4d
    ld e, h                                       ; $6c1f: $5c
    ld h, a                                       ; $6c20: $67
    nop                                           ; $6c21: $00
    jr nz, jr_0b0_6bfa                            ; $6c22: $20 $d6

    ld h, [hl]                                    ; $6c24: $66
    sbc $7b                                       ; $6c25: $de $7b
    ld e, d                                       ; $6c27: $5a
    ld [hl], e                                    ; $6c28: $73
    nop                                           ; $6c29: $00
    jr nz, jr_0b0_6c02                            ; $6c2a: $20 $d6

    ld h, [hl]                                    ; $6c2c: $66
    sbc $7b                                       ; $6c2d: $de $7b
    ld e, d                                       ; $6c2f: $5a
    ld [hl], e                                    ; $6c30: $73
    nop                                           ; $6c31: $00
    jr nz, jr_0b0_6bcf                            ; $6c32: $20 $9b

    add hl, bc                                    ; $6c34: $09
    rst $20                                       ; $6c35: $e7
    jr nz, jr_0b0_6c77                            ; $6c36: $20 $3f

    ld d, e                                       ; $6c38: $53
    nop                                           ; $6c39: $00
    db $10                                        ; $6c3a: $10
    ld c, e                                       ; $6c3b: $4b
    dec h                                         ; $6c3c: $25
    add $18                                       ; $6c3d: $c6 $18
    pop af                                        ; $6c3f: $f1
    dec a                                         ; $6c40: $3d
    ld b, [hl]                                    ; $6c41: $46
    nop                                           ; $6c42: $00
    or h                                          ; $6c43: $b4
    ld e, [hl]                                    ; $6c44: $5e
    ld d, a                                       ; $6c45: $57
    add hl, bc                                    ; $6c46: $09
    ld e, [hl]                                    ; $6c47: $5e
    ld h, e                                       ; $6c48: $63
    nop                                           ; $6c49: $00
    inc l                                         ; $6c4a: $2c
    ld h, a                                       ; $6c4b: $67
    ld a, l                                       ; $6c4c: $7d
    sbc d                                         ; $6c4d: $9a
    ld de, $0006                                  ; $6c4e: $11 $06 $00
    ld l, e                                       ; $6c51: $6b
    nop                                           ; $6c52: $00
    db $fd                                        ; $6c53: $fd
    add hl, bc                                    ; $6c54: $09
    or a                                          ; $6c55: $b7
    ld c, l                                       ; $6c56: $4d
    ccf                                           ; $6c57: $3f
    ld d, e                                       ; $6c58: $53
    nop                                           ; $6c59: $00
    db $10                                        ; $6c5a: $10
    or a                                          ; $6c5b: $b7
    ld c, l                                       ; $6c5c: $4d
    sbc $7b                                       ; $6c5d: $de $7b
    sub $66                                       ; $6c5f: $d6 $66
    nop                                           ; $6c61: $00
    jr nz, jr_0b0_6c1b                            ; $6c62: $20 $b7

    ld c, l                                       ; $6c64: $4d
    sbc $7b                                       ; $6c65: $de $7b
    sub $66                                       ; $6c67: $d6 $66
    nop                                           ; $6c69: $00
    jr nz, jr_0b0_6cb4                            ; $6c6a: $20 $48

    ld b, l                                       ; $6c6c: $45
    ld d, a                                       ; $6c6d: $57
    add hl, bc                                    ; $6c6e: $09
    ld e, [hl]                                    ; $6c6f: $5e
    ld h, e                                       ; $6c70: $63
    ld hl, $4808                                  ; $6c71: $21 $08 $48
    ld b, l                                       ; $6c74: $45
    ld e, c                                       ; $6c75: $59
    ld l, a                                       ; $6c76: $6f

jr_0b0_6c77:
    ldh a, [rHDMA1]                               ; $6c77: $f0 $51
    nop                                           ; $6c79: $00
    inc d                                         ; $6c7a: $14
    db $f4                                        ; $6c7b: $f4
    dec a                                         ; $6c7c: $3d
    cp e                                          ; $6c7d: $bb
    ld a, a                                       ; $6c7e: $7f
    xor l                                         ; $6c7f: $ad
    nop                                           ; $6c80: $00
    inc bc                                        ; $6c81: $03
    inc d                                         ; $6c82: $14
    xor e                                         ; $6c83: $ab
    ld [hl], l                                    ; $6c84: $75
    ld e, a                                       ; $6c85: $5f
    ld a, [de]                                    ; $6c86: $1a
    ld de, $000d                                  ; $6c87: $11 $0d $00
    inc l                                         ; $6c8a: $2c
    cp h                                          ; $6c8b: $bc
    dec c                                         ; $6c8c: $0d
    add hl, de                                    ; $6c8d: $19
    ld c, [hl]                                    ; $6c8e: $4e
    jr z, jr_0b0_6c91                             ; $6c8f: $28 $00

jr_0b0_6c91:
    nop                                           ; $6c91: $00
    nop                                           ; $6c92: $00
    ld [hl], e                                    ; $6c93: $73
    ld e, [hl]                                    ; $6c94: $5e
    sbc $7b                                       ; $6c95: $de $7b
    or a                                          ; $6c97: $b7
    ld c, l                                       ; $6c98: $4d
    nop                                           ; $6c99: $00
    jr nz, @-$11                                  ; $6c9a: $20 $ed

    ld d, c                                       ; $6c9c: $51
    or h                                          ; $6c9d: $b4
    ld h, d                                       ; $6c9e: $62
    rst $30                                       ; $6c9f: $f7
    ld l, d                                       ; $6ca0: $6a
    nop                                           ; $6ca1: $00
    jr nz, @-$19                                  ; $6ca2: $20 $e5

    inc a                                         ; $6ca4: $3c

jr_0b0_6ca5:
    adc e                                         ; $6ca5: $8b
    ld c, c                                       ; $6ca6: $49
    daa                                           ; $6ca7: $27
    ld b, c                                       ; $6ca8: $41
    nop                                           ; $6ca9: $00
    nop                                           ; $6caa: $00
    or l                                          ; $6cab: $b5
    ld c, l                                       ; $6cac: $4d
    sub e                                         ; $6cad: $93
    ld e, [hl]                                    ; $6cae: $5e
    sbc h                                         ; $6caf: $9c
    ld [hl], a                                    ; $6cb0: $77
    nop                                           ; $6cb1: $00
    jr jr_0b0_6ca5                                ; $6cb2: $18 $f1

jr_0b0_6cb4:
    ld [$6860], sp                                ; $6cb4: $08 $60 $68
    sbc [hl]                                      ; $6cb7: $9e
    ld h, $00                                     ; $6cb8: $26 $00
    inc l                                         ; $6cba: $2c
    jr nc, jr_0b0_6cde                            ; $6cbb: $30 $21

    ld e, l                                       ; $6cbd: $5d
    ld e, $06                                     ; $6cbe: $1e $06
    nop                                           ; $6cc0: $00
    ld [hl+], a                                   ; $6cc1: $22
    jr @-$4f                                      ; $6cc2: $18 $af

    ld d, c                                       ; $6cc4: $51
    add b                                         ; $6cc5: $80
    ld a, h                                       ; $6cc6: $7c

jr_0b0_6cc7:
    ld a, b                                       ; $6cc7: $78
    add hl, bc                                    ; $6cc8: $09

jr_0b0_6cc9:
    ld h, h                                       ; $6cc9: $64
    nop                                           ; $6cca: $00
    sub a                                         ; $6ccb: $97
    ld c, c                                       ; $6ccc: $49
    jr nz, jr_0b0_6d03                            ; $6ccd: $20 $34

jr_0b0_6ccf:
    ld e, d                                       ; $6ccf: $5a
    ld [hl], e                                    ; $6cd0: $73
    nop                                           ; $6cd1: $00
    jr nz, jr_0b0_6d1d                            ; $6cd2: $20 $49

    ld c, c                                       ; $6cd4: $49
    ld [hl], d                                    ; $6cd5: $72
    ld e, [hl]                                    ; $6cd6: $5e
    dec b                                         ; $6cd7: $05
    dec a                                         ; $6cd8: $3d
    nop                                           ; $6cd9: $00
    jr jr_0b0_6cc9                                ; $6cda: $18 $ed

    ld d, l                                       ; $6cdc: $55
    daa                                           ; $6cdd: $27

jr_0b0_6cde:
    ld b, c                                       ; $6cde: $41
    sub h                                         ; $6cdf: $94
    ld l, [hl]                                    ; $6ce0: $6e
    nop                                           ; $6ce1: $00
    nop                                           ; $6ce2: $00
    sub a                                         ; $6ce3: $97
    ld c, l                                       ; $6ce4: $4d
    sbc $1f                                       ; $6ce5: $de $1f
    dec hl                                        ; $6ce7: $2b
    ld bc, $1822                                  ; $6ce8: $01 $22 $18
    db $e3                                        ; $6ceb: $e3
    ld [hl], h                                    ; $6cec: $74
    ld a, l                                       ; $6ced: $7d
    ld h, e                                       ; $6cee: $63
    ld sp, $4211                                  ; $6cef: $31 $11 $42
    ld a, l                                       ; $6cf2: $7d
    db $dd                                        ; $6cf3: $dd
    ld a, $49                                     ; $6cf4: $3e $49
    inc b                                         ; $6cf6: $04
    cp e                                          ; $6cf7: $bb
    ld a, a                                       ; $6cf8: $7f
    nop                                           ; $6cf9: $00
    inc l                                         ; $6cfa: $2c
    cp b                                          ; $6cfb: $b8
    ld d, d                                       ; $6cfc: $52
    pop hl                                        ; $6cfd: $e1
    ld [hl], b                                    ; $6cfe: $70
    ld l, b                                       ; $6cff: $68
    nop                                           ; $6d00: $00
    and [hl]                                      ; $6d01: $a6
    db $10                                        ; $6d02: $10

jr_0b0_6d03:
    ld a, [$971a]                                 ; $6d03: $fa $1a $97
    ld c, l                                       ; $6d06: $4d
    jr c, jr_0b0_6d6c                             ; $6d07: $38 $63

    nop                                           ; $6d09: $00
    nop                                           ; $6d0a: $00
    ld c, c                                       ; $6d0b: $49
    ld b, l                                       ; $6d0c: $45
    ld [de], a                                    ; $6d0d: $12
    ld e, [hl]                                    ; $6d0e: $5e
    nop                                           ; $6d0f: $00
    jr nz, jr_0b0_6d12                            ; $6d10: $20 $00

jr_0b0_6d12:
    ld [$5dee], sp                                ; $6d12: $08 $ee $5d
    ld e, e                                       ; $6d15: $5b
    ld [hl], a                                    ; $6d16: $77
    sub a                                         ; $6d17: $97
    ld c, l                                       ; $6d18: $4d
    ld c, h                                       ; $6d19: $4c
    ld bc, $1bde                                  ; $6d1a: $01 $de $1b

jr_0b0_6d1d:
    sub l                                         ; $6d1d: $95
    ld [hl], $b7                                  ; $6d1e: $36 $b7
    ld c, c                                       ; $6d20: $49
    ld h, h                                       ; $6d21: $64
    db $10                                        ; $6d22: $10
    call c, $a17f                                 ; $6d23: $dc $7f $a1
    ld [hl], b                                    ; $6d26: $70
    sbc [hl]                                      ; $6d27: $9e
    dec hl                                        ; $6d28: $2b
    nop                                           ; $6d29: $00
    jr nz, jr_0b0_6cc7                            ; $6d2a: $20 $9b

    ld [hl], $42                                  ; $6d2c: $36 $42
    ld a, l                                       ; $6d2e: $7d
    call c, $407f                                 ; $6d2f: $dc $7f $40
    jr z, jr_0b0_6ccf                             ; $6d32: $28 $9b

    ld [hl], $a2                                  ; $6d34: $36 $a2
    ld [hl], b                                    ; $6d36: $70
    xor d                                         ; $6d37: $aa
    nop                                           ; $6d38: $00
    dec hl                                        ; $6d39: $2b
    ld bc, $1654                                  ; $6d3a: $01 $54 $16
    ld a, [de]                                    ; $6d3d: $1a
    inc hl                                        ; $6d3e: $23
    sub a                                         ; $6d3f: $97
    ld c, l                                       ; $6d40: $4d
    nop                                           ; $6d41: $00
    nop                                           ; $6d42: $00
    sub l                                         ; $6d43: $95
    ld d, c                                       ; $6d44: $51

jr_0b0_6d45:
    ld e, d                                       ; $6d45: $5a
    ld a, e                                       ; $6d46: $7b
    nop                                           ; $6d47: $00
    jr nz, jr_0b0_6d4a                            ; $6d48: $20 $00

jr_0b0_6d4a:
    db $10                                        ; $6d4a: $10
    ld [hl], a                                    ; $6d4b: $77

jr_0b0_6d4c:
    ld c, c                                       ; $6d4c: $49
    ld e, d                                       ; $6d4d: $5a
    ld [hl], a                                    ; $6d4e: $77
    dec hl                                        ; $6d4f: $2b
    ld bc, $012b                                  ; $6d50: $01 $2b $01
    cp [hl]                                       ; $6d53: $be

Jump_0b0_6d54:
    inc hl                                        ; $6d54: $23
    sbc h                                         ; $6d55: $9c
    ld l, e                                       ; $6d56: $6b
    sub [hl]                                      ; $6d57: $96
    ld d, $68                                     ; $6d58: $16 $68
    nop                                           ; $6d5a: $00
    ei                                            ; $6d5b: $fb
    ld h, $40                                     ; $6d5c: $26 $40
    ld b, h                                       ; $6d5e: $44
    call c, $ef7f                                 ; $6d5f: $dc $7f $ef
    nop                                           ; $6d62: $00
    cp h                                          ; $6d63: $bc
    ld a, [hl-]                                   ; $6d64: $3a
    rla                                           ; $6d65: $17
    ld a, [hl+]                                   ; $6d66: $2a
    ccf                                           ; $6d67: $3f
    ld c, e                                       ; $6d68: $4b
    nop                                           ; $6d69: $00
    jr z, jr_0b0_6d45                             ; $6d6a: $28 $d9

jr_0b0_6d6c:
    ld e, $aa                                     ; $6d6c: $1e $aa
    nop                                           ; $6d6e: $00
    ld c, c                                       ; $6d6f: $49
    add hl, hl                                    ; $6d70: $29
    nop                                           ; $6d71: $00
    inc l                                         ; $6d72: $2c
    ld a, [$0a1a]                                 ; $6d73: $fa $1a $0a
    ld bc, $2bbe                                  ; $6d76: $01 $be $2b
    nop                                           ; $6d79: $00
    nop                                           ; $6d7a: $00
    ld d, l                                       ; $6d7b: $55
    ld c, c                                       ; $6d7c: $49
    sub h                                         ; $6d7d: $94
    ld l, [hl]                                    ; $6d7e: $6e
    nop                                           ; $6d7f: $00
    jr nz, @+$43                                  ; $6d80: $20 $41

    jr nz, jr_0b0_6d88                            ; $6d82: $20 $04

    ld a, c                                       ; $6d84: $79
    jp nc, $1855                                  ; $6d85: $d2 $55 $18

jr_0b0_6d88:
    ld [hl], a                                    ; $6d88: $77
    add [hl]                                      ; $6d89: $86
    inc d                                         ; $6d8a: $14
    ld e, l                                       ; $6d8b: $5d
    dec de                                        ; $6d8c: $1b
    adc d                                         ; $6d8d: $8a
    ld e, c                                       ; $6d8e: $59
    ld e, c                                       ; $6d8f: $59
    ld [hl], e                                    ; $6d90: $73
    nop                                           ; $6d91: $00
    jr z, jr_0b0_6d4c                             ; $6d92: $28 $b8

    ld a, [bc]                                    ; $6d94: $0a
    cp h                                          ; $6d95: $bc
    ld a, [hl-]                                   ; $6d96: $3a
    inc c                                         ; $6d97: $0c
    add hl, bc                                    ; $6d98: $09
    xor h                                         ; $6d99: $ac
    nop                                           ; $6d9a: $00
    jr c, jr_0b0_6dc7                             ; $6d9b: $38 $2a

    cp h                                          ; $6d9d: $bc
    ld a, [hl-]                                   ; $6d9e: $3a
    rst $28                                       ; $6d9f: $ef
    nop                                           ; $6da0: $00
    adc b                                         ; $6da1: $88
    inc d                                         ; $6da2: $14
    inc [hl]                                      ; $6da3: $34
    ld a, [bc]                                    ; $6da4: $0a
    sbc [hl]                                      ; $6da5: $9e
    ld c, e                                       ; $6da6: $4b
    xor h                                         ; $6da7: $ac
    nop                                           ; $6da8: $00
    jr nz, jr_0b0_6de3                            ; $6da9: $20 $38

    cpl                                           ; $6dab: $2f
    ld l, [hl]                                    ; $6dac: $6e
    ld d, [hl]                                    ; $6dad: $56
    ld b, $2b                                     ; $6dae: $06 $2b
    ld bc, $1c00                                  ; $6db0: $01 $00 $1c
    push hl                                       ; $6db3: $e5

jr_0b0_6db4:
    ld b, b                                       ; $6db4: $40
    adc $59                                       ; $6db5: $ce $59
    halt                                          ; $6db7: $76
    ld c, c                                       ; $6db8: $49
    nop                                           ; $6db9: $00
    inc d                                         ; $6dba: $14
    ld l, c                                       ; $6dbb: $69
    ld e, c                                       ; $6dbc: $59
    call nz, $f744                                ; $6dbd: $c4 $44 $f7
    ld [hl], d                                    ; $6dc0: $72
    ld b, c                                       ; $6dc1: $41
    jr nc, jr_0b0_6de9                            ; $6dc2: $30 $25

    ld [hl], l                                    ; $6dc4: $75
    or e                                          ; $6dc5: $b3
    ld a, d                                       ; $6dc6: $7a

jr_0b0_6dc7:
    xor e                                         ; $6dc7: $ab
    ld d, c                                       ; $6dc8: $51
    ld h, h                                       ; $6dc9: $64
    inc h                                         ; $6dca: $24
    inc de                                        ; $6dcb: $13
    ld a, [bc]                                    ; $6dcc: $0a
    db $ed                                        ; $6dcd: $ed
    nop                                           ; $6dce: $00
    cp h                                          ; $6dcf: $bc
    ld a, [hl-]                                   ; $6dd0: $3a
    xor h                                         ; $6dd1: $ac
    nop                                           ; $6dd2: $00
    jr c, jr_0b0_6dff                             ; $6dd3: $38 $2a

    ld a, l                                       ; $6dd5: $7d
    ld c, a                                       ; $6dd6: $4f
    cp e                                          ; $6dd7: $bb
    ld a, [hl-]                                   ; $6dd8: $3a
    nop                                           ; $6dd9: $00
    inc l                                         ; $6dda: $2c
    or e                                          ; $6ddb: $b3
    ld a, d                                       ; $6ddc: $7a
    call z, Call_000_1d00                         ; $6ddd: $cc $00 $1d
    dec sp                                        ; $6de0: $3b
    nop                                           ; $6de1: $00
    nop                                           ; $6de2: $00

jr_0b0_6de3:
    call nz, Call_0b0_4058                        ; $6de3: $c4 $58 $40
    inc a                                         ; $6de6: $3c
    daa                                           ; $6de7: $27
    ld a, c                                       ; $6de8: $79

jr_0b0_6de9:
    nop                                           ; $6de9: $00
    inc e                                         ; $6dea: $1c
    ld h, $3d                                     ; $6deb: $26 $3d
    or d                                          ; $6ded: $b2
    ld c, l                                       ; $6dee: $4d
    ld c, b                                       ; $6def: $48
    ld a, l                                       ; $6df0: $7d
    nop                                           ; $6df1: $00
    nop                                           ; $6df2: $00
    ld c, b                                       ; $6df3: $48
    ld b, l                                       ; $6df4: $45

jr_0b0_6df5:
    nop                                           ; $6df5: $00
    jr nz, jr_0b0_6e49                            ; $6df6: $20 $51

    ld e, d                                       ; $6df8: $5a
    nop                                           ; $6df9: $00
    nop                                           ; $6dfa: $00
    ld h, $75                                     ; $6dfb: $26 $75
    jr nz, jr_0b0_6e23                            ; $6dfd: $20 $24

jr_0b0_6dff:
    and $2c                                       ; $6dff: $e6 $2c
    ld hl, $9a28                                  ; $6e01: $21 $28 $9a
    ld l, $46                                     ; $6e04: $2e $46
    ld a, c                                       ; $6e06: $79
    xor h                                         ; $6e07: $ac
    nop                                           ; $6e08: $00
    xor l                                         ; $6e09: $ad
    nop                                           ; $6e0a: $00
    ld e, d                                       ; $6e0b: $5a
    ld l, $3f                                     ; $6e0c: $2e $3f
    ld c, e                                       ; $6e0e: $4b
    sbc a                                         ; $6e0f: $9f
    ld h, a                                       ; $6e10: $67
    adc d                                         ; $6e11: $8a
    ld [$4c82], sp                                ; $6e12: $08 $82 $4c
    ld a, h                                       ; $6e15: $7c
    ld [hl+], a                                   ; $6e16: $22
    db $ed                                        ; $6e17: $ed
    ld a, c                                       ; $6e18: $79
    nop                                           ; $6e19: $00
    nop                                           ; $6e1a: $00
    ld b, [hl]                                    ; $6e1b: $46
    dec b                                         ; $6e1c: $05
    add d                                         ; $6e1d: $82
    ld b, b                                       ; $6e1e: $40
    rrc c                                         ; $6e1f: $cb $09
    nop                                           ; $6e21: $00
    inc e                                         ; $6e22: $1c

jr_0b0_6e23:
    ld b, a                                       ; $6e23: $47
    ld e, l                                       ; $6e24: $5d
    ld e, d                                       ; $6e25: $5a
    ld [hl], e                                    ; $6e26: $73
    rrca                                          ; $6e27: $0f
    ld e, d                                       ; $6e28: $5a
    nop                                           ; $6e29: $00
    nop                                           ; $6e2a: $00
    ld c, b                                       ; $6e2b: $48
    ld b, l                                       ; $6e2c: $45
    ld d, c                                       ; $6e2d: $51
    ld e, d                                       ; $6e2e: $5a
    nop                                           ; $6e2f: $00
    jr nz, jr_0b0_6db4                            ; $6e30: $20 $82

    nop                                           ; $6e32: $00
    db $ec                                        ; $6e33: $ec
    dec c                                         ; $6e34: $0d
    ld b, c                                       ; $6e35: $41
    jr nc, @+$56                                  ; $6e36: $30 $54

    rra                                           ; $6e38: $1f
    jr nz, jr_0b0_6e5f                            ; $6e39: $20 $24

    xor h                                         ; $6e3b: $ac
    nop                                           ; $6e3c: $00
    dec b                                         ; $6e3d: $05
    ld l, l                                       ; $6e3e: $6d
    jr c, jr_0b0_6e6b                             ; $6e3f: $38 $2a

    ld bc, $bd00                                  ; $6e41: $01 $00 $bd
    ld a, [hl-]                                   ; $6e44: $3a
    jp hl                                         ; $6e45: $e9


    jr c, jr_0b0_6df5                             ; $6e46: $38 $ad

    nop                                           ; $6e48: $00

jr_0b0_6e49:
    ld hl, $cb24                                  ; $6e49: $21 $24 $cb
    inc c                                         ; $6e4c: $0c
    ld b, a                                       ; $6e4d: $47
    ld a, l                                       ; $6e4e: $7d
    ld d, e                                       ; $6e4f: $53
    rla                                           ; $6e50: $17
    add d                                         ; $6e51: $82
    nop                                           ; $6e52: $00
    dec l                                         ; $6e53: $2d
    ld c, $01                                     ; $6e54: $0e $01
    jr nc, jr_0b0_6ecc                            ; $6e56: $30 $74

    dec de                                        ; $6e58: $1b
    nop                                           ; $6e59: $00
    nop                                           ; $6e5a: $00
    jp nc, Jump_0b0_5951                          ; $6e5b: $d2 $51 $59

jr_0b0_6e5e:
    ld l, a                                       ; $6e5e: $6f

jr_0b0_6e5f:
    nop                                           ; $6e5f: $00
    jr nz, jr_0b0_6e62                            ; $6e60: $20 $00

jr_0b0_6e62:
    inc d                                         ; $6e62: $14
    daa                                           ; $6e63: $27
    ld b, c                                       ; $6e64: $41
    ld [hl], d                                    ; $6e65: $72
    ld e, [hl]                                    ; $6e66: $5e
    dec d                                         ; $6e67: $15
    ld b, c                                       ; $6e68: $41
    and d                                         ; $6e69: $a2
    nop                                           ; $6e6a: $00

jr_0b0_6e6b:
    ld l, $16                                     ; $6e6b: $2e $16
    jr nz, jr_0b0_6e93                            ; $6e6d: $20 $24

    inc sp                                        ; $6e6f: $33
    dec de                                        ; $6e70: $1b
    ld hl, $5404                                  ; $6e71: $21 $04 $54
    dec de                                        ; $6e74: $1b
    ld b, c                                       ; $6e75: $41
    inc [hl]                                      ; $6e76: $34
    xor h                                         ; $6e77: $ac
    nop                                           ; $6e78: $00
    ld b, d                                       ; $6e79: $42
    nop                                           ; $6e7a: $00
    adc $00                                       ; $6e7b: $ce $00
    jr nz, jr_0b0_6eab                            ; $6e7d: $20 $2c

    ld d, d                                       ; $6e7f: $52
    ld [hl], $21                                  ; $6e80: $36 $21
    inc c                                         ; $6e82: $0c
    ld e, a                                       ; $6e83: $5f
    ld d, a                                       ; $6e84: $57
    ret                                           ; $6e85: $c9


    dec h                                         ; $6e86: $25
    ld l, d                                       ; $6e87: $6a
    nop                                           ; $6e88: $00
    nop                                           ; $6e89: $00
    nop                                           ; $6e8a: $00
    ldh a, [rNR33]                                ; $6e8b: $f0 $1d
    ld bc, $c82c                                  ; $6e8d: $01 $2c $c8
    nop                                           ; $6e90: $00
    nop                                           ; $6e91: $00
    inc e                                         ; $6e92: $1c

jr_0b0_6e93:
    ld d, c                                       ; $6e93: $51
    ld e, d                                       ; $6e94: $5a
    ld a, e                                       ; $6e95: $7b
    ld [hl], a                                    ; $6e96: $77
    dec d                                         ; $6e97: $15
    ld b, c                                       ; $6e98: $41
    nop                                           ; $6e99: $00
    jr @-$53                                      ; $6e9a: $18 $ab

    ld c, l                                       ; $6e9c: $4d
    sub $66                                       ; $6e9d: $d6 $66
    dec d                                         ; $6e9f: $15
    ld b, c                                       ; $6ea0: $41
    ld b, b                                       ; $6ea1: $40
    nop                                           ; $6ea2: $00
    dec d                                         ; $6ea3: $15
    ld b, c                                       ; $6ea4: $41
    inc de                                        ; $6ea5: $13
    dec de                                        ; $6ea6: $1b
    ld l, b                                       ; $6ea7: $68
    ld bc, $0040                                  ; $6ea8: $01 $40 $00

jr_0b0_6eab:
    inc de                                        ; $6eab: $13
    dec de                                        ; $6eac: $1b
    ld hl, $8824                                  ; $6ead: $21 $24 $88
    dec c                                         ; $6eb0: $0d
    ld b, d                                       ; $6eb1: $42
    nop                                           ; $6eb2: $00
    inc h                                         ; $6eb3: $24
    ld a, l                                       ; $6eb4: $7d
    ld [hl], c                                    ; $6eb5: $71
    ld e, [hl]                                    ; $6eb6: $5e
    sub b                                         ; $6eb7: $90
    ld [bc], a                                    ; $6eb8: $02
    ld h, [hl]                                    ; $6eb9: $66
    nop                                           ; $6eba: $00
    pop de                                        ; $6ebb: $d1
    ld a, [hl+]                                   ; $6ebc: $2a
    pop de                                        ; $6ebd: $d1
    add hl, bc                                    ; $6ebe: $09
    ccf                                           ; $6ebf: $3f
    ld c, e                                       ; $6ec0: $4b
    nop                                           ; $6ec1: $00
    nop                                           ; $6ec2: $00
    ld [hl], d                                    ; $6ec3: $72
    ld b, l                                       ; $6ec4: $45
    call z, Call_000_3f08                         ; $6ec5: $cc $08 $3f
    ld c, e                                       ; $6ec8: $4b
    nop                                           ; $6ec9: $00
    inc e                                         ; $6eca: $1c
    dec d                                         ; $6ecb: $15

jr_0b0_6ecc:
    ld b, c                                       ; $6ecc: $41
    cp l                                          ; $6ecd: $bd
    ld [hl], a                                    ; $6ece: $77

jr_0b0_6ecf:
    or h                                          ; $6ecf: $b4
    ld h, d                                       ; $6ed0: $62
    nop                                           ; $6ed1: $00
    jr jr_0b0_6e5e                                ; $6ed2: $18 $8a

    ld c, c                                       ; $6ed4: $49
    ld a, d                                       ; $6ed5: $7a
    ld [hl], e                                    ; $6ed6: $73
    ld [hl], d                                    ; $6ed7: $72
    ld e, d                                       ; $6ed8: $5a
    add d                                         ; $6ed9: $82
    nop                                           ; $6eda: $00
    push af                                       ; $6edb: $f5
    inc a                                         ; $6edc: $3c
    inc c                                         ; $6edd: $0c
    ld c, $12                                     ; $6ede: $0e $12
    rla                                           ; $6ee0: $17
    nop                                           ; $6ee1: $00
    jr @-$6f                                      ; $6ee2: $18 $8f

    ld [de], a                                    ; $6ee4: $12
    ld b, [hl]                                    ; $6ee5: $46

jr_0b0_6ee6:
    dec b                                         ; $6ee6: $05
    sub a                                         ; $6ee7: $97
    rra                                           ; $6ee8: $1f
    ld hl, $d100                                  ; $6ee9: $21 $00 $d1
    ld b, $06                                     ; $6eec: $06 $06
    ld e, l                                       ; $6eee: $5d
    or e                                          ; $6eef: $b3
    ld a, d                                       ; $6ef0: $7a
    ld b, c                                       ; $6ef1: $41
    nop                                           ; $6ef2: $00
    push de                                       ; $6ef3: $d5
    ld c, $ff                                     ; $6ef4: $0e $ff
    ld a, $2c                                     ; $6ef6: $3e $2c
    dec b                                         ; $6ef8: $05
    nop                                           ; $6ef9: $00
    nop                                           ; $6efa: $00
    or b                                          ; $6efb: $b0
    dec [hl]                                      ; $6efc: $35
    inc a                                         ; $6efd: $3c
    ld e, a                                       ; $6efe: $5f
    xor [hl]                                      ; $6eff: $ae
    nop                                           ; $6f00: $00
    nop                                           ; $6f01: $00
    nop                                           ; $6f02: $00
    rla                                           ; $6f03: $17
    ld l, e                                       ; $6f04: $6b
    nop                                           ; $6f05: $00
    jr nz, jr_0b0_6ee6                            ; $6f06: $20 $de

    ld a, a                                       ; $6f08: $7f
    nop                                           ; $6f09: $00
    inc e                                         ; $6f0a: $1c
    xor h                                         ; $6f0b: $ac
    ld c, l                                       ; $6f0c: $4d
    or h                                          ; $6f0d: $b4
    ld h, d                                       ; $6f0e: $62
    sbc e                                         ; $6f0f: $9b
    ld [hl], a                                    ; $6f10: $77
    jr nz, jr_0b0_6f13                            ; $6f11: $20 $00

jr_0b0_6f13:
    db $f4                                        ; $6f13: $f4
    inc a                                         ; $6f14: $3c
    daa                                           ; $6f15: $27
    dec b                                         ; $6f16: $05
    ld d, h                                       ; $6f17: $54
    dec de                                        ; $6f18: $1b
    jr nz, jr_0b0_6f1f                            ; $6f19: $20 $04

    adc a                                         ; $6f1b: $8f
    ld [de], a                                    ; $6f1c: $12
    ld [hl], l                                    ; $6f1d: $75
    dec de                                        ; $6f1e: $1b

jr_0b0_6f1f:
    ld c, b                                       ; $6f1f: $48
    dec d                                         ; $6f20: $15
    ld h, d                                       ; $6f21: $62
    nop                                           ; $6f22: $00
    and d                                         ; $6f23: $a2
    ld a, b                                       ; $6f24: $78
    inc [hl]                                      ; $6f25: $34
    dec de                                        ; $6f26: $1b
    or e                                          ; $6f27: $b3
    ld a, d                                       ; $6f28: $7a
    ld h, c                                       ; $6f29: $61
    nop                                           ; $6f2a: $00
    or b                                          ; $6f2b: $b0
    ld d, $4b                                     ; $6f2c: $16 $4b
    add hl, bc                                    ; $6f2e: $09
    rra                                           ; $6f2f: $1f
    ld b, e                                       ; $6f30: $43
    ld b, h                                       ; $6f31: $44
    inc b                                         ; $6f32: $04
    ld d, c                                       ; $6f33: $51
    ld h, d                                       ; $6f34: $62
    or l                                          ; $6f35: $b5
    dec d                                         ; $6f36: $15
    sbc $7b                                       ; $6f37: $de $7b
    nop                                           ; $6f39: $00
    jr nz, jr_0b0_6ecf                            ; $6f3a: $20 $93

    ld e, [hl]                                    ; $6f3c: $5e
    db $dd                                        ; $6f3d: $dd
    ld a, e                                       ; $6f3e: $7b
    jr jr_0b0_6fac                                ; $6f3f: $18 $6b

    nop                                           ; $6f41: $00
    jr nz, jr_0b0_6ecf                            ; $6f42: $20 $8b

    ld c, c                                       ; $6f44: $49
    push de                                       ; $6f45: $d5
    ld h, [hl]                                    ; $6f46: $66
    cpl                                           ; $6f47: $2f
    ld d, [hl]                                    ; $6f48: $56
    jr nz, jr_0b0_6f4b                            ; $6f49: $20 $00

jr_0b0_6f4b:
    inc de                                        ; $6f4b: $13
    dec de                                        ; $6f4c: $1b
    dec b                                         ; $6f4d: $05
    dec b                                         ; $6f4e: $05
    adc c                                         ; $6f4f: $89
    add hl, bc                                    ; $6f50: $09
    ld b, c                                       ; $6f51: $41
    nop                                           ; $6f52: $00
    xor c                                         ; $6f53: $a9
    dec c                                         ; $6f54: $0d
    inc de                                        ; $6f55: $13
    rla                                           ; $6f56: $17
    dec l                                         ; $6f57: $2d
    ld [de], a                                    ; $6f58: $12
    ld h, c                                       ; $6f59: $61
    nop                                           ; $6f5a: $00
    ld [de], a                                    ; $6f5b: $12
    rla                                           ; $6f5c: $17
    jr nz, jr_0b0_6f9b                            ; $6f5d: $20 $3c

    call nz, Call_000_207c                        ; $6f5f: $c4 $7c $20
    nop                                           ; $6f62: $00
    jp z, $f20d                                   ; $6f63: $ca $0d $f2

    ld a, [de]                                    ; $6f66: $1a
    ldh a, [rP1]                                  ; $6f67: $f0 $00
    nop                                           ; $6f69: $00
    nop                                           ; $6f6a: $00
    ld [hl-], a                                   ; $6f6b: $32
    ld c, d                                       ; $6f6c: $4a
    rl b                                          ; $6f6d: $cb $10
    sbc $7b                                       ; $6f6f: $de $7b
    nop                                           ; $6f71: $00
    jr nz, jr_0b0_6fc5                            ; $6f72: $20 $51

    ld e, d                                       ; $6f74: $5a
    rst $30                                       ; $6f75: $f7
    ld l, d                                       ; $6f76: $6a
    sbc h                                         ; $6f77: $9c
    ld [hl], a                                    ; $6f78: $77
    nop                                           ; $6f79: $00
    jr nz, jr_0b0_6fc4                            ; $6f7a: $20 $48

    ld b, c                                       ; $6f7c: $41
    cpl                                           ; $6f7d: $2f
    ld d, [hl]                                    ; $6f7e: $56
    adc e                                         ; $6f7f: $8b
    ld c, c                                       ; $6f80: $49
    ld b, b                                       ; $6f81: $40
    nop                                           ; $6f82: $00
    pop de                                        ; $6f83: $d1
    ld a, [de]                                    ; $6f84: $1a
    or h                                          ; $6f85: $b4
    ld h, d                                       ; $6f86: $62
    adc c                                         ; $6f87: $89
    add hl, bc                                    ; $6f88: $09
    ld hl, $122c                                  ; $6f89: $21 $2c $12
    rla                                           ; $6f8c: $17
    xor c                                         ; $6f8d: $a9
    dec c                                         ; $6f8e: $0d
    ld b, d                                       ; $6f8f: $42
    nop                                           ; $6f90: $00
    ld b, c                                       ; $6f91: $41
    nop                                           ; $6f92: $00
    ld a, [c]                                     ; $6f93: $f2
    ld a, [de]                                    ; $6f94: $1a
    jr nz, @+$2a                                  ; $6f95: $20 $28

    ld d, l                                       ; $6f97: $55
    daa                                           ; $6f98: $27

jr_0b0_6f99:
    add c                                         ; $6f99: $81
    nop                                           ; $6f9a: $00

jr_0b0_6f9b:
    dec bc                                        ; $6f9b: $0b
    ld [de], a                                    ; $6f9c: $12
    ld a, [c]                                     ; $6f9d: $f2
    ld a, [de]                                    ; $6f9e: $1a
    ld h, $09                                     ; $6f9f: $26 $09
    nop                                           ; $6fa1: $00
    nop                                           ; $6fa2: $00
    rst $08                                       ; $6fa3: $cf
    dec [hl]                                      ; $6fa4: $35
    sbc h                                         ; $6fa5: $9c
    ld [hl], a                                    ; $6fa6: $77
    sub l                                         ; $6fa7: $95
    ld d, [hl]                                    ; $6fa8: $56
    nop                                           ; $6fa9: $00
    jr nz, jr_0b0_6f99                            ; $6faa: $20 $ed

jr_0b0_6fac:
    ld d, c                                       ; $6fac: $51
    ld [hl], d                                    ; $6fad: $72
    ld e, [hl]                                    ; $6fae: $5e
    cpl                                           ; $6faf: $2f
    ld d, [hl]                                    ; $6fb0: $56
    nop                                           ; $6fb1: $00
    jr nz, @+$08                                  ; $6fb2: $20 $06

    ld b, c                                       ; $6fb4: $41
    ld h, $41                                     ; $6fb5: $26 $41
    ld b, d                                       ; $6fb7: $42
    nop                                           ; $6fb8: $00
    jr nz, jr_0b0_6fbb                            ; $6fb9: $20 $00

jr_0b0_6fbb:
    adc d                                         ; $6fbb: $8a
    ld c, c                                       ; $6fbc: $49
    pop de                                        ; $6fbd: $d1
    ld d, $54                                     ; $6fbe: $16 $54
    rla                                           ; $6fc0: $17
    ld h, d                                       ; $6fc1: $62
    nop                                           ; $6fc2: $00
    pop de                                        ; $6fc3: $d1

jr_0b0_6fc4:
    ld a, [de]                                    ; $6fc4: $1a

jr_0b0_6fc5:
    cp b                                          ; $6fc5: $b8
    cpl                                           ; $6fc6: $2f
    inc [hl]                                      ; $6fc7: $34
    dec de                                        ; $6fc8: $1b

jr_0b0_6fc9:
    ld b, c                                       ; $6fc9: $41
    nop                                           ; $6fca: $00
    dec [hl]                                      ; $6fcb: $35
    dec hl                                        ; $6fcc: $2b
    ld l, b                                       ; $6fcd: $68
    dec c                                         ; $6fce: $0d
    sbc b                                         ; $6fcf: $98
    scf                                           ; $6fd0: $37
    add c                                         ; $6fd1: $81
    nop                                           ; $6fd2: $00
    pop de                                        ; $6fd3: $d1
    ld d, $55                                     ; $6fd4: $16 $55
    rra                                           ; $6fd6: $1f
    ld [de], a                                    ; $6fd7: $12
    dec de                                        ; $6fd8: $1b
    ld hl, $8204                                  ; $6fd9: $21 $04 $82
    ld b, h                                       ; $6fdc: $44
    db $10                                        ; $6fdd: $10
    ld d, d                                       ; $6fde: $52
    ld l, e                                       ; $6fdf: $6b
    dec [hl]                                      ; $6fe0: $35
    nop                                           ; $6fe1: $00
    jr nz, jr_0b0_6fc9                            ; $6fe2: $20 $e5

    inc a                                         ; $6fe4: $3c
    ld c, b                                       ; $6fe5: $48
    ld b, l                                       ; $6fe6: $45
    ld l, e                                       ; $6fe7: $6b
    dec [hl]                                      ; $6fe8: $35
    nop                                           ; $6fe9: $00
    jr nz, @-$10                                  ; $6fea: $20 $ee

    ld e, l                                       ; $6fec: $5d
    cp b                                          ; $6fed: $b8
    cpl                                           ; $6fee: $2f
    inc [hl]                                      ; $6fef: $34
    dec de                                        ; $6ff0: $1b
    jr nz, jr_0b0_6ff3                            ; $6ff1: $20 $00

jr_0b0_6ff3:
    xor h                                         ; $6ff3: $ac
    ld d, l                                       ; $6ff4: $55
    ld b, $3d                                     ; $6ff5: $06 $3d
    inc sp                                        ; $6ff7: $33
    dec de                                        ; $6ff8: $1b
    adc d                                         ; $6ff9: $8a
    ld de, $1af2                                  ; $6ffa: $11 $f2 $1a
    ld [hl], a                                    ; $6ffd: $77
    inc sp                                        ; $6ffe: $33
    inc [hl]                                      ; $6fff: $34
    daa                                           ; $7000: $27

jr_0b0_7001:
    ld h, c                                       ; $7001: $61
    nop                                           ; $7002: $00
    sub b                                         ; $7003: $90
    ld [hl+], a                                   ; $7004: $22
    ld c, b                                       ; $7005: $48
    dec c                                         ; $7006: $0d
    sbc b                                         ; $7007: $98
    dec sp                                        ; $7008: $3b
    ld b, b                                       ; $7009: $40
    nop                                           ; $700a: $00
    inc [hl]                                      ; $700b: $34
    inc hl                                        ; $700c: $23
    db $eb                                        ; $700d: $eb
    ld de, $3397                                  ; $700e: $11 $97 $33
    nop                                           ; $7011: $00
    nop                                           ; $7012: $00
    and e                                         ; $7013: $a3
    ld b, b                                       ; $7014: $40
    jr z, jr_0b0_706c                             ; $7015: $28 $55

    nop                                           ; $7017: $00
    inc l                                         ; $7018: $2c
    nop                                           ; $7019: $00
    jr nz, jr_0b0_7001                            ; $701a: $20 $e5

    inc a                                         ; $701c: $3c

jr_0b0_701d:
    jr z, jr_0b0_7074                             ; $701d: $28 $55

    nop                                           ; $701f: $00
    inc l                                         ; $7020: $2c
    nop                                           ; $7021: $00
    jr nz, @-$0c                                  ; $7022: $20 $f2

    ld a, [de]                                    ; $7024: $1a
    ld [hl], a                                    ; $7025: $77
    inc sp                                        ; $7026: $33
    inc [hl]                                      ; $7027: $34
    daa                                           ; $7028: $27
    ld h, c                                       ; $7029: $61
    nop                                           ; $702a: $00
    inc de                                        ; $702b: $13
    inc hl                                        ; $702c: $23
    xor h                                         ; $702d: $ac
    ld d, l                                       ; $702e: $55
    sub h                                         ; $702f: $94
    ld l, [hl]                                    ; $7030: $6e
    ld h, $09                                     ; $7031: $26 $09
    ld [hl], a                                    ; $7033: $77
    scf                                           ; $7034: $37
    ld d, b                                       ; $7035: $50
    ld [hl+], a                                   ; $7036: $22
    adc d                                         ; $7037: $8a
    dec c                                         ; $7038: $0d
    nop                                           ; $7039: $00
    nop                                           ; $703a: $00
    ld c, b                                       ; $703b: $48
    add hl, bc                                    ; $703c: $09
    db $d3                                        ; $703d: $d3
    ld a, [hl+]                                   ; $703e: $2a
    add c                                         ; $703f: $81
    nop                                           ; $7040: $00
    ld b, b                                       ; $7041: $40
    nop                                           ; $7042: $00
    dec c                                         ; $7043: $0d
    ld a, [de]                                    ; $7044: $1a
    sub a                                         ; $7045: $97
    scf                                           ; $7046: $37
    ld l, b                                       ; $7047: $68
    ld de, $0000                                  ; $7048: $11 $00 $00
    daa                                           ; $704b: $27
    ld e, l                                       ; $704c: $5d

jr_0b0_704d:
    ld [hl], e                                    ; $704d: $73
    ld l, [hl]                                    ; $704e: $6e
    ld hl, $002c                                  ; $704f: $21 $2c $00
    jr nz, jr_0b0_707b                            ; $7052: $20 $27

    ld e, l                                       ; $7054: $5d
    ld [hl], e                                    ; $7055: $73
    ld l, [hl]                                    ; $7056: $6e
    ld hl, $002c                                  ; $7057: $21 $2c $00
    jr nz, @+$79                                  ; $705a: $20 $77

    scf                                           ; $705c: $37
    ld d, b                                       ; $705d: $50
    ld [hl+], a                                   ; $705e: $22
    adc d                                         ; $705f: $8a
    dec c                                         ; $7060: $0d
    jr nz, jr_0b0_7067                            ; $7061: $20 $04

    rst $30                                       ; $7063: $f7
    ld [hl], d                                    ; $7064: $72
    ld h, $05                                     ; $7065: $26 $05

jr_0b0_7067:
    rst $38                                       ; $7067: $ff
    ld a, a                                       ; $7068: $7f
    ld h, b                                       ; $7069: $60
    nop                                           ; $706a: $00
    adc c                                         ; $706b: $89

jr_0b0_706c:
    dec c                                         ; $706c: $0d
    ld l, $1a                                     ; $706d: $2e $1a
    ld h, $05                                     ; $706f: $26 $05
    nop                                           ; $7071: $00
    nop                                           ; $7072: $00
    add c                                         ; $7073: $81

jr_0b0_7074:
    nop                                           ; $7074: $00
    dec b                                         ; $7075: $05
    ld bc, $2c21                                  ; $7076: $01 $21 $2c
    nop                                           ; $7079: $00
    nop                                           ; $707a: $00

jr_0b0_707b:
    add c                                         ; $707b: $81
    nop                                           ; $707c: $00
    db $e4                                        ; $707d: $e4
    nop                                           ; $707e: $00
    and d                                         ; $707f: $a2
    nop                                           ; $7080: $00
    nop                                           ; $7081: $00
    nop                                           ; $7082: $00
    jr jr_0b0_70fc                                ; $7083: $18 $77

    push hl                                       ; $7085: $e5
    ld h, b                                       ; $7086: $60
    nop                                           ; $7087: $00
    inc h                                         ; $7088: $24
    nop                                           ; $7089: $00
    jr nz, jr_0b0_70a4                            ; $708a: $20 $18

    ld [hl], a                                    ; $708c: $77
    push hl                                       ; $708d: $e5
    ld h, b                                       ; $708e: $60
    nop                                           ; $708f: $00
    inc h                                         ; $7090: $24
    nop                                           ; $7091: $00
    jr nz, jr_0b0_701d                            ; $7092: $20 $89

    dec c                                         ; $7094: $0d
    ld l, $1a                                     ; $7095: $2e $1a
    ld h, $05                                     ; $7097: $26 $05
    jr nz, jr_0b0_709b                            ; $7099: $20 $00

jr_0b0_709b:
    ld a, e                                       ; $709b: $7b
    ld [hl], a                                    ; $709c: $77
    nop                                           ; $709d: $00
    jr nz, @+$01                                  ; $709e: $20 $ff

    ld a, a                                       ; $70a0: $7f
    nop                                           ; $70a1: $00
    nop                                           ; $70a2: $00
    add c                                         ; $70a3: $81

jr_0b0_70a4:
    nop                                           ; $70a4: $00
    nop                                           ; $70a5: $00
    jr nz, @+$01                                  ; $70a6: $20 $ff

    ld a, a                                       ; $70a8: $7f
    nop                                           ; $70a9: $00
    nop                                           ; $70aa: $00
    rrca                                          ; $70ab: $0f
    ld h, d                                       ; $70ac: $62
    sbc h                                         ; $70ad: $9c
    ld a, e                                       ; $70ae: $7b
    or l                                          ; $70af: $b5
    ld l, [hl]                                    ; $70b0: $6e
    nop                                           ; $70b1: $00
    nop                                           ; $70b2: $00
    push hl                                       ; $70b3: $e5
    inc a                                         ; $70b4: $3c
    rrca                                          ; $70b5: $0f
    ld e, d                                       ; $70b6: $5a
    ld c, c                                       ; $70b7: $49
    ld c, c                                       ; $70b8: $49
    nop                                           ; $70b9: $00
    nop                                           ; $70ba: $00

jr_0b0_70bb:
    rst $30                                       ; $70bb: $f7
    ld [hl], d                                    ; $70bc: $72
    sbc $7b                                       ; $70bd: $de $7b
    nop                                           ; $70bf: $00
    jr nz, jr_0b0_70c2                            ; $70c0: $20 $00

jr_0b0_70c2:
    jr nz, jr_0b0_70bb                            ; $70c2: $20 $f7

    ld [hl], d                                    ; $70c4: $72
    sbc $7b                                       ; $70c5: $de $7b
    nop                                           ; $70c7: $00
    jr nz, jr_0b0_70ca                            ; $70c8: $20 $00

jr_0b0_70ca:
    jr nz, jr_0b0_704d                            ; $70ca: $20 $81

    nop                                           ; $70cc: $00
    nop                                           ; $70cd: $00
    jr nz, @+$01                                  ; $70ce: $20 $ff

    ld a, a                                       ; $70d0: $7f
    nop                                           ; $70d1: $00
    jr nz, jr_0b0_7067                            ; $70d2: $20 $93

    ld h, d                                       ; $70d4: $62
    sbc h                                         ; $70d5: $9c
    ld [hl], a                                    ; $70d6: $77
    ld l, c                                       ; $70d7: $69
    ld b, l                                       ; $70d8: $45
    push hl                                       ; $70d9: $e5
    inc a                                         ; $70da: $3c
    ld sp, $f766                                  ; $70db: $31 $66 $f7
    ld [hl], d                                    ; $70de: $72
    ld c, c                                       ; $70df: $49
    ld c, l                                       ; $70e0: $4d
    daa                                           ; $70e1: $27
    ld b, l                                       ; $70e2: $45
    sub l                                         ; $70e3: $95
    ld [hl], d                                    ; $70e4: $72
    sbc h                                         ; $70e5: $9c
    ld a, e                                       ; $70e6: $7b
    adc $5d                                       ; $70e7: $ce $5d
    ld l, d                                       ; $70e9: $6a
    ld c, l                                       ; $70ea: $4d
    sub h                                         ; $70eb: $94
    ld l, [hl]                                    ; $70ec: $6e
    jr nc, jr_0b0_714d                            ; $70ed: $30 $5e

    ld e, d                                       ; $70ef: $5a
    ld [hl], e                                    ; $70f0: $73
    nop                                           ; $70f1: $00

jr_0b0_70f2:
    jr nz, @+$75                                  ; $70f2: $20 $73

    ld e, [hl]                                    ; $70f4: $5e
    cp h                                          ; $70f5: $bc

jr_0b0_70f6:
    ld a, e                                       ; $70f6: $7b
    push hl                                       ; $70f7: $e5
    inc a                                         ; $70f8: $3c
    nop                                           ; $70f9: $00

jr_0b0_70fa:
    jr nz, jr_0b0_716f                            ; $70fa: $20 $73

jr_0b0_70fc:
    ld e, [hl]                                    ; $70fc: $5e
    cp h                                          ; $70fd: $bc
    ld a, e                                       ; $70fe: $7b
    push hl                                       ; $70ff: $e5
    inc a                                         ; $7100: $3c
    nop                                           ; $7101: $00

jr_0b0_7102:
    jr nz, jr_0b0_7104                            ; $7102: $20 $00

jr_0b0_7104:
    jr nz, jr_0b0_711e                            ; $7104: $20 $18

    ld [hl], a                                    ; $7106: $77
    ld c, b                                       ; $7107: $48
    ld b, l                                       ; $7108: $45
    nop                                           ; $7109: $00

jr_0b0_710a:
    jr nz, jr_0b0_710c                            ; $710a: $20 $00

jr_0b0_710c:
    jr nz, jr_0b0_7126                            ; $710c: $20 $18

    ld [hl], a                                    ; $710e: $77
    ld c, b                                       ; $710f: $48
    ld b, l                                       ; $7110: $45
    nop                                           ; $7111: $00
    jr nz, jr_0b0_7114                            ; $7112: $20 $00

jr_0b0_7114:
    jr nz, jr_0b0_712e                            ; $7114: $20 $18

    ld [hl], a                                    ; $7116: $77
    ld c, b                                       ; $7117: $48
    ld b, l                                       ; $7118: $45
    nop                                           ; $7119: $00
    jr nz, jr_0b0_70f2                            ; $711a: $20 $d6

    ld h, [hl]                                    ; $711c: $66
    ld a, e                                       ; $711d: $7b

jr_0b0_711e:
    ld [hl], a                                    ; $711e: $77
    cp l                                          ; $711f: $bd
    ld a, e                                       ; $7120: $7b
    nop                                           ; $7121: $00
    jr nz, jr_0b0_70fa                            ; $7122: $20 $d6

    ld h, [hl]                                    ; $7124: $66
    ld a, e                                       ; $7125: $7b

jr_0b0_7126:
    ld [hl], a                                    ; $7126: $77
    cp l                                          ; $7127: $bd
    ld a, e                                       ; $7128: $7b
    nop                                           ; $7129: $00
    jr nz, jr_0b0_7102                            ; $712a: $20 $d6

    ld h, [hl]                                    ; $712c: $66
    ld a, e                                       ; $712d: $7b

jr_0b0_712e:
    ld [hl], a                                    ; $712e: $77
    cp l                                          ; $712f: $bd
    ld a, e                                       ; $7130: $7b
    nop                                           ; $7131: $00
    jr nz, jr_0b0_710a                            ; $7132: $20 $d6

    ld h, [hl]                                    ; $7134: $66
    ld a, e                                       ; $7135: $7b
    ld [hl], a                                    ; $7136: $77
    cp l                                          ; $7137: $bd
    ld a, e                                       ; $7138: $7b
    nop                                           ; $7139: $00
    jr nz, jr_0b0_713c                            ; $713a: $20 $00

jr_0b0_713c:
    jr nz, jr_0b0_7156                            ; $713c: $20 $18

    ld [hl], a                                    ; $713e: $77
    ld c, b                                       ; $713f: $48
    ld b, l                                       ; $7140: $45
    nop                                           ; $7141: $00
    jr jr_0b0_70f6                                ; $7142: $18 $b2

    ld bc, $2000                                  ; $7144: $01 $00 $20
    ld c, b                                       ; $7147: $48
    ld b, l                                       ; $7148: $45
    nop                                           ; $7149: $00
    jr nz, @-$1f                                  ; $714a: $20 $df

    dec hl                                        ; $714c: $2b

jr_0b0_714d:
    or d                                          ; $714d: $b2
    ld bc, $2fff                                  ; $714e: $01 $ff $2f
    nop                                           ; $7151: $00
    nop                                           ; $7152: $00

jr_0b0_7153:
    ld l, c                                       ; $7153: $69
    ld c, l                                       ; $7154: $4d
    ld [hl], h                                    ; $7155: $74

jr_0b0_7156:
    ld l, [hl]                                    ; $7156: $6e
    call Call_000_0051                            ; $7157: $cd $51 $00
    jr nz, jr_0b0_7161                            ; $715a: $20 $05

    dec a                                         ; $715c: $3d
    call $cd59                                    ; $715d: $cd $59 $cd
    ld d, c                                       ; $7160: $51

jr_0b0_7161:
    nop                                           ; $7161: $00
    jr nz, @-$03                                  ; $7162: $20 $fb

    ld h, $b2                                     ; $7164: $26 $b2
    ld bc, $2fdf                                  ; $7166: $01 $df $2f
    nop                                           ; $7169: $00
    jr nz, jr_0b0_711e                            ; $716a: $20 $b2

    ld bc, $01b2                                  ; $716c: $01 $b2 $01

jr_0b0_716f:
    rst $18                                       ; $716f: $df
    cpl                                           ; $7170: $2f
    nop                                           ; $7171: $00
    jr nz, jr_0b0_7153                            ; $7172: $20 $df

    dec hl                                        ; $7174: $2b
    or d                                          ; $7175: $b2
    ld bc, $2fff                                  ; $7176: $01 $ff $2f
    nop                                           ; $7179: $00
    jr nz, jr_0b0_712e                            ; $717a: $20 $b2

    ld bc, $1b1e                                  ; $717c: $01 $1e $1b
    rst $18                                       ; $717f: $df
    dec hl                                        ; $7180: $2b
    or d                                          ; $7181: $b2
    ld bc, $0efe                                  ; $7182: $01 $fe $0e
    cp a                                          ; $7185: $bf

jr_0b0_7186:
    daa                                           ; $7186: $27
    ld e, $1b                                     ; $7187: $1e $1b
    nop                                           ; $7189: $00
    nop                                           ; $718a: $00
    dec d                                         ; $718b: $15
    ld d, $e8                                     ; $718c: $16 $e8
    inc [hl]                                      ; $718e: $34
    ccf                                           ; $718f: $3f
    ld d, a                                       ; $7190: $57
    ld h, d                                       ; $7191: $62
    inc l                                         ; $7192: $2c
    xor e                                         ; $7193: $ab
    ld c, c                                       ; $7194: $49
    or d                                          ; $7195: $b2
    ld bc, $2fff                                  ; $7196: $01 $ff $2f
    dec e                                         ; $7199: $1d
    rra                                           ; $719a: $1f
    rst $38                                       ; $719b: $ff
    inc sp                                        ; $719c: $33
    ld a, a                                       ; $719d: $7f
    daa                                           ; $719e: $27
    cp a                                          ; $719f: $bf
    inc hl                                        ; $71a0: $23
    nop                                           ; $71a1: $00
    jr nz, jr_0b0_7156                            ; $71a2: $20 $b2

    ld bc, $2b3c                                  ; $71a4: $01 $3c $2b
    rst $38                                       ; $71a7: $ff
    inc sp                                        ; $71a8: $33
    nop                                           ; $71a9: $00
    jr nz, jr_0b0_71ef                            ; $71aa: $20 $43

    nop                                           ; $71ac: $00
    cp a                                          ; $71ad: $bf
    daa                                           ; $71ae: $27
    ld e, $1b                                     ; $71af: $1e $1b
    nop                                           ; $71b1: $00
    jr nz, jr_0b0_7186                            ; $71b2: $20 $d2

jr_0b0_71b4:
    add hl, bc                                    ; $71b4: $09
    cp e                                          ; $71b5: $bb
    ld c, $bf                                     ; $71b6: $0e $bf
    daa                                           ; $71b8: $27
    ld e, b                                       ; $71b9: $58
    ld a, [bc]                                    ; $71ba: $0a
    sbc l                                         ; $71bb: $9d
    ld [bc], a                                    ; $71bc: $02
    db $dd                                        ; $71bd: $dd
    ld [de], a                                    ; $71be: $12
    sbc $06                                       ; $71bf: $de $06

jr_0b0_71c1:
    dec b                                         ; $71c1: $05
    nop                                           ; $71c2: $00
    or d                                          ; $71c3: $b2
    ld bc, $1dbe                                  ; $71c4: $01 $be $1d
    rra                                           ; $71c7: $1f
    ld e, a                                       ; $71c8: $5f
    inc bc                                        ; $71c9: $03
    nop                                           ; $71ca: $00
    sub e                                         ; $71cb: $93
    ld e, [hl]                                    ; $71cc: $5e
    ld a, [c]                                     ; $71cd: $f2
    dec b                                         ; $71ce: $05
    sbc h                                         ; $71cf: $9c
    ld [hl], a                                    ; $71d0: $77
    ld c, a                                       ; $71d1: $4f
    dec d                                         ; $71d2: $15
    db $fd                                        ; $71d3: $fd
    ld [de], a                                    ; $71d4: $12
    sbc a                                         ; $71d5: $9f
    ld c, d                                       ; $71d6: $4a
    ld e, c                                       ; $71d7: $59
    ld [$1c00], sp                                ; $71d8: $08 $00 $1c
    or d                                          ; $71db: $b2
    ld bc, $275e                                  ; $71dc: $01 $5e $27
    rst $38                                       ; $71df: $ff
    dec sp                                        ; $71e0: $3b
    nop                                           ; $71e1: $00
    jr nz, jr_0b0_71b4                            ; $71e2: $20 $d0

    ld de, $1f5e                                  ; $71e4: $11 $5e $1f
    ld b, e                                       ; $71e7: $43
    nop                                           ; $71e8: $00
    nop                                           ; $71e9: $00
    jr nz, jr_0b0_71c1                            ; $71ea: $20 $d5

    ld bc, $2fbd                                  ; $71ec: $01 $bd $2f

jr_0b0_71ef:
    ld d, d                                       ; $71ef: $52
    ld e, $a8                                     ; $71f0: $1e $a8
    nop                                           ; $71f2: $00
    add hl, sp                                    ; $71f3: $39
    ld [bc], a                                    ; $71f4: $02
    or e                                          ; $71f5: $b3
    ld bc, $029d                                  ; $71f6: $01 $9d $02
    dec h                                         ; $71f9: $25
    nop                                           ; $71fa: $00
    ld e, a                                       ; $71fb: $5f
    ld de, $0f3f                                  ; $71fc: $11 $3f $0f
    ld d, [hl]                                    ; $71ff: $56

Call_0b0_7200:
    nop                                           ; $7200: $00
    inc h                                         ; $7201: $24
    nop                                           ; $7202: $00
    sbc $02                                       ; $7203: $de $02
    pop de                                        ; $7205: $d1
    nop                                           ; $7206: $00
    rst $38                                       ; $7207: $ff
    ld b, [hl]                                    ; $7208: $46
    ld [hl+], a                                   ; $7209: $22
    nop                                           ; $720a: $00
    sbc h                                         ; $720b: $9c
    ld b, $4e                                     ; $720c: $06 $4e
    ld bc, $0058                                  ; $720e: $01 $58 $00
    nop                                           ; $7211: $00
    jr nz, @-$4c                                  ; $7212: $20 $b2

    ld bc, $235f                                  ; $7214: $01 $5f $23
    ld [hl], l                                    ; $7217: $75
    ld d, $22                                     ; $7218: $16 $22
    inc b                                         ; $721a: $04
    ret nc                                        ; $721b: $d0

    ld de, $0efd                                  ; $721c: $11 $fd $0e
    ld l, a                                       ; $721f: $6f
    ld bc, $2000                                  ; $7220: $01 $00 $20
    rst $38                                       ; $7223: $ff
    cpl                                           ; $7224: $2f
    sub c                                         ; $7225: $91
    dec b                                         ; $7226: $05
    sbc $5b                                       ; $7227: $de $5b
    nop                                           ; $7229: $00
    nop                                           ; $722a: $00
    ld e, c                                       ; $722b: $59
    ld [bc], a                                    ; $722c: $02
    rra                                           ; $722d: $1f
    ld e, a                                       ; $722e: $5f
    inc l                                         ; $722f: $2c
    ld bc, $0024                                  ; $7230: $01 $24 $00
    ld [hl], h                                    ; $7233: $74
    ld a, [de]                                    ; $7234: $1a
    dec a                                         ; $7235: $3d
    dec de                                        ; $7236: $1b
    adc [hl]                                      ; $7237: $8e
    dec c                                         ; $7238: $0d
    inc hl                                        ; $7239: $23

jr_0b0_723a:
    nop                                           ; $723a: $00
    ld [hl], $06                                  ; $723b: $36 $06
    rra                                           ; $723d: $1f
    rlca                                          ; $723e: $07
    ld a, [bc]                                    ; $723f: $0a
    dec b                                         ; $7240: $05
    ld [hl+], a                                   ; $7241: $22
    nop                                           ; $7242: $00
    ld e, $03                                     ; $7243: $1e $03
    ld e, a                                       ; $7245: $5f
    ld a, $ae                                     ; $7246: $3e $ae
    nop                                           ; $7248: $00

jr_0b0_7249:
    nop                                           ; $7249: $00
    jr nz, @-$4c                                  ; $724a: $20 $b2

    ld bc, $2f9c                                  ; $724c: $01 $9c $2f
    cp l                                          ; $724f: $bd
    ld b, $00                                     ; $7250: $06 $00
    jr nz, jr_0b0_7249                            ; $7252: $20 $f5

    ld bc, $0064                                  ; $7254: $01 $64 $00
    rra                                           ; $7257: $1f
    inc bc                                        ; $7258: $03

jr_0b0_7259:
    nop                                           ; $7259: $00
    jr nz, jr_0b0_723a                            ; $725a: $20 $de

    inc sp                                        ; $725c: $33
    call $b259                                    ; $725d: $cd $59 $b2
    ld bc, $0005                                  ; $7260: $01 $05 $00
    cp l                                          ; $7263: $bd
    dec de                                        ; $7264: $1b
    sbc h                                         ; $7265: $9c
    nop                                           ; $7266: $00
    ld a, [hl]                                    ; $7267: $7e
    ld b, a                                       ; $7268: $47
    rst $00                                       ; $7269: $c7
    nop                                           ; $726a: $00
    inc [hl]                                      ; $726b: $34
    ld [de], a                                    ; $726c: $12
    ei                                            ; $726d: $fb
    ld e, $ff                                     ; $726e: $1e $ff
    ld e, a                                       ; $7270: $5f
    jp z, $1700                                   ; $7271: $ca $00 $17

    ld [bc], a                                    ; $7274: $02
    ld a, $0f                                     ; $7275: $3e $0f
    sub e                                         ; $7277: $93
    ld [hl+], a                                   ; $7278: $22
    inc h                                         ; $7279: $24
    nop                                           ; $727a: $00
    sbc a                                         ; $727b: $9f
    nop                                           ; $727c: $00
    sbc e                                         ; $727d: $9b
    ld [bc], a                                    ; $727e: $02
    ld [de], a                                    ; $727f: $12
    nop                                           ; $7280: $00
    nop                                           ; $7281: $00
    jr nz, jr_0b0_7259                            ; $7282: $20 $d5

    ld bc, $439c                                  ; $7284: $01 $9c $43
    add hl, hl                                    ; $7287: $29
    add hl, bc                                    ; $7288: $09
    ld h, l                                       ; $7289: $65
    nop                                           ; $728a: $00
    sbc e                                         ; $728b: $9b
    ld [bc], a                                    ; $728c: $02
    nop                                           ; $728d: $00
    jr nz, @+$29                                  ; $728e: $20 $27

    ld b, c                                       ; $7290: $41
    ld c, [hl]                                    ; $7291: $4e
    ld bc, $0f7c                                  ; $7292: $01 $7c $0f
    xor e                                         ; $7295: $ab
    ld c, l                                       ; $7296: $4d
    add hl, sp                                    ; $7297: $39
    ld [hl], a                                    ; $7298: $77
    inc bc                                        ; $7299: $03
    nop                                           ; $729a: $00
    ld [hl], l                                    ; $729b: $75
    ld a, [de]                                    ; $729c: $1a
    rst $38                                       ; $729d: $ff
    ld b, a                                       ; $729e: $47
    xor h                                         ; $729f: $ac
    dec e                                         ; $72a0: $1d
    add [hl]                                      ; $72a1: $86
    inc b                                         ; $72a2: $04
    sbc $23                                       ; $72a3: $de $23

jr_0b0_72a5:
    inc [hl]                                      ; $72a5: $34
    ld a, [de]                                    ; $72a6: $1a
    cp $5f                                        ; $72a7: $fe $5f
    and a                                         ; $72a9: $a7
    nop                                           ; $72aa: $00
    call nc, Call_000_2c01                        ; $72ab: $d4 $01 $2c
    ld bc, $025b                                  ; $72ae: $01 $5b $02
    ld [hl+], a                                   ; $72b1: $22
    nop                                           ; $72b2: $00
    push af                                       ; $72b3: $f5
    add hl, bc                                    ; $72b4: $09
    db $fd                                        ; $72b5: $fd
    ld c, $3f                                     ; $72b6: $0e $3f
    ld e, a                                       ; $72b8: $5f
    nop                                           ; $72b9: $00
    inc e                                         ; $72ba: $1c
    sub b                                         ; $72bb: $90
    dec b                                         ; $72bc: $05
    ld a, c                                       ; $72bd: $79
    dec de                                        ; $72be: $1b
    rst $38                                       ; $72bf: $ff
    ld c, a                                       ; $72c0: $4f
    ld hl, $9c0c                                  ; $72c1: $21 $0c $9c
    ld b, $e5                                     ; $72c4: $06 $e5
    inc a                                         ; $72c6: $3c
    call Call_0b0_434d                            ; $72c7: $cd $4d $43
    nop                                           ; $72ca: $00
    db $fd                                        ; $72cb: $fd
    ld c, $ed                                     ; $72cc: $0e $ed
    ld d, c                                       ; $72ce: $51
    sub b                                         ; $72cf: $90
    ld bc, $0043                                  ; $72d0: $01 $43 $00
    or [hl]                                       ; $72d3: $b6
    ld h, $fe                                     ; $72d4: $26 $fe
    ld b, e                                       ; $72d6: $43
    or e                                          ; $72d7: $b3
    add hl, bc                                    ; $72d8: $09
    ld b, d                                       ; $72d9: $42
    nop                                           ; $72da: $00
    ret nc                                        ; $72db: $d0

    add hl, bc                                    ; $72dc: $09
    cp l                                          ; $72dd: $bd
    scf                                           ; $72de: $37
    jr c, @+$04                                   ; $72df: $38 $02

    ld hl, $2e00                                  ; $72e1: $21 $00 $2e
    ld bc, $212d                                  ; $72e4: $01 $2d $21
    and a                                         ; $72e7: $a7
    nop                                           ; $72e8: $00
    dec h                                         ; $72e9: $25
    nop                                           ; $72ea: $00
    sub l                                         ; $72eb: $95
    ld h, $50                                     ; $72ec: $26 $50
    add hl, bc                                    ; $72ee: $09
    ld a, l                                       ; $72ef: $7d
    dec hl                                        ; $72f0: $2b
    nop                                           ; $72f1: $00
    jr nz, jr_0b0_72a5                            ; $72f2: $20 $b1

    dec b                                         ; $72f4: $05
    cp l                                          ; $72f5: $bd
    dec sp                                        ; $72f6: $3b
    ld b, e                                       ; $72f7: $43
    nop                                           ; $72f8: $00
    nop                                           ; $72f9: $00
    inc e                                         ; $72fa: $1c
    push af                                       ; $72fb: $f5
    ld bc, $12dc                                  ; $72fc: $01 $dc $12
    ld b, e                                       ; $72ff: $43
    nop                                           ; $7300: $00
    ld [hl-], a                                   ; $7301: $32
    ld a, [bc]                                    ; $7302: $0a
    ld a, [hl-]                                   ; $7303: $3a
    ld [bc], a                                    ; $7304: $02
    rst $18                                       ; $7305: $df
    inc hl                                        ; $7306: $23
    cp l                                          ; $7307: $bd
    ld b, $43                                     ; $7308: $06 $43
    nop                                           ; $730a: $00
    ld e, e                                       ; $730b: $5b
    ld b, $dd                                     ; $730c: $06 $dd
    ccf                                           ; $730e: $3f
    ld l, l                                       ; $730f: $6d
    dec b                                         ; $7310: $05
    ld [$1708], a                                 ; $7311: $ea $08 $17
    ld b, $1f                                     ; $7314: $06 $1f
    inc bc                                        ; $7316: $03
    ld e, [hl]                                    ; $7317: $5e
    rla                                           ; $7318: $17
    ld h, h                                       ; $7319: $64
    jr @+$39                                      ; $731a: $18 $37

    ld a, [hl+]                                   ; $731c: $2a
    call c, Call_000_2d4a                         ; $731d: $dc $4a $2d
    ld bc, $0043                                  ; $7320: $01 $43 $00
    ld [hl], l                                    ; $7323: $75
    ld e, $5e                                     ; $7324: $1e $5e
    inc hl                                        ; $7326: $23
    add hl, hl                                    ; $7327: $29
    dec d                                         ; $7328: $15
    ld hl, $d200                                  ; $7329: $21 $00 $d2
    dec b                                         ; $732c: $05
    ld e, l                                       ; $732d: $5d
    inc hl                                        ; $732e: $23
    nop                                           ; $732f: $00
    jr nz, jr_0b0_7354                            ; $7330: $20 $22

    ld [$6610], sp                                ; $7332: $08 $10 $66
    or e                                          ; $7335: $b3
    ld bc, $775a                                  ; $7336: $01 $5a $77
    push de                                       ; $7339: $d5
    ld bc, $027c                                  ; $733a: $01 $7c $02
    add hl, sp                                    ; $733d: $39
    ld [bc], a                                    ; $733e: $02

jr_0b0_733f:
    sbc [hl]                                      ; $733f: $9e
    ld [bc], a                                    ; $7340: $02
    ld h, h                                       ; $7341: $64
    nop                                           ; $7342: $00
    inc d                                         ; $7343: $14
    ld [de], a                                    ; $7344: $12
    sbc [hl]                                      ; $7345: $9e
    daa                                           ; $7346: $27
    ld a, d                                       ; $7347: $7a
    ld [bc], a                                    ; $7348: $02
    ld bc, $5800                                  ; $7349: $01 $00 $58
    ld l, $2d                                     ; $734c: $2e $2d
    ld de, $279e                                  ; $734e: $11 $9e $27
    ld bc, $4000                                  ; $7351: $01 $00 $40

jr_0b0_7354:
    ld a, l                                       ; $7354: $7d
    call c, $ea4a                                 ; $7355: $dc $4a $ea
    inc b                                         ; $7358: $04
    ld b, e                                       ; $7359: $43
    nop                                           ; $735a: $00
    sub a                                         ; $735b: $97
    ld a, [de]                                    ; $735c: $1a
    ccf                                           ; $735d: $3f
    dec bc                                        ; $735e: $0b
    ld e, [hl]                                    ; $735f: $5e
    daa                                           ; $7360: $27
    nop                                           ; $7361: $00
    jr nz, jr_0b0_733f                            ; $7362: $20 $db

    ld [bc], a                                    ; $7364: $02
    ld a, h                                       ; $7365: $7c
    ld [hl], d                                    ; $7366: $72
    ld b, e                                       ; $7367: $43
    nop                                           ; $7368: $00
    ld hl, $1800                                  ; $7369: $21 $00 $18
    ld l, [hl]                                    ; $736c: $6e
    ld c, a                                       ; $736d: $4f
    ld bc, $7bbd                                  ; $736e: $01 $bd $7b
    ld b, e                                       ; $7371: $43
    nop                                           ; $7372: $00
    ld c, [hl]                                    ; $7373: $4e
    ld bc, $01b3                                  ; $7374: $01 $b3 $01
    ld [hl], b                                    ; $7377: $70
    ld bc, $0043                                  ; $7378: $01 $43 $00
    inc [hl]                                      ; $737b: $34
    ld d, $1d                                     ; $737c: $16 $1d
    rra                                           ; $737e: $1f
    rst $18                                       ; $737f: $df
    inc sp                                        ; $7380: $33
    ld [hl+], a                                   ; $7381: $22
    nop                                           ; $7382: $00
    ld a, $0b                                     ; $7383: $3e $0b
    ld [hl], a                                    ; $7385: $77
    ld d, d                                       ; $7386: $52
    ld b, b                                       ; $7387: $40
    ld a, l                                       ; $7388: $7d
    ld hl, $4004                                  ; $7389: $21 $04 $40
    ld a, l                                       ; $738c: $7d
    sbc c                                         ; $738d: $99
    ld h, $9b                                     ; $738e: $26 $9b
    ld a, a                                       ; $7390: $7f
    ld b, e                                       ; $7391: $43
    nop                                           ; $7392: $00
    ld e, b                                       ; $7393: $58
    ld a, [bc]                                    ; $7394: $0a
    or c                                          ; $7395: $b1
    dec b                                         ; $7396: $05
    dec a                                         ; $7397: $3d
    rra                                           ; $7398: $1f
    ld [hl+], a                                   ; $7399: $22
    nop                                           ; $739a: $00
    cp l                                          ; $739b: $bd
    ld [bc], a                                    ; $739c: $02
    sub h                                         ; $739d: $94
    ld l, [hl]                                    ; $739e: $6e
    nop                                           ; $739f: $00
    jr nz, jr_0b0_73a2                            ; $73a0: $20 $00

jr_0b0_73a2:
    ld [$6610], sp                                ; $73a2: $08 $10 $66
    db $db                                        ; $73a5: $db
    ld l, l                                       ; $73a6: $6d
    jr jr_0b0_7420                                ; $73a7: $18 $77

    ld b, e                                       ; $73a9: $43
    nop                                           ; $73aa: $00
    db $db                                        ; $73ab: $db
    ld l, l                                       ; $73ac: $6d
    ld [$4e00], a                                 ; $73ad: $ea $00 $4e
    ld bc, $0044                                  ; $73b0: $01 $44 $00
    db $db                                        ; $73b3: $db
    ld l, l                                       ; $73b4: $6d
    ld c, [hl]                                    ; $73b5: $4e
    ld bc, $16fc                                  ; $73b6: $01 $fc $16
    add [hl]                                      ; $73b9: $86
    ld [$0a57], sp                                ; $73ba: $08 $57 $0a
    ld a, d                                       ; $73bd: $7a
    ld b, d                                       ; $73be: $42
    rst $18                                       ; $73bf: $df
    ccf                                           ; $73c0: $3f
    ld b, h                                       ; $73c1: $44
    inc b                                         ; $73c2: $04
    ld [hl], $06                                  ; $73c3: $36 $06
    ld b, b                                       ; $73c5: $40
    ld a, l                                       ; $73c6: $7d
    sbc c                                         ; $73c7: $99
    ld c, [hl]                                    ; $73c8: $4e
    ld b, e                                       ; $73c9: $43
    nop                                           ; $73ca: $00
    ld e, b                                       ; $73cb: $58
    ld b, $4f                                     ; $73cc: $06 $4f
    ld bc, $0f3e                                  ; $73ce: $01 $3e $0f
    ld bc, $9200                                  ; $73d1: $01 $00 $92
    ld bc, $51ac                                  ; $73d4: $01 $ac $51
    nop                                           ; $73d7: $00
    jr nz, jr_0b0_73da                            ; $73d8: $20 $00

jr_0b0_73da:
    db $10                                        ; $73da: $10
    xor h                                         ; $73db: $ac
    ld d, l                                       ; $73dc: $55
    add hl, de                                    ; $73dd: $19
    ld l, [hl]                                    ; $73de: $6e
    ld b, $3d                                     ; $73df: $06 $3d
    ld b, e                                       ; $73e1: $43
    nop                                           ; $73e2: $00
    db $db                                        ; $73e3: $db
    ld l, l                                       ; $73e4: $6d
    add hl, de                                    ; $73e5: $19
    ld l, [hl]                                    ; $73e6: $6e
    ld b, $3d                                     ; $73e7: $06 $3d
    ld b, e                                       ; $73e9: $43
    nop                                           ; $73ea: $00
    db $db                                        ; $73eb: $db
    ld l, l                                       ; $73ec: $6d
    ld a, $1f                                     ; $73ed: $3e $1f
    inc d                                         ; $73ef: $14
    ld c, $22                                     ; $73f0: $0e $22
    nop                                           ; $73f2: $00
    rla                                           ; $73f3: $17
    ld [hl], $db                                  ; $73f4: $36 $db
    ld l, l                                       ; $73f6: $6d
    db $fc                                        ; $73f7: $fc
    ld b, [hl]                                    ; $73f8: $46
    ld b, d                                       ; $73f9: $42
    nop                                           ; $73fa: $00
    sub $05                                       ; $73fb: $d6 $05
    sbc c                                         ; $73fd: $99
    ld b, d                                       ; $73fe: $42
    adc $18                                       ; $73ff: $ce $18
    ld b, e                                       ; $7401: $43
    nop                                           ; $7402: $00
    db $db                                        ; $7403: $db
    ld l, l                                       ; $7404: $6d
    or $01                                        ; $7405: $f6 $01
    adc $18                                       ; $7407: $ce $18
    nop                                           ; $7409: $00
    inc e                                         ; $740a: $1c
    ld c, $56                                     ; $740b: $0e $56
    daa                                           ; $740d: $27
    ld b, c                                       ; $740e: $41
    db $db                                        ; $740f: $db
    ld l, l                                       ; $7410: $6d
    nop                                           ; $7411: $00
    inc d                                         ; $7412: $14
    ld d, c                                       ; $7413: $51
    ld e, d                                       ; $7414: $5a
    ld c, b                                       ; $7415: $48
    ld b, l                                       ; $7416: $45
    cp e                                          ; $7417: $bb
    ld l, l                                       ; $7418: $6d
    ld h, [hl]                                    ; $7419: $66
    nop                                           ; $741a: $00
    cp e                                          ; $741b: $bb
    ld l, c                                       ; $741c: $69
    db $db                                        ; $741d: $db
    ld l, l                                       ; $741e: $6d
    cp e                                          ; $741f: $bb

jr_0b0_7420:
    ld l, l                                       ; $7420: $6d
    ld b, h                                       ; $7421: $44
    nop                                           ; $7422: $00
    cp e                                          ; $7423: $bb
    ld l, l                                       ; $7424: $6d
    inc d                                         ; $7425: $14
    ld c, $df                                     ; $7426: $0e $df
    ld c, e                                       ; $7428: $4b
    ld h, [hl]                                    ; $7429: $66
    inc b                                         ; $742a: $04
    sbc d                                         ; $742b: $9a
    ld l, c                                       ; $742c: $69
    ld e, b                                       ; $742d: $58
    ld a, [hl-]                                   ; $742e: $3a
    db $dd                                        ; $742f: $dd
    ld c, d                                       ; $7430: $4a
    ld [hl+], a                                   ; $7431: $22
    nop                                           ; $7432: $00
    sbc d                                         ; $7433: $9a
    ld l, c                                       ; $7434: $69
    db $10                                        ; $7435: $10
    add hl, bc                                    ; $7436: $09
    call c, $9a4a                                 ; $7437: $dc $4a $9a
    ld l, c                                       ; $743a: $69
    cp d                                          ; $743b: $ba
    ld l, c                                       ; $743c: $69
    cp e                                          ; $743d: $bb
    ld l, c                                       ; $743e: $69
    call c, $004a                                 ; $743f: $dc $4a $00
    inc e                                         ; $7442: $1c
    rst $10                                       ; $7443: $d7
    ld h, l                                       ; $7444: $65
    ld c, b                                       ; $7445: $48
    ld b, c                                       ; $7446: $41

jr_0b0_7447:
    ld e, d                                       ; $7447: $5a
    ld [hl], e                                    ; $7448: $73
    nop                                           ; $7449: $00
    inc d                                         ; $744a: $14
    ld c, b                                       ; $744b: $48
    ld b, l                                       ; $744c: $45
    ld d, c                                       ; $744d: $51
    ld e, d                                       ; $744e: $5a
    sbc c                                         ; $744f: $99
    ld h, l                                       ; $7450: $65
    ld h, [hl]                                    ; $7451: $66
    nop                                           ; $7452: $00
    sbc c                                         ; $7453: $99
    ld h, l                                       ; $7454: $65
    ld a, b                                       ; $7455: $78
    ld h, $9f                                     ; $7456: $26 $9f
    dec sp                                        ; $7458: $3b
    add a                                         ; $7459: $87
    nop                                           ; $745a: $00
    sbc c                                         ; $745b: $99
    ld h, l                                       ; $745c: $65
    dec e                                         ; $745d: $1d
    dec hl                                        ; $745e: $2b
    pop de                                        ; $745f: $d1
    dec e                                         ; $7460: $1d
    ld h, l                                       ; $7461: $65
    inc b                                         ; $7462: $04
    or e                                          ; $7463: $b3
    dec h                                         ; $7464: $25
    sbc c                                         ; $7465: $99
    ld h, l                                       ; $7466: $65
    sbc d                                         ; $7467: $9a
    ld b, d                                       ; $7468: $42
    ld b, e                                       ; $7469: $43
    nop                                           ; $746a: $00
    sub c                                         ; $746b: $91
    dec h                                         ; $746c: $25
    ld a, b                                       ; $746d: $78
    ld h, c                                       ; $746e: $61
    call c, Call_0b0_784a                         ; $746f: $dc $4a $78
    ld h, c                                       ; $7472: $61
    sbc c                                         ; $7473: $99
    ld h, l                                       ; $7474: $65
    ld a, b                                       ; $7475: $78
    ld h, c                                       ; $7476: $61
    call c, $004a                                 ; $7477: $dc $4a $00
    inc e                                         ; $747a: $1c
    jr nc, @+$5c                                  ; $747b: $30 $5a

    ld e, c                                       ; $747d: $59

jr_0b0_747e:
    ld l, a                                       ; $747e: $6f
    ld a, b                                       ; $747f: $78
    ld h, c                                       ; $7480: $61
    nop                                           ; $7481: $00
    jr jr_0b0_74db                                ; $7482: $18 $57

    ld e, l                                       ; $7484: $5d
    daa                                           ; $7485: $27
    ld b, c                                       ; $7486: $41
    ld [hl], d                                    ; $7487: $72
    ld e, [hl]                                    ; $7488: $5e
    nop                                           ; $7489: $00
    nop                                           ; $748a: $00
    ld d, a                                       ; $748b: $57
    ld e, l                                       ; $748c: $5d
    dec d                                         ; $748d: $15
    ld d, $66                                     ; $748e: $16 $66
    nop                                           ; $7490: $00
    nop                                           ; $7491: $00
    nop                                           ; $7492: $00
    ld [hl], b                                    ; $7493: $70
    dec b                                         ; $7494: $05
    ld d, $0a                                     ; $7495: $16 $0a
    ld h, [hl]                                    ; $7497: $66
    nop                                           ; $7498: $00
    dec l                                         ; $7499: $2d
    add hl, de                                    ; $749a: $19
    ld e, b                                       ; $749b: $58
    ld a, [hl-]                                   ; $749c: $3a
    call c, $d44a                                 ; $749d: $dc $4a $d4
    add hl, hl                                    ; $74a0: $29
    ld b, h                                       ; $74a1: $44
    nop                                           ; $74a2: $00
    or d                                          ; $74a3: $b2
    dec h                                         ; $74a4: $25
    ld d, a                                       ; $74a5: $57
    ld e, l                                       ; $74a6: $5d
    push af                                       ; $74a7: $f5
    dec b                                         ; $74a8: $05
    ld h, l                                       ; $74a9: $65
    nop                                           ; $74aa: $00
    ld [hl], $59                                  ; $74ab: $36 $59
    cp d                                          ; $74ad: $ba
    ld l, $5f                                     ; $74ae: $2e $5f
    scf                                           ; $74b0: $37
    nop                                           ; $74b1: $00
    inc e                                         ; $74b2: $1c
    or d                                          ; $74b3: $b2
    ld d, l                                       ; $74b4: $55
    rla                                           ; $74b5: $17
    ld l, e                                       ; $74b6: $6b
    rst $38                                       ; $74b7: $ff
    ld a, a                                       ; $74b8: $7f
    nop                                           ; $74b9: $00
    jr jr_0b0_7447                                ; $74ba: $18 $8b

    ld c, c                                       ; $74bc: $49
    sub $66                                       ; $74bd: $d6 $66
    inc d                                         ; $74bf: $14
    ld d, l                                       ; $74c0: $55
    nop                                           ; $74c1: $00
    nop                                           ; $74c2: $00
    inc d                                         ; $74c3: $14
    ld d, c                                       ; $74c4: $51
    dec [hl]                                      ; $74c5: $35
    ld e, c                                       ; $74c6: $59
    and c                                         ; $74c7: $a1
    inc b                                         ; $74c8: $04
    jr nz, jr_0b0_74cb                            ; $74c9: $20 $00

jr_0b0_74cb:
    ld l, $05                                     ; $74cb: $2e $05
    and a                                         ; $74cd: $a7
    ld [$05d5], sp                                ; $74ce: $08 $d5 $05
    ret                                           ; $74d1: $c9


    nop                                           ; $74d2: $00
    ld e, b                                       ; $74d3: $58
    ld a, [hl-]                                   ; $74d4: $3a
    call nc, $dc29                                ; $74d5: $d4 $29 $dc
    ld c, d                                       ; $74d8: $4a
    ld h, l                                       ; $74d9: $65
    nop                                           ; $74da: $00

jr_0b0_74db:
    or e                                          ; $74db: $b3
    dec b                                         ; $74dc: $05
    dec l                                         ; $74dd: $2d
    ld bc, $3216                                  ; $74de: $01 $16 $32
    add [hl]                                      ; $74e1: $86
    nop                                           ; $74e2: $00
    cp e                                          ; $74e3: $bb
    ld h, $f3                                     ; $74e4: $26 $f3
    ld d, b                                       ; $74e6: $50
    sbc a                                         ; $74e7: $9f
    dec sp                                        ; $74e8: $3b
    nop                                           ; $74e9: $00
    inc e                                         ; $74ea: $1c
    inc d                                         ; $74eb: $14
    ld d, l                                       ; $74ec: $55
    cp l                                          ; $74ed: $bd
    ld [hl], a                                    ; $74ee: $77

jr_0b0_74ef:
    or h                                          ; $74ef: $b4
    ld h, d                                       ; $74f0: $62
    nop                                           ; $74f1: $00
    jr jr_0b0_747e                                ; $74f2: $18 $8a

    ld c, c                                       ; $74f4: $49
    ld a, d                                       ; $74f5: $7a
    ld [hl], e                                    ; $74f6: $73
    ld [hl], d                                    ; $74f7: $72
    ld e, d                                       ; $74f8: $5a
    ld hl, $d200                                  ; $74f9: $21 $00 $d2
    ld c, h                                       ; $74fc: $4c
    adc e                                         ; $74fd: $8b
    ld a, [de]                                    ; $74fe: $1a
    or c                                          ; $74ff: $b1
    cpl                                           ; $7500: $2f
    jr nz, jr_0b0_7503                            ; $7501: $20 $00

jr_0b0_7503:
    ld c, c                                       ; $7503: $49
    ld d, $84                                     ; $7504: $16 $84
    ld bc, $05b4                                  ; $7506: $01 $b4 $05
    ld h, h                                       ; $7509: $64
    ld [$0e7b], sp                                ; $750a: $08 $7b $0e
    cp e                                          ; $750d: $bb
    ld b, [hl]                                    ; $750e: $46
    ld l, a                                       ; $750f: $6f
    ld bc, $0043                                  ; $7510: $01 $43 $00
    call nc, $9a29                                ; $7513: $d4 $29 $9a
    ld b, d                                       ; $7516: $42
    inc c                                         ; $7517: $0c
    dec c                                         ; $7518: $0d
    ld b, h                                       ; $7519: $44
    nop                                           ; $751a: $00
    or e                                          ; $751b: $b3
    dec b                                         ; $751c: $05
    or c                                          ; $751d: $b1
    ld b, h                                       ; $751e: $44
    cp e                                          ; $751f: $bb
    ld h, $00                                     ; $7520: $26 $00
    nop                                           ; $7522: $00
    or $66                                        ; $7523: $f6 $66
    sbc $7f                                       ; $7525: $de $7f
    nop                                           ; $7527: $00
    jr nz, jr_0b0_752a                            ; $7528: $20 $00

jr_0b0_752a:
    inc e                                         ; $752a: $1c
    xor h                                         ; $752b: $ac
    ld c, l                                       ; $752c: $4d
    or h                                          ; $752d: $b4
    ld h, d                                       ; $752e: $62
    sbc e                                         ; $752f: $9b
    ld [hl], a                                    ; $7530: $77
    nop                                           ; $7531: $00
    nop                                           ; $7532: $00
    ld c, $27                                     ; $7533: $0e $27
    sub b                                         ; $7535: $90
    ld b, b                                       ; $7536: $40
    cpl                                           ; $7537: $2f
    daa                                           ; $7538: $27
    nop                                           ; $7539: $00
    nop                                           ; $753a: $00
    jp z, $cd09                                   ; $753b: $ca $09 $cd

    ld e, $43                                     ; $753e: $1e $43
    ld bc, $0020                                  ; $7540: $01 $20 $00
    ld c, l                                       ; $7543: $4d
    inc hl                                        ; $7544: $23
    or e                                          ; $7545: $b3
    ld de, $22de                                  ; $7546: $11 $de $22
    ld b, c                                       ; $7549: $41
    nop                                           ; $754a: $00
    ld l, b                                       ; $754b: $68
    ld [de], a                                    ; $754c: $12
    add h                                         ; $754d: $84
    ld bc, $05d5                                  ; $754e: $01 $d5 $05
    jr nz, jr_0b0_7553                            ; $7551: $20 $00

jr_0b0_7553:
    ld l, a                                       ; $7553: $6f
    inc a                                         ; $7554: $3c
    or h                                          ; $7555: $b4
    dec b                                         ; $7556: $05
    add a                                         ; $7557: $87
    nop                                           ; $7558: $00
    nop                                           ; $7559: $00
    jr nz, jr_0b0_74ef                            ; $755a: $20 $93

    ld e, [hl]                                    ; $755c: $5e
    db $dd                                        ; $755d: $dd
    ld a, e                                       ; $755e: $7b
    jr jr_0b0_75cc                                ; $755f: $18 $6b

    nop                                           ; $7561: $00
    jr nz, jr_0b0_74ef                            ; $7562: $20 $8b

    ld c, c                                       ; $7564: $49
    push de                                       ; $7565: $d5
    ld h, [hl]                                    ; $7566: $66
    cpl                                           ; $7567: $2f
    ld d, [hl]                                    ; $7568: $56
    nop                                           ; $7569: $00
    nop                                           ; $756a: $00
    rst $20                                       ; $756b: $e7
    add hl, bc                                    ; $756c: $09
    ld l, a                                       ; $756d: $6f
    inc a                                         ; $756e: $3c
    call z, Call_000_211a                         ; $756f: $cc $1a $21
    nop                                           ; $7572: $00
    ld l, d                                       ; $7573: $6a
    ld d, $e2                                     ; $7574: $16 $e2
    nop                                           ; $7576: $00
    db $ed                                        ; $7577: $ed
    ld [hl+], a                                   ; $7578: $22
    ld b, b                                       ; $7579: $40
    nop                                           ; $757a: $00
    rst $28                                       ; $757b: $ef
    ld [hl+], a                                   ; $757c: $22
    rst $38                                       ; $757d: $ff
    ld b, e                                       ; $757e: $43
    ld c, $11                                     ; $757f: $0e $11
    ld b, b                                       ; $7581: $40
    nop                                           ; $7582: $00
    call c, $a422                                 ; $7583: $dc $22 $a4
    ld bc, $0d0c                                  ; $7586: $01 $0c $0d
    ld b, b                                       ; $7589: $40
    nop                                           ; $758a: $00
    sbc $7f                                       ; $758b: $de $7f
    ld c, l                                       ; $758d: $4d
    inc [hl]                                      ; $758e: $34
    add $09                                       ; $758f: $c6 $09
    nop                                           ; $7591: $00
    jr nz, @+$53                                  ; $7592: $20 $51

    ld e, d                                       ; $7594: $5a
    rst $30                                       ; $7595: $f7
    ld l, d                                       ; $7596: $6a
    sbc h                                         ; $7597: $9c
    ld [hl], a                                    ; $7598: $77
    nop                                           ; $7599: $00
    jr nz, @+$4a                                  ; $759a: $20 $48

    ld b, c                                       ; $759c: $41
    cpl                                           ; $759d: $2f
    ld d, [hl]                                    ; $759e: $56
    adc e                                         ; $759f: $8b
    ld c, c                                       ; $75a0: $49
    nop                                           ; $75a1: $00
    nop                                           ; $75a2: $00
    rst $38                                       ; $75a3: $ff
    ld c, a                                       ; $75a4: $4f
    add hl, hl                                    ; $75a5: $29
    dec c                                         ; $75a6: $0d
    rlca                                          ; $75a7: $07
    ld a, [bc]                                    ; $75a8: $0a
    ld b, c                                       ; $75a9: $41
    nop                                           ; $75aa: $00
    rst $20                                       ; $75ab: $e7
    dec c                                         ; $75ac: $0d
    inc hl                                        ; $75ad: $23
    ld bc, $1a8b                                  ; $75ae: $01 $8b $1a
    inc h                                         ; $75b1: $24
    nop                                           ; $75b2: $00
    ld a, $11                                     ; $75b3: $3e $11
    and a                                         ; $75b5: $a7
    dec c                                         ; $75b6: $0d
    sbc a                                         ; $75b7: $9f
    dec sp                                        ; $75b8: $3b

jr_0b0_75b9:
    ld b, b                                       ; $75b9: $40
    nop                                           ; $75ba: $00

jr_0b0_75bb:
    inc e                                         ; $75bb: $1c
    dec c                                         ; $75bc: $0d
    ld e, l                                       ; $75bd: $5d
    dec sp                                        ; $75be: $3b
    ld c, b                                       ; $75bf: $48
    inc b                                         ; $75c0: $04
    ld b, d                                       ; $75c1: $42
    inc b                                         ; $75c2: $04
    ld l, a                                       ; $75c3: $6f
    inc hl                                        ; $75c4: $23
    rst $20                                       ; $75c5: $e7
    dec c                                         ; $75c6: $0d
    rst $30                                       ; $75c7: $f7
    ld l, d                                       ; $75c8: $6a
    nop                                           ; $75c9: $00
    jr nz, jr_0b0_75b9                            ; $75ca: $20 $ed

jr_0b0_75cc:
    ld d, c                                       ; $75cc: $51
    ld [hl], d                                    ; $75cd: $72
    ld e, [hl]                                    ; $75ce: $5e
    cpl                                           ; $75cf: $2f
    ld d, [hl]                                    ; $75d0: $56
    nop                                           ; $75d1: $00
    jr nz, jr_0b0_75da                            ; $75d2: $20 $06

    ld b, c                                       ; $75d4: $41
    ld h, $41                                     ; $75d5: $26 $41
    adc e                                         ; $75d7: $8b
    ld a, [de]                                    ; $75d8: $1a
    nop                                           ; $75d9: $00

jr_0b0_75da:
    nop                                           ; $75da: $00
    jp nc, $6421                                  ; $75db: $d2 $21 $64

    ld bc, $2f5e                                  ; $75de: $01 $5e $2f
    ld b, c                                       ; $75e1: $41
    nop                                           ; $75e2: $00
    ld [$430e], sp                                ; $75e3: $08 $0e $43
    ld bc, $16ab                                  ; $75e6: $01 $ab $16

jr_0b0_75e9:
    add e                                         ; $75e9: $83
    nop                                           ; $75ea: $00
    ld l, e                                       ; $75eb: $6b
    ld d, $94                                     ; $75ec: $16 $94
    inc b                                         ; $75ee: $04
    call c, Call_000_242a                         ; $75ef: $dc $2a $24
    nop                                           ; $75f2: $00
    cp a                                          ; $75f3: $bf
    ld b, e                                       ; $75f4: $43
    di                                            ; $75f5: $f3
    inc c                                         ; $75f6: $0c
    push bc                                       ; $75f7: $c5
    ld bc, $0000                                  ; $75f8: $01 $00 $00
    ld c, b                                       ; $75fb: $48
    ld c, $f7                                     ; $75fc: $0e $f7
    ld d, d                                       ; $75fe: $52
    inc hl                                        ; $75ff: $23
    dec b                                         ; $7600: $05
    nop                                           ; $7601: $00
    jr nz, jr_0b0_75e9                            ; $7602: $20 $e5

    inc a                                         ; $7604: $3c
    ld c, b                                       ; $7605: $48
    ld b, l                                       ; $7606: $45
    inc hl                                        ; $7607: $23
    dec b                                         ; $7608: $05
    nop                                           ; $7609: $00
    nop                                           ; $760a: $00
    xor $5d                                       ; $760b: $ee $5d
    nop                                           ; $760d: $00
    jr nz, jr_0b0_75bb                            ; $760e: $20 $ab

    ld d, $61                                     ; $7610: $16 $61
    nop                                           ; $7612: $00
    ld [hl], c                                    ; $7613: $71
    dec b                                         ; $7614: $05
    ld l, c                                       ; $7615: $69
    nop                                           ; $7616: $00
    ld a, $11                                     ; $7617: $3e $11
    ld hl, $e700                                  ; $7619: $21 $00 $e7
    add hl, bc                                    ; $761c: $09
    xor e                                         ; $761d: $ab
    ld d, $e2                                     ; $761e: $16 $e2
    nop                                           ; $7620: $00
    nop                                           ; $7621: $00
    nop                                           ; $7622: $00
    xor l                                         ; $7623: $ad
    ld a, [de]                                    ; $7624: $1a
    and [hl]                                      ; $7625: $a6
    add hl, bc                                    ; $7626: $09
    adc h                                         ; $7627: $8c
    inc b                                         ; $7628: $04
    ld h, e                                       ; $7629: $63
    nop                                           ; $762a: $00
    ld a, [hl+]                                   ; $762b: $2a
    ld c, $1f                                     ; $762c: $0e $1f
    dec hl                                        ; $762e: $2b
    ld [hl], b                                    ; $762f: $70
    nop                                           ; $7630: $00
    ld bc, $cb00                                  ; $7631: $01 $00 $cb
    ld a, [de]                                    ; $7634: $1a
    ld h, a                                       ; $7635: $67
    add hl, bc                                    ; $7636: $09
    call c, $0022                                 ; $7637: $dc $22 $00
    nop                                           ; $763a: $00
    nop                                           ; $763b: $00
    jr nz, jr_0b0_76a5                            ; $763c: $20 $67

    add hl, bc                                    ; $763e: $09
    call c, $0022                                 ; $763f: $dc $22 $00
    nop                                           ; $7642: $00
    nop                                           ; $7643: $00
    jr nz, @+$44                                  ; $7644: $20 $42

    nop                                           ; $7646: $00
    ld h, l                                       ; $7647: $65
    nop                                           ; $7648: $00
    ld bc, $f600                                  ; $7649: $01 $00 $f6
    inc b                                         ; $764c: $04
    xor c                                         ; $764d: $a9
    nop                                           ; $764e: $00
    ld a, $11                                     ; $764f: $3e $11
    nop                                           ; $7651: $00
    nop                                           ; $7652: $00
    and $09                                       ; $7653: $e6 $09
    push hl                                       ; $7655: $e5
    nop                                           ; $7656: $00
    xor e                                         ; $7657: $ab
    ld a, [de]                                    ; $7658: $1a
    inc bc                                        ; $7659: $03
    nop                                           ; $765a: $00
    ld [$060e], sp                                ; $765b: $08 $0e $06
    ld bc, $1aab                                  ; $765e: $01 $ab $1a
    ld h, d                                       ; $7661: $62
    nop                                           ; $7662: $00

jr_0b0_7663:
    adc d                                         ; $7663: $8a
    ld d, $4b                                     ; $7664: $16 $4b
    nop                                           ; $7666: $00
    sub d                                         ; $7667: $92
    dec b                                         ; $7668: $05
    add d                                         ; $7669: $82
    nop                                           ; $766a: $00
    rl [hl]                                       ; $766b: $cb $16
    dec e                                         ; $766d: $1d
    ld a, [de]                                    ; $766e: $1a
    xor a                                         ; $766f: $af
    nop                                           ; $7670: $00
    nop                                           ; $7671: $00
    nop                                           ; $7672: $00
    nop                                           ; $7673: $00
    jr nz, jr_0b0_7693                            ; $7674: $20 $1d

    ld a, [de]                                    ; $7676: $1a
    xor a                                         ; $7677: $af
    nop                                           ; $7678: $00
    nop                                           ; $7679: $00
    nop                                           ; $767a: $00
    nop                                           ; $767b: $00
    jr nz, jr_0b0_7663                            ; $767c: $20 $e5

    nop                                           ; $767e: $00
    xor e                                         ; $767f: $ab
    ld a, [de]                                    ; $7680: $1a
    ld [bc], a                                    ; $7681: $02
    nop                                           ; $7682: $00
    ld l, a                                       ; $7683: $6f
    nop                                           ; $7684: $00
    ld c, e                                       ; $7685: $4b
    nop                                           ; $7686: $00
    sub $04                                       ; $7687: $d6 $04
    ld h, c                                       ; $7689: $61
    nop                                           ; $768a: $00
    ld sp, hl                                     ; $768b: $f9
    inc c                                         ; $768c: $0c
    add sp, $0d                                   ; $768d: $e8 $0d
    dec hl                                        ; $768f: $2b
    ld [$0000], sp                                ; $7690: $08 $00 $00

jr_0b0_7693:
    db $e3                                        ; $7693: $e3
    inc b                                         ; $7694: $04
    add [hl]                                      ; $7695: $86
    dec c                                         ; $7696: $0d
    ld h, a                                       ; $7697: $67
    inc b                                         ; $7698: $04
    nop                                           ; $7699: $00
    nop                                           ; $769a: $00
    and [hl]                                      ; $769b: $a6
    dec c                                         ; $769c: $0d
    add hl, hl                                    ; $769d: $29
    inc b                                         ; $769e: $04
    and e                                         ; $769f: $a3
    nop                                           ; $76a0: $00
    ld [bc], a                                    ; $76a1: $02
    nop                                           ; $76a2: $00
    ld c, e                                       ; $76a3: $4b
    inc b                                         ; $76a4: $04

jr_0b0_76a5:
    ld l, h                                       ; $76a5: $6c
    dec b                                         ; $76a6: $05
    nop                                           ; $76a7: $00
    jr nz, jr_0b0_76aa                            ; $76a8: $20 $00

jr_0b0_76aa:
    jr nz, jr_0b0_76f7                            ; $76aa: $20 $4b

    inc b                                         ; $76ac: $04

jr_0b0_76ad:
    ld l, h                                       ; $76ad: $6c
    dec b                                         ; $76ae: $05
    nop                                           ; $76af: $00
    jr nz, jr_0b0_76b2                            ; $76b0: $20 $00

jr_0b0_76b2:
    jr nz, jr_0b0_76ad                            ; $76b2: $20 $f9

    inc c                                         ; $76b4: $0c
    add sp, $0d                                   ; $76b5: $e8 $0d
    dec hl                                        ; $76b7: $2b
    ld [$0400], sp                                ; $76b8: $08 $00 $04
    ld [hl], d                                    ; $76bb: $72
    ld e, [hl]                                    ; $76bc: $5e
    ld l, e                                       ; $76bd: $6b
    inc b                                         ; $76be: $04
    db $f4                                        ; $76bf: $f4
    inc c                                         ; $76c0: $0c
    nop                                           ; $76c1: $00
    nop                                           ; $76c2: $00
    rst $00                                       ; $76c3: $c7
    dec c                                         ; $76c4: $0d
    or $0c                                        ; $76c5: $f6 $0c
    ld l, e                                       ; $76c7: $6b
    ld [$0000], sp                                ; $76c8: $08 $00 $00
    rrca                                          ; $76cb: $0f
    ld h, d                                       ; $76cc: $62
    sbc h                                         ; $76cd: $9c
    ld a, e                                       ; $76ce: $7b
    or l                                          ; $76cf: $b5
    ld l, [hl]                                    ; $76d0: $6e
    nop                                           ; $76d1: $00
    nop                                           ; $76d2: $00
    push hl                                       ; $76d3: $e5
    inc a                                         ; $76d4: $3c
    rrca                                          ; $76d5: $0f
    ld e, d                                       ; $76d6: $5a
    ld c, c                                       ; $76d7: $49
    ld c, c                                       ; $76d8: $49
    nop                                           ; $76d9: $00
    ld [$6ef7], sp                                ; $76da: $08 $f7 $6e
    ld l, c                                       ; $76dd: $69
    ld b, l                                       ; $76de: $45
    sbc $7b                                       ; $76df: $de $7b
    nop                                           ; $76e1: $00
    jr nz, @-$07                                  ; $76e2: $20 $f7

    ld l, [hl]                                    ; $76e4: $6e
    ld l, c                                       ; $76e5: $69
    ld b, l                                       ; $76e6: $45
    sbc $7b                                       ; $76e7: $de $7b
    nop                                           ; $76e9: $00
    jr nz, @-$37                                  ; $76ea: $20 $c7

    dec c                                         ; $76ec: $0d
    or $0c                                        ; $76ed: $f6 $0c
    ld l, e                                       ; $76ef: $6b
    ld [$2000], sp                                ; $76f0: $08 $00 $20
    sub e                                         ; $76f3: $93
    ld h, d                                       ; $76f4: $62
    sbc h                                         ; $76f5: $9c
    ld [hl], a                                    ; $76f6: $77

jr_0b0_76f7:
    daa                                           ; $76f7: $27
    ld b, c                                       ; $76f8: $41
    push hl                                       ; $76f9: $e5
    inc a                                         ; $76fa: $3c
    ld sp, $f766                                  ; $76fb: $31 $66 $f7
    ld [hl], d                                    ; $76fe: $72
    ld c, c                                       ; $76ff: $49
    ld c, l                                       ; $7700: $4d
    daa                                           ; $7701: $27
    ld b, l                                       ; $7702: $45
    sub l                                         ; $7703: $95
    ld [hl], d                                    ; $7704: $72
    sbc h                                         ; $7705: $9c
    ld a, e                                       ; $7706: $7b
    adc $5d                                       ; $7707: $ce $5d
    ld l, d                                       ; $7709: $6a
    ld c, l                                       ; $770a: $4d
    sub h                                         ; $770b: $94
    ld l, [hl]                                    ; $770c: $6e
    jr nc, @+$60                                  ; $770d: $30 $5e

    ld e, d                                       ; $770f: $5a
    ld [hl], e                                    ; $7710: $73
    nop                                           ; $7711: $00
    jr nz, jr_0b0_7787                            ; $7712: $20 $73

    ld e, [hl]                                    ; $7714: $5e
    cp h                                          ; $7715: $bc
    ld a, e                                       ; $7716: $7b
    push hl                                       ; $7717: $e5
    inc a                                         ; $7718: $3c
    nop                                           ; $7719: $00
    jr nz, @+$75                                  ; $771a: $20 $73

    ld e, [hl]                                    ; $771c: $5e
    cp h                                          ; $771d: $bc
    ld a, e                                       ; $771e: $7b
    push hl                                       ; $771f: $e5
    inc a                                         ; $7720: $3c
    nop                                           ; $7721: $00
    inc e                                         ; $7722: $1c
    ld [bc], a                                    ; $7723: $02
    inc e                                         ; $7724: $1c
    inc b                                         ; $7725: $04
    inc e                                         ; $7726: $1c
    inc h                                         ; $7727: $24
    jr jr_0b0_772a                                ; $7728: $18 $00

jr_0b0_772a:
    jr nz, @+$25                                  ; $772a: $20 $23

    inc e                                         ; $772c: $1c
    ld [bc], a                                    ; $772d: $02
    inc e                                         ; $772e: $1c
    dec h                                         ; $772f: $25
    jr jr_0b0_7732                                ; $7730: $18 $00

jr_0b0_7732:
    jr nz, jr_0b0_777c                            ; $7732: $20 $48

    inc d                                         ; $7734: $14
    adc l                                         ; $7735: $8d
    db $10                                        ; $7736: $10
    ld l, e                                       ; $7737: $6b
    inc d                                         ; $7738: $14
    ld h, a                                       ; $7739: $67
    inc e                                         ; $773a: $1c
    ld e, h                                       ; $773b: $5c
    inc bc                                        ; $773c: $03
    rst $18                                       ; $773d: $df
    ld c, e                                       ; $773e: $4b
    xor h                                         ; $773f: $ac
    inc e                                         ; $7740: $1c
    rla                                           ; $7741: $17
    add hl, bc                                    ; $7742: $09
    ld [hl], e                                    ; $7743: $73
    dec h                                         ; $7744: $25
    rst $30                                       ; $7745: $f7
    add hl, hl                                    ; $7746: $29
    ld d, [hl]                                    ; $7747: $56
    dec d                                         ; $7748: $15
    ld [hl], d                                    ; $7749: $72
    ld [$04d7], sp                                ; $774a: $08 $d7 $04
    ld a, [$9504]                                 ; $774d: $fa $04 $95
    inc b                                         ; $7750: $04
    nop                                           ; $7751: $00
    inc e                                         ; $7752: $1c
    ld c, e                                       ; $7753: $4b
    inc d                                         ; $7754: $14
    inc h                                         ; $7755: $24
    jr @+$73                                      ; $7756: $18 $71

    inc c                                         ; $7758: $0c
    ld bc, $281c                                  ; $7759: $01 $1c $28
    inc d                                         ; $775c: $14
    ld c, [hl]                                    ; $775d: $4e
    db $10                                        ; $775e: $10
    inc b                                         ; $775f: $04
    jr jr_0b0_7763                                ; $7760: $18 $01

    inc e                                         ; $7762: $1c

jr_0b0_7763:
    ld c, b                                       ; $7763: $48
    inc d                                         ; $7764: $14
    sub b                                         ; $7765: $90
    inc c                                         ; $7766: $0c
    inc hl                                        ; $7767: $23
    jr jr_0b0_77d3                                ; $7768: $18 $69

    inc d                                         ; $776a: $14
    call nc, $b008                                ; $776b: $d4 $08 $b0
    inc c                                         ; $776e: $0c
    add hl, de                                    ; $776f: $19
    dec b                                         ; $7770: $05
    nop                                           ; $7771: $00
    nop                                           ; $7772: $00
    sbc l                                         ; $7773: $9d
    rrca                                          ; $7774: $0f
    cp [hl]                                       ; $7775: $be
    ld c, e                                       ; $7776: $4b
    rst $38                                       ; $7777: $ff
    ld l, a                                       ; $7778: $6f
    db $10                                        ; $7779: $10
    dec c                                         ; $777a: $0d
    ld e, e                                       ; $777b: $5b

jr_0b0_777c:
    ld a, [hl+]                                   ; $777c: $2a
    ld e, d                                       ; $777d: $5a
    ld bc, $1f5d                                  ; $777e: $01 $5d $1f
    or a                                          ; $7781: $b7
    nop                                           ; $7782: $00
    inc a                                         ; $7783: $3c
    ld bc, $00da                                  ; $7784: $01 $da $00

jr_0b0_7787:
    ld a, l                                       ; $7787: $7d
    ld bc, $1c00                                  ; $7788: $01 $00 $1c
    ld l, h                                       ; $778b: $6c
    db $10                                        ; $778c: $10
    or l                                          ; $778d: $b5
    ld [$1825], sp                                ; $778e: $08 $25 $18
    ld bc, $711c                                  ; $7791: $01 $1c $71
    inc c                                         ; $7794: $0c
    add hl, hl                                    ; $7795: $29
    inc d                                         ; $7796: $14
    or a                                          ; $7797: $b7
    inc b                                         ; $7798: $04
    ld bc, $b01c                                  ; $7799: $01 $1c $b0
    ld [$00d8], sp                                ; $779c: $08 $d8 $00
    ld c, b                                       ; $779f: $48
    inc d                                         ; $77a0: $14
    ld b, [hl]                                    ; $77a1: $46
    inc d                                         ; $77a2: $14
    ld e, e                                       ; $77a3: $5b
    ld bc, $0319                                  ; $77a4: $01 $19 $03
    cp [hl]                                       ; $77a7: $be
    inc sp                                        ; $77a8: $33
    nop                                           ; $77a9: $00
    nop                                           ; $77aa: $00
    ld [hl], h                                    ; $77ab: $74
    ld c, $bf                                     ; $77ac: $0e $bf
    ld h, $ff                                     ; $77ae: $26 $ff
    ld [hl], $f0                                  ; $77b0: $36 $f0
    ld de, $05fc                                  ; $77b2: $11 $fc $05
    rst $10                                       ; $77b5: $d7
    ld b, $9d                                     ; $77b6: $06 $9d
    ld [hl+], a                                   ; $77b8: $22
    add hl, de                                    ; $77b9: $19
    ld bc, $01bd                                  ; $77ba: $01 $bd $01
    dec de                                        ; $77bd: $1b
    ld bc, $013d                                  ; $77be: $01 $3d $01
    nop                                           ; $77c1: $00
    inc e                                         ; $77c2: $1c
    ld l, d                                       ; $77c3: $6a
    inc d                                         ; $77c4: $14
    or d                                          ; $77c5: $b2
    inc c                                         ; $77c6: $0c
    inc hl                                        ; $77c7: $23
    jr jr_0b0_77cc                                ; $77c8: $18 $02

    inc e                                         ; $77ca: $1c
    sub d                                         ; $77cb: $92

jr_0b0_77cc:
    ld [$00db], sp                                ; $77cc: $08 $db $00
    ld c, c                                       ; $77cf: $49
    inc d                                         ; $77d0: $14
    ld h, $18                                     ; $77d1: $26 $18

jr_0b0_77d3:
    rst $30                                       ; $77d3: $f7
    inc b                                         ; $77d4: $04
    xor [hl]                                      ; $77d5: $ae
    inc c                                         ; $77d6: $0c
    inc e                                         ; $77d7: $1c
    ld bc, $0c46                                  ; $77d8: $01 $46 $0c
    or c                                          ; $77db: $b1
    ld de, $017d                                  ; $77dc: $11 $7d $01

jr_0b0_77df:
    halt                                          ; $77df: $76
    ld a, [bc]                                    ; $77e0: $0a
    ld c, $09                                     ; $77e1: $0e $09
    ccf                                           ; $77e3: $3f
    cpl                                           ; $77e4: $2f
    ret c                                         ; $77e5: $d8

    dec c                                         ; $77e6: $0d
    rra                                           ; $77e7: $1f
    ld c, $00                                     ; $77e8: $0e $00
    nop                                           ; $77ea: $00
    or a                                          ; $77eb: $b7
    ld c, $3d                                     ; $77ec: $0e $3d
    inc de                                        ; $77ee: $13
    ld e, l                                       ; $77ef: $5d
    ld [bc], a                                    ; $77f0: $02
    ldh a, [rNR10]                                ; $77f1: $f0 $10
    ld a, c                                       ; $77f3: $79
    ld bc, $019c                                  ; $77f4: $01 $9c $01
    dec d                                         ; $77f7: $15
    add hl, bc                                    ; $77f8: $09
    nop                                           ; $77f9: $00
    inc e                                         ; $77fa: $1c
    ld b, l                                       ; $77fb: $45
    jr jr_0b0_7787                                ; $77fc: $18 $89

    inc d                                         ; $77fe: $14
    ld [hl+], a                                   ; $77ff: $22
    inc e                                         ; $7800: $1c
    ld [hl+], a                                   ; $7801: $22
    inc e                                         ; $7802: $1c
    db $f4                                        ; $7803: $f4
    ld [$013c], sp                                ; $7804: $08 $3c $01
    adc d                                         ; $7807: $8a
    inc d                                         ; $7808: $14
    dec d                                         ; $7809: $15
    ld bc, $015c                                  ; $780a: $01 $5c $01
    add hl, sp                                    ; $780d: $39
    ld bc, $013e                                  ; $780e: $01 $3e $01
    ld b, l                                       ; $7811: $45
    nop                                           ; $7812: $00
    dec d                                         ; $7813: $15
    ld b, $5d                                     ; $7814: $06 $5d
    ld [bc], a                                    ; $7816: $02
    call $2200                                    ; $7817: $cd $00 $22
    nop                                           ; $781a: $00
    jr jr_0b0_782f                                ; $781b: $18 $12

    dec l                                         ; $781d: $2d
    add hl, bc                                    ; $781e: $09
    ld e, [hl]                                    ; $781f: $5e
    inc hl                                        ; $7820: $23
    ld l, h                                       ; $7821: $6c
    dec c                                         ; $7822: $0d
    db $dd                                        ; $7823: $dd
    ld [bc], a                                    ; $7824: $02
    ld e, [hl]                                    ; $7825: $5e
    rra                                           ; $7826: $1f
    cp a                                          ; $7827: $bf
    dec hl                                        ; $7828: $2b
    xor $0c                                       ; $7829: $ee $0c
    cp b                                          ; $782b: $b8
    ld bc, $021c                                  ; $782c: $01 $1c $02

jr_0b0_782f:
    ld [hl], l                                    ; $782f: $75
    add hl, bc                                    ; $7830: $09
    nop                                           ; $7831: $00
    jr nz, jr_0b0_77df                            ; $7832: $20 $ab

    db $10                                        ; $7834: $10
    ld [hl], c                                    ; $7835: $71
    dec c                                         ; $7836: $0d
    inc h                                         ; $7837: $24
    jr jr_0b0_785d                                ; $7838: $18 $23

    inc e                                         ; $783a: $1c
    cpl                                           ; $783b: $2f
    dec c                                         ; $783c: $0d
    sub [hl]                                      ; $783d: $96
    add hl, bc                                    ; $783e: $09
    cp h                                          ; $783f: $bc
    ld bc, $019b                                  ; $7840: $01 $9b $01
    call c, Call_0b0_7e01                         ; $7843: $dc $01 $7e
    ld bc, $01be                                  ; $7846: $01 $be $01
    ld c, e                                       ; $7849: $4b

Call_0b0_784a:
    ld bc, $029e                                  ; $784a: $01 $9e $02
    ld [hl], a                                    ; $784d: $77
    ld bc, $01da                                  ; $784e: $01 $da $01
    nop                                           ; $7851: $00
    nop                                           ; $7852: $00
    ret nc                                        ; $7853: $d0

    dec c                                         ; $7854: $0d
    dec e                                         ; $7855: $1d
    inc de                                        ; $7856: $13
    xor b                                         ; $7857: $a8
    inc b                                         ; $7858: $04
    ld b, e                                       ; $7859: $43
    nop                                           ; $785a: $00
    ld a, h                                       ; $785b: $7c
    rrca                                          ; $785c: $0f

jr_0b0_785d:
    ld c, l                                       ; $785d: $4d
    dec b                                         ; $785e: $05
    rst $18                                       ; $785f: $df
    dec hl                                        ; $7860: $2b
    jp hl                                         ; $7861: $e9


    ld [$065a], sp                                ; $7862: $08 $5a $06

jr_0b0_7865:
    sbc $02                                       ; $7865: $de $02
    ld [hl], d                                    ; $7867: $72
    add hl, bc                                    ; $7868: $09
    nop                                           ; $7869: $00
    inc e                                         ; $786a: $1c
    rl h                                          ; $786b: $cb $14
    call nc, $0309                                ; $786d: $d4 $09 $03
    jr jr_0b0_7894                                ; $7870: $18 $22

    inc e                                         ; $7872: $1c
    or [hl]                                       ; $7873: $b6
    dec b                                         ; $7874: $05
    call z, $3d10                                 ; $7875: $cc $10 $3d
    ld [bc], a                                    ; $7878: $02
    ld a, [hl-]                                   ; $7879: $3a
    ld [bc], a                                    ; $787a: $02
    rst $38                                       ; $787b: $ff
    ld bc, $027e                                  ; $787c: $01 $7e $02
    dec a                                         ; $787f: $3d
    ld [bc], a                                    ; $7880: $02
    or a                                          ; $7881: $b7
    ld bc, $02bb                                  ; $7882: $01 $bb $02
    ld a, [hl-]                                   ; $7885: $3a
    ld [bc], a                                    ; $7886: $02
    ld e, $03                                     ; $7887: $1e $03
    ld bc, $d100                                  ; $7889: $01 $00 $d1
    dec c                                         ; $788c: $0d
    ld e, [hl]                                    ; $788d: $5e
    rlca                                          ; $788e: $07
    cp a                                          ; $788f: $bf
    inc hl                                        ; $7890: $23
    ld h, e                                       ; $7891: $63
    nop                                           ; $7892: $00
    cp l                                          ; $7893: $bd

jr_0b0_7894:
    dec bc                                        ; $7894: $0b
    rst $38                                       ; $7895: $ff
    dec hl                                        ; $7896: $2b
    ld a, [hl+]                                   ; $7897: $2a
    ld bc, $0042                                  ; $7898: $01 $42 $00
    ld d, [hl]                                    ; $789b: $56
    ld b, $1c                                     ; $789c: $06 $1c
    rlca                                          ; $789e: $07
    adc [hl]                                      ; $789f: $8e
    add hl, bc                                    ; $78a0: $09
    nop                                           ; $78a1: $00
    jr nz, @-$57                                  ; $78a2: $20 $a7

    jr jr_0b0_78c9                                ; $78a4: $18 $23

    inc e                                         ; $78a6: $1c
    ld l, a                                       ; $78a7: $6f
    ld de, $1c01                                  ; $78a8: $11 $01 $1c
    inc sp                                        ; $78ab: $33
    add hl, bc                                    ; $78ac: $09
    inc e                                         ; $78ad: $1c
    ld [bc], a                                    ; $78ae: $02
    ld l, c                                       ; $78af: $69
    inc d                                         ; $78b0: $14
    ld c, e                                       ; $78b1: $4b
    ld bc, $0659                                  ; $78b2: $01 $59 $06
    sbc $02                                       ; $78b5: $de $02
    ld a, [c]                                     ; $78b7: $f2
    ld bc, $025a                                  ; $78b8: $01 $5a $02
    call c, $1d02                                 ; $78bb: $dc $02 $1d
    inc bc                                        ; $78be: $03
    sbc e                                         ; $78bf: $9b
    ld [bc], a                                    ; $78c0: $02
    ld b, d                                       ; $78c1: $42
    nop                                           ; $78c2: $00
    sbc b                                         ; $78c3: $98
    ld a, [de]                                    ; $78c4: $1a
    ld a, $07                                     ; $78c5: $3e $07
    dec bc                                        ; $78c7: $0b
    add hl, bc                                    ; $78c8: $09

jr_0b0_78c9:
    ld b, d                                       ; $78c9: $42
    nop                                           ; $78ca: $00
    sub l                                         ; $78cb: $95
    ld [bc], a                                    ; $78cc: $02
    cp a                                          ; $78cd: $bf
    daa                                           ; $78ce: $27
    adc l                                         ; $78cf: $8d
    ld bc, $0042                                  ; $78d0: $01 $42 $00
    sbc l                                         ; $78d3: $9d
    inc bc                                        ; $78d4: $03
    ld a, [hl-]                                   ; $78d5: $3a
    cpl                                           ; $78d6: $2f
    ld de, $000a                                  ; $78d7: $11 $0a $00
    jr nz, jr_0b0_7865                            ; $78da: $20 $89

    inc d                                         ; $78dc: $14
    xor [hl]                                      ; $78dd: $ae
    dec d                                         ; $78de: $15
    inc h                                         ; $78df: $24
    jr jr_0b0_78e3                                ; $78e0: $18 $01

    inc e                                         ; $78e2: $1c

jr_0b0_78e3:
    di                                            ; $78e3: $f3
    ld [$0618], sp                                ; $78e4: $08 $18 $06
    ld c, b                                       ; $78e7: $48
    inc d                                         ; $78e8: $14
    ld c, l                                       ; $78e9: $4d
    ld bc, $0a7a                                  ; $78ea: $01 $7a $0a
    ld e, a                                       ; $78ed: $5f
    inc bc                                        ; $78ee: $03
    or d                                          ; $78ef: $b2
    ld bc, $0191                                  ; $78f0: $01 $91 $01
    cp e                                          ; $78f3: $bb
    ld [bc], a                                    ; $78f4: $02
    ld a, [hl]                                    ; $78f5: $7e
    inc bc                                        ; $78f6: $03
    db $f4                                        ; $78f7: $f4
    ld bc, $0000                                  ; $78f8: $01 $00 $00
    pop de                                        ; $78fb: $d1
    add hl, bc                                    ; $78fc: $09
    ld a, c                                       ; $78fd: $79
    ld d, $64                                     ; $78fe: $16 $64
    inc b                                         ; $7900: $04
    nop                                           ; $7901: $00
    nop                                           ; $7902: $00
    sbc l                                         ; $7903: $9d
    inc bc                                        ; $7904: $03
    adc l                                         ; $7905: $8d
    dec c                                         ; $7906: $0d
    and l                                         ; $7907: $a5
    nop                                           ; $7908: $00
    nop                                           ; $7909: $00
    nop                                           ; $790a: $00
    ld [hl-], a                                   ; $790b: $32
    ld b, $de                                     ; $790c: $06 $de
    inc bc                                        ; $790e: $03
    add h                                         ; $790f: $84
    inc b                                         ; $7910: $04
    nop                                           ; $7911: $00
    inc e                                         ; $7912: $1c
    pop de                                        ; $7913: $d1
    ld de, $035c                                  ; $7914: $11 $5c $03
    ld l, b                                       ; $7917: $68
    jr @+$03                                      ; $7918: $18 $01

    jr jr_0b0_792e                                ; $791a: $18 $12

    ld [de], a                                    ; $791c: $12
    rst $18                                       ; $791d: $df
    ld l, e                                       ; $791e: $6b
    ld e, h                                       ; $791f: $5c
    rrca                                          ; $7920: $0f
    xor d                                         ; $7921: $aa
    nop                                           ; $7922: $00
    ld e, a                                       ; $7923: $5f
    ld b, $9f                                     ; $7924: $06 $9f
    inc bc                                        ; $7926: $03
    rst $38                                       ; $7927: $ff
    ld [bc], a                                    ; $7928: $02
    ld b, e                                       ; $7929: $43
    nop                                           ; $792a: $00
    or a                                          ; $792b: $b7
    ld [bc], a                                    ; $792c: $02
    rst $18                                       ; $792d: $df

jr_0b0_792e:
    inc bc                                        ; $792e: $03
    ret z                                         ; $792f: $c8

    nop                                           ; $7930: $00
    ld bc, $f900                                  ; $7931: $01 $00 $f9
    dec b                                         ; $7934: $05
    add [hl]                                      ; $7935: $86
    inc b                                         ; $7936: $04
    jp z, Jump_000_0a04                           ; $7937: $ca $04 $0a

    add hl, bc                                    ; $793a: $09
    sbc b                                         ; $793b: $98
    ld [bc], a                                    ; $793c: $02
    sbc a                                         ; $793d: $9f
    inc bc                                        ; $793e: $03
    db $dd                                        ; $793f: $dd
    ld e, $6b                                     ; $7940: $1e $6b
    ld bc, $0f18                                  ; $7942: $01 $18 $0f
    cp a                                          ; $7945: $bf
    dec bc                                        ; $7946: $0b
    ld [hl-], a                                   ; $7947: $32
    ld [de], a                                    ; $7948: $12
    nop                                           ; $7949: $00
    inc e                                         ; $794a: $1c
    ld d, h                                       ; $794b: $54
    ld c, $9e                                     ; $794c: $0e $9e
    rra                                           ; $794e: $1f
    rst $38                                       ; $794f: $ff
    ld h, e                                       ; $7950: $63
    nop                                           ; $7951: $00
    ld [$035c], sp                                ; $7952: $08 $5c $03
    rst $18                                       ; $7955: $df
    ld h, a                                       ; $7956: $67
    ld a, $33                                     ; $7957: $3e $33
    rst $18                                       ; $7959: $df
    ld d, $bf                                     ; $795a: $16 $bf
    rrca                                          ; $795c: $0f
    rra                                           ; $795d: $1f
    inc sp                                        ; $795e: $33
    cp a                                          ; $795f: $bf
    inc hl                                        ; $7960: $23
    nop                                           ; $7961: $00
    nop                                           ; $7962: $00
    ld e, c                                       ; $7963: $59
    ld [bc], a                                    ; $7964: $02
    ld c, d                                       ; $7965: $4a
    ld bc, $073d                                  ; $7966: $01 $3d $07
    ld [hl+], a                                   ; $7969: $22
    nop                                           ; $796a: $00
    rst $10                                       ; $796b: $d7
    add hl, bc                                    ; $796c: $09
    ld h, [hl]                                    ; $796d: $66
    inc b                                         ; $796e: $04
    jp z, $f408                                   ; $796f: $ca $08 $f4

    dec h                                         ; $7972: $25
    ld e, a                                       ; $7973: $5f
    inc de                                        ; $7974: $13
    cp $2a                                        ; $7975: $fe $2a
    sbc a                                         ; $7977: $9f
    dec hl                                        ; $7978: $2b
    sbc $1f                                       ; $7979: $de $1f
    rst $18                                       ; $797b: $df
    inc sp                                        ; $797c: $33
    rst $18                                       ; $797d: $df
    dec hl                                        ; $797e: $2b
    rst $38                                       ; $797f: $ff
    ccf                                           ; $7980: $3f
    nop                                           ; $7981: $00
    inc e                                         ; $7982: $1c
    ld a, h                                       ; $7983: $7c
    rla                                           ; $7984: $17
    rst $38                                       ; $7985: $ff
    ld a, e                                       ; $7986: $7b
    sbc a                                         ; $7987: $9f
    ld b, e                                       ; $7988: $43
    nop                                           ; $7989: $00
    nop                                           ; $798a: $00
    ld a, l                                       ; $798b: $7d
    inc bc                                        ; $798c: $03
    ld a, a                                       ; $798d: $7f
    ld c, a                                       ; $798e: $4f
    rst $38                                       ; $798f: $ff
    ld l, a                                       ; $7990: $6f
    ld d, d                                       ; $7991: $52
    ld a, [hl+]                                   ; $7992: $2a
    sbc [hl]                                      ; $7993: $9e
    ccf                                           ; $7994: $3f
    cp a                                          ; $7995: $bf
    ld c, a                                       ; $7996: $4f
    jr @+$2d                                      ; $7997: $18 $2b

    ld hl, $1d00                                  ; $7999: $21 $00 $1d
    rla                                           ; $799c: $17
    ld a, [hl]                                    ; $799d: $7e
    cpl                                           ; $799e: $2f
    ld [$000d], sp                                ; $799f: $08 $0d $00
    nop                                           ; $79a2: $00
    ret z                                         ; $79a3: $c8

    inc c                                         ; $79a4: $0c
    ld c, l                                       ; $79a5: $4d
    add hl, de                                    ; $79a6: $19
    add l                                         ; $79a7: $85
    inc c                                         ; $79a8: $0c
    ld d, a                                       ; $79a9: $57
    ld [hl-], a                                   ; $79aa: $32
    db $fc                                        ; $79ab: $fc
    ld b, d                                       ; $79ac: $42
    cp a                                          ; $79ad: $bf
    ccf                                           ; $79ae: $3f
    ld e, [hl]                                    ; $79af: $5e
    ccf                                           ; $79b0: $3f
    rst $18                                       ; $79b1: $df
    ld b, e                                       ; $79b2: $43
    rst $38                                       ; $79b3: $ff
    ld b, a                                       ; $79b4: $47
    rst $38                                       ; $79b5: $ff
    ld c, e                                       ; $79b6: $4b
    rst $18                                       ; $79b7: $df
    ld b, a                                       ; $79b8: $47
    nop                                           ; $79b9: $00
    nop                                           ; $79ba: $00
    ld a, l                                       ; $79bb: $7d
    rrca                                          ; $79bc: $0f
    cp a                                          ; $79bd: $bf
    ld b, a                                       ; $79be: $47
    nop                                           ; $79bf: $00
    jr nz, jr_0b0_79c2                            ; $79c0: $20 $00

jr_0b0_79c2:
    ld [$4b5f], sp                                ; $79c2: $08 $5f $4b
    rst $38                                       ; $79c5: $ff
    ld [hl], a                                    ; $79c6: $77
    cp [hl]                                       ; $79c7: $be
    dec sp                                        ; $79c8: $3b
    ld d, d                                       ; $79c9: $52
    ld l, $5b                                     ; $79ca: $2e $5b
    ld b, e                                       ; $79cc: $43
    rst $18                                       ; $79cd: $df
    ld c, e                                       ; $79ce: $4b
    ld a, a                                       ; $79cf: $7f
    ld b, a                                       ; $79d0: $47
    add h                                         ; $79d1: $84
    ld [$3f1a], sp                                ; $79d2: $08 $1a $3f
    db $10                                        ; $79d5: $10
    ld a, [hl+]                                   ; $79d6: $2a
    rst $18                                       ; $79d7: $df
    ld c, a                                       ; $79d8: $4f
    ld b, d                                       ; $79d9: $42
    inc b                                         ; $79da: $04
    jp hl                                         ; $79db: $e9


    db $10                                        ; $79dc: $10
    add l                                         ; $79dd: $85
    inc c                                         ; $79de: $0c
    ld c, h                                       ; $79df: $4c
    dec e                                         ; $79e0: $1d
    ld b, e                                       ; $79e1: $43
    inc b                                         ; $79e2: $04
    inc a                                         ; $79e3: $3c
    scf                                           ; $79e4: $37
    xor a                                         ; $79e5: $af
    ld hl, $47bf                                  ; $79e6: $21 $bf $47
    rst $18                                       ; $79e9: $df
    inc hl                                        ; $79ea: $23
    rst $18                                       ; $79eb: $df
    dec sp                                        ; $79ec: $3b
    ld a, [hl]                                    ; $79ed: $7e
    dec hl                                        ; $79ee: $2b
    rst $38                                       ; $79ef: $ff
    inc sp                                        ; $79f0: $33
    nop                                           ; $79f1: $00
    inc e                                         ; $79f2: $1c
    sub l                                         ; $79f3: $95
    ld a, [bc]                                    ; $79f4: $0a
    jp hl                                         ; $79f5: $e9


    db $10                                        ; $79f6: $10
    cp a                                          ; $79f7: $bf
    inc hl                                        ; $79f8: $23
    nop                                           ; $79f9: $00
    db $10                                        ; $79fa: $10
    ld d, e                                       ; $79fb: $53
    ld c, $3f                                     ; $79fc: $0e $3f
    inc sp                                        ; $79fe: $33
    rst $38                                       ; $79ff: $ff
    ld a, a                                       ; $7a00: $7f
    ld e, a                                       ; $7a01: $5f
    inc sp                                        ; $7a02: $33
    rst $18                                       ; $7a03: $df
    scf                                           ; $7a04: $37
    rst $18                                       ; $7a05: $df
    ld b, e                                       ; $7a06: $43
    ld e, a                                       ; $7a07: $5f
    ccf                                           ; $7a08: $3f
    add sp, $14                                   ; $7a09: $e8 $14
    or a                                          ; $7a0b: $b7
    ld a, [hl-]                                   ; $7a0c: $3a
    rst $18                                       ; $7a0d: $df
    ld b, e                                       ; $7a0e: $43
    cp [hl]                                       ; $7a0f: $be
    ld c, a                                       ; $7a10: $4f
    ld hl, $c900                                  ; $7a11: $21 $00 $c9
    db $10                                        ; $7a14: $10
    add l                                         ; $7a15: $85
    ld [$110d], sp                                ; $7a16: $08 $0d $11
    ld [hl+], a                                   ; $7a19: $22
    nop                                           ; $7a1a: $00
    sub l                                         ; $7a1b: $95
    ld de, $1a7a                                  ; $7a1c: $11 $7a $1a
    and a                                         ; $7a1f: $a7
    ld [HeaderOldLicenseeCode], sp                ; $7a20: $08 $4b $01
    sbc d                                         ; $7a23: $9a
    ld d, $17                                     ; $7a24: $16 $17
    ld [bc], a                                    ; $7a26: $02
    dec de                                        ; $7a27: $1b
    rrca                                          ; $7a28: $0f
    nop                                           ; $7a29: $00
    inc e                                         ; $7a2a: $1c
    ld [de], a                                    ; $7a2b: $12
    ld c, $db                                     ; $7a2c: $0e $db
    ld [bc], a                                    ; $7a2e: $02
    xor c                                         ; $7a2f: $a9
    inc d                                         ; $7a30: $14
    ld bc, $3214                                  ; $7a31: $01 $14 $32
    ld c, $9e                                     ; $7a34: $0e $9e
    rlca                                          ; $7a36: $07
    sbc a                                         ; $7a37: $9f
    ld [hl+], a                                   ; $7a38: $22
    add hl, de                                    ; $7a39: $19
    rrca                                          ; $7a3a: $0f
    sbc [hl]                                      ; $7a3b: $9e
    inc de                                        ; $7a3c: $13
    cp a                                          ; $7a3d: $bf
    inc hl                                        ; $7a3e: $23
    rst $38                                       ; $7a3f: $ff
    ld d, $01                                     ; $7a40: $16 $01
    nop                                           ; $7a42: $00
    ld d, h                                       ; $7a43: $54
    ld d, $7e                                     ; $7a44: $16 $7e
    dec hl                                        ; $7a46: $2b
    add hl, bc                                    ; $7a47: $09
    add hl, bc                                    ; $7a48: $09
    inc hl                                        ; $7a49: $23
    nop                                           ; $7a4a: $00
    add hl, sp                                    ; $7a4b: $39
    add hl, bc                                    ; $7a4c: $09
    and a                                         ; $7a4d: $a7
    inc b                                         ; $7a4e: $04
    xor a                                         ; $7a4f: $af
    inc b                                         ; $7a50: $04
    inc h                                         ; $7a51: $24
    nop                                           ; $7a52: $00
    sub a                                         ; $7a53: $97
    ld bc, $00ee                                  ; $7a54: $01 $ee $00
    cp h                                          ; $7a57: $bc
    add hl, bc                                    ; $7a58: $09
    or [hl]                                       ; $7a59: $b6
    ld bc, $01f9                                  ; $7a5a: $01 $f9 $01
    jr c, jr_0b0_7a61                             ; $7a5d: $38 $02

    or $01                                        ; $7a5f: $f6 $01

jr_0b0_7a61:
    nop                                           ; $7a61: $00
    inc e                                         ; $7a62: $1c
    dec d                                         ; $7a63: $15
    ld b, $7c                                     ; $7a64: $06 $7c
    inc bc                                        ; $7a66: $03
    adc b                                         ; $7a67: $88
    inc d                                         ; $7a68: $14
    nop                                           ; $7a69: $00
    nop                                           ; $7a6a: $00
    ld [hl-], a                                   ; $7a6b: $32
    ld c, $3f                                     ; $7a6c: $0e $3f
    ld c, $23                                     ; $7a6e: $0e $23
    inc e                                         ; $7a70: $1c
    ld hl, $7500                                  ; $7a71: $21 $00 $75
    ld [bc], a                                    ; $7a74: $02
    ld l, e                                       ; $7a75: $6b
    ld bc, $02fe                                  ; $7a76: $01 $fe $02
    ld h, e                                       ; $7a79: $63
    nop                                           ; $7a7a: $00
    sub a                                         ; $7a7b: $97
    ld [bc], a                                    ; $7a7c: $02
    dec hl                                        ; $7a7d: $2b
    ld bc, $073e                                  ; $7a7e: $01 $3e $07
    inc hl                                        ; $7a81: $23
    nop                                           ; $7a82: $00
    pop de                                        ; $7a83: $d1
    nop                                           ; $7a84: $00
    ld a, [de]                                    ; $7a85: $1a
    ld bc, $00ab                                  ; $7a86: $01 $ab $00
    inc hl                                        ; $7a89: $23
    nop                                           ; $7a8a: $00
    ld a, [hl]                                    ; $7a8b: $7e
    ld bc, $0111                                  ; $7a8c: $01 $11 $01
    ld e, h                                       ; $7a8f: $5c
    ld [bc], a                                    ; $7a90: $02
    ld e, d                                       ; $7a91: $5a
    ld [bc], a                                    ; $7a92: $02
    call c, $9a02                                 ; $7a93: $dc $02 $9a
    ld [bc], a                                    ; $7a96: $02
    inc e                                         ; $7a97: $1c
    inc bc                                        ; $7a98: $03
    nop                                           ; $7a99: $00
    inc e                                         ; $7a9a: $1c
    ld d, e                                       ; $7a9b: $53
    ld c, $a9                                     ; $7a9c: $0e $a9
    inc c                                         ; $7a9e: $0c
    cp e                                          ; $7a9f: $bb
    ld [bc], a                                    ; $7aa0: $02
    nop                                           ; $7aa1: $00
    nop                                           ; $7aa2: $00
    ld [hl-], a                                   ; $7aa3: $32
    ld c, $9e                                     ; $7aa4: $0e $9e
    ld b, $03                                     ; $7aa6: $06 $03
    inc e                                         ; $7aa8: $1c
    add l                                         ; $7aa9: $85
    nop                                           ; $7aaa: $00
    sub a                                         ; $7aab: $97
    ld [bc], a                                    ; $7aac: $02
    adc [hl]                                      ; $7aad: $8e
    ld bc, $02fe                                  ; $7aae: $01 $fe $02
    ld [$fd00], a                                 ; $7ab1: $ea $00 $fd
    ld bc, $031c                                  ; $7ab4: $01 $1c $03
    db $d3                                        ; $7ab7: $d3
    ld bc, $0001                                  ; $7ab8: $01 $01 $00
    inc d                                         ; $7abb: $14
    ld bc, $019b                                  ; $7abc: $01 $9b $01
    adc d                                         ; $7abf: $8a
    nop                                           ; $7ac0: $00
    ld b, l                                       ; $7ac1: $45
    nop                                           ; $7ac2: $00
    sbc c                                         ; $7ac3: $99
    ld bc, $02ff                                  ; $7ac4: $01 $ff $02
    ldh a, [rP1]                                  ; $7ac7: $f0 $00
    dec a                                         ; $7ac9: $3d
    inc bc                                        ; $7aca: $03
    cp a                                          ; $7acb: $bf
    inc bc                                        ; $7acc: $03
    ld a, [hl]                                    ; $7acd: $7e
    inc bc                                        ; $7ace: $03
    rst $38                                       ; $7acf: $ff
    dec bc                                        ; $7ad0: $0b
    nop                                           ; $7ad1: $00
    inc e                                         ; $7ad2: $1c
    di                                            ; $7ad3: $f3
    add hl, bc                                    ; $7ad4: $09
    xor b                                         ; $7ad5: $a8
    inc d                                         ; $7ad6: $14
    call c, $0002                                 ; $7ad7: $dc $02 $00
    db $10                                        ; $7ada: $10
    sub d                                         ; $7adb: $92
    dec c                                         ; $7adc: $0d
    cp e                                          ; $7add: $bb
    ld [bc], a                                    ; $7ade: $02
    ld c, b                                       ; $7adf: $48
    inc d                                         ; $7ae0: $14
    ld l, [hl]                                    ; $7ae1: $6e
    ld bc, $02ba                                  ; $7ae2: $01 $ba $02
    ld a, l                                       ; $7ae5: $7d
    inc bc                                        ; $7ae6: $03
    db $d3                                        ; $7ae7: $d3
    ld bc, HeaderTitle                            ; $7ae8: $01 $34 $01
    cp [hl]                                       ; $7aeb: $be
    ld [bc], a                                    ; $7aec: $02
    ld a, a                                       ; $7aed: $7f
    inc bc                                        ; $7aee: $03
    db $db                                        ; $7aef: $db
    ld bc, $0001                                  ; $7af0: $01 $01 $00
    cp b                                          ; $7af3: $b8
    ld bc, $023e                                  ; $7af4: $01 $3e $02
    call z, RST_00                                ; $7af7: $cc $00 $00
    nop                                           ; $7afa: $00
    ld a, [$3f01]                                 ; $7afb: $fa $01 $3f
    inc bc                                        ; $7afe: $03
    xor d                                         ; $7aff: $aa
    nop                                           ; $7b00: $00
    rst $18                                       ; $7b01: $df
    inc bc                                        ; $7b02: $03
    rst $18                                       ; $7b03: $df
    inc hl                                        ; $7b04: $23
    rst $18                                       ; $7b05: $df
    inc de                                        ; $7b06: $13
    rst $18                                       ; $7b07: $df
    scf                                           ; $7b08: $37
    nop                                           ; $7b09: $00
    inc e                                         ; $7b0a: $1c
    ld d, a                                       ; $7b0b: $57
    ld [bc], a                                    ; $7b0c: $02
    jp z, $3e14                                   ; $7b0d: $ca $14 $3e

    dec bc                                        ; $7b10: $0b
    nop                                           ; $7b11: $00
    db $10                                        ; $7b12: $10
    or d                                          ; $7b13: $b2
    dec c                                         ; $7b14: $0d
    ld a, [hl-]                                   ; $7b15: $3a
    inc bc                                        ; $7b16: $03
    xor d                                         ; $7b17: $aa
    inc d                                         ; $7b18: $14
    ld a, d                                       ; $7b19: $7a
    ld b, $1e                                     ; $7b1a: $06 $1e
    inc bc                                        ; $7b1c: $03
    db $dd                                        ; $7b1d: $dd
    ld h, $7f                                     ; $7b1e: $26 $7f
    inc bc                                        ; $7b20: $03
    xor c                                         ; $7b21: $a9
    nop                                           ; $7b22: $00
    jp c, $9d01                                   ; $7b23: $da $01 $9d

    ld [bc], a                                    ; $7b26: $02
    ld a, $03                                     ; $7b27: $3e $03
    inc hl                                        ; $7b29: $23
    nop                                           ; $7b2a: $00
    ld e, c                                       ; $7b2b: $59
    ld [bc], a                                    ; $7b2c: $02
    ld [hl], b                                    ; $7b2d: $70
    ld bc, $02bd                                  ; $7b2e: $01 $bd $02
    ld b, e                                       ; $7b31: $43
    nop                                           ; $7b32: $00
    ld e, d                                       ; $7b33: $5a
    ld [bc], a                                    ; $7b34: $02
    cpl                                           ; $7b35: $2f
    ld bc, $033e                                  ; $7b36: $01 $3e $03
    rst $18                                       ; $7b39: $df
    inc bc                                        ; $7b3a: $03
    rst $38                                       ; $7b3b: $ff

jr_0b0_7b3c:
    scf                                           ; $7b3c: $37
    rst $18                                       ; $7b3d: $df
    ld c, a                                       ; $7b3e: $4f
    rst $38                                       ; $7b3f: $ff
    dec de                                        ; $7b40: $1b
    nop                                           ; $7b41: $00
    inc e                                         ; $7b42: $1c
    ld c, [hl]                                    ; $7b43: $4e
    add hl, bc                                    ; $7b44: $09
    sbc a                                         ; $7b45: $9f
    cpl                                           ; $7b46: $2f
    dec [hl]                                      ; $7b47: $35
    ld b, $02                                     ; $7b48: $06 $02
    jr jr_0b0_7b3c                                ; $7b4a: $18 $f0

    ld de, $0efa                                  ; $7b4c: $11 $fa $0e
    adc b                                         ; $7b4f: $88
    inc d                                         ; $7b50: $14
    adc c                                         ; $7b51: $89
    nop                                           ; $7b52: $00
    sbc [hl]                                      ; $7b53: $9e
    ld [bc], a                                    ; $7b54: $02
    ccf                                           ; $7b55: $3f
    ld b, e                                       ; $7b56: $43
    sbc a                                         ; $7b57: $9f
    ld a, [de]                                    ; $7b58: $1a
    ld b, h                                       ; $7b59: $44
    nop                                           ; $7b5a: $00
    call nc, $fa01                                ; $7b5b: $d4 $01 $fa
    ld bc, $025c                                  ; $7b5e: $01 $5c $02
    add sp, $00                                   ; $7b61: $e8 $00
    cp d                                          ; $7b63: $ba
    ld [bc], a                                    ; $7b64: $02
    ld a, $03                                     ; $7b65: $3e $03
    sbc [hl]                                      ; $7b67: $9e
    inc bc                                        ; $7b68: $03
    ld d, b                                       ; $7b69: $50
    ld bc, $02de                                  ; $7b6a: $01 $de $02
    ld e, b                                       ; $7b6d: $58
    ld [bc], a                                    ; $7b6e: $02
    ld e, a                                       ; $7b6f: $5f
    inc bc                                        ; $7b70: $03
    ld h, h                                       ; $7b71: $64
    nop                                           ; $7b72: $00
    rst $18                                       ; $7b73: $df
    inc bc                                        ; $7b74: $03
    cp a                                          ; $7b75: $bf
    dec sp                                        ; $7b76: $3b
    cp a                                          ; $7b77: $bf
    inc de                                        ; $7b78: $13
    nop                                           ; $7b79: $00
    inc e                                         ; $7b7a: $1c
    ld d, h                                       ; $7b7b: $54
    ld a, [bc]                                    ; $7b7c: $0a
    cp [hl]                                       ; $7b7d: $be
    cpl                                           ; $7b7e: $2f
    add a                                         ; $7b7f: $87
    jr jr_0b0_7b83                                ; $7b80: $18 $01

    inc e                                         ; $7b82: $1c

jr_0b0_7b83:
    ld [hl], c                                    ; $7b83: $71
    dec c                                         ; $7b84: $0d
    ld a, h                                       ; $7b85: $7c
    ld c, $68                                     ; $7b86: $0e $68
    inc d                                         ; $7b88: $14
    adc $00                                       ; $7b89: $ce $00
    db $db                                        ; $7b8b: $db
    ld bc, $01fe                                  ; $7b8c: $01 $fe $01
    scf                                           ; $7b8f: $37
    ld bc, $0042                                  ; $7b90: $01 $42 $00
    pop af                                        ; $7b93: $f1
    ld bc, $02dc                                  ; $7b94: $01 $dc $02
    ld a, [$6b01]                                 ; $7b97: $fa $01 $6b
    ld bc, $02fb                                  ; $7b9a: $01 $fb $02
    cp [hl]                                       ; $7b9d: $be
    inc bc                                        ; $7b9e: $03
    db $10                                        ; $7b9f: $10
    ld [bc], a                                    ; $7ba0: $02
    cp a                                          ; $7ba1: $bf
    ld [bc], a                                    ; $7ba2: $02
    ld a, a                                       ; $7ba3: $7f
    inc bc                                        ; $7ba4: $03
    rst $38                                       ; $7ba5: $ff
    ld [bc], a                                    ; $7ba6: $02
    cp a                                          ; $7ba7: $bf
    inc bc                                        ; $7ba8: $03
    add sp, $00                                   ; $7ba9: $e8 $00
    ld e, [hl]                                    ; $7bab: $5e
    inc de                                        ; $7bac: $13
    inc de                                        ; $7bad: $13
    ld a, [bc]                                    ; $7bae: $0a
    ld a, [hl]                                    ; $7baf: $7e
    dec sp                                        ; $7bb0: $3b
    nop                                           ; $7bb1: $00
    inc e                                         ; $7bb2: $1c
    inc sp                                        ; $7bb3: $33
    ld a, [bc]                                    ; $7bb4: $0a
    ld e, [hl]                                    ; $7bb5: $5e
    dec hl                                        ; $7bb6: $2b
    adc b                                         ; $7bb7: $88
    inc d                                         ; $7bb8: $14
    ld bc, $d51c                                  ; $7bb9: $01 $1c $d5
    ld [$015b], sp                                ; $7bbc: $08 $5b $01
    ld l, e                                       ; $7bbf: $6b
    db $10                                        ; $7bc0: $10
    ld a, d                                       ; $7bc1: $7a
    ld bc, $015c                                  ; $7bc2: $01 $5c $01
    cp d                                          ; $7bc5: $ba
    ld bc, $019d                                  ; $7bc6: $01 $9d $01
    nop                                           ; $7bc9: $00
    nop                                           ; $7bca: $00
    ld e, d                                       ; $7bcb: $5a
    ld [bc], a                                    ; $7bcc: $02
    dec a                                         ; $7bcd: $3d
    inc bc                                        ; $7bce: $03
    ld [$6301], sp                                ; $7bcf: $08 $01 $63
    nop                                           ; $7bd2: $00
    ld a, [$be02]                                 ; $7bd3: $fa $02 $be
    inc bc                                        ; $7bd6: $03
    ld l, e                                       ; $7bd7: $6b
    ld bc, $029f                                  ; $7bd8: $01 $9f $02
    ld a, a                                       ; $7bdb: $7f
    inc bc                                        ; $7bdc: $03
    rst $18                                       ; $7bdd: $df
    inc bc                                        ; $7bde: $03
    rra                                           ; $7bdf: $1f
    inc bc                                        ; $7be0: $03
    ret z                                         ; $7be1: $c8

    nop                                           ; $7be2: $00
    db $dd                                        ; $7be3: $dd
    ld d, $7d                                     ; $7be4: $16 $7d
    ld d, e                                       ; $7be6: $53
    db $f4                                        ; $7be7: $f4
    ld de, $1c00                                  ; $7be8: $11 $00 $1c
    xor $10                                       ; $7beb: $ee $10
    push de                                       ; $7bed: $d5
    add hl, bc                                    ; $7bee: $09
    ld b, l                                       ; $7bef: $45
    jr jr_0b0_7bf2                                ; $7bf0: $18 $00

jr_0b0_7bf2:
    inc e                                         ; $7bf2: $1c
    sub b                                         ; $7bf3: $90
    inc c                                         ; $7bf4: $0c
    dec de                                        ; $7bf5: $1b
    ld bc, $1825                                  ; $7bf6: $01 $25 $18
    add hl, sp                                    ; $7bf9: $39
    ld bc, $019a                                  ; $7bfa: $01 $9a $01
    db $fc                                        ; $7bfd: $fc
    ld bc, $013b                                  ; $7bfe: $01 $3b $01
    ld [hl+], a                                   ; $7c01: $22
    nop                                           ; $7c02: $00
    ld a, h                                       ; $7c03: $7c
    ld [bc], a                                    ; $7c04: $02
    ld c, h                                       ; $7c05: $4c
    ld bc, $031e                                  ; $7c06: $01 $1e $03
    jp c, $9e02                                   ; $7c09: $da $02 $9e

    inc bc                                        ; $7c0c: $03
    inc a                                         ; $7c0d: $3c
    inc bc                                        ; $7c0e: $03
    cp a                                          ; $7c0f: $bf
    inc bc                                        ; $7c10: $03
    ld d, e                                       ; $7c11: $53
    ld [hl+], a                                   ; $7c12: $22
    rra                                           ; $7c13: $1f
    inc bc                                        ; $7c14: $03
    ld a, a                                       ; $7c15: $7f
    ld [bc], a                                    ; $7c16: $02
    cp a                                          ; $7c17: $bf
    inc bc                                        ; $7c18: $03
    ld [hl+], a                                   ; $7c19: $22
    nop                                           ; $7c1a: $00
    ld e, a                                       ; $7c1b: $5f
    ld a, [bc]                                    ; $7c1c: $0a
    ld a, l                                       ; $7c1d: $7d
    ld e, e                                       ; $7c1e: $5b
    rst $38                                       ; $7c1f: $ff
    ld [hl-], a                                   ; $7c20: $32
    nop                                           ; $7c21: $00
    inc e                                         ; $7c22: $1c
    adc h                                         ; $7c23: $8c
    db $10                                        ; $7c24: $10
    inc de                                        ; $7c25: $13
    add hl, bc                                    ; $7c26: $09
    ld a, [c]                                     ; $7c27: $f2
    dec b                                         ; $7c28: $05
    ld bc, $8f1c                                  ; $7c29: $01 $1c $8f
    db $10                                        ; $7c2c: $10
    adc h                                         ; $7c2d: $8c
    db $10                                        ; $7c2e: $10
    ld hl, sp+$00                                 ; $7c2f: $f8 $00
    db $d3                                        ; $7c31: $d3
    nop                                           ; $7c32: $00
    cp l                                          ; $7c33: $bd
    ld bc, $0118                                  ; $7c34: $01 $18 $01
    ld e, d                                       ; $7c37: $5a
    ld bc, $0086                                  ; $7c38: $01 $86 $00
    ld d, a                                       ; $7c3b: $57
    ld [bc], a                                    ; $7c3c: $02
    ld a, [hl]                                    ; $7c3d: $7e
    ld [bc], a                                    ; $7c3e: $02
    ld e, a                                       ; $7c3f: $5f
    inc bc                                        ; $7c40: $03
    cp d                                          ; $7c41: $ba
    ld [bc], a                                    ; $7c42: $02
    ld a, $03                                     ; $7c43: $3e $03
    ld a, a                                       ; $7c45: $7f
    inc bc                                        ; $7c46: $03
    db $fc                                        ; $7c47: $fc
    ld [bc], a                                    ; $7c48: $02
    ld b, e                                       ; $7c49: $43
    nop                                           ; $7c4a: $00
    ld a, [hl]                                    ; $7c4b: $7e
    ld a, [bc]                                    ; $7c4c: $0a
    ld c, [hl]                                    ; $7c4d: $4e
    dec b                                         ; $7c4e: $05
    ld a, a                                       ; $7c4f: $7f
    inc bc                                        ; $7c50: $03
    nop                                           ; $7c51: $00
    nop                                           ; $7c52: $00
    ld d, h                                       ; $7c53: $54
    ld [de], a                                    ; $7c54: $12
    rra                                           ; $7c55: $1f
    ld a, [bc]                                    ; $7c56: $0a
    ld a, $23                                     ; $7c57: $3e $23
    nop                                           ; $7c59: $00
    jr nz, jr_0b0_7cc7                            ; $7c5a: $20 $6b

    db $10                                        ; $7c5c: $10
    pop af                                        ; $7c5d: $f1
    dec c                                         ; $7c5e: $0d
    inc h                                         ; $7c5f: $24
    jr jr_0b0_7c63                                ; $7c60: $18 $01

    inc e                                         ; $7c62: $1c

jr_0b0_7c63:
    adc a                                         ; $7c63: $8f
    ld [$1448], sp                                ; $7c64: $08 $48 $14
    or e                                          ; $7c67: $b3
    inc b                                         ; $7c68: $04
    adc l                                         ; $7c69: $8d
    nop                                           ; $7c6a: $00
    cp [hl]                                       ; $7c6b: $be
    dec b                                         ; $7c6c: $05
    db $fd                                        ; $7c6d: $fd
    ld c, d                                       ; $7c6e: $4a
    ld e, h                                       ; $7c6f: $5c
    ld d, $71                                     ; $7c70: $16 $71
    add hl, bc                                    ; $7c72: $09
    ld a, $0a                                     ; $7c73: $3e $0a
    cp [hl]                                       ; $7c75: $be
    ld c, $18                                     ; $7c76: $0e $18
    ld a, [bc]                                    ; $7c78: $0a
    ld a, e                                       ; $7c79: $7b
    ld [bc], a                                    ; $7c7a: $02
    cp [hl]                                       ; $7c7b: $be
    ld [bc], a                                    ; $7c7c: $02
    ld e, $0b                                     ; $7c7d: $1e $0b
    ld e, $03                                     ; $7c7f: $1e $03
    dec c                                         ; $7c81: $0d
    ld bc, $3b1e                                  ; $7c82: $01 $1e $3b
    sbc [hl]                                      ; $7c85: $9e
    ld [de], a                                    ; $7c86: $12
    ld a, a                                       ; $7c87: $7f
    ld e, a                                       ; $7c88: $5f
    ld h, h                                       ; $7c89: $64
    inc b                                         ; $7c8a: $04
    ld a, h                                       ; $7c8b: $7c
    rrca                                          ; $7c8c: $0f
    rst $18                                       ; $7c8d: $df
    ld e, e                                       ; $7c8e: $5b
    rst $38                                       ; $7c8f: $ff
    dec c                                         ; $7c90: $0d
    nop                                           ; $7c91: $00
    inc e                                         ; $7c92: $1c
    ld [bc], a                                    ; $7c93: $02
    inc e                                         ; $7c94: $1c
    ld h, $18                                     ; $7c95: $26 $18
    ld [hl+], a                                   ; $7c97: $22
    inc e                                         ; $7c98: $1c
    nop                                           ; $7c99: $00
    inc e                                         ; $7c9a: $1c
    ld c, d                                       ; $7c9b: $4a
    db $10                                        ; $7c9c: $10
    adc a                                         ; $7c9d: $8f
    inc c                                         ; $7c9e: $0c
    inc h                                         ; $7c9f: $24
    jr jr_0b0_7cea                                ; $7ca0: $18 $48

    inc b                                         ; $7ca2: $04
    rra                                           ; $7ca3: $1f
    ld a, [de]                                    ; $7ca4: $1a
    ld e, [hl]                                    ; $7ca5: $5e
    ld c, a                                       ; $7ca6: $4f
    ld [hl], l                                    ; $7ca7: $75
    dec d                                         ; $7ca8: $15
    ld e, a                                       ; $7ca9: $5f
    ld a, [de]                                    ; $7caa: $1a
    cp a                                          ; $7cab: $bf
    ld a, [de]                                    ; $7cac: $1a
    rst $18                                       ; $7cad: $df
    ld [hl+], a                                   ; $7cae: $22
    cp a                                          ; $7caf: $bf
    ld h, $7d                                     ; $7cb0: $26 $7d
    ld c, $fe                                     ; $7cb2: $0e $fe
    ld a, [de]                                    ; $7cb4: $1a
    ld a, l                                       ; $7cb5: $7d
    ld e, $3f                                     ; $7cb6: $1e $3f
    cpl                                           ; $7cb8: $2f
    sbc a                                         ; $7cb9: $9f
    ld e, $5f                                     ; $7cba: $1e $5f
    ld d, a                                       ; $7cbc: $57
    rst $18                                       ; $7cbd: $df
    ld a, $df                                     ; $7cbe: $3e $df
    ld [hl], e                                    ; $7cc0: $73
    dec h                                         ; $7cc1: $25
    ld [$1e1f], sp                                ; $7cc2: $08 $1f $1e
    rst $38                                       ; $7cc5: $ff
    ld l, a                                       ; $7cc6: $6f

jr_0b0_7cc7:
    rst $18                                       ; $7cc7: $df
    ld [hl-], a                                   ; $7cc8: $32
    nop                                           ; $7cc9: $00
    jr nz, jr_0b0_7cf0                            ; $7cca: $20 $24

    jr @+$29                                      ; $7ccc: $18 $27

    jr jr_0b0_7cd1                                ; $7cce: $18 $01

    inc e                                         ; $7cd0: $1c

jr_0b0_7cd1:
    nop                                           ; $7cd1: $00
    jr nz, jr_0b0_7cf8                            ; $7cd2: $20 $24

    jr jr_0b0_7d1d                                ; $7cd4: $18 $47

    inc d                                         ; $7cd6: $14
    ld bc, $021c                                  ; $7cd7: $01 $1c $02
    inc b                                         ; $7cda: $04
    ld a, l                                       ; $7cdb: $7d
    rrca                                          ; $7cdc: $0f
    ld a, a                                       ; $7cdd: $7f
    ld l, $df                                     ; $7cde: $2e $df
    ld h, e                                       ; $7ce0: $63
    nop                                           ; $7ce1: $00
    nop                                           ; $7ce2: $00
    sbc a                                         ; $7ce3: $9f
    ld a, [hl+]                                   ; $7ce4: $2a
    rst $38                                       ; $7ce5: $ff
    ld [hl-], a                                   ; $7ce6: $32
    cp a                                          ; $7ce7: $bf
    ld l, $21                                     ; $7ce8: $2e $21

jr_0b0_7cea:
    nop                                           ; $7cea: $00
    ld d, e                                       ; $7ceb: $53
    ld a, [de]                                    ; $7cec: $1a
    db $db                                        ; $7ced: $db
    ld a, $cb                                     ; $7cee: $3e $cb

jr_0b0_7cf0:
    nop                                           ; $7cf0: $00
    nop                                           ; $7cf1: $00
    nop                                           ; $7cf2: $00
    ld [de], a                                    ; $7cf3: $12
    ld e, $19                                     ; $7cf4: $1e $19
    dec de                                        ; $7cf6: $1b
    sbc [hl]                                      ; $7cf7: $9e

jr_0b0_7cf8:
    dec de                                        ; $7cf8: $1b
    nop                                           ; $7cf9: $00
    ld [$0a75], sp                                ; $7cfa: $08 $75 $0a
    rst $18                                       ; $7cfd: $df
    ld d, a                                       ; $7cfe: $57
    ld a, h                                       ; $7cff: $7c
    dec bc                                        ; $7d00: $0b
    nop                                           ; $7d01: $00
    jr nz, jr_0b0_7d05                            ; $7d02: $20 $01

    inc e                                         ; $7d04: $1c

jr_0b0_7d05:
    ld [bc], a                                    ; $7d05: $02
    inc e                                         ; $7d06: $1c
    ld bc, $0120                                  ; $7d07: $01 $20 $01
    inc e                                         ; $7d0a: $1c
    nop                                           ; $7d0b: $00
    jr nz, jr_0b0_7d31                            ; $7d0c: $20 $23

    inc e                                         ; $7d0e: $1c
    ld bc, $0220                                  ; $7d0f: $01 $20 $02
    inc e                                         ; $7d12: $1c
    ld d, e                                       ; $7d13: $53
    ld [de], a                                    ; $7d14: $12
    sbc $57                                       ; $7d15: $de $57
    ld a, l                                       ; $7d17: $7d
    rlca                                          ; $7d18: $07
    ld de, $be12                                  ; $7d19: $11 $12 $be
    ld b, a                                       ; $7d1c: $47

jr_0b0_7d1d:
    ld a, h                                       ; $7d1d: $7c
    dec bc                                        ; $7d1e: $0b
    rst $38                                       ; $7d1f: $ff
    ld l, a                                       ; $7d20: $6f
    dec hl                                        ; $7d21: $2b
    add hl, bc                                    ; $7d22: $09
    ld [hl-], a                                   ; $7d23: $32
    ld c, $ae                                     ; $7d24: $0e $ae
    ld de, $0a95                                  ; $7d26: $11 $95 $0a
    sub l                                         ; $7d29: $95
    ld a, [bc]                                    ; $7d2a: $0a
    sbc l                                         ; $7d2b: $9d
    dec sp                                        ; $7d2c: $3b
    ld e, h                                       ; $7d2d: $5c
    dec bc                                        ; $7d2e: $0b
    sbc $6f                                       ; $7d2f: $de $6f

jr_0b0_7d31:
    nop                                           ; $7d31: $00
    inc e                                         ; $7d32: $1c
    ld d, e                                       ; $7d33: $53
    ld a, [bc]                                    ; $7d34: $0a
    sbc $53                                       ; $7d35: $de $53
    ld a, l                                       ; $7d37: $7d

jr_0b0_7d38:
    dec bc                                        ; $7d38: $0b
    nop                                           ; $7d39: $00
    jr nz, jr_0b0_7d8f                            ; $7d3a: $20 $53

    ld a, [bc]                                    ; $7d3c: $0a
    sbc $53                                       ; $7d3d: $de $53
    ld a, l                                       ; $7d3f: $7d
    dec bc                                        ; $7d40: $0b
    db $10                                        ; $7d41: $10
    inc bc                                        ; $7d42: $03
    jr c, jr_0b0_7d47                             ; $7d43: $38 $02

    ld [hl], $ff                                  ; $7d45: $36 $ff

jr_0b0_7d47:
    nop                                           ; $7d47: $00
    ld bc, $0a28                                  ; $7d48: $01 $28 $0a
    ld [$06ff], sp                                ; $7d4b: $08 $ff $06
    db $10                                        ; $7d4e: $10
    db $10                                        ; $7d4f: $10
    ld e, b                                       ; $7d50: $58
    rst $38                                       ; $7d51: $ff
    nop                                           ; $7d52: $00
    nop                                           ; $7d53: $00
    db $fc                                        ; $7d54: $fc
    ld [bc], a                                    ; $7d55: $02
    ldh a, [rP1]                                  ; $7d56: $f0 $00
    and $07                                       ; $7d58: $e6 $07
    ld e, $04                                     ; $7d5a: $1e $04
    sub $1d                                       ; $7d5c: $d6 $1d
    db $dd                                        ; $7d5e: $dd
    rla                                           ; $7d5f: $17
    add d                                         ; $7d60: $82
    jr nc, jr_0b0_7d63                            ; $7d61: $30 $00

jr_0b0_7d63:
    cp $2c                                        ; $7d63: $fe $2c
    nop                                           ; $7d65: $00
    inc l                                         ; $7d66: $2c
    ld a, [hl-]                                   ; $7d67: $3a
    ld b, c                                       ; $7d68: $41
    or d                                          ; $7d69: $b2
    dec b                                         ; $7d6a: $05
    ld h, h                                       ; $7d6b: $64
    add hl, hl                                    ; $7d6c: $29
    add e                                         ; $7d6d: $83
    nop                                           ; $7d6e: $00
    ld a, [$b117]                                 ; $7d6f: $fa $17 $b1
    rst $38                                       ; $7d72: $ff
    nop                                           ; $7d73: $00
    ld a, a                                       ; $7d74: $7f
    nop                                           ; $7d75: $00
    rrca                                          ; $7d76: $0f
    nop                                           ; $7d77: $00
    nop                                           ; $7d78: $00
    add a                                         ; $7d79: $87
    ldh a, [$03]                                  ; $7d7a: $f0 $03
    ld hl, sp-$2f                                 ; $7d7c: $f8 $d1
    ret nc                                        ; $7d7e: $d0

    adc b                                         ; $7d7f: $88
    ld a, [de]                                    ; $7d80: $1a
    db $f4                                        ; $7d81: $f4
    inc a                                         ; $7d82: $3c
    ld a, $4a                                     ; $7d83: $3e $4a
    jr z, jr_0b0_7dd9                             ; $7d85: $28 $52

    jr jr_0b0_7e08                                ; $7d87: $18 $7f

    ld d, d                                       ; $7d89: $52
    jr @+$01                                      ; $7d8a: $18 $ff

    ld [$1848], a                                 ; $7d8c: $ea $48 $18

jr_0b0_7d8f:
    ld e, [hl]                                    ; $7d8f: $5e
    jr @+$6a                                      ; $7d90: $18 $68

    jr jr_0b0_7e04                                ; $7d92: $18 $70

    ld a, b                                       ; $7d94: $78
    db $10                                        ; $7d95: $10
    db $fd                                        ; $7d96: $fd
    ld a, b                                       ; $7d97: $78
    jr nc, jr_0b0_7d38                            ; $7d98: $30 $9e

    add b                                         ; $7d9a: $80
    add h                                         ; $7d9b: $84
    jr nz, jr_0b0_7ddd                            ; $7d9c: $20 $3f

    adc e                                         ; $7d9e: $8b
    dec [hl]                                      ; $7d9f: $35
    sub b                                         ; $7da0: $90
    add hl, bc                                    ; $7da1: $09
    nop                                           ; $7da2: $00
    dec hl                                        ; $7da3: $2b
    nop                                           ; $7da4: $00
    daa                                           ; $7da5: $27
    ld l, $73                                     ; $7da6: $2e $73
    add hl, bc                                    ; $7da8: $09
    jr nc, jr_0b0_7deb                            ; $7da9: $30 $40

    ld h, h                                       ; $7dab: $64
    inc c                                         ; $7dac: $0c
    nop                                           ; $7dad: $00
    add c                                         ; $7dae: $81
    inc h                                         ; $7daf: $24
    db $fc                                        ; $7db0: $fc
    ret c                                         ; $7db1: $d8

    dec hl                                        ; $7db2: $2b
    sub $43                                       ; $7db3: $d6 $43
    adc $00                                       ; $7db5: $ce $00
    ld b, l                                       ; $7db7: $45
    sub b                                         ; $7db8: $90
    adc b                                         ; $7db9: $88
    and c                                         ; $7dba: $a1
    sbc h                                         ; $7dbb: $9c
    ld h, [hl]                                    ; $7dbc: $66
    ld e, l                                       ; $7dbd: $5d
    add b                                         ; $7dbe: $80
    nop                                           ; $7dbf: $00
    sub b                                         ; $7dc0: $90
    jp nz, $461f                                  ; $7dc1: $c2 $1f $46

    ld [hl], c                                    ; $7dc4: $71
    ld d, a                                       ; $7dc5: $57
    ld h, c                                       ; $7dc6: $61
    add a                                         ; $7dc7: $87
    nop                                           ; $7dc8: $00
    jr nz, jr_0b0_7dd0                            ; $7dc9: $20 $05

    and b                                         ; $7dcb: $a0
    add c                                         ; $7dcc: $81
    add b                                         ; $7dcd: $80
    add b                                         ; $7dce: $80
    or d                                          ; $7dcf: $b2

jr_0b0_7dd0:
    or b                                          ; $7dd0: $b0
    nop                                           ; $7dd1: $00
    and h                                         ; $7dd2: $a4
    ld a, a                                       ; $7dd3: $7f
    nop                                           ; $7dd4: $00
    ccf                                           ; $7dd5: $3f
    ld b, b                                       ; $7dd6: $40
    ccf                                           ; $7dd7: $3f
    nop                                           ; $7dd8: $00

jr_0b0_7dd9:
    ccf                                           ; $7dd9: $3f
    nop                                           ; $7dda: $00
    nop                                           ; $7ddb: $00
    inc a                                         ; $7ddc: $3c

jr_0b0_7ddd:
    inc bc                                        ; $7ddd: $03
    ccf                                           ; $7dde: $3f
    nop                                           ; $7ddf: $00
    nop                                           ; $7de0: $00
    ld a, a                                       ; $7de1: $7f
    rst $38                                       ; $7de2: $ff
    ld c, b                                       ; $7de3: $48
    rrca                                          ; $7de4: $0f
    ld l, d                                       ; $7de5: $6a
    jr z, @+$3f                                   ; $7de6: $28 $3d

    jp nz, Jump_000_1078                          ; $7de8: $c2 $78 $10

jr_0b0_7deb:
    ei                                            ; $7deb: $fb
    or a                                          ; $7dec: $b7
    nop                                           ; $7ded: $00
    nop                                           ; $7dee: $00
    ld d, b                                       ; $7def: $50
    nop                                           ; $7df0: $00
    ld [bc], a                                    ; $7df1: $02
    nop                                           ; $7df2: $00
    ld c, d                                       ; $7df3: $4a
    nop                                           ; $7df4: $00
    dec h                                         ; $7df5: $25
    add b                                         ; $7df6: $80
    nop                                           ; $7df7: $00
    db $fc                                        ; $7df8: $fc
    ld [$0800], sp                                ; $7df9: $08 $00 $08
    rst $38                                       ; $7dfc: $ff
    nop                                           ; $7dfd: $00
    ld sp, hl                                     ; $7dfe: $f9
    nop                                           ; $7dff: $00
    nop                                           ; $7e00: $00

Call_0b0_7e01:
    and d                                         ; $7e01: $a2
    nop                                           ; $7e02: $00
    ld e, b                                       ; $7e03: $58

jr_0b0_7e04:
    nop                                           ; $7e04: $00
    add b                                         ; $7e05: $80
    nop                                           ; $7e06: $00
    ret nc                                        ; $7e07: $d0

jr_0b0_7e08:
    dec b                                         ; $7e08: $05
    db $10                                        ; $7e09: $10
    ld l, l                                       ; $7e0a: $6d

jr_0b0_7e0b:
    ld d, a                                       ; $7e0b: $57
    rst $38                                       ; $7e0c: $ff
    sbc b                                         ; $7e0d: $98
    nop                                           ; $7e0e: $00
    adc l                                         ; $7e0f: $8d
    add d                                         ; $7e10: $82
    jp nz, $004f                                  ; $7e11: $c2 $4f $00

    add $0f                                       ; $7e14: $c6 $0f
    cpl                                           ; $7e16: $2f
    add sp, $07                                   ; $7e17: $e8 $07
    and $f1                                       ; $7e19: $e6 $f1
    ld a, [c]                                     ; $7e1b: $f2
    nop                                           ; $7e1c: $00
    ldh a, [$fb]                                  ; $7e1d: $f0 $fb
    ld hl, sp-$03                                 ; $7e1f: $f8 $fd
    rst $28                                       ; $7e21: $ef
    ld h, b                                       ; $7e22: $60

jr_0b0_7e23:
    call z, Call_000_0027                         ; $7e23: $cc $27 $00
    add hl, bc                                    ; $7e26: $09
    pop hl                                        ; $7e27: $e1
    ld bc, $80f6                                  ; $7e28: $01 $f6 $80
    ld a, b                                       ; $7e2b: $78
    adc [hl]                                      ; $7e2c: $8e
    ld a, a                                       ; $7e2d: $7f
    nop                                           ; $7e2e: $00
    ld a, a                                       ; $7e2f: $7f
    cp a                                          ; $7e30: $bf
    ld a, b                                       ; $7e31: $78
    cp e                                          ; $7e32: $bb
    ld hl, $0560                                  ; $7e33: $21 $60 $05
    sub b                                         ; $7e36: $90
    nop                                           ; $7e37: $00
    sub b                                         ; $7e38: $90
    jr jr_0b0_7e58                                ; $7e39: $18 $1d

    jr @+$45                                      ; $7e3b: $18 $43

    ret c                                         ; $7e3d: $d8

    rlca                                          ; $7e3e: $07
    ret nz                                        ; $7e3f: $c0

    ld [bc], a                                    ; $7e40: $02
    rla                                           ; $7e41: $17
    jr nc, jr_0b0_7e7b                            ; $7e42: $30 $37

    ldh a, [$0e]                                  ; $7e44: $f0 $0e
    pop af                                        ; $7e46: $f1
    ld a, [hl+]                                   ; $7e47: $2a
    ld bc, HeaderLogo                             ; $7e48: $01 $04 $01
    nop                                           ; $7e4b: $00
    add hl, de                                    ; $7e4c: $19
    rst $38                                       ; $7e4d: $ff
    rst $38                                       ; $7e4e: $ff
    dec c                                         ; $7e4f: $0d
    ld [c], a                                     ; $7e50: $e2
    and b                                         ; $7e51: $a0
    inc a                                         ; $7e52: $3c
    ld bc, $5208                                  ; $7e53: $01 $08 $52
    rst $38                                       ; $7e56: $ff
    ld a, h                                       ; $7e57: $7c

jr_0b0_7e58:
    add e                                         ; $7e58: $83
    ldh [rP1], a                                  ; $7e59: $e0 $00
    ld b, e                                       ; $7e5b: $43
    ld c, a                                       ; $7e5c: $4f
    cp b                                          ; $7e5d: $b8
    inc e                                         ; $7e5e: $1c
    and a                                         ; $7e5f: $a7
    reti                                          ; $7e60: $d9


jr_0b0_7e61:
    rst $30                                       ; $7e61: $f7
    ld h, b                                       ; $7e62: $60
    nop                                           ; $7e63: $00
    cp $48                                        ; $7e64: $fe $48
    inc b                                         ; $7e66: $04
    jr c, jr_0b0_7e6b                             ; $7e67: $38 $02

    db $fc                                        ; $7e69: $fc
    nop                                           ; $7e6a: $00

jr_0b0_7e6b:
    ld a, [bc]                                    ; $7e6b: $0a
    ld a, [c]                                     ; $7e6c: $f2
    ldh a, [$e0]                                  ; $7e6d: $f0 $e0
    ret nz                                        ; $7e6f: $c0

    adc a                                         ; $7e70: $8f
    jr c, jr_0b0_7e23                             ; $7e71: $38 $b0

    nop                                           ; $7e73: $00
    ld hl, sp-$10                                 ; $7e74: $f8 $f0
    dec bc                                        ; $7e76: $0b
    ei                                            ; $7e77: $fb
    inc bc                                        ; $7e78: $03
    ldh [rSC], a                                  ; $7e79: $e0 $02

jr_0b0_7e7b:
    inc bc                                        ; $7e7b: $03
    nop                                           ; $7e7c: $00
    ld [bc], a                                    ; $7e7d: $02
    ld bc, $0160                                  ; $7e7e: $01 $60 $01
    jr jr_0b0_7e0b                                ; $7e81: $18 $88

    db $e4                                        ; $7e83: $e4
    ld [c], a                                     ; $7e84: $e2
    nop                                           ; $7e85: $00
    dec a                                         ; $7e86: $3d
    ld e, c                                       ; $7e87: $59
    ld e, $6c                                     ; $7e88: $1e $6c
    rrca                                          ; $7e8a: $0f
    or a                                          ; $7e8b: $b7
    add e                                         ; $7e8c: $83
    push bc                                       ; $7e8d: $c5
    nop                                           ; $7e8e: $00
    jr nc, jr_0b0_7e61                            ; $7e8f: $30 $d0

    rla                                           ; $7e91: $17
    push hl                                       ; $7e92: $e5
    adc d                                         ; $7e93: $8a
    ld [hl], d                                    ; $7e94: $72
    add $ba                                       ; $7e95: $c6 $ba
    nop                                           ; $7e97: $00
    rrca                                          ; $7e98: $0f
    sbc b                                         ; $7e99: $98
    rst $18                                       ; $7e9a: $df
    ldh a, [$1f]                                  ; $7e9b: $f0 $1f
    ret nz                                        ; $7e9d: $c0

    ccf                                           ; $7e9e: $3f
    and b                                         ; $7e9f: $a0
    nop                                           ; $7ea0: $00
    ld l, a                                       ; $7ea1: $6f
    ld h, b                                       ; $7ea2: $60
    rla                                           ; $7ea3: $17
    ld d, b                                       ; $7ea4: $50
    ld b, c                                       ; $7ea5: $41
    sub c                                         ; $7ea6: $91
    ret z                                         ; $7ea7: $c8

    ld [$9fe8], sp                                ; $7ea8: $08 $e8 $9f
    ld sp, $31a6                                  ; $7eab: $31 $a6 $31
    ld [bc], a                                    ; $7eae: $02
    ld e, b                                       ; $7eaf: $58
    cp $02                                        ; $7eb0: $fe $02
    nop                                           ; $7eb2: $00
    rst $38                                       ; $7eb3: $ff
    nop                                           ; $7eb4: $00
    ld bc, $c680                                  ; $7eb5: $01 $80 $c6
    ld bc, $807f                                  ; $7eb8: $01 $7f $80
    nop                                           ; $7ebb: $00
    ldh [$fe], a                                  ; $7ebc: $e0 $fe
    ld bc, $0060                                  ; $7ebe: $01 $60 $00
    ld b, b                                       ; $7ec1: $40
    ld b, a                                       ; $7ec2: $47
    nop                                           ; $7ec3: $00
    rrca                                          ; $7ec4: $0f
    adc a                                         ; $7ec5: $8f
    add b                                         ; $7ec6: $80
    rra                                           ; $7ec7: $1f
    and b                                         ; $7ec8: $a0
    nop                                           ; $7ec9: $00
    ccf                                           ; $7eca: $3f
    ccf                                           ; $7ecb: $3f
    and b                                         ; $7ecc: $a0
    ccf                                           ; $7ecd: $3f
    and b                                         ; $7ece: $a0
    pop hl                                        ; $7ecf: $e1
    sbc $32                                       ; $7ed0: $de $32
    nop                                           ; $7ed2: $00
    ld sp, $8801                                  ; $7ed3: $31 $01 $88
    ld bc, $32c5                                  ; $7ed6: $01 $c5 $32
    jp nc, $001d                                  ; $7ed9: $d2 $1d $00

    push hl                                       ; $7edc: $e5
    xor $f0                                       ; $7edd: $ee $f0
    add a                                         ; $7edf: $87
    ld hl, sp+$0f                                 ; $7ee0: $f8 $0f
    or b                                          ; $7ee2: $b0
    jr c, jr_0b0_7ee5                             ; $7ee3: $38 $00

jr_0b0_7ee5:
    ld b, h                                       ; $7ee5: $44
    ld de, $d629                                  ; $7ee6: $11 $29 $d6
    ld d, l                                       ; $7ee9: $55
    db $e3                                        ; $7eea: $e3
    and d                                         ; $7eeb: $a2
    jr nz, jr_0b0_7eee                            ; $7eec: $20 $00

jr_0b0_7eee:
    ld b, b                                       ; $7eee: $40
    ld de, $952b                                  ; $7eef: $11 $2b $95
    adc b                                         ; $7ef2: $88
    jp z, $c2c4                                   ; $7ef3: $ca $c4 $c2

    nop                                           ; $7ef6: $00
    adc d                                         ; $7ef7: $8a
    ld b, d                                       ; $7ef8: $42
    ld c, d                                       ; $7ef9: $4a
    ld [bc], a                                    ; $7efa: $02
    jr jr_0b0_7f17                                ; $7efb: $18 $1a

    db $10                                        ; $7efd: $10
    ld [$1800], sp                                ; $7efe: $08 $00 $18
    add c                                         ; $7f01: $81
    ld de, $c090                                  ; $7f02: $11 $90 $c0
    nop                                           ; $7f05: $00
    or b                                          ; $7f06: $b0
    ld a, a                                       ; $7f07: $7f
    ld b, b                                       ; $7f08: $40
    rst $38                                       ; $7f09: $ff
    ld d, d                                       ; $7f0a: $52
    add hl, bc                                    ; $7f0b: $09
    cp a                                          ; $7f0c: $bf
    add b                                         ; $7f0d: $80
    rst $18                                       ; $7f0e: $df
    ldh [$cf], a                                  ; $7f0f: $e0 $cf
    ret nc                                        ; $7f11: $d0

    inc c                                         ; $7f12: $0c
    rst $08                                       ; $7f13: $cf
    ret nc                                        ; $7f14: $d0

    ld l, a                                       ; $7f15: $6f
    ld [hl], b                                    ; $7f16: $70

jr_0b0_7f17:
    cp h                                          ; $7f17: $bc
    add hl, bc                                    ; $7f18: $09
    inc b                                         ; $7f19: $04
    jr nz, @-$40                                  ; $7f1a: $20 $be

    inc b                                         ; $7f1c: $04
    ret nz                                        ; $7f1d: $c0

    ret z                                         ; $7f1e: $c8

    ld bc, $0070                                  ; $7f1f: $01 $70 $00
    ccf                                           ; $7f22: $3f
    cp $00                                        ; $7f23: $fe $00
    db $fc                                        ; $7f25: $fc
    cp $02                                        ; $7f26: $fe $02
    add b                                         ; $7f28: $80
    inc bc                                        ; $7f29: $03
    ld [$fe02], sp                                ; $7f2a: $08 $02 $fe
    ld [bc], a                                    ; $7f2d: $02
    ld h, e                                       ; $7f2e: $63
    ld e, h                                       ; $7f2f: $5c
    ccf                                           ; $7f30: $3f
    ld e, [hl]                                    ; $7f31: $5e
    inc c                                         ; $7f32: $0c
    ccf                                           ; $7f33: $3f
    ld e, h                                       ; $7f34: $5c
    ccf                                           ; $7f35: $3f
    ld c, h                                       ; $7f36: $4c
    ld [bc], a                                    ; $7f37: $02
    nop                                           ; $7f38: $00
    ld [$5d00], sp                                ; $7f39: $08 $00 $5d
    ld a, $00                                     ; $7f3c: $3e $00
    rrca                                          ; $7f3e: $0f
    rla                                           ; $7f3f: $17
    adc a                                         ; $7f40: $8f
    ld d, a                                       ; $7f41: $57
    adc h                                         ; $7f42: $8c
    ld d, a                                       ; $7f43: $57
    call z, VBlankInterrupt                       ; $7f44: $cc $40 $00
    ret c                                         ; $7f47: $d8

    ld d, a                                       ; $7f48: $57

Jump_0b0_7f49:
    rrca                                          ; $7f49: $0f
    rst $10                                       ; $7f4a: $d7
    rrca                                          ; $7f4b: $0f
    db $d3                                        ; $7f4c: $d3
    rrca                                          ; $7f4d: $0f
    sub e                                         ; $7f4e: $93
    nop                                           ; $7f4f: $00
    rlca                                          ; $7f50: $07
    push hl                                       ; $7f51: $e5
    inc bc                                        ; $7f52: $03
    ld a, [c]                                     ; $7f53: $f2
    call z, $e634                                 ; $7f54: $cc $34 $e6
    jp c, Jump_000_1c00                           ; $7f57: $da $00 $1c

    ld sp, hl                                     ; $7f5a: $f9
    dec c                                         ; $7f5b: $0d
    db $fc                                        ; $7f5c: $fc
    ld c, $f2                                     ; $7f5d: $0e $f2
    rlca                                          ; $7f5f: $07
    ld sp, hl                                     ; $7f60: $f9
    nop                                           ; $7f61: $00
    dec e                                         ; $7f62: $1d
    ccf                                           ; $7f63: $3f
    ld [bc], a                                    ; $7f64: $02
    xor l                                         ; $7f65: $ad
    ld a, [bc]                                    ; $7f66: $0a
    dec c                                         ; $7f67: $0d
    dec c                                         ; $7f68: $0d
    ld a, [bc]                                    ; $7f69: $0a
    nop                                           ; $7f6a: $00
    dec b                                         ; $7f6b: $05
    rrca                                          ; $7f6c: $0f
    adc d                                         ; $7f6d: $8a
    sub l                                         ; $7f6e: $95
    dec c                                         ; $7f6f: $0d
    rla                                           ; $7f70: $17
    dec b                                         ; $7f71: $05
    rra                                           ; $7f72: $1f
    nop                                           ; $7f73: $00
    rrca                                          ; $7f74: $0f
    ld h, b                                       ; $7f75: $60
    rrca                                          ; $7f76: $0f
    ld l, b                                       ; $7f77: $68
    cpl                                           ; $7f78: $2f
    xor b                                         ; $7f79: $a8
    scf                                           ; $7f7a: $37
    or b                                          ; $7f7b: $b0
    inc d                                         ; $7f7c: $14
    rlca                                          ; $7f7d: $07
    or b                                          ; $7f7e: $b0
    add a                                         ; $7f7f: $87
    ld [bc], a                                    ; $7f80: $02
    ld [$70b4], sp                                ; $7f81: $08 $b4 $70
    jr jr_0b0_7f8a                                ; $7f84: $18 $04

    ei                                            ; $7f86: $fb
    ld [$ff00], sp                                ; $7f87: $08 $00 $ff

jr_0b0_7f8a:
    ld b, b                                       ; $7f8a: $40
    cp a                                          ; $7f8b: $bf
    jr c, jr_0b0_7f90                             ; $7f8c: $38 $02

    ret                                           ; $7f8e: $c9


    db $fc                                        ; $7f8f: $fc

jr_0b0_7f90:
    ld bc, $0100                                  ; $7f90: $01 $00 $01
    db $fd                                        ; $7f93: $fd
    dec b                                         ; $7f94: $05
    ld sp, hl                                     ; $7f95: $f9
    ld sp, hl                                     ; $7f96: $f9
    dec b                                         ; $7f97: $05
    db $fd                                        ; $7f98: $fd
    dec b                                         ; $7f99: $05
    jr nz, @-$0d                                  ; $7f9a: $20 $f1

    add hl, bc                                    ; $7f9c: $09
    ld [bc], a                                    ; $7f9d: $02
    nop                                           ; $7f9e: $00
    ld bc, $3c5b                                  ; $7f9f: $01 $5b $3c
    inc a                                         ; $7fa2: $3c
    ld e, e                                       ; $7fa3: $5b
    nop                                           ; $7fa4: $00
    inc a                                         ; $7fa5: $3c
    ld d, d                                       ; $7fa6: $52
    ld a, [hl]                                    ; $7fa7: $7e
    cp c                                          ; $7fa8: $b9
    ld a, h                                       ; $7fa9: $7c
    sub d                                         ; $7faa: $92
    ld a, d                                       ; $7fab: $7a
    db $fc                                        ; $7fac: $fc
    nop                                           ; $7fad: $00
    inc b                                         ; $7fae: $04
    ld hl, sp+$07                                 ; $7faf: $f8 $07
    db $fc                                        ; $7fb1: $fc
    rrca                                          ; $7fb2: $0f
    sub e                                         ; $7fb3: $93
    cp h                                          ; $7fb4: $bc
    and e                                         ; $7fb5: $a3
    nop                                           ; $7fb6: $00
    cp h                                          ; $7fb7: $bc
    and e                                         ; $7fb8: $a3
    rrca                                          ; $7fb9: $0f
    inc de                                        ; $7fba: $13
    rrca                                          ; $7fbb: $0f
    inc de                                        ; $7fbc: $13
    ld a, b                                       ; $7fbd: $78
    ld [hl], a                                    ; $7fbe: $77
    ld [bc], a                                    ; $7fbf: $02
    ld a, h                                       ; $7fc0: $7c
    ld [hl], e                                    ; $7fc1: $73
    ld a, b                                       ; $7fc2: $78
    rlca                                          ; $7fc3: $07
    ld c, $f2                                     ; $7fc4: $0e $f2
    ld [bc], a                                    ; $7fc6: $02
    jr jr_0b0_7fd8                                ; $7fc7: $18 $0f

    nop                                           ; $7fc9: $00
    pop af                                        ; $7fca: $f1
    ld e, $e2                                     ; $7fcb: $1e $e2

jr_0b0_7fcd:
    dec c                                         ; $7fcd: $0d
    pop af                                        ; $7fce: $f1
    db $fd                                        ; $7fcf: $fd
    nop                                           ; $7fd0: $00
    rlca                                          ; $7fd1: $07
    nop                                           ; $7fd2: $00
    ld a, [bc]                                    ; $7fd3: $0a
    nop                                           ; $7fd4: $00
    rlca                                          ; $7fd5: $07
    rra                                           ; $7fd6: $1f
    xor a                                         ; $7fd7: $af

jr_0b0_7fd8:
    rra                                           ; $7fd8: $1f
    xor [hl]                                      ; $7fd9: $ae
    xor a                                         ; $7fda: $af
    nop                                           ; $7fdb: $00
    ld e, $2d                                     ; $7fdc: $1e $2d
    ld e, $bf                                     ; $7fde: $1e $bf
    ld hl, $813f                                  ; $7fe0: $21 $3f $81
    add e                                         ; $7fe3: $83
    rlca                                          ; $7fe4: $07
    or b                                          ; $7fe5: $b0
    inc bc                                        ; $7fe6: $03
    ld [hl], b                                    ; $7fe7: $70
    ld [hl], e                                    ; $7fe8: $73
    ld a, b                                       ; $7fe9: $78
    ld [bc], a                                    ; $7fea: $02
    jr c, jr_0b0_7fcd                             ; $7feb: $38 $e0

    ld b, b                                       ; $7fed: $40
    cp $12                                        ; $7fee: $fe $12
    call Call_000_1c21                            ; $7ff0: $cd $21 $1c
    ld [hl], c                                    ; $7ff3: $71
    inc c                                         ; $7ff4: $0c
    jr nc, jr_0b0_7ff7                            ; $7ff5: $30 $00

jr_0b0_7ff7:
    nop                                           ; $7ff7: $00
    add $3c                                       ; $7ff8: $c6 $3c
    ld d, h                                       ; $7ffa: $54
    ld b, d                                       ; $7ffb: $42
    cpl                                           ; $7ffc: $2f
    dec b                                         ; $7ffd: $05
    nop                                           ; $7ffe: $00
    nop                                           ; $7fff: $00
